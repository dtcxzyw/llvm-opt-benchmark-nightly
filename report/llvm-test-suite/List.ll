inline.NumInlined: 231
inline.NumDeleted: 69
begin_hunk_0_@_ZL11GetPropNamejPw:.critedge
  %.not.i.i18 = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i18, label %_ZN11CStringBaseIwEC2EPKw.exit19, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i15, !llvm.loop !16

_ZN11CStringBaseIwEC2EPKw.exit19:                 ; preds = %_ZN11CStringBaseIwE11SetCapacityEi.exit.i15
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.q, ptr %i.ac, align 8, !tbaa !24
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @_Z21ConvertUInt32ToStringjPw(i32 noundef %1, ptr noundef nonnull %i.a)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %wcslen.i.i20 = call i64 @wcslen(ptr nonnull %i.a)
  %i.ad = trunc i64 %wcslen.i.i20 to i32          ; 3 uses
  %i.ae = add nsw i32 %i.ad, 1                    ; 3 uses
  %i.af = icmp ne i32 %i.ae, 0
  call void @llvm.assume(i1 %i.af)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ah = zext nneg i32 %i.ae to i64
  %i.ai = icmp slt i32 %i.ad, -1
  %i.aj = shl nuw nsw i64 %i.ah, 2
  %i.ak = select i1 %i.ai, i64 -1, i64 %i.aj
  %i.al = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ak) #15 ; 3 uses
  store ptr %i.al, ptr %0, align 8, !tbaa !22
  store i32 0, ptr %i.al, align 4, !tbaa !14
  store i32 %i.ae, ptr %i.ag, align 4, !tbaa !23
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i21

_ZN11CStringBaseIwE11SetCapacityEi.exit.i21:      ; preds = %bb.e, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i21
  %.04.i.i22 = phi ptr [ %i.am, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i21 ], [ %i.a, %bb.e ] ; 2 uses
  %.0.i.i23 = phi ptr [ %i.ao, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i21 ], [ %i.al, %bb.e ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.04.i.i22, i64 4
  %i.an = load i32, ptr %.04.i.i22, align 4, !tbaa !14 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.i.i23, i64 4
  store i32 %i.an, ptr %.0.i.i23, align 4, !tbaa !14
  %.not.i.i24 = icmp eq i32 %i.an, 0
  br i1 %.not.i.i24, label %_ZN11CStringBaseIwEC2EPKw.exit25, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i21, !llvm.loop !16

_ZN11CStringBaseIwEC2EPKw.exit25:                 ; preds = %_ZN11CStringBaseIwE11SetCapacityEi.exit.i21
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.ad, ptr %i.ap, align 8, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %_ZN11CStringBaseIwEC2EPKw.exit25, %_ZN11CStringBaseIwEC2EPKw.exit19
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN13CFieldPrinter10PrintTitleEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !28
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

._crit_edge:                                      ; preds = %_ZL11PrintString11EAdjustmentiRK11CStringBaseIwE.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZL11PrintString11EAdjustmentiRK11CStringBaseIwE.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZL11PrintString11EAdjustmentiRK11CStringBaseIwE.exit ] ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !25
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !29   ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !38   ; 2 uses
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph.i, label %_ZL11PrintSpacesi.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.03.i = phi i32 [ %i.l, %.lr.ph.i ], [ 0, %bb.b ]
  %i.k = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEc(ptr noundef nonnull align 8 dereferenceable(16) @g_StdOut, i8 noundef signext 32) ; 0 uses
  %i.l = add nuw nsw i32 %.03.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.l, %i.i
  br i1 %exitcond.not.i, label %_ZL11PrintSpacesi.exit, label %.lr.ph.i, !llvm.loop !39

_ZL11PrintSpacesi.exit:                           ; preds = %.lr.ph.i, %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.n = load i32, ptr %i.m, align 8, !tbaa !40
  %i.o = load i32, ptr %i.g, align 8, !tbaa !19
  %i.p = icmp eq i32 %i.o, 3
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 36
  %i.r = load i32, ptr %i.q, align 4
  %i.s = select i1 %i.p, i32 0, i32 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.v = load i32, ptr %i.u, align 8, !tbaa !24
  %i.w = sub nsw i32 %i.s, %i.v                   ; 3 uses
  switch i32 %i.n, label %_ZL11PrintSpacesi.exit.i [
    i32 2, label %bb.d
    i32 1, label %bb.c
  ]

bb.c:                                             ; preds = %_ZL11PrintSpacesi.exit
  %i.x = sdiv i32 %i.w, 2
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZL11PrintSpacesi.exit
  %.0.i = phi i32 [ %i.x, %bb.c ], [ %i.w, %_ZL11PrintSpacesi.exit ] ; 4 uses
  %i.y = icmp sgt i32 %.0.i, 0
  br i1 %i.y, label %.lr.ph.i.i, label %_ZL11PrintSpacesi.exit.i

.lr.ph.i.i:                                       ; preds = %bb.d, %.lr.ph.i.i
  %.03.i.i = phi i32 [ %i.aa, %.lr.ph.i.i ], [ 0, %bb.d ]
  %i.z = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEc(ptr noundef nonnull align 8 dereferenceable(16) @g_StdOut, i8 noundef signext 32) ; 0 uses
  %i.aa = add nuw nsw i32 %.03.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.aa, %.0.i
  br i1 %exitcond.not.i.i, label %_ZL11PrintSpacesi.exit.i, label %.lr.ph.i.i, !llvm.loop !39

_ZL11PrintSpacesi.exit.i:                         ; preds = %.lr.ph.i.i, %bb.d, %_ZL11PrintSpacesi.exit
  %.013.i = phi i32 [ 0, %_ZL11PrintSpacesi.exit ], [ %.0.i, %bb.d ], [ %.0.i, %.lr.ph.i.i ]
  %i.ab = load ptr, ptr %i.t, align 8, !tbaa !22
  %i.ac = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEPKw(ptr noundef nonnull align 8 dereferenceable(16) @g_StdOut, ptr noundef %i.ab) ; 0 uses
  %i.ad = sub nsw i32 %i.w, %.013.i               ; 2 uses
  %i.ae = icmp sgt i32 %i.ad, 0
  br i1 %i.ae, label %.lr.ph.i8.i, label %_ZL11PrintString11EAdjustmentiRK11CStringBaseIwE.exit

.lr.ph.i8.i:                                      ; preds = %_ZL11PrintSpacesi.exit.i, %.lr.ph.i8.i
  %.03.i9.i = phi i32 [ %i.ag, %.lr.ph.i8.i ], [ 0, %_ZL11PrintSpacesi.exit.i ]
  %i.af = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEc(ptr noundef nonnull align 8 dereferenceable(16) @g_StdOut, i8 noundef signext 32) ; 0 uses
  %i.ag = add nuw nsw i32 %.03.i9.i, 1            ; 2 uses
  %exitcond.not.i10.i = icmp eq i32 %i.ag, %i.ad
  br i1 %exitcond.not.i10.i, label %_ZL11PrintString11EAdjustmentiRK11CStringBaseIwE.exit, label %.lr.ph.i8.i, !llvm.loop !39

_ZL11PrintString11EAdjustmentiRK11CStringBaseIwE.exit: ; preds = %.lr.ph.i8.i, %_ZL11PrintSpacesi.exit.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ah = load i32, ptr %i.a, align 4, !tbaa !28
  %i.ai = sext i32 %i.ah to i64
  %i.aj = icmp slt i64 %indvars.iv.next, %i.ai
  br i1 %i.aj, label %bb.b, label %._crit_edge, !llvm.loop !41
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN13CFieldPrinter15PrintTitleLinesEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !28
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph11, label %._crit_edge12

.lr.ph11:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

._crit_edge12:                                    ; preds = %._crit_edge, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph11, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph11 ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !25
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !29   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !38   ; 2 uses
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph.i, label %_ZL11PrintSpacesi.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.03.i = phi i32 [ %i.l, %.lr.ph.i ], [ 0, %bb.b ]
  %i.k = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEc(ptr noundef nonnull align 8 dereferenceable(16) @g_StdOut, i8 noundef signext 32) ; 0 uses
  %i.l = add nuw nsw i32 %.03.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.l, %i.i
  br i1 %exitcond.not.i, label %_ZL11PrintSpacesi.exit, label %.lr.ph.i, !llvm.loop !39

_ZL11PrintSpacesi.exit:                           ; preds = %.lr.ph.i, %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 36 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !42
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %_ZL11PrintSpacesi.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.p = load i32, ptr %i.a, align 4, !tbaa !28
  %i.q = sext i32 %i.p to i64
  %i.r = icmp slt i64 %indvars.iv.next, %i.q
  br i1 %i.r, label %bb.b, label %._crit_edge12, !llvm.loop !43

.lr.ph:                                           ; preds = %_ZL11PrintSpacesi.exit, %.lr.ph
  %.08 = phi i32 [ %i.t, %.lr.ph ], [ 0, %_ZL11PrintSpacesi.exit ]
  %i.s = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEc(ptr noundef nonnull align 8 dereferenceable(16) @g_StdOut, i8 noundef signext 45) ; 0 uses
  %i.t = add nuw nsw i32 %.08, 1                  ; 2 uses
  %i.u = load i32, ptr %i.m, align 4, !tbaa !42
  %i.v = icmp slt i32 %i.t, %i.u
  br i1 %i.v, label %.lr.ph, label %._crit_edge, !llvm.loop !44
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEc(ptr noundef nonnull align 8 dereferenceable(16), i8 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN13CFieldPrinter13PrintItemInfoERK4CArcjb(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %struct._FILETIME, align 4          ; 4 uses
  %i.a = alloca [32 x i8], align 16               ; 4 uses
  %5 = alloca %"class.NWindows::NCOM::CPropVariant", align 8 ; 14 uses
  %6 = alloca %class.CStringBase, align 8         ; 11 uses
  %i.b = alloca i8, align 1                       ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 6 uses
  %7 = alloca %class.CStringBase, align 8         ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !28
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 2
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 5
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %bb.c

bb.b:                                             ; preds = %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.o = load i32, ptr %i.d, align 4, !tbaa !28
  %i.p = sext i32 %i.o to i64
  %i.q = icmp slt i64 %indvars.iv.next, %i.p
  br i1 %i.q, label %bb.c, label %._crit_edge, !llvm.loop !45

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %.0190 = phi i32 [ undef, %.lr.ph ], [ %.7, %bb.b ] ; 4 uses
  %i.r = load ptr, ptr %i.g, align 8, !tbaa !25
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !29   ; 7 uses
  br i1 %3, label %_ZL11PrintSpacesi.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.v = load i32, ptr %i.u, align 8, !tbaa !38   ; 2 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %.lr.ph.i, label %_ZL11PrintSpacesi.exit

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %.03.i = phi i32 [ %i.y, %.lr.ph.i ], [ 0, %bb.d ]
  %i.x = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEc(ptr noundef nonnull align 8 dereferenceable(16) @g_StdOut, i8 noundef signext 32) ; 0 uses
  %i.y = add nuw nsw i32 %.03.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.y, %i.v
  br i1 %exitcond.not.i, label %_ZL11PrintSpacesi.exit, label %.lr.ph.i, !llvm.loop !39

_ZL11PrintSpacesi.exit:                           ; preds = %.lr.ph.i, %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  store i16 0, ptr %5, align 8, !tbaa !46
  store i16 0, ptr %i.h, align 2, !tbaa !49
  %i.z = load i32, ptr %i.t, align 8, !tbaa !19   ; 2 uses
  %i.aa = icmp eq i32 %i.z, 3
  br i1 %i.aa, label %bb.e, label %bb.p

bb.e:                                             ; preds = %_ZL11PrintSpacesi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  store i64 0, ptr %i.n, align 8
  %i.ab = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #15
          to label %bb.f unwind label %bb.h       ; 2 uses

bb.f:                                             ; preds = %bb.e
  store ptr %i.ab, ptr %6, align 8, !tbaa !22
  store i32 0, ptr %i.ab, align 4, !tbaa !14
  store i32 4, ptr %i.i, align 4, !tbaa !23
  %i.ac = invoke noundef i32 @_ZNK4CArc11GetItemPathEjR11CStringBaseIwE(ptr noundef nonnull align 8 dereferenceable(80) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %bb.g unwind label %bb.i       ; 2 uses

bb.g:                                             ; preds = %bb.f
  %.not81 = icmp eq i32 %i.ac, 0
  %i.ad = load ptr, ptr %6, align 8, !tbaa !22    ; 3 uses
  br i1 %.not81, label %bb.j, label %.critedge

bb.h:                                             ; preds = %bb.e
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIwED2Ev.exit97

bb.i:                                             ; preds = %bb.f
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.j:                                             ; preds = %bb.g
  %i.ag = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN8NWindows4NCOM12CPropVariantaSEPKw(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef %i.ad)
          to label %bb.k unwind label %bb.m       ; 0 uses

bb.k:                                             ; preds = %bb.j
  %i.ah = load ptr, ptr %6, align 8, !tbaa !22    ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %_ZN11CStringBaseIwED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZdaPv(ptr noundef nonnull %i.ah) #16
  br label %_ZN11CStringBaseIwED2Ev.exit

_ZN11CStringBaseIwED2Ev.exit:                     ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %bb.s

bb.m:                                             ; preds = %bb.j
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.i
  %.pn = phi { ptr, i32 } [ %i.aj, %bb.m ], [ %i.af, %bb.i ] ; 2 uses
  %i.ak = load ptr, ptr %6, align 8, !tbaa !22    ; 2 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %_ZN11CStringBaseIwED2Ev.exit97, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_ZdaPv(ptr noundef nonnull %i.ak) #16
  br label %_ZN11CStringBaseIwED2Ev.exit97

_ZN11CStringBaseIwED2Ev.exit97:                   ; preds = %bb.o, %bb.n, %bb.h
  %.pn.pn = phi { ptr, i32 } [ %i.ae, %bb.h ], [ %.pn, %bb.n ], [ %.pn, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %_ZN11CStringBaseIwED2Ev.exit114

bb.p:                                             ; preds = %_ZL11PrintSpacesi.exit
  %i.am = load ptr, ptr %1, align 8, !tbaa !50    ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !31
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 64
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = invoke noundef i32 %i.ap(ptr noundef nonnull align 8 dereferenceable(8) %i.am, i32 noundef %2, i32 noundef %i.z, ptr noundef nonnull %5)
          to label %bb.q unwind label %bb.r       ; 2 uses

bb.q:                                             ; preds = %bb.p
  %.not = icmp eq i32 %i.aq, 0
  br i1 %.not, label %bb.s, label %_ZL11PrintSpacesi.exit101.thread155

bb.r:                                             ; preds = %bb.p
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIwED2Ev.exit114

bb.s:                                             ; preds = %_ZN11CStringBaseIwED2Ev.exit, %bb.q
  br i1 %3, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.as = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !22
  %i.au = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEPKw(ptr noundef nonnull align 8 dereferenceable(16) @g_StdOut, ptr noundef %i.at)
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.av = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.au, ptr noundef nonnull @.str)
          to label %bb.w unwind label %bb.v       ; 0 uses

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIwED2Ev.exit114

bb.w:                                             ; preds = %bb.u, %bb.s
  %i.ax = load i32, ptr %i.t, align 8, !tbaa !19  ; 4 uses
  %i.ay = icmp eq i32 %i.ax, 3
  br i1 %i.ay, label %.thread148, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.az = getelementptr inbounds nuw i8, ptr %i.t, i64 36
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !42 ; 4 uses
  %i.bb = icmp eq i32 %i.ax, 9
  %i.bc = load i16, ptr %5, align 8, !tbaa !46    ; 6 uses
  br i1 %i.bb, label %bb.y, label %bb.ag

bb.y:                                             ; preds = %bb.x
  switch i16 %i.bc, label %.thread147 [
    i16 19, label %bb.z
    i16 0, label %bb.z
  ]

bb.z:                                             ; preds = %bb.y, %bb.y
  %i.bd = icmp eq i16 %i.bc, 0
  %i.be = load i32, ptr %i.j, align 8
  %i.bf = select i1 %i.bd, i32 0, i32 %i.be
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.bg = load ptr, ptr %1, align 8, !tbaa !50
  %i.bh = invoke noundef i32 @_Z19IsArchiveItemFolderP10IInArchivejRb(ptr noundef %i.bg, i32 noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.aa unwind label %bb.ab     ; 2 uses

bb.aa:                                            ; preds = %bb.z
  %.not88 = icmp eq i32 %i.bh, 0
  br i1 %.not88, label %bb.ac, label %.critedge96

bb.ab:                                            ; preds = %bb.z
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  %i.bj = load i8, ptr %i.b, align 1, !tbaa !53, !range !55, !noundef !56
  %i.bk = trunc nuw i8 %i.bj to i1
  %8 = insertelement <5 x i32> poison, i32 %i.bf, i64 0
  %9 = shufflevector <5 x i32> %8, <5 x i32> poison, <5 x i32> zeroinitializer
  %10 = and <5 x i32> %9, <i32 16, i32 1, i32 2, i32 4, i32 32> ; 2 uses
  %11 = icmp ne <5 x i32> %10, zeroinitializer
  %12 = icmp eq <5 x i32> %10, zeroinitializer
  %13 = shufflevector <5 x i1> %11, <5 x i1> %12, <5 x i32> <i32 0, i32 6, i32 7, i32 8, i32 9>
  %14 = insertelement <5 x i1> <i1 poison, i1 false, i1 false, i1 false, i1 false>, i1 %i.bk, i64 0
  %15 = or <5 x i1> %13, %14
  %16 = select <5 x i1> %15, <5 x i8> <i8 68, i8 46, i8 46, i8 46, i8 46>, <5 x i8> <i8 46, i8 82, i8 72, i8 83, i8 65>
  store <5 x i8> %16, ptr %i.c, align 8, !tbaa !18
  store i8 0, ptr %i.l, align 1, !tbaa !18
  %i.bl = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(16) @g_StdOut, ptr noundef nonnull %i.c)
          to label %bb.ad unwind label %bb.ae     ; 0 uses

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  br label %_ZL11PrintSpacesi.exit101

bb.ae:                                            ; preds = %bb.ac
  %i.bm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ab
  %.pn89 = phi { ptr, i32 } [ %i.bm, %bb.ae ], [ %i.bi, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  br label %_ZN11CStringBaseIwED2Ev.exit114

bb.ag:                                            ; preds = %bb.x
  %i.bn = icmp eq i16 %i.bc, 0
  br i1 %i.bn, label %bb.ah, label %bb.aj

.thread148:                                       ; preds = %bb.w
  %.pr150 = load i16, ptr %5, align 8, !tbaa !46  ; 2 uses
  %i.bo = icmp eq i16 %.pr150, 0
  br i1 %i.bo, label %.thread160, label %.thread147

bb.ah:                                            ; preds = %bb.ag
  br i1 %3, label %_ZL11PrintSpacesi.exit101.thread, label %bb.ai

.thread160:                                       ; preds = %.thread148
  br i1 %3, label %_ZL11PrintSpacesi.exit101.thread, label %_ZL11PrintSpacesi.exit101.thread155

bb.ai:                                            ; preds = %bb.ah
  %i.bp = icmp sgt i32 %i.ba, 0
  br i1 %i.bp, label %.lr.ph.i98, label %_ZL11PrintSpacesi.exit101.thread155

.lr.ph.i98:                                       ; preds = %bb.ai, %.noexc
  %.03.i99 = phi i32 [ %i.br, %.noexc ], [ 0, %bb.ai ]
  %i.bq = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEc(ptr noundef nonnull align 8 dereferenceable(16) @g_StdOut, i8 noundef signext 32)
          to label %.noexc unwind label %.loopexit177 ; 0 uses

.noexc:                                           ; preds = %.lr.ph.i98
  %i.br = add nuw nsw i32 %.03.i99, 1             ; 2 uses
  %exitcond.not.i100 = icmp eq i32 %i.br, %i.ba
  br i1 %exitcond.not.i100, label %_ZL11PrintSpacesi.exit101, label %.lr.ph.i98, !llvm.loop !39

.loopexit177:                                     ; preds = %.lr.ph.i98
  %lpad.loopexit179 = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIwED2Ev.exit114

.loopexit.split-lp178.loopexit:                   ; preds = %.noexc107, %bb.ao, %bb.an, %bb.am, %_ZL11PrintSpacesi.exit101.thread, %bb.aq
  %lpad.loopexit181 = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIwED2Ev.exit114

.loopexit.split-lp178.loopexit.split-lp:          ; preds = %.invoke
  %lpad.loopexit.split-lp182 = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIwED2Ev.exit114

bb.aj:                                            ; preds = %bb.ag
  %i.bs = icmp eq i32 %i.ax, 12
  br i1 %i.bs, label %bb.ak, label %.thread147

bb.ak:                                            ; preds = %bb.aj
  %.not.i102 = icmp eq i16 %i.bc, 64
  br i1 %.not.i102, label %bb.al, label %.invoke

bb.al:                                            ; preds = %bb.ak
  %.val.i = load i32, ptr %i.j, align 8, !tbaa !57
  %.val5.i = load i32, ptr %i.k, align 4
  %i.bt = icmp ne i32 %.val.i, 0
  %i.bu = icmp ne i32 %.val5.i, 0
  %narrow.i.not.i = select i1 %i.bt, i1 true, i1 %i.bu
  br i1 %narrow.i.not.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.bv = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(16) @g_StdOut, ptr noundef nonnull @.str.72)
          to label %_ZL11PrintSpacesi.exit101 unwind label %.loopexit.split-lp178.loopexit ; 0 uses

bb.an:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.bw = invoke i32 @FileTimeToLocalFileTime(ptr noundef nonnull %i.j, ptr noundef nonnull %4)
          to label %.noexc105 unwind label %.loopexit.split-lp178.loopexit

.noexc105:                                        ; preds = %bb.an
  %.not4.i = icmp eq i32 %i.bw, 0
  br i1 %.not4.i, label %.invoke, label %bb.ao

.invoke:                                          ; preds = %.noexc105, %bb.ak
  %.str.70.sink = phi ptr [ @.str.70, %bb.ak ], [ @.str.71, %.noexc105 ]
  %i.bx = call ptr @__cxa_allocate_exception(i64 8) #17 ; 2 uses
  store ptr %.str.70.sink, ptr %i.bx, align 16, !tbaa !59
  invoke void @__cxa_throw(ptr nonnull %i.bx, ptr nonnull @_ZTIPKc, ptr null) #19
          to label %.cont unwind label %.loopexit.split-lp178.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.ao:                                            ; preds = %.noexc105
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.by = invoke noundef zeroext i1 @_Z23ConvertFileTimeToStringRK9_FILETIMEPcbb(ptr noundef nonnull align 4 dereferenceable(8) %4, ptr noundef nonnull %i.a, i1 noundef zeroext true, i1 noundef zeroext true)
          to label %.noexc107 unwind label %.loopexit.split-lp178.loopexit

.noexc107:                                        ; preds = %bb.ao
  %..str.72.i = select i1 %i.by, ptr %i.a, ptr @.str.72
  %i.bz = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(16) @g_StdOut, ptr noundef nonnull %..str.72.i)
          to label %.noexc108 unwind label %.loopexit.split-lp178.loopexit ; 0 uses

.noexc108:                                        ; preds = %.noexc107
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %_ZL11PrintSpacesi.exit101

.thread147:                                       ; preds = %.thread148, %bb.y, %bb.aj
  %i.ca = phi i16 [ %i.bc, %bb.y ], [ %i.bc, %bb.aj ], [ %.pr150, %.thread148 ]
  %i.cb = phi i32 [ %i.ba, %bb.y ], [ %i.ba, %bb.aj ], [ 0, %.thread148 ] ; 2 uses
  %i.cc = icmp eq i16 %i.ca, 8
  br i1 %i.cc, label %bb.ap, label %bb.az

bb.ap:                                            ; preds = %.thread147
  br i1 %3, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.cd = load ptr, ptr %i.j, align 8, !tbaa !18
  %i.ce = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEPKw(ptr noundef nonnull align 8 dereferenceable(16) @g_StdOut, ptr noundef %i.cd)
          to label %_ZL11PrintSpacesi.exit101.thread unwind label %.loopexit.split-lp178.loopexit ; 0 uses

bb.ar:                                            ; preds = %bb.ap
  %i.cf = getelementptr inbounds nuw i8, ptr %i.t, i64 28
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !61
  %i.ch = load ptr, ptr %i.j, align 8, !tbaa !18  ; 2 uses
  %wcslen.i.i = call i64 @wcslen(ptr %i.ch)
  %i.ci = trunc i64 %wcslen.i.i to i32            ; 3 uses
  %i.cj = add nsw i32 %i.ci, 1                    ; 2 uses
  %i.ck = icmp eq i32 %i.cj, 0
  br i1 %i.ck, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.cl = zext nneg i32 %i.cj to i64
  %i.cm = icmp slt i32 %i.ci, -1
  %i.cn = shl nuw nsw i64 %i.cl, 2
  %i.co = select i1 %i.cm, i64 -1, i64 %i.cn
  %i.cp = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.co) #15
          to label %.noexc109 unwind label %bb.ax ; 2 uses

.noexc109:                                        ; preds = %bb.as
  store i32 0, ptr %i.cp, align 4, !tbaa !14
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i

_ZN11CStringBaseIwE11SetCapacityEi.exit.i:        ; preds = %.noexc109, %bb.ar
  %.sroa.0.0 = phi ptr [ null, %bb.ar ], [ %i.cp, %.noexc109 ] ; 6 uses
  br label %bb.at

bb.at:                                            ; preds = %bb.at, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
  %.04.i.i = phi ptr [ %i.ch, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.cq, %bb.at ] ; 2 uses
  %.0.i.i = phi ptr [ %.sroa.0.0, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.cs, %bb.at ] ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.04.i.i, i64 4
  %i.cr = load i32, ptr %.04.i.i, align 4, !tbaa !14 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  store i32 %i.cr, ptr %.0.i.i, align 4, !tbaa !14
  %.not.i.i = icmp eq i32 %i.cr, 0
  br i1 %.not.i.i, label %_ZN11CStringBaseIwEC2EPKw.exit, label %bb.at, !llvm.loop !16

_ZN11CStringBaseIwEC2EPKw.exit:                   ; preds = %bb.at
  %i.ct = sub nsw i32 %i.cb, %i.ci                ; 3 uses
  switch i32 %i.cg, label %_ZL11PrintSpacesi.exit.i [
    i32 2, label %bb.av
    i32 1, label %bb.au
  ]

bb.au:                                            ; preds = %_ZN11CStringBaseIwEC2EPKw.exit
  %i.cu = sdiv i32 %i.ct, 2
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %_ZN11CStringBaseIwEC2EPKw.exit
  %.0.i = phi i32 [ %i.cu, %bb.au ], [ %i.ct, %_ZN11CStringBaseIwEC2EPKw.exit ] ; 4 uses
  %i.cv = icmp sgt i32 %.0.i, 0
  br i1 %i.cv, label %.lr.ph.i.i, label %_ZL11PrintSpacesi.exit.i

.lr.ph.i.i:                                       ; preds = %bb.av, %.noexc110
  %.03.i.i = phi i32 [ %i.cx, %.noexc110 ], [ 0, %bb.av ]
  %i.cw = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEc(ptr noundef nonnull align 8 dereferenceable(16) @g_StdOut, i8 noundef signext 32)
          to label %.noexc110 unwind label %.loopexit.split-lp.loopexit ; 0 uses

.noexc110:                                        ; preds = %.lr.ph.i.i
  %i.cx = add nuw nsw i32 %.03.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.cx, %.0.i
  br i1 %exitcond.not.i.i, label %_ZL11PrintSpacesi.exit.i, label %.lr.ph.i.i, !llvm.loop !39

_ZL11PrintSpacesi.exit.i:                         ; preds = %.noexc110, %bb.av, %_ZN11CStringBaseIwEC2EPKw.exit
  %.013.i = phi i32 [ 0, %_ZN11CStringBaseIwEC2EPKw.exit ], [ %.0.i, %bb.av ], [ %.0.i, %.noexc110 ]
  %i.cy = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEPKw(ptr noundef nonnull align 8 dereferenceable(16) @g_StdOut, ptr noundef %.sroa.0.0)
          to label %.noexc111 unwind label %.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc111:                                        ; preds = %_ZL11PrintSpacesi.exit.i
  %i.cz = sub nsw i32 %i.ct, %.013.i              ; 2 uses
  %i.da = icmp sgt i32 %i.cz, 0
  br i1 %i.da, label %.lr.ph.i8.i, label %_ZL11PrintString11EAdjustmentiRK11CStringBaseIwE.exit

.lr.ph.i8.i:                                      ; preds = %.noexc111, %.noexc112
  %.03.i9.i = phi i32 [ %i.dc, %.noexc112 ], [ 0, %.noexc111 ]
  %i.db = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEc(ptr noundef nonnull align 8 dereferenceable(16) @g_StdOut, i8 noundef signext 32)
          to label %.noexc112 unwind label %.loopexit ; 0 uses

.noexc112:                                        ; preds = %.lr.ph.i8.i
  %i.dc = add nuw nsw i32 %.03.i9.i, 1            ; 2 uses
  %exitcond.not.i10.i = icmp eq i32 %i.dc, %i.cz
  br i1 %exitcond.not.i10.i, label %_ZL11PrintString11EAdjustmentiRK11CStringBaseIwE.exit, label %.lr.ph.i8.i, !llvm.loop !39

_ZL11PrintString11EAdjustmentiRK11CStringBaseIwE.exit: ; preds = %.noexc112, %.noexc111
  %i.dd = icmp eq ptr %.sroa.0.0, null
  br i1 %i.dd, label %_ZL11PrintSpacesi.exit101, label %bb.aw

bb.aw:                                            ; preds = %_ZL11PrintString11EAdjustmentiRK11CStringBaseIwE.exit
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0.0) #16
  br label %_ZL11PrintSpacesi.exit101

bb.ax:                                            ; preds = %bb.as
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIwED2Ev.exit114

.loopexit:                                        ; preds = %.lr.ph.i8.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %.lr.ph.i.i
  %lpad.loopexit165 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %_ZL11PrintSpacesi.exit.i
  %lpad.loopexit.split-lp166 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit165, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp166, %.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.df = icmp eq ptr %.sroa.0.0, null
  br i1 %i.df, label %_ZN11CStringBaseIwED2Ev.exit114, label %bb.ay

bb.ay:                                            ; preds = %.loopexit.split-lp
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0.0) #16
  br label %_ZN11CStringBaseIwED2Ev.exit114

bb.az:                                            ; preds = %.thread147
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  invoke void @_Z23ConvertPropertyToStringRK14tagPROPVARIANTjb(ptr dead_on_unwind nonnull writable sret(%class.CStringBase) align 8 %7, ptr noundef nonnull align 8 dereferenceable(16) %5, i32 noundef %i.ax, i1 noundef zeroext true)
          to label %bb.ba unwind label %bb.bh

bb.ba:                                            ; preds = %bb.az
  %i.dg = load i32, ptr %i.m, align 8, !tbaa !24  ; 4 uses
  %i.dh = icmp sgt i32 %i.dg, 0
  br i1 %i.dh, label %.lr.ph.i116, label %_ZN11CStringBaseIwE7ReplaceEww.exit126

.lr.ph.i116:                                      ; preds = %bb.ba
  %i.di = load ptr, ptr %7, align 8, !tbaa !22    ; 5 uses
  %i.dj = ptrtoint ptr %i.di to i64               ; 2 uses
  br label %bb.bb

bb.bb:                                            ; preds = %bb.bd, %.lr.ph.i116
  %.021.i = phi i32 [ 0, %.lr.ph.i116 ], [ %i.ea, %bb.bd ]
  %i.dk = zext nneg i32 %.021.i to i64
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %i.dk ; 3 uses
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !14 ; 2 uses
  %i.dn = icmp eq i32 %i.dm, 10
  br i1 %i.dn, label %_ZNK11CStringBaseIwE4FindEwi.exit.i, label %.lr.ph.i.i117

.lr.ph.i.i117:                                    ; preds = %bb.bb, %bb.bc
  %i.do = phi i32 [ %i.dr, %bb.bc ], [ %i.dm, %bb.bb ]
  %.010.i.i = phi ptr [ %i.dq, %bb.bc ], [ %i.dl, %bb.bb ]
  %i.dp = icmp eq i32 %i.do, 0
  br i1 %i.dp, label %.lr.ph.i119.preheader, label %bb.bc

bb.bc:                                            ; preds = %.lr.ph.i.i117
  %i.dq = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4 ; 3 uses
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !14 ; 2 uses
  %i.ds = icmp eq i32 %i.dr, 10
  br i1 %i.ds, label %_ZNK11CStringBaseIwE4FindEwi.exit.i, label %.lr.ph.i.i117, !llvm.loop !62

_ZNK11CStringBaseIwE4FindEwi.exit.i:              ; preds = %bb.bc, %bb.bb
  %.0.lcssa.i.i = phi ptr [ %i.dl, %bb.bb ], [ %i.dq, %bb.bc ]
  %i.dt = ptrtoint ptr %.0.lcssa.i.i to i64
  %i.du = sub i64 %i.dt, %i.dj
  %i.dv = lshr exact i64 %i.du, 2                 ; 2 uses
  %i.dw = trunc i64 %i.dv to i32                  ; 2 uses
  %i.dx = icmp slt i32 %i.dw, 0
  br i1 %i.dx, label %.lr.ph.i119.preheader, label %bb.bd

bb.bd:                                            ; preds = %_ZNK11CStringBaseIwE4FindEwi.exit.i
  %i.dy = and i64 %i.dv, 2147483647
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %i.dy
  store i32 32, ptr %i.dz, align 4, !tbaa !14
  %i.ea = add nuw nsw i32 %i.dw, 1                ; 2 uses
  %i.eb = icmp slt i32 %i.ea, %i.dg
  br i1 %i.eb, label %bb.bb, label %.lr.ph.i119.preheader, !llvm.loop !63

.lr.ph.i119.preheader:                            ; preds = %_ZNK11CStringBaseIwE4FindEwi.exit.i, %bb.bd, %.lr.ph.i.i117
  br label %.lr.ph.i119

.lr.ph.i119:                                      ; preds = %.lr.ph.i119.preheader, %bb.bf
  %.021.i120 = phi i32 [ %i.es, %bb.bf ], [ 0, %.lr.ph.i119.preheader ]
  %i.ec = zext nneg i32 %.021.i120 to i64
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %i.ec ; 3 uses
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !14 ; 2 uses
  %i.ef = icmp eq i32 %i.ee, 13
  br i1 %i.ef, label %_ZNK11CStringBaseIwE4FindEwi.exit.i124, label %.lr.ph.i.i122

.lr.ph.i.i122:                                    ; preds = %.lr.ph.i119, %bb.be
  %i.eg = phi i32 [ %i.ej, %bb.be ], [ %i.ee, %.lr.ph.i119 ]
  %.010.i.i123 = phi ptr [ %i.ei, %bb.be ], [ %i.ed, %.lr.ph.i119 ]
  %i.eh = icmp eq i32 %i.eg, 0
  br i1 %i.eh, label %_ZN11CStringBaseIwE7ReplaceEww.exit126, label %bb.be

bb.be:                                            ; preds = %.lr.ph.i.i122
  %i.ei = getelementptr inbounds nuw i8, ptr %.010.i.i123, i64 4 ; 3 uses
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !14 ; 2 uses
  %i.ek = icmp eq i32 %i.ej, 13
  br i1 %i.ek, label %_ZNK11CStringBaseIwE4FindEwi.exit.i124, label %.lr.ph.i.i122, !llvm.loop !62

_ZNK11CStringBaseIwE4FindEwi.exit.i124:           ; preds = %bb.be, %.lr.ph.i119
  %.0.lcssa.i.i125 = phi ptr [ %i.ed, %.lr.ph.i119 ], [ %i.ei, %bb.be ]
  %i.el = ptrtoint ptr %.0.lcssa.i.i125 to i64
  %i.em = sub i64 %i.el, %i.dj
  %i.en = lshr exact i64 %i.em, 2                 ; 2 uses
  %i.eo = trunc i64 %i.en to i32                  ; 2 uses
  %i.ep = icmp slt i32 %i.eo, 0
  br i1 %i.ep, label %_ZN11CStringBaseIwE7ReplaceEww.exit126, label %bb.bf

bb.bf:                                            ; preds = %_ZNK11CStringBaseIwE4FindEwi.exit.i124
end_hunk_0
