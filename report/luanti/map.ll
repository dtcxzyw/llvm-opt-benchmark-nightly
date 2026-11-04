Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/map?download=true
inline.NumInlined: 1940
inline.NumDeleted: 1002
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN3Map21findNodesWithMetadataEN4core8vector3dIsEES2_:bb.a

bb.r:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dz, i64 67
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !103
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.s:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.dz)
          to label %.noexc115 unwind label %.loopexit.split-lp188.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc115:                                        ; preds = %bb.s
  %i.ee = load ptr, ptr %i.dz, align 8, !tbaa !26
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 48
  %i.eg = load ptr, ptr %i.ef, align 8
  %i.eh = invoke noundef signext i8 %i.eg(ptr noundef nonnull align 8 dereferenceable(570) %i.dz, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %.loopexit.split-lp188.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !11

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc115, %bb.r
  %.0.i.i.i = phi i8 [ %i.ed, %bb.r ], [ %i.eh, %.noexc115 ]
  %i.ei = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.dw, i8 noundef signext %.0.i.i.i)
          to label %.noexc117 unwind label %.loopexit.split-lp188.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc117:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.ej = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ei)
          to label %_ZN11StreamProxylsEPFRSoS0_E.exit unwind label %.loopexit.split-lp188.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZN11StreamProxylsEPFRSoS0_E.exit:                ; preds = %bb.k, %_ZN11StreamProxylsIRN4core8vector3dIsEEEERS_OT_.exit, %.noexc117
  %i.ek = load ptr, ptr %1, align 8, !tbaa !26
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 24
  %i.em = load ptr, ptr %i.el, align 8
  %i.en = invoke noundef ptr %i.em(ptr noundef nonnull align 8 dereferenceable(144) %1, i48 %.sroa.0134.0.insert.insert137, i1 noundef zeroext false)
          to label %bb.t unwind label %.loopexit.split-lp188.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.loopexit.split-lp188.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc127, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i122, %.noexc125, %bb.ab, %.noexc117, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc115, %bb.s, %bb.y, %.noexc86, %_ZTW10infostream.exit, %bb.p, %.noexc78, %.noexc77, %.noexc76, %.noexc75, %.noexc74, %.noexc73, %bb.n, %bb.m, %.noexc66, %_ZTW13verbosestream.exit, %_ZN3Map19getSectorNoGenerateEN4core8vector2dIsEE.exit.thread9.i, %_ZN11StreamProxylsEPFRSoS0_E.exit, %.invoke
  %lpad.loopexit.split-lp302 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp188

bb.t:                                             ; preds = %_ZN11StreamProxylsEPFRSoS0_E.exit
  %.not46 = icmp eq ptr %i.en, null
  br i1 %.not46, label %bb.u, label %.thread

bb.u:                                             ; preds = %bb.t
  br i1 %.not.i84, label %_ZTW10infostream.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @_ZTH10infostream()
  br label %_ZTW10infostream.exit

_ZTW10infostream.exit:                            ; preds = %bb.u, %bb.v
  %i.eo = load ptr, ptr %i.ar, align 8, !tbaa !81, !nonnull !82, !align !83 ; 2 uses
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !26
  %i.eq = load ptr, ptr %i.ep, align 8
  %i.er = invoke noundef zeroext i1 %i.eq(ptr noundef nonnull align 8 dereferenceable(8) %i.eo)
          to label %.noexc86 unwind label %.loopexit.split-lp188.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !347

.noexc86:                                         ; preds = %_ZTW10infostream.exit
  %.v.i85 = select i1 %i.er, i64 976, i64 984
  %i.es = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.v.i85 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @.str.12, ptr %i.a, align 8, !tbaa !157
  %i.et = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.es, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.w unwind label %.loopexit.split-lp188.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.w:                                             ; preds = %.noexc86
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.eu = load ptr, ptr %i.es, align 8, !tbaa !158 ; 5 uses
  %.not.i88 = icmp eq ptr %i.eu, null
  br i1 %.not.i88, label %_ZN11StreamProxylsEPFRSoS0_E.exit92, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !26
  %i.ew = getelementptr i8, ptr %i.ev, i64 -24
  %i.ex = load i64, ptr %i.ew, align 8            ; 2 uses
  %i.ey = getelementptr inbounds i8, ptr %i.eu, i64 %i.ex
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 32
  %i.fa = load i32, ptr %i.ez, align 8, !tbaa !159
  %i.fb = icmp eq i32 %i.fa, 0
  br i1 %i.fb, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.eu)
          to label %.noexc90 unwind label %.loopexit.split-lp188.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc90:                                         ; preds = %bb.y
  %.pre.i89 = load ptr, ptr %i.es, align 8, !tbaa !158 ; 2 uses
  %.pre247 = load ptr, ptr %.pre.i89, align 8, !tbaa !26
  %.phi.trans.insert248 = getelementptr i8, ptr %.pre247, i64 -24
  %.pre249 = load i64, ptr %.phi.trans.insert248, align 8
  br label %bb.z

bb.z:                                             ; preds = %.noexc90, %bb.x
  %i.fc = phi i64 [ %.pre249, %.noexc90 ], [ %i.ex, %bb.x ]
  %i.fd = phi ptr [ %.pre.i89, %.noexc90 ], [ %i.eu, %bb.x ] ; 2 uses
  %i.fe = getelementptr inbounds i8, ptr %i.fd, i64 %i.fc
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 240
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !96 ; 6 uses
  %.not.i.i.i119 = icmp eq ptr %i.fg, null
  br i1 %.not.i.i.i119, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i120

.invoke:                                          ; preds = %bb.q, %bb.z
  invoke void @_ZSt16__throw_bad_castv() #30
          to label %.cont unwind label %.loopexit.split-lp188.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i120: ; preds = %bb.z
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 56
  %i.fi = load i8, ptr %i.fh, align 8, !tbaa !102
  %.not.i1.i.i121 = icmp eq i8 %i.fi, 0
  br i1 %.not.i1.i.i121, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i120
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fg, i64 67
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !103
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i122

bb.ab:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i120
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.fg)
          to label %.noexc125 unwind label %.loopexit.split-lp188.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc125:                                        ; preds = %bb.ab
  %i.fl = load ptr, ptr %i.fg, align 8, !tbaa !26
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 48
  %i.fn = load ptr, ptr %i.fm, align 8
  %i.fo = invoke noundef signext i8 %i.fn(ptr noundef nonnull align 8 dereferenceable(570) %i.fg, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i122 unwind label %.loopexit.split-lp188.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !11

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i122: ; preds = %.noexc125, %bb.aa
  %.0.i.i.i123 = phi i8 [ %i.fk, %bb.aa ], [ %i.fo, %.noexc125 ]
  %i.fp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.fd, i8 noundef signext %.0.i.i.i123)
          to label %.noexc127 unwind label %.loopexit.split-lp188.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc127:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i122
  %i.fq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fp)
          to label %_ZN11StreamProxylsEPFRSoS0_E.exit92 unwind label %.loopexit.split-lp188.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.thread:                                          ; preds = %_ZN3Map20getBlockNoCreateNoExEN4core8vector3dIsEE.exit, %bb.t
  %.038178 = phi ptr [ %i.en, %bb.t ], [ %i.cr, %_ZN3Map20getBlockNoCreateNoExEN4core8vector3dIsEE.exit ]
  %i.fr = shl i16 %i.bc, 4
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.fs = getelementptr inbounds nuw i8, ptr %.038178, i64 88
  invoke void @_ZN16NodeMetadataList10getAllKeysEv(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %4, ptr noundef nonnull align 8 dereferenceable(56) %i.fs)
          to label %.preheader unwind label %bb.ad

.preheader:                                       ; preds = %.thread
  %.promoted = load ptr, ptr %0, align 8          ; 2 uses
  %i.ft = load ptr, ptr %i.an, align 8, !tbaa !191 ; 2 uses
  %i.fu = load ptr, ptr %4, align 8, !tbaa !189   ; 4 uses
  %i.fv = ptrtoint ptr %i.fu to i64
  %.not47205 = icmp eq ptr %i.ft, %i.fu
  br i1 %.not47205, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.fw = insertelement <2 x i16> %i.ba, i16 %i.fr, i64 0
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE9push_backERKS2_.exit, %.preheader
  %.lcssa202 = phi ptr [ %.promoted, %.preheader ], [ %i.hp, %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE9push_backERKS2_.exit ]
  %.lcssa199 = phi ptr [ %i.fu, %.preheader ], [ %i.hn, %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE9push_backERKS2_.exit ] ; 2 uses
  %.lcssa196 = phi i64 [ %i.fv, %.preheader ], [ %i.hs, %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE9push_backERKS2_.exit ]
  store ptr %.lcssa202, ptr %0, align 8
  %.not.i.i.i95 = icmp eq ptr %.lcssa199, null
  br i1 %.not.i.i.i95, label %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EED2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %._crit_edge
  %i.fx = load ptr, ptr %i.aq, align 8, !tbaa !190
  %i.fy = ptrtoint ptr %i.fx to i64
  %i.fz = sub i64 %i.fy, %.lcssa196
  call void @_ZdlPvm(ptr noundef nonnull %.lcssa199, i64 noundef %i.fz) #28
  br label %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EED2Ev.exit

_ZNSt6vectorIN4core8vector3dIsEESaIS2_EED2Ev.exit: ; preds = %._crit_edge, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %_ZN11StreamProxylsEPFRSoS0_E.exit92

bb.ad:                                            ; preds = %.thread
  %i.ga = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EED2Ev.exit105

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE9push_backERKS2_.exit
  %i.gb = phi ptr [ %i.hn, %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE9push_backERKS2_.exit ], [ %i.fu, %.lr.ph.preheader ] ; 4 uses
  %i.gc = phi ptr [ %i.ho, %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE9push_backERKS2_.exit ], [ %i.ft, %.lr.ph.preheader ] ; 3 uses
  %.031206 = phi i64 [ %i.hq, %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE9push_backERKS2_.exit ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.gd = phi ptr [ %i.hp, %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE9push_backERKS2_.exit ], [ %.promoted, %.lr.ph.preheader ] ; 10 uses
  %i.ge = getelementptr inbounds nuw [6 x i8], ptr %i.gb, i64 %.031206 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 4
  %i.gg = load i16, ptr %i.gf, align 2, !tbaa !168
  %i.gh = add i16 %i.gg, %i.ay                    ; 3 uses
  %.sroa.3.0.insert.ext.i96 = zext i16 %i.gh to i48
  %.sroa.3.0.insert.shift.i97 = shl nuw i48 %.sroa.3.0.insert.ext.i96, 32
  %i.gi = load <2 x i16>, ptr %i.ge, align 2, !tbaa !113
  %i.gj = add <2 x i16> %i.gi, %i.fw              ; 3 uses
  %.v = shufflevector <2 x i16> %i.gj, <2 x i16> <i16 0, i16 poison>, <3 x i32> <i32 0, i32 1, i32 2>
  %i.gk = bitcast <3 x i16> %.v to i48
  %.sroa.0.0.insert.insert.i102 = or disjoint i48 %.sroa.3.0.insert.shift.i97, %i.gk ; 2 uses
  %i.gl = icmp sgt <2 x i16> %i.f, %i.gj
  %i.gm = icmp slt <2 x i16> %i.j, %i.gj
  %i.gn = or <2 x i1> %i.gl, %i.gm                ; 2 uses
  %5 = extractelement <2 x i1> %i.gn, i64 0
  %6 = extractelement <2 x i1> %i.gn, i64 1
  %or.cond14.i = select i1 %5, i1 true, i1 %6
  br i1 %or.cond14.i, label %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE9push_backERKS2_.exit, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph
  %.not9.i = icmp sge i16 %i.gh, %.sroa.8172.0
  %i.go = icmp sle i16 %i.gh, %.sroa.8169.0
  %or.cond = and i1 %.not9.i, %i.go
  br i1 %or.cond, label %bb.ah, label %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE9push_backERKS2_.exit

.loopexit:                                        ; preds = %_ZNKSt6vectorIN4core8vector3dIsEESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.gd, ptr %0, align 8
  br label %bb.af

.loopexit.split-lp:                               ; preds = %bb.ak
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.af:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.gp = load ptr, ptr %4, align 8, !tbaa !189   ; 3 uses
  %.not.i.i.i104 = icmp eq ptr %i.gp, null
  br i1 %.not.i.i.i104, label %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EED2Ev.exit105, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gq = load ptr, ptr %i.aq, align 8, !tbaa !190
  %i.gr = ptrtoint ptr %i.gq to i64
  %i.gs = ptrtoint ptr %i.gp to i64
  %i.gt = sub i64 %i.gr, %i.gs
  call void @_ZdlPvm(ptr noundef nonnull %i.gp, i64 noundef %i.gt) #28
  br label %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EED2Ev.exit105

bb.ah:                                            ; preds = %bb.ae
  %i.gu = load ptr, ptr %i.ao, align 8, !tbaa !191 ; 6 uses
  %i.gv = load ptr, ptr %i.ap, align 8, !tbaa !190
  %.not.i106 = icmp eq ptr %i.gu, %i.gv
  br i1 %.not.i106, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  store i48 %.sroa.0.0.insert.insert.i102, ptr %i.gu, align 2, !tbaa !113
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gu, i64 6
  store ptr %i.gw, ptr %i.ao, align 8, !tbaa !191
  br label %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE9push_backERKS2_.exit

bb.aj:                                            ; preds = %bb.ah
  %i.gx = ptrtoint ptr %i.gu to i64
  %i.gy = ptrtoint ptr %i.gd to i64
  %i.gz = sub i64 %i.gx, %i.gy                    ; 4 uses
  %i.ha = icmp eq i64 %i.gz, 9223372036854775806
  br i1 %i.ha, label %bb.ak, label %_ZNKSt6vectorIN4core8vector3dIsEESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.ak:                                            ; preds = %bb.aj
  store ptr %i.gd, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.47) #30
          to label %.noexc109 unwind label %.loopexit.split-lp

.noexc109:                                        ; preds = %bb.ak
  unreachable

_ZNKSt6vectorIN4core8vector3dIsEESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.aj
  %i.hb = sdiv exact i64 %i.gz, 6                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.hb, i64 1)
  %i.hc = add nsw i64 %.sroa.speculated.i.i.i, %i.hb ; 2 uses
  %i.hd = icmp ult i64 %i.hc, %i.hb
  %i.he = call i64 @llvm.umin.i64(i64 %i.hc, i64 1537228672809129301)
  %i.hf = select i1 %i.hd, i64 1537228672809129301, i64 %i.he ; 3 uses
  %.not.i.i.i107 = icmp ne i64 %i.hf, 0
  call void @llvm.assume(i1 %.not.i.i.i107)
  %i.hg = mul nuw nsw i64 %i.hf, 6
  %i.hh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hg) #32
          to label %.noexc110 unwind label %.loopexit ; 5 uses

.noexc110:                                        ; preds = %_ZNKSt6vectorIN4core8vector3dIsEESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 %i.gz
  store i48 %.sroa.0.0.insert.insert.i102, ptr %i.hi, align 2, !tbaa !113
  %.not10.i.i.i.i.i = icmp eq ptr %i.gd, %i.gu
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc110, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.hk, %.lr.ph.i.i.i.i.i ], [ %i.hh, %.noexc110 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.hj, %.lr.ph.i.i.i.i.i ], [ %i.gd, %.noexc110 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.012.i.i.i.i.i, ptr noundef nonnull align 2 dereferenceable(6) %.0911.i.i.i.i.i, i64 6, i1 false), !tbaa.struct !192, !alias.scope !353
  %i.hj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 6 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 6 ; 2 uses
  %.not.i.i.i.i.i108 = icmp eq ptr %i.hj, %i.gu
  br i1 %.not.i.i.i.i.i108, label %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !8

_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc110
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.hh, %.noexc110 ], [ %i.hk, %.lr.ph.i.i.i.i.i ]
  %i.hl = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 6
  %.not.i23.i.i = icmp eq ptr %i.gd, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.al

bb.al:                                            ; preds = %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.gd, i64 noundef %i.gz) #28
  br label %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.al, %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  store ptr %i.hl, ptr %i.ao, align 8, !tbaa !191
  %i.hm = getelementptr inbounds nuw [6 x i8], ptr %i.hh, i64 %i.hf
  store ptr %i.hm, ptr %i.ap, align 8, !tbaa !190
  %.pre245 = load ptr, ptr %i.an, align 8, !tbaa !191
  %.pre246 = load ptr, ptr %4, align 8, !tbaa !189
  br label %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE9push_backERKS2_.exit: ; preds = %.lr.ph, %bb.ae, %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.ai
  %i.hn = phi ptr [ %i.gb, %.lr.ph ], [ %i.gb, %bb.ae ], [ %.pre246, %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %i.gb, %bb.ai ] ; 3 uses
  %i.ho = phi ptr [ %i.gc, %.lr.ph ], [ %i.gc, %bb.ae ], [ %.pre245, %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %i.gc, %bb.ai ] ; 2 uses
  %i.hp = phi ptr [ %i.gd, %.lr.ph ], [ %i.gd, %bb.ae ], [ %i.hh, %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %i.gd, %bb.ai ] ; 2 uses
  %i.hq = add i64 %.031206, 1                     ; 2 uses
  %i.hr = ptrtoint ptr %i.ho to i64
  %i.hs = ptrtoint ptr %i.hn to i64               ; 2 uses
  %i.ht = sub i64 %i.hr, %i.hs
  %i.hu = sdiv exact i64 %i.ht, 6
  %.not47 = icmp eq i64 %i.hq, %i.hu
  br i1 %.not47, label %._crit_edge, label %.lr.ph, !llvm.loop !351

_ZN11StreamProxylsEPFRSoS0_E.exit92:              ; preds = %bb.w, %.noexc127, %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EED2Ev.exit
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %._crit_edge212, label %bb.b, !llvm.loop !352

_ZNSt6vectorIN4core8vector3dIsEESaIS2_EED2Ev.exit105: ; preds = %bb.ag, %bb.af, %bb.ad
  %.pn = phi { ptr, i32 } [ %i.ga, %bb.ad ], [ %lpad.phi, %bb.af ], [ %lpad.phi, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %.loopexit.split-lp188

.loopexit.split-lp188:                            ; preds = %.loopexit.split-lp188.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EED2Ev.exit105
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EED2Ev.exit105 ], [ %lpad.loopexit.split-lp302, %.loopexit.split-lp188.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.hv = load ptr, ptr %0, align 8, !tbaa !189   ; 3 uses
  %.not.i.i.i111 = icmp eq ptr %i.hv, null
  br i1 %.not.i.i.i111, label %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EED2Ev.exit112, label %bb.am

bb.am:                                            ; preds = %.loopexit.split-lp188
  %i.hw = load ptr, ptr %i.ap, align 8, !tbaa !190
  %i.hx = ptrtoint ptr %i.hw to i64
  %i.hy = ptrtoint ptr %i.hv to i64
  %i.hz = sub i64 %i.hx, %i.hy
  call void @_ZdlPvm(ptr noundef nonnull %i.hv, i64 noundef %i.hz) #28
  br label %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EED2Ev.exit112

_ZNSt6vectorIN4core8vector3dIsEESaIS2_EED2Ev.exit112: ; preds = %.loopexit.split-lp188, %bb.am
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxylsIRN4core8vector3dIsEEEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 2 dereferenceable(6) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !158    ; 5 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %i.a, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load i32, ptr %i.f, align 8, !tbaa !159
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.pre = load ptr, ptr %0, align 8, !tbaa !158
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = phi ptr [ %.pre, %bb.c ], [ %i.a, %bb.b ] ; 2 uses
  %.sroa.0.0.copyload = load i48, ptr %1, align 2, !tbaa !113 ; 3 uses
  %.sroa.0.0.extract.trunc.i = trunc i48 %.sroa.0.0.copyload to i16
  %.sroa.2.0.extract.shift.i = lshr i48 %.sroa.0.0.copyload, 16
  %.sroa.2.0.extract.trunc.i = trunc i48 %.sroa.2.0.extract.shift.i to i16
  %.sroa.3.0.extract.shift.i = lshr i48 %.sroa.0.0.copyload, 32
  %.sroa.3.0.extract.trunc.i = trunc nuw i48 %.sroa.3.0.extract.shift.i to i16
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull @.str.42, i64 noundef 1) ; 0 uses
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEs(ptr noundef nonnull align 8 dereferenceable(8) %i.i, i16 noundef signext %.sroa.0.0.extract.trunc.i) ; 2 uses
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull @.str.43, i64 noundef 1) ; 0 uses
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEs(ptr noundef nonnull align 8 dereferenceable(8) %i.k, i16 noundef signext %.sroa.2.0.extract.trunc.i) ; 2 uses
  %i.n = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull @.str.43, i64 noundef 1) ; 0 uses
  %i.o = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEs(ptr noundef nonnull align 8 dereferenceable(8) %i.m, i16 noundef signext %.sroa.3.0.extract.trunc.i)
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull @.str.36, i64 noundef 1) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  ret ptr %0
}

declare void @_ZN16NodeMetadataList10getAllKeysEv(ptr dead_on_unwind writable sret(%"class.std::vector") align 8, ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #5

; Function Attrs: uwtable
define dso_local noundef ptr @_ZN3Map15getNodeMetadataEN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(144) %0, i48 %1) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %"class.core::vector3d", align 8    ; 5 uses
  %.sroa.034.0.extract.trunc = trunc i48 %1 to i16 ; 3 uses
  %.sroa.2.0.extract.shift = lshr i48 %1, 16
  %.sroa.2.0.extract.trunc = trunc i48 %.sroa.2.0.extract.shift to i16 ; 3 uses
  %.sroa.3.0.extract.shift = lshr i48 %1, 32
end_hunk_0
