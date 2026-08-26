Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/emerge?download=true
inline.NumInlined: 1608
inline.NumDeleted: 822
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN12EmergeThread9finishGenEN4core8vector3dIsEEP13BlockMakeDataPSt3mapIS2_P8MapBlockSt4lessIS2_ESaISt4pairIKS2_S7_EEE:bb.a
bb.z:                                             ; preds = %bb.y
  call void @_ZTH10infostream()
  br label %_ZTW10infostream.exit

_ZTW10infostream.exit:                            ; preds = %bb.y, %bb.z
  %i.di = call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @infostream) ; 2 uses
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !142, !nonnull !76, !align !155 ; 2 uses
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !21
  %i.dl = load ptr, ptr %i.dk, align 8
  %i.dm = invoke noundef zeroext i1 %i.dl(ptr noundef nonnull align 8 dereferenceable(8) %i.dj)
          to label %.noexc77 unwind label %bb.an, !inline_history !483

.noexc77:                                         ; preds = %_ZTW10infostream.exit
  %.v.i76 = select i1 %i.dm, i64 976, i64 984
  %i.dn = getelementptr inbounds nuw i8, ptr %i.di, i64 %.v.i76 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @.str.25, ptr %i.a, align 8, !tbaa !108
  %i.do = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.dn, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.aa unwind label %bb.an     ; 0 uses

bb.aa:                                            ; preds = %.noexc77
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  invoke void @_Z13analyze_blockB5cxx11P8MapBlock(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull %i.x)
          to label %bb.ab unwind label %bb.ao

bb.ab:                                            ; preds = %bb.aa
  %i.dp = load ptr, ptr %i.dn, align 8, !tbaa !163 ; 5 uses
  %.not.i79 = icmp eq ptr %i.dp, null
  br i1 %.not.i79, label %_ZN11StreamProxylsEPFRSoS0_E.exit87, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !21
  %i.dr = getelementptr i8, ptr %i.dq, i64 -24
  %i.ds = load i64, ptr %i.dr, align 8
  %i.dt = getelementptr inbounds i8, ptr %i.dp, i64 %i.ds
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 32
  %i.dv = load i32, ptr %i.du, align 8, !tbaa !164
  %i.dw = icmp eq i32 %i.dv, 0
  br i1 %i.dw, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.dp)
          to label %.noexc81 unwind label %bb.ap

.noexc81:                                         ; preds = %bb.ad
  %.pre.i80 = load ptr, ptr %i.dn, align 8, !tbaa !163
  br label %bb.ae

bb.ae:                                            ; preds = %.noexc81, %bb.ac
  %i.dx = phi ptr [ %.pre.i80, %.noexc81 ], [ %i.dp, %bb.ac ]
  %i.dy = load ptr, ptr %7, align 8, !tbaa !104
  %i.dz = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !107
  %i.eb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dx, ptr noundef %i.dy, i64 noundef %i.ea)
          to label %_ZN11StreamProxylsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit unwind label %bb.ap ; 0 uses

_ZN11StreamProxylsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit: ; preds = %bb.ae
  %.pr = load ptr, ptr %i.dn, align 8, !tbaa !163 ; 5 uses
  %.not.i83 = icmp eq ptr %.pr, null
  br i1 %.not.i83, label %_ZN11StreamProxylsEPFRSoS0_E.exit87, label %bb.af

bb.af:                                            ; preds = %_ZN11StreamProxylsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit
  %i.ec = load ptr, ptr %.pr, align 8, !tbaa !21
  %i.ed = getelementptr i8, ptr %i.ec, i64 -24
  %i.ee = load i64, ptr %i.ed, align 8            ; 2 uses
  %i.ef = getelementptr inbounds i8, ptr %.pr, i64 %i.ee
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 32
  %i.eh = load i32, ptr %i.eg, align 8, !tbaa !164
  %i.ei = icmp eq i32 %i.eh, 0
  br i1 %i.ei, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %.pr)
          to label %.noexc85 unwind label %bb.ap

.noexc85:                                         ; preds = %bb.ag
  %.pre.i84 = load ptr, ptr %i.dn, align 8, !tbaa !163 ; 2 uses
  %.pre = load ptr, ptr %.pre.i84, align 8, !tbaa !21
  %.phi.trans.insert = getelementptr i8, ptr %.pre, i64 -24
  %.pre147 = load i64, ptr %.phi.trans.insert, align 8
  br label %bb.ah

bb.ah:                                            ; preds = %.noexc85, %bb.af
  %i.ej = phi i64 [ %.pre147, %.noexc85 ], [ %i.ee, %bb.af ]
  %i.ek = phi ptr [ %.pre.i84, %.noexc85 ], [ %.pr, %bb.af ] ; 2 uses
  %i.el = getelementptr inbounds i8, ptr %i.ek, i64 %i.ej
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 240
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !171 ; 6 uses
  %.not.i.i.i106 = icmp eq ptr %i.en, null
  br i1 %.not.i.i.i106, label %bb.ai, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i107

bb.ai:                                            ; preds = %bb.ah
  invoke void @_ZSt16__throw_bad_castv() #30
          to label %.noexc111 unwind label %bb.ap

.noexc111:                                        ; preds = %bb.ai
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i107: ; preds = %bb.ah
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 56
  %i.ep = load i8, ptr %i.eo, align 8, !tbaa !177
  %.not.i1.i.i108 = icmp eq i8 %i.ep, 0
  br i1 %.not.i1.i.i108, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i107
  %i.eq = getelementptr inbounds nuw i8, ptr %i.en, i64 67
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !106
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i109

bb.ak:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i107
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.en)
          to label %.noexc112 unwind label %bb.ap

.noexc112:                                        ; preds = %bb.ak
  %i.es = load ptr, ptr %i.en, align 8, !tbaa !21
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 48
  %i.eu = load ptr, ptr %i.et, align 8
  %i.ev = invoke noundef signext i8 %i.eu(ptr noundef nonnull align 8 dereferenceable(570) %i.en, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i109 unwind label %bb.ap, !inline_history !335

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i109: ; preds = %.noexc112, %bb.aj
  %.0.i.i.i110 = phi i8 [ %i.er, %bb.aj ], [ %i.ev, %.noexc112 ]
  %i.ew = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ek, i8 noundef signext %.0.i.i.i110)
          to label %.noexc114 unwind label %bb.ap

.noexc114:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i109
  %i.ex = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ew)
          to label %_ZN11StreamProxylsEPFRSoS0_E.exit87 unwind label %bb.ap ; 0 uses

_ZN11StreamProxylsEPFRSoS0_E.exit87:              ; preds = %bb.ab, %_ZN11StreamProxylsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit, %.noexc114
  %i.ey = load ptr, ptr %7, align 8, !tbaa !104   ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.fa = icmp eq ptr %i.ey, %i.ez
  br i1 %i.fa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88: ; preds = %_ZN11StreamProxylsEPFRSoS0_E.exit87
  %i.fb = load i64, ptr %i.ez, align 8, !tbaa !106
  %i.fc = add i64 %i.fb, 1
  call void @_ZdlPvm(ptr noundef %i.ey, i64 noundef %i.fc) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90: ; preds = %_ZN11StreamProxylsEPFRSoS0_E.exit87, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  br label %bb.aq

bb.al:                                            ; preds = %bb.v
  %i.fd = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.at unwind label %bb.aw

bb.am:                                            ; preds = %bb.w
  %i.fe = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.an:                                            ; preds = %.noexc77, %_ZTW10infostream.exit, %bb.aq
  %i.ff = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.ao:                                            ; preds = %bb.aa
  %i.fg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93

bb.ap:                                            ; preds = %.noexc114, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i109, %.noexc112, %bb.ak, %bb.ai, %bb.ag, %bb.ae, %bb.ad
  %i.fh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fi = load ptr, ptr %7, align 8, !tbaa !104   ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.fk = icmp eq ptr %i.fi, %i.fj
  br i1 %i.fk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91: ; preds = %bb.ap
  %i.fl = load i64, ptr %i.fj, align 8, !tbaa !106
  %i.fm = add i64 %i.fl, 1
  call void @_ZdlPvm(ptr noundef %i.fi, i64 noundef %i.fm) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93: ; preds = %bb.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91, %bb.ao
  %.pn38 = phi { ptr, i32 } [ %i.fg, %bb.ao ], [ %i.fh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91 ], [ %i.fh, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  br label %bb.at

bb.aq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, %bb.x
  %i.fn = load ptr, ptr %i.cu, align 8, !tbaa !199
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 96
  invoke void @_ZN16GenerateNotifier11clearEventsEv(ptr noundef nonnull align 8 dereferenceable(104) %i.fo)
          to label %bb.ar unwind label %bb.an

bb.ar:                                            ; preds = %bb.aq
  %i.fp = load ptr, ptr %i.cu, align 8, !tbaa !199
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 32
  store ptr null, ptr %i.fq, align 8, !tbaa !484
  %.not.i94 = icmp eq ptr %.sroa.0123.0, null
  br i1 %.not.i94, label %_ZN11StreamProxylsEPFRSoS0_E.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  store i16 1, ptr %.sroa.0123.0, align 4, !tbaa !229
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0123.0, i64 2
  store i16 1, ptr %.sroa.5.0..sroa_idx.i, align 2, !tbaa !229
  %.sroa.6.0..sroa_idx.i.a = getelementptr inbounds nuw i8, ptr %.sroa.0123.0, i64 4
  store i16 1, ptr %.sroa.6.0..sroa_idx.i.a, align 4, !tbaa !229
  %.sroa.7.0..sroa_idx.i.a = getelementptr inbounds nuw i8, ptr %.sroa.0123.0, i64 6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %.sroa.7.0..sroa_idx.i.a, i8 0, i64 18, i1 false)
  br label %_ZN11StreamProxylsEPFRSoS0_E.exit

bb.at:                                            ; preds = %bb.am, %bb.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93, %bb.an, %bb.u
  %.merged45 = phi { ptr, i32 } [ %i.ff, %bb.an ], [ %.pn38, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93 ], [ %i.cy, %bb.u ], [ %i.fe, %bb.am ], [ %i.fd, %bb.al ] ; 2 uses
  %.not.i95 = icmp eq ptr %.sroa.0123.0, null
  br i1 %.not.i95, label %_ZN23MapEditEventAreaIgnorerD2Ev.exit99, label %bb.au

bb.au:                                            ; preds = %bb.at
  store i16 1, ptr %.sroa.0123.0, align 4, !tbaa !229
  %.sroa.5.0..sroa_idx.i96 = getelementptr inbounds nuw i8, ptr %.sroa.0123.0, i64 2
  store i16 1, ptr %.sroa.5.0..sroa_idx.i96, align 2, !tbaa !229
  %.sroa.6.0..sroa_idx.i97 = getelementptr inbounds nuw i8, ptr %.sroa.0123.0, i64 4
  store i16 1, ptr %.sroa.6.0..sroa_idx.i97, align 4, !tbaa !229
  %.sroa.7.0..sroa_idx.i98 = getelementptr inbounds nuw i8, ptr %.sroa.0123.0, i64 6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %.sroa.7.0..sroa_idx.i98, i8 0, i64 18, i1 false)
  br label %_ZN23MapEditEventAreaIgnorerD2Ev.exit99

_ZN11StreamProxylsEPFRSoS0_E.exit:                ; preds = %bb.as, %bb.ar, %bb.i, %.noexc104
  call void @_ZN13ScopeProfiler4stopEv(ptr noundef nonnull align 8 dereferenceable(50) %5) #27
  %i.fr = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !104 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.fu = icmp eq ptr %i.fs, %i.ft
  br i1 %i.fu, label %_ZN13ScopeProfilerD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN11StreamProxylsEPFRSoS0_E.exit
  %i.fv = load i64, ptr %i.ft, align 8, !tbaa !106
  %i.fw = add i64 %i.fv, 1
  call void @_ZdlPvm(ptr noundef %i.fs, i64 noundef %i.fw) #29
  br label %_ZN13ScopeProfilerD2Ev.exit

_ZN13ScopeProfilerD2Ev.exit:                      ; preds = %_ZN11StreamProxylsEPFRSoS0_E.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %i.fx = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.f) #27 ; 0 uses
  ret ptr %i.x

_ZN23MapEditEventAreaIgnorerD2Ev.exit99:          ; preds = %bb.at, %bb.au, %bb.s, %bb.r
  %.merged40 = phi { ptr, i32 } [ %i.bj, %bb.r ], [ %i.bk, %bb.s ], [ %.merged45, %bb.au ], [ %.merged45, %bb.at ]
  call void @_ZN13ScopeProfilerD2Ev(ptr noundef nonnull align 8 dead_on_return(50) dereferenceable(50) %5) #27
  br label %bb.av

bb.av:                                            ; preds = %_ZN23MapEditEventAreaIgnorerD2Ev.exit99, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53
  %.merged = phi { ptr, i32 } [ %.merged40, %_ZN23MapEditEventAreaIgnorerD2Ev.exit99 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %i.fy = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.f) #27 ; 0 uses
  resume { ptr, i32 } %.merged

bb.aw:                                            ; preds = %bb.al
  %i.fz = landingpad { ptr, i32 }
          catch ptr null
  %i.ga = extractvalue { ptr, i32 } %i.fz, 0
  call void @__clang_call_terminate(ptr %i.ga) #31
  unreachable
}

declare void @_ZN13ScopeProfilerC1EP8ProfilerRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE17ScopeProfilerType13TimePrecision(ptr noundef nonnull align 8 dereferenceable(50), ptr noundef, ptr noundef nonnull align 8 dereferenceable(32), i8 noundef zeroext, i8 noundef signext) unnamed_addr #2

declare void @_ZN9ServerMap15finishBlockMakeEP13BlockMakeDataPSt3mapIN4core8vector3dIsEEP8MapBlockSt4lessIS5_ESaISt4pairIKS5_S7_EEEP17ServerEnvironment(ptr noundef nonnull align 8 dereferenceable(608), ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN12ScriptApiEnv23environment_OnGeneratedEN4core8vector3dIsEES2_j(ptr noundef nonnull align 8 dereferenceable(8), i48, i48, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #17

declare void @_ZN6Server18setAsyncFatalErrorERK8LuaError(ptr noundef nonnull align 8 dereferenceable(1880), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare void @__cxa_end_catch() local_unnamed_addr

declare void @_Z13analyze_blockB5cxx11P8MapBlock(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef) local_unnamed_addr #2

declare void @_ZN16GenerateNotifier11clearEventsEv(ptr noundef nonnull align 8 dereferenceable(104)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN13ScopeProfilerD2Ev(ptr noundef nonnull align 8 dead_on_return(50) dereferenceable(50) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN13ScopeProfiler4stopEv(ptr noundef nonnull align 8 dereferenceable(50) %0) #27
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !104  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !106
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: uwtable
define dso_local noundef zeroext i1 @_ZN12EmergeThread13initScriptingEv(ptr noundef nonnull align 8 dereferenceable(376) %0) local_unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::allocator.53", align 1 ; 4 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"class.std::allocator.53", align 1 ; 4 uses
  %i.c = tail call noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #28, !noalias !485 ; 4 uses
  invoke void @_ZN15EmergeScriptingC1EP12EmergeThread(ptr noundef nonnull align 8 dereferenceable(17) %i.c, ptr noundef nonnull %0)
          to label %_ZSt11make_uniqueI15EmergeScriptingJP12EmergeThreadEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.b, !noalias !485

common.resume:                                    ; preds = %bb.o, %bb.aa, %bb.ar, %bb.af, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.d, %bb.b ], [ %.pn34.pn, %bb.aa ], [ %.pn32, %bb.o ], [ %.pn37, %bb.af ], [ %.pn39.pn, %bb.ar ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 160) #29, !noalias !485
  br label %common.resume

_ZSt11make_uniqueI15EmergeScriptingJP12EmergeThreadEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 6 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !283  ; 3 uses
  store ptr %i.c, ptr %i.e, align 8, !tbaa !283
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrI15EmergeScriptingSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteI15EmergeScriptingEclEPS0_.exit.i.i.i.i

_ZNKSt14default_deleteI15EmergeScriptingEclEPS0_.exit.i.i.i.i: ; preds = %_ZSt11make_uniqueI15EmergeScriptingJP12EmergeThreadEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !21
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(17) %i.f) #27, !inline_history !488
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !283
  br label %_ZNSt10unique_ptrI15EmergeScriptingSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrI15EmergeScriptingSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteI15EmergeScriptingEclEPS0_.exit.i.i.i.i, %_ZSt11make_uniqueI15EmergeScriptingJP12EmergeThreadEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.j = phi ptr [ %.pre, %_ZNKSt14default_deleteI15EmergeScriptingEclEPS0_.exit.i.i.i.i ], [ %i.c, %_ZSt11make_uniqueI15EmergeScriptingJP12EmergeThreadEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit ] ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !21
  %i.l = getelementptr i8, ptr %i.k, i64 -24
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr inbounds i8, ptr %i.j, i64 %i.m
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  invoke void @_ZN6Server17getBuiltinLuaPathB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3)
          to label %bb.c unwind label %bb.j

bb.c:                                             ; preds = %_ZNSt10unique_ptrI15EmergeScriptingSt14default_deleteIS0_EED2Ev.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !489)
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !107, !noalias !489
  %i.q = icmp eq i64 %i.p, 4611686018427387903
  br i1 %i.q, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.60) #30
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %bb.d
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.c
  %i.r = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.26, i64 noundef 1)
          to label %.noexc43 unwind label %bb.k   ; 6 uses

.noexc43:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.s, ptr %2, align 8, !tbaa !100, !alias.scope !489
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !104  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 5 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.e:                                             ; preds = %.noexc43
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !107  ; 3 uses
  %i.y = icmp ult i64 %i.x, 16
  call void @llvm.assume(i1 %i.y)
  %i.z = add nuw nsw i64 %i.x, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.s, ptr noundef nonnull align 8 dereferenceable(1) %i.u, i64 %i.z, i1 false)
  br label %bb.f

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc43
  store ptr %i.t, ptr %2, align 8, !tbaa !104, !alias.scope !489
  %i.aa = load i64, ptr %i.u, align 8, !tbaa !106
  store i64 %i.aa, ptr %i.s, align 8, !tbaa !106, !alias.scope !489
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !107
  br label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %i.ab = phi i64 [ %i.x, %bb.e ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.ac = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 %i.ab, ptr %i.ad, align 8, !tbaa !107, !alias.scope !489
  store ptr %i.u, ptr %i.r, align 8, !tbaa !104
  store i64 0, ptr %i.ac, align 8, !tbaa !107
  store i8 0, ptr %i.u, align 8, !tbaa !106
  call void @llvm.experimental.noalias.scope.decl(metadata !492)
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !107, !noalias !492
  %i.af = and i64 %i.ae, -8
  %i.ag = icmp eq i64 %i.af, 4611686018427387896
  br i1 %i.ag, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i44

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.60) #30
          to label %.noexc48 unwind label %bb.l

.noexc48:                                         ; preds = %bb.g
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i44: ; preds = %bb.f
  %i.ah = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.27, i64 noundef 8)
          to label %.noexc49 unwind label %bb.l   ; 6 uses

.noexc49:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i44
end_hunk_0
