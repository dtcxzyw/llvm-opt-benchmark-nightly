inline.NumInlined: 5166
inline.NumDeleted: 1788
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4cvc58internal6theory11quantifiers13UnifContextIo13updateContextERSt6vectorINS0_12NodeTemplateILb1EEESaIS6_EEb:bb.a

bb.s:                                             ; preds = %bb.r
  %i.bf = add i64 %i.bd, 1152920405095219200
  %i.bg = and i64 %i.bf, 1152920405095219200      ; 2 uses
  %i.bh = and i64 %i.bd, -1152920405095219201
  %i.bi = or disjoint i64 %i.bg, %i.bh
  store i64 %i.bi, ptr %i.az, align 8
  %i.bj = icmp eq i64 %i.bg, 0
  br i1 %i.bj, label %bb.t, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i, !prof !49

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.az)
          to label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i unwind label %bb.o

_ZN4cvc58internal4expr9NodeValue3decEv.exit.i:    ; preds = %bb.t, %bb.s, %bb.r
  %i.bk = load ptr, ptr %i.b, align 8, !tbaa !45  ; 5 uses
  store ptr %i.bk, ptr %i.ay, align 8, !tbaa !45
  %i.bl = load i64, ptr %i.bk, align 8            ; 3 uses
  %i.bm = lshr i64 %i.bl, 40
  %i.bn = trunc nuw nsw i64 %i.bm to i32
  %i.bo = and i32 %i.bn, 1048575                  ; 3 uses
  %i.bp = icmp samesign ult i32 %i.bo, 1048574
  br i1 %i.bp, label %bb.u, label %bb.v, !prof !50

bb.u:                                             ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i
  %i.bq = add nuw nsw i32 %i.bo, 1
  %i.br = zext nneg i32 %i.bq to i64
  %i.bs = shl nuw nsw i64 %i.br, 40
  %i.bt = and i64 %i.bl, -1152920405095219201
  %i.bu = or i64 %i.bs, %i.bt
  store i64 %i.bu, ptr %i.bk, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit

bb.v:                                             ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i
  %i.bv = icmp eq i32 %i.bo, 1048574
  br i1 %i.bv, label %bb.w, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit, !prof !49

bb.w:                                             ; preds = %bb.v
  %i.bw = or i64 %i.bl, 1152920405095219200
  store i64 %i.bw, ptr %i.bk, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bk)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit unwind label %bb.o

_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit: ; preds = %bb.v, %bb.u, %bb.q, %bb.w, %bb.p, %bb.m
  %.2 = phi i1 [ %.01531, %bb.m ], [ true, %bb.v ], [ %.01531, %bb.p ], [ true, %bb.w ], [ true, %bb.q ], [ true, %bb.u ] ; 2 uses
  %i.bx = load i64, ptr %.pre, align 8            ; 3 uses
  %i.by = and i64 %i.bx, 1152920405095219200
  %.not.i.i21 = icmp eq i64 %i.by, 1152920405095219200
  br i1 %.not.i.i21, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, label %bb.x, !prof !49

bb.x:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit
  %i.bz = add i64 %i.bx, 1152920405095219200
  %i.ca = and i64 %i.bz, 1152920405095219200      ; 2 uses
  %i.cb = and i64 %i.bx, -1152920405095219201
  %i.cc = or disjoint i64 %i.ca, %i.cb
  store i64 %i.cc, ptr %.pre, align 8
  %i.cd = icmp eq i64 %i.ca, 0
  br i1 %i.cd, label %bb.y, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, !prof !49

bb.y:                                             ; preds = %bb.x
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %.pre)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ce = landingpad { ptr, i32 }
          catch ptr null
  %i.cf = extractvalue { ptr, i32 } %i.ce, 0
  tail call void @__clang_call_terminate(ptr %i.cf) #28
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit:   ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit, %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.cg = add nuw i64 %.01432, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.cg, %i.v
  br i1 %exitcond.not, label %._crit_edge, label %bb.e, !llvm.loop !58

bb.aa:                                            ; preds = %.body, %bb.n
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.av, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  resume { ptr, i32 } %.pn

bb.ab:                                            ; preds = %._crit_edge
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !17
  invoke void @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_St3mapINS1_6theory11quantifiers8NodeRoleEbSt4lessIS9_ESaIS4_IKS9_bEEEESt10_Select1stISG_ESA_IS3_ESaISG_EE8_M_eraseEPSt13_Rb_tree_nodeISG_E(ptr noundef nonnull align 8 dereferenceable(48) %i.ch, ptr noundef %i.cj)
          to label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES_INS1_6theory11quantifiers8NodeRoleEbSt4lessIS6_ESaISt4pairIKS6_bEEES7_IS3_ESaIS9_IKS3_SD_EEE5clearEv.exit unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ck = landingpad { ptr, i32 }
          catch ptr null
  %i.cl = extractvalue { ptr, i32 } %i.ck, 0
  tail call void @__clang_call_terminate(ptr %i.cl) #28
  unreachable

_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES_INS1_6theory11quantifiers8NodeRoleEbSt4lessIS6_ESaISt4pairIKS6_bEEES7_IS3_ESaIS9_IKS3_SD_EEE5clearEv.exit: ; preds = %bb.ab
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store ptr null, ptr %i.ci, align 8, !tbaa !17
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.cm, ptr %i.cn, align 8, !tbaa !18
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.cm, ptr %i.co, align 8, !tbaa !19
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 0, ptr %i.cp, align 8, !tbaa !20
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES_INS1_6theory11quantifiers8NodeRoleEbSt4lessIS6_ESaISt4pairIKS6_bEEES7_IS3_ESaIS9_IKS3_SD_EEE5clearEv.exit, %._crit_edge
  %.015.lcssa42 = phi i1 [ false, %._crit_edge ], [ true, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES_INS1_6theory11quantifiers8NodeRoleEbSt4lessIS6_ESaISt4pairIKS6_bEEES7_IS3_ESaIS9_IKS3_SD_EEE5clearEv.exit ], [ false, %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit ]
  %i.cq = load ptr, ptr %3, align 8, !tbaa !45    ; 3 uses
  %i.cr = load i64, ptr %i.cq, align 8            ; 3 uses
  %i.cs = and i64 %i.cr, 1152920405095219200
  %.not.i.i23 = icmp eq i64 %i.cs, 1152920405095219200
  br i1 %.not.i.i23, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit25, label %bb.ad, !prof !49

bb.ad:                                            ; preds = %._crit_edge.thread
  %i.ct = add i64 %i.cr, 1152920405095219200
  %i.cu = and i64 %i.ct, 1152920405095219200      ; 2 uses
  %i.cv = and i64 %i.cr, -1152920405095219201
  %i.cw = or disjoint i64 %i.cu, %i.cv
  store i64 %i.cw, ptr %i.cq, align 8
  %i.cx = icmp eq i64 %i.cu, 0
  br i1 %i.cx, label %bb.ae, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit25, !prof !49

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cq)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit25 unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cy = landingpad { ptr, i32 }
          catch ptr null
  %i.cz = extractvalue { ptr, i32 } %i.cy, 0
  tail call void @__clang_call_terminate(ptr %i.cz) #28
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit25: ; preds = %._crit_edge.thread, %bb.ad, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  ret i1 %.015.lcssa42
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4cvc58internal12NodeTemplateILb1EE6isNullEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !45
  %i.b = load atomic i8, ptr @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null acquire, align 8
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %_ZN4cvc58internal4expr9NodeValue4nullEv.exit, !prof !43

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #21
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %_ZN4cvc58internal4expr9NodeValue4nullEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27
          to label %bb.d unwind label %bb.e       ; 3 uses

bb.d:                                             ; preds = %bb.c
  store i64 1152920405095219200, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  store ptr %i.e, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !44
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #21
  br label %_ZN4cvc58internal4expr9NodeValue4nullEv.exit

bb.e:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #21
  resume { ptr, i32 } %i.g

_ZN4cvc58internal4expr9NodeValue4nullEv.exit:     ; preds = %bb.a, %bb.b, %bb.d
  %i.h = load ptr, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !44
  %i.i = icmp eq ptr %i.a, %i.h
  ret i1 %i.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN4cvc58internal6theory11quantifiers13UnifContextIo20updateStringPositionERSt6vectorImSaImEENS2_8NodeRoleE(ptr noundef nonnull align 8 dereferenceable(132) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i32 noundef %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !59   ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !62     ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = ashr exact i64 %i.f, 3
  %.not15 = icmp eq ptr %i.b, %i.c
  br i1 %.not15, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.d
  br i1 %.1, label %bb.e, label %._crit_edge.thread

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 4 uses
  %.01113 = phi i1 [ false, %.lr.ph ], [ %.1, %bb.d ]
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv
  %i.k = load i64, ptr %i.j, align 8, !tbaa !63   ; 2 uses
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !64
  %i.n = trunc i64 %i.k to i32
  %i.o = add i32 %i.m, %i.n
  store i32 %i.o, ptr %i.l, align 4, !tbaa !64
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.1 = phi i1 [ true, %bb.c ], [ %.01113, %bb.b ] ; 2 uses
  %3 = add i64 %indvars.iv, 1
  %4 = and i64 %3, 4294967295
  %i.p = icmp ugt i64 %i.g, %4
  %indvars.iv.next = add i64 %indvars.iv, 1
  br i1 %i.p, label %bb.b, label %._crit_edge, !llvm.loop !65

bb.e:                                             ; preds = %._crit_edge
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !17
  invoke void @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_St3mapINS1_6theory11quantifiers8NodeRoleEbSt4lessIS9_ESaIS4_IKS9_bEEEESt10_Select1stISG_ESA_IS3_ESaISG_EE8_M_eraseEPSt13_Rb_tree_nodeISG_E(ptr noundef nonnull align 8 dereferenceable(48) %i.q, ptr noundef %i.s)
          to label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES_INS1_6theory11quantifiers8NodeRoleEbSt4lessIS6_ESaISt4pairIKS6_bEEES7_IS3_ESaIS9_IKS3_SD_EEE5clearEv.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  tail call void @__clang_call_terminate(ptr %i.u) #28
  unreachable

_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES_INS1_6theory11quantifiers8NodeRoleEbSt4lessIS6_ESaISt4pairIKS6_bEEES7_IS3_ESaIS9_IKS3_SD_EEE5clearEv.exit: ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store ptr null, ptr %i.r, align 8, !tbaa !17
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.v, ptr %i.w, align 8, !tbaa !18
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.v, ptr %i.x, align 8, !tbaa !19
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 0, ptr %i.y, align 8, !tbaa !20
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.a, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES_INS1_6theory11quantifiers8NodeRoleEbSt4lessIS6_ESaISt4pairIKS6_bEEES7_IS3_ESaIS9_IKS3_SD_EEE5clearEv.exit, %._crit_edge
  %.011.lcssa18 = phi i1 [ false, %._crit_edge ], [ true, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES_INS1_6theory11quantifiers8NodeRoleEbSt4lessIS6_ESaISt4pairIKS6_bEEES7_IS3_ESaIS9_IKS3_SD_EEE5clearEv.exit ], [ false, %bb.a ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i32 %2, ptr %i.z, align 8, !tbaa !46
  ret i1 %.011.lcssa18
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4cvc58internal6theory11quantifiers13UnifContextIo10initializeEPNS2_11SygusUnifIoE(ptr noundef nonnull align 8 dereferenceable(132) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !53   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !54   ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, %i.b
  br i1 %.not.i.i, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE5clearEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.o, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !45 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8              ; 3 uses
  %i.g = and i64 %i.f, 1152920405095219200
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.g, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i.i, label %bb.b, !prof !49

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.h = add i64 %i.f, 1152920405095219200
  %i.i = and i64 %i.h, 1152920405095219200        ; 2 uses
  %i.j = and i64 %i.f, -1152920405095219201
  %i.k = or disjoint i64 %i.i, %i.j
  store i64 %i.k, ptr %i.e, align 8
  %i.l = icmp eq i64 %i.i, 0
  br i1 %i.l, label %bb.c, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i.i, !prof !49

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #28
  unreachable

_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i.i: ; preds = %bb.c, %bb.b, %.lr.ph.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, %i.d
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !55

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i.i
  store ptr %i.b, ptr %i.c, align 8, !tbaa !54
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE5clearEv.exit

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE5clearEv.exit: ; preds = %bb.a, %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !51   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !66
  %.not.i.i16 = icmp eq ptr %i.s, %i.q
  br i1 %.not.i.i16, label %_ZNSt6vectorIjSaIjEE5clearEv.exit, label %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE5clearEv.exit
  store ptr %i.q, ptr %i.r, align 8, !tbaa !66
  br label %_ZNSt6vectorIjSaIjEE5clearEv.exit

_ZNSt6vectorIjSaIjEE5clearEv.exit:                ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE5clearEv.exit, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i32 1, ptr %i.t, align 8, !tbaa !46
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !17
  invoke void @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_St3mapINS1_6theory11quantifiers8NodeRoleEbSt4lessIS9_ESaIS4_IKS9_bEEEESt10_Select1stISG_ESA_IS3_ESaISG_EE8_M_eraseEPSt13_Rb_tree_nodeISG_E(ptr noundef nonnull align 8 dereferenceable(48) %i.u, ptr noundef %i.w)
          to label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES_INS1_6theory11quantifiers8NodeRoleEbSt4lessIS6_ESaISt4pairIKS6_bEEES7_IS3_ESaIS9_IKS3_SD_EEE5clearEv.exit unwind label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIjSaIjEE5clearEv.exit
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  tail call void @__clang_call_terminate(ptr %i.y) #28
  unreachable

_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES_INS1_6theory11quantifiers8NodeRoleEbSt4lessIS6_ESaISt4pairIKS6_bEEES7_IS3_ESaIS9_IKS3_SD_EEE5clearEv.exit: ; preds = %_ZNSt6vectorIjSaIjEE5clearEv.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  store ptr null, ptr %i.v, align 8, !tbaa !17
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !18
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  store ptr %i.z, ptr %i.ab, align 8, !tbaa !19
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  store i64 0, ptr %i.ac, align 8, !tbaa !20
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !67
  %i.ag = load ptr, ptr %i.ad, align 8, !tbaa !70
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = sdiv exact i64 %i.aj, 24
  %i.al = trunc i64 %i.ak to i32                  ; 4 uses
  %.not = icmp eq i32 %i.al, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES_INS1_6theory11quantifiers8NodeRoleEbSt4lessIS6_ESaISt4pairIKS6_bEEES7_IS3_ESaIS9_IKS3_SD_EEE5clearEv.exit
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.f

._crit_edge:                                      ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES_INS1_6theory11quantifiers8NodeRoleEbSt4lessIS6_ESaISt4pairIKS6_bEEES7_IS3_ESaIS9_IKS3_SD_EEE5clearEv.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !71 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !71
  %i.as = icmp eq ptr %i.ap, %i.ar
  br i1 %i.as, label %bb.y, label %bb.l

bb.f:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit
  %.01324 = phi i32 [ 0, %.lr.ph ], [ %i.bk, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit ]
  %i.at = load ptr, ptr %i.c, align 8, !tbaa !54  ; 3 uses
  %i.au = load ptr, ptr %i.an, align 8, !tbaa !57
  %.not.i = icmp eq ptr %i.at, %i.au
  br i1 %.not.i, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.av = load ptr, ptr %i.am, align 8, !tbaa !45 ; 5 uses
  store ptr %i.av, ptr %i.at, align 8, !tbaa !45
  %i.aw = load i64, ptr %i.av, align 8            ; 3 uses
  %i.ax = lshr i64 %i.aw, 40
  %i.ay = trunc nuw nsw i64 %i.ax to i32
  %i.az = and i32 %i.ay, 1048575                  ; 3 uses
  %i.ba = icmp samesign ult i32 %i.az, 1048574
  br i1 %i.ba, label %bb.h, label %bb.i, !prof !50

bb.h:                                             ; preds = %bb.g
  %i.bb = add nuw nsw i32 %i.az, 1
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = shl nuw nsw i64 %i.bc, 40
  %i.be = and i64 %i.aw, -1152920405095219201
  %i.bf = or i64 %i.bd, %i.be
  store i64 %i.bf, ptr %i.av, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i

bb.i:                                             ; preds = %bb.g
  %i.bg = icmp eq i32 %i.az, 1048574
  br i1 %i.bg, label %bb.j, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i, !prof !49

bb.j:                                             ; preds = %bb.i
  %i.bh = or i64 %i.aw, 1152920405095219200
  store i64 %i.bh, ptr %i.av, align 8
  tail call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.av)
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i: ; preds = %bb.j, %bb.i, %bb.h
  %i.bi = load ptr, ptr %i.c, align 8, !tbaa !54
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store ptr %i.bj, ptr %i.c, align 8, !tbaa !54
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit

bb.k:                                             ; preds = %bb.f
  tail call void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr %i.at, ptr noundef nonnull align 8 dereferenceable(8) %i.am)
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i, %bb.k
  %i.bk = add nuw i32 %.01324, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.bk, %i.al
  br i1 %exitcond.not, label %._crit_edge, label %bb.f, !llvm.loop !72

bb.l:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @_ZNK4cvc58internal12NodeTemplateILb1EE7getTypeEb(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::TypeNode") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.ap, i1 noundef zeroext false)
  %i.bl = invoke noundef zeroext i1 @_ZNK4cvc58internal8TypeNode12isStringLikeEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.m unwind label %bb.n
end_hunk_0
begin_hunk_1_@_ZN4cvc58internal6theory11quantifiers11SygusUnifIo12constructSolENS0_12NodeTemplateILb1EEES5_NS2_8NodeRoleEiRSt6vectorIS5_SaIS5_EE:.critedge580
  %i.ajq = or disjoint i64 %i.ajo, %i.ajp
  store i64 %i.ajq, ptr %i.ajk, align 8
  %i.ajr = icmp eq i64 %i.ajo, 0
  br i1 %i.ajr, label %bb.ki, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1068, !prof !49

bb.ki:                                            ; preds = %bb.kh
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ajk)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1068 unwind label %bb.kj

bb.kj:                                            ; preds = %bb.ki
  %i.ajs = landingpad { ptr, i32 }
          catch ptr null
  %i.ajt = extractvalue { ptr, i32 } %i.ajs, 0
  call void @__clang_call_terminate(ptr %i.ajt) #28
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1068: ; preds = %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEESt6vectorImSaImEESt4lessIS3_ESaISt4pairIKS3_S6_EEE5eraseERSA_.exit, %bb.kh, %bb.ki
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.jd, !llvm.loop !459

bb.kk:                                            ; preds = %bb.jx, %bb.jw, %bb.jv
  %.pn457.pn = phi { ptr, i32 } [ %i.aib, %bb.jx ], [ %i.ahz, %bb.jv ], [ %i.aia, %bb.jw ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %64) #21
  br label %bb.kl

bb.kl:                                            ; preds = %bb.kk, %bb.ju
  %.pn457.pn.pn = phi { ptr, i32 } [ %.pn457.pn, %bb.kk ], [ %i.ahy, %bb.ju ]
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #21
  br label %bb.ma

bb.km:                                            ; preds = %._crit_edge
  %i.aju = getelementptr inbounds nuw i8, ptr %1, i64 288
  store i8 1, ptr %i.aju, align 8, !tbaa !140
  call void @llvm.lifetime.start.p0(ptr nonnull %66) #21
  %i.ajv = load ptr, ptr %1, align 8, !tbaa !8
  %i.ajw = getelementptr inbounds nuw i8, ptr %i.ajv, i64 80
  %i.ajx = load ptr, ptr %i.ajw, align 8
  invoke void %i.ajx(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %66, ptr noundef nonnull align 8 dereferenceable(193) %1, ptr noundef nonnull align 8 dereferenceable(24) %62, ptr noundef nonnull align 8 dereferenceable(48) %61, ptr noundef nonnull align 8 dereferenceable(48) %60)
          to label %bb.kn unwind label %bb.lj

bb.kn:                                            ; preds = %bb.km
  %i.ajy = load ptr, ptr %0, align 8, !tbaa !45   ; 4 uses
  %i.ajz = load ptr, ptr %66, align 8, !tbaa !45
  %.not.i1069 = icmp eq ptr %i.ajy, %i.ajz
  br i1 %.not.i1069, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit1074, label %bb.ko, !prof !49

bb.ko:                                            ; preds = %bb.kn
  %i.aka = load i64, ptr %i.ajy, align 8          ; 3 uses
  %i.akb = and i64 %i.aka, 1152920405095219200
  %.not.i.i1070 = icmp eq i64 %i.akb, 1152920405095219200
  br i1 %.not.i.i1070, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i1071, label %bb.kp, !prof !49

bb.kp:                                            ; preds = %bb.ko
  %i.akc = add i64 %i.aka, 1152920405095219200
  %i.akd = and i64 %i.akc, 1152920405095219200    ; 2 uses
  %i.ake = and i64 %i.aka, -1152920405095219201
  %i.akf = or disjoint i64 %i.akd, %i.ake
  store i64 %i.akf, ptr %i.ajy, align 8
  %i.akg = icmp eq i64 %i.akd, 0
  br i1 %i.akg, label %bb.kq, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i1071, !prof !49

bb.kq:                                            ; preds = %bb.kp
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ajy)
          to label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i1071 unwind label %bb.lk

_ZN4cvc58internal4expr9NodeValue3decEv.exit.i1071: ; preds = %bb.kq, %bb.kp, %bb.ko
  %i.akh = load ptr, ptr %66, align 8, !tbaa !45  ; 5 uses
  store ptr %i.akh, ptr %0, align 8, !tbaa !45
  %i.aki = load i64, ptr %i.akh, align 8          ; 3 uses
  %i.akj = lshr i64 %i.aki, 40
  %i.akk = trunc nuw nsw i64 %i.akj to i32
  %i.akl = and i32 %i.akk, 1048575                ; 3 uses
  %i.akm = icmp samesign ult i32 %i.akl, 1048574
  br i1 %i.akm, label %bb.kr, label %bb.ks, !prof !50

bb.kr:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i1071
  %i.akn = add nuw nsw i32 %i.akl, 1
  %i.ako = zext nneg i32 %i.akn to i64
  %i.akp = shl nuw nsw i64 %i.ako, 40
  %i.akq = and i64 %i.aki, -1152920405095219201
  %i.akr = or i64 %i.akp, %i.akq
  store i64 %i.akr, ptr %i.akh, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit1074

bb.ks:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i1071
  %i.aks = icmp eq i32 %i.akl, 1048574
  br i1 %i.aks, label %bb.kt, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit1074, !prof !49

bb.kt:                                            ; preds = %bb.ks
  %i.akt = or i64 %i.aki, 1152920405095219200
  store i64 %i.akt, ptr %i.akh, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.akh)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit1074 unwind label %bb.lk

_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit1074: ; preds = %bb.ks, %bb.kr, %bb.kn, %bb.kt
  %i.aku = load ptr, ptr %66, align 8, !tbaa !45  ; 3 uses
  %i.akv = load i64, ptr %i.aku, align 8          ; 3 uses
  %i.akw = and i64 %i.akv, 1152920405095219200
  %.not.i.i1075 = icmp eq i64 %i.akw, 1152920405095219200
  br i1 %.not.i.i1075, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1077, label %bb.ku, !prof !49

bb.ku:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit1074
  %i.akx = add i64 %i.akv, 1152920405095219200
  %i.aky = and i64 %i.akx, 1152920405095219200    ; 2 uses
  %i.akz = and i64 %i.akv, -1152920405095219201
  %i.ala = or disjoint i64 %i.aky, %i.akz
  store i64 %i.ala, ptr %i.aku, align 8
  %i.alb = icmp eq i64 %i.aky, 0
  br i1 %i.alb, label %bb.kv, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1077, !prof !49

bb.kv:                                            ; preds = %bb.ku
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.aku)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1077 unwind label %bb.kw

bb.kw:                                            ; preds = %bb.kv
  %i.alc = landingpad { ptr, i32 }
          catch ptr null
  %i.ald = extractvalue { ptr, i32 } %i.alc, 0
  call void @__clang_call_terminate(ptr %i.ald) #28
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1077: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit1074, %bb.ku, %bb.kv
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #21
  invoke void @_ZN4cvc58internal6theory11quantifiers9SygusUnif6indentEPKci(ptr noundef nonnull @.str.62, i32 noundef %5)
          to label %.critedge600 unwind label %bb.jc

.critedge600:                                     ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1077
  %i.ale = load ptr, ptr %i.aet, align 8, !tbaa !17 ; 2 uses
  %.not10.i.i.i.i1101 = icmp eq ptr %i.ale, null
  br i1 %.not10.i.i.i.i1101, label %.critedge.i1112, label %.lr.ph.i.i.i.i1102

.lr.ph.i.i.i.i1102:                               ; preds = %.critedge600
  %i.alf = load ptr, ptr %0, align 8, !tbaa !45
  %i.alg = load i64, ptr %i.alf, align 8
  %i.alh = and i64 %i.alg, 1099511627775          ; 2 uses
  br label %bb.kx

bb.kx:                                            ; preds = %bb.kx, %.lr.ph.i.i.i.i1102
  %.012.i.i.i.i1103 = phi ptr [ %i.ale, %.lr.ph.i.i.i.i1102 ], [ %.1.i.i.i.i1108, %bb.kx ] ; 4 uses
  %.0811.i.i.i.i1104 = phi ptr [ %i.aes, %.lr.ph.i.i.i.i1102 ], [ %.19.i.i.i.i1105, %bb.kx ] ; 2 uses
  %i.ali = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i1103, i64 32
  %i.alj = load ptr, ptr %i.ali, align 8, !tbaa !45
  %i.alk = load i64, ptr %i.alj, align 8
  %i.all = and i64 %i.alk, 1099511627775
  %i.alm = icmp samesign ult i64 %i.all, %i.alh   ; 3 uses
  %.19.i.i.i.i1105 = select i1 %i.alm, ptr %.0811.i.i.i.i1104, ptr %.012.i.i.i.i1103 ; 5 uses
  %.1.in.v.i.i.i.i1106 = select i1 %i.alm, i64 24, i64 16
  %.1.in.i.i.i.i1107 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i1103, i64 %.1.in.v.i.i.i.i1106
  %.1.i.i.i.i1108 = load ptr, ptr %.1.in.i.i.i.i1107, align 8, !tbaa !97 ; 2 uses
  %.not.i.i.i.i1109 = icmp eq ptr %.1.i.i.i.i1108, null
  br i1 %.not.i.i.i.i1109, label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEESt6vectorImSaImEESt4lessIS3_ESaISt4pairIKS3_S6_EEE11lower_boundERSA_.exit.i1110, label %bb.kx, !llvm.loop !457

_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEESt6vectorImSaImEESt4lessIS3_ESaISt4pairIKS3_S6_EEE11lower_boundERSA_.exit.i1110: ; preds = %bb.kx
  %i.aln = icmp eq ptr %.19.i.i.i.i1105, %i.aes
  br i1 %i.aln, label %.critedge.i1112, label %bb.ky

bb.ky:                                            ; preds = %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEESt6vectorImSaImEESt4lessIS3_ESaISt4pairIKS3_S6_EEE11lower_boundERSA_.exit.i1110
  %.19.i.i.i.i1105.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.alm, ptr %.0811.i.i.i.i1104, ptr %.012.i.i.i.i1103
  %.19.i.i.i.i1105.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i1105.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.alo = load ptr, ptr %.19.i.i.i.i1105.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !45
  %i.alp = load i64, ptr %i.alo, align 8
  %i.alq = and i64 %i.alp, 1099511627775
  %i.alr = icmp samesign ult i64 %i.alh, %i.alq
  br i1 %i.alr, label %.critedge.i1112, label %bb.kz

.critedge.i1112:                                  ; preds = %bb.ky, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEESt6vectorImSaImEESt4lessIS3_ESaISt4pairIKS3_S6_EEE11lower_boundERSA_.exit.i1110, %.critedge600
  %.08.lcssa.i.i.i11.i1113 = phi ptr [ %.19.i.i.i.i1105, %bb.ky ], [ %.19.i.i.i.i1105, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEESt6vectorImSaImEESt4lessIS3_ESaISt4pairIKS3_S6_EEE11lower_boundERSA_.exit.i1110 ], [ %i.aes, %.critedge600 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #21
  store ptr %0, ptr %27, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #21
  %i.als = invoke ptr @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_St6vectorImSaImEEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS5_EESK_IJEEEEESt17_Rb_tree_iteratorIS9_ESt23_Rb_tree_const_iteratorIS9_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %60, ptr %.08.lcssa.i.i.i11.i1113, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull align 1 dereferenceable(1) %28)
          to label %.noexc1114 unwind label %bb.lm

.noexc1114:                                       ; preds = %.critedge.i1112
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #21
  br label %bb.kz

bb.kz:                                            ; preds = %.noexc1114, %bb.ky
  %.sroa.06.0.i1111 = phi ptr [ %i.als, %.noexc1114 ], [ %.19.i.i.i.i1105, %bb.ky ] ; 2 uses
  %i.alt = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i1111, i64 40
  %i.alu = load i32, ptr %i.a, align 4, !tbaa !434
  %i.alv = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i1111, i64 48
  %i.alw = load ptr, ptr %i.alv, align 8, !tbaa !59 ; 2 uses
  %i.alx = load ptr, ptr %i.alt, align 8, !tbaa !62 ; 3 uses
  %i.aly = ptrtoint ptr %i.alw to i64
  %i.alz = ptrtoint ptr %i.alx to i64
  %i.ama = sub i64 %i.aly, %i.alz
  %i.amb = ashr exact i64 %i.ama, 3               ; 2 uses
  %.not15.i = icmp eq ptr %i.alw, %i.alx
  br i1 %.not15.i, label %_ZN4cvc58internal6theory11quantifiers13UnifContextIo20updateStringPositionERSt6vectorImSaImEENS2_8NodeRoleE.exit, label %.lr.ph.i1116

.lr.ph.i1116:                                     ; preds = %bb.kz
  %i.amc = getelementptr inbounds nuw i8, ptr %1, i64 536
  %i.amd = load ptr, ptr %i.amc, align 8
  br label %.outer

.outer:                                           ; preds = %.thread, %.lr.ph.i1116
  %indvars.iv.i.ph = phi i64 [ %89, %.thread ], [ 0, %.lr.ph.i1116 ]
  %.01113.i.ph = phi i1 [ true, %.thread ], [ false, %.lr.ph.i1116 ]
  br label %bb.la

._crit_edge.i:                                    ; preds = %bb.lb
  br i1 %.01113.i.ph, label %._crit_edge.i.thread, label %_ZN4cvc58internal6theory11quantifiers13UnifContextIo20updateStringPositionERSt6vectorImSaImEENS2_8NodeRoleE.exit

bb.la:                                            ; preds = %.outer, %bb.lb
  %indvars.iv.i = phi i64 [ %87, %bb.lb ], [ %indvars.iv.i.ph, %.outer ] ; 4 uses
  %i.ame = getelementptr inbounds nuw [8 x i8], ptr %i.alx, i64 %indvars.iv.i
  %i.amf = load i64, ptr %i.ame, align 8, !tbaa !63 ; 2 uses
  %.not.i1117 = icmp eq i64 %i.amf, 0
  br i1 %.not.i1117, label %bb.lb, label %.thread

bb.lb:                                            ; preds = %bb.la
  %87 = add i64 %indvars.iv.i, 1                  ; 2 uses
  %88 = and i64 %87, 4294967295
  %i.amg = icmp ugt i64 %i.amb, %88
  br i1 %i.amg, label %bb.la, label %._crit_edge.i, !llvm.loop !65

.thread:                                          ; preds = %bb.la
  %i.amh = getelementptr inbounds nuw [4 x i8], ptr %i.amd, i64 %indvars.iv.i ; 2 uses
  %i.ami = load i32, ptr %i.amh, align 4, !tbaa !64
  %i.amj = trunc i64 %i.amf to i32
  %i.amk = add i32 %i.ami, %i.amj
  store i32 %i.amk, ptr %i.amh, align 4, !tbaa !64
  %89 = add i64 %indvars.iv.i, 1                  ; 2 uses
  %90 = and i64 %89, 4294967295
  %i.aml = icmp ugt i64 %i.amb, %90
  br i1 %i.aml, label %.outer, label %._crit_edge.i.thread, !llvm.loop !65

._crit_edge.i.thread:                             ; preds = %.thread, %._crit_edge.i
  %i.amm = getelementptr inbounds nuw i8, ptr %1, i64 560
  %i.amn = getelementptr inbounds nuw i8, ptr %1, i64 576 ; 2 uses
  %i.amo = load ptr, ptr %i.amn, align 8, !tbaa !17
  invoke void @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_St3mapINS1_6theory11quantifiers8NodeRoleEbSt4lessIS9_ESaIS4_IKS9_bEEEESt10_Select1stISG_ESA_IS3_ESaISG_EE8_M_eraseEPSt13_Rb_tree_nodeISG_E(ptr noundef nonnull align 8 dereferenceable(48) %i.amm, ptr noundef %i.amo)
          to label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES_INS1_6theory11quantifiers8NodeRoleEbSt4lessIS6_ESaISt4pairIKS6_bEEES7_IS3_ESaIS9_IKS3_SD_EEE5clearEv.exit.i unwind label %bb.lc

bb.lc:                                            ; preds = %._crit_edge.i.thread
  %i.amp = landingpad { ptr, i32 }
          catch ptr null
  %i.amq = extractvalue { ptr, i32 } %i.amp, 0
  call void @__clang_call_terminate(ptr %i.amq) #28
  unreachable

_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES_INS1_6theory11quantifiers8NodeRoleEbSt4lessIS6_ESaISt4pairIKS6_bEEES7_IS3_ESaIS9_IKS3_SD_EEE5clearEv.exit.i: ; preds = %._crit_edge.i.thread
  %i.amr = getelementptr inbounds nuw i8, ptr %1, i64 568 ; 2 uses
  store ptr null, ptr %i.amn, align 8, !tbaa !17
  %i.ams = getelementptr inbounds nuw i8, ptr %1, i64 584
  store ptr %i.amr, ptr %i.ams, align 8, !tbaa !18
  %i.amt = getelementptr inbounds nuw i8, ptr %1, i64 592
  store ptr %i.amr, ptr %i.amt, align 8, !tbaa !19
  %i.amu = getelementptr inbounds nuw i8, ptr %1, i64 600
  store i64 0, ptr %i.amu, align 8, !tbaa !20
  br label %_ZN4cvc58internal6theory11quantifiers13UnifContextIo20updateStringPositionERSt6vectorImSaImEENS2_8NodeRoleE.exit

_ZN4cvc58internal6theory11quantifiers13UnifContextIo20updateStringPositionERSt6vectorImSaImEENS2_8NodeRoleE.exit: ; preds = %bb.kz, %._crit_edge.i, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES_INS1_6theory11quantifiers8NodeRoleEbSt4lessIS6_ESaISt4pairIKS6_bEEES7_IS3_ESaIS9_IKS3_SD_EEE5clearEv.exit.i
  %.011.lcssa18.i = phi i1 [ false, %._crit_edge.i ], [ true, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES_INS1_6theory11quantifiers8NodeRoleEbSt4lessIS6_ESaISt4pairIKS6_bEEES7_IS3_ESaIS9_IKS3_SD_EEE5clearEv.exit.i ], [ false, %bb.kz ]
  %i.amv = getelementptr inbounds nuw i8, ptr %1, i64 632
  store i32 %i.alu, ptr %i.amv, align 8, !tbaa !46
  %i.amw = load ptr, ptr %i.aez, align 8, !tbaa !17 ; 2 uses
  %.not10.i.i.i.i1118 = icmp eq ptr %i.amw, null
  br i1 %.not10.i.i.i.i1118, label %.critedge.i1129, label %.lr.ph.i.i.i.i1119

.lr.ph.i.i.i.i1119:                               ; preds = %_ZN4cvc58internal6theory11quantifiers13UnifContextIo20updateStringPositionERSt6vectorImSaImEENS2_8NodeRoleE.exit
  %i.amx = load ptr, ptr %0, align 8, !tbaa !45
  %i.amy = load i64, ptr %i.amx, align 8
  %i.amz = and i64 %i.amy, 1099511627775          ; 2 uses
  br label %bb.ld

bb.ld:                                            ; preds = %bb.ld, %.lr.ph.i.i.i.i1119
  %.012.i.i.i.i1120 = phi ptr [ %i.amw, %.lr.ph.i.i.i.i1119 ], [ %.1.i.i.i.i1125, %bb.ld ] ; 4 uses
  %.0811.i.i.i.i1121 = phi ptr [ %i.aey, %.lr.ph.i.i.i.i1119 ], [ %.19.i.i.i.i1122, %bb.ld ] ; 2 uses
  %i.ana = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i1120, i64 32
  %i.anb = load ptr, ptr %i.ana, align 8, !tbaa !45
  %i.anc = load i64, ptr %i.anb, align 8
  %i.and = and i64 %i.anc, 1099511627775
  %i.ane = icmp samesign ult i64 %i.and, %i.amz   ; 3 uses
  %.19.i.i.i.i1122 = select i1 %i.ane, ptr %.0811.i.i.i.i1121, ptr %.012.i.i.i.i1120 ; 5 uses
  %.1.in.v.i.i.i.i1123 = select i1 %i.ane, i64 24, i64 16
  %.1.in.i.i.i.i1124 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i1120, i64 %.1.in.v.i.i.i.i1123
  %.1.i.i.i.i1125 = load ptr, ptr %.1.in.i.i.i.i1124, align 8, !tbaa !97 ; 2 uses
  %.not.i.i.i.i1126 = icmp eq ptr %.1.i.i.i.i1125, null
  br i1 %.not.i.i.i.i1126, label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEEmSt4lessIS3_ESaISt4pairIKS3_mEEE11lower_boundERS7_.exit.i1127, label %bb.ld, !llvm.loop !458

_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEEmSt4lessIS3_ESaISt4pairIKS3_mEEE11lower_boundERS7_.exit.i1127: ; preds = %bb.ld
  %i.anf = icmp eq ptr %.19.i.i.i.i1122, %i.aey
  br i1 %i.anf, label %.critedge.i1129, label %bb.le

bb.le:                                            ; preds = %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEEmSt4lessIS3_ESaISt4pairIKS3_mEEE11lower_boundERS7_.exit.i1127
  %.19.i.i.i.i1122.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.ane, ptr %.0811.i.i.i.i1121, ptr %.012.i.i.i.i1120
  %.19.i.i.i.i1122.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i1122.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.ang = load ptr, ptr %.19.i.i.i.i1122.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !45
  %i.anh = load i64, ptr %i.ang, align 8
  %i.ani = and i64 %i.anh, 1099511627775
  %i.anj = icmp samesign ult i64 %i.amz, %i.ani
  br i1 %i.anj, label %.critedge.i1129, label %bb.lf

.critedge.i1129:                                  ; preds = %bb.le, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEEmSt4lessIS3_ESaISt4pairIKS3_mEEE11lower_boundERS7_.exit.i1127, %_ZN4cvc58internal6theory11quantifiers13UnifContextIo20updateStringPositionERSt6vectorImSaImEENS2_8NodeRoleE.exit
  %.08.lcssa.i.i.i11.i1130 = phi ptr [ %.19.i.i.i.i1122, %bb.le ], [ %.19.i.i.i.i1122, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEEmSt4lessIS3_ESaISt4pairIKS3_mEEE11lower_boundERS7_.exit.i1127 ], [ %i.aey, %_ZN4cvc58internal6theory11quantifiers13UnifContextIo20updateStringPositionERSt6vectorImSaImEENS2_8NodeRoleE.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #21
  store ptr %0, ptr %25, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #21
  %i.ank = invoke ptr @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_mESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS5_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %61, ptr %.08.lcssa.i.i.i11.i1130, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef nonnull align 1 dereferenceable(1) %26)
          to label %.noexc1131 unwind label %bb.lm

.noexc1131:                                       ; preds = %.critedge.i1129
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #21
  br label %bb.lf

bb.lf:                                            ; preds = %.noexc1131, %bb.le
  %.sroa.06.0.i1128 = phi ptr [ %i.ank, %.noexc1131 ], [ %.19.i.i.i.i1122, %bb.le ]
  %i.anl = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i1128, i64 40
  %i.anm = load i64, ptr %i.anl, align 8, !tbaa !63
  %i.ann = icmp eq i64 %i.anm, 0
  %i.ano = xor i1 %.011.lcssa18.i, %i.ann
  br i1 %i.ano, label %.critedge602, label %bb.lg, !prof !49

bb.lg:                                            ; preds = %bb.lf
  call void @llvm.lifetime.start.p0(ptr nonnull %67) #21
  invoke void @_ZN4cvc58internal11FatalStreamC1EPKcS3_i(ptr noundef nonnull align 1 dereferenceable(1) %67, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4cvc58internal6theory11quantifiers11SygusUnifIo12constructSolENS0_12NodeTemplateILb1EEES5_NS2_8NodeRoleEiRSt6vectorIS5_SaIS5_EE, ptr noundef nonnull @.str.78, i32 noundef 1270)
          to label %bb.lh unwind label %bb.ln

bb.lh:                                            ; preds = %bb.lg
  %i.anp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4cvc58internal11FatalStream6streamEv(ptr noundef nonnull align 1 dereferenceable(1) %67)
          to label %bb.li unwind label %bb.lo     ; 3 uses

bb.li:                                            ; preds = %bb.lh
  %i.anq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.anp, ptr noundef nonnull @.str.79, i64 noundef 16)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.lo ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.li
  %i.anr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.anp, ptr noundef nonnull @.str.80, i64 noundef 30)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1135 unwind label %bb.lo ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1135: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ans = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.anp, ptr noundef nonnull @.str.81, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1137 unwind label %bb.lo ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1137: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1135
  call void @_ZN4cvc58internal11FatalStreamD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %67) #28
  unreachable

bb.lj:                                            ; preds = %bb.km
  %i.ant = landingpad { ptr, i32 }
          cleanup
  br label %bb.ll

bb.lk:                                            ; preds = %bb.kt, %bb.kq
  %i.anu = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %66) #21
  br label %bb.ll

bb.ll:                                            ; preds = %bb.lk, %bb.lj
  %.pn449 = phi { ptr, i32 } [ %i.anu, %bb.lk ], [ %i.ant, %bb.lj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #21
  br label %bb.ma

bb.lm:                                            ; preds = %.critedge.i1129, %.critedge.i1112
  %i.anv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ma

bb.ln:                                            ; preds = %bb.lg
  %i.anw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #21
  br label %bb.ma

bb.lo:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1135, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.li, %bb.lh
  %i.anx = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4cvc58internal11FatalStreamD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %67) #28
  unreachable

bb.lp:                                            ; preds = %._crit_edge
  invoke void @_ZN4cvc58internal6theory11quantifiers9SygusUnif6indentEPKci(ptr noundef nonnull @.str.62, i32 noundef %5)
          to label %.critedge602 unwind label %bb.jc

.critedge602:                                     ; preds = %bb.lp, %bb.lf
  %i.any = load ptr, ptr %63, align 8, !tbaa !53  ; 3 uses
  %i.anz = getelementptr inbounds nuw i8, ptr %63, i64 8
  %i.aoa = load ptr, ptr %i.anz, align 8, !tbaa !54 ; 2 uses
  %.not4.i.i.i1141 = icmp eq ptr %i.any, %i.aoa
  br i1 %.not4.i.i.i1141, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i1149, label %.lr.ph.i.i.i1142

.lr.ph.i.i.i1142:                                 ; preds = %.critedge602, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i1145
  %.05.i.i.i1143 = phi ptr [ %i.aol, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i1145 ], [ %i.any, %.critedge602 ] ; 2 uses
  %i.aob = load ptr, ptr %.05.i.i.i1143, align 8, !tbaa !45 ; 3 uses
  %i.aoc = load i64, ptr %i.aob, align 8          ; 3 uses
  %i.aod = and i64 %i.aoc, 1152920405095219200
  %.not.i.i.i.i.i.i1144 = icmp eq i64 %i.aod, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i1144, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i1145, label %bb.lq, !prof !49

bb.lq:                                            ; preds = %.lr.ph.i.i.i1142
  %i.aoe = add i64 %i.aoc, 1152920405095219200
  %i.aof = and i64 %i.aoe, 1152920405095219200    ; 2 uses
  %i.aog = and i64 %i.aoc, -1152920405095219201
  %i.aoh = or disjoint i64 %i.aof, %i.aog
  store i64 %i.aoh, ptr %i.aob, align 8
  %i.aoi = icmp eq i64 %i.aof, 0
  br i1 %i.aoi, label %bb.lr, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i1145, !prof !49

bb.lr:                                            ; preds = %bb.lq
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.aob)
          to label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i1145 unwind label %bb.ls

bb.ls:                                            ; preds = %bb.lr
  %i.aoj = landingpad { ptr, i32 }
          catch ptr null
  %i.aok = extractvalue { ptr, i32 } %i.aoj, 0
  call void @__clang_call_terminate(ptr %i.aok) #28
  unreachable

_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i1145: ; preds = %bb.lr, %bb.lq, %.lr.ph.i.i.i1142
  %i.aol = getelementptr inbounds nuw i8, ptr %.05.i.i.i1143, i64 8 ; 2 uses
  %.not.i.i.i1146 = icmp eq ptr %i.aol, %i.aoa
  br i1 %.not.i.i.i1146, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i1147, label %.lr.ph.i.i.i1142, !llvm.loop !55

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i1147: ; preds = %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i1145
  %.pr.i1148 = load ptr, ptr %63, align 8, !tbaa !53
  br label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i1149

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i1149: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i1147, %.critedge602
  %i.aom = phi ptr [ %.pr.i1148, %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i1147 ], [ %i.any, %.critedge602 ] ; 3 uses
  %.not.i.i1.i1150 = icmp eq ptr %i.aom, null
end_hunk_1
