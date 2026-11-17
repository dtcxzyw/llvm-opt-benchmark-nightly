Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/List?download=true
inline.NumInlined: 229
inline.NumDeleted: 68
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZL11GetPropNamejPw:.critedge
  br label %bb.c

._crit_edge.i.i39:                                ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @_Z21ConvertUInt32ToStringjPw(i32 noundef %1, ptr noundef nonnull %i.a)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %wcslen.i.i31 = call i64 @wcslen(ptr noundef nonnull dereferenceable(4) %i.a)
  %i.ae = trunc i64 %wcslen.i.i31 to i32          ; 3 uses
  %i.af = add nsw i32 %i.ae, 1                    ; 3 uses
  %i.ag = icmp ne i32 %i.af, 0
  call void @llvm.assume(i1 %i.ag)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ai = zext nneg i32 %i.af to i64
  %i.aj = icmp slt i32 %i.ae, -1
  %i.ak = shl nuw nsw i64 %i.ai, 2
  %i.al = select i1 %i.aj, i64 -1, i64 %i.ak
  %i.am = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.al) #16 ; 3 uses
  store ptr %i.am, ptr %0, align 8, !tbaa !109
  store i32 0, ptr %i.am, align 4, !tbaa !111
  store i32 %i.af, ptr %i.ah, align 4, !tbaa !107
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i33

_ZN11CStringBaseIwE11SetCapacityEi.exit.i33:      ; preds = %._crit_edge.i.i39, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i33
  %.04.i.i34 = phi ptr [ %i.ap, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i33 ], [ %i.am, %._crit_edge.i.i39 ] ; 2 uses
  %.0.i.i35 = phi ptr [ %i.an, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i33 ], [ %i.a, %._crit_edge.i.i39 ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.0.i.i35, i64 4
  %i.ao = load i32, ptr %.0.i.i35, align 4, !tbaa !111 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.04.i.i34, i64 4
  store i32 %i.ao, ptr %.04.i.i34, align 4, !tbaa !111
  %.not.i.i36 = icmp eq i32 %i.ao, 0
  br i1 %.not.i.i36, label %_ZN11CStringBaseIwEC2EPKw.exit47, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i33, !llvm.loop !0

_ZN11CStringBaseIwEC2EPKw.exit47:                 ; preds = %_ZN11CStringBaseIwE11SetCapacityEi.exit.i33
  store i32 %i.ae, ptr %i.ad, align 8, !tbaa !108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZN11CStringBaseIwEC2EPKw.exit47, %_ZN11CStringBaseIwEC2EPKw.exit30
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN13CFieldPrinter10PrintTitleEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #0 align 2 !guid !177 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !123
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

._crit_edge:                                      ; preds = %_ZL11PrintString11EAdjustmentiRK11CStringBaseIwE.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZL11PrintString11EAdjustmentiRK11CStringBaseIwE.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZL11PrintString11EAdjustmentiRK11CStringBaseIwE.exit ] ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !122
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !124  ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !129  ; 2 uses
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph.i, label %_ZL11PrintSpacesi.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.03.i = phi i32 [ %i.l, %.lr.ph.i ], [ 0, %bb.b ]
  %i.k = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEc(ptr noundef nonnull align 8 dereferenceable(16) @g_StdOut, i8 noundef signext 32) ; 0 uses
  %i.l = add nuw nsw i32 %.03.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.l, %i.i
  br i1 %exitcond.not.i, label %_ZL11PrintSpacesi.exit, label %.lr.ph.i, !llvm.loop !1

_ZL11PrintSpacesi.exit:                           ; preds = %.lr.ph.i, %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.n = load i32, ptr %i.m, align 8, !tbaa !178
  %i.o = load i32, ptr %i.g, align 8, !tbaa !118
  %i.p = icmp eq i32 %i.o, 3
  br i1 %i.p, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZL11PrintSpacesi.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 36
  %i.r = load i32, ptr %i.q, align 4, !tbaa !130
  br label %bb.d

bb.d:                                             ; preds = %_ZL11PrintSpacesi.exit, %bb.c
  %i.s = phi i32 [ %i.r, %bb.c ], [ 0, %_ZL11PrintSpacesi.exit ]
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.v = load i32, ptr %i.u, align 8, !tbaa !108
  %i.w = sub nsw i32 %i.s, %i.v                   ; 3 uses
  switch i32 %i.n, label %_ZL11PrintSpacesi.exit.i [
    i32 2, label %bb.f
    i32 1, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.x = sdiv i32 %i.w, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0.i = phi i32 [ %i.x, %bb.e ], [ %i.w, %bb.d ] ; 4 uses
  %i.y = icmp sgt i32 %.0.i, 0
  br i1 %i.y, label %.lr.ph.i.i, label %_ZL11PrintSpacesi.exit.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %.03.i.i = phi i32 [ %i.aa, %.lr.ph.i.i ], [ 0, %bb.f ]
  %i.z = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEc(ptr noundef nonnull align 8 dereferenceable(16) @g_StdOut, i8 noundef signext 32) ; 0 uses
  %i.aa = add nuw nsw i32 %.03.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.aa, %.0.i
  br i1 %exitcond.not.i.i, label %_ZL11PrintSpacesi.exit.i, label %.lr.ph.i.i, !llvm.loop !1

_ZL11PrintSpacesi.exit.i:                         ; preds = %.lr.ph.i.i, %bb.f, %bb.d
  %.013.i = phi i32 [ 0, %bb.d ], [ %.0.i, %bb.f ], [ %.0.i, %.lr.ph.i.i ]
  %i.ab = load ptr, ptr %i.t, align 8, !tbaa !109
  %i.ac = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEPKw(ptr noundef nonnull align 8 dereferenceable(16) @g_StdOut, ptr noundef %i.ab) ; 0 uses
  %i.ad = sub nsw i32 %i.w, %.013.i               ; 2 uses
  %i.ae = icmp sgt i32 %i.ad, 0
  br i1 %i.ae, label %.lr.ph.i8.i, label %_ZL11PrintString11EAdjustmentiRK11CStringBaseIwE.exit

.lr.ph.i8.i:                                      ; preds = %_ZL11PrintSpacesi.exit.i, %.lr.ph.i8.i
  %.03.i9.i = phi i32 [ %i.ag, %.lr.ph.i8.i ], [ 0, %_ZL11PrintSpacesi.exit.i ]
  %i.af = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEc(ptr noundef nonnull align 8 dereferenceable(16) @g_StdOut, i8 noundef signext 32) ; 0 uses
  %i.ag = add nuw nsw i32 %.03.i9.i, 1            ; 2 uses
  %exitcond.not.i10.i = icmp eq i32 %i.ag, %i.ad
  br i1 %exitcond.not.i10.i, label %_ZL11PrintString11EAdjustmentiRK11CStringBaseIwE.exit, label %.lr.ph.i8.i, !llvm.loop !1

_ZL11PrintString11EAdjustmentiRK11CStringBaseIwE.exit: ; preds = %.lr.ph.i8.i, %_ZL11PrintSpacesi.exit.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ah = load i32, ptr %i.a, align 4, !tbaa !123
  %i.ai = sext i32 %i.ah to i64
  %i.aj = icmp slt i64 %indvars.iv.next, %i.ai
  br i1 %i.aj, label %bb.b, label %._crit_edge, !llvm.loop !176
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN13CFieldPrinter15PrintTitleLinesEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #0 align 2 !guid !179 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !123
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph11, label %._crit_edge12

.lr.ph11:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

._crit_edge12:                                    ; preds = %._crit_edge, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph11, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph11 ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !122
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !124  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !129  ; 2 uses
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph.i, label %_ZL11PrintSpacesi.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.03.i = phi i32 [ %i.l, %.lr.ph.i ], [ 0, %bb.b ]
  %i.k = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEc(ptr noundef nonnull align 8 dereferenceable(16) @g_StdOut, i8 noundef signext 32) ; 0 uses
  %i.l = add nuw nsw i32 %.03.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.l, %i.i
  br i1 %exitcond.not.i, label %_ZL11PrintSpacesi.exit, label %.lr.ph.i, !llvm.loop !1

_ZL11PrintSpacesi.exit:                           ; preds = %.lr.ph.i, %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 36 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !130
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %_ZL11PrintSpacesi.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.p = load i32, ptr %i.a, align 4, !tbaa !123
  %i.q = sext i32 %i.p to i64
  %i.r = icmp slt i64 %indvars.iv.next, %i.q
  br i1 %i.r, label %bb.b, label %._crit_edge12, !llvm.loop !2

.lr.ph:                                           ; preds = %_ZL11PrintSpacesi.exit, %.lr.ph
  %.08 = phi i32 [ %i.t, %.lr.ph ], [ 0, %_ZL11PrintSpacesi.exit ]
  %i.s = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEc(ptr noundef nonnull align 8 dereferenceable(16) @g_StdOut, i8 noundef signext 45) ; 0 uses
  %i.t = add nuw nsw i32 %.08, 1                  ; 2 uses
  %i.u = load i32, ptr %i.m, align 4, !tbaa !130
  %i.v = icmp slt i32 %i.t, %i.u
  br i1 %i.v, label %.lr.ph, label %._crit_edge, !llvm.loop !3
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEc(ptr noundef nonnull align 8 dereferenceable(16), i8 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN13CFieldPrinter13PrintItemInfoERK4CArcjb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !guid !186 {
bb.a:
  %4 = alloca %struct._FILETIME, align 4          ; 4 uses
  %i.a = alloca [32 x i8], align 16               ; 4 uses
  %5 = alloca %"class.NWindows::NCOM::CPropVariant", align 8 ; 14 uses
  %6 = alloca %class.CStringBase, align 8         ; 13 uses
  %i.b = alloca i8, align 1                       ; 6 uses
  %i.c = alloca [8 x i8], align 1                 ; 7 uses
  %7 = alloca %class.CStringBase, align 8         ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !123
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 2
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 5
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 8
  br label %bb.c

bb.b:                                             ; preds = %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.p = load i32, ptr %i.d, align 4, !tbaa !123
  %i.q = sext i32 %i.p to i64
  %i.r = icmp slt i64 %indvars.iv.next, %i.q
  br i1 %i.r, label %bb.c, label %._crit_edge, !llvm.loop !180

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %.069204 = phi i32 [ undef, %.lr.ph ], [ %.776, %bb.b ] ; 4 uses
  %i.s = load ptr, ptr %i.g, align 8, !tbaa !122
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !124  ; 8 uses
  br i1 %3, label %_ZL11PrintSpacesi.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.w = load i32, ptr %i.v, align 8, !tbaa !129  ; 2 uses
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %.lr.ph.i, label %_ZL11PrintSpacesi.exit

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %.03.i = phi i32 [ %i.z, %.lr.ph.i ], [ 0, %bb.d ]
  %i.y = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEc(ptr noundef nonnull align 8 dereferenceable(16) @g_StdOut, i8 noundef signext 32) ; 0 uses
  %i.z = add nuw nsw i32 %.03.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.z, %i.w
  br i1 %exitcond.not.i, label %_ZL11PrintSpacesi.exit, label %.lr.ph.i, !llvm.loop !1

_ZL11PrintSpacesi.exit:                           ; preds = %.lr.ph.i, %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  store i16 0, ptr %5, align 8, !tbaa !133
  store i16 0, ptr %i.h, align 2, !tbaa !134
  %i.aa = load i32, ptr %i.u, align 8, !tbaa !118 ; 2 uses
  %i.ab = icmp eq i32 %i.aa, 3
  br i1 %i.ab, label %bb.e, label %bb.n

bb.e:                                             ; preds = %_ZL11PrintSpacesi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %i.ac = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #16
          to label %.noexc unwind label %bb.h     ; 9 uses

.noexc:                                           ; preds = %bb.e
  %i.ad = ptrtoaddr ptr %i.ac to i64
  %i.ae = load i32, ptr %i.j, align 4, !tbaa !107
  %i.af = icmp sgt i32 %i.ae, 0
  %.pre1.i = load i32, ptr %i.i, align 8, !tbaa !108 ; 5 uses
  br i1 %i.af, label %.preheader.i.i, label %bb.f

.preheader.i.i:                                   ; preds = %.noexc
  %i.ag = icmp sgt i32 %.pre1.i, 0
  %.pre.i.i = load ptr, ptr %6, align 8, !tbaa !109 ; 9 uses
  br i1 %i.ag, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %.pre.i.i275 = ptrtoaddr ptr %.pre.i.i to i64
  %wide.trip.count.i.i = zext nneg i32 %.pre1.i to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %.pre1.i, 8
  %i.ah = sub i64 %.pre.i.i275, %i.ad
  %diff.check = icmp ugt i64 %i.ah, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i
  %n.vec = and i64 %wide.trip.count.i.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %index ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %wide.load = load <4 x i32>, ptr %i.ai, align 4, !tbaa !111
  %wide.load276 = load <4 x i32>, ptr %i.aj, align 4, !tbaa !111
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %index ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store <4 x i32> %wide.load, ptr %i.ak, align 4, !tbaa !111
  store <4 x i32> %wide.load276, ptr %i.al, align 4, !tbaa !111
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !181

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
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.i.i.prol
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !111
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv.i.i.prol
  store i32 %i.ao, ptr %i.ap, align 4, !tbaa !111
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !182

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.prol, %scalar.ph.prol ]
  %i.aq = sub nsw i64 %indvars.iv.i.i.ph, %wide.trip.count.i.i
  %i.ar = icmp ugt i64 %i.aq, -4
  br i1 %i.ar, label %._crit_edge.thread.i.i, label %scalar.ph

._crit_edge.i.i:                                  ; preds = %.preheader.i.i
  %i.as = icmp eq ptr %.pre.i.i, null
  br i1 %i.as, label %bb.f, label %._crit_edge.thread.i.i

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.i.i
  %i.au = load i32, ptr %i.at, align 4, !tbaa !111
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv.i.i
  store i32 %i.au, ptr %i.av, align 4, !tbaa !111
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !111
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv.next.i.i
  store i32 %i.ax, ptr %i.ay, align 4, !tbaa !111
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i.1
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !111
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv.next.i.i.1
  store i32 %i.ba, ptr %i.bb, align 4, !tbaa !111
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i.2
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !111
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv.next.i.i.2
  store i32 %i.bd, ptr %i.be, align 4, !tbaa !111
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.thread.i.i, label %scalar.ph, !llvm.loop !183

._crit_edge.thread.i.i:                           ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %._crit_edge.i.i
  call void @_ZdaPv(ptr noundef nonnull %.pre.i.i) #17
  %.pre.i = load i32, ptr %i.i, align 8, !tbaa !108
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge.thread.i.i, %._crit_edge.i.i, %.noexc
  %i.bf = phi i32 [ %.pre1.i, %.noexc ], [ %.pre1.i, %._crit_edge.i.i ], [ %.pre.i, %._crit_edge.thread.i.i ]
  store ptr %i.ac, ptr %6, align 8, !tbaa !109
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.bg
  store i32 0, ptr %i.bh, align 4, !tbaa !111
  store i32 4, ptr %i.j, align 4, !tbaa !107
  %i.bi = invoke noundef i32 @_ZNK4CArc11GetItemPathEjR11CStringBaseIwE(ptr noundef nonnull align 8 dereferenceable(80) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %bb.g unwind label %bb.l       ; 2 uses

bb.g:                                             ; preds = %bb.f
  %.not81 = icmp eq i32 %i.bi, 0
  %i.bj = load ptr, ptr %6, align 8, !tbaa !109   ; 3 uses
  br i1 %.not81, label %bb.i, label %.critedge

bb.h:                                             ; preds = %bb.e
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIwED2Ev.exit97

bb.i:                                             ; preds = %bb.g
  %i.bl = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN8NWindows4NCOM12CPropVariantaSEPKw(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef %i.bj)
          to label %bb.j unwind label %bb.l       ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.bm = load ptr, ptr %6, align 8, !tbaa !109   ; 2 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %_ZN11CStringBaseIwED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZdaPv(ptr noundef nonnull %i.bm) #17
  br label %_ZN11CStringBaseIwED2Ev.exit

_ZN11CStringBaseIwED2Ev.exit:                     ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  br label %bb.p

bb.l:                                             ; preds = %bb.f, %bb.i
  %i.bo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bp = load ptr, ptr %6, align 8, !tbaa !109   ; 2 uses
  %i.bq = icmp eq ptr %i.bp, null
  br i1 %i.bq, label %_ZN11CStringBaseIwED2Ev.exit97, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZdaPv(ptr noundef nonnull %i.bp) #17
  br label %_ZN11CStringBaseIwED2Ev.exit97

_ZN11CStringBaseIwED2Ev.exit97:                   ; preds = %bb.m, %bb.l, %bb.h
  %.pn.pn = phi { ptr, i32 } [ %i.bk, %bb.h ], [ %i.bo, %bb.l ], [ %i.bo, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  br label %_ZN11CStringBaseIwED2Ev.exit127

bb.n:                                             ; preds = %_ZL11PrintSpacesi.exit
  %i.br = load ptr, ptr %1, align 8, !tbaa !137   ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !126
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 64
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = invoke noundef i32 %i.bu(ptr noundef nonnull align 8 dereferenceable(8) %i.br, i32 noundef %2, i32 noundef %i.aa, ptr noundef nonnull %5)
          to label %bb.o unwind label %.loopexit.split-lp193.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.o:                                             ; preds = %bb.n
  %.not = icmp eq i32 %i.bv, 0
  br i1 %.not, label %bb.p, label %_ZL11PrintSpacesi.exit102.thread170

bb.p:                                             ; preds = %_ZN11CStringBaseIwED2Ev.exit, %bb.o
  br i1 %3, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.bw = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !109
  %i.by = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEPKw(ptr noundef nonnull align 8 dereferenceable(16) @g_StdOut, ptr noundef %i.bx)
          to label %bb.r unwind label %.loopexit.split-lp193.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.r:                                             ; preds = %bb.q
  %i.bz = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.by, ptr noundef nonnull @.str)
          to label %bb.s unwind label %.loopexit.split-lp193.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.s:                                             ; preds = %bb.r, %bb.p
  %i.ca = load i32, ptr %i.u, align 8, !tbaa !118 ; 3 uses
  %i.cb = icmp eq i32 %i.ca, 3
  br i1 %i.cb, label %.thread163, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cc = getelementptr inbounds nuw i8, ptr %i.u, i64 36
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !130 ; 4 uses
  %i.ce = icmp eq i32 %i.ca, 9
  %i.cf = load i16, ptr %5, align 8, !tbaa !133   ; 6 uses
  br i1 %i.ce, label %bb.u, label %bb.ac

bb.u:                                             ; preds = %bb.t
  switch i16 %i.cf, label %.thread162 [
    i16 19, label %bb.v
    i16 0, label %bb.v
  ]

bb.v:                                             ; preds = %bb.u, %bb.u
  %i.cg = icmp eq i16 %i.cf, 0
  %i.ch = load i32, ptr %i.k, align 8
  %i.ci = select i1 %i.cg, i32 0, i32 %i.ch       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  %i.cj = load ptr, ptr %1, align 8, !tbaa !137
  %i.ck = invoke noundef i32 @_Z19IsArchiveItemFolderP10IInArchivejRb(ptr noundef %i.cj, i32 noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.w unwind label %bb.x       ; 2 uses

bb.w:                                             ; preds = %bb.v
  %.not88 = icmp eq i32 %i.ck, 0
  br i1 %.not88, label %bb.y, label %.critedge96

bb.x:                                             ; preds = %bb.v
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.y:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  %i.cm = load i8, ptr %i.b, align 1, !tbaa !139, !range !140, !noundef !141
  %i.cn = trunc nuw i8 %i.cm to i1
  %8 = and i32 %i.ci, 16
  %9 = icmp ne i32 %8, 0
  %10 = or i1 %9, %i.cn
  %11 = select i1 %10, i8 68, i8 46
  store i8 %11, ptr %i.c, align 1, !tbaa !119
  %12 = insertelement <4 x i32> poison, i32 %i.ci, i64 0
  %13 = shufflevector <4 x i32> %12, <4 x i32> poison, <4 x i32> zeroinitializer
  %14 = and <4 x i32> %13, <i32 1, i32 2, i32 4, i32 32>
  %15 = icmp eq <4 x i32> %14, zeroinitializer
  %16 = select <4 x i1> %15, <4 x i8> splat (i8 46), <4 x i8> <i8 82, i8 72, i8 83, i8 65>
  store <4 x i8> %16, ptr %i.m, align 1, !tbaa !119
  store i8 0, ptr %i.n, align 1, !tbaa !119
  %i.co = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(16) @g_StdOut, ptr noundef nonnull %i.c)
          to label %bb.z unwind label %bb.aa      ; 0 uses

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  br label %_ZL11PrintSpacesi.exit102

bb.aa:                                            ; preds = %bb.y
  %i.cp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.x
  %.pn89 = phi { ptr, i32 } [ %i.cp, %bb.aa ], [ %i.cl, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  br label %_ZN11CStringBaseIwED2Ev.exit127

bb.ac:                                            ; preds = %bb.t
  %i.cq = icmp eq i16 %i.cf, 0
  br i1 %i.cq, label %bb.ad, label %bb.af

.thread163:                                       ; preds = %bb.s
  %.pr165 = load i16, ptr %5, align 8, !tbaa !133 ; 2 uses
  %i.cr = icmp eq i16 %.pr165, 0
  br i1 %i.cr, label %.thread175, label %.thread162

bb.ad:                                            ; preds = %bb.ac
  br i1 %3, label %_ZL11PrintSpacesi.exit102.thread, label %bb.ae

.thread175:                                       ; preds = %.thread163
  br i1 %3, label %_ZL11PrintSpacesi.exit102.thread, label %_ZL11PrintSpacesi.exit102.thread170

bb.ae:                                            ; preds = %bb.ad
  %i.cs = icmp sgt i32 %i.cd, 0
  br i1 %i.cs, label %.lr.ph.i98, label %_ZL11PrintSpacesi.exit102.thread170

.lr.ph.i98:                                       ; preds = %bb.ae, %.noexc101
  %.03.i99 = phi i32 [ %i.cu, %.noexc101 ], [ 0, %bb.ae ]
  %i.ct = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEc(ptr noundef nonnull align 8 dereferenceable(16) @g_StdOut, i8 noundef signext 32)
          to label %.noexc101 unwind label %.loopexit.split-lp193.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc101:                                        ; preds = %.lr.ph.i98
  %i.cu = add nuw nsw i32 %.03.i99, 1             ; 2 uses
  %exitcond.not.i100 = icmp eq i32 %i.cu, %i.cd
  br i1 %exitcond.not.i100, label %_ZL11PrintSpacesi.exit102, label %.lr.ph.i98, !llvm.loop !1

bb.af:                                            ; preds = %bb.ac
  %i.cv = icmp eq i32 %i.ca, 12
  br i1 %i.cv, label %bb.ag, label %.thread162

bb.ag:                                            ; preds = %bb.af
  %.not.i103 = icmp eq i16 %i.cf, 64
  br i1 %.not.i103, label %bb.ah, label %.invoke

.invoke:                                          ; preds = %bb.ag, %.noexc106
  %.str.71.sink = phi ptr [ @.str.71, %.noexc106 ], [ @.str.70, %bb.ag ]
  %i.cw = call ptr @__cxa_allocate_exception(i64 8) #15 ; 2 uses
  store ptr %.str.71.sink, ptr %i.cw, align 16, !tbaa !143
  invoke void @__cxa_throw(ptr nonnull %i.cw, ptr nonnull @_ZTIPKc, ptr null) #19
          to label %.cont unwind label %.loopexit.split-lp193.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.ah:                                            ; preds = %bb.ag
  %.val.i = load i32, ptr %i.k, align 8, !tbaa !187
  %.val5.i = load i32, ptr %i.l, align 4
  %i.cx = icmp ne i32 %.val.i, 0
  %i.cy = icmp ne i32 %.val5.i, 0
  %narrow.i.not.i = select i1 %i.cx, i1 true, i1 %i.cy
  br i1 %narrow.i.not.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cz = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(16) @g_StdOut, ptr noundef nonnull @.str.72)
          to label %_ZL11PrintSpacesi.exit102 unwind label %.loopexit.split-lp193.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.aj:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.da = invoke i32 @FileTimeToLocalFileTime(ptr noundef nonnull %i.k, ptr noundef nonnull %4)
          to label %.noexc106 unwind label %.loopexit.split-lp193.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc106:                                        ; preds = %bb.aj
  %.not4.i = icmp eq i32 %i.da, 0
  br i1 %.not4.i, label %.invoke, label %bb.ak

bb.ak:                                            ; preds = %.noexc106
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.db = invoke noundef zeroext i1 @_Z23ConvertFileTimeToStringRK9_FILETIMEPcbb(ptr noundef nonnull align 4 dereferenceable(8) %4, ptr noundef nonnull %i.a, i1 noundef zeroext true, i1 noundef zeroext true)
          to label %.noexc108 unwind label %.loopexit.split-lp193.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc108:                                        ; preds = %bb.ak
  %..str.72.i = select i1 %i.db, ptr %i.a, ptr @.str.72
  %i.dc = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(16) @g_StdOut, ptr noundef nonnull %..str.72.i)
          to label %.noexc109 unwind label %.loopexit.split-lp193.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc109:                                        ; preds = %.noexc108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br label %_ZL11PrintSpacesi.exit102

.thread162:                                       ; preds = %.thread163, %bb.u, %bb.af
  %i.dd = phi i16 [ %i.cf, %bb.u ], [ %i.cf, %bb.af ], [ %.pr165, %.thread163 ]
  %i.de = phi i32 [ %i.cd, %bb.u ], [ %i.cd, %bb.af ], [ 0, %.thread163 ] ; 2 uses
  %i.df = icmp eq i16 %i.dd, 8
  br i1 %i.df, label %bb.al, label %bb.au

bb.al:                                            ; preds = %.thread162
  br i1 %3, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.dg = load ptr, ptr %i.k, align 8, !tbaa !119
  %i.dh = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEPKw(ptr noundef nonnull align 8 dereferenceable(16) @g_StdOut, ptr noundef %i.dg)
          to label %_ZL11PrintSpacesi.exit102.thread unwind label %.loopexit.split-lp193.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.an:                                            ; preds = %bb.al
  %i.di = getelementptr inbounds nuw i8, ptr %i.u, i64 28
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !145
  %i.dk = load ptr, ptr %i.k, align 8, !tbaa !119 ; 2 uses
  %wcslen.i.i = call i64 @wcslen(ptr noundef nonnull dereferenceable(4) %i.dk)
  %i.dl = trunc i64 %wcslen.i.i to i32            ; 3 uses
  %i.dm = add nsw i32 %i.dl, 1                    ; 2 uses
  %i.dn = icmp eq i32 %i.dm, 0
  br i1 %i.dn, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.do = zext nneg i32 %i.dm to i64
  %i.dp = icmp slt i32 %i.dl, -1
  %i.dq = shl nuw nsw i64 %i.do, 2
  %i.dr = select i1 %i.dp, i64 -1, i64 %i.dq
  %i.ds = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.dr) #16
          to label %.noexc120 unwind label %.loopexit.split-lp193.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc120:                                        ; preds = %bb.ao
  store i32 0, ptr %i.ds, align 4, !tbaa !111
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i

_ZN11CStringBaseIwE11SetCapacityEi.exit.i:        ; preds = %.noexc120, %bb.an
  %.sroa.0.0 = phi ptr [ null, %bb.an ], [ %i.ds, %.noexc120 ] ; 6 uses
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ap, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
  %.04.i.i = phi ptr [ %.sroa.0.0, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.dv, %bb.ap ] ; 2 uses
  %.0.i.i = phi ptr [ %i.dk, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.dt, %bb.ap ] ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  %i.du = load i32, ptr %.0.i.i, align 4, !tbaa !111 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.04.i.i, i64 4
  store i32 %i.du, ptr %.04.i.i, align 4, !tbaa !111
  %.not.i.i = icmp eq i32 %i.du, 0
  br i1 %.not.i.i, label %_ZN11CStringBaseIwEC2EPKw.exit, label %bb.ap, !llvm.loop !0

_ZN11CStringBaseIwEC2EPKw.exit:                   ; preds = %bb.ap
  %i.dw = sub nsw i32 %i.de, %i.dl                ; 3 uses
  switch i32 %i.dj, label %_ZL11PrintSpacesi.exit.i [
    i32 2, label %bb.ar
    i32 1, label %bb.aq
  ]

bb.aq:                                            ; preds = %_ZN11CStringBaseIwEC2EPKw.exit
  %i.dx = sdiv i32 %i.dw, 2
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %_ZN11CStringBaseIwEC2EPKw.exit
  %.0.i = phi i32 [ %i.dx, %bb.aq ], [ %i.dw, %_ZN11CStringBaseIwEC2EPKw.exit ] ; 4 uses
  %i.dy = icmp sgt i32 %.0.i, 0
  br i1 %i.dy, label %.lr.ph.i.i121, label %_ZL11PrintSpacesi.exit.i

.lr.ph.i.i121:                                    ; preds = %bb.ar, %.noexc123
  %.03.i.i = phi i32 [ %i.ea, %.noexc123 ], [ 0, %bb.ar ]
  %i.dz = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEc(ptr noundef nonnull align 8 dereferenceable(16) @g_StdOut, i8 noundef signext 32)
          to label %.noexc123 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc123:                                        ; preds = %.lr.ph.i.i121
  %i.ea = add nuw nsw i32 %.03.i.i, 1             ; 2 uses
  %exitcond.not.i.i122 = icmp eq i32 %i.ea, %.0.i
  br i1 %exitcond.not.i.i122, label %_ZL11PrintSpacesi.exit.i, label %.lr.ph.i.i121, !llvm.loop !1

_ZL11PrintSpacesi.exit.i:                         ; preds = %.noexc123, %bb.ar, %_ZN11CStringBaseIwEC2EPKw.exit
  %.013.i = phi i32 [ 0, %_ZN11CStringBaseIwEC2EPKw.exit ], [ %.0.i, %bb.ar ], [ %.0.i, %.noexc123 ]
  %i.eb = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEPKw(ptr noundef nonnull align 8 dereferenceable(16) @g_StdOut, ptr noundef %.sroa.0.0)
          to label %.noexc124 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc124:                                        ; preds = %_ZL11PrintSpacesi.exit.i
  %i.ec = sub nsw i32 %i.dw, %.013.i              ; 2 uses
  %i.ed = icmp sgt i32 %i.ec, 0
  br i1 %i.ed, label %.lr.ph.i8.i, label %_ZL11PrintString11EAdjustmentiRK11CStringBaseIwE.exit

.lr.ph.i8.i:                                      ; preds = %.noexc124, %.noexc125
  %.03.i9.i = phi i32 [ %i.ef, %.noexc125 ], [ 0, %.noexc124 ]
  %i.ee = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEc(ptr noundef nonnull align 8 dereferenceable(16) @g_StdOut, i8 noundef signext 32)
          to label %.noexc125 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc125:                                        ; preds = %.lr.ph.i8.i
  %i.ef = add nuw nsw i32 %.03.i9.i, 1            ; 2 uses
  %exitcond.not.i10.i = icmp eq i32 %i.ef, %i.ec
  br i1 %exitcond.not.i10.i, label %_ZL11PrintString11EAdjustmentiRK11CStringBaseIwE.exit, label %.lr.ph.i8.i, !llvm.loop !1

_ZL11PrintString11EAdjustmentiRK11CStringBaseIwE.exit: ; preds = %.noexc125, %.noexc124
end_hunk_0
