Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/term_enumeration?download=true
inline.NumInlined: 1273
inline.NumDeleted: 707
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN6vectorIjLb0EjE13expand_vectorEv:bb.a

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN9term_enum17children_iteratorC2ER11ast_managerRKNS_10productionERKNS_9term_bankEj(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(952) %1, ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %class.vector.46, align 8           ; 6 uses
  store ptr %1, ptr %0, align 8, !tbaa !82
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  store i8 0, ptr %i.a, align 4, !tbaa !227
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !103  ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_ZNK15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.thread, label %_ZNK15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit

_ZNK15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.thread: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.g, align 8, !tbaa !229
  br label %bb.b

_ZNK15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit: ; preds = %bb.a
  %i.h = getelementptr inbounds i8, ptr %i.e, i64 -4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !99   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i32 %i.i, ptr %i.j, align 8, !tbaa !229
  %i.k = icmp eq i32 %i.i, 0
  br i1 %i.k, label %bb.b, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit
  %i.l = add i32 %4, -1
  br label %bb.d

bb.b:                                             ; preds = %_ZNK15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.thread, %_ZNK15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit
  store i8 1, ptr %i.a, align 4, !tbaa !227
  br label %_ZN6vectorIjLb0EjE6resizeIiEEvjRKT_.exit

bb.c:                                             ; preds = %_ZNK6vectorISt4pairIP4exprjELb1EjE5emptyEv.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.m = load i32, ptr %i.j, align 8, !tbaa !229  ; 8 uses
  %i.n = zext i32 %i.m to i64
  %i.o = icmp samesign ult i64 %indvars.iv.next, %i.n
  br i1 %i.o, label %bb.d, label %._crit_edge, !llvm.loop !320

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !103
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !156
  invoke void @_ZNK9term_enum9term_bank11get_by_sortEP4sortj(ptr dead_on_unwind nonnull writable sret(%class.vector.46) align 8 %5, ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef %i.r, i32 noundef %i.l)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !170  ; 4 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds i8, ptr %i.s, i64 -4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !99   ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %i.s, i64 -8
  %i.x = load i32, ptr %i.w, align 4, !tbaa !99
  %i.y = icmp eq i32 %i.v, %i.x
  br i1 %i.y, label %bb.g, label %_ZN6vectorIS_ISt4pairIP4exprjELb1EjELb1EjE4backEv.exit

bb.g:                                             ; preds = %bb.f, %bb.e
  invoke void @_ZN6vectorIS_ISt4pairIP4exprjELb1EjELb1EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.g
  %.pre.i = load ptr, ptr %i.b, align 8, !tbaa !170 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !99
  br label %_ZN6vectorIS_ISt4pairIP4exprjELb1EjELb1EjE4backEv.exit

_ZN6vectorIS_ISt4pairIP4exprjELb1EjELb1EjE4backEv.exit: ; preds = %bb.f, %.noexc
  %i.z = phi i32 [ %.pre2.i, %.noexc ], [ %i.v, %bb.f ] ; 2 uses
  %i.aa = phi ptr [ %.pre.i, %.noexc ], [ %i.s, %bb.f ] ; 3 uses
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 -4 ; 2 uses
  %i.ac = zext i32 %i.z to i64
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.ac
  %i.ae = load ptr, ptr %5, align 8, !tbaa !173
  store ptr %i.ae, ptr %i.ad, align 8, !tbaa !173
  %i.af = add i32 %i.z, 1
  store i32 %i.af, ptr %i.ab, align 4, !tbaa !99
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.ag = load i32, ptr %i.ab, align 4, !tbaa !99
  %i.ah = add i32 %i.ag, -1
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.ai
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !173 ; 2 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %_ZNK6vectorISt4pairIP4exprjELb1EjE5emptyEv.exit.thread, label %_ZNK6vectorISt4pairIP4exprjELb1EjE5emptyEv.exit

_ZNK6vectorISt4pairIP4exprjELb1EjE5emptyEv.exit:  ; preds = %_ZN6vectorIS_ISt4pairIP4exprjELb1EjELb1EjE4backEv.exit
  %i.am = getelementptr inbounds i8, ptr %i.ak, i64 -4
  %i.an = load i32, ptr %i.am, align 4, !tbaa !99
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %_ZNK6vectorISt4pairIP4exprjELb1EjE5emptyEv.exit.thread, label %bb.c

bb.h:                                             ; preds = %bb.d
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6vectorISt4pairIP4exprjELb1EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #22
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.aq, %bb.i ], [ %i.ap, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.n

_ZNK6vectorISt4pairIP4exprjELb1EjE5emptyEv.exit.thread: ; preds = %_ZN6vectorIS_ISt4pairIP4exprjELb1EjELb1EjE4backEv.exit, %_ZNK6vectorISt4pairIP4exprjELb1EjE5emptyEv.exit
  store i8 1, ptr %i.a, align 4, !tbaa !227
  br label %_ZN6vectorIjLb0EjE6resizeIiEEvjRKT_.exit

._crit_edge:                                      ; preds = %bb.c
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !167 ; 3 uses
  %i.ar = icmp eq ptr %.pre, null
  br i1 %i.ar, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i

_ZNK6vectorIjLb0EjE4sizeEv.exit.i:                ; preds = %._crit_edge
  %.not.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.not.i, label %_ZN6vectorIjLb0EjE6resizeIiEEvjRKT_.exit, label %thread-pre-split.i.preheader

_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i:         ; preds = %._crit_edge
  %i.as = getelementptr inbounds i8, ptr %.pre, i64 -4 ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !99 ; 2 uses
  %.not16.i = icmp ugt i32 %i.m, %i.at
  br i1 %.not16.i, label %thread-pre-split.i.preheader, label %bb.k

thread-pre-split.i.preheader:                     ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i, %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i
  %.ph = phi ptr [ %.pre, %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i ], [ null, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i ]
  %.0.i17.i.ph = phi i32 [ %i.at, %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i ], [ 0, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i ] ; 2 uses
  br label %thread-pre-split.i

bb.k:                                             ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i
  store i32 %i.m, ptr %i.as, align 4, !tbaa !99
  br label %_ZN6vectorIjLb0EjE6resizeIiEEvjRKT_.exit

thread-pre-split.i:                               ; preds = %thread-pre-split.i.preheader, %.noexc20
  %i.au = phi ptr [ %.pr.pre.i, %.noexc20 ], [ %.ph, %thread-pre-split.i.preheader ] ; 4 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i, label %_ZNK6vectorIjLb0EjE8capacityEv.exit.i

_ZNK6vectorIjLb0EjE8capacityEv.exit.i:            ; preds = %thread-pre-split.i
  %i.aw = getelementptr inbounds i8, ptr %i.au, i64 -8
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !99
  %i.ay = icmp ugt i32 %i.m, %i.ax
  br i1 %i.ay, label %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i, label %bb.l

_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i:     ; preds = %_ZNK6vectorIjLb0EjE8capacityEv.exit.i, %thread-pre-split.i
  invoke void @_ZN6vectorIjLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.noexc20 unwind label %bb.m

.noexc20:                                         ; preds = %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i
  %.pr.pre.i = load ptr, ptr %i.c, align 8, !tbaa !167
  br label %thread-pre-split.i, !llvm.loop !321

bb.l:                                             ; preds = %_ZNK6vectorIjLb0EjE8capacityEv.exit.i
  %i.az = getelementptr inbounds i8, ptr %i.au, i64 -4
  store i32 %i.m, ptr %i.az, align 4, !tbaa !99
  %.not1319.i = icmp eq i32 %.0.i17.i.ph, %i.m
  br i1 %.not1319.i, label %_ZN6vectorIjLb0EjE6resizeIiEEvjRKT_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.l
  %i.ba = zext i32 %i.m to i64
  %i.bb = zext i32 %.0.i17.i.ph to i64            ; 2 uses
  %i.bc = getelementptr [4 x i8], ptr %i.au, i64 %i.bb
  %i.bd = sub nsw i64 %i.ba, %i.bb
  %i.be = shl nsw i64 %i.bd, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.bc, i8 0, i64 %i.be, i1 false), !tbaa !99
  br label %_ZN6vectorIjLb0EjE6resizeIiEEvjRKT_.exit

_ZN6vectorIjLb0EjE6resizeIiEEvjRKT_.exit:         ; preds = %.lr.ph.preheader.i, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i, %bb.k, %bb.l, %_ZNK6vectorISt4pairIP4exprjELb1EjE5emptyEv.exit.thread, %bb.b
  ret void

bb.m:                                             ; preds = %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.j
  %.pn16 = phi { ptr, i32 } [ %i.bf, %bb.m ], [ %.pn, %bb.j ]
  call void @_ZN6vectorIjLb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.c) #22
  call void @_ZN6vectorIS_ISt4pairIP4exprjELb1EjELb1EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.b) #22
  resume { ptr, i32 } %.pn16
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK9term_enum9term_bank11get_by_sortEP4sortj(ptr dead_on_unwind noalias writable sret(%class.vector.46) align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !173
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 12
  %4 = add i32 %3, 1
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZNK7obj_mapI4sort10ptr_vectorI4exprEE8containsEPS0_.exit.thread
  %i.c = phi ptr [ null, %bb.a ], [ %i.by, %_ZNK7obj_mapI4sort10ptr_vectorI4exprEE8containsEPS0_.exit.thread ] ; 7 uses
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %_ZNK7obj_mapI4sort10ptr_vectorI4exprEE8containsEPS0_.exit.thread ] ; 4 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !130  ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %.critedge, label %_ZNK6vectorIP7obj_mapI4sort10ptr_vectorI4exprEELb0EjE4sizeEv.exit

_ZNK6vectorIP7obj_mapI4sort10ptr_vectorI4exprEELb0EjE4sizeEv.exit: ; preds = %bb.b
  %i.f = getelementptr inbounds i8, ptr %i.d, i64 -4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !99
  %i.h = zext i32 %i.g to i64
  %i.i = icmp samesign ult i64 %indvars.iv, %i.h
  br i1 %i.i, label %bb.c, label %.critedge

bb.c:                                             ; preds = %_ZNK6vectorIP7obj_mapI4sort10ptr_vectorI4exprEELb0EjE4sizeEv.exit
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !214  ; 2 uses
  %i.l = load i32, ptr %i.b, align 4, !tbaa !174  ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.n = load i32, ptr %i.m, align 8, !tbaa !218  ; 3 uses
  %i.o = add i32 %i.n, -1
  %i.p = and i32 %i.o, %i.l                       ; 3 uses
  %i.q = load ptr, ptr %i.k, align 8, !tbaa !217  ; 4 uses
  %i.r = zext i32 %i.p to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.r, 4
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx.i.i.i ; 4 uses
  %i.t = zext i32 %i.n to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.t ; 2 uses
  %.not34.i.i.i = icmp eq i32 %i.p, %i.n          ; 2 uses
  br i1 %.not34.i.i.i, label %.preheader.i.i.i, label %.lr.ph.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.f, %bb.c
  %.not2736.i.i.i = icmp eq i32 %i.p, 0
  br i1 %.not2736.i.i.i, label %_ZNK7obj_mapI4sort10ptr_vectorI4exprEE8containsEPS0_.exit.thread, label %.lr.ph38.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %bb.f
  %.035.i.i.i = phi ptr [ %i.ab, %bb.f ], [ %i.s, %bb.c ] ; 2 uses
  %i.v = load ptr, ptr %.035.i.i.i, align 8, !tbaa !221 ; 4 uses
  %.not.i = icmp ult ptr %i.v, inttoptr (i64 2 to ptr)
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  %i.x = load i32, ptr %i.w, align 4, !tbaa !174
  %i.y = icmp eq i32 %i.x, %i.l
  %i.z = icmp eq ptr %i.v, %2
  %or.cond.i.i.i = and i1 %i.z, %i.y
  br i1 %or.cond.i.i.i, label %_ZNK7obj_mapI4sort10ptr_vectorI4exprEE8containsEPS0_.exit, label %bb.f

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.aa = icmp eq ptr %i.v, null
  br i1 %i.aa, label %_ZNK7obj_mapI4sort10ptr_vectorI4exprEE8containsEPS0_.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %.035.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ab, %i.u
  br i1 %.not.i.i.i, label %.preheader.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !10

.lr.ph38.i.i.i:                                   ; preds = %.preheader.i.i.i, %.lr.ph38.i.i.i.backedge
  %.137.i.i.i = phi ptr [ %.137.i.i.i.be, %.lr.ph38.i.i.i.backedge ], [ %i.q, %.preheader.i.i.i ] ; 3 uses
  %i.ac = load ptr, ptr %.137.i.i.i, align 8, !tbaa !221 ; 4 uses
  %i.ad = icmp ult ptr %i.ac, inttoptr (i64 2 to ptr)
  br i1 %i.ad, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph38.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !174
  %i.ag = icmp eq i32 %i.af, %i.l
  %i.ah = icmp eq ptr %i.ac, %2
  %or.cond31.i.i.i = and i1 %i.ah, %i.ag
  br i1 %or.cond31.i.i.i, label %_ZNK7obj_mapI4sort10ptr_vectorI4exprEE8containsEPS0_.exit, label %bb.i

bb.h:                                             ; preds = %.lr.ph38.i.i.i
  %i.ai = icmp eq ptr %i.ac, null
  %i.aj = getelementptr inbounds nuw i8, ptr %.137.i.i.i, i64 16 ; 2 uses
  %.not27.i.i.i = icmp eq ptr %i.aj, %i.s
  %or.cond43.i.i.i = select i1 %i.ai, i1 true, i1 %.not27.i.i.i
  br i1 %or.cond43.i.i.i, label %_ZNK7obj_mapI4sort10ptr_vectorI4exprEE8containsEPS0_.exit.thread, label %.lr.ph38.i.i.i.backedge

bb.i:                                             ; preds = %bb.g
  %.old.i.i.i = getelementptr inbounds nuw i8, ptr %.137.i.i.i, i64 16 ; 2 uses
  %.not27.old.i.i.i = icmp eq ptr %.old.i.i.i, %i.s
  br i1 %.not27.old.i.i.i, label %_ZNK7obj_mapI4sort10ptr_vectorI4exprEE8containsEPS0_.exit.thread, label %.lr.ph38.i.i.i.backedge

.lr.ph38.i.i.i.backedge:                          ; preds = %bb.i, %bb.h
  %.137.i.i.i.be = phi ptr [ %i.aj, %bb.h ], [ %.old.i.i.i, %bb.i ]
  br label %.lr.ph38.i.i.i, !llvm.loop !11

_ZNK7obj_mapI4sort10ptr_vectorI4exprEE8containsEPS0_.exit: ; preds = %bb.d, %bb.g
  br i1 %.not34.i.i.i, label %.lr.ph38.i.i.i28.preheader, label %.lr.ph.i.i.i22

.lr.ph.i.i.i22:                                   ; preds = %_ZNK7obj_mapI4sort10ptr_vectorI4exprEE8containsEPS0_.exit, %bb.l
  %.035.i.i.i23 = phi ptr [ %i.aq, %bb.l ], [ %i.s, %_ZNK7obj_mapI4sort10ptr_vectorI4exprEE8containsEPS0_.exit ] ; 3 uses
  %i.ak = load ptr, ptr %.035.i.i.i23, align 8, !tbaa !221 ; 4 uses
  %i.al = icmp ult ptr %i.ak, inttoptr (i64 2 to ptr)
  br i1 %i.al, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i22
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 12
  %i.an = load i32, ptr %i.am, align 4, !tbaa !174
  %i.ao = icmp eq i32 %i.an, %i.l
  %i.ap = icmp eq ptr %i.ak, %2
  %or.cond.i.i.i24 = and i1 %i.ap, %i.ao
  br i1 %or.cond.i.i.i24, label %.loopexit, label %bb.l

bb.k:                                             ; preds = %.lr.ph.i.i.i22
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ak) ]
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.aq = getelementptr inbounds nuw i8, ptr %.035.i.i.i23, i64 16 ; 2 uses
  %.not.i.i.i25 = icmp eq ptr %i.aq, %i.u
  br i1 %.not.i.i.i25, label %.lr.ph38.i.i.i28.preheader, label %.lr.ph.i.i.i22, !llvm.loop !10

.lr.ph38.i.i.i28.preheader:                       ; preds = %bb.l, %_ZNK7obj_mapI4sort10ptr_vectorI4exprEE8containsEPS0_.exit
  br label %.lr.ph38.i.i.i28

.lr.ph38.i.i.i28:                                 ; preds = %.lr.ph38.i.i.i28.preheader, %.lr.ph38.backedge.i.i.i31
  %.137.i.i.i29 = phi ptr [ %.pn.i, %.lr.ph38.backedge.i.i.i31 ], [ %i.q, %.lr.ph38.i.i.i28.preheader ] ; 3 uses
  %i.ar = load ptr, ptr %.137.i.i.i29, align 8, !tbaa !221 ; 4 uses
  %i.as = icmp ult ptr %i.ar, inttoptr (i64 2 to ptr)
  br i1 %i.as, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph38.i.i.i28
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  %i.au = load i32, ptr %i.at, align 4, !tbaa !174
  %i.av = icmp eq i32 %i.au, %i.l
  %i.aw = icmp eq ptr %i.ar, %2
  %or.cond31.i.i.i30 = and i1 %i.aw, %i.av
  br i1 %or.cond31.i.i.i30, label %.loopexit, label %.lr.ph38.backedge.i.i.i31

bb.n:                                             ; preds = %.lr.ph38.i.i.i28
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ar) ]
  br label %.lr.ph38.backedge.i.i.i31

.lr.ph38.backedge.i.i.i31:                        ; preds = %bb.m, %bb.n
  %.pn.i = getelementptr inbounds nuw i8, ptr %.137.i.i.i29, i64 16
  br label %.lr.ph38.i.i.i28, !llvm.loop !11

.loopexit:                                        ; preds = %bb.j, %bb.m
  %.026.i.i.i32 = phi ptr [ %.137.i.i.i29, %bb.m ], [ %.035.i.i.i23, %bb.j ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.026.i.i.i32, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !127 ; 4 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %_ZNK7obj_mapI4sort10ptr_vectorI4exprEE8containsEPS0_.exit.thread, label %_ZN6vectorIP4exprLb0EjE3endEv.exit

_ZN6vectorIP4exprLb0EjE3endEv.exit:               ; preds = %.loopexit
  %i.ba = getelementptr inbounds i8, ptr %i.ay, i64 -4
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !99 ; 2 uses
  %i.bc = zext i32 %i.bb to i64
  %i.bd = shl nuw nsw i64 %i.bc, 3
  %i.be = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.bd
  %.not1742 = icmp eq i32 %i.bb, 0
  br i1 %.not1742, label %_ZNK7obj_mapI4sort10ptr_vectorI4exprEE8containsEPS0_.exit.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN6vectorIP4exprLb0EjE3endEv.exit
  %i.bf = trunc nuw i64 %indvars.iv to i32
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.q
  %i.bg = phi ptr [ %i.bs, %bb.q ], [ %i.c, %.lr.ph.preheader ] ; 4 uses
  %.043 = phi ptr [ %i.bw, %bb.q ], [ %i.ay, %.lr.ph.preheader ] ; 2 uses
  %i.bh = load ptr, ptr %.043, align 8, !tbaa !128
  %i.bi = icmp eq ptr %i.bg, null
  br i1 %i.bi, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph
  %i.bj = getelementptr inbounds i8, ptr %i.bg, i64 -4
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !99 ; 2 uses
  %i.bl = getelementptr inbounds i8, ptr %i.bg, i64 -8
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !99
  %i.bn = icmp eq i32 %i.bk, %i.bm
  br i1 %i.bn, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o, %.lr.ph
  invoke void @_ZN6vectorISt4pairIP4exprjELb1EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %.noexc unwind label %bb.r

.noexc:                                           ; preds = %bb.p
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !173 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !99
  br label %bb.q

bb.q:                                             ; preds = %.noexc, %bb.o
  %i.bo = phi i32 [ %.pre2.i, %.noexc ], [ %i.bk, %bb.o ]
  %i.bp = phi ptr [ %.pre.i, %.noexc ], [ %i.bg, %bb.o ]
  %i.bq = zext i32 %i.bo to i64
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.bp, i64 %i.bq ; 2 uses
  store ptr %i.bh, ptr %i.br, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store i32 %i.bf, ptr %.sroa.5.0..sroa_idx, align 8
  %i.bs = load ptr, ptr %0, align 8, !tbaa !173   ; 3 uses
  %i.bt = getelementptr inbounds i8, ptr %i.bs, i64 -4 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !99
  %i.bv = add i32 %i.bu, 1
  store i32 %i.bv, ptr %i.bt, align 4, !tbaa !99
  %i.bw = getelementptr inbounds nuw i8, ptr %.043, i64 8 ; 2 uses
  %.not17 = icmp eq ptr %i.bw, %i.be
  br i1 %.not17, label %_ZNK7obj_mapI4sort10ptr_vectorI4exprEE8containsEPS0_.exit.thread, label %.lr.ph

bb.r:                                             ; preds = %bb.p
  %i.bx = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6vectorISt4pairIP4exprjELb1EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #22
  resume { ptr, i32 } %i.bx

_ZNK7obj_mapI4sort10ptr_vectorI4exprEE8containsEPS0_.exit.thread: ; preds = %bb.e, %bb.i, %bb.h, %bb.q, %.loopexit, %_ZN6vectorIP4exprLb0EjE3endEv.exit, %.preheader.i.i.i
  %i.by = phi ptr [ %i.c, %bb.i ], [ %i.c, %.loopexit ], [ %i.bs, %bb.q ], [ %i.c, %_ZN6vectorIP4exprLb0EjE3endEv.exit ], [ %i.c, %.preheader.i.i.i ], [ %i.c, %bb.h ], [ %i.c, %bb.e ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %indvars = trunc nuw i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %4, %indvars
  br i1 %exitcond.not, label %.critedge, label %bb.b, !llvm.loop !322

.critedge:                                        ; preds = %bb.b, %_ZNK6vectorIP7obj_mapI4sort10ptr_vectorI4exprEELb0EjE4sizeEv.exit, %_ZNK7obj_mapI4sort10ptr_vectorI4exprEE8containsEPS0_.exit.thread
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6vectorIS_ISt4pairIP4exprjELb1EjELb1EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %2 = alloca %"class.std::allocator", align 1    ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !170    ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 24) ; 3 uses
  store i32 2, ptr %i.c, align 4, !tbaa !99
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 0, ptr %i.d, align 4, !tbaa !99
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.e, ptr %0, align 8, !tbaa !170
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %i.a, i64 -8
  %i.g = load i32, ptr %i.f, align 4, !tbaa !99   ; 3 uses
  %i.h = mul i32 %i.g, 3
  %i.i = add i32 %i.h, 1
  %i.j = lshr i32 %i.i, 1                         ; 3 uses
  %i.k = shl i32 %i.j, 3
  %i.l = add i32 %i.k, 8                          ; 2 uses
  %.not = icmp ugt i32 %i.j, %i.g
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = shl i32 %i.g, 3
  %i.n = add i32 %i.m, 8
  %.not31 = icmp ugt i32 %i.l, %i.n
  br i1 %.not31, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.o = tail call ptr @__cxa_allocate_exception(i64 40) #22 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.1, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.o, align 8, !tbaa !144
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 3 uses
  store ptr %i.q, ptr %i.p, align 8, !tbaa !150
  %i.r = load ptr, ptr %1, align 8, !tbaa !153    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !154  ; 3 uses
  %i.w = icmp ult i64 %i.v, 16
  call void @llvm.assume(i1 %i.w)
  %i.x = add nuw nsw i64 %i.v, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.q, ptr noundef nonnull align 8 dereferenceable(1) %i.s, i64 %i.x, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  store ptr %i.r, ptr %i.p, align 8, !tbaa !153
  %i.y = load i64, ptr %i.s, align 8, !tbaa !155
  store i64 %i.y, ptr %i.q, align 8, !tbaa !155
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !154
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.z = phi i64 [ %i.v, %bb.g ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %i.z, ptr %i.ab, align 8, !tbaa !154
  store ptr %i.s, ptr %1, align 8, !tbaa !153
  store i64 0, ptr %i.aa, align 8, !tbaa !154
  store i8 0, ptr %i.s, align 8, !tbaa !155
  invoke void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #24
          to label %bb.o unwind label %bb.h

bb.h:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ac = landingpad { ptr, i32 }
          cleanup
  %i.ad = load ptr, ptr %1, align 8, !tbaa !153   ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.s
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %bb.h
  %i.af = load i64, ptr %i.s, align 8, !tbaa !155
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  call void @__cxa_free_exception(ptr %i.o) #22
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %bb.i
  %.pn36 = phi { ptr, i32 } [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.ah, %bb.i ]
  resume { ptr, i32 } %.pn36

bb.k:                                             ; preds = %bb.d
  %i.ai = zext i32 %i.l to i64
  %i.aj = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.ai) ; 5 uses
  %i.ak = load ptr, ptr %0, align 8, !tbaa !170   ; 9 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %_ZSt20uninitialized_move_nIP6vectorISt4pairIP4exprjELb1EjEjS6_ES1_IT_T1_ES7_T0_S8_.exit, label %_ZNK6vectorIS_ISt4pairIP4exprjELb1EjELb1EjE4sizeEv.exit

_ZNK6vectorIS_ISt4pairIP4exprjELb1EjELb1EjE4sizeEv.exit: ; preds = %bb.k
  %i.am = getelementptr inbounds i8, ptr %i.ak, i64 -4
  %i.an = load i32, ptr %i.am, align 4, !tbaa !99 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  store i32 %i.an, ptr %i.ao, align 4, !tbaa !99
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 4 uses
  %i.aq = zext i32 %i.an to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.aq, 3          ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.idx.i.i.i
  %i.as = icmp eq i32 %i.an, 0
  br i1 %i.as, label %_ZNK6vectorIS_ISt4pairIP4exprjELb1EjELb1EjE4sizeEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNK6vectorIS_ISt4pairIP4exprjELb1EjELb1EjE4sizeEv.exit
  %i.at = add nsw i64 %.idx.i.i.i, -8             ; 2 uses
  %i.au = lshr exact i64 %i.at, 3
  %i.av = add nuw nsw i64 %i.au, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.at, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader54, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.av, 4611686018427387900     ; 3 uses
  %i.aw = shl i64 %n.vec, 3                       ; 2 uses
  %i.ax = getelementptr i8, ptr %i.ap, i64 %i.aw
  %i.ay = getelementptr i8, ptr %i.ak, i64 %i.aw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.az = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ap, i64 %i.az ; 2 uses
  %next.gep51 = getelementptr i8, ptr %i.ak, i64 %i.az ; 3 uses
  %i.ba = getelementptr i8, ptr %next.gep51, i64 16 ; 2 uses
  %wide.load = load <2 x ptr>, ptr %next.gep51, align 8, !tbaa !173
  %wide.load52 = load <2 x ptr>, ptr %i.ba, align 8, !tbaa !173
  %i.bb = getelementptr i8, ptr %next.gep, i64 16
  store <2 x ptr> %wide.load, ptr %next.gep, align 8, !tbaa !173
  store <2 x ptr> %wide.load52, ptr %i.bb, align 8, !tbaa !173
  store <2 x ptr> splat (ptr null), ptr %next.gep51, align 8, !tbaa !173
  store <2 x ptr> splat (ptr null), ptr %i.ba, align 8, !tbaa !173
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bc = icmp eq i64 %index.next, %n.vec
  br i1 %i.bc, label %middle.block, label %vector.body, !llvm.loop !323

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.av, %n.vec
  br i1 %cmp.n, label %_ZNK6vectorIS_ISt4pairIP4exprjELb1EjELb1EjE4sizeEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i.preheader54

.lr.ph.i.i.i.i.i.i.preheader54:                   ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.08.i.i.i.i.i.i.ph = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ax, %middle.block ]
  %.sroa.04.07.i.i.i.i.i.i.ph = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ay, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader54, %.lr.ph.i.i.i.i.i.i
  %.08.i.i.i.i.i.i = phi ptr [ %i.bf, %.lr.ph.i.i.i.i.i.i ], [ %.08.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader54 ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i.i = phi ptr [ %i.be, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.04.07.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader54 ] ; 3 uses
  %i.bd = load ptr, ptr %.sroa.04.07.i.i.i.i.i.i, align 8, !tbaa !173
  store ptr %i.bd, ptr %.08.i.i.i.i.i.i, align 8, !tbaa !173
  store ptr null, ptr %.sroa.04.07.i.i.i.i.i.i, align 8, !tbaa !173
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 8
  %i.bg = icmp eq ptr %i.be, %i.ar
  br i1 %i.bg, label %_ZNK6vectorIS_ISt4pairIP4exprjELb1EjELb1EjE4sizeEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !324

_ZSt20uninitialized_move_nIP6vectorISt4pairIP4exprjELb1EjEjS6_ES1_IT_T1_ES7_T0_S8_.exit: ; preds = %bb.k
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  store i32 0, ptr %i.bh, align 4, !tbaa !99
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  br label %_ZN6vectorIS_ISt4pairIP4exprjELb1EjELb1EjE7destroyEv.exit

_ZNK6vectorIS_ISt4pairIP4exprjELb1EjELb1EjE4sizeEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %_ZNK6vectorIS_ISt4pairIP4exprjELb1EjELb1EjE4sizeEv.exit
  %i.bj = getelementptr inbounds i8, ptr %i.ak, i64 -4
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !99 ; 2 uses
  %.not6.i.i.i.i.i = icmp eq i32 %i.bk, 0
  br i1 %.not6.i.i.i.i.i, label %_ZN6vectorIS_ISt4pairIP4exprjELb1EjELb1EjE16destroy_elementsEv.exit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNK6vectorIS_ISt4pairIP4exprjELb1EjELb1EjE4sizeEv.exit.i.i, %_ZSt8_DestroyI6vectorISt4pairIP4exprjELb1EjEEvPT_.exit.i.i.i.i.i
  %.08.i.i.i.i.i = phi i32 [ %i.bq, %_ZSt8_DestroyI6vectorISt4pairIP4exprjELb1EjEEvPT_.exit.i.i.i.i.i ], [ %i.bk, %_ZNK6vectorIS_ISt4pairIP4exprjELb1EjELb1EjE4sizeEv.exit.i.i ]
  %.047.i.i.i.i.i = phi ptr [ %i.bp, %_ZSt8_DestroyI6vectorISt4pairIP4exprjELb1EjEEvPT_.exit.i.i.i.i.i ], [ %i.ak, %_ZNK6vectorIS_ISt4pairIP4exprjELb1EjELb1EjE4sizeEv.exit.i.i ] ; 2 uses
end_hunk_0
