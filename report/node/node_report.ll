inline.NumInlined: 2885
inline.NumDeleted: 980
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN4node6reportL15WriteNodeReportEPN2v87IsolateEPNS_11EnvironmentESt17basic_string_viewIcSt11char_traitsIcEES9_S9_RSoNS1_5LocalINS1_5ValueEEEbbb:bb.a
  call void @_ZN4node10JSONWriter14json_objectendEv(ptr noundef nonnull align 8 dereferenceable(20) %55)
  %i.acv = add nuw i64 %.030.i, 1                 ; 2 uses
  %i.acw = call noundef i64 @_ZN2v87Isolate18NumberOfHeapSpacesEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #26
  %i.acx = icmp ult i64 %i.acv, %i.acw
  br i1 %i.acx, label %bb.eh, label %_ZN4node6reportL17PrintGCStatisticsEPNS_10JSONWriterEPN2v87IsolateE.exit, !llvm.loop !99

_ZN4node6reportL17PrintGCStatisticsEPNS_10JSONWriterEPN2v87IsolateE.exit: ; preds = %bb.eh, %_ZN4node6reportL25PrintJavaScriptErrorStackEPNS_10JSONWriterEPN2v87IsolateENS3_5LocalINS3_5ValueEEESt17basic_string_viewIcSt11char_traitsIcEE.exit
  call void @_ZN4node10JSONWriter14json_objectendEv(ptr noundef nonnull align 8 dereferenceable(20) %55)
  call void @_ZN4node10JSONWriter14json_objectendEv(ptr noundef nonnull align 8 dereferenceable(20) %55)
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  br label %bb.ej

bb.ei:                                            ; preds = %_ZN4node6reportL23PrintVersionInformationEPNS_10JSONWriterEb.exit
  call void @_ZN4node10JSONWriter13json_keyvalueIA8_cA10_cEEvRKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(20) %55, ptr noundef nonnull align 1 dereferenceable(8) @.str.93, ptr noundef nonnull align 1 dereferenceable(10) @.str.142)
  call void @_ZN4node10JSONWriter15json_arraystartIPKcEEvT_(ptr noundef nonnull align 8 dereferenceable(20) %55, ptr noundef nonnull @.str.94)
  call void @_ZN4node10JSONWriter12json_elementIA13_cEEvRKT_(ptr noundef nonnull align 8 dereferenceable(20) %55, ptr noundef nonnull align 1 dereferenceable(13) @.str.143)
  call void @_ZN4node10JSONWriter13json_arrayendEv(ptr noundef nonnull align 8 dereferenceable(20) %55)
  call void @_ZN4node10JSONWriter16json_objectstartIPKcEEvT_(ptr noundef nonnull align 8 dereferenceable(20) %55, ptr noundef nonnull @.str.96)
  call void @_ZN4node10JSONWriter14json_objectendEv(ptr noundef nonnull align 8 dereferenceable(20) %55)
  call void @_ZN4node10JSONWriter14json_objectendEv(ptr noundef nonnull align 8 dereferenceable(20) %55)
  br label %bb.ej

bb.ej:                                            ; preds = %bb.ei, %_ZN4node6reportL17PrintGCStatisticsEPNS_10JSONWriterEPN2v87IsolateE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  call void @_ZN4node28NativeSymbolDebuggingContext3NewEv(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.485") align 8 %16) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #26
  %i.acy = load ptr, ptr %16, align 8             ; 2 uses
  %i.acz = load ptr, ptr %i.acy, align 8
  %i.ada = getelementptr inbounds nuw i8, ptr %i.acz, i64 32
  %i.adb = load ptr, ptr %i.ada, align 8
  %i.adc = call noundef i32 %i.adb(ptr noundef nonnull align 8 dereferenceable(8) %i.acy, ptr noundef nonnull %i.s, i32 noundef 256) #26, !inline_history !100 ; 2 uses
  call void @_ZN4node10JSONWriter15json_arraystartIPKcEEvT_(ptr noundef nonnull align 8 dereferenceable(20) %55, ptr noundef nonnull @.str.144)
  %i.add = icmp sgt i32 %i.adc, 1
  br i1 %i.add, label %.lr.ph.i46, label %._crit_edge.i44

.lr.ph.i46:                                       ; preds = %bb.ej
  %i.ade = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.adf = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.adg = getelementptr inbounds nuw i8, ptr %19, i64 32
  %i.adh = getelementptr inbounds nuw i8, ptr %19, i64 48 ; 2 uses
  %i.adi = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %wide.trip.count.i = zext nneg i32 %i.adc to i64
  br label %bb.ek

bb.ek:                                            ; preds = %_ZN4node28NativeSymbolDebuggingContext10SymbolInfoD2Ev.exit.i, %.lr.ph.i46
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.i46 ], [ %indvars.iv.next.i, %_ZN4node28NativeSymbolDebuggingContext10SymbolInfoD2Ev.exit.i ] ; 2 uses
  %i.adj = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.i
  %i.adk = load ptr, ptr %i.adj, align 8          ; 2 uses
  call void @_ZN4node10JSONWriter10json_startEv(ptr noundef nonnull align 8 dereferenceable(20) %55)
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26
  %i.adl = ptrtoint ptr %i.adk to i64
  call void @_ZN4node6report16ValueToHexStringImEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, i64 noundef %i.adl)
  call void @_ZN4node10JSONWriter13json_keyvalueIA3_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(20) %55, ptr noundef nonnull align 1 dereferenceable(3) @.str.145, ptr noundef nonnull align 8 dereferenceable(32) %17)
  %i.adm = load ptr, ptr %17, align 8             ; 2 uses
  %i.adn = icmp eq ptr %i.adm, %i.ade
  br i1 %i.adn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i48, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i47: ; preds = %bb.ek
  %i.ado = load i64, ptr %i.ade, align 8
  %i.adp = add i64 %i.ado, 1
  call void @_ZdlPvm(ptr noundef %i.adm, i64 noundef %i.adp) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i48

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i48: ; preds = %bb.ek, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i47
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #26
  %i.adq = load ptr, ptr %16, align 8             ; 2 uses
  %i.adr = load ptr, ptr %i.adq, align 8
  %i.ads = getelementptr inbounds nuw i8, ptr %i.adr, i64 16
  %i.adt = load ptr, ptr %i.ads, align 8
  call void %i.adt(ptr dead_on_unwind nonnull writable sret(%"class.node::NativeSymbolDebuggingContext::SymbolInfo") align 8 %19, ptr noundef nonnull align 8 dereferenceable(8) %i.adq, ptr noundef %i.adk) #26, !inline_history !100
  call void @_ZNK4node28NativeSymbolDebuggingContext10SymbolInfo7DisplayB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, ptr noundef nonnull align 8 dereferenceable(80) %19) #26
  call void @_ZN4node10JSONWriter13json_keyvalueIA7_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(20) %55, ptr noundef nonnull align 1 dereferenceable(7) @.str.146, ptr noundef nonnull align 8 dereferenceable(32) %18)
  %i.adu = load ptr, ptr %18, align 8             ; 2 uses
  %i.adv = icmp eq ptr %i.adu, %i.adf
  br i1 %i.adv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i48
  %i.adw = load i64, ptr %i.adf, align 8
  %i.adx = add i64 %i.adw, 1
  call void @_ZdlPvm(ptr noundef %i.adu, i64 noundef %i.adx) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i48, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i
  %i.ady = load ptr, ptr %i.adg, align 8          ; 2 uses
  %i.adz = icmp eq ptr %i.ady, %i.adh
  br i1 %i.adz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i49

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i49: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i
  %i.aea = load i64, ptr %i.adh, align 8
  %i.aeb = add i64 %i.aea, 1
  call void @_ZdlPvm(ptr noundef %i.ady, i64 noundef %i.aeb) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i50: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i49
  %i.aec = load ptr, ptr %19, align 8             ; 2 uses
  %i.aed = icmp eq ptr %i.aec, %i.adi
  br i1 %i.aed, label %_ZN4node28NativeSymbolDebuggingContext10SymbolInfoD2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i50
  %i.aee = load i64, ptr %i.adi, align 8
  %i.aef = add i64 %i.aee, 1
  call void @_ZdlPvm(ptr noundef %i.aec, i64 noundef %i.aef) #29
  br label %_ZN4node28NativeSymbolDebuggingContext10SymbolInfoD2Ev.exit.i

_ZN4node28NativeSymbolDebuggingContext10SymbolInfoD2Ev.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i50, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  call void @_ZN4node10JSONWriter8json_endEv(ptr noundef nonnull align 8 dereferenceable(20) %55)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i44, label %bb.ek, !llvm.loop !101

._crit_edge.i44:                                  ; preds = %_ZN4node28NativeSymbolDebuggingContext10SymbolInfoD2Ev.exit.i, %bb.ej
  call void @_ZN4node10JSONWriter13json_arrayendEv(ptr noundef nonnull align 8 dereferenceable(20) %55)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #26
  %i.aeg = load ptr, ptr %16, align 8             ; 3 uses
  %.not.i.i45 = icmp eq ptr %i.aeg, null
  br i1 %.not.i.i45, label %_ZN4node6reportL16PrintNativeStackEPNS_10JSONWriterE.exit, label %_ZNKSt14default_deleteIN4node28NativeSymbolDebuggingContextEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN4node28NativeSymbolDebuggingContextEEclEPS1_.exit.i.i: ; preds = %._crit_edge.i44
  %i.aeh = load ptr, ptr %i.aeg, align 8
  %i.aei = getelementptr inbounds nuw i8, ptr %i.aeh, i64 8
  %i.aej = load ptr, ptr %i.aei, align 8
  call void %i.aej(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.aeg) #26, !inline_history !102
  br label %_ZN4node6reportL16PrintNativeStackEPNS_10JSONWriterE.exit

_ZN4node6reportL16PrintNativeStackEPNS_10JSONWriterE.exit: ; preds = %._crit_edge.i44, %_ZNKSt14default_deleteIN4node28NativeSymbolDebuggingContextEEclEPS1_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  %i.aek = call i64 @uv_hrtime() #26
  %i.ael = load i64, ptr @_ZN4node11per_process15node_start_timeE, align 8
  %i.aem = sub i64 %i.aek, %i.ael                 ; 2 uses
  %i.aen = udiv i64 %i.aem, 1000000000
  %i.aeo = icmp ult i64 %i.aem, 1000000000
  %spec.store.select.i = select i1 %i.aeo, i64 1, i64 %i.aen ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  call void @_ZN4node10JSONWriter16json_objectstartIPKcEEvT_(ptr noundef nonnull align 8 dereferenceable(20) %55, ptr noundef nonnull @.str.148)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  %i.aep = call i64 @uv_get_free_memory() #26
  store i64 %i.aep, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26
  %i.aeq = call i64 @uv_get_total_memory() #26
  store i64 %i.aeq, ptr %i.d, align 8
  call void @_ZN4node10JSONWriter13json_keyvalueIA12_cmEEvRKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(20) %55, ptr noundef nonnull align 1 dereferenceable(12) @.str.149, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  call void @_ZN4node10JSONWriter13json_keyvalueIA13_cmEEvRKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(20) %55, ptr noundef nonnull align 1 dereferenceable(13) @.str.150, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #26
  %i.aer = call i32 @uv_resident_set_memory(ptr noundef nonnull %i.e) #26
  %.not.i53 = icmp eq i32 %i.aer, 0
  br i1 %.not.i53, label %bb.el, label %bb.em

bb.el:                                            ; preds = %_ZN4node6reportL16PrintNativeStackEPNS_10JSONWriterE.exit
  call void @_ZN4node10JSONWriter13json_keyvalueIA4_cmEEvRKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(20) %55, ptr noundef nonnull align 1 dereferenceable(4) @.str.151, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  br label %bb.em

bb.em:                                            ; preds = %bb.el, %_ZN4node6reportL16PrintNativeStackEPNS_10JSONWriterE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #26
  %i.aes = call i64 @uv_get_constrained_memory() #26 ; 2 uses
  store i64 %i.aes, ptr %i.f, align 8
  %.not41.i = icmp eq i64 %i.aes, 0
  br i1 %.not41.i, label %bb.eo, label %bb.en

bb.en:                                            ; preds = %bb.em
  call void @_ZN4node10JSONWriter13json_keyvalueIA19_cmEEvRKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(20) %55, ptr noundef nonnull align 1 dereferenceable(19) @.str.152, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  br label %bb.eo

bb.eo:                                            ; preds = %bb.en, %bb.em
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #26
  %i.aet = call i64 @uv_get_available_memory() #26
  store i64 %i.aet, ptr %i.g, align 8
  call void @_ZN4node10JSONWriter13json_keyvalueIA17_cmEEvRKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(20) %55, ptr noundef nonnull align 1 dereferenceable(17) @.str.153, ptr noundef nonnull align 8 dereferenceable(8) %i.g)
  %i.aeu = call i32 @uv_getrusage(ptr noundef nonnull %14) #26
  %i.aev = icmp eq i32 %i.aeu, 0
  br i1 %i.aev, label %bb.ep, label %bb.eq

bb.ep:                                            ; preds = %bb.eo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #26
  %i.aew = load i64, ptr %14, align 8
  %i.aex = sitofp i64 %i.aew to double
  %i.aey = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.aez = load i64, ptr %i.aey, align 8
  %i.afa = sitofp i64 %i.aez to double
  %i.afb = call double @llvm.fmuladd.f64(double %i.afa, double f0x3EB0C6F7A0B5ED8D, double %i.aex)
  store double %i.afb, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #26
  %i.afc = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.afd = load i64, ptr %i.afc, align 8
  %i.afe = sitofp i64 %i.afd to double
  %i.aff = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.afg = load i64, ptr %i.aff, align 8
  %i.afh = sitofp i64 %i.afg to double
  %i.afi = call double @llvm.fmuladd.f64(double %i.afh, double f0x3EB0C6F7A0B5ED8D, double %i.afe)
  store double %i.afi, ptr %i.i, align 8
  call void @_ZN4node10JSONWriter13json_keyvalueIA15_cdEEvRKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(20) %55, ptr noundef nonnull align 1 dereferenceable(15) @.str.154, ptr noundef nonnull align 8 dereferenceable(8) %i.h)
  call void @_ZN4node10JSONWriter13json_keyvalueIA17_cdEEvRKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(20) %55, ptr noundef nonnull align 1 dereferenceable(17) @.str.155, ptr noundef nonnull align 8 dereferenceable(8) %i.i)
  %i.afj = load double, ptr %i.h, align 8         ; 2 uses
  %i.afk = load double, ptr %i.i, align 8         ; 2 uses
  %i.afl = fadd double %i.afj, %i.afk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #26
  %i.afm = uitofp nneg i64 %spec.store.select.i to double ; 3 uses
  %65 = fdiv double %i.afl, %i.afm
  %66 = fmul double %65, 1.000000e+02
  store double %66, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #26
  %67 = fdiv double %i.afj, %i.afm
  %68 = fmul double %67, 1.000000e+02
  store double %68, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #26
  %i.afn = fdiv double %i.afk, %i.afm
  %i.afo = fmul double %i.afn, 1.000000e+02
  store double %i.afo, ptr %i.l, align 8
  call void @_ZN4node10JSONWriter13json_keyvalueIA22_cdEEvRKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(20) %55, ptr noundef nonnull align 1 dereferenceable(22) @.str.156, ptr noundef nonnull align 8 dereferenceable(8) %i.j)
  call void @_ZN4node10JSONWriter13json_keyvalueIA26_cdEEvRKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(20) %55, ptr noundef nonnull align 1 dereferenceable(26) @.str.157, ptr noundef nonnull align 8 dereferenceable(8) %i.k)
  call void @_ZN4node10JSONWriter13json_keyvalueIA28_cdEEvRKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(20) %55, ptr noundef nonnull align 1 dereferenceable(28) @.str.158, ptr noundef nonnull align 8 dereferenceable(8) %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #26
  %i.afp = getelementptr inbounds nuw i8, ptr %14, i64 32
  %i.afq = load i64, ptr %i.afp, align 8
  %i.afr = shl i64 %i.afq, 10
  store i64 %i.afr, ptr %i.m, align 8
  call void @_ZN4node10JSONWriter13json_keyvalueIA7_cmEEvRKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(20) %55, ptr noundef nonnull align 1 dereferenceable(7) @.str.159, ptr noundef nonnull align 8 dereferenceable(8) %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #26
  call void @_ZN4node10JSONWriter16json_objectstartIPKcEEvT_(ptr noundef nonnull align 8 dereferenceable(20) %55, ptr noundef nonnull @.str.160)
  %i.afs = getelementptr inbounds nuw i8, ptr %14, i64 72
  call void @_ZN4node10JSONWriter13json_keyvalueIA11_cmEEvRKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(20) %55, ptr noundef nonnull align 1 dereferenceable(11) @.str.161, ptr noundef nonnull align 8 dereferenceable(8) %i.afs)
  %i.aft = getelementptr inbounds nuw i8, ptr %14, i64 64
  call void @_ZN4node10JSONWriter13json_keyvalueIA14_cmEEvRKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(20) %55, ptr noundef nonnull align 1 dereferenceable(14) @.str.162, ptr noundef nonnull align 8 dereferenceable(8) %i.aft)
  call void @_ZN4node10JSONWriter14json_objectendEv(ptr noundef nonnull align 8 dereferenceable(20) %55)
  call void @_ZN4node10JSONWriter16json_objectstartIPKcEEvT_(ptr noundef nonnull align 8 dereferenceable(20) %55, ptr noundef nonnull @.str.163)
  %i.afu = getelementptr inbounds nuw i8, ptr %14, i64 88
  call void @_ZN4node10JSONWriter13json_keyvalueIA6_cmEEvRKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(20) %55, ptr noundef nonnull align 1 dereferenceable(6) @.str.164, ptr noundef nonnull align 8 dereferenceable(8) %i.afu)
  %i.afv = getelementptr inbounds nuw i8, ptr %14, i64 96
  call void @_ZN4node10JSONWriter13json_keyvalueIA7_cmEEvRKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(20) %55, ptr noundef nonnull align 1 dereferenceable(7) @.str.165, ptr noundef nonnull align 8 dereferenceable(8) %i.afv)
  call void @_ZN4node10JSONWriter14json_objectendEv(ptr noundef nonnull align 8 dereferenceable(20) %55)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #26
  br label %bb.eq

bb.eq:                                            ; preds = %bb.ep, %bb.eo
  call void @_ZN4node10JSONWriter14json_objectendEv(ptr noundef nonnull align 8 dereferenceable(20) %55)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  %i.afw = call i32 @uv_getrusage_thread(ptr noundef nonnull %15) #26
  %i.afx = icmp eq i32 %i.afw, 0
  br i1 %i.afx, label %bb.er, label %_ZN4node6reportL18PrintResourceUsageEPNS_10JSONWriterE.exit

bb.er:                                            ; preds = %bb.eq
  call void @_ZN4node10JSONWriter16json_objectstartIPKcEEvT_(ptr noundef nonnull align 8 dereferenceable(20) %55, ptr noundef nonnull @.str.166)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #26
  %i.afy = load i64, ptr %15, align 8
  %i.afz = sitofp i64 %i.afy to double
  %i.aga = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.agb = load i64, ptr %i.aga, align 8
  %i.agc = sitofp i64 %i.agb to double
  %i.agd = call double @llvm.fmuladd.f64(double %i.agc, double f0x3EB0C6F7A0B5ED8D, double %i.afz)
  store double %i.agd, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #26
  %i.age = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.agf = load i64, ptr %i.age, align 8
  %i.agg = sitofp i64 %i.agf to double
  %i.agh = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.agi = load i64, ptr %i.agh, align 8
  %i.agj = sitofp i64 %i.agi to double
  %i.agk = call double @llvm.fmuladd.f64(double %i.agj, double f0x3EB0C6F7A0B5ED8D, double %i.agg)
  store double %i.agk, ptr %i.o, align 8
  call void @_ZN4node10JSONWriter13json_keyvalueIA15_cdEEvRKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(20) %55, ptr noundef nonnull align 1 dereferenceable(15) @.str.154, ptr noundef nonnull align 8 dereferenceable(8) %i.n)
  call void @_ZN4node10JSONWriter13json_keyvalueIA17_cdEEvRKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(20) %55, ptr noundef nonnull align 1 dereferenceable(17) @.str.155, ptr noundef nonnull align 8 dereferenceable(8) %i.o)
  %i.agl = load double, ptr %i.n, align 8         ; 2 uses
  %i.agm = load double, ptr %i.o, align 8         ; 2 uses
  %i.agn = fadd double %i.agl, %i.agm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #26
  %i.ago = uitofp nneg i64 %spec.store.select.i to double ; 3 uses
  %69 = fdiv double %i.agn, %i.ago
  %70 = fmul double %69, 1.000000e+02
  store double %70, ptr %i.p, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #26
  %71 = fdiv double %i.agl, %i.ago
  %72 = fmul double %71, 1.000000e+02
  store double %72, ptr %i.q, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #26
  %i.agp = fdiv double %i.agm, %i.ago
  %i.agq = fmul double %i.agp, 1.000000e+02
  store double %i.agq, ptr %i.r, align 8
  call void @_ZN4node10JSONWriter13json_keyvalueIA22_cdEEvRKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(20) %55, ptr noundef nonnull align 1 dereferenceable(22) @.str.156, ptr noundef nonnull align 8 dereferenceable(8) %i.p)
  call void @_ZN4node10JSONWriter13json_keyvalueIA26_cdEEvRKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(20) %55, ptr noundef nonnull align 1 dereferenceable(26) @.str.157, ptr noundef nonnull align 8 dereferenceable(8) %i.q)
  call void @_ZN4node10JSONWriter13json_keyvalueIA28_cdEEvRKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(20) %55, ptr noundef nonnull align 1 dereferenceable(28) @.str.158, ptr noundef nonnull align 8 dereferenceable(8) %i.r)
  call void @_ZN4node10JSONWriter16json_objectstartIPKcEEvT_(ptr noundef nonnull align 8 dereferenceable(20) %55, ptr noundef nonnull @.str.163)
  %i.agr = getelementptr inbounds nuw i8, ptr %15, i64 88
  call void @_ZN4node10JSONWriter13json_keyvalueIA6_cmEEvRKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(20) %55, ptr noundef nonnull align 1 dereferenceable(6) @.str.164, ptr noundef nonnull align 8 dereferenceable(8) %i.agr)
  %i.ags = getelementptr inbounds nuw i8, ptr %15, i64 96
  call void @_ZN4node10JSONWriter13json_keyvalueIA7_cmEEvRKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(20) %55, ptr noundef nonnull align 1 dereferenceable(7) @.str.165, ptr noundef nonnull align 8 dereferenceable(8) %i.ags)
  call void @_ZN4node10JSONWriter14json_objectendEv(ptr noundef nonnull align 8 dereferenceable(20) %55)
  call void @_ZN4node10JSONWriter14json_objectendEv(ptr noundef nonnull align 8 dereferenceable(20) %55)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #26
  br label %_ZN4node6reportL18PrintResourceUsageEPNS_10JSONWriterE.exit

_ZN4node6reportL18PrintResourceUsageEPNS_10JSONWriterE.exit: ; preds = %bb.eq, %bb.er
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  call void @_ZN4node10JSONWriter15json_arraystartIPKcEEvT_(ptr noundef nonnull align 8 dereferenceable(20) %55, ptr noundef nonnull @.str.46)
  br i1 %.not, label %.critedge, label %bb.es

bb.es:                                            ; preds = %_ZN4node6reportL18PrintResourceUsageEPNS_10JSONWriterE.exit
  %i.agt = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 4 uses
  %i.agu = load ptr, ptr %i.agt, align 8
  %i.agv = getelementptr inbounds nuw i8, ptr %i.agu, i64 4656
  %i.agw = load ptr, ptr %i.agv, align 8
  %_ZN4node6report19WalkHandleNoNetworkEP11uv_handle_sPv._ZN4node6report17WalkHandleNetworkEP11uv_handle_sPv = select i1 %10, ptr @_ZN4node6report19WalkHandleNoNetworkEP11uv_handle_sPv, ptr @_ZN4node6report17WalkHandleNetworkEP11uv_handle_sPv
  call void @uv_walk(ptr noundef %i.agw, ptr noundef nonnull %_ZN4node6report19WalkHandleNoNetworkEP11uv_handle_sPv._ZN4node6report17WalkHandleNetworkEP11uv_handle_sPv, ptr noundef nonnull %55) #26
  call void @_ZN4node10JSONWriter10json_startEv(ptr noundef nonnull align 8 dereferenceable(20) %55)
  call void @_ZN4node10JSONWriter13json_keyvalueIA5_cS2_EEvRKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(20) %55, ptr noundef nonnull align 1 dereferenceable(5) @.str.47, ptr noundef nonnull align 1 dereferenceable(5) @.str.48)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg) #26
  %i.agx = load ptr, ptr %i.agt, align 8
  %i.agy = getelementptr inbounds nuw i8, ptr %i.agx, i64 4656
  %i.agz = load ptr, ptr %i.agy, align 8
  %i.aha = call i32 @uv_loop_alive(ptr noundef %i.agz) #26
  %i.ahb = icmp ne i32 %i.aha, 0
  %i.ahc = zext i1 %i.ahb to i8
  store i8 %i.ahc, ptr %i.bg, align 1
  call void @_ZN4node10JSONWriter13json_keyvalueIA10_cbEEvRKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(20) %55, ptr noundef nonnull align 1 dereferenceable(10) @.str.49, ptr noundef nonnull align 1 dereferenceable(1) %i.bg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #26
  %i.ahd = load ptr, ptr %i.agt, align 8
  %i.ahe = getelementptr inbounds nuw i8, ptr %i.ahd, i64 4656
  %i.ahf = load ptr, ptr %i.ahe, align 8
  %i.ahg = ptrtoint ptr %i.ahf to i64
  call void @_ZN4node6report16ValueToHexStringIlEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %60, i64 noundef %i.ahg)
  call void @_ZN4node10JSONWriter13json_keyvalueIA8_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(20) %55, ptr noundef nonnull align 1 dereferenceable(8) @.str.50, ptr noundef nonnull align 8 dereferenceable(32) %60)
  %i.ahh = load ptr, ptr %60, align 8             ; 2 uses
  %i.ahi = getelementptr inbounds nuw i8, ptr %60, i64 16 ; 2 uses
  %i.ahj = icmp eq ptr %i.ahh, %i.ahi
  br i1 %i.ahj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %bb.es
  %i.ahk = load i64, ptr %i.ahi, align 8
  %i.ahl = add i64 %i.ahk, 1
  call void @_ZdlPvm(ptr noundef %i.ahh, i64 noundef %i.ahl) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56: ; preds = %bb.es, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #26
  %i.ahm = load ptr, ptr %i.agt, align 8
  %i.ahn = getelementptr inbounds nuw i8, ptr %i.ahm, i64 4656
  %i.aho = load ptr, ptr %i.ahn, align 8
  %i.ahp = call i64 @uv_metrics_idle_time(ptr noundef %i.aho) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh) #26
  %i.ahq = uitofp i64 %i.ahp to double
  %i.ahr = fdiv double %i.ahq, 1.000000e+09
  store double %i.ahr, ptr %i.bh, align 8
  call void @_ZN4node10JSONWriter13json_keyvalueIA20_cdEEvRKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(20) %55, ptr noundef nonnull align 1 dereferenceable(20) @.str.51, ptr noundef nonnull align 8 dereferenceable(8) %i.bh)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh) #26
  call void @_ZN4node10JSONWriter8json_endEv(ptr noundef nonnull align 8 dereferenceable(20) %55)
  call void @_ZN4node10JSONWriter13json_arrayendEv(ptr noundef nonnull align 8 dereferenceable(20) %55)
  call void @_ZN4node10JSONWriter15json_arraystartIPKcEEvT_(ptr noundef nonnull align 8 dereferenceable(20) %55, ptr noundef nonnull @.str.52)
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #26
  %i.ahs = call noundef i32 @uv_mutex_init(ptr noundef nonnull align 8 dereferenceable(40) %61) #26
  %i.aht = icmp eq i32 %i.ahs, 0
  br i1 %i.aht, label %_ZN4node9MutexBaseINS_16LibuvMutexTraitsEEC2Ev.exit, label %bb.et, !prof !64

bb.et:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56
  call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node9MutexBaseINS_16LibuvMutexTraitsEEC1EvE20error_and_abort_args) #26
  call void @abort() #27
  unreachable

_ZN4node9MutexBaseINS_16LibuvMutexTraitsEEC2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #26
  %i.ahu = call noundef i32 @uv_cond_init(ptr noundef nonnull align 8 dereferenceable(48) %62) #26
  %i.ahv = icmp eq i32 %i.ahu, 0
  br i1 %i.ahv, label %_ZN4node21ConditionVariableBaseINS_16LibuvMutexTraitsEEC2Ev.exit, label %bb.eu, !prof !64

bb.eu:                                            ; preds = %_ZN4node9MutexBaseINS_16LibuvMutexTraitsEEC2Ev.exit
  call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node21ConditionVariableBaseINS_16LibuvMutexTraitsEEC1EvE20error_and_abort_args) #26
  call void @abort() #27
  unreachable

_ZN4node21ConditionVariableBaseINS_16LibuvMutexTraitsEEC2Ev.exit: ; preds = %_ZN4node9MutexBaseINS_16LibuvMutexTraitsEEC2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %63, i8 0, i64 24, i1 false)
  %i.ahw = getelementptr i8, ptr %1, i64 2376
  %.val = load ptr, ptr %i.ahw, align 8           ; 2 uses
  %i.ahx = icmp eq ptr %.val, null
  br i1 %i.ahx, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE7reserveEm.exit.thread, label %.lr.ph.i57

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE7reserveEm.exit.thread: ; preds = %_ZN4node21ConditionVariableBaseINS_16LibuvMutexTraitsEEC2Ev.exit
  call void @uv_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %61) #26
  %i.ahy = getelementptr inbounds nuw i8, ptr %63, i64 16
  %.pre = load ptr, ptr %63, align 8
  %i.ahz = getelementptr inbounds nuw i8, ptr %63, i64 8 ; 2 uses
  %i.aia = load ptr, ptr %i.ahz, align 8
  br label %.preheader

.lr.ph.i57:                                       ; preds = %_ZN4node21ConditionVariableBaseINS_16LibuvMutexTraitsEEC2Ev.exit, %"_ZZN4node6reportL15WriteNodeReportEPN2v87IsolateEPNS_11EnvironmentESt17basic_string_viewIcSt11char_traitsIcEES9_S9_RSoNS1_5LocalINS1_5ValueEEEbbbENK3$_0clEPNS_6worker6WorkerE.exit.i"
  %.0 = phi i64 [ %i.ajd, %"_ZZN4node6reportL15WriteNodeReportEPN2v87IsolateEPNS_11EnvironmentESt17basic_string_viewIcSt11char_traitsIcEES9_S9_RSoNS1_5LocalINS1_5ValueEEEbbbENK3$_0clEPNS_6worker6WorkerE.exit.i" ], [ 0, %_ZN4node21ConditionVariableBaseINS_16LibuvMutexTraitsEEC2Ev.exit ]
  %.sroa.01.04.i = phi ptr [ %i.aje, %"_ZZN4node6reportL15WriteNodeReportEPN2v87IsolateEPNS_11EnvironmentESt17basic_string_viewIcSt11char_traitsIcEES9_S9_RSoNS1_5LocalINS1_5ValueEEEbbbENK3$_0clEPNS_6worker6WorkerE.exit.i" ], [ %.val, %_ZN4node21ConditionVariableBaseINS_16LibuvMutexTraitsEEC2Ev.exit ] ; 2 uses
  %i.aib = getelementptr inbounds nuw i8, ptr %.sroa.01.04.i, i64 8
  %i.aic = load ptr, ptr %i.aib, align 8          ; 3 uses
  %i.aid = getelementptr inbounds nuw i8, ptr %i.aic, i64 184 ; 2 uses
  call void @uv_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.aid) #26, !inline_history !103
  %i.aie = getelementptr inbounds nuw i8, ptr %i.aic, i64 432
  %i.aif = load ptr, ptr %i.aie, align 8          ; 8 uses
  %i.aig = icmp ne ptr %i.aif, null               ; 2 uses
  br i1 %i.aig, label %bb.ev, label %"_ZZN4node6reportL15WriteNodeReportEPN2v87IsolateEPNS_11EnvironmentESt17basic_string_viewIcSt11char_traitsIcEES9_S9_RSoNS1_5LocalINS1_5ValueEEEbbbENK3$_0clEPNS_6worker6WorkerE.exit.i"

bb.ev:                                            ; preds = %.lr.ph.i57
  %i.aih = getelementptr inbounds nuw i8, ptr %i.aif, i64 2800
  %i.aii = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #28, !noalias !104, !inline_history !109 ; 11 uses
  %i.aij = getelementptr inbounds nuw i8, ptr %i.aii, i64 8
  store i32 1, ptr %i.aij, align 8, !noalias !104
  %i.aik = getelementptr inbounds nuw i8, ptr %i.aii, i64 16
  store ptr null, ptr %i.aik, align 8, !noalias !104
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVN4node13CallbackQueueIvJPNS_11EnvironmentEEE12CallbackImplIZZNS_6reportL15WriteNodeReportEPN2v87IsolateES2_St17basic_string_viewIcSt11char_traitsIcEESC_SC_RSoNS6_5LocalINS6_5ValueEEEbbbENK3$_0clEPNS_6worker6WorkerEEUlS2_E_EE", i64 16), ptr %i.aii, align 8, !noalias !104
  %i.ail = getelementptr inbounds nuw i8, ptr %i.aii, i64 24
  store ptr %i.aic, ptr %i.ail, align 8, !noalias !104
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aii, i64 32
  store ptr %52, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !104
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aii, i64 40
  store ptr %61, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !104
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aii, i64 48
  store ptr %63, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !104
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aii, i64 56
  store ptr %62, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !104
  %i.aim = getelementptr inbounds nuw i8, ptr %i.aif, i64 2736 ; 2 uses
  call void @uv_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.aim) #26, !inline_history !110
  %i.ain = getelementptr inbounds nuw i8, ptr %i.aif, i64 2816 ; 2 uses
  %i.aio = load ptr, ptr %i.ain, align 8          ; 2 uses
  %i.aip = atomicrmw add ptr %i.aih, i64 1 seq_cst, align 8 ; 0 uses
  store ptr %i.aii, ptr %i.ain, align 8
  %.not.i.i.i.i.i = icmp eq ptr %i.aio, null
  br i1 %.not.i.i.i.i.i, label %bb.ex, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.aiq = getelementptr inbounds nuw i8, ptr %i.aio, i64 16 ; 2 uses
  %i.air = load ptr, ptr %i.aiq, align 8          ; 2 uses
  store ptr %i.aii, ptr %i.aiq, align 8
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.air, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN4node13CallbackQueueIvJPNS0_11EnvironmentEEE8CallbackESt14default_deleteIS5_EED2Ev.exit.i.i.i.i, label %_ZNSt10unique_ptrIN4node13CallbackQueueIvJPNS0_11EnvironmentEEE8CallbackESt14default_deleteIS5_EED2Ev.exit.sink.split.i.i.i.i.i

bb.ex:                                            ; preds = %bb.ev
  %i.ais = getelementptr inbounds nuw i8, ptr %i.aif, i64 2808 ; 2 uses
  %i.ait = load ptr, ptr %i.ais, align 8          ; 2 uses
  store ptr %i.aii, ptr %i.ais, align 8
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ait, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN4node13CallbackQueueIvJPNS0_11EnvironmentEEE8CallbackESt14default_deleteIS5_EED2Ev.exit.i.i.i.i, label %_ZNSt10unique_ptrIN4node13CallbackQueueIvJPNS0_11EnvironmentEEE8CallbackESt14default_deleteIS5_EED2Ev.exit.sink.split.i.i.i.i.i

_ZNSt10unique_ptrIN4node13CallbackQueueIvJPNS0_11EnvironmentEEE8CallbackESt14default_deleteIS5_EED2Ev.exit.sink.split.i.i.i.i.i: ; preds = %bb.ex, %bb.ew
  %.sink9.i.i.i.i.i = phi ptr [ %i.air, %bb.ew ], [ %i.ait, %bb.ex ] ; 2 uses
  %i.aiu = load ptr, ptr %.sink9.i.i.i.i.i, align 8
  %i.aiv = getelementptr inbounds nuw i8, ptr %i.aiu, i64 8
  %i.aiw = load ptr, ptr %i.aiv, align 8
  call void %i.aiw(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.sink9.i.i.i.i.i) #26, !inline_history !111
  br label %_ZNSt10unique_ptrIN4node13CallbackQueueIvJPNS0_11EnvironmentEEE8CallbackESt14default_deleteIS5_EED2Ev.exit.i.i.i.i

_ZNSt10unique_ptrIN4node13CallbackQueueIvJPNS0_11EnvironmentEEE8CallbackESt14default_deleteIS5_EED2Ev.exit.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN4node13CallbackQueueIvJPNS0_11EnvironmentEEE8CallbackESt14default_deleteIS5_EED2Ev.exit.sink.split.i.i.i.i.i, %bb.ex, %bb.ew
  %i.aix = getelementptr inbounds nuw i8, ptr %i.aif, i64 2824
  %i.aiy = load i8, ptr %i.aix, align 8, !range !26, !noundef !28
  %i.aiz = trunc nuw i8 %i.aiy to i1
  br i1 %i.aiz, label %bb.ey, label %"_ZN4node11Environment16RequestInterruptIZZNS_6reportL15WriteNodeReportEPN2v87IsolateEPS0_St17basic_string_viewIcSt11char_traitsIcEESA_SA_RSoNS3_5LocalINS3_5ValueEEEbbbENK3$_0clEPNS_6worker6WorkerEEUlS6_E_EEvOT_.exit.i.i.i"

bb.ey:                                            ; preds = %_ZNSt10unique_ptrIN4node13CallbackQueueIvJPNS0_11EnvironmentEEE8CallbackESt14default_deleteIS5_EED2Ev.exit.i.i.i.i
  %i.aja = getelementptr inbounds nuw i8, ptr %i.aif, i64 864
  %i.ajb = call i32 @uv_async_send(ptr noundef nonnull %i.aja) #26, !inline_history !110 ; 0 uses
  br label %"_ZN4node11Environment16RequestInterruptIZZNS_6reportL15WriteNodeReportEPN2v87IsolateEPS0_St17basic_string_viewIcSt11char_traitsIcEESA_SA_RSoNS3_5LocalINS3_5ValueEEEbbbENK3$_0clEPNS_6worker6WorkerEEUlS6_E_EEvOT_.exit.i.i.i"

"_ZN4node11Environment16RequestInterruptIZZNS_6reportL15WriteNodeReportEPN2v87IsolateEPS0_St17basic_string_viewIcSt11char_traitsIcEESA_SA_RSoNS3_5LocalINS3_5ValueEEEbbbENK3$_0clEPNS_6worker6WorkerEEUlS6_E_EEvOT_.exit.i.i.i": ; preds = %bb.ey, %_ZNSt10unique_ptrIN4node13CallbackQueueIvJPNS0_11EnvironmentEEE8CallbackESt14default_deleteIS5_EED2Ev.exit.i.i.i.i
  call void @uv_mutex_unlock(ptr noundef nonnull %i.aim) #26, !inline_history !110
  call void @_ZN4node11Environment22RequestInterruptFromV8Ev(ptr noundef nonnull align 8 dereferenceable(3304) %i.aif) #26, !inline_history !110
  br label %"_ZZN4node6reportL15WriteNodeReportEPN2v87IsolateEPNS_11EnvironmentESt17basic_string_viewIcSt11char_traitsIcEES9_S9_RSoNS1_5LocalINS1_5ValueEEEbbbENK3$_0clEPNS_6worker6WorkerE.exit.i"

"_ZZN4node6reportL15WriteNodeReportEPN2v87IsolateEPNS_11EnvironmentESt17basic_string_viewIcSt11char_traitsIcEES9_S9_RSoNS1_5LocalINS1_5ValueEEEbbbENK3$_0clEPNS_6worker6WorkerE.exit.i": ; preds = %"_ZN4node11Environment16RequestInterruptIZZNS_6reportL15WriteNodeReportEPN2v87IsolateEPS0_St17basic_string_viewIcSt11char_traitsIcEESA_SA_RSoNS3_5LocalINS3_5ValueEEEbbbENK3$_0clEPNS_6worker6WorkerEEUlS6_E_EEvOT_.exit.i.i.i", %.lr.ph.i57
  call void @uv_mutex_unlock(ptr noundef nonnull %i.aid) #26, !inline_history !103
end_hunk_0
