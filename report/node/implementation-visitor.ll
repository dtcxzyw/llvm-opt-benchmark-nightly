Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/implementation-visitor?download=true
inline.NumInlined: 15498
inline.NumDeleted: 4769
loop-unroll.NumCompletelyUnrolled: 50
loop-unroll.NumUnrolled: 50
begin_hunk_0_@_ZN2v88internal6torque21ImplementationVisitor19GenerateFieldAccessENS1_17LocationReferenceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbSt8optionalINS1_14SourcePositionEE:bb.a
  store ptr %i.ru, ptr %i.rk, align 8
  store i64 %i.rp, ptr %i.rm, align 8
  br label %._crit_edge.i.i.i.i246

._crit_edge.i.i.i.i246:                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i247, %_ZN2v88internal6torque18BitFieldStructType11DynamicCastEPKNS1_8TypeBaseE.exit
  %i.rv = phi ptr [ %i.ru, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i247 ], [ %i.rm, %_ZN2v88internal6torque18BitFieldStructType11DynamicCastEPKNS1_8TypeBaseE.exit ] ; 3 uses
  switch i64 %i.rp, label %bb.cw [
    i64 1, label %bb.cv
    i64 0, label %_ZN2v88internal6torque8BitFieldC2ERKS2_.exit250
  ]

bb.cv:                                            ; preds = %._crit_edge.i.i.i.i246
  %i.rw = load i8, ptr %i.rn, align 1
  store i8 %i.rw, ptr %i.rv, align 1
  br label %_ZN2v88internal6torque8BitFieldC2ERKS2_.exit250

bb.cw:                                            ; preds = %._crit_edge.i.i.i.i246
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.rv, ptr align 1 %i.rn, i64 %i.rp, i1 false)
  br label %_ZN2v88internal6torque8BitFieldC2ERKS2_.exit250

_ZN2v88internal6torque8BitFieldC2ERKS2_.exit250:  ; preds = %._crit_edge.i.i.i.i246, %bb.cv, %bb.cw
  %i.rx = getelementptr inbounds nuw i8, ptr %23, i64 40
  store i64 %i.rp, ptr %i.rx, align 8
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rv, i64 %i.rp
  store i8 0, ptr %i.ry, align 1
  %i.rz = getelementptr inbounds nuw i8, ptr %23, i64 64
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rj, i64 64
  %i.sb = load ptr, ptr %i.sa, align 8
  store ptr %i.sb, ptr %i.rz, align 8
  %i.sc = getelementptr inbounds nuw i8, ptr %23, i64 72
  %i.sd = getelementptr inbounds nuw i8, ptr %i.rj, i64 72
  %i.se = load i64, ptr %i.sd, align 8
  store i64 %i.se, ptr %i.sc, align 8
  invoke void @_ZN2v88internal6torque17LocationReference14BitFieldAccessERKS2_NS1_8BitFieldE(ptr dead_on_unwind writable sret(%"class.v8::internal::torque::LocationReference") align 8 %0, ptr noundef nonnull align 8 dereferenceable(592) %2, ptr noundef nonnull align 8 %23)
          to label %bb.cx unwind label %bb.cy

bb.cx:                                            ; preds = %_ZN2v88internal6torque8BitFieldC2ERKS2_.exit250
  %i.sf = load ptr, ptr %i.rk, align 8            ; 2 uses
  %i.sg = icmp eq ptr %i.sf, %i.rm
  br i1 %i.sg, label %_ZN2v88internal6torque11VisitResultD2Ev.exit202, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i251

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i251: ; preds = %bb.cx
  %i.sh = load i64, ptr %i.rm, align 8
  %i.si = add i64 %i.sh, 1
  call void @_ZdlPvm(ptr noundef %i.sf, i64 noundef %i.si) #30
  br label %_ZN2v88internal6torque11VisitResultD2Ev.exit202

bb.cy:                                            ; preds = %_ZN2v88internal6torque8BitFieldC2ERKS2_.exit250
  %i.sj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.sk = load ptr, ptr %i.rk, align 8            ; 2 uses
  %i.sl = icmp eq ptr %i.sk, %i.rm
  br i1 %i.sl, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i254

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i254: ; preds = %bb.cy
  %i.sm = load i64, ptr %i.rm, align 8
  %i.sn = add i64 %i.sm, 1
  call void @_ZdlPvm(ptr noundef %i.sk, i64 noundef %i.sn) #30
  br label %common.resume

_ZN2v88internal6torque8BitFieldD2Ev.exit:         ; preds = %bb.ce, %_ZN2v88internal6torque10TypeOracle19GetSmiTaggedGenericEv.exit, %_ZNK2v88internal6torque17LocationReference14ReferencedTypeEv.exit
  %i.so = load i8, ptr %i.oa, align 8, !range !872, !noundef !873
  %i.sp = trunc nuw i8 %i.so to i1
  br i1 %i.sp, label %bb.cz, label %bb.ig

bb.cz:                                            ; preds = %_ZN2v88internal6torque8BitFieldD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #27
  %i.sq = getelementptr inbounds nuw i8, ptr %2, i64 200
  %i.sr = load ptr, ptr %i.sq, align 8            ; 2 uses
  store ptr %i.sr, ptr %24, align 8
  %i.ss = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 10 uses
  %i.st = getelementptr inbounds nuw i8, ptr %2, i64 240
  %i.su = getelementptr inbounds nuw i8, ptr %24, i64 40 ; 10 uses
  store i8 0, ptr %i.su, align 8
  %i.sv = load i8, ptr %i.st, align 8, !range !872, !noundef !873
  %i.sw = trunc nuw i8 %i.sv to i1
  br i1 %i.sw, label %bb.da, label %_ZN2v88internal6torque11VisitResultC2ERKS2_.exit262

bb.da:                                            ; preds = %bb.cz
  %i.sx = getelementptr inbounds nuw i8, ptr %2, i64 208
  %i.sy = getelementptr inbounds nuw i8, ptr %24, i64 24 ; 3 uses
  store ptr %i.sy, ptr %i.ss, align 8
  %i.sz = load ptr, ptr %i.sx, align 8            ; 2 uses
  %i.ta = getelementptr inbounds nuw i8, ptr %2, i64 216
  %i.tb = load i64, ptr %i.ta, align 8            ; 8 uses
  %i.tc = icmp ugt i64 %i.tb, 15
  br i1 %i.tc, label %bb.db, label %._crit_edge.i.i.i.i.i.i.i.i.i.i257

bb.db:                                            ; preds = %bb.da
  %i.td = icmp slt i64 %i.tb, 0
  br i1 %i.td, label %.noexc.i.i.i.i.i.i.i.i.i261, label %bb.dc

.noexc.i.i.i.i.i.i.i.i.i261:                      ; preds = %bb.db
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.509) #28
  unreachable

bb.dc:                                            ; preds = %bb.db
  %i.te = add nuw i64 %i.tb, 1                    ; 2 uses
  %i.tf = icmp slt i64 %i.te, 0
  br i1 %i.tf, label %.noexc6.i.i.i.i.i.i.i.i.i260, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i.i.i.i259, !prof !874

.noexc6.i.i.i.i.i.i.i.i.i260:                     ; preds = %bb.dc
  call void @_ZSt17__throw_bad_allocv() #28
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i.i.i.i259: ; preds = %bb.dc
  %i.tg = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.te) #29 ; 2 uses
  store ptr %i.tg, ptr %i.ss, align 8
  store i64 %i.tb, ptr %i.sy, align 8
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i257

._crit_edge.i.i.i.i.i.i.i.i.i.i257:               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i.i.i.i259, %bb.da
  %i.th = phi ptr [ %i.tg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i.i.i.i259 ], [ %i.sy, %bb.da ] ; 3 uses
  switch i64 %i.tb, label %bb.de [
    i64 1, label %bb.dd
    i64 0, label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i.i258
  ]

bb.dd:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i257
  %i.ti = load i8, ptr %i.sz, align 1
  store i8 %i.ti, ptr %i.th, align 1
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i.i258

bb.de:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i257
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.th, ptr align 1 %i.sz, i64 %i.tb, i1 false)
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i.i258

_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i.i258: ; preds = %bb.de, %bb.dd, %._crit_edge.i.i.i.i.i.i.i.i.i.i257
  %i.tj = getelementptr inbounds nuw i8, ptr %24, i64 16
  store i64 %i.tb, ptr %i.tj, align 8
  %i.tk = getelementptr inbounds nuw i8, ptr %i.th, i64 %i.tb
  store i8 0, ptr %i.tk, align 1
  store i8 1, ptr %i.su, align 8
  %.pre = load ptr, ptr %24, align 8
  br label %_ZN2v88internal6torque11VisitResultC2ERKS2_.exit262

_ZN2v88internal6torque11VisitResultC2ERKS2_.exit262: ; preds = %bb.cz, %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i.i258
  %i.tl = phi ptr [ %i.sr, %bb.cz ], [ %.pre, %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i.i258 ]
  %i.tm = getelementptr inbounds nuw i8, ptr %24, i64 48 ; 10 uses
  %i.tn = getelementptr inbounds nuw i8, ptr %2, i64 248
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.tm, ptr noundef nonnull align 8 dereferenceable(24) %i.tn, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.to = invoke { ptr, i8 } @_ZN2v88internal6torque10TypeOracle21MatchReferenceGenericEPKNS1_4TypeEPb(ptr noundef %i.tl, ptr noundef nonnull %i.a)
          to label %bb.df unwind label %bb.dx     ; 2 uses

bb.df:                                            ; preds = %_ZN2v88internal6torque11VisitResultC2ERKS2_.exit262
  %i.tp = extractvalue { ptr, i8 } %i.to, 1
  %i.tq = trunc nuw i8 %i.tp to i1
  br i1 %i.tq, label %bb.dl, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #27
  %i.tr = load ptr, ptr %24, align 8
  invoke void @_ZNK2v88internal6torque4Type8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %25, ptr noundef nonnull align 8 dereferenceable(128) %i.tr)
          to label %bb.dh unwind label %bb.dj

bb.dh:                                            ; preds = %bb.dg
  invoke void @_ZN2v88internal6torque11ReportErrorIJRA115_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_(ptr noundef nonnull align 1 dereferenceable(115) @.str.217, ptr noundef nonnull align 8 dereferenceable(32) %25) #28
          to label %bb.di unwind label %bb.dk

bb.di:                                            ; preds = %bb.dh
  unreachable

bb.dj:                                            ; preds = %bb.dg
  %i.ts = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit265

bb.dk:                                            ; preds = %bb.dh
  %i.tt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.tu = load ptr, ptr %25, align 8              ; 2 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  %i.tw = icmp eq ptr %i.tu, %i.tv
  br i1 %i.tw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit265, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i263

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i263: ; preds = %bb.dk
  %i.tx = load i64, ptr %i.tv, align 8
  %i.ty = add i64 %i.tx, 1
  call void @_ZdlPvm(ptr noundef %i.tu, i64 noundef %i.ty) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit265

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit265: ; preds = %bb.dk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i263, %bb.dj
  %.pn97 = phi { ptr, i32 } [ %i.ts, %bb.dj ], [ %i.tt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i263 ], [ %i.tt, %bb.dk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #27
  br label %.body

bb.dl:                                            ; preds = %bb.df
  %i.tz = extractvalue { ptr, i8 } %i.to, 0
  %i.ua = invoke { ptr, i8 } @_ZNK2v88internal6torque4Type15StructSupertypeEv(ptr noundef nonnull align 8 dereferenceable(128) %i.tz)
          to label %bb.dm unwind label %bb.dx     ; 2 uses

bb.dm:                                            ; preds = %bb.dl
  %i.ub = extractvalue { ptr, i8 } %i.ua, 1
  %i.uc = trunc nuw i8 %i.ub to i1                ; 2 uses
  br i1 %i.uc, label %bb.dn, label %_ZN2v88internal6torque11VisitResultD2Ev.exit423

bb.dn:                                            ; preds = %bb.dm
  %i.ud = extractvalue { ptr, i8 } %i.ua, 0
  %i.ue = invoke noundef nonnull align 8 dereferenceable(128) ptr @_ZNK2v88internal6torque13AggregateType11LookupFieldERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(224) %i.ud, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.do unwind label %bb.dx     ; 4 uses

bb.do:                                            ; preds = %bb.dn
  %50 = getelementptr inbounds nuw i8, ptr %i.ue, i64 96
  %51 = load ptr, ptr %50, align 8
  %52 = load i8, ptr %i.a, align 1, !range !872, !noundef !873
  %53 = trunc nuw i8 %52 to i1
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ue, i64 121
  %i.ug = load i8, ptr %i.uf, align 1, !range !872
  %i.uh = trunc nuw i8 %i.ug to i1
  %i.ui = xor i1 %4, true
  %i.uj = and i1 %i.ui, %i.uh
  %54 = select i1 %53, i1 true, i1 %i.uj
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %55 = invoke noundef ptr @_ZN2v88internal6torque10TypeOracle19GetReferenceGenericEb(i1 noundef zeroext %54)
          to label %.noexc266 unwind label %bb.dx

.noexc266:                                        ; preds = %bb.do
  %i.uk = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #29
          to label %.noexc267 unwind label %bb.dx ; 3 uses

.noexc267:                                        ; preds = %.noexc266
  store ptr %i.uk, ptr %9, align 8
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uk, i64 8 ; 2 uses
  %i.um = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  store ptr %i.ul, ptr %i.um, align 8
  store ptr %51, ptr %i.uk, align 8
  %i.un = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.ul, ptr %i.un, align 8
  %i.uo = invoke noundef ptr @_ZN2v88internal6torque10TypeOracle22GetGenericTypeInstanceEPNS1_11GenericTypeESt6vectorIPKNS1_4TypeESaIS8_EE(ptr noundef %55, ptr noundef nonnull align 8 %9)
          to label %bb.dp unwind label %bb.dr     ; 7 uses

bb.dp:                                            ; preds = %.noexc267
  %i.up = load ptr, ptr %9, align 8               ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.up, null
  br i1 %.not.i.i.i.i, label %bb.dt, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.uq = load ptr, ptr %i.um, align 8
  %i.ur = ptrtoint ptr %i.uq to i64
  %i.us = ptrtoint ptr %i.up to i64
  %i.ut = sub i64 %i.ur, %i.us
  call void @_ZdlPvm(ptr noundef nonnull %i.up, i64 noundef %i.ut) #30
  br label %bb.dt

bb.dr:                                            ; preds = %.noexc267
  %i.uu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.uv = load ptr, ptr %9, align 8               ; 3 uses
  %.not.i.i.i6.i = icmp eq ptr %i.uv, null
  br i1 %.not.i.i.i6.i, label %.body, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.uw = load ptr, ptr %i.um, align 8
  %i.ux = ptrtoint ptr %i.uw to i64
  %i.uy = ptrtoint ptr %i.uv to i64
  %i.uz = sub i64 %i.ux, %i.uy
  call void @_ZdlPvm(ptr noundef nonnull %i.uv, i64 noundef %i.uz) #30
  br label %.body

bb.dt:                                            ; preds = %bb.dq, %bb.dp
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  store ptr %i.uo, ptr %24, align 8
  %i.va = getelementptr inbounds nuw i8, ptr %i.ue, i64 104 ; 2 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %i.ue, i64 112
  %i.vc = load i8, ptr %i.vb, align 8, !range !872, !noundef !873
  %i.vd = trunc nuw i8 %i.vc to i1
  br i1 %i.vd, label %bb.eb, label %bb.du

bb.du:                                            ; preds = %bb.dt
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #27
  invoke void @_ZN2v88internal6torque5ErrorIJRA36_KcEEENS1_14MessageBuilderEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::torque::MessageBuilder") align 8 %26, ptr noundef nonnull align 1 dereferenceable(36) @.str.218)
          to label %bb.dv unwind label %bb.dy

bb.dv:                                            ; preds = %bb.du
  invoke void @_ZNK2v88internal6torque14MessageBuilder5ThrowEv(ptr noundef nonnull align 8 dereferenceable(96) %26) #28
          to label %bb.dw unwind label %bb.dz

bb.dw:                                            ; preds = %bb.dv
  unreachable

bb.dx:                                            ; preds = %_ZN2v88internal6torque11VisitResultC2ERKS2_.exit262, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i.i.i.i410, %.noexc6.i.i.i.i.i.i.i.i.i411, %.noexc.i.i.i.i.i.i.i.i.i412, %.noexc266, %bb.do, %bb.dl, %bb.dn
  %i.ve = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.dy:                                            ; preds = %bb.du
  %i.vf = landingpad { ptr, i32 }
          cleanup
  br label %bb.ea

bb.dz:                                            ; preds = %bb.dv
  %i.vg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2v88internal6torque14MessageBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %26) #27
  br label %bb.ea

bb.ea:                                            ; preds = %bb.dz, %bb.dy
  %.pn99 = phi { ptr, i32 } [ %i.vg, %bb.dz ], [ %i.vf, %bb.dy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #27
  br label %.body

bb.eb:                                            ; preds = %bb.dt
  %i.vh = load i64, ptr %i.va, align 8
  %.not101 = icmp eq i64 %i.vh, 0
  br i1 %.not101, label %bb.hu, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #27
  store ptr %1, ptr %27, align 8
  %i.vi = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 2 uses
  store i8 0, ptr %i.vi, align 8
  %i.vj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.vk = load ptr, ptr %i.vj, align 8
  %i.vl = load ptr, ptr %1, align 8
  %i.vm = ptrtoint ptr %i.vk to i64
  %i.vn = ptrtoint ptr %i.vl to i64
  %i.vo = sub i64 %i.vm, %i.vn
  %i.vp = ashr exact i64 %i.vo, 3
  %i.vq = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 4 uses
  store i64 %i.vp, ptr %i.vq, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !1863)
  %i.vr = getelementptr inbounds nuw i8, ptr %24, i64 64
  %i.vs = load i8, ptr %i.vr, align 8, !range !872, !noalias !1863, !noundef !873
  %i.vt = trunc nuw i8 %i.vs to i1
  br i1 %i.vt, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %bb.ec
  %.sroa.0.0.copyload.i = load i64, ptr %i.tm, align 8, !noalias !1863
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %24, i64 56
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !noalias !1863
  %i.vu = invoke { i64, i64 } @_ZN2v88internal6torque12CfgAssembler4PeekENS1_10StackRangeESt8optionalIPKNS1_4TypeEE(ptr noundef nonnull align 8 dereferenceable(1460) %1, i64 %.sroa.0.0.copyload.i, i64 %.sroa.2.0.copyload.i, ptr %i.uo, i8 1)
          to label %.noexc268 unwind label %bb.gz ; 2 uses

.noexc268:                                        ; preds = %bb.ed
  %i.vv = extractvalue { i64, i64 } %i.vu, 0
  %i.vw = extractvalue { i64, i64 } %i.vu, 1
  store ptr %i.uo, ptr %28, align 8, !alias.scope !1863
  %i.vx = getelementptr inbounds nuw i8, ptr %28, i64 40
  store i8 0, ptr %i.vx, align 8, !alias.scope !1863
  %i.vy = getelementptr inbounds nuw i8, ptr %28, i64 48
  store i64 %i.vv, ptr %i.vy, align 8, !alias.scope !1863
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %28, i64 56
  store i64 %i.vw, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !alias.scope !1863
  %i.vz = getelementptr inbounds nuw i8, ptr %28, i64 64
  store i8 1, ptr %i.vz, align 8, !alias.scope !1863
  br label %_ZN2v88internal6torque21ImplementationVisitor12GenerateCopyERKNS1_11VisitResultE.exit

bb.ee:                                            ; preds = %bb.ec
  store ptr %i.uo, ptr %28, align 8, !alias.scope !1863
  %i.wa = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 2 uses
  %i.wb = getelementptr inbounds nuw i8, ptr %28, i64 40 ; 2 uses
  store i8 0, ptr %i.wb, align 8, !alias.scope !1863
  %i.wc = load i8, ptr %i.su, align 8, !range !872, !noalias !1863, !noundef !873
  %i.wd = trunc nuw i8 %i.wc to i1
  br i1 %i.wd, label %bb.ef, label %_ZN2v88internal6torque11VisitResultC2ERKS2_.exit.i

bb.ef:                                            ; preds = %bb.ee
  %i.we = getelementptr inbounds nuw i8, ptr %28, i64 24 ; 3 uses
  store ptr %i.we, ptr %i.wa, align 8, !alias.scope !1863
  %i.wf = load ptr, ptr %i.ss, align 8, !noalias !1863 ; 2 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %24, i64 16
  %i.wh = load i64, ptr %i.wg, align 8, !noalias !1863 ; 8 uses
  %i.wi = icmp ugt i64 %i.wh, 15
  br i1 %i.wi, label %bb.eg, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i

bb.eg:                                            ; preds = %bb.ef
  %i.wj = icmp slt i64 %i.wh, 0
  br i1 %i.wj, label %.noexc.i.i.i.i.i.i.i.i.i.i, label %bb.eh

.noexc.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.eg
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.509) #28
          to label %.noexc269 unwind label %bb.gz

.noexc269:                                        ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i
  unreachable

bb.eh:                                            ; preds = %bb.eg
  %i.wk = add nuw i64 %i.wh, 1                    ; 2 uses
  %i.wl = icmp slt i64 %i.wk, 0
  br i1 %i.wl, label %.noexc6.i.i.i.i.i.i.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i.i.i.i.i, !prof !874

.noexc6.i.i.i.i.i.i.i.i.i.i:                      ; preds = %bb.eh
  invoke void @_ZSt17__throw_bad_allocv() #28
          to label %.noexc270 unwind label %bb.gz

.noexc270:                                        ; preds = %.noexc6.i.i.i.i.i.i.i.i.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.eh
  %i.wm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.wk) #29
          to label %.noexc271 unwind label %bb.gz ; 2 uses

.noexc271:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i.i.i.i.i
  store ptr %i.wm, ptr %i.wa, align 8, !alias.scope !1863
  store i64 %i.wh, ptr %i.we, align 8, !alias.scope !1863
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %.noexc271, %bb.ef
  %i.wn = phi ptr [ %i.wm, %.noexc271 ], [ %i.we, %bb.ef ] ; 3 uses
  switch i64 %i.wh, label %bb.ej [
    i64 1, label %bb.ei
    i64 0, label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i.i.i
  ]

bb.ei:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i
  %i.wo = load i8, ptr %i.wf, align 1
  store i8 %i.wo, ptr %i.wn, align 1
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i.i.i

bb.ej:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.wn, ptr align 1 %i.wf, i64 %i.wh, i1 false)
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i.i.i

_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i.i.i: ; preds = %bb.ej, %bb.ei, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i
  %i.wp = getelementptr inbounds nuw i8, ptr %28, i64 16
  store i64 %i.wh, ptr %i.wp, align 8, !alias.scope !1863
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wn, i64 %i.wh
  store i8 0, ptr %i.wq, align 1
  store i8 1, ptr %i.wb, align 8, !alias.scope !1863
  %.pre578.pre = load ptr, ptr %28, align 8
  br label %_ZN2v88internal6torque11VisitResultC2ERKS2_.exit.i

_ZN2v88internal6torque11VisitResultC2ERKS2_.exit.i: ; preds = %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i.i.i, %bb.ee
  %.pre578 = phi ptr [ %.pre578.pre, %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i.i.i ], [ %i.uo, %bb.ee ]
  %i.wr = getelementptr inbounds nuw i8, ptr %28, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.wr, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.tm, i64 24, i1 false)
  br label %_ZN2v88internal6torque21ImplementationVisitor12GenerateCopyERKNS1_11VisitResultE.exit

_ZN2v88internal6torque21ImplementationVisitor12GenerateCopyERKNS1_11VisitResultE.exit: ; preds = %_ZN2v88internal6torque11VisitResultC2ERKS2_.exit.i, %.noexc268
  %i.ws = phi ptr [ %.pre578, %_ZN2v88internal6torque11VisitResultC2ERKS2_.exit.i ], [ %i.uo, %.noexc268 ]
  store ptr %i.ws, ptr %24, align 8
  %i.wt = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 2 uses
  call void @_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14_M_move_assignEOS6_(ptr noundef nonnull align 8 dereferenceable(40) %i.ss, ptr noundef nonnull align 8 dereferenceable(40) %i.wt) #27
  %i.wu = getelementptr inbounds nuw i8, ptr %28, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.tm, ptr noundef nonnull align 8 dereferenceable(24) %i.wu, i64 24, i1 false)
  %i.wv = getelementptr inbounds nuw i8, ptr %28, i64 40 ; 2 uses
  %i.ww = load i8, ptr %i.wv, align 8, !range !872, !noundef !873
  %i.wx = trunc nuw i8 %i.ww to i1
  br i1 %i.wx, label %bb.ek, label %_ZN2v88internal6torque11VisitResultD2Ev.exit274

bb.ek:                                            ; preds = %_ZN2v88internal6torque21ImplementationVisitor12GenerateCopyERKNS1_11VisitResultE.exit
  store i8 0, ptr %i.wv, align 8
  %i.wy = load ptr, ptr %i.wt, align 8            ; 2 uses
  %i.wz = getelementptr inbounds nuw i8, ptr %28, i64 24 ; 2 uses
  %i.xa = icmp eq ptr %i.wy, %i.wz
  br i1 %i.xa, label %_ZN2v88internal6torque11VisitResultD2Ev.exit274, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i272

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i272: ; preds = %bb.ek
  %i.xb = load i64, ptr %i.wz, align 8
  %i.xc = add i64 %i.xb, 1
  call void @_ZdlPvm(ptr noundef %i.wy, i64 noundef %i.xc) #30
  br label %_ZN2v88internal6torque11VisitResultD2Ev.exit274

_ZN2v88internal6torque11VisitResultD2Ev.exit274:  ; preds = %bb.ek, %_ZN2v88internal6torque21ImplementationVisitor12GenerateCopyERKNS1_11VisitResultE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i272
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #27
  %i.xd = load ptr, ptr %24, align 8
  store ptr %i.xd, ptr %30, align 8
  %i.xe = getelementptr inbounds nuw i8, ptr %30, i64 8 ; 4 uses
  %i.xf = getelementptr inbounds nuw i8, ptr %30, i64 40 ; 6 uses
  store i8 0, ptr %i.xf, align 8
  %i.xg = load i8, ptr %i.su, align 8, !range !872, !noundef !873
  %i.xh = trunc nuw i8 %i.xg to i1
  br i1 %i.xh, label %bb.el, label %._crit_edge.i.i284

bb.el:                                            ; preds = %_ZN2v88internal6torque11VisitResultD2Ev.exit274
  %i.xi = getelementptr inbounds nuw i8, ptr %30, i64 24 ; 3 uses
  store ptr %i.xi, ptr %i.xe, align 8
  %i.xj = load ptr, ptr %i.ss, align 8            ; 2 uses
  %i.xk = getelementptr inbounds nuw i8, ptr %24, i64 16
  %i.xl = load i64, ptr %i.xk, align 8            ; 8 uses
  %i.xm = icmp ugt i64 %i.xl, 15
  br i1 %i.xm, label %bb.em, label %._crit_edge.i.i.i.i.i.i.i.i.i.i275

bb.em:                                            ; preds = %bb.el
  %i.xn = icmp slt i64 %i.xl, 0
  br i1 %i.xn, label %.noexc.i.i.i.i.i.i.i.i.i279, label %bb.en

.noexc.i.i.i.i.i.i.i.i.i279:                      ; preds = %bb.em
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.509) #28
end_hunk_0
