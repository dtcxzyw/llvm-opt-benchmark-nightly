inline.NumInlined: 1667
inline.NumDeleted: 590
begin_hunk_0_@_ZN16OpenColorIO_v2_514ColorSpaceInfo20CreateFromSingleRoleERKSt10shared_ptrIKNS_6ConfigEEPKc:bb.a
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_514ColorSpaceInfoC2ERKSt10shared_ptrIKNS_6ConfigEEPKcS8_S8_S8_(ptr noundef nonnull align 8 dereferenceable(160) initializes((0, 8)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr nofree noundef readonly captures(address_is_null) %3, ptr nofree noundef readonly captures(address_is_null) %4, ptr nofree noundef readonly captures(address_is_null) %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %i.h = alloca i64, align 8                      ; 6 uses
  %6 = alloca %"class.std::vector", align 16      ; 17 uses
  %7 = alloca %"class.std::vector", align 16      ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN16OpenColorIO_v2_514ColorSpaceInfoE, i64 16), ptr %0, align 8, !tbaa !14
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %.not = icmp eq ptr %2, null
  %i.j = select i1 %.not, ptr @.str.2, ptr %2     ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  store ptr %i.k, ptr %i.i, align 8, !tbaa !46
  %i.l = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.j) #28 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #28
  store i64 %i.l, ptr %i.h, align 8, !tbaa !67
  %i.m = icmp ugt i64 %i.l, 15
  br i1 %i.m, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.n = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.h, i64 noundef 0) ; 2 uses
  store ptr %i.n, ptr %i.i, align 8, !tbaa !56
  %i.o = load i64, ptr %i.h, align 8, !tbaa !67
  store i64 %i.o, ptr %i.k, align 8, !tbaa !52
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.p = phi ptr [ %i.n, %.noexc.i ], [ %i.k, %bb.a ] ; 2 uses
  switch i64 %i.l, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.q = load i8, ptr %i.j, align 1, !tbaa !52
  store i8 %i.q, ptr %i.p, align 1, !tbaa !52
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.p, ptr nonnull align 1 %i.j, i64 %i.l, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i
  %i.r = load i64, ptr %i.h, align 8, !tbaa !67   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i64 %i.r, ptr %i.s, align 8, !tbaa !50
  %i.t = load ptr, ptr %i.i, align 8, !tbaa !56
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.r
  store i8 0, ptr %i.u, align 1, !tbaa !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #28
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 9 uses
  %.not31 = icmp eq ptr %3, null
  br i1 %.not31, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = load i8, ptr %3, align 1, !tbaa !52
  %.not32 = icmp eq i8 %i.w, 0
  br i1 %.not32, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  store ptr %i.x, ptr %i.v, align 8, !tbaa !46
  %i.y = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #28 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #28
  store i64 %i.y, ptr %i.g, align 8, !tbaa !67
  %i.z = icmp ugt i64 %i.y, 15
  br i1 %i.z, label %.noexc.i46, label %._crit_edge.i.i45

.noexc.i46:                                       ; preds = %bb.f
  %i.aa = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.v, ptr noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef 0)
          to label %.noexc48 unwind label %bb.z   ; 2 uses

.noexc48:                                         ; preds = %.noexc.i46
  store ptr %i.aa, ptr %i.v, align 8, !tbaa !56
  %i.ab = load i64, ptr %i.g, align 8, !tbaa !67
  store i64 %i.ab, ptr %i.x, align 8, !tbaa !52
  br label %._crit_edge.i.i45

._crit_edge.i.i45:                                ; preds = %.noexc48, %bb.f
  %i.ac = phi ptr [ %i.aa, %.noexc48 ], [ %i.x, %bb.f ] ; 2 uses
  switch i64 %i.y, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %bb.l
  ]

bb.g:                                             ; preds = %._crit_edge.i.i45
  %i.ad = load i8, ptr %3, align 1, !tbaa !52
  store i8 %i.ad, ptr %i.ac, align 1, !tbaa !52
  br label %bb.l

bb.h:                                             ; preds = %._crit_edge.i.i45
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ac, ptr nonnull align 1 %3, i64 %i.y, i1 false)
  br label %bb.l

bb.i:                                             ; preds = %bb.e, %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  store ptr %i.ae, ptr %i.v, align 8, !tbaa !46
  %i.af = load ptr, ptr %i.i, align 8, !tbaa !56  ; 2 uses
  %i.ag = load i64, ptr %i.s, align 8, !tbaa !50  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #28
  store i64 %i.ag, ptr %i.f, align 8, !tbaa !67
  %i.ah = icmp ugt i64 %i.ag, 15
  br i1 %i.ah, label %.noexc.i51, label %._crit_edge.i.i50

.noexc.i51:                                       ; preds = %bb.i
  %i.ai = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.v, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0)
          to label %.noexc52 unwind label %bb.y   ; 2 uses

.noexc52:                                         ; preds = %.noexc.i51
  store ptr %i.ai, ptr %i.v, align 8, !tbaa !56
  %i.aj = load i64, ptr %i.f, align 8, !tbaa !67
  store i64 %i.aj, ptr %i.ae, align 8, !tbaa !52
  br label %._crit_edge.i.i50

._crit_edge.i.i50:                                ; preds = %.noexc52, %bb.i
  %i.ak = phi ptr [ %i.ai, %.noexc52 ], [ %i.ae, %bb.i ] ; 2 uses
  switch i64 %i.ag, label %bb.k [
    i64 1, label %bb.j
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.j:                                             ; preds = %._crit_edge.i.i50
  %i.al = load i8, ptr %i.af, align 1, !tbaa !52
  store i8 %i.al, ptr %i.ak, align 1, !tbaa !52
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.k:                                             ; preds = %._crit_edge.i.i50
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ak, ptr align 1 %i.af, i64 %i.ag, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i50, %bb.j, %bb.k
  %i.am = load i64, ptr %i.f, align 8, !tbaa !67  ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.am, ptr %i.an, align 8, !tbaa !50
  %i.ao = load ptr, ptr %i.v, align 8, !tbaa !56
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.am
  store i8 0, ptr %i.ap, align 1, !tbaa !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #28
  br label %.critedge

bb.l:                                             ; preds = %bb.h, %bb.g, %._crit_edge.i.i45
  %i.aq = load i64, ptr %i.g, align 8, !tbaa !67  ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !50
  %i.as = load ptr, ptr %i.v, align 8, !tbaa !56
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.aq
  store i8 0, ptr %i.at, align 1, !tbaa !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #28
  br label %.critedge

.critedge:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit, %bb.l
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 8 uses
  %.not33 = icmp eq ptr %4, null
  %i.av = select i1 %.not33, ptr @.str.2, ptr %4  ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 5 uses
  store ptr %i.aw, ptr %i.au, align 8, !tbaa !46
  %i.ax = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.av) #28 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #28
  store i64 %i.ax, ptr %i.e, align 8, !tbaa !67
  %i.ay = icmp ugt i64 %i.ax, 15
  br i1 %i.ay, label %.noexc.i54, label %._crit_edge.i.i53

.noexc.i54:                                       ; preds = %.critedge
  %i.az = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.au, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc55 unwind label %bb.aa  ; 2 uses

.noexc55:                                         ; preds = %.noexc.i54
  store ptr %i.az, ptr %i.au, align 8, !tbaa !56
  %i.ba = load i64, ptr %i.e, align 8, !tbaa !67
  store i64 %i.ba, ptr %i.aw, align 8, !tbaa !52
  br label %._crit_edge.i.i53

._crit_edge.i.i53:                                ; preds = %.noexc55, %.critedge
  %i.bb = phi ptr [ %i.az, %.noexc55 ], [ %i.aw, %.critedge ] ; 2 uses
  switch i64 %i.ax, label %bb.n [
    i64 1, label %bb.m
    i64 0, label %bb.o
  ]

bb.m:                                             ; preds = %._crit_edge.i.i53
  %i.bc = load i8, ptr %i.av, align 1, !tbaa !52
  store i8 %i.bc, ptr %i.bb, align 1, !tbaa !52
  br label %bb.o

bb.n:                                             ; preds = %._crit_edge.i.i53
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bb, ptr nonnull align 1 %i.av, i64 %i.ax, i1 false)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %._crit_edge.i.i53
  %i.bd = load i64, ptr %i.e, align 8, !tbaa !67  ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  store i64 %i.bd, ptr %i.be, align 8, !tbaa !50
  %i.bf = load ptr, ptr %i.au, align 8, !tbaa !56
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bd
  store i8 0, ptr %i.bg, align 1, !tbaa !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #28
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 5 uses
  %.not34 = icmp eq ptr %5, null
  %i.bi = select i1 %.not34, ptr @.str.2, ptr %5  ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 5 uses
  store ptr %i.bj, ptr %i.bh, align 8, !tbaa !46
  %i.bk = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bi) #28 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28
  store i64 %i.bk, ptr %i.d, align 8, !tbaa !67
  %i.bl = icmp ugt i64 %i.bk, 15
  br i1 %i.bl, label %.noexc.i58, label %._crit_edge.i.i57

.noexc.i58:                                       ; preds = %bb.o
  %i.bm = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.bh, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc59 unwind label %bb.ab  ; 2 uses

.noexc59:                                         ; preds = %.noexc.i58
  store ptr %i.bm, ptr %i.bh, align 8, !tbaa !56
  %i.bn = load i64, ptr %i.d, align 8, !tbaa !67
  store i64 %i.bn, ptr %i.bj, align 8, !tbaa !52
  br label %._crit_edge.i.i57

._crit_edge.i.i57:                                ; preds = %.noexc59, %bb.o
  %i.bo = phi ptr [ %i.bm, %.noexc59 ], [ %i.bj, %bb.o ] ; 2 uses
  switch i64 %i.bk, label %bb.q [
    i64 1, label %bb.p
    i64 0, label %bb.r
  ]

bb.p:                                             ; preds = %._crit_edge.i.i57
  %i.bp = load i8, ptr %i.bi, align 1, !tbaa !52
  store i8 %i.bp, ptr %i.bo, align 1, !tbaa !52
  br label %bb.r

bb.q:                                             ; preds = %._crit_edge.i.i57
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bo, ptr nonnull align 1 %i.bi, i64 %i.bk, i1 false)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %._crit_edge.i.i57
  %i.bq = load i64, ptr %i.d, align 8, !tbaa !67  ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %i.bq, ptr %i.br, align 8, !tbaa !50
  %i.bs = load ptr, ptr %i.bh, align 8, !tbaa !56
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bq
  store i8 0, ptr %i.bt, align 1, !tbaa !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bu, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.bv = load ptr, ptr %1, align 8, !tbaa !24
  %i.bw = invoke noundef signext i8 @_ZNK16OpenColorIO_v2_56Config18getFamilySeparatorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bv)
          to label %10 unwind label %bb.ac

10:                                               ; preds = %bb.r
  %.not35 = icmp eq i8 %i.bw, 0
  br i1 %.not35, label %bb.ae, label %bb.s

bb.s:                                             ; preds = %10
  %i.bx = load i64, ptr %i.be, align 8, !tbaa !50
  %i.by = icmp eq i64 %i.bx, 0
  br i1 %i.by, label %bb.ae, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %i.bz = load ptr, ptr %1, align 8, !tbaa !24
  %i.ca = invoke noundef signext i8 @_ZNK16OpenColorIO_v2_56Config18getFamilySeparatorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bz)
          to label %bb.u unwind label %bb.ad

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN11StringUtils5SplitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %7, ptr noundef nonnull align 8 dereferenceable(32) %i.au, i8 noundef signext %i.ca)
          to label %bb.v unwind label %bb.ad

bb.v:                                             ; preds = %bb.u
  %i.cb = load ptr, ptr %6, align 16, !tbaa !68   ; 5 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !71 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 16, !tbaa !72
  %i.cg = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ch = load <2 x ptr>, ptr %7, align 16, !tbaa !73
  store <2 x ptr> %i.ch, ptr %6, align 16, !tbaa !73
  %i.ci = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 16, !tbaa !72
  store ptr %i.cj, ptr %i.ce, align 16, !tbaa !72
  %.not4.i.i.i.i.i = icmp eq ptr %i.cb, %i.cd
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.v, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.cp, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i ], [ %i.cb, %bb.v ] ; 3 uses
  %i.ck = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !56 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16 ; 2 uses
  %i.cm = icmp eq ptr %i.ck, %i.cl
  br i1 %i.cm, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.cn = load i64, ptr %i.cl, align 8, !tbaa !52
  %i.co = add i64 %i.cn, 1
  call void @_ZdlPvm(ptr noundef %i.ck, i64 noundef %i.co) #31
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.cp = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.cp, %i.cd
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !74

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i, %bb.v
  %.not.i.i1.i.i.i = icmp eq ptr %i.cb, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit, label %bb.w

bb.w:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i
  %i.cq = ptrtoint ptr %i.cf to i64
  %i.cr = ptrtoint ptr %i.cb to i64
  %i.cs = sub i64 %i.cq, %i.cr
  call void @_ZdlPvm(ptr noundef nonnull %i.cb, i64 noundef %i.cs) #31
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i, %bb.w
  %i.ct = load ptr, ptr %7, align 16, !tbaa !68   ; 3 uses
  %i.cu = load ptr, ptr %i.cg, align 8, !tbaa !71 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ct, %i.cu
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.da, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.ct, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit ] ; 3 uses
  %i.cv = load ptr, ptr %.05.i.i.i, align 8, !tbaa !56 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.cx = icmp eq ptr %i.cv, %i.cw
  br i1 %i.cx, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.cy = load i64, ptr %i.cw, align 8, !tbaa !52
  %i.cz = add i64 %i.cy, 1
  call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.cz) #31
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.da = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.da, %i.cu
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !74

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %7, align 16, !tbaa !68
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit
  %i.db = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.ct, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.db, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.dc = load ptr, ptr %i.ci, align 16, !tbaa !72
  %i.dd = ptrtoint ptr %i.dc to i64
  %i.de = ptrtoint ptr %i.db to i64
  %i.df = sub i64 %i.dd, %i.de
  call void @_ZdlPvm(ptr noundef nonnull %i.db, i64 noundef %i.df) #31
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit

bb.y:                                             ; preds = %.noexc.i51
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %.critedge43

bb.z:                                             ; preds = %.noexc.i46
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %.critedge43

bb.aa:                                            ; preds = %.noexc.i54
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100

bb.ab:                                            ; preds = %.noexc.i58
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97

bb.ac:                                            ; preds = %bb.ai, %.noexc.i.i, %bb.r
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.ad:                                            ; preds = %bb.u, %bb.t
  %i.dl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %bb.ax

bb.ae:                                            ; preds = %bb.s, %10
  %i.dm = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !71 ; 8 uses
  %i.do = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.dp = load ptr, ptr %i.do, align 16, !tbaa !72
  %.not.i = icmp eq ptr %i.dn, %i.dp
  br i1 %.not.i, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 16 ; 3 uses
  store ptr %i.dq, ptr %i.dn, align 8, !tbaa !46
  %i.dr = load ptr, ptr %i.au, align 8, !tbaa !56 ; 2 uses
  %11 = load i64, ptr %i.be, align 8, !tbaa !50   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  store i64 %11, ptr %i.c, align 8, !tbaa !67
  %i.ds = icmp ugt i64 %11, 15
  br i1 %i.ds, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.af
  %i.dt = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.dn, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc61 unwind label %bb.ac  ; 2 uses

.noexc61:                                         ; preds = %.noexc.i.i
  store ptr %i.dt, ptr %i.dn, align 8, !tbaa !56
  %i.du = load i64, ptr %i.c, align 8, !tbaa !67
  store i64 %i.du, ptr %i.dq, align 8, !tbaa !52
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc61, %bb.af
  %i.dv = phi ptr [ %i.dt, %.noexc61 ], [ %i.dq, %bb.af ] ; 2 uses
  switch i64 %11, label %bb.ah [
    i64 1, label %bb.ag
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.ag:                                            ; preds = %._crit_edge.i.i.i
  %i.dw = load i8, ptr %i.dr, align 1, !tbaa !52
  store i8 %i.dw, ptr %i.dv, align 1, !tbaa !52
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.ah:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dv, ptr align 1 %i.dr, i64 %11, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.ah, %bb.ag, %._crit_edge.i.i.i
  %i.dx = load i64, ptr %i.c, align 8, !tbaa !67  ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  store i64 %i.dx, ptr %i.dy, align 8, !tbaa !50
  %i.dz = load ptr, ptr %i.dn, align 8, !tbaa !56
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.dx
  store i8 0, ptr %i.ea, align 1, !tbaa !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  %i.eb = load ptr, ptr %i.dm, align 8, !tbaa !71
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 32
  store ptr %i.ec, ptr %i.dm, align 8, !tbaa !71
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit

bb.ai:                                            ; preds = %bb.ae
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr %i.dn, ptr noundef nonnull align 8 dereferenceable(32) %i.au)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit unwind label %bb.ac

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i, %bb.ai, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.ed = load ptr, ptr %6, align 16, !tbaa !73   ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !73 ; 2 uses
  %.not116122 = icmp eq ptr %i.ed, %i.ef
  br i1 %.not116122, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i71, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit
  %i.eg = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 7 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ei = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.el = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  br label %bb.ak

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94
  %.pre = load ptr, ptr %6, align 16, !tbaa !68   ; 3 uses
  %.pre124 = load ptr, ptr %i.ee, align 8, !tbaa !71 ; 2 uses
  %.not4.i.i.i63 = icmp eq ptr %.pre, %.pre124
  br i1 %.not4.i.i.i63, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i71, label %.lr.ph.i.i.i64

.lr.ph.i.i.i64:                                   ; preds = %._crit_edge, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i67
  %.05.i.i.i65 = phi ptr [ %i.er, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i67 ], [ %.pre, %._crit_edge ] ; 3 uses
  %i.em = load ptr, ptr %.05.i.i.i65, align 8, !tbaa !56 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.05.i.i.i65, i64 16 ; 2 uses
  %i.eo = icmp eq ptr %i.em, %i.en
  br i1 %i.eo, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i67, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i66

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i66: ; preds = %.lr.ph.i.i.i64
  %i.ep = load i64, ptr %i.en, align 8, !tbaa !52
  %i.eq = add i64 %i.ep, 1
  call void @_ZdlPvm(ptr noundef %i.em, i64 noundef %i.eq) #31
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i67

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i67: ; preds = %.lr.ph.i.i.i64, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i66
  %i.er = getelementptr inbounds nuw i8, ptr %.05.i.i.i65, i64 32 ; 2 uses
  %.not.i.i.i68 = icmp eq ptr %i.er, %.pre124
  br i1 %.not.i.i.i68, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i69, label %.lr.ph.i.i.i64, !llvm.loop !74

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i69: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i67
  %.pr.i70 = load ptr, ptr %6, align 16, !tbaa !68
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i71

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i71: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i69, %._crit_edge
  %i.es = phi ptr [ %.pr.i70, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i69 ], [ %.pre, %._crit_edge ], [ %i.ed, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit ] ; 3 uses
  %.not.i.i1.i72 = icmp eq ptr %i.es, null
  br i1 %.not.i.i1.i72, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit74, label %bb.aj

bb.aj:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i71
  %i.et = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.eu = load ptr, ptr %i.et, align 16, !tbaa !72
  %i.ev = ptrtoint ptr %i.eu to i64
  %i.ew = ptrtoint ptr %i.es to i64
  %i.ex = sub i64 %i.ev, %i.ew
  call void @_ZdlPvm(ptr noundef nonnull %i.es, i64 noundef %i.ex) #31
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit74

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit74: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i71, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  ret void

bb.ak:                                            ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94
  %.sroa.0107.0123 = phi ptr [ %i.ed, %.lr.ph ], [ %i.gt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  store ptr %i.eg, ptr %9, align 8, !tbaa !46
  %i.ey = load ptr, ptr %.sroa.0107.0123, align 8, !tbaa !56 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.0107.0123, i64 8
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !50 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store i64 %i.fa, ptr %i.b, align 8, !tbaa !67
  %i.fb = icmp ugt i64 %i.fa, 15
  br i1 %i.fb, label %.noexc.i76, label %._crit_edge.i.i75

.noexc.i76:                                       ; preds = %bb.ak
  %i.fc = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc77 unwind label %bb.au  ; 2 uses

.noexc77:                                         ; preds = %.noexc.i76
  store ptr %i.fc, ptr %9, align 8, !tbaa !56
  %i.fd = load i64, ptr %i.b, align 8, !tbaa !67
  store i64 %i.fd, ptr %i.eg, align 8, !tbaa !52
  br label %._crit_edge.i.i75

._crit_edge.i.i75:                                ; preds = %.noexc77, %bb.ak
  %i.fe = phi ptr [ %i.fc, %.noexc77 ], [ %i.eg, %bb.ak ] ; 2 uses
  switch i64 %i.fa, label %bb.am [
    i64 1, label %bb.al
    i64 0, label %bb.an
  ]

bb.al:                                            ; preds = %._crit_edge.i.i75
  %i.ff = load i8, ptr %i.ey, align 1, !tbaa !52
  store i8 %i.ff, ptr %i.fe, align 1, !tbaa !52
  br label %bb.an

bb.am:                                            ; preds = %._crit_edge.i.i75
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fe, ptr align 1 %i.ey, i64 %i.fa, i1 false)
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al, %._crit_edge.i.i75
  %i.fg = load i64, ptr %i.b, align 8, !tbaa !67  ; 2 uses
  store i64 %i.fg, ptr %i.eh, align 8, !tbaa !50
  %i.fh = load ptr, ptr %9, align 8, !tbaa !56
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 %i.fg
  store i8 0, ptr %i.fi, align 1, !tbaa !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  invoke void @_ZN11StringUtils4TrimENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull %9)
          to label %bb.ao unwind label %bb.av

bb.ao:                                            ; preds = %bb.an
  %i.fj = load ptr, ptr %9, align 8, !tbaa !56    ; 2 uses
  %i.fk = icmp eq ptr %i.fj, %i.eg
  br i1 %i.fk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ao
  %i.fl = load i64, ptr %i.eg, align 8, !tbaa !52
  %i.fm = add i64 %i.fl, 1
  call void @_ZdlPvm(ptr noundef %i.fj, i64 noundef %i.fm) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.fn = load i64, ptr %i.ei, align 8, !tbaa !50 ; 5 uses
  %i.fo = icmp eq i64 %i.fn, 0
  br i1 %i.fo, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit85, label %bb.ap

bb.ap:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.fp = load ptr, ptr %i.ej, align 8, !tbaa !71 ; 8 uses
  %i.fq = load ptr, ptr %i.ek, align 8, !tbaa !72
  %.not.i79 = icmp eq ptr %i.fp, %i.fq
  br i1 %.not.i79, label %bb.at, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fp, i64 16 ; 4 uses
  store ptr %i.fr, ptr %i.fp, align 8, !tbaa !46
  %i.fs = load ptr, ptr %8, align 8, !tbaa !56    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 %i.fn, ptr %i.a, align 8, !tbaa !67
  %i.ft = icmp ugt i64 %i.fn, 15
  br i1 %i.ft, label %.noexc.i.i82, label %._crit_edge.i.i.i80

.noexc.i.i82:                                     ; preds = %bb.aq
  %i.fu = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.fp, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %._crit_edge.i.i.i80.thread unwind label %bb.aw ; 2 uses

._crit_edge.i.i.i80.thread:                       ; preds = %.noexc.i.i82
  store ptr %i.fu, ptr %i.fp, align 8, !tbaa !56
  %i.fv = load i64, ptr %i.a, align 8, !tbaa !67
  store i64 %i.fv, ptr %i.fr, align 8, !tbaa !52
  br label %bb.as

._crit_edge.i.i.i80:                              ; preds = %bb.aq
  %cond = icmp eq i64 %i.fn, 1
  br i1 %cond, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %._crit_edge.i.i.i80
  %i.fw = load i8, ptr %i.fs, align 1, !tbaa !52
  store i8 %i.fw, ptr %i.fr, align 8, !tbaa !52
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i81

bb.as:                                            ; preds = %._crit_edge.i.i.i80.thread, %._crit_edge.i.i.i80
  %i.fx = phi ptr [ %i.fu, %._crit_edge.i.i.i80.thread ], [ %i.fr, %._crit_edge.i.i.i80 ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fx, ptr align 1 %i.fs, i64 %i.fn, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i81

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i81: ; preds = %bb.as, %bb.ar
  %i.fy = load i64, ptr %i.a, align 8, !tbaa !67  ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  store i64 %i.fy, ptr %i.fz, align 8, !tbaa !50
  %i.ga = load ptr, ptr %i.fp, align 8, !tbaa !56
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 %i.fy
  store i8 0, ptr %i.gb, align 1, !tbaa !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.gc = load ptr, ptr %i.ej, align 8, !tbaa !71
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 32
  store ptr %i.gd, ptr %i.ej, align 8, !tbaa !71
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit85

bb.at:                                            ; preds = %bb.ap
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.bu, ptr %i.fp, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit85 unwind label %bb.aw
end_hunk_0
