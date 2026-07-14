inline.NumInlined: 2184
inline.NumDeleted: 621
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 275
loop-unroll.NumUnrolled: 294
begin_hunk_0_@_ZN5arrow8internal7ToCharsIlJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_DpOT0_:bb.a
bb.ab:                                            ; preds = %bb.z
  %i.cl = udiv i64 %.02229.i.i.i29, 10000
  %i.cm = add i32 %.02328.i.i.i30, 4              ; 2 uses
  %i.cn = icmp ult i64 %.02229.i.i.i29, 100000
  br i1 %i.cn, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i31, label %.lr.ph.i.i.i28, !llvm.loop !1450

_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i31: ; preds = %bb.ab, %bb.aa, %bb.y, %bb.w, %bb.v
  %.0.i.i.i32 = phi i32 [ %i.ck, %bb.aa ], [ %i.cg, %bb.w ], [ %i.ci, %bb.y ], [ 1, %bb.v ], [ %i.cm, %bb.ab ] ; 2 uses
  %i.co = ptrtoint ptr %i.cb to i64
  %i.cp = ptrtoint ptr %.026.i26 to i64
  %i.cq = sub i64 %i.co, %i.cp
  %i.cr = zext i32 %.0.i.i.i32 to i64             ; 2 uses
  %i.cs = icmp slt i64 %i.cq, %i.cr
  br i1 %i.cs, label %_ZSt12__to_chars_iIlENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yEEES2_IS4_nES2_IS4_oES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i.exit45.backedge, label %bb.ac, !prof !206

bb.ac:                                            ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i31
  %i.ct = icmp ugt i64 %.0.i27, 99
  br i1 %i.ct, label %.lr.ph.preheader.i.i.i41, label %._crit_edge.i.i.i33

.lr.ph.preheader.i.i.i41:                         ; preds = %bb.ac
  %i.cu = add i32 %.0.i.i.i32, -1
  br label %.lr.ph.i9.i.i42

.lr.ph.i9.i.i42:                                  ; preds = %.lr.ph.i9.i.i42, %.lr.ph.preheader.i.i.i41
  %.020.i.i.i43 = phi i64 [ %i.cx, %.lr.ph.i9.i.i42 ], [ %.0.i27, %.lr.ph.preheader.i.i.i41 ] ; 3 uses
  %.01819.i.i.i44 = phi i32 [ %i.dh, %.lr.ph.i9.i.i42 ], [ %i.cu, %.lr.ph.preheader.i.i.i41 ] ; 3 uses
  %i.cv = urem i64 %.020.i.i.i43, 100
  %i.cw = shl nuw nsw i64 %i.cv, 1
  %i.cx = udiv i64 %.020.i.i.i43, 100             ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.cw ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 1
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !7
  %i.db = zext i32 %.01819.i.i.i44 to i64
  %i.dc = getelementptr inbounds nuw i8, ptr %.026.i26, i64 %i.db
  store i8 %i.da, ptr %i.dc, align 1, !tbaa !7
  %i.dd = load i8, ptr %i.cy, align 2, !tbaa !7
  %i.de = add i32 %.01819.i.i.i44, -1
  %i.df = zext i32 %i.de to i64
  %i.dg = getelementptr inbounds nuw i8, ptr %.026.i26, i64 %i.df
  store i8 %i.dd, ptr %i.dg, align 1, !tbaa !7
  %i.dh = add i32 %.01819.i.i.i44, -2
  %i.di = icmp ugt i64 %.020.i.i.i43, 9999
  br i1 %i.di, label %.lr.ph.i9.i.i42, label %._crit_edge.i.i.i33, !llvm.loop !1451

._crit_edge.i.i.i33:                              ; preds = %.lr.ph.i9.i.i42, %bb.ac
  %.0.lcssa.i.i.i34 = phi i64 [ %.0.i27, %bb.ac ], [ %i.cx, %.lr.ph.i9.i.i42 ] ; 3 uses
  %i.dj = icmp samesign ugt i64 %.0.lcssa.i.i.i34, 9
  br i1 %i.dj, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %._crit_edge.i.i.i33
  %i.dk = shl nuw nsw i64 %.0.lcssa.i.i.i34, 1
  %i.dl = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.dk ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 1
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !7
  %i.do = getelementptr inbounds nuw i8, ptr %.026.i26, i64 1
  store i8 %i.dn, ptr %i.do, align 1, !tbaa !7
  %i.dp = load i8, ptr %i.dl, align 2, !tbaa !7
  br label %_ZNSt8__detail18__to_chars_10_implImEEvPcjT_.exit.i.i35

bb.ae:                                            ; preds = %._crit_edge.i.i.i33
  %i.dq = trunc nuw nsw i64 %.0.lcssa.i.i.i34 to i8
  %i.dr = or disjoint i8 %i.dq, 48
  br label %_ZNSt8__detail18__to_chars_10_implImEEvPcjT_.exit.i.i35

_ZNSt8__detail18__to_chars_10_implImEEvPcjT_.exit.i.i35: ; preds = %bb.ae, %bb.ad
  %storemerge.i.i.i36 = phi i8 [ %i.dr, %bb.ae ], [ %i.dp, %bb.ad ]
  store i8 %storemerge.i.i.i36, ptr %.026.i26, align 1, !tbaa !7
  %i.ds = getelementptr inbounds nuw i8, ptr %.026.i26, i64 %i.cr
  br label %._crit_edge

.loopexit:                                        ; preds = %bb.p
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

.loopexit.split-lp:                               ; preds = %bb.o
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

._crit_edge:                                      ; preds = %bb.b, %_ZNSt8__detail18__to_chars_10_implImEEvPcjT_.exit.i.i, %_ZNSt8__detail18__to_chars_10_implImEEvPcjT_.exit.i.i35
  %.pn68.i.pn.lcssa = phi ptr [ %i.ds, %_ZNSt8__detail18__to_chars_10_implImEEvPcjT_.exit.i.i35 ], [ %i.ax, %_ZNSt8__detail18__to_chars_10_implImEEvPcjT_.exit.i.i ], [ %i.f, %bb.b ]
  %i.dt = load ptr, ptr %0, align 8, !tbaa !307   ; 3 uses
  %i.du = ptrtoint ptr %.pn68.i.pn.lcssa to i64
  %i.dv = ptrtoint ptr %i.dt to i64
  %i.dw = sub i64 %i.du, %i.dv                    ; 6 uses
  %i.dx = load i64, ptr %i.b, align 8, !tbaa !1445 ; 7 uses
  %i.dy = icmp ult i64 %i.dx, %i.dw
  br i1 %i.dy, label %bb.af, label %bb.ak

bb.af:                                            ; preds = %._crit_edge
  %i.dz = sub nuw i64 %i.dw, %i.dx                ; 4 uses
  %i.ea = sub i64 9223372036854775807, %i.dx
  %i.eb = icmp ult i64 %i.ea, %i.dz
  br i1 %i.eb, label %bb.ag, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i15

bb.ag:                                            ; preds = %bb.af
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #24
          to label %.noexc23 unwind label %bb.al

.noexc23:                                         ; preds = %bb.ag
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i15: ; preds = %bb.af
  %i.ec = icmp eq ptr %i.dt, %i.a
  br i1 %i.ec, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i22: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i15
  %i.ed = icmp ult i64 %i.dx, 16
  tail call void @llvm.assume(i1 %i.ed)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i16: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i15
  %i.ee = load i64, ptr %i.a, align 8, !tbaa !7
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i17: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i16, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i22
  %i.ef = phi i64 [ %i.ee, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i16 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i22 ]
  %.not.i.i.i.i18 = icmp ugt i64 %i.dw, %i.ef
  br i1 %.not.i.i.i.i18, label %bb.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i19

bb.ah:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.dx, i64 noundef 0, ptr noundef null, i64 noundef %i.dz)
          to label %.noexc24 unwind label %bb.al

.noexc24:                                         ; preds = %bb.ah
  %.pre.i.i21 = load ptr, ptr %0, align 8, !tbaa !307
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i19: ; preds = %.noexc24, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i17
  %i.eg = phi ptr [ %i.dt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i17 ], [ %.pre.i.i21, %.noexc24 ]
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.dx ; 2 uses
  %cond.i.i.i.i20 = icmp eq i64 %i.dz, 1
  br i1 %cond.i.i.i.i20, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i19
  store i8 0, ptr %i.eh, align 1, !tbaa !7
  br label %.sink.split.i.i14

bb.aj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i19
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.eh, i8 0, i64 %i.dz, i1 false)
  br label %.sink.split.i.i14

bb.ak:                                            ; preds = %._crit_edge
  %i.ei = icmp ult i64 %i.dw, %i.dx
  br i1 %i.ei, label %.sink.split.i.i14, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit25

.sink.split.i.i14:                                ; preds = %bb.ak, %bb.aj, %bb.ai
  store i64 %i.dw, ptr %i.b, align 8, !tbaa !1445
  %i.ej = load ptr, ptr %0, align 8, !tbaa !307
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.dw
  store i8 0, ptr %i.ek, align 1, !tbaa !7
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit25

bb.al:                                            ; preds = %bb.ah, %bb.ag
  %i.el = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.am:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.al
  %.pn10 = phi { ptr, i32 } [ %i.el, %bb.al ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.em = load ptr, ptr %0, align 8, !tbaa !307   ; 2 uses
  %i.en = icmp eq ptr %i.em, %i.a
  br i1 %i.en, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.am
  %i.eo = load i64, ptr %i.a, align 8, !tbaa !7
  %i.ep = add i64 %i.eo, 1
  tail call void @_ZdlPvm(ptr noundef %i.em, i64 noundef %i.ep) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit25: ; preds = %.sink.split.i.i14, %bb.ak
  ret void

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn10
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal7ToCharsIhJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_DpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i8 noundef zeroext %1) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !1444
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.a, i8 0, i64 15, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 31
  store i8 0, ptr %i.b, align 1, !tbaa !7
  %i.c = icmp eq i8 %1, 0
  br i1 %i.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit25, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult i8 %1, 10
  %i.e = icmp ult i8 %1, 100
  %i.f = select i1 %i.e, i64 2, i64 3
  %i.g = select i1 %i.d, i64 1, i64 %i.f          ; 2 uses
  %i.h = icmp ugt i8 %1, 99
  br i1 %i.h, label %._crit_edge.i.i.thread.i, label %._crit_edge.i.i.i

._crit_edge.i.i.thread.i:                         ; preds = %bb.b
  %i.i = urem i8 %1, 100
  %i.j = shl nuw i8 %i.i, 1
  %2 = udiv i8 %1, 100
  %i.k = zext i8 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.k ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %i.n = load i8, ptr %i.m, align 1, !tbaa !7
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i8 %i.n, ptr %i.o, align 2, !tbaa !7
  %i.p = load i8, ptr %i.l, align 2, !tbaa !7
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 %i.p, ptr %i.q, align 1, !tbaa !7
  br label %bb.d

._crit_edge.i.i.i:                                ; preds = %bb.b
  %i.r = icmp samesign ugt i8 %1, 9
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.s = shl nuw i8 %1, 1
  %i.t = zext i8 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.t ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  %i.w = load i8, ptr %i.v, align 1, !tbaa !7
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 %i.w, ptr %i.x, align 1, !tbaa !7
  %i.y = load i8, ptr %i.u, align 2, !tbaa !7
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit25

bb.d:                                             ; preds = %._crit_edge.i.i.i, %._crit_edge.i.i.thread.i
  %.0.lcssa.i.i79.i = phi i8 [ %2, %._crit_edge.i.i.thread.i ], [ %1, %._crit_edge.i.i.i ]
  %i.z = or disjoint i8 %.0.lcssa.i.i79.i, 48
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit25: ; preds = %bb.d, %bb.c, %bb.a
  %.sink90.i = phi i8 [ 48, %bb.a ], [ %i.y, %bb.c ], [ %i.z, %bb.d ]
  %.sink89.i = phi i64 [ 1, %bb.a ], [ %i.g, %bb.c ], [ %i.g, %bb.d ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sink90.i, ptr %i.a, align 8, !tbaa !7
  store i64 %.sink89.i, ptr %i.aa, align 8, !tbaa !1445
  %i.ab = load ptr, ptr %0, align 8, !tbaa !307
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.sink89.i
  store i8 0, ptr %i.ac, align 1, !tbaa !7
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal7ToCharsItJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_DpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i16 noundef zeroext %1) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !1444
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.a, i8 0, i64 15, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 31
  store i8 0, ptr %i.b, align 1, !tbaa !7
  %i.c = zext i16 %1 to i32                       ; 3 uses
  %i.d = icmp eq i16 %1, 0
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit25, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ult i16 %1, 10
  br i1 %i.e, label %._crit_edge.i.i.i.thread60, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b
  %i.f = icmp ult i16 %1, 100
  br i1 %i.f, label %._crit_edge.i.i.i.thread, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %.lr.ph.i.i.i
  %i.g = icmp ult i16 %1, 1000
  %i.h = icmp ult i16 %1, 10000
  %..i = select i1 %i.h, i32 4, i32 5
  %.0.i.i.i.ph = select i1 %i.g, i32 3, i32 %..i  ; 2 uses
  %i.i = add nsw i32 %.0.i.i.i.ph, -1
  br label %.lr.ph.i9.i.i

.lr.ph.i9.i.i:                                    ; preds = %.lr.ph.i9.i.i, %.lr.ph.preheader.i.i.i
  %.020.i.i.i = phi i32 [ %i.l, %.lr.ph.i9.i.i ], [ %i.c, %.lr.ph.preheader.i.i.i ] ; 4 uses
  %.01819.i.i.i = phi i32 [ %i.w, %.lr.ph.i9.i.i ], [ %i.i, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.j = urem i32 %.020.i.i.i, 100
  %i.k = shl nuw nsw i32 %i.j, 1
  %i.l = udiv i32 %.020.i.i.i, 100                ; 3 uses
  %i.m = zext nneg i32 %i.k to i64
  %i.n = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.m ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  %i.p = load i8, ptr %i.o, align 1, !tbaa !7
  %i.q = zext i32 %.01819.i.i.i to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.q
  store i8 %i.p, ptr %i.r, align 1, !tbaa !7
  %i.s = load i8, ptr %i.n, align 2, !tbaa !7
  %i.t = add i32 %.01819.i.i.i, -1
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.u
  store i8 %i.s, ptr %i.v, align 1, !tbaa !7
  %i.w = add i32 %.01819.i.i.i, -2
  %i.x = icmp samesign ugt i32 %.020.i.i.i, 9999
  br i1 %i.x, label %.lr.ph.i9.i.i, label %._crit_edge.i.i.i, !llvm.loop !1447

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i9.i.i
  %i.y = zext nneg i32 %.0.i.i.i.ph to i64        ; 2 uses
  %i.z = icmp samesign ugt i32 %.020.i.i.i, 999
  br i1 %i.z, label %._crit_edge.i.i.i.thread, label %._crit_edge.i.i.i.thread60

._crit_edge.i.i.i.thread:                         ; preds = %.lr.ph.i.i.i, %._crit_edge.i.i.i
  %.0.lcssa.i.i.i59 = phi i32 [ %i.l, %._crit_edge.i.i.i ], [ %i.c, %.lr.ph.i.i.i ]
  %i.aa = phi i64 [ %i.y, %._crit_edge.i.i.i ], [ 2, %.lr.ph.i.i.i ]
  %i.ab = shl nuw nsw i32 %.0.lcssa.i.i.i59, 1
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.ac ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !7
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 %i.af, ptr %i.ag, align 1, !tbaa !7
  %i.ah = load i8, ptr %i.ad, align 2, !tbaa !7
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit25

._crit_edge.i.i.i.thread60:                       ; preds = %bb.b, %._crit_edge.i.i.i
  %.0.lcssa.i.i.i62 = phi i32 [ %i.l, %._crit_edge.i.i.i ], [ %i.c, %bb.b ]
  %i.ai = phi i64 [ %i.y, %._crit_edge.i.i.i ], [ 1, %bb.b ]
  %i.aj = trunc nuw nsw i32 %.0.lcssa.i.i.i62 to i8
  %i.ak = or disjoint i8 %i.aj, 48
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit25: ; preds = %._crit_edge.i.i.i.thread60, %._crit_edge.i.i.i.thread, %bb.a
  %.sink96.i = phi i8 [ 48, %bb.a ], [ %i.ah, %._crit_edge.i.i.i.thread ], [ %i.ak, %._crit_edge.i.i.i.thread60 ]
  %.sink.i = phi i64 [ 1, %bb.a ], [ %i.aa, %._crit_edge.i.i.i.thread ], [ %i.ai, %._crit_edge.i.i.i.thread60 ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sink96.i, ptr %i.a, align 8, !tbaa !7
  store i64 %.sink.i, ptr %i.al, align 8, !tbaa !1445
  %i.am = load ptr, ptr %0, align 8, !tbaa !307
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %.sink.i
  store i8 0, ptr %i.an, align 1, !tbaa !7
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal7ToCharsIjJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_DpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i32 noundef %1) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 15 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !1444
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.a, i8 0, i64 15, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  store i64 15, ptr %i.b, align 8, !tbaa !1445
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 31
  store i8 0, ptr %i.c, align 1, !tbaa !7
  %i.d = icmp eq i32 %1, 0
  br i1 %i.d, label %_ZSt12__to_chars_iIjENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yEEES2_IS4_nES2_IS4_oES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ult i32 %1, 10
  br i1 %i.e, label %._crit_edge.i.i.i.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %bb.h
  %.02230.i.i.i = phi i32 [ %i.l, %bb.h ], [ %1, %bb.b ] ; 5 uses
  %.02329.i.i.i = phi i32 [ %i.m, %bb.h ], [ 1, %bb.b ] ; 4 uses
  %i.f = icmp ult i32 %.02230.i.i.i, 100
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.g = add i32 %.02329.i.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.h = icmp ult i32 %.02230.i.i.i, 1000
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.i = add i32 %.02329.i.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.j = icmp ult i32 %.02230.i.i.i, 10000
  br i1 %i.j, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.k = add i32 %.02329.i.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i

bb.h:                                             ; preds = %bb.f
  %i.l = udiv i32 %.02230.i.i.i, 10000
  %i.m = add i32 %.02329.i.i.i, 4                 ; 2 uses
  %i.n = icmp ult i32 %.02230.i.i.i, 100000
  br i1 %i.n, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !1446

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i:  ; preds = %bb.h, %bb.g, %bb.e, %bb.c
  %.0.i.i.i = phi i32 [ %i.k, %bb.g ], [ %i.g, %bb.c ], [ %i.i, %bb.e ], [ %i.m, %bb.h ] ; 4 uses
  %i.o = icmp ugt i32 %.0.i.i.i, 14
  %i.p = icmp ugt i32 %1, 99                      ; 2 uses
  br i1 %i.o, label %.lr.ph, label %bb.i, !prof !212

bb.i:                                             ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i
  br i1 %i.p, label %.lr.ph.preheader.i.i.i, label %._crit_edge.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.i
  %i.q = add nsw i32 %.0.i.i.i, -1
  br label %.lr.ph.i9.i.i

.lr.ph.i9.i.i:                                    ; preds = %.lr.ph.i9.i.i, %.lr.ph.preheader.i.i.i
  %.020.i.i.i = phi i32 [ %i.t, %.lr.ph.i9.i.i ], [ %1, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %.01819.i.i.i = phi i32 [ %i.ae, %.lr.ph.i9.i.i ], [ %i.q, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.r = urem i32 %.020.i.i.i, 100
  %i.s = shl nuw nsw i32 %i.r, 1
  %i.t = udiv i32 %.020.i.i.i, 100                ; 2 uses
  %i.u = zext nneg i32 %i.s to i64
  %i.v = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.u ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  %i.x = load i8, ptr %i.w, align 1, !tbaa !7
  %i.y = zext i32 %.01819.i.i.i to i64
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.y
  store i8 %i.x, ptr %i.z, align 1, !tbaa !7
  %i.aa = load i8, ptr %i.v, align 2, !tbaa !7
  %i.ab = add i32 %.01819.i.i.i, -1
  %i.ac = zext i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ac
  store i8 %i.aa, ptr %i.ad, align 1, !tbaa !7
  %i.ae = add i32 %.01819.i.i.i, -2
  %i.af = icmp ugt i32 %.020.i.i.i, 9999
  br i1 %i.af, label %.lr.ph.i9.i.i, label %._crit_edge.i.i.i, !llvm.loop !1447

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i9.i.i, %bb.i
  %.0.lcssa.i.i.i = phi i32 [ %1, %bb.i ], [ %i.t, %.lr.ph.i9.i.i ] ; 3 uses
  %i.ag = icmp samesign ugt i32 %.0.lcssa.i.i.i, 9
  br i1 %i.ag, label %bb.j, label %._crit_edge.i.i.i.thread

bb.j:                                             ; preds = %._crit_edge.i.i.i
  %i.ah = shl nuw nsw i32 %.0.lcssa.i.i.i, 1
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.ai ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !7
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 %i.al, ptr %i.am, align 1, !tbaa !7
  %i.an = load i8, ptr %i.aj, align 2, !tbaa !7
end_hunk_0
begin_hunk_1_@_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUliE0_clEi:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18
  %i.as = load i64, ptr %i.aq, align 8, !tbaa !7
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllE0_clEl(ptr dead_on_unwind noalias writable align 8 %0, ptr nofree readonly captures(none) %.0.val, ptr nofree readonly captures(none) %.8.val, i64 noundef %1) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @_ZN5arrow8internal7ToCharsIlJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, i64 noundef %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.a = load i64, ptr %.0.val, align 8, !tbaa !30
  invoke void @_ZN5arrow8internal7ToCharsIlJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, i64 noundef %i.a)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.b = load i64, ptr %.8.val, align 8, !tbaa !30
  invoke void @_ZN5arrow8internal7ToCharsIlJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, i64 noundef %i.b)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22, !noalias !1481
  invoke void @_ZN5arrow8internal12JoinToStringIJRA15_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA16_S2_SA_RA5_S2_SA_EEESA_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 1 dereferenceable(15) @.str.10, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(16) @.str.11, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 1 dereferenceable(5) @.str.12, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.c
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %.noexc
  %i.c = load ptr, ptr %2, align 8, !tbaa !307, !noalias !1481 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  %i.f = load i64, ptr %i.d, align 8, !tbaa !7, !noalias !1481
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #23
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i

bb.e:                                             ; preds = %.noexc
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load ptr, ptr %2, align 8, !tbaa !307, !noalias !1481 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i.i: ; preds = %bb.e
  %i.l = load i64, ptr %i.j, align 8, !tbaa !7, !noalias !1481
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22, !noalias !1481
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22, !noalias !1481
  %i.n = load ptr, ptr %5, align 8, !tbaa !307    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.q = load i64, ptr %i.o, align 8, !tbaa !7
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.s = load ptr, ptr %4, align 8, !tbaa !307    ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.v = load i64, ptr %i.t, align 8, !tbaa !7
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.x = load ptr, ptr %3, align 8, !tbaa !307    ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !7
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret void

bb.f:                                             ; preds = %bb.a
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

bb.g:                                             ; preds = %bb.b
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

bb.h:                                             ; preds = %bb.c
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i, %bb.h
  %eh.lpad-body = phi { ptr, i32 } [ %i.ae, %bb.h ], [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i ] ; 2 uses
  %i.af = load ptr, ptr %5, align 8, !tbaa !307   ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %.body
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !7
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13, %bb.g
  %.pn = phi { ptr, i32 } [ %i.ad, %bb.g ], [ %eh.lpad-body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13 ], [ %eh.lpad-body, %.body ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.ak = load ptr, ptr %4, align 8, !tbaa !307   ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15
  %i.an = load i64, ptr %i.al, align 8, !tbaa !7
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16, %bb.f
  %.pn.pn = phi { ptr, i32 } [ %i.ac, %bb.f ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.ap = load ptr, ptr %3, align 8, !tbaa !307   ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18
  %i.as = load i64, ptr %i.aq, align 8, !tbaa !7
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9UInt8TypeEhEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlhE0_clEh(ptr dead_on_unwind noalias writable align 8 %0, ptr nofree readonly captures(none) %.0.val, ptr nofree readonly captures(none) %.8.val, i8 noundef zeroext %1) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1486)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 8 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !1444, !alias.scope !1486
  %i.b = icmp eq i8 %1, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  br i1 %i.b, label %_ZN5arrow8internal7ToCharsIhJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_DpOT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ult i8 %1, 10
  %i.d = icmp ult i8 %1, 100
  %i.e = select i1 %i.d, i64 2, i64 3
  %i.f = select i1 %i.c, i64 1, i64 %i.e          ; 2 uses
  %i.g = icmp ugt i8 %1, 99
  br i1 %i.g, label %._crit_edge.i.i.thread.i.i, label %._crit_edge.i.i.i.i

._crit_edge.i.i.thread.i.i:                       ; preds = %bb.b
  %i.h = urem i8 %1, 100
  %i.i = shl nuw i8 %i.h, 1
  %6 = udiv i8 %1, 100
  %i.j = zext i8 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.j ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.m = load i8, ptr %i.l, align 1, !tbaa !7, !noalias !1486
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 18
  store i8 %i.m, ptr %i.n, align 2, !tbaa !7, !alias.scope !1486
  %i.o = load i8, ptr %i.k, align 2, !tbaa !7, !noalias !1486
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 17
  store i8 %i.o, ptr %i.p, align 1, !tbaa !7, !alias.scope !1486
  br label %bb.d

._crit_edge.i.i.i.i:                              ; preds = %bb.b
  %i.q = icmp samesign ugt i8 %1, 9
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.r = shl nuw i8 %1, 1
  %i.s = zext i8 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.s ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.v = load i8, ptr %i.u, align 1, !tbaa !7, !noalias !1486
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 17
  store i8 %i.v, ptr %i.w, align 1, !tbaa !7, !alias.scope !1486
  %i.x = load i8, ptr %i.t, align 2, !tbaa !7, !noalias !1486
  br label %_ZN5arrow8internal7ToCharsIhJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_DpOT0_.exit

bb.d:                                             ; preds = %._crit_edge.i.i.i.i, %._crit_edge.i.i.thread.i.i
  %.0.lcssa.i.i79.i.i = phi i8 [ %6, %._crit_edge.i.i.thread.i.i ], [ %1, %._crit_edge.i.i.i.i ]
  %i.y = or disjoint i8 %.0.lcssa.i.i79.i.i, 48
  br label %_ZN5arrow8internal7ToCharsIhJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_DpOT0_.exit

_ZN5arrow8internal7ToCharsIhJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_DpOT0_.exit: ; preds = %bb.a, %bb.c, %bb.d
  %.sink90.i.i = phi i8 [ 48, %bb.a ], [ %i.x, %bb.c ], [ %i.y, %bb.d ]
  %.sink89.i.i = phi i64 [ 1, %bb.a ], [ %i.f, %bb.c ], [ %i.f, %bb.d ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 %.sink90.i.i, ptr %i.a, align 8, !tbaa !7, !alias.scope !1486
  store i64 %.sink89.i.i, ptr %i.z, align 8, !tbaa !1445, !alias.scope !1486
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sink89.i.i
  store i8 0, ptr %i.aa, align 1, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.ab = load i8, ptr %.0.val, align 1, !tbaa !7 ; 9 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1489)
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 8 uses
  store ptr %i.ac, ptr %4, align 8, !tbaa !1444, !alias.scope !1489
  %i.ad = icmp eq i8 %i.ab, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i8 0, i64 16, i1 false)
  br i1 %i.ad, label %bb.h, label %bb.e

bb.e:                                             ; preds = %_ZN5arrow8internal7ToCharsIhJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_DpOT0_.exit
  %i.ae = icmp ult i8 %i.ab, 10
  %i.af = icmp ult i8 %i.ab, 100
  %i.ag = select i1 %i.af, i64 2, i64 3
  %i.ah = select i1 %i.ae, i64 1, i64 %i.ag       ; 2 uses
  %i.ai = icmp ugt i8 %i.ab, 99
  br i1 %i.ai, label %._crit_edge.i.i.thread.i.i11, label %._crit_edge.i.i.i.i7

._crit_edge.i.i.thread.i.i11:                     ; preds = %bb.e
  %i.aj = urem i8 %i.ab, 100
  %i.ak = shl nuw i8 %i.aj, 1
  %7 = udiv i8 %i.ab, 100
  %i.al = zext i8 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.al ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 1
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !7, !noalias !1489
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 18
  store i8 %i.ao, ptr %i.ap, align 2, !tbaa !7, !alias.scope !1489
  %i.aq = load i8, ptr %i.am, align 2, !tbaa !7, !noalias !1489
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 17
  store i8 %i.aq, ptr %i.ar, align 1, !tbaa !7, !alias.scope !1489
  br label %bb.g

._crit_edge.i.i.i.i7:                             ; preds = %bb.e
  %i.as = icmp samesign ugt i8 %i.ab, 9
  br i1 %i.as, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i.i.i7
  %i.at = shl nuw i8 %i.ab, 1
  %i.au = zext i8 %i.at to i64
  %i.av = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.au ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 1
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !7, !noalias !1489
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 17
  store i8 %i.ax, ptr %i.ay, align 1, !tbaa !7, !alias.scope !1489
  %i.az = load i8, ptr %i.av, align 2, !tbaa !7, !noalias !1489
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i.i7, %._crit_edge.i.i.thread.i.i11
  %.0.lcssa.i.i79.i.i8 = phi i8 [ %7, %._crit_edge.i.i.thread.i.i11 ], [ %i.ab, %._crit_edge.i.i.i.i7 ]
  %i.ba = or disjoint i8 %.0.lcssa.i.i79.i.i8, 48
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %_ZN5arrow8internal7ToCharsIhJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_DpOT0_.exit
  %.sink90.i.i9 = phi i8 [ 48, %_ZN5arrow8internal7ToCharsIhJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_DpOT0_.exit ], [ %i.az, %bb.f ], [ %i.ba, %bb.g ]
  %.sink89.i.i10 = phi i64 [ 1, %_ZN5arrow8internal7ToCharsIhJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_DpOT0_.exit ], [ %i.ah, %bb.f ], [ %i.ah, %bb.g ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i8 %.sink90.i.i9, ptr %i.ac, align 8, !tbaa !7, !alias.scope !1489
  store i64 %.sink89.i.i10, ptr %i.bb, align 8, !tbaa !1445, !alias.scope !1489
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.sink89.i.i10
  store i8 0, ptr %i.bc, align 1, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.bd = load i8, ptr %.8.val, align 1, !tbaa !7 ; 9 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1492)
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 8 uses
  store ptr %i.be, ptr %5, align 8, !tbaa !1444, !alias.scope !1492
  %i.bf = icmp eq i8 %i.bd, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.be, i8 0, i64 16, i1 false)
  br i1 %i.bf, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bg = icmp ult i8 %i.bd, 10
  %i.bh = icmp ult i8 %i.bd, 100
  %i.bi = select i1 %i.bh, i64 2, i64 3
  %i.bj = select i1 %i.bg, i64 1, i64 %i.bi       ; 2 uses
  %i.bk = icmp ugt i8 %i.bd, 99
  br i1 %i.bk, label %._crit_edge.i.i.thread.i.i17, label %._crit_edge.i.i.i.i13

._crit_edge.i.i.thread.i.i17:                     ; preds = %bb.i
  %i.bl = urem i8 %i.bd, 100
  %i.bm = shl nuw i8 %i.bl, 1
  %8 = udiv i8 %i.bd, 100
  %i.bn = zext i8 %i.bm to i64
  %i.bo = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.bn ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 1
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !7, !noalias !1492
  %i.br = getelementptr inbounds nuw i8, ptr %5, i64 18
  store i8 %i.bq, ptr %i.br, align 2, !tbaa !7, !alias.scope !1492
  %i.bs = load i8, ptr %i.bo, align 2, !tbaa !7, !noalias !1492
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 17
  store i8 %i.bs, ptr %i.bt, align 1, !tbaa !7, !alias.scope !1492
  br label %bb.k

._crit_edge.i.i.i.i13:                            ; preds = %bb.i
  %i.bu = icmp samesign ugt i8 %i.bd, 9
  br i1 %i.bu, label %bb.j, label %bb.k

bb.j:                                             ; preds = %._crit_edge.i.i.i.i13
  %i.bv = shl nuw i8 %i.bd, 1
  %i.bw = zext i8 %i.bv to i64
  %i.bx = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.bw ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 1
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !7, !noalias !1492
  %i.ca = getelementptr inbounds nuw i8, ptr %5, i64 17
  store i8 %i.bz, ptr %i.ca, align 1, !tbaa !7, !alias.scope !1492
  %i.cb = load i8, ptr %i.bx, align 2, !tbaa !7, !noalias !1492
  br label %bb.l

bb.k:                                             ; preds = %._crit_edge.i.i.i.i13, %._crit_edge.i.i.thread.i.i17
  %.0.lcssa.i.i79.i.i14 = phi i8 [ %8, %._crit_edge.i.i.thread.i.i17 ], [ %i.bd, %._crit_edge.i.i.i.i13 ]
  %i.cc = or disjoint i8 %.0.lcssa.i.i79.i.i14, 48
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.h
  %.sink90.i.i15 = phi i8 [ 48, %bb.h ], [ %i.cb, %bb.j ], [ %i.cc, %bb.k ]
  %.sink89.i.i16 = phi i64 [ 1, %bb.h ], [ %i.bj, %bb.j ], [ %i.bj, %bb.k ] ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i8 %.sink90.i.i15, ptr %i.be, align 8, !tbaa !7, !alias.scope !1492
  store i64 %.sink89.i.i16, ptr %i.cd, align 8, !tbaa !1445, !alias.scope !1492
  %i.ce = getelementptr inbounds nuw i8, ptr %i.be, i64 %.sink89.i.i16
  store i8 0, ptr %i.ce, align 1, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22, !noalias !1495
  invoke void @_ZN5arrow8internal12JoinToStringIJRA15_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA16_S2_SA_RA5_S2_SA_EEESA_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 1 dereferenceable(15) @.str.10, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(16) @.str.11, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 1 dereferenceable(5) @.str.12, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %bb.l
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %.noexc
  %i.cf = load ptr, ptr %2, align 8, !tbaa !307, !noalias !1495 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ch = icmp eq ptr %i.cf, %i.cg
  br i1 %i.ch, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.m
  %i.ci = load i64, ptr %i.cg, align 8, !tbaa !7, !noalias !1495
  %i.cj = add i64 %i.ci, 1
  call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.cj) #23
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i

bb.n:                                             ; preds = %.noexc
  %i.ck = landingpad { ptr, i32 }
          cleanup
  %i.cl = load ptr, ptr %2, align 8, !tbaa !307, !noalias !1495 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.cn = icmp eq ptr %i.cl, %i.cm
  br i1 %i.cn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i.i: ; preds = %bb.n
  %i.co = load i64, ptr %i.cm, align 8, !tbaa !7, !noalias !1495
  %i.cp = add i64 %i.co, 1
  call void @_ZdlPvm(ptr noundef %i.cl, i64 noundef %i.cp) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22, !noalias !1495
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22, !noalias !1495
  %i.cq = load ptr, ptr %5, align 8, !tbaa !307   ; 2 uses
  %i.cr = icmp eq ptr %i.cq, %i.be
  br i1 %i.cr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.cs = load i64, ptr %i.be, align 8, !tbaa !7
  %i.ct = add i64 %i.cs, 1
  call void @_ZdlPvm(ptr noundef %i.cq, i64 noundef %i.ct) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.cu = load ptr, ptr %4, align 8, !tbaa !307   ; 2 uses
  %i.cv = icmp eq ptr %i.cu, %i.ac
  br i1 %i.cv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cw = load i64, ptr %i.ac, align 8, !tbaa !7
  %i.cx = add i64 %i.cw, 1
  call void @_ZdlPvm(ptr noundef %i.cu, i64 noundef %i.cx) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.cy = load ptr, ptr %3, align 8, !tbaa !307   ; 2 uses
  %i.cz = icmp eq ptr %i.cy, %i.a
  br i1 %i.cz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21
  %i.da = load i64, ptr %i.a, align 8, !tbaa !7
  %i.db = add i64 %i.da, 1
  call void @_ZdlPvm(ptr noundef %i.cy, i64 noundef %i.db) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret void

bb.o:                                             ; preds = %bb.l
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i, %bb.o
  %eh.lpad-body = phi { ptr, i32 } [ %i.dc, %bb.o ], [ %i.ck, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i ]
  %i.dd = load ptr, ptr %5, align 8, !tbaa !307   ; 2 uses
  %i.de = icmp eq ptr %i.dd, %i.be
  br i1 %i.de, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %.body
  %i.df = load i64, ptr %i.be, align 8, !tbaa !7
  %i.dg = add i64 %i.df, 1
  call void @_ZdlPvm(ptr noundef %i.dd, i64 noundef %i.dg) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.dh = load ptr, ptr %4, align 8, !tbaa !307   ; 2 uses
  %i.di = icmp eq ptr %i.dh, %i.ac
  br i1 %i.di, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27
  %i.dj = load i64, ptr %i.ac, align 8, !tbaa !7
  %i.dk = add i64 %i.dj, 1
  call void @_ZdlPvm(ptr noundef %i.dh, i64 noundef %i.dk) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.dl = load ptr, ptr %3, align 8, !tbaa !307   ; 2 uses
  %i.dm = icmp eq ptr %i.dl, %i.a
  br i1 %i.dm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30
  %i.dn = load i64, ptr %i.a, align 8, !tbaa !7
  %i.do = add i64 %i.dn, 1
  call void @_ZdlPvm(ptr noundef %i.dl, i64 noundef %i.do) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt16TypeEtEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUltE0_clEt(ptr dead_on_unwind noalias writable align 8 %0, ptr nofree readonly captures(none) %.0.val, ptr nofree readonly captures(none) %.8.val, i16 noundef zeroext %1) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1500)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 10 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !1444, !alias.scope !1500
  %i.b = zext i16 %1 to i32                       ; 3 uses
  %i.c = icmp eq i16 %1, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  br i1 %i.c, label %_ZN5arrow8internal7ToCharsItJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_DpOT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult i16 %1, 10
  br i1 %i.d, label %._crit_edge.i.i.i.thread60.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b
  %i.e = icmp ult i16 %1, 100
  br i1 %i.e, label %._crit_edge.i.i.i.thread.i, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i
  %i.f = icmp ult i16 %1, 1000
  %i.g = icmp ult i16 %1, 10000
  %..i.i = select i1 %i.g, i32 4, i32 5
  %.0.i.i.i.ph.i = select i1 %i.f, i32 3, i32 %..i.i ; 2 uses
  %i.h = add nsw i32 %.0.i.i.i.ph.i, -1
  br label %.lr.ph.i9.i.i.i

.lr.ph.i9.i.i.i:                                  ; preds = %.lr.ph.i9.i.i.i, %.lr.ph.preheader.i.i.i.i
  %.020.i.i.i.i = phi i32 [ %i.k, %.lr.ph.i9.i.i.i ], [ %i.b, %.lr.ph.preheader.i.i.i.i ] ; 4 uses
  %.01819.i.i.i.i = phi i32 [ %i.v, %.lr.ph.i9.i.i.i ], [ %i.h, %.lr.ph.preheader.i.i.i.i ] ; 3 uses
  %i.i = urem i32 %.020.i.i.i.i, 100
  %i.j = shl nuw nsw i32 %i.i, 1
  %i.k = udiv i32 %.020.i.i.i.i, 100              ; 3 uses
  %i.l = zext nneg i32 %i.j to i64
  %i.m = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.l ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %i.o = load i8, ptr %i.n, align 1, !tbaa !7, !noalias !1500
  %i.p = zext i32 %.01819.i.i.i.i to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.p
  store i8 %i.o, ptr %i.q, align 1, !tbaa !7, !alias.scope !1500
  %i.r = load i8, ptr %i.m, align 2, !tbaa !7, !noalias !1500
  %i.s = add i32 %.01819.i.i.i.i, -1
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.t
  store i8 %i.r, ptr %i.u, align 1, !tbaa !7, !alias.scope !1500
  %i.v = add i32 %.01819.i.i.i.i, -2
  %i.w = icmp samesign ugt i32 %.020.i.i.i.i, 9999
  br i1 %i.w, label %.lr.ph.i9.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !1447

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i9.i.i.i
  %i.x = zext nneg i32 %.0.i.i.i.ph.i to i64      ; 2 uses
  %i.y = icmp samesign ugt i32 %.020.i.i.i.i, 999
  br i1 %i.y, label %._crit_edge.i.i.i.thread.i, label %._crit_edge.i.i.i.thread60.i

._crit_edge.i.i.i.thread.i:                       ; preds = %._crit_edge.i.i.i.i, %.lr.ph.i.i.i.i
  %.0.lcssa.i.i.i59.i = phi i32 [ %i.k, %._crit_edge.i.i.i.i ], [ %i.b, %.lr.ph.i.i.i.i ]
  %i.z = phi i64 [ %i.x, %._crit_edge.i.i.i.i ], [ 2, %.lr.ph.i.i.i.i ]
  %i.aa = shl nuw nsw i32 %.0.lcssa.i.i.i59.i, 1
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.ab ; 2 uses
end_hunk_1
