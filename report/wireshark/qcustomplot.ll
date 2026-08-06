begin_hunk_0_@_ZN5QListIP20QCPAbstractPlottableE5eraseENS2_14const_iteratorES3_:bb.a
  tail call void @_ZN17QArrayDataPointerIP20QCPAbstractPlottableE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS2_(ptr noundef align 8 dereferenceable_or_null(24) %0, i32 noundef 0, i64 noundef 0, ptr noundef null)
  br label %_ZN5QListIP20QCPAbstractPlottableE5beginEv.exit

_ZN5QListIP20QCPAbstractPlottableE5beginEv.exit:  ; preds = %_ZNK17QArrayDataPointerIP20QCPAbstractPlottableE11needsDetachEv.exit.i.i.i, %_ZNK17QArrayDataPointerIP20QCPAbstractPlottableE11needsDetachEv.exit.thread.i.i.i
  %i.x = load ptr, ptr %i.a, align 8
  %i.y = getelementptr i8, ptr %i.x, i64 %i.e
  ret ptr %i.y
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr ptr @_ZN5QListIP15QCPAbstractItemE5eraseENS2_14const_iteratorES3_(ptr noundef align 8 dereferenceable_or_null(24) %0, ptr %1, ptr %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8          ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = sub i64 %i.c, %i.d                       ; 2 uses
  %i.f = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.g = sub i64 %i.f, %i.c                       ; 2 uses
  %i.h = ashr exact i64 %i.g, 3
  %i.i = icmp eq ptr %2, %1
  %.pre14 = load ptr, ptr %0, align 8             ; 3 uses
  br i1 %i.i, label %_ZN5QListIP15QCPAbstractItemE6removeExx.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i.i.i = icmp eq ptr %.pre14, null
  br i1 %.not.i.i.i, label %_ZNK17QArrayDataPointerIP15QCPAbstractItemE11needsDetachEv.exit.thread.i.i, label %_ZNK17QArrayDataPointerIP15QCPAbstractItemE11needsDetachEv.exit.i.i

_ZNK17QArrayDataPointerIP15QCPAbstractItemE11needsDetachEv.exit.i.i: ; preds = %bb.b
  %i.j = load atomic i32, ptr %.pre14 monotonic, align 4
  %i.k = icmp sgt i32 %i.j, 1
  br i1 %i.k, label %_ZNK17QArrayDataPointerIP15QCPAbstractItemE11needsDetachEv.exit.thread.i.i, label %_ZN17QArrayDataPointerIP15QCPAbstractItemE6detachEPS2_.exit.i

_ZNK17QArrayDataPointerIP15QCPAbstractItemE11needsDetachEv.exit.thread.i.i: ; preds = %_ZNK17QArrayDataPointerIP15QCPAbstractItemE11needsDetachEv.exit.i.i, %bb.b
  tail call void @_ZN17QArrayDataPointerIP15QCPAbstractItemE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS2_(ptr noundef align 8 dereferenceable_or_null(24) %0, i32 noundef 0, i64 noundef 0, ptr noundef null)
  %.pre = load ptr, ptr %i.a, align 8
  br label %_ZN17QArrayDataPointerIP15QCPAbstractItemE6detachEPS2_.exit.i

_ZN17QArrayDataPointerIP15QCPAbstractItemE6detachEPS2_.exit.i: ; preds = %_ZNK17QArrayDataPointerIP15QCPAbstractItemE11needsDetachEv.exit.thread.i.i, %_ZNK17QArrayDataPointerIP15QCPAbstractItemE11needsDetachEv.exit.i.i
  %i.l = phi ptr [ %.pre, %_ZNK17QArrayDataPointerIP15QCPAbstractItemE11needsDetachEv.exit.thread.i.i ], [ %i.b, %_ZNK17QArrayDataPointerIP15QCPAbstractItemE11needsDetachEv.exit.i.i ]
  %i.m = getelementptr i8, ptr %i.l, i64 %i.e     ; 2 uses
  %i.n = getelementptr i8, ptr %i.m, i64 %i.g     ; 2 uses
  %i.o = icmp ne ptr %1, %i.b
  %i.p = getelementptr i8, ptr %0, i64 16         ; 3 uses
  %i.q = load i64, ptr %i.p, align 8              ; 3 uses
  %.idx4.i = shl i64 %i.q, 3                      ; 2 uses
  %i.r = sub i64 %i.f, %i.d                       ; 2 uses
  %.not.i.i = icmp eq i64 %i.r, %.idx4.i          ; 2 uses
  %or.cond.i.i = select i1 %i.o, i1 true, i1 %.not.i.i
  br i1 %or.cond.i.i, label %._crit_edge.i.i, label %bb.c

bb.c:                                             ; preds = %_ZN17QArrayDataPointerIP15QCPAbstractItemE6detachEPS2_.exit.i
  store ptr %i.n, ptr %i.a, align 8
  br label %_ZN9QtPrivate12QPodArrayOpsIP15QCPAbstractItemE5eraseEPS2_x.exit.i

._crit_edge.i.i:                                  ; preds = %_ZN17QArrayDataPointerIP15QCPAbstractItemE6detachEPS2_.exit.i
  br i1 %.not.i.i, label %_ZN9QtPrivate12QPodArrayOpsIP15QCPAbstractItemE5eraseEPS2_x.exit.i, label %bb.d

bb.d:                                             ; preds = %._crit_edge.i.i
  %gepdiff.i = sub i64 %.idx4.i, %i.r
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef align 1 %i.m, ptr noundef align 1 %i.n, i64 noundef %gepdiff.i, i1 noundef false) #51
  %.pre12.i.i = load i64, ptr %i.p, align 8
  br label %_ZN9QtPrivate12QPodArrayOpsIP15QCPAbstractItemE5eraseEPS2_x.exit.i

_ZN9QtPrivate12QPodArrayOpsIP15QCPAbstractItemE5eraseEPS2_x.exit.i: ; preds = %bb.d, %._crit_edge.i.i, %bb.c
  %i.s = phi i64 [ %i.q, %._crit_edge.i.i ], [ %.pre12.i.i, %bb.d ], [ %i.q, %bb.c ]
  %i.t = sub i64 %i.s, %i.h
  store i64 %i.t, ptr %i.p, align 8
  %.pre13 = load ptr, ptr %0, align 8
  br label %_ZN5QListIP15QCPAbstractItemE6removeExx.exit

_ZN5QListIP15QCPAbstractItemE6removeExx.exit:     ; preds = %bb.a, %_ZN9QtPrivate12QPodArrayOpsIP15QCPAbstractItemE5eraseEPS2_x.exit.i
  %i.u = phi ptr [ %.pre14, %bb.a ], [ %.pre13, %_ZN9QtPrivate12QPodArrayOpsIP15QCPAbstractItemE5eraseEPS2_x.exit.i ] ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i, label %_ZNK17QArrayDataPointerIP15QCPAbstractItemE11needsDetachEv.exit.thread.i.i.i, label %_ZNK17QArrayDataPointerIP15QCPAbstractItemE11needsDetachEv.exit.i.i.i

_ZNK17QArrayDataPointerIP15QCPAbstractItemE11needsDetachEv.exit.i.i.i: ; preds = %_ZN5QListIP15QCPAbstractItemE6removeExx.exit
  %i.v = load atomic i32, ptr %i.u monotonic, align 4
  %i.w = icmp sgt i32 %i.v, 1
  br i1 %i.w, label %_ZNK17QArrayDataPointerIP15QCPAbstractItemE11needsDetachEv.exit.thread.i.i.i, label %_ZN5QListIP15QCPAbstractItemE5beginEv.exit

_ZNK17QArrayDataPointerIP15QCPAbstractItemE11needsDetachEv.exit.thread.i.i.i: ; preds = %_ZNK17QArrayDataPointerIP15QCPAbstractItemE11needsDetachEv.exit.i.i.i, %_ZN5QListIP15QCPAbstractItemE6removeExx.exit
  tail call void @_ZN17QArrayDataPointerIP15QCPAbstractItemE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS2_(ptr noundef align 8 dereferenceable_or_null(24) %0, i32 noundef 0, i64 noundef 0, ptr noundef null)
  br label %_ZN5QListIP15QCPAbstractItemE5beginEv.exit

_ZN5QListIP15QCPAbstractItemE5beginEv.exit:       ; preds = %_ZNK17QArrayDataPointerIP15QCPAbstractItemE11needsDetachEv.exit.i.i.i, %_ZNK17QArrayDataPointerIP15QCPAbstractItemE11needsDetachEv.exit.thread.i.i.i
  %i.x = load ptr, ptr %i.a, align 8
  %i.y = getelementptr i8, ptr %i.x, i64 %i.e
  ret ptr %i.y
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr ptr @_ZN5QListIP8QCPLayerE5eraseENS2_14const_iteratorES3_(ptr noundef align 8 dereferenceable_or_null(24) %0, ptr %1, ptr %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8          ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = sub i64 %i.c, %i.d                       ; 2 uses
  %i.f = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.g = sub i64 %i.f, %i.c                       ; 2 uses
  %i.h = ashr exact i64 %i.g, 3
  %i.i = icmp eq ptr %2, %1
  %.pre14 = load ptr, ptr %0, align 8             ; 3 uses
  br i1 %i.i, label %_ZN5QListIP8QCPLayerE6removeExx.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i.i.i = icmp eq ptr %.pre14, null
  br i1 %.not.i.i.i, label %_ZNK17QArrayDataPointerIP8QCPLayerE11needsDetachEv.exit.thread.i.i, label %_ZNK17QArrayDataPointerIP8QCPLayerE11needsDetachEv.exit.i.i

_ZNK17QArrayDataPointerIP8QCPLayerE11needsDetachEv.exit.i.i: ; preds = %bb.b
  %i.j = load atomic i32, ptr %.pre14 monotonic, align 4
  %i.k = icmp sgt i32 %i.j, 1
  br i1 %i.k, label %_ZNK17QArrayDataPointerIP8QCPLayerE11needsDetachEv.exit.thread.i.i, label %_ZN17QArrayDataPointerIP8QCPLayerE6detachEPS2_.exit.i

_ZNK17QArrayDataPointerIP8QCPLayerE11needsDetachEv.exit.thread.i.i: ; preds = %_ZNK17QArrayDataPointerIP8QCPLayerE11needsDetachEv.exit.i.i, %bb.b
  tail call void @_ZN17QArrayDataPointerIP8QCPLayerE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS2_(ptr noundef align 8 dereferenceable_or_null(24) %0, i32 noundef 0, i64 noundef 0, ptr noundef null)
  %.pre = load ptr, ptr %i.a, align 8
  br label %_ZN17QArrayDataPointerIP8QCPLayerE6detachEPS2_.exit.i

_ZN17QArrayDataPointerIP8QCPLayerE6detachEPS2_.exit.i: ; preds = %_ZNK17QArrayDataPointerIP8QCPLayerE11needsDetachEv.exit.thread.i.i, %_ZNK17QArrayDataPointerIP8QCPLayerE11needsDetachEv.exit.i.i
  %i.l = phi ptr [ %.pre, %_ZNK17QArrayDataPointerIP8QCPLayerE11needsDetachEv.exit.thread.i.i ], [ %i.b, %_ZNK17QArrayDataPointerIP8QCPLayerE11needsDetachEv.exit.i.i ]
  %i.m = getelementptr i8, ptr %i.l, i64 %i.e     ; 2 uses
  %i.n = getelementptr i8, ptr %i.m, i64 %i.g     ; 2 uses
  %i.o = icmp ne ptr %1, %i.b
  %i.p = getelementptr i8, ptr %0, i64 16         ; 3 uses
  %i.q = load i64, ptr %i.p, align 8              ; 3 uses
  %.idx4.i = shl i64 %i.q, 3                      ; 2 uses
  %i.r = sub i64 %i.f, %i.d                       ; 2 uses
  %.not.i.i = icmp eq i64 %i.r, %.idx4.i          ; 2 uses
  %or.cond.i.i = select i1 %i.o, i1 true, i1 %.not.i.i
  br i1 %or.cond.i.i, label %._crit_edge.i.i, label %bb.c

bb.c:                                             ; preds = %_ZN17QArrayDataPointerIP8QCPLayerE6detachEPS2_.exit.i
  store ptr %i.n, ptr %i.a, align 8
  br label %_ZN9QtPrivate12QPodArrayOpsIP8QCPLayerE5eraseEPS2_x.exit.i

._crit_edge.i.i:                                  ; preds = %_ZN17QArrayDataPointerIP8QCPLayerE6detachEPS2_.exit.i
  br i1 %.not.i.i, label %_ZN9QtPrivate12QPodArrayOpsIP8QCPLayerE5eraseEPS2_x.exit.i, label %bb.d

bb.d:                                             ; preds = %._crit_edge.i.i
  %gepdiff.i = sub i64 %.idx4.i, %i.r
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef align 1 %i.m, ptr noundef align 1 %i.n, i64 noundef %gepdiff.i, i1 noundef false) #51
  %.pre12.i.i = load i64, ptr %i.p, align 8
  br label %_ZN9QtPrivate12QPodArrayOpsIP8QCPLayerE5eraseEPS2_x.exit.i

_ZN9QtPrivate12QPodArrayOpsIP8QCPLayerE5eraseEPS2_x.exit.i: ; preds = %bb.d, %._crit_edge.i.i, %bb.c
  %i.s = phi i64 [ %i.q, %._crit_edge.i.i ], [ %.pre12.i.i, %bb.d ], [ %i.q, %bb.c ]
  %i.t = sub i64 %i.s, %i.h
  store i64 %i.t, ptr %i.p, align 8
  %.pre13 = load ptr, ptr %0, align 8
  br label %_ZN5QListIP8QCPLayerE6removeExx.exit

_ZN5QListIP8QCPLayerE6removeExx.exit:             ; preds = %bb.a, %_ZN9QtPrivate12QPodArrayOpsIP8QCPLayerE5eraseEPS2_x.exit.i
  %i.u = phi ptr [ %.pre14, %bb.a ], [ %.pre13, %_ZN9QtPrivate12QPodArrayOpsIP8QCPLayerE5eraseEPS2_x.exit.i ] ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i, label %_ZNK17QArrayDataPointerIP8QCPLayerE11needsDetachEv.exit.thread.i.i.i, label %_ZNK17QArrayDataPointerIP8QCPLayerE11needsDetachEv.exit.i.i.i

_ZNK17QArrayDataPointerIP8QCPLayerE11needsDetachEv.exit.i.i.i: ; preds = %_ZN5QListIP8QCPLayerE6removeExx.exit
  %i.v = load atomic i32, ptr %i.u monotonic, align 4
  %i.w = icmp sgt i32 %i.v, 1
  br i1 %i.w, label %_ZNK17QArrayDataPointerIP8QCPLayerE11needsDetachEv.exit.thread.i.i.i, label %_ZN5QListIP8QCPLayerE5beginEv.exit

_ZNK17QArrayDataPointerIP8QCPLayerE11needsDetachEv.exit.thread.i.i.i: ; preds = %_ZNK17QArrayDataPointerIP8QCPLayerE11needsDetachEv.exit.i.i.i, %_ZN5QListIP8QCPLayerE6removeExx.exit
  tail call void @_ZN17QArrayDataPointerIP8QCPLayerE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS2_(ptr noundef align 8 dereferenceable_or_null(24) %0, i32 noundef 0, i64 noundef 0, ptr noundef null)
  br label %_ZN5QListIP8QCPLayerE5beginEv.exit

_ZN5QListIP8QCPLayerE5beginEv.exit:               ; preds = %_ZNK17QArrayDataPointerIP8QCPLayerE11needsDetachEv.exit.i.i.i, %_ZNK17QArrayDataPointerIP8QCPLayerE11needsDetachEv.exit.thread.i.i.i
  %i.x = load ptr, ptr %i.a, align 8
  %i.y = getelementptr i8, ptr %i.x, i64 %i.e
  ret ptr %i.y
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr noundef ptr @_ZNSt3_V28__rotateIPP8QCPLayerEET_S4_S4_S4_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_ZSt11swap_rangesIPP8QCPLayerS2_ET0_T_S4_S3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %2, %1
  br i1 %i.b, label %_ZSt11swap_rangesIPP8QCPLayerS2_ET0_T_S4_S3_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.d = ptrtoint ptr %0 to i64                   ; 5 uses
  %i.e = sub i64 %i.c, %i.d
  %i.f = ashr exact i64 %i.e, 3                   ; 2 uses
  %i.g = ptrtoint ptr %1 to i64                   ; 5 uses
  %i.h = sub i64 %i.g, %i.d
  %i.i = ashr exact i64 %i.h, 3                   ; 3 uses
  %i.j = sub nsw i64 %i.f, %i.i
  %i.k = icmp eq i64 %i.i, %i.j
  br i1 %i.k, label %.lr.ph.i.preheader, label %bb.d

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.l = sub i64 %i.g, %i.d
  %i.m = add i64 %i.l, -8                         ; 2 uses
  %i.n = lshr i64 %i.m, 3
  %i.o = add nuw nsw i64 %i.n, 1                  ; 2 uses
  %min.iters.check196 = icmp ult i64 %i.m, 488
  br i1 %min.iters.check196, label %.lr.ph.i.preheader213, label %vector.scevcheck182

vector.scevcheck182:                              ; preds = %.lr.ph.i.preheader
  %i.p = add i64 %i.g, -8
  %i.q = sub i64 %i.p, %i.d                       ; 2 uses
  %mul186 = and i64 %i.q, -8
  %mul183 = and i64 %i.q, -8
  %i.r = getelementptr i8, ptr %0, i64 %mul183
  %i.s = icmp ult ptr %i.r, %0
  %i.t = getelementptr i8, ptr %1, i64 %mul186
  %i.u = icmp ult ptr %i.t, %1
  %i.v = or i1 %i.s, %i.u
  br i1 %i.v, label %.lr.ph.i.preheader213, label %vector.memcheck189

vector.memcheck189:                               ; preds = %vector.scevcheck182
  %i.w = add i64 %i.g, -8
  %i.x = sub i64 %i.w, %i.d
  %i.y = and i64 %i.x, -8
  %i.z = add i64 %i.y, 8                          ; 2 uses
  %scevgep190 = getelementptr i8, ptr %0, i64 %i.z
  %scevgep191 = getelementptr i8, ptr %1, i64 %i.z
  %bound0192 = icmp ult ptr %0, %scevgep191
  %bound1193 = icmp ult ptr %1, %scevgep190
  %found.conflict194 = and i1 %bound0192, %bound1193
  br i1 %found.conflict194, label %.lr.ph.i.preheader213, label %vector.ph197

vector.ph197:                                     ; preds = %vector.memcheck189
  %n.vec199 = and i64 %i.o, 4611686018427387900   ; 3 uses
  %i.aa = shl i64 %n.vec199, 3                    ; 2 uses
  %i.ab = getelementptr i8, ptr %1, i64 %i.aa
  %i.ac = getelementptr i8, ptr %0, i64 %i.aa
  br label %vector.body200

vector.body200:                                   ; preds = %vector.body200, %vector.ph197
  %index201 = phi i64 [ 0, %vector.ph197 ], [ %index.next208, %vector.body200 ] ; 2 uses
  %i.ad = shl i64 %index201, 3                    ; 2 uses
  %next.gep202 = getelementptr i8, ptr %1, i64 %i.ad ; 3 uses
  %next.gep203 = getelementptr i8, ptr %0, i64 %i.ad ; 3 uses
  %i.ae = getelementptr i8, ptr %next.gep203, i64 16 ; 2 uses
  %wide.load204 = load <2 x ptr>, ptr %next.gep203, align 8, !alias.scope !1739, !noalias !1742
  %wide.load205 = load <2 x ptr>, ptr %i.ae, align 8, !alias.scope !1739, !noalias !1742
  %i.af = getelementptr i8, ptr %next.gep202, i64 16 ; 2 uses
  %wide.load206 = load <2 x ptr>, ptr %next.gep202, align 8, !alias.scope !1742
  %wide.load207 = load <2 x ptr>, ptr %i.af, align 8, !alias.scope !1742
  store <2 x ptr> %wide.load206, ptr %next.gep203, align 8, !alias.scope !1739, !noalias !1742
  store <2 x ptr> %wide.load207, ptr %i.ae, align 8, !alias.scope !1739, !noalias !1742
  store <2 x ptr> %wide.load204, ptr %next.gep202, align 8, !alias.scope !1742
  store <2 x ptr> %wide.load205, ptr %i.af, align 8, !alias.scope !1742
  %index.next208 = add nuw i64 %index201, 4       ; 2 uses
  %i.ag = icmp eq i64 %index.next208, %n.vec199
  br i1 %i.ag, label %middle.block209, label %vector.body200, !llvm.loop !1744

middle.block209:                                  ; preds = %vector.body200
  %cmp.n210 = icmp eq i64 %i.o, %n.vec199
  br i1 %cmp.n210, label %_ZSt11swap_rangesIPP8QCPLayerS2_ET0_T_S4_S3_.exit, label %.lr.ph.i.preheader213

.lr.ph.i.preheader213:                            ; preds = %vector.memcheck189, %vector.scevcheck182, %.lr.ph.i.preheader, %middle.block209
  %.010.i.ph = phi ptr [ %1, %vector.memcheck189 ], [ %1, %vector.scevcheck182 ], [ %1, %.lr.ph.i.preheader ], [ %i.ab, %middle.block209 ]
  %.079.i.ph = phi ptr [ %0, %vector.memcheck189 ], [ %0, %vector.scevcheck182 ], [ %0, %.lr.ph.i.preheader ], [ %i.ac, %middle.block209 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader213, %.lr.ph.i
  %.010.i = phi ptr [ %i.ak, %.lr.ph.i ], [ %.010.i.ph, %.lr.ph.i.preheader213 ] ; 3 uses
  %.079.i = phi ptr [ %i.aj, %.lr.ph.i ], [ %.079.i.ph, %.lr.ph.i.preheader213 ] ; 3 uses
  %i.ah = load ptr, ptr %.079.i, align 8
  %i.ai = load ptr, ptr %.010.i, align 8
  store ptr %i.ai, ptr %.079.i, align 8
  store ptr %i.ah, ptr %.010.i, align 8
  %i.aj = getelementptr i8, ptr %.079.i, i64 8    ; 2 uses
  %i.ak = getelementptr i8, ptr %.010.i, i64 8
  %.not.i = icmp eq ptr %i.aj, %1
  br i1 %.not.i, label %_ZSt11swap_rangesIPP8QCPLayerS2_ET0_T_S4_S3_.exit, label %.lr.ph.i, !llvm.loop !1745

bb.d:                                             ; preds = %bb.c
  %i.al = sub i64 %i.c, %i.g
  %i.am = getelementptr i8, ptr %0, i64 %i.al     ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %.backedge, %bb.d
  %.086 = phi i64 [ %i.f, %bb.d ], [ %.086.be, %.backedge ] ; 13 uses
  %.082 = phi i64 [ %i.i, %bb.d ], [ %.082.be, %.backedge ] ; 21 uses
  %.058 = phi ptr [ %0, %bb.d ], [ %.058.be, %.backedge ] ; 28 uses
  %i.an = sub i64 %.086, %.082                    ; 10 uses
  %i.ao = icmp slt i64 %.082, %i.an
  br i1 %i.ao, label %bb.f, label %bb.m

bb.f:                                             ; preds = %bb.e
  %i.ap = icmp eq i64 %.082, 1
  br i1 %i.ap, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.aq = load ptr, ptr %.058, align 8
  %i.ar = getelementptr i8, ptr %.058, i64 8      ; 2 uses
  %.idx97 = shl i64 %.086, 3                      ; 2 uses
  %i.as = getelementptr i8, ptr %.058, i64 %.idx97
  %gepdiff = add i64 %.idx97, -8                  ; 3 uses
  %i.at = icmp sgt i64 %gepdiff, 8
  br i1 %i.at, label %bb.h, label %bb.i, !prof !1746

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.058, ptr align 8 %i.ar, i64 %gepdiff, i1 false)
  br label %_ZSt4moveIPP8QCPLayerS2_ET0_T_S4_S3_.exit

bb.i:                                             ; preds = %bb.g
  %i.au = icmp eq i64 %gepdiff, 8
  br i1 %i.au, label %bb.j, label %_ZSt4moveIPP8QCPLayerS2_ET0_T_S4_S3_.exit

bb.j:                                             ; preds = %bb.i
  %i.av = load ptr, ptr %i.ar, align 8
  store ptr %i.av, ptr %.058, align 8
  br label %_ZSt4moveIPP8QCPLayerS2_ET0_T_S4_S3_.exit

_ZSt4moveIPP8QCPLayerS2_ET0_T_S4_S3_.exit:        ; preds = %bb.h, %bb.i, %bb.j
  %i.aw = getelementptr i8, ptr %i.as, i64 -8
  store ptr %i.aq, ptr %i.aw, align 8
  br label %_ZSt11swap_rangesIPP8QCPLayerS2_ET0_T_S4_S3_.exit

bb.k:                                             ; preds = %bb.f
  %i.ax = icmp sgt i64 %i.an, 0
  br i1 %i.ax, label %.lr.ph110.preheader, label %._crit_edge111

.lr.ph110.preheader:                              ; preds = %bb.k
  %i.ay = getelementptr [8 x i8], ptr %.058, i64 %.082 ; 8 uses
  %min.iters.check = icmp ult i64 %i.an, 44
  br i1 %min.iters.check, label %.lr.ph110.preheader214, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph110.preheader
  %i.az = xor i64 %.082, -1
  %i.ba = add i64 %.086, %i.az                    ; 3 uses
  %mul.result = shl i64 %i.ba, 3
  %3 = getelementptr i8, ptr %.058, i64 %mul.result
  %4 = icmp ult ptr %3, %.058
  %mul.result138 = shl i64 %i.ba, 3
  %mul.overflow139 = icmp ugt i64 %i.ba, 2305843009213693951
  %i.bb = getelementptr i8, ptr %i.ay, i64 %mul.result138
  %i.bc = icmp ult ptr %i.bb, %i.ay
  %i.bd = or i1 %i.bc, %mul.overflow139
  %i.be = or i1 %4, %i.bd
  br i1 %i.be, label %.lr.ph110.preheader214, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.bf = shl i64 %.086, 3
  %i.bg = sub i64 %.086, %.082
  %i.bh = shl i64 %i.bg, 3
  %scevgep = getelementptr i8, ptr %.058, i64 %i.bh
  %scevgep140 = getelementptr i8, ptr %.058, i64 %i.bf
  %bound0 = icmp ult ptr %.058, %scevgep140
  %bound1 = icmp ult ptr %i.ay, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph110.preheader214, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.an, 9223372036854775804     ; 4 uses
  %i.bi = shl i64 %n.vec, 3                       ; 2 uses
  %i.bj = getelementptr i8, ptr %i.ay, i64 %i.bi
  %i.bk = getelementptr i8, ptr %.058, i64 %i.bi  ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bl = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ay, i64 %i.bl ; 3 uses
  %next.gep141 = getelementptr i8, ptr %.058, i64 %i.bl ; 3 uses
  %i.bm = getelementptr i8, ptr %next.gep141, i64 16 ; 2 uses
  %wide.load = load <2 x ptr>, ptr %next.gep141, align 8, !alias.scope !1747, !noalias !1750
  %wide.load142 = load <2 x ptr>, ptr %i.bm, align 8, !alias.scope !1747, !noalias !1750
  %i.bn = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load143 = load <2 x ptr>, ptr %next.gep, align 8, !alias.scope !1750
  %wide.load144 = load <2 x ptr>, ptr %i.bn, align 8, !alias.scope !1750
  store <2 x ptr> %wide.load143, ptr %next.gep141, align 8, !alias.scope !1747, !noalias !1750
  store <2 x ptr> %wide.load144, ptr %i.bm, align 8, !alias.scope !1747, !noalias !1750
  store <2 x ptr> %wide.load, ptr %next.gep, align 8, !alias.scope !1750
  store <2 x ptr> %wide.load142, ptr %i.bn, align 8, !alias.scope !1750
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bo = icmp eq i64 %index.next, %n.vec
  br i1 %i.bo, label %middle.block, label %vector.body, !llvm.loop !1752

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.an, %n.vec
  br i1 %cmp.n, label %._crit_edge111, label %.lr.ph110.preheader214

.lr.ph110.preheader214:                           ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph110.preheader, %middle.block
  %.054108.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph110.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %.055107.ph = phi ptr [ %i.ay, %vector.memcheck ], [ %i.ay, %vector.scevcheck ], [ %i.ay, %.lr.ph110.preheader ], [ %i.bj, %middle.block ] ; 2 uses
  %.159106.ph = phi ptr [ %.058, %vector.memcheck ], [ %.058, %vector.scevcheck ], [ %.058, %.lr.ph110.preheader ], [ %i.bk, %middle.block ] ; 2 uses
  %i.bp = sub i64 %.086, %.082
  %xtraiter222 = and i64 %i.bp, 3                 ; 2 uses
  %lcmp.mod223.not = icmp eq i64 %xtraiter222, 0
  br i1 %lcmp.mod223.not, label %.lr.ph110.prol.loopexit, label %.lr.ph110.prol

.lr.ph110.prol:                                   ; preds = %.lr.ph110.preheader214, %.lr.ph110.prol
  %.054108.prol = phi i64 [ %i.bu, %.lr.ph110.prol ], [ %.054108.ph, %.lr.ph110.preheader214 ]
  %.055107.prol = phi ptr [ %i.bt, %.lr.ph110.prol ], [ %.055107.ph, %.lr.ph110.preheader214 ] ; 3 uses
  %.159106.prol = phi ptr [ %i.bs, %.lr.ph110.prol ], [ %.159106.ph, %.lr.ph110.preheader214 ] ; 3 uses
  %prol.iter224 = phi i64 [ %prol.iter224.next, %.lr.ph110.prol ], [ 0, %.lr.ph110.preheader214 ]
  %i.bq = load ptr, ptr %.159106.prol, align 8
  %i.br = load ptr, ptr %.055107.prol, align 8
  store ptr %i.br, ptr %.159106.prol, align 8
  store ptr %i.bq, ptr %.055107.prol, align 8
  %i.bs = getelementptr i8, ptr %.159106.prol, i64 8 ; 3 uses
  %i.bt = getelementptr i8, ptr %.055107.prol, i64 8 ; 2 uses
  %i.bu = add nuw nsw i64 %.054108.prol, 1        ; 2 uses
  %prol.iter224.next = add i64 %prol.iter224, 1   ; 2 uses
  %prol.iter224.cmp.not = icmp eq i64 %prol.iter224.next, %xtraiter222
  br i1 %prol.iter224.cmp.not, label %.lr.ph110.prol.loopexit, label %.lr.ph110.prol, !llvm.loop !1753

.lr.ph110.prol.loopexit:                          ; preds = %.lr.ph110.prol, %.lr.ph110.preheader214
  %.lcssa.unr = phi ptr [ poison, %.lr.ph110.preheader214 ], [ %i.bs, %.lr.ph110.prol ]
  %.054108.unr = phi i64 [ %.054108.ph, %.lr.ph110.preheader214 ], [ %i.bu, %.lr.ph110.prol ]
  %.055107.unr = phi ptr [ %.055107.ph, %.lr.ph110.preheader214 ], [ %i.bt, %.lr.ph110.prol ]
  %.159106.unr = phi ptr [ %.159106.ph, %.lr.ph110.preheader214 ], [ %i.bs, %.lr.ph110.prol ]
  %i.bv = sub i64 %.054108.ph, %.086
  %i.bw = add i64 %i.bv, %.082
  %i.bx = icmp ugt i64 %i.bw, -4
  br i1 %i.bx, label %._crit_edge111, label %.lr.ph110

._crit_edge111:                                   ; preds = %.lr.ph110.prol.loopexit, %.lr.ph110, %middle.block, %bb.k
  %.159.lcssa = phi ptr [ %.058, %bb.k ], [ %i.bk, %middle.block ], [ %.lcssa.unr, %.lr.ph110.prol.loopexit ], [ %i.cn, %.lr.ph110 ]
  %i.by = srem i64 %.086, %.082                   ; 2 uses
  %.not67 = icmp eq i64 %i.by, 0
  br i1 %.not67, label %_ZSt11swap_rangesIPP8QCPLayerS2_ET0_T_S4_S3_.exit, label %bb.l

.lr.ph110:                                        ; preds = %.lr.ph110.prol.loopexit, %.lr.ph110
  %.054108 = phi i64 [ %i.cp, %.lr.ph110 ], [ %.054108.unr, %.lr.ph110.prol.loopexit ]
  %.055107 = phi ptr [ %i.co, %.lr.ph110 ], [ %.055107.unr, %.lr.ph110.prol.loopexit ] ; 6 uses
  %.159106 = phi ptr [ %i.cn, %.lr.ph110 ], [ %.159106.unr, %.lr.ph110.prol.loopexit ] ; 6 uses
  %i.bz = load ptr, ptr %.159106, align 8
  %i.ca = load ptr, ptr %.055107, align 8
  store ptr %i.ca, ptr %.159106, align 8
  store ptr %i.bz, ptr %.055107, align 8
  %i.cb = getelementptr i8, ptr %.159106, i64 8   ; 2 uses
  %i.cc = getelementptr i8, ptr %.055107, i64 8   ; 2 uses
  %i.cd = load ptr, ptr %i.cb, align 8
  %i.ce = load ptr, ptr %i.cc, align 8
  store ptr %i.ce, ptr %i.cb, align 8
  store ptr %i.cd, ptr %i.cc, align 8
  %i.cf = getelementptr i8, ptr %.159106, i64 16  ; 2 uses
  %i.cg = getelementptr i8, ptr %.055107, i64 16  ; 2 uses
  %i.ch = load ptr, ptr %i.cf, align 8
  %i.ci = load ptr, ptr %i.cg, align 8
  store ptr %i.ci, ptr %i.cf, align 8
  store ptr %i.ch, ptr %i.cg, align 8
  %i.cj = getelementptr i8, ptr %.159106, i64 24  ; 2 uses
  %i.ck = getelementptr i8, ptr %.055107, i64 24  ; 2 uses
  %i.cl = load ptr, ptr %i.cj, align 8
  %i.cm = load ptr, ptr %i.ck, align 8
  store ptr %i.cm, ptr %i.cj, align 8
  store ptr %i.cl, ptr %i.ck, align 8
  %i.cn = getelementptr i8, ptr %.159106, i64 32  ; 2 uses
  %i.co = getelementptr i8, ptr %.055107, i64 32
  %i.cp = add nuw nsw i64 %.054108, 4             ; 2 uses
  %exitcond119.not.3 = icmp eq i64 %i.cp, %i.an
  br i1 %exitcond119.not.3, label %._crit_edge111, label %.lr.ph110, !llvm.loop !1754

bb.l:                                             ; preds = %._crit_edge111
  %i.cq = sub i64 %.082, %i.by
  br label %.backedge

bb.m:                                             ; preds = %bb.e
  %i.cr = icmp eq i64 %i.an, 1
  %i.cs = getelementptr [8 x i8], ptr %.058, i64 %.086 ; 9 uses
  br i1 %i.cr, label %bb.n, label %bb.r

bb.n:                                             ; preds = %bb.m
  %i.ct = getelementptr i8, ptr %i.cs, i64 -8     ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8
  %.idx = shl i64 %.086, 3
  %i.cv = add i64 %.idx, -8                       ; 3 uses
  %i.cw = ashr exact i64 %i.cv, 3                 ; 2 uses
  %i.cx = icmp sgt i64 %i.cw, 1
  br i1 %i.cx, label %bb.o, label %bb.p, !prof !1746

bb.o:                                             ; preds = %bb.n
  %i.cy = sub nsw i64 0, %i.cw
  %i.cz = getelementptr [8 x i8], ptr %i.cs, i64 %i.cy
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.cz, ptr align 8 %.058, i64 %i.cv, i1 false)
  br label %_ZSt13move_backwardIPP8QCPLayerS2_ET0_T_S4_S3_.exit

bb.p:                                             ; preds = %bb.n
  %i.da = icmp eq i64 %i.cv, 8
  br i1 %i.da, label %bb.q, label %_ZSt13move_backwardIPP8QCPLayerS2_ET0_T_S4_S3_.exit

bb.q:                                             ; preds = %bb.p
  %i.db = load ptr, ptr %.058, align 8
  store ptr %i.db, ptr %i.ct, align 8
  br label %_ZSt13move_backwardIPP8QCPLayerS2_ET0_T_S4_S3_.exit

_ZSt13move_backwardIPP8QCPLayerS2_ET0_T_S4_S3_.exit: ; preds = %bb.o, %bb.p, %bb.q
  store ptr %i.cu, ptr %.058, align 8
  br label %_ZSt11swap_rangesIPP8QCPLayerS2_ET0_T_S4_S3_.exit

bb.r:                                             ; preds = %bb.m
  %i.dc = sub i64 0, %i.an
  %i.dd = getelementptr [8 x i8], ptr %i.cs, i64 %i.dc ; 7 uses
  %i.de = icmp sgt i64 %.082, 0
  br i1 %i.de, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.r
  %min.iters.check164 = icmp ult i64 %.082, 50
  br i1 %min.iters.check164, label %.lr.ph.preheader215, label %vector.scevcheck147

vector.scevcheck147:                              ; preds = %.lr.ph.preheader
  %i.df = add nsw i64 %.082, -1                   ; 3 uses
  %scevgep148 = getelementptr i8, ptr %.058, i64 -8
  %i.dg = shl i64 %.082, 3
  %scevgep149 = getelementptr i8, ptr %scevgep148, i64 %i.dg ; 2 uses
  %mul.result151.neg = mul i64 %i.df, -8
  %i.dh = getelementptr i8, ptr %scevgep149, i64 %mul.result151.neg
  %i.di = icmp ugt ptr %i.dh, %scevgep149
  %scevgep153.a = getelementptr i8, ptr %.058, i64 -8
  %i.dj = shl i64 %.086, 3
  %scevgep154 = getelementptr i8, ptr %scevgep153.a, i64 %i.dj ; 2 uses
  %mul.result156.neg = mul i64 %i.df, -8
  %mul.overflow157 = icmp ugt i64 %i.df, 2305843009213693951
  %i.dk = getelementptr i8, ptr %scevgep154, i64 %mul.result156.neg
  %i.dl = icmp ugt ptr %i.dk, %scevgep154
  %i.dm = or i1 %i.dl, %mul.overflow157
  %i.dn = or i1 %i.di, %i.dm
  br i1 %i.dn, label %.lr.ph.preheader215, label %vector.memcheck158

vector.memcheck158:                               ; preds = %vector.scevcheck147
  %i.do = sub i64 %.086, %.082
  %i.dp = shl i64 %i.do, 3
  %scevgep159 = getelementptr i8, ptr %.058, i64 %i.dp
  %bound0160 = icmp ult ptr %.058, %i.cs
  %bound1161 = icmp ult ptr %scevgep159, %i.dd
  %found.conflict162 = and i1 %bound0160, %bound1161
  br i1 %found.conflict162, label %.lr.ph.preheader215, label %vector.ph165

vector.ph165:                                     ; preds = %vector.memcheck158
  %n.vec167 = and i64 %.082, 4611686018427387900  ; 4 uses
  %i.dq = mul i64 %n.vec167, -8                   ; 2 uses
  %i.dr = getelementptr i8, ptr %i.cs, i64 %i.dq
  %i.ds = getelementptr i8, ptr %i.dd, i64 %i.dq
  br label %vector.body168

vector.body168:                                   ; preds = %vector.body168, %vector.ph165
  %index169 = phi i64 [ 0, %vector.ph165 ], [ %index.next176, %vector.body168 ] ; 2 uses
  %i.dt = mul i64 %index169, -8                   ; 2 uses
  %next.gep170 = getelementptr i8, ptr %i.cs, i64 %i.dt ; 2 uses
  %next.gep171 = getelementptr i8, ptr %i.dd, i64 %i.dt ; 2 uses
  %i.du = getelementptr i8, ptr %next.gep171, i64 -16 ; 2 uses
  %i.dv = getelementptr i8, ptr %next.gep171, i64 -32 ; 2 uses
  %wide.load172 = load <2 x ptr>, ptr %i.du, align 8, !alias.scope !1755, !noalias !1758
  %wide.load173 = load <2 x ptr>, ptr %i.dv, align 8, !alias.scope !1755, !noalias !1758
  %i.dw = getelementptr i8, ptr %next.gep170, i64 -16 ; 2 uses
  %i.dx = getelementptr i8, ptr %next.gep170, i64 -32 ; 2 uses
  %wide.load174 = load <2 x ptr>, ptr %i.dw, align 8, !alias.scope !1758
  %wide.load175 = load <2 x ptr>, ptr %i.dx, align 8, !alias.scope !1758
  store <2 x ptr> %wide.load174, ptr %i.du, align 8, !alias.scope !1755, !noalias !1758
  store <2 x ptr> %wide.load175, ptr %i.dv, align 8, !alias.scope !1755, !noalias !1758
  store <2 x ptr> %wide.load172, ptr %i.dw, align 8, !alias.scope !1758
  store <2 x ptr> %wide.load173, ptr %i.dx, align 8, !alias.scope !1758
  %index.next176 = add nuw i64 %index169, 4       ; 2 uses
  %i.dy = icmp eq i64 %index.next176, %n.vec167
  br i1 %i.dy, label %middle.block177, label %vector.body168, !llvm.loop !1760

middle.block177:                                  ; preds = %vector.body168
  %cmp.n178 = icmp eq i64 %.082, %n.vec167
  br i1 %cmp.n178, label %._crit_edge, label %.lr.ph.preheader215

.lr.ph.preheader215:                              ; preds = %vector.memcheck158, %vector.scevcheck147, %.lr.ph.preheader, %middle.block177
  %.0105.ph = phi i64 [ 0, %vector.memcheck158 ], [ 0, %vector.scevcheck147 ], [ 0, %.lr.ph.preheader ], [ %n.vec167, %middle.block177 ] ; 3 uses
  %.052104.ph = phi ptr [ %i.cs, %vector.memcheck158 ], [ %i.cs, %vector.scevcheck147 ], [ %i.cs, %.lr.ph.preheader ], [ %i.dr, %middle.block177 ] ; 2 uses
  %.260103.ph = phi ptr [ %i.dd, %vector.memcheck158 ], [ %i.dd, %vector.scevcheck147 ], [ %i.dd, %.lr.ph.preheader ], [ %i.ds, %middle.block177 ] ; 2 uses
  %xtraiter = and i64 %.082, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader215, %.lr.ph.prol
  %.0105.prol = phi i64 [ %i.ed, %.lr.ph.prol ], [ %.0105.ph, %.lr.ph.preheader215 ]
  %.052104.prol = phi ptr [ %i.ea, %.lr.ph.prol ], [ %.052104.ph, %.lr.ph.preheader215 ]
  %.260103.prol = phi ptr [ %i.dz, %.lr.ph.prol ], [ %.260103.ph, %.lr.ph.preheader215 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader215 ]
  %i.dz = getelementptr i8, ptr %.260103.prol, i64 -8 ; 4 uses
  %i.ea = getelementptr i8, ptr %.052104.prol, i64 -8 ; 4 uses
  %i.eb = load ptr, ptr %i.dz, align 8
  %i.ec = load ptr, ptr %i.ea, align 8
  store ptr %i.ec, ptr %i.dz, align 8
  store ptr %i.eb, ptr %i.ea, align 8
  %i.ed = add nuw nsw i64 %.0105.prol, 1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !1761

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader215
  %.0105.unr = phi i64 [ %.0105.ph, %.lr.ph.preheader215 ], [ %i.ed, %.lr.ph.prol ]
  %.052104.unr = phi ptr [ %.052104.ph, %.lr.ph.preheader215 ], [ %i.ea, %.lr.ph.prol ]
  %.260103.unr = phi ptr [ %.260103.ph, %.lr.ph.preheader215 ], [ %i.dz, %.lr.ph.prol ]
  %i.ee = sub nsw i64 %.0105.ph, %.082
  %i.ef = icmp ugt i64 %i.ee, -4
  br i1 %i.ef, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block177, %bb.r
  %.260.lcssa = phi ptr [ %i.dd, %bb.r ], [ %.058, %middle.block177 ], [ %.058, %.lr.ph ], [ %.058, %.lr.ph.prol.loopexit ]
  %i.eg = srem i64 %.086, %i.an                   ; 2 uses
  %.not = icmp eq i64 %i.eg, 0
  br i1 %.not, label %_ZSt11swap_rangesIPP8QCPLayerS2_ET0_T_S4_S3_.exit, label %.backedge

.backedge:                                        ; preds = %._crit_edge, %bb.l
  %.086.be = phi i64 [ %.082, %bb.l ], [ %i.an, %._crit_edge ]
  %.082.be = phi i64 [ %i.cq, %bb.l ], [ %i.eg, %._crit_edge ]
  %.058.be = phi ptr [ %.159.lcssa, %bb.l ], [ %.260.lcssa, %._crit_edge ]
  br label %bb.e, !llvm.loop !1762

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.0105 = phi i64 [ %i.ex, %.lr.ph ], [ %.0105.unr, %.lr.ph.prol.loopexit ]
  %.052104 = phi ptr [ %i.eu, %.lr.ph ], [ %.052104.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %.260103 = phi ptr [ %i.et, %.lr.ph ], [ %.260103.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.eh = getelementptr i8, ptr %.260103, i64 -8  ; 2 uses
  %i.ei = getelementptr i8, ptr %.052104, i64 -8  ; 2 uses
  %i.ej = load ptr, ptr %i.eh, align 8
  %i.ek = load ptr, ptr %i.ei, align 8
  store ptr %i.ek, ptr %i.eh, align 8
  store ptr %i.ej, ptr %i.ei, align 8
  %i.el = getelementptr i8, ptr %.260103, i64 -16 ; 2 uses
  %i.em = getelementptr i8, ptr %.052104, i64 -16 ; 2 uses
  %i.en = load ptr, ptr %i.el, align 8
  %i.eo = load ptr, ptr %i.em, align 8
  store ptr %i.eo, ptr %i.el, align 8
  store ptr %i.en, ptr %i.em, align 8
  %i.ep = getelementptr i8, ptr %.260103, i64 -24 ; 2 uses
  %i.eq = getelementptr i8, ptr %.052104, i64 -24 ; 2 uses
  %i.er = load ptr, ptr %i.ep, align 8
  %i.es = load ptr, ptr %i.eq, align 8
  store ptr %i.es, ptr %i.ep, align 8
  store ptr %i.er, ptr %i.eq, align 8
  %i.et = getelementptr i8, ptr %.260103, i64 -32 ; 3 uses
  %i.eu = getelementptr i8, ptr %.052104, i64 -32 ; 3 uses
  %i.ev = load ptr, ptr %i.et, align 8
  %i.ew = load ptr, ptr %i.eu, align 8
  store ptr %i.ew, ptr %i.et, align 8
  store ptr %i.ev, ptr %i.eu, align 8
  %i.ex = add nuw nsw i64 %.0105, 4               ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.ex, %.082
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !1763

_ZSt11swap_rangesIPP8QCPLayerS2_ET0_T_S4_S3_.exit: ; preds = %._crit_edge, %._crit_edge111, %.lr.ph.i, %middle.block209, %_ZSt13move_backwardIPP8QCPLayerS2_ET0_T_S4_S3_.exit, %_ZSt4moveIPP8QCPLayerS2_ET0_T_S4_S3_.exit, %bb.b, %bb.a
  %.6 = phi ptr [ %0, %bb.b ], [ %2, %bb.a ], [ %i.am, %_ZSt13move_backwardIPP8QCPLayerS2_ET0_T_S4_S3_.exit ], [ %i.am, %_ZSt4moveIPP8QCPLayerS2_ET0_T_S4_S3_.exit ], [ %1, %middle.block209 ], [ %1, %.lr.ph.i ], [ %i.am, %._crit_edge111 ], [ %i.am, %._crit_edge ]
  ret ptr %.6
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: inlinehint mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_ZN5QListIP7QCPAxisE6appendEOS2_(ptr noundef align 8 dereferenceable_or_null(24) %0, ptr noundef align 8 dereferenceable(24) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 5 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_ZN9QtPrivate12QPodArrayOpsIP7QCPAxisE10moveAppendEPS2_S4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8                ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_ZNK17QArrayDataPointerIP7QCPAxisE11needsDetachEv.exit.thread, label %_ZNK17QArrayDataPointerIP7QCPAxisE11needsDetachEv.exit

_ZNK17QArrayDataPointerIP7QCPAxisE11needsDetachEv.exit: ; preds = %bb.b
  %i.e = load atomic i32, ptr %i.d monotonic, align 4
  %i.f = icmp sgt i32 %i.e, 1
  br i1 %i.f, label %_ZNK17QArrayDataPointerIP7QCPAxisE11needsDetachEv.exit.thread, label %bb.c

_ZNK17QArrayDataPointerIP7QCPAxisE11needsDetachEv.exit.thread: ; preds = %bb.b, %_ZNK17QArrayDataPointerIP7QCPAxisE11needsDetachEv.exit
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr [8 x i8], ptr %i.h, i64 %i.b
  tail call void @_ZN9QtPrivate15QCommonArrayOpsIP7QCPAxisE10growAppendEPKS2_S5_(ptr noundef align 8 dereferenceable_or_null(24) %0, ptr noundef %i.h, ptr noundef %i.i)
  br label %_ZN9QtPrivate12QPodArrayOpsIP7QCPAxisE10moveAppendEPS2_S4_.exit

bb.c:                                             ; preds = %_ZNK17QArrayDataPointerIP7QCPAxisE11needsDetachEv.exit
  %i.j = load ptr, ptr %0, align 8                ; 4 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %.critedge.i, label %_ZNK17QArrayDataPointerIP7QCPAxisE11needsDetachEv.exit.i

_ZNK17QArrayDataPointerIP7QCPAxisE11needsDetachEv.exit.i: ; preds = %bb.c
  %i.k = load atomic i32, ptr %i.j monotonic, align 4
  %i.l = icmp sgt i32 %i.k, 1
  br i1 %i.l, label %.critedge.i, label %bb.d

bb.d:                                             ; preds = %_ZNK17QArrayDataPointerIP7QCPAxisE11needsDetachEv.exit.i
  %i.m = getelementptr i8, ptr %i.j, i64 8
  %i.n = load i64, ptr %i.m, align 8              ; 2 uses
  %i.o = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8              ; 4 uses
  %i.q = ptrtoint ptr %i.j to i64
  %i.r = add i64 %i.q, 23
  %i.s = and i64 %i.r, -8                         ; 2 uses
  %i.t = ptrtoint ptr %i.p to i64                 ; 2 uses
  %i.u = sub i64 %i.t, %i.s                       ; 2 uses
  %i.v = ashr exact i64 %i.u, 3                   ; 2 uses
  %i.w = getelementptr i8, ptr %0, i64 16
  %i.x = load i64, ptr %i.w, align 8              ; 4 uses
  %i.y = add i64 %i.x, %i.v
  %i.z = sub i64 %i.n, %i.y
  %.not17.i = icmp slt i64 %i.z, %i.b
  br i1 %.not17.i, label %_ZNK17QArrayDataPointerIP7QCPAxisE14freeSpaceAtEndEv.exit.i.i, label %_ZN17QArrayDataPointerIP7QCPAxisE13detachAndGrowEN10QArrayData14GrowthPositionExPPKS1_PS2_.exit

_ZNK17QArrayDataPointerIP7QCPAxisE14freeSpaceAtEndEv.exit.i.i: ; preds = %bb.d
  %.not.i19.i = icmp slt i64 %i.v, %i.b
  br i1 %.not.i19.i, label %.critedge.i, label %bb.e

bb.e:                                             ; preds = %_ZNK17QArrayDataPointerIP7QCPAxisE14freeSpaceAtEndEv.exit.i.i
  %i.aa = mul i64 %i.x, 3
  %i.ab = shl i64 %i.n, 1
  %i.ac = icmp slt i64 %i.aa, %i.ab
  br i1 %i.ac, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %bb.e
  %.idx.i.i.i = sub i64 0, %i.u
  %i.ad = getelementptr i8, ptr %i.p, i64 %.idx.i.i.i ; 3 uses
  %i.ae = icmp eq i64 %i.x, 0
  br i1 %i.ae, label %_ZN9QtPrivate20q_relocate_overlap_nIP7QCPAxisxEEvPT_T0_S4_.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = icmp eq i64 %i.s, %i.t
  %i.ag = icmp eq ptr %i.p, null
end_hunk_0
begin_hunk_1_@_ZN17QArrayDataPointerIP7QCPBarsE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS2_:bb.a
  %i.aq = load i64, ptr %i.am, align 16
  %i.ar = add i64 %i.aq, %i.ap
  store i64 %i.ar, ptr %i.am, align 16
  br label %_ZN9QtPrivate12QPodArrayOpsIP7QCPBarsE10copyAppendEPKS2_S5_.exit

_ZN9QtPrivate12QPodArrayOpsIP7QCPBarsE10copyAppendEPKS2_S5_.exit: ; preds = %_ZN9QtPrivate12QPodArrayOpsIP7QCPBarsE10copyAppendEPKS2_S5_.exit.sink.split, %bb.j, %_ZNK17QArrayDataPointerIP7QCPBarsE11needsDetachEv.exit31.thread, %bb.h
  %i.as = load ptr, ptr %0, align 8               ; 3 uses
  %i.at = getelementptr i8, ptr %0, i64 8
  %i.au = load ptr, ptr %i.at, align 8            ; 2 uses
  %i.av = load <2 x ptr>, ptr %4, align 16
  store ptr %i.as, ptr %4, align 16
  store <2 x ptr> %i.av, ptr %0, align 8
  store ptr %i.au, ptr %i.w, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.ax = load i64, ptr %i.ac, align 8            ; 2 uses
  %i.ay = load i64, ptr %i.aw, align 16
  store i64 %i.ay, ptr %i.ac, align 8
  store i64 %i.ax, ptr %i.aw, align 16
  br i1 %i.b, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN9QtPrivate12QPodArrayOpsIP7QCPBarsE10copyAppendEPKS2_S5_.exit
  %i.az = getelementptr i8, ptr %3, i64 8
  %i.ba = load <2 x ptr>, ptr %3, align 8
  %i.bb = load ptr, ptr %3, align 8
  store ptr %i.as, ptr %3, align 8
  store ptr %i.au, ptr %i.az, align 8
  store <2 x ptr> %i.ba, ptr %4, align 16
  %i.bc = getelementptr i8, ptr %3, i64 16        ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8
  store i64 %i.ax, ptr %i.bc, align 8
  store i64 %i.bd, ptr %i.aw, align 16
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN9QtPrivate12QPodArrayOpsIP7QCPBarsE10copyAppendEPKS2_S5_.exit
  %i.be = phi ptr [ %i.bb, %bb.k ], [ %i.as, %_ZN9QtPrivate12QPodArrayOpsIP7QCPBarsE10copyAppendEPKS2_S5_.exit ] ; 2 uses
  %.not.i.i32 = icmp eq ptr %i.be, null
  br i1 %.not.i.i32, label %_ZN17QArrayDataPointerIP7QCPBarsED2Ev.exit35, label %_ZN17QArrayDataPointerIP7QCPBarsE5derefEv.exit.i33

_ZN17QArrayDataPointerIP7QCPBarsE5derefEv.exit.i33: ; preds = %bb.l
  %i.bf = atomicrmw sub ptr %i.be, i32 1 acq_rel, align 4
  %.not.i34 = icmp eq i32 %i.bf, 1
  br i1 %.not.i34, label %bb.m, label %_ZN17QArrayDataPointerIP7QCPBarsED2Ev.exit35

bb.m:                                             ; preds = %_ZN17QArrayDataPointerIP7QCPBarsE5derefEv.exit.i33
  %i.bg = load ptr, ptr %4, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.bg, i64 noundef 8, i64 noundef 8) #51
  br label %_ZN17QArrayDataPointerIP7QCPBarsED2Ev.exit35

_ZN17QArrayDataPointerIP7QCPBarsED2Ev.exit35:     ; preds = %bb.l, %_ZN17QArrayDataPointerIP7QCPBarsE5derefEv.exit.i33, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #51
  br label %bb.n

bb.n:                                             ; preds = %_ZN17QArrayDataPointerIP7QCPBarsED2Ev.exit35, %_ZN9QtPrivate12QPodArrayOpsIP7QCPBarsE10reallocateExN10QArrayData16AllocationOptionE.exit
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_ZN17QArrayDataPointerIP7QCPBarsE12allocateGrowERKS2_xN10QArrayData14GrowthPositionE(ptr dead_on_unwind noalias writable sret(%struct.QArrayDataPointer.250) align 8 %0, ptr noundef align 8 dereferenceable(24) %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.c = load ptr, ptr %1, align 8                ; 4 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZNK17QArrayDataPointerIP7QCPBarsE22constAllocatedCapacityEv.exit, label %_ZNK17QArrayDataPointerIP7QCPBarsE22constAllocatedCapacityEv.exit.thread

_ZNK17QArrayDataPointerIP7QCPBarsE22constAllocatedCapacityEv.exit: ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8
  %.sroa.speculated = tail call i64 @llvm.smax.i64(i64 %i.d, i64 0)
  %i.e = add i64 %.sroa.speculated, %2
  br label %_ZNK17QArrayDataPointerIP7QCPBarsE22constAllocatedCapacityEv.exit31

_ZNK17QArrayDataPointerIP7QCPBarsE22constAllocatedCapacityEv.exit.thread: ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.c, i64 8
  %i.g = load i64, ptr %i.f, align 8              ; 5 uses
  %i.h = load i64, ptr %i.b, align 8              ; 2 uses
  %.sroa.speculated45 = tail call i64 @llvm.smax.i64(i64 %i.h, i64 %i.g)
  %i.i = add i64 %.sroa.speculated45, %2
  %i.j = icmp eq i32 %3, 0
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = ptrtoint ptr %i.c to i64
  %i.n = add i64 %i.m, 23
  %i.o = and i64 %i.n, -8
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.p, %i.o
  %i.r = ashr exact i64 %i.q, 3                   ; 2 uses
  %i.s = add i64 %i.h, %i.r
  %i.t = sub i64 %i.g, %i.s
  %.ph = select i1 %i.j, i64 %i.t, i64 %i.r
  %i.u = sub i64 %i.i, %.ph                       ; 2 uses
  %i.v = getelementptr i8, ptr %i.c, i64 4
  %i.w = load i32, ptr %i.v, align 4
  %i.x = and i32 %i.w, 1
  %.not.i.i = icmp eq i32 %i.x, 0
  br i1 %.not.i.i, label %_ZNK17QArrayDataPointerIP7QCPBarsE22constAllocatedCapacityEv.exit31, label %bb.b

bb.b:                                             ; preds = %_ZNK17QArrayDataPointerIP7QCPBarsE22constAllocatedCapacityEv.exit.thread
  %spec.select.i.i = tail call i64 @llvm.smax.i64(i64 %i.u, i64 %i.g)
  br label %_ZNK17QArrayDataPointerIP7QCPBarsE22constAllocatedCapacityEv.exit31

_ZNK17QArrayDataPointerIP7QCPBarsE22constAllocatedCapacityEv.exit31: ; preds = %bb.b, %_ZNK17QArrayDataPointerIP7QCPBarsE22constAllocatedCapacityEv.exit.thread, %_ZNK17QArrayDataPointerIP7QCPBarsE22constAllocatedCapacityEv.exit
  %i.y = phi i64 [ %i.e, %_ZNK17QArrayDataPointerIP7QCPBarsE22constAllocatedCapacityEv.exit ], [ %spec.select.i.i, %bb.b ], [ %i.u, %_ZNK17QArrayDataPointerIP7QCPBarsE22constAllocatedCapacityEv.exit.thread ] ; 2 uses
  %i.z = phi i64 [ 0, %_ZNK17QArrayDataPointerIP7QCPBarsE22constAllocatedCapacityEv.exit ], [ %i.g, %bb.b ], [ %i.g, %_ZNK17QArrayDataPointerIP7QCPBarsE22constAllocatedCapacityEv.exit.thread ]
  %i.aa = icmp sle i64 %i.y, %i.z
  %i.ab = zext i1 %i.aa to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #51
  %i.ac = call noalias noundef ptr @_ZN10QArrayData8allocateEPPS_xxxNS_16AllocationOptionE(ptr noundef nonnull %i.a, i64 noundef 8, i64 noundef 8, i64 noundef %i.y, i32 noundef %i.ab) #51 ; 6 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ac, i64 8) ]
  %i.ad = load ptr, ptr %i.a, align 8             ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #51
  %.not = icmp ne ptr %i.ad, null
  %i.ae = icmp ne ptr %i.ac, null
  %i.af = and i1 %i.ae, %.not
  br i1 %i.af, label %bb.c, label %bb.f

bb.c:                                             ; preds = %_ZNK17QArrayDataPointerIP7QCPBarsE22constAllocatedCapacityEv.exit31
  %i.ag = icmp eq i32 %3, 1
  br i1 %i.ag, label %_ZNK17QArrayDataPointerIP7QCPBarsE16freeSpaceAtBeginEv.exit33, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ah = load ptr, ptr %1, align 8               ; 3 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %_ZNK17QArrayDataPointerIP7QCPBarsE5flagsEv.exit, label %_ZNK17QArrayDataPointerIP7QCPBarsE16freeSpaceAtBeginEv.exit33.thread

_ZNK17QArrayDataPointerIP7QCPBarsE16freeSpaceAtBeginEv.exit33.thread: ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = ptrtoint ptr %i.ah to i64
  %i.am = add i64 %i.al, 23
  %i.an = and i64 %i.am, -8
  %i.ao = ptrtoint ptr %i.ak to i64
  %i.ap = sub i64 %i.ao, %i.an
  %i.aq = getelementptr i8, ptr %i.ac, i64 %i.ap
  br label %bb.e

_ZNK17QArrayDataPointerIP7QCPBarsE16freeSpaceAtBeginEv.exit33: ; preds = %bb.c
  %i.ar = getelementptr i8, ptr %i.ad, i64 8
  %i.as = load i64, ptr %i.ar, align 8
  %i.at = load i64, ptr %i.b, align 8
  %i.au = add i64 %2, %i.at
  %i.av = sub i64 %i.as, %i.au
  %i.aw = sdiv i64 %i.av, 2
  %i.ax = call noundef i64 @llvm.smax.i64(i64 %i.aw, i64 0)
  %.pr.pre = load ptr, ptr %1, align 8            ; 2 uses
  %i.ay = getelementptr [8 x i8], ptr %i.ac, i64 %i.ax
  %i.az = getelementptr [8 x i8], ptr %i.ay, i64 %2 ; 2 uses
  %.not.i34 = icmp eq ptr %.pr.pre, null
  br i1 %.not.i34, label %_ZNK17QArrayDataPointerIP7QCPBarsE5flagsEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK17QArrayDataPointerIP7QCPBarsE16freeSpaceAtBeginEv.exit33.thread, %_ZNK17QArrayDataPointerIP7QCPBarsE16freeSpaceAtBeginEv.exit33
  %i.ba = phi ptr [ %i.aq, %_ZNK17QArrayDataPointerIP7QCPBarsE16freeSpaceAtBeginEv.exit33.thread ], [ %i.az, %_ZNK17QArrayDataPointerIP7QCPBarsE16freeSpaceAtBeginEv.exit33 ]
  %.pr62 = phi ptr [ %i.ah, %_ZNK17QArrayDataPointerIP7QCPBarsE16freeSpaceAtBeginEv.exit33.thread ], [ %.pr.pre, %_ZNK17QArrayDataPointerIP7QCPBarsE16freeSpaceAtBeginEv.exit33 ]
  %i.bb = getelementptr i8, ptr %.pr62, i64 4
  %i.bc = load i32, ptr %i.bb, align 4
  br label %_ZNK17QArrayDataPointerIP7QCPBarsE5flagsEv.exit

_ZNK17QArrayDataPointerIP7QCPBarsE5flagsEv.exit:  ; preds = %bb.d, %_ZNK17QArrayDataPointerIP7QCPBarsE16freeSpaceAtBeginEv.exit33, %bb.e
  %i.bd = phi ptr [ %i.ba, %bb.e ], [ %i.az, %_ZNK17QArrayDataPointerIP7QCPBarsE16freeSpaceAtBeginEv.exit33 ], [ %i.ac, %bb.d ]
  %.sroa.0.0.i = phi i32 [ %i.bc, %bb.e ], [ 0, %_ZNK17QArrayDataPointerIP7QCPBarsE16freeSpaceAtBeginEv.exit33 ], [ 0, %bb.d ]
  %i.be = getelementptr i8, ptr %i.ad, i64 4
  store i32 %.sroa.0.0.i, ptr %i.be, align 4
  br label %bb.f

bb.f:                                             ; preds = %_ZNK17QArrayDataPointerIP7QCPBarsE22constAllocatedCapacityEv.exit31, %_ZNK17QArrayDataPointerIP7QCPBarsE5flagsEv.exit
  %.sink = phi ptr [ %i.bd, %_ZNK17QArrayDataPointerIP7QCPBarsE5flagsEv.exit ], [ %i.ac, %_ZNK17QArrayDataPointerIP7QCPBarsE22constAllocatedCapacityEv.exit31 ]
  store ptr %i.ad, ptr %0, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.bg, align 8
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr noundef ptr @_ZNSt3_V28__rotateIPP7QCPBarsEET_S4_S4_S4_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_ZSt11swap_rangesIPP7QCPBarsS2_ET0_T_S4_S3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %2, %1
  br i1 %i.b, label %_ZSt11swap_rangesIPP7QCPBarsS2_ET0_T_S4_S3_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.d = ptrtoint ptr %0 to i64                   ; 5 uses
  %i.e = sub i64 %i.c, %i.d
  %i.f = ashr exact i64 %i.e, 3                   ; 2 uses
  %i.g = ptrtoint ptr %1 to i64                   ; 5 uses
  %i.h = sub i64 %i.g, %i.d
  %i.i = ashr exact i64 %i.h, 3                   ; 3 uses
  %i.j = sub nsw i64 %i.f, %i.i
  %i.k = icmp eq i64 %i.i, %i.j
  br i1 %i.k, label %.lr.ph.i.preheader, label %bb.d

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.l = sub i64 %i.g, %i.d
  %i.m = add i64 %i.l, -8                         ; 2 uses
  %i.n = lshr i64 %i.m, 3
  %i.o = add nuw nsw i64 %i.n, 1                  ; 2 uses
  %min.iters.check196 = icmp ult i64 %i.m, 488
  br i1 %min.iters.check196, label %.lr.ph.i.preheader213, label %vector.scevcheck182

vector.scevcheck182:                              ; preds = %.lr.ph.i.preheader
  %i.p = add i64 %i.g, -8
  %i.q = sub i64 %i.p, %i.d                       ; 2 uses
  %mul186 = and i64 %i.q, -8
  %mul183 = and i64 %i.q, -8
  %i.r = getelementptr i8, ptr %0, i64 %mul183
  %i.s = icmp ult ptr %i.r, %0
  %i.t = getelementptr i8, ptr %1, i64 %mul186
  %i.u = icmp ult ptr %i.t, %1
  %i.v = or i1 %i.s, %i.u
  br i1 %i.v, label %.lr.ph.i.preheader213, label %vector.memcheck189

vector.memcheck189:                               ; preds = %vector.scevcheck182
  %i.w = add i64 %i.g, -8
  %i.x = sub i64 %i.w, %i.d
  %i.y = and i64 %i.x, -8
  %i.z = add i64 %i.y, 8                          ; 2 uses
  %scevgep190 = getelementptr i8, ptr %0, i64 %i.z
  %scevgep191 = getelementptr i8, ptr %1, i64 %i.z
  %bound0192 = icmp ult ptr %0, %scevgep191
  %bound1193 = icmp ult ptr %1, %scevgep190
  %found.conflict194 = and i1 %bound0192, %bound1193
  br i1 %found.conflict194, label %.lr.ph.i.preheader213, label %vector.ph197

vector.ph197:                                     ; preds = %vector.memcheck189
  %n.vec199 = and i64 %i.o, 4611686018427387900   ; 3 uses
  %i.aa = shl i64 %n.vec199, 3                    ; 2 uses
  %i.ab = getelementptr i8, ptr %1, i64 %i.aa
  %i.ac = getelementptr i8, ptr %0, i64 %i.aa
  br label %vector.body200

vector.body200:                                   ; preds = %vector.body200, %vector.ph197
  %index201 = phi i64 [ 0, %vector.ph197 ], [ %index.next208, %vector.body200 ] ; 2 uses
  %i.ad = shl i64 %index201, 3                    ; 2 uses
  %next.gep202 = getelementptr i8, ptr %1, i64 %i.ad ; 3 uses
  %next.gep203 = getelementptr i8, ptr %0, i64 %i.ad ; 3 uses
  %i.ae = getelementptr i8, ptr %next.gep203, i64 16 ; 2 uses
  %wide.load204 = load <2 x ptr>, ptr %next.gep203, align 8, !alias.scope !1901, !noalias !1904
  %wide.load205 = load <2 x ptr>, ptr %i.ae, align 8, !alias.scope !1901, !noalias !1904
  %i.af = getelementptr i8, ptr %next.gep202, i64 16 ; 2 uses
  %wide.load206 = load <2 x ptr>, ptr %next.gep202, align 8, !alias.scope !1904
  %wide.load207 = load <2 x ptr>, ptr %i.af, align 8, !alias.scope !1904
  store <2 x ptr> %wide.load206, ptr %next.gep203, align 8, !alias.scope !1901, !noalias !1904
  store <2 x ptr> %wide.load207, ptr %i.ae, align 8, !alias.scope !1901, !noalias !1904
  store <2 x ptr> %wide.load204, ptr %next.gep202, align 8, !alias.scope !1904
  store <2 x ptr> %wide.load205, ptr %i.af, align 8, !alias.scope !1904
  %index.next208 = add nuw i64 %index201, 4       ; 2 uses
  %i.ag = icmp eq i64 %index.next208, %n.vec199
  br i1 %i.ag, label %middle.block209, label %vector.body200, !llvm.loop !1906

middle.block209:                                  ; preds = %vector.body200
  %cmp.n210 = icmp eq i64 %i.o, %n.vec199
  br i1 %cmp.n210, label %_ZSt11swap_rangesIPP7QCPBarsS2_ET0_T_S4_S3_.exit, label %.lr.ph.i.preheader213

.lr.ph.i.preheader213:                            ; preds = %vector.memcheck189, %vector.scevcheck182, %.lr.ph.i.preheader, %middle.block209
  %.010.i.ph = phi ptr [ %1, %vector.memcheck189 ], [ %1, %vector.scevcheck182 ], [ %1, %.lr.ph.i.preheader ], [ %i.ab, %middle.block209 ]
  %.079.i.ph = phi ptr [ %0, %vector.memcheck189 ], [ %0, %vector.scevcheck182 ], [ %0, %.lr.ph.i.preheader ], [ %i.ac, %middle.block209 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader213, %.lr.ph.i
  %.010.i = phi ptr [ %i.ak, %.lr.ph.i ], [ %.010.i.ph, %.lr.ph.i.preheader213 ] ; 3 uses
  %.079.i = phi ptr [ %i.aj, %.lr.ph.i ], [ %.079.i.ph, %.lr.ph.i.preheader213 ] ; 3 uses
  %i.ah = load ptr, ptr %.079.i, align 8
  %i.ai = load ptr, ptr %.010.i, align 8
  store ptr %i.ai, ptr %.079.i, align 8
  store ptr %i.ah, ptr %.010.i, align 8
  %i.aj = getelementptr i8, ptr %.079.i, i64 8    ; 2 uses
  %i.ak = getelementptr i8, ptr %.010.i, i64 8
  %.not.i = icmp eq ptr %i.aj, %1
  br i1 %.not.i, label %_ZSt11swap_rangesIPP7QCPBarsS2_ET0_T_S4_S3_.exit, label %.lr.ph.i, !llvm.loop !1907

bb.d:                                             ; preds = %bb.c
  %i.al = sub i64 %i.c, %i.g
  %i.am = getelementptr i8, ptr %0, i64 %i.al     ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %.backedge, %bb.d
  %.086 = phi i64 [ %i.f, %bb.d ], [ %.086.be, %.backedge ] ; 13 uses
  %.082 = phi i64 [ %i.i, %bb.d ], [ %.082.be, %.backedge ] ; 21 uses
  %.058 = phi ptr [ %0, %bb.d ], [ %.058.be, %.backedge ] ; 28 uses
  %i.an = sub i64 %.086, %.082                    ; 10 uses
  %i.ao = icmp slt i64 %.082, %i.an
  br i1 %i.ao, label %bb.f, label %bb.m

bb.f:                                             ; preds = %bb.e
  %i.ap = icmp eq i64 %.082, 1
  br i1 %i.ap, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.aq = load ptr, ptr %.058, align 8
  %i.ar = getelementptr i8, ptr %.058, i64 8      ; 2 uses
  %.idx97 = shl i64 %.086, 3                      ; 2 uses
  %i.as = getelementptr i8, ptr %.058, i64 %.idx97
  %gepdiff = add i64 %.idx97, -8                  ; 3 uses
  %i.at = icmp sgt i64 %gepdiff, 8
  br i1 %i.at, label %bb.h, label %bb.i, !prof !1746

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.058, ptr align 8 %i.ar, i64 %gepdiff, i1 false)
  br label %_ZSt4moveIPP7QCPBarsS2_ET0_T_S4_S3_.exit

bb.i:                                             ; preds = %bb.g
  %i.au = icmp eq i64 %gepdiff, 8
  br i1 %i.au, label %bb.j, label %_ZSt4moveIPP7QCPBarsS2_ET0_T_S4_S3_.exit

bb.j:                                             ; preds = %bb.i
  %i.av = load ptr, ptr %i.ar, align 8
  store ptr %i.av, ptr %.058, align 8
  br label %_ZSt4moveIPP7QCPBarsS2_ET0_T_S4_S3_.exit

_ZSt4moveIPP7QCPBarsS2_ET0_T_S4_S3_.exit:         ; preds = %bb.h, %bb.i, %bb.j
  %i.aw = getelementptr i8, ptr %i.as, i64 -8
  store ptr %i.aq, ptr %i.aw, align 8
  br label %_ZSt11swap_rangesIPP7QCPBarsS2_ET0_T_S4_S3_.exit

bb.k:                                             ; preds = %bb.f
  %i.ax = icmp sgt i64 %i.an, 0
  br i1 %i.ax, label %.lr.ph110.preheader, label %._crit_edge111

.lr.ph110.preheader:                              ; preds = %bb.k
  %i.ay = getelementptr [8 x i8], ptr %.058, i64 %.082 ; 8 uses
  %min.iters.check = icmp ult i64 %i.an, 44
  br i1 %min.iters.check, label %.lr.ph110.preheader214, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph110.preheader
  %i.az = xor i64 %.082, -1
  %i.ba = add i64 %.086, %i.az                    ; 3 uses
  %mul.result = shl i64 %i.ba, 3
  %3 = getelementptr i8, ptr %.058, i64 %mul.result
  %4 = icmp ult ptr %3, %.058
  %mul.result138 = shl i64 %i.ba, 3
  %mul.overflow139 = icmp ugt i64 %i.ba, 2305843009213693951
  %i.bb = getelementptr i8, ptr %i.ay, i64 %mul.result138
  %i.bc = icmp ult ptr %i.bb, %i.ay
  %i.bd = or i1 %i.bc, %mul.overflow139
  %i.be = or i1 %4, %i.bd
  br i1 %i.be, label %.lr.ph110.preheader214, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.bf = shl i64 %.086, 3
  %i.bg = sub i64 %.086, %.082
  %i.bh = shl i64 %i.bg, 3
  %scevgep = getelementptr i8, ptr %.058, i64 %i.bh
  %scevgep140 = getelementptr i8, ptr %.058, i64 %i.bf
  %bound0 = icmp ult ptr %.058, %scevgep140
  %bound1 = icmp ult ptr %i.ay, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph110.preheader214, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.an, 9223372036854775804     ; 4 uses
  %i.bi = shl i64 %n.vec, 3                       ; 2 uses
  %i.bj = getelementptr i8, ptr %i.ay, i64 %i.bi
  %i.bk = getelementptr i8, ptr %.058, i64 %i.bi  ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bl = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ay, i64 %i.bl ; 3 uses
  %next.gep141 = getelementptr i8, ptr %.058, i64 %i.bl ; 3 uses
  %i.bm = getelementptr i8, ptr %next.gep141, i64 16 ; 2 uses
  %wide.load = load <2 x ptr>, ptr %next.gep141, align 8, !alias.scope !1908, !noalias !1911
  %wide.load142 = load <2 x ptr>, ptr %i.bm, align 8, !alias.scope !1908, !noalias !1911
  %i.bn = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load143 = load <2 x ptr>, ptr %next.gep, align 8, !alias.scope !1911
  %wide.load144 = load <2 x ptr>, ptr %i.bn, align 8, !alias.scope !1911
  store <2 x ptr> %wide.load143, ptr %next.gep141, align 8, !alias.scope !1908, !noalias !1911
  store <2 x ptr> %wide.load144, ptr %i.bm, align 8, !alias.scope !1908, !noalias !1911
  store <2 x ptr> %wide.load, ptr %next.gep, align 8, !alias.scope !1911
  store <2 x ptr> %wide.load142, ptr %i.bn, align 8, !alias.scope !1911
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bo = icmp eq i64 %index.next, %n.vec
  br i1 %i.bo, label %middle.block, label %vector.body, !llvm.loop !1913

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.an, %n.vec
  br i1 %cmp.n, label %._crit_edge111, label %.lr.ph110.preheader214

.lr.ph110.preheader214:                           ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph110.preheader, %middle.block
  %.054108.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph110.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %.055107.ph = phi ptr [ %i.ay, %vector.memcheck ], [ %i.ay, %vector.scevcheck ], [ %i.ay, %.lr.ph110.preheader ], [ %i.bj, %middle.block ] ; 2 uses
  %.159106.ph = phi ptr [ %.058, %vector.memcheck ], [ %.058, %vector.scevcheck ], [ %.058, %.lr.ph110.preheader ], [ %i.bk, %middle.block ] ; 2 uses
  %i.bp = sub i64 %.086, %.082
  %xtraiter222 = and i64 %i.bp, 3                 ; 2 uses
  %lcmp.mod223.not = icmp eq i64 %xtraiter222, 0
  br i1 %lcmp.mod223.not, label %.lr.ph110.prol.loopexit, label %.lr.ph110.prol

.lr.ph110.prol:                                   ; preds = %.lr.ph110.preheader214, %.lr.ph110.prol
  %.054108.prol = phi i64 [ %i.bu, %.lr.ph110.prol ], [ %.054108.ph, %.lr.ph110.preheader214 ]
  %.055107.prol = phi ptr [ %i.bt, %.lr.ph110.prol ], [ %.055107.ph, %.lr.ph110.preheader214 ] ; 3 uses
  %.159106.prol = phi ptr [ %i.bs, %.lr.ph110.prol ], [ %.159106.ph, %.lr.ph110.preheader214 ] ; 3 uses
  %prol.iter224 = phi i64 [ %prol.iter224.next, %.lr.ph110.prol ], [ 0, %.lr.ph110.preheader214 ]
  %i.bq = load ptr, ptr %.159106.prol, align 8
  %i.br = load ptr, ptr %.055107.prol, align 8
  store ptr %i.br, ptr %.159106.prol, align 8
  store ptr %i.bq, ptr %.055107.prol, align 8
  %i.bs = getelementptr i8, ptr %.159106.prol, i64 8 ; 3 uses
  %i.bt = getelementptr i8, ptr %.055107.prol, i64 8 ; 2 uses
  %i.bu = add nuw nsw i64 %.054108.prol, 1        ; 2 uses
  %prol.iter224.next = add i64 %prol.iter224, 1   ; 2 uses
  %prol.iter224.cmp.not = icmp eq i64 %prol.iter224.next, %xtraiter222
  br i1 %prol.iter224.cmp.not, label %.lr.ph110.prol.loopexit, label %.lr.ph110.prol, !llvm.loop !1914

.lr.ph110.prol.loopexit:                          ; preds = %.lr.ph110.prol, %.lr.ph110.preheader214
  %.lcssa.unr = phi ptr [ poison, %.lr.ph110.preheader214 ], [ %i.bs, %.lr.ph110.prol ]
  %.054108.unr = phi i64 [ %.054108.ph, %.lr.ph110.preheader214 ], [ %i.bu, %.lr.ph110.prol ]
  %.055107.unr = phi ptr [ %.055107.ph, %.lr.ph110.preheader214 ], [ %i.bt, %.lr.ph110.prol ]
  %.159106.unr = phi ptr [ %.159106.ph, %.lr.ph110.preheader214 ], [ %i.bs, %.lr.ph110.prol ]
  %i.bv = sub i64 %.054108.ph, %.086
  %i.bw = add i64 %i.bv, %.082
  %i.bx = icmp ugt i64 %i.bw, -4
  br i1 %i.bx, label %._crit_edge111, label %.lr.ph110

._crit_edge111:                                   ; preds = %.lr.ph110.prol.loopexit, %.lr.ph110, %middle.block, %bb.k
  %.159.lcssa = phi ptr [ %.058, %bb.k ], [ %i.bk, %middle.block ], [ %.lcssa.unr, %.lr.ph110.prol.loopexit ], [ %i.cn, %.lr.ph110 ]
  %i.by = srem i64 %.086, %.082                   ; 2 uses
  %.not67 = icmp eq i64 %i.by, 0
  br i1 %.not67, label %_ZSt11swap_rangesIPP7QCPBarsS2_ET0_T_S4_S3_.exit, label %bb.l

.lr.ph110:                                        ; preds = %.lr.ph110.prol.loopexit, %.lr.ph110
  %.054108 = phi i64 [ %i.cp, %.lr.ph110 ], [ %.054108.unr, %.lr.ph110.prol.loopexit ]
  %.055107 = phi ptr [ %i.co, %.lr.ph110 ], [ %.055107.unr, %.lr.ph110.prol.loopexit ] ; 6 uses
  %.159106 = phi ptr [ %i.cn, %.lr.ph110 ], [ %.159106.unr, %.lr.ph110.prol.loopexit ] ; 6 uses
  %i.bz = load ptr, ptr %.159106, align 8
  %i.ca = load ptr, ptr %.055107, align 8
  store ptr %i.ca, ptr %.159106, align 8
  store ptr %i.bz, ptr %.055107, align 8
  %i.cb = getelementptr i8, ptr %.159106, i64 8   ; 2 uses
  %i.cc = getelementptr i8, ptr %.055107, i64 8   ; 2 uses
  %i.cd = load ptr, ptr %i.cb, align 8
  %i.ce = load ptr, ptr %i.cc, align 8
  store ptr %i.ce, ptr %i.cb, align 8
  store ptr %i.cd, ptr %i.cc, align 8
  %i.cf = getelementptr i8, ptr %.159106, i64 16  ; 2 uses
  %i.cg = getelementptr i8, ptr %.055107, i64 16  ; 2 uses
  %i.ch = load ptr, ptr %i.cf, align 8
  %i.ci = load ptr, ptr %i.cg, align 8
  store ptr %i.ci, ptr %i.cf, align 8
  store ptr %i.ch, ptr %i.cg, align 8
  %i.cj = getelementptr i8, ptr %.159106, i64 24  ; 2 uses
  %i.ck = getelementptr i8, ptr %.055107, i64 24  ; 2 uses
  %i.cl = load ptr, ptr %i.cj, align 8
  %i.cm = load ptr, ptr %i.ck, align 8
  store ptr %i.cm, ptr %i.cj, align 8
  store ptr %i.cl, ptr %i.ck, align 8
  %i.cn = getelementptr i8, ptr %.159106, i64 32  ; 2 uses
  %i.co = getelementptr i8, ptr %.055107, i64 32
  %i.cp = add nuw nsw i64 %.054108, 4             ; 2 uses
  %exitcond119.not.3 = icmp eq i64 %i.cp, %i.an
  br i1 %exitcond119.not.3, label %._crit_edge111, label %.lr.ph110, !llvm.loop !1915

bb.l:                                             ; preds = %._crit_edge111
  %i.cq = sub i64 %.082, %i.by
  br label %.backedge

bb.m:                                             ; preds = %bb.e
  %i.cr = icmp eq i64 %i.an, 1
  %i.cs = getelementptr [8 x i8], ptr %.058, i64 %.086 ; 9 uses
  br i1 %i.cr, label %bb.n, label %bb.r

bb.n:                                             ; preds = %bb.m
  %i.ct = getelementptr i8, ptr %i.cs, i64 -8     ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8
  %.idx = shl i64 %.086, 3
  %i.cv = add i64 %.idx, -8                       ; 3 uses
  %i.cw = ashr exact i64 %i.cv, 3                 ; 2 uses
  %i.cx = icmp sgt i64 %i.cw, 1
  br i1 %i.cx, label %bb.o, label %bb.p, !prof !1746

bb.o:                                             ; preds = %bb.n
  %i.cy = sub nsw i64 0, %i.cw
  %i.cz = getelementptr [8 x i8], ptr %i.cs, i64 %i.cy
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.cz, ptr align 8 %.058, i64 %i.cv, i1 false)
  br label %_ZSt13move_backwardIPP7QCPBarsS2_ET0_T_S4_S3_.exit

bb.p:                                             ; preds = %bb.n
  %i.da = icmp eq i64 %i.cv, 8
  br i1 %i.da, label %bb.q, label %_ZSt13move_backwardIPP7QCPBarsS2_ET0_T_S4_S3_.exit

bb.q:                                             ; preds = %bb.p
  %i.db = load ptr, ptr %.058, align 8
  store ptr %i.db, ptr %i.ct, align 8
  br label %_ZSt13move_backwardIPP7QCPBarsS2_ET0_T_S4_S3_.exit

_ZSt13move_backwardIPP7QCPBarsS2_ET0_T_S4_S3_.exit: ; preds = %bb.o, %bb.p, %bb.q
  store ptr %i.cu, ptr %.058, align 8
  br label %_ZSt11swap_rangesIPP7QCPBarsS2_ET0_T_S4_S3_.exit

bb.r:                                             ; preds = %bb.m
  %i.dc = sub i64 0, %i.an
  %i.dd = getelementptr [8 x i8], ptr %i.cs, i64 %i.dc ; 7 uses
  %i.de = icmp sgt i64 %.082, 0
  br i1 %i.de, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.r
  %min.iters.check164 = icmp ult i64 %.082, 50
  br i1 %min.iters.check164, label %.lr.ph.preheader215, label %vector.scevcheck147

vector.scevcheck147:                              ; preds = %.lr.ph.preheader
  %i.df = add nsw i64 %.082, -1                   ; 3 uses
  %scevgep148 = getelementptr i8, ptr %.058, i64 -8
  %i.dg = shl i64 %.082, 3
  %scevgep149 = getelementptr i8, ptr %scevgep148, i64 %i.dg ; 2 uses
  %mul.result151.neg = mul i64 %i.df, -8
  %i.dh = getelementptr i8, ptr %scevgep149, i64 %mul.result151.neg
  %i.di = icmp ugt ptr %i.dh, %scevgep149
  %scevgep153.a = getelementptr i8, ptr %.058, i64 -8
  %i.dj = shl i64 %.086, 3
  %scevgep154 = getelementptr i8, ptr %scevgep153.a, i64 %i.dj ; 2 uses
  %mul.result156.neg = mul i64 %i.df, -8
  %mul.overflow157 = icmp ugt i64 %i.df, 2305843009213693951
  %i.dk = getelementptr i8, ptr %scevgep154, i64 %mul.result156.neg
  %i.dl = icmp ugt ptr %i.dk, %scevgep154
  %i.dm = or i1 %i.dl, %mul.overflow157
  %i.dn = or i1 %i.di, %i.dm
  br i1 %i.dn, label %.lr.ph.preheader215, label %vector.memcheck158

vector.memcheck158:                               ; preds = %vector.scevcheck147
  %i.do = sub i64 %.086, %.082
  %i.dp = shl i64 %i.do, 3
  %scevgep159 = getelementptr i8, ptr %.058, i64 %i.dp
  %bound0160 = icmp ult ptr %.058, %i.cs
  %bound1161 = icmp ult ptr %scevgep159, %i.dd
  %found.conflict162 = and i1 %bound0160, %bound1161
  br i1 %found.conflict162, label %.lr.ph.preheader215, label %vector.ph165

vector.ph165:                                     ; preds = %vector.memcheck158
  %n.vec167 = and i64 %.082, 4611686018427387900  ; 4 uses
  %i.dq = mul i64 %n.vec167, -8                   ; 2 uses
  %i.dr = getelementptr i8, ptr %i.cs, i64 %i.dq
  %i.ds = getelementptr i8, ptr %i.dd, i64 %i.dq
  br label %vector.body168

vector.body168:                                   ; preds = %vector.body168, %vector.ph165
  %index169 = phi i64 [ 0, %vector.ph165 ], [ %index.next176, %vector.body168 ] ; 2 uses
  %i.dt = mul i64 %index169, -8                   ; 2 uses
  %next.gep170 = getelementptr i8, ptr %i.cs, i64 %i.dt ; 2 uses
  %next.gep171 = getelementptr i8, ptr %i.dd, i64 %i.dt ; 2 uses
  %i.du = getelementptr i8, ptr %next.gep171, i64 -16 ; 2 uses
  %i.dv = getelementptr i8, ptr %next.gep171, i64 -32 ; 2 uses
  %wide.load172 = load <2 x ptr>, ptr %i.du, align 8, !alias.scope !1916, !noalias !1919
  %wide.load173 = load <2 x ptr>, ptr %i.dv, align 8, !alias.scope !1916, !noalias !1919
  %i.dw = getelementptr i8, ptr %next.gep170, i64 -16 ; 2 uses
  %i.dx = getelementptr i8, ptr %next.gep170, i64 -32 ; 2 uses
  %wide.load174 = load <2 x ptr>, ptr %i.dw, align 8, !alias.scope !1919
  %wide.load175 = load <2 x ptr>, ptr %i.dx, align 8, !alias.scope !1919
  store <2 x ptr> %wide.load174, ptr %i.du, align 8, !alias.scope !1916, !noalias !1919
  store <2 x ptr> %wide.load175, ptr %i.dv, align 8, !alias.scope !1916, !noalias !1919
  store <2 x ptr> %wide.load172, ptr %i.dw, align 8, !alias.scope !1919
  store <2 x ptr> %wide.load173, ptr %i.dx, align 8, !alias.scope !1919
  %index.next176 = add nuw i64 %index169, 4       ; 2 uses
  %i.dy = icmp eq i64 %index.next176, %n.vec167
  br i1 %i.dy, label %middle.block177, label %vector.body168, !llvm.loop !1921

middle.block177:                                  ; preds = %vector.body168
  %cmp.n178 = icmp eq i64 %.082, %n.vec167
  br i1 %cmp.n178, label %._crit_edge, label %.lr.ph.preheader215

.lr.ph.preheader215:                              ; preds = %vector.memcheck158, %vector.scevcheck147, %.lr.ph.preheader, %middle.block177
  %.0105.ph = phi i64 [ 0, %vector.memcheck158 ], [ 0, %vector.scevcheck147 ], [ 0, %.lr.ph.preheader ], [ %n.vec167, %middle.block177 ] ; 3 uses
  %.052104.ph = phi ptr [ %i.cs, %vector.memcheck158 ], [ %i.cs, %vector.scevcheck147 ], [ %i.cs, %.lr.ph.preheader ], [ %i.dr, %middle.block177 ] ; 2 uses
  %.260103.ph = phi ptr [ %i.dd, %vector.memcheck158 ], [ %i.dd, %vector.scevcheck147 ], [ %i.dd, %.lr.ph.preheader ], [ %i.ds, %middle.block177 ] ; 2 uses
  %xtraiter = and i64 %.082, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader215, %.lr.ph.prol
  %.0105.prol = phi i64 [ %i.ed, %.lr.ph.prol ], [ %.0105.ph, %.lr.ph.preheader215 ]
  %.052104.prol = phi ptr [ %i.ea, %.lr.ph.prol ], [ %.052104.ph, %.lr.ph.preheader215 ]
  %.260103.prol = phi ptr [ %i.dz, %.lr.ph.prol ], [ %.260103.ph, %.lr.ph.preheader215 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader215 ]
  %i.dz = getelementptr i8, ptr %.260103.prol, i64 -8 ; 4 uses
  %i.ea = getelementptr i8, ptr %.052104.prol, i64 -8 ; 4 uses
  %i.eb = load ptr, ptr %i.dz, align 8
  %i.ec = load ptr, ptr %i.ea, align 8
  store ptr %i.ec, ptr %i.dz, align 8
  store ptr %i.eb, ptr %i.ea, align 8
  %i.ed = add nuw nsw i64 %.0105.prol, 1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !1922

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader215
  %.0105.unr = phi i64 [ %.0105.ph, %.lr.ph.preheader215 ], [ %i.ed, %.lr.ph.prol ]
  %.052104.unr = phi ptr [ %.052104.ph, %.lr.ph.preheader215 ], [ %i.ea, %.lr.ph.prol ]
  %.260103.unr = phi ptr [ %.260103.ph, %.lr.ph.preheader215 ], [ %i.dz, %.lr.ph.prol ]
  %i.ee = sub nsw i64 %.0105.ph, %.082
  %i.ef = icmp ugt i64 %i.ee, -4
  br i1 %i.ef, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block177, %bb.r
  %.260.lcssa = phi ptr [ %i.dd, %bb.r ], [ %.058, %middle.block177 ], [ %.058, %.lr.ph ], [ %.058, %.lr.ph.prol.loopexit ]
  %i.eg = srem i64 %.086, %i.an                   ; 2 uses
  %.not = icmp eq i64 %i.eg, 0
  br i1 %.not, label %_ZSt11swap_rangesIPP7QCPBarsS2_ET0_T_S4_S3_.exit, label %.backedge

.backedge:                                        ; preds = %._crit_edge, %bb.l
  %.086.be = phi i64 [ %.082, %bb.l ], [ %i.an, %._crit_edge ]
  %.082.be = phi i64 [ %i.cq, %bb.l ], [ %i.eg, %._crit_edge ]
  %.058.be = phi ptr [ %.159.lcssa, %bb.l ], [ %.260.lcssa, %._crit_edge ]
  br label %bb.e, !llvm.loop !1923

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.0105 = phi i64 [ %i.ex, %.lr.ph ], [ %.0105.unr, %.lr.ph.prol.loopexit ]
  %.052104 = phi ptr [ %i.eu, %.lr.ph ], [ %.052104.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %.260103 = phi ptr [ %i.et, %.lr.ph ], [ %.260103.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.eh = getelementptr i8, ptr %.260103, i64 -8  ; 2 uses
  %i.ei = getelementptr i8, ptr %.052104, i64 -8  ; 2 uses
  %i.ej = load ptr, ptr %i.eh, align 8
  %i.ek = load ptr, ptr %i.ei, align 8
  store ptr %i.ek, ptr %i.eh, align 8
  store ptr %i.ej, ptr %i.ei, align 8
  %i.el = getelementptr i8, ptr %.260103, i64 -16 ; 2 uses
  %i.em = getelementptr i8, ptr %.052104, i64 -16 ; 2 uses
  %i.en = load ptr, ptr %i.el, align 8
  %i.eo = load ptr, ptr %i.em, align 8
  store ptr %i.eo, ptr %i.el, align 8
  store ptr %i.en, ptr %i.em, align 8
  %i.ep = getelementptr i8, ptr %.260103, i64 -24 ; 2 uses
  %i.eq = getelementptr i8, ptr %.052104, i64 -24 ; 2 uses
  %i.er = load ptr, ptr %i.ep, align 8
  %i.es = load ptr, ptr %i.eq, align 8
  store ptr %i.es, ptr %i.ep, align 8
  store ptr %i.er, ptr %i.eq, align 8
  %i.et = getelementptr i8, ptr %.260103, i64 -32 ; 3 uses
  %i.eu = getelementptr i8, ptr %.052104, i64 -32 ; 3 uses
  %i.ev = load ptr, ptr %i.et, align 8
  %i.ew = load ptr, ptr %i.eu, align 8
  store ptr %i.ew, ptr %i.et, align 8
  store ptr %i.ev, ptr %i.eu, align 8
  %i.ex = add nuw nsw i64 %.0105, 4               ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.ex, %.082
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !1924

_ZSt11swap_rangesIPP7QCPBarsS2_ET0_T_S4_S3_.exit: ; preds = %._crit_edge, %._crit_edge111, %.lr.ph.i, %middle.block209, %_ZSt13move_backwardIPP7QCPBarsS2_ET0_T_S4_S3_.exit, %_ZSt4moveIPP7QCPBarsS2_ET0_T_S4_S3_.exit, %bb.b, %bb.a
  %.6 = phi ptr [ %0, %bb.b ], [ %2, %bb.a ], [ %i.am, %_ZSt13move_backwardIPP7QCPBarsS2_ET0_T_S4_S3_.exit ], [ %i.am, %_ZSt4moveIPP7QCPBarsS2_ET0_T_S4_S3_.exit ], [ %1, %middle.block209 ], [ %1, %.lr.ph.i ], [ %i.am, %._crit_edge111 ], [ %i.am, %._crit_edge ]
  ret ptr %.6
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_ZN9QtPrivate12QPodArrayOpsIP7QCPBarsE7emplaceIJRS2_EEEvxDpOT_(ptr noundef align 8 dereferenceable_or_null(24) %0, i64 noundef %1, ptr noundef align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 5 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNK17QArrayDataPointerIP7QCPBarsE11needsDetachEv.exit.thread, label %_ZNK17QArrayDataPointerIP7QCPBarsE11needsDetachEv.exit

_ZNK17QArrayDataPointerIP7QCPBarsE11needsDetachEv.exit: ; preds = %bb.a
  %i.b = load atomic i32, ptr %i.a monotonic, align 4
  %i.c = icmp sgt i32 %i.b, 1
  br i1 %i.c, label %_ZNK17QArrayDataPointerIP7QCPBarsE11needsDetachEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZNK17QArrayDataPointerIP7QCPBarsE11needsDetachEv.exit
  %i.d = getelementptr i8, ptr %0, i64 16         ; 5 uses
  %i.e = load i64, ptr %i.d, align 8
  %i.f = icmp eq i64 %1, %i.e
  br i1 %i.f, label %_ZNK17QArrayDataPointerIP7QCPBarsE14freeSpaceAtEndEv.exit, label %bb.d

_ZNK17QArrayDataPointerIP7QCPBarsE14freeSpaceAtEndEv.exit: ; preds = %bb.b
  %i.g = getelementptr i8, ptr %i.a, i64 8
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = ptrtoint ptr %i.a to i64
  %i.l = add i64 %i.k, 23
  %i.m = and i64 %i.l, -8
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.n, %i.m
  %i.p = ashr exact i64 %i.o, 3
  %i.q = add i64 %i.p, %1
  %.not = icmp eq i64 %i.h, %i.q
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNK17QArrayDataPointerIP7QCPBarsE14freeSpaceAtEndEv.exit
  %i.r = getelementptr [8 x i8], ptr %i.j, i64 %1
  %i.s = load ptr, ptr %2, align 8
  store ptr %i.s, ptr %i.r, align 8
  %i.t = load i64, ptr %i.d, align 8
  %i.u = add i64 %i.t, 1
  store i64 %i.u, ptr %i.d, align 8
  br label %bb.i

bb.d:                                             ; preds = %_ZNK17QArrayDataPointerIP7QCPBarsE14freeSpaceAtEndEv.exit, %bb.b
  %i.v = icmp eq i64 %1, 0
  br i1 %i.v, label %_ZNK17QArrayDataPointerIP7QCPBarsE16freeSpaceAtBeginEv.exit, label %_ZNK17QArrayDataPointerIP7QCPBarsE11needsDetachEv.exit.thread

_ZNK17QArrayDataPointerIP7QCPBarsE16freeSpaceAtBeginEv.exit: ; preds = %bb.d
  %i.w = getelementptr i8, ptr %0, i64 8          ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %i.y = ptrtoint ptr %i.a to i64
  %i.z = add i64 %i.y, 23
  %i.aa = and i64 %i.z, -8
  %i.ab = ptrtoint ptr %i.x to i64
  %.not13 = icmp eq i64 %i.aa, %i.ab
  br i1 %.not13, label %_ZNK17QArrayDataPointerIP7QCPBarsE11needsDetachEv.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZNK17QArrayDataPointerIP7QCPBarsE16freeSpaceAtBeginEv.exit
  %i.ac = getelementptr i8, ptr %i.x, i64 -8
  %i.ad = load ptr, ptr %2, align 8
  store ptr %i.ad, ptr %i.ac, align 8
  %i.ae = load ptr, ptr %i.w, align 8
  %i.af = getelementptr i8, ptr %i.ae, i64 -8
  store ptr %i.af, ptr %i.w, align 8
  %i.ag = load i64, ptr %i.d, align 8
  %i.ah = add i64 %i.ag, 1
  store i64 %i.ah, ptr %i.d, align 8
  br label %bb.i

_ZNK17QArrayDataPointerIP7QCPBarsE11needsDetachEv.exit.thread: ; preds = %bb.a, %bb.d, %_ZNK17QArrayDataPointerIP7QCPBarsE16freeSpaceAtBeginEv.exit, %_ZNK17QArrayDataPointerIP7QCPBarsE11needsDetachEv.exit
  %i.ai = load ptr, ptr %2, align 8
  %i.aj = getelementptr i8, ptr %0, i64 16        ; 4 uses
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = icmp ne i64 %i.ak, 0
  %i.am = icmp eq i64 %1, 0
  %or.cond = and i1 %i.am, %i.al                  ; 2 uses
end_hunk_1
