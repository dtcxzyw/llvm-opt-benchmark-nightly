Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/EvalEmitter?download=true
inline.NumInlined: 33840
inline.NumDeleted: 3422
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN5clang6interp11EvalEmitter25emitArrayElemPtrPopUint32ENS0_10SourceInfoE:bb.a
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN5clang6interp11EvalEmitter25emitArrayElemPtrPopSint64ENS0_10SourceInfoE(ptr noundef nonnull align 8 dereferenceable(1140) %0, i64 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1132
  %i.b = load i32, ptr %i.a, align 4, !tbaa !110
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %i.d = load i32, ptr %i.c, align 8, !tbaa !111
  %i.e = icmp eq i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1120
  store i64 %1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.h = tail call noundef zeroext i1 @_ZN5clang6interp15ArrayElemPtrPopILNS0_8PrimTypeE6ENS0_8IntegralILj64ELb1EEEEEbRNS0_11InterpStateENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(456) %i.g, ptr null)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.h, %bb.b ], [ true, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN5clang6interp11EvalEmitter25emitArrayElemPtrPopUint64ENS0_10SourceInfoE(ptr noundef nonnull align 8 dereferenceable(1140) %0, i64 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1132
  %i.b = load i32, ptr %i.a, align 4, !tbaa !110
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %i.d = load i32, ptr %i.c, align 8, !tbaa !111
  %i.e = icmp eq i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1120
  store i64 %1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.h = tail call noundef zeroext i1 @_ZN5clang6interp15ArrayElemPtrPopILNS0_8PrimTypeE7ENS0_8IntegralILj64ELb0EEEEEbRNS0_11InterpStateENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(456) %i.g, ptr null)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.h, %bb.b ], [ true, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN5clang6interp11EvalEmitter24emitArrayElemPtrPopIntAPENS0_10SourceInfoE(ptr noundef nonnull align 8 dereferenceable(1140) %0, i64 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1132
  %i.b = load i32, ptr %i.a, align 4, !tbaa !110
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %i.d = load i32, ptr %i.c, align 8, !tbaa !111
  %i.e = icmp eq i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1120
  store i64 %1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.h = tail call noundef zeroext i1 @_ZN5clang6interp15ArrayElemPtrPopILNS0_8PrimTypeE8ENS0_10IntegralAPILb0EEEEEbRNS0_11InterpStateENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(456) %i.g, ptr null)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.h, %bb.b ], [ true, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN5clang6interp11EvalEmitter25emitArrayElemPtrPopIntAPSENS0_10SourceInfoE(ptr noundef nonnull align 8 dereferenceable(1140) %0, i64 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1132
  %i.b = load i32, ptr %i.a, align 4, !tbaa !110
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %i.d = load i32, ptr %i.c, align 8, !tbaa !111
  %i.e = icmp eq i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1120
  store i64 %1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.h = tail call noundef zeroext i1 @_ZN5clang6interp15ArrayElemPtrPopILNS0_8PrimTypeE9ENS0_10IntegralAPILb1EEEEEbRNS0_11InterpStateENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(456) %i.g, ptr null)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.h, %bb.b ], [ true, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN5clang6interp11EvalEmitter23emitArrayElemPtrPopBoolENS0_10SourceInfoE(ptr noundef nonnull align 8 dereferenceable(1140) %0, i64 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1132
  %i.b = load i32, ptr %i.a, align 4, !tbaa !110
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %i.d = load i32, ptr %i.c, align 8, !tbaa !111
  %i.e = icmp eq i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1120
  store i64 %1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.h = tail call noundef zeroext i1 @_ZN5clang6interp15ArrayElemPtrPopILNS0_8PrimTypeE10ENS0_7BooleanEEEbRNS0_11InterpStateENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(456) %i.g, ptr null)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.h, %bb.b ], [ true, %bb.a ]
  ret i1 %.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5clang6interp15ArrayElemPtrPopILNS0_8PrimTypeE0ENS0_4CharILb1EEEEEbRNS0_11InterpStateENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1) local_unnamed_addr #9 comdat {
bb.a:
  %2 = alloca %"class.clang::interp::Char", align 1 ; 4 uses
  %3 = alloca %"class.clang::interp::Pointer", align 8 ; 16 uses
  %4 = alloca %"class.clang::interp::Pointer", align 8 ; 5 uses
  %5 = alloca %"class.clang::interp::Pointer", align 8 ; 5 uses
  %6 = alloca %"class.clang::interp::Pointer", align 8 ; 5 uses
  %7 = alloca %"class.std::optional.599", align 8 ; 6 uses
  %8 = alloca %"class.clang::interp::Pointer", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !354, !nonnull !124, !align !142 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !334
  %i.e = add i64 %i.d, -1
  store i64 %i.e, ptr %i.c, align 8, !tbaa !334
  %i.f = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 8) #24
  %.sroa.0.0.copyload.i = load i8, ptr %i.f, align 1, !tbaa !135 ; 3 uses
  tail call void @_ZN5clang6interp11InterpStack6shrinkEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 8) #24
  store i8 %.sroa.0.0.copyload.i, ptr %2, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !354, !nonnull !124, !align !142 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !334, !noalias !1716
  %i.j = add i64 %i.i, -1
  store i64 %i.j, ptr %i.h, align 8, !tbaa !334, !noalias !1716
  %i.k = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 noundef 48) #24, !noalias !1716
  call void @_ZN5clang6interp7PointerC1EOS1_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(48) %i.k) #24
  call void @_ZN5clang6interp11InterpStack6shrinkEm(ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 noundef 48) #24
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !362  ; 2 uses
  switch i32 %i.m, label %bb.b [
    i32 0, label %.split
    i32 1, label %_ZNK5clang6interp7Pointer6isZeroEv.exit
    i32 2, label %.split30
    i32 3, label %_ZNK5clang6interp7Pointer6isZeroEv.exit.thread
  ]

.split:                                           ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.o = load i64, ptr %i.n, align 8, !tbaa !135
  %i.p = icmp eq i64 %i.o, 0
  %i.q = load i64, ptr %3, align 8
  %i.r = icmp eq i64 %i.q, 0
  %i.s = select i1 %i.p, i1 %i.r, i1 false
  br i1 %i.s, label %bb.d, label %_ZNK5clang6interp7Pointer6isZeroEv.exit.thread

.split30:                                         ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !135
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %bb.d, label %_ZNK5clang6interp7Pointer6isZeroEv.exit.thread

bb.b:                                             ; preds = %bb.a
  unreachable

_ZNK5clang6interp7Pointer6isZeroEv.exit:          ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !135
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.d, label %_ZNK5clang6interp7Pointer6isZeroEv.exit.thread

_ZNK5clang6interp7Pointer6isZeroEv.exit.thread:   ; preds = %bb.a, %.split30, %.split, %_ZNK5clang6interp7Pointer6isZeroEv.exit
  %i.y = icmp eq i8 %.sroa.0.0.copyload.i, 0
  br i1 %i.y, label %.thread, label %bb.c

bb.c:                                             ; preds = %_ZNK5clang6interp7Pointer6isZeroEv.exit.thread
  %i.z = call noundef zeroext i1 @_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(48) %3) #24
  br i1 %i.z, label %.thread46, label %bb.q

bb.d:                                             ; preds = %.split30, %.split, %_ZNK5clang6interp7Pointer6isZeroEv.exit
  %i.aa = icmp eq i8 %.sroa.0.0.copyload.i, 0
  br i1 %i.aa, label %..thread_crit_edge, label %.thread46

..thread_crit_edge:                               ; preds = %bb.d
  %.pre38 = load i32, ptr %i.l, align 8, !tbaa !362
  br label %.thread

.thread:                                          ; preds = %..thread_crit_edge, %_ZNK5clang6interp7Pointer6isZeroEv.exit.thread
  %i.ab = phi i32 [ %.pre38, %..thread_crit_edge ], [ %i.m, %_ZNK5clang6interp7Pointer6isZeroEv.exit.thread ] ; 3 uses
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread, label %bb.e

bb.e:                                             ; preds = %.thread
  %i.ad = icmp ne i32 %i.ab, 1
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.af = load ptr, ptr %i.ae, align 8            ; 9 uses
  %i.ag = icmp eq ptr %i.af, null                 ; 2 uses
  %or.cond.i.i = select i1 %i.ad, i1 true, i1 %i.ag
  br i1 %or.cond.i.i, label %bb.f, label %_ZNK5clang6interp7Pointer6isRootEv.exit.i

_ZNK5clang6interp7Pointer6isRootEv.exit.i:        ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !135, !noalias !1719 ; 2 uses
  %i.aj = load ptr, ptr %i.af, align 8, !tbaa !125 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !131
  %i.am = icmp eq i32 %i.ai, %i.al
  br i1 %i.am, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread33, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.an = icmp eq i32 %i.ab, 1
  br i1 %i.an, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread

bb.g:                                             ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i
  %i.ao = zext i32 %i.ai to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  br label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit

_ZNK5clang6interp7Pointer12getFieldDescEv.exit:   ; preds = %bb.f, %bb.g
  %.0.i26.in = phi ptr [ %i.aq, %bb.g ], [ %i.af, %bb.f ]
  %.0.i26 = load ptr, ptr %.0.i26.in, align 8, !tbaa !1418 ; 2 uses
  %.not = icmp eq ptr %.0.i26, null
  br i1 %.not, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread33

_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread33: ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit
  %.0.i2636 = phi ptr [ %.0.i26, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit ], [ %i.aj, %_ZNK5clang6interp7Pointer6isRootEv.exit.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.i2636, i64 53
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !170, !range !123, !noundef !124
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %bb.h, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread

bb.h:                                             ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread33
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.av = load i32, ptr %i.au, align 8, !tbaa !135, !noalias !1722 ; 7 uses
  %i.aw = load i64, ptr %3, align 8, !tbaa !163, !noalias !1722 ; 2 uses
  %9 = xor i1 %i.ag, true
  call void @llvm.assume(i1 %9)
  %i.ax = icmp ugt i32 %i.av, 16
  %i.ay = zext i32 %i.av to i64                   ; 4 uses
  %i.az = icmp eq i64 %i.aw, %i.ay                ; 2 uses
  %or.cond.i.i28 = select i1 %i.ax, i1 %i.az, i1 false
  %.pre40 = load ptr, ptr %i.af, align 8, !tbaa !125 ; 5 uses
  br i1 %or.cond.i.i28, label %_ZNK5clang6interp7Pointer8getIndexEv.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ba = getelementptr inbounds nuw i8, ptr %.pre40, i64 24
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !131
  %i.bc = icmp eq i32 %i.av, %i.bb                ; 2 uses
  br i1 %i.bc, label %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ay
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !167
  br label %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.i

_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.i:    ; preds = %bb.j, %bb.i
  %.0.i.i.i.i = phi ptr [ %i.bf, %bb.j ], [ %.pre40, %bb.i ]
  %i.bg = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 16
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !1434 ; 2 uses
  %.not.not.i.i = icmp eq i32 %i.bh, 0
  br i1 %.not.not.i.i, label %_ZNK5clang6interp7Pointer8getIndexEv.exit.thread, label %bb.k

bb.k:                                             ; preds = %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.i
  br i1 %i.az, label %_ZNK5clang6interp7Pointer8getIndexEv.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  br i1 %i.bc, label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bi = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ay
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !167
  br label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i

_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i8.i.i = phi ptr [ %i.bk, %bb.m ], [ %.pre40, %bb.l ]
  %i.bl = getelementptr inbounds nuw i8, ptr %.0.i.i8.i.i, i64 40
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !1080
  %.not1.i.i.i = icmp eq ptr %i.bm, null
  %..i.i.i = select i1 %.not1.i.i.i, i64 -8, i64 -16
  br label %_ZNK5clang6interp7Pointer8getIndexEv.exit

_ZNK5clang6interp7Pointer8getIndexEv.exit:        ; preds = %bb.k, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i
  %.0.neg.i.i.i = phi i64 [ %..i.i.i, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i ], [ 0, %bb.k ]
  %i.bn = sub i64 %i.aw, %i.ay
  %i.bo = add i64 %i.bn, %.0.neg.i.i.i
  %i.bp = trunc i64 %i.bo to i32
  %i.bq = icmp ugt i32 %i.bh, %i.bp
  br i1 %i.bq, label %_ZNK5clang6interp7Pointer8getIndexEv.exit.thread, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread

_ZNK5clang6interp7Pointer8getIndexEv.exit.thread: ; preds = %bb.h, %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.i, %_ZNK5clang6interp7Pointer8getIndexEv.exit
  %i.br = load ptr, ptr %i.a, align 8, !tbaa !354, !nonnull !124, !align !142
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.bs = getelementptr inbounds nuw i8, ptr %.pre40, i64 24
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !131, !noalias !1725
  %i.bu = icmp eq i32 %i.av, %i.bt
  br i1 %i.bu, label %_ZNK5clang6interp7Pointer7atIndexEm.exit, label %bb.n

bb.n:                                             ; preds = %_ZNK5clang6interp7Pointer8getIndexEv.exit.thread
  %i.bv = zext i32 %i.av to i64
  %i.bw = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !167, !noalias !1725
  br label %_ZNK5clang6interp7Pointer7atIndexEm.exit

_ZNK5clang6interp7Pointer7atIndexEm.exit:         ; preds = %_ZNK5clang6interp7Pointer8getIndexEv.exit.thread, %bb.n
  %.pn5.i.i = phi ptr [ %i.by, %bb.n ], [ %.pre40, %_ZNK5clang6interp7Pointer8getIndexEv.exit.thread ]
  %i.bz = getelementptr inbounds nuw i8, ptr %.pn5.i.i, i64 40
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !1080, !noalias !1725
  %.not.i.i = icmp eq ptr %i.ca, null
  %.0.v.i.i = select i1 %.not.i.i, i32 8, i32 16
  %i.cb = add i32 %.0.v.i.i, %i.av
  %i.cc = zext i32 %i.cb to i64
  call void @_ZN5clang6interp7PointerC2EPNS0_5BlockEjm(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull %i.af, i32 noundef %i.av, i64 noundef %i.cc) #24
  call void @_ZNK5clang6interp7Pointer6narrowEv(ptr dead_on_unwind nonnull writable sret(%"class.clang::interp::Pointer") align 8 %4, ptr noundef nonnull align 8 dereferenceable(48) %5)
  call void @_ZN5clang6interp11InterpStack4pushINS0_7PointerEJS3_EEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(80) %i.br, ptr noundef nonnull align 8 dereferenceable(48) %4)
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %4) #24
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.q

_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread: ; preds = %bb.f, %.thread, %_ZNK5clang6interp7Pointer8getIndexEv.exit, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread33, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit
  %i.cd = load ptr, ptr %i.a, align 8, !tbaa !354, !nonnull !124, !align !142
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @_ZNK5clang6interp7Pointer6narrowEv(ptr dead_on_unwind nonnull writable sret(%"class.clang::interp::Pointer") align 8 %6, ptr noundef nonnull align 8 dereferenceable(48) %3)
  call void @_ZN5clang6interp11InterpStack4pushINS0_7PointerEJS3_EEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(80) %i.cd, ptr noundef nonnull align 8 dereferenceable(48) %6)
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.q

.thread46:                                        ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @_ZN5clang6interp12OffsetHelperINS0_4CharILb1EEELNS0_7ArithOpE0EEESt8optionalINS0_7PointerEERNS0_11InterpStateENS0_7CodePtrERKT_RKS6_b(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.599") align 8 %7, ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(48) %3, i1 noundef zeroext false)
  %i.ce = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 3 uses
  %i.cf = load i8, ptr %i.ce, align 8, !tbaa !883, !range !123, !noundef !124
  %i.cg = trunc nuw i8 %i.cf to i1                ; 2 uses
  br i1 %i.cg, label %bb.o, label %_ZNSt14_Optional_baseIN5clang6interp7PointerELb0ELb0EED2Ev.exit

bb.o:                                             ; preds = %.thread46
  %i.ch = load ptr, ptr %i.a, align 8, !tbaa !354, !nonnull !124, !align !142
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @_ZNK5clang6interp7Pointer6narrowEv(ptr dead_on_unwind nonnull writable sret(%"class.clang::interp::Pointer") align 8 %8, ptr noundef nonnull align 8 dereferenceable(48) %7)
  call void @_ZN5clang6interp11InterpStack4pushINS0_7PointerEJS3_EEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(80) %i.ch, ptr noundef nonnull align 8 dereferenceable(48) %8)
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %.pre = load i8, ptr %i.ce, align 8, !tbaa !883, !range !123
  %i.ci = trunc nuw i8 %.pre to i1
  store i8 0, ptr %i.ce, align 8, !tbaa !883
  br i1 %i.ci, label %bb.p, label %_ZNSt14_Optional_baseIN5clang6interp7PointerELb0ELb0EED2Ev.exit

bb.p:                                             ; preds = %bb.o
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(56) %7) #24
  br label %_ZNSt14_Optional_baseIN5clang6interp7PointerELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN5clang6interp7PointerELb0ELb0EED2Ev.exit: ; preds = %.thread46, %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %bb.q

bb.q:                                             ; preds = %_ZNSt14_Optional_baseIN5clang6interp7PointerELb0ELb0EED2Ev.exit, %_ZNK5clang6interp7Pointer7atIndexEm.exit, %bb.c, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread
  %.2 = phi i1 [ true, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread ], [ true, %_ZNK5clang6interp7Pointer7atIndexEm.exit ], [ false, %bb.c ], [ %i.cg, %_ZNSt14_Optional_baseIN5clang6interp7PointerELb0ELb0EED2Ev.exit ]
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret i1 %.2
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5clang6interp15ArrayElemPtrPopILNS0_8PrimTypeE1ENS0_4CharILb0EEEEEbRNS0_11InterpStateENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1) local_unnamed_addr #9 comdat {
bb.a:
  %2 = alloca %"class.clang::interp::Char.547", align 1 ; 4 uses
  %3 = alloca %"class.clang::interp::Pointer", align 8 ; 16 uses
  %4 = alloca %"class.clang::interp::Pointer", align 8 ; 5 uses
  %5 = alloca %"class.clang::interp::Pointer", align 8 ; 5 uses
  %6 = alloca %"class.clang::interp::Pointer", align 8 ; 5 uses
  %7 = alloca %"class.std::optional.599", align 8 ; 6 uses
  %8 = alloca %"class.clang::interp::Pointer", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !354, !nonnull !124, !align !142 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !334
  %i.e = add i64 %i.d, -1
  store i64 %i.e, ptr %i.c, align 8, !tbaa !334
  %i.f = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 8) #24
  %.sroa.0.0.copyload.i = load i8, ptr %i.f, align 1, !tbaa !135 ; 3 uses
  tail call void @_ZN5clang6interp11InterpStack6shrinkEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 8) #24
  store i8 %.sroa.0.0.copyload.i, ptr %2, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !354, !nonnull !124, !align !142 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !334, !noalias !1730
  %i.j = add i64 %i.i, -1
  store i64 %i.j, ptr %i.h, align 8, !tbaa !334, !noalias !1730
  %i.k = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 noundef 48) #24, !noalias !1730
  call void @_ZN5clang6interp7PointerC1EOS1_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(48) %i.k) #24
  call void @_ZN5clang6interp11InterpStack6shrinkEm(ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 noundef 48) #24
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !362  ; 2 uses
  switch i32 %i.m, label %bb.b [
    i32 0, label %.split
    i32 1, label %_ZNK5clang6interp7Pointer6isZeroEv.exit
    i32 2, label %.split30
    i32 3, label %_ZNK5clang6interp7Pointer6isZeroEv.exit.thread
  ]

.split:                                           ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.o = load i64, ptr %i.n, align 8, !tbaa !135
  %i.p = icmp eq i64 %i.o, 0
  %i.q = load i64, ptr %3, align 8
  %i.r = icmp eq i64 %i.q, 0
  %i.s = select i1 %i.p, i1 %i.r, i1 false
  br i1 %i.s, label %bb.d, label %_ZNK5clang6interp7Pointer6isZeroEv.exit.thread

.split30:                                         ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !135
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %bb.d, label %_ZNK5clang6interp7Pointer6isZeroEv.exit.thread

bb.b:                                             ; preds = %bb.a
  unreachable

_ZNK5clang6interp7Pointer6isZeroEv.exit:          ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !135
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.d, label %_ZNK5clang6interp7Pointer6isZeroEv.exit.thread

_ZNK5clang6interp7Pointer6isZeroEv.exit.thread:   ; preds = %bb.a, %.split30, %.split, %_ZNK5clang6interp7Pointer6isZeroEv.exit
  %i.y = icmp eq i8 %.sroa.0.0.copyload.i, 0
  br i1 %i.y, label %.thread, label %bb.c

bb.c:                                             ; preds = %_ZNK5clang6interp7Pointer6isZeroEv.exit.thread
  %i.z = call noundef zeroext i1 @_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(48) %3) #24
  br i1 %i.z, label %.thread46, label %bb.q

bb.d:                                             ; preds = %.split30, %.split, %_ZNK5clang6interp7Pointer6isZeroEv.exit
  %i.aa = icmp eq i8 %.sroa.0.0.copyload.i, 0
  br i1 %i.aa, label %..thread_crit_edge, label %.thread46

..thread_crit_edge:                               ; preds = %bb.d
  %.pre38 = load i32, ptr %i.l, align 8, !tbaa !362
  br label %.thread

.thread:                                          ; preds = %..thread_crit_edge, %_ZNK5clang6interp7Pointer6isZeroEv.exit.thread
  %i.ab = phi i32 [ %.pre38, %..thread_crit_edge ], [ %i.m, %_ZNK5clang6interp7Pointer6isZeroEv.exit.thread ] ; 3 uses
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread, label %bb.e

bb.e:                                             ; preds = %.thread
  %i.ad = icmp ne i32 %i.ab, 1
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.af = load ptr, ptr %i.ae, align 8            ; 9 uses
  %i.ag = icmp eq ptr %i.af, null                 ; 2 uses
  %or.cond.i.i = select i1 %i.ad, i1 true, i1 %i.ag
  br i1 %or.cond.i.i, label %bb.f, label %_ZNK5clang6interp7Pointer6isRootEv.exit.i

_ZNK5clang6interp7Pointer6isRootEv.exit.i:        ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !135, !noalias !1733 ; 2 uses
  %i.aj = load ptr, ptr %i.af, align 8, !tbaa !125 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !131
  %i.am = icmp eq i32 %i.ai, %i.al
  br i1 %i.am, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread33, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.an = icmp eq i32 %i.ab, 1
  br i1 %i.an, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread

bb.g:                                             ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i
  %i.ao = zext i32 %i.ai to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  br label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit

_ZNK5clang6interp7Pointer12getFieldDescEv.exit:   ; preds = %bb.f, %bb.g
  %.0.i26.in = phi ptr [ %i.aq, %bb.g ], [ %i.af, %bb.f ]
  %.0.i26 = load ptr, ptr %.0.i26.in, align 8, !tbaa !1418 ; 2 uses
  %.not = icmp eq ptr %.0.i26, null
  br i1 %.not, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread33

_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread33: ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit
  %.0.i2636 = phi ptr [ %.0.i26, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit ], [ %i.aj, %_ZNK5clang6interp7Pointer6isRootEv.exit.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.i2636, i64 53
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !170, !range !123, !noundef !124
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %bb.h, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread

bb.h:                                             ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread33
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.av = load i32, ptr %i.au, align 8, !tbaa !135, !noalias !1736 ; 7 uses
  %i.aw = load i64, ptr %3, align 8, !tbaa !163, !noalias !1736 ; 2 uses
  %9 = xor i1 %i.ag, true
  call void @llvm.assume(i1 %9)
  %i.ax = icmp ugt i32 %i.av, 16
  %i.ay = zext i32 %i.av to i64                   ; 4 uses
  %i.az = icmp eq i64 %i.aw, %i.ay                ; 2 uses
  %or.cond.i.i28 = select i1 %i.ax, i1 %i.az, i1 false
  %.pre40 = load ptr, ptr %i.af, align 8, !tbaa !125 ; 5 uses
  br i1 %or.cond.i.i28, label %_ZNK5clang6interp7Pointer8getIndexEv.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ba = getelementptr inbounds nuw i8, ptr %.pre40, i64 24
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !131
  %i.bc = icmp eq i32 %i.av, %i.bb                ; 2 uses
  br i1 %i.bc, label %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ay
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !167
  br label %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.i

_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.i:    ; preds = %bb.j, %bb.i
  %.0.i.i.i.i = phi ptr [ %i.bf, %bb.j ], [ %.pre40, %bb.i ]
  %i.bg = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 16
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !1434 ; 2 uses
  %.not.not.i.i = icmp eq i32 %i.bh, 0
  br i1 %.not.not.i.i, label %_ZNK5clang6interp7Pointer8getIndexEv.exit.thread, label %bb.k

bb.k:                                             ; preds = %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.i
  br i1 %i.az, label %_ZNK5clang6interp7Pointer8getIndexEv.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  br i1 %i.bc, label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bi = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ay
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !167
  br label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i

_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i8.i.i = phi ptr [ %i.bk, %bb.m ], [ %.pre40, %bb.l ]
  %i.bl = getelementptr inbounds nuw i8, ptr %.0.i.i8.i.i, i64 40
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !1080
  %.not1.i.i.i = icmp eq ptr %i.bm, null
  %..i.i.i = select i1 %.not1.i.i.i, i64 -8, i64 -16
  br label %_ZNK5clang6interp7Pointer8getIndexEv.exit

_ZNK5clang6interp7Pointer8getIndexEv.exit:        ; preds = %bb.k, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i
  %.0.neg.i.i.i = phi i64 [ %..i.i.i, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i ], [ 0, %bb.k ]
  %i.bn = sub i64 %i.aw, %i.ay
  %i.bo = add i64 %i.bn, %.0.neg.i.i.i
  %i.bp = trunc i64 %i.bo to i32
  %i.bq = icmp ugt i32 %i.bh, %i.bp
  br i1 %i.bq, label %_ZNK5clang6interp7Pointer8getIndexEv.exit.thread, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread

_ZNK5clang6interp7Pointer8getIndexEv.exit.thread: ; preds = %bb.h, %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.i, %_ZNK5clang6interp7Pointer8getIndexEv.exit
  %i.br = load ptr, ptr %i.a, align 8, !tbaa !354, !nonnull !124, !align !142
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.bs = getelementptr inbounds nuw i8, ptr %.pre40, i64 24
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !131, !noalias !1739
  %i.bu = icmp eq i32 %i.av, %i.bt
  br i1 %i.bu, label %_ZNK5clang6interp7Pointer7atIndexEm.exit, label %bb.n

bb.n:                                             ; preds = %_ZNK5clang6interp7Pointer8getIndexEv.exit.thread
  %i.bv = zext i32 %i.av to i64
  %i.bw = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !167, !noalias !1739
  br label %_ZNK5clang6interp7Pointer7atIndexEm.exit

_ZNK5clang6interp7Pointer7atIndexEm.exit:         ; preds = %_ZNK5clang6interp7Pointer8getIndexEv.exit.thread, %bb.n
  %.pn5.i.i = phi ptr [ %i.by, %bb.n ], [ %.pre40, %_ZNK5clang6interp7Pointer8getIndexEv.exit.thread ]
  %i.bz = getelementptr inbounds nuw i8, ptr %.pn5.i.i, i64 40
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !1080, !noalias !1739
  %.not.i.i = icmp eq ptr %i.ca, null
  %.0.v.i.i = select i1 %.not.i.i, i32 8, i32 16
  %i.cb = add i32 %.0.v.i.i, %i.av
  %i.cc = zext i32 %i.cb to i64
  call void @_ZN5clang6interp7PointerC2EPNS0_5BlockEjm(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull %i.af, i32 noundef %i.av, i64 noundef %i.cc) #24
  call void @_ZNK5clang6interp7Pointer6narrowEv(ptr dead_on_unwind nonnull writable sret(%"class.clang::interp::Pointer") align 8 %4, ptr noundef nonnull align 8 dereferenceable(48) %5)
  call void @_ZN5clang6interp11InterpStack4pushINS0_7PointerEJS3_EEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(80) %i.br, ptr noundef nonnull align 8 dereferenceable(48) %4)
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %4) #24
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.q

_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread: ; preds = %bb.f, %.thread, %_ZNK5clang6interp7Pointer8getIndexEv.exit, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread33, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit
  %i.cd = load ptr, ptr %i.a, align 8, !tbaa !354, !nonnull !124, !align !142
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @_ZNK5clang6interp7Pointer6narrowEv(ptr dead_on_unwind nonnull writable sret(%"class.clang::interp::Pointer") align 8 %6, ptr noundef nonnull align 8 dereferenceable(48) %3)
  call void @_ZN5clang6interp11InterpStack4pushINS0_7PointerEJS3_EEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(80) %i.cd, ptr noundef nonnull align 8 dereferenceable(48) %6)
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.q

.thread46:                                        ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @_ZN5clang6interp12OffsetHelperINS0_4CharILb0EEELNS0_7ArithOpE0EEESt8optionalINS0_7PointerEERNS0_11InterpStateENS0_7CodePtrERKT_RKS6_b(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.599") align 8 %7, ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(48) %3, i1 noundef zeroext false)
  %i.ce = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 3 uses
  %i.cf = load i8, ptr %i.ce, align 8, !tbaa !883, !range !123, !noundef !124
  %i.cg = trunc nuw i8 %i.cf to i1                ; 2 uses
  br i1 %i.cg, label %bb.o, label %_ZNSt14_Optional_baseIN5clang6interp7PointerELb0ELb0EED2Ev.exit

bb.o:                                             ; preds = %.thread46
  %i.ch = load ptr, ptr %i.a, align 8, !tbaa !354, !nonnull !124, !align !142
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @_ZNK5clang6interp7Pointer6narrowEv(ptr dead_on_unwind nonnull writable sret(%"class.clang::interp::Pointer") align 8 %8, ptr noundef nonnull align 8 dereferenceable(48) %7)
  call void @_ZN5clang6interp11InterpStack4pushINS0_7PointerEJS3_EEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(80) %i.ch, ptr noundef nonnull align 8 dereferenceable(48) %8)
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %.pre = load i8, ptr %i.ce, align 8, !tbaa !883, !range !123
  %i.ci = trunc nuw i8 %.pre to i1
  store i8 0, ptr %i.ce, align 8, !tbaa !883
  br i1 %i.ci, label %bb.p, label %_ZNSt14_Optional_baseIN5clang6interp7PointerELb0ELb0EED2Ev.exit

bb.p:                                             ; preds = %bb.o
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(56) %7) #24
  br label %_ZNSt14_Optional_baseIN5clang6interp7PointerELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN5clang6interp7PointerELb0ELb0EED2Ev.exit: ; preds = %.thread46, %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %bb.q

bb.q:                                             ; preds = %_ZNSt14_Optional_baseIN5clang6interp7PointerELb0ELb0EED2Ev.exit, %_ZNK5clang6interp7Pointer7atIndexEm.exit, %bb.c, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread
  %.2 = phi i1 [ true, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread ], [ true, %_ZNK5clang6interp7Pointer7atIndexEm.exit ], [ false, %bb.c ], [ %i.cg, %_ZNSt14_Optional_baseIN5clang6interp7PointerELb0ELb0EED2Ev.exit ]
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret i1 %.2
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5clang6interp15ArrayElemPtrPopILNS0_8PrimTypeE2ENS0_8IntegralILj16ELb1EEEEEbRNS0_11InterpStateENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1) local_unnamed_addr #9 comdat {
bb.a:
  %2 = alloca %"class.clang::interp::Integral", align 8 ; 6 uses
  %3 = alloca %"class.clang::interp::Pointer", align 8 ; 16 uses
  %4 = alloca %"class.clang::interp::Pointer", align 8 ; 5 uses
  %5 = alloca %"class.clang::interp::Pointer", align 8 ; 5 uses
  %6 = alloca %"class.clang::interp::Pointer", align 8 ; 5 uses
  %7 = alloca %"class.std::optional.599", align 8 ; 6 uses
  %8 = alloca %"class.clang::interp::Pointer", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !354, !nonnull !124, !align !142 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !334, !noalias !1744
  %i.e = add i64 %i.d, -1
  store i64 %i.e, ptr %i.c, align 8, !tbaa !334, !noalias !1744
  %i.f = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 24) #24, !noalias !1744
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !tbaa.struct !828
  tail call void @_ZN5clang6interp11InterpStack6shrinkEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 24) #24, !noalias !1744
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !354, !nonnull !124, !align !142 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !334, !noalias !1747
  %i.j = add i64 %i.i, -1
  store i64 %i.j, ptr %i.h, align 8, !tbaa !334, !noalias !1747
  %i.k = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 noundef 48) #24, !noalias !1747
  call void @_ZN5clang6interp7PointerC1EOS1_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(48) %i.k) #24
  call void @_ZN5clang6interp11InterpStack6shrinkEm(ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 noundef 48) #24
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !362
  switch i32 %i.m, label %bb.b [
    i32 0, label %.split
    i32 1, label %_ZNK5clang6interp7Pointer6isZeroEv.exit
    i32 2, label %.split32
    i32 3, label %_ZNK5clang6interp7Pointer6isZeroEv.exit.thread
  ]

.split:                                           ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.o = load i64, ptr %i.n, align 8, !tbaa !135
  %i.p = icmp eq i64 %i.o, 0
  %i.q = load i64, ptr %3, align 8
  %i.r = icmp eq i64 %i.q, 0
  %i.s = select i1 %i.p, i1 %i.r, i1 false
  br i1 %i.s, label %bb.d, label %_ZNK5clang6interp7Pointer6isZeroEv.exit.thread

.split32:                                         ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !135
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %bb.d, label %_ZNK5clang6interp7Pointer6isZeroEv.exit.thread

bb.b:                                             ; preds = %bb.a
  unreachable

_ZNK5clang6interp7Pointer6isZeroEv.exit:          ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !135
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.d, label %_ZNK5clang6interp7Pointer6isZeroEv.exit.thread

_ZNK5clang6interp7Pointer6isZeroEv.exit.thread:   ; preds = %bb.a, %.split32, %.split, %_ZNK5clang6interp7Pointer6isZeroEv.exit
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.z = load i16, ptr %i.y, align 8, !tbaa !135
  %.not.i26 = icmp eq i16 %i.z, 0
  br i1 %.not.i26, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNK5clang6interp7Pointer6isZeroEv.exit.thread
  %i.aa = call noundef zeroext i1 @_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(48) %3) #24
  br i1 %i.aa, label %bb.d, label %bb.s

bb.d:                                             ; preds = %.split32, %.split, %bb.c, %_ZNK5clang6interp7Pointer6isZeroEv.exit.thread, %_ZNK5clang6interp7Pointer6isZeroEv.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ac = load i16, ptr %i.ab, align 8, !tbaa !135
  %.not.i27 = icmp eq i16 %i.ac, 0
  br i1 %.not.i27, label %bb.e, label %bb.p

bb.e:                                             ; preds = %bb.d
  %i.ad = load i32, ptr %i.l, align 8, !tbaa !362 ; 3 uses
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = icmp ne i32 %i.ad, 1
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8            ; 9 uses
  %i.ai = icmp eq ptr %i.ah, null                 ; 2 uses
  %or.cond.i.i = select i1 %i.af, i1 true, i1 %i.ai
  br i1 %or.cond.i.i, label %bb.g, label %_ZNK5clang6interp7Pointer6isRootEv.exit.i

_ZNK5clang6interp7Pointer6isRootEv.exit.i:        ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !135, !noalias !1750 ; 2 uses
  %i.al = load ptr, ptr %i.ah, align 8, !tbaa !125 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = load i32, ptr %i.am, align 8, !tbaa !131
  %i.ao = icmp eq i32 %i.ak, %i.an
  br i1 %i.ao, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread35, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ap = icmp eq i32 %i.ad, 1
  br i1 %i.ap, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread

bb.h:                                             ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i
  %i.aq = zext i32 %i.ak to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  br label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit

_ZNK5clang6interp7Pointer12getFieldDescEv.exit:   ; preds = %bb.g, %bb.h
  %.0.i28.in = phi ptr [ %i.as, %bb.h ], [ %i.ah, %bb.g ]
  %.0.i28 = load ptr, ptr %.0.i28.in, align 8, !tbaa !1418 ; 2 uses
  %.not = icmp eq ptr %.0.i28, null
  br i1 %.not, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread35

_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread35: ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit
  %.0.i2838 = phi ptr [ %.0.i28, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit ], [ %i.al, %_ZNK5clang6interp7Pointer6isRootEv.exit.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %.0.i2838, i64 53
  %i.au = load i8, ptr %i.at, align 1, !tbaa !170, !range !123, !noundef !124
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %bb.i, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread

bb.i:                                             ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread35
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !135, !noalias !1753 ; 7 uses
  %i.ay = load i64, ptr %3, align 8, !tbaa !163, !noalias !1753 ; 2 uses
  %9 = xor i1 %i.ai, true
  call void @llvm.assume(i1 %9)
  %i.az = icmp ugt i32 %i.ax, 16
  %i.ba = zext i32 %i.ax to i64                   ; 4 uses
  %i.bb = icmp eq i64 %i.ay, %i.ba                ; 2 uses
  %or.cond.i.i30 = select i1 %i.az, i1 %i.bb, i1 false
  %.pre41 = load ptr, ptr %i.ah, align 8, !tbaa !125 ; 5 uses
  br i1 %or.cond.i.i30, label %_ZNK5clang6interp7Pointer8getIndexEv.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.pre41, i64 24
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !131
  %i.be = icmp eq i32 %i.ax, %i.bd                ; 2 uses
  br i1 %i.be, label %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ba
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !167
  br label %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.i

_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.i:    ; preds = %bb.k, %bb.j
  %.0.i.i.i.i = phi ptr [ %i.bh, %bb.k ], [ %.pre41, %bb.j ]
  %i.bi = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 16
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !1434 ; 2 uses
  %.not.not.i.i = icmp eq i32 %i.bj, 0
  br i1 %.not.not.i.i, label %_ZNK5clang6interp7Pointer8getIndexEv.exit.thread, label %bb.l

bb.l:                                             ; preds = %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.i
  br i1 %i.bb, label %_ZNK5clang6interp7Pointer8getIndexEv.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  br i1 %i.be, label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ba
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !167
  br label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i

_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i8.i.i = phi ptr [ %i.bm, %bb.n ], [ %.pre41, %bb.m ]
  %i.bn = getelementptr inbounds nuw i8, ptr %.0.i.i8.i.i, i64 40
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !1080
  %.not1.i.i.i = icmp eq ptr %i.bo, null
  %..i.i.i = select i1 %.not1.i.i.i, i64 -8, i64 -16
  br label %_ZNK5clang6interp7Pointer8getIndexEv.exit

_ZNK5clang6interp7Pointer8getIndexEv.exit:        ; preds = %bb.l, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i
  %.0.neg.i.i.i = phi i64 [ %..i.i.i, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i ], [ 0, %bb.l ]
  %i.bp = sub i64 %i.ay, %i.ba
  %i.bq = add i64 %i.bp, %.0.neg.i.i.i
  %i.br = trunc i64 %i.bq to i32
  %i.bs = icmp ugt i32 %i.bj, %i.br
  br i1 %i.bs, label %_ZNK5clang6interp7Pointer8getIndexEv.exit.thread, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread

_ZNK5clang6interp7Pointer8getIndexEv.exit.thread: ; preds = %bb.i, %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.i, %_ZNK5clang6interp7Pointer8getIndexEv.exit
  %i.bt = load ptr, ptr %i.a, align 8, !tbaa !354, !nonnull !124, !align !142
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.bu = getelementptr inbounds nuw i8, ptr %.pre41, i64 24
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !131, !noalias !1756
  %i.bw = icmp eq i32 %i.ax, %i.bv
  br i1 %i.bw, label %_ZNK5clang6interp7Pointer7atIndexEm.exit, label %bb.o

bb.o:                                             ; preds = %_ZNK5clang6interp7Pointer8getIndexEv.exit.thread
  %i.bx = zext i32 %i.ax to i64
  %i.by = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !167, !noalias !1756
  br label %_ZNK5clang6interp7Pointer7atIndexEm.exit

_ZNK5clang6interp7Pointer7atIndexEm.exit:         ; preds = %_ZNK5clang6interp7Pointer8getIndexEv.exit.thread, %bb.o
  %.pn5.i.i = phi ptr [ %i.ca, %bb.o ], [ %.pre41, %_ZNK5clang6interp7Pointer8getIndexEv.exit.thread ]
  %i.cb = getelementptr inbounds nuw i8, ptr %.pn5.i.i, i64 40
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !1080, !noalias !1756
  %.not.i.i = icmp eq ptr %i.cc, null
  %.0.v.i.i = select i1 %.not.i.i, i32 8, i32 16
  %i.cd = add i32 %.0.v.i.i, %i.ax
  %i.ce = zext i32 %i.cd to i64
  call void @_ZN5clang6interp7PointerC2EPNS0_5BlockEjm(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull %i.ah, i32 noundef %i.ax, i64 noundef %i.ce) #24
  call void @_ZNK5clang6interp7Pointer6narrowEv(ptr dead_on_unwind nonnull writable sret(%"class.clang::interp::Pointer") align 8 %4, ptr noundef nonnull align 8 dereferenceable(48) %5)
  call void @_ZN5clang6interp11InterpStack4pushINS0_7PointerEJS3_EEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(80) %i.bt, ptr noundef nonnull align 8 dereferenceable(48) %4)
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %4) #24
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.s

_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread: ; preds = %bb.g, %bb.e, %_ZNK5clang6interp7Pointer8getIndexEv.exit, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread35, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit
  %i.cf = load ptr, ptr %i.a, align 8, !tbaa !354, !nonnull !124, !align !142
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @_ZNK5clang6interp7Pointer6narrowEv(ptr dead_on_unwind nonnull writable sret(%"class.clang::interp::Pointer") align 8 %6, ptr noundef nonnull align 8 dereferenceable(48) %3)
  call void @_ZN5clang6interp11InterpStack4pushINS0_7PointerEJS3_EEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(80) %i.cf, ptr noundef nonnull align 8 dereferenceable(48) %6)
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.s

bb.p:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @_ZN5clang6interp12OffsetHelperINS0_8IntegralILj16ELb1EEELNS0_7ArithOpE0EEESt8optionalINS0_7PointerEERNS0_11InterpStateENS0_7CodePtrERKT_RKS6_b(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.599") align 8 %7, ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(48) %3, i1 noundef zeroext false)
  %i.cg = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 3 uses
  %i.ch = load i8, ptr %i.cg, align 8, !tbaa !883, !range !123, !noundef !124
  %i.ci = trunc nuw i8 %i.ch to i1                ; 2 uses
  br i1 %i.ci, label %bb.q, label %_ZNSt14_Optional_baseIN5clang6interp7PointerELb0ELb0EED2Ev.exit

bb.q:                                             ; preds = %bb.p
  %i.cj = load ptr, ptr %i.a, align 8, !tbaa !354, !nonnull !124, !align !142
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @_ZNK5clang6interp7Pointer6narrowEv(ptr dead_on_unwind nonnull writable sret(%"class.clang::interp::Pointer") align 8 %8, ptr noundef nonnull align 8 dereferenceable(48) %7)
  call void @_ZN5clang6interp11InterpStack4pushINS0_7PointerEJS3_EEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(80) %i.cj, ptr noundef nonnull align 8 dereferenceable(48) %8)
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %.pre = load i8, ptr %i.cg, align 8, !tbaa !883, !range !123
  %i.ck = trunc nuw i8 %.pre to i1
  store i8 0, ptr %i.cg, align 8, !tbaa !883
  br i1 %i.ck, label %bb.r, label %_ZNSt14_Optional_baseIN5clang6interp7PointerELb0ELb0EED2Ev.exit

bb.r:                                             ; preds = %bb.q
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(56) %7) #24
  br label %_ZNSt14_Optional_baseIN5clang6interp7PointerELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN5clang6interp7PointerELb0ELb0EED2Ev.exit: ; preds = %bb.p, %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %bb.s

bb.s:                                             ; preds = %_ZNSt14_Optional_baseIN5clang6interp7PointerELb0ELb0EED2Ev.exit, %_ZNK5clang6interp7Pointer7atIndexEm.exit, %bb.c, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread
  %.2 = phi i1 [ true, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread ], [ true, %_ZNK5clang6interp7Pointer7atIndexEm.exit ], [ false, %bb.c ], [ %i.ci, %_ZNSt14_Optional_baseIN5clang6interp7PointerELb0ELb0EED2Ev.exit ]
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret i1 %.2
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5clang6interp15ArrayElemPtrPopILNS0_8PrimTypeE3ENS0_8IntegralILj16ELb0EEEEEbRNS0_11InterpStateENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1) local_unnamed_addr #9 comdat {
bb.a:
  %2 = alloca %"class.clang::interp::Integral.550", align 8 ; 6 uses
  %3 = alloca %"class.clang::interp::Pointer", align 8 ; 16 uses
  %4 = alloca %"class.clang::interp::Pointer", align 8 ; 5 uses
  %5 = alloca %"class.clang::interp::Pointer", align 8 ; 5 uses
  %6 = alloca %"class.clang::interp::Pointer", align 8 ; 5 uses
  %7 = alloca %"class.std::optional.599", align 8 ; 6 uses
  %8 = alloca %"class.clang::interp::Pointer", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !354, !nonnull !124, !align !142 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !334, !noalias !1761
  %i.e = add i64 %i.d, -1
  store i64 %i.e, ptr %i.c, align 8, !tbaa !334, !noalias !1761
  %i.f = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 24) #24, !noalias !1761
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !tbaa.struct !828
  tail call void @_ZN5clang6interp11InterpStack6shrinkEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 24) #24, !noalias !1761
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !354, !nonnull !124, !align !142 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !334, !noalias !1764
  %i.j = add i64 %i.i, -1
  store i64 %i.j, ptr %i.h, align 8, !tbaa !334, !noalias !1764
  %i.k = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 noundef 48) #24, !noalias !1764
  call void @_ZN5clang6interp7PointerC1EOS1_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(48) %i.k) #24
  call void @_ZN5clang6interp11InterpStack6shrinkEm(ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 noundef 48) #24
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !362
  switch i32 %i.m, label %bb.b [
    i32 0, label %.split
    i32 1, label %_ZNK5clang6interp7Pointer6isZeroEv.exit
    i32 2, label %.split32
    i32 3, label %_ZNK5clang6interp7Pointer6isZeroEv.exit.thread
  ]

.split:                                           ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.o = load i64, ptr %i.n, align 8, !tbaa !135
  %i.p = icmp eq i64 %i.o, 0
  %i.q = load i64, ptr %3, align 8
  %i.r = icmp eq i64 %i.q, 0
  %i.s = select i1 %i.p, i1 %i.r, i1 false
  br i1 %i.s, label %bb.d, label %_ZNK5clang6interp7Pointer6isZeroEv.exit.thread

.split32:                                         ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !135
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %bb.d, label %_ZNK5clang6interp7Pointer6isZeroEv.exit.thread

bb.b:                                             ; preds = %bb.a
  unreachable

_ZNK5clang6interp7Pointer6isZeroEv.exit:          ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !135
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.d, label %_ZNK5clang6interp7Pointer6isZeroEv.exit.thread

_ZNK5clang6interp7Pointer6isZeroEv.exit.thread:   ; preds = %bb.a, %.split32, %.split, %_ZNK5clang6interp7Pointer6isZeroEv.exit
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.z = load i16, ptr %i.y, align 8, !tbaa !135
  %.not.i26 = icmp eq i16 %i.z, 0
  br i1 %.not.i26, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNK5clang6interp7Pointer6isZeroEv.exit.thread
  %i.aa = call noundef zeroext i1 @_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(48) %3) #24
  br i1 %i.aa, label %bb.d, label %bb.s

bb.d:                                             ; preds = %.split32, %.split, %bb.c, %_ZNK5clang6interp7Pointer6isZeroEv.exit.thread, %_ZNK5clang6interp7Pointer6isZeroEv.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ac = load i16, ptr %i.ab, align 8, !tbaa !135
  %.not.i27 = icmp eq i16 %i.ac, 0
  br i1 %.not.i27, label %bb.e, label %bb.p

bb.e:                                             ; preds = %bb.d
  %i.ad = load i32, ptr %i.l, align 8, !tbaa !362 ; 3 uses
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = icmp ne i32 %i.ad, 1
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8            ; 9 uses
  %i.ai = icmp eq ptr %i.ah, null                 ; 2 uses
  %or.cond.i.i = select i1 %i.af, i1 true, i1 %i.ai
  br i1 %or.cond.i.i, label %bb.g, label %_ZNK5clang6interp7Pointer6isRootEv.exit.i

_ZNK5clang6interp7Pointer6isRootEv.exit.i:        ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !135, !noalias !1767 ; 2 uses
  %i.al = load ptr, ptr %i.ah, align 8, !tbaa !125 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = load i32, ptr %i.am, align 8, !tbaa !131
  %i.ao = icmp eq i32 %i.ak, %i.an
  br i1 %i.ao, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread35, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ap = icmp eq i32 %i.ad, 1
  br i1 %i.ap, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread

bb.h:                                             ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i
  %i.aq = zext i32 %i.ak to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  br label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit

_ZNK5clang6interp7Pointer12getFieldDescEv.exit:   ; preds = %bb.g, %bb.h
  %.0.i28.in = phi ptr [ %i.as, %bb.h ], [ %i.ah, %bb.g ]
  %.0.i28 = load ptr, ptr %.0.i28.in, align 8, !tbaa !1418 ; 2 uses
  %.not = icmp eq ptr %.0.i28, null
  br i1 %.not, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread35

_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread35: ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit
  %.0.i2838 = phi ptr [ %.0.i28, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit ], [ %i.al, %_ZNK5clang6interp7Pointer6isRootEv.exit.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %.0.i2838, i64 53
  %i.au = load i8, ptr %i.at, align 1, !tbaa !170, !range !123, !noundef !124
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %bb.i, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread

bb.i:                                             ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread35
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !135, !noalias !1770 ; 7 uses
  %i.ay = load i64, ptr %3, align 8, !tbaa !163, !noalias !1770 ; 2 uses
  %9 = xor i1 %i.ai, true
  call void @llvm.assume(i1 %9)
  %i.az = icmp ugt i32 %i.ax, 16
  %i.ba = zext i32 %i.ax to i64                   ; 4 uses
  %i.bb = icmp eq i64 %i.ay, %i.ba                ; 2 uses
  %or.cond.i.i30 = select i1 %i.az, i1 %i.bb, i1 false
  %.pre41 = load ptr, ptr %i.ah, align 8, !tbaa !125 ; 5 uses
  br i1 %or.cond.i.i30, label %_ZNK5clang6interp7Pointer8getIndexEv.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.pre41, i64 24
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !131
  %i.be = icmp eq i32 %i.ax, %i.bd                ; 2 uses
  br i1 %i.be, label %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ba
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !167
  br label %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.i

_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.i:    ; preds = %bb.k, %bb.j
  %.0.i.i.i.i = phi ptr [ %i.bh, %bb.k ], [ %.pre41, %bb.j ]
  %i.bi = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 16
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !1434 ; 2 uses
  %.not.not.i.i = icmp eq i32 %i.bj, 0
  br i1 %.not.not.i.i, label %_ZNK5clang6interp7Pointer8getIndexEv.exit.thread, label %bb.l

bb.l:                                             ; preds = %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.i
  br i1 %i.bb, label %_ZNK5clang6interp7Pointer8getIndexEv.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  br i1 %i.be, label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ba
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !167
  br label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i

_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i8.i.i = phi ptr [ %i.bm, %bb.n ], [ %.pre41, %bb.m ]
  %i.bn = getelementptr inbounds nuw i8, ptr %.0.i.i8.i.i, i64 40
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !1080
  %.not1.i.i.i = icmp eq ptr %i.bo, null
  %..i.i.i = select i1 %.not1.i.i.i, i64 -8, i64 -16
  br label %_ZNK5clang6interp7Pointer8getIndexEv.exit

_ZNK5clang6interp7Pointer8getIndexEv.exit:        ; preds = %bb.l, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i
  %.0.neg.i.i.i = phi i64 [ %..i.i.i, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i ], [ 0, %bb.l ]
  %i.bp = sub i64 %i.ay, %i.ba
  %i.bq = add i64 %i.bp, %.0.neg.i.i.i
  %i.br = trunc i64 %i.bq to i32
  %i.bs = icmp ugt i32 %i.bj, %i.br
  br i1 %i.bs, label %_ZNK5clang6interp7Pointer8getIndexEv.exit.thread, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread

_ZNK5clang6interp7Pointer8getIndexEv.exit.thread: ; preds = %bb.i, %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.i, %_ZNK5clang6interp7Pointer8getIndexEv.exit
  %i.bt = load ptr, ptr %i.a, align 8, !tbaa !354, !nonnull !124, !align !142
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.bu = getelementptr inbounds nuw i8, ptr %.pre41, i64 24
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !131, !noalias !1773
  %i.bw = icmp eq i32 %i.ax, %i.bv
  br i1 %i.bw, label %_ZNK5clang6interp7Pointer7atIndexEm.exit, label %bb.o

bb.o:                                             ; preds = %_ZNK5clang6interp7Pointer8getIndexEv.exit.thread
  %i.bx = zext i32 %i.ax to i64
  %i.by = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !167, !noalias !1773
  br label %_ZNK5clang6interp7Pointer7atIndexEm.exit

_ZNK5clang6interp7Pointer7atIndexEm.exit:         ; preds = %_ZNK5clang6interp7Pointer8getIndexEv.exit.thread, %bb.o
  %.pn5.i.i = phi ptr [ %i.ca, %bb.o ], [ %.pre41, %_ZNK5clang6interp7Pointer8getIndexEv.exit.thread ]
  %i.cb = getelementptr inbounds nuw i8, ptr %.pn5.i.i, i64 40
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !1080, !noalias !1773
  %.not.i.i = icmp eq ptr %i.cc, null
  %.0.v.i.i = select i1 %.not.i.i, i32 8, i32 16
  %i.cd = add i32 %.0.v.i.i, %i.ax
  %i.ce = zext i32 %i.cd to i64
  call void @_ZN5clang6interp7PointerC2EPNS0_5BlockEjm(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull %i.ah, i32 noundef %i.ax, i64 noundef %i.ce) #24
  call void @_ZNK5clang6interp7Pointer6narrowEv(ptr dead_on_unwind nonnull writable sret(%"class.clang::interp::Pointer") align 8 %4, ptr noundef nonnull align 8 dereferenceable(48) %5)
  call void @_ZN5clang6interp11InterpStack4pushINS0_7PointerEJS3_EEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(80) %i.bt, ptr noundef nonnull align 8 dereferenceable(48) %4)
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %4) #24
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.s

_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread: ; preds = %bb.g, %bb.e, %_ZNK5clang6interp7Pointer8getIndexEv.exit, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread35, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit
  %i.cf = load ptr, ptr %i.a, align 8, !tbaa !354, !nonnull !124, !align !142
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @_ZNK5clang6interp7Pointer6narrowEv(ptr dead_on_unwind nonnull writable sret(%"class.clang::interp::Pointer") align 8 %6, ptr noundef nonnull align 8 dereferenceable(48) %3)
  call void @_ZN5clang6interp11InterpStack4pushINS0_7PointerEJS3_EEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(80) %i.cf, ptr noundef nonnull align 8 dereferenceable(48) %6)
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.s

bb.p:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @_ZN5clang6interp12OffsetHelperINS0_8IntegralILj16ELb0EEELNS0_7ArithOpE0EEESt8optionalINS0_7PointerEERNS0_11InterpStateENS0_7CodePtrERKT_RKS6_b(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.599") align 8 %7, ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(48) %3, i1 noundef zeroext false)
  %i.cg = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 3 uses
  %i.ch = load i8, ptr %i.cg, align 8, !tbaa !883, !range !123, !noundef !124
  %i.ci = trunc nuw i8 %i.ch to i1                ; 2 uses
  br i1 %i.ci, label %bb.q, label %_ZNSt14_Optional_baseIN5clang6interp7PointerELb0ELb0EED2Ev.exit

bb.q:                                             ; preds = %bb.p
  %i.cj = load ptr, ptr %i.a, align 8, !tbaa !354, !nonnull !124, !align !142
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @_ZNK5clang6interp7Pointer6narrowEv(ptr dead_on_unwind nonnull writable sret(%"class.clang::interp::Pointer") align 8 %8, ptr noundef nonnull align 8 dereferenceable(48) %7)
  call void @_ZN5clang6interp11InterpStack4pushINS0_7PointerEJS3_EEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(80) %i.cj, ptr noundef nonnull align 8 dereferenceable(48) %8)
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %.pre = load i8, ptr %i.cg, align 8, !tbaa !883, !range !123
  %i.ck = trunc nuw i8 %.pre to i1
  store i8 0, ptr %i.cg, align 8, !tbaa !883
  br i1 %i.ck, label %bb.r, label %_ZNSt14_Optional_baseIN5clang6interp7PointerELb0ELb0EED2Ev.exit

bb.r:                                             ; preds = %bb.q
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(56) %7) #24
  br label %_ZNSt14_Optional_baseIN5clang6interp7PointerELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN5clang6interp7PointerELb0ELb0EED2Ev.exit: ; preds = %bb.p, %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %bb.s

bb.s:                                             ; preds = %_ZNSt14_Optional_baseIN5clang6interp7PointerELb0ELb0EED2Ev.exit, %_ZNK5clang6interp7Pointer7atIndexEm.exit, %bb.c, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread
  %.2 = phi i1 [ true, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread ], [ true, %_ZNK5clang6interp7Pointer7atIndexEm.exit ], [ false, %bb.c ], [ %i.ci, %_ZNSt14_Optional_baseIN5clang6interp7PointerELb0ELb0EED2Ev.exit ]
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret i1 %.2
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5clang6interp15ArrayElemPtrPopILNS0_8PrimTypeE4ENS0_8IntegralILj32ELb1EEEEEbRNS0_11InterpStateENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1) local_unnamed_addr #9 comdat {
bb.a:
  %2 = alloca %"class.clang::interp::Integral.554", align 8 ; 6 uses
  %3 = alloca %"class.clang::interp::Pointer", align 8 ; 16 uses
  %4 = alloca %"class.clang::interp::Pointer", align 8 ; 5 uses
  %5 = alloca %"class.clang::interp::Pointer", align 8 ; 5 uses
  %6 = alloca %"class.clang::interp::Pointer", align 8 ; 5 uses
  %7 = alloca %"class.std::optional.599", align 8 ; 6 uses
  %8 = alloca %"class.clang::interp::Pointer", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !354, !nonnull !124, !align !142 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !334, !noalias !1778
  %i.e = add i64 %i.d, -1
  store i64 %i.e, ptr %i.c, align 8, !tbaa !334, !noalias !1778
  %i.f = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 24) #24, !noalias !1778
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !tbaa.struct !828
  tail call void @_ZN5clang6interp11InterpStack6shrinkEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 24) #24, !noalias !1778
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !354, !nonnull !124, !align !142 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !334, !noalias !1781
  %i.j = add i64 %i.i, -1
  store i64 %i.j, ptr %i.h, align 8, !tbaa !334, !noalias !1781
  %i.k = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 noundef 48) #24, !noalias !1781
  call void @_ZN5clang6interp7PointerC1EOS1_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(48) %i.k) #24
  call void @_ZN5clang6interp11InterpStack6shrinkEm(ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 noundef 48) #24
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !362
  switch i32 %i.m, label %bb.b [
    i32 0, label %.split
    i32 1, label %_ZNK5clang6interp7Pointer6isZeroEv.exit
    i32 2, label %.split32
    i32 3, label %_ZNK5clang6interp7Pointer6isZeroEv.exit.thread
  ]

.split:                                           ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.o = load i64, ptr %i.n, align 8, !tbaa !135
  %i.p = icmp eq i64 %i.o, 0
  %i.q = load i64, ptr %3, align 8
  %i.r = icmp eq i64 %i.q, 0
  %i.s = select i1 %i.p, i1 %i.r, i1 false
  br i1 %i.s, label %bb.d, label %_ZNK5clang6interp7Pointer6isZeroEv.exit.thread

.split32:                                         ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !135
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %bb.d, label %_ZNK5clang6interp7Pointer6isZeroEv.exit.thread

bb.b:                                             ; preds = %bb.a
  unreachable

_ZNK5clang6interp7Pointer6isZeroEv.exit:          ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !135
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.d, label %_ZNK5clang6interp7Pointer6isZeroEv.exit.thread

_ZNK5clang6interp7Pointer6isZeroEv.exit.thread:   ; preds = %bb.a, %.split32, %.split, %_ZNK5clang6interp7Pointer6isZeroEv.exit
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.z = load i32, ptr %i.y, align 8, !tbaa !135
  %.not.i26 = icmp eq i32 %i.z, 0
  br i1 %.not.i26, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNK5clang6interp7Pointer6isZeroEv.exit.thread
  %i.aa = call noundef zeroext i1 @_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(48) %3) #24
  br i1 %i.aa, label %bb.d, label %bb.s

bb.d:                                             ; preds = %.split32, %.split, %bb.c, %_ZNK5clang6interp7Pointer6isZeroEv.exit.thread, %_ZNK5clang6interp7Pointer6isZeroEv.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !135
  %.not.i27 = icmp eq i32 %i.ac, 0
  br i1 %.not.i27, label %bb.e, label %bb.p

bb.e:                                             ; preds = %bb.d
  %i.ad = load i32, ptr %i.l, align 8, !tbaa !362 ; 3 uses
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = icmp ne i32 %i.ad, 1
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8            ; 9 uses
  %i.ai = icmp eq ptr %i.ah, null                 ; 2 uses
  %or.cond.i.i = select i1 %i.af, i1 true, i1 %i.ai
  br i1 %or.cond.i.i, label %bb.g, label %_ZNK5clang6interp7Pointer6isRootEv.exit.i

_ZNK5clang6interp7Pointer6isRootEv.exit.i:        ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !135, !noalias !1784 ; 2 uses
  %i.al = load ptr, ptr %i.ah, align 8, !tbaa !125 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = load i32, ptr %i.am, align 8, !tbaa !131
  %i.ao = icmp eq i32 %i.ak, %i.an
  br i1 %i.ao, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread35, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ap = icmp eq i32 %i.ad, 1
  br i1 %i.ap, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread

bb.h:                                             ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i
  %i.aq = zext i32 %i.ak to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  br label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit

_ZNK5clang6interp7Pointer12getFieldDescEv.exit:   ; preds = %bb.g, %bb.h
  %.0.i28.in = phi ptr [ %i.as, %bb.h ], [ %i.ah, %bb.g ]
  %.0.i28 = load ptr, ptr %.0.i28.in, align 8, !tbaa !1418 ; 2 uses
  %.not = icmp eq ptr %.0.i28, null
  br i1 %.not, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread35

_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread35: ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit
  %.0.i2838 = phi ptr [ %.0.i28, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit ], [ %i.al, %_ZNK5clang6interp7Pointer6isRootEv.exit.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %.0.i2838, i64 53
  %i.au = load i8, ptr %i.at, align 1, !tbaa !170, !range !123, !noundef !124
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %bb.i, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread

bb.i:                                             ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread35
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !135, !noalias !1787 ; 7 uses
  %i.ay = load i64, ptr %3, align 8, !tbaa !163, !noalias !1787 ; 2 uses
  %9 = xor i1 %i.ai, true
  call void @llvm.assume(i1 %9)
  %i.az = icmp ugt i32 %i.ax, 16
  %i.ba = zext i32 %i.ax to i64                   ; 4 uses
  %i.bb = icmp eq i64 %i.ay, %i.ba                ; 2 uses
  %or.cond.i.i30 = select i1 %i.az, i1 %i.bb, i1 false
  %.pre41 = load ptr, ptr %i.ah, align 8, !tbaa !125 ; 5 uses
  br i1 %or.cond.i.i30, label %_ZNK5clang6interp7Pointer8getIndexEv.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.pre41, i64 24
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !131
  %i.be = icmp eq i32 %i.ax, %i.bd                ; 2 uses
  br i1 %i.be, label %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ba
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !167
  br label %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.i

_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.i:    ; preds = %bb.k, %bb.j
  %.0.i.i.i.i = phi ptr [ %i.bh, %bb.k ], [ %.pre41, %bb.j ]
  %i.bi = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 16
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !1434 ; 2 uses
  %.not.not.i.i = icmp eq i32 %i.bj, 0
  br i1 %.not.not.i.i, label %_ZNK5clang6interp7Pointer8getIndexEv.exit.thread, label %bb.l

bb.l:                                             ; preds = %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.i
  br i1 %i.bb, label %_ZNK5clang6interp7Pointer8getIndexEv.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  br i1 %i.be, label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ba
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !167
  br label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i

_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i8.i.i = phi ptr [ %i.bm, %bb.n ], [ %.pre41, %bb.m ]
  %i.bn = getelementptr inbounds nuw i8, ptr %.0.i.i8.i.i, i64 40
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !1080
  %.not1.i.i.i = icmp eq ptr %i.bo, null
  %..i.i.i = select i1 %.not1.i.i.i, i64 -8, i64 -16
  br label %_ZNK5clang6interp7Pointer8getIndexEv.exit

_ZNK5clang6interp7Pointer8getIndexEv.exit:        ; preds = %bb.l, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i
  %.0.neg.i.i.i = phi i64 [ %..i.i.i, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i ], [ 0, %bb.l ]
  %i.bp = sub i64 %i.ay, %i.ba
  %i.bq = add i64 %i.bp, %.0.neg.i.i.i
  %i.br = trunc i64 %i.bq to i32
  %i.bs = icmp ugt i32 %i.bj, %i.br
  br i1 %i.bs, label %_ZNK5clang6interp7Pointer8getIndexEv.exit.thread, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread

_ZNK5clang6interp7Pointer8getIndexEv.exit.thread: ; preds = %bb.i, %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.i, %_ZNK5clang6interp7Pointer8getIndexEv.exit
  %i.bt = load ptr, ptr %i.a, align 8, !tbaa !354, !nonnull !124, !align !142
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.bu = getelementptr inbounds nuw i8, ptr %.pre41, i64 24
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !131, !noalias !1790
  %i.bw = icmp eq i32 %i.ax, %i.bv
  br i1 %i.bw, label %_ZNK5clang6interp7Pointer7atIndexEm.exit, label %bb.o

bb.o:                                             ; preds = %_ZNK5clang6interp7Pointer8getIndexEv.exit.thread
  %i.bx = zext i32 %i.ax to i64
  %i.by = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !167, !noalias !1790
  br label %_ZNK5clang6interp7Pointer7atIndexEm.exit

_ZNK5clang6interp7Pointer7atIndexEm.exit:         ; preds = %_ZNK5clang6interp7Pointer8getIndexEv.exit.thread, %bb.o
  %.pn5.i.i = phi ptr [ %i.ca, %bb.o ], [ %.pre41, %_ZNK5clang6interp7Pointer8getIndexEv.exit.thread ]
  %i.cb = getelementptr inbounds nuw i8, ptr %.pn5.i.i, i64 40
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !1080, !noalias !1790
  %.not.i.i = icmp eq ptr %i.cc, null
  %.0.v.i.i = select i1 %.not.i.i, i32 8, i32 16
  %i.cd = add i32 %.0.v.i.i, %i.ax
  %i.ce = zext i32 %i.cd to i64
  call void @_ZN5clang6interp7PointerC2EPNS0_5BlockEjm(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull %i.ah, i32 noundef %i.ax, i64 noundef %i.ce) #24
  call void @_ZNK5clang6interp7Pointer6narrowEv(ptr dead_on_unwind nonnull writable sret(%"class.clang::interp::Pointer") align 8 %4, ptr noundef nonnull align 8 dereferenceable(48) %5)
  call void @_ZN5clang6interp11InterpStack4pushINS0_7PointerEJS3_EEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(80) %i.bt, ptr noundef nonnull align 8 dereferenceable(48) %4)
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %4) #24
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.s

_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread: ; preds = %bb.g, %bb.e, %_ZNK5clang6interp7Pointer8getIndexEv.exit, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread35, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit
  %i.cf = load ptr, ptr %i.a, align 8, !tbaa !354, !nonnull !124, !align !142
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @_ZNK5clang6interp7Pointer6narrowEv(ptr dead_on_unwind nonnull writable sret(%"class.clang::interp::Pointer") align 8 %6, ptr noundef nonnull align 8 dereferenceable(48) %3)
  call void @_ZN5clang6interp11InterpStack4pushINS0_7PointerEJS3_EEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(80) %i.cf, ptr noundef nonnull align 8 dereferenceable(48) %6)
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.s

bb.p:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @_ZN5clang6interp12OffsetHelperINS0_8IntegralILj32ELb1EEELNS0_7ArithOpE0EEESt8optionalINS0_7PointerEERNS0_11InterpStateENS0_7CodePtrERKT_RKS6_b(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.599") align 8 %7, ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(48) %3, i1 noundef zeroext false)
  %i.cg = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 3 uses
  %i.ch = load i8, ptr %i.cg, align 8, !tbaa !883, !range !123, !noundef !124
  %i.ci = trunc nuw i8 %i.ch to i1                ; 2 uses
  br i1 %i.ci, label %bb.q, label %_ZNSt14_Optional_baseIN5clang6interp7PointerELb0ELb0EED2Ev.exit

bb.q:                                             ; preds = %bb.p
  %i.cj = load ptr, ptr %i.a, align 8, !tbaa !354, !nonnull !124, !align !142
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @_ZNK5clang6interp7Pointer6narrowEv(ptr dead_on_unwind nonnull writable sret(%"class.clang::interp::Pointer") align 8 %8, ptr noundef nonnull align 8 dereferenceable(48) %7)
  call void @_ZN5clang6interp11InterpStack4pushINS0_7PointerEJS3_EEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(80) %i.cj, ptr noundef nonnull align 8 dereferenceable(48) %8)
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %.pre = load i8, ptr %i.cg, align 8, !tbaa !883, !range !123
  %i.ck = trunc nuw i8 %.pre to i1
  store i8 0, ptr %i.cg, align 8, !tbaa !883
  br i1 %i.ck, label %bb.r, label %_ZNSt14_Optional_baseIN5clang6interp7PointerELb0ELb0EED2Ev.exit

bb.r:                                             ; preds = %bb.q
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(56) %7) #24
  br label %_ZNSt14_Optional_baseIN5clang6interp7PointerELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN5clang6interp7PointerELb0ELb0EED2Ev.exit: ; preds = %bb.p, %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %bb.s

bb.s:                                             ; preds = %_ZNSt14_Optional_baseIN5clang6interp7PointerELb0ELb0EED2Ev.exit, %_ZNK5clang6interp7Pointer7atIndexEm.exit, %bb.c, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread
  %.2 = phi i1 [ true, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread ], [ true, %_ZNK5clang6interp7Pointer7atIndexEm.exit ], [ false, %bb.c ], [ %i.ci, %_ZNSt14_Optional_baseIN5clang6interp7PointerELb0ELb0EED2Ev.exit ]
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret i1 %.2
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5clang6interp15ArrayElemPtrPopILNS0_8PrimTypeE5ENS0_8IntegralILj32ELb0EEEEEbRNS0_11InterpStateENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1) local_unnamed_addr #9 comdat {
bb.a:
  %2 = alloca %"class.clang::interp::Integral.558", align 8 ; 6 uses
  %3 = alloca %"class.clang::interp::Pointer", align 8 ; 16 uses
  %4 = alloca %"class.clang::interp::Pointer", align 8 ; 5 uses
  %5 = alloca %"class.clang::interp::Pointer", align 8 ; 5 uses
  %6 = alloca %"class.clang::interp::Pointer", align 8 ; 5 uses
  %7 = alloca %"class.std::optional.599", align 8 ; 6 uses
  %8 = alloca %"class.clang::interp::Pointer", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !354, !nonnull !124, !align !142 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !334, !noalias !1795
  %i.e = add i64 %i.d, -1
  store i64 %i.e, ptr %i.c, align 8, !tbaa !334, !noalias !1795
  %i.f = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 24) #24, !noalias !1795
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !tbaa.struct !828
  tail call void @_ZN5clang6interp11InterpStack6shrinkEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 24) #24, !noalias !1795
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !354, !nonnull !124, !align !142 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !334, !noalias !1798
  %i.j = add i64 %i.i, -1
  store i64 %i.j, ptr %i.h, align 8, !tbaa !334, !noalias !1798
  %i.k = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 noundef 48) #24, !noalias !1798
  call void @_ZN5clang6interp7PointerC1EOS1_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(48) %i.k) #24
  call void @_ZN5clang6interp11InterpStack6shrinkEm(ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 noundef 48) #24
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !362
  switch i32 %i.m, label %bb.b [
    i32 0, label %.split
    i32 1, label %_ZNK5clang6interp7Pointer6isZeroEv.exit
    i32 2, label %.split32
    i32 3, label %_ZNK5clang6interp7Pointer6isZeroEv.exit.thread
  ]

.split:                                           ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.o = load i64, ptr %i.n, align 8, !tbaa !135
  %i.p = icmp eq i64 %i.o, 0
  %i.q = load i64, ptr %3, align 8
  %i.r = icmp eq i64 %i.q, 0
  %i.s = select i1 %i.p, i1 %i.r, i1 false
  br i1 %i.s, label %bb.d, label %_ZNK5clang6interp7Pointer6isZeroEv.exit.thread

.split32:                                         ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !135
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %bb.d, label %_ZNK5clang6interp7Pointer6isZeroEv.exit.thread

bb.b:                                             ; preds = %bb.a
  unreachable

_ZNK5clang6interp7Pointer6isZeroEv.exit:          ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !135
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.d, label %_ZNK5clang6interp7Pointer6isZeroEv.exit.thread

_ZNK5clang6interp7Pointer6isZeroEv.exit.thread:   ; preds = %bb.a, %.split32, %.split, %_ZNK5clang6interp7Pointer6isZeroEv.exit
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.z = load i32, ptr %i.y, align 8, !tbaa !135
  %.not.i26 = icmp eq i32 %i.z, 0
  br i1 %.not.i26, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNK5clang6interp7Pointer6isZeroEv.exit.thread
  %i.aa = call noundef zeroext i1 @_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(48) %3) #24
  br i1 %i.aa, label %bb.d, label %bb.s

bb.d:                                             ; preds = %.split32, %.split, %bb.c, %_ZNK5clang6interp7Pointer6isZeroEv.exit.thread, %_ZNK5clang6interp7Pointer6isZeroEv.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !135
  %.not.i27 = icmp eq i32 %i.ac, 0
  br i1 %.not.i27, label %bb.e, label %bb.p

bb.e:                                             ; preds = %bb.d
  %i.ad = load i32, ptr %i.l, align 8, !tbaa !362 ; 3 uses
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = icmp ne i32 %i.ad, 1
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8            ; 9 uses
  %i.ai = icmp eq ptr %i.ah, null                 ; 2 uses
  %or.cond.i.i = select i1 %i.af, i1 true, i1 %i.ai
  br i1 %or.cond.i.i, label %bb.g, label %_ZNK5clang6interp7Pointer6isRootEv.exit.i

_ZNK5clang6interp7Pointer6isRootEv.exit.i:        ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !135, !noalias !1801 ; 2 uses
  %i.al = load ptr, ptr %i.ah, align 8, !tbaa !125 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = load i32, ptr %i.am, align 8, !tbaa !131
  %i.ao = icmp eq i32 %i.ak, %i.an
  br i1 %i.ao, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread35, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ap = icmp eq i32 %i.ad, 1
  br i1 %i.ap, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread

bb.h:                                             ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i
  %i.aq = zext i32 %i.ak to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  br label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit

_ZNK5clang6interp7Pointer12getFieldDescEv.exit:   ; preds = %bb.g, %bb.h
  %.0.i28.in = phi ptr [ %i.as, %bb.h ], [ %i.ah, %bb.g ]
  %.0.i28 = load ptr, ptr %.0.i28.in, align 8, !tbaa !1418 ; 2 uses
  %.not = icmp eq ptr %.0.i28, null
  br i1 %.not, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread35

_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread35: ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit
  %.0.i2838 = phi ptr [ %.0.i28, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit ], [ %i.al, %_ZNK5clang6interp7Pointer6isRootEv.exit.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %.0.i2838, i64 53
  %i.au = load i8, ptr %i.at, align 1, !tbaa !170, !range !123, !noundef !124
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %bb.i, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread

bb.i:                                             ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread35
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !135, !noalias !1804 ; 7 uses
  %i.ay = load i64, ptr %3, align 8, !tbaa !163, !noalias !1804 ; 2 uses
  %9 = xor i1 %i.ai, true
  call void @llvm.assume(i1 %9)
  %i.az = icmp ugt i32 %i.ax, 16
  %i.ba = zext i32 %i.ax to i64                   ; 4 uses
  %i.bb = icmp eq i64 %i.ay, %i.ba                ; 2 uses
  %or.cond.i.i30 = select i1 %i.az, i1 %i.bb, i1 false
  %.pre41 = load ptr, ptr %i.ah, align 8, !tbaa !125 ; 5 uses
  br i1 %or.cond.i.i30, label %_ZNK5clang6interp7Pointer8getIndexEv.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.pre41, i64 24
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !131
  %i.be = icmp eq i32 %i.ax, %i.bd                ; 2 uses
  br i1 %i.be, label %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ba
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !167
  br label %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.i

_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.i:    ; preds = %bb.k, %bb.j
  %.0.i.i.i.i = phi ptr [ %i.bh, %bb.k ], [ %.pre41, %bb.j ]
  %i.bi = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 16
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !1434 ; 2 uses
  %.not.not.i.i = icmp eq i32 %i.bj, 0
  br i1 %.not.not.i.i, label %_ZNK5clang6interp7Pointer8getIndexEv.exit.thread, label %bb.l

bb.l:                                             ; preds = %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.i
  br i1 %i.bb, label %_ZNK5clang6interp7Pointer8getIndexEv.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  br i1 %i.be, label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ba
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !167
  br label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i

_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i8.i.i = phi ptr [ %i.bm, %bb.n ], [ %.pre41, %bb.m ]
  %i.bn = getelementptr inbounds nuw i8, ptr %.0.i.i8.i.i, i64 40
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !1080
  %.not1.i.i.i = icmp eq ptr %i.bo, null
  %..i.i.i = select i1 %.not1.i.i.i, i64 -8, i64 -16
  br label %_ZNK5clang6interp7Pointer8getIndexEv.exit

_ZNK5clang6interp7Pointer8getIndexEv.exit:        ; preds = %bb.l, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i
  %.0.neg.i.i.i = phi i64 [ %..i.i.i, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i ], [ 0, %bb.l ]
  %i.bp = sub i64 %i.ay, %i.ba
  %i.bq = add i64 %i.bp, %.0.neg.i.i.i
  %i.br = trunc i64 %i.bq to i32
  %i.bs = icmp ugt i32 %i.bj, %i.br
  br i1 %i.bs, label %_ZNK5clang6interp7Pointer8getIndexEv.exit.thread, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread

_ZNK5clang6interp7Pointer8getIndexEv.exit.thread: ; preds = %bb.i, %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.i, %_ZNK5clang6interp7Pointer8getIndexEv.exit
  %i.bt = load ptr, ptr %i.a, align 8, !tbaa !354, !nonnull !124, !align !142
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.bu = getelementptr inbounds nuw i8, ptr %.pre41, i64 24
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !131, !noalias !1807
  %i.bw = icmp eq i32 %i.ax, %i.bv
  br i1 %i.bw, label %_ZNK5clang6interp7Pointer7atIndexEm.exit, label %bb.o

bb.o:                                             ; preds = %_ZNK5clang6interp7Pointer8getIndexEv.exit.thread
  %i.bx = zext i32 %i.ax to i64
  %i.by = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !167, !noalias !1807
  br label %_ZNK5clang6interp7Pointer7atIndexEm.exit

_ZNK5clang6interp7Pointer7atIndexEm.exit:         ; preds = %_ZNK5clang6interp7Pointer8getIndexEv.exit.thread, %bb.o
  %.pn5.i.i = phi ptr [ %i.ca, %bb.o ], [ %.pre41, %_ZNK5clang6interp7Pointer8getIndexEv.exit.thread ]
  %i.cb = getelementptr inbounds nuw i8, ptr %.pn5.i.i, i64 40
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !1080, !noalias !1807
  %.not.i.i = icmp eq ptr %i.cc, null
  %.0.v.i.i = select i1 %.not.i.i, i32 8, i32 16
  %i.cd = add i32 %.0.v.i.i, %i.ax
  %i.ce = zext i32 %i.cd to i64
  call void @_ZN5clang6interp7PointerC2EPNS0_5BlockEjm(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull %i.ah, i32 noundef %i.ax, i64 noundef %i.ce) #24
  call void @_ZNK5clang6interp7Pointer6narrowEv(ptr dead_on_unwind nonnull writable sret(%"class.clang::interp::Pointer") align 8 %4, ptr noundef nonnull align 8 dereferenceable(48) %5)
  call void @_ZN5clang6interp11InterpStack4pushINS0_7PointerEJS3_EEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(80) %i.bt, ptr noundef nonnull align 8 dereferenceable(48) %4)
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %4) #24
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.s

_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread: ; preds = %bb.g, %bb.e, %_ZNK5clang6interp7Pointer8getIndexEv.exit, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread35, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit
  %i.cf = load ptr, ptr %i.a, align 8, !tbaa !354, !nonnull !124, !align !142
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @_ZNK5clang6interp7Pointer6narrowEv(ptr dead_on_unwind nonnull writable sret(%"class.clang::interp::Pointer") align 8 %6, ptr noundef nonnull align 8 dereferenceable(48) %3)
  call void @_ZN5clang6interp11InterpStack4pushINS0_7PointerEJS3_EEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(80) %i.cf, ptr noundef nonnull align 8 dereferenceable(48) %6)
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.s

bb.p:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @_ZN5clang6interp12OffsetHelperINS0_8IntegralILj32ELb0EEELNS0_7ArithOpE0EEESt8optionalINS0_7PointerEERNS0_11InterpStateENS0_7CodePtrERKT_RKS6_b(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.599") align 8 %7, ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(48) %3, i1 noundef zeroext false)
  %i.cg = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 3 uses
  %i.ch = load i8, ptr %i.cg, align 8, !tbaa !883, !range !123, !noundef !124
  %i.ci = trunc nuw i8 %i.ch to i1                ; 2 uses
  br i1 %i.ci, label %bb.q, label %_ZNSt14_Optional_baseIN5clang6interp7PointerELb0ELb0EED2Ev.exit

bb.q:                                             ; preds = %bb.p
  %i.cj = load ptr, ptr %i.a, align 8, !tbaa !354, !nonnull !124, !align !142
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @_ZNK5clang6interp7Pointer6narrowEv(ptr dead_on_unwind nonnull writable sret(%"class.clang::interp::Pointer") align 8 %8, ptr noundef nonnull align 8 dereferenceable(48) %7)
  call void @_ZN5clang6interp11InterpStack4pushINS0_7PointerEJS3_EEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(80) %i.cj, ptr noundef nonnull align 8 dereferenceable(48) %8)
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %.pre = load i8, ptr %i.cg, align 8, !tbaa !883, !range !123
  %i.ck = trunc nuw i8 %.pre to i1
  store i8 0, ptr %i.cg, align 8, !tbaa !883
  br i1 %i.ck, label %bb.r, label %_ZNSt14_Optional_baseIN5clang6interp7PointerELb0ELb0EED2Ev.exit

bb.r:                                             ; preds = %bb.q
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(56) %7) #24
  br label %_ZNSt14_Optional_baseIN5clang6interp7PointerELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN5clang6interp7PointerELb0ELb0EED2Ev.exit: ; preds = %bb.p, %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %bb.s

bb.s:                                             ; preds = %_ZNSt14_Optional_baseIN5clang6interp7PointerELb0ELb0EED2Ev.exit, %_ZNK5clang6interp7Pointer7atIndexEm.exit, %bb.c, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread
  %.2 = phi i1 [ true, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread ], [ true, %_ZNK5clang6interp7Pointer7atIndexEm.exit ], [ false, %bb.c ], [ %i.ci, %_ZNSt14_Optional_baseIN5clang6interp7PointerELb0ELb0EED2Ev.exit ]
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret i1 %.2
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5clang6interp15ArrayElemPtrPopILNS0_8PrimTypeE6ENS0_8IntegralILj64ELb1EEEEEbRNS0_11InterpStateENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1) local_unnamed_addr #9 comdat {
bb.a:
  %2 = alloca %"class.clang::interp::Integral.562", align 8 ; 6 uses
  %3 = alloca %"class.clang::interp::Pointer", align 8 ; 16 uses
  %4 = alloca %"class.clang::interp::Pointer", align 8 ; 5 uses
  %5 = alloca %"class.clang::interp::Pointer", align 8 ; 5 uses
  %6 = alloca %"class.clang::interp::Pointer", align 8 ; 5 uses
  %7 = alloca %"class.std::optional.599", align 8 ; 6 uses
  %8 = alloca %"class.clang::interp::Pointer", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !354, !nonnull !124, !align !142 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !334, !noalias !1812
  %i.e = add i64 %i.d, -1
  store i64 %i.e, ptr %i.c, align 8, !tbaa !334, !noalias !1812
  %i.f = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 24) #24, !noalias !1812
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !tbaa.struct !828
  tail call void @_ZN5clang6interp11InterpStack6shrinkEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 24) #24, !noalias !1812
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !354, !nonnull !124, !align !142 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !334, !noalias !1815
  %i.j = add i64 %i.i, -1
  store i64 %i.j, ptr %i.h, align 8, !tbaa !334, !noalias !1815
  %i.k = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 noundef 48) #24, !noalias !1815
  call void @_ZN5clang6interp7PointerC1EOS1_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(48) %i.k) #24
  call void @_ZN5clang6interp11InterpStack6shrinkEm(ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 noundef 48) #24
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !362
  switch i32 %i.m, label %bb.b [
    i32 0, label %.split
    i32 1, label %_ZNK5clang6interp7Pointer6isZeroEv.exit
    i32 2, label %.split32
    i32 3, label %_ZNK5clang6interp7Pointer6isZeroEv.exit.thread
  ]

.split:                                           ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.o = load i64, ptr %i.n, align 8, !tbaa !135
  %i.p = icmp eq i64 %i.o, 0
  %i.q = load i64, ptr %3, align 8
  %i.r = icmp eq i64 %i.q, 0
  %i.s = select i1 %i.p, i1 %i.r, i1 false
  br i1 %i.s, label %bb.d, label %_ZNK5clang6interp7Pointer6isZeroEv.exit.thread

.split32:                                         ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !135
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %bb.d, label %_ZNK5clang6interp7Pointer6isZeroEv.exit.thread

bb.b:                                             ; preds = %bb.a
  unreachable

_ZNK5clang6interp7Pointer6isZeroEv.exit:          ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !135
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.d, label %_ZNK5clang6interp7Pointer6isZeroEv.exit.thread

_ZNK5clang6interp7Pointer6isZeroEv.exit.thread:   ; preds = %bb.a, %.split32, %.split, %_ZNK5clang6interp7Pointer6isZeroEv.exit
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !135
  %.not.i26 = icmp eq i64 %i.z, 0
  br i1 %.not.i26, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNK5clang6interp7Pointer6isZeroEv.exit.thread
  %i.aa = call noundef zeroext i1 @_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(48) %3) #24
  br i1 %i.aa, label %bb.d, label %bb.s

bb.d:                                             ; preds = %.split32, %.split, %bb.c, %_ZNK5clang6interp7Pointer6isZeroEv.exit.thread, %_ZNK5clang6interp7Pointer6isZeroEv.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !135
  %.not.i27 = icmp eq i64 %i.ac, 0
  br i1 %.not.i27, label %bb.e, label %bb.p

bb.e:                                             ; preds = %bb.d
  %i.ad = load i32, ptr %i.l, align 8, !tbaa !362 ; 3 uses
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = icmp ne i32 %i.ad, 1
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8            ; 9 uses
  %i.ai = icmp eq ptr %i.ah, null                 ; 2 uses
  %or.cond.i.i = select i1 %i.af, i1 true, i1 %i.ai
  br i1 %or.cond.i.i, label %bb.g, label %_ZNK5clang6interp7Pointer6isRootEv.exit.i

_ZNK5clang6interp7Pointer6isRootEv.exit.i:        ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !135, !noalias !1818 ; 2 uses
  %i.al = load ptr, ptr %i.ah, align 8, !tbaa !125 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = load i32, ptr %i.am, align 8, !tbaa !131
  %i.ao = icmp eq i32 %i.ak, %i.an
  br i1 %i.ao, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread35, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ap = icmp eq i32 %i.ad, 1
  br i1 %i.ap, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread

bb.h:                                             ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i
  %i.aq = zext i32 %i.ak to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  br label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit

_ZNK5clang6interp7Pointer12getFieldDescEv.exit:   ; preds = %bb.g, %bb.h
  %.0.i28.in = phi ptr [ %i.as, %bb.h ], [ %i.ah, %bb.g ]
  %.0.i28 = load ptr, ptr %.0.i28.in, align 8, !tbaa !1418 ; 2 uses
  %.not = icmp eq ptr %.0.i28, null
  br i1 %.not, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread35

_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread35: ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit
  %.0.i2838 = phi ptr [ %.0.i28, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit ], [ %i.al, %_ZNK5clang6interp7Pointer6isRootEv.exit.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %.0.i2838, i64 53
  %i.au = load i8, ptr %i.at, align 1, !tbaa !170, !range !123, !noundef !124
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %bb.i, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread

bb.i:                                             ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread35
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !135, !noalias !1821 ; 7 uses
  %i.ay = load i64, ptr %3, align 8, !tbaa !163, !noalias !1821 ; 2 uses
  %9 = xor i1 %i.ai, true
  call void @llvm.assume(i1 %9)
  %i.az = icmp ugt i32 %i.ax, 16
  %i.ba = zext i32 %i.ax to i64                   ; 4 uses
  %i.bb = icmp eq i64 %i.ay, %i.ba                ; 2 uses
  %or.cond.i.i30 = select i1 %i.az, i1 %i.bb, i1 false
  %.pre41 = load ptr, ptr %i.ah, align 8, !tbaa !125 ; 5 uses
  br i1 %or.cond.i.i30, label %_ZNK5clang6interp7Pointer8getIndexEv.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.pre41, i64 24
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !131
  %i.be = icmp eq i32 %i.ax, %i.bd                ; 2 uses
  br i1 %i.be, label %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ba
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !167
  br label %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.i

_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.i:    ; preds = %bb.k, %bb.j
  %.0.i.i.i.i = phi ptr [ %i.bh, %bb.k ], [ %.pre41, %bb.j ]
  %i.bi = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 16
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !1434 ; 2 uses
  %.not.not.i.i = icmp eq i32 %i.bj, 0
  br i1 %.not.not.i.i, label %_ZNK5clang6interp7Pointer8getIndexEv.exit.thread, label %bb.l

bb.l:                                             ; preds = %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.i
  br i1 %i.bb, label %_ZNK5clang6interp7Pointer8getIndexEv.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  br i1 %i.be, label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ba
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !167
  br label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i

_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i8.i.i = phi ptr [ %i.bm, %bb.n ], [ %.pre41, %bb.m ]
  %i.bn = getelementptr inbounds nuw i8, ptr %.0.i.i8.i.i, i64 40
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !1080
  %.not1.i.i.i = icmp eq ptr %i.bo, null
  %..i.i.i = select i1 %.not1.i.i.i, i64 -8, i64 -16
  br label %_ZNK5clang6interp7Pointer8getIndexEv.exit

_ZNK5clang6interp7Pointer8getIndexEv.exit:        ; preds = %bb.l, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i
  %.0.neg.i.i.i = phi i64 [ %..i.i.i, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i ], [ 0, %bb.l ]
  %i.bp = sub i64 %i.ay, %i.ba
  %i.bq = add i64 %i.bp, %.0.neg.i.i.i
  %i.br = trunc i64 %i.bq to i32
  %i.bs = icmp ugt i32 %i.bj, %i.br
  br i1 %i.bs, label %_ZNK5clang6interp7Pointer8getIndexEv.exit.thread, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread

_ZNK5clang6interp7Pointer8getIndexEv.exit.thread: ; preds = %bb.i, %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.i, %_ZNK5clang6interp7Pointer8getIndexEv.exit
  %i.bt = load ptr, ptr %i.a, align 8, !tbaa !354, !nonnull !124, !align !142
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.bu = getelementptr inbounds nuw i8, ptr %.pre41, i64 24
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !131, !noalias !1824
  %i.bw = icmp eq i32 %i.ax, %i.bv
  br i1 %i.bw, label %_ZNK5clang6interp7Pointer7atIndexEm.exit, label %bb.o

bb.o:                                             ; preds = %_ZNK5clang6interp7Pointer8getIndexEv.exit.thread
  %i.bx = zext i32 %i.ax to i64
  %i.by = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !167, !noalias !1824
  br label %_ZNK5clang6interp7Pointer7atIndexEm.exit

_ZNK5clang6interp7Pointer7atIndexEm.exit:         ; preds = %_ZNK5clang6interp7Pointer8getIndexEv.exit.thread, %bb.o
  %.pn5.i.i = phi ptr [ %i.ca, %bb.o ], [ %.pre41, %_ZNK5clang6interp7Pointer8getIndexEv.exit.thread ]
  %i.cb = getelementptr inbounds nuw i8, ptr %.pn5.i.i, i64 40
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !1080, !noalias !1824
  %.not.i.i = icmp eq ptr %i.cc, null
  %.0.v.i.i = select i1 %.not.i.i, i32 8, i32 16
  %i.cd = add i32 %.0.v.i.i, %i.ax
  %i.ce = zext i32 %i.cd to i64
  call void @_ZN5clang6interp7PointerC2EPNS0_5BlockEjm(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull %i.ah, i32 noundef %i.ax, i64 noundef %i.ce) #24
  call void @_ZNK5clang6interp7Pointer6narrowEv(ptr dead_on_unwind nonnull writable sret(%"class.clang::interp::Pointer") align 8 %4, ptr noundef nonnull align 8 dereferenceable(48) %5)
  call void @_ZN5clang6interp11InterpStack4pushINS0_7PointerEJS3_EEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(80) %i.bt, ptr noundef nonnull align 8 dereferenceable(48) %4)
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %4) #24
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.s

_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread: ; preds = %bb.g, %bb.e, %_ZNK5clang6interp7Pointer8getIndexEv.exit, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread35, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit
  %i.cf = load ptr, ptr %i.a, align 8, !tbaa !354, !nonnull !124, !align !142
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @_ZNK5clang6interp7Pointer6narrowEv(ptr dead_on_unwind nonnull writable sret(%"class.clang::interp::Pointer") align 8 %6, ptr noundef nonnull align 8 dereferenceable(48) %3)
  call void @_ZN5clang6interp11InterpStack4pushINS0_7PointerEJS3_EEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(80) %i.cf, ptr noundef nonnull align 8 dereferenceable(48) %6)
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.s

bb.p:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @_ZN5clang6interp12OffsetHelperINS0_8IntegralILj64ELb1EEELNS0_7ArithOpE0EEESt8optionalINS0_7PointerEERNS0_11InterpStateENS0_7CodePtrERKT_RKS6_b(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.599") align 8 %7, ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(48) %3, i1 noundef zeroext false)
  %i.cg = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 3 uses
  %i.ch = load i8, ptr %i.cg, align 8, !tbaa !883, !range !123, !noundef !124
  %i.ci = trunc nuw i8 %i.ch to i1                ; 2 uses
  br i1 %i.ci, label %bb.q, label %_ZNSt14_Optional_baseIN5clang6interp7PointerELb0ELb0EED2Ev.exit

bb.q:                                             ; preds = %bb.p
  %i.cj = load ptr, ptr %i.a, align 8, !tbaa !354, !nonnull !124, !align !142
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @_ZNK5clang6interp7Pointer6narrowEv(ptr dead_on_unwind nonnull writable sret(%"class.clang::interp::Pointer") align 8 %8, ptr noundef nonnull align 8 dereferenceable(48) %7)
  call void @_ZN5clang6interp11InterpStack4pushINS0_7PointerEJS3_EEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(80) %i.cj, ptr noundef nonnull align 8 dereferenceable(48) %8)
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %.pre = load i8, ptr %i.cg, align 8, !tbaa !883, !range !123
  %i.ck = trunc nuw i8 %.pre to i1
  store i8 0, ptr %i.cg, align 8, !tbaa !883
  br i1 %i.ck, label %bb.r, label %_ZNSt14_Optional_baseIN5clang6interp7PointerELb0ELb0EED2Ev.exit

bb.r:                                             ; preds = %bb.q
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(56) %7) #24
  br label %_ZNSt14_Optional_baseIN5clang6interp7PointerELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN5clang6interp7PointerELb0ELb0EED2Ev.exit: ; preds = %bb.p, %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %bb.s

bb.s:                                             ; preds = %_ZNSt14_Optional_baseIN5clang6interp7PointerELb0ELb0EED2Ev.exit, %_ZNK5clang6interp7Pointer7atIndexEm.exit, %bb.c, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread
  %.2 = phi i1 [ true, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread ], [ true, %_ZNK5clang6interp7Pointer7atIndexEm.exit ], [ false, %bb.c ], [ %i.ci, %_ZNSt14_Optional_baseIN5clang6interp7PointerELb0ELb0EED2Ev.exit ]
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret i1 %.2
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5clang6interp15ArrayElemPtrPopILNS0_8PrimTypeE7ENS0_8IntegralILj64ELb0EEEEEbRNS0_11InterpStateENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1) local_unnamed_addr #9 comdat {
bb.a:
  %2 = alloca %"class.clang::interp::Integral.566", align 8 ; 6 uses
  %3 = alloca %"class.clang::interp::Pointer", align 8 ; 16 uses
  %4 = alloca %"class.clang::interp::Pointer", align 8 ; 5 uses
  %5 = alloca %"class.clang::interp::Pointer", align 8 ; 5 uses
  %6 = alloca %"class.clang::interp::Pointer", align 8 ; 5 uses
  %7 = alloca %"class.std::optional.599", align 8 ; 6 uses
  %8 = alloca %"class.clang::interp::Pointer", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !354, !nonnull !124, !align !142 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !334, !noalias !1829
  %i.e = add i64 %i.d, -1
  store i64 %i.e, ptr %i.c, align 8, !tbaa !334, !noalias !1829
  %i.f = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 24) #24, !noalias !1829
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !tbaa.struct !828
  tail call void @_ZN5clang6interp11InterpStack6shrinkEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 24) #24, !noalias !1829
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !354, !nonnull !124, !align !142 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !334, !noalias !1832
  %i.j = add i64 %i.i, -1
  store i64 %i.j, ptr %i.h, align 8, !tbaa !334, !noalias !1832
  %i.k = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 noundef 48) #24, !noalias !1832
  call void @_ZN5clang6interp7PointerC1EOS1_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(48) %i.k) #24
  call void @_ZN5clang6interp11InterpStack6shrinkEm(ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 noundef 48) #24
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !362
  switch i32 %i.m, label %bb.b [
    i32 0, label %.split
    i32 1, label %_ZNK5clang6interp7Pointer6isZeroEv.exit
    i32 2, label %.split32
    i32 3, label %_ZNK5clang6interp7Pointer6isZeroEv.exit.thread
  ]

.split:                                           ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.o = load i64, ptr %i.n, align 8, !tbaa !135
  %i.p = icmp eq i64 %i.o, 0
  %i.q = load i64, ptr %3, align 8
  %i.r = icmp eq i64 %i.q, 0
  %i.s = select i1 %i.p, i1 %i.r, i1 false
  br i1 %i.s, label %bb.d, label %_ZNK5clang6interp7Pointer6isZeroEv.exit.thread

.split32:                                         ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !135
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %bb.d, label %_ZNK5clang6interp7Pointer6isZeroEv.exit.thread

bb.b:                                             ; preds = %bb.a
  unreachable

_ZNK5clang6interp7Pointer6isZeroEv.exit:          ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !135
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.d, label %_ZNK5clang6interp7Pointer6isZeroEv.exit.thread

_ZNK5clang6interp7Pointer6isZeroEv.exit.thread:   ; preds = %bb.a, %.split32, %.split, %_ZNK5clang6interp7Pointer6isZeroEv.exit
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !135
  %.not.i26 = icmp eq i64 %i.z, 0
  br i1 %.not.i26, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNK5clang6interp7Pointer6isZeroEv.exit.thread
  %i.aa = call noundef zeroext i1 @_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(48) %3) #24
  br i1 %i.aa, label %bb.d, label %bb.s

bb.d:                                             ; preds = %.split32, %.split, %bb.c, %_ZNK5clang6interp7Pointer6isZeroEv.exit.thread, %_ZNK5clang6interp7Pointer6isZeroEv.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !135
  %.not.i27 = icmp eq i64 %i.ac, 0
  br i1 %.not.i27, label %bb.e, label %bb.p

bb.e:                                             ; preds = %bb.d
  %i.ad = load i32, ptr %i.l, align 8, !tbaa !362 ; 3 uses
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = icmp ne i32 %i.ad, 1
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8            ; 9 uses
  %i.ai = icmp eq ptr %i.ah, null                 ; 2 uses
  %or.cond.i.i = select i1 %i.af, i1 true, i1 %i.ai
  br i1 %or.cond.i.i, label %bb.g, label %_ZNK5clang6interp7Pointer6isRootEv.exit.i

_ZNK5clang6interp7Pointer6isRootEv.exit.i:        ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !135, !noalias !1835 ; 2 uses
  %i.al = load ptr, ptr %i.ah, align 8, !tbaa !125 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = load i32, ptr %i.am, align 8, !tbaa !131
  %i.ao = icmp eq i32 %i.ak, %i.an
  br i1 %i.ao, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread35, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ap = icmp eq i32 %i.ad, 1
  br i1 %i.ap, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread

bb.h:                                             ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i
  %i.aq = zext i32 %i.ak to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  br label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit

_ZNK5clang6interp7Pointer12getFieldDescEv.exit:   ; preds = %bb.g, %bb.h
  %.0.i28.in = phi ptr [ %i.as, %bb.h ], [ %i.ah, %bb.g ]
  %.0.i28 = load ptr, ptr %.0.i28.in, align 8, !tbaa !1418 ; 2 uses
  %.not = icmp eq ptr %.0.i28, null
  br i1 %.not, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread35

_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread35: ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit
  %.0.i2838 = phi ptr [ %.0.i28, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit ], [ %i.al, %_ZNK5clang6interp7Pointer6isRootEv.exit.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %.0.i2838, i64 53
  %i.au = load i8, ptr %i.at, align 1, !tbaa !170, !range !123, !noundef !124
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %bb.i, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread

bb.i:                                             ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread35
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !135, !noalias !1838 ; 7 uses
  %i.ay = load i64, ptr %3, align 8, !tbaa !163, !noalias !1838 ; 2 uses
  %9 = xor i1 %i.ai, true
  call void @llvm.assume(i1 %9)
  %i.az = icmp ugt i32 %i.ax, 16
  %i.ba = zext i32 %i.ax to i64                   ; 4 uses
  %i.bb = icmp eq i64 %i.ay, %i.ba                ; 2 uses
  %or.cond.i.i30 = select i1 %i.az, i1 %i.bb, i1 false
  %.pre41 = load ptr, ptr %i.ah, align 8, !tbaa !125 ; 5 uses
  br i1 %or.cond.i.i30, label %_ZNK5clang6interp7Pointer8getIndexEv.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.pre41, i64 24
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !131
  %i.be = icmp eq i32 %i.ax, %i.bd                ; 2 uses
  br i1 %i.be, label %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ba
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !167
  br label %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.i

_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.i:    ; preds = %bb.k, %bb.j
  %.0.i.i.i.i = phi ptr [ %i.bh, %bb.k ], [ %.pre41, %bb.j ]
  %i.bi = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 16
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !1434 ; 2 uses
  %.not.not.i.i = icmp eq i32 %i.bj, 0
  br i1 %.not.not.i.i, label %_ZNK5clang6interp7Pointer8getIndexEv.exit.thread, label %bb.l

bb.l:                                             ; preds = %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.i
  br i1 %i.bb, label %_ZNK5clang6interp7Pointer8getIndexEv.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  br i1 %i.be, label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ba
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !167
  br label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i

_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i8.i.i = phi ptr [ %i.bm, %bb.n ], [ %.pre41, %bb.m ]
  %i.bn = getelementptr inbounds nuw i8, ptr %.0.i.i8.i.i, i64 40
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !1080
  %.not1.i.i.i = icmp eq ptr %i.bo, null
  %..i.i.i = select i1 %.not1.i.i.i, i64 -8, i64 -16
  br label %_ZNK5clang6interp7Pointer8getIndexEv.exit

_ZNK5clang6interp7Pointer8getIndexEv.exit:        ; preds = %bb.l, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i
  %.0.neg.i.i.i = phi i64 [ %..i.i.i, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i ], [ 0, %bb.l ]
  %i.bp = sub i64 %i.ay, %i.ba
  %i.bq = add i64 %i.bp, %.0.neg.i.i.i
  %i.br = trunc i64 %i.bq to i32
  %i.bs = icmp ugt i32 %i.bj, %i.br
  br i1 %i.bs, label %_ZNK5clang6interp7Pointer8getIndexEv.exit.thread, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread

_ZNK5clang6interp7Pointer8getIndexEv.exit.thread: ; preds = %bb.i, %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.i, %_ZNK5clang6interp7Pointer8getIndexEv.exit
  %i.bt = load ptr, ptr %i.a, align 8, !tbaa !354, !nonnull !124, !align !142
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.bu = getelementptr inbounds nuw i8, ptr %.pre41, i64 24
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !131, !noalias !1841
  %i.bw = icmp eq i32 %i.ax, %i.bv
  br i1 %i.bw, label %_ZNK5clang6interp7Pointer7atIndexEm.exit, label %bb.o

bb.o:                                             ; preds = %_ZNK5clang6interp7Pointer8getIndexEv.exit.thread
  %i.bx = zext i32 %i.ax to i64
  %i.by = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !167, !noalias !1841
  br label %_ZNK5clang6interp7Pointer7atIndexEm.exit

_ZNK5clang6interp7Pointer7atIndexEm.exit:         ; preds = %_ZNK5clang6interp7Pointer8getIndexEv.exit.thread, %bb.o
  %.pn5.i.i = phi ptr [ %i.ca, %bb.o ], [ %.pre41, %_ZNK5clang6interp7Pointer8getIndexEv.exit.thread ]
  %i.cb = getelementptr inbounds nuw i8, ptr %.pn5.i.i, i64 40
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !1080, !noalias !1841
  %.not.i.i = icmp eq ptr %i.cc, null
  %.0.v.i.i = select i1 %.not.i.i, i32 8, i32 16
  %i.cd = add i32 %.0.v.i.i, %i.ax
  %i.ce = zext i32 %i.cd to i64
  call void @_ZN5clang6interp7PointerC2EPNS0_5BlockEjm(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull %i.ah, i32 noundef %i.ax, i64 noundef %i.ce) #24
  call void @_ZNK5clang6interp7Pointer6narrowEv(ptr dead_on_unwind nonnull writable sret(%"class.clang::interp::Pointer") align 8 %4, ptr noundef nonnull align 8 dereferenceable(48) %5)
  call void @_ZN5clang6interp11InterpStack4pushINS0_7PointerEJS3_EEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(80) %i.bt, ptr noundef nonnull align 8 dereferenceable(48) %4)
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %4) #24
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.s

_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread: ; preds = %bb.g, %bb.e, %_ZNK5clang6interp7Pointer8getIndexEv.exit, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread35, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit
  %i.cf = load ptr, ptr %i.a, align 8, !tbaa !354, !nonnull !124, !align !142
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @_ZNK5clang6interp7Pointer6narrowEv(ptr dead_on_unwind nonnull writable sret(%"class.clang::interp::Pointer") align 8 %6, ptr noundef nonnull align 8 dereferenceable(48) %3)
  call void @_ZN5clang6interp11InterpStack4pushINS0_7PointerEJS3_EEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(80) %i.cf, ptr noundef nonnull align 8 dereferenceable(48) %6)
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.s

bb.p:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @_ZN5clang6interp12OffsetHelperINS0_8IntegralILj64ELb0EEELNS0_7ArithOpE0EEESt8optionalINS0_7PointerEERNS0_11InterpStateENS0_7CodePtrERKT_RKS6_b(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.599") align 8 %7, ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(48) %3, i1 noundef zeroext false)
  %i.cg = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 3 uses
  %i.ch = load i8, ptr %i.cg, align 8, !tbaa !883, !range !123, !noundef !124
  %i.ci = trunc nuw i8 %i.ch to i1                ; 2 uses
  br i1 %i.ci, label %bb.q, label %_ZNSt14_Optional_baseIN5clang6interp7PointerELb0ELb0EED2Ev.exit

bb.q:                                             ; preds = %bb.p
  %i.cj = load ptr, ptr %i.a, align 8, !tbaa !354, !nonnull !124, !align !142
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @_ZNK5clang6interp7Pointer6narrowEv(ptr dead_on_unwind nonnull writable sret(%"class.clang::interp::Pointer") align 8 %8, ptr noundef nonnull align 8 dereferenceable(48) %7)
  call void @_ZN5clang6interp11InterpStack4pushINS0_7PointerEJS3_EEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(80) %i.cj, ptr noundef nonnull align 8 dereferenceable(48) %8)
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %.pre = load i8, ptr %i.cg, align 8, !tbaa !883, !range !123
  %i.ck = trunc nuw i8 %.pre to i1
  store i8 0, ptr %i.cg, align 8, !tbaa !883
  br i1 %i.ck, label %bb.r, label %_ZNSt14_Optional_baseIN5clang6interp7PointerELb0ELb0EED2Ev.exit

bb.r:                                             ; preds = %bb.q
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(56) %7) #24
  br label %_ZNSt14_Optional_baseIN5clang6interp7PointerELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN5clang6interp7PointerELb0ELb0EED2Ev.exit: ; preds = %bb.p, %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %bb.s

bb.s:                                             ; preds = %_ZNSt14_Optional_baseIN5clang6interp7PointerELb0ELb0EED2Ev.exit, %_ZNK5clang6interp7Pointer7atIndexEm.exit, %bb.c, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread
  %.2 = phi i1 [ true, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread ], [ true, %_ZNK5clang6interp7Pointer7atIndexEm.exit ], [ false, %bb.c ], [ %i.ci, %_ZNSt14_Optional_baseIN5clang6interp7PointerELb0ELb0EED2Ev.exit ]
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret i1 %.2
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5clang6interp15ArrayElemPtrPopILNS0_8PrimTypeE8ENS0_10IntegralAPILb0EEEEEbRNS0_11InterpStateENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1) local_unnamed_addr #9 comdat {
bb.a:
  %2 = alloca %"class.llvm::APInt", align 8       ; 10 uses
  %3 = alloca %"class.llvm::APInt", align 8       ; 9 uses
  %4 = alloca %"class.clang::interp::IntegralAP", align 8 ; 5 uses
  %5 = alloca %"class.clang::interp::Pointer", align 8 ; 16 uses
  %6 = alloca %"class.clang::interp::Pointer", align 8 ; 5 uses
  %7 = alloca %"class.clang::interp::Pointer", align 8 ; 5 uses
  %8 = alloca %"class.clang::interp::Pointer", align 8 ; 5 uses
  %9 = alloca %"class.std::optional.599", align 8 ; 6 uses
  %10 = alloca %"class.clang::interp::Pointer", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !354, !nonnull !124, !align !142 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !334
  %i.e = add i64 %i.d, -1
  store i64 %i.e, ptr %i.c, align 8, !tbaa !334
  %i.f = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 16) #24 ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.f, align 8, !tbaa !135 ; 4 uses
  %.sroa.2.0..0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.2.0.copyload.i = load i32, ptr %.sroa.2.0..0..sroa_idx.i, align 8, !tbaa !133 ; 7 uses
  tail call void @_ZN5clang6interp11InterpStack6shrinkEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 16) #24
  store ptr %.sroa.0.0.copyload.i, ptr %4, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %.sroa.2.0.copyload.i, ptr %.sroa.2.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !354, !nonnull !124, !align !142 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !334, !noalias !1846
  %i.j = add i64 %i.i, -1
  store i64 %i.j, ptr %i.h, align 8, !tbaa !334, !noalias !1846
  %i.k = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 noundef 48) #24, !noalias !1846
  call void @_ZN5clang6interp7PointerC1EOS1_(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(48) %i.k) #24
  call void @_ZN5clang6interp11InterpStack6shrinkEm(ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 noundef 48) #24
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !362
  %i.n = ptrtoint ptr %.sroa.0.0.copyload.i to i64 ; 2 uses
  switch i32 %i.m, label %bb.b [
    i32 0, label %.split
    i32 1, label %_ZNK5clang6interp7Pointer6isZeroEv.exit
    i32 2, label %.split39
    i32 3, label %_ZNK5clang6interp7Pointer6isZeroEv.exit.thread
  ]

.split:                                           ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.p = load i64, ptr %i.o, align 8, !tbaa !135
  %i.q = icmp eq i64 %i.p, 0
  %i.r = load i64, ptr %5, align 8
  %i.s = icmp eq i64 %i.r, 0
  %i.t = select i1 %i.q, i1 %i.s, i1 false
  br i1 %i.t, label %bb.e, label %_ZNK5clang6interp7Pointer6isZeroEv.exit.thread

.split39:                                         ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !135
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %bb.e, label %_ZNK5clang6interp7Pointer6isZeroEv.exit.thread

bb.b:                                             ; preds = %bb.a
  unreachable

_ZNK5clang6interp7Pointer6isZeroEv.exit:          ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !135
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.e, label %_ZNK5clang6interp7Pointer6isZeroEv.exit.thread

_ZNK5clang6interp7Pointer6isZeroEv.exit.thread:   ; preds = %bb.a, %.split39, %.split, %_ZNK5clang6interp7Pointer6isZeroEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.z = icmp ult i32 %.sroa.2.0.copyload.i, 65
  br i1 %i.z, label %_ZNK4llvm5APInt6isZeroEv.exit.i, label %_ZNK5clang6interp10IntegralAPILb0EE8getValueEv.exit.i

_ZNK5clang6interp10IntegralAPILb0EE8getValueEv.exit.i: ; preds = %_ZNK5clang6interp7Pointer6isZeroEv.exit.thread
  %i.aa = zext i32 %.sroa.2.0.copyload.i to i64
  %i.ab = add nuw nsw i64 %i.aa, 63
  %i.ac = lshr i64 %i.ab, 6
  call void @_ZN4llvm5APIntC1EjNS_8ArrayRefImEE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef %.sroa.2.0.copyload.i, ptr %.sroa.0.0.copyload.i, i64 %i.ac) #24
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !179 ; 2 uses
  %i.ad = icmp ult i32 %.pre.i, 65
  br i1 %i.ad, label %_ZNK4llvm5APInt6isZeroEv.exit.ithread-pre-split, label %bb.c

_ZNK4llvm5APInt6isZeroEv.exit.ithread-pre-split:  ; preds = %_ZNK5clang6interp10IntegralAPILb0EE8getValueEv.exit.i
  %.pr = load i64, ptr %3, align 8, !tbaa !135
  br label %_ZNK4llvm5APInt6isZeroEv.exit.i

_ZNK4llvm5APInt6isZeroEv.exit.i:                  ; preds = %_ZNK5clang6interp7Pointer6isZeroEv.exit.thread, %_ZNK4llvm5APInt6isZeroEv.exit.ithread-pre-split
  %i.ae = phi i64 [ %.pr, %_ZNK4llvm5APInt6isZeroEv.exit.ithread-pre-split ], [ %i.n, %_ZNK5clang6interp7Pointer6isZeroEv.exit.thread ]
  %i.af = icmp eq i64 %i.ae, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br i1 %i.af, label %bb.e, label %bb.d

bb.c:                                             ; preds = %_ZNK5clang6interp10IntegralAPILb0EE8getValueEv.exit.i
  %i.ag = call noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %3) #27
  %i.ah = icmp eq i32 %i.ag, %.pre.i              ; 2 uses
  %i.ai = load ptr, ptr %3, align 8, !tbaa !135   ; 2 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %_ZNK5clang6interp10IntegralAPILb0EE6isZeroEv.exit, label %.split40

.split40:                                         ; preds = %bb.c
  call void @_ZdaPv(ptr noundef nonnull %i.ai) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br i1 %i.ah, label %.thread, label %bb.d

_ZNK5clang6interp10IntegralAPILb0EE6isZeroEv.exit: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br i1 %i.ah, label %.thread, label %bb.d

bb.d:                                             ; preds = %.split40, %_ZNK4llvm5APInt6isZeroEv.exit.i, %_ZNK5clang6interp10IntegralAPILb0EE6isZeroEv.exit
  %i.ak = call noundef zeroext i1 @_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(48) %5) #24
  br i1 %i.ak, label %bb.e, label %bb.u

.thread:                                          ; preds = %.split40, %_ZNK5clang6interp10IntegralAPILb0EE6isZeroEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  br label %_ZNK5clang6interp10IntegralAPILb0EE8getValueEv.exit.i27

bb.e:                                             ; preds = %_ZNK4llvm5APInt6isZeroEv.exit.i, %.split39, %.split, %bb.d, %_ZNK5clang6interp7Pointer6isZeroEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.al = icmp ult i32 %.sroa.2.0.copyload.i, 65
  br i1 %i.al, label %_ZNK4llvm5APInt6isZeroEv.exit.i31, label %_ZNK5clang6interp10IntegralAPILb0EE8getValueEv.exit.i27

_ZNK5clang6interp10IntegralAPILb0EE8getValueEv.exit.i27: ; preds = %.thread, %bb.e
  %i.am = zext i32 %.sroa.2.0.copyload.i to i64
  %i.an = add nuw nsw i64 %i.am, 63
  %i.ao = lshr i64 %i.an, 6
  call void @_ZN4llvm5APIntC1EjNS_8ArrayRefImEE(ptr noundef nonnull align 8 dereferenceable(12) %2, i32 noundef %.sroa.2.0.copyload.i, ptr %.sroa.0.0.copyload.i, i64 %i.ao) #24
  %.phi.trans.insert.i28 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre.i29 = load i32, ptr %.phi.trans.insert.i28, align 8, !tbaa !179 ; 2 uses
  %i.ap = icmp ult i32 %.pre.i29, 65
  br i1 %i.ap, label %_ZNK4llvm5APInt6isZeroEv.exit.i31thread-pre-split, label %bb.f

_ZNK4llvm5APInt6isZeroEv.exit.i31thread-pre-split: ; preds = %_ZNK5clang6interp10IntegralAPILb0EE8getValueEv.exit.i27
  %.pr49 = load i64, ptr %2, align 8, !tbaa !135
  br label %_ZNK4llvm5APInt6isZeroEv.exit.i31

_ZNK4llvm5APInt6isZeroEv.exit.i31:                ; preds = %bb.e, %_ZNK4llvm5APInt6isZeroEv.exit.i31thread-pre-split
  %i.aq = phi i64 [ %.pr49, %_ZNK4llvm5APInt6isZeroEv.exit.i31thread-pre-split ], [ %i.n, %bb.e ]
  %i.ar = icmp eq i64 %i.aq, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br i1 %i.ar, label %bb.g, label %bb.r

bb.f:                                             ; preds = %_ZNK5clang6interp10IntegralAPILb0EE8getValueEv.exit.i27
  %i.as = call noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %2) #27
  %i.at = icmp eq i32 %i.as, %.pre.i29            ; 2 uses
  %i.au = load ptr, ptr %2, align 8, !tbaa !135   ; 2 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %_ZNK5clang6interp10IntegralAPILb0EE6isZeroEv.exit33, label %.split41

.split41:                                         ; preds = %bb.f
  call void @_ZdaPv(ptr noundef nonnull %i.au) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br i1 %i.at, label %bb.g, label %bb.r

_ZNK5clang6interp10IntegralAPILb0EE6isZeroEv.exit33: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br i1 %i.at, label %bb.g, label %bb.r

bb.g:                                             ; preds = %.split41, %_ZNK4llvm5APInt6isZeroEv.exit.i31, %_ZNK5clang6interp10IntegralAPILb0EE6isZeroEv.exit33
  %i.aw = load i32, ptr %i.l, align 8, !tbaa !362 ; 3 uses
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ay = icmp ne i32 %i.aw, 1
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ba = load ptr, ptr %i.az, align 8            ; 9 uses
  %i.bb = icmp eq ptr %i.ba, null                 ; 2 uses
  %or.cond.i.i = select i1 %i.ay, i1 true, i1 %i.bb
  br i1 %or.cond.i.i, label %bb.i, label %_ZNK5clang6interp7Pointer6isRootEv.exit.i

_ZNK5clang6interp7Pointer6isRootEv.exit.i:        ; preds = %bb.h
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !135, !noalias !1849 ; 2 uses
  %i.be = load ptr, ptr %i.ba, align 8, !tbaa !125 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !131
  %i.bh = icmp eq i32 %i.bd, %i.bg
  br i1 %i.bh, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread44, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bi = icmp eq i32 %i.aw, 1
  br i1 %i.bi, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread

bb.j:                                             ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i
  %i.bj = zext i32 %i.bd to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  br label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit

_ZNK5clang6interp7Pointer12getFieldDescEv.exit:   ; preds = %bb.i, %bb.j
  %.0.i34.in = phi ptr [ %i.bl, %bb.j ], [ %i.ba, %bb.i ]
  %.0.i34 = load ptr, ptr %.0.i34.in, align 8, !tbaa !1418 ; 2 uses
  %.not = icmp eq ptr %.0.i34, null
  br i1 %.not, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread44

_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread44: ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit
  %.0.i3447 = phi ptr [ %.0.i34, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit ], [ %i.be, %_ZNK5clang6interp7Pointer6isRootEv.exit.i ]
  %i.bm = getelementptr inbounds nuw i8, ptr %.0.i3447, i64 53
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !170, !range !123, !noundef !124
  %i.bo = trunc nuw i8 %i.bn to i1
  br i1 %i.bo, label %bb.k, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread

bb.k:                                             ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread44
  %i.bp = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !135, !noalias !1852 ; 7 uses
  %i.br = load i64, ptr %5, align 8, !tbaa !163, !noalias !1852 ; 2 uses
  %11 = xor i1 %i.bb, true
  call void @llvm.assume(i1 %11)
  %i.bs = icmp ugt i32 %i.bq, 16
  %i.bt = zext i32 %i.bq to i64                   ; 4 uses
  %i.bu = icmp eq i64 %i.br, %i.bt                ; 2 uses
  %or.cond.i.i37 = select i1 %i.bs, i1 %i.bu, i1 false
  %.pre51 = load ptr, ptr %i.ba, align 8, !tbaa !125 ; 5 uses
  br i1 %or.cond.i.i37, label %_ZNK5clang6interp7Pointer8getIndexEv.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bv = getelementptr inbounds nuw i8, ptr %.pre51, i64 24
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !131
  %i.bx = icmp eq i32 %i.bq, %i.bw                ; 2 uses
  br i1 %i.bx, label %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.by = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bt
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !167
  br label %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.i

_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.i:    ; preds = %bb.m, %bb.l
  %.0.i.i.i.i = phi ptr [ %i.ca, %bb.m ], [ %.pre51, %bb.l ]
  %i.cb = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 16
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !1434 ; 2 uses
  %.not.not.i.i = icmp eq i32 %i.cc, 0
  br i1 %.not.not.i.i, label %_ZNK5clang6interp7Pointer8getIndexEv.exit.thread, label %bb.n

bb.n:                                             ; preds = %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.i
  br i1 %i.bu, label %_ZNK5clang6interp7Pointer8getIndexEv.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  br i1 %i.bx, label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bt
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 32
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !167
  br label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i

_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i: ; preds = %bb.p, %bb.o
  %.0.i.i8.i.i = phi ptr [ %i.cf, %bb.p ], [ %.pre51, %bb.o ]
  %i.cg = getelementptr inbounds nuw i8, ptr %.0.i.i8.i.i, i64 40
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !1080
  %.not1.i.i.i = icmp eq ptr %i.ch, null
  %..i.i.i = select i1 %.not1.i.i.i, i64 -8, i64 -16
  br label %_ZNK5clang6interp7Pointer8getIndexEv.exit

_ZNK5clang6interp7Pointer8getIndexEv.exit:        ; preds = %bb.n, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i
  %.0.neg.i.i.i = phi i64 [ %..i.i.i, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i ], [ 0, %bb.n ]
  %i.ci = sub i64 %i.br, %i.bt
  %i.cj = add i64 %i.ci, %.0.neg.i.i.i
  %i.ck = trunc i64 %i.cj to i32
  %i.cl = icmp ugt i32 %i.cc, %i.ck
  br i1 %i.cl, label %_ZNK5clang6interp7Pointer8getIndexEv.exit.thread, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread

_ZNK5clang6interp7Pointer8getIndexEv.exit.thread: ; preds = %bb.k, %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.i, %_ZNK5clang6interp7Pointer8getIndexEv.exit
  %i.cm = load ptr, ptr %i.a, align 8, !tbaa !354, !nonnull !124, !align !142
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.cn = getelementptr inbounds nuw i8, ptr %.pre51, i64 24
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !131, !noalias !1855
  %i.cp = icmp eq i32 %i.bq, %i.co
  br i1 %i.cp, label %_ZNK5clang6interp7Pointer7atIndexEm.exit, label %bb.q

bb.q:                                             ; preds = %_ZNK5clang6interp7Pointer8getIndexEv.exit.thread
  %i.cq = zext i32 %i.bq to i64
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.cq
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 32
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !167, !noalias !1855
  br label %_ZNK5clang6interp7Pointer7atIndexEm.exit

_ZNK5clang6interp7Pointer7atIndexEm.exit:         ; preds = %_ZNK5clang6interp7Pointer8getIndexEv.exit.thread, %bb.q
  %.pn5.i.i = phi ptr [ %i.ct, %bb.q ], [ %.pre51, %_ZNK5clang6interp7Pointer8getIndexEv.exit.thread ]
  %i.cu = getelementptr inbounds nuw i8, ptr %.pn5.i.i, i64 40
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !1080, !noalias !1855
  %.not.i.i = icmp eq ptr %i.cv, null
  %.0.v.i.i = select i1 %.not.i.i, i32 8, i32 16
  %i.cw = add i32 %.0.v.i.i, %i.bq
  %i.cx = zext i32 %i.cw to i64
  call void @_ZN5clang6interp7PointerC2EPNS0_5BlockEjm(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull %i.ba, i32 noundef %i.bq, i64 noundef %i.cx) #24
  call void @_ZNK5clang6interp7Pointer6narrowEv(ptr dead_on_unwind nonnull writable sret(%"class.clang::interp::Pointer") align 8 %6, ptr noundef nonnull align 8 dereferenceable(48) %7)
  call void @_ZN5clang6interp11InterpStack4pushINS0_7PointerEJS3_EEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(80) %i.cm, ptr noundef nonnull align 8 dereferenceable(48) %6)
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %6) #24
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.u

_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread: ; preds = %bb.i, %bb.g, %_ZNK5clang6interp7Pointer8getIndexEv.exit, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread44, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit
  %i.cy = load ptr, ptr %i.a, align 8, !tbaa !354, !nonnull !124, !align !142
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @_ZNK5clang6interp7Pointer6narrowEv(ptr dead_on_unwind nonnull writable sret(%"class.clang::interp::Pointer") align 8 %8, ptr noundef nonnull align 8 dereferenceable(48) %5)
  call void @_ZN5clang6interp11InterpStack4pushINS0_7PointerEJS3_EEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(80) %i.cy, ptr noundef nonnull align 8 dereferenceable(48) %8)
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %bb.u

bb.r:                                             ; preds = %.split41, %_ZNK4llvm5APInt6isZeroEv.exit.i31, %_ZNK5clang6interp10IntegralAPILb0EE6isZeroEv.exit33
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  call void @_ZN5clang6interp12OffsetHelperINS0_10IntegralAPILb0EEELNS0_7ArithOpE0EEESt8optionalINS0_7PointerEERNS0_11InterpStateENS0_7CodePtrERKT_RKS6_b(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.599") align 8 %9, ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(48) %5, i1 noundef zeroext false)
  %i.cz = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 3 uses
  %i.da = load i8, ptr %i.cz, align 8, !tbaa !883, !range !123, !noundef !124
  %i.db = trunc nuw i8 %i.da to i1                ; 2 uses
  br i1 %i.db, label %bb.s, label %_ZNSt14_Optional_baseIN5clang6interp7PointerELb0ELb0EED2Ev.exit

bb.s:                                             ; preds = %bb.r
  %i.dc = load ptr, ptr %i.a, align 8, !tbaa !354, !nonnull !124, !align !142
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  call void @_ZNK5clang6interp7Pointer6narrowEv(ptr dead_on_unwind nonnull writable sret(%"class.clang::interp::Pointer") align 8 %10, ptr noundef nonnull align 8 dereferenceable(48) %9)
  call void @_ZN5clang6interp11InterpStack4pushINS0_7PointerEJS3_EEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(80) %i.dc, ptr noundef nonnull align 8 dereferenceable(48) %10)
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %10) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  %.pre = load i8, ptr %i.cz, align 8, !tbaa !883, !range !123
  %i.dd = trunc nuw i8 %.pre to i1
  store i8 0, ptr %i.cz, align 8, !tbaa !883
  br i1 %i.dd, label %bb.t, label %_ZNSt14_Optional_baseIN5clang6interp7PointerELb0ELb0EED2Ev.exit

bb.t:                                             ; preds = %bb.s
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(56) %9) #24
  br label %_ZNSt14_Optional_baseIN5clang6interp7PointerELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN5clang6interp7PointerELb0ELb0EED2Ev.exit: ; preds = %bb.r, %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %bb.u

bb.u:                                             ; preds = %_ZNSt14_Optional_baseIN5clang6interp7PointerELb0ELb0EED2Ev.exit, %_ZNK5clang6interp7Pointer7atIndexEm.exit, %bb.d, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread
  %.2 = phi i1 [ true, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread ], [ true, %_ZNK5clang6interp7Pointer7atIndexEm.exit ], [ false, %bb.d ], [ %i.db, %_ZNSt14_Optional_baseIN5clang6interp7PointerELb0ELb0EED2Ev.exit ]
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  ret i1 %.2
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5clang6interp15ArrayElemPtrPopILNS0_8PrimTypeE9ENS0_10IntegralAPILb1EEEEEbRNS0_11InterpStateENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1) local_unnamed_addr #9 comdat {
bb.a:
  %2 = alloca %"class.llvm::APInt", align 8       ; 10 uses
  %3 = alloca %"class.llvm::APInt", align 8       ; 9 uses
  %4 = alloca %"class.clang::interp::IntegralAP.571", align 8 ; 5 uses
  %5 = alloca %"class.clang::interp::Pointer", align 8 ; 16 uses
  %6 = alloca %"class.clang::interp::Pointer", align 8 ; 5 uses
  %7 = alloca %"class.clang::interp::Pointer", align 8 ; 5 uses
  %8 = alloca %"class.clang::interp::Pointer", align 8 ; 5 uses
  %9 = alloca %"class.std::optional.599", align 8 ; 6 uses
  %10 = alloca %"class.clang::interp::Pointer", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !354, !nonnull !124, !align !142 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !334
  %i.e = add i64 %i.d, -1
  store i64 %i.e, ptr %i.c, align 8, !tbaa !334
  %i.f = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 16) #24 ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.f, align 8, !tbaa !135 ; 4 uses
  %.sroa.2.0..0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.2.0.copyload.i = load i32, ptr %.sroa.2.0..0..sroa_idx.i, align 8, !tbaa !133 ; 11 uses
  tail call void @_ZN5clang6interp11InterpStack6shrinkEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 16) #24
  store ptr %.sroa.0.0.copyload.i, ptr %4, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %.sroa.2.0.copyload.i, ptr %.sroa.2.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !354, !nonnull !124, !align !142 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !334, !noalias !1860
  %i.j = add i64 %i.i, -1
  store i64 %i.j, ptr %i.h, align 8, !tbaa !334, !noalias !1860
  %i.k = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 noundef 48) #24, !noalias !1860
  call void @_ZN5clang6interp7PointerC1EOS1_(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(48) %i.k) #24
  call void @_ZN5clang6interp11InterpStack6shrinkEm(ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 noundef 48) #24
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !362
  %i.n = ptrtoint ptr %.sroa.0.0.copyload.i to i64 ; 2 uses
  switch i32 %i.m, label %bb.b [
    i32 0, label %.split
    i32 1, label %_ZNK5clang6interp7Pointer6isZeroEv.exit
    i32 2, label %.split40
    i32 3, label %_ZNK5clang6interp7Pointer6isZeroEv.exit.thread
  ]

.split:                                           ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.p = load i64, ptr %i.o, align 8, !tbaa !135
  %i.q = icmp eq i64 %i.p, 0
  %i.r = load i64, ptr %5, align 8
  %i.s = icmp eq i64 %i.r, 0
  %i.t = select i1 %i.q, i1 %i.s, i1 false
  br i1 %i.t, label %bb.e, label %_ZNK5clang6interp7Pointer6isZeroEv.exit.thread

.split40:                                         ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !135
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %bb.e, label %_ZNK5clang6interp7Pointer6isZeroEv.exit.thread

bb.b:                                             ; preds = %bb.a
  unreachable

_ZNK5clang6interp7Pointer6isZeroEv.exit:          ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !135
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.e, label %_ZNK5clang6interp7Pointer6isZeroEv.exit.thread

_ZNK5clang6interp7Pointer6isZeroEv.exit.thread:   ; preds = %bb.a, %.split40, %.split, %_ZNK5clang6interp7Pointer6isZeroEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.z = icmp ult i32 %.sroa.2.0.copyload.i, 65
  br i1 %i.z, label %_ZNK5clang6interp10IntegralAPILb1EE8getValueEv.exit.thread.i, label %_ZNK5clang6interp10IntegralAPILb1EE8getValueEv.exit.i

_ZNK5clang6interp10IntegralAPILb1EE8getValueEv.exit.thread.i: ; preds = %_ZNK5clang6interp7Pointer6isZeroEv.exit.thread
  %i.aa = sub nsw i32 0, %.sroa.2.0.copyload.i
  %i.ab = and i32 %i.aa, 63
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = lshr i64 -1, %i.ac
  %i.ae = icmp eq i32 %.sroa.2.0.copyload.i, 0
  %spec.select.i.i.i = select i1 %i.ae, i64 0, i64 %i.ad, !prof !328
  %i.af = and i64 %spec.select.i.i.i, %i.n
  br label %_ZNK4llvm5APInt6isZeroEv.exit.i

_ZNK5clang6interp10IntegralAPILb1EE8getValueEv.exit.i: ; preds = %_ZNK5clang6interp7Pointer6isZeroEv.exit.thread
  %i.ag = zext i32 %.sroa.2.0.copyload.i to i64
  %i.ah = add nuw nsw i64 %i.ag, 63
  %i.ai = lshr i64 %i.ah, 6
  call void @_ZN4llvm5APIntC1EjNS_8ArrayRefImEE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef %.sroa.2.0.copyload.i, ptr %.sroa.0.0.copyload.i, i64 %i.ai) #24
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !179 ; 2 uses
  %i.aj = icmp ult i32 %.pre.i, 65
  br i1 %i.aj, label %_ZNK4llvm5APInt6isZeroEv.exit.ithread-pre-split, label %bb.c

_ZNK4llvm5APInt6isZeroEv.exit.ithread-pre-split:  ; preds = %_ZNK5clang6interp10IntegralAPILb1EE8getValueEv.exit.i
  %.pr = load i64, ptr %3, align 8, !tbaa !135
  br label %_ZNK4llvm5APInt6isZeroEv.exit.i

_ZNK4llvm5APInt6isZeroEv.exit.i:                  ; preds = %_ZNK4llvm5APInt6isZeroEv.exit.ithread-pre-split, %_ZNK5clang6interp10IntegralAPILb1EE8getValueEv.exit.thread.i
  %i.ak = phi i64 [ %.pr, %_ZNK4llvm5APInt6isZeroEv.exit.ithread-pre-split ], [ %i.af, %_ZNK5clang6interp10IntegralAPILb1EE8getValueEv.exit.thread.i ]
  %i.al = icmp eq i64 %i.ak, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br i1 %i.al, label %bb.e, label %bb.d

bb.c:                                             ; preds = %_ZNK5clang6interp10IntegralAPILb1EE8getValueEv.exit.i
  %i.am = call noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %3) #27
  %i.an = icmp eq i32 %i.am, %.pre.i              ; 2 uses
  %i.ao = load ptr, ptr %3, align 8, !tbaa !135   ; 2 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %_ZNK5clang6interp10IntegralAPILb1EE6isZeroEv.exit, label %.split41

.split41:                                         ; preds = %bb.c
  call void @_ZdaPv(ptr noundef nonnull %i.ao) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br i1 %i.an, label %.thread, label %bb.d

_ZNK5clang6interp10IntegralAPILb1EE6isZeroEv.exit: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br i1 %i.an, label %.thread, label %bb.d

bb.d:                                             ; preds = %.split41, %_ZNK4llvm5APInt6isZeroEv.exit.i, %_ZNK5clang6interp10IntegralAPILb1EE6isZeroEv.exit
  %i.aq = call noundef zeroext i1 @_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(48) %5) #24
  br i1 %i.aq, label %bb.e, label %bb.u

.thread:                                          ; preds = %.split41, %_ZNK5clang6interp10IntegralAPILb1EE6isZeroEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  br label %_ZNK5clang6interp10IntegralAPILb1EE8getValueEv.exit.i27

bb.e:                                             ; preds = %_ZNK4llvm5APInt6isZeroEv.exit.i, %.split40, %.split, %bb.d, %_ZNK5clang6interp7Pointer6isZeroEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.ar = icmp ult i32 %.sroa.2.0.copyload.i, 65
  br i1 %i.ar, label %_ZNK5clang6interp10IntegralAPILb1EE8getValueEv.exit.thread.i32, label %_ZNK5clang6interp10IntegralAPILb1EE8getValueEv.exit.i27

_ZNK5clang6interp10IntegralAPILb1EE8getValueEv.exit.thread.i32: ; preds = %bb.e
  %i.as = sub nsw i32 0, %.sroa.2.0.copyload.i
  %i.at = and i32 %i.as, 63
  %i.au = zext nneg i32 %i.at to i64
  %i.av = lshr i64 -1, %i.au
  %i.aw = icmp eq i32 %.sroa.2.0.copyload.i, 0
  %spec.select.i.i.i33 = select i1 %i.aw, i64 0, i64 %i.av, !prof !328
  %i.ax = and i64 %spec.select.i.i.i33, %i.n
  br label %_ZNK4llvm5APInt6isZeroEv.exit.i31

_ZNK5clang6interp10IntegralAPILb1EE8getValueEv.exit.i27: ; preds = %.thread, %bb.e
  %i.ay = zext i32 %.sroa.2.0.copyload.i to i64
  %i.az = add nuw nsw i64 %i.ay, 63
  %i.ba = lshr i64 %i.az, 6
  call void @_ZN4llvm5APIntC1EjNS_8ArrayRefImEE(ptr noundef nonnull align 8 dereferenceable(12) %2, i32 noundef %.sroa.2.0.copyload.i, ptr %.sroa.0.0.copyload.i, i64 %i.ba) #24
  %.phi.trans.insert.i28 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre.i29 = load i32, ptr %.phi.trans.insert.i28, align 8, !tbaa !179 ; 2 uses
  %i.bb = icmp ult i32 %.pre.i29, 65
  br i1 %i.bb, label %_ZNK4llvm5APInt6isZeroEv.exit.i31thread-pre-split, label %bb.f

_ZNK4llvm5APInt6isZeroEv.exit.i31thread-pre-split: ; preds = %_ZNK5clang6interp10IntegralAPILb1EE8getValueEv.exit.i27
  %.pr50 = load i64, ptr %2, align 8, !tbaa !135
  br label %_ZNK4llvm5APInt6isZeroEv.exit.i31

_ZNK4llvm5APInt6isZeroEv.exit.i31:                ; preds = %_ZNK4llvm5APInt6isZeroEv.exit.i31thread-pre-split, %_ZNK5clang6interp10IntegralAPILb1EE8getValueEv.exit.thread.i32
  %i.bc = phi i64 [ %.pr50, %_ZNK4llvm5APInt6isZeroEv.exit.i31thread-pre-split ], [ %i.ax, %_ZNK5clang6interp10IntegralAPILb1EE8getValueEv.exit.thread.i32 ]
  %i.bd = icmp eq i64 %i.bc, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br i1 %i.bd, label %bb.g, label %bb.r

bb.f:                                             ; preds = %_ZNK5clang6interp10IntegralAPILb1EE8getValueEv.exit.i27
  %i.be = call noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %2) #27
  %i.bf = icmp eq i32 %i.be, %.pre.i29            ; 2 uses
  %i.bg = load ptr, ptr %2, align 8, !tbaa !135   ; 2 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %_ZNK5clang6interp10IntegralAPILb1EE6isZeroEv.exit34, label %.split42

.split42:                                         ; preds = %bb.f
  call void @_ZdaPv(ptr noundef nonnull %i.bg) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br i1 %i.bf, label %bb.g, label %bb.r

_ZNK5clang6interp10IntegralAPILb1EE6isZeroEv.exit34: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br i1 %i.bf, label %bb.g, label %bb.r

bb.g:                                             ; preds = %.split42, %_ZNK4llvm5APInt6isZeroEv.exit.i31, %_ZNK5clang6interp10IntegralAPILb1EE6isZeroEv.exit34
  %i.bi = load i32, ptr %i.l, align 8, !tbaa !362 ; 3 uses
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bk = icmp ne i32 %i.bi, 1
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8            ; 9 uses
  %i.bn = icmp eq ptr %i.bm, null                 ; 2 uses
  %or.cond.i.i = select i1 %i.bk, i1 true, i1 %i.bn
  br i1 %or.cond.i.i, label %bb.i, label %_ZNK5clang6interp7Pointer6isRootEv.exit.i

_ZNK5clang6interp7Pointer6isRootEv.exit.i:        ; preds = %bb.h
  %i.bo = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !135, !noalias !1863 ; 2 uses
  %i.bq = load ptr, ptr %i.bm, align 8, !tbaa !125 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !131
  %i.bt = icmp eq i32 %i.bp, %i.bs
  br i1 %i.bt, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread45, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bu = icmp eq i32 %i.bi, 1
  br i1 %i.bu, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread

bb.j:                                             ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i
  %i.bv = zext i32 %i.bp to i64
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  br label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit

_ZNK5clang6interp7Pointer12getFieldDescEv.exit:   ; preds = %bb.i, %bb.j
  %.0.i35.in = phi ptr [ %i.bx, %bb.j ], [ %i.bm, %bb.i ]
  %.0.i35 = load ptr, ptr %.0.i35.in, align 8, !tbaa !1418 ; 2 uses
  %.not = icmp eq ptr %.0.i35, null
  br i1 %.not, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread45

_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread45: ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit
  %.0.i3548 = phi ptr [ %.0.i35, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit ], [ %i.bq, %_ZNK5clang6interp7Pointer6isRootEv.exit.i ]
  %i.by = getelementptr inbounds nuw i8, ptr %.0.i3548, i64 53
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !170, !range !123, !noundef !124
  %i.ca = trunc nuw i8 %i.bz to i1
  br i1 %i.ca, label %bb.k, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread

bb.k:                                             ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread45
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !135, !noalias !1866 ; 7 uses
  %i.cd = load i64, ptr %5, align 8, !tbaa !163, !noalias !1866 ; 2 uses
  %11 = xor i1 %i.bn, true
  call void @llvm.assume(i1 %11)
  %i.ce = icmp ugt i32 %i.cc, 16
  %i.cf = zext i32 %i.cc to i64                   ; 4 uses
  %i.cg = icmp eq i64 %i.cd, %i.cf                ; 2 uses
  %or.cond.i.i38 = select i1 %i.ce, i1 %i.cg, i1 false
  %.pre52 = load ptr, ptr %i.bm, align 8, !tbaa !125 ; 5 uses
  br i1 %or.cond.i.i38, label %_ZNK5clang6interp7Pointer8getIndexEv.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ch = getelementptr inbounds nuw i8, ptr %.pre52, i64 24
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !131
  %i.cj = icmp eq i32 %i.cc, %i.ci                ; 2 uses
  br i1 %i.cj, label %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.cf
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 32
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !167
  br label %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.i

_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.i:    ; preds = %bb.m, %bb.l
  %.0.i.i.i.i = phi ptr [ %i.cm, %bb.m ], [ %.pre52, %bb.l ]
  %i.cn = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 16
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !1434 ; 2 uses
  %.not.not.i.i = icmp eq i32 %i.co, 0
  br i1 %.not.not.i.i, label %_ZNK5clang6interp7Pointer8getIndexEv.exit.thread, label %bb.n

bb.n:                                             ; preds = %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.i
  br i1 %i.cg, label %_ZNK5clang6interp7Pointer8getIndexEv.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  br i1 %i.cj, label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.cf
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 32
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !167
  br label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i

_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i: ; preds = %bb.p, %bb.o
  %.0.i.i8.i.i = phi ptr [ %i.cr, %bb.p ], [ %.pre52, %bb.o ]
  %i.cs = getelementptr inbounds nuw i8, ptr %.0.i.i8.i.i, i64 40
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !1080
  %.not1.i.i.i = icmp eq ptr %i.ct, null
  %..i.i.i = select i1 %.not1.i.i.i, i64 -8, i64 -16
  br label %_ZNK5clang6interp7Pointer8getIndexEv.exit

_ZNK5clang6interp7Pointer8getIndexEv.exit:        ; preds = %bb.n, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i
  %.0.neg.i.i.i = phi i64 [ %..i.i.i, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i ], [ 0, %bb.n ]
  %i.cu = sub i64 %i.cd, %i.cf
  %i.cv = add i64 %i.cu, %.0.neg.i.i.i
  %i.cw = trunc i64 %i.cv to i32
  %i.cx = icmp ugt i32 %i.co, %i.cw
  br i1 %i.cx, label %_ZNK5clang6interp7Pointer8getIndexEv.exit.thread, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread

_ZNK5clang6interp7Pointer8getIndexEv.exit.thread: ; preds = %bb.k, %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.i, %_ZNK5clang6interp7Pointer8getIndexEv.exit
  %i.cy = load ptr, ptr %i.a, align 8, !tbaa !354, !nonnull !124, !align !142
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.cz = getelementptr inbounds nuw i8, ptr %.pre52, i64 24
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !131, !noalias !1869
  %i.db = icmp eq i32 %i.cc, %i.da
  br i1 %i.db, label %_ZNK5clang6interp7Pointer7atIndexEm.exit, label %bb.q

bb.q:                                             ; preds = %_ZNK5clang6interp7Pointer8getIndexEv.exit.thread
  %i.dc = zext i32 %i.cc to i64
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.dc
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 32
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !167, !noalias !1869
  br label %_ZNK5clang6interp7Pointer7atIndexEm.exit

_ZNK5clang6interp7Pointer7atIndexEm.exit:         ; preds = %_ZNK5clang6interp7Pointer8getIndexEv.exit.thread, %bb.q
  %.pn5.i.i = phi ptr [ %i.df, %bb.q ], [ %.pre52, %_ZNK5clang6interp7Pointer8getIndexEv.exit.thread ]
  %i.dg = getelementptr inbounds nuw i8, ptr %.pn5.i.i, i64 40
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !1080, !noalias !1869
  %.not.i.i = icmp eq ptr %i.dh, null
  %.0.v.i.i = select i1 %.not.i.i, i32 8, i32 16
  %i.di = add i32 %.0.v.i.i, %i.cc
  %i.dj = zext i32 %i.di to i64
  call void @_ZN5clang6interp7PointerC2EPNS0_5BlockEjm(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull %i.bm, i32 noundef %i.cc, i64 noundef %i.dj) #24
  call void @_ZNK5clang6interp7Pointer6narrowEv(ptr dead_on_unwind nonnull writable sret(%"class.clang::interp::Pointer") align 8 %6, ptr noundef nonnull align 8 dereferenceable(48) %7)
  call void @_ZN5clang6interp11InterpStack4pushINS0_7PointerEJS3_EEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(80) %i.cy, ptr noundef nonnull align 8 dereferenceable(48) %6)
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %6) #24
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.u

_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread: ; preds = %bb.i, %bb.g, %_ZNK5clang6interp7Pointer8getIndexEv.exit, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread45, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit
  %i.dk = load ptr, ptr %i.a, align 8, !tbaa !354, !nonnull !124, !align !142
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @_ZNK5clang6interp7Pointer6narrowEv(ptr dead_on_unwind nonnull writable sret(%"class.clang::interp::Pointer") align 8 %8, ptr noundef nonnull align 8 dereferenceable(48) %5)
  call void @_ZN5clang6interp11InterpStack4pushINS0_7PointerEJS3_EEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(80) %i.dk, ptr noundef nonnull align 8 dereferenceable(48) %8)
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %bb.u

bb.r:                                             ; preds = %.split42, %_ZNK4llvm5APInt6isZeroEv.exit.i31, %_ZNK5clang6interp10IntegralAPILb1EE6isZeroEv.exit34
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  call void @_ZN5clang6interp12OffsetHelperINS0_10IntegralAPILb1EEELNS0_7ArithOpE0EEESt8optionalINS0_7PointerEERNS0_11InterpStateENS0_7CodePtrERKT_RKS6_b(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.599") align 8 %9, ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(48) %5, i1 noundef zeroext false)
  %i.dl = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 3 uses
  %i.dm = load i8, ptr %i.dl, align 8, !tbaa !883, !range !123, !noundef !124
  %i.dn = trunc nuw i8 %i.dm to i1                ; 2 uses
  br i1 %i.dn, label %bb.s, label %_ZNSt14_Optional_baseIN5clang6interp7PointerELb0ELb0EED2Ev.exit

bb.s:                                             ; preds = %bb.r
  %i.do = load ptr, ptr %i.a, align 8, !tbaa !354, !nonnull !124, !align !142
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  call void @_ZNK5clang6interp7Pointer6narrowEv(ptr dead_on_unwind nonnull writable sret(%"class.clang::interp::Pointer") align 8 %10, ptr noundef nonnull align 8 dereferenceable(48) %9)
  call void @_ZN5clang6interp11InterpStack4pushINS0_7PointerEJS3_EEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(80) %i.do, ptr noundef nonnull align 8 dereferenceable(48) %10)
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %10) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  %.pre = load i8, ptr %i.dl, align 8, !tbaa !883, !range !123
  %i.dp = trunc nuw i8 %.pre to i1
  store i8 0, ptr %i.dl, align 8, !tbaa !883
  br i1 %i.dp, label %bb.t, label %_ZNSt14_Optional_baseIN5clang6interp7PointerELb0ELb0EED2Ev.exit

bb.t:                                             ; preds = %bb.s
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(56) %9) #24
  br label %_ZNSt14_Optional_baseIN5clang6interp7PointerELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN5clang6interp7PointerELb0ELb0EED2Ev.exit: ; preds = %bb.r, %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %bb.u

bb.u:                                             ; preds = %_ZNSt14_Optional_baseIN5clang6interp7PointerELb0ELb0EED2Ev.exit, %_ZNK5clang6interp7Pointer7atIndexEm.exit, %bb.d, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread
  %.2 = phi i1 [ true, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread ], [ true, %_ZNK5clang6interp7Pointer7atIndexEm.exit ], [ false, %bb.d ], [ %i.dn, %_ZNSt14_Optional_baseIN5clang6interp7PointerELb0ELb0EED2Ev.exit ]
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  ret i1 %.2
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5clang6interp15ArrayElemPtrPopILNS0_8PrimTypeE10ENS0_7BooleanEEEbRNS0_11InterpStateENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1) local_unnamed_addr #9 comdat {
bb.a:
  %2 = alloca %"class.clang::interp::Boolean", align 1 ; 4 uses
  %3 = alloca %"class.clang::interp::Pointer", align 8 ; 16 uses
  %4 = alloca %"class.clang::interp::Pointer", align 8 ; 5 uses
  %5 = alloca %"class.clang::interp::Pointer", align 8 ; 5 uses
  %6 = alloca %"class.clang::interp::Pointer", align 8 ; 5 uses
  %7 = alloca %"class.std::optional.599", align 8 ; 6 uses
  %8 = alloca %"class.clang::interp::Pointer", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !354, !nonnull !124, !align !142 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !334
  %i.e = add i64 %i.d, -1
  store i64 %i.e, ptr %i.c, align 8, !tbaa !334
  %i.f = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 8) #24
  %.sroa.0.0.copyload.i = load i8, ptr %i.f, align 1, !tbaa !335 ; 3 uses
  tail call void @_ZN5clang6interp11InterpStack6shrinkEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 8) #24
  store i8 %.sroa.0.0.copyload.i, ptr %2, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !354, !nonnull !124, !align !142 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !334, !noalias !1874
  %i.j = add i64 %i.i, -1
  store i64 %i.j, ptr %i.h, align 8, !tbaa !334, !noalias !1874
  %i.k = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 noundef 48) #24, !noalias !1874
  call void @_ZN5clang6interp7PointerC1EOS1_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(48) %i.k) #24
  call void @_ZN5clang6interp11InterpStack6shrinkEm(ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 noundef 48) #24
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !362
  switch i32 %i.m, label %bb.b [
    i32 0, label %.split
    i32 1, label %_ZNK5clang6interp7Pointer6isZeroEv.exit
    i32 2, label %.split30
    i32 3, label %_ZNK5clang6interp7Pointer6isZeroEv.exit.thread
  ]

.split:                                           ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.o = load i64, ptr %i.n, align 8, !tbaa !135
  %i.p = icmp eq i64 %i.o, 0
  %i.q = load i64, ptr %3, align 8
  %i.r = icmp eq i64 %i.q, 0
  %i.s = select i1 %i.p, i1 %i.r, i1 false
  br i1 %i.s, label %bb.d, label %_ZNK5clang6interp7Pointer6isZeroEv.exit.thread

.split30:                                         ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !135
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %bb.d, label %_ZNK5clang6interp7Pointer6isZeroEv.exit.thread

bb.b:                                             ; preds = %bb.a
  unreachable

_ZNK5clang6interp7Pointer6isZeroEv.exit:          ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !135
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.d, label %_ZNK5clang6interp7Pointer6isZeroEv.exit.thread

_ZNK5clang6interp7Pointer6isZeroEv.exit.thread:   ; preds = %bb.a, %.split30, %.split, %_ZNK5clang6interp7Pointer6isZeroEv.exit
  %i.y = trunc nuw i8 %.sroa.0.0.copyload.i to i1
  br i1 %i.y, label %bb.c, label %.thread45

bb.c:                                             ; preds = %_ZNK5clang6interp7Pointer6isZeroEv.exit.thread
  %i.z = call noundef zeroext i1 @_ZN5clang6interp10CheckArrayERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(48) %3) #24
  br i1 %i.z, label %.thread, label %bb.q

bb.d:                                             ; preds = %.split30, %.split, %_ZNK5clang6interp7Pointer6isZeroEv.exit
  %i.aa = trunc nuw i8 %.sroa.0.0.copyload.i to i1
  br i1 %i.aa, label %.thread, label %.thread45

.thread45:                                        ; preds = %_ZNK5clang6interp7Pointer6isZeroEv.exit.thread, %bb.d
  %i.ab = load i32, ptr %i.l, align 8, !tbaa !362 ; 3 uses
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread, label %bb.e

bb.e:                                             ; preds = %.thread45
  %i.ad = icmp ne i32 %i.ab, 1
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.af = load ptr, ptr %i.ae, align 8            ; 9 uses
  %i.ag = icmp eq ptr %i.af, null                 ; 2 uses
  %or.cond.i.i = select i1 %i.ad, i1 true, i1 %i.ag
  br i1 %or.cond.i.i, label %bb.f, label %_ZNK5clang6interp7Pointer6isRootEv.exit.i

_ZNK5clang6interp7Pointer6isRootEv.exit.i:        ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !135, !noalias !1877 ; 2 uses
  %i.aj = load ptr, ptr %i.af, align 8, !tbaa !125 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !131
  %i.am = icmp eq i32 %i.ai, %i.al
  br i1 %i.am, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread33, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.an = icmp eq i32 %i.ab, 1
  br i1 %i.an, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread

bb.g:                                             ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i
  %i.ao = zext i32 %i.ai to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  br label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit

_ZNK5clang6interp7Pointer12getFieldDescEv.exit:   ; preds = %bb.f, %bb.g
  %.0.i26.in = phi ptr [ %i.aq, %bb.g ], [ %i.af, %bb.f ]
  %.0.i26 = load ptr, ptr %.0.i26.in, align 8, !tbaa !1418 ; 2 uses
  %.not = icmp eq ptr %.0.i26, null
  br i1 %.not, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread33

_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread33: ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit
  %.0.i2636 = phi ptr [ %.0.i26, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit ], [ %i.aj, %_ZNK5clang6interp7Pointer6isRootEv.exit.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.i2636, i64 53
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !170, !range !123, !noundef !124
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %bb.h, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread

bb.h:                                             ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread33
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.av = load i32, ptr %i.au, align 8, !tbaa !135, !noalias !1880 ; 7 uses
  %i.aw = load i64, ptr %3, align 8, !tbaa !163, !noalias !1880 ; 2 uses
  %9 = xor i1 %i.ag, true
  call void @llvm.assume(i1 %9)
  %i.ax = icmp ugt i32 %i.av, 16
  %i.ay = zext i32 %i.av to i64                   ; 4 uses
  %i.az = icmp eq i64 %i.aw, %i.ay                ; 2 uses
  %or.cond.i.i28 = select i1 %i.ax, i1 %i.az, i1 false
  %.pre38 = load ptr, ptr %i.af, align 8, !tbaa !125 ; 5 uses
  br i1 %or.cond.i.i28, label %_ZNK5clang6interp7Pointer8getIndexEv.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ba = getelementptr inbounds nuw i8, ptr %.pre38, i64 24
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !131
  %i.bc = icmp eq i32 %i.av, %i.bb                ; 2 uses
  br i1 %i.bc, label %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ay
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !167
  br label %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.i

_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.i:    ; preds = %bb.j, %bb.i
  %.0.i.i.i.i = phi ptr [ %i.bf, %bb.j ], [ %.pre38, %bb.i ]
  %i.bg = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 16
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !1434 ; 2 uses
  %.not.not.i.i = icmp eq i32 %i.bh, 0
  br i1 %.not.not.i.i, label %_ZNK5clang6interp7Pointer8getIndexEv.exit.thread, label %bb.k

bb.k:                                             ; preds = %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.i
  br i1 %i.az, label %_ZNK5clang6interp7Pointer8getIndexEv.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  br i1 %i.bc, label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bi = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ay
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !167
  br label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i

_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i8.i.i = phi ptr [ %i.bk, %bb.m ], [ %.pre38, %bb.l ]
  %i.bl = getelementptr inbounds nuw i8, ptr %.0.i.i8.i.i, i64 40
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !1080
  %.not1.i.i.i = icmp eq ptr %i.bm, null
  %..i.i.i = select i1 %.not1.i.i.i, i64 -8, i64 -16
  br label %_ZNK5clang6interp7Pointer8getIndexEv.exit

_ZNK5clang6interp7Pointer8getIndexEv.exit:        ; preds = %bb.k, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i
  %.0.neg.i.i.i = phi i64 [ %..i.i.i, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i ], [ 0, %bb.k ]
  %i.bn = sub i64 %i.aw, %i.ay
  %i.bo = add i64 %i.bn, %.0.neg.i.i.i
  %i.bp = trunc i64 %i.bo to i32
  %i.bq = icmp ugt i32 %i.bh, %i.bp
  br i1 %i.bq, label %_ZNK5clang6interp7Pointer8getIndexEv.exit.thread, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread

_ZNK5clang6interp7Pointer8getIndexEv.exit.thread: ; preds = %bb.h, %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.i, %_ZNK5clang6interp7Pointer8getIndexEv.exit
  %i.br = load ptr, ptr %i.a, align 8, !tbaa !354, !nonnull !124, !align !142
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.bs = getelementptr inbounds nuw i8, ptr %.pre38, i64 24
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !131, !noalias !1883
  %i.bu = icmp eq i32 %i.av, %i.bt
  br i1 %i.bu, label %_ZNK5clang6interp7Pointer7atIndexEm.exit, label %bb.n

bb.n:                                             ; preds = %_ZNK5clang6interp7Pointer8getIndexEv.exit.thread
  %i.bv = zext i32 %i.av to i64
  %i.bw = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !167, !noalias !1883
  br label %_ZNK5clang6interp7Pointer7atIndexEm.exit

_ZNK5clang6interp7Pointer7atIndexEm.exit:         ; preds = %_ZNK5clang6interp7Pointer8getIndexEv.exit.thread, %bb.n
  %.pn5.i.i = phi ptr [ %i.by, %bb.n ], [ %.pre38, %_ZNK5clang6interp7Pointer8getIndexEv.exit.thread ]
  %i.bz = getelementptr inbounds nuw i8, ptr %.pn5.i.i, i64 40
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !1080, !noalias !1883
  %.not.i.i = icmp eq ptr %i.ca, null
  %.0.v.i.i = select i1 %.not.i.i, i32 8, i32 16
  %i.cb = add i32 %.0.v.i.i, %i.av
  %i.cc = zext i32 %i.cb to i64
  call void @_ZN5clang6interp7PointerC2EPNS0_5BlockEjm(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull %i.af, i32 noundef %i.av, i64 noundef %i.cc) #24
  call void @_ZNK5clang6interp7Pointer6narrowEv(ptr dead_on_unwind nonnull writable sret(%"class.clang::interp::Pointer") align 8 %4, ptr noundef nonnull align 8 dereferenceable(48) %5)
  call void @_ZN5clang6interp11InterpStack4pushINS0_7PointerEJS3_EEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(80) %i.br, ptr noundef nonnull align 8 dereferenceable(48) %4)
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %4) #24
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.q

_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread: ; preds = %bb.f, %.thread45, %_ZNK5clang6interp7Pointer8getIndexEv.exit, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread33, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit
  %i.cd = load ptr, ptr %i.a, align 8, !tbaa !354, !nonnull !124, !align !142
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @_ZNK5clang6interp7Pointer6narrowEv(ptr dead_on_unwind nonnull writable sret(%"class.clang::interp::Pointer") align 8 %6, ptr noundef nonnull align 8 dereferenceable(48) %3)
  call void @_ZN5clang6interp11InterpStack4pushINS0_7PointerEJS3_EEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(80) %i.cd, ptr noundef nonnull align 8 dereferenceable(48) %6)
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.q

.thread:                                          ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @_ZN5clang6interp12OffsetHelperINS0_7BooleanELNS0_7ArithOpE0EEESt8optionalINS0_7PointerEERNS0_11InterpStateENS0_7CodePtrERKT_RKS5_b(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.599") align 8 %7, ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(48) %3, i1 noundef zeroext false)
  %i.ce = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 3 uses
  %i.cf = load i8, ptr %i.ce, align 8, !tbaa !883, !range !123, !noundef !124
  %i.cg = trunc nuw i8 %i.cf to i1                ; 2 uses
  br i1 %i.cg, label %bb.o, label %_ZNSt14_Optional_baseIN5clang6interp7PointerELb0ELb0EED2Ev.exit

bb.o:                                             ; preds = %.thread
  %i.ch = load ptr, ptr %i.a, align 8, !tbaa !354, !nonnull !124, !align !142
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @_ZNK5clang6interp7Pointer6narrowEv(ptr dead_on_unwind nonnull writable sret(%"class.clang::interp::Pointer") align 8 %8, ptr noundef nonnull align 8 dereferenceable(48) %7)
  call void @_ZN5clang6interp11InterpStack4pushINS0_7PointerEJS3_EEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(80) %i.ch, ptr noundef nonnull align 8 dereferenceable(48) %8)
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %.pre39 = load i8, ptr %i.ce, align 8, !tbaa !883, !range !123
  %i.ci = trunc nuw i8 %.pre39 to i1
  store i8 0, ptr %i.ce, align 8, !tbaa !883
  br i1 %i.ci, label %bb.p, label %_ZNSt14_Optional_baseIN5clang6interp7PointerELb0ELb0EED2Ev.exit

bb.p:                                             ; preds = %bb.o
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(56) %7) #24
  br label %_ZNSt14_Optional_baseIN5clang6interp7PointerELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN5clang6interp7PointerELb0ELb0EED2Ev.exit: ; preds = %.thread, %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %bb.q

bb.q:                                             ; preds = %_ZNSt14_Optional_baseIN5clang6interp7PointerELb0ELb0EED2Ev.exit, %_ZNK5clang6interp7Pointer7atIndexEm.exit, %bb.c, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread
  %.2 = phi i1 [ true, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread ], [ true, %_ZNK5clang6interp7Pointer7atIndexEm.exit ], [ false, %bb.c ], [ %i.cg, %_ZNSt14_Optional_baseIN5clang6interp7PointerELb0ELb0EED2Ev.exit ]
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret i1 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN5clang6interp11EvalEmitter10emitAssumeENS0_10SourceInfoE(ptr noundef nonnull align 8 dereferenceable(1140) %0, i64 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1132
  %i.b = load i32, ptr %i.a, align 4, !tbaa !110
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %i.d = load i32, ptr %i.c, align 8, !tbaa !111
  %i.e = icmp eq i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_ZN5clang6interp6AssumeERNS0_11InterpStateENS0_7CodePtrE.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1120
  store i64 %1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !354, !nonnull !124, !align !142 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !334
  %i.k = add i64 %i.j, -1
  store i64 %i.k, ptr %i.i, align 8, !tbaa !334
  %i.l = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.h, i64 noundef 8) #24
  %.sroa.0.0.copyload.i.i = load i8, ptr %i.l, align 1, !tbaa !335
  tail call void @_ZN5clang6interp11InterpStack6shrinkEm(ptr noundef nonnull align 8 dereferenceable(80) %i.h, i64 noundef 8) #24
  %i.m = trunc nuw i8 %.sroa.0.0.copyload.i.i to i1
  br i1 %i.m, label %_ZN5clang6interp6AssumeERNS0_11InterpStateENS0_7CodePtrE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 760
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !345
  %i.q = tail call i32 @_ZNK5clang6interp11InterpFrame11getLocationENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(72) %i.p, ptr null) #24
  %i.r = tail call ptr @_ZN5clang6interp5State7CCEDiagENS_14SourceLocationEjj(ptr noundef nonnull align 8 dereferenceable(456) %i.n, i32 %i.q, i32 noundef 2389, i32 noundef 0) #24 ; 0 uses
  br label %_ZN5clang6interp6AssumeERNS0_11InterpStateENS0_7CodePtrE.exit

_ZN5clang6interp6AssumeERNS0_11InterpStateENS0_7CodePtrE.exit: ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i1 [ true, %bb.a ], [ true, %bb.b ], [ false, %bb.c ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN5clang6interp11EvalEmitter10emitBitAndENS0_8PrimTypeENS0_10SourceInfoE(ptr noundef nonnull align 8 dereferenceable(1140) %0, i8 noundef zeroext %1, i64 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1132
  %i.b = load i32, ptr %i.a, align 4, !tbaa !110
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %i.d = load i32, ptr %i.c, align 8, !tbaa !111
  %i.e = icmp eq i32 %i.b, %i.d                   ; 11 uses
  switch i8 %1, label %bb.x [
    i8 0, label %bb.b
    i8 1, label %bb.d
    i8 2, label %bb.f
    i8 3, label %bb.h
    i8 4, label %bb.j
    i8 5, label %bb.l
    i8 6, label %bb.n
    i8 7, label %bb.p
    i8 8, label %bb.r
    i8 9, label %bb.t
    i8 11, label %bb.v
  ]

bb.b:                                             ; preds = %bb.a
  br i1 %i.e, label %bb.c, label %_ZN5clang6interp11EvalEmitter15emitBitAndSint8ENS0_10SourceInfoE.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1120
  store i64 %2, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.h = tail call noundef zeroext i1 @_ZN5clang6interp6BitAndILNS0_8PrimTypeE0ENS0_4CharILb1EEEEEbRNS0_11InterpStateE(ptr noundef nonnull align 8 dereferenceable(456) %i.g)
end_hunk_0
begin_hunk_1_@_ZN5clang6interp11EvalEmitter15emitStoreUint64ENS0_10SourceInfoE:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1132
  %i.b = load i32, ptr %i.a, align 4, !tbaa !110
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %i.d = load i32, ptr %i.c, align 8, !tbaa !111
  %i.e = icmp eq i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1120
  store i64 %1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.h = tail call noundef zeroext i1 @_ZN5clang6interp5StoreILNS0_8PrimTypeE7ENS0_8IntegralILj64ELb0EEEEEbRNS0_11InterpStateENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(456) %i.g, ptr null)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.h, %bb.b ], [ true, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN5clang6interp11EvalEmitter14emitStoreIntAPENS0_10SourceInfoE(ptr noundef nonnull align 8 dereferenceable(1140) %0, i64 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1132
  %i.b = load i32, ptr %i.a, align 4, !tbaa !110
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %i.d = load i32, ptr %i.c, align 8, !tbaa !111
  %i.e = icmp eq i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1120
  store i64 %1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.h = tail call noundef zeroext i1 @_ZN5clang6interp5StoreILNS0_8PrimTypeE8ENS0_10IntegralAPILb0EEEEEbRNS0_11InterpStateENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(456) %i.g, ptr null)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.h, %bb.b ], [ true, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN5clang6interp11EvalEmitter15emitStoreIntAPSENS0_10SourceInfoE(ptr noundef nonnull align 8 dereferenceable(1140) %0, i64 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1132
  %i.b = load i32, ptr %i.a, align 4, !tbaa !110
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %i.d = load i32, ptr %i.c, align 8, !tbaa !111
  %i.e = icmp eq i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1120
  store i64 %1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.h = tail call noundef zeroext i1 @_ZN5clang6interp5StoreILNS0_8PrimTypeE9ENS0_10IntegralAPILb1EEEEEbRNS0_11InterpStateENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(456) %i.g, ptr null)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.h, %bb.b ], [ true, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN5clang6interp11EvalEmitter13emitStoreBoolENS0_10SourceInfoE(ptr noundef nonnull align 8 dereferenceable(1140) %0, i64 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1132
  %i.b = load i32, ptr %i.a, align 4, !tbaa !110
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %i.d = load i32, ptr %i.c, align 8, !tbaa !111
  %i.e = icmp eq i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1120
  store i64 %1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.h = tail call noundef zeroext i1 @_ZN5clang6interp5StoreILNS0_8PrimTypeE10ENS0_7BooleanEEEbRNS0_11InterpStateENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(456) %i.g, ptr null)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.h, %bb.b ], [ true, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN5clang6interp11EvalEmitter19emitStoreFixedPointENS0_10SourceInfoE(ptr noundef nonnull align 8 dereferenceable(1140) %0, i64 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1132
  %i.b = load i32, ptr %i.a, align 4, !tbaa !110
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %i.d = load i32, ptr %i.c, align 8, !tbaa !111
  %i.e = icmp eq i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1120
  store i64 %1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.h = tail call noundef zeroext i1 @_ZN5clang6interp5StoreILNS0_8PrimTypeE11ENS0_10FixedPointEEEbRNS0_11InterpStateENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(456) %i.g, ptr null)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.h, %bb.b ], [ true, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN5clang6interp11EvalEmitter12emitStorePtrENS0_10SourceInfoE(ptr noundef nonnull align 8 dereferenceable(1140) %0, i64 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1132
  %i.b = load i32, ptr %i.a, align 4, !tbaa !110
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %i.d = load i32, ptr %i.c, align 8, !tbaa !111
  %i.e = icmp eq i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1120
  store i64 %1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.h = tail call noundef zeroext i1 @_ZN5clang6interp5StoreILNS0_8PrimTypeE13ENS0_7PointerEEEbRNS0_11InterpStateENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(456) %i.g, ptr null)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.h, %bb.b ], [ true, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN5clang6interp11EvalEmitter18emitStoreMemberPtrENS0_10SourceInfoE(ptr noundef nonnull align 8 dereferenceable(1140) %0, i64 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1132
  %i.b = load i32, ptr %i.a, align 4, !tbaa !110
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %i.d = load i32, ptr %i.c, align 8, !tbaa !111
  %i.e = icmp eq i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1120
  store i64 %1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.h = tail call noundef zeroext i1 @_ZN5clang6interp5StoreILNS0_8PrimTypeE14ENS0_13MemberPointerEEEbRNS0_11InterpStateENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(456) %i.g, ptr null)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.h, %bb.b ], [ true, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN5clang6interp11EvalEmitter14emitStoreFloatENS0_10SourceInfoE(ptr noundef nonnull align 8 dereferenceable(1140) %0, i64 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1132
  %i.b = load i32, ptr %i.a, align 4, !tbaa !110
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %i.d = load i32, ptr %i.c, align 8, !tbaa !111
  %i.e = icmp eq i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1120
  store i64 %1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.h = tail call noundef zeroext i1 @_ZN5clang6interp5StoreILNS0_8PrimTypeE12ENS0_8FloatingEEEbRNS0_11InterpStateENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(456) %i.g, ptr null)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.h, %bb.b ], [ true, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN5clang6interp5StoreILNS0_8PrimTypeE0ENS0_4CharILb1EEEEEbRNS0_11InterpStateENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1) local_unnamed_addr #0 comdat {
bb.a:
  %2 = alloca %"struct.clang::interp::PtrView", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !354, !nonnull !124, !align !142 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !334
  %i.e = add i64 %i.d, -1
  store i64 %i.e, ptr %i.c, align 8, !tbaa !334
  %i.f = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 8) #24
  %.sroa.0.0.copyload.i = load i8, ptr %i.f, align 1, !tbaa !135
  tail call void @_ZN5clang6interp11InterpStack6shrinkEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 8) #24
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !354, !nonnull !124, !align !142
  %i.h = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 noundef 48) #24 ; 8 uses
  %i.i = tail call noundef zeroext i1 @_ZN5clang6interp10CheckStoreERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerEb(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i1 noundef zeroext false) #24
  br i1 %i.i, label %bb.b, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !362  ; 3 uses
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = icmp ne i32 %i.k, 1
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8              ; 6 uses
  %i.p = icmp eq ptr %i.o, null                   ; 2 uses
  %or.cond.i.i.i = select i1 %i.m, i1 true, i1 %i.p
  br i1 %or.cond.i.i.i, label %bb.d, label %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i

_ZNK5clang6interp7Pointer6isRootEv.exit.i.i:      ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.r = load i32, ptr %i.q, align 8, !tbaa !135, !noalias !10223 ; 2 uses
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !125  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load i32, ptr %i.t, align 8, !tbaa !131
  %i.v = icmp eq i32 %i.r, %i.u
  br i1 %i.v, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.w = icmp eq i32 %i.k, 1
  br i1 %i.w, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

bb.e:                                             ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i
  %i.x = zext i32 %i.r to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  br label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i

_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i: ; preds = %bb.e, %bb.d
  %.0.i.in.i = phi ptr [ %i.z, %bb.e ], [ %i.o, %bb.d ]
  %.0.i.i = load ptr, ptr %.0.i.in.i, align 8, !tbaa !1418 ; 2 uses
  %.not.not.i = icmp eq ptr %.0.i.i, null
  br i1 %.not.not.i, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i

_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i: ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i
  %.0.i16.i = phi ptr [ %.0.i.i, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i ], [ %i.s, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i ] ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 53
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !170, !range !123, !noundef !124
  %i.ac = trunc nuw i8 %i.ab to i1                ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8
  %.not.i.i = icmp ne ptr %i.ae, null
  %or.cond.not.i.i = select i1 %i.ac, i1 true, i1 %.not.i.i
  br i1 %or.cond.not.i.i, label %bb.f, label %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i

_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i: ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 48
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !2924 ; 2 uses
  %.not.i = icmp eq i8 %i.ag, -1
  br i1 %.not.i, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit

bb.f:                                             ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8
  %.not.i9.i = icmp eq ptr %i.ai, null
  %i.aj = select i1 %i.ac, i1 %.not.i9.i, i1 false
  br i1 %i.aj, label %._crit_edge.i, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

._crit_edge.i:                                    ; preds = %bb.f
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 48
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 8, !tbaa !2924
  br label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit

_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit: ; preds = %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i, %._crit_edge.i
  %i.ak = phi i8 [ %.pre.i, %._crit_edge.i ], [ %i.ag, %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i ]
  %i.al = icmp eq i8 %i.ak, 0
  br i1 %i.al, label %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

_ZNK5clang6interp7Pointer16canBeInitializedEv.exit: ; preds = %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit
  %3 = xor i1 %i.p, true
  tail call void @llvm.assume(i1 %3)
  %i.am = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.an = load i32, ptr %i.am, align 8, !tbaa !135 ; 2 uses
  %.not = icmp eq i32 %i.an, 0
  br i1 %.not, label %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread, label %_ZNK5clang6interp7Pointer10initializeEv.exit

_ZNK5clang6interp7Pointer10initializeEv.exit:     ; preds = %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10226)
  store ptr %i.o, ptr %2, align 8, !tbaa !809, !alias.scope !10226
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.an, ptr %i.ao, align 8, !tbaa !811, !alias.scope !10226
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aq = load i64, ptr %i.h, align 8, !tbaa !163, !noalias !10226
  store i64 %i.aq, ptr %i.ap, align 8, !tbaa !812, !alias.scope !10226
  call void @_ZNK5clang6interp7PtrView10initializeEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %.pre = load ptr, ptr %i.n, align 8, !tbaa !135, !noalias !10229
  br label %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread

_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread: ; preds = %_ZNK5clang6interp7Pointer10initializeEv.exit, %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit
  %i.ar = phi ptr [ %i.o, %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit ], [ %.pre, %_ZNK5clang6interp7Pointer10initializeEv.exit ] ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.at = load i32, ptr %i.as, align 8, !tbaa !135, !noalias !10229 ; 2 uses
  %i.au = load i64, ptr %i.h, align 8, !tbaa !163, !noalias !10229 ; 2 uses
  %i.av = load ptr, ptr %i.ar, align 8, !tbaa !125 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !131
  %i.ay = icmp eq i32 %i.at, %i.ax
  %.pre.i12 = zext i32 %i.at to i64               ; 3 uses
  br i1 %i.ay, label %_ZNK5clang6interp7Pointer5derefINS0_4CharILb1EEEEERT_v.exit, label %bb.g

bb.g:                                             ; preds = %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread
  %i.az = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.pre.i12
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !167
  br label %_ZNK5clang6interp7Pointer5derefINS0_4CharILb1EEEEERT_v.exit

_ZNK5clang6interp7Pointer5derefINS0_4CharILb1EEEEERT_v.exit: ; preds = %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread, %bb.g
  %.0.i.i.i.i.i = phi ptr [ %i.bb, %bb.g ], [ %i.av, %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 53
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !170, !range !123, !noundef !124
  %i.be = trunc nuw i8 %i.bd to i1
  %i.bf = icmp eq i64 %i.au, %.pre.i12
  %i.bg = and i1 %i.bf, %i.be                     ; 2 uses
  %.sink6.i.i = select i1 %i.bg, i64 %.pre.i12, i64 40
  %.sink5.i.i = select i1 %i.bg, i64 48, i64 %i.au
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.sink6.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.sink5.i.i
  store i8 %.sroa.0.0.copyload.i, ptr %i.bi, align 1, !tbaa !135
  br label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread: ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i, %bb.b, %bb.d, %bb.f, %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i, %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit, %bb.a, %_ZNK5clang6interp7Pointer5derefINS0_4CharILb1EEEEERT_v.exit
  %.0 = phi i1 [ true, %_ZNK5clang6interp7Pointer5derefINS0_4CharILb1EEEEERT_v.exit ], [ false, %bb.a ], [ false, %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit ], [ false, %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i ], [ false, %bb.f ], [ false, %bb.d ], [ false, %bb.b ], [ false, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN5clang6interp5StoreILNS0_8PrimTypeE1ENS0_4CharILb0EEEEEbRNS0_11InterpStateENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1) local_unnamed_addr #0 comdat {
bb.a:
  %2 = alloca %"struct.clang::interp::PtrView", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !354, !nonnull !124, !align !142 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !334
  %i.e = add i64 %i.d, -1
  store i64 %i.e, ptr %i.c, align 8, !tbaa !334
  %i.f = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 8) #24
  %.sroa.0.0.copyload.i = load i8, ptr %i.f, align 1, !tbaa !135
  tail call void @_ZN5clang6interp11InterpStack6shrinkEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 8) #24
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !354, !nonnull !124, !align !142
  %i.h = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 noundef 48) #24 ; 8 uses
  %i.i = tail call noundef zeroext i1 @_ZN5clang6interp10CheckStoreERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerEb(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i1 noundef zeroext false) #24
  br i1 %i.i, label %bb.b, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !362  ; 3 uses
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = icmp ne i32 %i.k, 1
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8              ; 6 uses
  %i.p = icmp eq ptr %i.o, null                   ; 2 uses
  %or.cond.i.i.i = select i1 %i.m, i1 true, i1 %i.p
  br i1 %or.cond.i.i.i, label %bb.d, label %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i

_ZNK5clang6interp7Pointer6isRootEv.exit.i.i:      ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.r = load i32, ptr %i.q, align 8, !tbaa !135, !noalias !10232 ; 2 uses
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !125  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load i32, ptr %i.t, align 8, !tbaa !131
  %i.v = icmp eq i32 %i.r, %i.u
  br i1 %i.v, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.w = icmp eq i32 %i.k, 1
  br i1 %i.w, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

bb.e:                                             ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i
  %i.x = zext i32 %i.r to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  br label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i

_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i: ; preds = %bb.e, %bb.d
  %.0.i.in.i = phi ptr [ %i.z, %bb.e ], [ %i.o, %bb.d ]
  %.0.i.i = load ptr, ptr %.0.i.in.i, align 8, !tbaa !1418 ; 2 uses
  %.not.not.i = icmp eq ptr %.0.i.i, null
  br i1 %.not.not.i, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i

_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i: ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i
  %.0.i16.i = phi ptr [ %.0.i.i, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i ], [ %i.s, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i ] ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 53
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !170, !range !123, !noundef !124
  %i.ac = trunc nuw i8 %i.ab to i1                ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8
  %.not.i.i = icmp ne ptr %i.ae, null
  %or.cond.not.i.i = select i1 %i.ac, i1 true, i1 %.not.i.i
  br i1 %or.cond.not.i.i, label %bb.f, label %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i

_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i: ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 48
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !2924 ; 2 uses
  %.not.i = icmp eq i8 %i.ag, -1
  br i1 %.not.i, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit

bb.f:                                             ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8
  %.not.i9.i = icmp eq ptr %i.ai, null
  %i.aj = select i1 %i.ac, i1 %.not.i9.i, i1 false
  br i1 %i.aj, label %._crit_edge.i, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

._crit_edge.i:                                    ; preds = %bb.f
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 48
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 8, !tbaa !2924
  br label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit

_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit: ; preds = %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i, %._crit_edge.i
  %i.ak = phi i8 [ %.pre.i, %._crit_edge.i ], [ %i.ag, %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i ]
  %i.al = icmp eq i8 %i.ak, 1
  br i1 %i.al, label %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

_ZNK5clang6interp7Pointer16canBeInitializedEv.exit: ; preds = %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit
  %3 = xor i1 %i.p, true
  tail call void @llvm.assume(i1 %3)
  %i.am = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.an = load i32, ptr %i.am, align 8, !tbaa !135 ; 2 uses
  %.not = icmp eq i32 %i.an, 0
  br i1 %.not, label %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread, label %_ZNK5clang6interp7Pointer10initializeEv.exit

_ZNK5clang6interp7Pointer10initializeEv.exit:     ; preds = %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10235)
  store ptr %i.o, ptr %2, align 8, !tbaa !809, !alias.scope !10235
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.an, ptr %i.ao, align 8, !tbaa !811, !alias.scope !10235
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aq = load i64, ptr %i.h, align 8, !tbaa !163, !noalias !10235
  store i64 %i.aq, ptr %i.ap, align 8, !tbaa !812, !alias.scope !10235
  call void @_ZNK5clang6interp7PtrView10initializeEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %.pre = load ptr, ptr %i.n, align 8, !tbaa !135, !noalias !10238
  br label %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread

_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread: ; preds = %_ZNK5clang6interp7Pointer10initializeEv.exit, %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit
  %i.ar = phi ptr [ %i.o, %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit ], [ %.pre, %_ZNK5clang6interp7Pointer10initializeEv.exit ] ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.at = load i32, ptr %i.as, align 8, !tbaa !135, !noalias !10238 ; 2 uses
  %i.au = load i64, ptr %i.h, align 8, !tbaa !163, !noalias !10238 ; 2 uses
  %i.av = load ptr, ptr %i.ar, align 8, !tbaa !125 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !131
  %i.ay = icmp eq i32 %i.at, %i.ax
  %.pre.i12 = zext i32 %i.at to i64               ; 3 uses
  br i1 %i.ay, label %_ZNK5clang6interp7Pointer5derefINS0_4CharILb0EEEEERT_v.exit, label %bb.g

bb.g:                                             ; preds = %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread
  %i.az = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.pre.i12
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !167
  br label %_ZNK5clang6interp7Pointer5derefINS0_4CharILb0EEEEERT_v.exit

_ZNK5clang6interp7Pointer5derefINS0_4CharILb0EEEEERT_v.exit: ; preds = %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread, %bb.g
  %.0.i.i.i.i.i = phi ptr [ %i.bb, %bb.g ], [ %i.av, %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 53
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !170, !range !123, !noundef !124
  %i.be = trunc nuw i8 %i.bd to i1
  %i.bf = icmp eq i64 %i.au, %.pre.i12
  %i.bg = and i1 %i.bf, %i.be                     ; 2 uses
  %.sink6.i.i = select i1 %i.bg, i64 %.pre.i12, i64 40
  %.sink5.i.i = select i1 %i.bg, i64 48, i64 %i.au
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.sink6.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.sink5.i.i
  store i8 %.sroa.0.0.copyload.i, ptr %i.bi, align 1, !tbaa !135
  br label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread: ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i, %bb.b, %bb.d, %bb.f, %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i, %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit, %bb.a, %_ZNK5clang6interp7Pointer5derefINS0_4CharILb0EEEEERT_v.exit
  %.0 = phi i1 [ true, %_ZNK5clang6interp7Pointer5derefINS0_4CharILb0EEEEERT_v.exit ], [ false, %bb.a ], [ false, %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit ], [ false, %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i ], [ false, %bb.f ], [ false, %bb.d ], [ false, %bb.b ], [ false, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN5clang6interp5StoreILNS0_8PrimTypeE2ENS0_8IntegralILj16ELb1EEEEEbRNS0_11InterpStateENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1) local_unnamed_addr #0 comdat {
bb.a:
  %2 = alloca %"struct.clang::interp::PtrView", align 8 ; 6 uses
  %3 = alloca %"class.clang::interp::Integral", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !354, !nonnull !124, !align !142 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !334, !noalias !10241
  %i.e = add i64 %i.d, -1
  store i64 %i.e, ptr %i.c, align 8, !tbaa !334, !noalias !10241
  %i.f = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 24) #24, !noalias !10241
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !tbaa.struct !828
  tail call void @_ZN5clang6interp11InterpStack6shrinkEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 24) #24, !noalias !10241
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !354, !nonnull !124, !align !142
  %i.h = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 noundef 48) #24 ; 8 uses
  %i.i = tail call noundef zeroext i1 @_ZN5clang6interp10CheckStoreERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerEb(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i1 noundef zeroext false) #24
  br i1 %i.i, label %bb.b, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !362  ; 3 uses
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = icmp ne i32 %i.k, 1
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8              ; 6 uses
  %i.p = icmp eq ptr %i.o, null                   ; 2 uses
  %or.cond.i.i.i = select i1 %i.m, i1 true, i1 %i.p
  br i1 %or.cond.i.i.i, label %bb.d, label %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i

_ZNK5clang6interp7Pointer6isRootEv.exit.i.i:      ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.r = load i32, ptr %i.q, align 8, !tbaa !135, !noalias !10244 ; 2 uses
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !125  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load i32, ptr %i.t, align 8, !tbaa !131
  %i.v = icmp eq i32 %i.r, %i.u
  br i1 %i.v, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.w = icmp eq i32 %i.k, 1
  br i1 %i.w, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

bb.e:                                             ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i
  %i.x = zext i32 %i.r to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  br label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i

_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i: ; preds = %bb.e, %bb.d
  %.0.i.in.i = phi ptr [ %i.z, %bb.e ], [ %i.o, %bb.d ]
  %.0.i.i = load ptr, ptr %.0.i.in.i, align 8, !tbaa !1418 ; 2 uses
  %.not.not.i = icmp eq ptr %.0.i.i, null
  br i1 %.not.not.i, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i

_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i: ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i
  %.0.i16.i = phi ptr [ %.0.i.i, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i ], [ %i.s, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i ] ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 53
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !170, !range !123, !noundef !124
  %i.ac = trunc nuw i8 %i.ab to i1                ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8
  %.not.i.i = icmp ne ptr %i.ae, null
  %or.cond.not.i.i = select i1 %i.ac, i1 true, i1 %.not.i.i
  br i1 %or.cond.not.i.i, label %bb.f, label %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i

_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i: ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 48
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !2924 ; 2 uses
  %.not.i = icmp eq i8 %i.ag, -1
  br i1 %.not.i, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit

bb.f:                                             ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8
  %.not.i9.i = icmp eq ptr %i.ai, null
  %i.aj = select i1 %i.ac, i1 %.not.i9.i, i1 false
  br i1 %i.aj, label %._crit_edge.i, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

._crit_edge.i:                                    ; preds = %bb.f
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 48
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 8, !tbaa !2924
  br label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit

_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit: ; preds = %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i, %._crit_edge.i
  %i.ak = phi i8 [ %.pre.i, %._crit_edge.i ], [ %i.ag, %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i ]
  %i.al = icmp eq i8 %i.ak, 2
  br i1 %i.al, label %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

_ZNK5clang6interp7Pointer16canBeInitializedEv.exit: ; preds = %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit
  %4 = xor i1 %i.p, true
  tail call void @llvm.assume(i1 %4)
  %i.am = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.an = load i32, ptr %i.am, align 8, !tbaa !135 ; 2 uses
  %.not = icmp eq i32 %i.an, 0
  br i1 %.not, label %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread, label %_ZNK5clang6interp7Pointer10initializeEv.exit

_ZNK5clang6interp7Pointer10initializeEv.exit:     ; preds = %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10247)
  store ptr %i.o, ptr %2, align 8, !tbaa !809, !alias.scope !10247
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.an, ptr %i.ao, align 8, !tbaa !811, !alias.scope !10247
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aq = load i64, ptr %i.h, align 8, !tbaa !163, !noalias !10247
  store i64 %i.aq, ptr %i.ap, align 8, !tbaa !812, !alias.scope !10247
  call void @_ZNK5clang6interp7PtrView10initializeEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %.pre = load ptr, ptr %i.n, align 8, !tbaa !135, !noalias !10250
  br label %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread

_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread: ; preds = %_ZNK5clang6interp7Pointer10initializeEv.exit, %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit
  %i.ar = phi ptr [ %i.o, %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit ], [ %.pre, %_ZNK5clang6interp7Pointer10initializeEv.exit ] ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.at = load i32, ptr %i.as, align 8, !tbaa !135, !noalias !10250 ; 2 uses
  %i.au = load i64, ptr %i.h, align 8, !tbaa !163, !noalias !10250 ; 2 uses
  %i.av = load ptr, ptr %i.ar, align 8, !tbaa !125 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !131
  %i.ay = icmp eq i32 %i.at, %i.ax
  %.pre.i12 = zext i32 %i.at to i64               ; 3 uses
  br i1 %i.ay, label %_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj16ELb1EEEEERT_v.exit, label %bb.g

bb.g:                                             ; preds = %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread
  %i.az = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.pre.i12
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !167
  br label %_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj16ELb1EEEEERT_v.exit

_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj16ELb1EEEEERT_v.exit: ; preds = %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread, %bb.g
  %.0.i.i.i.i.i = phi ptr [ %i.bb, %bb.g ], [ %i.av, %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 53
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !170, !range !123, !noundef !124
  %i.be = trunc nuw i8 %i.bd to i1
  %i.bf = icmp eq i64 %i.au, %.pre.i12
  %i.bg = and i1 %i.bf, %i.be                     ; 2 uses
  %.sink6.i.i = select i1 %i.bg, i64 %.pre.i12, i64 40
  %.sink5.i.i = select i1 %i.bg, i64 48, i64 %i.au
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.sink6.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.sink5.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bi, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !828
  br label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread: ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i, %bb.b, %bb.d, %bb.f, %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i, %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit, %bb.a, %_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj16ELb1EEEEERT_v.exit
  %.0 = phi i1 [ true, %_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj16ELb1EEEEERT_v.exit ], [ false, %bb.a ], [ false, %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit ], [ false, %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i ], [ false, %bb.f ], [ false, %bb.d ], [ false, %bb.b ], [ false, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN5clang6interp5StoreILNS0_8PrimTypeE3ENS0_8IntegralILj16ELb0EEEEEbRNS0_11InterpStateENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1) local_unnamed_addr #0 comdat {
bb.a:
  %2 = alloca %"struct.clang::interp::PtrView", align 8 ; 6 uses
  %3 = alloca %"class.clang::interp::Integral.550", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !354, !nonnull !124, !align !142 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !334, !noalias !10253
  %i.e = add i64 %i.d, -1
  store i64 %i.e, ptr %i.c, align 8, !tbaa !334, !noalias !10253
  %i.f = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 24) #24, !noalias !10253
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !tbaa.struct !828
  tail call void @_ZN5clang6interp11InterpStack6shrinkEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 24) #24, !noalias !10253
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !354, !nonnull !124, !align !142
  %i.h = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 noundef 48) #24 ; 8 uses
  %i.i = tail call noundef zeroext i1 @_ZN5clang6interp10CheckStoreERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerEb(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i1 noundef zeroext false) #24
  br i1 %i.i, label %bb.b, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !362  ; 3 uses
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = icmp ne i32 %i.k, 1
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8              ; 6 uses
  %i.p = icmp eq ptr %i.o, null                   ; 2 uses
  %or.cond.i.i.i = select i1 %i.m, i1 true, i1 %i.p
  br i1 %or.cond.i.i.i, label %bb.d, label %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i

_ZNK5clang6interp7Pointer6isRootEv.exit.i.i:      ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.r = load i32, ptr %i.q, align 8, !tbaa !135, !noalias !10256 ; 2 uses
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !125  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load i32, ptr %i.t, align 8, !tbaa !131
  %i.v = icmp eq i32 %i.r, %i.u
  br i1 %i.v, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.w = icmp eq i32 %i.k, 1
  br i1 %i.w, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

bb.e:                                             ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i
  %i.x = zext i32 %i.r to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  br label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i

_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i: ; preds = %bb.e, %bb.d
  %.0.i.in.i = phi ptr [ %i.z, %bb.e ], [ %i.o, %bb.d ]
  %.0.i.i = load ptr, ptr %.0.i.in.i, align 8, !tbaa !1418 ; 2 uses
  %.not.not.i = icmp eq ptr %.0.i.i, null
  br i1 %.not.not.i, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i

_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i: ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i
  %.0.i16.i = phi ptr [ %.0.i.i, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i ], [ %i.s, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i ] ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 53
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !170, !range !123, !noundef !124
  %i.ac = trunc nuw i8 %i.ab to i1                ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8
  %.not.i.i = icmp ne ptr %i.ae, null
  %or.cond.not.i.i = select i1 %i.ac, i1 true, i1 %.not.i.i
  br i1 %or.cond.not.i.i, label %bb.f, label %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i

_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i: ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 48
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !2924 ; 2 uses
  %.not.i = icmp eq i8 %i.ag, -1
  br i1 %.not.i, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit

bb.f:                                             ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8
  %.not.i9.i = icmp eq ptr %i.ai, null
  %i.aj = select i1 %i.ac, i1 %.not.i9.i, i1 false
  br i1 %i.aj, label %._crit_edge.i, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

._crit_edge.i:                                    ; preds = %bb.f
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 48
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 8, !tbaa !2924
  br label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit

_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit: ; preds = %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i, %._crit_edge.i
  %i.ak = phi i8 [ %.pre.i, %._crit_edge.i ], [ %i.ag, %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i ]
  %i.al = icmp eq i8 %i.ak, 3
  br i1 %i.al, label %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

_ZNK5clang6interp7Pointer16canBeInitializedEv.exit: ; preds = %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit
  %4 = xor i1 %i.p, true
  tail call void @llvm.assume(i1 %4)
  %i.am = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.an = load i32, ptr %i.am, align 8, !tbaa !135 ; 2 uses
  %.not = icmp eq i32 %i.an, 0
  br i1 %.not, label %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread, label %_ZNK5clang6interp7Pointer10initializeEv.exit

_ZNK5clang6interp7Pointer10initializeEv.exit:     ; preds = %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10259)
  store ptr %i.o, ptr %2, align 8, !tbaa !809, !alias.scope !10259
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.an, ptr %i.ao, align 8, !tbaa !811, !alias.scope !10259
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aq = load i64, ptr %i.h, align 8, !tbaa !163, !noalias !10259
  store i64 %i.aq, ptr %i.ap, align 8, !tbaa !812, !alias.scope !10259
  call void @_ZNK5clang6interp7PtrView10initializeEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %.pre = load ptr, ptr %i.n, align 8, !tbaa !135, !noalias !10262
  br label %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread

_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread: ; preds = %_ZNK5clang6interp7Pointer10initializeEv.exit, %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit
  %i.ar = phi ptr [ %i.o, %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit ], [ %.pre, %_ZNK5clang6interp7Pointer10initializeEv.exit ] ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.at = load i32, ptr %i.as, align 8, !tbaa !135, !noalias !10262 ; 2 uses
  %i.au = load i64, ptr %i.h, align 8, !tbaa !163, !noalias !10262 ; 2 uses
  %i.av = load ptr, ptr %i.ar, align 8, !tbaa !125 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !131
  %i.ay = icmp eq i32 %i.at, %i.ax
  %.pre.i12 = zext i32 %i.at to i64               ; 3 uses
  br i1 %i.ay, label %_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj16ELb0EEEEERT_v.exit, label %bb.g

bb.g:                                             ; preds = %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread
  %i.az = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.pre.i12
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !167
  br label %_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj16ELb0EEEEERT_v.exit

_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj16ELb0EEEEERT_v.exit: ; preds = %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread, %bb.g
  %.0.i.i.i.i.i = phi ptr [ %i.bb, %bb.g ], [ %i.av, %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 53
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !170, !range !123, !noundef !124
  %i.be = trunc nuw i8 %i.bd to i1
  %i.bf = icmp eq i64 %i.au, %.pre.i12
  %i.bg = and i1 %i.bf, %i.be                     ; 2 uses
  %.sink6.i.i = select i1 %i.bg, i64 %.pre.i12, i64 40
  %.sink5.i.i = select i1 %i.bg, i64 48, i64 %i.au
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.sink6.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.sink5.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bi, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !828
  br label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread: ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i, %bb.b, %bb.d, %bb.f, %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i, %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit, %bb.a, %_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj16ELb0EEEEERT_v.exit
  %.0 = phi i1 [ true, %_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj16ELb0EEEEERT_v.exit ], [ false, %bb.a ], [ false, %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit ], [ false, %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i ], [ false, %bb.f ], [ false, %bb.d ], [ false, %bb.b ], [ false, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN5clang6interp5StoreILNS0_8PrimTypeE4ENS0_8IntegralILj32ELb1EEEEEbRNS0_11InterpStateENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1) local_unnamed_addr #0 comdat {
bb.a:
  %2 = alloca %"struct.clang::interp::PtrView", align 8 ; 6 uses
  %3 = alloca %"class.clang::interp::Integral.554", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !354, !nonnull !124, !align !142 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !334, !noalias !10265
  %i.e = add i64 %i.d, -1
  store i64 %i.e, ptr %i.c, align 8, !tbaa !334, !noalias !10265
  %i.f = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 24) #24, !noalias !10265
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !tbaa.struct !828
  tail call void @_ZN5clang6interp11InterpStack6shrinkEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 24) #24, !noalias !10265
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !354, !nonnull !124, !align !142
  %i.h = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 noundef 48) #24 ; 8 uses
  %i.i = tail call noundef zeroext i1 @_ZN5clang6interp10CheckStoreERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerEb(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i1 noundef zeroext false) #24
  br i1 %i.i, label %bb.b, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !362  ; 3 uses
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = icmp ne i32 %i.k, 1
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8              ; 6 uses
  %i.p = icmp eq ptr %i.o, null                   ; 2 uses
  %or.cond.i.i.i = select i1 %i.m, i1 true, i1 %i.p
  br i1 %or.cond.i.i.i, label %bb.d, label %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i

_ZNK5clang6interp7Pointer6isRootEv.exit.i.i:      ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.r = load i32, ptr %i.q, align 8, !tbaa !135, !noalias !10268 ; 2 uses
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !125  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load i32, ptr %i.t, align 8, !tbaa !131
  %i.v = icmp eq i32 %i.r, %i.u
  br i1 %i.v, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.w = icmp eq i32 %i.k, 1
  br i1 %i.w, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

bb.e:                                             ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i
  %i.x = zext i32 %i.r to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  br label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i

_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i: ; preds = %bb.e, %bb.d
  %.0.i.in.i = phi ptr [ %i.z, %bb.e ], [ %i.o, %bb.d ]
  %.0.i.i = load ptr, ptr %.0.i.in.i, align 8, !tbaa !1418 ; 2 uses
  %.not.not.i = icmp eq ptr %.0.i.i, null
  br i1 %.not.not.i, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i

_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i: ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i
  %.0.i16.i = phi ptr [ %.0.i.i, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i ], [ %i.s, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i ] ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 53
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !170, !range !123, !noundef !124
  %i.ac = trunc nuw i8 %i.ab to i1                ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8
  %.not.i.i = icmp ne ptr %i.ae, null
  %or.cond.not.i.i = select i1 %i.ac, i1 true, i1 %.not.i.i
  br i1 %or.cond.not.i.i, label %bb.f, label %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i

_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i: ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 48
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !2924 ; 2 uses
  %.not.i = icmp eq i8 %i.ag, -1
  br i1 %.not.i, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit

bb.f:                                             ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8
  %.not.i9.i = icmp eq ptr %i.ai, null
  %i.aj = select i1 %i.ac, i1 %.not.i9.i, i1 false
  br i1 %i.aj, label %._crit_edge.i, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

._crit_edge.i:                                    ; preds = %bb.f
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 48
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 8, !tbaa !2924
  br label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit

_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit: ; preds = %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i, %._crit_edge.i
  %i.ak = phi i8 [ %.pre.i, %._crit_edge.i ], [ %i.ag, %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i ]
  %i.al = icmp eq i8 %i.ak, 4
  br i1 %i.al, label %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

_ZNK5clang6interp7Pointer16canBeInitializedEv.exit: ; preds = %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit
  %4 = xor i1 %i.p, true
  tail call void @llvm.assume(i1 %4)
  %i.am = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.an = load i32, ptr %i.am, align 8, !tbaa !135 ; 2 uses
  %.not = icmp eq i32 %i.an, 0
  br i1 %.not, label %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread, label %_ZNK5clang6interp7Pointer10initializeEv.exit

_ZNK5clang6interp7Pointer10initializeEv.exit:     ; preds = %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10271)
  store ptr %i.o, ptr %2, align 8, !tbaa !809, !alias.scope !10271
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.an, ptr %i.ao, align 8, !tbaa !811, !alias.scope !10271
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aq = load i64, ptr %i.h, align 8, !tbaa !163, !noalias !10271
  store i64 %i.aq, ptr %i.ap, align 8, !tbaa !812, !alias.scope !10271
  call void @_ZNK5clang6interp7PtrView10initializeEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %.pre = load ptr, ptr %i.n, align 8, !tbaa !135, !noalias !10274
  br label %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread

_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread: ; preds = %_ZNK5clang6interp7Pointer10initializeEv.exit, %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit
  %i.ar = phi ptr [ %i.o, %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit ], [ %.pre, %_ZNK5clang6interp7Pointer10initializeEv.exit ] ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.at = load i32, ptr %i.as, align 8, !tbaa !135, !noalias !10274 ; 2 uses
  %i.au = load i64, ptr %i.h, align 8, !tbaa !163, !noalias !10274 ; 2 uses
  %i.av = load ptr, ptr %i.ar, align 8, !tbaa !125 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !131
  %i.ay = icmp eq i32 %i.at, %i.ax
  %.pre.i12 = zext i32 %i.at to i64               ; 3 uses
  br i1 %i.ay, label %_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj32ELb1EEEEERT_v.exit, label %bb.g

bb.g:                                             ; preds = %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread
  %i.az = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.pre.i12
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !167
  br label %_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj32ELb1EEEEERT_v.exit

_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj32ELb1EEEEERT_v.exit: ; preds = %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread, %bb.g
  %.0.i.i.i.i.i = phi ptr [ %i.bb, %bb.g ], [ %i.av, %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 53
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !170, !range !123, !noundef !124
  %i.be = trunc nuw i8 %i.bd to i1
  %i.bf = icmp eq i64 %i.au, %.pre.i12
  %i.bg = and i1 %i.bf, %i.be                     ; 2 uses
  %.sink6.i.i = select i1 %i.bg, i64 %.pre.i12, i64 40
  %.sink5.i.i = select i1 %i.bg, i64 48, i64 %i.au
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.sink6.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.sink5.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bi, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !828
  br label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread: ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i, %bb.b, %bb.d, %bb.f, %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i, %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit, %bb.a, %_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj32ELb1EEEEERT_v.exit
  %.0 = phi i1 [ true, %_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj32ELb1EEEEERT_v.exit ], [ false, %bb.a ], [ false, %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit ], [ false, %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i ], [ false, %bb.f ], [ false, %bb.d ], [ false, %bb.b ], [ false, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN5clang6interp5StoreILNS0_8PrimTypeE5ENS0_8IntegralILj32ELb0EEEEEbRNS0_11InterpStateENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1) local_unnamed_addr #0 comdat {
bb.a:
  %2 = alloca %"struct.clang::interp::PtrView", align 8 ; 6 uses
  %3 = alloca %"class.clang::interp::Integral.558", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !354, !nonnull !124, !align !142 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !334, !noalias !10277
  %i.e = add i64 %i.d, -1
  store i64 %i.e, ptr %i.c, align 8, !tbaa !334, !noalias !10277
  %i.f = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 24) #24, !noalias !10277
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !tbaa.struct !828
  tail call void @_ZN5clang6interp11InterpStack6shrinkEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 24) #24, !noalias !10277
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !354, !nonnull !124, !align !142
  %i.h = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 noundef 48) #24 ; 8 uses
  %i.i = tail call noundef zeroext i1 @_ZN5clang6interp10CheckStoreERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerEb(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i1 noundef zeroext false) #24
  br i1 %i.i, label %bb.b, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !362  ; 3 uses
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = icmp ne i32 %i.k, 1
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8              ; 6 uses
  %i.p = icmp eq ptr %i.o, null                   ; 2 uses
  %or.cond.i.i.i = select i1 %i.m, i1 true, i1 %i.p
  br i1 %or.cond.i.i.i, label %bb.d, label %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i

_ZNK5clang6interp7Pointer6isRootEv.exit.i.i:      ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.r = load i32, ptr %i.q, align 8, !tbaa !135, !noalias !10280 ; 2 uses
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !125  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load i32, ptr %i.t, align 8, !tbaa !131
  %i.v = icmp eq i32 %i.r, %i.u
  br i1 %i.v, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.w = icmp eq i32 %i.k, 1
  br i1 %i.w, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

bb.e:                                             ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i
  %i.x = zext i32 %i.r to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  br label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i

_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i: ; preds = %bb.e, %bb.d
  %.0.i.in.i = phi ptr [ %i.z, %bb.e ], [ %i.o, %bb.d ]
  %.0.i.i = load ptr, ptr %.0.i.in.i, align 8, !tbaa !1418 ; 2 uses
  %.not.not.i = icmp eq ptr %.0.i.i, null
  br i1 %.not.not.i, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i

_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i: ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i
  %.0.i16.i = phi ptr [ %.0.i.i, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i ], [ %i.s, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i ] ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 53
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !170, !range !123, !noundef !124
  %i.ac = trunc nuw i8 %i.ab to i1                ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8
  %.not.i.i = icmp ne ptr %i.ae, null
  %or.cond.not.i.i = select i1 %i.ac, i1 true, i1 %.not.i.i
  br i1 %or.cond.not.i.i, label %bb.f, label %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i

_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i: ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 48
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !2924 ; 2 uses
  %.not.i = icmp eq i8 %i.ag, -1
  br i1 %.not.i, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit

bb.f:                                             ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8
  %.not.i9.i = icmp eq ptr %i.ai, null
  %i.aj = select i1 %i.ac, i1 %.not.i9.i, i1 false
  br i1 %i.aj, label %._crit_edge.i, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

._crit_edge.i:                                    ; preds = %bb.f
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 48
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 8, !tbaa !2924
  br label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit

_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit: ; preds = %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i, %._crit_edge.i
  %i.ak = phi i8 [ %.pre.i, %._crit_edge.i ], [ %i.ag, %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i ]
  %i.al = icmp eq i8 %i.ak, 5
  br i1 %i.al, label %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

_ZNK5clang6interp7Pointer16canBeInitializedEv.exit: ; preds = %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit
  %4 = xor i1 %i.p, true
  tail call void @llvm.assume(i1 %4)
  %i.am = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.an = load i32, ptr %i.am, align 8, !tbaa !135 ; 2 uses
  %.not = icmp eq i32 %i.an, 0
  br i1 %.not, label %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread, label %_ZNK5clang6interp7Pointer10initializeEv.exit

_ZNK5clang6interp7Pointer10initializeEv.exit:     ; preds = %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10283)
  store ptr %i.o, ptr %2, align 8, !tbaa !809, !alias.scope !10283
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.an, ptr %i.ao, align 8, !tbaa !811, !alias.scope !10283
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aq = load i64, ptr %i.h, align 8, !tbaa !163, !noalias !10283
  store i64 %i.aq, ptr %i.ap, align 8, !tbaa !812, !alias.scope !10283
  call void @_ZNK5clang6interp7PtrView10initializeEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %.pre = load ptr, ptr %i.n, align 8, !tbaa !135, !noalias !10286
  br label %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread

_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread: ; preds = %_ZNK5clang6interp7Pointer10initializeEv.exit, %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit
  %i.ar = phi ptr [ %i.o, %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit ], [ %.pre, %_ZNK5clang6interp7Pointer10initializeEv.exit ] ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.at = load i32, ptr %i.as, align 8, !tbaa !135, !noalias !10286 ; 2 uses
  %i.au = load i64, ptr %i.h, align 8, !tbaa !163, !noalias !10286 ; 2 uses
  %i.av = load ptr, ptr %i.ar, align 8, !tbaa !125 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !131
  %i.ay = icmp eq i32 %i.at, %i.ax
  %.pre.i12 = zext i32 %i.at to i64               ; 3 uses
  br i1 %i.ay, label %_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj32ELb0EEEEERT_v.exit, label %bb.g

bb.g:                                             ; preds = %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread
  %i.az = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.pre.i12
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !167
  br label %_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj32ELb0EEEEERT_v.exit

_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj32ELb0EEEEERT_v.exit: ; preds = %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread, %bb.g
  %.0.i.i.i.i.i = phi ptr [ %i.bb, %bb.g ], [ %i.av, %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 53
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !170, !range !123, !noundef !124
  %i.be = trunc nuw i8 %i.bd to i1
  %i.bf = icmp eq i64 %i.au, %.pre.i12
  %i.bg = and i1 %i.bf, %i.be                     ; 2 uses
  %.sink6.i.i = select i1 %i.bg, i64 %.pre.i12, i64 40
  %.sink5.i.i = select i1 %i.bg, i64 48, i64 %i.au
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.sink6.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.sink5.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bi, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !828
  br label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread: ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i, %bb.b, %bb.d, %bb.f, %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i, %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit, %bb.a, %_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj32ELb0EEEEERT_v.exit
  %.0 = phi i1 [ true, %_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj32ELb0EEEEERT_v.exit ], [ false, %bb.a ], [ false, %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit ], [ false, %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i ], [ false, %bb.f ], [ false, %bb.d ], [ false, %bb.b ], [ false, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN5clang6interp5StoreILNS0_8PrimTypeE6ENS0_8IntegralILj64ELb1EEEEEbRNS0_11InterpStateENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1) local_unnamed_addr #0 comdat {
bb.a:
  %2 = alloca %"struct.clang::interp::PtrView", align 8 ; 6 uses
  %3 = alloca %"class.clang::interp::Integral.562", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !354, !nonnull !124, !align !142 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !334, !noalias !10289
  %i.e = add i64 %i.d, -1
  store i64 %i.e, ptr %i.c, align 8, !tbaa !334, !noalias !10289
  %i.f = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 24) #24, !noalias !10289
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !tbaa.struct !828
  tail call void @_ZN5clang6interp11InterpStack6shrinkEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 24) #24, !noalias !10289
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !354, !nonnull !124, !align !142
  %i.h = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 noundef 48) #24 ; 8 uses
  %i.i = tail call noundef zeroext i1 @_ZN5clang6interp10CheckStoreERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerEb(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i1 noundef zeroext false) #24
  br i1 %i.i, label %bb.b, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !362  ; 3 uses
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = icmp ne i32 %i.k, 1
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8              ; 6 uses
  %i.p = icmp eq ptr %i.o, null                   ; 2 uses
  %or.cond.i.i.i = select i1 %i.m, i1 true, i1 %i.p
  br i1 %or.cond.i.i.i, label %bb.d, label %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i

_ZNK5clang6interp7Pointer6isRootEv.exit.i.i:      ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.r = load i32, ptr %i.q, align 8, !tbaa !135, !noalias !10292 ; 2 uses
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !125  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load i32, ptr %i.t, align 8, !tbaa !131
  %i.v = icmp eq i32 %i.r, %i.u
  br i1 %i.v, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.w = icmp eq i32 %i.k, 1
  br i1 %i.w, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

bb.e:                                             ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i
  %i.x = zext i32 %i.r to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  br label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i

_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i: ; preds = %bb.e, %bb.d
  %.0.i.in.i = phi ptr [ %i.z, %bb.e ], [ %i.o, %bb.d ]
  %.0.i.i = load ptr, ptr %.0.i.in.i, align 8, !tbaa !1418 ; 2 uses
  %.not.not.i = icmp eq ptr %.0.i.i, null
  br i1 %.not.not.i, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i

_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i: ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i
  %.0.i16.i = phi ptr [ %.0.i.i, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i ], [ %i.s, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i ] ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 53
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !170, !range !123, !noundef !124
  %i.ac = trunc nuw i8 %i.ab to i1                ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8
  %.not.i.i = icmp ne ptr %i.ae, null
  %or.cond.not.i.i = select i1 %i.ac, i1 true, i1 %.not.i.i
  br i1 %or.cond.not.i.i, label %bb.f, label %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i

_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i: ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 48
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !2924 ; 2 uses
  %.not.i = icmp eq i8 %i.ag, -1
  br i1 %.not.i, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit

bb.f:                                             ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8
  %.not.i9.i = icmp eq ptr %i.ai, null
  %i.aj = select i1 %i.ac, i1 %.not.i9.i, i1 false
  br i1 %i.aj, label %._crit_edge.i, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

._crit_edge.i:                                    ; preds = %bb.f
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 48
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 8, !tbaa !2924
  br label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit

_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit: ; preds = %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i, %._crit_edge.i
  %i.ak = phi i8 [ %.pre.i, %._crit_edge.i ], [ %i.ag, %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i ]
  %i.al = icmp eq i8 %i.ak, 6
  br i1 %i.al, label %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

_ZNK5clang6interp7Pointer16canBeInitializedEv.exit: ; preds = %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit
  %4 = xor i1 %i.p, true
  tail call void @llvm.assume(i1 %4)
  %i.am = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.an = load i32, ptr %i.am, align 8, !tbaa !135 ; 2 uses
  %.not = icmp eq i32 %i.an, 0
  br i1 %.not, label %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread, label %_ZNK5clang6interp7Pointer10initializeEv.exit

_ZNK5clang6interp7Pointer10initializeEv.exit:     ; preds = %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10295)
  store ptr %i.o, ptr %2, align 8, !tbaa !809, !alias.scope !10295
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.an, ptr %i.ao, align 8, !tbaa !811, !alias.scope !10295
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aq = load i64, ptr %i.h, align 8, !tbaa !163, !noalias !10295
  store i64 %i.aq, ptr %i.ap, align 8, !tbaa !812, !alias.scope !10295
  call void @_ZNK5clang6interp7PtrView10initializeEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %.pre = load ptr, ptr %i.n, align 8, !tbaa !135, !noalias !10298
  br label %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread

_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread: ; preds = %_ZNK5clang6interp7Pointer10initializeEv.exit, %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit
  %i.ar = phi ptr [ %i.o, %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit ], [ %.pre, %_ZNK5clang6interp7Pointer10initializeEv.exit ] ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.at = load i32, ptr %i.as, align 8, !tbaa !135, !noalias !10298 ; 2 uses
  %i.au = load i64, ptr %i.h, align 8, !tbaa !163, !noalias !10298 ; 2 uses
  %i.av = load ptr, ptr %i.ar, align 8, !tbaa !125 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !131
  %i.ay = icmp eq i32 %i.at, %i.ax
  %.pre.i12 = zext i32 %i.at to i64               ; 3 uses
  br i1 %i.ay, label %_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj64ELb1EEEEERT_v.exit, label %bb.g

bb.g:                                             ; preds = %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread
  %i.az = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.pre.i12
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !167
  br label %_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj64ELb1EEEEERT_v.exit

_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj64ELb1EEEEERT_v.exit: ; preds = %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread, %bb.g
  %.0.i.i.i.i.i = phi ptr [ %i.bb, %bb.g ], [ %i.av, %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 53
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !170, !range !123, !noundef !124
  %i.be = trunc nuw i8 %i.bd to i1
  %i.bf = icmp eq i64 %i.au, %.pre.i12
  %i.bg = and i1 %i.bf, %i.be                     ; 2 uses
  %.sink6.i.i = select i1 %i.bg, i64 %.pre.i12, i64 40
  %.sink5.i.i = select i1 %i.bg, i64 48, i64 %i.au
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.sink6.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.sink5.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bi, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !828
  br label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread: ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i, %bb.b, %bb.d, %bb.f, %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i, %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit, %bb.a, %_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj64ELb1EEEEERT_v.exit
  %.0 = phi i1 [ true, %_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj64ELb1EEEEERT_v.exit ], [ false, %bb.a ], [ false, %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit ], [ false, %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i ], [ false, %bb.f ], [ false, %bb.d ], [ false, %bb.b ], [ false, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN5clang6interp5StoreILNS0_8PrimTypeE7ENS0_8IntegralILj64ELb0EEEEEbRNS0_11InterpStateENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1) local_unnamed_addr #0 comdat {
bb.a:
  %2 = alloca %"struct.clang::interp::PtrView", align 8 ; 6 uses
  %3 = alloca %"class.clang::interp::Integral.566", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !354, !nonnull !124, !align !142 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !334, !noalias !10301
  %i.e = add i64 %i.d, -1
  store i64 %i.e, ptr %i.c, align 8, !tbaa !334, !noalias !10301
  %i.f = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 24) #24, !noalias !10301
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !tbaa.struct !828
  tail call void @_ZN5clang6interp11InterpStack6shrinkEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 24) #24, !noalias !10301
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !354, !nonnull !124, !align !142
  %i.h = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 noundef 48) #24 ; 8 uses
  %i.i = tail call noundef zeroext i1 @_ZN5clang6interp10CheckStoreERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerEb(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i1 noundef zeroext false) #24
  br i1 %i.i, label %bb.b, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !362  ; 3 uses
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = icmp ne i32 %i.k, 1
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8              ; 6 uses
  %i.p = icmp eq ptr %i.o, null                   ; 2 uses
  %or.cond.i.i.i = select i1 %i.m, i1 true, i1 %i.p
  br i1 %or.cond.i.i.i, label %bb.d, label %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i

_ZNK5clang6interp7Pointer6isRootEv.exit.i.i:      ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.r = load i32, ptr %i.q, align 8, !tbaa !135, !noalias !10304 ; 2 uses
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !125  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load i32, ptr %i.t, align 8, !tbaa !131
  %i.v = icmp eq i32 %i.r, %i.u
  br i1 %i.v, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.w = icmp eq i32 %i.k, 1
  br i1 %i.w, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

bb.e:                                             ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i
  %i.x = zext i32 %i.r to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  br label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i

_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i: ; preds = %bb.e, %bb.d
  %.0.i.in.i = phi ptr [ %i.z, %bb.e ], [ %i.o, %bb.d ]
  %.0.i.i = load ptr, ptr %.0.i.in.i, align 8, !tbaa !1418 ; 2 uses
  %.not.not.i = icmp eq ptr %.0.i.i, null
  br i1 %.not.not.i, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i

_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i: ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i
  %.0.i16.i = phi ptr [ %.0.i.i, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i ], [ %i.s, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i ] ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 53
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !170, !range !123, !noundef !124
  %i.ac = trunc nuw i8 %i.ab to i1                ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8
  %.not.i.i = icmp ne ptr %i.ae, null
  %or.cond.not.i.i = select i1 %i.ac, i1 true, i1 %.not.i.i
  br i1 %or.cond.not.i.i, label %bb.f, label %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i

_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i: ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 48
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !2924 ; 2 uses
  %.not.i = icmp eq i8 %i.ag, -1
  br i1 %.not.i, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit

bb.f:                                             ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8
  %.not.i9.i = icmp eq ptr %i.ai, null
  %i.aj = select i1 %i.ac, i1 %.not.i9.i, i1 false
  br i1 %i.aj, label %._crit_edge.i, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

._crit_edge.i:                                    ; preds = %bb.f
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 48
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 8, !tbaa !2924
  br label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit

_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit: ; preds = %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i, %._crit_edge.i
  %i.ak = phi i8 [ %.pre.i, %._crit_edge.i ], [ %i.ag, %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i ]
  %i.al = icmp eq i8 %i.ak, 7
  br i1 %i.al, label %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

_ZNK5clang6interp7Pointer16canBeInitializedEv.exit: ; preds = %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit
  %4 = xor i1 %i.p, true
  tail call void @llvm.assume(i1 %4)
  %i.am = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.an = load i32, ptr %i.am, align 8, !tbaa !135 ; 2 uses
  %.not = icmp eq i32 %i.an, 0
  br i1 %.not, label %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread, label %_ZNK5clang6interp7Pointer10initializeEv.exit

_ZNK5clang6interp7Pointer10initializeEv.exit:     ; preds = %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10307)
  store ptr %i.o, ptr %2, align 8, !tbaa !809, !alias.scope !10307
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.an, ptr %i.ao, align 8, !tbaa !811, !alias.scope !10307
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aq = load i64, ptr %i.h, align 8, !tbaa !163, !noalias !10307
  store i64 %i.aq, ptr %i.ap, align 8, !tbaa !812, !alias.scope !10307
  call void @_ZNK5clang6interp7PtrView10initializeEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %.pre = load ptr, ptr %i.n, align 8, !tbaa !135, !noalias !10310
  br label %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread

_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread: ; preds = %_ZNK5clang6interp7Pointer10initializeEv.exit, %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit
  %i.ar = phi ptr [ %i.o, %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit ], [ %.pre, %_ZNK5clang6interp7Pointer10initializeEv.exit ] ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.at = load i32, ptr %i.as, align 8, !tbaa !135, !noalias !10310 ; 2 uses
  %i.au = load i64, ptr %i.h, align 8, !tbaa !163, !noalias !10310 ; 2 uses
  %i.av = load ptr, ptr %i.ar, align 8, !tbaa !125 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !131
  %i.ay = icmp eq i32 %i.at, %i.ax
  %.pre.i12 = zext i32 %i.at to i64               ; 3 uses
  br i1 %i.ay, label %_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj64ELb0EEEEERT_v.exit, label %bb.g

bb.g:                                             ; preds = %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread
  %i.az = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.pre.i12
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !167
  br label %_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj64ELb0EEEEERT_v.exit

_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj64ELb0EEEEERT_v.exit: ; preds = %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread, %bb.g
  %.0.i.i.i.i.i = phi ptr [ %i.bb, %bb.g ], [ %i.av, %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 53
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !170, !range !123, !noundef !124
  %i.be = trunc nuw i8 %i.bd to i1
  %i.bf = icmp eq i64 %i.au, %.pre.i12
  %i.bg = and i1 %i.bf, %i.be                     ; 2 uses
  %.sink6.i.i = select i1 %i.bg, i64 %.pre.i12, i64 40
  %.sink5.i.i = select i1 %i.bg, i64 48, i64 %i.au
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.sink6.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.sink5.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bi, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !828
  br label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread: ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i, %bb.b, %bb.d, %bb.f, %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i, %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit, %bb.a, %_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj64ELb0EEEEERT_v.exit
  %.0 = phi i1 [ true, %_ZNK5clang6interp7Pointer5derefINS0_8IntegralILj64ELb0EEEEERT_v.exit ], [ false, %bb.a ], [ false, %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit ], [ false, %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i ], [ false, %bb.f ], [ false, %bb.d ], [ false, %bb.b ], [ false, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN5clang6interp5StoreILNS0_8PrimTypeE8ENS0_10IntegralAPILb0EEEEEbRNS0_11InterpStateENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1) local_unnamed_addr #0 comdat {
bb.a:
  %2 = alloca %"struct.clang::interp::PtrView", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !354, !nonnull !124, !align !142 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !334
  %i.e = add i64 %i.d, -1
  store i64 %i.e, ptr %i.c, align 8, !tbaa !334
  %i.f = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 16) #24 ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.f, align 8, !tbaa !135
  %.sroa.2.0..0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.2.0.copyload.i = load i32, ptr %.sroa.2.0..0..sroa_idx.i, align 8, !tbaa !133
  tail call void @_ZN5clang6interp11InterpStack6shrinkEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 16) #24
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !354, !nonnull !124, !align !142
  %i.h = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 noundef 48) #24 ; 8 uses
  %i.i = tail call noundef zeroext i1 @_ZN5clang6interp10CheckStoreERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerEb(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i1 noundef zeroext false) #24
  br i1 %i.i, label %bb.b, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !362  ; 3 uses
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = icmp ne i32 %i.k, 1
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8              ; 6 uses
  %i.p = icmp eq ptr %i.o, null                   ; 2 uses
  %or.cond.i.i.i = select i1 %i.m, i1 true, i1 %i.p
  br i1 %or.cond.i.i.i, label %bb.d, label %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i

_ZNK5clang6interp7Pointer6isRootEv.exit.i.i:      ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.r = load i32, ptr %i.q, align 8, !tbaa !135, !noalias !10313 ; 2 uses
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !125  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load i32, ptr %i.t, align 8, !tbaa !131
  %i.v = icmp eq i32 %i.r, %i.u
  br i1 %i.v, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.w = icmp eq i32 %i.k, 1
  br i1 %i.w, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

bb.e:                                             ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i
  %i.x = zext i32 %i.r to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  br label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i

_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i: ; preds = %bb.e, %bb.d
  %.0.i.in.i = phi ptr [ %i.z, %bb.e ], [ %i.o, %bb.d ]
  %.0.i.i = load ptr, ptr %.0.i.in.i, align 8, !tbaa !1418 ; 2 uses
  %.not.not.i = icmp eq ptr %.0.i.i, null
  br i1 %.not.not.i, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i

_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i: ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i
  %.0.i16.i = phi ptr [ %.0.i.i, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i ], [ %i.s, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i ] ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 53
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !170, !range !123, !noundef !124
  %i.ac = trunc nuw i8 %i.ab to i1                ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8
  %.not.i.i = icmp ne ptr %i.ae, null
  %or.cond.not.i.i = select i1 %i.ac, i1 true, i1 %.not.i.i
  br i1 %or.cond.not.i.i, label %bb.f, label %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i

_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i: ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 48
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !2924 ; 2 uses
  %.not.i = icmp eq i8 %i.ag, -1
  br i1 %.not.i, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit

bb.f:                                             ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8
  %.not.i9.i = icmp eq ptr %i.ai, null
  %i.aj = select i1 %i.ac, i1 %.not.i9.i, i1 false
  br i1 %i.aj, label %._crit_edge.i, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

._crit_edge.i:                                    ; preds = %bb.f
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 48
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 8, !tbaa !2924
  br label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit

_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit: ; preds = %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i, %._crit_edge.i
  %i.ak = phi i8 [ %.pre.i, %._crit_edge.i ], [ %i.ag, %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i ]
  %i.al = icmp eq i8 %i.ak, 8
  br i1 %i.al, label %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

_ZNK5clang6interp7Pointer16canBeInitializedEv.exit: ; preds = %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit
  %3 = xor i1 %i.p, true
  tail call void @llvm.assume(i1 %3)
  %i.am = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.an = load i32, ptr %i.am, align 8, !tbaa !135 ; 2 uses
  %.not = icmp eq i32 %i.an, 0
  br i1 %.not, label %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread, label %_ZNK5clang6interp7Pointer10initializeEv.exit

_ZNK5clang6interp7Pointer10initializeEv.exit:     ; preds = %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10316)
  store ptr %i.o, ptr %2, align 8, !tbaa !809, !alias.scope !10316
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.an, ptr %i.ao, align 8, !tbaa !811, !alias.scope !10316
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aq = load i64, ptr %i.h, align 8, !tbaa !163, !noalias !10316
  store i64 %i.aq, ptr %i.ap, align 8, !tbaa !812, !alias.scope !10316
  call void @_ZNK5clang6interp7PtrView10initializeEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %.pre = load ptr, ptr %i.n, align 8, !tbaa !135, !noalias !10319
  br label %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread

_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread: ; preds = %_ZNK5clang6interp7Pointer10initializeEv.exit, %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit
  %i.ar = phi ptr [ %i.o, %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit ], [ %.pre, %_ZNK5clang6interp7Pointer10initializeEv.exit ] ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.at = load i32, ptr %i.as, align 8, !tbaa !135, !noalias !10319 ; 2 uses
  %i.au = load i64, ptr %i.h, align 8, !tbaa !163, !noalias !10319 ; 2 uses
  %i.av = load ptr, ptr %i.ar, align 8, !tbaa !125 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !131
  %i.ay = icmp eq i32 %i.at, %i.ax
  %.pre.i13 = zext i32 %i.at to i64               ; 3 uses
  br i1 %i.ay, label %_ZNK5clang6interp7Pointer5derefINS0_10IntegralAPILb0EEEEERT_v.exit, label %bb.g

bb.g:                                             ; preds = %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread
  %i.az = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.pre.i13
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !167
  br label %_ZNK5clang6interp7Pointer5derefINS0_10IntegralAPILb0EEEEERT_v.exit

_ZNK5clang6interp7Pointer5derefINS0_10IntegralAPILb0EEEEERT_v.exit: ; preds = %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread, %bb.g
  %.0.i.i.i.i.i = phi ptr [ %i.bb, %bb.g ], [ %i.av, %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 53
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !170, !range !123, !noundef !124
  %i.be = trunc nuw i8 %i.bd to i1
  %i.bf = icmp eq i64 %i.au, %.pre.i13
  %i.bg = and i1 %i.bf, %i.be                     ; 2 uses
  %.sink6.i.i = select i1 %i.bg, i64 %.pre.i13, i64 40
  %.sink5.i.i = select i1 %i.bg, i64 48, i64 %i.au
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.sink6.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.sink5.i.i ; 2 uses
  store ptr %.sroa.0.0.copyload.i, ptr %i.bi, align 8, !tbaa !135
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store i32 %.sroa.2.0.copyload.i, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !133
  br label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread: ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i, %bb.b, %bb.d, %bb.f, %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i, %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit, %bb.a, %_ZNK5clang6interp7Pointer5derefINS0_10IntegralAPILb0EEEEERT_v.exit
  %.0 = phi i1 [ true, %_ZNK5clang6interp7Pointer5derefINS0_10IntegralAPILb0EEEEERT_v.exit ], [ false, %bb.a ], [ false, %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit ], [ false, %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i ], [ false, %bb.f ], [ false, %bb.d ], [ false, %bb.b ], [ false, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN5clang6interp5StoreILNS0_8PrimTypeE9ENS0_10IntegralAPILb1EEEEEbRNS0_11InterpStateENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1) local_unnamed_addr #0 comdat {
bb.a:
  %2 = alloca %"struct.clang::interp::PtrView", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !354, !nonnull !124, !align !142 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !334
  %i.e = add i64 %i.d, -1
  store i64 %i.e, ptr %i.c, align 8, !tbaa !334
  %i.f = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 16) #24 ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.f, align 8, !tbaa !135
  %.sroa.2.0..0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.2.0.copyload.i = load i32, ptr %.sroa.2.0..0..sroa_idx.i, align 8, !tbaa !133
  tail call void @_ZN5clang6interp11InterpStack6shrinkEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 16) #24
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !354, !nonnull !124, !align !142
  %i.h = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 noundef 48) #24 ; 8 uses
  %i.i = tail call noundef zeroext i1 @_ZN5clang6interp10CheckStoreERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerEb(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i1 noundef zeroext false) #24
  br i1 %i.i, label %bb.b, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !362  ; 3 uses
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = icmp ne i32 %i.k, 1
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8              ; 6 uses
  %i.p = icmp eq ptr %i.o, null                   ; 2 uses
  %or.cond.i.i.i = select i1 %i.m, i1 true, i1 %i.p
  br i1 %or.cond.i.i.i, label %bb.d, label %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i

_ZNK5clang6interp7Pointer6isRootEv.exit.i.i:      ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.r = load i32, ptr %i.q, align 8, !tbaa !135, !noalias !10322 ; 2 uses
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !125  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load i32, ptr %i.t, align 8, !tbaa !131
  %i.v = icmp eq i32 %i.r, %i.u
  br i1 %i.v, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.w = icmp eq i32 %i.k, 1
  br i1 %i.w, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

bb.e:                                             ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i
  %i.x = zext i32 %i.r to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  br label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i

_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i: ; preds = %bb.e, %bb.d
  %.0.i.in.i = phi ptr [ %i.z, %bb.e ], [ %i.o, %bb.d ]
  %.0.i.i = load ptr, ptr %.0.i.in.i, align 8, !tbaa !1418 ; 2 uses
  %.not.not.i = icmp eq ptr %.0.i.i, null
  br i1 %.not.not.i, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i

_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i: ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i
  %.0.i16.i = phi ptr [ %.0.i.i, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i ], [ %i.s, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i ] ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 53
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !170, !range !123, !noundef !124
  %i.ac = trunc nuw i8 %i.ab to i1                ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8
  %.not.i.i = icmp ne ptr %i.ae, null
  %or.cond.not.i.i = select i1 %i.ac, i1 true, i1 %.not.i.i
  br i1 %or.cond.not.i.i, label %bb.f, label %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i

_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i: ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 48
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !2924 ; 2 uses
  %.not.i = icmp eq i8 %i.ag, -1
  br i1 %.not.i, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit

bb.f:                                             ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8
  %.not.i9.i = icmp eq ptr %i.ai, null
  %i.aj = select i1 %i.ac, i1 %.not.i9.i, i1 false
  br i1 %i.aj, label %._crit_edge.i, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

._crit_edge.i:                                    ; preds = %bb.f
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 48
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 8, !tbaa !2924
  br label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit

_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit: ; preds = %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i, %._crit_edge.i
  %i.ak = phi i8 [ %.pre.i, %._crit_edge.i ], [ %i.ag, %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i ]
  %i.al = icmp eq i8 %i.ak, 9
  br i1 %i.al, label %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

_ZNK5clang6interp7Pointer16canBeInitializedEv.exit: ; preds = %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit
  %3 = xor i1 %i.p, true
  tail call void @llvm.assume(i1 %3)
  %i.am = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.an = load i32, ptr %i.am, align 8, !tbaa !135 ; 2 uses
  %.not = icmp eq i32 %i.an, 0
  br i1 %.not, label %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread, label %_ZNK5clang6interp7Pointer10initializeEv.exit

_ZNK5clang6interp7Pointer10initializeEv.exit:     ; preds = %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10325)
  store ptr %i.o, ptr %2, align 8, !tbaa !809, !alias.scope !10325
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.an, ptr %i.ao, align 8, !tbaa !811, !alias.scope !10325
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aq = load i64, ptr %i.h, align 8, !tbaa !163, !noalias !10325
  store i64 %i.aq, ptr %i.ap, align 8, !tbaa !812, !alias.scope !10325
  call void @_ZNK5clang6interp7PtrView10initializeEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %.pre = load ptr, ptr %i.n, align 8, !tbaa !135, !noalias !10328
  br label %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread

_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread: ; preds = %_ZNK5clang6interp7Pointer10initializeEv.exit, %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit
  %i.ar = phi ptr [ %i.o, %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit ], [ %.pre, %_ZNK5clang6interp7Pointer10initializeEv.exit ] ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.at = load i32, ptr %i.as, align 8, !tbaa !135, !noalias !10328 ; 2 uses
  %i.au = load i64, ptr %i.h, align 8, !tbaa !163, !noalias !10328 ; 2 uses
  %i.av = load ptr, ptr %i.ar, align 8, !tbaa !125 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !131
  %i.ay = icmp eq i32 %i.at, %i.ax
  %.pre.i13 = zext i32 %i.at to i64               ; 3 uses
  br i1 %i.ay, label %_ZNK5clang6interp7Pointer5derefINS0_10IntegralAPILb1EEEEERT_v.exit, label %bb.g

bb.g:                                             ; preds = %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread
  %i.az = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.pre.i13
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !167
  br label %_ZNK5clang6interp7Pointer5derefINS0_10IntegralAPILb1EEEEERT_v.exit

_ZNK5clang6interp7Pointer5derefINS0_10IntegralAPILb1EEEEERT_v.exit: ; preds = %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread, %bb.g
  %.0.i.i.i.i.i = phi ptr [ %i.bb, %bb.g ], [ %i.av, %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 53
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !170, !range !123, !noundef !124
  %i.be = trunc nuw i8 %i.bd to i1
  %i.bf = icmp eq i64 %i.au, %.pre.i13
  %i.bg = and i1 %i.bf, %i.be                     ; 2 uses
  %.sink6.i.i = select i1 %i.bg, i64 %.pre.i13, i64 40
  %.sink5.i.i = select i1 %i.bg, i64 48, i64 %i.au
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.sink6.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.sink5.i.i ; 2 uses
  store ptr %.sroa.0.0.copyload.i, ptr %i.bi, align 8, !tbaa !135
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store i32 %.sroa.2.0.copyload.i, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !133
  br label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread: ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i, %bb.b, %bb.d, %bb.f, %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i, %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit, %bb.a, %_ZNK5clang6interp7Pointer5derefINS0_10IntegralAPILb1EEEEERT_v.exit
  %.0 = phi i1 [ true, %_ZNK5clang6interp7Pointer5derefINS0_10IntegralAPILb1EEEEERT_v.exit ], [ false, %bb.a ], [ false, %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit ], [ false, %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i ], [ false, %bb.f ], [ false, %bb.d ], [ false, %bb.b ], [ false, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN5clang6interp5StoreILNS0_8PrimTypeE10ENS0_7BooleanEEEbRNS0_11InterpStateENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1) local_unnamed_addr #0 comdat {
bb.a:
  %2 = alloca %"struct.clang::interp::PtrView", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !354, !nonnull !124, !align !142 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !334
  %i.e = add i64 %i.d, -1
  store i64 %i.e, ptr %i.c, align 8, !tbaa !334
  %i.f = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 8) #24
  %.sroa.0.0.copyload.i = load i8, ptr %i.f, align 1, !tbaa !335
  tail call void @_ZN5clang6interp11InterpStack6shrinkEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 8) #24
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !354, !nonnull !124, !align !142
  %i.h = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 noundef 48) #24 ; 8 uses
  %i.i = tail call noundef zeroext i1 @_ZN5clang6interp10CheckStoreERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerEb(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i1 noundef zeroext false) #24
  br i1 %i.i, label %bb.b, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !362  ; 3 uses
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = icmp ne i32 %i.k, 1
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8              ; 6 uses
  %i.p = icmp eq ptr %i.o, null                   ; 2 uses
  %or.cond.i.i.i = select i1 %i.m, i1 true, i1 %i.p
  br i1 %or.cond.i.i.i, label %bb.d, label %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i

_ZNK5clang6interp7Pointer6isRootEv.exit.i.i:      ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.r = load i32, ptr %i.q, align 8, !tbaa !135, !noalias !10331 ; 2 uses
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !125  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load i32, ptr %i.t, align 8, !tbaa !131
  %i.v = icmp eq i32 %i.r, %i.u
  br i1 %i.v, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.w = icmp eq i32 %i.k, 1
  br i1 %i.w, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

bb.e:                                             ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i
  %i.x = zext i32 %i.r to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  br label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i

_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i: ; preds = %bb.e, %bb.d
  %.0.i.in.i = phi ptr [ %i.z, %bb.e ], [ %i.o, %bb.d ]
  %.0.i.i = load ptr, ptr %.0.i.in.i, align 8, !tbaa !1418 ; 2 uses
  %.not.not.i = icmp eq ptr %.0.i.i, null
  br i1 %.not.not.i, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i

_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i: ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i
  %.0.i16.i = phi ptr [ %.0.i.i, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i ], [ %i.s, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i ] ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 53
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !170, !range !123, !noundef !124
  %i.ac = trunc nuw i8 %i.ab to i1                ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8
  %.not.i.i = icmp ne ptr %i.ae, null
  %or.cond.not.i.i = select i1 %i.ac, i1 true, i1 %.not.i.i
  br i1 %or.cond.not.i.i, label %bb.f, label %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i

_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i: ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 48
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !2924 ; 2 uses
  %.not.i = icmp eq i8 %i.ag, -1
  br i1 %.not.i, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit

bb.f:                                             ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8
  %.not.i9.i = icmp eq ptr %i.ai, null
  %i.aj = select i1 %i.ac, i1 %.not.i9.i, i1 false
  br i1 %i.aj, label %._crit_edge.i, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

._crit_edge.i:                                    ; preds = %bb.f
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 48
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 8, !tbaa !2924
  br label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit

_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit: ; preds = %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i, %._crit_edge.i
  %i.ak = phi i8 [ %.pre.i, %._crit_edge.i ], [ %i.ag, %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i ]
  %i.al = icmp eq i8 %i.ak, 10
  br i1 %i.al, label %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

_ZNK5clang6interp7Pointer16canBeInitializedEv.exit: ; preds = %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit
  %3 = xor i1 %i.p, true
  tail call void @llvm.assume(i1 %3)
  %i.am = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.an = load i32, ptr %i.am, align 8, !tbaa !135 ; 2 uses
  %.not = icmp eq i32 %i.an, 0
  br i1 %.not, label %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread, label %_ZNK5clang6interp7Pointer10initializeEv.exit

_ZNK5clang6interp7Pointer10initializeEv.exit:     ; preds = %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10334)
  store ptr %i.o, ptr %2, align 8, !tbaa !809, !alias.scope !10334
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.an, ptr %i.ao, align 8, !tbaa !811, !alias.scope !10334
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aq = load i64, ptr %i.h, align 8, !tbaa !163, !noalias !10334
  store i64 %i.aq, ptr %i.ap, align 8, !tbaa !812, !alias.scope !10334
  call void @_ZNK5clang6interp7PtrView10initializeEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %.pre = load ptr, ptr %i.n, align 8, !tbaa !135, !noalias !10337
  br label %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread

_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread: ; preds = %_ZNK5clang6interp7Pointer10initializeEv.exit, %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit
  %i.ar = phi ptr [ %i.o, %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit ], [ %.pre, %_ZNK5clang6interp7Pointer10initializeEv.exit ] ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.at = load i32, ptr %i.as, align 8, !tbaa !135, !noalias !10337 ; 2 uses
  %i.au = load i64, ptr %i.h, align 8, !tbaa !163, !noalias !10337 ; 2 uses
  %i.av = load ptr, ptr %i.ar, align 8, !tbaa !125 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !131
  %i.ay = icmp eq i32 %i.at, %i.ax
  %.pre.i12 = zext i32 %i.at to i64               ; 3 uses
  br i1 %i.ay, label %_ZNK5clang6interp7Pointer5derefINS0_7BooleanEEERT_v.exit, label %bb.g

bb.g:                                             ; preds = %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread
  %i.az = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.pre.i12
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !167
  br label %_ZNK5clang6interp7Pointer5derefINS0_7BooleanEEERT_v.exit

_ZNK5clang6interp7Pointer5derefINS0_7BooleanEEERT_v.exit: ; preds = %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread, %bb.g
  %.0.i.i.i.i.i = phi ptr [ %i.bb, %bb.g ], [ %i.av, %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 53
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !170, !range !123, !noundef !124
  %i.be = trunc nuw i8 %i.bd to i1
  %i.bf = icmp eq i64 %i.au, %.pre.i12
  %i.bg = and i1 %i.bf, %i.be                     ; 2 uses
  %.sink6.i.i = select i1 %i.bg, i64 %.pre.i12, i64 40
  %.sink5.i.i = select i1 %i.bg, i64 48, i64 %i.au
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.sink6.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.sink5.i.i
  store i8 %.sroa.0.0.copyload.i, ptr %i.bi, align 1, !tbaa !335
  br label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread: ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i, %bb.b, %bb.d, %bb.f, %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i, %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit, %bb.a, %_ZNK5clang6interp7Pointer5derefINS0_7BooleanEEERT_v.exit
  %.0 = phi i1 [ true, %_ZNK5clang6interp7Pointer5derefINS0_7BooleanEEERT_v.exit ], [ false, %bb.a ], [ false, %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit ], [ false, %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i ], [ false, %bb.f ], [ false, %bb.d ], [ false, %bb.b ], [ false, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN5clang6interp5StoreILNS0_8PrimTypeE11ENS0_10FixedPointEEEbRNS0_11InterpStateENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1) local_unnamed_addr #0 comdat {
bb.a:
  %2 = alloca %"struct.clang::interp::PtrView", align 8 ; 6 uses
  %3 = alloca %"class.clang::interp::FixedPoint", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !354, !nonnull !124, !align !142 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10340)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !334, !noalias !10340
  %i.e = add i64 %i.d, -1
  store i64 %i.e, ptr %i.c, align 8, !tbaa !334, !noalias !10340
  %i.f = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 24) #24, !noalias !10340 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !179, !noalias !10340 ; 11 uses
  store i32 %i.i, ptr %i.g, align 8, !tbaa !179, !alias.scope !10340
  %i.j = load i64, ptr %i.f, align 8, !noalias !10340 ; 2 uses
  store i64 %i.j, ptr %3, align 8, !alias.scope !10340
  store i32 0, ptr %i.h, align 8, !tbaa !179, !noalias !10340
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.m = load i8, ptr %i.l, align 4, !tbaa !181, !range !123, !noalias !10340, !noundef !124 ; 2 uses
  store i8 %i.m, ptr %i.k, align 4, !tbaa !181, !alias.scope !10340
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.p = load i32, ptr %i.o, align 8, !tbaa !135, !noalias !10340 ; 2 uses
  store i32 %i.p, ptr %i.n, align 8, !tbaa !135, !alias.scope !10340
  tail call void @_ZN5clang6interp11InterpStack6shrinkEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 24) #24, !noalias !10340
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !354, !nonnull !124, !align !142
  %i.r = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.q, i64 noundef 48) #24 ; 8 uses
  %i.s = tail call noundef zeroext i1 @_ZN5clang6interp10CheckStoreERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerEb(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(48) %i.r, i1 noundef zeroext false) #24
  br i1 %i.s, label %bb.b, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.u = load i32, ptr %i.t, align 8, !tbaa !362  ; 3 uses
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = icmp ne i32 %i.u, 1
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8              ; 6 uses
  %i.z = icmp eq ptr %i.y, null                   ; 2 uses
  %or.cond.i.i.i = select i1 %i.w, i1 true, i1 %i.z
  br i1 %or.cond.i.i.i, label %bb.d, label %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i

_ZNK5clang6interp7Pointer6isRootEv.exit.i.i:      ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !135, !noalias !10343 ; 2 uses
  %i.ac = load ptr, ptr %i.y, align 8, !tbaa !125 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !131
  %i.af = icmp eq i32 %i.ab, %i.ae
  br i1 %i.af, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ag = icmp eq i32 %i.u, 1
  br i1 %i.ag, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

bb.e:                                             ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i
  %i.ah = zext i32 %i.ab to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  br label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i

_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i: ; preds = %bb.e, %bb.d
  %.0.i.in.i = phi ptr [ %i.aj, %bb.e ], [ %i.y, %bb.d ]
  %.0.i.i = load ptr, ptr %.0.i.in.i, align 8, !tbaa !1418 ; 2 uses
  %.not.not.i = icmp eq ptr %.0.i.i, null
  br i1 %.not.not.i, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i

_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i: ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i
  %.0.i16.i = phi ptr [ %.0.i.i, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i ], [ %i.ac, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i ] ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 53
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !170, !range !123, !noundef !124
  %i.am = trunc nuw i8 %i.al to i1                ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 32
  %i.ao = load ptr, ptr %i.an, align 8
  %.not.i.i = icmp ne ptr %i.ao, null
  %or.cond.not.i.i = select i1 %i.am, i1 true, i1 %.not.i.i
  br i1 %or.cond.not.i.i, label %bb.f, label %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i

_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i: ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 48
  %i.aq = load i8, ptr %i.ap, align 8, !tbaa !2924 ; 2 uses
  %.not.i = icmp eq i8 %i.aq, -1
  br i1 %.not.i, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit

bb.f:                                             ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 40
  %i.as = load ptr, ptr %i.ar, align 8
  %.not.i9.i = icmp eq ptr %i.as, null
  %i.at = select i1 %i.am, i1 %.not.i9.i, i1 false
  br i1 %i.at, label %._crit_edge.i, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

._crit_edge.i:                                    ; preds = %bb.f
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 48
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 8, !tbaa !2924
  br label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit

_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit: ; preds = %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i, %._crit_edge.i
  %i.au = phi i8 [ %.pre.i, %._crit_edge.i ], [ %i.aq, %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i ]
  %i.av = icmp eq i8 %i.au, 11
  br i1 %i.av, label %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

_ZNK5clang6interp7Pointer16canBeInitializedEv.exit: ; preds = %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit
  %4 = xor i1 %i.z, true
  tail call void @llvm.assume(i1 %4)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !135 ; 2 uses
  %.not = icmp eq i32 %i.ax, 0
  br i1 %.not, label %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread, label %_ZNK5clang6interp7Pointer10initializeEv.exit

_ZNK5clang6interp7Pointer10initializeEv.exit:     ; preds = %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10346)
  store ptr %i.y, ptr %2, align 8, !tbaa !809, !alias.scope !10346
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.ax, ptr %i.ay, align 8, !tbaa !811, !alias.scope !10346
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ba = load i64, ptr %i.r, align 8, !tbaa !163, !noalias !10346
  store i64 %i.ba, ptr %i.az, align 8, !tbaa !812, !alias.scope !10346
  call void @_ZNK5clang6interp7PtrView10initializeEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %.pre = load ptr, ptr %i.x, align 8, !tbaa !135, !noalias !10349
  br label %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread

_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread: ; preds = %_ZNK5clang6interp7Pointer10initializeEv.exit, %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit
  %i.bb = phi ptr [ %i.y, %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit ], [ %.pre, %_ZNK5clang6interp7Pointer10initializeEv.exit ] ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !135, !noalias !10349 ; 2 uses
  %i.be = load i64, ptr %i.r, align 8, !tbaa !163, !noalias !10349 ; 2 uses
  %i.bf = load ptr, ptr %i.bb, align 8, !tbaa !125 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !131
  %i.bi = icmp eq i32 %i.bd, %i.bh
  %.pre.i12 = zext i32 %i.bd to i64               ; 3 uses
  br i1 %i.bi, label %_ZNK5clang6interp7Pointer5derefINS0_10FixedPointEEERT_v.exit, label %bb.g

bb.g:                                             ; preds = %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.pre.i12
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !167
  br label %_ZNK5clang6interp7Pointer5derefINS0_10FixedPointEEERT_v.exit

_ZNK5clang6interp7Pointer5derefINS0_10FixedPointEEERT_v.exit: ; preds = %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread, %bb.g
  %.0.i.i.i.i.i = phi ptr [ %i.bl, %bb.g ], [ %i.bf, %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread ]
  %i.bm = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 53
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !170, !range !123, !noundef !124
  %i.bo = trunc nuw i8 %i.bn to i1
  %i.bp = icmp eq i64 %i.be, %.pre.i12
  %i.bq = and i1 %i.bp, %i.bo                     ; 2 uses
  %.sink6.i.i = select i1 %i.bq, i64 %.pre.i12, i64 40
  %.sink5.i.i = select i1 %i.bq, i64 48, i64 %i.be
  %i.br = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.sink6.i.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %.sink5.i.i ; 5 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !179
  %i.bv = icmp ult i32 %i.bu, 65
  %i.bw = icmp ult i32 %i.i, 65
  %or.cond = select i1 %i.bv, i1 %i.bw, i1 false
  br i1 %or.cond, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNK5clang6interp7Pointer5derefINS0_10FixedPointEEERT_v.exit
  store i64 %i.j, ptr %i.bs, align 8, !tbaa !135
  store i32 %i.i, ptr %i.bt, align 8, !tbaa !179
  br label %_ZN5clang6interp10FixedPointaSERKS1_.exit

bb.i:                                             ; preds = %_ZNK5clang6interp7Pointer5derefINS0_10FixedPointEEERT_v.exit
  call void @_ZN4llvm5APInt14assignSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.bs, ptr noundef nonnull align 8 dereferenceable(24) %3) #24
  %.pre15 = load i8, ptr %i.k, align 4, !tbaa !181, !range !123
  %.pre16 = load i32, ptr %i.n, align 8, !tbaa !135
  %.pre17.pre = load i32, ptr %i.g, align 8, !tbaa !179
  br label %_ZN5clang6interp10FixedPointaSERKS1_.exit

_ZN5clang6interp10FixedPointaSERKS1_.exit:        ; preds = %bb.h, %bb.i
  %.pre17 = phi i32 [ %i.i, %bb.h ], [ %.pre17.pre, %bb.i ]
  %i.bx = phi i32 [ %i.p, %bb.h ], [ %.pre16, %bb.i ]
  %i.by = phi i8 [ %i.m, %bb.h ], [ %.pre15, %bb.i ]
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bs, i64 12
  store i8 %i.by, ptr %i.bz, align 4, !tbaa !181
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  store i32 %i.bx, ptr %i.ca, align 8, !tbaa !135
  br label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread: ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i, %bb.b, %bb.d, %bb.f, %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i, %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit, %bb.a, %_ZN5clang6interp10FixedPointaSERKS1_.exit
  %i.cb = phi i32 [ %.pre17, %_ZN5clang6interp10FixedPointaSERKS1_.exit ], [ %i.i, %bb.a ], [ %i.i, %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit ], [ %i.i, %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i ], [ %i.i, %bb.f ], [ %i.i, %bb.d ], [ %i.i, %bb.b ], [ %i.i, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i ]
  %.0 = phi i1 [ true, %_ZN5clang6interp10FixedPointaSERKS1_.exit ], [ false, %bb.a ], [ false, %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit ], [ false, %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i ], [ false, %bb.f ], [ false, %bb.d ], [ false, %bb.b ], [ false, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i ]
  %i.cc = icmp ugt i32 %i.cb, 64
  br i1 %i.cc, label %bb.j, label %_ZN5clang6interp10FixedPointD2Ev.exit

bb.j:                                             ; preds = %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread
  %i.cd = load ptr, ptr %3, align 8, !tbaa !135   ; 2 uses
  %i.ce = icmp eq ptr %i.cd, null
  br i1 %i.ce, label %_ZN5clang6interp10FixedPointD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZdaPv(ptr noundef nonnull %i.cd) #25
  br label %_ZN5clang6interp10FixedPointD2Ev.exit

_ZN5clang6interp10FixedPointD2Ev.exit:            ; preds = %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread, %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN5clang6interp5StoreILNS0_8PrimTypeE13ENS0_7PointerEEEbRNS0_11InterpStateENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1) local_unnamed_addr #0 comdat {
bb.a:
  %2 = alloca %"struct.clang::interp::PtrView", align 8 ; 6 uses
  %3 = alloca %"class.clang::interp::Pointer", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !354, !nonnull !124, !align !142 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !334, !noalias !10352
  %i.e = add i64 %i.d, -1
  store i64 %i.e, ptr %i.c, align 8, !tbaa !334, !noalias !10352
  %i.f = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 48) #24, !noalias !10352
  call void @_ZN5clang6interp7PointerC1EOS1_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(48) %i.f) #24
  call void @_ZN5clang6interp11InterpStack6shrinkEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 48) #24
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !354, !nonnull !124, !align !142
  %i.h = call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 noundef 48) #24 ; 8 uses
  %i.i = call noundef zeroext i1 @_ZN5clang6interp10CheckStoreERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerEb(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i1 noundef zeroext false) #24
  br i1 %i.i, label %bb.b, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !362  ; 3 uses
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = icmp ne i32 %i.k, 1
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8              ; 6 uses
  %i.p = icmp eq ptr %i.o, null                   ; 2 uses
  %or.cond.i.i.i = select i1 %i.m, i1 true, i1 %i.p
  br i1 %or.cond.i.i.i, label %bb.d, label %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i

_ZNK5clang6interp7Pointer6isRootEv.exit.i.i:      ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.r = load i32, ptr %i.q, align 8, !tbaa !135, !noalias !10355 ; 2 uses
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !125  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load i32, ptr %i.t, align 8, !tbaa !131
  %i.v = icmp eq i32 %i.r, %i.u
  br i1 %i.v, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.w = icmp eq i32 %i.k, 1
  br i1 %i.w, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

bb.e:                                             ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i
  %i.x = zext i32 %i.r to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  br label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i

_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i: ; preds = %bb.e, %bb.d
  %.0.i.in.i = phi ptr [ %i.z, %bb.e ], [ %i.o, %bb.d ]
  %.0.i.i = load ptr, ptr %.0.i.in.i, align 8, !tbaa !1418 ; 2 uses
  %.not.not.i = icmp eq ptr %.0.i.i, null
  br i1 %.not.not.i, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i

_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i: ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i
  %.0.i16.i = phi ptr [ %.0.i.i, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i ], [ %i.s, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i ] ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 53
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !170, !range !123, !noundef !124
  %i.ac = trunc nuw i8 %i.ab to i1                ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8
  %.not.i.i = icmp ne ptr %i.ae, null
  %or.cond.not.i.i = select i1 %i.ac, i1 true, i1 %.not.i.i
  br i1 %or.cond.not.i.i, label %bb.f, label %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i

_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i: ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 48
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !2924 ; 2 uses
  %.not.i = icmp eq i8 %i.ag, -1
  br i1 %.not.i, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit

bb.f:                                             ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8
  %.not.i9.i = icmp eq ptr %i.ai, null
  %i.aj = select i1 %i.ac, i1 %.not.i9.i, i1 false
  br i1 %i.aj, label %._crit_edge.i, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

._crit_edge.i:                                    ; preds = %bb.f
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 48
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 8, !tbaa !2924
  br label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit

_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit: ; preds = %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i, %._crit_edge.i
  %i.ak = phi i8 [ %.pre.i, %._crit_edge.i ], [ %i.ag, %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i ]
  %i.al = icmp eq i8 %i.ak, 13
  br i1 %i.al, label %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

_ZNK5clang6interp7Pointer16canBeInitializedEv.exit: ; preds = %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit
  %4 = xor i1 %i.p, true
  call void @llvm.assume(i1 %4)
  %i.am = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.an = load i32, ptr %i.am, align 8, !tbaa !135 ; 2 uses
  %.not = icmp eq i32 %i.an, 0
  br i1 %.not, label %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread, label %_ZNK5clang6interp7Pointer10initializeEv.exit

_ZNK5clang6interp7Pointer10initializeEv.exit:     ; preds = %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !10358)
  store ptr %i.o, ptr %2, align 8, !tbaa !809, !alias.scope !10358
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.an, ptr %i.ao, align 8, !tbaa !811, !alias.scope !10358
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aq = load i64, ptr %i.h, align 8, !tbaa !163, !noalias !10358
  store i64 %i.aq, ptr %i.ap, align 8, !tbaa !812, !alias.scope !10358
  call void @_ZNK5clang6interp7PtrView10initializeEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %.pre = load ptr, ptr %i.n, align 8, !tbaa !135, !noalias !10361
  br label %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread

_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread: ; preds = %_ZNK5clang6interp7Pointer10initializeEv.exit, %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit
  %i.ar = phi ptr [ %i.o, %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit ], [ %.pre, %_ZNK5clang6interp7Pointer10initializeEv.exit ] ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.at = load i32, ptr %i.as, align 8, !tbaa !135, !noalias !10361 ; 2 uses
  %i.au = load i64, ptr %i.h, align 8, !tbaa !163, !noalias !10361 ; 2 uses
  %i.av = load ptr, ptr %i.ar, align 8, !tbaa !125 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !131
  %i.ay = icmp eq i32 %i.at, %i.ax
  %.pre.i12 = zext i32 %i.at to i64               ; 3 uses
  br i1 %i.ay, label %_ZNK5clang6interp7Pointer5derefIS1_EERT_v.exit, label %bb.g

bb.g:                                             ; preds = %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread
  %i.az = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.pre.i12
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !167
  br label %_ZNK5clang6interp7Pointer5derefIS1_EERT_v.exit

_ZNK5clang6interp7Pointer5derefIS1_EERT_v.exit:   ; preds = %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread, %bb.g
  %.0.i.i.i.i.i = phi ptr [ %i.bb, %bb.g ], [ %i.av, %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 53
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !170, !range !123, !noundef !124
  %i.be = trunc nuw i8 %i.bd to i1
  %i.bf = icmp eq i64 %i.au, %.pre.i12
  %i.bg = and i1 %i.bf, %i.be                     ; 2 uses
  %.sink6.i.i = select i1 %i.bg, i64 %.pre.i12, i64 40
  %.sink5.i.i = select i1 %i.bg, i64 48, i64 %i.au
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.sink6.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.sink5.i.i
  %i.bj = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN5clang6interp7PointeraSERKS1_(ptr noundef nonnull align 8 dereferenceable(48) %i.bi, ptr noundef nonnull align 8 dereferenceable(48) %3) #24 ; 0 uses
  br label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread: ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i, %bb.b, %bb.d, %bb.f, %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i, %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit, %bb.a, %_ZNK5clang6interp7Pointer5derefIS1_EERT_v.exit
  %.0 = phi i1 [ true, %_ZNK5clang6interp7Pointer5derefIS1_EERT_v.exit ], [ false, %bb.a ], [ false, %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit ], [ false, %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i ], [ false, %bb.f ], [ false, %bb.d ], [ false, %bb.b ], [ false, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i ]
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN5clang6interp5StoreILNS0_8PrimTypeE14ENS0_13MemberPointerEEEbRNS0_11InterpStateENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1) local_unnamed_addr #0 comdat {
bb.a:
  %2 = alloca %"struct.clang::interp::PtrView", align 8 ; 6 uses
  %3 = alloca %"class.clang::interp::MemberPointer", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !354, !nonnull !124, !align !142 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !334, !noalias !10364
  %i.e = add i64 %i.d, -1
  store i64 %i.e, ptr %i.c, align 8, !tbaa !334, !noalias !10364
  %i.f = tail call noundef nonnull align 8 dereferenceable(72) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 72) #24, !noalias !10364 ; 2 uses
  call void @_ZN5clang6interp7PointerC1EOS1_(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(72) %i.f) #24
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(21) %i.g, ptr noundef nonnull align 8 dereferenceable(21) %i.h, i64 21, i1 false)
  call void @_ZN5clang6interp11InterpStack6shrinkEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 72) #24
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !354, !nonnull !124, !align !142
  %i.j = call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.i, i64 noundef 48) #24 ; 8 uses
  %i.k = call noundef zeroext i1 @_ZN5clang6interp10CheckStoreERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerEb(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(48) %i.j, i1 noundef zeroext false) #24
  br i1 %i.k, label %bb.b, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !362  ; 3 uses
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = icmp ne i32 %i.m, 1
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8              ; 6 uses
  %i.r = icmp eq ptr %i.q, null                   ; 2 uses
  %or.cond.i.i.i = select i1 %i.o, i1 true, i1 %i.r
  br i1 %or.cond.i.i.i, label %bb.d, label %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i

_ZNK5clang6interp7Pointer6isRootEv.exit.i.i:      ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.t = load i32, ptr %i.s, align 8, !tbaa !135, !noalias !10367 ; 2 uses
  %i.u = load ptr, ptr %i.q, align 8, !tbaa !125  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load i32, ptr %i.v, align 8, !tbaa !131
  %i.x = icmp eq i32 %i.t, %i.w
  br i1 %i.x, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.y = icmp eq i32 %i.m, 1
  br i1 %i.y, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

bb.e:                                             ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i
  %i.z = zext i32 %i.t to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  br label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i

_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i: ; preds = %bb.e, %bb.d
  %.0.i.in.i = phi ptr [ %i.ab, %bb.e ], [ %i.q, %bb.d ]
  %.0.i.i = load ptr, ptr %.0.i.in.i, align 8, !tbaa !1418 ; 2 uses
  %.not.not.i = icmp eq ptr %.0.i.i, null
  br i1 %.not.not.i, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i

_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i: ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i
  %.0.i16.i = phi ptr [ %.0.i.i, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i ], [ %i.u, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i ] ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 53
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !170, !range !123, !noundef !124
  %i.ae = trunc nuw i8 %i.ad to i1                ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 32
  %i.ag = load ptr, ptr %i.af, align 8
  %.not.i.i = icmp ne ptr %i.ag, null
  %or.cond.not.i.i = select i1 %i.ae, i1 true, i1 %.not.i.i
  br i1 %or.cond.not.i.i, label %bb.f, label %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i

_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i: ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 48
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !2924 ; 2 uses
  %.not.i = icmp eq i8 %i.ai, -1
  br i1 %.not.i, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit

bb.f:                                             ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 40
  %i.ak = load ptr, ptr %i.aj, align 8
  %.not.i9.i = icmp eq ptr %i.ak, null
  %i.al = select i1 %i.ae, i1 %.not.i9.i, i1 false
  br i1 %i.al, label %._crit_edge.i, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

._crit_edge.i:                                    ; preds = %bb.f
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 48
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 8, !tbaa !2924
  br label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit

_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit: ; preds = %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i, %._crit_edge.i
  %i.am = phi i8 [ %.pre.i, %._crit_edge.i ], [ %i.ai, %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i ]
  %i.an = icmp eq i8 %i.am, 14
  br i1 %i.an, label %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

_ZNK5clang6interp7Pointer16canBeInitializedEv.exit: ; preds = %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit
  %4 = xor i1 %i.r, true
  call void @llvm.assume(i1 %4)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !135 ; 2 uses
  %.not = icmp eq i32 %i.ap, 0
  br i1 %.not, label %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread, label %_ZNK5clang6interp7Pointer10initializeEv.exit

_ZNK5clang6interp7Pointer10initializeEv.exit:     ; preds = %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !10370)
  store ptr %i.q, ptr %2, align 8, !tbaa !809, !alias.scope !10370
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.ap, ptr %i.aq, align 8, !tbaa !811, !alias.scope !10370
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.as = load i64, ptr %i.j, align 8, !tbaa !163, !noalias !10370
  store i64 %i.as, ptr %i.ar, align 8, !tbaa !812, !alias.scope !10370
  call void @_ZNK5clang6interp7PtrView10initializeEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %.pre = load ptr, ptr %i.p, align 8, !tbaa !135, !noalias !10373
  br label %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread

_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread: ; preds = %_ZNK5clang6interp7Pointer10initializeEv.exit, %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit
  %i.at = phi ptr [ %i.q, %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit ], [ %.pre, %_ZNK5clang6interp7Pointer10initializeEv.exit ] ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.av = load i32, ptr %i.au, align 8, !tbaa !135, !noalias !10373 ; 2 uses
  %i.aw = load i64, ptr %i.j, align 8, !tbaa !163, !noalias !10373 ; 2 uses
  %i.ax = load ptr, ptr %i.at, align 8, !tbaa !125 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !131
  %i.ba = icmp eq i32 %i.av, %i.az
  %.pre.i12 = zext i32 %i.av to i64               ; 3 uses
  br i1 %i.ba, label %_ZNK5clang6interp7Pointer5derefINS0_13MemberPointerEEERT_v.exit, label %bb.g

bb.g:                                             ; preds = %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread
  %i.bb = getelementptr inbounds nuw i8, ptr %i.at, i64 %.pre.i12
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !167
  br label %_ZNK5clang6interp7Pointer5derefINS0_13MemberPointerEEERT_v.exit

_ZNK5clang6interp7Pointer5derefINS0_13MemberPointerEEERT_v.exit: ; preds = %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread, %bb.g
  %.0.i.i.i.i.i = phi ptr [ %i.bd, %bb.g ], [ %i.ax, %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread ]
  %i.be = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 53
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !170, !range !123, !noundef !124
  %i.bg = trunc nuw i8 %i.bf to i1
  %i.bh = icmp eq i64 %i.aw, %.pre.i12
  %i.bi = and i1 %i.bh, %i.bg                     ; 2 uses
  %.sink6.i.i = select i1 %i.bi, i64 %.pre.i12, i64 40
  %.sink5.i.i = select i1 %i.bi, i64 48, i64 %i.aw
  %i.bj = getelementptr inbounds nuw i8, ptr %i.at, i64 %.sink6.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %.sink5.i.i ; 2 uses
  %i.bl = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN5clang6interp7PointeraSERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %i.bk, ptr noundef nonnull align 8 dereferenceable(72) %3) #24 ; 0 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(21) %i.bm, ptr noundef nonnull align 8 dereferenceable(21) %i.g, i64 21, i1 false)
  br label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread: ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i, %bb.b, %bb.d, %bb.f, %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i, %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit, %bb.a, %_ZNK5clang6interp7Pointer5derefINS0_13MemberPointerEEERT_v.exit
  %.0 = phi i1 [ true, %_ZNK5clang6interp7Pointer5derefINS0_13MemberPointerEEERT_v.exit ], [ false, %bb.a ], [ false, %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit ], [ false, %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i ], [ false, %bb.f ], [ false, %bb.d ], [ false, %bb.b ], [ false, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i ]
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(72) %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN5clang6interp5StoreILNS0_8PrimTypeE12ENS0_8FloatingEEEbRNS0_11InterpStateENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1) local_unnamed_addr #0 comdat {
bb.a:
  %2 = alloca %"struct.clang::interp::PtrView", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !354, !nonnull !124, !align !142 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !334
  %i.e = add i64 %i.d, -1
  store i64 %i.e, ptr %i.c, align 8, !tbaa !334
  %i.f = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 16) #24 ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.f, align 8, !tbaa !135
  %.sroa.2.0..0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.2.0.copyload.i = load i32, ptr %.sroa.2.0..0..sroa_idx.i, align 8, !tbaa !1023
  tail call void @_ZN5clang6interp11InterpStack6shrinkEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 16) #24
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !354, !nonnull !124, !align !142
  %i.h = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang6interp11InterpStack8peekDataEm(ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 noundef 48) #24 ; 8 uses
  %i.i = tail call noundef zeroext i1 @_ZN5clang6interp10CheckStoreERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerEb(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i1 noundef zeroext false) #24
  br i1 %i.i, label %bb.b, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !362  ; 3 uses
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = icmp ne i32 %i.k, 1
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8              ; 6 uses
  %i.p = icmp eq ptr %i.o, null                   ; 2 uses
  %or.cond.i.i.i = select i1 %i.m, i1 true, i1 %i.p
  br i1 %or.cond.i.i.i, label %bb.d, label %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i

_ZNK5clang6interp7Pointer6isRootEv.exit.i.i:      ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.r = load i32, ptr %i.q, align 8, !tbaa !135, !noalias !10376 ; 2 uses
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !125  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load i32, ptr %i.t, align 8, !tbaa !131
  %i.v = icmp eq i32 %i.r, %i.u
  br i1 %i.v, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.w = icmp eq i32 %i.k, 1
  br i1 %i.w, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

bb.e:                                             ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i
  %i.x = zext i32 %i.r to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  br label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i

_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i: ; preds = %bb.e, %bb.d
  %.0.i.in.i = phi ptr [ %i.z, %bb.e ], [ %i.o, %bb.d ]
  %.0.i.i = load ptr, ptr %.0.i.in.i, align 8, !tbaa !1418 ; 2 uses
  %.not.not.i = icmp eq ptr %.0.i.i, null
  br i1 %.not.not.i, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i

_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i: ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i
  %.0.i16.i = phi ptr [ %.0.i.i, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i ], [ %i.s, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i ] ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 53
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !170, !range !123, !noundef !124
  %i.ac = trunc nuw i8 %i.ab to i1                ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8
  %.not.i.i = icmp ne ptr %i.ae, null
  %or.cond.not.i.i = select i1 %i.ac, i1 true, i1 %.not.i.i
  br i1 %or.cond.not.i.i, label %bb.f, label %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i

_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i: ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 48
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !2924 ; 2 uses
  %.not.i = icmp eq i8 %i.ag, -1
  br i1 %.not.i, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit

bb.f:                                             ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread13.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8
  %.not.i9.i = icmp eq ptr %i.ai, null
  %i.aj = select i1 %i.ac, i1 %.not.i9.i, i1 false
  br i1 %i.aj, label %._crit_edge.i, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

._crit_edge.i:                                    ; preds = %bb.f
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 48
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 8, !tbaa !2924
  br label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit

_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit: ; preds = %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i, %._crit_edge.i
  %i.ak = phi i8 [ %.pre.i, %._crit_edge.i ], [ %i.ag, %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i ]
  %i.al = icmp eq i8 %i.ak, 12
  br i1 %i.al, label %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit, label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

_ZNK5clang6interp7Pointer16canBeInitializedEv.exit: ; preds = %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit
  %3 = xor i1 %i.p, true
  tail call void @llvm.assume(i1 %3)
  %i.am = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.an = load i32, ptr %i.am, align 8, !tbaa !135 ; 2 uses
  %.not = icmp eq i32 %i.an, 0
  br i1 %.not, label %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread, label %_ZNK5clang6interp7Pointer10initializeEv.exit

_ZNK5clang6interp7Pointer10initializeEv.exit:     ; preds = %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10379)
  store ptr %i.o, ptr %2, align 8, !tbaa !809, !alias.scope !10379
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.an, ptr %i.ao, align 8, !tbaa !811, !alias.scope !10379
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aq = load i64, ptr %i.h, align 8, !tbaa !163, !noalias !10379
  store i64 %i.aq, ptr %i.ap, align 8, !tbaa !812, !alias.scope !10379
  call void @_ZNK5clang6interp7PtrView10initializeEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %.pre = load ptr, ptr %i.n, align 8, !tbaa !135, !noalias !10382
  br label %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread

_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread: ; preds = %_ZNK5clang6interp7Pointer10initializeEv.exit, %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit
  %i.ar = phi ptr [ %i.o, %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit ], [ %.pre, %_ZNK5clang6interp7Pointer10initializeEv.exit ] ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.at = load i32, ptr %i.as, align 8, !tbaa !135, !noalias !10382 ; 2 uses
  %i.au = load i64, ptr %i.h, align 8, !tbaa !163, !noalias !10382 ; 2 uses
  %i.av = load ptr, ptr %i.ar, align 8, !tbaa !125 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !131
  %i.ay = icmp eq i32 %i.at, %i.ax
  %.pre.i13 = zext i32 %i.at to i64               ; 3 uses
  br i1 %i.ay, label %_ZNK5clang6interp7Pointer5derefINS0_8FloatingEEERT_v.exit, label %bb.g

bb.g:                                             ; preds = %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread
  %i.az = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.pre.i13
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !167
  br label %_ZNK5clang6interp7Pointer5derefINS0_8FloatingEEERT_v.exit

_ZNK5clang6interp7Pointer5derefINS0_8FloatingEEERT_v.exit: ; preds = %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread, %bb.g
  %.0.i.i.i.i.i = phi ptr [ %i.bb, %bb.g ], [ %i.av, %_ZNK5clang6interp7Pointer16canBeInitializedEv.exit.thread ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 53
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !170, !range !123, !noundef !124
  %i.be = trunc nuw i8 %i.bd to i1
  %i.bf = icmp eq i64 %i.au, %.pre.i13
  %i.bg = and i1 %i.bf, %i.be                     ; 2 uses
  %.sink6.i.i = select i1 %i.bg, i64 %.pre.i13, i64 40
  %.sink5.i.i = select i1 %i.bg, i64 48, i64 %i.au
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.sink6.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.sink5.i.i ; 2 uses
  store i64 %.sroa.0.0.copyload.i, ptr %i.bi, align 8, !tbaa !135
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store i32 %.sroa.2.0.copyload.i, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !1023
  br label %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread

_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit.thread: ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i, %bb.b, %bb.d, %bb.f, %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i, %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit, %bb.a, %_ZNK5clang6interp7Pointer5derefINS0_8FloatingEEERT_v.exit
  %.0 = phi i1 [ true, %_ZNK5clang6interp7Pointer5derefINS0_8FloatingEEERT_v.exit ], [ false, %bb.a ], [ false, %_ZNK5clang6interp7Pointer8canDerefENS0_8PrimTypeE.exit ], [ false, %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i ], [ false, %bb.f ], [ false, %bb.d ], [ false, %bb.b ], [ false, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.i ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN5clang6interp11EvalEmitter17emitStoreActivateENS0_8PrimTypeENS0_10SourceInfoE(ptr noundef nonnull align 8 dereferenceable(1140) %0, i8 noundef zeroext %1, i64 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1132
  %i.b = load i32, ptr %i.a, align 4, !tbaa !110
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %i.d = load i32, ptr %i.c, align 8, !tbaa !111
  %i.e = icmp eq i32 %i.b, %i.d                   ; 15 uses
  switch i8 %1, label %bb.af [
    i8 0, label %bb.b
    i8 1, label %bb.d
    i8 2, label %bb.f
    i8 3, label %bb.h
    i8 4, label %bb.j
    i8 5, label %bb.l
    i8 6, label %bb.n
    i8 7, label %bb.p
    i8 8, label %bb.r
    i8 9, label %bb.t
    i8 10, label %bb.v
    i8 11, label %bb.x
    i8 13, label %bb.z
    i8 14, label %bb.ab
    i8 12, label %bb.ad
  ]

bb.b:                                             ; preds = %bb.a
  br i1 %i.e, label %bb.c, label %_ZN5clang6interp11EvalEmitter22emitStoreActivateSint8ENS0_10SourceInfoE.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1120
  store i64 %2, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.h = tail call noundef zeroext i1 @_ZN5clang6interp13StoreActivateILNS0_8PrimTypeE0ENS0_4CharILb1EEEEEbRNS0_11InterpStateENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(456) %i.g, ptr null)
  br label %_ZN5clang6interp11EvalEmitter22emitStoreActivateSint8ENS0_10SourceInfoE.exit

bb.d:                                             ; preds = %bb.a
  br i1 %i.e, label %bb.e, label %_ZN5clang6interp11EvalEmitter22emitStoreActivateSint8ENS0_10SourceInfoE.exit

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1120
  store i64 %2, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.k = tail call noundef zeroext i1 @_ZN5clang6interp13StoreActivateILNS0_8PrimTypeE1ENS0_4CharILb0EEEEEbRNS0_11InterpStateENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(456) %i.j, ptr null)
  br label %_ZN5clang6interp11EvalEmitter22emitStoreActivateSint8ENS0_10SourceInfoE.exit

bb.f:                                             ; preds = %bb.a
  br i1 %i.e, label %bb.g, label %_ZN5clang6interp11EvalEmitter22emitStoreActivateSint8ENS0_10SourceInfoE.exit

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1120
  store i64 %2, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.n = tail call noundef zeroext i1 @_ZN5clang6interp13StoreActivateILNS0_8PrimTypeE2ENS0_8IntegralILj16ELb1EEEEEbRNS0_11InterpStateENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(456) %i.m, ptr null)
  br label %_ZN5clang6interp11EvalEmitter22emitStoreActivateSint8ENS0_10SourceInfoE.exit

bb.h:                                             ; preds = %bb.a
  br i1 %i.e, label %bb.i, label %_ZN5clang6interp11EvalEmitter22emitStoreActivateSint8ENS0_10SourceInfoE.exit

bb.i:                                             ; preds = %bb.h
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1120
  store i64 %2, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.q = tail call noundef zeroext i1 @_ZN5clang6interp13StoreActivateILNS0_8PrimTypeE3ENS0_8IntegralILj16ELb0EEEEEbRNS0_11InterpStateENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(456) %i.p, ptr null)
  br label %_ZN5clang6interp11EvalEmitter22emitStoreActivateSint8ENS0_10SourceInfoE.exit

bb.j:                                             ; preds = %bb.a
  br i1 %i.e, label %bb.k, label %_ZN5clang6interp11EvalEmitter22emitStoreActivateSint8ENS0_10SourceInfoE.exit

bb.k:                                             ; preds = %bb.j
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1120
  store i64 %2, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.t = tail call noundef zeroext i1 @_ZN5clang6interp13StoreActivateILNS0_8PrimTypeE4ENS0_8IntegralILj32ELb1EEEEEbRNS0_11InterpStateENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(456) %i.s, ptr null)
  br label %_ZN5clang6interp11EvalEmitter22emitStoreActivateSint8ENS0_10SourceInfoE.exit

bb.l:                                             ; preds = %bb.a
  br i1 %i.e, label %bb.m, label %_ZN5clang6interp11EvalEmitter22emitStoreActivateSint8ENS0_10SourceInfoE.exit

bb.m:                                             ; preds = %bb.l
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1120
  store i64 %2, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.w = tail call noundef zeroext i1 @_ZN5clang6interp13StoreActivateILNS0_8PrimTypeE5ENS0_8IntegralILj32ELb0EEEEEbRNS0_11InterpStateENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(456) %i.v, ptr null)
  br label %_ZN5clang6interp11EvalEmitter22emitStoreActivateSint8ENS0_10SourceInfoE.exit

bb.n:                                             ; preds = %bb.a
  br i1 %i.e, label %bb.o, label %_ZN5clang6interp11EvalEmitter22emitStoreActivateSint8ENS0_10SourceInfoE.exit

bb.o:                                             ; preds = %bb.n
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1120
  store i64 %2, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.z = tail call noundef zeroext i1 @_ZN5clang6interp13StoreActivateILNS0_8PrimTypeE6ENS0_8IntegralILj64ELb1EEEEEbRNS0_11InterpStateENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(456) %i.y, ptr null)
  br label %_ZN5clang6interp11EvalEmitter22emitStoreActivateSint8ENS0_10SourceInfoE.exit

bb.p:                                             ; preds = %bb.a
  br i1 %i.e, label %bb.q, label %_ZN5clang6interp11EvalEmitter22emitStoreActivateSint8ENS0_10SourceInfoE.exit

bb.q:                                             ; preds = %bb.p
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1120
  store i64 %2, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.ac = tail call noundef zeroext i1 @_ZN5clang6interp13StoreActivateILNS0_8PrimTypeE7ENS0_8IntegralILj64ELb0EEEEEbRNS0_11InterpStateENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(456) %i.ab, ptr null)
  br label %_ZN5clang6interp11EvalEmitter22emitStoreActivateSint8ENS0_10SourceInfoE.exit

bb.r:                                             ; preds = %bb.a
  br i1 %i.e, label %bb.s, label %_ZN5clang6interp11EvalEmitter22emitStoreActivateSint8ENS0_10SourceInfoE.exit

bb.s:                                             ; preds = %bb.r
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1120
  store i64 %2, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.af = tail call noundef zeroext i1 @_ZN5clang6interp13StoreActivateILNS0_8PrimTypeE8ENS0_10IntegralAPILb0EEEEEbRNS0_11InterpStateENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(456) %i.ae, ptr null)
  br label %_ZN5clang6interp11EvalEmitter22emitStoreActivateSint8ENS0_10SourceInfoE.exit

bb.t:                                             ; preds = %bb.a
  br i1 %i.e, label %bb.u, label %_ZN5clang6interp11EvalEmitter22emitStoreActivateSint8ENS0_10SourceInfoE.exit

bb.u:                                             ; preds = %bb.t
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1120
  store i64 %2, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.ai = tail call noundef zeroext i1 @_ZN5clang6interp13StoreActivateILNS0_8PrimTypeE9ENS0_10IntegralAPILb1EEEEEbRNS0_11InterpStateENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(456) %i.ah, ptr null)
  br label %_ZN5clang6interp11EvalEmitter22emitStoreActivateSint8ENS0_10SourceInfoE.exit

bb.v:                                             ; preds = %bb.a
  br i1 %i.e, label %bb.w, label %_ZN5clang6interp11EvalEmitter22emitStoreActivateSint8ENS0_10SourceInfoE.exit

bb.w:                                             ; preds = %bb.v
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1120
  store i64 %2, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.al = tail call noundef zeroext i1 @_ZN5clang6interp13StoreActivateILNS0_8PrimTypeE10ENS0_7BooleanEEEbRNS0_11InterpStateENS0_7CodePtrE(ptr noundef nonnull align 8 dereferenceable(456) %i.ak, ptr null)
  br label %_ZN5clang6interp11EvalEmitter22emitStoreActivateSint8ENS0_10SourceInfoE.exit

bb.x:                                             ; preds = %bb.a
  br i1 %i.e, label %bb.y, label %_ZN5clang6interp11EvalEmitter22emitStoreActivateSint8ENS0_10SourceInfoE.exit

bb.y:                                             ; preds = %bb.x
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1120
  store i64 %2, ptr %i.am, align 8
end_hunk_1
