inline.NumInlined: 3717
inline.NumDeleted: 478
begin_hunk_0_@_ZNK9TreeClass8enumNameB5cxx11Ev:bb.a
  %i.bv = load i64, ptr %i.a, align 8, !tbaa !48
  store i64 %i.bv, ptr %i.bq, align 8, !tbaa !31
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.m, %bb.l
  %i.bw = phi ptr [ %i.bu, %bb.m ], [ %i.bq, %bb.l ] ; 2 uses
  switch i64 %i.bs, label %bb.o [
    i64 1, label %bb.n
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.n:                                             ; preds = %._crit_edge.i.i
  %i.bx = load i8, ptr %i.br, align 1, !tbaa !31
  store i8 %i.bx, ptr %i.bw, align 1, !tbaa !31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.o:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bw, ptr align 1 %i.br, i64 %i.bs, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.n, %bb.o
  %i.by = load i64, ptr %i.a, align 8, !tbaa !48  ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.by, ptr %i.bz, align 8, !tbaa !30
  %i.ca = load ptr, ptr %0, align 8, !tbaa !27
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.by
  store i8 0, ptr %i.cb, align 1, !tbaa !31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.p

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #4

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK5Field8rustNameB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(41) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !30   ; 11 uses
  %.pre42 = load ptr, ptr %i.b, align 8, !tbaa !27 ; 11 uses
  switch i64 %i.d, label %.lr.ph.preheader [
    i64 5, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 6, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit16
    i64 0, label %._crit_edge.i.i.thread
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.a
  %i.e = load i32, ptr %.pre42, align 1
  %i.f = xor i32 %i.e, 1853453153
  %i.g = getelementptr i8, ptr %.pre42, i64 4
  %i.h = load i8, ptr %i.g, align 1
  %i.i = zext i8 %i.h to i32
  %i.j = xor i32 %i.i, 99
  %i.k = or i32 %i.f, %i.j
  %i.l = icmp ne i32 %i.k, 0
  %i.m = zext i1 %i.l to i32
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit14

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit14: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.o = load i32, ptr %.pre42, align 1
  %i.p = xor i32 %i.o, 1767995233
  %i.q = getelementptr i8, ptr %.pre42, i64 4
  %i.r = load i8, ptr %i.q, align 1
  %i.s = zext i8 %i.r to i32
  %i.t = xor i32 %i.s, 116
  %i.u = or i32 %i.p, %i.t
  %i.v = icmp ne i32 %i.u, 0
  %i.w = zext i1 %i.v to i32
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %.lr.ph.preheader

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit16: ; preds = %bb.a
  %bcmp.i15 = tail call i32 @bcmp(ptr %.pre42, ptr nonnull @.str.161, i64 %i.d)
  %i.y = icmp eq i32 %bcmp.i15, 0
  br i1 %i.y, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %.lr.ph.preheader

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit16, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit14, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.z, ptr %0, align 8, !tbaa !56, !alias.scope !1271
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 0, ptr %i.aa, align 8, !tbaa !30, !alias.scope !1271
  store i8 0, ptr %i.z, align 8, !tbaa !31, !alias.scope !1271
  %i.ab = add nuw nsw i64 %i.d, 3
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ab) #19
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !30, !alias.scope !1271
  %i.ad = add i64 %i.ac, -4611686018427387901
  %i.ae = icmp ult i64 %i.ad, 3
  br i1 %i.ae, label %bb.b, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i

bb.b:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.430) #21
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.af = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.473, i64 noundef 3) #19 ; 0 uses
  %i.ag = load i64, ptr %i.aa, align 8, !tbaa !30, !alias.scope !1271
  %i.ah = sub i64 4611686018427387903, %i.ag
  %i.ai = icmp ult i64 %i.ah, %i.d
  br i1 %i.ai, label %bb.c, label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.430) #21
  unreachable

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.aj = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %.pre42, i64 noundef %i.d) #19 ; 0 uses
  br label %.loopexit

._crit_edge.i.i.thread:                           ; preds = %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ak, ptr %0, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 %i.d, ptr %i.a, align 8, !tbaa !48
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

.lr.ph.preheader:                                 ; preds = %bb.a, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit16, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit14
  %i.al = getelementptr inbounds nuw i8, ptr %.pre42, i64 %i.d ; 2 uses
  br label %.lr.ph

bb.d:                                             ; preds = %.lr.ph
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.027.037, i64 1 ; 2 uses
  %.not33.not = icmp eq ptr %i.am, %i.al
  br i1 %.not33.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %.sroa.027.037 = phi ptr [ %i.am, %bb.d ], [ %.pre42, %.lr.ph.preheader ] ; 2 uses
  %i.an = load i8, ptr %.sroa.027.037, align 1, !tbaa !31
  %i.ao = sext i8 %i.an to i32
  %i.ap = tail call i32 @isupper(i32 noundef %i.ao) #20
  %.not = icmp eq i32 %i.ap, 0
  br i1 %.not, label %bb.d, label %.lr.ph41.preheader

.critedge:                                        ; preds = %bb.d
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.aq, ptr %0, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 %i.d, ptr %i.a, align 8, !tbaa !48
  %i.ar = icmp ugt i64 %i.d, 15
  br i1 %i.ar, label %bb.e, label %._crit_edge.i.i

bb.e:                                             ; preds = %.critedge
  %i.as = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #19 ; 2 uses
  store ptr %i.as, ptr %0, align 8, !tbaa !27
  %i.at = load i64, ptr %i.a, align 8, !tbaa !48
  store i64 %i.at, ptr %i.aq, align 8, !tbaa !31
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.e, %.critedge
  %i.au = phi ptr [ %i.as, %bb.e ], [ %i.aq, %.critedge ] ; 2 uses
  switch i64 %i.d, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.av = load i8, ptr %.pre42, align 1, !tbaa !31
  store i8 %i.av, ptr %i.au, align 1, !tbaa !31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.g:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.au, ptr align 1 %.pre42, i64 %i.d, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i.thread, %._crit_edge.i.i, %bb.f, %bb.g
  %i.aw = load i64, ptr %i.a, align 8, !tbaa !48  ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.aw, ptr %i.ax, align 8, !tbaa !30
  %i.ay = load ptr, ptr %0, align 8, !tbaa !27
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.aw
  store i8 0, ptr %i.az, align 1, !tbaa !31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %.loopexit

.lr.ph41.preheader:                               ; preds = %.lr.ph
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  store ptr %i.ba, ptr %0, align 8, !tbaa !56
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  store i64 0, ptr %i.bb, align 8, !tbaa !30
  store i8 0, ptr %i.ba, align 8, !tbaa !31
  br label %.lr.ph41

.lr.ph41:                                         ; preds = %.lr.ph41.preheader, %bb.p
  %.sroa.023.040 = phi ptr [ %i.cf, %bb.p ], [ %.pre42, %.lr.ph41.preheader ] ; 2 uses
  %i.bc = load i8, ptr %.sroa.023.040, align 1, !tbaa !31 ; 2 uses
  %i.bd = sext i8 %i.bc to i32                    ; 2 uses
  %i.be = tail call i32 @isupper(i32 noundef %i.bd) #20
  %.not12 = icmp eq i32 %i.be, 0
  %i.bf = load i64, ptr %i.bb, align 8, !tbaa !30 ; 7 uses
  %i.bg = add i64 %i.bf, 1                        ; 5 uses
  %i.bh = load ptr, ptr %0, align 8, !tbaa !27    ; 3 uses
  %i.bi = icmp eq ptr %i.bh, %i.ba                ; 4 uses
  br i1 %.not12, label %bb.m, label %bb.h

bb.h:                                             ; preds = %.lr.ph41
  br i1 %i.bi, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

bb.i:                                             ; preds = %bb.h
  %i.bj = icmp ult i64 %i.bf, 16
  tail call void @llvm.assume(i1 %i.bj)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %bb.i, %bb.h
  %2 = load i64, ptr %i.ba, align 8
  %3 = select i1 %i.bi, i64 15, i64 %2
  %i.bk = icmp ugt i64 %i.bg, %3
  br i1 %i.bk, label %bb.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.bf, i64 noundef 0, ptr noundef null, i64 noundef 1) #19
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i, %bb.j
  %i.bl = phi ptr [ %.pre.i, %bb.j ], [ %i.bh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i ]
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bf
  store i8 95, ptr %i.bm, align 1, !tbaa !31
  store i64 %i.bg, ptr %i.bb, align 8, !tbaa !30
  %i.bn = load ptr, ptr %0, align 8, !tbaa !27
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bg
  store i8 0, ptr %i.bo, align 1, !tbaa !31
  %i.bp = tail call i32 @tolower(i32 noundef %i.bd) #20
  %i.bq = trunc i32 %i.bp to i8
  %i.br = load i64, ptr %i.bb, align 8, !tbaa !30 ; 4 uses
  %i.bs = add i64 %i.br, 1                        ; 2 uses
  %i.bt = load ptr, ptr %0, align 8, !tbaa !27    ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.ba                ; 2 uses
  br i1 %i.bu, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i17

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit
  %i.bv = icmp ult i64 %i.br, 16
  tail call void @llvm.assume(i1 %i.bv)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i17: ; preds = %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit
  %4 = load i64, ptr %i.ba, align 8
  %5 = select i1 %i.bu, i64 15, i64 %4
  %i.bw = icmp ugt i64 %i.bs, %5
  br i1 %i.bw, label %bb.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit19

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i17
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.br, i64 noundef 0, ptr noundef null, i64 noundef 1) #19
  %.pre.i18 = load ptr, ptr %0, align 8, !tbaa !27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit19: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i17, %bb.l
  %i.bx = phi ptr [ %.pre.i18, %bb.l ], [ %i.bt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i17 ]
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.br
  store i8 %i.bq, ptr %i.by, align 1, !tbaa !31
  br label %bb.p

bb.m:                                             ; preds = %.lr.ph41
  br i1 %i.bi, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i20

bb.n:                                             ; preds = %bb.m
  %i.bz = icmp ult i64 %i.bf, 16
  tail call void @llvm.assume(i1 %i.bz)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i20: ; preds = %bb.n, %bb.m
  %6 = load i64, ptr %i.ba, align 8
  %7 = select i1 %i.bi, i64 15, i64 %6
  %i.ca = icmp ugt i64 %i.bg, %7
  br i1 %i.ca, label %bb.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit22

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i20
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.bf, i64 noundef 0, ptr noundef null, i64 noundef 1) #19
  %.pre.i21 = load ptr, ptr %0, align 8, !tbaa !27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit22: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i20, %bb.o
  %i.cb = phi ptr [ %.pre.i21, %bb.o ], [ %i.bh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i20 ]
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.bf
  store i8 %i.bc, ptr %i.cc, align 1, !tbaa !31
  br label %bb.p

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit22, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit19
  %.sink = phi i64 [ %i.bg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit22 ], [ %i.bs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit19 ] ; 2 uses
  store i64 %.sink, ptr %i.bb, align 8, !tbaa !30
  %i.cd = load ptr, ptr %0, align 8, !tbaa !27
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.sink
  store i8 0, ptr %i.ce, align 1, !tbaa !31
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.023.040, i64 1 ; 2 uses
  %.not34 = icmp eq ptr %i.cf, %i.al
  br i1 %.not34, label %.loopexit, label %.lr.ph41

.loopexit:                                        ; preds = %bb.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit, %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @isupper(i32 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @tolower(i32 noundef) local_unnamed_addr #11

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt12_Destroy_auxILb0EE9__destroyIP9TreeClassEEvT_S4_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %.not4 = icmp eq ptr %0, %1
  br i1 %.not4, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZSt8_DestroyI9TreeClassEvPT_.exit
  %.05 = phi ptr [ %i.ac, %_ZSt8_DestroyI9TreeClassEvPT_.exit ], [ %0, %bb.a ] ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.05, i64 72 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !376  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.05, i64 80
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !88   ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIP5FieldEvT_S2_.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph, %_ZSt8_DestroyI5FieldEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.k, %_ZSt8_DestroyI5FieldEvPT_.exit.i.i.i.i.i ], [ %i.b, %.lr.ph ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !27   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 24 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZSt8_DestroyI5FieldEvPT_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.i = load i64, ptr %i.g, align 8, !tbaa !31
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #18
  br label %_ZSt8_DestroyI5FieldEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyI5FieldEvPT_.exit.i.i.i.i.i:         ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.k, %i.d
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIP5FieldEvT_S2_.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1276

_ZSt8_DestroyIP5FieldEvT_S2_.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyI5FieldEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !376
  br label %_ZSt8_DestroyIP5FieldEvT_S2_.exit.i.i.i

_ZSt8_DestroyIP5FieldEvT_S2_.exit.i.i.i:          ; preds = %_ZSt8_DestroyIP5FieldEvT_S2_.exitthread-pre-split.i.i.i, %.lr.ph
  %i.l = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIP5FieldEvT_S2_.exitthread-pre-split.i.i.i ], [ %i.b, %.lr.ph ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt6vectorI5FieldSaIS0_EED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIP5FieldEvT_S2_.exit.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.05, i64 88
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !89
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #18
  br label %_ZNSt6vectorI5FieldSaIS0_EED2Ev.exit.i.i

_ZNSt6vectorI5FieldSaIS0_EED2Ev.exit.i.i:         ; preds = %bb.b, %_ZSt8_DestroyIP5FieldEvT_S2_.exit.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.05, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !27   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.05, i64 48 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt6vectorI5FieldSaIS0_EED2Ev.exit.i.i
  %i.v = load i64, ptr %i.t, align 8, !tbaa !31
  %i.w = add i64 %i.v, 1
  tail call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %_ZNSt6vectorI5FieldSaIS0_EED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.x = load ptr, ptr %.05, align 8, !tbaa !27   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.05, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZSt8_DestroyI9TreeClassEvPT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !31
  %i.ab = add i64 %i.aa, 1
  tail call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #18
  br label %_ZSt8_DestroyI9TreeClassEvPT_.exit

_ZSt8_DestroyI9TreeClassEvPT_.exit:               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.05, i64 96 ; 2 uses
  %.not = icmp eq ptr %i.ac, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1277

._crit_edge:                                      ; preds = %_ZSt8_DestroyI9TreeClassEvPT_.exit, %bb.a
  ret void
}

; Function Attrs: nofree nounwind uwtable
define internal void @_GLOBAL__sub_I_rustgen.cpp() #13 section ".text.startup" {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @_ZL12treeClasses_, i8 0, i64 24, i1 false)
  %i.a = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt6vectorI9TreeClassSaIS0_EED2Ev, ptr nonnull @_ZL12treeClasses_, ptr nonnull @__dso_handle) #19 ; 0 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @_ZL10treeNames_B5cxx11, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw (i8, ptr @_ZL10treeNames_B5cxx11, i64 8), ptr getelementptr inbounds nuw (i8, ptr @_ZL10treeNames_B5cxx11, i64 24), align 8, !tbaa !318
  store ptr getelementptr inbounds nuw (i8, ptr @_ZL10treeNames_B5cxx11, i64 8), ptr getelementptr inbounds nuw (i8, ptr @_ZL10treeNames_B5cxx11, i64 32), align 8, !tbaa !1278
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL10treeNames_B5cxx11, i64 40), align 8, !tbaa !315
  %i.b = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEED2Ev, ptr nonnull @_ZL10treeNames_B5cxx11, ptr nonnull @__dso_handle) #19 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #17

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #17 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { builtin nounwind }
attributes #19 = { nounwind }
attributes #20 = { nounwind willreturn memory(read) }
attributes #21 = { noreturn nounwind }
attributes #22 = { builtin nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !10, i64 0}
!9 = !{!"_ZTSNSt12_Vector_baseI9TreeClassSaIS0_EE17_Vector_impl_dataE", !10, i64 0, !10, i64 8, !10, i64 16}
!10 = !{!"p1 _ZTS9TreeClass", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!9, !10, i64 8}
!13 = !{!9, !10, i64 16}
!14 = !{!15, !18, i64 8}
!15 = !{!"_ZTSSt15_Rb_tree_header", !16, i64 0, !19, i64 32}
end_hunk_0
