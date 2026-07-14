inline.NumInlined: 2119
inline.NumDeleted: 601
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 286
loop-unroll.NumUnrolled: 304
begin_hunk_0_@_ZN5arrow8internal7ToCharsIlJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_DpOT0_:_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.bq, i8 noundef signext 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit unwind label %.split

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit: ; preds = %.lr.ph.split
  %i.br = load ptr, ptr %0, align 8, !tbaa !309   ; 4 uses
  %i.bs = load i64, ptr %i.c, align 8, !tbaa !1457
  %i.bt = add i64 %i.bs, -1                       ; 2 uses
  %i.bu = getelementptr i8, ptr %i.br, i64 %i.bt
  %i.bv = icmp eq i64 %i.bt, 0
  br i1 %i.bv, label %.lr.ph.split.backedge, label %bb.o, !prof !206

.lr.ph.split.backedge:                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i19
  br label %.lr.ph.split

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit
  br i1 %i.bc, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bw = getelementptr inbounds nuw i8, ptr %i.br, i64 1
  store i8 45, ptr %i.br, align 1, !tbaa !7
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.026.i14 = phi ptr [ %i.bw, %bb.p ], [ %i.br, %bb.o ] ; 6 uses
  %.0.i15 = phi i64 [ %i.bd, %bb.p ], [ %1, %bb.o ] ; 5 uses
  %i.bx = icmp ult i64 %.0.i15, 10
  br i1 %i.bx, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i19, label %.lr.ph.i.i.i16

.lr.ph.i.i.i16:                                   ; preds = %bb.q, %bb.w
  %.02229.i.i.i17 = phi i64 [ %i.ce, %bb.w ], [ %.0.i15, %bb.q ] ; 5 uses
  %.02328.i.i.i18 = phi i32 [ %i.cf, %bb.w ], [ 1, %bb.q ] ; 4 uses
  %i.by = icmp ult i64 %.02229.i.i.i17, 100
  br i1 %i.by, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.lr.ph.i.i.i16
  %i.bz = add i32 %.02328.i.i.i18, 1
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i19

bb.s:                                             ; preds = %.lr.ph.i.i.i16
  %i.ca = icmp ult i64 %.02229.i.i.i17, 1000
  br i1 %i.ca, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cb = add i32 %.02328.i.i.i18, 2
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i19

bb.u:                                             ; preds = %bb.s
  %i.cc = icmp ult i64 %.02229.i.i.i17, 10000
  br i1 %i.cc, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cd = add i32 %.02328.i.i.i18, 3
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i19

bb.w:                                             ; preds = %bb.u
  %i.ce = udiv i64 %.02229.i.i.i17, 10000
  %i.cf = add i32 %.02328.i.i.i18, 4              ; 2 uses
  %i.cg = icmp ult i64 %.02229.i.i.i17, 100000
  br i1 %i.cg, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i19, label %.lr.ph.i.i.i16, !llvm.loop !1462

_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i19: ; preds = %bb.w, %bb.v, %bb.t, %bb.r, %bb.q
  %.0.i.i.i20 = phi i32 [ %i.cd, %bb.v ], [ %i.bz, %bb.r ], [ %i.cb, %bb.t ], [ 1, %bb.q ], [ %i.cf, %bb.w ] ; 2 uses
  %i.ch = ptrtoint ptr %i.bu to i64
  %i.ci = ptrtoint ptr %.026.i14 to i64
  %i.cj = sub i64 %i.ch, %i.ci
  %i.ck = zext i32 %.0.i.i.i20 to i64             ; 2 uses
  %i.cl = icmp slt i64 %i.cj, %i.ck
  br i1 %i.cl, label %.lr.ph.split.backedge, label %bb.x, !prof !206

bb.x:                                             ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i19
  %i.cm = icmp ugt i64 %.0.i15, 99
  br i1 %i.cm, label %.lr.ph.preheader.i.i.i29, label %._crit_edge.i.i.i21

.lr.ph.preheader.i.i.i29:                         ; preds = %bb.x
  %i.cn = add i32 %.0.i.i.i20, -1
  br label %.lr.ph.i9.i.i30

.lr.ph.i9.i.i30:                                  ; preds = %.lr.ph.i9.i.i30, %.lr.ph.preheader.i.i.i29
  %.020.i.i.i31 = phi i64 [ %i.cq, %.lr.ph.i9.i.i30 ], [ %.0.i15, %.lr.ph.preheader.i.i.i29 ] ; 3 uses
  %.01819.i.i.i32 = phi i32 [ %i.da, %.lr.ph.i9.i.i30 ], [ %i.cn, %.lr.ph.preheader.i.i.i29 ] ; 3 uses
  %i.co = urem i64 %.020.i.i.i31, 100
  %i.cp = shl nuw nsw i64 %i.co, 1
  %i.cq = udiv i64 %.020.i.i.i31, 100             ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.cp ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 1
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !7
  %i.cu = zext i32 %.01819.i.i.i32 to i64
  %i.cv = getelementptr inbounds nuw i8, ptr %.026.i14, i64 %i.cu
  store i8 %i.ct, ptr %i.cv, align 1, !tbaa !7
  %i.cw = load i8, ptr %i.cr, align 2, !tbaa !7
  %i.cx = add i32 %.01819.i.i.i32, -1
  %i.cy = zext i32 %i.cx to i64
  %i.cz = getelementptr inbounds nuw i8, ptr %.026.i14, i64 %i.cy
  store i8 %i.cw, ptr %i.cz, align 1, !tbaa !7
  %i.da = add i32 %.01819.i.i.i32, -2
  %i.db = icmp ugt i64 %.020.i.i.i31, 9999
  br i1 %i.db, label %.lr.ph.i9.i.i30, label %._crit_edge.i.i.i21, !llvm.loop !1463

._crit_edge.i.i.i21:                              ; preds = %.lr.ph.i9.i.i30, %bb.x
  %.0.lcssa.i.i.i22 = phi i64 [ %.0.i15, %bb.x ], [ %i.cq, %.lr.ph.i9.i.i30 ] ; 3 uses
  %i.dc = icmp samesign ugt i64 %.0.lcssa.i.i.i22, 9
  br i1 %i.dc, label %bb.y, label %bb.z

bb.y:                                             ; preds = %._crit_edge.i.i.i21
  %i.dd = shl nuw nsw i64 %.0.lcssa.i.i.i22, 1
  %i.de = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.dd ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 1
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !7
  %i.dh = getelementptr inbounds nuw i8, ptr %.026.i14, i64 1
  store i8 %i.dg, ptr %i.dh, align 1, !tbaa !7
  %i.di = load i8, ptr %i.de, align 2, !tbaa !7
  br label %._crit_edge.loopexit48

bb.z:                                             ; preds = %._crit_edge.i.i.i21
  %i.dj = trunc nuw nsw i64 %.0.lcssa.i.i.i22 to i8
  %i.dk = or disjoint i8 %i.dj, 48
  br label %._crit_edge.loopexit48

.split:                                           ; preds = %.lr.ph.split
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

._crit_edge.loopexit:                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.us
  store i8 48, ptr %i.bj, align 1, !tbaa !7
  %i.dm = getelementptr inbounds nuw i8, ptr %i.bj, i64 1
  br label %._crit_edge

._crit_edge.loopexit48:                           ; preds = %bb.y, %bb.z
  %storemerge.i.i.i24 = phi i8 [ %i.dk, %bb.z ], [ %i.di, %bb.y ]
  store i8 %storemerge.i.i.i24, ptr %.026.i14, align 1, !tbaa !7
  %i.dn = getelementptr inbounds nuw i8, ptr %.026.i14, i64 %i.ck
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %_ZNSt8__detail18__to_chars_10_implImEEvPcjT_.exit.i.i, %._crit_edge.loopexit48, %._crit_edge.loopexit
  %.pn68.i.pn.lcssa = phi ptr [ %i.dn, %._crit_edge.loopexit48 ], [ %i.dm, %._crit_edge.loopexit ], [ %i.i, %bb.b ], [ %i.ba, %_ZNSt8__detail18__to_chars_10_implImEEvPcjT_.exit.i.i ]
  %i.do = load ptr, ptr %0, align 8, !tbaa !309
  %i.dp = ptrtoint ptr %.pn68.i.pn.lcssa to i64
  %i.dq = ptrtoint ptr %i.do to i64
  %i.dr = sub i64 %i.dp, %i.dq
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.dr, i8 noundef signext 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit13 unwind label %bb.aa

bb.aa:                                            ; preds = %._crit_edge
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.ab:                                            ; preds = %.split, %.split.us, %bb.aa
  %.pn10 = phi { ptr, i32 } [ %i.ds, %bb.aa ], [ %i.dl, %.split ], [ %i.bl, %.split.us ]
  %i.dt = load ptr, ptr %0, align 8, !tbaa !309   ; 2 uses
  %i.du = icmp eq ptr %i.dt, %i.a
  br i1 %i.du, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ab
  %i.dv = load i64, ptr %i.a, align 8, !tbaa !7
  %i.dw = add i64 %i.dv, 1
  tail call void @_ZdlPvm(ptr noundef %i.dt, i64 noundef %i.dw) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit13: ; preds = %._crit_edge
  ret void

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn10
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal7ToCharsIhJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_DpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i8 noundef zeroext %1) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 11 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !1456
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 15, i8 noundef signext 0)
  %i.b = load ptr, ptr %0, align 8, !tbaa !309    ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !1457
  %i.e = add i64 %i.d, -1                         ; 2 uses
  %i.f = zext i8 %1 to i32                        ; 2 uses
  %i.g = icmp eq i64 %i.e, 0
  br i1 %i.g, label %.lr.ph, label %bb.a, !prof !206

bb.a:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit
  %i.h = icmp eq i8 %1, 0
  br i1 %i.h, label %_ZSt12__to_chars_iIhENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yEEES2_IS4_nES2_IS4_oES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i.exit._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ult i8 %1, 10
  %i.j = icmp ult i8 %1, 100
  %i.k = select i1 %i.j, i64 2, i64 3
  %i.l = select i1 %i.i, i64 1, i64 %i.k          ; 3 uses
  %i.m = icmp slt i64 %i.e, %i.l
  br i1 %i.m, label %.lr.ph, label %bb.c, !prof !206

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i8 %1, 99
  br i1 %i.n, label %._crit_edge.i.i.thread.i, label %._crit_edge.i.i.i

._crit_edge.i.i.thread.i:                         ; preds = %bb.c
  %i.o = urem i8 %1, 100
  %i.p = shl nuw i8 %i.o, 1
  %2 = icmp ugt i8 %1, -57
  %i.q = zext i8 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %i.t = load i8, ptr %i.s, align 1, !tbaa !7
  %i.u = getelementptr i8, ptr %i.b, i64 2
  store i8 %i.t, ptr %i.u, align 1, !tbaa !7
  %i.v = load i8, ptr %i.r, align 2, !tbaa !7
  %i.w = getelementptr i8, ptr %i.b, i64 1
  store i8 %i.v, ptr %i.w, align 1, !tbaa !7
  %3 = select i1 %2, i8 2, i8 1
  br label %bb.e

._crit_edge.i.i.i:                                ; preds = %bb.c
  %i.x = icmp samesign ugt i8 %1, 9
  br i1 %i.x, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.y = shl nuw nsw i32 %i.f, 1
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.z ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !7
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.ac, ptr %i.ad, align 1, !tbaa !7
  %i.ae = load i8, ptr %i.aa, align 2, !tbaa !7
  br label %_ZSt12__to_chars_iIhENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yEEES2_IS4_nES2_IS4_oES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i.exit._crit_edge

bb.e:                                             ; preds = %._crit_edge.i.i.i, %._crit_edge.i.i.thread.i
  %.0.lcssa.i.i79.i = phi i8 [ %3, %._crit_edge.i.i.thread.i ], [ %1, %._crit_edge.i.i.i ]
  %i.af = or disjoint i8 %.0.lcssa.i.i79.i, 48
  br label %_ZSt12__to_chars_iIhENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yEEES2_IS4_nES2_IS4_oES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i.exit._crit_edge

_ZSt12__to_chars_iIhENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yEEES2_IS4_nES2_IS4_oES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i.exit._crit_edge: ; preds = %bb.e, %bb.d, %bb.a
  %.sink90.i = phi i8 [ 48, %bb.a ], [ %i.ae, %bb.d ], [ %i.af, %bb.e ]
  %.sink89.i = phi i64 [ 1, %bb.a ], [ %i.l, %bb.d ], [ %i.l, %bb.e ]
  store i8 %.sink90.i, ptr %i.b, align 1, !tbaa !7
  %.pn55.i = getelementptr i8, ptr %i.b, i64 %.sink89.i
  br label %bb.f

.lr.ph:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit, %bb.b
  %i.ag = icmp eq i8 %1, 0
  %i.ah = icmp ult i8 %1, 10
  %i.ai = icmp ult i8 %1, 100
  %i.aj = select i1 %i.ai, i64 2, i64 3           ; 2 uses
  %i.ak = select i1 %i.ah, i64 1, i64 %i.aj       ; 6 uses
  %i.al = icmp ugt i8 %1, 9
  %i.am = shl nuw nsw i32 %i.f, 1
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.an ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 1
  %i.aq = urem i8 %1, 100
  %i.ar = shl nuw i8 %i.aq, 1
  %4 = icmp ugt i8 %1, -57
  %i.as = zext i8 %i.ar to i64
  %i.at = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.as ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 1
  br i1 %i.ag, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %.pre80 = load ptr, ptr %0, align 8, !tbaa !309
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.us, %.lr.ph.split.us.preheader
  %i.av = phi ptr [ %.pre80, %.lr.ph.split.us.preheader ], [ %i.ba, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.us ]
  %i.aw = icmp eq ptr %i.av, %i.a
  %i.ax = load i64, ptr %i.a, align 8
  %i.ay = shl i64 %i.ax, 1
  %i.az = select i1 %i.aw, i64 30, i64 %i.ay
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.az, i8 noundef signext 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.us unwind label %.split.us

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.us: ; preds = %.lr.ph.split.us
  %i.ba = load ptr, ptr %0, align 8, !tbaa !309   ; 3 uses
  %i.bb = load i64, ptr %i.c, align 8, !tbaa !1457
  %.not67 = icmp eq i64 %i.bb, 1
  br i1 %.not67, label %.lr.ph.split.us, label %._crit_edge.loopexit, !prof !206

.split.us:                                        ; preds = %.lr.ph.split.us
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %.split

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.bd = icmp ugt i8 %1, 99
  %.pre78 = load ptr, ptr %0, align 8, !tbaa !309 ; 3 uses
  br i1 %i.bd, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split
  %5 = select i1 %4, i8 50, i8 49
  br label %_ZSt12__to_chars_iIhENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yEEES2_IS4_nES2_IS4_oES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i.exit25.us39

_ZSt12__to_chars_iIhENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yEEES2_IS4_nES2_IS4_oES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i.exit25.us39: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.us36, %.lr.ph.split.split.us
  %i.be = phi ptr [ %.pre78, %.lr.ph.split.split.us ], [ %i.bj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.us36 ]
  %i.bf = icmp eq ptr %i.be, %i.a
  %i.bg = load i64, ptr %i.a, align 8
  %i.bh = shl i64 %i.bg, 1
  %i.bi = select i1 %i.bf, i64 30, i64 %i.bh
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.bi, i8 noundef signext 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.us36 unwind label %.split.split.us

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.us36: ; preds = %_ZSt12__to_chars_iIhENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yEEES2_IS4_nES2_IS4_oES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i.exit25.us39
  %i.bj = load ptr, ptr %0, align 8, !tbaa !309   ; 4 uses
  %i.bk = load i64, ptr %i.c, align 8, !tbaa !1457
  %i.bl = add i64 %i.bk, -1
  %.not66 = icmp slt i64 %i.bl, %i.ak
  br i1 %.not66, label %_ZSt12__to_chars_iIhENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yEEES2_IS4_nES2_IS4_oES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i.exit25.us39, label %._crit_edge.loopexit68, !prof !1464

.split.split.us:                                  ; preds = %_ZSt12__to_chars_iIhENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yEEES2_IS4_nES2_IS4_oES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i.exit25.us39
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %.split

.lr.ph.split.split:                               ; preds = %.lr.ph.split
  %i.bn = or disjoint i8 %1, 48
  br i1 %i.al, label %.lr.ph.split.split.split.us, label %.lr.ph.split.split.split

.lr.ph.split.split.split.us:                      ; preds = %.lr.ph.split.split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.us51
  %i.bo = phi ptr [ %i.bt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.us51 ], [ %.pre78, %.lr.ph.split.split ]
  %i.bp = icmp eq ptr %i.bo, %i.a
  %i.bq = load i64, ptr %i.a, align 8
  %i.br = shl i64 %i.bq, 1
  %i.bs = select i1 %i.bp, i64 30, i64 %i.br
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.bs, i8 noundef signext 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.us51 unwind label %.split.split.split.us

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.us51: ; preds = %.lr.ph.split.split.split.us
  %i.bt = load ptr, ptr %0, align 8, !tbaa !309   ; 4 uses
  %i.bu = load i64, ptr %i.c, align 8, !tbaa !1457
  %i.bv = add i64 %i.bu, -1
  %.not65 = icmp slt i64 %i.bv, %i.ak
  br i1 %.not65, label %.lr.ph.split.split.split.us, label %._crit_edge.loopexit69, !prof !1464

.split.split.split.us:                            ; preds = %.lr.ph.split.split.split.us
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %.split

.lr.ph.split.split.split:                         ; preds = %.lr.ph.split.split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit
  %i.bx = phi ptr [ %i.cc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit ], [ %.pre78, %.lr.ph.split.split ]
  %i.by = icmp eq ptr %i.bx, %i.a
  %i.bz = load i64, ptr %i.a, align 8
  %i.ca = shl i64 %i.bz, 1
  %i.cb = select i1 %i.by, i64 30, i64 %i.ca
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.cb, i8 noundef signext 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit unwind label %.split.split.split

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit: ; preds = %.lr.ph.split.split.split
  %i.cc = load ptr, ptr %0, align 8, !tbaa !309   ; 3 uses
  %i.cd = load i64, ptr %i.c, align 8, !tbaa !1457
  %i.ce = add i64 %i.cd, -1
  %.not = icmp slt i64 %i.ce, %i.ak
  br i1 %.not, label %.lr.ph.split.split.split, label %._crit_edge.loopexit70, !prof !1464

.split.split.split:                               ; preds = %.lr.ph.split.split.split
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %.split

._crit_edge.loopexit:                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.us
  store i8 48, ptr %i.ba, align 1, !tbaa !7
  br label %._crit_edge

._crit_edge.loopexit68:                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.us36
  %i.cg = load i8, ptr %i.au, align 1, !tbaa !7
  %i.ch = getelementptr i8, ptr %i.bj, i64 %i.aj  ; 2 uses
  %i.ci = getelementptr i8, ptr %i.ch, i64 -1
  store i8 %i.cg, ptr %i.ci, align 1, !tbaa !7
  %i.cj = load i8, ptr %i.at, align 2, !tbaa !7
  %i.ck = getelementptr i8, ptr %i.ch, i64 -2
  store i8 %i.cj, ptr %i.ck, align 1, !tbaa !7
  store i8 %5, ptr %i.bj, align 1, !tbaa !7
  br label %._crit_edge

._crit_edge.loopexit69:                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.us51
  %i.cl = load i8, ptr %i.ap, align 1, !tbaa !7
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bt, i64 1
  store i8 %i.cl, ptr %i.cm, align 1, !tbaa !7
  %i.cn = load i8, ptr %i.ao, align 2, !tbaa !7
  store i8 %i.cn, ptr %i.bt, align 1, !tbaa !7
  br label %._crit_edge

._crit_edge.loopexit70:                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit
  store i8 %i.bn, ptr %i.cc, align 1, !tbaa !7
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit70, %._crit_edge.loopexit69, %._crit_edge.loopexit68, %._crit_edge.loopexit
  %.us-phi31 = phi i64 [ %i.ak, %._crit_edge.loopexit69 ], [ 1, %._crit_edge.loopexit ], [ %i.ak, %._crit_edge.loopexit68 ], [ %i.ak, %._crit_edge.loopexit70 ]
  %.us-phi32 = phi ptr [ %i.bt, %._crit_edge.loopexit69 ], [ %i.ba, %._crit_edge.loopexit ], [ %i.bj, %._crit_edge.loopexit68 ], [ %i.cc, %._crit_edge.loopexit70 ]
  %.pn55.i20.le = getelementptr i8, ptr %.us-phi32, i64 %.us-phi31
  br label %bb.f

bb.f:                                             ; preds = %_ZSt12__to_chars_iIhENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yEEES2_IS4_nES2_IS4_oES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i.exit._crit_edge, %._crit_edge
  %.pn55.i.pn.lcssa = phi ptr [ %.pn55.i20.le, %._crit_edge ], [ %.pn55.i, %_ZSt12__to_chars_iIhENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yEEES2_IS4_nES2_IS4_oES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i.exit._crit_edge ]
  %i.co = load ptr, ptr %0, align 8, !tbaa !309
  %i.cp = ptrtoint ptr %.pn55.i.pn.lcssa to i64
  %i.cq = ptrtoint ptr %i.co to i64
  %i.cr = sub i64 %i.cp, %i.cq
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.cr, i8 noundef signext 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit13 unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %.split

.split:                                           ; preds = %.split.us, %.split.split.split, %.split.split.split.us, %.split.split.us, %bb.g
  %.pn10 = phi { ptr, i32 } [ %i.cs, %bb.g ], [ %i.bc, %.split.us ], [ %i.bm, %.split.split.us ], [ %i.cf, %.split.split.split ], [ %i.bw, %.split.split.split.us ]
  %i.ct = load ptr, ptr %0, align 8, !tbaa !309   ; 2 uses
  %i.cu = icmp eq ptr %i.ct, %i.a
  br i1 %i.cu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.split
  %i.cv = load i64, ptr %i.a, align 8, !tbaa !7
  %i.cw = add i64 %i.cv, 1
  tail call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cw) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit13: ; preds = %bb.f
  ret void

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn10
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal7ToCharsItJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_DpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i16 noundef zeroext %1) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 9 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !1456
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 15, i8 noundef signext 0)
  %i.b = load ptr, ptr %0, align 8, !tbaa !309    ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !1457
  %i.e = add i64 %i.d, -1                         ; 2 uses
  %i.f = zext i16 %1 to i32                       ; 4 uses
  %i.g = icmp eq i64 %i.e, 0
  %i.h = icmp eq i16 %1, 0                        ; 2 uses
  br i1 %i.g, label %.lr.ph, label %bb.a, !prof !206

bb.a:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit
  br i1 %i.h, label %_ZSt12__to_chars_iItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yEEES2_IS4_nES2_IS4_oES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i.exit._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ult i16 %1, 10
  br i1 %i.i, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b
  %i.j = icmp ult i16 %1, 100
  br i1 %i.j, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.k = icmp ult i16 %1, 1000
  br i1 %i.k, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = icmp ult i16 %1, 10000
  %..i = select i1 %i.l, i32 4, i32 5
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i:  ; preds = %bb.d, %bb.c, %.lr.ph.i.i.i, %bb.b
  %.0.i.i.i = phi i32 [ %..i, %bb.d ], [ 3, %bb.c ], [ 2, %.lr.ph.i.i.i ], [ 1, %bb.b ] ; 2 uses
  %i.m = zext nneg i32 %.0.i.i.i to i64           ; 3 uses
  %i.n = icmp slt i64 %i.e, %i.m
  br i1 %i.n, label %.lr.ph.thread, label %bb.e, !prof !206

.lr.ph.thread:                                    ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i
  %i.o = icmp ult i16 %1, 10000
  %..i1583 = select i1 %i.o, i32 4, i32 5
  br label %.lr.ph.split

bb.e:                                             ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i
  %i.p = icmp ugt i16 %1, 99
  br i1 %i.p, label %.lr.ph.preheader.i.i.i, label %._crit_edge.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.e
  %i.q = add nsw i32 %.0.i.i.i, -1
  br label %.lr.ph.i9.i.i

.lr.ph.i9.i.i:                                    ; preds = %.lr.ph.i9.i.i, %.lr.ph.preheader.i.i.i
  %.020.i.i.i = phi i32 [ %i.t, %.lr.ph.i9.i.i ], [ %i.f, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %.01819.i.i.i = phi i32 [ %i.ae, %.lr.ph.i9.i.i ], [ %i.q, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.r = urem i32 %.020.i.i.i, 100
  %i.s = shl nuw nsw i32 %i.r, 1
  %i.t = udiv i32 %.020.i.i.i, 100                ; 2 uses
  %i.u = zext nneg i32 %i.s to i64
  %i.v = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.u ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  %i.x = load i8, ptr %i.w, align 1, !tbaa !7
  %i.y = zext i32 %.01819.i.i.i to i64
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.y
  store i8 %i.x, ptr %i.z, align 1, !tbaa !7
  %i.aa = load i8, ptr %i.v, align 2, !tbaa !7
  %i.ab = add i32 %.01819.i.i.i, -1
  %i.ac = zext i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ac
  store i8 %i.aa, ptr %i.ad, align 1, !tbaa !7
  %i.ae = add i32 %.01819.i.i.i, -2
  %i.af = icmp samesign ugt i32 %.020.i.i.i, 9999
  br i1 %i.af, label %.lr.ph.i9.i.i, label %._crit_edge.i.i.i, !llvm.loop !1459

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i9.i.i, %bb.e
  %.0.lcssa.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.t, %.lr.ph.i9.i.i ] ; 3 uses
  %i.ag = icmp samesign ugt i32 %.0.lcssa.i.i.i, 9
  br i1 %i.ag, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %i.ah = shl nuw nsw i32 %.0.lcssa.i.i.i, 1
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.ai ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !7
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.al, ptr %i.am, align 1, !tbaa !7
  %i.an = load i8, ptr %i.aj, align 2, !tbaa !7
  br label %_ZSt12__to_chars_iItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yEEES2_IS4_nES2_IS4_oES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i.exit._crit_edge

bb.g:                                             ; preds = %._crit_edge.i.i.i
  %i.ao = trunc nuw nsw i32 %.0.lcssa.i.i.i to i8
  %i.ap = or disjoint i8 %i.ao, 48
  br label %_ZSt12__to_chars_iItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yEEES2_IS4_nES2_IS4_oES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i.exit._crit_edge

_ZSt12__to_chars_iItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yEEES2_IS4_nES2_IS4_oES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i.exit._crit_edge: ; preds = %bb.g, %bb.f, %bb.a
  %.sink96.i = phi i8 [ 48, %bb.a ], [ %i.an, %bb.f ], [ %i.ap, %bb.g ]
  %.sink.i = phi i64 [ 1, %bb.a ], [ %i.m, %bb.f ], [ %i.m, %bb.g ]
  store i8 %.sink96.i, ptr %i.b, align 1, !tbaa !7
  %.pn63.i = getelementptr i8, ptr %i.b, i64 %.sink.i
  br label %bb.k

.lr.ph:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit
  %i.aq = icmp ult i16 %1, 10000
  %..i15 = select i1 %i.aq, i32 4, i32 5
  br i1 %i.h, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %.pre70 = load ptr, ptr %0, align 8, !tbaa !309
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.us, %.lr.ph.split.us.preheader
  %i.ar = phi ptr [ %.pre70, %.lr.ph.split.us.preheader ], [ %i.aw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.us ]
  %i.as = icmp eq ptr %i.ar, %i.a
  %i.at = load i64, ptr %i.a, align 8
  %i.au = shl i64 %i.at, 1
  %i.av = select i1 %i.as, i64 30, i64 %i.au
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.av, i8 noundef signext 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.us unwind label %.split.us

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.us: ; preds = %.lr.ph.split.us
  %i.aw = load ptr, ptr %0, align 8, !tbaa !309   ; 3 uses
  %i.ax = load i64, ptr %i.c, align 8, !tbaa !1457
  %.not59 = icmp eq i64 %i.ax, 1
  br i1 %.not59, label %.lr.ph.split.us, label %._crit_edge.loopexit, !prof !206

.split.us:                                        ; preds = %.lr.ph.split.us
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %.split

.lr.ph.split:                                     ; preds = %.lr.ph.thread, %.lr.ph
  %..i1584 = phi i32 [ %..i1583, %.lr.ph.thread ], [ %..i15, %.lr.ph ]
  %i.az = icmp ugt i16 %1, 99
  br i1 %i.az, label %.lr.ph.split.split.us.preheader, label %.lr.ph.split.split

.lr.ph.split.split.us.preheader:                  ; preds = %.lr.ph.split
  %i.ba = icmp ult i16 %1, 1000
  %.pre68 = load ptr, ptr %0, align 8, !tbaa !309
  %spec.select = select i1 %i.ba, i32 3, i32 %..i1584 ; 2 uses
  %i.bb = zext nneg i32 %spec.select to i64       ; 2 uses
  br label %.lr.ph.split.split.us

.lr.ph.split.split.us:                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.us44, %.lr.ph.split.split.us.preheader
  %i.bc = phi ptr [ %.pre68, %.lr.ph.split.split.us.preheader ], [ %i.bh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.us44 ]
end_hunk_0
