inline.NumInlined: 1589
inline.NumDeleted: 778
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN3re219ConvertRunesToBytesEbPiiPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i26: ; preds = %bb.j
  %i.aw = load ptr, ptr %3, align 8, !tbaa !18    ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i33: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i26
  %i.az = icmp ult i64 %i.ar, 16
  tail call void @llvm.assume(i1 %i.az)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i26
  %i.ba = load i64, ptr %i.ax, align 8, !tbaa !17
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i28: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i33
  %i.bb = phi i64 [ %i.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i33 ]
  %.not.i.i.i.i29 = icmp ult i64 %i.bb, %i.ap
  br i1 %.not.i.i.i.i29, label %bb.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i30

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i28
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.ar, i64 noundef 0, ptr noundef null, i64 noundef %i.at)
  %.pre.i.i32 = load ptr, ptr %3, align 8, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i30: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i28
  %i.bc = phi ptr [ %i.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i28 ], [ %.pre.i.i32, %bb.l ]
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.ar ; 2 uses
  %cond.i.i.i.i31 = icmp eq i64 %i.at, 1
  br i1 %cond.i.i.i.i31, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i30
  store i8 0, ptr %i.bd, align 1, !tbaa !17
  br label %.sink.split.i.i25

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i30
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.bd, i8 0, i64 %i.at, i1 false)
  br label %.sink.split.i.i25

bb.o:                                             ; preds = %bb.i
  %i.be = icmp ugt i64 %i.ar, %i.ap
  br i1 %i.be, label %.sink.split.i.i25, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit34

.sink.split.i.i25:                                ; preds = %bb.o, %bb.n, %bb.m
  store i64 %i.ap, ptr %i.aq, align 8, !tbaa !97
  %i.bf = load ptr, ptr %3, align 8, !tbaa !18
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.ap
  store i8 0, ptr %i.bg, align 1, !tbaa !17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit34

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit34: ; preds = %bb.o, %.sink.split.i.i25
  %i.bh = load ptr, ptr %3, align 8, !tbaa !18    ; 3 uses
  %i.bi = icmp sgt i32 %2, 0
  br i1 %i.bi, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit34
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre = load ptr, ptr %3, align 8, !tbaa !18
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit34
  %i.bj = phi ptr [ %i.bh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit34 ], [ %.pre, %._crit_edge.loopexit ] ; 3 uses
  %.023.lcssa = phi ptr [ %i.bh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit34 ], [ %i.ch, %._crit_edge.loopexit ]
  %i.bk = ptrtoint ptr %.023.lcssa to i64
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = sub i64 %i.bk, %i.bl                    ; 6 uses
  %i.bn = load i64, ptr %i.aq, align 8, !tbaa !97 ; 7 uses
  %i.bo = icmp ult i64 %i.bn, %i.bm
  br i1 %i.bo, label %bb.p, label %bb.u

bb.p:                                             ; preds = %._crit_edge
  %i.bp = sub nuw i64 %i.bm, %i.bn                ; 4 uses
  %i.bq = sub i64 9223372036854775807, %i.bn
  %i.br = icmp ult i64 %i.bq, %i.bp
  br i1 %i.br, label %bb.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i36

bb.q:                                             ; preds = %bb.p
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.30) #39
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i36: ; preds = %bb.p
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bt = icmp eq ptr %i.bj, %i.bs
  br i1 %i.bt, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i43, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i43: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i36
  %i.bu = icmp ult i64 %i.bn, 16
  tail call void @llvm.assume(i1 %i.bu)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i37: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i36
  %i.bv = load i64, ptr %i.bs, align 8, !tbaa !17
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i38: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i37, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i43
  %i.bw = phi i64 [ %i.bv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i37 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i43 ]
  %.not.i.i.i.i39 = icmp ugt i64 %i.bm, %i.bw
  br i1 %.not.i.i.i.i39, label %bb.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i40

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i38
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.bn, i64 noundef 0, ptr noundef null, i64 noundef %i.bp)
  %.pre.i.i42 = load ptr, ptr %3, align 8, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i40: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i38
  %i.bx = phi ptr [ %i.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i38 ], [ %.pre.i.i42, %bb.r ]
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bn ; 2 uses
  %cond.i.i.i.i41 = icmp eq i64 %i.bp, 1
  br i1 %cond.i.i.i.i41, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i40
  store i8 0, ptr %i.by, align 1, !tbaa !17
  br label %.sink.split.i.i35

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i40
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.by, i8 0, i64 %i.bp, i1 false)
  br label %.sink.split.i.i35

bb.u:                                             ; preds = %._crit_edge
  %i.bz = icmp ult i64 %i.bm, %i.bn
  br i1 %i.bz, label %.sink.split.i.i35, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit44

.sink.split.i.i35:                                ; preds = %bb.u, %bb.t, %bb.s
  store i64 %i.bm, ptr %i.aq, align 8, !tbaa !97
  %i.ca = load ptr, ptr %3, align 8, !tbaa !18
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.bm
  store i8 0, ptr %i.cb, align 1, !tbaa !17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit44: ; preds = %bb.u, %.sink.split.i.i35
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEv(ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13shrink_to_fitEv.exit unwind label %bb.v

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit44
  %i.cc = landingpad { ptr, i32 }
          catch ptr null
  %i.cd = extractvalue { ptr, i32 } %i.cc, 0
  tail call void @__clang_call_terminate(ptr %i.cd) #37
  unreachable

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %.02345 = phi ptr [ %i.bh, %.lr.ph.preheader ], [ %i.ch, %.lr.ph ] ; 2 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.cf = tail call noundef i32 @_ZN3re210runetocharEPcPKi(ptr noundef %.02345, ptr noundef %i.ce)
  %i.cg = sext i32 %i.cf to i64
  %i.ch = getelementptr inbounds i8, ptr %.02345, i64 %i.cg ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !143

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13shrink_to_fitEv.exit.loopexit.unr-lcssa: ; preds = %.lr.ph48
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13shrink_to_fitEv.exit, label %.lr.ph48.epil.preheader

.lr.ph48.epil.preheader:                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13shrink_to_fitEv.exit.loopexit.unr-lcssa, %.lr.ph48.preheader
  %indvars.iv50.epil.init = phi i64 [ 0, %.lr.ph48.preheader ], [ %indvars.iv.next51.3, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13shrink_to_fitEv.exit.loopexit.unr-lcssa ]
  %lcmp.mod73 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod73)
  br label %.lr.ph48.epil

.lr.ph48.epil:                                    ; preds = %.lr.ph48.epil, %.lr.ph48.epil.preheader
  %indvars.iv50.epil = phi i64 [ %indvars.iv50.epil.init, %.lr.ph48.epil.preheader ], [ %indvars.iv.next51.epil, %.lr.ph48.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph48.epil.preheader ], [ %epil.iter.next, %.lr.ph48.epil ]
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv50.epil
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !44
  %i.ck = trunc i32 %i.cj to i8
  %i.cl = load ptr, ptr %3, align 8, !tbaa !18
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 %indvars.iv50.epil
  store i8 %i.ck, ptr %i.cm, align 1, !tbaa !17
  %indvars.iv.next51.epil = add nuw nsw i64 %indvars.iv50.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13shrink_to_fitEv.exit, label %.lr.ph48.epil, !llvm.loop !144

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13shrink_to_fitEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13shrink_to_fitEv.exit.loopexit.unr-lcssa, %.lr.ph48.epil, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit44
  ret void
}

declare noundef i32 @_ZN3re210runetocharEPcPKi(ptr noundef, ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN3re26Regexp14RequiredPrefixEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPbPPS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noundef initializes((8, 16)) %1, ptr nofree noundef writeonly captures(none) initializes((0, 1)) %2, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %3) local_unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.a, align 8, !tbaa !97
  %i.b = load ptr, ptr %1, align 8, !tbaa !18
  store i8 0, ptr %i.b, align 1, !tbaa !17
  store i8 0, ptr %2, align 1, !tbaa !145
  store ptr null, ptr %3, align 8, !tbaa !37
  %i.c = load i8, ptr %0, align 8, !tbaa !8
  %.not = icmp eq i8 %i.c, 5
  br i1 %.not, label %.preheader47, label %.thread

.preheader47:                                     ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 2 uses
  %i.e = load i16, ptr %i.d, align 2, !tbaa !16   ; 4 uses
  %i.f = zext i16 %i.e to i32
  %.not58 = icmp eq i16 %i.e, 0
  br i1 %.not58, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader47
  %i.g = icmp eq i16 %i.e, 1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %.0.i = select i1 %i.g, ptr %i.h, ptr %i.i
  %wide.trip.count = zext i16 %i.e to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv63 = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next64, %bb.c ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 5 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %indvars.iv
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !37
  %i.l = load i8, ptr %i.k, align 8, !tbaa !8
  %i.m = icmp eq i8 %i.l, 18
  br i1 %i.m, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  %indvars.iv.next64 = add nuw nsw i64 %indvars.iv63, 1
  br i1 %exitcond.not, label %.thread, label %bb.b, !llvm.loop !146

.critedge:                                        ; preds = %bb.b
  %i.n = trunc nuw nsw i64 %indvars.iv to i32
  %i.o = icmp eq i64 %indvars.iv, 0
  br i1 %i.o, label %.thread, label %bb.d

bb.d:                                             ; preds = %.critedge
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !37   ; 6 uses
  %i.r = load i8, ptr %i.q, align 8, !tbaa !8
  %.off = add i8 %i.r, -3
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.s = add nuw nsw i32 %i.n, 1                  ; 3 uses
  %i.t = icmp samesign ult i32 %i.s, %i.f
  br i1 %i.t, label %.lr.ph56, label %bb.f

._crit_edge:                                      ; preds = %.lr.ph56
  %i.u = zext i16 %i.ah to i32
  %.pre = load ptr, ptr %i.h, align 8
  %i.v = icmp ult i16 %i.ah, 2
  %.0.i44 = select i1 %i.v, ptr %i.h, ptr %.pre
  %i.w = zext nneg i32 %i.s to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %.0.i44, i64 %i.w
  %i.y = sub nsw i32 %i.u, %i.s
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !14
  %i.ab = zext i16 %i.aa to i32
  %i.ac = tail call noundef ptr @_ZN3re26Regexp17ConcatOrAlternateENS_8RegexpOpEPPS0_iNS0_10ParseFlagsEb(i32 noundef 5, ptr noundef nonnull readonly %i.x, i32 noundef %i.y, i32 noundef %i.ab, i1 noundef zeroext false)
  br label %bb.h

.lr.ph56:                                         ; preds = %bb.e, %.lr.ph56
  %indvars.iv66 = phi i64 [ %indvars.iv.next67, %.lr.ph56 ], [ %indvars.iv63, %bb.e ] ; 2 uses
  %i.ad = load ptr, ptr %i.h, align 8
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv66
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !37
  %i.ag = tail call noundef ptr @_ZN3re26Regexp6IncrefEv(ptr noundef nonnull align 8 dereferenceable(40) %i.af) ; 0 uses
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, 1 ; 2 uses
  %i.ah = load i16, ptr %i.d, align 2, !tbaa !16  ; 3 uses
  %i.ai = zext i16 %i.ah to i64
  %i.aj = icmp samesign ult i64 %indvars.iv.next67, %i.ai
  br i1 %i.aj, label %.lr.ph56, label %._crit_edge, !llvm.loop !147

bb.f:                                             ; preds = %bb.e
  %i.ak = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #38 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.am = load i16, ptr %i.al, align 2, !tbaa !14
  %i.an = zext i16 %i.am to i32
  invoke void @_ZN3re26RegexpC1ENS_8RegexpOpENS0_10ParseFlagsE(ptr noundef nonnull align 8 dereferenceable(40) %i.ak, i32 noundef 2, i32 noundef %i.an)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ao = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef 40) #36
  resume { ptr, i32 } %i.ao

bb.h:                                             ; preds = %bb.f, %._crit_edge
  %storemerge = phi ptr [ %i.ac, %._crit_edge ], [ %i.ak, %bb.f ]
  store ptr %storemerge, ptr %3, align 8, !tbaa !37
  %i.ap = getelementptr inbounds nuw i8, ptr %i.q, i64 2 ; 2 uses
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !14
  %i.ar = and i16 %i.aq, 32
  %i.as = icmp ne i16 %i.ar, 0
  %i.at = load i8, ptr %i.q, align 8, !tbaa !8
  %i.au = icmp eq i8 %i.at, 3
  br i1 %i.au, label %.thread46, label %bb.i

.thread46:                                        ; preds = %bb.h
  %i.av = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aw = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !17
  %i.ay = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !17
  br label %bb.j

bb.j:                                             ; preds = %.thread46, %bb.i
  %i.ba = phi ptr [ %i.ax, %bb.i ], [ %i.av, %.thread46 ]
  %i.bb = phi i32 [ %i.az, %bb.i ], [ 1, %.thread46 ]
  tail call void @_ZN3re219ConvertRunesToBytesEbPiiPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i1 noundef zeroext %i.as, ptr noundef %i.ba, i32 noundef %i.bb, ptr noundef nonnull %1)
  %i.bc = load i16, ptr %i.ap, align 2, !tbaa !14
  %i.bd = trunc i16 %i.bc to i8
  %i.be = and i8 %i.bd, 1
  store i8 %i.be, ptr %2, align 1, !tbaa !145
  br label %.thread

.thread:                                          ; preds = %bb.c, %.preheader47, %bb.d, %.critedge, %bb.j, %bb.a
  %.2 = phi i1 [ false, %bb.a ], [ false, %.critedge ], [ false, %bb.d ], [ true, %bb.j ], [ false, %.preheader47 ], [ false, %bb.c ]
  ret i1 %.2
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN3re26Regexp22RequiredPrefixForAccelEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPb(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef initializes((8, 16)) %1, ptr nofree noundef writeonly captures(none) initializes((0, 1)) %2) local_unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.a, align 8, !tbaa !97
  %i.b = load ptr, ptr %1, align 8, !tbaa !18
  store i8 0, ptr %i.b, align 1, !tbaa !17
  store i8 0, ptr %2, align 1, !tbaa !145
  %i.c = load i8, ptr %0, align 8, !tbaa !8
  %i.d = icmp ne i8 %i.c, 5
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.f = load i16, ptr %i.e, align 2              ; 2 uses
  %.not = icmp eq i16 %i.f, 0
  %or.cond = select i1 %i.d, i1 true, i1 %.not
  br i1 %or.cond, label %.preheader, label %.sink.split

.sink.split:                                      ; preds = %bb.d, %bb.a
  %.sink43 = phi i16 [ %i.f, %bb.a ], [ %i.u, %bb.d ]
  %.sink42 = phi ptr [ %0, %bb.a ], [ %i.q, %bb.d ]
  %i.g = icmp eq i16 %.sink43, 1
  %i.h = getelementptr inbounds nuw i8, ptr %.sink42, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8
  %.0.i28 = select i1 %i.g, ptr %i.h, ptr %i.i
  %i.j = load ptr, ptr %.0.i28, align 8, !tbaa !37
  br label %.preheader

.preheader:                                       ; preds = %bb.a, %.sink.split
  %.0.ph = phi ptr [ %i.j, %.sink.split ], [ %0, %bb.a ]
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %.preheader
  %.0 = phi ptr [ %.0.ph, %.preheader ], [ %i.q, %.backedge ] ; 7 uses
  %i.k = load i8, ptr %.0, align 8, !tbaa !8      ; 2 uses
  switch i8 %i.k, label %.loopexit [
    i8 11, label %bb.c
    i8 3, label %bb.e
    i8 4, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %.0, i64 6
  %i.m = load i16, ptr %i.l, align 2, !tbaa !16
  %i.n = icmp ult i16 %i.m, 2
  %i.o = getelementptr inbounds nuw i8, ptr %.0, i64 8 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8
  %.0.i27 = select i1 %i.n, ptr %i.o, ptr %i.p
  %i.q = load ptr, ptr %.0.i27, align 8, !tbaa !37 ; 4 uses
  %i.r = load i8, ptr %i.q, align 8, !tbaa !8
  %i.s = icmp eq i8 %i.r, 5
  br i1 %i.s, label %bb.d, label %.backedge

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 6
  %i.u = load i16, ptr %i.t, align 2, !tbaa !16   ; 2 uses
  %.not26 = icmp eq i16 %i.u, 0
  br i1 %.not26, label %.backedge, label %.sink.split, !llvm.loop !148

.backedge:                                        ; preds = %bb.d, %bb.c
  br label %bb.b, !llvm.loop !148

bb.e:                                             ; preds = %bb.b, %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %.0, i64 2 ; 2 uses
  %i.w = load i16, ptr %i.v, align 2, !tbaa !14
  %i.x = and i16 %i.w, 32
  %i.y = icmp ne i16 %i.x, 0
  %i.z = icmp eq i8 %i.k, 3
  br i1 %i.z, label %.thread, label %bb.f

.thread:                                          ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %.0, i64 24
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %.0, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !17
  %i.ad = getelementptr inbounds nuw i8, ptr %.0, i64 24
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !17
  br label %bb.g

bb.g:                                             ; preds = %.thread, %bb.f
  %i.af = phi ptr [ %i.ac, %bb.f ], [ %i.aa, %.thread ]
  %i.ag = phi i32 [ %i.ae, %bb.f ], [ 1, %.thread ]
  tail call void @_ZN3re219ConvertRunesToBytesEbPiiPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i1 noundef zeroext %i.y, ptr noundef %i.af, i32 noundef %i.ag, ptr noundef nonnull %1)
  %i.ah = load i16, ptr %i.v, align 2, !tbaa !14
  %i.ai = trunc i16 %i.ah to i8
  %i.aj = and i8 %i.ai, 1
  store i8 %i.aj, ptr %2, align 1, !tbaa !145
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.g
  %.022 = phi i1 [ true, %bb.g ], [ false, %bb.b ]
  ret i1 %.022
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN3re216CharClassBuilderC2Ev(ptr noundef nonnull align 8 dereferenceable(64) initializes((24, 28), (32, 40)) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store i32 0, ptr %i.a, align 8, !tbaa !149
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %i.b, align 8, !tbaa !23
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.a, ptr %i.c, align 8, !tbaa !150
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.a, ptr %i.d, align 8, !tbaa !151
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 0, ptr %i.e, align 8, !tbaa !152
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.f, align 8, !tbaa !153
  store i32 0, ptr %0, align 8, !tbaa !160
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.g, align 4, !tbaa !161
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN3re216CharClassBuilder8AddRangeEii(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp slt i32 %2, %1
  br i1 %i.a, label %_ZNSt3setIN3re29RuneRangeENS0_13RuneRangeLessESaIS1_EE6insertEOS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp slt i32 %1, 123
  %i.c = icmp sgt i32 %2, 64
  %or.cond = and i1 %i.b, %i.c
  br i1 %or.cond, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %.sroa.speculated115 = tail call i32 @llvm.smax.i32(i32 %1, i32 65) ; 3 uses
  %.sroa.speculated111 = tail call i32 @llvm.umin.i32(i32 %2, i32 90) ; 2 uses
  %.not = icmp samesign ugt i32 %.sroa.speculated115, %.sroa.speculated111
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = sub nuw nsw i32 %.sroa.speculated111, %.sroa.speculated115
  %i.e = shl nuw nsw i32 2, %i.d
  %i.f = add nsw i32 %i.e, -1
  %i.g = add nsw i32 %.sroa.speculated115, -65
  %i.h = shl i32 %i.f, %i.g
  %i.i = load i32, ptr %0, align 8, !tbaa !160
  %i.j = or i32 %i.i, %i.h
  store i32 %i.j, ptr %0, align 8, !tbaa !160
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
end_hunk_0
