Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/texture_override?download=true
inline.NumInlined: 583
inline.NumDeleted: 263
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN21TextureOverrideSourceC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %.pre.i57 = load ptr, ptr %i.ee, align 8, !tbaa !44
  br label %bb.ae

bb.ae:                                            ; preds = %.noexc58, %bb.ac
  %i.et = phi ptr [ %.pre.i57, %.noexc58 ], [ %i.el, %bb.ac ]
  %i.eu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.et, i64 noundef %i.ek)
          to label %_ZN11StreamProxylsImEERS_OT_.exit unwind label %.loopexit.split-lp262.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZN11StreamProxylsImEERS_OT_.exit:                ; preds = %bb.ae
  %.pr = load ptr, ptr %i.ee, align 8, !tbaa !44  ; 5 uses
  %.not.i60 = icmp eq ptr %.pr, null
  br i1 %.not.i60, label %_ZN11StreamProxylsEPFRSoS0_E.exit, label %bb.af, !llvm.loop !69

bb.af:                                            ; preds = %_ZN11StreamProxylsImEERS_OT_.exit
  %i.ev = load ptr, ptr %.pr, align 8, !tbaa !22
  %i.ew = getelementptr i8, ptr %i.ev, i64 -24
  %i.ex = load i64, ptr %i.ew, align 8            ; 2 uses
  %i.ey = getelementptr inbounds i8, ptr %.pr, i64 %i.ex
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 32
  %i.fa = load i32, ptr %i.ez, align 8, !tbaa !31
  %i.fb = icmp eq i32 %i.fa, 0
  br i1 %i.fb, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %.pr)
          to label %.noexc62 unwind label %.loopexit.split-lp262.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc62:                                         ; preds = %bb.ag
  %.pre.i61 = load ptr, ptr %i.ee, align 8, !tbaa !44 ; 2 uses
  %.pre278 = load ptr, ptr %.pre.i61, align 8, !tbaa !22
  %.phi.trans.insert279 = getelementptr i8, ptr %.pre278, i64 -24
  %.pre280 = load i64, ptr %.phi.trans.insert279, align 8
  br label %bb.ah

bb.ah:                                            ; preds = %.noexc62, %bb.af
  %i.fc = phi i64 [ %.pre280, %.noexc62 ], [ %i.ex, %bb.af ]
  %i.fd = phi ptr [ %.pre.i61, %.noexc62 ], [ %.pr, %bb.af ] ; 2 uses
  %i.fe = getelementptr inbounds i8, ptr %i.fd, i64 %i.fc
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 240
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !81 ; 6 uses
  %.not.i.i.i136 = icmp eq ptr %i.fg, null
  br i1 %.not.i.i.i136, label %bb.ai, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i137

bb.ai:                                            ; preds = %bb.ah
  invoke void @_ZSt16__throw_bad_castv() #24
          to label %.noexc141 unwind label %.loopexit.split-lp262.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc141:                                        ; preds = %bb.ai
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i137: ; preds = %bb.ah
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 56
  %i.fi = load i8, ptr %i.fh, align 8, !tbaa !87
  %.not.i1.i.i138 = icmp eq i8 %i.fi, 0
  br i1 %.not.i1.i.i138, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i137
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fg, i64 67
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !34
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i139

bb.ak:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i137
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.fg)
          to label %.noexc142 unwind label %.loopexit.split-lp262.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc142:                                        ; preds = %bb.ak
  %i.fl = load ptr, ptr %i.fg, align 8, !tbaa !22
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 48
  %i.fn = load ptr, ptr %i.fm, align 8
  %i.fo = invoke noundef signext i8 %i.fn(ptr noundef nonnull align 8 dereferenceable(570) %i.fg, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i139 unwind label %.loopexit.split-lp262.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !71

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i139: ; preds = %.noexc142, %bb.aj
  %.0.i.i.i140 = phi i8 [ %i.fk, %bb.aj ], [ %i.fo, %.noexc142 ]
  %i.fp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.fd, i8 noundef signext %.0.i.i.i140)
          to label %.noexc144 unwind label %.loopexit.split-lp262.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc144:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i139
  %i.fq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fp)
          to label %_ZN11StreamProxylsEPFRSoS0_E.exit unwind label %.loopexit.split-lp262.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !llvm.loop !69 ; 0 uses

bb.al:                                            ; preds = %bb.m
  %i.fr = landingpad { ptr, i32 }
          cleanup
  br label %bb.cj

.loopexit.split-lp262.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZTW13warningstream.exit, %bb.r, %bb.s, %_ZN9LogStreamlsIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEER11StreamProxyOT_.exit, %bb.v, %bb.w, %_ZN11StreamProxylsIRiEERS_OT_.exit, %bb.z, %bb.aa, %_ZN11StreamProxylsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit, %.noexc144, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i139, %.noexc142, %bb.ak, %bb.ag, %bb.ae, %bb.ad, %bb.ai
  %lpad.loopexit.split-lp343 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp262

bb.am:                                            ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  store ptr %i.x, ptr %5, align 8, !tbaa !32
  store i64 0, ptr %i.y, align 8, !tbaa !33
  store i8 0, ptr %i.x, align 8, !tbaa !34
  store ptr %i.aa, ptr %i.z, align 8, !tbaa !32
  store i64 0, ptr %i.ab, align 8, !tbaa !33
  store i8 0, ptr %i.aa, align 8, !tbaa !34
  store i32 0, ptr %i.ac, align 8, !tbaa !47
  store i8 0, ptr %i.ad, align 4, !tbaa !97
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.ck)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.ao

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.am
  %i.fs = load ptr, ptr %4, align 8, !tbaa !40
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 64
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.z, ptr noundef nonnull align 8 dereferenceable(32) %i.ft)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit66 unwind label %bb.ao

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit66: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.fu = load ptr, ptr %4, align 8, !tbaa !40
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 32
  invoke void @_Z9str_splitIcESt6vectorINSt7__cxx1112basic_stringIT_St11char_traitsIS3_ESaIS3_EEESaIS7_EERKS7_S3_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.10") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %i.fv, i8 noundef signext 44)
          to label %bb.an unwind label %bb.ap

bb.an:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit66
  %i.fw = load ptr, ptr %6, align 8, !tbaa !98    ; 2 uses
  %i.fx = load ptr, ptr %i.ae, align 8, !tbaa !98 ; 2 uses
  %.not266 = icmp eq ptr %i.fw, %i.fx
  br i1 %.not266, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %bb.an
  %i.fy = load i32, ptr %i.ac, align 8, !tbaa !47
  %i.fz = icmp eq i32 %i.fy, 0
  br i1 %i.fz, label %_ZNSt6vectorI15TextureOverrideSaIS0_EE9push_backERKS0_.exit, label %bb.ca, !llvm.loop !69

bb.ao:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, %bb.am
  %i.ga = landingpad { ptr, i32 }
          cleanup
  br label %bb.ci

bb.ap:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit66
  %i.gb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

.lr.ph:                                           ; preds = %bb.an, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %.sroa.0204.0267 = phi ptr [ %i.mr, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit ], [ %i.fw, %bb.an ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  invoke void @_Z9str_splitIcESt6vectorINSt7__cxx1112basic_stringIT_St11char_traitsIS3_ESaIS3_EEESaIS7_EERKS7_S3_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.10") align 8 %7, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0204.0267, i8 noundef signext 61)
          to label %bb.aq unwind label %bb.as

bb.aq:                                            ; preds = %.lr.ph
  %i.gc = load ptr, ptr %i.af, align 8, !tbaa !39
  %i.gd = load ptr, ptr %7, align 8, !tbaa !40    ; 4 uses
  %i.ge = ptrtoint ptr %i.gc to i64
  %i.gf = ptrtoint ptr %i.gd to i64
  %i.gg = sub i64 %i.ge, %i.gf
  %i.gh = ashr exact i64 %i.gg, 5
  switch i64 %i.gh, label %.critedge [
    i64 2, label %bb.ar
    i64 1, label %bb.at
  ]

bb.ar:                                            ; preds = %bb.aq
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  %i.gj = load i64, ptr %i.gi, align 8, !tbaa !33
  %i.gk = icmp eq i64 %i.gj, 11
  br i1 %i.gk, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.a, label %.critedge

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.a: ; preds = %bb.ar
  %i.gl = load ptr, ptr %i.gd, align 8, !tbaa !20 ; 2 uses
  %i.gm = load i64, ptr %i.gl, align 1
  %i.gn = xor i64 %i.gm, 8031993388224572513
  %i.go = getelementptr i8, ptr %i.gl, i64 3
  %i.gp = load i64, ptr %i.go, align 1
  %i.gq = xor i64 %i.gp, 7236284524347223655
  %i.gr = or i64 %i.gn, %i.gq
  %i.gs = icmp ne i64 %i.gr, 0
  %i.gt = zext i1 %i.gs to i32
  %i.gu = icmp eq i32 %i.gt, 0
  br i1 %i.gu, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %.critedge

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.a
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gd, i64 32
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !20
  %i.gx = call i64 @__isoc23_strtol(ptr noundef nonnull %i.gw, ptr noundef null, i32 noundef 10) #23, !inline_history !72
  %i.gy = trunc i64 %i.gx to i32
  %spec.select.i = call i32 @llvm.smax.i32(i32 %i.gy, i32 0)
  %i.gz = call i32 @llvm.umin.i32(i32 %spec.select.i, i32 255)
  %i.ha = trunc nuw i32 %i.gz to i8
  store i8 %i.ha, ptr %i.ad, align 4, !tbaa !97
  br label %_ZN11StreamProxylsEPFRSoS0_E.exit103

bb.as:                                            ; preds = %.lr.ph
  %i.hb = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc198, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i193, %.noexc196, %bb.bx, %.thread.i182, %bb.br, %.thread.i170, %bb.bm, %.thread.i158, %bb.bh, %.thread.i, %bb.bc, %bb.bt, %bb.bp, %bb.bo, %bb.bk, %bb.bj, %bb.bf, %bb.be, %bb.az, %bb.ay, %_ZTW13warningstream.exit69, %bb.bv
  %lpad.loopexit.split-lp338 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #23
  br label %bb.bz

bb.at:                                            ; preds = %bb.aq
  %i.hc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL12override_LUTB5cxx11, i64 16), align 8, !tbaa !16 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.hc, null
  br i1 %.not10.i.i.i, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE14OverrideTargetSt4lessIS5_ESaISt4pairIKS5_S6_EEE4findERSA_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.at
  %i.hd = getelementptr inbounds nuw i8, ptr %.sroa.0204.0267, i64 8
  %i.he = load i64, ptr %i.hd, align 8, !tbaa !33 ; 4 uses
  %i.hf = load ptr, ptr %.sroa.0204.0267, align 8 ; 2 uses
  br label %bb.au

bb.au:                                            ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.hc, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ getelementptr inbounds nuw (i8, ptr @_ZL12override_LUTB5cxx11, i64 8), %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.hg = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.hh = load i64, ptr %i.hg, align 8, !tbaa !33 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.he, i64 %i.hh) ; 2 uses
  %i.hi = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.hi, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.au
  %i.hj = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !20
  %i.hl = call i32 @memcmp(ptr noundef %i.hk, ptr noundef %i.hf, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #23 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.hl, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.au
  %i.hm = sub i64 %i.hh, %i.he
  %spec.select7.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.hm, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.hl, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.hn = icmp slt i32 %.0.i.i.i.i.i.i, 0         ; 2 uses
  %.19.i.i.i = select i1 %i.hn, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 5 uses
  %.1.in.v.i.i.i = select i1 %i.hn, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !48 ; 2 uses
  %.not.i.i.i67 = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i67, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_14OverrideTargetESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i, label %bb.au, !llvm.loop !73

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_14OverrideTargetESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.ho = icmp eq ptr %.19.i.i.i, getelementptr inbounds nuw (i8, ptr @_ZL12override_LUTB5cxx11, i64 8)
  br i1 %i.ho, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE14OverrideTargetSt4lessIS5_ESaISt4pairIKS5_S6_EEE4findERSA_.exit, label %bb.av

bb.av:                                            ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_14OverrideTargetESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i
  %i.hp = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.hq = load i64, ptr %i.hp, align 8, !tbaa !33 ; 2 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.hq, i64 %i.he) ; 2 uses
  %i.hr = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.hr, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.av
  %i.hs = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !20
  %i.hu = call i32 @memcmp(ptr noundef %i.hf, ptr noundef %i.ht, i64 noundef %.sroa.speculated.i.i.i.i.i) #23 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.hu, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.av
  %i.hv = sub i64 %i.he, %i.hq
  %spec.select7.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.hv, i64 -2147483648)
  %.08.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.hu, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.hw = icmp slt i32 %.0.i.i.i.i.i, 0
  %spec.select = select i1 %i.hw, ptr getelementptr inbounds nuw (i8, ptr @_ZL12override_LUTB5cxx11, i64 8), ptr %.19.i.i.i
  br label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE14OverrideTargetSt4lessIS5_ESaISt4pairIKS5_S6_EEE4findERSA_.exit

_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE14OverrideTargetSt4lessIS5_ESaISt4pairIKS5_S6_EEE4findERSA_.exit: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_14OverrideTargetESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i, %bb.at
  %.sroa.0.0.i.i = phi ptr [ getelementptr inbounds nuw (i8, ptr @_ZL12override_LUTB5cxx11, i64 8), %bb.at ], [ getelementptr inbounds nuw (i8, ptr @_ZL12override_LUTB5cxx11, i64 8), %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_14OverrideTargetESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i ], [ %spec.select, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i ] ; 2 uses
  %.not244 = icmp eq ptr %.sroa.0.0.i.i, getelementptr inbounds nuw (i8, ptr @_ZL12override_LUTB5cxx11, i64 8)
  br i1 %.not244, label %.critedge, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE14OverrideTargetSt4lessIS5_ESaISt4pairIKS5_S6_EEE4findERSA_.exit.a

_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE14OverrideTargetSt4lessIS5_ESaISt4pairIKS5_S6_EEE4findERSA_.exit.a: ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE14OverrideTargetSt4lessIS5_ESaISt4pairIKS5_S6_EEE4findERSA_.exit
  %i.hx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 64
  %i.hy = load i32, ptr %i.hx, align 8, !tbaa !51
  %i.hz = load i32, ptr %i.ac, align 8, !tbaa !47
  %i.ia = or i32 %i.hz, %i.hy
  store i32 %i.ia, ptr %i.ac, align 8, !tbaa !47
  br label %_ZN11StreamProxylsEPFRSoS0_E.exit103

.critedge:                                        ; preds = %bb.ar, %bb.aq, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.a, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE14OverrideTargetSt4lessIS5_ESaISt4pairIKS5_S6_EEE4findERSA_.exit
  br i1 %.not.i68, label %_ZTW13warningstream.exit69, label %bb.aw

bb.aw:                                            ; preds = %.critedge
  call void @_ZTH13warningstream()
  br label %_ZTW13warningstream.exit69

_ZTW13warningstream.exit69:                       ; preds = %.critedge, %bb.aw
  %i.ib = load ptr, ptr %i.ag, align 8, !tbaa !96, !nonnull !42, !align !43 ; 2 uses
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !22
  %i.id = load ptr, ptr %i.ic, align 8
  %i.ie = invoke noundef zeroext i1 %i.id(ptr noundef nonnull align 8 dereferenceable(8) %i.ib)
          to label %.noexc73 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !70

.noexc73:                                         ; preds = %_ZTW13warningstream.exit69
  %.v.i70 = select i1 %i.ie, i64 976, i64 984
  %i.if = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.v.i70 ; 18 uses
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !44 ; 5 uses
  %.not.i.i71 = icmp eq ptr %i.ig, null
  br i1 %.not.i.i71, label %_ZN11StreamProxylsEPFRSoS0_E.exit103, label %bb.ax

bb.ax:                                            ; preds = %.noexc73
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !22
  %i.ii = getelementptr i8, ptr %i.ih, i64 -24
  %i.ij = load i64, ptr %i.ii, align 8
  %i.ik = getelementptr inbounds i8, ptr %i.ig, i64 %i.ij
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 32
  %i.im = load i32, ptr %i.il, align 8, !tbaa !31
  %i.in = icmp eq i32 %i.im, 0
  br i1 %i.in, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.ig)
          to label %.noexc74 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc74:                                         ; preds = %bb.ay
  %.pre.i.i72 = load ptr, ptr %i.if, align 8, !tbaa !44
  br label %bb.az

bb.az:                                            ; preds = %.noexc74, %bb.ax
  %i.io = phi ptr [ %.pre.i.i72, %.noexc74 ], [ %i.ig, %bb.ax ]
  %i.ip = load ptr, ptr %1, align 8, !tbaa !20
  %i.iq = load i64, ptr %i.ah, align 8, !tbaa !33
  %i.ir = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.io, ptr noundef %i.ip, i64 noundef %i.iq)
          to label %bb.ba unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.ba:                                            ; preds = %bb.az
  %.pr217 = load ptr, ptr %i.if, align 8, !tbaa !44 ; 5 uses
  %.not.i.i146 = icmp eq ptr %.pr217, null
  br i1 %.not.i.i146, label %_ZN11StreamProxylsEPFRSoS0_E.exit103, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.is = load ptr, ptr %.pr217, align 8, !tbaa !22
  %i.it = getelementptr i8, ptr %i.is, i64 -24
  %i.iu = load i64, ptr %i.it, align 8
  %i.iv = getelementptr inbounds i8, ptr %.pr217, i64 %i.iu
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 32
  %i.ix = load i32, ptr %i.iw, align 8, !tbaa !31
  %i.iy = icmp eq i32 %i.ix, 0
  br i1 %i.iy, label %.thread.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %.pr217)
          to label %.noexc151 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc151:                                        ; preds = %bb.bc
  %.pre.i5.i = load ptr, ptr %i.if, align 8, !tbaa !44
  br label %.thread.i

.thread.i:                                        ; preds = %.noexc151, %bb.bb
  %i.iz = phi ptr [ %.pre.i5.i, %.noexc151 ], [ %.pr217, %bb.bb ]
  %i.ja = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.iz, ptr noundef nonnull @.str.26, i64 noundef 1)
          to label %_ZN11StreamProxylsEPKc.exit78 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZN11StreamProxylsEPKc.exit78:                    ; preds = %.thread.i
  %.pr220.a = load ptr, ptr %i.if, align 8, !tbaa !44 ; 5 uses
  %.not.i79 = icmp eq ptr %.pr220.a, null
  br i1 %.not.i79, label %_ZN11StreamProxylsEPFRSoS0_E.exit103, label %bb.bd

bb.bd:                                            ; preds = %_ZN11StreamProxylsEPKc.exit78
  %i.jb = load ptr, ptr %.pr220.a, align 8, !tbaa !22
  %i.jc = getelementptr i8, ptr %i.jb, i64 -24
  %i.jd = load i64, ptr %i.jc, align 8
  %i.je = getelementptr inbounds i8, ptr %.pr220.a, i64 %i.jd
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 32
  %i.jg = load i32, ptr %i.jf, align 8, !tbaa !31
  %i.jh = icmp eq i32 %i.jg, 0
  br i1 %i.jh, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %.pr220.a)
          to label %.noexc81 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc81:                                         ; preds = %bb.be
  %.pre.i80 = load ptr, ptr %i.if, align 8, !tbaa !44
  br label %bb.bf

bb.bf:                                            ; preds = %.noexc81, %bb.bd
  %i.ji = phi ptr [ %.pre.i80, %.noexc81 ], [ %.pr220.a, %bb.bd ]
  %i.jj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.ji, i32 noundef %i.be)
          to label %_ZN11StreamProxylsEPKc.exit78.thread unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZN11StreamProxylsEPKc.exit78.thread:             ; preds = %bb.bf
  %.pr223.pr = load ptr, ptr %i.if, align 8, !tbaa !44 ; 5 uses
  %.not.i.i154 = icmp eq ptr %.pr223.pr, null
  br i1 %.not.i.i154, label %_ZN11StreamProxylsEPFRSoS0_E.exit103, label %bb.bg

bb.bg:                                            ; preds = %_ZN11StreamProxylsEPKc.exit78.thread
  %i.jk = load ptr, ptr %.pr223.pr, align 8, !tbaa !22
  %i.jl = getelementptr i8, ptr %i.jk, i64 -24
  %i.jm = load i64, ptr %i.jl, align 8
  %i.jn = getelementptr inbounds i8, ptr %.pr223.pr, i64 %i.jm
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 32
  %i.jp = load i32, ptr %i.jo, align 8, !tbaa !31
  %i.jq = icmp eq i32 %i.jp, 0
  br i1 %i.jq, label %.thread.i158, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %.pr223.pr)
          to label %.noexc162 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc162:                                        ; preds = %bb.bh
  %.pre.i5.i155 = load ptr, ptr %i.if, align 8, !tbaa !44
  br label %.thread.i158

.thread.i158:                                     ; preds = %.noexc162, %bb.bg
  %i.jr = phi ptr [ %.pre.i5.i155, %.noexc162 ], [ %.pr223.pr, %bb.bg ]
  %i.js = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jr, ptr noundef nonnull @.str.27, i64 noundef 35)
          to label %_ZN11StreamProxylsEPKc.exit85 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZN11StreamProxylsEPKc.exit85:                    ; preds = %.thread.i158
  %.pr226 = load ptr, ptr %i.if, align 8, !tbaa !44 ; 5 uses
  %.not.i86 = icmp eq ptr %.pr226, null
  br i1 %.not.i86, label %_ZN11StreamProxylsEPFRSoS0_E.exit103, label %bb.bi

bb.bi:                                            ; preds = %_ZN11StreamProxylsEPKc.exit85
  %i.jt = load ptr, ptr %.pr226, align 8, !tbaa !22
  %i.ju = getelementptr i8, ptr %i.jt, i64 -24
  %i.jv = load i64, ptr %i.ju, align 8
  %i.jw = getelementptr inbounds i8, ptr %.pr226, i64 %i.jv
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 32
  %i.jy = load i32, ptr %i.jx, align 8, !tbaa !31
  %i.jz = icmp eq i32 %i.jy, 0
  br i1 %i.jz, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %.pr226)
          to label %.noexc88 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc88:                                         ; preds = %bb.bj
  %.pre.i87 = load ptr, ptr %i.if, align 8, !tbaa !44
  br label %bb.bk

bb.bk:                                            ; preds = %.noexc88, %bb.bi
  %i.ka = phi ptr [ %.pre.i87, %.noexc88 ], [ %.pr226, %bb.bi ]
  %i.kb = load ptr, ptr %3, align 8, !tbaa !20
  %i.kc = load i64, ptr %i.p, align 8, !tbaa !33
  %i.kd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ka, ptr noundef %i.kb, i64 noundef %i.kc)
          to label %_ZN11StreamProxylsEPKc.exit85.thread unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZN11StreamProxylsEPKc.exit85.thread:             ; preds = %bb.bk
  %.pr229.pr.pr = load ptr, ptr %i.if, align 8, !tbaa !44 ; 5 uses
  %.not.i.i166 = icmp eq ptr %.pr229.pr.pr, null
  br i1 %.not.i.i166, label %_ZN11StreamProxylsEPFRSoS0_E.exit103, label %bb.bl

bb.bl:                                            ; preds = %_ZN11StreamProxylsEPKc.exit85.thread
  %i.ke = load ptr, ptr %.pr229.pr.pr, align 8, !tbaa !22
  %i.kf = getelementptr i8, ptr %i.ke, i64 -24
  %i.kg = load i64, ptr %i.kf, align 8
  %i.kh = getelementptr inbounds i8, ptr %.pr229.pr.pr, i64 %i.kg
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 32
  %i.kj = load i32, ptr %i.ki, align 8, !tbaa !31
  %i.kk = icmp eq i32 %i.kj, 0
  br i1 %i.kk, label %.thread.i170, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %.pr229.pr.pr)
          to label %.noexc174 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc174:                                        ; preds = %bb.bm
  %.pre.i5.i167 = load ptr, ptr %i.if, align 8, !tbaa !44
  br label %.thread.i170

.thread.i170:                                     ; preds = %.noexc174, %bb.bl
  %i.kl = phi ptr [ %.pre.i5.i167, %.noexc174 ], [ %.pr229.pr.pr, %bb.bl ]
  %i.km = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.kl, ptr noundef nonnull @.str.30, i64 noundef 19)
          to label %_ZN11StreamProxylsEPKc.exit92 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZN11StreamProxylsEPKc.exit92:                    ; preds = %.thread.i170
  %.pr232 = load ptr, ptr %i.if, align 8, !tbaa !44 ; 5 uses
  %.not.i93 = icmp eq ptr %.pr232, null
  br i1 %.not.i93, label %_ZN11StreamProxylsEPFRSoS0_E.exit103, label %bb.bn

bb.bn:                                            ; preds = %_ZN11StreamProxylsEPKc.exit92
  %i.kn = load ptr, ptr %.pr232, align 8, !tbaa !22
  %i.ko = getelementptr i8, ptr %i.kn, i64 -24
  %i.kp = load i64, ptr %i.ko, align 8
  %i.kq = getelementptr inbounds i8, ptr %.pr232, i64 %i.kp
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 32
  %i.ks = load i32, ptr %i.kr, align 8, !tbaa !31
  %i.kt = icmp eq i32 %i.ks, 0
  br i1 %i.kt, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %.pr232)
          to label %.noexc95 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc95:                                         ; preds = %bb.bo
  %.pre.i94 = load ptr, ptr %i.if, align 8, !tbaa !44
  br label %bb.bp

bb.bp:                                            ; preds = %.noexc95, %bb.bn
  %i.ku = phi ptr [ %.pre.i94, %.noexc95 ], [ %.pr232, %bb.bn ]
  %i.kv = load ptr, ptr %.sroa.0204.0267, align 8, !tbaa !20
  %i.kw = getelementptr inbounds nuw i8, ptr %.sroa.0204.0267, i64 8
  %i.kx = load i64, ptr %i.kw, align 8, !tbaa !33
  %i.ky = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ku, ptr noundef %i.kv, i64 noundef %i.kx)
          to label %_ZN11StreamProxylsEPKc.exit92.thread unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZN11StreamProxylsEPKc.exit92.thread:             ; preds = %bb.bp
  %.pr235.pr.pr = load ptr, ptr %i.if, align 8, !tbaa !44 ; 5 uses
  %.not.i.i178 = icmp eq ptr %.pr235.pr.pr, null
  br i1 %.not.i.i178, label %_ZN11StreamProxylsEPFRSoS0_E.exit103, label %bb.bq

bb.bq:                                            ; preds = %_ZN11StreamProxylsEPKc.exit92.thread
  %i.kz = load ptr, ptr %.pr235.pr.pr, align 8, !tbaa !22
  %i.la = getelementptr i8, ptr %i.kz, i64 -24
  %i.lb = load i64, ptr %i.la, align 8
  %i.lc = getelementptr inbounds i8, ptr %.pr235.pr.pr, i64 %i.lb
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 32
  %i.le = load i32, ptr %i.ld, align 8, !tbaa !31
  %i.lf = icmp eq i32 %i.le, 0
  br i1 %i.lf, label %.thread.i182, label %bb.br

bb.br:                                            ; preds = %bb.bq
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %.pr235.pr.pr)
          to label %.noexc186 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc186:                                        ; preds = %bb.br
  %.pre.i5.i179 = load ptr, ptr %i.if, align 8, !tbaa !44
  br label %.thread.i182

.thread.i182:                                     ; preds = %.noexc186, %bb.bq
  %i.lg = phi ptr [ %.pre.i5.i179, %.noexc186 ], [ %.pr235.pr.pr, %bb.bq ]
  %i.lh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.lg, ptr noundef nonnull @.str.31, i64 noundef 1)
          to label %_ZN11StreamProxylsEPKc.exit98 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZN11StreamProxylsEPKc.exit98:                    ; preds = %.thread.i182
  %.pr238 = load ptr, ptr %i.if, align 8, !tbaa !44 ; 5 uses
  %.not.i99 = icmp eq ptr %.pr238, null
  br i1 %.not.i99, label %_ZN11StreamProxylsEPFRSoS0_E.exit103, label %bb.bs

bb.bs:                                            ; preds = %_ZN11StreamProxylsEPKc.exit98
  %i.li = load ptr, ptr %.pr238, align 8, !tbaa !22
  %i.lj = getelementptr i8, ptr %i.li, i64 -24
  %i.lk = load i64, ptr %i.lj, align 8            ; 2 uses
  %i.ll = getelementptr inbounds i8, ptr %.pr238, i64 %i.lk
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 32
  %i.ln = load i32, ptr %i.lm, align 8, !tbaa !31
  %i.lo = icmp eq i32 %i.ln, 0
  br i1 %i.lo, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %.pr238)
          to label %.noexc101 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc101:                                        ; preds = %bb.bt
  %.pre.i100 = load ptr, ptr %i.if, align 8, !tbaa !44 ; 2 uses
  %.pre = load ptr, ptr %.pre.i100, align 8, !tbaa !22
  %.phi.trans.insert = getelementptr i8, ptr %.pre, i64 -24
  %.pre277 = load i64, ptr %.phi.trans.insert, align 8
  br label %bb.bu

bb.bu:                                            ; preds = %.noexc101, %bb.bs
  %i.lp = phi i64 [ %.pre277, %.noexc101 ], [ %i.lk, %bb.bs ]
  %i.lq = phi ptr [ %.pre.i100, %.noexc101 ], [ %.pr238, %bb.bs ] ; 2 uses
  %i.lr = getelementptr inbounds i8, ptr %i.lq, i64 %i.lp
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 240
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !81 ; 6 uses
  %.not.i.i.i190 = icmp eq ptr %i.lt, null
  br i1 %.not.i.i.i190, label %bb.bv, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i191

bb.bv:                                            ; preds = %bb.bu
  invoke void @_ZSt16__throw_bad_castv() #24
          to label %.noexc195 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc195:                                        ; preds = %bb.bv
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i191: ; preds = %bb.bu
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 56
  %i.lv = load i8, ptr %i.lu, align 8, !tbaa !87
  %.not.i1.i.i192 = icmp eq i8 %i.lv, 0
  br i1 %.not.i1.i.i192, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i191
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lt, i64 67
  %i.lx = load i8, ptr %i.lw, align 1, !tbaa !34
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i193

bb.bx:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i191
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.lt)
          to label %.noexc196 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc196:                                        ; preds = %bb.bx
  %i.ly = load ptr, ptr %i.lt, align 8, !tbaa !22
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 48
  %i.ma = load ptr, ptr %i.lz, align 8
  %i.mb = invoke noundef signext i8 %i.ma(ptr noundef nonnull align 8 dereferenceable(570) %i.lt, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i193 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !71

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i193: ; preds = %.noexc196, %bb.bw
  %.0.i.i.i194 = phi i8 [ %i.lx, %bb.bw ], [ %i.mb, %.noexc196 ]
  %i.mc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.lq, i8 noundef signext %.0.i.i.i194)
          to label %.noexc198 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc198:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i193
  %i.md = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.mc)
          to label %_ZN11StreamProxylsEPFRSoS0_E.exit103 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZN11StreamProxylsEPFRSoS0_E.exit103:             ; preds = %_ZN11StreamProxylsEPKc.exit85, %_ZN11StreamProxylsEPKc.exit78.thread, %_ZN11StreamProxylsEPKc.exit78, %.noexc73, %bb.ba, %_ZN11StreamProxylsEPKc.exit85.thread, %_ZN11StreamProxylsEPKc.exit92, %_ZN11StreamProxylsEPKc.exit92.thread, %_ZN11StreamProxylsEPKc.exit98, %.noexc198, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE14OverrideTargetSt4lessIS5_ESaISt4pairIKS5_S6_EEE4findERSA_.exit.a, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.me = load ptr, ptr %7, align 8, !tbaa !40    ; 3 uses
  %i.mf = load ptr, ptr %i.af, align 8, !tbaa !39 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.me, %i.mf
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i104

.lr.ph.i.i.i104:                                  ; preds = %_ZN11StreamProxylsEPFRSoS0_E.exit103, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ml, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.me, %_ZN11StreamProxylsEPFRSoS0_E.exit103 ] ; 3 uses
  %i.mg = load ptr, ptr %.05.i.i.i, align 8, !tbaa !20 ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.mi = icmp eq ptr %i.mg, %i.mh
  br i1 %i.mi, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i104
  %i.mj = load i64, ptr %i.mh, align 8, !tbaa !34
  %i.mk = add i64 %i.mj, 1
  call void @_ZdlPvm(ptr noundef %i.mg, i64 noundef %i.mk) #26
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i104, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.ml = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i105 = icmp eq ptr %i.ml, %i.mf
  br i1 %.not.i.i.i105, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i104, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %7, align 8, !tbaa !40
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZN11StreamProxylsEPFRSoS0_E.exit103
  %i.mm = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.me, %_ZN11StreamProxylsEPFRSoS0_E.exit103 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.mm, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.by

bb.by:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.mn = load ptr, ptr %i.ai, align 8, !tbaa !52
  %i.mo = ptrtoint ptr %i.mn to i64
  %i.mp = ptrtoint ptr %i.mm to i64
  %i.mq = sub i64 %i.mo, %i.mp
  call void @_ZdlPvm(ptr noundef nonnull %i.mm, i64 noundef %i.mq) #26
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  %i.mr = getelementptr inbounds nuw i8, ptr %.sroa.0204.0267, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.mr, %i.fx
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.bz:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.as
  %.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp338, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.hb, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.cg

bb.ca:                                            ; preds = %._crit_edge
  %i.ms = load ptr, ptr %i.aj, align 8, !tbaa !55 ; 3 uses
  %i.mt = load ptr, ptr %i.ak, align 8, !tbaa !56
  %.not.i106 = icmp eq ptr %i.ms, %i.mt
  br i1 %.not.i106, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  invoke void @_ZN15TextureOverrideC2ERKS_(ptr noundef nonnull align 8 dereferenceable(69) %i.ms, ptr noundef nonnull align 8 dereferenceable(69) %5)
          to label %.noexc107 unwind label %bb.cf

.noexc107:                                        ; preds = %bb.cb
  %i.mu = load ptr, ptr %i.aj, align 8, !tbaa !55
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 72
  store ptr %i.mv, ptr %i.aj, align 8, !tbaa !55
  br label %_ZNSt6vectorI15TextureOverrideSaIS0_EE9push_backERKS0_.exit

bb.cc:                                            ; preds = %bb.ca
  invoke void @_ZNSt6vectorI15TextureOverrideSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.ms, ptr noundef nonnull align 8 dereferenceable(69) %5)
          to label %_ZNSt6vectorI15TextureOverrideSaIS0_EE9push_backERKS0_.exit unwind label %bb.cf

_ZNSt6vectorI15TextureOverrideSaIS0_EE9push_backERKS0_.exit: ; preds = %.noexc107, %bb.cc, %._crit_edge
  %i.mw = load ptr, ptr %6, align 8, !tbaa !40    ; 3 uses
  %i.mx = load ptr, ptr %i.ae, align 8, !tbaa !39 ; 2 uses
  %.not4.i.i.i109 = icmp eq ptr %i.mw, %i.mx
  br i1 %.not4.i.i.i109, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i117, label %.lr.ph.i.i.i110

.lr.ph.i.i.i110:                                  ; preds = %_ZNSt6vectorI15TextureOverrideSaIS0_EE9push_backERKS0_.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i113
  %.05.i.i.i111 = phi ptr [ %i.nd, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i113 ], [ %i.mw, %_ZNSt6vectorI15TextureOverrideSaIS0_EE9push_backERKS0_.exit ] ; 3 uses
  %i.my = load ptr, ptr %.05.i.i.i111, align 8, !tbaa !20 ; 2 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %.05.i.i.i111, i64 16 ; 2 uses
  %i.na = icmp eq ptr %i.my, %i.mz
  br i1 %i.na, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i113, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i112

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i112: ; preds = %.lr.ph.i.i.i110
  %i.nb = load i64, ptr %i.mz, align 8, !tbaa !34
  %i.nc = add i64 %i.nb, 1
  call void @_ZdlPvm(ptr noundef %i.my, i64 noundef %i.nc) #26
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i113

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i113: ; preds = %.lr.ph.i.i.i110, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i112
  %i.nd = getelementptr inbounds nuw i8, ptr %.05.i.i.i111, i64 32 ; 2 uses
  %.not.i.i.i114 = icmp eq ptr %i.nd, %i.mx
  br i1 %.not.i.i.i114, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i115, label %.lr.ph.i.i.i110, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i115: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i113
  %.pr.i116 = load ptr, ptr %6, align 8, !tbaa !40
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i117

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i117: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i115, %_ZNSt6vectorI15TextureOverrideSaIS0_EE9push_backERKS0_.exit
  %i.ne = phi ptr [ %.pr.i116, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i115 ], [ %i.mw, %_ZNSt6vectorI15TextureOverrideSaIS0_EE9push_backERKS0_.exit ] ; 3 uses
  %.not.i.i1.i118 = icmp eq ptr %i.ne, null
  br i1 %.not.i.i1.i118, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit120, label %bb.cd

bb.cd:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i117
  %i.nf = load ptr, ptr %i.al, align 8, !tbaa !52
  %i.ng = ptrtoint ptr %i.nf to i64
  %i.nh = ptrtoint ptr %i.ne to i64
  %i.ni = sub i64 %i.ng, %i.nh
  call void @_ZdlPvm(ptr noundef nonnull %i.ne, i64 noundef %i.ni) #26
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit120

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit120: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i117, %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %i.nj = load ptr, ptr %i.z, align 8, !tbaa !20  ; 2 uses
  %i.nk = icmp eq ptr %i.nj, %i.aa
  br i1 %i.nk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit120
  %i.nl = load i64, ptr %i.aa, align 8, !tbaa !34
  %i.nm = add i64 %i.nl, 1
  call void @_ZdlPvm(ptr noundef %i.nj, i64 noundef %i.nm) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit120, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.nn = load ptr, ptr %5, align 8, !tbaa !20    ; 2 uses
  %i.no = icmp eq ptr %i.nn, %i.x
  br i1 %i.no, label %_ZN15TextureOverrideD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.np = load i64, ptr %i.x, align 8, !tbaa !34
  %i.nq = add i64 %i.np, 1
  call void @_ZdlPvm(ptr noundef %i.nn, i64 noundef %i.nq) #26
  br label %_ZN15TextureOverrideD2Ev.exit

_ZN15TextureOverrideD2Ev.exit:                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %_ZN11StreamProxylsEPFRSoS0_E.exit

_ZN11StreamProxylsEPFRSoS0_E.exit:                ; preds = %bb.ab, %.noexc144, %_ZN11StreamProxylsImEERS_OT_.exit, %_ZN15TextureOverrideD2Ev.exit
  %i.nr = load ptr, ptr %4, align 8, !tbaa !40    ; 3 uses
  %i.ns = load ptr, ptr %i.w, align 8, !tbaa !39  ; 2 uses
  %.not4.i.i.i121 = icmp eq ptr %i.nr, %i.ns
  br i1 %.not4.i.i.i121, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i129, label %.lr.ph.i.i.i122

.lr.ph.i.i.i122:                                  ; preds = %_ZN11StreamProxylsEPFRSoS0_E.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i125
  %.05.i.i.i123 = phi ptr [ %i.ny, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i125 ], [ %i.nr, %_ZN11StreamProxylsEPFRSoS0_E.exit ] ; 3 uses
  %i.nt = load ptr, ptr %.05.i.i.i123, align 8, !tbaa !20 ; 2 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %.05.i.i.i123, i64 16 ; 2 uses
  %i.nv = icmp eq ptr %i.nt, %i.nu
  br i1 %i.nv, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i125, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i124

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i124: ; preds = %.lr.ph.i.i.i122
  %i.nw = load i64, ptr %i.nu, align 8, !tbaa !34
  %i.nx = add i64 %i.nw, 1
  call void @_ZdlPvm(ptr noundef %i.nt, i64 noundef %i.nx) #26
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i125

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i125: ; preds = %.lr.ph.i.i.i122, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i124
  %i.ny = getelementptr inbounds nuw i8, ptr %.05.i.i.i123, i64 32 ; 2 uses
  %.not.i.i.i126 = icmp eq ptr %i.ny, %i.ns
  br i1 %.not.i.i.i126, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i127, label %.lr.ph.i.i.i122, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i127: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i125
  %.pr.i128 = load ptr, ptr %4, align 8, !tbaa !40
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i129

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i129: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i127, %_ZN11StreamProxylsEPFRSoS0_E.exit
  %i.nz = phi ptr [ %.pr.i128, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i127 ], [ %i.nr, %_ZN11StreamProxylsEPFRSoS0_E.exit ] ; 3 uses
  %.not.i.i1.i130 = icmp eq ptr %i.nz, null
  br i1 %.not.i.i1.i130, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit132, label %bb.ce

bb.ce:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i129
  %i.oa = load ptr, ptr %i.am, align 8, !tbaa !52
  %i.ob = ptrtoint ptr %i.oa to i64
  %i.oc = ptrtoint ptr %i.nz to i64
  %i.od = sub i64 %i.ob, %i.oc
  call void @_ZdlPvm(ptr noundef nonnull %i.nz, i64 noundef %i.od) #26
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit132

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit132: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i129, %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %.backedge

bb.cf:                                            ; preds = %bb.cc, %bb.cb
  %i.oe = landingpad { ptr, i32 }
          cleanup
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.bz
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.bz ], [ %i.oe, %bb.cf ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #23
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.ap
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.cg ], [ %i.gb, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.ao
end_hunk_0
