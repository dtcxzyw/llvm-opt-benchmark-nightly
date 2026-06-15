inline.NumInlined: 385
inline.NumDeleted: 122
begin_hunk_0_@_ZN11CStringBaseIwEpLEPKw:bb.a
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !36

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %._crit_edge.thread.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 3     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.i.i.prol
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !25
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.i.i.prol
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !25
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !37

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.prol, %scalar.ph.prol ]
  %i.ah = sub nsw i64 %indvars.iv.i.i.ph, %wide.trip.count.i.i
  %i.ai = icmp ugt i64 %i.ah, -4
  br i1 %i.ai, label %._crit_edge.thread.i.i, label %scalar.ph

._crit_edge.i.i:                                  ; preds = %.preheader.i.i
  %i.aj = icmp eq ptr %.pre.i.i, null
  br i1 %i.aj, label %bb.d, label %._crit_edge.thread.i.i

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.i.i
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !25
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.i.i
  store i32 %i.al, ptr %i.am, align 4, !tbaa !25
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !25
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.next.i.i
  store i32 %i.ao, ptr %i.ap, align 4, !tbaa !25
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i.1
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !25
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.next.i.i.1
  store i32 %i.ar, ptr %i.as, align 4, !tbaa !25
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i.2
  %i.au = load i32, ptr %i.at, align 4, !tbaa !25
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.next.i.i.2
  store i32 %i.au, ptr %i.av, align 4, !tbaa !25
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.thread.i.i, label %scalar.ph, !llvm.loop !38

._crit_edge.thread.i.i:                           ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %._crit_edge.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %.pre.i.i) #20
  %.pre.i = load i32, ptr %i.d, align 8, !tbaa !21
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.thread.i.i, %._crit_edge.i.i, %bb.c
  %i.aw = phi i32 [ %.pre.i, %._crit_edge.thread.i.i ], [ %i.e, %._crit_edge.i.i ], [ %i.e, %bb.c ] ; 2 uses
  store ptr %i.u, ptr %0, align 8, !tbaa !24
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.ax
  store i32 0, ptr %i.ay, align 4, !tbaa !25
  store i32 %i.o, ptr %i.b, align 4, !tbaa !27
  br label %_ZN11CStringBaseIwE10GrowLengthEi.exit

_ZN11CStringBaseIwE10GrowLengthEi.exit:           ; preds = %bb.a, %bb.b, %bb.d
  %i.az = phi i32 [ %i.e, %bb.a ], [ %i.e, %bb.b ], [ %i.aw, %bb.d ] ; 2 uses
  %i.ba = load ptr, ptr %0, align 8, !tbaa !24
  %i.bb = sext i32 %i.az to i64
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.ba, i64 %i.bb
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %_ZN11CStringBaseIwE10GrowLengthEi.exit
  %.04.i = phi ptr [ %1, %_ZN11CStringBaseIwE10GrowLengthEi.exit ], [ %i.bd, %bb.e ] ; 2 uses
  %.0.i4 = phi ptr [ %i.bc, %_ZN11CStringBaseIwE10GrowLengthEi.exit ], [ %i.bf, %bb.e ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.04.i, i64 4
  %i.be = load i32, ptr %.04.i, align 4, !tbaa !25 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.0.i4, i64 4
  store i32 %i.be, ptr %.0.i4, align 4, !tbaa !25
  %.not.i5 = icmp eq i32 %i.be, 0
  br i1 %.not.i5, label %_Z12MyStringCopyIwEPT_S1_PKS0_.exit, label %bb.e, !llvm.loop !28

_Z12MyStringCopyIwEPT_S1_PKS0_.exit:              ; preds = %bb.e
  %i.bg = add nsw i32 %i.az, %i.a
  store i32 %i.bg, ptr %i.d, align 8, !tbaa !21
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZNK4CArc12GetItemMTimeEjR9_FILETIMERb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0, i32 noundef %1, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(8) initializes((0, 8)) %2, ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(1) initializes((0, 1)) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.NWindows::NCOM::CPropVariant", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  store i16 0, ptr %4, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i16 0, ptr %i.a, align 2, !tbaa !11
  store i8 0, ptr %3, align 1, !tbaa !12
  store i32 0, ptr %2, align 4, !tbaa !39
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 0, ptr %i.b, align 4, !tbaa !41
  %i.c = load ptr, ptr %0, align 8, !tbaa !17     ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !14
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = invoke noundef i32 %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.c, i32 noundef %1, i32 noundef 12, ptr noundef nonnull %4)
          to label %bb.b unwind label %bb.c       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.e, label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = invoke noundef i32 @_ZN8NWindows4NCOM12CPropVariant5ClearEv(ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  call void @__clang_call_terminate(ptr %i.k) #18
  unreachable

_ZN8NWindows4NCOM12CPropVariantD2Ev.exit:         ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  resume { ptr, i32 } %i.h

bb.e:                                             ; preds = %bb.b
  %i.l = load i16, ptr %4, align 8, !tbaa !8
  switch i16 %i.l, label %bb.i [
    i16 64, label %bb.f
    i16 0, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.n = load i64, ptr %i.m, align 8
  br label %.sink.split

bb.g:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.p = load i8, ptr %i.o, align 8, !tbaa !42, !range !44, !noundef !45
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.s = load i64, ptr %i.r, align 8
  br label %.sink.split

.sink.split:                                      ; preds = %bb.h, %bb.f
  %.sink = phi i64 [ %i.n, %bb.f ], [ %i.s, %bb.h ]
  store i64 %.sink, ptr %2, align 4
  store i8 1, ptr %3, align 1, !tbaa !12
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.g, %bb.e, %bb.b
  %.1 = phi i32 [ -2147467259, %bb.e ], [ %i.g, %bb.b ], [ 0, %bb.g ], [ 0, %.sink.split ]
  %i.t = invoke noundef i32 @_ZN8NWindows4NCOM12CPropVariant5ClearEv(ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit17 unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #18
  unreachable

_ZN8NWindows4NCOM12CPropVariantD2Ev.exit17:       ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  ret i32 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN4CArc10OpenStreamEP7CCodecsiP9IInStreamP19ISequentialInStreamP20IArchiveOpenCallback(ptr noundef nonnull align 8 dereferenceable(80) initializes((72, 76)) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %class.CStringBase, align 8         ; 11 uses
  %7 = alloca %class.CStringBase, align 8         ; 7 uses
  %8 = alloca %class.CRecordVector, align 8       ; 30 uses
  %9 = alloca %class.CRecordVector, align 8       ; 15 uses
  %i.a = alloca i64, align 8                      ; 10 uses
  %10 = alloca %class.CBuffer, align 8            ; 11 uses
  %i.b = alloca [256 x i8], align 16              ; 7 uses
  %i.c = alloca i64, align 8                      ; 7 uses
  %11 = alloca %class.CStringBase, align 8        ; 9 uses
  %12 = alloca %class.CStringBase, align 8        ; 9 uses
  %13 = alloca %class.CMyComPtr.2, align 8        ; 9 uses
  %14 = alloca %"class.NWindows::NCOM::CPropVariant", align 8 ; 10 uses
  %15 = alloca %class.CStringBase, align 8        ; 7 uses
  %16 = alloca %class.CStringBase, align 8        ; 9 uses
  %17 = alloca %class.CStringBase, align 8        ; 9 uses
  %18 = alloca %class.CStringBase, align 8        ; 7 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !17     ; 3 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_ZN9CMyComPtrI10IInArchiveE7ReleaseEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !14
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef i32 %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.d), !inline_history !46 ; 0 uses
  store ptr null, ptr %0, align 8, !tbaa !17
  br label %_ZN9CMyComPtrI10IInArchiveE7ReleaseEv.exit

_ZN9CMyComPtrI10IInArchiveE7ReleaseEv.exit:       ; preds = %bb.a, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  store i32 0, ptr %i.j, align 8, !tbaa !21
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !24
  store i32 0, ptr %i.k, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_Z23ExtractFileNameFromPathRK11CStringBaseIwE(ptr dead_on_unwind nonnull writable sret(%class.CStringBase) align 8 %6, ptr noundef nonnull align 8 dereferenceable(16) %i.l)
  %i.m = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #19
          to label %bb.c unwind label %bb.l       ; 8 uses

bb.c:                                             ; preds = %_ZN9CMyComPtrI10IInArchiveE7ReleaseEv.exit
  store i32 0, ptr %i.m, align 4, !tbaa !25
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !21   ; 3 uses
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %_ZNK11CStringBaseIwE11ReverseFindEw.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %6, align 8, !tbaa !24     ; 3 uses
  %i.r = sext i32 %i.o to i64
  %i.s = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.r
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %.pn.i = phi ptr [ %i.s, %bb.d ], [ %.0.i, %bb.f ]
  %.0.i = getelementptr inbounds i8, ptr %.pn.i, i64 -4 ; 4 uses
  %i.t = load i32, ptr %.0.i, align 4, !tbaa !25
  %i.u = icmp eq i32 %i.t, 46
  br i1 %i.u, label %_ZNK11CStringBaseIwE11ReverseFindEw.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = icmp eq ptr %.0.i, %i.q
  br i1 %i.v, label %_ZNK11CStringBaseIwE11ReverseFindEw.exit.thread, label %bb.e, !llvm.loop !47

_ZNK11CStringBaseIwE11ReverseFindEw.exit:         ; preds = %bb.e
  %i.w = ptrtoint ptr %.0.i to i64
  %i.x = ptrtoint ptr %i.q to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = lshr exact i64 %i.y, 2
  %i.aa = trunc i64 %i.z to i32                   ; 2 uses
  %i.ab = icmp sgt i32 %i.aa, -1
  br i1 %i.ab, label %bb.g, label %_ZNK11CStringBaseIwE11ReverseFindEw.exit.thread

bb.g:                                             ; preds = %_ZNK11CStringBaseIwE11ReverseFindEw.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  %i.ac = add nuw nsw i32 %i.aa, 1                ; 2 uses
  %i.ad = sub nsw i32 %i.o, %i.ac
  invoke void @_ZNK11CStringBaseIwE3MidEii(ptr dead_on_unwind nonnull writable sret(%class.CStringBase) align 8 %7, ptr noundef nonnull align 8 dereferenceable(16) %6, i32 noundef %i.ac, i32 noundef %i.ad)
          to label %_ZNK11CStringBaseIwE3MidEi.exit unwind label %bb.m

_ZNK11CStringBaseIwE3MidEi.exit:                  ; preds = %bb.g
  store i32 0, ptr %i.m, align 4, !tbaa !25
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !21 ; 2 uses
  %i.ag = add nsw i32 %i.af, 1                    ; 2 uses
  %i.ah = icmp eq i32 %i.ag, 4
  br i1 %i.ah, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNK11CStringBaseIwE3MidEi.exit
  %i.ai = zext nneg i32 %i.ag to i64
  %i.aj = icmp slt i32 %i.af, -1
  %i.ak = shl nuw nsw i64 %i.ai, 2
  %i.al = select i1 %i.aj, i64 -1, i64 %i.ak
  %i.am = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.al) #19
          to label %bb.i unwind label %bb.n       ; 2 uses

bb.i:                                             ; preds = %bb.h
  call void @_ZdaPv(ptr noundef nonnull %i.m) #20
  store i32 0, ptr %i.am, align 4, !tbaa !25
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i

_ZN11CStringBaseIwE11SetCapacityEi.exit.i:        ; preds = %bb.i, %_ZNK11CStringBaseIwE3MidEi.exit
  %.sroa.0470.2 = phi ptr [ %i.m, %_ZNK11CStringBaseIwE3MidEi.exit ], [ %i.am, %bb.i ] ; 2 uses
  %i.an = load ptr, ptr %7, align 8, !tbaa !24    ; 3 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
  %.04.i.i = phi ptr [ %i.an, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.ao, %bb.j ] ; 2 uses
  %.0.i.i = phi ptr [ %.sroa.0470.2, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.aq, %bb.j ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.04.i.i, i64 4
  %i.ap = load i32, ptr %.04.i.i, align 4, !tbaa !25 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  store i32 %i.ap, ptr %.0.i.i, align 4, !tbaa !25
  %.not.i.i = icmp eq i32 %i.ap, 0
  br i1 %.not.i.i, label %_ZN11CStringBaseIwEaSERKS0_.exit, label %bb.j, !llvm.loop !28

_ZN11CStringBaseIwEaSERKS0_.exit:                 ; preds = %bb.j
  %i.ar = icmp eq ptr %i.an, null
  br i1 %i.ar, label %_ZN11CStringBaseIwED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZN11CStringBaseIwEaSERKS0_.exit
  call void @_ZdaPv(ptr noundef nonnull %i.an) #20
  br label %_ZN11CStringBaseIwED2Ev.exit

_ZN11CStringBaseIwED2Ev.exit:                     ; preds = %_ZN11CStringBaseIwEaSERKS0_.exit, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %_ZNK11CStringBaseIwE11ReverseFindEw.exit.thread

bb.l:                                             ; preds = %_ZN9CMyComPtrI10IInArchiveE7ReleaseEv.exit
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIwED2Ev.exit448.a

bb.m:                                             ; preds = %bb.g
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIwED2Ev.exit324

bb.n:                                             ; preds = %bb.h
  %i.au = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.av = load ptr, ptr %7, align 8, !tbaa !24    ; 2 uses
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %_ZN11CStringBaseIwED2Ev.exit324, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_ZdaPv(ptr noundef nonnull %i.av) #20
  br label %_ZN11CStringBaseIwED2Ev.exit324

_ZN11CStringBaseIwED2Ev.exit324:                  ; preds = %bb.o, %bb.n, %bb.m
  %.pn = phi { ptr, i32 } [ %i.at, %bb.m ], [ %i.au, %bb.n ], [ %i.au, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %bb.ex

_ZNK11CStringBaseIwE11ReverseFindEw.exit.thread:  ; preds = %bb.f, %bb.c, %_ZN11CStringBaseIwED2Ev.exit, %_ZNK11CStringBaseIwE11ReverseFindEw.exit
  %.sroa.0470.0 = phi ptr [ %.sroa.0470.2, %_ZN11CStringBaseIwED2Ev.exit ], [ %i.m, %_ZNK11CStringBaseIwE11ReverseFindEw.exit ], [ %i.m, %bb.c ], [ %i.m, %bb.f ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  %i.ax = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %8, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i8 0, i64 16, i1 false)
  store i64 4, ptr %i.ay, align 8, !tbaa !48
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CRecordVectorIiE, i64 16), ptr %8, align 8, !tbaa !14
  %i.az = icmp sgt i32 %2, -1
  br i1 %i.az, label %bb.p, label %.preheader576

.preheader576:                                    ; preds = %_ZNK11CStringBaseIwE11ReverseFindEw.exit.thread
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !51
  %i.bc = icmp sgt i32 %i.bb, 0
  br i1 %i.bc, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %.preheader576
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.be = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 3 uses
  br label %bb.r

bb.p:                                             ; preds = %_ZNK11CStringBaseIwE11ReverseFindEw.exit.thread
  invoke void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %_ZN13CRecordVectorIiE3AddEi.exit unwind label %bb.q

_ZN13CRecordVectorIiE3AddEi.exit:                 ; preds = %bb.p
  %i.bg = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !52
  %i.bi = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 3 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !51
  %i.bk = sext i32 %i.bj to i64
  %i.bl = getelementptr inbounds [4 x i8], ptr %i.bh, i64 %i.bk
  store i32 %2, ptr %i.bl, align 4, !tbaa !4
  %i.bm = load i32, ptr %i.bi, align 4, !tbaa !51
  %i.bn = add nsw i32 %i.bm, 1
  store i32 %i.bn, ptr %i.bi, align 4, !tbaa !51
  br label %._crit_edge621.thread

bb.q:                                             ; preds = %bb.p
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7CBufferIhED2Ev.exit360

bb.r:                                             ; preds = %.lr.ph, %bb.t
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.t ] ; 4 uses
  %.0222604 = phi i32 [ 0, %.lr.ph ], [ %.1223, %bb.t ] ; 4 uses
  %i.bp = load ptr, ptr %i.bd, align 8, !tbaa !52
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !53 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 56
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 52 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !51
  %i.bv = icmp sgt i32 %i.bu, 0
  br i1 %i.bv, label %.lr.ph.i, label %_ZNK10CArcInfoEx13FindExtensionERK11CStringBaseIwE.exit.thread

.lr.ph.i:                                         ; preds = %bb.r, %bb.s
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.s ], [ 0, %bb.r ] ; 2 uses
  %i.bw = load ptr, ptr %i.bs, align 8, !tbaa !52
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %indvars.iv.i
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !53
end_hunk_0
begin_hunk_1_@_ZN4CArc10OpenStreamEP7CCodecsiP9IInStreamP19ISequentialInStreamP20IArchiveOpenCallback:bb.a

.noexc365:                                        ; preds = %bb.ce
  %i.le = getelementptr inbounds nuw i8, ptr %11, i64 12
  store ptr %i.ld, ptr %11, align 8, !tbaa !24
  store i32 4, ptr %i.le, align 4, !tbaa !27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ld, ptr noundef nonnull align 4 dereferenceable(16) @.str.4, i64 16, i1 false), !tbaa !25
  %i.lf = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 3, ptr %i.lf, align 8, !tbaa !21
  %i.lg = invoke noundef i32 @_ZNK7CCodecs24FindFormatForArchiveTypeERK11CStringBaseIwE(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(16) %11)
          to label %bb.cf unwind label %bb.ck     ; 3 uses

bb.cf:                                            ; preds = %.noexc365
  %i.lh = load ptr, ptr %11, align 8, !tbaa !24   ; 2 uses
  %i.li = icmp eq ptr %i.lh, null
  br i1 %i.li, label %_ZN11CStringBaseIwED2Ev.exit366, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  call void @_ZdaPv(ptr noundef nonnull %i.lh) #20
  br label %_ZN11CStringBaseIwED2Ev.exit366

_ZN11CStringBaseIwED2Ev.exit366:                  ; preds = %bb.cf, %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #17
  %i.lj = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #19
          to label %.noexc372 unwind label %bb.cm ; 2 uses

.noexc372:                                        ; preds = %_ZN11CStringBaseIwED2Ev.exit366
  %i.lk = getelementptr inbounds nuw i8, ptr %12, i64 12
  store ptr %i.lj, ptr %12, align 8, !tbaa !24
  store i32 4, ptr %i.lk, align 4, !tbaa !27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.lj, ptr noundef nonnull align 4 dereferenceable(16) @.str.5, i64 16, i1 false), !tbaa !25
  %i.ll = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i32 3, ptr %i.ll, align 8, !tbaa !21
  %i.lm = invoke noundef i32 @_ZNK7CCodecs24FindFormatForArchiveTypeERK11CStringBaseIwE(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(16) %12)
          to label %bb.ch unwind label %bb.cn     ; 3 uses

bb.ch:                                            ; preds = %.noexc372
  %i.ln = load ptr, ptr %12, align 8, !tbaa !24   ; 2 uses
  %i.lo = icmp eq ptr %i.ln, null
  br i1 %i.lo, label %_ZN11CStringBaseIwED2Ev.exit374, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  call void @_ZdaPv(ptr noundef nonnull %i.ln) #20
  br label %_ZN11CStringBaseIwED2Ev.exit374

_ZN11CStringBaseIwED2Ev.exit374:                  ; preds = %bb.ch, %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  %i.lp = load i32, ptr %i.la, align 4, !tbaa !51 ; 3 uses
  %i.lq = icmp sgt i32 %i.lp, 0
  br i1 %i.lq, label %.lr.ph620, label %._crit_edge621.thread

.lr.ph620:                                        ; preds = %_ZN11CStringBaseIwED2Ev.exit374
  %i.lr = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !52 ; 2 uses
  %wide.trip.count = zext nneg i32 %i.lp to i64   ; 3 uses
  %min.iters.check = icmp ult i32 %i.lp, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph620
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.lg, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert792 = insertelement <4 x i32> poison, i32 %i.lm, i64 0
  %broadcast.splat793 = shufflevector <4 x i32> %broadcast.splatinsert792, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ splat (i32 -2147483648), %vector.ph ], [ %i.mb, %vector.body ]
  %vec.phi794 = phi <4 x i32> [ splat (i32 -2147483648), %vector.ph ], [ %i.mc, %vector.body ]
  %vec.phi795 = phi <4 x i32> [ splat (i32 -2147483648), %vector.ph ], [ %i.lx, %vector.body ]
  %vec.phi796 = phi <4 x i32> [ splat (i32 -2147483648), %vector.ph ], [ %i.ly, %vector.body ]
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 4 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4) ; 2 uses
  %i.lt = getelementptr inbounds nuw [4 x i8], ptr %i.ls, i64 %index ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 16
  %wide.load = load <4 x i32>, ptr %i.lt, align 4, !tbaa !4 ; 2 uses
  %wide.load797 = load <4 x i32>, ptr %i.lu, align 4, !tbaa !4 ; 2 uses
  %i.lv = icmp eq <4 x i32> %wide.load, %broadcast.splat
  %i.lw = icmp eq <4 x i32> %wide.load797, %broadcast.splat
  %i.lx = select <4 x i1> %i.lv, <4 x i32> %vec.ind, <4 x i32> %vec.phi795 ; 2 uses
  %i.ly = select <4 x i1> %i.lw, <4 x i32> %step.add, <4 x i32> %vec.phi796 ; 2 uses
  %i.lz = icmp eq <4 x i32> %wide.load, %broadcast.splat793
  %i.ma = icmp eq <4 x i32> %wide.load797, %broadcast.splat793
  %i.mb = select <4 x i1> %i.lz, <4 x i32> %vec.ind, <4 x i32> %vec.phi ; 2 uses
  %i.mc = select <4 x i1> %i.ma, <4 x i32> %step.add, <4 x i32> %vec.phi794 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.md = icmp eq i64 %index.next, %n.vec
  br i1 %i.md, label %middle.block, label %vector.body, !llvm.loop !69

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.mb, <4 x i32> %i.mc)
  %i.me = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  %.not800 = icmp eq i32 %i.me, -2147483648
  %i.mf = select i1 %.not800, i32 -1, i32 %i.me   ; 2 uses
  %rdx.minmax798 = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.lx, <4 x i32> %i.ly)
  %i.mg = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax798) ; 2 uses
  %.not801 = icmp eq i32 %i.mg, -2147483648
  %i.mh = select i1 %.not801, i32 -1, i32 %i.mg   ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge621, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph620, %middle.block
  %indvars.iv666.ph = phi i64 [ 0, %.lr.ph620 ], [ %n.vec, %middle.block ]
  %.0244618.ph = phi i32 [ -1, %.lr.ph620 ], [ %i.mf, %middle.block ]
  %.0246617.ph = phi i32 [ -1, %.lr.ph620 ], [ %i.mh, %middle.block ]
  br label %scalar.ph

._crit_edge621:                                   ; preds = %scalar.ph, %middle.block
  %spec.select.lcssa = phi i32 [ %i.mh, %middle.block ], [ %spec.select, %scalar.ph ] ; 3 uses
  %.1245.lcssa = phi i32 [ %i.mf, %middle.block ], [ %.1245, %scalar.ph ] ; 2 uses
  %i.mi = icmp sgt i32 %.1245.lcssa, %spec.select.lcssa
  %i.mj = icmp sgt i32 %spec.select.lcssa, -1
  %or.cond = and i1 %i.mj, %i.mi
  br i1 %or.cond, label %bb.cp, label %._crit_edge621.thread

bb.cj:                                            ; preds = %bb.ce
  %i.mk = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIwED2Ev.exit375

bb.ck:                                            ; preds = %.noexc365
  %i.ml = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.mm = load ptr, ptr %11, align 8, !tbaa !24   ; 2 uses
  %i.mn = icmp eq ptr %i.mm, null
  br i1 %i.mn, label %_ZN11CStringBaseIwED2Ev.exit375, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  call void @_ZdaPv(ptr noundef nonnull %i.mm) #20
  br label %_ZN11CStringBaseIwED2Ev.exit375

_ZN11CStringBaseIwED2Ev.exit375:                  ; preds = %bb.cl, %bb.ck, %bb.cj
  %.pn293 = phi { ptr, i32 } [ %i.mk, %bb.cj ], [ %i.ml, %bb.ck ], [ %i.ml, %bb.cl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  br label %_ZN7CBufferIhED2Ev.exit360

bb.cm:                                            ; preds = %_ZN11CStringBaseIwED2Ev.exit366
  %i.mo = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIwED2Ev.exit376

bb.cn:                                            ; preds = %.noexc372
  %i.mp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.mq = load ptr, ptr %12, align 8, !tbaa !24   ; 2 uses
  %i.mr = icmp eq ptr %i.mq, null
  br i1 %i.mr, label %_ZN11CStringBaseIwED2Ev.exit376, label %bb.co

bb.co:                                            ; preds = %bb.cn
  call void @_ZdaPv(ptr noundef nonnull %i.mq) #20
  br label %_ZN11CStringBaseIwED2Ev.exit376

_ZN11CStringBaseIwED2Ev.exit376:                  ; preds = %bb.co, %bb.cn, %bb.cm
  %.pn295 = phi { ptr, i32 } [ %i.mo, %bb.cm ], [ %i.mp, %bb.cn ], [ %i.mp, %bb.co ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  br label %_ZN7CBufferIhED2Ev.exit360

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv666 = phi i64 [ %indvars.iv.next667, %scalar.ph ], [ %indvars.iv666.ph, %scalar.ph.preheader ] ; 3 uses
  %.0244618 = phi i32 [ %.1245, %scalar.ph ], [ %.0244618.ph, %scalar.ph.preheader ]
  %.0246617 = phi i32 [ %spec.select, %scalar.ph ], [ %.0246617.ph, %scalar.ph.preheader ]
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr %i.ls, i64 %indvars.iv666
  %i.mt = load i32, ptr %i.ms, align 4, !tbaa !4  ; 2 uses
  %i.mu = icmp eq i32 %i.mt, %i.lg
  %i.mv = trunc nuw nsw i64 %indvars.iv666 to i32 ; 2 uses
  %spec.select = select i1 %i.mu, i32 %i.mv, i32 %.0246617 ; 2 uses
  %i.mw = icmp eq i32 %i.mt, %i.lm
  %.1245 = select i1 %i.mw, i32 %i.mv, i32 %.0244618 ; 2 uses
  %indvars.iv.next667 = add nuw nsw i64 %indvars.iv666, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next667, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge621, label %scalar.ph, !llvm.loop !70

bb.cp:                                            ; preds = %._crit_edge621
  %i.mx = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.my = load ptr, ptr %i.mx, align 8, !tbaa !52 ; 2 uses
  %i.mz = sext i32 %.1245.lcssa to i64
  %i.na = getelementptr inbounds [4 x i8], ptr %i.my, i64 %i.mz
  store i32 %i.lg, ptr %i.na, align 4, !tbaa !4
  %i.nb = zext nneg i32 %spec.select.lcssa to i64
  %i.nc = getelementptr inbounds nuw [4 x i8], ptr %i.my, i64 %i.nb
  store i32 %i.lm, ptr %i.nc, align 4, !tbaa !4
  br label %._crit_edge621.thread

._crit_edge621.thread:                            ; preds = %_ZN11CStringBaseIwED2Ev.exit374, %._crit_edge621, %bb.cp, %bb.cd, %_ZN13CRecordVectorIiE3AddEi.exit
  %.10 = phi i32 [ undef, %_ZN13CRecordVectorIiE3AddEi.exit ], [ %.8, %._crit_edge621 ], [ %.8, %bb.cp ], [ %.8, %bb.cd ], [ %.8, %_ZN11CStringBaseIwED2Ev.exit374 ]
  %i.nd = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 2 uses
  %i.ne = load i32, ptr %i.nd, align 4, !tbaa !51
  %.not319624 = icmp sgt i32 %i.ne, 0
  br i1 %.not319624, label %.lr.ph628, label %_ZN11CStringBaseIwED2Ev.exit446.a

.lr.ph628:                                        ; preds = %._crit_edge621.thread
  %.not300 = icmp eq ptr %3, null                 ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ng = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %14, i64 2
  %i.nj = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.nk = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  %i.no = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 4 uses
  %i.np = getelementptr inbounds nuw i8, ptr %16, i64 12
  %i.nq = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.nr = getelementptr inbounds nuw i8, ptr %17, i64 12
  %i.ns = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.nt = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  br label %bb.cq

bb.cq:                                            ; preds = %.lr.ph628, %_ZN9CMyComPtrI10IInArchiveED2Ev.exit.thread
  %indvars.iv669 = phi i64 [ 0, %.lr.ph628 ], [ %indvars.iv.next670, %_ZN9CMyComPtrI10IInArchiveED2Ev.exit.thread ] ; 2 uses
  %.11626 = phi i32 [ %.10, %.lr.ph628 ], [ %.19528536, %_ZN9CMyComPtrI10IInArchiveED2Ev.exit.thread ] ; 2 uses
  br i1 %.not300, label %bb.cu, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.nu = load ptr, ptr %3, align 8, !tbaa !14
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 48
  %i.nw = load ptr, ptr %i.nv, align 8
  %i.nx = invoke noundef i32 %i.nw(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 0, i32 noundef 0, ptr noundef null)
          to label %bb.cs unwind label %bb.ct     ; 2 uses

bb.cs:                                            ; preds = %bb.cr
  %.not301 = icmp eq i32 %i.nx, 0
  br i1 %.not301, label %bb.cu, label %_ZN11CStringBaseIwED2Ev.exit446.a

bb.ct:                                            ; preds = %bb.cr
  %i.ny = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7CBufferIhED2Ev.exit360

bb.cu:                                            ; preds = %bb.cs, %bb.cq
  %i.nz = load ptr, ptr %i.nf, align 8, !tbaa !52
  %i.oa = getelementptr inbounds nuw [4 x i8], ptr %i.nz, i64 %indvars.iv669
  %i.ob = load i32, ptr %i.oa, align 4, !tbaa !4  ; 2 uses
  store i32 %i.ob, ptr %i.ng, align 8, !tbaa !71
  %i.oc = load ptr, ptr %i.nh, align 8, !tbaa !52
  %i.od = sext i32 %i.ob to i64
  %i.oe = getelementptr inbounds [8 x i8], ptr %i.oc, i64 %i.od
  %i.of = load ptr, ptr %i.oe, align 8, !tbaa !53
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 8
  %i.oh = load ptr, ptr %i.og, align 8, !tbaa !72
  %i.oi = invoke noundef ptr %i.oh()
          to label %.noexc378 unwind label %.thread550, !inline_history !76 ; 16 uses

.noexc378:                                        ; preds = %bb.cu
  %.not.i.i377 = icmp eq ptr %i.oi, null
  br i1 %.not.i.i377, label %_ZN9CMyComPtrI10IInArchiveED2Ev.exit.thread, label %bb.cv

bb.cv:                                            ; preds = %.noexc378
  %i.oj = load ptr, ptr %i.oi, align 8, !tbaa !14
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 8
  %i.ol = load ptr, ptr %i.ok, align 8
  %i.om = invoke noundef i32 %i.ol(ptr noundef nonnull align 8 dereferenceable(8) %i.oi)
          to label %_ZNK7CCodecs15CreateInArchiveEiR9CMyComPtrI10IInArchiveE.exit unwind label %.thread550, !inline_history !76 ; 0 uses

.thread550:                                       ; preds = %bb.cu, %bb.cv
  %i.on = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7CBufferIhED2Ev.exit360

_ZNK7CCodecs15CreateInArchiveEiR9CMyComPtrI10IInArchiveE.exit: ; preds = %bb.cv
  br i1 %.not300, label %bb.cy, label %bb.cw

bb.cw:                                            ; preds = %_ZNK7CCodecs15CreateInArchiveEiR9CMyComPtrI10IInArchiveE.exit
  %i.oo = load ptr, ptr %i.oi, align 8, !tbaa !14
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 40
  %i.oq = load ptr, ptr %i.op, align 8
  %i.or = invoke noundef i32 %i.oq(ptr noundef nonnull align 8 dereferenceable(8) %i.oi, ptr noundef nonnull %3, ptr noundef nonnull @_ZL22kMaxCheckStartPosition, ptr noundef %5)
          to label %bb.dg unwind label %bb.cx

bb.cx:                                            ; preds = %bb.dr, %bb.dq, %bb.cw
  %i.os = landingpad { ptr, i32 }
          cleanup
  br label %.thread554

bb.cy:                                            ; preds = %_ZNK7CCodecs15CreateInArchiveEiR9CMyComPtrI10IInArchiveE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #17
  store ptr null, ptr %13, align 8, !tbaa !77
  %i.ot = load ptr, ptr %i.oi, align 8, !tbaa !14
  %i.ou = load ptr, ptr %i.ot, align 8
  %i.ov = invoke noundef i32 %i.ou(ptr noundef nonnull align 8 dereferenceable(8) %i.oi, ptr noundef nonnull align 4 dereferenceable(16) @IID_IArchiveOpenSeq, ptr noundef nonnull %13)
          to label %_ZNK9CMyComPtrI10IInArchiveE14QueryInterfaceIvEEiRK4GUIDPPT_.exit unwind label %bb.cz, !inline_history !80 ; 0 uses

_ZNK9CMyComPtrI10IInArchiveE14QueryInterfaceIvEEiRK4GUIDPPT_.exit: ; preds = %bb.cy
  %i.ow = load ptr, ptr %13, align 8, !tbaa !77   ; 3 uses
  %i.ox = icmp eq ptr %i.ow, null
  br i1 %i.ox, label %_ZN9CMyComPtrI15IArchiveOpenSeqED2Ev.exit384, label %bb.dc

bb.cz:                                            ; preds = %bb.cy, %bb.dc
  %i.oy = landingpad { ptr, i32 }
          cleanup
  %i.oz = load ptr, ptr %13, align 8, !tbaa !77   ; 3 uses
  %.not.i382 = icmp eq ptr %i.oz, null
  br i1 %.not.i382, label %_ZN9CMyComPtrI15IArchiveOpenSeqED2Ev.exit, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.pa = load ptr, ptr %i.oz, align 8, !tbaa !14
  %i.pb = getelementptr inbounds nuw i8, ptr %i.pa, i64 16
  %i.pc = load ptr, ptr %i.pb, align 8
  %i.pd = invoke noundef i32 %i.pc(ptr noundef nonnull align 8 dereferenceable(8) %i.oz)
          to label %_ZN9CMyComPtrI15IArchiveOpenSeqED2Ev.exit unwind label %bb.db ; 0 uses

bb.db:                                            ; preds = %bb.da
  %i.pe = landingpad { ptr, i32 }
          catch ptr null
  %i.pf = extractvalue { ptr, i32 } %i.pe, 0
  call void @__clang_call_terminate(ptr %i.pf) #18
  unreachable

_ZN9CMyComPtrI15IArchiveOpenSeqED2Ev.exit:        ; preds = %bb.cz, %bb.da
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  br label %.thread554

bb.dc:                                            ; preds = %_ZNK9CMyComPtrI10IInArchiveE14QueryInterfaceIvEEiRK4GUIDPPT_.exit
  %i.pg = load ptr, ptr %i.ow, align 8, !tbaa !14
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pg, i64 40
  %i.pi = load ptr, ptr %i.ph, align 8
  %i.pj = invoke noundef i32 %i.pi(ptr noundef nonnull align 8 dereferenceable(8) %i.ow, ptr noundef %4)
          to label %bb.dd unwind label %bb.cz

bb.dd:                                            ; preds = %bb.dc
  %.pr509 = load ptr, ptr %13, align 8, !tbaa !77 ; 3 uses
  %.not.i383 = icmp eq ptr %.pr509, null
  br i1 %.not.i383, label %_ZN9CMyComPtrI15IArchiveOpenSeqED2Ev.exit384.thread, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.pk = load ptr, ptr %.pr509, align 8, !tbaa !14
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 16
  %i.pm = load ptr, ptr %i.pl, align 8
  %i.pn = invoke noundef i32 %i.pm(ptr noundef nonnull align 8 dereferenceable(8) %.pr509)
          to label %_ZN9CMyComPtrI15IArchiveOpenSeqED2Ev.exit384.thread unwind label %bb.df ; 0 uses

bb.df:                                            ; preds = %bb.de
  %i.po = landingpad { ptr, i32 }
          catch ptr null
  %i.pp = extractvalue { ptr, i32 } %i.po, 0
  call void @__clang_call_terminate(ptr %i.pp) #18
  unreachable

_ZN9CMyComPtrI15IArchiveOpenSeqED2Ev.exit384.thread: ; preds = %bb.dd, %bb.de
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  br label %bb.dg

_ZN9CMyComPtrI15IArchiveOpenSeqED2Ev.exit384:     ; preds = %_ZNK9CMyComPtrI10IInArchiveE14QueryInterfaceIvEEiRK4GUIDPPT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  br label %.thread519

bb.dg:                                            ; preds = %_ZN9CMyComPtrI15IArchiveOpenSeqED2Ev.exit384.thread, %bb.cw
  %.2219 = phi i32 [ %i.pj, %_ZN9CMyComPtrI15IArchiveOpenSeqED2Ev.exit384.thread ], [ %i.or, %bb.cw ] ; 2 uses
  switch i32 %.2219, label %.thread519.fold.split [
    i32 1, label %.thread519
    i32 0, label %bb.dh
  ]

bb.dh:                                            ; preds = %bb.dg
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #17
  store i16 0, ptr %14, align 8, !tbaa !8
  store i16 0, ptr %i.ni, align 2, !tbaa !11
  %i.pq = load ptr, ptr %i.oi, align 8, !tbaa !14
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pq, i64 80
  %i.ps = load ptr, ptr %i.pr, align 8
  %i.pt = invoke noundef i32 %i.ps(ptr noundef nonnull align 8 dereferenceable(8) %i.oi, i32 noundef 55, ptr noundef nonnull %14)
          to label %bb.di unwind label %bb.dm     ; 0 uses

bb.di:                                            ; preds = %bb.dh
  %i.pu = load i16, ptr %14, align 8, !tbaa !8    ; 2 uses
  %.not304 = icmp eq i16 %i.pu, 0
  br i1 %.not304, label %bb.do, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.pv = icmp eq i16 %i.pu, 8
  %i.pw = load ptr, ptr %i.nj, align 8
  %i.px = select i1 %i.pv, ptr %i.pw, ptr @.str.6 ; 2 uses
  store i32 0, ptr %i.j, align 8, !tbaa !21
  %i.py = load ptr, ptr %i.i, align 8, !tbaa !24  ; 3 uses
  store i32 0, ptr %i.py, align 4, !tbaa !25
  %wcslen.i.i385 = call i64 @wcslen(ptr %i.px)
  %i.pz = trunc i64 %wcslen.i.i385 to i32         ; 3 uses
  %i.qa = add nsw i32 %i.pz, 1                    ; 3 uses
  %i.qb = load i32, ptr %i.nk, align 4, !tbaa !27 ; 2 uses
  %i.qc = icmp eq i32 %i.qa, %i.qb
  br i1 %i.qc, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i386.preheader, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.qd = zext nneg i32 %i.qa to i64
  %i.qe = icmp slt i32 %i.pz, -1
  %i.qf = shl nuw nsw i64 %i.qd, 2
  %i.qg = select i1 %i.qe, i64 -1, i64 %i.qf
  %i.qh = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.qg) #19
          to label %.noexc392 unwind label %bb.dm ; 3 uses

.noexc392:                                        ; preds = %bb.dk
  %i.qi = icmp sgt i32 %i.qb, 0
  br i1 %i.qi, label %._crit_edge.thread.i.i390, label %bb.dl

._crit_edge.thread.i.i390:                        ; preds = %.noexc392
  call void @_ZdaPv(ptr noundef nonnull %i.py) #20
  %.pre.i391 = load i32, ptr %i.j, align 8, !tbaa !21
  %i.qj = sext i32 %.pre.i391 to i64
  br label %bb.dl

bb.dl:                                            ; preds = %._crit_edge.thread.i.i390, %.noexc392
  %i.qk = phi i64 [ %i.qj, %._crit_edge.thread.i.i390 ], [ 0, %.noexc392 ]
  store ptr %i.qh, ptr %i.i, align 8, !tbaa !24
  %i.ql = getelementptr inbounds [4 x i8], ptr %i.qh, i64 %i.qk
  store i32 0, ptr %i.ql, align 4, !tbaa !25
  store i32 %i.qa, ptr %i.nk, align 4, !tbaa !27
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i386.preheader

_ZN11CStringBaseIwE11SetCapacityEi.exit.i386.preheader: ; preds = %bb.dl, %bb.dj
  %.0.i.i388.ph = phi ptr [ %i.py, %bb.dj ], [ %i.qh, %bb.dl ]
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i386

_ZN11CStringBaseIwE11SetCapacityEi.exit.i386:     ; preds = %_ZN11CStringBaseIwE11SetCapacityEi.exit.i386.preheader, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i386
  %.04.i.i387 = phi ptr [ %i.qm, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i386 ], [ %i.px, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i386.preheader ] ; 2 uses
  %.0.i.i388 = phi ptr [ %i.qo, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i386 ], [ %.0.i.i388.ph, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i386.preheader ] ; 2 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %.04.i.i387, i64 4
  %i.qn = load i32, ptr %.04.i.i387, align 4, !tbaa !25 ; 2 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %.0.i.i388, i64 4
  store i32 %i.qn, ptr %.0.i.i388, align 4, !tbaa !25
  %.not.i.i389 = icmp eq i32 %i.qn, 0
  br i1 %.not.i.i389, label %_ZN11CStringBaseIwEaSEPKw.exit, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i386, !llvm.loop !28

_ZN11CStringBaseIwEaSEPKw.exit:                   ; preds = %_ZN11CStringBaseIwE11SetCapacityEi.exit.i386
  store i32 %i.pz, ptr %i.j, align 8, !tbaa !21
  br label %bb.do

bb.dm:                                            ; preds = %bb.dk, %bb.dh
  %i.qp = landingpad { ptr, i32 }
          cleanup
  %i.qq = invoke noundef i32 @_ZN8NWindows4NCOM12CPropVariant5ClearEv(ptr noundef nonnull align 8 dereferenceable(16) %14)
          to label %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit unwind label %bb.dn ; 0 uses

bb.dn:                                            ; preds = %bb.dm
  %i.qr = landingpad { ptr, i32 }
          catch ptr null
  %i.qs = extractvalue { ptr, i32 } %i.qr, 0
  call void @__clang_call_terminate(ptr %i.qs) #18
  unreachable

_ZN8NWindows4NCOM12CPropVariantD2Ev.exit:         ; preds = %bb.dm
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  br label %.thread554

bb.do:                                            ; preds = %_ZN11CStringBaseIwEaSEPKw.exit, %bb.di
  %i.qt = invoke noundef i32 @_ZN8NWindows4NCOM12CPropVariant5ClearEv(ptr noundef nonnull align 8 dereferenceable(16) %14)
          to label %bb.dq unwind label %bb.dp     ; 0 uses

bb.dp:                                            ; preds = %bb.do
  %i.qu = landingpad { ptr, i32 }
          catch ptr null
  %i.qv = extractvalue { ptr, i32 } %i.qu, 0
  call void @__clang_call_terminate(ptr %i.qv) #18
  unreachable

bb.dq:                                            ; preds = %bb.do
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  %i.qw = load ptr, ptr %i.oi, align 8, !tbaa !14
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qw, i64 8
  %i.qy = load ptr, ptr %i.qx, align 8
  %i.qz = invoke noundef i32 %i.qy(ptr noundef nonnull align 8 dereferenceable(8) %i.oi)
          to label %.noexc396 unwind label %bb.cx, !inline_history !81 ; 0 uses

.noexc396:                                        ; preds = %bb.dq
  %i.ra = load ptr, ptr %0, align 8, !tbaa !17    ; 3 uses
  %.not6.i.i395 = icmp eq ptr %i.ra, null
  br i1 %.not6.i.i395, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %.noexc396
  %i.rb = load ptr, ptr %i.ra, align 8, !tbaa !14
  %i.rc = getelementptr inbounds nuw i8, ptr %i.rb, i64 16
  %i.rd = load ptr, ptr %i.rc, align 8
  %i.re = invoke noundef i32 %i.rd(ptr noundef nonnull align 8 dereferenceable(8) %i.ra)
          to label %bb.ds unwind label %bb.cx, !inline_history !81 ; 0 uses

bb.ds:                                            ; preds = %bb.dr, %.noexc396
  store ptr %i.oi, ptr %0, align 8, !tbaa !17
  %i.rf = load i32, ptr %i.ng, align 8, !tbaa !71
  %i.rg = load ptr, ptr %i.nh, align 8, !tbaa !52
  %i.rh = sext i32 %i.rf to i64
  %i.ri = getelementptr inbounds [8 x i8], ptr %i.rg, i64 %i.rh
  %i.rj = load ptr, ptr %i.ri, align 8, !tbaa !53 ; 2 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rj, i64 52 ; 2 uses
  %i.rl = load i32, ptr %i.rk, align 4, !tbaa !51 ; 2 uses
  %i.rm = icmp eq i32 %i.rl, 0
  br i1 %i.rm, label %bb.dt, label %bb.ei

bb.dt:                                            ; preds = %bb.ds
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #17
  %i.rn = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znam(i64 noundef 4) #19
          to label %.noexc403 unwind label %bb.eb ; 2 uses

.noexc403:                                        ; preds = %bb.dt
  store ptr %i.rn, ptr %16, align 8, !tbaa !24
  store i32 1, ptr %i.np, align 4, !tbaa !27
  store i32 0, ptr %i.rn, align 4, !tbaa !25
  store i32 0, ptr %i.nq, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #17
  %i.ro = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znam(i64 noundef 4) #19
          to label %.noexc410 unwind label %bb.ec ; 2 uses

.noexc410:                                        ; preds = %.noexc403
  store ptr %i.ro, ptr %17, align 8, !tbaa !24
  store i32 1, ptr %i.nr, align 4, !tbaa !27
  store i32 0, ptr %i.ro, align 4, !tbaa !25
  store i32 0, ptr %i.ns, align 8, !tbaa !21
  invoke void @_Z15GetDefaultName2RK11CStringBaseIwES2_S2_(ptr dead_on_unwind nonnull writable sret(%class.CStringBase) align 8 %15, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(16) %17)
          to label %bb.du unwind label %bb.ed

bb.du:                                            ; preds = %.noexc410
  store i32 0, ptr %i.nm, align 8, !tbaa !21
  %i.rp = load ptr, ptr %i.nl, align 8, !tbaa !24 ; 3 uses
  store i32 0, ptr %i.rp, align 4, !tbaa !25
  %i.rq = load i32, ptr %i.nt, align 8, !tbaa !21 ; 2 uses
  %i.rr = add nsw i32 %i.rq, 1                    ; 3 uses
  %i.rs = load i32, ptr %i.no, align 4, !tbaa !27 ; 2 uses
  %i.rt = icmp eq i32 %i.rr, %i.rs
  br i1 %i.rt, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i412, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.ru = zext nneg i32 %i.rr to i64
  %i.rv = icmp slt i32 %i.rq, -1
  %i.rw = shl nuw nsw i64 %i.ru, 2
  %i.rx = select i1 %i.rv, i64 -1, i64 %i.rw
  %i.ry = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.rx) #19
          to label %.noexc418 unwind label %bb.ee ; 3 uses

.noexc418:                                        ; preds = %bb.dv
  %i.rz = icmp sgt i32 %i.rs, 0
  br i1 %i.rz, label %._crit_edge.thread.i.i416, label %bb.dw

._crit_edge.thread.i.i416:                        ; preds = %.noexc418
  call void @_ZdaPv(ptr noundef nonnull %i.rp) #20
  %.pre.i417 = load i32, ptr %i.nm, align 8, !tbaa !21
  %i.sa = sext i32 %.pre.i417 to i64
  br label %bb.dw

bb.dw:                                            ; preds = %._crit_edge.thread.i.i416, %.noexc418
  %i.sb = phi i64 [ %i.sa, %._crit_edge.thread.i.i416 ], [ 0, %.noexc418 ]
  store ptr %i.ry, ptr %i.nl, align 8, !tbaa !24
  %i.sc = getelementptr inbounds [4 x i8], ptr %i.ry, i64 %i.sb
  store i32 0, ptr %i.sc, align 4, !tbaa !25
  store i32 %i.rr, ptr %i.no, align 4, !tbaa !27
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i412

_ZN11CStringBaseIwE11SetCapacityEi.exit.i412:     ; preds = %bb.dw, %bb.du
  %i.sd = phi ptr [ %i.rp, %bb.du ], [ %i.ry, %bb.dw ]
  %i.se = load ptr, ptr %15, align 8, !tbaa !24   ; 3 uses
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dx, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i412
  %.04.i.i413 = phi ptr [ %i.se, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i412 ], [ %i.sf, %bb.dx ] ; 2 uses
  %.0.i.i414 = phi ptr [ %i.sd, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i412 ], [ %i.sh, %bb.dx ] ; 2 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %.04.i.i413, i64 4
  %i.sg = load i32, ptr %.04.i.i413, align 4, !tbaa !25 ; 2 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %.0.i.i414, i64 4
  store i32 %i.sg, ptr %.0.i.i414, align 4, !tbaa !25
  %.not.i.i415 = icmp eq i32 %i.sg, 0
  br i1 %.not.i.i415, label %_ZN11CStringBaseIwEaSERKS0_.exit419, label %bb.dx, !llvm.loop !28

_ZN11CStringBaseIwEaSERKS0_.exit419:              ; preds = %bb.dx
  %19 = load i32, ptr %i.nt, align 8, !tbaa !21
  store i32 %19, ptr %i.nm, align 8, !tbaa !21
  %i.si = icmp eq ptr %i.se, null
  br i1 %i.si, label %_ZN11CStringBaseIwED2Ev.exit420, label %bb.dy

bb.dy:                                            ; preds = %_ZN11CStringBaseIwEaSERKS0_.exit419
  call void @_ZdaPv(ptr noundef nonnull %i.se) #20
  br label %_ZN11CStringBaseIwED2Ev.exit420

_ZN11CStringBaseIwED2Ev.exit420:                  ; preds = %_ZN11CStringBaseIwEaSERKS0_.exit419, %bb.dy
  %i.sj = load ptr, ptr %17, align 8, !tbaa !24   ; 2 uses
  %i.sk = icmp eq ptr %i.sj, null
  br i1 %i.sk, label %_ZN11CStringBaseIwED2Ev.exit421, label %bb.dz

bb.dz:                                            ; preds = %_ZN11CStringBaseIwED2Ev.exit420
  call void @_ZdaPv(ptr noundef nonnull %i.sj) #20
  br label %_ZN11CStringBaseIwED2Ev.exit421

_ZN11CStringBaseIwED2Ev.exit421:                  ; preds = %_ZN11CStringBaseIwED2Ev.exit420, %bb.dz
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #17
  %i.sl = load ptr, ptr %16, align 8, !tbaa !24   ; 2 uses
  %i.sm = icmp eq ptr %i.sl, null
  br i1 %i.sm, label %_ZN11CStringBaseIwED2Ev.exit422, label %bb.ea

bb.ea:                                            ; preds = %_ZN11CStringBaseIwED2Ev.exit421
  call void @_ZdaPv(ptr noundef nonnull %i.sl) #20
  br label %_ZN11CStringBaseIwED2Ev.exit422

_ZN11CStringBaseIwED2Ev.exit422:                  ; preds = %_ZN11CStringBaseIwED2Ev.exit421, %bb.ea
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  br label %.thread519

bb.eb:                                            ; preds = %bb.dt
  %i.sn = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIwED2Ev.exit425

bb.ec:                                            ; preds = %.noexc403
  %i.so = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIwED2Ev.exit424

bb.ed:                                            ; preds = %.noexc410
  %i.sp = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIwED2Ev.exit423

bb.ee:                                            ; preds = %bb.dv
  %i.sq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.sr = load ptr, ptr %15, align 8, !tbaa !24   ; 2 uses
  %i.ss = icmp eq ptr %i.sr, null
  br i1 %i.ss, label %_ZN11CStringBaseIwED2Ev.exit423, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  call void @_ZdaPv(ptr noundef nonnull %i.sr) #20
  br label %_ZN11CStringBaseIwED2Ev.exit423

_ZN11CStringBaseIwED2Ev.exit423:                  ; preds = %bb.ef, %bb.ee, %bb.ed
  %.pn308 = phi { ptr, i32 } [ %i.sp, %bb.ed ], [ %i.sq, %bb.ee ], [ %i.sq, %bb.ef ] ; 2 uses
  %i.st = load ptr, ptr %17, align 8, !tbaa !24   ; 2 uses
  %i.su = icmp eq ptr %i.st, null
  br i1 %i.su, label %_ZN11CStringBaseIwED2Ev.exit424, label %bb.eg

bb.eg:                                            ; preds = %_ZN11CStringBaseIwED2Ev.exit423
  call void @_ZdaPv(ptr noundef nonnull %i.st) #20
  br label %_ZN11CStringBaseIwED2Ev.exit424

_ZN11CStringBaseIwED2Ev.exit424:                  ; preds = %bb.eg, %_ZN11CStringBaseIwED2Ev.exit423, %bb.ec
  %.pn308.pn = phi { ptr, i32 } [ %i.so, %bb.ec ], [ %.pn308, %_ZN11CStringBaseIwED2Ev.exit423 ], [ %.pn308, %bb.eg ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #17
  %i.sv = load ptr, ptr %16, align 8, !tbaa !24   ; 2 uses
  %i.sw = icmp eq ptr %i.sv, null
  br i1 %i.sw, label %_ZN11CStringBaseIwED2Ev.exit425, label %bb.eh

bb.eh:                                            ; preds = %_ZN11CStringBaseIwED2Ev.exit424
  call void @_ZdaPv(ptr noundef nonnull %i.sv) #20
  br label %_ZN11CStringBaseIwED2Ev.exit425

_ZN11CStringBaseIwED2Ev.exit425:                  ; preds = %bb.eh, %_ZN11CStringBaseIwED2Ev.exit424, %bb.eb
  %.pn308.pn.pn = phi { ptr, i32 } [ %i.sn, %bb.eb ], [ %.pn308.pn, %_ZN11CStringBaseIwED2Ev.exit424 ], [ %.pn308.pn, %bb.eh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  br label %.thread554

bb.ei:                                            ; preds = %bb.ds
  %i.sx = getelementptr inbounds nuw i8, ptr %i.rj, i64 56 ; 2 uses
  %i.sy = icmp sgt i32 %i.rl, 0
  br i1 %i.sy, label %.lr.ph.i426, label %_ZNK10CArcInfoEx13FindExtensionERK11CStringBaseIwE.exit431

.lr.ph.i426:                                      ; preds = %bb.ei, %bb.ej
  %indvars.iv.i427 = phi i64 [ %indvars.iv.next.i428, %bb.ej ], [ 0, %bb.ei ] ; 3 uses
  %i.sz = load ptr, ptr %i.sx, align 8, !tbaa !52
  %i.ta = getelementptr inbounds nuw [8 x i8], ptr %i.sz, i64 %indvars.iv.i427
  %i.tb = load ptr, ptr %i.ta, align 8, !tbaa !53
  %i.tc = load ptr, ptr %i.tb, align 8, !tbaa !24
  %i.td = invoke noundef i32 @_Z21MyStringCompareNoCasePKwS0_(ptr noundef %.sroa.0470.0, ptr noundef %i.tc)
          to label %.noexc430 unwind label %bb.ek

.noexc430:                                        ; preds = %.lr.ph.i426
  %i.te = icmp eq i32 %i.td, 0
  br i1 %i.te, label %._crit_edge.loopexit.split.loop.exit14.i429, label %bb.ej

bb.ej:                                            ; preds = %.noexc430
  %indvars.iv.next.i428 = add nuw nsw i64 %indvars.iv.i427, 1 ; 2 uses
  %i.tf = load i32, ptr %i.rk, align 4, !tbaa !51
  %i.tg = sext i32 %i.tf to i64
  %i.th = icmp slt i64 %indvars.iv.next.i428, %i.tg
  br i1 %i.th, label %.lr.ph.i426, label %_ZNK10CArcInfoEx13FindExtensionERK11CStringBaseIwE.exit431, !llvm.loop !54

._crit_edge.loopexit.split.loop.exit14.i429:      ; preds = %.noexc430
  %i.ti = and i64 %indvars.iv.i427, 4294967295
  br label %_ZNK10CArcInfoEx13FindExtensionERK11CStringBaseIwE.exit431

_ZNK10CArcInfoEx13FindExtensionERK11CStringBaseIwE.exit431: ; preds = %bb.ej, %._crit_edge.loopexit.split.loop.exit14.i429, %bb.ei
  %spec.store.select = phi i64 [ 0, %bb.ei ], [ %i.ti, %._crit_edge.loopexit.split.loop.exit14.i429 ], [ 0, %bb.ej ]
  %i.tj = load ptr, ptr %i.sx, align 8, !tbaa !52
  %i.tk = getelementptr inbounds nuw [8 x i8], ptr %i.tj, i64 %spec.store.select
  %i.tl = load ptr, ptr %i.tk, align 8, !tbaa !53 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #17
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tl, i64 16
  invoke void @_Z15GetDefaultName2RK11CStringBaseIwES2_S2_(ptr dead_on_unwind nonnull writable sret(%class.CStringBase) align 8 %18, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %i.tl, ptr noundef nonnull align 8 dereferenceable(16) %i.tm)
          to label %bb.el unwind label %bb.eq

bb.ek:                                            ; preds = %.lr.ph.i426
  %i.tn = landingpad { ptr, i32 }
          cleanup
  br label %.thread554

bb.el:                                            ; preds = %_ZNK10CArcInfoEx13FindExtensionERK11CStringBaseIwE.exit431
  store i32 0, ptr %i.nm, align 8, !tbaa !21
  %i.to = load ptr, ptr %i.nl, align 8, !tbaa !24 ; 3 uses
  store i32 0, ptr %i.to, align 4, !tbaa !25
  %i.tp = load i32, ptr %i.nn, align 8, !tbaa !21 ; 2 uses
  %i.tq = add nsw i32 %i.tp, 1                    ; 3 uses
  %i.tr = load i32, ptr %i.no, align 4, !tbaa !27 ; 2 uses
  %i.ts = icmp eq i32 %i.tq, %i.tr
  br i1 %i.ts, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i432, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.tt = zext nneg i32 %i.tq to i64
  %i.tu = icmp slt i32 %i.tp, -1
  %i.tv = shl nuw nsw i64 %i.tt, 2
  %i.tw = select i1 %i.tu, i64 -1, i64 %i.tv
  %i.tx = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.tw) #19
          to label %.noexc439 unwind label %bb.er ; 3 uses

.noexc439:                                        ; preds = %bb.em
  %i.ty = icmp sgt i32 %i.tr, 0
  br i1 %i.ty, label %._crit_edge.thread.i.i437, label %bb.en

._crit_edge.thread.i.i437:                        ; preds = %.noexc439
  call void @_ZdaPv(ptr noundef nonnull %i.to) #20
  %.pre.i438 = load i32, ptr %i.nm, align 8, !tbaa !21
  %i.tz = sext i32 %.pre.i438 to i64
  br label %bb.en

bb.en:                                            ; preds = %._crit_edge.thread.i.i437, %.noexc439
  %i.ua = phi i64 [ %i.tz, %._crit_edge.thread.i.i437 ], [ 0, %.noexc439 ]
  store ptr %i.tx, ptr %i.nl, align 8, !tbaa !24
  %i.ub = getelementptr inbounds [4 x i8], ptr %i.tx, i64 %i.ua
  store i32 0, ptr %i.ub, align 4, !tbaa !25
  store i32 %i.tq, ptr %i.no, align 4, !tbaa !27
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i432

_ZN11CStringBaseIwE11SetCapacityEi.exit.i432:     ; preds = %bb.en, %bb.el
  %i.uc = phi ptr [ %i.to, %bb.el ], [ %i.tx, %bb.en ]
  %i.ud = load ptr, ptr %18, align 8, !tbaa !24   ; 3 uses
  br label %bb.eo

bb.eo:                                            ; preds = %bb.eo, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i432
  %.04.i.i433 = phi ptr [ %i.ud, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i432 ], [ %i.ue, %bb.eo ] ; 2 uses
  %.0.i.i434 = phi ptr [ %i.uc, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i432 ], [ %i.ug, %bb.eo ] ; 2 uses
  %i.ue = getelementptr inbounds nuw i8, ptr %.04.i.i433, i64 4
  %i.uf = load i32, ptr %.04.i.i433, align 4, !tbaa !25 ; 2 uses
  %i.ug = getelementptr inbounds nuw i8, ptr %.0.i.i434, i64 4
  store i32 %i.uf, ptr %.0.i.i434, align 4, !tbaa !25
  %.not.i.i435 = icmp eq i32 %i.uf, 0
  br i1 %.not.i.i435, label %_ZN11CStringBaseIwEaSERKS0_.exit440, label %bb.eo, !llvm.loop !28

_ZN11CStringBaseIwEaSERKS0_.exit440:              ; preds = %bb.eo
  %20 = load i32, ptr %i.nn, align 8, !tbaa !21
  store i32 %20, ptr %i.nm, align 8, !tbaa !21
  %i.uh = icmp eq ptr %i.ud, null
  br i1 %i.uh, label %bb.et, label %bb.ep

bb.ep:                                            ; preds = %_ZN11CStringBaseIwEaSERKS0_.exit440
  call void @_ZdaPv(ptr noundef nonnull %i.ud) #20
  br label %bb.et

bb.eq:                                            ; preds = %_ZNK10CArcInfoEx13FindExtensionERK11CStringBaseIwE.exit431
  %i.ui = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIwED2Ev.exit442

bb.er:                                            ; preds = %bb.em
  %i.uj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.uk = load ptr, ptr %18, align 8, !tbaa !24   ; 2 uses
  %i.ul = icmp eq ptr %i.uk, null
  br i1 %i.ul, label %_ZN11CStringBaseIwED2Ev.exit442, label %bb.es

bb.es:                                            ; preds = %bb.er
  call void @_ZdaPv(ptr noundef nonnull %i.uk) #20
  br label %_ZN11CStringBaseIwED2Ev.exit442

_ZN11CStringBaseIwED2Ev.exit442:                  ; preds = %bb.es, %bb.er, %bb.eq
  %.pn305 = phi { ptr, i32 } [ %i.ui, %bb.eq ], [ %i.uj, %bb.er ], [ %i.uj, %bb.es ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #17
  br label %.thread554

bb.et:                                            ; preds = %bb.ep, %_ZN11CStringBaseIwEaSERKS0_.exit440
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #17
  br label %.thread519

.thread519.fold.split:                            ; preds = %bb.dg
  br label %.thread519

.thread519:                                       ; preds = %bb.dg, %.thread519.fold.split, %bb.et, %_ZN11CStringBaseIwED2Ev.exit422, %_ZN9CMyComPtrI15IArchiveOpenSeqED2Ev.exit384
  %.19527 = phi i32 [ 0, %bb.et ], [ 0, %_ZN11CStringBaseIwED2Ev.exit422 ], [ %.11626, %bb.dg ], [ -2147467263, %_ZN9CMyComPtrI15IArchiveOpenSeqED2Ev.exit384 ], [ %.2219, %.thread519.fold.split ] ; 2 uses
  %.16240523 = phi i1 [ false, %bb.et ], [ false, %_ZN11CStringBaseIwED2Ev.exit422 ], [ true, %bb.dg ], [ false, %_ZN9CMyComPtrI15IArchiveOpenSeqED2Ev.exit384 ], [ false, %.thread519.fold.split ]
  %i.um = load ptr, ptr %i.oi, align 8, !tbaa !14
  %i.un = getelementptr inbounds nuw i8, ptr %i.um, i64 16
  %i.uo = load ptr, ptr %i.un, align 8
  %i.up = invoke noundef i32 %i.uo(ptr noundef nonnull align 8 dereferenceable(8) %i.oi)
          to label %_ZN9CMyComPtrI10IInArchiveED2Ev.exit unwind label %bb.eu ; 0 uses

bb.eu:                                            ; preds = %.thread519
  %i.uq = landingpad { ptr, i32 }
          catch ptr null
  %i.ur = extractvalue { ptr, i32 } %i.uq, 0
  call void @__clang_call_terminate(ptr %i.ur) #18
  unreachable

_ZN9CMyComPtrI10IInArchiveED2Ev.exit:             ; preds = %.thread519
  br i1 %.16240523, label %_ZN9CMyComPtrI10IInArchiveED2Ev.exit.thread, label %_ZN11CStringBaseIwED2Ev.exit446.a

.thread554:                                       ; preds = %_ZN11CStringBaseIwED2Ev.exit442, %bb.ek, %_ZN9CMyComPtrI15IArchiveOpenSeqED2Ev.exit, %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit, %bb.cx, %_ZN11CStringBaseIwED2Ev.exit425
  %.pn308.pn.pn.pn.pn.pn548 = phi { ptr, i32 } [ %i.oy, %_ZN9CMyComPtrI15IArchiveOpenSeqED2Ev.exit ], [ %i.os, %bb.cx ], [ %.pn308.pn.pn, %_ZN11CStringBaseIwED2Ev.exit425 ], [ %i.qp, %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit ], [ %.pn305, %_ZN11CStringBaseIwED2Ev.exit442 ], [ %i.tn, %bb.ek ]
  %i.us = load ptr, ptr %i.oi, align 8, !tbaa !14
  %i.ut = getelementptr inbounds nuw i8, ptr %i.us, i64 16
  %i.uu = load ptr, ptr %i.ut, align 8
  %i.uv = invoke noundef i32 %i.uu(ptr noundef nonnull align 8 dereferenceable(8) %i.oi)
          to label %_ZN7CBufferIhED2Ev.exit360 unwind label %bb.ev ; 0 uses

bb.ev:                                            ; preds = %.thread554
  %i.uw = landingpad { ptr, i32 }
          catch ptr null
  %i.ux = extractvalue { ptr, i32 } %i.uw, 0
  call void @__clang_call_terminate(ptr %i.ux) #18
  unreachable

_ZN9CMyComPtrI10IInArchiveED2Ev.exit.thread:      ; preds = %.noexc378, %_ZN9CMyComPtrI10IInArchiveED2Ev.exit
  %.19528536 = phi i32 [ %.19527, %_ZN9CMyComPtrI10IInArchiveED2Ev.exit ], [ %.11626, %.noexc378 ]
  %indvars.iv.next670 = add nuw nsw i64 %indvars.iv669, 1 ; 2 uses
  %i.uy = load i32, ptr %i.nd, align 4, !tbaa !51
  %i.uz = sext i32 %i.uy to i64
  %.not319 = icmp slt i64 %indvars.iv.next670, %i.uz
  br i1 %.not319, label %bb.cq, label %_ZN11CStringBaseIwED2Ev.exit446.a, !llvm.loop !82

_ZN11CStringBaseIwED2Ev.exit446.a:                ; preds = %_ZN9CMyComPtrI10IInArchiveED2Ev.exit.thread, %bb.cs, %_ZN9CMyComPtrI10IInArchiveED2Ev.exit, %._crit_edge.thread, %._crit_edge621.thread, %_ZN7CBufferIhED2Ev.exit359.thread, %_ZN7CBufferIhED2Ev.exit359, %_ZN7CBufferIhED2Ev.exit339, %bb.u
  %.21 = phi i32 [ -2147467263, %bb.u ], [ %i.jh, %_ZN7CBufferIhED2Ev.exit359.thread ], [ %i.jj, %_ZN7CBufferIhED2Ev.exit359 ], [ %.4, %_ZN7CBufferIhED2Ev.exit339 ], [ 1, %._crit_edge621.thread ], [ -2147467263, %._crit_edge.thread ], [ %i.nx, %bb.cs ], [ %.19527, %_ZN9CMyComPtrI10IInArchiveED2Ev.exit ], [ 1, %_ZN9CMyComPtrI10IInArchiveED2Ev.exit.thread ]
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %8) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0470.0) #20
  %i.va = load ptr, ptr %6, align 8, !tbaa !24    ; 2 uses
  %i.vb = icmp eq ptr %i.va, null
  br i1 %i.vb, label %_ZN11CStringBaseIwED2Ev.exit447.a, label %bb.ew

bb.ew:                                            ; preds = %_ZN11CStringBaseIwED2Ev.exit446.a
  call void @_ZdaPv(ptr noundef nonnull %i.va) #20
  br label %_ZN11CStringBaseIwED2Ev.exit447.a

_ZN11CStringBaseIwED2Ev.exit447.a:                ; preds = %_ZN11CStringBaseIwED2Ev.exit446.a, %bb.ew
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  ret i32 %.21

_ZN7CBufferIhED2Ev.exit360:                       ; preds = %.loopexit571, %.loopexit.split-lp572.loopexit.split-lp, %.loopexit.split-lp572.loopexit, %.thread554, %.thread550, %bb.cc, %bb.cb, %bb.ct, %_ZN7CBufferIhED2Ev.exit341, %_ZN11CStringBaseIwED2Ev.exit376, %_ZN11CStringBaseIwED2Ev.exit375, %bb.q
  %.pn308.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn293, %_ZN11CStringBaseIwED2Ev.exit375 ], [ %i.bo, %bb.q ], [ %.pn308.pn.pn.pn.pn.pn548, %.thread554 ], [ %i.ny, %bb.ct ], [ %.pn288.pn.pn.pn491, %_ZN7CBufferIhED2Ev.exit341 ], [ %.pn295, %_ZN11CStringBaseIwED2Ev.exit376 ], [ %.pn276.pn.pn.ph, %bb.cc ], [ %i.kz, %bb.cb ], [ %i.on, %.thread550 ], [ %lpad.loopexit573, %.loopexit571 ], [ %lpad.loopexit577, %.loopexit.split-lp572.loopexit ], [ %lpad.loopexit.split-lp578, %.loopexit.split-lp572.loopexit.split-lp ]
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %8) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  br label %bb.ex

bb.ex:                                            ; preds = %_ZN7CBufferIhED2Ev.exit360, %_ZN11CStringBaseIwED2Ev.exit324
  %.sroa.0470.1.ph = phi ptr [ %i.m, %_ZN11CStringBaseIwED2Ev.exit324 ], [ %.sroa.0470.0, %_ZN7CBufferIhED2Ev.exit360 ]
  %.pn308.pn.pn.pn.pn.pn.pn.pn.pn.ph = phi { ptr, i32 } [ %.pn, %_ZN11CStringBaseIwED2Ev.exit324 ], [ %.pn308.pn.pn.pn.pn.pn.pn.pn, %_ZN7CBufferIhED2Ev.exit360 ]
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0470.1.ph) #20
  br label %_ZN11CStringBaseIwED2Ev.exit448.a

_ZN11CStringBaseIwED2Ev.exit448.a:                ; preds = %bb.ex, %bb.l
  %.pn308.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.as, %bb.l ], [ %.pn308.pn.pn.pn.pn.pn.pn.pn.pn.ph, %bb.ex ]
  %i.vc = load ptr, ptr %6, align 8, !tbaa !24    ; 2 uses
  %i.vd = icmp eq ptr %i.vc, null
  br i1 %i.vd, label %_ZN11CStringBaseIwED2Ev.exit449, label %bb.ey

bb.ey:                                            ; preds = %_ZN11CStringBaseIwED2Ev.exit448.a
  call void @_ZdaPv(ptr noundef nonnull %i.vc) #20
  br label %_ZN11CStringBaseIwED2Ev.exit449

_ZN11CStringBaseIwED2Ev.exit449:                  ; preds = %_ZN11CStringBaseIwED2Ev.exit448.a, %bb.ey
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  resume { ptr, i32 } %.pn308.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

declare void @_Z23ExtractFileNameFromPathRK11CStringBaseIwE(ptr dead_on_unwind writable sret(%class.CStringBase) align 8, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare void @_ZN17CBaseRecordVector10DeleteFromEi(ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7CBufferIhE11SetCapacityEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !60   ; 3 uses
  %i.c = icmp eq i64 %1, %i.b
  br i1 %i.c, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %1) #19 ; 3 uses
  %.not10 = icmp eq i64 %i.b, 0
  br i1 %.not10, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !57
  %i.g = tail call noundef i64 @llvm.umin.i64(i64 %i.b, i64 %1)
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.d, ptr align 1 %i.f, i64 %i.g, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d
  %.0 = phi ptr [ %i.d, %bb.d ], [ %i.d, %bb.c ], [ null, %bb.b ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !57   ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdaPv(ptr noundef nonnull %i.i) #20
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  store ptr %.0, ptr %i.h, align 8, !tbaa !57
  store i64 %1, ptr %i.a, align 8, !tbaa !60
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.g
  ret void
}

declare noundef i32 @_Z10ReadStreamP19ISequentialInStreamPvPm(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZN13CRecordVectorIiEaSERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !51   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !51
  %i.e = add nsw i32 %i.d, %i.b
  tail call void @_ZN17CBaseRecordVector7ReserveEi(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %i.e)
  %i.f = icmp sgt i32 %i.b, 0
  br i1 %i.f, label %.lr.ph.i, label %_ZN13CRecordVectorIiEpLERKS0_.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %wide.trip.count.i = zext nneg i32 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.b ] ; 2 uses
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !52
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !4
  tail call void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !52
  %i.m = load i32, ptr %i.c, align 4, !tbaa !51
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.n
  store i32 %i.k, ptr %i.o, align 4, !tbaa !4
  %i.p = load i32, ptr %i.c, align 4, !tbaa !51
end_hunk_1
begin_hunk_2_@_ZN4CArc16OpenStreamOrFileEP7CCodecsibP9IInStreamP20IArchiveOpenCallback:bb.a
  store i8 0, ptr %i.k, align 1, !tbaa !16
  store i32 4, ptr %i.l, align 4, !tbaa !91
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8NWindows5NFile3NIO7CInFileE, i64 16), ptr %i.h, align 8, !tbaa !14
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  store i8 1, ptr %i.m, align 4, !tbaa !92
  %i.n = load ptr, ptr getelementptr inbounds nuw inrange(-24, 56) (i8, ptr @_ZTV13CInFileStream, i64 24), align 8
  %i.o = invoke noundef i32 %i.n(ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %_ZN9CMyComPtrI9IInStreamEaSEPS0_.exit unwind label %bb.h, !inline_history !99 ; 0 uses

_ZN9CMyComPtrI9IInStreamEaSEPS0_.exit:            ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !24
  %i.r = invoke noundef zeroext i1 @_ZN13CInFileStream4OpenEPKw(ptr noundef nonnull align 8 dereferenceable(1112) %i.e, ptr noundef %i.q)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %_ZN9CMyComPtrI9IInStreamEaSEPS0_.exit
  br i1 %i.r, label %_ZN9CMyComPtrI19ISequentialInStreamEaSEPS0_.exit, label %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit.thread

bb.h:                                             ; preds = %bb.f, %_ZN9CMyComPtrI9IInStreamEaSEPS0_.exit, %bb.d
  %.sroa.037.1 = phi ptr [ %i.e, %_ZN9CMyComPtrI9IInStreamEaSEPS0_.exit ], [ null, %bb.d ], [ null, %bb.f ]
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit31

_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit31.thread81: ; preds = %bb.e
  %i.t = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef 1112) #20
  br label %_ZN9CMyComPtrI9IInStreamED2Ev.exit33

_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit.thread: ; preds = %bb.g
  %i.u = tail call ptr @__errno_location() #21
  %i.v = load i32, ptr %i.u, align 4, !tbaa !4
  br label %bb.l

_ZN9CMyComPtrI19ISequentialInStreamEaSEPS0_.exit: ; preds = %bb.b, %bb.g, %bb.c
  %.sroa.037.2 = phi ptr [ null, %bb.c ], [ null, %bb.b ], [ %i.e, %bb.g ] ; 4 uses
  %.sroa.0.1 = phi ptr [ null, %bb.c ], [ %i.a, %bb.b ], [ null, %bb.g ] ; 7 uses
  %.118 = phi ptr [ %4, %bb.c ], [ %4, %bb.b ], [ %i.e, %bb.g ]
  %i.w = invoke noundef i32 @_ZN4CArc10OpenStreamEP7CCodecsiP9IInStreamP19ISequentialInStreamP20IArchiveOpenCallback(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, i32 noundef %2, ptr noundef %.118, ptr noundef %.sroa.0.1, ptr noundef %5)
          to label %bb.i unwind label %bb.n       ; 2 uses

bb.i:                                             ; preds = %_ZN9CMyComPtrI19ISequentialInStreamEaSEPS0_.exit
  %.not.i = icmp eq ptr %.sroa.0.1, null
  br i1 %.not.i, label %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = load ptr, ptr %.sroa.0.1, align 8, !tbaa !14
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = invoke noundef i32 %i.z(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0.1)
          to label %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit unwind label %bb.k ; 0 uses

bb.k:                                             ; preds = %bb.j
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  tail call void @__clang_call_terminate(ptr %i.ac) #18
  unreachable

_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit:    ; preds = %bb.i, %bb.j
  %.not.i29 = icmp eq ptr %.sroa.037.2, null
  br i1 %.not.i29, label %_ZN9CMyComPtrI9IInStreamED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit.thread, %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit
  %.sroa.037.34855 = phi ptr [ %i.e, %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit.thread ], [ %.sroa.037.2, %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit ] ; 2 uses
  %.14953 = phi i32 [ %i.v, %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit.thread ], [ %i.w, %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit ]
  %i.ad = load ptr, ptr %.sroa.037.34855, align 8, !tbaa !14
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = invoke noundef i32 %i.af(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.037.34855)
          to label %_ZN9CMyComPtrI9IInStreamED2Ev.exit unwind label %bb.m ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  tail call void @__clang_call_terminate(ptr %i.ai) #18
  unreachable

_ZN9CMyComPtrI9IInStreamED2Ev.exit:               ; preds = %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit, %bb.l
  %.14954 = phi i32 [ %i.w, %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit ], [ %.14953, %bb.l ]
  ret i32 %.14954

bb.n:                                             ; preds = %_ZN9CMyComPtrI19ISequentialInStreamEaSEPS0_.exit
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i30 = icmp eq ptr %.sroa.0.1, null
  br i1 %.not.i30, label %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit31, label %.thread63

.thread63:                                        ; preds = %bb.n
  %i.aj = load ptr, ptr %.sroa.0.1, align 8, !tbaa !14
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = invoke noundef i32 %i.al(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0.1)
          to label %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit31 unwind label %bb.o ; 0 uses

bb.o:                                             ; preds = %.thread63
  %i.an = landingpad { ptr, i32 }
          catch ptr null
  %i.ao = extractvalue { ptr, i32 } %i.an, 0
  tail call void @__clang_call_terminate(ptr %i.ao) #18
  unreachable

_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit31:  ; preds = %bb.h, %bb.n, %.thread63
  %.pn2262 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %.thread63 ], [ %lpad.thr_comm.split-lp, %bb.n ], [ %i.s, %bb.h ] ; 2 uses
  %.sroa.037.461 = phi ptr [ %.sroa.037.2, %.thread63 ], [ %.sroa.037.2, %bb.n ], [ %.sroa.037.1, %bb.h ] ; 3 uses
  %.not.i32 = icmp eq ptr %.sroa.037.461, null
  br i1 %.not.i32, label %_ZN9CMyComPtrI9IInStreamED2Ev.exit33, label %bb.p

bb.p:                                             ; preds = %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit31
  %i.ap = load ptr, ptr %.sroa.037.461, align 8, !tbaa !14
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = invoke noundef i32 %i.ar(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.037.461)
          to label %_ZN9CMyComPtrI9IInStreamED2Ev.exit33 unwind label %bb.q ; 0 uses

bb.q:                                             ; preds = %bb.p
  %i.at = landingpad { ptr, i32 }
          catch ptr null
  %i.au = extractvalue { ptr, i32 } %i.at, 0
  tail call void @__clang_call_terminate(ptr %i.au) #18
  unreachable

_ZN9CMyComPtrI9IInStreamED2Ev.exit33:             ; preds = %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit31.thread81, %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit31, %bb.p
  %.pn226280 = phi { ptr, i32 } [ %i.t, %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit31.thread81 ], [ %.pn2262, %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit31 ], [ %.pn2262, %bb.p ]
  resume { ptr, i32 } %.pn226280
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #5

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #6

declare noundef zeroext i1 @_ZN13CInFileStream4OpenEPKw(ptr noundef nonnull align 8 dereferenceable(1112), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN12CArchiveLink5CloseEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(73) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !51   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = icmp sgt i32 %i.b, 0
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = zext nneg i32 %i.b to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.f = trunc nuw i64 %i.h to i32
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %._crit_edge, !llvm.loop !100

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv16 = phi i64 [ %i.e, %.lr.ph ], [ %i.h, %bb.b ]
  %i.h = add nsw i64 %indvars.iv16, -1            ; 3 uses
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !52
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.h
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !53
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !17   ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !14
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call noundef i32 %i.o(ptr noundef nonnull align 8 dereferenceable(8) %i.l) ; 2 uses
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %bb.b, label %.loopexit, !llvm.loop !100

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 0, ptr %i.q, align 8, !tbaa !101
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %._crit_edge
  %.3 = phi i32 [ 0, %._crit_edge ], [ %i.p, %bb.c ]
  ret i32 %.3
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN12CArchiveLink7ReleaseEv(ptr noundef nonnull align 8 dereferenceable(73) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !51
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  tail call void @_ZN17CBaseRecordVector10DeleteBackEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
  %i.d = load i32, ptr %i.a, align 4, !tbaa !51
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %._crit_edge, label %.lr.ph, !llvm.loop !106

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

declare void @_ZN17CBaseRecordVector10DeleteBackEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN12CArchiveLink4OpenEP7CCodecsRK13CRecordVectorIiEbP9IInStreamRK11CStringBaseIwEP20IArchiveOpenCallback(ptr noundef nonnull align 8 dereferenceable(73) %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, i1 noundef zeroext %3, ptr noundef %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %5, ptr noundef %6) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %struct.CArc, align 8               ; 14 uses
  %8 = alloca %"class.NWindows::NCOM::CPropVariant", align 8 ; 10 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %9 = alloca %class.CMyComPtr.8, align 8         ; 8 uses
  %10 = alloca %class.CMyComPtr.4, align 8        ; 8 uses
  %11 = alloca %class.CMyComPtr.3, align 8        ; 9 uses
  %12 = alloca %struct.CArc, align 8              ; 12 uses
  %13 = alloca %class.CMyComPtr.9, align 8        ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 6 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !51
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_ZN12CArchiveLink7ReleaseEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  tail call void @_ZN17CBaseRecordVector10DeleteBackEv(ptr noundef nonnull align 8 dereferenceable(73) %0)
  %i.e = load i32, ptr %i.b, align 4, !tbaa !51
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_ZN12CArchiveLink7ReleaseEv.exit, label %.lr.ph.i, !llvm.loop !106

_ZN12CArchiveLink7ReleaseEv.exit:                 ; preds = %.lr.ph.i, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !51   ; 2 uses
  %i.i = icmp sgt i32 %i.h, 31
  br i1 %i.i, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %_ZN12CArchiveLink7ReleaseEv.exit
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 2
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %12, i64 44
  %i.p = getelementptr inbounds nuw i8, ptr %12, i64 48
  %i.q = getelementptr inbounds nuw i8, ptr %12, i64 56
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 20 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 44
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 24
  br label %bb.b

thread-pre-split:                                 ; preds = %bb.bv, %bb.bv
  %.pr = load i32, ptr %i.g, align 4, !tbaa !51
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %thread-pre-split
  %i.y = phi i32 [ %.pr, %thread-pre-split ], [ %i.h, %.preheader ] ; 3 uses
  %.097 = phi i32 [ %.299, %thread-pre-split ], [ undef, %.preheader ] ; 3 uses
  %.0 = phi i32 [ %.14, %thread-pre-split ], [ undef, %.preheader ] ; 3 uses
  %i.z = icmp sgt i32 %i.y, 0
  %i.aa = load i32, ptr %i.b, align 4, !tbaa !51  ; 7 uses
  br i1 %i.z, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %.not = icmp slt i32 %i.aa, %i.y
  br i1 %.not, label %bb.d, label %.thread171

bb.d:                                             ; preds = %bb.c
  %i.ab = xor i32 %i.aa, -1
  %i.ac = add i32 %i.y, %i.ab
  %i.ad = load ptr, ptr %i.j, align 8, !tbaa !52
  %i.ae = sext i32 %i.ac to i64
  %i.af = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !4
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.ah = icmp sgt i32 %i.aa, 31
  br i1 %i.ah, label %.thread171, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.058 = phi i32 [ -1, %bb.e ], [ %i.ag, %bb.d ] ; 2 uses
  %i.ai = icmp eq i32 %i.aa, 0
  br i1 %i.ai, label %bb.g, label %bb.w

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  call void @_ZN4CArcC2Ev(ptr noundef nonnull align 8 dereferenceable(80) %7)
  store i32 0, ptr %i.s, align 8, !tbaa !21
  %i.aj = load ptr, ptr %i.r, align 8, !tbaa !24  ; 3 uses
  store i32 0, ptr %i.aj, align 4, !tbaa !25
  %i.ak = load i32, ptr %i.t, align 8, !tbaa !21  ; 2 uses
  %i.al = add nsw i32 %i.ak, 1                    ; 3 uses
  %i.am = load i32, ptr %i.u, align 4, !tbaa !27  ; 2 uses
  %i.an = icmp eq i32 %i.al, %i.am
  br i1 %i.an, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = zext nneg i32 %i.al to i64
  %i.ap = icmp slt i32 %i.ak, -1
  %i.aq = shl nuw nsw i64 %i.ao, 2
  %i.ar = select i1 %i.ap, i64 -1, i64 %i.aq
  %i.as = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ar) #19
          to label %.noexc unwind label %bb.l     ; 3 uses

.noexc:                                           ; preds = %bb.h
  %i.at = icmp sgt i32 %i.am, 0
  br i1 %i.at, label %._crit_edge.thread.i.i, label %bb.i

._crit_edge.thread.i.i:                           ; preds = %.noexc
  call void @_ZdaPv(ptr noundef nonnull %i.aj) #20
  %.pre.i = load i32, ptr %i.s, align 8, !tbaa !21
  %i.au = sext i32 %.pre.i to i64
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge.thread.i.i, %.noexc
  %i.av = phi i64 [ %i.au, %._crit_edge.thread.i.i ], [ 0, %.noexc ]
  store ptr %i.as, ptr %i.r, align 8, !tbaa !24
  %i.aw = getelementptr inbounds [4 x i8], ptr %i.as, i64 %i.av
  store i32 0, ptr %i.aw, align 4, !tbaa !25
  store i32 %i.al, ptr %i.u, align 4, !tbaa !27
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i

_ZN11CStringBaseIwE11SetCapacityEi.exit.i:        ; preds = %bb.i, %bb.g
  %i.ax = phi ptr [ %i.aj, %bb.g ], [ %i.as, %bb.i ]
  %i.ay = load ptr, ptr %5, align 8, !tbaa !24
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
  %.04.i.i = phi ptr [ %i.ay, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.az, %bb.j ] ; 2 uses
  %.0.i.i = phi ptr [ %i.ax, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.bb, %bb.j ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.04.i.i, i64 4
  %i.ba = load i32, ptr %.04.i.i, align 4, !tbaa !25 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  store i32 %i.ba, ptr %.0.i.i, align 4, !tbaa !25
  %.not.i.i = icmp eq i32 %i.ba, 0
  br i1 %.not.i.i, label %_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i, label %bb.j, !llvm.loop !28

_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i:            ; preds = %bb.j
  %i.bc = load i32, ptr %i.t, align 8, !tbaa !21
  store i32 %i.bc, ptr %i.s, align 8, !tbaa !21
  store i32 -1, ptr %i.v, align 4, !tbaa !107
  %14 = invoke noundef i32 @_ZN4CArc16OpenStreamOrFileEP7CCodecsibP9IInStreamP20IArchiveOpenCallback(ptr noundef nonnull align 8 dereferenceable(80) %7, ptr noundef %1, i32 noundef %.058, i1 noundef zeroext %3, ptr noundef %4, ptr noundef %6)
          to label %bb.k unwind label %bb.m       ; 2 uses

bb.k:                                             ; preds = %_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i
  %.not126 = icmp eq i32 %14, 0                   ; 2 uses
  %.0. = select i1 %.not126, i32 %.0, i32 %14
  br i1 %.not126, label %bb.n, label %bb.q

bb.l:                                             ; preds = %bb.o, %bb.n, %bb.h
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.m:                                             ; preds = %_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.n:                                             ; preds = %bb.k
  %i.bf = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #19
          to label %.noexc131 unwind label %bb.l  ; 3 uses

.noexc131:                                        ; preds = %bb.n
  invoke void @_ZN4CArcC2ERKS_(ptr noundef nonnull align 8 dereferenceable(80) %i.bf, ptr noundef nonnull align 8 dereferenceable(80) %7)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %.noexc131
  invoke void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %_ZN13CObjectVectorI4CArcE3AddERKS0_.exit unwind label %bb.l

bb.p:                                             ; preds = %.noexc131
  %i.bg = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.bf, i64 noundef 80) #20
  br label %.body

_ZN13CObjectVectorI4CArcE3AddERKS0_.exit:         ; preds = %bb.o
  %i.bh = load ptr, ptr %i.k, align 8, !tbaa !52
  %i.bi = load i32, ptr %i.b, align 4, !tbaa !51  ; 2 uses
  %i.bj = sext i32 %i.bi to i64
  %i.bk = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.bj
  store ptr %i.bf, ptr %i.bk, align 8, !tbaa !53
  %i.bl = add nsw i32 %i.bi, 1
  store i32 %i.bl, ptr %i.b, align 4, !tbaa !51
  br label %bb.q

bb.q:                                             ; preds = %_ZN13CObjectVectorI4CArcE3AddERKS0_.exit, %bb.k
  %.160 = phi i32 [ 1, %bb.k ], [ 3, %_ZN13CObjectVectorI4CArcE3AddERKS0_.exit ]
  %i.bm = load ptr, ptr %i.w, align 8, !tbaa !24  ; 2 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %_ZN11CStringBaseIwED2Ev.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_ZdaPv(ptr noundef nonnull %i.bm) #20
  br label %_ZN11CStringBaseIwED2Ev.exit.i

_ZN11CStringBaseIwED2Ev.exit.i:                   ; preds = %bb.r, %bb.q
  %i.bo = load ptr, ptr %i.x, align 8, !tbaa !24  ; 2 uses
  %i.bp = icmp eq ptr %i.bo, null
  br i1 %i.bp, label %_ZN11CStringBaseIwED2Ev.exit1.i, label %bb.s

bb.s:                                             ; preds = %_ZN11CStringBaseIwED2Ev.exit.i
  call void @_ZdaPv(ptr noundef nonnull %i.bo) #20
  br label %_ZN11CStringBaseIwED2Ev.exit1.i

_ZN11CStringBaseIwED2Ev.exit1.i:                  ; preds = %bb.s, %_ZN11CStringBaseIwED2Ev.exit.i
  %i.bq = load ptr, ptr %i.r, align 8, !tbaa !24  ; 2 uses
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %_ZN11CStringBaseIwED2Ev.exit2.i, label %bb.t

bb.t:                                             ; preds = %_ZN11CStringBaseIwED2Ev.exit1.i
  call void @_ZdaPv(ptr noundef nonnull %i.bq) #20
  br label %_ZN11CStringBaseIwED2Ev.exit2.i

_ZN11CStringBaseIwED2Ev.exit2.i:                  ; preds = %bb.t, %_ZN11CStringBaseIwED2Ev.exit1.i
  %i.bs = load ptr, ptr %7, align 8, !tbaa !17    ; 3 uses
  %.not.i.i133 = icmp eq ptr %i.bs, null
  br i1 %.not.i.i133, label %_ZN4CArcD2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZN11CStringBaseIwED2Ev.exit2.i
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !14
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = invoke noundef i32 %i.bv(ptr noundef nonnull align 8 dereferenceable(8) %i.bs)
          to label %_ZN4CArcD2Ev.exit unwind label %bb.v ; 0 uses

bb.v:                                             ; preds = %bb.u
  %i.bx = landingpad { ptr, i32 }
          catch ptr null
  %i.by = extractvalue { ptr, i32 } %i.bx, 0
  call void @__clang_call_terminate(ptr %i.by) #18
  unreachable

_ZN4CArcD2Ev.exit:                                ; preds = %_ZN11CStringBaseIwED2Ev.exit2.i, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %bb.bv

.body:                                            ; preds = %bb.l, %bb.p, %bb.m
  %.pn127 = phi { ptr, i32 } [ %i.be, %bb.m ], [ %i.bd, %bb.l ], [ %i.bg, %bb.p ]
  call void @_ZN4CArcD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %7) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %bb.ck

bb.w:                                             ; preds = %bb.f
  %i.bz = load ptr, ptr %i.k, align 8, !tbaa !52
  %i.ca = sext i32 %i.aa to i64
  %i.cb = getelementptr [8 x i8], ptr %i.bz, i64 %i.ca
  %i.cc = getelementptr i8, ptr %i.cb, i64 -8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !53 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  store i16 0, ptr %8, align 8, !tbaa !8
  store i16 0, ptr %i.l, align 2, !tbaa !11
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !17 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !14
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 80
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = invoke noundef i32 %i.ch(ptr noundef nonnull align 8 dereferenceable(8) %i.ce, i32 noundef 1, ptr noundef nonnull %8)
          to label %bb.x unwind label %bb.y       ; 2 uses

bb.x:                                             ; preds = %bb.w
  %.not106 = icmp eq i32 %i.ci, 0
  br i1 %.not106, label %bb.z, label %bb.ad

bb.y:                                             ; preds = %bb.w
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.z:                                             ; preds = %bb.x
  %i.ck = load i16, ptr %8, align 8, !tbaa !8
  %i.cl = icmp eq i16 %i.ck, 19
  br i1 %i.cl, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %bb.z
  %i.cm = load i32, ptr %i.m, align 8, !tbaa !16  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.cn = load ptr, ptr %i.cd, align 8, !tbaa !17 ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !14
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 56
  %i.cq = load ptr, ptr %i.cp, align 8
  %i.cr = invoke noundef i32 %i.cq(ptr noundef nonnull align 8 dereferenceable(8) %i.cn, ptr noundef nonnull %i.a)
          to label %bb.ab unwind label %bb.ac     ; 2 uses

bb.ab:                                            ; preds = %bb.aa
  %.not108 = icmp eq i32 %i.cr, 0                 ; 2 uses
  %.0.130. = select i1 %.not108, i32 %.0, i32 %i.cr
  %i.cs = load i32, ptr %i.a, align 4
  %.not109 = icmp ult i32 %i.cm, %i.cs
  %. = select i1 %.not109, i32 0, i32 2
  %.463 = select i1 %.not108, i32 %., i32 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %i.ct = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.ai

bb.ad:                                            ; preds = %bb.z, %bb.x, %bb.ab
  %.198 = phi i32 [ %i.cm, %bb.ab ], [ %.097, %bb.x ], [ %.097, %bb.z ] ; 6 uses
  %.564 = phi i32 [ %.463, %bb.ab ], [ 1, %bb.x ], [ 2, %bb.z ] ; 2 uses
  %.4 = phi i32 [ %.0.130., %bb.ab ], [ %i.ci, %bb.x ], [ %.0, %bb.z ] ; 9 uses
  %i.cu = invoke noundef i32 @_ZN8NWindows4NCOM12CPropVariant5ClearEv(ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit unwind label %bb.ae ; 0 uses

bb.ae:                                            ; preds = %bb.ad
  %i.cv = landingpad { ptr, i32 }
          catch ptr null
  %i.cw = extractvalue { ptr, i32 } %i.cv, 0
  call void @__clang_call_terminate(ptr %i.cw) #18
  unreachable

_ZN8NWindows4NCOM12CPropVariantD2Ev.exit:         ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  %cond1 = icmp eq i32 %.564, 0
  br i1 %cond1, label %bb.af, label %bb.bv

bb.af:                                            ; preds = %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  store ptr null, ptr %9, align 8, !tbaa !108
  %i.cx = load ptr, ptr %i.cd, align 8, !tbaa !17 ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !14
  %i.cz = load ptr, ptr %i.cy, align 8
  %i.da = invoke noundef i32 %i.cz(ptr noundef nonnull align 8 dereferenceable(8) %i.cx, ptr noundef nonnull align 4 dereferenceable(16) @IID_IInArchiveGetStream, ptr noundef nonnull %9)
          to label %bb.ag unwind label %bb.ak

bb.ag:                                            ; preds = %bb.af
  %.not110 = icmp eq i32 %i.da, 0
  br i1 %.not110, label %bb.ah, label %bb.bs

bb.ah:                                            ; preds = %bb.ag
  %i.db = load ptr, ptr %9, align 8, !tbaa !108   ; 3 uses
  %i.dc = icmp eq ptr %i.db, null
  br i1 %i.dc, label %_ZN9CMyComPtrI19IInArchiveGetStreamED2Ev.exit, label %bb.al

bb.ai:                                            ; preds = %bb.ac, %bb.y
  %.pn = phi { ptr, i32 } [ %i.ct, %bb.ac ], [ %i.cj, %bb.y ]
  %i.dd = invoke noundef i32 @_ZN8NWindows4NCOM12CPropVariant5ClearEv(ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit134 unwind label %bb.aj ; 0 uses

bb.aj:                                            ; preds = %bb.ai
  %i.de = landingpad { ptr, i32 }
          catch ptr null
  %i.df = extractvalue { ptr, i32 } %i.de, 0
  call void @__clang_call_terminate(ptr %i.df) #18
  unreachable

_ZN8NWindows4NCOM12CPropVariantD2Ev.exit134:      ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  br label %bb.ck

bb.ak:                                            ; preds = %bb.af
  %i.dg = landingpad { ptr, i32 }
end_hunk_2
begin_hunk_3_@_ZN12CArchiveLink4OpenEP7CCodecsRK13CRecordVectorIiEbP9IInStreamRK11CStringBaseIwEP20IArchiveOpenCallback:bb.a
  %.pn117.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn117.pn.pn.pn.pn.pn, %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit144 ], [ %i.dg, %bb.ak ]
  %i.gh = load ptr, ptr %9, align 8, !tbaa !108   ; 3 uses
  %.not.i145 = icmp eq ptr %i.gh, null
  br i1 %.not.i145, label %_ZN9CMyComPtrI19IInArchiveGetStreamED2Ev.exit146, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !14
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 16
  %i.gk = load ptr, ptr %i.gj, align 8
  %i.gl = invoke noundef i32 %i.gk(ptr noundef nonnull align 8 dereferenceable(8) %i.gh)
          to label %_ZN9CMyComPtrI19IInArchiveGetStreamED2Ev.exit146 unwind label %bb.cj ; 0 uses

bb.cj:                                            ; preds = %bb.ci
  %i.gm = landingpad { ptr, i32 }
          catch ptr null
  %i.gn = extractvalue { ptr, i32 } %i.gm, 0
  call void @__clang_call_terminate(ptr %i.gn) #18
  unreachable

_ZN9CMyComPtrI19IInArchiveGetStreamED2Ev.exit146: ; preds = %bb.ch, %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  br label %bb.ck

bb.ck:                                            ; preds = %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit134, %_ZN9CMyComPtrI19IInArchiveGetStreamED2Ev.exit146, %.body
  %.pn127.pn = phi { ptr, i32 } [ %.pn127, %.body ], [ %.pn117.pn.pn.pn.pn.pn.pn, %_ZN9CMyComPtrI19IInArchiveGetStreamED2Ev.exit146 ], [ %.pn, %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit134 ]
  resume { ptr, i32 } %.pn127.pn

.thread171:                                       ; preds = %bb.e, %bb.c, %..thread171_crit_edge
  %i.go = phi i32 [ %.pre, %..thread171_crit_edge ], [ %i.aa, %bb.c ], [ %i.aa, %bb.e ]
  %i.gp = icmp ne i32 %i.go, 0
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.gr = zext i1 %i.gp to i8
  store i8 %i.gr, ptr %i.gq, align 8, !tbaa !101
  br label %.loopexit

.loopexit:                                        ; preds = %bb.bv, %.thread171, %_ZN12CArchiveLink7ReleaseEv.exit
  %.16 = phi i32 [ -2147467263, %_ZN12CArchiveLink7ReleaseEv.exit ], [ 0, %.thread171 ], [ %.14, %bb.bv ]
  ret i32 %.16
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4CArcC2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.b = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #19 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  store ptr %i.b, ptr %i.a, align 8, !tbaa !24
  store i32 0, ptr %i.b, align 4, !tbaa !25
  store i32 4, ptr %i.c, align 4, !tbaa !27
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  %i.e = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #19
          to label %bb.b unwind label %.thread    ; 3 uses

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 36
  store ptr %i.e, ptr %i.d, align 8, !tbaa !24
  store i32 0, ptr %i.e, align 4, !tbaa !25
  store i32 4, ptr %i.f, align 4, !tbaa !27
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 0, ptr %i.g, align 8, !tbaa !42
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  %i.i = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #19
          to label %bb.c unwind label %bb.d       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 76
  store ptr %i.i, ptr %i.h, align 8, !tbaa !24
  store i32 0, ptr %i.i, align 4, !tbaa !25
  store i32 4, ptr %i.j, align 4, !tbaa !27
  ret void

.thread:                                          ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @_ZdaPv(ptr noundef nonnull %i.e) #20
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !24  ; 2 uses
  %i.m = icmp eq ptr %.pre, null
  br i1 %i.m, label %_ZN11CStringBaseIwED2Ev.exit8, label %bb.e

bb.e:                                             ; preds = %.thread, %bb.d
  %.pn11 = phi { ptr, i32 } [ %i.k, %.thread ], [ %i.l, %bb.d ]
  %i.n = phi ptr [ %i.b, %.thread ], [ %.pre, %bb.d ]
  tail call void @_ZdaPv(ptr noundef nonnull %i.n) #20
  br label %_ZN11CStringBaseIwED2Ev.exit8

_ZN11CStringBaseIwED2Ev.exit8:                    ; preds = %bb.e, %bb.d
  %.pn.pn.ph = phi { ptr, i32 } [ %.pn11, %bb.e ], [ %i.l, %bb.d ]
  %.pr = load ptr, ptr %0, align 8, !tbaa !17     ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZN9CMyComPtrI10IInArchiveED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN11CStringBaseIwED2Ev.exit8
  %i.o = load ptr, ptr %.pr, align 8, !tbaa !14
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = invoke noundef i32 %i.q(ptr noundef nonnull align 8 dereferenceable(8) %.pr)
          to label %_ZN9CMyComPtrI10IInArchiveED2Ev.exit unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  tail call void @__clang_call_terminate(ptr %i.t) #18
  unreachable

_ZN9CMyComPtrI10IInArchiveED2Ev.exit:             ; preds = %_ZN11CStringBaseIwED2Ev.exit8, %bb.f
  resume { ptr, i32 } %.pn.pn.ph
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN13CObjectVectorI4CArcE3AddERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #19 ; 3 uses
  invoke void @_ZN4CArcC2ERKS_(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef nonnull align 8 dereferenceable(80) %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !52
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !51   ; 3 uses
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.f
  store ptr %i.a, ptr %i.g, align 8, !tbaa !53
  %i.h = add nsw i32 %i.e, 1
  store i32 %i.h, ptr %i.d, align 4, !tbaa !51
  ret i32 %i.e

bb.c:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 80) #20
  resume { ptr, i32 } %i.i
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4CArcD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZN11CStringBaseIwED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.b) #20
  br label %_ZN11CStringBaseIwED2Ev.exit

_ZN11CStringBaseIwED2Ev.exit:                     ; preds = %bb.a, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !24   ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_ZN11CStringBaseIwED2Ev.exit1, label %bb.c

bb.c:                                             ; preds = %_ZN11CStringBaseIwED2Ev.exit
  tail call void @_ZdaPv(ptr noundef nonnull %i.e) #20
  br label %_ZN11CStringBaseIwED2Ev.exit1

_ZN11CStringBaseIwED2Ev.exit1:                    ; preds = %_ZN11CStringBaseIwED2Ev.exit, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !24   ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_ZN11CStringBaseIwED2Ev.exit2, label %bb.d

bb.d:                                             ; preds = %_ZN11CStringBaseIwED2Ev.exit1
  tail call void @_ZdaPv(ptr noundef nonnull %i.h) #20
  br label %_ZN11CStringBaseIwED2Ev.exit2

_ZN11CStringBaseIwED2Ev.exit2:                    ; preds = %_ZN11CStringBaseIwED2Ev.exit1, %bb.d
  %i.j = load ptr, ptr %0, align 8, !tbaa !17     ; 3 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %_ZN9CMyComPtrI10IInArchiveED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN11CStringBaseIwED2Ev.exit2
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !14
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = invoke noundef i32 %i.m(ptr noundef nonnull align 8 dereferenceable(8) %i.j)
          to label %_ZN9CMyComPtrI10IInArchiveED2Ev.exit unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  tail call void @__clang_call_terminate(ptr %i.p) #18
  unreachable

_ZN9CMyComPtrI10IInArchiveED2Ev.exit:             ; preds = %_ZN11CStringBaseIwED2Ev.exit2, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN12CArchiveLink5Open2EP7CCodecsRK13CRecordVectorIiEbP9IInStreamRK11CStringBaseIwEP15IOpenCallbackUI(ptr noundef nonnull align 8 dereferenceable(73) initializes((64, 72)) %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, i1 noundef zeroext %3, ptr noundef %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %5, ptr noundef %6) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %class.CStringBase, align 8         ; 12 uses
  %8 = alloca %class.CStringBase, align 8         ; 15 uses
  %9 = alloca %class.CStringBase, align 8         ; 14 uses
  %i.a = alloca i32, align 4                      ; 7 uses
  %10 = alloca %class.CStringBase, align 8        ; 7 uses
  %11 = alloca %class.CStringBase, align 8        ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store i64 0, ptr %i.b, align 8, !tbaa !122
  %i.c = tail call noalias noundef nonnull dereferenceable(192) ptr @_Znwm(i64 noundef 192) #19 ; 16 uses
  invoke void @_ZN16COpenCallbackImpC2Ev(ptr noundef nonnull align 8 dereferenceable(192) %i.c)
          to label %bb.b unwind label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !14
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef i32 %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.c), !inline_history !123 ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 168
  store ptr %6, ptr %i.h, align 8, !tbaa !124
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.i, align 8
  %i.j = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #19
          to label %bb.c unwind label %bb.i       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 12
  store ptr %i.j, ptr %7, align 8, !tbaa !24
  store i32 0, ptr %i.j, align 4, !tbaa !25
  store i32 4, ptr %i.k, align 4, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 0, ptr %i.m, align 8
  %i.n = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #19
          to label %bb.d unwind label %bb.j       ; 2 uses

bb.d:                                             ; preds = %bb.c
  store ptr %i.n, ptr %8, align 8, !tbaa !24
  store i32 0, ptr %i.n, align 4, !tbaa !25
  store i32 4, ptr %i.l, align 4, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  %i.o = getelementptr inbounds nuw i8, ptr %9, i64 12 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 0, ptr %i.p, align 8
  %i.q = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #19
          to label %bb.e unwind label %bb.k       ; 2 uses

bb.e:                                             ; preds = %bb.d
  store ptr %i.q, ptr %9, align 8, !tbaa !24
  store i32 0, ptr %i.q, align 4, !tbaa !25
  store i32 4, ptr %i.o, align 4, !tbaa !27
  %i.r = icmp ne ptr %4, null
  %or.cond = or i1 %3, %i.r
  br i1 %or.cond, label %bb.af, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.s = load ptr, ptr %5, align 8, !tbaa !24
  %i.t = invoke noundef zeroext i1 @_ZN8NWindows5NFile10NDirectory17MyGetFullPathNameEPKwR11CStringBaseIwERi(ptr noundef %i.s, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.g unwind label %bb.l

bb.g:                                             ; preds = %bb.f
  br i1 %i.t, label %bb.m, label %bb.x

bb.h:                                             ; preds = %bb.a
  %i.u = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 192) #20
  br label %_ZN9CMyComPtrI20IArchiveOpenCallbackED2Ev.exit115

bb.i:                                             ; preds = %bb.b
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

bb.j:                                             ; preds = %bb.c
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIwED2Ev.exit112

bb.k:                                             ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIwED2Ev.exit111

bb.l:                                             ; preds = %_ZN11CStringBaseIwED2Ev.exit72, %bb.f
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.m:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  %i.z = load i32, ptr %i.a, align 4, !tbaa !4
  invoke void @_ZNK11CStringBaseIwE3MidEii(ptr dead_on_unwind nonnull writable sret(%class.CStringBase) align 8 %10, ptr noundef nonnull align 8 dereferenceable(16) %7, i32 noundef 0, i32 noundef %i.z)
          to label %_ZNK11CStringBaseIwE4LeftEi.exit unwind label %bb.y

_ZNK11CStringBaseIwE4LeftEi.exit:                 ; preds = %bb.m
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  store i32 0, ptr %i.aa, align 8, !tbaa !21
  %i.ab = load ptr, ptr %8, align 8, !tbaa !24    ; 3 uses
  store i32 0, ptr %i.ab, align 4, !tbaa !25
  %i.ac = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !21 ; 2 uses
  %i.ae = add nsw i32 %i.ad, 1                    ; 3 uses
  %i.af = load i32, ptr %i.l, align 4, !tbaa !27  ; 2 uses
  %i.ag = icmp eq i32 %i.ae, %i.af
  br i1 %i.ag, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZNK11CStringBaseIwE4LeftEi.exit
  %i.ah = zext nneg i32 %i.ae to i64
  %i.ai = icmp slt i32 %i.ad, -1
  %i.aj = shl nuw nsw i64 %i.ah, 2
  %i.ak = select i1 %i.ai, i64 -1, i64 %i.aj
  %i.al = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ak) #19
          to label %.noexc unwind label %bb.z     ; 3 uses

.noexc:                                           ; preds = %bb.n
  %i.am = icmp sgt i32 %i.af, 0
  br i1 %i.am, label %._crit_edge.thread.i.i, label %bb.o

._crit_edge.thread.i.i:                           ; preds = %.noexc
  call void @_ZdaPv(ptr noundef nonnull %i.ab) #20
  %.pre.i = load i32, ptr %i.aa, align 8, !tbaa !21
  %i.an = sext i32 %.pre.i to i64
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge.thread.i.i, %.noexc
  %i.ao = phi i64 [ %i.an, %._crit_edge.thread.i.i ], [ 0, %.noexc ]
  store ptr %i.al, ptr %8, align 8, !tbaa !24
  %i.ap = getelementptr inbounds [4 x i8], ptr %i.al, i64 %i.ao
  store i32 0, ptr %i.ap, align 4, !tbaa !25
  store i32 %i.ae, ptr %i.l, align 4, !tbaa !27
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i

_ZN11CStringBaseIwE11SetCapacityEi.exit.i:        ; preds = %bb.o, %_ZNK11CStringBaseIwE4LeftEi.exit
  %i.aq = phi ptr [ %i.ab, %_ZNK11CStringBaseIwE4LeftEi.exit ], [ %i.al, %bb.o ]
  %i.ar = load ptr, ptr %10, align 8, !tbaa !24   ; 3 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
  %.04.i.i = phi ptr [ %i.ar, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.as, %bb.p ] ; 2 uses
  %.0.i.i = phi ptr [ %i.aq, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.au, %bb.p ] ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.04.i.i, i64 4
  %i.at = load i32, ptr %.04.i.i, align 4, !tbaa !25 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  store i32 %i.at, ptr %.0.i.i, align 4, !tbaa !25
  %.not.i.i = icmp eq i32 %i.at, 0
  br i1 %.not.i.i, label %bb.q, label %bb.p, !llvm.loop !28

bb.q:                                             ; preds = %bb.p
  %i.av = load i32, ptr %i.ac, align 8, !tbaa !21
  store i32 %i.av, ptr %i.aa, align 8, !tbaa !21
  %i.aw = icmp eq ptr %i.ar, null
  br i1 %i.aw, label %_ZN11CStringBaseIwED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_ZdaPv(ptr noundef nonnull %i.ar) #20
  br label %_ZN11CStringBaseIwED2Ev.exit

_ZN11CStringBaseIwED2Ev.exit:                     ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #17
  %i.ax = load i32, ptr %i.a, align 4, !tbaa !4   ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !21, !noalias !135
  %i.ba = sub nsw i32 %i.az, %i.ax
  invoke void @_ZNK11CStringBaseIwE3MidEii(ptr dead_on_unwind nonnull writable sret(%class.CStringBase) align 8 %11, ptr noundef nonnull align 8 dereferenceable(16) %7, i32 noundef %i.ax, i32 noundef %i.ba)
          to label %_ZNK11CStringBaseIwE3MidEi.exit unwind label %bb.ab

_ZNK11CStringBaseIwE3MidEi.exit:                  ; preds = %_ZN11CStringBaseIwED2Ev.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  store i32 0, ptr %i.bb, align 8, !tbaa !21
  %i.bc = load ptr, ptr %9, align 8, !tbaa !24    ; 3 uses
  store i32 0, ptr %i.bc, align 4, !tbaa !25
  %i.bd = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !21 ; 2 uses
  %i.bf = add nsw i32 %i.be, 1                    ; 3 uses
  %i.bg = load i32, ptr %i.o, align 4, !tbaa !27  ; 2 uses
  %i.bh = icmp eq i32 %i.bf, %i.bg
  br i1 %i.bh, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i64, label %bb.s

bb.s:                                             ; preds = %_ZNK11CStringBaseIwE3MidEi.exit
  %i.bi = zext nneg i32 %i.bf to i64
  %i.bj = icmp slt i32 %i.be, -1
  %i.bk = shl nuw nsw i64 %i.bi, 2
  %i.bl = select i1 %i.bj, i64 -1, i64 %i.bk
  %i.bm = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.bl) #19
          to label %.noexc70 unwind label %bb.ac  ; 3 uses

.noexc70:                                         ; preds = %bb.s
  %i.bn = icmp sgt i32 %i.bg, 0
  br i1 %i.bn, label %._crit_edge.thread.i.i68, label %bb.t

._crit_edge.thread.i.i68:                         ; preds = %.noexc70
  call void @_ZdaPv(ptr noundef nonnull %i.bc) #20
  %.pre.i69 = load i32, ptr %i.bb, align 8, !tbaa !21
  %i.bo = sext i32 %.pre.i69 to i64
  br label %bb.t
end_hunk_3
begin_hunk_4_@_ZN16COpenCallbackImp4InitERK11CStringBaseIwES3_:bb.a

bb.c:                                             ; preds = %bb.b
  %i.j = zext nneg i32 %i.f to i64
  %i.k = icmp slt i32 %i.e, -1
  %i.l = shl nuw nsw i64 %i.j, 2
  %i.m = select i1 %i.k, i64 -1, i64 %i.l
  %i.n = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.m) #19 ; 3 uses
  %i.o = icmp sgt i32 %i.h, 0
  br i1 %i.o, label %._crit_edge.thread.i.i, label %bb.d

._crit_edge.thread.i.i:                           ; preds = %bb.c
  tail call void @_ZdaPv(ptr noundef nonnull %i.c) #20
  %.pre.i = load i32, ptr %.phi.trans.insert, align 8, !tbaa !21
  %i.p = sext i32 %.pre.i to i64
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.thread.i.i, %bb.c
  %i.q = phi i64 [ %i.p, %._crit_edge.thread.i.i ], [ 0, %bb.c ]
  store ptr %i.n, ptr %i.a, align 8, !tbaa !24
  %i.r = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.q
  store i32 0, ptr %i.r, align 4, !tbaa !25
  store i32 %i.f, ptr %i.g, align 4, !tbaa !27
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i

_ZN11CStringBaseIwE11SetCapacityEi.exit.i:        ; preds = %bb.d, %bb.b
  %i.s = phi ptr [ %i.c, %bb.b ], [ %i.n, %bb.d ]
  %i.t = load ptr, ptr %1, align 8, !tbaa !24
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
  %.04.i.i = phi ptr [ %i.t, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.u, %bb.e ] ; 2 uses
  %.0.i.i = phi ptr [ %i.s, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.w, %bb.e ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.04.i.i, i64 4
  %i.v = load i32, ptr %.04.i.i, align 4, !tbaa !25 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  store i32 %i.v, ptr %.0.i.i, align 4, !tbaa !25
  %.not.i.i = icmp eq i32 %i.v, 0
  br i1 %.not.i.i, label %_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i, label %bb.e, !llvm.loop !28

_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i:            ; preds = %bb.e
  %i.x = load i32, ptr %i.d, align 8, !tbaa !21   ; 2 uses
  store i32 %i.x, ptr %.phi.trans.insert, align 8, !tbaa !21
  br label %_ZN11CStringBaseIwEaSERKS0_.exit

_ZN11CStringBaseIwEaSERKS0_.exit:                 ; preds = %._ZN11CStringBaseIwEaSERKS0_.exit_crit_edge, %_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i
  %i.y = phi i32 [ %.pre, %._ZN11CStringBaseIwEaSERKS0_.exit_crit_edge ], [ %i.x, %_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i ] ; 10 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aa = add nsw i32 %i.y, 1                     ; 4 uses
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZN11CStringBaseIwEaSERKS0_.exit
  %i.ac = zext nneg i32 %i.aa to i64
  %i.ad = icmp slt i32 %i.y, -1
  %i.ae = shl nuw nsw i64 %i.ac, 2
  %i.af = select i1 %i.ad, i64 -1, i64 %i.ae
  %i.ag = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.af) #19, !noalias !146 ; 2 uses
  store i32 0, ptr %i.ag, align 4, !tbaa !25, !noalias !146
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i

_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i:      ; preds = %bb.f, %_ZN11CStringBaseIwEaSERKS0_.exit
  %.sroa.0.0 = phi ptr [ null, %_ZN11CStringBaseIwEaSERKS0_.exit ], [ %i.ag, %bb.f ] ; 8 uses
  %i.ah = load ptr, ptr %i.a, align 8, !tbaa !24, !noalias !146
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i
  %.04.i.i.i = phi ptr [ %i.ah, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i ], [ %i.ai, %bb.g ] ; 2 uses
  %.0.i.i.i = phi ptr [ %.sroa.0.0, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i ], [ %i.ak, %bb.g ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.04.i.i.i, i64 4
  %i.aj = load i32, ptr %.04.i.i.i, align 4, !tbaa !25, !noalias !146 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 4
  store i32 %i.aj, ptr %.0.i.i.i, align 4, !tbaa !25, !noalias !146
  %.not.i.i.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i.i.i, label %_ZN11CStringBaseIwEC2ERKS0_.exit.i, label %bb.g, !llvm.loop !28

_ZN11CStringBaseIwEC2ERKS0_.exit.i:               ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.am = load i32, ptr %i.al, align 8, !tbaa !21 ; 2 uses
  %.not.i.i5 = icmp sgt i32 %i.am, 0
  br i1 %.not.i.i5, label %bb.h, label %_ZN11CStringBaseIwE10GrowLengthEi.exit.i

bb.h:                                             ; preds = %_ZN11CStringBaseIwEC2ERKS0_.exit.i
  %i.an = icmp sgt i32 %i.y, 63
  %i.ao = lshr i32 %i.aa, 1
  %i.ap = icmp sgt i32 %i.y, 7
  %..i.i = select i1 %i.ap, i32 16, i32 4
  %.0.i.i8 = select i1 %i.an, i32 %i.ao, i32 %..i.i
  %i.aq = tail call i32 @llvm.umax.i32(i32 %.0.i.i8, i32 %i.am)
  %i.ar = add nsw i32 %i.aq, %i.aa                ; 3 uses
  %i.as = icmp eq i32 %i.ar, %i.y
  br i1 %i.as, label %_ZN11CStringBaseIwE10GrowLengthEi.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.at = add nsw i32 %i.ar, 1
  %i.au = zext nneg i32 %i.at to i64
  %i.av = icmp slt i32 %i.ar, -1
  %i.aw = shl nuw nsw i64 %i.au, 2
  %i.ax = select i1 %i.av, i64 -1, i64 %i.aw
  %i.ay = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ax) #19
          to label %.noexc unwind label %bb.l     ; 3 uses

.noexc:                                           ; preds = %bb.i
  %i.az = icmp sgt i32 %i.y, -1
  br i1 %i.az, label %.preheader.i.i.i, label %bb.j

.preheader.i.i.i:                                 ; preds = %.noexc
  %.not = icmp eq i32 %i.y, 0
  br i1 %.not, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i
  %wide.trip.count.i.i.i = zext nneg i32 %i.y to i64
  %i.ba = shl nuw nsw i64 %wide.trip.count.i.i.i, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ay, ptr align 4 %.sroa.0.0, i64 %i.ba, i1 false), !tbaa !25
  br label %._crit_edge.thread.i.i.i

._crit_edge.i.i.i:                                ; preds = %.preheader.i.i.i
  %i.bb = icmp eq ptr %.sroa.0.0, null
  br i1 %i.bb, label %bb.j, label %._crit_edge.thread.i.i.i

._crit_edge.thread.i.i.i:                         ; preds = %.lr.ph.i.i.i, %._crit_edge.i.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %.sroa.0.0) #20
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge.thread.i.i.i, %._crit_edge.i.i.i, %.noexc
  %i.bc = sext i32 %i.y to i64
  %i.bd = getelementptr inbounds [4 x i8], ptr %i.ay, i64 %i.bc
  store i32 0, ptr %i.bd, align 4, !tbaa !25
  br label %_ZN11CStringBaseIwE10GrowLengthEi.exit.i

_ZN11CStringBaseIwE10GrowLengthEi.exit.i:         ; preds = %bb.j, %bb.h, %_ZN11CStringBaseIwEC2ERKS0_.exit.i
  %.sroa.0.1 = phi ptr [ %.sroa.0.0, %bb.h ], [ %i.ay, %bb.j ], [ %.sroa.0.0, %_ZN11CStringBaseIwEC2ERKS0_.exit.i ] ; 6 uses
  %i.be = sext i32 %i.y to i64
  %i.bf = getelementptr inbounds [4 x i8], ptr %.sroa.0.1, i64 %i.be
  %i.bg = load ptr, ptr %2, align 8, !tbaa !24
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %_ZN11CStringBaseIwE10GrowLengthEi.exit.i
  %.04.i.i6 = phi ptr [ %i.bg, %_ZN11CStringBaseIwE10GrowLengthEi.exit.i ], [ %i.bh, %bb.k ] ; 2 uses
  %.0.i4.i = phi ptr [ %i.bf, %_ZN11CStringBaseIwE10GrowLengthEi.exit.i ], [ %i.bj, %bb.k ] ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.04.i.i6, i64 4
  %i.bi = load i32, ptr %.04.i.i6, align 4, !tbaa !25 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.0.i4.i, i64 4
  store i32 %i.bi, ptr %.0.i4.i, align 4, !tbaa !25
  %.not.i5.i = icmp eq i32 %i.bi, 0
  br i1 %.not.i5.i, label %_ZplIwE11CStringBaseIT_ERKS2_S4_.exit, label %bb.k, !llvm.loop !28

bb.l:                                             ; preds = %bb.i
  %i.bk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bl = icmp eq ptr %.sroa.0.0, null
  br i1 %i.bl, label %common.resume, label %common.resume.sink.split

common.resume.sink.split:                         ; preds = %bb.l, %bb.p
  %.sroa.0.1.sink = phi ptr [ %.sroa.0.1, %bb.p ], [ %.sroa.0.0, %bb.l ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.bp, %bb.p ], [ %i.bk, %bb.l ]
  tail call void @_ZdaPv(ptr noundef nonnull %.sroa.0.1.sink) #20
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %bb.p, %bb.l
  %common.resume.op = phi { ptr, i32 } [ %i.bk, %bb.l ], [ %i.bp, %bb.p ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

_ZplIwE11CStringBaseIT_ERKS2_S4_.exit:            ; preds = %bb.k
  %i.bm = invoke noundef zeroext i1 @_ZN8NWindows5NFile5NFind10CFileInfoW4FindEPKw(ptr noundef nonnull align 8 dereferenceable(56) %i.z, ptr noundef %.sroa.0.1)
          to label %bb.m unwind label %bb.p

bb.m:                                             ; preds = %_ZplIwE11CStringBaseIT_ERKS2_S4_.exit
  %i.bn = icmp eq ptr %.sroa.0.1, null
  br i1 %i.bn, label %_ZN11CStringBaseIwED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @_ZdaPv(ptr noundef nonnull %.sroa.0.1) #20
  br label %_ZN11CStringBaseIwED2Ev.exit

_ZN11CStringBaseIwED2Ev.exit:                     ; preds = %bb.m, %bb.n
  br i1 %i.bm, label %bb.q, label %bb.o

bb.o:                                             ; preds = %_ZN11CStringBaseIwED2Ev.exit
  %i.bo = tail call ptr @__cxa_allocate_exception(i64 4) #17 ; 2 uses
  store i32 1, ptr %i.bo, align 16, !tbaa !4
  tail call void @__cxa_throw(ptr nonnull %i.bo, ptr nonnull @_ZTIi, ptr null) #22
  unreachable

bb.p:                                             ; preds = %_ZplIwE11CStringBaseIT_ERKS2_S4_.exit
  %i.bp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bq = icmp eq ptr %.sroa.0.1, null
  br i1 %i.bq, label %common.resume, label %common.resume.sink.split

bb.q:                                             ; preds = %_ZN11CStringBaseIwED2Ev.exit
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 136
  tail call void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %i.br)
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i8 0, ptr %i.bs, align 8, !tbaa !149
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i64 0, ptr %i.bt, align 8, !tbaa !141
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN12CArchiveLink6ReOpenEP7CCodecsRK11CStringBaseIwEP20IArchiveOpenCallback(ptr noundef nonnull align 8 dereferenceable(73) %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2, ptr noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.CStringBase, align 8         ; 11 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %5 = alloca %class.CStringBase, align 8         ; 7 uses
  %6 = alloca %class.CStringBase, align 8         ; 7 uses
  %7 = alloca %class.CRecordVector, align 8       ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !51   ; 2 uses
  %i.d = icmp sgt i32 %i.c, 1
  br i1 %i.d, label %_ZN9CMyComPtrI20IArchiveOpenCallbackED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i32 %i.c, 0
  br i1 %i.e, label %bb.c, label %.noexc

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  store i64 4, ptr %i.g, align 8, !tbaa !48
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CRecordVectorIiE, i64 16), ptr %7, align 8, !tbaa !14
  %i.h = invoke noundef i32 @_ZN12CArchiveLink5Open2EP7CCodecsRK13CRecordVectorIiEbP9IInStreamRK11CStringBaseIwEP15IOpenCallbackUI(ptr noundef nonnull align 8 dereferenceable(73) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %7, i1 noundef zeroext false, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef null)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %_ZN9CMyComPtrI20IArchiveOpenCallbackED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %_ZN9CMyComPtrI20IArchiveOpenCallbackED2Ev.exit37

.noexc:                                           ; preds = %bb.b
  %i.j = tail call noalias noundef nonnull dereferenceable(192) ptr @_Znwm(i64 noundef 192) #19 ; 11 uses
  invoke void @_ZN16COpenCallbackImpC2Ev(ptr noundef nonnull align 8 dereferenceable(192) %i.j)
          to label %_ZN9CMyComPtrI20IArchiveOpenCallbackEaSEPS0_.exit.i unwind label %.body.thread49

_ZN9CMyComPtrI20IArchiveOpenCallbackEaSEPS0_.exit.i: ; preds = %.noexc
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !14
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call noundef i32 %i.m(ptr noundef nonnull align 8 dereferenceable(8) %i.j), !inline_history !150 ; 0 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 168
  store ptr null, ptr %i.o, align 8, !tbaa !124
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 176 ; 2 uses
  %.not.i.i = icmp eq ptr %3, null
  br i1 %.not.i.i, label %.noexc28, label %bb.f

bb.f:                                             ; preds = %_ZN9CMyComPtrI20IArchiveOpenCallbackEaSEPS0_.exit.i
  %i.q = load ptr, ptr %3, align 8, !tbaa !14
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = invoke noundef i32 %i.s(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %.noexc28 unwind label %.body.thread54, !inline_history !150 ; 0 uses

.noexc28:                                         ; preds = %bb.f, %_ZN9CMyComPtrI20IArchiveOpenCallbackEaSEPS0_.exit.i
  %i.u = load ptr, ptr %i.p, align 8, !tbaa !151  ; 3 uses
  %.not6.i17.i = icmp eq ptr %i.u, null
  br i1 %.not6.i17.i, label %_ZN9CMyComPtrI20IArchiveOpenCallbackEaSEPS0_.exit18.i, label %bb.g

bb.g:                                             ; preds = %.noexc28
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !14
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = invoke noundef i32 %i.x(ptr noundef nonnull align 8 dereferenceable(8) %i.u)
          to label %_ZN9CMyComPtrI20IArchiveOpenCallbackEaSEPS0_.exit18.i unwind label %.body.thread54, !inline_history !150 ; 0 uses

_ZN9CMyComPtrI20IArchiveOpenCallbackEaSEPS0_.exit18.i: ; preds = %bb.g, %.noexc28
  store ptr %3, ptr %i.p, align 8, !tbaa !151
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 0, ptr %i.z, align 8
  %i.aa = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #19
          to label %.noexc30 unwind label %.body.thread54 ; 2 uses

.noexc30:                                         ; preds = %_ZN9CMyComPtrI20IArchiveOpenCallbackEaSEPS0_.exit18.i
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 12
  store ptr %i.aa, ptr %4, align 8, !tbaa !24
  store i32 0, ptr %i.aa, align 4, !tbaa !25
  store i32 4, ptr %i.ab, align 4, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.ac = load ptr, ptr %2, align 8, !tbaa !24
  %i.ad = invoke noundef zeroext i1 @_ZN8NWindows5NFile10NDirectory17MyGetFullPathNameEPKwR11CStringBaseIwERi(ptr noundef %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.h unwind label %bb.m       ; 0 uses

bb.h:                                             ; preds = %.noexc30
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.ae = load i32, ptr %i.a, align 4, !tbaa !4
  invoke void @_ZNK11CStringBaseIwE3MidEii(ptr dead_on_unwind nonnull writable sret(%class.CStringBase) align 8 %5, ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef 0, i32 noundef %i.ae)
          to label %_ZNK11CStringBaseIwE4LeftEi.exit.i unwind label %bb.n

_ZNK11CStringBaseIwE4LeftEi.exit.i:               ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.af = load i32, ptr %i.a, align 4, !tbaa !4   ; 2 uses
  %i.ag = load i32, ptr %i.z, align 8, !tbaa !21, !noalias !152
  %i.ah = sub nsw i32 %i.ag, %i.af
  invoke void @_ZNK11CStringBaseIwE3MidEii(ptr dead_on_unwind nonnull writable sret(%class.CStringBase) align 8 %6, ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef %i.af, i32 noundef %i.ah)
          to label %_ZNK11CStringBaseIwE3MidEi.exit.i unwind label %bb.o

_ZNK11CStringBaseIwE3MidEi.exit.i:                ; preds = %_ZNK11CStringBaseIwE4LeftEi.exit.i
  invoke void @_ZN16COpenCallbackImp4InitERK11CStringBaseIwES3_(ptr noundef nonnull align 8 dereferenceable(192) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %bb.i unwind label %bb.p

bb.i:                                             ; preds = %_ZNK11CStringBaseIwE3MidEi.exit.i
  %i.ai = load ptr, ptr %6, align 8, !tbaa !24    ; 2 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %_ZN11CStringBaseIwED2Ev.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZdaPv(ptr noundef nonnull %i.ai) #20
  br label %_ZN11CStringBaseIwED2Ev.exit.i

_ZN11CStringBaseIwED2Ev.exit.i:                   ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %i.ak = load ptr, ptr %5, align 8, !tbaa !24    ; 2 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %_ZN11CStringBaseIwED2Ev.exit19.i, label %bb.k

bb.k:                                             ; preds = %_ZN11CStringBaseIwED2Ev.exit.i
  call void @_ZdaPv(ptr noundef nonnull %i.ak) #20
  br label %_ZN11CStringBaseIwED2Ev.exit19.i

_ZN11CStringBaseIwED2Ev.exit19.i:                 ; preds = %bb.k, %_ZN11CStringBaseIwED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.am = load ptr, ptr %4, align 8, !tbaa !24    ; 2 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.u, label %bb.l

bb.l:                                             ; preds = %_ZN11CStringBaseIwED2Ev.exit19.i
  call void @_ZdaPv(ptr noundef nonnull %i.am) #20
  br label %bb.u

.body.thread49:                                   ; preds = %.noexc
  %i.ao = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef 192) #20
  br label %_ZN9CMyComPtrI20IArchiveOpenCallbackED2Ev.exit37

bb.m:                                             ; preds = %.noexc30
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.n:                                             ; preds = %bb.h
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIwED2Ev.exit22.i

bb.o:                                             ; preds = %_ZNK11CStringBaseIwE4LeftEi.exit.i
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIwED2Ev.exit21.i

bb.p:                                             ; preds = %_ZNK11CStringBaseIwE3MidEi.exit.i
  %i.as = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.at = load ptr, ptr %6, align 8, !tbaa !24    ; 2 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %_ZN11CStringBaseIwED2Ev.exit21.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @_ZdaPv(ptr noundef nonnull %i.at) #20
  br label %_ZN11CStringBaseIwED2Ev.exit21.i

_ZN11CStringBaseIwED2Ev.exit21.i:                 ; preds = %bb.q, %bb.p, %bb.o
  %.pn.i = phi { ptr, i32 } [ %i.ar, %bb.o ], [ %i.as, %bb.p ], [ %i.as, %bb.q ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %i.av = load ptr, ptr %5, align 8, !tbaa !24    ; 2 uses
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %_ZN11CStringBaseIwED2Ev.exit22.i, label %bb.r

bb.r:                                             ; preds = %_ZN11CStringBaseIwED2Ev.exit21.i
  call void @_ZdaPv(ptr noundef nonnull %i.av) #20
  br label %_ZN11CStringBaseIwED2Ev.exit22.i

_ZN11CStringBaseIwED2Ev.exit22.i:                 ; preds = %bb.r, %_ZN11CStringBaseIwED2Ev.exit21.i, %bb.n
  %.pn.pn.i = phi { ptr, i32 } [ %i.aq, %bb.n ], [ %.pn.i, %_ZN11CStringBaseIwED2Ev.exit21.i ], [ %.pn.i, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %bb.s

bb.s:                                             ; preds = %_ZN11CStringBaseIwED2Ev.exit22.i, %bb.m
  %.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn.i, %_ZN11CStringBaseIwED2Ev.exit22.i ], [ %i.ap, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.ax = load ptr, ptr %4, align 8, !tbaa !24    ; 2 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %_ZN11CStringBaseIwED2Ev.exit23.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @_ZdaPv(ptr noundef nonnull %i.ax) #20
  br label %_ZN11CStringBaseIwED2Ev.exit23.i

_ZN11CStringBaseIwED2Ev.exit23.i:                 ; preds = %bb.t, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %.body.thread
end_hunk_4
