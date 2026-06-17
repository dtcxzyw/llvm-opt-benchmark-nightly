inline.NumInlined: 4879
inline.NumDeleted: 1465
begin_hunk_0_@_ZN11OpenImageIO4v3_17Strutil14unescape_charsB5cxx11ENS0_17basic_string_viewIcSt11char_traitsIcEEE:bb.a
  %or.cond26 = icmp eq i8 %i.ac, 48
  br i1 %or.cond26, label %.lr.ph, label %.lr.ph108._crit_edge

.lr.ph:                                           ; preds = %bb.n, %bb.p
  %.0104 = phi i32 [ %i.ao, %bb.p ], [ 0, %bb.n ] ; 2 uses
  %.070103 = phi i8 [ %i.af, %bb.p ], [ 0, %bb.n ]
  %.071102 = phi i8 [ %i.an, %bb.p ], [ %i.x, %bb.n ]
  %.1101 = phi i64 [ %i.aj, %bb.p ], [ %.074107, %bb.n ]
  %i.ad = shl i8 %.070103, 3
  %i.ae = add nsw i8 %.071102, -48
  %i.af = or i8 %i.ad, %i.ae                      ; 3 uses
  %i.ag = load i64, ptr %i.q, align 8, !tbaa !107 ; 3 uses
  %i.ah = icmp ugt i64 %.075106, %i.ag
  br i1 %i.ah, label %bb.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i80

bb.o:                                             ; preds = %.lr.ph
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.99, i64 noundef %.075106, i64 noundef %i.ag) #47
          to label %.noexc82 unwind label %.loopexit.split-lp

.noexc82:                                         ; preds = %bb.o
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i80: ; preds = %.lr.ph
  %i.ai = icmp ne i64 %i.ag, %.075106
  %spec.select.i.i81 = zext i1 %i.ai to i64
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.075106, i64 noundef %spec.select.i.i81)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit84 unwind label %.loopexit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit84: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i80
  %i.aj = add i64 %.1101, -1                      ; 4 uses
  %i.ak = icmp ult i64 %i.v, %i.aj
  br i1 %i.ak, label %bb.p, label %.lr.ph108._crit_edge.sink.split

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit84
  %i.al = load ptr, ptr %0, align 8, !tbaa !110
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.v
  %i.an = load i8, ptr %i.am, align 1, !tbaa !7   ; 2 uses
  %i.ao = add nuw nsw i32 %.0104, 1
  %i.ap = icmp samesign ult i32 %.0104, 2
  %i.aq = and i8 %i.an, -8
  %i.ar = icmp eq i8 %i.aq, 48
  %i.as = select i1 %i.ap, i1 %i.ar, i1 false
  br i1 %i.as, label %.lr.ph, label %.lr.ph108._crit_edge.sink.split, !llvm.loop !211

.loopexit:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i80
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

.loopexit.split-lp:                               ; preds = %bb.o
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.q:                                             ; preds = %.loopexit, %.loopexit.split-lp, %.loopexit85, %.loopexit.split-lp86
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp88, %.loopexit.split-lp86 ], [ %lpad.loopexit87, %.loopexit85 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.at = load ptr, ptr %0, align 8, !tbaa !110   ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.q
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !7
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.ax) #48
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn

.lr.ph108._crit_edge.sink.split:                  ; preds = %bb.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit84, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m
  %.sink = phi i8 [ 7, %bb.m ], [ 12, %bb.l ], [ 13, %bb.k ], [ 8, %bb.j ], [ 11, %bb.i ], [ 9, %bb.h ], [ 10, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit ], [ %i.af, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit84 ], [ %i.af, %bb.p ]
  %.3.ph = phi i64 [ %i.ab, %bb.m ], [ %i.ab, %bb.l ], [ %i.ab, %bb.k ], [ %i.ab, %bb.j ], [ %i.ab, %bb.i ], [ %i.ab, %bb.h ], [ %i.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit ], [ %i.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit84 ], [ %i.aj, %bb.p ]
  %i.ay = load ptr, ptr %0, align 8, !tbaa !110
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.075106
  store i8 %.sink, ptr %i.az, align 1, !tbaa !7
  br label %.lr.ph108._crit_edge

.lr.ph108._crit_edge:                             ; preds = %.lr.ph108._crit_edge.sink.split, %.lr.ph108, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit, %bb.n
  %.3 = phi i64 [ %.074107, %bb.n ], [ %i.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit ], [ %.074107, %.lr.ph108 ], [ %.3.ph, %.lr.ph108._crit_edge.sink.split ] ; 2 uses
  %i.ba = icmp ult i64 %i.v, %.3
  br i1 %i.ba, label %.lr.ph108, label %._crit_edge109, !llvm.loop !212

._crit_edge109:                                   ; preds = %.lr.ph108._crit_edge, %_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv.exit.thread, %_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN11OpenImageIO4v3_17Strutil8wordwrapB5cxx11ENS0_17basic_string_viewIcSt11char_traitsIcEEEiiS5_S5_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef captures(none) dead_on_return %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) dead_on_return %4, ptr nofree noundef readonly captures(none) dead_on_return %5) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 24 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %9 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.b = add nsw i32 %3, 20
  %i.c = icmp slt i32 %2, %i.b
  br i1 %i.c, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !213)
  %i.d = load ptr, ptr %1, align 8, !tbaa !80, !noalias !213 ; 3 uses
  %.not.not.i = icmp eq ptr %i.d, null
  br i1 %.not.not.i, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !83, !noalias !213 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !114, !alias.scope !213
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13, !noalias !213
  store i64 %i.f, ptr %i.a, align 8, !tbaa !95, !noalias !213
  %i.h = icmp ugt i64 %i.f, 15
  br i1 %i.h, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.c
  %i.i = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !110, !alias.scope !213
  %i.j = load i64, ptr %i.a, align 8, !tbaa !95, !noalias !213
  store i64 %i.j, ptr %i.g, align 8, !tbaa !7, !alias.scope !213
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.c
  %i.k = phi ptr [ %i.i, %.noexc.i.i ], [ %i.g, %bb.c ] ; 2 uses
  switch i64 %i.f, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.l = load i8, ptr %i.d, align 1, !tbaa !7
  store i8 %i.l, ptr %i.k, align 1, !tbaa !7
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr nonnull align 1 %i.d, i64 %i.f, i1 false)
  br label %bb.f

.thread.i:                                        ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.m, ptr %0, align 8, !tbaa !114, !alias.scope !213
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.n, align 8, !tbaa !107, !alias.scope !213
  store i8 0, ptr %i.m, align 8, !tbaa !7, !alias.scope !213
  br label %_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv.exit

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i.i
  %i.o = load i64, ptr %i.a, align 8, !tbaa !95, !noalias !213 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.o, ptr %i.p, align 8, !tbaa !107, !alias.scope !213
  %i.q = load ptr, ptr %0, align 8, !tbaa !110, !alias.scope !213
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  store i8 0, ptr %i.r, align 1, !tbaa !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13, !noalias !213
  br label %_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv.exit

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %6)
  %i.s = sub nsw i32 %2, %3                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  %i.t = load ptr, ptr %4, align 8, !tbaa !80
  store ptr %i.t, ptr %8, align 8, !tbaa !80
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !83
  store i64 %i.w, ptr %i.u, align 8, !tbaa !83
  %i.x = load ptr, ptr %5, align 8, !tbaa !80
  store ptr %i.x, ptr %9, align 8, !tbaa !80
  %i.y = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !83
  store i64 %i.aa, ptr %i.y, align 8, !tbaa !83
  invoke void @_ZN11OpenImageIO4v3_17Strutil6concatB5cxx11ENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull dead_on_return %8, ptr noundef nonnull dead_on_return %9)
          to label %.preheader unwind label %bb.o

.preheader:                                       ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !83 ; 3 uses
  %i.ad = trunc i64 %i.ac to i32
  %i.ae = icmp slt i32 %i.s, %i.ad
  br i1 %i.ae, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ag = sext i32 %i.s to i64                    ; 2 uses
  %i.ah = sext i32 %3 to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %10, i64 8
  %.pre = load ptr, ptr %1, align 8, !tbaa !80, !noalias !216
  br label %bb.h

.backedge:                                        ; preds = %_ZSt7find_ifIPKcN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEE9traits_eqEET_S9_S9_T0_.exit.i, %._crit_edge.i.i.i.i, %bb.aa
  %i.ak = trunc i64 %i.cy to i32
  %i.al = icmp slt i32 %i.s, %i.ak
  br i1 %i.al, label %bb.h, label %._crit_edge

bb.h:                                             ; preds = %.lr.ph, %.backedge
  %i.am = phi ptr [ %.pre, %.lr.ph ], [ %i.cx, %.backedge ] ; 6 uses
  %i.an = phi i64 [ %i.ac, %.lr.ph ], [ %i.cy, %.backedge ] ; 8 uses
  %i.ao = load ptr, ptr %7, align 8, !tbaa !110   ; 2 uses
  %i.ap = load i64, ptr %i.af, align 8, !tbaa !107 ; 2 uses
  %i.aq = call i64 @llvm.usub.sat.i64(i64 %i.an, i64 %i.ag) ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.an ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ap
  %.not812.i.i = icmp eq i64 %i.an, %i.aq         ; 2 uses
  %.not10.i.i = icmp samesign eq i64 %i.ap, 0
  %or.cond.i = select i1 %.not812.i.i, i1 true, i1 %.not10.i.i
  br i1 %or.cond.i, label %_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEE12find_last_ofES4_m.exit, label %.preheader.i.preheader.i

.preheader.i.preheader.i:                         ; preds = %bb.h
  %i.at = sub i64 0, %i.aq
  %i.au = getelementptr inbounds i8, ptr %i.ar, i64 %i.at
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %._crit_edge.i.i, %.preheader.i.preheader.i
  %.sroa.010.0.i = phi ptr [ %i.av, %._crit_edge.i.i ], [ %i.au, %.preheader.i.preheader.i ] ; 3 uses
  %i.av = getelementptr inbounds i8, ptr %.sroa.010.0.i, i64 -1 ; 3 uses
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !7, !noalias !219
  br label %bb.j

bb.i:                                             ; preds = %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %.0611.i.i, i64 1 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ax, %i.as
  br i1 %.not.i.i, label %._crit_edge.i.i, label %bb.j, !llvm.loop !222

bb.j:                                             ; preds = %bb.i, %.preheader.i.i
  %.0611.i.i = phi ptr [ %i.ao, %.preheader.i.i ], [ %i.ax, %bb.i ] ; 2 uses
  %i.ay = load i8, ptr %.0611.i.i, align 1, !tbaa !7, !noalias !219
  %i.az = icmp eq i8 %i.aw, %i.ay
  br i1 %i.az, label %_ZSt13find_first_ofISt16reverse_iteratorIPKcES2_PDoFbRS1_S4_EET_S7_S7_T0_S8_T1_.exit.i, label %bb.i

._crit_edge.i.i:                                  ; preds = %bb.i
  %.not8.i.i = icmp eq ptr %i.av, %i.am
  br i1 %.not8.i.i, label %_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEE12find_last_ofES4_m.exit, label %.preheader.i.i, !llvm.loop !223

_ZSt13find_first_ofISt16reverse_iteratorIPKcES2_PDoFbRS1_S4_EET_S7_S7_T0_S8_T1_.exit.i: ; preds = %bb.j
  %i.ba = icmp eq ptr %.sroa.010.0.i, %i.am
  br i1 %i.ba, label %_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEE12find_last_ofES4_m.exit, label %bb.k

bb.k:                                             ; preds = %_ZSt13find_first_ofISt16reverse_iteratorIPKcES2_PDoFbRS1_S4_EET_S7_S7_T0_S8_T1_.exit.i
  %i.bb = ptrtoint ptr %i.ar to i64
  %i.bc = ptrtoint ptr %.sroa.010.0.i to i64
  %i.bd = xor i64 %i.bb, -1
  %i.be = add i64 %i.an, %i.bd
  %i.bf = add i64 %i.be, %i.bc
  br label %_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEE12find_last_ofES4_m.exit

_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEE12find_last_ofES4_m.exit: ; preds = %._crit_edge.i.i, %bb.h, %_ZSt13find_first_ofISt16reverse_iteratorIPKcES2_PDoFbRS1_S4_EET_S7_S7_T0_S8_T1_.exit.i, %bb.k
  %i.bg = phi i64 [ %i.bf, %bb.k ], [ -1, %_ZSt13find_first_ofISt16reverse_iteratorIPKcES2_PDoFbRS1_S4_EET_S7_S7_T0_S8_T1_.exit.i ], [ -1, %bb.h ], [ -1, %._crit_edge.i.i ] ; 4 uses
  %i.bh = load i64, ptr %i.z, align 8, !tbaa !83  ; 2 uses
  %.not = icmp eq i64 %i.bh, 0
  br i1 %.not, label %_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit, label %bb.l

bb.l:                                             ; preds = %_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEE12find_last_ofES4_m.exit
  %i.bi = load ptr, ptr %5, align 8, !tbaa !80    ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bh
  br i1 %.not812.i.i, label %_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEE12find_last_ofES4_m.exit47.thread, label %.preheader.i.preheader.i39

.preheader.i.preheader.i39:                       ; preds = %bb.l
  %i.bk = sub i64 0, %i.aq
  %i.bl = getelementptr inbounds i8, ptr %i.ar, i64 %i.bk
  br label %.preheader.i.i40

.preheader.i.i40:                                 ; preds = %._crit_edge.i.i44, %.preheader.i.preheader.i39
  %.sroa.010.0.i41 = phi ptr [ %i.bm, %._crit_edge.i.i44 ], [ %i.bl, %.preheader.i.preheader.i39 ] ; 3 uses
  %i.bm = getelementptr inbounds i8, ptr %.sroa.010.0.i41, i64 -1 ; 3 uses
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !7, !noalias !224
  br label %bb.n

bb.m:                                             ; preds = %bb.n
  %i.bo = getelementptr inbounds nuw i8, ptr %.0611.i.i42, i64 1 ; 2 uses
  %.not.i.i43 = icmp eq ptr %i.bo, %i.bj
  br i1 %.not.i.i43, label %._crit_edge.i.i44, label %bb.n, !llvm.loop !222

bb.n:                                             ; preds = %bb.m, %.preheader.i.i40
  %.0611.i.i42 = phi ptr [ %i.bi, %.preheader.i.i40 ], [ %i.bo, %bb.m ] ; 2 uses
  %i.bp = load i8, ptr %.0611.i.i42, align 1, !tbaa !7, !noalias !224
  %i.bq = icmp eq i8 %i.bn, %i.bp
  br i1 %i.bq, label %_ZSt13find_first_ofISt16reverse_iteratorIPKcES2_PDoFbRS1_S4_EET_S7_S7_T0_S8_T1_.exit.i46, label %bb.m

._crit_edge.i.i44:                                ; preds = %bb.m
  %.not8.i.i45 = icmp eq ptr %i.bm, %i.am
  br i1 %.not8.i.i45, label %_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEE12find_last_ofES4_m.exit47.thread, label %.preheader.i.i40, !llvm.loop !223

_ZSt13find_first_ofISt16reverse_iteratorIPKcES2_PDoFbRS1_S4_EET_S7_S7_T0_S8_T1_.exit.i46: ; preds = %bb.n
  %i.br = icmp eq ptr %.sroa.010.0.i41, %i.am
  br i1 %i.br, label %_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEE12find_last_ofES4_m.exit47.thread, label %_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEE12find_last_ofES4_m.exit47

_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEE12find_last_ofES4_m.exit47: ; preds = %_ZSt13find_first_ofISt16reverse_iteratorIPKcES2_PDoFbRS1_S4_EET_S7_S7_T0_S8_T1_.exit.i46
  %i.bs = ptrtoint ptr %i.ar to i64
  %i.bt = ptrtoint ptr %.sroa.010.0.i41 to i64
  %i.bu = xor i64 %i.bs, -1
  %i.bv = add i64 %i.an, %i.bu
  %i.bw = add i64 %i.bv, %i.bt                    ; 2 uses
  %.not29 = icmp ult i64 %i.bw, %i.bg
  br i1 %.not29, label %_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit, label %_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEE12find_last_ofES4_m.exit47.thread

_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEE12find_last_ofES4_m.exit47.thread: ; preds = %._crit_edge.i.i44, %bb.l, %_ZSt13find_first_ofISt16reverse_iteratorIPKcES2_PDoFbRS1_S4_EET_S7_S7_T0_S8_T1_.exit.i46, %_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEE12find_last_ofES4_m.exit47
  %i.bx = phi i64 [ %i.bw, %_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEE12find_last_ofES4_m.exit47 ], [ -1, %_ZSt13find_first_ofISt16reverse_iteratorIPKcES2_PDoFbRS1_S4_EET_S7_S7_T0_S8_T1_.exit.i46 ], [ -1, %bb.l ], [ -1, %._crit_edge.i.i44 ] ; 2 uses
  %i.by = icmp ult i64 %i.bx, %i.an
  %i.bz = add i64 %i.bx, 1
  %spec.select = select i1 %i.by, i64 %i.bz, i64 %i.bg
  br label %_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit

bb.o:                                             ; preds = %bb.g
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67

_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEE12find_last_ofES4_m.exit47.thread, %_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEE12find_last_ofES4_m.exit47, %_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEE12find_last_ofES4_m.exit
  %.1 = phi i64 [ %i.bg, %_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEE12find_last_ofES4_m.exit ], [ %i.bg, %_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEE12find_last_ofES4_m.exit47 ], [ %spec.select, %_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEE12find_last_ofES4_m.exit47.thread ] ; 2 uses
  %i.cb = icmp eq i64 %.1, -1
  %spec.select35 = select i1 %i.cb, i64 %i.ag, i64 %.1
  %spec.select35.fr = freeze i64 %spec.select35   ; 4 uses
  %i.cc = load ptr, ptr %6, align 8, !tbaa !96
  %i.cd = getelementptr i8, ptr %i.cc, i64 -24
  %i.ce = load i64, ptr %i.cd, align 8
  %i.cf = getelementptr inbounds i8, ptr %6, i64 %i.ce
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !98
  %i.ci = icmp eq i32 %i.ch, 0
  br i1 %i.ci, label %bb.p, label %_ZN11OpenImageIO4v3_1lsERSoRKNS0_17basic_string_viewIcSt11char_traitsIcEEE.exit

bb.p:                                             ; preds = %_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  %.not.i.not = icmp eq i64 %i.an, 0
  %.sroa.069.0 = select i1 %.not.i.not, ptr null, ptr %i.am
  %i.cj = call i64 @llvm.umin.i64(i64 %spec.select35.fr, i64 %i.an)
  %i.ck = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %.sroa.069.0, i64 noundef %i.cj)
          to label %_ZN11OpenImageIO4v3_1lsERSoRKNS0_17basic_string_viewIcSt11char_traitsIcEEE.exit unwind label %bb.ac ; 0 uses

_ZN11OpenImageIO4v3_1lsERSoRKNS0_17basic_string_viewIcSt11char_traitsIcEEE.exit: ; preds = %_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit, %bb.p
  %i.cl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull @.str.32, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.ac ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN11OpenImageIO4v3_1lsERSoRKNS0_17basic_string_viewIcSt11char_traitsIcEEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #13
  store ptr %i.ai, ptr %10, align 8, !tbaa !114
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef %i.ah, i8 noundef signext 32)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit unwind label %bb.ad

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.cm = load ptr, ptr %10, align 8, !tbaa !110
  %i.cn = load i64, ptr %i.aj, align 8, !tbaa !107
  %i.co = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %i.cm, i64 noundef %i.cn)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.ae ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit
  %i.cp = load ptr, ptr %10, align 8, !tbaa !110  ; 2 uses
  %i.cq = icmp eq ptr %i.cp, %i.ai
  br i1 %i.cq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.cr = load i64, ptr %i.ai, align 8, !tbaa !7
  %i.cs = add i64 %i.cr, 1
  call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.cs) #48
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  %i.ct = load i64, ptr %i.ab, align 8, !tbaa !83, !noalias !227 ; 2 uses
  %.not.i52 = icmp ult i64 %spec.select35.fr, %i.ct
  br i1 %.not.i52, label %bb.q, label %_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit55

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cu = sub nuw i64 %i.ct, %spec.select35.fr
  %i.cv = load ptr, ptr %1, align 8, !tbaa !80, !noalias !227
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 %spec.select35.fr
  br label %_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit55

_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit55: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.q
  %.sroa.0.0 = phi ptr [ %i.cw, %bb.q ], [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %.sroa.5.0 = phi i64 [ %i.cu, %bb.q ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  store ptr %.sroa.0.0, ptr %1, align 8, !tbaa !13
  br label %bb.r

bb.r:                                             ; preds = %bb.ab, %_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit55
  %i.cx = phi ptr [ %.sroa.0.0, %_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit55 ], [ %i.en, %bb.ab ] ; 3 uses
  %i.cy = phi i64 [ %.sroa.5.0, %_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit55 ], [ %i.eo, %bb.ab ] ; 6 uses
  store i64 %i.cy, ptr %i.ab, align 8, !tbaa !95
  %i.cz = load i8, ptr %i.cx, align 1, !tbaa !7   ; 7 uses
  %i.da = load i64, ptr %i.v, align 8, !tbaa !83  ; 3 uses
  %i.db = load ptr, ptr %4, align 8, !tbaa !80    ; 5 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.da ; 2 uses
  %i.dd = ptrtoint ptr %i.dc to i64
  %i.de = ashr i64 %i.da, 2                       ; 2 uses
  %i.df = icmp sgt i64 %i.de, 0
  br i1 %i.df, label %.lr.ph.preheader.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.r
  %i.dg = and i64 %i.da, -4
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.db, i64 %i.dg
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.v, %.lr.ph.preheader.i.i.i.i
  %.047.i.i.i.i = phi i64 [ %i.dt, %bb.v ], [ %i.de, %.lr.ph.preheader.i.i.i.i ] ; 2 uses
  %.02946.i.i.i.i = phi ptr [ %i.ds, %bb.v ], [ %i.db, %.lr.ph.preheader.i.i.i.i ] ; 9 uses
  %i.dh = load i8, ptr %.02946.i.i.i.i, align 1, !tbaa !7
  %i.di = icmp eq i8 %i.cz, %i.dh
  br i1 %i.di, label %_ZSt7find_ifIPKcN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEE9traits_eqEET_S9_S9_T0_.exit.i, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i.i.i.i
  %i.dj = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 1
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !7
  %i.dl = icmp eq i8 %i.cz, %i.dk
  br i1 %i.dl, label %_ZSt7find_ifIPKcN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEE9traits_eqEET_S9_S9_T0_.exit.i.loopexit.split.loop.exit134, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dm = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 2
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !7
  %i.do = icmp eq i8 %i.cz, %i.dn
  br i1 %i.do, label %_ZSt7find_ifIPKcN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEE9traits_eqEET_S9_S9_T0_.exit.i.loopexit.split.loop.exit132, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dp = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 3
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !7
  %i.dr = icmp eq i8 %i.cz, %i.dq
  br i1 %i.dr, label %_ZSt7find_ifIPKcN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEE9traits_eqEET_S9_S9_T0_.exit.i.loopexit.split.loop.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ds = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 4
  %i.dt = add nsw i64 %.047.i.i.i.i, -1
  %i.du = icmp sgt i64 %.047.i.i.i.i, 1
  br i1 %i.du, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !230

._crit_edge.i.i.i.i:                              ; preds = %bb.v, %bb.r
  %.029.lcssa.i.i.i.i = phi ptr [ %i.db, %bb.r ], [ %scevgep.i.i.i.i, %bb.v ] ; 6 uses
  %.pre-phi.i.i.i.i = ptrtoint ptr %.029.lcssa.i.i.i.i to i64
  %i.dv = sub i64 %i.dd, %.pre-phi.i.i.i.i
  switch i64 %i.dv, label %.backedge [
    i64 3, label %bb.w
    i64 2, label %bb.y
    i64 1, label %bb.aa
  ]

bb.w:                                             ; preds = %._crit_edge.i.i.i.i
  %i.dw = load i8, ptr %.029.lcssa.i.i.i.i, align 1, !tbaa !7
  %i.dx = icmp eq i8 %i.cz, %i.dw
  br i1 %i.dx, label %_ZSt7find_ifIPKcN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEE9traits_eqEET_S9_S9_T0_.exit.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dy = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i, i64 1
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi ptr [ %i.dy, %bb.x ], [ %.029.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.dz = load i8, ptr %.1.i.i.i.i, align 1, !tbaa !7
  %i.ea = icmp eq i8 %i.cz, %i.dz
  br i1 %i.ea, label %_ZSt7find_ifIPKcN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEE9traits_eqEET_S9_S9_T0_.exit.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.eb = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 1
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %._crit_edge.i.i.i.i
  %.2.i.i.i.i = phi ptr [ %i.eb, %bb.z ], [ %.029.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.ec = load i8, ptr %.2.i.i.i.i, align 1, !tbaa !7
  %i.ed = icmp eq i8 %i.cz, %i.ec
  br i1 %i.ed, label %_ZSt7find_ifIPKcN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEE9traits_eqEET_S9_S9_T0_.exit.i, label %.backedge

_ZSt7find_ifIPKcN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEE9traits_eqEET_S9_S9_T0_.exit.i.loopexit.split.loop.exit: ; preds = %bb.u
  %i.ee = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 3
  br label %_ZSt7find_ifIPKcN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEE9traits_eqEET_S9_S9_T0_.exit.i

_ZSt7find_ifIPKcN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEE9traits_eqEET_S9_S9_T0_.exit.i.loopexit.split.loop.exit132: ; preds = %bb.t
  %i.ef = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 2
  br label %_ZSt7find_ifIPKcN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEE9traits_eqEET_S9_S9_T0_.exit.i

_ZSt7find_ifIPKcN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEE9traits_eqEET_S9_S9_T0_.exit.i.loopexit.split.loop.exit134: ; preds = %bb.s
  %i.eg = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 1
  br label %_ZSt7find_ifIPKcN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEE9traits_eqEET_S9_S9_T0_.exit.i

_ZSt7find_ifIPKcN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEE9traits_eqEET_S9_S9_T0_.exit.i: ; preds = %.lr.ph.i.i.i.i, %_ZSt7find_ifIPKcN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEE9traits_eqEET_S9_S9_T0_.exit.i.loopexit.split.loop.exit, %_ZSt7find_ifIPKcN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEE9traits_eqEET_S9_S9_T0_.exit.i.loopexit.split.loop.exit132, %_ZSt7find_ifIPKcN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEE9traits_eqEET_S9_S9_T0_.exit.i.loopexit.split.loop.exit134, %bb.aa, %bb.y, %bb.w
  %.028.i.i.i.i = phi ptr [ %.1.i.i.i.i, %bb.y ], [ %.029.lcssa.i.i.i.i, %bb.w ], [ %.2.i.i.i.i, %bb.aa ], [ %i.eg, %_ZSt7find_ifIPKcN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEE9traits_eqEET_S9_S9_T0_.exit.i.loopexit.split.loop.exit134 ], [ %i.ee, %_ZSt7find_ifIPKcN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEE9traits_eqEET_S9_S9_T0_.exit.i.loopexit.split.loop.exit ], [ %i.ef, %_ZSt7find_ifIPKcN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEE9traits_eqEET_S9_S9_T0_.exit.i.loopexit.split.loop.exit132 ], [ %.02946.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.eh = icmp eq ptr %.028.i.i.i.i, %i.dc
  %i.ei = ptrtoint ptr %.028.i.i.i.i to i64
  %i.ej = ptrtoint ptr %i.db to i64
  %i.ek = sub i64 %i.ei, %i.ej
  %i.el = icmp eq i64 %i.ek, -1
  %or.cond = select i1 %i.eh, i1 true, i1 %i.el
  br i1 %or.cond, label %.backedge, label %bb.ab, !llvm.loop !231

bb.ab:                                            ; preds = %_ZSt7find_ifIPKcN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEE9traits_eqEET_S9_S9_T0_.exit.i
  %i.em = icmp ne i64 %i.cy, 0
  %spec.select.i = zext i1 %i.em to i64           ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.cx, i64 %spec.select.i ; 2 uses
  store ptr %i.en, ptr %1, align 8, !tbaa !80
  %i.eo = sub i64 %i.cy, %spec.select.i
  br label %bb.r, !llvm.loop !232

bb.ac:                                            ; preds = %_ZN11OpenImageIO4v3_1lsERSoRKNS0_17basic_string_viewIcSt11char_traitsIcEEE.exit, %bb.p
  %i.ep = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ad:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.eq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58

bb.ae:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit
  %i.er = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.es = load ptr, ptr %10, align 8, !tbaa !110  ; 2 uses
  %i.et = icmp eq ptr %i.es, %i.ai
  br i1 %i.et, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56: ; preds = %bb.ae
  %i.eu = load i64, ptr %i.ai, align 8, !tbaa !7
  %i.ev = add i64 %i.eu, 1
  call void @_ZdlPvm(ptr noundef %i.es, i64 noundef %i.ev) #48
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56, %bb.ad
  %.pn = phi { ptr, i32 } [ %i.eq, %bb.ad ], [ %i.er, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56 ], [ %i.er, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  br label %.body

._crit_edge:                                      ; preds = %.backedge, %.preheader
  %.lcssa = phi i64 [ %i.ac, %.preheader ], [ %i.cy, %.backedge ]
  %i.ew = load ptr, ptr %6, align 8, !tbaa !96
  %i.ex = getelementptr i8, ptr %i.ew, i64 -24
  %i.ey = load i64, ptr %i.ex, align 8
  %i.ez = getelementptr inbounds i8, ptr %6, i64 %i.ey
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 32
  %i.fb = load i32, ptr %i.fa, align 8, !tbaa !98
  %i.fc = icmp eq i32 %i.fb, 0
  br i1 %i.fc, label %bb.af, label %_ZN11OpenImageIO4v3_1lsERSoRKNS0_17basic_string_viewIcSt11char_traitsIcEEE.exit60

bb.af:                                            ; preds = %._crit_edge
  %i.fd = load ptr, ptr %1, align 8, !tbaa !80
  %i.fe = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %i.fd, i64 noundef %.lcssa)
          to label %_ZN11OpenImageIO4v3_1lsERSoRKNS0_17basic_string_viewIcSt11char_traitsIcEEE.exit60 unwind label %bb.aj ; 0 uses

_ZN11OpenImageIO4v3_1lsERSoRKNS0_17basic_string_viewIcSt11char_traitsIcEEE.exit60: ; preds = %._crit_edge, %bb.af
  call void @llvm.experimental.noalias.scope.decl(metadata !233)
  call void @llvm.experimental.noalias.scope.decl(metadata !236)
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.ff, ptr %0, align 8, !tbaa !114, !alias.scope !239
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.fg, align 8, !tbaa !107, !alias.scope !239
  store i8 0, ptr %i.ff, align 8, !tbaa !7, !alias.scope !239
  %i.fh = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !240, !noalias !239 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.fi, null
  %i.fj = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.fk = load ptr, ptr %i.fj, align 8, !noalias !239 ; 2 uses
  %i.fl = icmp ugt ptr %i.fi, %i.fk
  %.08.i.i.i = select i1 %i.fl, ptr %i.fi, ptr %i.fk ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i61 = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i61, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %_ZN11OpenImageIO4v3_1lsERSoRKNS0_17basic_string_viewIcSt11char_traitsIcEEE.exit60
  %i.fm = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !242, !noalias !239 ; 2 uses
  %i.fo = ptrtoint ptr %.08.i.i.i to i64
  %i.fp = ptrtoint ptr %i.fn to i64
  %i.fq = sub i64 %i.fo, %i.fp
  %i.fr = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.fn, i64 noundef %i.fq)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.ah ; 0 uses

bb.ah:                                            ; preds = %bb.ai, %bb.ag
  %i.fs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ft = load ptr, ptr %0, align 8, !tbaa !110, !alias.scope !239 ; 2 uses
  %i.fu = icmp eq ptr %i.ft, %i.ff
  br i1 %i.fu, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
end_hunk_0
begin_hunk_1_@_ZN11OpenImageIO4v3_17Strutil11parse_whileERNS0_17basic_string_viewIcSt11char_traitsIcEEES5_b:bb.a
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bv, ptr %i.bw, align 8, !tbaa !83
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN11OpenImageIO4v3_17Strutil10parse_lineERNS0_17basic_string_viewIcSt11char_traitsIcEEEb(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.OpenImageIO::v3_1::basic_string_view") align 8 captures(none) initializes((0, 16)) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %1, i1 noundef zeroext %2) local_unnamed_addr #20 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !83   ; 9 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !80     ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.b ; 2 uses
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ashr i64 %i.b, 2                         ; 2 uses
  %i.g = icmp sgt i64 %i.f, 0
  br i1 %i.g, label %.lr.ph.preheader.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.a
  %i.h = and i64 %i.b, -4
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.c, i64 %i.h
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %.lr.ph.preheader.i.i.i.i
  %.047.i.i.i.i = phi i64 [ %i.u, %bb.e ], [ %i.f, %.lr.ph.preheader.i.i.i.i ] ; 2 uses
  %.02946.i.i.i.i = phi ptr [ %i.t, %bb.e ], [ %i.c, %.lr.ph.preheader.i.i.i.i ] ; 9 uses
  %i.i = load i8, ptr %.02946.i.i.i.i, align 1, !tbaa !7
  %i.j = icmp eq i8 %i.i, 10
  br i1 %i.j, label %_ZSt7find_ifIPKcN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEE9traits_eqEET_S9_S9_T0_.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !7
  %i.m = icmp eq i8 %i.l, 10
  br i1 %i.m, label %_ZSt7find_ifIPKcN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEE9traits_eqEET_S9_S9_T0_.exit.i.loopexit.split.loop.exit33, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 2
  %i.o = load i8, ptr %i.n, align 1, !tbaa !7
  %i.p = icmp eq i8 %i.o, 10
  br i1 %i.p, label %_ZSt7find_ifIPKcN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEE9traits_eqEET_S9_S9_T0_.exit.i.loopexit.split.loop.exit31, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 3
  %i.r = load i8, ptr %i.q, align 1, !tbaa !7
  %i.s = icmp eq i8 %i.r, 10
  br i1 %i.s, label %_ZSt7find_ifIPKcN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEE9traits_eqEET_S9_S9_T0_.exit.i.loopexit.split.loop.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 4
  %i.u = add nsw i64 %.047.i.i.i.i, -1
  %i.v = icmp sgt i64 %.047.i.i.i.i, 1
  br i1 %i.v, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !230

._crit_edge.i.i.i.i:                              ; preds = %bb.e, %bb.a
  %.029.lcssa.i.i.i.i = phi ptr [ %i.c, %bb.a ], [ %scevgep.i.i.i.i, %bb.e ] ; 6 uses
  %.pre-phi.i.i.i.i = ptrtoint ptr %.029.lcssa.i.i.i.i to i64
  %i.w = sub i64 %i.e, %.pre-phi.i.i.i.i
  switch i64 %i.w, label %_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread [
    i64 3, label %bb.f
    i64 2, label %bb.h
    i64 1, label %bb.j
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  %i.x = load i8, ptr %.029.lcssa.i.i.i.i, align 1, !tbaa !7
  %i.y = icmp eq i8 %i.x, 10
  br i1 %i.y, label %_ZSt7find_ifIPKcN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEE9traits_eqEET_S9_S9_T0_.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i, i64 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi ptr [ %i.z, %bb.g ], [ %.029.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.aa = load i8, ptr %.1.i.i.i.i, align 1, !tbaa !7
  %i.ab = icmp eq i8 %i.aa, 10
  br i1 %i.ab, label %_ZSt7find_ifIPKcN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEE9traits_eqEET_S9_S9_T0_.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge.i.i.i.i
  %.2.i.i.i.i = phi ptr [ %i.ac, %bb.i ], [ %.029.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.ad = load i8, ptr %.2.i.i.i.i, align 1, !tbaa !7
  %i.ae = icmp eq i8 %i.ad, 10
  br i1 %i.ae, label %_ZSt7find_ifIPKcN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEE9traits_eqEET_S9_S9_T0_.exit.i, label %_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread

_ZSt7find_ifIPKcN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEE9traits_eqEET_S9_S9_T0_.exit.i.loopexit.split.loop.exit: ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 3
  br label %_ZSt7find_ifIPKcN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEE9traits_eqEET_S9_S9_T0_.exit.i

_ZSt7find_ifIPKcN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEE9traits_eqEET_S9_S9_T0_.exit.i.loopexit.split.loop.exit31: ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 2
  br label %_ZSt7find_ifIPKcN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEE9traits_eqEET_S9_S9_T0_.exit.i

_ZSt7find_ifIPKcN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEE9traits_eqEET_S9_S9_T0_.exit.i.loopexit.split.loop.exit33: ; preds = %bb.b
  %i.ah = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 1
  br label %_ZSt7find_ifIPKcN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEE9traits_eqEET_S9_S9_T0_.exit.i

_ZSt7find_ifIPKcN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEE9traits_eqEET_S9_S9_T0_.exit.i: ; preds = %.lr.ph.i.i.i.i, %_ZSt7find_ifIPKcN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEE9traits_eqEET_S9_S9_T0_.exit.i.loopexit.split.loop.exit, %_ZSt7find_ifIPKcN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEE9traits_eqEET_S9_S9_T0_.exit.i.loopexit.split.loop.exit31, %_ZSt7find_ifIPKcN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEE9traits_eqEET_S9_S9_T0_.exit.i.loopexit.split.loop.exit33, %bb.j, %bb.h, %bb.f
  %.028.i.i.i.i = phi ptr [ %.1.i.i.i.i, %bb.h ], [ %.029.lcssa.i.i.i.i, %bb.f ], [ %.2.i.i.i.i, %bb.j ], [ %i.ah, %_ZSt7find_ifIPKcN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEE9traits_eqEET_S9_S9_T0_.exit.i.loopexit.split.loop.exit33 ], [ %i.af, %_ZSt7find_ifIPKcN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEE9traits_eqEET_S9_S9_T0_.exit.i.loopexit.split.loop.exit ], [ %i.ag, %_ZSt7find_ifIPKcN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEE9traits_eqEET_S9_S9_T0_.exit.i.loopexit.split.loop.exit31 ], [ %.02946.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.ai = icmp eq ptr %.028.i.i.i.i, %i.d
  br i1 %i.ai, label %_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEE4findEcm.exit

_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEE4findEcm.exit: ; preds = %_ZSt7find_ifIPKcN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEE9traits_eqEET_S9_S9_T0_.exit.i
  %i.aj = ptrtoint ptr %.028.i.i.i.i to i64
  %i.ak = ptrtoint ptr %i.c to i64
  %i.al = sub i64 %i.aj, %i.ak                    ; 3 uses
  %i.am = add i64 %i.b, -1
  %.not = icmp ult i64 %i.al, %i.am
  br i1 %.not, label %_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit, label %_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread

_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread: ; preds = %bb.j, %._crit_edge.i.i.i.i, %_ZSt7find_ifIPKcN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEE9traits_eqEET_S9_S9_T0_.exit.i, %_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEE4findEcm.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !402
  br i1 %2, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  br label %bb.l

_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEE4findEcm.exit
  %i.an = add nuw i64 %i.al, 1                    ; 5 uses
  %.not.i.not = icmp eq i64 %i.b, 0               ; 2 uses
  %i.ao = icmp eq i64 %i.an, -1
  %i.ap = icmp uge i64 %i.al, %i.b
  %or.cond.i = or i1 %i.ap, %i.ao
  %.0.i = select i1 %or.cond.i, i64 %i.b, i64 %i.an
  %.sroa.015.0 = select i1 %.not.i.not, ptr null, ptr %i.c
  %.sroa.516.0 = select i1 %.not.i.not, i64 0, i64 %.0.i
  store ptr %.sroa.015.0, ptr %0, align 8, !tbaa !13
  %.sroa.516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.516.0, ptr %.sroa.516.0..sroa_idx, align 8, !tbaa !95
  br i1 %2, label %_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit14, label %bb.l

_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit14: ; preds = %_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  %.not.i11 = icmp ult i64 %i.an, %i.b
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.an
  %.sroa.0.0 = select i1 %.not.i11, ptr %i.aq, ptr null
  %.sroa.5.0 = tail call i64 @llvm.usub.sat.i64(i64 %i.b, i64 %i.an)
  store ptr %.sroa.0.0, ptr %1, align 8, !tbaa !13
  store i64 %.sroa.5.0, ptr %i.a, align 8, !tbaa !95
  br label %bb.l

bb.l:                                             ; preds = %_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit, %_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit14, %_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, %bb.k
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define void @_ZN11OpenImageIO4v3_17Strutil12parse_nestedERNS0_17basic_string_viewIcSt11char_traitsIcEEEb(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.OpenImageIO::v3_1::basic_string_view") align 8 captures(none) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %1, i1 noundef zeroext %2) local_unnamed_addr #27 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !80     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !83   ; 4 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.d = load i8, ptr %i.a, align 1, !tbaa !7     ; 2 uses
  switch i8 %i.d, label %bb.f [
    i8 40, label %bb.g
    i8 91, label %bb.d
    i8 123, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.n

bb.g:                                             ; preds = %bb.c, %bb.d, %bb.e
  %.021 = phi i32 [ 125, %bb.e ], [ 93, %bb.d ], [ 41, %bb.c ]
  %exitcond.not36 = icmp eq i64 %i.c, 1
  br i1 %exitcond.not36, label %.critedge, label %.lr.ph

bb.h:                                             ; preds = %.lr.ph
  %exitcond.not = icmp eq i64 %i.k, %i.c
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !403

.lr.ph:                                           ; preds = %bb.g, %bb.h
  %.0203038 = phi i64 [ %i.k, %bb.h ], [ 1, %bb.g ] ; 2 uses
  %.03137 = phi i32 [ %.1, %bb.h ], [ 1, %bb.g ]
  %i.e = getelementptr i8, ptr %i.a, i64 %.0203038
  %i.f = load i8, ptr %i.e, align 1, !tbaa !7     ; 2 uses
  %i.g = icmp eq i8 %i.f, %i.d
  %i.h = sext i8 %i.f to i32
  %i.i = icmp eq i32 %.021, %i.h                  ; 2 uses
  %i.j = sext i1 %i.i to i32
  %.1.v = select i1 %i.g, i32 1, i32 %i.j
  %.1 = add nsw i32 %.1.v, %.03137                ; 2 uses
  %i.k = add i64 %.0203038, 1                     ; 4 uses
  %.not23 = icmp eq i32 %.1, 0
  br i1 %.not23, label %.critedge24, label %bb.h, !llvm.loop !403

.critedge:                                        ; preds = %bb.h, %bb.g
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.n

.critedge24:                                      ; preds = %.lr.ph
  br i1 %i.i, label %bb.j, label %bb.i, !prof !86

bb.i:                                             ; preds = %.critedge24
  %i.l = load ptr, ptr @stderr, align 8, !tbaa !111
  %i.m = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef 1462, ptr noundef nonnull @__FUNCTION__._ZN11OpenImageIO4v3_17Strutil12parse_nestedERNS0_17basic_string_viewIcSt11char_traitsIcEEEb, ptr noundef nonnull @.str.34) #50 ; 0 uses
  %.pre = load i64, ptr %i.b, align 8, !tbaa !83, !noalias !404
  br label %bb.j

bb.j:                                             ; preds = %.critedge24, %bb.i
  %i.n = phi i64 [ %i.c, %.critedge24 ], [ %.pre, %bb.i ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !404)
  %.not.i.not = icmp eq i64 %i.n, 0
  br i1 %.not.i.not, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !alias.scope !404
  br label %_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit

bb.l:                                             ; preds = %bb.j
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.k, i64 %i.n)
  %i.p = load ptr, ptr %1, align 8, !tbaa !80, !noalias !404
  store ptr %i.p, ptr %0, align 8, !tbaa !80, !alias.scope !404
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.o, ptr %i.q, align 8, !tbaa !83, !alias.scope !404
  br label %_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit

_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %bb.k, %bb.l
  br i1 %2, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 %i.k, i64 %i.n) ; 2 uses
  %i.r = load ptr, ptr %1, align 8, !tbaa !80
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %spec.select.i
  store ptr %i.s, ptr %1, align 8, !tbaa !80
  %i.t = sub i64 %i.n, %spec.select.i
  store i64 %i.t, ptr %i.b, align 8, !tbaa !83
  br label %bb.n

bb.n:                                             ; preds = %bb.f, %_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit, %bb.m, %.critedge, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN11OpenImageIO4v3_17Strutil24excise_string_after_headERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_17basic_string_viewIcS5_EE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull align 8 captures(address) dereferenceable(32) %1, ptr nofree noundef readonly captures(none) dead_on_return %2) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 12 uses
  %4 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %5 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 6 uses
  %6 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 22 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !114
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.d, align 8, !tbaa !107
  store i8 0, ptr %i.c, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.e = load ptr, ptr %1, align 8, !tbaa !110
  store ptr %i.e, ptr %3, align 8, !tbaa !80
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !107
  store i64 %i.h, ptr %i.f, align 8, !tbaa !83
  %i.i = load ptr, ptr %2, align 8, !tbaa !80
  store ptr %i.i, ptr %4, align 8, !tbaa !80
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !83
  store i64 %i.l, ptr %i.j, align 8, !tbaa !83
  %i.m = call noundef i64 @_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEE4findES4_m(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull dead_on_return %4, i64 noundef 0) #13 ; 3 uses
  %.not = icmp eq i64 %i.m, -1
  br i1 %.not, label %bb.ac, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = load i64, ptr %i.k, align 8, !tbaa !83
  %i.o = add i64 %i.n, %i.m
  %i.p = load i64, ptr %i.f, align 8, !tbaa !83   ; 2 uses
  %spec.select.i = call i64 @llvm.umin.i64(i64 %i.o, i64 %i.p) ; 2 uses
  %i.q = load ptr, ptr %3, align 8, !tbaa !80
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %spec.select.i
  store ptr %i.r, ptr %3, align 8, !tbaa !80
  %i.s = sub i64 %i.p, %spec.select.i
  store i64 %i.s, ptr %i.f, align 8, !tbaa !83
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  store ptr @.str.35, ptr %6, align 8, !tbaa !80
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 4, ptr %i.t, align 8, !tbaa !83
  call void @_ZN11OpenImageIO4v3_17Strutil11parse_untilERNS0_17basic_string_viewIcSt11char_traitsIcEEES5_b(ptr dead_on_unwind nonnull writable sret(%"class.OpenImageIO::v3_1::basic_string_view") align 8 %5, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull dead_on_return %6, i1 noundef zeroext true) #13
  %.promoted.i = load i64, ptr %i.f, align 8, !tbaa !83 ; 2 uses
  %.not4.i = icmp eq i64 %.promoted.i, 0
  br i1 %.not4.i, label %_ZN11OpenImageIO4v3_17Strutil15skip_whitespaceERNS0_17basic_string_viewIcSt11char_traitsIcEEE.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %.promoted3.i = load ptr, ptr %3, align 8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.preheader.i
  %i.u = phi i64 [ %i.y, %bb.c ], [ %.promoted.i, %.lr.ph.preheader.i ]
  %i.v = phi ptr [ %i.x, %bb.c ], [ %.promoted3.i, %.lr.ph.preheader.i ] ; 2 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !7
  switch i8 %i.w, label %_ZN11OpenImageIO4v3_17Strutil15skip_whitespaceERNS0_17basic_string_viewIcSt11char_traitsIcEEE.exit [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
  ]

bb.c:                                             ; preds = %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 1 ; 2 uses
  store ptr %i.x, ptr %3, align 8, !tbaa !80
  %i.y = add i64 %i.u, -1                         ; 3 uses
  store i64 %i.y, ptr %i.f, align 8, !tbaa !83
  %.not.i = icmp eq i64 %i.y, 0
  br i1 %.not.i, label %_ZN11OpenImageIO4v3_17Strutil15skip_whitespaceERNS0_17basic_string_viewIcSt11char_traitsIcEEE.exit, label %.lr.ph.i, !llvm.loop !84

_ZN11OpenImageIO4v3_17Strutil15skip_whitespaceERNS0_17basic_string_viewIcSt11char_traitsIcEEE.exit: ; preds = %.lr.ph.i, %bb.c, %bb.b
  %i.z = load ptr, ptr %5, align 8, !tbaa !80
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !83
  %i.ac = load i64, ptr %i.d, align 8, !tbaa !107
  %i.ad = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef %i.ac, ptr noundef %i.z, i64 noundef %i.ab)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSIN11OpenImageIO4v3_117basic_string_viewIcS2_EEEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_St17basic_string_viewIcS2_EESt6__not_ISB_IPSD_PKS4_EESI_ISB_ISE_PKcEEEE5valueERS4_E4typeESE_.exit unwind label %bb.x ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSIN11OpenImageIO4v3_117basic_string_viewIcS2_EEEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_St17basic_string_viewIcS2_EESt6__not_ISB_IPSD_PKS4_EESI_ISB_ISE_PKcEEEE5valueERS4_E4typeESE_.exit: ; preds = %_ZN11OpenImageIO4v3_17Strutil15skip_whitespaceERNS0_17basic_string_viewIcSt11char_traitsIcEEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  call void @llvm.experimental.noalias.scope.decl(metadata !407)
  %i.ae = load i64, ptr %i.g, align 8, !tbaa !107, !noalias !407
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 9 uses
  store ptr %i.af, ptr %8, align 8, !tbaa !114, !alias.scope !407
  %i.ag = load ptr, ptr %1, align 8, !tbaa !110, !noalias !407 ; 2 uses
  %spec.select.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.m, i64 %i.ae) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13, !noalias !407
  store i64 %spec.select.i.i.i, ptr %i.b, align 8, !tbaa !95, !noalias !407
  %i.ah = icmp ugt i64 %spec.select.i.i.i, 15
  br i1 %i.ah, label %.noexc10.i.i, label %._crit_edge.i.i.i

.noexc10.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSIN11OpenImageIO4v3_117basic_string_viewIcS2_EEEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_St17basic_string_viewIcS2_EESt6__not_ISB_IPSD_PKS4_EESI_ISB_ISE_PKcEEEE5valueERS4_E4typeESE_.exit
  %i.ai = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc unwind label %bb.y     ; 2 uses

.noexc:                                           ; preds = %.noexc10.i.i
  store ptr %i.ai, ptr %8, align 8, !tbaa !110, !alias.scope !407
  %i.aj = load i64, ptr %i.b, align 8, !tbaa !95, !noalias !407
  store i64 %i.aj, ptr %i.af, align 8, !tbaa !7, !alias.scope !407
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSIN11OpenImageIO4v3_117basic_string_viewIcS2_EEEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_St17basic_string_viewIcS2_EESt6__not_ISB_IPSD_PKS4_EESI_ISB_ISE_PKcEEEE5valueERS4_E4typeESE_.exit
  %i.ak = phi ptr [ %i.ai, %.noexc ], [ %i.af, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSIN11OpenImageIO4v3_117basic_string_viewIcS2_EEEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_St17basic_string_viewIcS2_EESt6__not_ISB_IPSD_PKS4_EESI_ISB_ISE_PKcEEEE5valueERS4_E4typeESE_.exit ] ; 2 uses
  switch i64 %spec.select.i.i.i, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.al = load i8, ptr %i.ag, align 1, !tbaa !7
  store i8 %i.al, ptr %i.ak, align 1, !tbaa !7
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ak, ptr align 1 %i.ag, i64 %spec.select.i.i.i, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i.i
  %i.am = load i64, ptr %i.b, align 8, !tbaa !95, !noalias !407 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i64 %i.am, ptr %i.an, align 8, !tbaa !107, !alias.scope !407
  %i.ao = load ptr, ptr %8, align 8, !tbaa !110, !alias.scope !407
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.am
  store i8 0, ptr %i.ap, align 1, !tbaa !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13, !noalias !407
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  %i.aq = load ptr, ptr %3, align 8, !tbaa !80    ; 3 uses
  %i.ar = load i64, ptr %i.f, align 8, !tbaa !83  ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 9 uses
  store ptr %i.as, ptr %9, align 8, !tbaa !114
  %i.at = icmp eq ptr %i.aq, null
  %i.au = icmp ne i64 %i.ar, 0
  %or.cond.i.i.i = and i1 %i.at, %i.au
  br i1 %or.cond.i.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.89) #47
          to label %.noexc15 unwind label %bb.z

.noexc15:                                         ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i64 %i.ar, ptr %i.a, align 8, !tbaa !95
  %i.av = icmp ugt i64 %i.ar, 15
  br i1 %i.av, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.h
  %i.aw = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc16 unwind label %bb.z   ; 2 uses

.noexc16:                                         ; preds = %.noexc.i.i.i
  store ptr %i.aw, ptr %9, align 8, !tbaa !110
  %i.ax = load i64, ptr %i.a, align 8, !tbaa !95
  store i64 %i.ax, ptr %i.as, align 8, !tbaa !7
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc16, %bb.h
  %i.ay = phi ptr [ %i.aw, %.noexc16 ], [ %i.as, %bb.h ] ; 2 uses
  switch i64 %i.ar, label %bb.j [
    i64 1, label %bb.i
    i64 0, label %bb.k
  ]

bb.i:                                             ; preds = %._crit_edge.i.i.i.i
  %i.az = load i8, ptr %i.aq, align 1, !tbaa !7
  store i8 %i.az, ptr %i.ay, align 1, !tbaa !7
  br label %bb.k

bb.j:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ay, ptr align 1 %i.aq, i64 %i.ar, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %._crit_edge.i.i.i.i
end_hunk_1
