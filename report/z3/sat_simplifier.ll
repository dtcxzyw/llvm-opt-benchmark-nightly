inline.NumInlined: 2303
inline.NumDeleted: 730
loop-unroll.NumRuntimeUnrolled: 79
loop-unroll.NumUnrolled: 79
begin_hunk_0_@_ZN3sat10simplifier14cleanup_clauseER7svectorINS_7literalEjE:bb.a
  %i.o = getelementptr inbounds i8, ptr %i.a, i64 -4
  store i32 %.023.lcssa.ph, ptr %i.o, align 4, !tbaa !12
  br label %_ZN6vectorIN3sat7literalELb0EjE6shrinkEj.exit

_ZN6vectorIN3sat7literalELb0EjE6shrinkEj.exit:    ; preds = %bb.b, %bb.a, %.loopexit
  %.not2734 = phi i1 [ false, %bb.a ], [ false, %.loopexit ], [ true, %bb.b ]
  ret i1 %.not2734
}

declare noundef zeroext i1 @_ZNK3sat6clause8containsENS_7literalE(ptr noundef nonnull align 4 dereferenceable(20), i32) local_unnamed_addr #9

declare void @_ZN3sat6clause4elimENS_7literalE(ptr noundef nonnull align 4 dereferenceable(20), i32) local_unnamed_addr #9

declare void @_ZN3sat4drat3addERNS_6clauseENS_6statusE(ptr noundef nonnull align 8 dereferenceable(664), ptr noundef nonnull align 4 dereferenceable(20), ptr noundef align 8 dead_on_return) local_unnamed_addr #9

declare void @_ZN3sat4drat3delERNS_6clauseE(ptr noundef nonnull align 8 dereferenceable(664), ptr noundef nonnull align 4 dereferenceable(20)) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3sat15clause_use_list17erase_not_removedERNS_6clauseE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(20) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !13     ; 8 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_ZN6vectorIPN3sat6clauseELb0EjE5eraseERKS2_.exit, label %_ZN6vectorIPN3sat6clauseELb0EjE3endEv.exit.i

_ZN6vectorIPN3sat6clauseELb0EjE3endEv.exit.i:     ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %i.a, i64 -4 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !12   ; 4 uses
  %i.e = zext i32 %i.d to i64                     ; 3 uses
  %.idx9.i = shl nuw nsw i64 %i.e, 3              ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx9.i ; 2 uses
  %i.g = lshr i64 %i.e, 2                         ; 2 uses
  %.not8.i = icmp eq i64 %i.g, 0
  br i1 %.not8.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN6vectorIPN3sat6clauseELb0EjE3endEv.exit.i
  %i.h = and i64 %.idx9.i, 34359738336
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.a, i64 %i.h
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.lr.ph.i.i.i.i
  %.047.i.i.i.i = phi i64 [ %i.g, %.lr.ph.i.i.i.i ], [ %i.u, %bb.f ] ; 2 uses
  %.02946.i.i.i.i = phi ptr [ %i.a, %.lr.ph.i.i.i.i ], [ %i.t, %bb.f ] ; 9 uses
  %i.i = load ptr, ptr %.02946.i.i.i.i, align 8, !tbaa !23
  %i.j = icmp eq ptr %i.i, %1
  br i1 %i.j, label %_ZSt4findIPPN3sat6clauseES2_ET_S4_S4_RKT0_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !23
  %i.m = icmp eq ptr %i.l, %1
  br i1 %i.m, label %_ZSt4findIPPN3sat6clauseES2_ET_S4_S4_RKT0_.exit.i.loopexit.split.loop.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !23
  %i.p = icmp eq ptr %i.o, %1
  br i1 %i.p, label %_ZSt4findIPPN3sat6clauseES2_ET_S4_S4_RKT0_.exit.i.loopexit.split.loop.exit19, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !23
  %i.s = icmp eq ptr %i.r, %1
  br i1 %i.s, label %_ZSt4findIPPN3sat6clauseES2_ET_S4_S4_RKT0_.exit.i.loopexit.split.loop.exit21, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 32
  %i.u = add nsw i64 %.047.i.i.i.i, -1
  %i.v = icmp sgt i64 %.047.i.i.i.i, 1
  br i1 %i.v, label %bb.b, label %._crit_edge.loopexit.i.i.i.i, !llvm.loop !325

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.f
  %i.w = and i32 %i.d, 3
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %_ZN6vectorIPN3sat6clauseELb0EjE3endEv.exit.i
  %.pre-phi56.i.i.i.i = phi i32 [ %i.w, %._crit_edge.loopexit.i.i.i.i ], [ %i.d, %_ZN6vectorIPN3sat6clauseELb0EjE3endEv.exit.i ]
  %.029.lcssa.i.i.i.i = phi ptr [ %scevgep.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.a, %_ZN6vectorIPN3sat6clauseELb0EjE3endEv.exit.i ] ; 5 uses
  switch i32 %.pre-phi56.i.i.i.i, label %_ZSt4findIPPN3sat6clauseES2_ET_S4_S4_RKT0_.exit.i [
    i32 3, label %bb.g
    i32 2, label %._crit_edge._crit_edge.i.i.i.i
    i32 1, label %._crit_edge._crit_edge52.i.i.i.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  %i.x = load ptr, ptr %.029.lcssa.i.i.i.i, align 8, !tbaa !23
  %i.y = icmp eq ptr %i.x, %1
  br i1 %i.y, label %_ZSt4findIPPN3sat6clauseES2_ET_S4_S4_RKT0_.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i, i64 8
  br label %._crit_edge._crit_edge.i.i.i.i

._crit_edge._crit_edge.i.i.i.i:                   ; preds = %._crit_edge.i.i.i.i, %bb.h
  %.1.i.i.i.i = phi ptr [ %i.z, %bb.h ], [ %.029.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.aa = load ptr, ptr %.1.i.i.i.i, align 8, !tbaa !23
  %i.ab = icmp eq ptr %i.aa, %1
  br i1 %i.ab, label %_ZSt4findIPPN3sat6clauseES2_ET_S4_S4_RKT0_.exit.i, label %bb.i

bb.i:                                             ; preds = %._crit_edge._crit_edge.i.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 8
  br label %._crit_edge._crit_edge52.i.i.i.i

._crit_edge._crit_edge52.i.i.i.i:                 ; preds = %._crit_edge.i.i.i.i, %bb.i
  %.2.i.i.i.i = phi ptr [ %i.ac, %bb.i ], [ %.029.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.ad = load ptr, ptr %.2.i.i.i.i, align 8, !tbaa !23
  %i.ae = icmp eq ptr %i.ad, %1
  %spec.select.i = select i1 %i.ae, ptr %.2.i.i.i.i, ptr %i.f
  br label %_ZSt4findIPPN3sat6clauseES2_ET_S4_S4_RKT0_.exit.i

_ZSt4findIPPN3sat6clauseES2_ET_S4_S4_RKT0_.exit.i.loopexit.split.loop.exit: ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 8
  br label %_ZSt4findIPPN3sat6clauseES2_ET_S4_S4_RKT0_.exit.i

_ZSt4findIPPN3sat6clauseES2_ET_S4_S4_RKT0_.exit.i.loopexit.split.loop.exit19: ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 16
  br label %_ZSt4findIPPN3sat6clauseES2_ET_S4_S4_RKT0_.exit.i

_ZSt4findIPPN3sat6clauseES2_ET_S4_S4_RKT0_.exit.i.loopexit.split.loop.exit21: ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 24
  br label %_ZSt4findIPPN3sat6clauseES2_ET_S4_S4_RKT0_.exit.i

_ZSt4findIPPN3sat6clauseES2_ET_S4_S4_RKT0_.exit.i: ; preds = %bb.b, %_ZSt4findIPPN3sat6clauseES2_ET_S4_S4_RKT0_.exit.i.loopexit.split.loop.exit, %_ZSt4findIPPN3sat6clauseES2_ET_S4_S4_RKT0_.exit.i.loopexit.split.loop.exit19, %_ZSt4findIPPN3sat6clauseES2_ET_S4_S4_RKT0_.exit.i.loopexit.split.loop.exit21, %._crit_edge._crit_edge52.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i, %bb.g, %._crit_edge.i.i.i.i
  %.028.i.i.i.i = phi ptr [ %.1.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i ], [ %i.f, %._crit_edge.i.i.i.i ], [ %spec.select.i, %._crit_edge._crit_edge52.i.i.i.i ], [ %.029.lcssa.i.i.i.i, %bb.g ], [ %i.ah, %_ZSt4findIPPN3sat6clauseES2_ET_S4_S4_RKT0_.exit.i.loopexit.split.loop.exit21 ], [ %i.ag, %_ZSt4findIPPN3sat6clauseES2_ET_S4_S4_RKT0_.exit.i.loopexit.split.loop.exit19 ], [ %i.af, %_ZSt4findIPPN3sat6clauseES2_ET_S4_S4_RKT0_.exit.i.loopexit.split.loop.exit ], [ %.02946.i.i.i.i, %bb.b ] ; 4 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.e ; 2 uses
  %.not7.i = icmp eq ptr %.028.i.i.i.i, %i.ai
  br i1 %.not7.i, label %_ZN6vectorIPN3sat6clauseELb0EjE5eraseERKS2_.exit, label %_ZN6vectorIPN3sat6clauseELb0EjE3endEv.exit.i.i

_ZN6vectorIPN3sat6clauseELb0EjE3endEv.exit.i.i:   ; preds = %_ZSt4findIPPN3sat6clauseES2_ET_S4_S4_RKT0_.exit.i
  %.0910.i.i = getelementptr inbounds nuw i8, ptr %.028.i.i.i.i, i64 8 ; 2 uses
  %.not11.i.i = icmp eq ptr %.0910.i.i, %i.ai
  br i1 %.not11.i.i, label %_ZN6vectorIPN3sat6clauseELb0EjE5eraseEPS2_.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN6vectorIPN3sat6clauseELb0EjE3endEv.exit.i.i
  %i.aj = ptrtoaddr ptr %.028.i.i.i.i to i64
  %i.ak = ptrtoaddr ptr %i.a to i64
  %i.al = add i64 %i.ak, -16
  %i.am = add i64 %i.al, %.idx9.i
  %i.an = sub i64 %i.am, %i.aj
  %i.ao = and i64 %i.an, -8
  %i.ap = add i64 %i.ao, 8
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.028.i.i.i.i, ptr nonnull align 8 %.0910.i.i, i64 %i.ap, i1 false), !tbaa !23
  br label %_ZN6vectorIPN3sat6clauseELb0EjE5eraseEPS2_.exit.i

_ZN6vectorIPN3sat6clauseELb0EjE5eraseEPS2_.exit.i: ; preds = %.lr.ph.preheader.i.i, %_ZN6vectorIPN3sat6clauseELb0EjE3endEv.exit.i.i
  %i.aq = add i32 %i.d, -1
  store i32 %i.aq, ptr %i.c, align 4, !tbaa !12
  br label %_ZN6vectorIPN3sat6clauseELb0EjE5eraseERKS2_.exit

_ZN6vectorIPN3sat6clauseELb0EjE5eraseERKS2_.exit: ; preds = %bb.a, %_ZSt4findIPPN3sat6clauseES2_ET_S4_S4_RKT0_.exit.i, %_ZN6vectorIPN3sat6clauseELb0EjE5eraseEPS2_.exit.i
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !25
  %i.at = add i32 %i.as, -1
  store i32 %i.at, ptr %i.ar, align 8, !tbaa !25
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.av = load i32, ptr %i.au, align 4
  %i.aw = and i32 %i.av, 4
  %.not = icmp eq i32 %i.aw, 0
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN6vectorIPN3sat6clauseELb0EjE5eraseERKS2_.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !28
  %i.az = add i32 %i.ay, -1
  store i32 %i.az, ptr %i.ax, align 4, !tbaa !28
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZN6vectorIPN3sat6clauseELb0EjE5eraseERKS2_.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN3sat10simplifier14propagate_unitENS_7literalE(ptr noundef nonnull align 8 dereferenceable(288) %0, i32 %1) local_unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %3 = alloca %"class.std::allocator", align 1    ; 4 uses
  %4 = alloca %"class.sat::clause_use_list", align 8 ; 7 uses
  %5 = alloca %"class.sat::justification", align 8 ; 8 uses
  %6 = alloca %"class.sat::clause_use_list::iterator", align 8 ; 12 uses
  %7 = alloca %"class.sat::clause_use_list::iterator", align 8 ; 12 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !90, !nonnull !65, !align !66 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 3784
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !107  ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %i.c, i64 -4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !12
  br label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit

_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit:     ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ %i.f, %bb.b ], [ 0, %bb.a ]   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 3208
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !13   ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_ZNK6vectorIPN3sat6clauseELb0EjE4sizeEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit
  %i.j = getelementptr inbounds i8, ptr %i.h, i64 -4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !12
  br label %_ZNK6vectorIPN3sat6clauseELb0EjE4sizeEv.exit

_ZNK6vectorIPN3sat6clauseELb0EjE4sizeEv.exit:     ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit, %bb.c
  %.0.i24 = phi i32 [ %i.k, %bb.c ], [ 0, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit ]
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 3612
  %i.m = load i32, ptr %i.l, align 4, !tbaa !326  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store i32 %i.m, ptr %5, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 4
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %.sroa.22.0..sroa_idx.i, align 8
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 0, ptr %.sroa.3.0..sroa_idx.i, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 3272
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !226
  %i.p = zext i32 %1 to i64
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !227
  switch i32 %i.r, label %_ZN3sat6solver13assign_scopedENS_7literalE.exit [
    i32 -1, label %bb.d
    i32 0, label %bb.e
    i32 1, label %bb.f
  ]

bb.d:                                             ; preds = %_ZNK6vectorIPN3sat6clauseELb0EjE4sizeEv.exit
  %i.s = xor i32 %1, 1
  tail call void @_ZN3sat6solver12set_conflictENS_13justificationENS_7literalE(ptr noundef nonnull align 8 dereferenceable(4264) %i.a, ptr noundef nonnull byval(%"class.sat::justification") align 8 %5, i32 %i.s)
  br label %_ZN3sat6solver13assign_scopedENS_7literalE.exit

bb.e:                                             ; preds = %_ZNK6vectorIPN3sat6clauseELb0EjE4sizeEv.exit
  tail call void @_ZN3sat6solver11assign_coreENS_7literalENS_13justificationE(ptr noundef nonnull align 8 dereferenceable(4264) %i.a, i32 %1, ptr noundef nonnull byval(%"class.sat::justification") align 8 %5)
  br label %_ZN3sat6solver13assign_scopedENS_7literalE.exit

bb.f:                                             ; preds = %_ZNK6vectorIPN3sat6clauseELb0EjE4sizeEv.exit
  %i.t = icmp ne i32 %i.m, 0
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 3832
  %i.v = load i8, ptr %i.u, align 8, !range !105
  %i.w = trunc nuw i8 %i.v to i1
  %or.cond.i.i.i = select i1 %i.t, i1 true, i1 %i.w
  br i1 %or.cond.i.i.i, label %_ZN3sat6solver13assign_scopedENS_7literalE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 3280
  %i.y = lshr i32 %1, 1
  %i.z = load ptr, ptr %i.x, align 8, !tbaa !235
  %i.aa = zext nneg i32 %i.y to i64
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %i.z, i64 %i.aa ; 3 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !295
  %.not.i.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i.i, label %_ZN3sat6solver13assign_scopedENS_7literalE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.ab, align 8, !tbaa !12
  %.sroa.5.0..sroa_idx10.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.5.0..sroa_idx10.i.i, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.2.0..sroa_idx.i, i64 16, i1 false)
  br label %_ZN3sat6solver13assign_scopedENS_7literalE.exit

_ZN3sat6solver13assign_scopedENS_7literalE.exit:  ; preds = %_ZNK6vectorIPN3sat6clauseELb0EjE4sizeEv.exit, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.ad = load ptr, ptr %0, align 8, !tbaa !90, !nonnull !65, !align !66
  %i.ae = tail call noundef zeroext i1 @_ZN3sat6solver14propagate_coreEb(ptr noundef nonnull align 8 dereferenceable(4264) %i.ad, i1 noundef zeroext false) ; 0 uses
  %i.af = load ptr, ptr %0, align 8, !tbaa !90, !nonnull !65, !align !66 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 3168
  %i.ah = load i8, ptr %i.ag, align 8, !tbaa !241, !range !105, !noundef !65
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %.critedge, label %bb.i

bb.i:                                             ; preds = %_ZN3sat6solver13assign_scopedENS_7literalE.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 3280
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !235 ; 2 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %_ZNK3sat6solver8num_varsEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = getelementptr inbounds i8, ptr %i.al, i64 -4
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !12
  %i.ap = shl i32 %i.ao, 1
  br label %_ZNK3sat6solver8num_varsEv.exit

_ZNK3sat6solver8num_varsEv.exit:                  ; preds = %bb.i, %bb.j
  %.0.i.i = phi i32 [ %i.ap, %bb.j ], [ 0, %bb.i ]
  %.pre.i = load ptr, ptr %i.aj, align 8, !tbaa !8
  br label %bb.k

bb.k:                                             ; preds = %_ZN3sat15clause_use_listD2Ev.exit.i, %_ZNK3sat6solver8num_varsEv.exit
  %i.aq = phi ptr [ %i.bb, %_ZN3sat15clause_use_listD2Ev.exit.i ], [ %.pre.i, %_ZNK3sat6solver8num_varsEv.exit ] ; 4 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %.thread.i, label %_ZNK6vectorIN3sat15clause_use_listELb1EjE4sizeEv.exit.i

.thread.i:                                        ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  br label %bb.m

_ZNK6vectorIN3sat15clause_use_listELb1EjE4sizeEv.exit.i: ; preds = %bb.k
  %i.as = getelementptr inbounds i8, ptr %i.aq, i64 -4
  %i.at = load i32, ptr %i.as, align 4, !tbaa !12 ; 3 uses
  %.not.i = icmp ugt i32 %i.at, %.0.i.i
  br i1 %.not.i, label %_ZN3sat8use_list7reserveEj.exit, label %bb.l

bb.l:                                             ; preds = %_ZNK6vectorIN3sat15clause_use_listELb1EjE4sizeEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %i.au = getelementptr inbounds i8, ptr %i.aq, i64 -8
  %i.av = load i32, ptr %i.au, align 4, !tbaa !12
  %i.aw = icmp eq i32 %i.at, %i.av
  br i1 %i.aw, label %bb.m, label %_ZN3sat15clause_use_listD2Ev.exit.i

bb.m:                                             ; preds = %bb.l, %.thread.i
  invoke void @_ZN6vectorIN3sat15clause_use_listELb1EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aj)
          to label %.noexc.i unwind label %bb.n

.noexc.i:                                         ; preds = %bb.m
  %.pre.i.i = load ptr, ptr %i.aj, align 8, !tbaa !8 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !12
  br label %_ZN3sat15clause_use_listD2Ev.exit.i

_ZN3sat15clause_use_listD2Ev.exit.i:              ; preds = %.noexc.i, %bb.l
  %i.ax = phi i32 [ %.pre2.i.i, %.noexc.i ], [ %i.at, %bb.l ]
  %i.ay = phi ptr [ %.pre.i.i, %.noexc.i ], [ %i.aq, %bb.l ]
  %i.az = zext i32 %i.ax to i64
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %i.ay, i64 %i.az
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, i8 0, i64 16, i1 false)
  %i.bb = load ptr, ptr %i.aj, align 8, !tbaa !8  ; 2 uses
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 -4 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !12
  %i.be = add i32 %i.bd, 1
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.k, !llvm.loop !327

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, %bb.al, %bb.v, %bb.aa, %bb.n
  %common.resume.op = phi { ptr, i32 } [ %i.bf, %bb.n ], [ %i.dq, %bb.aa ], [ %i.dc, %bb.v ], [ %i.fm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.fr, %bb.al ]
  resume { ptr, i32 } %common.resume.op

bb.n:                                             ; preds = %bb.m
  %i.bf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3sat15clause_use_listD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %common.resume

_ZN3sat8use_list7reserveEj.exit:                  ; preds = %_ZNK6vectorIN3sat15clause_use_listELb1EjE4sizeEv.exit.i
  %i.bg = load ptr, ptr %0, align 8, !tbaa !90, !nonnull !65, !align !66 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 3784
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !107 ; 2 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit26, label %bb.o

bb.o:                                             ; preds = %_ZN3sat8use_list7reserveEj.exit
  %i.bk = getelementptr inbounds i8, ptr %i.bi, i64 -4
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !12
  br label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit26

_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit26:   ; preds = %_ZN3sat8use_list7reserveEj.exit, %bb.o
  %.0.i25 = phi i32 [ %i.bl, %bb.o ], [ 0, %_ZN3sat8use_list7reserveEj.exit ] ; 2 uses
  %i.bm = icmp ult i32 %.0.i, %.0.i25
  br i1 %i.bm, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit26
  %i.bn = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.br = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.bu = zext i32 %.0.i to i64
  %wide.trip.count = zext i32 %.0.i25 to i64
  br label %bb.p

.preheader.loopexit:                              ; preds = %_ZN3sat15clause_use_list5resetEv.exit
  %.pre = load ptr, ptr %0, align 8, !tbaa !90
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit26
  %i.bv = phi ptr [ %.pre, %.preheader.loopexit ], [ %i.bg, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit26 ] ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 3208
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !13 ; 2 uses
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %.critedge, label %_ZNK6vectorIPN3sat6clauseELb0EjE4sizeEv.exit32

bb.p:                                             ; preds = %.lr.ph, %_ZN3sat15clause_use_list5resetEv.exit
  %indvars.iv = phi i64 [ %i.bu, %.lr.ph ], [ %indvars.iv.next, %_ZN3sat15clause_use_list5resetEv.exit ] ; 2 uses
  %i.bz = load ptr, ptr %0, align 8, !tbaa !90, !nonnull !65, !align !66
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 3784
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !107
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %indvars.iv
  %.sroa.09.0.copyload = load i32, ptr %i.cc, align 4, !tbaa !12 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.cd = xor i32 %.sroa.09.0.copyload, 1
  %i.ce = load ptr, ptr %i.aj, align 8, !tbaa !8
  %i.cf = zext i32 %i.cd to i64
  %i.cg = getelementptr inbounds nuw [16 x i8], ptr %i.ce, i64 %i.cf ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !328)
  store ptr %i.cg, ptr %6, align 8, !tbaa !303, !alias.scope !328
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !13, !noalias !328 ; 2 uses
  %i.ci = icmp eq ptr %i.ch, null
  br i1 %i.ci, label %_ZNK3sat15clause_use_list11mk_iteratorEv.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cj = getelementptr inbounds i8, ptr %i.ch, i64 -4
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !12, !noalias !328
  br label %_ZNK3sat15clause_use_list11mk_iteratorEv.exit

_ZNK3sat15clause_use_list11mk_iteratorEv.exit:    ; preds = %bb.p, %bb.q
  %.0.i.i.i = phi i32 [ %i.ck, %bb.q ], [ 0, %bb.p ]
  store i32 %.0.i.i.i, ptr %i.bn, align 8, !tbaa !305, !alias.scope !328
  store i32 0, ptr %i.bo, align 4, !tbaa !307, !alias.scope !328
  store i32 0, ptr %i.bp, align 8, !tbaa !308, !alias.scope !328
  call void @_ZN3sat15clause_use_list8iterator7consumeEv(ptr noundef nonnull align 8 dereferenceable(20) %6)
  br label %_ZN3sat15clause_use_list8iterator4nextEv.exit

_ZN3sat15clause_use_list8iterator4nextEv.exit:    ; preds = %bb.u, %_ZNK3sat15clause_use_list11mk_iteratorEv.exit
  %i.cl = load i32, ptr %i.bo, align 4, !tbaa !307 ; 2 uses
  %i.cm = load i32, ptr %i.bn, align 8, !tbaa !305
  %i.cn = icmp eq i32 %i.cl, %i.cm
  br i1 %i.cn, label %bb.r, label %bb.t

bb.r:                                             ; preds = %_ZN3sat15clause_use_list8iterator4nextEv.exit
  call void @_ZN3sat15clause_use_list8iteratorD1Ev(ptr noundef nonnull align 8 dead_on_return(20) dereferenceable(20) %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.co = load ptr, ptr %i.aj, align 8, !tbaa !8
  %i.cp = zext i32 %.sroa.09.0.copyload to i64
  %i.cq = getelementptr inbounds nuw [16 x i8], ptr %i.co, i64 %i.cp ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !331)
  store ptr %i.cq, ptr %7, align 8, !tbaa !303, !alias.scope !331
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !13, !noalias !331 ; 2 uses
  %i.cs = icmp eq ptr %i.cr, null
  br i1 %i.cs, label %_ZNK3sat15clause_use_list11mk_iteratorEv.exit28, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ct = getelementptr inbounds i8, ptr %i.cr, i64 -4
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !12, !noalias !331
  br label %_ZNK3sat15clause_use_list11mk_iteratorEv.exit28

_ZNK3sat15clause_use_list11mk_iteratorEv.exit28:  ; preds = %bb.r, %bb.s
  %.0.i.i.i27 = phi i32 [ %i.cu, %bb.s ], [ 0, %bb.r ]
  store i32 %.0.i.i.i27, ptr %i.br, align 8, !tbaa !305, !alias.scope !331
  store i32 0, ptr %i.bs, align 4, !tbaa !307, !alias.scope !331
  store i32 0, ptr %i.bt, align 8, !tbaa !308, !alias.scope !331
  call void @_ZN3sat15clause_use_list8iterator7consumeEv(ptr noundef nonnull align 8 dereferenceable(20) %7)
  br label %bb.w

bb.t:                                             ; preds = %_ZN3sat15clause_use_list8iterator4nextEv.exit
  %i.cv = load ptr, ptr %6, align 8, !tbaa !309, !nonnull !65, !align !66
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !13
  %i.cx = zext i32 %i.cl to i64
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.cx
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !23
  invoke void @_ZN3sat10clause_set6insertERNS_6clauseE(ptr noundef nonnull align 8 dereferenceable(16) %i.bq, ptr noundef nonnull align 4 dereferenceable(20) %i.cz)
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.da = load <2 x i32>, ptr %i.bo, align 4, !tbaa !12
  %i.db = add <2 x i32> %i.da, splat (i32 1)
  store <2 x i32> %i.db, ptr %i.bo, align 4, !tbaa !12
  invoke void @_ZN3sat15clause_use_list8iterator7consumeEv(ptr noundef nonnull align 8 dereferenceable(20) %6)
          to label %_ZN3sat15clause_use_list8iterator4nextEv.exit unwind label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.dc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3sat15clause_use_list8iteratorD1Ev(ptr noundef nonnull align 8 dead_on_return(20) dereferenceable(20) %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %common.resume

bb.w:                                             ; preds = %_ZN3sat15clause_use_list8iterator4nextEv.exit30, %_ZNK3sat15clause_use_list11mk_iteratorEv.exit28
  %i.dd = load i32, ptr %i.bs, align 4, !tbaa !307 ; 3 uses
  %i.de = load i32, ptr %i.br, align 8, !tbaa !305
  %i.df = icmp eq i32 %i.dd, %i.de
  br i1 %i.df, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  call void @_ZN3sat15clause_use_list8iteratorD1Ev(ptr noundef nonnull align 8 dead_on_return(20) dereferenceable(20) %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  %i.dg = load ptr, ptr %i.cq, align 8, !tbaa !13 ; 2 uses
  %.not.i.i.i29 = icmp eq ptr %i.dg, null
  br i1 %.not.i.i.i29, label %_ZN3sat15clause_use_list5resetEv.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dh = getelementptr inbounds i8, ptr %i.dg, i64 -8
  call void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.dh)
  br label %_ZN3sat15clause_use_list5resetEv.exit

_ZN3sat15clause_use_list5resetEv.exit:            ; preds = %bb.x, %bb.y
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cq, i8 0, i64 16, i1 false)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader.loopexit, label %bb.p, !llvm.loop !334

bb.z:                                             ; preds = %bb.w
  %i.di = load ptr, ptr %7, align 8, !tbaa !309, !nonnull !65, !align !66
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !13
  %i.dk = zext i32 %i.dd to i64
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %i.dk
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !23
  %i.dn = add i32 %i.dd, 1
  store i32 %i.dn, ptr %i.bs, align 4, !tbaa !307
  %i.do = load i32, ptr %i.bt, align 8, !tbaa !308
  %i.dp = add i32 %i.do, 1
  store i32 %i.dp, ptr %i.bt, align 8, !tbaa !308
  invoke void @_ZN3sat15clause_use_list8iterator7consumeEv(ptr noundef nonnull align 8 dereferenceable(20) %7)
          to label %_ZN3sat15clause_use_list8iterator4nextEv.exit30 unwind label %bb.aa

_ZN3sat15clause_use_list8iterator4nextEv.exit30:  ; preds = %bb.z
  invoke void @_ZN3sat10simplifier13remove_clauseERNS_6clauseEb(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 4 dereferenceable(20) %i.dm, i1 noundef zeroext true)
          to label %bb.w unwind label %bb.aa, !llvm.loop !335

bb.aa:                                            ; preds = %bb.z, %_ZN3sat15clause_use_list8iterator4nextEv.exit30
  %i.dq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3sat15clause_use_list8iteratorD1Ev(ptr noundef nonnull align 8 dead_on_return(20) dereferenceable(20) %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %common.resume

_ZNK6vectorIPN3sat6clauseELb0EjE4sizeEv.exit32:   ; preds = %.preheader, %_ZN3sat8use_list6insertERNS_6clauseE.exit
  %i.dr = phi ptr [ %i.gk, %_ZN3sat8use_list6insertERNS_6clauseE.exit ], [ %i.bv, %.preheader ]
  %8 = phi ptr [ %i.gm, %_ZN3sat8use_list6insertERNS_6clauseE.exit ], [ %i.bx, %.preheader ] ; 2 uses
  %.037 = phi i32 [ %10, %_ZN3sat8use_list6insertERNS_6clauseE.exit ], [ %.0.i24, %.preheader ] ; 3 uses
  %i.ds = getelementptr inbounds i8, ptr %8, i64 -4
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !12
  %i.du = icmp ult i32 %.037, %i.dt
  br i1 %i.du, label %bb.ab, label %.critedge

bb.ab:                                            ; preds = %_ZNK6vectorIPN3sat6clauseELb0EjE4sizeEv.exit32
  %9 = zext i32 %.037 to i64
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %9
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !23 ; 4 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 20 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 4
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !20 ; 2 uses
  %i.ea = zext i32 %i.dz to i64
  %.idx.i = shl nuw nsw i64 %i.ea, 2
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dx, i64 %.idx.i
  %.not9.i = icmp eq i32 %i.dz, 0
  br i1 %.not9.i, label %_ZN3sat8use_list6insertERNS_6clauseE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ab
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  br label %bb.ac

bb.ac:                                            ; preds = %_ZN3sat15clause_use_list6insertERNS_6clauseE.exit.i, %.lr.ph.i
  %.010.i = phi ptr [ %i.dx, %.lr.ph.i ], [ %i.gj, %_ZN3sat15clause_use_list6insertERNS_6clauseE.exit.i ] ; 2 uses
  %i.ed = load i32, ptr %.010.i, align 4, !tbaa !12
  %i.ee = load ptr, ptr %i.aj, align 8, !tbaa !8
  %i.ef = zext i32 %i.ed to i64
  %i.eg = getelementptr inbounds nuw [16 x i8], ptr %i.ee, i64 %i.ef ; 5 uses
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !13 ; 4 uses
  %i.ei = icmp eq ptr %i.eh, null
  br i1 %i.ei, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ej = getelementptr inbounds i8, ptr %i.eh, i64 -4
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !12 ; 5 uses
  %i.el = getelementptr inbounds i8, ptr %i.eh, i64 -8 ; 2 uses
  %i.em = load i32, ptr %i.el, align 4, !tbaa !12
  %i.en = icmp eq i32 %i.ek, %i.em
  br i1 %i.en, label %bb.af, label %_ZN6vectorIPN3sat6clauseELb0EjE9push_backEOS2_.exit.i.i

bb.ae:                                            ; preds = %bb.ac
  %i.eo = call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 24) ; 3 uses
  store i32 2, ptr %i.eo, align 4, !tbaa !12
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 4
  store i32 0, ptr %i.ep, align 4, !tbaa !12
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 8 ; 2 uses
  store ptr %i.eq, ptr %i.eg, align 8, !tbaa !13
  br label %_ZN6vectorIPN3sat6clauseELb0EjE13expand_vectorEv.exit

bb.af:                                            ; preds = %bb.ad
  %i.er = mul i32 %i.ek, 3
  %i.es = add i32 %i.er, 1
  %i.et = lshr i32 %i.es, 1                       ; 3 uses
  %i.eu = shl i32 %i.et, 3
  %i.ev = add i32 %i.eu, 8                        ; 2 uses
  %.not.i34 = icmp ugt i32 %i.et, %i.ek
  br i1 %.not.i34, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.ew = shl i32 %i.ek, 3
  %i.ex = add i32 %i.ew, 8
  %.not27.i = icmp ugt i32 %i.ev, %i.ex
  br i1 %.not27.i, label %bb.am, label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.ey = call ptr @__cxa_allocate_exception(i64 40) #26 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.13, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.ai unwind label %bb.al

bb.ai:                                            ; preds = %bb.ah
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.ey, align 8, !tbaa !224
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 8 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ey, i64 24 ; 3 uses
  store ptr %i.fa, ptr %i.ez, align 8, !tbaa !231
  %i.fb = load ptr, ptr %2, align 8, !tbaa !232   ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  %i.fd = icmp eq ptr %i.fb, %i.fc
  br i1 %i.fd, label %bb.aj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.aj:                                            ; preds = %bb.ai
  %i.fe = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !233 ; 3 uses
  %i.fg = icmp ult i64 %i.ff, 16
  call void @llvm.assume(i1 %i.fg)
  %i.fh = add nuw nsw i64 %i.ff, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.fa, ptr noundef nonnull align 8 dereferenceable(1) %i.fc, i64 %i.fh, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.ai
  store ptr %i.fb, ptr %i.ez, align 8, !tbaa !232
  %i.fi = load i64, ptr %i.fc, align 8, !tbaa !234
  store i64 %i.fi, ptr %i.fa, align 8, !tbaa !234
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre.i35 = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !233
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.aj
  %i.fj = phi i64 [ %i.ff, %bb.aj ], [ %.pre.i35, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.fk = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  store i64 %i.fj, ptr %i.fl, align 8, !tbaa !233
  store ptr %i.fc, ptr %2, align 8, !tbaa !232
  store i64 0, ptr %i.fk, align 8, !tbaa !233
  store i8 0, ptr %i.fc, align 8, !tbaa !234
  invoke void @__cxa_throw(ptr nonnull %i.ey, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #27
          to label %bb.an unwind label %bb.ak

bb.ak:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %i.fm = landingpad { ptr, i32 }
          cleanup
  %i.fn = load ptr, ptr %2, align 8, !tbaa !232   ; 2 uses
  %i.fo = icmp eq ptr %i.fn, %i.fc
  br i1 %i.fo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i: ; preds = %bb.ak
  %i.fp = load i64, ptr %i.fc, align 8, !tbaa !234
  %i.fq = add i64 %i.fp, 1
  call void @_ZdlPvm(ptr noundef %i.fn, i64 noundef %i.fq) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %common.resume

bb.al:                                            ; preds = %bb.ah
  %i.fr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @__cxa_free_exception(ptr %i.ey) #26
  br label %common.resume

bb.am:                                            ; preds = %bb.ag
  %i.fs = zext i32 %i.ev to i64
  %i.ft = call noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.el, i64 noundef %i.fs) ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 8 ; 2 uses
  store ptr %i.fu, ptr %i.eg, align 8, !tbaa !13
  store i32 %i.et, ptr %i.ft, align 4, !tbaa !12
  br label %_ZN6vectorIPN3sat6clauseELb0EjE13expand_vectorEv.exit

bb.an:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  unreachable

_ZN6vectorIPN3sat6clauseELb0EjE13expand_vectorEv.exit: ; preds = %bb.ae, %bb.am
  %.pre.i.i.i = phi ptr [ %i.eq, %bb.ae ], [ %i.fu, %bb.am ] ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds i8, ptr %.pre.i.i.i, i64 -4
  %.pre2.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i, align 4, !tbaa !12
  br label %_ZN6vectorIPN3sat6clauseELb0EjE9push_backEOS2_.exit.i.i

_ZN6vectorIPN3sat6clauseELb0EjE9push_backEOS2_.exit.i.i: ; preds = %_ZN6vectorIPN3sat6clauseELb0EjE13expand_vectorEv.exit, %bb.ad
  %i.fv = phi i32 [ %.pre2.i.i.i, %_ZN6vectorIPN3sat6clauseELb0EjE13expand_vectorEv.exit ], [ %i.ek, %bb.ad ] ; 2 uses
  %i.fw = phi ptr [ %.pre.i.i.i, %_ZN6vectorIPN3sat6clauseELb0EjE13expand_vectorEv.exit ], [ %i.eh, %bb.ad ] ; 2 uses
  %i.fx = getelementptr inbounds i8, ptr %i.fw, i64 -4
  %i.fy = zext i32 %i.fv to i64
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.fw, i64 %i.fy
  store ptr %i.dw, ptr %i.fz, align 8, !tbaa !23
  %i.ga = add i32 %i.fv, 1
  store i32 %i.ga, ptr %i.fx, align 4, !tbaa !12
  %i.gb = getelementptr inbounds nuw i8, ptr %i.eg, i64 8 ; 2 uses
  %i.gc = load i32, ptr %i.gb, align 8, !tbaa !25
  %i.gd = add i32 %i.gc, 1
  store i32 %i.gd, ptr %i.gb, align 8, !tbaa !25
  %i.ge = load i32, ptr %i.ec, align 4
  %i.gf = and i32 %i.ge, 4
  %.not.i.i = icmp eq i32 %i.gf, 0
  br i1 %.not.i.i, label %_ZN3sat15clause_use_list6insertERNS_6clauseE.exit.i, label %bb.ao

bb.ao:                                            ; preds = %_ZN6vectorIPN3sat6clauseELb0EjE9push_backEOS2_.exit.i.i
  %i.gg = getelementptr inbounds nuw i8, ptr %i.eg, i64 12 ; 2 uses
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !28
  %i.gi = add i32 %i.gh, 1
  store i32 %i.gi, ptr %i.gg, align 4, !tbaa !28
  br label %_ZN3sat15clause_use_list6insertERNS_6clauseE.exit.i

_ZN3sat15clause_use_list6insertERNS_6clauseE.exit.i: ; preds = %bb.ao, %_ZN6vectorIPN3sat6clauseELb0EjE9push_backEOS2_.exit.i.i
  %i.gj = getelementptr inbounds nuw i8, ptr %.010.i, i64 4 ; 2 uses
  %.not.i33 = icmp eq ptr %i.gj, %i.eb
  br i1 %.not.i33, label %_ZN3sat8use_list6insertERNS_6clauseE.exit.loopexit, label %bb.ac

_ZN3sat8use_list6insertERNS_6clauseE.exit.loopexit: ; preds = %_ZN3sat15clause_use_list6insertERNS_6clauseE.exit.i
  %.pre43 = load ptr, ptr %0, align 8, !tbaa !90
  br label %_ZN3sat8use_list6insertERNS_6clauseE.exit

_ZN3sat8use_list6insertERNS_6clauseE.exit:        ; preds = %_ZN3sat8use_list6insertERNS_6clauseE.exit.loopexit, %bb.ab
  %i.gk = phi ptr [ %.pre43, %_ZN3sat8use_list6insertERNS_6clauseE.exit.loopexit ], [ %i.dr, %bb.ab ] ; 2 uses
  %10 = add i32 %.037, 1
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 3208
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !13 ; 2 uses
  %i.gn = icmp eq ptr %i.gm, null
  br i1 %i.gn, label %.critedge, label %_ZNK6vectorIPN3sat6clauseELb0EjE4sizeEv.exit32, !llvm.loop !336

.critedge:                                        ; preds = %_ZNK6vectorIPN3sat6clauseELb0EjE4sizeEv.exit32, %_ZN3sat8use_list6insertERNS_6clauseE.exit, %.preheader, %_ZN3sat6solver13assign_scopedENS_7literalE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN3sat10simplifier21subsume_with_binariesEv(ptr noundef nonnull align 8 dereferenceable(288) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca [2 x %"class.sat::literal"], align 4 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !90, !nonnull !65, !align !66 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 2340 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !337
  %i.d = mul i32 %i.c, 214013
  %i.e = add i32 %i.d, 2531011                    ; 2 uses
  store i32 %i.e, ptr %i.b, align 4, !tbaa !337
  %i.f = lshr i32 %i.e, 16
  %i.g = and i32 %i.f, 32767
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 3264
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !118  ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %.thread, label %_ZNK6vectorIS_IN3sat7watchedELb1EjELb1EjE4sizeEv.exit

_ZNK6vectorIS_IN3sat7watchedELb1EjELb1EjE4sizeEv.exit: ; preds = %bb.a
  %i.k = getelementptr inbounds i8, ptr %i.i, i64 -4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !12   ; 3 uses
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK6vectorIS_IN3sat7watchedELb1EjELb1EjE4sizeEv.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 228 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 220 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 104
  br label %bb.b

bb.b:                                             ; preds = %.critedge45.thread, %.lr.ph
  %i.u = phi ptr [ %i.a, %.lr.ph ], [ %i.eb, %.critedge45.thread ] ; 3 uses
  %.03563 = phi i32 [ 0, %.lr.ph ], [ %i.ee, %.critedge45.thread ] ; 2 uses
  %i.v = add i32 %.03563, %i.g
  %i.w = urem i32 %i.v, %i.l                      ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 3264
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !118
  %i.z = zext i32 %i.w to i64
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.z ; 2 uses
  %i.ab = xor i32 %i.w, 1                         ; 2 uses
  %i.ac = load ptr, ptr %i.aa, align 8, !tbaa !251 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %.critedge45.thread, label %_ZNK6vectorIN3sat7watchedELb1EjE4sizeEv.exit

_ZNK6vectorIN3sat7watchedELb1EjE4sizeEv.exit:     ; preds = %bb.b, %.critedge
  %i.ae = phi ptr [ %i.dy, %.critedge ], [ %i.ac, %bb.b ] ; 4 uses
  %i.af = phi ptr [ %i.dz, %.critedge ], [ %i.u, %bb.b ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %.critedge ], [ 0, %bb.b ] ; 3 uses
  %i.ag = getelementptr inbounds i8, ptr %i.ae, i64 -4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !12
  %i.ai = zext i32 %i.ah to i64
  %i.aj = icmp samesign ult i64 %indvars.iv, %i.ai
  br i1 %i.aj, label %bb.c, label %.critedge45.thread

bb.c:                                             ; preds = %_ZNK6vectorIN3sat7watchedELb1EjE4sizeEv.exit
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %indvars.iv ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !12
  %i.al = and i32 %.sroa.5.0.copyload, 7
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %.sroa.052.0.copyload = load i64, ptr %i.ak, align 8, !tbaa !257
  %i.an = trunc i64 %.sroa.052.0.copyload to i32  ; 2 uses
  %i.ao = icmp ult i32 %i.ab, %i.an
  br i1 %i.ao, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  store i32 %i.ab, ptr %1, align 4, !tbaa !12
  store i32 %i.an, ptr %i.n, align 4, !tbaa !12
  call void @_ZN3sat10tmp_clause3setEjPKNS_7literalEb(ptr noundef nonnull align 8 dereferenceable(8) %i.m, i32 noundef 2, ptr noundef nonnull %1, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  %i.ap = load ptr, ptr %i.m, align 8, !tbaa !110 ; 6 uses
  %i.aq = load ptr, ptr %i.o, align 8, !tbaa !13  ; 2 uses
  %.not.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i, label %_ZN6vectorIPN3sat6clauseELb0EjE5resetEv.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 -4
  store i32 0, ptr %i.ar, align 4, !tbaa !12
  br label %_ZN6vectorIPN3sat6clauseELb0EjE5resetEv.exit.i

_ZN6vectorIPN3sat6clauseELb0EjE5resetEv.exit.i:   ; preds = %bb.f, %bb.e
  %i.as = load ptr, ptr %i.p, align 8, !tbaa !107 ; 2 uses
  %.not.i18.i = icmp eq ptr %i.as, null
  br i1 %.not.i18.i, label %_ZN6vectorIN3sat7literalELb0EjE5resetEv.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZN6vectorIPN3sat6clauseELb0EjE5resetEv.exit.i
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 -4
  store i32 0, ptr %i.at, align 4, !tbaa !12
  br label %_ZN6vectorIN3sat7literalELb0EjE5resetEv.exit.i

_ZN6vectorIN3sat7literalELb0EjE5resetEv.exit.i:   ; preds = %bb.g, %_ZN6vectorIPN3sat6clauseELb0EjE5resetEv.exit.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 20 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !20 ; 2 uses
  %.not18.i.i.i = icmp eq i32 %i.aw, 0
  br i1 %.not18.i.i.i, label %_ZN3sat10simplifier17collect_subsumed1ERKNS_6clauseER10ptr_vectorIS1_ER7svectorINS_7literalEjE.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN6vectorIN3sat7literalELb0EjE5resetEv.exit.i
  %i.ax = zext i32 %i.aw to i64
  %i.ay = load ptr, ptr %i.q, align 8, !tbaa !8   ; 6 uses
  %i.az = add nuw nsw i64 %i.ax, 4611686018427387903 ; 2 uses
  %i.ba = and i64 %i.az, 4611686018427387903      ; 2 uses
  %i.bb = add nuw nsw i64 %i.ba, 1                ; 2 uses
  %i.bc = icmp eq i64 %i.ba, 0
  br i1 %i.bc, label %.epil.preheader, label %.lr.ph.i.i.i.new

.lr.ph.i.i.i.new:                                 ; preds = %.lr.ph.i.i.i
  %unroll_iter = and i64 %i.bb, 9223372036854775806
  br label %bb.h

._crit_edge.loopexit.i.i.i.unr-lcssa:             ; preds = %bb.h
  %i.bd = and i64 %i.az, 1
  %lcmp.mod.not.not = icmp eq i64 %i.bd, 0
  br i1 %lcmp.mod.not.not, label %.epil.preheader, label %._crit_edge.loopexit.i.i.i

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.i.i.i.unr-lcssa, %.lr.ph.i.i.i
  %.021.i.i.i.epil.init = phi i32 [ -1, %.lr.ph.i.i.i ], [ %spec.select17.i.i.i.1, %._crit_edge.loopexit.i.i.i.unr-lcssa ]
  %.01520.i.i.i.epil.init = phi ptr [ %i.au, %.lr.ph.i.i.i ], [ %i.cn, %._crit_edge.loopexit.i.i.i.unr-lcssa ]
  %.sroa.0.019.i.i.i.epil.init = phi i32 [ -2, %.lr.ph.i.i.i ], [ %spec.select.i.i.i.1, %._crit_edge.loopexit.i.i.i.unr-lcssa ]
  %lcmp.mod82 = trunc i64 %i.bb to i1
  call void @llvm.assume(i1 %lcmp.mod82)
  %.sroa.04.0.copyload.i.i.i.epil = load i32, ptr %.01520.i.i.i.epil.init, align 4, !tbaa !12 ; 3 uses
  %i.be = zext i32 %.sroa.04.0.copyload.i.i.i.epil to i64
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %i.ay, i64 %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !25
  %i.bi = xor i32 %.sroa.04.0.copyload.i.i.i.epil, 1
  %i.bj = zext i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %i.ay, i64 %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !25
  %i.bn = add i32 %i.bm, %i.bh
  %i.bo = icmp ult i32 %i.bn, %.021.i.i.i.epil.init
  %spec.select.i.i.i.epil = select i1 %i.bo, i32 %.sroa.04.0.copyload.i.i.i.epil, i32 %.sroa.0.019.i.i.i.epil.init
  br label %._crit_edge.loopexit.i.i.i

._crit_edge.loopexit.i.i.i:                       ; preds = %._crit_edge.loopexit.i.i.i.unr-lcssa, %.epil.preheader
  %spec.select.i.i.i.lcssa = phi i32 [ %spec.select.i.i.i.1, %._crit_edge.loopexit.i.i.i.unr-lcssa ], [ %spec.select.i.i.i.epil, %.epil.preheader ]
  %i.bp = and i32 %spec.select.i.i.i.lcssa, -2
  br label %_ZN3sat10simplifier17collect_subsumed1ERKNS_6clauseER10ptr_vectorIS1_ER7svectorINS_7literalEjE.exit.i

bb.h:                                             ; preds = %bb.h, %.lr.ph.i.i.i.new
  %.021.i.i.i = phi i32 [ -1, %.lr.ph.i.i.i.new ], [ %spec.select17.i.i.i.1, %bb.h ] ; 2 uses
  %.01520.i.i.i = phi ptr [ %i.au, %.lr.ph.i.i.i.new ], [ %i.cn, %bb.h ] ; 3 uses
  %.sroa.0.019.i.i.i = phi i32 [ -2, %.lr.ph.i.i.i.new ], [ %spec.select.i.i.i.1, %bb.h ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %niter.next.1, %bb.h ]
  %.sroa.04.0.copyload.i.i.i = load i32, ptr %.01520.i.i.i, align 4, !tbaa !12 ; 3 uses
  %i.bq = zext i32 %.sroa.04.0.copyload.i.i.i to i64
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.ay, i64 %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !25
  %i.bu = xor i32 %.sroa.04.0.copyload.i.i.i, 1
  %i.bv = zext i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %i.ay, i64 %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !25
  %i.bz = add i32 %i.by, %i.bt                    ; 2 uses
  %i.ca = icmp ult i32 %i.bz, %.021.i.i.i
  %spec.select.i.i.i = select i1 %i.ca, i32 %.sroa.04.0.copyload.i.i.i, i32 %.sroa.0.019.i.i.i
  %spec.select17.i.i.i = call i32 @llvm.umin.i32(i32 %i.bz, i32 %.021.i.i.i) ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.01520.i.i.i, i64 4
  %.sroa.04.0.copyload.i.i.i.1 = load i32, ptr %i.cb, align 4, !tbaa !12 ; 3 uses
  %i.cc = zext i32 %.sroa.04.0.copyload.i.i.i.1 to i64
  %i.cd = getelementptr inbounds nuw [16 x i8], ptr %i.ay, i64 %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !25
  %i.cg = xor i32 %.sroa.04.0.copyload.i.i.i.1, 1
  %i.ch = zext i32 %i.cg to i64
  %i.ci = getelementptr inbounds nuw [16 x i8], ptr %i.ay, i64 %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !25
  %i.cl = add i32 %i.ck, %i.cf                    ; 2 uses
  %i.cm = icmp ult i32 %i.cl, %spec.select17.i.i.i
  %spec.select.i.i.i.1 = select i1 %i.cm, i32 %.sroa.04.0.copyload.i.i.i.1, i32 %spec.select.i.i.i ; 3 uses
  %spec.select17.i.i.i.1 = call i32 @llvm.umin.i32(i32 %i.cl, i32 %spec.select17.i.i.i) ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.01520.i.i.i, i64 8 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.i.i.i.unr-lcssa, label %bb.h

_ZN3sat10simplifier17collect_subsumed1ERKNS_6clauseER10ptr_vectorIS1_ER7svectorINS_7literalEjE.exit.i: ; preds = %._crit_edge.loopexit.i.i.i, %_ZN6vectorIN3sat7literalELb0EjE5resetEv.exit.i
  %.sroa.0.0.lcssa.i.i.i = phi i32 [ -2, %_ZN6vectorIN3sat7literalELb0EjE5resetEv.exit.i ], [ %i.bp, %._crit_edge.loopexit.i.i.i ] ; 2 uses
  call void @_ZN3sat10simplifier22collect_subsumed1_coreERKNS_6clauseER10ptr_vectorIS1_ER7svectorINS_7literalEjES8_(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull readonly align 4 dereferenceable(20) %i.ap, ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull align 8 dereferenceable(8) %i.p, i32 %.sroa.0.0.lcssa.i.i.i)
end_hunk_0
