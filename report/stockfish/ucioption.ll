Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stockfish/original/ucioption?download=true
inline.NumInlined: 550
inline.NumDeleted: 241
begin_hunk_0_@_ZN9Stockfish6OptionaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  store i32 %i.bz, ptr %i.bk, align 4, !tbaa !75
  br label %_ZNSt7__cxx114stoiERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPmi.exit29

_ZNSt7__cxx114stoiERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPmi.exit29: ; preds = %bb.i, %bb.j
  %i.ci = trunc nsw i64 %i.ca to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !82
  %i.cl = icmp slt i32 %i.ck, %i.ci
  br i1 %i.cl, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit24.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit26.thread58

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit26.thread58: ; preds = %_ZNSt7__cxx114stoiERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPmi.exit29
  %.pre = load i64, ptr %i.f, align 8, !tbaa !17  ; 2 uses
  %i.cm = icmp eq i64 %.pre, 5
  br i1 %i.cm, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit31, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit31.thread59

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit31: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit24, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit22, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit26.thread58
  %i.cn = load ptr, ptr %i.e, align 8, !tbaa !11  ; 2 uses
  %i.co = load i32, ptr %i.cn, align 1
  %i.cp = xor i32 %i.co, 1651339107
  %i.cq = getelementptr i8, ptr %i.cn, i64 4
  %i.cr = load i8, ptr %i.cq, align 1
  %i.cs = zext i8 %i.cr to i32
  %i.ct = xor i32 %i.cs, 111
  %i.cu = or i32 %i.cp, %i.ct
  %i.cv = icmp ne i32 %i.cu, 0
  %i.cw = zext i1 %i.cv to i32
  %i.cx = icmp eq i32 %i.cw, 0
  br i1 %i.cx, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit31.thread, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit46.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit31.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit31
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  store i32 0, ptr %i.cy, align 8, !tbaa !83
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr null, ptr %i.cz, align 8, !tbaa !66
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.cy, ptr %i.da, align 8, !tbaa !84
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.cy, ptr %i.db, align 8, !tbaa !85
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.dc, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.dd = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.dd, ptr %3, align 8, !tbaa !26
  %i.de = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.de, align 8, !tbaa !17
  store i8 0, ptr %i.dd, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.df = getelementptr inbounds nuw i8, ptr %4, i64 120 ; 4 uses
  call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.df) #22
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 16), ptr %i.df, align 8, !tbaa !27
  %i.dg = getelementptr inbounds nuw i8, ptr %4, i64 336
  store ptr null, ptr %i.dg, align 8, !tbaa !86
  %i.dh = getelementptr inbounds nuw i8, ptr %4, i64 344
  store i8 0, ptr %i.dh, align 8, !tbaa !87
  %i.di = getelementptr inbounds nuw i8, ptr %4, i64 345
  store i8 0, ptr %i.di, align 1, !tbaa !88
  %i.dj = getelementptr inbounds nuw i8, ptr %4, i64 352
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dj, i8 0, i64 32, i1 false)
  %i.dk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 8), align 8 ; 3 uses
  store ptr %i.dk, ptr %4, align 8, !tbaa !27
  %i.dl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  %i.dm = getelementptr i8, ptr %i.dk, i64 -24    ; 2 uses
  %i.dn = load i64, ptr %i.dm, align 8
  %i.do = getelementptr inbounds i8, ptr %4, i64 %i.dn
  store ptr %i.dl, ptr %i.do, align 8, !tbaa !27
  %i.dp = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 0, ptr %i.dp, align 8, !tbaa !89
  %i.dq = load ptr, ptr %4, align 8, !tbaa !27
  %i.dr = getelementptr i8, ptr %i.dq, i64 -24
  %i.ds = load i64, ptr %i.dr, align 8
  %i.dt = getelementptr inbounds i8, ptr %4, i64 %i.ds
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.dt, ptr noundef null) #22
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 24), ptr %4, align 8, !tbaa !27
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 64), ptr %i.df, align 8, !tbaa !27
  %i.du = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  call void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEC2ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(104) %i.du, ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 8)
  %i.dv = load ptr, ptr %4, align 8, !tbaa !27
  %i.dw = getelementptr i8, ptr %i.dv, i64 -24
  %i.dx = load i64, ptr %i.dw, align 8
  %i.dy = getelementptr inbounds i8, ptr %4, i64 %i.dx
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.dy, ptr noundef nonnull %i.du) #22
  %i.dz = call noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(32) %3) #22 ; 2 uses
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !27
  %i.eb = getelementptr i8, ptr %i.ea, i64 -24
  %i.ec = load i64, ptr %i.eb, align 8
  %i.ed = getelementptr inbounds i8, ptr %i.dz, i64 %i.ec
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 32
  %i.ef = load i32, ptr %i.ee, align 8, !tbaa !29
  %i.eg = and i32 %i.ef, 5
  %.not.i71 = icmp eq i32 %i.eg, 0
  br i1 %.not.i71, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit31.thread
  %i.eh = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ej = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 4 uses
  %i.el = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.em = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %5, i64 80 ; 4 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.ep = getelementptr inbounds nuw i8, ptr %5, i64 86
  %i.eq = getelementptr inbounds nuw i8, ptr %5, i64 96
  %i.er = getelementptr inbounds nuw i8, ptr %5, i64 100
  %i.es = getelementptr inbounds nuw i8, ptr %5, i64 112 ; 3 uses
  %i.et = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.eu = getelementptr inbounds nuw i8, ptr %5, i64 128
  br label %_ZN9Stockfish6OptionC2ESt8functionIFSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEERKS0_EE.exit

_ZN9Stockfish6OptionC2ESt8functionIFSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEERKS0_EE.exit: ; preds = %_ZNSt14_Function_baseD2Ev.exit, %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, i8 0, i64 32, i1 false)
  store ptr %i.eh, ptr %5, align 8, !tbaa !26
  store i64 0, ptr %i.ei, align 8, !tbaa !17
  store i8 0, ptr %i.eh, align 8, !tbaa !18
  store ptr %i.ek, ptr %i.ej, align 8, !tbaa !26
  store i64 0, ptr %i.el, align 8, !tbaa !17
  store i8 0, ptr %i.ek, align 8, !tbaa !18
  store ptr %i.en, ptr %i.em, align 8, !tbaa !26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.en, ptr noundef nonnull align 1 dereferenceable(6) @.str.10, i64 6, i1 false)
  store i64 6, ptr %i.eo, align 8, !tbaa !17
  store i8 0, ptr %i.ep, align 2, !tbaa !18
  store i32 0, ptr %i.eq, align 8, !tbaa !78
  store i32 0, ptr %i.er, align 4, !tbaa !82
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.es, i8 0, i64 40, i1 false)
  call void @_ZN9Stockfish10OptionsMap3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(152) %5)
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !22 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ev, null
  br i1 %.not.i.i, label %_ZNSt14_Function_baseD2Ev.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZN9Stockfish6OptionC2ESt8functionIFSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEERKS0_EE.exit
  %i.ew = call noundef zeroext i1 %i.ev(ptr noundef nonnull align 8 dereferenceable(32) %i.es, ptr noundef nonnull align 8 dereferenceable(32) %i.es, i32 noundef 3) #22, !inline_history !91 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit.i

_ZNSt14_Function_baseD2Ev.exit.i:                 ; preds = %bb.k, %_ZN9Stockfish6OptionC2ESt8functionIFSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEERKS0_EE.exit
  %i.ex = load ptr, ptr %i.em, align 8, !tbaa !11 ; 2 uses
  %i.ey = icmp eq ptr %i.ex, %i.en
  br i1 %i.ey, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit.i
  %i.ez = load i64, ptr %i.en, align 8, !tbaa !18
  %i.fa = add i64 %i.ez, 1
  call void @_ZdlPvm(ptr noundef %i.ex, i64 noundef %i.fa) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.fb = load ptr, ptr %i.ej, align 8, !tbaa !11 ; 2 uses
  %i.fc = icmp eq ptr %i.fb, %i.ek
  br i1 %i.fc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.fd = load i64, ptr %i.ek, align 8, !tbaa !18
  %i.fe = add i64 %i.fd, 1
  call void @_ZdlPvm(ptr noundef %i.fb, i64 noundef %i.fe) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.ff = load ptr, ptr %5, align 8, !tbaa !11    ; 2 uses
  %i.fg = icmp eq ptr %i.ff, %i.eh
  br i1 %i.fg, label %_ZN9Stockfish6OptionD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i
  %i.fh = load i64, ptr %i.eh, align 8, !tbaa !18
  %i.fi = add i64 %i.fh, 1
  call void @_ZdlPvm(ptr noundef %i.ff, i64 noundef %i.fi) #24
  br label %_ZN9Stockfish6OptionD2Ev.exit

_ZN9Stockfish6OptionD2Ev.exit:                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  %i.fj = load ptr, ptr %i.et, align 8, !tbaa !22 ; 2 uses
  %.not.i32 = icmp eq ptr %i.fj, null
  br i1 %.not.i32, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN9Stockfish6OptionD2Ev.exit
  %i.fk = call noundef zeroext i1 %i.fj(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 3) #22, !inline_history !92 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZN9Stockfish6OptionD2Ev.exit, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.fl = call noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(32) %3) #22 ; 2 uses
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !27
  %i.fn = getelementptr i8, ptr %i.fm, i64 -24
  %i.fo = load i64, ptr %i.fn, align 8
  %i.fp = getelementptr inbounds i8, ptr %i.fl, i64 %i.fo
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 32
  %i.fr = load i32, ptr %i.fq, align 8, !tbaa !29
  %i.fs = and i32 %i.fr, 5
  %.not.i = icmp eq i32 %i.fs, 0
  br i1 %.not.i, label %_ZN9Stockfish6OptionC2ESt8functionIFSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEERKS0_EE.exit, label %._crit_edge, !llvm.loop !93

._crit_edge:                                      ; preds = %_ZNSt14_Function_baseD2Ev.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit31.thread
  %i.ft = call ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9Stockfish6OptionEESt10_Select1stISA_ENS8_19CaseInsensitiveLessESaISA_EE4findERS7_(ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %.not67 = icmp eq ptr %i.ft, %i.cy
  br i1 %.not67, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit34, label %bb.m

bb.m:                                             ; preds = %._crit_edge
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !17
  %i.fw = icmp eq i64 %i.fv, 3
  br i1 %i.fw, label %bb.n, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit34.thread60

bb.n:                                             ; preds = %bb.m
  %i.fx = load ptr, ptr %1, align 8, !tbaa !11    ; 2 uses
  %i.fy = load i16, ptr %i.fx, align 1
  %i.fz = xor i16 %i.fy, 24950
  %i.ga = getelementptr i8, ptr %i.fx, i64 2
  %i.gb = load i8, ptr %i.ga, align 1
  %i.gc = zext i8 %i.gb to i16
  %i.gd = xor i16 %i.gc, 114
  %i.ge = or i16 %i.fz, %i.gd
  %i.gf = icmp ne i16 %i.ge, 0
  %i.gg = zext i1 %i.gf to i32
  %10 = icmp eq i32 %i.gg, 0
  br i1 %10, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit34, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit34.thread60

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit34.thread60: ; preds = %bb.m, %bb.n
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit34

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit34: ; preds = %._crit_edge, %bb.n, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit34.thread60
  %.015 = phi i1 [ true, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit34.thread60 ], [ false, %bb.n ], [ false, %._crit_edge ]
  %i.gh = load ptr, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.gh, ptr %4, align 8, !tbaa !27
  %i.gi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.gj = getelementptr i8, ptr %i.gh, i64 -24
  %i.gk = load i64, ptr %i.gj, align 8
  %i.gl = getelementptr inbounds i8, ptr %4, i64 %i.gk
  store ptr %i.gi, ptr %i.gl, align 8, !tbaa !27
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.du, align 8, !tbaa !27
  %i.gm = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !11 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %4, i64 104 ; 2 uses
  %i.gp = icmp eq ptr %i.gn, %i.go
  br i1 %i.gp, label %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit34
  %i.gq = load i64, ptr %i.go, align 8, !tbaa !18
  %i.gr = add i64 %i.gq, 1
  call void @_ZdlPvm(ptr noundef %i.gn, i64 noundef %i.gr) #24
  br label %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit34, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.du, align 8, !tbaa !27
  %i.gs = getelementptr inbounds nuw i8, ptr %4, i64 72
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.gs) #22
  store ptr %i.dk, ptr %4, align 8, !tbaa !27
  %i.gt = load i64, ptr %i.dm, align 8
  %i.gu = getelementptr inbounds i8, ptr %4, i64 %i.gt
  store ptr %i.dl, ptr %i.gu, align 8, !tbaa !27
  store i64 0, ptr %i.dp, align 8, !tbaa !89
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.df) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.gv = load ptr, ptr %3, align 8, !tbaa !11    ; 2 uses
  %i.gw = icmp eq ptr %i.gv, %i.dd
  br i1 %i.gw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %i.gx = load i64, ptr %i.dd, align 8, !tbaa !18
  %i.gy = add i64 %i.gx, 1
  call void @_ZdlPvm(ptr noundef %i.gv, i64 noundef %i.gy) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.gz = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !22 ; 2 uses
  %.not.i.i35 = icmp eq ptr %i.ha, null
  br i1 %.not.i.i35, label %_ZN9Stockfish10OptionsMapD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.hb = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.hc = call noundef zeroext i1 %i.ha(ptr noundef nonnull align 8 dereferenceable(32) %i.hb, ptr noundef nonnull align 8 dereferenceable(32) %i.hb, i32 noundef 3) #22, !inline_history !94 ; 0 uses
  br label %_ZN9Stockfish10OptionsMapD2Ev.exit

_ZN9Stockfish10OptionsMapD2Ev.exit:               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.o
  %i.hd = load ptr, ptr %i.cz, align 8, !tbaa !66
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9Stockfish6OptionEESt10_Select1stISA_ENS8_19CaseInsensitiveLessESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef %i.hd)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br i1 %.015, label %_ZN9Stockfish10OptionsMapD2Ev.exit.thread-pre-split_crit_edge, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit24.thread

_ZN9Stockfish10OptionsMapD2Ev.exit.thread-pre-split_crit_edge: ; preds = %_ZN9Stockfish10OptionsMapD2Ev.exit
  %.pr.pre = load i64, ptr %i.f, align 8, !tbaa !17
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit31.thread59

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit31.thread59: ; preds = %_ZN9Stockfish10OptionsMapD2Ev.exit.thread-pre-split_crit_edge, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit26.thread58
  %i.he = phi i64 [ %.pr.pre, %_ZN9Stockfish10OptionsMapD2Ev.exit.thread-pre-split_crit_edge ], [ %.pre, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit26.thread58 ]
  %cond70 = icmp eq i64 %i.he, 6
  br i1 %cond70, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit38, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit46.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit38: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit20, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit31.thread59
  %i.hf = load ptr, ptr %i.e, align 8, !tbaa !11  ; 4 uses
  %i.hg = load i32, ptr %i.hf, align 1
  %i.hh = xor i32 %i.hg, 1769108595
  %i.hi = getelementptr i8, ptr %i.hf, i64 4
  %i.hj = load i16, ptr %i.hi, align 1
  %i.hk = zext i16 %i.hj to i32
  %i.hl = xor i32 %i.hk, 26478
  %i.hm = or i32 %i.hh, %i.hl
  %i.hn = icmp ne i32 %i.hm, 0
  %i.ho = zext i1 %i.hn to i32
  %i.hp = icmp eq i32 %i.ho, 0
  br i1 %i.hp, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit38.thread, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit46

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit38.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit38
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.hq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.hr = load i64, ptr %i.hq, align 8, !tbaa !17 ; 6 uses
  %i.hs = icmp eq i64 %i.hr, 7
  %.pre73 = load ptr, ptr %1, align 8, !tbaa !11  ; 4 uses
  br i1 %i.hs, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit40, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit40.thread61

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit40: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit38.thread
  %i.ht = load i32, ptr %.pre73, align 1
  %i.hu = xor i32 %i.ht, 1886217532
  %i.hv = getelementptr i8, ptr %.pre73, i64 3
  %i.hw = load i32, ptr %i.hv, align 1
  %i.hx = xor i32 %i.hw, 1048147056
  %i.hy = or i32 %i.hu, %i.hx
  %i.hz = icmp ne i32 %i.hy, 0
  %i.ia = zext i1 %i.hz to i32
  %i.ib = icmp eq i32 %i.ia, 0
  %i.ic = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store ptr %i.ic, ptr %7, align 8, !tbaa !26
  br i1 %i.ib, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit40.thread, label %._crit_edge.i.i41.thread

._crit_edge.i.i41.thread:                         ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i64 %i.hr, ptr %i.b, align 8, !tbaa !95
  br label %bb.r

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit40.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit40
  %i.id = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.id, align 8, !tbaa !17
  store i8 0, ptr %i.ic, align 8, !tbaa !18
  br label %bb.s

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit40.thread61: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit38.thread
  %i.ie = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store ptr %i.ie, ptr %7, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i64 %i.hr, ptr %i.b, align 8, !tbaa !95
  %i.if = icmp ugt i64 %i.hr, 15
  br i1 %i.if, label %bb.p, label %._crit_edge.i.i41

bb.p:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit40.thread61
  %i.ig = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) #22 ; 2 uses
  store ptr %i.ig, ptr %7, align 8, !tbaa !11
  %i.ih = load i64, ptr %i.b, align 8, !tbaa !95
  store i64 %i.ih, ptr %i.ie, align 8, !tbaa !18
  br label %._crit_edge.i.i41

._crit_edge.i.i41:                                ; preds = %bb.p, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit40.thread61
  %i.ii = phi ptr [ %i.ig, %bb.p ], [ %i.ie, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit40.thread61 ] ; 2 uses
  switch i64 %i.hr, label %bb.r [
    i64 1, label %bb.q
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.q:                                             ; preds = %._crit_edge.i.i41
  %i.ij = load i8, ptr %.pre73, align 1, !tbaa !18
  store i8 %i.ij, ptr %i.ii, align 1, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.r:                                             ; preds = %._crit_edge.i.i41.thread, %._crit_edge.i.i41
  %i.ik = phi ptr [ %i.ic, %._crit_edge.i.i41.thread ], [ %i.ii, %._crit_edge.i.i41 ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ik, ptr align 1 %.pre73, i64 %i.hr, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i41, %bb.q, %bb.r
  %i.il = load i64, ptr %i.b, align 8, !tbaa !95  ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.il, ptr %i.im, align 8, !tbaa !17
  %i.in = load ptr, ptr %7, align 8, !tbaa !11
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 %i.il
  store i8 0, ptr %i.io, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  br label %bb.s

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit40.thread
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ip, ptr noundef nonnull align 8 dereferenceable(32) %7) #22
  %i.iq = load ptr, ptr %7, align 8, !tbaa !11    ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.is = icmp eq ptr %i.iq, %i.ir
  br i1 %i.is, label %.critedge, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %bb.s
  %i.it = load i64, ptr %i.ir, align 8, !tbaa !18
  %i.iu = add i64 %i.it, 1
  call void @_ZdlPvm(ptr noundef %i.iq, i64 noundef %i.iu) #24
  br label %.critedge

.critedge:                                        ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit46.thread62

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit46: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit38
  %i.iv = load i32, ptr %i.hf, align 1
  %i.iw = xor i32 %i.iv, 1953789282
  %i.ix = getelementptr i8, ptr %i.hf, i64 4
  %i.iy = load i16, ptr %i.ix, align 1
  %i.iz = zext i16 %i.iy to i32
  %i.ja = xor i32 %i.iz, 28271
  %i.jb = or i32 %i.iw, %i.ja
  %i.jc = icmp ne i32 %i.jb, 0
  %i.jd = zext i1 %i.jc to i32
  %.not = icmp eq i32 %i.jd, 0
  br i1 %.not, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit46.thread62, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit46.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit46.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit26, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread53, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit31, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit31.thread59, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit46
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.je, ptr noundef nonnull align 8 dereferenceable(32) %1) #22
  br label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit46.thread62

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit46.thread62: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit46, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit46.thread, %.critedge
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !22
  %.not.i.i47.not = icmp eq ptr %i.jg, null
  br i1 %.not.i.i47.not, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit24.thread, label %_ZNKSt8functionIFSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEERKN9Stockfish6OptionEEEclESB_.exit

_ZNKSt8functionIFSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEERKN9Stockfish6OptionEEEclESB_.exit: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit46.thread62
end_hunk_0
begin_hunk_1_@_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9Stockfish6OptionEESt10_Select1stISA_ENS8_19CaseInsensitiveLessESaISA_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESK_IJEEEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_:bb.a
  %or.cond.not = icmp eq i32 %i.aw, %i.au
  br i1 %or.cond.not, label %bb.g, label %.thread.loopexit

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.015.021.i.i.i.i.i, i64 1 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.011.020.i.i.i.i.i, i64 1
  %.not.i.i.i.i.i = icmp eq ptr %i.ax, %spec.select.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !19

._crit_edge.i.i.i.i.i:                            ; preds = %bb.g, %bb.f
  %.sroa.011.0.lcssa.i.i.i.i.i = phi ptr [ %i.an, %bb.f ], [ %scevgep.i.i.i.i.i, %bb.g ]
  %i.az = icmp ne ptr %.sroa.011.0.lcssa.i.i.i.i.i, %i.aq
  br label %.thread

.thread.loopexit:                                 ; preds = %.lr.ph.i.i.i.i.i
  %i.ba = icmp slt i32 %i.au, %i.aw
  br label %.thread

.thread:                                          ; preds = %.thread.loopexit, %._crit_edge.i.i.i.i.i, %bb.e
  %i.bb = phi i1 [ %i.az, %._crit_edge.i.i.i.i.i ], [ true, %bb.e ], [ %i.ba, %.thread.loopexit ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.bb, ptr noundef nonnull %i.b, ptr noundef nonnull %i.ah, ptr noundef nonnull align 8 dereferenceable(32) %i.ai) #22
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !118
  %i.be = add i64 %i.bd, 1
  store i64 %i.be, ptr %i.bc, align 8, !tbaa !118
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9Stockfish6OptionEESt10_Select1stISA_ENS8_19CaseInsensitiveLessESaISA_EE10_Auto_nodeD2Ev.exit

bb.h:                                             ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9Stockfish6OptionEESt10_Select1stISA_ENS8_19CaseInsensitiveLessESaISA_EE10_Auto_nodeC2IJRKSt21piecewise_construct_tSt5tupleIJRS7_EESL_IJEEEEERSF_DpOT_.exit
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9Stockfish6OptionEESt10_Select1stISA_ENS8_19CaseInsensitiveLessESaISA_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.b) #22
  call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 216) #24
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9Stockfish6OptionEESt10_Select1stISA_ENS8_19CaseInsensitiveLessESaISA_EE10_Auto_nodeD2Ev.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9Stockfish6OptionEESt10_Select1stISA_ENS8_19CaseInsensitiveLessESaISA_EE10_Auto_nodeD2Ev.exit: ; preds = %.thread, %bb.h
  %.sroa.010.014 = phi ptr [ %i.b, %.thread ], [ %i.ag, %bb.h ]
  ret ptr %.sroa.010.014
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9Stockfish6OptionEESt10_Select1stISA_ENS8_19CaseInsensitiveLessESaISA_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISA_ERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = icmp eq ptr %1, %i.a
  br i1 %i.b, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !118
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %_ZNK9Stockfish19CaseInsensitiveLessclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit.thread84, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !71   ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !11   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.j = load i64, ptr %i.i, align 8, !tbaa !17
  %i.k = load ptr, ptr %2, align 8, !tbaa !11     ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !17   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.m
  %spec.select.i.i.i.v.i = tail call i64 @llvm.smin.i64(i64 %i.m, i64 %i.j) ; 3 uses
  %spec.select.i.i.i.i = getelementptr inbounds i8, ptr %i.h, i64 %spec.select.i.i.i.v.i
  %.not19.i.i.i = icmp eq i64 %spec.select.i.i.i.v.i, 0
  br i1 %.not19.i.i.i, label %_ZNK9Stockfish19CaseInsensitiveLessclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.c
  %scevgep.i.i.i = getelementptr i8, ptr %i.k, i64 %spec.select.i.i.i.v.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %.lr.ph.preheader.i.i.i
  %.sroa.015.021.i.i.i = phi ptr [ %i.w, %bb.e ], [ %i.h, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %.sroa.011.020.i.i.i = phi ptr [ %i.x, %bb.e ], [ %i.k, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %i.o = load i8, ptr %.sroa.015.021.i.i.i, align 1, !tbaa !18
  %i.p = load i8, ptr %.sroa.011.020.i.i.i, align 1, !tbaa !18
  %i.q = sext i8 %i.o to i32
  %i.r = tail call i32 @tolower(i32 noundef %i.q) #21 ; 2 uses
  %i.s = sext i8 %i.p to i32
  %i.t = tail call i32 @tolower(i32 noundef %i.s) #21 ; 2 uses
  %i.u = icmp slt i32 %i.r, %i.t
  br i1 %i.u, label %_ZNK9Stockfish19CaseInsensitiveLessclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit.thread, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.v = icmp slt i32 %i.t, %i.r
  br i1 %i.v, label %_ZNK9Stockfish19CaseInsensitiveLessclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit.thread84, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.015.021.i.i.i, i64 1 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.011.020.i.i.i, i64 1
  %.not.i.i.i = icmp eq ptr %i.w, %spec.select.i.i.i.i
  br i1 %.not.i.i.i, label %_ZNK9Stockfish19CaseInsensitiveLessclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit, label %.lr.ph.i.i.i, !llvm.loop !19

_ZNK9Stockfish19CaseInsensitiveLessclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit: ; preds = %bb.e, %bb.c
  %.sroa.011.0.lcssa.i.i.i = phi ptr [ %i.k, %bb.c ], [ %scevgep.i.i.i, %bb.e ]
  %.not105 = icmp eq ptr %.sroa.011.0.lcssa.i.i.i, %i.n
  br i1 %.not105, label %_ZNK9Stockfish19CaseInsensitiveLessclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit.thread84, label %_ZNK9Stockfish19CaseInsensitiveLessclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit.thread

_ZNK9Stockfish19CaseInsensitiveLessclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit.thread84: ; preds = %bb.d, %_ZNK9Stockfish19CaseInsensitiveLessclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit, %bb.b
  %i.y = tail call { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9Stockfish6OptionEESt10_Select1stISA_ENS8_19CaseInsensitiveLessESaISA_EE24_M_get_insert_unique_posERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %2) ; 2 uses
  %i.z = extractvalue { ptr, ptr } %i.y, 0
  %i.aa = extractvalue { ptr, ptr } %i.y, 1
  br label %_ZNK9Stockfish19CaseInsensitiveLessclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit.thread

bb.f:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ac = load ptr, ptr %2, align 8, !tbaa !11    ; 11 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !17 ; 5 uses
  %i.af = load ptr, ptr %i.ab, align 8, !tbaa !11 ; 6 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !17 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ah
  %spec.select.i.i.i.v.i10 = tail call i64 @llvm.smin.i64(i64 %i.ah, i64 %i.ae) ; 4 uses
  %spec.select.i.i.i.i11 = getelementptr i8, ptr %i.ac, i64 %spec.select.i.i.i.v.i10 ; 2 uses
  %.not19.i.i.i12 = icmp eq i64 %spec.select.i.i.i.v.i10, 0 ; 2 uses
  br i1 %.not19.i.i.i12, label %_ZNK9Stockfish19CaseInsensitiveLessclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit22, label %.lr.ph.preheader.i.i.i13

.lr.ph.preheader.i.i.i13:                         ; preds = %bb.f
  %scevgep.i.i.i14 = getelementptr i8, ptr %i.af, i64 %spec.select.i.i.i.v.i10
  br label %.lr.ph.i.i.i15

.lr.ph.i.i.i15:                                   ; preds = %bb.h, %.lr.ph.preheader.i.i.i13
  %.sroa.015.021.i.i.i16 = phi ptr [ %i.ar, %bb.h ], [ %i.ac, %.lr.ph.preheader.i.i.i13 ] ; 2 uses
  %.sroa.011.020.i.i.i17 = phi ptr [ %i.as, %bb.h ], [ %i.af, %.lr.ph.preheader.i.i.i13 ] ; 2 uses
  %i.aj = load i8, ptr %.sroa.015.021.i.i.i16, align 1, !tbaa !18
  %i.ak = load i8, ptr %.sroa.011.020.i.i.i17, align 1, !tbaa !18
  %i.al = sext i8 %i.aj to i32
  %i.am = tail call i32 @tolower(i32 noundef %i.al) #21 ; 2 uses
  %i.an = sext i8 %i.ak to i32
  %i.ao = tail call i32 @tolower(i32 noundef %i.an) #21 ; 2 uses
  %i.ap = icmp slt i32 %i.am, %i.ao
  br i1 %i.ap, label %_ZNK9Stockfish19CaseInsensitiveLessclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit22.thread, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i15
  %i.aq = icmp slt i32 %i.ao, %i.am
  br i1 %i.aq, label %_ZNK9Stockfish19CaseInsensitiveLessclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit22.thread87, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.015.021.i.i.i16, i64 1 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.011.020.i.i.i17, i64 1
  %.not.i.i.i18 = icmp eq ptr %i.ar, %spec.select.i.i.i.i11
  br i1 %.not.i.i.i18, label %_ZNK9Stockfish19CaseInsensitiveLessclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit22, label %.lr.ph.i.i.i15, !llvm.loop !19

_ZNK9Stockfish19CaseInsensitiveLessclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit22: ; preds = %bb.h, %bb.f
  %.sroa.011.0.lcssa.i.i.i20 = phi ptr [ %i.af, %bb.f ], [ %scevgep.i.i.i14, %bb.h ]
  %.not101.a = icmp eq ptr %.sroa.011.0.lcssa.i.i.i20, %i.ai
  br i1 %.not101.a, label %_ZNK9Stockfish19CaseInsensitiveLessclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit22.thread87, label %_ZNK9Stockfish19CaseInsensitiveLessclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit22.thread

_ZNK9Stockfish19CaseInsensitiveLessclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit22.thread: ; preds = %.lr.ph.i.i.i15, %_ZNK9Stockfish19CaseInsensitiveLessclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit22
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !71 ; 3 uses
  %i.av = icmp eq ptr %i.au, %1
  br i1 %i.av, label %_ZNK9Stockfish19CaseInsensitiveLessclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit.thread, label %bb.i

bb.i:                                             ; preds = %_ZNK9Stockfish19CaseInsensitiveLessclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit22.thread
  %i.aw = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef %1) #21 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !11 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 40
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !17
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ae
  %spec.select.i.i.i.v.i23 = tail call i64 @llvm.smin.i64(i64 %i.ae, i64 %i.ba) ; 3 uses
  %spec.select.i.i.i.i24 = getelementptr inbounds i8, ptr %i.ay, i64 %spec.select.i.i.i.v.i23
  %.not19.i.i.i25 = icmp eq i64 %spec.select.i.i.i.v.i23, 0
  br i1 %.not19.i.i.i25, label %_ZNK9Stockfish19CaseInsensitiveLessclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit35, label %.lr.ph.preheader.i.i.i26

.lr.ph.preheader.i.i.i26:                         ; preds = %bb.i
  %scevgep.i.i.i27 = getelementptr i8, ptr %i.ac, i64 %spec.select.i.i.i.v.i23
  br label %.lr.ph.i.i.i28

.lr.ph.i.i.i28:                                   ; preds = %bb.k, %.lr.ph.preheader.i.i.i26
  %.sroa.015.021.i.i.i29 = phi ptr [ %i.bk, %bb.k ], [ %i.ay, %.lr.ph.preheader.i.i.i26 ] ; 2 uses
  %.sroa.011.020.i.i.i30 = phi ptr [ %i.bl, %bb.k ], [ %i.ac, %.lr.ph.preheader.i.i.i26 ] ; 2 uses
  %i.bc = load i8, ptr %.sroa.015.021.i.i.i29, align 1, !tbaa !18
  %i.bd = load i8, ptr %.sroa.011.020.i.i.i30, align 1, !tbaa !18
  %i.be = sext i8 %i.bc to i32
  %i.bf = tail call i32 @tolower(i32 noundef %i.be) #21 ; 2 uses
  %i.bg = sext i8 %i.bd to i32
  %i.bh = tail call i32 @tolower(i32 noundef %i.bg) #21 ; 2 uses
  %i.bi = icmp slt i32 %i.bf, %i.bh
  br i1 %i.bi, label %_ZNK9Stockfish19CaseInsensitiveLessclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit35.thread, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i28
  %i.bj = icmp slt i32 %i.bh, %i.bf
  br i1 %i.bj, label %_ZNK9Stockfish19CaseInsensitiveLessclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit35.thread90, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.015.021.i.i.i29, i64 1 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.011.020.i.i.i30, i64 1
  %.not.i.i.i31 = icmp eq ptr %i.bk, %spec.select.i.i.i.i24
  br i1 %.not.i.i.i31, label %_ZNK9Stockfish19CaseInsensitiveLessclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit35, label %.lr.ph.i.i.i28, !llvm.loop !19

_ZNK9Stockfish19CaseInsensitiveLessclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit35: ; preds = %bb.k, %bb.i
  %.sroa.011.0.lcssa.i.i.i33 = phi ptr [ %i.ac, %bb.i ], [ %scevgep.i.i.i27, %bb.k ]
  %.not104 = icmp eq ptr %.sroa.011.0.lcssa.i.i.i33, %i.bb
  br i1 %.not104, label %_ZNK9Stockfish19CaseInsensitiveLessclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit35.thread90, label %_ZNK9Stockfish19CaseInsensitiveLessclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit35.thread

_ZNK9Stockfish19CaseInsensitiveLessclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit35.thread: ; preds = %.lr.ph.i.i.i28, %_ZNK9Stockfish19CaseInsensitiveLessclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit35
  %i.bm = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !123
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %_ZNK9Stockfish19CaseInsensitiveLessclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit.thread, label %3

3:                                                ; preds = %_ZNK9Stockfish19CaseInsensitiveLessclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit35.thread
  br label %_ZNK9Stockfish19CaseInsensitiveLessclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit.thread

_ZNK9Stockfish19CaseInsensitiveLessclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit35.thread90: ; preds = %bb.j, %_ZNK9Stockfish19CaseInsensitiveLessclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit35
  %i.bp = tail call { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9Stockfish6OptionEESt10_Select1stISA_ENS8_19CaseInsensitiveLessESaISA_EE24_M_get_insert_unique_posERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %2) ; 2 uses
  %i.bq = extractvalue { ptr, ptr } %i.bp, 0
  %i.br = extractvalue { ptr, ptr } %i.bp, 1
  br label %_ZNK9Stockfish19CaseInsensitiveLessclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit.thread

_ZNK9Stockfish19CaseInsensitiveLessclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit22.thread87: ; preds = %bb.g, %_ZNK9Stockfish19CaseInsensitiveLessclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit22
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ae
  %spec.select.i.i.i.i37 = getelementptr inbounds i8, ptr %i.af, i64 %spec.select.i.i.i.v.i10
  br i1 %.not19.i.i.i12, label %_ZNK9Stockfish19CaseInsensitiveLessclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit48, label %.lr.ph.i.i.i41

.lr.ph.i.i.i41:                                   ; preds = %_ZNK9Stockfish19CaseInsensitiveLessclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit22.thread87, %bb.m
  %.sroa.015.021.i.i.i42 = phi ptr [ %i.cb, %bb.m ], [ %i.af, %_ZNK9Stockfish19CaseInsensitiveLessclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit22.thread87 ] ; 2 uses
  %.sroa.011.020.i.i.i43 = phi ptr [ %i.cc, %bb.m ], [ %i.ac, %_ZNK9Stockfish19CaseInsensitiveLessclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit22.thread87 ] ; 2 uses
  %i.bt = load i8, ptr %.sroa.015.021.i.i.i42, align 1, !tbaa !18
  %i.bu = load i8, ptr %.sroa.011.020.i.i.i43, align 1, !tbaa !18
  %i.bv = sext i8 %i.bt to i32
  %i.bw = tail call i32 @tolower(i32 noundef %i.bv) #21 ; 2 uses
  %i.bx = sext i8 %i.bu to i32
  %i.by = tail call i32 @tolower(i32 noundef %i.bx) #21 ; 2 uses
  %i.bz = icmp slt i32 %i.bw, %i.by
  br i1 %i.bz, label %_ZNK9Stockfish19CaseInsensitiveLessclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit48.thread, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i41
  %i.ca = icmp slt i32 %i.by, %i.bw
  br i1 %i.ca, label %_ZNK9Stockfish19CaseInsensitiveLessclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.015.021.i.i.i42, i64 1 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.011.020.i.i.i43, i64 1
  %.not.i.i.i44 = icmp eq ptr %i.cb, %spec.select.i.i.i.i37
  br i1 %.not.i.i.i44, label %_ZNK9Stockfish19CaseInsensitiveLessclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit48, label %.lr.ph.i.i.i41, !llvm.loop !19

_ZNK9Stockfish19CaseInsensitiveLessclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit48: ; preds = %bb.m, %_ZNK9Stockfish19CaseInsensitiveLessclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit22.thread87
  %.sroa.011.0.lcssa.i.i.i46 = phi ptr [ %i.ac, %_ZNK9Stockfish19CaseInsensitiveLessclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit22.thread87 ], [ %spec.select.i.i.i.i11, %bb.m ]
  %.not102 = icmp eq ptr %.sroa.011.0.lcssa.i.i.i46, %i.bs
  br i1 %.not102, label %_ZNK9Stockfish19CaseInsensitiveLessclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit.thread, label %_ZNK9Stockfish19CaseInsensitiveLessclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit48.thread

_ZNK9Stockfish19CaseInsensitiveLessclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit48.thread: ; preds = %.lr.ph.i.i.i41, %_ZNK9Stockfish19CaseInsensitiveLessclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit48
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !71 ; 2 uses
  %i.cf = icmp eq ptr %i.ce, %1
  br i1 %i.cf, label %_ZNK9Stockfish19CaseInsensitiveLessclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit.thread, label %bb.n

bb.n:                                             ; preds = %_ZNK9Stockfish19CaseInsensitiveLessclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit48.thread
  %i.cg = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %1) #21 ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 32
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !11 ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 40
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !17 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.ck
  %spec.select.i.i.i.v.i49 = tail call i64 @llvm.smin.i64(i64 %i.ck, i64 %i.ae) ; 3 uses
  %spec.select.i.i.i.i50 = getelementptr inbounds i8, ptr %i.ac, i64 %spec.select.i.i.i.v.i49
  %.not19.i.i.i51 = icmp eq i64 %spec.select.i.i.i.v.i49, 0
  br i1 %.not19.i.i.i51, label %_ZNK9Stockfish19CaseInsensitiveLessclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit61, label %.lr.ph.preheader.i.i.i52

.lr.ph.preheader.i.i.i52:                         ; preds = %bb.n
  %scevgep.i.i.i53 = getelementptr i8, ptr %i.ci, i64 %spec.select.i.i.i.v.i49
  br label %.lr.ph.i.i.i54

.lr.ph.i.i.i54:                                   ; preds = %bb.p, %.lr.ph.preheader.i.i.i52
  %.sroa.015.021.i.i.i55 = phi ptr [ %i.cu, %bb.p ], [ %i.ac, %.lr.ph.preheader.i.i.i52 ] ; 2 uses
  %.sroa.011.020.i.i.i56 = phi ptr [ %i.cv, %bb.p ], [ %i.ci, %.lr.ph.preheader.i.i.i52 ] ; 2 uses
  %i.cm = load i8, ptr %.sroa.015.021.i.i.i55, align 1, !tbaa !18
  %i.cn = load i8, ptr %.sroa.011.020.i.i.i56, align 1, !tbaa !18
  %i.co = sext i8 %i.cm to i32
  %i.cp = tail call i32 @tolower(i32 noundef %i.co) #21 ; 2 uses
  %i.cq = sext i8 %i.cn to i32
  %i.cr = tail call i32 @tolower(i32 noundef %i.cq) #21 ; 2 uses
  %i.cs = icmp slt i32 %i.cp, %i.cr
  br i1 %i.cs, label %_ZNK9Stockfish19CaseInsensitiveLessclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit61.thread, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i.i54
  %i.ct = icmp slt i32 %i.cr, %i.cp
  br i1 %i.ct, label %_ZNK9Stockfish19CaseInsensitiveLessclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit61.thread96, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.015.021.i.i.i55, i64 1 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.011.020.i.i.i56, i64 1
  %.not.i.i.i57 = icmp eq ptr %i.cu, %spec.select.i.i.i.i50
  br i1 %.not.i.i.i57, label %_ZNK9Stockfish19CaseInsensitiveLessclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit61, label %.lr.ph.i.i.i54, !llvm.loop !19

_ZNK9Stockfish19CaseInsensitiveLessclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit61: ; preds = %bb.p, %bb.n
  %.sroa.011.0.lcssa.i.i.i59 = phi ptr [ %i.ci, %bb.n ], [ %scevgep.i.i.i53, %bb.p ]
  %.not103 = icmp eq ptr %.sroa.011.0.lcssa.i.i.i59, %i.cl
  br i1 %.not103, label %_ZNK9Stockfish19CaseInsensitiveLessclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit61.thread96, label %_ZNK9Stockfish19CaseInsensitiveLessclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit61.thread

_ZNK9Stockfish19CaseInsensitiveLessclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit61.thread: ; preds = %.lr.ph.i.i.i54, %_ZNK9Stockfish19CaseInsensitiveLessclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit61
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !123
  %i.cy = icmp eq ptr %i.cx, null
  br i1 %i.cy, label %_ZNK9Stockfish19CaseInsensitiveLessclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit.thread, label %4

4:                                                ; preds = %_ZNK9Stockfish19CaseInsensitiveLessclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit61.thread
  br label %_ZNK9Stockfish19CaseInsensitiveLessclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit.thread

_ZNK9Stockfish19CaseInsensitiveLessclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit61.thread96: ; preds = %bb.o, %_ZNK9Stockfish19CaseInsensitiveLessclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit61
  %i.cz = tail call { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9Stockfish6OptionEESt10_Select1stISA_ENS8_19CaseInsensitiveLessESaISA_EE24_M_get_insert_unique_posERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %2) ; 2 uses
  %i.da = extractvalue { ptr, ptr } %i.cz, 0
  %i.db = extractvalue { ptr, ptr } %i.cz, 1
  br label %_ZNK9Stockfish19CaseInsensitiveLessclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit.thread

_ZNK9Stockfish19CaseInsensitiveLessclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit.thread: ; preds = %bb.l, %.lr.ph.i.i.i, %_ZNK9Stockfish19CaseInsensitiveLessclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit48, %4, %_ZNK9Stockfish19CaseInsensitiveLessclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit61.thread96, %_ZNK9Stockfish19CaseInsensitiveLessclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit48.thread, %_ZNK9Stockfish19CaseInsensitiveLessclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit61.thread, %3, %_ZNK9Stockfish19CaseInsensitiveLessclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit35.thread90, %_ZNK9Stockfish19CaseInsensitiveLessclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit22.thread, %_ZNK9Stockfish19CaseInsensitiveLessclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit35.thread, %_ZNK9Stockfish19CaseInsensitiveLessclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit, %_ZNK9Stockfish19CaseInsensitiveLessclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit.thread84
  %.sroa.082.2 = phi ptr [ %i.z, %_ZNK9Stockfish19CaseInsensitiveLessclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit.thread84 ], [ null, %_ZNK9Stockfish19CaseInsensitiveLessclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit61.thread ], [ null, %_ZNK9Stockfish19CaseInsensitiveLessclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit ], [ null, %_ZNK9Stockfish19CaseInsensitiveLessclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit35.thread ], [ %1, %_ZNK9Stockfish19CaseInsensitiveLessclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit48 ], [ %i.bq, %_ZNK9Stockfish19CaseInsensitiveLessclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit35.thread90 ], [ %i.au, %_ZNK9Stockfish19CaseInsensitiveLessclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit22.thread ], [ %1, %3 ], [ %i.da, %_ZNK9Stockfish19CaseInsensitiveLessclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit61.thread96 ], [ null, %_ZNK9Stockfish19CaseInsensitiveLessclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit48.thread ], [ %i.cg, %4 ], [ null, %.lr.ph.i.i.i ], [ %1, %bb.l ]
  %.sroa.12.2 = phi ptr [ %i.aa, %_ZNK9Stockfish19CaseInsensitiveLessclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit.thread84 ], [ %1, %_ZNK9Stockfish19CaseInsensitiveLessclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit61.thread ], [ %i.f, %_ZNK9Stockfish19CaseInsensitiveLessclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit ], [ %i.aw, %_ZNK9Stockfish19CaseInsensitiveLessclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit35.thread ], [ null, %_ZNK9Stockfish19CaseInsensitiveLessclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit48 ], [ %i.br, %_ZNK9Stockfish19CaseInsensitiveLessclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit35.thread90 ], [ %i.au, %_ZNK9Stockfish19CaseInsensitiveLessclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit22.thread ], [ %1, %3 ], [ %i.db, %_ZNK9Stockfish19CaseInsensitiveLessclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit61.thread96 ], [ %i.ce, %_ZNK9Stockfish19CaseInsensitiveLessclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit48.thread ], [ %i.cg, %4 ], [ %i.f, %.lr.ph.i.i.i ], [ null, %bb.l ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.082.2, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.12.2, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9Stockfish6OptionEESt10_Select1stISA_ENS8_19CaseInsensitiveLessESaISA_EE24_M_get_insert_unique_posERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.03345 = load ptr, ptr %i.a, align 8, !tbaa !71 ; 2 uses
  %.not46 = icmp eq ptr %.03345, null
  br i1 %.not46, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !11     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !17
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNK9Stockfish19CaseInsensitiveLessclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit.thread
  %.03347 = phi ptr [ %.03345, %.lr.ph ], [ %.033, %_ZNK9Stockfish19CaseInsensitiveLessclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit.thread ] ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.03347, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !11   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.03347, i64 40
  %i.i = load i64, ptr %i.h, align 8, !tbaa !17   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.i
  %spec.select.i.i.i.v.i = tail call i64 @llvm.smin.i64(i64 %i.i, i64 %i.e) ; 3 uses
  %spec.select.i.i.i.i = getelementptr inbounds i8, ptr %i.c, i64 %spec.select.i.i.i.v.i
  %.not19.i.i.i = icmp eq i64 %spec.select.i.i.i.v.i, 0
  br i1 %.not19.i.i.i, label %_ZNK9Stockfish19CaseInsensitiveLessclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.b
  %scevgep.i.i.i = getelementptr i8, ptr %i.g, i64 %spec.select.i.i.i.v.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.preheader.i.i.i
  %.sroa.015.021.i.i.i = phi ptr [ %i.s, %bb.d ], [ %i.c, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %.sroa.011.020.i.i.i = phi ptr [ %i.t, %bb.d ], [ %i.g, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %i.k = load i8, ptr %.sroa.015.021.i.i.i, align 1, !tbaa !18
  %i.l = load i8, ptr %.sroa.011.020.i.i.i, align 1, !tbaa !18
  %i.m = sext i8 %i.k to i32
  %i.n = tail call i32 @tolower(i32 noundef %i.m) #21 ; 2 uses
  %i.o = sext i8 %i.l to i32
  %i.p = tail call i32 @tolower(i32 noundef %i.o) #21 ; 2 uses
  %i.q = icmp slt i32 %i.n, %i.p
  br i1 %i.q, label %_ZNK9Stockfish19CaseInsensitiveLessclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit.thread, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.r = icmp slt i32 %i.p, %i.n
  br i1 %i.r, label %_ZNK9Stockfish19CaseInsensitiveLessclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit.thread37, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.015.021.i.i.i, i64 1 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.011.020.i.i.i, i64 1
  %.not.i.i.i = icmp eq ptr %i.s, %spec.select.i.i.i.i
  br i1 %.not.i.i.i, label %_ZNK9Stockfish19CaseInsensitiveLessclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit, label %.lr.ph.i.i.i, !llvm.loop !19

_ZNK9Stockfish19CaseInsensitiveLessclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit: ; preds = %bb.d, %bb.b
  %.sroa.011.0.lcssa.i.i.i = phi ptr [ %i.g, %bb.b ], [ %scevgep.i.i.i, %bb.d ]
  %.not43 = icmp eq ptr %.sroa.011.0.lcssa.i.i.i, %i.j
  br i1 %.not43, label %_ZNK9Stockfish19CaseInsensitiveLessclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit.thread37, label %_ZNK9Stockfish19CaseInsensitiveLessclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit.thread

_ZNK9Stockfish19CaseInsensitiveLessclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit.thread37: ; preds = %bb.c, %_ZNK9Stockfish19CaseInsensitiveLessclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit
  br label %_ZNK9Stockfish19CaseInsensitiveLessclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit.thread

_ZNK9Stockfish19CaseInsensitiveLessclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit.thread: ; preds = %.lr.ph.i.i.i, %_ZNK9Stockfish19CaseInsensitiveLessclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit, %_ZNK9Stockfish19CaseInsensitiveLessclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit.thread37
  %.sink = phi i64 [ 24, %_ZNK9Stockfish19CaseInsensitiveLessclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit.thread37 ], [ 16, %_ZNK9Stockfish19CaseInsensitiveLessclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit ], [ 16, %.lr.ph.i.i.i ]
  %.0.i.i.i35 = phi i1 [ false, %_ZNK9Stockfish19CaseInsensitiveLessclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit.thread37 ], [ true, %_ZNK9Stockfish19CaseInsensitiveLessclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit ], [ true, %.lr.ph.i.i.i ]
  %i.u = getelementptr inbounds nuw i8, ptr %.03347, i64 %.sink
  %.033 = load ptr, ptr %i.u, align 8, !tbaa !71  ; 2 uses
  %.not = icmp eq ptr %.033, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !128

._crit_edge:                                      ; preds = %_ZNK9Stockfish19CaseInsensitiveLessclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit.thread
  br i1 %.0.i.i.i35, label %._crit_edge.thread, label %bb.f

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  %.032.lcssa59 = phi ptr [ %.03347, %._crit_edge ], [ %i.b, %bb.a ] ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !84
  %i.x = icmp eq ptr %.032.lcssa59, %i.w
  br i1 %i.x, label %_ZNK9Stockfish19CaseInsensitiveLessclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit17.thread, label %bb.e

bb.e:                                             ; preds = %._crit_edge.thread
  %i.y = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.032.lcssa59) #21
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge
  %.032.lcssa58 = phi ptr [ %.032.lcssa59, %bb.e ], [ %.03347, %._crit_edge ] ; 2 uses
  %.sroa.018.0 = phi ptr [ %i.y, %bb.e ], [ %.03347, %._crit_edge ] ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.018.0, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !11  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.018.0, i64 40
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !17
  %i.ad = load ptr, ptr %1, align 8, !tbaa !11    ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !17 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.af
  %spec.select.i.i.i.v.i5 = tail call i64 @llvm.smin.i64(i64 %i.af, i64 %i.ac) ; 3 uses
  %spec.select.i.i.i.i6 = getelementptr inbounds i8, ptr %i.aa, i64 %spec.select.i.i.i.v.i5
  %.not19.i.i.i7 = icmp eq i64 %spec.select.i.i.i.v.i5, 0
  br i1 %.not19.i.i.i7, label %_ZNK9Stockfish19CaseInsensitiveLessclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit17, label %.lr.ph.preheader.i.i.i8

.lr.ph.preheader.i.i.i8:                          ; preds = %bb.f
  %scevgep.i.i.i9 = getelementptr i8, ptr %i.ad, i64 %spec.select.i.i.i.v.i5
  br label %.lr.ph.i.i.i10

.lr.ph.i.i.i10:                                   ; preds = %bb.h, %.lr.ph.preheader.i.i.i8
  %.sroa.015.021.i.i.i11 = phi ptr [ %i.ap, %bb.h ], [ %i.aa, %.lr.ph.preheader.i.i.i8 ] ; 2 uses
  %.sroa.011.020.i.i.i12 = phi ptr [ %i.aq, %bb.h ], [ %i.ad, %.lr.ph.preheader.i.i.i8 ] ; 2 uses
  %i.ah = load i8, ptr %.sroa.015.021.i.i.i11, align 1, !tbaa !18
  %i.ai = load i8, ptr %.sroa.011.020.i.i.i12, align 1, !tbaa !18
  %i.aj = sext i8 %i.ah to i32
  %i.ak = tail call i32 @tolower(i32 noundef %i.aj) #21 ; 2 uses
  %i.al = sext i8 %i.ai to i32
  %i.am = tail call i32 @tolower(i32 noundef %i.al) #21 ; 2 uses
  %i.an = icmp slt i32 %i.ak, %i.am
  br i1 %i.an, label %_ZNK9Stockfish19CaseInsensitiveLessclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit17.thread, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i10
  %i.ao = icmp slt i32 %i.am, %i.ak
  br i1 %i.ao, label %_ZNK9Stockfish19CaseInsensitiveLessclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit17.thread41, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.015.021.i.i.i11, i64 1 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.011.020.i.i.i12, i64 1
  %.not.i.i.i13 = icmp eq ptr %i.ap, %spec.select.i.i.i.i6
  br i1 %.not.i.i.i13, label %_ZNK9Stockfish19CaseInsensitiveLessclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit17, label %.lr.ph.i.i.i10, !llvm.loop !19

_ZNK9Stockfish19CaseInsensitiveLessclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit17: ; preds = %bb.h, %bb.f
  %.sroa.011.0.lcssa.i.i.i15 = phi ptr [ %i.ad, %bb.f ], [ %scevgep.i.i.i9, %bb.h ]
  %.not44 = icmp eq ptr %.sroa.011.0.lcssa.i.i.i15, %i.ag
  br i1 %.not44, label %_ZNK9Stockfish19CaseInsensitiveLessclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit17.thread41, label %_ZNK9Stockfish19CaseInsensitiveLessclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit17.thread

_ZNK9Stockfish19CaseInsensitiveLessclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit17.thread41: ; preds = %bb.g, %_ZNK9Stockfish19CaseInsensitiveLessclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit17
  br label %_ZNK9Stockfish19CaseInsensitiveLessclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit17.thread

_ZNK9Stockfish19CaseInsensitiveLessclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit17.thread: ; preds = %.lr.ph.i.i.i10, %_ZNK9Stockfish19CaseInsensitiveLessclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit17, %._crit_edge.thread, %_ZNK9Stockfish19CaseInsensitiveLessclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit17.thread41
  %.sroa.031.0 = phi ptr [ %.sroa.018.0, %_ZNK9Stockfish19CaseInsensitiveLessclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit17.thread41 ], [ null, %._crit_edge.thread ], [ null, %_ZNK9Stockfish19CaseInsensitiveLessclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit17 ], [ null, %.lr.ph.i.i.i10 ]
  %.sroa.4.0 = phi ptr [ null, %_ZNK9Stockfish19CaseInsensitiveLessclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit17.thread41 ], [ %.032.lcssa59, %._crit_edge.thread ], [ %.032.lcssa58, %_ZNK9Stockfish19CaseInsensitiveLessclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit17 ], [ %.032.lcssa58, %.lr.ph.i.i.i10 ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.031.0, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.4.0, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #13

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #9

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #10

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #3

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #10

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEC2ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) unnamed_addr #1 align 2

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264), ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(216)) unnamed_addr #9

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #9

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #9

; Function Attrs: noreturn
declare void @_ZSt25__throw_bad_function_callv() local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16
end_hunk_1
