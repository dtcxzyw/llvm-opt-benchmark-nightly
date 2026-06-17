inline.NumInlined: 28162
inline.NumDeleted: 8422
begin_hunk_0_@_ZNK16GlobalIDDataBase7contextEii:bb.a
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.c, %bb.a ]
  %i.d = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.e = load i32, ptr %i.d, align 4, !tbaa !4
  %i.f = icmp slt i32 %i.e, %1                    ; 2 uses
  %.19.i.i.i = select i1 %i.f, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 4 uses
  %.1.in.v.i.i.i = select i1 %i.f, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !69 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNKSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !212

_ZNKSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.g = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.g, label %_ZNKSt3mapIiiSt4lessIiESaISt4pairIKiiEEE4findERS3_.exit.thread, label %_ZNKSt3mapIiiSt4lessIiESaISt4pairIKiiEEE4findERS3_.exit

_ZNKSt3mapIiiSt4lessIiESaISt4pairIKiiEEE4findERS3_.exit: ; preds = %_ZNKSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.i = load i32, ptr %i.h, align 4, !tbaa !4
  %i.j = icmp slt i32 %1, %i.i
  br i1 %i.j, label %_ZNKSt3mapIiiSt4lessIiESaISt4pairIKiiEEE4findERS3_.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZNKSt3mapIiiSt4lessIiESaISt4pairIKiiEEE4findERS3_.exit
  %i.k = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 36
  %i.l = load i32, ptr %i.k, align 4, !tbaa !209
  br label %_ZNKSt3mapIiiSt4lessIiESaISt4pairIKiiEEE4findERS3_.exit.thread

_ZNKSt3mapIiiSt4lessIiESaISt4pairIKiiEEE4findERS3_.exit.thread: ; preds = %_ZNKSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i, %bb.a, %bb.b, %_ZNKSt3mapIiiSt4lessIiESaISt4pairIKiiEEE4findERS3_.exit
  %.09 = phi i32 [ %i.l, %bb.b ], [ %1, %_ZNKSt3mapIiiSt4lessIiESaISt4pairIKiiEEE4findERS3_.exit ], [ %1, %bb.a ], [ %1, %_ZNKSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i ]
  %.not12 = icmp eq i32 %2, -1
  br i1 %.not12, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNKSt3mapIiiSt4lessIiESaISt4pairIKiiEEE4findERS3_.exit.thread
  %i.m = load ptr, ptr %0, align 8, !tbaa !196
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.e
  %.013 = phi i32 [ %2, %.lr.ph ], [ %i.u, %bb.e ]
  %i.n = sext i32 %.013 to i64
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.n ; 3 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !213
  %i.q = icmp eq i32 %i.p, %.09
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !218
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  %i.u = load i32, ptr %i.t, align 4, !tbaa !216  ; 2 uses
  %.not = icmp eq i32 %i.u, -1
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !219

.loopexit:                                        ; preds = %bb.e, %_ZNKSt3mapIiiSt4lessIiESaISt4pairIKiiEEE4findERS3_.exit.thread, %bb.d
  %.05 = phi i32 [ %i.s, %bb.d ], [ -1, %_ZNKSt3mapIiiSt4lessIiESaISt4pairIKiiEEE4findERS3_.exit.thread ], [ -1, %bb.e ]
  ret i32 %.05
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @_ZNK16GlobalIDDataBase7contextEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, i32 noundef %1) local_unnamed_addr #16 align 2 {
bb.a:
  %i.a = sext i32 %1 to i64
  %i.b = load ptr, ptr %0, align 8, !tbaa !196
  %i.c = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !218
  ret i32 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK16GlobalIDDataBase19contextParticipatesEii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #16 align 2 {
bb.a:
  %.not6.not = icmp eq i32 %2, -1
  br i1 %.not6.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !196
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %.07 = phi i32 [ %2, %.lr.ph ], [ %i.h, %bb.c ]
  %i.b = sext i32 %.07 to i64
  %i.c = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.b ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !218
  %i.f = icmp eq i32 %i.e, %1                     ; 3 uses
  br i1 %i.f, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.h = load i32, ptr %i.g, align 4, !tbaa !216  ; 2 uses
  %.not.not = icmp eq i32 %i.h, -1
  br i1 %.not.not, label %._crit_edge, label %bb.b, !llvm.loop !220

._crit_edge:                                      ; preds = %bb.b, %bb.c, %bb.a
  %.not.lcssa = phi i1 [ false, %bb.a ], [ %i.f, %bb.c ], [ %i.f, %bb.b ]
  ret i1 %.not.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @_ZN5Pooma20activeRelationGroupsEv() local_unnamed_addr #9 {
bb.a:
  %i.a = load i32, ptr @_ZN5Pooma12_GLOBAL__N_114activeGroups_gE, align 4, !tbaa !4
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZN5Pooma21isRelationGroupActiveEj(i32 noundef %0) local_unnamed_addr #9 {
bb.a:
  %i.a = load i32, ptr @_ZN5Pooma12_GLOBAL__N_114activeGroups_gE, align 4, !tbaa !4
  %i.b = and i32 %i.a, %0
  %i.c = icmp ne i32 %i.b, 0
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN5Pooma21activateRelationGroupEj(i32 noundef %0) local_unnamed_addr #10 {
bb.a:
  %i.a = load i32, ptr @_ZN5Pooma12_GLOBAL__N_114activeGroups_gE, align 4, !tbaa !4
  %i.b = or i32 %i.a, %0
  store i32 %i.b, ptr @_ZN5Pooma12_GLOBAL__N_114activeGroups_gE, align 4, !tbaa !4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN5Pooma23deactivateRelationGroupEj(i32 noundef %0) local_unnamed_addr #10 {
bb.a:
  %i.a = xor i32 %0, -1
  %i.b = load i32, ptr @_ZN5Pooma12_GLOBAL__N_114activeGroups_gE, align 4, !tbaa !4
  %i.c = and i32 %i.b, %i.a
  store i32 %i.c, ptr @_ZN5Pooma12_GLOBAL__N_114activeGroups_gE, align 4, !tbaa !4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef range(i32 1, -2147483647) i32 @_ZN5Pooma16newRelationGroupEv() local_unnamed_addr #10 {
bb.a:
  %i.a = load i32, ptr @_ZN5Pooma12_GLOBAL__N_111numGroups_gE, align 4, !tbaa !4 ; 2 uses
  %i.b = add i32 %i.a, 1
  store i32 %i.b, ptr @_ZN5Pooma12_GLOBAL__N_111numGroups_gE, align 4, !tbaa !4
  %i.c = shl nuw i32 1, %i.a                      ; 2 uses
  %i.d = load i32, ptr @_ZN5Pooma12_GLOBAL__N_114activeGroups_gE, align 4, !tbaa !4
  %i.e = or i32 %i.d, %i.c
  store i32 %i.e, ptr @_ZN5Pooma12_GLOBAL__N_114activeGroups_gE, align 4, !tbaa !4
  ret i32 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_Z18canonicalCenteringILi1EEK9CenteringIXT_EE13CenteringType14ContinuityTypei(ptr dead_on_unwind noalias nofree writable writeonly sret(%class.Centering) align 8 captures(none) initializes((0, 32)) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !221)
  %i.a = icmp eq i32 %3, 0
  %i.b = srem i32 %3, 2
  %i.c = select i1 %i.a, i32 1, i32 %i.b
  %i.d = load ptr, ptr @_ZN18CanonicalCenteringILi1EE17centering_table_mE, align 8, !tbaa !224, !noalias !221
  %i.e = zext i32 %1 to i64
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.e
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !227, !noalias !221
  %i.h = zext i32 %2 to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !229, !noalias !221
  %i.k = sext i32 %i.c to i64
  %i.l = getelementptr inbounds [56 x i8], ptr %i.j, i64 %i.k ; 5 uses
  %i.m = load i64, ptr %i.l, align 8, !noalias !221
  store i64 %i.m, ptr %0, align 8, !alias.scope !221
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !231, !noalias !221 ; 3 uses
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !234, !noalias !221 ; 5 uses
  %i.s = ptrtoint ptr %i.q to i64                 ; 2 uses
  %i.t = ptrtoint ptr %i.r to i64                 ; 3 uses
  %i.u = sub i64 %i.s, %i.t                       ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i8 0, i64 24, i1 false), !alias.scope !221
  %.not.i.i.i.i.i.i = icmp eq ptr %i.q, %i.r
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt12_Vector_baseI3LocILi1EESaIS1_EEC2EmRKS2_.exit.i.i.thread.i, label %bb.b

_ZNSt12_Vector_baseI3LocILi1EESaIS1_EEC2EmRKS2_.exit.i.i.thread.i: ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr null, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.n, align 8
  store ptr %i.v, ptr %i.w, align 8, !tbaa !235, !alias.scope !221
  br label %_ZNSt6vectorI3LocILi1EESaIS1_EEC2ERKS3_.exit.i.i

bb.b:                                             ; preds = %bb.a
  %i.x = icmp ugt i64 %i.u, 9223372036854775804
  br i1 %i.x, label %bb.c, label %.lr.ph.i.i.i.i.i.i.preheader.i, !prof !44

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #46, !noalias !221
  unreachable

.lr.ph.i.i.i.i.i.i.preheader.i:                   ; preds = %bb.b
  %i.y = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #45, !noalias !221 ; 6 uses
  store ptr %i.y, ptr %i.n, align 8, !tbaa !234, !alias.scope !221
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.u
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !235, !alias.scope !221
  %4 = sub i64 %i.s, %i.t
  %5 = add i64 %4, -4                             ; 2 uses
  %i.ab = lshr i64 %5, 2
  %i.ac = add nuw nsw i64 %i.ab, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %5, 28
  %i.ad = ptrtoaddr ptr %i.y to i64
  %i.ae = sub i64 %i.ad, %i.t
  %diff.check = icmp ult i64 %i.ae, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader.i
  %n.vec = and i64 %i.ac, 9223372036854775800     ; 3 uses
  %i.af = shl i64 %n.vec, 2                       ; 2 uses
  %i.ag = getelementptr i8, ptr %i.y, i64 %i.af   ; 2 uses
  %i.ah = getelementptr i8, ptr %i.r, i64 %i.af
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ai = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.y, i64 %i.ai ; 2 uses
  %next.gep12 = getelementptr i8, ptr %i.r, i64 %i.ai ; 2 uses
  %i.aj = getelementptr i8, ptr %next.gep12, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep12, align 4, !tbaa !236, !noalias !221
  %wide.load13 = load <4 x i32>, ptr %i.aj, align 4, !tbaa !236, !noalias !221
  %i.ak = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !4, !noalias !221
  store <4 x i32> %wide.load13, ptr %i.ak, align 4, !tbaa !4, !noalias !221
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !238

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ac, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorI3LocILi1EESaIS1_EEC2ERKS3_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.lr.ph.i.i.i.i.i.i.preheader.i, %middle.block
  %.09.i.i.i.i.i.i.i.ph = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i.i.preheader.i ], [ %i.ag, %middle.block ]
  %.sroa.04.08.i.i.i.i.i.i.i.ph = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i.i.preheader.i ], [ %i.ah, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i
  %.09.i.i.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i.i.i ], [ %.09.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.04.08.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.am = load i32, ptr %.sroa.04.08.i.i.i.i.i.i.i, align 4, !tbaa !236, !noalias !221
  store i32 %i.am, ptr %.09.i.i.i.i.i.i.i, align 4, !tbaa !4, !noalias !221
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.an, %i.q
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorI3LocILi1EESaIS1_EEC2ERKS3_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !241

_ZNSt6vectorI3LocILi1EESaIS1_EEC2ERKS3_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %_ZNSt12_Vector_baseI3LocILi1EESaIS1_EEC2EmRKS2_.exit.i.i.thread.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseI3LocILi1EESaIS1_EEC2EmRKS2_.exit.i.i.thread.i ], [ %i.ag, %middle.block ], [ %i.ao, %.lr.ph.i.i.i.i.i.i.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.0.lcssa.i.i.i.i.i.i.i, ptr %i.ap, align 8, !tbaa !231, !alias.scope !221
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.as = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !242, !noalias !221 ; 3 uses
  %i.au = load ptr, ptr %i.ar, align 8, !tbaa !245, !noalias !221 ; 5 uses
  %i.av = ptrtoint ptr %i.at to i64               ; 2 uses
  %i.aw = ptrtoint ptr %i.au to i64               ; 3 uses
  %i.ax = sub i64 %i.av, %i.aw                    ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i8 0, i64 24, i1 false), !alias.scope !221
  %.not.i.i.i.i4.i.i = icmp eq ptr %i.at, %i.au
  br i1 %.not.i.i.i.i4.i.i, label %_ZNSt12_Vector_baseI6VectorILi1Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i.thread.i, label %bb.d

_ZNSt12_Vector_baseI6VectorILi1Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i.thread.i: ; preds = %_ZNSt6vectorI3LocILi1EESaIS1_EEC2ERKS3_.exit.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr null, i64 %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.aq, align 8
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !246, !alias.scope !221
  br label %_ZNK18CanonicalCenteringILi1EEclE13CenteringType14ContinuityTypei.exit

bb.d:                                             ; preds = %_ZNSt6vectorI3LocILi1EESaIS1_EEC2ERKS3_.exit.i.i
  %i.ba = icmp ugt i64 %i.ax, 9223372036854775800
  br i1 %i.ba, label %bb.e, label %.lr.ph.i.i.i.i.i6.i.preheader.i, !prof !44

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #46, !noalias !221
  unreachable

.lr.ph.i.i.i.i.i6.i.preheader.i:                  ; preds = %bb.d
  %i.bb = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ax) #45, !noalias !221 ; 6 uses
  store ptr %i.bb, ptr %i.aq, align 8, !tbaa !245, !alias.scope !221
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.ax
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !246, !alias.scope !221
  %6 = sub i64 %i.av, %i.aw
  %7 = add i64 %6, -8                             ; 2 uses
  %i.be = lshr i64 %7, 3
  %i.bf = add nuw nsw i64 %i.be, 1                ; 2 uses
  %min.iters.check18 = icmp ult i64 %7, 56
  %i.bg = ptrtoaddr ptr %i.bb to i64
  %i.bh = sub i64 %i.bg, %i.aw
  %diff.check16 = icmp ult i64 %i.bh, 32
  %or.cond35 = or i1 %min.iters.check18, %diff.check16
  br i1 %or.cond35, label %.lr.ph.i.i.i.i.i6.i.i.preheader, label %vector.ph19

vector.ph19:                                      ; preds = %.lr.ph.i.i.i.i.i6.i.preheader.i
  %n.vec21 = and i64 %i.bf, 4611686018427387900   ; 3 uses
  %i.bi = shl i64 %n.vec21, 3                     ; 2 uses
  %i.bj = getelementptr i8, ptr %i.bb, i64 %i.bi  ; 2 uses
  %i.bk = getelementptr i8, ptr %i.au, i64 %i.bi
  br label %vector.body22

vector.body22:                                    ; preds = %vector.body22, %vector.ph19
  %index23 = phi i64 [ 0, %vector.ph19 ], [ %index.next28, %vector.body22 ] ; 2 uses
  %i.bl = shl i64 %index23, 3                     ; 2 uses
  %next.gep24 = getelementptr i8, ptr %i.bb, i64 %i.bl ; 2 uses
  %next.gep25 = getelementptr i8, ptr %i.au, i64 %i.bl ; 2 uses
  %i.bm = getelementptr i8, ptr %next.gep25, i64 16
  %wide.load26 = load <2 x double>, ptr %next.gep25, align 8, !tbaa !247, !noalias !221
  %wide.load27 = load <2 x double>, ptr %i.bm, align 8, !tbaa !247, !noalias !221
  %i.bn = getelementptr i8, ptr %next.gep24, i64 16
  store <2 x double> %wide.load26, ptr %next.gep24, align 8, !tbaa !247, !noalias !221
  store <2 x double> %wide.load27, ptr %i.bn, align 8, !tbaa !247, !noalias !221
  %index.next28 = add nuw i64 %index23, 4         ; 2 uses
  %i.bo = icmp eq i64 %index.next28, %n.vec21
  br i1 %i.bo, label %middle.block29, label %vector.body22, !llvm.loop !249

middle.block29:                                   ; preds = %vector.body22
  %cmp.n30 = icmp eq i64 %i.bf, %n.vec21
  br i1 %cmp.n30, label %_ZNK18CanonicalCenteringILi1EEclE13CenteringType14ContinuityTypei.exit, label %.lr.ph.i.i.i.i.i6.i.i.preheader

.lr.ph.i.i.i.i.i6.i.i.preheader:                  ; preds = %.lr.ph.i.i.i.i.i6.i.preheader.i, %middle.block29
  %.09.i.i.i.i.i7.i.i.ph = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i6.i.preheader.i ], [ %i.bj, %middle.block29 ]
  %.sroa.04.08.i.i.i.i.i8.i.i.ph = phi ptr [ %i.au, %.lr.ph.i.i.i.i.i6.i.preheader.i ], [ %i.bk, %middle.block29 ]
  br label %.lr.ph.i.i.i.i.i6.i.i

.lr.ph.i.i.i.i.i6.i.i:                            ; preds = %.lr.ph.i.i.i.i.i6.i.i.preheader, %.lr.ph.i.i.i.i.i6.i.i
  %.09.i.i.i.i.i7.i.i = phi ptr [ %i.br, %.lr.ph.i.i.i.i.i6.i.i ], [ %.09.i.i.i.i.i7.i.i.ph, %.lr.ph.i.i.i.i.i6.i.i.preheader ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i8.i.i = phi ptr [ %i.bq, %.lr.ph.i.i.i.i.i6.i.i ], [ %.sroa.04.08.i.i.i.i.i8.i.i.ph, %.lr.ph.i.i.i.i.i6.i.i.preheader ] ; 2 uses
  %i.bp = load double, ptr %.sroa.04.08.i.i.i.i.i8.i.i, align 8, !tbaa !247, !noalias !221
  store double %i.bp, ptr %.09.i.i.i.i.i7.i.i, align 8, !tbaa !247, !noalias !221
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i8.i.i, i64 8 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i7.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i9.i.i = icmp eq ptr %i.bq, %i.at
  br i1 %.not.i.i.i.i.i9.i.i, label %_ZNK18CanonicalCenteringILi1EEclE13CenteringType14ContinuityTypei.exit, label %.lr.ph.i.i.i.i.i6.i.i, !llvm.loop !250

_ZNK18CanonicalCenteringILi1EEclE13CenteringType14ContinuityTypei.exit: ; preds = %.lr.ph.i.i.i.i.i6.i.i, %middle.block29, %_ZNSt12_Vector_baseI6VectorILi1Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i.thread.i
  %.0.lcssa.i.i.i.i.i10.i.i = phi ptr [ null, %_ZNSt12_Vector_baseI6VectorILi1Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i.thread.i ], [ %i.bj, %middle.block29 ], [ %i.br, %.lr.ph.i.i.i.i.i6.i.i ]
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.0.lcssa.i.i.i.i.i10.i.i, ptr %i.bs, align 8, !tbaa !242, !alias.scope !221
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr dso_local void @_ZNK18CanonicalCenteringILi1EEclE13CenteringType14ContinuityTypei(ptr dead_on_unwind noalias writable sret(%class.Centering) align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = icmp eq i32 %4, 0
  %i.b = srem i32 %4, 2
  %i.c = select i1 %i.a, i32 1, i32 %i.b
  %i.d = load ptr, ptr @_ZN18CanonicalCenteringILi1EE17centering_table_mE, align 8, !tbaa !224
  %i.e = zext i32 %2 to i64
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.e
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !227
  %i.h = zext i32 %3 to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !229
  %i.k = sext i32 %i.c to i64
  %i.l = getelementptr inbounds [56 x i8], ptr %i.j, i64 %i.k ; 5 uses
  %i.m = load i64, ptr %i.l, align 8
  store i64 %i.m, ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !231  ; 3 uses
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !234  ; 5 uses
  %i.s = ptrtoint ptr %i.q to i64                 ; 2 uses
  %i.t = ptrtoint ptr %i.r to i64                 ; 3 uses
  %i.u = sub i64 %i.s, %i.t                       ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.q, %i.r
  br i1 %.not.i.i.i.i.i, label %_ZNSt12_Vector_baseI3LocILi1EESaIS1_EEC2EmRKS2_.exit.i.i.thread, label %bb.b

_ZNSt12_Vector_baseI3LocILi1EESaIS1_EEC2EmRKS2_.exit.i.i.thread: ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr null, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  store ptr %i.v, ptr %i.w, align 8, !tbaa !235
  br label %_ZNSt6vectorI3LocILi1EESaIS1_EEC2ERKS3_.exit.i

bb.b:                                             ; preds = %bb.a
  %i.x = icmp ugt i64 %i.u, 9223372036854775804
  br i1 %i.x, label %bb.c, label %.lr.ph.i.i.i.i.i.i.preheader, !prof !44

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #46
  unreachable

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.b
  %i.y = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #45 ; 6 uses
  store ptr %i.y, ptr %i.n, align 8, !tbaa !234
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.u
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !235
  %5 = sub i64 %i.s, %i.t
  %6 = add i64 %5, -4                             ; 2 uses
  %i.ab = lshr i64 %6, 2
  %i.ac = add nuw nsw i64 %i.ab, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %6, 28
  %i.ad = ptrtoaddr ptr %i.y to i64
  %i.ae = sub i64 %i.ad, %i.t
  %diff.check = icmp ult i64 %i.ae, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.preheader39, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ac, 9223372036854775800     ; 3 uses
  %i.af = shl i64 %n.vec, 2                       ; 2 uses
  %i.ag = getelementptr i8, ptr %i.y, i64 %i.af   ; 2 uses
  %i.ah = getelementptr i8, ptr %i.r, i64 %i.af
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ai = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.y, i64 %i.ai ; 2 uses
  %next.gep14 = getelementptr i8, ptr %i.r, i64 %i.ai ; 2 uses
  %i.aj = getelementptr i8, ptr %next.gep14, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep14, align 4, !tbaa !236
  %wide.load15 = load <4 x i32>, ptr %i.aj, align 4, !tbaa !236
  %i.ak = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !4
  store <4 x i32> %wide.load15, ptr %i.ak, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !251

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ac, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorI3LocILi1EESaIS1_EEC2ERKS3_.exit.i, label %.lr.ph.i.i.i.i.i.i.preheader39

.lr.ph.i.i.i.i.i.i.preheader39:                   ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.09.i.i.i.i.i.i.ph = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ag, %middle.block ]
  %.sroa.04.08.i.i.i.i.i.i.ph = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ah, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader39, %.lr.ph.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i.i ], [ %.09.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader39 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.04.08.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader39 ] ; 2 uses
  %i.am = load i32, ptr %.sroa.04.08.i.i.i.i.i.i, align 4, !tbaa !236
  store i32 %i.am, ptr %.09.i.i.i.i.i.i, align 4, !tbaa !4
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.an, %i.q
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorI3LocILi1EESaIS1_EEC2ERKS3_.exit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !252

_ZNSt6vectorI3LocILi1EESaIS1_EEC2ERKS3_.exit.i:   ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %_ZNSt12_Vector_baseI3LocILi1EESaIS1_EEC2EmRKS2_.exit.i.i.thread
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseI3LocILi1EESaIS1_EEC2EmRKS2_.exit.i.i.thread ], [ %i.ag, %middle.block ], [ %i.ao, %.lr.ph.i.i.i.i.i.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.ap, align 8, !tbaa !231
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.as = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !242 ; 3 uses
  %i.au = load ptr, ptr %i.ar, align 8, !tbaa !245 ; 5 uses
  %i.av = ptrtoint ptr %i.at to i64               ; 2 uses
  %i.aw = ptrtoint ptr %i.au to i64               ; 3 uses
  %i.ax = sub i64 %i.av, %i.aw                    ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i8 0, i64 24, i1 false)
  %.not.i.i.i.i4.i = icmp eq ptr %i.at, %i.au
  br i1 %.not.i.i.i.i4.i, label %_ZNSt12_Vector_baseI6VectorILi1Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i.thread, label %bb.d

_ZNSt12_Vector_baseI6VectorILi1Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i.thread: ; preds = %_ZNSt6vectorI3LocILi1EESaIS1_EEC2ERKS3_.exit.i
  %i.ay = getelementptr inbounds nuw i8, ptr null, i64 %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, i8 0, i64 16, i1 false)
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !246
  br label %_ZN9CenteringILi1EEC2ERKS0_.exit

bb.d:                                             ; preds = %_ZNSt6vectorI3LocILi1EESaIS1_EEC2ERKS3_.exit.i
  %i.ba = icmp ugt i64 %i.ax, 9223372036854775800
  br i1 %i.ba, label %bb.e, label %.lr.ph.i.i.i.i.i6.i.preheader, !prof !44

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #46
  unreachable

.lr.ph.i.i.i.i.i6.i.preheader:                    ; preds = %bb.d
  %i.bb = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ax) #45 ; 6 uses
  store ptr %i.bb, ptr %i.aq, align 8, !tbaa !245
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.ax
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !246
  %7 = sub i64 %i.av, %i.aw
  %8 = add i64 %7, -8                             ; 2 uses
  %i.be = lshr i64 %8, 3
  %i.bf = add nuw nsw i64 %i.be, 1                ; 2 uses
  %min.iters.check20 = icmp ult i64 %8, 56
  %i.bg = ptrtoaddr ptr %i.bb to i64
  %i.bh = sub i64 %i.bg, %i.aw
  %diff.check18 = icmp ult i64 %i.bh, 32
  %or.cond37 = or i1 %min.iters.check20, %diff.check18
  br i1 %or.cond37, label %.lr.ph.i.i.i.i.i6.i.preheader38, label %vector.ph21

vector.ph21:                                      ; preds = %.lr.ph.i.i.i.i.i6.i.preheader
  %n.vec23 = and i64 %i.bf, 4611686018427387900   ; 3 uses
  %i.bi = shl i64 %n.vec23, 3                     ; 2 uses
  %i.bj = getelementptr i8, ptr %i.bb, i64 %i.bi  ; 2 uses
  %i.bk = getelementptr i8, ptr %i.au, i64 %i.bi
  br label %vector.body24

vector.body24:                                    ; preds = %vector.body24, %vector.ph21
  %index25 = phi i64 [ 0, %vector.ph21 ], [ %index.next30, %vector.body24 ] ; 2 uses
  %i.bl = shl i64 %index25, 3                     ; 2 uses
  %next.gep26 = getelementptr i8, ptr %i.bb, i64 %i.bl ; 2 uses
  %next.gep27 = getelementptr i8, ptr %i.au, i64 %i.bl ; 2 uses
  %i.bm = getelementptr i8, ptr %next.gep27, i64 16
  %wide.load28 = load <2 x double>, ptr %next.gep27, align 8, !tbaa !247
  %wide.load29 = load <2 x double>, ptr %i.bm, align 8, !tbaa !247
  %i.bn = getelementptr i8, ptr %next.gep26, i64 16
  store <2 x double> %wide.load28, ptr %next.gep26, align 8, !tbaa !247
  store <2 x double> %wide.load29, ptr %i.bn, align 8, !tbaa !247
  %index.next30 = add nuw i64 %index25, 4         ; 2 uses
  %i.bo = icmp eq i64 %index.next30, %n.vec23
  br i1 %i.bo, label %middle.block31, label %vector.body24, !llvm.loop !253

middle.block31:                                   ; preds = %vector.body24
  %cmp.n32 = icmp eq i64 %i.bf, %n.vec23
  br i1 %cmp.n32, label %_ZN9CenteringILi1EEC2ERKS0_.exit, label %.lr.ph.i.i.i.i.i6.i.preheader38

.lr.ph.i.i.i.i.i6.i.preheader38:                  ; preds = %.lr.ph.i.i.i.i.i6.i.preheader, %middle.block31
  %.09.i.i.i.i.i7.i.ph = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i6.i.preheader ], [ %i.bj, %middle.block31 ]
  %.sroa.04.08.i.i.i.i.i8.i.ph = phi ptr [ %i.au, %.lr.ph.i.i.i.i.i6.i.preheader ], [ %i.bk, %middle.block31 ]
  br label %.lr.ph.i.i.i.i.i6.i

.lr.ph.i.i.i.i.i6.i:                              ; preds = %.lr.ph.i.i.i.i.i6.i.preheader38, %.lr.ph.i.i.i.i.i6.i
  %.09.i.i.i.i.i7.i = phi ptr [ %i.br, %.lr.ph.i.i.i.i.i6.i ], [ %.09.i.i.i.i.i7.i.ph, %.lr.ph.i.i.i.i.i6.i.preheader38 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i8.i = phi ptr [ %i.bq, %.lr.ph.i.i.i.i.i6.i ], [ %.sroa.04.08.i.i.i.i.i8.i.ph, %.lr.ph.i.i.i.i.i6.i.preheader38 ] ; 2 uses
  %i.bp = load double, ptr %.sroa.04.08.i.i.i.i.i8.i, align 8, !tbaa !247
  store double %i.bp, ptr %.09.i.i.i.i.i7.i, align 8, !tbaa !247
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i8.i, i64 8 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i7.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i9.i = icmp eq ptr %i.bq, %i.at
  br i1 %.not.i.i.i.i.i9.i, label %_ZN9CenteringILi1EEC2ERKS0_.exit, label %.lr.ph.i.i.i.i.i6.i, !llvm.loop !254

_ZN9CenteringILi1EEC2ERKS0_.exit:                 ; preds = %.lr.ph.i.i.i.i.i6.i, %middle.block31, %_ZNSt12_Vector_baseI6VectorILi1Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i.thread
  %.0.lcssa.i.i.i.i.i10.i = phi ptr [ null, %_ZNSt12_Vector_baseI6VectorILi1Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i.thread ], [ %i.bj, %middle.block31 ], [ %i.br, %.lr.ph.i.i.i.i.i6.i ]
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.0.lcssa.i.i.i.i.i10.i, ptr %i.bs, align 8, !tbaa !242
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_Z18canonicalCenteringILi2EEK9CenteringIXT_EE13CenteringType14ContinuityTypei(ptr dead_on_unwind noalias nofree writable writeonly sret(%class.Centering.67) align 8 captures(none) initializes((0, 32)) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !255)
  %i.a = icmp eq i32 %3, 0
  %i.b = srem i32 %3, 4
  %i.c = select i1 %i.a, i32 3, i32 %i.b
  %i.d = load ptr, ptr @_ZN18CanonicalCenteringILi2EE17centering_table_mE, align 8, !tbaa !258, !noalias !255
  %i.e = zext i32 %1 to i64
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.e
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !260, !noalias !255
  %i.h = zext i32 %2 to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !262, !noalias !255
  %i.k = sext i32 %i.c to i64
  %i.l = getelementptr inbounds [56 x i8], ptr %i.j, i64 %i.k ; 5 uses
  %i.m = load i64, ptr %i.l, align 8, !noalias !255
  store i64 %i.m, ptr %0, align 8, !alias.scope !255
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !264, !noalias !255 ; 3 uses
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !267, !noalias !255 ; 9 uses
  %i.s = ptrtoint ptr %i.q to i64                 ; 3 uses
  %i.t = ptrtoint ptr %i.r to i64                 ; 3 uses
  %i.u = sub i64 %i.s, %i.t                       ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i8 0, i64 24, i1 false), !alias.scope !255
  %.not.i.i.i.i.i.i = icmp eq ptr %i.q, %i.r
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt12_Vector_baseI3LocILi2EESaIS1_EEC2EmRKS2_.exit.i.i.thread.i, label %bb.b

_ZNSt12_Vector_baseI3LocILi2EESaIS1_EEC2EmRKS2_.exit.i.i.thread.i: ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr null, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.n, align 8
  store ptr %i.v, ptr %i.w, align 8, !tbaa !268, !alias.scope !255
  br label %_ZNSt6vectorI3LocILi2EESaIS1_EEC2ERKS3_.exit.i.i

bb.b:                                             ; preds = %bb.a
  %i.x = icmp ugt i64 %i.u, 9223372036854775800
  br i1 %i.x, label %bb.c, label %.lr.ph.i.i.i.i.i.i.preheader.i, !prof !44

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #46, !noalias !255
  unreachable

.lr.ph.i.i.i.i.i.i.preheader.i:                   ; preds = %bb.b
  %i.y = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #45, !noalias !255 ; 9 uses
  store ptr %i.y, ptr %i.n, align 8, !tbaa !267, !alias.scope !255
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.u
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !268, !alias.scope !255
  %4 = sub i64 %i.s, %i.t
  %5 = add i64 %4, -8                             ; 2 uses
  %i.ab = lshr i64 %5, 3
  %i.ac = add nuw nsw i64 %i.ab, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %5, 120
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader.i
  %i.ad = add i64 %i.s, -8
  %i.ae = sub i64 %i.ad, %i.t
  %i.af = and i64 %i.ae, -8
  %i.ag = add i64 %i.af, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.y, i64 %i.ag
  %scevgep12 = getelementptr i8, ptr %i.r, i64 %i.ag
  %bound0 = icmp ult ptr %i.y, %scevgep12
  %bound1 = icmp ult ptr %i.r, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ac, 4611686018427387900     ; 3 uses
  %i.ah = shl i64 %n.vec, 3                       ; 2 uses
  %i.ai = getelementptr i8, ptr %i.y, i64 %i.ah   ; 2 uses
  %i.aj = getelementptr i8, ptr %i.r, i64 %i.ah
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ak = shl i64 %index, 3                       ; 3 uses
  %i.al = or disjoint i64 %i.ak, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %i.y, i64 %i.ak
  %next.gep13 = getelementptr i8, ptr %i.y, i64 %i.al
  %next.gep14 = getelementptr i8, ptr %i.r, i64 %i.ak
  %next.gep15 = getelementptr i8, ptr %i.r, i64 %i.al
  %wide.vec = load <4 x i32>, ptr %next.gep14, align 4, !tbaa !236, !alias.scope !269, !noalias !255
  %wide.vec17 = load <4 x i32>, ptr %next.gep15, align 4, !tbaa !236, !alias.scope !269, !noalias !255
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !4, !alias.scope !272, !noalias !255
  store <4 x i32> %wide.vec17, ptr %next.gep13, align 4, !tbaa !4, !alias.scope !272, !noalias !255
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !274

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ac, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorI3LocILi2EESaIS1_EEC2ERKS3_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.preheader.i, %middle.block
  %.09.i.i.i.i.i.i.i.ph = phi ptr [ %i.y, %vector.memcheck ], [ %i.y, %.lr.ph.i.i.i.i.i.i.preheader.i ], [ %i.ai, %middle.block ]
  %.sroa.04.08.i.i.i.i.i.i.i.ph = phi ptr [ %i.r, %vector.memcheck ], [ %i.r, %.lr.ph.i.i.i.i.i.i.preheader.i ], [ %i.aj, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i
  %.09.i.i.i.i.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i.i.i.i.i ], [ %.09.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %.sroa.04.08.i.i.i.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.04.08.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %i.an = load i32, ptr %.sroa.04.08.i.i.i.i.i.i.i, align 4, !tbaa !236, !noalias !255
  store i32 %i.an, ptr %.09.i.i.i.i.i.i.i, align 4, !tbaa !4, !noalias !255
  %i.ao = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 4
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i, i64 4
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !236, !noalias !255
  store i32 %i.aq, ptr %i.ao, align 4, !tbaa !4, !noalias !255
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ar, %i.q
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorI3LocILi2EESaIS1_EEC2ERKS3_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !275

_ZNSt6vectorI3LocILi2EESaIS1_EEC2ERKS3_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %_ZNSt12_Vector_baseI3LocILi2EESaIS1_EEC2EmRKS2_.exit.i.i.thread.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseI3LocILi2EESaIS1_EEC2EmRKS2_.exit.i.i.thread.i ], [ %i.ai, %middle.block ], [ %i.as, %.lr.ph.i.i.i.i.i.i.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.0.lcssa.i.i.i.i.i.i.i, ptr %i.at, align 8, !tbaa !264, !alias.scope !255
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.aw = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !276, !noalias !255 ; 3 uses
  %i.ay = load ptr, ptr %i.av, align 8, !tbaa !279, !noalias !255 ; 9 uses
  %i.az = ptrtoint ptr %i.ax to i64               ; 3 uses
  %i.ba = ptrtoint ptr %i.ay to i64               ; 3 uses
  %i.bb = sub i64 %i.az, %i.ba                    ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, i8 0, i64 24, i1 false), !alias.scope !255
  %.not.i.i.i.i4.i.i = icmp eq ptr %i.ax, %i.ay
  br i1 %.not.i.i.i.i4.i.i, label %_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i.thread.i, label %bb.d

_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i.thread.i: ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EEC2ERKS3_.exit.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr null, i64 %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.au, align 8
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !280, !alias.scope !255
  br label %_ZNK18CanonicalCenteringILi2EEclE13CenteringType14ContinuityTypei.exit

bb.d:                                             ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EEC2ERKS3_.exit.i.i
  %i.be = icmp ugt i64 %i.bb, 9223372036854775792
  br i1 %i.be, label %bb.e, label %.lr.ph.i.i.i.i.i6.i.preheader.i, !prof !44

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #46, !noalias !255
  unreachable

.lr.ph.i.i.i.i.i6.i.preheader.i:                  ; preds = %bb.d
  %i.bf = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bb) #45, !noalias !255 ; 9 uses
  store ptr %i.bf, ptr %i.au, align 8, !tbaa !279, !alias.scope !255
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bb
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !280, !alias.scope !255
  %6 = sub i64 %i.az, %i.ba
  %7 = add i64 %6, -16                            ; 2 uses
  %i.bi = lshr i64 %7, 4
  %i.bj = add nuw nsw i64 %i.bi, 1                ; 2 uses
  %min.iters.check29 = icmp ult i64 %7, 240
  br i1 %min.iters.check29, label %.lr.ph.i.i.i.i.i6.i.i.preheader, label %vector.memcheck22

vector.memcheck22:                                ; preds = %.lr.ph.i.i.i.i.i6.i.preheader.i
  %i.bk = add i64 %i.az, -16
  %i.bl = sub i64 %i.bk, %i.ba
  %i.bm = and i64 %i.bl, -16
  %i.bn = add i64 %i.bm, 16                       ; 2 uses
  %scevgep23 = getelementptr i8, ptr %i.bf, i64 %i.bn
  %scevgep24 = getelementptr i8, ptr %i.ay, i64 %i.bn
  %bound025 = icmp ult ptr %i.bf, %scevgep24
  %bound126 = icmp ult ptr %i.ay, %scevgep23
  %found.conflict27 = and i1 %bound025, %bound126
  br i1 %found.conflict27, label %.lr.ph.i.i.i.i.i6.i.i.preheader, label %vector.ph30

vector.ph30:                                      ; preds = %vector.memcheck22
  %n.vec32 = and i64 %i.bj, 2305843009213693950   ; 3 uses
  %i.bo = shl i64 %n.vec32, 4                     ; 2 uses
  %i.bp = getelementptr i8, ptr %i.bf, i64 %i.bo  ; 2 uses
  %i.bq = getelementptr i8, ptr %i.ay, i64 %i.bo
  br label %vector.body33

vector.body33:                                    ; preds = %vector.body33, %vector.ph30
  %index34 = phi i64 [ 0, %vector.ph30 ], [ %index.next40, %vector.body33 ] ; 2 uses
  %i.br = shl i64 %index34, 4                     ; 3 uses
  %i.bs = or disjoint i64 %i.br, 16               ; 2 uses
  %next.gep35 = getelementptr i8, ptr %i.bf, i64 %i.br
  %next.gep36 = getelementptr i8, ptr %i.bf, i64 %i.bs
  %next.gep37 = getelementptr i8, ptr %i.ay, i64 %i.br
  %next.gep38 = getelementptr i8, ptr %i.ay, i64 %i.bs
  %wide.load = load <2 x double>, ptr %next.gep37, align 8, !tbaa !247, !alias.scope !281, !noalias !255
  %wide.load39 = load <2 x double>, ptr %next.gep38, align 8, !tbaa !247, !alias.scope !281, !noalias !255
  store <2 x double> %wide.load, ptr %next.gep35, align 8, !tbaa !247, !alias.scope !284, !noalias !286
  store <2 x double> %wide.load39, ptr %next.gep36, align 8, !tbaa !247, !alias.scope !284, !noalias !286
  %index.next40 = add nuw i64 %index34, 2         ; 2 uses
  %i.bt = icmp eq i64 %index.next40, %n.vec32
  br i1 %i.bt, label %middle.block41, label %vector.body33, !llvm.loop !287

middle.block41:                                   ; preds = %vector.body33
  %cmp.n42 = icmp eq i64 %i.bj, %n.vec32
  br i1 %cmp.n42, label %_ZNK18CanonicalCenteringILi2EEclE13CenteringType14ContinuityTypei.exit, label %.lr.ph.i.i.i.i.i6.i.i.preheader

.lr.ph.i.i.i.i.i6.i.i.preheader:                  ; preds = %vector.memcheck22, %.lr.ph.i.i.i.i.i6.i.preheader.i, %middle.block41
  %.09.i.i.i.i.i7.i.i.ph = phi ptr [ %i.bf, %vector.memcheck22 ], [ %i.bf, %.lr.ph.i.i.i.i.i6.i.preheader.i ], [ %i.bp, %middle.block41 ]
  %.sroa.04.08.i.i.i.i.i8.i.i.ph = phi ptr [ %i.ay, %vector.memcheck22 ], [ %i.ay, %.lr.ph.i.i.i.i.i6.i.preheader.i ], [ %i.bq, %middle.block41 ]
  br label %.lr.ph.i.i.i.i.i6.i.i

.lr.ph.i.i.i.i.i6.i.i:                            ; preds = %.lr.ph.i.i.i.i.i6.i.i.preheader, %.lr.ph.i.i.i.i.i6.i.i
  %.09.i.i.i.i.i7.i.i = phi ptr [ %i.bz, %.lr.ph.i.i.i.i.i6.i.i ], [ %.09.i.i.i.i.i7.i.i.ph, %.lr.ph.i.i.i.i.i6.i.i.preheader ] ; 3 uses
  %.sroa.04.08.i.i.i.i.i8.i.i = phi ptr [ %i.by, %.lr.ph.i.i.i.i.i6.i.i ], [ %.sroa.04.08.i.i.i.i.i8.i.i.ph, %.lr.ph.i.i.i.i.i6.i.i.preheader ] ; 3 uses
  %i.bu = load double, ptr %.sroa.04.08.i.i.i.i.i8.i.i, align 8, !tbaa !247, !noalias !255
  store double %i.bu, ptr %.09.i.i.i.i.i7.i.i, align 8, !tbaa !247, !noalias !255
  %i.bv = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i7.i.i, i64 8
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i8.i.i, i64 8
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !247, !noalias !255
  store double %i.bx, ptr %i.bv, align 8, !tbaa !247, !noalias !255
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i8.i.i, i64 16 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i7.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i9.i.i = icmp eq ptr %i.by, %i.ax
  br i1 %.not.i.i.i.i.i9.i.i, label %_ZNK18CanonicalCenteringILi2EEclE13CenteringType14ContinuityTypei.exit, label %.lr.ph.i.i.i.i.i6.i.i, !llvm.loop !288

_ZNK18CanonicalCenteringILi2EEclE13CenteringType14ContinuityTypei.exit: ; preds = %.lr.ph.i.i.i.i.i6.i.i, %middle.block41, %_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i.thread.i
  %.0.lcssa.i.i.i.i.i10.i.i = phi ptr [ null, %_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i.thread.i ], [ %i.bp, %middle.block41 ], [ %i.bz, %.lr.ph.i.i.i.i.i6.i.i ]
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.0.lcssa.i.i.i.i.i10.i.i, ptr %i.ca, align 8, !tbaa !276, !alias.scope !255
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr dso_local void @_ZNK18CanonicalCenteringILi2EEclE13CenteringType14ContinuityTypei(ptr dead_on_unwind noalias writable sret(%class.Centering.67) align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = icmp eq i32 %4, 0
  %i.b = srem i32 %4, 4
  %i.c = select i1 %i.a, i32 3, i32 %i.b
  %i.d = load ptr, ptr @_ZN18CanonicalCenteringILi2EE17centering_table_mE, align 8, !tbaa !258
  %i.e = zext i32 %2 to i64
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.e
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !260
  %i.h = zext i32 %3 to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !262
  %i.k = sext i32 %i.c to i64
  %i.l = getelementptr inbounds [56 x i8], ptr %i.j, i64 %i.k ; 5 uses
  %i.m = load i64, ptr %i.l, align 8
  store i64 %i.m, ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !264  ; 3 uses
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !267  ; 9 uses
  %i.s = ptrtoint ptr %i.q to i64                 ; 3 uses
  %i.t = ptrtoint ptr %i.r to i64                 ; 3 uses
  %i.u = sub i64 %i.s, %i.t                       ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.q, %i.r
  br i1 %.not.i.i.i.i.i, label %_ZNSt12_Vector_baseI3LocILi2EESaIS1_EEC2EmRKS2_.exit.i.i.thread, label %bb.b

_ZNSt12_Vector_baseI3LocILi2EESaIS1_EEC2EmRKS2_.exit.i.i.thread: ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr null, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  store ptr %i.v, ptr %i.w, align 8, !tbaa !268
  br label %_ZNSt6vectorI3LocILi2EESaIS1_EEC2ERKS3_.exit.i

bb.b:                                             ; preds = %bb.a
  %i.x = icmp ugt i64 %i.u, 9223372036854775800
  br i1 %i.x, label %bb.c, label %.lr.ph.i.i.i.i.i.i.preheader, !prof !44

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #46
  unreachable

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.b
  %i.y = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #45 ; 9 uses
  store ptr %i.y, ptr %i.n, align 8, !tbaa !267
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.u
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !268
  %5 = sub i64 %i.s, %i.t
  %6 = add i64 %5, -8                             ; 2 uses
  %i.ab = lshr i64 %6, 3
  %i.ac = add nuw nsw i64 %i.ab, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %6, 120
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader48, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %i.ad = add i64 %i.s, -8
  %i.ae = sub i64 %i.ad, %i.t
  %i.af = and i64 %i.ae, -8
  %i.ag = add i64 %i.af, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.y, i64 %i.ag
  %scevgep14 = getelementptr i8, ptr %i.r, i64 %i.ag
  %bound0 = icmp ult ptr %i.y, %scevgep14
  %bound1 = icmp ult ptr %i.r, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.preheader48, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ac, 4611686018427387900     ; 3 uses
  %i.ah = shl i64 %n.vec, 3                       ; 2 uses
  %i.ai = getelementptr i8, ptr %i.y, i64 %i.ah   ; 2 uses
  %i.aj = getelementptr i8, ptr %i.r, i64 %i.ah
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ak = shl i64 %index, 3                       ; 3 uses
  %i.al = or disjoint i64 %i.ak, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %i.y, i64 %i.ak
  %next.gep15 = getelementptr i8, ptr %i.y, i64 %i.al
  %next.gep16 = getelementptr i8, ptr %i.r, i64 %i.ak
  %next.gep17 = getelementptr i8, ptr %i.r, i64 %i.al
  %wide.vec = load <4 x i32>, ptr %next.gep16, align 4, !tbaa !236, !alias.scope !289
  %wide.vec19 = load <4 x i32>, ptr %next.gep17, align 4, !tbaa !236, !alias.scope !289
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !4, !alias.scope !292, !noalias !289
  store <4 x i32> %wide.vec19, ptr %next.gep15, align 4, !tbaa !4, !alias.scope !292, !noalias !289
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !294

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ac, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorI3LocILi2EESaIS1_EEC2ERKS3_.exit.i, label %.lr.ph.i.i.i.i.i.i.preheader48

.lr.ph.i.i.i.i.i.i.preheader48:                   ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.09.i.i.i.i.i.i.ph = phi ptr [ %i.y, %vector.memcheck ], [ %i.y, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ai, %middle.block ]
  %.sroa.04.08.i.i.i.i.i.i.ph = phi ptr [ %i.r, %vector.memcheck ], [ %i.r, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.aj, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader48, %.lr.ph.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i.i.i.i ], [ %.09.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader48 ] ; 3 uses
  %.sroa.04.08.i.i.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.04.08.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader48 ] ; 3 uses
  %i.an = load i32, ptr %.sroa.04.08.i.i.i.i.i.i, align 4, !tbaa !236
  store i32 %i.an, ptr %.09.i.i.i.i.i.i, align 4, !tbaa !4
  %i.ao = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 4
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 4
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !236
  store i32 %i.aq, ptr %i.ao, align 4, !tbaa !4
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ar, %i.q
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorI3LocILi2EESaIS1_EEC2ERKS3_.exit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !295

_ZNSt6vectorI3LocILi2EESaIS1_EEC2ERKS3_.exit.i:   ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %_ZNSt12_Vector_baseI3LocILi2EESaIS1_EEC2EmRKS2_.exit.i.i.thread
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseI3LocILi2EESaIS1_EEC2EmRKS2_.exit.i.i.thread ], [ %i.ai, %middle.block ], [ %i.as, %.lr.ph.i.i.i.i.i.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.at, align 8, !tbaa !264
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.aw = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !276 ; 3 uses
  %i.ay = load ptr, ptr %i.av, align 8, !tbaa !279 ; 9 uses
  %i.az = ptrtoint ptr %i.ax to i64               ; 3 uses
  %i.ba = ptrtoint ptr %i.ay to i64               ; 3 uses
  %i.bb = sub i64 %i.az, %i.ba                    ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, i8 0, i64 24, i1 false)
  %.not.i.i.i.i4.i = icmp eq ptr %i.ax, %i.ay
  br i1 %.not.i.i.i.i4.i, label %_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i.thread, label %bb.d

_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i.thread: ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EEC2ERKS3_.exit.i
  %i.bc = getelementptr inbounds nuw i8, ptr null, i64 %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.au, i8 0, i64 16, i1 false)
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !280
  br label %_ZN9CenteringILi2EEC2ERKS0_.exit

bb.d:                                             ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EEC2ERKS3_.exit.i
  %i.be = icmp ugt i64 %i.bb, 9223372036854775792
  br i1 %i.be, label %bb.e, label %.lr.ph.i.i.i.i.i6.i.preheader, !prof !44

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #46
  unreachable

.lr.ph.i.i.i.i.i6.i.preheader:                    ; preds = %bb.d
  %i.bf = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bb) #45 ; 9 uses
  store ptr %i.bf, ptr %i.au, align 8, !tbaa !279
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bb
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !280
  %7 = sub i64 %i.az, %i.ba
  %8 = add i64 %7, -16                            ; 2 uses
  %i.bi = lshr i64 %8, 4
  %i.bj = add nuw nsw i64 %i.bi, 1                ; 2 uses
  %min.iters.check31 = icmp ult i64 %8, 240
  br i1 %min.iters.check31, label %.lr.ph.i.i.i.i.i6.i.preheader47, label %vector.memcheck24

vector.memcheck24:                                ; preds = %.lr.ph.i.i.i.i.i6.i.preheader
  %i.bk = add i64 %i.az, -16
  %i.bl = sub i64 %i.bk, %i.ba
  %i.bm = and i64 %i.bl, -16
  %i.bn = add i64 %i.bm, 16                       ; 2 uses
  %scevgep25 = getelementptr i8, ptr %i.bf, i64 %i.bn
  %scevgep26 = getelementptr i8, ptr %i.ay, i64 %i.bn
  %bound027 = icmp ult ptr %i.bf, %scevgep26
  %bound128 = icmp ult ptr %i.ay, %scevgep25
  %found.conflict29 = and i1 %bound027, %bound128
  br i1 %found.conflict29, label %.lr.ph.i.i.i.i.i6.i.preheader47, label %vector.ph32

vector.ph32:                                      ; preds = %vector.memcheck24
  %n.vec34 = and i64 %i.bj, 2305843009213693950   ; 3 uses
  %i.bo = shl i64 %n.vec34, 4                     ; 2 uses
  %i.bp = getelementptr i8, ptr %i.bf, i64 %i.bo  ; 2 uses
  %i.bq = getelementptr i8, ptr %i.ay, i64 %i.bo
  br label %vector.body35

vector.body35:                                    ; preds = %vector.body35, %vector.ph32
  %index36 = phi i64 [ 0, %vector.ph32 ], [ %index.next42, %vector.body35 ] ; 2 uses
  %i.br = shl i64 %index36, 4                     ; 3 uses
  %i.bs = or disjoint i64 %i.br, 16               ; 2 uses
  %next.gep37 = getelementptr i8, ptr %i.bf, i64 %i.br
  %next.gep38 = getelementptr i8, ptr %i.bf, i64 %i.bs
  %next.gep39 = getelementptr i8, ptr %i.ay, i64 %i.br
  %next.gep40 = getelementptr i8, ptr %i.ay, i64 %i.bs
  %wide.load = load <2 x double>, ptr %next.gep39, align 8, !tbaa !247, !alias.scope !296
  %wide.load41 = load <2 x double>, ptr %next.gep40, align 8, !tbaa !247, !alias.scope !296
  store <2 x double> %wide.load, ptr %next.gep37, align 8, !tbaa !247, !alias.scope !299, !noalias !296
  store <2 x double> %wide.load41, ptr %next.gep38, align 8, !tbaa !247, !alias.scope !299, !noalias !296
  %index.next42 = add nuw i64 %index36, 2         ; 2 uses
  %i.bt = icmp eq i64 %index.next42, %n.vec34
  br i1 %i.bt, label %middle.block43, label %vector.body35, !llvm.loop !301

middle.block43:                                   ; preds = %vector.body35
  %cmp.n44 = icmp eq i64 %i.bj, %n.vec34
  br i1 %cmp.n44, label %_ZN9CenteringILi2EEC2ERKS0_.exit, label %.lr.ph.i.i.i.i.i6.i.preheader47

.lr.ph.i.i.i.i.i6.i.preheader47:                  ; preds = %vector.memcheck24, %.lr.ph.i.i.i.i.i6.i.preheader, %middle.block43
  %.09.i.i.i.i.i7.i.ph = phi ptr [ %i.bf, %vector.memcheck24 ], [ %i.bf, %.lr.ph.i.i.i.i.i6.i.preheader ], [ %i.bp, %middle.block43 ]
  %.sroa.04.08.i.i.i.i.i8.i.ph = phi ptr [ %i.ay, %vector.memcheck24 ], [ %i.ay, %.lr.ph.i.i.i.i.i6.i.preheader ], [ %i.bq, %middle.block43 ]
  br label %.lr.ph.i.i.i.i.i6.i

.lr.ph.i.i.i.i.i6.i:                              ; preds = %.lr.ph.i.i.i.i.i6.i.preheader47, %.lr.ph.i.i.i.i.i6.i
  %.09.i.i.i.i.i7.i = phi ptr [ %i.bz, %.lr.ph.i.i.i.i.i6.i ], [ %.09.i.i.i.i.i7.i.ph, %.lr.ph.i.i.i.i.i6.i.preheader47 ] ; 3 uses
  %.sroa.04.08.i.i.i.i.i8.i = phi ptr [ %i.by, %.lr.ph.i.i.i.i.i6.i ], [ %.sroa.04.08.i.i.i.i.i8.i.ph, %.lr.ph.i.i.i.i.i6.i.preheader47 ] ; 3 uses
  %i.bu = load double, ptr %.sroa.04.08.i.i.i.i.i8.i, align 8, !tbaa !247
  store double %i.bu, ptr %.09.i.i.i.i.i7.i, align 8, !tbaa !247
  %i.bv = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i7.i, i64 8
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i8.i, i64 8
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !247
  store double %i.bx, ptr %i.bv, align 8, !tbaa !247
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i8.i, i64 16 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i7.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i9.i = icmp eq ptr %i.by, %i.ax
  br i1 %.not.i.i.i.i.i9.i, label %_ZN9CenteringILi2EEC2ERKS0_.exit, label %.lr.ph.i.i.i.i.i6.i, !llvm.loop !302

_ZN9CenteringILi2EEC2ERKS0_.exit:                 ; preds = %.lr.ph.i.i.i.i.i6.i, %middle.block43, %_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i.thread
  %.0.lcssa.i.i.i.i.i10.i = phi ptr [ null, %_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i.thread ], [ %i.bp, %middle.block43 ], [ %i.bz, %.lr.ph.i.i.i.i.i6.i ]
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.0.lcssa.i.i.i.i.i10.i, ptr %i.ca, align 8, !tbaa !276
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_Z18canonicalCenteringILi3EEK9CenteringIXT_EE13CenteringType14ContinuityTypei(ptr dead_on_unwind noalias nonnull writable sret(%class.Centering.78) align 8 %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq i32 %3, 0
  %i.b = srem i32 %3, 8
  %i.c = select i1 %i.a, i32 7, i32 %i.b
  %i.d = load ptr, ptr @_ZN18CanonicalCenteringILi3EE17centering_table_mE, align 8, !tbaa !303, !noalias !305
  %i.e = zext i32 %1 to i64
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.e
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !308, !noalias !305
  %i.h = zext i32 %2 to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !310, !noalias !305
  %i.k = sext i32 %i.c to i64
  %i.l = getelementptr inbounds [56 x i8], ptr %i.j, i64 %i.k
  tail call void @_ZN9CenteringILi3EEC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.l)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr dso_local void @_ZNK18CanonicalCenteringILi3EEclE13CenteringType14ContinuityTypei(ptr dead_on_unwind noalias writable sret(%class.Centering.78) align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = icmp eq i32 %4, 0
  %i.b = srem i32 %4, 8
  %i.c = select i1 %i.a, i32 7, i32 %i.b
  %i.d = load ptr, ptr @_ZN18CanonicalCenteringILi3EE17centering_table_mE, align 8, !tbaa !303
  %i.e = zext i32 %2 to i64
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.e
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !308
  %i.h = zext i32 %3 to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !310
  %i.k = sext i32 %i.c to i64
  %i.l = getelementptr inbounds [56 x i8], ptr %i.j, i64 %i.k
  tail call void @_ZN9CenteringILi3EEC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.l)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local void @_ZN18CanonicalCenteringILi1EEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #1 comdat($_ZN18CanonicalCenteringILi1EEC5Ev) align 2 {
bb.a:
  %1 = alloca %class.Centering, align 8           ; 18 uses
  %2 = alloca %class.Loc, align 4                 ; 15 uses
  %3 = alloca %class.Vector, align 8              ; 17 uses
  %4 = alloca [1 x [2 x %"class.std::vector.57"]], align 16 ; 18 uses
  %5 = alloca [1 x [2 x %"class.std::vector.62"]], align 16 ; 18 uses
  %6 = alloca %class.Centering, align 8           ; 9 uses
  %7 = alloca %class.Centering, align 8           ; 15 uses
  %8 = alloca %class.Centering, align 8           ; 15 uses
  %9 = alloca %class.Centering, align 8           ; 7 uses
  %10 = alloca %class.Centering, align 8          ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #47
  store i32 3, ptr %1, align 8, !tbaa !312
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, i8 0, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #47
  store i32 0, ptr %2, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #47
  store double 0.000000e+00, ptr %3, align 8, !tbaa !247
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #47
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %4, i8 0, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #47
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %5, i8 0, i64 48, i1 false)
  %i.c = load i32, ptr @_ZN18CanonicalCenteringILi1EE13class_count_mE, align 4, !tbaa !4 ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %.loopexit114.loopexit, label %.loopexit114

.loopexit114.loopexit:                            ; preds = %bb.a
  %i.e = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znam(i64 noundef 32) #45 ; 5 uses
  store ptr %i.e, ptr @_ZN18CanonicalCenteringILi1EE17centering_table_mE, align 8, !tbaa !224
  %i.f = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #45 ; 3 uses
  store ptr %i.f, ptr %i.e, align 8, !tbaa !227
  %i.g = tail call noalias noundef nonnull dereferenceable(120) ptr @_Znam(i64 noundef 120) #45 ; 5 uses
  store i64 2, ptr %i.g, align 16
  %.ptr51 = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store i32 3, ptr %.ptr51, align 8, !tbaa !312
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %.ptr51.1 = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.h, i8 0, i64 52, i1 false)
  store i32 3, ptr %.ptr51.1, align 16, !tbaa !312
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 68
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.i, i8 0, i64 52, i1 false)
  store ptr %.ptr51, ptr %i.f, align 8, !tbaa !229
  %i.j = tail call noalias noundef nonnull dereferenceable(120) ptr @_Znam(i64 noundef 120) #45 ; 5 uses
  store i64 2, ptr %i.j, align 16
  %.ptr51.1128 = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  store i32 3, ptr %.ptr51.1128, align 8, !tbaa !312
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %.ptr51.1.1 = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.k, i8 0, i64 52, i1 false)
  store i32 3, ptr %.ptr51.1.1, align 16, !tbaa !312
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 68
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.l, i8 0, i64 52, i1 false)
  store ptr %.ptr51.1128, ptr %i.m, align 8, !tbaa !229
  %i.n = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #45 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.n, ptr %i.o, align 8, !tbaa !227
  %i.p = tail call noalias noundef nonnull dereferenceable(120) ptr @_Znam(i64 noundef 120) #45 ; 5 uses
  store i64 2, ptr %i.p, align 16
  %.ptr51.1130 = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  store i32 3, ptr %.ptr51.1130, align 8, !tbaa !312
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  %.ptr51.1.1131 = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.q, i8 0, i64 52, i1 false)
  store i32 3, ptr %.ptr51.1.1131, align 16, !tbaa !312
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 68
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.r, i8 0, i64 52, i1 false)
  store ptr %.ptr51.1130, ptr %i.n, align 8, !tbaa !229
  %i.s = tail call noalias noundef nonnull dereferenceable(120) ptr @_Znam(i64 noundef 120) #45 ; 5 uses
  store i64 2, ptr %i.s, align 16
  %.ptr51.1128.1 = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  store i32 3, ptr %.ptr51.1128.1, align 8, !tbaa !312
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  %.ptr51.1.1.1 = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.t, i8 0, i64 52, i1 false)
  store i32 3, ptr %.ptr51.1.1.1, align 16, !tbaa !312
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 68
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.u, i8 0, i64 52, i1 false)
  store ptr %.ptr51.1128.1, ptr %i.v, align 8, !tbaa !229
  %i.w = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #45 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.w, ptr %i.x, align 8, !tbaa !227
  %i.y = tail call noalias noundef nonnull dereferenceable(120) ptr @_Znam(i64 noundef 120) #45 ; 5 uses
  store i64 2, ptr %i.y, align 16
  %.ptr51.2 = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  store i32 3, ptr %.ptr51.2, align 8, !tbaa !312
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  %.ptr51.1.2 = getelementptr inbounds nuw i8, ptr %i.y, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.z, i8 0, i64 52, i1 false)
  store i32 3, ptr %.ptr51.1.2, align 16, !tbaa !312
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 68
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.aa, i8 0, i64 52, i1 false)
  store ptr %.ptr51.2, ptr %i.w, align 8, !tbaa !229
  %i.ab = tail call noalias noundef nonnull dereferenceable(120) ptr @_Znam(i64 noundef 120) #45 ; 5 uses
  store i64 2, ptr %i.ab, align 16
  %.ptr51.1128.2 = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  store i32 3, ptr %.ptr51.1128.2, align 8, !tbaa !312
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  %.ptr51.1.1.2 = getelementptr inbounds nuw i8, ptr %i.ab, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.ac, i8 0, i64 52, i1 false)
  store i32 3, ptr %.ptr51.1.1.2, align 16, !tbaa !312
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 68
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.ad, i8 0, i64 52, i1 false)
  store ptr %.ptr51.1128.2, ptr %i.ae, align 8, !tbaa !229
  %i.af = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #45 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !227
  %i.ah = tail call noalias noundef nonnull dereferenceable(120) ptr @_Znam(i64 noundef 120) #45 ; 5 uses
  store i64 2, ptr %i.ah, align 16
  %.ptr51.3 = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 2 uses
  store i32 3, ptr %.ptr51.3, align 8, !tbaa !312
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  %.ptr51.1.3 = getelementptr inbounds nuw i8, ptr %i.ah, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.ai, i8 0, i64 52, i1 false)
  store i32 3, ptr %.ptr51.1.3, align 16, !tbaa !312
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 68
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.aj, i8 0, i64 52, i1 false)
  store ptr %.ptr51.3, ptr %i.af, align 8, !tbaa !229
  %i.ak = tail call noalias noundef nonnull dereferenceable(120) ptr @_Znam(i64 noundef 120) #45 ; 5 uses
  store i64 2, ptr %i.ak, align 16
  %.ptr51.1128.3 = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  store i32 3, ptr %.ptr51.1128.3, align 8, !tbaa !312
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 12
  %.ptr51.1.1.3 = getelementptr inbounds nuw i8, ptr %i.ak, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.al, i8 0, i64 52, i1 false)
  store i32 3, ptr %.ptr51.1.1.3, align 16, !tbaa !312
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 68
  %i.an = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.am, i8 0, i64 52, i1 false)
  store ptr %.ptr51.1128.3, ptr %i.an, align 8, !tbaa !229
  br label %.loopexit114

.loopexit114:                                     ; preds = %.loopexit114.loopexit, %bb.a
  %i.ao = add nsw i32 %i.c, 1
  store i32 %i.ao, ptr @_ZN18CanonicalCenteringILi1EE13class_count_mE, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #47
  store i32 3, ptr %6, align 8, !tbaa !312
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.ap, i8 0, i64 52, i1 false)
  %i.ar = load i64, ptr %6, align 8
  store i64 %i.ar, ptr %1, align 8
  %i.as = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI3LocILi1EESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.aq) ; 0 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 7 uses
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.av = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.at, ptr noundef nonnull align 8 dereferenceable(24) %i.au) ; 0 uses
  %i.aw = load ptr, ptr %i.au, align 8, !tbaa !245 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %.loopexit114
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !246
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = ptrtoint ptr %i.aw to i64
  %i.bb = sub i64 %i.az, %i.ba
  call void @_ZdlPvm(ptr noundef nonnull %i.aw, i64 noundef %i.bb) #48
  br label %_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EED2Ev.exit.i

_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EED2Ev.exit.i: ; preds = %bb.b, %.loopexit114
  %i.bc = load ptr, ptr %i.aq, align 8, !tbaa !234 ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i1.i, label %_ZN9CenteringILi1EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EED2Ev.exit.i
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !235
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = ptrtoint ptr %i.bc to i64
  %i.bh = sub i64 %i.bf, %i.bg
  call void @_ZdlPvm(ptr noundef nonnull %i.bc, i64 noundef %i.bh) #48
  br label %_ZN9CenteringILi1EED2Ev.exit

_ZN9CenteringILi1EED2Ev.exit:                     ; preds = %_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EED2Ev.exit.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #47
  store i32 1, ptr %2, align 4, !tbaa !4
  store double 5.000000e-01, ptr %3, align 8, !tbaa !247
  call void @_ZN9CenteringILi1EE8addValueERK3LocILi1EERK6VectorILi1Ed4FullE(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.bi = load ptr, ptr @_ZN18CanonicalCenteringILi1EE17centering_table_mE, align 8, !tbaa !224
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !227
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !229 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 56
  %i.bn = load i64, ptr %1, align 8
  store i64 %i.bn, ptr %i.bm, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 64
  %i.bp = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI3LocILi1EESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.bo, ptr noundef nonnull align 8 dereferenceable(24) %i.a) ; 0 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 88
  %i.br = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.bq, ptr noundef nonnull align 8 dereferenceable(24) %i.at) ; 0 uses
  store i32 1, ptr %2, align 4, !tbaa !4
  store double 5.000000e-01, ptr %3, align 8, !tbaa !247
  call void @_ZN18CanonicalCenteringILi1EE8addValueERSt6vectorI3LocILi1EESaIS3_EERS1_I6VectorILi1Ed4FullESaIS9_EERKS3_RKS9_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 7 uses
  %i.bt = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI3LocILi1EESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.bs, ptr noundef nonnull align 8 dereferenceable(24) %4) ; 0 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 7 uses
  %i.bv = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.bu, ptr noundef nonnull align 8 dereferenceable(24) %5) ; 0 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 10 uses
  %i.by = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 6 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 10 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #47
  store i32 1, ptr %7, align 8, !tbaa !312
  store i32 0, ptr %i.bw, align 4, !tbaa !322
  %i.cd = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !231 ; 3 uses
  %i.cf = load ptr, ptr %4, align 16, !tbaa !234  ; 5 uses
  %i.cg = ptrtoint ptr %i.ce to i64               ; 2 uses
  %i.ch = ptrtoint ptr %i.cf to i64               ; 3 uses
  %i.ci = sub i64 %i.cg, %i.ch                    ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bx, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.ce, %i.cf
  br i1 %.not.i.i.i.i.i, label %_ZNSt12_Vector_baseI3LocILi1EESaIS1_EEC2EmRKS2_.exit.i.i.thread, label %bb.d

_ZNSt12_Vector_baseI3LocILi1EESaIS1_EEC2EmRKS2_.exit.i.i.thread: ; preds = %_ZN9CenteringILi1EED2Ev.exit
  %i.cj = getelementptr inbounds nuw i8, ptr null, i64 %i.ci
  store i64 0, ptr %i.bx, align 8
  store ptr %i.cj, ptr %i.bz, align 8, !tbaa !235
  br label %_ZNSt6vectorI3LocILi1EESaIS1_EEC2ERKS3_.exit.i

bb.d:                                             ; preds = %_ZN9CenteringILi1EED2Ev.exit
  %i.ck = icmp ugt i64 %i.ci, 9223372036854775804
  br i1 %i.ck, label %bb.e, label %_ZNSt12_Vector_baseI3LocILi1EESaIS1_EEC2EmRKS2_.exit.i.i, !prof !44

bb.e:                                             ; preds = %bb.j, %bb.d
  call void @_ZSt28__throw_bad_array_new_lengthv() #46
  unreachable

_ZNSt12_Vector_baseI3LocILi1EESaIS1_EEC2EmRKS2_.exit.i.i: ; preds = %bb.d
  %i.cl = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ci) #45 ; 6 uses
  store ptr %i.cl, ptr %i.bx, align 8, !tbaa !234
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.ci
  store ptr %i.cm, ptr %i.bz, align 8, !tbaa !235
  %11 = sub i64 %i.cg, %i.ch
  %12 = add i64 %11, -4                           ; 2 uses
  %i.cn = lshr i64 %12, 2
  %i.co = add nuw nsw i64 %i.cn, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %12, 28
  %i.cp = ptrtoaddr ptr %i.cl to i64
  %i.cq = sub i64 %i.cp, %i.ch
  %diff.check = icmp ult i64 %i.cq, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_ZNSt12_Vector_baseI3LocILi1EESaIS1_EEC2EmRKS2_.exit.i.i
  %n.vec = and i64 %i.co, 9223372036854775800     ; 3 uses
  %i.cr = shl i64 %n.vec, 2                       ; 2 uses
  %i.cs = getelementptr i8, ptr %i.cl, i64 %i.cr  ; 2 uses
  %i.ct = getelementptr i8, ptr %i.cf, i64 %i.cr
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cu = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cl, i64 %i.cu ; 2 uses
  %next.gep202 = getelementptr i8, ptr %i.cf, i64 %i.cu ; 2 uses
  %i.cv = getelementptr i8, ptr %next.gep202, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep202, align 4, !tbaa !236
  %wide.load203 = load <4 x i32>, ptr %i.cv, align 4, !tbaa !236
  %i.cw = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !4
  store <4 x i32> %wide.load203, ptr %i.cw, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cx = icmp eq i64 %index.next, %n.vec
  br i1 %i.cx, label %middle.block, label %vector.body, !llvm.loop !323

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.co, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorI3LocILi1EESaIS1_EEC2ERKS3_.exit.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNSt12_Vector_baseI3LocILi1EESaIS1_EEC2EmRKS2_.exit.i.i, %middle.block
  %.09.i.i.i.i.i.i.ph = phi ptr [ %i.cl, %_ZNSt12_Vector_baseI3LocILi1EESaIS1_EEC2EmRKS2_.exit.i.i ], [ %i.cs, %middle.block ]
  %.sroa.04.08.i.i.i.i.i.i.ph = phi ptr [ %i.cf, %_ZNSt12_Vector_baseI3LocILi1EESaIS1_EEC2EmRKS2_.exit.i.i ], [ %i.ct, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.da, %.lr.ph.i.i.i.i.i.i ], [ %.09.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i = phi ptr [ %i.cz, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.04.08.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.cy = load i32, ptr %.sroa.04.08.i.i.i.i.i.i, align 4, !tbaa !236
  store i32 %i.cy, ptr %.09.i.i.i.i.i.i, align 4, !tbaa !4
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cz, %i.ce
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorI3LocILi1EESaIS1_EEC2ERKS3_.exit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !324

_ZNSt6vectorI3LocILi1EESaIS1_EEC2ERKS3_.exit.i:   ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %_ZNSt12_Vector_baseI3LocILi1EESaIS1_EEC2EmRKS2_.exit.i.i.thread
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseI3LocILi1EESaIS1_EEC2EmRKS2_.exit.i.i.thread ], [ %i.cs, %middle.block ], [ %i.da, %.lr.ph.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.by, align 8, !tbaa !231
  %i.db = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 6 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !242 ; 3 uses
  %i.dd = load ptr, ptr %5, align 16, !tbaa !245  ; 5 uses
  %i.de = ptrtoint ptr %i.dc to i64               ; 2 uses
  %i.df = ptrtoint ptr %i.dd to i64               ; 3 uses
  %i.dg = sub i64 %i.de, %i.df                    ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ca, i8 0, i64 24, i1 false)
  %.not.i.i.i.i4.i = icmp eq ptr %i.dc, %i.dd
  br i1 %.not.i.i.i.i4.i, label %_ZNSt12_Vector_baseI6VectorILi1Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i.thread, label %bb.f

_ZNSt12_Vector_baseI6VectorILi1Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i.thread: ; preds = %_ZNSt6vectorI3LocILi1EESaIS1_EEC2ERKS3_.exit.i
  %i.dh = getelementptr inbounds nuw i8, ptr null, i64 %i.dg
  store i64 0, ptr %i.ca, align 8
  store ptr %i.dh, ptr %i.cc, align 8, !tbaa !246
  br label %_ZN9CenteringILi1EEC2E13CenteringType14ContinuityTypeRKSt6vectorI3LocILi1EESaIS5_EERKS3_I6VectorILi1Ed4FullESaISC_EE.exit

bb.f:                                             ; preds = %_ZNSt6vectorI3LocILi1EESaIS1_EEC2ERKS3_.exit.i
  %i.di = icmp ugt i64 %i.dg, 9223372036854775800
  br i1 %i.di, label %bb.g, label %_ZNSt12_Vector_baseI6VectorILi1Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i, !prof !44

bb.g:                                             ; preds = %bb.k, %bb.f
  call void @_ZSt28__throw_bad_array_new_lengthv() #46
  unreachable

_ZNSt12_Vector_baseI6VectorILi1Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i: ; preds = %bb.f
  %i.dj = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dg) #45 ; 6 uses
  store ptr %i.dj, ptr %i.ca, align 8, !tbaa !245
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.dg
  store ptr %i.dk, ptr %i.cc, align 8, !tbaa !246
  %13 = sub i64 %i.de, %i.df
  %14 = add i64 %13, -8                           ; 2 uses
  %i.dl = lshr i64 %14, 3
  %i.dm = add nuw nsw i64 %i.dl, 1                ; 2 uses
  %min.iters.check208 = icmp ult i64 %14, 56
  %i.dn = ptrtoaddr ptr %i.dj to i64
  %i.do = sub i64 %i.dn, %i.df
  %diff.check206 = icmp ult i64 %i.do, 32
  %or.cond333 = or i1 %min.iters.check208, %diff.check206
  br i1 %or.cond333, label %.lr.ph.i.i.i.i.i6.i.preheader, label %vector.ph209

vector.ph209:                                     ; preds = %_ZNSt12_Vector_baseI6VectorILi1Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i
  %n.vec211 = and i64 %i.dm, 4611686018427387900  ; 3 uses
  %i.dp = shl i64 %n.vec211, 3                    ; 2 uses
  %i.dq = getelementptr i8, ptr %i.dj, i64 %i.dp  ; 2 uses
  %i.dr = getelementptr i8, ptr %i.dd, i64 %i.dp
  br label %vector.body212

vector.body212:                                   ; preds = %vector.body212, %vector.ph209
  %index213 = phi i64 [ 0, %vector.ph209 ], [ %index.next218, %vector.body212 ] ; 2 uses
  %i.ds = shl i64 %index213, 3                    ; 2 uses
  %next.gep214 = getelementptr i8, ptr %i.dj, i64 %i.ds ; 2 uses
  %next.gep215 = getelementptr i8, ptr %i.dd, i64 %i.ds ; 2 uses
  %i.dt = getelementptr i8, ptr %next.gep215, i64 16
  %wide.load216 = load <2 x double>, ptr %next.gep215, align 8, !tbaa !247
  %wide.load217 = load <2 x double>, ptr %i.dt, align 8, !tbaa !247
  %i.du = getelementptr i8, ptr %next.gep214, i64 16
  store <2 x double> %wide.load216, ptr %next.gep214, align 8, !tbaa !247
  store <2 x double> %wide.load217, ptr %i.du, align 8, !tbaa !247
  %index.next218 = add nuw i64 %index213, 4       ; 2 uses
  %i.dv = icmp eq i64 %index.next218, %n.vec211
  br i1 %i.dv, label %middle.block219, label %vector.body212, !llvm.loop !325

middle.block219:                                  ; preds = %vector.body212
  %cmp.n220 = icmp eq i64 %i.dm, %n.vec211
  br i1 %cmp.n220, label %_ZN9CenteringILi1EEC2E13CenteringType14ContinuityTypeRKSt6vectorI3LocILi1EESaIS5_EERKS3_I6VectorILi1Ed4FullESaISC_EE.exit, label %.lr.ph.i.i.i.i.i6.i.preheader

.lr.ph.i.i.i.i.i6.i.preheader:                    ; preds = %_ZNSt12_Vector_baseI6VectorILi1Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i, %middle.block219
  %.09.i.i.i.i.i7.i.ph = phi ptr [ %i.dj, %_ZNSt12_Vector_baseI6VectorILi1Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i ], [ %i.dq, %middle.block219 ]
  %.sroa.04.08.i.i.i.i.i8.i.ph = phi ptr [ %i.dd, %_ZNSt12_Vector_baseI6VectorILi1Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i ], [ %i.dr, %middle.block219 ]
  br label %.lr.ph.i.i.i.i.i6.i

.lr.ph.i.i.i.i.i6.i:                              ; preds = %.lr.ph.i.i.i.i.i6.i.preheader, %.lr.ph.i.i.i.i.i6.i
  %.09.i.i.i.i.i7.i = phi ptr [ %i.dy, %.lr.ph.i.i.i.i.i6.i ], [ %.09.i.i.i.i.i7.i.ph, %.lr.ph.i.i.i.i.i6.i.preheader ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i8.i = phi ptr [ %i.dx, %.lr.ph.i.i.i.i.i6.i ], [ %.sroa.04.08.i.i.i.i.i8.i.ph, %.lr.ph.i.i.i.i.i6.i.preheader ] ; 2 uses
  %i.dw = load double, ptr %.sroa.04.08.i.i.i.i.i8.i, align 8, !tbaa !247
  store double %i.dw, ptr %.09.i.i.i.i.i7.i, align 8, !tbaa !247
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i8.i, i64 8 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i7.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i9.i = icmp eq ptr %i.dx, %i.dc
  br i1 %.not.i.i.i.i.i9.i, label %_ZN9CenteringILi1EEC2E13CenteringType14ContinuityTypeRKSt6vectorI3LocILi1EESaIS5_EERKS3_I6VectorILi1Ed4FullESaISC_EE.exit, label %.lr.ph.i.i.i.i.i6.i, !llvm.loop !326

_ZN9CenteringILi1EEC2E13CenteringType14ContinuityTypeRKSt6vectorI3LocILi1EESaIS5_EERKS3_I6VectorILi1Ed4FullESaISC_EE.exit: ; preds = %.lr.ph.i.i.i.i.i6.i, %middle.block219, %_ZNSt12_Vector_baseI6VectorILi1Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i.thread
  %.0.lcssa.i.i.i.i.i10.i = phi ptr [ null, %_ZNSt12_Vector_baseI6VectorILi1Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i.thread ], [ %i.dq, %middle.block219 ], [ %i.dy, %.lr.ph.i.i.i.i.i6.i ]
  store ptr %.0.lcssa.i.i.i.i.i10.i, ptr %i.cb, align 8, !tbaa !242
  %i.dz = load ptr, ptr @_ZN18CanonicalCenteringILi1EE17centering_table_mE, align 8, !tbaa !224
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !227
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !229 ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 56
  %i.ee = load i64, ptr %7, align 8
  store i64 %i.ee, ptr %i.ed, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 64
  %i.eg = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI3LocILi1EESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.ef, ptr noundef nonnull align 8 dereferenceable(24) %i.bx) ; 0 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ec, i64 88
  %i.ei = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.eh, ptr noundef nonnull align 8 dereferenceable(24) %i.ca) ; 0 uses
  %i.ej = load ptr, ptr %i.ca, align 8, !tbaa !245 ; 3 uses
  %.not.i.i.i.i54 = icmp eq ptr %i.ej, null
  br i1 %.not.i.i.i.i54, label %_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EED2Ev.exit.i55, label %bb.h

bb.h:                                             ; preds = %_ZN9CenteringILi1EEC2E13CenteringType14ContinuityTypeRKSt6vectorI3LocILi1EESaIS5_EERKS3_I6VectorILi1Ed4FullESaISC_EE.exit
  %i.ek = load ptr, ptr %i.cc, align 8, !tbaa !246
  %i.el = ptrtoint ptr %i.ek to i64
  %i.em = ptrtoint ptr %i.ej to i64
  %i.en = sub i64 %i.el, %i.em
  call void @_ZdlPvm(ptr noundef nonnull %i.ej, i64 noundef %i.en) #48
  br label %_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EED2Ev.exit.i55

_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EED2Ev.exit.i55: ; preds = %bb.h, %_ZN9CenteringILi1EEC2E13CenteringType14ContinuityTypeRKSt6vectorI3LocILi1EESaIS5_EERKS3_I6VectorILi1Ed4FullESaISC_EE.exit
  %i.eo = load ptr, ptr %i.bx, align 8, !tbaa !234 ; 3 uses
  %.not.i.i.i1.i56 = icmp eq ptr %i.eo, null
  br i1 %.not.i.i.i1.i56, label %_ZN9CenteringILi1EED2Ev.exit57, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EED2Ev.exit.i55
  %i.ep = load ptr, ptr %i.bz, align 8, !tbaa !235
  %i.eq = ptrtoint ptr %i.ep to i64
  %i.er = ptrtoint ptr %i.eo to i64
  %i.es = sub i64 %i.eq, %i.er
  call void @_ZdlPvm(ptr noundef nonnull %i.eo, i64 noundef %i.es) #48
  br label %_ZN9CenteringILi1EED2Ev.exit57

_ZN9CenteringILi1EED2Ev.exit57:                   ; preds = %_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EED2Ev.exit.i55, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #47
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #47
  store i32 1, ptr %7, align 8, !tbaa !312
  store i32 1, ptr %i.bw, align 4, !tbaa !322
  %i.et = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 6 uses
  %i.eu = load ptr, ptr %i.et, align 16, !tbaa !231 ; 3 uses
  %i.ev = load ptr, ptr %i.bs, align 8, !tbaa !234 ; 5 uses
  %i.ew = ptrtoint ptr %i.eu to i64               ; 2 uses
  %i.ex = ptrtoint ptr %i.ev to i64               ; 3 uses
  %i.ey = sub i64 %i.ew, %i.ex                    ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bx, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.1 = icmp eq ptr %i.eu, %i.ev
  br i1 %.not.i.i.i.i.i.1, label %_ZNSt12_Vector_baseI3LocILi1EESaIS1_EEC2EmRKS2_.exit.i.i.thread.1, label %bb.j

bb.j:                                             ; preds = %_ZN9CenteringILi1EED2Ev.exit57
  %i.ez = icmp ugt i64 %i.ey, 9223372036854775804
  br i1 %i.ez, label %bb.e, label %_ZNSt12_Vector_baseI3LocILi1EESaIS1_EEC2EmRKS2_.exit.i.i.1, !prof !44

_ZNSt12_Vector_baseI3LocILi1EESaIS1_EEC2EmRKS2_.exit.i.i.1: ; preds = %bb.j
  %i.fa = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ey) #45 ; 6 uses
  store ptr %i.fa, ptr %i.bx, align 8, !tbaa !234
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.ey
  store ptr %i.fb, ptr %i.bz, align 8, !tbaa !235
  %15 = sub i64 %i.ew, %i.ex
  %16 = add i64 %15, -4                           ; 2 uses
  %i.fc = lshr i64 %16, 2
  %i.fd = add nuw nsw i64 %i.fc, 1                ; 2 uses
  %min.iters.check226 = icmp ult i64 %16, 28
  %i.fe = ptrtoaddr ptr %i.fa to i64
  %i.ff = sub i64 %i.fe, %i.ex
  %diff.check224 = icmp ult i64 %i.ff, 32
  %or.cond335 = or i1 %min.iters.check226, %diff.check224
  br i1 %or.cond335, label %.lr.ph.i.i.i.i.i.i.1.preheader, label %vector.ph227

vector.ph227:                                     ; preds = %_ZNSt12_Vector_baseI3LocILi1EESaIS1_EEC2EmRKS2_.exit.i.i.1
  %n.vec229 = and i64 %i.fd, 9223372036854775800  ; 3 uses
  %i.fg = shl i64 %n.vec229, 2                    ; 2 uses
  %i.fh = getelementptr i8, ptr %i.fa, i64 %i.fg  ; 2 uses
  %i.fi = getelementptr i8, ptr %i.ev, i64 %i.fg
  br label %vector.body230

vector.body230:                                   ; preds = %vector.body230, %vector.ph227
  %index231 = phi i64 [ 0, %vector.ph227 ], [ %index.next236, %vector.body230 ] ; 2 uses
  %i.fj = shl i64 %index231, 2                    ; 2 uses
  %next.gep232 = getelementptr i8, ptr %i.fa, i64 %i.fj ; 2 uses
  %next.gep233 = getelementptr i8, ptr %i.ev, i64 %i.fj ; 2 uses
  %i.fk = getelementptr i8, ptr %next.gep233, i64 16
  %wide.load234 = load <4 x i32>, ptr %next.gep233, align 4, !tbaa !236
  %wide.load235 = load <4 x i32>, ptr %i.fk, align 4, !tbaa !236
  %i.fl = getelementptr i8, ptr %next.gep232, i64 16
  store <4 x i32> %wide.load234, ptr %next.gep232, align 4, !tbaa !4
  store <4 x i32> %wide.load235, ptr %i.fl, align 4, !tbaa !4
  %index.next236 = add nuw i64 %index231, 8       ; 2 uses
  %i.fm = icmp eq i64 %index.next236, %n.vec229
  br i1 %i.fm, label %middle.block237, label %vector.body230, !llvm.loop !327

middle.block237:                                  ; preds = %vector.body230
  %cmp.n238 = icmp eq i64 %i.fd, %n.vec229
  br i1 %cmp.n238, label %_ZNSt6vectorI3LocILi1EESaIS1_EEC2ERKS3_.exit.i.1, label %.lr.ph.i.i.i.i.i.i.1.preheader

.lr.ph.i.i.i.i.i.i.1.preheader:                   ; preds = %_ZNSt12_Vector_baseI3LocILi1EESaIS1_EEC2EmRKS2_.exit.i.i.1, %middle.block237
  %.09.i.i.i.i.i.i.1.ph = phi ptr [ %i.fa, %_ZNSt12_Vector_baseI3LocILi1EESaIS1_EEC2EmRKS2_.exit.i.i.1 ], [ %i.fh, %middle.block237 ]
  %.sroa.04.08.i.i.i.i.i.i.1.ph = phi ptr [ %i.ev, %_ZNSt12_Vector_baseI3LocILi1EESaIS1_EEC2EmRKS2_.exit.i.i.1 ], [ %i.fi, %middle.block237 ]
  br label %.lr.ph.i.i.i.i.i.i.1

.lr.ph.i.i.i.i.i.i.1:                             ; preds = %.lr.ph.i.i.i.i.i.i.1.preheader, %.lr.ph.i.i.i.i.i.i.1
  %.09.i.i.i.i.i.i.1 = phi ptr [ %i.fp, %.lr.ph.i.i.i.i.i.i.1 ], [ %.09.i.i.i.i.i.i.1.ph, %.lr.ph.i.i.i.i.i.i.1.preheader ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i.1 = phi ptr [ %i.fo, %.lr.ph.i.i.i.i.i.i.1 ], [ %.sroa.04.08.i.i.i.i.i.i.1.ph, %.lr.ph.i.i.i.i.i.i.1.preheader ] ; 2 uses
  %i.fn = load i32, ptr %.sroa.04.08.i.i.i.i.i.i.1, align 4, !tbaa !236
  store i32 %i.fn, ptr %.09.i.i.i.i.i.i.1, align 4, !tbaa !4
  %i.fo = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.1, i64 4 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.1, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.1 = icmp eq ptr %i.fo, %i.eu
  br i1 %.not.i.i.i.i.i.i.1, label %_ZNSt6vectorI3LocILi1EESaIS1_EEC2ERKS3_.exit.i.1, label %.lr.ph.i.i.i.i.i.i.1, !llvm.loop !328

_ZNSt12_Vector_baseI3LocILi1EESaIS1_EEC2EmRKS2_.exit.i.i.thread.1: ; preds = %_ZN9CenteringILi1EED2Ev.exit57
  %i.fq = getelementptr inbounds nuw i8, ptr null, i64 %i.ey
  store i64 0, ptr %i.bx, align 8
  store ptr %i.fq, ptr %i.bz, align 8, !tbaa !235
  br label %_ZNSt6vectorI3LocILi1EESaIS1_EEC2ERKS3_.exit.i.1

_ZNSt6vectorI3LocILi1EESaIS1_EEC2ERKS3_.exit.i.1: ; preds = %.lr.ph.i.i.i.i.i.i.1, %middle.block237, %_ZNSt12_Vector_baseI3LocILi1EESaIS1_EEC2EmRKS2_.exit.i.i.thread.1
  %.0.lcssa.i.i.i.i.i.i.1 = phi ptr [ null, %_ZNSt12_Vector_baseI3LocILi1EESaIS1_EEC2EmRKS2_.exit.i.i.thread.1 ], [ %i.fh, %middle.block237 ], [ %i.fp, %.lr.ph.i.i.i.i.i.i.1 ]
  store ptr %.0.lcssa.i.i.i.i.i.i.1, ptr %i.by, align 8, !tbaa !231
  %i.fr = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 6 uses
  %i.fs = load ptr, ptr %i.fr, align 16, !tbaa !242 ; 3 uses
  %i.ft = load ptr, ptr %i.bu, align 8, !tbaa !245 ; 5 uses
  %i.fu = ptrtoint ptr %i.fs to i64               ; 2 uses
  %i.fv = ptrtoint ptr %i.ft to i64               ; 3 uses
  %i.fw = sub i64 %i.fu, %i.fv                    ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ca, i8 0, i64 24, i1 false)
  %.not.i.i.i.i4.i.1 = icmp eq ptr %i.fs, %i.ft
  br i1 %.not.i.i.i.i4.i.1, label %_ZNSt12_Vector_baseI6VectorILi1Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i.thread.1, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorI3LocILi1EESaIS1_EEC2ERKS3_.exit.i.1
  %i.fx = icmp ugt i64 %i.fw, 9223372036854775800
  br i1 %i.fx, label %bb.g, label %_ZNSt12_Vector_baseI6VectorILi1Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i.1, !prof !44

_ZNSt12_Vector_baseI6VectorILi1Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i.1: ; preds = %bb.k
  %i.fy = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fw) #45 ; 6 uses
  store ptr %i.fy, ptr %i.ca, align 8, !tbaa !245
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 %i.fw
  store ptr %i.fz, ptr %i.cc, align 8, !tbaa !246
  %17 = sub i64 %i.fu, %i.fv
  %18 = add i64 %17, -8                           ; 2 uses
  %i.ga = lshr i64 %18, 3
  %i.gb = add nuw nsw i64 %i.ga, 1                ; 2 uses
  %min.iters.check244 = icmp ult i64 %18, 56
  %i.gc = ptrtoaddr ptr %i.fy to i64
  %i.gd = sub i64 %i.gc, %i.fv
  %diff.check242 = icmp ult i64 %i.gd, 32
  %or.cond337 = or i1 %min.iters.check244, %diff.check242
  br i1 %or.cond337, label %.lr.ph.i.i.i.i.i6.i.1.preheader, label %vector.ph245

vector.ph245:                                     ; preds = %_ZNSt12_Vector_baseI6VectorILi1Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i.1
  %n.vec247 = and i64 %i.gb, 4611686018427387900  ; 3 uses
  %i.ge = shl i64 %n.vec247, 3                    ; 2 uses
  %i.gf = getelementptr i8, ptr %i.fy, i64 %i.ge  ; 2 uses
  %i.gg = getelementptr i8, ptr %i.ft, i64 %i.ge
  br label %vector.body248

vector.body248:                                   ; preds = %vector.body248, %vector.ph245
  %index249 = phi i64 [ 0, %vector.ph245 ], [ %index.next254, %vector.body248 ] ; 2 uses
  %i.gh = shl i64 %index249, 3                    ; 2 uses
  %next.gep250 = getelementptr i8, ptr %i.fy, i64 %i.gh ; 2 uses
  %next.gep251 = getelementptr i8, ptr %i.ft, i64 %i.gh ; 2 uses
  %i.gi = getelementptr i8, ptr %next.gep251, i64 16
  %wide.load252 = load <2 x double>, ptr %next.gep251, align 8, !tbaa !247
  %wide.load253 = load <2 x double>, ptr %i.gi, align 8, !tbaa !247
  %i.gj = getelementptr i8, ptr %next.gep250, i64 16
  store <2 x double> %wide.load252, ptr %next.gep250, align 8, !tbaa !247
  store <2 x double> %wide.load253, ptr %i.gj, align 8, !tbaa !247
  %index.next254 = add nuw i64 %index249, 4       ; 2 uses
  %i.gk = icmp eq i64 %index.next254, %n.vec247
  br i1 %i.gk, label %middle.block255, label %vector.body248, !llvm.loop !329

middle.block255:                                  ; preds = %vector.body248
  %cmp.n256 = icmp eq i64 %i.gb, %n.vec247
  br i1 %cmp.n256, label %_ZN9CenteringILi1EEC2E13CenteringType14ContinuityTypeRKSt6vectorI3LocILi1EESaIS5_EERKS3_I6VectorILi1Ed4FullESaISC_EE.exit.1, label %.lr.ph.i.i.i.i.i6.i.1.preheader

.lr.ph.i.i.i.i.i6.i.1.preheader:                  ; preds = %_ZNSt12_Vector_baseI6VectorILi1Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i.1, %middle.block255
  %.09.i.i.i.i.i7.i.1.ph = phi ptr [ %i.fy, %_ZNSt12_Vector_baseI6VectorILi1Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i.1 ], [ %i.gf, %middle.block255 ]
  %.sroa.04.08.i.i.i.i.i8.i.1.ph = phi ptr [ %i.ft, %_ZNSt12_Vector_baseI6VectorILi1Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i.1 ], [ %i.gg, %middle.block255 ]
  br label %.lr.ph.i.i.i.i.i6.i.1

.lr.ph.i.i.i.i.i6.i.1:                            ; preds = %.lr.ph.i.i.i.i.i6.i.1.preheader, %.lr.ph.i.i.i.i.i6.i.1
  %.09.i.i.i.i.i7.i.1 = phi ptr [ %i.gn, %.lr.ph.i.i.i.i.i6.i.1 ], [ %.09.i.i.i.i.i7.i.1.ph, %.lr.ph.i.i.i.i.i6.i.1.preheader ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i8.i.1 = phi ptr [ %i.gm, %.lr.ph.i.i.i.i.i6.i.1 ], [ %.sroa.04.08.i.i.i.i.i8.i.1.ph, %.lr.ph.i.i.i.i.i6.i.1.preheader ] ; 2 uses
  %i.gl = load double, ptr %.sroa.04.08.i.i.i.i.i8.i.1, align 8, !tbaa !247
  store double %i.gl, ptr %.09.i.i.i.i.i7.i.1, align 8, !tbaa !247
  %i.gm = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i8.i.1, i64 8 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i7.i.1, i64 8 ; 2 uses
  %.not.i.i.i.i.i9.i.1 = icmp eq ptr %i.gm, %i.fs
  br i1 %.not.i.i.i.i.i9.i.1, label %_ZN9CenteringILi1EEC2E13CenteringType14ContinuityTypeRKSt6vectorI3LocILi1EESaIS5_EERKS3_I6VectorILi1Ed4FullESaISC_EE.exit.1, label %.lr.ph.i.i.i.i.i6.i.1, !llvm.loop !330

_ZNSt12_Vector_baseI6VectorILi1Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i.thread.1: ; preds = %_ZNSt6vectorI3LocILi1EESaIS1_EEC2ERKS3_.exit.i.1
  %i.go = getelementptr inbounds nuw i8, ptr null, i64 %i.fw
  store i64 0, ptr %i.ca, align 8
  store ptr %i.go, ptr %i.cc, align 8, !tbaa !246
  br label %_ZN9CenteringILi1EEC2E13CenteringType14ContinuityTypeRKSt6vectorI3LocILi1EESaIS5_EERKS3_I6VectorILi1Ed4FullESaISC_EE.exit.1

_ZN9CenteringILi1EEC2E13CenteringType14ContinuityTypeRKSt6vectorI3LocILi1EESaIS5_EERKS3_I6VectorILi1Ed4FullESaISC_EE.exit.1: ; preds = %.lr.ph.i.i.i.i.i6.i.1, %middle.block255, %_ZNSt12_Vector_baseI6VectorILi1Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i.thread.1
  %.0.lcssa.i.i.i.i.i10.i.1 = phi ptr [ null, %_ZNSt12_Vector_baseI6VectorILi1Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i.thread.1 ], [ %i.gf, %middle.block255 ], [ %i.gn, %.lr.ph.i.i.i.i.i6.i.1 ]
  store ptr %.0.lcssa.i.i.i.i.i10.i.1, ptr %i.cb, align 8, !tbaa !242
  %i.gp = load ptr, ptr @_ZN18CanonicalCenteringILi1EE17centering_table_mE, align 8, !tbaa !224
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !227
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !229 ; 3 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 56
  %i.gv = load i64, ptr %7, align 8
  store i64 %i.gv, ptr %i.gu, align 8
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gt, i64 64
  %i.gx = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI3LocILi1EESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.gw, ptr noundef nonnull align 8 dereferenceable(24) %i.bx) ; 0 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gt, i64 88
  %i.gz = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.gy, ptr noundef nonnull align 8 dereferenceable(24) %i.ca) ; 0 uses
  %i.ha = load ptr, ptr %i.ca, align 8, !tbaa !245 ; 3 uses
  %.not.i.i.i.i54.1 = icmp eq ptr %i.ha, null
  br i1 %.not.i.i.i.i54.1, label %_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EED2Ev.exit.i55.1, label %bb.l

bb.l:                                             ; preds = %_ZN9CenteringILi1EEC2E13CenteringType14ContinuityTypeRKSt6vectorI3LocILi1EESaIS5_EERKS3_I6VectorILi1Ed4FullESaISC_EE.exit.1
  %i.hb = load ptr, ptr %i.cc, align 8, !tbaa !246
  %i.hc = ptrtoint ptr %i.hb to i64
  %i.hd = ptrtoint ptr %i.ha to i64
  %i.he = sub i64 %i.hc, %i.hd
  call void @_ZdlPvm(ptr noundef nonnull %i.ha, i64 noundef %i.he) #48
  br label %_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EED2Ev.exit.i55.1

_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EED2Ev.exit.i55.1: ; preds = %bb.l, %_ZN9CenteringILi1EEC2E13CenteringType14ContinuityTypeRKSt6vectorI3LocILi1EESaIS5_EERKS3_I6VectorILi1Ed4FullESaISC_EE.exit.1
  %i.hf = load ptr, ptr %i.bx, align 8, !tbaa !234 ; 3 uses
  %.not.i.i.i1.i56.1 = icmp eq ptr %i.hf, null
  br i1 %.not.i.i.i1.i56.1, label %_ZN9CenteringILi1EED2Ev.exit57.1, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EED2Ev.exit.i55.1
  %i.hg = load ptr, ptr %i.bz, align 8, !tbaa !235
  %i.hh = ptrtoint ptr %i.hg to i64
  %i.hi = ptrtoint ptr %i.hf to i64
  %i.hj = sub i64 %i.hh, %i.hi
  call void @_ZdlPvm(ptr noundef nonnull %i.hf, i64 noundef %i.hj) #48
  br label %_ZN9CenteringILi1EED2Ev.exit57.1

_ZN9CenteringILi1EED2Ev.exit57.1:                 ; preds = %bb.m, %_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EED2Ev.exit.i55.1
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #47
  %i.hk = load ptr, ptr %4, align 16, !tbaa !234  ; 2 uses
  %i.hl = load ptr, ptr %i.cd, align 8, !tbaa !231
  %.not.i.i = icmp eq ptr %i.hl, %i.hk
  br i1 %.not.i.i, label %_ZNSt6vectorI3LocILi1EESaIS1_EE5clearEv.exit, label %bb.n

bb.n:                                             ; preds = %_ZN9CenteringILi1EED2Ev.exit57.1
  store ptr %i.hk, ptr %i.cd, align 8, !tbaa !231
  br label %_ZNSt6vectorI3LocILi1EESaIS1_EE5clearEv.exit

_ZNSt6vectorI3LocILi1EESaIS1_EE5clearEv.exit:     ; preds = %_ZN9CenteringILi1EED2Ev.exit57.1, %bb.n
  %i.hm = load ptr, ptr %5, align 16, !tbaa !245  ; 2 uses
  %i.hn = load ptr, ptr %i.db, align 8, !tbaa !242
  %.not.i.i58 = icmp eq ptr %i.hn, %i.hm
  br i1 %.not.i.i58, label %_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EE5clearEv.exit, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorI3LocILi1EESaIS1_EE5clearEv.exit
  store ptr %i.hm, ptr %i.db, align 8, !tbaa !242
  br label %_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EE5clearEv.exit

_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EE5clearEv.exit: ; preds = %_ZNSt6vectorI3LocILi1EESaIS1_EE5clearEv.exit, %bb.o
  %i.ho = load ptr, ptr %i.bs, align 8, !tbaa !234 ; 2 uses
  %i.hp = load ptr, ptr %i.et, align 16, !tbaa !231
  %.not.i.i.1 = icmp eq ptr %i.hp, %i.ho
  br i1 %.not.i.i.1, label %_ZNSt6vectorI3LocILi1EESaIS1_EE5clearEv.exit.1, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EE5clearEv.exit
  store ptr %i.ho, ptr %i.et, align 16, !tbaa !231
  br label %_ZNSt6vectorI3LocILi1EESaIS1_EE5clearEv.exit.1

_ZNSt6vectorI3LocILi1EESaIS1_EE5clearEv.exit.1:   ; preds = %bb.p, %_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EE5clearEv.exit
  %i.hq = load ptr, ptr %i.bu, align 8, !tbaa !245 ; 2 uses
  %i.hr = load ptr, ptr %i.fr, align 16, !tbaa !242
  %.not.i.i58.1 = icmp eq ptr %i.hr, %i.hq
  br i1 %.not.i.i58.1, label %_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EE5clearEv.exit.1, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorI3LocILi1EESaIS1_EE5clearEv.exit.1
  store ptr %i.hq, ptr %i.fr, align 16, !tbaa !242
  br label %_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EE5clearEv.exit.1

_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EE5clearEv.exit.1: ; preds = %bb.q, %_ZNSt6vectorI3LocILi1EESaIS1_EE5clearEv.exit.1
  store i32 0, ptr %2, align 4, !tbaa !4
  store double 0.000000e+00, ptr %3, align 8, !tbaa !247
  call void @_ZN18CanonicalCenteringILi1EE8addValueERSt6vectorI3LocILi1EESaIS3_EERS1_I6VectorILi1Ed4FullESaIS9_EERKS3_RKS9_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.hs = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI3LocILi1EESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.bs, ptr noundef nonnull align 8 dereferenceable(24) %4) ; 0 uses
  %i.ht = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.bu, ptr noundef nonnull align 8 dereferenceable(24) %5) ; 0 uses
  store double 1.000000e+00, ptr %3, align 8, !tbaa !247
  call void @_ZN18CanonicalCenteringILi1EE8addValueERSt6vectorI3LocILi1EESaIS3_EERS1_I6VectorILi1Ed4FullESaIS9_EERKS3_RKS9_(ptr noundef nonnull align 8 dereferenceable(24) %i.bs, ptr noundef nonnull align 8 dereferenceable(24) %i.bu, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.hu = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 10 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 6 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 10 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #47
  store i32 2, ptr %8, align 8, !tbaa !312
  store i32 0, ptr %i.hu, align 4, !tbaa !322
  %i.ib = load ptr, ptr %i.cd, align 8, !tbaa !231 ; 3 uses
  %i.ic = load ptr, ptr %4, align 16, !tbaa !234  ; 5 uses
  %i.id = ptrtoint ptr %i.ib to i64               ; 2 uses
  %i.ie = ptrtoint ptr %i.ic to i64               ; 3 uses
  %i.if = sub i64 %i.id, %i.ie                    ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hv, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i59 = icmp eq ptr %i.ib, %i.ic
  br i1 %.not.i.i.i.i.i59, label %_ZNSt12_Vector_baseI3LocILi1EESaIS1_EEC2EmRKS2_.exit.i.i61.thread, label %bb.r

_ZNSt12_Vector_baseI3LocILi1EESaIS1_EEC2EmRKS2_.exit.i.i61.thread: ; preds = %_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EE5clearEv.exit.1
  %i.ig = getelementptr inbounds nuw i8, ptr null, i64 %i.if
  store i64 0, ptr %i.hv, align 8
  store ptr %i.ig, ptr %i.hx, align 8, !tbaa !235
  br label %_ZNSt6vectorI3LocILi1EESaIS1_EEC2ERKS3_.exit.i67

bb.r:                                             ; preds = %_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EE5clearEv.exit.1
  %i.ih = icmp ugt i64 %i.if, 9223372036854775804
  br i1 %i.ih, label %bb.s, label %_ZNSt12_Vector_baseI3LocILi1EESaIS1_EEC2EmRKS2_.exit.i.i61, !prof !44

bb.s:                                             ; preds = %bb.x, %bb.r
  call void @_ZSt28__throw_bad_array_new_lengthv() #46
  unreachable

_ZNSt12_Vector_baseI3LocILi1EESaIS1_EEC2EmRKS2_.exit.i.i61: ; preds = %bb.r
  %i.ii = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.if) #45 ; 6 uses
  store ptr %i.ii, ptr %i.hv, align 8, !tbaa !234
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 %i.if
  store ptr %i.ij, ptr %i.hx, align 8, !tbaa !235
  %19 = sub i64 %i.id, %i.ie
  %20 = add i64 %19, -4                           ; 2 uses
  %i.ik = lshr i64 %20, 2
  %i.il = add nuw nsw i64 %i.ik, 1                ; 2 uses
  %min.iters.check262 = icmp ult i64 %20, 28
  %i.im = ptrtoaddr ptr %i.ii to i64
  %i.in = sub i64 %i.im, %i.ie
  %diff.check260 = icmp ult i64 %i.in, 32
  %or.cond339 = or i1 %min.iters.check262, %diff.check260
  br i1 %or.cond339, label %.lr.ph.i.i.i.i.i.i63.preheader, label %vector.ph263

vector.ph263:                                     ; preds = %_ZNSt12_Vector_baseI3LocILi1EESaIS1_EEC2EmRKS2_.exit.i.i61
  %n.vec265 = and i64 %i.il, 9223372036854775800  ; 3 uses
  %i.io = shl i64 %n.vec265, 2                    ; 2 uses
  %i.ip = getelementptr i8, ptr %i.ii, i64 %i.io  ; 2 uses
  %i.iq = getelementptr i8, ptr %i.ic, i64 %i.io
  br label %vector.body266

vector.body266:                                   ; preds = %vector.body266, %vector.ph263
  %index267 = phi i64 [ 0, %vector.ph263 ], [ %index.next272, %vector.body266 ] ; 2 uses
  %i.ir = shl i64 %index267, 2                    ; 2 uses
  %next.gep268 = getelementptr i8, ptr %i.ii, i64 %i.ir ; 2 uses
  %next.gep269 = getelementptr i8, ptr %i.ic, i64 %i.ir ; 2 uses
  %i.is = getelementptr i8, ptr %next.gep269, i64 16
  %wide.load270 = load <4 x i32>, ptr %next.gep269, align 4, !tbaa !236
  %wide.load271 = load <4 x i32>, ptr %i.is, align 4, !tbaa !236
  %i.it = getelementptr i8, ptr %next.gep268, i64 16
  store <4 x i32> %wide.load270, ptr %next.gep268, align 4, !tbaa !4
  store <4 x i32> %wide.load271, ptr %i.it, align 4, !tbaa !4
  %index.next272 = add nuw i64 %index267, 8       ; 2 uses
  %i.iu = icmp eq i64 %index.next272, %n.vec265
  br i1 %i.iu, label %middle.block273, label %vector.body266, !llvm.loop !331

middle.block273:                                  ; preds = %vector.body266
  %cmp.n274 = icmp eq i64 %i.il, %n.vec265
  br i1 %cmp.n274, label %_ZNSt6vectorI3LocILi1EESaIS1_EEC2ERKS3_.exit.i67, label %.lr.ph.i.i.i.i.i.i63.preheader

.lr.ph.i.i.i.i.i.i63.preheader:                   ; preds = %_ZNSt12_Vector_baseI3LocILi1EESaIS1_EEC2EmRKS2_.exit.i.i61, %middle.block273
  %.09.i.i.i.i.i.i64.ph = phi ptr [ %i.ii, %_ZNSt12_Vector_baseI3LocILi1EESaIS1_EEC2EmRKS2_.exit.i.i61 ], [ %i.ip, %middle.block273 ]
  %.sroa.04.08.i.i.i.i.i.i65.ph = phi ptr [ %i.ic, %_ZNSt12_Vector_baseI3LocILi1EESaIS1_EEC2EmRKS2_.exit.i.i61 ], [ %i.iq, %middle.block273 ]
  br label %.lr.ph.i.i.i.i.i.i63

.lr.ph.i.i.i.i.i.i63:                             ; preds = %.lr.ph.i.i.i.i.i.i63.preheader, %.lr.ph.i.i.i.i.i.i63
  %.09.i.i.i.i.i.i64 = phi ptr [ %i.ix, %.lr.ph.i.i.i.i.i.i63 ], [ %.09.i.i.i.i.i.i64.ph, %.lr.ph.i.i.i.i.i.i63.preheader ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i65 = phi ptr [ %i.iw, %.lr.ph.i.i.i.i.i.i63 ], [ %.sroa.04.08.i.i.i.i.i.i65.ph, %.lr.ph.i.i.i.i.i.i63.preheader ] ; 2 uses
  %i.iv = load i32, ptr %.sroa.04.08.i.i.i.i.i.i65, align 4, !tbaa !236
  store i32 %i.iv, ptr %.09.i.i.i.i.i.i64, align 4, !tbaa !4
  %i.iw = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i65, i64 4 ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i64, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i66 = icmp eq ptr %i.iw, %i.ib
  br i1 %.not.i.i.i.i.i.i66, label %_ZNSt6vectorI3LocILi1EESaIS1_EEC2ERKS3_.exit.i67, label %.lr.ph.i.i.i.i.i.i63, !llvm.loop !332

_ZNSt6vectorI3LocILi1EESaIS1_EEC2ERKS3_.exit.i67: ; preds = %.lr.ph.i.i.i.i.i.i63, %middle.block273, %_ZNSt12_Vector_baseI3LocILi1EESaIS1_EEC2EmRKS2_.exit.i.i61.thread
  %.0.lcssa.i.i.i.i.i.i68 = phi ptr [ null, %_ZNSt12_Vector_baseI3LocILi1EESaIS1_EEC2EmRKS2_.exit.i.i61.thread ], [ %i.ip, %middle.block273 ], [ %i.ix, %.lr.ph.i.i.i.i.i.i63 ]
  store ptr %.0.lcssa.i.i.i.i.i.i68, ptr %i.hw, align 8, !tbaa !231
  %i.iy = load ptr, ptr %i.db, align 8, !tbaa !242 ; 3 uses
  %i.iz = load ptr, ptr %5, align 16, !tbaa !245  ; 5 uses
  %i.ja = ptrtoint ptr %i.iy to i64               ; 2 uses
  %i.jb = ptrtoint ptr %i.iz to i64               ; 3 uses
  %i.jc = sub i64 %i.ja, %i.jb                    ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hy, i8 0, i64 24, i1 false)
  %.not.i.i.i.i4.i69 = icmp eq ptr %i.iy, %i.iz
  br i1 %.not.i.i.i.i4.i69, label %_ZNSt12_Vector_baseI6VectorILi1Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i71.thread, label %bb.t

_ZNSt12_Vector_baseI6VectorILi1Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i71.thread: ; preds = %_ZNSt6vectorI3LocILi1EESaIS1_EEC2ERKS3_.exit.i67
  %i.jd = getelementptr inbounds nuw i8, ptr null, i64 %i.jc
  store i64 0, ptr %i.hy, align 8
  store ptr %i.jd, ptr %i.ia, align 8, !tbaa !246
  br label %_ZN9CenteringILi1EEC2E13CenteringType14ContinuityTypeRKSt6vectorI3LocILi1EESaIS5_EERKS3_I6VectorILi1Ed4FullESaISC_EE.exit78

bb.t:                                             ; preds = %_ZNSt6vectorI3LocILi1EESaIS1_EEC2ERKS3_.exit.i67
  %i.je = icmp ugt i64 %i.jc, 9223372036854775800
  br i1 %i.je, label %bb.u, label %_ZNSt12_Vector_baseI6VectorILi1Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i71, !prof !44

bb.u:                                             ; preds = %bb.y, %bb.t
  call void @_ZSt28__throw_bad_array_new_lengthv() #46
  unreachable

_ZNSt12_Vector_baseI6VectorILi1Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i71: ; preds = %bb.t
  %i.jf = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jc) #45 ; 6 uses
  store ptr %i.jf, ptr %i.hy, align 8, !tbaa !245
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 %i.jc
  store ptr %i.jg, ptr %i.ia, align 8, !tbaa !246
  %21 = sub i64 %i.ja, %i.jb
  %22 = add i64 %21, -8                           ; 2 uses
  %i.jh = lshr i64 %22, 3
  %i.ji = add nuw nsw i64 %i.jh, 1                ; 2 uses
  %min.iters.check280 = icmp ult i64 %22, 56
  %i.jj = ptrtoaddr ptr %i.jf to i64
  %i.jk = sub i64 %i.jj, %i.jb
  %diff.check278 = icmp ult i64 %i.jk, 32
  %or.cond341 = or i1 %min.iters.check280, %diff.check278
  br i1 %or.cond341, label %.lr.ph.i.i.i.i.i6.i73.preheader, label %vector.ph281

vector.ph281:                                     ; preds = %_ZNSt12_Vector_baseI6VectorILi1Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i71
  %n.vec283 = and i64 %i.ji, 4611686018427387900  ; 3 uses
  %i.jl = shl i64 %n.vec283, 3                    ; 2 uses
  %i.jm = getelementptr i8, ptr %i.jf, i64 %i.jl  ; 2 uses
  %i.jn = getelementptr i8, ptr %i.iz, i64 %i.jl
  br label %vector.body284

vector.body284:                                   ; preds = %vector.body284, %vector.ph281
  %index285 = phi i64 [ 0, %vector.ph281 ], [ %index.next290, %vector.body284 ] ; 2 uses
  %i.jo = shl i64 %index285, 3                    ; 2 uses
  %next.gep286 = getelementptr i8, ptr %i.jf, i64 %i.jo ; 2 uses
  %next.gep287 = getelementptr i8, ptr %i.iz, i64 %i.jo ; 2 uses
  %i.jp = getelementptr i8, ptr %next.gep287, i64 16
  %wide.load288 = load <2 x double>, ptr %next.gep287, align 8, !tbaa !247
  %wide.load289 = load <2 x double>, ptr %i.jp, align 8, !tbaa !247
  %i.jq = getelementptr i8, ptr %next.gep286, i64 16
  store <2 x double> %wide.load288, ptr %next.gep286, align 8, !tbaa !247
  store <2 x double> %wide.load289, ptr %i.jq, align 8, !tbaa !247
  %index.next290 = add nuw i64 %index285, 4       ; 2 uses
  %i.jr = icmp eq i64 %index.next290, %n.vec283
  br i1 %i.jr, label %middle.block291, label %vector.body284, !llvm.loop !333

middle.block291:                                  ; preds = %vector.body284
  %cmp.n292 = icmp eq i64 %i.ji, %n.vec283
  br i1 %cmp.n292, label %_ZN9CenteringILi1EEC2E13CenteringType14ContinuityTypeRKSt6vectorI3LocILi1EESaIS5_EERKS3_I6VectorILi1Ed4FullESaISC_EE.exit78, label %.lr.ph.i.i.i.i.i6.i73.preheader

.lr.ph.i.i.i.i.i6.i73.preheader:                  ; preds = %_ZNSt12_Vector_baseI6VectorILi1Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i71, %middle.block291
  %.09.i.i.i.i.i7.i74.ph = phi ptr [ %i.jf, %_ZNSt12_Vector_baseI6VectorILi1Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i71 ], [ %i.jm, %middle.block291 ]
  %.sroa.04.08.i.i.i.i.i8.i75.ph = phi ptr [ %i.iz, %_ZNSt12_Vector_baseI6VectorILi1Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i71 ], [ %i.jn, %middle.block291 ]
  br label %.lr.ph.i.i.i.i.i6.i73

.lr.ph.i.i.i.i.i6.i73:                            ; preds = %.lr.ph.i.i.i.i.i6.i73.preheader, %.lr.ph.i.i.i.i.i6.i73
  %.09.i.i.i.i.i7.i74 = phi ptr [ %i.ju, %.lr.ph.i.i.i.i.i6.i73 ], [ %.09.i.i.i.i.i7.i74.ph, %.lr.ph.i.i.i.i.i6.i73.preheader ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i8.i75 = phi ptr [ %i.jt, %.lr.ph.i.i.i.i.i6.i73 ], [ %.sroa.04.08.i.i.i.i.i8.i75.ph, %.lr.ph.i.i.i.i.i6.i73.preheader ] ; 2 uses
  %i.js = load double, ptr %.sroa.04.08.i.i.i.i.i8.i75, align 8, !tbaa !247
  store double %i.js, ptr %.09.i.i.i.i.i7.i74, align 8, !tbaa !247
  %i.jt = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i8.i75, i64 8 ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i7.i74, i64 8 ; 2 uses
  %.not.i.i.i.i.i9.i76 = icmp eq ptr %i.jt, %i.iy
  br i1 %.not.i.i.i.i.i9.i76, label %_ZN9CenteringILi1EEC2E13CenteringType14ContinuityTypeRKSt6vectorI3LocILi1EESaIS5_EERKS3_I6VectorILi1Ed4FullESaISC_EE.exit78, label %.lr.ph.i.i.i.i.i6.i73, !llvm.loop !334

_ZN9CenteringILi1EEC2E13CenteringType14ContinuityTypeRKSt6vectorI3LocILi1EESaIS5_EERKS3_I6VectorILi1Ed4FullESaISC_EE.exit78: ; preds = %.lr.ph.i.i.i.i.i6.i73, %middle.block291, %_ZNSt12_Vector_baseI6VectorILi1Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i71.thread
  %.0.lcssa.i.i.i.i.i10.i77 = phi ptr [ null, %_ZNSt12_Vector_baseI6VectorILi1Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i71.thread ], [ %i.jm, %middle.block291 ], [ %i.ju, %.lr.ph.i.i.i.i.i6.i73 ]
  store ptr %.0.lcssa.i.i.i.i.i10.i77, ptr %i.hz, align 8, !tbaa !242
  %i.jv = load ptr, ptr @_ZN18CanonicalCenteringILi1EE17centering_table_mE, align 8, !tbaa !224
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 16
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !227
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !229 ; 3 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 56
  %i.ka = load i64, ptr %8, align 8
  store i64 %i.ka, ptr %i.jz, align 8
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jy, i64 64
  %i.kc = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI3LocILi1EESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.kb, ptr noundef nonnull align 8 dereferenceable(24) %i.hv) ; 0 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jy, i64 88
  %i.ke = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.kd, ptr noundef nonnull align 8 dereferenceable(24) %i.hy) ; 0 uses
  %i.kf = load ptr, ptr %i.hy, align 8, !tbaa !245 ; 3 uses
  %.not.i.i.i.i79 = icmp eq ptr %i.kf, null
  br i1 %.not.i.i.i.i79, label %_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EED2Ev.exit.i80, label %bb.v

bb.v:                                             ; preds = %_ZN9CenteringILi1EEC2E13CenteringType14ContinuityTypeRKSt6vectorI3LocILi1EESaIS5_EERKS3_I6VectorILi1Ed4FullESaISC_EE.exit78
  %i.kg = load ptr, ptr %i.ia, align 8, !tbaa !246
  %i.kh = ptrtoint ptr %i.kg to i64
  %i.ki = ptrtoint ptr %i.kf to i64
  %i.kj = sub i64 %i.kh, %i.ki
  call void @_ZdlPvm(ptr noundef nonnull %i.kf, i64 noundef %i.kj) #48
  br label %_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EED2Ev.exit.i80

_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EED2Ev.exit.i80: ; preds = %bb.v, %_ZN9CenteringILi1EEC2E13CenteringType14ContinuityTypeRKSt6vectorI3LocILi1EESaIS5_EERKS3_I6VectorILi1Ed4FullESaISC_EE.exit78
  %i.kk = load ptr, ptr %i.hv, align 8, !tbaa !234 ; 3 uses
  %.not.i.i.i1.i81 = icmp eq ptr %i.kk, null
  br i1 %.not.i.i.i1.i81, label %_ZN9CenteringILi1EED2Ev.exit82, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EED2Ev.exit.i80
  %i.kl = load ptr, ptr %i.hx, align 8, !tbaa !235
  %i.km = ptrtoint ptr %i.kl to i64
  %i.kn = ptrtoint ptr %i.kk to i64
  %i.ko = sub i64 %i.km, %i.kn
  call void @_ZdlPvm(ptr noundef nonnull %i.kk, i64 noundef %i.ko) #48
  br label %_ZN9CenteringILi1EED2Ev.exit82

_ZN9CenteringILi1EED2Ev.exit82:                   ; preds = %_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EED2Ev.exit.i80, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #47
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #47
  store i32 2, ptr %8, align 8, !tbaa !312
  store i32 1, ptr %i.hu, align 4, !tbaa !322
  %i.kp = load ptr, ptr %i.et, align 16, !tbaa !231 ; 3 uses
  %i.kq = load ptr, ptr %i.bs, align 8, !tbaa !234 ; 5 uses
  %i.kr = ptrtoint ptr %i.kp to i64               ; 2 uses
  %i.ks = ptrtoint ptr %i.kq to i64               ; 3 uses
  %i.kt = sub i64 %i.kr, %i.ks                    ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hv, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i59.1 = icmp eq ptr %i.kp, %i.kq
  br i1 %.not.i.i.i.i.i59.1, label %_ZNSt12_Vector_baseI3LocILi1EESaIS1_EEC2EmRKS2_.exit.i.i61.thread.1, label %bb.x

bb.x:                                             ; preds = %_ZN9CenteringILi1EED2Ev.exit82
  %i.ku = icmp ugt i64 %i.kt, 9223372036854775804
  br i1 %i.ku, label %bb.s, label %_ZNSt12_Vector_baseI3LocILi1EESaIS1_EEC2EmRKS2_.exit.i.i61.1, !prof !44

_ZNSt12_Vector_baseI3LocILi1EESaIS1_EEC2EmRKS2_.exit.i.i61.1: ; preds = %bb.x
  %i.kv = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kt) #45 ; 6 uses
  store ptr %i.kv, ptr %i.hv, align 8, !tbaa !234
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.kt
  store ptr %i.kw, ptr %i.hx, align 8, !tbaa !235
  %23 = sub i64 %i.kr, %i.ks
  %24 = add i64 %23, -4                           ; 2 uses
  %i.kx = lshr i64 %24, 2
  %i.ky = add nuw nsw i64 %i.kx, 1                ; 2 uses
  %min.iters.check298 = icmp ult i64 %24, 28
  %i.kz = ptrtoaddr ptr %i.kv to i64
  %i.la = sub i64 %i.kz, %i.ks
  %diff.check296 = icmp ult i64 %i.la, 32
  %or.cond343 = or i1 %min.iters.check298, %diff.check296
  br i1 %or.cond343, label %.lr.ph.i.i.i.i.i.i63.1.preheader, label %vector.ph299

vector.ph299:                                     ; preds = %_ZNSt12_Vector_baseI3LocILi1EESaIS1_EEC2EmRKS2_.exit.i.i61.1
  %n.vec301 = and i64 %i.ky, 9223372036854775800  ; 3 uses
  %i.lb = shl i64 %n.vec301, 2                    ; 2 uses
  %i.lc = getelementptr i8, ptr %i.kv, i64 %i.lb  ; 2 uses
  %i.ld = getelementptr i8, ptr %i.kq, i64 %i.lb
  br label %vector.body302

vector.body302:                                   ; preds = %vector.body302, %vector.ph299
  %index303 = phi i64 [ 0, %vector.ph299 ], [ %index.next308, %vector.body302 ] ; 2 uses
  %i.le = shl i64 %index303, 2                    ; 2 uses
  %next.gep304 = getelementptr i8, ptr %i.kv, i64 %i.le ; 2 uses
  %next.gep305 = getelementptr i8, ptr %i.kq, i64 %i.le ; 2 uses
  %i.lf = getelementptr i8, ptr %next.gep305, i64 16
  %wide.load306 = load <4 x i32>, ptr %next.gep305, align 4, !tbaa !236
  %wide.load307 = load <4 x i32>, ptr %i.lf, align 4, !tbaa !236
  %i.lg = getelementptr i8, ptr %next.gep304, i64 16
  store <4 x i32> %wide.load306, ptr %next.gep304, align 4, !tbaa !4
  store <4 x i32> %wide.load307, ptr %i.lg, align 4, !tbaa !4
  %index.next308 = add nuw i64 %index303, 8       ; 2 uses
  %i.lh = icmp eq i64 %index.next308, %n.vec301
  br i1 %i.lh, label %middle.block309, label %vector.body302, !llvm.loop !335

middle.block309:                                  ; preds = %vector.body302
  %cmp.n310 = icmp eq i64 %i.ky, %n.vec301
  br i1 %cmp.n310, label %_ZNSt6vectorI3LocILi1EESaIS1_EEC2ERKS3_.exit.i67.1, label %.lr.ph.i.i.i.i.i.i63.1.preheader

.lr.ph.i.i.i.i.i.i63.1.preheader:                 ; preds = %_ZNSt12_Vector_baseI3LocILi1EESaIS1_EEC2EmRKS2_.exit.i.i61.1, %middle.block309
  %.09.i.i.i.i.i.i64.1.ph = phi ptr [ %i.kv, %_ZNSt12_Vector_baseI3LocILi1EESaIS1_EEC2EmRKS2_.exit.i.i61.1 ], [ %i.lc, %middle.block309 ]
  %.sroa.04.08.i.i.i.i.i.i65.1.ph = phi ptr [ %i.kq, %_ZNSt12_Vector_baseI3LocILi1EESaIS1_EEC2EmRKS2_.exit.i.i61.1 ], [ %i.ld, %middle.block309 ]
  br label %.lr.ph.i.i.i.i.i.i63.1

.lr.ph.i.i.i.i.i.i63.1:                           ; preds = %.lr.ph.i.i.i.i.i.i63.1.preheader, %.lr.ph.i.i.i.i.i.i63.1
  %.09.i.i.i.i.i.i64.1 = phi ptr [ %i.lk, %.lr.ph.i.i.i.i.i.i63.1 ], [ %.09.i.i.i.i.i.i64.1.ph, %.lr.ph.i.i.i.i.i.i63.1.preheader ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i65.1 = phi ptr [ %i.lj, %.lr.ph.i.i.i.i.i.i63.1 ], [ %.sroa.04.08.i.i.i.i.i.i65.1.ph, %.lr.ph.i.i.i.i.i.i63.1.preheader ] ; 2 uses
  %i.li = load i32, ptr %.sroa.04.08.i.i.i.i.i.i65.1, align 4, !tbaa !236
  store i32 %i.li, ptr %.09.i.i.i.i.i.i64.1, align 4, !tbaa !4
  %i.lj = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i65.1, i64 4 ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i64.1, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i66.1 = icmp eq ptr %i.lj, %i.kp
  br i1 %.not.i.i.i.i.i.i66.1, label %_ZNSt6vectorI3LocILi1EESaIS1_EEC2ERKS3_.exit.i67.1, label %.lr.ph.i.i.i.i.i.i63.1, !llvm.loop !336

_ZNSt12_Vector_baseI3LocILi1EESaIS1_EEC2EmRKS2_.exit.i.i61.thread.1: ; preds = %_ZN9CenteringILi1EED2Ev.exit82
  %i.ll = getelementptr inbounds nuw i8, ptr null, i64 %i.kt
  store i64 0, ptr %i.hv, align 8
  store ptr %i.ll, ptr %i.hx, align 8, !tbaa !235
  br label %_ZNSt6vectorI3LocILi1EESaIS1_EEC2ERKS3_.exit.i67.1

_ZNSt6vectorI3LocILi1EESaIS1_EEC2ERKS3_.exit.i67.1: ; preds = %.lr.ph.i.i.i.i.i.i63.1, %middle.block309, %_ZNSt12_Vector_baseI3LocILi1EESaIS1_EEC2EmRKS2_.exit.i.i61.thread.1
  %.0.lcssa.i.i.i.i.i.i68.1 = phi ptr [ null, %_ZNSt12_Vector_baseI3LocILi1EESaIS1_EEC2EmRKS2_.exit.i.i61.thread.1 ], [ %i.lc, %middle.block309 ], [ %i.lk, %.lr.ph.i.i.i.i.i.i63.1 ]
  store ptr %.0.lcssa.i.i.i.i.i.i68.1, ptr %i.hw, align 8, !tbaa !231
  %i.lm = load ptr, ptr %i.fr, align 16, !tbaa !242 ; 3 uses
  %i.ln = load ptr, ptr %i.bu, align 8, !tbaa !245 ; 5 uses
  %i.lo = ptrtoint ptr %i.lm to i64               ; 2 uses
  %i.lp = ptrtoint ptr %i.ln to i64               ; 3 uses
  %i.lq = sub i64 %i.lo, %i.lp                    ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hy, i8 0, i64 24, i1 false)
  %.not.i.i.i.i4.i69.1 = icmp eq ptr %i.lm, %i.ln
  br i1 %.not.i.i.i.i4.i69.1, label %_ZNSt12_Vector_baseI6VectorILi1Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i71.thread.1, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorI3LocILi1EESaIS1_EEC2ERKS3_.exit.i67.1
  %i.lr = icmp ugt i64 %i.lq, 9223372036854775800
  br i1 %i.lr, label %bb.u, label %_ZNSt12_Vector_baseI6VectorILi1Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i71.1, !prof !44

_ZNSt12_Vector_baseI6VectorILi1Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i71.1: ; preds = %bb.y
  %i.ls = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lq) #45 ; 6 uses
  store ptr %i.ls, ptr %i.hy, align 8, !tbaa !245
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 %i.lq
  store ptr %i.lt, ptr %i.ia, align 8, !tbaa !246
  %25 = sub i64 %i.lo, %i.lp
  %26 = add i64 %25, -8                           ; 2 uses
  %i.lu = lshr i64 %26, 3
  %i.lv = add nuw nsw i64 %i.lu, 1                ; 2 uses
  %min.iters.check316 = icmp ult i64 %26, 56
  %i.lw = ptrtoaddr ptr %i.ls to i64
  %i.lx = sub i64 %i.lw, %i.lp
  %diff.check314 = icmp ult i64 %i.lx, 32
  %or.cond345 = or i1 %min.iters.check316, %diff.check314
  br i1 %or.cond345, label %.lr.ph.i.i.i.i.i6.i73.1.preheader, label %vector.ph317

vector.ph317:                                     ; preds = %_ZNSt12_Vector_baseI6VectorILi1Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i71.1
  %n.vec319 = and i64 %i.lv, 4611686018427387900  ; 3 uses
  %i.ly = shl i64 %n.vec319, 3                    ; 2 uses
  %i.lz = getelementptr i8, ptr %i.ls, i64 %i.ly  ; 2 uses
  %i.ma = getelementptr i8, ptr %i.ln, i64 %i.ly
  br label %vector.body320

vector.body320:                                   ; preds = %vector.body320, %vector.ph317
  %index321 = phi i64 [ 0, %vector.ph317 ], [ %index.next326, %vector.body320 ] ; 2 uses
  %i.mb = shl i64 %index321, 3                    ; 2 uses
  %next.gep322 = getelementptr i8, ptr %i.ls, i64 %i.mb ; 2 uses
  %next.gep323 = getelementptr i8, ptr %i.ln, i64 %i.mb ; 2 uses
  %i.mc = getelementptr i8, ptr %next.gep323, i64 16
  %wide.load324 = load <2 x double>, ptr %next.gep323, align 8, !tbaa !247
  %wide.load325 = load <2 x double>, ptr %i.mc, align 8, !tbaa !247
  %i.md = getelementptr i8, ptr %next.gep322, i64 16
  store <2 x double> %wide.load324, ptr %next.gep322, align 8, !tbaa !247
  store <2 x double> %wide.load325, ptr %i.md, align 8, !tbaa !247
  %index.next326 = add nuw i64 %index321, 4       ; 2 uses
  %i.me = icmp eq i64 %index.next326, %n.vec319
  br i1 %i.me, label %middle.block327, label %vector.body320, !llvm.loop !337

middle.block327:                                  ; preds = %vector.body320
  %cmp.n328 = icmp eq i64 %i.lv, %n.vec319
  br i1 %cmp.n328, label %_ZN9CenteringILi1EEC2E13CenteringType14ContinuityTypeRKSt6vectorI3LocILi1EESaIS5_EERKS3_I6VectorILi1Ed4FullESaISC_EE.exit78.1, label %.lr.ph.i.i.i.i.i6.i73.1.preheader

.lr.ph.i.i.i.i.i6.i73.1.preheader:                ; preds = %_ZNSt12_Vector_baseI6VectorILi1Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i71.1, %middle.block327
  %.09.i.i.i.i.i7.i74.1.ph = phi ptr [ %i.ls, %_ZNSt12_Vector_baseI6VectorILi1Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i71.1 ], [ %i.lz, %middle.block327 ]
  %.sroa.04.08.i.i.i.i.i8.i75.1.ph = phi ptr [ %i.ln, %_ZNSt12_Vector_baseI6VectorILi1Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i71.1 ], [ %i.ma, %middle.block327 ]
  br label %.lr.ph.i.i.i.i.i6.i73.1

.lr.ph.i.i.i.i.i6.i73.1:                          ; preds = %.lr.ph.i.i.i.i.i6.i73.1.preheader, %.lr.ph.i.i.i.i.i6.i73.1
  %.09.i.i.i.i.i7.i74.1 = phi ptr [ %i.mh, %.lr.ph.i.i.i.i.i6.i73.1 ], [ %.09.i.i.i.i.i7.i74.1.ph, %.lr.ph.i.i.i.i.i6.i73.1.preheader ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i8.i75.1 = phi ptr [ %i.mg, %.lr.ph.i.i.i.i.i6.i73.1 ], [ %.sroa.04.08.i.i.i.i.i8.i75.1.ph, %.lr.ph.i.i.i.i.i6.i73.1.preheader ] ; 2 uses
  %i.mf = load double, ptr %.sroa.04.08.i.i.i.i.i8.i75.1, align 8, !tbaa !247
  store double %i.mf, ptr %.09.i.i.i.i.i7.i74.1, align 8, !tbaa !247
  %i.mg = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i8.i75.1, i64 8 ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i7.i74.1, i64 8 ; 2 uses
  %.not.i.i.i.i.i9.i76.1 = icmp eq ptr %i.mg, %i.lm
  br i1 %.not.i.i.i.i.i9.i76.1, label %_ZN9CenteringILi1EEC2E13CenteringType14ContinuityTypeRKSt6vectorI3LocILi1EESaIS5_EERKS3_I6VectorILi1Ed4FullESaISC_EE.exit78.1, label %.lr.ph.i.i.i.i.i6.i73.1, !llvm.loop !338

_ZNSt12_Vector_baseI6VectorILi1Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i71.thread.1: ; preds = %_ZNSt6vectorI3LocILi1EESaIS1_EEC2ERKS3_.exit.i67.1
  %i.mi = getelementptr inbounds nuw i8, ptr null, i64 %i.lq
  store i64 0, ptr %i.hy, align 8
  store ptr %i.mi, ptr %i.ia, align 8, !tbaa !246
  br label %_ZN9CenteringILi1EEC2E13CenteringType14ContinuityTypeRKSt6vectorI3LocILi1EESaIS5_EERKS3_I6VectorILi1Ed4FullESaISC_EE.exit78.1

_ZN9CenteringILi1EEC2E13CenteringType14ContinuityTypeRKSt6vectorI3LocILi1EESaIS5_EERKS3_I6VectorILi1Ed4FullESaISC_EE.exit78.1: ; preds = %.lr.ph.i.i.i.i.i6.i73.1, %middle.block327, %_ZNSt12_Vector_baseI6VectorILi1Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i71.thread.1
  %.0.lcssa.i.i.i.i.i10.i77.1 = phi ptr [ null, %_ZNSt12_Vector_baseI6VectorILi1Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i71.thread.1 ], [ %i.lz, %middle.block327 ], [ %i.mh, %.lr.ph.i.i.i.i.i6.i73.1 ]
  store ptr %.0.lcssa.i.i.i.i.i10.i77.1, ptr %i.hz, align 8, !tbaa !242
  %i.mj = load ptr, ptr @_ZN18CanonicalCenteringILi1EE17centering_table_mE, align 8, !tbaa !224
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 16
  %i.ml = load ptr, ptr %i.mk, align 8, !tbaa !227
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 8
  %i.mn = load ptr, ptr %i.mm, align 8, !tbaa !229 ; 3 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 56
  %i.mp = load i64, ptr %8, align 8
  store i64 %i.mp, ptr %i.mo, align 8
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mn, i64 64
  %i.mr = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI3LocILi1EESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.mq, ptr noundef nonnull align 8 dereferenceable(24) %i.hv) ; 0 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mn, i64 88
  %i.mt = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.ms, ptr noundef nonnull align 8 dereferenceable(24) %i.hy) ; 0 uses
  %i.mu = load ptr, ptr %i.hy, align 8, !tbaa !245 ; 3 uses
  %.not.i.i.i.i79.1 = icmp eq ptr %i.mu, null
  br i1 %.not.i.i.i.i79.1, label %_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EED2Ev.exit.i80.1, label %bb.z

bb.z:                                             ; preds = %_ZN9CenteringILi1EEC2E13CenteringType14ContinuityTypeRKSt6vectorI3LocILi1EESaIS5_EERKS3_I6VectorILi1Ed4FullESaISC_EE.exit78.1
  %i.mv = load ptr, ptr %i.ia, align 8, !tbaa !246
  %i.mw = ptrtoint ptr %i.mv to i64
  %i.mx = ptrtoint ptr %i.mu to i64
  %i.my = sub i64 %i.mw, %i.mx
  call void @_ZdlPvm(ptr noundef nonnull %i.mu, i64 noundef %i.my) #48
  br label %_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EED2Ev.exit.i80.1

_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EED2Ev.exit.i80.1: ; preds = %bb.z, %_ZN9CenteringILi1EEC2E13CenteringType14ContinuityTypeRKSt6vectorI3LocILi1EESaIS5_EERKS3_I6VectorILi1Ed4FullESaISC_EE.exit78.1
  %i.mz = load ptr, ptr %i.hv, align 8, !tbaa !234 ; 3 uses
  %.not.i.i.i1.i81.1 = icmp eq ptr %i.mz, null
  br i1 %.not.i.i.i1.i81.1, label %_ZN9CenteringILi1EED2Ev.exit82.1, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EED2Ev.exit.i80.1
  %i.na = load ptr, ptr %i.hx, align 8, !tbaa !235
  %i.nb = ptrtoint ptr %i.na to i64
  %i.nc = ptrtoint ptr %i.mz to i64
  %i.nd = sub i64 %i.nb, %i.nc
  call void @_ZdlPvm(ptr noundef nonnull %i.mz, i64 noundef %i.nd) #48
  br label %_ZN9CenteringILi1EED2Ev.exit82.1

_ZN9CenteringILi1EED2Ev.exit82.1:                 ; preds = %bb.aa, %_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EED2Ev.exit.i80.1
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #47
  %i.ne = load ptr, ptr %4, align 16, !tbaa !234  ; 2 uses
  %i.nf = load ptr, ptr %i.cd, align 8, !tbaa !231
  %.not.i.i91 = icmp eq ptr %i.nf, %i.ne
  br i1 %.not.i.i91, label %_ZNSt6vectorI3LocILi1EESaIS1_EE5clearEv.exit92, label %bb.af

bb.ab:                                            ; preds = %_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EE5clearEv.exit94.1
  %i.ng = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.nh = load ptr, ptr %i.ng, align 8, !tbaa !246
  %i.ni = ptrtoint ptr %i.nh to i64
  %i.nj = ptrtoint ptr %i.po to i64
  %i.nk = sub i64 %i.ni, %i.nj
  call void @_ZdlPvm(ptr noundef nonnull %i.po, i64 noundef %i.nk) #48
  br label %_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EED2Ev.exit.i84

_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EED2Ev.exit.i84: ; preds = %bb.ab, %_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EE5clearEv.exit94.1
  %i.nl = load ptr, ptr %i.pk, align 8, !tbaa !234 ; 3 uses
  %.not.i.i.i1.i85 = icmp eq ptr %i.nl, null
  br i1 %.not.i.i.i1.i85, label %_ZN9CenteringILi1EED2Ev.exit86, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EED2Ev.exit.i84
  %i.nm = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.nn = load ptr, ptr %i.nm, align 8, !tbaa !235
  %i.no = ptrtoint ptr %i.nn to i64
  %i.np = ptrtoint ptr %i.nl to i64
  %i.nq = sub i64 %i.no, %i.np
  call void @_ZdlPvm(ptr noundef nonnull %i.nl, i64 noundef %i.nq) #48
  br label %_ZN9CenteringILi1EED2Ev.exit86

_ZN9CenteringILi1EED2Ev.exit86:                   ; preds = %_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EED2Ev.exit.i84, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #47
  store i32 0, ptr %2, align 4, !tbaa !4
  store double 0.000000e+00, ptr %3, align 8, !tbaa !247
  call void @_ZN9CenteringILi1EE8addValueERK3LocILi1EERK6VectorILi1Ed4FullE(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.nr = load ptr, ptr @_ZN18CanonicalCenteringILi1EE17centering_table_mE, align 8, !tbaa !224
  %i.ns = load ptr, ptr %i.nr, align 8, !tbaa !227
  %i.nt = load ptr, ptr %i.ns, align 8, !tbaa !229 ; 3 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 56
  %i.nv = load i64, ptr %1, align 8
  store i64 %i.nv, ptr %i.nu, align 8
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nt, i64 64
  %i.nx = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI3LocILi1EESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.nw, ptr noundef nonnull align 8 dereferenceable(24) %i.a) ; 0 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nt, i64 88
  %i.nz = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.ny, ptr noundef nonnull align 8 dereferenceable(24) %i.at) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #47
  store i32 0, ptr %10, align 8, !tbaa !312
  %i.oa = getelementptr inbounds nuw i8, ptr %10, i64 4
  store i32 1, ptr %i.oa, align 4, !tbaa !322
  %i.ob = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ob, i8 0, i64 48, i1 false)
  %i.oc = load i64, ptr %10, align 8
  store i64 %i.oc, ptr %1, align 8
  %i.od = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI3LocILi1EESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.ob) ; 0 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  %i.of = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.at, ptr noundef nonnull align 8 dereferenceable(24) %i.oe) ; 0 uses
  %i.og = load ptr, ptr %i.oe, align 8, !tbaa !245 ; 3 uses
  %.not.i.i.i.i87 = icmp eq ptr %i.og, null
  br i1 %.not.i.i.i.i87, label %_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EED2Ev.exit.i88, label %bb.ad

bb.ad:                                            ; preds = %_ZN9CenteringILi1EED2Ev.exit86
  %i.oh = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.oi = load ptr, ptr %i.oh, align 8, !tbaa !246
  %i.oj = ptrtoint ptr %i.oi to i64
  %i.ok = ptrtoint ptr %i.og to i64
  %i.ol = sub i64 %i.oj, %i.ok
  call void @_ZdlPvm(ptr noundef nonnull %i.og, i64 noundef %i.ol) #48
  br label %_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EED2Ev.exit.i88

_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EED2Ev.exit.i88: ; preds = %bb.ad, %_ZN9CenteringILi1EED2Ev.exit86
  %i.om = load ptr, ptr %i.ob, align 8, !tbaa !234 ; 3 uses
  %.not.i.i.i1.i89 = icmp eq ptr %i.om, null
  br i1 %.not.i.i.i1.i89, label %_ZN9CenteringILi1EED2Ev.exit90, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EED2Ev.exit.i88
  %i.on = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.oo = load ptr, ptr %i.on, align 8, !tbaa !235
  %i.op = ptrtoint ptr %i.oo to i64
  %i.oq = ptrtoint ptr %i.om to i64
  %i.or = sub i64 %i.op, %i.oq
  call void @_ZdlPvm(ptr noundef nonnull %i.om, i64 noundef %i.or) #48
  br label %_ZN9CenteringILi1EED2Ev.exit90

_ZN9CenteringILi1EED2Ev.exit90:                   ; preds = %_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EED2Ev.exit.i88, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #47
  store i32 0, ptr %2, align 4, !tbaa !4
  store double 0.000000e+00, ptr %3, align 8, !tbaa !247
  call void @_ZN9CenteringILi1EE8addValueERK3LocILi1EERK6VectorILi1Ed4FullE(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 8 dereferenceable(8) %3)
  store double 1.000000e+00, ptr %3, align 8, !tbaa !247
  call void @_ZN9CenteringILi1EE8addValueERK3LocILi1EERK6VectorILi1Ed4FullE(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.os = load ptr, ptr @_ZN18CanonicalCenteringILi1EE17centering_table_mE, align 8, !tbaa !224
  %i.ot = load ptr, ptr %i.os, align 8, !tbaa !227
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 8
  %i.ov = load ptr, ptr %i.ou, align 8, !tbaa !229 ; 3 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 56
  %i.ox = load i64, ptr %1, align 8
  store i64 %i.ox, ptr %i.ow, align 8
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ov, i64 64
  %i.oz = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI3LocILi1EESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.oy, ptr noundef nonnull align 8 dereferenceable(24) %i.a) ; 0 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %i.ov, i64 88
  %i.pb = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.pa, ptr noundef nonnull align 8 dereferenceable(24) %i.at) ; 0 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.pd = load ptr, ptr %i.pc, align 8, !tbaa !245 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.pd, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EED2Ev.exit, label %bb.aj

bb.af:                                            ; preds = %_ZN9CenteringILi1EED2Ev.exit82.1
  store ptr %i.ne, ptr %i.cd, align 8, !tbaa !231
  br label %_ZNSt6vectorI3LocILi1EESaIS1_EE5clearEv.exit92

_ZNSt6vectorI3LocILi1EESaIS1_EE5clearEv.exit92:   ; preds = %_ZN9CenteringILi1EED2Ev.exit82.1, %bb.af
  %i.pe = load ptr, ptr %5, align 16, !tbaa !245  ; 2 uses
  %i.pf = load ptr, ptr %i.db, align 8, !tbaa !242
  %.not.i.i93 = icmp eq ptr %i.pf, %i.pe
  br i1 %.not.i.i93, label %_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EE5clearEv.exit94, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorI3LocILi1EESaIS1_EE5clearEv.exit92
  store ptr %i.pe, ptr %i.db, align 8, !tbaa !242
  br label %_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EE5clearEv.exit94

_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EE5clearEv.exit94: ; preds = %_ZNSt6vectorI3LocILi1EESaIS1_EE5clearEv.exit92, %bb.ag
  %i.pg = load ptr, ptr %i.bs, align 8, !tbaa !234 ; 2 uses
  %i.ph = load ptr, ptr %i.et, align 16, !tbaa !231
  %.not.i.i91.1 = icmp eq ptr %i.ph, %i.pg
  br i1 %.not.i.i91.1, label %_ZNSt6vectorI3LocILi1EESaIS1_EE5clearEv.exit92.1, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EE5clearEv.exit94
  store ptr %i.pg, ptr %i.et, align 16, !tbaa !231
  br label %_ZNSt6vectorI3LocILi1EESaIS1_EE5clearEv.exit92.1

_ZNSt6vectorI3LocILi1EESaIS1_EE5clearEv.exit92.1: ; preds = %bb.ah, %_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EE5clearEv.exit94
  %i.pi = load ptr, ptr %i.bu, align 8, !tbaa !245 ; 2 uses
  %i.pj = load ptr, ptr %i.fr, align 16, !tbaa !242
  %.not.i.i93.1 = icmp eq ptr %i.pj, %i.pi
  br i1 %.not.i.i93.1, label %_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EE5clearEv.exit94.1, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorI3LocILi1EESaIS1_EE5clearEv.exit92.1
  store ptr %i.pi, ptr %i.fr, align 16, !tbaa !242
  br label %_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EE5clearEv.exit94.1

_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EE5clearEv.exit94.1: ; preds = %bb.ai, %_ZNSt6vectorI3LocILi1EESaIS1_EE5clearEv.exit92.1
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #47
  %i.pk = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %9, i8 0, i64 56, i1 false)
  store i64 0, ptr %1, align 8
  %i.pl = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI3LocILi1EESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.pk) ; 0 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 2 uses
  %i.pn = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.at, ptr noundef nonnull align 8 dereferenceable(24) %i.pm) ; 0 uses
  %i.po = load ptr, ptr %i.pm, align 8, !tbaa !245 ; 3 uses
  %.not.i.i.i.i83 = icmp eq ptr %i.po, null
  br i1 %.not.i.i.i.i83, label %_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EED2Ev.exit.i84, label %bb.ab

bb.aj:                                            ; preds = %_ZN9CenteringILi1EED2Ev.exit90
  %i.pp = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.pq = load ptr, ptr %i.pp, align 8, !tbaa !246
  %i.pr = ptrtoint ptr %i.pq to i64
  %i.ps = ptrtoint ptr %i.pd to i64
  %i.pt = sub i64 %i.pr, %i.ps
  call void @_ZdlPvm(ptr noundef nonnull %i.pd, i64 noundef %i.pt) #48
  br label %_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EED2Ev.exit

_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EED2Ev.exit: ; preds = %_ZN9CenteringILi1EED2Ev.exit90, %bb.aj
  %i.pu = load ptr, ptr %5, align 16, !tbaa !245  ; 3 uses
  %.not.i.i.i.1 = icmp eq ptr %i.pu, null
  br i1 %.not.i.i.i.1, label %_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EED2Ev.exit.1, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EED2Ev.exit
  %i.pv = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.pw = load ptr, ptr %i.pv, align 16, !tbaa !246
  %i.px = ptrtoint ptr %i.pw to i64
  %i.py = ptrtoint ptr %i.pu to i64
  %i.pz = sub i64 %i.px, %i.py
  call void @_ZdlPvm(ptr noundef nonnull %i.pu, i64 noundef %i.pz) #48
  br label %_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EED2Ev.exit.1

_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EED2Ev.exit.1: ; preds = %bb.ak, %_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #47
  %i.qa = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.qb = load ptr, ptr %i.qa, align 8, !tbaa !234 ; 3 uses
  %.not.i.i.i95 = icmp eq ptr %i.qb, null
  br i1 %.not.i.i.i95, label %_ZNSt6vectorI3LocILi1EESaIS1_EED2Ev.exit, label %bb.al

bb.al:                                            ; preds = %_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EED2Ev.exit.1
  %i.qc = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.qd = load ptr, ptr %i.qc, align 8, !tbaa !235
  %i.qe = ptrtoint ptr %i.qd to i64
  %i.qf = ptrtoint ptr %i.qb to i64
  %i.qg = sub i64 %i.qe, %i.qf
  call void @_ZdlPvm(ptr noundef nonnull %i.qb, i64 noundef %i.qg) #48
  br label %_ZNSt6vectorI3LocILi1EESaIS1_EED2Ev.exit

_ZNSt6vectorI3LocILi1EESaIS1_EED2Ev.exit:         ; preds = %_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EED2Ev.exit.1, %bb.al
  %i.qh = load ptr, ptr %4, align 16, !tbaa !234  ; 3 uses
  %.not.i.i.i95.1 = icmp eq ptr %i.qh, null
  br i1 %.not.i.i.i95.1, label %_ZNSt6vectorI3LocILi1EESaIS1_EED2Ev.exit.1, label %bb.am

bb.am:                                            ; preds = %_ZNSt6vectorI3LocILi1EESaIS1_EED2Ev.exit
  %i.qi = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.qj = load ptr, ptr %i.qi, align 16, !tbaa !235
  %i.qk = ptrtoint ptr %i.qj to i64
  %i.ql = ptrtoint ptr %i.qh to i64
  %i.qm = sub i64 %i.qk, %i.ql
  call void @_ZdlPvm(ptr noundef nonnull %i.qh, i64 noundef %i.qm) #48
  br label %_ZNSt6vectorI3LocILi1EESaIS1_EED2Ev.exit.1

_ZNSt6vectorI3LocILi1EESaIS1_EED2Ev.exit.1:       ; preds = %bb.am, %_ZNSt6vectorI3LocILi1EESaIS1_EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #47
  %i.qn = load ptr, ptr %i.at, align 8, !tbaa !245 ; 3 uses
  %.not.i.i.i.i96 = icmp eq ptr %i.qn, null
  br i1 %.not.i.i.i.i96, label %_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EED2Ev.exit.i97, label %bb.an

bb.an:                                            ; preds = %_ZNSt6vectorI3LocILi1EESaIS1_EED2Ev.exit.1
  %i.qo = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.qp = load ptr, ptr %i.qo, align 8, !tbaa !246
  %i.qq = ptrtoint ptr %i.qp to i64
  %i.qr = ptrtoint ptr %i.qn to i64
  %i.qs = sub i64 %i.qq, %i.qr
  call void @_ZdlPvm(ptr noundef nonnull %i.qn, i64 noundef %i.qs) #48
  br label %_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EED2Ev.exit.i97

_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EED2Ev.exit.i97: ; preds = %bb.an, %_ZNSt6vectorI3LocILi1EESaIS1_EED2Ev.exit.1
  %i.qt = load ptr, ptr %i.a, align 8, !tbaa !234 ; 3 uses
  %.not.i.i.i1.i98 = icmp eq ptr %i.qt, null
  br i1 %.not.i.i.i1.i98, label %_ZN9CenteringILi1EED2Ev.exit99, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EED2Ev.exit.i97
  %i.qu = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.qv = load ptr, ptr %i.qu, align 8, !tbaa !235
  %i.qw = ptrtoint ptr %i.qv to i64
  %i.qx = ptrtoint ptr %i.qt to i64
  %i.qy = sub i64 %i.qw, %i.qx
  call void @_ZdlPvm(ptr noundef nonnull %i.qt, i64 noundef %i.qy) #48
  br label %_ZN9CenteringILi1EED2Ev.exit99

_ZN9CenteringILi1EED2Ev.exit99:                   ; preds = %_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EED2Ev.exit.i97, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #47
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9CenteringILi1EE8addValueERK3LocILi1EERK6VectorILi1Ed4FullE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !231  ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !235
  %.not.i = icmp eq ptr %i.c, %i.e
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %1, align 4, !tbaa !236
  store i32 %i.f, ptr %i.c, align 4, !tbaa !4
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store ptr %i.g, ptr %i.b, align 8, !tbaa !231
  br label %_ZNSt6vectorI3LocILi1EESaIS1_EE9push_backERKS1_.exit

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !234  ; 7 uses
  %i.i = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.j = ptrtoint ptr %i.h to i64                 ; 3 uses
  %i.k = sub i64 %i.i, %i.j                       ; 4 uses
  %i.l = icmp eq i64 %i.k, 9223372036854775804
  br i1 %i.l, label %bb.d, label %_ZNKSt6vectorI3LocILi1EESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.189) #46
  unreachable

_ZNKSt6vectorI3LocILi1EESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.m = ashr exact i64 %i.k, 2                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.m, i64 1)
  %i.n = add nsw i64 %.sroa.speculated.i.i.i, %i.m ; 2 uses
  %i.o = icmp ult i64 %i.n, %i.m
  %i.p = tail call i64 @llvm.umin.i64(i64 %i.n, i64 2305843009213693951)
  %i.q = select i1 %i.o, i64 2305843009213693951, i64 %i.p ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.q, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.r = shl nuw nsw i64 %i.q, 2
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #45 ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.k
  %i.u = load i32, ptr %1, align 4, !tbaa !236
  store i32 %i.u, ptr %i.t, align 4, !tbaa !4
  %.not9.i.i.i.i.i.i.i = icmp eq ptr %i.h, %i.c
  br i1 %.not9.i.i.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi1EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZNKSt6vectorI3LocILi1EESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.v = ptrtoaddr ptr %i.s to i64
  %3 = sub i64 %i.i, %i.j
  %4 = add i64 %3, -4                             ; 2 uses
  %i.w = lshr i64 %4, 2
  %i.x = add nuw nsw i64 %i.w, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %4, 28
  %i.y = sub i64 %i.v, %i.j
  %diff.check = icmp ult i64 %i.y, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.preheader47, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.x, 9223372036854775800      ; 3 uses
  %i.z = shl i64 %n.vec, 2                        ; 2 uses
  %i.aa = getelementptr i8, ptr %i.s, i64 %i.z    ; 2 uses
  %i.ab = getelementptr i8, ptr %i.h, i64 %i.z
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ac = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.s, i64 %i.ac ; 2 uses
  %next.gep24 = getelementptr i8, ptr %i.h, i64 %i.ac ; 2 uses
  %i.ad = getelementptr i8, ptr %next.gep24, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep24, align 4, !tbaa !236
  %wide.load25 = load <4 x i32>, ptr %i.ad, align 4, !tbaa !236
  %i.ae = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !4
  store <4 x i32> %wide.load25, ptr %i.ae, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !339

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.x, %n.vec
  br i1 %cmp.n, label %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi1EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader47

.lr.ph.i.i.i.i.i.i.i.preheader47:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.011.i.i.i.i.i.i.i.ph = phi ptr [ %i.s, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.aa, %middle.block ]
  %.0810.i.i.i.i.i.i.i.ph = phi ptr [ %i.h, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ab, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader47, %.lr.ph.i.i.i.i.i.i.i
  %.011.i.i.i.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.i.i.i ], [ %.011.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader47 ] ; 2 uses
  %.0810.i.i.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i.i.i ], [ %.0810.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader47 ] ; 2 uses
  %i.ag = load i32, ptr %.0810.i.i.i.i.i.i.i, align 4, !tbaa !236
  store i32 %i.ag, ptr %.011.i.i.i.i.i.i.i, align 4, !tbaa !4
  %i.ah = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ah, %i.c
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi1EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !340

_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi1EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorI3LocILi1EESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.s, %_ZNKSt6vectorI3LocILi1EESaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.aa, %middle.block ], [ %i.ai, %.lr.ph.i.i.i.i.i.i.i ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 4
  %.not.i25.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i25.i.i, label %_ZNSt6vectorI3LocILi1EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi1EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.k) #48
  br label %_ZNSt6vectorI3LocILi1EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorI3LocILi1EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.e, %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi1EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i.i
  store ptr %i.s, ptr %i.a, align 8, !tbaa !234
  store ptr %i.aj, ptr %i.b, align 8, !tbaa !231
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.q
  store ptr %i.ak, ptr %i.d, align 8, !tbaa !235
  br label %_ZNSt6vectorI3LocILi1EESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorI3LocILi1EESaIS1_EE9push_backERKS1_.exit: ; preds = %bb.b, %_ZNSt6vectorI3LocILi1EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !242 ; 6 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !246
  %.not.i3 = icmp eq ptr %i.an, %i.ap
  br i1 %.not.i3, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorI3LocILi1EESaIS1_EE9push_backERKS1_.exit
  %i.aq = load double, ptr %2, align 8, !tbaa !247
  store double %i.aq, ptr %i.an, align 8, !tbaa !247
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %i.ar, ptr %i.am, align 8, !tbaa !242
  br label %_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EE9push_backERKS2_.exit

bb.g:                                             ; preds = %_ZNSt6vectorI3LocILi1EESaIS1_EE9push_backERKS1_.exit
  %i.as = load ptr, ptr %i.al, align 8, !tbaa !245 ; 7 uses
  %i.at = ptrtoint ptr %i.an to i64               ; 2 uses
  %i.au = ptrtoint ptr %i.as to i64               ; 3 uses
  %i.av = sub i64 %i.at, %i.au                    ; 4 uses
  %i.aw = icmp eq i64 %i.av, 9223372036854775800
  br i1 %i.aw, label %bb.h, label %_ZNKSt6vectorI6VectorILi1Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.189) #46
  unreachable

_ZNKSt6vectorI6VectorILi1Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %i.ax = ashr exact i64 %i.av, 3                 ; 3 uses
  %.sroa.speculated.i.i.i4 = tail call i64 @llvm.umax.i64(i64 %i.ax, i64 1)
  %i.ay = add nsw i64 %.sroa.speculated.i.i.i4, %i.ax ; 2 uses
  %i.az = icmp ult i64 %i.ay, %i.ax
  %i.ba = tail call i64 @llvm.umin.i64(i64 %i.ay, i64 1152921504606846975)
  %i.bb = select i1 %i.az, i64 1152921504606846975, i64 %i.ba ; 3 uses
  %.not.i.i.i5 = icmp ne i64 %i.bb, 0
  tail call void @llvm.assume(i1 %.not.i.i.i5)
  %i.bc = shl nuw nsw i64 %i.bb, 3
  %i.bd = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bc) #45 ; 8 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.av
  %i.bf = load double, ptr %2, align 8, !tbaa !247
  store double %i.bf, ptr %i.be, align 8, !tbaa !247
  %.not9.i.i.i.i.i.i.i6 = icmp eq ptr %i.as, %i.an
  br i1 %.not9.i.i.i.i.i.i.i6, label %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi1Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i.i, label %.lr.ph.i.i.i.i.i.i.i7.preheader

.lr.ph.i.i.i.i.i.i.i7.preheader:                  ; preds = %_ZNKSt6vectorI6VectorILi1Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.bg = ptrtoaddr ptr %i.bd to i64
  %5 = sub i64 %i.at, %i.au
  %6 = add i64 %5, -8                             ; 2 uses
  %i.bh = lshr i64 %6, 3
  %i.bi = add nuw nsw i64 %i.bh, 1                ; 2 uses
  %min.iters.check30 = icmp ult i64 %6, 56
  %i.bj = sub i64 %i.bg, %i.au
  %diff.check28 = icmp ult i64 %i.bj, 32
  %or.cond45 = or i1 %min.iters.check30, %diff.check28
  br i1 %or.cond45, label %.lr.ph.i.i.i.i.i.i.i7.preheader46, label %vector.ph31

vector.ph31:                                      ; preds = %.lr.ph.i.i.i.i.i.i.i7.preheader
  %n.vec33 = and i64 %i.bi, 4611686018427387900   ; 3 uses
  %i.bk = shl i64 %n.vec33, 3                     ; 2 uses
  %i.bl = getelementptr i8, ptr %i.bd, i64 %i.bk  ; 2 uses
  %i.bm = getelementptr i8, ptr %i.as, i64 %i.bk
  br label %vector.body34

vector.body34:                                    ; preds = %vector.body34, %vector.ph31
  %index35 = phi i64 [ 0, %vector.ph31 ], [ %index.next40, %vector.body34 ] ; 2 uses
  %i.bn = shl i64 %index35, 3                     ; 2 uses
  %next.gep36 = getelementptr i8, ptr %i.bd, i64 %i.bn ; 2 uses
  %next.gep37 = getelementptr i8, ptr %i.as, i64 %i.bn ; 2 uses
  %i.bo = getelementptr i8, ptr %next.gep37, i64 16
  %wide.load38 = load <2 x double>, ptr %next.gep37, align 8, !tbaa !247
  %wide.load39 = load <2 x double>, ptr %i.bo, align 8, !tbaa !247
  %i.bp = getelementptr i8, ptr %next.gep36, i64 16
  store <2 x double> %wide.load38, ptr %next.gep36, align 8, !tbaa !247
  store <2 x double> %wide.load39, ptr %i.bp, align 8, !tbaa !247
  %index.next40 = add nuw i64 %index35, 4         ; 2 uses
  %i.bq = icmp eq i64 %index.next40, %n.vec33
  br i1 %i.bq, label %middle.block41, label %vector.body34, !llvm.loop !341

middle.block41:                                   ; preds = %vector.body34
  %cmp.n42 = icmp eq i64 %i.bi, %n.vec33
  br i1 %cmp.n42, label %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi1Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i.i, label %.lr.ph.i.i.i.i.i.i.i7.preheader46

.lr.ph.i.i.i.i.i.i.i7.preheader46:                ; preds = %.lr.ph.i.i.i.i.i.i.i7.preheader, %middle.block41
  %.011.i.i.i.i.i.i.i8.ph = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.i.i.i7.preheader ], [ %i.bl, %middle.block41 ]
  %.0810.i.i.i.i.i.i.i9.ph = phi ptr [ %i.as, %.lr.ph.i.i.i.i.i.i.i7.preheader ], [ %i.bm, %middle.block41 ]
  br label %.lr.ph.i.i.i.i.i.i.i7

.lr.ph.i.i.i.i.i.i.i7:                            ; preds = %.lr.ph.i.i.i.i.i.i.i7.preheader46, %.lr.ph.i.i.i.i.i.i.i7
  %.011.i.i.i.i.i.i.i8 = phi ptr [ %i.bt, %.lr.ph.i.i.i.i.i.i.i7 ], [ %.011.i.i.i.i.i.i.i8.ph, %.lr.ph.i.i.i.i.i.i.i7.preheader46 ] ; 2 uses
  %.0810.i.i.i.i.i.i.i9 = phi ptr [ %i.bs, %.lr.ph.i.i.i.i.i.i.i7 ], [ %.0810.i.i.i.i.i.i.i9.ph, %.lr.ph.i.i.i.i.i.i.i7.preheader46 ] ; 2 uses
  %i.br = load double, ptr %.0810.i.i.i.i.i.i.i9, align 8, !tbaa !247
  store double %i.br, ptr %.011.i.i.i.i.i.i.i8, align 8, !tbaa !247
  %i.bs = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i.i9, i64 8 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i.i8, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i10 = icmp eq ptr %i.bs, %i.an
  br i1 %.not.i.i.i.i.i.i.i10, label %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi1Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i.i, label %.lr.ph.i.i.i.i.i.i.i7, !llvm.loop !342

_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi1Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i7, %middle.block41, %_ZNKSt6vectorI6VectorILi1Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i.i.i11 = phi ptr [ %i.bd, %_ZNKSt6vectorI6VectorILi1Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.bl, %middle.block41 ], [ %i.bt, %.lr.ph.i.i.i.i.i.i.i7 ]
  %i.bu = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i11, i64 8
  %.not.i25.i.i12 = icmp eq ptr %i.as, null
  br i1 %.not.i25.i.i12, label %_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi1Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.as, i64 noundef %i.av) #48
  br label %_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.i, %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi1Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i.i
  store ptr %i.bd, ptr %i.al, align 8, !tbaa !245
  store ptr %i.bu, ptr %i.am, align 8, !tbaa !242
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.bb
  store ptr %i.bv, ptr %i.ao, align 8, !tbaa !246
  br label %_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EE9push_backERKS2_.exit: ; preds = %bb.f, %_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr dso_local void @_ZN18CanonicalCenteringILi1EE8addValueERSt6vectorI3LocILi1EESaIS3_EERS1_I6VectorILi1Ed4FullESaIS9_EERKS3_RKS9_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !231  ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !235
  %.not.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %2, align 4, !tbaa !236
  store i32 %i.e, ptr %i.b, align 4, !tbaa !4
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store ptr %i.f, ptr %i.a, align 8, !tbaa !231
  br label %_ZNSt6vectorI3LocILi1EESaIS1_EE9push_backERKS1_.exit

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !234    ; 7 uses
  %i.h = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64                 ; 3 uses
  %i.j = sub i64 %i.h, %i.i                       ; 4 uses
  %i.k = icmp eq i64 %i.j, 9223372036854775804
  br i1 %i.k, label %bb.d, label %_ZNKSt6vectorI3LocILi1EESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.189) #46
  unreachable

_ZNKSt6vectorI3LocILi1EESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.l = ashr exact i64 %i.j, 2                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.l, i64 1)
  %i.m = add nsw i64 %.sroa.speculated.i.i.i, %i.l ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.l
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.m, i64 2305843009213693951)
  %i.p = select i1 %i.n, i64 2305843009213693951, i64 %i.o ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.p, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.q = shl nuw nsw i64 %i.p, 2
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #45 ; 8 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.j
  %i.t = load i32, ptr %2, align 4, !tbaa !236
  store i32 %i.t, ptr %i.s, align 4, !tbaa !4
  %.not9.i.i.i.i.i.i.i = icmp eq ptr %i.g, %i.b
  br i1 %.not9.i.i.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi1EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZNKSt6vectorI3LocILi1EESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.u = ptrtoaddr ptr %i.r to i64
  %4 = sub i64 %i.h, %i.i
  %5 = add i64 %4, -4                             ; 2 uses
  %i.v = lshr i64 %5, 2
  %i.w = add nuw nsw i64 %i.v, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %5, 28
  %i.x = sub i64 %i.u, %i.i
  %diff.check = icmp ult i64 %i.x, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.preheader48, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.w, 9223372036854775800      ; 3 uses
  %i.y = shl i64 %n.vec, 2                        ; 2 uses
  %i.z = getelementptr i8, ptr %i.r, i64 %i.y     ; 2 uses
  %i.aa = getelementptr i8, ptr %i.g, i64 %i.y
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ab = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.r, i64 %i.ab ; 2 uses
  %next.gep25 = getelementptr i8, ptr %i.g, i64 %i.ab ; 2 uses
  %i.ac = getelementptr i8, ptr %next.gep25, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep25, align 4, !tbaa !236
  %wide.load26 = load <4 x i32>, ptr %i.ac, align 4, !tbaa !236
  %i.ad = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !4
  store <4 x i32> %wide.load26, ptr %i.ad, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !343

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.w, %n.vec
  br i1 %cmp.n, label %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi1EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader48

.lr.ph.i.i.i.i.i.i.i.preheader48:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.011.i.i.i.i.i.i.i.ph = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.z, %middle.block ]
  %.0810.i.i.i.i.i.i.i.ph = phi ptr [ %i.g, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.aa, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader48, %.lr.ph.i.i.i.i.i.i.i
  %.011.i.i.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i.i.i ], [ %.011.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader48 ] ; 2 uses
  %.0810.i.i.i.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i.i.i ], [ %.0810.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader48 ] ; 2 uses
  %i.af = load i32, ptr %.0810.i.i.i.i.i.i.i, align 4, !tbaa !236
  store i32 %i.af, ptr %.011.i.i.i.i.i.i.i, align 4, !tbaa !4
  %i.ag = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ag, %i.b
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi1EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !344

_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi1EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorI3LocILi1EESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.r, %_ZNKSt6vectorI3LocILi1EESaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.z, %middle.block ], [ %i.ah, %.lr.ph.i.i.i.i.i.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 4
  %.not.i25.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i25.i.i, label %_ZNSt6vectorI3LocILi1EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi1EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.j) #48
  br label %_ZNSt6vectorI3LocILi1EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorI3LocILi1EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.e, %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi1EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i.i
  store ptr %i.r, ptr %0, align 8, !tbaa !234
  store ptr %i.ai, ptr %i.a, align 8, !tbaa !231
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.p
  store ptr %i.aj, ptr %i.c, align 8, !tbaa !235
  br label %_ZNSt6vectorI3LocILi1EESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorI3LocILi1EESaIS1_EE9push_backERKS1_.exit: ; preds = %bb.b, %_ZNSt6vectorI3LocILi1EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !242 ; 6 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !246
  %.not.i4 = icmp eq ptr %i.al, %i.an
  br i1 %.not.i4, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorI3LocILi1EESaIS1_EE9push_backERKS1_.exit
  %i.ao = load double, ptr %3, align 8, !tbaa !247
  store double %i.ao, ptr %i.al, align 8, !tbaa !247
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr %i.ap, ptr %i.ak, align 8, !tbaa !242
  br label %_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EE9push_backERKS2_.exit

bb.g:                                             ; preds = %_ZNSt6vectorI3LocILi1EESaIS1_EE9push_backERKS1_.exit
  %i.aq = load ptr, ptr %1, align 8, !tbaa !245   ; 7 uses
  %i.ar = ptrtoint ptr %i.al to i64               ; 2 uses
  %i.as = ptrtoint ptr %i.aq to i64               ; 3 uses
  %i.at = sub i64 %i.ar, %i.as                    ; 4 uses
  %i.au = icmp eq i64 %i.at, 9223372036854775800
  br i1 %i.au, label %bb.h, label %_ZNKSt6vectorI6VectorILi1Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.189) #46
  unreachable

_ZNKSt6vectorI6VectorILi1Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %i.av = ashr exact i64 %i.at, 3                 ; 3 uses
  %.sroa.speculated.i.i.i5 = tail call i64 @llvm.umax.i64(i64 %i.av, i64 1)
  %i.aw = add nsw i64 %.sroa.speculated.i.i.i5, %i.av ; 2 uses
  %i.ax = icmp ult i64 %i.aw, %i.av
  %i.ay = tail call i64 @llvm.umin.i64(i64 %i.aw, i64 1152921504606846975)
  %i.az = select i1 %i.ax, i64 1152921504606846975, i64 %i.ay ; 3 uses
  %.not.i.i.i6 = icmp ne i64 %i.az, 0
  tail call void @llvm.assume(i1 %.not.i.i.i6)
  %i.ba = shl nuw nsw i64 %i.az, 3
  %i.bb = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ba) #45 ; 8 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.at
  %i.bd = load double, ptr %3, align 8, !tbaa !247
  store double %i.bd, ptr %i.bc, align 8, !tbaa !247
  %.not9.i.i.i.i.i.i.i7 = icmp eq ptr %i.aq, %i.al
  br i1 %.not9.i.i.i.i.i.i.i7, label %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi1Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i.i, label %.lr.ph.i.i.i.i.i.i.i8.preheader

.lr.ph.i.i.i.i.i.i.i8.preheader:                  ; preds = %_ZNKSt6vectorI6VectorILi1Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.be = ptrtoaddr ptr %i.bb to i64
  %6 = sub i64 %i.ar, %i.as
  %7 = add i64 %6, -8                             ; 2 uses
  %i.bf = lshr i64 %7, 3
  %i.bg = add nuw nsw i64 %i.bf, 1                ; 2 uses
  %min.iters.check31 = icmp ult i64 %7, 56
  %i.bh = sub i64 %i.be, %i.as
  %diff.check29 = icmp ult i64 %i.bh, 32
  %or.cond46 = or i1 %min.iters.check31, %diff.check29
  br i1 %or.cond46, label %.lr.ph.i.i.i.i.i.i.i8.preheader47, label %vector.ph32

vector.ph32:                                      ; preds = %.lr.ph.i.i.i.i.i.i.i8.preheader
  %n.vec34 = and i64 %i.bg, 4611686018427387900   ; 3 uses
  %i.bi = shl i64 %n.vec34, 3                     ; 2 uses
  %i.bj = getelementptr i8, ptr %i.bb, i64 %i.bi  ; 2 uses
  %i.bk = getelementptr i8, ptr %i.aq, i64 %i.bi
  br label %vector.body35

vector.body35:                                    ; preds = %vector.body35, %vector.ph32
  %index36 = phi i64 [ 0, %vector.ph32 ], [ %index.next41, %vector.body35 ] ; 2 uses
  %i.bl = shl i64 %index36, 3                     ; 2 uses
  %next.gep37 = getelementptr i8, ptr %i.bb, i64 %i.bl ; 2 uses
  %next.gep38 = getelementptr i8, ptr %i.aq, i64 %i.bl ; 2 uses
  %i.bm = getelementptr i8, ptr %next.gep38, i64 16
  %wide.load39 = load <2 x double>, ptr %next.gep38, align 8, !tbaa !247
  %wide.load40 = load <2 x double>, ptr %i.bm, align 8, !tbaa !247
  %i.bn = getelementptr i8, ptr %next.gep37, i64 16
  store <2 x double> %wide.load39, ptr %next.gep37, align 8, !tbaa !247
  store <2 x double> %wide.load40, ptr %i.bn, align 8, !tbaa !247
  %index.next41 = add nuw i64 %index36, 4         ; 2 uses
  %i.bo = icmp eq i64 %index.next41, %n.vec34
  br i1 %i.bo, label %middle.block42, label %vector.body35, !llvm.loop !345

middle.block42:                                   ; preds = %vector.body35
  %cmp.n43 = icmp eq i64 %i.bg, %n.vec34
  br i1 %cmp.n43, label %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi1Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i.i, label %.lr.ph.i.i.i.i.i.i.i8.preheader47

.lr.ph.i.i.i.i.i.i.i8.preheader47:                ; preds = %.lr.ph.i.i.i.i.i.i.i8.preheader, %middle.block42
  %.011.i.i.i.i.i.i.i9.ph = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i.i.i8.preheader ], [ %i.bj, %middle.block42 ]
  %.0810.i.i.i.i.i.i.i10.ph = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i.i.i8.preheader ], [ %i.bk, %middle.block42 ]
  br label %.lr.ph.i.i.i.i.i.i.i8

.lr.ph.i.i.i.i.i.i.i8:                            ; preds = %.lr.ph.i.i.i.i.i.i.i8.preheader47, %.lr.ph.i.i.i.i.i.i.i8
  %.011.i.i.i.i.i.i.i9 = phi ptr [ %i.br, %.lr.ph.i.i.i.i.i.i.i8 ], [ %.011.i.i.i.i.i.i.i9.ph, %.lr.ph.i.i.i.i.i.i.i8.preheader47 ] ; 2 uses
  %.0810.i.i.i.i.i.i.i10 = phi ptr [ %i.bq, %.lr.ph.i.i.i.i.i.i.i8 ], [ %.0810.i.i.i.i.i.i.i10.ph, %.lr.ph.i.i.i.i.i.i.i8.preheader47 ] ; 2 uses
  %i.bp = load double, ptr %.0810.i.i.i.i.i.i.i10, align 8, !tbaa !247
  store double %i.bp, ptr %.011.i.i.i.i.i.i.i9, align 8, !tbaa !247
  %i.bq = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i.i10, i64 8 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i.i9, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i11 = icmp eq ptr %i.bq, %i.al
  br i1 %.not.i.i.i.i.i.i.i11, label %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi1Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i.i, label %.lr.ph.i.i.i.i.i.i.i8, !llvm.loop !346

_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi1Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i8, %middle.block42, %_ZNKSt6vectorI6VectorILi1Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i.i.i12 = phi ptr [ %i.bb, %_ZNKSt6vectorI6VectorILi1Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.bj, %middle.block42 ], [ %i.br, %.lr.ph.i.i.i.i.i.i.i8 ]
  %i.bs = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i12, i64 8
  %.not.i25.i.i13 = icmp eq ptr %i.aq, null
  br i1 %.not.i25.i.i13, label %_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi1Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef %i.at) #48
  br label %_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.i, %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi1Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i.i
  store ptr %i.bb, ptr %1, align 8, !tbaa !245
  store ptr %i.bs, ptr %i.ak, align 8, !tbaa !242
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.az
  store ptr %i.bt, ptr %i.am, align 8, !tbaa !246
  br label %_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EE9push_backERKS2_.exit: ; preds = %bb.f, %_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI3LocILi1EESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !231  ; 4 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !234    ; 10 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 6 uses
  %i.f = sub i64 %i.d, %i.e                       ; 6 uses
  %i.g = ashr exact i64 %i.f, 2                   ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !235
  %i.j = load ptr, ptr %0, align 8, !tbaa !234    ; 15 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64                 ; 6 uses
  %i.m = sub i64 %i.k, %i.l                       ; 2 uses
  %i.n = icmp ugt i64 %i.f, %i.m
  br i1 %i.n, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.o = icmp ugt i64 %i.g, 2305843009213693951
  br i1 %i.o, label %bb.d, label %_ZNSt12_Vector_baseI3LocILi1EESaIS1_EE11_M_allocateEm.exit.i, !prof !44

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #46
  unreachable

_ZNSt12_Vector_baseI3LocILi1EESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #45 ; 4 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorI3LocILi1EESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit, label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %_ZNSt12_Vector_baseI3LocILi1EESaIS1_EE11_M_allocateEm.exit.i
  %i.q = add i64 %i.d, -4
  %i.r = sub i64 %i.q, %i.e
  %i.s = and i64 %i.r, -4
  %i.t = add i64 %i.s, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.p, ptr align 4 %i.c, i64 %i.t, i1 false), !tbaa !4
  br label %_ZNSt6vectorI3LocILi1EESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit

_ZNSt6vectorI3LocILi1EESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit: ; preds = %_ZNSt12_Vector_baseI3LocILi1EESaIS1_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i.preheader.i
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseI3LocILi1EESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorI3LocILi1EESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.m) #48
  br label %_ZNSt12_Vector_baseI3LocILi1EESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseI3LocILi1EESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorI3LocILi1EESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit, %bb.e
  store ptr %i.p, ptr %0, align 8, !tbaa !234
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.f
  store ptr %i.u, ptr %i.h, align 8, !tbaa !235
  br label %_ZSt22__uninitialized_copy_aIP3LocILi1EES2_S1_ET0_T_S4_S3_RSaIT1_E.exit

bb.f:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !231  ; 4 uses
  %i.x = ptrtoint ptr %i.w to i64                 ; 2 uses
  %i.y = sub i64 %i.x, %i.l                       ; 3 uses
  %.not24 = icmp ult i64 %i.y, %i.f
  br i1 %.not24, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = icmp sgt i64 %i.g, 0
  br i1 %i.z, label %.lr.ph.i.i.i.i.i.preheader, label %_ZSt22__uninitialized_copy_aIP3LocILi1EES2_S1_ET0_T_S4_S3_RSaIT1_E.exit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.g
  %min.iters.check = icmp ult i64 %i.g, 8
  %i.aa = sub i64 %i.l, %i.e
  %diff.check = icmp ult i64 %i.aa, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader89, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.g, 9223372036854775800      ; 3 uses
  %i.ab = and i64 %i.g, 7
  %i.ac = shl i64 %n.vec, 2                       ; 2 uses
  %i.ad = getelementptr i8, ptr %i.j, i64 %i.ac
  %i.ae = getelementptr i8, ptr %i.c, i64 %i.ac
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.af = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.j, i64 %i.af ; 2 uses
  %next.gep44 = getelementptr i8, ptr %i.c, i64 %i.af ; 2 uses
  %i.ag = getelementptr i8, ptr %next.gep44, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep44, align 4, !tbaa !236
  %wide.load45 = load <4 x i32>, ptr %i.ag, align 4, !tbaa !236
  %i.ah = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !4
  store <4 x i32> %wide.load45, ptr %i.ah, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !347

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.g, %n.vec
  br i1 %cmp.n, label %_ZSt22__uninitialized_copy_aIP3LocILi1EES2_S1_ET0_T_S4_S3_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.i.preheader89

.lr.ph.i.i.i.i.i.preheader89:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi i64 [ %i.g, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ab, %middle.block ]
  %.0811.i.i.i.i.i.ph = phi ptr [ %i.j, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ad, %middle.block ]
  %.0910.i.i.i.i.i.ph = phi ptr [ %i.c, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ae, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader89, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.am, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader89 ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i ], [ %.0811.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader89 ] ; 2 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i ], [ %.0910.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader89 ] ; 2 uses
  %i.aj = load i32, ptr %.0910.i.i.i.i.i, align 4, !tbaa !236
  store i32 %i.aj, ptr %.0811.i.i.i.i.i, align 4, !tbaa !4
  %i.ak = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 4
  %i.al = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 4
  %i.am = add nsw i64 %.012.i.i.i.i.i, -1
  %i.an = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.an, label %.lr.ph.i.i.i.i.i, label %_ZSt22__uninitialized_copy_aIP3LocILi1EES2_S1_ET0_T_S4_S3_RSaIT1_E.exit, !llvm.loop !348

bb.h:                                             ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.y ; 4 uses
  %i.ap = ashr exact i64 %i.y, 2                  ; 6 uses
  %i.aq = icmp sgt i64 %i.ap, 0
  br i1 %i.aq, label %.lr.ph.i.i.i.i.i26.preheader, label %_ZSt4copyIP3LocILi1EES2_ET0_T_S4_S3_.exit

.lr.ph.i.i.i.i.i26.preheader:                     ; preds = %bb.h
  %min.iters.check51 = icmp ult i64 %i.ap, 8
  %i.ar = sub i64 %i.l, %i.e
  %diff.check49 = icmp ult i64 %i.ar, 32
  %or.cond85 = or i1 %min.iters.check51, %diff.check49
  br i1 %or.cond85, label %.lr.ph.i.i.i.i.i26.preheader88, label %vector.ph52

vector.ph52:                                      ; preds = %.lr.ph.i.i.i.i.i26.preheader
  %n.vec54 = and i64 %i.ap, 9223372036854775800   ; 3 uses
  %i.as = and i64 %i.ap, 7
  %i.at = shl i64 %n.vec54, 2                     ; 2 uses
  %i.au = getelementptr i8, ptr %i.j, i64 %i.at
  %i.av = getelementptr i8, ptr %i.c, i64 %i.at
  br label %vector.body55

vector.body55:                                    ; preds = %vector.body55, %vector.ph52
  %index56 = phi i64 [ 0, %vector.ph52 ], [ %index.next61, %vector.body55 ] ; 2 uses
  %i.aw = shl i64 %index56, 2                     ; 2 uses
  %next.gep57 = getelementptr i8, ptr %i.j, i64 %i.aw ; 2 uses
  %next.gep58 = getelementptr i8, ptr %i.c, i64 %i.aw ; 2 uses
  %i.ax = getelementptr i8, ptr %next.gep58, i64 16
  %wide.load59 = load <4 x i32>, ptr %next.gep58, align 4, !tbaa !236
  %wide.load60 = load <4 x i32>, ptr %i.ax, align 4, !tbaa !236
  %i.ay = getelementptr i8, ptr %next.gep57, i64 16
  store <4 x i32> %wide.load59, ptr %next.gep57, align 4, !tbaa !4
  store <4 x i32> %wide.load60, ptr %i.ay, align 4, !tbaa !4
  %index.next61 = add nuw i64 %index56, 8         ; 2 uses
  %i.az = icmp eq i64 %index.next61, %n.vec54
  br i1 %i.az, label %middle.block62, label %vector.body55, !llvm.loop !349

middle.block62:                                   ; preds = %vector.body55
  %cmp.n63 = icmp eq i64 %i.ap, %n.vec54
  br i1 %cmp.n63, label %_ZSt4copyIP3LocILi1EES2_ET0_T_S4_S3_.exit, label %.lr.ph.i.i.i.i.i26.preheader88

.lr.ph.i.i.i.i.i26.preheader88:                   ; preds = %.lr.ph.i.i.i.i.i26.preheader, %middle.block62
  %.012.i.i.i.i.i27.ph = phi i64 [ %i.ap, %.lr.ph.i.i.i.i.i26.preheader ], [ %i.as, %middle.block62 ]
  %.0811.i.i.i.i.i28.ph = phi ptr [ %i.j, %.lr.ph.i.i.i.i.i26.preheader ], [ %i.au, %middle.block62 ]
  %.0910.i.i.i.i.i29.ph = phi ptr [ %i.c, %.lr.ph.i.i.i.i.i26.preheader ], [ %i.av, %middle.block62 ]
  br label %.lr.ph.i.i.i.i.i26

.lr.ph.i.i.i.i.i26:                               ; preds = %.lr.ph.i.i.i.i.i26.preheader88, %.lr.ph.i.i.i.i.i26
  %.012.i.i.i.i.i27 = phi i64 [ %i.bd, %.lr.ph.i.i.i.i.i26 ], [ %.012.i.i.i.i.i27.ph, %.lr.ph.i.i.i.i.i26.preheader88 ] ; 2 uses
  %.0811.i.i.i.i.i28 = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i26 ], [ %.0811.i.i.i.i.i28.ph, %.lr.ph.i.i.i.i.i26.preheader88 ] ; 2 uses
  %.0910.i.i.i.i.i29 = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i26 ], [ %.0910.i.i.i.i.i29.ph, %.lr.ph.i.i.i.i.i26.preheader88 ] ; 2 uses
  %i.ba = load i32, ptr %.0910.i.i.i.i.i29, align 4, !tbaa !236
  store i32 %i.ba, ptr %.0811.i.i.i.i.i28, align 4, !tbaa !4
  %i.bb = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i29, i64 4
  %i.bc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i28, i64 4
  %i.bd = add nsw i64 %.012.i.i.i.i.i27, -1
  %i.be = icmp samesign ugt i64 %.012.i.i.i.i.i27, 1
  br i1 %i.be, label %.lr.ph.i.i.i.i.i26, label %_ZSt4copyIP3LocILi1EES2_ET0_T_S4_S3_.exit, !llvm.loop !350

_ZSt4copyIP3LocILi1EES2_ET0_T_S4_S3_.exit:        ; preds = %.lr.ph.i.i.i.i.i26, %middle.block62, %bb.h
  %.not9.i.i.i.i = icmp eq ptr %i.ao, %i.b
  br i1 %.not9.i.i.i.i, label %_ZSt22__uninitialized_copy_aIP3LocILi1EES2_S1_ET0_T_S4_S3_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZSt4copyIP3LocILi1EES2_ET0_T_S4_S3_.exit
  %i.bf = add i64 %i.l, %i.d
  %i.bg = add i64 %i.e, %i.x
  %2 = sub i64 %i.bf, %i.bg
  %3 = add i64 %2, -4                             ; 2 uses
  %i.bh = lshr i64 %3, 2
  %i.bi = add nuw nsw i64 %i.bh, 1                ; 2 uses
  %min.iters.check70 = icmp ult i64 %3, 28
  %i.bj = sub i64 %i.l, %i.e
  %diff.check68 = icmp ult i64 %i.bj, 32
  %or.cond86 = or i1 %min.iters.check70, %diff.check68
  br i1 %or.cond86, label %.lr.ph.i.i.i.i.preheader87, label %vector.ph71

vector.ph71:                                      ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec73 = and i64 %i.bi, 9223372036854775800   ; 3 uses
  %i.bk = shl i64 %n.vec73, 2                     ; 2 uses
  %i.bl = getelementptr i8, ptr %i.w, i64 %i.bk
  %i.bm = getelementptr i8, ptr %i.ao, i64 %i.bk
  br label %vector.body74

vector.body74:                                    ; preds = %vector.body74, %vector.ph71
  %index75 = phi i64 [ 0, %vector.ph71 ], [ %index.next80, %vector.body74 ] ; 2 uses
  %i.bn = shl i64 %index75, 2                     ; 2 uses
  %next.gep76 = getelementptr i8, ptr %i.w, i64 %i.bn ; 2 uses
  %next.gep77 = getelementptr i8, ptr %i.ao, i64 %i.bn ; 2 uses
  %i.bo = getelementptr i8, ptr %next.gep77, i64 16
  %wide.load78 = load <4 x i32>, ptr %next.gep77, align 4, !tbaa !236
  %wide.load79 = load <4 x i32>, ptr %i.bo, align 4, !tbaa !236
  %i.bp = getelementptr i8, ptr %next.gep76, i64 16
  store <4 x i32> %wide.load78, ptr %next.gep76, align 4, !tbaa !4
  store <4 x i32> %wide.load79, ptr %i.bp, align 4, !tbaa !4
  %index.next80 = add nuw i64 %index75, 8         ; 2 uses
  %i.bq = icmp eq i64 %index.next80, %n.vec73
  br i1 %i.bq, label %middle.block81, label %vector.body74, !llvm.loop !351

middle.block81:                                   ; preds = %vector.body74
  %cmp.n82 = icmp eq i64 %i.bi, %n.vec73
  br i1 %cmp.n82, label %_ZSt22__uninitialized_copy_aIP3LocILi1EES2_S1_ET0_T_S4_S3_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.preheader87

.lr.ph.i.i.i.i.preheader87:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block81
  %.011.i.i.i.i.ph = phi ptr [ %i.w, %.lr.ph.i.i.i.i.preheader ], [ %i.bl, %middle.block81 ]
  %.0810.i.i.i.i.ph = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.preheader ], [ %i.bm, %middle.block81 ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader87, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.bt, %.lr.ph.i.i.i.i ], [ %.011.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader87 ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.bs, %.lr.ph.i.i.i.i ], [ %.0810.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader87 ] ; 2 uses
  %i.br = load i32, ptr %.0810.i.i.i.i, align 4, !tbaa !236
  store i32 %i.br, ptr %.011.i.i.i.i, align 4, !tbaa !4
  %i.bs = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 4 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 4
  %.not.i.i.i.i = icmp eq ptr %i.bs, %i.b
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIP3LocILi1EES2_S1_ET0_T_S4_S3_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !352

_ZSt22__uninitialized_copy_aIP3LocILi1EES2_S1_ET0_T_S4_S3_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i, %middle.block, %middle.block81, %bb.g, %_ZSt4copyIP3LocILi1EES2_ET0_T_S4_S3_.exit, %_ZNSt12_Vector_baseI3LocILi1EESaIS1_EE13_M_deallocateEPS1_m.exit
  %i.bu = phi ptr [ %i.j, %middle.block81 ], [ %i.p, %_ZNSt12_Vector_baseI3LocILi1EESaIS1_EE13_M_deallocateEPS1_m.exit ], [ %i.j, %bb.g ], [ %i.j, %_ZSt4copyIP3LocILi1EES2_ET0_T_S4_S3_.exit ], [ %i.j, %middle.block ], [ %i.j, %.lr.ph.i.i.i.i ], [ %i.j, %.lr.ph.i.i.i.i.i ]
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.f
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bv, ptr %i.bw, align 8, !tbaa !231
  br label %bb.i

bb.i:                                             ; preds = %_ZSt22__uninitialized_copy_aIP3LocILi1EES2_S1_ET0_T_S4_S3_RSaIT1_E.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !242  ; 4 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !245    ; 8 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.f = sub i64 %i.d, %i.e                       ; 6 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !246
  %i.j = load ptr, ptr %0, align 8, !tbaa !245    ; 13 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64                 ; 4 uses
  %i.m = sub i64 %i.k, %i.l                       ; 2 uses
  %i.n = icmp ugt i64 %i.f, %i.m
  br i1 %i.n, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.o = icmp ugt i64 %i.g, 1152921504606846975
  br i1 %i.o, label %bb.d, label %_ZNSt12_Vector_baseI6VectorILi1Ed4FullESaIS2_EE11_M_allocateEm.exit.i, !prof !44

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #46
  unreachable

_ZNSt12_Vector_baseI6VectorILi1Ed4FullESaIS2_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #45 ; 4 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit, label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %_ZNSt12_Vector_baseI6VectorILi1Ed4FullESaIS2_EE11_M_allocateEm.exit.i
  %i.q = add i64 %i.d, -8
  %i.r = sub i64 %i.q, %i.e
  %i.s = and i64 %i.r, -8
  %i.t = add i64 %i.s, 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.p, ptr align 8 %i.c, i64 %i.t, i1 false), !tbaa !247
  br label %_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit

_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit: ; preds = %_ZNSt12_Vector_baseI6VectorILi1Ed4FullESaIS2_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i.preheader.i
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseI6VectorILi1Ed4FullESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.m) #48
  br label %_ZNSt12_Vector_baseI6VectorILi1Ed4FullESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseI6VectorILi1Ed4FullESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit, %bb.e
  store ptr %i.p, ptr %0, align 8, !tbaa !245
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.f
  store ptr %i.u, ptr %i.h, align 8, !tbaa !246
  br label %_ZSt22__uninitialized_copy_aIP6VectorILi1Ed4FullES3_S2_ET0_T_S5_S4_RSaIT1_E.exit

bb.f:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !242  ; 4 uses
  %i.x = ptrtoint ptr %i.w to i64                 ; 2 uses
  %i.y = sub i64 %i.x, %i.l                       ; 3 uses
  %.not24 = icmp ult i64 %i.y, %i.f
  br i1 %.not24, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = icmp sgt i64 %i.g, 0
  br i1 %i.z, label %.lr.ph.i.i.i.i.i.preheader, label %_ZSt22__uninitialized_copy_aIP6VectorILi1Ed4FullES3_S2_ET0_T_S5_S4_RSaIT1_E.exit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.g
  %xtraiter = and i64 %i.g, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %_ZN6VectorILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i.prol
  %.012.i.i.i.i.i.prol = phi i64 [ %i.ad, %_ZN6VectorILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i.prol ], [ %i.g, %.lr.ph.i.i.i.i.i.preheader ]
  %.0811.i.i.i.i.i.prol = phi ptr [ %i.ac, %_ZN6VectorILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i.prol ], [ %i.j, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.0910.i.i.i.i.i.prol = phi ptr [ %i.ab, %_ZN6VectorILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i.prol ], [ %i.c, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_ZN6VectorILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %.not.i.i.i.i.i.i.prol = icmp eq ptr %.0811.i.i.i.i.i.prol, %.0910.i.i.i.i.i.prol
  br i1 %.not.i.i.i.i.i.i.prol, label %_ZN6VectorILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i.prol, label %_ZN12VectorEngineILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i.i.prol

_ZN12VectorEngineILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i.i.prol: ; preds = %.lr.ph.i.i.i.i.i.prol
  %i.aa = load double, ptr %.0910.i.i.i.i.i.prol, align 8, !tbaa !247
  store double %i.aa, ptr %.0811.i.i.i.i.i.prol, align 8, !tbaa !247
  br label %_ZN6VectorILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i.prol

_ZN6VectorILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i.prol: ; preds = %_ZN12VectorEngineILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.prol
  %i.ab = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.prol, i64 8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.prol, i64 8 ; 2 uses
  %i.ad = add nsw i64 %.012.i.i.i.i.i.prol, -1    ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !353

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %_ZN6VectorILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.012.i.i.i.i.i.unr = phi i64 [ %i.g, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ad, %_ZN6VectorILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i.prol ]
  %.0811.i.i.i.i.i.unr = phi ptr [ %i.j, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ac, %_ZN6VectorILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i.prol ]
  %.0910.i.i.i.i.i.unr = phi ptr [ %i.c, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ab, %_ZN6VectorILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i.prol ]
  %i.ae = icmp ult i64 %i.g, 4
  br i1 %i.ae, label %_ZSt22__uninitialized_copy_aIP6VectorILi1Ed4FullES3_S2_ET0_T_S5_S4_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %_ZN6VectorILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i.3
  %.012.i.i.i.i.i = phi i64 [ %i.ar, %_ZN6VectorILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i.3 ], [ %.012.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.aq, %_ZN6VectorILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i.3 ], [ %.0811.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.ap, %_ZN6VectorILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i.3 ], [ %.0910.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %.0811.i.i.i.i.i, %.0910.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i, label %_ZN6VectorILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i, label %_ZN12VectorEngineILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i.i

_ZN12VectorEngineILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.af = load double, ptr %.0910.i.i.i.i.i, align 8, !tbaa !247
  store double %i.af, ptr %.0811.i.i.i.i.i, align 8, !tbaa !247
  br label %_ZN6VectorILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i

_ZN6VectorILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i:    ; preds = %_ZN12VectorEngineILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %.not.i.i.i.i.i.i.1 = icmp eq ptr %.0811.i.i.i.i.i, %.0910.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.1, label %_ZN6VectorILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i.1, label %_ZN12VectorEngineILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i.i.1

_ZN12VectorEngineILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i.i.1: ; preds = %_ZN6VectorILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !247
  store double %i.ai, ptr %i.ag, align 8, !tbaa !247
  br label %_ZN6VectorILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i.1

_ZN6VectorILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i.1:  ; preds = %_ZN12VectorEngineILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i.i.1, %_ZN6VectorILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i
  %.not.i.i.i.i.i.i.2 = icmp eq ptr %.0811.i.i.i.i.i, %.0910.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.2, label %_ZN6VectorILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i.2, label %_ZN12VectorEngineILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i.i.2

_ZN12VectorEngineILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i.i.2: ; preds = %_ZN6VectorILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i.1
  %i.aj = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 16
  %i.al = load double, ptr %i.ak, align 8, !tbaa !247
  store double %i.al, ptr %i.aj, align 8, !tbaa !247
  br label %_ZN6VectorILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i.2

_ZN6VectorILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i.2:  ; preds = %_ZN12VectorEngineILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i.i.2, %_ZN6VectorILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i.1
  %.not.i.i.i.i.i.i.3 = icmp eq ptr %.0811.i.i.i.i.i, %.0910.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.3, label %_ZN6VectorILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i.3, label %_ZN12VectorEngineILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i.i.3

_ZN12VectorEngineILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i.i.3: ; preds = %_ZN6VectorILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i.2
  %i.am = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 24
  %i.an = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 24
  %i.ao = load double, ptr %i.an, align 8, !tbaa !247
  store double %i.ao, ptr %i.am, align 8, !tbaa !247
  br label %_ZN6VectorILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i.3

_ZN6VectorILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i.3:  ; preds = %_ZN12VectorEngineILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i.i.3, %_ZN6VectorILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i.2
  %i.ap = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 32
  %i.aq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 32
  %i.ar = add nsw i64 %.012.i.i.i.i.i, -4
  %i.as = icmp sgt i64 %.012.i.i.i.i.i, 4
  br i1 %i.as, label %.lr.ph.i.i.i.i.i, label %_ZSt22__uninitialized_copy_aIP6VectorILi1Ed4FullES3_S2_ET0_T_S5_S4_RSaIT1_E.exit, !llvm.loop !355

bb.h:                                             ; preds = %bb.f
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.y ; 4 uses
  %i.au = ashr exact i64 %i.y, 3                  ; 5 uses
  %i.av = icmp sgt i64 %i.au, 0
  br i1 %i.av, label %.lr.ph.i.i.i.i.i26.preheader, label %_ZSt4copyIP6VectorILi1Ed4FullES3_ET0_T_S5_S4_.exit

.lr.ph.i.i.i.i.i26.preheader:                     ; preds = %bb.h
  %xtraiter52 = and i64 %i.au, 3                  ; 2 uses
  %lcmp.mod53.not = icmp eq i64 %xtraiter52, 0
  br i1 %lcmp.mod53.not, label %.lr.ph.i.i.i.i.i26.prol.loopexit, label %.lr.ph.i.i.i.i.i26.prol

.lr.ph.i.i.i.i.i26.prol:                          ; preds = %.lr.ph.i.i.i.i.i26.preheader, %_ZN6VectorILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i32.prol
  %.012.i.i.i.i.i27.prol = phi i64 [ %i.az, %_ZN6VectorILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i32.prol ], [ %i.au, %.lr.ph.i.i.i.i.i26.preheader ]
  %.0811.i.i.i.i.i28.prol = phi ptr [ %i.ay, %_ZN6VectorILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i32.prol ], [ %i.j, %.lr.ph.i.i.i.i.i26.preheader ] ; 3 uses
  %.0910.i.i.i.i.i29.prol = phi ptr [ %i.ax, %_ZN6VectorILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i32.prol ], [ %i.c, %.lr.ph.i.i.i.i.i26.preheader ] ; 3 uses
  %prol.iter54 = phi i64 [ %prol.iter54.next, %_ZN6VectorILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i32.prol ], [ 0, %.lr.ph.i.i.i.i.i26.preheader ]
  %.not.i.i.i.i.i.i30.prol = icmp eq ptr %.0811.i.i.i.i.i28.prol, %.0910.i.i.i.i.i29.prol
  br i1 %.not.i.i.i.i.i.i30.prol, label %_ZN6VectorILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i32.prol, label %_ZN12VectorEngineILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i.i31.prol

_ZN12VectorEngineILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i.i31.prol: ; preds = %.lr.ph.i.i.i.i.i26.prol
  %i.aw = load double, ptr %.0910.i.i.i.i.i29.prol, align 8, !tbaa !247
  store double %i.aw, ptr %.0811.i.i.i.i.i28.prol, align 8, !tbaa !247
  br label %_ZN6VectorILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i32.prol

_ZN6VectorILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i32.prol: ; preds = %_ZN12VectorEngineILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i.i31.prol, %.lr.ph.i.i.i.i.i26.prol
  %i.ax = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i29.prol, i64 8 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i28.prol, i64 8 ; 2 uses
  %i.az = add nsw i64 %.012.i.i.i.i.i27.prol, -1  ; 2 uses
  %prol.iter54.next = add i64 %prol.iter54, 1     ; 2 uses
  %prol.iter54.cmp.not = icmp eq i64 %prol.iter54.next, %xtraiter52
  br i1 %prol.iter54.cmp.not, label %.lr.ph.i.i.i.i.i26.prol.loopexit, label %.lr.ph.i.i.i.i.i26.prol, !llvm.loop !356

.lr.ph.i.i.i.i.i26.prol.loopexit:                 ; preds = %_ZN6VectorILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i32.prol, %.lr.ph.i.i.i.i.i26.preheader
  %.012.i.i.i.i.i27.unr = phi i64 [ %i.au, %.lr.ph.i.i.i.i.i26.preheader ], [ %i.az, %_ZN6VectorILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i32.prol ]
  %.0811.i.i.i.i.i28.unr = phi ptr [ %i.j, %.lr.ph.i.i.i.i.i26.preheader ], [ %i.ay, %_ZN6VectorILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i32.prol ]
  %.0910.i.i.i.i.i29.unr = phi ptr [ %i.c, %.lr.ph.i.i.i.i.i26.preheader ], [ %i.ax, %_ZN6VectorILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i32.prol ]
  %i.ba = icmp ult i64 %i.au, 4
  br i1 %i.ba, label %_ZSt4copyIP6VectorILi1Ed4FullES3_ET0_T_S5_S4_.exit, label %.lr.ph.i.i.i.i.i26

.lr.ph.i.i.i.i.i26:                               ; preds = %.lr.ph.i.i.i.i.i26.prol.loopexit, %_ZN6VectorILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i32.3
  %.012.i.i.i.i.i27 = phi i64 [ %i.bn, %_ZN6VectorILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i32.3 ], [ %.012.i.i.i.i.i27.unr, %.lr.ph.i.i.i.i.i26.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i28 = phi ptr [ %i.bm, %_ZN6VectorILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i32.3 ], [ %.0811.i.i.i.i.i28.unr, %.lr.ph.i.i.i.i.i26.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i29 = phi ptr [ %i.bl, %_ZN6VectorILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i32.3 ], [ %.0910.i.i.i.i.i29.unr, %.lr.ph.i.i.i.i.i26.prol.loopexit ] ; 9 uses
  %.not.i.i.i.i.i.i30 = icmp eq ptr %.0811.i.i.i.i.i28, %.0910.i.i.i.i.i29
  br i1 %.not.i.i.i.i.i.i30, label %_ZN6VectorILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i32, label %_ZN12VectorEngineILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i.i31

_ZN12VectorEngineILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i.i31: ; preds = %.lr.ph.i.i.i.i.i26
  %i.bb = load double, ptr %.0910.i.i.i.i.i29, align 8, !tbaa !247
  store double %i.bb, ptr %.0811.i.i.i.i.i28, align 8, !tbaa !247
  br label %_ZN6VectorILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i32

_ZN6VectorILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i32:  ; preds = %_ZN12VectorEngineILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i.i31, %.lr.ph.i.i.i.i.i26
  %.not.i.i.i.i.i.i30.1 = icmp eq ptr %.0811.i.i.i.i.i28, %.0910.i.i.i.i.i29
  br i1 %.not.i.i.i.i.i.i30.1, label %_ZN6VectorILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i32.1, label %_ZN12VectorEngineILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i.i31.1

_ZN12VectorEngineILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i.i31.1: ; preds = %_ZN6VectorILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i32
  %i.bc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i28, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i29, i64 8
  %i.be = load double, ptr %i.bd, align 8, !tbaa !247
  store double %i.be, ptr %i.bc, align 8, !tbaa !247
  br label %_ZN6VectorILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i32.1

_ZN6VectorILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i32.1: ; preds = %_ZN12VectorEngineILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i.i31.1, %_ZN6VectorILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i32
  %.not.i.i.i.i.i.i30.2 = icmp eq ptr %.0811.i.i.i.i.i28, %.0910.i.i.i.i.i29
  br i1 %.not.i.i.i.i.i.i30.2, label %_ZN6VectorILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i32.2, label %_ZN12VectorEngineILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i.i31.2

_ZN12VectorEngineILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i.i31.2: ; preds = %_ZN6VectorILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i32.1
  %i.bf = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i28, i64 16
  %i.bg = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i29, i64 16
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !247
  store double %i.bh, ptr %i.bf, align 8, !tbaa !247
  br label %_ZN6VectorILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i32.2

_ZN6VectorILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i32.2: ; preds = %_ZN12VectorEngineILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i.i31.2, %_ZN6VectorILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i32.1
  %.not.i.i.i.i.i.i30.3 = icmp eq ptr %.0811.i.i.i.i.i28, %.0910.i.i.i.i.i29
  br i1 %.not.i.i.i.i.i.i30.3, label %_ZN6VectorILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i32.3, label %_ZN12VectorEngineILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i.i31.3

_ZN12VectorEngineILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i.i31.3: ; preds = %_ZN6VectorILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i32.2
  %i.bi = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i28, i64 24
  %i.bj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i29, i64 24
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !247
  store double %i.bk, ptr %i.bi, align 8, !tbaa !247
  br label %_ZN6VectorILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i32.3

_ZN6VectorILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i32.3: ; preds = %_ZN12VectorEngineILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i.i31.3, %_ZN6VectorILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i32.2
  %i.bl = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i29, i64 32
  %i.bm = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i28, i64 32
  %i.bn = add nsw i64 %.012.i.i.i.i.i27, -4
  %i.bo = icmp sgt i64 %.012.i.i.i.i.i27, 4
  br i1 %i.bo, label %.lr.ph.i.i.i.i.i26, label %_ZSt4copyIP6VectorILi1Ed4FullES3_ET0_T_S5_S4_.exit, !llvm.loop !357

_ZSt4copyIP6VectorILi1Ed4FullES3_ET0_T_S5_S4_.exit: ; preds = %.lr.ph.i.i.i.i.i26.prol.loopexit, %_ZN6VectorILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i32.3, %bb.h
  %.not9.i.i.i.i = icmp eq ptr %i.at, %i.b
  br i1 %.not9.i.i.i.i, label %_ZSt22__uninitialized_copy_aIP6VectorILi1Ed4FullES3_S2_ET0_T_S5_S4_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZSt4copyIP6VectorILi1Ed4FullES3_ET0_T_S5_S4_.exit
  %i.bp = add i64 %i.l, %i.d
  %i.bq = add i64 %i.e, %i.x
  %2 = sub i64 %i.bp, %i.bq
  %3 = add i64 %2, -8                             ; 2 uses
  %i.br = lshr i64 %3, 3
  %i.bs = add nuw nsw i64 %i.br, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %3, 56
  %i.bt = sub i64 %i.l, %i.e
  %diff.check = icmp ult i64 %i.bt, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader50, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.bs, 4611686018427387900     ; 3 uses
  %i.bu = shl i64 %n.vec, 3                       ; 2 uses
  %i.bv = getelementptr i8, ptr %i.w, i64 %i.bu
  %i.bw = getelementptr i8, ptr %i.at, i64 %i.bu
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bx = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.w, i64 %i.bx ; 2 uses
  %next.gep47 = getelementptr i8, ptr %i.at, i64 %i.bx ; 2 uses
  %i.by = getelementptr i8, ptr %next.gep47, i64 16
  %wide.load = load <2 x double>, ptr %next.gep47, align 8, !tbaa !247
  %wide.load48 = load <2 x double>, ptr %i.by, align 8, !tbaa !247
  %i.bz = getelementptr i8, ptr %next.gep, i64 16
  store <2 x double> %wide.load, ptr %next.gep, align 8, !tbaa !247
  store <2 x double> %wide.load48, ptr %i.bz, align 8, !tbaa !247
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ca = icmp eq i64 %index.next, %n.vec
  br i1 %i.ca, label %middle.block, label %vector.body, !llvm.loop !358

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bs, %n.vec
  br i1 %cmp.n, label %_ZSt22__uninitialized_copy_aIP6VectorILi1Ed4FullES3_S2_ET0_T_S5_S4_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.preheader50

.lr.ph.i.i.i.i.preheader50:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.011.i.i.i.i.ph = phi ptr [ %i.w, %.lr.ph.i.i.i.i.preheader ], [ %i.bv, %middle.block ]
  %.0810.i.i.i.i.ph = phi ptr [ %i.at, %.lr.ph.i.i.i.i.preheader ], [ %i.bw, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader50, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.cd, %.lr.ph.i.i.i.i ], [ %.011.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader50 ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.cc, %.lr.ph.i.i.i.i ], [ %.0810.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader50 ] ; 2 uses
  %i.cb = load double, ptr %.0810.i.i.i.i, align 8, !tbaa !247
  store double %i.cb, ptr %.011.i.i.i.i, align 8, !tbaa !247
  %i.cc = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 8 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.cc, %i.b
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIP6VectorILi1Ed4FullES3_S2_ET0_T_S5_S4_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !359

_ZSt22__uninitialized_copy_aIP6VectorILi1Ed4FullES3_S2_ET0_T_S5_S4_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %_ZN6VectorILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i.3, %.lr.ph.i.i.i.i, %middle.block, %bb.g, %_ZSt4copyIP6VectorILi1Ed4FullES3_ET0_T_S5_S4_.exit, %_ZNSt12_Vector_baseI6VectorILi1Ed4FullESaIS2_EE13_M_deallocateEPS2_m.exit
  %i.ce = phi ptr [ %i.j, %middle.block ], [ %i.p, %_ZNSt12_Vector_baseI6VectorILi1Ed4FullESaIS2_EE13_M_deallocateEPS2_m.exit ], [ %i.j, %bb.g ], [ %i.j, %_ZSt4copyIP6VectorILi1Ed4FullES3_ET0_T_S5_S4_.exit ], [ %i.j, %.lr.ph.i.i.i.i ], [ %i.j, %_ZN6VectorILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i.3 ], [ %i.j, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.f
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cf, ptr %i.cg, align 8, !tbaa !242
  br label %bb.i

bb.i:                                             ; preds = %_ZSt22__uninitialized_copy_aIP6VectorILi1Ed4FullES3_S2_ET0_T_S5_S4_RSaIT1_E.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local void @_ZN18CanonicalCenteringILi1EED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #1 comdat($_ZN18CanonicalCenteringILi1EED5Ev) align 2 {
bb.a:
  %i.a = load i32, ptr @_ZN18CanonicalCenteringILi1EE13class_count_mE, align 4, !tbaa !4
  %i.b = add nsw i32 %i.a, -1                     ; 2 uses
  store i32 %i.b, ptr @_ZN18CanonicalCenteringILi1EE13class_count_mE, align 4, !tbaa !4
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %.preheader12.preheader, label %bb.l

.preheader12.preheader:                           ; preds = %bb.a
  %.pre18 = load ptr, ptr @_ZN18CanonicalCenteringILi1EE17centering_table_mE, align 8, !tbaa !224
  br label %.preheader12

.preheader12:                                     ; preds = %.preheader12.preheader, %bb.j
  %i.d = phi ptr [ %.pre18, %.preheader12.preheader ], [ %i.bh, %bb.j ]
  %indvars.iv = phi i64 [ 0, %.preheader12.preheader ], [ %indvars.iv.next, %bb.j ] ; 4 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !227  ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !229  ; 4 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.f, label %bb.c

bb.b:                                             ; preds = %bb.j
  %i.i = icmp eq ptr %i.bh, null
  br i1 %i.i, label %bb.l, label %bb.k

bb.c:                                             ; preds = %.preheader12
  %i.j = getelementptr inbounds i8, ptr %i.g, i64 -8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8              ; 2 uses
  %.idx = mul i64 %i.k, 56                        ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.c
  %i.m = getelementptr inbounds i8, ptr %i.g, i64 %.idx
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %_ZN9CenteringILi1EED2Ev.exit
  %i.n = phi ptr [ %i.o, %_ZN9CenteringILi1EED2Ev.exit ], [ %i.m, %.preheader.preheader ] ; 5 uses
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 -56 ; 2 uses
  %i.p = getelementptr inbounds i8, ptr %i.n, i64 -24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !245  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %.preheader
  %i.r = getelementptr inbounds i8, ptr %i.n, i64 -8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !246
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #48
  br label %_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EED2Ev.exit.i

_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EED2Ev.exit.i: ; preds = %bb.d, %.preheader
  %i.w = getelementptr inbounds i8, ptr %i.n, i64 -48
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !234  ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i1.i, label %_ZN9CenteringILi1EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EED2Ev.exit.i
  %i.y = getelementptr inbounds i8, ptr %i.n, i64 -32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !235
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.x to i64
  %i.ac = sub i64 %i.aa, %i.ab
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.ac) #48
  br label %_ZN9CenteringILi1EED2Ev.exit

_ZN9CenteringILi1EED2Ev.exit:                     ; preds = %_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EED2Ev.exit.i, %bb.e
  %i.ad = icmp eq ptr %i.o, %i.g
  br i1 %i.ad, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %_ZN9CenteringILi1EED2Ev.exit, %bb.c
  %i.ae = add i64 %.idx, 8
  tail call void @_ZdaPvm(ptr noundef nonnull %i.j, i64 noundef %i.ae) #48
  %.pre19 = load ptr, ptr @_ZN18CanonicalCenteringILi1EE17centering_table_mE, align 8, !tbaa !224
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %.pre19, i64 %indvars.iv
  %.pre20 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !227
  br label %bb.f

bb.f:                                             ; preds = %.preheader12, %.loopexit
  %i.af = phi ptr [ %i.f, %.preheader12 ], [ %.pre20, %.loopexit ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !229 ; 4 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = getelementptr inbounds i8, ptr %i.ah, i64 -8 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8            ; 2 uses
  %.idx.1 = mul i64 %i.ak, 56                     ; 2 uses
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %.loopexit33, label %.preheader.preheader.1

.preheader.preheader.1:                           ; preds = %bb.g
  %i.am = getelementptr inbounds i8, ptr %i.ah, i64 %.idx.1
  br label %.preheader.1

.preheader.1:                                     ; preds = %_ZN9CenteringILi1EED2Ev.exit.1, %.preheader.preheader.1
  %i.an = phi ptr [ %i.ao, %_ZN9CenteringILi1EED2Ev.exit.1 ], [ %i.am, %.preheader.preheader.1 ] ; 5 uses
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 -56 ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %i.an, i64 -24
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !245 ; 3 uses
  %.not.i.i.i.i.1 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i.i.1, label %_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EED2Ev.exit.i.1, label %bb.h

bb.h:                                             ; preds = %.preheader.1
  %i.ar = getelementptr inbounds i8, ptr %i.an, i64 -8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !246
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.aq to i64
  %i.av = sub i64 %i.at, %i.au
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef %i.av) #48
  br label %_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EED2Ev.exit.i.1

_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EED2Ev.exit.i.1: ; preds = %bb.h, %.preheader.1
  %i.aw = getelementptr inbounds i8, ptr %i.an, i64 -48
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !234 ; 3 uses
  %.not.i.i.i1.i.1 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i1.i.1, label %_ZN9CenteringILi1EED2Ev.exit.1, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EED2Ev.exit.i.1
  %i.ay = getelementptr inbounds i8, ptr %i.an, i64 -32
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !235
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = ptrtoint ptr %i.ax to i64
  %i.bc = sub i64 %i.ba, %i.bb
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ax, i64 noundef %i.bc) #48
  br label %_ZN9CenteringILi1EED2Ev.exit.1

_ZN9CenteringILi1EED2Ev.exit.1:                   ; preds = %bb.i, %_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EED2Ev.exit.i.1
  %i.bd = icmp eq ptr %i.ao, %i.ah
  br i1 %i.bd, label %.loopexit33, label %.preheader.1

.loopexit33:                                      ; preds = %_ZN9CenteringILi1EED2Ev.exit.1, %bb.g
  %i.be = add i64 %.idx.1, 8
  tail call void @_ZdaPvm(ptr noundef nonnull %i.aj, i64 noundef %i.be) #48
  %.pre21 = load ptr, ptr @_ZN18CanonicalCenteringILi1EE17centering_table_mE, align 8, !tbaa !224 ; 2 uses
  %.phi.trans.insert22 = getelementptr inbounds nuw [8 x i8], ptr %.pre21, i64 %indvars.iv
end_hunk_0
begin_hunk_1_@_ZN18CanonicalCenteringILi2EEC2Ev:bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.w, i8 0, i64 52, i1 false)
  store i32 3, ptr %.ptr71.3.1977, align 16, !tbaa !361
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 180
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.x, i8 0, i64 52, i1 false)
  store ptr %.ptr71.1974, ptr %i.r, align 8, !tbaa !262
  %i.y = tail call noalias noundef nonnull dereferenceable(232) ptr @_Znam(i64 noundef 232) #45 ; 9 uses
  store i64 4, ptr %i.y, align 16
  %.ptr71.1972.1 = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  store i32 3, ptr %.ptr71.1972.1, align 8, !tbaa !361
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  %.ptr71.1.1.1 = getelementptr inbounds nuw i8, ptr %i.y, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.z, i8 0, i64 52, i1 false)
  store i32 3, ptr %.ptr71.1.1.1, align 16, !tbaa !361
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 68
  %.ptr71.2.1.1 = getelementptr inbounds nuw i8, ptr %i.y, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.aa, i8 0, i64 52, i1 false)
  store i32 3, ptr %.ptr71.2.1.1, align 8, !tbaa !361
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 124
  %.ptr71.3.1.1 = getelementptr inbounds nuw i8, ptr %i.y, i64 176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.ab, i8 0, i64 52, i1 false)
  store i32 3, ptr %.ptr71.3.1.1, align 16, !tbaa !361
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 180
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.ac, i8 0, i64 52, i1 false)
  store ptr %.ptr71.1972.1, ptr %i.ad, align 8, !tbaa !262
  %i.ae = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #45 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !260
  %i.ag = tail call noalias noundef nonnull dereferenceable(232) ptr @_Znam(i64 noundef 232) #45 ; 9 uses
  store i64 4, ptr %i.ag, align 16
  %.ptr71.2979 = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  store i32 3, ptr %.ptr71.2979, align 8, !tbaa !361
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  %.ptr71.1.2 = getelementptr inbounds nuw i8, ptr %i.ag, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.ah, i8 0, i64 52, i1 false)
  store i32 3, ptr %.ptr71.1.2, align 16, !tbaa !361
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 68
  %.ptr71.2.2 = getelementptr inbounds nuw i8, ptr %i.ag, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.ai, i8 0, i64 52, i1 false)
  store i32 3, ptr %.ptr71.2.2, align 8, !tbaa !361
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 124
  %.ptr71.3.2 = getelementptr inbounds nuw i8, ptr %i.ag, i64 176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.aj, i8 0, i64 52, i1 false)
  store i32 3, ptr %.ptr71.3.2, align 16, !tbaa !361
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 180
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.ak, i8 0, i64 52, i1 false)
  store ptr %.ptr71.2979, ptr %i.ae, align 8, !tbaa !262
  %i.al = tail call noalias noundef nonnull dereferenceable(232) ptr @_Znam(i64 noundef 232) #45 ; 9 uses
  store i64 4, ptr %i.al, align 16
  %.ptr71.1972.2 = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 2 uses
  store i32 3, ptr %.ptr71.1972.2, align 8, !tbaa !361
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  %.ptr71.1.1.2 = getelementptr inbounds nuw i8, ptr %i.al, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.am, i8 0, i64 52, i1 false)
  store i32 3, ptr %.ptr71.1.1.2, align 16, !tbaa !361
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 68
  %.ptr71.2.1.2 = getelementptr inbounds nuw i8, ptr %i.al, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.an, i8 0, i64 52, i1 false)
  store i32 3, ptr %.ptr71.2.1.2, align 8, !tbaa !361
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 124
  %.ptr71.3.1.2 = getelementptr inbounds nuw i8, ptr %i.al, i64 176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.ao, i8 0, i64 52, i1 false)
  store i32 3, ptr %.ptr71.3.1.2, align 16, !tbaa !361
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 180
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.ap, i8 0, i64 52, i1 false)
  store ptr %.ptr71.1972.2, ptr %i.aq, align 8, !tbaa !262
  %i.ar = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #45 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !260
  %i.at = tail call noalias noundef nonnull dereferenceable(232) ptr @_Znam(i64 noundef 232) #45 ; 9 uses
  store i64 4, ptr %i.at, align 16
  %.ptr71.3980 = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 2 uses
  store i32 3, ptr %.ptr71.3980, align 8, !tbaa !361
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 12
  %.ptr71.1.3 = getelementptr inbounds nuw i8, ptr %i.at, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.au, i8 0, i64 52, i1 false)
  store i32 3, ptr %.ptr71.1.3, align 16, !tbaa !361
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 68
  %.ptr71.2.3 = getelementptr inbounds nuw i8, ptr %i.at, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.av, i8 0, i64 52, i1 false)
  store i32 3, ptr %.ptr71.2.3, align 8, !tbaa !361
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 124
  %.ptr71.3.3 = getelementptr inbounds nuw i8, ptr %i.at, i64 176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.aw, i8 0, i64 52, i1 false)
  store i32 3, ptr %.ptr71.3.3, align 16, !tbaa !361
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 180
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.ax, i8 0, i64 52, i1 false)
  store ptr %.ptr71.3980, ptr %i.ar, align 8, !tbaa !262
  %i.ay = tail call noalias noundef nonnull dereferenceable(232) ptr @_Znam(i64 noundef 232) #45 ; 9 uses
  store i64 4, ptr %i.ay, align 16
  %.ptr71.1972.3 = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 2 uses
  store i32 3, ptr %.ptr71.1972.3, align 8, !tbaa !361
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 12
  %.ptr71.1.1.3 = getelementptr inbounds nuw i8, ptr %i.ay, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.az, i8 0, i64 52, i1 false)
  store i32 3, ptr %.ptr71.1.1.3, align 16, !tbaa !361
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 68
  %.ptr71.2.1.3 = getelementptr inbounds nuw i8, ptr %i.ay, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.ba, i8 0, i64 52, i1 false)
  store i32 3, ptr %.ptr71.2.1.3, align 8, !tbaa !361
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 124
  %.ptr71.3.1.3 = getelementptr inbounds nuw i8, ptr %i.ay, i64 176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.bb, i8 0, i64 52, i1 false)
  store i32 3, ptr %.ptr71.3.1.3, align 16, !tbaa !361
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 180
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.bc, i8 0, i64 52, i1 false)
  store ptr %.ptr71.1972.3, ptr %i.bd, align 8, !tbaa !262
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.a
  %i.be = add nsw i32 %i.c, 1
  store i32 %i.be, ptr @_ZN18CanonicalCenteringILi2EE13class_count_mE, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #47
  store i32 3, ptr %4, align 8, !tbaa !361
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.bf, i8 0, i64 52, i1 false)
  %i.bh = load i64, ptr %4, align 8
  store i64 %i.bh, ptr %1, align 8
  %i.bi = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI3LocILi2EESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.bg) ; 0 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 19 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.bl = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.bj, ptr noundef nonnull align 8 dereferenceable(24) %i.bk) ; 0 uses
  %i.bm = load ptr, ptr %i.bk, align 8, !tbaa !279 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %.loopexit
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !280
  %i.bp = ptrtoint ptr %i.bo to i64
  %i.bq = ptrtoint ptr %i.bm to i64
  %i.br = sub i64 %i.bp, %i.bq
  call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef %i.br) #48
  br label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit.i

_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit.i: ; preds = %bb.b, %.loopexit
  %i.bs = load ptr, ptr %i.bg, align 8, !tbaa !267 ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.bs, null
  br i1 %.not.i.i.i1.i, label %_ZN9CenteringILi2EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit.i
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !268
  %i.bv = ptrtoint ptr %i.bu to i64
  %i.bw = ptrtoint ptr %i.bs to i64
  %i.bx = sub i64 %i.bv, %i.bw
  call void @_ZdlPvm(ptr noundef nonnull %i.bs, i64 noundef %i.bx) #48
  br label %_ZN9CenteringILi2EED2Ev.exit

_ZN9CenteringILi2EED2Ev.exit:                     ; preds = %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #47
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 18 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !264 ; 7 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 13 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !268
  %.not.i.i = icmp eq ptr %i.bz, %i.cb
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN9CenteringILi2EED2Ev.exit
  store i32 1, ptr %i.bz, align 4, !tbaa !4
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  store i32 1, ptr %i.cc, align 4, !tbaa !4
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store ptr %i.cd, ptr %i.by, align 8, !tbaa !264
  br label %_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit.i

bb.e:                                             ; preds = %_ZN9CenteringILi2EED2Ev.exit
  %i.ce = load ptr, ptr %i.a, align 8, !tbaa !267 ; 11 uses
  %i.cf = ptrtoint ptr %i.bz to i64               ; 3 uses
  %i.cg = ptrtoint ptr %i.ce to i64               ; 3 uses
  %i.ch = sub i64 %i.cf, %i.cg                    ; 4 uses
  %i.ci = icmp eq i64 %i.ch, 9223372036854775800
  br i1 %i.ci, label %bb.f, label %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i

bb.f:                                             ; preds = %bb.e
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.189) #46
  unreachable

_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.e
  %i.cj = ashr exact i64 %i.ch, 3                 ; 3 uses
  %.sroa.speculated.i.i232 = call i64 @llvm.umax.i64(i64 %i.cj, i64 1)
  %i.ck = add nsw i64 %.sroa.speculated.i.i232, %i.cj ; 2 uses
  %i.cl = icmp ult i64 %i.ck, %i.cj
  %i.cm = call i64 @llvm.umin.i64(i64 %i.ck, i64 1152921504606846975)
  %i.cn = select i1 %i.cl, i64 1152921504606846975, i64 %i.cm ; 3 uses
  %.not.i.i233 = icmp ne i64 %i.cn, 0
  call void @llvm.assume(i1 %.not.i.i233)
  %i.co = shl nuw nsw i64 %i.cn, 3
  %i.cp = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.co) #45 ; 11 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.ch ; 2 uses
  store i32 1, ptr %i.cq, align 4, !tbaa !4
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 4
  store i32 1, ptr %i.cr, align 4, !tbaa !4
  %.not9.i.i.i.i.i.i234 = icmp eq ptr %i.ce, %i.bz
  br i1 %.not9.i.i.i.i.i.i234, label %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i, label %.lr.ph.i.i.i.i.i.i235.preheader

.lr.ph.i.i.i.i.i.i235.preheader:                  ; preds = %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i
  %17 = sub i64 %i.cf, %i.cg
  %18 = add i64 %17, -8                           ; 2 uses
  %i.cs = lshr i64 %18, 3
  %i.ct = add nuw nsw i64 %i.cs, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %18, 120
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i235.preheader2351, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i235.preheader
  %i.cu = add i64 %i.cf, -8
  %i.cv = sub i64 %i.cu, %i.cg
  %i.cw = and i64 %i.cv, -8
  %i.cx = add i64 %i.cw, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.cp, i64 %i.cx
  %scevgep1323 = getelementptr i8, ptr %i.ce, i64 %i.cx
  %bound0 = icmp ult ptr %i.cp, %scevgep1323
  %bound1 = icmp ult ptr %i.ce, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i235.preheader2351, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ct, 4611686018427387900     ; 3 uses
  %i.cy = shl i64 %n.vec, 3                       ; 2 uses
  %i.cz = getelementptr i8, ptr %i.cp, i64 %i.cy  ; 2 uses
  %i.da = getelementptr i8, ptr %i.ce, i64 %i.cy
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.db = shl i64 %index, 3                       ; 3 uses
  %i.dc = or disjoint i64 %i.db, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cp, i64 %i.db
  %next.gep1324 = getelementptr i8, ptr %i.cp, i64 %i.dc
  %next.gep1325 = getelementptr i8, ptr %i.ce, i64 %i.db
  %next.gep1326 = getelementptr i8, ptr %i.ce, i64 %i.dc
  %wide.vec = load <4 x i32>, ptr %next.gep1325, align 4, !tbaa !236, !alias.scope !369
  %wide.vec1328 = load <4 x i32>, ptr %next.gep1326, align 4, !tbaa !236, !alias.scope !369
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !4, !alias.scope !372, !noalias !369
  store <4 x i32> %wide.vec1328, ptr %next.gep1324, align 4, !tbaa !4, !alias.scope !372, !noalias !369
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dd = icmp eq i64 %index.next, %n.vec
  br i1 %i.dd, label %middle.block, label %vector.body, !llvm.loop !374

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ct, %n.vec
  br i1 %cmp.n, label %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i, label %.lr.ph.i.i.i.i.i.i235.preheader2351

.lr.ph.i.i.i.i.i.i235.preheader2351:              ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i235.preheader, %middle.block
  %.011.i.i.i.i.i.i236.ph = phi ptr [ %i.cp, %vector.memcheck ], [ %i.cp, %.lr.ph.i.i.i.i.i.i235.preheader ], [ %i.cz, %middle.block ]
  %.0810.i.i.i.i.i.i237.ph = phi ptr [ %i.ce, %vector.memcheck ], [ %i.ce, %.lr.ph.i.i.i.i.i.i235.preheader ], [ %i.da, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i235

.lr.ph.i.i.i.i.i.i235:                            ; preds = %.lr.ph.i.i.i.i.i.i235.preheader2351, %.lr.ph.i.i.i.i.i.i235
  %.011.i.i.i.i.i.i236 = phi ptr [ %i.dj, %.lr.ph.i.i.i.i.i.i235 ], [ %.011.i.i.i.i.i.i236.ph, %.lr.ph.i.i.i.i.i.i235.preheader2351 ] ; 3 uses
  %.0810.i.i.i.i.i.i237 = phi ptr [ %i.di, %.lr.ph.i.i.i.i.i.i235 ], [ %.0810.i.i.i.i.i.i237.ph, %.lr.ph.i.i.i.i.i.i235.preheader2351 ] ; 3 uses
  %i.de = load i32, ptr %.0810.i.i.i.i.i.i237, align 4, !tbaa !236
  store i32 %i.de, ptr %.011.i.i.i.i.i.i236, align 4, !tbaa !4
  %i.df = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i236, i64 4
  %i.dg = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i237, i64 4
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !236
  store i32 %i.dh, ptr %i.df, align 4, !tbaa !4
  %i.di = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i237, i64 8 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i236, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i238 = icmp eq ptr %i.di, %i.bz
  br i1 %.not.i.i.i.i.i.i238, label %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i, label %.lr.ph.i.i.i.i.i.i235, !llvm.loop !375

_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i: ; preds = %.lr.ph.i.i.i.i.i.i235, %middle.block, %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i.i.i239 = phi ptr [ %i.cp, %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i ], [ %i.cz, %middle.block ], [ %i.dj, %.lr.ph.i.i.i.i.i.i235 ]
  %i.dk = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i239, i64 8
  %.not.i25.i246 = icmp eq ptr %i.ce, null
  br i1 %.not.i25.i246, label %_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit, label %bb.g

bb.g:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ce, i64 noundef %i.ch) #48
  br label %_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit

_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i, %bb.g
  store ptr %i.cp, ptr %i.a, align 8, !tbaa !267
  store ptr %i.dk, ptr %i.by, align 8, !tbaa !264
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.cn
  store ptr %i.dl, ptr %i.ca, align 8, !tbaa !268
  br label %_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit.i

_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit.i: ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit, %bb.d
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 18 uses
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !276 ; 6 uses
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 13 uses
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !280
  %.not.i3.i = icmp eq ptr %i.dn, %i.dp
  br i1 %.not.i3.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit.i
  store <2 x double> splat (double 5.000000e-01), ptr %i.dn, align 8, !tbaa !247
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  store ptr %i.dq, ptr %i.dm, align 8, !tbaa !276
  br label %_ZN9CenteringILi2EE8addValueERK3LocILi2EERK6VectorILi2Ed4FullE.exit

bb.i:                                             ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit.i
  %i.dr = load ptr, ptr %i.bj, align 8, !tbaa !279 ; 11 uses
  %i.ds = ptrtoint ptr %i.dn to i64               ; 3 uses
  %i.dt = ptrtoint ptr %i.dr to i64               ; 3 uses
  %i.du = sub i64 %i.ds, %i.dt                    ; 4 uses
  %i.dv = icmp eq i64 %i.du, 9223372036854775792
  br i1 %i.dv, label %bb.j, label %_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i

bb.j:                                             ; preds = %bb.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.189) #46
  unreachable

_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.i
  %i.dw = ashr exact i64 %i.du, 4                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.dw, i64 1)
  %i.dx = add nsw i64 %.sroa.speculated.i.i, %i.dw ; 2 uses
  %i.dy = icmp ult i64 %i.dx, %i.dw
  %i.dz = call i64 @llvm.umin.i64(i64 %i.dx, i64 576460752303423487)
  %i.ea = select i1 %i.dy, i64 576460752303423487, i64 %i.dz ; 3 uses
  %.not.i.i228 = icmp ne i64 %i.ea, 0
  call void @llvm.assume(i1 %.not.i.i228)
  %i.eb = shl nuw nsw i64 %i.ea, 4
  %i.ec = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eb) #45 ; 11 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.du
  store <2 x double> splat (double 5.000000e-01), ptr %i.ed, align 8, !tbaa !247
  %.not9.i.i.i.i.i.i = icmp eq ptr %i.dr, %i.dn
  br i1 %.not9.i.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i, label %.lr.ph.i.i.i.i.i.i229.preheader

.lr.ph.i.i.i.i.i.i229.preheader:                  ; preds = %_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i
  %19 = sub i64 %i.ds, %i.dt
  %20 = add i64 %19, -16                          ; 2 uses
  %i.ee = lshr i64 %20, 4
  %i.ef = add nuw nsw i64 %i.ee, 1                ; 2 uses
  %min.iters.check1340 = icmp ult i64 %20, 240
  br i1 %min.iters.check1340, label %.lr.ph.i.i.i.i.i.i229.preheader2349, label %vector.memcheck1333

vector.memcheck1333:                              ; preds = %.lr.ph.i.i.i.i.i.i229.preheader
  %i.eg = add i64 %i.ds, -16
  %i.eh = sub i64 %i.eg, %i.dt
  %i.ei = and i64 %i.eh, -16
  %i.ej = add i64 %i.ei, 16                       ; 2 uses
  %scevgep1334 = getelementptr i8, ptr %i.ec, i64 %i.ej
  %scevgep1335 = getelementptr i8, ptr %i.dr, i64 %i.ej
  %bound01336 = icmp ult ptr %i.ec, %scevgep1335
  %bound11337 = icmp ult ptr %i.dr, %scevgep1334
  %found.conflict1338 = and i1 %bound01336, %bound11337
  br i1 %found.conflict1338, label %.lr.ph.i.i.i.i.i.i229.preheader2349, label %vector.ph1341

vector.ph1341:                                    ; preds = %vector.memcheck1333
  %n.vec1343 = and i64 %i.ef, 2305843009213693950 ; 3 uses
  %i.ek = shl i64 %n.vec1343, 4                   ; 2 uses
  %i.el = getelementptr i8, ptr %i.ec, i64 %i.ek  ; 2 uses
  %i.em = getelementptr i8, ptr %i.dr, i64 %i.ek
  br label %vector.body1344

vector.body1344:                                  ; preds = %vector.body1344, %vector.ph1341
  %index1345 = phi i64 [ 0, %vector.ph1341 ], [ %index.next1351, %vector.body1344 ] ; 2 uses
  %i.en = shl i64 %index1345, 4                   ; 3 uses
  %i.eo = or disjoint i64 %i.en, 16               ; 2 uses
  %next.gep1346 = getelementptr i8, ptr %i.ec, i64 %i.en
  %next.gep1347 = getelementptr i8, ptr %i.ec, i64 %i.eo
  %next.gep1348 = getelementptr i8, ptr %i.dr, i64 %i.en
  %next.gep1349 = getelementptr i8, ptr %i.dr, i64 %i.eo
  %wide.load = load <2 x double>, ptr %next.gep1348, align 8, !tbaa !247, !alias.scope !376
  %wide.load1350 = load <2 x double>, ptr %next.gep1349, align 8, !tbaa !247, !alias.scope !376
  store <2 x double> %wide.load, ptr %next.gep1346, align 8, !tbaa !247, !alias.scope !379, !noalias !376
  store <2 x double> %wide.load1350, ptr %next.gep1347, align 8, !tbaa !247, !alias.scope !379, !noalias !376
  %index.next1351 = add nuw i64 %index1345, 2     ; 2 uses
  %i.ep = icmp eq i64 %index.next1351, %n.vec1343
  br i1 %i.ep, label %middle.block1352, label %vector.body1344, !llvm.loop !381

middle.block1352:                                 ; preds = %vector.body1344
  %cmp.n1353 = icmp eq i64 %i.ef, %n.vec1343
  br i1 %cmp.n1353, label %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i, label %.lr.ph.i.i.i.i.i.i229.preheader2349

.lr.ph.i.i.i.i.i.i229.preheader2349:              ; preds = %vector.memcheck1333, %.lr.ph.i.i.i.i.i.i229.preheader, %middle.block1352
  %.011.i.i.i.i.i.i.ph = phi ptr [ %i.ec, %vector.memcheck1333 ], [ %i.ec, %.lr.ph.i.i.i.i.i.i229.preheader ], [ %i.el, %middle.block1352 ]
  %.0810.i.i.i.i.i.i.ph = phi ptr [ %i.dr, %vector.memcheck1333 ], [ %i.dr, %.lr.ph.i.i.i.i.i.i229.preheader ], [ %i.em, %middle.block1352 ]
  br label %.lr.ph.i.i.i.i.i.i229

.lr.ph.i.i.i.i.i.i229:                            ; preds = %.lr.ph.i.i.i.i.i.i229.preheader2349, %.lr.ph.i.i.i.i.i.i229
  %.011.i.i.i.i.i.i = phi ptr [ %i.ev, %.lr.ph.i.i.i.i.i.i229 ], [ %.011.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i229.preheader2349 ] ; 3 uses
  %.0810.i.i.i.i.i.i = phi ptr [ %i.eu, %.lr.ph.i.i.i.i.i.i229 ], [ %.0810.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i229.preheader2349 ] ; 3 uses
  %i.eq = load double, ptr %.0810.i.i.i.i.i.i, align 8, !tbaa !247
  store double %i.eq, ptr %.011.i.i.i.i.i.i, align 8, !tbaa !247
  %i.er = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i, i64 8
  %i.es = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i, i64 8
  %i.et = load double, ptr %i.es, align 8, !tbaa !247
  store double %i.et, ptr %i.er, align 8, !tbaa !247
  %i.eu = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i230 = icmp eq ptr %i.eu, %i.dn
  br i1 %.not.i.i.i.i.i.i230, label %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i, label %.lr.ph.i.i.i.i.i.i229, !llvm.loop !382

_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i: ; preds = %.lr.ph.i.i.i.i.i.i229, %middle.block1352, %_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i.i.i231 = phi ptr [ %i.ec, %_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i ], [ %i.el, %middle.block1352 ], [ %i.ev, %.lr.ph.i.i.i.i.i.i229 ]
  %i.ew = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i231, i64 16
  %.not.i25.i = icmp eq ptr %i.dr, null
  br i1 %.not.i25.i, label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit, label %bb.k

bb.k:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i
  call void @_ZdlPvm(ptr noundef nonnull %i.dr, i64 noundef %i.du) #48
  br label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit

_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i, %bb.k
  store ptr %i.ec, ptr %i.bj, align 8, !tbaa !279
  store ptr %i.ew, ptr %i.dm, align 8, !tbaa !276
  %i.ex = getelementptr inbounds nuw [16 x i8], ptr %i.ec, i64 %i.ea
  store ptr %i.ex, ptr %i.do, align 8, !tbaa !280
  br label %_ZN9CenteringILi2EE8addValueERK3LocILi2EERK6VectorILi2Ed4FullE.exit

_ZN9CenteringILi2EE8addValueERK3LocILi2EERK6VectorILi2Ed4FullE.exit: ; preds = %bb.h, %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit
  %i.ey = load ptr, ptr @_ZN18CanonicalCenteringILi2EE17centering_table_mE, align 8, !tbaa !258
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 24
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !260
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !262 ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 168
  %i.fd = load i64, ptr %1, align 8
  store i64 %i.fd, ptr %i.fc, align 8
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fb, i64 176
  %i.ff = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI3LocILi2EESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.fe, ptr noundef nonnull align 8 dereferenceable(24) %i.a) ; 0 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fb, i64 200
  %i.fh = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.fg, ptr noundef nonnull align 8 dereferenceable(24) %i.bj) ; 0 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 9 uses
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !264 ; 7 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.fl = load ptr, ptr %i.fk, align 16, !tbaa !268
  %.not.i.i74 = icmp eq ptr %i.fj, %i.fl
  br i1 %.not.i.i74, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN9CenteringILi2EE8addValueERK3LocILi2EERK6VectorILi2Ed4FullE.exit
  store i32 1, ptr %i.fj, align 4, !tbaa !4
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fj, i64 4
  store i32 0, ptr %i.fm, align 4, !tbaa !4
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  store ptr %i.fn, ptr %i.fi, align 8, !tbaa !264
  br label %_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit.i75

bb.m:                                             ; preds = %_ZN9CenteringILi2EE8addValueERK3LocILi2EERK6VectorILi2Ed4FullE.exit
  %i.fo = load ptr, ptr %2, align 16, !tbaa !267  ; 11 uses
  %i.fp = ptrtoint ptr %i.fj to i64               ; 3 uses
  %i.fq = ptrtoint ptr %i.fo to i64               ; 3 uses
  %i.fr = sub i64 %i.fp, %i.fq                    ; 4 uses
  %i.fs = icmp eq i64 %i.fr, 9223372036854775800
  br i1 %i.fs, label %bb.n, label %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i266

bb.n:                                             ; preds = %bb.m
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.189) #46
  unreachable

_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i266: ; preds = %bb.m
  %i.ft = ashr exact i64 %i.fr, 3                 ; 3 uses
  %.sroa.speculated.i.i267 = call i64 @llvm.umax.i64(i64 %i.ft, i64 1)
  %i.fu = add nsw i64 %.sroa.speculated.i.i267, %i.ft ; 2 uses
  %i.fv = icmp ult i64 %i.fu, %i.ft
  %i.fw = call i64 @llvm.umin.i64(i64 %i.fu, i64 1152921504606846975)
  %i.fx = select i1 %i.fv, i64 1152921504606846975, i64 %i.fw ; 3 uses
  %.not.i.i268 = icmp ne i64 %i.fx, 0
  call void @llvm.assume(i1 %.not.i.i268)
  %i.fy = shl nuw nsw i64 %i.fx, 3
  %i.fz = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fy) #45 ; 11 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 %i.fr ; 2 uses
  store i32 1, ptr %i.ga, align 4, !tbaa !4
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 4
  store i32 0, ptr %i.gb, align 4, !tbaa !4
  %.not9.i.i.i.i.i.i269 = icmp eq ptr %i.fo, %i.fj
  br i1 %.not9.i.i.i.i.i.i269, label %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i281, label %.lr.ph.i.i.i.i.i.i270.preheader

.lr.ph.i.i.i.i.i.i270.preheader:                  ; preds = %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i266
  %21 = sub i64 %i.fp, %i.fq
  %22 = add i64 %21, -8                           ; 2 uses
  %i.gc = lshr i64 %22, 3
  %i.gd = add nuw nsw i64 %i.gc, 1                ; 2 uses
  %min.iters.check1363 = icmp ult i64 %22, 120
  br i1 %min.iters.check1363, label %.lr.ph.i.i.i.i.i.i270.preheader2347, label %vector.memcheck1356

vector.memcheck1356:                              ; preds = %.lr.ph.i.i.i.i.i.i270.preheader
  %i.ge = add i64 %i.fp, -8
  %i.gf = sub i64 %i.ge, %i.fq
  %i.gg = and i64 %i.gf, -8
  %i.gh = add i64 %i.gg, 8                        ; 2 uses
  %scevgep1357 = getelementptr i8, ptr %i.fz, i64 %i.gh
  %scevgep1358 = getelementptr i8, ptr %i.fo, i64 %i.gh
  %bound01359 = icmp ult ptr %i.fz, %scevgep1358
  %bound11360 = icmp ult ptr %i.fo, %scevgep1357
  %found.conflict1361 = and i1 %bound01359, %bound11360
  br i1 %found.conflict1361, label %.lr.ph.i.i.i.i.i.i270.preheader2347, label %vector.ph1364

vector.ph1364:                                    ; preds = %vector.memcheck1356
  %n.vec1366 = and i64 %i.gd, 4611686018427387900 ; 3 uses
  %i.gi = shl i64 %n.vec1366, 3                   ; 2 uses
  %i.gj = getelementptr i8, ptr %i.fz, i64 %i.gi  ; 2 uses
  %i.gk = getelementptr i8, ptr %i.fo, i64 %i.gi
  br label %vector.body1367

vector.body1367:                                  ; preds = %vector.body1367, %vector.ph1364
  %index1368 = phi i64 [ 0, %vector.ph1364 ], [ %index.next1381, %vector.body1367 ] ; 2 uses
  %i.gl = shl i64 %index1368, 3                   ; 3 uses
  %i.gm = or disjoint i64 %i.gl, 16               ; 2 uses
  %next.gep1369 = getelementptr i8, ptr %i.fz, i64 %i.gl
  %next.gep1370 = getelementptr i8, ptr %i.fz, i64 %i.gm
  %next.gep1371 = getelementptr i8, ptr %i.fo, i64 %i.gl
  %next.gep1372 = getelementptr i8, ptr %i.fo, i64 %i.gm
  %wide.vec1373 = load <4 x i32>, ptr %next.gep1371, align 4, !tbaa !236, !alias.scope !383
  %wide.vec1376 = load <4 x i32>, ptr %next.gep1372, align 4, !tbaa !236, !alias.scope !383
  store <4 x i32> %wide.vec1373, ptr %next.gep1369, align 4, !tbaa !4, !alias.scope !386, !noalias !383
  store <4 x i32> %wide.vec1376, ptr %next.gep1370, align 4, !tbaa !4, !alias.scope !386, !noalias !383
  %index.next1381 = add nuw i64 %index1368, 4     ; 2 uses
  %i.gn = icmp eq i64 %index.next1381, %n.vec1366
  br i1 %i.gn, label %middle.block1382, label %vector.body1367, !llvm.loop !388

middle.block1382:                                 ; preds = %vector.body1367
  %cmp.n1383 = icmp eq i64 %i.gd, %n.vec1366
  br i1 %cmp.n1383, label %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i281, label %.lr.ph.i.i.i.i.i.i270.preheader2347

.lr.ph.i.i.i.i.i.i270.preheader2347:              ; preds = %vector.memcheck1356, %.lr.ph.i.i.i.i.i.i270.preheader, %middle.block1382
  %.011.i.i.i.i.i.i271.ph = phi ptr [ %i.fz, %vector.memcheck1356 ], [ %i.fz, %.lr.ph.i.i.i.i.i.i270.preheader ], [ %i.gj, %middle.block1382 ]
  %.0810.i.i.i.i.i.i272.ph = phi ptr [ %i.fo, %vector.memcheck1356 ], [ %i.fo, %.lr.ph.i.i.i.i.i.i270.preheader ], [ %i.gk, %middle.block1382 ]
  br label %.lr.ph.i.i.i.i.i.i270

.lr.ph.i.i.i.i.i.i270:                            ; preds = %.lr.ph.i.i.i.i.i.i270.preheader2347, %.lr.ph.i.i.i.i.i.i270
  %.011.i.i.i.i.i.i271 = phi ptr [ %i.gt, %.lr.ph.i.i.i.i.i.i270 ], [ %.011.i.i.i.i.i.i271.ph, %.lr.ph.i.i.i.i.i.i270.preheader2347 ] ; 3 uses
  %.0810.i.i.i.i.i.i272 = phi ptr [ %i.gs, %.lr.ph.i.i.i.i.i.i270 ], [ %.0810.i.i.i.i.i.i272.ph, %.lr.ph.i.i.i.i.i.i270.preheader2347 ] ; 3 uses
  %i.go = load i32, ptr %.0810.i.i.i.i.i.i272, align 4, !tbaa !236
  store i32 %i.go, ptr %.011.i.i.i.i.i.i271, align 4, !tbaa !4
  %i.gp = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i271, i64 4
  %i.gq = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i272, i64 4
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !236
  store i32 %i.gr, ptr %i.gp, align 4, !tbaa !4
  %i.gs = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i272, i64 8 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i271, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i273 = icmp eq ptr %i.gs, %i.fj
  br i1 %.not.i.i.i.i.i.i273, label %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i281, label %.lr.ph.i.i.i.i.i.i270, !llvm.loop !389

_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i281: ; preds = %.lr.ph.i.i.i.i.i.i270, %middle.block1382, %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i266
  %.0.lcssa.i.i.i.i.i.i275 = phi ptr [ %i.fz, %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i266 ], [ %i.gj, %middle.block1382 ], [ %i.gt, %.lr.ph.i.i.i.i.i.i270 ]
  %i.gu = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i275, i64 8
  %.not.i25.i283 = icmp eq ptr %i.fo, null
  br i1 %.not.i25.i283, label %_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit284, label %bb.o

bb.o:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i281
  call void @_ZdlPvm(ptr noundef nonnull %i.fo, i64 noundef %i.fr) #48
  br label %_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit284

_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit284: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i281, %bb.o
  store ptr %i.fz, ptr %2, align 16, !tbaa !267
  store ptr %i.gu, ptr %i.fi, align 8, !tbaa !264
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.fz, i64 %i.fx
  store ptr %i.gv, ptr %i.fk, align 16, !tbaa !268
  br label %_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit.i75

_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit.i75: ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit284, %bb.l
  %i.gw = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 10 uses
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !276 ; 6 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.gz = load ptr, ptr %i.gy, align 16, !tbaa !280
  %.not.i4.i = icmp eq ptr %i.gx, %i.gz
  br i1 %.not.i4.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit.i75
  store <2 x double> <double 5.000000e-01, double 0.000000e+00>, ptr %i.gx, align 8, !tbaa !247
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gx, i64 16
  store ptr %i.ha, ptr %i.gw, align 8, !tbaa !276
  br label %_ZN18CanonicalCenteringILi2EE8addValueERSt6vectorI3LocILi2EESaIS3_EERS1_I6VectorILi2Ed4FullESaIS9_EERKS3_RKS9_.exit

bb.q:                                             ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit.i75
  %i.hb = load ptr, ptr %3, align 16, !tbaa !279  ; 11 uses
  %i.hc = ptrtoint ptr %i.gx to i64               ; 3 uses
  %i.hd = ptrtoint ptr %i.hb to i64               ; 3 uses
  %i.he = sub i64 %i.hc, %i.hd                    ; 4 uses
  %i.hf = icmp eq i64 %i.he, 9223372036854775792
  br i1 %i.hf, label %bb.r, label %_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i247

bb.r:                                             ; preds = %bb.q
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.189) #46
  unreachable

_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i247: ; preds = %bb.q
  %i.hg = ashr exact i64 %i.he, 4                 ; 3 uses
  %.sroa.speculated.i.i248 = call i64 @llvm.umax.i64(i64 %i.hg, i64 1)
  %i.hh = add nsw i64 %.sroa.speculated.i.i248, %i.hg ; 2 uses
  %i.hi = icmp ult i64 %i.hh, %i.hg
  %i.hj = call i64 @llvm.umin.i64(i64 %i.hh, i64 576460752303423487)
  %i.hk = select i1 %i.hi, i64 576460752303423487, i64 %i.hj ; 3 uses
  %.not.i.i249 = icmp ne i64 %i.hk, 0
  call void @llvm.assume(i1 %.not.i.i249)
  %i.hl = shl nuw nsw i64 %i.hk, 4
  %i.hm = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hl) #45 ; 11 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 %i.he
  store <2 x double> <double 5.000000e-01, double 0.000000e+00>, ptr %i.hn, align 8, !tbaa !247
  %.not9.i.i.i.i.i.i250 = icmp eq ptr %i.hb, %i.gx
  br i1 %.not9.i.i.i.i.i.i250, label %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i262, label %.lr.ph.i.i.i.i.i.i251.preheader

.lr.ph.i.i.i.i.i.i251.preheader:                  ; preds = %_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i247
  %23 = sub i64 %i.hc, %i.hd
  %24 = add i64 %23, -16                          ; 2 uses
  %i.ho = lshr i64 %24, 4
  %i.hp = add nuw nsw i64 %i.ho, 1                ; 2 uses
  %min.iters.check1393 = icmp ult i64 %24, 240
  br i1 %min.iters.check1393, label %.lr.ph.i.i.i.i.i.i251.preheader2345, label %vector.memcheck1386

vector.memcheck1386:                              ; preds = %.lr.ph.i.i.i.i.i.i251.preheader
  %i.hq = add i64 %i.hc, -16
  %i.hr = sub i64 %i.hq, %i.hd
  %i.hs = and i64 %i.hr, -16
  %i.ht = add i64 %i.hs, 16                       ; 2 uses
  %scevgep1387 = getelementptr i8, ptr %i.hm, i64 %i.ht
  %scevgep1388 = getelementptr i8, ptr %i.hb, i64 %i.ht
  %bound01389 = icmp ult ptr %i.hm, %scevgep1388
  %bound11390 = icmp ult ptr %i.hb, %scevgep1387
  %found.conflict1391 = and i1 %bound01389, %bound11390
  br i1 %found.conflict1391, label %.lr.ph.i.i.i.i.i.i251.preheader2345, label %vector.ph1394

vector.ph1394:                                    ; preds = %vector.memcheck1386
  %n.vec1396 = and i64 %i.hp, 2305843009213693950 ; 3 uses
  %i.hu = shl i64 %n.vec1396, 4                   ; 2 uses
  %i.hv = getelementptr i8, ptr %i.hm, i64 %i.hu  ; 2 uses
  %i.hw = getelementptr i8, ptr %i.hb, i64 %i.hu
  br label %vector.body1397

vector.body1397:                                  ; preds = %vector.body1397, %vector.ph1394
  %index1398 = phi i64 [ 0, %vector.ph1394 ], [ %index.next1405, %vector.body1397 ] ; 2 uses
  %i.hx = shl i64 %index1398, 4                   ; 3 uses
  %i.hy = or disjoint i64 %i.hx, 16               ; 2 uses
  %next.gep1399 = getelementptr i8, ptr %i.hm, i64 %i.hx
  %next.gep1400 = getelementptr i8, ptr %i.hm, i64 %i.hy
  %next.gep1401 = getelementptr i8, ptr %i.hb, i64 %i.hx
  %next.gep1402 = getelementptr i8, ptr %i.hb, i64 %i.hy
  %wide.load1403 = load <2 x double>, ptr %next.gep1401, align 8, !tbaa !247, !alias.scope !390
  %wide.load1404 = load <2 x double>, ptr %next.gep1402, align 8, !tbaa !247, !alias.scope !390
  store <2 x double> %wide.load1403, ptr %next.gep1399, align 8, !tbaa !247, !alias.scope !393, !noalias !390
  store <2 x double> %wide.load1404, ptr %next.gep1400, align 8, !tbaa !247, !alias.scope !393, !noalias !390
  %index.next1405 = add nuw i64 %index1398, 2     ; 2 uses
  %i.hz = icmp eq i64 %index.next1405, %n.vec1396
  br i1 %i.hz, label %middle.block1406, label %vector.body1397, !llvm.loop !395

middle.block1406:                                 ; preds = %vector.body1397
  %cmp.n1407 = icmp eq i64 %i.hp, %n.vec1396
  br i1 %cmp.n1407, label %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i262, label %.lr.ph.i.i.i.i.i.i251.preheader2345

.lr.ph.i.i.i.i.i.i251.preheader2345:              ; preds = %vector.memcheck1386, %.lr.ph.i.i.i.i.i.i251.preheader, %middle.block1406
  %.011.i.i.i.i.i.i252.ph = phi ptr [ %i.hm, %vector.memcheck1386 ], [ %i.hm, %.lr.ph.i.i.i.i.i.i251.preheader ], [ %i.hv, %middle.block1406 ]
  %.0810.i.i.i.i.i.i253.ph = phi ptr [ %i.hb, %vector.memcheck1386 ], [ %i.hb, %.lr.ph.i.i.i.i.i.i251.preheader ], [ %i.hw, %middle.block1406 ]
  br label %.lr.ph.i.i.i.i.i.i251

.lr.ph.i.i.i.i.i.i251:                            ; preds = %.lr.ph.i.i.i.i.i.i251.preheader2345, %.lr.ph.i.i.i.i.i.i251
  %.011.i.i.i.i.i.i252 = phi ptr [ %i.if, %.lr.ph.i.i.i.i.i.i251 ], [ %.011.i.i.i.i.i.i252.ph, %.lr.ph.i.i.i.i.i.i251.preheader2345 ] ; 3 uses
  %.0810.i.i.i.i.i.i253 = phi ptr [ %i.ie, %.lr.ph.i.i.i.i.i.i251 ], [ %.0810.i.i.i.i.i.i253.ph, %.lr.ph.i.i.i.i.i.i251.preheader2345 ] ; 3 uses
  %i.ia = load double, ptr %.0810.i.i.i.i.i.i253, align 8, !tbaa !247
  store double %i.ia, ptr %.011.i.i.i.i.i.i252, align 8, !tbaa !247
  %i.ib = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i252, i64 8
  %i.ic = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i253, i64 8
  %i.id = load double, ptr %i.ic, align 8, !tbaa !247
  store double %i.id, ptr %i.ib, align 8, !tbaa !247
  %i.ie = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i253, i64 16 ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i252, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i254 = icmp eq ptr %i.ie, %i.gx
  br i1 %.not.i.i.i.i.i.i254, label %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i262, label %.lr.ph.i.i.i.i.i.i251, !llvm.loop !396

_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i262: ; preds = %.lr.ph.i.i.i.i.i.i251, %middle.block1406, %_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i247
  %.0.lcssa.i.i.i.i.i.i256 = phi ptr [ %i.hm, %_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i247 ], [ %i.hv, %middle.block1406 ], [ %i.if, %.lr.ph.i.i.i.i.i.i251 ]
  %i.ig = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i256, i64 16
  %.not.i25.i264 = icmp eq ptr %i.hb, null
  br i1 %.not.i25.i264, label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit265, label %bb.s

bb.s:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i262
  call void @_ZdlPvm(ptr noundef nonnull %i.hb, i64 noundef %i.he) #48
  br label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit265

_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit265: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i262, %bb.s
  store ptr %i.hm, ptr %3, align 16, !tbaa !279
  store ptr %i.ig, ptr %i.gw, align 8, !tbaa !276
  %i.ih = getelementptr inbounds nuw [16 x i8], ptr %i.hm, i64 %i.hk
  store ptr %i.ih, ptr %i.gy, align 16, !tbaa !280
  br label %_ZN18CanonicalCenteringILi2EE8addValueERSt6vectorI3LocILi2EESaIS3_EERS1_I6VectorILi2Ed4FullESaIS9_EERKS3_RKS9_.exit

_ZN18CanonicalCenteringILi2EE8addValueERSt6vectorI3LocILi2EESaIS3_EERS1_I6VectorILi2Ed4FullESaIS9_EERKS3_RKS9_.exit: ; preds = %bb.p, %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit265
  %i.ii = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 8 uses
  %i.ij = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI3LocILi2EESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.ii, ptr noundef nonnull align 8 dereferenceable(24) %2) ; 0 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 8 uses
  %i.il = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.ik, ptr noundef nonnull align 8 dereferenceable(24) %3) ; 0 uses
  %i.im = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 6 uses
  %i.in = load ptr, ptr %i.im, align 16, !tbaa !264 ; 7 uses
  %i.io = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 4 uses
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !268
  %.not.i.i76 = icmp eq ptr %i.in, %i.ip
  br i1 %.not.i.i76, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZN18CanonicalCenteringILi2EE8addValueERSt6vectorI3LocILi2EESaIS3_EERS1_I6VectorILi2Ed4FullESaIS9_EERKS3_RKS9_.exit
  store i32 1, ptr %i.in, align 4, !tbaa !4
  %i.iq = getelementptr inbounds nuw i8, ptr %i.in, i64 4
  store i32 0, ptr %i.iq, align 4, !tbaa !4
  %i.ir = getelementptr inbounds nuw i8, ptr %i.in, i64 8
  store ptr %i.ir, ptr %i.im, align 16, !tbaa !264
  br label %_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit.i77

bb.u:                                             ; preds = %_ZN18CanonicalCenteringILi2EE8addValueERSt6vectorI3LocILi2EESaIS3_EERS1_I6VectorILi2Ed4FullESaIS9_EERKS3_RKS9_.exit
  %i.is = load ptr, ptr %i.ii, align 8, !tbaa !267 ; 11 uses
  %i.it = ptrtoint ptr %i.in to i64               ; 3 uses
  %i.iu = ptrtoint ptr %i.is to i64               ; 3 uses
  %i.iv = sub i64 %i.it, %i.iu                    ; 4 uses
  %i.iw = icmp eq i64 %i.iv, 9223372036854775800
  br i1 %i.iw, label %bb.v, label %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i304

bb.v:                                             ; preds = %bb.u
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.189) #46
  unreachable

_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i304: ; preds = %bb.u
  %i.ix = ashr exact i64 %i.iv, 3                 ; 3 uses
  %.sroa.speculated.i.i305 = call i64 @llvm.umax.i64(i64 %i.ix, i64 1)
  %i.iy = add nsw i64 %.sroa.speculated.i.i305, %i.ix ; 2 uses
  %i.iz = icmp ult i64 %i.iy, %i.ix
  %i.ja = call i64 @llvm.umin.i64(i64 %i.iy, i64 1152921504606846975)
  %i.jb = select i1 %i.iz, i64 1152921504606846975, i64 %i.ja ; 3 uses
  %.not.i.i306 = icmp ne i64 %i.jb, 0
  call void @llvm.assume(i1 %.not.i.i306)
  %i.jc = shl nuw nsw i64 %i.jb, 3
  %i.jd = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jc) #45 ; 11 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 %i.iv ; 2 uses
  store i32 1, ptr %i.je, align 4, !tbaa !4
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 4
  store i32 0, ptr %i.jf, align 4, !tbaa !4
  %.not9.i.i.i.i.i.i307 = icmp eq ptr %i.is, %i.in
  br i1 %.not9.i.i.i.i.i.i307, label %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i319, label %.lr.ph.i.i.i.i.i.i308.preheader

.lr.ph.i.i.i.i.i.i308.preheader:                  ; preds = %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i304
  %25 = sub i64 %i.it, %i.iu
  %26 = add i64 %25, -8                           ; 2 uses
  %i.jg = lshr i64 %26, 3
  %i.jh = add nuw nsw i64 %i.jg, 1                ; 2 uses
  %min.iters.check1417 = icmp ult i64 %26, 120
  br i1 %min.iters.check1417, label %.lr.ph.i.i.i.i.i.i308.preheader2343, label %vector.memcheck1410

vector.memcheck1410:                              ; preds = %.lr.ph.i.i.i.i.i.i308.preheader
  %i.ji = add i64 %i.it, -8
  %i.jj = sub i64 %i.ji, %i.iu
  %i.jk = and i64 %i.jj, -8
  %i.jl = add i64 %i.jk, 8                        ; 2 uses
  %scevgep1411 = getelementptr i8, ptr %i.jd, i64 %i.jl
  %scevgep1412 = getelementptr i8, ptr %i.is, i64 %i.jl
  %bound01413 = icmp ult ptr %i.jd, %scevgep1412
  %bound11414 = icmp ult ptr %i.is, %scevgep1411
  %found.conflict1415 = and i1 %bound01413, %bound11414
  br i1 %found.conflict1415, label %.lr.ph.i.i.i.i.i.i308.preheader2343, label %vector.ph1418

vector.ph1418:                                    ; preds = %vector.memcheck1410
  %n.vec1420 = and i64 %i.jh, 4611686018427387900 ; 3 uses
  %i.jm = shl i64 %n.vec1420, 3                   ; 2 uses
  %i.jn = getelementptr i8, ptr %i.jd, i64 %i.jm  ; 2 uses
  %i.jo = getelementptr i8, ptr %i.is, i64 %i.jm
  br label %vector.body1421

vector.body1421:                                  ; preds = %vector.body1421, %vector.ph1418
  %index1422 = phi i64 [ 0, %vector.ph1418 ], [ %index.next1435, %vector.body1421 ] ; 2 uses
  %i.jp = shl i64 %index1422, 3                   ; 3 uses
  %i.jq = or disjoint i64 %i.jp, 16               ; 2 uses
  %next.gep1423 = getelementptr i8, ptr %i.jd, i64 %i.jp
  %next.gep1424 = getelementptr i8, ptr %i.jd, i64 %i.jq
  %next.gep1425 = getelementptr i8, ptr %i.is, i64 %i.jp
  %next.gep1426 = getelementptr i8, ptr %i.is, i64 %i.jq
  %wide.vec1427 = load <4 x i32>, ptr %next.gep1425, align 4, !tbaa !236, !alias.scope !397
  %wide.vec1430 = load <4 x i32>, ptr %next.gep1426, align 4, !tbaa !236, !alias.scope !397
  store <4 x i32> %wide.vec1427, ptr %next.gep1423, align 4, !tbaa !4, !alias.scope !400, !noalias !397
  store <4 x i32> %wide.vec1430, ptr %next.gep1424, align 4, !tbaa !4, !alias.scope !400, !noalias !397
  %index.next1435 = add nuw i64 %index1422, 4     ; 2 uses
  %i.jr = icmp eq i64 %index.next1435, %n.vec1420
  br i1 %i.jr, label %middle.block1436, label %vector.body1421, !llvm.loop !402

middle.block1436:                                 ; preds = %vector.body1421
  %cmp.n1437 = icmp eq i64 %i.jh, %n.vec1420
  br i1 %cmp.n1437, label %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i319, label %.lr.ph.i.i.i.i.i.i308.preheader2343

.lr.ph.i.i.i.i.i.i308.preheader2343:              ; preds = %vector.memcheck1410, %.lr.ph.i.i.i.i.i.i308.preheader, %middle.block1436
  %.011.i.i.i.i.i.i309.ph = phi ptr [ %i.jd, %vector.memcheck1410 ], [ %i.jd, %.lr.ph.i.i.i.i.i.i308.preheader ], [ %i.jn, %middle.block1436 ]
  %.0810.i.i.i.i.i.i310.ph = phi ptr [ %i.is, %vector.memcheck1410 ], [ %i.is, %.lr.ph.i.i.i.i.i.i308.preheader ], [ %i.jo, %middle.block1436 ]
  br label %.lr.ph.i.i.i.i.i.i308

.lr.ph.i.i.i.i.i.i308:                            ; preds = %.lr.ph.i.i.i.i.i.i308.preheader2343, %.lr.ph.i.i.i.i.i.i308
  %.011.i.i.i.i.i.i309 = phi ptr [ %i.jx, %.lr.ph.i.i.i.i.i.i308 ], [ %.011.i.i.i.i.i.i309.ph, %.lr.ph.i.i.i.i.i.i308.preheader2343 ] ; 3 uses
  %.0810.i.i.i.i.i.i310 = phi ptr [ %i.jw, %.lr.ph.i.i.i.i.i.i308 ], [ %.0810.i.i.i.i.i.i310.ph, %.lr.ph.i.i.i.i.i.i308.preheader2343 ] ; 3 uses
  %i.js = load i32, ptr %.0810.i.i.i.i.i.i310, align 4, !tbaa !236
  store i32 %i.js, ptr %.011.i.i.i.i.i.i309, align 4, !tbaa !4
  %i.jt = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i309, i64 4
  %i.ju = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i310, i64 4
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !236
  store i32 %i.jv, ptr %i.jt, align 4, !tbaa !4
  %i.jw = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i310, i64 8 ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i309, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i311 = icmp eq ptr %i.jw, %i.in
  br i1 %.not.i.i.i.i.i.i311, label %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i319, label %.lr.ph.i.i.i.i.i.i308, !llvm.loop !403

_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i319: ; preds = %.lr.ph.i.i.i.i.i.i308, %middle.block1436, %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i304
  %.0.lcssa.i.i.i.i.i.i313 = phi ptr [ %i.jd, %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i304 ], [ %i.jn, %middle.block1436 ], [ %i.jx, %.lr.ph.i.i.i.i.i.i308 ]
  %i.jy = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i313, i64 8
  %.not.i25.i321 = icmp eq ptr %i.is, null
  br i1 %.not.i25.i321, label %_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit322, label %bb.w

bb.w:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i319
  call void @_ZdlPvm(ptr noundef nonnull %i.is, i64 noundef %i.iv) #48
  br label %_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit322

_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit322: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i319, %bb.w
  store ptr %i.jd, ptr %i.ii, align 8, !tbaa !267
  store ptr %i.jy, ptr %i.im, align 16, !tbaa !264
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %i.jd, i64 %i.jb
  store ptr %i.jz, ptr %i.io, align 8, !tbaa !268
  br label %_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit.i77

_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit.i77: ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit322, %bb.t
  %i.ka = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 6 uses
  %i.kb = load ptr, ptr %i.ka, align 16, !tbaa !276 ; 6 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 4 uses
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !280
  %.not.i4.i78 = icmp eq ptr %i.kb, %i.kd
  br i1 %.not.i4.i78, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit.i77
  store <2 x double> <double 5.000000e-01, double 1.000000e+00>, ptr %i.kb, align 8, !tbaa !247
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kb, i64 16
  store ptr %i.ke, ptr %i.ka, align 16, !tbaa !276
  br label %_ZN18CanonicalCenteringILi2EE8addValueERSt6vectorI3LocILi2EESaIS3_EERS1_I6VectorILi2Ed4FullESaIS9_EERKS3_RKS9_.exit79

bb.y:                                             ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit.i77
  %i.kf = load ptr, ptr %i.ik, align 8, !tbaa !279 ; 11 uses
  %i.kg = ptrtoint ptr %i.kb to i64               ; 3 uses
  %i.kh = ptrtoint ptr %i.kf to i64               ; 3 uses
  %i.ki = sub i64 %i.kg, %i.kh                    ; 4 uses
  %i.kj = icmp eq i64 %i.ki, 9223372036854775792
  br i1 %i.kj, label %bb.z, label %_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i285

bb.z:                                             ; preds = %bb.y
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.189) #46
  unreachable

_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i285: ; preds = %bb.y
  %i.kk = ashr exact i64 %i.ki, 4                 ; 3 uses
  %.sroa.speculated.i.i286 = call i64 @llvm.umax.i64(i64 %i.kk, i64 1)
  %i.kl = add nsw i64 %.sroa.speculated.i.i286, %i.kk ; 2 uses
  %i.km = icmp ult i64 %i.kl, %i.kk
  %i.kn = call i64 @llvm.umin.i64(i64 %i.kl, i64 576460752303423487)
  %i.ko = select i1 %i.km, i64 576460752303423487, i64 %i.kn ; 3 uses
  %.not.i.i287 = icmp ne i64 %i.ko, 0
  call void @llvm.assume(i1 %.not.i.i287)
  %i.kp = shl nuw nsw i64 %i.ko, 4
  %i.kq = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kp) #45 ; 11 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 %i.ki
  store <2 x double> <double 5.000000e-01, double 1.000000e+00>, ptr %i.kr, align 8, !tbaa !247
  %.not9.i.i.i.i.i.i288 = icmp eq ptr %i.kf, %i.kb
  br i1 %.not9.i.i.i.i.i.i288, label %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i300, label %.lr.ph.i.i.i.i.i.i289.preheader

.lr.ph.i.i.i.i.i.i289.preheader:                  ; preds = %_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i285
  %27 = sub i64 %i.kg, %i.kh
  %28 = add i64 %27, -16                          ; 2 uses
  %i.ks = lshr i64 %28, 4
  %i.kt = add nuw nsw i64 %i.ks, 1                ; 2 uses
  %min.iters.check1447 = icmp ult i64 %28, 240
  br i1 %min.iters.check1447, label %.lr.ph.i.i.i.i.i.i289.preheader2341, label %vector.memcheck1440

vector.memcheck1440:                              ; preds = %.lr.ph.i.i.i.i.i.i289.preheader
  %i.ku = add i64 %i.kg, -16
  %i.kv = sub i64 %i.ku, %i.kh
  %i.kw = and i64 %i.kv, -16
  %i.kx = add i64 %i.kw, 16                       ; 2 uses
  %scevgep1441 = getelementptr i8, ptr %i.kq, i64 %i.kx
  %scevgep1442 = getelementptr i8, ptr %i.kf, i64 %i.kx
  %bound01443 = icmp ult ptr %i.kq, %scevgep1442
  %bound11444 = icmp ult ptr %i.kf, %scevgep1441
  %found.conflict1445 = and i1 %bound01443, %bound11444
  br i1 %found.conflict1445, label %.lr.ph.i.i.i.i.i.i289.preheader2341, label %vector.ph1448

vector.ph1448:                                    ; preds = %vector.memcheck1440
  %n.vec1450 = and i64 %i.kt, 2305843009213693950 ; 3 uses
  %i.ky = shl i64 %n.vec1450, 4                   ; 2 uses
  %i.kz = getelementptr i8, ptr %i.kq, i64 %i.ky  ; 2 uses
  %i.la = getelementptr i8, ptr %i.kf, i64 %i.ky
  br label %vector.body1451

vector.body1451:                                  ; preds = %vector.body1451, %vector.ph1448
  %index1452 = phi i64 [ 0, %vector.ph1448 ], [ %index.next1459, %vector.body1451 ] ; 2 uses
  %i.lb = shl i64 %index1452, 4                   ; 3 uses
  %i.lc = or disjoint i64 %i.lb, 16               ; 2 uses
  %next.gep1453 = getelementptr i8, ptr %i.kq, i64 %i.lb
  %next.gep1454 = getelementptr i8, ptr %i.kq, i64 %i.lc
  %next.gep1455 = getelementptr i8, ptr %i.kf, i64 %i.lb
  %next.gep1456 = getelementptr i8, ptr %i.kf, i64 %i.lc
  %wide.load1457 = load <2 x double>, ptr %next.gep1455, align 8, !tbaa !247, !alias.scope !404
  %wide.load1458 = load <2 x double>, ptr %next.gep1456, align 8, !tbaa !247, !alias.scope !404
  store <2 x double> %wide.load1457, ptr %next.gep1453, align 8, !tbaa !247, !alias.scope !407, !noalias !404
  store <2 x double> %wide.load1458, ptr %next.gep1454, align 8, !tbaa !247, !alias.scope !407, !noalias !404
  %index.next1459 = add nuw i64 %index1452, 2     ; 2 uses
  %i.ld = icmp eq i64 %index.next1459, %n.vec1450
  br i1 %i.ld, label %middle.block1460, label %vector.body1451, !llvm.loop !409

middle.block1460:                                 ; preds = %vector.body1451
  %cmp.n1461 = icmp eq i64 %i.kt, %n.vec1450
  br i1 %cmp.n1461, label %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i300, label %.lr.ph.i.i.i.i.i.i289.preheader2341

.lr.ph.i.i.i.i.i.i289.preheader2341:              ; preds = %vector.memcheck1440, %.lr.ph.i.i.i.i.i.i289.preheader, %middle.block1460
  %.011.i.i.i.i.i.i290.ph = phi ptr [ %i.kq, %vector.memcheck1440 ], [ %i.kq, %.lr.ph.i.i.i.i.i.i289.preheader ], [ %i.kz, %middle.block1460 ]
  %.0810.i.i.i.i.i.i291.ph = phi ptr [ %i.kf, %vector.memcheck1440 ], [ %i.kf, %.lr.ph.i.i.i.i.i.i289.preheader ], [ %i.la, %middle.block1460 ]
  br label %.lr.ph.i.i.i.i.i.i289

.lr.ph.i.i.i.i.i.i289:                            ; preds = %.lr.ph.i.i.i.i.i.i289.preheader2341, %.lr.ph.i.i.i.i.i.i289
  %.011.i.i.i.i.i.i290 = phi ptr [ %i.lj, %.lr.ph.i.i.i.i.i.i289 ], [ %.011.i.i.i.i.i.i290.ph, %.lr.ph.i.i.i.i.i.i289.preheader2341 ] ; 3 uses
  %.0810.i.i.i.i.i.i291 = phi ptr [ %i.li, %.lr.ph.i.i.i.i.i.i289 ], [ %.0810.i.i.i.i.i.i291.ph, %.lr.ph.i.i.i.i.i.i289.preheader2341 ] ; 3 uses
  %i.le = load double, ptr %.0810.i.i.i.i.i.i291, align 8, !tbaa !247
  store double %i.le, ptr %.011.i.i.i.i.i.i290, align 8, !tbaa !247
  %i.lf = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i290, i64 8
  %i.lg = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i291, i64 8
  %i.lh = load double, ptr %i.lg, align 8, !tbaa !247
  store double %i.lh, ptr %i.lf, align 8, !tbaa !247
  %i.li = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i291, i64 16 ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i290, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i292 = icmp eq ptr %i.li, %i.kb
  br i1 %.not.i.i.i.i.i.i292, label %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i300, label %.lr.ph.i.i.i.i.i.i289, !llvm.loop !410

_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i300: ; preds = %.lr.ph.i.i.i.i.i.i289, %middle.block1460, %_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i285
  %.0.lcssa.i.i.i.i.i.i294 = phi ptr [ %i.kq, %_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i285 ], [ %i.kz, %middle.block1460 ], [ %i.lj, %.lr.ph.i.i.i.i.i.i289 ]
  %i.lk = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i294, i64 16
  %.not.i25.i302 = icmp eq ptr %i.kf, null
  br i1 %.not.i25.i302, label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit303, label %bb.aa

bb.aa:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i300
  call void @_ZdlPvm(ptr noundef nonnull %i.kf, i64 noundef %i.ki) #48
  br label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit303

_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit303: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i300, %bb.aa
  store ptr %i.kq, ptr %i.ik, align 8, !tbaa !279
  store ptr %i.lk, ptr %i.ka, align 16, !tbaa !276
  %i.ll = getelementptr inbounds nuw [16 x i8], ptr %i.kq, i64 %i.ko
  store ptr %i.ll, ptr %i.kc, align 8, !tbaa !280
  br label %_ZN18CanonicalCenteringILi2EE8addValueERSt6vectorI3LocILi2EESaIS3_EERS1_I6VectorILi2Ed4FullESaIS9_EERKS3_RKS9_.exit79

_ZN18CanonicalCenteringILi2EE8addValueERSt6vectorI3LocILi2EESaIS3_EERS1_I6VectorILi2Ed4FullESaIS9_EERKS3_RKS9_.exit79: ; preds = %bb.x, %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit303
  %i.lm = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 10 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 10 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 6 uses
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !264 ; 7 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 4 uses
  %i.lr = load ptr, ptr %i.lq, align 16, !tbaa !268
  %.not.i.i80 = icmp eq ptr %i.lp, %i.lr
  br i1 %.not.i.i80, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %_ZN18CanonicalCenteringILi2EE8addValueERSt6vectorI3LocILi2EESaIS3_EERS1_I6VectorILi2Ed4FullESaIS9_EERKS3_RKS9_.exit79
  store i32 0, ptr %i.lp, align 4, !tbaa !4
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lp, i64 4
  store i32 1, ptr %i.ls, align 4, !tbaa !4
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lp, i64 8
  store ptr %i.lt, ptr %i.lo, align 8, !tbaa !264
  br label %_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit.i81

bb.ac:                                            ; preds = %_ZN18CanonicalCenteringILi2EE8addValueERSt6vectorI3LocILi2EESaIS3_EERS1_I6VectorILi2Ed4FullESaIS9_EERKS3_RKS9_.exit79
  %i.lu = load ptr, ptr %i.lm, align 16, !tbaa !267 ; 11 uses
  %i.lv = ptrtoint ptr %i.lp to i64               ; 3 uses
  %i.lw = ptrtoint ptr %i.lu to i64               ; 3 uses
  %i.lx = sub i64 %i.lv, %i.lw                    ; 4 uses
  %i.ly = icmp eq i64 %i.lx, 9223372036854775800
  br i1 %i.ly, label %bb.ad, label %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i342

bb.ad:                                            ; preds = %bb.ac
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.189) #46
  unreachable

_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i342: ; preds = %bb.ac
  %i.lz = ashr exact i64 %i.lx, 3                 ; 3 uses
  %.sroa.speculated.i.i343 = call i64 @llvm.umax.i64(i64 %i.lz, i64 1)
  %i.ma = add nsw i64 %.sroa.speculated.i.i343, %i.lz ; 2 uses
  %i.mb = icmp ult i64 %i.ma, %i.lz
  %i.mc = call i64 @llvm.umin.i64(i64 %i.ma, i64 1152921504606846975)
  %i.md = select i1 %i.mb, i64 1152921504606846975, i64 %i.mc ; 3 uses
  %.not.i.i344 = icmp ne i64 %i.md, 0
  call void @llvm.assume(i1 %.not.i.i344)
  %i.me = shl nuw nsw i64 %i.md, 3
  %i.mf = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.me) #45 ; 11 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 %i.lx ; 2 uses
  store i32 0, ptr %i.mg, align 4, !tbaa !4
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 4
  store i32 1, ptr %i.mh, align 4, !tbaa !4
  %.not9.i.i.i.i.i.i345 = icmp eq ptr %i.lu, %i.lp
  br i1 %.not9.i.i.i.i.i.i345, label %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i357, label %.lr.ph.i.i.i.i.i.i346.preheader

.lr.ph.i.i.i.i.i.i346.preheader:                  ; preds = %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i342
  %29 = sub i64 %i.lv, %i.lw
  %30 = add i64 %29, -8                           ; 2 uses
  %i.mi = lshr i64 %30, 3
  %i.mj = add nuw nsw i64 %i.mi, 1                ; 2 uses
  %min.iters.check1471 = icmp ult i64 %30, 120
  br i1 %min.iters.check1471, label %.lr.ph.i.i.i.i.i.i346.preheader2339, label %vector.memcheck1464

vector.memcheck1464:                              ; preds = %.lr.ph.i.i.i.i.i.i346.preheader
  %i.mk = add i64 %i.lv, -8
  %i.ml = sub i64 %i.mk, %i.lw
  %i.mm = and i64 %i.ml, -8
  %i.mn = add i64 %i.mm, 8                        ; 2 uses
  %scevgep1465 = getelementptr i8, ptr %i.mf, i64 %i.mn
  %scevgep1466 = getelementptr i8, ptr %i.lu, i64 %i.mn
  %bound01467 = icmp ult ptr %i.mf, %scevgep1466
  %bound11468 = icmp ult ptr %i.lu, %scevgep1465
  %found.conflict1469 = and i1 %bound01467, %bound11468
  br i1 %found.conflict1469, label %.lr.ph.i.i.i.i.i.i346.preheader2339, label %vector.ph1472

vector.ph1472:                                    ; preds = %vector.memcheck1464
  %n.vec1474 = and i64 %i.mj, 4611686018427387900 ; 3 uses
  %i.mo = shl i64 %n.vec1474, 3                   ; 2 uses
  %i.mp = getelementptr i8, ptr %i.mf, i64 %i.mo  ; 2 uses
  %i.mq = getelementptr i8, ptr %i.lu, i64 %i.mo
  br label %vector.body1475

vector.body1475:                                  ; preds = %vector.body1475, %vector.ph1472
  %index1476 = phi i64 [ 0, %vector.ph1472 ], [ %index.next1489, %vector.body1475 ] ; 2 uses
  %i.mr = shl i64 %index1476, 3                   ; 3 uses
  %i.ms = or disjoint i64 %i.mr, 16               ; 2 uses
  %next.gep1477 = getelementptr i8, ptr %i.mf, i64 %i.mr
  %next.gep1478 = getelementptr i8, ptr %i.mf, i64 %i.ms
  %next.gep1479 = getelementptr i8, ptr %i.lu, i64 %i.mr
  %next.gep1480 = getelementptr i8, ptr %i.lu, i64 %i.ms
  %wide.vec1481 = load <4 x i32>, ptr %next.gep1479, align 4, !tbaa !236, !alias.scope !411
  %wide.vec1484 = load <4 x i32>, ptr %next.gep1480, align 4, !tbaa !236, !alias.scope !411
  store <4 x i32> %wide.vec1481, ptr %next.gep1477, align 4, !tbaa !4, !alias.scope !414, !noalias !411
  store <4 x i32> %wide.vec1484, ptr %next.gep1478, align 4, !tbaa !4, !alias.scope !414, !noalias !411
  %index.next1489 = add nuw i64 %index1476, 4     ; 2 uses
  %i.mt = icmp eq i64 %index.next1489, %n.vec1474
  br i1 %i.mt, label %middle.block1490, label %vector.body1475, !llvm.loop !416

middle.block1490:                                 ; preds = %vector.body1475
  %cmp.n1491 = icmp eq i64 %i.mj, %n.vec1474
  br i1 %cmp.n1491, label %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i357, label %.lr.ph.i.i.i.i.i.i346.preheader2339

.lr.ph.i.i.i.i.i.i346.preheader2339:              ; preds = %vector.memcheck1464, %.lr.ph.i.i.i.i.i.i346.preheader, %middle.block1490
  %.011.i.i.i.i.i.i347.ph = phi ptr [ %i.mf, %vector.memcheck1464 ], [ %i.mf, %.lr.ph.i.i.i.i.i.i346.preheader ], [ %i.mp, %middle.block1490 ]
  %.0810.i.i.i.i.i.i348.ph = phi ptr [ %i.lu, %vector.memcheck1464 ], [ %i.lu, %.lr.ph.i.i.i.i.i.i346.preheader ], [ %i.mq, %middle.block1490 ]
  br label %.lr.ph.i.i.i.i.i.i346

.lr.ph.i.i.i.i.i.i346:                            ; preds = %.lr.ph.i.i.i.i.i.i346.preheader2339, %.lr.ph.i.i.i.i.i.i346
  %.011.i.i.i.i.i.i347 = phi ptr [ %i.mz, %.lr.ph.i.i.i.i.i.i346 ], [ %.011.i.i.i.i.i.i347.ph, %.lr.ph.i.i.i.i.i.i346.preheader2339 ] ; 3 uses
  %.0810.i.i.i.i.i.i348 = phi ptr [ %i.my, %.lr.ph.i.i.i.i.i.i346 ], [ %.0810.i.i.i.i.i.i348.ph, %.lr.ph.i.i.i.i.i.i346.preheader2339 ] ; 3 uses
  %i.mu = load i32, ptr %.0810.i.i.i.i.i.i348, align 4, !tbaa !236
  store i32 %i.mu, ptr %.011.i.i.i.i.i.i347, align 4, !tbaa !4
  %i.mv = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i347, i64 4
  %i.mw = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i348, i64 4
  %i.mx = load i32, ptr %i.mw, align 4, !tbaa !236
  store i32 %i.mx, ptr %i.mv, align 4, !tbaa !4
  %i.my = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i348, i64 8 ; 2 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i347, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i349 = icmp eq ptr %i.my, %i.lp
  br i1 %.not.i.i.i.i.i.i349, label %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i357, label %.lr.ph.i.i.i.i.i.i346, !llvm.loop !417

_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i357: ; preds = %.lr.ph.i.i.i.i.i.i346, %middle.block1490, %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i342
  %.0.lcssa.i.i.i.i.i.i351 = phi ptr [ %i.mf, %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i342 ], [ %i.mp, %middle.block1490 ], [ %i.mz, %.lr.ph.i.i.i.i.i.i346 ]
  %i.na = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i351, i64 8
  %.not.i25.i359 = icmp eq ptr %i.lu, null
  br i1 %.not.i25.i359, label %_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit360, label %bb.ae

bb.ae:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i357
  call void @_ZdlPvm(ptr noundef nonnull %i.lu, i64 noundef %i.lx) #48
  br label %_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit360

_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit360: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i357, %bb.ae
  store ptr %i.mf, ptr %i.lm, align 16, !tbaa !267
  store ptr %i.na, ptr %i.lo, align 8, !tbaa !264
  %i.nb = getelementptr inbounds nuw [8 x i8], ptr %i.mf, i64 %i.md
  store ptr %i.nb, ptr %i.lq, align 16, !tbaa !268
  br label %_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit.i81

_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit.i81: ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit360, %bb.ab
  %i.nc = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 6 uses
  %i.nd = load ptr, ptr %i.nc, align 8, !tbaa !276 ; 6 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 4 uses
  %i.nf = load ptr, ptr %i.ne, align 16, !tbaa !280
  %.not.i4.i82 = icmp eq ptr %i.nd, %i.nf
  br i1 %.not.i4.i82, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit.i81
  store <2 x double> <double 0.000000e+00, double 5.000000e-01>, ptr %i.nd, align 8, !tbaa !247
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nd, i64 16
  store ptr %i.ng, ptr %i.nc, align 8, !tbaa !276
  br label %_ZN18CanonicalCenteringILi2EE8addValueERSt6vectorI3LocILi2EESaIS3_EERS1_I6VectorILi2Ed4FullESaIS9_EERKS3_RKS9_.exit83

bb.ag:                                            ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit.i81
  %i.nh = load ptr, ptr %i.ln, align 16, !tbaa !279 ; 11 uses
  %i.ni = ptrtoint ptr %i.nd to i64               ; 3 uses
  %i.nj = ptrtoint ptr %i.nh to i64               ; 3 uses
  %i.nk = sub i64 %i.ni, %i.nj                    ; 4 uses
  %i.nl = icmp eq i64 %i.nk, 9223372036854775792
  br i1 %i.nl, label %bb.ah, label %_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i323

bb.ah:                                            ; preds = %bb.ag
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.189) #46
  unreachable

_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i323: ; preds = %bb.ag
  %i.nm = ashr exact i64 %i.nk, 4                 ; 3 uses
  %.sroa.speculated.i.i324 = call i64 @llvm.umax.i64(i64 %i.nm, i64 1)
  %i.nn = add nsw i64 %.sroa.speculated.i.i324, %i.nm ; 2 uses
  %i.no = icmp ult i64 %i.nn, %i.nm
  %i.np = call i64 @llvm.umin.i64(i64 %i.nn, i64 576460752303423487)
  %i.nq = select i1 %i.no, i64 576460752303423487, i64 %i.np ; 3 uses
  %.not.i.i325 = icmp ne i64 %i.nq, 0
  call void @llvm.assume(i1 %.not.i.i325)
  %i.nr = shl nuw nsw i64 %i.nq, 4
  %i.ns = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.nr) #45 ; 11 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 %i.nk
  store <2 x double> <double 0.000000e+00, double 5.000000e-01>, ptr %i.nt, align 8, !tbaa !247
  %.not9.i.i.i.i.i.i326 = icmp eq ptr %i.nh, %i.nd
  br i1 %.not9.i.i.i.i.i.i326, label %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i338, label %.lr.ph.i.i.i.i.i.i327.preheader

.lr.ph.i.i.i.i.i.i327.preheader:                  ; preds = %_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i323
  %31 = sub i64 %i.ni, %i.nj
  %32 = add i64 %31, -16                          ; 2 uses
  %i.nu = lshr i64 %32, 4
  %i.nv = add nuw nsw i64 %i.nu, 1                ; 2 uses
  %min.iters.check1501 = icmp ult i64 %32, 240
  br i1 %min.iters.check1501, label %.lr.ph.i.i.i.i.i.i327.preheader2337, label %vector.memcheck1494

vector.memcheck1494:                              ; preds = %.lr.ph.i.i.i.i.i.i327.preheader
  %i.nw = add i64 %i.ni, -16
  %i.nx = sub i64 %i.nw, %i.nj
  %i.ny = and i64 %i.nx, -16
  %i.nz = add i64 %i.ny, 16                       ; 2 uses
  %scevgep1495 = getelementptr i8, ptr %i.ns, i64 %i.nz
  %scevgep1496 = getelementptr i8, ptr %i.nh, i64 %i.nz
  %bound01497 = icmp ult ptr %i.ns, %scevgep1496
  %bound11498 = icmp ult ptr %i.nh, %scevgep1495
  %found.conflict1499 = and i1 %bound01497, %bound11498
  br i1 %found.conflict1499, label %.lr.ph.i.i.i.i.i.i327.preheader2337, label %vector.ph1502

vector.ph1502:                                    ; preds = %vector.memcheck1494
  %n.vec1504 = and i64 %i.nv, 2305843009213693950 ; 3 uses
  %i.oa = shl i64 %n.vec1504, 4                   ; 2 uses
  %i.ob = getelementptr i8, ptr %i.ns, i64 %i.oa  ; 2 uses
  %i.oc = getelementptr i8, ptr %i.nh, i64 %i.oa
  br label %vector.body1505

vector.body1505:                                  ; preds = %vector.body1505, %vector.ph1502
  %index1506 = phi i64 [ 0, %vector.ph1502 ], [ %index.next1513, %vector.body1505 ] ; 2 uses
  %i.od = shl i64 %index1506, 4                   ; 3 uses
  %i.oe = or disjoint i64 %i.od, 16               ; 2 uses
  %next.gep1507 = getelementptr i8, ptr %i.ns, i64 %i.od
  %next.gep1508 = getelementptr i8, ptr %i.ns, i64 %i.oe
  %next.gep1509 = getelementptr i8, ptr %i.nh, i64 %i.od
  %next.gep1510 = getelementptr i8, ptr %i.nh, i64 %i.oe
  %wide.load1511 = load <2 x double>, ptr %next.gep1509, align 8, !tbaa !247, !alias.scope !418
  %wide.load1512 = load <2 x double>, ptr %next.gep1510, align 8, !tbaa !247, !alias.scope !418
  store <2 x double> %wide.load1511, ptr %next.gep1507, align 8, !tbaa !247, !alias.scope !421, !noalias !418
  store <2 x double> %wide.load1512, ptr %next.gep1508, align 8, !tbaa !247, !alias.scope !421, !noalias !418
  %index.next1513 = add nuw i64 %index1506, 2     ; 2 uses
  %i.of = icmp eq i64 %index.next1513, %n.vec1504
  br i1 %i.of, label %middle.block1514, label %vector.body1505, !llvm.loop !423

middle.block1514:                                 ; preds = %vector.body1505
  %cmp.n1515 = icmp eq i64 %i.nv, %n.vec1504
  br i1 %cmp.n1515, label %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i338, label %.lr.ph.i.i.i.i.i.i327.preheader2337

.lr.ph.i.i.i.i.i.i327.preheader2337:              ; preds = %vector.memcheck1494, %.lr.ph.i.i.i.i.i.i327.preheader, %middle.block1514
  %.011.i.i.i.i.i.i328.ph = phi ptr [ %i.ns, %vector.memcheck1494 ], [ %i.ns, %.lr.ph.i.i.i.i.i.i327.preheader ], [ %i.ob, %middle.block1514 ]
  %.0810.i.i.i.i.i.i329.ph = phi ptr [ %i.nh, %vector.memcheck1494 ], [ %i.nh, %.lr.ph.i.i.i.i.i.i327.preheader ], [ %i.oc, %middle.block1514 ]
  br label %.lr.ph.i.i.i.i.i.i327

.lr.ph.i.i.i.i.i.i327:                            ; preds = %.lr.ph.i.i.i.i.i.i327.preheader2337, %.lr.ph.i.i.i.i.i.i327
  %.011.i.i.i.i.i.i328 = phi ptr [ %i.ol, %.lr.ph.i.i.i.i.i.i327 ], [ %.011.i.i.i.i.i.i328.ph, %.lr.ph.i.i.i.i.i.i327.preheader2337 ] ; 3 uses
  %.0810.i.i.i.i.i.i329 = phi ptr [ %i.ok, %.lr.ph.i.i.i.i.i.i327 ], [ %.0810.i.i.i.i.i.i329.ph, %.lr.ph.i.i.i.i.i.i327.preheader2337 ] ; 3 uses
  %i.og = load double, ptr %.0810.i.i.i.i.i.i329, align 8, !tbaa !247
  store double %i.og, ptr %.011.i.i.i.i.i.i328, align 8, !tbaa !247
  %i.oh = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i328, i64 8
  %i.oi = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i329, i64 8
  %i.oj = load double, ptr %i.oi, align 8, !tbaa !247
  store double %i.oj, ptr %i.oh, align 8, !tbaa !247
  %i.ok = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i329, i64 16 ; 2 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i328, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i330 = icmp eq ptr %i.ok, %i.nd
  br i1 %.not.i.i.i.i.i.i330, label %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i338, label %.lr.ph.i.i.i.i.i.i327, !llvm.loop !424

_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i338: ; preds = %.lr.ph.i.i.i.i.i.i327, %middle.block1514, %_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i323
  %.0.lcssa.i.i.i.i.i.i332 = phi ptr [ %i.ns, %_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i323 ], [ %i.ob, %middle.block1514 ], [ %i.ol, %.lr.ph.i.i.i.i.i.i327 ]
  %i.om = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i332, i64 16
  %.not.i25.i340 = icmp eq ptr %i.nh, null
  br i1 %.not.i25.i340, label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit341, label %bb.ai

bb.ai:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i338
  call void @_ZdlPvm(ptr noundef nonnull %i.nh, i64 noundef %i.nk) #48
  br label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit341

_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit341: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i338, %bb.ai
  store ptr %i.ns, ptr %i.ln, align 16, !tbaa !279
  store ptr %i.om, ptr %i.nc, align 8, !tbaa !276
  %i.on = getelementptr inbounds nuw [16 x i8], ptr %i.ns, i64 %i.nq
  store ptr %i.on, ptr %i.ne, align 16, !tbaa !280
  br label %_ZN18CanonicalCenteringILi2EE8addValueERSt6vectorI3LocILi2EESaIS3_EERS1_I6VectorILi2Ed4FullESaIS9_EERKS3_RKS9_.exit83

_ZN18CanonicalCenteringILi2EE8addValueERSt6vectorI3LocILi2EESaIS3_EERS1_I6VectorILi2Ed4FullESaIS9_EERKS3_RKS9_.exit83: ; preds = %bb.af, %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit341
  %i.oo = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 6 uses
  %i.op = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI3LocILi2EESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.oo, ptr noundef nonnull align 8 dereferenceable(24) %i.lm) ; 0 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 6 uses
  %i.or = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.oq, ptr noundef nonnull align 8 dereferenceable(24) %i.ln) ; 0 uses
  %i.os = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 6 uses
  %i.ot = load ptr, ptr %i.os, align 16, !tbaa !264 ; 7 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 4 uses
  %i.ov = load ptr, ptr %i.ou, align 8, !tbaa !268
  %.not.i.i84 = icmp eq ptr %i.ot, %i.ov
  br i1 %.not.i.i84, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %_ZN18CanonicalCenteringILi2EE8addValueERSt6vectorI3LocILi2EESaIS3_EERS1_I6VectorILi2Ed4FullESaIS9_EERKS3_RKS9_.exit83
  store i32 0, ptr %i.ot, align 4, !tbaa !4
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ot, i64 4
  store i32 1, ptr %i.ow, align 4, !tbaa !4
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ot, i64 8
  store ptr %i.ox, ptr %i.os, align 16, !tbaa !264
  br label %_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit.i85

bb.ak:                                            ; preds = %_ZN18CanonicalCenteringILi2EE8addValueERSt6vectorI3LocILi2EESaIS3_EERS1_I6VectorILi2Ed4FullESaIS9_EERKS3_RKS9_.exit83
  %i.oy = load ptr, ptr %i.oo, align 8, !tbaa !267 ; 11 uses
  %i.oz = ptrtoint ptr %i.ot to i64               ; 3 uses
  %i.pa = ptrtoint ptr %i.oy to i64               ; 3 uses
  %i.pb = sub i64 %i.oz, %i.pa                    ; 4 uses
  %i.pc = icmp eq i64 %i.pb, 9223372036854775800
  br i1 %i.pc, label %bb.al, label %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i380

bb.al:                                            ; preds = %bb.ak
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.189) #46
  unreachable

_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i380: ; preds = %bb.ak
  %i.pd = ashr exact i64 %i.pb, 3                 ; 3 uses
  %.sroa.speculated.i.i381 = call i64 @llvm.umax.i64(i64 %i.pd, i64 1)
  %i.pe = add nsw i64 %.sroa.speculated.i.i381, %i.pd ; 2 uses
  %i.pf = icmp ult i64 %i.pe, %i.pd
  %i.pg = call i64 @llvm.umin.i64(i64 %i.pe, i64 1152921504606846975)
  %i.ph = select i1 %i.pf, i64 1152921504606846975, i64 %i.pg ; 3 uses
  %.not.i.i382 = icmp ne i64 %i.ph, 0
  call void @llvm.assume(i1 %.not.i.i382)
  %i.pi = shl nuw nsw i64 %i.ph, 3
  %i.pj = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.pi) #45 ; 11 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 %i.pb ; 2 uses
  store i32 0, ptr %i.pk, align 4, !tbaa !4
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 4
  store i32 1, ptr %i.pl, align 4, !tbaa !4
  %.not9.i.i.i.i.i.i383 = icmp eq ptr %i.oy, %i.ot
  br i1 %.not9.i.i.i.i.i.i383, label %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i395, label %.lr.ph.i.i.i.i.i.i384.preheader

.lr.ph.i.i.i.i.i.i384.preheader:                  ; preds = %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i380
  %33 = sub i64 %i.oz, %i.pa
  %34 = add i64 %33, -8                           ; 2 uses
  %i.pm = lshr i64 %34, 3
  %i.pn = add nuw nsw i64 %i.pm, 1                ; 2 uses
  %min.iters.check1525 = icmp ult i64 %34, 120
  br i1 %min.iters.check1525, label %.lr.ph.i.i.i.i.i.i384.preheader2335, label %vector.memcheck1518

vector.memcheck1518:                              ; preds = %.lr.ph.i.i.i.i.i.i384.preheader
  %i.po = add i64 %i.oz, -8
  %i.pp = sub i64 %i.po, %i.pa
  %i.pq = and i64 %i.pp, -8
  %i.pr = add i64 %i.pq, 8                        ; 2 uses
  %scevgep1519 = getelementptr i8, ptr %i.pj, i64 %i.pr
  %scevgep1520 = getelementptr i8, ptr %i.oy, i64 %i.pr
  %bound01521 = icmp ult ptr %i.pj, %scevgep1520
  %bound11522 = icmp ult ptr %i.oy, %scevgep1519
  %found.conflict1523 = and i1 %bound01521, %bound11522
  br i1 %found.conflict1523, label %.lr.ph.i.i.i.i.i.i384.preheader2335, label %vector.ph1526

vector.ph1526:                                    ; preds = %vector.memcheck1518
  %n.vec1528 = and i64 %i.pn, 4611686018427387900 ; 3 uses
  %i.ps = shl i64 %n.vec1528, 3                   ; 2 uses
  %i.pt = getelementptr i8, ptr %i.pj, i64 %i.ps  ; 2 uses
  %i.pu = getelementptr i8, ptr %i.oy, i64 %i.ps
  br label %vector.body1529

vector.body1529:                                  ; preds = %vector.body1529, %vector.ph1526
  %index1530 = phi i64 [ 0, %vector.ph1526 ], [ %index.next1543, %vector.body1529 ] ; 2 uses
  %i.pv = shl i64 %index1530, 3                   ; 3 uses
  %i.pw = or disjoint i64 %i.pv, 16               ; 2 uses
  %next.gep1531 = getelementptr i8, ptr %i.pj, i64 %i.pv
  %next.gep1532 = getelementptr i8, ptr %i.pj, i64 %i.pw
  %next.gep1533 = getelementptr i8, ptr %i.oy, i64 %i.pv
  %next.gep1534 = getelementptr i8, ptr %i.oy, i64 %i.pw
  %wide.vec1535 = load <4 x i32>, ptr %next.gep1533, align 4, !tbaa !236, !alias.scope !425
  %wide.vec1538 = load <4 x i32>, ptr %next.gep1534, align 4, !tbaa !236, !alias.scope !425
  store <4 x i32> %wide.vec1535, ptr %next.gep1531, align 4, !tbaa !4, !alias.scope !428, !noalias !425
  store <4 x i32> %wide.vec1538, ptr %next.gep1532, align 4, !tbaa !4, !alias.scope !428, !noalias !425
  %index.next1543 = add nuw i64 %index1530, 4     ; 2 uses
  %i.px = icmp eq i64 %index.next1543, %n.vec1528
  br i1 %i.px, label %middle.block1544, label %vector.body1529, !llvm.loop !430

middle.block1544:                                 ; preds = %vector.body1529
  %cmp.n1545 = icmp eq i64 %i.pn, %n.vec1528
  br i1 %cmp.n1545, label %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i395, label %.lr.ph.i.i.i.i.i.i384.preheader2335

.lr.ph.i.i.i.i.i.i384.preheader2335:              ; preds = %vector.memcheck1518, %.lr.ph.i.i.i.i.i.i384.preheader, %middle.block1544
  %.011.i.i.i.i.i.i385.ph = phi ptr [ %i.pj, %vector.memcheck1518 ], [ %i.pj, %.lr.ph.i.i.i.i.i.i384.preheader ], [ %i.pt, %middle.block1544 ]
  %.0810.i.i.i.i.i.i386.ph = phi ptr [ %i.oy, %vector.memcheck1518 ], [ %i.oy, %.lr.ph.i.i.i.i.i.i384.preheader ], [ %i.pu, %middle.block1544 ]
  br label %.lr.ph.i.i.i.i.i.i384

.lr.ph.i.i.i.i.i.i384:                            ; preds = %.lr.ph.i.i.i.i.i.i384.preheader2335, %.lr.ph.i.i.i.i.i.i384
  %.011.i.i.i.i.i.i385 = phi ptr [ %i.qd, %.lr.ph.i.i.i.i.i.i384 ], [ %.011.i.i.i.i.i.i385.ph, %.lr.ph.i.i.i.i.i.i384.preheader2335 ] ; 3 uses
  %.0810.i.i.i.i.i.i386 = phi ptr [ %i.qc, %.lr.ph.i.i.i.i.i.i384 ], [ %.0810.i.i.i.i.i.i386.ph, %.lr.ph.i.i.i.i.i.i384.preheader2335 ] ; 3 uses
  %i.py = load i32, ptr %.0810.i.i.i.i.i.i386, align 4, !tbaa !236
  store i32 %i.py, ptr %.011.i.i.i.i.i.i385, align 4, !tbaa !4
  %i.pz = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i385, i64 4
  %i.qa = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i386, i64 4
  %i.qb = load i32, ptr %i.qa, align 4, !tbaa !236
  store i32 %i.qb, ptr %i.pz, align 4, !tbaa !4
  %i.qc = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i386, i64 8 ; 2 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i385, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i387 = icmp eq ptr %i.qc, %i.ot
  br i1 %.not.i.i.i.i.i.i387, label %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i395, label %.lr.ph.i.i.i.i.i.i384, !llvm.loop !431

_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i395: ; preds = %.lr.ph.i.i.i.i.i.i384, %middle.block1544, %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i380
  %.0.lcssa.i.i.i.i.i.i389 = phi ptr [ %i.pj, %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i380 ], [ %i.pt, %middle.block1544 ], [ %i.qd, %.lr.ph.i.i.i.i.i.i384 ]
  %i.qe = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i389, i64 8
  %.not.i25.i397 = icmp eq ptr %i.oy, null
  br i1 %.not.i25.i397, label %_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit398, label %bb.am

bb.am:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i395
  call void @_ZdlPvm(ptr noundef nonnull %i.oy, i64 noundef %i.pb) #48
  br label %_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit398

_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit398: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i395, %bb.am
  store ptr %i.pj, ptr %i.oo, align 8, !tbaa !267
  store ptr %i.qe, ptr %i.os, align 16, !tbaa !264
  %i.qf = getelementptr inbounds nuw [8 x i8], ptr %i.pj, i64 %i.ph
  store ptr %i.qf, ptr %i.ou, align 8, !tbaa !268
  br label %_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit.i85

_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit.i85: ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit398, %bb.aj
  %i.qg = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 6 uses
  %i.qh = load ptr, ptr %i.qg, align 16, !tbaa !276 ; 6 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 4 uses
  %i.qj = load ptr, ptr %i.qi, align 8, !tbaa !280
  %.not.i4.i86 = icmp eq ptr %i.qh, %i.qj
  br i1 %.not.i4.i86, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit.i85
  store <2 x double> <double 1.000000e+00, double 5.000000e-01>, ptr %i.qh, align 8, !tbaa !247
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qh, i64 16
  store ptr %i.qk, ptr %i.qg, align 16, !tbaa !276
  br label %_ZN18CanonicalCenteringILi2EE8addValueERSt6vectorI3LocILi2EESaIS3_EERS1_I6VectorILi2Ed4FullESaIS9_EERKS3_RKS9_.exit87

bb.ao:                                            ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit.i85
  %i.ql = load ptr, ptr %i.oq, align 8, !tbaa !279 ; 11 uses
  %i.qm = ptrtoint ptr %i.qh to i64               ; 3 uses
  %i.qn = ptrtoint ptr %i.ql to i64               ; 3 uses
  %i.qo = sub i64 %i.qm, %i.qn                    ; 4 uses
  %i.qp = icmp eq i64 %i.qo, 9223372036854775792
  br i1 %i.qp, label %bb.ap, label %_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i361

bb.ap:                                            ; preds = %bb.ao
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.189) #46
  unreachable

_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i361: ; preds = %bb.ao
  %i.qq = ashr exact i64 %i.qo, 4                 ; 3 uses
  %.sroa.speculated.i.i362 = call i64 @llvm.umax.i64(i64 %i.qq, i64 1)
  %i.qr = add nsw i64 %.sroa.speculated.i.i362, %i.qq ; 2 uses
  %i.qs = icmp ult i64 %i.qr, %i.qq
  %i.qt = call i64 @llvm.umin.i64(i64 %i.qr, i64 576460752303423487)
  %i.qu = select i1 %i.qs, i64 576460752303423487, i64 %i.qt ; 3 uses
  %.not.i.i363 = icmp ne i64 %i.qu, 0
  call void @llvm.assume(i1 %.not.i.i363)
  %i.qv = shl nuw nsw i64 %i.qu, 4
  %i.qw = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.qv) #45 ; 11 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qw, i64 %i.qo
  store <2 x double> <double 1.000000e+00, double 5.000000e-01>, ptr %i.qx, align 8, !tbaa !247
  %.not9.i.i.i.i.i.i364 = icmp eq ptr %i.ql, %i.qh
  br i1 %.not9.i.i.i.i.i.i364, label %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i376, label %.lr.ph.i.i.i.i.i.i365.preheader

.lr.ph.i.i.i.i.i.i365.preheader:                  ; preds = %_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i361
  %35 = sub i64 %i.qm, %i.qn
  %36 = add i64 %35, -16                          ; 2 uses
  %i.qy = lshr i64 %36, 4
  %i.qz = add nuw nsw i64 %i.qy, 1                ; 2 uses
  %min.iters.check1555 = icmp ult i64 %36, 240
  br i1 %min.iters.check1555, label %.lr.ph.i.i.i.i.i.i365.preheader2333, label %vector.memcheck1548

vector.memcheck1548:                              ; preds = %.lr.ph.i.i.i.i.i.i365.preheader
  %i.ra = add i64 %i.qm, -16
  %i.rb = sub i64 %i.ra, %i.qn
  %i.rc = and i64 %i.rb, -16
  %i.rd = add i64 %i.rc, 16                       ; 2 uses
  %scevgep1549 = getelementptr i8, ptr %i.qw, i64 %i.rd
  %scevgep1550 = getelementptr i8, ptr %i.ql, i64 %i.rd
  %bound01551 = icmp ult ptr %i.qw, %scevgep1550
  %bound11552 = icmp ult ptr %i.ql, %scevgep1549
  %found.conflict1553 = and i1 %bound01551, %bound11552
  br i1 %found.conflict1553, label %.lr.ph.i.i.i.i.i.i365.preheader2333, label %vector.ph1556

vector.ph1556:                                    ; preds = %vector.memcheck1548
  %n.vec1558 = and i64 %i.qz, 2305843009213693950 ; 3 uses
  %i.re = shl i64 %n.vec1558, 4                   ; 2 uses
  %i.rf = getelementptr i8, ptr %i.qw, i64 %i.re  ; 2 uses
  %i.rg = getelementptr i8, ptr %i.ql, i64 %i.re
  br label %vector.body1559

vector.body1559:                                  ; preds = %vector.body1559, %vector.ph1556
  %index1560 = phi i64 [ 0, %vector.ph1556 ], [ %index.next1567, %vector.body1559 ] ; 2 uses
  %i.rh = shl i64 %index1560, 4                   ; 3 uses
  %i.ri = or disjoint i64 %i.rh, 16               ; 2 uses
  %next.gep1561 = getelementptr i8, ptr %i.qw, i64 %i.rh
  %next.gep1562 = getelementptr i8, ptr %i.qw, i64 %i.ri
  %next.gep1563 = getelementptr i8, ptr %i.ql, i64 %i.rh
  %next.gep1564 = getelementptr i8, ptr %i.ql, i64 %i.ri
  %wide.load1565 = load <2 x double>, ptr %next.gep1563, align 8, !tbaa !247, !alias.scope !432
  %wide.load1566 = load <2 x double>, ptr %next.gep1564, align 8, !tbaa !247, !alias.scope !432
  store <2 x double> %wide.load1565, ptr %next.gep1561, align 8, !tbaa !247, !alias.scope !435, !noalias !432
  store <2 x double> %wide.load1566, ptr %next.gep1562, align 8, !tbaa !247, !alias.scope !435, !noalias !432
  %index.next1567 = add nuw i64 %index1560, 2     ; 2 uses
  %i.rj = icmp eq i64 %index.next1567, %n.vec1558
  br i1 %i.rj, label %middle.block1568, label %vector.body1559, !llvm.loop !437

middle.block1568:                                 ; preds = %vector.body1559
  %cmp.n1569 = icmp eq i64 %i.qz, %n.vec1558
  br i1 %cmp.n1569, label %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i376, label %.lr.ph.i.i.i.i.i.i365.preheader2333

.lr.ph.i.i.i.i.i.i365.preheader2333:              ; preds = %vector.memcheck1548, %.lr.ph.i.i.i.i.i.i365.preheader, %middle.block1568
  %.011.i.i.i.i.i.i366.ph = phi ptr [ %i.qw, %vector.memcheck1548 ], [ %i.qw, %.lr.ph.i.i.i.i.i.i365.preheader ], [ %i.rf, %middle.block1568 ]
  %.0810.i.i.i.i.i.i367.ph = phi ptr [ %i.ql, %vector.memcheck1548 ], [ %i.ql, %.lr.ph.i.i.i.i.i.i365.preheader ], [ %i.rg, %middle.block1568 ]
  br label %.lr.ph.i.i.i.i.i.i365

.lr.ph.i.i.i.i.i.i365:                            ; preds = %.lr.ph.i.i.i.i.i.i365.preheader2333, %.lr.ph.i.i.i.i.i.i365
  %.011.i.i.i.i.i.i366 = phi ptr [ %i.rp, %.lr.ph.i.i.i.i.i.i365 ], [ %.011.i.i.i.i.i.i366.ph, %.lr.ph.i.i.i.i.i.i365.preheader2333 ] ; 3 uses
  %.0810.i.i.i.i.i.i367 = phi ptr [ %i.ro, %.lr.ph.i.i.i.i.i.i365 ], [ %.0810.i.i.i.i.i.i367.ph, %.lr.ph.i.i.i.i.i.i365.preheader2333 ] ; 3 uses
  %i.rk = load double, ptr %.0810.i.i.i.i.i.i367, align 8, !tbaa !247
  store double %i.rk, ptr %.011.i.i.i.i.i.i366, align 8, !tbaa !247
  %i.rl = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i366, i64 8
  %i.rm = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i367, i64 8
  %i.rn = load double, ptr %i.rm, align 8, !tbaa !247
  store double %i.rn, ptr %i.rl, align 8, !tbaa !247
  %i.ro = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i367, i64 16 ; 2 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i366, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i368 = icmp eq ptr %i.ro, %i.qh
  br i1 %.not.i.i.i.i.i.i368, label %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i376, label %.lr.ph.i.i.i.i.i.i365, !llvm.loop !438

_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i376: ; preds = %.lr.ph.i.i.i.i.i.i365, %middle.block1568, %_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i361
  %.0.lcssa.i.i.i.i.i.i370 = phi ptr [ %i.qw, %_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i361 ], [ %i.rf, %middle.block1568 ], [ %i.rp, %.lr.ph.i.i.i.i.i.i365 ]
  %i.rq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i370, i64 16
  %.not.i25.i378 = icmp eq ptr %i.ql, null
  br i1 %.not.i25.i378, label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit379, label %bb.aq

bb.aq:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i376
  call void @_ZdlPvm(ptr noundef nonnull %i.ql, i64 noundef %i.qo) #48
  br label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit379

_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit379: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i376, %bb.aq
  store ptr %i.qw, ptr %i.oq, align 8, !tbaa !279
  store ptr %i.rq, ptr %i.qg, align 16, !tbaa !276
  %i.rr = getelementptr inbounds nuw [16 x i8], ptr %i.qw, i64 %i.qu
  store ptr %i.rr, ptr %i.qi, align 8, !tbaa !280
  br label %_ZN18CanonicalCenteringILi2EE8addValueERSt6vectorI3LocILi2EESaIS3_EERS1_I6VectorILi2Ed4FullESaIS9_EERKS3_RKS9_.exit87

_ZN18CanonicalCenteringILi2EE8addValueERSt6vectorI3LocILi2EESaIS3_EERS1_I6VectorILi2Ed4FullESaIS9_EERKS3_RKS9_.exit87: ; preds = %bb.an, %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit379
  %i.rs = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.rv = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.rw = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.rz = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.sa = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.se = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.sf = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 5 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.sh = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 3 uses
  %i.si = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 5 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.sk = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 3 uses
  br label %bb.ar

bb.ar:                                            ; preds = %_ZN18CanonicalCenteringILi2EE8addValueERSt6vectorI3LocILi2EESaIS3_EERS1_I6VectorILi2Ed4FullESaIS9_EERKS3_RKS9_.exit87, %_ZNSt6vectorI3LocILi2EESaIS1_EED2Ev.exit
  %i.sl = phi i1 [ true, %_ZN18CanonicalCenteringILi2EE8addValueERSt6vectorI3LocILi2EESaIS3_EERS1_I6VectorILi2Ed4FullESaIS9_EERKS3_RKS9_.exit87 ], [ false, %_ZNSt6vectorI3LocILi2EESaIS1_EED2Ev.exit ]
  %indvars.iv.sroa.phi = phi ptr [ %3, %_ZN18CanonicalCenteringILi2EE8addValueERSt6vectorI3LocILi2EESaIS3_EERS1_I6VectorILi2Ed4FullESaIS9_EERKS3_RKS9_.exit87 ], [ %indvars.iv.sroa.gep2354, %_ZNSt6vectorI3LocILi2EESaIS1_EED2Ev.exit ] ; 3 uses
  %indvars.iv.sroa.phi2358 = phi ptr [ %2, %_ZN18CanonicalCenteringILi2EE8addValueERSt6vectorI3LocILi2EESaIS3_EERS1_I6VectorILi2Ed4FullESaIS9_EERKS3_RKS9_.exit87 ], [ %indvars.iv.sroa.gep2360, %_ZNSt6vectorI3LocILi2EESaIS1_EED2Ev.exit ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %_ZN18CanonicalCenteringILi2EE8addValueERSt6vectorI3LocILi2EESaIS3_EERS1_I6VectorILi2Ed4FullESaIS9_EERKS3_RKS9_.exit87 ], [ 1, %_ZNSt6vectorI3LocILi2EESaIS1_EED2Ev.exit ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #47
  %i.sm = trunc nuw nsw i64 %indvars.iv to i32    ; 3 uses
  call void @_ZN9CenteringILi2EEC2E13CenteringType14ContinuityTypeRKSt6vectorI3LocILi2EESaIS5_EERKS3_I6VectorILi2Ed4FullESaISC_EE(ptr noundef nonnull align 8 dereferenceable(56) %5, i32 noundef 1, i32 noundef %i.sm, ptr noundef nonnull align 8 dereferenceable(24) %indvars.iv.sroa.phi2358, ptr noundef nonnull align 8 dereferenceable(24) %indvars.iv.sroa.phi)
  %i.sn = load ptr, ptr @_ZN18CanonicalCenteringILi2EE17centering_table_mE, align 8, !tbaa !258
  %i.so = getelementptr inbounds nuw i8, ptr %i.sn, i64 8
  %i.sp = load ptr, ptr %i.so, align 8, !tbaa !260
  %i.sq = getelementptr inbounds nuw [8 x i8], ptr %i.sp, i64 %indvars.iv
  %i.sr = load ptr, ptr %i.sq, align 8, !tbaa !262 ; 3 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sr, i64 56
  %i.st = load i64, ptr %5, align 8
  store i64 %i.st, ptr %i.ss, align 8
  %i.su = getelementptr inbounds nuw i8, ptr %i.sr, i64 64
  %i.sv = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI3LocILi2EESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.su, ptr noundef nonnull align 8 dereferenceable(24) %i.rs) ; 0 uses
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sr, i64 88
  %i.sx = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.sw, ptr noundef nonnull align 8 dereferenceable(24) %i.rt) ; 0 uses
  %i.sy = load ptr, ptr %i.rt, align 8, !tbaa !279 ; 3 uses
  %.not.i.i.i.i88 = icmp eq ptr %i.sy, null
  br i1 %.not.i.i.i.i88, label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit.i89, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.sz = load ptr, ptr %i.ru, align 8, !tbaa !280
  %i.ta = ptrtoint ptr %i.sz to i64
  %i.tb = ptrtoint ptr %i.sy to i64
  %i.tc = sub i64 %i.ta, %i.tb
  call void @_ZdlPvm(ptr noundef nonnull %i.sy, i64 noundef %i.tc) #48
  br label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit.i89

_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit.i89: ; preds = %bb.as, %bb.ar
  %i.td = load ptr, ptr %i.rs, align 8, !tbaa !267 ; 3 uses
  %.not.i.i.i1.i90 = icmp eq ptr %i.td, null
  br i1 %.not.i.i.i1.i90, label %_ZN9CenteringILi2EED2Ev.exit91, label %bb.at

bb.at:                                            ; preds = %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit.i89
  %i.te = load ptr, ptr %i.rv, align 8, !tbaa !268
  %i.tf = ptrtoint ptr %i.te to i64
  %i.tg = ptrtoint ptr %i.td to i64
  %i.th = sub i64 %i.tf, %i.tg
  call void @_ZdlPvm(ptr noundef nonnull %i.td, i64 noundef %i.th) #48
  br label %_ZN9CenteringILi2EED2Ev.exit91

_ZN9CenteringILi2EED2Ev.exit91:                   ; preds = %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit.i89, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #47
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #47
  %i.ti = getelementptr inbounds nuw [24 x i8], ptr %i.lm, i64 %indvars.iv ; 3 uses
  %i.tj = getelementptr inbounds nuw [24 x i8], ptr %i.ln, i64 %indvars.iv ; 3 uses
  call void @_ZN9CenteringILi2EEC2E13CenteringType14ContinuityTypeRKSt6vectorI3LocILi2EESaIS5_EERKS3_I6VectorILi2Ed4FullESaISC_EE(ptr noundef nonnull align 8 dereferenceable(56) %6, i32 noundef 1, i32 noundef %i.sm, ptr noundef nonnull align 8 dereferenceable(24) %i.ti, ptr noundef nonnull align 8 dereferenceable(24) %i.tj)
  %i.tk = load ptr, ptr @_ZN18CanonicalCenteringILi2EE17centering_table_mE, align 8, !tbaa !258
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tk, i64 8
  %i.tm = load ptr, ptr %i.tl, align 8, !tbaa !260
  %i.tn = getelementptr inbounds nuw [8 x i8], ptr %i.tm, i64 %indvars.iv
  %i.to = load ptr, ptr %i.tn, align 8, !tbaa !262 ; 3 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %i.to, i64 112
  %i.tq = load i64, ptr %6, align 8
  store i64 %i.tq, ptr %i.tp, align 8
  %i.tr = getelementptr inbounds nuw i8, ptr %i.to, i64 120
  %i.ts = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI3LocILi2EESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.tr, ptr noundef nonnull align 8 dereferenceable(24) %i.rw) ; 0 uses
  %i.tt = getelementptr inbounds nuw i8, ptr %i.to, i64 144
  %i.tu = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.tt, ptr noundef nonnull align 8 dereferenceable(24) %i.rx) ; 0 uses
  %i.tv = load ptr, ptr %i.rx, align 8, !tbaa !279 ; 3 uses
  %.not.i.i.i.i92 = icmp eq ptr %i.tv, null
  br i1 %.not.i.i.i.i92, label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit.i93, label %bb.au

bb.au:                                            ; preds = %_ZN9CenteringILi2EED2Ev.exit91
  %i.tw = load ptr, ptr %i.ry, align 8, !tbaa !280
  %i.tx = ptrtoint ptr %i.tw to i64
  %i.ty = ptrtoint ptr %i.tv to i64
  %i.tz = sub i64 %i.tx, %i.ty
  call void @_ZdlPvm(ptr noundef nonnull %i.tv, i64 noundef %i.tz) #48
  br label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit.i93

_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit.i93: ; preds = %bb.au, %_ZN9CenteringILi2EED2Ev.exit91
  %i.ua = load ptr, ptr %i.rw, align 8, !tbaa !267 ; 3 uses
  %.not.i.i.i1.i94 = icmp eq ptr %i.ua, null
  br i1 %.not.i.i.i1.i94, label %_ZN9CenteringILi2EED2Ev.exit95, label %bb.av

bb.av:                                            ; preds = %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit.i93
  %i.ub = load ptr, ptr %i.rz, align 8, !tbaa !268
  %i.uc = ptrtoint ptr %i.ub to i64
  %i.ud = ptrtoint ptr %i.ua to i64
  %i.ue = sub i64 %i.uc, %i.ud
  call void @_ZdlPvm(ptr noundef nonnull %i.ua, i64 noundef %i.ue) #48
  br label %_ZN9CenteringILi2EED2Ev.exit95

_ZN9CenteringILi2EED2Ev.exit95:                   ; preds = %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit.i93, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #47
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #47
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #47
  call void @llvm.experimental.noalias.scope.decl(metadata !439)
  %i.uf = getelementptr inbounds nuw i8, ptr %indvars.iv.sroa.phi2358, i64 8
  %i.ug = load ptr, ptr %i.uf, align 8, !tbaa !264, !noalias !439 ; 3 uses
  %i.uh = load ptr, ptr %indvars.iv.sroa.phi2358, align 8, !tbaa !267, !noalias !439 ; 9 uses
  %i.ui = ptrtoint ptr %i.ug to i64               ; 3 uses
  %i.uj = ptrtoint ptr %i.uh to i64               ; 3 uses
  %i.uk = sub i64 %i.ui, %i.uj                    ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false), !alias.scope !439
  %.not.i.i.i.i.i = icmp eq ptr %i.ug, %i.uh
  br i1 %.not.i.i.i.i.i, label %_ZNSt12_Vector_baseI3LocILi2EESaIS1_EEC2EmRKS2_.exit.i.thread.i, label %bb.aw

_ZNSt12_Vector_baseI3LocILi2EESaIS1_EEC2EmRKS2_.exit.i.thread.i: ; preds = %_ZN9CenteringILi2EED2Ev.exit95
  %i.ul = getelementptr inbounds nuw i8, ptr null, i64 %i.uk
  store i64 0, ptr %8, align 8
  store ptr %i.ul, ptr %i.sa, align 8, !tbaa !268, !alias.scope !439
  br label %_ZN18CanonicalCenteringILi2EE7combineISt6vectorI3LocILi2EESaIS4_EEEET_RKS7_S9_.exit

bb.aw:                                            ; preds = %_ZN9CenteringILi2EED2Ev.exit95
  %i.um = icmp ugt i64 %i.uk, 9223372036854775800
  br i1 %i.um, label %bb.ax, label %_ZNSt12_Vector_baseI3LocILi2EESaIS1_EEC2EmRKS2_.exit.i.i, !prof !44

bb.ax:                                            ; preds = %bb.aw
  call void @_ZSt28__throw_bad_array_new_lengthv() #46, !noalias !439
  unreachable

_ZNSt12_Vector_baseI3LocILi2EESaIS1_EEC2EmRKS2_.exit.i.i: ; preds = %bb.aw
  %i.un = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.uk) #45, !noalias !439 ; 11 uses
  store ptr %i.un, ptr %8, align 8, !tbaa !267, !alias.scope !439
  %i.uo = getelementptr inbounds nuw i8, ptr %i.un, i64 %i.uk
  store ptr %i.uo, ptr %i.sa, align 8, !tbaa !268, !alias.scope !439
  %37 = sub i64 %i.ui, %i.uj
  %38 = add i64 %37, -8                           ; 2 uses
  %i.up = lshr i64 %38, 3
  %i.uq = add nuw nsw i64 %i.up, 1                ; 2 uses
  %min.iters.check1665 = icmp ult i64 %38, 40
  br i1 %min.iters.check1665, label %.lr.ph.i.i.i.i.i.i.preheader, label %vector.memcheck1656

vector.memcheck1656:                              ; preds = %_ZNSt12_Vector_baseI3LocILi2EESaIS1_EEC2EmRKS2_.exit.i.i
  %scevgep1657 = getelementptr i8, ptr %i.un, i64 8
  %i.ur = add i64 %i.ui, -8
  %i.us = sub i64 %i.ur, %i.uj
  %i.ut = and i64 %i.us, -8                       ; 2 uses
  %scevgep1658 = getelementptr i8, ptr %scevgep1657, i64 %i.ut
  %scevgep1659 = getelementptr i8, ptr %i.uh, i64 8
  %scevgep1660 = getelementptr i8, ptr %scevgep1659, i64 %i.ut
  %bound01661 = icmp ult ptr %i.un, %scevgep1660
  %bound11662 = icmp ult ptr %i.uh, %scevgep1658
  %found.conflict1663 = and i1 %bound01661, %bound11662
  br i1 %found.conflict1663, label %.lr.ph.i.i.i.i.i.i.preheader, label %vector.ph1666

vector.ph1666:                                    ; preds = %vector.memcheck1656
  %n.vec1668 = and i64 %i.uq, 4611686018427387900 ; 3 uses
  %i.uu = shl i64 %n.vec1668, 3                   ; 2 uses
  %i.uv = getelementptr i8, ptr %i.un, i64 %i.uu  ; 2 uses
  %i.uw = getelementptr i8, ptr %i.uh, i64 %i.uu
  br label %vector.body1669

vector.body1669:                                  ; preds = %vector.body1669, %vector.ph1666
  %index1670 = phi i64 [ 0, %vector.ph1666 ], [ %index.next1683, %vector.body1669 ] ; 2 uses
  %i.ux = shl i64 %index1670, 3                   ; 3 uses
  %i.uy = or disjoint i64 %i.ux, 16               ; 2 uses
  %next.gep1671 = getelementptr i8, ptr %i.un, i64 %i.ux
  %next.gep1672 = getelementptr i8, ptr %i.un, i64 %i.uy
  %next.gep1673 = getelementptr i8, ptr %i.uh, i64 %i.ux
  %next.gep1674 = getelementptr i8, ptr %i.uh, i64 %i.uy
  %wide.vec1675 = load <4 x i32>, ptr %next.gep1673, align 4, !tbaa !236, !alias.scope !442, !noalias !439
  %wide.vec1678 = load <4 x i32>, ptr %next.gep1674, align 4, !tbaa !236, !alias.scope !442, !noalias !439
  store <4 x i32> %wide.vec1675, ptr %next.gep1671, align 4, !tbaa !4, !alias.scope !445, !noalias !439
  store <4 x i32> %wide.vec1678, ptr %next.gep1672, align 4, !tbaa !4, !alias.scope !445, !noalias !439
  %index.next1683 = add nuw i64 %index1670, 4     ; 2 uses
  %i.uz = icmp eq i64 %index.next1683, %n.vec1668
  br i1 %i.uz, label %middle.block1684, label %vector.body1669, !llvm.loop !447

middle.block1684:                                 ; preds = %vector.body1669
  %cmp.n1685 = icmp eq i64 %i.uq, %n.vec1668
  br i1 %cmp.n1685, label %_ZN18CanonicalCenteringILi2EE7combineISt6vectorI3LocILi2EESaIS4_EEEET_RKS7_S9_.exit, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %vector.memcheck1656, %_ZNSt12_Vector_baseI3LocILi2EESaIS1_EEC2EmRKS2_.exit.i.i, %middle.block1684
  %.09.i.i.i.i.i.i.ph = phi ptr [ %i.un, %vector.memcheck1656 ], [ %i.un, %_ZNSt12_Vector_baseI3LocILi2EESaIS1_EEC2EmRKS2_.exit.i.i ], [ %i.uv, %middle.block1684 ]
  %.sroa.04.08.i.i.i.i.i.i.ph = phi ptr [ %i.uh, %vector.memcheck1656 ], [ %i.uh, %_ZNSt12_Vector_baseI3LocILi2EESaIS1_EEC2EmRKS2_.exit.i.i ], [ %i.uw, %middle.block1684 ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.vf, %.lr.ph.i.i.i.i.i.i ], [ %.09.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ] ; 3 uses
  %.sroa.04.08.i.i.i.i.i.i = phi ptr [ %i.ve, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.04.08.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ] ; 3 uses
  %i.va = load i32, ptr %.sroa.04.08.i.i.i.i.i.i, align 4, !tbaa !236, !noalias !439
  store i32 %i.va, ptr %.09.i.i.i.i.i.i, align 4, !tbaa !4, !noalias !439
  %i.vb = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 4
  %i.vc = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 4
  %i.vd = load i32, ptr %i.vc, align 4, !tbaa !236, !noalias !439
  store i32 %i.vd, ptr %i.vb, align 4, !tbaa !4, !noalias !439
  %i.ve = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.vf = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ve, %i.ug
  br i1 %.not.i.i.i.i.i.i, label %_ZN18CanonicalCenteringILi2EE7combineISt6vectorI3LocILi2EESaIS4_EEEET_RKS7_S9_.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !448

_ZN18CanonicalCenteringILi2EE7combineISt6vectorI3LocILi2EESaIS4_EEEET_RKS7_S9_.exit: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block1684, %_ZNSt12_Vector_baseI3LocILi2EESaIS1_EEC2EmRKS2_.exit.i.thread.i
  %i.vg = phi ptr [ null, %_ZNSt12_Vector_baseI3LocILi2EESaIS1_EEC2EmRKS2_.exit.i.thread.i ], [ %i.un, %middle.block1684 ], [ %i.un, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseI3LocILi2EESaIS1_EEC2EmRKS2_.exit.i.thread.i ], [ %i.uv, %middle.block1684 ], [ %i.vf, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.sb, align 8, !tbaa !264, !alias.scope !439
  %i.vh = load ptr, ptr %i.ti, align 8, !tbaa !449, !noalias !439
  %i.vi = getelementptr inbounds nuw i8, ptr %i.ti, i64 8
  %i.vj = load ptr, ptr %i.vi, align 8, !tbaa !449, !noalias !439
  %i.vk = ptrtoint ptr %.0.lcssa.i.i.i.i.i.i to i64
  %i.vl = ptrtoint ptr %i.vg to i64
  %i.vm = sub i64 %i.vk, %i.vl
  %i.vn = getelementptr inbounds i8, ptr %i.vg, i64 %i.vm
  call void @_ZNSt6vectorI3LocILi2EESaIS1_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEvNS6_IPS1_S3_EET_SC_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr %i.vn, ptr %i.vh, ptr %i.vj)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #47
  call void @llvm.experimental.noalias.scope.decl(metadata !450)
  %i.vo = getelementptr inbounds nuw i8, ptr %indvars.iv.sroa.phi, i64 8
  %i.vp = load ptr, ptr %i.vo, align 8, !tbaa !276, !noalias !450 ; 3 uses
  %i.vq = load ptr, ptr %indvars.iv.sroa.phi, align 8, !tbaa !279, !noalias !450 ; 9 uses
  %i.vr = ptrtoint ptr %i.vp to i64               ; 3 uses
  %i.vs = ptrtoint ptr %i.vq to i64               ; 3 uses
  %i.vt = sub i64 %i.vr, %i.vs                    ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false), !alias.scope !450
  %.not.i.i.i.i.i96 = icmp eq ptr %i.vp, %i.vq
  br i1 %.not.i.i.i.i.i96, label %_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EEC2EmRKS3_.exit.i.thread.i, label %bb.ay

_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EEC2EmRKS3_.exit.i.thread.i: ; preds = %_ZN18CanonicalCenteringILi2EE7combineISt6vectorI3LocILi2EESaIS4_EEEET_RKS7_S9_.exit
  %i.vu = getelementptr inbounds nuw i8, ptr null, i64 %i.vt
  store i64 0, ptr %9, align 8
  store ptr %i.vu, ptr %i.sc, align 8, !tbaa !280, !alias.scope !450
  br label %_ZN18CanonicalCenteringILi2EE7combineISt6vectorI6VectorILi2Ed4FullESaIS5_EEEET_RKS8_SA_.exit

bb.ay:                                            ; preds = %_ZN18CanonicalCenteringILi2EE7combineISt6vectorI3LocILi2EESaIS4_EEEET_RKS7_S9_.exit
  %i.vv = icmp ugt i64 %i.vt, 9223372036854775792
  br i1 %i.vv, label %bb.az, label %_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i, !prof !44

bb.az:                                            ; preds = %bb.ay
  call void @_ZSt28__throw_bad_array_new_lengthv() #46, !noalias !450
  unreachable

_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i: ; preds = %bb.ay
  %i.vw = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.vt) #45, !noalias !450 ; 11 uses
  store ptr %i.vw, ptr %9, align 8, !tbaa !279, !alias.scope !450
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vw, i64 %i.vt
  store ptr %i.vx, ptr %i.sc, align 8, !tbaa !280, !alias.scope !450
  %39 = sub i64 %i.vr, %i.vs
  %40 = add i64 %39, -16                          ; 2 uses
  %i.vy = lshr i64 %40, 4
  %i.vz = add nuw nsw i64 %i.vy, 1                ; 2 uses
  %min.iters.check1639 = icmp ult i64 %40, 80
  br i1 %min.iters.check1639, label %.lr.ph.i.i.i.i.i.i97.preheader, label %vector.memcheck1630

vector.memcheck1630:                              ; preds = %_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i
  %scevgep1631 = getelementptr i8, ptr %i.vw, i64 16
  %i.wa = add i64 %i.vr, -16
  %i.wb = sub i64 %i.wa, %i.vs
  %i.wc = and i64 %i.wb, -16                      ; 2 uses
  %scevgep1632 = getelementptr i8, ptr %scevgep1631, i64 %i.wc
  %scevgep1633 = getelementptr i8, ptr %i.vq, i64 16
  %scevgep1634 = getelementptr i8, ptr %scevgep1633, i64 %i.wc
  %bound01635 = icmp ult ptr %i.vw, %scevgep1634
  %bound11636 = icmp ult ptr %i.vq, %scevgep1632
  %found.conflict1637 = and i1 %bound01635, %bound11636
  br i1 %found.conflict1637, label %.lr.ph.i.i.i.i.i.i97.preheader, label %vector.ph1640

vector.ph1640:                                    ; preds = %vector.memcheck1630
  %n.vec1642 = and i64 %i.vz, 2305843009213693950 ; 3 uses
  %i.wd = shl i64 %n.vec1642, 4                   ; 2 uses
  %i.we = getelementptr i8, ptr %i.vw, i64 %i.wd  ; 2 uses
  %i.wf = getelementptr i8, ptr %i.vq, i64 %i.wd
  br label %vector.body1643

vector.body1643:                                  ; preds = %vector.body1643, %vector.ph1640
  %index1644 = phi i64 [ 0, %vector.ph1640 ], [ %index.next1651, %vector.body1643 ] ; 2 uses
  %i.wg = shl i64 %index1644, 4                   ; 3 uses
  %i.wh = or disjoint i64 %i.wg, 16               ; 2 uses
  %next.gep1645 = getelementptr i8, ptr %i.vw, i64 %i.wg
  %next.gep1646 = getelementptr i8, ptr %i.vw, i64 %i.wh
  %next.gep1647 = getelementptr i8, ptr %i.vq, i64 %i.wg
  %next.gep1648 = getelementptr i8, ptr %i.vq, i64 %i.wh
  %wide.load1649 = load <2 x double>, ptr %next.gep1647, align 8, !tbaa !247, !alias.scope !453, !noalias !450
  %wide.load1650 = load <2 x double>, ptr %next.gep1648, align 8, !tbaa !247, !alias.scope !453, !noalias !450
  store <2 x double> %wide.load1649, ptr %next.gep1645, align 8, !tbaa !247, !alias.scope !456, !noalias !458
  store <2 x double> %wide.load1650, ptr %next.gep1646, align 8, !tbaa !247, !alias.scope !456, !noalias !458
  %index.next1651 = add nuw i64 %index1644, 2     ; 2 uses
  %i.wi = icmp eq i64 %index.next1651, %n.vec1642
  br i1 %i.wi, label %middle.block1652, label %vector.body1643, !llvm.loop !459

middle.block1652:                                 ; preds = %vector.body1643
  %cmp.n1653 = icmp eq i64 %i.vz, %n.vec1642
  br i1 %cmp.n1653, label %_ZN18CanonicalCenteringILi2EE7combineISt6vectorI6VectorILi2Ed4FullESaIS5_EEEET_RKS8_SA_.exit, label %.lr.ph.i.i.i.i.i.i97.preheader

.lr.ph.i.i.i.i.i.i97.preheader:                   ; preds = %vector.memcheck1630, %_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i, %middle.block1652
  %.09.i.i.i.i.i.i98.ph = phi ptr [ %i.vw, %vector.memcheck1630 ], [ %i.vw, %_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i ], [ %i.we, %middle.block1652 ]
  %.sroa.04.08.i.i.i.i.i.i99.ph = phi ptr [ %i.vq, %vector.memcheck1630 ], [ %i.vq, %_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i ], [ %i.wf, %middle.block1652 ]
  br label %.lr.ph.i.i.i.i.i.i97

.lr.ph.i.i.i.i.i.i97:                             ; preds = %.lr.ph.i.i.i.i.i.i97.preheader, %.lr.ph.i.i.i.i.i.i97
  %.09.i.i.i.i.i.i98 = phi ptr [ %i.wo, %.lr.ph.i.i.i.i.i.i97 ], [ %.09.i.i.i.i.i.i98.ph, %.lr.ph.i.i.i.i.i.i97.preheader ] ; 3 uses
  %.sroa.04.08.i.i.i.i.i.i99 = phi ptr [ %i.wn, %.lr.ph.i.i.i.i.i.i97 ], [ %.sroa.04.08.i.i.i.i.i.i99.ph, %.lr.ph.i.i.i.i.i.i97.preheader ] ; 3 uses
  %i.wj = load double, ptr %.sroa.04.08.i.i.i.i.i.i99, align 8, !tbaa !247, !noalias !450
  store double %i.wj, ptr %.09.i.i.i.i.i.i98, align 8, !tbaa !247, !noalias !450
  %i.wk = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i98, i64 8
  %i.wl = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i99, i64 8
  %i.wm = load double, ptr %i.wl, align 8, !tbaa !247, !noalias !450
  store double %i.wm, ptr %i.wk, align 8, !tbaa !247, !noalias !450
  %i.wn = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i99, i64 16 ; 2 uses
  %i.wo = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i98, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i100 = icmp eq ptr %i.wn, %i.vp
  br i1 %.not.i.i.i.i.i.i100, label %_ZN18CanonicalCenteringILi2EE7combineISt6vectorI6VectorILi2Ed4FullESaIS5_EEEET_RKS8_SA_.exit, label %.lr.ph.i.i.i.i.i.i97, !llvm.loop !460

_ZN18CanonicalCenteringILi2EE7combineISt6vectorI6VectorILi2Ed4FullESaIS5_EEEET_RKS8_SA_.exit: ; preds = %.lr.ph.i.i.i.i.i.i97, %middle.block1652, %_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EEC2EmRKS3_.exit.i.thread.i
  %i.wp = phi ptr [ null, %_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EEC2EmRKS3_.exit.i.thread.i ], [ %i.vw, %middle.block1652 ], [ %i.vw, %.lr.ph.i.i.i.i.i.i97 ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.i101 = phi ptr [ null, %_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EEC2EmRKS3_.exit.i.thread.i ], [ %i.we, %middle.block1652 ], [ %i.wo, %.lr.ph.i.i.i.i.i.i97 ] ; 2 uses
  store ptr %.0.lcssa.i.i.i.i.i.i101, ptr %i.sd, align 8, !tbaa !276, !alias.scope !450
  %i.wq = load ptr, ptr %i.tj, align 8, !tbaa !461, !noalias !450
  %i.wr = getelementptr inbounds nuw i8, ptr %i.tj, i64 8
  %i.ws = load ptr, ptr %i.wr, align 8, !tbaa !461, !noalias !450
  %i.wt = ptrtoint ptr %.0.lcssa.i.i.i.i.i.i101 to i64
  %i.wu = ptrtoint ptr %i.wp to i64
  %i.wv = sub i64 %i.wt, %i.wu
  %i.ww = getelementptr inbounds i8, ptr %i.wp, i64 %i.wv
  call void @_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEvNS7_IPS2_S4_EET_SD_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr %i.ww, ptr %i.wq, ptr %i.ws)
  store i32 1, ptr %7, align 8, !tbaa !361
  store i32 %i.sm, ptr %i.se, align 4, !tbaa !462
  %i.wx = load ptr, ptr %i.sb, align 8, !tbaa !264 ; 3 uses
  %i.wy = load ptr, ptr %8, align 8, !tbaa !267   ; 9 uses
  %i.wz = ptrtoint ptr %i.wx to i64               ; 3 uses
  %i.xa = ptrtoint ptr %i.wy to i64               ; 3 uses
  %i.xb = sub i64 %i.wz, %i.xa                    ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.sf, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i102 = icmp eq ptr %i.wx, %i.wy
  br i1 %.not.i.i.i.i.i102, label %_ZNSt12_Vector_baseI3LocILi2EESaIS1_EEC2EmRKS2_.exit.i.i103.thread, label %bb.ba

_ZNSt12_Vector_baseI3LocILi2EESaIS1_EEC2EmRKS2_.exit.i.i103.thread: ; preds = %_ZN18CanonicalCenteringILi2EE7combineISt6vectorI6VectorILi2Ed4FullESaIS5_EEEET_RKS8_SA_.exit
  %i.xc = getelementptr inbounds nuw i8, ptr null, i64 %i.xb
  store i64 0, ptr %i.sf, align 8
  store ptr %i.xc, ptr %i.sh, align 8, !tbaa !268
  br label %_ZNSt6vectorI3LocILi2EESaIS1_EEC2ERKS3_.exit.i

bb.ba:                                            ; preds = %_ZN18CanonicalCenteringILi2EE7combineISt6vectorI6VectorILi2Ed4FullESaIS5_EEEET_RKS8_SA_.exit
  %i.xd = icmp ugt i64 %i.xb, 9223372036854775800
  br i1 %i.xd, label %bb.bb, label %_ZNSt12_Vector_baseI3LocILi2EESaIS1_EEC2EmRKS2_.exit.i.i103, !prof !44

bb.bb:                                            ; preds = %bb.ba
  call void @_ZSt28__throw_bad_array_new_lengthv() #46
  unreachable

_ZNSt12_Vector_baseI3LocILi2EESaIS1_EEC2EmRKS2_.exit.i.i103: ; preds = %bb.ba
  %i.xe = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.xb) #45 ; 9 uses
  store ptr %i.xe, ptr %i.sf, align 8, !tbaa !267
  %i.xf = getelementptr inbounds nuw i8, ptr %i.xe, i64 %i.xb
  store ptr %i.xf, ptr %i.sh, align 8, !tbaa !268
  %41 = sub i64 %i.wz, %i.xa
  %42 = add i64 %41, -8                           ; 2 uses
  %i.xg = lshr i64 %42, 3
  %i.xh = add nuw nsw i64 %i.xg, 1                ; 2 uses
  %min.iters.check1607 = icmp ult i64 %42, 40
  br i1 %min.iters.check1607, label %.lr.ph.i.i.i.i.i.i104.preheader, label %vector.memcheck1598

vector.memcheck1598:                              ; preds = %_ZNSt12_Vector_baseI3LocILi2EESaIS1_EEC2EmRKS2_.exit.i.i103
  %scevgep1599 = getelementptr i8, ptr %i.xe, i64 8
  %i.xi = add i64 %i.wz, -8
  %i.xj = sub i64 %i.xi, %i.xa
  %i.xk = and i64 %i.xj, -8                       ; 2 uses
  %scevgep1600 = getelementptr i8, ptr %scevgep1599, i64 %i.xk
  %scevgep1601 = getelementptr i8, ptr %i.wy, i64 8
  %scevgep1602 = getelementptr i8, ptr %scevgep1601, i64 %i.xk
  %bound01603 = icmp ult ptr %i.xe, %scevgep1602
  %bound11604 = icmp ult ptr %i.wy, %scevgep1600
  %found.conflict1605 = and i1 %bound01603, %bound11604
  br i1 %found.conflict1605, label %.lr.ph.i.i.i.i.i.i104.preheader, label %vector.ph1608

vector.ph1608:                                    ; preds = %vector.memcheck1598
  %n.vec1610 = and i64 %i.xh, 4611686018427387900 ; 3 uses
  %i.xl = shl i64 %n.vec1610, 3                   ; 2 uses
  %i.xm = getelementptr i8, ptr %i.xe, i64 %i.xl  ; 2 uses
  %i.xn = getelementptr i8, ptr %i.wy, i64 %i.xl
  br label %vector.body1611

vector.body1611:                                  ; preds = %vector.body1611, %vector.ph1608
  %index1612 = phi i64 [ 0, %vector.ph1608 ], [ %index.next1625, %vector.body1611 ] ; 2 uses
  %i.xo = shl i64 %index1612, 3                   ; 3 uses
  %i.xp = or disjoint i64 %i.xo, 16               ; 2 uses
  %next.gep1613 = getelementptr i8, ptr %i.xe, i64 %i.xo
  %next.gep1614 = getelementptr i8, ptr %i.xe, i64 %i.xp
  %next.gep1615 = getelementptr i8, ptr %i.wy, i64 %i.xo
  %next.gep1616 = getelementptr i8, ptr %i.wy, i64 %i.xp
  %wide.vec1617 = load <4 x i32>, ptr %next.gep1615, align 4, !tbaa !236, !alias.scope !463
  %wide.vec1620 = load <4 x i32>, ptr %next.gep1616, align 4, !tbaa !236, !alias.scope !463
  store <4 x i32> %wide.vec1617, ptr %next.gep1613, align 4, !tbaa !4, !alias.scope !466, !noalias !463
  store <4 x i32> %wide.vec1620, ptr %next.gep1614, align 4, !tbaa !4, !alias.scope !466, !noalias !463
  %index.next1625 = add nuw i64 %index1612, 4     ; 2 uses
  %i.xq = icmp eq i64 %index.next1625, %n.vec1610
  br i1 %i.xq, label %middle.block1626, label %vector.body1611, !llvm.loop !468

middle.block1626:                                 ; preds = %vector.body1611
  %cmp.n1627 = icmp eq i64 %i.xh, %n.vec1610
  br i1 %cmp.n1627, label %_ZNSt6vectorI3LocILi2EESaIS1_EEC2ERKS3_.exit.i, label %.lr.ph.i.i.i.i.i.i104.preheader

.lr.ph.i.i.i.i.i.i104.preheader:                  ; preds = %vector.memcheck1598, %_ZNSt12_Vector_baseI3LocILi2EESaIS1_EEC2EmRKS2_.exit.i.i103, %middle.block1626
  %.09.i.i.i.i.i.i105.ph = phi ptr [ %i.xe, %vector.memcheck1598 ], [ %i.xe, %_ZNSt12_Vector_baseI3LocILi2EESaIS1_EEC2EmRKS2_.exit.i.i103 ], [ %i.xm, %middle.block1626 ]
  %.sroa.04.08.i.i.i.i.i.i106.ph = phi ptr [ %i.wy, %vector.memcheck1598 ], [ %i.wy, %_ZNSt12_Vector_baseI3LocILi2EESaIS1_EEC2EmRKS2_.exit.i.i103 ], [ %i.xn, %middle.block1626 ]
  br label %.lr.ph.i.i.i.i.i.i104

.lr.ph.i.i.i.i.i.i104:                            ; preds = %.lr.ph.i.i.i.i.i.i104.preheader, %.lr.ph.i.i.i.i.i.i104
  %.09.i.i.i.i.i.i105 = phi ptr [ %i.xw, %.lr.ph.i.i.i.i.i.i104 ], [ %.09.i.i.i.i.i.i105.ph, %.lr.ph.i.i.i.i.i.i104.preheader ] ; 3 uses
  %.sroa.04.08.i.i.i.i.i.i106 = phi ptr [ %i.xv, %.lr.ph.i.i.i.i.i.i104 ], [ %.sroa.04.08.i.i.i.i.i.i106.ph, %.lr.ph.i.i.i.i.i.i104.preheader ] ; 3 uses
  %i.xr = load i32, ptr %.sroa.04.08.i.i.i.i.i.i106, align 4, !tbaa !236
  store i32 %i.xr, ptr %.09.i.i.i.i.i.i105, align 4, !tbaa !4
  %i.xs = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i105, i64 4
  %i.xt = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i106, i64 4
  %i.xu = load i32, ptr %i.xt, align 4, !tbaa !236
  store i32 %i.xu, ptr %i.xs, align 4, !tbaa !4
  %i.xv = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i106, i64 8 ; 2 uses
  %i.xw = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i105, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i107 = icmp eq ptr %i.xv, %i.wx
  br i1 %.not.i.i.i.i.i.i107, label %_ZNSt6vectorI3LocILi2EESaIS1_EEC2ERKS3_.exit.i, label %.lr.ph.i.i.i.i.i.i104, !llvm.loop !469

_ZNSt6vectorI3LocILi2EESaIS1_EEC2ERKS3_.exit.i:   ; preds = %.lr.ph.i.i.i.i.i.i104, %middle.block1626, %_ZNSt12_Vector_baseI3LocILi2EESaIS1_EEC2EmRKS2_.exit.i.i103.thread
  %.0.lcssa.i.i.i.i.i.i108 = phi ptr [ null, %_ZNSt12_Vector_baseI3LocILi2EESaIS1_EEC2EmRKS2_.exit.i.i103.thread ], [ %i.xm, %middle.block1626 ], [ %i.xw, %.lr.ph.i.i.i.i.i.i104 ]
  store ptr %.0.lcssa.i.i.i.i.i.i108, ptr %i.sg, align 8, !tbaa !264
  %i.xx = load ptr, ptr %i.sd, align 8, !tbaa !276 ; 3 uses
  %i.xy = load ptr, ptr %9, align 8, !tbaa !279   ; 9 uses
  %i.xz = ptrtoint ptr %i.xx to i64               ; 3 uses
  %i.ya = ptrtoint ptr %i.xy to i64               ; 3 uses
  %i.yb = sub i64 %i.xz, %i.ya                    ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.si, i8 0, i64 24, i1 false)
  %.not.i.i.i.i4.i = icmp eq ptr %i.xx, %i.xy
  br i1 %.not.i.i.i.i4.i, label %_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i109.thread, label %bb.bc

_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i109.thread: ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EEC2ERKS3_.exit.i
  %i.yc = getelementptr inbounds nuw i8, ptr null, i64 %i.yb
  store i64 0, ptr %i.si, align 8
  store ptr %i.yc, ptr %i.sk, align 8, !tbaa !280
  br label %_ZN9CenteringILi2EEC2E13CenteringType14ContinuityTypeRKSt6vectorI3LocILi2EESaIS5_EERKS3_I6VectorILi2Ed4FullESaISC_EE.exit

bb.bc:                                            ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EEC2ERKS3_.exit.i
  %i.yd = icmp ugt i64 %i.yb, 9223372036854775792
  br i1 %i.yd, label %bb.bd, label %_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i109, !prof !44

bb.bd:                                            ; preds = %bb.bc
  call void @_ZSt28__throw_bad_array_new_lengthv() #46
  unreachable

_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i109: ; preds = %bb.bc
  %i.ye = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.yb) #45 ; 9 uses
  store ptr %i.ye, ptr %i.si, align 8, !tbaa !279
  %i.yf = getelementptr inbounds nuw i8, ptr %i.ye, i64 %i.yb
  store ptr %i.yf, ptr %i.sk, align 8, !tbaa !280
  %43 = sub i64 %i.xz, %i.ya
  %44 = add i64 %43, -16                          ; 2 uses
  %i.yg = lshr i64 %44, 4
  %i.yh = add nuw nsw i64 %i.yg, 1                ; 2 uses
  %min.iters.check1581 = icmp ult i64 %44, 80
  br i1 %min.iters.check1581, label %.lr.ph.i.i.i.i.i6.i.preheader, label %vector.memcheck1572

vector.memcheck1572:                              ; preds = %_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i109
  %scevgep1573 = getelementptr i8, ptr %i.ye, i64 16
  %i.yi = add i64 %i.xz, -16
  %i.yj = sub i64 %i.yi, %i.ya
  %i.yk = and i64 %i.yj, -16                      ; 2 uses
  %scevgep1574 = getelementptr i8, ptr %scevgep1573, i64 %i.yk
  %scevgep1575 = getelementptr i8, ptr %i.xy, i64 16
  %scevgep1576 = getelementptr i8, ptr %scevgep1575, i64 %i.yk
  %bound01577 = icmp ult ptr %i.ye, %scevgep1576
  %bound11578 = icmp ult ptr %i.xy, %scevgep1574
  %found.conflict1579 = and i1 %bound01577, %bound11578
  br i1 %found.conflict1579, label %.lr.ph.i.i.i.i.i6.i.preheader, label %vector.ph1582

vector.ph1582:                                    ; preds = %vector.memcheck1572
  %n.vec1584 = and i64 %i.yh, 2305843009213693950 ; 3 uses
  %i.yl = shl i64 %n.vec1584, 4                   ; 2 uses
  %i.ym = getelementptr i8, ptr %i.ye, i64 %i.yl  ; 2 uses
  %i.yn = getelementptr i8, ptr %i.xy, i64 %i.yl
  br label %vector.body1585

vector.body1585:                                  ; preds = %vector.body1585, %vector.ph1582
  %index1586 = phi i64 [ 0, %vector.ph1582 ], [ %index.next1593, %vector.body1585 ] ; 2 uses
  %i.yo = shl i64 %index1586, 4                   ; 3 uses
  %i.yp = or disjoint i64 %i.yo, 16               ; 2 uses
  %next.gep1587 = getelementptr i8, ptr %i.ye, i64 %i.yo
  %next.gep1588 = getelementptr i8, ptr %i.ye, i64 %i.yp
  %next.gep1589 = getelementptr i8, ptr %i.xy, i64 %i.yo
  %next.gep1590 = getelementptr i8, ptr %i.xy, i64 %i.yp
  %wide.load1591 = load <2 x double>, ptr %next.gep1589, align 8, !tbaa !247, !alias.scope !470
  %wide.load1592 = load <2 x double>, ptr %next.gep1590, align 8, !tbaa !247, !alias.scope !470
  store <2 x double> %wide.load1591, ptr %next.gep1587, align 8, !tbaa !247, !alias.scope !473, !noalias !470
  store <2 x double> %wide.load1592, ptr %next.gep1588, align 8, !tbaa !247, !alias.scope !473, !noalias !470
  %index.next1593 = add nuw i64 %index1586, 2     ; 2 uses
  %i.yq = icmp eq i64 %index.next1593, %n.vec1584
  br i1 %i.yq, label %middle.block1594, label %vector.body1585, !llvm.loop !475

middle.block1594:                                 ; preds = %vector.body1585
  %cmp.n1595 = icmp eq i64 %i.yh, %n.vec1584
  br i1 %cmp.n1595, label %_ZN9CenteringILi2EEC2E13CenteringType14ContinuityTypeRKSt6vectorI3LocILi2EESaIS5_EERKS3_I6VectorILi2Ed4FullESaISC_EE.exit, label %.lr.ph.i.i.i.i.i6.i.preheader

.lr.ph.i.i.i.i.i6.i.preheader:                    ; preds = %vector.memcheck1572, %_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i109, %middle.block1594
  %.09.i.i.i.i.i7.i.ph = phi ptr [ %i.ye, %vector.memcheck1572 ], [ %i.ye, %_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i109 ], [ %i.ym, %middle.block1594 ]
  %.sroa.04.08.i.i.i.i.i8.i.ph = phi ptr [ %i.xy, %vector.memcheck1572 ], [ %i.xy, %_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i109 ], [ %i.yn, %middle.block1594 ]
  br label %.lr.ph.i.i.i.i.i6.i

.lr.ph.i.i.i.i.i6.i:                              ; preds = %.lr.ph.i.i.i.i.i6.i.preheader, %.lr.ph.i.i.i.i.i6.i
  %.09.i.i.i.i.i7.i = phi ptr [ %i.yw, %.lr.ph.i.i.i.i.i6.i ], [ %.09.i.i.i.i.i7.i.ph, %.lr.ph.i.i.i.i.i6.i.preheader ] ; 3 uses
  %.sroa.04.08.i.i.i.i.i8.i = phi ptr [ %i.yv, %.lr.ph.i.i.i.i.i6.i ], [ %.sroa.04.08.i.i.i.i.i8.i.ph, %.lr.ph.i.i.i.i.i6.i.preheader ] ; 3 uses
  %i.yr = load double, ptr %.sroa.04.08.i.i.i.i.i8.i, align 8, !tbaa !247
  store double %i.yr, ptr %.09.i.i.i.i.i7.i, align 8, !tbaa !247
  %i.ys = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i7.i, i64 8
  %i.yt = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i8.i, i64 8
  %i.yu = load double, ptr %i.yt, align 8, !tbaa !247
  store double %i.yu, ptr %i.ys, align 8, !tbaa !247
  %i.yv = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i8.i, i64 16 ; 2 uses
  %i.yw = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i7.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i9.i = icmp eq ptr %i.yv, %i.xx
  br i1 %.not.i.i.i.i.i9.i, label %_ZN9CenteringILi2EEC2E13CenteringType14ContinuityTypeRKSt6vectorI3LocILi2EESaIS5_EERKS3_I6VectorILi2Ed4FullESaISC_EE.exit, label %.lr.ph.i.i.i.i.i6.i, !llvm.loop !476

_ZN9CenteringILi2EEC2E13CenteringType14ContinuityTypeRKSt6vectorI3LocILi2EESaIS5_EERKS3_I6VectorILi2Ed4FullESaISC_EE.exit: ; preds = %.lr.ph.i.i.i.i.i6.i, %middle.block1594, %_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i109.thread
  %.0.lcssa.i.i.i.i.i10.i = phi ptr [ null, %_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i109.thread ], [ %i.ym, %middle.block1594 ], [ %i.yw, %.lr.ph.i.i.i.i.i6.i ]
  store ptr %.0.lcssa.i.i.i.i.i10.i, ptr %i.sj, align 8, !tbaa !276
  %i.yx = load ptr, ptr @_ZN18CanonicalCenteringILi2EE17centering_table_mE, align 8, !tbaa !258
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yx, i64 8
  %i.yz = load ptr, ptr %i.yy, align 8, !tbaa !260
  %i.za = getelementptr inbounds nuw [8 x i8], ptr %i.yz, i64 %indvars.iv
  %i.zb = load ptr, ptr %i.za, align 8, !tbaa !262 ; 3 uses
  %i.zc = getelementptr inbounds nuw i8, ptr %i.zb, i64 168
  %i.zd = load i64, ptr %7, align 8
  store i64 %i.zd, ptr %i.zc, align 8
  %i.ze = getelementptr inbounds nuw i8, ptr %i.zb, i64 176
  %i.zf = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI3LocILi2EESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.ze, ptr noundef nonnull align 8 dereferenceable(24) %i.sf) ; 0 uses
  %i.zg = getelementptr inbounds nuw i8, ptr %i.zb, i64 200
  %i.zh = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.zg, ptr noundef nonnull align 8 dereferenceable(24) %i.si) ; 0 uses
  %i.zi = load ptr, ptr %i.si, align 8, !tbaa !279 ; 3 uses
  %.not.i.i.i.i110 = icmp eq ptr %i.zi, null
  br i1 %.not.i.i.i.i110, label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit.i111, label %bb.be

bb.be:                                            ; preds = %_ZN9CenteringILi2EEC2E13CenteringType14ContinuityTypeRKSt6vectorI3LocILi2EESaIS5_EERKS3_I6VectorILi2Ed4FullESaISC_EE.exit
  %i.zj = load ptr, ptr %i.sk, align 8, !tbaa !280
  %i.zk = ptrtoint ptr %i.zj to i64
  %i.zl = ptrtoint ptr %i.zi to i64
  %i.zm = sub i64 %i.zk, %i.zl
  call void @_ZdlPvm(ptr noundef nonnull %i.zi, i64 noundef %i.zm) #48
  br label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit.i111

_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit.i111: ; preds = %bb.be, %_ZN9CenteringILi2EEC2E13CenteringType14ContinuityTypeRKSt6vectorI3LocILi2EESaIS5_EERKS3_I6VectorILi2Ed4FullESaISC_EE.exit
  %i.zn = load ptr, ptr %i.sf, align 8, !tbaa !267 ; 3 uses
  %.not.i.i.i1.i112 = icmp eq ptr %i.zn, null
  br i1 %.not.i.i.i1.i112, label %_ZN9CenteringILi2EED2Ev.exit113, label %bb.bf

bb.bf:                                            ; preds = %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit.i111
  %i.zo = load ptr, ptr %i.sh, align 8, !tbaa !268
  %i.zp = ptrtoint ptr %i.zo to i64
  %i.zq = ptrtoint ptr %i.zn to i64
  %i.zr = sub i64 %i.zp, %i.zq
  call void @_ZdlPvm(ptr noundef nonnull %i.zn, i64 noundef %i.zr) #48
  br label %_ZN9CenteringILi2EED2Ev.exit113

_ZN9CenteringILi2EED2Ev.exit113:                  ; preds = %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit.i111, %bb.bf
  %i.zs = load ptr, ptr %9, align 8, !tbaa !279   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.zs, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit, label %bb.bg

bb.bg:                                            ; preds = %_ZN9CenteringILi2EED2Ev.exit113
  %i.zt = load ptr, ptr %i.sc, align 8, !tbaa !280
  %i.zu = ptrtoint ptr %i.zt to i64
  %i.zv = ptrtoint ptr %i.zs to i64
  %i.zw = sub i64 %i.zu, %i.zv
  call void @_ZdlPvm(ptr noundef nonnull %i.zs, i64 noundef %i.zw) #48
  br label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit

_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit: ; preds = %_ZN9CenteringILi2EED2Ev.exit113, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #47
  %i.zx = load ptr, ptr %8, align 8, !tbaa !267   ; 3 uses
  %.not.i.i.i114 = icmp eq ptr %i.zx, null
  br i1 %.not.i.i.i114, label %_ZNSt6vectorI3LocILi2EESaIS1_EED2Ev.exit, label %bb.bh

bb.bh:                                            ; preds = %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit
  %i.zy = load ptr, ptr %i.sa, align 8, !tbaa !268
  %i.zz = ptrtoint ptr %i.zy to i64
  %i.aaa = ptrtoint ptr %i.zx to i64
  %i.aab = sub i64 %i.zz, %i.aaa
  call void @_ZdlPvm(ptr noundef nonnull %i.zx, i64 noundef %i.aab) #48
  br label %_ZNSt6vectorI3LocILi2EESaIS1_EED2Ev.exit

_ZNSt6vectorI3LocILi2EESaIS1_EED2Ev.exit:         ; preds = %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #47
  br i1 %i.sl, label %bb.ar, label %.preheader867.preheader, !llvm.loop !477

.preheader867.preheader:                          ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EED2Ev.exit
  %i.aac = load ptr, ptr %2, align 16, !tbaa !267 ; 14 uses
  %i.aad = load ptr, ptr %i.fi, align 8, !tbaa !264 ; 2 uses
  %.not.i.i131 = icmp eq ptr %i.aad, %i.aac
  br i1 %.not.i.i131, label %_ZNSt6vectorI3LocILi2EESaIS1_EE5clearEv.exit, label %bb.co

bb.bi:                                            ; preds = %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE5clearEv.exit.1.1
  store i32 0, ptr %i.ami, align 4, !tbaa !4
  %i.aae = getelementptr inbounds nuw i8, ptr %i.ami, i64 4
  store i32 1, ptr %i.aae, align 4, !tbaa !4
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.ami, i64 8
  store ptr %i.aaf, ptr %i.fi, align 8, !tbaa !264
  br label %_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit.i116

bb.bj:                                            ; preds = %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE5clearEv.exit.1.1
  %i.aag = ptrtoint ptr %i.ami to i64             ; 3 uses
  %i.aah = ptrtoint ptr %i.aac to i64             ; 3 uses
  %i.aai = sub i64 %i.aag, %i.aah                 ; 4 uses
  %i.aaj = icmp eq i64 %i.aai, 9223372036854775800
  br i1 %i.aaj, label %bb.bk, label %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i418

bb.bk:                                            ; preds = %bb.bj
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.189) #46
  unreachable

_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i418: ; preds = %bb.bj
  %i.aak = ashr exact i64 %i.aai, 3               ; 3 uses
  %.sroa.speculated.i.i419 = call i64 @llvm.umax.i64(i64 %i.aak, i64 1)
  %i.aal = add nsw i64 %.sroa.speculated.i.i419, %i.aak ; 2 uses
  %i.aam = icmp ult i64 %i.aal, %i.aak
  %i.aan = call i64 @llvm.umin.i64(i64 %i.aal, i64 1152921504606846975)
  %i.aao = select i1 %i.aam, i64 1152921504606846975, i64 %i.aan ; 3 uses
  %.not.i.i420 = icmp ne i64 %i.aao, 0
  call void @llvm.assume(i1 %.not.i.i420)
  %i.aap = shl nuw nsw i64 %i.aao, 3
  %i.aaq = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aap) #45 ; 11 uses
  %i.aar = getelementptr inbounds nuw i8, ptr %i.aaq, i64 %i.aai ; 2 uses
  store i32 0, ptr %i.aar, align 4, !tbaa !4
  %i.aas = getelementptr inbounds nuw i8, ptr %i.aar, i64 4
  store i32 1, ptr %i.aas, align 4, !tbaa !4
  %.not9.i.i.i.i.i.i421 = icmp eq ptr %i.aac, %i.ami
  br i1 %.not9.i.i.i.i.i.i421, label %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i433, label %.lr.ph.i.i.i.i.i.i422.preheader

.lr.ph.i.i.i.i.i.i422.preheader:                  ; preds = %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i418
  %45 = sub i64 %i.aag, %i.aah
  %46 = add i64 %45, -8                           ; 2 uses
  %i.aat = lshr i64 %46, 3
  %i.aau = add nuw nsw i64 %i.aat, 1              ; 2 uses
  %min.iters.check1695 = icmp ult i64 %46, 120
  br i1 %min.iters.check1695, label %.lr.ph.i.i.i.i.i.i422.preheader2327, label %vector.memcheck1688

vector.memcheck1688:                              ; preds = %.lr.ph.i.i.i.i.i.i422.preheader
  %i.aav = add i64 %i.aag, -8
  %i.aaw = sub i64 %i.aav, %i.aah
  %i.aax = and i64 %i.aaw, -8
  %i.aay = add i64 %i.aax, 8                      ; 2 uses
  %scevgep1689 = getelementptr i8, ptr %i.aaq, i64 %i.aay
  %scevgep1690 = getelementptr i8, ptr %i.aac, i64 %i.aay
  %bound01691 = icmp ult ptr %i.aaq, %scevgep1690
  %bound11692 = icmp ult ptr %i.aac, %scevgep1689
  %found.conflict1693 = and i1 %bound01691, %bound11692
  br i1 %found.conflict1693, label %.lr.ph.i.i.i.i.i.i422.preheader2327, label %vector.ph1696

vector.ph1696:                                    ; preds = %vector.memcheck1688
  %n.vec1698 = and i64 %i.aau, 4611686018427387900 ; 3 uses
  %i.aaz = shl i64 %n.vec1698, 3                  ; 2 uses
  %i.aba = getelementptr i8, ptr %i.aaq, i64 %i.aaz ; 2 uses
  %i.abb = getelementptr i8, ptr %i.aac, i64 %i.aaz
  br label %vector.body1699

vector.body1699:                                  ; preds = %vector.body1699, %vector.ph1696
  %index1700 = phi i64 [ 0, %vector.ph1696 ], [ %index.next1713, %vector.body1699 ] ; 2 uses
  %i.abc = shl i64 %index1700, 3                  ; 3 uses
  %i.abd = or disjoint i64 %i.abc, 16             ; 2 uses
  %next.gep1701 = getelementptr i8, ptr %i.aaq, i64 %i.abc
  %next.gep1702 = getelementptr i8, ptr %i.aaq, i64 %i.abd
  %next.gep1703 = getelementptr i8, ptr %i.aac, i64 %i.abc
  %next.gep1704 = getelementptr i8, ptr %i.aac, i64 %i.abd
  %wide.vec1705 = load <4 x i32>, ptr %next.gep1703, align 4, !tbaa !236, !alias.scope !478
  %wide.vec1708 = load <4 x i32>, ptr %next.gep1704, align 4, !tbaa !236, !alias.scope !478
  store <4 x i32> %wide.vec1705, ptr %next.gep1701, align 4, !tbaa !4, !alias.scope !481, !noalias !478
  store <4 x i32> %wide.vec1708, ptr %next.gep1702, align 4, !tbaa !4, !alias.scope !481, !noalias !478
  %index.next1713 = add nuw i64 %index1700, 4     ; 2 uses
  %i.abe = icmp eq i64 %index.next1713, %n.vec1698
  br i1 %i.abe, label %middle.block1714, label %vector.body1699, !llvm.loop !483

middle.block1714:                                 ; preds = %vector.body1699
  %cmp.n1715 = icmp eq i64 %i.aau, %n.vec1698
  br i1 %cmp.n1715, label %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i433, label %.lr.ph.i.i.i.i.i.i422.preheader2327

.lr.ph.i.i.i.i.i.i422.preheader2327:              ; preds = %vector.memcheck1688, %.lr.ph.i.i.i.i.i.i422.preheader, %middle.block1714
  %.011.i.i.i.i.i.i423.ph = phi ptr [ %i.aaq, %vector.memcheck1688 ], [ %i.aaq, %.lr.ph.i.i.i.i.i.i422.preheader ], [ %i.aba, %middle.block1714 ]
  %.0810.i.i.i.i.i.i424.ph = phi ptr [ %i.aac, %vector.memcheck1688 ], [ %i.aac, %.lr.ph.i.i.i.i.i.i422.preheader ], [ %i.abb, %middle.block1714 ]
  br label %.lr.ph.i.i.i.i.i.i422

.lr.ph.i.i.i.i.i.i422:                            ; preds = %.lr.ph.i.i.i.i.i.i422.preheader2327, %.lr.ph.i.i.i.i.i.i422
  %.011.i.i.i.i.i.i423 = phi ptr [ %i.abk, %.lr.ph.i.i.i.i.i.i422 ], [ %.011.i.i.i.i.i.i423.ph, %.lr.ph.i.i.i.i.i.i422.preheader2327 ] ; 3 uses
  %.0810.i.i.i.i.i.i424 = phi ptr [ %i.abj, %.lr.ph.i.i.i.i.i.i422 ], [ %.0810.i.i.i.i.i.i424.ph, %.lr.ph.i.i.i.i.i.i422.preheader2327 ] ; 3 uses
  %i.abf = load i32, ptr %.0810.i.i.i.i.i.i424, align 4, !tbaa !236
  store i32 %i.abf, ptr %.011.i.i.i.i.i.i423, align 4, !tbaa !4
  %i.abg = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i423, i64 4
  %i.abh = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i424, i64 4
  %i.abi = load i32, ptr %i.abh, align 4, !tbaa !236
  store i32 %i.abi, ptr %i.abg, align 4, !tbaa !4
  %i.abj = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i424, i64 8 ; 2 uses
  %i.abk = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i423, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i425 = icmp eq ptr %i.abj, %i.ami
  br i1 %.not.i.i.i.i.i.i425, label %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i433, label %.lr.ph.i.i.i.i.i.i422, !llvm.loop !484

_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i433: ; preds = %.lr.ph.i.i.i.i.i.i422, %middle.block1714, %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i418
  %.0.lcssa.i.i.i.i.i.i427 = phi ptr [ %i.aaq, %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i418 ], [ %i.aba, %middle.block1714 ], [ %i.abk, %.lr.ph.i.i.i.i.i.i422 ]
  %i.abl = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i427, i64 8
  %.not.i25.i435 = icmp eq ptr %i.aac, null
  br i1 %.not.i25.i435, label %_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit436, label %bb.bl

bb.bl:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i433
  call void @_ZdlPvm(ptr noundef nonnull %i.aac, i64 noundef %i.aai) #48
  %.pre.pre = load ptr, ptr %i.gw, align 8, !tbaa !276
  br label %_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit436

_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit436: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i433, %bb.bl
  %.pre = phi ptr [ %i.aml, %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i433 ], [ %.pre.pre, %bb.bl ]
  store ptr %i.aaq, ptr %2, align 16, !tbaa !267
  store ptr %i.abl, ptr %i.fi, align 8, !tbaa !264
  %i.abm = getelementptr inbounds nuw [8 x i8], ptr %i.aaq, i64 %i.aao
  store ptr %i.abm, ptr %i.fk, align 16, !tbaa !268
  br label %_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit.i116

_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit.i116: ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit436, %bb.bi
  %i.abn = phi ptr [ %.pre, %_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit436 ], [ %i.aml, %bb.bi ] ; 6 uses
  %i.abo = load ptr, ptr %i.gy, align 16, !tbaa !280
  %.not.i4.i117 = icmp eq ptr %i.abn, %i.abo
  br i1 %.not.i4.i117, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit.i116
  store <2 x double> <double 0.000000e+00, double 5.000000e-01>, ptr %i.abn, align 8, !tbaa !247
  %i.abp = getelementptr inbounds nuw i8, ptr %i.abn, i64 16
  store ptr %i.abp, ptr %i.gw, align 8, !tbaa !276
  br label %_ZN18CanonicalCenteringILi2EE8addValueERSt6vectorI3LocILi2EESaIS3_EERS1_I6VectorILi2Ed4FullESaIS9_EERKS3_RKS9_.exit118

bb.bn:                                            ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit.i116
  %i.abq = load ptr, ptr %3, align 16, !tbaa !279 ; 11 uses
  %i.abr = ptrtoint ptr %i.abn to i64             ; 3 uses
  %i.abs = ptrtoint ptr %i.abq to i64             ; 3 uses
  %i.abt = sub i64 %i.abr, %i.abs                 ; 4 uses
  %i.abu = icmp eq i64 %i.abt, 9223372036854775792
  br i1 %i.abu, label %bb.bo, label %_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i399

bb.bo:                                            ; preds = %bb.bn
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.189) #46
  unreachable

_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i399: ; preds = %bb.bn
  %i.abv = ashr exact i64 %i.abt, 4               ; 3 uses
  %.sroa.speculated.i.i400 = call i64 @llvm.umax.i64(i64 %i.abv, i64 1)
  %i.abw = add nsw i64 %.sroa.speculated.i.i400, %i.abv ; 2 uses
  %i.abx = icmp ult i64 %i.abw, %i.abv
  %i.aby = call i64 @llvm.umin.i64(i64 %i.abw, i64 576460752303423487)
  %i.abz = select i1 %i.abx, i64 576460752303423487, i64 %i.aby ; 3 uses
  %.not.i.i401 = icmp ne i64 %i.abz, 0
  call void @llvm.assume(i1 %.not.i.i401)
  %i.aca = shl nuw nsw i64 %i.abz, 4
  %i.acb = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aca) #45 ; 11 uses
  %i.acc = getelementptr inbounds nuw i8, ptr %i.acb, i64 %i.abt
  store <2 x double> <double 0.000000e+00, double 5.000000e-01>, ptr %i.acc, align 8, !tbaa !247
  %.not9.i.i.i.i.i.i402 = icmp eq ptr %i.abq, %i.abn
  br i1 %.not9.i.i.i.i.i.i402, label %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i414, label %.lr.ph.i.i.i.i.i.i403.preheader

.lr.ph.i.i.i.i.i.i403.preheader:                  ; preds = %_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i399
  %47 = sub i64 %i.abr, %i.abs
  %48 = add i64 %47, -16                          ; 2 uses
  %i.acd = lshr i64 %48, 4
  %i.ace = add nuw nsw i64 %i.acd, 1              ; 2 uses
  %min.iters.check1725 = icmp ult i64 %48, 240
  br i1 %min.iters.check1725, label %.lr.ph.i.i.i.i.i.i403.preheader2325, label %vector.memcheck1718

vector.memcheck1718:                              ; preds = %.lr.ph.i.i.i.i.i.i403.preheader
  %i.acf = add i64 %i.abr, -16
  %i.acg = sub i64 %i.acf, %i.abs
  %i.ach = and i64 %i.acg, -16
  %i.aci = add i64 %i.ach, 16                     ; 2 uses
  %scevgep1719 = getelementptr i8, ptr %i.acb, i64 %i.aci
  %scevgep1720 = getelementptr i8, ptr %i.abq, i64 %i.aci
  %bound01721 = icmp ult ptr %i.acb, %scevgep1720
  %bound11722 = icmp ult ptr %i.abq, %scevgep1719
  %found.conflict1723 = and i1 %bound01721, %bound11722
  br i1 %found.conflict1723, label %.lr.ph.i.i.i.i.i.i403.preheader2325, label %vector.ph1726

vector.ph1726:                                    ; preds = %vector.memcheck1718
  %n.vec1728 = and i64 %i.ace, 2305843009213693950 ; 3 uses
  %i.acj = shl i64 %n.vec1728, 4                  ; 2 uses
  %i.ack = getelementptr i8, ptr %i.acb, i64 %i.acj ; 2 uses
  %i.acl = getelementptr i8, ptr %i.abq, i64 %i.acj
  br label %vector.body1729

vector.body1729:                                  ; preds = %vector.body1729, %vector.ph1726
  %index1730 = phi i64 [ 0, %vector.ph1726 ], [ %index.next1737, %vector.body1729 ] ; 2 uses
  %i.acm = shl i64 %index1730, 4                  ; 3 uses
  %i.acn = or disjoint i64 %i.acm, 16             ; 2 uses
  %next.gep1731 = getelementptr i8, ptr %i.acb, i64 %i.acm
  %next.gep1732 = getelementptr i8, ptr %i.acb, i64 %i.acn
  %next.gep1733 = getelementptr i8, ptr %i.abq, i64 %i.acm
  %next.gep1734 = getelementptr i8, ptr %i.abq, i64 %i.acn
  %wide.load1735 = load <2 x double>, ptr %next.gep1733, align 8, !tbaa !247, !alias.scope !485
  %wide.load1736 = load <2 x double>, ptr %next.gep1734, align 8, !tbaa !247, !alias.scope !485
  store <2 x double> %wide.load1735, ptr %next.gep1731, align 8, !tbaa !247, !alias.scope !488, !noalias !485
  store <2 x double> %wide.load1736, ptr %next.gep1732, align 8, !tbaa !247, !alias.scope !488, !noalias !485
  %index.next1737 = add nuw i64 %index1730, 2     ; 2 uses
  %i.aco = icmp eq i64 %index.next1737, %n.vec1728
  br i1 %i.aco, label %middle.block1738, label %vector.body1729, !llvm.loop !490

middle.block1738:                                 ; preds = %vector.body1729
  %cmp.n1739 = icmp eq i64 %i.ace, %n.vec1728
  br i1 %cmp.n1739, label %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i414, label %.lr.ph.i.i.i.i.i.i403.preheader2325

.lr.ph.i.i.i.i.i.i403.preheader2325:              ; preds = %vector.memcheck1718, %.lr.ph.i.i.i.i.i.i403.preheader, %middle.block1738
  %.011.i.i.i.i.i.i404.ph = phi ptr [ %i.acb, %vector.memcheck1718 ], [ %i.acb, %.lr.ph.i.i.i.i.i.i403.preheader ], [ %i.ack, %middle.block1738 ]
  %.0810.i.i.i.i.i.i405.ph = phi ptr [ %i.abq, %vector.memcheck1718 ], [ %i.abq, %.lr.ph.i.i.i.i.i.i403.preheader ], [ %i.acl, %middle.block1738 ]
  br label %.lr.ph.i.i.i.i.i.i403

.lr.ph.i.i.i.i.i.i403:                            ; preds = %.lr.ph.i.i.i.i.i.i403.preheader2325, %.lr.ph.i.i.i.i.i.i403
  %.011.i.i.i.i.i.i404 = phi ptr [ %i.acu, %.lr.ph.i.i.i.i.i.i403 ], [ %.011.i.i.i.i.i.i404.ph, %.lr.ph.i.i.i.i.i.i403.preheader2325 ] ; 3 uses
  %.0810.i.i.i.i.i.i405 = phi ptr [ %i.act, %.lr.ph.i.i.i.i.i.i403 ], [ %.0810.i.i.i.i.i.i405.ph, %.lr.ph.i.i.i.i.i.i403.preheader2325 ] ; 3 uses
  %i.acp = load double, ptr %.0810.i.i.i.i.i.i405, align 8, !tbaa !247
  store double %i.acp, ptr %.011.i.i.i.i.i.i404, align 8, !tbaa !247
  %i.acq = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i404, i64 8
  %i.acr = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i405, i64 8
  %i.acs = load double, ptr %i.acr, align 8, !tbaa !247
  store double %i.acs, ptr %i.acq, align 8, !tbaa !247
  %i.act = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i405, i64 16 ; 2 uses
  %i.acu = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i404, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i406 = icmp eq ptr %i.act, %i.abn
  br i1 %.not.i.i.i.i.i.i406, label %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i414, label %.lr.ph.i.i.i.i.i.i403, !llvm.loop !491

_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i414: ; preds = %.lr.ph.i.i.i.i.i.i403, %middle.block1738, %_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i399
  %.0.lcssa.i.i.i.i.i.i408 = phi ptr [ %i.acb, %_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i399 ], [ %i.ack, %middle.block1738 ], [ %i.acu, %.lr.ph.i.i.i.i.i.i403 ]
  %i.acv = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i408, i64 16
  %.not.i25.i416 = icmp eq ptr %i.abq, null
  br i1 %.not.i25.i416, label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit417, label %bb.bp

bb.bp:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i414
  call void @_ZdlPvm(ptr noundef nonnull %i.abq, i64 noundef %i.abt) #48
  br label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit417

_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit417: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i414, %bb.bp
  store ptr %i.acb, ptr %3, align 16, !tbaa !279
  store ptr %i.acv, ptr %i.gw, align 8, !tbaa !276
  %i.acw = getelementptr inbounds nuw [16 x i8], ptr %i.acb, i64 %i.abz
  store ptr %i.acw, ptr %i.gy, align 16, !tbaa !280
  br label %_ZN18CanonicalCenteringILi2EE8addValueERSt6vectorI3LocILi2EESaIS3_EERS1_I6VectorILi2Ed4FullESaIS9_EERKS3_RKS9_.exit118

_ZN18CanonicalCenteringILi2EE8addValueERSt6vectorI3LocILi2EESaIS3_EERS1_I6VectorILi2Ed4FullESaIS9_EERKS3_RKS9_.exit118: ; preds = %bb.bm, %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit417
  %i.acx = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI3LocILi2EESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.ii, ptr noundef nonnull align 8 dereferenceable(24) %2) ; 0 uses
  %i.acy = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.ik, ptr noundef nonnull align 8 dereferenceable(24) %3) ; 0 uses
  %i.acz = load ptr, ptr %i.im, align 16, !tbaa !264 ; 7 uses
  %i.ada = load ptr, ptr %i.io, align 8, !tbaa !268
  %.not.i.i119 = icmp eq ptr %i.acz, %i.ada
  br i1 %.not.i.i119, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %_ZN18CanonicalCenteringILi2EE8addValueERSt6vectorI3LocILi2EESaIS3_EERS1_I6VectorILi2Ed4FullESaIS9_EERKS3_RKS9_.exit118
  store i32 0, ptr %i.acz, align 4, !tbaa !4
  %i.adb = getelementptr inbounds nuw i8, ptr %i.acz, i64 4
  store i32 1, ptr %i.adb, align 4, !tbaa !4
  %i.adc = getelementptr inbounds nuw i8, ptr %i.acz, i64 8
  store ptr %i.adc, ptr %i.im, align 16, !tbaa !264
  br label %_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit.i120

bb.br:                                            ; preds = %_ZN18CanonicalCenteringILi2EE8addValueERSt6vectorI3LocILi2EESaIS3_EERS1_I6VectorILi2Ed4FullESaIS9_EERKS3_RKS9_.exit118
  %i.add = load ptr, ptr %i.ii, align 8, !tbaa !267 ; 11 uses
  %i.ade = ptrtoint ptr %i.acz to i64             ; 3 uses
  %i.adf = ptrtoint ptr %i.add to i64             ; 3 uses
  %i.adg = sub i64 %i.ade, %i.adf                 ; 4 uses
  %i.adh = icmp eq i64 %i.adg, 9223372036854775800
  br i1 %i.adh, label %bb.bs, label %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i456

bb.bs:                                            ; preds = %bb.br
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.189) #46
  unreachable

_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i456: ; preds = %bb.br
  %i.adi = ashr exact i64 %i.adg, 3               ; 3 uses
  %.sroa.speculated.i.i457 = call i64 @llvm.umax.i64(i64 %i.adi, i64 1)
  %i.adj = add nsw i64 %.sroa.speculated.i.i457, %i.adi ; 2 uses
  %i.adk = icmp ult i64 %i.adj, %i.adi
  %i.adl = call i64 @llvm.umin.i64(i64 %i.adj, i64 1152921504606846975)
  %i.adm = select i1 %i.adk, i64 1152921504606846975, i64 %i.adl ; 3 uses
  %.not.i.i458 = icmp ne i64 %i.adm, 0
  call void @llvm.assume(i1 %.not.i.i458)
  %i.adn = shl nuw nsw i64 %i.adm, 3
  %i.ado = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.adn) #45 ; 11 uses
  %i.adp = getelementptr inbounds nuw i8, ptr %i.ado, i64 %i.adg ; 2 uses
  store i32 0, ptr %i.adp, align 4, !tbaa !4
  %i.adq = getelementptr inbounds nuw i8, ptr %i.adp, i64 4
  store i32 1, ptr %i.adq, align 4, !tbaa !4
  %.not9.i.i.i.i.i.i459 = icmp eq ptr %i.add, %i.acz
  br i1 %.not9.i.i.i.i.i.i459, label %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i471, label %.lr.ph.i.i.i.i.i.i460.preheader

.lr.ph.i.i.i.i.i.i460.preheader:                  ; preds = %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i456
  %49 = sub i64 %i.ade, %i.adf
  %50 = add i64 %49, -8                           ; 2 uses
  %i.adr = lshr i64 %50, 3
  %i.ads = add nuw nsw i64 %i.adr, 1              ; 2 uses
  %min.iters.check1749 = icmp ult i64 %50, 120
  br i1 %min.iters.check1749, label %.lr.ph.i.i.i.i.i.i460.preheader2323, label %vector.memcheck1742

vector.memcheck1742:                              ; preds = %.lr.ph.i.i.i.i.i.i460.preheader
  %i.adt = add i64 %i.ade, -8
  %i.adu = sub i64 %i.adt, %i.adf
  %i.adv = and i64 %i.adu, -8
  %i.adw = add i64 %i.adv, 8                      ; 2 uses
  %scevgep1743 = getelementptr i8, ptr %i.ado, i64 %i.adw
  %scevgep1744 = getelementptr i8, ptr %i.add, i64 %i.adw
  %bound01745 = icmp ult ptr %i.ado, %scevgep1744
  %bound11746 = icmp ult ptr %i.add, %scevgep1743
  %found.conflict1747 = and i1 %bound01745, %bound11746
  br i1 %found.conflict1747, label %.lr.ph.i.i.i.i.i.i460.preheader2323, label %vector.ph1750

vector.ph1750:                                    ; preds = %vector.memcheck1742
  %n.vec1752 = and i64 %i.ads, 4611686018427387900 ; 3 uses
  %i.adx = shl i64 %n.vec1752, 3                  ; 2 uses
  %i.ady = getelementptr i8, ptr %i.ado, i64 %i.adx ; 2 uses
  %i.adz = getelementptr i8, ptr %i.add, i64 %i.adx
  br label %vector.body1753

vector.body1753:                                  ; preds = %vector.body1753, %vector.ph1750
  %index1754 = phi i64 [ 0, %vector.ph1750 ], [ %index.next1767, %vector.body1753 ] ; 2 uses
  %i.aea = shl i64 %index1754, 3                  ; 3 uses
  %i.aeb = or disjoint i64 %i.aea, 16             ; 2 uses
  %next.gep1755 = getelementptr i8, ptr %i.ado, i64 %i.aea
  %next.gep1756 = getelementptr i8, ptr %i.ado, i64 %i.aeb
  %next.gep1757 = getelementptr i8, ptr %i.add, i64 %i.aea
  %next.gep1758 = getelementptr i8, ptr %i.add, i64 %i.aeb
  %wide.vec1759 = load <4 x i32>, ptr %next.gep1757, align 4, !tbaa !236, !alias.scope !492
  %wide.vec1762 = load <4 x i32>, ptr %next.gep1758, align 4, !tbaa !236, !alias.scope !492
  store <4 x i32> %wide.vec1759, ptr %next.gep1755, align 4, !tbaa !4, !alias.scope !495, !noalias !492
  store <4 x i32> %wide.vec1762, ptr %next.gep1756, align 4, !tbaa !4, !alias.scope !495, !noalias !492
  %index.next1767 = add nuw i64 %index1754, 4     ; 2 uses
  %i.aec = icmp eq i64 %index.next1767, %n.vec1752
  br i1 %i.aec, label %middle.block1768, label %vector.body1753, !llvm.loop !497

middle.block1768:                                 ; preds = %vector.body1753
  %cmp.n1769 = icmp eq i64 %i.ads, %n.vec1752
  br i1 %cmp.n1769, label %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i471, label %.lr.ph.i.i.i.i.i.i460.preheader2323

.lr.ph.i.i.i.i.i.i460.preheader2323:              ; preds = %vector.memcheck1742, %.lr.ph.i.i.i.i.i.i460.preheader, %middle.block1768
  %.011.i.i.i.i.i.i461.ph = phi ptr [ %i.ado, %vector.memcheck1742 ], [ %i.ado, %.lr.ph.i.i.i.i.i.i460.preheader ], [ %i.ady, %middle.block1768 ]
  %.0810.i.i.i.i.i.i462.ph = phi ptr [ %i.add, %vector.memcheck1742 ], [ %i.add, %.lr.ph.i.i.i.i.i.i460.preheader ], [ %i.adz, %middle.block1768 ]
  br label %.lr.ph.i.i.i.i.i.i460

.lr.ph.i.i.i.i.i.i460:                            ; preds = %.lr.ph.i.i.i.i.i.i460.preheader2323, %.lr.ph.i.i.i.i.i.i460
  %.011.i.i.i.i.i.i461 = phi ptr [ %i.aei, %.lr.ph.i.i.i.i.i.i460 ], [ %.011.i.i.i.i.i.i461.ph, %.lr.ph.i.i.i.i.i.i460.preheader2323 ] ; 3 uses
  %.0810.i.i.i.i.i.i462 = phi ptr [ %i.aeh, %.lr.ph.i.i.i.i.i.i460 ], [ %.0810.i.i.i.i.i.i462.ph, %.lr.ph.i.i.i.i.i.i460.preheader2323 ] ; 3 uses
  %i.aed = load i32, ptr %.0810.i.i.i.i.i.i462, align 4, !tbaa !236
  store i32 %i.aed, ptr %.011.i.i.i.i.i.i461, align 4, !tbaa !4
  %i.aee = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i461, i64 4
  %i.aef = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i462, i64 4
  %i.aeg = load i32, ptr %i.aef, align 4, !tbaa !236
  store i32 %i.aeg, ptr %i.aee, align 4, !tbaa !4
  %i.aeh = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i462, i64 8 ; 2 uses
  %i.aei = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i461, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i463 = icmp eq ptr %i.aeh, %i.acz
  br i1 %.not.i.i.i.i.i.i463, label %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i471, label %.lr.ph.i.i.i.i.i.i460, !llvm.loop !498

_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i471: ; preds = %.lr.ph.i.i.i.i.i.i460, %middle.block1768, %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i456
  %.0.lcssa.i.i.i.i.i.i465 = phi ptr [ %i.ado, %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i456 ], [ %i.ady, %middle.block1768 ], [ %i.aei, %.lr.ph.i.i.i.i.i.i460 ]
  %i.aej = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i465, i64 8
  %.not.i25.i473 = icmp eq ptr %i.add, null
  br i1 %.not.i25.i473, label %_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit474, label %bb.bt

bb.bt:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i471
  call void @_ZdlPvm(ptr noundef nonnull %i.add, i64 noundef %i.adg) #48
  br label %_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit474

_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit474: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i471, %bb.bt
  store ptr %i.ado, ptr %i.ii, align 8, !tbaa !267
  store ptr %i.aej, ptr %i.im, align 16, !tbaa !264
  %i.aek = getelementptr inbounds nuw [8 x i8], ptr %i.ado, i64 %i.adm
  store ptr %i.aek, ptr %i.io, align 8, !tbaa !268
  br label %_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit.i120

_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit.i120: ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit474, %bb.bq
  %i.ael = load ptr, ptr %i.ka, align 16, !tbaa !276 ; 6 uses
  %i.aem = load ptr, ptr %i.kc, align 8, !tbaa !280
  %.not.i4.i121 = icmp eq ptr %i.ael, %i.aem
  br i1 %.not.i4.i121, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit.i120
  store <2 x double> <double 1.000000e+00, double 5.000000e-01>, ptr %i.ael, align 8, !tbaa !247
  %i.aen = getelementptr inbounds nuw i8, ptr %i.ael, i64 16
  store ptr %i.aen, ptr %i.ka, align 16, !tbaa !276
  br label %_ZN18CanonicalCenteringILi2EE8addValueERSt6vectorI3LocILi2EESaIS3_EERS1_I6VectorILi2Ed4FullESaIS9_EERKS3_RKS9_.exit122

bb.bv:                                            ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit.i120
  %i.aeo = load ptr, ptr %i.ik, align 8, !tbaa !279 ; 11 uses
  %i.aep = ptrtoint ptr %i.ael to i64             ; 3 uses
  %i.aeq = ptrtoint ptr %i.aeo to i64             ; 3 uses
  %i.aer = sub i64 %i.aep, %i.aeq                 ; 4 uses
  %i.aes = icmp eq i64 %i.aer, 9223372036854775792
  br i1 %i.aes, label %bb.bw, label %_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i437

bb.bw:                                            ; preds = %bb.bv
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.189) #46
  unreachable

_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i437: ; preds = %bb.bv
  %i.aet = ashr exact i64 %i.aer, 4               ; 3 uses
  %.sroa.speculated.i.i438 = call i64 @llvm.umax.i64(i64 %i.aet, i64 1)
  %i.aeu = add nsw i64 %.sroa.speculated.i.i438, %i.aet ; 2 uses
  %i.aev = icmp ult i64 %i.aeu, %i.aet
  %i.aew = call i64 @llvm.umin.i64(i64 %i.aeu, i64 576460752303423487)
  %i.aex = select i1 %i.aev, i64 576460752303423487, i64 %i.aew ; 3 uses
  %.not.i.i439 = icmp ne i64 %i.aex, 0
  call void @llvm.assume(i1 %.not.i.i439)
  %i.aey = shl nuw nsw i64 %i.aex, 4
  %i.aez = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aey) #45 ; 11 uses
  %i.afa = getelementptr inbounds nuw i8, ptr %i.aez, i64 %i.aer
  store <2 x double> <double 1.000000e+00, double 5.000000e-01>, ptr %i.afa, align 8, !tbaa !247
  %.not9.i.i.i.i.i.i440 = icmp eq ptr %i.aeo, %i.ael
  br i1 %.not9.i.i.i.i.i.i440, label %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i452, label %.lr.ph.i.i.i.i.i.i441.preheader

.lr.ph.i.i.i.i.i.i441.preheader:                  ; preds = %_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i437
  %51 = sub i64 %i.aep, %i.aeq
  %52 = add i64 %51, -16                          ; 2 uses
  %i.afb = lshr i64 %52, 4
  %i.afc = add nuw nsw i64 %i.afb, 1              ; 2 uses
  %min.iters.check1779 = icmp ult i64 %52, 240
  br i1 %min.iters.check1779, label %.lr.ph.i.i.i.i.i.i441.preheader2321, label %vector.memcheck1772

vector.memcheck1772:                              ; preds = %.lr.ph.i.i.i.i.i.i441.preheader
  %i.afd = add i64 %i.aep, -16
  %i.afe = sub i64 %i.afd, %i.aeq
  %i.aff = and i64 %i.afe, -16
  %i.afg = add i64 %i.aff, 16                     ; 2 uses
  %scevgep1773 = getelementptr i8, ptr %i.aez, i64 %i.afg
  %scevgep1774 = getelementptr i8, ptr %i.aeo, i64 %i.afg
  %bound01775 = icmp ult ptr %i.aez, %scevgep1774
  %bound11776 = icmp ult ptr %i.aeo, %scevgep1773
  %found.conflict1777 = and i1 %bound01775, %bound11776
  br i1 %found.conflict1777, label %.lr.ph.i.i.i.i.i.i441.preheader2321, label %vector.ph1780

vector.ph1780:                                    ; preds = %vector.memcheck1772
  %n.vec1782 = and i64 %i.afc, 2305843009213693950 ; 3 uses
  %i.afh = shl i64 %n.vec1782, 4                  ; 2 uses
  %i.afi = getelementptr i8, ptr %i.aez, i64 %i.afh ; 2 uses
  %i.afj = getelementptr i8, ptr %i.aeo, i64 %i.afh
  br label %vector.body1783

vector.body1783:                                  ; preds = %vector.body1783, %vector.ph1780
  %index1784 = phi i64 [ 0, %vector.ph1780 ], [ %index.next1791, %vector.body1783 ] ; 2 uses
  %i.afk = shl i64 %index1784, 4                  ; 3 uses
  %i.afl = or disjoint i64 %i.afk, 16             ; 2 uses
  %next.gep1785 = getelementptr i8, ptr %i.aez, i64 %i.afk
  %next.gep1786 = getelementptr i8, ptr %i.aez, i64 %i.afl
  %next.gep1787 = getelementptr i8, ptr %i.aeo, i64 %i.afk
  %next.gep1788 = getelementptr i8, ptr %i.aeo, i64 %i.afl
  %wide.load1789 = load <2 x double>, ptr %next.gep1787, align 8, !tbaa !247, !alias.scope !499
  %wide.load1790 = load <2 x double>, ptr %next.gep1788, align 8, !tbaa !247, !alias.scope !499
  store <2 x double> %wide.load1789, ptr %next.gep1785, align 8, !tbaa !247, !alias.scope !502, !noalias !499
  store <2 x double> %wide.load1790, ptr %next.gep1786, align 8, !tbaa !247, !alias.scope !502, !noalias !499
  %index.next1791 = add nuw i64 %index1784, 2     ; 2 uses
  %i.afm = icmp eq i64 %index.next1791, %n.vec1782
  br i1 %i.afm, label %middle.block1792, label %vector.body1783, !llvm.loop !504

middle.block1792:                                 ; preds = %vector.body1783
  %cmp.n1793 = icmp eq i64 %i.afc, %n.vec1782
  br i1 %cmp.n1793, label %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i452, label %.lr.ph.i.i.i.i.i.i441.preheader2321

.lr.ph.i.i.i.i.i.i441.preheader2321:              ; preds = %vector.memcheck1772, %.lr.ph.i.i.i.i.i.i441.preheader, %middle.block1792
  %.011.i.i.i.i.i.i442.ph = phi ptr [ %i.aez, %vector.memcheck1772 ], [ %i.aez, %.lr.ph.i.i.i.i.i.i441.preheader ], [ %i.afi, %middle.block1792 ]
  %.0810.i.i.i.i.i.i443.ph = phi ptr [ %i.aeo, %vector.memcheck1772 ], [ %i.aeo, %.lr.ph.i.i.i.i.i.i441.preheader ], [ %i.afj, %middle.block1792 ]
  br label %.lr.ph.i.i.i.i.i.i441

.lr.ph.i.i.i.i.i.i441:                            ; preds = %.lr.ph.i.i.i.i.i.i441.preheader2321, %.lr.ph.i.i.i.i.i.i441
  %.011.i.i.i.i.i.i442 = phi ptr [ %i.afs, %.lr.ph.i.i.i.i.i.i441 ], [ %.011.i.i.i.i.i.i442.ph, %.lr.ph.i.i.i.i.i.i441.preheader2321 ] ; 3 uses
  %.0810.i.i.i.i.i.i443 = phi ptr [ %i.afr, %.lr.ph.i.i.i.i.i.i441 ], [ %.0810.i.i.i.i.i.i443.ph, %.lr.ph.i.i.i.i.i.i441.preheader2321 ] ; 3 uses
  %i.afn = load double, ptr %.0810.i.i.i.i.i.i443, align 8, !tbaa !247
  store double %i.afn, ptr %.011.i.i.i.i.i.i442, align 8, !tbaa !247
  %i.afo = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i442, i64 8
  %i.afp = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i443, i64 8
  %i.afq = load double, ptr %i.afp, align 8, !tbaa !247
  store double %i.afq, ptr %i.afo, align 8, !tbaa !247
  %i.afr = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i443, i64 16 ; 2 uses
  %i.afs = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i442, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i444 = icmp eq ptr %i.afr, %i.ael
  br i1 %.not.i.i.i.i.i.i444, label %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i452, label %.lr.ph.i.i.i.i.i.i441, !llvm.loop !505

_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i452: ; preds = %.lr.ph.i.i.i.i.i.i441, %middle.block1792, %_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i437
  %.0.lcssa.i.i.i.i.i.i446 = phi ptr [ %i.aez, %_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i437 ], [ %i.afi, %middle.block1792 ], [ %i.afs, %.lr.ph.i.i.i.i.i.i441 ]
  %i.aft = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i446, i64 16
  %.not.i25.i454 = icmp eq ptr %i.aeo, null
  br i1 %.not.i25.i454, label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit455, label %bb.bx

bb.bx:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i452
  call void @_ZdlPvm(ptr noundef nonnull %i.aeo, i64 noundef %i.aer) #48
  br label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit455

_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit455: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i452, %bb.bx
  store ptr %i.aez, ptr %i.ik, align 8, !tbaa !279
  store ptr %i.aft, ptr %i.ka, align 16, !tbaa !276
  %i.afu = getelementptr inbounds nuw [16 x i8], ptr %i.aez, i64 %i.aex
  store ptr %i.afu, ptr %i.kc, align 8, !tbaa !280
  br label %_ZN18CanonicalCenteringILi2EE8addValueERSt6vectorI3LocILi2EESaIS3_EERS1_I6VectorILi2Ed4FullESaIS9_EERKS3_RKS9_.exit122

_ZN18CanonicalCenteringILi2EE8addValueERSt6vectorI3LocILi2EESaIS3_EERS1_I6VectorILi2Ed4FullESaIS9_EERKS3_RKS9_.exit122: ; preds = %bb.bu, %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit455
  %i.afv = load ptr, ptr %i.lo, align 8, !tbaa !264 ; 7 uses
  %i.afw = load ptr, ptr %i.lq, align 16, !tbaa !268
  %.not.i.i123 = icmp eq ptr %i.afv, %i.afw
  br i1 %.not.i.i123, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %_ZN18CanonicalCenteringILi2EE8addValueERSt6vectorI3LocILi2EESaIS3_EERS1_I6VectorILi2Ed4FullESaIS9_EERKS3_RKS9_.exit122
  store i32 1, ptr %i.afv, align 4, !tbaa !4
  %i.afx = getelementptr inbounds nuw i8, ptr %i.afv, i64 4
  store i32 0, ptr %i.afx, align 4, !tbaa !4
  %i.afy = getelementptr inbounds nuw i8, ptr %i.afv, i64 8
  store ptr %i.afy, ptr %i.lo, align 8, !tbaa !264
  br label %_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit.i124

bb.bz:                                            ; preds = %_ZN18CanonicalCenteringILi2EE8addValueERSt6vectorI3LocILi2EESaIS3_EERS1_I6VectorILi2Ed4FullESaIS9_EERKS3_RKS9_.exit122
  %i.afz = load ptr, ptr %i.lm, align 16, !tbaa !267 ; 11 uses
  %i.aga = ptrtoint ptr %i.afv to i64             ; 3 uses
  %i.agb = ptrtoint ptr %i.afz to i64             ; 3 uses
  %i.agc = sub i64 %i.aga, %i.agb                 ; 4 uses
  %i.agd = icmp eq i64 %i.agc, 9223372036854775800
  br i1 %i.agd, label %bb.ca, label %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i494

bb.ca:                                            ; preds = %bb.bz
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.189) #46
  unreachable

_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i494: ; preds = %bb.bz
  %i.age = ashr exact i64 %i.agc, 3               ; 3 uses
  %.sroa.speculated.i.i495 = call i64 @llvm.umax.i64(i64 %i.age, i64 1)
  %i.agf = add nsw i64 %.sroa.speculated.i.i495, %i.age ; 2 uses
  %i.agg = icmp ult i64 %i.agf, %i.age
  %i.agh = call i64 @llvm.umin.i64(i64 %i.agf, i64 1152921504606846975)
  %i.agi = select i1 %i.agg, i64 1152921504606846975, i64 %i.agh ; 3 uses
  %.not.i.i496 = icmp ne i64 %i.agi, 0
  call void @llvm.assume(i1 %.not.i.i496)
  %i.agj = shl nuw nsw i64 %i.agi, 3
  %i.agk = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.agj) #45 ; 11 uses
  %i.agl = getelementptr inbounds nuw i8, ptr %i.agk, i64 %i.agc ; 2 uses
  store i32 1, ptr %i.agl, align 4, !tbaa !4
  %i.agm = getelementptr inbounds nuw i8, ptr %i.agl, i64 4
  store i32 0, ptr %i.agm, align 4, !tbaa !4
  %.not9.i.i.i.i.i.i497 = icmp eq ptr %i.afz, %i.afv
  br i1 %.not9.i.i.i.i.i.i497, label %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i509, label %.lr.ph.i.i.i.i.i.i498.preheader

.lr.ph.i.i.i.i.i.i498.preheader:                  ; preds = %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i494
  %53 = sub i64 %i.aga, %i.agb
  %54 = add i64 %53, -8                           ; 2 uses
  %i.agn = lshr i64 %54, 3
  %i.ago = add nuw nsw i64 %i.agn, 1              ; 2 uses
  %min.iters.check1803 = icmp ult i64 %54, 120
  br i1 %min.iters.check1803, label %.lr.ph.i.i.i.i.i.i498.preheader2319, label %vector.memcheck1796

vector.memcheck1796:                              ; preds = %.lr.ph.i.i.i.i.i.i498.preheader
  %i.agp = add i64 %i.aga, -8
  %i.agq = sub i64 %i.agp, %i.agb
  %i.agr = and i64 %i.agq, -8
  %i.ags = add i64 %i.agr, 8                      ; 2 uses
  %scevgep1797 = getelementptr i8, ptr %i.agk, i64 %i.ags
  %scevgep1798 = getelementptr i8, ptr %i.afz, i64 %i.ags
  %bound01799 = icmp ult ptr %i.agk, %scevgep1798
  %bound11800 = icmp ult ptr %i.afz, %scevgep1797
  %found.conflict1801 = and i1 %bound01799, %bound11800
  br i1 %found.conflict1801, label %.lr.ph.i.i.i.i.i.i498.preheader2319, label %vector.ph1804

vector.ph1804:                                    ; preds = %vector.memcheck1796
  %n.vec1806 = and i64 %i.ago, 4611686018427387900 ; 3 uses
  %i.agt = shl i64 %n.vec1806, 3                  ; 2 uses
  %i.agu = getelementptr i8, ptr %i.agk, i64 %i.agt ; 2 uses
  %i.agv = getelementptr i8, ptr %i.afz, i64 %i.agt
  br label %vector.body1807

vector.body1807:                                  ; preds = %vector.body1807, %vector.ph1804
  %index1808 = phi i64 [ 0, %vector.ph1804 ], [ %index.next1821, %vector.body1807 ] ; 2 uses
  %i.agw = shl i64 %index1808, 3                  ; 3 uses
  %i.agx = or disjoint i64 %i.agw, 16             ; 2 uses
  %next.gep1809 = getelementptr i8, ptr %i.agk, i64 %i.agw
  %next.gep1810 = getelementptr i8, ptr %i.agk, i64 %i.agx
  %next.gep1811 = getelementptr i8, ptr %i.afz, i64 %i.agw
  %next.gep1812 = getelementptr i8, ptr %i.afz, i64 %i.agx
  %wide.vec1813 = load <4 x i32>, ptr %next.gep1811, align 4, !tbaa !236, !alias.scope !506
  %wide.vec1816 = load <4 x i32>, ptr %next.gep1812, align 4, !tbaa !236, !alias.scope !506
  store <4 x i32> %wide.vec1813, ptr %next.gep1809, align 4, !tbaa !4, !alias.scope !509, !noalias !506
  store <4 x i32> %wide.vec1816, ptr %next.gep1810, align 4, !tbaa !4, !alias.scope !509, !noalias !506
  %index.next1821 = add nuw i64 %index1808, 4     ; 2 uses
  %i.agy = icmp eq i64 %index.next1821, %n.vec1806
  br i1 %i.agy, label %middle.block1822, label %vector.body1807, !llvm.loop !511

middle.block1822:                                 ; preds = %vector.body1807
  %cmp.n1823 = icmp eq i64 %i.ago, %n.vec1806
  br i1 %cmp.n1823, label %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i509, label %.lr.ph.i.i.i.i.i.i498.preheader2319

.lr.ph.i.i.i.i.i.i498.preheader2319:              ; preds = %vector.memcheck1796, %.lr.ph.i.i.i.i.i.i498.preheader, %middle.block1822
  %.011.i.i.i.i.i.i499.ph = phi ptr [ %i.agk, %vector.memcheck1796 ], [ %i.agk, %.lr.ph.i.i.i.i.i.i498.preheader ], [ %i.agu, %middle.block1822 ]
  %.0810.i.i.i.i.i.i500.ph = phi ptr [ %i.afz, %vector.memcheck1796 ], [ %i.afz, %.lr.ph.i.i.i.i.i.i498.preheader ], [ %i.agv, %middle.block1822 ]
  br label %.lr.ph.i.i.i.i.i.i498

.lr.ph.i.i.i.i.i.i498:                            ; preds = %.lr.ph.i.i.i.i.i.i498.preheader2319, %.lr.ph.i.i.i.i.i.i498
  %.011.i.i.i.i.i.i499 = phi ptr [ %i.ahe, %.lr.ph.i.i.i.i.i.i498 ], [ %.011.i.i.i.i.i.i499.ph, %.lr.ph.i.i.i.i.i.i498.preheader2319 ] ; 3 uses
  %.0810.i.i.i.i.i.i500 = phi ptr [ %i.ahd, %.lr.ph.i.i.i.i.i.i498 ], [ %.0810.i.i.i.i.i.i500.ph, %.lr.ph.i.i.i.i.i.i498.preheader2319 ] ; 3 uses
  %i.agz = load i32, ptr %.0810.i.i.i.i.i.i500, align 4, !tbaa !236
  store i32 %i.agz, ptr %.011.i.i.i.i.i.i499, align 4, !tbaa !4
  %i.aha = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i499, i64 4
  %i.ahb = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i500, i64 4
  %i.ahc = load i32, ptr %i.ahb, align 4, !tbaa !236
  store i32 %i.ahc, ptr %i.aha, align 4, !tbaa !4
  %i.ahd = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i500, i64 8 ; 2 uses
  %i.ahe = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i499, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i501 = icmp eq ptr %i.ahd, %i.afv
  br i1 %.not.i.i.i.i.i.i501, label %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i509, label %.lr.ph.i.i.i.i.i.i498, !llvm.loop !512

_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i509: ; preds = %.lr.ph.i.i.i.i.i.i498, %middle.block1822, %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i494
  %.0.lcssa.i.i.i.i.i.i503 = phi ptr [ %i.agk, %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i494 ], [ %i.agu, %middle.block1822 ], [ %i.ahe, %.lr.ph.i.i.i.i.i.i498 ]
  %i.ahf = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i503, i64 8
  %.not.i25.i511 = icmp eq ptr %i.afz, null
  br i1 %.not.i25.i511, label %_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit512, label %bb.cb

bb.cb:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i509
  call void @_ZdlPvm(ptr noundef nonnull %i.afz, i64 noundef %i.agc) #48
  br label %_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit512

_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit512: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i509, %bb.cb
  store ptr %i.agk, ptr %i.lm, align 16, !tbaa !267
  store ptr %i.ahf, ptr %i.lo, align 8, !tbaa !264
  %i.ahg = getelementptr inbounds nuw [8 x i8], ptr %i.agk, i64 %i.agi
  store ptr %i.ahg, ptr %i.lq, align 16, !tbaa !268
  br label %_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit.i124

_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit.i124: ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit512, %bb.by
  %i.ahh = load ptr, ptr %i.nc, align 8, !tbaa !276 ; 6 uses
  %i.ahi = load ptr, ptr %i.ne, align 16, !tbaa !280
  %.not.i4.i125 = icmp eq ptr %i.ahh, %i.ahi
  br i1 %.not.i4.i125, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit.i124
  store <2 x double> <double 5.000000e-01, double 0.000000e+00>, ptr %i.ahh, align 8, !tbaa !247
  %i.ahj = getelementptr inbounds nuw i8, ptr %i.ahh, i64 16
  store ptr %i.ahj, ptr %i.nc, align 8, !tbaa !276
  br label %_ZN18CanonicalCenteringILi2EE8addValueERSt6vectorI3LocILi2EESaIS3_EERS1_I6VectorILi2Ed4FullESaIS9_EERKS3_RKS9_.exit126

bb.cd:                                            ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit.i124
  %i.ahk = load ptr, ptr %i.ln, align 16, !tbaa !279 ; 11 uses
  %i.ahl = ptrtoint ptr %i.ahh to i64             ; 3 uses
  %i.ahm = ptrtoint ptr %i.ahk to i64             ; 3 uses
  %i.ahn = sub i64 %i.ahl, %i.ahm                 ; 4 uses
  %i.aho = icmp eq i64 %i.ahn, 9223372036854775792
  br i1 %i.aho, label %bb.ce, label %_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i475

bb.ce:                                            ; preds = %bb.cd
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.189) #46
  unreachable

_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i475: ; preds = %bb.cd
  %i.ahp = ashr exact i64 %i.ahn, 4               ; 3 uses
  %.sroa.speculated.i.i476 = call i64 @llvm.umax.i64(i64 %i.ahp, i64 1)
  %i.ahq = add nsw i64 %.sroa.speculated.i.i476, %i.ahp ; 2 uses
  %i.ahr = icmp ult i64 %i.ahq, %i.ahp
  %i.ahs = call i64 @llvm.umin.i64(i64 %i.ahq, i64 576460752303423487)
  %i.aht = select i1 %i.ahr, i64 576460752303423487, i64 %i.ahs ; 3 uses
  %.not.i.i477 = icmp ne i64 %i.aht, 0
  call void @llvm.assume(i1 %.not.i.i477)
  %i.ahu = shl nuw nsw i64 %i.aht, 4
  %i.ahv = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ahu) #45 ; 11 uses
  %i.ahw = getelementptr inbounds nuw i8, ptr %i.ahv, i64 %i.ahn
  store <2 x double> <double 5.000000e-01, double 0.000000e+00>, ptr %i.ahw, align 8, !tbaa !247
  %.not9.i.i.i.i.i.i478 = icmp eq ptr %i.ahk, %i.ahh
  br i1 %.not9.i.i.i.i.i.i478, label %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i490, label %.lr.ph.i.i.i.i.i.i479.preheader

.lr.ph.i.i.i.i.i.i479.preheader:                  ; preds = %_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i475
  %55 = sub i64 %i.ahl, %i.ahm
  %56 = add i64 %55, -16                          ; 2 uses
  %i.ahx = lshr i64 %56, 4
  %i.ahy = add nuw nsw i64 %i.ahx, 1              ; 2 uses
  %min.iters.check1833 = icmp ult i64 %56, 240
  br i1 %min.iters.check1833, label %.lr.ph.i.i.i.i.i.i479.preheader2317, label %vector.memcheck1826

vector.memcheck1826:                              ; preds = %.lr.ph.i.i.i.i.i.i479.preheader
  %i.ahz = add i64 %i.ahl, -16
  %i.aia = sub i64 %i.ahz, %i.ahm
  %i.aib = and i64 %i.aia, -16
  %i.aic = add i64 %i.aib, 16                     ; 2 uses
  %scevgep1827 = getelementptr i8, ptr %i.ahv, i64 %i.aic
  %scevgep1828 = getelementptr i8, ptr %i.ahk, i64 %i.aic
  %bound01829 = icmp ult ptr %i.ahv, %scevgep1828
  %bound11830 = icmp ult ptr %i.ahk, %scevgep1827
  %found.conflict1831 = and i1 %bound01829, %bound11830
  br i1 %found.conflict1831, label %.lr.ph.i.i.i.i.i.i479.preheader2317, label %vector.ph1834

vector.ph1834:                                    ; preds = %vector.memcheck1826
  %n.vec1836 = and i64 %i.ahy, 2305843009213693950 ; 3 uses
  %i.aid = shl i64 %n.vec1836, 4                  ; 2 uses
  %i.aie = getelementptr i8, ptr %i.ahv, i64 %i.aid ; 2 uses
  %i.aif = getelementptr i8, ptr %i.ahk, i64 %i.aid
  br label %vector.body1837

vector.body1837:                                  ; preds = %vector.body1837, %vector.ph1834
  %index1838 = phi i64 [ 0, %vector.ph1834 ], [ %index.next1845, %vector.body1837 ] ; 2 uses
  %i.aig = shl i64 %index1838, 4                  ; 3 uses
  %i.aih = or disjoint i64 %i.aig, 16             ; 2 uses
  %next.gep1839 = getelementptr i8, ptr %i.ahv, i64 %i.aig
  %next.gep1840 = getelementptr i8, ptr %i.ahv, i64 %i.aih
  %next.gep1841 = getelementptr i8, ptr %i.ahk, i64 %i.aig
  %next.gep1842 = getelementptr i8, ptr %i.ahk, i64 %i.aih
  %wide.load1843 = load <2 x double>, ptr %next.gep1841, align 8, !tbaa !247, !alias.scope !513
  %wide.load1844 = load <2 x double>, ptr %next.gep1842, align 8, !tbaa !247, !alias.scope !513
  store <2 x double> %wide.load1843, ptr %next.gep1839, align 8, !tbaa !247, !alias.scope !516, !noalias !513
  store <2 x double> %wide.load1844, ptr %next.gep1840, align 8, !tbaa !247, !alias.scope !516, !noalias !513
  %index.next1845 = add nuw i64 %index1838, 2     ; 2 uses
  %i.aii = icmp eq i64 %index.next1845, %n.vec1836
  br i1 %i.aii, label %middle.block1846, label %vector.body1837, !llvm.loop !518

middle.block1846:                                 ; preds = %vector.body1837
  %cmp.n1847 = icmp eq i64 %i.ahy, %n.vec1836
  br i1 %cmp.n1847, label %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i490, label %.lr.ph.i.i.i.i.i.i479.preheader2317

.lr.ph.i.i.i.i.i.i479.preheader2317:              ; preds = %vector.memcheck1826, %.lr.ph.i.i.i.i.i.i479.preheader, %middle.block1846
  %.011.i.i.i.i.i.i480.ph = phi ptr [ %i.ahv, %vector.memcheck1826 ], [ %i.ahv, %.lr.ph.i.i.i.i.i.i479.preheader ], [ %i.aie, %middle.block1846 ]
  %.0810.i.i.i.i.i.i481.ph = phi ptr [ %i.ahk, %vector.memcheck1826 ], [ %i.ahk, %.lr.ph.i.i.i.i.i.i479.preheader ], [ %i.aif, %middle.block1846 ]
  br label %.lr.ph.i.i.i.i.i.i479

.lr.ph.i.i.i.i.i.i479:                            ; preds = %.lr.ph.i.i.i.i.i.i479.preheader2317, %.lr.ph.i.i.i.i.i.i479
  %.011.i.i.i.i.i.i480 = phi ptr [ %i.aio, %.lr.ph.i.i.i.i.i.i479 ], [ %.011.i.i.i.i.i.i480.ph, %.lr.ph.i.i.i.i.i.i479.preheader2317 ] ; 3 uses
  %.0810.i.i.i.i.i.i481 = phi ptr [ %i.ain, %.lr.ph.i.i.i.i.i.i479 ], [ %.0810.i.i.i.i.i.i481.ph, %.lr.ph.i.i.i.i.i.i479.preheader2317 ] ; 3 uses
  %i.aij = load double, ptr %.0810.i.i.i.i.i.i481, align 8, !tbaa !247
  store double %i.aij, ptr %.011.i.i.i.i.i.i480, align 8, !tbaa !247
  %i.aik = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i480, i64 8
  %i.ail = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i481, i64 8
  %i.aim = load double, ptr %i.ail, align 8, !tbaa !247
  store double %i.aim, ptr %i.aik, align 8, !tbaa !247
  %i.ain = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i481, i64 16 ; 2 uses
  %i.aio = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i480, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i482 = icmp eq ptr %i.ain, %i.ahh
  br i1 %.not.i.i.i.i.i.i482, label %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i490, label %.lr.ph.i.i.i.i.i.i479, !llvm.loop !519

_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i490: ; preds = %.lr.ph.i.i.i.i.i.i479, %middle.block1846, %_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i475
  %.0.lcssa.i.i.i.i.i.i484 = phi ptr [ %i.ahv, %_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i475 ], [ %i.aie, %middle.block1846 ], [ %i.aio, %.lr.ph.i.i.i.i.i.i479 ]
  %i.aip = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i484, i64 16
  %.not.i25.i492 = icmp eq ptr %i.ahk, null
  br i1 %.not.i25.i492, label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit493, label %bb.cf

bb.cf:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i490
  call void @_ZdlPvm(ptr noundef nonnull %i.ahk, i64 noundef %i.ahn) #48
  br label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit493

_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit493: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i490, %bb.cf
  store ptr %i.ahv, ptr %i.ln, align 16, !tbaa !279
  store ptr %i.aip, ptr %i.nc, align 8, !tbaa !276
  %i.aiq = getelementptr inbounds nuw [16 x i8], ptr %i.ahv, i64 %i.aht
  store ptr %i.aiq, ptr %i.ne, align 16, !tbaa !280
  br label %_ZN18CanonicalCenteringILi2EE8addValueERSt6vectorI3LocILi2EESaIS3_EERS1_I6VectorILi2Ed4FullESaIS9_EERKS3_RKS9_.exit126

_ZN18CanonicalCenteringILi2EE8addValueERSt6vectorI3LocILi2EESaIS3_EERS1_I6VectorILi2Ed4FullESaIS9_EERKS3_RKS9_.exit126: ; preds = %bb.cc, %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit493
  %i.air = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI3LocILi2EESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.oo, ptr noundef nonnull align 8 dereferenceable(24) %i.lm) ; 0 uses
  %i.ais = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.oq, ptr noundef nonnull align 8 dereferenceable(24) %i.ln) ; 0 uses
  %i.ait = load ptr, ptr %i.os, align 16, !tbaa !264 ; 7 uses
  %i.aiu = load ptr, ptr %i.ou, align 8, !tbaa !268
  %.not.i.i127 = icmp eq ptr %i.ait, %i.aiu
  br i1 %.not.i.i127, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %_ZN18CanonicalCenteringILi2EE8addValueERSt6vectorI3LocILi2EESaIS3_EERS1_I6VectorILi2Ed4FullESaIS9_EERKS3_RKS9_.exit126
  store i32 1, ptr %i.ait, align 4, !tbaa !4
  %i.aiv = getelementptr inbounds nuw i8, ptr %i.ait, i64 4
  store i32 0, ptr %i.aiv, align 4, !tbaa !4
  %i.aiw = getelementptr inbounds nuw i8, ptr %i.ait, i64 8
  store ptr %i.aiw, ptr %i.os, align 16, !tbaa !264
  br label %_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit.i128

bb.ch:                                            ; preds = %_ZN18CanonicalCenteringILi2EE8addValueERSt6vectorI3LocILi2EESaIS3_EERS1_I6VectorILi2Ed4FullESaIS9_EERKS3_RKS9_.exit126
  %i.aix = load ptr, ptr %i.oo, align 8, !tbaa !267 ; 11 uses
  %i.aiy = ptrtoint ptr %i.ait to i64             ; 3 uses
  %i.aiz = ptrtoint ptr %i.aix to i64             ; 3 uses
  %i.aja = sub i64 %i.aiy, %i.aiz                 ; 4 uses
  %i.ajb = icmp eq i64 %i.aja, 9223372036854775800
  br i1 %i.ajb, label %bb.ci, label %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i532

bb.ci:                                            ; preds = %bb.ch
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.189) #46
  unreachable

_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i532: ; preds = %bb.ch
  %i.ajc = ashr exact i64 %i.aja, 3               ; 3 uses
  %.sroa.speculated.i.i533 = call i64 @llvm.umax.i64(i64 %i.ajc, i64 1)
  %i.ajd = add nsw i64 %.sroa.speculated.i.i533, %i.ajc ; 2 uses
  %i.aje = icmp ult i64 %i.ajd, %i.ajc
  %i.ajf = call i64 @llvm.umin.i64(i64 %i.ajd, i64 1152921504606846975)
  %i.ajg = select i1 %i.aje, i64 1152921504606846975, i64 %i.ajf ; 3 uses
  %.not.i.i534 = icmp ne i64 %i.ajg, 0
  call void @llvm.assume(i1 %.not.i.i534)
  %i.ajh = shl nuw nsw i64 %i.ajg, 3
  %i.aji = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ajh) #45 ; 11 uses
  %i.ajj = getelementptr inbounds nuw i8, ptr %i.aji, i64 %i.aja ; 2 uses
  store i32 1, ptr %i.ajj, align 4, !tbaa !4
  %i.ajk = getelementptr inbounds nuw i8, ptr %i.ajj, i64 4
  store i32 0, ptr %i.ajk, align 4, !tbaa !4
  %.not9.i.i.i.i.i.i535 = icmp eq ptr %i.aix, %i.ait
  br i1 %.not9.i.i.i.i.i.i535, label %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i547, label %.lr.ph.i.i.i.i.i.i536.preheader

.lr.ph.i.i.i.i.i.i536.preheader:                  ; preds = %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i532
  %57 = sub i64 %i.aiy, %i.aiz
  %58 = add i64 %57, -8                           ; 2 uses
  %i.ajl = lshr i64 %58, 3
  %i.ajm = add nuw nsw i64 %i.ajl, 1              ; 2 uses
  %min.iters.check1857 = icmp ult i64 %58, 120
  br i1 %min.iters.check1857, label %.lr.ph.i.i.i.i.i.i536.preheader2315, label %vector.memcheck1850

vector.memcheck1850:                              ; preds = %.lr.ph.i.i.i.i.i.i536.preheader
  %i.ajn = add i64 %i.aiy, -8
  %i.ajo = sub i64 %i.ajn, %i.aiz
  %i.ajp = and i64 %i.ajo, -8
  %i.ajq = add i64 %i.ajp, 8                      ; 2 uses
  %scevgep1851 = getelementptr i8, ptr %i.aji, i64 %i.ajq
  %scevgep1852 = getelementptr i8, ptr %i.aix, i64 %i.ajq
  %bound01853 = icmp ult ptr %i.aji, %scevgep1852
  %bound11854 = icmp ult ptr %i.aix, %scevgep1851
  %found.conflict1855 = and i1 %bound01853, %bound11854
  br i1 %found.conflict1855, label %.lr.ph.i.i.i.i.i.i536.preheader2315, label %vector.ph1858

vector.ph1858:                                    ; preds = %vector.memcheck1850
  %n.vec1860 = and i64 %i.ajm, 4611686018427387900 ; 3 uses
  %i.ajr = shl i64 %n.vec1860, 3                  ; 2 uses
  %i.ajs = getelementptr i8, ptr %i.aji, i64 %i.ajr ; 2 uses
  %i.ajt = getelementptr i8, ptr %i.aix, i64 %i.ajr
  br label %vector.body1861

vector.body1861:                                  ; preds = %vector.body1861, %vector.ph1858
  %index1862 = phi i64 [ 0, %vector.ph1858 ], [ %index.next1875, %vector.body1861 ] ; 2 uses
  %i.aju = shl i64 %index1862, 3                  ; 3 uses
  %i.ajv = or disjoint i64 %i.aju, 16             ; 2 uses
  %next.gep1863 = getelementptr i8, ptr %i.aji, i64 %i.aju
  %next.gep1864 = getelementptr i8, ptr %i.aji, i64 %i.ajv
  %next.gep1865 = getelementptr i8, ptr %i.aix, i64 %i.aju
  %next.gep1866 = getelementptr i8, ptr %i.aix, i64 %i.ajv
  %wide.vec1867 = load <4 x i32>, ptr %next.gep1865, align 4, !tbaa !236, !alias.scope !520
  %wide.vec1870 = load <4 x i32>, ptr %next.gep1866, align 4, !tbaa !236, !alias.scope !520
  store <4 x i32> %wide.vec1867, ptr %next.gep1863, align 4, !tbaa !4, !alias.scope !523, !noalias !520
  store <4 x i32> %wide.vec1870, ptr %next.gep1864, align 4, !tbaa !4, !alias.scope !523, !noalias !520
  %index.next1875 = add nuw i64 %index1862, 4     ; 2 uses
  %i.ajw = icmp eq i64 %index.next1875, %n.vec1860
  br i1 %i.ajw, label %middle.block1876, label %vector.body1861, !llvm.loop !525

middle.block1876:                                 ; preds = %vector.body1861
  %cmp.n1877 = icmp eq i64 %i.ajm, %n.vec1860
  br i1 %cmp.n1877, label %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i547, label %.lr.ph.i.i.i.i.i.i536.preheader2315

.lr.ph.i.i.i.i.i.i536.preheader2315:              ; preds = %vector.memcheck1850, %.lr.ph.i.i.i.i.i.i536.preheader, %middle.block1876
  %.011.i.i.i.i.i.i537.ph = phi ptr [ %i.aji, %vector.memcheck1850 ], [ %i.aji, %.lr.ph.i.i.i.i.i.i536.preheader ], [ %i.ajs, %middle.block1876 ]
  %.0810.i.i.i.i.i.i538.ph = phi ptr [ %i.aix, %vector.memcheck1850 ], [ %i.aix, %.lr.ph.i.i.i.i.i.i536.preheader ], [ %i.ajt, %middle.block1876 ]
  br label %.lr.ph.i.i.i.i.i.i536

.lr.ph.i.i.i.i.i.i536:                            ; preds = %.lr.ph.i.i.i.i.i.i536.preheader2315, %.lr.ph.i.i.i.i.i.i536
  %.011.i.i.i.i.i.i537 = phi ptr [ %i.akc, %.lr.ph.i.i.i.i.i.i536 ], [ %.011.i.i.i.i.i.i537.ph, %.lr.ph.i.i.i.i.i.i536.preheader2315 ] ; 3 uses
  %.0810.i.i.i.i.i.i538 = phi ptr [ %i.akb, %.lr.ph.i.i.i.i.i.i536 ], [ %.0810.i.i.i.i.i.i538.ph, %.lr.ph.i.i.i.i.i.i536.preheader2315 ] ; 3 uses
  %i.ajx = load i32, ptr %.0810.i.i.i.i.i.i538, align 4, !tbaa !236
  store i32 %i.ajx, ptr %.011.i.i.i.i.i.i537, align 4, !tbaa !4
  %i.ajy = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i537, i64 4
  %i.ajz = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i538, i64 4
  %i.aka = load i32, ptr %i.ajz, align 4, !tbaa !236
  store i32 %i.aka, ptr %i.ajy, align 4, !tbaa !4
  %i.akb = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i538, i64 8 ; 2 uses
  %i.akc = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i537, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i539 = icmp eq ptr %i.akb, %i.ait
  br i1 %.not.i.i.i.i.i.i539, label %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i547, label %.lr.ph.i.i.i.i.i.i536, !llvm.loop !526

_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i547: ; preds = %.lr.ph.i.i.i.i.i.i536, %middle.block1876, %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i532
  %.0.lcssa.i.i.i.i.i.i541 = phi ptr [ %i.aji, %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i532 ], [ %i.ajs, %middle.block1876 ], [ %i.akc, %.lr.ph.i.i.i.i.i.i536 ]
  %i.akd = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i541, i64 8
  %.not.i25.i549 = icmp eq ptr %i.aix, null
  br i1 %.not.i25.i549, label %_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit550, label %bb.cj

bb.cj:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i547
  call void @_ZdlPvm(ptr noundef nonnull %i.aix, i64 noundef %i.aja) #48
  br label %_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit550

_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit550: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i547, %bb.cj
  store ptr %i.aji, ptr %i.oo, align 8, !tbaa !267
  store ptr %i.akd, ptr %i.os, align 16, !tbaa !264
  %i.ake = getelementptr inbounds nuw [8 x i8], ptr %i.aji, i64 %i.ajg
  store ptr %i.ake, ptr %i.ou, align 8, !tbaa !268
  br label %_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit.i128

_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit.i128: ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit550, %bb.cg
  %i.akf = load ptr, ptr %i.qg, align 16, !tbaa !276 ; 6 uses
  %i.akg = load ptr, ptr %i.qi, align 8, !tbaa !280
  %.not.i4.i129 = icmp eq ptr %i.akf, %i.akg
  br i1 %.not.i4.i129, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit.i128
  store <2 x double> <double 5.000000e-01, double 1.000000e+00>, ptr %i.akf, align 8, !tbaa !247
  %i.akh = getelementptr inbounds nuw i8, ptr %i.akf, i64 16
  store ptr %i.akh, ptr %i.qg, align 16, !tbaa !276
  br label %_ZN18CanonicalCenteringILi2EE8addValueERSt6vectorI3LocILi2EESaIS3_EERS1_I6VectorILi2Ed4FullESaIS9_EERKS3_RKS9_.exit130

bb.cl:                                            ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit.i128
  %i.aki = load ptr, ptr %i.oq, align 8, !tbaa !279 ; 11 uses
  %i.akj = ptrtoint ptr %i.akf to i64             ; 3 uses
  %i.akk = ptrtoint ptr %i.aki to i64             ; 3 uses
  %i.akl = sub i64 %i.akj, %i.akk                 ; 4 uses
  %i.akm = icmp eq i64 %i.akl, 9223372036854775792
  br i1 %i.akm, label %bb.cm, label %_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i513

bb.cm:                                            ; preds = %bb.cl
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.189) #46
  unreachable

_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i513: ; preds = %bb.cl
  %i.akn = ashr exact i64 %i.akl, 4               ; 3 uses
  %.sroa.speculated.i.i514 = call i64 @llvm.umax.i64(i64 %i.akn, i64 1)
  %i.ako = add nsw i64 %.sroa.speculated.i.i514, %i.akn ; 2 uses
  %i.akp = icmp ult i64 %i.ako, %i.akn
  %i.akq = call i64 @llvm.umin.i64(i64 %i.ako, i64 576460752303423487)
  %i.akr = select i1 %i.akp, i64 576460752303423487, i64 %i.akq ; 3 uses
  %.not.i.i515 = icmp ne i64 %i.akr, 0
  call void @llvm.assume(i1 %.not.i.i515)
  %i.aks = shl nuw nsw i64 %i.akr, 4
  %i.akt = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aks) #45 ; 11 uses
  %i.aku = getelementptr inbounds nuw i8, ptr %i.akt, i64 %i.akl
  store <2 x double> <double 5.000000e-01, double 1.000000e+00>, ptr %i.aku, align 8, !tbaa !247
  %.not9.i.i.i.i.i.i516 = icmp eq ptr %i.aki, %i.akf
  br i1 %.not9.i.i.i.i.i.i516, label %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i528, label %.lr.ph.i.i.i.i.i.i517.preheader

.lr.ph.i.i.i.i.i.i517.preheader:                  ; preds = %_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i513
  %59 = sub i64 %i.akj, %i.akk
  %60 = add i64 %59, -16                          ; 2 uses
  %i.akv = lshr i64 %60, 4
  %i.akw = add nuw nsw i64 %i.akv, 1              ; 2 uses
  %min.iters.check1887 = icmp ult i64 %60, 240
  br i1 %min.iters.check1887, label %.lr.ph.i.i.i.i.i.i517.preheader2313, label %vector.memcheck1880

vector.memcheck1880:                              ; preds = %.lr.ph.i.i.i.i.i.i517.preheader
  %i.akx = add i64 %i.akj, -16
  %i.aky = sub i64 %i.akx, %i.akk
  %i.akz = and i64 %i.aky, -16
  %i.ala = add i64 %i.akz, 16                     ; 2 uses
  %scevgep1881 = getelementptr i8, ptr %i.akt, i64 %i.ala
  %scevgep1882 = getelementptr i8, ptr %i.aki, i64 %i.ala
  %bound01883 = icmp ult ptr %i.akt, %scevgep1882
  %bound11884 = icmp ult ptr %i.aki, %scevgep1881
  %found.conflict1885 = and i1 %bound01883, %bound11884
  br i1 %found.conflict1885, label %.lr.ph.i.i.i.i.i.i517.preheader2313, label %vector.ph1888

vector.ph1888:                                    ; preds = %vector.memcheck1880
  %n.vec1890 = and i64 %i.akw, 2305843009213693950 ; 3 uses
  %i.alb = shl i64 %n.vec1890, 4                  ; 2 uses
  %i.alc = getelementptr i8, ptr %i.akt, i64 %i.alb ; 2 uses
  %i.ald = getelementptr i8, ptr %i.aki, i64 %i.alb
  br label %vector.body1891

vector.body1891:                                  ; preds = %vector.body1891, %vector.ph1888
  %index1892 = phi i64 [ 0, %vector.ph1888 ], [ %index.next1899, %vector.body1891 ] ; 2 uses
  %i.ale = shl i64 %index1892, 4                  ; 3 uses
  %i.alf = or disjoint i64 %i.ale, 16             ; 2 uses
  %next.gep1893 = getelementptr i8, ptr %i.akt, i64 %i.ale
  %next.gep1894 = getelementptr i8, ptr %i.akt, i64 %i.alf
  %next.gep1895 = getelementptr i8, ptr %i.aki, i64 %i.ale
  %next.gep1896 = getelementptr i8, ptr %i.aki, i64 %i.alf
  %wide.load1897 = load <2 x double>, ptr %next.gep1895, align 8, !tbaa !247, !alias.scope !527
  %wide.load1898 = load <2 x double>, ptr %next.gep1896, align 8, !tbaa !247, !alias.scope !527
  store <2 x double> %wide.load1897, ptr %next.gep1893, align 8, !tbaa !247, !alias.scope !530, !noalias !527
  store <2 x double> %wide.load1898, ptr %next.gep1894, align 8, !tbaa !247, !alias.scope !530, !noalias !527
  %index.next1899 = add nuw i64 %index1892, 2     ; 2 uses
  %i.alg = icmp eq i64 %index.next1899, %n.vec1890
  br i1 %i.alg, label %middle.block1900, label %vector.body1891, !llvm.loop !532

middle.block1900:                                 ; preds = %vector.body1891
  %cmp.n1901 = icmp eq i64 %i.akw, %n.vec1890
  br i1 %cmp.n1901, label %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i528, label %.lr.ph.i.i.i.i.i.i517.preheader2313

.lr.ph.i.i.i.i.i.i517.preheader2313:              ; preds = %vector.memcheck1880, %.lr.ph.i.i.i.i.i.i517.preheader, %middle.block1900
  %.011.i.i.i.i.i.i518.ph = phi ptr [ %i.akt, %vector.memcheck1880 ], [ %i.akt, %.lr.ph.i.i.i.i.i.i517.preheader ], [ %i.alc, %middle.block1900 ]
  %.0810.i.i.i.i.i.i519.ph = phi ptr [ %i.aki, %vector.memcheck1880 ], [ %i.aki, %.lr.ph.i.i.i.i.i.i517.preheader ], [ %i.ald, %middle.block1900 ]
  br label %.lr.ph.i.i.i.i.i.i517

.lr.ph.i.i.i.i.i.i517:                            ; preds = %.lr.ph.i.i.i.i.i.i517.preheader2313, %.lr.ph.i.i.i.i.i.i517
  %.011.i.i.i.i.i.i518 = phi ptr [ %i.alm, %.lr.ph.i.i.i.i.i.i517 ], [ %.011.i.i.i.i.i.i518.ph, %.lr.ph.i.i.i.i.i.i517.preheader2313 ] ; 3 uses
  %.0810.i.i.i.i.i.i519 = phi ptr [ %i.all, %.lr.ph.i.i.i.i.i.i517 ], [ %.0810.i.i.i.i.i.i519.ph, %.lr.ph.i.i.i.i.i.i517.preheader2313 ] ; 3 uses
  %i.alh = load double, ptr %.0810.i.i.i.i.i.i519, align 8, !tbaa !247
  store double %i.alh, ptr %.011.i.i.i.i.i.i518, align 8, !tbaa !247
  %i.ali = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i518, i64 8
  %i.alj = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i519, i64 8
  %i.alk = load double, ptr %i.alj, align 8, !tbaa !247
  store double %i.alk, ptr %i.ali, align 8, !tbaa !247
  %i.all = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i519, i64 16 ; 2 uses
  %i.alm = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i518, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i520 = icmp eq ptr %i.all, %i.akf
  br i1 %.not.i.i.i.i.i.i520, label %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i528, label %.lr.ph.i.i.i.i.i.i517, !llvm.loop !533

_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i528: ; preds = %.lr.ph.i.i.i.i.i.i517, %middle.block1900, %_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i513
  %.0.lcssa.i.i.i.i.i.i522 = phi ptr [ %i.akt, %_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i513 ], [ %i.alc, %middle.block1900 ], [ %i.alm, %.lr.ph.i.i.i.i.i.i517 ]
  %i.aln = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i522, i64 16
  %.not.i25.i530 = icmp eq ptr %i.aki, null
  br i1 %.not.i25.i530, label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit531, label %bb.cn

bb.cn:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i528
  call void @_ZdlPvm(ptr noundef nonnull %i.aki, i64 noundef %i.akl) #48
  br label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit531

_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit531: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i528, %bb.cn
  store ptr %i.akt, ptr %i.oq, align 8, !tbaa !279
  store ptr %i.aln, ptr %i.qg, align 16, !tbaa !276
  %i.alo = getelementptr inbounds nuw [16 x i8], ptr %i.akt, i64 %i.akr
  store ptr %i.alo, ptr %i.qi, align 8, !tbaa !280
  br label %_ZN18CanonicalCenteringILi2EE8addValueERSt6vectorI3LocILi2EESaIS3_EERS1_I6VectorILi2Ed4FullESaIS9_EERKS3_RKS9_.exit130

_ZN18CanonicalCenteringILi2EE8addValueERSt6vectorI3LocILi2EESaIS3_EERS1_I6VectorILi2Ed4FullESaIS9_EERKS3_RKS9_.exit130: ; preds = %bb.ck, %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit531
  %i.alp = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.alq = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  %i.alr = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.als = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.alt = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  %i.alu = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.alv = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 3 uses
  %i.alw = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.alx = getelementptr inbounds nuw i8, ptr %11, i64 4
  %i.aly = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 5 uses
  %i.alz = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.ama = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 3 uses
  %i.amb = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 5 uses
  %i.amc = getelementptr inbounds nuw i8, ptr %11, i64 40
  %i.amd = getelementptr inbounds nuw i8, ptr %11, i64 48 ; 3 uses
  %i.ame = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.amf = getelementptr inbounds nuw i8, ptr %14, i64 32 ; 2 uses
  %i.amg = getelementptr inbounds nuw i8, ptr %14, i64 48
  %i.amh = getelementptr inbounds nuw i8, ptr %14, i64 24
  br label %bb.cw

bb.co:                                            ; preds = %.preheader867.preheader
  store ptr %i.aac, ptr %i.fi, align 8, !tbaa !264
  br label %_ZNSt6vectorI3LocILi2EESaIS1_EE5clearEv.exit

_ZNSt6vectorI3LocILi2EESaIS1_EE5clearEv.exit:     ; preds = %.preheader867.preheader, %bb.co
  %i.ami = phi ptr [ %i.aad, %.preheader867.preheader ], [ %i.aac, %bb.co ] ; 7 uses
  %i.amj = load ptr, ptr %3, align 16, !tbaa !279 ; 3 uses
  %i.amk = load ptr, ptr %i.gw, align 8, !tbaa !276 ; 2 uses
  %.not.i.i132 = icmp eq ptr %i.amk, %i.amj
  br i1 %.not.i.i132, label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE5clearEv.exit, label %bb.cp

bb.cp:                                            ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EE5clearEv.exit
  store ptr %i.amj, ptr %i.gw, align 8, !tbaa !276
  br label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE5clearEv.exit

_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE5clearEv.exit: ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EE5clearEv.exit, %bb.cp
  %i.aml = phi ptr [ %i.amk, %_ZNSt6vectorI3LocILi2EESaIS1_EE5clearEv.exit ], [ %i.amj, %bb.cp ] ; 2 uses
  %i.amm = load ptr, ptr %i.ii, align 8, !tbaa !267 ; 2 uses
  %i.amn = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 4 uses
  %i.amo = load ptr, ptr %i.amn, align 16, !tbaa !264
  %.not.i.i131.1 = icmp eq ptr %i.amo, %i.amm
  br i1 %.not.i.i131.1, label %_ZNSt6vectorI3LocILi2EESaIS1_EE5clearEv.exit.1, label %bb.cq

bb.cq:                                            ; preds = %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE5clearEv.exit
  store ptr %i.amm, ptr %i.amn, align 16, !tbaa !264
  br label %_ZNSt6vectorI3LocILi2EESaIS1_EE5clearEv.exit.1

_ZNSt6vectorI3LocILi2EESaIS1_EE5clearEv.exit.1:   ; preds = %bb.cq, %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE5clearEv.exit
  %i.amp = load ptr, ptr %i.ik, align 8, !tbaa !279 ; 2 uses
  %i.amq = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 4 uses
  %i.amr = load ptr, ptr %i.amq, align 16, !tbaa !276
  %.not.i.i132.1 = icmp eq ptr %i.amr, %i.amp
  br i1 %.not.i.i132.1, label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE5clearEv.exit.1, label %bb.cr

bb.cr:                                            ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EE5clearEv.exit.1
  store ptr %i.amp, ptr %i.amq, align 16, !tbaa !276
  br label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE5clearEv.exit.1

_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE5clearEv.exit.1: ; preds = %bb.cr, %_ZNSt6vectorI3LocILi2EESaIS1_EE5clearEv.exit.1
  %i.ams = load ptr, ptr %i.lm, align 16, !tbaa !267 ; 2 uses
  %i.amt = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 4 uses
  %i.amu = load ptr, ptr %i.amt, align 8, !tbaa !264
  %.not.i.i131.1988 = icmp eq ptr %i.amu, %i.ams
  br i1 %.not.i.i131.1988, label %_ZNSt6vectorI3LocILi2EESaIS1_EE5clearEv.exit.1990, label %bb.cs

bb.cs:                                            ; preds = %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE5clearEv.exit.1
  store ptr %i.ams, ptr %i.amt, align 8, !tbaa !264
  br label %_ZNSt6vectorI3LocILi2EESaIS1_EE5clearEv.exit.1990

_ZNSt6vectorI3LocILi2EESaIS1_EE5clearEv.exit.1990: ; preds = %bb.cs, %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE5clearEv.exit.1
  %i.amv = load ptr, ptr %i.ln, align 16, !tbaa !279 ; 2 uses
  %i.amw = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 4 uses
  %i.amx = load ptr, ptr %i.amw, align 8, !tbaa !276
  %.not.i.i132.1989 = icmp eq ptr %i.amx, %i.amv
  br i1 %.not.i.i132.1989, label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE5clearEv.exit.1991, label %bb.ct

bb.ct:                                            ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EE5clearEv.exit.1990
  store ptr %i.amv, ptr %i.amw, align 8, !tbaa !276
  br label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE5clearEv.exit.1991

_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE5clearEv.exit.1991: ; preds = %bb.ct, %_ZNSt6vectorI3LocILi2EESaIS1_EE5clearEv.exit.1990
  %i.amy = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.amz = load ptr, ptr %i.amy, align 8, !tbaa !267 ; 2 uses
  %i.ana = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 4 uses
  %i.anb = load ptr, ptr %i.ana, align 16, !tbaa !264
  %.not.i.i131.1.1 = icmp eq ptr %i.anb, %i.amz
  br i1 %.not.i.i131.1.1, label %_ZNSt6vectorI3LocILi2EESaIS1_EE5clearEv.exit.1.1, label %bb.cu

bb.cu:                                            ; preds = %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE5clearEv.exit.1991
  store ptr %i.amz, ptr %i.ana, align 16, !tbaa !264
  br label %_ZNSt6vectorI3LocILi2EESaIS1_EE5clearEv.exit.1.1

_ZNSt6vectorI3LocILi2EESaIS1_EE5clearEv.exit.1.1: ; preds = %bb.cu, %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE5clearEv.exit.1991
  %i.anc = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 2 uses
  %i.and = load ptr, ptr %i.anc, align 8, !tbaa !279 ; 2 uses
  %i.ane = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 4 uses
  %i.anf = load ptr, ptr %i.ane, align 16, !tbaa !276
  %.not.i.i132.1.1 = icmp eq ptr %i.anf, %i.and
  br i1 %.not.i.i132.1.1, label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE5clearEv.exit.1.1, label %bb.cv

bb.cv:                                            ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EE5clearEv.exit.1.1
  store ptr %i.and, ptr %i.ane, align 16, !tbaa !276
  br label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE5clearEv.exit.1.1

_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE5clearEv.exit.1.1: ; preds = %bb.cv, %_ZNSt6vectorI3LocILi2EESaIS1_EE5clearEv.exit.1.1
  %i.ang = load ptr, ptr %i.fk, align 16, !tbaa !268
  %.not.i.i115 = icmp eq ptr %i.ami, %i.ang
  br i1 %.not.i.i115, label %bb.bj, label %bb.bi

bb.cw:                                            ; preds = %_ZN18CanonicalCenteringILi2EE8addValueERSt6vectorI3LocILi2EESaIS3_EERS1_I6VectorILi2Ed4FullESaIS9_EERKS3_RKS9_.exit130, %_ZN9CenteringILi2EED2Ev.exit187
  %i.anh = phi i1 [ true, %_ZN18CanonicalCenteringILi2EE8addValueERSt6vectorI3LocILi2EESaIS3_EERS1_I6VectorILi2Ed4FullESaIS9_EERKS3_RKS9_.exit130 ], [ false, %_ZN9CenteringILi2EED2Ev.exit187 ]
  %indvars.iv992.sroa.phi = phi ptr [ %3, %_ZN18CanonicalCenteringILi2EE8addValueERSt6vectorI3LocILi2EESaIS3_EERS1_I6VectorILi2Ed4FullESaIS9_EERKS3_RKS9_.exit130 ], [ %indvars.iv992.sroa.gep2353, %_ZN9CenteringILi2EED2Ev.exit187 ] ; 3 uses
  %indvars.iv992.sroa.phi2355 = phi ptr [ %2, %_ZN18CanonicalCenteringILi2EE8addValueERSt6vectorI3LocILi2EESaIS3_EERS1_I6VectorILi2Ed4FullESaIS9_EERKS3_RKS9_.exit130 ], [ %indvars.iv992.sroa.gep2357, %_ZN9CenteringILi2EED2Ev.exit187 ] ; 3 uses
  %indvars.iv992 = phi i64 [ 0, %_ZN18CanonicalCenteringILi2EE8addValueERSt6vectorI3LocILi2EESaIS3_EERS1_I6VectorILi2Ed4FullESaIS9_EERKS3_RKS9_.exit130 ], [ 1, %_ZN9CenteringILi2EED2Ev.exit187 ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #47
  %i.ani = trunc nuw nsw i64 %indvars.iv992 to i32 ; 3 uses
  call void @_ZN9CenteringILi2EEC2E13CenteringType14ContinuityTypeRKSt6vectorI3LocILi2EESaIS5_EERKS3_I6VectorILi2Ed4FullESaISC_EE(ptr noundef nonnull align 8 dereferenceable(56) %10, i32 noundef 2, i32 noundef %i.ani, ptr noundef nonnull align 8 dereferenceable(24) %indvars.iv992.sroa.phi2355, ptr noundef nonnull align 8 dereferenceable(24) %indvars.iv992.sroa.phi)
  %i.anj = load ptr, ptr @_ZN18CanonicalCenteringILi2EE17centering_table_mE, align 8, !tbaa !258
  %i.ank = getelementptr inbounds nuw i8, ptr %i.anj, i64 16
  %i.anl = load ptr, ptr %i.ank, align 8, !tbaa !260
  %i.anm = getelementptr inbounds nuw [8 x i8], ptr %i.anl, i64 %indvars.iv992
  %i.ann = load ptr, ptr %i.anm, align 8, !tbaa !262 ; 3 uses
  %i.ano = getelementptr inbounds nuw i8, ptr %i.ann, i64 56
  %i.anp = load i64, ptr %10, align 8
  store i64 %i.anp, ptr %i.ano, align 8
  %i.anq = getelementptr inbounds nuw i8, ptr %i.ann, i64 64
  %i.anr = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI3LocILi2EESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.anq, ptr noundef nonnull align 8 dereferenceable(24) %i.alp) ; 0 uses
  %i.ans = getelementptr inbounds nuw i8, ptr %i.ann, i64 88
  %i.ant = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.ans, ptr noundef nonnull align 8 dereferenceable(24) %i.alq) ; 0 uses
  %i.anu = load ptr, ptr %i.alq, align 8, !tbaa !279 ; 3 uses
  %.not.i.i.i.i133 = icmp eq ptr %i.anu, null
  br i1 %.not.i.i.i.i133, label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit.i134, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.anv = load ptr, ptr %i.alr, align 8, !tbaa !280
  %i.anw = ptrtoint ptr %i.anv to i64
  %i.anx = ptrtoint ptr %i.anu to i64
  %i.any = sub i64 %i.anw, %i.anx
  call void @_ZdlPvm(ptr noundef nonnull %i.anu, i64 noundef %i.any) #48
  br label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit.i134

_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit.i134: ; preds = %bb.cx, %bb.cw
  %i.anz = load ptr, ptr %i.alp, align 8, !tbaa !267 ; 3 uses
  %.not.i.i.i1.i135 = icmp eq ptr %i.anz, null
  br i1 %.not.i.i.i1.i135, label %_ZN9CenteringILi2EED2Ev.exit136, label %bb.cy

bb.cy:                                            ; preds = %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit.i134
  %i.aoa = load ptr, ptr %i.als, align 8, !tbaa !268
  %i.aob = ptrtoint ptr %i.aoa to i64
  %i.aoc = ptrtoint ptr %i.anz to i64
  %i.aod = sub i64 %i.aob, %i.aoc
  call void @_ZdlPvm(ptr noundef nonnull %i.anz, i64 noundef %i.aod) #48
  br label %_ZN9CenteringILi2EED2Ev.exit136

_ZN9CenteringILi2EED2Ev.exit136:                  ; preds = %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit.i134, %bb.cy
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #47
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #47
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #47
  %i.aoe = getelementptr inbounds nuw [24 x i8], ptr %i.lm, i64 %indvars.iv992 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !534)
  %i.aof = getelementptr inbounds nuw i8, ptr %indvars.iv992.sroa.phi2355, i64 8
  %i.aog = load ptr, ptr %i.aof, align 8, !tbaa !264, !noalias !534 ; 3 uses
  %i.aoh = load ptr, ptr %indvars.iv992.sroa.phi2355, align 8, !tbaa !267, !noalias !534 ; 9 uses
  %i.aoi = ptrtoint ptr %i.aog to i64             ; 3 uses
  %i.aoj = ptrtoint ptr %i.aoh to i64             ; 3 uses
  %i.aok = sub i64 %i.aoi, %i.aoj                 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false), !alias.scope !534
  %.not.i.i.i.i.i137 = icmp eq ptr %i.aog, %i.aoh
  br i1 %.not.i.i.i.i.i137, label %_ZNSt12_Vector_baseI3LocILi2EESaIS1_EEC2EmRKS2_.exit.i.thread.i145, label %bb.cz

_ZNSt12_Vector_baseI3LocILi2EESaIS1_EEC2EmRKS2_.exit.i.thread.i145: ; preds = %_ZN9CenteringILi2EED2Ev.exit136
  %i.aol = getelementptr inbounds nuw i8, ptr null, i64 %i.aok
  store i64 0, ptr %12, align 8
  store ptr %i.aol, ptr %i.alt, align 8, !tbaa !268, !alias.scope !534
  br label %_ZN18CanonicalCenteringILi2EE7combineISt6vectorI3LocILi2EESaIS4_EEEET_RKS7_S9_.exit146

bb.cz:                                            ; preds = %_ZN9CenteringILi2EED2Ev.exit136
  %i.aom = icmp ugt i64 %i.aok, 9223372036854775800
  br i1 %i.aom, label %bb.da, label %_ZNSt12_Vector_baseI3LocILi2EESaIS1_EEC2EmRKS2_.exit.i.i138, !prof !44

bb.da:                                            ; preds = %bb.cz
  call void @_ZSt28__throw_bad_array_new_lengthv() #46, !noalias !534
  unreachable

_ZNSt12_Vector_baseI3LocILi2EESaIS1_EEC2EmRKS2_.exit.i.i138: ; preds = %bb.cz
  %i.aon = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aok) #45, !noalias !534 ; 11 uses
  store ptr %i.aon, ptr %12, align 8, !tbaa !267, !alias.scope !534
  %i.aoo = getelementptr inbounds nuw i8, ptr %i.aon, i64 %i.aok
  store ptr %i.aoo, ptr %i.alt, align 8, !tbaa !268, !alias.scope !534
  %61 = sub i64 %i.aoi, %i.aoj
  %62 = add i64 %61, -8                           ; 2 uses
  %i.aop = lshr i64 %62, 3
  %i.aoq = add nuw nsw i64 %i.aop, 1              ; 2 uses
  %min.iters.check1997 = icmp ult i64 %62, 40
  br i1 %min.iters.check1997, label %.lr.ph.i.i.i.i.i.i139.preheader, label %vector.memcheck1988

vector.memcheck1988:                              ; preds = %_ZNSt12_Vector_baseI3LocILi2EESaIS1_EEC2EmRKS2_.exit.i.i138
  %scevgep1989 = getelementptr i8, ptr %i.aon, i64 8
  %i.aor = add i64 %i.aoi, -8
  %i.aos = sub i64 %i.aor, %i.aoj
  %i.aot = and i64 %i.aos, -8                     ; 2 uses
  %scevgep1990 = getelementptr i8, ptr %scevgep1989, i64 %i.aot
  %scevgep1991 = getelementptr i8, ptr %i.aoh, i64 8
  %scevgep1992 = getelementptr i8, ptr %scevgep1991, i64 %i.aot
  %bound01993 = icmp ult ptr %i.aon, %scevgep1992
  %bound11994 = icmp ult ptr %i.aoh, %scevgep1990
  %found.conflict1995 = and i1 %bound01993, %bound11994
  br i1 %found.conflict1995, label %.lr.ph.i.i.i.i.i.i139.preheader, label %vector.ph1998

vector.ph1998:                                    ; preds = %vector.memcheck1988
  %n.vec2000 = and i64 %i.aoq, 4611686018427387900 ; 3 uses
  %i.aou = shl i64 %n.vec2000, 3                  ; 2 uses
  %i.aov = getelementptr i8, ptr %i.aon, i64 %i.aou ; 2 uses
  %i.aow = getelementptr i8, ptr %i.aoh, i64 %i.aou
  br label %vector.body2001

vector.body2001:                                  ; preds = %vector.body2001, %vector.ph1998
  %index2002 = phi i64 [ 0, %vector.ph1998 ], [ %index.next2015, %vector.body2001 ] ; 2 uses
  %i.aox = shl i64 %index2002, 3                  ; 3 uses
  %i.aoy = or disjoint i64 %i.aox, 16             ; 2 uses
  %next.gep2003 = getelementptr i8, ptr %i.aon, i64 %i.aox
  %next.gep2004 = getelementptr i8, ptr %i.aon, i64 %i.aoy
  %next.gep2005 = getelementptr i8, ptr %i.aoh, i64 %i.aox
  %next.gep2006 = getelementptr i8, ptr %i.aoh, i64 %i.aoy
  %wide.vec2007 = load <4 x i32>, ptr %next.gep2005, align 4, !tbaa !236, !alias.scope !537, !noalias !534
  %wide.vec2010 = load <4 x i32>, ptr %next.gep2006, align 4, !tbaa !236, !alias.scope !537, !noalias !534
  store <4 x i32> %wide.vec2007, ptr %next.gep2003, align 4, !tbaa !4, !alias.scope !540, !noalias !534
  store <4 x i32> %wide.vec2010, ptr %next.gep2004, align 4, !tbaa !4, !alias.scope !540, !noalias !534
  %index.next2015 = add nuw i64 %index2002, 4     ; 2 uses
  %i.aoz = icmp eq i64 %index.next2015, %n.vec2000
  br i1 %i.aoz, label %middle.block2016, label %vector.body2001, !llvm.loop !542

middle.block2016:                                 ; preds = %vector.body2001
  %cmp.n2017 = icmp eq i64 %i.aoq, %n.vec2000
  br i1 %cmp.n2017, label %_ZN18CanonicalCenteringILi2EE7combineISt6vectorI3LocILi2EESaIS4_EEEET_RKS7_S9_.exit146, label %.lr.ph.i.i.i.i.i.i139.preheader

.lr.ph.i.i.i.i.i.i139.preheader:                  ; preds = %vector.memcheck1988, %_ZNSt12_Vector_baseI3LocILi2EESaIS1_EEC2EmRKS2_.exit.i.i138, %middle.block2016
  %.09.i.i.i.i.i.i140.ph = phi ptr [ %i.aon, %vector.memcheck1988 ], [ %i.aon, %_ZNSt12_Vector_baseI3LocILi2EESaIS1_EEC2EmRKS2_.exit.i.i138 ], [ %i.aov, %middle.block2016 ]
  %.sroa.04.08.i.i.i.i.i.i141.ph = phi ptr [ %i.aoh, %vector.memcheck1988 ], [ %i.aoh, %_ZNSt12_Vector_baseI3LocILi2EESaIS1_EEC2EmRKS2_.exit.i.i138 ], [ %i.aow, %middle.block2016 ]
  br label %.lr.ph.i.i.i.i.i.i139

.lr.ph.i.i.i.i.i.i139:                            ; preds = %.lr.ph.i.i.i.i.i.i139.preheader, %.lr.ph.i.i.i.i.i.i139
  %.09.i.i.i.i.i.i140 = phi ptr [ %i.apf, %.lr.ph.i.i.i.i.i.i139 ], [ %.09.i.i.i.i.i.i140.ph, %.lr.ph.i.i.i.i.i.i139.preheader ] ; 3 uses
  %.sroa.04.08.i.i.i.i.i.i141 = phi ptr [ %i.ape, %.lr.ph.i.i.i.i.i.i139 ], [ %.sroa.04.08.i.i.i.i.i.i141.ph, %.lr.ph.i.i.i.i.i.i139.preheader ] ; 3 uses
  %i.apa = load i32, ptr %.sroa.04.08.i.i.i.i.i.i141, align 4, !tbaa !236, !noalias !534
  store i32 %i.apa, ptr %.09.i.i.i.i.i.i140, align 4, !tbaa !4, !noalias !534
  %i.apb = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i140, i64 4
  %i.apc = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i141, i64 4
  %i.apd = load i32, ptr %i.apc, align 4, !tbaa !236, !noalias !534
  store i32 %i.apd, ptr %i.apb, align 4, !tbaa !4, !noalias !534
  %i.ape = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i141, i64 8 ; 2 uses
  %i.apf = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i140, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i142 = icmp eq ptr %i.ape, %i.aog
  br i1 %.not.i.i.i.i.i.i142, label %_ZN18CanonicalCenteringILi2EE7combineISt6vectorI3LocILi2EESaIS4_EEEET_RKS7_S9_.exit146, label %.lr.ph.i.i.i.i.i.i139, !llvm.loop !543

_ZN18CanonicalCenteringILi2EE7combineISt6vectorI3LocILi2EESaIS4_EEEET_RKS7_S9_.exit146: ; preds = %.lr.ph.i.i.i.i.i.i139, %middle.block2016, %_ZNSt12_Vector_baseI3LocILi2EESaIS1_EEC2EmRKS2_.exit.i.thread.i145
  %i.apg = phi ptr [ null, %_ZNSt12_Vector_baseI3LocILi2EESaIS1_EEC2EmRKS2_.exit.i.thread.i145 ], [ %i.aon, %middle.block2016 ], [ %i.aon, %.lr.ph.i.i.i.i.i.i139 ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.i144 = phi ptr [ null, %_ZNSt12_Vector_baseI3LocILi2EESaIS1_EEC2EmRKS2_.exit.i.thread.i145 ], [ %i.aov, %middle.block2016 ], [ %i.apf, %.lr.ph.i.i.i.i.i.i139 ] ; 2 uses
  store ptr %.0.lcssa.i.i.i.i.i.i144, ptr %i.alu, align 8, !tbaa !264, !alias.scope !534
  %i.aph = load ptr, ptr %i.aoe, align 8, !tbaa !449, !noalias !534
  %i.api = getelementptr inbounds nuw i8, ptr %i.aoe, i64 8
  %i.apj = load ptr, ptr %i.api, align 8, !tbaa !449, !noalias !534
  %i.apk = ptrtoint ptr %.0.lcssa.i.i.i.i.i.i144 to i64
  %i.apl = ptrtoint ptr %i.apg to i64
  %i.apm = sub i64 %i.apk, %i.apl
  %i.apn = getelementptr inbounds i8, ptr %i.apg, i64 %i.apm
  call void @_ZNSt6vectorI3LocILi2EESaIS1_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEvNS6_IPS1_S3_EET_SC_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr %i.apn, ptr %i.aph, ptr %i.apj)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #47
  %i.apo = getelementptr inbounds nuw [24 x i8], ptr %i.ln, i64 %indvars.iv992 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !544)
  %i.app = getelementptr inbounds nuw i8, ptr %indvars.iv992.sroa.phi, i64 8
  %i.apq = load ptr, ptr %i.app, align 8, !tbaa !276, !noalias !544 ; 3 uses
  %i.apr = load ptr, ptr %indvars.iv992.sroa.phi, align 8, !tbaa !279, !noalias !544 ; 9 uses
  %i.aps = ptrtoint ptr %i.apq to i64             ; 3 uses
  %i.apt = ptrtoint ptr %i.apr to i64             ; 3 uses
  %i.apu = sub i64 %i.aps, %i.apt                 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false), !alias.scope !544
  %.not.i.i.i.i.i147 = icmp eq ptr %i.apq, %i.apr
  br i1 %.not.i.i.i.i.i147, label %_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EEC2EmRKS3_.exit.i.thread.i154, label %bb.db

_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EEC2EmRKS3_.exit.i.thread.i154: ; preds = %_ZN18CanonicalCenteringILi2EE7combineISt6vectorI3LocILi2EESaIS4_EEEET_RKS7_S9_.exit146
  %i.apv = getelementptr inbounds nuw i8, ptr null, i64 %i.apu
  store i64 0, ptr %13, align 8
  store ptr %i.apv, ptr %i.alv, align 8, !tbaa !280, !alias.scope !544
  br label %_ZN18CanonicalCenteringILi2EE7combineISt6vectorI6VectorILi2Ed4FullESaIS5_EEEET_RKS8_SA_.exit155

bb.db:                                            ; preds = %_ZN18CanonicalCenteringILi2EE7combineISt6vectorI3LocILi2EESaIS4_EEEET_RKS7_S9_.exit146
  %i.apw = icmp ugt i64 %i.apu, 9223372036854775792
  br i1 %i.apw, label %bb.dc, label %_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i148, !prof !44

bb.dc:                                            ; preds = %bb.db
  call void @_ZSt28__throw_bad_array_new_lengthv() #46, !noalias !544
  unreachable

_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i148: ; preds = %bb.db
  %i.apx = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.apu) #45, !noalias !544 ; 11 uses
  store ptr %i.apx, ptr %13, align 8, !tbaa !279, !alias.scope !544
  %i.apy = getelementptr inbounds nuw i8, ptr %i.apx, i64 %i.apu
  store ptr %i.apy, ptr %i.alv, align 8, !tbaa !280, !alias.scope !544
  %63 = sub i64 %i.aps, %i.apt
  %64 = add i64 %63, -16                          ; 2 uses
  %i.apz = lshr i64 %64, 4
  %i.aqa = add nuw nsw i64 %i.apz, 1              ; 2 uses
  %min.iters.check1971 = icmp ult i64 %64, 80
  br i1 %min.iters.check1971, label %.lr.ph.i.i.i.i.i.i149.preheader, label %vector.memcheck1962

vector.memcheck1962:                              ; preds = %_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i148
  %scevgep1963 = getelementptr i8, ptr %i.apx, i64 16
  %i.aqb = add i64 %i.aps, -16
  %i.aqc = sub i64 %i.aqb, %i.apt
  %i.aqd = and i64 %i.aqc, -16                    ; 2 uses
  %scevgep1964 = getelementptr i8, ptr %scevgep1963, i64 %i.aqd
  %scevgep1965 = getelementptr i8, ptr %i.apr, i64 16
  %scevgep1966 = getelementptr i8, ptr %scevgep1965, i64 %i.aqd
  %bound01967 = icmp ult ptr %i.apx, %scevgep1966
  %bound11968 = icmp ult ptr %i.apr, %scevgep1964
  %found.conflict1969 = and i1 %bound01967, %bound11968
  br i1 %found.conflict1969, label %.lr.ph.i.i.i.i.i.i149.preheader, label %vector.ph1972

vector.ph1972:                                    ; preds = %vector.memcheck1962
  %n.vec1974 = and i64 %i.aqa, 2305843009213693950 ; 3 uses
  %i.aqe = shl i64 %n.vec1974, 4                  ; 2 uses
  %i.aqf = getelementptr i8, ptr %i.apx, i64 %i.aqe ; 2 uses
  %i.aqg = getelementptr i8, ptr %i.apr, i64 %i.aqe
  br label %vector.body1975

vector.body1975:                                  ; preds = %vector.body1975, %vector.ph1972
  %index1976 = phi i64 [ 0, %vector.ph1972 ], [ %index.next1983, %vector.body1975 ] ; 2 uses
  %i.aqh = shl i64 %index1976, 4                  ; 3 uses
  %i.aqi = or disjoint i64 %i.aqh, 16             ; 2 uses
  %next.gep1977 = getelementptr i8, ptr %i.apx, i64 %i.aqh
  %next.gep1978 = getelementptr i8, ptr %i.apx, i64 %i.aqi
  %next.gep1979 = getelementptr i8, ptr %i.apr, i64 %i.aqh
  %next.gep1980 = getelementptr i8, ptr %i.apr, i64 %i.aqi
  %wide.load1981 = load <2 x double>, ptr %next.gep1979, align 8, !tbaa !247, !alias.scope !547, !noalias !544
  %wide.load1982 = load <2 x double>, ptr %next.gep1980, align 8, !tbaa !247, !alias.scope !547, !noalias !544
  store <2 x double> %wide.load1981, ptr %next.gep1977, align 8, !tbaa !247, !alias.scope !550, !noalias !552
  store <2 x double> %wide.load1982, ptr %next.gep1978, align 8, !tbaa !247, !alias.scope !550, !noalias !552
  %index.next1983 = add nuw i64 %index1976, 2     ; 2 uses
  %i.aqj = icmp eq i64 %index.next1983, %n.vec1974
  br i1 %i.aqj, label %middle.block1984, label %vector.body1975, !llvm.loop !553

middle.block1984:                                 ; preds = %vector.body1975
  %cmp.n1985 = icmp eq i64 %i.aqa, %n.vec1974
  br i1 %cmp.n1985, label %_ZN18CanonicalCenteringILi2EE7combineISt6vectorI6VectorILi2Ed4FullESaIS5_EEEET_RKS8_SA_.exit155, label %.lr.ph.i.i.i.i.i.i149.preheader

.lr.ph.i.i.i.i.i.i149.preheader:                  ; preds = %vector.memcheck1962, %_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i148, %middle.block1984
  %.09.i.i.i.i.i.i150.ph = phi ptr [ %i.apx, %vector.memcheck1962 ], [ %i.apx, %_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i148 ], [ %i.aqf, %middle.block1984 ]
  %.sroa.04.08.i.i.i.i.i.i151.ph = phi ptr [ %i.apr, %vector.memcheck1962 ], [ %i.apr, %_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i148 ], [ %i.aqg, %middle.block1984 ]
  br label %.lr.ph.i.i.i.i.i.i149

.lr.ph.i.i.i.i.i.i149:                            ; preds = %.lr.ph.i.i.i.i.i.i149.preheader, %.lr.ph.i.i.i.i.i.i149
  %.09.i.i.i.i.i.i150 = phi ptr [ %i.aqp, %.lr.ph.i.i.i.i.i.i149 ], [ %.09.i.i.i.i.i.i150.ph, %.lr.ph.i.i.i.i.i.i149.preheader ] ; 3 uses
  %.sroa.04.08.i.i.i.i.i.i151 = phi ptr [ %i.aqo, %.lr.ph.i.i.i.i.i.i149 ], [ %.sroa.04.08.i.i.i.i.i.i151.ph, %.lr.ph.i.i.i.i.i.i149.preheader ] ; 3 uses
  %i.aqk = load double, ptr %.sroa.04.08.i.i.i.i.i.i151, align 8, !tbaa !247, !noalias !544
  store double %i.aqk, ptr %.09.i.i.i.i.i.i150, align 8, !tbaa !247, !noalias !544
  %i.aql = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i150, i64 8
  %i.aqm = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i151, i64 8
  %i.aqn = load double, ptr %i.aqm, align 8, !tbaa !247, !noalias !544
  store double %i.aqn, ptr %i.aql, align 8, !tbaa !247, !noalias !544
  %i.aqo = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i151, i64 16 ; 2 uses
  %i.aqp = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i150, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i152 = icmp eq ptr %i.aqo, %i.apq
  br i1 %.not.i.i.i.i.i.i152, label %_ZN18CanonicalCenteringILi2EE7combineISt6vectorI6VectorILi2Ed4FullESaIS5_EEEET_RKS8_SA_.exit155, label %.lr.ph.i.i.i.i.i.i149, !llvm.loop !554

_ZN18CanonicalCenteringILi2EE7combineISt6vectorI6VectorILi2Ed4FullESaIS5_EEEET_RKS8_SA_.exit155: ; preds = %.lr.ph.i.i.i.i.i.i149, %middle.block1984, %_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EEC2EmRKS3_.exit.i.thread.i154
  %i.aqq = phi ptr [ null, %_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EEC2EmRKS3_.exit.i.thread.i154 ], [ %i.apx, %middle.block1984 ], [ %i.apx, %.lr.ph.i.i.i.i.i.i149 ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.i153 = phi ptr [ null, %_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EEC2EmRKS3_.exit.i.thread.i154 ], [ %i.aqf, %middle.block1984 ], [ %i.aqp, %.lr.ph.i.i.i.i.i.i149 ] ; 2 uses
  store ptr %.0.lcssa.i.i.i.i.i.i153, ptr %i.alw, align 8, !tbaa !276, !alias.scope !544
  %i.aqr = load ptr, ptr %i.apo, align 8, !tbaa !461, !noalias !544
  %i.aqs = getelementptr inbounds nuw i8, ptr %i.apo, i64 8
  %i.aqt = load ptr, ptr %i.aqs, align 8, !tbaa !461, !noalias !544
  %i.aqu = ptrtoint ptr %.0.lcssa.i.i.i.i.i.i153 to i64
  %i.aqv = ptrtoint ptr %i.aqq to i64
  %i.aqw = sub i64 %i.aqu, %i.aqv
  %i.aqx = getelementptr inbounds i8, ptr %i.aqq, i64 %i.aqw
  call void @_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEvNS7_IPS2_S4_EET_SD_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %13, ptr %i.aqx, ptr %i.aqr, ptr %i.aqt)
  store i32 2, ptr %11, align 8, !tbaa !361
  store i32 %i.ani, ptr %i.alx, align 4, !tbaa !462
  %i.aqy = load ptr, ptr %i.alu, align 8, !tbaa !264 ; 3 uses
  %i.aqz = load ptr, ptr %12, align 8, !tbaa !267 ; 9 uses
  %i.ara = ptrtoint ptr %i.aqy to i64             ; 3 uses
  %i.arb = ptrtoint ptr %i.aqz to i64             ; 3 uses
  %i.arc = sub i64 %i.ara, %i.arb                 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aly, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i156 = icmp eq ptr %i.aqy, %i.aqz
  br i1 %.not.i.i.i.i.i156, label %_ZNSt12_Vector_baseI3LocILi2EESaIS1_EEC2EmRKS2_.exit.i.i158.thread, label %bb.dd

_ZNSt12_Vector_baseI3LocILi2EESaIS1_EEC2EmRKS2_.exit.i.i158.thread: ; preds = %_ZN18CanonicalCenteringILi2EE7combineISt6vectorI6VectorILi2Ed4FullESaIS5_EEEET_RKS8_SA_.exit155
  %i.ard = getelementptr inbounds nuw i8, ptr null, i64 %i.arc
  store i64 0, ptr %i.aly, align 8
  store ptr %i.ard, ptr %i.ama, align 8, !tbaa !268
  br label %_ZNSt6vectorI3LocILi2EESaIS1_EEC2ERKS3_.exit.i164

bb.dd:                                            ; preds = %_ZN18CanonicalCenteringILi2EE7combineISt6vectorI6VectorILi2Ed4FullESaIS5_EEEET_RKS8_SA_.exit155
  %i.are = icmp ugt i64 %i.arc, 9223372036854775800
  br i1 %i.are, label %bb.de, label %_ZNSt12_Vector_baseI3LocILi2EESaIS1_EEC2EmRKS2_.exit.i.i158, !prof !44

bb.de:                                            ; preds = %bb.dd
  call void @_ZSt28__throw_bad_array_new_lengthv() #46
  unreachable

_ZNSt12_Vector_baseI3LocILi2EESaIS1_EEC2EmRKS2_.exit.i.i158: ; preds = %bb.dd
  %i.arf = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.arc) #45 ; 9 uses
  store ptr %i.arf, ptr %i.aly, align 8, !tbaa !267
  %i.arg = getelementptr inbounds nuw i8, ptr %i.arf, i64 %i.arc
  store ptr %i.arg, ptr %i.ama, align 8, !tbaa !268
  %65 = sub i64 %i.ara, %i.arb
  %66 = add i64 %65, -8                           ; 2 uses
  %i.arh = lshr i64 %66, 3
  %i.ari = add nuw nsw i64 %i.arh, 1              ; 2 uses
  %min.iters.check1939 = icmp ult i64 %66, 40
  br i1 %min.iters.check1939, label %.lr.ph.i.i.i.i.i.i160.preheader, label %vector.memcheck1930

vector.memcheck1930:                              ; preds = %_ZNSt12_Vector_baseI3LocILi2EESaIS1_EEC2EmRKS2_.exit.i.i158
  %scevgep1931 = getelementptr i8, ptr %i.arf, i64 8
  %i.arj = add i64 %i.ara, -8
  %i.ark = sub i64 %i.arj, %i.arb
  %i.arl = and i64 %i.ark, -8                     ; 2 uses
  %scevgep1932 = getelementptr i8, ptr %scevgep1931, i64 %i.arl
  %scevgep1933 = getelementptr i8, ptr %i.aqz, i64 8
  %scevgep1934 = getelementptr i8, ptr %scevgep1933, i64 %i.arl
  %bound01935 = icmp ult ptr %i.arf, %scevgep1934
  %bound11936 = icmp ult ptr %i.aqz, %scevgep1932
  %found.conflict1937 = and i1 %bound01935, %bound11936
  br i1 %found.conflict1937, label %.lr.ph.i.i.i.i.i.i160.preheader, label %vector.ph1940

vector.ph1940:                                    ; preds = %vector.memcheck1930
  %n.vec1942 = and i64 %i.ari, 4611686018427387900 ; 3 uses
  %i.arm = shl i64 %n.vec1942, 3                  ; 2 uses
  %i.arn = getelementptr i8, ptr %i.arf, i64 %i.arm ; 2 uses
  %i.aro = getelementptr i8, ptr %i.aqz, i64 %i.arm
  br label %vector.body1943

vector.body1943:                                  ; preds = %vector.body1943, %vector.ph1940
  %index1944 = phi i64 [ 0, %vector.ph1940 ], [ %index.next1957, %vector.body1943 ] ; 2 uses
  %i.arp = shl i64 %index1944, 3                  ; 3 uses
  %i.arq = or disjoint i64 %i.arp, 16             ; 2 uses
  %next.gep1945 = getelementptr i8, ptr %i.arf, i64 %i.arp
  %next.gep1946 = getelementptr i8, ptr %i.arf, i64 %i.arq
  %next.gep1947 = getelementptr i8, ptr %i.aqz, i64 %i.arp
  %next.gep1948 = getelementptr i8, ptr %i.aqz, i64 %i.arq
  %wide.vec1949 = load <4 x i32>, ptr %next.gep1947, align 4, !tbaa !236, !alias.scope !555
  %wide.vec1952 = load <4 x i32>, ptr %next.gep1948, align 4, !tbaa !236, !alias.scope !555
  store <4 x i32> %wide.vec1949, ptr %next.gep1945, align 4, !tbaa !4, !alias.scope !558, !noalias !555
  store <4 x i32> %wide.vec1952, ptr %next.gep1946, align 4, !tbaa !4, !alias.scope !558, !noalias !555
  %index.next1957 = add nuw i64 %index1944, 4     ; 2 uses
  %i.arr = icmp eq i64 %index.next1957, %n.vec1942
  br i1 %i.arr, label %middle.block1958, label %vector.body1943, !llvm.loop !560

middle.block1958:                                 ; preds = %vector.body1943
  %cmp.n1959 = icmp eq i64 %i.ari, %n.vec1942
  br i1 %cmp.n1959, label %_ZNSt6vectorI3LocILi2EESaIS1_EEC2ERKS3_.exit.i164, label %.lr.ph.i.i.i.i.i.i160.preheader

.lr.ph.i.i.i.i.i.i160.preheader:                  ; preds = %vector.memcheck1930, %_ZNSt12_Vector_baseI3LocILi2EESaIS1_EEC2EmRKS2_.exit.i.i158, %middle.block1958
  %.09.i.i.i.i.i.i161.ph = phi ptr [ %i.arf, %vector.memcheck1930 ], [ %i.arf, %_ZNSt12_Vector_baseI3LocILi2EESaIS1_EEC2EmRKS2_.exit.i.i158 ], [ %i.arn, %middle.block1958 ]
  %.sroa.04.08.i.i.i.i.i.i162.ph = phi ptr [ %i.aqz, %vector.memcheck1930 ], [ %i.aqz, %_ZNSt12_Vector_baseI3LocILi2EESaIS1_EEC2EmRKS2_.exit.i.i158 ], [ %i.aro, %middle.block1958 ]
  br label %.lr.ph.i.i.i.i.i.i160

.lr.ph.i.i.i.i.i.i160:                            ; preds = %.lr.ph.i.i.i.i.i.i160.preheader, %.lr.ph.i.i.i.i.i.i160
  %.09.i.i.i.i.i.i161 = phi ptr [ %i.arx, %.lr.ph.i.i.i.i.i.i160 ], [ %.09.i.i.i.i.i.i161.ph, %.lr.ph.i.i.i.i.i.i160.preheader ] ; 3 uses
  %.sroa.04.08.i.i.i.i.i.i162 = phi ptr [ %i.arw, %.lr.ph.i.i.i.i.i.i160 ], [ %.sroa.04.08.i.i.i.i.i.i162.ph, %.lr.ph.i.i.i.i.i.i160.preheader ] ; 3 uses
  %i.ars = load i32, ptr %.sroa.04.08.i.i.i.i.i.i162, align 4, !tbaa !236
  store i32 %i.ars, ptr %.09.i.i.i.i.i.i161, align 4, !tbaa !4
  %i.art = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i161, i64 4
  %i.aru = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i162, i64 4
  %i.arv = load i32, ptr %i.aru, align 4, !tbaa !236
  store i32 %i.arv, ptr %i.art, align 4, !tbaa !4
  %i.arw = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i162, i64 8 ; 2 uses
  %i.arx = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i161, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i163 = icmp eq ptr %i.arw, %i.aqy
  br i1 %.not.i.i.i.i.i.i163, label %_ZNSt6vectorI3LocILi2EESaIS1_EEC2ERKS3_.exit.i164, label %.lr.ph.i.i.i.i.i.i160, !llvm.loop !561

_ZNSt6vectorI3LocILi2EESaIS1_EEC2ERKS3_.exit.i164: ; preds = %.lr.ph.i.i.i.i.i.i160, %middle.block1958, %_ZNSt12_Vector_baseI3LocILi2EESaIS1_EEC2EmRKS2_.exit.i.i158.thread
  %.0.lcssa.i.i.i.i.i.i165 = phi ptr [ null, %_ZNSt12_Vector_baseI3LocILi2EESaIS1_EEC2EmRKS2_.exit.i.i158.thread ], [ %i.arn, %middle.block1958 ], [ %i.arx, %.lr.ph.i.i.i.i.i.i160 ]
  store ptr %.0.lcssa.i.i.i.i.i.i165, ptr %i.alz, align 8, !tbaa !264
  %i.ary = load ptr, ptr %i.alw, align 8, !tbaa !276 ; 3 uses
  %i.arz = load ptr, ptr %13, align 8, !tbaa !279 ; 9 uses
  %i.asa = ptrtoint ptr %i.ary to i64             ; 3 uses
  %i.asb = ptrtoint ptr %i.arz to i64             ; 3 uses
  %i.asc = sub i64 %i.asa, %i.asb                 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.amb, i8 0, i64 24, i1 false)
  %.not.i.i.i.i4.i166 = icmp eq ptr %i.ary, %i.arz
  br i1 %.not.i.i.i.i4.i166, label %_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i168.thread, label %bb.df

_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i168.thread: ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EEC2ERKS3_.exit.i164
  %i.asd = getelementptr inbounds nuw i8, ptr null, i64 %i.asc
  store i64 0, ptr %i.amb, align 8
  store ptr %i.asd, ptr %i.amd, align 8, !tbaa !280
  br label %_ZN9CenteringILi2EEC2E13CenteringType14ContinuityTypeRKSt6vectorI3LocILi2EESaIS5_EERKS3_I6VectorILi2Ed4FullESaISC_EE.exit175

bb.df:                                            ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EEC2ERKS3_.exit.i164
  %i.ase = icmp ugt i64 %i.asc, 9223372036854775792
  br i1 %i.ase, label %bb.dg, label %_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i168, !prof !44

bb.dg:                                            ; preds = %bb.df
  call void @_ZSt28__throw_bad_array_new_lengthv() #46
  unreachable

_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i168: ; preds = %bb.df
  %i.asf = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.asc) #45 ; 9 uses
  store ptr %i.asf, ptr %i.amb, align 8, !tbaa !279
  %i.asg = getelementptr inbounds nuw i8, ptr %i.asf, i64 %i.asc
  store ptr %i.asg, ptr %i.amd, align 8, !tbaa !280
  %67 = sub i64 %i.asa, %i.asb
  %68 = add i64 %67, -16                          ; 2 uses
  %i.ash = lshr i64 %68, 4
  %i.asi = add nuw nsw i64 %i.ash, 1              ; 2 uses
  %min.iters.check1913 = icmp ult i64 %68, 80
  br i1 %min.iters.check1913, label %.lr.ph.i.i.i.i.i6.i170.preheader, label %vector.memcheck1904

vector.memcheck1904:                              ; preds = %_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i168
  %scevgep1905 = getelementptr i8, ptr %i.asf, i64 16
  %i.asj = add i64 %i.asa, -16
  %i.ask = sub i64 %i.asj, %i.asb
  %i.asl = and i64 %i.ask, -16                    ; 2 uses
  %scevgep1906 = getelementptr i8, ptr %scevgep1905, i64 %i.asl
  %scevgep1907 = getelementptr i8, ptr %i.arz, i64 16
  %scevgep1908 = getelementptr i8, ptr %scevgep1907, i64 %i.asl
  %bound01909 = icmp ult ptr %i.asf, %scevgep1908
  %bound11910 = icmp ult ptr %i.arz, %scevgep1906
  %found.conflict1911 = and i1 %bound01909, %bound11910
  br i1 %found.conflict1911, label %.lr.ph.i.i.i.i.i6.i170.preheader, label %vector.ph1914

vector.ph1914:                                    ; preds = %vector.memcheck1904
  %n.vec1916 = and i64 %i.asi, 2305843009213693950 ; 3 uses
  %i.asm = shl i64 %n.vec1916, 4                  ; 2 uses
  %i.asn = getelementptr i8, ptr %i.asf, i64 %i.asm ; 2 uses
  %i.aso = getelementptr i8, ptr %i.arz, i64 %i.asm
  br label %vector.body1917

vector.body1917:                                  ; preds = %vector.body1917, %vector.ph1914
  %index1918 = phi i64 [ 0, %vector.ph1914 ], [ %index.next1925, %vector.body1917 ] ; 2 uses
  %i.asp = shl i64 %index1918, 4                  ; 3 uses
  %i.asq = or disjoint i64 %i.asp, 16             ; 2 uses
  %next.gep1919 = getelementptr i8, ptr %i.asf, i64 %i.asp
  %next.gep1920 = getelementptr i8, ptr %i.asf, i64 %i.asq
  %next.gep1921 = getelementptr i8, ptr %i.arz, i64 %i.asp
  %next.gep1922 = getelementptr i8, ptr %i.arz, i64 %i.asq
  %wide.load1923 = load <2 x double>, ptr %next.gep1921, align 8, !tbaa !247, !alias.scope !562
  %wide.load1924 = load <2 x double>, ptr %next.gep1922, align 8, !tbaa !247, !alias.scope !562
  store <2 x double> %wide.load1923, ptr %next.gep1919, align 8, !tbaa !247, !alias.scope !565, !noalias !562
  store <2 x double> %wide.load1924, ptr %next.gep1920, align 8, !tbaa !247, !alias.scope !565, !noalias !562
  %index.next1925 = add nuw i64 %index1918, 2     ; 2 uses
  %i.asr = icmp eq i64 %index.next1925, %n.vec1916
  br i1 %i.asr, label %middle.block1926, label %vector.body1917, !llvm.loop !567

middle.block1926:                                 ; preds = %vector.body1917
  %cmp.n1927 = icmp eq i64 %i.asi, %n.vec1916
  br i1 %cmp.n1927, label %_ZN9CenteringILi2EEC2E13CenteringType14ContinuityTypeRKSt6vectorI3LocILi2EESaIS5_EERKS3_I6VectorILi2Ed4FullESaISC_EE.exit175, label %.lr.ph.i.i.i.i.i6.i170.preheader

.lr.ph.i.i.i.i.i6.i170.preheader:                 ; preds = %vector.memcheck1904, %_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i168, %middle.block1926
  %.09.i.i.i.i.i7.i171.ph = phi ptr [ %i.asf, %vector.memcheck1904 ], [ %i.asf, %_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i168 ], [ %i.asn, %middle.block1926 ]
  %.sroa.04.08.i.i.i.i.i8.i172.ph = phi ptr [ %i.arz, %vector.memcheck1904 ], [ %i.arz, %_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i168 ], [ %i.aso, %middle.block1926 ]
  br label %.lr.ph.i.i.i.i.i6.i170

.lr.ph.i.i.i.i.i6.i170:                           ; preds = %.lr.ph.i.i.i.i.i6.i170.preheader, %.lr.ph.i.i.i.i.i6.i170
  %.09.i.i.i.i.i7.i171 = phi ptr [ %i.asx, %.lr.ph.i.i.i.i.i6.i170 ], [ %.09.i.i.i.i.i7.i171.ph, %.lr.ph.i.i.i.i.i6.i170.preheader ] ; 3 uses
  %.sroa.04.08.i.i.i.i.i8.i172 = phi ptr [ %i.asw, %.lr.ph.i.i.i.i.i6.i170 ], [ %.sroa.04.08.i.i.i.i.i8.i172.ph, %.lr.ph.i.i.i.i.i6.i170.preheader ] ; 3 uses
  %i.ass = load double, ptr %.sroa.04.08.i.i.i.i.i8.i172, align 8, !tbaa !247
  store double %i.ass, ptr %.09.i.i.i.i.i7.i171, align 8, !tbaa !247
  %i.ast = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i7.i171, i64 8
  %i.asu = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i8.i172, i64 8
  %i.asv = load double, ptr %i.asu, align 8, !tbaa !247
  store double %i.asv, ptr %i.ast, align 8, !tbaa !247
  %i.asw = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i8.i172, i64 16 ; 2 uses
  %i.asx = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i7.i171, i64 16 ; 2 uses
  %.not.i.i.i.i.i9.i173 = icmp eq ptr %i.asw, %i.ary
  br i1 %.not.i.i.i.i.i9.i173, label %_ZN9CenteringILi2EEC2E13CenteringType14ContinuityTypeRKSt6vectorI3LocILi2EESaIS5_EERKS3_I6VectorILi2Ed4FullESaISC_EE.exit175, label %.lr.ph.i.i.i.i.i6.i170, !llvm.loop !568

_ZN9CenteringILi2EEC2E13CenteringType14ContinuityTypeRKSt6vectorI3LocILi2EESaIS5_EERKS3_I6VectorILi2Ed4FullESaISC_EE.exit175: ; preds = %.lr.ph.i.i.i.i.i6.i170, %middle.block1926, %_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i168.thread
  %.0.lcssa.i.i.i.i.i10.i174 = phi ptr [ null, %_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i168.thread ], [ %i.asn, %middle.block1926 ], [ %i.asx, %.lr.ph.i.i.i.i.i6.i170 ]
  store ptr %.0.lcssa.i.i.i.i.i10.i174, ptr %i.amc, align 8, !tbaa !276
  %i.asy = load ptr, ptr @_ZN18CanonicalCenteringILi2EE17centering_table_mE, align 8, !tbaa !258
  %i.asz = getelementptr inbounds nuw i8, ptr %i.asy, i64 16
  %i.ata = load ptr, ptr %i.asz, align 8, !tbaa !260
  %i.atb = getelementptr inbounds nuw [8 x i8], ptr %i.ata, i64 %indvars.iv992
  %i.atc = load ptr, ptr %i.atb, align 8, !tbaa !262 ; 3 uses
  %i.atd = getelementptr inbounds nuw i8, ptr %i.atc, i64 168
  %i.ate = load i64, ptr %11, align 8
  store i64 %i.ate, ptr %i.atd, align 8
  %i.atf = getelementptr inbounds nuw i8, ptr %i.atc, i64 176
  %i.atg = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI3LocILi2EESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.atf, ptr noundef nonnull align 8 dereferenceable(24) %i.aly) ; 0 uses
  %i.ath = getelementptr inbounds nuw i8, ptr %i.atc, i64 200
  %i.ati = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.ath, ptr noundef nonnull align 8 dereferenceable(24) %i.amb) ; 0 uses
  %i.atj = load ptr, ptr %i.amb, align 8, !tbaa !279 ; 3 uses
  %.not.i.i.i.i176 = icmp eq ptr %i.atj, null
  br i1 %.not.i.i.i.i176, label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit.i177, label %bb.dh

bb.dh:                                            ; preds = %_ZN9CenteringILi2EEC2E13CenteringType14ContinuityTypeRKSt6vectorI3LocILi2EESaIS5_EERKS3_I6VectorILi2Ed4FullESaISC_EE.exit175
  %i.atk = load ptr, ptr %i.amd, align 8, !tbaa !280
  %i.atl = ptrtoint ptr %i.atk to i64
  %i.atm = ptrtoint ptr %i.atj to i64
  %i.atn = sub i64 %i.atl, %i.atm
  call void @_ZdlPvm(ptr noundef nonnull %i.atj, i64 noundef %i.atn) #48
  br label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit.i177

_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit.i177: ; preds = %bb.dh, %_ZN9CenteringILi2EEC2E13CenteringType14ContinuityTypeRKSt6vectorI3LocILi2EESaIS5_EERKS3_I6VectorILi2Ed4FullESaISC_EE.exit175
  %i.ato = load ptr, ptr %i.aly, align 8, !tbaa !267 ; 3 uses
  %.not.i.i.i1.i178 = icmp eq ptr %i.ato, null
  br i1 %.not.i.i.i1.i178, label %_ZN9CenteringILi2EED2Ev.exit179, label %bb.di

bb.di:                                            ; preds = %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit.i177
  %i.atp = load ptr, ptr %i.ama, align 8, !tbaa !268
  %i.atq = ptrtoint ptr %i.atp to i64
  %i.atr = ptrtoint ptr %i.ato to i64
  %i.ats = sub i64 %i.atq, %i.atr
  call void @_ZdlPvm(ptr noundef nonnull %i.ato, i64 noundef %i.ats) #48
  br label %_ZN9CenteringILi2EED2Ev.exit179

_ZN9CenteringILi2EED2Ev.exit179:                  ; preds = %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit.i177, %bb.di
  %i.att = load ptr, ptr %13, align 8, !tbaa !279 ; 3 uses
  %.not.i.i.i180 = icmp eq ptr %i.att, null
  br i1 %.not.i.i.i180, label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit181, label %bb.dj

bb.dj:                                            ; preds = %_ZN9CenteringILi2EED2Ev.exit179
  %i.atu = load ptr, ptr %i.alv, align 8, !tbaa !280
  %i.atv = ptrtoint ptr %i.atu to i64
  %i.atw = ptrtoint ptr %i.att to i64
  %i.atx = sub i64 %i.atv, %i.atw
  call void @_ZdlPvm(ptr noundef nonnull %i.att, i64 noundef %i.atx) #48
  br label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit181

_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit181: ; preds = %_ZN9CenteringILi2EED2Ev.exit179, %bb.dj
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #47
  %i.aty = load ptr, ptr %12, align 8, !tbaa !267 ; 3 uses
  %.not.i.i.i182 = icmp eq ptr %i.aty, null
  br i1 %.not.i.i.i182, label %_ZNSt6vectorI3LocILi2EESaIS1_EED2Ev.exit183, label %bb.dk

bb.dk:                                            ; preds = %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit181
  %i.atz = load ptr, ptr %i.alt, align 8, !tbaa !268
  %i.aua = ptrtoint ptr %i.atz to i64
  %i.aub = ptrtoint ptr %i.aty to i64
  %i.auc = sub i64 %i.aua, %i.aub
  call void @_ZdlPvm(ptr noundef nonnull %i.aty, i64 noundef %i.auc) #48
  br label %_ZNSt6vectorI3LocILi2EESaIS1_EED2Ev.exit183

_ZNSt6vectorI3LocILi2EESaIS1_EED2Ev.exit183:      ; preds = %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit181, %bb.dk
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #47
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #47
  call void @_ZN9CenteringILi2EEC2E13CenteringType14ContinuityTypeRKSt6vectorI3LocILi2EESaIS5_EERKS3_I6VectorILi2Ed4FullESaISC_EE(ptr noundef nonnull align 8 dereferenceable(56) %14, i32 noundef 2, i32 noundef %i.ani, ptr noundef nonnull align 8 dereferenceable(24) %i.aoe, ptr noundef nonnull align 8 dereferenceable(24) %i.apo)
  %i.aud = load ptr, ptr @_ZN18CanonicalCenteringILi2EE17centering_table_mE, align 8, !tbaa !258
  %i.aue = getelementptr inbounds nuw i8, ptr %i.aud, i64 16
  %i.auf = load ptr, ptr %i.aue, align 8, !tbaa !260
  %i.aug = getelementptr inbounds nuw [8 x i8], ptr %i.auf, i64 %indvars.iv992
  %i.auh = load ptr, ptr %i.aug, align 8, !tbaa !262 ; 3 uses
  %i.aui = getelementptr inbounds nuw i8, ptr %i.auh, i64 112
  %i.auj = load i64, ptr %14, align 8
  store i64 %i.auj, ptr %i.aui, align 8
  %i.auk = getelementptr inbounds nuw i8, ptr %i.auh, i64 120
  %i.aul = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI3LocILi2EESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.auk, ptr noundef nonnull align 8 dereferenceable(24) %i.ame) ; 0 uses
  %i.aum = getelementptr inbounds nuw i8, ptr %i.auh, i64 144
  %i.aun = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.aum, ptr noundef nonnull align 8 dereferenceable(24) %i.amf) ; 0 uses
  %i.auo = load ptr, ptr %i.amf, align 8, !tbaa !279 ; 3 uses
  %.not.i.i.i.i184 = icmp eq ptr %i.auo, null
  br i1 %.not.i.i.i.i184, label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit.i185, label %bb.dl

bb.dl:                                            ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EED2Ev.exit183
  %i.aup = load ptr, ptr %i.amg, align 8, !tbaa !280
  %i.auq = ptrtoint ptr %i.aup to i64
  %i.aur = ptrtoint ptr %i.auo to i64
  %i.aus = sub i64 %i.auq, %i.aur
  call void @_ZdlPvm(ptr noundef nonnull %i.auo, i64 noundef %i.aus) #48
  br label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit.i185

_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit.i185: ; preds = %bb.dl, %_ZNSt6vectorI3LocILi2EESaIS1_EED2Ev.exit183
  %i.aut = load ptr, ptr %i.ame, align 8, !tbaa !267 ; 3 uses
  %.not.i.i.i1.i186 = icmp eq ptr %i.aut, null
  br i1 %.not.i.i.i1.i186, label %_ZN9CenteringILi2EED2Ev.exit187, label %bb.dm

bb.dm:                                            ; preds = %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit.i185
  %i.auu = load ptr, ptr %i.amh, align 8, !tbaa !268
  %i.auv = ptrtoint ptr %i.auu to i64
  %i.auw = ptrtoint ptr %i.aut to i64
  %i.aux = sub i64 %i.auv, %i.auw
  call void @_ZdlPvm(ptr noundef nonnull %i.aut, i64 noundef %i.aux) #48
  br label %_ZN9CenteringILi2EED2Ev.exit187

_ZN9CenteringILi2EED2Ev.exit187:                  ; preds = %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit.i185, %bb.dm
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #47
  br i1 %i.anh, label %bb.cw, label %.preheader.preheader, !llvm.loop !569

.preheader.preheader:                             ; preds = %_ZN9CenteringILi2EED2Ev.exit187
  %i.auy = load ptr, ptr %2, align 16, !tbaa !267 ; 2 uses
  %i.auz = load ptr, ptr %i.fi, align 8, !tbaa !264
  %.not.i.i216 = icmp eq ptr %i.auz, %i.auy
  br i1 %.not.i.i216, label %_ZNSt6vectorI3LocILi2EESaIS1_EE5clearEv.exit217, label %bb.ff

bb.dn:                                            ; preds = %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE5clearEv.exit219.1.1
  %i.ava = getelementptr inbounds nuw i8, ptr %15, i64 48
  %i.avb = load ptr, ptr %i.ava, align 8, !tbaa !280
  %i.avc = ptrtoint ptr %i.avb to i64
  %i.avd = ptrtoint ptr %i.bmi to i64
  %i.ave = sub i64 %i.avc, %i.avd
  call void @_ZdlPvm(ptr noundef nonnull %i.bmi, i64 noundef %i.ave) #48
  br label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit.i189

_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit.i189: ; preds = %bb.dn, %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE5clearEv.exit219.1.1
  %i.avf = load ptr, ptr %i.bme, align 8, !tbaa !267 ; 3 uses
  %.not.i.i.i1.i190 = icmp eq ptr %i.avf, null
  br i1 %.not.i.i.i1.i190, label %_ZN9CenteringILi2EED2Ev.exit191, label %bb.do

bb.do:                                            ; preds = %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit.i189
  %i.avg = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.avh = load ptr, ptr %i.avg, align 8, !tbaa !268
  %i.avi = ptrtoint ptr %i.avh to i64
  %i.avj = ptrtoint ptr %i.avf to i64
  %i.avk = sub i64 %i.avi, %i.avj
  call void @_ZdlPvm(ptr noundef nonnull %i.avf, i64 noundef %i.avk) #48
  br label %_ZN9CenteringILi2EED2Ev.exit191

_ZN9CenteringILi2EED2Ev.exit191:                  ; preds = %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit.i189, %bb.do
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #47
  %i.avl = load ptr, ptr %i.by, align 8, !tbaa !264 ; 7 uses
  %i.avm = load ptr, ptr %i.ca, align 8, !tbaa !268
  %.not.i.i192 = icmp eq ptr %i.avl, %i.avm
  br i1 %.not.i.i192, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %_ZN9CenteringILi2EED2Ev.exit191
  store i32 0, ptr %i.avl, align 4, !tbaa !4
  %i.avn = getelementptr inbounds nuw i8, ptr %i.avl, i64 4
  store i32 0, ptr %i.avn, align 4, !tbaa !4
  %i.avo = getelementptr inbounds nuw i8, ptr %i.avl, i64 8
  store ptr %i.avo, ptr %i.by, align 8, !tbaa !264
  br label %_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit.i193

bb.dq:                                            ; preds = %_ZN9CenteringILi2EED2Ev.exit191
  %i.avp = load ptr, ptr %i.a, align 8, !tbaa !267 ; 11 uses
  %i.avq = ptrtoint ptr %i.avl to i64             ; 3 uses
  %i.avr = ptrtoint ptr %i.avp to i64             ; 3 uses
  %i.avs = sub i64 %i.avq, %i.avr                 ; 4 uses
  %i.avt = icmp eq i64 %i.avs, 9223372036854775800
  br i1 %i.avt, label %bb.dr, label %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i570

bb.dr:                                            ; preds = %bb.dq
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.189) #46
  unreachable

_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i570: ; preds = %bb.dq
  %i.avu = ashr exact i64 %i.avs, 3               ; 3 uses
  %.sroa.speculated.i.i571 = call i64 @llvm.umax.i64(i64 %i.avu, i64 1)
  %i.avv = add nsw i64 %.sroa.speculated.i.i571, %i.avu ; 2 uses
  %i.avw = icmp ult i64 %i.avv, %i.avu
  %i.avx = call i64 @llvm.umin.i64(i64 %i.avv, i64 1152921504606846975)
  %i.avy = select i1 %i.avw, i64 1152921504606846975, i64 %i.avx ; 3 uses
  %.not.i.i572 = icmp ne i64 %i.avy, 0
  call void @llvm.assume(i1 %.not.i.i572)
  %i.avz = shl nuw nsw i64 %i.avy, 3
  %i.awa = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.avz) #45 ; 11 uses
  %i.awb = getelementptr inbounds nuw i8, ptr %i.awa, i64 %i.avs ; 2 uses
  store i32 0, ptr %i.awb, align 4, !tbaa !4
  %i.awc = getelementptr inbounds nuw i8, ptr %i.awb, i64 4
  store i32 0, ptr %i.awc, align 4, !tbaa !4
  %.not9.i.i.i.i.i.i573 = icmp eq ptr %i.avp, %i.avl
  br i1 %.not9.i.i.i.i.i.i573, label %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i585, label %.lr.ph.i.i.i.i.i.i574.preheader

.lr.ph.i.i.i.i.i.i574.preheader:                  ; preds = %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i570
  %69 = sub i64 %i.avq, %i.avr
  %70 = add i64 %69, -8                           ; 2 uses
  %i.awd = lshr i64 %70, 3
  %i.awe = add nuw nsw i64 %i.awd, 1              ; 2 uses
  %min.iters.check2027 = icmp ult i64 %70, 120
  br i1 %min.iters.check2027, label %.lr.ph.i.i.i.i.i.i574.preheader2307, label %vector.memcheck2020

vector.memcheck2020:                              ; preds = %.lr.ph.i.i.i.i.i.i574.preheader
  %i.awf = add i64 %i.avq, -8
  %i.awg = sub i64 %i.awf, %i.avr
  %i.awh = and i64 %i.awg, -8
  %i.awi = add i64 %i.awh, 8                      ; 2 uses
  %scevgep2021 = getelementptr i8, ptr %i.awa, i64 %i.awi
  %scevgep2022 = getelementptr i8, ptr %i.avp, i64 %i.awi
  %bound02023 = icmp ult ptr %i.awa, %scevgep2022
  %bound12024 = icmp ult ptr %i.avp, %scevgep2021
  %found.conflict2025 = and i1 %bound02023, %bound12024
  br i1 %found.conflict2025, label %.lr.ph.i.i.i.i.i.i574.preheader2307, label %vector.ph2028

vector.ph2028:                                    ; preds = %vector.memcheck2020
  %n.vec2030 = and i64 %i.awe, 4611686018427387900 ; 3 uses
  %i.awj = shl i64 %n.vec2030, 3                  ; 2 uses
  %i.awk = getelementptr i8, ptr %i.awa, i64 %i.awj ; 2 uses
  %i.awl = getelementptr i8, ptr %i.avp, i64 %i.awj
  br label %vector.body2031

vector.body2031:                                  ; preds = %vector.body2031, %vector.ph2028
  %index2032 = phi i64 [ 0, %vector.ph2028 ], [ %index.next2045, %vector.body2031 ] ; 2 uses
  %i.awm = shl i64 %index2032, 3                  ; 3 uses
  %i.awn = or disjoint i64 %i.awm, 16             ; 2 uses
  %next.gep2033 = getelementptr i8, ptr %i.awa, i64 %i.awm
  %next.gep2034 = getelementptr i8, ptr %i.awa, i64 %i.awn
  %next.gep2035 = getelementptr i8, ptr %i.avp, i64 %i.awm
  %next.gep2036 = getelementptr i8, ptr %i.avp, i64 %i.awn
  %wide.vec2037 = load <4 x i32>, ptr %next.gep2035, align 4, !tbaa !236, !alias.scope !570
  %wide.vec2040 = load <4 x i32>, ptr %next.gep2036, align 4, !tbaa !236, !alias.scope !570
  store <4 x i32> %wide.vec2037, ptr %next.gep2033, align 4, !tbaa !4, !alias.scope !573, !noalias !570
  store <4 x i32> %wide.vec2040, ptr %next.gep2034, align 4, !tbaa !4, !alias.scope !573, !noalias !570
  %index.next2045 = add nuw i64 %index2032, 4     ; 2 uses
  %i.awo = icmp eq i64 %index.next2045, %n.vec2030
  br i1 %i.awo, label %middle.block2046, label %vector.body2031, !llvm.loop !575

middle.block2046:                                 ; preds = %vector.body2031
  %cmp.n2047 = icmp eq i64 %i.awe, %n.vec2030
  br i1 %cmp.n2047, label %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i585, label %.lr.ph.i.i.i.i.i.i574.preheader2307

.lr.ph.i.i.i.i.i.i574.preheader2307:              ; preds = %vector.memcheck2020, %.lr.ph.i.i.i.i.i.i574.preheader, %middle.block2046
  %.011.i.i.i.i.i.i575.ph = phi ptr [ %i.awa, %vector.memcheck2020 ], [ %i.awa, %.lr.ph.i.i.i.i.i.i574.preheader ], [ %i.awk, %middle.block2046 ]
  %.0810.i.i.i.i.i.i576.ph = phi ptr [ %i.avp, %vector.memcheck2020 ], [ %i.avp, %.lr.ph.i.i.i.i.i.i574.preheader ], [ %i.awl, %middle.block2046 ]
  br label %.lr.ph.i.i.i.i.i.i574

.lr.ph.i.i.i.i.i.i574:                            ; preds = %.lr.ph.i.i.i.i.i.i574.preheader2307, %.lr.ph.i.i.i.i.i.i574
  %.011.i.i.i.i.i.i575 = phi ptr [ %i.awu, %.lr.ph.i.i.i.i.i.i574 ], [ %.011.i.i.i.i.i.i575.ph, %.lr.ph.i.i.i.i.i.i574.preheader2307 ] ; 3 uses
  %.0810.i.i.i.i.i.i576 = phi ptr [ %i.awt, %.lr.ph.i.i.i.i.i.i574 ], [ %.0810.i.i.i.i.i.i576.ph, %.lr.ph.i.i.i.i.i.i574.preheader2307 ] ; 3 uses
  %i.awp = load i32, ptr %.0810.i.i.i.i.i.i576, align 4, !tbaa !236
  store i32 %i.awp, ptr %.011.i.i.i.i.i.i575, align 4, !tbaa !4
  %i.awq = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i575, i64 4
  %i.awr = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i576, i64 4
  %i.aws = load i32, ptr %i.awr, align 4, !tbaa !236
  store i32 %i.aws, ptr %i.awq, align 4, !tbaa !4
  %i.awt = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i576, i64 8 ; 2 uses
  %i.awu = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i575, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i577 = icmp eq ptr %i.awt, %i.avl
  br i1 %.not.i.i.i.i.i.i577, label %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i585, label %.lr.ph.i.i.i.i.i.i574, !llvm.loop !576

_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i585: ; preds = %.lr.ph.i.i.i.i.i.i574, %middle.block2046, %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i570
  %.0.lcssa.i.i.i.i.i.i579 = phi ptr [ %i.awa, %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i570 ], [ %i.awk, %middle.block2046 ], [ %i.awu, %.lr.ph.i.i.i.i.i.i574 ]
  %i.awv = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i579, i64 8
  %.not.i25.i587 = icmp eq ptr %i.avp, null
  br i1 %.not.i25.i587, label %_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit588, label %bb.ds

bb.ds:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i585
  call void @_ZdlPvm(ptr noundef nonnull %i.avp, i64 noundef %i.avs) #48
  br label %_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit588

_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit588: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i585, %bb.ds
  store ptr %i.awa, ptr %i.a, align 8, !tbaa !267
  store ptr %i.awv, ptr %i.by, align 8, !tbaa !264
  %i.aww = getelementptr inbounds nuw [8 x i8], ptr %i.awa, i64 %i.avy
  store ptr %i.aww, ptr %i.ca, align 8, !tbaa !268
  br label %_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit.i193

_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit.i193: ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit588, %bb.dp
  %i.awx = load ptr, ptr %i.dm, align 8, !tbaa !276 ; 6 uses
  %i.awy = load ptr, ptr %i.do, align 8, !tbaa !280
  %.not.i3.i194 = icmp eq ptr %i.awx, %i.awy
  br i1 %.not.i3.i194, label %bb.du, label %bb.dt

bb.dt:                                            ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit.i193
  %i.awz = getelementptr inbounds nuw i8, ptr %i.awx, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.awx, i8 0, i64 16, i1 false)
  store ptr %i.awz, ptr %i.dm, align 8, !tbaa !276
  br label %_ZN9CenteringILi2EE8addValueERK3LocILi2EERK6VectorILi2Ed4FullE.exit195

bb.du:                                            ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit.i193
  %i.axa = load ptr, ptr %i.bj, align 8, !tbaa !279 ; 11 uses
  %i.axb = ptrtoint ptr %i.awx to i64             ; 3 uses
  %i.axc = ptrtoint ptr %i.axa to i64             ; 3 uses
  %i.axd = sub i64 %i.axb, %i.axc                 ; 4 uses
  %i.axe = icmp eq i64 %i.axd, 9223372036854775792
  br i1 %i.axe, label %bb.dv, label %_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i551

bb.dv:                                            ; preds = %bb.du
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.189) #46
  unreachable

_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i551: ; preds = %bb.du
  %i.axf = ashr exact i64 %i.axd, 4               ; 3 uses
  %.sroa.speculated.i.i552 = call i64 @llvm.umax.i64(i64 %i.axf, i64 1)
  %i.axg = add nsw i64 %.sroa.speculated.i.i552, %i.axf ; 2 uses
  %i.axh = icmp ult i64 %i.axg, %i.axf
  %i.axi = call i64 @llvm.umin.i64(i64 %i.axg, i64 576460752303423487)
  %i.axj = select i1 %i.axh, i64 576460752303423487, i64 %i.axi ; 3 uses
  %.not.i.i553 = icmp ne i64 %i.axj, 0
  call void @llvm.assume(i1 %.not.i.i553)
  %i.axk = shl nuw nsw i64 %i.axj, 4
  %i.axl = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.axk) #45 ; 11 uses
  %i.axm = getelementptr inbounds nuw i8, ptr %i.axl, i64 %i.axd
  %.not9.i.i.i.i.i.i554 = icmp eq ptr %i.axa, %i.awx
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.axm, i8 0, i64 16, i1 false)
  br i1 %.not9.i.i.i.i.i.i554, label %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i566, label %.lr.ph.i.i.i.i.i.i555.preheader

.lr.ph.i.i.i.i.i.i555.preheader:                  ; preds = %_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i551
  %71 = sub i64 %i.axb, %i.axc
  %72 = add i64 %71, -16                          ; 2 uses
  %i.axn = lshr i64 %72, 4
  %i.axo = add nuw nsw i64 %i.axn, 1              ; 2 uses
  %min.iters.check2057 = icmp ult i64 %72, 240
  br i1 %min.iters.check2057, label %.lr.ph.i.i.i.i.i.i555.preheader2305, label %vector.memcheck2050

vector.memcheck2050:                              ; preds = %.lr.ph.i.i.i.i.i.i555.preheader
  %i.axp = add i64 %i.axb, -16
  %i.axq = sub i64 %i.axp, %i.axc
  %i.axr = and i64 %i.axq, -16
  %i.axs = add i64 %i.axr, 16                     ; 2 uses
  %scevgep2051 = getelementptr i8, ptr %i.axl, i64 %i.axs
  %scevgep2052 = getelementptr i8, ptr %i.axa, i64 %i.axs
  %bound02053 = icmp ult ptr %i.axl, %scevgep2052
  %bound12054 = icmp ult ptr %i.axa, %scevgep2051
  %found.conflict2055 = and i1 %bound02053, %bound12054
  br i1 %found.conflict2055, label %.lr.ph.i.i.i.i.i.i555.preheader2305, label %vector.ph2058

vector.ph2058:                                    ; preds = %vector.memcheck2050
  %n.vec2060 = and i64 %i.axo, 2305843009213693950 ; 3 uses
  %i.axt = shl i64 %n.vec2060, 4                  ; 2 uses
  %i.axu = getelementptr i8, ptr %i.axl, i64 %i.axt ; 2 uses
  %i.axv = getelementptr i8, ptr %i.axa, i64 %i.axt
  br label %vector.body2061

vector.body2061:                                  ; preds = %vector.body2061, %vector.ph2058
  %index2062 = phi i64 [ 0, %vector.ph2058 ], [ %index.next2069, %vector.body2061 ] ; 2 uses
  %i.axw = shl i64 %index2062, 4                  ; 3 uses
  %i.axx = or disjoint i64 %i.axw, 16             ; 2 uses
  %next.gep2063 = getelementptr i8, ptr %i.axl, i64 %i.axw
  %next.gep2064 = getelementptr i8, ptr %i.axl, i64 %i.axx
  %next.gep2065 = getelementptr i8, ptr %i.axa, i64 %i.axw
  %next.gep2066 = getelementptr i8, ptr %i.axa, i64 %i.axx
  %wide.load2067 = load <2 x double>, ptr %next.gep2065, align 8, !tbaa !247, !alias.scope !577
  %wide.load2068 = load <2 x double>, ptr %next.gep2066, align 8, !tbaa !247, !alias.scope !577
  store <2 x double> %wide.load2067, ptr %next.gep2063, align 8, !tbaa !247, !alias.scope !580, !noalias !577
  store <2 x double> %wide.load2068, ptr %next.gep2064, align 8, !tbaa !247, !alias.scope !580, !noalias !577
  %index.next2069 = add nuw i64 %index2062, 2     ; 2 uses
  %i.axy = icmp eq i64 %index.next2069, %n.vec2060
  br i1 %i.axy, label %middle.block2070, label %vector.body2061, !llvm.loop !582

middle.block2070:                                 ; preds = %vector.body2061
  %cmp.n2071 = icmp eq i64 %i.axo, %n.vec2060
  br i1 %cmp.n2071, label %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i566, label %.lr.ph.i.i.i.i.i.i555.preheader2305

.lr.ph.i.i.i.i.i.i555.preheader2305:              ; preds = %vector.memcheck2050, %.lr.ph.i.i.i.i.i.i555.preheader, %middle.block2070
  %.011.i.i.i.i.i.i556.ph = phi ptr [ %i.axl, %vector.memcheck2050 ], [ %i.axl, %.lr.ph.i.i.i.i.i.i555.preheader ], [ %i.axu, %middle.block2070 ]
  %.0810.i.i.i.i.i.i557.ph = phi ptr [ %i.axa, %vector.memcheck2050 ], [ %i.axa, %.lr.ph.i.i.i.i.i.i555.preheader ], [ %i.axv, %middle.block2070 ]
  br label %.lr.ph.i.i.i.i.i.i555

.lr.ph.i.i.i.i.i.i555:                            ; preds = %.lr.ph.i.i.i.i.i.i555.preheader2305, %.lr.ph.i.i.i.i.i.i555
  %.011.i.i.i.i.i.i556 = phi ptr [ %i.aye, %.lr.ph.i.i.i.i.i.i555 ], [ %.011.i.i.i.i.i.i556.ph, %.lr.ph.i.i.i.i.i.i555.preheader2305 ] ; 3 uses
  %.0810.i.i.i.i.i.i557 = phi ptr [ %i.ayd, %.lr.ph.i.i.i.i.i.i555 ], [ %.0810.i.i.i.i.i.i557.ph, %.lr.ph.i.i.i.i.i.i555.preheader2305 ] ; 3 uses
  %i.axz = load double, ptr %.0810.i.i.i.i.i.i557, align 8, !tbaa !247
  store double %i.axz, ptr %.011.i.i.i.i.i.i556, align 8, !tbaa !247
  %i.aya = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i556, i64 8
  %i.ayb = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i557, i64 8
  %i.ayc = load double, ptr %i.ayb, align 8, !tbaa !247
  store double %i.ayc, ptr %i.aya, align 8, !tbaa !247
  %i.ayd = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i557, i64 16 ; 2 uses
  %i.aye = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i556, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i558 = icmp eq ptr %i.ayd, %i.awx
  br i1 %.not.i.i.i.i.i.i558, label %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i566, label %.lr.ph.i.i.i.i.i.i555, !llvm.loop !583

_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i566: ; preds = %.lr.ph.i.i.i.i.i.i555, %middle.block2070, %_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i551
  %.0.lcssa.i.i.i.i.i.i560 = phi ptr [ %i.axl, %_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i551 ], [ %i.axu, %middle.block2070 ], [ %i.aye, %.lr.ph.i.i.i.i.i.i555 ]
  %i.ayf = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i560, i64 16
  %.not.i25.i568 = icmp eq ptr %i.axa, null
  br i1 %.not.i25.i568, label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit569, label %bb.dw

bb.dw:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i566
  call void @_ZdlPvm(ptr noundef nonnull %i.axa, i64 noundef %i.axd) #48
  br label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit569

_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit569: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i566, %bb.dw
  store ptr %i.axl, ptr %i.bj, align 8, !tbaa !279
  store ptr %i.ayf, ptr %i.dm, align 8, !tbaa !276
  %i.ayg = getelementptr inbounds nuw [16 x i8], ptr %i.axl, i64 %i.axj
  store ptr %i.ayg, ptr %i.do, align 8, !tbaa !280
  br label %_ZN9CenteringILi2EE8addValueERK3LocILi2EERK6VectorILi2Ed4FullE.exit195

_ZN9CenteringILi2EE8addValueERK3LocILi2EERK6VectorILi2Ed4FullE.exit195: ; preds = %bb.dt, %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit569
  %i.ayh = load ptr, ptr @_ZN18CanonicalCenteringILi2EE17centering_table_mE, align 8, !tbaa !258
  %i.ayi = load ptr, ptr %i.ayh, align 8, !tbaa !260
  %i.ayj = load ptr, ptr %i.ayi, align 8, !tbaa !262 ; 3 uses
  %i.ayk = getelementptr inbounds nuw i8, ptr %i.ayj, i64 168
  %i.ayl = load i64, ptr %1, align 8
  store i64 %i.ayl, ptr %i.ayk, align 8
  %i.aym = getelementptr inbounds nuw i8, ptr %i.ayj, i64 176
  %i.ayn = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI3LocILi2EESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.aym, ptr noundef nonnull align 8 dereferenceable(24) %i.a) ; 0 uses
  %i.ayo = getelementptr inbounds nuw i8, ptr %i.ayj, i64 200
  %i.ayp = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.ayo, ptr noundef nonnull align 8 dereferenceable(24) %i.bj) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #47
  store i32 0, ptr %16, align 8, !tbaa !361
  %i.ayq = getelementptr inbounds nuw i8, ptr %16, i64 4
  store i32 1, ptr %i.ayq, align 4, !tbaa !462
  %i.ayr = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ayr, i8 0, i64 48, i1 false)
  %i.ays = load i64, ptr %16, align 8
  store i64 %i.ays, ptr %1, align 8
  %i.ayt = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI3LocILi2EESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.ayr) ; 0 uses
  %i.ayu = getelementptr inbounds nuw i8, ptr %16, i64 32 ; 2 uses
  %i.ayv = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.bj, ptr noundef nonnull align 8 dereferenceable(24) %i.ayu) ; 0 uses
  %i.ayw = load ptr, ptr %i.ayu, align 8, !tbaa !279 ; 3 uses
  %.not.i.i.i.i196 = icmp eq ptr %i.ayw, null
  br i1 %.not.i.i.i.i196, label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit.i197, label %bb.dx

bb.dx:                                            ; preds = %_ZN9CenteringILi2EE8addValueERK3LocILi2EERK6VectorILi2Ed4FullE.exit195
  %i.ayx = getelementptr inbounds nuw i8, ptr %16, i64 48
  %i.ayy = load ptr, ptr %i.ayx, align 8, !tbaa !280
  %i.ayz = ptrtoint ptr %i.ayy to i64
  %i.aza = ptrtoint ptr %i.ayw to i64
  %i.azb = sub i64 %i.ayz, %i.aza
  call void @_ZdlPvm(ptr noundef nonnull %i.ayw, i64 noundef %i.azb) #48
  br label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit.i197

_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit.i197: ; preds = %bb.dx, %_ZN9CenteringILi2EE8addValueERK3LocILi2EERK6VectorILi2Ed4FullE.exit195
  %i.azc = load ptr, ptr %i.ayr, align 8, !tbaa !267 ; 3 uses
  %.not.i.i.i1.i198 = icmp eq ptr %i.azc, null
  br i1 %.not.i.i.i1.i198, label %_ZN9CenteringILi2EED2Ev.exit199, label %bb.dy

bb.dy:                                            ; preds = %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit.i197
  %i.azd = getelementptr inbounds nuw i8, ptr %16, i64 24
  %i.aze = load ptr, ptr %i.azd, align 8, !tbaa !268
  %i.azf = ptrtoint ptr %i.aze to i64
  %i.azg = ptrtoint ptr %i.azc to i64
  %i.azh = sub i64 %i.azf, %i.azg
  call void @_ZdlPvm(ptr noundef nonnull %i.azc, i64 noundef %i.azh) #48
  br label %_ZN9CenteringILi2EED2Ev.exit199

_ZN9CenteringILi2EED2Ev.exit199:                  ; preds = %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit.i197, %bb.dy
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #47
  %i.azi = load ptr, ptr %i.by, align 8, !tbaa !264 ; 7 uses
  %i.azj = load ptr, ptr %i.ca, align 8, !tbaa !268 ; 2 uses
  %.not.i.i200 = icmp eq ptr %i.azi, %i.azj
  br i1 %.not.i.i200, label %bb.ea, label %bb.dz

bb.dz:                                            ; preds = %_ZN9CenteringILi2EED2Ev.exit199
  store i32 0, ptr %i.azi, align 4, !tbaa !4
  %i.azk = getelementptr inbounds nuw i8, ptr %i.azi, i64 4
  store i32 0, ptr %i.azk, align 4, !tbaa !4
  %i.azl = getelementptr inbounds nuw i8, ptr %i.azi, i64 8 ; 2 uses
  store ptr %i.azl, ptr %i.by, align 8, !tbaa !264
  br label %_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit.i201

bb.ea:                                            ; preds = %_ZN9CenteringILi2EED2Ev.exit199
  %i.azm = load ptr, ptr %i.a, align 8, !tbaa !267 ; 11 uses
  %i.azn = ptrtoint ptr %i.azi to i64             ; 3 uses
  %i.azo = ptrtoint ptr %i.azm to i64             ; 3 uses
  %i.azp = sub i64 %i.azn, %i.azo                 ; 4 uses
  %i.azq = icmp eq i64 %i.azp, 9223372036854775800
  br i1 %i.azq, label %bb.eb, label %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i608

bb.eb:                                            ; preds = %bb.ea
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.189) #46
  unreachable

_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i608: ; preds = %bb.ea
  %i.azr = ashr exact i64 %i.azp, 3               ; 3 uses
  %.sroa.speculated.i.i609 = call i64 @llvm.umax.i64(i64 %i.azr, i64 1)
  %i.azs = add nsw i64 %.sroa.speculated.i.i609, %i.azr ; 2 uses
  %i.azt = icmp ult i64 %i.azs, %i.azr
  %i.azu = call i64 @llvm.umin.i64(i64 %i.azs, i64 1152921504606846975)
  %i.azv = select i1 %i.azt, i64 1152921504606846975, i64 %i.azu ; 3 uses
  %.not.i.i610 = icmp ne i64 %i.azv, 0
  call void @llvm.assume(i1 %.not.i.i610)
  %i.azw = shl nuw nsw i64 %i.azv, 3
  %i.azx = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.azw) #45 ; 11 uses
  %i.azy = getelementptr inbounds nuw i8, ptr %i.azx, i64 %i.azp ; 2 uses
  store i32 0, ptr %i.azy, align 4, !tbaa !4
  %i.azz = getelementptr inbounds nuw i8, ptr %i.azy, i64 4
  store i32 0, ptr %i.azz, align 4, !tbaa !4
  %.not9.i.i.i.i.i.i611 = icmp eq ptr %i.azm, %i.azi
  br i1 %.not9.i.i.i.i.i.i611, label %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i623, label %.lr.ph.i.i.i.i.i.i612.preheader

.lr.ph.i.i.i.i.i.i612.preheader:                  ; preds = %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i608
  %73 = sub i64 %i.azn, %i.azo
  %74 = add i64 %73, -8                           ; 2 uses
  %i.baa = lshr i64 %74, 3
  %i.bab = add nuw nsw i64 %i.baa, 1              ; 2 uses
  %min.iters.check2081 = icmp ult i64 %74, 120
  br i1 %min.iters.check2081, label %.lr.ph.i.i.i.i.i.i612.preheader2303, label %vector.memcheck2074

vector.memcheck2074:                              ; preds = %.lr.ph.i.i.i.i.i.i612.preheader
  %i.bac = add i64 %i.azn, -8
  %i.bad = sub i64 %i.bac, %i.azo
  %i.bae = and i64 %i.bad, -8
  %i.baf = add i64 %i.bae, 8                      ; 2 uses
  %scevgep2075 = getelementptr i8, ptr %i.azx, i64 %i.baf
  %scevgep2076 = getelementptr i8, ptr %i.azm, i64 %i.baf
  %bound02077 = icmp ult ptr %i.azx, %scevgep2076
  %bound12078 = icmp ult ptr %i.azm, %scevgep2075
  %found.conflict2079 = and i1 %bound02077, %bound12078
  br i1 %found.conflict2079, label %.lr.ph.i.i.i.i.i.i612.preheader2303, label %vector.ph2082

vector.ph2082:                                    ; preds = %vector.memcheck2074
  %n.vec2084 = and i64 %i.bab, 4611686018427387900 ; 3 uses
  %i.bag = shl i64 %n.vec2084, 3                  ; 2 uses
  %i.bah = getelementptr i8, ptr %i.azx, i64 %i.bag ; 2 uses
  %i.bai = getelementptr i8, ptr %i.azm, i64 %i.bag
  br label %vector.body2085

vector.body2085:                                  ; preds = %vector.body2085, %vector.ph2082
  %index2086 = phi i64 [ 0, %vector.ph2082 ], [ %index.next2099, %vector.body2085 ] ; 2 uses
  %i.baj = shl i64 %index2086, 3                  ; 3 uses
  %i.bak = or disjoint i64 %i.baj, 16             ; 2 uses
  %next.gep2087 = getelementptr i8, ptr %i.azx, i64 %i.baj
  %next.gep2088 = getelementptr i8, ptr %i.azx, i64 %i.bak
  %next.gep2089 = getelementptr i8, ptr %i.azm, i64 %i.baj
  %next.gep2090 = getelementptr i8, ptr %i.azm, i64 %i.bak
  %wide.vec2091 = load <4 x i32>, ptr %next.gep2089, align 4, !tbaa !236, !alias.scope !584
  %wide.vec2094 = load <4 x i32>, ptr %next.gep2090, align 4, !tbaa !236, !alias.scope !584
  store <4 x i32> %wide.vec2091, ptr %next.gep2087, align 4, !tbaa !4, !alias.scope !587, !noalias !584
  store <4 x i32> %wide.vec2094, ptr %next.gep2088, align 4, !tbaa !4, !alias.scope !587, !noalias !584
  %index.next2099 = add nuw i64 %index2086, 4     ; 2 uses
  %i.bal = icmp eq i64 %index.next2099, %n.vec2084
  br i1 %i.bal, label %middle.block2100, label %vector.body2085, !llvm.loop !589

middle.block2100:                                 ; preds = %vector.body2085
  %cmp.n2101 = icmp eq i64 %i.bab, %n.vec2084
  br i1 %cmp.n2101, label %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i623, label %.lr.ph.i.i.i.i.i.i612.preheader2303

.lr.ph.i.i.i.i.i.i612.preheader2303:              ; preds = %vector.memcheck2074, %.lr.ph.i.i.i.i.i.i612.preheader, %middle.block2100
  %.011.i.i.i.i.i.i613.ph = phi ptr [ %i.azx, %vector.memcheck2074 ], [ %i.azx, %.lr.ph.i.i.i.i.i.i612.preheader ], [ %i.bah, %middle.block2100 ]
  %.0810.i.i.i.i.i.i614.ph = phi ptr [ %i.azm, %vector.memcheck2074 ], [ %i.azm, %.lr.ph.i.i.i.i.i.i612.preheader ], [ %i.bai, %middle.block2100 ]
  br label %.lr.ph.i.i.i.i.i.i612

.lr.ph.i.i.i.i.i.i612:                            ; preds = %.lr.ph.i.i.i.i.i.i612.preheader2303, %.lr.ph.i.i.i.i.i.i612
  %.011.i.i.i.i.i.i613 = phi ptr [ %i.bar, %.lr.ph.i.i.i.i.i.i612 ], [ %.011.i.i.i.i.i.i613.ph, %.lr.ph.i.i.i.i.i.i612.preheader2303 ] ; 3 uses
  %.0810.i.i.i.i.i.i614 = phi ptr [ %i.baq, %.lr.ph.i.i.i.i.i.i612 ], [ %.0810.i.i.i.i.i.i614.ph, %.lr.ph.i.i.i.i.i.i612.preheader2303 ] ; 3 uses
  %i.bam = load i32, ptr %.0810.i.i.i.i.i.i614, align 4, !tbaa !236
  store i32 %i.bam, ptr %.011.i.i.i.i.i.i613, align 4, !tbaa !4
  %i.ban = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i613, i64 4
  %i.bao = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i614, i64 4
  %i.bap = load i32, ptr %i.bao, align 4, !tbaa !236
  store i32 %i.bap, ptr %i.ban, align 4, !tbaa !4
  %i.baq = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i614, i64 8 ; 2 uses
  %i.bar = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i613, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i615 = icmp eq ptr %i.baq, %i.azi
  br i1 %.not.i.i.i.i.i.i615, label %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i623, label %.lr.ph.i.i.i.i.i.i612, !llvm.loop !590

_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i623: ; preds = %.lr.ph.i.i.i.i.i.i612, %middle.block2100, %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i608
  %.0.lcssa.i.i.i.i.i.i617 = phi ptr [ %i.azx, %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i608 ], [ %i.bah, %middle.block2100 ], [ %i.bar, %.lr.ph.i.i.i.i.i.i612 ]
  %i.bas = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i617, i64 8 ; 2 uses
  %.not.i25.i625 = icmp eq ptr %i.azm, null
  br i1 %.not.i25.i625, label %_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit626, label %bb.ec

bb.ec:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i623
  call void @_ZdlPvm(ptr noundef nonnull %i.azm, i64 noundef %i.azp) #48
  br label %_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit626

_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit626: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i623, %bb.ec
  store ptr %i.azx, ptr %i.a, align 8, !tbaa !267
  store ptr %i.bas, ptr %i.by, align 8, !tbaa !264
  %i.bat = getelementptr inbounds nuw [8 x i8], ptr %i.azx, i64 %i.azv ; 2 uses
  store ptr %i.bat, ptr %i.ca, align 8, !tbaa !268
  br label %_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit.i201

_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit.i201: ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit626, %bb.dz
  %i.bau = phi ptr [ %i.bat, %_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit626 ], [ %i.azj, %bb.dz ] ; 2 uses
  %i.bav = phi ptr [ %i.bas, %_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit626 ], [ %i.azl, %bb.dz ] ; 2 uses
  %i.baw = load ptr, ptr %i.dm, align 8, !tbaa !276 ; 6 uses
  %i.bax = load ptr, ptr %i.do, align 8, !tbaa !280 ; 2 uses
  %.not.i3.i202 = icmp eq ptr %i.baw, %i.bax
  br i1 %.not.i3.i202, label %bb.ee, label %bb.ed

bb.ed:                                            ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit.i201
  %i.bay = getelementptr inbounds nuw i8, ptr %i.baw, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.baw, i8 0, i64 16, i1 false)
  store ptr %i.bay, ptr %i.dm, align 8, !tbaa !276
  br label %_ZN9CenteringILi2EE8addValueERK3LocILi2EERK6VectorILi2Ed4FullE.exit203

bb.ee:                                            ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit.i201
  %i.baz = load ptr, ptr %i.bj, align 8, !tbaa !279 ; 11 uses
  %i.bba = ptrtoint ptr %i.baw to i64             ; 3 uses
  %i.bbb = ptrtoint ptr %i.baz to i64             ; 3 uses
  %i.bbc = sub i64 %i.bba, %i.bbb                 ; 4 uses
  %i.bbd = icmp eq i64 %i.bbc, 9223372036854775792
  br i1 %i.bbd, label %bb.ef, label %_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i589

bb.ef:                                            ; preds = %bb.ee
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.189) #46
  unreachable

_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i589: ; preds = %bb.ee
  %i.bbe = ashr exact i64 %i.bbc, 4               ; 3 uses
  %.sroa.speculated.i.i590 = call i64 @llvm.umax.i64(i64 %i.bbe, i64 1)
  %i.bbf = add nsw i64 %.sroa.speculated.i.i590, %i.bbe ; 2 uses
  %i.bbg = icmp ult i64 %i.bbf, %i.bbe
  %i.bbh = call i64 @llvm.umin.i64(i64 %i.bbf, i64 576460752303423487)
  %i.bbi = select i1 %i.bbg, i64 576460752303423487, i64 %i.bbh ; 3 uses
  %.not.i.i591 = icmp ne i64 %i.bbi, 0
  call void @llvm.assume(i1 %.not.i.i591)
  %i.bbj = shl nuw nsw i64 %i.bbi, 4
  %i.bbk = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bbj) #45 ; 11 uses
  %i.bbl = getelementptr inbounds nuw i8, ptr %i.bbk, i64 %i.bbc
  %.not9.i.i.i.i.i.i592 = icmp eq ptr %i.baz, %i.baw
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bbl, i8 0, i64 16, i1 false)
  br i1 %.not9.i.i.i.i.i.i592, label %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i604, label %.lr.ph.i.i.i.i.i.i593.preheader

.lr.ph.i.i.i.i.i.i593.preheader:                  ; preds = %_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i589
  %75 = sub i64 %i.bba, %i.bbb
  %76 = add i64 %75, -16                          ; 2 uses
  %i.bbm = lshr i64 %76, 4
  %i.bbn = add nuw nsw i64 %i.bbm, 1              ; 2 uses
  %min.iters.check2111 = icmp ult i64 %76, 240
  br i1 %min.iters.check2111, label %.lr.ph.i.i.i.i.i.i593.preheader2301, label %vector.memcheck2104

vector.memcheck2104:                              ; preds = %.lr.ph.i.i.i.i.i.i593.preheader
  %i.bbo = add i64 %i.bba, -16
  %i.bbp = sub i64 %i.bbo, %i.bbb
  %i.bbq = and i64 %i.bbp, -16
  %i.bbr = add i64 %i.bbq, 16                     ; 2 uses
  %scevgep2105 = getelementptr i8, ptr %i.bbk, i64 %i.bbr
  %scevgep2106 = getelementptr i8, ptr %i.baz, i64 %i.bbr
  %bound02107 = icmp ult ptr %i.bbk, %scevgep2106
  %bound12108 = icmp ult ptr %i.baz, %scevgep2105
  %found.conflict2109 = and i1 %bound02107, %bound12108
  br i1 %found.conflict2109, label %.lr.ph.i.i.i.i.i.i593.preheader2301, label %vector.ph2112

vector.ph2112:                                    ; preds = %vector.memcheck2104
  %n.vec2114 = and i64 %i.bbn, 2305843009213693950 ; 3 uses
  %i.bbs = shl i64 %n.vec2114, 4                  ; 2 uses
  %i.bbt = getelementptr i8, ptr %i.bbk, i64 %i.bbs ; 2 uses
  %i.bbu = getelementptr i8, ptr %i.baz, i64 %i.bbs
  br label %vector.body2115

vector.body2115:                                  ; preds = %vector.body2115, %vector.ph2112
  %index2116 = phi i64 [ 0, %vector.ph2112 ], [ %index.next2123, %vector.body2115 ] ; 2 uses
  %i.bbv = shl i64 %index2116, 4                  ; 3 uses
  %i.bbw = or disjoint i64 %i.bbv, 16             ; 2 uses
  %next.gep2117 = getelementptr i8, ptr %i.bbk, i64 %i.bbv
  %next.gep2118 = getelementptr i8, ptr %i.bbk, i64 %i.bbw
  %next.gep2119 = getelementptr i8, ptr %i.baz, i64 %i.bbv
  %next.gep2120 = getelementptr i8, ptr %i.baz, i64 %i.bbw
  %wide.load2121 = load <2 x double>, ptr %next.gep2119, align 8, !tbaa !247, !alias.scope !591
  %wide.load2122 = load <2 x double>, ptr %next.gep2120, align 8, !tbaa !247, !alias.scope !591
  store <2 x double> %wide.load2121, ptr %next.gep2117, align 8, !tbaa !247, !alias.scope !594, !noalias !591
  store <2 x double> %wide.load2122, ptr %next.gep2118, align 8, !tbaa !247, !alias.scope !594, !noalias !591
  %index.next2123 = add nuw i64 %index2116, 2     ; 2 uses
  %i.bbx = icmp eq i64 %index.next2123, %n.vec2114
  br i1 %i.bbx, label %middle.block2124, label %vector.body2115, !llvm.loop !596

middle.block2124:                                 ; preds = %vector.body2115
  %cmp.n2125 = icmp eq i64 %i.bbn, %n.vec2114
  br i1 %cmp.n2125, label %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i604, label %.lr.ph.i.i.i.i.i.i593.preheader2301

.lr.ph.i.i.i.i.i.i593.preheader2301:              ; preds = %vector.memcheck2104, %.lr.ph.i.i.i.i.i.i593.preheader, %middle.block2124
  %.011.i.i.i.i.i.i594.ph = phi ptr [ %i.bbk, %vector.memcheck2104 ], [ %i.bbk, %.lr.ph.i.i.i.i.i.i593.preheader ], [ %i.bbt, %middle.block2124 ]
  %.0810.i.i.i.i.i.i595.ph = phi ptr [ %i.baz, %vector.memcheck2104 ], [ %i.baz, %.lr.ph.i.i.i.i.i.i593.preheader ], [ %i.bbu, %middle.block2124 ]
  br label %.lr.ph.i.i.i.i.i.i593

.lr.ph.i.i.i.i.i.i593:                            ; preds = %.lr.ph.i.i.i.i.i.i593.preheader2301, %.lr.ph.i.i.i.i.i.i593
  %.011.i.i.i.i.i.i594 = phi ptr [ %i.bcd, %.lr.ph.i.i.i.i.i.i593 ], [ %.011.i.i.i.i.i.i594.ph, %.lr.ph.i.i.i.i.i.i593.preheader2301 ] ; 3 uses
  %.0810.i.i.i.i.i.i595 = phi ptr [ %i.bcc, %.lr.ph.i.i.i.i.i.i593 ], [ %.0810.i.i.i.i.i.i595.ph, %.lr.ph.i.i.i.i.i.i593.preheader2301 ] ; 3 uses
  %i.bby = load double, ptr %.0810.i.i.i.i.i.i595, align 8, !tbaa !247
  store double %i.bby, ptr %.011.i.i.i.i.i.i594, align 8, !tbaa !247
  %i.bbz = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i594, i64 8
  %i.bca = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i595, i64 8
  %i.bcb = load double, ptr %i.bca, align 8, !tbaa !247
  store double %i.bcb, ptr %i.bbz, align 8, !tbaa !247
  %i.bcc = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i595, i64 16 ; 2 uses
  %i.bcd = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i594, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i596 = icmp eq ptr %i.bcc, %i.baw
  br i1 %.not.i.i.i.i.i.i596, label %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i604, label %.lr.ph.i.i.i.i.i.i593, !llvm.loop !597

_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i604: ; preds = %.lr.ph.i.i.i.i.i.i593, %middle.block2124, %_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i589
  %.0.lcssa.i.i.i.i.i.i598 = phi ptr [ %i.bbk, %_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i589 ], [ %i.bbt, %middle.block2124 ], [ %i.bcd, %.lr.ph.i.i.i.i.i.i593 ]
  %i.bce = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i598, i64 16 ; 2 uses
  %.not.i25.i606 = icmp eq ptr %i.baz, null
  br i1 %.not.i25.i606, label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit607, label %bb.eg

bb.eg:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i604
  call void @_ZdlPvm(ptr noundef nonnull %i.baz, i64 noundef %i.bbc) #48
  %.pre1005.pre = load ptr, ptr %i.by, align 8, !tbaa !264
  %.pre1006.pre = load ptr, ptr %i.ca, align 8, !tbaa !268
  br label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit607

_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit607: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i604, %bb.eg
  %.pre1006 = phi ptr [ %i.bau, %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i604 ], [ %.pre1006.pre, %bb.eg ]
  %.pre1005 = phi ptr [ %i.bav, %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i604 ], [ %.pre1005.pre, %bb.eg ]
  store ptr %i.bbk, ptr %i.bj, align 8, !tbaa !279
  store ptr %i.bce, ptr %i.dm, align 8, !tbaa !276
  %i.bcf = getelementptr inbounds nuw [16 x i8], ptr %i.bbk, i64 %i.bbi ; 2 uses
  store ptr %i.bcf, ptr %i.do, align 8, !tbaa !280
  br label %_ZN9CenteringILi2EE8addValueERK3LocILi2EERK6VectorILi2Ed4FullE.exit203

_ZN9CenteringILi2EE8addValueERK3LocILi2EERK6VectorILi2Ed4FullE.exit203: ; preds = %bb.ed, %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit607
  %i.bcg = phi ptr [ %i.bax, %bb.ed ], [ %i.bcf, %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit607 ] ; 2 uses
  %i.bch = phi ptr [ %i.bay, %bb.ed ], [ %i.bce, %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit607 ] ; 2 uses
  %i.bci = phi ptr [ %i.bau, %bb.ed ], [ %.pre1006, %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit607 ] ; 5 uses
  %i.bcj = phi ptr [ %i.bav, %bb.ed ], [ %.pre1005, %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit607 ] ; 4 uses
  %.not.i.i204 = icmp eq ptr %i.bcj, %i.bci
  br i1 %.not.i.i204, label %bb.ei, label %bb.eh

bb.eh:                                            ; preds = %_ZN9CenteringILi2EE8addValueERK3LocILi2EERK6VectorILi2Ed4FullE.exit203
  store i32 0, ptr %i.bcj, align 4, !tbaa !4
  %i.bck = getelementptr inbounds nuw i8, ptr %i.bcj, i64 4
  store i32 0, ptr %i.bck, align 4, !tbaa !4
  %i.bcl = getelementptr inbounds nuw i8, ptr %i.bcj, i64 8 ; 2 uses
  store ptr %i.bcl, ptr %i.by, align 8, !tbaa !264
  br label %_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit.i205

bb.ei:                                            ; preds = %_ZN9CenteringILi2EE8addValueERK3LocILi2EERK6VectorILi2Ed4FullE.exit203
  %i.bcm = load ptr, ptr %i.a, align 8, !tbaa !267 ; 11 uses
  %i.bcn = ptrtoint ptr %i.bci to i64             ; 3 uses
  %i.bco = ptrtoint ptr %i.bcm to i64             ; 3 uses
  %i.bcp = sub i64 %i.bcn, %i.bco                 ; 4 uses
  %i.bcq = icmp eq i64 %i.bcp, 9223372036854775800
  br i1 %i.bcq, label %bb.ej, label %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i646

bb.ej:                                            ; preds = %bb.ei
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.189) #46
  unreachable

_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i646: ; preds = %bb.ei
  %i.bcr = ashr exact i64 %i.bcp, 3               ; 3 uses
  %.sroa.speculated.i.i647 = call i64 @llvm.umax.i64(i64 %i.bcr, i64 1)
  %i.bcs = add nsw i64 %.sroa.speculated.i.i647, %i.bcr ; 2 uses
  %i.bct = icmp ult i64 %i.bcs, %i.bcr
  %i.bcu = call i64 @llvm.umin.i64(i64 %i.bcs, i64 1152921504606846975)
  %i.bcv = select i1 %i.bct, i64 1152921504606846975, i64 %i.bcu ; 3 uses
  %.not.i.i648 = icmp ne i64 %i.bcv, 0
  call void @llvm.assume(i1 %.not.i.i648)
  %i.bcw = shl nuw nsw i64 %i.bcv, 3
  %i.bcx = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bcw) #45 ; 11 uses
  %i.bcy = getelementptr inbounds nuw i8, ptr %i.bcx, i64 %i.bcp ; 2 uses
  store i32 0, ptr %i.bcy, align 4, !tbaa !4
  %i.bcz = getelementptr inbounds nuw i8, ptr %i.bcy, i64 4
  store i32 0, ptr %i.bcz, align 4, !tbaa !4
  %.not9.i.i.i.i.i.i649 = icmp eq ptr %i.bcm, %i.bci
  br i1 %.not9.i.i.i.i.i.i649, label %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i661, label %.lr.ph.i.i.i.i.i.i650.preheader

.lr.ph.i.i.i.i.i.i650.preheader:                  ; preds = %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i646
  %77 = sub i64 %i.bcn, %i.bco
  %78 = add i64 %77, -8                           ; 2 uses
  %i.bda = lshr i64 %78, 3
  %i.bdb = add nuw nsw i64 %i.bda, 1              ; 2 uses
  %min.iters.check2135 = icmp ult i64 %78, 120
  br i1 %min.iters.check2135, label %.lr.ph.i.i.i.i.i.i650.preheader2299, label %vector.memcheck2128

vector.memcheck2128:                              ; preds = %.lr.ph.i.i.i.i.i.i650.preheader
  %i.bdc = add i64 %i.bcn, -8
  %i.bdd = sub i64 %i.bdc, %i.bco
  %i.bde = and i64 %i.bdd, -8
  %i.bdf = add i64 %i.bde, 8                      ; 2 uses
  %scevgep2129 = getelementptr i8, ptr %i.bcx, i64 %i.bdf
  %scevgep2130 = getelementptr i8, ptr %i.bcm, i64 %i.bdf
  %bound02131 = icmp ult ptr %i.bcx, %scevgep2130
  %bound12132 = icmp ult ptr %i.bcm, %scevgep2129
  %found.conflict2133 = and i1 %bound02131, %bound12132
  br i1 %found.conflict2133, label %.lr.ph.i.i.i.i.i.i650.preheader2299, label %vector.ph2136

vector.ph2136:                                    ; preds = %vector.memcheck2128
  %n.vec2138 = and i64 %i.bdb, 4611686018427387900 ; 3 uses
  %i.bdg = shl i64 %n.vec2138, 3                  ; 2 uses
  %i.bdh = getelementptr i8, ptr %i.bcx, i64 %i.bdg ; 2 uses
  %i.bdi = getelementptr i8, ptr %i.bcm, i64 %i.bdg
  br label %vector.body2139

vector.body2139:                                  ; preds = %vector.body2139, %vector.ph2136
  %index2140 = phi i64 [ 0, %vector.ph2136 ], [ %index.next2153, %vector.body2139 ] ; 2 uses
  %i.bdj = shl i64 %index2140, 3                  ; 3 uses
  %i.bdk = or disjoint i64 %i.bdj, 16             ; 2 uses
  %next.gep2141 = getelementptr i8, ptr %i.bcx, i64 %i.bdj
  %next.gep2142 = getelementptr i8, ptr %i.bcx, i64 %i.bdk
  %next.gep2143 = getelementptr i8, ptr %i.bcm, i64 %i.bdj
  %next.gep2144 = getelementptr i8, ptr %i.bcm, i64 %i.bdk
  %wide.vec2145 = load <4 x i32>, ptr %next.gep2143, align 4, !tbaa !236, !alias.scope !598
  %wide.vec2148 = load <4 x i32>, ptr %next.gep2144, align 4, !tbaa !236, !alias.scope !598
  store <4 x i32> %wide.vec2145, ptr %next.gep2141, align 4, !tbaa !4, !alias.scope !601, !noalias !598
  store <4 x i32> %wide.vec2148, ptr %next.gep2142, align 4, !tbaa !4, !alias.scope !601, !noalias !598
  %index.next2153 = add nuw i64 %index2140, 4     ; 2 uses
  %i.bdl = icmp eq i64 %index.next2153, %n.vec2138
  br i1 %i.bdl, label %middle.block2154, label %vector.body2139, !llvm.loop !603

middle.block2154:                                 ; preds = %vector.body2139
  %cmp.n2155 = icmp eq i64 %i.bdb, %n.vec2138
  br i1 %cmp.n2155, label %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i661, label %.lr.ph.i.i.i.i.i.i650.preheader2299

.lr.ph.i.i.i.i.i.i650.preheader2299:              ; preds = %vector.memcheck2128, %.lr.ph.i.i.i.i.i.i650.preheader, %middle.block2154
  %.011.i.i.i.i.i.i651.ph = phi ptr [ %i.bcx, %vector.memcheck2128 ], [ %i.bcx, %.lr.ph.i.i.i.i.i.i650.preheader ], [ %i.bdh, %middle.block2154 ]
  %.0810.i.i.i.i.i.i652.ph = phi ptr [ %i.bcm, %vector.memcheck2128 ], [ %i.bcm, %.lr.ph.i.i.i.i.i.i650.preheader ], [ %i.bdi, %middle.block2154 ]
  br label %.lr.ph.i.i.i.i.i.i650

.lr.ph.i.i.i.i.i.i650:                            ; preds = %.lr.ph.i.i.i.i.i.i650.preheader2299, %.lr.ph.i.i.i.i.i.i650
  %.011.i.i.i.i.i.i651 = phi ptr [ %i.bdr, %.lr.ph.i.i.i.i.i.i650 ], [ %.011.i.i.i.i.i.i651.ph, %.lr.ph.i.i.i.i.i.i650.preheader2299 ] ; 3 uses
  %.0810.i.i.i.i.i.i652 = phi ptr [ %i.bdq, %.lr.ph.i.i.i.i.i.i650 ], [ %.0810.i.i.i.i.i.i652.ph, %.lr.ph.i.i.i.i.i.i650.preheader2299 ] ; 3 uses
  %i.bdm = load i32, ptr %.0810.i.i.i.i.i.i652, align 4, !tbaa !236
  store i32 %i.bdm, ptr %.011.i.i.i.i.i.i651, align 4, !tbaa !4
  %i.bdn = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i651, i64 4
  %i.bdo = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i652, i64 4
  %i.bdp = load i32, ptr %i.bdo, align 4, !tbaa !236
  store i32 %i.bdp, ptr %i.bdn, align 4, !tbaa !4
  %i.bdq = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i652, i64 8 ; 2 uses
  %i.bdr = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i651, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i653 = icmp eq ptr %i.bdq, %i.bci
  br i1 %.not.i.i.i.i.i.i653, label %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i661, label %.lr.ph.i.i.i.i.i.i650, !llvm.loop !604

_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i661: ; preds = %.lr.ph.i.i.i.i.i.i650, %middle.block2154, %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i646
  %.0.lcssa.i.i.i.i.i.i655 = phi ptr [ %i.bcx, %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i646 ], [ %i.bdh, %middle.block2154 ], [ %i.bdr, %.lr.ph.i.i.i.i.i.i650 ]
  %i.bds = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i655, i64 8 ; 2 uses
  %.not.i25.i663 = icmp eq ptr %i.bcm, null
  br i1 %.not.i25.i663, label %_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit664, label %bb.ek

bb.ek:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i661
  call void @_ZdlPvm(ptr noundef nonnull %i.bcm, i64 noundef %i.bcp) #48
  %.pre1007.pre = load ptr, ptr %i.dm, align 8, !tbaa !276
  %.pre1008.pre = load ptr, ptr %i.do, align 8, !tbaa !280
  br label %_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit664

_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit664: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i661, %bb.ek
  %.pre1008 = phi ptr [ %i.bcg, %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i661 ], [ %.pre1008.pre, %bb.ek ]
  %.pre1007 = phi ptr [ %i.bch, %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i661 ], [ %.pre1007.pre, %bb.ek ]
  store ptr %i.bcx, ptr %i.a, align 8, !tbaa !267
  store ptr %i.bds, ptr %i.by, align 8, !tbaa !264
  %i.bdt = getelementptr inbounds nuw [8 x i8], ptr %i.bcx, i64 %i.bcv ; 2 uses
  store ptr %i.bdt, ptr %i.ca, align 8, !tbaa !268
  br label %_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit.i205

_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit.i205: ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit664, %bb.eh
  %i.bdu = phi ptr [ %i.bdt, %_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit664 ], [ %i.bci, %bb.eh ] ; 2 uses
  %i.bdv = phi ptr [ %i.bds, %_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit664 ], [ %i.bcl, %bb.eh ] ; 2 uses
  %i.bdw = phi ptr [ %.pre1008, %_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit664 ], [ %i.bcg, %bb.eh ] ; 5 uses
  %i.bdx = phi ptr [ %.pre1007, %_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit664 ], [ %i.bch, %bb.eh ] ; 3 uses
  %.not.i3.i206 = icmp eq ptr %i.bdx, %i.bdw
  br i1 %.not.i3.i206, label %bb.em, label %bb.el

bb.el:                                            ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit.i205
  store <2 x double> <double 1.000000e+00, double 0.000000e+00>, ptr %i.bdx, align 8, !tbaa !247
  %i.bdy = getelementptr inbounds nuw i8, ptr %i.bdx, i64 16 ; 2 uses
  store ptr %i.bdy, ptr %i.dm, align 8, !tbaa !276
  br label %_ZN9CenteringILi2EE8addValueERK3LocILi2EERK6VectorILi2Ed4FullE.exit207

bb.em:                                            ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit.i205
  %i.bdz = load ptr, ptr %i.bj, align 8, !tbaa !279 ; 11 uses
  %i.bea = ptrtoint ptr %i.bdw to i64             ; 3 uses
  %i.beb = ptrtoint ptr %i.bdz to i64             ; 3 uses
  %i.bec = sub i64 %i.bea, %i.beb                 ; 4 uses
  %i.bed = icmp eq i64 %i.bec, 9223372036854775792
  br i1 %i.bed, label %bb.en, label %_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i627

bb.en:                                            ; preds = %bb.em
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.189) #46
  unreachable

_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i627: ; preds = %bb.em
  %i.bee = ashr exact i64 %i.bec, 4               ; 3 uses
  %.sroa.speculated.i.i628 = call i64 @llvm.umax.i64(i64 %i.bee, i64 1)
  %i.bef = add nsw i64 %.sroa.speculated.i.i628, %i.bee ; 2 uses
  %i.beg = icmp ult i64 %i.bef, %i.bee
  %i.beh = call i64 @llvm.umin.i64(i64 %i.bef, i64 576460752303423487)
  %i.bei = select i1 %i.beg, i64 576460752303423487, i64 %i.beh ; 3 uses
  %.not.i.i629 = icmp ne i64 %i.bei, 0
  call void @llvm.assume(i1 %.not.i.i629)
  %i.bej = shl nuw nsw i64 %i.bei, 4
  %i.bek = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bej) #45 ; 11 uses
  %i.bel = getelementptr inbounds nuw i8, ptr %i.bek, i64 %i.bec
  store <2 x double> <double 1.000000e+00, double 0.000000e+00>, ptr %i.bel, align 8, !tbaa !247
  %.not9.i.i.i.i.i.i630 = icmp eq ptr %i.bdz, %i.bdw
  br i1 %.not9.i.i.i.i.i.i630, label %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i642, label %.lr.ph.i.i.i.i.i.i631.preheader

.lr.ph.i.i.i.i.i.i631.preheader:                  ; preds = %_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i627
  %79 = sub i64 %i.bea, %i.beb
  %80 = add i64 %79, -16                          ; 2 uses
  %i.bem = lshr i64 %80, 4
  %i.ben = add nuw nsw i64 %i.bem, 1              ; 2 uses
  %min.iters.check2165 = icmp ult i64 %80, 240
  br i1 %min.iters.check2165, label %.lr.ph.i.i.i.i.i.i631.preheader2297, label %vector.memcheck2158

vector.memcheck2158:                              ; preds = %.lr.ph.i.i.i.i.i.i631.preheader
  %i.beo = add i64 %i.bea, -16
  %i.bep = sub i64 %i.beo, %i.beb
  %i.beq = and i64 %i.bep, -16
  %i.ber = add i64 %i.beq, 16                     ; 2 uses
  %scevgep2159 = getelementptr i8, ptr %i.bek, i64 %i.ber
  %scevgep2160 = getelementptr i8, ptr %i.bdz, i64 %i.ber
  %bound02161 = icmp ult ptr %i.bek, %scevgep2160
  %bound12162 = icmp ult ptr %i.bdz, %scevgep2159
  %found.conflict2163 = and i1 %bound02161, %bound12162
  br i1 %found.conflict2163, label %.lr.ph.i.i.i.i.i.i631.preheader2297, label %vector.ph2166

vector.ph2166:                                    ; preds = %vector.memcheck2158
  %n.vec2168 = and i64 %i.ben, 2305843009213693950 ; 3 uses
  %i.bes = shl i64 %n.vec2168, 4                  ; 2 uses
  %i.bet = getelementptr i8, ptr %i.bek, i64 %i.bes ; 2 uses
  %i.beu = getelementptr i8, ptr %i.bdz, i64 %i.bes
  br label %vector.body2169

vector.body2169:                                  ; preds = %vector.body2169, %vector.ph2166
  %index2170 = phi i64 [ 0, %vector.ph2166 ], [ %index.next2177, %vector.body2169 ] ; 2 uses
  %i.bev = shl i64 %index2170, 4                  ; 3 uses
  %i.bew = or disjoint i64 %i.bev, 16             ; 2 uses
  %next.gep2171 = getelementptr i8, ptr %i.bek, i64 %i.bev
  %next.gep2172 = getelementptr i8, ptr %i.bek, i64 %i.bew
  %next.gep2173 = getelementptr i8, ptr %i.bdz, i64 %i.bev
  %next.gep2174 = getelementptr i8, ptr %i.bdz, i64 %i.bew
  %wide.load2175 = load <2 x double>, ptr %next.gep2173, align 8, !tbaa !247, !alias.scope !605
  %wide.load2176 = load <2 x double>, ptr %next.gep2174, align 8, !tbaa !247, !alias.scope !605
  store <2 x double> %wide.load2175, ptr %next.gep2171, align 8, !tbaa !247, !alias.scope !608, !noalias !605
  store <2 x double> %wide.load2176, ptr %next.gep2172, align 8, !tbaa !247, !alias.scope !608, !noalias !605
  %index.next2177 = add nuw i64 %index2170, 2     ; 2 uses
  %i.bex = icmp eq i64 %index.next2177, %n.vec2168
  br i1 %i.bex, label %middle.block2178, label %vector.body2169, !llvm.loop !610

middle.block2178:                                 ; preds = %vector.body2169
  %cmp.n2179 = icmp eq i64 %i.ben, %n.vec2168
  br i1 %cmp.n2179, label %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i642, label %.lr.ph.i.i.i.i.i.i631.preheader2297

.lr.ph.i.i.i.i.i.i631.preheader2297:              ; preds = %vector.memcheck2158, %.lr.ph.i.i.i.i.i.i631.preheader, %middle.block2178
  %.011.i.i.i.i.i.i632.ph = phi ptr [ %i.bek, %vector.memcheck2158 ], [ %i.bek, %.lr.ph.i.i.i.i.i.i631.preheader ], [ %i.bet, %middle.block2178 ]
  %.0810.i.i.i.i.i.i633.ph = phi ptr [ %i.bdz, %vector.memcheck2158 ], [ %i.bdz, %.lr.ph.i.i.i.i.i.i631.preheader ], [ %i.beu, %middle.block2178 ]
  br label %.lr.ph.i.i.i.i.i.i631

.lr.ph.i.i.i.i.i.i631:                            ; preds = %.lr.ph.i.i.i.i.i.i631.preheader2297, %.lr.ph.i.i.i.i.i.i631
  %.011.i.i.i.i.i.i632 = phi ptr [ %i.bfd, %.lr.ph.i.i.i.i.i.i631 ], [ %.011.i.i.i.i.i.i632.ph, %.lr.ph.i.i.i.i.i.i631.preheader2297 ] ; 3 uses
  %.0810.i.i.i.i.i.i633 = phi ptr [ %i.bfc, %.lr.ph.i.i.i.i.i.i631 ], [ %.0810.i.i.i.i.i.i633.ph, %.lr.ph.i.i.i.i.i.i631.preheader2297 ] ; 3 uses
  %i.bey = load double, ptr %.0810.i.i.i.i.i.i633, align 8, !tbaa !247
  store double %i.bey, ptr %.011.i.i.i.i.i.i632, align 8, !tbaa !247
  %i.bez = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i632, i64 8
  %i.bfa = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i633, i64 8
  %i.bfb = load double, ptr %i.bfa, align 8, !tbaa !247
  store double %i.bfb, ptr %i.bez, align 8, !tbaa !247
  %i.bfc = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i633, i64 16 ; 2 uses
  %i.bfd = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i632, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i634 = icmp eq ptr %i.bfc, %i.bdw
  br i1 %.not.i.i.i.i.i.i634, label %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i642, label %.lr.ph.i.i.i.i.i.i631, !llvm.loop !611

_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i642: ; preds = %.lr.ph.i.i.i.i.i.i631, %middle.block2178, %_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i627
  %.0.lcssa.i.i.i.i.i.i636 = phi ptr [ %i.bek, %_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i627 ], [ %i.bet, %middle.block2178 ], [ %i.bfd, %.lr.ph.i.i.i.i.i.i631 ]
  %i.bfe = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i636, i64 16 ; 2 uses
  %.not.i25.i644 = icmp eq ptr %i.bdz, null
  br i1 %.not.i25.i644, label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit645, label %bb.eo

bb.eo:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i642
  call void @_ZdlPvm(ptr noundef nonnull %i.bdz, i64 noundef %i.bec) #48
  %.pre1009.pre = load ptr, ptr %i.by, align 8, !tbaa !264
  %.pre1010.pre = load ptr, ptr %i.ca, align 8, !tbaa !268
  br label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit645

_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit645: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i642, %bb.eo
  %.pre1010 = phi ptr [ %i.bdu, %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i642 ], [ %.pre1010.pre, %bb.eo ]
  %.pre1009 = phi ptr [ %i.bdv, %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i642 ], [ %.pre1009.pre, %bb.eo ]
  store ptr %i.bek, ptr %i.bj, align 8, !tbaa !279
  store ptr %i.bfe, ptr %i.dm, align 8, !tbaa !276
  %i.bff = getelementptr inbounds nuw [16 x i8], ptr %i.bek, i64 %i.bei ; 2 uses
  store ptr %i.bff, ptr %i.do, align 8, !tbaa !280
  br label %_ZN9CenteringILi2EE8addValueERK3LocILi2EERK6VectorILi2Ed4FullE.exit207

_ZN9CenteringILi2EE8addValueERK3LocILi2EERK6VectorILi2Ed4FullE.exit207: ; preds = %bb.el, %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit645
  %i.bfg = phi ptr [ %i.bdw, %bb.el ], [ %i.bff, %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit645 ] ; 2 uses
  %i.bfh = phi ptr [ %i.bdy, %bb.el ], [ %i.bfe, %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit645 ] ; 2 uses
  %i.bfi = phi ptr [ %i.bdu, %bb.el ], [ %.pre1010, %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit645 ] ; 5 uses
  %i.bfj = phi ptr [ %i.bdv, %bb.el ], [ %.pre1009, %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit645 ] ; 4 uses
  %.not.i.i208 = icmp eq ptr %i.bfj, %i.bfi
  br i1 %.not.i.i208, label %bb.eq, label %bb.ep

bb.ep:                                            ; preds = %_ZN9CenteringILi2EE8addValueERK3LocILi2EERK6VectorILi2Ed4FullE.exit207
  store i32 0, ptr %i.bfj, align 4, !tbaa !4
  %i.bfk = getelementptr inbounds nuw i8, ptr %i.bfj, i64 4
  store i32 0, ptr %i.bfk, align 4, !tbaa !4
  %i.bfl = getelementptr inbounds nuw i8, ptr %i.bfj, i64 8 ; 2 uses
  store ptr %i.bfl, ptr %i.by, align 8, !tbaa !264
  br label %_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit.i209

bb.eq:                                            ; preds = %_ZN9CenteringILi2EE8addValueERK3LocILi2EERK6VectorILi2Ed4FullE.exit207
  %i.bfm = load ptr, ptr %i.a, align 8, !tbaa !267 ; 11 uses
  %i.bfn = ptrtoint ptr %i.bfi to i64             ; 3 uses
  %i.bfo = ptrtoint ptr %i.bfm to i64             ; 3 uses
  %i.bfp = sub i64 %i.bfn, %i.bfo                 ; 4 uses
  %i.bfq = icmp eq i64 %i.bfp, 9223372036854775800
  br i1 %i.bfq, label %bb.er, label %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i684

bb.er:                                            ; preds = %bb.eq
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.189) #46
  unreachable

_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i684: ; preds = %bb.eq
  %i.bfr = ashr exact i64 %i.bfp, 3               ; 3 uses
  %.sroa.speculated.i.i685 = call i64 @llvm.umax.i64(i64 %i.bfr, i64 1)
  %i.bfs = add nsw i64 %.sroa.speculated.i.i685, %i.bfr ; 2 uses
  %i.bft = icmp ult i64 %i.bfs, %i.bfr
  %i.bfu = call i64 @llvm.umin.i64(i64 %i.bfs, i64 1152921504606846975)
  %i.bfv = select i1 %i.bft, i64 1152921504606846975, i64 %i.bfu ; 3 uses
  %.not.i.i686 = icmp ne i64 %i.bfv, 0
  call void @llvm.assume(i1 %.not.i.i686)
  %i.bfw = shl nuw nsw i64 %i.bfv, 3
  %i.bfx = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bfw) #45 ; 11 uses
  %i.bfy = getelementptr inbounds nuw i8, ptr %i.bfx, i64 %i.bfp ; 2 uses
  store i32 0, ptr %i.bfy, align 4, !tbaa !4
  %i.bfz = getelementptr inbounds nuw i8, ptr %i.bfy, i64 4
  store i32 0, ptr %i.bfz, align 4, !tbaa !4
  %.not9.i.i.i.i.i.i687 = icmp eq ptr %i.bfm, %i.bfi
  br i1 %.not9.i.i.i.i.i.i687, label %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i699, label %.lr.ph.i.i.i.i.i.i688.preheader

.lr.ph.i.i.i.i.i.i688.preheader:                  ; preds = %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i684
  %81 = sub i64 %i.bfn, %i.bfo
  %82 = add i64 %81, -8                           ; 2 uses
  %i.bga = lshr i64 %82, 3
  %i.bgb = add nuw nsw i64 %i.bga, 1              ; 2 uses
  %min.iters.check2189 = icmp ult i64 %82, 120
  br i1 %min.iters.check2189, label %.lr.ph.i.i.i.i.i.i688.preheader2295, label %vector.memcheck2182

vector.memcheck2182:                              ; preds = %.lr.ph.i.i.i.i.i.i688.preheader
  %i.bgc = add i64 %i.bfn, -8
  %i.bgd = sub i64 %i.bgc, %i.bfo
  %i.bge = and i64 %i.bgd, -8
  %i.bgf = add i64 %i.bge, 8                      ; 2 uses
  %scevgep2183 = getelementptr i8, ptr %i.bfx, i64 %i.bgf
  %scevgep2184 = getelementptr i8, ptr %i.bfm, i64 %i.bgf
  %bound02185 = icmp ult ptr %i.bfx, %scevgep2184
  %bound12186 = icmp ult ptr %i.bfm, %scevgep2183
  %found.conflict2187 = and i1 %bound02185, %bound12186
  br i1 %found.conflict2187, label %.lr.ph.i.i.i.i.i.i688.preheader2295, label %vector.ph2190

vector.ph2190:                                    ; preds = %vector.memcheck2182
  %n.vec2192 = and i64 %i.bgb, 4611686018427387900 ; 3 uses
  %i.bgg = shl i64 %n.vec2192, 3                  ; 2 uses
  %i.bgh = getelementptr i8, ptr %i.bfx, i64 %i.bgg ; 2 uses
  %i.bgi = getelementptr i8, ptr %i.bfm, i64 %i.bgg
  br label %vector.body2193

vector.body2193:                                  ; preds = %vector.body2193, %vector.ph2190
  %index2194 = phi i64 [ 0, %vector.ph2190 ], [ %index.next2207, %vector.body2193 ] ; 2 uses
  %i.bgj = shl i64 %index2194, 3                  ; 3 uses
  %i.bgk = or disjoint i64 %i.bgj, 16             ; 2 uses
  %next.gep2195 = getelementptr i8, ptr %i.bfx, i64 %i.bgj
  %next.gep2196 = getelementptr i8, ptr %i.bfx, i64 %i.bgk
  %next.gep2197 = getelementptr i8, ptr %i.bfm, i64 %i.bgj
  %next.gep2198 = getelementptr i8, ptr %i.bfm, i64 %i.bgk
  %wide.vec2199 = load <4 x i32>, ptr %next.gep2197, align 4, !tbaa !236, !alias.scope !612
  %wide.vec2202 = load <4 x i32>, ptr %next.gep2198, align 4, !tbaa !236, !alias.scope !612
  store <4 x i32> %wide.vec2199, ptr %next.gep2195, align 4, !tbaa !4, !alias.scope !615, !noalias !612
  store <4 x i32> %wide.vec2202, ptr %next.gep2196, align 4, !tbaa !4, !alias.scope !615, !noalias !612
  %index.next2207 = add nuw i64 %index2194, 4     ; 2 uses
  %i.bgl = icmp eq i64 %index.next2207, %n.vec2192
  br i1 %i.bgl, label %middle.block2208, label %vector.body2193, !llvm.loop !617

middle.block2208:                                 ; preds = %vector.body2193
  %cmp.n2209 = icmp eq i64 %i.bgb, %n.vec2192
  br i1 %cmp.n2209, label %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i699, label %.lr.ph.i.i.i.i.i.i688.preheader2295

.lr.ph.i.i.i.i.i.i688.preheader2295:              ; preds = %vector.memcheck2182, %.lr.ph.i.i.i.i.i.i688.preheader, %middle.block2208
  %.011.i.i.i.i.i.i689.ph = phi ptr [ %i.bfx, %vector.memcheck2182 ], [ %i.bfx, %.lr.ph.i.i.i.i.i.i688.preheader ], [ %i.bgh, %middle.block2208 ]
  %.0810.i.i.i.i.i.i690.ph = phi ptr [ %i.bfm, %vector.memcheck2182 ], [ %i.bfm, %.lr.ph.i.i.i.i.i.i688.preheader ], [ %i.bgi, %middle.block2208 ]
  br label %.lr.ph.i.i.i.i.i.i688

.lr.ph.i.i.i.i.i.i688:                            ; preds = %.lr.ph.i.i.i.i.i.i688.preheader2295, %.lr.ph.i.i.i.i.i.i688
  %.011.i.i.i.i.i.i689 = phi ptr [ %i.bgr, %.lr.ph.i.i.i.i.i.i688 ], [ %.011.i.i.i.i.i.i689.ph, %.lr.ph.i.i.i.i.i.i688.preheader2295 ] ; 3 uses
  %.0810.i.i.i.i.i.i690 = phi ptr [ %i.bgq, %.lr.ph.i.i.i.i.i.i688 ], [ %.0810.i.i.i.i.i.i690.ph, %.lr.ph.i.i.i.i.i.i688.preheader2295 ] ; 3 uses
  %i.bgm = load i32, ptr %.0810.i.i.i.i.i.i690, align 4, !tbaa !236
  store i32 %i.bgm, ptr %.011.i.i.i.i.i.i689, align 4, !tbaa !4
  %i.bgn = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i689, i64 4
  %i.bgo = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i690, i64 4
  %i.bgp = load i32, ptr %i.bgo, align 4, !tbaa !236
  store i32 %i.bgp, ptr %i.bgn, align 4, !tbaa !4
  %i.bgq = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i690, i64 8 ; 2 uses
  %i.bgr = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i689, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i691 = icmp eq ptr %i.bgq, %i.bfi
  br i1 %.not.i.i.i.i.i.i691, label %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i699, label %.lr.ph.i.i.i.i.i.i688, !llvm.loop !618

_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i699: ; preds = %.lr.ph.i.i.i.i.i.i688, %middle.block2208, %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i684
  %.0.lcssa.i.i.i.i.i.i693 = phi ptr [ %i.bfx, %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i684 ], [ %i.bgh, %middle.block2208 ], [ %i.bgr, %.lr.ph.i.i.i.i.i.i688 ]
  %i.bgs = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i693, i64 8 ; 2 uses
  %.not.i25.i701 = icmp eq ptr %i.bfm, null
  br i1 %.not.i25.i701, label %_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit702, label %bb.es

bb.es:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i699
  call void @_ZdlPvm(ptr noundef nonnull %i.bfm, i64 noundef %i.bfp) #48
  %.pre1011.pre = load ptr, ptr %i.dm, align 8, !tbaa !276
  %.pre1012.pre = load ptr, ptr %i.do, align 8, !tbaa !280
  br label %_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit702

_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit702: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i699, %bb.es
  %.pre1012 = phi ptr [ %i.bfg, %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i699 ], [ %.pre1012.pre, %bb.es ]
  %.pre1011 = phi ptr [ %i.bfh, %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i699 ], [ %.pre1011.pre, %bb.es ]
  store ptr %i.bfx, ptr %i.a, align 8, !tbaa !267
  store ptr %i.bgs, ptr %i.by, align 8, !tbaa !264
  %i.bgt = getelementptr inbounds nuw [8 x i8], ptr %i.bfx, i64 %i.bfv ; 2 uses
  store ptr %i.bgt, ptr %i.ca, align 8, !tbaa !268
  br label %_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit.i209

_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit.i209: ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit702, %bb.ep
  %i.bgu = phi ptr [ %i.bgt, %_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit702 ], [ %i.bfi, %bb.ep ] ; 2 uses
  %i.bgv = phi ptr [ %i.bgs, %_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit702 ], [ %i.bfl, %bb.ep ] ; 2 uses
  %i.bgw = phi ptr [ %.pre1012, %_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit702 ], [ %i.bfg, %bb.ep ] ; 5 uses
  %i.bgx = phi ptr [ %.pre1011, %_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit702 ], [ %i.bfh, %bb.ep ] ; 3 uses
  %.not.i3.i210 = icmp eq ptr %i.bgx, %i.bgw
  br i1 %.not.i3.i210, label %bb.eu, label %bb.et

bb.et:                                            ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit.i209
  store <2 x double> splat (double 1.000000e+00), ptr %i.bgx, align 8, !tbaa !247
  %i.bgy = getelementptr inbounds nuw i8, ptr %i.bgx, i64 16 ; 2 uses
  store ptr %i.bgy, ptr %i.dm, align 8, !tbaa !276
  br label %_ZN9CenteringILi2EE8addValueERK3LocILi2EERK6VectorILi2Ed4FullE.exit211

bb.eu:                                            ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit.i209
  %i.bgz = load ptr, ptr %i.bj, align 8, !tbaa !279 ; 11 uses
  %i.bha = ptrtoint ptr %i.bgw to i64             ; 3 uses
  %i.bhb = ptrtoint ptr %i.bgz to i64             ; 3 uses
  %i.bhc = sub i64 %i.bha, %i.bhb                 ; 4 uses
  %i.bhd = icmp eq i64 %i.bhc, 9223372036854775792
  br i1 %i.bhd, label %bb.ev, label %_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i665

bb.ev:                                            ; preds = %bb.eu
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.189) #46
  unreachable

_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i665: ; preds = %bb.eu
  %i.bhe = ashr exact i64 %i.bhc, 4               ; 3 uses
  %.sroa.speculated.i.i666 = call i64 @llvm.umax.i64(i64 %i.bhe, i64 1)
  %i.bhf = add nsw i64 %.sroa.speculated.i.i666, %i.bhe ; 2 uses
  %i.bhg = icmp ult i64 %i.bhf, %i.bhe
  %i.bhh = call i64 @llvm.umin.i64(i64 %i.bhf, i64 576460752303423487)
  %i.bhi = select i1 %i.bhg, i64 576460752303423487, i64 %i.bhh ; 3 uses
  %.not.i.i667 = icmp ne i64 %i.bhi, 0
  call void @llvm.assume(i1 %.not.i.i667)
  %i.bhj = shl nuw nsw i64 %i.bhi, 4
  %i.bhk = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bhj) #45 ; 11 uses
  %i.bhl = getelementptr inbounds nuw i8, ptr %i.bhk, i64 %i.bhc
  store <2 x double> splat (double 1.000000e+00), ptr %i.bhl, align 8, !tbaa !247
  %.not9.i.i.i.i.i.i668 = icmp eq ptr %i.bgz, %i.bgw
  br i1 %.not9.i.i.i.i.i.i668, label %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i680, label %.lr.ph.i.i.i.i.i.i669.preheader

.lr.ph.i.i.i.i.i.i669.preheader:                  ; preds = %_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i665
  %83 = sub i64 %i.bha, %i.bhb
  %84 = add i64 %83, -16                          ; 2 uses
  %i.bhm = lshr i64 %84, 4
  %i.bhn = add nuw nsw i64 %i.bhm, 1              ; 2 uses
  %min.iters.check2219 = icmp ult i64 %84, 240
  br i1 %min.iters.check2219, label %.lr.ph.i.i.i.i.i.i669.preheader2293, label %vector.memcheck2212

vector.memcheck2212:                              ; preds = %.lr.ph.i.i.i.i.i.i669.preheader
  %i.bho = add i64 %i.bha, -16
  %i.bhp = sub i64 %i.bho, %i.bhb
  %i.bhq = and i64 %i.bhp, -16
  %i.bhr = add i64 %i.bhq, 16                     ; 2 uses
  %scevgep2213 = getelementptr i8, ptr %i.bhk, i64 %i.bhr
  %scevgep2214 = getelementptr i8, ptr %i.bgz, i64 %i.bhr
  %bound02215 = icmp ult ptr %i.bhk, %scevgep2214
  %bound12216 = icmp ult ptr %i.bgz, %scevgep2213
  %found.conflict2217 = and i1 %bound02215, %bound12216
  br i1 %found.conflict2217, label %.lr.ph.i.i.i.i.i.i669.preheader2293, label %vector.ph2220

vector.ph2220:                                    ; preds = %vector.memcheck2212
  %n.vec2222 = and i64 %i.bhn, 2305843009213693950 ; 3 uses
  %i.bhs = shl i64 %n.vec2222, 4                  ; 2 uses
  %i.bht = getelementptr i8, ptr %i.bhk, i64 %i.bhs ; 2 uses
  %i.bhu = getelementptr i8, ptr %i.bgz, i64 %i.bhs
  br label %vector.body2223

vector.body2223:                                  ; preds = %vector.body2223, %vector.ph2220
  %index2224 = phi i64 [ 0, %vector.ph2220 ], [ %index.next2231, %vector.body2223 ] ; 2 uses
  %i.bhv = shl i64 %index2224, 4                  ; 3 uses
  %i.bhw = or disjoint i64 %i.bhv, 16             ; 2 uses
  %next.gep2225 = getelementptr i8, ptr %i.bhk, i64 %i.bhv
  %next.gep2226 = getelementptr i8, ptr %i.bhk, i64 %i.bhw
  %next.gep2227 = getelementptr i8, ptr %i.bgz, i64 %i.bhv
  %next.gep2228 = getelementptr i8, ptr %i.bgz, i64 %i.bhw
  %wide.load2229 = load <2 x double>, ptr %next.gep2227, align 8, !tbaa !247, !alias.scope !619
  %wide.load2230 = load <2 x double>, ptr %next.gep2228, align 8, !tbaa !247, !alias.scope !619
  store <2 x double> %wide.load2229, ptr %next.gep2225, align 8, !tbaa !247, !alias.scope !622, !noalias !619
  store <2 x double> %wide.load2230, ptr %next.gep2226, align 8, !tbaa !247, !alias.scope !622, !noalias !619
  %index.next2231 = add nuw i64 %index2224, 2     ; 2 uses
  %i.bhx = icmp eq i64 %index.next2231, %n.vec2222
  br i1 %i.bhx, label %middle.block2232, label %vector.body2223, !llvm.loop !624

middle.block2232:                                 ; preds = %vector.body2223
  %cmp.n2233 = icmp eq i64 %i.bhn, %n.vec2222
  br i1 %cmp.n2233, label %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i680, label %.lr.ph.i.i.i.i.i.i669.preheader2293

.lr.ph.i.i.i.i.i.i669.preheader2293:              ; preds = %vector.memcheck2212, %.lr.ph.i.i.i.i.i.i669.preheader, %middle.block2232
  %.011.i.i.i.i.i.i670.ph = phi ptr [ %i.bhk, %vector.memcheck2212 ], [ %i.bhk, %.lr.ph.i.i.i.i.i.i669.preheader ], [ %i.bht, %middle.block2232 ]
  %.0810.i.i.i.i.i.i671.ph = phi ptr [ %i.bgz, %vector.memcheck2212 ], [ %i.bgz, %.lr.ph.i.i.i.i.i.i669.preheader ], [ %i.bhu, %middle.block2232 ]
  br label %.lr.ph.i.i.i.i.i.i669

.lr.ph.i.i.i.i.i.i669:                            ; preds = %.lr.ph.i.i.i.i.i.i669.preheader2293, %.lr.ph.i.i.i.i.i.i669
  %.011.i.i.i.i.i.i670 = phi ptr [ %i.bid, %.lr.ph.i.i.i.i.i.i669 ], [ %.011.i.i.i.i.i.i670.ph, %.lr.ph.i.i.i.i.i.i669.preheader2293 ] ; 3 uses
  %.0810.i.i.i.i.i.i671 = phi ptr [ %i.bic, %.lr.ph.i.i.i.i.i.i669 ], [ %.0810.i.i.i.i.i.i671.ph, %.lr.ph.i.i.i.i.i.i669.preheader2293 ] ; 3 uses
  %i.bhy = load double, ptr %.0810.i.i.i.i.i.i671, align 8, !tbaa !247
  store double %i.bhy, ptr %.011.i.i.i.i.i.i670, align 8, !tbaa !247
  %i.bhz = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i670, i64 8
  %i.bia = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i671, i64 8
  %i.bib = load double, ptr %i.bia, align 8, !tbaa !247
  store double %i.bib, ptr %i.bhz, align 8, !tbaa !247
  %i.bic = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i671, i64 16 ; 2 uses
  %i.bid = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i670, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i672 = icmp eq ptr %i.bic, %i.bgw
  br i1 %.not.i.i.i.i.i.i672, label %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i680, label %.lr.ph.i.i.i.i.i.i669, !llvm.loop !625

_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i680: ; preds = %.lr.ph.i.i.i.i.i.i669, %middle.block2232, %_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i665
  %.0.lcssa.i.i.i.i.i.i674 = phi ptr [ %i.bhk, %_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i665 ], [ %i.bht, %middle.block2232 ], [ %i.bid, %.lr.ph.i.i.i.i.i.i669 ]
  %i.bie = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i674, i64 16 ; 2 uses
  %.not.i25.i682 = icmp eq ptr %i.bgz, null
  br i1 %.not.i25.i682, label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit683, label %bb.ew

bb.ew:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i680
  call void @_ZdlPvm(ptr noundef nonnull %i.bgz, i64 noundef %i.bhc) #48
  %.pre1013.pre = load ptr, ptr %i.by, align 8, !tbaa !264
  %.pre1014.pre = load ptr, ptr %i.ca, align 8, !tbaa !268
  br label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit683

_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit683: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i680, %bb.ew
  %.pre1014 = phi ptr [ %i.bgu, %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i680 ], [ %.pre1014.pre, %bb.ew ]
  %.pre1013 = phi ptr [ %i.bgv, %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i680 ], [ %.pre1013.pre, %bb.ew ]
  store ptr %i.bhk, ptr %i.bj, align 8, !tbaa !279
  store ptr %i.bie, ptr %i.dm, align 8, !tbaa !276
  %i.bif = getelementptr inbounds nuw [16 x i8], ptr %i.bhk, i64 %i.bhi ; 2 uses
  store ptr %i.bif, ptr %i.do, align 8, !tbaa !280
  br label %_ZN9CenteringILi2EE8addValueERK3LocILi2EERK6VectorILi2Ed4FullE.exit211

_ZN9CenteringILi2EE8addValueERK3LocILi2EERK6VectorILi2Ed4FullE.exit211: ; preds = %bb.et, %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit683
  %i.big = phi ptr [ %i.bgw, %bb.et ], [ %i.bif, %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit683 ] ; 2 uses
  %i.bih = phi ptr [ %i.bgy, %bb.et ], [ %i.bie, %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit683 ] ; 2 uses
  %i.bii = phi ptr [ %i.bgu, %bb.et ], [ %.pre1014, %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit683 ] ; 4 uses
  %i.bij = phi ptr [ %i.bgv, %bb.et ], [ %.pre1013, %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit683 ] ; 4 uses
  %.not.i.i212 = icmp eq ptr %i.bij, %i.bii
  br i1 %.not.i.i212, label %bb.ey, label %bb.ex

bb.ex:                                            ; preds = %_ZN9CenteringILi2EE8addValueERK3LocILi2EERK6VectorILi2Ed4FullE.exit211
  store i32 0, ptr %i.bij, align 4, !tbaa !4
  %i.bik = getelementptr inbounds nuw i8, ptr %i.bij, i64 4
  store i32 0, ptr %i.bik, align 4, !tbaa !4
  %i.bil = getelementptr inbounds nuw i8, ptr %i.bij, i64 8
  store ptr %i.bil, ptr %i.by, align 8, !tbaa !264
  br label %_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit.i213

bb.ey:                                            ; preds = %_ZN9CenteringILi2EE8addValueERK3LocILi2EERK6VectorILi2Ed4FullE.exit211
  %i.bim = load ptr, ptr %i.a, align 8, !tbaa !267 ; 11 uses
  %i.bin = ptrtoint ptr %i.bii to i64             ; 3 uses
  %i.bio = ptrtoint ptr %i.bim to i64             ; 3 uses
  %i.bip = sub i64 %i.bin, %i.bio                 ; 4 uses
  %i.biq = icmp eq i64 %i.bip, 9223372036854775800
  br i1 %i.biq, label %bb.ez, label %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i722

bb.ez:                                            ; preds = %bb.ey
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.189) #46
  unreachable

_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i722: ; preds = %bb.ey
  %i.bir = ashr exact i64 %i.bip, 3               ; 3 uses
  %.sroa.speculated.i.i723 = call i64 @llvm.umax.i64(i64 %i.bir, i64 1)
  %i.bis = add nsw i64 %.sroa.speculated.i.i723, %i.bir ; 2 uses
  %i.bit = icmp ult i64 %i.bis, %i.bir
  %i.biu = call i64 @llvm.umin.i64(i64 %i.bis, i64 1152921504606846975)
  %i.biv = select i1 %i.bit, i64 1152921504606846975, i64 %i.biu ; 3 uses
  %.not.i.i724 = icmp ne i64 %i.biv, 0
  call void @llvm.assume(i1 %.not.i.i724)
  %i.biw = shl nuw nsw i64 %i.biv, 3
  %i.bix = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.biw) #45 ; 11 uses
  %i.biy = getelementptr inbounds nuw i8, ptr %i.bix, i64 %i.bip ; 2 uses
  store i32 0, ptr %i.biy, align 4, !tbaa !4
  %i.biz = getelementptr inbounds nuw i8, ptr %i.biy, i64 4
  store i32 0, ptr %i.biz, align 4, !tbaa !4
  %.not9.i.i.i.i.i.i725 = icmp eq ptr %i.bim, %i.bii
  br i1 %.not9.i.i.i.i.i.i725, label %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i737, label %.lr.ph.i.i.i.i.i.i726.preheader

.lr.ph.i.i.i.i.i.i726.preheader:                  ; preds = %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i722
  %85 = sub i64 %i.bin, %i.bio
  %86 = add i64 %85, -8                           ; 2 uses
  %i.bja = lshr i64 %86, 3
  %i.bjb = add nuw nsw i64 %i.bja, 1              ; 2 uses
  %min.iters.check2243 = icmp ult i64 %86, 120
  br i1 %min.iters.check2243, label %.lr.ph.i.i.i.i.i.i726.preheader2291, label %vector.memcheck2236

vector.memcheck2236:                              ; preds = %.lr.ph.i.i.i.i.i.i726.preheader
  %i.bjc = add i64 %i.bin, -8
  %i.bjd = sub i64 %i.bjc, %i.bio
  %i.bje = and i64 %i.bjd, -8
  %i.bjf = add i64 %i.bje, 8                      ; 2 uses
  %scevgep2237 = getelementptr i8, ptr %i.bix, i64 %i.bjf
  %scevgep2238 = getelementptr i8, ptr %i.bim, i64 %i.bjf
  %bound02239 = icmp ult ptr %i.bix, %scevgep2238
  %bound12240 = icmp ult ptr %i.bim, %scevgep2237
  %found.conflict2241 = and i1 %bound02239, %bound12240
  br i1 %found.conflict2241, label %.lr.ph.i.i.i.i.i.i726.preheader2291, label %vector.ph2244

vector.ph2244:                                    ; preds = %vector.memcheck2236
  %n.vec2246 = and i64 %i.bjb, 4611686018427387900 ; 3 uses
  %i.bjg = shl i64 %n.vec2246, 3                  ; 2 uses
  %i.bjh = getelementptr i8, ptr %i.bix, i64 %i.bjg ; 2 uses
  %i.bji = getelementptr i8, ptr %i.bim, i64 %i.bjg
  br label %vector.body2247

vector.body2247:                                  ; preds = %vector.body2247, %vector.ph2244
  %index2248 = phi i64 [ 0, %vector.ph2244 ], [ %index.next2261, %vector.body2247 ] ; 2 uses
  %i.bjj = shl i64 %index2248, 3                  ; 3 uses
  %i.bjk = or disjoint i64 %i.bjj, 16             ; 2 uses
  %next.gep2249 = getelementptr i8, ptr %i.bix, i64 %i.bjj
  %next.gep2250 = getelementptr i8, ptr %i.bix, i64 %i.bjk
  %next.gep2251 = getelementptr i8, ptr %i.bim, i64 %i.bjj
  %next.gep2252 = getelementptr i8, ptr %i.bim, i64 %i.bjk
  %wide.vec2253 = load <4 x i32>, ptr %next.gep2251, align 4, !tbaa !236, !alias.scope !626
  %wide.vec2256 = load <4 x i32>, ptr %next.gep2252, align 4, !tbaa !236, !alias.scope !626
  store <4 x i32> %wide.vec2253, ptr %next.gep2249, align 4, !tbaa !4, !alias.scope !629, !noalias !626
  store <4 x i32> %wide.vec2256, ptr %next.gep2250, align 4, !tbaa !4, !alias.scope !629, !noalias !626
  %index.next2261 = add nuw i64 %index2248, 4     ; 2 uses
  %i.bjl = icmp eq i64 %index.next2261, %n.vec2246
  br i1 %i.bjl, label %middle.block2262, label %vector.body2247, !llvm.loop !631

middle.block2262:                                 ; preds = %vector.body2247
  %cmp.n2263 = icmp eq i64 %i.bjb, %n.vec2246
  br i1 %cmp.n2263, label %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i737, label %.lr.ph.i.i.i.i.i.i726.preheader2291

.lr.ph.i.i.i.i.i.i726.preheader2291:              ; preds = %vector.memcheck2236, %.lr.ph.i.i.i.i.i.i726.preheader, %middle.block2262
  %.011.i.i.i.i.i.i727.ph = phi ptr [ %i.bix, %vector.memcheck2236 ], [ %i.bix, %.lr.ph.i.i.i.i.i.i726.preheader ], [ %i.bjh, %middle.block2262 ]
  %.0810.i.i.i.i.i.i728.ph = phi ptr [ %i.bim, %vector.memcheck2236 ], [ %i.bim, %.lr.ph.i.i.i.i.i.i726.preheader ], [ %i.bji, %middle.block2262 ]
  br label %.lr.ph.i.i.i.i.i.i726

.lr.ph.i.i.i.i.i.i726:                            ; preds = %.lr.ph.i.i.i.i.i.i726.preheader2291, %.lr.ph.i.i.i.i.i.i726
  %.011.i.i.i.i.i.i727 = phi ptr [ %i.bjr, %.lr.ph.i.i.i.i.i.i726 ], [ %.011.i.i.i.i.i.i727.ph, %.lr.ph.i.i.i.i.i.i726.preheader2291 ] ; 3 uses
  %.0810.i.i.i.i.i.i728 = phi ptr [ %i.bjq, %.lr.ph.i.i.i.i.i.i726 ], [ %.0810.i.i.i.i.i.i728.ph, %.lr.ph.i.i.i.i.i.i726.preheader2291 ] ; 3 uses
  %i.bjm = load i32, ptr %.0810.i.i.i.i.i.i728, align 4, !tbaa !236
  store i32 %i.bjm, ptr %.011.i.i.i.i.i.i727, align 4, !tbaa !4
  %i.bjn = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i727, i64 4
  %i.bjo = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i728, i64 4
  %i.bjp = load i32, ptr %i.bjo, align 4, !tbaa !236
  store i32 %i.bjp, ptr %i.bjn, align 4, !tbaa !4
  %i.bjq = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i728, i64 8 ; 2 uses
  %i.bjr = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i727, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i729 = icmp eq ptr %i.bjq, %i.bii
  br i1 %.not.i.i.i.i.i.i729, label %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i737, label %.lr.ph.i.i.i.i.i.i726, !llvm.loop !632

_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i737: ; preds = %.lr.ph.i.i.i.i.i.i726, %middle.block2262, %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i722
  %.0.lcssa.i.i.i.i.i.i731 = phi ptr [ %i.bix, %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i722 ], [ %i.bjh, %middle.block2262 ], [ %i.bjr, %.lr.ph.i.i.i.i.i.i726 ]
  %i.bjs = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i731, i64 8
  %.not.i25.i739 = icmp eq ptr %i.bim, null
  br i1 %.not.i25.i739, label %_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit740, label %bb.fa

bb.fa:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i737
  call void @_ZdlPvm(ptr noundef nonnull %i.bim, i64 noundef %i.bip) #48
  %.pre1015.pre = load ptr, ptr %i.dm, align 8, !tbaa !276
  %.pre1016.pre = load ptr, ptr %i.do, align 8, !tbaa !280
  br label %_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit740

_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit740: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i737, %bb.fa
  %.pre1016 = phi ptr [ %i.big, %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i737 ], [ %.pre1016.pre, %bb.fa ]
  %.pre1015 = phi ptr [ %i.bih, %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i737 ], [ %.pre1015.pre, %bb.fa ]
  store ptr %i.bix, ptr %i.a, align 8, !tbaa !267
  store ptr %i.bjs, ptr %i.by, align 8, !tbaa !264
  %i.bjt = getelementptr inbounds nuw [8 x i8], ptr %i.bix, i64 %i.biv
  store ptr %i.bjt, ptr %i.ca, align 8, !tbaa !268
  br label %_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit.i213

_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit.i213: ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit740, %bb.ex
  %i.bju = phi ptr [ %.pre1016, %_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit740 ], [ %i.big, %bb.ex ] ; 4 uses
  %i.bjv = phi ptr [ %.pre1015, %_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit740 ], [ %i.bih, %bb.ex ] ; 3 uses
  %.not.i3.i214 = icmp eq ptr %i.bjv, %i.bju
  br i1 %.not.i3.i214, label %bb.fc, label %bb.fb

bb.fb:                                            ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit.i213
  store <2 x double> <double 0.000000e+00, double 1.000000e+00>, ptr %i.bjv, align 8, !tbaa !247
  %i.bjw = getelementptr inbounds nuw i8, ptr %i.bjv, i64 16
  store ptr %i.bjw, ptr %i.dm, align 8, !tbaa !276
  br label %_ZN9CenteringILi2EE8addValueERK3LocILi2EERK6VectorILi2Ed4FullE.exit215

bb.fc:                                            ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit.i213
  %i.bjx = load ptr, ptr %i.bj, align 8, !tbaa !279 ; 11 uses
  %i.bjy = ptrtoint ptr %i.bju to i64             ; 3 uses
  %i.bjz = ptrtoint ptr %i.bjx to i64             ; 3 uses
  %i.bka = sub i64 %i.bjy, %i.bjz                 ; 4 uses
  %i.bkb = icmp eq i64 %i.bka, 9223372036854775792
  br i1 %i.bkb, label %bb.fd, label %_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i703

bb.fd:                                            ; preds = %bb.fc
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.189) #46
  unreachable

_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i703: ; preds = %bb.fc
  %i.bkc = ashr exact i64 %i.bka, 4               ; 3 uses
  %.sroa.speculated.i.i704 = call i64 @llvm.umax.i64(i64 %i.bkc, i64 1)
  %i.bkd = add nsw i64 %.sroa.speculated.i.i704, %i.bkc ; 2 uses
  %i.bke = icmp ult i64 %i.bkd, %i.bkc
  %i.bkf = call i64 @llvm.umin.i64(i64 %i.bkd, i64 576460752303423487)
  %i.bkg = select i1 %i.bke, i64 576460752303423487, i64 %i.bkf ; 3 uses
  %.not.i.i705 = icmp ne i64 %i.bkg, 0
  call void @llvm.assume(i1 %.not.i.i705)
  %i.bkh = shl nuw nsw i64 %i.bkg, 4
  %i.bki = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bkh) #45 ; 11 uses
  %i.bkj = getelementptr inbounds nuw i8, ptr %i.bki, i64 %i.bka
  store <2 x double> <double 0.000000e+00, double 1.000000e+00>, ptr %i.bkj, align 8, !tbaa !247
  %.not9.i.i.i.i.i.i706 = icmp eq ptr %i.bjx, %i.bju
  br i1 %.not9.i.i.i.i.i.i706, label %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i718, label %.lr.ph.i.i.i.i.i.i707.preheader

.lr.ph.i.i.i.i.i.i707.preheader:                  ; preds = %_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i703
  %87 = sub i64 %i.bjy, %i.bjz
  %88 = add i64 %87, -16                          ; 2 uses
  %i.bkk = lshr i64 %88, 4
  %i.bkl = add nuw nsw i64 %i.bkk, 1              ; 2 uses
  %min.iters.check2273 = icmp ult i64 %88, 240
  br i1 %min.iters.check2273, label %.lr.ph.i.i.i.i.i.i707.preheader2290, label %vector.memcheck2266

vector.memcheck2266:                              ; preds = %.lr.ph.i.i.i.i.i.i707.preheader
  %i.bkm = add i64 %i.bjy, -16
  %i.bkn = sub i64 %i.bkm, %i.bjz
  %i.bko = and i64 %i.bkn, -16
  %i.bkp = add i64 %i.bko, 16                     ; 2 uses
  %scevgep2267 = getelementptr i8, ptr %i.bki, i64 %i.bkp
  %scevgep2268 = getelementptr i8, ptr %i.bjx, i64 %i.bkp
  %bound02269 = icmp ult ptr %i.bki, %scevgep2268
  %bound12270 = icmp ult ptr %i.bjx, %scevgep2267
  %found.conflict2271 = and i1 %bound02269, %bound12270
  br i1 %found.conflict2271, label %.lr.ph.i.i.i.i.i.i707.preheader2290, label %vector.ph2274

vector.ph2274:                                    ; preds = %vector.memcheck2266
  %n.vec2276 = and i64 %i.bkl, 2305843009213693950 ; 3 uses
  %i.bkq = shl i64 %n.vec2276, 4                  ; 2 uses
  %i.bkr = getelementptr i8, ptr %i.bki, i64 %i.bkq ; 2 uses
  %i.bks = getelementptr i8, ptr %i.bjx, i64 %i.bkq
  br label %vector.body2277

vector.body2277:                                  ; preds = %vector.body2277, %vector.ph2274
  %index2278 = phi i64 [ 0, %vector.ph2274 ], [ %index.next2285, %vector.body2277 ] ; 2 uses
  %i.bkt = shl i64 %index2278, 4                  ; 3 uses
  %i.bku = or disjoint i64 %i.bkt, 16             ; 2 uses
  %next.gep2279 = getelementptr i8, ptr %i.bki, i64 %i.bkt
  %next.gep2280 = getelementptr i8, ptr %i.bki, i64 %i.bku
  %next.gep2281 = getelementptr i8, ptr %i.bjx, i64 %i.bkt
  %next.gep2282 = getelementptr i8, ptr %i.bjx, i64 %i.bku
  %wide.load2283 = load <2 x double>, ptr %next.gep2281, align 8, !tbaa !247, !alias.scope !633
  %wide.load2284 = load <2 x double>, ptr %next.gep2282, align 8, !tbaa !247, !alias.scope !633
  store <2 x double> %wide.load2283, ptr %next.gep2279, align 8, !tbaa !247, !alias.scope !636, !noalias !633
  store <2 x double> %wide.load2284, ptr %next.gep2280, align 8, !tbaa !247, !alias.scope !636, !noalias !633
  %index.next2285 = add nuw i64 %index2278, 2     ; 2 uses
  %i.bkv = icmp eq i64 %index.next2285, %n.vec2276
  br i1 %i.bkv, label %middle.block2286, label %vector.body2277, !llvm.loop !638

middle.block2286:                                 ; preds = %vector.body2277
  %cmp.n2287 = icmp eq i64 %i.bkl, %n.vec2276
  br i1 %cmp.n2287, label %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i718, label %.lr.ph.i.i.i.i.i.i707.preheader2290

.lr.ph.i.i.i.i.i.i707.preheader2290:              ; preds = %vector.memcheck2266, %.lr.ph.i.i.i.i.i.i707.preheader, %middle.block2286
  %.011.i.i.i.i.i.i708.ph = phi ptr [ %i.bki, %vector.memcheck2266 ], [ %i.bki, %.lr.ph.i.i.i.i.i.i707.preheader ], [ %i.bkr, %middle.block2286 ]
  %.0810.i.i.i.i.i.i709.ph = phi ptr [ %i.bjx, %vector.memcheck2266 ], [ %i.bjx, %.lr.ph.i.i.i.i.i.i707.preheader ], [ %i.bks, %middle.block2286 ]
  br label %.lr.ph.i.i.i.i.i.i707

.lr.ph.i.i.i.i.i.i707:                            ; preds = %.lr.ph.i.i.i.i.i.i707.preheader2290, %.lr.ph.i.i.i.i.i.i707
  %.011.i.i.i.i.i.i708 = phi ptr [ %i.blb, %.lr.ph.i.i.i.i.i.i707 ], [ %.011.i.i.i.i.i.i708.ph, %.lr.ph.i.i.i.i.i.i707.preheader2290 ] ; 3 uses
  %.0810.i.i.i.i.i.i709 = phi ptr [ %i.bla, %.lr.ph.i.i.i.i.i.i707 ], [ %.0810.i.i.i.i.i.i709.ph, %.lr.ph.i.i.i.i.i.i707.preheader2290 ] ; 3 uses
  %i.bkw = load double, ptr %.0810.i.i.i.i.i.i709, align 8, !tbaa !247
  store double %i.bkw, ptr %.011.i.i.i.i.i.i708, align 8, !tbaa !247
  %i.bkx = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i708, i64 8
  %i.bky = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i709, i64 8
  %i.bkz = load double, ptr %i.bky, align 8, !tbaa !247
  store double %i.bkz, ptr %i.bkx, align 8, !tbaa !247
  %i.bla = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i709, i64 16 ; 2 uses
  %i.blb = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i708, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i710 = icmp eq ptr %i.bla, %i.bju
  br i1 %.not.i.i.i.i.i.i710, label %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i718, label %.lr.ph.i.i.i.i.i.i707, !llvm.loop !639

_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i718: ; preds = %.lr.ph.i.i.i.i.i.i707, %middle.block2286, %_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i703
  %.0.lcssa.i.i.i.i.i.i712 = phi ptr [ %i.bki, %_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i703 ], [ %i.bkr, %middle.block2286 ], [ %i.blb, %.lr.ph.i.i.i.i.i.i707 ]
  %i.blc = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i712, i64 16
  %.not.i25.i720 = icmp eq ptr %i.bjx, null
  br i1 %.not.i25.i720, label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit721, label %bb.fe

bb.fe:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i718
  call void @_ZdlPvm(ptr noundef nonnull %i.bjx, i64 noundef %i.bka) #48
  br label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit721

_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit721: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i718, %bb.fe
  store ptr %i.bki, ptr %i.bj, align 8, !tbaa !279
  store ptr %i.blc, ptr %i.dm, align 8, !tbaa !276
  %i.bld = getelementptr inbounds nuw [16 x i8], ptr %i.bki, i64 %i.bkg
  store ptr %i.bld, ptr %i.do, align 8, !tbaa !280
  br label %_ZN9CenteringILi2EE8addValueERK3LocILi2EERK6VectorILi2Ed4FullE.exit215

_ZN9CenteringILi2EE8addValueERK3LocILi2EERK6VectorILi2Ed4FullE.exit215: ; preds = %bb.fb, %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit721
  %i.ble = load ptr, ptr @_ZN18CanonicalCenteringILi2EE17centering_table_mE, align 8, !tbaa !258
  %i.blf = load ptr, ptr %i.ble, align 8, !tbaa !260
  %i.blg = getelementptr inbounds nuw i8, ptr %i.blf, i64 8
  %i.blh = load ptr, ptr %i.blg, align 8, !tbaa !262 ; 3 uses
  %i.bli = getelementptr inbounds nuw i8, ptr %i.blh, i64 168
  %i.blj = load i64, ptr %1, align 8
  store i64 %i.blj, ptr %i.bli, align 8
  %i.blk = getelementptr inbounds nuw i8, ptr %i.blh, i64 176
  %i.bll = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI3LocILi2EESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.blk, ptr noundef nonnull align 8 dereferenceable(24) %i.a) ; 0 uses
  %i.blm = getelementptr inbounds nuw i8, ptr %i.blh, i64 200
  %i.bln = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.blm, ptr noundef nonnull align 8 dereferenceable(24) %i.bj) ; 0 uses
  %i.blo = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.blp = load ptr, ptr %i.blo, align 8, !tbaa !279 ; 3 uses
  %.not.i.i.i220 = icmp eq ptr %i.blp, null
  br i1 %.not.i.i.i220, label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit221, label %bb.fn

bb.ff:                                            ; preds = %.preheader.preheader
  store ptr %i.auy, ptr %i.fi, align 8, !tbaa !264
  br label %_ZNSt6vectorI3LocILi2EESaIS1_EE5clearEv.exit217

_ZNSt6vectorI3LocILi2EESaIS1_EE5clearEv.exit217:  ; preds = %.preheader.preheader, %bb.ff
  %i.blq = load ptr, ptr %3, align 16, !tbaa !279 ; 2 uses
  %i.blr = load ptr, ptr %i.gw, align 8, !tbaa !276
  %.not.i.i218 = icmp eq ptr %i.blr, %i.blq
  br i1 %.not.i.i218, label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE5clearEv.exit219, label %bb.fg

bb.fg:                                            ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EE5clearEv.exit217
  store ptr %i.blq, ptr %i.gw, align 8, !tbaa !276
  br label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE5clearEv.exit219

_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE5clearEv.exit219: ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EE5clearEv.exit217, %bb.fg
  %i.bls = load ptr, ptr %i.ii, align 8, !tbaa !267 ; 2 uses
  %i.blt = load ptr, ptr %i.amn, align 16, !tbaa !264
  %.not.i.i216.1 = icmp eq ptr %i.blt, %i.bls
  br i1 %.not.i.i216.1, label %_ZNSt6vectorI3LocILi2EESaIS1_EE5clearEv.exit217.1, label %bb.fh

bb.fh:                                            ; preds = %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE5clearEv.exit219
  store ptr %i.bls, ptr %i.amn, align 16, !tbaa !264
  br label %_ZNSt6vectorI3LocILi2EESaIS1_EE5clearEv.exit217.1

_ZNSt6vectorI3LocILi2EESaIS1_EE5clearEv.exit217.1: ; preds = %bb.fh, %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE5clearEv.exit219
  %i.blu = load ptr, ptr %i.ik, align 8, !tbaa !279 ; 2 uses
  %i.blv = load ptr, ptr %i.amq, align 16, !tbaa !276
  %.not.i.i218.1 = icmp eq ptr %i.blv, %i.blu
  br i1 %.not.i.i218.1, label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE5clearEv.exit219.1, label %bb.fi

bb.fi:                                            ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EE5clearEv.exit217.1
  store ptr %i.blu, ptr %i.amq, align 16, !tbaa !276
  br label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE5clearEv.exit219.1

_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE5clearEv.exit219.1: ; preds = %bb.fi, %_ZNSt6vectorI3LocILi2EESaIS1_EE5clearEv.exit217.1
  %i.blw = load ptr, ptr %i.lm, align 16, !tbaa !267 ; 2 uses
  %i.blx = load ptr, ptr %i.amt, align 8, !tbaa !264
  %.not.i.i216.11001 = icmp eq ptr %i.blx, %i.blw
  br i1 %.not.i.i216.11001, label %_ZNSt6vectorI3LocILi2EESaIS1_EE5clearEv.exit217.11003, label %bb.fj

bb.fj:                                            ; preds = %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE5clearEv.exit219.1
  store ptr %i.blw, ptr %i.amt, align 8, !tbaa !264
  br label %_ZNSt6vectorI3LocILi2EESaIS1_EE5clearEv.exit217.11003

_ZNSt6vectorI3LocILi2EESaIS1_EE5clearEv.exit217.11003: ; preds = %bb.fj, %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE5clearEv.exit219.1
  %i.bly = load ptr, ptr %i.ln, align 16, !tbaa !279 ; 2 uses
  %i.blz = load ptr, ptr %i.amw, align 8, !tbaa !276
  %.not.i.i218.11002 = icmp eq ptr %i.blz, %i.bly
  br i1 %.not.i.i218.11002, label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE5clearEv.exit219.11004, label %bb.fk

bb.fk:                                            ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EE5clearEv.exit217.11003
  store ptr %i.bly, ptr %i.amw, align 8, !tbaa !276
  br label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE5clearEv.exit219.11004

_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE5clearEv.exit219.11004: ; preds = %bb.fk, %_ZNSt6vectorI3LocILi2EESaIS1_EE5clearEv.exit217.11003
  %i.bma = load ptr, ptr %i.amy, align 8, !tbaa !267 ; 2 uses
  %i.bmb = load ptr, ptr %i.ana, align 16, !tbaa !264
  %.not.i.i216.1.1 = icmp eq ptr %i.bmb, %i.bma
  br i1 %.not.i.i216.1.1, label %_ZNSt6vectorI3LocILi2EESaIS1_EE5clearEv.exit217.1.1, label %bb.fl

bb.fl:                                            ; preds = %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE5clearEv.exit219.11004
  store ptr %i.bma, ptr %i.ana, align 16, !tbaa !264
  br label %_ZNSt6vectorI3LocILi2EESaIS1_EE5clearEv.exit217.1.1

_ZNSt6vectorI3LocILi2EESaIS1_EE5clearEv.exit217.1.1: ; preds = %bb.fl, %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE5clearEv.exit219.11004
  %i.bmc = load ptr, ptr %i.anc, align 8, !tbaa !279 ; 2 uses
  %i.bmd = load ptr, ptr %i.ane, align 16, !tbaa !276
  %.not.i.i218.1.1 = icmp eq ptr %i.bmd, %i.bmc
  br i1 %.not.i.i218.1.1, label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE5clearEv.exit219.1.1, label %bb.fm

bb.fm:                                            ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EE5clearEv.exit217.1.1
  store ptr %i.bmc, ptr %i.ane, align 16, !tbaa !276
  br label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE5clearEv.exit219.1.1

_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE5clearEv.exit219.1.1: ; preds = %bb.fm, %_ZNSt6vectorI3LocILi2EESaIS1_EE5clearEv.exit217.1.1
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #47
  %i.bme = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %15, i8 0, i64 56, i1 false)
  store i64 0, ptr %1, align 8
  %i.bmf = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI3LocILi2EESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.bme) ; 0 uses
  %i.bmg = getelementptr inbounds nuw i8, ptr %15, i64 32 ; 2 uses
  %i.bmh = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.bj, ptr noundef nonnull align 8 dereferenceable(24) %i.bmg) ; 0 uses
  %i.bmi = load ptr, ptr %i.bmg, align 8, !tbaa !279 ; 3 uses
  %.not.i.i.i.i188 = icmp eq ptr %i.bmi, null
  br i1 %.not.i.i.i.i188, label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit.i189, label %bb.dn

bb.fn:                                            ; preds = %_ZN9CenteringILi2EE8addValueERK3LocILi2EERK6VectorILi2Ed4FullE.exit215
  %i.bmj = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.bmk = load ptr, ptr %i.bmj, align 8, !tbaa !280
  %i.bml = ptrtoint ptr %i.bmk to i64
  %i.bmm = ptrtoint ptr %i.blp to i64
  %i.bmn = sub i64 %i.bml, %i.bmm
  call void @_ZdlPvm(ptr noundef nonnull %i.blp, i64 noundef %i.bmn) #48
  br label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit221

_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit221: ; preds = %_ZN9CenteringILi2EE8addValueERK3LocILi2EERK6VectorILi2Ed4FullE.exit215, %bb.fn
  %i.bmo = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.bmp = load ptr, ptr %i.bmo, align 16, !tbaa !279 ; 3 uses
  %.not.i.i.i220.1 = icmp eq ptr %i.bmp, null
  br i1 %.not.i.i.i220.1, label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit221.1, label %bb.fo

bb.fo:                                            ; preds = %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit221
  %i.bmq = getelementptr inbounds nuw i8, ptr %3, i64 64
end_hunk_1
begin_hunk_2_@_ZN18CanonicalCenteringILi2EEC2Ev:bb.a
  %i.bna = ptrtoint ptr %i.bmw to i64
  %i.bnb = sub i64 %i.bmz, %i.bna
  call void @_ZdlPvm(ptr noundef nonnull %i.bmw, i64 noundef %i.bnb) #48
  br label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit221.2

_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit221.2: ; preds = %bb.fp, %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit221.1
  %i.bnc = load ptr, ptr %3, align 16, !tbaa !279 ; 3 uses
  %.not.i.i.i220.3 = icmp eq ptr %i.bnc, null
  br i1 %.not.i.i.i220.3, label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit221.3, label %bb.fq

bb.fq:                                            ; preds = %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit221.2
  %i.bnd = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bne = load ptr, ptr %i.bnd, align 16, !tbaa !280
  %i.bnf = ptrtoint ptr %i.bne to i64
  %i.bng = ptrtoint ptr %i.bnc to i64
  %i.bnh = sub i64 %i.bnf, %i.bng
  call void @_ZdlPvm(ptr noundef nonnull %i.bnc, i64 noundef %i.bnh) #48
  br label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit221.3

_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit221.3: ; preds = %bb.fq, %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit221.2
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #47
  %i.bni = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.bnj = load ptr, ptr %i.bni, align 8, !tbaa !267 ; 3 uses
  %.not.i.i.i222 = icmp eq ptr %i.bnj, null
  br i1 %.not.i.i.i222, label %_ZNSt6vectorI3LocILi2EESaIS1_EED2Ev.exit223, label %bb.fr

bb.fr:                                            ; preds = %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit221.3
  %i.bnk = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.bnl = load ptr, ptr %i.bnk, align 8, !tbaa !268
  %i.bnm = ptrtoint ptr %i.bnl to i64
  %i.bnn = ptrtoint ptr %i.bnj to i64
  %i.bno = sub i64 %i.bnm, %i.bnn
  call void @_ZdlPvm(ptr noundef nonnull %i.bnj, i64 noundef %i.bno) #48
  br label %_ZNSt6vectorI3LocILi2EESaIS1_EED2Ev.exit223

_ZNSt6vectorI3LocILi2EESaIS1_EED2Ev.exit223:      ; preds = %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit221.3, %bb.fr
  %i.bnp = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.bnq = load ptr, ptr %i.bnp, align 16, !tbaa !267 ; 3 uses
  %.not.i.i.i222.1 = icmp eq ptr %i.bnq, null
  br i1 %.not.i.i.i222.1, label %_ZNSt6vectorI3LocILi2EESaIS1_EED2Ev.exit223.1, label %bb.fs

bb.fs:                                            ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EED2Ev.exit223
  %i.bnr = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.bns = load ptr, ptr %i.bnr, align 16, !tbaa !268
  %i.bnt = ptrtoint ptr %i.bns to i64
  %i.bnu = ptrtoint ptr %i.bnq to i64
  %i.bnv = sub i64 %i.bnt, %i.bnu
  call void @_ZdlPvm(ptr noundef nonnull %i.bnq, i64 noundef %i.bnv) #48
  br label %_ZNSt6vectorI3LocILi2EESaIS1_EED2Ev.exit223.1

_ZNSt6vectorI3LocILi2EESaIS1_EED2Ev.exit223.1:    ; preds = %bb.fs, %_ZNSt6vectorI3LocILi2EESaIS1_EED2Ev.exit223
  %i.bnw = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bnx = load ptr, ptr %i.bnw, align 8, !tbaa !267 ; 3 uses
  %.not.i.i.i222.2 = icmp eq ptr %i.bnx, null
  br i1 %.not.i.i.i222.2, label %_ZNSt6vectorI3LocILi2EESaIS1_EED2Ev.exit223.2, label %bb.ft

bb.ft:                                            ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EED2Ev.exit223.1
  %i.bny = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.bnz = load ptr, ptr %i.bny, align 8, !tbaa !268
  %i.boa = ptrtoint ptr %i.bnz to i64
  %i.bob = ptrtoint ptr %i.bnx to i64
  %i.boc = sub i64 %i.boa, %i.bob
  call void @_ZdlPvm(ptr noundef nonnull %i.bnx, i64 noundef %i.boc) #48
  br label %_ZNSt6vectorI3LocILi2EESaIS1_EED2Ev.exit223.2

_ZNSt6vectorI3LocILi2EESaIS1_EED2Ev.exit223.2:    ; preds = %bb.ft, %_ZNSt6vectorI3LocILi2EESaIS1_EED2Ev.exit223.1
  %i.bod = load ptr, ptr %2, align 16, !tbaa !267 ; 3 uses
  %.not.i.i.i222.3 = icmp eq ptr %i.bod, null
  br i1 %.not.i.i.i222.3, label %_ZNSt6vectorI3LocILi2EESaIS1_EED2Ev.exit223.3, label %bb.fu

bb.fu:                                            ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EED2Ev.exit223.2
  %i.boe = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bof = load ptr, ptr %i.boe, align 16, !tbaa !268
  %i.bog = ptrtoint ptr %i.bof to i64
  %i.boh = ptrtoint ptr %i.bod to i64
  %i.boi = sub i64 %i.bog, %i.boh
  call void @_ZdlPvm(ptr noundef nonnull %i.bod, i64 noundef %i.boi) #48
  br label %_ZNSt6vectorI3LocILi2EESaIS1_EED2Ev.exit223.3

_ZNSt6vectorI3LocILi2EESaIS1_EED2Ev.exit223.3:    ; preds = %bb.fu, %_ZNSt6vectorI3LocILi2EESaIS1_EED2Ev.exit223.2
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #47
  %i.boj = load ptr, ptr %i.bj, align 8, !tbaa !279 ; 3 uses
  %.not.i.i.i.i224 = icmp eq ptr %i.boj, null
  br i1 %.not.i.i.i.i224, label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit.i225, label %bb.fv

bb.fv:                                            ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EED2Ev.exit223.3
  %i.bok = load ptr, ptr %i.do, align 8, !tbaa !280
  %i.bol = ptrtoint ptr %i.bok to i64
  %i.bom = ptrtoint ptr %i.boj to i64
  %i.bon = sub i64 %i.bol, %i.bom
  call void @_ZdlPvm(ptr noundef nonnull %i.boj, i64 noundef %i.bon) #48
  br label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit.i225

_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit.i225: ; preds = %bb.fv, %_ZNSt6vectorI3LocILi2EESaIS1_EED2Ev.exit223.3
  %i.boo = load ptr, ptr %i.a, align 8, !tbaa !267 ; 3 uses
  %.not.i.i.i1.i226 = icmp eq ptr %i.boo, null
  br i1 %.not.i.i.i1.i226, label %_ZN9CenteringILi2EED2Ev.exit227, label %bb.fw

bb.fw:                                            ; preds = %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit.i225
  %i.bop = load ptr, ptr %i.ca, align 8, !tbaa !268
  %i.boq = ptrtoint ptr %i.bop to i64
  %i.bor = ptrtoint ptr %i.boo to i64
  %i.bos = sub i64 %i.boq, %i.bor
  call void @_ZdlPvm(ptr noundef nonnull %i.boo, i64 noundef %i.bos) #48
  br label %_ZN9CenteringILi2EED2Ev.exit227

_ZN9CenteringILi2EED2Ev.exit227:                  ; preds = %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit.i225, %bb.fw
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #47
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr dso_local void @_ZN18CanonicalCenteringILi2EE8addValueERSt6vectorI3LocILi2EESaIS3_EERS1_I6VectorILi2Ed4FullESaIS9_EERKS3_RKS9_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !264  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !268
  %.not.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %2, align 4, !tbaa !236
  store i32 %i.e, ptr %i.b, align 4, !tbaa !4
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !236
  store i32 %i.h, ptr %i.f, align 4, !tbaa !4
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.i, ptr %i.a, align 8, !tbaa !264
  br label %_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit

bb.c:                                             ; preds = %bb.a
  tail call void @_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.b, ptr noundef nonnull align 4 dereferenceable(8) %2)
  br label %_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit: ; preds = %bb.b, %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !276  ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !280
  %.not.i4 = icmp eq ptr %i.k, %i.m
  br i1 %.not.i4, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit
  %i.n = load double, ptr %3, align 8, !tbaa !247
  store double %i.n, ptr %i.k, align 8, !tbaa !247
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.q = load double, ptr %i.p, align 8, !tbaa !247
  store double %i.q, ptr %i.o, align 8, !tbaa !247
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %i.r, ptr %i.j, align 8, !tbaa !276
  br label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE9push_backERKS2_.exit

bb.e:                                             ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit
  tail call void @_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.k, ptr noundef nonnull align 8 dereferenceable(16) %3)
  br label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE9push_backERKS2_.exit: ; preds = %bb.d, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI3LocILi2EESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !264  ; 6 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !267    ; 24 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 5 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 5 uses
  %i.f = sub i64 %i.d, %i.e                       ; 7 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !268
  %i.j = load ptr, ptr %0, align 8, !tbaa !267    ; 22 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64                 ; 5 uses
  %i.m = sub i64 %i.k, %i.l                       ; 2 uses
  %i.n = icmp ugt i64 %i.f, %i.m
  br i1 %i.n, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.o = icmp ugt i64 %i.g, 1152921504606846975
  br i1 %i.o, label %bb.d, label %_ZNSt12_Vector_baseI3LocILi2EESaIS1_EE11_M_allocateEm.exit.i, !prof !44

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #46
  unreachable

_ZNSt12_Vector_baseI3LocILi2EESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #45 ; 10 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorI3LocILi2EESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNSt12_Vector_baseI3LocILi2EESaIS1_EE11_M_allocateEm.exit.i
  %2 = sub i64 %i.d, %i.e
  %3 = add i64 %2, -8                             ; 2 uses
  %i.q = lshr i64 %3, 3
  %i.r = add nuw nsw i64 %i.q, 1                  ; 2 uses
  %min.iters.check125 = icmp ult i64 %3, 120
  br i1 %min.iters.check125, label %.lr.ph.i.i.i.i.i.preheader148, label %vector.memcheck118

vector.memcheck118:                               ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.s = add i64 %i.d, -8
  %i.t = sub i64 %i.s, %i.e
  %i.u = and i64 %i.t, -8
  %i.v = add i64 %i.u, 8                          ; 2 uses
  %scevgep119 = getelementptr i8, ptr %i.p, i64 %i.v
  %scevgep120 = getelementptr i8, ptr %i.c, i64 %i.v
  %bound0121 = icmp ult ptr %i.p, %scevgep120
  %bound1122 = icmp ult ptr %i.c, %scevgep119
  %found.conflict123 = and i1 %bound0121, %bound1122
  br i1 %found.conflict123, label %.lr.ph.i.i.i.i.i.preheader148, label %vector.ph126

vector.ph126:                                     ; preds = %vector.memcheck118
  %n.vec128 = and i64 %i.r, 4611686018427387900   ; 3 uses
  %i.w = shl i64 %n.vec128, 3                     ; 2 uses
  %i.x = getelementptr i8, ptr %i.p, i64 %i.w
  %i.y = getelementptr i8, ptr %i.c, i64 %i.w
  br label %vector.body129

vector.body129:                                   ; preds = %vector.body129, %vector.ph126
  %index130 = phi i64 [ 0, %vector.ph126 ], [ %index.next143, %vector.body129 ] ; 2 uses
  %i.z = shl i64 %index130, 3                     ; 3 uses
  %i.aa = or disjoint i64 %i.z, 16                ; 2 uses
  %next.gep131 = getelementptr i8, ptr %i.p, i64 %i.z
  %next.gep132 = getelementptr i8, ptr %i.p, i64 %i.aa
  %next.gep133 = getelementptr i8, ptr %i.c, i64 %i.z
  %next.gep134 = getelementptr i8, ptr %i.c, i64 %i.aa
  %wide.vec135 = load <4 x i32>, ptr %next.gep133, align 4, !tbaa !236, !alias.scope !640
  %wide.vec138 = load <4 x i32>, ptr %next.gep134, align 4, !tbaa !236, !alias.scope !640
  store <4 x i32> %wide.vec135, ptr %next.gep131, align 4, !tbaa !4, !alias.scope !643, !noalias !640
  store <4 x i32> %wide.vec138, ptr %next.gep132, align 4, !tbaa !4, !alias.scope !643, !noalias !640
  %index.next143 = add nuw i64 %index130, 4       ; 2 uses
  %i.ab = icmp eq i64 %index.next143, %n.vec128
  br i1 %i.ab, label %middle.block144, label %vector.body129, !llvm.loop !645

middle.block144:                                  ; preds = %vector.body129
  %cmp.n145 = icmp eq i64 %i.r, %n.vec128
  br i1 %cmp.n145, label %_ZNSt6vectorI3LocILi2EESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit, label %.lr.ph.i.i.i.i.i.preheader148

.lr.ph.i.i.i.i.i.preheader148:                    ; preds = %vector.memcheck118, %.lr.ph.i.i.i.i.i.preheader, %middle.block144
  %.09.i.i.i.i.i.ph = phi ptr [ %i.p, %vector.memcheck118 ], [ %i.p, %.lr.ph.i.i.i.i.i.preheader ], [ %i.x, %middle.block144 ]
  %.sroa.04.08.i.i.i.i.i.ph = phi ptr [ %i.c, %vector.memcheck118 ], [ %i.c, %.lr.ph.i.i.i.i.i.preheader ], [ %i.y, %middle.block144 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader148, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i ], [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader148 ] ; 3 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i ], [ %.sroa.04.08.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader148 ] ; 3 uses
  %i.ac = load i32, ptr %.sroa.04.08.i.i.i.i.i, align 4, !tbaa !236
  store i32 %i.ac, ptr %.09.i.i.i.i.i, align 4, !tbaa !4
  %i.ad = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 4
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !236
  store i32 %i.af, ptr %i.ad, align 4, !tbaa !4
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i = icmp eq ptr %i.ag, %i.b
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorI3LocILi2EESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !646

_ZNSt6vectorI3LocILi2EESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit: ; preds = %.lr.ph.i.i.i.i.i, %middle.block144, %_ZNSt12_Vector_baseI3LocILi2EESaIS1_EE11_M_allocateEm.exit.i
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseI3LocILi2EESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.m) #48
  br label %_ZNSt12_Vector_baseI3LocILi2EESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseI3LocILi2EESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit, %bb.e
  store ptr %i.p, ptr %0, align 8, !tbaa !267
  %i.ai = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.f
  store ptr %i.ai, ptr %i.h, align 8, !tbaa !268
  br label %_ZSt22__uninitialized_copy_aIP3LocILi2EES2_S1_ET0_T_S4_S3_RSaIT1_E.exit

bb.f:                                             ; preds = %bb.b
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !264 ; 9 uses
  %i.al = ptrtoint ptr %i.ak to i64               ; 4 uses
  %i.am = sub i64 %i.al, %i.l                     ; 4 uses
  %.not24 = icmp ult i64 %i.am, %i.f
  br i1 %.not24, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.an = icmp sgt i64 %i.g, 0
  br i1 %i.an, label %.lr.ph.i.i.i.i.i25.preheader, label %_ZSt22__uninitialized_copy_aIP3LocILi2EES2_S1_ET0_T_S4_S3_RSaIT1_E.exit

.lr.ph.i.i.i.i.i25.preheader:                     ; preds = %bb.g
  %min.iters.check = icmp ult i64 %i.g, 6
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i25.preheader151, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i25.preheader
  %scevgep = getelementptr i8, ptr %i.j, i64 %i.f
  %bound0 = icmp ult ptr %i.j, %i.b
  %bound1 = icmp ult ptr %i.c, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i25.preheader151, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.g, 9223372036854775804      ; 3 uses
  %i.ao = and i64 %i.g, 3
  %i.ap = shl i64 %n.vec, 3                       ; 2 uses
  %i.aq = getelementptr i8, ptr %i.j, i64 %i.ap
  %i.ar = getelementptr i8, ptr %i.c, i64 %i.ap
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.as = shl i64 %index, 3                       ; 3 uses
  %i.at = or disjoint i64 %i.as, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %i.j, i64 %i.as
  %next.gep47 = getelementptr i8, ptr %i.j, i64 %i.at
  %next.gep48 = getelementptr i8, ptr %i.c, i64 %i.as
  %next.gep49 = getelementptr i8, ptr %i.c, i64 %i.at
  %wide.vec = load <4 x i32>, ptr %next.gep48, align 4, !tbaa !236, !alias.scope !647
  %wide.vec51 = load <4 x i32>, ptr %next.gep49, align 4, !tbaa !236, !alias.scope !647
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !4, !alias.scope !650, !noalias !647
  store <4 x i32> %wide.vec51, ptr %next.gep47, align 4, !tbaa !4, !alias.scope !650, !noalias !647
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.au = icmp eq i64 %index.next, %n.vec
  br i1 %i.au, label %middle.block, label %vector.body, !llvm.loop !652

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.g, %n.vec
  br i1 %cmp.n, label %_ZSt22__uninitialized_copy_aIP3LocILi2EES2_S1_ET0_T_S4_S3_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.i25.preheader151

.lr.ph.i.i.i.i.i25.preheader151:                  ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i25.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi i64 [ %i.g, %vector.memcheck ], [ %i.g, %.lr.ph.i.i.i.i.i25.preheader ], [ %i.ao, %middle.block ]
  %.0811.i.i.i.i.i.ph = phi ptr [ %i.j, %vector.memcheck ], [ %i.j, %.lr.ph.i.i.i.i.i25.preheader ], [ %i.aq, %middle.block ]
  %.0910.i.i.i.i.i.ph = phi ptr [ %i.c, %vector.memcheck ], [ %i.c, %.lr.ph.i.i.i.i.i25.preheader ], [ %i.ar, %middle.block ]
  br label %.lr.ph.i.i.i.i.i25

.lr.ph.i.i.i.i.i25:                               ; preds = %.lr.ph.i.i.i.i.i25.preheader151, %.lr.ph.i.i.i.i.i25
  %.012.i.i.i.i.i = phi i64 [ %i.bb, %.lr.ph.i.i.i.i.i25 ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i25.preheader151 ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i25 ], [ %.0811.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i25.preheader151 ] ; 3 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i25 ], [ %.0910.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i25.preheader151 ] ; 3 uses
  %i.av = load i32, ptr %.0910.i.i.i.i.i, align 4, !tbaa !236
  store i32 %i.av, ptr %.0811.i.i.i.i.i, align 4, !tbaa !4
  %i.aw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 4
  %i.ax = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 4
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !236
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !4
  %i.az = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  %i.bb = add nsw i64 %.012.i.i.i.i.i, -1
  %i.bc = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.bc, label %.lr.ph.i.i.i.i.i25, label %_ZSt22__uninitialized_copy_aIP3LocILi2EES2_S1_ET0_T_S4_S3_RSaIT1_E.exit, !llvm.loop !653

bb.h:                                             ; preds = %bb.f
  %i.bd = getelementptr i8, ptr %i.c, i64 %i.am   ; 7 uses
  %i.be = ashr exact i64 %i.am, 3                 ; 7 uses
  %i.bf = icmp sgt i64 %i.be, 0
  br i1 %i.bf, label %.lr.ph.i.i.i.i.i27.preheader, label %_ZSt4copyIP3LocILi2EES2_ET0_T_S4_S3_.exit

.lr.ph.i.i.i.i.i27.preheader:                     ; preds = %bb.h
  %min.iters.check64 = icmp ult i64 %i.be, 6
  br i1 %min.iters.check64, label %.lr.ph.i.i.i.i.i27.preheader150, label %vector.memcheck57

vector.memcheck57:                                ; preds = %.lr.ph.i.i.i.i.i27.preheader
  %scevgep59 = getelementptr i8, ptr %i.c, i64 %i.am
  %bound060 = icmp ult ptr %i.j, %scevgep59
  %bound161 = icmp ult ptr %i.c, %i.ak
  %found.conflict62 = and i1 %bound060, %bound161
  br i1 %found.conflict62, label %.lr.ph.i.i.i.i.i27.preheader150, label %vector.ph65

vector.ph65:                                      ; preds = %vector.memcheck57
  %n.vec67 = and i64 %i.be, 9223372036854775804   ; 3 uses
  %i.bg = and i64 %i.be, 3
  %i.bh = shl i64 %n.vec67, 3                     ; 2 uses
  %i.bi = getelementptr i8, ptr %i.j, i64 %i.bh
  %i.bj = getelementptr i8, ptr %i.c, i64 %i.bh
  br label %vector.body68

vector.body68:                                    ; preds = %vector.body68, %vector.ph65
  %index69 = phi i64 [ 0, %vector.ph65 ], [ %index.next82, %vector.body68 ] ; 2 uses
  %i.bk = shl i64 %index69, 3                     ; 3 uses
  %i.bl = or disjoint i64 %i.bk, 16               ; 2 uses
  %next.gep70 = getelementptr i8, ptr %i.j, i64 %i.bk
  %next.gep71 = getelementptr i8, ptr %i.j, i64 %i.bl
  %next.gep72 = getelementptr i8, ptr %i.c, i64 %i.bk
  %next.gep73 = getelementptr i8, ptr %i.c, i64 %i.bl
  %wide.vec74 = load <4 x i32>, ptr %next.gep72, align 4, !tbaa !236, !alias.scope !654
  %wide.vec77 = load <4 x i32>, ptr %next.gep73, align 4, !tbaa !236, !alias.scope !654
  store <4 x i32> %wide.vec74, ptr %next.gep70, align 4, !tbaa !4, !alias.scope !657, !noalias !654
  store <4 x i32> %wide.vec77, ptr %next.gep71, align 4, !tbaa !4, !alias.scope !657, !noalias !654
  %index.next82 = add nuw i64 %index69, 4         ; 2 uses
  %i.bm = icmp eq i64 %index.next82, %n.vec67
  br i1 %i.bm, label %middle.block83, label %vector.body68, !llvm.loop !659

middle.block83:                                   ; preds = %vector.body68
  %cmp.n84 = icmp eq i64 %i.be, %n.vec67
  br i1 %cmp.n84, label %_ZSt4copyIP3LocILi2EES2_ET0_T_S4_S3_.exit, label %.lr.ph.i.i.i.i.i27.preheader150

.lr.ph.i.i.i.i.i27.preheader150:                  ; preds = %vector.memcheck57, %.lr.ph.i.i.i.i.i27.preheader, %middle.block83
  %.012.i.i.i.i.i28.ph = phi i64 [ %i.be, %vector.memcheck57 ], [ %i.be, %.lr.ph.i.i.i.i.i27.preheader ], [ %i.bg, %middle.block83 ]
  %.0811.i.i.i.i.i29.ph = phi ptr [ %i.j, %vector.memcheck57 ], [ %i.j, %.lr.ph.i.i.i.i.i27.preheader ], [ %i.bi, %middle.block83 ]
  %.0910.i.i.i.i.i30.ph = phi ptr [ %i.c, %vector.memcheck57 ], [ %i.c, %.lr.ph.i.i.i.i.i27.preheader ], [ %i.bj, %middle.block83 ]
  br label %.lr.ph.i.i.i.i.i27

.lr.ph.i.i.i.i.i27:                               ; preds = %.lr.ph.i.i.i.i.i27.preheader150, %.lr.ph.i.i.i.i.i27
  %.012.i.i.i.i.i28 = phi i64 [ %i.bt, %.lr.ph.i.i.i.i.i27 ], [ %.012.i.i.i.i.i28.ph, %.lr.ph.i.i.i.i.i27.preheader150 ] ; 2 uses
  %.0811.i.i.i.i.i29 = phi ptr [ %i.bs, %.lr.ph.i.i.i.i.i27 ], [ %.0811.i.i.i.i.i29.ph, %.lr.ph.i.i.i.i.i27.preheader150 ] ; 3 uses
  %.0910.i.i.i.i.i30 = phi ptr [ %i.br, %.lr.ph.i.i.i.i.i27 ], [ %.0910.i.i.i.i.i30.ph, %.lr.ph.i.i.i.i.i27.preheader150 ] ; 3 uses
  %i.bn = load i32, ptr %.0910.i.i.i.i.i30, align 4, !tbaa !236
  store i32 %i.bn, ptr %.0811.i.i.i.i.i29, align 4, !tbaa !4
  %i.bo = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i29, i64 4
  %i.bp = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i30, i64 4
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !236
  store i32 %i.bq, ptr %i.bo, align 4, !tbaa !4
  %i.br = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i30, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i29, i64 8
  %i.bt = add nsw i64 %.012.i.i.i.i.i28, -1
  %i.bu = icmp samesign ugt i64 %.012.i.i.i.i.i28, 1
  br i1 %i.bu, label %.lr.ph.i.i.i.i.i27, label %_ZSt4copyIP3LocILi2EES2_ET0_T_S4_S3_.exit, !llvm.loop !660

_ZSt4copyIP3LocILi2EES2_ET0_T_S4_S3_.exit:        ; preds = %.lr.ph.i.i.i.i.i27, %middle.block83, %bb.h
  %.not9.i.i.i.i = icmp eq ptr %i.bd, %i.b
  br i1 %.not9.i.i.i.i, label %_ZSt22__uninitialized_copy_aIP3LocILi2EES2_S1_ET0_T_S4_S3_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZSt4copyIP3LocILi2EES2_ET0_T_S4_S3_.exit
  %i.bv = add i64 %i.l, %i.d
  %i.bw = add i64 %i.e, %i.al
  %4 = sub i64 %i.bv, %i.bw
  %5 = add i64 %4, -8                             ; 2 uses
  %i.bx = lshr i64 %5, 3
  %i.by = add nuw nsw i64 %i.bx, 1                ; 2 uses
  %min.iters.check95 = icmp ult i64 %5, 200
  br i1 %min.iters.check95, label %.lr.ph.i.i.i.i.preheader149, label %vector.memcheck88

vector.memcheck88:                                ; preds = %.lr.ph.i.i.i.i.preheader
  %i.bz = add i64 %i.l, %i.d
  %i.ca = add i64 %i.bz, -8
  %i.cb = add i64 %i.e, %i.al
  %i.cc = sub i64 %i.ca, %i.cb
  %i.cd = and i64 %i.cc, -8                       ; 2 uses
  %i.ce = getelementptr i8, ptr %i.ak, i64 %i.cd
  %scevgep89 = getelementptr i8, ptr %i.ce, i64 8
  %i.cf = add i64 %i.cd, %i.al
  %i.cg = add i64 %i.cf, 8
  %i.ch = sub i64 %i.cg, %i.l
  %scevgep90 = getelementptr i8, ptr %i.c, i64 %i.ch
  %bound091 = icmp ult ptr %i.ak, %scevgep90
  %bound192 = icmp ult ptr %i.bd, %scevgep89
  %found.conflict93 = and i1 %bound091, %bound192
  br i1 %found.conflict93, label %.lr.ph.i.i.i.i.preheader149, label %vector.ph96

vector.ph96:                                      ; preds = %vector.memcheck88
  %n.vec98 = and i64 %i.by, 4611686018427387900   ; 3 uses
  %i.ci = shl i64 %n.vec98, 3                     ; 2 uses
  %i.cj = getelementptr i8, ptr %i.ak, i64 %i.ci
  %i.ck = getelementptr i8, ptr %i.bd, i64 %i.ci
  br label %vector.body99

vector.body99:                                    ; preds = %vector.body99, %vector.ph96
  %index100 = phi i64 [ 0, %vector.ph96 ], [ %index.next113, %vector.body99 ] ; 2 uses
  %i.cl = shl i64 %index100, 3                    ; 3 uses
  %i.cm = or disjoint i64 %i.cl, 16               ; 2 uses
  %next.gep101 = getelementptr i8, ptr %i.ak, i64 %i.cl
  %next.gep102 = getelementptr i8, ptr %i.ak, i64 %i.cm
  %next.gep103 = getelementptr i8, ptr %i.bd, i64 %i.cl
  %next.gep104 = getelementptr i8, ptr %i.bd, i64 %i.cm
  %wide.vec105 = load <4 x i32>, ptr %next.gep103, align 4, !tbaa !236, !alias.scope !661
  %wide.vec108 = load <4 x i32>, ptr %next.gep104, align 4, !tbaa !236, !alias.scope !661
  store <4 x i32> %wide.vec105, ptr %next.gep101, align 4, !tbaa !4, !alias.scope !664, !noalias !661
  store <4 x i32> %wide.vec108, ptr %next.gep102, align 4, !tbaa !4, !alias.scope !664, !noalias !661
  %index.next113 = add nuw i64 %index100, 4       ; 2 uses
  %i.cn = icmp eq i64 %index.next113, %n.vec98
  br i1 %i.cn, label %middle.block114, label %vector.body99, !llvm.loop !666

middle.block114:                                  ; preds = %vector.body99
  %cmp.n115 = icmp eq i64 %i.by, %n.vec98
  br i1 %cmp.n115, label %_ZSt22__uninitialized_copy_aIP3LocILi2EES2_S1_ET0_T_S4_S3_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.preheader149

.lr.ph.i.i.i.i.preheader149:                      ; preds = %vector.memcheck88, %.lr.ph.i.i.i.i.preheader, %middle.block114
  %.011.i.i.i.i.ph = phi ptr [ %i.ak, %vector.memcheck88 ], [ %i.ak, %.lr.ph.i.i.i.i.preheader ], [ %i.cj, %middle.block114 ]
  %.0810.i.i.i.i.ph = phi ptr [ %i.bd, %vector.memcheck88 ], [ %i.bd, %.lr.ph.i.i.i.i.preheader ], [ %i.ck, %middle.block114 ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader149, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.ct, %.lr.ph.i.i.i.i ], [ %.011.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader149 ] ; 3 uses
  %.0810.i.i.i.i = phi ptr [ %i.cs, %.lr.ph.i.i.i.i ], [ %.0810.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader149 ] ; 3 uses
  %i.co = load i32, ptr %.0810.i.i.i.i, align 4, !tbaa !236
  store i32 %i.co, ptr %.011.i.i.i.i, align 4, !tbaa !4
  %i.cp = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 4
  %i.cq = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 4
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !236
  store i32 %i.cr, ptr %i.cp, align 4, !tbaa !4
  %i.cs = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 8 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.cs, %i.b
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIP3LocILi2EES2_S1_ET0_T_S4_S3_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !667

_ZSt22__uninitialized_copy_aIP3LocILi2EES2_S1_ET0_T_S4_S3_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i.i25, %.lr.ph.i.i.i.i, %middle.block, %middle.block114, %bb.g, %_ZSt4copyIP3LocILi2EES2_ET0_T_S4_S3_.exit, %_ZNSt12_Vector_baseI3LocILi2EESaIS1_EE13_M_deallocateEPS1_m.exit
  %i.cu = phi ptr [ %i.j, %middle.block114 ], [ %i.p, %_ZNSt12_Vector_baseI3LocILi2EESaIS1_EE13_M_deallocateEPS1_m.exit ], [ %i.j, %bb.g ], [ %i.j, %_ZSt4copyIP3LocILi2EES2_ET0_T_S4_S3_.exit ], [ %i.j, %middle.block ], [ %i.j, %.lr.ph.i.i.i.i ], [ %i.j, %.lr.ph.i.i.i.i.i25 ]
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.f
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cv, ptr %i.cw, align 8, !tbaa !264
  br label %bb.i

bb.i:                                             ; preds = %_ZSt22__uninitialized_copy_aIP3LocILi2EES2_S1_ET0_T_S4_S3_RSaIT1_E.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !276  ; 5 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !279    ; 21 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 5 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 5 uses
  %i.f = sub i64 %i.d, %i.e                       ; 8 uses
  %i.g = ashr exact i64 %i.f, 4                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !280
  %i.j = load ptr, ptr %0, align 8, !tbaa !279    ; 19 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64                 ; 5 uses
  %i.m = sub i64 %i.k, %i.l                       ; 2 uses
  %i.n = icmp ugt i64 %i.f, %i.m
  br i1 %i.n, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.o = icmp ugt i64 %i.g, 576460752303423487
  br i1 %i.o, label %bb.d, label %_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EE11_M_allocateEm.exit.i, !prof !44

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #46
  unreachable

_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #45 ; 10 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EE11_M_allocateEm.exit.i
  %2 = sub i64 %i.d, %i.e
  %3 = add i64 %2, -16                            ; 2 uses
  %i.q = lshr i64 %3, 4
  %i.r = add nuw nsw i64 %i.q, 1                  ; 2 uses
  %min.iters.check62 = icmp ult i64 %3, 240
  br i1 %min.iters.check62, label %.lr.ph.i.i.i.i.i.preheader79, label %vector.memcheck55

vector.memcheck55:                                ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.s = add i64 %i.d, -16
  %i.t = sub i64 %i.s, %i.e
  %i.u = and i64 %i.t, -16
  %i.v = add i64 %i.u, 16                         ; 2 uses
  %scevgep56 = getelementptr i8, ptr %i.p, i64 %i.v
  %scevgep57 = getelementptr i8, ptr %i.c, i64 %i.v
  %bound058 = icmp ult ptr %i.p, %scevgep57
  %bound159 = icmp ult ptr %i.c, %scevgep56
  %found.conflict60 = and i1 %bound058, %bound159
  br i1 %found.conflict60, label %.lr.ph.i.i.i.i.i.preheader79, label %vector.ph63

vector.ph63:                                      ; preds = %vector.memcheck55
  %n.vec65 = and i64 %i.r, 2305843009213693950    ; 3 uses
  %i.w = shl i64 %n.vec65, 4                      ; 2 uses
  %i.x = getelementptr i8, ptr %i.p, i64 %i.w
  %i.y = getelementptr i8, ptr %i.c, i64 %i.w
  br label %vector.body66

vector.body66:                                    ; preds = %vector.body66, %vector.ph63
  %index67 = phi i64 [ 0, %vector.ph63 ], [ %index.next74, %vector.body66 ] ; 2 uses
  %i.z = shl i64 %index67, 4                      ; 3 uses
  %i.aa = or disjoint i64 %i.z, 16                ; 2 uses
  %next.gep68 = getelementptr i8, ptr %i.p, i64 %i.z
  %next.gep69 = getelementptr i8, ptr %i.p, i64 %i.aa
  %next.gep70 = getelementptr i8, ptr %i.c, i64 %i.z
  %next.gep71 = getelementptr i8, ptr %i.c, i64 %i.aa
  %wide.load72 = load <2 x double>, ptr %next.gep70, align 8, !tbaa !247, !alias.scope !668
  %wide.load73 = load <2 x double>, ptr %next.gep71, align 8, !tbaa !247, !alias.scope !668
  store <2 x double> %wide.load72, ptr %next.gep68, align 8, !tbaa !247, !alias.scope !671, !noalias !668
  store <2 x double> %wide.load73, ptr %next.gep69, align 8, !tbaa !247, !alias.scope !671, !noalias !668
  %index.next74 = add nuw i64 %index67, 2         ; 2 uses
  %i.ab = icmp eq i64 %index.next74, %n.vec65
  br i1 %i.ab, label %middle.block75, label %vector.body66, !llvm.loop !673

middle.block75:                                   ; preds = %vector.body66
  %cmp.n76 = icmp eq i64 %i.r, %n.vec65
  br i1 %cmp.n76, label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit, label %.lr.ph.i.i.i.i.i.preheader79

.lr.ph.i.i.i.i.i.preheader79:                     ; preds = %vector.memcheck55, %.lr.ph.i.i.i.i.i.preheader, %middle.block75
  %.09.i.i.i.i.i.ph = phi ptr [ %i.p, %vector.memcheck55 ], [ %i.p, %.lr.ph.i.i.i.i.i.preheader ], [ %i.x, %middle.block75 ]
  %.sroa.04.08.i.i.i.i.i.ph = phi ptr [ %i.c, %vector.memcheck55 ], [ %i.c, %.lr.ph.i.i.i.i.i.preheader ], [ %i.y, %middle.block75 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader79, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i ], [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader79 ] ; 3 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i ], [ %.sroa.04.08.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader79 ] ; 3 uses
  %i.ac = load double, ptr %.sroa.04.08.i.i.i.i.i, align 8, !tbaa !247
  store double %i.ac, ptr %.09.i.i.i.i.i, align 8, !tbaa !247
  %i.ad = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 8
  %i.af = load double, ptr %i.ae, align 8, !tbaa !247
  store double %i.af, ptr %i.ad, align 8, !tbaa !247
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i = icmp eq ptr %i.ag, %i.b
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !674

_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit: ; preds = %.lr.ph.i.i.i.i.i, %middle.block75, %_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EE11_M_allocateEm.exit.i
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.m) #48
  br label %_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit, %bb.e
  store ptr %i.p, ptr %0, align 8, !tbaa !279
  %i.ai = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.f
  store ptr %i.ai, ptr %i.h, align 8, !tbaa !280
  br label %_ZSt22__uninitialized_copy_aIP6VectorILi2Ed4FullES3_S2_ET0_T_S5_S4_RSaIT1_E.exit

bb.f:                                             ; preds = %bb.b
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !276 ; 8 uses
  %i.al = ptrtoint ptr %i.ak to i64               ; 4 uses
  %i.am = sub i64 %i.al, %i.l                     ; 5 uses
  %.not24 = icmp ult i64 %i.am, %i.f
  br i1 %.not24, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.an = icmp sgt i64 %i.g, 0
  br i1 %i.an, label %.lr.ph.i.i.i.i.i25.preheader, label %_ZSt22__uninitialized_copy_aIP6VectorILi2Ed4FullES3_S2_ET0_T_S5_S4_RSaIT1_E.exit

.lr.ph.i.i.i.i.i25.preheader:                     ; preds = %bb.g
  %i.ao = and i64 %i.f, 16
  %lcmp.mod.not = icmp eq i64 %i.ao, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i25.prol.loopexit, label %.lr.ph.i.i.i.i.i25.prol

.lr.ph.i.i.i.i.i25.prol:                          ; preds = %.lr.ph.i.i.i.i.i25.preheader
  %.not.i.i.i.i.i.i.prol = icmp eq ptr %i.j, %i.c
  br i1 %.not.i.i.i.i.i.i.prol, label %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.prol, label %_ZN12VectorEngineILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.i.prol

_ZN12VectorEngineILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.i.prol: ; preds = %.lr.ph.i.i.i.i.i25.prol
  %i.ap = load double, ptr %i.c, align 8, !tbaa !247
  store double %i.ap, ptr %i.j, align 8, !tbaa !247
  %i.aq = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.as = load double, ptr %i.ar, align 8, !tbaa !247
  store double %i.as, ptr %i.aq, align 8, !tbaa !247
  br label %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.prol

_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.prol: ; preds = %_ZN12VectorEngineILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i25.prol
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.av = add nsw i64 %i.g, -1
  br label %.lr.ph.i.i.i.i.i25.prol.loopexit

.lr.ph.i.i.i.i.i25.prol.loopexit:                 ; preds = %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i25.preheader
  %.012.i.i.i.i.i.unr = phi i64 [ %i.g, %.lr.ph.i.i.i.i.i25.preheader ], [ %i.av, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.prol ]
  %.0811.i.i.i.i.i.unr = phi ptr [ %i.j, %.lr.ph.i.i.i.i.i25.preheader ], [ %i.au, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.prol ]
  %.0910.i.i.i.i.i.unr = phi ptr [ %i.c, %.lr.ph.i.i.i.i.i25.preheader ], [ %i.at, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.prol ]
  %i.aw = icmp eq i64 %i.f, 16
  br i1 %i.aw, label %_ZSt22__uninitialized_copy_aIP6VectorILi2Ed4FullES3_S2_ET0_T_S5_S4_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.i25

.lr.ph.i.i.i.i.i25:                               ; preds = %.lr.ph.i.i.i.i.i25.prol.loopexit, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.1
  %.012.i.i.i.i.i = phi i64 [ %i.bj, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.1 ], [ %.012.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i25.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.bi, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.1 ], [ %.0811.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i25.prol.loopexit ] ; 7 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.bh, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.1 ], [ %.0910.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i25.prol.loopexit ] ; 7 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %.0811.i.i.i.i.i, %.0910.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i, label %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i, label %_ZN12VectorEngineILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.i

_ZN12VectorEngineILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i25
  %i.ax = load double, ptr %.0910.i.i.i.i.i, align 8, !tbaa !247
  store double %i.ax, ptr %.0811.i.i.i.i.i, align 8, !tbaa !247
  %i.ay = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.ba = load double, ptr %i.az, align 8, !tbaa !247
  store double %i.ba, ptr %i.ay, align 8, !tbaa !247
  br label %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i

_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i:    ; preds = %_ZN12VectorEngineILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i25
  %.not.i.i.i.i.i.i.1 = icmp eq ptr %.0811.i.i.i.i.i, %.0910.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.1, label %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.1, label %_ZN12VectorEngineILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.i.1

_ZN12VectorEngineILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.i.1: ; preds = %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 16
  %i.bc = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 16
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !247
  store double %i.bd, ptr %i.bb, align 8, !tbaa !247
  %i.be = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 24
  %i.bf = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 24
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !247
  store double %i.bg, ptr %i.be, align 8, !tbaa !247
  br label %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.1

_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.1:  ; preds = %_ZN12VectorEngineILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.i.1, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 32
  %i.bi = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 32
  %i.bj = add nsw i64 %.012.i.i.i.i.i, -2
  %i.bk = icmp sgt i64 %.012.i.i.i.i.i, 2
  br i1 %i.bk, label %.lr.ph.i.i.i.i.i25, label %_ZSt22__uninitialized_copy_aIP6VectorILi2Ed4FullES3_S2_ET0_T_S5_S4_RSaIT1_E.exit, !llvm.loop !675

bb.h:                                             ; preds = %bb.f
  %i.bl = getelementptr i8, ptr %i.c, i64 %i.am   ; 7 uses
  %i.bm = ashr exact i64 %i.am, 4                 ; 3 uses
  %i.bn = icmp sgt i64 %i.bm, 0
  br i1 %i.bn, label %.lr.ph.i.i.i.i.i27.preheader, label %_ZSt4copyIP6VectorILi2Ed4FullES3_ET0_T_S5_S4_.exit

.lr.ph.i.i.i.i.i27.preheader:                     ; preds = %bb.h
  %i.bo = and i64 %i.am, 16
  %lcmp.mod83.not = icmp eq i64 %i.bo, 0
  br i1 %lcmp.mod83.not, label %.lr.ph.i.i.i.i.i27.prol.loopexit, label %.lr.ph.i.i.i.i.i27.prol

.lr.ph.i.i.i.i.i27.prol:                          ; preds = %.lr.ph.i.i.i.i.i27.preheader
  %.not.i.i.i.i.i.i31.prol = icmp eq ptr %i.j, %i.c
  br i1 %.not.i.i.i.i.i.i31.prol, label %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i33.prol, label %_ZN12VectorEngineILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.i32.prol

_ZN12VectorEngineILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.i32.prol: ; preds = %.lr.ph.i.i.i.i.i27.prol
  %i.bp = load double, ptr %i.c, align 8, !tbaa !247
  store double %i.bp, ptr %i.j, align 8, !tbaa !247
  %i.bq = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bs = load double, ptr %i.br, align 8, !tbaa !247
  store double %i.bs, ptr %i.bq, align 8, !tbaa !247
  br label %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i33.prol

_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i33.prol: ; preds = %_ZN12VectorEngineILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.i32.prol, %.lr.ph.i.i.i.i.i27.prol
  %i.bt = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.bu = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.bv = add nsw i64 %i.bm, -1
  br label %.lr.ph.i.i.i.i.i27.prol.loopexit

.lr.ph.i.i.i.i.i27.prol.loopexit:                 ; preds = %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i33.prol, %.lr.ph.i.i.i.i.i27.preheader
  %.012.i.i.i.i.i28.unr = phi i64 [ %i.bm, %.lr.ph.i.i.i.i.i27.preheader ], [ %i.bv, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i33.prol ]
  %.0811.i.i.i.i.i29.unr = phi ptr [ %i.j, %.lr.ph.i.i.i.i.i27.preheader ], [ %i.bu, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i33.prol ]
  %.0910.i.i.i.i.i30.unr = phi ptr [ %i.c, %.lr.ph.i.i.i.i.i27.preheader ], [ %i.bt, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i33.prol ]
  %i.bw = icmp eq i64 %i.am, 16
  br i1 %i.bw, label %_ZSt4copyIP6VectorILi2Ed4FullES3_ET0_T_S5_S4_.exit, label %.lr.ph.i.i.i.i.i27

.lr.ph.i.i.i.i.i27:                               ; preds = %.lr.ph.i.i.i.i.i27.prol.loopexit, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i33.1
  %.012.i.i.i.i.i28 = phi i64 [ %i.cj, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i33.1 ], [ %.012.i.i.i.i.i28.unr, %.lr.ph.i.i.i.i.i27.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i29 = phi ptr [ %i.ci, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i33.1 ], [ %.0811.i.i.i.i.i29.unr, %.lr.ph.i.i.i.i.i27.prol.loopexit ] ; 7 uses
  %.0910.i.i.i.i.i30 = phi ptr [ %i.ch, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i33.1 ], [ %.0910.i.i.i.i.i30.unr, %.lr.ph.i.i.i.i.i27.prol.loopexit ] ; 7 uses
  %.not.i.i.i.i.i.i31 = icmp eq ptr %.0811.i.i.i.i.i29, %.0910.i.i.i.i.i30
  br i1 %.not.i.i.i.i.i.i31, label %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i33, label %_ZN12VectorEngineILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.i32

_ZN12VectorEngineILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.i32: ; preds = %.lr.ph.i.i.i.i.i27
  %i.bx = load double, ptr %.0910.i.i.i.i.i30, align 8, !tbaa !247
  store double %i.bx, ptr %.0811.i.i.i.i.i29, align 8, !tbaa !247
  %i.by = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i29, i64 8
  %i.bz = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i30, i64 8
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !247
  store double %i.ca, ptr %i.by, align 8, !tbaa !247
  br label %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i33

_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i33:  ; preds = %_ZN12VectorEngineILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.i32, %.lr.ph.i.i.i.i.i27
  %.not.i.i.i.i.i.i31.1 = icmp eq ptr %.0811.i.i.i.i.i29, %.0910.i.i.i.i.i30
  br i1 %.not.i.i.i.i.i.i31.1, label %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i33.1, label %_ZN12VectorEngineILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.i32.1

_ZN12VectorEngineILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.i32.1: ; preds = %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i33
  %i.cb = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i29, i64 16
  %i.cc = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i30, i64 16
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !247
  store double %i.cd, ptr %i.cb, align 8, !tbaa !247
  %i.ce = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i29, i64 24
  %i.cf = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i30, i64 24
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !247
  store double %i.cg, ptr %i.ce, align 8, !tbaa !247
  br label %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i33.1

_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i33.1: ; preds = %_ZN12VectorEngineILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.i32.1, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i33
  %i.ch = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i30, i64 32
  %i.ci = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i29, i64 32
  %i.cj = add nsw i64 %.012.i.i.i.i.i28, -2
  %i.ck = icmp sgt i64 %.012.i.i.i.i.i28, 2
  br i1 %i.ck, label %.lr.ph.i.i.i.i.i27, label %_ZSt4copyIP6VectorILi2Ed4FullES3_ET0_T_S5_S4_.exit, !llvm.loop !676

_ZSt4copyIP6VectorILi2Ed4FullES3_ET0_T_S5_S4_.exit: ; preds = %.lr.ph.i.i.i.i.i27.prol.loopexit, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i33.1, %bb.h
  %.not9.i.i.i.i = icmp eq ptr %i.bl, %i.b
  br i1 %.not9.i.i.i.i, label %_ZSt22__uninitialized_copy_aIP6VectorILi2Ed4FullES3_S2_ET0_T_S5_S4_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZSt4copyIP6VectorILi2Ed4FullES3_ET0_T_S5_S4_.exit
  %i.cl = add i64 %i.l, %i.d
  %i.cm = add i64 %i.e, %i.al
  %4 = sub i64 %i.cl, %i.cm
  %5 = add i64 %4, -16                            ; 2 uses
  %i.cn = lshr i64 %5, 4
  %i.co = add nuw nsw i64 %i.cn, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %5, 400
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader80, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.cp = add i64 %i.l, %i.d
  %i.cq = add i64 %i.cp, -16
  %i.cr = add i64 %i.e, %i.al
  %i.cs = sub i64 %i.cq, %i.cr
  %i.ct = and i64 %i.cs, -16                      ; 2 uses
  %i.cu = getelementptr i8, ptr %i.ak, i64 %i.ct
  %scevgep = getelementptr i8, ptr %i.cu, i64 16
  %i.cv = add i64 %i.ct, %i.al
  %i.cw = add i64 %i.cv, 16
  %i.cx = sub i64 %i.cw, %i.l
  %scevgep49 = getelementptr i8, ptr %i.c, i64 %i.cx
  %bound0 = icmp ult ptr %i.ak, %scevgep49
  %bound1 = icmp ult ptr %i.bl, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader80, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.co, 2305843009213693950     ; 3 uses
  %i.cy = shl i64 %n.vec, 4                       ; 2 uses
  %i.cz = getelementptr i8, ptr %i.ak, i64 %i.cy
  %i.da = getelementptr i8, ptr %i.bl, i64 %i.cy
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.db = shl i64 %index, 4                       ; 3 uses
  %i.dc = or disjoint i64 %i.db, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ak, i64 %i.db
  %next.gep50 = getelementptr i8, ptr %i.ak, i64 %i.dc
  %next.gep51 = getelementptr i8, ptr %i.bl, i64 %i.db
  %next.gep52 = getelementptr i8, ptr %i.bl, i64 %i.dc
  %wide.load = load <2 x double>, ptr %next.gep51, align 8, !tbaa !247, !alias.scope !677
  %wide.load53 = load <2 x double>, ptr %next.gep52, align 8, !tbaa !247, !alias.scope !677
  store <2 x double> %wide.load, ptr %next.gep, align 8, !tbaa !247, !alias.scope !680, !noalias !677
  store <2 x double> %wide.load53, ptr %next.gep50, align 8, !tbaa !247, !alias.scope !680, !noalias !677
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.dd = icmp eq i64 %index.next, %n.vec
  br i1 %i.dd, label %middle.block, label %vector.body, !llvm.loop !682

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.co, %n.vec
  br i1 %cmp.n, label %_ZSt22__uninitialized_copy_aIP6VectorILi2Ed4FullES3_S2_ET0_T_S5_S4_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.preheader80

.lr.ph.i.i.i.i.preheader80:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.011.i.i.i.i.ph = phi ptr [ %i.ak, %vector.memcheck ], [ %i.ak, %.lr.ph.i.i.i.i.preheader ], [ %i.cz, %middle.block ]
  %.0810.i.i.i.i.ph = phi ptr [ %i.bl, %vector.memcheck ], [ %i.bl, %.lr.ph.i.i.i.i.preheader ], [ %i.da, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader80, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.dj, %.lr.ph.i.i.i.i ], [ %.011.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader80 ] ; 3 uses
  %.0810.i.i.i.i = phi ptr [ %i.di, %.lr.ph.i.i.i.i ], [ %.0810.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader80 ] ; 3 uses
  %i.de = load double, ptr %.0810.i.i.i.i, align 8, !tbaa !247
  store double %i.de, ptr %.011.i.i.i.i, align 8, !tbaa !247
  %i.df = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 8
  %i.dg = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 8
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !247
  store double %i.dh, ptr %i.df, align 8, !tbaa !247
  %i.di = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 16 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 16
  %.not.i.i.i.i = icmp eq ptr %i.di, %i.b
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIP6VectorILi2Ed4FullES3_S2_ET0_T_S5_S4_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !683

_ZSt22__uninitialized_copy_aIP6VectorILi2Ed4FullES3_S2_ET0_T_S5_S4_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i.i25.prol.loopexit, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.1, %.lr.ph.i.i.i.i, %middle.block, %bb.g, %_ZSt4copyIP6VectorILi2Ed4FullES3_ET0_T_S5_S4_.exit, %_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EE13_M_deallocateEPS2_m.exit
  %i.dk = phi ptr [ %i.j, %middle.block ], [ %i.p, %_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EE13_M_deallocateEPS2_m.exit ], [ %i.j, %bb.g ], [ %i.j, %_ZSt4copyIP6VectorILi2Ed4FullES3_ET0_T_S5_S4_.exit ], [ %i.j, %.lr.ph.i.i.i.i ], [ %i.j, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.1 ], [ %i.j, %.lr.ph.i.i.i.i.i25.prol.loopexit ]
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.f
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dl, ptr %i.dm, align 8, !tbaa !276
  br label %bb.i

bb.i:                                             ; preds = %_ZSt22__uninitialized_copy_aIP6VectorILi2Ed4FullES3_S2_ET0_T_S5_S4_RSaIT1_E.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9CenteringILi2EEC2E13CenteringType14ContinuityTypeRKSt6vectorI3LocILi2EESaIS5_EERKS3_I6VectorILi2Ed4FullESaISC_EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) unnamed_addr #1 comdat align 2 {
bb.a:
  store i32 %1, ptr %0, align 8, !tbaa !361
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %2, ptr %i.a, align 4, !tbaa !462
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !264  ; 2 uses
  %i.e = load ptr, ptr %3, align 8, !tbaa !267    ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.d, %i.e
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseI3LocILi2EESaIS1_EEC2EmRKS2_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ugt i64 %i.h, 9223372036854775800
  br i1 %i.i, label %bb.c, label %_ZNSt15__new_allocatorI3LocILi2EEE8allocateEmPKv.exit.i.i.i.i, !prof !44

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #46
  unreachable

_ZNSt15__new_allocatorI3LocILi2EEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #45
  br label %_ZNSt12_Vector_baseI3LocILi2EESaIS1_EEC2EmRKS2_.exit.i

_ZNSt12_Vector_baseI3LocILi2EESaIS1_EEC2EmRKS2_.exit.i: ; preds = %_ZNSt15__new_allocatorI3LocILi2EEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.k = phi ptr [ %i.j, %_ZNSt15__new_allocatorI3LocILi2EEE8allocateEmPKv.exit.i.i.i.i ], [ null, %bb.a ] ; 11 uses
  store ptr %i.k, ptr %i.b, align 8, !tbaa !267
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !264
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.h
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.m, ptr %i.n, align 8, !tbaa !268
  %i.o = load ptr, ptr %3, align 8, !tbaa !449    ; 9 uses
  %i.p = ptrtoint ptr %i.o to i64                 ; 2 uses
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !449  ; 3 uses
  %i.r = ptrtoint ptr %i.q to i64                 ; 2 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.o, %i.q
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorI3LocILi2EESaIS1_EEC2ERKS3_.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNSt12_Vector_baseI3LocILi2EESaIS1_EEC2EmRKS2_.exit.i
  %i.s = add i64 %i.r, -8
  %i.t = sub i64 %i.s, %i.p                       ; 2 uses
  %i.u = lshr i64 %i.t, 3
  %i.v = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.t, 120
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader54, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.w = add i64 %i.r, -8
  %i.x = sub i64 %i.w, %i.p
  %i.y = and i64 %i.x, -8
  %i.z = add i64 %i.y, 8                          ; 2 uses
  %scevgep = getelementptr i8, ptr %i.k, i64 %i.z
  %scevgep20 = getelementptr i8, ptr %i.o, i64 %i.z
  %bound0 = icmp ult ptr %i.k, %scevgep20
  %bound1 = icmp ult ptr %i.o, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader54, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.v, 4611686018427387900      ; 3 uses
  %i.aa = shl i64 %n.vec, 3                       ; 2 uses
  %i.ab = getelementptr i8, ptr %i.k, i64 %i.aa   ; 2 uses
  %i.ac = getelementptr i8, ptr %i.o, i64 %i.aa
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = shl i64 %index, 3                       ; 3 uses
  %i.ae = or disjoint i64 %i.ad, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %i.k, i64 %i.ad
  %next.gep21 = getelementptr i8, ptr %i.k, i64 %i.ae
  %next.gep22 = getelementptr i8, ptr %i.o, i64 %i.ad
  %next.gep23 = getelementptr i8, ptr %i.o, i64 %i.ae
  %wide.vec = load <4 x i32>, ptr %next.gep22, align 4, !tbaa !236, !alias.scope !684
  %wide.vec25 = load <4 x i32>, ptr %next.gep23, align 4, !tbaa !236, !alias.scope !684
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !4, !alias.scope !687, !noalias !684
  store <4 x i32> %wide.vec25, ptr %next.gep21, align 4, !tbaa !4, !alias.scope !687, !noalias !684
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !689

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorI3LocILi2EESaIS1_EEC2ERKS3_.exit, label %.lr.ph.i.i.i.i.i.preheader54

.lr.ph.i.i.i.i.i.preheader54:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.09.i.i.i.i.i.ph = phi ptr [ %i.k, %vector.memcheck ], [ %i.k, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ab, %middle.block ]
  %.sroa.04.08.i.i.i.i.i.ph = phi ptr [ %i.o, %vector.memcheck ], [ %i.o, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ac, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader54, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i ], [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader54 ] ; 3 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i ], [ %.sroa.04.08.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader54 ] ; 3 uses
  %i.ag = load i32, ptr %.sroa.04.08.i.i.i.i.i, align 4, !tbaa !236
  store i32 %i.ag, ptr %.09.i.i.i.i.i, align 4, !tbaa !4
  %i.ah = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 4
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 4
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !236
  store i32 %i.aj, ptr %i.ah, align 4, !tbaa !4
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ak, %i.q
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorI3LocILi2EESaIS1_EEC2ERKS3_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !690

_ZNSt6vectorI3LocILi2EESaIS1_EEC2ERKS3_.exit:     ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNSt12_Vector_baseI3LocILi2EESaIS1_EEC2EmRKS2_.exit.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.k, %_ZNSt12_Vector_baseI3LocILi2EESaIS1_EEC2EmRKS2_.exit.i ], [ %i.ab, %middle.block ], [ %i.al, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.l, align 8, !tbaa !264
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !276 ; 2 uses
  %i.ap = load ptr, ptr %4, align 8, !tbaa !279   ; 2 uses
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, i8 0, i64 24, i1 false)
end_hunk_2
begin_hunk_3_@_ZN12DataBlockPtrIiLb0EED2Ev:bb.a
bb.k:                                             ; preds = %bb.j
  call void @_ZdaPv(ptr noundef nonnull %i.aj) #48
  br label %_ZN19DataBlockControllerIiED2Ev.exit.i.i.i

_ZN19DataBlockControllerIiED2Ev.exit.i.i.i:       ; preds = %bb.k, %bb.j, %_ZN16SingleObservableIiED2Ev.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr9, i64 noundef 72) #48
  br label %_ZN18RefCountedBlockPtrIiLb0E19DataBlockControllerIiEED2Ev.exit

_ZN18RefCountedBlockPtrIiLb0E19DataBlockControllerIiEED2Ev.exit: ; preds = %bb.a, %bb.c, %bb.d, %_ZN19DataBlockControllerIiED2Ev.exit.i.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIiSt4pairIKiP12InformStreamESt10_Select1stIS4_ESt4lessIiESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2264
  tail call void @_ZNSt8_Rb_treeIiSt4pairIKiP12InformStreamESt10_Select1stIS4_ESt4lessIiESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !2265 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 48) #48
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !2266

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #31

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #31

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #31

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #32

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr noundef captures(none)) local_unnamed_addr #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i1 @llvm.is.fpclass.f64(double, i32 immarg) #34

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #31

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #31

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #30

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #31

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #31

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #30

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #31

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264), ptr noundef) local_unnamed_addr #31

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(216)) unnamed_addr #32

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #35

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #32

; Function Attrs: nounwind
declare noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #32

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #35

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #31

declare void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #31

; Function Attrs: nounwind
declare void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #32

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local { ptr, i8 } @_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE17_M_emplace_uniqueIJRS2_EEES0_ISt17_Rb_tree_iteratorIS2_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #45 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load i64, ptr %1, align 4                ; 2 uses
  store i64 %i.c, ptr %i.b, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.02022.i = load ptr, ptr %i.d, align 8, !tbaa !69 ; 2 uses
  %.not23.i = icmp eq ptr %.02022.i, null
  %i.f = trunc i64 %i.c to i32                    ; 3 uses
  br i1 %.not23.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.02024.i = phi ptr [ %.020.i, %.lr.ph.i ], [ %.02022.i, %bb.a ] ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.02024.i, i64 32
  %i.h = load i32, ptr %i.g, align 4, !tbaa !4    ; 2 uses
  %i.i = icmp sgt i32 %i.h, %i.f                  ; 2 uses
  %.in.v.i = select i1 %i.i, i64 16, i64 24
  %.in.i = getelementptr inbounds nuw i8, ptr %.02024.i, i64 %.in.v.i
  %.020.i = load ptr, ptr %.in.i, align 8, !tbaa !69 ; 2 uses
  %.not.i = icmp eq ptr %.020.i, null
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !2267

._crit_edge.i:                                    ; preds = %.lr.ph.i
  br i1 %i.i, label %._crit_edge.thread.i, label %bb.c

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.a
  %.019.lcssa29.i = phi ptr [ %.02024.i, %._crit_edge.i ], [ %i.e, %bb.a ] ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !45
  %i.l = icmp eq ptr %.019.lcssa29.i, %i.k
  br i1 %i.l, label %select.unfold, label %bb.b

bb.b:                                             ; preds = %._crit_edge.thread.i
  %i.m = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i) #50 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge.i
  %i.n = phi i32 [ %.pre, %bb.b ], [ %i.h, %._crit_edge.i ]
  %.019.lcssa28.i = phi ptr [ %.019.lcssa29.i, %bb.b ], [ %.02024.i, %._crit_edge.i ]
  %.sroa.05.0.i = phi ptr [ %i.m, %bb.b ], [ %.02024.i, %._crit_edge.i ]
  %i.o = icmp slt i32 %i.n, %i.f
  br i1 %i.o, label %select.unfold, label %bb.e

select.unfold:                                    ; preds = %bb.c, %._crit_edge.thread.i
  %.sroa.4.0.i.ph = phi ptr [ %.019.lcssa29.i, %._crit_edge.thread.i ], [ %.019.lcssa28.i, %bb.c ] ; 3 uses
  %i.p = icmp eq ptr %.sroa.4.0.i.ph, %i.e
  br i1 %i.p, label %.thread, label %bb.d

bb.d:                                             ; preds = %select.unfold
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph, i64 32
  %i.r = load i32, ptr %i.q, align 4, !tbaa !4
  %i.s = icmp sgt i32 %i.r, %i.f
  br label %.thread

.thread:                                          ; preds = %bb.d, %select.unfold
  %i.t = phi i1 [ %i.s, %bb.d ], [ true, %select.unfold ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.t, ptr noundef nonnull %i.a, ptr noundef nonnull %.sroa.4.0.i.ph, ptr noundef nonnull align 8 dereferenceable(32) %i.e) #47
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !76
  %i.w = add i64 %i.v, 1
  store i64 %i.w, ptr %i.u, align 8, !tbaa !76
  br label %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE10_Auto_nodeD2Ev.exit

bb.e:                                             ; preds = %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 40) #48
  br label %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE10_Auto_nodeD2Ev.exit

_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE10_Auto_nodeD2Ev.exit: ; preds = %.thread, %bb.e
  %.sroa.3.022 = phi i8 [ 1, %.thread ], [ 0, %bb.e ]
  %.sroa.09.021 = phi ptr [ %i.a, %.thread ], [ %.sroa.05.0.i, %bb.e ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.09.021, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.022, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI3LocILi2EESaIS1_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEvNS6_IPS1_S3_EET_SC_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 4 uses
  %.not88 = icmp eq ptr %2, %3
  br i1 %.not88, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK3LocILi2EESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %3 to i64                   ; 10 uses
  %i.c = ptrtoint ptr %2 to i64                   ; 10 uses
  %i.d = sub i64 %i.b, %i.c                       ; 7 uses
  %i.e = ashr exact i64 %i.d, 3                   ; 11 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !268
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !264  ; 35 uses
  %i.j = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.k = ptrtoint ptr %i.i to i64                 ; 10 uses
  %i.l = sub i64 %i.j, %i.k
  %.not = icmp ult i64 %i.l, %i.d
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = ptrtoint ptr %1 to i64                   ; 7 uses
  %i.n = sub i64 %i.k, %i.m                       ; 5 uses
  %i.o = ashr exact i64 %i.n, 3                   ; 2 uses
  %i.p = icmp ugt i64 %i.o, %i.e
  br i1 %i.p, label %bb.d, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPK3LocILi2EESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit

bb.d:                                             ; preds = %bb.c
  %.idx = sub i64 0, %i.d
  %i.q = getelementptr i8, ptr %i.i, i64 %.idx    ; 10 uses
  %4 = sub i64 %i.b, %i.c
  %5 = add i64 %4, -8                             ; 2 uses
  %i.r = lshr i64 %5, 3
  %i.s = add nuw nsw i64 %i.r, 1                  ; 2 uses
  %min.iters.check212 = icmp ult i64 %5, 520
  br i1 %min.iters.check212, label %.lr.ph.i.i.i.i.i.preheader, label %vector.memcheck186

vector.memcheck186:                               ; preds = %bb.d
  %i.t = add i64 %i.b, -8
  %i.u = sub i64 %i.t, %i.c
  %i.v = and i64 %i.u, -8                         ; 4 uses
  %i.w = getelementptr i8, ptr %i.i, i64 %i.v
  %scevgep187 = getelementptr i8, ptr %i.w, i64 4 ; 3 uses
  %scevgep188 = getelementptr i8, ptr %i.i, i64 4 ; 3 uses
  %i.x = getelementptr i8, ptr %i.i, i64 %i.v
  %scevgep189 = getelementptr i8, ptr %i.x, i64 8 ; 3 uses
  %i.y = add i64 %i.v, %i.c
  %i.z = add i64 %i.y, 4
  %i.aa = sub i64 %i.z, %i.b
  %scevgep190 = getelementptr i8, ptr %i.i, i64 %i.aa ; 2 uses
  %i.ab = add i64 %i.c, 4
  %i.ac = sub i64 %i.ab, %i.b
  %scevgep191 = getelementptr i8, ptr %i.i, i64 %i.ac ; 2 uses
  %i.ad = add i64 %i.v, %i.c
  %i.ae = add i64 %i.ad, 8
  %i.af = sub i64 %i.ae, %i.b
  %scevgep192 = getelementptr i8, ptr %i.i, i64 %i.af ; 2 uses
  %bound0193 = icmp ult ptr %i.i, %scevgep189
  %bound1194 = icmp ult ptr %scevgep188, %scevgep187
  %found.conflict195 = and i1 %bound0193, %bound1194
  %bound0196 = icmp ult ptr %i.i, %scevgep190
  %bound1197 = icmp ult ptr %i.q, %scevgep187
  %found.conflict198 = and i1 %bound0196, %bound1197
  %conflict.rdx = or i1 %found.conflict195, %found.conflict198
  %bound0199 = icmp ult ptr %i.i, %scevgep192
  %bound1200 = icmp ult ptr %scevgep191, %scevgep187
  %found.conflict201 = and i1 %bound0199, %bound1200
  %conflict.rdx202 = or i1 %conflict.rdx, %found.conflict201
  %bound0203 = icmp ult ptr %scevgep188, %scevgep190
  %bound1204 = icmp ult ptr %i.q, %scevgep189
  %found.conflict205 = and i1 %bound0203, %bound1204
  %conflict.rdx206 = or i1 %conflict.rdx202, %found.conflict205
  %bound0207 = icmp ult ptr %scevgep188, %scevgep192
  %bound1208 = icmp ult ptr %scevgep191, %scevgep189
  %found.conflict209 = and i1 %bound0207, %bound1208
  %conflict.rdx210 = or i1 %conflict.rdx206, %found.conflict209
  br i1 %conflict.rdx210, label %.lr.ph.i.i.i.i.i.preheader, label %vector.ph213

vector.ph213:                                     ; preds = %vector.memcheck186
  %n.vec215 = and i64 %i.s, 4611686018427387900   ; 3 uses
  %i.ag = shl i64 %n.vec215, 3                    ; 2 uses
  %i.ah = getelementptr i8, ptr %i.i, i64 %i.ag
  %i.ai = getelementptr i8, ptr %i.q, i64 %i.ag
  br label %vector.body216

vector.body216:                                   ; preds = %vector.body216, %vector.ph213
  %index217 = phi i64 [ 0, %vector.ph213 ], [ %index.next230, %vector.body216 ] ; 2 uses
  %i.aj = shl i64 %index217, 3                    ; 3 uses
  %i.ak = or disjoint i64 %i.aj, 16               ; 2 uses
  %next.gep218 = getelementptr i8, ptr %i.i, i64 %i.aj
  %next.gep219 = getelementptr i8, ptr %i.i, i64 %i.ak
  %next.gep220 = getelementptr i8, ptr %i.q, i64 %i.aj
  %next.gep221 = getelementptr i8, ptr %i.q, i64 %i.ak
  %wide.vec222 = load <4 x i32>, ptr %next.gep220, align 4, !tbaa !236
  %wide.vec225 = load <4 x i32>, ptr %next.gep221, align 4, !tbaa !236
  store <4 x i32> %wide.vec222, ptr %next.gep218, align 4, !tbaa !4
  store <4 x i32> %wide.vec225, ptr %next.gep219, align 4, !tbaa !4
  %index.next230 = add nuw i64 %index217, 4       ; 2 uses
  %i.al = icmp eq i64 %index.next230, %n.vec215
  br i1 %i.al, label %middle.block231, label %vector.body216, !llvm.loop !2268

middle.block231:                                  ; preds = %vector.body216
  %cmp.n232 = icmp eq i64 %i.s, %n.vec215
  br i1 %cmp.n232, label %_ZSt22__uninitialized_move_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %vector.memcheck186, %bb.d, %middle.block231
  %.09.i.i.i.i.i.ph = phi ptr [ %i.i, %vector.memcheck186 ], [ %i.i, %bb.d ], [ %i.ah, %middle.block231 ]
  %.sroa.04.08.i.i.i.i.i.ph = phi ptr [ %i.q, %vector.memcheck186 ], [ %i.q, %bb.d ], [ %i.ai, %middle.block231 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i ], [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i ], [ %.sroa.04.08.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %i.am = load i32, ptr %.sroa.04.08.i.i.i.i.i, align 4, !tbaa !236
  store i32 %i.am, ptr %.09.i.i.i.i.i, align 4, !tbaa !4
  %i.an = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 4
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 4
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !236
  store i32 %i.ap, ptr %i.an, align 4, !tbaa !4
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 8 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i = icmp eq ptr %i.aq, %i.i
  br i1 %.not.i.i.i.i.i, label %_ZSt22__uninitialized_move_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !2269

_ZSt22__uninitialized_move_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i, %middle.block231
  %i.as = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.d
  store ptr %i.as, ptr %i.h, align 8, !tbaa !264
  %i.at = ptrtoint ptr %i.q to i64
  %i.au = sub i64 %i.at, %i.m
  %i.av = ashr exact i64 %i.au, 3                 ; 5 uses
  %i.aw = icmp sgt i64 %i.av, 0
  br i1 %i.aw, label %.lr.ph.i.i.i.i.i43.preheader, label %_ZSt13move_backwardIP3LocILi2EES2_ET0_T_S4_S3_.exit

.lr.ph.i.i.i.i.i43.preheader:                     ; preds = %_ZSt22__uninitialized_move_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit
  %xtraiter = and i64 %i.av, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i43.prol.loopexit, label %.lr.ph.i.i.i.i.i43.prol

.lr.ph.i.i.i.i.i43.prol:                          ; preds = %.lr.ph.i.i.i.i.i43.preheader, %.lr.ph.i.i.i.i.i43.prol
  %.010.i.i.i.i.i.prol = phi i64 [ %i.bd, %.lr.ph.i.i.i.i.i43.prol ], [ %i.av, %.lr.ph.i.i.i.i.i43.preheader ]
  %.069.i.i.i.i.i.prol = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i43.prol ], [ %i.i, %.lr.ph.i.i.i.i.i43.preheader ] ; 2 uses
  %.078.i.i.i.i.i.prol = phi ptr [ %i.ax, %.lr.ph.i.i.i.i.i43.prol ], [ %i.q, %.lr.ph.i.i.i.i.i43.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i43.prol ], [ 0, %.lr.ph.i.i.i.i.i43.preheader ]
  %i.ax = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.prol, i64 -8 ; 3 uses
  %i.ay = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.prol, i64 -8 ; 3 uses
  %i.az = load i32, ptr %i.ax, align 4, !tbaa !236
  store i32 %i.az, ptr %i.ay, align 4, !tbaa !4
  %i.ba = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.prol, i64 -4
  %i.bb = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.prol, i64 -4
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !236
  store i32 %i.bc, ptr %i.ba, align 4, !tbaa !4
  %i.bd = add nsw i64 %.010.i.i.i.i.i.prol, -1    ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i43.prol.loopexit, label %.lr.ph.i.i.i.i.i43.prol, !llvm.loop !2270

.lr.ph.i.i.i.i.i43.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i43.prol, %.lr.ph.i.i.i.i.i43.preheader
  %.010.i.i.i.i.i.unr = phi i64 [ %i.av, %.lr.ph.i.i.i.i.i43.preheader ], [ %i.bd, %.lr.ph.i.i.i.i.i43.prol ]
  %.069.i.i.i.i.i.unr = phi ptr [ %i.i, %.lr.ph.i.i.i.i.i43.preheader ], [ %i.ay, %.lr.ph.i.i.i.i.i43.prol ]
  %.078.i.i.i.i.i.unr = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i43.preheader ], [ %i.ax, %.lr.ph.i.i.i.i.i43.prol ]
  %i.be = icmp ult i64 %i.av, 4
  br i1 %i.be, label %_ZSt13move_backwardIP3LocILi2EES2_ET0_T_S4_S3_.exit, label %.lr.ph.i.i.i.i.i43

.lr.ph.i.i.i.i.i43:                               ; preds = %.lr.ph.i.i.i.i.i43.prol.loopexit, %.lr.ph.i.i.i.i.i43
  %.010.i.i.i.i.i = phi i64 [ %i.cd, %.lr.ph.i.i.i.i.i43 ], [ %.010.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i43.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.by, %.lr.ph.i.i.i.i.i43 ], [ %.069.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i43.prol.loopexit ] ; 8 uses
  %.078.i.i.i.i.i = phi ptr [ %i.bx, %.lr.ph.i.i.i.i.i43 ], [ %.078.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i43.prol.loopexit ] ; 8 uses
  %i.bf = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -8
  %i.bg = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -8
  %i.bh = load i32, ptr %i.bf, align 4, !tbaa !236
  store i32 %i.bh, ptr %i.bg, align 4, !tbaa !4
  %i.bi = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -4
  %i.bj = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -4
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !236
  store i32 %i.bk, ptr %i.bi, align 4, !tbaa !4
  %i.bl = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -16
  %i.bm = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -16
  %i.bn = load i32, ptr %i.bl, align 4, !tbaa !236
  store i32 %i.bn, ptr %i.bm, align 4, !tbaa !4
  %i.bo = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -12
  %i.bp = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -12
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !236
  store i32 %i.bq, ptr %i.bo, align 4, !tbaa !4
  %i.br = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -24
  %i.bs = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -24
  %i.bt = load i32, ptr %i.br, align 4, !tbaa !236
  store i32 %i.bt, ptr %i.bs, align 4, !tbaa !4
  %i.bu = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -20
  %i.bv = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -20
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !236
  store i32 %i.bw, ptr %i.bu, align 4, !tbaa !4
  %i.bx = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -32 ; 2 uses
  %i.by = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -32 ; 2 uses
  %i.bz = load i32, ptr %i.bx, align 4, !tbaa !236
  store i32 %i.bz, ptr %i.by, align 4, !tbaa !4
  %i.ca = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -28
  %i.cb = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -28
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !236
  store i32 %i.cc, ptr %i.ca, align 4, !tbaa !4
  %i.cd = add nsw i64 %.010.i.i.i.i.i, -4
  %i.ce = icmp sgt i64 %.010.i.i.i.i.i, 4
  br i1 %i.ce, label %.lr.ph.i.i.i.i.i43, label %_ZSt13move_backwardIP3LocILi2EES2_ET0_T_S4_S3_.exit, !llvm.loop !2271

_ZSt13move_backwardIP3LocILi2EES2_ET0_T_S4_S3_.exit: ; preds = %.lr.ph.i.i.i.i.i43.prol.loopexit, %.lr.ph.i.i.i.i.i43, %_ZSt22__uninitialized_move_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit
  %i.cf = icmp sgt i64 %i.e, 0
  br i1 %i.cf, label %.lr.ph.i.i.i.i.i44.preheader, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK3LocILi2EESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

.lr.ph.i.i.i.i.i44.preheader:                     ; preds = %_ZSt13move_backwardIP3LocILi2EES2_ET0_T_S4_S3_.exit
  %min.iters.check242 = icmp ult i64 %i.e, 6
  br i1 %min.iters.check242, label %.lr.ph.i.i.i.i.i44.preheader360, label %vector.memcheck235

vector.memcheck235:                               ; preds = %.lr.ph.i.i.i.i.i44.preheader
  %scevgep236 = getelementptr i8, ptr %1, i64 %i.d
  %bound0238 = icmp ult ptr %1, %3
  %bound1239 = icmp ult ptr %2, %scevgep236
  %found.conflict240 = and i1 %bound0238, %bound1239
  br i1 %found.conflict240, label %.lr.ph.i.i.i.i.i44.preheader360, label %vector.ph243

vector.ph243:                                     ; preds = %vector.memcheck235
  %n.vec245 = and i64 %i.e, 9223372036854775804   ; 3 uses
  %i.cg = and i64 %i.e, 3
  %i.ch = shl i64 %n.vec245, 3                    ; 2 uses
  %i.ci = getelementptr i8, ptr %1, i64 %i.ch
  %i.cj = getelementptr i8, ptr %2, i64 %i.ch
  br label %vector.body246

vector.body246:                                   ; preds = %vector.body246, %vector.ph243
  %index247 = phi i64 [ 0, %vector.ph243 ], [ %index.next260, %vector.body246 ] ; 2 uses
  %i.ck = shl i64 %index247, 3                    ; 3 uses
  %i.cl = or disjoint i64 %i.ck, 16               ; 2 uses
  %next.gep248 = getelementptr i8, ptr %1, i64 %i.ck
  %next.gep249 = getelementptr i8, ptr %1, i64 %i.cl
  %next.gep250 = getelementptr i8, ptr %2, i64 %i.ck
  %next.gep251 = getelementptr i8, ptr %2, i64 %i.cl
  %wide.vec252 = load <4 x i32>, ptr %next.gep250, align 4, !tbaa !236, !alias.scope !2272
  %wide.vec255 = load <4 x i32>, ptr %next.gep251, align 4, !tbaa !236, !alias.scope !2272
  store <4 x i32> %wide.vec252, ptr %next.gep248, align 4, !tbaa !4, !alias.scope !2275, !noalias !2272
  store <4 x i32> %wide.vec255, ptr %next.gep249, align 4, !tbaa !4, !alias.scope !2275, !noalias !2272
  %index.next260 = add nuw i64 %index247, 4       ; 2 uses
  %i.cm = icmp eq i64 %index.next260, %n.vec245
  br i1 %i.cm, label %middle.block261, label %vector.body246, !llvm.loop !2277

middle.block261:                                  ; preds = %vector.body246
  %cmp.n262 = icmp eq i64 %i.e, %n.vec245
  br i1 %cmp.n262, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK3LocILi2EESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, label %.lr.ph.i.i.i.i.i44.preheader360

.lr.ph.i.i.i.i.i44.preheader360:                  ; preds = %vector.memcheck235, %.lr.ph.i.i.i.i.i44.preheader, %middle.block261
  %.012.i.i.i.i.i.ph = phi i64 [ %i.e, %vector.memcheck235 ], [ %i.e, %.lr.ph.i.i.i.i.i44.preheader ], [ %i.cg, %middle.block261 ]
  %.0811.i.i.i.i.i.ph = phi ptr [ %1, %vector.memcheck235 ], [ %1, %.lr.ph.i.i.i.i.i44.preheader ], [ %i.ci, %middle.block261 ]
  %.0910.i.i.i.i.i.ph = phi ptr [ %2, %vector.memcheck235 ], [ %2, %.lr.ph.i.i.i.i.i44.preheader ], [ %i.cj, %middle.block261 ]
  br label %.lr.ph.i.i.i.i.i44

.lr.ph.i.i.i.i.i44:                               ; preds = %.lr.ph.i.i.i.i.i44.preheader360, %.lr.ph.i.i.i.i.i44
  %.012.i.i.i.i.i = phi i64 [ %i.ct, %.lr.ph.i.i.i.i.i44 ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i44.preheader360 ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.cs, %.lr.ph.i.i.i.i.i44 ], [ %.0811.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i44.preheader360 ] ; 3 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.cr, %.lr.ph.i.i.i.i.i44 ], [ %.0910.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i44.preheader360 ] ; 3 uses
  %i.cn = load i32, ptr %.0910.i.i.i.i.i, align 4, !tbaa !236
  store i32 %i.cn, ptr %.0811.i.i.i.i.i, align 4, !tbaa !4
  %i.co = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 4
  %i.cp = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 4
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !236
  store i32 %i.cq, ptr %i.co, align 4, !tbaa !4
  %i.cr = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.cs = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  %i.ct = add nsw i64 %.012.i.i.i.i.i, -1
  %i.cu = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.cu, label %.lr.ph.i.i.i.i.i44, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK3LocILi2EESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, !llvm.loop !2278

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPK3LocILi2EESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.cv = getelementptr inbounds i8, ptr %2, i64 %i.n ; 7 uses
  %.not7.i.i.i.i = icmp eq ptr %i.cv, %3
  br i1 %.not7.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK3LocILi2EESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPK3LocILi2EESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.cw = add i64 %i.b, %i.m
  %i.cx = add i64 %i.k, %i.c
  %6 = sub i64 %i.cw, %i.cx
  %7 = add i64 %6, -8                             ; 2 uses
  %i.cy = lshr i64 %7, 3
  %i.cz = add nuw nsw i64 %i.cy, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %7, 200
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader364, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.da = add i64 %i.b, %i.m
  %i.db = add i64 %i.da, -8
  %i.dc = add i64 %i.k, %i.c
  %i.dd = sub i64 %i.db, %i.dc
  %i.de = and i64 %i.dd, -8                       ; 2 uses
  %i.df = getelementptr i8, ptr %i.i, i64 %i.de
  %scevgep = getelementptr i8, ptr %i.df, i64 8
  %i.dg = add i64 %i.de, %i.k
  %i.dh = add i64 %i.dg, 8
  %i.di = sub i64 %i.dh, %i.m
  %scevgep115 = getelementptr i8, ptr %2, i64 %i.di
  %bound0 = icmp ult ptr %i.i, %scevgep115
  %bound1 = icmp ult ptr %i.cv, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader364, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cz, 4611686018427387900     ; 3 uses
  %i.dj = shl i64 %n.vec, 3                       ; 2 uses
  %i.dk = getelementptr i8, ptr %i.i, i64 %i.dj
  %i.dl = getelementptr i8, ptr %i.cv, i64 %i.dj
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dm = shl i64 %index, 3                       ; 3 uses
  %i.dn = or disjoint i64 %i.dm, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %i.i, i64 %i.dm
  %next.gep116 = getelementptr i8, ptr %i.i, i64 %i.dn
  %next.gep117 = getelementptr i8, ptr %i.cv, i64 %i.dm
  %next.gep118 = getelementptr i8, ptr %i.cv, i64 %i.dn
  %wide.vec = load <4 x i32>, ptr %next.gep117, align 4, !tbaa !236, !alias.scope !2279
  %wide.vec120 = load <4 x i32>, ptr %next.gep118, align 4, !tbaa !236, !alias.scope !2279
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !4, !alias.scope !2282, !noalias !2279
  store <4 x i32> %wide.vec120, ptr %next.gep116, align 4, !tbaa !4, !alias.scope !2282, !noalias !2279
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.do = icmp eq i64 %index.next, %n.vec
  br i1 %i.do, label %middle.block, label %vector.body, !llvm.loop !2284

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cz, %n.vec
  br i1 %cmp.n, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK3LocILi2EESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.preheader364

.lr.ph.i.i.i.i.preheader364:                      ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.09.i.i.i.i.ph = phi ptr [ %i.i, %vector.memcheck ], [ %i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.dk, %middle.block ]
  %.sroa.04.08.i.i.i.i.ph = phi ptr [ %i.cv, %vector.memcheck ], [ %i.cv, %.lr.ph.i.i.i.i.preheader ], [ %i.dl, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader364, %.lr.ph.i.i.i.i
  %.09.i.i.i.i = phi ptr [ %i.du, %.lr.ph.i.i.i.i ], [ %.09.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader364 ] ; 3 uses
  %.sroa.04.08.i.i.i.i = phi ptr [ %i.dt, %.lr.ph.i.i.i.i ], [ %.sroa.04.08.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader364 ] ; 3 uses
  %i.dp = load i32, ptr %.sroa.04.08.i.i.i.i, align 4, !tbaa !236
  store i32 %i.dp, ptr %.09.i.i.i.i, align 4, !tbaa !4
  %i.dq = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 4
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i, i64 4
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !236
  store i32 %i.ds, ptr %i.dq, align 4, !tbaa !4
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i, i64 8 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.dt, %3
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK3LocILi2EESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !2285

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK3LocILi2EESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPK3LocILi2EESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.dv = sub nsw i64 %i.e, %i.o
  %i.dw = getelementptr [8 x i8], ptr %i.i, i64 %i.dv ; 6 uses
  %.not7.i.i.i.i.i45 = icmp eq ptr %1, %i.i
  br i1 %.not7.i.i.i.i.i45, label %_ZSt22__uninitialized_move_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit51, label %.lr.ph.i.i.i.i.i46.preheader

.lr.ph.i.i.i.i.i46.preheader:                     ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK3LocILi2EESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit
  %8 = sub i64 %i.k, %i.m
  %9 = add i64 %8, -8                             ; 2 uses
  %i.dx = lshr i64 %9, 3
  %i.dy = add nuw nsw i64 %i.dx, 1                ; 2 uses
  %min.iters.check132 = icmp ult i64 %9, 168
  br i1 %min.iters.check132, label %.lr.ph.i.i.i.i.i46.preheader363, label %vector.memcheck125

vector.memcheck125:                               ; preds = %.lr.ph.i.i.i.i.i46.preheader
  %i.dz = add i64 %i.k, -8
  %i.ea = sub i64 %i.dz, %i.m
  %i.eb = and i64 %i.ea, -8                       ; 2 uses
  %i.ec = add i64 %i.d, %i.eb
  %i.ed = add i64 %i.ec, 8
  %i.ee = sub i64 %i.ed, %i.n
  %scevgep126 = getelementptr i8, ptr %i.i, i64 %i.ee
  %i.ef = getelementptr i8, ptr %1, i64 %i.eb
  %scevgep127 = getelementptr i8, ptr %i.ef, i64 8
  %bound0128 = icmp ult ptr %i.dw, %scevgep127
  %bound1129 = icmp ult ptr %1, %scevgep126
  %found.conflict130 = and i1 %bound0128, %bound1129
  br i1 %found.conflict130, label %.lr.ph.i.i.i.i.i46.preheader363, label %vector.ph133

vector.ph133:                                     ; preds = %vector.memcheck125
  %n.vec135 = and i64 %i.dy, 4611686018427387900  ; 3 uses
  %i.eg = shl i64 %n.vec135, 3                    ; 2 uses
  %i.eh = getelementptr i8, ptr %i.dw, i64 %i.eg
  %i.ei = getelementptr i8, ptr %1, i64 %i.eg
  br label %vector.body136

vector.body136:                                   ; preds = %vector.body136, %vector.ph133
  %index137 = phi i64 [ 0, %vector.ph133 ], [ %index.next150, %vector.body136 ] ; 2 uses
  %i.ej = shl i64 %index137, 3                    ; 3 uses
  %i.ek = or disjoint i64 %i.ej, 16               ; 2 uses
  %next.gep138 = getelementptr i8, ptr %i.dw, i64 %i.ej
  %next.gep139 = getelementptr i8, ptr %i.dw, i64 %i.ek
  %next.gep140 = getelementptr i8, ptr %1, i64 %i.ej
  %next.gep141 = getelementptr i8, ptr %1, i64 %i.ek
  %wide.vec142 = load <4 x i32>, ptr %next.gep140, align 4, !tbaa !236, !alias.scope !2286
  %wide.vec145 = load <4 x i32>, ptr %next.gep141, align 4, !tbaa !236, !alias.scope !2286
  store <4 x i32> %wide.vec142, ptr %next.gep138, align 4, !tbaa !4, !alias.scope !2289, !noalias !2286
  store <4 x i32> %wide.vec145, ptr %next.gep139, align 4, !tbaa !4, !alias.scope !2289, !noalias !2286
  %index.next150 = add nuw i64 %index137, 4       ; 2 uses
  %i.el = icmp eq i64 %index.next150, %n.vec135
  br i1 %i.el, label %middle.block151, label %vector.body136, !llvm.loop !2291

middle.block151:                                  ; preds = %vector.body136
  %cmp.n152 = icmp eq i64 %i.dy, %n.vec135
  br i1 %cmp.n152, label %_ZSt22__uninitialized_move_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit51, label %.lr.ph.i.i.i.i.i46.preheader363

.lr.ph.i.i.i.i.i46.preheader363:                  ; preds = %vector.memcheck125, %.lr.ph.i.i.i.i.i46.preheader, %middle.block151
  %.09.i.i.i.i.i47.ph = phi ptr [ %i.dw, %vector.memcheck125 ], [ %i.dw, %.lr.ph.i.i.i.i.i46.preheader ], [ %i.eh, %middle.block151 ]
  %.sroa.04.08.i.i.i.i.i48.ph = phi ptr [ %1, %vector.memcheck125 ], [ %1, %.lr.ph.i.i.i.i.i46.preheader ], [ %i.ei, %middle.block151 ]
  br label %.lr.ph.i.i.i.i.i46

.lr.ph.i.i.i.i.i46:                               ; preds = %.lr.ph.i.i.i.i.i46.preheader363, %.lr.ph.i.i.i.i.i46
  %.09.i.i.i.i.i47 = phi ptr [ %i.er, %.lr.ph.i.i.i.i.i46 ], [ %.09.i.i.i.i.i47.ph, %.lr.ph.i.i.i.i.i46.preheader363 ] ; 3 uses
  %.sroa.04.08.i.i.i.i.i48 = phi ptr [ %i.eq, %.lr.ph.i.i.i.i.i46 ], [ %.sroa.04.08.i.i.i.i.i48.ph, %.lr.ph.i.i.i.i.i46.preheader363 ] ; 3 uses
  %i.em = load i32, ptr %.sroa.04.08.i.i.i.i.i48, align 4, !tbaa !236
  store i32 %i.em, ptr %.09.i.i.i.i.i47, align 4, !tbaa !4
  %i.en = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i47, i64 4
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i48, i64 4
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !236
  store i32 %i.ep, ptr %i.en, align 4, !tbaa !4
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i48, i64 8 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i47, i64 8
  %.not.i.i.i.i.i49 = icmp eq ptr %i.eq, %i.i
  br i1 %.not.i.i.i.i.i49, label %_ZSt22__uninitialized_move_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit51, label %.lr.ph.i.i.i.i.i46, !llvm.loop !2292

_ZSt22__uninitialized_move_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit51: ; preds = %.lr.ph.i.i.i.i.i46, %middle.block151, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK3LocILi2EESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit
  %i.es = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.d
  store ptr %i.es, ptr %i.h, align 8, !tbaa !264
  %i.et = ashr exact i64 %i.n, 3                  ; 7 uses
  %i.eu = icmp sgt i64 %i.et, 0
  br i1 %i.eu, label %.lr.ph.i.i.i.i.i53.preheader, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK3LocILi2EESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

.lr.ph.i.i.i.i.i53.preheader:                     ; preds = %_ZSt22__uninitialized_move_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit51
  %min.iters.check162 = icmp ult i64 %i.et, 6
  br i1 %min.iters.check162, label %.lr.ph.i.i.i.i.i53.preheader361, label %vector.memcheck155

vector.memcheck155:                               ; preds = %.lr.ph.i.i.i.i.i53.preheader
  %scevgep157 = getelementptr i8, ptr %2, i64 %i.n
  %bound0158 = icmp ult ptr %1, %scevgep157
  %bound1159 = icmp ult ptr %2, %i.i
  %found.conflict160 = and i1 %bound0158, %bound1159
  br i1 %found.conflict160, label %.lr.ph.i.i.i.i.i53.preheader361, label %vector.ph163

vector.ph163:                                     ; preds = %vector.memcheck155
  %n.vec165 = and i64 %i.et, 9223372036854775804  ; 3 uses
  %i.ev = and i64 %i.et, 3
  %i.ew = shl i64 %n.vec165, 3                    ; 2 uses
  %i.ex = getelementptr i8, ptr %1, i64 %i.ew
  %i.ey = getelementptr i8, ptr %2, i64 %i.ew
  br label %vector.body166

vector.body166:                                   ; preds = %vector.body166, %vector.ph163
  %index167 = phi i64 [ 0, %vector.ph163 ], [ %index.next180, %vector.body166 ] ; 2 uses
  %i.ez = shl i64 %index167, 3                    ; 3 uses
  %i.fa = or disjoint i64 %i.ez, 16               ; 2 uses
  %next.gep168 = getelementptr i8, ptr %1, i64 %i.ez
  %next.gep169 = getelementptr i8, ptr %1, i64 %i.fa
  %next.gep170 = getelementptr i8, ptr %2, i64 %i.ez
  %next.gep171 = getelementptr i8, ptr %2, i64 %i.fa
  %wide.vec172 = load <4 x i32>, ptr %next.gep170, align 4, !tbaa !236, !alias.scope !2293
  %wide.vec175 = load <4 x i32>, ptr %next.gep171, align 4, !tbaa !236, !alias.scope !2293
  store <4 x i32> %wide.vec172, ptr %next.gep168, align 4, !tbaa !4, !alias.scope !2296, !noalias !2293
  store <4 x i32> %wide.vec175, ptr %next.gep169, align 4, !tbaa !4, !alias.scope !2296, !noalias !2293
  %index.next180 = add nuw i64 %index167, 4       ; 2 uses
  %i.fb = icmp eq i64 %index.next180, %n.vec165
  br i1 %i.fb, label %middle.block181, label %vector.body166, !llvm.loop !2298

middle.block181:                                  ; preds = %vector.body166
  %cmp.n182 = icmp eq i64 %i.et, %n.vec165
  br i1 %cmp.n182, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK3LocILi2EESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, label %.lr.ph.i.i.i.i.i53.preheader361

.lr.ph.i.i.i.i.i53.preheader361:                  ; preds = %vector.memcheck155, %.lr.ph.i.i.i.i.i53.preheader, %middle.block181
  %.012.i.i.i.i.i54.ph = phi i64 [ %i.et, %vector.memcheck155 ], [ %i.et, %.lr.ph.i.i.i.i.i53.preheader ], [ %i.ev, %middle.block181 ]
  %.0811.i.i.i.i.i55.ph = phi ptr [ %1, %vector.memcheck155 ], [ %1, %.lr.ph.i.i.i.i.i53.preheader ], [ %i.ex, %middle.block181 ]
  %.0910.i.i.i.i.i56.ph = phi ptr [ %2, %vector.memcheck155 ], [ %2, %.lr.ph.i.i.i.i.i53.preheader ], [ %i.ey, %middle.block181 ]
  br label %.lr.ph.i.i.i.i.i53

.lr.ph.i.i.i.i.i53:                               ; preds = %.lr.ph.i.i.i.i.i53.preheader361, %.lr.ph.i.i.i.i.i53
  %.012.i.i.i.i.i54 = phi i64 [ %i.fi, %.lr.ph.i.i.i.i.i53 ], [ %.012.i.i.i.i.i54.ph, %.lr.ph.i.i.i.i.i53.preheader361 ] ; 2 uses
  %.0811.i.i.i.i.i55 = phi ptr [ %i.fh, %.lr.ph.i.i.i.i.i53 ], [ %.0811.i.i.i.i.i55.ph, %.lr.ph.i.i.i.i.i53.preheader361 ] ; 3 uses
  %.0910.i.i.i.i.i56 = phi ptr [ %i.fg, %.lr.ph.i.i.i.i.i53 ], [ %.0910.i.i.i.i.i56.ph, %.lr.ph.i.i.i.i.i53.preheader361 ] ; 3 uses
  %i.fc = load i32, ptr %.0910.i.i.i.i.i56, align 4, !tbaa !236
  store i32 %i.fc, ptr %.0811.i.i.i.i.i55, align 4, !tbaa !4
  %i.fd = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i55, i64 4
  %i.fe = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i56, i64 4
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !236
  store i32 %i.ff, ptr %i.fd, align 4, !tbaa !4
  %i.fg = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i56, i64 8
  %i.fh = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i55, i64 8
  %i.fi = add nsw i64 %.012.i.i.i.i.i54, -1
  %i.fj = icmp samesign ugt i64 %.012.i.i.i.i.i54, 1
  br i1 %i.fj, label %.lr.ph.i.i.i.i.i53, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK3LocILi2EESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, !llvm.loop !2299

bb.e:                                             ; preds = %bb.b
  %i.fk = load ptr, ptr %0, align 8, !tbaa !267   ; 11 uses
  %i.fl = ptrtoint ptr %i.fk to i64               ; 4 uses
  %i.fm = sub i64 %i.k, %i.fl
  %i.fn = ashr exact i64 %i.fm, 3                 ; 4 uses
  %i.fo = sub nsw i64 1152921504606846975, %i.fn
  %i.fp = icmp ult i64 %i.fo, %i.e
  br i1 %i.fp, label %bb.f, label %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.199) #46
  unreachable

_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.e
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.fn, i64 %i.e)
  %i.fq = add nsw i64 %.sroa.speculated.i, %i.fn  ; 2 uses
  %i.fr = icmp ult i64 %i.fq, %i.fn
  %i.fs = tail call i64 @llvm.umin.i64(i64 %i.fq, i64 1152921504606846975)
  %i.ft = select i1 %i.fr, i64 1152921504606846975, i64 %i.fs ; 3 uses
  %.not.i = icmp eq i64 %i.ft, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseI3LocILi2EESaIS1_EE11_M_allocateEm.exit, label %bb.g

bb.g:                                             ; preds = %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit
  %i.fu = shl nuw nsw i64 %i.ft, 3
  %i.fv = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fu) #45
  br label %_ZNSt12_Vector_baseI3LocILi2EESaIS1_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseI3LocILi2EESaIS1_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit, %bb.g
  %i.fw = phi ptr [ %i.fv, %bb.g ], [ null, %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit ] ; 10 uses
  %.not9.i.i.i.i.i = icmp eq ptr %i.fk, %1
  br i1 %.not9.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i.i.i.i58.preheader

.lr.ph.i.i.i.i.i58.preheader:                     ; preds = %_ZNSt12_Vector_baseI3LocILi2EESaIS1_EE11_M_allocateEm.exit
  %i.fx = add i64 %i.a, -8
  %i.fy = sub i64 %i.fx, %i.fl                    ; 2 uses
  %i.fz = lshr i64 %i.fy, 3
  %i.ga = add nuw nsw i64 %i.fz, 1                ; 2 uses
  %min.iters.check273 = icmp ult i64 %i.fy, 120
  br i1 %min.iters.check273, label %.lr.ph.i.i.i.i.i58.preheader358, label %vector.memcheck266

vector.memcheck266:                               ; preds = %.lr.ph.i.i.i.i.i58.preheader
  %i.gb = add i64 %i.a, -8
  %i.gc = sub i64 %i.gb, %i.fl
  %i.gd = and i64 %i.gc, -8
  %i.ge = add i64 %i.gd, 8                        ; 2 uses
  %scevgep267 = getelementptr i8, ptr %i.fw, i64 %i.ge
  %scevgep268 = getelementptr i8, ptr %i.fk, i64 %i.ge
  %bound0269 = icmp ult ptr %i.fw, %scevgep268
  %bound1270 = icmp ult ptr %i.fk, %scevgep267
  %found.conflict271 = and i1 %bound0269, %bound1270
  br i1 %found.conflict271, label %.lr.ph.i.i.i.i.i58.preheader358, label %vector.ph274

vector.ph274:                                     ; preds = %vector.memcheck266
  %n.vec276 = and i64 %i.ga, 4611686018427387900  ; 3 uses
  %i.gf = shl i64 %n.vec276, 3                    ; 2 uses
  %i.gg = getelementptr i8, ptr %i.fw, i64 %i.gf  ; 2 uses
  %i.gh = getelementptr i8, ptr %i.fk, i64 %i.gf
  br label %vector.body277

vector.body277:                                   ; preds = %vector.body277, %vector.ph274
  %index278 = phi i64 [ 0, %vector.ph274 ], [ %index.next291, %vector.body277 ] ; 2 uses
  %i.gi = shl i64 %index278, 3                    ; 3 uses
  %i.gj = or disjoint i64 %i.gi, 16               ; 2 uses
  %next.gep279 = getelementptr i8, ptr %i.fw, i64 %i.gi
  %next.gep280 = getelementptr i8, ptr %i.fw, i64 %i.gj
  %next.gep281 = getelementptr i8, ptr %i.fk, i64 %i.gi
  %next.gep282 = getelementptr i8, ptr %i.fk, i64 %i.gj
  %wide.vec283 = load <4 x i32>, ptr %next.gep281, align 4, !tbaa !236, !alias.scope !2300
  %wide.vec286 = load <4 x i32>, ptr %next.gep282, align 4, !tbaa !236, !alias.scope !2300
  store <4 x i32> %wide.vec283, ptr %next.gep279, align 4, !tbaa !4, !alias.scope !2303, !noalias !2300
  store <4 x i32> %wide.vec286, ptr %next.gep280, align 4, !tbaa !4, !alias.scope !2303, !noalias !2300
  %index.next291 = add nuw i64 %index278, 4       ; 2 uses
  %i.gk = icmp eq i64 %index.next291, %n.vec276
  br i1 %i.gk, label %middle.block292, label %vector.body277, !llvm.loop !2305

middle.block292:                                  ; preds = %vector.body277
  %cmp.n293 = icmp eq i64 %i.ga, %n.vec276
  br i1 %cmp.n293, label %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i.i.i.i58.preheader358

.lr.ph.i.i.i.i.i58.preheader358:                  ; preds = %vector.memcheck266, %.lr.ph.i.i.i.i.i58.preheader, %middle.block292
  %.011.i.i.i.i.i.ph = phi ptr [ %i.fw, %vector.memcheck266 ], [ %i.fw, %.lr.ph.i.i.i.i.i58.preheader ], [ %i.gg, %middle.block292 ]
  %.0810.i.i.i.i.i.ph = phi ptr [ %i.fk, %vector.memcheck266 ], [ %i.fk, %.lr.ph.i.i.i.i.i58.preheader ], [ %i.gh, %middle.block292 ]
  br label %.lr.ph.i.i.i.i.i58

.lr.ph.i.i.i.i.i58:                               ; preds = %.lr.ph.i.i.i.i.i58.preheader358, %.lr.ph.i.i.i.i.i58
  %.011.i.i.i.i.i = phi ptr [ %i.gq, %.lr.ph.i.i.i.i.i58 ], [ %.011.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i58.preheader358 ] ; 3 uses
  %.0810.i.i.i.i.i = phi ptr [ %i.gp, %.lr.ph.i.i.i.i.i58 ], [ %.0810.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i58.preheader358 ] ; 3 uses
  %i.gl = load i32, ptr %.0810.i.i.i.i.i, align 4, !tbaa !236
  store i32 %i.gl, ptr %.011.i.i.i.i.i, align 4, !tbaa !4
  %i.gm = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 4
  %i.gn = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 4
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !236
  store i32 %i.go, ptr %i.gm, align 4, !tbaa !4
  %i.gp = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 8 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i59 = icmp eq ptr %i.gp, %1
  br i1 %.not.i.i.i.i.i59, label %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i.i.i.i58, !llvm.loop !2306

_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i58, %middle.block292, %_ZNSt12_Vector_baseI3LocILi2EESaIS1_EE11_M_allocateEm.exit
  %.0.lcssa.i.i.i.i.i60 = phi ptr [ %i.fw, %_ZNSt12_Vector_baseI3LocILi2EESaIS1_EE11_M_allocateEm.exit ], [ %i.gg, %middle.block292 ], [ %i.gq, %.lr.ph.i.i.i.i.i58 ] ; 7 uses
  %10 = sub i64 %i.b, %i.c
  %11 = add i64 %10, -8                           ; 2 uses
  %i.gr = lshr i64 %11, 3
  %i.gs = add nuw nsw i64 %i.gr, 1                ; 2 uses
  %min.iters.check303 = icmp ult i64 %11, 120
  br i1 %min.iters.check303, label %.lr.ph.i.i.i.i62.preheader, label %vector.memcheck296

vector.memcheck296:                               ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit
  %i.gt = add i64 %i.b, -8
  %i.gu = sub i64 %i.gt, %i.c
  %i.gv = and i64 %i.gu, -8
  %i.gw = add i64 %i.gv, 8                        ; 2 uses
  %scevgep297 = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i60, i64 %i.gw
  %scevgep298 = getelementptr i8, ptr %2, i64 %i.gw
  %bound0299 = icmp ult ptr %.0.lcssa.i.i.i.i.i60, %scevgep298
  %bound1300 = icmp ult ptr %2, %scevgep297
  %found.conflict301 = and i1 %bound0299, %bound1300
  br i1 %found.conflict301, label %.lr.ph.i.i.i.i62.preheader, label %vector.ph304

vector.ph304:                                     ; preds = %vector.memcheck296
  %n.vec306 = and i64 %i.gs, 4611686018427387900  ; 3 uses
  %i.gx = shl i64 %n.vec306, 3                    ; 2 uses
  %i.gy = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i60, i64 %i.gx ; 2 uses
  %i.gz = getelementptr i8, ptr %2, i64 %i.gx
  br label %vector.body307

vector.body307:                                   ; preds = %vector.body307, %vector.ph304
  %index308 = phi i64 [ 0, %vector.ph304 ], [ %index.next321, %vector.body307 ] ; 2 uses
  %i.ha = shl i64 %index308, 3                    ; 3 uses
  %i.hb = or disjoint i64 %i.ha, 16               ; 2 uses
  %next.gep309 = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i60, i64 %i.ha
  %next.gep310 = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i60, i64 %i.hb
  %next.gep311 = getelementptr i8, ptr %2, i64 %i.ha
  %next.gep312 = getelementptr i8, ptr %2, i64 %i.hb
  %wide.vec313 = load <4 x i32>, ptr %next.gep311, align 4, !tbaa !236, !alias.scope !2307
  %wide.vec316 = load <4 x i32>, ptr %next.gep312, align 4, !tbaa !236, !alias.scope !2307
  store <4 x i32> %wide.vec313, ptr %next.gep309, align 4, !tbaa !4, !alias.scope !2310, !noalias !2307
  store <4 x i32> %wide.vec316, ptr %next.gep310, align 4, !tbaa !4, !alias.scope !2310, !noalias !2307
  %index.next321 = add nuw i64 %index308, 4       ; 2 uses
  %i.hc = icmp eq i64 %index.next321, %n.vec306
  br i1 %i.hc, label %middle.block322, label %vector.body307, !llvm.loop !2312

middle.block322:                                  ; preds = %vector.body307
  %cmp.n323 = icmp eq i64 %i.gs, %n.vec306
  br i1 %cmp.n323, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK3LocILi2EESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit67, label %.lr.ph.i.i.i.i62.preheader

.lr.ph.i.i.i.i62.preheader:                       ; preds = %vector.memcheck296, %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit, %middle.block322
  %.09.i.i.i.i63.ph = phi ptr [ %.0.lcssa.i.i.i.i.i60, %vector.memcheck296 ], [ %.0.lcssa.i.i.i.i.i60, %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit ], [ %i.gy, %middle.block322 ]
  %.sroa.04.08.i.i.i.i64.ph = phi ptr [ %2, %vector.memcheck296 ], [ %2, %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit ], [ %i.gz, %middle.block322 ]
  br label %.lr.ph.i.i.i.i62

.lr.ph.i.i.i.i62:                                 ; preds = %.lr.ph.i.i.i.i62.preheader, %.lr.ph.i.i.i.i62
  %.09.i.i.i.i63 = phi ptr [ %i.hi, %.lr.ph.i.i.i.i62 ], [ %.09.i.i.i.i63.ph, %.lr.ph.i.i.i.i62.preheader ] ; 3 uses
  %.sroa.04.08.i.i.i.i64 = phi ptr [ %i.hh, %.lr.ph.i.i.i.i62 ], [ %.sroa.04.08.i.i.i.i64.ph, %.lr.ph.i.i.i.i62.preheader ] ; 3 uses
  %i.hd = load i32, ptr %.sroa.04.08.i.i.i.i64, align 4, !tbaa !236
  store i32 %i.hd, ptr %.09.i.i.i.i63, align 4, !tbaa !4
  %i.he = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i63, i64 4
  %i.hf = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i64, i64 4
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !236
  store i32 %i.hg, ptr %i.he, align 4, !tbaa !4
  %i.hh = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i64, i64 8 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i63, i64 8 ; 2 uses
  %.not.i.i.i.i65 = icmp eq ptr %i.hh, %3
  br i1 %.not.i.i.i.i65, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK3LocILi2EESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit67, label %.lr.ph.i.i.i.i62, !llvm.loop !2313

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK3LocILi2EESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit67: ; preds = %.lr.ph.i.i.i.i62, %middle.block322
  %.lcssa113 = phi ptr [ %i.gy, %middle.block322 ], [ %i.hi, %.lr.ph.i.i.i.i62 ] ; 8 uses
  %.not9.i.i.i.i.i68 = icmp eq ptr %1, %i.i
  br i1 %.not9.i.i.i.i.i68, label %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit74, label %.lr.ph.i.i.i.i.i69.preheader

.lr.ph.i.i.i.i.i69.preheader:                     ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK3LocILi2EESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit67
  %i.hj = add i64 %i.k, -8
  %i.hk = sub i64 %i.hj, %i.a                     ; 2 uses
  %i.hl = lshr i64 %i.hk, 3
  %i.hm = add nuw nsw i64 %i.hl, 1                ; 2 uses
  %min.iters.check333 = icmp ult i64 %i.hk, 120
  br i1 %min.iters.check333, label %.lr.ph.i.i.i.i.i69.preheader356, label %vector.memcheck326

vector.memcheck326:                               ; preds = %.lr.ph.i.i.i.i.i69.preheader
  %i.hn = add i64 %i.k, -8
  %i.ho = sub i64 %i.hn, %i.a
  %i.hp = and i64 %i.ho, -8
  %i.hq = add i64 %i.hp, 8                        ; 2 uses
  %scevgep327 = getelementptr i8, ptr %.lcssa113, i64 %i.hq
  %scevgep328 = getelementptr i8, ptr %1, i64 %i.hq
  %bound0329 = icmp ult ptr %.lcssa113, %scevgep328
  %bound1330 = icmp ult ptr %1, %scevgep327
  %found.conflict331 = and i1 %bound0329, %bound1330
  br i1 %found.conflict331, label %.lr.ph.i.i.i.i.i69.preheader356, label %vector.ph334

vector.ph334:                                     ; preds = %vector.memcheck326
  %n.vec336 = and i64 %i.hm, 4611686018427387900  ; 3 uses
  %i.hr = shl i64 %n.vec336, 3                    ; 2 uses
  %i.hs = getelementptr i8, ptr %.lcssa113, i64 %i.hr ; 2 uses
  %i.ht = getelementptr i8, ptr %1, i64 %i.hr
  br label %vector.body337

vector.body337:                                   ; preds = %vector.body337, %vector.ph334
  %index338 = phi i64 [ 0, %vector.ph334 ], [ %index.next351, %vector.body337 ] ; 2 uses
  %i.hu = shl i64 %index338, 3                    ; 3 uses
  %i.hv = or disjoint i64 %i.hu, 16               ; 2 uses
  %next.gep339 = getelementptr i8, ptr %.lcssa113, i64 %i.hu
  %next.gep340 = getelementptr i8, ptr %.lcssa113, i64 %i.hv
  %next.gep341 = getelementptr i8, ptr %1, i64 %i.hu
  %next.gep342 = getelementptr i8, ptr %1, i64 %i.hv
  %wide.vec343 = load <4 x i32>, ptr %next.gep341, align 4, !tbaa !236, !alias.scope !2314
  %wide.vec346 = load <4 x i32>, ptr %next.gep342, align 4, !tbaa !236, !alias.scope !2314
  store <4 x i32> %wide.vec343, ptr %next.gep339, align 4, !tbaa !4, !alias.scope !2317, !noalias !2314
  store <4 x i32> %wide.vec346, ptr %next.gep340, align 4, !tbaa !4, !alias.scope !2317, !noalias !2314
  %index.next351 = add nuw i64 %index338, 4       ; 2 uses
  %i.hw = icmp eq i64 %index.next351, %n.vec336
  br i1 %i.hw, label %middle.block352, label %vector.body337, !llvm.loop !2319

middle.block352:                                  ; preds = %vector.body337
  %cmp.n353 = icmp eq i64 %i.hm, %n.vec336
  br i1 %cmp.n353, label %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit74, label %.lr.ph.i.i.i.i.i69.preheader356

.lr.ph.i.i.i.i.i69.preheader356:                  ; preds = %vector.memcheck326, %.lr.ph.i.i.i.i.i69.preheader, %middle.block352
  %.011.i.i.i.i.i70.ph = phi ptr [ %.lcssa113, %vector.memcheck326 ], [ %.lcssa113, %.lr.ph.i.i.i.i.i69.preheader ], [ %i.hs, %middle.block352 ]
  %.0810.i.i.i.i.i71.ph = phi ptr [ %1, %vector.memcheck326 ], [ %1, %.lr.ph.i.i.i.i.i69.preheader ], [ %i.ht, %middle.block352 ]
  br label %.lr.ph.i.i.i.i.i69

.lr.ph.i.i.i.i.i69:                               ; preds = %.lr.ph.i.i.i.i.i69.preheader356, %.lr.ph.i.i.i.i.i69
  %.011.i.i.i.i.i70 = phi ptr [ %i.ic, %.lr.ph.i.i.i.i.i69 ], [ %.011.i.i.i.i.i70.ph, %.lr.ph.i.i.i.i.i69.preheader356 ] ; 3 uses
  %.0810.i.i.i.i.i71 = phi ptr [ %i.ib, %.lr.ph.i.i.i.i.i69 ], [ %.0810.i.i.i.i.i71.ph, %.lr.ph.i.i.i.i.i69.preheader356 ] ; 3 uses
  %i.hx = load i32, ptr %.0810.i.i.i.i.i71, align 4, !tbaa !236
  store i32 %i.hx, ptr %.011.i.i.i.i.i70, align 4, !tbaa !4
  %i.hy = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i70, i64 4
  %i.hz = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i71, i64 4
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !236
  store i32 %i.ia, ptr %i.hy, align 4, !tbaa !4
  %i.ib = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i71, i64 8 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i70, i64 8 ; 2 uses
  %.not.i.i.i.i.i72 = icmp eq ptr %i.ib, %i.i
  br i1 %.not.i.i.i.i.i72, label %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit74, label %.lr.ph.i.i.i.i.i69, !llvm.loop !2320

_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit74: ; preds = %.lr.ph.i.i.i.i.i69, %middle.block352, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK3LocILi2EESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit67
  %.0.lcssa.i.i.i.i.i73 = phi ptr [ %.lcssa113, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK3LocILi2EESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit67 ], [ %i.hs, %middle.block352 ], [ %i.ic, %.lr.ph.i.i.i.i.i69 ]
  %.not.i75 = icmp eq ptr %i.fk, null
  br i1 %.not.i75, label %_ZNSt12_Vector_baseI3LocILi2EESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit74
  %i.id = sub i64 %i.j, %i.fl
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fk, i64 noundef %i.id) #48
  br label %_ZNSt12_Vector_baseI3LocILi2EESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseI3LocILi2EESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit74, %bb.h
  store ptr %i.fw, ptr %0, align 8, !tbaa !267
  store ptr %.0.lcssa.i.i.i.i.i73, ptr %i.h, align 8, !tbaa !264
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %i.fw, i64 %i.ft
  store ptr %i.ie, ptr %i.f, align 8, !tbaa !268
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK3LocILi2EESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK3LocILi2EESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit: ; preds = %.lr.ph.i.i.i.i.i53, %.lr.ph.i.i.i.i.i44, %middle.block181, %middle.block261, %_ZSt22__uninitialized_move_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit51, %_ZSt13move_backwardIP3LocILi2EES2_ET0_T_S4_S3_.exit, %_ZNSt12_Vector_baseI3LocILi2EESaIS1_EE13_M_deallocateEPS1_m.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEvNS7_IPS2_S4_EET_SD_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 4 uses
  %.not94 = icmp eq ptr %2, %3
  br i1 %.not94, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK6VectorILi2Ed4FullESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %3 to i64                   ; 10 uses
  %i.c = ptrtoint ptr %2 to i64                   ; 10 uses
  %i.d = sub i64 %i.b, %i.c                       ; 8 uses
  %i.e = ashr exact i64 %i.d, 4                   ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !280
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !276  ; 35 uses
  %i.j = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.k = ptrtoint ptr %i.i to i64                 ; 10 uses
  %i.l = sub i64 %i.j, %i.k
  %.not = icmp ult i64 %i.l, %i.d
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = ptrtoint ptr %1 to i64                   ; 7 uses
  %i.n = sub i64 %i.k, %i.m                       ; 6 uses
  %i.o = ashr exact i64 %i.n, 4                   ; 2 uses
  %i.p = icmp ugt i64 %i.o, %i.e
  br i1 %i.p, label %bb.d, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPK6VectorILi2Ed4FullESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit

bb.d:                                             ; preds = %bb.c
  %.idx = sub i64 0, %i.d
  %i.q = getelementptr i8, ptr %i.i, i64 %.idx    ; 11 uses
  %4 = sub i64 %i.b, %i.c
  %5 = add i64 %4, -16                            ; 2 uses
  %i.r = lshr i64 %5, 4
  %i.s = add nuw nsw i64 %i.r, 1                  ; 2 uses
  %min.iters.check177 = icmp ult i64 %5, 1040
  br i1 %min.iters.check177, label %.lr.ph.i.i.i.i.i.preheader, label %vector.memcheck151

vector.memcheck151:                               ; preds = %bb.d
  %i.t = add i64 %i.b, -16
  %i.u = sub i64 %i.t, %i.c
  %i.v = and i64 %i.u, -16                        ; 4 uses
  %i.w = getelementptr i8, ptr %i.i, i64 %i.v
  %scevgep152 = getelementptr i8, ptr %i.w, i64 8 ; 3 uses
  %scevgep153 = getelementptr i8, ptr %i.i, i64 8 ; 3 uses
  %i.x = getelementptr i8, ptr %i.i, i64 %i.v
  %scevgep154 = getelementptr i8, ptr %i.x, i64 16 ; 3 uses
  %i.y = add i64 %i.v, %i.c
  %i.z = add i64 %i.y, 8
  %i.aa = sub i64 %i.z, %i.b
  %scevgep155 = getelementptr i8, ptr %i.i, i64 %i.aa ; 2 uses
  %i.ab = add i64 %i.c, 8
  %i.ac = sub i64 %i.ab, %i.b
  %scevgep156 = getelementptr i8, ptr %i.i, i64 %i.ac ; 2 uses
  %i.ad = add i64 %i.v, %i.c
  %i.ae = add i64 %i.ad, 16
  %i.af = sub i64 %i.ae, %i.b
  %scevgep157 = getelementptr i8, ptr %i.i, i64 %i.af ; 2 uses
  %bound0158 = icmp ult ptr %i.i, %scevgep154
  %bound1159 = icmp ult ptr %scevgep153, %scevgep152
  %found.conflict160 = and i1 %bound0158, %bound1159
  %bound0161 = icmp ult ptr %i.i, %scevgep155
  %bound1162 = icmp ult ptr %i.q, %scevgep152
  %found.conflict163 = and i1 %bound0161, %bound1162
  %conflict.rdx = or i1 %found.conflict160, %found.conflict163
  %bound0164 = icmp ult ptr %i.i, %scevgep157
  %bound1165 = icmp ult ptr %scevgep156, %scevgep152
  %found.conflict166 = and i1 %bound0164, %bound1165
  %conflict.rdx167 = or i1 %conflict.rdx, %found.conflict166
  %bound0168 = icmp ult ptr %scevgep153, %scevgep155
  %bound1169 = icmp ult ptr %i.q, %scevgep154
  %found.conflict170 = and i1 %bound0168, %bound1169
  %conflict.rdx171 = or i1 %conflict.rdx167, %found.conflict170
  %bound0172 = icmp ult ptr %scevgep153, %scevgep157
  %bound1173 = icmp ult ptr %scevgep156, %scevgep154
  %found.conflict174 = and i1 %bound0172, %bound1173
  %conflict.rdx175 = or i1 %conflict.rdx171, %found.conflict174
  br i1 %conflict.rdx175, label %.lr.ph.i.i.i.i.i.preheader, label %vector.ph178

vector.ph178:                                     ; preds = %vector.memcheck151
  %n.vec180 = and i64 %i.s, 2305843009213693950   ; 3 uses
  %i.ag = shl i64 %n.vec180, 4                    ; 2 uses
  %i.ah = getelementptr i8, ptr %i.i, i64 %i.ag
  %i.ai = getelementptr i8, ptr %i.q, i64 %i.ag
  br label %vector.body181

vector.body181:                                   ; preds = %vector.body181, %vector.ph178
  %index182 = phi i64 [ 0, %vector.ph178 ], [ %index.next189, %vector.body181 ] ; 2 uses
  %i.aj = shl i64 %index182, 4                    ; 3 uses
  %i.ak = or disjoint i64 %i.aj, 16               ; 2 uses
  %next.gep183 = getelementptr i8, ptr %i.i, i64 %i.aj
  %next.gep184 = getelementptr i8, ptr %i.i, i64 %i.ak
  %next.gep185 = getelementptr i8, ptr %i.q, i64 %i.aj
  %next.gep186 = getelementptr i8, ptr %i.q, i64 %i.ak
  %wide.load187 = load <2 x double>, ptr %next.gep185, align 8, !tbaa !247
  %wide.load188 = load <2 x double>, ptr %next.gep186, align 8, !tbaa !247
  store <2 x double> %wide.load187, ptr %next.gep183, align 8, !tbaa !247
  store <2 x double> %wide.load188, ptr %next.gep184, align 8, !tbaa !247
  %index.next189 = add nuw i64 %index182, 2       ; 2 uses
  %i.al = icmp eq i64 %index.next189, %n.vec180
  br i1 %i.al, label %middle.block190, label %vector.body181, !llvm.loop !2321

middle.block190:                                  ; preds = %vector.body181
  %cmp.n191 = icmp eq i64 %i.s, %n.vec180
  br i1 %cmp.n191, label %_ZSt22__uninitialized_move_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %vector.memcheck151, %bb.d, %middle.block190
  %.09.i.i.i.i.i.ph = phi ptr [ %i.i, %vector.memcheck151 ], [ %i.i, %bb.d ], [ %i.ah, %middle.block190 ]
  %.sroa.04.08.i.i.i.i.i.ph = phi ptr [ %i.q, %vector.memcheck151 ], [ %i.q, %bb.d ], [ %i.ai, %middle.block190 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i ], [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i ], [ %.sroa.04.08.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %i.am = load double, ptr %.sroa.04.08.i.i.i.i.i, align 8, !tbaa !247
  store double %i.am, ptr %.09.i.i.i.i.i, align 8, !tbaa !247
  %i.an = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 8
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !247
  store double %i.ap, ptr %i.an, align 8, !tbaa !247
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 16 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i = icmp eq ptr %i.aq, %i.i
  br i1 %.not.i.i.i.i.i, label %_ZSt22__uninitialized_move_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !2322

_ZSt22__uninitialized_move_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i, %middle.block190
  %i.as = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.d
  store ptr %i.as, ptr %i.h, align 8, !tbaa !276
  %i.at = ptrtoint ptr %i.q to i64
  %i.au = sub i64 %i.at, %i.m                     ; 3 uses
  %i.av = ashr exact i64 %i.au, 4                 ; 3 uses
  %i.aw = icmp sgt i64 %i.av, 0
  br i1 %i.aw, label %.lr.ph.i.i.i.i.i43.preheader, label %_ZSt13move_backwardIP6VectorILi2Ed4FullES3_ET0_T_S5_S4_.exit

.lr.ph.i.i.i.i.i43.preheader:                     ; preds = %_ZSt22__uninitialized_move_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit
  %i.ax = and i64 %i.au, 16
  %lcmp.mod274.not = icmp eq i64 %i.ax, 0
  br i1 %lcmp.mod274.not, label %.lr.ph.i.i.i.i.i43.prol.loopexit, label %.lr.ph.i.i.i.i.i43.prol

.lr.ph.i.i.i.i.i43.prol:                          ; preds = %.lr.ph.i.i.i.i.i43.preheader
  %i.ay = getelementptr inbounds i8, ptr %i.q, i64 -16 ; 2 uses
  %i.az = getelementptr inbounds i8, ptr %i.i, i64 -16 ; 2 uses
  %i.ba = load double, ptr %i.ay, align 8, !tbaa !247
  store double %i.ba, ptr %i.az, align 8, !tbaa !247
  %i.bb = getelementptr inbounds i8, ptr %i.i, i64 -8
  %i.bc = getelementptr inbounds i8, ptr %i.q, i64 -8
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !247
  store double %i.bd, ptr %i.bb, align 8, !tbaa !247
  %i.be = add nsw i64 %i.av, -1
  br label %.lr.ph.i.i.i.i.i43.prol.loopexit

.lr.ph.i.i.i.i.i43.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i43.prol, %.lr.ph.i.i.i.i.i43.preheader
  %.010.i.i.i.i.i.unr = phi i64 [ %i.av, %.lr.ph.i.i.i.i.i43.preheader ], [ %i.be, %.lr.ph.i.i.i.i.i43.prol ]
  %.069.i.i.i.i.i.unr = phi ptr [ %i.i, %.lr.ph.i.i.i.i.i43.preheader ], [ %i.az, %.lr.ph.i.i.i.i.i43.prol ]
  %.078.i.i.i.i.i.unr = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i43.preheader ], [ %i.ay, %.lr.ph.i.i.i.i.i43.prol ]
  %i.bf = icmp eq i64 %i.au, 16
  br i1 %i.bf, label %_ZSt13move_backwardIP6VectorILi2Ed4FullES3_ET0_T_S5_S4_.exit, label %.lr.ph.i.i.i.i.i43

.lr.ph.i.i.i.i.i43:                               ; preds = %.lr.ph.i.i.i.i.i43.prol.loopexit, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.1
  %.010.i.i.i.i.i = phi i64 [ %i.bs, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.1 ], [ %.010.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i43.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.bn, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.1 ], [ %.069.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i43.prol.loopexit ] ; 6 uses
  %.078.i.i.i.i.i = phi ptr [ %i.bm, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.1 ], [ %.078.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i43.prol.loopexit ] ; 6 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %.069.i.i.i.i.i, %.078.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i, label %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i, label %_ZN12VectorEngineILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.i

_ZN12VectorEngineILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i43
  %i.bg = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -16
  %i.bh = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -16
  %i.bi = load double, ptr %i.bg, align 8, !tbaa !247
  store double %i.bi, ptr %i.bh, align 8, !tbaa !247
  %i.bj = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -8
  %i.bk = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -8
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !247
  store double %i.bl, ptr %i.bj, align 8, !tbaa !247
  br label %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i

_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i:    ; preds = %_ZN12VectorEngineILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i43
  %i.bm = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -32 ; 2 uses
  %i.bn = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -32 ; 2 uses
  %.not.i.i.i.i.i.i.1 = icmp eq ptr %.069.i.i.i.i.i, %.078.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.1, label %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.1, label %_ZN12VectorEngineILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.i.1

_ZN12VectorEngineILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.i.1: ; preds = %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i
  %i.bo = load double, ptr %i.bm, align 8, !tbaa !247
  store double %i.bo, ptr %i.bn, align 8, !tbaa !247
  %i.bp = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -24
  %i.bq = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -24
  %i.br = load double, ptr %i.bq, align 8, !tbaa !247
  store double %i.br, ptr %i.bp, align 8, !tbaa !247
  br label %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.1

_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.1:  ; preds = %_ZN12VectorEngineILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.i.1, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i
  %i.bs = add nsw i64 %.010.i.i.i.i.i, -2
  %i.bt = icmp sgt i64 %.010.i.i.i.i.i, 2
  br i1 %i.bt, label %.lr.ph.i.i.i.i.i43, label %_ZSt13move_backwardIP6VectorILi2Ed4FullES3_ET0_T_S5_S4_.exit, !llvm.loop !2323

_ZSt13move_backwardIP6VectorILi2Ed4FullES3_ET0_T_S5_S4_.exit: ; preds = %.lr.ph.i.i.i.i.i43.prol.loopexit, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.1, %_ZSt22__uninitialized_move_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit
  %i.bu = icmp sgt i64 %i.e, 0
  br i1 %i.bu, label %.lr.ph.i.i.i.i.i44.preheader, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK6VectorILi2Ed4FullESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

.lr.ph.i.i.i.i.i44.preheader:                     ; preds = %_ZSt13move_backwardIP6VectorILi2Ed4FullES3_ET0_T_S5_S4_.exit
  %i.bv = and i64 %i.d, 16
  %lcmp.mod276.not = icmp eq i64 %i.bv, 0
  br i1 %lcmp.mod276.not, label %.lr.ph.i.i.i.i.i44.prol.loopexit, label %.lr.ph.i.i.i.i.i44.prol

.lr.ph.i.i.i.i.i44.prol:                          ; preds = %.lr.ph.i.i.i.i.i44.preheader
  %.not.i.i.i.i.i.i45.prol = icmp eq ptr %1, %2
  br i1 %.not.i.i.i.i.i.i45.prol, label %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i47.prol, label %_ZN12VectorEngineILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.i46.prol

_ZN12VectorEngineILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.i46.prol: ; preds = %.lr.ph.i.i.i.i.i44.prol
  %i.bw = load double, ptr %2, align 8, !tbaa !247
  store double %i.bw, ptr %1, align 8, !tbaa !247
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bz = load double, ptr %i.by, align 8, !tbaa !247
  store double %i.bz, ptr %i.bx, align 8, !tbaa !247
  br label %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i47.prol

_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i47.prol: ; preds = %_ZN12VectorEngineILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.i46.prol, %.lr.ph.i.i.i.i.i44.prol
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cc = add nsw i64 %i.e, -1
  br label %.lr.ph.i.i.i.i.i44.prol.loopexit

.lr.ph.i.i.i.i.i44.prol.loopexit:                 ; preds = %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i47.prol, %.lr.ph.i.i.i.i.i44.preheader
  %.012.i.i.i.i.i.unr = phi i64 [ %i.e, %.lr.ph.i.i.i.i.i44.preheader ], [ %i.cc, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i47.prol ]
  %.0811.i.i.i.i.i.unr = phi ptr [ %1, %.lr.ph.i.i.i.i.i44.preheader ], [ %i.cb, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i47.prol ]
  %.0910.i.i.i.i.i.unr = phi ptr [ %2, %.lr.ph.i.i.i.i.i44.preheader ], [ %i.ca, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i47.prol ]
  %i.cd = icmp eq i64 %i.d, 16
  br i1 %i.cd, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK6VectorILi2Ed4FullESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit, label %.lr.ph.i.i.i.i.i44

.lr.ph.i.i.i.i.i44:                               ; preds = %.lr.ph.i.i.i.i.i44.prol.loopexit, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i47.1
  %.012.i.i.i.i.i = phi i64 [ %i.cq, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i47.1 ], [ %.012.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i44.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.cp, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i47.1 ], [ %.0811.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i44.prol.loopexit ] ; 7 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.co, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i47.1 ], [ %.0910.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i44.prol.loopexit ] ; 7 uses
  %.not.i.i.i.i.i.i45 = icmp eq ptr %.0811.i.i.i.i.i, %.0910.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i45, label %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i47, label %_ZN12VectorEngineILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.i46

_ZN12VectorEngineILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.i46: ; preds = %.lr.ph.i.i.i.i.i44
  %i.ce = load double, ptr %.0910.i.i.i.i.i, align 8, !tbaa !247
  store double %i.ce, ptr %.0811.i.i.i.i.i, align 8, !tbaa !247
  %i.cf = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  %i.cg = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !247
  store double %i.ch, ptr %i.cf, align 8, !tbaa !247
  br label %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i47

_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i47:  ; preds = %_ZN12VectorEngineILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.i46, %.lr.ph.i.i.i.i.i44
  %.not.i.i.i.i.i.i45.1 = icmp eq ptr %.0811.i.i.i.i.i, %.0910.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i45.1, label %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i47.1, label %_ZN12VectorEngineILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.i46.1

_ZN12VectorEngineILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.i46.1: ; preds = %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i47
  %i.ci = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 16
  %i.cj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 16
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !247
  store double %i.ck, ptr %i.ci, align 8, !tbaa !247
  %i.cl = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 24
  %i.cm = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 24
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !247
  store double %i.cn, ptr %i.cl, align 8, !tbaa !247
  br label %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i47.1

_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i47.1: ; preds = %_ZN12VectorEngineILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.i46.1, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i47
  %i.co = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 32
  %i.cp = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 32
  %i.cq = add nsw i64 %.012.i.i.i.i.i, -2
  %i.cr = icmp sgt i64 %.012.i.i.i.i.i, 2
  br i1 %i.cr, label %.lr.ph.i.i.i.i.i44, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK6VectorILi2Ed4FullESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit, !llvm.loop !675

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPK6VectorILi2Ed4FullESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.cs = getelementptr inbounds i8, ptr %2, i64 %i.n ; 7 uses
  %.not7.i.i.i.i = icmp eq ptr %i.cs, %3
  br i1 %.not7.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK6VectorILi2Ed4FullESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPK6VectorILi2Ed4FullESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.ct = add i64 %i.b, %i.m
  %i.cu = add i64 %i.k, %i.c
  %6 = sub i64 %i.ct, %i.cu
  %7 = add i64 %6, -16                            ; 2 uses
  %i.cv = lshr i64 %7, 4
  %i.cw = add nuw nsw i64 %i.cv, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %7, 400
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader272, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.cx = add i64 %i.b, %i.m
  %i.cy = add i64 %i.cx, -16
  %i.cz = add i64 %i.k, %i.c
  %i.da = sub i64 %i.cy, %i.cz
  %i.db = and i64 %i.da, -16                      ; 2 uses
  %i.dc = getelementptr i8, ptr %i.i, i64 %i.db
  %scevgep = getelementptr i8, ptr %i.dc, i64 16
  %i.dd = add i64 %i.db, %i.k
  %i.de = add i64 %i.dd, 16
  %i.df = sub i64 %i.de, %i.m
  %scevgep121 = getelementptr i8, ptr %2, i64 %i.df
  %bound0 = icmp ult ptr %i.i, %scevgep121
  %bound1 = icmp ult ptr %i.cs, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader272, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cw, 2305843009213693950     ; 3 uses
  %i.dg = shl i64 %n.vec, 4                       ; 2 uses
  %i.dh = getelementptr i8, ptr %i.i, i64 %i.dg
  %i.di = getelementptr i8, ptr %i.cs, i64 %i.dg
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dj = shl i64 %index, 4                       ; 3 uses
  %i.dk = or disjoint i64 %i.dj, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %i.i, i64 %i.dj
  %next.gep122 = getelementptr i8, ptr %i.i, i64 %i.dk
  %next.gep123 = getelementptr i8, ptr %i.cs, i64 %i.dj
  %next.gep124 = getelementptr i8, ptr %i.cs, i64 %i.dk
  %wide.load = load <2 x double>, ptr %next.gep123, align 8, !tbaa !247, !alias.scope !2324
  %wide.load125 = load <2 x double>, ptr %next.gep124, align 8, !tbaa !247, !alias.scope !2324
  store <2 x double> %wide.load, ptr %next.gep, align 8, !tbaa !247, !alias.scope !2327, !noalias !2324
  store <2 x double> %wide.load125, ptr %next.gep122, align 8, !tbaa !247, !alias.scope !2327, !noalias !2324
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.dl = icmp eq i64 %index.next, %n.vec
  br i1 %i.dl, label %middle.block, label %vector.body, !llvm.loop !2329

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cw, %n.vec
  br i1 %cmp.n, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK6VectorILi2Ed4FullESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.preheader272

.lr.ph.i.i.i.i.preheader272:                      ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.09.i.i.i.i.ph = phi ptr [ %i.i, %vector.memcheck ], [ %i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.dh, %middle.block ]
  %.sroa.04.08.i.i.i.i.ph = phi ptr [ %i.cs, %vector.memcheck ], [ %i.cs, %.lr.ph.i.i.i.i.preheader ], [ %i.di, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader272, %.lr.ph.i.i.i.i
  %.09.i.i.i.i = phi ptr [ %i.dr, %.lr.ph.i.i.i.i ], [ %.09.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader272 ] ; 3 uses
  %.sroa.04.08.i.i.i.i = phi ptr [ %i.dq, %.lr.ph.i.i.i.i ], [ %.sroa.04.08.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader272 ] ; 3 uses
  %i.dm = load double, ptr %.sroa.04.08.i.i.i.i, align 8, !tbaa !247
  store double %i.dm, ptr %.09.i.i.i.i, align 8, !tbaa !247
  %i.dn = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 8
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i, i64 8
  %i.dp = load double, ptr %i.do, align 8, !tbaa !247
  store double %i.dp, ptr %i.dn, align 8, !tbaa !247
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i, i64 16 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 16
  %.not.i.i.i.i = icmp eq ptr %i.dq, %3
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK6VectorILi2Ed4FullESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !2330

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK6VectorILi2Ed4FullESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPK6VectorILi2Ed4FullESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.ds = sub nsw i64 %i.e, %i.o
  %i.dt = getelementptr [16 x i8], ptr %i.i, i64 %i.ds ; 6 uses
  %.not7.i.i.i.i.i48 = icmp eq ptr %1, %i.i
  br i1 %.not7.i.i.i.i.i48, label %_ZSt22__uninitialized_move_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit54, label %.lr.ph.i.i.i.i.i49.preheader

.lr.ph.i.i.i.i.i49.preheader:                     ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK6VectorILi2Ed4FullESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit
  %8 = sub i64 %i.k, %i.m
  %9 = add i64 %8, -16                            ; 2 uses
  %i.du = lshr i64 %9, 4
  %i.dv = add nuw nsw i64 %i.du, 1                ; 2 uses
  %min.iters.check134 = icmp ult i64 %9, 336
  br i1 %min.iters.check134, label %.lr.ph.i.i.i.i.i49.preheader271, label %vector.memcheck127

vector.memcheck127:                               ; preds = %.lr.ph.i.i.i.i.i49.preheader
  %i.dw = add i64 %i.k, -16
  %i.dx = sub i64 %i.dw, %i.m
  %i.dy = and i64 %i.dx, -16                      ; 2 uses
  %i.dz = add i64 %i.d, %i.dy
  %i.ea = add i64 %i.dz, 16
  %i.eb = sub i64 %i.ea, %i.n
  %scevgep128 = getelementptr i8, ptr %i.i, i64 %i.eb
  %i.ec = getelementptr i8, ptr %1, i64 %i.dy
  %scevgep129 = getelementptr i8, ptr %i.ec, i64 16
  %bound0130 = icmp ult ptr %i.dt, %scevgep129
  %bound1131 = icmp ult ptr %1, %scevgep128
  %found.conflict132 = and i1 %bound0130, %bound1131
  br i1 %found.conflict132, label %.lr.ph.i.i.i.i.i49.preheader271, label %vector.ph135

vector.ph135:                                     ; preds = %vector.memcheck127
  %n.vec137 = and i64 %i.dv, 2305843009213693950  ; 3 uses
  %i.ed = shl i64 %n.vec137, 4                    ; 2 uses
  %i.ee = getelementptr i8, ptr %i.dt, i64 %i.ed
  %i.ef = getelementptr i8, ptr %1, i64 %i.ed
  br label %vector.body138

vector.body138:                                   ; preds = %vector.body138, %vector.ph135
  %index139 = phi i64 [ 0, %vector.ph135 ], [ %index.next146, %vector.body138 ] ; 2 uses
  %i.eg = shl i64 %index139, 4                    ; 3 uses
  %i.eh = or disjoint i64 %i.eg, 16               ; 2 uses
  %next.gep140 = getelementptr i8, ptr %i.dt, i64 %i.eg
  %next.gep141 = getelementptr i8, ptr %i.dt, i64 %i.eh
  %next.gep142 = getelementptr i8, ptr %1, i64 %i.eg
  %next.gep143 = getelementptr i8, ptr %1, i64 %i.eh
  %wide.load144 = load <2 x double>, ptr %next.gep142, align 8, !tbaa !247, !alias.scope !2331
  %wide.load145 = load <2 x double>, ptr %next.gep143, align 8, !tbaa !247, !alias.scope !2331
  store <2 x double> %wide.load144, ptr %next.gep140, align 8, !tbaa !247, !alias.scope !2334, !noalias !2331
  store <2 x double> %wide.load145, ptr %next.gep141, align 8, !tbaa !247, !alias.scope !2334, !noalias !2331
  %index.next146 = add nuw i64 %index139, 2       ; 2 uses
  %i.ei = icmp eq i64 %index.next146, %n.vec137
  br i1 %i.ei, label %middle.block147, label %vector.body138, !llvm.loop !2336

middle.block147:                                  ; preds = %vector.body138
  %cmp.n148 = icmp eq i64 %i.dv, %n.vec137
  br i1 %cmp.n148, label %_ZSt22__uninitialized_move_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit54, label %.lr.ph.i.i.i.i.i49.preheader271

.lr.ph.i.i.i.i.i49.preheader271:                  ; preds = %vector.memcheck127, %.lr.ph.i.i.i.i.i49.preheader, %middle.block147
  %.09.i.i.i.i.i50.ph = phi ptr [ %i.dt, %vector.memcheck127 ], [ %i.dt, %.lr.ph.i.i.i.i.i49.preheader ], [ %i.ee, %middle.block147 ]
  %.sroa.04.08.i.i.i.i.i51.ph = phi ptr [ %1, %vector.memcheck127 ], [ %1, %.lr.ph.i.i.i.i.i49.preheader ], [ %i.ef, %middle.block147 ]
  br label %.lr.ph.i.i.i.i.i49

.lr.ph.i.i.i.i.i49:                               ; preds = %.lr.ph.i.i.i.i.i49.preheader271, %.lr.ph.i.i.i.i.i49
  %.09.i.i.i.i.i50 = phi ptr [ %i.eo, %.lr.ph.i.i.i.i.i49 ], [ %.09.i.i.i.i.i50.ph, %.lr.ph.i.i.i.i.i49.preheader271 ] ; 3 uses
  %.sroa.04.08.i.i.i.i.i51 = phi ptr [ %i.en, %.lr.ph.i.i.i.i.i49 ], [ %.sroa.04.08.i.i.i.i.i51.ph, %.lr.ph.i.i.i.i.i49.preheader271 ] ; 3 uses
  %i.ej = load double, ptr %.sroa.04.08.i.i.i.i.i51, align 8, !tbaa !247
  store double %i.ej, ptr %.09.i.i.i.i.i50, align 8, !tbaa !247
  %i.ek = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i50, i64 8
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i51, i64 8
  %i.em = load double, ptr %i.el, align 8, !tbaa !247
  store double %i.em, ptr %i.ek, align 8, !tbaa !247
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i51, i64 16 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i50, i64 16
  %.not.i.i.i.i.i52 = icmp eq ptr %i.en, %i.i
  br i1 %.not.i.i.i.i.i52, label %_ZSt22__uninitialized_move_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit54, label %.lr.ph.i.i.i.i.i49, !llvm.loop !2337

_ZSt22__uninitialized_move_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit54: ; preds = %.lr.ph.i.i.i.i.i49, %middle.block147, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK6VectorILi2Ed4FullESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit
  %i.ep = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.d
  store ptr %i.ep, ptr %i.h, align 8, !tbaa !276
  %i.eq = ashr exact i64 %i.n, 4                  ; 3 uses
  %i.er = icmp sgt i64 %i.eq, 0
  br i1 %i.er, label %.lr.ph.i.i.i.i.i56.preheader, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK6VectorILi2Ed4FullESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

.lr.ph.i.i.i.i.i56.preheader:                     ; preds = %_ZSt22__uninitialized_move_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit54
  %i.es = and i64 %i.n, 16
  %lcmp.mod.not = icmp eq i64 %i.es, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i56.prol.loopexit, label %.lr.ph.i.i.i.i.i56.prol

.lr.ph.i.i.i.i.i56.prol:                          ; preds = %.lr.ph.i.i.i.i.i56.preheader
  %.not.i.i.i.i.i.i60.prol = icmp eq ptr %1, %2
  br i1 %.not.i.i.i.i.i.i60.prol, label %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i62.prol, label %_ZN12VectorEngineILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.i61.prol

_ZN12VectorEngineILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.i61.prol: ; preds = %.lr.ph.i.i.i.i.i56.prol
  %i.et = load double, ptr %2, align 8, !tbaa !247
  store double %i.et, ptr %1, align 8, !tbaa !247
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ev = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ew = load double, ptr %i.ev, align 8, !tbaa !247
  store double %i.ew, ptr %i.eu, align 8, !tbaa !247
  br label %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i62.prol

_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i62.prol: ; preds = %_ZN12VectorEngineILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.i61.prol, %.lr.ph.i.i.i.i.i56.prol
  %i.ex = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ey = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ez = add nsw i64 %i.eq, -1
  br label %.lr.ph.i.i.i.i.i56.prol.loopexit

.lr.ph.i.i.i.i.i56.prol.loopexit:                 ; preds = %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i62.prol, %.lr.ph.i.i.i.i.i56.preheader
  %.012.i.i.i.i.i57.unr = phi i64 [ %i.eq, %.lr.ph.i.i.i.i.i56.preheader ], [ %i.ez, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i62.prol ]
  %.0811.i.i.i.i.i58.unr = phi ptr [ %1, %.lr.ph.i.i.i.i.i56.preheader ], [ %i.ey, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i62.prol ]
  %.0910.i.i.i.i.i59.unr = phi ptr [ %2, %.lr.ph.i.i.i.i.i56.preheader ], [ %i.ex, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i62.prol ]
  %i.fa = icmp eq i64 %i.n, 16
  br i1 %i.fa, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK6VectorILi2Ed4FullESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit, label %.lr.ph.i.i.i.i.i56

.lr.ph.i.i.i.i.i56:                               ; preds = %.lr.ph.i.i.i.i.i56.prol.loopexit, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i62.1
  %.012.i.i.i.i.i57 = phi i64 [ %i.fn, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i62.1 ], [ %.012.i.i.i.i.i57.unr, %.lr.ph.i.i.i.i.i56.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i58 = phi ptr [ %i.fm, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i62.1 ], [ %.0811.i.i.i.i.i58.unr, %.lr.ph.i.i.i.i.i56.prol.loopexit ] ; 7 uses
  %.0910.i.i.i.i.i59 = phi ptr [ %i.fl, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i62.1 ], [ %.0910.i.i.i.i.i59.unr, %.lr.ph.i.i.i.i.i56.prol.loopexit ] ; 7 uses
  %.not.i.i.i.i.i.i60 = icmp eq ptr %.0811.i.i.i.i.i58, %.0910.i.i.i.i.i59
  br i1 %.not.i.i.i.i.i.i60, label %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i62, label %_ZN12VectorEngineILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.i61

_ZN12VectorEngineILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.i61: ; preds = %.lr.ph.i.i.i.i.i56
  %i.fb = load double, ptr %.0910.i.i.i.i.i59, align 8, !tbaa !247
  store double %i.fb, ptr %.0811.i.i.i.i.i58, align 8, !tbaa !247
  %i.fc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i58, i64 8
  %i.fd = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i59, i64 8
  %i.fe = load double, ptr %i.fd, align 8, !tbaa !247
  store double %i.fe, ptr %i.fc, align 8, !tbaa !247
  br label %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i62

_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i62:  ; preds = %_ZN12VectorEngineILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.i61, %.lr.ph.i.i.i.i.i56
  %.not.i.i.i.i.i.i60.1 = icmp eq ptr %.0811.i.i.i.i.i58, %.0910.i.i.i.i.i59
  br i1 %.not.i.i.i.i.i.i60.1, label %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i62.1, label %_ZN12VectorEngineILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.i61.1

_ZN12VectorEngineILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.i61.1: ; preds = %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i62
  %i.ff = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i58, i64 16
  %i.fg = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i59, i64 16
  %i.fh = load double, ptr %i.fg, align 8, !tbaa !247
  store double %i.fh, ptr %i.ff, align 8, !tbaa !247
  %i.fi = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i58, i64 24
  %i.fj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i59, i64 24
  %i.fk = load double, ptr %i.fj, align 8, !tbaa !247
  store double %i.fk, ptr %i.fi, align 8, !tbaa !247
  br label %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i62.1

_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i62.1: ; preds = %_ZN12VectorEngineILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.i61.1, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i62
  %i.fl = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i59, i64 32
  %i.fm = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i58, i64 32
  %i.fn = add nsw i64 %.012.i.i.i.i.i57, -2
  %i.fo = icmp sgt i64 %.012.i.i.i.i.i57, 2
  br i1 %i.fo, label %.lr.ph.i.i.i.i.i56, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK6VectorILi2Ed4FullESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit, !llvm.loop !675

bb.e:                                             ; preds = %bb.b
  %i.fp = load ptr, ptr %0, align 8, !tbaa !279   ; 11 uses
  %i.fq = ptrtoint ptr %i.fp to i64               ; 4 uses
  %i.fr = sub i64 %i.k, %i.fq
  %i.fs = ashr exact i64 %i.fr, 4                 ; 4 uses
  %i.ft = sub nsw i64 576460752303423487, %i.fs
  %i.fu = icmp ult i64 %i.ft, %i.e
  br i1 %i.fu, label %bb.f, label %_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.199) #46
  unreachable

_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.e
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.fs, i64 %i.e)
  %i.fv = add nsw i64 %.sroa.speculated.i, %i.fs  ; 2 uses
  %i.fw = icmp ult i64 %i.fv, %i.fs
  %i.fx = tail call i64 @llvm.umin.i64(i64 %i.fv, i64 576460752303423487)
  %i.fy = select i1 %i.fw, i64 576460752303423487, i64 %i.fx ; 3 uses
  %.not.i = icmp eq i64 %i.fy, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EE11_M_allocateEm.exit, label %bb.g

bb.g:                                             ; preds = %_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit
  %i.fz = shl nuw nsw i64 %i.fy, 4
  %i.ga = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fz) #45
  br label %_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit, %bb.g
  %i.gb = phi ptr [ %i.ga, %bb.g ], [ null, %_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit ] ; 10 uses
  %.not9.i.i.i.i.i = icmp eq ptr %i.fp, %1
  br i1 %.not9.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i64.preheader

.lr.ph.i.i.i.i.i64.preheader:                     ; preds = %_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EE11_M_allocateEm.exit
  %i.gc = add i64 %i.a, -16
  %i.gd = sub i64 %i.gc, %i.fq                    ; 2 uses
  %i.ge = lshr i64 %i.gd, 4
  %i.gf = add nuw nsw i64 %i.ge, 1                ; 2 uses
  %min.iters.check201 = icmp ult i64 %i.gd, 240
  br i1 %min.iters.check201, label %.lr.ph.i.i.i.i.i64.preheader268, label %vector.memcheck194

vector.memcheck194:                               ; preds = %.lr.ph.i.i.i.i.i64.preheader
  %i.gg = add i64 %i.a, -16
  %i.gh = sub i64 %i.gg, %i.fq
  %i.gi = and i64 %i.gh, -16
  %i.gj = add i64 %i.gi, 16                       ; 2 uses
  %scevgep195 = getelementptr i8, ptr %i.gb, i64 %i.gj
  %scevgep196 = getelementptr i8, ptr %i.fp, i64 %i.gj
  %bound0197 = icmp ult ptr %i.gb, %scevgep196
  %bound1198 = icmp ult ptr %i.fp, %scevgep195
  %found.conflict199 = and i1 %bound0197, %bound1198
  br i1 %found.conflict199, label %.lr.ph.i.i.i.i.i64.preheader268, label %vector.ph202

vector.ph202:                                     ; preds = %vector.memcheck194
  %n.vec204 = and i64 %i.gf, 2305843009213693950  ; 3 uses
  %i.gk = shl i64 %n.vec204, 4                    ; 2 uses
  %i.gl = getelementptr i8, ptr %i.gb, i64 %i.gk  ; 2 uses
  %i.gm = getelementptr i8, ptr %i.fp, i64 %i.gk
  br label %vector.body205

vector.body205:                                   ; preds = %vector.body205, %vector.ph202
  %index206 = phi i64 [ 0, %vector.ph202 ], [ %index.next213, %vector.body205 ] ; 2 uses
  %i.gn = shl i64 %index206, 4                    ; 3 uses
  %i.go = or disjoint i64 %i.gn, 16               ; 2 uses
  %next.gep207 = getelementptr i8, ptr %i.gb, i64 %i.gn
  %next.gep208 = getelementptr i8, ptr %i.gb, i64 %i.go
  %next.gep209 = getelementptr i8, ptr %i.fp, i64 %i.gn
  %next.gep210 = getelementptr i8, ptr %i.fp, i64 %i.go
  %wide.load211 = load <2 x double>, ptr %next.gep209, align 8, !tbaa !247, !alias.scope !2338
  %wide.load212 = load <2 x double>, ptr %next.gep210, align 8, !tbaa !247, !alias.scope !2338
  store <2 x double> %wide.load211, ptr %next.gep207, align 8, !tbaa !247, !alias.scope !2341, !noalias !2338
  store <2 x double> %wide.load212, ptr %next.gep208, align 8, !tbaa !247, !alias.scope !2341, !noalias !2338
  %index.next213 = add nuw i64 %index206, 2       ; 2 uses
  %i.gp = icmp eq i64 %index.next213, %n.vec204
  br i1 %i.gp, label %middle.block214, label %vector.body205, !llvm.loop !2343

middle.block214:                                  ; preds = %vector.body205
  %cmp.n215 = icmp eq i64 %i.gf, %n.vec204
  br i1 %cmp.n215, label %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i64.preheader268

.lr.ph.i.i.i.i.i64.preheader268:                  ; preds = %vector.memcheck194, %.lr.ph.i.i.i.i.i64.preheader, %middle.block214
  %.011.i.i.i.i.i.ph = phi ptr [ %i.gb, %vector.memcheck194 ], [ %i.gb, %.lr.ph.i.i.i.i.i64.preheader ], [ %i.gl, %middle.block214 ]
  %.0810.i.i.i.i.i.ph = phi ptr [ %i.fp, %vector.memcheck194 ], [ %i.fp, %.lr.ph.i.i.i.i.i64.preheader ], [ %i.gm, %middle.block214 ]
  br label %.lr.ph.i.i.i.i.i64

.lr.ph.i.i.i.i.i64:                               ; preds = %.lr.ph.i.i.i.i.i64.preheader268, %.lr.ph.i.i.i.i.i64
  %.011.i.i.i.i.i = phi ptr [ %i.gv, %.lr.ph.i.i.i.i.i64 ], [ %.011.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i64.preheader268 ] ; 3 uses
  %.0810.i.i.i.i.i = phi ptr [ %i.gu, %.lr.ph.i.i.i.i.i64 ], [ %.0810.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i64.preheader268 ] ; 3 uses
  %i.gq = load double, ptr %.0810.i.i.i.i.i, align 8, !tbaa !247
  store double %i.gq, ptr %.011.i.i.i.i.i, align 8, !tbaa !247
  %i.gr = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 8
  %i.gs = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 8
  %i.gt = load double, ptr %i.gs, align 8, !tbaa !247
  store double %i.gt, ptr %i.gr, align 8, !tbaa !247
  %i.gu = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 16 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i65 = icmp eq ptr %i.gu, %1
  br i1 %.not.i.i.i.i.i65, label %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i64, !llvm.loop !2344

_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i64, %middle.block214, %_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EE11_M_allocateEm.exit
  %.0.lcssa.i.i.i.i.i66 = phi ptr [ %i.gb, %_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EE11_M_allocateEm.exit ], [ %i.gl, %middle.block214 ], [ %i.gv, %.lr.ph.i.i.i.i.i64 ] ; 7 uses
  %10 = sub i64 %i.b, %i.c
  %11 = add i64 %10, -16                          ; 2 uses
  %i.gw = lshr i64 %11, 4
  %i.gx = add nuw nsw i64 %i.gw, 1                ; 2 uses
  %min.iters.check225 = icmp ult i64 %11, 240
  br i1 %min.iters.check225, label %.lr.ph.i.i.i.i68.preheader, label %vector.memcheck218

vector.memcheck218:                               ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit
  %i.gy = add i64 %i.b, -16
  %i.gz = sub i64 %i.gy, %i.c
  %i.ha = and i64 %i.gz, -16
  %i.hb = add i64 %i.ha, 16                       ; 2 uses
  %scevgep219 = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i66, i64 %i.hb
  %scevgep220 = getelementptr i8, ptr %2, i64 %i.hb
  %bound0221 = icmp ult ptr %.0.lcssa.i.i.i.i.i66, %scevgep220
  %bound1222 = icmp ult ptr %2, %scevgep219
  %found.conflict223 = and i1 %bound0221, %bound1222
  br i1 %found.conflict223, label %.lr.ph.i.i.i.i68.preheader, label %vector.ph226

vector.ph226:                                     ; preds = %vector.memcheck218
  %n.vec228 = and i64 %i.gx, 2305843009213693950  ; 3 uses
  %i.hc = shl i64 %n.vec228, 4                    ; 2 uses
  %i.hd = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i66, i64 %i.hc ; 2 uses
  %i.he = getelementptr i8, ptr %2, i64 %i.hc
  br label %vector.body229

vector.body229:                                   ; preds = %vector.body229, %vector.ph226
  %index230 = phi i64 [ 0, %vector.ph226 ], [ %index.next237, %vector.body229 ] ; 2 uses
  %i.hf = shl i64 %index230, 4                    ; 3 uses
  %i.hg = or disjoint i64 %i.hf, 16               ; 2 uses
  %next.gep231 = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i66, i64 %i.hf
  %next.gep232 = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i66, i64 %i.hg
  %next.gep233 = getelementptr i8, ptr %2, i64 %i.hf
  %next.gep234 = getelementptr i8, ptr %2, i64 %i.hg
  %wide.load235 = load <2 x double>, ptr %next.gep233, align 8, !tbaa !247, !alias.scope !2345
  %wide.load236 = load <2 x double>, ptr %next.gep234, align 8, !tbaa !247, !alias.scope !2345
  store <2 x double> %wide.load235, ptr %next.gep231, align 8, !tbaa !247, !alias.scope !2348, !noalias !2345
  store <2 x double> %wide.load236, ptr %next.gep232, align 8, !tbaa !247, !alias.scope !2348, !noalias !2345
  %index.next237 = add nuw i64 %index230, 2       ; 2 uses
  %i.hh = icmp eq i64 %index.next237, %n.vec228
  br i1 %i.hh, label %middle.block238, label %vector.body229, !llvm.loop !2350

middle.block238:                                  ; preds = %vector.body229
  %cmp.n239 = icmp eq i64 %i.gx, %n.vec228
  br i1 %cmp.n239, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK6VectorILi2Ed4FullESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit73, label %.lr.ph.i.i.i.i68.preheader

.lr.ph.i.i.i.i68.preheader:                       ; preds = %vector.memcheck218, %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit, %middle.block238
  %.09.i.i.i.i69.ph = phi ptr [ %.0.lcssa.i.i.i.i.i66, %vector.memcheck218 ], [ %.0.lcssa.i.i.i.i.i66, %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit ], [ %i.hd, %middle.block238 ]
  %.sroa.04.08.i.i.i.i70.ph = phi ptr [ %2, %vector.memcheck218 ], [ %2, %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit ], [ %i.he, %middle.block238 ]
  br label %.lr.ph.i.i.i.i68

.lr.ph.i.i.i.i68:                                 ; preds = %.lr.ph.i.i.i.i68.preheader, %.lr.ph.i.i.i.i68
  %.09.i.i.i.i69 = phi ptr [ %i.hn, %.lr.ph.i.i.i.i68 ], [ %.09.i.i.i.i69.ph, %.lr.ph.i.i.i.i68.preheader ] ; 3 uses
  %.sroa.04.08.i.i.i.i70 = phi ptr [ %i.hm, %.lr.ph.i.i.i.i68 ], [ %.sroa.04.08.i.i.i.i70.ph, %.lr.ph.i.i.i.i68.preheader ] ; 3 uses
  %i.hi = load double, ptr %.sroa.04.08.i.i.i.i70, align 8, !tbaa !247
  store double %i.hi, ptr %.09.i.i.i.i69, align 8, !tbaa !247
  %i.hj = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i69, i64 8
  %i.hk = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i70, i64 8
  %i.hl = load double, ptr %i.hk, align 8, !tbaa !247
  store double %i.hl, ptr %i.hj, align 8, !tbaa !247
  %i.hm = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i70, i64 16 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i69, i64 16 ; 2 uses
  %.not.i.i.i.i71 = icmp eq ptr %i.hm, %3
  br i1 %.not.i.i.i.i71, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK6VectorILi2Ed4FullESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit73, label %.lr.ph.i.i.i.i68, !llvm.loop !2351

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK6VectorILi2Ed4FullESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit73: ; preds = %.lr.ph.i.i.i.i68, %middle.block238
  %.lcssa119 = phi ptr [ %i.hd, %middle.block238 ], [ %i.hn, %.lr.ph.i.i.i.i68 ] ; 8 uses
  %.not9.i.i.i.i.i74 = icmp eq ptr %1, %i.i
  br i1 %.not9.i.i.i.i.i74, label %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit80, label %.lr.ph.i.i.i.i.i75.preheader

.lr.ph.i.i.i.i.i75.preheader:                     ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK6VectorILi2Ed4FullESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit73
  %i.ho = add i64 %i.k, -16
  %i.hp = sub i64 %i.ho, %i.a                     ; 2 uses
  %i.hq = lshr i64 %i.hp, 4
  %i.hr = add nuw nsw i64 %i.hq, 1                ; 2 uses
  %min.iters.check249 = icmp ult i64 %i.hp, 240
  br i1 %min.iters.check249, label %.lr.ph.i.i.i.i.i75.preheader266, label %vector.memcheck242

vector.memcheck242:                               ; preds = %.lr.ph.i.i.i.i.i75.preheader
  %i.hs = add i64 %i.k, -16
  %i.ht = sub i64 %i.hs, %i.a
  %i.hu = and i64 %i.ht, -16
  %i.hv = add i64 %i.hu, 16                       ; 2 uses
  %scevgep243 = getelementptr i8, ptr %.lcssa119, i64 %i.hv
  %scevgep244 = getelementptr i8, ptr %1, i64 %i.hv
  %bound0245 = icmp ult ptr %.lcssa119, %scevgep244
  %bound1246 = icmp ult ptr %1, %scevgep243
  %found.conflict247 = and i1 %bound0245, %bound1246
  br i1 %found.conflict247, label %.lr.ph.i.i.i.i.i75.preheader266, label %vector.ph250

vector.ph250:                                     ; preds = %vector.memcheck242
  %n.vec252 = and i64 %i.hr, 2305843009213693950  ; 3 uses
  %i.hw = shl i64 %n.vec252, 4                    ; 2 uses
  %i.hx = getelementptr i8, ptr %.lcssa119, i64 %i.hw ; 2 uses
  %i.hy = getelementptr i8, ptr %1, i64 %i.hw
  br label %vector.body253

vector.body253:                                   ; preds = %vector.body253, %vector.ph250
  %index254 = phi i64 [ 0, %vector.ph250 ], [ %index.next261, %vector.body253 ] ; 2 uses
  %i.hz = shl i64 %index254, 4                    ; 3 uses
  %i.ia = or disjoint i64 %i.hz, 16               ; 2 uses
  %next.gep255 = getelementptr i8, ptr %.lcssa119, i64 %i.hz
  %next.gep256 = getelementptr i8, ptr %.lcssa119, i64 %i.ia
  %next.gep257 = getelementptr i8, ptr %1, i64 %i.hz
  %next.gep258 = getelementptr i8, ptr %1, i64 %i.ia
  %wide.load259 = load <2 x double>, ptr %next.gep257, align 8, !tbaa !247, !alias.scope !2352
  %wide.load260 = load <2 x double>, ptr %next.gep258, align 8, !tbaa !247, !alias.scope !2352
  store <2 x double> %wide.load259, ptr %next.gep255, align 8, !tbaa !247, !alias.scope !2355, !noalias !2352
  store <2 x double> %wide.load260, ptr %next.gep256, align 8, !tbaa !247, !alias.scope !2355, !noalias !2352
  %index.next261 = add nuw i64 %index254, 2       ; 2 uses
  %i.ib = icmp eq i64 %index.next261, %n.vec252
  br i1 %i.ib, label %middle.block262, label %vector.body253, !llvm.loop !2357

middle.block262:                                  ; preds = %vector.body253
  %cmp.n263 = icmp eq i64 %i.hr, %n.vec252
  br i1 %cmp.n263, label %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit80, label %.lr.ph.i.i.i.i.i75.preheader266

.lr.ph.i.i.i.i.i75.preheader266:                  ; preds = %vector.memcheck242, %.lr.ph.i.i.i.i.i75.preheader, %middle.block262
  %.011.i.i.i.i.i76.ph = phi ptr [ %.lcssa119, %vector.memcheck242 ], [ %.lcssa119, %.lr.ph.i.i.i.i.i75.preheader ], [ %i.hx, %middle.block262 ]
  %.0810.i.i.i.i.i77.ph = phi ptr [ %1, %vector.memcheck242 ], [ %1, %.lr.ph.i.i.i.i.i75.preheader ], [ %i.hy, %middle.block262 ]
  br label %.lr.ph.i.i.i.i.i75

.lr.ph.i.i.i.i.i75:                               ; preds = %.lr.ph.i.i.i.i.i75.preheader266, %.lr.ph.i.i.i.i.i75
  %.011.i.i.i.i.i76 = phi ptr [ %i.ih, %.lr.ph.i.i.i.i.i75 ], [ %.011.i.i.i.i.i76.ph, %.lr.ph.i.i.i.i.i75.preheader266 ] ; 3 uses
  %.0810.i.i.i.i.i77 = phi ptr [ %i.ig, %.lr.ph.i.i.i.i.i75 ], [ %.0810.i.i.i.i.i77.ph, %.lr.ph.i.i.i.i.i75.preheader266 ] ; 3 uses
  %i.ic = load double, ptr %.0810.i.i.i.i.i77, align 8, !tbaa !247
  store double %i.ic, ptr %.011.i.i.i.i.i76, align 8, !tbaa !247
  %i.id = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i76, i64 8
  %i.ie = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i77, i64 8
  %i.if = load double, ptr %i.ie, align 8, !tbaa !247
  store double %i.if, ptr %i.id, align 8, !tbaa !247
  %i.ig = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i77, i64 16 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i76, i64 16 ; 2 uses
  %.not.i.i.i.i.i78 = icmp eq ptr %i.ig, %i.i
  br i1 %.not.i.i.i.i.i78, label %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit80, label %.lr.ph.i.i.i.i.i75, !llvm.loop !2358

_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit80: ; preds = %.lr.ph.i.i.i.i.i75, %middle.block262, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK6VectorILi2Ed4FullESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit73
  %.0.lcssa.i.i.i.i.i79 = phi ptr [ %.lcssa119, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK6VectorILi2Ed4FullESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit73 ], [ %i.hx, %middle.block262 ], [ %i.ih, %.lr.ph.i.i.i.i.i75 ]
  %.not.i81 = icmp eq ptr %i.fp, null
  br i1 %.not.i81, label %_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit80
  %i.ii = sub i64 %i.j, %i.fq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fp, i64 noundef %i.ii) #48
  br label %_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit80, %bb.h
  store ptr %i.gb, ptr %0, align 8, !tbaa !279
  store ptr %.0.lcssa.i.i.i.i.i79, ptr %i.h, align 8, !tbaa !276
  %i.ij = getelementptr inbounds nuw [16 x i8], ptr %i.gb, i64 %i.fy
  store ptr %i.ij, ptr %i.f, align 8, !tbaa !280
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK6VectorILi2Ed4FullESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK6VectorILi2Ed4FullESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit: ; preds = %.lr.ph.i.i.i.i.i56.prol.loopexit, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i62.1, %.lr.ph.i.i.i.i.i44.prol.loopexit, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i47.1, %_ZSt22__uninitialized_move_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit54, %_ZSt13move_backwardIP6VectorILi2Ed4FullES3_ET0_T_S5_S4_.exit, %_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EE13_M_deallocateEPS2_m.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(8) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !264  ; 3 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !267    ; 11 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 5 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp eq i64 %i.g, 9223372036854775800
  br i1 %i.h, label %bb.b, label %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.189) #46
  unreachable

_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.i = ashr exact i64 %i.g, 3                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.i, i64 1)
  %i.j = add nsw i64 %.sroa.speculated.i, %i.i    ; 2 uses
  %i.k = icmp ult i64 %i.j, %i.i
  %i.l = tail call i64 @llvm.umin.i64(i64 %i.j, i64 1152921504606846975)
  %i.m = select i1 %i.k, i64 1152921504606846975, i64 %i.l ; 3 uses
  %i.n = ptrtoint ptr %1 to i64
  %i.o = sub i64 %i.n, %i.f
  %.not.i = icmp ne i64 %i.m, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.p = shl nuw nsw i64 %i.m, 3
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #45 ; 11 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  %i.s = load <2 x i32>, ptr %2, align 4, !tbaa !236
  store <2 x i32> %i.s, ptr %i.r, align 4, !tbaa !4
  %.not9.i.i.i.i.i = icmp eq ptr %i.d, %1
  br i1 %.not9.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit
  %i.t = add i64 %i.a, -8
  %i.u = sub i64 %i.t, %i.f                       ; 2 uses
  %i.v = lshr i64 %i.u, 3
  %i.w = add nuw nsw i64 %i.v, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.u, 120
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader78, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
end_hunk_3
begin_hunk_4_@_ZN6EngineILi3Ed6RemoteI5BrickEE11makeOwnCopyEv:bb.a
  %.pr.pre = load ptr, ptr %i.y, align 8, !tbaa !2615 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #47
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.h, i64 120
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !2633 ; 3 uses
  store ptr %i.au, ptr %i.as, align 16, !tbaa !2633
  %.not.i = icmp eq ptr %.pr.pre, null
  br i1 %.not.i, label %_ZN6EngineILi3Ed5BrickE11makeOwnCopyEv.exit, label %_ZNK18RefCountedBlockPtrIdLb0E19DataBlockControllerIdEE5countEv.exit.i

_ZNK18RefCountedBlockPtrIdLb0E19DataBlockControllerIdEE5countEv.exit.i: ; preds = %_ZN6EngineILi3Ed5BrickEC2ERKS1_.exit.thread19, %_ZN6EngineILi3Ed5BrickEC2ERKS1_.exit
  %i.av = phi ptr [ %i.ak, %_ZN6EngineILi3Ed5BrickEC2ERKS1_.exit.thread19 ], [ %i.au, %_ZN6EngineILi3Ed5BrickEC2ERKS1_.exit ]
  %i.aw = phi ptr [ %i.ai, %_ZN6EngineILi3Ed5BrickEC2ERKS1_.exit.thread19 ], [ %i.as, %_ZN6EngineILi3Ed5BrickEC2ERKS1_.exit ] ; 3 uses
  %.pr22 = phi ptr [ %i.aa, %_ZN6EngineILi3Ed5BrickEC2ERKS1_.exit.thread19 ], [ %.pr.pre, %_ZN6EngineILi3Ed5BrickEC2ERKS1_.exit ] ; 2 uses
  %i.ax = load i32, ptr %.pr22, align 4, !tbaa !837
  %i.ay = icmp sgt i32 %i.ax, 1
  br i1 %i.ay, label %bb.e, label %_ZN6EngineILi3Ed5BrickE11makeOwnCopyEv.exit

bb.e:                                             ; preds = %_ZNK18RefCountedBlockPtrIdLb0E19DataBlockControllerIdEE5countEv.exit.i
  %i.az = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN18RefCountedBlockPtrIdLb0E19DataBlockControllerIdEE11makeOwnCopyEv(ptr noundef nonnull align 8 dereferenceable(16) %i.v) ; 0 uses
  %i.ba = load ptr, ptr %i.y, align 8, !tbaa !2615 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !2626
  %i.bd = load i64, ptr %i.v, align 16, !tbaa !2631
  %i.be = getelementptr inbounds [8 x i8], ptr %i.bc, i64 %i.bd ; 2 uses
  store ptr %i.be, ptr %i.aw, align 8, !tbaa !2633
  br label %_ZN6EngineILi3Ed5BrickE11makeOwnCopyEv.exit

_ZN6EngineILi3Ed5BrickE11makeOwnCopyEv.exit:      ; preds = %_ZN6EngineILi3Ed5BrickEC2ERKS1_.exit.thread, %_ZN6EngineILi3Ed5BrickEC2ERKS1_.exit, %_ZNK18RefCountedBlockPtrIdLb0E19DataBlockControllerIdEE5countEv.exit.i, %bb.e
  %i.bf = phi ptr [ %i.ad, %_ZN6EngineILi3Ed5BrickEC2ERKS1_.exit.thread ], [ %i.au, %_ZN6EngineILi3Ed5BrickEC2ERKS1_.exit ], [ %i.av, %_ZNK18RefCountedBlockPtrIdLb0E19DataBlockControllerIdEE5countEv.exit.i ], [ %i.be, %bb.e ] ; 2 uses
  %i.bg = phi ptr [ null, %_ZN6EngineILi3Ed5BrickEC2ERKS1_.exit.thread ], [ null, %_ZN6EngineILi3Ed5BrickEC2ERKS1_.exit ], [ %.pr22, %_ZNK18RefCountedBlockPtrIdLb0E19DataBlockControllerIdEE5countEv.exit.i ], [ %i.ba, %bb.e ] ; 5 uses
  %i.bh = phi ptr [ %i.ab, %_ZN6EngineILi3Ed5BrickEC2ERKS1_.exit.thread ], [ %i.as, %_ZN6EngineILi3Ed5BrickEC2ERKS1_.exit ], [ %i.aw, %_ZNK18RefCountedBlockPtrIdLb0E19DataBlockControllerIdEE5countEv.exit.i ], [ %i.aw, %bb.e ]
  %i.bi = call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #45 ; 16 uses
  store i32 0, ptr %i.bi, align 4, !tbaa !837
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load <4 x i32>, ptr %3, align 16, !tbaa !4
  store <4 x i32> %i.bk, ptr %i.bj, align 4, !tbaa !4
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bm = load <4 x i32>, ptr %i.k, align 16, !tbaa !4
  store <4 x i32> %i.bm, ptr %i.bl, align 4, !tbaa !4
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 40
  %i.bo = load <4 x i32>, ptr %i.n, align 16, !tbaa !4
  store <4 x i32> %i.bo, ptr %i.bn, align 4, !tbaa !4
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bi, i64 56
  %i.bq = load <4 x i32>, ptr %i.q, align 16, !tbaa !4
  store <4 x i32> %i.bq, ptr %i.bp, align 4, !tbaa !4
  %i.br = getelementptr inbounds nuw i8, ptr %i.bi, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(29) %i.br, ptr noundef nonnull align 8 dereferenceable(29) %i.t, i64 29, i1 false)
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bi, i64 104 ; 2 uses
  %i.bt = load i64, ptr %i.v, align 16, !tbaa !2631
  store i64 %i.bt, ptr %i.bs, align 8, !tbaa !2631
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bi, i64 112
  store ptr %i.bg, ptr %i.bu, align 8, !tbaa !2615
  %.not.i.i.i.i3 = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i.i3, label %_ZN6EngineILi3Ed5BrickEC2ERKS1_.exit6, label %bb.f

bb.f:                                             ; preds = %_ZN6EngineILi3Ed5BrickE11makeOwnCopyEv.exit
  %i.bv = load i32, ptr %i.bg, align 4, !tbaa !837
  %i.bw = add nsw i32 %i.bv, 1
  store i32 %i.bw, ptr %i.bg, align 4, !tbaa !837
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bg, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #47
  store i32 0, ptr %i.a, align 4, !tbaa !4
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !1687 ; 3 uses
  %.not.i.i2.i.i4 = icmp eq ptr %i.by, null
  br i1 %.not.i.i2.i.i4, label %_ZN19DataBlockControllerIdE17notifyOnConstructEv.exit.i.i5, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #47
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV13ObserverEvent, i64 16), ptr %1, align 8, !tbaa !73
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 0, ptr %i.bz, align 8, !tbaa !2254
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cb = load i64, ptr @_ZN6Unique6next_sE, align 8, !tbaa !12 ; 2 uses
  %i.cc = add nsw i64 %i.cb, 1
  store i64 %i.cc, ptr @_ZN6Unique6next_sE, align 8, !tbaa !12
  store i64 %i.cb, ptr %i.ca, align 8, !tbaa !2256
  %i.cd = load ptr, ptr %i.by, align 8, !tbaa !73
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cf = load ptr, ptr %i.ce, align 8
  call void %i.cf(ptr noundef nonnull align 8 dereferenceable(8) %i.by, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1) #47, !inline_history !2638
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #47
  %.pre.pre = load ptr, ptr %i.bh, align 8, !tbaa !2633
  br label %_ZN19DataBlockControllerIdE17notifyOnConstructEv.exit.i.i5

_ZN19DataBlockControllerIdE17notifyOnConstructEv.exit.i.i5: ; preds = %bb.g, %bb.f
  %.pre = phi ptr [ %.pre.pre, %bb.g ], [ %i.bf, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #47
  %.pre10 = load i32, ptr %i.bi, align 8, !tbaa !837
  %i.cg = add nsw i32 %.pre10, 1
  br label %_ZN6EngineILi3Ed5BrickEC2ERKS1_.exit6

_ZN6EngineILi3Ed5BrickEC2ERKS1_.exit6:            ; preds = %_ZN6EngineILi3Ed5BrickE11makeOwnCopyEv.exit, %_ZN19DataBlockControllerIdE17notifyOnConstructEv.exit.i.i5
  %i.ch = phi i32 [ 1, %_ZN6EngineILi3Ed5BrickE11makeOwnCopyEv.exit ], [ %i.cg, %_ZN19DataBlockControllerIdE17notifyOnConstructEv.exit.i.i5 ] ; 4 uses
  %i.ci = phi ptr [ %i.bf, %_ZN6EngineILi3Ed5BrickE11makeOwnCopyEv.exit ], [ %.pre, %_ZN19DataBlockControllerIdE17notifyOnConstructEv.exit.i.i5 ]
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bi, i64 120
  store ptr %i.ci, ptr %i.cj, align 8, !tbaa !2633
  store i32 %i.ch, ptr %i.bi, align 8, !tbaa !837
  %i.ck = load ptr, ptr %i.g, align 8, !tbaa !2602 ; 6 uses
  %.not.i2 = icmp eq ptr %i.ck, %i.bi
  br i1 %.not.i2, label %_ZN13RefCountedPtrI6SharedI6EngineILi3Ed5BrickEEEaSERKS5_.exit, label %bb.h

bb.h:                                             ; preds = %_ZN6EngineILi3Ed5BrickEC2ERKS1_.exit6
  %.not3.i = icmp eq ptr %i.ck, null
  br i1 %.not3.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !837
  %i.cm = add nsw i32 %i.cl, -1                   ; 2 uses
  store i32 %i.cm, ptr %i.ck, align 4, !tbaa !837
  %i.cn = icmp eq i32 %i.cm, 0
  br i1 %i.cn, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.ck, i64 104
  call void @_ZN12DataBlockPtrIdLb0EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.co) #47
  call void @_ZdlPvm(ptr noundef nonnull %i.ck, i64 noundef 128) #48
  %.pre11 = load i32, ptr %i.bi, align 8, !tbaa !837
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j
  %i.cp = phi i32 [ %i.ch, %bb.h ], [ %i.ch, %bb.i ], [ %.pre11, %bb.j ]
  store ptr %i.bi, ptr %i.g, align 8, !tbaa !2602
  %i.cq = add nsw i32 %i.cp, 1
  br label %_ZN13RefCountedPtrI6SharedI6EngineILi3Ed5BrickEEEaSERKS5_.exit

_ZN13RefCountedPtrI6SharedI6EngineILi3Ed5BrickEEEaSERKS5_.exit: ; preds = %bb.k, %_ZN6EngineILi3Ed5BrickEC2ERKS1_.exit6
  %i.cr = phi i32 [ %i.cq, %bb.k ], [ %i.ch, %_ZN6EngineILi3Ed5BrickEC2ERKS1_.exit6 ]
  %i.cs = add nsw i32 %i.cr, -1                   ; 2 uses
  store i32 %i.cs, ptr %i.bi, align 8, !tbaa !837
  %i.ct = icmp eq i32 %i.cs, 0
  br i1 %i.ct, label %bb.l, label %_ZN13RefCountedPtrI6SharedI6EngineILi3Ed5BrickEEED2Ev.exit

bb.l:                                             ; preds = %_ZN13RefCountedPtrI6SharedI6EngineILi3Ed5BrickEEEaSERKS5_.exit
  call void @_ZN12DataBlockPtrIdLb0EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.bs) #47
  call void @_ZdlPvm(ptr noundef nonnull %i.bi, i64 noundef 128) #48
  br label %_ZN13RefCountedPtrI6SharedI6EngineILi3Ed5BrickEEED2Ev.exit

_ZN13RefCountedPtrI6SharedI6EngineILi3Ed5BrickEEED2Ev.exit: ; preds = %_ZN13RefCountedPtrI6SharedI6EngineILi3Ed5BrickEEEaSERKS5_.exit, %bb.l
  call void @_ZN12DataBlockPtrIdLb0EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.v) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #47
  br label %bb.m

bb.m:                                             ; preds = %_ZN13RefCountedPtrI6SharedI6EngineILi3Ed5BrickEEED2Ev.exit, %bb.b, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZN18RefCountedBlockPtrIdLb0E19DataBlockControllerIdEE11makeOwnCopyEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2615 ; 7 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZN13RefCountedPtrI19DataBlockControllerIdEE11makeOwnCopyEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %i.b, align 4, !tbaa !837  ; 2 uses
  %i.d = icmp sgt i32 %i.c, 1
  br i1 %i.d, label %bb.c, label %_ZN13RefCountedPtrI19DataBlockControllerIdEE11makeOwnCopyEv.exit

bb.c:                                             ; preds = %bb.b
  %i.e = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #45 ; 10 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !2639 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !2626 ; 6 uses
  %i.n = ptrtoint ptr %i.m to i64                 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !2640 ; 2 uses
  %i.q = ptrtoint ptr %i.p to i64                 ; 2 uses
  %i.r = sub i64 %i.q, %i.n
  %.not.i.i.i.i.i = icmp eq ptr %i.k, %i.m
  br i1 %.not.i.i.i.i.i, label %_ZN18RefBlockControllerIdE17reallocateStorageEmb.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = ptrtoint ptr %i.k to i64
  %i.t = sub i64 %i.s, %i.n
  %i.u = shl i64 %i.t, 32
  %sext.i.i.i.i = ashr exact i64 %i.u, 32
  %i.v = and i64 %sext.i.i.i.i, -8                ; 2 uses
  %i.w = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.v) #45 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.v
  br label %_ZN18RefBlockControllerIdE17reallocateStorageEmb.exit.i.i.i.i

_ZN18RefBlockControllerIdE17reallocateStorageEmb.exit.i.i.i.i: ; preds = %bb.d, %bb.c
  %.021.i.i.i.i.i = phi ptr [ null, %bb.c ], [ %i.x, %bb.d ]
  %.019.i.i.i.i.i = phi ptr [ null, %bb.c ], [ %i.w, %bb.d ] ; 6 uses
  store ptr %.019.i.i.i.i.i, ptr %i.f, align 8, !tbaa !2626
  store ptr %.021.i.i.i.i.i, ptr %i.h, align 8, !tbaa !2639
  store i8 1, ptr %i.i, align 8, !tbaa !2625
  %i.y = getelementptr inbounds nuw i8, ptr %.019.i.i.i.i.i, i64 %i.r ; 2 uses
  store ptr %i.y, ptr %i.g, align 8, !tbaa !2640
  %.not11.i.i.i.i = icmp eq ptr %i.p, %i.m
  br i1 %.not11.i.i.i.i, label %_ZN18RefBlockControllerIdEC2ERKS0_.exit.i.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZN18RefBlockControllerIdE17reallocateStorageEmb.exit.i.i.i.i
  %.019.i.i.i.i.i4 = ptrtoaddr ptr %.019.i.i.i.i.i to i64
  %1 = sub i64 %i.q, %i.n
  %2 = add i64 %1, -8                             ; 2 uses
  %i.z = lshr i64 %2, 3
  %i.aa = add nuw nsw i64 %i.z, 1                 ; 2 uses
  %min.iters.check = icmp ult i64 %2, 56
  %i.ab = sub i64 %.019.i.i.i.i.i4, %i.n
  %diff.check = icmp ult i64 %i.ab, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader8, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.aa, 4611686018427387900     ; 3 uses
  %i.ac = shl i64 %n.vec, 3                       ; 2 uses
  %i.ad = getelementptr i8, ptr %.019.i.i.i.i.i, i64 %i.ac
  %i.ae = getelementptr i8, ptr %i.m, i64 %i.ac
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.af = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.019.i.i.i.i.i, i64 %i.af ; 2 uses
  %next.gep5 = getelementptr i8, ptr %i.m, i64 %i.af ; 2 uses
  %i.ag = getelementptr i8, ptr %next.gep5, i64 16
  %wide.load = load <2 x double>, ptr %next.gep5, align 8, !tbaa !247
  %wide.load6 = load <2 x double>, ptr %i.ag, align 8, !tbaa !247
  %i.ah = getelementptr i8, ptr %next.gep, i64 16
  store <2 x double> %wide.load, ptr %next.gep, align 8, !tbaa !247
  store <2 x double> %wide.load6, ptr %i.ah, align 8, !tbaa !247
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !2641

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n, label %_ZN18RefBlockControllerIdEC2ERKS0_.exit.i.i.i, label %.lr.ph.i.i.i.i.preheader8

.lr.ph.i.i.i.i.preheader8:                        ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.013.i.i.i.i.ph = phi ptr [ %.019.i.i.i.i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.ad, %middle.block ]
  %.01012.i.i.i.i.ph = phi ptr [ %i.m, %.lr.ph.i.i.i.i.preheader ], [ %i.ae, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader8, %.lr.ph.i.i.i.i
  %.013.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i ], [ %.013.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader8 ] ; 2 uses
  %.01012.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i ], [ %.01012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader8 ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.01012.i.i.i.i, i64 8
  %i.al = load double, ptr %.01012.i.i.i.i, align 8, !tbaa !247
  store double %i.al, ptr %.013.i.i.i.i, align 8, !tbaa !247
  %.not.i.i.i.i = icmp eq ptr %i.aj, %i.y
  br i1 %.not.i.i.i.i, label %_ZN18RefBlockControllerIdEC2ERKS0_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !2642

_ZN18RefBlockControllerIdEC2ERKS0_.exit.i.i.i:    ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZN18RefBlockControllerIdE17reallocateStorageEmb.exit.i.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !2623 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i, label %_ZN17ElementPropertiesI19DataBlockControllerIdEE5cloneERKS1_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZN18RefBlockControllerIdEC2ERKS0_.exit.i.i.i
  %i.ao = tail call noalias noundef nonnull dereferenceable(1) ptr @_Znwm(i64 noundef 1) #45
  br label %_ZN17ElementPropertiesI19DataBlockControllerIdEE5cloneERKS1_.exit.i

_ZN17ElementPropertiesI19DataBlockControllerIdEE5cloneERKS1_.exit.i: ; preds = %bb.e, %_ZN18RefBlockControllerIdEC2ERKS0_.exit.i.i.i
  %i.ap = phi ptr [ %i.ao, %bb.e ], [ null, %_ZN18RefBlockControllerIdEC2ERKS0_.exit.i.i.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !2623
  %i.ar = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.as = icmp ne ptr %i.an, null
  %i.at = zext i1 %i.as to i8
  store i8 %i.at, ptr %i.ar, align 8, !tbaa !2619
  %i.au = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store ptr null, ptr %i.au, align 8, !tbaa !1687
  %i.av = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  store i64 -1, ptr %i.av, align 8, !tbaa !2643
  %i.aw = add nsw i32 %i.c, -1
  store i32 %i.aw, ptr %i.b, align 8, !tbaa !837
  store ptr %i.e, ptr %i.a, align 8, !tbaa !2615
  store i32 1, ptr %i.e, align 8, !tbaa !837
  br label %_ZN13RefCountedPtrI19DataBlockControllerIdEE11makeOwnCopyEv.exit

_ZN13RefCountedPtrI19DataBlockControllerIdEE11makeOwnCopyEv.exit: ; preds = %bb.a, %bb.b, %_ZN17ElementPropertiesI19DataBlockControllerIdEE5cloneERKS1_.exit.i
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6EngineILi3Ed10MultiPatchI7GridTag6RemoteI5BrickEEE14PatchAllocatorI4NodeI8IntervalILi3EESA_EN5Pooma17CountingSemaphoreEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #48
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6Smarts8Runnable7executeEv(ptr noundef nonnull align 8 dereferenceable(12) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !73
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(12) %0) #47
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6EngineILi3Ed10MultiPatchI7GridTag6RemoteI5BrickEEE14PatchAllocatorI4NodeI8IntervalILi3EESA_EN5Pooma17CountingSemaphoreEE3runEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %1 = alloca %class.Engine.276, align 8          ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #47
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2644, !nonnull !59, !align !2646
  call void @_ZN6EngineILi3Ed6RemoteI5BrickEEC2ERK4NodeI8IntervalILi3EES6_E(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 4 dereferenceable(64) %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !2647, !nonnull !59, !align !2253 ; 9 uses
  %i.e = icmp eq ptr %i.d, %1
  br i1 %i.e, label %_ZN6EngineILi3Ed6RemoteI5BrickEEaSERKS3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load i32, ptr %i.f, align 8, !tbaa !2627
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i32 %i.g, ptr %i.h, align 8, !tbaa !2627
  %i.i = load i32, ptr %1, align 8, !tbaa !4
  store i32 %i.i, ptr %i.d, align 8, !tbaa !4
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !4
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i32 %i.k, ptr %i.l, align 4, !tbaa !4
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !4
  store i32 %i.o, ptr %i.m, align 8, !tbaa !4
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.q = load i32, ptr %i.p, align 4, !tbaa !4
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 %i.q, ptr %i.r, align 4, !tbaa !4
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.u = load i32, ptr %i.t, align 8, !tbaa !4
  store i32 %i.u, ptr %i.s, align 8, !tbaa !4
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.w = load i32, ptr %i.v, align 4, !tbaa !4
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  store i32 %i.w, ptr %i.x, align 4, !tbaa !4
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !2602 ; 6 uses
  %i.ab = load ptr, ptr %i.y, align 8, !tbaa !2602 ; 3 uses
  %.not.i.i = icmp eq ptr %i.aa, %i.ab
  br i1 %.not.i.i, label %_ZN6EngineILi3Ed6RemoteI5BrickEEaSERKS3_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not3.i.i = icmp eq ptr %i.aa, null
  br i1 %.not3.i.i, label %thread-pre-split.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = load i32, ptr %i.aa, align 4, !tbaa !837
  %i.ad = add nsw i32 %i.ac, -1                   ; 2 uses
  store i32 %i.ad, ptr %i.aa, align 4, !tbaa !837
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.e, label %thread-pre-split.i.i

bb.e:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 104
  call void @_ZN12DataBlockPtrIdLb0EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.af) #47
  call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef 128) #48
  %.pr.pre.i.i = load ptr, ptr %i.y, align 8, !tbaa !2602
  br label %thread-pre-split.i.i

thread-pre-split.i.i:                             ; preds = %bb.e, %bb.d, %bb.c
  %i.ag = phi ptr [ %i.ab, %bb.c ], [ %i.ab, %bb.d ], [ %.pr.pre.i.i, %bb.e ] ; 4 uses
  store ptr %i.ag, ptr %i.z, align 8, !tbaa !2602
  %.not4.i.i = icmp eq ptr %i.ag, null
  br i1 %.not4.i.i, label %_ZN6EngineILi3Ed6RemoteI5BrickEEaSERKS3_.exit, label %bb.f

bb.f:                                             ; preds = %thread-pre-split.i.i
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !837
  %i.ai = add nsw i32 %i.ah, 1
  store i32 %i.ai, ptr %i.ag, align 4, !tbaa !837
  br label %_ZN6EngineILi3Ed6RemoteI5BrickEEaSERKS3_.exit

_ZN6EngineILi3Ed6RemoteI5BrickEEaSERKS3_.exit:    ; preds = %bb.a, %bb.b, %thread-pre-split.i.i, %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !2602 ; 5 uses
  %.not.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i, label %_ZN6EngineILi3Ed6RemoteI5BrickEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN6EngineILi3Ed6RemoteI5BrickEEaSERKS3_.exit
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !837
  %i.am = add nsw i32 %i.al, -1                   ; 2 uses
  store i32 %i.am, ptr %i.ak, align 4, !tbaa !837
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %bb.h, label %_ZN6EngineILi3Ed6RemoteI5BrickEED2Ev.exit

bb.h:                                             ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 104
  call void @_ZN12DataBlockPtrIdLb0EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.ao) #47
  call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef 128) #48
  br label %_ZN6EngineILi3Ed6RemoteI5BrickEED2Ev.exit

_ZN6EngineILi3Ed6RemoteI5BrickEED2Ev.exit:        ; preds = %_ZN6EngineILi3Ed6RemoteI5BrickEEaSERKS3_.exit, %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #47
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
end_hunk_4
