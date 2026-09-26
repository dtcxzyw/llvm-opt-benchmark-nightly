Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/sat_prob?download=true
inline.NumInlined: 431
inline.NumDeleted: 239
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN3sat4prob16save_best_valuesEv:bb.a
  %i.bq = add nsw i64 %wide.trip.count, -1
  %i.br = icmp eq i64 %indvars.iv.ph, %i.bq
  br i1 %i.br, label %.critedge, label %_ZNK6vectorIbLb0EjE4sizeEv.exit17

.critedge:                                        ; preds = %_ZNK6vectorIbLb0EjE4sizeEv.exit17.prol.loopexit, %_ZNK6vectorIbLb0EjE4sizeEv.exit17, %middle.block, %bb.a, %_ZN6vectorIbLb0EjE7reserveEj.exit, %_ZNK6vectorIbLb0EjE4sizeEv.exit17.lr.ph, %_ZN6vectorI5lboolLb0EjE7reserveEj.exit
  ret void

_ZNK6vectorIbLb0EjE4sizeEv.exit17:                ; preds = %_ZNK6vectorIbLb0EjE4sizeEv.exit17.prol.loopexit, %_ZNK6vectorIbLb0EjE4sizeEv.exit17
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %_ZNK6vectorIbLb0EjE4sizeEv.exit17 ], [ %indvars.iv.unr, %_ZNK6vectorIbLb0EjE4sizeEv.exit17.prol.loopexit ] ; 5 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.pr47, i64 %indvars.iv
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !78, !range !79, !noundef !80 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.av, i64 %indvars.iv
  store i8 %i.bt, ptr %i.bu, align 1, !tbaa !78
  %i.bv = trunc nuw i8 %i.bt to i1
  %i.bw = select i1 %i.bv, i32 1, i32 -1
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv
  store i32 %i.bw, ptr %i.bx, align 4, !tbaa !111
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.pr47, i64 %indvars.iv.next
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !78, !range !79, !noundef !80 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.av, i64 %indvars.iv.next
  store i8 %i.bz, ptr %i.ca, align 1, !tbaa !78
  %i.cb = trunc nuw i8 %i.bz to i1
  %i.cc = select i1 %i.cb, i32 1, i32 -1
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv.next
  store i32 %i.cc, ptr %i.cd, align 4, !tbaa !111
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %.critedge, label %_ZNK6vectorIbLb0EjE4sizeEv.exit17, !llvm.loop !109
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN16indexed_uint_set12insert_freshEj(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = add i32 %1, 1                            ; 6 uses
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !25   ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i

_ZNK6vectorIjLb0EjE4sizeEv.exit.i:                ; preds = %bb.a
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %_ZN6vectorIjLb0EjE7reserveEjRKj.exit, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.preheader

_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i:         ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %i.c, i64 -4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !20   ; 2 uses
  %i.g = icmp ugt i32 %i.b, %i.f
  br i1 %i.g, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.preheader, label %_ZN6vectorIjLb0EjE7reserveEjRKj.exit

_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.preheader:    ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i, %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i
  %.ph20 = phi ptr [ %i.c, %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i ], [ null, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i ]
  %.0.i17.i.i.ph = phi i32 [ %i.f, %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i ], [ 0, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i ] ; 2 uses
  br label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i

_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i:              ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.preheader, %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i.i
  %i.h = phi ptr [ %.pr.pre.i.i, %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i.i ], [ %.ph20, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.preheader ] ; 4 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i.i, label %_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i

_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i:          ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i
  %i.j = getelementptr inbounds i8, ptr %i.h, i64 -8
  %i.k = load i32, ptr %i.j, align 4, !tbaa !20
  %i.l = icmp ugt i32 %i.b, %i.k
  br i1 %i.l, label %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i.i, label %bb.b

_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i.i:   ; preds = %_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i
  tail call void @_ZN6vectorIjLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.pr.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !25
  br label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i, !llvm.loop !112

bb.b:                                             ; preds = %_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i
  %i.m = getelementptr inbounds i8, ptr %i.h, i64 -4
  store i32 %i.b, ptr %i.m, align 4, !tbaa !20
  %.not1319.i.i = icmp eq i32 %.0.i17.i.i.ph, %i.b
  br i1 %.not1319.i.i, label %_ZN6vectorIjLb0EjE7reserveEjRKj.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.b
  %i.n = zext i32 %i.b to i64
  %i.o = zext i32 %.0.i17.i.i.ph to i64           ; 2 uses
  %i.p = getelementptr [4 x i8], ptr %i.h, i64 %i.o
  %i.q = sub nsw i64 %i.n, %i.o
  %i.r = shl nsw i64 %i.q, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.p, i8 -1, i64 %i.r, i1 false), !tbaa !20
  br label %_ZN6vectorIjLb0EjE7reserveEjRKj.exit

_ZN6vectorIjLb0EjE7reserveEjRKj.exit:             ; preds = %.lr.ph.preheader.i.i, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i, %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i, %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.t = load i32, ptr %0, align 8, !tbaa !85
  %i.u = add i32 %i.t, 1                          ; 6 uses
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !25   ; 4 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i11, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i3

_ZNK6vectorIjLb0EjE4sizeEv.exit.i11:              ; preds = %_ZN6vectorIjLb0EjE7reserveEjRKj.exit
  %.not.i12 = icmp ne i32 %i.u, 0
  tail call void @llvm.assume(i1 %.not.i12)
  br label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i6.preheader

_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i3:        ; preds = %_ZN6vectorIjLb0EjE7reserveEjRKj.exit
  %i.x = getelementptr inbounds i8, ptr %i.v, i64 -4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !20   ; 2 uses
  %i.z = icmp ugt i32 %i.u, %i.y
  br i1 %i.z, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i6.preheader, label %_ZN6vectorIjLb0EjE7reserveEj.exit

_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i6.preheader:   ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i11, %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i3
  %.ph = phi ptr [ %i.v, %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i3 ], [ null, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i11 ]
  %.0.i16.i.i.ph = phi i32 [ %i.y, %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i3 ], [ 0, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i11 ] ; 2 uses
  br label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i6

_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i6:             ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i6.preheader, %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i.i9
  %i.aa = phi ptr [ %.pr.pre.i.i10, %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i.i9 ], [ %.ph, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i6.preheader ] ; 6 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i.i9, label %_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i7

_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i7:         ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i6
  %i.ac = getelementptr inbounds i8, ptr %i.aa, i64 -8
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !20
  %i.ae = icmp ugt i32 %i.u, %i.ad
  br i1 %i.ae, label %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i.i9, label %bb.c

_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i.i9:  ; preds = %_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i7, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i6
  tail call void @_ZN6vectorIjLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.s)
  %.pr.pre.i.i10 = load ptr, ptr %i.s, align 8, !tbaa !25
  br label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i6, !llvm.loop !3

bb.c:                                             ; preds = %_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i7
  %i.af = getelementptr inbounds i8, ptr %i.aa, i64 -4
  store i32 %i.u, ptr %i.af, align 4, !tbaa !20
  %.not1218.i.i = icmp eq i32 %.0.i16.i.i.ph, %i.u
  br i1 %.not1218.i.i, label %_ZN6vectorIjLb0EjE7reserveEj.exit, label %.lr.ph.preheader.i.i8

.lr.ph.preheader.i.i8:                            ; preds = %bb.c
  %i.ag = zext i32 %i.u to i64
  %i.ah = zext i32 %.0.i16.i.i.ph to i64          ; 2 uses
  %i.ai = getelementptr [4 x i8], ptr %i.aa, i64 %i.ah
  %i.aj = sub nsw i64 %i.ag, %i.ah
  %i.ak = shl nsw i64 %i.aj, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ai, i8 0, i64 %i.ak, i1 false), !tbaa !20
  br label %_ZN6vectorIjLb0EjE7reserveEj.exit

_ZN6vectorIjLb0EjE7reserveEj.exit:                ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i3, %bb.c, %.lr.ph.preheader.i.i8
  %i.al = phi ptr [ %i.aa, %.lr.ph.preheader.i.i8 ], [ %i.v, %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i3 ], [ %i.aa, %bb.c ]
  %i.am = load i32, ptr %0, align 8, !tbaa !85    ; 2 uses
  %i.an = load ptr, ptr %i.a, align 8, !tbaa !25
  %i.ao = zext i32 %1 to i64
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.ao
  store i32 %i.am, ptr %i.ap, align 4, !tbaa !20
  %i.aq = zext i32 %i.am to i64
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.aq
  store i32 %1, ptr %i.ar, align 4, !tbaa !20
  %i.as = load i32, ptr %0, align 8, !tbaa !85
  %i.at = add i32 %i.as, 1
  store i32 %i.at, ptr %0, align 8, !tbaa !85
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3sat4prob3addEjPKNS_7literalE(ptr noundef nonnull align 8 dereferenceable(816) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %4 = alloca %"class.std::allocator", align 1    ; 4 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %6 = alloca %"class.std::allocator", align 1    ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = tail call noundef ptr @_ZN3sat16clause_allocator9mk_clauseEjPKNS_7literalEb(ptr noundef nonnull align 8 dereferenceable(568) %i.a, i32 noundef %1, ptr noundef %2, i1 noundef zeroext false) ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19   ; 4 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZNK6vectorIPN3sat6clauseELb0EjE4sizeEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %i.d, i64 -4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !20   ; 4 uses
  %i.h = getelementptr inbounds i8, ptr %i.d, i64 -8
  %i.i = load i32, ptr %i.h, align 4, !tbaa !20
  %i.j = icmp eq i32 %i.g, %i.i
  br i1 %i.j, label %_ZNK6vectorIPN3sat6clauseELb0EjE4sizeEv.exit.thread, label %_ZN6vectorIPN3sat6clauseELb0EjE9push_backERKS2_.exit

_ZNK6vectorIPN3sat6clauseELb0EjE4sizeEv.exit.thread: ; preds = %bb.a, %bb.b
  %.0.i59 = phi i32 [ %i.g, %bb.b ], [ 0, %bb.a ]
  tail call void @_ZN6vectorIPN3sat6clauseELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %.pre.i = load ptr, ptr %i.c, align 8, !tbaa !19 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !20
  br label %_ZN6vectorIPN3sat6clauseELb0EjE9push_backERKS2_.exit

_ZN6vectorIPN3sat6clauseELb0EjE9push_backERKS2_.exit: ; preds = %bb.b, %_ZNK6vectorIPN3sat6clauseELb0EjE4sizeEv.exit.thread
  %.0.i58 = phi i32 [ %.0.i59, %_ZNK6vectorIPN3sat6clauseELb0EjE4sizeEv.exit.thread ], [ %i.g, %bb.b ]
  %i.k = phi i32 [ %.pre2.i, %_ZNK6vectorIPN3sat6clauseELb0EjE4sizeEv.exit.thread ], [ %i.g, %bb.b ] ; 2 uses
  %i.l = phi ptr [ %.pre.i, %_ZNK6vectorIPN3sat6clauseELb0EjE4sizeEv.exit.thread ], [ %i.d, %bb.b ] ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 -4
  %i.n = zext i32 %i.k to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.n
  store ptr %i.b, ptr %i.o, align 8, !tbaa !44
  %i.p = add i32 %i.k, 1
  store i32 %i.p, ptr %i.m, align 4, !tbaa !20
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !38   ; 4 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN6vectorIPN3sat6clauseELb0EjE9push_backERKS2_.exit
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 -4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !20   ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %i.r, i64 -8
  %i.w = load i32, ptr %i.v, align 4, !tbaa !20
  %i.x = icmp eq i32 %i.u, %i.w
  br i1 %i.x, label %bb.d, label %_ZN6vectorIN3sat4prob11clause_infoELb0EjE9push_backEOS2_.exit

bb.d:                                             ; preds = %bb.c, %_ZN6vectorIPN3sat6clauseELb0EjE9push_backERKS2_.exit
  tail call void @_ZN6vectorIN3sat4prob11clause_infoELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.q)
  %.pre.i9 = load ptr, ptr %i.q, align 8, !tbaa !38 ; 2 uses
  %.phi.trans.insert.i10 = getelementptr inbounds i8, ptr %.pre.i9, i64 -4
  %.pre2.i11 = load i32, ptr %.phi.trans.insert.i10, align 4, !tbaa !20
  br label %_ZN6vectorIN3sat4prob11clause_infoELb0EjE9push_backEOS2_.exit

_ZN6vectorIN3sat4prob11clause_infoELb0EjE9push_backEOS2_.exit: ; preds = %bb.c, %bb.d
  %i.y = phi i32 [ %.pre2.i11, %bb.d ], [ %i.u, %bb.c ] ; 2 uses
  %i.z = phi ptr [ %.pre.i9, %bb.d ], [ %i.r, %bb.c ] ; 2 uses
  %7 = getelementptr inbounds i8, ptr %i.z, i64 -4
  %i.aa = zext i32 %i.y to i64
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.aa
  store i64 0, ptr %i.ab, align 4, !tbaa !20
  %i.ac = add i32 %i.y, 1
  store i32 %i.ac, ptr %7, align 4, !tbaa !20
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 20 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !88 ; 2 uses
  %i.ag = zext i32 %i.af to i64
  %.idx = shl nuw nsw i64 %i.ag, 2
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.idx
  %.not64 = icmp eq i32 %i.af, 0
  br i1 %.not64, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN6vectorIN3sat4prob11clause_infoELb0EjE9push_backEOS2_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 656 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 752 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 3 uses
  br label %bb.f

._crit_edge:                                      ; preds = %_ZN6vectorIjLb0EjE9push_backERKj.exit, %_ZN6vectorIN3sat4prob11clause_infoELb0EjE9push_backEOS2_.exit
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 3 uses
  %i.am = add i32 %1, 1                           ; 6 uses
  %i.an = load ptr, ptr %i.al, align 8, !tbaa !28 ; 3 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %_ZNK6vectorIdLb0EjE4sizeEv.exit.i, label %_ZNK6vectorIdLb0EjE4sizeEv.exit.thread.i

_ZNK6vectorIdLb0EjE4sizeEv.exit.i:                ; preds = %._crit_edge
  %.not.i = icmp eq i32 %i.am, 0
  br i1 %.not.i, label %_ZN6vectorIdLb0EjE7reserveEj.exit, label %_ZNK6vectorIdLb0EjE4sizeEv.exit.i.i.preheader

_ZNK6vectorIdLb0EjE4sizeEv.exit.thread.i:         ; preds = %._crit_edge
  %i.ap = getelementptr inbounds i8, ptr %i.an, i64 -4
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !20 ; 2 uses
  %i.ar = icmp ugt i32 %i.am, %i.aq
  br i1 %i.ar, label %_ZNK6vectorIdLb0EjE4sizeEv.exit.i.i.preheader, label %_ZN6vectorIdLb0EjE7reserveEj.exit

_ZNK6vectorIdLb0EjE4sizeEv.exit.i.i.preheader:    ; preds = %_ZNK6vectorIdLb0EjE4sizeEv.exit.i, %_ZNK6vectorIdLb0EjE4sizeEv.exit.thread.i
  %.ph = phi ptr [ %i.an, %_ZNK6vectorIdLb0EjE4sizeEv.exit.thread.i ], [ null, %_ZNK6vectorIdLb0EjE4sizeEv.exit.i ]
  %.0.i16.i.i.ph = phi i32 [ %i.aq, %_ZNK6vectorIdLb0EjE4sizeEv.exit.thread.i ], [ 0, %_ZNK6vectorIdLb0EjE4sizeEv.exit.i ] ; 2 uses
  br label %_ZNK6vectorIdLb0EjE4sizeEv.exit.i.i

_ZNK6vectorIdLb0EjE4sizeEv.exit.i.i:              ; preds = %_ZNK6vectorIdLb0EjE4sizeEv.exit.i.i.preheader, %_ZNK6vectorIdLb0EjE8capacityEv.exit.thread.i.i
  %i.as = phi ptr [ %.pr.pre.i.i, %_ZNK6vectorIdLb0EjE8capacityEv.exit.thread.i.i ], [ %.ph, %_ZNK6vectorIdLb0EjE4sizeEv.exit.i.i.preheader ] ; 4 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %_ZNK6vectorIdLb0EjE8capacityEv.exit.thread.i.i, label %_ZNK6vectorIdLb0EjE8capacityEv.exit.i.i

_ZNK6vectorIdLb0EjE8capacityEv.exit.i.i:          ; preds = %_ZNK6vectorIdLb0EjE4sizeEv.exit.i.i
  %i.au = getelementptr inbounds i8, ptr %i.as, i64 -8
  %i.av = load i32, ptr %i.au, align 4, !tbaa !20
  %i.aw = icmp ugt i32 %i.am, %i.av
  br i1 %i.aw, label %_ZNK6vectorIdLb0EjE8capacityEv.exit.thread.i.i, label %bb.e

_ZNK6vectorIdLb0EjE8capacityEv.exit.thread.i.i:   ; preds = %_ZNK6vectorIdLb0EjE8capacityEv.exit.i.i, %_ZNK6vectorIdLb0EjE4sizeEv.exit.i.i
  tail call void @_ZN6vectorIdLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.al)
  %.pr.pre.i.i = load ptr, ptr %i.al, align 8, !tbaa !28
  br label %_ZNK6vectorIdLb0EjE4sizeEv.exit.i.i, !llvm.loop !4

bb.e:                                             ; preds = %_ZNK6vectorIdLb0EjE8capacityEv.exit.i.i
  %i.ax = getelementptr inbounds i8, ptr %i.as, i64 -4
  store i32 %i.am, ptr %i.ax, align 4, !tbaa !20
  %.not1218.i.i = icmp eq i32 %.0.i16.i.i.ph, %i.am
  br i1 %.not1218.i.i, label %_ZN6vectorIdLb0EjE7reserveEj.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.e
  %i.ay = zext i32 %i.am to i64
  %i.az = zext i32 %.0.i16.i.i.ph to i64          ; 2 uses
  %i.ba = getelementptr [8 x i8], ptr %i.as, i64 %i.az
  %i.bb = sub nsw i64 %i.ay, %i.az
  %i.bc = shl nsw i64 %i.bb, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ba, i8 0, i64 %i.bc, i1 false), !tbaa !89
  br label %_ZN6vectorIdLb0EjE7reserveEj.exit

_ZN6vectorIdLb0EjE7reserveEj.exit:                ; preds = %_ZNK6vectorIdLb0EjE4sizeEv.exit.i, %_ZNK6vectorIdLb0EjE4sizeEv.exit.thread.i, %bb.e, %.lr.ph.preheader.i.i
  ret void

bb.f:                                             ; preds = %.lr.ph, %_ZN6vectorIjLb0EjE9push_backERKj.exit
  %.065 = phi ptr [ %i.ad, %.lr.ph ], [ %i.ge, %_ZN6vectorIjLb0EjE9push_backERKj.exit ] ; 2 uses
  %i.bd = load i32, ptr %.065, align 4, !tbaa !20 ; 3 uses
  %i.be = lshr i32 %i.bd, 1                       ; 5 uses
  %i.bf = add nuw i32 %i.be, 1                    ; 6 uses
  %i.bg = load ptr, ptr %i.ai, align 8, !tbaa !35 ; 3 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %_ZNK6vectorIbLb0EjE4sizeEv.exit.i.i.preheader, label %_ZNK6vectorIbLb0EjE4sizeEv.exit.thread.i

_ZNK6vectorIbLb0EjE4sizeEv.exit.thread.i:         ; preds = %bb.f
  %i.bi = getelementptr inbounds i8, ptr %i.bg, i64 -4
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !20 ; 2 uses
  %.not60 = icmp ult i32 %i.be, %i.bj
  br i1 %.not60, label %_ZN6vectorIbLb0EjE7reserveEj.exit, label %_ZNK6vectorIbLb0EjE4sizeEv.exit.i.i.preheader

_ZNK6vectorIbLb0EjE4sizeEv.exit.i.i.preheader:    ; preds = %bb.f, %_ZNK6vectorIbLb0EjE4sizeEv.exit.thread.i
  %.ph107 = phi ptr [ %i.bg, %_ZNK6vectorIbLb0EjE4sizeEv.exit.thread.i ], [ null, %bb.f ]
  %.0.i16.i.i15.ph = phi i32 [ %i.bj, %_ZNK6vectorIbLb0EjE4sizeEv.exit.thread.i ], [ 0, %bb.f ] ; 2 uses
  br label %_ZNK6vectorIbLb0EjE4sizeEv.exit.i.i

_ZNK6vectorIbLb0EjE4sizeEv.exit.i.i:              ; preds = %_ZNK6vectorIbLb0EjE4sizeEv.exit.i.i.backedge, %_ZNK6vectorIbLb0EjE4sizeEv.exit.i.i.preheader
  %i.bk = phi ptr [ %.ph107, %_ZNK6vectorIbLb0EjE4sizeEv.exit.i.i.preheader ], [ %.be108, %_ZNK6vectorIbLb0EjE4sizeEv.exit.i.i.backedge ] ; 5 uses
  %i.bl = icmp eq ptr %i.bk, null
  br i1 %i.bl, label %bb.g, label %_ZNK6vectorIbLb0EjE8capacityEv.exit.i.i

_ZNK6vectorIbLb0EjE8capacityEv.exit.i.i:          ; preds = %_ZNK6vectorIbLb0EjE4sizeEv.exit.i.i
  %i.bm = getelementptr inbounds i8, ptr %i.bk, i64 -8
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !20
  %.not61 = icmp ult i32 %i.be, %i.bn
  br i1 %.not61, label %bb.o, label %_ZNK6vectorIbLb0EjE8capacityEv.exit.thread.i.i

bb.g:                                             ; preds = %_ZNK6vectorIbLb0EjE4sizeEv.exit.i.i
  %i.bo = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 10) ; 3 uses
  store i32 2, ptr %i.bo, align 4, !tbaa !20
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  store i32 0, ptr %i.bp, align 4, !tbaa !20
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 2 uses
  store ptr %i.bq, ptr %i.ai, align 8, !tbaa !35
  br label %_ZNK6vectorIbLb0EjE4sizeEv.exit.i.i.backedge

_ZNK6vectorIbLb0EjE8capacityEv.exit.thread.i.i:   ; preds = %_ZNK6vectorIbLb0EjE8capacityEv.exit.i.i
  %i.br = getelementptr inbounds i8, ptr %i.bk, i64 -8 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !20 ; 3 uses
  %i.bt = mul i32 %i.bs, 3
  %i.bu = add i32 %i.bt, 1
  %i.bv = lshr i32 %i.bu, 1                       ; 3 uses
  %narrow.i = add nuw i32 %i.bv, 8                ; 2 uses
  %.not.i39 = icmp ugt i32 %i.bv, %i.bs
  %i.bw = add i32 %i.bs, 8
  %.not27.i = icmp ugt i32 %narrow.i, %i.bw
  %or.cond.i = select i1 %.not.i39, i1 %.not27.i, i1 false
  br i1 %or.cond.i, label %bb.m, label %bb.h

bb.h:                                             ; preds = %_ZNK6vectorIbLb0EjE8capacityEv.exit.thread.i.i
  %i.bx = tail call ptr @__cxa_allocate_exception(i64 40) #21 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.9, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.i unwind label %bb.l

bb.i:                                             ; preds = %bb.h
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.bx, align 8, !tbaa !14
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 24 ; 3 uses
  store ptr %i.bz, ptr %i.by, align 8, !tbaa !98
  %i.ca = load ptr, ptr %5, align 8, !tbaa !100   ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  %i.cc = icmp eq ptr %i.ca, %i.cb
  br i1 %i.cc, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.cd = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !101 ; 3 uses
  %i.cf = icmp ult i64 %i.ce, 16
  call void @llvm.assume(i1 %i.cf)
  %i.cg = add nuw nsw i64 %i.ce, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bz, ptr noundef nonnull align 8 dereferenceable(1) %i.cb, i64 %i.cg, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.i
  store ptr %i.ca, ptr %i.by, align 8, !tbaa !100
  %i.ch = load i64, ptr %i.cb, align 8, !tbaa !102
  store i64 %i.ch, ptr %i.bz, align 8, !tbaa !102
  %.phi.trans.insert.i40 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.pre.i41 = load i64, ptr %.phi.trans.insert.i40, align 8, !tbaa !101
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.j
  %i.ci = phi i64 [ %i.ce, %bb.j ], [ %.pre.i41, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.cj = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  store i64 %i.ci, ptr %i.ck, align 8, !tbaa !101
  store ptr %i.cb, ptr %5, align 8, !tbaa !100
  store i64 0, ptr %i.cj, align 8, !tbaa !101
  store i8 0, ptr %i.cb, align 8, !tbaa !102
  invoke void @__cxa_throw(ptr nonnull %i.bx, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #23
          to label %bb.n unwind label %bb.k

bb.k:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %i.cl = landingpad { ptr, i32 }
          cleanup
  %i.cm = load ptr, ptr %5, align 8, !tbaa !100   ; 2 uses
  %i.cn = icmp eq ptr %i.cm, %i.cb
  br i1 %i.cn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i: ; preds = %bb.k
  %i.co = load i64, ptr %i.cb, align 8, !tbaa !102
  %i.cp = add i64 %i.co, 1
  call void @_ZdlPvm(ptr noundef %i.cm, i64 noundef %i.cp) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %common.resume

bb.l:                                             ; preds = %bb.h
  %i.cq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @__cxa_free_exception(ptr %i.bx) #21
  br label %common.resume

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i49, %bb.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, %bb.l
  %common.resume.op = phi { ptr, i32 } [ %i.cq, %bb.l ], [ %i.cl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.eh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i49 ], [ %i.em, %bb.v ]
  resume { ptr, i32 } %common.resume.op

bb.m:                                             ; preds = %_ZNK6vectorIbLb0EjE8capacityEv.exit.thread.i.i
end_hunk_0
