Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/llvm-nm?download=true
inline.NumInlined: 4964
inline.NumDeleted: 2081
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_Z12llvm_nm_mainiPPcRKN4llvm11ToolContextE:bb.a

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.dx = call fastcc noundef ptr @_ZNK4llvm3opt7ArgList10getLastArgIJN12_GLOBAL__N_12IDEEEEPNS0_3ArgEDpT_(ptr noundef nonnull align 8 dereferenceable(176) %20, i32 noundef 48)
  %i.dy = icmp ne ptr %i.dx, null
  %i.dz = zext i1 %i.dy to i8
  store i8 %i.dz, ptr @_ZL5Quiet, align 1, !tbaa !55
  %i.ea = call { ptr, i64 } @_ZNK4llvm3opt7ArgList15getLastArgValueENS0_12OptSpecifierENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(176) %20, i32 49, ptr nonnull @.str.11, i64 1) #30 ; 2 uses
  %i.eb = extractvalue { ptr, i64 } %i.ea, 0      ; 3 uses
  %i.ec = extractvalue { ptr, i64 } %i.ea, 1
  %cond = icmp eq i64 %i.ec, 1
  br i1 %cond, label %_ZN4llvmeqENS_9StringRefES0_.exit114, label %_ZN4llvmeqENS_9StringRefES0_.exit124.thread523

_ZN4llvmeqENS_9StringRefES0_.exit114:             ; preds = %bb.o
  %lhsc = load i8, ptr %i.eb, align 1
  %i.ed = icmp eq i8 %lhsc, 111
  br i1 %i.ed, label %_ZN4llvmeqENS_9StringRefES0_.exit114.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit119

_ZN4llvmeqENS_9StringRefES0_.exit114.thread:      ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit114
  store i32 1, ptr @_ZL12AddressRadix, align 4, !tbaa !42
  br label %bb.t

_ZN4llvmeqENS_9StringRefES0_.exit119:             ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit114
  %lhsc796 = load i8, ptr %i.eb, align 1
  %i.ee = icmp eq i8 %lhsc796, 100
  br i1 %i.ee, label %_ZN4llvmeqENS_9StringRefES0_.exit119.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit124

_ZN4llvmeqENS_9StringRefES0_.exit119.thread:      ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit119
  store i32 0, ptr @_ZL12AddressRadix, align 4, !tbaa !42
  br label %bb.t

_ZN4llvmeqENS_9StringRefES0_.exit124:             ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit119
  %lhsc797 = load i8, ptr %i.eb, align 1
  %i.ef = icmp eq i8 %lhsc797, 120
  br i1 %i.ef, label %_ZN4llvmeqENS_9StringRefES0_.exit124.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit124.thread523

_ZN4llvmeqENS_9StringRefES0_.exit124.thread:      ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit124
  store i32 2, ptr @_ZL12AddressRadix, align 4, !tbaa !42
  br label %bb.t

_ZN4llvmeqENS_9StringRefES0_.exit124.thread523:   ; preds = %bb.o, %_ZN4llvmeqENS_9StringRefES0_.exit124
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  %.sroa.1449.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 32
  store i8 1, ptr %.sroa.1449.0..sroa_idx, align 8
  %.sroa.2450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 33
  store i8 1, ptr %.sroa.2450.0..sroa_idx, align 1
  store ptr @.str.14, ptr %14, align 8
  %.sroa.2454.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 32
  store i8 3, ptr %.sroa.2454.0..sroa_idx, align 8
  %.sroa.4455.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 33
  store i8 1, ptr %.sroa.4455.0..sroa_idx, align 1
  store i1 true, ptr @_ZL8HadError, align 1
  %i.eg = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4errsEv() #30
  %.sroa.0.0.copyload.i = load ptr, ptr @_ZL8ToolName.0, align 8, !tbaa !40
  %.sroa.2.0.copyload.i = load i64, ptr @_ZL8ToolName.1, align 8, !tbaa !41
  %i.eh = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm9WithColor5errorERNS_11raw_ostreamENS_9StringRefEb(ptr noundef nonnull align 8 dereferenceable(48) %i.eg, ptr %.sroa.0.0.copyload.i, i64 %.sroa.2.0.copyload.i, i1 noundef zeroext false) #30 ; 5 uses
  call void @_ZNK4llvm5Twine5printERNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(34) %13, ptr noundef nonnull align 8 dereferenceable(48) %i.eh) #30
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 24
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !53
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eh, i64 32 ; 3 uses
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !54 ; 2 uses
  %i.em = ptrtoint ptr %i.ej to i64
  %i.en = ptrtoint ptr %i.el to i64
  %i.eo = sub i64 %i.em, %i.en
  %i.ep = icmp ult i64 %i.eo, 2
  br i1 %i.ep, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit124.thread523
  %i.eq = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.eh, ptr noundef nonnull @.str.95, i64 noundef 2) #30
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit.i

bb.q:                                             ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit124.thread523
  store i16 8250, ptr %i.el, align 1
  %i.er = load ptr, ptr %i.ek, align 8, !tbaa !54
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 2
  store ptr %i.es, ptr %i.ek, align 8, !tbaa !54
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit.i

_ZN4llvm11raw_ostreamlsEPKc.exit.i:               ; preds = %bb.q, %bb.p
  %.0.i.i.i = phi ptr [ %i.eq, %bb.p ], [ %i.eh, %bb.q ] ; 4 uses
  call void @_ZNK4llvm5Twine5printERNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(34) %14, ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i.i) #30
  %i.et = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 24
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !53
  %i.ev = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 32 ; 3 uses
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !54 ; 2 uses
  %i.ex = icmp eq ptr %i.eu, %i.ew
  br i1 %i.ex, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit.i
  %i.ey = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i.i, ptr noundef nonnull @.str.96, i64 noundef 1) #30 ; 0 uses
  br label %_ZL5errorN4llvm5TwineES0_.exit

bb.s:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit.i
  store i8 10, ptr %i.ew, align 1
  %i.ez = load ptr, ptr %i.ev, align 8, !tbaa !54
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 1
  store ptr %i.fa, ptr %i.ev, align 8, !tbaa !54
  br label %_ZL5errorN4llvm5TwineES0_.exit

_ZL5errorN4llvm5TwineES0_.exit:                   ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  br label %bb.t

bb.t:                                             ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit119.thread, %_ZL5errorN4llvm5TwineES0_.exit, %_ZN4llvmeqENS_9StringRefES0_.exit124.thread, %_ZN4llvmeqENS_9StringRefES0_.exit114.thread
  %i.fb = call fastcc noundef ptr @_ZNK4llvm3opt7ArgList10getLastArgIJN12_GLOBAL__N_12IDEEEEPNS0_3ArgEDpT_(ptr noundef nonnull align 8 dereferenceable(176) %20, i32 noundef 53)
  %i.fc = icmp ne ptr %i.fb, null
  %i.fd = zext i1 %i.fc to i8
  store i8 %i.fd, ptr @_ZL8SizeSort, align 1, !tbaa !55
  %i.fe = call fastcc noundef ptr @_ZNK4llvm3opt7ArgList10getLastArgIJN12_GLOBAL__N_12IDEEEEPNS0_3ArgEDpT_(ptr noundef nonnull align 8 dereferenceable(176) %20, i32 noundef 54)
  %i.ff = icmp ne ptr %i.fe, null
  %i.fg = zext i1 %i.ff to i8
  store i8 %i.fg, ptr @_ZL11SpecialSyms, align 1, !tbaa !55
  %i.fh = call fastcc noundef ptr @_ZNK4llvm3opt7ArgList10getLastArgIJN12_GLOBAL__N_12IDEEEEPNS0_3ArgEDpT_(ptr noundef nonnull align 8 dereferenceable(176) %20, i32 noundef 58)
  %i.fi = icmp ne ptr %i.fh, null
  %i.fj = zext i1 %i.fi to i8
  store i8 %i.fj, ptr @_ZL13UndefinedOnly, align 1, !tbaa !55
  %i.fk = call fastcc noundef ptr @_ZNK4llvm3opt7ArgList10getLastArgIJN12_GLOBAL__N_12IDEEEEPNS0_3ArgEDpT_(ptr noundef nonnull align 8 dereferenceable(176) %20, i32 noundef 64)
  %i.fl = icmp ne ptr %i.fk, null
  %i.fm = zext i1 %i.fl to i8
  store i8 %i.fm, ptr @_ZL14WithoutAliases, align 1, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #30
  call void @_ZN4llvm3sys16getProcessTripleB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %28) #30
  call void @_ZN4llvm6TripleC1EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %27, ptr noundef nonnull align 8 dereferenceable(32) %28) #30
  %i.fn = load ptr, ptr %28, align 8, !tbaa !49   ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 2 uses
  %i.fp = icmp eq ptr %i.fn, %i.fo
  br i1 %i.fp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125: ; preds = %bb.t
  %i.fq = load i64, ptr %i.fo, align 8, !tbaa !42
  %i.fr = add i64 %i.fq, 1
  call void @_ZdlPvm(ptr noundef %i.fn, i64 noundef %i.fr) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #30
  %i.fs = getelementptr inbounds nuw i8, ptr %27, i64 44
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !63
  %i.fu = icmp eq i32 %i.ft, 19
  br i1 %i.fu, label %bb.u, label %_ZN4llvm12StringSwitchIN12_GLOBAL__N_19BitModeTyES2_E4CaseENS_13StringLiteralES2_.exit157

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127
  %i.fv = call ptr @getenv(ptr noundef nonnull @.str.15) #30 ; 8 uses
  %.not.i128 = icmp eq ptr %i.fv, null
  br i1 %.not.i128, label %.thread565, label %_ZN4llvm9StringRefC2EPKc.exit130

_ZN4llvm9StringRefC2EPKc.exit130:                 ; preds = %bb.u
  %i.fw = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fv) #30
  switch i64 %i.fw, label %_ZN4llvm12StringSwitchIN12_GLOBAL__N_19BitModeTyES2_E4CaseENS_13StringLiteralES2_.exit157 [
    i64 2, label %bb.v
    i64 5, label %bb.x
    i64 3, label %bb.y
  ]

bb.v:                                             ; preds = %_ZN4llvm9StringRefC2EPKc.exit130
  %i.fx = load i16, ptr %i.fv, align 1
  %i.fy = icmp ne i16 %i.fx, 12851
  %i.fz = zext i1 %i.fy to i32
  %.not.i.i = icmp eq i32 %i.fz, 0
  br i1 %.not.i.i, label %_ZN4llvm12StringSwitchIN12_GLOBAL__N_19BitModeTyES2_E4CaseENS_13StringLiteralES2_.exit157, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ga = load i16, ptr %i.fv, align 1
  %i.gb = icmp ne i16 %i.ga, 13366
  %i.gc = zext i1 %i.gb to i32
  %.not.i.i137 = icmp eq i32 %i.gc, 0
  br i1 %.not.i.i137, label %_ZN4llvm12StringSwitchIN12_GLOBAL__N_19BitModeTyES2_E4CaseENS_13StringLiteralES2_.exit157, label %.thread565

bb.x:                                             ; preds = %_ZN4llvm9StringRefC2EPKc.exit130
  %i.gd = load i32, ptr %i.fv, align 1
  %i.ge = xor i32 %i.gd, 912208435
  %i.gf = getelementptr i8, ptr %i.fv, i64 4
  %i.gg = load i8, ptr %i.gf, align 1
  %i.gh = zext i8 %i.gg to i32
  %i.gi = xor i32 %i.gh, 52
  %i.gj = or i32 %i.ge, %i.gi
  %i.gk = icmp ne i32 %i.gj, 0
  %i.gl = zext i1 %i.gk to i32
  %.not.i.i146 = icmp eq i32 %i.gl, 0
  br i1 %.not.i.i146, label %_ZN4llvm12StringSwitchIN12_GLOBAL__N_19BitModeTyES2_E4CaseENS_13StringLiteralES2_.exit157, label %.thread565

.thread565:                                       ; preds = %bb.x, %bb.u, %bb.w
  br label %_ZN4llvm12StringSwitchIN12_GLOBAL__N_19BitModeTyES2_E4CaseENS_13StringLiteralES2_.exit157

bb.y:                                             ; preds = %_ZN4llvm9StringRefC2EPKc.exit130
  %i.gm = load i16, ptr %i.fv, align 1
  %i.gn = xor i16 %i.gm, 28257
  %i.go = getelementptr i8, ptr %i.fv, i64 2
  %i.gp = load i8, ptr %i.go, align 1
  %i.gq = zext i8 %i.gp to i16
  %i.gr = xor i16 %i.gq, 121
  %i.gs = or i16 %i.gn, %i.gr
  %i.gt = icmp ne i16 %i.gs, 0
  %i.gu = zext i1 %i.gt to i32
  %.not.i.i155 = icmp eq i32 %i.gu, 0
  %i.gv = select i1 %.not.i.i155, i32 3, i32 0
  br label %_ZN4llvm12StringSwitchIN12_GLOBAL__N_19BitModeTyES2_E4CaseENS_13StringLiteralES2_.exit157

_ZN4llvm12StringSwitchIN12_GLOBAL__N_19BitModeTyES2_E4CaseENS_13StringLiteralES2_.exit157: ; preds = %.thread565, %bb.x, %bb.y, %_ZN4llvm9StringRefC2EPKc.exit130, %bb.v, %bb.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127
  %storemerge = phi i32 [ 3, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127 ], [ 0, %.thread565 ], [ 2, %bb.x ], [ %i.gv, %bb.y ], [ 0, %_ZN4llvm9StringRefC2EPKc.exit130 ], [ 1, %bb.w ], [ 0, %bb.v ]
  store i32 %storemerge, ptr @_ZL7BitMode, align 4, !tbaa !42
  %i.gw = call fastcc noundef ptr @_ZNK4llvm3opt7ArgList10getLastArgIJN12_GLOBAL__N_12IDEEEEPNS0_3ArgEDpT_(ptr noundef nonnull align 8 dereferenceable(176) %20, i32 noundef 66) ; 2 uses
  %.not71 = icmp eq ptr %i.gw, null
  br i1 %.not71, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_ZN4llvm12StringSwitchIN12_GLOBAL__N_19BitModeTyES2_E4CaseENS_13StringLiteralES2_.exit157
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 48
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !26
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !40 ; 6 uses
  %.not.i158 = icmp eq ptr %i.gz, null
  br i1 %.not.i158, label %_ZN4llvmeqENS_9StringRefES0_.exit180.thread588, label %_ZN4llvm9StringRefC2EPKc.exit160

_ZN4llvm9StringRefC2EPKc.exit160:                 ; preds = %bb.z
  %i.ha = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.gz) #30 ; 3 uses
  switch i64 %i.ha, label %_ZN4llvmeqENS_9StringRefES0_.exit180.thread588 [
    i64 2, label %_ZN4llvmeqENS_9StringRefES0_.exit165
    i64 5, label %_ZN4llvmeqENS_9StringRefES0_.exit175
    i64 3, label %_ZN4llvmeqENS_9StringRefES0_.exit180
  ]

_ZN4llvmeqENS_9StringRefES0_.exit165:             ; preds = %_ZN4llvm9StringRefC2EPKc.exit160
  %i.hb = load i16, ptr %i.gz, align 1
  %i.hc = icmp ne i16 %i.hb, 12851
  %i.hd = zext i1 %i.hc to i32
  %i.he = icmp eq i32 %i.hd, 0
  br i1 %i.he, label %_ZN4llvmeqENS_9StringRefES0_.exit165.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit170

_ZN4llvmeqENS_9StringRefES0_.exit165.thread:      ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit165
  store i32 0, ptr @_ZL7BitMode, align 4, !tbaa !42
  br label %bb.aa

_ZN4llvmeqENS_9StringRefES0_.exit170:             ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit165
  %i.hf = load i16, ptr %i.gz, align 1
  %i.hg = icmp ne i16 %i.hf, 13366
  %i.hh = zext i1 %i.hg to i32
  %i.hi = icmp eq i32 %i.hh, 0
  br i1 %i.hi, label %_ZN4llvmeqENS_9StringRefES0_.exit170.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit180.thread588

_ZN4llvmeqENS_9StringRefES0_.exit170.thread:      ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit170
  store i32 1, ptr @_ZL7BitMode, align 4, !tbaa !42
  br label %bb.aa

_ZN4llvmeqENS_9StringRefES0_.exit175:             ; preds = %_ZN4llvm9StringRefC2EPKc.exit160
  %bcmp.i174 = call i32 @bcmp(ptr nonnull %i.gz, ptr nonnull @.str.18, i64 %i.ha)
  %i.hj = icmp eq i32 %bcmp.i174, 0
  br i1 %i.hj, label %_ZN4llvmeqENS_9StringRefES0_.exit175.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit180.thread588

_ZN4llvmeqENS_9StringRefES0_.exit175.thread:      ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit175
  store i32 2, ptr @_ZL7BitMode, align 4, !tbaa !42
  br label %bb.aa

_ZN4llvmeqENS_9StringRefES0_.exit180:             ; preds = %_ZN4llvm9StringRefC2EPKc.exit160
  %bcmp.i179 = call i32 @bcmp(ptr nonnull %i.gz, ptr nonnull @.str.19, i64 %i.ha)
  %i.hk = icmp eq i32 %bcmp.i179, 0
  br i1 %i.hk, label %_ZN4llvmeqENS_9StringRefES0_.exit180.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit180.thread588

_ZN4llvmeqENS_9StringRefES0_.exit180.thread:      ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit180
  store i32 3, ptr @_ZL7BitMode, align 4, !tbaa !42
  br label %bb.aa

_ZN4llvmeqENS_9StringRefES0_.exit180.thread588:   ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit175, %_ZN4llvmeqENS_9StringRefES0_.exit170, %bb.z, %_ZN4llvm9StringRefC2EPKc.exit160, %_ZN4llvmeqENS_9StringRefES0_.exit180
  %i.hl = getelementptr inbounds nuw i8, ptr %29, i64 32
  %i.hm = getelementptr inbounds nuw i8, ptr %29, i64 33
  store i8 1, ptr %i.hm, align 1, !tbaa !46
  store ptr @.str.20, ptr %29, align 8, !tbaa !42
  store i8 3, ptr %i.hl, align 8, !tbaa !45
  %i.hn = getelementptr inbounds nuw i8, ptr %30, i64 32
  store i8 1, ptr %i.hn, align 8, !tbaa !45
  %i.ho = getelementptr inbounds nuw i8, ptr %30, i64 33
  store i8 1, ptr %i.ho, align 1, !tbaa !46
  call fastcc void @_ZL5errorN4llvm5TwineES0_(ptr noundef nonnull byval(%"class.llvm::Twine") align 8 %29, ptr noundef nonnull byval(%"class.llvm::Twine") align 8 %30)
  br label %bb.aa

bb.aa:                                            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit165.thread, %_ZN4llvmeqENS_9StringRefES0_.exit175.thread, %_ZN4llvmeqENS_9StringRefES0_.exit180.thread588, %_ZN4llvmeqENS_9StringRefES0_.exit180.thread, %_ZN4llvmeqENS_9StringRefES0_.exit170.thread, %_ZN4llvm12StringSwitchIN12_GLOBAL__N_19BitModeTyES2_E4CaseENS_13StringLiteralES2_.exit157
  %i.hp = call fastcc noundef ptr @_ZNK4llvm3opt7ArgList10getLastArgIJN12_GLOBAL__N_12IDEEEEPNS0_3ArgEDpT_(ptr noundef nonnull align 8 dereferenceable(176) %20, i32 noundef 67)
  %i.hq = icmp ne ptr %i.hp, null
  %i.hr = zext i1 %i.hq to i8
  store i8 %i.hr, ptr @_ZL16FormatMachOasHex, align 1, !tbaa !55
  %i.hs = call fastcc noundef ptr @_ZNK4llvm3opt7ArgList10getLastArgIJN12_GLOBAL__N_12IDEEEEPNS0_3ArgEDpT_(ptr noundef nonnull align 8 dereferenceable(176) %20, i32 noundef 5)
  %i.ht = icmp ne ptr %i.hs, null
  %i.hu = zext i1 %i.ht to i8
  store i8 %i.hu, ptr @_ZL11AddDyldInfo, align 1, !tbaa !55
  %i.hv = call fastcc noundef ptr @_ZNK4llvm3opt7ArgList10getLastArgIJN12_GLOBAL__N_12IDEEEEPNS0_3ArgEDpT_(ptr noundef nonnull align 8 dereferenceable(176) %20, i32 noundef 6)
  %i.hw = icmp ne ptr %i.hv, null
  %i.hx = zext i1 %i.hw to i8
  store i8 %i.hx, ptr @_ZL14AddInlinedInfo, align 1, !tbaa !55
  %i.hy = call fastcc noundef ptr @_ZNK4llvm3opt7ArgList10getLastArgIJN12_GLOBAL__N_12IDEEEEPNS0_3ArgEDpT_(ptr noundef nonnull align 8 dereferenceable(176) %20, i32 noundef 16)
  %i.hz = icmp ne ptr %i.hy, null
  %i.ia = zext i1 %i.hz to i8
  store i8 %i.ia, ptr @_ZL12DyldInfoOnly, align 1, !tbaa !55
  %i.ib = call fastcc noundef ptr @_ZNK4llvm3opt7ArgList10getLastArgIJN12_GLOBAL__N_12IDEEEEPNS0_3ArgEDpT_(ptr noundef nonnull align 8 dereferenceable(176) %20, i32 noundef 34)
  %i.ic = icmp ne ptr %i.ib, null
  %i.id = zext i1 %i.ic to i8
  store i8 %i.id, ptr @_ZL10NoDyldInfo, align 1, !tbaa !55
  %i.ie = call fastcc noundef ptr @_ZNK4llvm3opt7ArgList10getLastArgIJN12_GLOBAL__N_12IDEEEEPNS0_3ArgEDpT_(ptr noundef nonnull align 8 dereferenceable(176) %20, i32 noundef 36)
  %i.if = icmp ne ptr %i.ie, null
  %i.ig = zext i1 %i.if to i8
  store i8 %i.ig, ptr @_ZL6NoRsrc, align 1, !tbaa !55
  %i.ih = call { i32, ptr } @_ZN4llvm3sys19ChangeStdinToBinaryEv() #30 ; 2 uses
  %i.ii = extractvalue { i32, ptr } %i.ih, 0
  %i.ij = extractvalue { i32, ptr } %i.ih, 1
  %i.ik = getelementptr inbounds nuw i8, ptr %31, i64 32
  store i8 1, ptr %i.ik, align 8, !tbaa !45
  %i.il = getelementptr inbounds nuw i8, ptr %31, i64 33
  store i8 1, ptr %i.il, align 1, !tbaa !46
  %i.im = call fastcc noundef zeroext i1 @_ZL5errorSt10error_codeN4llvm5TwineE(i32 %i.ii, ptr %i.ij, ptr noundef nonnull byval(%"class.llvm::Twine") align 8 %31)
  br i1 %i.im, label %bb.dw, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @_ZN4llvm24InitializeAllTargetInfosEv()
  call void @_ZN4llvm22InitializeAllTargetMCsEv()
  call void @LLVMInitializeAArch64AsmParser() #30
  call void @LLVMInitializeAMDGPUAsmParser() #30
  call void @LLVMInitializeARMAsmParser() #30
  call void @LLVMInitializeAVRAsmParser() #30
  call void @LLVMInitializeBPFAsmParser() #30
  call void @LLVMInitializeHexagonAsmParser() #30
  call void @LLVMInitializeLanaiAsmParser() #30
  call void @LLVMInitializeLoongArchAsmParser() #30
  call void @LLVMInitializeMipsAsmParser() #30
  call void @LLVMInitializeMSP430AsmParser() #30
  call void @LLVMInitializePowerPCAsmParser() #30
  call void @LLVMInitializeRISCVAsmParser() #30
  call void @LLVMInitializeSparcAsmParser() #30
  call void @LLVMInitializeSystemZAsmParser() #30
  call void @LLVMInitializeVEAsmParser() #30
  call void @LLVMInitializeWebAssemblyAsmParser() #30
  call void @LLVMInitializeX86AsmParser() #30
  %i.in = load i8, ptr @_ZL8SizeSort, align 1, !tbaa !55, !range !64, !noundef !65
  %i.io = trunc nuw i8 %i.in to i1                ; 2 uses
  %.not = xor i1 %i.io, true
  %i.ip = load i8, ptr @_ZL9PrintSize, align 1, !range !64
  %i.iq = trunc nuw i8 %i.ip to i1
  %or.cond = select i1 %.not, i1 true, i1 %i.iq
  br i1 %or.cond, label %bb.ac, label %.thread590

.thread590:                                       ; preds = %bb.ab
  store i1 true, ptr @_ZL12PrintAddress, align 1
  br label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ir = load i32, ptr @_ZL12OutputFormat, align 4, !tbaa !42
  %i.is = icmp eq i32 %i.ir, 1
  %or.cond3 = or i1 %i.is, %i.io
  br i1 %or.cond3, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %.thread590, %bb.ac
  store i8 1, ptr @_ZL9PrintSize, align 1, !tbaa !55
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #30, !noalias !272
  store i32 7, ptr %12, align 4, !noalias !272
  %i.it = call i64 @_ZNK4llvm3opt7ArgList8getRangeESt16initializer_listINS0_12OptSpecifierEE(ptr noundef nonnull align 8 dereferenceable(176) %20, ptr nonnull %12, i64 1) #30, !noalias !272 ; 2 uses
  %.sroa.4.0.extract.shift.i = lshr i64 %i.it, 32 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30, !noalias !272
  %i.iu = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !26, !noalias !272 ; 2 uses
  %i.iw = and i64 %i.it, 4294967295               ; 2 uses
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %i.iv, i64 %i.iw ; 2 uses
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.iv, i64 %.sroa.4.0.extract.shift.i ; 5 uses
  %.not26.i.i.i = icmp samesign eq i64 %i.iw, %.sroa.4.0.extract.shift.i
  br i1 %.not26.i.i.i, label %_ZNK4llvm3opt7ArgList8filteredIJN12_GLOBAL__N_12IDEEEENS_14iterator_rangeINS0_12arg_iteratorIPKPNS0_3ArgEXsZT_EEEEEDpT_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ae, %.thread21.i.i.i
  %.sroa.024.0.i = phi ptr [ %i.jb, %.thread21.i.i.i ], [ %i.ix, %bb.ae ] ; 3 uses
  %i.iz = load ptr, ptr %.sroa.024.0.i, align 8, !tbaa !67, !noalias !272 ; 2 uses
  %.not14.i.i.i = icmp eq ptr %i.iz, null
  br i1 %.not14.i.i.i, label %.thread21.i.i.i, label %.preheader.preheader.i.i.i

.preheader.preheader.i.i.i:                       ; preds = %.lr.ph.i.i.i
  %i.ja = call noundef zeroext i1 @_ZNK4llvm3opt6Option7matchesENS0_12OptSpecifierE(ptr noundef nonnull align 8 dereferenceable(16) %i.iz, i32 7) #30, !noalias !272
  br i1 %i.ja, label %_ZNK4llvm3opt7ArgList8filteredIJN12_GLOBAL__N_12IDEEEENS_14iterator_rangeINS0_12arg_iteratorIPKPNS0_3ArgEXsZT_EEEEEDpT_.exit, label %.thread21.i.i.i

.thread21.i.i.i:                                  ; preds = %.preheader.preheader.i.i.i, %.lr.ph.i.i.i
  %i.jb = getelementptr inbounds nuw i8, ptr %.sroa.024.0.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.jb, %i.iy
  br i1 %.not.i.i.i, label %._crit_edge635, label %.lr.ph.i.i.i, !llvm.loop !0

_ZNK4llvm3opt7ArgList8filteredIJN12_GLOBAL__N_12IDEEEENS_14iterator_rangeINS0_12arg_iteratorIPKPNS0_3ArgEXsZT_EEEEEDpT_.exit: ; preds = %.preheader.preheader.i.i.i, %bb.ae
  %.sroa.024.1.i = phi ptr [ %i.ix, %bb.ae ], [ %.sroa.024.0.i, %.preheader.preheader.i.i.i ] ; 2 uses
  %.not615632 = icmp eq ptr %.sroa.024.1.i, %i.iy
  br i1 %.not615632, label %._crit_edge635, label %.lr.ph634

.lr.ph634:                                        ; preds = %_ZNK4llvm3opt7ArgList8filteredIJN12_GLOBAL__N_12IDEEEENS_14iterator_rangeINS0_12arg_iteratorIPKPNS0_3ArgEXsZT_EEEEEDpT_.exit
  %i.jc = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %32, i64 8 ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %32, i64 12
  %i.jf = getelementptr inbounds nuw i8, ptr %33, i64 32
  %i.jg = getelementptr inbounds nuw i8, ptr %33, i64 33
  %i.jh = getelementptr inbounds nuw i8, ptr %33, i64 16
  %i.ji = getelementptr inbounds nuw i8, ptr %33, i64 24
  %.sroa.2329.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 32
  %.sroa.4330.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 33
  %.sroa.5340.0..sroa_idx343 = getelementptr inbounds nuw i8, ptr %10, i64 16
  %.sroa.7.0..sroa_idx352 = getelementptr inbounds nuw i8, ptr %10, i64 32
  %.sroa.9354.0..sroa_idx357 = getelementptr inbounds nuw i8, ptr %10, i64 33
  br label %bb.af

end_hunk_0
