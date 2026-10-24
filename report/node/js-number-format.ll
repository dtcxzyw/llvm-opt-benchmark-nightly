Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/js-number-format?download=true
inline.NumInlined: 3489
inline.NumDeleted: 1453
begin_hunk_0_@_ZN2v88internal14JSNumberFormat3NewEPNS0_7IsolateENS0_12DirectHandleINS0_3MapEEENS4_INS0_6ObjectEEES8_PKc:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  br i1 %i.bj, label %_ZNKR2v85MaybeIbE8FromJustEv.exit185, label %bb.k

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ca = call ptr @_ZN2v88internal7Factory13NewRangeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef 12, ptr null, i64 0) #22
  %i.cb = load i64, ptr %i.ca, align 8
  %i.cc = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %0, i64 %i.cb, ptr noundef null) #22 ; 0 uses
  br label %bb.br

_ZNKR2v85MaybeIbE8FromJustEv.exit185:             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22
  call void @_ZN6icu_786LocaleC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %18, ptr noundef nonnull align 8 dereferenceable(40) %i.n) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i32 0, ptr %i.a, align 4
  %i.cd = and i16 %i.j, 256
  %.not466 = icmp eq i16 %i.cd, 0                 ; 2 uses
  br i1 %.not466, label %.critedge, label %bb.l

bb.l:                                             ; preds = %_ZNKR2v85MaybeIbE8FromJustEv.exit185
  %i.ce = getelementptr inbounds nuw i8, ptr %14, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #22
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull @.str.47, ptr noundef nonnull align 1 dereferenceable(1) %20)
  %i.cf = call ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE4findERS9_(ptr noundef nonnull align 8 dereferenceable(48) %i.ce, ptr noundef nonnull align 8 dereferenceable(32) %19) ; 3 uses
  %i.cg = load ptr, ptr %19, align 8              ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.ci = icmp eq ptr %i.cg, %i.ch
  br i1 %i.ci, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i207

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i207: ; preds = %bb.l
  %i.cj = load i64, ptr %i.ch, align 8
  %i.ck = add i64 %i.cj, 1
  call void @_ZdlPvm(ptr noundef %i.cg, i64 noundef %i.ck) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i207
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  %i.cl = icmp eq ptr %i.cf, %i.o
  br i1 %i.cl, label %.critedge, label %bb.m

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cf, i64 64
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cf, i64 72
  %i.co = load i64, ptr %i.cn, align 8            ; 3 uses
  %i.cp = load i64, ptr %i.i, align 8
  %i.cq = icmp eq i64 %i.co, %i.cp
  br i1 %i.cq, label %bb.n, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread459

bb.n:                                             ; preds = %bb.m
  %i.cr = icmp eq i64 %i.co, 0
  br i1 %i.cr, label %.critedge, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.n
  %i.cs = load ptr, ptr %13, align 8
  %i.ct = load ptr, ptr %i.cm, align 8
  %bcmp.i = call i32 @bcmp(ptr %i.ct, ptr %i.cs, i64 %i.co)
  %i.cu = icmp eq i32 %bcmp.i, 0
  br i1 %i.cu, label %.critedge, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread459

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread459: ; preds = %bb.m, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  call void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %21, ptr noundef nonnull @.str.47) #22
  %i.cv = load ptr, ptr %21, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.cx = load i32, ptr %i.cw, align 8
  call void @_ZN6icu_786Locale22setUnicodeKeywordValueENS_11StringPieceES1_R10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %18, ptr %i.cv, i32 %i.cx, ptr null, i32 0, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #22
  br label %.critedge

.critedge:                                        ; preds = %bb.n, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread459, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209, %_ZNKR2v85MaybeIbE8FromJustEv.exit185
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #22
  call void @_ZN2v88internal4Intl13ToLanguageTagB5cxx11ERKN6icu_786LocaleE(ptr dead_on_unwind nonnull writable sret(%"class.v8::Maybe.505") align 8 %22, ptr noundef nonnull align 8 dereferenceable(40) %18) #22
  %i.cy = load i8, ptr %22, align 8, !range !16, !noundef !17
  %i.cz = trunc nuw i8 %i.cy to i1
  br i1 %i.cz, label %_ZNKR2v85MaybeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8FromJustEv.exit, label %bb.bq

_ZNKR2v85MaybeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8FromJustEv.exit: ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #22
  %i.da = getelementptr inbounds nuw i8, ptr %22, i64 8
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull align 8 dereferenceable(32) %i.da)
  %i.db = load ptr, ptr %23, align 8
  %i.dc = call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.db, i8 noundef zeroext 0)
  %i.dd = load ptr, ptr %23, align 8              ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.df = icmp eq ptr %i.dd, %i.de
  br i1 %i.df, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i210

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i210: ; preds = %_ZNKR2v85MaybeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8FromJustEv.exit
  %i.dg = load i64, ptr %i.de, align 8
  %i.dh = add i64 %i.dg, 1
  call void @_ZdlPvm(ptr noundef %i.dd, i64 noundef %i.dh) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212: ; preds = %_ZNKR2v85MaybeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8FromJustEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i210
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #22
  br i1 %.not466, label %bb.q, label %bb.o

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212
  %i.di = call noundef zeroext i1 @_ZN2v88internal4Intl22IsValidNumberingSystemERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %13) #22
  br i1 %i.di, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %24, ptr noundef nonnull @.str.47) #22
  %i.dj = load ptr, ptr %13, align 8
  %i.dk = load i64, ptr %i.i, align 8
  %i.dl = trunc i64 %i.dk to i32
  %i.dm = load ptr, ptr %24, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.do = load i32, ptr %i.dn, align 8
  call void @_ZN6icu_786Locale22setUnicodeKeywordValueENS_11StringPieceES1_R10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %18, ptr %i.dm, i32 %i.do, ptr %i.dj, i32 %i.dl, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #22
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #22
  call void @_ZN2v88internal4Intl18GetNumberingSystemB5cxx11ERKN6icu_786LocaleE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %25, ptr noundef nonnull align 8 dereferenceable(40) %18) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(296) %27, i8 0, i64 296, i1 false)
  call void @_ZN6icu_786number26UnlocalizedNumberFormatterC2Ev(ptr noundef nonnull align 8 dereferenceable(289) %27)
  call void @_ZNO6icu_786number23NumberFormatterSettingsINS0_26UnlocalizedNumberFormatterEE12roundingModeE25UNumberFormatRoundingMode(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::number::UnlocalizedNumberFormatter") align 8 %26, ptr noundef nonnull align 8 dereferenceable(288) %27, i32 noundef 6) #22
  call void @_ZN6icu_786number23NumberFormatterSettingsINS0_26UnlocalizedNumberFormatterEED2Ev(ptr noundef nonnull align 8 dereferenceable(289) %27) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #22
  %i.dp = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.dq = load i64, ptr %i.dp, align 8
  %i.dr = icmp eq i64 %i.dq, 0
  br i1 %i.dr, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ds = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull @.str)
  br i1 %i.ds, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #22
  %i.dt = load ptr, ptr %25, align 8
  %i.du = call noundef ptr @_ZN6icu_7815NumberingSystem20createInstanceByNameEPKcR10UErrorCode(ptr noundef %i.dt, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #22
  call void @_ZNKR6icu_786number23NumberFormatterSettingsINS0_26UnlocalizedNumberFormatterEE12adoptSymbolsEPNS_15NumberingSystemE(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::number::UnlocalizedNumberFormatter") align 8 %28, ptr noundef nonnull align 8 dereferenceable(288) %26, ptr noundef %i.du) #22
  %i.dv = call noundef nonnull align 8 dereferenceable(289) ptr @_ZN6icu_786number26UnlocalizedNumberFormatteraSEOS1_(ptr noundef nonnull align 8 dereferenceable(289) %26, ptr noundef nonnull align 8 dereferenceable(289) %28) #22 ; 0 uses
  call void @_ZN6icu_786number23NumberFormatterSettingsINS0_26UnlocalizedNumberFormatterEED2Ev(ptr noundef nonnull align 8 dereferenceable(289) %28) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #22
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 3112
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %29, ptr noundef nonnull align 8 dereferenceable(64) @constinit, i64 16, i1 false)
  %i.dx = getelementptr inbounds nuw i8, ptr %29, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dx, ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @constinit, i64 16), i64 16, i1 false)
  %i.dy = getelementptr inbounds nuw i8, ptr %29, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dy, ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @constinit, i64 32), i64 16, i1 false)
  %i.dz = getelementptr inbounds nuw i8, ptr %29, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dz, ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @constinit, i64 48), i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #22
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %30, align 16
  %i.ea = call fastcc i64 @_ZN2v88internalL15GetStringOptionINS0_12_GLOBAL__N_15StyleEEENS_5MaybeIT_EEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS9_INS0_6StringEEEPKcSt4spanIKSt17basic_string_viewIcSt11char_traitsIcEELm18446744073709551615EESG_IKS5_Lm18446744073709551615EESt8optionalIS5_E(ptr noundef nonnull %0, ptr nonnull %i.e, ptr nonnull %i.dw, ptr noundef %4, ptr nonnull %29, i64 4, ptr nonnull %30, i64 4294967296) ; 2 uses
  %.sroa.5396.0.extract.shift = lshr i64 %i.ea, 32 ; 4 uses
  %.sroa.5396.0.extract.trunc = trunc nuw i64 %.sroa.5396.0.extract.shift to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #22
  %i.eb = trunc i64 %i.ea to i1
  br i1 %i.eb, label %_ZNKR2v85MaybeINS_8internal12_GLOBAL__N_15StyleEE8FromJustEv.exit, label %bb.bp

_ZNKR2v85MaybeINS_8internal12_GLOBAL__N_15StyleEE8FromJustEv.exit: ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #22
  store ptr null, ptr %31, align 8
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 2256
  %i.ed = call i16 @_ZN2v88internal15GetStringOptionEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS3_INS0_6StringEEEPKcPS7_(ptr noundef nonnull %0, ptr nonnull %i.e, ptr nonnull %i.ec, ptr noundef %4, ptr noundef nonnull %31) #22 ; 2 uses
  %i.ee = trunc i16 %i.ed to i1
  br i1 %i.ee, label %_ZNKR2v85MaybeIbE8FromJustEv.exit183, label %bb.bo

_ZNKR2v85MaybeIbE8FromJustEv.exit183:             ; preds = %_ZNKR2v85MaybeINS_8internal12_GLOBAL__N_15StyleEE8FromJustEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #22
  %i.ef = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 4 uses
  store ptr %i.ef, ptr %32, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %32, i64 8 ; 3 uses
  store i64 0, ptr %i.eg, align 8
  store i8 0, ptr %i.ef, align 8
  %i.eh = and i16 %i.ed, 256
  %.not467 = icmp eq i16 %i.eh, 0                 ; 2 uses
  br i1 %.not467, label %bb.w, label %bb.u

bb.u:                                             ; preds = %_ZNKR2v85MaybeIbE8FromJustEv.exit183
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #22
  %.sroa.0.0.copyload.i187 = load ptr, ptr %31, align 8
  %i.ei = load i64, ptr %.sroa.0.0.copyload.i187, align 8
  %i.ej = add i64 %i.ei, -1
  %i.ek = inttoptr i64 %i.ej to ptr
  call void @_ZN2v88internal6String11ToStdStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %33, ptr noundef nonnull align 4 dereferenceable(16) %i.ek) #22
  %i.el = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %32, ptr noundef nonnull align 8 dereferenceable(32) %33) #22 ; 0 uses
  %i.em = load ptr, ptr %33, align 8              ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 2 uses
  %i.eo = icmp eq ptr %i.em, %i.en
  br i1 %i.eo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i213

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i213: ; preds = %bb.u
  %i.ep = load i64, ptr %i.en, align 8
  %i.eq = add i64 %i.ep, 1
  call void @_ZdlPvm(ptr noundef %i.em, i64 noundef %i.eq) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i213
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #22
  %.val189 = load ptr, ptr %32, align 8           ; 3 uses
  %.val190 = load i64, ptr %i.eg, align 8
  %.not.i = icmp eq i64 %.val190, 3
  br i1 %.not.i, label %78, label %bb.v

78:                                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215
  %79 = load i8, ptr %.val189, align 1
  %80 = or i8 %79, 32
  %81 = add i8 %80, -97
  %82 = icmp ult i8 %81, 26
  br i1 %82, label %83, label %bb.v

83:                                               ; preds = %78
  %84 = getelementptr inbounds nuw i8, ptr %.val189, i64 1
  %85 = load i8, ptr %84, align 1
  %86 = or i8 %85, 32
  %87 = add i8 %86, -97
  %88 = icmp ult i8 %87, 26
  br i1 %88, label %_ZN2v88internal12_GLOBAL__N_124IsWellFormedCurrencyCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.v

_ZN2v88internal12_GLOBAL__N_124IsWellFormedCurrencyCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %83
  %89 = getelementptr inbounds nuw i8, ptr %.val189, i64 2
  %90 = load i8, ptr %89, align 1
  %91 = or i8 %90, 32
  %92 = add i8 %91, -97
  %93 = icmp ult i8 %92, 26
  br i1 %93, label %bb.y, label %bb.v

bb.v:                                             ; preds = %78, %83, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215, %_ZN2v88internal12_GLOBAL__N_124IsWellFormedCurrencyCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.er = call ptr @_ZN2v88internal7Factory24NewStringFromStaticCharsILm14EEENS0_6HandleINS0_6StringEEERAT__KcNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(14) @.str.52, i8 noundef zeroext 0)
  %.sroa.076.0.copyload = load ptr, ptr %31, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  store ptr %i.er, ptr %7, align 8
  %i.es = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %.sroa.076.0.copyload, ptr %i.es, align 8
  %i.et = call ptr @_ZN2v88internal7Factory13NewRangeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef 237, ptr nonnull %7, i64 2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.eu = load i64, ptr %i.et, align 8
  %i.ev = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %0, i64 %i.eu, ptr noundef null) #22 ; 0 uses
  br label %bb.bn

bb.w:                                             ; preds = %_ZNKR2v85MaybeIbE8FromJustEv.exit183
  %i.ew = icmp eq i64 %.sroa.5396.0.extract.shift, 2
  br i1 %i.ew, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ex = call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef 56, ptr null, i64 0) #22
  %i.ey = load i64, ptr %i.ex, align 8
  %i.ez = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %0, i64 %i.ey, ptr noundef null) #22 ; 0 uses
  br label %bb.bn

bb.y:                                             ; preds = %bb.w, %_ZN2v88internal12_GLOBAL__N_124IsWellFormedCurrencyCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 2264
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %34, ptr noundef nonnull align 8 dereferenceable(64) @constinit.57, i64 16, i1 false)
  %i.fb = getelementptr inbounds nuw i8, ptr %34, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fb, ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @constinit.57, i64 16), i64 16, i1 false)
  %i.fc = getelementptr inbounds nuw i8, ptr %34, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fc, ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @constinit.57, i64 32), i64 16, i1 false)
  %i.fd = getelementptr inbounds nuw i8, ptr %34, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fd, ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @constinit.57, i64 48), i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #22
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %35, align 16
  %i.fe = call fastcc i64 @_ZN2v88internalL15GetStringOptionINS0_12_GLOBAL__N_115CurrencyDisplayEEENS_5MaybeIT_EEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS9_INS0_6StringEEEPKcSt4spanIKSt17basic_string_viewIcSt11char_traitsIcEELm18446744073709551615EESG_IKS5_Lm18446744073709551615EESt8optionalIS5_E(ptr noundef nonnull %0, ptr nonnull %i.e, ptr nonnull %i.fa, ptr noundef %4, ptr nonnull %34, i64 4, ptr nonnull %35, i64 4294967297) ; 2 uses
  %.sroa.5367.0.extract.shift = lshr i64 %i.fe, 32 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #22
  %i.ff = trunc i64 %i.fe to i1
  br i1 %i.ff, label %_ZNKR2v85MaybeINS_8internal12_GLOBAL__N_115CurrencyDisplayEE8FromJustEv.exit, label %bb.bn

_ZNKR2v85MaybeINS_8internal12_GLOBAL__N_115CurrencyDisplayEE8FromJustEv.exit: ; preds = %bb.y
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 2272
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %36, ptr noundef nonnull align 8 dereferenceable(32) @constinit.60, i64 16, i1 false)
  %i.fh = getelementptr inbounds nuw i8, ptr %36, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fh, ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @constinit.60, i64 16), i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #22
  store i32 0, ptr %37, align 4
  %i.fi = getelementptr inbounds nuw i8, ptr %37, i64 4
  store i32 1, ptr %i.fi, align 4
  %i.fj = call fastcc i64 @_ZN2v88internalL15GetStringOptionINS0_12_GLOBAL__N_112CurrencySignEEENS_5MaybeIT_EEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS9_INS0_6StringEEEPKcSt4spanIKSt17basic_string_viewIcSt11char_traitsIcEELm18446744073709551615EESG_IKS5_Lm18446744073709551615EESt8optionalIS5_E(ptr noundef nonnull %0, ptr nonnull %i.e, ptr nonnull %i.fg, ptr noundef %4, ptr nonnull %36, i64 2, ptr nonnull %37, i64 4294967296) ; 2 uses
  %.sroa.5351.0.extract.shift = lshr i64 %i.fj, 32 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #22
  %i.fk = trunc i64 %i.fj to i1
  br i1 %i.fk, label %_ZNKR2v85MaybeINS_8internal12_GLOBAL__N_112CurrencySignEE8FromJustEv.exit, label %bb.bn

_ZNKR2v85MaybeINS_8internal12_GLOBAL__N_112CurrencySignEE8FromJustEv.exit: ; preds = %_ZNKR2v85MaybeINS_8internal12_GLOBAL__N_115CurrencyDisplayEE8FromJustEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #22
  store ptr null, ptr %38, align 8
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 7728
  %i.fm = call i16 @_ZN2v88internal15GetStringOptionEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS3_INS0_6StringEEEPKcPS7_(ptr noundef nonnull %0, ptr nonnull %i.e, ptr nonnull %i.fl, ptr noundef %4, ptr noundef nonnull %38) #22 ; 2 uses
  %i.fn = trunc i16 %i.fm to i1
  br i1 %i.fn, label %_ZNKR2v85MaybeIbE8FromJustEv.exit182, label %bb.bm

_ZNKR2v85MaybeIbE8FromJustEv.exit182:             ; preds = %_ZNKR2v85MaybeINS_8internal12_GLOBAL__N_112CurrencySignEE8FromJustEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #22
  call void @_ZN6icu_7811MeasureUnitC1Ev(ptr noundef nonnull align 8 dereferenceable(48) %39) #22
  %i.fo = getelementptr inbounds nuw i8, ptr %39, i64 24 ; 6 uses
  call void @_ZN6icu_7811MeasureUnitC1Ev(ptr noundef nonnull align 8 dereferenceable(19) %i.fo) #22
  %i.fp = and i16 %i.fm, 256
  %.not468 = icmp eq i16 %i.fp, 0
  br i1 %.not468, label %bb.ac, label %bb.z

bb.z:                                             ; preds = %_ZNKR2v85MaybeIbE8FromJustEv.exit182
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #22
  %.sroa.0.0.copyload.i186 = load ptr, ptr %38, align 8
  %i.fq = load i64, ptr %.sroa.0.0.copyload.i186, align 8
  %i.fr = add i64 %i.fq, -1
  %i.fs = inttoptr i64 %i.fr to ptr
  call void @_ZN2v88internal6String11ToStdStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %40, ptr noundef nonnull align 4 dereferenceable(16) %i.fs) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #22
  %i.ft = load ptr, ptr %40, align 8
  %i.fu = getelementptr inbounds nuw i8, ptr %40, i64 8
  %i.fv = load i64, ptr %i.fu, align 8
  call fastcc void @_ZN2v88internal12_GLOBAL__N_126IsWellFormedUnitIdentifierEPNS0_7IsolateESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind noalias writable align 8 %41, i64 %i.fv, ptr %i.ft)
  %i.fw = load i8, ptr %41, align 8, !range !16, !noundef !17
  %i.fx = trunc nuw i8 %i.fw to i1                ; 2 uses
  br i1 %i.fx, label %_ZNKR2v85MaybeISt4pairIN6icu_7811MeasureUnitES3_EE8FromJustEv.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fy = call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %4, i8 noundef zeroext 0)
  %.sroa.052.0.copyload = load ptr, ptr %38, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  store ptr %i.fy, ptr %6, align 8
  %i.fz = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %.sroa.052.0.copyload, ptr %i.fz, align 8
  %i.ga = call ptr @_ZN2v88internal7Factory13NewRangeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef 88, ptr nonnull %6, i64 2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.gb = load i64, ptr %i.ga, align 8
  %i.gc = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %0, i64 %i.gb, ptr noundef null) #22 ; 0 uses
  br label %bb.ab

_ZNKR2v85MaybeISt4pairIN6icu_7811MeasureUnitES3_EE8FromJustEv.exit: ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #22
  %i.gd = getelementptr inbounds nuw i8, ptr %41, i64 8
  call void @_ZN6icu_7811MeasureUnitC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %42, ptr noundef nonnull align 8 dereferenceable(48) %i.gd) #22
  %i.ge = getelementptr inbounds nuw i8, ptr %42, i64 24 ; 3 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %41, i64 32
  call void @_ZN6icu_7811MeasureUnitC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(19) %i.ge, ptr noundef nonnull align 8 dereferenceable(19) %i.gf) #22
  %i.gg = call noundef nonnull align 8 dereferenceable(19) ptr @_ZN6icu_7811MeasureUnitaSEOS0_(ptr noundef nonnull align 8 dereferenceable(48) %39, ptr noundef nonnull align 8 dereferenceable(48) %42) #22 ; 0 uses
  %i.gh = call noundef nonnull align 8 dereferenceable(19) ptr @_ZN6icu_7811MeasureUnitaSEOS0_(ptr noundef nonnull align 8 dereferenceable(19) %i.fo, ptr noundef nonnull align 8 dereferenceable(19) %i.ge) #22 ; 0 uses
  call void @_ZN6icu_7811MeasureUnitD1Ev(ptr noundef nonnull align 8 dereferenceable(19) %i.ge) #22
  call void @_ZN6icu_7811MeasureUnitD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %42) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #22
  br label %bb.ab

bb.ab:                                            ; preds = %_ZNKR2v85MaybeISt4pairIN6icu_7811MeasureUnitES3_EE8FromJustEv.exit, %bb.aa
  %i.gi = getelementptr inbounds nuw i8, ptr %41, i64 8
  %i.gj = getelementptr inbounds nuw i8, ptr %41, i64 32
  call void @_ZN6icu_7811MeasureUnitD1Ev(ptr noundef nonnull align 8 dereferenceable(19) %i.gj) #22
  call void @_ZN6icu_7811MeasureUnitD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.gi) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #22
  %i.gk = load ptr, ptr %40, align 8              ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %40, i64 16 ; 2 uses
  %i.gm = icmp eq ptr %i.gk, %i.gl
  br i1 %i.gm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i216

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i216: ; preds = %bb.ab
  %i.gn = load i64, ptr %i.gl, align 8
  %i.go = add i64 %i.gn, 1
  call void @_ZdlPvm(ptr noundef %i.gk, i64 noundef %i.go) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i216
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #22
  br i1 %i.fx, label %bb.ae, label %bb.bl

bb.ac:                                            ; preds = %_ZNKR2v85MaybeIbE8FromJustEv.exit182
  %i.gp = icmp eq i64 %.sroa.5396.0.extract.shift, 3
  br i1 %i.gp, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.gq = call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %4, i8 noundef zeroext 0)
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 688
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  store ptr %i.gq, ptr %5, align 8
  %i.gs = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.gr, ptr %i.gs, align 8
  %i.gt = call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef 88, ptr nonnull %5, i64 2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.gu = load i64, ptr %i.gt, align 8
  %i.gv = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %0, i64 %i.gu, ptr noundef null) #22 ; 0 uses
  br label %bb.bl

bb.ae:                                            ; preds = %bb.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 3216
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %43, ptr noundef nonnull align 8 dereferenceable(48) @constinit.64, i64 16, i1 false)
  %i.gx = getelementptr inbounds nuw i8, ptr %43, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gx, ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @constinit.64, i64 16), i64 16, i1 false)
  %i.gy = getelementptr inbounds nuw i8, ptr %43, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gy, ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @constinit.64, i64 32), i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #22
  store i32 0, ptr %44, align 4
  %i.gz = getelementptr inbounds nuw i8, ptr %44, i64 4
  store i32 1, ptr %i.gz, align 4
  %i.ha = getelementptr inbounds nuw i8, ptr %44, i64 8
  store i32 2, ptr %i.ha, align 4
  %i.hb = call fastcc i64 @_ZN2v88internalL15GetStringOptionINS0_12_GLOBAL__N_111UnitDisplayEEENS_5MaybeIT_EEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS9_INS0_6StringEEEPKcSt4spanIKSt17basic_string_viewIcSt11char_traitsIcEELm18446744073709551615EESG_IKS5_Lm18446744073709551615EESt8optionalIS5_E(ptr noundef nonnull %0, ptr nonnull %i.e, ptr nonnull %i.gw, ptr noundef %4, ptr nonnull %43, i64 3, ptr nonnull %44, i64 4294967296) ; 2 uses
  %.sroa.5323.0.extract.shift = lshr i64 %i.hb, 32 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #22
  %i.hc = trunc i64 %i.hb to i1
  br i1 %i.hc, label %_ZNKR2v85MaybeINS_8internal12_GLOBAL__N_111UnitDisplayEE8FromJustEv.exit, label %bb.bl

_ZNKR2v85MaybeINS_8internal12_GLOBAL__N_111UnitDisplayEE8FromJustEv.exit: ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #22
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %45, align 8
  %i.hd = getelementptr inbounds nuw i8, ptr %45, i64 8 ; 3 uses
  store i16 2, ptr %i.hd, align 8
  %i.he = icmp eq i64 %.sroa.5396.0.extract.shift, 2 ; 2 uses
  br i1 %i.he, label %_ZNKR2v85MaybeIbE8FromJustEv.exit, label %bb.am

_ZNKR2v85MaybeIbE8FromJustEv.exit:                ; preds = %_ZNKR2v85MaybeINS_8internal12_GLOBAL__N_111UnitDisplayEE8FromJustEv.exit
  br i1 %.not467, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %_ZNKR2v85MaybeIbE8FromJustEv.exit
  %i.hf = call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef 56, ptr null, i64 0) #22
  %i.hg = load i64, ptr %i.hf, align 8
  %i.hh = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %0, i64 %i.hg, ptr noundef null) #22 ; 0 uses
  br label %_ZNK2v88internal11MaybeHandleINS0_6StringEE2ToIS2_EEbPNS0_12DirectHandleIT_EE.exit

bb.ag:                                            ; preds = %_ZNKR2v85MaybeIbE8FromJustEv.exit
  %i.hi = load ptr, ptr %32, align 8              ; 3 uses
  %i.hj = load i64, ptr %i.eg, align 8            ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hi, i64 %i.hj
  %i.hl = icmp samesign eq i64 %i.hj, 0
  br i1 %i.hl, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_PDoFiiEET0_T_SD_SC_T1_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ag, %.lr.ph.i
  %.sroa.0.07.i = phi ptr [ %i.hq, %.lr.ph.i ], [ %i.hi, %bb.ag ] ; 3 uses
  %i.hm = load i8, ptr %.sroa.0.07.i, align 1
  %i.hn = sext i8 %i.hm to i32
  %i.ho = call noundef i32 @toupper(i32 noundef %i.hn) #22, !inline_history !38
  %i.hp = trunc i32 %i.ho to i8
  store i8 %i.hp, ptr %.sroa.0.07.i, align 1
  %i.hq = getelementptr i8, ptr %.sroa.0.07.i, i64 1 ; 2 uses
  %i.hr = icmp eq ptr %i.hq, %i.hk
  br i1 %i.hr, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_PDoFiiEET0_T_SD_SC_T1_.exit.loopexit, label %.lr.ph.i, !llvm.loop !39

_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_PDoFiiEET0_T_SD_SC_T1_.exit.loopexit: ; preds = %.lr.ph.i
  %.pre469 = load ptr, ptr %32, align 8
  br label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_PDoFiiEET0_T_SD_SC_T1_.exit

_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_PDoFiiEET0_T_SD_SC_T1_.exit: ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_PDoFiiEET0_T_SD_SC_T1_.exit.loopexit, %bb.ag
  %i.hs = phi ptr [ %.pre469, %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_PDoFiiEET0_T_SD_SC_T1_.exit.loopexit ], [ %i.hi, %bb.ag ]
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #22
  call void @_ZN6icu_7813UnicodeStringC1EPKc(ptr noundef nonnull align 8 dereferenceable(64) %46, ptr noundef %i.hs) #22
  %i.ht = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %45, ptr noundef nonnull align 8 dereferenceable(64) %46) #22 ; 0 uses
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %46) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #22
end_hunk_0
begin_hunk_1_@_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_:bb.a

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit:       ; preds = %bb.c, %bb.b, %bb.a
  %i.h = phi i1 [ false, %bb.a ], [ %i.g, %bb.c ], [ true, %bb.b ]
  ret i1 %i.h
}

declare void @_ZNKR6icu_786number23NumberFormatterSettingsINS0_26UnlocalizedNumberFormatterEE12adoptSymbolsEPNS_15NumberingSystemE(ptr dead_on_unwind writable sret(%"class.icu_78::number::UnlocalizedNumberFormatter") align 8, ptr noundef nonnull align 8 dereferenceable(288), ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN6icu_7815NumberingSystem20createInstanceByNameEPKcR10UErrorCode(ptr noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc range(i64 0, -4294967294) i64 @_ZN2v88internalL15GetStringOptionINS0_12_GLOBAL__N_15StyleEEENS_5MaybeIT_EEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS9_INS0_6StringEEEPKcSt4spanIKSt17basic_string_viewIcSt11char_traitsIcEELm18446744073709551615EESG_IKS5_Lm18446744073709551615EESt8optionalIS5_E(ptr noundef %0, ptr %1, ptr %2, ptr noundef %3, ptr nofree readonly captures(none) %4, i64 %5, ptr nofree readonly captures(none) %.0.val, i64 %6) unnamed_addr #0 {
bb.a:
  %7 = alloca [3 x %"class.v8::internal::DirectHandle.444"], align 8 ; 6 uses
  %8 = alloca %"class.v8::internal::DirectHandle", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  store ptr null, ptr %8, align 8
  %i.a = call i16 @_ZN2v88internal15GetStringOptionEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS3_INS0_6StringEEEPKcPS7_(ptr noundef %0, ptr %1, ptr %2, ptr noundef %3, ptr noundef nonnull %8) #22 ; 2 uses
  %i.b = trunc i16 %i.a to i1
  br i1 %i.b, label %_ZNKR2v85MaybeIbE8FromJustEv.exit, label %bb.g

_ZNKR2v85MaybeIbE8FromJustEv.exit:                ; preds = %bb.a
  %i.c = and i16 %i.a, 256
  %.not15 = icmp eq i16 %i.c, 0
  br i1 %.not15, label %bb.c, label %.preheader

.preheader:                                       ; preds = %_ZNKR2v85MaybeIbE8FromJustEv.exit
  %.not18.not = icmp eq i64 %5, 0
  br i1 %.not18.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.b
  %.02619 = phi i64 [ %i.j, %bb.b ], [ 0, %.preheader ] ; 3 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %8, align 8
  %i.d = load i64, ptr %.sroa.0.0.copyload.i, align 8
  %i.e = add i64 %i.d, -1
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %.02619 ; 2 uses
  %.sroa.09.0.copyload = load i64, ptr %i.g, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8
  %i.h = call noundef zeroext i1 @_ZNK2v88internal6String9IsEqualToILNS1_12EqualityTypeE0EcEEbNS_4base6VectorIKT0_EEPNS0_7IsolateE(ptr noundef nonnull align 4 dereferenceable(16) %i.f, ptr %.sroa.2.0.copyload, i64 %.sroa.09.0.copyload, ptr noundef %0)
  br i1 %i.h, label %.thread, label %bb.b

.thread:                                          ; preds = %.lr.ph
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %.0.val, i64 %.02619
  %.val28 = load i32, ptr %i.i, align 4
  %.sroa.21.0.insert.ext.i = zext i32 %.val28 to i64
  %.sroa.21.0.insert.shift.i = shl nuw i64 %.sroa.21.0.insert.ext.i, 32
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.21.0.insert.shift.i, 1
  br label %bb.g

bb.b:                                             ; preds = %.lr.ph
  %i.j = add nuw i64 %.02619, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.j, %5
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !43

bb.c:                                             ; preds = %_ZNKR2v85MaybeIbE8FromJustEv.exit
  %i.k = and i64 %6, 4294967296
  %.not16 = icmp eq i64 %i.k, 0
  br i1 %.not16, label %.loopexit, label %_ZNRSt8optionalIN2v88internal12_GLOBAL__N_15StyleEE5valueEv.exit

_ZNRSt8optionalIN2v88internal12_GLOBAL__N_15StyleEE5valueEv.exit: ; preds = %bb.c
  %.sroa.21.0.insert.ext.i30 = shl i64 %6, 32
  %.sroa.0.0.insert.insert.i32 = or disjoint i64 %.sroa.21.0.insert.ext.i30, 1
  br label %bb.g

.loopexit:                                        ; preds = %bb.b, %.preheader, %bb.c
  %i.l = load ptr, ptr %8, align 8
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.loopexit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 7696
  %i.o = ptrtoint ptr %i.n to i64
  store i64 %i.o, ptr %8, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.loopexit
  %i.p = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #26
  %i.q = call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %3, i64 %i.p, i8 noundef zeroext 0) #22 ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.f, label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit, !prof !13

bb.f:                                             ; preds = %bb.e
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.116) #23
  unreachable

_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit: ; preds = %bb.e
  %.sroa.03.0.copyload = load ptr, ptr %8, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  store ptr %.sroa.03.0.copyload, ptr %7, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.q, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %2, ptr %i.t, align 8
  %i.u = call ptr @_ZN2v88internal7Factory13NewRangeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef 276, ptr nonnull %7, i64 3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.v = load i64, ptr %i.u, align 8
  %i.w = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %0, i64 %i.v, ptr noundef null) #22 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %.thread, %bb.a, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit, %_ZNRSt8optionalIN2v88internal12_GLOBAL__N_15StyleEE5valueEv.exit
  %.sroa.025.1 = phi i64 [ %.sroa.0.0.insert.insert.i32, %_ZNRSt8optionalIN2v88internal12_GLOBAL__N_15StyleEE5valueEv.exit ], [ 0, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit ], [ %.sroa.0.0.insert.insert.i, %.thread ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  ret i64 %.sroa.025.1
}

declare i16 @_ZN2v88internal15GetStringOptionEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS3_INS0_6StringEEEPKcPS7_(ptr noundef, ptr, ptr, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN2v88internal6String11ToStdStringB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 4 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.c = icmp eq ptr %i.a, %i.b
  %i.d = load ptr, ptr %1, align 8                ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.f = icmp eq ptr %i.d, %i.e                   ; 2 uses
  br i1 %i.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit: ; preds = %bb.a
  br i1 %i.f, label %bb.b, label %.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread: ; preds = %bb.a
  br i1 %i.f, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8              ; 3 uses
  %i.i = icmp ult i64 %i.h, 16
  tail call void @llvm.assume(i1 %i.i)
  %.not21 = icmp eq ptr %1, %0
  br i1 %.not21, label %bb.h, label %bb.c, !prof !13

bb.c:                                             ; preds = %bb.b
  switch i64 %i.h, label %bb.e [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
    i64 1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.j = load i8, ptr %i.d, align 1
  store i8 %i.j, ptr %i.a, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.a, ptr align 1 %i.d, i64 %i.h, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %bb.c, %bb.e, %bb.d
  %i.k = load i64, ptr %i.g, align 8              ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.k, ptr %i.l, align 8
  %i.m = load ptr, ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1
  %.pre = load ptr, ptr %1, align 8
  br label %bb.h

.thread:                                          ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %0, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load i64, ptr %i.p, align 8
  store i64 %i.q, ptr %i.o, align 8
  %i.r = load i64, ptr %i.e, align 8
  store i64 %i.r, ptr %i.b, align 8
  br label %bb.g

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread
  %i.s = load i64, ptr %i.b, align 8
  store ptr %i.d, ptr %0, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load i64, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.u, ptr %i.v, align 8
  %i.w = load i64, ptr %i.e, align 8
  store i64 %i.w, ptr %i.b, align 8
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25
  store ptr %i.a, ptr %1, align 8
  store i64 %i.s, ptr %i.e, align 8
  br label %bb.h

bb.g:                                             ; preds = %.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25
  store ptr %i.e, ptr %1, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %i.x = phi ptr [ %i.a, %bb.f ], [ %i.e, %bb.g ], [ %i.d, %bb.b ], [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit ]
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.y, align 8
  store i8 0, ptr %i.x, align 1
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZN2v88internal7Factory24NewStringFromStaticCharsILm14EEENS0_6HandleINS0_6StringEEERAT__KcNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(14) %1, i8 noundef zeroext %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %1, i64 13, i8 noundef zeroext %2) #22 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_ZNK2v88internal11MaybeHandleINS0_6StringEE5CheckEv.exit, !prof !13

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.116) #23
  unreachable

_ZNK2v88internal11MaybeHandleINS0_6StringEE5CheckEv.exit: ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc range(i64 0, -4294967294) i64 @_ZN2v88internalL15GetStringOptionINS0_12_GLOBAL__N_115CurrencyDisplayEEENS_5MaybeIT_EEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS9_INS0_6StringEEEPKcSt4spanIKSt17basic_string_viewIcSt11char_traitsIcEELm18446744073709551615EESG_IKS5_Lm18446744073709551615EESt8optionalIS5_E(ptr noundef %0, ptr %1, ptr %2, ptr noundef %3, ptr nofree readonly captures(none) %4, i64 %5, ptr nofree readonly captures(none) %.0.val, i64 %6) unnamed_addr #0 {
bb.a:
  %7 = alloca [3 x %"class.v8::internal::DirectHandle.444"], align 8 ; 6 uses
  %8 = alloca %"class.v8::internal::DirectHandle", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  store ptr null, ptr %8, align 8
  %i.a = call i16 @_ZN2v88internal15GetStringOptionEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS3_INS0_6StringEEEPKcPS7_(ptr noundef %0, ptr %1, ptr %2, ptr noundef %3, ptr noundef nonnull %8) #22 ; 2 uses
  %i.b = trunc i16 %i.a to i1
  br i1 %i.b, label %_ZNKR2v85MaybeIbE8FromJustEv.exit, label %bb.g

_ZNKR2v85MaybeIbE8FromJustEv.exit:                ; preds = %bb.a
  %i.c = and i16 %i.a, 256
  %.not15 = icmp eq i16 %i.c, 0
  br i1 %.not15, label %bb.c, label %.preheader

.preheader:                                       ; preds = %_ZNKR2v85MaybeIbE8FromJustEv.exit
  %.not18.not = icmp eq i64 %5, 0
  br i1 %.not18.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.b
  %.02619 = phi i64 [ %i.j, %bb.b ], [ 0, %.preheader ] ; 3 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %8, align 8
  %i.d = load i64, ptr %.sroa.0.0.copyload.i, align 8
  %i.e = add i64 %i.d, -1
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %.02619 ; 2 uses
  %.sroa.09.0.copyload = load i64, ptr %i.g, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8
  %i.h = call noundef zeroext i1 @_ZNK2v88internal6String9IsEqualToILNS1_12EqualityTypeE0EcEEbNS_4base6VectorIKT0_EEPNS0_7IsolateE(ptr noundef nonnull align 4 dereferenceable(16) %i.f, ptr %.sroa.2.0.copyload, i64 %.sroa.09.0.copyload, ptr noundef %0)
  br i1 %i.h, label %.thread, label %bb.b

.thread:                                          ; preds = %.lr.ph
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %.0.val, i64 %.02619
  %.val28 = load i32, ptr %i.i, align 4
  %.sroa.21.0.insert.ext.i = zext i32 %.val28 to i64
  %.sroa.21.0.insert.shift.i = shl nuw i64 %.sroa.21.0.insert.ext.i, 32
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.21.0.insert.shift.i, 1
  br label %bb.g

bb.b:                                             ; preds = %.lr.ph
  %i.j = add nuw i64 %.02619, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.j, %5
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !44

bb.c:                                             ; preds = %_ZNKR2v85MaybeIbE8FromJustEv.exit
  %i.k = and i64 %6, 4294967296
  %.not16 = icmp eq i64 %i.k, 0
  br i1 %.not16, label %.loopexit, label %_ZNRSt8optionalIN2v88internal12_GLOBAL__N_115CurrencyDisplayEE5valueEv.exit

_ZNRSt8optionalIN2v88internal12_GLOBAL__N_115CurrencyDisplayEE5valueEv.exit: ; preds = %bb.c
  %.sroa.21.0.insert.ext.i30 = shl i64 %6, 32
  %.sroa.0.0.insert.insert.i32 = or disjoint i64 %.sroa.21.0.insert.ext.i30, 1
  br label %bb.g

.loopexit:                                        ; preds = %bb.b, %.preheader, %bb.c
  %i.l = load ptr, ptr %8, align 8
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.loopexit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 7696
  %i.o = ptrtoint ptr %i.n to i64
  store i64 %i.o, ptr %8, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.loopexit
  %i.p = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #26
  %i.q = call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %3, i64 %i.p, i8 noundef zeroext 0) #22 ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.f, label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit, !prof !13

bb.f:                                             ; preds = %bb.e
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.116) #23
  unreachable

_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit: ; preds = %bb.e
  %.sroa.03.0.copyload = load ptr, ptr %8, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  store ptr %.sroa.03.0.copyload, ptr %7, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.q, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %2, ptr %i.t, align 8
  %i.u = call ptr @_ZN2v88internal7Factory13NewRangeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef 276, ptr nonnull %7, i64 3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.v = load i64, ptr %i.u, align 8
  %i.w = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %0, i64 %i.v, ptr noundef null) #22 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %.thread, %bb.a, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit, %_ZNRSt8optionalIN2v88internal12_GLOBAL__N_115CurrencyDisplayEE5valueEv.exit
  %.sroa.025.1 = phi i64 [ %.sroa.0.0.insert.insert.i32, %_ZNRSt8optionalIN2v88internal12_GLOBAL__N_115CurrencyDisplayEE5valueEv.exit ], [ 0, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit ], [ %.sroa.0.0.insert.insert.i, %.thread ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  ret i64 %.sroa.025.1
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc range(i64 0, -4294967294) i64 @_ZN2v88internalL15GetStringOptionINS0_12_GLOBAL__N_112CurrencySignEEENS_5MaybeIT_EEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS9_INS0_6StringEEEPKcSt4spanIKSt17basic_string_viewIcSt11char_traitsIcEELm18446744073709551615EESG_IKS5_Lm18446744073709551615EESt8optionalIS5_E(ptr noundef %0, ptr %1, ptr %2, ptr noundef %3, ptr nofree readonly captures(none) %4, i64 %5, ptr nofree readonly captures(none) %.0.val, i64 %6) unnamed_addr #0 {
bb.a:
  %7 = alloca [3 x %"class.v8::internal::DirectHandle.444"], align 8 ; 6 uses
  %8 = alloca %"class.v8::internal::DirectHandle", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  store ptr null, ptr %8, align 8
  %i.a = call i16 @_ZN2v88internal15GetStringOptionEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS3_INS0_6StringEEEPKcPS7_(ptr noundef %0, ptr %1, ptr %2, ptr noundef %3, ptr noundef nonnull %8) #22 ; 2 uses
  %i.b = trunc i16 %i.a to i1
  br i1 %i.b, label %_ZNKR2v85MaybeIbE8FromJustEv.exit, label %bb.g

_ZNKR2v85MaybeIbE8FromJustEv.exit:                ; preds = %bb.a
  %i.c = and i16 %i.a, 256
  %.not15 = icmp eq i16 %i.c, 0
  br i1 %.not15, label %bb.c, label %.preheader

.preheader:                                       ; preds = %_ZNKR2v85MaybeIbE8FromJustEv.exit
  %.not18.not = icmp eq i64 %5, 0
  br i1 %.not18.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.b
  %.02619 = phi i64 [ %i.j, %bb.b ], [ 0, %.preheader ] ; 3 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %8, align 8
  %i.d = load i64, ptr %.sroa.0.0.copyload.i, align 8
  %i.e = add i64 %i.d, -1
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %.02619 ; 2 uses
  %.sroa.09.0.copyload = load i64, ptr %i.g, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8
  %i.h = call noundef zeroext i1 @_ZNK2v88internal6String9IsEqualToILNS1_12EqualityTypeE0EcEEbNS_4base6VectorIKT0_EEPNS0_7IsolateE(ptr noundef nonnull align 4 dereferenceable(16) %i.f, ptr %.sroa.2.0.copyload, i64 %.sroa.09.0.copyload, ptr noundef %0)
  br i1 %i.h, label %.thread, label %bb.b

.thread:                                          ; preds = %.lr.ph
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %.0.val, i64 %.02619
  %.val28 = load i32, ptr %i.i, align 4
  %.sroa.21.0.insert.ext.i = zext i32 %.val28 to i64
  %.sroa.21.0.insert.shift.i = shl nuw i64 %.sroa.21.0.insert.ext.i, 32
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.21.0.insert.shift.i, 1
  br label %bb.g

bb.b:                                             ; preds = %.lr.ph
  %i.j = add nuw i64 %.02619, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.j, %5
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !45

bb.c:                                             ; preds = %_ZNKR2v85MaybeIbE8FromJustEv.exit
  %i.k = and i64 %6, 4294967296
  %.not16 = icmp eq i64 %i.k, 0
  br i1 %.not16, label %.loopexit, label %_ZNRSt8optionalIN2v88internal12_GLOBAL__N_112CurrencySignEE5valueEv.exit

_ZNRSt8optionalIN2v88internal12_GLOBAL__N_112CurrencySignEE5valueEv.exit: ; preds = %bb.c
  %.sroa.21.0.insert.ext.i30 = shl i64 %6, 32
  %.sroa.0.0.insert.insert.i32 = or disjoint i64 %.sroa.21.0.insert.ext.i30, 1
  br label %bb.g

.loopexit:                                        ; preds = %bb.b, %.preheader, %bb.c
  %i.l = load ptr, ptr %8, align 8
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.loopexit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 7696
  %i.o = ptrtoint ptr %i.n to i64
  store i64 %i.o, ptr %8, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.loopexit
  %i.p = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #26
  %i.q = call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %3, i64 %i.p, i8 noundef zeroext 0) #22 ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.f, label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit, !prof !13

bb.f:                                             ; preds = %bb.e
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.116) #23
  unreachable

_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit: ; preds = %bb.e
  %.sroa.03.0.copyload = load ptr, ptr %8, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  store ptr %.sroa.03.0.copyload, ptr %7, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.q, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %2, ptr %i.t, align 8
  %i.u = call ptr @_ZN2v88internal7Factory13NewRangeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef 276, ptr nonnull %7, i64 3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.v = load i64, ptr %i.u, align 8
end_hunk_1
begin_hunk_2_@_ZN2v88internal12_GLOBAL__N_126IsWellFormedUnitIdentifierEPNS0_7IsolateESt17basic_string_viewIcSt11char_traitsIcEE:bb.a
  %i.ag = xor i32 %i.af, 1919250477
  %i.ah = getelementptr i8, ptr %i.ae, i64 4
  %i.ai = load i8, ptr %i.ah, align 1
  %i.aj = zext i8 %i.ai to i32
  %i.ak = xor i32 %i.aj, 45
  %i.al = or i32 %i.ag, %i.ak
  %i.am = icmp ne i32 %i.al, 0
  %i.an = zext i1 %i.am to i32
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEPKcm.exit24, label %bb.g

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEPKcm.exit24: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i21
  %i.ap = ptrtoint ptr %i.ae to i64
  %i.aq = sub i64 %i.ap, %i.y
  %i.ar = icmp eq i64 %i.aq, -1
  br i1 %i.ar, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEPKcm.exit24.thread, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEPKcm.exit.thread

bb.g:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i21
  %i.as = getelementptr inbounds nuw i8, ptr %i.ae, i64 1 ; 2 uses
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = sub i64 %i.i, %i.at                     ; 2 uses
  %.not25.i.i23 = icmp ult i64 %i.au, 5
  br i1 %.not25.i.i23, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEPKcm.exit24.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i19, !llvm.loop !48

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEPKcm.exit.thread: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, %bb.d, %bb.c, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEPKcm.exit24, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEPKcm.exit
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, i8 0, i64 56, i1 false), !alias.scope !58
  call void @_ZN6icu_7811MeasureUnitC1Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.av) #22
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @_ZN6icu_7811MeasureUnitC1Ev(ptr noundef nonnull align 8 dereferenceable(19) %i.aw) #22
  br label %bb.n

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEPKcm.exit24.thread: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i19, %bb.g, %bb.f, %bb.e, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEPKcm.exit24
  %.sroa.speculated.i = call i64 @llvm.umin.i64(i64 %1, i64 %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  call fastcc void @_ZN2v88internal12_GLOBAL__N_126IsSanctionedUnitIdentifierESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind noalias writable align 8 %6, i64 %.sroa.speculated.i, ptr %2)
  %i.ax = call noundef nonnull align 8 dereferenceable(19) ptr @_ZN6icu_7811MeasureUnitaSEOS0_(ptr noundef nonnull align 8 dereferenceable(19) %3, ptr noundef nonnull align 8 dereferenceable(19) %6) #22 ; 0 uses
  call void @_ZN6icu_7811MeasureUnitD1Ev(ptr noundef nonnull align 8 dereferenceable(19) %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.ay = call noundef zeroext i1 @_ZNK6icu_7811MeasureUniteqERKNS_7UObjectE(ptr noundef nonnull align 8 dereferenceable(19) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #22
  br i1 %i.ay, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEPKcm.exit24.thread
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, i8 0, i64 56, i1 false), !alias.scope !59
  call void @_ZN6icu_7811MeasureUnitC1Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.az) #22
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @_ZN6icu_7811MeasureUnitC1Ev(ptr noundef nonnull align 8 dereferenceable(19) %i.ba) #22
  br label %bb.n

bb.i:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEPKcm.exit24.thread
  %i.bb = icmp ugt i64 %i.ab, %1
  br i1 %i.bb, label %bb.j, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit

bb.j:                                             ; preds = %bb.i
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.114, i64 noundef %i.ab, i64 noundef %1) #23
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %bb.i
  %i.bc = sub nuw i64 %1, %i.ab
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 %i.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  call fastcc void @_ZN2v88internal12_GLOBAL__N_126IsSanctionedUnitIdentifierESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind noalias writable align 8 %7, i64 %i.bc, ptr %i.bd)
  %i.be = call noundef zeroext i1 @_ZNK6icu_7811MeasureUniteqERKNS_7UObjectE(ptr noundef nonnull align 8 dereferenceable(19) %7, ptr noundef nonnull align 8 dereferenceable(8) %4) #22
  br i1 %i.be, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, i8 0, i64 56, i1 false), !alias.scope !60
  call void @_ZN6icu_7811MeasureUnitC1Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.bf) #22
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @_ZN6icu_7811MeasureUnitC1Ev(ptr noundef nonnull align 8 dereferenceable(19) %i.bg) #22
  br label %bb.m

bb.l:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  call void @_ZN6icu_7811MeasureUnitC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull align 8 dereferenceable(19) %3) #22
  %i.bh = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 3 uses
  call void @_ZN6icu_7811MeasureUnitC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(19) %i.bh, ptr noundef nonnull align 8 dereferenceable(19) %7) #22
  store i8 1, ptr %0, align 8, !alias.scope !61
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZN6icu_7811MeasureUnitC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %i.bi, ptr noundef nonnull align 8 dereferenceable(48) %8) #22
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @_ZN6icu_7811MeasureUnitC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(19) %i.bj, ptr noundef nonnull align 8 dereferenceable(19) %i.bh) #22
  call void @_ZN6icu_7811MeasureUnitD1Ev(ptr noundef nonnull align 8 dereferenceable(19) %i.bh) #22
  call void @_ZN6icu_7811MeasureUnitD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  call void @_ZN6icu_7811MeasureUnitD1Ev(ptr noundef nonnull align 8 dereferenceable(19) %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %bb.n

bb.n:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEPKcm.exit.thread, %bb.m, %bb.h, %bb.b
  call void @_ZN6icu_7811MeasureUnitD1Ev(ptr noundef nonnull align 8 dereferenceable(19) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @_ZN6icu_7811MeasureUnitD1Ev(ptr noundef nonnull align 8 dereferenceable(19) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc range(i64 0, -4294967294) i64 @_ZN2v88internalL15GetStringOptionINS0_12_GLOBAL__N_111UnitDisplayEEENS_5MaybeIT_EEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS9_INS0_6StringEEEPKcSt4spanIKSt17basic_string_viewIcSt11char_traitsIcEELm18446744073709551615EESG_IKS5_Lm18446744073709551615EESt8optionalIS5_E(ptr noundef %0, ptr %1, ptr %2, ptr noundef %3, ptr nofree readonly captures(none) %4, i64 %5, ptr nofree readonly captures(none) %.0.val, i64 %6) unnamed_addr #0 {
bb.a:
  %7 = alloca [3 x %"class.v8::internal::DirectHandle.444"], align 8 ; 6 uses
  %8 = alloca %"class.v8::internal::DirectHandle", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  store ptr null, ptr %8, align 8
  %i.a = call i16 @_ZN2v88internal15GetStringOptionEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS3_INS0_6StringEEEPKcPS7_(ptr noundef %0, ptr %1, ptr %2, ptr noundef %3, ptr noundef nonnull %8) #22 ; 2 uses
  %i.b = trunc i16 %i.a to i1
  br i1 %i.b, label %_ZNKR2v85MaybeIbE8FromJustEv.exit, label %bb.g

_ZNKR2v85MaybeIbE8FromJustEv.exit:                ; preds = %bb.a
  %i.c = and i16 %i.a, 256
  %.not15 = icmp eq i16 %i.c, 0
  br i1 %.not15, label %bb.c, label %.preheader

.preheader:                                       ; preds = %_ZNKR2v85MaybeIbE8FromJustEv.exit
  %.not18.not = icmp eq i64 %5, 0
  br i1 %.not18.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.b
  %.02619 = phi i64 [ %i.j, %bb.b ], [ 0, %.preheader ] ; 3 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %8, align 8
  %i.d = load i64, ptr %.sroa.0.0.copyload.i, align 8
  %i.e = add i64 %i.d, -1
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %.02619 ; 2 uses
  %.sroa.09.0.copyload = load i64, ptr %i.g, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8
  %i.h = call noundef zeroext i1 @_ZNK2v88internal6String9IsEqualToILNS1_12EqualityTypeE0EcEEbNS_4base6VectorIKT0_EEPNS0_7IsolateE(ptr noundef nonnull align 4 dereferenceable(16) %i.f, ptr %.sroa.2.0.copyload, i64 %.sroa.09.0.copyload, ptr noundef %0)
  br i1 %i.h, label %.thread, label %bb.b

.thread:                                          ; preds = %.lr.ph
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %.0.val, i64 %.02619
  %.val28 = load i32, ptr %i.i, align 4
  %.sroa.21.0.insert.ext.i = zext i32 %.val28 to i64
  %.sroa.21.0.insert.shift.i = shl nuw i64 %.sroa.21.0.insert.ext.i, 32
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.21.0.insert.shift.i, 1
  br label %bb.g

bb.b:                                             ; preds = %.lr.ph
  %i.j = add nuw i64 %.02619, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.j, %5
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !62

bb.c:                                             ; preds = %_ZNKR2v85MaybeIbE8FromJustEv.exit
  %i.k = and i64 %6, 4294967296
  %.not16 = icmp eq i64 %i.k, 0
  br i1 %.not16, label %.loopexit, label %_ZNRSt8optionalIN2v88internal12_GLOBAL__N_111UnitDisplayEE5valueEv.exit

_ZNRSt8optionalIN2v88internal12_GLOBAL__N_111UnitDisplayEE5valueEv.exit: ; preds = %bb.c
  %.sroa.21.0.insert.ext.i30 = shl i64 %6, 32
  %.sroa.0.0.insert.insert.i32 = or disjoint i64 %.sroa.21.0.insert.ext.i30, 1
  br label %bb.g

.loopexit:                                        ; preds = %bb.b, %.preheader, %bb.c
  %i.l = load ptr, ptr %8, align 8
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.loopexit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 7696
  %i.o = ptrtoint ptr %i.n to i64
  store i64 %i.o, ptr %8, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.loopexit
  %i.p = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #26
  %i.q = call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %3, i64 %i.p, i8 noundef zeroext 0) #22 ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.f, label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit, !prof !13

bb.f:                                             ; preds = %bb.e
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.116) #23
  unreachable

_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit: ; preds = %bb.e
  %.sroa.03.0.copyload = load ptr, ptr %8, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  store ptr %.sroa.03.0.copyload, ptr %7, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.q, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %2, ptr %i.t, align 8
  %i.u = call ptr @_ZN2v88internal7Factory13NewRangeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef 276, ptr nonnull %7, i64 3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.v = load i64, ptr %i.u, align 8
  %i.w = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %0, i64 %i.v, ptr noundef null) #22 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %.thread, %bb.a, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit, %_ZNRSt8optionalIN2v88internal12_GLOBAL__N_111UnitDisplayEE5valueEv.exit
  %.sroa.025.1 = phi i64 [ %.sroa.0.0.insert.insert.i32, %_ZNRSt8optionalIN2v88internal12_GLOBAL__N_111UnitDisplayEE5valueEv.exit ], [ 0, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit ], [ %.sroa.0.0.insert.insert.i, %.thread ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  ret i64 %.sroa.025.1
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @toupper(i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #3

declare void @_ZNKR6icu_786number23NumberFormatterSettingsINS0_26UnlocalizedNumberFormatterEE4unitERKNS_11MeasureUnitE(ptr dead_on_unwind writable sret(%"class.icu_78::number::UnlocalizedNumberFormatter") align 8, ptr noundef nonnull align 8 dereferenceable(288), ptr noundef nonnull align 8 dereferenceable(19)) local_unnamed_addr #2

declare void @_ZN6icu_7812CurrencyUnitC1ENS_14ConstChar16PtrER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef, ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN6icu_7812CurrencyUnitD1Ev(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #3

declare void @_ZNKR6icu_786number23NumberFormatterSettingsINS0_26UnlocalizedNumberFormatterEE9unitWidthE16UNumberUnitWidth(ptr dead_on_unwind writable sret(%"class.icu_78::number::UnlocalizedNumberFormatter") align 8, ptr noundef nonnull align 8 dereferenceable(288), i32 noundef) local_unnamed_addr #2

declare void @_ZN2v88internal7Isolate10CountUsageENS_7Isolate17UseCounterFeatureE(ptr noundef nonnull align 8 dereferenceable(64320), i32 noundef) local_unnamed_addr #2

declare void @_ZN6icu_7811MeasureUnitC1Ev(ptr noundef nonnull align 8 dereferenceable(19)) unnamed_addr #2

declare void @_ZNKR6icu_786number23NumberFormatterSettingsINS0_26UnlocalizedNumberFormatterEE7perUnitERKNS_11MeasureUnitE(ptr dead_on_unwind writable sret(%"class.icu_78::number::UnlocalizedNumberFormatter") align 8, ptr noundef nonnull align 8 dereferenceable(288), ptr noundef nonnull align 8 dereferenceable(19)) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN6icu_7811MeasureUnitD1Ev(ptr noundef nonnull align 8 dereferenceable(19)) unnamed_addr #3

declare void @_ZN6icu_7811MeasureUnit10getPercentEv(ptr dead_on_unwind writable sret(%"class.icu_78::MeasureUnit") align 8) local_unnamed_addr #2

declare void @_ZNO6icu_786number23NumberFormatterSettingsINS0_26UnlocalizedNumberFormatterEE5scaleERKNS0_5ScaleE(ptr dead_on_unwind writable sret(%"class.icu_78::number::UnlocalizedNumberFormatter") align 8, ptr noundef nonnull align 8 dereferenceable(288), ptr noundef nonnull align 8 dereferenceable(20)) local_unnamed_addr #2

declare void @_ZN6icu_786number5Scale10powerOfTenEi(ptr dead_on_unwind writable sret(%"class.icu_78::number::Scale") align 8, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN6icu_786number5ScaleD1Ev(ptr noundef nonnull align 8 dereferenceable(20)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc range(i64 0, -4294967294) i64 @_ZN2v88internalL15GetStringOptionINS0_12_GLOBAL__N_18NotationEEENS_5MaybeIT_EEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS9_INS0_6StringEEEPKcSt4spanIKSt17basic_string_viewIcSt11char_traitsIcEELm18446744073709551615EESG_IKS5_Lm18446744073709551615EESt8optionalIS5_E(ptr noundef %0, ptr %1, ptr %2, ptr noundef %3, ptr nofree readonly captures(none) %4, i64 %5, ptr nofree readonly captures(none) %.0.val, i64 %6) unnamed_addr #0 {
bb.a:
  %7 = alloca [3 x %"class.v8::internal::DirectHandle.444"], align 8 ; 6 uses
  %8 = alloca %"class.v8::internal::DirectHandle", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  store ptr null, ptr %8, align 8
  %i.a = call i16 @_ZN2v88internal15GetStringOptionEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS3_INS0_6StringEEEPKcPS7_(ptr noundef %0, ptr %1, ptr %2, ptr noundef %3, ptr noundef nonnull %8) #22 ; 2 uses
  %i.b = trunc i16 %i.a to i1
  br i1 %i.b, label %_ZNKR2v85MaybeIbE8FromJustEv.exit, label %bb.g

_ZNKR2v85MaybeIbE8FromJustEv.exit:                ; preds = %bb.a
  %i.c = and i16 %i.a, 256
  %.not15 = icmp eq i16 %i.c, 0
  br i1 %.not15, label %bb.c, label %.preheader

.preheader:                                       ; preds = %_ZNKR2v85MaybeIbE8FromJustEv.exit
  %.not18.not = icmp eq i64 %5, 0
  br i1 %.not18.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.b
  %.02619 = phi i64 [ %i.j, %bb.b ], [ 0, %.preheader ] ; 3 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %8, align 8
  %i.d = load i64, ptr %.sroa.0.0.copyload.i, align 8
  %i.e = add i64 %i.d, -1
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %.02619 ; 2 uses
  %.sroa.09.0.copyload = load i64, ptr %i.g, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8
  %i.h = call noundef zeroext i1 @_ZNK2v88internal6String9IsEqualToILNS1_12EqualityTypeE0EcEEbNS_4base6VectorIKT0_EEPNS0_7IsolateE(ptr noundef nonnull align 4 dereferenceable(16) %i.f, ptr %.sroa.2.0.copyload, i64 %.sroa.09.0.copyload, ptr noundef %0)
  br i1 %i.h, label %.thread, label %bb.b

.thread:                                          ; preds = %.lr.ph
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %.0.val, i64 %.02619
  %.val28 = load i32, ptr %i.i, align 4
  %.sroa.21.0.insert.ext.i = zext i32 %.val28 to i64
  %.sroa.21.0.insert.shift.i = shl nuw i64 %.sroa.21.0.insert.ext.i, 32
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.21.0.insert.shift.i, 1
  br label %bb.g

bb.b:                                             ; preds = %.lr.ph
  %i.j = add nuw i64 %.02619, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.j, %5
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !63

bb.c:                                             ; preds = %_ZNKR2v85MaybeIbE8FromJustEv.exit
  %i.k = and i64 %6, 4294967296
  %.not16 = icmp eq i64 %i.k, 0
  br i1 %.not16, label %.loopexit, label %_ZNRSt8optionalIN2v88internal12_GLOBAL__N_18NotationEE5valueEv.exit

_ZNRSt8optionalIN2v88internal12_GLOBAL__N_18NotationEE5valueEv.exit: ; preds = %bb.c
  %.sroa.21.0.insert.ext.i30 = shl i64 %6, 32
  %.sroa.0.0.insert.insert.i32 = or disjoint i64 %.sroa.21.0.insert.ext.i30, 1
  br label %bb.g

.loopexit:                                        ; preds = %bb.b, %.preheader, %bb.c
  %i.l = load ptr, ptr %8, align 8
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.loopexit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 7696
  %i.o = ptrtoint ptr %i.n to i64
  store i64 %i.o, ptr %8, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.loopexit
  %i.p = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #26
  %i.q = call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %3, i64 %i.p, i8 noundef zeroext 0) #22 ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.f, label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit, !prof !13

bb.f:                                             ; preds = %bb.e
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.116) #23
  unreachable

_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit: ; preds = %bb.e
  %.sroa.03.0.copyload = load ptr, ptr %8, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  store ptr %.sroa.03.0.copyload, ptr %7, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.q, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %2, ptr %i.t, align 8
  %i.u = call ptr @_ZN2v88internal7Factory13NewRangeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef 276, ptr nonnull %7, i64 3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.v = load i64, ptr %i.u, align 8
  %i.w = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %0, i64 %i.v, ptr noundef null) #22 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %.thread, %bb.a, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit, %_ZNRSt8optionalIN2v88internal12_GLOBAL__N_18NotationEE5valueEv.exit
  %.sroa.025.1 = phi i64 [ %.sroa.0.0.insert.insert.i32, %_ZNRSt8optionalIN2v88internal12_GLOBAL__N_18NotationEE5valueEv.exit ], [ 0, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit ], [ %.sroa.0.0.insert.insert.i, %.thread ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  ret i64 %.sroa.025.1
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef i32 @_ZN2v88internal12_GLOBAL__N_114CurrencyDigitsERKN6icu_7813UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i32 0, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i16, ptr %i.b, align 8              ; 2 uses
  %i.d = and i16 %i.c, 17
  %.not.i = icmp eq i16 %i.d, 0
  br i1 %.not.i, label %bb.b, label %_ZNK6icu_7813UnicodeString9getBufferEv.exit

bb.b:                                             ; preds = %bb.a
  %i.e = and i16 %i.c, 2
  %.not2.i = icmp eq i16 %i.e, 0
  br i1 %.not2.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 10
  br label %_ZNK6icu_7813UnicodeString9getBufferEv.exit

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8
  br label %_ZNK6icu_7813UnicodeString9getBufferEv.exit

_ZNK6icu_7813UnicodeString9getBufferEv.exit:      ; preds = %bb.a, %bb.c, %bb.d
  %.0.i = phi ptr [ %i.h, %bb.d ], [ %i.f, %bb.c ], [ null, %bb.a ]
  %i.i = call i32 @ucurr_getDefaultFractionDigits_78(ptr noundef %.0.i, ptr noundef nonnull %i.a) #22
  %i.j = load i32, ptr %i.a, align 4
  %i.k = icmp sgt i32 %i.j, 0
  %i.l = select i1 %i.k, i32 2, i32 %i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret i32 %i.l
}

declare void @_ZN2v88internal4Intl27SetNumberFormatDigitOptionsEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEEiibPKc(ptr dead_on_unwind writable sret(%"class.v8::Maybe.574") align 4, ptr noundef, ptr, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc range(i64 0, -4294967294) i64 @_ZN2v88internalL15GetStringOptionINS0_12_GLOBAL__N_114CompactDisplayEEENS_5MaybeIT_EEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS9_INS0_6StringEEEPKcSt4spanIKSt17basic_string_viewIcSt11char_traitsIcEELm18446744073709551615EESG_IKS5_Lm18446744073709551615EESt8optionalIS5_E(ptr noundef %0, ptr %1, ptr %2, ptr noundef %3, ptr nofree readonly captures(none) %4, i64 %5, ptr nofree readonly captures(none) %.0.val, i64 %6) unnamed_addr #0 {
bb.a:
  %7 = alloca [3 x %"class.v8::internal::DirectHandle.444"], align 8 ; 6 uses
  %8 = alloca %"class.v8::internal::DirectHandle", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  store ptr null, ptr %8, align 8
  %i.a = call i16 @_ZN2v88internal15GetStringOptionEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS3_INS0_6StringEEEPKcPS7_(ptr noundef %0, ptr %1, ptr %2, ptr noundef %3, ptr noundef nonnull %8) #22 ; 2 uses
  %i.b = trunc i16 %i.a to i1
  br i1 %i.b, label %_ZNKR2v85MaybeIbE8FromJustEv.exit, label %bb.g

_ZNKR2v85MaybeIbE8FromJustEv.exit:                ; preds = %bb.a
  %i.c = and i16 %i.a, 256
  %.not15 = icmp eq i16 %i.c, 0
  br i1 %.not15, label %bb.c, label %.preheader

.preheader:                                       ; preds = %_ZNKR2v85MaybeIbE8FromJustEv.exit
  %.not18.not = icmp eq i64 %5, 0
  br i1 %.not18.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.b
  %.02619 = phi i64 [ %i.j, %bb.b ], [ 0, %.preheader ] ; 3 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %8, align 8
  %i.d = load i64, ptr %.sroa.0.0.copyload.i, align 8
  %i.e = add i64 %i.d, -1
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %.02619 ; 2 uses
  %.sroa.09.0.copyload = load i64, ptr %i.g, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8
  %i.h = call noundef zeroext i1 @_ZNK2v88internal6String9IsEqualToILNS1_12EqualityTypeE0EcEEbNS_4base6VectorIKT0_EEPNS0_7IsolateE(ptr noundef nonnull align 4 dereferenceable(16) %i.f, ptr %.sroa.2.0.copyload, i64 %.sroa.09.0.copyload, ptr noundef %0)
  br i1 %i.h, label %.thread, label %bb.b

.thread:                                          ; preds = %.lr.ph
end_hunk_2
begin_hunk_3_@_ZNSt12__shared_ptrIN6icu_786number24LocalizedNumberFormatterELN9__gnu_cxx12_Lock_policyE2EED2Ev:bb.a

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !13

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZN2v88internal7Factory28NewFastOrSlowJSObjectFromMapENS0_12DirectHandleINS0_3MapEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8
  %i.b = add i64 %i.a, 15
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load atomic volatile i32, ptr %i.c monotonic, align 4
  %i.e = and i32 %i.d, 2097152
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @_ZN2v88internal7Factory22NewSlowJSObjectFromMapENS0_12DirectHandleINS0_3MapEEEiNS0_14AllocationTypeENS2_INS0_14AllocationSiteEEENS0_15NewJSObjectTypeE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %1, i32 noundef 2, i8 noundef zeroext 0, ptr null, i8 noundef zeroext 0) #22
  br label %_ZN2v88internal7Factory28NewFastOrSlowJSObjectFromMapENS0_12DirectHandleINS0_3MapEEEiNS0_14AllocationTypeENS2_INS0_14AllocationSiteEEENS0_15NewJSObjectTypeE.exit

bb.c:                                             ; preds = %bb.a
  %i.g = tail call ptr @_ZN2v88internal7Factory18NewJSObjectFromMapENS0_12DirectHandleINS0_3MapEEENS0_14AllocationTypeENS2_INS0_14AllocationSiteEEENS0_15NewJSObjectTypeE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %1, i8 noundef zeroext 0, ptr null, i8 noundef zeroext 0) #22
  br label %_ZN2v88internal7Factory28NewFastOrSlowJSObjectFromMapENS0_12DirectHandleINS0_3MapEEEiNS0_14AllocationTypeENS2_INS0_14AllocationSiteEEENS0_15NewJSObjectTypeE.exit

_ZN2v88internal7Factory28NewFastOrSlowJSObjectFromMapENS0_12DirectHandleINS0_3MapEEEiNS0_14AllocationTypeENS2_INS0_14AllocationSiteEEENS0_15NewJSObjectTypeE.exit: ; preds = %bb.b, %bb.c
  %.sroa.09.0.i = phi ptr [ %i.f, %bb.b ], [ %i.g, %bb.c ]
  ret ptr %.sroa.09.0.i
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal29TorqueGeneratedJSNumberFormatINS0_14JSNumberFormatENS0_8JSObjectEE10set_localeENS0_6TaggedINS0_6StringEEENS0_16WriteBarrierModeE(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 %1, i32 noundef %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %.sroa.04.0.copyload = load i64, ptr %0, align 8
  %i.a = add i64 %.sroa.04.0.copyload, 23
  %i.b = inttoptr i64 %i.a to ptr
  store atomic volatile i64 %1, ptr %i.b monotonic, align 8
  %.sroa.02.0.copyload = load i64, ptr %0, align 8 ; 4 uses
  %i.c = add i64 %.sroa.02.0.copyload, 23         ; 2 uses
  %i.d = icmp sgt i32 %2, 1
  %i.e = trunc i64 %1 to i1
  %or.cond.i = select i1 %i.d, i1 %i.e, i1 false
  br i1 %or.cond.i, label %bb.b, label %_ZN2v88internal12WriteBarrier8ForValueINS0_6StringEEEvNS0_6TaggedINS0_10HeapObjectEEENS0_19FullMaybeObjectSlotENS4_IT_EENS0_16WriteBarrierModeE.exit

bb.b:                                             ; preds = %bb.a
  %i.f = and i64 %.sroa.02.0.copyload, -262144
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load i64, ptr %i.g, align 262144         ; 2 uses
  %i.i = and i64 %i.h, 32
  %.not.i.i = icmp eq i64 %i.i, 0
  %i.j = and i64 %i.h, 25
  %.not38.i.i = icmp eq i64 %i.j, 0
  br i1 %.not38.i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.k = and i64 %1, -262144
  %i.l = inttoptr i64 %i.k to ptr
  %.sroa.0.0.copyload.i28.i.i = load i64, ptr %i.l, align 262144
  %i.m = and i64 %.sroa.0.0.copyload.i28.i.i, 25
  %.not39.i.i = icmp eq i64 %i.m, 0
  br i1 %.not39.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %.sroa.02.0.copyload, i64 noundef %i.c, i64 %1) #22
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  br i1 %.not.i.i, label %_ZN2v88internal12WriteBarrier8ForValueINS0_6StringEEEvNS0_6TaggedINS0_10HeapObjectEEENS0_19FullMaybeObjectSlotENS4_IT_EENS0_16WriteBarrierModeE.exit, label %bb.f, !prof !15

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %.sroa.02.0.copyload, i64 %i.c, i64 %1) #22
  br label %_ZN2v88internal12WriteBarrier8ForValueINS0_6StringEEEvNS0_6TaggedINS0_10HeapObjectEEENS0_19FullMaybeObjectSlotENS4_IT_EENS0_16WriteBarrierModeE.exit

_ZN2v88internal12WriteBarrier8ForValueINS0_6StringEEEvNS0_6TaggedINS0_10HeapObjectEEENS0_19FullMaybeObjectSlotENS4_IT_EENS0_16WriteBarrierModeE.exit: ; preds = %bb.a, %bb.e, %bb.f
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal14JSNumberFormat24set_icu_number_formatterENS0_6TaggedINS0_7ManagedIN6icu_786number24LocalizedNumberFormatterEEEEENS0_16WriteBarrierModeE(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 %1, i32 noundef %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %.sroa.04.0.copyload = load i64, ptr %0, align 8
  %i.a = add i64 %.sroa.04.0.copyload, 31
  %i.b = inttoptr i64 %i.a to ptr
  store atomic volatile i64 %1, ptr %i.b monotonic, align 8
  %.sroa.02.0.copyload = load i64, ptr %0, align 8 ; 4 uses
  %i.c = add i64 %.sroa.02.0.copyload, 31         ; 2 uses
  %i.d = icmp sgt i32 %2, 1
  %i.e = trunc i64 %1 to i1
  %or.cond.i = select i1 %i.d, i1 %i.e, i1 false
  br i1 %or.cond.i, label %bb.b, label %_ZN2v88internal12WriteBarrier8ForValueINS0_7ManagedIN6icu_786number24LocalizedNumberFormatterEEEEEvNS0_6TaggedINS0_10HeapObjectEEENS0_19FullMaybeObjectSlotENS8_IT_EENS0_16WriteBarrierModeE.exit

bb.b:                                             ; preds = %bb.a
  %i.f = and i64 %.sroa.02.0.copyload, -262144
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load i64, ptr %i.g, align 262144         ; 2 uses
  %i.i = and i64 %i.h, 32
  %.not.i.i = icmp eq i64 %i.i, 0
  %i.j = and i64 %i.h, 25
  %.not38.i.i = icmp eq i64 %i.j, 0
  br i1 %.not38.i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.k = and i64 %1, -262144
  %i.l = inttoptr i64 %i.k to ptr
  %.sroa.0.0.copyload.i28.i.i = load i64, ptr %i.l, align 262144
  %i.m = and i64 %.sroa.0.0.copyload.i28.i.i, 25
  %.not39.i.i = icmp eq i64 %i.m, 0
  br i1 %.not39.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %.sroa.02.0.copyload, i64 noundef %i.c, i64 %1) #22
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  br i1 %.not.i.i, label %_ZN2v88internal12WriteBarrier8ForValueINS0_7ManagedIN6icu_786number24LocalizedNumberFormatterEEEEEvNS0_6TaggedINS0_10HeapObjectEEENS0_19FullMaybeObjectSlotENS8_IT_EENS0_16WriteBarrierModeE.exit, label %bb.f, !prof !15

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %.sroa.02.0.copyload, i64 %i.c, i64 %1) #22
  br label %_ZN2v88internal12WriteBarrier8ForValueINS0_7ManagedIN6icu_786number24LocalizedNumberFormatterEEEEEvNS0_6TaggedINS0_10HeapObjectEEENS0_19FullMaybeObjectSlotENS8_IT_EENS0_16WriteBarrierModeE.exit

_ZN2v88internal12WriteBarrier8ForValueINS0_7ManagedIN6icu_786number24LocalizedNumberFormatterEEEEEvNS0_6TaggedINS0_10HeapObjectEEENS0_19FullMaybeObjectSlotENS8_IT_EENS0_16WriteBarrierModeE.exit: ; preds = %bb.a, %bb.e, %bb.f
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal29TorqueGeneratedJSNumberFormatINS0_14JSNumberFormatENS0_8JSObjectEE16set_bound_formatENS0_6TaggedINS0_5UnionIJNS0_10JSFunctionENS0_9UndefinedEEEEEENS0_16WriteBarrierModeE(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 %1, i32 noundef %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %.sroa.04.0.copyload = load i64, ptr %0, align 8
  %i.a = add i64 %.sroa.04.0.copyload, 39
  %i.b = inttoptr i64 %i.a to ptr
  store atomic volatile i64 %1, ptr %i.b monotonic, align 8
  %.sroa.02.0.copyload = load i64, ptr %0, align 8 ; 4 uses
  %i.c = add i64 %.sroa.02.0.copyload, 39         ; 2 uses
  %i.d = icmp sgt i32 %2, 1
  %i.e = trunc i64 %1 to i1
  %or.cond.i = select i1 %i.d, i1 %i.e, i1 false
  br i1 %or.cond.i, label %bb.b, label %_ZN2v88internal12WriteBarrier8ForValueINS0_5UnionIJNS0_10JSFunctionENS0_9UndefinedEEEEEEvNS0_6TaggedINS0_10HeapObjectEEENS0_19FullMaybeObjectSlotENS7_IT_EENS0_16WriteBarrierModeE.exit

bb.b:                                             ; preds = %bb.a
  %i.f = and i64 %.sroa.02.0.copyload, -262144
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load i64, ptr %i.g, align 262144         ; 2 uses
  %i.i = and i64 %i.h, 32
  %.not.i.i = icmp eq i64 %i.i, 0
  %i.j = and i64 %i.h, 25
  %.not38.i.i = icmp eq i64 %i.j, 0
  br i1 %.not38.i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.k = and i64 %1, -262144
  %i.l = inttoptr i64 %i.k to ptr
  %.sroa.0.0.copyload.i28.i.i = load i64, ptr %i.l, align 262144
  %i.m = and i64 %.sroa.0.0.copyload.i28.i.i, 25
  %.not39.i.i = icmp eq i64 %i.m, 0
  br i1 %.not39.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %.sroa.02.0.copyload, i64 noundef %i.c, i64 %1) #22
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  br i1 %.not.i.i, label %_ZN2v88internal12WriteBarrier8ForValueINS0_5UnionIJNS0_10JSFunctionENS0_9UndefinedEEEEEEvNS0_6TaggedINS0_10HeapObjectEEENS0_19FullMaybeObjectSlotENS7_IT_EENS0_16WriteBarrierModeE.exit, label %bb.f, !prof !15

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %.sroa.02.0.copyload, i64 %i.c, i64 %1) #22
  br label %_ZN2v88internal12WriteBarrier8ForValueINS0_5UnionIJNS0_10JSFunctionENS0_9UndefinedEEEEEEvNS0_6TaggedINS0_10HeapObjectEEENS0_19FullMaybeObjectSlotENS7_IT_EENS0_16WriteBarrierModeE.exit

_ZN2v88internal12WriteBarrier8ForValueINS0_5UnionIJNS0_10JSFunctionENS0_9UndefinedEEEEEEvNS0_6TaggedINS0_10HeapObjectEEENS0_19FullMaybeObjectSlotENS7_IT_EENS0_16WriteBarrierModeE.exit: ; preds = %bb.a, %bb.e, %bb.f
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6icu_786number24LocalizedNumberFormatterD1Ev(ptr noundef nonnull align 8 dereferenceable(312)) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN6icu_786LocaleD1Ev(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZNK2v88internal21IntlMathematicalValue5IsNaNEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = trunc i64 %i.c to i1
  br i1 %i.d, label %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit, label %_ZN2v88internal5IsNaNENS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.a
  %i.e = add nsw i64 %i.c, -1
  %i.f = inttoptr i64 %i.e to ptr                 ; 2 uses
  %i.g = load atomic volatile i64, ptr %i.f monotonic, align 8
  %i.h = add i64 %i.g, 11
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = load atomic volatile i16, ptr %i.i monotonic, align 2
  %i.k = icmp eq i16 %i.j, 130
  br i1 %i.k, label %bb.b, label %_ZN2v88internal5IsNaNENS0_6TaggedINS0_6ObjectEEE.exit

bb.b:                                             ; preds = %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.0.copyload.i.i.i.i = load double, ptr %i.l, align 8
  %i.m = fcmp uno double %.0.copyload.i.i.i.i, 0.000000e+00
  br label %_ZN2v88internal5IsNaNENS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal5IsNaNENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.a, %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit, %bb.b
  %i.n = phi i1 [ false, %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit ], [ %i.m, %bb.b ], [ false, %bb.a ]
  ret i1 %i.n
}

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZNK2v88internal21IntlMathematicalValue8ToStringEPNS0_7IsolateE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = and i64 %i.c, 1
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.a
  %i.f = add nsw i64 %i.c, -1
  %i.g = inttoptr i64 %i.f to ptr                 ; 2 uses
  %i.h = load atomic volatile i64, ptr %i.g monotonic, align 8
  %i.i = add i64 %i.h, 11
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = load atomic volatile i16, ptr %i.j monotonic, align 2
  %i.l = icmp eq i16 %i.k, 130
  br i1 %i.l, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread, label %_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %bb.a, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit
  %i.m = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE14NumberToStringENS0_12DirectHandleINS0_6ObjectEEENS0_15NumberCacheModeE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr nonnull %i.b, i32 noundef 2) #22
  br label %_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit
  %i.n = load atomic volatile i64, ptr %i.g monotonic, align 8
  %i.o = add i64 %i.n, 11
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load atomic volatile i16, ptr %i.p monotonic, align 2
  %i.r = icmp eq i16 %i.q, 129
  br i1 %i.r, label %bb.b, label %_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit.thread

bb.b:                                             ; preds = %_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit
  %i.s = tail call ptr @_ZN2v88internal6BigInt8ToStringEPNS0_7IsolateENS0_12DirectHandleIS1_EEiNS0_11ShouldThrowE(ptr noundef %1, ptr nonnull %i.b, i32 noundef 10, i32 noundef 1) #22
  br label %_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit, %bb.b, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread
  %.sroa.015.0 = phi ptr [ %i.m, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread ], [ %i.s, %bb.b ], [ %i.b, %_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit ]
  ret ptr %.sroa.015.0
}

declare ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE14NumberToStringENS0_12DirectHandleINS0_6ObjectEEENS0_15NumberCacheModeE(ptr noundef nonnull align 1 dereferenceable(1), ptr, i32 noundef) local_unnamed_addr #2

declare ptr @_ZN2v88internal6BigInt8ToStringEPNS0_7IsolateENS0_12DirectHandleIS1_EEiNS0_11ShouldThrowE(ptr noundef, ptr, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal21IntlMathematicalValue13FormatNumericEPNS0_7IsolateERKN6icu_786number24LocalizedNumberFormatterERKS1_(ptr dead_on_unwind noalias writable sret(%"class.v8::Maybe.615") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(312) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.v8::internal::SharedStringAccessGuardIfNeeded", align 8 ; 6 uses
  %5 = alloca %"class.v8::internal::PerThreadAssertScopeEmpty", align 1 ; 4 uses
  %6 = alloca %"class.v8::internal::String::FlatContent", align 8 ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %8 = alloca %"class.icu_78::number::FormattedNumber", align 8 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 5 uses
  %i.d = load i64, ptr %i.c, align 8              ; 4 uses
  %i.e = trunc i64 %i.d to i1                     ; 2 uses
  br i1 %i.e, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -1
  %i.g = inttoptr i64 %i.f to ptr                 ; 3 uses
  %i.h = load atomic volatile i64, ptr %i.g monotonic, align 8
  %i.i = add i64 %i.h, 11
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = load atomic volatile i16, ptr %i.j monotonic, align 2
  %i.l = icmp ult i16 %i.k, 128
  br i1 %i.l, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit
  %i.m = load atomic volatile i64, ptr %i.g monotonic, align 8
  %i.n = add i64 %i.m, 11
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = load atomic volatile i16, ptr %i.o monotonic, align 2
  %i.q = icmp eq i16 %i.p, 130
  br i1 %i.q, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread.i, label %_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit.i

_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread.i: ; preds = %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i
  %i.r = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE14NumberToStringENS0_12DirectHandleINS0_6ObjectEEENS0_15NumberCacheModeE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr nonnull %i.c, i32 noundef 2) #22
  br label %_ZNK2v88internal21IntlMathematicalValue8ToStringEPNS0_7IsolateE.exit

_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i
  %i.s = load atomic volatile i64, ptr %i.g monotonic, align 8
  %i.t = add i64 %i.s, 11
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = load atomic volatile i16, ptr %i.u monotonic, align 2
  %i.w = icmp eq i16 %i.v, 129
  br i1 %i.w, label %bb.b, label %_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.thread65

bb.b:                                             ; preds = %_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit.i
  %i.x = tail call ptr @_ZN2v88internal6BigInt8ToStringEPNS0_7IsolateENS0_12DirectHandleIS1_EEiNS0_11ShouldThrowE(ptr noundef %1, ptr nonnull %i.c, i32 noundef 10, i32 noundef 1) #22
  br label %_ZNK2v88internal21IntlMathematicalValue8ToStringEPNS0_7IsolateE.exit

_ZNK2v88internal21IntlMathematicalValue8ToStringEPNS0_7IsolateE.exit: ; preds = %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread.i, %bb.b
  %.sroa.015.0.i = phi ptr [ %i.r, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread.i ], [ %i.x, %bb.b ] ; 2 uses
  %i.y = icmp eq ptr %.sroa.015.0.i, null
  br i1 %i.y, label %bb.c, label %_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.thread65

bb.c:                                             ; preds = %_ZNK2v88internal21IntlMathematicalValue8ToStringEPNS0_7IsolateE.exit
  store i8 0, ptr %0, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6icu_786number15FormattedNumberE, i64 16), ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 27, ptr %i.ab, align 8
  br label %bb.af

_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.thread65: ; preds = %_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit.i, %_ZNK2v88internal21IntlMathematicalValue8ToStringEPNS0_7IsolateE.exit
  %.sroa.015.0.i6268 = phi ptr [ %.sroa.015.0.i, %_ZNK2v88internal21IntlMathematicalValue8ToStringEPNS0_7IsolateE.exit ], [ %i.c, %_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i32 0, ptr %i.a, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  %i.ac = load i64, ptr %.sroa.015.0.i6268, align 8, !noalias !91 ; 2 uses
  %i.ad = add i64 %i.ac, -1
  %i.ae = inttoptr i64 %i.ad to ptr               ; 3 uses
  %i.af = load atomic volatile i64, ptr %i.ae acquire, align 8, !noalias !91
  %i.ag = add i64 %i.af, 11
  %i.ah = inttoptr i64 %i.ag to ptr
  %i.ai = load atomic volatile i16, ptr %i.ah monotonic, align 2, !noalias !91 ; 3 uses
  %i.aj = and i16 %i.ai, -127
  %.not.i = icmp eq i16 %i.aj, 1
  br i1 %.not.i, label %bb.d, label %_ZN2v88internal6String7FlattenIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit.i, !prof !13

bb.d:                                             ; preds = %_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.thread65
  %i.ak = and i16 %i.ai, 7
  %i.al = icmp eq i16 %i.ak, 1
  br i1 %i.al, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.am = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.an = load i64, ptr %i.am, align 8, !noalias !91
  %i.ao = add i64 %i.an, -1
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 12
  %i.ar = load i32, ptr %i.aq, align 4, !noalias !91
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %.thread.i, label %bb.f

.thread.i:                                        ; preds = %bb.e
  %i.at = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.au = load i64, ptr %i.at, align 8, !noalias !91 ; 2 uses
  %i.av = add i64 %i.au, -1
  %i.aw = inttoptr i64 %i.av to ptr
  %i.ax = load atomic volatile i64, ptr %i.aw acquire, align 8, !noalias !91
  %i.ay = add i64 %i.ax, 11
  %i.az = inttoptr i64 %i.ay to ptr
  %i.ba = load atomic volatile i16, ptr %i.az monotonic, align 2, !noalias !91
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bb = tail call ptr @_ZN2v88internal6String11SlowFlattenINS0_6HandleEQsr3stdE16is_convertible_vIT_IS1_ENS0_12DirectHandleIS1_EEEEES5_PNS0_7IsolateES4_INS0_10ConsStringEENS0_14AllocationTypeE(ptr noundef %1, ptr nonnull %.sroa.015.0.i6268, i8 noundef zeroext 0), !noalias !91
  br label %_ZN2v88internal6String7FlattenIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit.i

bb.g:                                             ; preds = %.thread.i, %bb.d
  %.sroa.024.0.i = phi i16 [ %i.ba, %.thread.i ], [ %i.ai, %bb.d ]
  %.sroa.012.1.i.i = phi i64 [ %i.au, %.thread.i ], [ %i.ac, %bb.d ] ; 2 uses
  %i.bc = and i16 %.sroa.024.0.i, -121
  %i.bd = icmp eq i16 %i.bc, 5
  br i1 %i.bd, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.be = add i64 %.sroa.012.1.i.i, -1
  %i.bf = inttoptr i64 %i.be to ptr
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bh = load i64, ptr %i.bg, align 8, !noalias !91
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sroa.012.2.i.i = phi i64 [ %i.bh, %bb.h ], [ %.sroa.012.1.i.i, %bb.g ]
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 560 ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN2v88internal21FlattenRegionsToPartsEPSt6vectorINS0_16NumberFormatSpanESaIS2_EE:bb.a
  br i1 %.not.i.i53, label %_ZNSt6vectorIN2v88internal16NumberFormatSpanESaIS2_EE2atEm.exit54, label %bb.as

bb.as:                                            ; preds = %_ZNSt6vectorIN2v88internal16NumberFormatSpanESaIS2_EE9push_backEOS2_.exit
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.119, i64 noundef %i.ez, i64 noundef %i.ff) #23
  unreachable

_ZNSt6vectorIN2v88internal16NumberFormatSpanESaIS2_EE2atEm.exit54: ; preds = %_ZNSt6vectorIN2v88internal16NumberFormatSpanESaIS2_EE9push_backEOS2_.exit
  %i.fg = getelementptr inbounds i8, ptr %.sroa.8.1185, i64 -8 ; 2 uses
  %i.fh = getelementptr inbounds nuw [12 x i8], ptr %i.fb, i64 %i.ez ; 2 uses
  %.sroa.0.0.copyload18 = load i32, ptr %i.fh, align 4 ; 2 uses
  %.sroa.724.0..sroa_idx25 = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %.sroa.724.0.copyload26 = load i32, ptr %.sroa.724.0..sroa_idx25, align 4 ; 3 uses
  %i.fi = icmp slt i32 %.sroa.724.0.copyload26, %.0
  br i1 %i.fi, label %.lr.ph, label %._crit_edge, !llvm.loop !236

._crit_edge:                                      ; preds = %_ZNSt6vectorIN2v88internal16NumberFormatSpanESaIS2_EE2atEm.exit54, %.preheader
  %i.fj = phi ptr [ %.promoted, %.preheader ], [ %i.ex, %_ZNSt6vectorIN2v88internal16NumberFormatSpanESaIS2_EE2atEm.exit54 ] ; 4 uses
  %.sroa.8.1.lcssa = phi ptr [ %.sroa.8.0193, %.preheader ], [ %i.fg, %_ZNSt6vectorIN2v88internal16NumberFormatSpanESaIS2_EE2atEm.exit54 ] ; 3 uses
  %.sroa.724.1.lcssa = phi i32 [ %.sroa.724.0195, %.preheader ], [ %.sroa.724.0.copyload26, %_ZNSt6vectorIN2v88internal16NumberFormatSpanESaIS2_EE2atEm.exit54 ] ; 3 uses
  %.sroa.0.1.lcssa = phi i32 [ %.sroa.0.0196, %.preheader ], [ %.sroa.0.0.copyload18, %_ZNSt6vectorIN2v88internal16NumberFormatSpanESaIS2_EE2atEm.exit54 ] ; 5 uses
  %.1.lcssa = phi i32 [ %.043198, %.preheader ], [ %.2, %_ZNSt6vectorIN2v88internal16NumberFormatSpanESaIS2_EE2atEm.exit54 ] ; 4 uses
  %i.fk = icmp slt i32 %.1.lcssa, %.0
  br i1 %i.fk, label %bb.at, label %_ZNSt6vectorIN2v88internal16NumberFormatSpanESaIS2_EE9push_backEOS2_.exit62

bb.at:                                            ; preds = %._crit_edge
  %i.fl = load ptr, ptr %i.dp, align 8            ; 6 uses
  %i.fm = load ptr, ptr %i.dq, align 8
  %.not.i.i55 = icmp eq ptr %i.fl, %i.fm
  br i1 %.not.i.i55, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  store i32 %.sroa.0.1.lcssa, ptr %i.fl, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fl, i64 4
  store i32 %.1.lcssa, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  store i32 %.0, ptr %.sroa.6.0..sroa_idx, align 4
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fl, i64 12
  store ptr %i.fn, ptr %i.dp, align 8
  br label %_ZNSt6vectorIN2v88internal16NumberFormatSpanESaIS2_EE9push_backEOS2_.exit62

bb.av:                                            ; preds = %bb.at
  %i.fo = ptrtoint ptr %i.fl to i64
  %i.fp = ptrtoint ptr %i.fj to i64
  %i.fq = sub i64 %i.fo, %i.fp                    ; 6 uses
  %i.fr = icmp eq i64 %i.fq, 9223372036854775800
  br i1 %i.fr, label %bb.aw, label %_ZNKSt6vectorIN2v88internal16NumberFormatSpanESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i56

bb.aw:                                            ; preds = %bb.av
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.118) #23
  unreachable

_ZNKSt6vectorIN2v88internal16NumberFormatSpanESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i56: ; preds = %bb.av
  %i.fs = sdiv exact i64 %i.fq, 12                ; 3 uses
  %.sroa.speculated.i.i.i.i57 = tail call i64 @llvm.umax.i64(i64 %i.fs, i64 1)
  %i.ft = add nsw i64 %.sroa.speculated.i.i.i.i57, %i.fs ; 2 uses
  %i.fu = icmp ult i64 %i.ft, %i.fs
  %i.fv = tail call i64 @llvm.umin.i64(i64 %i.ft, i64 768614336404564650)
  %i.fw = select i1 %i.fu, i64 768614336404564650, i64 %i.fv ; 3 uses
  %.not.i.i.i.i58 = icmp ne i64 %i.fw, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i58)
  %i.fx = mul nuw nsw i64 %i.fw, 12
  %i.fy = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fx) #24 ; 4 uses
  %i.fz = getelementptr inbounds i8, ptr %i.fy, i64 %i.fq ; 4 uses
  store i32 %.sroa.0.1.lcssa, ptr %i.fz, align 4
  %.sroa.5.0..sroa_idx90 = getelementptr inbounds nuw i8, ptr %i.fz, i64 4
  store i32 %.1.lcssa, ptr %.sroa.5.0..sroa_idx90, align 4
  %.sroa.6.0..sroa_idx92 = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  store i32 %.0, ptr %.sroa.6.0..sroa_idx92, align 4
  %i.ga = icmp sgt i64 %i.fq, 0
  br i1 %i.ga, label %bb.ax, label %_ZNSt6vectorIN2v88internal16NumberFormatSpanESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i59

bb.ax:                                            ; preds = %_ZNKSt6vectorIN2v88internal16NumberFormatSpanESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i56
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.fy, ptr align 4 %i.fj, i64 %i.fq, i1 false)
  br label %_ZNSt6vectorIN2v88internal16NumberFormatSpanESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i59

_ZNSt6vectorIN2v88internal16NumberFormatSpanESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i59: ; preds = %bb.ax, %_ZNKSt6vectorIN2v88internal16NumberFormatSpanESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i56
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fz, i64 12
  %.not.i17.i.i.i60 = icmp eq ptr %i.fj, null
  br i1 %.not.i17.i.i.i60, label %_ZNSt6vectorIN2v88internal16NumberFormatSpanESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i61, label %bb.ay

bb.ay:                                            ; preds = %_ZNSt6vectorIN2v88internal16NumberFormatSpanESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i59
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fj, i64 noundef %i.fq) #25
  br label %_ZNSt6vectorIN2v88internal16NumberFormatSpanESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i61

_ZNSt6vectorIN2v88internal16NumberFormatSpanESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i61: ; preds = %bb.ay, %_ZNSt6vectorIN2v88internal16NumberFormatSpanESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i59
  store ptr %i.fy, ptr %0, align 8
  store ptr %i.gb, ptr %i.dp, align 8
  %i.gc = getelementptr inbounds nuw [12 x i8], ptr %i.fy, i64 %i.fw
  store ptr %i.gc, ptr %i.dq, align 8
  br label %_ZNSt6vectorIN2v88internal16NumberFormatSpanESaIS2_EE9push_backEOS2_.exit62

_ZNSt6vectorIN2v88internal16NumberFormatSpanESaIS2_EE9push_backEOS2_.exit62: ; preds = %_ZNSt6vectorIN2v88internal16NumberFormatSpanESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i61, %bb.au, %._crit_edge, %bb.al
  %.sroa.8.2 = phi ptr [ %.sroa.8.0193, %bb.al ], [ %.sroa.8.1.lcssa, %._crit_edge ], [ %.sroa.8.1.lcssa, %bb.au ], [ %.sroa.8.1.lcssa, %_ZNSt6vectorIN2v88internal16NumberFormatSpanESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i61 ] ; 4 uses
  %.sroa.724.2 = phi i32 [ %.sroa.724.0195, %bb.al ], [ %.sroa.724.1.lcssa, %._crit_edge ], [ %.sroa.724.1.lcssa, %bb.au ], [ %.sroa.724.1.lcssa, %_ZNSt6vectorIN2v88internal16NumberFormatSpanESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i61 ]
  %.sroa.0.2 = phi i32 [ %.sroa.0.0196, %bb.al ], [ %.sroa.0.1.lcssa, %._crit_edge ], [ %.sroa.0.1.lcssa, %bb.au ], [ %.sroa.0.1.lcssa, %_ZNSt6vectorIN2v88internal16NumberFormatSpanESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i61 ]
  %.3 = phi i32 [ %.043198, %bb.al ], [ %.1.lcssa, %._crit_edge ], [ %.0, %bb.au ], [ %.0, %_ZNSt6vectorIN2v88internal16NumberFormatSpanESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i61 ] ; 2 uses
  %i.gd = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.ge = load ptr, ptr %1, align 8               ; 2 uses
  %i.gf = ptrtoint ptr %i.gd to i64
  %i.gg = ptrtoint ptr %i.ge to i64
  %i.gh = sub i64 %i.gf, %i.gg
  %i.gi = sdiv exact i64 %i.gh, 12
  %i.gj = icmp ult i64 %.044197, %i.gi
  br i1 %i.gj, label %bb.az, label %bb.bf

bb.az:                                            ; preds = %_ZNSt6vectorIN2v88internal16NumberFormatSpanESaIS2_EE9push_backEOS2_.exit62
  %i.gk = add nuw i64 %.044197, 1
  %.not.i.i63 = icmp eq ptr %.sroa.8.2, %.sroa.20.0194
  br i1 %.not.i.i63, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  store i64 %.044197, ptr %.sroa.8.2, align 8
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit70

bb.bb:                                            ; preds = %bb.az
  %i.gl = ptrtoint ptr %.sroa.20.0194 to i64
  %i.gm = ptrtoint ptr %.sroa.0104.0192 to i64
  %i.gn = sub i64 %i.gl, %i.gm                    ; 6 uses
  %i.go = icmp eq i64 %i.gn, 9223372036854775800
  br i1 %i.go, label %bb.bc, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i64

bb.bc:                                            ; preds = %bb.bb
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.118) #23
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i64: ; preds = %bb.bb
  %i.gp = ashr exact i64 %i.gn, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i65 = tail call i64 @llvm.umax.i64(i64 %i.gp, i64 1)
  %i.gq = add nsw i64 %.sroa.speculated.i.i.i.i65, %i.gp ; 2 uses
  %i.gr = icmp ult i64 %i.gq, %i.gp
  %i.gs = tail call i64 @llvm.umin.i64(i64 %i.gq, i64 1152921504606846975)
  %i.gt = select i1 %i.gr, i64 1152921504606846975, i64 %i.gs ; 3 uses
  %.not.i.i.i.i66 = icmp ne i64 %i.gt, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i66)
  %i.gu = shl nuw nsw i64 %i.gt, 3
  %i.gv = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gu) #24 ; 4 uses
  %i.gw = getelementptr inbounds i8, ptr %i.gv, i64 %i.gn ; 3 uses
  store i64 %.044197, ptr %i.gw, align 8
  %i.gx = icmp sgt i64 %i.gn, 0
  br i1 %i.gx, label %bb.bd, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i69

bb.bd:                                            ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gv, ptr align 8 %.sroa.0104.0192, i64 %i.gn, i1 false)
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i69

_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i69: ; preds = %bb.bd, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i64
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0104.0192, i64 noundef %i.gn) #25
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %i.gt
  %.pre = load i64, ptr %i.gw, align 8
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit70

_ZNSt6vectorImSaImEE9push_backEOm.exit70:         ; preds = %bb.ba, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i69
  %i.gz = phi i64 [ %.pre, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i69 ], [ %.044197, %bb.ba ] ; 3 uses
  %.sroa.0104.3 = phi ptr [ %i.gv, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i69 ], [ %.sroa.0104.0192, %bb.ba ]
  %.pn = phi ptr [ %i.gw, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i69 ], [ %.sroa.8.2, %bb.ba ]
  %.sroa.20.3 = phi ptr [ %i.gy, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i69 ], [ %.sroa.20.0194, %bb.ba ]
  %i.ha = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.hb = load ptr, ptr %1, align 8               ; 3 uses
  %i.hc = ptrtoint ptr %i.ha to i64
  %i.hd = ptrtoint ptr %i.hb to i64
  %i.he = sub i64 %i.hc, %i.hd
  %i.hf = sdiv exact i64 %i.he, 12                ; 2 uses
  %.not.i.i71 = icmp ult i64 %i.gz, %i.hf
  br i1 %.not.i.i71, label %_ZNSt6vectorIN2v88internal16NumberFormatSpanESaIS2_EE2atEm.exit72, label %bb.be

bb.be:                                            ; preds = %_ZNSt6vectorImSaImEE9push_backEOm.exit70
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.119, i64 noundef %i.gz, i64 noundef %i.hf) #23
  unreachable

_ZNSt6vectorIN2v88internal16NumberFormatSpanESaIS2_EE2atEm.exit72: ; preds = %_ZNSt6vectorImSaImEE9push_backEOm.exit70
  %.sroa.8.5 = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  %i.hg = getelementptr inbounds nuw [12 x i8], ptr %i.hb, i64 %i.gz ; 2 uses
  %.sroa.0.0.copyload19 = load i32, ptr %i.hg, align 4
  %.sroa.724.0..sroa_idx27 = getelementptr inbounds nuw i8, ptr %i.hg, i64 8
  %.sroa.724.0.copyload28 = load i32, ptr %.sroa.724.0..sroa_idx27, align 4
  br label %bb.bf

bb.bf:                                            ; preds = %_ZNSt6vectorIN2v88internal16NumberFormatSpanESaIS2_EE2atEm.exit72, %_ZNSt6vectorIN2v88internal16NumberFormatSpanESaIS2_EE9push_backEOS2_.exit62
  %i.hh = phi ptr [ %i.hb, %_ZNSt6vectorIN2v88internal16NumberFormatSpanESaIS2_EE2atEm.exit72 ], [ %i.ge, %_ZNSt6vectorIN2v88internal16NumberFormatSpanESaIS2_EE9push_backEOS2_.exit62 ]
  %i.hi = phi ptr [ %i.ha, %_ZNSt6vectorIN2v88internal16NumberFormatSpanESaIS2_EE2atEm.exit72 ], [ %i.gd, %_ZNSt6vectorIN2v88internal16NumberFormatSpanESaIS2_EE9push_backEOS2_.exit62 ]
  %.sroa.0104.1 = phi ptr [ %.sroa.0104.3, %_ZNSt6vectorIN2v88internal16NumberFormatSpanESaIS2_EE2atEm.exit72 ], [ %.sroa.0104.0192, %_ZNSt6vectorIN2v88internal16NumberFormatSpanESaIS2_EE9push_backEOS2_.exit62 ] ; 2 uses
  %.sroa.8.3 = phi ptr [ %.sroa.8.5, %_ZNSt6vectorIN2v88internal16NumberFormatSpanESaIS2_EE2atEm.exit72 ], [ %.sroa.8.2, %_ZNSt6vectorIN2v88internal16NumberFormatSpanESaIS2_EE9push_backEOS2_.exit62 ]
  %.sroa.20.1 = phi ptr [ %.sroa.20.3, %_ZNSt6vectorIN2v88internal16NumberFormatSpanESaIS2_EE2atEm.exit72 ], [ %.sroa.20.0194, %_ZNSt6vectorIN2v88internal16NumberFormatSpanESaIS2_EE9push_backEOS2_.exit62 ] ; 2 uses
  %.sroa.724.3 = phi i32 [ %.sroa.724.0.copyload28, %_ZNSt6vectorIN2v88internal16NumberFormatSpanESaIS2_EE2atEm.exit72 ], [ %.sroa.724.2, %_ZNSt6vectorIN2v88internal16NumberFormatSpanESaIS2_EE9push_backEOS2_.exit62 ]
  %.sroa.0.3 = phi i32 [ %.sroa.0.0.copyload19, %_ZNSt6vectorIN2v88internal16NumberFormatSpanESaIS2_EE2atEm.exit72 ], [ %.sroa.0.2, %_ZNSt6vectorIN2v88internal16NumberFormatSpanESaIS2_EE9push_backEOS2_.exit62 ]
  %.145 = phi i64 [ %i.gk, %_ZNSt6vectorIN2v88internal16NumberFormatSpanESaIS2_EE2atEm.exit72 ], [ %.044197, %_ZNSt6vectorIN2v88internal16NumberFormatSpanESaIS2_EE9push_backEOS2_.exit62 ]
  %i.hj = icmp slt i32 %.3, %.sroa.724.0.copyload
  br i1 %i.hj, label %bb.ak, label %_ZNSt6vectorImSaImEED2Ev.exit, !llvm.loop !237

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %bb.bf, %_ZNSt6vectorIN2v88internal16NumberFormatSpanESaIS2_EE2atEm.exit
  %.sroa.0104.0.lcssa = phi ptr [ %i.dk, %_ZNSt6vectorIN2v88internal16NumberFormatSpanESaIS2_EE2atEm.exit ], [ %.sroa.0104.1, %bb.bf ] ; 2 uses
  %.sroa.20.0.lcssa = phi ptr [ %i.dn, %_ZNSt6vectorIN2v88internal16NumberFormatSpanESaIS2_EE2atEm.exit ], [ %.sroa.20.1, %bb.bf ]
  %i.hk = ptrtoint ptr %.sroa.20.0.lcssa to i64
  %i.hl = ptrtoint ptr %.sroa.0104.0.lcssa to i64
  %i.hm = sub i64 %i.hk, %i.hl
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0104.0.lcssa, i64 noundef %i.hm) #25
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @_ZN2v88internal12_GLOBAL__N_120cmp_NumberFormatSpanERKNS0_16NumberFormatSpanES4_(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %1) #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load i32, ptr %i.c, align 4              ; 2 uses
  %i.e = icmp slt i32 %i.b, %i.d
  br i1 %i.e, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp sgt i32 %i.b, %i.d
  br i1 %i.f, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i32, ptr %i.g, align 4              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i32, ptr %i.i, align 4              ; 2 uses
  %i.k = icmp slt i32 %i.h, %i.j
  br i1 %i.k, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = icmp sgt i32 %i.h, %i.j
  br i1 %i.l, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = load i32, ptr %0, align 4
  %i.n = load i32, ptr %1, align 4
  %i.o = icmp slt i32 %i.m, %i.n
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a, %bb.e
  %.0 = phi i1 [ %i.o, %bb.e ], [ true, %bb.a ], [ false, %bb.b ], [ false, %bb.c ], [ true, %bb.d ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i64 0, -4294967294) i64 @_ZN2v88internal4Intl17AddNumberElementsEPNS0_7IsolateERKN6icu_7814FormattedValueENS0_12DirectHandleINS0_7JSArrayEEEiNS8_INS0_6StringEEE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr %2, i32 noundef %3, ptr %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = ptrtoint ptr %4 to i64
  %i.b = tail call fastcc i64 @_ZN2v88internal12_GLOBAL__N_114ConstructPartsEPNS0_7IsolateERKN6icu_7814FormattedValueENS0_12DirectHandleINS0_7JSArrayEEEibbbbNS8_INS0_6StringEEE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr %2, i32 noundef %3, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true, i64 %i.a)
  ret i64 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc range(i64 0, -4294967294) i64 @_ZN2v88internal12_GLOBAL__N_114ConstructPartsEPNS0_7IsolateERKN6icu_7814FormattedValueENS0_12DirectHandleINS0_7JSArrayEEEibbbbNS8_INS0_6StringEEE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr %2, i32 noundef %3, i1 noundef zeroext %4, i1 noundef zeroext %5, i1 noundef zeroext %6, i1 noundef zeroext %7, i64 %8) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %9 = alloca %"class.icu_78::UnicodeString", align 8 ; 12 uses
  %10 = alloca %"class.std::vector.636", align 8  ; 7 uses
  %11 = alloca %"class.v8::internal::Intl::FormatRangeSourceTracker", align 4 ; 5 uses
  %12 = alloca %"class.icu_78::ConstrainedFieldPosition", align 8 ; 10 uses
  %13 = alloca %"class.std::vector.636", align 8  ; 6 uses
  %14 = alloca %"struct.v8::internal::NumberFormatSpan", align 4 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i32 0, ptr %i.a, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  %i.b = load ptr, ptr %1, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  call void %i.d(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::UnicodeString") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #22
  %i.e = load i32, ptr %i.a, align 4
  %i.f = icmp slt i32 %i.e, 1
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef 12, ptr null, i64 0) #22
  %i.h = load i64, ptr %i.g, align 8
  %i.i = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %0, i64 %i.h, ptr noundef null) #22 ; 0 uses
  br label %bb.z

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.k = load i16, ptr %i.j, align 8              ; 2 uses
  %i.l = icmp slt i16 %i.k, 0
  %i.m = ashr i16 %i.k, 5
  %i.n = sext i16 %i.m to i32
  %i.o = getelementptr inbounds nuw i8, ptr %9, i64 12
  %i.p = load i32, ptr %i.o, align 4
  %i.q = select i1 %i.l, i32 %i.p, i32 %i.n       ; 2 uses
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.d, label %_ZNKSt6vectorIN2v88internal16NumberFormatSpanESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  %.sroa.21.0.insert.ext.i = zext i32 %3 to i64
  %.sroa.21.0.insert.shift.i = shl nuw i64 %.sroa.21.0.insert.ext.i, 32
  br label %bb.z

_ZNKSt6vectorIN2v88internal16NumberFormatSpanESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  %i.s = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.u = call noalias noundef nonnull dereferenceable(12) ptr @_Znwm(i64 noundef 12) #24 ; 7 uses
  store i32 -1, ptr %i.u, align 4
  %.sroa.591.0..sroa_idx92 = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  store i32 0, ptr %.sroa.591.0..sroa_idx92, align 4
  %.sroa.694.0..sroa_idx95 = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i32 %i.q, ptr %.sroa.694.0..sroa_idx95, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 12 ; 6 uses
  store ptr %i.u, ptr %10, align 8
  store ptr %i.v, ptr %i.s, align 8
  store ptr %i.v, ptr %i.t, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  call void @_ZN2v88internal4Intl24FormatRangeSourceTrackerC1Ev(ptr noundef nonnull align 4 dereferenceable(16) %11) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  call void @_ZN6icu_7824ConstrainedFieldPositionC1Ev(ptr noundef nonnull align 8 dereferenceable(25) %12) #22
  %i.w = load ptr, ptr %1, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = call noundef signext i8 %i.y(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(25) %12, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #22
  %.not57132 = icmp eq i8 %i.z, 0
  br i1 %.not57132, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNKSt6vectorIN2v88internal16NumberFormatSpanESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %12, i64 20
  %i.ab = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %12, i64 12
  %i.ad = getelementptr inbounds nuw i8, ptr %12, i64 16
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN2v88internal16NumberFormatSpanESaIS2_EE9push_backEOS2_.exit66
  %i.ae = phi ptr [ %i.v, %.lr.ph ], [ %i.be, %_ZNSt6vectorIN2v88internal16NumberFormatSpanESaIS2_EE9push_backEOS2_.exit66 ] ; 7 uses
  %i.af = phi ptr [ %i.v, %.lr.ph ], [ %i.bd, %_ZNSt6vectorIN2v88internal16NumberFormatSpanESaIS2_EE9push_backEOS2_.exit66 ] ; 3 uses
  %i.ag = phi ptr [ %i.u, %.lr.ph ], [ %i.bc, %_ZNSt6vectorIN2v88internal16NumberFormatSpanESaIS2_EE9push_backEOS2_.exit66 ] ; 5 uses
  %i.ah = load i32, ptr %i.aa, align 4
  %i.ai = load i32, ptr %i.ab, align 8            ; 3 uses
  %i.aj = load i32, ptr %i.ac, align 4            ; 3 uses
  %i.ak = load i32, ptr %i.ad, align 8            ; 3 uses
  %i.al = icmp eq i32 %i.ah, 4098
  br i1 %i.al, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @_ZN2v88internal4Intl24FormatRangeSourceTracker3AddEiii(ptr noundef nonnull align 4 dereferenceable(16) %11, i32 noundef %i.ai, i32 noundef %i.aj, i32 noundef %i.ak) #22
  br label %_ZNSt6vectorIN2v88internal16NumberFormatSpanESaIS2_EE9push_backEOS2_.exit66

bb.g:                                             ; preds = %bb.e
  %.not.i.i59 = icmp eq ptr %i.ae, %i.af
  br i1 %.not.i.i59, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 %i.ai, ptr %i.ae, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  store i32 %i.aj, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store i32 %i.ak, ptr %.sroa.6.0..sroa_idx, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  br label %_ZNSt6vectorIN2v88internal16NumberFormatSpanESaIS2_EE9push_backEOS2_.exit66

bb.i:                                             ; preds = %bb.g
  %i.an = ptrtoint ptr %i.ae to i64
  %i.ao = ptrtoint ptr %i.ag to i64
  %i.ap = sub i64 %i.an, %i.ao                    ; 6 uses
  %i.aq = icmp eq i64 %i.ap, 9223372036854775800
  br i1 %i.aq, label %bb.j, label %_ZNKSt6vectorIN2v88internal16NumberFormatSpanESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i60

bb.j:                                             ; preds = %bb.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.118) #23
  unreachable

_ZNKSt6vectorIN2v88internal16NumberFormatSpanESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i60: ; preds = %bb.i
  %i.ar = sdiv exact i64 %i.ap, 12                ; 3 uses
  %.sroa.speculated.i.i.i.i61 = call i64 @llvm.umax.i64(i64 %i.ar, i64 1)
  %i.as = add nsw i64 %.sroa.speculated.i.i.i.i61, %i.ar ; 2 uses
  %i.at = icmp ult i64 %i.as, %i.ar
  %i.au = call i64 @llvm.umin.i64(i64 %i.as, i64 768614336404564650)
  %i.av = select i1 %i.at, i64 768614336404564650, i64 %i.au ; 3 uses
  %.not.i.i.i.i62 = icmp ne i64 %i.av, 0
  call void @llvm.assume(i1 %.not.i.i.i.i62)
  %i.aw = mul nuw nsw i64 %i.av, 12
  %i.ax = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aw) #24 ; 4 uses
  %i.ay = getelementptr inbounds i8, ptr %i.ax, i64 %i.ap ; 4 uses
  store i32 %i.ai, ptr %i.ay, align 4
  %.sroa.5.0..sroa_idx85 = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  store i32 %i.aj, ptr %.sroa.5.0..sroa_idx85, align 4
  %.sroa.6.0..sroa_idx87 = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store i32 %i.ak, ptr %.sroa.6.0..sroa_idx87, align 4
  %i.az = icmp sgt i64 %i.ap, 0
  br i1 %i.az, label %bb.k, label %_ZNSt6vectorIN2v88internal16NumberFormatSpanESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i65

bb.k:                                             ; preds = %_ZNKSt6vectorIN2v88internal16NumberFormatSpanESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i60
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ax, ptr align 4 %i.ag, i64 %i.ap, i1 false)
  br label %_ZNSt6vectorIN2v88internal16NumberFormatSpanESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i65

_ZNSt6vectorIN2v88internal16NumberFormatSpanESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i65: ; preds = %bb.k, %_ZNKSt6vectorIN2v88internal16NumberFormatSpanESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i60
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 12
  call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.ap) #25
  %i.bb = getelementptr inbounds nuw [12 x i8], ptr %i.ax, i64 %i.av
  br label %_ZNSt6vectorIN2v88internal16NumberFormatSpanESaIS2_EE9push_backEOS2_.exit66

_ZNSt6vectorIN2v88internal16NumberFormatSpanESaIS2_EE9push_backEOS2_.exit66: ; preds = %_ZNSt6vectorIN2v88internal16NumberFormatSpanESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i65, %bb.h, %bb.f
  %i.bc = phi ptr [ %i.ax, %_ZNSt6vectorIN2v88internal16NumberFormatSpanESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i65 ], [ %i.ag, %bb.h ], [ %i.ag, %bb.f ] ; 2 uses
  %i.bd = phi ptr [ %i.bb, %_ZNSt6vectorIN2v88internal16NumberFormatSpanESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i65 ], [ %i.af, %bb.h ], [ %i.af, %bb.f ] ; 2 uses
  %i.be = phi ptr [ %i.ba, %_ZNSt6vectorIN2v88internal16NumberFormatSpanESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i65 ], [ %i.am, %bb.h ], [ %i.ae, %bb.f ] ; 2 uses
  %i.bf = load ptr, ptr %1, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 40
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = call noundef signext i8 %i.bh(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(25) %12, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #22
  %.not57 = icmp eq i8 %i.bi, 0
  br i1 %.not57, label %._crit_edge, label %bb.e, !llvm.loop !238

._crit_edge:                                      ; preds = %_ZNSt6vectorIN2v88internal16NumberFormatSpanESaIS2_EE9push_backEOS2_.exit66, %_ZNKSt6vectorIN2v88internal16NumberFormatSpanESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
end_hunk_4
begin_hunk_5_@_ZNSt8_Rb_treeIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS6_N6icu_7811MeasureUnitEESt10_Select1stISA_ESt4lessIvESaISA_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISA_ERS6_:bb.a
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = load ptr, ptr %2, align 8
  %i.bo = tail call i32 @memcmp(ptr noundef %i.bn, ptr noundef %i.bm, i64 noundef %.sroa.speculated.i.i.i.i37) #22 ; 2 uses
  %.not.i.i.i.i39 = icmp eq i32 %i.bo, 0
  br i1 %.not.i.i.i.i39, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i41, label %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit45

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i41: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i38, %bb.k
  %i.bp = sub i64 %i.v, %i.bj
  %spec.select7.i.i.i.i.i42 = tail call i64 @llvm.smax.i64(i64 %i.bp, i64 -2147483648)
  %.08.i.i.i.i.i43 = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i42, i64 2147483647)
  %.0.i6.i.i.i.i44 = trunc nsw i64 %.08.i.i.i.i.i43 to i32
  br label %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit45

_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit45: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i38, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i41
  %.0.i.i.i.i40 = phi i32 [ %i.bo, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i38 ], [ %.0.i6.i.i.i.i44, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i41 ]
  %i.bq = icmp slt i32 %.0.i.i.i.i40, 0
  br i1 %i.bq, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit45
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = icmp eq ptr %i.bs, null                 ; 2 uses
  %spec.select74 = select i1 %i.bt, ptr null, ptr %i.bh
  %spec.select75 = select i1 %i.bt, ptr %1, ptr %i.bh
  br label %bb.n

bb.m:                                             ; preds = %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit45
  %i.bu = tail call { ptr, ptr } @_ZNSt8_Rb_treeIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS6_N6icu_7811MeasureUnitEESt10_Select1stISA_ESt4lessIvESaISA_EE24_M_get_insert_unique_posERS6_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %2) ; 2 uses
  %i.bv = extractvalue { ptr, ptr } %i.bu, 0
  %i.bw = extractvalue { ptr, ptr } %i.bu, 1
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.h, %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit36, %bb.m, %bb.j, %bb.i, %bb.f, %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit, %bb.d
  %.sroa.066.2 = phi ptr [ %i.s, %bb.d ], [ %spec.select, %bb.h ], [ null, %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit ], [ %spec.select74, %bb.l ], [ %i.az, %bb.i ], [ %i.aj, %bb.f ], [ %1, %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit36 ], [ %i.bv, %bb.m ], [ null, %bb.j ]
  %.sroa.12.2 = phi ptr [ %i.t, %bb.d ], [ %spec.select73, %bb.h ], [ %i.f, %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit ], [ %spec.select75, %bb.l ], [ %i.ba, %bb.i ], [ %i.aj, %bb.f ], [ null, %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit36 ], [ %i.bw, %bb.m ], [ %i.bf, %bb.j ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.066.2, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.12.2, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr %0, align 8
  %i.b = load ptr, ptr %1, align 8                ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8              ; 8 uses
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %bb.b, label %._crit_edge.i

bb.b:                                             ; preds = %bb.a
  %i.f = icmp slt i64 %i.d, 0
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.93) #23
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.g = add nuw i64 %i.d, 1                      ; 2 uses
  %i.h = icmp slt i64 %i.g, 0
  br i1 %i.h, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i, !prof !13

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #23
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i: ; preds = %bb.d
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #24 ; 2 uses
  store ptr %i.i, ptr %0, align 8
  store i64 %i.d, ptr %i.a, align 8
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i
  %i.j = phi ptr [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i ], [ %i.a, %bb.a ] ; 3 uses
  switch i64 %i.d, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag.exit
  ]

bb.f:                                             ; preds = %._crit_edge.i
  %i.k = load i8, ptr %i.b, align 1
  store i8 %i.k, ptr %i.j, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag.exit

bb.g:                                             ; preds = %._crit_edge.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.j, ptr align 1 %i.b, i64 %i.d, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag.exit: ; preds = %._crit_edge.i, %bb.f, %bb.g
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.d, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.d
  store i8 0, ptr %i.m, align 1
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, ptr } @_ZNSt8_Rb_treeIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS6_N6icu_7811MeasureUnitEESt10_Select1stISA_ESt4lessIvESaISA_EE24_M_get_insert_unique_posERS6_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.02931 = load ptr, ptr %i.a, align 8           ; 2 uses
  %.not32 = icmp eq ptr %.02931, null
  br i1 %.not32, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = load ptr, ptr %1, align 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit
  %.02933 = phi ptr [ %.02931, %.lr.ph ], [ %.029, %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit ] ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.02933, i64 40
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.g, i64 %i.d) ; 2 uses
  %i.h = icmp eq i64 %.sroa.speculated.i.i.i.i, 0
  br i1 %i.h, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.02933, i64 32
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call i32 @memcmp(ptr noundef %i.e, ptr noundef %i.j, i64 noundef %.sroa.speculated.i.i.i.i) #22 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %bb.b
  %i.l = sub i64 %i.d, %i.g
  %spec.select7.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.l, i64 -2147483648)
  %.08.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i to i32
  br label %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit

_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i
  %.0.i.i.i.i = phi i32 [ %i.k, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i ], [ %.0.i6.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i ]
  %i.m = icmp slt i32 %.0.i.i.i.i, 0              ; 2 uses
  %.in.v = select i1 %i.m, i64 16, i64 24
  %.in = getelementptr inbounds nuw i8, ptr %.02933, i64 %.in.v
  %.029 = load ptr, ptr %.in, align 8             ; 2 uses
  %.not = icmp eq ptr %.029, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !263

._crit_edge:                                      ; preds = %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit
  br i1 %i.m, label %._crit_edge.thread, label %bb.d

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  %.028.lcssa39 = phi ptr [ %.02933, %._crit_edge ], [ %i.b, %bb.a ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = icmp eq ptr %.028.lcssa39, %i.o
  br i1 %i.p, label %bb.e, label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread
  %i.q = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.028.lcssa39) #26
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %.028.lcssa38 = phi ptr [ %.028.lcssa39, %bb.c ], [ %.02933, %._crit_edge ]
  %.sroa.014.0 = phi ptr [ %i.q, %bb.c ], [ %.02933, %._crit_edge ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.014.0, i64 40
  %i.s = load i64, ptr %i.r, align 8              ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load i64, ptr %i.t, align 8              ; 2 uses
  %.sroa.speculated.i.i.i.i5 = tail call i64 @llvm.umin.i64(i64 %i.u, i64 %i.s) ; 2 uses
  %i.v = icmp eq i64 %.sroa.speculated.i.i.i.i5, 0
  br i1 %i.v, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i9, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i6

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i6: ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.014.0, i64 32
  %i.x = load ptr, ptr %1, align 8
  %i.y = load ptr, ptr %i.w, align 8
  %i.z = tail call i32 @memcmp(ptr noundef %i.y, ptr noundef %i.x, i64 noundef %.sroa.speculated.i.i.i.i5) #22 ; 2 uses
  %.not.i.i.i.i7 = icmp eq i32 %i.z, 0
  br i1 %.not.i.i.i.i7, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i9, label %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit13

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i9: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i6, %bb.d
  %i.aa = sub i64 %i.s, %i.u
  %spec.select7.i.i.i.i.i10 = tail call i64 @llvm.smax.i64(i64 %i.aa, i64 -2147483648)
  %.08.i.i.i.i.i11 = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i10, i64 2147483647)
  %.0.i6.i.i.i.i12 = trunc nsw i64 %.08.i.i.i.i.i11 to i32
  br label %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit13

_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit13: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i6, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i9
  %.0.i.i.i.i8 = phi i32 [ %i.z, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i6 ], [ %.0.i6.i.i.i.i12, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i9 ]
  %i.ab = icmp slt i32 %.0.i.i.i.i8, 0            ; 2 uses
  %spec.select = select i1 %i.ab, ptr null, ptr %.sroa.014.0
  %spec.select30 = select i1 %i.ab, ptr %.028.lcssa38, ptr null
  br label %bb.e

bb.e:                                             ; preds = %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit13, %._crit_edge.thread
  %.sroa.027.0 = phi ptr [ %spec.select, %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit13 ], [ null, %._crit_edge.thread ]
  %.sroa.4.0 = phi ptr [ %spec.select30, %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit13 ], [ %.028.lcssa39, %._crit_edge.thread ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.027.0, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.4.0, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt8_Rb_treeIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS6_N6icu_7811MeasureUnitEESt10_Select1stISA_ESt4lessIvESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS6_N6icu_7811MeasureUnitEESt10_Select1stISA_ESt4lessIvESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS6_N6icu_7811MeasureUnitEESt10_Select1stISA_ESt4lessIvESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit ], [ %1, %bb.a ] ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @_ZNSt8_Rb_treeIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS6_N6icu_7811MeasureUnitEESt10_Select1stISA_ESt4lessIvESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %.07, i64 64
  tail call void @_ZN6icu_7811MeasureUnitD1Ev(ptr noundef nonnull align 8 dereferenceable(19) %i.f) #22
  %i.g = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.07, i64 48 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt8_Rb_treeIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS6_N6icu_7811MeasureUnitEESt10_Select1stISA_ESt4lessIvESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph
  %i.j = load i64, ptr %i.h, align 8
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #25
  br label %_ZNSt8_Rb_treeIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS6_N6icu_7811MeasureUnitEESt10_Select1stISA_ESt4lessIvESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit

_ZNSt8_Rb_treeIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS6_N6icu_7811MeasureUnitEESt10_Select1stISA_ESt4lessIvESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit: ; preds = %.lr.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 88) #25
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !264

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS6_N6icu_7811MeasureUnitEESt10_Select1stISA_ESt4lessIvESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit, %bb.a
  ret void
}

declare void @_ZN6icu_7811MeasureUnitC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(19), ptr noundef nonnull align 8 dereferenceable(19)) unnamed_addr #2

declare i32 @ucurr_getDefaultFractionDigits_78(ptr noundef, ptr noundef) local_unnamed_addr #2

declare { i64, i32 } @_ZN6icu_786number8Notation6simpleEv() local_unnamed_addr #2

declare { i64, i32 } @_ZN6icu_786number8Notation10scientificEv() local_unnamed_addr #2

declare { i64, i32 } @_ZN6icu_786number8Notation11engineeringEv() local_unnamed_addr #2

declare { i64, i32 } @_ZN6icu_786number8Notation12compactShortEv() local_unnamed_addr #2

declare { i64, i32 } @_ZN6icu_786number8Notation11compactLongEv() local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #13 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #22, !inline_history !265
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4              ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #22, !inline_history !265
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

declare ptr @_ZN2v88internal7Factory22NewSlowJSObjectFromMapENS0_12DirectHandleINS0_3MapEEEiNS0_14AllocationTypeENS2_INS0_14AllocationSiteEEENS0_15NewJSObjectTypeE(ptr noundef nonnull align 1 dereferenceable(1), ptr, i32 noundef, i8 noundef zeroext, ptr, i8 noundef zeroext) local_unnamed_addr #2

declare ptr @_ZN2v88internal7Factory18NewJSObjectFromMapENS0_12DirectHandleINS0_3MapEEENS0_14AllocationTypeENS2_INS0_14AllocationSiteEEENS0_15NewJSObjectTypeE(ptr noundef nonnull align 1 dereferenceable(1), ptr, i8 noundef zeroext, ptr, i8 noundef zeroext) local_unnamed_addr #2

declare void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64, i64 noundef, i64) local_unnamed_addr #2

declare void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64, i64, i64) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit ], [ %1, %bb.a ] ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %.07, i64 64
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.07, i64 80 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph
  %i.j = load i64, ptr %i.h, align 8
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %.lr.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.l = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.07, i64 48 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i
  %i.o = load i64, ptr %i.m, align 8
  %i.p = add i64 %i.o, 1
  tail call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #25
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 96) #25
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !266

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit, %bb.a
  ret void
}

declare void @_ZNK6icu_786number24LocalizedNumberFormatter13formatDecimalENS_11StringPieceER10UErrorCode(ptr dead_on_unwind writable sret(%"class.icu_78::number::FormattedNumber") align 8, ptr noundef nonnull align 8 dereferenceable(312), ptr, i32, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZN2v88internal6String11SlowFlattenINS0_6HandleEQsr3stdE16is_convertible_vIT_IS1_ENS0_12DirectHandleIS1_EEEEES5_PNS0_7IsolateES4_INS0_10ConsStringEENS0_14AllocationTypeE(ptr noundef %0, ptr %1, i8 noundef zeroext %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::PerThreadAssertScopeEmpty", align 1 ; 3 uses
  %4 = alloca %"class.v8::internal::SharedStringAccessGuardIfNeeded", align 8 ; 6 uses
  %5 = alloca %"class.v8::internal::PerThreadAssertScopeEmpty", align 1 ; 3 uses
  %6 = alloca %"class.v8::internal::SharedStringAccessGuardIfNeeded", align 8 ; 6 uses
  %i.a = load i64, ptr %1, align 8                ; 2 uses
  %i.b = add i64 %i.a, -1
  %i.c = inttoptr i64 %i.b to ptr                 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load i64, ptr %i.d, align 8
  %i.f = add i64 %i.e, -1
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.i = load i32, ptr %i.h, align 4
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.b, label %.critedge, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.l = load i64, ptr %i.k, align 8              ; 3 uses
  %i.m = add i64 %i.l, -1
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = load atomic volatile i64, ptr %i.n acquire, align 8
  %i.p = add i64 %i.o, 11
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = load atomic volatile i16, ptr %i.q monotonic, align 2
  %i.s = and i16 %i.r, -121
  %i.t = icmp eq i16 %i.s, 0
  br i1 %i.t, label %.critedge39, label %.critedge

.critedge39:                                      ; preds = %bb.b
  tail call void @_ZN2v88internal10ConsString9set_firstENS0_6TaggedINS0_6StringEEENS0_16WriteBarrierModeE(ptr noundef nonnull align 4 dereferenceable(32) %i.c, i64 %i.l, i32 noundef 4)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.v = load i64, ptr %i.u, align 8
  tail call void @_ZN2v88internal10ConsString10set_secondENS0_6TaggedINS0_6StringEEENS0_16WriteBarrierModeE(ptr noundef nonnull align 4 dereferenceable(32) %i.c, i64 %i.v, i32 noundef 4)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = icmp eq ptr %i.x, %i.z
  br i1 %i.aa, label %bb.c, label %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !13

bb.c:                                             ; preds = %.critedge39
  %i.ab = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #22
  br label %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %.critedge39, %bb.c
  %.0.i.i = phi ptr [ %i.ab, %bb.c ], [ %i.x, %.critedge39 ] ; 3 uses
  %i.ac = ptrtoint ptr %.0.i.i to i64
end_hunk_5
begin_hunk_6_@_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_:bb.a
  %i.w = icmp slt i64 %i.u, 0
  br i1 %i.w, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.93) #23
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.x = add nuw i64 %i.u, 1                      ; 2 uses
  %i.y = icmp slt i64 %i.x, 0
  br i1 %i.y, label %bb.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, !prof !13

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt17__throw_bad_allocv() #23
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i: ; preds = %bb.e
  %i.z = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #24 ; 2 uses
  store ptr %i.z, ptr %i.q, align 8
  store i64 %i.u, ptr %i.r, align 8
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.aa = phi ptr [ %i.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i ], [ %i.r, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  switch i64 %i.u, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i
  %i.ab = load i8, ptr %i.s, align 1
  store i8 %i.ab, ptr %i.aa, align 1
  br label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit

bb.h:                                             ; preds = %._crit_edge.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aa, ptr align 1 %i.s, i64 %i.u, i1 false)
  br label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit

_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit: ; preds = %._crit_edge.i.i.i, %bb.g, %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.u, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.u
  store i8 0, ptr %i.ad, align 1
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.ar, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.aq, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !308)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !309)
  %i.ae = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.ae, ptr %.012.i.i.i, align 8, !alias.scope !308
  %i.af = load ptr, ptr %.0911.i.i.i, align 8, !alias.scope !309 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.i:                                             ; preds = %.lr.ph.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !alias.scope !309 ; 3 uses
  %i.ak = icmp ult i64 %i.aj, 16
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = add nuw nsw i64 %i.aj, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ae, ptr noundef nonnull align 8 dereferenceable(1) %i.ag, i64 %i.al, i1 false), !alias.scope !310
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.af, ptr %.012.i.i.i, align 8, !alias.scope !308
  %i.am = load i64, ptr %i.ag, align 8, !alias.scope !309
  store i64 %i.am, ptr %i.ae, align 8, !alias.scope !308
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !alias.scope !309
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.i
  %i.an = phi i64 [ %i.aj, %bb.i ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.an, ptr %i.ap, align 8, !alias.scope !308
  store ptr %i.ag, ptr %.0911.i.i.i, align 8, !alias.scope !309
  store i64 0, ptr %i.ao, align 8, !alias.scope !309
  store i8 0, ptr %i.ag, align 8, !alias.scope !309
  %i.aq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aq, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !304

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit ], [ %i.ar, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23
  %.012.i.i.i18 = phi ptr [ %i.bg, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %i.as, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 5 uses
  %.0911.i.i.i19 = phi ptr [ %i.bf, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !311)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !312)
  %i.at = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 3 uses
  store ptr %i.at, ptr %.012.i.i.i18, align 8, !alias.scope !311
  %i.au = load ptr, ptr %.0911.i.i.i19, align 8, !alias.scope !312 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 5 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20

bb.j:                                             ; preds = %.lr.ph.i.i.i17
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !alias.scope !312 ; 3 uses
  %i.az = icmp ult i64 %i.ay, 16
  tail call void @llvm.assume(i1 %i.az)
  %i.ba = add nuw nsw i64 %i.ay, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.at, ptr noundef nonnull align 8 dereferenceable(1) %i.av, i64 %i.ba, i1 false), !alias.scope !313
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20: ; preds = %.lr.ph.i.i.i17
  store ptr %i.au, ptr %.012.i.i.i18, align 8, !alias.scope !311
  %i.bb = load i64, ptr %i.av, align 8, !alias.scope !312
  store i64 %i.bb, ptr %i.at, align 8, !alias.scope !311
  %.phi.trans.insert.i.i.i.i21 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %.pre.i.i.i.i22 = load i64, ptr %.phi.trans.insert.i.i.i.i21, align 8, !alias.scope !312
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20, %bb.j
  %i.bc = phi i64 [ %i.ay, %bb.j ], [ %.pre.i.i.i.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20 ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8
  store i64 %i.bc, ptr %i.be, align 8, !alias.scope !311
  store ptr %i.av, ptr %.0911.i.i.i19, align 8, !alias.scope !312
  store i64 0, ptr %i.bd, align 8, !alias.scope !312
  store i8 0, ptr %i.av, align 8, !alias.scope !312
  %i.bf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 32 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 32 ; 2 uses
  %.not.i.i.i24 = icmp eq ptr %i.bf, %i.b
  br i1 %.not.i.i.i24, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, label %.lr.ph.i.i.i17, !llvm.loop !304

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i25 = phi ptr [ %i.as, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.bg, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ]
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i27 = icmp eq ptr %i.c, null
  br i1 %.not.i27, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = sub i64 %i.bj, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bk) #25
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, %bb.k
  store ptr %i.p, ptr %0, align 8
  store ptr %.0.lcssa.i.i.i25, ptr %i.a, align 8
  %i.bl = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bl, ptr %i.bh, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #14

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nofree nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { inlinehint mustprogress noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold nofree noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { cold "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #22 = { nounwind }
attributes #23 = { noreturn nounwind }
attributes #24 = { builtin nounwind allocsize(0) }
attributes #25 = { builtin nounwind }
attributes #26 = { nounwind willreturn memory(read) }
attributes #27 = { noreturn }
attributes #28 = { cold nounwind }

!llvm.module.flags = !{!8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = distinct !{null}
!1 = distinct !{!1, !14}
!2 = distinct !{null}
!3 = distinct !{null}
!4 = distinct !{null}
!5 = distinct !{!5, !14}
!6 = distinct !{!6, !14}
!7 = distinct !{!7, !14}
!8 = !{i32 8, !"PIC Level", i32 2}
!9 = !{i32 7, !"PIE Level", i32 2}
!10 = !{i32 7, !"uwtable", i32 2}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!13 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!16 = !{i8 0, i8 2}
!17 = !{}
!18 = distinct !{!18, !14}
!19 = distinct !{!19, !14}
!20 = distinct !{!20, !14}
!21 = distinct !{!21, !14}
!22 = distinct !{!22, !14}
!23 = distinct !{!23, !14}
!24 = distinct !{!24, i1 true, !"_ZN2v88internal12_GLOBAL__N_120CurrencyFromSkeletonERKN6icu_7813UnicodeStringE"}
!25 = distinct !{!25, !24, !"_ZN2v88internal12_GLOBAL__N_120CurrencyFromSkeletonERKN6icu_7813UnicodeStringE: argument 0"}
!26 = distinct !{!26, i1 true, !"_ZN2v88internal12_GLOBAL__N_116UnitFromSkeletonB5cxx11ERKN6icu_7813UnicodeStringE"}
!27 = distinct !{!27, !26, !"_ZN2v88internal12_GLOBAL__N_116UnitFromSkeletonB5cxx11ERKN6icu_7813UnicodeStringE: argument 0"}
!28 = distinct !{!28, !14}
!29 = distinct !{!29, i1 true, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!30 = distinct !{!30, !29, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!31 = !{!25}
!32 = !{!27}
!33 = !{!30}
!34 = !{!30, !27}
!35 = distinct !{ptr @_ZN2v88internal14JSNumberFormat19GetAvailableLocalesB5cxx11Ev, null, null, null, null, null}
!36 = distinct !{!36, !14}
!37 = distinct !{!37, !14}
!38 = distinct !{null}
!39 = distinct !{!39, !14}
!40 = !{i64 2179345579}
!41 = distinct !{null, null, null, null, null}
!42 = distinct !{!42, !14}
!43 = distinct !{!43, !14}
!44 = distinct !{!44, !14}
!45 = distinct !{!45, !14}
!46 = distinct !{!46, i1 true, !"_ZN2v84JustISt4pairIN6icu_7811MeasureUnitES3_EEENS_5MaybeIT_EERKS6_"}
!47 = distinct !{!47, !46, !"_ZN2v84JustISt4pairIN6icu_7811MeasureUnitES3_EEENS_5MaybeIT_EERKS6_: argument 0"}
!48 = distinct !{!48, !14}
!49 = distinct !{!49, i1 true, !"_ZN2v87NothingISt4pairIN6icu_7811MeasureUnitES3_EEENS_5MaybeIT_EEv"}
!50 = distinct !{!50, !49, !"_ZN2v87NothingISt4pairIN6icu_7811MeasureUnitES3_EEENS_5MaybeIT_EEv: argument 0"}
!51 = distinct !{!51, i1 true, !"_ZN2v87NothingISt4pairIN6icu_7811MeasureUnitES3_EEENS_5MaybeIT_EEv"}
!52 = distinct !{!52, !51, !"_ZN2v87NothingISt4pairIN6icu_7811MeasureUnitES3_EEENS_5MaybeIT_EEv: argument 0"}
!53 = distinct !{!53, i1 true, !"_ZN2v87NothingISt4pairIN6icu_7811MeasureUnitES3_EEENS_5MaybeIT_EEv"}
!54 = distinct !{!54, !53, !"_ZN2v87NothingISt4pairIN6icu_7811MeasureUnitES3_EEENS_5MaybeIT_EEv: argument 0"}
!55 = distinct !{!55, i1 true, !"_ZN2v84JustISt4pairIN6icu_7811MeasureUnitES3_EEENS_5MaybeIT_EERKS6_"}
!56 = distinct !{!56, !55, !"_ZN2v84JustISt4pairIN6icu_7811MeasureUnitES3_EEENS_5MaybeIT_EERKS6_: argument 0"}
!57 = !{!47}
!58 = !{!50}
!59 = !{!52}
!60 = !{!54}
!61 = !{!56}
!62 = distinct !{!62, !14}
!63 = distinct !{!63, !14}
!64 = distinct !{!64, !14}
!65 = distinct !{!65, !14}
!66 = distinct !{!66, !14}
!67 = distinct !{!67, i1 true, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN6icu_786number24LocalizedNumberFormatterESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSA_"}
!68 = distinct !{!68, !67, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN6icu_786number24LocalizedNumberFormatterESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSA_: argument 0"}
!69 = !{!68}
!70 = distinct !{null, null}
!71 = distinct !{!71, i1 true, !"_ZN2v88internal12_GLOBAL__N_119FormatDecimalStringEPNS0_7IsolateERKN6icu_786number24LocalizedNumberFormatterENS0_6HandleINS0_6StringEEER10UErrorCode"}
!72 = distinct !{!72, !71, !"_ZN2v88internal12_GLOBAL__N_119FormatDecimalStringEPNS0_7IsolateERKN6icu_786number24LocalizedNumberFormatterENS0_6HandleINS0_6StringEEER10UErrorCode: argument 0"}
!73 = distinct !{!73, i1 true, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEE"}
!74 = distinct !{!74, !73, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEE: argument 0"}
!75 = distinct !{!75, i1 true, !"_ZN2v88internal31SharedStringAccessGuardIfNeeded9NotNeededEv"}
!76 = distinct !{!76, !75, !"_ZN2v88internal31SharedStringAccessGuardIfNeeded9NotNeededEv: argument 0"}
!77 = distinct !{!77, i1 true, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE"}
!78 = distinct !{!78, !77, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE: argument 0"}
!79 = distinct !{!79, i1 true, !"_ZNK2v88internal6String22DispatchToSpecificTypeIN4absl8OverloadIJZNS1_33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSA_INS0_16SeqOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_16SeqTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlSB_E_EEEEEDaOT_"}
!80 = distinct !{!80, !79, !"_ZNK2v88internal6String22DispatchToSpecificTypeIN4absl8OverloadIJZNS1_33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSA_INS0_16SeqOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_16SeqTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlSB_E_EEEEEDaOT_: argument 0"}
!81 = distinct !{!81, i1 true, !"_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEENS0_6TaggedIS5_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSB_INS0_16SeqOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_16SeqTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlSC_E_EEEEEDaSC_OT_"}
!82 = distinct !{!82, !81, !"_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEENS0_6TaggedIS5_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSB_INS0_16SeqOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_16SeqTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlSC_E_EEEEEDaSC_OT_: argument 0"}
!83 = distinct !{!83, i1 true, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalOneByteStringEEEE_clESD_"}
!84 = distinct !{!84, !83, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalOneByteStringEEEE_clESD_: argument 0"}
!85 = distinct !{null, null}
!86 = distinct !{!86, i1 true, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalTwoByteStringEEEE_clESD_"}
!87 = distinct !{!87, !86, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalTwoByteStringEEEE_clESD_: argument 0"}
!88 = distinct !{null, null}
!89 = distinct !{!89, i1 true, !"_ZN2v84JustIN6icu_786number15FormattedNumberETnPNSt9enable_ifIXntsr3stdE21is_lvalue_reference_vIT_EEvE4typeELPv0EEENS_5MaybeIS5_EEOS5_"}
!90 = distinct !{!90, !89, !"_ZN2v84JustIN6icu_786number15FormattedNumberETnPNSt9enable_ifIXntsr3stdE21is_lvalue_reference_vIT_EEvE4typeELPv0EEENS_5MaybeIS5_EEOS5_: argument 0"}
!91 = !{!72}
!92 = !{!74, !72}
!93 = !{!76}
!94 = !{!78, !72}
!95 = !{!80, !78, !72}
!96 = !{!84, !82, !78, !72}
!97 = !{!87, !82, !78, !72}
!98 = !{!82, !78, !72}
!99 = !{!90}
!100 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!101 = distinct !{!101, i1 true, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEE"}
!102 = distinct !{!102, !101, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEE: argument 0"}
!103 = distinct !{!103, i1 true, !"_ZN2v88internal31SharedStringAccessGuardIfNeeded9NotNeededEv"}
!104 = distinct !{!104, !103, !"_ZN2v88internal31SharedStringAccessGuardIfNeeded9NotNeededEv: argument 0"}
!105 = distinct !{!105, i1 true, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE"}
!106 = distinct !{!106, !105, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE: argument 0"}
!107 = distinct !{!107, i1 true, !"_ZNK2v88internal6String22DispatchToSpecificTypeIN4absl8OverloadIJZNS1_33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSA_INS0_16SeqOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_16SeqTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlSB_E_EEEEEDaOT_"}
!108 = distinct !{!108, !107, !"_ZNK2v88internal6String22DispatchToSpecificTypeIN4absl8OverloadIJZNS1_33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSA_INS0_16SeqOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_16SeqTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlSB_E_EEEEEDaOT_: argument 0"}
!109 = distinct !{!109, i1 true, !"_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEENS0_6TaggedIS5_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSB_INS0_16SeqOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_16SeqTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlSC_E_EEEEEDaSC_OT_"}
!110 = distinct !{!110, !109, !"_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEENS0_6TaggedIS5_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSB_INS0_16SeqOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_16SeqTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlSC_E_EEEEEDaSC_OT_: argument 0"}
!111 = distinct !{!111, i1 true, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalOneByteStringEEEE_clESD_"}
!112 = distinct !{!112, !111, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalOneByteStringEEEE_clESD_: argument 0"}
!113 = distinct !{!113, i1 true, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalTwoByteStringEEEE_clESD_"}
!114 = distinct !{!114, !113, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalTwoByteStringEEEE_clESD_: argument 0"}
!115 = distinct !{!115, i1 true, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEE"}
!116 = distinct !{!116, !115, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEE: argument 0"}
!117 = distinct !{!117, i1 true, !"_ZN2v88internal31SharedStringAccessGuardIfNeeded9NotNeededEv"}
!118 = distinct !{!118, !117, !"_ZN2v88internal31SharedStringAccessGuardIfNeeded9NotNeededEv: argument 0"}
!119 = distinct !{!119, i1 true, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE"}
!120 = distinct !{!120, !119, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE: argument 0"}
!121 = distinct !{!121, i1 true, !"_ZNK2v88internal6String22DispatchToSpecificTypeIN4absl8OverloadIJZNS1_33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSA_INS0_16SeqOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_16SeqTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlSB_E_EEEEEDaOT_"}
!122 = distinct !{!122, !121, !"_ZNK2v88internal6String22DispatchToSpecificTypeIN4absl8OverloadIJZNS1_33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSA_INS0_16SeqOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_16SeqTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlSB_E_EEEEEDaOT_: argument 0"}
!123 = distinct !{!123, i1 true, !"_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEENS0_6TaggedIS5_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSB_INS0_16SeqOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_16SeqTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlSC_E_EEEEEDaSC_OT_"}
!124 = distinct !{!124, !123, !"_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEENS0_6TaggedIS5_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSB_INS0_16SeqOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_16SeqTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlSC_E_EEEEEDaSC_OT_: argument 0"}
!125 = distinct !{!125, i1 true, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalOneByteStringEEEE_clESD_"}
!126 = distinct !{!126, !125, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalOneByteStringEEEE_clESD_: argument 0"}
!127 = distinct !{!127, i1 true, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalTwoByteStringEEEE_clESD_"}
!128 = distinct !{!128, !127, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalTwoByteStringEEEE_clESD_: argument 0"}
!129 = distinct !{!129, i1 true, !"_ZN2v84JustIN6icu_786number15FormattedNumberETnPNSt9enable_ifIXntsr3stdE21is_lvalue_reference_vIT_EEvE4typeELPv0EEENS_5MaybeIS5_EEOS5_"}
!130 = distinct !{!130, !129, !"_ZN2v84JustIN6icu_786number15FormattedNumberETnPNSt9enable_ifIXntsr3stdE21is_lvalue_reference_vIT_EEvE4typeELPv0EEENS_5MaybeIS5_EEOS5_: argument 0"}
!131 = !{!102}
!132 = !{!104}
!133 = !{!106}
!134 = !{!108, !106}
!135 = !{!112, !110, !106}
!136 = !{!114, !110, !106}
!137 = !{!110, !106}
!138 = !{!116}
!139 = !{!118}
!140 = !{!120}
!141 = !{!122, !120}
!142 = !{!126, !124, !120}
!143 = !{!128, !124, !120}
!144 = !{!124, !120}
!145 = !{!130}
!146 = distinct !{!146, i1 true, !"_ZN2v84JustIN6icu_786number20FormattedNumberRangeETnPNSt9enable_ifIXntsr3stdE21is_lvalue_reference_vIT_EEvE4typeELPv0EEENS_5MaybeIS5_EEOS5_"}
!147 = distinct !{!147, !146, !"_ZN2v84JustIN6icu_786number20FormattedNumberRangeETnPNSt9enable_ifIXntsr3stdE21is_lvalue_reference_vIT_EEvE4typeELPv0EEENS_5MaybeIS5_EEOS5_: argument 0"}
!148 = !{!147}
!149 = distinct !{!149, i1 true, !"_ZN2v84JustIN6icu_7811FormattableETnPNSt9enable_ifIXntsr3stdE21is_lvalue_reference_vIT_EEvE4typeELPv0EEENS_5MaybeIS4_EEOS4_"}
!150 = distinct !{!150, !149, !"_ZN2v84JustIN6icu_7811FormattableETnPNSt9enable_ifIXntsr3stdE21is_lvalue_reference_vIT_EEvE4typeELPv0EEENS_5MaybeIS4_EEOS4_: argument 0"}
!151 = distinct !{!151, i1 true, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEE"}
!152 = distinct !{!152, !151, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEE: argument 0"}
!153 = distinct !{!153, i1 true, !"_ZN2v88internal31SharedStringAccessGuardIfNeeded9NotNeededEv"}
!154 = distinct !{!154, !153, !"_ZN2v88internal31SharedStringAccessGuardIfNeeded9NotNeededEv: argument 0"}
!155 = distinct !{!155, i1 true, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE"}
!156 = distinct !{!156, !155, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE: argument 0"}
!157 = distinct !{!157, i1 true, !"_ZNK2v88internal6String22DispatchToSpecificTypeIN4absl8OverloadIJZNS1_33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSA_INS0_16SeqOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_16SeqTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlSB_E_EEEEEDaOT_"}
!158 = distinct !{!158, !157, !"_ZNK2v88internal6String22DispatchToSpecificTypeIN4absl8OverloadIJZNS1_33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSA_INS0_16SeqOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_16SeqTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlSB_E_EEEEEDaOT_: argument 0"}
!159 = distinct !{!159, i1 true, !"_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEENS0_6TaggedIS5_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSB_INS0_16SeqOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_16SeqTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlSC_E_EEEEEDaSC_OT_"}
!160 = distinct !{!160, !159, !"_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEENS0_6TaggedIS5_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSB_INS0_16SeqOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_16SeqTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlSC_E_EEEEEDaSC_OT_: argument 0"}
!161 = distinct !{!161, i1 true, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalOneByteStringEEEE_clESD_"}
!162 = distinct !{!162, !161, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalOneByteStringEEEE_clESD_: argument 0"}
!163 = distinct !{!163, i1 true, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalTwoByteStringEEEE_clESD_"}
!164 = distinct !{!164, !163, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalTwoByteStringEEEE_clESD_: argument 0"}
!165 = distinct !{!165, i1 true, !"_ZN2v84JustIN6icu_7811FormattableEEENS_5MaybeIT_EERKS4_"}
!166 = distinct !{!166, !165, !"_ZN2v84JustIN6icu_7811FormattableEEENS_5MaybeIT_EERKS4_: argument 0"}
!167 = distinct !{!167, i1 true, !"_ZN2v84JustIN6icu_7811FormattableEEENS_5MaybeIT_EERKS4_"}
!168 = distinct !{!168, !167, !"_ZN2v84JustIN6icu_7811FormattableEEENS_5MaybeIT_EERKS4_: argument 0"}
!169 = !{!150}
!170 = !{!152}
!171 = !{!154}
!172 = !{!156}
!173 = !{!158, !156}
!174 = !{!162, !160, !156}
!175 = !{!164, !160, !156}
!176 = !{!160, !156}
end_hunk_6
