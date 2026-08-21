inline.NumInlined: 5334
inline.NumDeleted: 1210
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN2PP11PowerParser13chars_to_vstrEPcRSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEii:bb.a
  %i.ad = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.ad, ptr %5, align 8, !tbaa !27
  %i.ae = load i64, ptr %i.b, align 8, !tbaa !124
  store i64 %i.ae, ptr %i.f, align 8, !tbaa !33
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %split
  %i.af = phi ptr [ %i.ad, %.noexc.i ], [ %i.f, %split ] ; 2 uses
  switch i32 %.039, label %bb.e [
    i32 1, label %bb.d
    i32 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.ag = load i8, ptr %i.d, align 1, !tbaa !33
  store i8 %i.ag, ptr %i.af, align 1, !tbaa !33
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.af, ptr nonnull align 1 %i.d, i64 %.pre-phi, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.ah = load i64, ptr %i.b, align 8, !tbaa !124 ; 2 uses
  store i64 %i.ah, ptr %i.g, align 8, !tbaa !32
  %i.ai = load ptr, ptr %5, align 8, !tbaa !27
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ah
  store i8 0, ptr %i.aj, align 1, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  %i.ak = load i64, ptr %i.g, align 8, !tbaa !32  ; 3 uses
  %i.al = trunc i64 %i.ak to i32
  %i.am = icmp sgt i32 %i.al, 0
  br i1 %i.am, label %.lr.ph66, label %.thread

.lr.ph66:                                         ; preds = %bb.f
  %i.an = load ptr, ptr %5, align 8, !tbaa !27    ; 2 uses
  %wide.trip.count = and i64 %i.ak, 2147483647
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph66, %bb.h
  %indvars.iv77 = phi i64 [ 0, %.lr.ph66 ], [ %indvars.iv.next78, %bb.h ] ; 5 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %indvars.iv77
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !33
  %.not42 = icmp eq i8 %i.ap, 32
  br i1 %.not42, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %indvars.iv.next78 = add nuw nsw i64 %indvars.iv77, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next78, %wide.trip.count
  br i1 %exitcond.not, label %.thread, label %bb.g, !llvm.loop !1579

bb.i:                                             ; preds = %bb.g
  %.not43 = icmp eq i64 %indvars.iv77, 0
  br i1 %.not43, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aq = icmp samesign eq i64 %i.ak, %indvars.iv77
  br i1 %i.aq, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i64 0, ptr %i.g, align 8, !tbaa !32
  store i8 0, ptr %i.an, align 1, !tbaa !33
  br label %.thread

bb.l:                                             ; preds = %bb.j
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 0, i64 noundef %indvars.iv77)
          to label %.thread unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

.thread:                                          ; preds = %bb.h, %bb.f, %bb.l, %bb.k, %bb.i
  %i.as = load ptr, ptr %i.h, align 8, !tbaa !323 ; 8 uses
  %i.at = load ptr, ptr %i.i, align 8, !tbaa !325
  %.not.i = icmp eq ptr %i.as, %i.at
  br i1 %.not.i, label %bb.q, label %bb.n

bb.n:                                             ; preds = %.thread
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 16 ; 3 uses
  store ptr %i.au, ptr %i.as, align 8, !tbaa !123
  %i.av = load ptr, ptr %5, align 8, !tbaa !27    ; 2 uses
  %i.aw = load i64, ptr %i.g, align 8, !tbaa !32  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 %i.aw, ptr %i.a, align 8, !tbaa !124
  %i.ax = icmp ugt i64 %i.aw, 15
  br i1 %i.ax, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.n
  %i.ay = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.as, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc47 unwind label %bb.r   ; 2 uses

.noexc47:                                         ; preds = %.noexc.i.i
  store ptr %i.ay, ptr %i.as, align 8, !tbaa !27
  %i.az = load i64, ptr %i.a, align 8, !tbaa !124
  store i64 %i.az, ptr %i.au, align 8, !tbaa !33
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc47, %bb.n
  %i.ba = phi ptr [ %i.ay, %.noexc47 ], [ %i.au, %bb.n ] ; 2 uses
  switch i64 %i.aw, label %bb.p [
    i64 1, label %bb.o
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.o:                                             ; preds = %._crit_edge.i.i.i
  %i.bb = load i8, ptr %i.av, align 1, !tbaa !33
  store i8 %i.bb, ptr %i.ba, align 1, !tbaa !33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.p:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ba, ptr align 1 %i.av, i64 %i.aw, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.p, %bb.o, %._crit_edge.i.i.i
  %i.bc = load i64, ptr %i.a, align 8, !tbaa !124 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store i64 %i.bc, ptr %i.bd, align 8, !tbaa !32
  %i.be = load ptr, ptr %i.as, align 8, !tbaa !27
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bc
  store i8 0, ptr %i.bf, align 1, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %i.bg = load ptr, ptr %i.h, align 8, !tbaa !323
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  store ptr %i.bh, ptr %i.h, align 8, !tbaa !323
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit

bb.q:                                             ; preds = %.thread
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.as, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit unwind label %bb.r

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i, %bb.q
  %i.bi = load ptr, ptr %5, align 8, !tbaa !27    ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.f
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit
  %i.bk = load i64, ptr %i.f, align 8, !tbaa !33
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bl) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, 1 ; 2 uses
  %exitcond84.not = icmp eq i64 %indvars.iv.next81, %wide.trip.count83
  br i1 %exitcond84.not, label %._crit_edge, label %bb.b, !llvm.loop !1580

bb.r:                                             ; preds = %bb.q, %.noexc.i.i
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.m
  %.pn = phi { ptr, i32 } [ %i.bm, %bb.r ], [ %i.ar, %bb.m ]
  %i.bn = load ptr, ptr %5, align 8, !tbaa !27    ; 2 uses
  %i.bo = icmp eq ptr %i.bn, %i.f
  br i1 %i.bo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49: ; preds = %bb.s
  %i.bp = load i64, ptr %i.f, align 8, !tbaa !33
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef %i.bq) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  resume { ptr, i32 } %.pn

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.a
  call void @_ZdaPv(ptr noundef nonnull %i.d) #32
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #5

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN2PP11PowerParser13vstr_to_charsEPcRSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEii(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(2796) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #21 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !323
  %i.c = load ptr, ptr %2, align 8, !tbaa !321    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = lshr exact i64 %i.f, 5
  %i.h = trunc i64 %i.g to i32
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph39, label %._crit_edge40

._crit_edge40:                                    ; preds = %._crit_edge, %bb.a
  ret void

.lr.ph39:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv47 = phi i64 [ %indvars.iv.next48, %._crit_edge ], [ 0, %bb.a ] ; 4 uses
  %indvars.iv = phi i32 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.j = phi ptr [ %i.ao, %._crit_edge ], [ %i.c, %bb.a ]
  %i.k = add i32 %indvars.iv, 1
  %i.l = trunc nuw nsw i64 %indvars.iv47 to i32   ; 2 uses
  %i.m = mul i32 %4, %i.l
  %i.n = xor i32 %i.m, -1
  %i.o = mul i32 %4, %i.l                         ; 3 uses
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %i.j, i64 %indvars.iv47
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !32
  %i.s = trunc i64 %i.r to i32                    ; 2 uses
  %spec.select = tail call i32 @llvm.smin.i32(i32 %4, i32 %i.s) ; 4 uses
  %i.t = add i32 %spec.select, %i.o               ; 2 uses
  %i.u = icmp sgt i32 %spec.select, 0
  br i1 %i.u, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph39
  %i.v = sext i32 %indvars.iv to i64
  %i.w = sext i32 %i.o to i64
  %i.x = sext i32 %i.t to i64
  br label %.lr.ph

.preheader:                                       ; preds = %.lr.ph, %.lr.ph39
  %i.y = icmp sgt i32 %4, %i.s
  br i1 %i.y, label %.lr.ph36.preheader, label %._crit_edge

.lr.ph36.preheader:                               ; preds = %.preheader
  %5 = add i32 %i.o, %4
  %i.z = sext i32 %i.t to i64
  %scevgep = getelementptr i8, ptr %1, i64 %i.z
  %i.aa = add i32 %spec.select, %i.k
  %smax = tail call i32 @llvm.smax.i32(i32 %5, i32 %i.aa)
  %i.ab = add i32 %smax, %i.n
  %i.ac = sub i32 %i.ab, %spec.select
  %i.ad = zext i32 %i.ac to i64
  %i.ae = add nuw nsw i64 %i.ad, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep, i8 32, i64 %i.ae, i1 false), !tbaa !33
  br label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv41 = phi i64 [ %i.v, %.lr.ph.preheader ], [ %indvars.iv.next42, %.lr.ph ] ; 3 uses
  %i.af = load ptr, ptr %2, align 8, !tbaa !321
  %i.ag = getelementptr inbounds nuw [32 x i8], ptr %i.af, i64 %indvars.iv47
  %i.ah = sub nsw i64 %indvars.iv41, %i.w
  %i.ai = load ptr, ptr %i.ag, align 8, !tbaa !27
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ah
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !33
  %i.al = getelementptr inbounds i8, ptr %1, i64 %indvars.iv41
  store i8 %i.ak, ptr %i.al, align 1, !tbaa !33
  %indvars.iv.next42 = add nsw i64 %indvars.iv41, 1 ; 2 uses
  %i.am = icmp slt i64 %indvars.iv.next42, %i.x
  br i1 %i.am, label %.lr.ph, label %.preheader, !llvm.loop !1581

._crit_edge:                                      ; preds = %.lr.ph36.preheader, %.preheader
  %indvars.iv.next48 = add nuw nsw i64 %indvars.iv47, 1 ; 2 uses
  %i.an = load ptr, ptr %i.a, align 8, !tbaa !323
  %i.ao = load ptr, ptr %2, align 8, !tbaa !321   ; 2 uses
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %sext = shl i64 %i.ar, 27
  %i.as = ashr i64 %sext, 32
  %i.at = icmp slt i64 %indvars.iv.next48, %i.as
  %indvars.iv.next = add i32 %indvars.iv, %4
  br i1 %i.at, label %.lr.ph39, label %._crit_edge40, !llvm.loop !1582
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = lshr i64 %1, 4                           ; 2 uses
  %i.b = tail call i64 @llvm.umax.i64(i64 %i.a, i64 5)
  %.sroa.speculated = add nuw nsw i64 %i.b, 3     ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 %.sroa.speculated, ptr %i.c, align 8, !tbaa !350
  %i.d = icmp ugt i64 %1, -49
  br i1 %i.d, label %.noexc3.i, label %_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE15_M_allocate_mapEm.exit, !prof !834

.noexc3.i:                                        ; preds = %bb.a
  tail call void @_ZSt17__throw_bad_allocv() #30
  unreachable

_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE15_M_allocate_mapEm.exit: ; preds = %bb.a
  %i.e = add nuw nsw i64 %i.a, 1                  ; 2 uses
  %i.f = shl nuw nsw i64 %.sroa.speculated, 3
  %i.g = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #31 ; 2 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !346
  %i.h = sub nsw i64 %.sroa.speculated, %i.e
  %i.i = lshr i64 %i.h, 1
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.i ; 6 uses
  %.idx = shl nuw nsw i64 %i.e, 3
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE15_M_allocate_mapEm.exit, %_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_allocate_nodeEv.exit.i
  %.011.i = phi ptr [ %i.m, %_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_allocate_nodeEv.exit.i ], [ %i.j, %_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE15_M_allocate_mapEm.exit ] ; 4 uses
  %i.l = invoke noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #31
          to label %_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_allocate_nodeEv.exit.i unwind label %bb.b

_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_allocate_nodeEv.exit.i: ; preds = %.lr.ph.i
  store ptr %i.l, ptr %.011.i, align 8, !tbaa !338
  %i.m = getelementptr inbounds nuw i8, ptr %.011.i, i64 8 ; 2 uses
  %i.n = icmp ult ptr %i.m, %i.k
  br i1 %i.n, label %.lr.ph.i, label %_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE15_M_create_nodesEPPS5_S9_.exit, !llvm.loop !1583

bb.b:                                             ; preds = %.lr.ph.i
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  %i.q = tail call ptr @__cxa_begin_catch(ptr %i.p) #29 ; 0 uses
  %i.r = icmp ult ptr %i.j, %.011.i
  br i1 %i.r, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %.06.i.i = phi ptr [ %i.t, %.lr.ph.i.i ], [ %i.j, %bb.b ] ; 2 uses
  %i.s = load ptr, ptr %.06.i.i, align 8, !tbaa !338
  tail call void @_ZdlPvm(ptr noundef %i.s, i64 noundef 512) #32
  %i.t = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8 ; 2 uses
  %i.u = icmp ult ptr %i.t, %.011.i
  br i1 %i.u, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.i, !llvm.loop !349

_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.i: ; preds = %.lr.ph.i.i, %bb.b
  invoke void @__cxa_rethrow() #30
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.i
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  tail call void @__clang_call_terminate(ptr %i.x) #33
  unreachable

bb.e:                                             ; preds = %_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.i
  unreachable

.body:                                            ; preds = %bb.c
  %i.y = extractvalue { ptr, i32 } %i.v, 0
  %i.z = tail call ptr @__cxa_begin_catch(ptr %i.y) #29 ; 0 uses
  %i.aa = load ptr, ptr %0, align 8, !tbaa !346
  %i.ab = load i64, ptr %i.c, align 8, !tbaa !350
  %i.ac = shl i64 %i.ab, 3
  tail call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ac) #32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  invoke void @__cxa_rethrow() #30
          to label %bb.i unwind label %bb.f

bb.f:                                             ; preds = %.body
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.ad

_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE15_M_create_nodesEPPS5_S9_.exit: ; preds = %_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_allocate_nodeEv.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.j, ptr %i.af, align 8, !tbaa !400
  %i.ag = load ptr, ptr %i.j, align 8, !tbaa !338 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !398
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 512
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !399
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.al = getelementptr inbounds i8, ptr %i.k, i64 -8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.al, ptr %i.am, align 8, !tbaa !400
  %i.an = load ptr, ptr %i.al, align 8, !tbaa !338 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !398
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 512
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !399
  store ptr %i.ag, ptr %i.ae, align 8, !tbaa !1584
  %i.ar = and i64 %1, 15
  %i.as = getelementptr inbounds nuw [32 x i8], ptr %i.an, i64 %i.ar
  store ptr %i.as, ptr %i.ak, align 8, !tbaa !129
  ret void

bb.h:                                             ; preds = %bb.f
  %i.at = landingpad { ptr, i32 }
          catch ptr null
  %i.au = extractvalue { ptr, i32 } %i.at, 0
  tail call void @__clang_call_terminate(ptr %i.au) #33
  unreachable

bb.i:                                             ; preds = %.body
  unreachable
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #23

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #23

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt11_Deque_baseIN2PP3CmdESaIS1_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add i64 %1, 3                            ; 3 uses
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.a, i64 8) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 %.sroa.speculated, ptr %i.b, align 8, !tbaa !392
  %i.c = icmp ugt i64 %i.a, 1152921504606846975
  br i1 %i.c, label %bb.b, label %_ZNSt11_Deque_baseIN2PP3CmdESaIS1_EE15_M_allocate_mapEm.exit, !prof !834

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ugt i64 %i.a, 2305843009213693951
  br i1 %i.d, label %.noexc.i, label %.noexc3.i

.noexc.i:                                         ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #30
  unreachable

.noexc3.i:                                        ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #30
  unreachable

_ZNSt11_Deque_baseIN2PP3CmdESaIS1_EE15_M_allocate_mapEm.exit: ; preds = %bb.a
  %i.e = add nsw i64 %1, 1                        ; 3 uses
  %i.f = shl nuw nsw i64 %.sroa.speculated, 3
  %i.g = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #31 ; 2 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !388
  %i.h = sub i64 %.sroa.speculated, %i.e
  %i.i = lshr i64 %i.h, 1
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.i ; 6 uses
  %.idx = shl nuw nsw i64 %i.e, 3
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx ; 3 uses
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %_ZNSt11_Deque_baseIN2PP3CmdESaIS1_EE15_M_create_nodesEPPS1_S5_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt11_Deque_baseIN2PP3CmdESaIS1_EE15_M_allocate_mapEm.exit, %_ZNSt11_Deque_baseIN2PP3CmdESaIS1_EE16_M_allocate_nodeEv.exit.i
  %.011.i = phi ptr [ %i.m, %_ZNSt11_Deque_baseIN2PP3CmdESaIS1_EE16_M_allocate_nodeEv.exit.i ], [ %i.j, %_ZNSt11_Deque_baseIN2PP3CmdESaIS1_EE15_M_allocate_mapEm.exit ] ; 4 uses
  %i.l = invoke noalias noundef nonnull dereferenceable(432) ptr @_Znwm(i64 noundef 432) #31
          to label %_ZNSt11_Deque_baseIN2PP3CmdESaIS1_EE16_M_allocate_nodeEv.exit.i unwind label %bb.c

_ZNSt11_Deque_baseIN2PP3CmdESaIS1_EE16_M_allocate_nodeEv.exit.i: ; preds = %.lr.ph.i
  store ptr %i.l, ptr %.011.i, align 8, !tbaa !24
  %i.m = getelementptr inbounds nuw i8, ptr %.011.i, i64 8 ; 2 uses
  %i.n = icmp ult ptr %i.m, %i.k
  br i1 %i.n, label %.lr.ph.i, label %_ZNSt11_Deque_baseIN2PP3CmdESaIS1_EE15_M_create_nodesEPPS1_S5_.exit.loopexit, !llvm.loop !1585

bb.c:                                             ; preds = %.lr.ph.i
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  %i.q = tail call ptr @__cxa_begin_catch(ptr %i.p) #29 ; 0 uses
  %i.r = icmp ult ptr %i.j, %.011.i
  br i1 %i.r, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseIN2PP3CmdESaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.06.i.i = phi ptr [ %i.t, %.lr.ph.i.i ], [ %i.j, %bb.c ] ; 2 uses
end_hunk_0
