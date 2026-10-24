Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/TargetParser?download=true
inline.NumInlined: 1116
inline.NumDeleted: 120
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumUnrolled: 12
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
  %.08.ptr16.lcssa = phi ptr [ @_ZN12_GLOBAL__N_119AArch64ARCHExtNamesE, %.critedge ], [ getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_119AArch64ARCHExtNamesE, i64 760), %.fold.split35 ], [ getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_119AArch64ARCHExtNamesE, i64 40), %.fold.split ], [ getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_119AArch64ARCHExtNamesE, i64 80), %.fold.split18 ], [ getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_119AArch64ARCHExtNamesE, i64 120), %.fold.split19 ], [ getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_119AArch64ARCHExtNamesE, i64 160), %.fold.split20 ], [ getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_119AArch64ARCHExtNamesE, i64 200), %.fold.split21 ], [ getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_119AArch64ARCHExtNamesE, i64 240), %.fold.split22 ], [ getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_119AArch64ARCHExtNamesE, i64 280), %.fold.split23 ], [ getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_119AArch64ARCHExtNamesE, i64 320), %.fold.split24 ], [ getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_119AArch64ARCHExtNamesE, i64 360), %.fold.split25 ], [ getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_119AArch64ARCHExtNamesE, i64 400), %.fold.split26 ], [ getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_119AArch64ARCHExtNamesE, i64 440), %.fold.split27 ], [ getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_119AArch64ARCHExtNamesE, i64 480), %.fold.split28 ], [ getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_119AArch64ARCHExtNamesE, i64 520), %.fold.split29 ], [ getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_119AArch64ARCHExtNamesE, i64 560), %.fold.split30 ], [ getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_119AArch64ARCHExtNamesE, i64 600), %.fold.split31 ], [ getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_119AArch64ARCHExtNamesE, i64 640), %.fold.split32 ], [ getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_119AArch64ARCHExtNamesE, i64 680), %.fold.split33 ], [ getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_119AArch64ARCHExtNamesE, i64 720), %.fold.split34 ], [ getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_119AArch64ARCHExtNamesE, i64 800), %.fold.split36 ] ; 2 uses
  %.08.ptr.val = load ptr, ptr %.08.ptr16.lcssa, align 8, !tbaa !41
  %i.a = getelementptr i8, ptr %.08.ptr16.lcssa, i64 8
  %.08.ptr.val10 = load i64, ptr %i.a, align 8, !tbaa !42
  br label %.loopexit

.loopexit:                                        ; preds = %.critedge, %bb.a
  %.sroa.0.1 = phi ptr [ %.08.ptr.val, %bb.a ], [ null, %.critedge ]
  %.sroa.4.1 = phi i64 [ %.08.ptr.val10, %bb.a ], [ 0, %.critedge ]
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.0.1, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.4.1, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden { ptr, i64 } @_ZN4llvh7AArch6417getArchExtFeatureENS_9StringRefE(ptr nofree readonly captures(none) %0, i64 %1) local_unnamed_addr #1 {
bb.a:
  %.not.i36 = icmp ult i64 %1, 2
  br i1 %.not.i36, label %_ZNK4llvh9StringRef10startswithES0_.exit.thread, label %_ZNK4llvh9StringRef10startswithES0_.exit

_ZNK4llvh9StringRef10startswithES0_.exit:         ; preds = %bb.a
  %i.a = load i16, ptr %0, align 1
  %i.b = icmp ne i16 %i.a, 28526
  %i.c = zext i1 %i.b to i32
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_ZNK4llvh9StringRef10startswithES0_.exit.thread71, label %_ZNK4llvh9StringRef10startswithES0_.exit.thread

_ZNK4llvh9StringRef10startswithES0_.exit.thread71: ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.f = add i64 %1, -2                           ; 3 uses
  %i.g = icmp eq i64 %i.f, 0
  br label %bb.b

bb.b:                                             ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit.thread71, %_ZNK4llvh9StringRef6equalsES0_.exit.thread
  %.0.idx86 = phi i64 [ 0, %_ZNK4llvh9StringRef10startswithES0_.exit.thread71 ], [ %.0.add, %_ZNK4llvh9StringRef6equalsES0_.exit.thread ] ; 2 uses
  %.0.ptr87 = getelementptr inbounds nuw i8, ptr @_ZN12_GLOBAL__N_119AArch64ARCHExtNamesE, i64 %.0.idx86 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.0.ptr87, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !344  ; 3 uses
  %.not29 = icmp eq ptr %i.i, null
  br i1 %.not29, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.0.ptr.val = load ptr, ptr %.0.ptr87, align 8, !tbaa !41
  %i.j = getelementptr i8, ptr %.0.ptr87, i64 8
  %.0.ptr.val43 = load i64, ptr %i.j, align 8, !tbaa !42
  %i.k = icmp eq i64 %i.f, %.0.ptr.val43
  br i1 %i.k, label %bb.d, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread

bb.d:                                             ; preds = %bb.c
  br i1 %i.g, label %.loopexit.sink.split, label %_ZNK4llvh9StringRef6equalsES0_.exit

_ZNK4llvh9StringRef6equalsES0_.exit:              ; preds = %bb.d
  %bcmp83 = tail call i32 @bcmp(ptr nonnull %i.e, ptr %.0.ptr.val, i64 %i.f)
  %i.l = icmp eq i32 %bcmp83, 0
  br i1 %i.l, label %.loopexit.sink.split, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread

_ZNK4llvh9StringRef6equalsES0_.exit.thread:       ; preds = %bb.c, %_ZNK4llvh9StringRef6equalsES0_.exit, %bb.b
  %.0.add = add nuw nsw i64 %.0.idx86, 40         ; 2 uses
  %.not.not = icmp eq i64 %.0.add, 840
  br i1 %.not.not, label %_ZNK4llvh9StringRef10startswithES0_.exit.thread, label %bb.b

_ZNK4llvh9StringRef10startswithES0_.exit.thread:  ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.thread, %bb.a, %_ZNK4llvh9StringRef10startswithES0_.exit
  %i.m = icmp eq i64 %1, 0
  br label %bb.e

bb.e:                                             ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit.thread, %_ZNK4llvh9StringRef6equalsES0_.exit37.thread
  %.027.idx88 = phi i64 [ 0, %_ZNK4llvh9StringRef10startswithES0_.exit.thread ], [ %.027.add, %_ZNK4llvh9StringRef6equalsES0_.exit37.thread ] ; 2 uses
  %.027.ptr89 = getelementptr inbounds nuw i8, ptr @_ZN12_GLOBAL__N_119AArch64ARCHExtNamesE, i64 %.027.idx88 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.027.ptr89, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !345  ; 3 uses
  %.not31 = icmp eq ptr %i.o, null
  br i1 %.not31, label %_ZNK4llvh9StringRef6equalsES0_.exit37.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.027.ptr.val = load ptr, ptr %.027.ptr89, align 8, !tbaa !41
  %i.p = getelementptr i8, ptr %.027.ptr89, i64 8
  %.027.ptr.val42 = load i64, ptr %i.p, align 8, !tbaa !42
  %i.q = icmp eq i64 %1, %.027.ptr.val42
  br i1 %i.q, label %bb.g, label %_ZNK4llvh9StringRef6equalsES0_.exit37.thread

bb.g:                                             ; preds = %bb.f
  br i1 %i.m, label %.loopexit.sink.split, label %_ZNK4llvh9StringRef6equalsES0_.exit37

_ZNK4llvh9StringRef6equalsES0_.exit37:            ; preds = %bb.g
  %bcmp84 = tail call i32 @bcmp(ptr %0, ptr %.027.ptr.val, i64 %1)
  %i.r = icmp eq i32 %bcmp84, 0
  br i1 %i.r, label %.loopexit.sink.split, label %_ZNK4llvh9StringRef6equalsES0_.exit37.thread

_ZNK4llvh9StringRef6equalsES0_.exit37.thread:     ; preds = %bb.f, %_ZNK4llvh9StringRef6equalsES0_.exit37, %bb.e
  %.027.add = add nuw nsw i64 %.027.idx88, 40     ; 2 uses
  %.not30 = icmp eq i64 %.027.add, 840
  br i1 %.not30, label %.loopexit, label %bb.e

.loopexit.sink.split:                             ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit, %bb.d, %_ZNK4llvh9StringRef6equalsES0_.exit37, %bb.g
  %.lcssa.sink = phi ptr [ %i.o, %_ZNK4llvh9StringRef6equalsES0_.exit37 ], [ %i.o, %bb.g ], [ %i.i, %bb.d ], [ %i.i, %_ZNK4llvh9StringRef6equalsES0_.exit ] ; 2 uses
  %i.s = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.lcssa.sink) #17
  br label %.loopexit

.loopexit:                                        ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit37.thread, %.loopexit.sink.split
  %.sroa.057.3 = phi ptr [ %.lcssa.sink, %.loopexit.sink.split ], [ null, %_ZNK4llvh9StringRef6equalsES0_.exit37.thread ]
  %.sroa.5.3 = phi i64 [ %i.s, %.loopexit.sink.split ], [ 0, %_ZNK4llvh9StringRef6equalsES0_.exit37.thread ]
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.057.3, 0
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
  %i.e = load i8, ptr %i.b, align 1, !tbaa !43
  %i.f = icmp eq i8 %i.e, 118
  br i1 %i.f, label %bb.c, label %_ZN4llvh7AArch6416checkArchVersionENS_9StringRefE.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !43
  %2 = add i8 %i.h, -58
  %isdigit.i = icmp ult i8 %2, -2
  br i1 %isdigit.i, label %_ZN4llvh7AArch6416checkArchVersionENS_9StringRefE.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = tail call fastcc { ptr, i64 } @_ZL14getArchSynonymN4llvh9StringRefE(ptr nonnull %i.b, i64 %i.c)
  %.fr = freeze { ptr, i64 } %i.i                 ; 2 uses
  %i.j = extractvalue { ptr, i64 } %.fr, 0        ; 7 uses
  %i.k = extractvalue { ptr, i64 } %.fr, 1        ; 16 uses
  %i.l = icmp eq i64 %i.k, 0
  %i.m = sub i64 0, %i.k                          ; 7 uses
  br i1 %i.l, label %_ZN4llvh7AArch6416checkArchVersionENS_9StringRefE.exit.thread, label %.split.preheader

.split.preheader:                                 ; preds = %bb.d
  %.not.i = icmp ugt i64 %i.k, 7
  br i1 %.not.i, label %_ZNK4llvh9StringRef8endswithES0_.exit.thread, label %_ZNK4llvh9StringRef8endswithES0_.exit

_ZNK4llvh9StringRef8endswithES0_.exit:            ; preds = %.split.preheader
  %i.n = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @.str.83, i64 7), i64 %i.m
  %bcmp = tail call i32 @bcmp(ptr nonnull %i.n, ptr %i.j, i64 %i.k)
  %i.o = icmp eq i32 %bcmp, 0
  br i1 %i.o, label %_ZN4llvh7AArch6416checkArchVersionENS_9StringRefE.exit.thread.loopexit.split.loop.exit, label %_ZNK4llvh9StringRef8endswithES0_.exit.thread

_ZNK4llvh9StringRef8endswithES0_.exit.thread:     ; preds = %.split.preheader, %_ZNK4llvh9StringRef8endswithES0_.exit
  %.not.i.1 = icmp ugt i64 %i.k, 7
  br i1 %.not.i.1, label %_ZNK4llvh9StringRef8endswithES0_.exit.thread.1, label %_ZNK4llvh9StringRef8endswithES0_.exit.1

_ZNK4llvh9StringRef8endswithES0_.exit.1:          ; preds = %_ZNK4llvh9StringRef8endswithES0_.exit.thread
  %i.p = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @.str.226, i64 7), i64 %i.m
  %bcmp.1 = tail call i32 @bcmp(ptr nonnull %i.p, ptr %i.j, i64 %i.k)
  %i.q = icmp eq i32 %bcmp.1, 0
  br i1 %i.q, label %_ZN4llvh7AArch6416checkArchVersionENS_9StringRefE.exit.thread.loopexit.split.loop.exit, label %_ZNK4llvh9StringRef8endswithES0_.exit.thread.1

_ZNK4llvh9StringRef8endswithES0_.exit.thread.1:   ; preds = %_ZNK4llvh9StringRef8endswithES0_.exit.1, %_ZNK4llvh9StringRef8endswithES0_.exit.thread
  %.not.i.2 = icmp ugt i64 %i.k, 9
  br i1 %.not.i.2, label %_ZNK4llvh9StringRef8endswithES0_.exit.thread.2, label %_ZNK4llvh9StringRef8endswithES0_.exit.2

_ZNK4llvh9StringRef8endswithES0_.exit.2:          ; preds = %_ZNK4llvh9StringRef8endswithES0_.exit.thread.1
  %i.r = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @.str.229, i64 9), i64 %i.m
  %bcmp.2 = tail call i32 @bcmp(ptr nonnull %i.r, ptr %i.j, i64 %i.k)
  %i.s = icmp eq i32 %bcmp.2, 0
  br i1 %i.s, label %_ZN4llvh7AArch6416checkArchVersionENS_9StringRefE.exit.thread.loopexit.split.loop.exit, label %_ZNK4llvh9StringRef8endswithES0_.exit.thread.2

_ZNK4llvh9StringRef8endswithES0_.exit.thread.2:   ; preds = %_ZNK4llvh9StringRef8endswithES0_.exit.2, %_ZNK4llvh9StringRef8endswithES0_.exit.thread.1
  %.not.i.3 = icmp ugt i64 %i.k, 9
  br i1 %.not.i.3, label %_ZNK4llvh9StringRef8endswithES0_.exit.thread.3, label %_ZNK4llvh9StringRef8endswithES0_.exit.3

_ZNK4llvh9StringRef8endswithES0_.exit.3:          ; preds = %_ZNK4llvh9StringRef8endswithES0_.exit.thread.2
  %i.t = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @.str.232, i64 9), i64 %i.m
  %bcmp.3 = tail call i32 @bcmp(ptr nonnull %i.t, ptr %i.j, i64 %i.k)
  %i.u = icmp eq i32 %bcmp.3, 0
  br i1 %i.u, label %_ZN4llvh7AArch6416checkArchVersionENS_9StringRefE.exit.thread.loopexit.split.loop.exit, label %_ZNK4llvh9StringRef8endswithES0_.exit.thread.3

_ZNK4llvh9StringRef8endswithES0_.exit.thread.3:   ; preds = %_ZNK4llvh9StringRef8endswithES0_.exit.3, %_ZNK4llvh9StringRef8endswithES0_.exit.thread.2
  %.not.i.4 = icmp ugt i64 %i.k, 9
  br i1 %.not.i.4, label %_ZNK4llvh9StringRef8endswithES0_.exit.thread.4, label %_ZNK4llvh9StringRef8endswithES0_.exit.4

_ZNK4llvh9StringRef8endswithES0_.exit.4:          ; preds = %_ZNK4llvh9StringRef8endswithES0_.exit.thread.3
  %i.v = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @.str.235, i64 9), i64 %i.m
  %bcmp.4 = tail call i32 @bcmp(ptr nonnull %i.v, ptr %i.j, i64 %i.k)
  %i.w = icmp eq i32 %bcmp.4, 0
  br i1 %i.w, label %_ZN4llvh7AArch6416checkArchVersionENS_9StringRefE.exit.thread.loopexit.split.loop.exit, label %_ZNK4llvh9StringRef8endswithES0_.exit.thread.4

_ZNK4llvh9StringRef8endswithES0_.exit.thread.4:   ; preds = %_ZNK4llvh9StringRef8endswithES0_.exit.4, %_ZNK4llvh9StringRef8endswithES0_.exit.thread.3
  %.not.i.5 = icmp ugt i64 %i.k, 9
  br i1 %.not.i.5, label %_ZNK4llvh9StringRef8endswithES0_.exit.thread.5, label %_ZNK4llvh9StringRef8endswithES0_.exit.5

_ZNK4llvh9StringRef8endswithES0_.exit.5:          ; preds = %_ZNK4llvh9StringRef8endswithES0_.exit.thread.4
  %i.x = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @.str.238, i64 9), i64 %i.m
  %bcmp.5 = tail call i32 @bcmp(ptr nonnull %i.x, ptr %i.j, i64 %i.k)
  %i.y = icmp eq i32 %bcmp.5, 0
  br i1 %i.y, label %_ZN4llvh7AArch6416checkArchVersionENS_9StringRefE.exit.thread.loopexit.split.loop.exit, label %_ZNK4llvh9StringRef8endswithES0_.exit.thread.5

_ZNK4llvh9StringRef8endswithES0_.exit.thread.5:   ; preds = %_ZNK4llvh9StringRef8endswithES0_.exit.5, %_ZNK4llvh9StringRef8endswithES0_.exit.thread.4
  %.not.i.6 = icmp ugt i64 %i.k, 9
  br i1 %.not.i.6, label %_ZN4llvh7AArch6416checkArchVersionENS_9StringRefE.exit.thread, label %_ZNK4llvh9StringRef8endswithES0_.exit.6

_ZNK4llvh9StringRef8endswithES0_.exit.6:          ; preds = %_ZNK4llvh9StringRef8endswithES0_.exit.thread.5
  %i.z = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @.str.241, i64 9), i64 %i.m
  %bcmp.6 = tail call i32 @bcmp(ptr nonnull %i.z, ptr %i.j, i64 %i.k)
  %i.aa = icmp eq i32 %bcmp.6, 0
  br i1 %i.aa, label %_ZN4llvh7AArch6416checkArchVersionENS_9StringRefE.exit.thread.loopexit.split.loop.exit, label %_ZN4llvh7AArch6416checkArchVersionENS_9StringRefE.exit.thread

_ZN4llvh7AArch6416checkArchVersionENS_9StringRefE.exit.thread.loopexit.split.loop.exit: ; preds = %_ZNK4llvh9StringRef8endswithES0_.exit.6, %_ZNK4llvh9StringRef8endswithES0_.exit.5, %_ZNK4llvh9StringRef8endswithES0_.exit.4, %_ZNK4llvh9StringRef8endswithES0_.exit.3, %_ZNK4llvh9StringRef8endswithES0_.exit.2, %_ZNK4llvh9StringRef8endswithES0_.exit.1, %_ZNK4llvh9StringRef8endswithES0_.exit
  %.021.ptr.lcssa = phi ptr [ @_ZN12_GLOBAL__N_116AArch64ARCHNamesE, %_ZNK4llvh9StringRef8endswithES0_.exit ], [ getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_116AArch64ARCHNamesE, i64 64), %_ZNK4llvh9StringRef8endswithES0_.exit.1 ], [ getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_116AArch64ARCHNamesE, i64 128), %_ZNK4llvh9StringRef8endswithES0_.exit.2 ], [ getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_116AArch64ARCHNamesE, i64 192), %_ZNK4llvh9StringRef8endswithES0_.exit.3 ], [ getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_116AArch64ARCHNamesE, i64 256), %_ZNK4llvh9StringRef8endswithES0_.exit.4 ], [ getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_116AArch64ARCHNamesE, i64 320), %_ZNK4llvh9StringRef8endswithES0_.exit.5 ], [ getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_116AArch64ARCHNamesE, i64 384), %_ZNK4llvh9StringRef8endswithES0_.exit.6 ]
  %.sroa.527.0..021.ptr.sroa_idx.le = getelementptr inbounds nuw i8, ptr %.021.ptr.lcssa, i64 56
  %.sroa.527.0.copyload.le35 = load i32, ptr %.sroa.527.0..021.ptr.sroa_idx.le, align 8, !tbaa !44
  br label %_ZN4llvh7AArch6416checkArchVersionENS_9StringRefE.exit.thread

_ZN4llvh7AArch6416checkArchVersionENS_9StringRefE.exit.thread: ; preds = %bb.d, %_ZNK4llvh9StringRef8endswithES0_.exit.thread.5, %_ZNK4llvh9StringRef8endswithES0_.exit.6, %_ZN4llvh7AArch6416checkArchVersionENS_9StringRefE.exit.thread.loopexit.split.loop.exit, %bb.a, %bb.b, %bb.c
  %.4 = phi i32 [ 0, %bb.b ], [ 0, %bb.a ], [ 0, %bb.c ], [ 0, %_ZNK4llvh9StringRef8endswithES0_.exit.thread.5 ], [ %.sroa.527.0.copyload.le35, %_ZN4llvh7AArch6416checkArchVersionENS_9StringRefE.exit.thread.loopexit.split.loop.exit ], [ 0, %_ZNK4llvh9StringRef8endswithES0_.exit.6 ], [ 0, %bb.d ]
  ret i32 %.4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef range(i32 0, 10) i32 @_ZN4llvh7AArch6416checkArchVersionENS_9StringRefE(ptr nofree readonly captures(none) %0, i64 %1) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp ugt i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %0, align 1, !tbaa !43
  %i.c = icmp eq i8 %i.b, 118
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.e = load i8, ptr %i.d, align 1, !tbaa !43    ; 2 uses
  %2 = add i8 %i.e, -48
  %isdigit = icmp ult i8 %2, 10
  br i1 %isdigit, label %3, label %bb.d

3:                                                ; preds = %bb.c
  %4 = zext nneg i8 %i.e to i32
  %5 = add nsw i32 %4, -48
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c, %3
  %.0 = phi i32 [ %5, %3 ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
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
  %i.ax = call noundef i64 @_ZNK4llvh9StringRef4findES0_m(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr nonnull @.str.140, i64 2, i64 noundef 0) #18
  %.not = icmp eq i64 %i.ax, -1
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit.thread145
  %i.ay = load i64, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !30 ; 4 uses
  %.sroa.speculated134 = call i64 @llvm.umin.i64(i64 %i.ay, i64 7) ; 2 uses
  %i.az = sub nuw i64 %i.ay, %.sroa.speculated134
  %i.ba = icmp ugt i64 %i.az, 2
  br i1 %i.ba, label %_ZNK4llvh9StringRef6equalsES0_.exit, label %_ZNK4llvh9StringRef10startswithES0_.exit36.thread139

_ZNK4llvh9StringRef6equalsES0_.exit:              ; preds = %bb.b
  %i.bb = load ptr, ptr %2, align 8, !tbaa !346
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.sroa.speculated134 ; 2 uses
  %i.bd = load i16, ptr %i.bc, align 1
  %i.be = xor i16 %i.bd, 25183
  %i.bf = getelementptr i8, ptr %i.bc, i64 2
  %i.bg = load i8, ptr %i.bf, align 1
  %i.bh = zext i8 %i.bg to i16
  %i.bi = xor i16 %i.bh, 101
  %i.bj = or i16 %i.be, %i.bi
  %i.bk = icmp ne i16 %i.bj, 0
  %i.bl = zext i1 %i.bk to i32
  %bcmp168.fr = freeze i32 %i.bl
  %i.bm = icmp eq i32 %bcmp168.fr, 0
  %spec.select = select i1 %i.bm, i64 10, i64 7
  br label %_ZNK4llvh9StringRef10startswithES0_.exit36.thread139

_ZNK4llvh9StringRef10startswithES0_.exit36.thread139: ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit34.thread177, %_ZNK4llvh9StringRef6equalsES0_.exit, %bb.b, %_ZNK4llvh9StringRef10startswithES0_.exit36, %_ZNK4llvh9StringRef10startswithES0_.exit34, %_ZNK4llvh9StringRef10startswithES0_.exit32
  %i.bn = phi i64 [ %1, %_ZNK4llvh9StringRef10startswithES0_.exit32 ], [ %i.ay, %_ZNK4llvh9StringRef6equalsES0_.exit ], [ %1, %_ZNK4llvh9StringRef10startswithES0_.exit36 ], [ %1, %_ZNK4llvh9StringRef10startswithES0_.exit34 ], [ %i.ay, %bb.b ], [ %1, %_ZNK4llvh9StringRef10startswithES0_.exit34.thread177 ] ; 5 uses
  %.0.ph = phi i64 [ 5, %_ZNK4llvh9StringRef10startswithES0_.exit32 ], [ %spec.select, %_ZNK4llvh9StringRef6equalsES0_.exit ], [ 5, %_ZNK4llvh9StringRef10startswithES0_.exit36 ], [ 3, %_ZNK4llvh9StringRef10startswithES0_.exit34 ], [ 7, %bb.b ], [ 3, %_ZNK4llvh9StringRef10startswithES0_.exit34.thread177 ] ; 4 uses
  %.sroa.speculated122 = call i64 @llvm.umin.i64(i64 %i.bn, i64 %.0.ph) ; 2 uses
  %i.bo = sub nuw i64 %i.bn, %.sroa.speculated122
  %i.bp = icmp ugt i64 %i.bo, 1
  br i1 %i.bp, label %_ZNK4llvh9StringRef6equalsES0_.exit53, label %_ZNK4llvh9StringRef10startswithES0_.exit.thread

_ZNK4llvh9StringRef6equalsES0_.exit53:            ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit36.thread139
  %i.bq = load ptr, ptr %2, align 8, !tbaa !346   ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.sroa.speculated122
  %i.bs = load i16, ptr %i.br, align 1
  %i.bt = icmp ne i16 %i.bs, 25189
  %i.bu = zext i1 %i.bt to i32
  %i.bv = icmp eq i32 %i.bu, 0
  br i1 %i.bv, label %.thread159, label %_ZNK4llvh9StringRef10startswithES0_.exit.thread

.thread159:                                       ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit53
  %i.bw = add nuw nsw i64 %.0.ph, 2
  br label %thread-pre-split.thread

_ZNK4llvh9StringRef10startswithES0_.exit.thread:  ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit36.thread, %_ZNK4llvh9StringRef10startswithES0_.exit36.thread139, %_ZNK4llvh9StringRef6equalsES0_.exit53
  %i.bx = phi i64 [ %i.bn, %_ZNK4llvh9StringRef6equalsES0_.exit53 ], [ %i.bn, %_ZNK4llvh9StringRef10startswithES0_.exit36.thread139 ], [ %1, %_ZNK4llvh9StringRef10startswithES0_.exit36.thread ] ; 3 uses
  %.0154 = phi i64 [ %.0.ph, %_ZNK4llvh9StringRef6equalsES0_.exit53 ], [ %.0.ph, %_ZNK4llvh9StringRef10startswithES0_.exit36.thread139 ], [ -1, %_ZNK4llvh9StringRef10startswithES0_.exit36.thread ] ; 2 uses
  %.not.i52 = icmp ult i64 %i.bx, 2
  br i1 %.not.i52, label %_ZNK4llvh9StringRef8endswithES0_.exit.thread, label %_ZNK4llvh9StringRef8endswithES0_.exit

_ZNK4llvh9StringRef8endswithES0_.exit:            ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit32.thread, %_ZNK4llvh9StringRef10startswithES0_.exit, %_ZNK4llvh9StringRef10startswithES0_.exit.thread
  %.0154183 = phi i64 [ %.0154, %_ZNK4llvh9StringRef10startswithES0_.exit.thread ], [ -1, %_ZNK4llvh9StringRef10startswithES0_.exit ], [ -1, %_ZNK4llvh9StringRef10startswithES0_.exit32.thread ]
  %i.by = phi i64 [ %i.bx, %_ZNK4llvh9StringRef10startswithES0_.exit.thread ], [ %1, %_ZNK4llvh9StringRef10startswithES0_.exit ], [ %1, %_ZNK4llvh9StringRef10startswithES0_.exit32.thread ] ; 3 uses
  %i.bz = load ptr, ptr %2, align 8, !tbaa !346
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.by
  %i.cb = getelementptr inbounds i8, ptr %i.ca, i64 -2
  %i.cc = load i16, ptr %i.cb, align 1
  %i.cd = icmp ne i16 %i.cc, 25189
  %i.ce = zext i1 %i.cd to i32
  %i.cf = icmp eq i32 %i.ce, 0
  %i.cg = add i64 %i.by, -2
  %spec.select188 = select i1 %i.cf, i64 %i.cg, i64 %i.by
  br label %_ZNK4llvh9StringRef8endswithES0_.exit.thread

_ZNK4llvh9StringRef8endswithES0_.exit.thread:     ; preds = %_ZNK4llvh9StringRef8endswithES0_.exit, %_ZNK4llvh9StringRef10startswithES0_.exit.thread
  %.0154184 = phi i64 [ %.0154, %_ZNK4llvh9StringRef10startswithES0_.exit.thread ], [ %.0154183, %_ZNK4llvh9StringRef8endswithES0_.exit ] ; 2 uses
  %.pr = phi i64 [ %i.bx, %_ZNK4llvh9StringRef10startswithES0_.exit.thread ], [ %spec.select188, %_ZNK4llvh9StringRef8endswithES0_.exit ] ; 3 uses
  %.not28 = icmp eq i64 %.0154184, -1
  br i1 %.not28, label %thread-pre-split, label %_ZNK4llvh9StringRef8endswithES0_.exit.thread._crit_edge

_ZNK4llvh9StringRef8endswithES0_.exit.thread._crit_edge: ; preds = %_ZNK4llvh9StringRef8endswithES0_.exit.thread
  %.pre = load ptr, ptr %2, align 8, !tbaa !346
  br label %thread-pre-split.thread

thread-pre-split:                                 ; preds = %_ZNK4llvh9StringRef8endswithES0_.exit.thread
  %i.ch = icmp eq i64 %.pr, 0
  br i1 %i.ch, label %bb.g, label %bb.f

thread-pre-split.thread:                          ; preds = %.thread159, %_ZNK4llvh9StringRef8endswithES0_.exit.thread._crit_edge
  %i.ci = phi ptr [ %i.bq, %.thread159 ], [ %.pre, %_ZNK4llvh9StringRef8endswithES0_.exit.thread._crit_edge ]
  %i.cj = phi i64 [ %i.bn, %.thread159 ], [ %.pr, %_ZNK4llvh9StringRef8endswithES0_.exit.thread._crit_edge ] ; 2 uses
  %.1162 = phi i64 [ %i.bw, %.thread159 ], [ %.0154184, %_ZNK4llvh9StringRef8endswithES0_.exit.thread._crit_edge ]
  %.sroa.speculated98 = call i64 @llvm.umin.i64(i64 %i.cj, i64 %.1162) ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 %.sroa.speculated98
  %i.cl = sub i64 %i.cj, %.sroa.speculated98      ; 2 uses
  store ptr %i.ck, ptr %2, align 8, !tbaa !29
  store i64 %i.cl, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !30
  switch i64 %i.cl, label %bb.c [
    i64 0, label %bb.g
    i64 1, label %bb.e
  ]

bb.c:                                             ; preds = %thread-pre-split.thread
  %i.cm = load ptr, ptr %2, align 8, !tbaa !346   ; 2 uses
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !43
  %.not29 = icmp eq i8 %i.cn, 118
  br i1 %.not29, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 1
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !43
  %3 = add i8 %i.cp, -48
  %isdigit = icmp ult i8 %3, 10
  br i1 %isdigit, label %bb.e, label %bb.g

bb.e:                                             ; preds = %thread-pre-split.thread, %bb.d
  %i.cq = call noundef i64 @_ZNK4llvh9StringRef4findES0_m(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr nonnull @.str.140, i64 2, i64 noundef 0) #18
  %.not30 = icmp eq i64 %i.cq, -1
  br i1 %.not30, label %._crit_edge, label %bb.g

._crit_edge:                                      ; preds = %bb.e
  %.sroa.6.0.copyload26.pre = load i64, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !30
  br label %bb.f

bb.f:                                             ; preds = %thread-pre-split, %._crit_edge
  %.sroa.6.0.copyload26 = phi i64 [ %.sroa.6.0.copyload26.pre, %._crit_edge ], [ %.pr, %thread-pre-split ]
  %.sroa.017.0.copyload20 = load ptr, ptr %2, align 8, !tbaa !29
  br label %bb.g

bb.g:                                             ; preds = %thread-pre-split.thread, %bb.e, %bb.c, %bb.d, %_ZNK4llvh9StringRef10startswithES0_.exit.thread145, %thread-pre-split, %bb.f
  %.sroa.017.0 = phi ptr [ %0, %thread-pre-split ], [ @.str.135, %_ZNK4llvh9StringRef10startswithES0_.exit.thread145 ], [ @.str.135, %bb.c ], [ %.sroa.017.0.copyload20, %bb.f ], [ @.str.135, %bb.d ], [ @.str.135, %bb.e ], [ %0, %thread-pre-split.thread ]
  %.sroa.6.0 = phi i64 [ %1, %thread-pre-split ], [ 0, %_ZNK4llvh9StringRef10startswithES0_.exit.thread145 ], [ 0, %bb.c ], [ %.sroa.6.0.copyload26, %bb.f ], [ 0, %bb.d ], [ 0, %bb.e ], [ %1, %thread-pre-split.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.017.0, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.6.0, 1
  ret { ptr, i64 } %.fca.1.insert
}

declare noundef i64 @_ZNK4llvh9StringRef4findES0_m(ptr noundef nonnull align 8 dereferenceable(16), ptr, i64, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i32 @_ZN4llvh3ARM10parseHWDivENS_9StringRefE(ptr nofree readonly captures(none) %0, i64 %1) local_unnamed_addr #1 {
bb.a:
  switch i64 %1, label %.thread [
    i64 9, label %_ZNK4llvh9StringRef6equalsES0_.exit.i.i
    i64 7, label %_ZNK4llvh9StringRef6equalsES0_.exit
    i64 4, label %_ZNK4llvh9StringRef6equalsES0_.exit.1
    i64 5, label %_ZNK4llvh9StringRef6equalsES0_.exit.2
    i64 3, label %_ZNK4llvh9StringRef6equalsES0_.exit.3
  ]

_ZNK4llvh9StringRef6equalsES0_.exit.i.i:          ; preds = %bb.a
  %i.a = load i64, ptr %0, align 1
  %i.b = xor i64 %i.a, 8241917594319546484
  %i.c = getelementptr i8, ptr %0, i64 8
  %i.d = load i8, ptr %i.c, align 1
  %i.e = zext i8 %i.d to i64
  %i.f = xor i64 %i.e, 109
  %i.g = or i64 %i.b, %i.f
  %i.h = icmp ne i64 %i.g, 0
  %i.i = zext i1 %i.h to i32
  %i.j = icmp eq i32 %i.i, 0
  %spec.select55 = select i1 %i.j, ptr @.str.282, ptr %0 ; 2 uses
  %i.k = load i64, ptr %spec.select55, align 1
  %i.l = xor i64 %i.k, 7887325170580157025
  %i.m = getelementptr i8, ptr %spec.select55, i64 8
  %i.n = load i8, ptr %i.m, align 1
  %i.o = zext i8 %i.n to i64
  %i.p = xor i64 %i.o, 98
  %i.q = or i64 %i.l, %i.p
  %i.r = icmp ne i64 %i.q, 0
  %i.s = zext i1 %i.r to i32
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %.thread.split.loop.exit, label %.thread

_ZNK4llvh9StringRef6equalsES0_.exit:              ; preds = %bb.a
  %i.u = load i32, ptr %0, align 1
  %i.v = xor i32 %i.u, 1635151465
  %i.w = getelementptr i8, ptr %0, i64 3
  %i.x = load i32, ptr %i.w, align 1
  %i.y = xor i32 %i.x, 1684630625
  %i.z = or i32 %i.v, %i.y
  %i.aa = icmp ne i32 %i.z, 0
  %i.ab = zext i1 %i.aa to i32
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %.thread.split.loop.exit, label %.thread

_ZNK4llvh9StringRef6equalsES0_.exit.1:            ; preds = %bb.a
  %i.ad = load i32, ptr %0, align 1
  %i.ae = icmp ne i32 %i.ad, 1701736302
  %i.af = zext i1 %i.ae to i32
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %.thread.split.loop.exit, label %.thread

_ZNK4llvh9StringRef6equalsES0_.exit.2:            ; preds = %bb.a
  %i.ah = load i32, ptr %0, align 1
  %i.ai = xor i32 %i.ah, 1836410996
  %i.aj = getelementptr i8, ptr %0, i64 4
  %i.ak = load i8, ptr %i.aj, align 1
  %i.al = zext i8 %i.ak to i32
  %i.am = xor i32 %i.al, 98
  %i.an = or i32 %i.ai, %i.am
  %i.ao = icmp ne i32 %i.an, 0
  %i.ap = zext i1 %i.ao to i32
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %.thread.split.loop.exit, label %.thread

_ZNK4llvh9StringRef6equalsES0_.exit.3:            ; preds = %bb.a
  %i.ar = load i16, ptr %0, align 1
  %i.as = xor i16 %i.ar, 29281
  %i.at = getelementptr i8, ptr %0, i64 2
  %i.au = load i8, ptr %i.at, align 1
  %i.av = zext i8 %i.au to i16
  %i.aw = xor i16 %i.av, 109
  %i.ax = or i16 %i.as, %i.aw
  %i.ay = icmp ne i16 %i.ax, 0
  %i.az = zext i1 %i.ay to i32
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %.thread.split.loop.exit, label %.thread

.thread.split.loop.exit:                          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.i.i, %_ZNK4llvh9StringRef6equalsES0_.exit.3, %_ZNK4llvh9StringRef6equalsES0_.exit.2, %_ZNK4llvh9StringRef6equalsES0_.exit.1, %_ZNK4llvh9StringRef6equalsES0_.exit
  %.016.ptr.lcssa31 = phi ptr [ @_ZN12_GLOBAL__N_110HWDivNamesE, %_ZNK4llvh9StringRef6equalsES0_.exit ], [ getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_110HWDivNamesE, i64 24), %_ZNK4llvh9StringRef6equalsES0_.exit.1 ], [ getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_110HWDivNamesE, i64 48), %_ZNK4llvh9StringRef6equalsES0_.exit.2 ], [ getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_110HWDivNamesE, i64 72), %_ZNK4llvh9StringRef6equalsES0_.exit.3 ], [ getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_110HWDivNamesE, i64 96), %_ZNK4llvh9StringRef6equalsES0_.exit.i.i ]
  %.sroa.5.0..016.ptr.sroa_idx.le = getelementptr inbounds nuw i8, ptr %.016.ptr.lcssa31, i64 16
  %.sroa.5.0.copyload.le26 = load i32, ptr %.sroa.5.0..016.ptr.sroa_idx.le, align 8, !tbaa !8
  br label %.thread

.thread:                                          ; preds = %bb.a, %_ZNK4llvh9StringRef6equalsES0_.exit.3, %_ZNK4llvh9StringRef6equalsES0_.exit.2, %_ZNK4llvh9StringRef6equalsES0_.exit.1, %_ZNK4llvh9StringRef6equalsES0_.exit.i.i, %_ZNK4llvh9StringRef6equalsES0_.exit, %.thread.split.loop.exit
  %spec.select = phi i32 [ %.sroa.5.0.copyload.le26, %.thread.split.loop.exit ], [ 0, %_ZNK4llvh9StringRef6equalsES0_.exit ], [ 0, %_ZNK4llvh9StringRef6equalsES0_.exit.i.i ], [ 0, %_ZNK4llvh9StringRef6equalsES0_.exit.1 ], [ 0, %_ZNK4llvh9StringRef6equalsES0_.exit.2 ], [ 0, %_ZNK4llvh9StringRef6equalsES0_.exit.3 ], [ 0, %bb.a ]
  ret i32 %spec.select
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i32 @_ZN4llvh3ARM8parseFPUENS_9StringRefE(ptr nofree readonly captures(none) %0, i64 %1) local_unnamed_addr #1 {
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
end_hunk_0
