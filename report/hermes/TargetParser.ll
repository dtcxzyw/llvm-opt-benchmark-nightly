inline.NumInlined: 1116
inline.NumDeleted: 120
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN4llvh3ARM15parseArchEndianENS_9StringRefE:bb.a
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %_ZNK4llvh9StringRef8endswithES0_.exit, label %_ZNK4llvh9StringRef10startswithES0_.exit3.thread

_ZNK4llvh9StringRef8endswithES0_.exit:            ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit5, %_ZNK4llvh9StringRef10startswithES0_.exit3, %_ZNK4llvh9StringRef10startswithES0_.exit5.thread92
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 -2
  %i.bj = load i16, ptr %i.bi, align 1
  %i.bk = icmp ne i16 %i.bj, 25189
  %i.bl = zext i1 %i.bk to i32
  %bcmp74.fr = freeze i32 %i.bl
  %i.bm = icmp eq i32 %bcmp74.fr, 0
  %spec.select = select i1 %i.bm, i32 2, i32 1
  br label %_ZNK4llvh9StringRef10startswithES0_.exit11.thread51

_ZNK4llvh9StringRef10startswithES0_.exit3.thread: ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit3
  br i1 %.not.i8, label %_ZNK4llvh9StringRef10startswithES0_.exit11.thread51, label %_ZNK4llvh9StringRef10startswithES0_.exit

_ZNK4llvh9StringRef10startswithES0_.exit:         ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit3.thread
  %i.bn = load i32, ptr %0, align 1
  %i.bo = xor i32 %i.bn, 1668440417
  %i.bp = getelementptr i8, ptr %0, i64 3
  %i.bq = load i32, ptr %i.bp, align 1
  %i.br = xor i32 %i.bq, 875980899
  %i.bs = or i32 %i.bo, %i.br
  %i.bt = icmp ne i32 %i.bs, 0
  %i.bu = zext i1 %i.bt to i32
  %bcmp75.fr = freeze i32 %i.bu
  %i.bv = icmp eq i32 %bcmp75.fr, 0
  %spec.select76 = zext i1 %i.bv to i32
  br label %_ZNK4llvh9StringRef10startswithES0_.exit11.thread51

_ZNK4llvh9StringRef10startswithES0_.exit11.thread51: ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit5.thread92, %_ZNK4llvh9StringRef10startswithES0_.exit7.thread, %_ZNK4llvh9StringRef10startswithES0_.exit, %_ZNK4llvh9StringRef8endswithES0_.exit, %_ZNK4llvh9StringRef10startswithES0_.exit3.thread, %_ZNK4llvh9StringRef10startswithES0_.exit11, %_ZNK4llvh9StringRef10startswithES0_.exit9, %_ZNK4llvh9StringRef10startswithES0_.exit7
  %.0 = phi i32 [ 2, %_ZNK4llvh9StringRef10startswithES0_.exit9 ], [ %spec.select, %_ZNK4llvh9StringRef8endswithES0_.exit ], [ 2, %_ZNK4llvh9StringRef10startswithES0_.exit11 ], [ %spec.select76, %_ZNK4llvh9StringRef10startswithES0_.exit ], [ 2, %_ZNK4llvh9StringRef10startswithES0_.exit7 ], [ 0, %_ZNK4llvh9StringRef10startswithES0_.exit3.thread ], [ 0, %_ZNK4llvh9StringRef10startswithES0_.exit7.thread ], [ 0, %_ZNK4llvh9StringRef10startswithES0_.exit5.thread92 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef range(i32 0, 4) i32 @_ZN4llvh3ARM16parseArchProfileENS_9StringRefE(ptr %0, i64 %1) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call { ptr, i64 } @_ZN4llvh3ARM20getCanonicalArchNameENS_9StringRefE(ptr %0, i64 %1) ; 2 uses
  %i.b = extractvalue { ptr, i64 } %i.a, 0
  %i.c = extractvalue { ptr, i64 } %i.a, 1
  %i.d = tail call { ptr, i64 } @_ZN4llvh3ARM20getCanonicalArchNameENS_9StringRefE(ptr %i.b, i64 %i.c) ; 2 uses
  %i.e = extractvalue { ptr, i64 } %i.d, 0
  %i.f = extractvalue { ptr, i64 } %i.d, 1
  %i.g = tail call fastcc { ptr, i64 } @_ZL14getArchSynonymN4llvh9StringRefE(ptr %i.e, i64 %i.f)
  %.fr.i = freeze { ptr, i64 } %i.g               ; 2 uses
  %i.h = extractvalue { ptr, i64 } %.fr.i, 0
  %i.i = extractvalue { ptr, i64 } %.fr.i, 1      ; 4 uses
  %i.j = icmp eq i64 %i.i, 0
  %i.k = sub i64 0, %i.i
  br i1 %i.j, label %_ZN4llvh3ARM9parseArchENS_9StringRefE.exit, label %.split.i

.split.i:                                         ; preds = %bb.a, %_ZNK4llvh9StringRef8endswithES0_.exit.thread.i
  %.017.idx35.i = phi i64 [ %.017.add.i, %_ZNK4llvh9StringRef8endswithES0_.exit.thread.i ], [ 0, %bb.a ] ; 2 uses
  %.017.ptr.i = getelementptr inbounds nuw i8, ptr @_ZN12_GLOBAL__N_19ARCHNamesE, i64 %.017.idx35.i ; 3 uses
  %.sroa.423.0..017.ptr.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.017.ptr.i, i64 8
  %.sroa.423.0.copyload.i = load i64, ptr %.sroa.423.0..017.ptr.sroa_idx.i, align 8, !tbaa !30 ; 2 uses
  %.not.i.i = icmp ult i64 %.sroa.423.0.copyload.i, %i.i
  br i1 %.not.i.i, label %_ZNK4llvh9StringRef8endswithES0_.exit.thread.i, label %_ZNK4llvh9StringRef8endswithES0_.exit.i

_ZNK4llvh9StringRef8endswithES0_.exit.i:          ; preds = %.split.i
  %.sroa.022.0.copyload.i = load ptr, ptr %.017.ptr.i, align 16, !tbaa !29
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.022.0.copyload.i, i64 %.sroa.423.0.copyload.i
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 %i.k
  %bcmp.i = tail call i32 @bcmp(ptr nonnull %i.m, ptr %i.h, i64 %i.i)
  %i.n = icmp eq i32 %bcmp.i, 0
  br i1 %i.n, label %.thread.split.loop.exit.i, label %_ZNK4llvh9StringRef8endswithES0_.exit.thread.i

_ZNK4llvh9StringRef8endswithES0_.exit.thread.i:   ; preds = %_ZNK4llvh9StringRef8endswithES0_.exit.i, %.split.i
  %.017.add.i = add nuw nsw i64 %.017.idx35.i, 64 ; 2 uses
  %.not.i = icmp eq i64 %.017.add.i, 2176
  br i1 %.not.i, label %_ZN4llvh3ARM9parseArchENS_9StringRefE.exit.thread, label %.split.i

.thread.split.loop.exit.i:                        ; preds = %_ZNK4llvh9StringRef8endswithES0_.exit.i
  %.sroa.524.0..017.ptr.sroa_idx.le.i = getelementptr inbounds nuw i8, ptr %.017.ptr.i, i64 56
  br label %_ZN4llvh3ARM9parseArchENS_9StringRefE.exit

_ZN4llvh3ARM9parseArchENS_9StringRefE.exit:       ; preds = %bb.a, %.thread.split.loop.exit.i
  %spec.select.i.in = phi ptr [ %.sroa.524.0..017.ptr.sroa_idx.le.i, %.thread.split.loop.exit.i ], [ getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_19ARCHNamesE, i64 56), %bb.a ]
  %spec.select.i = load i32, ptr %spec.select.i.in, align 8, !tbaa !230
  %i.o = zext nneg i32 %spec.select.i to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN4llvh3ARM16parseArchProfileENS_9StringRefE, i64 %i.o
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %_ZN4llvh3ARM9parseArchENS_9StringRefE.exit.thread

_ZN4llvh3ARM9parseArchENS_9StringRefE.exit.thread: ; preds = %_ZNK4llvh9StringRef8endswithES0_.exit.thread.i, %_ZN4llvh3ARM9parseArchENS_9StringRefE.exit
  %.0 = phi i32 [ %switch.ext, %_ZN4llvh3ARM9parseArchENS_9StringRefE.exit ], [ 0, %_ZNK4llvh9StringRef8endswithES0_.exit.thread.i ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef range(i32 0, 9) i32 @_ZN4llvh3ARM16parseArchVersionENS_9StringRefE(ptr %0, i64 %1) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call { ptr, i64 } @_ZN4llvh3ARM20getCanonicalArchNameENS_9StringRefE(ptr %0, i64 %1) ; 2 uses
  %i.b = extractvalue { ptr, i64 } %i.a, 0
  %i.c = extractvalue { ptr, i64 } %i.a, 1
  %i.d = tail call { ptr, i64 } @_ZN4llvh3ARM20getCanonicalArchNameENS_9StringRefE(ptr %i.b, i64 %i.c) ; 2 uses
  %i.e = extractvalue { ptr, i64 } %i.d, 0
  %i.f = extractvalue { ptr, i64 } %i.d, 1
  %i.g = tail call fastcc { ptr, i64 } @_ZL14getArchSynonymN4llvh9StringRefE(ptr %i.e, i64 %i.f)
  %.fr.i = freeze { ptr, i64 } %i.g               ; 2 uses
  %i.h = extractvalue { ptr, i64 } %.fr.i, 0
  %i.i = extractvalue { ptr, i64 } %.fr.i, 1      ; 4 uses
  %i.j = icmp eq i64 %i.i, 0
  %i.k = sub i64 0, %i.i
  br i1 %i.j, label %_ZN4llvh3ARM9parseArchENS_9StringRefE.exit, label %.split.i

.split.i:                                         ; preds = %bb.a, %_ZNK4llvh9StringRef8endswithES0_.exit.thread.i
  %.017.idx35.i = phi i64 [ %.017.add.i, %_ZNK4llvh9StringRef8endswithES0_.exit.thread.i ], [ 0, %bb.a ] ; 2 uses
  %.017.ptr.i = getelementptr inbounds nuw i8, ptr @_ZN12_GLOBAL__N_19ARCHNamesE, i64 %.017.idx35.i ; 3 uses
  %.sroa.423.0..017.ptr.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.017.ptr.i, i64 8
  %.sroa.423.0.copyload.i = load i64, ptr %.sroa.423.0..017.ptr.sroa_idx.i, align 8, !tbaa !30 ; 2 uses
  %.not.i.i = icmp ult i64 %.sroa.423.0.copyload.i, %i.i
  br i1 %.not.i.i, label %_ZNK4llvh9StringRef8endswithES0_.exit.thread.i, label %_ZNK4llvh9StringRef8endswithES0_.exit.i

_ZNK4llvh9StringRef8endswithES0_.exit.i:          ; preds = %.split.i
  %.sroa.022.0.copyload.i = load ptr, ptr %.017.ptr.i, align 16, !tbaa !29
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.022.0.copyload.i, i64 %.sroa.423.0.copyload.i
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 %i.k
  %bcmp.i = tail call i32 @bcmp(ptr nonnull %i.m, ptr %i.h, i64 %i.i)
  %i.n = icmp eq i32 %bcmp.i, 0
  br i1 %i.n, label %.thread.split.loop.exit.i, label %_ZNK4llvh9StringRef8endswithES0_.exit.thread.i

_ZNK4llvh9StringRef8endswithES0_.exit.thread.i:   ; preds = %_ZNK4llvh9StringRef8endswithES0_.exit.i, %.split.i
  %.017.add.i = add nuw nsw i64 %.017.idx35.i, 64 ; 2 uses
  %.not.i = icmp eq i64 %.017.add.i, 2176
  br i1 %.not.i, label %_ZN4llvh3ARM9parseArchENS_9StringRefE.exit.thread, label %.split.i

.thread.split.loop.exit.i:                        ; preds = %_ZNK4llvh9StringRef8endswithES0_.exit.i
  %.sroa.524.0..017.ptr.sroa_idx.le.i = getelementptr inbounds nuw i8, ptr %.017.ptr.i, i64 56
  br label %_ZN4llvh3ARM9parseArchENS_9StringRefE.exit

_ZN4llvh3ARM9parseArchENS_9StringRefE.exit:       ; preds = %bb.a, %.thread.split.loop.exit.i
  %spec.select.i.in = phi ptr [ %.sroa.524.0..017.ptr.sroa_idx.le.i, %.thread.split.loop.exit.i ], [ getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_19ARCHNamesE, i64 56), %bb.a ]
  %spec.select.i = load i32, ptr %spec.select.i.in, align 8, !tbaa !230
  %i.o = zext nneg i32 %spec.select.i to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN4llvh3ARM16parseArchVersionENS_9StringRefE, i64 %i.o
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %_ZN4llvh3ARM9parseArchENS_9StringRefE.exit.thread

_ZN4llvh3ARM9parseArchENS_9StringRefE.exit.thread: ; preds = %_ZNK4llvh9StringRef8endswithES0_.exit.thread.i, %_ZN4llvh3ARM9parseArchENS_9StringRefE.exit
  %.0 = phi i32 [ %switch.ext, %_ZN4llvh3ARM9parseArchENS_9StringRefE.exit ], [ 0, %_ZNK4llvh9StringRef8endswithES0_.exit.thread.i ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { ptr, i64 } @_ZN4llvh3ARM23computeDefaultTargetABIERKNS_6TripleENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr nofree readonly captures(none) %1, i64 %2) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bb.b, label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.b = tail call { ptr, i64 } @_ZNK4llvh6Triple11getArchNameEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #18
  br label %bb.c

.preheader:                                       ; preds = %bb.a, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.i
  %.010.idx29.i = phi i64 [ %.010.add.i, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.i ], [ 0, %bb.a ] ; 2 uses
  %.010.ptr.i = getelementptr inbounds nuw i8, ptr @_ZN12_GLOBAL__N_18CPUNamesE, i64 %.010.idx29.i ; 3 uses
  %.sroa.4.0..010.ptr.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.010.ptr.i, i64 8
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..010.ptr.sroa_idx.i, align 8, !tbaa !30
  %i.c = icmp eq i64 %2, %.sroa.4.0.copyload.i
  br i1 %i.c, label %_ZNK4llvh9StringRef6equalsES0_.exit.i, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread.i

_ZNK4llvh9StringRef6equalsES0_.exit.i:            ; preds = %.preheader
  %.sroa.0.0.copyload.i = load ptr, ptr %.010.ptr.i, align 16, !tbaa !29
  %bcmp.i = tail call i32 @bcmp(ptr readonly %1, ptr %.sroa.0.0.copyload.i, i64 %2)
  %i.d = icmp eq i32 %bcmp.i, 0
  br i1 %i.d, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread16.sink.split.i, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread.i

_ZNK4llvh9StringRef6equalsES0_.exit.thread.i:     ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.i, %.preheader
  %.010.add.i = add nuw nsw i64 %.010.idx29.i, 32 ; 2 uses
  %.not.i = icmp eq i64 %.010.add.i, 2656
  br i1 %.not.i, label %_ZN4llvh3ARM12parseCPUArchENS_9StringRefE.exit, label %.preheader

_ZNK4llvh9StringRef6equalsES0_.exit.thread16.sink.split.i: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.i
  %.sroa.5.0..010.ptr.sroa_idx.le27.i = getelementptr inbounds nuw i8, ptr %.010.ptr.i, i64 16
  %.sroa.5.0.copyload.le.i = load i32, ptr %.sroa.5.0..010.ptr.sroa_idx.le27.i, align 16, !tbaa !230
  %i.e = zext i32 %.sroa.5.0.copyload.le.i to i64
  br label %_ZN4llvh3ARM12parseCPUArchENS_9StringRefE.exit

_ZN4llvh3ARM12parseCPUArchENS_9StringRefE.exit:   ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.thread.i, %_ZNK4llvh9StringRef6equalsES0_.exit.thread16.sink.split.i
  %i.f = phi i64 [ %i.e, %_ZNK4llvh9StringRef6equalsES0_.exit.thread16.sink.split.i ], [ 0, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.i ]
  %i.g = getelementptr inbounds nuw [64 x i8], ptr @_ZN12_GLOBAL__N_19ARCHNamesE, i64 %i.f ; 2 uses
  %.val.i = load ptr, ptr %i.g, align 16, !tbaa !223
  %i.h = getelementptr i8, ptr %i.g, i64 8
  %.val1.i = load i64, ptr %i.h, align 8, !tbaa !224
  %.fca.0.insert.i.i = insertvalue { ptr, i64 } poison, ptr %.val.i, 0
  %.fca.1.insert.i.i = insertvalue { ptr, i64 } %.fca.0.insert.i.i, i64 %.val1.i, 1
  br label %bb.c

bb.c:                                             ; preds = %_ZN4llvh3ARM12parseCPUArchENS_9StringRefE.exit, %bb.b
  %.pn = phi { ptr, i64 } [ %i.b, %bb.b ], [ %.fca.1.insert.i.i, %_ZN4llvh3ARM12parseCPUArchENS_9StringRefE.exit ] ; 2 uses
  %.sroa.5.0 = extractvalue { ptr, i64 } %.pn, 1
  %.sroa.03.0 = extractvalue { ptr, i64 } %.pn, 0
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.j = load i32, ptr %i.i, align 4, !tbaa !339
  %i.k = icmp eq i32 %i.j, 3
  br i1 %i.k, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %4 = load i32, ptr %3, align 8, !tbaa !349
  %5 = icmp eq i32 %4, 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.m = load i32, ptr %i.l, align 4
  %i.n = icmp eq i32 %i.m, 0
  %or.cond = select i1 %5, i1 true, i1 %i.n
  br i1 %or.cond, label %bb.l, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = tail call noundef i32 @_ZN4llvh3ARM16parseArchProfileENS_9StringRefE(ptr %.sroa.03.0, i64 %.sroa.5.0)
  %i.p = icmp eq i32 %i.o, 3
  br i1 %i.p, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.r = load i32, ptr %i.q, align 4, !tbaa !350
  %i.s = icmp eq i32 %i.r, 14                     ; 2 uses
  %.str.146..str.147 = select i1 %i.s, ptr @.str.146, ptr @.str.147
  %. = select i1 %i.s, i64 7, i64 8
  br label %bb.l

bb.g:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.u = load i32, ptr %i.t, align 4, !tbaa !351  ; 2 uses
  %i.v = icmp eq i32 %i.u, 15
  br i1 %i.v, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.x = load i32, ptr %i.w, align 8, !tbaa !349
  %switch.tableidx = add i32 %i.x, -4             ; 4 uses
  %i.y = icmp ult i32 %switch.tableidx, 10
  %switch.maskindex = trunc i32 %switch.tableidx to i16
  %switch.shifted = lshr i16 883, %switch.maskindex
  %switch.lobit = trunc i16 %switch.shifted to i1
  %or.cond24 = select i1 %i.y, i1 %switch.lobit, i1 false
  br i1 %or.cond24, label %switch.lookup, label %bb.i

bb.i:                                             ; preds = %bb.h
  switch i32 %i.u, label %bb.k [
    i32 12, label %bb.l
    i32 13, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  br label %bb.l

switch.lookup:                                    ; preds = %bb.h
  %i.z = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN4llvh3ARM23computeDefaultTargetABIERKNS_6TripleENS_9StringRefE, i64 %i.z
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.aa = zext nneg i32 %switch.tableidx to i64
  %switch.gep22 = getelementptr inbounds nuw i8, ptr @switch.table._ZN4llvh3ARM23computeDefaultTargetABIERKNS_6TripleENS_9StringRefE.21, i64 %i.aa
  %switch.load23 = load i8, ptr %switch.gep22, align 1
  %switch.ext = zext i8 %switch.load23 to i64
  br label %bb.l

bb.l:                                             ; preds = %switch.lookup, %bb.i, %bb.g, %bb.f, %bb.d, %bb.e, %bb.k, %bb.j
  %.sroa.014.0 = phi ptr [ @.str.147, %bb.i ], [ %.str.146..str.147, %bb.f ], [ @.str.145, %bb.d ], [ @.str.145, %bb.e ], [ %switch.load, %switch.lookup ], [ @.str.148, %bb.j ], [ @.str.145, %bb.k ], [ @.str.145, %bb.g ]
  %.sroa.10.0 = phi i64 [ 8, %bb.i ], [ %., %bb.f ], [ 5, %bb.d ], [ 5, %bb.e ], [ %switch.ext, %switch.lookup ], [ 11, %bb.j ], [ 5, %bb.k ], [ 5, %bb.g ]
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.014.0, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.10.0, 1
  ret { ptr, i64 } %.fca.1.insert
}

declare { ptr, i64 } @_ZNK4llvh6Triple11getArchNameEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define hidden { ptr, i64 } @_ZN4llvh7AArch6420getCanonicalArchNameENS_9StringRefE(ptr %0, i64 %1) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call { ptr, i64 } @_ZN4llvh3ARM20getCanonicalArchNameENS_9StringRefE(ptr %0, i64 %1)
  ret { ptr, i64 } %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i32 @_ZN4llvh7AArch648parseFPUENS_9StringRefE(ptr nofree readonly captures(none) %0, i64 %1) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef i32 @_ZN4llvh3ARM8parseFPUENS_9StringRefE(ptr %0, i64 %1)
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i32 @_ZN4llvh7AArch6412parseArchExtENS_9StringRefE(ptr nofree readonly captures(none) %0, i64 %1) local_unnamed_addr #1 {
bb.a:
  switch i64 %1, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread16 [
    i64 7, label %_ZNK4llvh9StringRef6equalsES0_.exit
    i64 4, label %_ZNK4llvh9StringRef6equalsES0_.exit.1
    i64 3, label %_ZNK4llvh9StringRef6equalsES0_.exit.2
    i64 6, label %_ZNK4llvh9StringRef6equalsES0_.exit.5
    i64 2, label %_ZNK4llvh9StringRef6equalsES0_.exit.11
  ]

_ZNK4llvh9StringRef6equalsES0_.exit:              ; preds = %bb.a
  %i.a = load i32, ptr %0, align 1
  %i.b = xor i32 %i.a, 1635151465
  %i.c = getelementptr i8, ptr %0, i64 3
  %i.d = load i32, ptr %i.c, align 1
  %i.e = xor i32 %i.d, 1684630625
  %i.f = or i32 %i.b, %i.e
  %i.g = icmp ne i32 %i.f, 0
  %i.h = zext i1 %i.g to i32
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread16.split.loop.exit21, label %_ZNK4llvh9StringRef6equalsES0_.exit.10

_ZNK4llvh9StringRef6equalsES0_.exit.1:            ; preds = %bb.a
  %i.j = load i32, ptr %0, align 1
  %i.k = icmp ne i32 %i.j, 1701736302
  %i.l = zext i1 %i.k to i32
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread16.split.loop.exit21, label %_ZNK4llvh9StringRef6equalsES0_.exit.7

_ZNK4llvh9StringRef6equalsES0_.exit.2:            ; preds = %bb.a
  %i.n = load i16, ptr %0, align 1
  %i.o = xor i16 %i.n, 29283
  %i.p = getelementptr i8, ptr %0, i64 2
  %i.q = load i8, ptr %i.p, align 1
  %i.r = zext i8 %i.q to i16
  %i.s = xor i16 %i.r, 99
  %i.t = or i16 %i.o, %i.s
  %i.u = icmp ne i16 %i.t, 0
  %i.v = zext i1 %i.u to i32
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread16.split.loop.exit21, label %_ZNK4llvh9StringRef6equalsES0_.exit.3

_ZNK4llvh9StringRef6equalsES0_.exit.3:            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.2
  %i.x = load i16, ptr %0, align 1
  %i.y = xor i16 %i.x, 29548
  %i.z = getelementptr i8, ptr %0, i64 2
  %i.aa = load i8, ptr %i.z, align 1
  %i.ab = zext i8 %i.aa to i16
  %i.ac = xor i16 %i.ab, 101
  %i.ad = or i16 %i.y, %i.ac
  %i.ae = icmp ne i16 %i.ad, 0
  %i.af = zext i1 %i.ae to i32
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread16.split.loop.exit21, label %_ZNK4llvh9StringRef6equalsES0_.exit.4

_ZNK4llvh9StringRef6equalsES0_.exit.4:            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.3
  %i.ah = load i16, ptr %0, align 1
  %i.ai = xor i16 %i.ah, 25714
  %i.aj = getelementptr i8, ptr %0, i64 2
  %i.ak = load i8, ptr %i.aj, align 1
  %i.al = zext i8 %i.ak to i16
  %i.am = xor i16 %i.al, 109
  %i.an = or i16 %i.ai, %i.am
  %i.ao = icmp ne i16 %i.an, 0
  %i.ap = zext i1 %i.ao to i32
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread16.split.loop.exit21, label %_ZNK4llvh9StringRef6equalsES0_.exit.6

_ZNK4llvh9StringRef6equalsES0_.exit.5:            ; preds = %bb.a
  %i.ar = load i32, ptr %0, align 1
  %i.as = xor i32 %i.ar, 1887007331
  %i.at = getelementptr i8, ptr %0, i64 4
  %i.au = load i16, ptr %i.at, align 1
  %i.av = zext i16 %i.au to i32
  %i.aw = xor i32 %i.av, 28532
  %i.ax = or i32 %i.as, %i.aw
  %i.ay = icmp ne i32 %i.ax, 0
  %i.az = zext i1 %i.ay to i32
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread16.split.loop.exit21, label %_ZNK4llvh9StringRef6equalsES0_.exit.20

_ZNK4llvh9StringRef6equalsES0_.exit.6:            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.4
  %i.bb = load i16, ptr %0, align 1
  %i.bc = xor i16 %i.bb, 28019
  %i.bd = getelementptr i8, ptr %0, i64 2
  %i.be = load i8, ptr %i.bd, align 1
  %i.bf = zext i8 %i.be to i16
  %i.bg = xor i16 %i.bf, 52
  %i.bh = or i16 %i.bc, %i.bg
  %i.bi = icmp ne i16 %i.bh, 0
  %i.bj = zext i1 %i.bi to i32
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread16.split.loop.exit21, label %_ZNK4llvh9StringRef6equalsES0_.exit.9

_ZNK4llvh9StringRef6equalsES0_.exit.7:            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.1
  %i.bl = load i32, ptr %0, align 1
  %i.bm = icmp ne i32 %i.bl, 862021747
  %i.bn = zext i1 %i.bm to i32
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread16.split.loop.exit21, label %_ZNK4llvh9StringRef6equalsES0_.exit.8

_ZNK4llvh9StringRef6equalsES0_.exit.8:            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.7
  %i.bp = load i32, ptr %0, align 1
  %i.bq = icmp ne i32 %i.bp, 845244531
  %i.br = zext i1 %i.bq to i32
  %i.bs = icmp eq i32 %i.br, 0
  br i1 %i.bs, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread16.split.loop.exit21, label %_ZNK4llvh9StringRef6equalsES0_.exit.12

_ZNK4llvh9StringRef6equalsES0_.exit.9:            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.6
  %i.bt = load i16, ptr %0, align 1
  %i.bu = xor i16 %i.bt, 25953
  %i.bv = getelementptr i8, ptr %0, i64 2
  %i.bw = load i8, ptr %i.bv, align 1
  %i.bx = zext i8 %i.bw to i16
  %i.by = xor i16 %i.bx, 115
  %i.bz = or i16 %i.bu, %i.by
  %i.ca = icmp ne i16 %i.bz, 0
  %i.cb = zext i1 %i.ca to i32
  %i.cc = icmp eq i32 %i.cb, 0
  br i1 %i.cc, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread16.split.loop.exit21, label %_ZNK4llvh9StringRef6equalsES0_.exit.16

_ZNK4llvh9StringRef6equalsES0_.exit.10:           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit
  %i.cd = load i32, ptr %0, align 1
  %i.ce = xor i32 %i.cd, 1886678884
  %i.cf = getelementptr i8, ptr %0, i64 3
  %i.cg = load i32, ptr %i.cf, align 1
  %i.ch = xor i32 %i.cg, 1685025392
  %i.ci = or i32 %i.ce, %i.ch
  %i.cj = icmp ne i32 %i.ci, 0
  %i.ck = zext i1 %i.cj to i32
  %i.cl = icmp eq i32 %i.ck, 0
  br i1 %i.cl, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread16.split.loop.exit21, label %_ZNK4llvh9StringRef6equalsES0_.exit.14

_ZNK4llvh9StringRef6equalsES0_.exit.11:           ; preds = %bb.a
  %i.cm = load i16, ptr %0, align 1
  %i.cn = icmp ne i16 %i.cm, 28774
  %i.co = zext i1 %i.cn to i32
  %i.cp = icmp eq i32 %i.co, 0
  br i1 %i.cp, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread16.split.loop.exit21, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread16

_ZNK4llvh9StringRef6equalsES0_.exit.12:           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.8
  %i.cq = load i32, ptr %0, align 1
  %i.cr = icmp ne i32 %i.cq, 1684892019
  %i.cs = zext i1 %i.cr to i32
  %i.ct = icmp eq i32 %i.cs, 0
  br i1 %i.ct, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread16.split.loop.exit21, label %_ZNK4llvh9StringRef6equalsES0_.exit.13

_ZNK4llvh9StringRef6equalsES0_.exit.13:           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.12
  %i.cu = load i32, ptr %0, align 1
  %i.cv = icmp ne i32 %i.cu, 909209702
  %i.cw = zext i1 %i.cv to i32
  %i.cx = icmp eq i32 %i.cw, 0
  br i1 %i.cx, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread16.split.loop.exit21, label %_ZNK4llvh9StringRef6equalsES0_.exit.18

_ZNK4llvh9StringRef6equalsES0_.exit.14:           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.10
  %i.cy = load i32, ptr %0, align 1
  %i.cz = xor i32 %i.cy, 909209702
  %i.da = getelementptr i8, ptr %0, i64 3
  %i.db = load i32, ptr %i.da, align 1
  %i.dc = xor i32 %i.db, 1819108918
  %i.dd = or i32 %i.cz, %i.dc
  %i.de = icmp ne i32 %i.dd, 0
  %i.df = zext i1 %i.de to i32
  %i.dg = icmp eq i32 %i.df, 0
  br i1 %i.dg, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread16.split.loop.exit21, label %_ZNK4llvh9StringRef6equalsES0_.exit.15

_ZNK4llvh9StringRef6equalsES0_.exit.15:           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.14
  %i.dh = load i32, ptr %0, align 1
  %i.di = xor i32 %i.dh, 1718579824
  %i.dj = getelementptr i8, ptr %0, i64 3
  %i.dk = load i32, ptr %i.dj, align 1
  %i.dl = xor i32 %i.dk, 1701603686
  %i.dm = or i32 %i.di, %i.dl
  %i.dn = icmp ne i32 %i.dm, 0
  %i.do = zext i1 %i.dn to i32
  %i.dp = icmp eq i32 %i.do, 0
  br i1 %i.dp, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread16.split.loop.exit21, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread16

end_hunk_0
begin_hunk_1_@_ZN4llvh7AArch6412parseCPUArchENS_9StringRefE:bb.a

_ZNK4llvh9StringRef6equalsES0_.exit.13:           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.thread.7, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.8, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.9, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.10, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.11, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.12
  %bcmp.13 = tail call i32 @bcmp(ptr %0, ptr nonnull @.str.118, i64 %1)
  %i.n = icmp eq i32 %bcmp.13, 0
  br i1 %i.n, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread16.sink.split, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread.13

_ZNK4llvh9StringRef6equalsES0_.exit.thread.13:    ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.13
  switch i64 %1, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread16 [
    i64 4, label %_ZNK4llvh9StringRef6equalsES0_.exit.14
    i64 12, label %_ZNK4llvh9StringRef6equalsES0_.exit.15
    i64 8, label %_ZNK4llvh9StringRef6equalsES0_.exit.16
    i64 11, label %_ZNK4llvh9StringRef6equalsES0_.exit.17
    i64 7, label %_ZNK4llvh9StringRef6equalsES0_.exit.20
  ]

_ZNK4llvh9StringRef6equalsES0_.exit.14:           ; preds = %bb.a, %_ZNK4llvh9StringRef6equalsES0_.exit.thread, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.1, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.2, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.3, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.4, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.5, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.6, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.7, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.8, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.9, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.10, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.11, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.12, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.13
  %bcmp.14 = tail call i32 @bcmp(ptr %0, ptr nonnull @.str.79, i64 %1)
  %i.o = icmp eq i32 %bcmp.14, 0
  br i1 %i.o, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread16.sink.split, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread.14

_ZNK4llvh9StringRef6equalsES0_.exit.thread.14:    ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.14
  switch i64 %1, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread16 [
    i64 12, label %_ZNK4llvh9StringRef6equalsES0_.exit.15
    i64 8, label %_ZNK4llvh9StringRef6equalsES0_.exit.16
    i64 11, label %_ZNK4llvh9StringRef6equalsES0_.exit.17
    i64 7, label %_ZNK4llvh9StringRef6equalsES0_.exit.20
  ]

_ZNK4llvh9StringRef6equalsES0_.exit.15:           ; preds = %bb.a, %_ZNK4llvh9StringRef6equalsES0_.exit.thread, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.1, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.2, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.3, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.4, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.5, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.6, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.7, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.8, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.9, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.10, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.11, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.12, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.13, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.14
  %bcmp.15 = tail call i32 @bcmp(ptr %0, ptr nonnull @.str.119, i64 %1)
  %i.p = icmp eq i32 %bcmp.15, 0
  br i1 %i.p, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread16.sink.split, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread.15

_ZNK4llvh9StringRef6equalsES0_.exit.thread.15:    ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.15
  switch i64 %1, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread16 [
    i64 8, label %_ZNK4llvh9StringRef6equalsES0_.exit.16
    i64 11, label %_ZNK4llvh9StringRef6equalsES0_.exit.17
    i64 7, label %_ZNK4llvh9StringRef6equalsES0_.exit.20
  ]

_ZNK4llvh9StringRef6equalsES0_.exit.16:           ; preds = %bb.a, %_ZNK4llvh9StringRef6equalsES0_.exit.thread, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.1, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.2, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.3, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.4, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.5, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.6, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.7, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.8, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.9, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.10, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.11, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.12, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.13, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.14, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.15
  %bcmp.16 = tail call i32 @bcmp(ptr %0, ptr nonnull @.str.120, i64 %1)
  %i.q = icmp eq i32 %bcmp.16, 0
  br i1 %i.q, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread16.sink.split, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread.16

_ZNK4llvh9StringRef6equalsES0_.exit.thread.16:    ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.16
  switch i64 %1, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread16 [
    i64 11, label %_ZNK4llvh9StringRef6equalsES0_.exit.17
    i64 7, label %_ZNK4llvh9StringRef6equalsES0_.exit.20
  ]

_ZNK4llvh9StringRef6equalsES0_.exit.17:           ; preds = %bb.a, %_ZNK4llvh9StringRef6equalsES0_.exit.thread, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.1, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.2, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.3, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.4, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.5, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.6, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.7, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.8, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.9, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.10, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.11, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.12, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.13, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.14, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.15, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.16
  %bcmp.17 = tail call i32 @bcmp(ptr %0, ptr nonnull @.str.121, i64 %1)
  %i.r = icmp eq i32 %bcmp.17, 0
  br i1 %i.r, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread16.sink.split, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread.17

_ZNK4llvh9StringRef6equalsES0_.exit.thread.17:    ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.17
  switch i64 %1, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread16 [
    i64 11, label %_ZNK4llvh9StringRef6equalsES0_.exit.18
    i64 7, label %_ZNK4llvh9StringRef6equalsES0_.exit.20
  ]

_ZNK4llvh9StringRef6equalsES0_.exit.18:           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.thread.17
  %bcmp.18 = tail call i32 @bcmp(ptr %0, ptr nonnull @.str.122, i64 %1)
  %i.s = icmp eq i32 %bcmp.18, 0
  br i1 %i.s, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread16.sink.split, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread.18

_ZNK4llvh9StringRef6equalsES0_.exit.thread.18:    ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.18
  switch i64 %1, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread16 [
    i64 11, label %_ZNK4llvh9StringRef6equalsES0_.exit.19
    i64 7, label %_ZNK4llvh9StringRef6equalsES0_.exit.20
  ]

_ZNK4llvh9StringRef6equalsES0_.exit.19:           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.thread.18
  %bcmp.19 = tail call i32 @bcmp(ptr %0, ptr nonnull @.str.123, i64 %1)
  %i.t = icmp eq i32 %bcmp.19, 0
  br i1 %i.t, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread16.sink.split, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread.19

_ZNK4llvh9StringRef6equalsES0_.exit.thread.19:    ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.19
  %i.u = icmp eq i64 %1, 7
  br i1 %i.u, label %_ZNK4llvh9StringRef6equalsES0_.exit.20, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread16

_ZNK4llvh9StringRef6equalsES0_.exit.20:           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.thread.19, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.18, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.17, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.16, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.15, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.14, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.13
  %bcmp.20 = tail call i32 @bcmp(ptr %0, ptr nonnull @.str.83, i64 %1)
  %i.v = icmp eq i32 %bcmp.20, 0
  br i1 %i.v, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread16.sink.split, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread16

_ZNK4llvh9StringRef6equalsES0_.exit.thread16.sink.split: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit, %_ZNK4llvh9StringRef6equalsES0_.exit.1, %_ZNK4llvh9StringRef6equalsES0_.exit.2, %_ZNK4llvh9StringRef6equalsES0_.exit.3, %_ZNK4llvh9StringRef6equalsES0_.exit.4, %_ZNK4llvh9StringRef6equalsES0_.exit.5, %_ZNK4llvh9StringRef6equalsES0_.exit.6, %_ZNK4llvh9StringRef6equalsES0_.exit.7, %_ZNK4llvh9StringRef6equalsES0_.exit.8, %_ZNK4llvh9StringRef6equalsES0_.exit.9, %_ZNK4llvh9StringRef6equalsES0_.exit.10, %_ZNK4llvh9StringRef6equalsES0_.exit.11, %_ZNK4llvh9StringRef6equalsES0_.exit.12, %_ZNK4llvh9StringRef6equalsES0_.exit.13, %_ZNK4llvh9StringRef6equalsES0_.exit.14, %_ZNK4llvh9StringRef6equalsES0_.exit.15, %_ZNK4llvh9StringRef6equalsES0_.exit.16, %_ZNK4llvh9StringRef6equalsES0_.exit.17, %_ZNK4llvh9StringRef6equalsES0_.exit.18, %_ZNK4llvh9StringRef6equalsES0_.exit.19, %_ZNK4llvh9StringRef6equalsES0_.exit.20
  %.010.ptr.lcssa30.sink = phi ptr [ getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_115AArch64CPUNamesE, i64 640), %_ZNK4llvh9StringRef6equalsES0_.exit.20 ], [ @_ZN12_GLOBAL__N_115AArch64CPUNamesE, %_ZNK4llvh9StringRef6equalsES0_.exit ], [ getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_115AArch64CPUNamesE, i64 32), %_ZNK4llvh9StringRef6equalsES0_.exit.1 ], [ getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_115AArch64CPUNamesE, i64 64), %_ZNK4llvh9StringRef6equalsES0_.exit.2 ], [ getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_115AArch64CPUNamesE, i64 96), %_ZNK4llvh9StringRef6equalsES0_.exit.3 ], [ getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_115AArch64CPUNamesE, i64 128), %_ZNK4llvh9StringRef6equalsES0_.exit.4 ], [ getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_115AArch64CPUNamesE, i64 160), %_ZNK4llvh9StringRef6equalsES0_.exit.5 ], [ getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_115AArch64CPUNamesE, i64 192), %_ZNK4llvh9StringRef6equalsES0_.exit.6 ], [ getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_115AArch64CPUNamesE, i64 224), %_ZNK4llvh9StringRef6equalsES0_.exit.7 ], [ getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_115AArch64CPUNamesE, i64 256), %_ZNK4llvh9StringRef6equalsES0_.exit.8 ], [ getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_115AArch64CPUNamesE, i64 288), %_ZNK4llvh9StringRef6equalsES0_.exit.9 ], [ getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_115AArch64CPUNamesE, i64 320), %_ZNK4llvh9StringRef6equalsES0_.exit.10 ], [ getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_115AArch64CPUNamesE, i64 352), %_ZNK4llvh9StringRef6equalsES0_.exit.11 ], [ getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_115AArch64CPUNamesE, i64 384), %_ZNK4llvh9StringRef6equalsES0_.exit.12 ], [ getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_115AArch64CPUNamesE, i64 416), %_ZNK4llvh9StringRef6equalsES0_.exit.13 ], [ getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_115AArch64CPUNamesE, i64 448), %_ZNK4llvh9StringRef6equalsES0_.exit.14 ], [ getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_115AArch64CPUNamesE, i64 480), %_ZNK4llvh9StringRef6equalsES0_.exit.15 ], [ getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_115AArch64CPUNamesE, i64 512), %_ZNK4llvh9StringRef6equalsES0_.exit.16 ], [ getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_115AArch64CPUNamesE, i64 544), %_ZNK4llvh9StringRef6equalsES0_.exit.17 ], [ getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_115AArch64CPUNamesE, i64 576), %_ZNK4llvh9StringRef6equalsES0_.exit.18 ], [ getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_115AArch64CPUNamesE, i64 608), %_ZNK4llvh9StringRef6equalsES0_.exit.19 ]
  %.sroa.5.0..010.ptr.sroa_idx.le27 = getelementptr inbounds nuw i8, ptr %.010.ptr.lcssa30.sink, i64 16
  %.sroa.5.0.copyload.le = load i32, ptr %.sroa.5.0..010.ptr.sroa_idx.le27, align 16, !tbaa !322
  br label %_ZNK4llvh9StringRef6equalsES0_.exit.thread16

_ZNK4llvh9StringRef6equalsES0_.exit.thread16:     ; preds = %bb.a, %_ZNK4llvh9StringRef6equalsES0_.exit.thread, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.1, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.2, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.3, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.4, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.5, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.6, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.7, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.8, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.9, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.10, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.11, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.12, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.13, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.14, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.15, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.16, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.17, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.18, %_ZNK4llvh9StringRef6equalsES0_.exit.thread16.sink.split, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.19, %_ZNK4llvh9StringRef6equalsES0_.exit.20
  %i.w = phi i32 [ 0, %_ZNK4llvh9StringRef6equalsES0_.exit.20 ], [ 0, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.19 ], [ %.sroa.5.0.copyload.le, %_ZNK4llvh9StringRef6equalsES0_.exit.thread16.sink.split ], [ 0, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.18 ], [ 0, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.17 ], [ 0, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.16 ], [ 0, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.15 ], [ 0, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.14 ], [ 0, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.13 ], [ 0, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.12 ], [ 0, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.11 ], [ 0, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.10 ], [ 0, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.9 ], [ 0, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.8 ], [ 0, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.7 ], [ 0, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.6 ], [ 0, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.5 ], [ 0, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.4 ], [ 0, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.3 ], [ 0, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.2 ], [ 0, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.1 ], [ 0, %_ZNK4llvh9StringRef6equalsES0_.exit.thread ], [ 0, %bb.a ]
  ret i32 %i.w
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef range(i32 0, 4) i32 @_ZN4llvh7AArch6412parseArchISAENS_9StringRefE(ptr nofree readonly captures(none) %0, i64 %1) local_unnamed_addr #5 {
bb.a:
  %.not.i.i9.i = icmp ult i64 %1, 7
  br i1 %.not.i.i9.i, label %bb.b, label %_ZNK4llvh9StringRef10startswithES0_.exit.i10.i

_ZNK4llvh9StringRef10startswithES0_.exit.i10.i:   ; preds = %bb.a
  %i.a = load i32, ptr %0, align 1
  %i.b = xor i32 %i.a, 1668440417
  %i.c = getelementptr i8, ptr %0, i64 3
  %i.d = load i32, ptr %i.c, align 1
  %i.e = xor i32 %i.d, 875980899
  %i.f = or i32 %i.b, %i.e
  %i.g = icmp ne i32 %i.f, 0
  %i.h = zext i1 %i.g to i32
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %_ZN4llvh3ARM12parseArchISAENS_9StringRefE.exit, label %_ZNK4llvh9StringRef10startswithES0_.exit.i7.i

bb.b:                                             ; preds = %bb.a
  %.not.i.i6.i = icmp samesign ult i64 %1, 5
  br i1 %.not.i.i6.i, label %_ZN4llvh12StringSwitchINS_3ARM7ISAKindES2_E10StartsWithENS_13StringLiteralES2_.exit5.i, label %_ZNK4llvh9StringRef10startswithES0_.exit.i7.i

_ZNK4llvh9StringRef10startswithES0_.exit.i7.i:    ; preds = %bb.b, %_ZNK4llvh9StringRef10startswithES0_.exit.i10.i
  %i.j = load i32, ptr %0, align 1
  %i.k = xor i32 %i.j, 913142369
  %i.l = getelementptr i8, ptr %0, i64 4
  %i.m = load i8, ptr %i.l, align 1
  %i.n = zext i8 %i.m to i32
  %i.o = xor i32 %i.n, 52
  %i.p = or i32 %i.k, %i.o
  %i.q = icmp ne i32 %i.p, 0
  %i.r = zext i1 %i.q to i32
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %_ZN4llvh3ARM12parseArchISAENS_9StringRefE.exit, label %_ZNK4llvh9StringRef10startswithES0_.exit.i4.i

_ZNK4llvh9StringRef10startswithES0_.exit.i4.i:    ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit.i7.i
  %i.t = load i32, ptr %0, align 1
  %i.u = xor i32 %i.t, 1836410996
  %i.v = getelementptr i8, ptr %0, i64 4
  %i.w = load i8, ptr %i.v, align 1
  %i.x = zext i8 %i.w to i32
  %i.y = xor i32 %i.x, 98
  %i.z = or i32 %i.u, %i.y
  %i.aa = icmp ne i32 %i.z, 0
  %i.ab = zext i1 %i.aa to i32
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %_ZN4llvh3ARM12parseArchISAENS_9StringRefE.exit, label %_ZNK4llvh9StringRef10startswithES0_.exit.i.i

_ZN4llvh12StringSwitchINS_3ARM7ISAKindES2_E10StartsWithENS_13StringLiteralES2_.exit5.i: ; preds = %bb.b
  %.not.i.i.i = icmp samesign ult i64 %1, 3
  br i1 %.not.i.i.i, label %_ZN4llvh3ARM12parseArchISAENS_9StringRefE.exit, label %_ZNK4llvh9StringRef10startswithES0_.exit.i.i

_ZNK4llvh9StringRef10startswithES0_.exit.i.i:     ; preds = %_ZN4llvh12StringSwitchINS_3ARM7ISAKindES2_E10StartsWithENS_13StringLiteralES2_.exit5.i, %_ZNK4llvh9StringRef10startswithES0_.exit.i4.i
  %i.ad = load i16, ptr %0, align 1
  %i.ae = xor i16 %i.ad, 29281
  %i.af = getelementptr i8, ptr %0, i64 2
  %i.ag = load i8, ptr %i.af, align 1
  %i.ah = zext i8 %i.ag to i16
  %i.ai = xor i16 %i.ah, 109
  %i.aj = or i16 %i.ae, %i.ai
  %i.ak = icmp ne i16 %i.aj, 0
  %i.al = zext i1 %i.ak to i32
  %i.am = icmp eq i32 %i.al, 0
  %spec.select.i = zext i1 %i.am to i32
  br label %_ZN4llvh3ARM12parseArchISAENS_9StringRefE.exit

_ZN4llvh3ARM12parseArchISAENS_9StringRefE.exit:   ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit.i10.i, %_ZNK4llvh9StringRef10startswithES0_.exit.i7.i, %_ZNK4llvh9StringRef10startswithES0_.exit.i4.i, %_ZN4llvh12StringSwitchINS_3ARM7ISAKindES2_E10StartsWithENS_13StringLiteralES2_.exit5.i, %_ZNK4llvh9StringRef10startswithES0_.exit.i.i
  %.0.i.i = phi i32 [ %spec.select.i, %_ZNK4llvh9StringRef10startswithES0_.exit.i.i ], [ 2, %_ZNK4llvh9StringRef10startswithES0_.exit.i4.i ], [ 0, %_ZN4llvh12StringSwitchINS_3ARM7ISAKindES2_E10StartsWithENS_13StringLiteralES2_.exit5.i ], [ 3, %_ZNK4llvh9StringRef10startswithES0_.exit.i7.i ], [ 3, %_ZNK4llvh9StringRef10startswithES0_.exit.i10.i ]
  ret i32 %.0.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef range(i32 0, 3) i32 @_ZN4llvh7AArch6415parseArchEndianENS_9StringRefE(ptr nofree readonly captures(none) %0, i64 %1) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call noundef i32 @_ZN4llvh3ARM15parseArchEndianENS_9StringRefE(ptr %0, i64 %1)
  ret i32 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef range(i32 0, 4) i32 @_ZN4llvh7AArch6416parseArchProfileENS_9StringRefE(ptr %0, i64 %1) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call noundef i32 @_ZN4llvh3ARM16parseArchProfileENS_9StringRefE(ptr %0, i64 %1)
  ret i32 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef range(i32 0, 9) i32 @_ZN4llvh7AArch6416parseArchVersionENS_9StringRefE(ptr %0, i64 %1) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call noundef i32 @_ZN4llvh3ARM16parseArchVersionENS_9StringRefE(ptr %0, i64 %1)
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZN4llvh7AArch6422isX18ReservedByDefaultERKNS_6TripleE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i32, ptr %i.a, align 8, !tbaa !349
  %i.c = icmp eq i32 %i.b, 10
  br i1 %i.c, label %_ZNK4llvh6Triple10isOSDarwinEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.e = load i32, ptr %i.d, align 4, !tbaa !351  ; 3 uses
  %i.f = and i32 %i.e, -9
  %spec.select.i.i = icmp eq i32 %i.f, 3
  br i1 %spec.select.i.i, label %_ZNK4llvh6Triple10isOSDarwinEv.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = icmp ult i32 %i.e, 29
  br i1 %i.g, label %switch.lookup, label %_ZNK4llvh6Triple10isOSDarwinEv.exit.thread

switch.lookup:                                    ; preds = %bb.c
  %switch.cast = trunc nuw i32 %i.e to i29
  %switch.downshift = lshr i29 -134184768, %switch.cast
  %switch.masked = trunc i29 %switch.downshift to i1
  br label %_ZNK4llvh6Triple10isOSDarwinEv.exit.thread

_ZNK4llvh6Triple10isOSDarwinEv.exit.thread:       ; preds = %bb.c, %switch.lookup, %bb.b, %bb.a
  %i.h = phi i1 [ %switch.masked, %switch.lookup ], [ true, %bb.b ], [ true, %bb.a ], [ false, %bb.c ]
  ret i1 %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden { ptr, i64 } @_ZN4llvh6AMDGPU17getArchNameAMDGCNENS0_7GPUKindE(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %bb.a
  %.04.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ @_ZN12_GLOBAL__N_110AMDGCNGPUsE, %bb.a ] ; 2 uses
  %.0113.i.i.i = phi i64 [ %.112.i.i.i, %.lr.ph.i.i.i ], [ 32, %bb.a ] ; 2 uses
  %i.a = lshr i64 %.0113.i.i.i, 1                 ; 3 uses
  %i.b = getelementptr inbounds nuw [40 x i8], ptr %.04.i.i.i, i64 %i.a ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 32
  %.val.i.i.i = load i32, ptr %i.c, align 8, !tbaa !352
  %i.d = icmp ult i32 %.val.i.i.i, %0             ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.f = xor i64 %i.a, -1
  %i.g = add nsw i64 %.0113.i.i.i, %i.f
  %.112.i.i.i = select i1 %i.d, i64 %i.g, i64 %i.a ; 2 uses
  %.1.i.i.i = select i1 %i.d, ptr %i.e, ptr %.04.i.i.i ; 5 uses
  %i.h = icmp sgt i64 %.112.i.i.i, 0
  br i1 %i.h, label %.lr.ph.i.i.i, label %_ZN12_GLOBAL__N_112getArchEntryEN4llvh6AMDGPU7GPUKindENS0_8ArrayRefINS_7GPUInfoEEE.exit, !llvm.loop !356

_ZN12_GLOBAL__N_112getArchEntryEN4llvh6AMDGPU7GPUKindENS0_8ArrayRefINS_7GPUInfoEEE.exit: ; preds = %.lr.ph.i.i.i
  %i.i = icmp eq ptr %.1.i.i.i, getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_110AMDGCNGPUsE, i64 1280)
  %.not.not7 = icmp eq ptr %.1.i.i.i, null
  %.not.not = or i1 %i.i, %.not.not7
  br i1 %.not.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZN12_GLOBAL__N_112getArchEntryEN4llvh6AMDGPU7GPUKindENS0_8ArrayRefINS_7GPUInfoEEE.exit
  %i.j = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 16
  %.sroa.04.0.copyload = load ptr, ptr %i.j, align 8, !tbaa !29
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 24
  %.sroa.3.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !30
  br label %bb.c

bb.c:                                             ; preds = %_ZN12_GLOBAL__N_112getArchEntryEN4llvh6AMDGPU7GPUKindENS0_8ArrayRefINS_7GPUInfoEEE.exit, %bb.b
  %.sroa.04.1 = phi ptr [ %.sroa.04.0.copyload, %bb.b ], [ @.str.135, %_ZN12_GLOBAL__N_112getArchEntryEN4llvh6AMDGPU7GPUKindENS0_8ArrayRefINS_7GPUInfoEEE.exit ]
  %.sroa.3.1 = phi i64 [ %.sroa.3.0.copyload, %bb.b ], [ 0, %_ZN12_GLOBAL__N_112getArchEntryEN4llvh6AMDGPU7GPUKindENS0_8ArrayRefINS_7GPUInfoEEE.exit ]
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.04.1, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.3.1, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden { ptr, i64 } @_ZN4llvh6AMDGPU15getArchNameR600ENS0_7GPUKindE(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %bb.a
  %.04.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ @_ZN12_GLOBAL__N_18R600GPUsE, %bb.a ] ; 2 uses
  %.0113.i.i.i = phi i64 [ %.112.i.i.i, %.lr.ph.i.i.i ], [ 26, %bb.a ] ; 2 uses
  %i.a = lshr i64 %.0113.i.i.i, 1                 ; 3 uses
  %i.b = getelementptr inbounds nuw [40 x i8], ptr %.04.i.i.i, i64 %i.a ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 32
  %.val.i.i.i = load i32, ptr %i.c, align 8, !tbaa !352
  %i.d = icmp ult i32 %.val.i.i.i, %0             ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.f = xor i64 %i.a, -1
  %i.g = add nsw i64 %.0113.i.i.i, %i.f
  %.112.i.i.i = select i1 %i.d, i64 %i.g, i64 %i.a ; 2 uses
  %.1.i.i.i = select i1 %i.d, ptr %i.e, ptr %.04.i.i.i ; 5 uses
  %i.h = icmp sgt i64 %.112.i.i.i, 0
  br i1 %i.h, label %.lr.ph.i.i.i, label %_ZN12_GLOBAL__N_112getArchEntryEN4llvh6AMDGPU7GPUKindENS0_8ArrayRefINS_7GPUInfoEEE.exit, !llvm.loop !356

_ZN12_GLOBAL__N_112getArchEntryEN4llvh6AMDGPU7GPUKindENS0_8ArrayRefINS_7GPUInfoEEE.exit: ; preds = %.lr.ph.i.i.i
  %i.i = icmp eq ptr %.1.i.i.i, getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_18R600GPUsE, i64 1040)
  %.not.not7 = icmp eq ptr %.1.i.i.i, null
  %.not.not = or i1 %i.i, %.not.not7
  br i1 %.not.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZN12_GLOBAL__N_112getArchEntryEN4llvh6AMDGPU7GPUKindENS0_8ArrayRefINS_7GPUInfoEEE.exit
  %i.j = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 16
  %.sroa.04.0.copyload = load ptr, ptr %i.j, align 8, !tbaa !29
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 24
  %.sroa.3.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !30
  br label %bb.c

bb.c:                                             ; preds = %_ZN12_GLOBAL__N_112getArchEntryEN4llvh6AMDGPU7GPUKindENS0_8ArrayRefINS_7GPUInfoEEE.exit, %bb.b
  %.sroa.04.1 = phi ptr [ %.sroa.04.0.copyload, %bb.b ], [ @.str.135, %_ZN12_GLOBAL__N_112getArchEntryEN4llvh6AMDGPU7GPUKindENS0_8ArrayRefINS_7GPUInfoEEE.exit ]
  %.sroa.3.1 = phi i64 [ %.sroa.3.0.copyload, %bb.b ], [ 0, %_ZN12_GLOBAL__N_112getArchEntryEN4llvh6AMDGPU7GPUKindENS0_8ArrayRefINS_7GPUInfoEEE.exit ]
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.04.1, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.3.1, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i32 @_ZN4llvh6AMDGPU15parseArchAMDGCNENS_9StringRefE(ptr nofree readonly captures(none) %0, i64 %1) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZNK4llvh9StringRef6equalsES0_.exit.thread
  %.012.idx28 = phi i64 [ 0, %bb.a ], [ %.012.add, %_ZNK4llvh9StringRef6equalsES0_.exit.thread ] ; 2 uses
  %.012.ptr = getelementptr inbounds nuw i8, ptr @_ZN12_GLOBAL__N_110AMDGCNGPUsE, i64 %.012.idx28 ; 3 uses
  %.sroa.03.0.copyload = load ptr, ptr %.012.ptr, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.012.ptr, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8
  %i.b = icmp eq i64 %1, %.sroa.4.0.copyload
  br i1 %i.b, label %bb.c, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread

bb.c:                                             ; preds = %bb.b
  br i1 %i.a, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread15.sink.split, label %_ZNK4llvh9StringRef6equalsES0_.exit

_ZNK4llvh9StringRef6equalsES0_.exit:              ; preds = %bb.c
  %bcmp = tail call i32 @bcmp(ptr %0, ptr %.sroa.03.0.copyload, i64 %1)
  %i.c = icmp eq i32 %bcmp, 0
  br i1 %i.c, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread15.sink.split, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread

_ZNK4llvh9StringRef6equalsES0_.exit.thread:       ; preds = %bb.b, %_ZNK4llvh9StringRef6equalsES0_.exit
  %.012.add = add nuw nsw i64 %.012.idx28, 40     ; 2 uses
  %.not = icmp eq i64 %.012.add, 1280
  br i1 %.not, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread15, label %bb.b

_ZNK4llvh9StringRef6equalsES0_.exit.thread15.sink.split: ; preds = %bb.c, %_ZNK4llvh9StringRef6equalsES0_.exit
  %.sroa.54.0..sroa_idx.le26 = getelementptr inbounds nuw i8, ptr %.012.ptr, i64 32
  %.sroa.54.0.copyload.le = load i32, ptr %.sroa.54.0..sroa_idx.le26, align 8
  br label %_ZNK4llvh9StringRef6equalsES0_.exit.thread15

_ZNK4llvh9StringRef6equalsES0_.exit.thread15:     ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.thread, %_ZNK4llvh9StringRef6equalsES0_.exit.thread15.sink.split
  %i.d = phi i32 [ %.sroa.54.0.copyload.le, %_ZNK4llvh9StringRef6equalsES0_.exit.thread15.sink.split ], [ 0, %_ZNK4llvh9StringRef6equalsES0_.exit.thread ]
  ret i32 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i32 @_ZN4llvh6AMDGPU13parseArchR600ENS_9StringRefE(ptr nofree readonly captures(none) %0, i64 %1) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZNK4llvh9StringRef6equalsES0_.exit.thread
  %.012.idx28 = phi i64 [ 0, %bb.a ], [ %.012.add, %_ZNK4llvh9StringRef6equalsES0_.exit.thread ] ; 2 uses
  %.012.ptr = getelementptr inbounds nuw i8, ptr @_ZN12_GLOBAL__N_18R600GPUsE, i64 %.012.idx28 ; 3 uses
  %.sroa.03.0.copyload = load ptr, ptr %.012.ptr, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.012.ptr, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8
  %i.b = icmp eq i64 %1, %.sroa.4.0.copyload
  br i1 %i.b, label %bb.c, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread

bb.c:                                             ; preds = %bb.b
  br i1 %i.a, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread15.sink.split, label %_ZNK4llvh9StringRef6equalsES0_.exit

_ZNK4llvh9StringRef6equalsES0_.exit:              ; preds = %bb.c
  %bcmp = tail call i32 @bcmp(ptr %0, ptr %.sroa.03.0.copyload, i64 %1)
  %i.c = icmp eq i32 %bcmp, 0
  br i1 %i.c, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread15.sink.split, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread

_ZNK4llvh9StringRef6equalsES0_.exit.thread:       ; preds = %bb.b, %_ZNK4llvh9StringRef6equalsES0_.exit
  %.012.add = add nuw nsw i64 %.012.idx28, 40     ; 2 uses
  %.not = icmp eq i64 %.012.add, 1040
  br i1 %.not, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread15, label %bb.b

_ZNK4llvh9StringRef6equalsES0_.exit.thread15.sink.split: ; preds = %bb.c, %_ZNK4llvh9StringRef6equalsES0_.exit
  %.sroa.54.0..sroa_idx.le26 = getelementptr inbounds nuw i8, ptr %.012.ptr, i64 32
  %.sroa.54.0.copyload.le = load i32, ptr %.sroa.54.0..sroa_idx.le26, align 8
  br label %_ZNK4llvh9StringRef6equalsES0_.exit.thread15

_ZNK4llvh9StringRef6equalsES0_.exit.thread15:     ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.thread, %_ZNK4llvh9StringRef6equalsES0_.exit.thread15.sink.split
  %i.d = phi i32 [ %.sroa.54.0.copyload.le, %_ZNK4llvh9StringRef6equalsES0_.exit.thread15.sink.split ], [ 0, %_ZNK4llvh9StringRef6equalsES0_.exit.thread ]
  ret i32 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef i32 @_ZN4llvh6AMDGPU17getArchAttrAMDGCNENS0_7GPUKindE(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %bb.a
  %.04.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ @_ZN12_GLOBAL__N_110AMDGCNGPUsE, %bb.a ] ; 2 uses
  %.0113.i.i.i = phi i64 [ %.112.i.i.i, %.lr.ph.i.i.i ], [ 32, %bb.a ] ; 2 uses
  %i.a = lshr i64 %.0113.i.i.i, 1                 ; 3 uses
  %i.b = getelementptr inbounds nuw [40 x i8], ptr %.04.i.i.i, i64 %i.a ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 32
  %.val.i.i.i = load i32, ptr %i.c, align 8, !tbaa !352
  %i.d = icmp ult i32 %.val.i.i.i, %0             ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.f = xor i64 %i.a, -1
  %i.g = add nsw i64 %.0113.i.i.i, %i.f
  %.112.i.i.i = select i1 %i.d, i64 %i.g, i64 %i.a ; 2 uses
  %.1.i.i.i = select i1 %i.d, ptr %i.e, ptr %.04.i.i.i ; 4 uses
  %i.h = icmp sgt i64 %.112.i.i.i, 0
  br i1 %i.h, label %.lr.ph.i.i.i, label %_ZN12_GLOBAL__N_112getArchEntryEN4llvh6AMDGPU7GPUKindENS0_8ArrayRefINS_7GPUInfoEEE.exit, !llvm.loop !356

end_hunk_1
begin_hunk_2_@llvm.assume
!150 = distinct !{!150, !149, !"_ZSt19__relocate_object_aIN4llvh9StringRefES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!151 = !{!152, !154}
!152 = distinct !{!152, !153, !"_ZSt19__relocate_object_aIN4llvh9StringRefES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!153 = distinct !{!153, !"_ZSt19__relocate_object_aIN4llvh9StringRefES1_SaIS1_EEvPT_PT0_RT1_"}
!154 = distinct !{!154, !153, !"_ZSt19__relocate_object_aIN4llvh9StringRefES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!155 = !{!156, !158}
!156 = distinct !{!156, !157, !"_ZSt19__relocate_object_aIN4llvh9StringRefES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!157 = distinct !{!157, !"_ZSt19__relocate_object_aIN4llvh9StringRefES1_SaIS1_EEvPT_PT0_RT1_"}
!158 = distinct !{!158, !157, !"_ZSt19__relocate_object_aIN4llvh9StringRefES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!159 = !{!160, !162}
!160 = distinct !{!160, !161, !"_ZSt19__relocate_object_aIN4llvh9StringRefES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!161 = distinct !{!161, !"_ZSt19__relocate_object_aIN4llvh9StringRefES1_SaIS1_EEvPT_PT0_RT1_"}
!162 = distinct !{!162, !161, !"_ZSt19__relocate_object_aIN4llvh9StringRefES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!163 = !{!164, !166}
!164 = distinct !{!164, !165, !"_ZSt19__relocate_object_aIN4llvh9StringRefES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!165 = distinct !{!165, !"_ZSt19__relocate_object_aIN4llvh9StringRefES1_SaIS1_EEvPT_PT0_RT1_"}
!166 = distinct !{!166, !165, !"_ZSt19__relocate_object_aIN4llvh9StringRefES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!167 = !{!168, !170}
!168 = distinct !{!168, !169, !"_ZSt19__relocate_object_aIN4llvh9StringRefES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!169 = distinct !{!169, !"_ZSt19__relocate_object_aIN4llvh9StringRefES1_SaIS1_EEvPT_PT0_RT1_"}
!170 = distinct !{!170, !169, !"_ZSt19__relocate_object_aIN4llvh9StringRefES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!171 = !{!172, !174}
!172 = distinct !{!172, !173, !"_ZSt19__relocate_object_aIN4llvh9StringRefES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!173 = distinct !{!173, !"_ZSt19__relocate_object_aIN4llvh9StringRefES1_SaIS1_EEvPT_PT0_RT1_"}
!174 = distinct !{!174, !173, !"_ZSt19__relocate_object_aIN4llvh9StringRefES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!175 = !{!176, !178}
!176 = distinct !{!176, !177, !"_ZSt19__relocate_object_aIN4llvh9StringRefES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!177 = distinct !{!177, !"_ZSt19__relocate_object_aIN4llvh9StringRefES1_SaIS1_EEvPT_PT0_RT1_"}
!178 = distinct !{!178, !177, !"_ZSt19__relocate_object_aIN4llvh9StringRefES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!179 = !{!180, !182}
!180 = distinct !{!180, !181, !"_ZSt19__relocate_object_aIN4llvh9StringRefES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!181 = distinct !{!181, !"_ZSt19__relocate_object_aIN4llvh9StringRefES1_SaIS1_EEvPT_PT0_RT1_"}
!182 = distinct !{!182, !181, !"_ZSt19__relocate_object_aIN4llvh9StringRefES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!183 = !{!184, !186}
!184 = distinct !{!184, !185, !"_ZSt19__relocate_object_aIN4llvh9StringRefES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!185 = distinct !{!185, !"_ZSt19__relocate_object_aIN4llvh9StringRefES1_SaIS1_EEvPT_PT0_RT1_"}
!186 = distinct !{!186, !185, !"_ZSt19__relocate_object_aIN4llvh9StringRefES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!187 = !{!188, !190}
!188 = distinct !{!188, !189, !"_ZSt19__relocate_object_aIN4llvh9StringRefES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!189 = distinct !{!189, !"_ZSt19__relocate_object_aIN4llvh9StringRefES1_SaIS1_EEvPT_PT0_RT1_"}
!190 = distinct !{!190, !189, !"_ZSt19__relocate_object_aIN4llvh9StringRefES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!191 = !{!192, !194}
!192 = distinct !{!192, !193, !"_ZSt19__relocate_object_aIN4llvh9StringRefES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!193 = distinct !{!193, !"_ZSt19__relocate_object_aIN4llvh9StringRefES1_SaIS1_EEvPT_PT0_RT1_"}
!194 = distinct !{!194, !193, !"_ZSt19__relocate_object_aIN4llvh9StringRefES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!195 = !{!196, !198}
!196 = distinct !{!196, !197, !"_ZSt19__relocate_object_aIN4llvh9StringRefES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!197 = distinct !{!197, !"_ZSt19__relocate_object_aIN4llvh9StringRefES1_SaIS1_EEvPT_PT0_RT1_"}
!198 = distinct !{!198, !197, !"_ZSt19__relocate_object_aIN4llvh9StringRefES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!199 = !{!200, !202}
!200 = distinct !{!200, !201, !"_ZSt19__relocate_object_aIN4llvh9StringRefES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!201 = distinct !{!201, !"_ZSt19__relocate_object_aIN4llvh9StringRefES1_SaIS1_EEvPT_PT0_RT1_"}
!202 = distinct !{!202, !201, !"_ZSt19__relocate_object_aIN4llvh9StringRefES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!203 = !{!204, !206}
!204 = distinct !{!204, !205, !"_ZSt19__relocate_object_aIN4llvh9StringRefES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!205 = distinct !{!205, !"_ZSt19__relocate_object_aIN4llvh9StringRefES1_SaIS1_EEvPT_PT0_RT1_"}
!206 = distinct !{!206, !205, !"_ZSt19__relocate_object_aIN4llvh9StringRefES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!207 = !{!208, !210}
!208 = distinct !{!208, !209, !"_ZSt19__relocate_object_aIN4llvh9StringRefES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!209 = distinct !{!209, !"_ZSt19__relocate_object_aIN4llvh9StringRefES1_SaIS1_EEvPT_PT0_RT1_"}
!210 = distinct !{!210, !209, !"_ZSt19__relocate_object_aIN4llvh9StringRefES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!211 = !{!212, !214}
!212 = distinct !{!212, !213, !"_ZSt19__relocate_object_aIN4llvh9StringRefES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!213 = distinct !{!213, !"_ZSt19__relocate_object_aIN4llvh9StringRefES1_SaIS1_EEvPT_PT0_RT1_"}
!214 = distinct !{!214, !213, !"_ZSt19__relocate_object_aIN4llvh9StringRefES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!215 = !{!216, !218}
!216 = distinct !{!216, !217, !"_ZSt19__relocate_object_aIN4llvh9StringRefES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!217 = distinct !{!217, !"_ZSt19__relocate_object_aIN4llvh9StringRefES1_SaIS1_EEvPT_PT0_RT1_"}
!218 = distinct !{!218, !217, !"_ZSt19__relocate_object_aIN4llvh9StringRefES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!219 = !{!220, !222}
!220 = distinct !{!220, !221, !"_ZSt19__relocate_object_aIN4llvh9StringRefES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!221 = distinct !{!221, !"_ZSt19__relocate_object_aIN4llvh9StringRefES1_SaIS1_EEvPT_PT0_RT1_"}
!222 = distinct !{!222, !221, !"_ZSt19__relocate_object_aIN4llvh9StringRefES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!223 = !{!21, !9, i64 0}
!224 = !{!21, !11, i64 8}
!225 = !{!21, !9, i64 16}
!226 = !{!21, !11, i64 24}
!227 = !{!21, !9, i64 32}
!228 = !{!21, !11, i64 40}
!229 = !{!21, !23, i64 60}
!230 = !{!22, !22, i64 0}
!231 = !{!232, !232, i64 0}
!232 = !{!"bool", !5, i64 0}
!233 = !{!234, !4, i64 48}
!234 = !{!"_ZTSN12_GLOBAL__N_19ArchNamesIN4llvh7AArch648ArchKindEEE", !9, i64 0, !11, i64 8, !9, i64 16, !11, i64 24, !9, i64 32, !11, i64 40, !4, i64 48, !4, i64 52, !235, i64 56, !23, i64 60}
!235 = !{!"_ZTSN4llvh7AArch648ArchKindE", !5, i64 0}
!236 = !{!234, !4, i64 52}
!237 = !{!238, !240}
!238 = distinct !{!238, !239, !"_ZSt19__relocate_object_aIN4llvh9StringRefES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!239 = distinct !{!239, !"_ZSt19__relocate_object_aIN4llvh9StringRefES1_SaIS1_EEvPT_PT0_RT1_"}
!240 = distinct !{!240, !239, !"_ZSt19__relocate_object_aIN4llvh9StringRefES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!241 = !{!242, !244}
!242 = distinct !{!242, !243, !"_ZSt19__relocate_object_aIN4llvh9StringRefES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!243 = distinct !{!243, !"_ZSt19__relocate_object_aIN4llvh9StringRefES1_SaIS1_EEvPT_PT0_RT1_"}
!244 = distinct !{!244, !243, !"_ZSt19__relocate_object_aIN4llvh9StringRefES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!245 = !{!246, !248}
!246 = distinct !{!246, !247, !"_ZSt19__relocate_object_aIN4llvh9StringRefES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!247 = distinct !{!247, !"_ZSt19__relocate_object_aIN4llvh9StringRefES1_SaIS1_EEvPT_PT0_RT1_"}
!248 = distinct !{!248, !247, !"_ZSt19__relocate_object_aIN4llvh9StringRefES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!249 = !{!250, !252}
!250 = distinct !{!250, !251, !"_ZSt19__relocate_object_aIN4llvh9StringRefES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!251 = distinct !{!251, !"_ZSt19__relocate_object_aIN4llvh9StringRefES1_SaIS1_EEvPT_PT0_RT1_"}
!252 = distinct !{!252, !251, !"_ZSt19__relocate_object_aIN4llvh9StringRefES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!253 = !{!254, !256}
!254 = distinct !{!254, !255, !"_ZSt19__relocate_object_aIN4llvh9StringRefES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!255 = distinct !{!255, !"_ZSt19__relocate_object_aIN4llvh9StringRefES1_SaIS1_EEvPT_PT0_RT1_"}
!256 = distinct !{!256, !255, !"_ZSt19__relocate_object_aIN4llvh9StringRefES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!257 = !{!258, !260}
!258 = distinct !{!258, !259, !"_ZSt19__relocate_object_aIN4llvh9StringRefES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!259 = distinct !{!259, !"_ZSt19__relocate_object_aIN4llvh9StringRefES1_SaIS1_EEvPT_PT0_RT1_"}
!260 = distinct !{!260, !259, !"_ZSt19__relocate_object_aIN4llvh9StringRefES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!261 = !{!262, !264}
!262 = distinct !{!262, !263, !"_ZSt19__relocate_object_aIN4llvh9StringRefES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!263 = distinct !{!263, !"_ZSt19__relocate_object_aIN4llvh9StringRefES1_SaIS1_EEvPT_PT0_RT1_"}
!264 = distinct !{!264, !263, !"_ZSt19__relocate_object_aIN4llvh9StringRefES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!265 = !{!266, !268}
!266 = distinct !{!266, !267, !"_ZSt19__relocate_object_aIN4llvh9StringRefES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!267 = distinct !{!267, !"_ZSt19__relocate_object_aIN4llvh9StringRefES1_SaIS1_EEvPT_PT0_RT1_"}
!268 = distinct !{!268, !267, !"_ZSt19__relocate_object_aIN4llvh9StringRefES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!269 = !{!270, !272}
!270 = distinct !{!270, !271, !"_ZSt19__relocate_object_aIN4llvh9StringRefES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!271 = distinct !{!271, !"_ZSt19__relocate_object_aIN4llvh9StringRefES1_SaIS1_EEvPT_PT0_RT1_"}
!272 = distinct !{!272, !271, !"_ZSt19__relocate_object_aIN4llvh9StringRefES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!273 = !{!274, !276}
!274 = distinct !{!274, !275, !"_ZSt19__relocate_object_aIN4llvh9StringRefES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!275 = distinct !{!275, !"_ZSt19__relocate_object_aIN4llvh9StringRefES1_SaIS1_EEvPT_PT0_RT1_"}
!276 = distinct !{!276, !275, !"_ZSt19__relocate_object_aIN4llvh9StringRefES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!277 = !{!278, !280}
!278 = distinct !{!278, !279, !"_ZSt19__relocate_object_aIN4llvh9StringRefES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!279 = distinct !{!279, !"_ZSt19__relocate_object_aIN4llvh9StringRefES1_SaIS1_EEvPT_PT0_RT1_"}
!280 = distinct !{!280, !279, !"_ZSt19__relocate_object_aIN4llvh9StringRefES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!281 = !{!282, !284}
!282 = distinct !{!282, !283, !"_ZSt19__relocate_object_aIN4llvh9StringRefES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!283 = distinct !{!283, !"_ZSt19__relocate_object_aIN4llvh9StringRefES1_SaIS1_EEvPT_PT0_RT1_"}
!284 = distinct !{!284, !283, !"_ZSt19__relocate_object_aIN4llvh9StringRefES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!285 = !{!286, !288}
!286 = distinct !{!286, !287, !"_ZSt19__relocate_object_aIN4llvh9StringRefES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!287 = distinct !{!287, !"_ZSt19__relocate_object_aIN4llvh9StringRefES1_SaIS1_EEvPT_PT0_RT1_"}
!288 = distinct !{!288, !287, !"_ZSt19__relocate_object_aIN4llvh9StringRefES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!289 = !{!290, !292}
!290 = distinct !{!290, !291, !"_ZSt19__relocate_object_aIN4llvh9StringRefES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!291 = distinct !{!291, !"_ZSt19__relocate_object_aIN4llvh9StringRefES1_SaIS1_EEvPT_PT0_RT1_"}
!292 = distinct !{!292, !291, !"_ZSt19__relocate_object_aIN4llvh9StringRefES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!293 = !{!294, !296}
!294 = distinct !{!294, !295, !"_ZSt19__relocate_object_aIN4llvh9StringRefES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!295 = distinct !{!295, !"_ZSt19__relocate_object_aIN4llvh9StringRefES1_SaIS1_EEvPT_PT0_RT1_"}
!296 = distinct !{!296, !295, !"_ZSt19__relocate_object_aIN4llvh9StringRefES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!297 = !{!298, !300}
!298 = distinct !{!298, !299, !"_ZSt19__relocate_object_aIN4llvh9StringRefES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!299 = distinct !{!299, !"_ZSt19__relocate_object_aIN4llvh9StringRefES1_SaIS1_EEvPT_PT0_RT1_"}
!300 = distinct !{!300, !299, !"_ZSt19__relocate_object_aIN4llvh9StringRefES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!301 = !{!302, !304}
!302 = distinct !{!302, !303, !"_ZSt19__relocate_object_aIN4llvh9StringRefES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!303 = distinct !{!303, !"_ZSt19__relocate_object_aIN4llvh9StringRefES1_SaIS1_EEvPT_PT0_RT1_"}
!304 = distinct !{!304, !303, !"_ZSt19__relocate_object_aIN4llvh9StringRefES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!305 = !{!306, !308}
!306 = distinct !{!306, !307, !"_ZSt19__relocate_object_aIN4llvh9StringRefES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!307 = distinct !{!307, !"_ZSt19__relocate_object_aIN4llvh9StringRefES1_SaIS1_EEvPT_PT0_RT1_"}
!308 = distinct !{!308, !307, !"_ZSt19__relocate_object_aIN4llvh9StringRefES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!309 = !{!234, !9, i64 0}
!310 = !{!234, !11, i64 8}
!311 = !{!234, !9, i64 16}
!312 = !{!234, !11, i64 24}
!313 = !{!234, !9, i64 32}
!314 = !{!234, !11, i64 40}
!315 = !{!234, !23, i64 60}
!316 = !{!317, !9, i64 0}
!317 = !{!"_ZTSN12_GLOBAL__N_13$_1E", !9, i64 0, !11, i64 8, !4, i64 16, !9, i64 24, !9, i64 32}
!318 = !{!317, !11, i64 8}
!319 = !{!317, !9, i64 32}
!320 = !{!317, !9, i64 24}
!321 = !{!5, !5, i64 0}
!322 = !{!235, !235, i64 0}
!323 = !{!324, !9, i64 0}
!324 = !{!"_ZTSN4llvh9StringRefE", !9, i64 0, !11, i64 8}
!325 = !{!12, !12, i64 0}
!326 = !{!327, !22, i64 16}
!327 = !{!"_ZTSN12_GLOBAL__N_18CpuNamesIN4llvh3ARM8ArchKindEEE", !9, i64 0, !11, i64 8, !22, i64 16, !232, i64 20, !4, i64 24}
!328 = !{!327, !9, i64 0}
!329 = !{!327, !11, i64 8}
!330 = !{!331, !4, i64 8}
!331 = !{!"_ZTSN4llvh15SmallVectorBaseE", !10, i64 0, !4, i64 8, !4, i64 12}
!332 = !{!331, !4, i64 12}
!333 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!334 = !{!331, !10, i64 0}
!335 = !{!336, !235, i64 16}
!336 = !{!"_ZTSN12_GLOBAL__N_18CpuNamesIN4llvh7AArch648ArchKindEEE", !9, i64 0, !11, i64 8, !235, i64 16, !232, i64 20, !4, i64 24}
!337 = !{!336, !9, i64 0}
!338 = !{!336, !11, i64 8}
!339 = !{!340, !348, i64 52}
!340 = !{!"_ZTSN4llvh6TripleE", !341, i64 0, !343, i64 32, !344, i64 36, !345, i64 40, !346, i64 44, !347, i64 48, !348, i64 52}
!341 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !342, i64 0, !11, i64 8, !5, i64 16}
!342 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !9, i64 0}
!343 = !{!"_ZTSN4llvh6Triple8ArchTypeE", !5, i64 0}
!344 = !{!"_ZTSN4llvh6Triple11SubArchTypeE", !5, i64 0}
!345 = !{!"_ZTSN4llvh6Triple10VendorTypeE", !5, i64 0}
!346 = !{!"_ZTSN4llvh6Triple6OSTypeE", !5, i64 0}
!347 = !{!"_ZTSN4llvh6Triple15EnvironmentTypeE", !5, i64 0}
!348 = !{!"_ZTSN4llvh6Triple16ObjectFormatTypeE", !5, i64 0}
!349 = !{!340, !347, i64 48}
!350 = !{!340, !344, i64 36}
!351 = !{!340, !346, i64 44}
!352 = !{!353, !355, i64 32}
!353 = !{!"_ZTSN12_GLOBAL__N_17GPUInfoE", !354, i64 0, !354, i64 16, !355, i64 32, !4, i64 36}
!354 = !{!"_ZTSN4llvh13StringLiteralE", !324, i64 0}
!355 = !{!"_ZTSN4llvh6AMDGPU7GPUKindE", !5, i64 0}
!356 = distinct !{!356, !38}
!357 = !{!353, !4, i64 36}
end_hunk_2
