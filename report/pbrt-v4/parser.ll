Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/parser?download=true
inline.NumInlined: 5493
inline.NumDeleted: 1043
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 28
begin_hunk_0_@"_ZZN4pbrtL15parseParametersISt8functionIFN4pstd8optionalINS_5TokenEEEiEEZNS_5parseEPNS_12ParserTargetESt10unique_ptrINS_9TokenizerESt14default_deleteISB_EEE3$_5EENS_13InlinedVectorIPNS_15ParsedParameterELi8ENS2_3pmr21polymorphic_allocatorISI_EEEET_T0_bRKS1_IFvRKS4_PKcEEENKUlSQ_E_clESQ_":bb.a
  br label %bb.t

bb.t:                                             ; preds = %_ZNKSt8functionIFvRKN4pbrt5TokenEPKcEEclES3_S5_.exit33, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !1801, !nonnull !113, !align !167 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr @.str.336, ptr %i.f, align 8, !tbaa !61
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !67
  %.not.i.i34 = icmp eq ptr %i.ca, null
  br i1 %.not.i.i34, label %bb.u, label %_ZNKSt8functionIFvRKN4pbrt5TokenEPKcEEclES3_S5_.exit35

bb.u:                                             ; preds = %bb.t
  call void @_ZSt25__throw_bad_function_callv() #34
  unreachable

_ZNKSt8functionIFvRKN4pbrt5TokenEPKcEEclES3_S5_.exit35: ; preds = %bb.t
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !159
  call void %i.cc(ptr noundef nonnull align 8 dereferenceable(32) %i.by, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.f), !inline_history !1796
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.v

bb.v:                                             ; preds = %_ZNKSt8functionIFvRKN4pbrt5TokenEPKcEEclES3_S5_.exit35, %bb.o, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !1802, !nonnull !113, !align !167
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !164
  call void @_ZN4pbrt15ParsedParameter7AddBoolEb(ptr noundef nonnull align 8 dereferenceable(233) %i.cf, i1 noundef zeroext true)
  br label %bb.au

bb.w:                                             ; preds = %_ZN4pbrt14isQuotedStringESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread
  %i.cg = icmp eq i64 %.sroa.05.0.copyload, 5
  br i1 %i.cg, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i36, label %.thread

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i36: ; preds = %bb.w
  %i.ch = load i32, ptr %.sroa.26.0.copyload, align 1
  %i.ci = xor i32 %i.ch, 1936482662
  %i.cj = getelementptr i8, ptr %.sroa.26.0.copyload, i64 4
  %i.ck = load i8, ptr %i.cj, align 1
  %i.cl = zext i8 %i.ck to i32
  %i.cm = xor i32 %i.cl, 101
  %i.cn = or i32 %i.ci, %i.cm
  %i.co = icmp ne i32 %i.cn, 0
  %i.cp = zext i1 %i.co to i32
  %i.cq = icmp eq i32 %i.cp, 0
  br i1 %i.cq, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit39, label %.thread

_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit39: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i36
  %i.cr = load ptr, ptr %0, align 8, !tbaa !1799, !nonnull !113, !align !1800 ; 2 uses
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !44
  switch i32 %i.cs, label %bb.ae [
    i32 0, label %bb.x
    i32 1, label %bb.y
    i32 3, label %bb.aa
    i32 4, label %bb.ac
  ]

bb.x:                                             ; preds = %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit39
  store i32 2, ptr %i.cr, align 4, !tbaa !44
  br label %bb.ae

bb.y:                                             ; preds = %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit39
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !1801, !nonnull !113, !align !167 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr @.str.338, ptr %i.e, align 8, !tbaa !61
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !67
  %.not.i.i40 = icmp eq ptr %i.cw, null
  br i1 %.not.i.i40, label %bb.z, label %_ZNKSt8functionIFvRKN4pbrt5TokenEPKcEEclES3_S5_.exit41

bb.z:                                             ; preds = %bb.y
  tail call void @_ZSt25__throw_bad_function_callv() #34
  unreachable

_ZNKSt8functionIFvRKN4pbrt5TokenEPKcEEclES3_S5_.exit41: ; preds = %bb.y
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !159
  call void %i.cy(ptr noundef nonnull align 8 dereferenceable(32) %i.cu, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.e), !inline_history !1796
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.aa

bb.aa:                                            ; preds = %_ZNKSt8functionIFvRKN4pbrt5TokenEPKcEEclES3_S5_.exit41, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit39
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !1801, !nonnull !113, !align !167 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr @.str.335, ptr %i.d, align 8, !tbaa !61
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !67
  %.not.i.i42 = icmp eq ptr %i.dc, null
  br i1 %.not.i.i42, label %bb.ab, label %_ZNKSt8functionIFvRKN4pbrt5TokenEPKcEEclES3_S5_.exit43

bb.ab:                                            ; preds = %bb.aa
  call void @_ZSt25__throw_bad_function_callv() #34
  unreachable

_ZNKSt8functionIFvRKN4pbrt5TokenEPKcEEclES3_S5_.exit43: ; preds = %bb.aa
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !159
  call void %i.de(ptr noundef nonnull align 8 dereferenceable(32) %i.da, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.d), !inline_history !1796
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.ac

bb.ac:                                            ; preds = %_ZNKSt8functionIFvRKN4pbrt5TokenEPKcEEclES3_S5_.exit43, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit39
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !1801, !nonnull !113, !align !167 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr @.str.336, ptr %i.c, align 8, !tbaa !61
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !67
  %.not.i.i44 = icmp eq ptr %i.di, null
  br i1 %.not.i.i44, label %bb.ad, label %_ZNKSt8functionIFvRKN4pbrt5TokenEPKcEEclES3_S5_.exit45

bb.ad:                                            ; preds = %bb.ac
  call void @_ZSt25__throw_bad_function_callv() #34
  unreachable

_ZNKSt8functionIFvRKN4pbrt5TokenEPKcEEclES3_S5_.exit45: ; preds = %bb.ac
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !159
  call void %i.dk(ptr noundef nonnull align 8 dereferenceable(32) %i.dg, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.c), !inline_history !1796
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.ae

bb.ae:                                            ; preds = %_ZNKSt8functionIFvRKN4pbrt5TokenEPKcEEclES3_S5_.exit45, %bb.x, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit39
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !1802, !nonnull !113, !align !167
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !164
  call void @_ZN4pbrt15ParsedParameter7AddBoolEb(ptr noundef nonnull align 8 dereferenceable(233) %i.dn, i1 noundef zeroext false)
  br label %bb.au

.thread:                                          ; preds = %_ZN4pbrt14isQuotedStringESt17basic_string_viewIcSt11char_traitsIcEE.exit, %_ZN4pbrt14isQuotedStringESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i36, %bb.w, %bb.n, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %i.do = load ptr, ptr %0, align 8, !tbaa !1799, !nonnull !113, !align !1800 ; 2 uses
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !44
  switch i32 %i.dp, label %bb.ak [
    i32 0, label %bb.af
    i32 1, label %bb.ag
    i32 2, label %bb.ai
  ]

bb.af:                                            ; preds = %.thread
  store i32 3, ptr %i.do, align 4, !tbaa !44
  br label %bb.ak

bb.ag:                                            ; preds = %.thread
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !1801, !nonnull !113, !align !167 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @.str.338, ptr %i.b, align 8, !tbaa !61
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !67
  %.not.i.i46 = icmp eq ptr %i.dt, null
  br i1 %.not.i.i46, label %bb.ah, label %_ZNKSt8functionIFvRKN4pbrt5TokenEPKcEEclES3_S5_.exit47

bb.ah:                                            ; preds = %bb.ag
  tail call void @_ZSt25__throw_bad_function_callv() #34
  unreachable

_ZNKSt8functionIFvRKN4pbrt5TokenEPKcEEclES3_S5_.exit47: ; preds = %bb.ag
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 24
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !159
  call void %i.dv(ptr noundef nonnull align 8 dereferenceable(32) %i.dr, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.b), !inline_history !1796
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ak

bb.ai:                                            ; preds = %.thread
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !1801, !nonnull !113, !align !167 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @.str.337, ptr %i.a, align 8, !tbaa !61
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !67
  %.not.i.i48 = icmp eq ptr %i.dz, null
  br i1 %.not.i.i48, label %bb.aj, label %_ZNKSt8functionIFvRKN4pbrt5TokenEPKcEEclES3_S5_.exit49

bb.aj:                                            ; preds = %bb.ai
  tail call void @_ZSt25__throw_bad_function_callv() #34
  unreachable

_ZNKSt8functionIFvRKN4pbrt5TokenEPKcEEclES3_S5_.exit49: ; preds = %bb.ai
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dx, i64 24
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !159
  call void %i.eb(ptr noundef nonnull align 8 dereferenceable(32) %i.dx, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a), !inline_history !1796
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.ak

bb.ak:                                            ; preds = %_ZNKSt8functionIFvRKN4pbrt5TokenEPKcEEclES3_S5_.exit49, %_ZNKSt8functionIFvRKN4pbrt5TokenEPKcEEclES3_S5_.exit47, %bb.af, %.thread
  %i.ec = load ptr, ptr %0, align 8, !tbaa !1799, !nonnull !113, !align !1800
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !44
  %i.ee = icmp eq i32 %i.ed, 4
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !1802, !nonnull !113, !align !167
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !164 ; 2 uses
  br i1 %i.ee, label %bb.al, label %bb.at

bb.al:                                            ; preds = %bb.ak
  %i.ei = load ptr, ptr %.sroa.26.0..sroa_idx, align 8, !tbaa !92
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !44  ; 2 uses
  %i.ek = add i8 %i.ej, -43
  %switch.and.i = and i8 %i.ek, -3
  %switch.selectcmp.i = icmp eq i8 %switch.and.i, 0 ; 2 uses
  %i.el = zext i1 %switch.selectcmp.i to i64      ; 2 uses
  %i.em = load i64, ptr %1, align 8, !tbaa !93    ; 2 uses
  %i.en = icmp ugt i64 %i.em, %i.el
  br i1 %i.en, label %.lr.ph.i, label %_ZN4pbrtL8parseIntERKNS_5TokenE.exit

.lr.ph.i:                                         ; preds = %bb.al
  %3 = zext i1 %switch.selectcmp.i to i32
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  br label %bb.am

bb.am:                                            ; preds = %bb.as, %.lr.ph.i
  %i.ep = phi i64 [ %i.em, %.lr.ph.i ], [ %i.fb, %bb.as ]
  %indvars.iv.i = phi i64 [ %i.el, %.lr.ph.i ], [ %5, %bb.as ] ; 2 uses
  %.032.i = phi i64 [ 0, %.lr.ph.i ], [ %i.ey, %bb.as ]
  %.131.i = phi i32 [ %3, %.lr.ph.i ], [ %4, %bb.as ]
  %i.eq = load ptr, ptr %.sroa.26.0..sroa_idx, align 8, !tbaa !92 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 %indvars.iv.i
  %i.es = load i8, ptr %i.er, align 1, !tbaa !44  ; 2 uses
  %i.et = add i8 %i.es, -48
  %or.cond.i = icmp ult i8 %i.et, 10
  br i1 %or.cond.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eq, i64 %indvars.iv.i
  call void @_ZN4pbrt9ErrorExitIJRKcEEEvPKNS_7FileLocEPS1_DpOT_(ptr noundef nonnull %i.eo, ptr noundef nonnull @.str.297, ptr noundef nonnull align 1 dereferenceable(1) %i.eu) #34
  unreachable

bb.ao:                                            ; preds = %bb.am
  %i.ev = mul nsw i64 %.032.i, 10
  %i.ew = zext nneg i8 %i.es to i64
  %i.ex = add i64 %i.ev, -48
  %i.ey = add i64 %i.ex, %i.ew                    ; 4 uses
  %4 = add nuw nsw i32 %.131.i, 1                 ; 2 uses
  %i.ez = icmp sgt i64 %i.ey, 2147483647
  br i1 %i.ez, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  call void @_ZN4pbrt9ErrorExitEPKNS_7FileLocEPKc(ptr noundef nonnull %i.eo, ptr noundef nonnull @.str.339) #34
  unreachable

bb.aq:                                            ; preds = %bb.ao
  %i.fa = icmp slt i64 %i.ey, -2147483648
  br i1 %i.fa, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  call void @_ZN4pbrt7WarningEPKNS_7FileLocEPKc(ptr noundef nonnull %i.eo, ptr noundef nonnull @.str.340)
  %.pre.i = load i64, ptr %1, align 8, !tbaa !93
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.fb = phi i64 [ %i.ep, %bb.aq ], [ %.pre.i, %bb.ar ] ; 2 uses
  %5 = zext nneg i32 %4 to i64                    ; 2 uses
  %i.fc = icmp ugt i64 %i.fb, %5
  br i1 %i.fc, label %bb.am, label %_ZN4pbrtL8parseIntERKNS_5TokenE.exit, !llvm.loop !1797

_ZN4pbrtL8parseIntERKNS_5TokenE.exit:             ; preds = %bb.as, %bb.al
  %.0.lcssa.i = phi i64 [ 0, %bb.al ], [ %i.ey, %bb.as ] ; 2 uses
  %i.fd = icmp eq i8 %i.ej, 45
  %i.fe = sub nsw i64 0, %.0.lcssa.i
  %i.ff = select i1 %i.fd, i64 %i.fe, i64 %.0.lcssa.i
  %i.fg = trunc i64 %i.ff to i32
  call void @_ZN4pbrt15ParsedParameter6AddIntEi(ptr noundef nonnull align 8 dereferenceable(233) %i.eh, i32 noundef %i.fg)
  br label %bb.au

bb.at:                                            ; preds = %bb.ak
  %i.fh = call fastcc noundef double @_ZN4pbrtL10parseFloatERKNS_5TokenE(ptr noundef nonnull align 8 dereferenceable(40) %1)
  %i.fi = fptrunc double %i.fh to float
  call void @_ZN4pbrt15ParsedParameter8AddFloatEf(ptr noundef nonnull align 8 dereferenceable(233) %i.eh, float noundef %i.fi)
  br label %bb.au

bb.au:                                            ; preds = %bb.v, %_ZN4pbrtL8parseIntERKNS_5TokenE.exit, %bb.at, %bb.ae, %_ZN4pbrtL13dequoteStringERKNS_5TokenE.exit
  ret void
}

declare void @_ZN4pbrt5ErrorEPKNS_7FileLocEPKc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN4pbrt6detail21stringPrintfRecursiveIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEvPS7_PKcOT_DpOT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 3 uses
  %i.c = alloca ptr, align 8                      ; 3 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %4 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  store ptr %1, ptr %i.c, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35
  call void @_ZN4pbrt6detail18copyToFormatStringEPPKcPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull %i.c, ptr noundef %0)
  %i.d = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 noundef signext 42, i64 noundef 0) #35
  %.not = icmp eq i64 %i.d, -1
  %i.e = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 noundef signext 115, i64 noundef 0) #35
  %.not16 = icmp eq i64 %i.e, -1
  %i.f = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 noundef signext 100, i64 noundef 0) #35
  br i1 %.not, label %bb.b, label %.invoke

.invoke:                                          ; preds = %bb.b, %bb.a, %bb.q
  %i.g = phi i32 [ 266, %bb.q ], [ 229, %bb.a ], [ 257, %bb.b ]
  %i.h = phi ptr [ @.str.291, %bb.q ], [ @.str.289, %bb.a ], [ @.str.290, %bb.b ]
  invoke void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef 2, ptr noundef nonnull @.str.288, i32 noundef %i.g, ptr noundef nonnull %i.h) #34
          to label %.cont unwind label %bb.s

.cont:                                            ; preds = %.invoke
  unreachable

bb.b:                                             ; preds = %bb.a
  %.not17 = icmp eq i64 %i.f, -1
  br i1 %.not17, label %bb.c, label %.invoke

bb.c:                                             ; preds = %bb.b
  br i1 %.not16, label %bb.q, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4)
          to label %bb.e unwind label %bb.l

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.j = load ptr, ptr %2, align 8, !tbaa !45
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !43
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef %i.j, i64 noundef %i.l)
          to label %_ZN4pbrt6detaillsERSoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.m ; 0 uses

_ZN4pbrt6detaillsERSoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #35
  %i.n = load ptr, ptr %3, align 8, !tbaa !45     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #35
  call void @llvm.experimental.noalias.scope.decl(metadata !1809)
  call void @llvm.experimental.noalias.scope.decl(metadata !1810)
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.o, ptr %6, align 8, !tbaa !41, !alias.scope !1811
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.p, align 8, !tbaa !43, !alias.scope !1811
  store i8 0, ptr %i.o, align 8, !tbaa !44, !alias.scope !1811
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !218, !noalias !1811 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.r, null
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !noalias !1811 ; 2 uses
  %i.u = icmp ugt ptr %i.r, %i.t
  %.08.i.i.i = select i1 %i.u, ptr %i.r, ptr %i.t ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %_ZN4pbrt6detaillsERSoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !219, !noalias !1811 ; 2 uses
  %i.x = ptrtoint ptr %.08.i.i.i to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef 0, i64 noundef 0, ptr noundef %i.w, i64 noundef %i.z)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.h, %bb.f
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ac = load ptr, ptr %6, align 8, !tbaa !45, !alias.scope !1811 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.o
  br i1 %i.ad, label %.body, label %.body.sink.split

bb.h:                                             ; preds = %_ZN4pbrt6detaillsERSoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.ae)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.g

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.h, %bb.f
  %i.af = load ptr, ptr %6, align 8, !tbaa !45    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1812)
  %i.ag = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef %i.n, ptr noundef %i.af) #35, !noalias !1812
  %i.ah = add nsw i32 %i.ag, 1
  %i.ai = sext i32 %i.ah to i64                   ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.aj, ptr %5, align 8, !tbaa !41, !alias.scope !1812
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i64 0, ptr %i.ak, align 8, !tbaa !43, !alias.scope !1812
  store i8 0, ptr %i.aj, align 8, !tbaa !44, !alias.scope !1812
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.ai, i8 noundef signext 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i unwind label %bb.j

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.al = load ptr, ptr %5, align 8, !tbaa !45, !alias.scope !1812
  %i.am = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.al, i64 noundef %i.ai, ptr noundef %i.n, ptr noundef %i.af) #35 ; 0 uses
  %i.an = load i64, ptr %i.ak, align 8, !tbaa !43, !alias.scope !1812
  %i.ao = add i64 %i.an, -1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.ao, i64 noundef 1)
          to label %_ZN4pbrt6detail9formatOneIPKcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeES3_OS6_.exit unwind label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i
  %i.ap = landingpad { ptr, i32 }
          catch ptr null
  %i.aq = extractvalue { ptr, i32 } %i.ap, 0
  call void @__clang_call_terminate(ptr %i.aq) #37
  unreachable

bb.j:                                             ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ar = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.as = load ptr, ptr %5, align 8, !tbaa !45, !alias.scope !1812 ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.aj
  br i1 %i.at, label %.body26, label %.body26.sink.split

_ZN4pbrt6detail9formatOneIPKcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeES3_OS6_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i
  %i.au = load i64, ptr %i.ak, align 8, !tbaa !43 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !43
  %i.ax = sub i64 4611686018427387903, %i.aw
  %i.ay = icmp ult i64 %i.ax, %i.au
  br i1 %i.ay, label %bb.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.k:                                             ; preds = %_ZN4pbrt6detail9formatOneIPKcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeES3_OS6_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.322) #34
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.k
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %_ZN4pbrt6detail9formatOneIPKcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeES3_OS6_.exit
  %i.az = load ptr, ptr %5, align 8, !tbaa !45
  %i.ba = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.az, i64 noundef %i.au)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %bb.n ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.bb = load ptr, ptr %5, align 8, !tbaa !45    ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.aj
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.bd = load i64, ptr %i.aj, align 8, !tbaa !44
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.be) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.bf = load ptr, ptr %6, align 8, !tbaa !45    ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.o
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bh = load i64, ptr %i.o, align 8, !tbaa !44
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bi) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  %i.bj = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.bj, ptr %4, align 8, !tbaa !30
  %i.bk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.bl = getelementptr i8, ptr %i.bj, i64 -24
end_hunk_0
