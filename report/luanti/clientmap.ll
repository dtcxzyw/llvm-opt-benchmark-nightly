Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/clientmap?download=true
inline.NumInlined: 4211
inline.NumDeleted: 1666
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_ZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNS0_9SMaterialEbEEiii:.invoke
  %i.ash = load ptr, ptr %11, align 8, !tbaa !64  ; 2 uses
  %i.asi = icmp eq ptr %i.ash, %i.fi
  br i1 %i.asi, label %_ZN9TimeTakerD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i270

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i270: ; preds = %bb.fc
  %i.asj = load i64, ptr %i.fi, align 8, !tbaa !65
  %i.ask = add i64 %i.asj, 1
  call void @_ZdlPvm(ptr noundef %i.ash, i64 noundef %i.ask) #34
  br label %_ZN9TimeTakerD2Ev.exit

bb.fd:                                            ; preds = %_ZNSt6vectorIN5video15E_MATERIAL_TYPEESaIS1_EED2Ev.exit
  %i.asl = landingpad { ptr, i32 }
          catch ptr null
  %i.asm = extractvalue { ptr, i32 } %i.asl, 0
  call void @__clang_call_terminate(ptr %i.asm) #35
  unreachable

_ZN9TimeTakerD2Ev.exit:                           ; preds = %bb.fc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i270
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #2
  br label %bb.fe

bb.fe:                                            ; preds = %bb.b, %_ZN9TimeTakerD2Ev.exit
  %i.asn = load ptr, ptr %10, align 8, !tbaa !64  ; 2 uses
  %i.aso = icmp eq ptr %i.asn, %i.i
  br i1 %i.aso, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i273

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i273: ; preds = %bb.fe
  %i.asp = load i64, ptr %i.i, align 8, !tbaa !65
  %i.asq = add i64 %i.asp, 1
  call void @_ZdlPvm(ptr noundef %i.asn, i64 noundef %i.asq) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275: ; preds = %bb.fe, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i273
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #2
  ret void

bb.ff:                                            ; preds = %._crit_edge617
  %i.asr = landingpad { ptr, i32 }
          cleanup
  br label %bb.fl

bb.fg:                                            ; preds = %bb.ei
  %i.ass = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #2
  br label %bb.fl

bb.fh:                                            ; preds = %bb.em, %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  %i.ast = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.asu = load ptr, ptr %19, align 8, !tbaa !64  ; 2 uses
  %i.asv = icmp eq ptr %i.asu, %i.aot
  br i1 %i.asv, label %.body214, label %.body214.sink.split

.body214.sink.split:                              ; preds = %bb.fh, %bb.el
  %.sink = phi ptr [ %i.apf, %bb.el ], [ %i.asu, %bb.fh ]
  %.pn123.ph = phi { ptr, i32 } [ %i.ape, %bb.el ], [ %i.ast, %bb.fh ]
  %i.asw = load i64, ptr %i.aot, align 8, !tbaa !65
  %i.asx = add i64 %i.asw, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.asx) #34
  br label %.body214

.body214:                                         ; preds = %.body214.sink.split, %bb.fh, %bb.el
  %.pn123 = phi { ptr, i32 } [ %i.ape, %bb.el ], [ %i.ast, %bb.fh ], [ %.pn123.ph, %.body214.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #2
  br label %bb.fl

bb.fi:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit229
  %i.asy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.asz = load ptr, ptr %20, align 8, !tbaa !64  ; 2 uses
  %i.ata = icmp eq ptr %i.asz, %i.apq
  br i1 %i.ata, label %.body227, label %.body227.sink.split

.body227.sink.split:                              ; preds = %bb.fi, %bb.ep
  %.sink1033 = phi ptr [ %i.aqc, %bb.ep ], [ %i.asz, %bb.fi ]
  %.pn125.ph = phi { ptr, i32 } [ %i.aqb, %bb.ep ], [ %i.asy, %bb.fi ]
  %i.atb = load i64, ptr %i.apq, align 8, !tbaa !65
  %i.atc = add i64 %i.atb, 1
  call void @_ZdlPvm(ptr noundef %.sink1033, i64 noundef %i.atc) #34
  br label %.body227

.body227:                                         ; preds = %.body227.sink.split, %bb.fi, %bb.ep
  %.pn125 = phi { ptr, i32 } [ %i.aqb, %bb.ep ], [ %i.asy, %bb.fi ], [ %.pn125.ph, %.body227.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #2
  br label %bb.fl

bb.fj:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit243
  %i.atd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ate = load ptr, ptr %21, align 8, !tbaa !64  ; 2 uses
  %i.atf = icmp eq ptr %i.ate, %i.aql
  br i1 %i.atf, label %.body241, label %.body241.sink.split

.body241.sink.split:                              ; preds = %bb.fj, %bb.es
  %.sink1036 = phi ptr [ %i.aqx, %bb.es ], [ %i.ate, %bb.fj ]
  %.pn127.ph = phi { ptr, i32 } [ %i.aqw, %bb.es ], [ %i.atd, %bb.fj ]
  %i.atg = load i64, ptr %i.aql, align 8, !tbaa !65
  %i.ath = add i64 %i.atg, 1
  call void @_ZdlPvm(ptr noundef %.sink1036, i64 noundef %i.ath) #34
  br label %.body241

.body241:                                         ; preds = %.body241.sink.split, %bb.fj, %bb.es
  %.pn127 = phi { ptr, i32 } [ %i.aqw, %bb.es ], [ %i.atd, %bb.fj ], [ %.pn127.ph, %.body241.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #2
  br label %bb.fl

bb.fk:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit257
  %i.ati = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.atj = load ptr, ptr %22, align 8, !tbaa !64  ; 2 uses
  %i.atk = icmp eq ptr %i.atj, %i.arh
  br i1 %i.atk, label %.body255, label %.body255.sink.split

.body255.sink.split:                              ; preds = %bb.fk, %bb.ev
  %.sink1039 = phi ptr [ %i.art, %bb.ev ], [ %i.atj, %bb.fk ]
  %.pn129.ph = phi { ptr, i32 } [ %i.ars, %bb.ev ], [ %i.ati, %bb.fk ]
  %i.atl = load i64, ptr %i.arh, align 8, !tbaa !65
  %i.atm = add i64 %i.atl, 1
  call void @_ZdlPvm(ptr noundef %.sink1039, i64 noundef %i.atm) #34
  br label %.body255

.body255:                                         ; preds = %.body255.sink.split, %bb.fk, %bb.ev
  %.pn129 = phi { ptr, i32 } [ %i.ars, %bb.ev ], [ %i.ati, %bb.fk ], [ %.pn129.ph, %.body255.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #2
  br label %bb.fl

bb.fl:                                            ; preds = %.body255, %.body241, %.body227, %.body214, %bb.fg, %bb.ff
  %.pn129.pn = phi { ptr, i32 } [ %.pn129, %.body255 ], [ %.pn127, %.body241 ], [ %.pn125, %.body227 ], [ %.pn123, %.body214 ], [ %i.ass, %bb.fg ], [ %i.asr, %bb.ff ]
  call void @_ZN5video9SMaterialD2Ev(ptr noundef nonnull align 8 dead_on_return(127) dereferenceable(127) %16) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #2
  br label %bb.fm

bb.fm:                                            ; preds = %.loopexit.split-lp384.loopexit.split-lp, %bb.ec, %bb.eh, %bb.fl
  %.sroa.0330.2 = phi ptr [ %.sroa.0330.1, %bb.ec ], [ %.sroa.0330.1, %bb.eh ], [ %.sroa.0330.1, %bb.fl ], [ %.sroa.0330.0596, %.loopexit.split-lp384.loopexit.split-lp ] ; 3 uses
  %.sroa.20.2 = phi ptr [ %.sroa.20.1, %bb.ec ], [ %.sroa.20.1, %bb.eh ], [ %.sroa.20.1, %bb.fl ], [ %.sroa.20.0598, %.loopexit.split-lp384.loopexit.split-lp ]
  %.pn138.pn = phi { ptr, i32 } [ %.pn133.pn, %bb.ec ], [ %i.ani, %bb.eh ], [ %.pn129.pn, %bb.fl ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp384.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i288 = icmp eq ptr %.sroa.0330.2, null
  br i1 %.not.i.i.i288, label %_ZNSt6vectorIN5video15E_MATERIAL_TYPEESaIS1_EED2Ev.exit289, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.atn = ptrtoint ptr %.sroa.20.2 to i64
  %i.ato = ptrtoint ptr %.sroa.0330.2 to i64
  %i.atp = sub i64 %i.atn, %i.ato
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0330.2, i64 noundef %i.atp) #34
  br label %_ZNSt6vectorIN5video15E_MATERIAL_TYPEESaIS1_EED2Ev.exit289

_ZNSt6vectorIN5video15E_MATERIAL_TYPEESaIS1_EED2Ev.exit289: ; preds = %bb.fn, %bb.fm, %.thread370, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197
  %.pn138.pn.pn = phi { ptr, i32 } [ %.pn121, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197 ], [ %i.ais, %.thread370 ], [ %.pn138.pn, %bb.fm ], [ %.pn138.pn, %bb.fn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #2
  call void @_ZN9TimeTakerD2Ev(ptr noundef nonnull align 8 dead_on_return(50) dereferenceable(50) %11) #2
  br label %bb.fo

bb.fo:                                            ; preds = %_ZNSt6vectorIN5video15E_MATERIAL_TYPEESaIS1_EED2Ev.exit289, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194
  %.pn138.pn.pn.pn = phi { ptr, i32 } [ %.pn138.pn.pn, %_ZNSt6vectorIN5video15E_MATERIAL_TYPEESaIS1_EED2Ev.exit289 ], [ %i.agl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #2
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp412.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.fo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95.i, %_ZNSt6vectorISt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESaIS7_EED2Ev.exit171.i
  %.pn143.pn = phi { ptr, i32 } [ %.pn81.pn.pn.i, %_ZNSt6vectorISt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESaIS7_EED2Ev.exit171.i ], [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95.i ], [ %.pn138.pn.pn.pn, %bb.fo ], [ %lpad.loopexit.split-lp1155, %.loopexit.split-lp412.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.atq = load ptr, ptr %10, align 8, !tbaa !64  ; 2 uses
  %i.atr = icmp eq ptr %i.atq, %i.i
  br i1 %i.atr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit292, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i290

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i290: ; preds = %.body
  %i.ats = load i64, ptr %i.i, align 8, !tbaa !65
  %i.att = add i64 %i.ats, 1
  call void @_ZdlPvm(ptr noundef %i.atq, i64 noundef %i.att) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit292

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit292: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i290
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #2
  resume { ptr, i32 } %.pn143.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5video9SMaterialC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(127) %0, ptr noundef nonnull align 8 dereferenceable(127) %1) unnamed_addr #20 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr null, ptr %i.a, align 8, !tbaa !642
  %i.b = icmp eq ptr %0, %1
  br i1 %i.b, label %_ZN5video14SMaterialLayerC2ERKS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !560
  store ptr %i.c, ptr %0, align 8, !tbaa !560
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !642
  %.not19.i.i = icmp eq ptr %i.e, null
  br i1 %.not19.i.i, label %bb.c, label %.noexc

.noexc:                                           ; preds = %bb.b
  %i.f = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #38 ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !642
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.f, ptr noundef nonnull align 4 dereferenceable(64) %i.g, i64 64, i1 false), !tbaa.struct !650
  store ptr %i.f, ptr %i.a, align 8, !tbaa !642
  br label %bb.c

bb.c:                                             ; preds = %.noexc, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.i = load i16, ptr %i.h, align 8
  %i.j = and i16 %i.i, 15
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.l = load i16, ptr %i.k, align 8
  %i.m = and i16 %i.l, -16
  %i.n = or disjoint i16 %i.m, %i.j               ; 2 uses
  store i16 %i.n, ptr %i.k, align 8
  %i.o = load i16, ptr %i.h, align 8
  %i.p = and i16 %i.o, 240
  %i.q = and i16 %i.n, -241
  %i.r = or disjoint i16 %i.q, %i.p               ; 2 uses
  store i16 %i.r, ptr %i.k, align 8
  %2 = load i16, ptr %i.h, align 8
  %3 = and i16 %2, 3840
  %i.s = and i16 %i.r, -3841
  %i.t = or disjoint i16 %i.s, %3
  store i16 %i.t, ptr %i.k, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.w = load <4 x i8>, ptr %i.u, align 2, !tbaa !65
  store <4 x i8> %i.w, ptr %i.v, align 2, !tbaa !65
  br label %_ZN5video14SMaterialLayerC2ERKS0_.exit

_ZN5video14SMaterialLayerC2ERKS0_.exit:           ; preds = %bb.c, %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr null, ptr %i.y, align 8, !tbaa !642
  %i.z = icmp eq ptr %0, %1
  br i1 %i.z, label %_ZN5video14SMaterialLayerC2ERKS0_.exit.1, label %bb.d

bb.d:                                             ; preds = %_ZN5video14SMaterialLayerC2ERKS0_.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !560
  store ptr %i.ab, ptr %i.x, align 8, !tbaa !560
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !642
  %.not19.i.i.1 = icmp eq ptr %i.ad, null
  br i1 %.not19.i.i.1, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ae = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #38
          to label %.noexc.1 unwind label %.preheader.preheader ; 2 uses

.noexc.1:                                         ; preds = %bb.e
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !642
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.ae, ptr noundef nonnull align 4 dereferenceable(64) %i.af, i64 64, i1 false), !tbaa.struct !650
  store ptr %i.ae, ptr %i.y, align 8, !tbaa !642
  br label %bb.f

bb.f:                                             ; preds = %.noexc.1, %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.ah = load i16, ptr %i.ag, align 8
  %i.ai = and i16 %i.ah, 15
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.ak = load i16, ptr %i.aj, align 8
  %i.al = and i16 %i.ak, -16
  %i.am = or disjoint i16 %i.al, %i.ai            ; 2 uses
  store i16 %i.am, ptr %i.aj, align 8
  %i.an = load i16, ptr %i.ag, align 8
  %i.ao = and i16 %i.an, 240
  %i.ap = and i16 %i.am, -241
  %i.aq = or disjoint i16 %i.ap, %i.ao            ; 2 uses
  store i16 %i.aq, ptr %i.aj, align 8
  %4 = load i16, ptr %i.ag, align 8
  %5 = and i16 %4, 3840
  %i.ar = and i16 %i.aq, -3841
  %i.as = or disjoint i16 %i.ar, %5
  store i16 %i.as, ptr %i.aj, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 34
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 34
  %i.av = load <4 x i8>, ptr %i.at, align 2, !tbaa !65
  store <4 x i8> %i.av, ptr %i.au, align 2, !tbaa !65
  br label %_ZN5video14SMaterialLayerC2ERKS0_.exit.1

_ZN5video14SMaterialLayerC2ERKS0_.exit.1:         ; preds = %bb.f, %_ZN5video14SMaterialLayerC2ERKS0_.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store ptr null, ptr %i.ax, align 8, !tbaa !642
  %i.ay = icmp eq ptr %0, %1
  br i1 %i.ay, label %_ZN5video14SMaterialLayerC2ERKS0_.exit.2, label %bb.g

bb.g:                                             ; preds = %_ZN5video14SMaterialLayerC2ERKS0_.exit.1
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !560
  store ptr %i.ba, ptr %i.aw, align 8, !tbaa !560
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !642
  %.not19.i.i.2 = icmp eq ptr %i.bc, null
  br i1 %.not19.i.i.2, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bd = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #38
          to label %.noexc.2 unwind label %.preheader.preheader ; 2 uses

.noexc.2:                                         ; preds = %bb.h
  %i.be = load ptr, ptr %i.bb, align 8, !tbaa !642
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.bd, ptr noundef nonnull align 4 dereferenceable(64) %i.be, i64 64, i1 false), !tbaa.struct !650
  store ptr %i.bd, ptr %i.ax, align 8, !tbaa !642
  br label %bb.i

bb.i:                                             ; preds = %.noexc.2, %bb.g
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.bg = load i16, ptr %i.bf, align 8
  %i.bh = and i16 %i.bg, 15
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.bj = load i16, ptr %i.bi, align 8
  %i.bk = and i16 %i.bj, -16
  %i.bl = or disjoint i16 %i.bk, %i.bh            ; 2 uses
  store i16 %i.bl, ptr %i.bi, align 8
  %i.bm = load i16, ptr %i.bf, align 8
  %i.bn = and i16 %i.bm, 240
  %i.bo = and i16 %i.bl, -241
  %i.bp = or disjoint i16 %i.bo, %i.bn            ; 2 uses
  store i16 %i.bp, ptr %i.bi, align 8
  %6 = load i16, ptr %i.bf, align 8
  %7 = and i16 %6, 3840
  %i.bq = and i16 %i.bp, -3841
  %i.br = or disjoint i16 %i.bq, %7
  store i16 %i.br, ptr %i.bi, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 58
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 58
  %i.bu = load <4 x i8>, ptr %i.bs, align 2, !tbaa !65
  store <4 x i8> %i.bu, ptr %i.bt, align 2, !tbaa !65
  br label %_ZN5video14SMaterialLayerC2ERKS0_.exit.2

_ZN5video14SMaterialLayerC2ERKS0_.exit.2:         ; preds = %bb.i, %_ZN5video14SMaterialLayerC2ERKS0_.exit.1
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  store ptr null, ptr %i.bw, align 8, !tbaa !642
  %i.bx = icmp eq ptr %0, %1
  br i1 %i.bx, label %_ZN5video14SMaterialLayerC2ERKS0_.exit.3, label %bb.j

bb.j:                                             ; preds = %_ZN5video14SMaterialLayerC2ERKS0_.exit.2
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !560
  store ptr %i.bz, ptr %i.bv, align 8, !tbaa !560
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !642
  %.not19.i.i.3 = icmp eq ptr %i.cb, null
  br i1 %.not19.i.i.3, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cc = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #38
          to label %.noexc.3 unwind label %.preheader.preheader ; 2 uses

.noexc.3:                                         ; preds = %bb.k
  %i.cd = load ptr, ptr %i.ca, align 8, !tbaa !642
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.cc, ptr noundef nonnull align 4 dereferenceable(64) %i.cd, i64 64, i1 false), !tbaa.struct !650
  store ptr %i.cc, ptr %i.bw, align 8, !tbaa !642
  br label %bb.l

bb.l:                                             ; preds = %.noexc.3, %bb.j
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.cf = load i16, ptr %i.ce, align 8
  %i.cg = and i16 %i.cf, 15
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.ci = load i16, ptr %i.ch, align 8
  %i.cj = and i16 %i.ci, -16
  %i.ck = or disjoint i16 %i.cj, %i.cg            ; 2 uses
  store i16 %i.ck, ptr %i.ch, align 8
  %i.cl = load i16, ptr %i.ce, align 8
  %i.cm = and i16 %i.cl, 240
  %i.cn = and i16 %i.ck, -241
  %i.co = or disjoint i16 %i.cn, %i.cm            ; 2 uses
  store i16 %i.co, ptr %i.ch, align 8
  %8 = load i16, ptr %i.ce, align 8
  %9 = and i16 %8, 3840
  %i.cp = and i16 %i.co, -3841
  %i.cq = or disjoint i16 %i.cp, %9
  store i16 %i.cq, ptr %i.ch, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 82
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 82
  %i.ct = load <4 x i8>, ptr %i.cr, align 2, !tbaa !65
  store <4 x i8> %i.ct, ptr %i.cs, align 2, !tbaa !65
  br label %_ZN5video14SMaterialLayerC2ERKS0_.exit.3

_ZN5video14SMaterialLayerC2ERKS0_.exit.3:         ; preds = %bb.l, %_ZN5video14SMaterialLayerC2ERKS0_.exit.2
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(31) %i.cu, ptr noundef nonnull align 8 dereferenceable(31) %i.cv, i64 31, i1 false)
  ret void

.preheader.preheader:                             ; preds = %bb.e, %bb.h, %bb.k
  %.lcssa.ph = phi ptr [ %i.bv, %bb.k ], [ %i.aw, %bb.h ], [ %i.x, %bb.e ]
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %_ZN5video14SMaterialLayerD2Ev.exit
  %i.cw = phi ptr [ %i.cx, %_ZN5video14SMaterialLayerD2Ev.exit ], [ %.lcssa.ph, %.preheader.preheader ] ; 2 uses
  %i.cx = getelementptr inbounds i8, ptr %i.cw, i64 -24 ; 2 uses
  %i.cy = getelementptr inbounds i8, ptr %i.cw, i64 -8
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !642 ; 2 uses
  %.not.i = icmp eq ptr %i.cz, null
  br i1 %.not.i, label %_ZN5video14SMaterialLayerD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %.preheader
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cz, i64 noundef 64) #34
  br label %_ZN5video14SMaterialLayerD2Ev.exit

_ZN5video14SMaterialLayerD2Ev.exit:               ; preds = %.preheader, %bb.m
  %i.da = icmp eq ptr %i.cx, %0
  br i1 %i.da, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %_ZN5video14SMaterialLayerD2Ev.exit
  resume { ptr, i32 } %lpad.thr_comm
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5video9SMaterialD2Ev(ptr noundef nonnull align 8 dead_on_return(127) dereferenceable(127) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !642  ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZN5video14SMaterialLayerD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 64) #34
  br label %_ZN5video14SMaterialLayerD2Ev.exit

_ZN5video14SMaterialLayerD2Ev.exit:               ; preds = %bb.a, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !642  ; 2 uses
  %.not.i.1 = icmp eq ptr %i.d, null
  br i1 %.not.i.1, label %_ZN5video14SMaterialLayerD2Ev.exit.1, label %bb.c

bb.c:                                             ; preds = %_ZN5video14SMaterialLayerD2Ev.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 64) #34
  br label %_ZN5video14SMaterialLayerD2Ev.exit.1

_ZN5video14SMaterialLayerD2Ev.exit.1:             ; preds = %bb.c, %_ZN5video14SMaterialLayerD2Ev.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !642  ; 2 uses
  %.not.i.2 = icmp eq ptr %i.f, null
  br i1 %.not.i.2, label %_ZN5video14SMaterialLayerD2Ev.exit.2, label %bb.d

bb.d:                                             ; preds = %_ZN5video14SMaterialLayerD2Ev.exit.1
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef 64) #34
  br label %_ZN5video14SMaterialLayerD2Ev.exit.2

_ZN5video14SMaterialLayerD2Ev.exit.2:             ; preds = %bb.d, %_ZN5video14SMaterialLayerD2Ev.exit.1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !642  ; 2 uses
  %.not.i.3 = icmp eq ptr %i.h, null
  br i1 %.not.i.3, label %_ZN5video14SMaterialLayerD2Ev.exit.3, label %bb.e

bb.e:                                             ; preds = %_ZN5video14SMaterialLayerD2Ev.exit.2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef 64) #34
  br label %_ZN5video14SMaterialLayerD2Ev.exit.3

_ZN5video14SMaterialLayerD2Ev.exit.3:             ; preds = %bb.e, %_ZN5video14SMaterialLayerD2Ev.exit.2
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN9ClientMap20updateDrawListShadowEN4core8vector3dIfEES2_ff(ptr noundef nonnull align 8 dereferenceable(656) %0, <2 x float> %1, float %2, <2 x float> %3, float %4, float noundef %5, float noundef %6) local_unnamed_addr #18 align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %7 = alloca %class.ScopeProfiler, align 8       ; 8 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #2
  %i.e = load ptr, ptr @g_profiler, align 8, !tbaa !493
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #2
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  store ptr %i.f, ptr %8, align 8, !tbaa !177
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #2
  store i64 26, ptr %i.d, align 8, !tbaa !178
  %i.g = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc unwind label %bb.d     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.g, ptr %8, align 8, !tbaa !64
  %i.h = load i64, ptr %i.d, align 8, !tbaa !178  ; 3 uses
  store i64 %i.h, ptr %i.f, align 8, !tbaa !65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(26) %i.g, ptr noundef nonnull align 1 dereferenceable(26) @.str.38, i64 26, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.h, ptr %i.i, align 8, !tbaa !176
  %i.j = load ptr, ptr %8, align 8, !tbaa !64
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.h
  store i8 0, ptr %i.k, align 1, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #2
  invoke void @_ZN13ScopeProfilerC1EP8ProfilerRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE17ScopeProfilerType13TimePrecision(ptr noundef nonnull align 8 dereferenceable(50) %7, ptr noundef %i.e, ptr noundef nonnull align 8 dereferenceable(32) %8, i8 noundef zeroext 2, i8 noundef signext 1)
          to label %bb.a unwind label %bb.e

bb.a:                                             ; preds = %.noexc
  %i.l = load ptr, ptr %8, align 8, !tbaa !64     ; 2 uses
  %i.m = icmp eq ptr %i.l, %i.f
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.n = load i64, ptr %i.f, align 8, !tbaa !65
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.o) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #2
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !165  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 9 uses
  %.not8.i = icmp eq ptr %i.r, %i.s
  br i1 %.not8.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 552 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !164
  invoke void @_ZNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_P8MapBlockESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE8_M_eraseEPSt13_Rb_tree_nodeIS7_E(ptr noundef nonnull align 8 dereferenceable(48) %i.p, ptr noundef %i.u)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %._crit_edge.i
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  call void @__clang_call_terminate(ptr %i.w) #35
  unreachable

.lr.ph.i:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %.lr.ph.i
  %.sroa.05.09.i = phi ptr [ %i.ac, %.lr.ph.i ], [ %i.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i, i64 40
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !206
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 22 ; 2 uses
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !239
  %i.ab = add i16 %i.aa, -1
  store i16 %i.ab, ptr %i.z, align 2, !tbaa !239
  %i.ac = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.05.09.i) #37 ; 2 uses
  %.not.i = icmp eq ptr %i.ac, %i.s
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.c:                                             ; preds = %._crit_edge.i
  store ptr null, ptr %i.t, align 8, !tbaa !164
  store ptr %i.s, ptr %i.q, align 8, !tbaa !165
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 568
  store ptr %i.s, ptr %i.ad, align 8, !tbaa !166
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 4 uses
  store i64 0, ptr %i.ae, align 8, !tbaa !167
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.sroa.0173.0206 = load ptr, ptr %i.af, align 8, !tbaa !243 ; 2 uses
  %.not194207 = icmp eq ptr %.sroa.0173.0206, null
  br i1 %.not194207, label %.noexc.i93, label %.lr.ph211

.lr.ph211:                                        ; preds = %bb.c
  %.sroa.0177.0.vec.extract = extractelement <2 x float> %3, i64 0
  br label %bb.f

.noexc.i93.loopexit:                              ; preds = %.loopexit
  %i.ag = uitofp nsz i32 %.470 to float
  %i.ah = uitofp nsz i32 %.165 to float
  br label %.noexc.i93

.noexc.i93:                                       ; preds = %.noexc.i93.loopexit, %bb.c
  %.066.lcssa = phi float [ 0.000000e+00, %bb.c ], [ %i.ag, %.noexc.i93.loopexit ]
  %.064.lcssa = phi float [ 0.000000e+00, %bb.c ], [ %i.ah, %.noexc.i93.loopexit ]
  %i.ai = load ptr, ptr @g_profiler, align 8, !tbaa !493
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #2
  %i.aj = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  store ptr %i.aj, ptr %9, align 8, !tbaa !177
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #2
  store i64 35, ptr %i.c, align 8, !tbaa !178
  %i.ak = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc94 unwind label %bb.ad  ; 3 uses

.noexc94:                                         ; preds = %.noexc.i93
end_hunk_0
begin_hunk_1_@_ZNSt5dequeIN4core8vector3dIsEESaIS2_EE17_M_reallocate_mapEmb:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !625  ; 6 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %i.i = add nsw i64 %i.h, 1                      ; 3 uses
  %i.j = add i64 %i.i, %1                         ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !637  ; 4 uses
  %i.m = shl i64 %i.j, 1
  %i.n = icmp ugt i64 %i.l, %i.m
  br i1 %i.n, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %0, align 8, !tbaa !635
  %i.p = sub i64 %i.l, %i.j
  %i.q = lshr i64 %i.p, 1
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.q
  %i.s = select i1 %2, i64 %1, i64 0
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.s ; 10 uses
  %i.u = icmp ult ptr %i.t, %i.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.u, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.f                       ; 3 uses
  %i.y = icmp sgt i64 %i.x, 8
  br i1 %i.y, label %bb.d, label %bb.e, !prof !669

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.t, ptr nonnull align 8 %i.d, i64 %i.x, i1 false)
  br label %_ZSt4copyIPPN4core8vector3dIsEES4_ET0_T_S6_S5_.exit

bb.e:                                             ; preds = %bb.c
  %i.z = icmp eq i64 %i.x, 8
  br i1 %i.z, label %bb.f, label %_ZSt4copyIPPN4core8vector3dIsEES4_ET0_T_S6_S5_.exit

bb.f:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr %i.d, align 8, !tbaa !627
  store ptr %i.aa, ptr %i.t, align 8, !tbaa !627
  br label %_ZSt4copyIPPN4core8vector3dIsEES4_ET0_T_S6_S5_.exit

bb.g:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.i ; 2 uses
  %i.ac = ptrtoint ptr %i.v to i64
  %i.ad = sub i64 %i.ac, %i.f                     ; 3 uses
  %i.ae = ashr exact i64 %i.ad, 3                 ; 2 uses
  %i.af = icmp sgt i64 %i.ae, 1
  br i1 %i.af, label %bb.h, label %bb.i, !prof !669

bb.h:                                             ; preds = %bb.g
  %i.ag = sub nsw i64 0, %i.ae
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ag
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr align 8 %i.d, i64 %i.ad, i1 false)
  br label %_ZSt4copyIPPN4core8vector3dIsEES4_ET0_T_S6_S5_.exit

bb.i:                                             ; preds = %bb.g
  %i.ai = icmp eq i64 %i.ad, 8
  br i1 %i.ai, label %bb.j, label %_ZSt4copyIPPN4core8vector3dIsEES4_ET0_T_S6_S5_.exit

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds i8, ptr %i.ab, i64 -8
  %i.ak = load ptr, ptr %i.d, align 8, !tbaa !627
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !627
  br label %_ZSt4copyIPPN4core8vector3dIsEES4_ET0_T_S6_S5_.exit

bb.k:                                             ; preds = %bb.a
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.l, i64 %1)
  %i.al = add i64 %i.l, 2
  %i.am = add i64 %i.al, %.sroa.speculated        ; 5 uses
  %i.an = icmp ugt i64 %i.am, 1152921504606846975
  br i1 %i.an, label %bb.l, label %_ZNSt11_Deque_baseIN4core8vector3dIsEESaIS2_EE15_M_allocate_mapEm.exit, !prof !667

bb.l:                                             ; preds = %bb.k
  %i.ao = icmp ugt i64 %i.am, 2305843009213693951
  br i1 %i.ao, label %.noexc.i, label %.noexc3.i

.noexc.i:                                         ; preds = %bb.l
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #36
  unreachable

.noexc3.i:                                        ; preds = %bb.l
  tail call void @_ZSt17__throw_bad_allocv() #36
  unreachable

_ZNSt11_Deque_baseIN4core8vector3dIsEESaIS2_EE15_M_allocate_mapEm.exit: ; preds = %bb.k
  %i.ap = shl nuw nsw i64 %i.am, 3
  %i.aq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #38 ; 2 uses
  %i.ar = sub i64 %i.am, %i.j
  %i.as = lshr i64 %i.ar, 1
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.as
  %i.au = select i1 %2, i64 %1, i64 0
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.au ; 3 uses
  %i.aw = load ptr, ptr %i.c, align 8, !tbaa !625 ; 3 uses
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !636
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = ptrtoint ptr %i.aw to i64
  %i.bb = sub i64 %i.az, %i.ba                    ; 3 uses
  %i.bc = icmp sgt i64 %i.bb, 8
  br i1 %i.bc, label %bb.m, label %bb.n, !prof !669

bb.m:                                             ; preds = %_ZNSt11_Deque_baseIN4core8vector3dIsEESaIS2_EE15_M_allocate_mapEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.av, ptr align 8 %i.aw, i64 %i.bb, i1 false)
  br label %_ZSt4copyIPPN4core8vector3dIsEES4_ET0_T_S6_S5_.exit24

bb.n:                                             ; preds = %_ZNSt11_Deque_baseIN4core8vector3dIsEESaIS2_EE15_M_allocate_mapEm.exit
  %i.bd = icmp eq i64 %i.bb, 8
  br i1 %i.bd, label %bb.o, label %_ZSt4copyIPPN4core8vector3dIsEES4_ET0_T_S6_S5_.exit24

bb.o:                                             ; preds = %bb.n
  %i.be = load ptr, ptr %i.aw, align 8, !tbaa !627
  store ptr %i.be, ptr %i.av, align 8, !tbaa !627
  br label %_ZSt4copyIPPN4core8vector3dIsEES4_ET0_T_S6_S5_.exit24

_ZSt4copyIPPN4core8vector3dIsEES4_ET0_T_S6_S5_.exit24: ; preds = %bb.m, %bb.n, %bb.o
  %i.bf = load ptr, ptr %0, align 8, !tbaa !635
  %i.bg = load i64, ptr %i.k, align 8, !tbaa !637
  %i.bh = shl i64 %i.bg, 3
  tail call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bh) #34
  store ptr %i.aq, ptr %0, align 8, !tbaa !635
  store i64 %i.am, ptr %i.k, align 8, !tbaa !637
  br label %_ZSt4copyIPPN4core8vector3dIsEES4_ET0_T_S6_S5_.exit

_ZSt4copyIPPN4core8vector3dIsEES4_ET0_T_S6_S5_.exit: ; preds = %bb.j, %bb.i, %bb.h, %bb.f, %bb.e, %bb.d, %_ZSt4copyIPPN4core8vector3dIsEES4_ET0_T_S6_S5_.exit24
  %.0 = phi ptr [ %i.av, %_ZSt4copyIPPN4core8vector3dIsEES4_ET0_T_S6_S5_.exit24 ], [ %i.t, %bb.f ], [ %i.t, %bb.d ], [ %i.t, %bb.e ], [ %i.t, %bb.h ], [ %i.t, %bb.i ], [ %i.t, %bb.j ] ; 3 uses
  store ptr %.0, ptr %i.c, align 8, !tbaa !626
  %i.bi = load ptr, ptr %.0, align 8, !tbaa !627  ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !628
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 510
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !629
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %i.i
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 -8 ; 2 uses
  store ptr %i.bn, ptr %i.a, align 8, !tbaa !626
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !627 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.bo, ptr %i.bp, align 8, !tbaa !628
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 510
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.bq, ptr %i.br, align 8, !tbaa !629
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #26

declare noundef i32 @_ZNK8Settings6getU32ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(236), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #7

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #7

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(127) ptr @_ZN5video9SMaterialaSERKS0_(ptr noundef nonnull align 8 dereferenceable(127) %0, ptr noundef nonnull align 8 dereferenceable(127) %1) local_unnamed_addr #20 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.split7, label %.split.preheader

.split.preheader:                                 ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !560
  store ptr %i.b, ptr %0, align 8, !tbaa !560
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !642  ; 3 uses
  %.not.i = icmp eq ptr %i.d, null
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !642  ; 2 uses
  %.not19.i = icmp eq ptr %i.f, null              ; 2 uses
  br i1 %.not.i, label %bb.e, label %bb.b

.split7:                                          ; preds = %_ZN5video14SMaterialLayeraSERKS0_.exit.3, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(31) %i.g, ptr noundef nonnull align 8 dereferenceable(31) %i.h, i64 31, i1 false)
  ret ptr %0

bb.b:                                             ; preds = %.split.preheader
  br i1 %.not19.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.d, ptr noundef nonnull align 4 dereferenceable(64) %i.f, i64 64, i1 false), !tbaa.struct !650
  br label %_ZN5video14SMaterialLayeraSERKS0_.exit

bb.d:                                             ; preds = %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 64) #34
  store ptr null, ptr %i.c, align 8, !tbaa !642
  br label %_ZN5video14SMaterialLayeraSERKS0_.exit

bb.e:                                             ; preds = %.split.preheader
  br i1 %.not19.i, label %_ZN5video14SMaterialLayeraSERKS0_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #38 ; 2 uses
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !642
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.i, ptr noundef nonnull align 4 dereferenceable(64) %i.j, i64 64, i1 false), !tbaa.struct !650
  store ptr %i.i, ptr %i.c, align 8, !tbaa !642
  br label %_ZN5video14SMaterialLayeraSERKS0_.exit

_ZN5video14SMaterialLayeraSERKS0_.exit:           ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.l = load i16, ptr %i.k, align 8
  %i.m = and i16 %i.l, 15
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.o = load i16, ptr %i.n, align 8
  %i.p = and i16 %i.o, -16
  %i.q = or disjoint i16 %i.p, %i.m               ; 2 uses
  store i16 %i.q, ptr %i.n, align 8
  %i.r = load i16, ptr %i.k, align 8
  %i.s = and i16 %i.r, 240
  %i.t = and i16 %i.q, -241
  %i.u = or disjoint i16 %i.t, %i.s               ; 2 uses
  store i16 %i.u, ptr %i.n, align 8
  %2 = load i16, ptr %i.k, align 8
  %3 = and i16 %2, 3840
  %i.v = and i16 %i.u, -3841
  %i.w = or disjoint i16 %i.v, %3
  store i16 %i.w, ptr %i.n, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.z = load <4 x i8>, ptr %i.x, align 2, !tbaa !65
  store <4 x i8> %i.z, ptr %i.y, align 2, !tbaa !65
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !560
  store ptr %i.ac, ptr %i.aa, align 8, !tbaa !560
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !642 ; 3 uses
  %.not.i.1 = icmp eq ptr %i.ae, null
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !642 ; 2 uses
  %.not19.i.1 = icmp eq ptr %i.ag, null           ; 2 uses
  br i1 %.not.i.1, label %bb.j, label %bb.g

bb.g:                                             ; preds = %_ZN5video14SMaterialLayeraSERKS0_.exit
  br i1 %.not19.i.1, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.ae, ptr noundef nonnull align 4 dereferenceable(64) %i.ag, i64 64, i1 false), !tbaa.struct !650
  br label %_ZN5video14SMaterialLayeraSERKS0_.exit.1

bb.i:                                             ; preds = %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef 64) #34
  store ptr null, ptr %i.ad, align 8, !tbaa !642
  br label %_ZN5video14SMaterialLayeraSERKS0_.exit.1

bb.j:                                             ; preds = %_ZN5video14SMaterialLayeraSERKS0_.exit
  br i1 %.not19.i.1, label %_ZN5video14SMaterialLayeraSERKS0_.exit.1, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #38 ; 2 uses
  %i.ai = load ptr, ptr %i.af, align 8, !tbaa !642
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.ah, ptr noundef nonnull align 4 dereferenceable(64) %i.ai, i64 64, i1 false), !tbaa.struct !650
  store ptr %i.ah, ptr %i.ad, align 8, !tbaa !642
  br label %_ZN5video14SMaterialLayeraSERKS0_.exit.1

_ZN5video14SMaterialLayeraSERKS0_.exit.1:         ; preds = %bb.k, %bb.j, %bb.i, %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.ak = load i16, ptr %i.aj, align 8
  %i.al = and i16 %i.ak, 15
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.an = load i16, ptr %i.am, align 8
  %i.ao = and i16 %i.an, -16
  %i.ap = or disjoint i16 %i.ao, %i.al            ; 2 uses
  store i16 %i.ap, ptr %i.am, align 8
  %i.aq = load i16, ptr %i.aj, align 8
  %i.ar = and i16 %i.aq, 240
  %i.as = and i16 %i.ap, -241
  %i.at = or disjoint i16 %i.as, %i.ar            ; 2 uses
  store i16 %i.at, ptr %i.am, align 8
  %4 = load i16, ptr %i.aj, align 8
  %5 = and i16 %4, 3840
  %i.au = and i16 %i.at, -3841
  %i.av = or disjoint i16 %i.au, %5
  store i16 %i.av, ptr %i.am, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 34
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 34
  %i.ay = load <4 x i8>, ptr %i.aw, align 2, !tbaa !65
  store <4 x i8> %i.ay, ptr %i.ax, align 2, !tbaa !65
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !560
  store ptr %i.bb, ptr %i.az, align 8, !tbaa !560
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !642 ; 3 uses
  %.not.i.2 = icmp eq ptr %i.bd, null
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !642 ; 2 uses
  %.not19.i.2 = icmp eq ptr %i.bf, null           ; 2 uses
  br i1 %.not.i.2, label %bb.o, label %bb.l

bb.l:                                             ; preds = %_ZN5video14SMaterialLayeraSERKS0_.exit.1
  br i1 %.not19.i.2, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.bd, ptr noundef nonnull align 4 dereferenceable(64) %i.bf, i64 64, i1 false), !tbaa.struct !650
  br label %_ZN5video14SMaterialLayeraSERKS0_.exit.2

bb.n:                                             ; preds = %bb.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bd, i64 noundef 64) #34
  store ptr null, ptr %i.bc, align 8, !tbaa !642
  br label %_ZN5video14SMaterialLayeraSERKS0_.exit.2

bb.o:                                             ; preds = %_ZN5video14SMaterialLayeraSERKS0_.exit.1
  br i1 %.not19.i.2, label %_ZN5video14SMaterialLayeraSERKS0_.exit.2, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bg = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #38 ; 2 uses
  %i.bh = load ptr, ptr %i.be, align 8, !tbaa !642
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.bg, ptr noundef nonnull align 4 dereferenceable(64) %i.bh, i64 64, i1 false), !tbaa.struct !650
  store ptr %i.bg, ptr %i.bc, align 8, !tbaa !642
  br label %_ZN5video14SMaterialLayeraSERKS0_.exit.2

_ZN5video14SMaterialLayeraSERKS0_.exit.2:         ; preds = %bb.p, %bb.o, %bb.n, %bb.m
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.bj = load i16, ptr %i.bi, align 8
  %i.bk = and i16 %i.bj, 15
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.bm = load i16, ptr %i.bl, align 8
  %i.bn = and i16 %i.bm, -16
  %i.bo = or disjoint i16 %i.bn, %i.bk            ; 2 uses
  store i16 %i.bo, ptr %i.bl, align 8
  %i.bp = load i16, ptr %i.bi, align 8
  %i.bq = and i16 %i.bp, 240
  %i.br = and i16 %i.bo, -241
  %i.bs = or disjoint i16 %i.br, %i.bq            ; 2 uses
  store i16 %i.bs, ptr %i.bl, align 8
  %6 = load i16, ptr %i.bi, align 8
  %7 = and i16 %6, 3840
  %i.bt = and i16 %i.bs, -3841
  %i.bu = or disjoint i16 %i.bt, %7
  store i16 %i.bu, ptr %i.bl, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 58
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 58
  %i.bx = load <4 x i8>, ptr %i.bv, align 2, !tbaa !65
  store <4 x i8> %i.bx, ptr %i.bw, align 2, !tbaa !65
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !560
  store ptr %i.ca, ptr %i.by, align 8, !tbaa !560
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !642 ; 3 uses
  %.not.i.3 = icmp eq ptr %i.cc, null
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !642 ; 2 uses
  %.not19.i.3 = icmp eq ptr %i.ce, null           ; 2 uses
  br i1 %.not.i.3, label %bb.t, label %bb.q

bb.q:                                             ; preds = %_ZN5video14SMaterialLayeraSERKS0_.exit.2
  br i1 %.not19.i.3, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.cc, ptr noundef nonnull align 4 dereferenceable(64) %i.ce, i64 64, i1 false), !tbaa.struct !650
  br label %_ZN5video14SMaterialLayeraSERKS0_.exit.3

bb.s:                                             ; preds = %bb.q
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cc, i64 noundef 64) #34
  store ptr null, ptr %i.cb, align 8, !tbaa !642
  br label %_ZN5video14SMaterialLayeraSERKS0_.exit.3

bb.t:                                             ; preds = %_ZN5video14SMaterialLayeraSERKS0_.exit.2
  br i1 %.not19.i.3, label %_ZN5video14SMaterialLayeraSERKS0_.exit.3, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cf = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #38 ; 2 uses
  %i.cg = load ptr, ptr %i.cd, align 8, !tbaa !642
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.cf, ptr noundef nonnull align 4 dereferenceable(64) %i.cg, i64 64, i1 false), !tbaa.struct !650
  store ptr %i.cf, ptr %i.cb, align 8, !tbaa !642
  br label %_ZN5video14SMaterialLayeraSERKS0_.exit.3

_ZN5video14SMaterialLayeraSERKS0_.exit.3:         ; preds = %bb.u, %bb.t, %bb.s, %bb.r
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.ci = load i16, ptr %i.ch, align 8
  %i.cj = and i16 %i.ci, 15
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.cl = load i16, ptr %i.ck, align 8
  %i.cm = and i16 %i.cl, -16
  %i.cn = or disjoint i16 %i.cm, %i.cj            ; 2 uses
  store i16 %i.cn, ptr %i.ck, align 8
  %i.co = load i16, ptr %i.ch, align 8
  %i.cp = and i16 %i.co, 240
  %i.cq = and i16 %i.cn, -241
  %i.cr = or disjoint i16 %i.cq, %i.cp            ; 2 uses
  store i16 %i.cr, ptr %i.ck, align 8
  %8 = load i16, ptr %i.ch, align 8
  %9 = and i16 %8, 3840
  %i.cs = and i16 %i.cr, -3841
  %i.ct = or disjoint i16 %i.cs, %9
  store i16 %i.ct, ptr %i.ck, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 82
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 82
  %i.cw = load <4 x i8>, ptr %i.cu, align 2, !tbaa !65
  store <4 x i8> %i.cw, ptr %i.cv, align 2, !tbaa !65
  br label %.split7
}

; Function Attrs: noreturn
declare void @_Z15sanity_check_fnPKcS0_jS0_(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #25

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEElNS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_SY_S1I_T1_"(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #28 {
bb.a:
  %.sroa.05.i.i9.i = alloca [16 x i8], align 8    ; 4 uses
  %.sroa.06.i.i.i = alloca [16 x i8], align 8     ; 4 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %.fr44.i25 = freeze i64 %i.c                    ; 3 uses
  %i.d = icmp sgt i64 %.fr44.i25, 384
  br i1 %i.d, label %.lr.ph, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_SY_SY_S1I_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.f = getelementptr i8, ptr %0, i64 40         ; 3 uses
  %i.g = getelementptr i8, ptr %0, i64 16         ; 14 uses
  %i.h = icmp eq i64 %2, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph44

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEESY_SY_SY_S1I_.exit"
  %i.i = icmp eq i64 %i.cn, 0
  br i1 %i.i, label %._crit_edge, label %.lr.ph44, !llvm.loop !1007

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.fr44.i28.lcssa = phi i64 [ %.fr44.i25, %.lr.ph ], [ %.fr44.i, %bb.b ]
  %storemerge26.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.012.1.i.i, %bb.b ]
  %i.j = udiv exact i64 %.fr44.i28.lcssa, 24      ; 3 uses
  %i.k = add nsw i64 %i.j, -2                     ; 2 uses
  %i.l = lshr i64 %i.k, 1                         ; 3 uses
  %i.m = add nsw i64 %i.j, -1
  %i.n = lshr i64 %i.m, 1                         ; 2 uses
  %i.o = and i64 %i.j, 1
  %i.p = icmp eq i64 %i.o, 0
  %i.q = or disjoint i64 %i.k, 1                  ; 2 uses
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.l ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  br label %bb.c

bb.c:                                             ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEElS9_NS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_S1I_S1I_T1_T2_.exit.i.i.i", %._crit_edge
  %.08.i.i.i = phi i64 [ %i.l, %._crit_edge ], [ %i.aw, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEElS9_NS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_S1I_S1I_T1_T2_.exit.i.i.i" ] ; 8 uses
  %i.v = getelementptr inbounds [24 x i8], ptr %0, i64 %.08.i.i.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.06.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.06.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.v, i64 16, i1 false)
  %.sroa.49.0..sroa.0.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.sroa.49.0.copyload.i.i.i = load ptr, ptr %.sroa.49.0..sroa.0.0..sroa_idx.i.i.i, align 8 ; 2 uses
  %i.w = icmp slt i64 %.08.i.i.i, %i.n
  br i1 %i.w, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.037.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.08.i.i.i, %bb.c ] ; 2 uses
  %i.x = shl i64 %.037.i.i.i.i, 1                 ; 2 uses
  %i.y = add i64 %i.x, 2                          ; 2 uses
  %i.z = getelementptr inbounds [24 x i8], ptr %0, i64 %i.y
  %i.aa = or disjoint i64 %i.x, 1                 ; 2 uses
  %i.ab = getelementptr inbounds [24 x i8], ptr %0, i64 %i.aa
  %i.ac = getelementptr i8, ptr %i.z, i64 16
  %.val.i.i.i.i.i = load ptr, ptr %i.ac, align 8, !tbaa !500
  %i.ad = getelementptr i8, ptr %i.ab, i64 16
  %.val1.i.i.i.i.i = load ptr, ptr %i.ad, align 8, !tbaa !500
  %i.ae = icmp ult ptr %.val.i.i.i.i.i, %.val1.i.i.i.i.i
  %spec.select.i.i.i.i = select i1 %i.ae, i64 %i.aa, i64 %i.y ; 4 uses
  %i.af = getelementptr inbounds [24 x i8], ptr %0, i64 %spec.select.i.i.i.i ; 2 uses
  %i.ag = getelementptr inbounds [24 x i8], ptr %0, i64 %.037.i.i.i.i ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 12, i1 false), !tbaa.struct !501
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !56
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !500
  %i.ak = icmp slt i64 %spec.select.i.i.i.i, %i.n
  br i1 %i.ak, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !1008

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i = phi i64 [ %.08.i.i.i, %bb.c ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.al = icmp eq i64 %.0.lcssa.i.i.i.i, %i.l
  %or.cond.i.i.i = select i1 %i.p, i1 %i.al, i1 false
  br i1 %or.cond.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 12, i1 false), !tbaa.struct !501
  %i.am = load ptr, ptr %i.t, align 8, !tbaa !56
  store ptr %i.am, ptr %i.u, align 8, !tbaa !500
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi i64 [ %i.q, %bb.d ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.an = icmp sgt i64 %.1.i.i.i.i, %.08.i.i.i
  br i1 %i.an, label %.lr.ph.i.i.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEElS9_NS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_S1I_S1I_T1_T2_.exit.i.i.i"

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %bb.f
  %.010.i.i.i.i.i = phi i64 [ %.0911.i.i.i.i.i, %bb.f ], [ %.1.i.i.i.i, %bb.e ] ; 3 uses
  %.0911.in.i.i.i.i.i = add nsw i64 %.010.i.i.i.i.i, -1
  %.0911.i.i.i.i.i = sdiv i64 %.0911.in.i.i.i.i.i, 2 ; 4 uses
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.0911.i.i.i.i.i ; 2 uses
  %i.ap = getelementptr i8, ptr %i.ao, i64 16
  %.val.i.i.i.i.i.i = load ptr, ptr %i.ap, align 8, !tbaa !500 ; 2 uses
  %i.aq = icmp ult ptr %.val.i.i.i.i.i.i, %.sroa.49.0.copyload.i.i.i
  br i1 %i.aq, label %bb.f, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEElS9_NS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_S1I_S1I_T1_T2_.exit.i.i.i"

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ar = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.010.i.i.i.i.i ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i64 12, i1 false), !tbaa.struct !501
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store ptr %.val.i.i.i.i.i.i, ptr %i.as, align 8, !tbaa !500
  %i.at = icmp sgt i64 %.0911.i.i.i.i.i, %.08.i.i.i
  br i1 %i.at, label %.lr.ph.i.i.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEElS9_NS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_S1I_S1I_T1_T2_.exit.i.i.i", !llvm.loop !1009

"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEElS9_NS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_S1I_S1I_T1_T2_.exit.i.i.i": ; preds = %bb.f, %.lr.ph.i.i.i.i.i, %bb.e
  %.0.lcssa.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %bb.e ], [ %.010.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i, %bb.f ]
  %i.au = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.au, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.06.i.i.i, i64 12, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store ptr %.sroa.49.0.copyload.i.i.i, ptr %i.av, align 8, !tbaa !500
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.06.i.i.i)
  %.not.i.i.i = icmp eq i64 %.08.i.i.i, 0
  %i.aw = add nsw i64 %.08.i.i.i, -1
  br i1 %.not.i.i.i, label %.lr.ph.i10.i, label %bb.c, !llvm.loop !1010

.lr.ph.i10.i:                                     ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEElS9_NS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_S1I_S1I_T1_T2_.exit.i.i.i", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_SY_SY_RS1I_.exit.i21.i"
  %.sroa.0.03.i.i = phi ptr [ %i.ax, %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_SY_SY_RS1I_.exit.i21.i" ], [ %storemerge26.lcssa, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEElS9_NS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_S1I_S1I_T1_T2_.exit.i.i.i" ] ; 2 uses
  %i.ax = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.05.i.i9.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.05.i.i9.i, ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i64 16, i1 false)
  %.sroa.48.0..sroa.0.0..sroa_idx.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -8 ; 2 uses
  %.sroa.48.0.copyload.i.i.i = load ptr, ptr %.sroa.48.0..sroa.0.0..sroa_idx.i.i.i, align 8 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 12, i1 false), !tbaa.struct !501
  %i.ay = load ptr, ptr %i.g, align 8, !tbaa !56
  store ptr %i.ay, ptr %.sroa.48.0..sroa.0.0..sroa_idx.i.i.i, align 8, !tbaa !500
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = sub i64 %i.az, %i.a                     ; 3 uses
  %i.bb = sdiv exact i64 %i.ba, 24                ; 3 uses
  %i.bc = add nsw i64 %i.bb, -1
  %i.bd = sdiv i64 %i.bc, 2
  %i.be = icmp sgt i64 %i.ba, 48
  br i1 %i.be, label %.lr.ph.i.i.i25.i, label %._crit_edge.i.i.i11.i

.lr.ph.i.i.i25.i:                                 ; preds = %.lr.ph.i10.i, %.lr.ph.i.i.i25.i
  %.037.i.i.i26.i = phi i64 [ %spec.select.i.i.i29.i, %.lr.ph.i.i.i25.i ], [ 0, %.lr.ph.i10.i ] ; 2 uses
  %i.bf = shl i64 %.037.i.i.i26.i, 1              ; 2 uses
  %i.bg = add i64 %i.bf, 2                        ; 2 uses
  %i.bh = getelementptr inbounds [24 x i8], ptr %0, i64 %i.bg
  %i.bi = or disjoint i64 %i.bf, 1                ; 2 uses
  %i.bj = getelementptr inbounds [24 x i8], ptr %0, i64 %i.bi
  %i.bk = getelementptr i8, ptr %i.bh, i64 16
  %.val.i.i.i.i27.i = load ptr, ptr %i.bk, align 8, !tbaa !500
  %i.bl = getelementptr i8, ptr %i.bj, i64 16
  %.val1.i.i.i.i28.i = load ptr, ptr %i.bl, align 8, !tbaa !500
  %i.bm = icmp ult ptr %.val.i.i.i.i27.i, %.val1.i.i.i.i28.i
  %spec.select.i.i.i29.i = select i1 %i.bm, i64 %i.bi, i64 %i.bg ; 4 uses
  %i.bn = getelementptr inbounds [24 x i8], ptr %0, i64 %spec.select.i.i.i29.i ; 2 uses
  %i.bo = getelementptr inbounds [24 x i8], ptr %0, i64 %.037.i.i.i26.i ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bo, ptr noundef nonnull align 8 dereferenceable(24) %i.bn, i64 12, i1 false), !tbaa.struct !501
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !56
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  store ptr %i.bq, ptr %i.br, align 8, !tbaa !500
  %i.bs = icmp slt i64 %spec.select.i.i.i29.i, %i.bd
  br i1 %i.bs, label %.lr.ph.i.i.i25.i, label %._crit_edge.i.i.i11.i, !llvm.loop !1008

._crit_edge.i.i.i11.i:                            ; preds = %.lr.ph.i.i.i25.i, %.lr.ph.i10.i
  %.0.lcssa.i.i.i12.i = phi i64 [ 0, %.lr.ph.i10.i ], [ %spec.select.i.i.i29.i, %.lr.ph.i.i.i25.i ] ; 5 uses
  %i.bt = and i64 %i.bb, 1
  %i.bu = icmp eq i64 %i.bt, 0
  br i1 %i.bu, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i11.i
  %i.bv = add nsw i64 %i.bb, -2
  %i.bw = ashr exact i64 %i.bv, 1
  %i.bx = icmp eq i64 %.0.lcssa.i.i.i12.i, %i.bw
  br i1 %i.bx, label %.thread.i.i24.i, label %bb.h

.thread.i.i24.i:                                  ; preds = %bb.g
  %i.by = shl nuw nsw i64 %.0.lcssa.i.i.i12.i, 1
  %i.bz = or disjoint i64 %i.by, 1                ; 2 uses
  %i.ca = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.bz ; 2 uses
  %i.cb = getelementptr inbounds [24 x i8], ptr %0, i64 %.0.lcssa.i.i.i12.i ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cb, ptr noundef nonnull align 8 dereferenceable(24) %i.ca, i64 12, i1 false), !tbaa.struct !501
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !56
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  store ptr %i.cd, ptr %i.ce, align 8, !tbaa !500
  br label %.lr.ph.i.i.i.i16.i.preheader

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i11.i
  %.not.i.i13.i = icmp eq i64 %.0.lcssa.i.i.i12.i, 0
  br i1 %.not.i.i13.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_SY_SY_RS1I_.exit.i21.i", label %.lr.ph.i.i.i.i16.i.preheader

.lr.ph.i.i.i.i16.i.preheader:                     ; preds = %bb.h, %.thread.i.i24.i
end_hunk_1
