inline.NumInlined: 438
inline.NumDeleted: 261
begin_hunk_0_@_ZN2v88internal19ProfileDataFromFile7TryReadEPKc:bb.a
  %i.dm = load ptr, ptr %4, align 8
  %i.dn = icmp eq ptr %i.dl, %i.dm
  br i1 %i.dn, label %.critedge.i, label %bb.s, !prof !10

.critedge.i:                                      ; preds = %bb.r, %bb.q
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.4) #14
  unreachable

bb.s:                                             ; preds = %bb.r
  %i.do = call noundef nonnull align 8 dereferenceable(16) ptr @_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EES4_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(32) %4, i8 noundef signext 44) #13 ; 2 uses
  %i.dp = load ptr, ptr %i.do, align 8
  %i.dq = getelementptr i8, ptr %i.dp, i64 -24
  %i.dr = load i64, ptr %i.dq, align 8
  %i.ds = getelementptr inbounds i8, ptr %i.do, i64 %i.dr
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 32
  %i.du = load i32, ptr %i.dt, align 8
  %i.dv = and i32 %i.du, 5
  %.not47.i = icmp eq i32 %i.dv, 0
  br i1 %.not47.i, label %bb.u, label %bb.t, !prof !6

bb.t:                                             ; preds = %bb.s
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.3) #14
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.dw = load ptr, ptr %4, align 8
  %i.dx = call i64 @__isoc23_strtoul(ptr noundef %i.dw, ptr noundef nonnull %i.a, i32 noundef 0) #13
  %i.dy = load i32, ptr %i.dg, align 4
  %i.dz = icmp eq i32 %i.dy, 0
  br i1 %i.dz, label %bb.v, label %.critedge16.i, !prof !6

bb.v:                                             ; preds = %bb.u
  %i.ea = load ptr, ptr %i.a, align 8
  %i.eb = load ptr, ptr %4, align 8
  %i.ec = icmp eq ptr %i.ea, %i.eb
  br i1 %i.ec, label %.critedge16.i, label %bb.w, !prof !10

.critedge16.i:                                    ; preds = %bb.v, %bb.u
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.4) #14
  unreachable

bb.w:                                             ; preds = %bb.v
  %i.ed = call noundef nonnull align 8 dereferenceable(16) ptr @_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EES4_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(32) %4, i8 noundef signext 44) #13 ; 0 uses
  %i.ee = load ptr, ptr %5, align 8
  %i.ef = getelementptr i8, ptr %i.ee, i64 -24
  %i.eg = load i64, ptr %i.ef, align 8
  %i.eh = getelementptr inbounds i8, ptr %5, i64 %i.eg
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 32
  %i.ej = load i32, ptr %i.ei, align 8
  %i.ek = and i32 %i.ej, 2
  %.not48.i = icmp eq i32 %i.ek, 0
  br i1 %.not48.i, label %bb.x, label %bb.y, !prof !10

bb.x:                                             ; preds = %bb.w
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.5) #14
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.el = load ptr, ptr %4, align 8
  %i.em = call i64 @__isoc23_strtoul(ptr noundef %i.el, ptr noundef nonnull %i.a, i32 noundef 10) #13 ; 2 uses
  %i.en = load i32, ptr %i.dg, align 4
  %i.eo = icmp eq i32 %i.en, 0
  br i1 %i.eo, label %bb.z, label %.critedge18.i, !prof !6

bb.z:                                             ; preds = %bb.y
  %i.ep = load ptr, ptr %i.a, align 8
  %i.eq = load ptr, ptr %4, align 8
  %i.er = icmp eq ptr %i.ep, %i.eq
  br i1 %i.er, label %.critedge18.i, label %bb.aa, !prof !10

.critedge18.i:                                    ; preds = %bb.z, %bb.y
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.4) #14
  unreachable

bb.aa:                                            ; preds = %bb.z
  %i.es = call fastcc noundef nonnull align 8 dereferenceable(57) ptr @_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2v88internal12_GLOBAL__N_127ProfileDataFromFileInternalESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S9_EEEixERSF_(ptr noundef nonnull align 8 dereferenceable(32) %6)
  %i.et = icmp ult i64 %i.em, 2
  br i1 %i.et, label %_ZN2v88internal12_GLOBAL__N_127ProfileDataFromFileInternal14AddHintToBlockEmmm.exit.i, label %bb.ab, !prof !6

bb.ab:                                            ; preds = %bb.aa
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.10) #14
  unreachable

_ZN2v88internal12_GLOBAL__N_127ProfileDataFromFileInternal14AddHintToBlockEmmm.exit.i: ; preds = %bb.aa
  %i.eu = and i64 %i.dx, 4294967295
  %i.ev = and i64 %i.di, 4294967295
  %i.ew = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  %i.ex = trunc nuw nsw i64 %i.em to i8
  store i64 %i.ev, ptr %1, align 8
  store i64 %i.eu, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  store i8 %i.ex, ptr %i.ak, align 8, !alias.scope !11
  %i.ey = call { ptr, i8 } @_ZNSt3mapISt4pairImmEbSt4lessIS1_ESaIS0_IKS1_bEEE6insertIS0_IS1_bEEENSt9enable_ifIXsr16is_constructibleIS5_T_EE5valueES0_ISt17_Rb_tree_iteratorIS5_EbEE4typeEOSB_(ptr noundef nonnull align 8 dereferenceable(48) %i.ew, ptr noundef nonnull align 8 dereferenceable(17) %1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  %i.ez = load ptr, ptr %5, align 8
  %i.fa = getelementptr i8, ptr %i.ez, i64 -24
  %i.fb = load i64, ptr %i.fa, align 8
  %i.fc = getelementptr inbounds i8, ptr %5, i64 %i.fb
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 32
  %i.fe = load i32, ptr %i.fd, align 8
  %i.ff = and i32 %i.fe, 2
  %.not49.i = icmp eq i32 %i.ff, 0
  br i1 %.not49.i, label %bb.ac, label %bb.ad, !prof !10

bb.ac:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_127ProfileDataFromFileInternal14AddHintToBlockEmmm.exit.i
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.5) #14
  unreachable

bb.ad:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_127ProfileDataFromFileInternal14AddHintToBlockEmmm.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %i.fg = load ptr, ptr %6, align 8               ; 2 uses
  %i.fh = icmp eq ptr %i.fg, %i.ai
  br i1 %i.fh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27.i: ; preds = %bb.ad
  %i.fi = load i64, ptr %i.ai, align 8
  %i.fj = add i64 %i.fi, 1
  call void @_ZdlPvm(ptr noundef %i.fg, i64 noundef %i.fj) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29.i: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit31.thread40.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit31.i: ; preds = %bb.m
  %i.fk = load ptr, ptr %4, align 8               ; 2 uses
  %i.fl = load i64, ptr %i.fk, align 1
  %i.fm = xor i64 %i.fl, 6876549629797299554
  %i.fn = getelementptr i8, ptr %i.fk, i64 8
  %i.fo = load i32, ptr %i.fn, align 1
  %i.fp = zext i32 %i.fo to i64
  %i.fq = xor i64 %i.fp, 1752392040
  %i.fr = or i64 %i.fm, %i.fq
  %i.fs = icmp ne i64 %i.fr, 0
  %i.ft = zext i1 %i.fs to i32
  %i.fu = icmp eq i32 %i.ft, 0
  br i1 %i.fu, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit31.thread.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit31.thread40.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit31.thread.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit31.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  store ptr %i.ag, ptr %7, align 8
  store i64 0, ptr %i.ah, align 8
  store i8 0, ptr %i.ag, align 8
  %i.fv = call noundef nonnull align 8 dereferenceable(16) ptr @_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EES4_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(32) %7, i8 noundef signext 44) #13 ; 2 uses
  %i.fw = load ptr, ptr %i.fv, align 8
  %i.fx = getelementptr i8, ptr %i.fw, i64 -24
  %i.fy = load i64, ptr %i.fx, align 8
  %i.fz = getelementptr inbounds i8, ptr %i.fv, i64 %i.fy
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 32
  %i.gb = load i32, ptr %i.ga, align 8
  %i.gc = and i32 %i.gb, 5
  %.not42.i = icmp eq i32 %i.gc, 0
  br i1 %.not42.i, label %bb.af, label %bb.ae, !prof !6

bb.ae:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit31.thread.i
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #14
  unreachable

bb.af:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit31.thread.i
  %i.gd = call noundef nonnull align 8 dereferenceable(16) ptr @_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EES4_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(32) %4, i8 noundef signext 44) #13 ; 0 uses
  %i.ge = load ptr, ptr %5, align 8
  %i.gf = getelementptr i8, ptr %i.ge, i64 -24
  %i.gg = load i64, ptr %i.gf, align 8
  %i.gh = getelementptr inbounds i8, ptr %5, i64 %i.gg
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 32
  %i.gj = load i32, ptr %i.gi, align 8
  %i.gk = and i32 %i.gj, 2
  %.not43.i = icmp eq i32 %i.gk, 0
  br i1 %.not43.i, label %bb.ag, label %bb.ah, !prof !10

bb.ag:                                            ; preds = %bb.af
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.5) #14
  unreachable

bb.ah:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store ptr null, ptr %i.b, align 8
  %i.gl = load ptr, ptr %4, align 8
  %i.gm = call i64 @__isoc23_strtol(ptr noundef %i.gl, ptr noundef nonnull %i.b, i32 noundef 0) #13
  %i.gn = trunc i64 %i.gm to i32                  ; 2 uses
  %i.go = tail call ptr @__errno_location() #16
  %i.gp = load i32, ptr %i.go, align 4
  %i.gq = icmp eq i32 %i.gp, 0
  br i1 %i.gq, label %bb.ai, label %.critedge20.i, !prof !6

bb.ai:                                            ; preds = %bb.ah
  %i.gr = load ptr, ptr %i.b, align 8
  %i.gs = load ptr, ptr %4, align 8
  %i.gt = icmp eq ptr %i.gr, %i.gs
  br i1 %i.gt, label %.critedge20.i, label %bb.aj, !prof !10

.critedge20.i:                                    ; preds = %bb.ai, %bb.ah
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.4) #14
  unreachable

bb.aj:                                            ; preds = %bb.ai
  %i.gu = call fastcc noundef nonnull align 8 dereferenceable(57) ptr @_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2v88internal12_GLOBAL__N_127ProfileDataFromFileInternalESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S9_EEEixERSF_(ptr noundef nonnull align 8 dereferenceable(32) %7) ; 3 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 56 ; 2 uses
  %.val23.i = load i8, ptr %i.gv, align 8, !range !14, !noundef !15
  %i.gw = trunc nuw i8 %.val23.i to i1
  br i1 %i.gw, label %9, label %.critedge22.i

9:                                                ; preds = %bb.aj
  %10 = load i32, ptr %i.gu, align 8
  %.not44.i = icmp eq i32 %10, %i.gn
  br i1 %.not44.i, label %.critedge22.i, label %bb.ak, !prof !6

bb.ak:                                            ; preds = %9
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.6) #14
  unreachable

.critedge22.i:                                    ; preds = %9, %bb.aj
  store i32 %i.gn, ptr %i.gu, align 8
  store i8 1, ptr %i.gv, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  %i.gx = load ptr, ptr %7, align 8               ; 2 uses
  %i.gy = icmp eq ptr %i.gx, %i.ag
  br i1 %i.gy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32.i: ; preds = %.critedge22.i
  %i.gz = load i64, ptr %i.ag, align 8
  %i.ha = add i64 %i.gz, 1
  call void @_ZdlPvm(ptr noundef %i.gx, i64 noundef %i.ha) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34.i: ; preds = %.critedge22.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit31.thread40.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit31.thread40.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit31.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i, %bb.m, %bb.l
  store ptr %i.al, ptr %5, align 8
  %i.hb = load i64, ptr %i.an, align 8
  %i.hc = getelementptr inbounds i8, ptr %5, i64 %i.hb
  store ptr %i.am, ptr %i.hc, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.af, align 8
  %i.hd = load ptr, ptr %i.ao, align 8            ; 2 uses
  %i.he = icmp eq ptr %i.hd, %i.ap
  br i1 %i.he, label %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit31.thread40.i
  %i.hf = load i64, ptr %i.ap, align 8
  %i.hg = add i64 %i.hf, 1
  call void @_ZdlPvm(ptr noundef %i.hd, i64 noundef %i.hg) #15
  br label %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit.i

_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit31.thread40.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.af, align 8
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.aq) #13
  store ptr %i.ab, ptr %5, align 8
  %i.hh = load i64, ptr %i.ad, align 8
  %i.hi = getelementptr inbounds i8, ptr %5, i64 %i.hh
  store ptr %i.ac, ptr %i.hi, align 8
  store i64 0, ptr %i.ae, align 8
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.w) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  %i.hj = load ptr, ptr %4, align 8               ; 2 uses
  %i.hk = icmp eq ptr %i.hj, %i.u
  br i1 %i.hk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35.i: ; preds = %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit.i
  %i.hl = load i64, ptr %i.u, align 8
  %i.hm = add i64 %i.hl, 1
  call void @_ZdlPvm(ptr noundef %i.hj, i64 noundef %i.hm) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37.i: ; preds = %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  %i.hn = load ptr, ptr %2, align 8
  %i.ho = getelementptr i8, ptr %i.hn, i64 -24
  %i.hp = load i64, ptr %i.ho, align 8
  %i.hq = getelementptr inbounds i8, ptr %2, i64 %i.hp
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 240
  %i.hs = load ptr, ptr %i.hr, align 8            ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.hs, null
  br i1 %.not.i.i.i.i, label %._crit_edge.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i

bb.al:                                            ; preds = %bb.an, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %.sroa.038.0.in.i = phi ptr [ getelementptr inbounds nuw (i8, ptr @_ZZN2v88internal12_GLOBAL__N_121EnsureInitProfileDataB5cxx11EvE4dataB5cxx11, i64 16), %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.sroa.038.0.i, %bb.an ]
  %.sroa.038.0.i = load ptr, ptr %.sroa.038.0.in.i, align 8 ; 3 uses
  %i.ht = icmp eq ptr %.sroa.038.0.i, null
  br i1 %i.ht, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.hu = load ptr, ptr @_ZTTSt14basic_ifstreamIcSt11char_traitsIcEE, align 8 ; 2 uses
  store ptr %i.hu, ptr %2, align 8
  %i.hv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTSt14basic_ifstreamIcSt11char_traitsIcEE, i64 24), align 8
  %i.hw = getelementptr i8, ptr %i.hu, i64 -24
  %i.hx = load i64, ptr %i.hw, align 8
  %i.hy = getelementptr inbounds i8, ptr %2, i64 %i.hx
  store ptr %i.hv, ptr %i.hy, align 8
  %i.hz = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt13basic_filebufIcSt11char_traitsIcEE, i64 16), ptr %i.hz, align 8
  %i.ia = call noundef ptr @_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv(ptr noundef nonnull align 8 dereferenceable(240) %i.hz) #13 ; 0 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %2, i64 120
  call void @_ZNSt12__basic_fileIcED1Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %i.ib) #13
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.hz, align 8
  %i.ic = getelementptr inbounds nuw i8, ptr %2, i64 72
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ic) #13
  %i.id = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTSt14basic_ifstreamIcSt11char_traitsIcEE, i64 8), align 8 ; 2 uses
  store ptr %i.id, ptr %2, align 8
  %i.ie = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTSt14basic_ifstreamIcSt11char_traitsIcEE, i64 16), align 8
  %i.if = getelementptr i8, ptr %i.id, i64 -24
  %i.ig = load i64, ptr %i.if, align 8
  %i.ih = getelementptr inbounds i8, ptr %2, i64 %i.ig
  store ptr %i.ie, ptr %i.ih, align 8
  %i.ii = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.ii, align 8
  %i.ij = getelementptr inbounds nuw i8, ptr %2, i64 256
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ij) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br label %_ZN2v88internal12_GLOBAL__N_121EnsureInitProfileDataB5cxx11Ev.exit

bb.an:                                            ; preds = %bb.al
  %i.ik = getelementptr i8, ptr %.sroa.038.0.i, i64 96
  %.val.i = load i8, ptr %i.ik, align 8, !range !14, !noundef !15
  %i.il = trunc nuw i8 %.val.i to i1
  br i1 %i.il, label %bb.al, label %bb.ao, !prof !6

bb.ao:                                            ; preds = %bb.an
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.7) #14
  unreachable

_ZN2v88internal12_GLOBAL__N_121EnsureInitProfileDataB5cxx11Ev.exit: ; preds = %bb.d, %bb.e, %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  %i.im = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 5 uses
  store ptr %i.im, ptr %8, align 8
  %i.in = icmp eq ptr %0, null
  br i1 %i.in, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_121EnsureInitProfileDataB5cxx11Ev.exit
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.8) #14
  unreachable

bb.aq:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_121EnsureInitProfileDataB5cxx11Ev.exit
  %i.io = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #13 ; 8 uses
  %i.ip = icmp ugt i64 %i.io, 15
  br i1 %i.ip, label %bb.ar, label %._crit_edge.i.i

bb.ar:                                            ; preds = %bb.aq
  %i.iq = icmp slt i64 %i.io, 0
  br i1 %i.iq, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #14
  unreachable

bb.at:                                            ; preds = %bb.ar
  %i.ir = add nuw i64 %i.io, 1                    ; 2 uses
  %i.is = icmp slt i64 %i.ir, 0
  br i1 %i.is, label %bb.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !10

bb.au:                                            ; preds = %bb.at
  call void @_ZSt17__throw_bad_allocv() #14
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.at
  %i.it = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ir) #17 ; 2 uses
  store ptr %i.it, ptr %8, align 8
  store i64 %i.io, ptr %i.im, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %bb.aq
  %i.iu = phi ptr [ %i.it, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %i.im, %bb.aq ] ; 3 uses
  switch i64 %i.io, label %bb.aw [
    i64 1, label %bb.av
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  ]

bb.av:                                            ; preds = %._crit_edge.i.i
  %i.iv = load i8, ptr %0, align 1
  store i8 %i.iv, ptr %i.iu, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit

bb.aw:                                            ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.iu, ptr nonnull align 1 %0, i64 %i.io, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit: ; preds = %._crit_edge.i.i, %bb.av, %bb.aw
  %i.iw = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  store i64 %i.io, ptr %i.iw, align 8
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iu, i64 %i.io
  store i8 0, ptr %i.ix, align 1
  %i.iy = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN2v88internal12_GLOBAL__N_121EnsureInitProfileDataB5cxx11EvE4dataB5cxx11, i64 24), align 8
  %.not.i.i5 = icmp ugt i64 %i.iy, 20
  br i1 %.not.i.i5, label %bb.ax, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  %.sroa.01.09.i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN2v88internal12_GLOBAL__N_121EnsureInitProfileDataB5cxx11EvE4dataB5cxx11, i64 16), align 8 ; 3 uses
  %i.iz = icmp eq ptr %.sroa.01.09.i.i, null
  %.pre = load ptr, ptr %8, align 8               ; 6 uses
  br i1 %i.iz, label %_ZNKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2v88internal12_GLOBAL__N_127ProfileDataFromFileInternalESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S9_EEE4findERSF_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %.val8.i.i = load i64, ptr %i.iw, align 8
  %.val8.fr.i.i = freeze i64 %.val8.i.i           ; 3 uses
  %i.ja = icmp eq i64 %.val8.fr.i.i, 0
  br i1 %i.ja, label %.lr.ph.split.us.i.i, label %.lr.ph.split.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N2v88internal12_GLOBAL__N_127ProfileDataFromFileInternalEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread4.us.i.i
  %.sroa.01.010.us.i.i = phi ptr [ %.sroa.01.0.us.i.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N2v88internal12_GLOBAL__N_127ProfileDataFromFileInternalEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread4.us.i.i ], [ %.sroa.01.09.i.i, %.lr.ph.i.i ] ; 3 uses
  %i.jb = getelementptr i8, ptr %.sroa.01.010.us.i.i, i64 16
  %.val10.us.i.i = load i64, ptr %i.jb, align 8
  %i.jc = icmp eq i64 %.val10.us.i.i, 0
  br i1 %i.jc, label %_ZNKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2v88internal12_GLOBAL__N_127ProfileDataFromFileInternalESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S9_EEE4findERSF_.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N2v88internal12_GLOBAL__N_127ProfileDataFromFileInternalEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread4.us.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N2v88internal12_GLOBAL__N_127ProfileDataFromFileInternalEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread4.us.i.i: ; preds = %.lr.ph.split.us.i.i
  %.sroa.01.0.us.i.i = load ptr, ptr %.sroa.01.010.us.i.i, align 8 ; 2 uses
  %i.jd = icmp eq ptr %.sroa.01.0.us.i.i, null
  br i1 %i.jd, label %_ZNKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2v88internal12_GLOBAL__N_127ProfileDataFromFileInternalESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S9_EEE4findERSF_.exit, label %.lr.ph.split.us.i.i, !llvm.loop !16

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N2v88internal12_GLOBAL__N_127ProfileDataFromFileInternalEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread4.i.i
  %.sroa.01.010.i.i = phi ptr [ %.sroa.01.0.i.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N2v88internal12_GLOBAL__N_127ProfileDataFromFileInternalEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread4.i.i ], [ %.sroa.01.09.i.i, %.lr.ph.i.i ] ; 4 uses
  %i.je = getelementptr i8, ptr %.sroa.01.010.i.i, i64 16
  %.val10.i.i = load i64, ptr %i.je, align 8
  %i.jf = icmp eq i64 %.val8.fr.i.i, %.val10.i.i
  br i1 %i.jf, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N2v88internal12_GLOBAL__N_127ProfileDataFromFileInternalEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISD_Lb1EEE.exit.i.i, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N2v88internal12_GLOBAL__N_127ProfileDataFromFileInternalEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread4.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N2v88internal12_GLOBAL__N_127ProfileDataFromFileInternalEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISD_Lb1EEE.exit.i.i: ; preds = %.lr.ph.split.i.i
  %i.jg = getelementptr inbounds nuw i8, ptr %.sroa.01.010.i.i, i64 8
  %.val9.i.i = load ptr, ptr %i.jg, align 8
  %bcmp.i.i.i.i.i = call i32 @bcmp(ptr readonly %.pre, ptr readonly %.val9.i.i, i64 %.val8.fr.i.i)
  %i.jh = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.jh, label %_ZNKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2v88internal12_GLOBAL__N_127ProfileDataFromFileInternalESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S9_EEE4findERSF_.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N2v88internal12_GLOBAL__N_127ProfileDataFromFileInternalEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread4.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N2v88internal12_GLOBAL__N_127ProfileDataFromFileInternalEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread4.i.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N2v88internal12_GLOBAL__N_127ProfileDataFromFileInternalEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISD_Lb1EEE.exit.i.i, %.lr.ph.split.i.i
  %.sroa.01.0.i.i = load ptr, ptr %.sroa.01.010.i.i, align 8 ; 2 uses
  %i.ji = icmp eq ptr %.sroa.01.0.i.i, null
  br i1 %i.ji, label %_ZNKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2v88internal12_GLOBAL__N_127ProfileDataFromFileInternalESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S9_EEE4findERSF_.exit, label %.lr.ph.split.i.i, !llvm.loop !16

bb.ax:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  %.val.i.i = load ptr, ptr %8, align 8
  %.val6.i.i = load i64, ptr %i.iw, align 8
  %i.jj = call noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef %.val.i.i, i64 noundef %.val6.i.i, i64 noundef 3339675911) #13 ; 3 uses
  %i.jk = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN2v88internal12_GLOBAL__N_121EnsureInitProfileDataB5cxx11EvE4dataB5cxx11, i64 8), align 8 ; 3 uses
  %i.jl = urem i64 %i.jj, %i.jk                   ; 3 uses
  %.val11.i.i = load ptr, ptr %8, align 8         ; 8 uses
  %.val12.i.i = load i64, ptr %i.iw, align 8
  %.8.val.fr.i.i.i.i = freeze i64 %.val12.i.i     ; 3 uses
  %i.jm = load ptr, ptr @_ZZN2v88internal12_GLOBAL__N_121EnsureInitProfileDataB5cxx11EvE4dataB5cxx11, align 8
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %i.jm, i64 %i.jl
  %i.jo = load ptr, ptr %i.jn, align 8            ; 2 uses
  %.not.i.i.i.i6 = icmp eq ptr %i.jo, null
  br i1 %.not.i.i.i.i6, label %_ZNKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2v88internal12_GLOBAL__N_127ProfileDataFromFileInternalESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S9_EEE4findERSF_.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.jp = load ptr, ptr %i.jo, align 8            ; 3 uses
  %i.jq = icmp eq i64 %.8.val.fr.i.i.i.i, 0
  %.phi.trans.insert7.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.jp, i64 104
  %.val.i.us.pre.i.i.i.i = load i64, ptr %.phi.trans.insert7.i.i.i.i, align 8 ; 2 uses
  br i1 %i.jq, label %.split.us.i.i.i.i, label %.split.i.i.i.i

.split.us.i.i.i.i:                                ; preds = %bb.ay, %bb.ba
  %.val.i.us.i.i.i.i = phi i64 [ %.val22.us.i.i.i.i, %bb.ba ], [ %.val.i.us.pre.i.i.i.i, %bb.ay ]
  %.0.us.i.i.i.i = phi ptr [ %i.ju, %bb.ba ], [ %i.jp, %bb.ay ] ; 3 uses
  %i.jr = icmp eq i64 %i.jj, %.val.i.us.i.i.i.i
  br i1 %i.jr, label %bb.az, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N2v88internal12_GLOBAL__N_127ProfileDataFromFileInternalEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.us.i.i.i.i

bb.az:                                            ; preds = %.split.us.i.i.i.i
  %i.js = getelementptr inbounds nuw i8, ptr %.0.us.i.i.i.i, i64 16
  %.val7.i.us.i.i.i.i = load i64, ptr %i.js, align 8
  %i.jt = icmp eq i64 %.val7.i.us.i.i.i.i, 0
  br i1 %i.jt, label %_ZNKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2v88internal12_GLOBAL__N_127ProfileDataFromFileInternalESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S9_EEE4findERSF_.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N2v88internal12_GLOBAL__N_127ProfileDataFromFileInternalEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.us.i.i.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N2v88internal12_GLOBAL__N_127ProfileDataFromFileInternalEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.us.i.i.i.i: ; preds = %bb.az, %.split.us.i.i.i.i
  %i.ju = load ptr, ptr %.0.us.i.i.i.i, align 8   ; 3 uses
  %.not18.us.i.i.i.i = icmp eq ptr %i.ju, null
  br i1 %.not18.us.i.i.i.i, label %_ZNKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2v88internal12_GLOBAL__N_127ProfileDataFromFileInternalESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S9_EEE4findERSF_.exit, label %bb.ba

bb.ba:                                            ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N2v88internal12_GLOBAL__N_127ProfileDataFromFileInternalEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.us.i.i.i.i
  %i.jv = getelementptr i8, ptr %i.ju, i64 104
  %.val22.us.i.i.i.i = load i64, ptr %i.jv, align 8 ; 2 uses
  %i.jw = urem i64 %.val22.us.i.i.i.i, %i.jk
  %.not19.us.i.i.i.i = icmp eq i64 %i.jw, %i.jl
  br i1 %.not19.us.i.i.i.i, label %.split.us.i.i.i.i, label %_ZNKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2v88internal12_GLOBAL__N_127ProfileDataFromFileInternalESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S9_EEE4findERSF_.exit, !llvm.loop !17

.split.i.i.i.i:                                   ; preds = %bb.ay, %bb.bc
  %.val.i.i.i.i.i = phi i64 [ %.val22.i.i.i.i, %bb.bc ], [ %.val.i.us.pre.i.i.i.i, %bb.ay ]
  %.0.i.i.i.i7 = phi ptr [ %i.kc, %bb.bc ], [ %i.jp, %bb.ay ] ; 4 uses
  %i.jx = icmp eq i64 %i.jj, %.val.i.i.i.i.i
  br i1 %i.jx, label %bb.bb, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N2v88internal12_GLOBAL__N_127ProfileDataFromFileInternalEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.i.i.i.i

bb.bb:                                            ; preds = %.split.i.i.i.i
  %i.jy = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i7, i64 16
  %.val7.i.i.i.i.i = load i64, ptr %i.jy, align 8
  %i.jz = icmp eq i64 %.8.val.fr.i.i.i.i, %.val7.i.i.i.i.i
  br i1 %i.jz, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N2v88internal12_GLOBAL__N_127ProfileDataFromFileInternalEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.i.i.i.i, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N2v88internal12_GLOBAL__N_127ProfileDataFromFileInternalEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.i.i.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N2v88internal12_GLOBAL__N_127ProfileDataFromFileInternalEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.i.i.i.i: ; preds = %bb.bb
  %i.ka = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i7, i64 8
  %.val6.i.i.i.i.i = load ptr, ptr %i.ka, align 8
  %bcmp.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr readonly %.val11.i.i, ptr readonly %.val6.i.i.i.i.i, i64 %.8.val.fr.i.i.i.i)
  %i.kb = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i, 0
  br i1 %i.kb, label %_ZNKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2v88internal12_GLOBAL__N_127ProfileDataFromFileInternalESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S9_EEE4findERSF_.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N2v88internal12_GLOBAL__N_127ProfileDataFromFileInternalEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.i.i.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N2v88internal12_GLOBAL__N_127ProfileDataFromFileInternalEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.i.i.i.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N2v88internal12_GLOBAL__N_127ProfileDataFromFileInternalEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.i.i.i.i, %bb.bb, %.split.i.i.i.i
  %i.kc = load ptr, ptr %.0.i.i.i.i7, align 8     ; 3 uses
  %.not18.i.i.i.i = icmp eq ptr %i.kc, null
  br i1 %.not18.i.i.i.i, label %_ZNKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2v88internal12_GLOBAL__N_127ProfileDataFromFileInternalESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S9_EEE4findERSF_.exit, label %bb.bc

bb.bc:                                            ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N2v88internal12_GLOBAL__N_127ProfileDataFromFileInternalEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.i.i.i.i
  %i.kd = getelementptr i8, ptr %i.kc, i64 104
  %.val22.i.i.i.i = load i64, ptr %i.kd, align 8  ; 2 uses
  %i.ke = urem i64 %.val22.i.i.i.i, %i.jk
  %.not19.i.i.i.i = icmp eq i64 %i.ke, %i.jl
  br i1 %.not19.i.i.i.i, label %.split.i.i.i.i, label %_ZNKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2v88internal12_GLOBAL__N_127ProfileDataFromFileInternalESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S9_EEE4findERSF_.exit, !llvm.loop !17

_ZNKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2v88internal12_GLOBAL__N_127ProfileDataFromFileInternalESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S9_EEE4findERSF_.exit: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N2v88internal12_GLOBAL__N_127ProfileDataFromFileInternalEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISD_Lb1EEE.exit.i.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N2v88internal12_GLOBAL__N_127ProfileDataFromFileInternalEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread4.i.i, %.lr.ph.split.us.i.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N2v88internal12_GLOBAL__N_127ProfileDataFromFileInternalEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread4.us.i.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N2v88internal12_GLOBAL__N_127ProfileDataFromFileInternalEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.i.i.i.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N2v88internal12_GLOBAL__N_127ProfileDataFromFileInternalEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.i.i.i.i, %bb.bc, %bb.az, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N2v88internal12_GLOBAL__N_127ProfileDataFromFileInternalEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.us.i.i.i.i, %bb.ba, %.preheader.i.i, %bb.ax
  %i.kf = phi ptr [ %.pre, %.preheader.i.i ], [ %.pre, %.lr.ph.split.us.i.i ], [ %.val11.i.i, %bb.ax ], [ %.val11.i.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N2v88internal12_GLOBAL__N_127ProfileDataFromFileInternalEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.i.i.i.i ], [ %.val11.i.i, %bb.az ], [ %.val11.i.i, %bb.ba ], [ %.val11.i.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N2v88internal12_GLOBAL__N_127ProfileDataFromFileInternalEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.us.i.i.i.i ], [ %.val11.i.i, %bb.bc ], [ %.val11.i.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N2v88internal12_GLOBAL__N_127ProfileDataFromFileInternalEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.i.i.i.i ], [ %.pre, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N2v88internal12_GLOBAL__N_127ProfileDataFromFileInternalEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread4.us.i.i ], [ %.pre, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N2v88internal12_GLOBAL__N_127ProfileDataFromFileInternalEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread4.i.i ], [ %.pre, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N2v88internal12_GLOBAL__N_127ProfileDataFromFileInternalEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISD_Lb1EEE.exit.i.i ] ; 2 uses
  %.sroa.01.1.i.i = phi ptr [ null, %.preheader.i.i ], [ %.sroa.01.010.us.i.i, %.lr.ph.split.us.i.i ], [ null, %bb.ax ], [ %.0.i.i.i.i7, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N2v88internal12_GLOBAL__N_127ProfileDataFromFileInternalEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.i.i.i.i ], [ %.0.us.i.i.i.i, %bb.az ], [ null, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N2v88internal12_GLOBAL__N_127ProfileDataFromFileInternalEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.us.i.i.i.i ], [ null, %bb.ba ], [ null, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N2v88internal12_GLOBAL__N_127ProfileDataFromFileInternalEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.i.i.i.i ], [ null, %bb.bc ], [ null, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N2v88internal12_GLOBAL__N_127ProfileDataFromFileInternalEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread4.us.i.i ], [ null, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N2v88internal12_GLOBAL__N_127ProfileDataFromFileInternalEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread4.i.i ], [ %.sroa.01.010.i.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N2v88internal12_GLOBAL__N_127ProfileDataFromFileInternalEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISD_Lb1EEE.exit.i.i ] ; 2 uses
  %i.kg = icmp eq ptr %i.kf, %i.im
  br i1 %i.kg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2v88internal12_GLOBAL__N_127ProfileDataFromFileInternalESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S9_EEE4findERSF_.exit
  %i.kh = load i64, ptr %i.im, align 8
  %i.ki = add i64 %i.kh, 1
  call void @_ZdlPvm(ptr noundef %i.kf, i64 noundef %i.ki) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2v88internal12_GLOBAL__N_127ProfileDataFromFileInternalESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S9_EEE4findERSF_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  %i.kj = icmp eq ptr %.sroa.01.1.i.i, null
  %i.kk = getelementptr inbounds nuw i8, ptr %.sroa.01.1.i.i, i64 40
  %i.kl = select i1 %i.kj, ptr null, ptr %i.kk
  ret ptr %i.kl
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(256), ptr noundef, i32 noundef) unnamed_addr #0 align 2

; Function Attrs: noreturn
declare void @_Z8V8_FatalPKcz(ptr noundef, ...) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EES4_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32), i8 noundef signext) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #5

; Function Attrs: nounwind
declare i64 @__isoc23_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef nonnull align 8 dereferenceable(57) ptr @_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2v88internal12_GLOBAL__N_127ProfileDataFromFileInternalESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S9_EEEixERSF_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 align 2 {
bb.a:
  %.val.i = load ptr, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val19.i = load i64, ptr %i.a, align 8
  %i.b = tail call noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef %.val.i, i64 noundef %.val19.i, i64 noundef 3339675911) #13 ; 5 uses
  %i.c = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN2v88internal12_GLOBAL__N_121EnsureInitProfileDataB5cxx11EvE4dataB5cxx11, i64 8), align 8 ; 4 uses
  %i.d = urem i64 %i.b, %i.c                      ; 4 uses
  %.val20.i = load ptr, ptr %0, align 8           ; 3 uses
  %.val21.i = load i64, ptr %i.a, align 8
  %.8.val.fr.i.i.i = freeze i64 %.val21.i         ; 11 uses
  %i.e = load ptr, ptr @_ZZN2v88internal12_GLOBAL__N_121EnsureInitProfileDataB5cxx11EvE4dataB5cxx11, align 8
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.d
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %.loopexit9.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.g, align 8              ; 3 uses
  %i.i = icmp eq i64 %.8.val.fr.i.i.i, 0
  %.phi.trans.insert7.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 104
  %.val.i.us.pre.i.i.i = load i64, ptr %.phi.trans.insert7.i.i.i, align 8 ; 2 uses
  br i1 %i.i, label %.split.us.i.i.i, label %.split.i.i.i

.split.us.i.i.i:                                  ; preds = %bb.b, %bb.d
  %.val.i.us.i.i.i = phi i64 [ %.val22.us.i.i.i, %bb.d ], [ %.val.i.us.pre.i.i.i, %bb.b ]
  %.0.us.i.i.i = phi ptr [ %i.m, %bb.d ], [ %i.h, %bb.b ] ; 3 uses
  %i.j = icmp eq i64 %i.b, %.val.i.us.i.i.i
  br i1 %i.j, label %bb.c, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N2v88internal12_GLOBAL__N_127ProfileDataFromFileInternalEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.us.i.i.i

bb.c:                                             ; preds = %.split.us.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.0.us.i.i.i, i64 16
  %.val7.i.us.i.i.i = load i64, ptr %i.k, align 8
  %i.l = icmp eq i64 %.val7.i.us.i.i.i, 0
  br i1 %i.l, label %_ZNSt8__detail9_Map_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N2v88internal12_GLOBAL__N_127ProfileDataFromFileInternalEESaISD_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS8_.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N2v88internal12_GLOBAL__N_127ProfileDataFromFileInternalEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.us.i.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N2v88internal12_GLOBAL__N_127ProfileDataFromFileInternalEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.us.i.i.i: ; preds = %bb.c, %.split.us.i.i.i
  %i.m = load ptr, ptr %.0.us.i.i.i, align 8      ; 3 uses
  %.not18.us.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not18.us.i.i.i, label %.loopexit9.i, label %bb.d

bb.d:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N2v88internal12_GLOBAL__N_127ProfileDataFromFileInternalEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.us.i.i.i
  %i.n = getelementptr i8, ptr %i.m, i64 104
  %.val22.us.i.i.i = load i64, ptr %i.n, align 8  ; 2 uses
  %i.o = urem i64 %.val22.us.i.i.i, %i.c
  %.not19.us.i.i.i = icmp eq i64 %i.o, %i.d
  br i1 %.not19.us.i.i.i, label %.split.us.i.i.i, label %.loopexit9.i, !llvm.loop !17

.split.i.i.i:                                     ; preds = %bb.b, %bb.f
  %.val.i.i.i.i = phi i64 [ %.val22.i.i.i, %bb.f ], [ %.val.i.us.pre.i.i.i, %bb.b ]
  %.0.i.i.i = phi ptr [ %i.u, %bb.f ], [ %i.h, %bb.b ] ; 4 uses
  %i.p = icmp eq i64 %i.b, %.val.i.i.i.i
  br i1 %i.p, label %bb.e, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N2v88internal12_GLOBAL__N_127ProfileDataFromFileInternalEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.i.i.i

bb.e:                                             ; preds = %.split.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16
  %.val7.i.i.i.i = load i64, ptr %i.q, align 8
  %i.r = icmp eq i64 %.8.val.fr.i.i.i, %.val7.i.i.i.i
  br i1 %i.r, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N2v88internal12_GLOBAL__N_127ProfileDataFromFileInternalEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.i.i.i, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N2v88internal12_GLOBAL__N_127ProfileDataFromFileInternalEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.i.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N2v88internal12_GLOBAL__N_127ProfileDataFromFileInternalEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.i.i.i: ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8
  %.val6.i.i.i.i = load ptr, ptr %i.s, align 8
  %bcmp.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr readonly %.val20.i, ptr readonly %.val6.i.i.i.i, i64 %.8.val.fr.i.i.i)
  %i.t = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br i1 %i.t, label %_ZNSt8__detail9_Map_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N2v88internal12_GLOBAL__N_127ProfileDataFromFileInternalEESaISD_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS8_.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N2v88internal12_GLOBAL__N_127ProfileDataFromFileInternalEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.i.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N2v88internal12_GLOBAL__N_127ProfileDataFromFileInternalEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.i.i.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N2v88internal12_GLOBAL__N_127ProfileDataFromFileInternalEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.i.i.i, %bb.e, %.split.i.i.i
  %i.u = load ptr, ptr %.0.i.i.i, align 8         ; 3 uses
  %.not18.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not18.i.i.i, label %.loopexit9.i, label %bb.f

bb.f:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N2v88internal12_GLOBAL__N_127ProfileDataFromFileInternalEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.i.i.i
  %i.v = getelementptr i8, ptr %i.u, i64 104
  %.val22.i.i.i = load i64, ptr %i.v, align 8     ; 2 uses
  %i.w = urem i64 %.val22.i.i.i, %i.c
  %.not19.i.i.i = icmp eq i64 %i.w, %i.d
  br i1 %.not19.i.i.i, label %.split.i.i.i, label %.loopexit9.i, !llvm.loop !17

.loopexit9.i:                                     ; preds = %bb.f, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N2v88internal12_GLOBAL__N_127ProfileDataFromFileInternalEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.i.i.i, %bb.d, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N2v88internal12_GLOBAL__N_127ProfileDataFromFileInternalEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.us.i.i.i, %bb.a
  %i.x = tail call noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #17 ; 15 uses
  store ptr null, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 24 ; 3 uses
  store ptr %i.z, ptr %i.y, align 8
  %i.aa = icmp ugt i64 %.8.val.fr.i.i.i, 15
  br i1 %i.aa, label %bb.g, label %._crit_edge.i.i.i.i.i.i.i.i

bb.g:                                             ; preds = %.loopexit9.i
  %i.ab = icmp slt i64 %.8.val.fr.i.i.i, 0
  br i1 %i.ab, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #14
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.ac = add nuw i64 %.8.val.fr.i.i.i, 1         ; 2 uses
  %i.ad = icmp slt i64 %i.ac, 0
  br i1 %i.ad, label %bb.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i.i, !prof !10

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt17__throw_bad_allocv() #14
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i.i: ; preds = %bb.i
  %i.ae = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #17 ; 2 uses
  store ptr %i.ae, ptr %i.y, align 8
  store i64 %.8.val.fr.i.i.i, ptr %i.z, align 8
  br label %._crit_edge.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i.i, %.loopexit9.i
  %i.af = phi ptr [ %i.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i.i ], [ %i.z, %.loopexit9.i ] ; 3 uses
  switch i64 %.8.val.fr.i.i.i, label %bb.l [
    i64 1, label %bb.k
    i64 0, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2v88internal12_GLOBAL__N_127ProfileDataFromFileInternalEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeC2IJRKSt21piecewise_construct_tSt5tupleIJRS7_EESV_IJEEEEEPNSE_16_Hashtable_allocISaINSE_10_Hash_nodeISC_Lb1EEEEEEDpOT_.exit.i
  ]

bb.k:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %i.ag = load i8, ptr %.val20.i, align 1
  store i8 %i.ag, ptr %i.af, align 1
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2v88internal12_GLOBAL__N_127ProfileDataFromFileInternalEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeC2IJRKSt21piecewise_construct_tSt5tupleIJRS7_EESV_IJEEEEEPNSE_16_Hashtable_allocISaINSE_10_Hash_nodeISC_Lb1EEEEEEDpOT_.exit.i

bb.l:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.af, ptr align 1 %.val20.i, i64 %.8.val.fr.i.i.i, i1 false)
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2v88internal12_GLOBAL__N_127ProfileDataFromFileInternalEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeC2IJRKSt21piecewise_construct_tSt5tupleIJRS7_EESV_IJEEEEEPNSE_16_Hashtable_allocISaINSE_10_Hash_nodeISC_Lb1EEEEEEDpOT_.exit.i

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2v88internal12_GLOBAL__N_127ProfileDataFromFileInternalEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeC2IJRKSt21piecewise_construct_tSt5tupleIJRS7_EESV_IJEEEEEPNSE_16_Hashtable_allocISaINSE_10_Hash_nodeISC_Lb1EEEEEEDpOT_.exit.i: ; preds = %bb.l, %bb.k, %._crit_edge.i.i.i.i.i.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 %.8.val.fr.i.i.i, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 %.8.val.fr.i.i.i
  store i8 0, ptr %i.ai, align 1
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %i.ak = getelementptr inbounds nuw i8, ptr %i.x, i64 56 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.x, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.aj, i8 0, i64 64, i1 false)
  store ptr %i.ak, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.x, i64 80
  store ptr %i.ak, ptr %i.am, align 8
  %i.an = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN2v88internal12_GLOBAL__N_121EnsureInitProfileDataB5cxx11EvE4dataB5cxx11, i64 24), align 8
  %i.ao = tail call { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZN2v88internal12_GLOBAL__N_121EnsureInitProfileDataB5cxx11EvE4dataB5cxx11, i64 32), i64 noundef %i.c, i64 noundef %i.an, i64 noundef 1) #13 ; 2 uses
  %i.ap = extractvalue { i8, i64 } %i.ao, 0
  %i.aq = trunc i8 %i.ap to i1
  br i1 %i.aq, label %bb.m, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2v88internal12_GLOBAL__N_127ProfileDataFromFileInternalEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeC2IJRKSt21piecewise_construct_tSt5tupleIJRS7_EESV_IJEEEEEPNSE_16_Hashtable_allocISaINSE_10_Hash_nodeISC_Lb1EEEEEEDpOT_.exit.i
  %.pre.i.i = load ptr, ptr @_ZZN2v88internal12_GLOBAL__N_121EnsureInitProfileDataB5cxx11EvE4dataB5cxx11, align 8
  br label %bb.x

bb.m:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2v88internal12_GLOBAL__N_127ProfileDataFromFileInternalEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeC2IJRKSt21piecewise_construct_tSt5tupleIJRS7_EESV_IJEEEEEPNSE_16_Hashtable_allocISaINSE_10_Hash_nodeISC_Lb1EEEEEEDpOT_.exit.i
  %i.ar = extractvalue { i8, i64 } %i.ao, 1       ; 7 uses
  %i.as = icmp eq i64 %i.ar, 1
  br i1 %i.as, label %bb.n, label %bb.o, !prof !10

bb.n:                                             ; preds = %bb.m
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @_ZZN2v88internal12_GLOBAL__N_121EnsureInitProfileDataB5cxx11EvE4dataB5cxx11, i64 48), align 8
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2v88internal12_GLOBAL__N_127ProfileDataFromFileInternalEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.at = icmp ugt i64 %i.ar, 1152921504606846975
  br i1 %i.at, label %bb.p, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2v88internal12_GLOBAL__N_127ProfileDataFromFileInternalEELb1EEEEE19_M_allocate_bucketsEm.exit.i.i.i.i.i, !prof !10

bb.p:                                             ; preds = %bb.o
  %i.au = icmp ugt i64 %i.ar, 2305843009213693951
  br i1 %i.au, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #14
  unreachable

bb.r:                                             ; preds = %bb.p
  tail call void @_ZSt17__throw_bad_allocv() #14
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2v88internal12_GLOBAL__N_127ProfileDataFromFileInternalEELb1EEEEE19_M_allocate_bucketsEm.exit.i.i.i.i.i: ; preds = %bb.o
  %i.av = shl nuw nsw i64 %i.ar, 3                ; 2 uses
  %i.aw = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.av) #17 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.aw, i8 0, i64 %i.av, i1 false)
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2v88internal12_GLOBAL__N_127ProfileDataFromFileInternalEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i.i.i.i

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2v88internal12_GLOBAL__N_127ProfileDataFromFileInternalEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i.i.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2v88internal12_GLOBAL__N_127ProfileDataFromFileInternalEELb1EEEEE19_M_allocate_bucketsEm.exit.i.i.i.i.i, %bb.n
  %.0.i.i.i.i.i = phi ptr [ getelementptr inbounds nuw (i8, ptr @_ZZN2v88internal12_GLOBAL__N_121EnsureInitProfileDataB5cxx11EvE4dataB5cxx11, i64 48), %bb.n ], [ %i.aw, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2v88internal12_GLOBAL__N_127ProfileDataFromFileInternalEELb1EEEEE19_M_allocate_bucketsEm.exit.i.i.i.i.i ] ; 4 uses
  %i.ax = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN2v88internal12_GLOBAL__N_121EnsureInitProfileDataB5cxx11EvE4dataB5cxx11, i64 16), align 8 ; 2 uses
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @_ZZN2v88internal12_GLOBAL__N_121EnsureInitProfileDataB5cxx11EvE4dataB5cxx11, i64 16), align 8
  %.not1.i.i.i.i = icmp eq ptr %i.ax, null
  br i1 %.not1.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2v88internal12_GLOBAL__N_127ProfileDataFromFileInternalEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i.i.i.i, %bb.v
  %.03.i.i.i.i = phi ptr [ %.0.val.i.i.i.i, %bb.v ], [ %i.ax, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2v88internal12_GLOBAL__N_127ProfileDataFromFileInternalEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i.i.i.i ] ; 8 uses
  %.0252.i.i.i.i = phi i64 [ %.1.i.i.i.i, %bb.v ], [ 0, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2v88internal12_GLOBAL__N_127ProfileDataFromFileInternalEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i.i.i.i ] ; 2 uses
  %.0.val.i.i.i.i = load ptr, ptr %.03.i.i.i.i, align 8 ; 2 uses
  %i.ay = getelementptr i8, ptr %.03.i.i.i.i, i64 104
  %.val.i.i.i26.i = load i64, ptr %i.ay, align 8
  %i.az = urem i64 %.val.i.i.i26.i, %i.ar         ; 3 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i.i, i64 %i.az ; 3 uses
  %i.bb = load ptr, ptr %i.ba, align 8            ; 2 uses
  %.not27.i.i.i.i = icmp eq ptr %i.bb, null
  br i1 %.not27.i.i.i.i, label %bb.s, label %bb.u

bb.s:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN2v88internal12_GLOBAL__N_121EnsureInitProfileDataB5cxx11EvE4dataB5cxx11, i64 16), align 8
  store ptr %i.bc, ptr %.03.i.i.i.i, align 8
  store ptr %.03.i.i.i.i, ptr getelementptr inbounds nuw (i8, ptr @_ZZN2v88internal12_GLOBAL__N_121EnsureInitProfileDataB5cxx11EvE4dataB5cxx11, i64 16), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZN2v88internal12_GLOBAL__N_121EnsureInitProfileDataB5cxx11EvE4dataB5cxx11, i64 16), ptr %i.ba, align 8
  %i.bd = load ptr, ptr %.03.i.i.i.i, align 8
  %.not28.i.i.i.i = icmp eq ptr %i.bd, null
  br i1 %.not28.i.i.i.i, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i.i, i64 %.0252.i.i.i.i
  store ptr %.03.i.i.i.i, ptr %i.be, align 8
  br label %bb.v

bb.u:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bf = load ptr, ptr %i.bb, align 8
  store ptr %i.bf, ptr %.03.i.i.i.i, align 8
  %i.bg = load ptr, ptr %i.ba, align 8
  store ptr %.03.i.i.i.i, ptr %i.bg, align 8
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %.1.i.i.i.i = phi i64 [ %.0252.i.i.i.i, %bb.u ], [ %i.az, %bb.t ], [ %i.az, %bb.s ]
  %.not.i.i.i.i = icmp eq ptr %.0.val.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !18

._crit_edge.i.i.i.i:                              ; preds = %bb.v, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2v88internal12_GLOBAL__N_127ProfileDataFromFileInternalEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i.i.i.i
  %i.bh = load ptr, ptr @_ZZN2v88internal12_GLOBAL__N_121EnsureInitProfileDataB5cxx11EvE4dataB5cxx11, align 8 ; 2 uses
  %i.bi = icmp eq ptr %i.bh, getelementptr inbounds nuw (i8, ptr @_ZZN2v88internal12_GLOBAL__N_121EnsureInitProfileDataB5cxx11EvE4dataB5cxx11, i64 48)
  br i1 %i.bi, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2v88internal12_GLOBAL__N_127ProfileDataFromFileInternalEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_rehashEmRKm.exit.i.i, label %bb.w

bb.w:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bj = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN2v88internal12_GLOBAL__N_121EnsureInitProfileDataB5cxx11EvE4dataB5cxx11, i64 8), align 8
  %i.bk = shl i64 %i.bj, 3
  tail call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bk) #15
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2v88internal12_GLOBAL__N_127ProfileDataFromFileInternalEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_rehashEmRKm.exit.i.i

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2v88internal12_GLOBAL__N_127ProfileDataFromFileInternalEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_rehashEmRKm.exit.i.i: ; preds = %bb.w, %._crit_edge.i.i.i.i
  store i64 %i.ar, ptr getelementptr inbounds nuw (i8, ptr @_ZZN2v88internal12_GLOBAL__N_121EnsureInitProfileDataB5cxx11EvE4dataB5cxx11, i64 8), align 8
  store ptr %.0.i.i.i.i.i, ptr @_ZZN2v88internal12_GLOBAL__N_121EnsureInitProfileDataB5cxx11EvE4dataB5cxx11, align 8
  %i.bl = urem i64 %i.b, %i.ar
  br label %bb.x

bb.x:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2v88internal12_GLOBAL__N_127ProfileDataFromFileInternalEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_rehashEmRKm.exit.i.i, %._crit_edge.i.i
  %i.bm = phi ptr [ %.0.i.i.i.i.i, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2v88internal12_GLOBAL__N_127ProfileDataFromFileInternalEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_rehashEmRKm.exit.i.i ], [ %.pre.i.i, %._crit_edge.i.i ] ; 3 uses
  %.0.i24.i = phi i64 [ %i.bl, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2v88internal12_GLOBAL__N_127ProfileDataFromFileInternalEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_rehashEmRKm.exit.i.i ], [ %i.d, %._crit_edge.i.i ] ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.x, i64 104
  store i64 %i.b, ptr %i.bn, align 8
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %.0.i24.i ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8            ; 2 uses
  %.not.i.i25.i = icmp eq ptr %i.bp, null
  br i1 %.not.i.i25.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bq = load ptr, ptr %i.bp, align 8
  store ptr %i.bq, ptr %i.x, align 8
  %i.br = load ptr, ptr %i.bo, align 8
  store ptr %i.x, ptr %i.br, align 8
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2v88internal12_GLOBAL__N_127ProfileDataFromFileInternalEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i

bb.z:                                             ; preds = %bb.x
  %i.bs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN2v88internal12_GLOBAL__N_121EnsureInitProfileDataB5cxx11EvE4dataB5cxx11, i64 16), align 8 ; 3 uses
  store ptr %i.bs, ptr %i.x, align 8
  store ptr %i.x, ptr getelementptr inbounds nuw (i8, ptr @_ZZN2v88internal12_GLOBAL__N_121EnsureInitProfileDataB5cxx11EvE4dataB5cxx11, i64 16), align 8
  %.not11.i.i.i = icmp eq ptr %i.bs, null
  br i1 %.not11.i.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bt = getelementptr i8, ptr %i.bs, i64 104
  %.val12.i.i.i = load i64, ptr %i.bt, align 8
  %i.bu = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN2v88internal12_GLOBAL__N_121EnsureInitProfileDataB5cxx11EvE4dataB5cxx11, i64 8), align 8
  %i.bv = urem i64 %.val12.i.i.i, %i.bu
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.bv
  store ptr %i.x, ptr %i.bw, align 8
  %.pre.i = load ptr, ptr @_ZZN2v88internal12_GLOBAL__N_121EnsureInitProfileDataB5cxx11EvE4dataB5cxx11, align 8
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.bx = phi ptr [ %.pre.i, %bb.aa ], [ %i.bm, %bb.z ]
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %.0.i24.i
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZN2v88internal12_GLOBAL__N_121EnsureInitProfileDataB5cxx11EvE4dataB5cxx11, i64 16), ptr %i.by, align 8
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2v88internal12_GLOBAL__N_127ProfileDataFromFileInternalEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2v88internal12_GLOBAL__N_127ProfileDataFromFileInternalEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i: ; preds = %bb.ab, %bb.y
  %i.bz = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN2v88internal12_GLOBAL__N_121EnsureInitProfileDataB5cxx11EvE4dataB5cxx11, i64 24), align 8
  %i.ca = add i64 %i.bz, 1
  store i64 %i.ca, ptr getelementptr inbounds nuw (i8, ptr @_ZZN2v88internal12_GLOBAL__N_121EnsureInitProfileDataB5cxx11EvE4dataB5cxx11, i64 24), align 8
  br label %_ZNSt8__detail9_Map_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N2v88internal12_GLOBAL__N_127ProfileDataFromFileInternalEESaISD_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS8_.exit

_ZNSt8__detail9_Map_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N2v88internal12_GLOBAL__N_127ProfileDataFromFileInternalEESaISD_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS8_.exit: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N2v88internal12_GLOBAL__N_127ProfileDataFromFileInternalEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.i.i.i, %bb.c, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2v88internal12_GLOBAL__N_127ProfileDataFromFileInternalEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i
  %.pn.i = phi ptr [ %i.x, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2v88internal12_GLOBAL__N_127ProfileDataFromFileInternalEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i ], [ %.0.us.i.i.i, %bb.c ], [ %.0.i.i.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N2v88internal12_GLOBAL__N_127ProfileDataFromFileInternalEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.i.i.i ]
  %.1.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 40
  ret ptr %.1.i
}

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264), ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(216)) unnamed_addr #6

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #3

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEC2ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) unnamed_addr #0 align 2

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #3

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #10

declare noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

declare { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZNSt3mapISt4pairImmEbSt4lessIS1_ESaIS0_IKS1_bEEE6insertIS0_IS1_bEEENSt9enable_ifIXsr16is_constructibleIS5_T_EE5valueES0_ISt17_Rb_tree_iteratorIS5_EbEE4typeEOSB_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(17) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = load i64, ptr %1, align 8                ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %bb.b ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %bb.b ]
  %i.g = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.h = load i64, ptr %i.g, align 8              ; 2 uses
  %i.i = icmp eq i64 %i.h, %i.d
  %i.j = icmp ult i64 %i.h, %i.d
  %i.k = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.l = load i64, ptr %i.k, align 8
  %i.m = icmp ult i64 %i.l, %i.f
  %.sroa.05.0.i.i.i.i.i = select i1 %i.i, i1 %i.m, i1 %i.j ; 2 uses
  %.19.i.i.i = select i1 %.sroa.05.0.i.i.i.i.i, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 7 uses
  %.1.in.v.i.i.i = select i1 %.sroa.05.0.i.i.i.i.i, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapISt4pairImmEbSt4lessIS1_ESaIS0_IKS1_bEEE11lower_boundERS4_.exit, label %bb.b, !llvm.loop !19

_ZNSt3mapISt4pairImmEbSt4lessIS1_ESaIS0_IKS1_bEEE11lower_boundERS4_.exit: ; preds = %bb.b
  %i.n = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.n, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapISt4pairImmEbSt4lessIS1_ESaIS0_IKS1_bEEE11lower_boundERS4_.exit
  %i.o = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.p = load i64, ptr %i.o, align 8              ; 2 uses
  %i.q = icmp eq i64 %i.d, %i.p
  %i.r = icmp ult i64 %i.d, %i.p
  %i.s = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.t = load i64, ptr %i.s, align 8
  %i.u = icmp ult i64 %i.f, %i.t
  %.sroa.05.0.i.i = select i1 %i.q, i1 %i.u, i1 %i.r
  br i1 %.sroa.05.0.i.i, label %.critedge, label %_ZNSt3mapISt4pairImmEbSt4lessIS1_ESaIS0_IKS1_bEEE12emplace_hintIJS0_IS1_bEEEESt17_Rb_tree_iteratorIS5_ESt23_Rb_tree_const_iteratorIS5_EDpOT_.exit

.critedge:                                        ; preds = %bb.a, %_ZNSt3mapISt4pairImmEbSt4lessIS1_ESaIS0_IKS1_bEEE11lower_boundERS4_.exit, %bb.c
  %.08.lcssa.i.i.i14 = phi ptr [ %.19.i.i.i, %bb.c ], [ %.19.i.i.i, %_ZNSt3mapISt4pairImmEbSt4lessIS1_ESaIS0_IKS1_bEEE11lower_boundERS4_.exit ], [ %i.c, %bb.a ]
  %i.v = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #17 ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.w, ptr noundef nonnull align 8 dereferenceable(17) %1, i64 16, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.z = load i8, ptr %i.y, align 8, !range !14, !noundef !15
  store i8 %i.z, ptr %i.x, align 8
  %i.aa = tail call { ptr, ptr } @_ZNSt8_Rb_treeISt4pairImmES0_IKS1_bESt10_Select1stIS3_ESt4lessIS1_ESaIS3_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS3_ERS2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i14, ptr noundef nonnull align 8 dereferenceable(16) %i.w) ; 2 uses
  %i.ab = extractvalue { ptr, ptr } %i.aa, 0      ; 2 uses
  %i.ac = extractvalue { ptr, ptr } %i.aa, 1      ; 5 uses
  %.not.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %.critedge
  %.not.i.i.i.i = icmp ne ptr %i.ab, null
  %i.ad = icmp eq ptr %i.ac, %i.c
  %or.cond.i.i.i.i = select i1 %.not.i.i.i.i, i1 true, i1 %i.ad
  br i1 %or.cond.i.i.i.i, label %.thread.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.af = load i64, ptr %i.w, align 8             ; 2 uses
  %i.ag = load i64, ptr %i.ae, align 8            ; 2 uses
  %i.ah = icmp eq i64 %i.af, %i.ag
  %i.ai = icmp ult i64 %i.af, %i.ag
  %i.aj = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %i.al = load i64, ptr %i.aj, align 8
  %i.am = load i64, ptr %i.ak, align 8
  %i.an = icmp ult i64 %i.al, %i.am
  %.sroa.05.0.i.i.i.i.i.i = select i1 %i.ah, i1 %i.an, i1 %i.ai
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.e, %bb.d
  %i.ao = phi i1 [ %.sroa.05.0.i.i.i.i.i.i, %bb.e ], [ true, %bb.d ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ao, ptr noundef nonnull %i.v, ptr noundef nonnull %i.ac, ptr noundef nonnull align 8 dereferenceable(32) %i.c) #13
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8
  %i.ar = add i64 %i.aq, 1
  store i64 %i.ar, ptr %i.ap, align 8
  br label %_ZNSt3mapISt4pairImmEbSt4lessIS1_ESaIS0_IKS1_bEEE12emplace_hintIJS0_IS1_bEEEESt17_Rb_tree_iteratorIS5_ESt23_Rb_tree_const_iteratorIS5_EDpOT_.exit

bb.f:                                             ; preds = %.critedge
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef 56) #15
  br label %_ZNSt3mapISt4pairImmEbSt4lessIS1_ESaIS0_IKS1_bEEE12emplace_hintIJS0_IS1_bEEEESt17_Rb_tree_iteratorIS5_ESt23_Rb_tree_const_iteratorIS5_EDpOT_.exit

_ZNSt3mapISt4pairImmEbSt4lessIS1_ESaIS0_IKS1_bEEE12emplace_hintIJS0_IS1_bEEEESt17_Rb_tree_iteratorIS5_ESt23_Rb_tree_const_iteratorIS5_EDpOT_.exit: ; preds = %bb.c, %bb.f, %.thread.i.i
  %.sroa.012.0 = phi ptr [ %i.ab, %bb.f ], [ %i.v, %.thread.i.i ], [ %.19.i.i.i, %bb.c ]
  %.sroa.3.0 = phi i8 [ 1, %bb.f ], [ 1, %.thread.i.i ], [ 0, %bb.c ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.012.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local { ptr, ptr } @_ZNSt8_Rb_treeISt4pairImmES0_IKS1_bESt10_Select1stIS3_ESt4lessIS1_ESaIS3_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS3_ERS2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = icmp eq ptr %1, %i.a
  br i1 %i.b, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8              ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load i64, ptr %i.g, align 8              ; 2 uses
  %i.i = load i64, ptr %2, align 8                ; 2 uses
  %i.j = icmp eq i64 %i.h, %i.i
  %i.k = icmp ult i64 %i.h, %i.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.n = load i64, ptr %i.l, align 8
  %i.o = load i64, ptr %i.m, align 8
  %i.p = icmp ult i64 %i.n, %i.o
  %.sroa.05.0.i.i = select i1 %i.j, i1 %i.p, i1 %i.k
  br i1 %.sroa.05.0.i.i, label %_ZNSt8_Rb_treeISt4pairImmES0_IKS1_bESt10_Select1stIS3_ESt4lessIS1_ESaIS3_EE24_M_get_insert_unique_posERS2_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02123.i = load ptr, ptr %i.q, align 8         ; 2 uses
  %.not24.i = icmp eq ptr %.02123.i, null
  br i1 %.not24.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.r = load i64, ptr %2, align 8                ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.t = load i64, ptr %i.s, align 8              ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i
  %.02125.i = phi ptr [ %.02123.i, %.lr.ph.i ], [ %.021.i, %bb.e ] ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.02125.i, i64 32
  %i.v = load i64, ptr %i.u, align 8              ; 3 uses
  %i.w = icmp eq i64 %i.r, %i.v
  %i.x = icmp ult i64 %i.r, %i.v
  %i.y = getelementptr inbounds nuw i8, ptr %.02125.i, i64 40
  %i.z = load i64, ptr %i.y, align 8              ; 2 uses
  %i.aa = icmp ult i64 %i.t, %i.z
  %.sroa.05.0.i.i.i = select i1 %i.w, i1 %i.aa, i1 %i.x ; 2 uses
  %.in.v.i = select i1 %.sroa.05.0.i.i.i, i64 16, i64 24
  %.in.i = getelementptr inbounds nuw i8, ptr %.02125.i, i64 %.in.v.i
  %.021.i = load ptr, ptr %.in.i, align 8         ; 2 uses
  %.not.i = icmp eq ptr %.021.i, null
  br i1 %.not.i, label %._crit_edge.i, label %bb.e, !llvm.loop !20

._crit_edge.i:                                    ; preds = %bb.e
  br i1 %.sroa.05.0.i.i.i, label %._crit_edge.thread.i, label %bb.g

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.d
  %.020.lcssa30.i = phi ptr [ %.02125.i, %._crit_edge.i ], [ %i.a, %bb.d ] ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = icmp eq ptr %.020.lcssa30.i, %i.ac
  br i1 %i.ad, label %_ZNSt8_Rb_treeISt4pairImmES0_IKS1_bESt10_Select1stIS3_ESt4lessIS1_ESaIS3_EE24_M_get_insert_unique_posERS2_.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge.thread.i
  %i.ae = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.020.lcssa30.i) #18 ; 3 uses
  %.phi.trans.insert88 = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %.pre89 = load i64, ptr %.phi.trans.insert88, align 8
  %.pre90 = load i64, ptr %2, align 8
  %.phi.trans.insert91 = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  %.pre92 = load i64, ptr %.phi.trans.insert91, align 8
  %.phi.trans.insert93 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre94 = load i64, ptr %.phi.trans.insert93, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i
  %i.af = phi i64 [ %.pre94, %bb.f ], [ %i.t, %._crit_edge.i ]
  %i.ag = phi i64 [ %.pre92, %bb.f ], [ %i.z, %._crit_edge.i ]
  %i.ah = phi i64 [ %.pre90, %bb.f ], [ %i.r, %._crit_edge.i ] ; 2 uses
  %i.ai = phi i64 [ %.pre89, %bb.f ], [ %i.v, %._crit_edge.i ] ; 2 uses
  %.020.lcssa29.i = phi ptr [ %.020.lcssa30.i, %bb.f ], [ %.02125.i, %._crit_edge.i ]
  %.sroa.06.0.i = phi ptr [ %i.ae, %bb.f ], [ %.02125.i, %._crit_edge.i ]
  %i.aj = icmp eq i64 %i.ai, %i.ah
  %i.ak = icmp ult i64 %i.ai, %i.ah
  %i.al = icmp ult i64 %i.ag, %i.af
  %.sroa.05.0.i.i5.i = select i1 %i.aj, i1 %i.al, i1 %i.ak ; 2 uses
  %spec.select.i = select i1 %.sroa.05.0.i.i5.i, ptr null, ptr %.sroa.06.0.i
  %spec.select22.i = select i1 %.sroa.05.0.i.i5.i, ptr %.020.lcssa29.i, ptr null
  br label %_ZNSt8_Rb_treeISt4pairImmES0_IKS1_bESt10_Select1stIS3_ESt4lessIS1_ESaIS3_EE24_M_get_insert_unique_posERS2_.exit

bb.h:                                             ; preds = %bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.an = load i64, ptr %2, align 8               ; 15 uses
  %i.ao = load i64, ptr %i.am, align 8            ; 3 uses
  %i.ap = icmp eq i64 %i.an, %i.ao                ; 2 uses
  %i.aq = icmp ult i64 %i.an, %i.ao
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.at = load i64, ptr %i.ar, align 8            ; 8 uses
  %i.au = load i64, ptr %i.as, align 8            ; 2 uses
  %i.av = icmp ult i64 %i.at, %i.au
  %.sroa.05.0.i.i10 = select i1 %i.ap, i1 %i.av, i1 %i.aq
  br i1 %.sroa.05.0.i.i10, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8            ; 4 uses
  %i.ay = icmp eq ptr %i.ax, %1
  br i1 %i.ay, label %_ZNSt8_Rb_treeISt4pairImmES0_IKS1_bESt10_Select1stIS3_ESt4lessIS1_ESaIS3_EE24_M_get_insert_unique_posERS2_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.az = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #18 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %i.bb = load i64, ptr %i.ba, align 8            ; 2 uses
  %i.bc = icmp eq i64 %i.bb, %i.an
  %i.bd = icmp ult i64 %i.bb, %i.an
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 40
  %i.bf = load i64, ptr %i.be, align 8
  %i.bg = icmp ult i64 %i.bf, %i.at
  %.sroa.05.0.i.i11 = select i1 %i.bc, i1 %i.bg, i1 %i.bd
  br i1 %.sroa.05.0.i.i11, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bh = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = icmp eq ptr %i.bi, null                 ; 2 uses
  %spec.select = select i1 %i.bj, ptr null, ptr %1
  %spec.select79 = select i1 %i.bj, ptr %i.az, ptr %1
  br label %_ZNSt8_Rb_treeISt4pairImmES0_IKS1_bESt10_Select1stIS3_ESt4lessIS1_ESaIS3_EE24_M_get_insert_unique_posERS2_.exit

bb.l:                                             ; preds = %bb.j
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02123.i12 = load ptr, ptr %i.bk, align 8      ; 2 uses
  %.not24.i13 = icmp eq ptr %.02123.i12, null
  br i1 %.not24.i13, label %._crit_edge.thread.i31, label %.lr.ph.i14

.lr.ph.i14:                                       ; preds = %bb.l, %.lr.ph.i14
  %.02125.i15 = phi ptr [ %.021.i19, %.lr.ph.i14 ], [ %.02123.i12, %bb.l ] ; 6 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.02125.i15, i64 32
  %i.bm = load i64, ptr %i.bl, align 8            ; 3 uses
  %i.bn = icmp eq i64 %i.an, %i.bm
  %i.bo = icmp ult i64 %i.an, %i.bm
  %i.bp = getelementptr inbounds nuw i8, ptr %.02125.i15, i64 40
  %i.bq = load i64, ptr %i.bp, align 8            ; 2 uses
  %i.br = icmp ult i64 %i.at, %i.bq
  %.sroa.05.0.i.i.i16 = select i1 %i.bn, i1 %i.br, i1 %i.bo ; 2 uses
  %.in.v.i17 = select i1 %.sroa.05.0.i.i.i16, i64 16, i64 24
  %.in.i18 = getelementptr inbounds nuw i8, ptr %.02125.i15, i64 %.in.v.i17
  %.021.i19 = load ptr, ptr %.in.i18, align 8     ; 2 uses
  %.not.i20 = icmp eq ptr %.021.i19, null
  br i1 %.not.i20, label %._crit_edge.i21, label %.lr.ph.i14, !llvm.loop !20

._crit_edge.i21:                                  ; preds = %.lr.ph.i14
  br i1 %.sroa.05.0.i.i.i16, label %._crit_edge.thread.i31, label %bb.n

._crit_edge.thread.i31:                           ; preds = %._crit_edge.i21, %bb.l
  %.020.lcssa30.i32 = phi ptr [ %.02125.i15, %._crit_edge.i21 ], [ %i.a, %bb.l ] ; 4 uses
  %i.bs = icmp eq ptr %.020.lcssa30.i32, %i.ax
  br i1 %i.bs, label %_ZNSt8_Rb_treeISt4pairImmES0_IKS1_bESt10_Select1stIS3_ESt4lessIS1_ESaIS3_EE24_M_get_insert_unique_posERS2_.exit, label %bb.m

bb.m:                                             ; preds = %._crit_edge.thread.i31
  %i.bt = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.020.lcssa30.i32) #18 ; 3 uses
  %.phi.trans.insert84 = getelementptr inbounds nuw i8, ptr %i.bt, i64 32
  %.pre85 = load i64, ptr %.phi.trans.insert84, align 8
  %.phi.trans.insert86 = getelementptr inbounds nuw i8, ptr %i.bt, i64 40
  %.pre87 = load i64, ptr %.phi.trans.insert86, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i21
  %i.bu = phi i64 [ %.pre87, %bb.m ], [ %i.bq, %._crit_edge.i21 ]
  %i.bv = phi i64 [ %.pre85, %bb.m ], [ %i.bm, %._crit_edge.i21 ] ; 2 uses
  %.020.lcssa29.i22 = phi ptr [ %.020.lcssa30.i32, %bb.m ], [ %.02125.i15, %._crit_edge.i21 ]
  %.sroa.06.0.i23 = phi ptr [ %i.bt, %bb.m ], [ %.02125.i15, %._crit_edge.i21 ]
  %i.bw = icmp eq i64 %i.bv, %i.an
  %i.bx = icmp ult i64 %i.bv, %i.an
  %i.by = icmp ult i64 %i.bu, %i.at
  %.sroa.05.0.i.i5.i24 = select i1 %i.bw, i1 %i.by, i1 %i.bx ; 2 uses
  %spec.select.i25 = select i1 %.sroa.05.0.i.i5.i24, ptr null, ptr %.sroa.06.0.i23
  %spec.select22.i26 = select i1 %.sroa.05.0.i.i5.i24, ptr %.020.lcssa29.i22, ptr null
  br label %_ZNSt8_Rb_treeISt4pairImmES0_IKS1_bESt10_Select1stIS3_ESt4lessIS1_ESaIS3_EE24_M_get_insert_unique_posERS2_.exit

bb.o:                                             ; preds = %bb.h
  %i.bz = icmp ult i64 %i.ao, %i.an
  %i.ca = icmp ult i64 %i.au, %i.at
  %.sroa.05.0.i.i34 = select i1 %i.ap, i1 %i.ca, i1 %i.bz
  br i1 %.sroa.05.0.i.i34, label %bb.p, label %_ZNSt8_Rb_treeISt4pairImmES0_IKS1_bESt10_Select1stIS3_ESt4lessIS1_ESaIS3_EE24_M_get_insert_unique_posERS2_.exit

bb.p:                                             ; preds = %bb.o
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cc = load ptr, ptr %i.cb, align 8            ; 2 uses
  %i.cd = icmp eq ptr %i.cc, %1
  br i1 %i.cd, label %_ZNSt8_Rb_treeISt4pairImmES0_IKS1_bESt10_Select1stIS3_ESt4lessIS1_ESaIS3_EE24_M_get_insert_unique_posERS2_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ce = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #18 ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 32
  %i.cg = load i64, ptr %i.cf, align 8            ; 2 uses
  %i.ch = icmp eq i64 %i.an, %i.cg
  %i.ci = icmp ult i64 %i.an, %i.cg
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 40
  %i.ck = load i64, ptr %i.cj, align 8
  %i.cl = icmp ult i64 %i.at, %i.ck
  %.sroa.05.0.i.i35 = select i1 %i.ch, i1 %i.cl, i1 %i.ci
  br i1 %.sroa.05.0.i.i35, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cn = load ptr, ptr %i.cm, align 8
  %i.co = icmp eq ptr %i.cn, null                 ; 2 uses
  %spec.select80 = select i1 %i.co, ptr null, ptr %i.ce
  %spec.select81 = select i1 %i.co, ptr %1, ptr %i.ce
  br label %_ZNSt8_Rb_treeISt4pairImmES0_IKS1_bESt10_Select1stIS3_ESt4lessIS1_ESaIS3_EE24_M_get_insert_unique_posERS2_.exit

bb.s:                                             ; preds = %bb.q
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02123.i36 = load ptr, ptr %i.cp, align 8      ; 2 uses
  %.not24.i37 = icmp eq ptr %.02123.i36, null
  br i1 %.not24.i37, label %._crit_edge.thread.i55, label %.lr.ph.i38

.lr.ph.i38:                                       ; preds = %bb.s, %.lr.ph.i38
  %.02125.i39 = phi ptr [ %.021.i43, %.lr.ph.i38 ], [ %.02123.i36, %bb.s ] ; 6 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.02125.i39, i64 32
  %i.cr = load i64, ptr %i.cq, align 8            ; 3 uses
  %i.cs = icmp eq i64 %i.an, %i.cr
  %i.ct = icmp ult i64 %i.an, %i.cr
  %i.cu = getelementptr inbounds nuw i8, ptr %.02125.i39, i64 40
  %i.cv = load i64, ptr %i.cu, align 8            ; 2 uses
  %i.cw = icmp ult i64 %i.at, %i.cv
  %.sroa.05.0.i.i.i40 = select i1 %i.cs, i1 %i.cw, i1 %i.ct ; 2 uses
  %.in.v.i41 = select i1 %.sroa.05.0.i.i.i40, i64 16, i64 24
  %.in.i42 = getelementptr inbounds nuw i8, ptr %.02125.i39, i64 %.in.v.i41
  %.021.i43 = load ptr, ptr %.in.i42, align 8     ; 2 uses
  %.not.i44 = icmp eq ptr %.021.i43, null
  br i1 %.not.i44, label %._crit_edge.i45, label %.lr.ph.i38, !llvm.loop !20

._crit_edge.i45:                                  ; preds = %.lr.ph.i38
  br i1 %.sroa.05.0.i.i.i40, label %._crit_edge.thread.i55, label %bb.u

._crit_edge.thread.i55:                           ; preds = %._crit_edge.i45, %bb.s
  %.020.lcssa30.i56 = phi ptr [ %.02125.i39, %._crit_edge.i45 ], [ %i.a, %bb.s ] ; 4 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cy = load ptr, ptr %i.cx, align 8
  %i.cz = icmp eq ptr %.020.lcssa30.i56, %i.cy
  br i1 %i.cz, label %_ZNSt8_Rb_treeISt4pairImmES0_IKS1_bESt10_Select1stIS3_ESt4lessIS1_ESaIS3_EE24_M_get_insert_unique_posERS2_.exit, label %bb.t

bb.t:                                             ; preds = %._crit_edge.thread.i55
  %i.da = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.020.lcssa30.i56) #18 ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.da, i64 32
  %.pre = load i64, ptr %.phi.trans.insert, align 8
  %.phi.trans.insert82 = getelementptr inbounds nuw i8, ptr %i.da, i64 40
  %.pre83 = load i64, ptr %.phi.trans.insert82, align 8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge.i45
  %i.db = phi i64 [ %.pre83, %bb.t ], [ %i.cv, %._crit_edge.i45 ]
  %i.dc = phi i64 [ %.pre, %bb.t ], [ %i.cr, %._crit_edge.i45 ] ; 2 uses
  %.020.lcssa29.i46 = phi ptr [ %.020.lcssa30.i56, %bb.t ], [ %.02125.i39, %._crit_edge.i45 ]
  %.sroa.06.0.i47 = phi ptr [ %i.da, %bb.t ], [ %.02125.i39, %._crit_edge.i45 ]
  %i.dd = icmp eq i64 %i.dc, %i.an
  %i.de = icmp ult i64 %i.dc, %i.an
  %i.df = icmp ult i64 %i.db, %i.at
  %.sroa.05.0.i.i5.i48 = select i1 %i.dd, i1 %i.df, i1 %i.de ; 2 uses
  %spec.select.i49 = select i1 %.sroa.05.0.i.i5.i48, ptr null, ptr %.sroa.06.0.i47
  %spec.select22.i50 = select i1 %.sroa.05.0.i.i5.i48, ptr %.020.lcssa29.i46, ptr null
  br label %_ZNSt8_Rb_treeISt4pairImmES0_IKS1_bESt10_Select1stIS3_ESt4lessIS1_ESaIS3_EE24_M_get_insert_unique_posERS2_.exit

_ZNSt8_Rb_treeISt4pairImmES0_IKS1_bESt10_Select1stIS3_ESt4lessIS1_ESaIS3_EE24_M_get_insert_unique_posERS2_.exit: ; preds = %bb.u, %._crit_edge.thread.i55, %bb.n, %._crit_edge.thread.i31, %bb.g, %._crit_edge.thread.i, %bb.r, %bb.k, %bb.o, %bb.p, %bb.i, %bb.c
  %.sroa.078.2 = phi ptr [ null, %bb.p ], [ %spec.select, %bb.k ], [ null, %bb.c ], [ %spec.select80, %bb.r ], [ null, %._crit_edge.thread.i ], [ %i.ax, %bb.i ], [ %1, %bb.o ], [ null, %._crit_edge.thread.i31 ], [ %spec.select.i, %bb.g ], [ %spec.select.i25, %bb.n ], [ %spec.select.i49, %bb.u ], [ null, %._crit_edge.thread.i55 ]
  %.sroa.12.2 = phi ptr [ %i.cc, %bb.p ], [ %spec.select79, %bb.k ], [ %i.f, %bb.c ], [ %spec.select81, %bb.r ], [ %.020.lcssa30.i, %._crit_edge.thread.i ], [ %i.ax, %bb.i ], [ null, %bb.o ], [ %.020.lcssa30.i32, %._crit_edge.thread.i31 ], [ %spec.select22.i, %bb.g ], [ %spec.select22.i26, %bb.n ], [ %spec.select22.i50, %bb.u ], [ %.020.lcssa30.i56, %._crit_edge.thread.i55 ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.078.2, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.12.2, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #11

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #6

declare noundef ptr @_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv(ptr noundef nonnull align 8 dereferenceable(240)) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZNSt12__basic_fileIcED1Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9)) unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #12

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #13 = { nounwind }
attributes #14 = { noreturn nounwind }
attributes #15 = { builtin nounwind }
attributes #16 = { nounwind willreturn memory(none) }
attributes #17 = { builtin nounwind allocsize(0) }
attributes #18 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{!"branch_weights", i32 1, i32 1048575}
!6 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!7 = distinct !{null, null, null, null}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!11 = !{!12}
!12 = distinct !{!12, !13, !"_ZSt9make_pairISt4pairImmEbES0_INSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS2_INS3_IT0_E4typeEE6__typeEEOS4_OS9_: argument 0"}
!13 = distinct !{!13, !"_ZSt9make_pairISt4pairImmEbES0_INSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS2_INS3_IT0_E4typeEE6__typeEEOS4_OS9_"}
!14 = !{i8 0, i8 2}
!15 = !{}
!16 = distinct !{!16, !9}
!17 = distinct !{!17, !9}
!18 = distinct !{!18, !9}
!19 = distinct !{!19, !9}
!20 = distinct !{!20, !9}
end_hunk_0
