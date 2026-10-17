Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/serverenvironment?download=true
inline.NumInlined: 4733
inline.NumDeleted: 2070
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN17ServerEnvironment12clearObjectsE16ClearObjectsMode:bb.a

bb.eh:                                            ; preds = %bb.eg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.rn = load ptr, ptr %i.rm, align 8, !tbaa !309 ; 5 uses
  %.not.i204 = icmp eq ptr %i.rn, null
  br i1 %.not.i204, label %_ZN11StreamProxylsIRjEERS_OT_.exit208, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.ro = load ptr, ptr %i.rn, align 8, !tbaa !162
  %i.rp = getelementptr i8, ptr %i.ro, i64 -24
  %i.rq = load i64, ptr %i.rp, align 8
  %i.rr = getelementptr inbounds i8, ptr %i.rn, i64 %i.rq
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rr, i64 32
  %i.rt = load i32, ptr %i.rs, align 8, !tbaa !316
  %i.ru = icmp eq i32 %i.rt, 0
  br i1 %i.ru, label %bb.ek, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.rn)
          to label %.noexc206 unwind label %bb.dy

.noexc206:                                        ; preds = %bb.ej
  %.pre.i205 = load ptr, ptr %i.rm, align 8, !tbaa !309
  br label %bb.ek

bb.ek:                                            ; preds = %.noexc206, %bb.ei
  %i.rv = phi ptr [ %.pre.i205, %.noexc206 ], [ %i.rn, %bb.ei ]
  %i.rw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.rv, i64 noundef %.0331.lcssa)
          to label %_ZN11StreamProxylsIRjEERS_OT_.exit208 unwind label %bb.dy ; 0 uses

_ZN11StreamProxylsIRjEERS_OT_.exit208:            ; preds = %bb.eh, %bb.ek
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @.str.62, ptr %i.a, align 8, !tbaa !308
  %i.rx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.rm, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.el unwind label %bb.dy     ; 2 uses

bb.el:                                            ; preds = %_ZN11StreamProxylsIRjEERS_OT_.exit208
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ry = load ptr, ptr %i.rx, align 8, !tbaa !309 ; 5 uses
  %.not.i211 = icmp eq ptr %i.ry, null
  br i1 %.not.i211, label %_ZN11StreamProxylsEPFRSoS0_E.exit215, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.rz = load ptr, ptr %i.ry, align 8, !tbaa !162
  %i.sa = getelementptr i8, ptr %i.rz, i64 -24
  %i.sb = load i64, ptr %i.sa, align 8            ; 2 uses
  %i.sc = getelementptr inbounds i8, ptr %i.ry, i64 %i.sb
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sc, i64 32
  %i.se = load i32, ptr %i.sd, align 8, !tbaa !316
  %i.sf = icmp eq i32 %i.se, 0
  br i1 %i.sf, label %bb.eo, label %bb.en

bb.en:                                            ; preds = %bb.em
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.ry)
          to label %.noexc213 unwind label %bb.dy

.noexc213:                                        ; preds = %bb.en
  %.pre.i212 = load ptr, ptr %i.rx, align 8, !tbaa !309 ; 2 uses
  %.pre393 = load ptr, ptr %.pre.i212, align 8, !tbaa !162
  %.phi.trans.insert394 = getelementptr i8, ptr %.pre393, i64 -24
  %.pre395 = load i64, ptr %.phi.trans.insert394, align 8
  br label %bb.eo

bb.eo:                                            ; preds = %.noexc213, %bb.em
  %i.sg = phi i64 [ %.pre395, %.noexc213 ], [ %i.sb, %bb.em ]
  %i.sh = phi ptr [ %.pre.i212, %.noexc213 ], [ %i.ry, %bb.em ] ; 2 uses
  %i.si = getelementptr inbounds i8, ptr %i.sh, i64 %i.sg
  %i.sj = getelementptr inbounds nuw i8, ptr %i.si, i64 240
  %i.sk = load ptr, ptr %i.sj, align 8, !tbaa !322 ; 6 uses
  %.not.i.i.i299 = icmp eq ptr %i.sk, null
  br i1 %.not.i.i.i299, label %bb.ep, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i300

bb.ep:                                            ; preds = %bb.eo
  invoke void @_ZSt16__throw_bad_castv() #36
          to label %.noexc304 unwind label %bb.dy

.noexc304:                                        ; preds = %bb.ep
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i300: ; preds = %bb.eo
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sk, i64 56
  %i.sm = load i8, ptr %i.sl, align 8, !tbaa !328
  %.not.i1.i.i301 = icmp eq i8 %i.sm, 0
  br i1 %.not.i1.i.i301, label %bb.er, label %bb.eq

bb.eq:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i300
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sk, i64 67
  %i.so = load i8, ptr %i.sn, align 1, !tbaa !262
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i302

bb.er:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i300
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.sk)
          to label %.noexc305 unwind label %bb.dy

.noexc305:                                        ; preds = %bb.er
  %i.sp = load ptr, ptr %i.sk, align 8, !tbaa !162
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sp, i64 48
  %i.sr = load ptr, ptr %i.sq, align 8
  %i.ss = invoke noundef signext i8 %i.sr(ptr noundef nonnull align 8 dereferenceable(570) %i.sk, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i302 unwind label %bb.dy, !inline_history !10

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i302: ; preds = %.noexc305, %bb.eq
  %.0.i.i.i303 = phi i8 [ %i.so, %bb.eq ], [ %i.ss, %.noexc305 ]
  %i.st = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.sh, i8 noundef signext %.0.i.i.i303)
          to label %.noexc307 unwind label %bb.dy

.noexc307:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i302
  %i.su = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.st)
          to label %_ZN11StreamProxylsEPFRSoS0_E.exit215 unwind label %bb.dy ; 0 uses

_ZN11StreamProxylsEPFRSoS0_E.exit215:             ; preds = %bb.el, %.noexc307
  %i.sv = load ptr, ptr %4, align 8, !tbaa !473   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.sv, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EED2Ev.exit, label %bb.es

bb.es:                                            ; preds = %_ZN11StreamProxylsEPFRSoS0_E.exit215
  %i.sw = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.sx = load ptr, ptr %i.sw, align 8, !tbaa !474
  %i.sy = ptrtoint ptr %i.sx to i64
  %i.sz = ptrtoint ptr %i.sv to i64
  %i.ta = sub i64 %i.sy, %i.sz
  call void @_ZdlPvm(ptr noundef nonnull %i.sv, i64 noundef %i.ta) #37
  br label %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EED2Ev.exit

_ZNSt6vectorIN4core8vector3dIsEESaIS2_EED2Ev.exit: ; preds = %_ZN11StreamProxylsEPFRSoS0_E.exit215, %bb.es
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  %i.tb = load ptr, ptr %3, align 8, !tbaa !473   ; 3 uses
  %.not.i.i.i216 = icmp eq ptr %i.tb, null
  br i1 %.not.i.i.i216, label %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EED2Ev.exit217, label %bb.et

bb.et:                                            ; preds = %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EED2Ev.exit
  %i.tc = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.td = load ptr, ptr %i.tc, align 8, !tbaa !474
  %i.te = ptrtoint ptr %i.td to i64
  %i.tf = ptrtoint ptr %i.tb to i64
  %i.tg = sub i64 %i.te, %i.tf
  call void @_ZdlPvm(ptr noundef nonnull %i.tb, i64 noundef %i.tg) #37
  br label %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EED2Ev.exit217

_ZNSt6vectorIN4core8vector3dIsEESaIS2_EED2Ev.exit217: ; preds = %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EED2Ev.exit, %bb.et
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  ret void

bb.eu:                                            ; preds = %bb.dv, %bb.dy, %bb.ea, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140, %bb.cb, %bb.bz, %bb.bk, %bb.bj
  %.pn52 = phi { ptr, i32 } [ %i.kf, %bb.cb ], [ %i.hx, %bb.bk ], [ %i.jy, %bb.bz ], [ %i.hw, %bb.bj ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140 ], [ %.pn47.pn, %bb.dv ], [ %i.qz, %bb.ea ], [ %i.qs, %bb.dy ]
  %i.th = load ptr, ptr %4, align 8, !tbaa !473   ; 3 uses
  %.not.i.i.i218 = icmp eq ptr %i.th, null
  br i1 %.not.i.i.i218, label %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EED2Ev.exit219, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.ti = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.tj = load ptr, ptr %i.ti, align 8, !tbaa !474
  %i.tk = ptrtoint ptr %i.tj to i64
  %i.tl = ptrtoint ptr %i.th to i64
  %i.tm = sub i64 %i.tk, %i.tl
  call void @_ZdlPvm(ptr noundef nonnull %i.th, i64 noundef %i.tm) #37
  br label %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EED2Ev.exit219

_ZNSt6vectorIN4core8vector3dIsEESaIS2_EED2Ev.exit219: ; preds = %bb.eu, %bb.ev
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br label %bb.ew

bb.ew:                                            ; preds = %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EED2Ev.exit219, %bb.bi, %bb.bh
  %.pn52.pn = phi { ptr, i32 } [ %.pn52, %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EED2Ev.exit219 ], [ %i.hv, %bb.bi ], [ %i.hu, %bb.bh ]
  %i.tn = load ptr, ptr %3, align 8, !tbaa !473   ; 3 uses
  %.not.i.i.i220 = icmp eq ptr %i.tn, null
  br i1 %.not.i.i.i220, label %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EED2Ev.exit221, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.to = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.tp = load ptr, ptr %i.to, align 8, !tbaa !474
  %i.tq = ptrtoint ptr %i.tp to i64
  %i.tr = ptrtoint ptr %i.tn to i64
  %i.ts = sub i64 %i.tq, %i.tr
  call void @_ZdlPvm(ptr noundef nonnull %i.tn, i64 noundef %i.ts) #37
  br label %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EED2Ev.exit221

_ZNSt6vectorIN4core8vector3dIsEESaIS2_EED2Ev.exit221: ; preds = %bb.ew, %bb.ex
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br label %bb.ey

bb.ey:                                            ; preds = %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EED2Ev.exit221, %_ZNSt14_Function_baseD2Ev.exit117
  %.pn52.pn.pn = phi { ptr, i32 } [ %.pn52.pn, %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EED2Ev.exit221 ], [ %i.hp, %_ZNSt14_Function_baseD2Ev.exit117 ]
  resume { ptr, i32 } %.pn52.pn.pn
}

declare void @_ZN6server15ActiveObjectMgr7clearIfERKSt8functionIFbP18ServerActiveObjecttEE(ptr noundef nonnull align 8 dereferenceable(216), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

declare void @_ZN9ServerMap19listAllLoadedBlocksERSt6vectorIN4core8vector3dIsEESaIS3_EE(ptr noundef nonnull align 8 dereferenceable(608), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

declare void @_ZN9ServerMap21listAllLoadableBlocksERSt6vectorIN4core8vector3dIsEESaIS3_EE(ptr noundef nonnull align 8 dereferenceable(608), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN4core8vector3dIsEESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !472
  %i.c = load ptr, ptr %1, align 8, !tbaa !473    ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !474
  %i.i = load ptr, ptr %0, align 8, !tbaa !473    ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.n = sdiv exact i64 %i.f, 6
  %i.o = icmp ugt i64 %i.n, 1537228672809129301
  br i1 %i.o, label %bb.d, label %.lr.ph.i.i.i.i.preheader.i, !prof !274

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #36
  unreachable

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %bb.c
  %2 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #34 ; 3 uses
  %i.p = add i64 %i.d, -6
  %i.q = sub i64 %i.p, %i.e
  %.fr.i = freeze i64 %i.q                        ; 2 uses
  %i.r = urem i64 %.fr.i, 6
  %i.s = add i64 %.fr.i, 6
  %i.t = sub i64 %i.s, %i.r
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %2, ptr align 2 %i.c, i64 %i.t, i1 false)
  %3 = load ptr, ptr %0, align 8, !tbaa !473      ; 3 uses
  %.not.i = icmp eq ptr %3, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN4core8vector3dIsEESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.preheader.i
  %i.u = load ptr, ptr %i.g, align 8, !tbaa !474
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %3 to i64
  %i.x = sub i64 %i.v, %i.w
  tail call void @_ZdlPvm(ptr noundef nonnull %3, i64 noundef %i.x) #37
  br label %_ZNSt12_Vector_baseIN4core8vector3dIsEESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN4core8vector3dIsEESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %.lr.ph.i.i.i.i.preheader.i, %bb.e
  store ptr %2, ptr %0, align 8, !tbaa !473
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 %i.f
  store ptr %i.y, ptr %i.g, align 8, !tbaa !474
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4core8vector3dIsEESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

bb.f:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !472
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = sub i64 %i.ab, %i.k                     ; 4 uses
  %.not24 = icmp ult i64 %i.ac, %i.f
  br i1 %.not24, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = icmp sgt i64 %i.f, 6
  br i1 %i.ad, label %bb.h, label %bb.i, !prof !370

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %i.i, ptr align 2 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4core8vector3dIsEESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

bb.i:                                             ; preds = %bb.g
  %i.ae = icmp eq i64 %i.f, 6
  br i1 %i.ae, label %bb.j, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4core8vector3dIsEESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.i, ptr noundef nonnull align 2 dereferenceable(6) %i.c, i64 6, i1 false), !tbaa.struct !157
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4core8vector3dIsEESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

bb.k:                                             ; preds = %bb.f
  %i.af = icmp sgt i64 %i.ac, 6
  br i1 %i.af, label %bb.l, label %bb.m, !prof !370

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %i.i, ptr align 2 %i.c, i64 %i.ac, i1 false)
  br label %_ZSt4copyIPN4core8vector3dIsEES3_ET0_T_S5_S4_.exit

bb.m:                                             ; preds = %bb.k
  %i.ag = icmp eq i64 %i.ac, 6
  br i1 %i.ag, label %bb.n, label %_ZSt4copyIPN4core8vector3dIsEES3_ET0_T_S5_S4_.exit

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.i, ptr noundef nonnull align 2 dereferenceable(6) %i.c, i64 6, i1 false), !tbaa.struct !157
  br label %_ZSt4copyIPN4core8vector3dIsEES3_ET0_T_S5_S4_.exit

_ZSt4copyIPN4core8vector3dIsEES3_ET0_T_S5_S4_.exit: ; preds = %bb.l, %bb.m, %bb.n
  %i.ah = load ptr, ptr %1, align 8, !tbaa !473
  %i.ai = load ptr, ptr %i.z, align 8, !tbaa !472 ; 2 uses
  %i.aj = load ptr, ptr %0, align 8, !tbaa !473
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.am ; 2 uses
  %i.ao = load ptr, ptr %i.a, align 8, !tbaa !472 ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.an, %i.ao
  br i1 %.not9.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4core8vector3dIsEESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4copyIPN4core8vector3dIsEES3_ET0_T_S5_S4_.exit, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i ], [ %i.ai, %_ZSt4copyIPN4core8vector3dIsEES3_ET0_T_S5_S4_.exit ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i ], [ %i.an, %_ZSt4copyIPN4core8vector3dIsEES3_ET0_T_S5_S4_.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.011.i.i.i.i, ptr noundef nonnull align 2 dereferenceable(6) %.0810.i.i.i.i, i64 6, i1 false), !tbaa.struct !157
  %i.ap = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 6 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 6
  %.not.i.i.i.i = icmp eq ptr %i.ap, %i.ao
  br i1 %.not.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4core8vector3dIsEESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !782

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4core8vector3dIsEESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit: ; preds = %.lr.ph.i.i.i.i, %_ZSt4copyIPN4core8vector3dIsEES3_ET0_T_S5_S4_.exit, %bb.j, %bb.i, %bb.h, %_ZNSt12_Vector_baseIN4core8vector3dIsEESaIS2_EE13_M_deallocateEPS2_m.exit
  %i.ar = load ptr, ptr %0, align 8, !tbaa !473
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.f
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.as, ptr %i.at, align 8, !tbaa !472
  br label %bb.o

bb.o:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4core8vector3dIsEESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit, %bb.a
  ret ptr %0
}

declare noundef ptr @_ZN3Map20getBlockNoCreateNoExEN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(144), i48) local_unnamed_addr #4

declare noundef i32 @_ZNK8Settings6getS32ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(236), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxylsIRN4core8vector3dIsEEEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 2 dereferenceable(6) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !309    ; 5 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !162
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %i.a, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load i32, ptr %i.f, align 8, !tbaa !316
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.pre = load ptr, ptr %0, align 8, !tbaa !309
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = phi ptr [ %.pre, %bb.c ], [ %i.a, %bb.b ] ; 2 uses
  %.sroa.0.0.copyload = load i48, ptr %1, align 2, !tbaa !74 ; 3 uses
  %.sroa.0.0.extract.trunc.i = trunc i48 %.sroa.0.0.copyload to i16
  %.sroa.2.0.extract.shift.i = lshr i48 %.sroa.0.0.copyload, 16
  %.sroa.2.0.extract.trunc.i = trunc i48 %.sroa.2.0.extract.shift.i to i16
  %.sroa.3.0.extract.shift.i = lshr i48 %.sroa.0.0.copyload, 32
  %.sroa.3.0.extract.trunc.i = trunc nuw i48 %.sroa.3.0.extract.shift.i to i16
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull @.str.155, i64 noundef 1) ; 0 uses
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEs(ptr noundef nonnull align 8 dereferenceable(8) %i.i, i16 noundef signext %.sroa.0.0.extract.trunc.i) ; 2 uses
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull @.str.156, i64 noundef 1) ; 0 uses
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEs(ptr noundef nonnull align 8 dereferenceable(8) %i.k, i16 noundef signext %.sroa.2.0.extract.trunc.i) ; 2 uses
  %i.n = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull @.str.156, i64 noundef 1) ; 0 uses
  %i.o = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEs(ptr noundef nonnull align 8 dereferenceable(8) %i.m, i16 noundef signext %.sroa.3.0.extract.trunc.i)
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull @.str.157, i64 noundef 1) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  ret ptr %0
}

declare noundef i32 @_ZN8MapBlock12clearObjectsEv(ptr noundef nonnull align 8 dereferenceable(328)) local_unnamed_addr #4

declare void @_ZN3Map24unloadUnreferencedBlocksEPSt6vectorIN4core8vector3dIsEESaIS3_EE(ptr noundef nonnull align 8 dereferenceable(144), ptr noundef) local_unnamed_addr #4

; Function Attrs: uwtable
define dso_local void @_ZN17ServerEnvironment4stepEf(ptr noundef nonnull align 8 dereferenceable(3560) %0, float noundef %1) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %2 = alloca %struct.timespec, align 8           ; 5 uses
  %3 = alloca %"struct.std::__detail::_Prime_rehash_policy", align 8 ; 4 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca ptr, align 8                      ; 4 uses
  %i.g = alloca ptr, align 8                      ; 4 uses
  %i.h = alloca ptr, align 8                      ; 4 uses
  %i.i = alloca ptr, align 8                      ; 4 uses
  %i.j = alloca i64, align 8                      ; 5 uses
  %i.k = alloca i64, align 8                      ; 5 uses
  %i.l = alloca i64, align 8                      ; 5 uses
  %4 = alloca %"class.core::vector3d", align 8    ; 5 uses
  %5 = alloca %"class.core::vector3d", align 8    ; 5 uses
  %6 = alloca %"class.std::function.683", align 8 ; 12 uses
  %i.m = alloca i64, align 8                      ; 5 uses
  %7 = alloca %struct.timespec, align 8           ; 5 uses
  %i.n = alloca i64, align 8                      ; 5 uses
  %i.o = alloca float, align 4                    ; 10 uses
  %8 = alloca %class.ScopeProfiler, align 8       ; 8 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"class.std::allocator.67", align 1 ; 4 uses
  %12 = alloca %class.ScopeProfiler, align 8      ; 8 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %14 = alloca %"class.std::vector", align 8      ; 12 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %16 = alloca %"class.std::allocator.67", align 1 ; 4 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %18 = alloca %"class.std::allocator.67", align 1 ; 4 uses
  %19 = alloca %"class.std::set", align 8         ; 11 uses
  %20 = alloca %"class.std::set", align 8         ; 11 uses
  %21 = alloca %"class.std::set", align 8         ; 11 uses
  %22 = alloca %class.ScopeProfiler, align 8      ; 8 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %24 = alloca %"class.std::function.599", align 8 ; 11 uses
  %25 = alloca %class.ScopeProfiler, align 8      ; 8 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %27 = alloca %class.TimeTaker, align 8          ; 17 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %29 = alloca %struct.MyRandGenerator, align 1   ; 4 uses
  %30 = alloca %class.ABMHandler, align 8         ; 7 uses
  %i.p = alloca i32, align 4                      ; 6 uses
  %i.q = alloca i32, align 4                      ; 6 uses
  %i.r = alloca i32, align 4                      ; 6 uses
  %31 = alloca %struct.MyRandGenerator, align 1   ; 4 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %33 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %34 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %35 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %36 = alloca %class.ScopeProfiler, align 8      ; 8 uses
  %37 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.s = alloca i8, align 1                       ; 6 uses
  %i.t = alloca i32, align 4                      ; 6 uses
  %38 = alloca %"class.std::function.704", align 8 ; 14 uses
  %39 = alloca %"class.std::unordered_set.147", align 8 ; 15 uses
  store float %1, ptr %i.o, align 4, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32
  %i.u = load ptr, ptr @g_profiler, align 8, !tbaa !476
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  store ptr %i.v, ptr %9, align 8, !tbaa !259
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #32
  store i64 17, ptr %i.n, align 8, !tbaa !260
  %i.w = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.n, i64 noundef 0)
          to label %.noexc unwind label %bb.j     ; 2 uses

end_hunk_0
