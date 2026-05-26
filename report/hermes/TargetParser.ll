inline.NumInlined: 1116
inline.NumDeleted: 120
begin_hunk_0_@_ZN4llvh7AArch6414getArchExtNameEj:.critedge
.fold.split19:                                    ; preds = %.critedge
  br label %bb.a

.fold.split20:                                    ; preds = %.critedge
  br label %bb.a

.fold.split21:                                    ; preds = %.critedge
  br label %bb.a

.fold.split22:                                    ; preds = %.critedge
  br label %bb.a

.fold.split23:                                    ; preds = %.critedge
  br label %bb.a

.fold.split24:                                    ; preds = %.critedge
  br label %bb.a

.fold.split25:                                    ; preds = %.critedge
  br label %bb.a

.fold.split26:                                    ; preds = %.critedge
  br label %bb.a

.fold.split27:                                    ; preds = %.critedge
  br label %bb.a

.fold.split28:                                    ; preds = %.critedge
  br label %bb.a

.fold.split29:                                    ; preds = %.critedge
  br label %bb.a

.fold.split30:                                    ; preds = %.critedge
  br label %bb.a

.fold.split31:                                    ; preds = %.critedge
  br label %bb.a

.fold.split32:                                    ; preds = %.critedge
  br label %bb.a

.fold.split33:                                    ; preds = %.critedge
  br label %bb.a

.fold.split34:                                    ; preds = %.critedge
  br label %bb.a

.fold.split35:                                    ; preds = %.critedge
  br label %bb.a

.fold.split36:                                    ; preds = %.critedge
  br label %bb.a

bb.a:                                             ; preds = %.critedge, %.fold.split36, %.fold.split35, %.fold.split34, %.fold.split33, %.fold.split32, %.fold.split31, %.fold.split30, %.fold.split29, %.fold.split28, %.fold.split27, %.fold.split26, %.fold.split25, %.fold.split24, %.fold.split23, %.fold.split22, %.fold.split21, %.fold.split20, %.fold.split19, %.fold.split18, %.fold.split
  %.0.ptr16.lcssa = phi ptr [ @_ZN12_GLOBAL__N_119AArch64ARCHExtNamesE, %.critedge ], [ getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_119AArch64ARCHExtNamesE, i64 760), %.fold.split35 ], [ getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_119AArch64ARCHExtNamesE, i64 40), %.fold.split ], [ getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_119AArch64ARCHExtNamesE, i64 80), %.fold.split18 ], [ getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_119AArch64ARCHExtNamesE, i64 120), %.fold.split19 ], [ getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_119AArch64ARCHExtNamesE, i64 160), %.fold.split20 ], [ getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_119AArch64ARCHExtNamesE, i64 200), %.fold.split21 ], [ getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_119AArch64ARCHExtNamesE, i64 240), %.fold.split22 ], [ getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_119AArch64ARCHExtNamesE, i64 280), %.fold.split23 ], [ getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_119AArch64ARCHExtNamesE, i64 320), %.fold.split24 ], [ getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_119AArch64ARCHExtNamesE, i64 360), %.fold.split25 ], [ getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_119AArch64ARCHExtNamesE, i64 400), %.fold.split26 ], [ getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_119AArch64ARCHExtNamesE, i64 440), %.fold.split27 ], [ getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_119AArch64ARCHExtNamesE, i64 480), %.fold.split28 ], [ getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_119AArch64ARCHExtNamesE, i64 520), %.fold.split29 ], [ getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_119AArch64ARCHExtNamesE, i64 560), %.fold.split30 ], [ getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_119AArch64ARCHExtNamesE, i64 600), %.fold.split31 ], [ getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_119AArch64ARCHExtNamesE, i64 640), %.fold.split32 ], [ getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_119AArch64ARCHExtNamesE, i64 680), %.fold.split33 ], [ getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_119AArch64ARCHExtNamesE, i64 720), %.fold.split34 ], [ getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_119AArch64ARCHExtNamesE, i64 800), %.fold.split36 ] ; 2 uses
  %.0.ptr.val = load ptr, ptr %.0.ptr16.lcssa, align 8, !tbaa !316
  %i.a = getelementptr i8, ptr %.0.ptr16.lcssa, i64 8
  %.0.ptr.val10 = load i64, ptr %i.a, align 8, !tbaa !318
  br label %.loopexit

.loopexit:                                        ; preds = %.critedge, %bb.a
  %.sroa.0.1 = phi ptr [ %.0.ptr.val, %bb.a ], [ null, %.critedge ]
  %.sroa.4.1 = phi i64 [ %.0.ptr.val10, %bb.a ], [ 0, %.critedge ]
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.0.1, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.4.1, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden { ptr, i64 } @_ZN4llvh7AArch6417getArchExtFeatureENS_9StringRefE(ptr readonly captures(none) %0, i64 %1) local_unnamed_addr #1 {
bb.a:
  %.not.i37 = icmp ult i64 %1, 2
  br i1 %.not.i37, label %_ZNK4llvh9StringRef10startswithES0_.exit.thread, label %_ZNK4llvh9StringRef10startswithES0_.exit

_ZNK4llvh9StringRef10startswithES0_.exit:         ; preds = %bb.a
  %i.a = load i16, ptr %0, align 1
  %i.b = icmp ne i16 %i.a, 28526
  %i.c = zext i1 %i.b to i32
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_ZNK4llvh9StringRef10startswithES0_.exit.thread72, label %_ZNK4llvh9StringRef10startswithES0_.exit.thread

_ZNK4llvh9StringRef10startswithES0_.exit.thread72: ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.f = add i64 %1, -2                           ; 3 uses
  %i.g = icmp eq i64 %i.f, 0
  br label %bb.b

bb.b:                                             ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit.thread72, %_ZNK4llvh9StringRef6equalsES0_.exit.thread
  %.0.idx87 = phi i64 [ 0, %_ZNK4llvh9StringRef10startswithES0_.exit.thread72 ], [ %.0.add, %_ZNK4llvh9StringRef6equalsES0_.exit.thread ] ; 2 uses
  %.0.ptr88 = getelementptr inbounds nuw i8, ptr @_ZN12_GLOBAL__N_119AArch64ARCHExtNamesE, i64 %.0.idx87 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.0.ptr88, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !319  ; 3 uses
  %.not29 = icmp eq ptr %i.i, null
  br i1 %.not29, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.0.ptr.val = load ptr, ptr %.0.ptr88, align 8, !tbaa !316
  %i.j = getelementptr i8, ptr %.0.ptr88, i64 8
  %.0.ptr.val44 = load i64, ptr %i.j, align 8, !tbaa !318
  %i.k = icmp eq i64 %i.f, %.0.ptr.val44
  br i1 %i.k, label %bb.d, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread

bb.d:                                             ; preds = %bb.c
  br i1 %i.g, label %.loopexit.sink.split, label %_ZNK4llvh9StringRef6equalsES0_.exit

_ZNK4llvh9StringRef6equalsES0_.exit:              ; preds = %bb.d
  %bcmp84 = tail call i32 @bcmp(ptr nonnull %i.e, ptr %.0.ptr.val, i64 %i.f)
  %i.l = icmp eq i32 %bcmp84, 0
  br i1 %i.l, label %.loopexit.sink.split, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread

_ZNK4llvh9StringRef6equalsES0_.exit.thread:       ; preds = %bb.c, %_ZNK4llvh9StringRef6equalsES0_.exit, %bb.b
  %.0.add = add nuw nsw i64 %.0.idx87, 40         ; 2 uses
  %.not.not = icmp eq i64 %.0.add, 840
  br i1 %.not.not, label %_ZNK4llvh9StringRef10startswithES0_.exit.thread, label %bb.b

_ZNK4llvh9StringRef10startswithES0_.exit.thread:  ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.thread, %bb.a, %_ZNK4llvh9StringRef10startswithES0_.exit
  %i.m = icmp eq i64 %1, 0
  br label %bb.e

bb.e:                                             ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit.thread, %_ZNK4llvh9StringRef6equalsES0_.exit38.thread
  %.028.idx89 = phi i64 [ 0, %_ZNK4llvh9StringRef10startswithES0_.exit.thread ], [ %.028.add, %_ZNK4llvh9StringRef6equalsES0_.exit38.thread ] ; 2 uses
  %.028.ptr90 = getelementptr inbounds nuw i8, ptr @_ZN12_GLOBAL__N_119AArch64ARCHExtNamesE, i64 %.028.idx89 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.028.ptr90, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !320  ; 3 uses
  %.not31 = icmp eq ptr %i.o, null
  br i1 %.not31, label %_ZNK4llvh9StringRef6equalsES0_.exit38.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.028.ptr.val = load ptr, ptr %.028.ptr90, align 8, !tbaa !316
  %i.p = getelementptr i8, ptr %.028.ptr90, i64 8
  %.028.ptr.val43 = load i64, ptr %i.p, align 8, !tbaa !318
  %i.q = icmp eq i64 %1, %.028.ptr.val43
  br i1 %i.q, label %bb.g, label %_ZNK4llvh9StringRef6equalsES0_.exit38.thread

bb.g:                                             ; preds = %bb.f
  br i1 %i.m, label %.loopexit.sink.split, label %_ZNK4llvh9StringRef6equalsES0_.exit38

_ZNK4llvh9StringRef6equalsES0_.exit38:            ; preds = %bb.g
  %bcmp85 = tail call i32 @bcmp(ptr %0, ptr %.028.ptr.val, i64 %1)
  %i.r = icmp eq i32 %bcmp85, 0
  br i1 %i.r, label %.loopexit.sink.split, label %_ZNK4llvh9StringRef6equalsES0_.exit38.thread

_ZNK4llvh9StringRef6equalsES0_.exit38.thread:     ; preds = %bb.f, %_ZNK4llvh9StringRef6equalsES0_.exit38, %bb.e
  %.028.add = add nuw nsw i64 %.028.idx89, 40     ; 2 uses
  %.not30 = icmp eq i64 %.028.add, 840
  br i1 %.not30, label %.loopexit, label %bb.e

.loopexit.sink.split:                             ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit, %bb.d, %_ZNK4llvh9StringRef6equalsES0_.exit38, %bb.g
  %.lcssa.sink = phi ptr [ %i.o, %_ZNK4llvh9StringRef6equalsES0_.exit38 ], [ %i.o, %bb.g ], [ %i.i, %bb.d ], [ %i.i, %_ZNK4llvh9StringRef6equalsES0_.exit ] ; 2 uses
  %i.s = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.lcssa.sink) #17
  br label %.loopexit

.loopexit:                                        ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit38.thread, %.loopexit.sink.split
  %.sroa.5.3 = phi i64 [ %i.s, %.loopexit.sink.split ], [ 0, %_ZNK4llvh9StringRef6equalsES0_.exit38.thread ]
  %.sroa.058.3 = phi ptr [ %.lcssa.sink, %.loopexit.sink.split ], [ null, %_ZNK4llvh9StringRef6equalsES0_.exit38.thread ]
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.058.3, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.5.3, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { ptr, i64 } @_ZN4llvh7AArch6413getDefaultCPUENS_9StringRefE(ptr %0, i64 %1) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call noundef i32 @_ZN4llvh7AArch649parseArchENS_9StringRefE(ptr %0, i64 %1)
  switch i32 %i.a, label %.preheader.20 [
    i32 0, label %.critedge16
    i32 1, label %.critedge16.fold.split
  ]

.preheader.20:                                    ; preds = %bb.a
  br label %.critedge16

.critedge16.fold.split:                           ; preds = %bb.a
  br label %.critedge16

.critedge16:                                      ; preds = %bb.a, %.critedge16.fold.split, %.preheader.20
  %.sroa.0.0 = phi ptr [ @.str, %.preheader.20 ], [ null, %bb.a ], [ @.str.68, %.critedge16.fold.split ]
  %.sroa.5.0 = phi i64 [ 7, %.preheader.20 ], [ 0, %bb.a ], [ 10, %.critedge16.fold.split ]
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.5.0, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN4llvh7AArch649parseArchENS_9StringRefE(ptr %0, i64 %1) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call { ptr, i64 } @_ZN4llvh3ARM20getCanonicalArchNameENS_9StringRefE(ptr %0, i64 %1) ; 2 uses
  %i.b = extractvalue { ptr, i64 } %i.a, 0        ; 3 uses
  %i.c = extractvalue { ptr, i64 } %i.a, 1        ; 2 uses
  %i.d = icmp ugt i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %_ZN4llvh7AArch6416checkArchVersionENS_9StringRefE.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.e = load i8, ptr %i.b, align 1, !tbaa !321
  %i.f = icmp eq i8 %i.e, 118
  br i1 %i.f, label %bb.c, label %_ZN4llvh7AArch6416checkArchVersionENS_9StringRefE.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !321   ; 2 uses
  %i.i = sext i8 %i.h to i32
  %i.j = add nsw i32 %i.i, -58
  %or.cond.a = icmp ult i32 %i.j, -10
  %2 = icmp slt i8 %i.h, 56
  %or.cond = or i1 %2, %or.cond.a
  br i1 %or.cond, label %_ZN4llvh7AArch6416checkArchVersionENS_9StringRefE.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = tail call fastcc { ptr, i64 } @_ZL14getArchSynonymN4llvh9StringRefE(ptr nonnull %i.b, i64 %i.c)
  %.fr = freeze { ptr, i64 } %i.k                 ; 2 uses
  %i.l = extractvalue { ptr, i64 } %.fr, 0        ; 7 uses
  %i.m = extractvalue { ptr, i64 } %.fr, 1        ; 16 uses
  %i.n = icmp eq i64 %i.m, 0
  %i.o = sub i64 0, %i.m                          ; 7 uses
  br i1 %i.n, label %_ZN4llvh7AArch6416checkArchVersionENS_9StringRefE.exit.thread, label %.split.preheader

.split.preheader:                                 ; preds = %bb.d
  %.not.i = icmp ugt i64 %i.m, 7
  br i1 %.not.i, label %_ZNK4llvh9StringRef8endswithES0_.exit.thread, label %_ZNK4llvh9StringRef8endswithES0_.exit

_ZNK4llvh9StringRef8endswithES0_.exit:            ; preds = %.split.preheader
  %i.p = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @.str.83, i64 7), i64 %i.o
  %bcmp = tail call i32 @bcmp(ptr nonnull %i.p, ptr %i.l, i64 %i.m)
  %i.q = icmp eq i32 %bcmp, 0
  br i1 %i.q, label %_ZN4llvh7AArch6416checkArchVersionENS_9StringRefE.exit.thread.loopexit.split.loop.exit, label %_ZNK4llvh9StringRef8endswithES0_.exit.thread

_ZNK4llvh9StringRef8endswithES0_.exit.thread:     ; preds = %.split.preheader, %_ZNK4llvh9StringRef8endswithES0_.exit
  %.not.i.1 = icmp ugt i64 %i.m, 7
  br i1 %.not.i.1, label %_ZNK4llvh9StringRef8endswithES0_.exit.thread.1, label %_ZNK4llvh9StringRef8endswithES0_.exit.1

_ZNK4llvh9StringRef8endswithES0_.exit.1:          ; preds = %_ZNK4llvh9StringRef8endswithES0_.exit.thread
  %i.r = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @.str.226, i64 7), i64 %i.o
  %bcmp.1 = tail call i32 @bcmp(ptr nonnull %i.r, ptr %i.l, i64 %i.m)
  %i.s = icmp eq i32 %bcmp.1, 0
  br i1 %i.s, label %_ZN4llvh7AArch6416checkArchVersionENS_9StringRefE.exit.thread.loopexit.split.loop.exit, label %_ZNK4llvh9StringRef8endswithES0_.exit.thread.1

_ZNK4llvh9StringRef8endswithES0_.exit.thread.1:   ; preds = %_ZNK4llvh9StringRef8endswithES0_.exit.1, %_ZNK4llvh9StringRef8endswithES0_.exit.thread
  %.not.i.2 = icmp ugt i64 %i.m, 9
  br i1 %.not.i.2, label %_ZNK4llvh9StringRef8endswithES0_.exit.thread.2, label %_ZNK4llvh9StringRef8endswithES0_.exit.2

_ZNK4llvh9StringRef8endswithES0_.exit.2:          ; preds = %_ZNK4llvh9StringRef8endswithES0_.exit.thread.1
  %i.t = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @.str.229, i64 9), i64 %i.o
  %bcmp.2 = tail call i32 @bcmp(ptr nonnull %i.t, ptr %i.l, i64 %i.m)
  %i.u = icmp eq i32 %bcmp.2, 0
  br i1 %i.u, label %_ZN4llvh7AArch6416checkArchVersionENS_9StringRefE.exit.thread.loopexit.split.loop.exit, label %_ZNK4llvh9StringRef8endswithES0_.exit.thread.2

_ZNK4llvh9StringRef8endswithES0_.exit.thread.2:   ; preds = %_ZNK4llvh9StringRef8endswithES0_.exit.2, %_ZNK4llvh9StringRef8endswithES0_.exit.thread.1
  %.not.i.3 = icmp ugt i64 %i.m, 9
  br i1 %.not.i.3, label %_ZNK4llvh9StringRef8endswithES0_.exit.thread.3, label %_ZNK4llvh9StringRef8endswithES0_.exit.3

_ZNK4llvh9StringRef8endswithES0_.exit.3:          ; preds = %_ZNK4llvh9StringRef8endswithES0_.exit.thread.2
  %i.v = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @.str.232, i64 9), i64 %i.o
  %bcmp.3 = tail call i32 @bcmp(ptr nonnull %i.v, ptr %i.l, i64 %i.m)
  %i.w = icmp eq i32 %bcmp.3, 0
  br i1 %i.w, label %_ZN4llvh7AArch6416checkArchVersionENS_9StringRefE.exit.thread.loopexit.split.loop.exit, label %_ZNK4llvh9StringRef8endswithES0_.exit.thread.3

_ZNK4llvh9StringRef8endswithES0_.exit.thread.3:   ; preds = %_ZNK4llvh9StringRef8endswithES0_.exit.3, %_ZNK4llvh9StringRef8endswithES0_.exit.thread.2
  %.not.i.4 = icmp ugt i64 %i.m, 9
  br i1 %.not.i.4, label %_ZNK4llvh9StringRef8endswithES0_.exit.thread.4, label %_ZNK4llvh9StringRef8endswithES0_.exit.4

_ZNK4llvh9StringRef8endswithES0_.exit.4:          ; preds = %_ZNK4llvh9StringRef8endswithES0_.exit.thread.3
  %i.x = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @.str.235, i64 9), i64 %i.o
  %bcmp.4 = tail call i32 @bcmp(ptr nonnull %i.x, ptr %i.l, i64 %i.m)
  %i.y = icmp eq i32 %bcmp.4, 0
  br i1 %i.y, label %_ZN4llvh7AArch6416checkArchVersionENS_9StringRefE.exit.thread.loopexit.split.loop.exit, label %_ZNK4llvh9StringRef8endswithES0_.exit.thread.4

_ZNK4llvh9StringRef8endswithES0_.exit.thread.4:   ; preds = %_ZNK4llvh9StringRef8endswithES0_.exit.4, %_ZNK4llvh9StringRef8endswithES0_.exit.thread.3
  %.not.i.5 = icmp ugt i64 %i.m, 9
  br i1 %.not.i.5, label %_ZNK4llvh9StringRef8endswithES0_.exit.thread.5, label %_ZNK4llvh9StringRef8endswithES0_.exit.5

_ZNK4llvh9StringRef8endswithES0_.exit.5:          ; preds = %_ZNK4llvh9StringRef8endswithES0_.exit.thread.4
  %i.z = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @.str.238, i64 9), i64 %i.o
  %bcmp.5 = tail call i32 @bcmp(ptr nonnull %i.z, ptr %i.l, i64 %i.m)
  %i.aa = icmp eq i32 %bcmp.5, 0
  br i1 %i.aa, label %_ZN4llvh7AArch6416checkArchVersionENS_9StringRefE.exit.thread.loopexit.split.loop.exit, label %_ZNK4llvh9StringRef8endswithES0_.exit.thread.5

_ZNK4llvh9StringRef8endswithES0_.exit.thread.5:   ; preds = %_ZNK4llvh9StringRef8endswithES0_.exit.5, %_ZNK4llvh9StringRef8endswithES0_.exit.thread.4
  %.not.i.6 = icmp ugt i64 %i.m, 9
  br i1 %.not.i.6, label %_ZN4llvh7AArch6416checkArchVersionENS_9StringRefE.exit.thread, label %_ZNK4llvh9StringRef8endswithES0_.exit.6

_ZNK4llvh9StringRef8endswithES0_.exit.6:          ; preds = %_ZNK4llvh9StringRef8endswithES0_.exit.thread.5
  %i.ab = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @.str.241, i64 9), i64 %i.o
  %bcmp.6 = tail call i32 @bcmp(ptr nonnull %i.ab, ptr %i.l, i64 %i.m)
  %i.ac = icmp eq i32 %bcmp.6, 0
  br i1 %i.ac, label %_ZN4llvh7AArch6416checkArchVersionENS_9StringRefE.exit.thread.loopexit.split.loop.exit, label %_ZN4llvh7AArch6416checkArchVersionENS_9StringRefE.exit.thread

_ZN4llvh7AArch6416checkArchVersionENS_9StringRefE.exit.thread.loopexit.split.loop.exit: ; preds = %_ZNK4llvh9StringRef8endswithES0_.exit.6, %_ZNK4llvh9StringRef8endswithES0_.exit.5, %_ZNK4llvh9StringRef8endswithES0_.exit.4, %_ZNK4llvh9StringRef8endswithES0_.exit.3, %_ZNK4llvh9StringRef8endswithES0_.exit.2, %_ZNK4llvh9StringRef8endswithES0_.exit.1, %_ZNK4llvh9StringRef8endswithES0_.exit
  %.021.ptr.lcssa = phi ptr [ @_ZN12_GLOBAL__N_116AArch64ARCHNamesE, %_ZNK4llvh9StringRef8endswithES0_.exit ], [ getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_116AArch64ARCHNamesE, i64 64), %_ZNK4llvh9StringRef8endswithES0_.exit.1 ], [ getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_116AArch64ARCHNamesE, i64 128), %_ZNK4llvh9StringRef8endswithES0_.exit.2 ], [ getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_116AArch64ARCHNamesE, i64 192), %_ZNK4llvh9StringRef8endswithES0_.exit.3 ], [ getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_116AArch64ARCHNamesE, i64 256), %_ZNK4llvh9StringRef8endswithES0_.exit.4 ], [ getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_116AArch64ARCHNamesE, i64 320), %_ZNK4llvh9StringRef8endswithES0_.exit.5 ], [ getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_116AArch64ARCHNamesE, i64 384), %_ZNK4llvh9StringRef8endswithES0_.exit.6 ]
  %.sroa.527.0..021.ptr.sroa_idx.le = getelementptr inbounds nuw i8, ptr %.021.ptr.lcssa, i64 56
  %.sroa.527.0.copyload.le36 = load i32, ptr %.sroa.527.0..021.ptr.sroa_idx.le, align 8, !tbaa !322
  br label %_ZN4llvh7AArch6416checkArchVersionENS_9StringRefE.exit.thread

_ZN4llvh7AArch6416checkArchVersionENS_9StringRefE.exit.thread: ; preds = %bb.d, %_ZNK4llvh9StringRef8endswithES0_.exit.thread.5, %_ZNK4llvh9StringRef8endswithES0_.exit.6, %_ZN4llvh7AArch6416checkArchVersionENS_9StringRefE.exit.thread.loopexit.split.loop.exit, %bb.b, %bb.c, %bb.a
  %.4 = phi i32 [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ], [ 0, %_ZNK4llvh9StringRef8endswithES0_.exit.thread.5 ], [ %.sroa.527.0.copyload.le36, %_ZN4llvh7AArch6416checkArchVersionENS_9StringRefE.exit.thread.loopexit.split.loop.exit ], [ 0, %_ZNK4llvh9StringRef8endswithES0_.exit.6 ], [ 0, %bb.d ]
  ret i32 %.4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef range(i32 0, 10) i32 @_ZN4llvh7AArch6416checkArchVersionENS_9StringRefE(ptr readonly captures(none) %0, i64 %1) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp ugt i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %0, align 1, !tbaa !321
  %i.c = icmp eq i8 %i.b, 118
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.e = load i8, ptr %i.d, align 1, !tbaa !321
  %i.f = sext i8 %i.e to i32
  %isdigittmp = add nsw i32 %i.f, -48             ; 2 uses
  %isdigit = icmp ult i32 %isdigittmp, 10
  %spec.select = select i1 %isdigit, i32 %isdigittmp, i32 0
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.a ], [ %spec.select, %bb.c ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { ptr, i64 } @_ZN4llvh3ARM20getCanonicalArchNameENS_9StringRefE(ptr %0, i64 %1) local_unnamed_addr #3 {
bb.a:
  %2 = alloca %"class.llvh::StringRef", align 8   ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  store ptr %0, ptr %2, align 8, !tbaa !29
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  store i64 %1, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !30
  %.not.i35 = icmp ult i64 %1, 5
  br i1 %.not.i35, label %_ZNK4llvh9StringRef10startswithES0_.exit36.thread, label %_ZNK4llvh9StringRef10startswithES0_.exit36

_ZNK4llvh9StringRef10startswithES0_.exit36:       ; preds = %bb.a
  %i.a = load i32, ptr %0, align 1
  %i.b = xor i32 %i.a, 913142369
  %i.c = getelementptr i8, ptr %0, i64 4
  %i.d = load i8, ptr %i.c, align 1
  %i.e = zext i8 %i.d to i32
  %i.f = xor i32 %i.e, 52
  %i.g = or i32 %i.b, %i.f
  %i.h = icmp ne i32 %i.g, 0
  %i.i = zext i1 %i.h to i32
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %_ZNK4llvh9StringRef10startswithES0_.exit36.thread139, label %_ZNK4llvh9StringRef10startswithES0_.exit34.thread177

_ZNK4llvh9StringRef10startswithES0_.exit36.thread: ; preds = %bb.a
  %.not.i33 = icmp samesign ult i64 %1, 3
  br i1 %.not.i33, label %_ZNK4llvh9StringRef10startswithES0_.exit.thread, label %_ZNK4llvh9StringRef10startswithES0_.exit34

_ZNK4llvh9StringRef10startswithES0_.exit34:       ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit36.thread
  %i.k = load i16, ptr %0, align 1
  %i.l = xor i16 %i.k, 29281
  %i.m = getelementptr i8, ptr %0, i64 2
  %i.n = load i8, ptr %i.m, align 1
  %i.o = zext i8 %i.n to i16
  %i.p = xor i16 %i.o, 109
  %i.q = or i16 %i.l, %i.p
  %i.r = icmp ne i16 %i.q, 0
  %i.s = zext i1 %i.r to i32
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %_ZNK4llvh9StringRef10startswithES0_.exit36.thread139, label %_ZNK4llvh9StringRef10startswithES0_.exit32.thread

_ZNK4llvh9StringRef10startswithES0_.exit34.thread177: ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit36
  %i.u = load i16, ptr %0, align 1
  %i.v = xor i16 %i.u, 29281
  %i.w = getelementptr i8, ptr %0, i64 2
  %i.x = load i8, ptr %i.w, align 1
  %i.y = zext i8 %i.x to i16
  %i.z = xor i16 %i.y, 109
  %i.aa = or i16 %i.v, %i.z
  %i.ab = icmp ne i16 %i.aa, 0
  %i.ac = zext i1 %i.ab to i32
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %_ZNK4llvh9StringRef10startswithES0_.exit36.thread139, label %_ZNK4llvh9StringRef10startswithES0_.exit32

_ZNK4llvh9StringRef10startswithES0_.exit32:       ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit34.thread177
  %i.ae = load i32, ptr %0, align 1
  %i.af = xor i32 %i.ae, 1836410996
  %i.ag = getelementptr i8, ptr %0, i64 4
  %i.ah = load i8, ptr %i.ag, align 1
  %i.ai = zext i8 %i.ah to i32
  %i.aj = xor i32 %i.ai, 98
  %i.ak = or i32 %i.af, %i.aj
  %i.al = icmp ne i32 %i.ak, 0
  %i.am = zext i1 %i.al to i32
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %_ZNK4llvh9StringRef10startswithES0_.exit36.thread139, label %_ZNK4llvh9StringRef10startswithES0_.exit32.thread

_ZNK4llvh9StringRef10startswithES0_.exit32.thread: ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit34, %_ZNK4llvh9StringRef10startswithES0_.exit32
  %.not.i = icmp ult i64 %1, 7
  br i1 %.not.i, label %_ZNK4llvh9StringRef8endswithES0_.exit, label %_ZNK4llvh9StringRef10startswithES0_.exit

_ZNK4llvh9StringRef10startswithES0_.exit:         ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit32.thread
  %i.ao = load i32, ptr %0, align 1
  %i.ap = xor i32 %i.ao, 1668440417
  %i.aq = getelementptr i8, ptr %0, i64 3
  %i.ar = load i32, ptr %i.aq, align 1
  %i.as = xor i32 %i.ar, 875980899
  %i.at = or i32 %i.ap, %i.as
  %i.au = icmp ne i32 %i.at, 0
  %i.av = zext i1 %i.au to i32
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %_ZNK4llvh9StringRef10startswithES0_.exit.thread145, label %_ZNK4llvh9StringRef8endswithES0_.exit

_ZNK4llvh9StringRef10startswithES0_.exit.thread145: ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit
end_hunk_0
begin_hunk_1_@_ZN4llvh3ARM10parseHWDivENS_9StringRefE:bb.a
  %i.aw = xor i16 %i.av, 109
  %i.ax = or i16 %i.as, %i.aw
  %i.ay = icmp ne i16 %i.ax, 0
  %i.az = zext i1 %i.ay to i32
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %.thread.split.loop.exit, label %.thread

.thread.split.loop.exit:                          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.i.i, %_ZNK4llvh9StringRef6equalsES0_.exit.3, %_ZNK4llvh9StringRef6equalsES0_.exit.2, %_ZNK4llvh9StringRef6equalsES0_.exit.1, %_ZNK4llvh9StringRef6equalsES0_.exit
  %.014.ptr.lcssa31 = phi ptr [ @_ZN12_GLOBAL__N_110HWDivNamesE, %_ZNK4llvh9StringRef6equalsES0_.exit ], [ getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_110HWDivNamesE, i64 24), %_ZNK4llvh9StringRef6equalsES0_.exit.1 ], [ getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_110HWDivNamesE, i64 48), %_ZNK4llvh9StringRef6equalsES0_.exit.2 ], [ getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_110HWDivNamesE, i64 72), %_ZNK4llvh9StringRef6equalsES0_.exit.3 ], [ getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_110HWDivNamesE, i64 96), %_ZNK4llvh9StringRef6equalsES0_.exit.i.i ]
  %.sroa.5.0..014.ptr.sroa_idx.le = getelementptr inbounds nuw i8, ptr %.014.ptr.lcssa31, i64 16
  %.sroa.5.0.copyload.le26 = load i32, ptr %.sroa.5.0..014.ptr.sroa_idx.le, align 8, !tbaa !3
  br label %.thread

.thread:                                          ; preds = %bb.a, %_ZNK4llvh9StringRef6equalsES0_.exit.3, %_ZNK4llvh9StringRef6equalsES0_.exit.2, %_ZNK4llvh9StringRef6equalsES0_.exit.1, %_ZNK4llvh9StringRef6equalsES0_.exit.i.i, %_ZNK4llvh9StringRef6equalsES0_.exit, %.thread.split.loop.exit
  %spec.select = phi i32 [ %.sroa.5.0.copyload.le26, %.thread.split.loop.exit ], [ 0, %_ZNK4llvh9StringRef6equalsES0_.exit ], [ 0, %_ZNK4llvh9StringRef6equalsES0_.exit.i.i ], [ 0, %_ZNK4llvh9StringRef6equalsES0_.exit.1 ], [ 0, %_ZNK4llvh9StringRef6equalsES0_.exit.2 ], [ 0, %_ZNK4llvh9StringRef6equalsES0_.exit.3 ], [ 0, %bb.a ]
  ret i32 %spec.select
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i32 @_ZN4llvh3ARM8parseFPUENS_9StringRefE(ptr readonly captures(none) %0, i64 %1) local_unnamed_addr #1 {
bb.a:
  switch i64 %1, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread.4 [
    i64 3, label %_ZNK4llvh9StringRef6equalsES0_.exit.i.i.i
    i64 4, label %_ZNK4llvh9StringRef6equalsES0_.exit.i.i100.i
    i64 8, label %_ZNK4llvh9StringRef6equalsES0_.exit.i.i.i.i
    i64 10, label %_ZNK4llvh9StringRef6equalsES0_.exit.i14.i83.i
    i64 12, label %_ZNK4llvh9StringRef6equalsES0_.exit.i.i88.i
    i64 11, label %_ZNK4llvh9StringRef6equalsES0_.exit.i.i71.i
    i64 7, label %_ZNK4llvh9StringRef6equalsES0_.exit
    i64 5, label %_ZNK4llvh9StringRef6equalsES0_.exit.3
  ]

_ZNK4llvh9StringRef6equalsES0_.exit.i.i.i:        ; preds = %bb.a
  %i.a = load i16, ptr %0, align 1
  %i.b = xor i16 %i.a, 28774
  %i.c = getelementptr i8, ptr %0, i64 2
  %i.d = load i8, ptr %i.c, align 1
  %i.e = zext i8 %i.d to i16
  %i.f = xor i16 %i.e, 97
  %i.g = or i16 %i.b, %i.f
  %i.h = icmp ne i16 %i.g, 0
  %i.i = zext i1 %i.h to i32
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %_ZNK4llvh9StringRef6equalsES0_.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit.2

_ZNK4llvh9StringRef6equalsES0_.exit.i.i100.i:     ; preds = %bb.a
  %i.k = load i32, ptr %0, align 1
  %i.l = icmp ne i32 %i.k, 845508710
  %i.m = zext i1 %i.l to i32
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %_ZNK4llvh9StringRef6equalsES0_.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit.i14.i.i.i

_ZNK4llvh9StringRef6equalsES0_.exit.i14.i.i.i:    ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.i.i100.i
  %i.o = load i32, ptr %0, align 1
  %i.p = icmp ne i32 %i.o, 862285926
  %i.q = zext i1 %i.p to i32
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %_ZNK4llvh9StringRef6equalsES0_.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit.i45.i

_ZNK4llvh9StringRef6equalsES0_.exit.i.i.i.i:      ; preds = %bb.a
  %i.s = load i64, ptr %0, align 1
  %i.t = icmp ne i64 %i.s, 7738144524802089325
  %i.u = zext i1 %i.t to i32
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %_ZNK4llvh9StringRef6equalsES0_.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit.i24.i

_ZNK4llvh9StringRef6equalsES0_.exit.i45.i:        ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.i14.i.i.i
  %i.w = load i32, ptr %0, align 1
  %i.x = icmp ne i32 %i.w, 846227062
  %i.y = zext i1 %i.x to i32
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %_ZNK4llvh9StringRef6equalsES0_.exit.3, label %_ZNK4llvh9StringRef6equalsES0_.exit.i38.i

_ZNK4llvh9StringRef6equalsES0_.exit.i38.i:        ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.i45.i
  %i.aa = load i32, ptr %0, align 1
  %i.ab = icmp ne i32 %i.aa, 863004278
  %i.ac = zext i1 %i.ab to i32
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %_ZNK4llvh9StringRef6equalsES0_.exit.3, label %_ZNK4llvh9StringRef6equalsES0_.exit.i31.i

_ZNK4llvh9StringRef6equalsES0_.exit.i31.i:        ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.i38.i
  %i.ae = load i32, ptr %0, align 1
  %i.af = icmp ne i32 %i.ae, 879781494
  %i.ag = zext i1 %i.af to i32
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %_ZNK4llvh9StringRef6equalsES0_.exit.3, label %_ZNK4llvh9StringRef6equalsES0_.exit.1

_ZNK4llvh9StringRef6equalsES0_.exit.i24.i:        ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.i.i.i.i
  %i.ai = load i64, ptr %0, align 1
  %i.aj = icmp ne i64 %i.ai, 3905012497206240886
  %i.ak = zext i1 %i.aj to i32
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %_ZNK4llvh9StringRef6equalsES0_.exit.6, label %_ZNK4llvh9StringRef6equalsES0_.exit.i17.i

_ZNK4llvh9StringRef6equalsES0_.exit.i17.i:        ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.i24.i
  %i.am = load i64, ptr %0, align 1
  %i.an = icmp ne i64 %i.am, 3905012497223018102
  %i.ao = zext i1 %i.an to i32
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %_ZNK4llvh9StringRef6equalsES0_.exit.6, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread.4

_ZNK4llvh9StringRef6equalsES0_.exit.i14.i83.i:    ; preds = %bb.a
  %i.aq = load i64, ptr %0, align 1
  %i.ar = xor i64 %i.aq, 7218549417726734438
  %i.as = getelementptr i8, ptr %0, i64 8
  %i.at = load i16, ptr %i.as, align 1
  %i.au = zext i16 %i.at to i64
  %i.av = xor i64 %i.au, 13873
  %i.aw = or i64 %i.ar, %i.av
  %i.ax = icmp ne i64 %i.aw, 0
  %i.ay = zext i1 %i.ax to i32
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %_ZNK4llvh9StringRef6equalsES0_.exit.12, label %_ZNK4llvh9StringRef6equalsES0_.exit.i14.i66.i

_ZNK4llvh9StringRef6equalsES0_.exit.i.i88.i:      ; preds = %bb.a
  %i.ba = load i64, ptr %0, align 1
  %i.bb = xor i64 %i.ba, 8102869857918281334
  %i.bc = getelementptr i8, ptr %0, i64 8
  %i.bd = load i32, ptr %i.bc, align 1
  %i.be = zext i32 %i.bd to i64
  %i.bf = xor i64 %i.be, 909206573
  %i.bg = or i64 %i.bb, %i.bf
  %i.bh = icmp ne i64 %i.bg, 0
  %i.bi = zext i1 %i.bh to i32
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %_ZNK4llvh9StringRef6equalsES0_.exit.12, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread.4

_ZNK4llvh9StringRef6equalsES0_.exit.i14.i66.i:    ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.i14.i83.i
  %i.bk = load i64, ptr %0, align 1
  %i.bl = xor i64 %i.bk, 7218549353302224998
  %i.bm = getelementptr i8, ptr %0, i64 8
  %i.bn = load i16, ptr %i.bm, align 1
  %i.bo = zext i16 %i.bn to i64
  %i.bp = xor i64 %i.bo, 13873
  %i.bq = or i64 %i.bl, %i.bp
  %i.br = icmp ne i64 %i.bq, 0
  %i.bs = zext i1 %i.br to i32
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %_ZNK4llvh9StringRef6equalsES0_.exit.6, label %_ZNK4llvh9StringRef6equalsES0_.exit.i10.i

_ZNK4llvh9StringRef6equalsES0_.exit.i.i71.i:      ; preds = %bb.a
  %i.bu = load i64, ptr %0, align 1
  %i.bv = xor i64 %i.bu, 3274227074414833766
  %i.bw = getelementptr i8, ptr %0, i64 3
  %i.bx = load i64, ptr %i.bw, align 1
  %i.by = xor i64 %i.bx, 3905012498228849972
  %i.bz = or i64 %i.bv, %i.by
  %i.ca = icmp ne i64 %i.bz, 0
  %i.cb = zext i1 %i.ca to i32
  %i.cc = icmp eq i32 %i.cb, 0
  br i1 %i.cc, label %_ZNK4llvh9StringRef6equalsES0_.exit.6, label %_ZNK4llvh9StringRef6equalsES0_.exit.i.i57.i

_ZNK4llvh9StringRef6equalsES0_.exit.i10.i:        ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.i14.i66.i
  %i.cd = load i64, ptr %0, align 1
  %i.ce = xor i64 %i.cd, 7218549417726799974
  %i.cf = getelementptr i8, ptr %0, i64 8
  %i.cg = load i16, ptr %i.cf, align 1
  %i.ch = zext i16 %i.cg to i64
  %i.ci = xor i64 %i.ch, 13873
  %i.cj = or i64 %i.ce, %i.ci
  %i.ck = icmp ne i64 %i.cj, 0
  %i.cl = zext i1 %i.ck to i32
  %i.cm = icmp eq i32 %i.cl, 0
  br i1 %i.cm, label %_ZNK4llvh9StringRef6equalsES0_.exit.12, label %_ZNK4llvh9StringRef6equalsES0_.exit.i14.i.i

_ZNK4llvh9StringRef6equalsES0_.exit.i14.i.i:      ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.i10.i
  %i.cn = load i64, ptr %0, align 1
  %i.co = xor i64 %i.cn, 7218549353302290534
  %i.cp = getelementptr i8, ptr %0, i64 8
  %i.cq = load i16, ptr %i.cp, align 1
  %i.cr = zext i16 %i.cq to i64
  %i.cs = xor i64 %i.cr, 13873
  %i.ct = or i64 %i.co, %i.cs
  %i.cu = icmp ne i64 %i.ct, 0
  %i.cv = zext i1 %i.cu to i32
  %i.cw = icmp eq i32 %i.cv, 0
  br i1 %i.cw, label %_ZNK4llvh9StringRef6equalsES0_.exit.13, label %_ZNK4llvh9StringRef6equalsES0_.exit.i.i

_ZNK4llvh9StringRef6equalsES0_.exit.i.i57.i:      ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.i.i71.i
  %i.cx = load i64, ptr %0, align 1
  %i.cy = xor i64 %i.cx, 3274227074431610982
  %i.cz = getelementptr i8, ptr %0, i64 3
  %i.da = load i64, ptr %i.cz, align 1
  %i.db = xor i64 %i.da, 3905012498228849973
  %i.dc = or i64 %i.cy, %i.db
  %i.dd = icmp ne i64 %i.dc, 0
  %i.de = zext i1 %i.dd to i32
  %i.df = icmp eq i32 %i.de, 0
  br i1 %i.df, label %_ZNK4llvh9StringRef6equalsES0_.exit.13, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread.4

_ZNK4llvh9StringRef6equalsES0_.exit.i.i:          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.i14.i.i
  %i.dg = load i64, ptr %0, align 1
  %i.dh = xor i64 %i.dg, 8099290917370815854
  %i.di = getelementptr i8, ptr %0, i64 8
  %i.dj = load i16, ptr %i.di, align 1
  %i.dk = zext i16 %i.dj to i64
  %i.dl = xor i64 %i.dk, 13174
  %i.dm = or i64 %i.dh, %i.dl
  %i.dn = icmp ne i64 %i.dm, 0
  %i.do = zext i1 %i.dn to i32
  %i.dp = icmp eq i32 %i.do, 0
  br i1 %i.dp, label %_ZNK4llvh9StringRef6equalsES0_.exit.1, label %_ZNK4llvh9StringRef6equalsES0_.exit.5

_ZNK4llvh9StringRef6equalsES0_.exit:              ; preds = %bb.a, %_ZNK4llvh9StringRef6equalsES0_.exit.i.i100.i, %_ZNK4llvh9StringRef6equalsES0_.exit.i.i.i, %_ZNK4llvh9StringRef6equalsES0_.exit.i.i.i.i, %_ZNK4llvh9StringRef6equalsES0_.exit.i14.i.i.i
  %.sroa.01.0.i.i62 = phi ptr [ %0, %bb.a ], [ @.str.83, %_ZNK4llvh9StringRef6equalsES0_.exit.i14.i.i.i ], [ @.str.83, %_ZNK4llvh9StringRef6equalsES0_.exit.i.i.i.i ], [ @.str.83, %_ZNK4llvh9StringRef6equalsES0_.exit.i.i.i ], [ @.str.83, %_ZNK4llvh9StringRef6equalsES0_.exit.i.i100.i ] ; 5 uses
  %i.dq = load i32, ptr %.sroa.01.0.i.i62, align 1
  %i.dr = xor i32 %i.dq, 1635151465
  %i.ds = getelementptr i8, ptr %.sroa.01.0.i.i62, i64 3
  %i.dt = load i32, ptr %i.ds, align 1
  %i.du = xor i32 %i.dt, 1684630625
  %i.dv = or i32 %i.dr, %i.du
  %i.dw = icmp ne i32 %i.dv, 0
  %i.dx = zext i1 %i.dw to i32
  %i.dy = icmp eq i32 %i.dx, 0
  br i1 %i.dy, label %.thread.split.loop.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit.8

_ZNK4llvh9StringRef6equalsES0_.exit.1:            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.i31.i, %_ZNK4llvh9StringRef6equalsES0_.exit.i.i
  %.sroa.01.0.i.i56135 = phi ptr [ @.str.164, %_ZNK4llvh9StringRef6equalsES0_.exit.i.i ], [ %0, %_ZNK4llvh9StringRef6equalsES0_.exit.i31.i ] ; 2 uses
  %i.dz = load i32, ptr %.sroa.01.0.i.i56135, align 1
  %i.ea = icmp ne i32 %i.dz, 1701736302
  %i.eb = zext i1 %i.ea to i32
  %i.ec = icmp eq i32 %i.eb, 0
  br i1 %i.ec, label %.thread.split.loop.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread.4

_ZNK4llvh9StringRef6equalsES0_.exit.2:            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.i.i.i
  %i.ed = load i16, ptr %0, align 1
  %i.ee = xor i16 %i.ed, 26230
  %i.ef = getelementptr i8, ptr %0, i64 2
  %i.eg = load i8, ptr %i.ef, align 1
  %i.eh = zext i8 %i.eg to i16
  %i.ei = xor i16 %i.eh, 112
  %i.ej = or i16 %i.ee, %i.ei
  %i.ek = icmp ne i16 %i.ej, 0
  %i.el = zext i1 %i.ek to i32
  %i.em = icmp eq i32 %i.el, 0
  br i1 %i.em, label %.thread.split.loop.exit, label %.thread

_ZNK4llvh9StringRef6equalsES0_.exit.3:            ; preds = %bb.a, %_ZNK4llvh9StringRef6equalsES0_.exit.i38.i, %_ZNK4llvh9StringRef6equalsES0_.exit.i31.i, %_ZNK4llvh9StringRef6equalsES0_.exit.i45.i
  %.sroa.01.0.i.i566974169 = phi ptr [ %0, %bb.a ], [ @.str.152, %_ZNK4llvh9StringRef6equalsES0_.exit.i38.i ], [ @.str.158, %_ZNK4llvh9StringRef6equalsES0_.exit.i31.i ], [ @.str.151, %_ZNK4llvh9StringRef6equalsES0_.exit.i45.i ] ; 7 uses
  %i.en = load i32, ptr %.sroa.01.0.i.i566974169, align 1
  %i.eo = xor i32 %i.en, 1987077750
  %i.ep = getelementptr i8, ptr %.sroa.01.0.i.i566974169, i64 4
  %i.eq = load i8, ptr %i.ep, align 1
  %i.er = zext i8 %i.eq to i32
  %i.es = xor i32 %i.er, 50
  %i.et = or i32 %i.eo, %i.es
  %i.eu = icmp ne i32 %i.et, 0
  %i.ev = zext i1 %i.eu to i32
  %i.ew = icmp eq i32 %i.ev, 0
  br i1 %i.ew, label %.thread.split.loop.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit.4

_ZNK4llvh9StringRef6equalsES0_.exit.4:            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.3
  %i.ex = load i32, ptr %.sroa.01.0.i.i566974169, align 1
  %i.ey = xor i32 %i.ex, 1987077750
  %i.ez = getelementptr i8, ptr %.sroa.01.0.i.i566974169, i64 4
  %i.fa = load i8, ptr %i.ez, align 1
  %i.fb = zext i8 %i.fa to i32
  %i.fc = xor i32 %i.fb, 51
  %i.fd = or i32 %i.ey, %i.fc
  %i.fe = icmp ne i32 %i.fd, 0
  %i.ff = zext i1 %i.fe to i32
  %i.fg = icmp eq i32 %i.ff, 0
  br i1 %i.fg, label %.thread.split.loop.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit.10

_ZNK4llvh9StringRef6equalsES0_.exit.thread.4:     ; preds = %bb.a, %_ZNK4llvh9StringRef6equalsES0_.exit.1, %_ZNK4llvh9StringRef6equalsES0_.exit.i.i57.i, %_ZNK4llvh9StringRef6equalsES0_.exit.i.i88.i, %_ZNK4llvh9StringRef6equalsES0_.exit.i17.i
  %i.fh = phi i1 [ false, %bb.a ], [ true, %_ZNK4llvh9StringRef6equalsES0_.exit.1 ], [ false, %_ZNK4llvh9StringRef6equalsES0_.exit.i.i57.i ], [ false, %_ZNK4llvh9StringRef6equalsES0_.exit.i.i88.i ], [ false, %_ZNK4llvh9StringRef6equalsES0_.exit.i17.i ] ; 4 uses
  %.sroa.01.0.i.i566974149 = phi ptr [ %0, %bb.a ], [ %.sroa.01.0.i.i56135, %_ZNK4llvh9StringRef6equalsES0_.exit.1 ], [ %0, %_ZNK4llvh9StringRef6equalsES0_.exit.i.i57.i ], [ %0, %_ZNK4llvh9StringRef6equalsES0_.exit.i.i88.i ], [ %0, %_ZNK4llvh9StringRef6equalsES0_.exit.i17.i ] ; 6 uses
  %.sroa.3.0.i.i576875148 = phi i64 [ %1, %bb.a ], [ 4, %_ZNK4llvh9StringRef6equalsES0_.exit.1 ], [ %1, %_ZNK4llvh9StringRef6equalsES0_.exit.i.i57.i ], [ %1, %_ZNK4llvh9StringRef6equalsES0_.exit.i.i88.i ], [ %1, %_ZNK4llvh9StringRef6equalsES0_.exit.i17.i ] ; 2 uses
  switch i64 %.sroa.3.0.i.i576875148, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread.8 [
    i64 10, label %_ZNK4llvh9StringRef6equalsES0_.exit.5
    i64 9, label %_ZNK4llvh9StringRef6equalsES0_.exit.6
    i64 14, label %_ZNK4llvh9StringRef6equalsES0_.exit.7
  ]

_ZNK4llvh9StringRef6equalsES0_.exit.5:            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.thread.4, %_ZNK4llvh9StringRef6equalsES0_.exit.i.i
  %.sroa.01.0.i.i566974149197 = phi ptr [ %.sroa.01.0.i.i566974149, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.4 ], [ %0, %_ZNK4llvh9StringRef6equalsES0_.exit.i.i ] ; 3 uses
  %i.fi = phi i1 [ %i.fh, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.4 ], [ false, %_ZNK4llvh9StringRef6equalsES0_.exit.i.i ]
  %i.fj = load i64, ptr %.sroa.01.0.i.i566974149197, align 1
  %i.fk = xor i64 %i.fj, 8099210678926075510
  %i.fl = getelementptr i8, ptr %.sroa.01.0.i.i566974149197, i64 8
  %i.fm = load i16, ptr %i.fl, align 1
  %i.fn = zext i16 %i.fm to i64
  %i.fo = xor i64 %i.fn, 13873
  %i.fp = or i64 %i.fk, %i.fo
  %i.fq = icmp ne i64 %i.fp, 0
  %i.fr = zext i1 %i.fq to i32
  %i.fs = icmp eq i32 %i.fr, 0
  br i1 %i.fs, label %.thread.split.loop.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread.10

_ZNK4llvh9StringRef6equalsES0_.exit.6:            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.thread.4, %_ZNK4llvh9StringRef6equalsES0_.exit.i.i71.i, %_ZNK4llvh9StringRef6equalsES0_.exit.i24.i, %_ZNK4llvh9StringRef6equalsES0_.exit.i17.i, %_ZNK4llvh9StringRef6equalsES0_.exit.i14.i66.i
  %.sroa.01.0.i.i566974798395261 = phi ptr [ %.sroa.01.0.i.i566974149, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.4 ], [ @.str.159, %_ZNK4llvh9StringRef6equalsES0_.exit.i.i71.i ], [ @.str.154, %_ZNK4llvh9StringRef6equalsES0_.exit.i24.i ], [ @.str.159, %_ZNK4llvh9StringRef6equalsES0_.exit.i17.i ], [ @.str.159, %_ZNK4llvh9StringRef6equalsES0_.exit.i14.i66.i ] ; 3 uses
  %i.ft = phi i1 [ %i.fh, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.4 ], [ false, %_ZNK4llvh9StringRef6equalsES0_.exit.i.i71.i ], [ false, %_ZNK4llvh9StringRef6equalsES0_.exit.i24.i ], [ false, %_ZNK4llvh9StringRef6equalsES0_.exit.i17.i ], [ false, %_ZNK4llvh9StringRef6equalsES0_.exit.i14.i66.i ]
  %i.fu = load i64, ptr %.sroa.01.0.i.i566974798395261, align 1
  %i.fv = xor i64 %i.fu, 3559019304583194230
  %i.fw = getelementptr i8, ptr %.sroa.01.0.i.i566974798395261, i64 8
  %i.fx = load i8, ptr %i.fw, align 1
  %i.fy = zext i8 %i.fx to i64
  %i.fz = xor i64 %i.fy, 54
  %i.ga = or i64 %i.fv, %i.fz
  %i.gb = icmp ne i64 %i.ga, 0
  %i.gc = zext i1 %i.gb to i32
  %i.gd = icmp eq i32 %i.gc, 0
  br i1 %i.gd, label %.thread.split.loop.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread.10

_ZNK4llvh9StringRef6equalsES0_.exit.7:            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.thread.4
  %i.ge = load i64, ptr %.sroa.01.0.i.i566974149, align 1
  %i.gf = xor i64 %i.ge, 3559019304583194230
  %i.gg = getelementptr i8, ptr %.sroa.01.0.i.i566974149, i64 6
  %i.gh = load i64, ptr %i.gg, align 1
  %i.gi = xor i64 %i.gh, 3905025936054432100
  %i.gj = or i64 %i.gf, %i.gi
  %i.gk = icmp ne i64 %i.gj, 0
  %i.gl = zext i1 %i.gk to i32
  %i.gm = icmp eq i32 %i.gl, 0
  br i1 %i.gm, label %.thread.split.loop.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread.8

_ZNK4llvh9StringRef6equalsES0_.exit.8:            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit
  %i.gn = load i32, ptr %.sroa.01.0.i.i62, align 1
  %i.go = xor i32 %i.gn, 1987077750
  %i.gp = getelementptr i8, ptr %.sroa.01.0.i.i62, i64 3
  %i.gq = load i32, ptr %i.gp, align 1
  %i.gr = xor i32 %i.gq, 1685599094
  %i.gs = or i32 %i.go, %i.gr
  %i.gt = icmp ne i32 %i.gs, 0
  %i.gu = zext i1 %i.gt to i32
  %i.gv = icmp eq i32 %i.gu, 0
  br i1 %i.gv, label %.thread.split.loop.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread.8

_ZNK4llvh9StringRef6equalsES0_.exit.thread.8:     ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.7, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.4, %_ZNK4llvh9StringRef6equalsES0_.exit.8
  %i.gw = phi i1 [ true, %_ZNK4llvh9StringRef6equalsES0_.exit.8 ], [ false, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.4 ], [ false, %_ZNK4llvh9StringRef6equalsES0_.exit.7 ] ; 2 uses
  %.sroa.3.0.i.i576875788494103111115 = phi i64 [ 7, %_ZNK4llvh9StringRef6equalsES0_.exit.8 ], [ %.sroa.3.0.i.i576875148, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.4 ], [ 14, %_ZNK4llvh9StringRef6equalsES0_.exit.7 ] ; 2 uses
  %.sroa.01.0.i.i566974798395102112114 = phi ptr [ %.sroa.01.0.i.i62, %_ZNK4llvh9StringRef6equalsES0_.exit.8 ], [ %.sroa.01.0.i.i566974149, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.4 ], [ %.sroa.01.0.i.i566974149, %_ZNK4llvh9StringRef6equalsES0_.exit.7 ] ; 4 uses
  %i.gx = phi i1 [ false, %_ZNK4llvh9StringRef6equalsES0_.exit.8 ], [ %i.fh, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.4 ], [ %i.fh, %_ZNK4llvh9StringRef6equalsES0_.exit.7 ] ; 2 uses
  %i.gy = icmp eq i64 %.sroa.3.0.i.i576875788494103111115, 12
  br i1 %i.gy, label %_ZNK4llvh9StringRef6equalsES0_.exit.9, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread.10

_ZNK4llvh9StringRef6equalsES0_.exit.9:            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.thread.8
  %i.gz = load i64, ptr %.sroa.01.0.i.i566974798395102112114, align 1
  %i.ha = xor i64 %i.gz, 3270871391803565686
  %i.hb = getelementptr i8, ptr %.sroa.01.0.i.i566974798395102112114, i64 8
  %i.hc = load i32, ptr %i.hb, align 1
  %i.hd = zext i32 %i.hc to i64
  %i.he = xor i64 %i.hd, 909209702
  %i.hf = or i64 %i.ha, %i.he
  %i.hg = icmp ne i64 %i.hf, 0
  %i.hh = zext i1 %i.hg to i32
  %i.hi = icmp eq i32 %i.hh, 0
  br i1 %i.hi, label %.thread.split.loop.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread.10

_ZNK4llvh9StringRef6equalsES0_.exit.10:           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.4
  %i.hj = load i32, ptr %.sroa.01.0.i.i566974169, align 1
  %i.hk = xor i32 %i.hj, 1987077750
  %i.hl = getelementptr i8, ptr %.sroa.01.0.i.i566974169, i64 4
  %i.hm = load i8, ptr %i.hl, align 1
  %i.hn = zext i8 %i.hm to i32
  %i.ho = xor i32 %i.hn, 52
  %i.hp = or i32 %i.hk, %i.ho
  %i.hq = icmp ne i32 %i.hp, 0
  %i.hr = zext i1 %i.hq to i32
  %i.hs = icmp eq i32 %i.hr, 0
  br i1 %i.hs, label %.thread.split.loop.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread.10

_ZNK4llvh9StringRef6equalsES0_.exit.thread.10:    ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.thread.8, %_ZNK4llvh9StringRef6equalsES0_.exit.9, %_ZNK4llvh9StringRef6equalsES0_.exit.6, %_ZNK4llvh9StringRef6equalsES0_.exit.5, %_ZNK4llvh9StringRef6equalsES0_.exit.10
  %i.ht = phi i1 [ false, %_ZNK4llvh9StringRef6equalsES0_.exit.5 ], [ false, %_ZNK4llvh9StringRef6equalsES0_.exit.10 ], [ true, %_ZNK4llvh9StringRef6equalsES0_.exit.6 ], [ false, %_ZNK4llvh9StringRef6equalsES0_.exit.9 ], [ false, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.8 ] ; 4 uses
  %i.hu = phi i1 [ false, %_ZNK4llvh9StringRef6equalsES0_.exit.5 ], [ false, %_ZNK4llvh9StringRef6equalsES0_.exit.10 ], [ false, %_ZNK4llvh9StringRef6equalsES0_.exit.6 ], [ %i.gw, %_ZNK4llvh9StringRef6equalsES0_.exit.9 ], [ %i.gw, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.8 ] ; 3 uses
  %.sroa.3.0.i.i576875788494103111115119123 = phi i64 [ 10, %_ZNK4llvh9StringRef6equalsES0_.exit.5 ], [ 5, %_ZNK4llvh9StringRef6equalsES0_.exit.10 ], [ 9, %_ZNK4llvh9StringRef6equalsES0_.exit.6 ], [ 12, %_ZNK4llvh9StringRef6equalsES0_.exit.9 ], [ %.sroa.3.0.i.i576875788494103111115, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.8 ] ; 2 uses
  %.sroa.01.0.i.i566974798395102112114120122 = phi ptr [ %.sroa.01.0.i.i566974149197, %_ZNK4llvh9StringRef6equalsES0_.exit.5 ], [ %.sroa.01.0.i.i566974169, %_ZNK4llvh9StringRef6equalsES0_.exit.10 ], [ %.sroa.01.0.i.i566974798395261, %_ZNK4llvh9StringRef6equalsES0_.exit.6 ], [ %.sroa.01.0.i.i566974798395102112114, %_ZNK4llvh9StringRef6equalsES0_.exit.9 ], [ %.sroa.01.0.i.i566974798395102112114, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.8 ] ; 5 uses
  %i.hv = phi i1 [ %i.fi, %_ZNK4llvh9StringRef6equalsES0_.exit.5 ], [ false, %_ZNK4llvh9StringRef6equalsES0_.exit.10 ], [ %i.ft, %_ZNK4llvh9StringRef6equalsES0_.exit.6 ], [ %i.gx, %_ZNK4llvh9StringRef6equalsES0_.exit.9 ], [ %i.gx, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.8 ] ; 3 uses
  %i.hw = phi i1 [ true, %_ZNK4llvh9StringRef6equalsES0_.exit.5 ], [ false, %_ZNK4llvh9StringRef6equalsES0_.exit.10 ], [ false, %_ZNK4llvh9StringRef6equalsES0_.exit.6 ], [ false, %_ZNK4llvh9StringRef6equalsES0_.exit.9 ], [ false, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.8 ] ; 3 uses
  br i1 %i.ht, label %_ZNK4llvh9StringRef6equalsES0_.exit.11, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread.11

_ZNK4llvh9StringRef6equalsES0_.exit.11:           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.thread.10
  %i.hx = load i64, ptr %.sroa.01.0.i.i566974798395102112114120122, align 1
  %i.hy = xor i64 %i.hx, 3559019308878161526
  %i.hz = getelementptr i8, ptr %.sroa.01.0.i.i566974798395102112114120122, i64 8
  %i.ia = load i8, ptr %i.hz, align 1
  %i.ib = zext i8 %i.ia to i64
  %i.ic = xor i64 %i.ib, 54
  %i.id = or i64 %i.hy, %i.ic
  %i.ie = icmp ne i64 %i.id, 0
  %i.if = zext i1 %i.ie to i32
  %i.ig = icmp eq i32 %i.if, 0
  br i1 %i.ig, label %.thread.split.loop.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread.11

_ZNK4llvh9StringRef6equalsES0_.exit.thread.11:    ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.11, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.10
  switch i64 %.sroa.3.0.i.i576875788494103111115119123, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread.15 [
    i64 11, label %_ZNK4llvh9StringRef6equalsES0_.exit.12
    i64 8, label %_ZNK4llvh9StringRef6equalsES0_.exit.13
  ]

_ZNK4llvh9StringRef6equalsES0_.exit.12:           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.thread.11, %_ZNK4llvh9StringRef6equalsES0_.exit.i10.i, %_ZNK4llvh9StringRef6equalsES0_.exit.i.i88.i, %_ZNK4llvh9StringRef6equalsES0_.exit.i14.i83.i
  %i.ih = phi i1 [ %i.ht, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.11 ], [ false, %_ZNK4llvh9StringRef6equalsES0_.exit.i14.i83.i ], [ false, %_ZNK4llvh9StringRef6equalsES0_.exit.i.i88.i ], [ false, %_ZNK4llvh9StringRef6equalsES0_.exit.i10.i ]
  %i.ii = phi i1 [ %i.hu, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.11 ], [ false, %_ZNK4llvh9StringRef6equalsES0_.exit.i14.i83.i ], [ false, %_ZNK4llvh9StringRef6equalsES0_.exit.i.i88.i ], [ false, %_ZNK4llvh9StringRef6equalsES0_.exit.i10.i ]
  %.sroa.01.0.i.i566974798395102112114120122218279 = phi ptr [ %.sroa.01.0.i.i566974798395102112114120122, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.11 ], [ @.str.160, %_ZNK4llvh9StringRef6equalsES0_.exit.i14.i83.i ], [ @.str.160, %_ZNK4llvh9StringRef6equalsES0_.exit.i.i88.i ], [ @.str.162, %_ZNK4llvh9StringRef6equalsES0_.exit.i10.i ] ; 5 uses
  %i.ij = phi i1 [ %i.hv, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.11 ], [ false, %_ZNK4llvh9StringRef6equalsES0_.exit.i14.i83.i ], [ false, %_ZNK4llvh9StringRef6equalsES0_.exit.i.i88.i ], [ false, %_ZNK4llvh9StringRef6equalsES0_.exit.i10.i ]
  %i.ik = phi i1 [ %i.hw, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.11 ], [ false, %_ZNK4llvh9StringRef6equalsES0_.exit.i14.i83.i ], [ false, %_ZNK4llvh9StringRef6equalsES0_.exit.i.i88.i ], [ false, %_ZNK4llvh9StringRef6equalsES0_.exit.i10.i ]
  %i.il = load i64, ptr %.sroa.01.0.i.i566974798395102112114120122218279, align 1
  %i.im = xor i64 %i.il, 3274243567089250406
  %i.in = getelementptr i8, ptr %.sroa.01.0.i.i566974798395102112114120122218279, i64 3
  %i.io = load i64, ptr %i.in, align 1
  %i.ip = xor i64 %i.io, 3905012498229833012
  %i.iq = or i64 %i.im, %i.ip
  %i.ir = icmp ne i64 %i.iq, 0
  %i.is = zext i1 %i.ir to i32
  %i.it = icmp eq i32 %i.is, 0
  br i1 %i.it, label %.thread.split.loop.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit.14

_ZNK4llvh9StringRef6equalsES0_.exit.13:           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.thread.11, %_ZNK4llvh9StringRef6equalsES0_.exit.i.i57.i, %_ZNK4llvh9StringRef6equalsES0_.exit.i14.i.i
  %i.iu = phi i1 [ %i.hw, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.11 ], [ false, %_ZNK4llvh9StringRef6equalsES0_.exit.i14.i.i ], [ false, %_ZNK4llvh9StringRef6equalsES0_.exit.i.i57.i ]
  %i.iv = phi i1 [ %i.hv, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.11 ], [ false, %_ZNK4llvh9StringRef6equalsES0_.exit.i14.i.i ], [ false, %_ZNK4llvh9StringRef6equalsES0_.exit.i.i57.i ]
  %.sroa.01.0.i.i566974798395102112114120122218221289 = phi ptr [ %.sroa.01.0.i.i566974798395102112114120122, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.11 ], [ @.str.161, %_ZNK4llvh9StringRef6equalsES0_.exit.i14.i.i ], [ @.str.161, %_ZNK4llvh9StringRef6equalsES0_.exit.i.i57.i ] ; 3 uses
  %i.iw = phi i1 [ %i.hu, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.11 ], [ false, %_ZNK4llvh9StringRef6equalsES0_.exit.i14.i.i ], [ false, %_ZNK4llvh9StringRef6equalsES0_.exit.i.i57.i ]
  %i.ix = phi i1 [ %i.ht, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.11 ], [ false, %_ZNK4llvh9StringRef6equalsES0_.exit.i14.i.i ], [ false, %_ZNK4llvh9StringRef6equalsES0_.exit.i.i57.i ]
  %i.iy = load i64, ptr %.sroa.01.0.i.i566974798395102112114120122218221289, align 1
  %i.iz = icmp ne i64 %i.iy, 3905012497240191078
  %i.ja = zext i1 %i.iz to i32
  %i.jb = icmp eq i32 %i.ja, 0
  br i1 %i.jb, label %.thread.split.loop.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit.15

_ZNK4llvh9StringRef6equalsES0_.exit.14:           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.12
  %i.jc = load i64, ptr %.sroa.01.0.i.i566974798395102112114120122218279, align 1
  %i.jd = xor i64 %i.jc, 3274243567106027622
  %i.je = getelementptr i8, ptr %.sroa.01.0.i.i566974798395102112114120122218279, i64 3
  %i.jf = load i64, ptr %i.je, align 1
  %i.jg = xor i64 %i.jf, 3905012498229833013
  %i.jh = or i64 %i.jd, %i.jg
  %i.ji = icmp ne i64 %i.jh, 0
  %i.jj = zext i1 %i.ji to i32
  %i.jk = icmp eq i32 %i.jj, 0
  br i1 %i.jk, label %.thread.split.loop.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread.15

_ZNK4llvh9StringRef6equalsES0_.exit.15:           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.13
  %i.jl = load i64, ptr %.sroa.01.0.i.i566974798395102112114120122218221289, align 1
  %i.jm = icmp ne i64 %i.jl, 4068559651399888998
  %i.jn = zext i1 %i.jm to i32
  %i.jo = icmp eq i32 %i.jn, 0
  br i1 %i.jo, label %.thread.split.loop.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread.15

_ZNK4llvh9StringRef6equalsES0_.exit.thread.15:    ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.14, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.11, %_ZNK4llvh9StringRef6equalsES0_.exit.15
  %i.jp = phi i1 [ %i.ht, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.11 ], [ %i.ix, %_ZNK4llvh9StringRef6equalsES0_.exit.15 ], [ %i.ih, %_ZNK4llvh9StringRef6equalsES0_.exit.14 ]
  %i.jq = phi i1 [ %i.hu, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.11 ], [ %i.iw, %_ZNK4llvh9StringRef6equalsES0_.exit.15 ], [ %i.ii, %_ZNK4llvh9StringRef6equalsES0_.exit.14 ]
  %.sroa.01.0.i.i566974798395102112114120122218223 = phi ptr [ %.sroa.01.0.i.i566974798395102112114120122, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.11 ], [ %.sroa.01.0.i.i566974798395102112114120122218221289, %_ZNK4llvh9StringRef6equalsES0_.exit.15 ], [ %.sroa.01.0.i.i566974798395102112114120122218279, %_ZNK4llvh9StringRef6equalsES0_.exit.14 ] ; 11 uses
  %i.jr = phi i1 [ %i.hv, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.11 ], [ %i.iv, %_ZNK4llvh9StringRef6equalsES0_.exit.15 ], [ %i.ij, %_ZNK4llvh9StringRef6equalsES0_.exit.14 ]
  %i.js = phi i1 [ %i.hw, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.11 ], [ %i.iu, %_ZNK4llvh9StringRef6equalsES0_.exit.15 ], [ %i.ik, %_ZNK4llvh9StringRef6equalsES0_.exit.14 ]
  %.sroa.3.0.i.i576875788494103111115119123216 = phi i64 [ %.sroa.3.0.i.i576875788494103111115119123, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.11 ], [ 8, %_ZNK4llvh9StringRef6equalsES0_.exit.15 ], [ 11, %_ZNK4llvh9StringRef6equalsES0_.exit.14 ]
  br i1 %i.jr, label %_ZNK4llvh9StringRef6equalsES0_.exit.16, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread.16

_ZNK4llvh9StringRef6equalsES0_.exit.16:           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.thread.15
  %i.jt = load i32, ptr %.sroa.01.0.i.i566974798395102112114120122218223, align 1
  %i.ju = icmp ne i32 %i.jt, 1852794222
  %i.jv = zext i1 %i.ju to i32
  %i.jw = icmp eq i32 %i.jv, 0
  br i1 %i.jw, label %.thread.split.loop.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread.16

_ZNK4llvh9StringRef6equalsES0_.exit.thread.16:    ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.16, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.15
  br i1 %i.jp, label %_ZNK4llvh9StringRef6equalsES0_.exit.17, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread.17

_ZNK4llvh9StringRef6equalsES0_.exit.17:           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.thread.16
  %i.jx = load i64, ptr %.sroa.01.0.i.i566974798395102112114120122218223, align 1
  %i.jy = xor i64 %i.jx, 3562459650562418030
  %i.jz = getelementptr i8, ptr %.sroa.01.0.i.i566974798395102112114120122218223, i64 8
  %i.ka = load i8, ptr %i.jz, align 1
  %i.kb = zext i8 %i.ka to i64
  %i.kc = xor i64 %i.kb, 54
  %i.kd = or i64 %i.jy, %i.kc
  %i.ke = icmp ne i64 %i.kd, 0
  %i.kf = zext i1 %i.ke to i32
  %i.kg = icmp eq i32 %i.kf, 0
  br i1 %i.kg, label %.thread.split.loop.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread.17

_ZNK4llvh9StringRef6equalsES0_.exit.thread.17:    ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.17, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.16
  br i1 %i.js, label %_ZNK4llvh9StringRef6equalsES0_.exit.18, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread.18

_ZNK4llvh9StringRef6equalsES0_.exit.18:           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.thread.17
  %i.kh = load i64, ptr %.sroa.01.0.i.i566974798395102112114120122218223, align 1
  %i.ki = xor i64 %i.kh, 8099290917370815854
end_hunk_1
