Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/DataExtractor?download=true
inline.NumInlined: 244
inline.NumDeleted: 128
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZNK12lldb_private13DataExtractor8CopyDataEmmPv:bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %3, ptr nonnull align 1 %i.d, i64 %2, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %2, %bb.b ], [ 0, %bb.a ]
  ret i64 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZNK12lldb_private13DataExtractor7GetCStrEPm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !41
  %i.b = load ptr, ptr %0, align 8, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef ptr %i.d(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %i.a, i64 noundef 1) #17 ; 6 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %_ZSt4findIPKccET_S2_S2_RKT0_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !23   ; 2 uses
  %i.h = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.i = ptrtoint ptr %i.e to i64                 ; 3 uses
  %i.j = sub i64 %i.h, %i.i                       ; 2 uses
  %i.k = ashr i64 %i.j, 2                         ; 2 uses
  %i.l = icmp sgt i64 %i.k, 0
  br i1 %i.l, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b
  %i.m = and i64 %i.j, -4
  %scevgep.i.i.i = getelementptr i8, ptr %i.e, i64 %i.m ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.i.i.i
  %.047.i.i.i = phi i64 [ %i.k, %.lr.ph.i.i.i ], [ %i.z, %bb.g ] ; 2 uses
  %.02946.i.i.i = phi ptr [ %i.e, %.lr.ph.i.i.i ], [ %i.y, %bb.g ] ; 9 uses
  %i.n = load i8, ptr %.02946.i.i.i, align 1, !tbaa !26
  %i.o = icmp eq i8 %i.n, 0
  br i1 %i.o, label %_ZSt4findIPKccET_S2_S2_RKT0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 1
  %i.q = load i8, ptr %i.p, align 1, !tbaa !26
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %_ZSt4findIPKccET_S2_S2_RKT0_.exit.loopexit.split.loop.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 2
  %i.t = load i8, ptr %i.s, align 1, !tbaa !26
  %i.u = icmp eq i8 %i.t, 0
  br i1 %i.u, label %_ZSt4findIPKccET_S2_S2_RKT0_.exit.loopexit.split.loop.exit31, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 3
  %i.w = load i8, ptr %i.v, align 1, !tbaa !26
  %i.x = icmp eq i8 %i.w, 0
  br i1 %i.x, label %_ZSt4findIPKccET_S2_S2_RKT0_.exit.loopexit.split.loop.exit33, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 4
  %i.z = add nsw i64 %.047.i.i.i, -1
  %i.aa = icmp sgt i64 %.047.i.i.i, 1
  br i1 %i.aa, label %bb.c, label %._crit_edge.loopexit.i.i.i, !llvm.loop !115

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.g
  %.pre54.i.i.i = ptrtoint ptr %scevgep.i.i.i to i64
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.b
  %.pre-phi.i.i.i = phi i64 [ %.pre54.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.i, %bb.b ]
  %.029.lcssa.i.i.i = phi ptr [ %scevgep.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.e, %bb.b ] ; 5 uses
  %i.ab = sub i64 %i.h, %.pre-phi.i.i.i
  switch i64 %i.ab, label %_ZSt4findIPKccET_S2_S2_RKT0_.exit.thread [
    i64 3, label %bb.h
    i64 2, label %._crit_edge._crit_edge.i.i.i
    i64 1, label %._crit_edge._crit_edge52.i.i.i
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i
  %i.ac = load i8, ptr %.029.lcssa.i.i.i, align 1, !tbaa !26
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %_ZSt4findIPKccET_S2_S2_RKT0_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i, i64 1
  br label %._crit_edge._crit_edge.i.i.i

._crit_edge._crit_edge.i.i.i:                     ; preds = %._crit_edge.i.i.i, %bb.i
  %.1.i.i.i = phi ptr [ %i.ae, %bb.i ], [ %.029.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.af = load i8, ptr %.1.i.i.i, align 1, !tbaa !26
  %i.ag = icmp eq i8 %i.af, 0
  br i1 %i.ag, label %_ZSt4findIPKccET_S2_S2_RKT0_.exit, label %bb.j

bb.j:                                             ; preds = %._crit_edge._crit_edge.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 1
  br label %._crit_edge._crit_edge52.i.i.i

._crit_edge._crit_edge52.i.i.i:                   ; preds = %._crit_edge.i.i.i, %bb.j
  %.2.i.i.i = phi ptr [ %i.ah, %bb.j ], [ %.029.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %i.ai = load i8, ptr %.2.i.i.i, align 1, !tbaa !26
  %i.aj = icmp eq i8 %i.ai, 0
  br i1 %i.aj, label %_ZSt4findIPKccET_S2_S2_RKT0_.exit, label %_ZSt4findIPKccET_S2_S2_RKT0_.exit.thread

_ZSt4findIPKccET_S2_S2_RKT0_.exit.loopexit.split.loop.exit: ; preds = %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 1
  br label %_ZSt4findIPKccET_S2_S2_RKT0_.exit

_ZSt4findIPKccET_S2_S2_RKT0_.exit.loopexit.split.loop.exit31: ; preds = %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 2
  br label %_ZSt4findIPKccET_S2_S2_RKT0_.exit

_ZSt4findIPKccET_S2_S2_RKT0_.exit.loopexit.split.loop.exit33: ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 3
  br label %_ZSt4findIPKccET_S2_S2_RKT0_.exit

_ZSt4findIPKccET_S2_S2_RKT0_.exit:                ; preds = %bb.c, %_ZSt4findIPKccET_S2_S2_RKT0_.exit.loopexit.split.loop.exit, %_ZSt4findIPKccET_S2_S2_RKT0_.exit.loopexit.split.loop.exit31, %_ZSt4findIPKccET_S2_S2_RKT0_.exit.loopexit.split.loop.exit33, %bb.h, %._crit_edge._crit_edge.i.i.i, %._crit_edge._crit_edge52.i.i.i
  %.028.i.i.i = phi ptr [ %.1.i.i.i, %._crit_edge._crit_edge.i.i.i ], [ %.029.lcssa.i.i.i, %bb.h ], [ %.2.i.i.i, %._crit_edge._crit_edge52.i.i.i ], [ %i.am, %_ZSt4findIPKccET_S2_S2_RKT0_.exit.loopexit.split.loop.exit33 ], [ %i.al, %_ZSt4findIPKccET_S2_S2_RKT0_.exit.loopexit.split.loop.exit31 ], [ %i.ak, %_ZSt4findIPKccET_S2_S2_RKT0_.exit.loopexit.split.loop.exit ], [ %.02946.i.i.i, %bb.c ] ; 2 uses
  %i.an = icmp eq ptr %.028.i.i.i, %i.g
  br i1 %i.an, label %_ZSt4findIPKccET_S2_S2_RKT0_.exit.thread, label %bb.k

bb.k:                                             ; preds = %_ZSt4findIPKccET_S2_S2_RKT0_.exit
  %i.ao = ptrtoint ptr %.028.i.i.i to i64
  %i.ap = load i64, ptr %1, align 8, !tbaa !41
  %reass.sub = sub i64 %i.ao, %i.i
  %i.aq = add i64 %reass.sub, 1
  %i.ar = add i64 %i.aq, %i.ap
  store i64 %i.ar, ptr %1, align 8, !tbaa !41
  br label %_ZSt4findIPKccET_S2_S2_RKT0_.exit.thread

_ZSt4findIPKccET_S2_S2_RKT0_.exit.thread:         ; preds = %._crit_edge._crit_edge52.i.i.i, %._crit_edge.i.i.i, %bb.k, %_ZSt4findIPKccET_S2_S2_RKT0_.exit, %bb.a
  %.1 = phi ptr [ null, %bb.a ], [ %i.e, %bb.k ], [ null, %_ZSt4findIPKccET_S2_S2_RKT0_.exit ], [ null, %._crit_edge.i.i.i ], [ null, %._crit_edge._crit_edge52.i.i.i ]
  ret ptr %.1
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZNK12lldb_private13DataExtractor7GetCStrEPmm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr nofree noundef captures(none) %1, i64 noundef %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !41
  %i.b = load ptr, ptr %0, align 8, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef ptr %i.d(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %i.a, i64 noundef %2) #17 ; 3 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef ptr @memchr(ptr noundef nonnull %i.e, i32 noundef 0, i64 noundef %2) #19
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i64, ptr %1, align 8, !tbaa !41
  %i.i = add i64 %i.h, %2
  store i64 %i.i, ptr %1, align 8, !tbaa !41
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi ptr [ null, %bb.b ], [ %i.e, %bb.c ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZNK12lldb_private13DataExtractor8PeekCStrEm(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef ptr %i.c(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %1, i64 noundef 1) #17
  ret ptr %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i64 @_ZNK12lldb_private13DataExtractor10GetULEB128EPm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !41
  %i.b = load ptr, ptr %0, align 8, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef ptr %i.d(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %i.a, i64 noundef 1) #17 ; 6 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !23   ; 3 uses
  %i.i = ptrtoaddr ptr %i.e to i64
  %i.j = ptrtoaddr ptr %i.h to i64
  %i.k = sub i64 %i.j, %i.i
  %scevgep.i = getelementptr i8, ptr %i.e, i64 %i.k ; 2 uses
  %i.l = icmp eq ptr %i.e, %i.h
  br i1 %i.l, label %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit, label %.lr.ph, !prof !116

bb.c:                                             ; preds = %bb.e
  %2 = add i32 %.028.i10, 7
  %i.m = icmp eq ptr %i.v, %i.h
  br i1 %i.m, label %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit, label %.lr.ph, !prof !117, !llvm.loop !118

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.028.i10 = phi i32 [ %2, %bb.c ], [ 0, %bb.b ] ; 5 uses
  %.029.i9 = phi i64 [ %.130.i, %bb.c ], [ 0, %bb.b ]
  %.031.i8 = phi ptr [ %i.v, %bb.c ], [ %i.e, %bb.b ] ; 3 uses
  %i.n = load i8, ptr %.031.i8, align 1, !tbaa !26 ; 2 uses
  %i.o = and i8 %i.n, 127                         ; 3 uses
  %i.p = zext nneg i8 %i.o to i64
  %i.q = icmp ugt i32 %.028.i10, 62
  br i1 %i.q, label %bb.d, label %bb.e, !prof !35

bb.d:                                             ; preds = %.lr.ph
  %.not44.i = icmp eq i32 %.028.i10, 63
  %.not.i = icmp samesign ugt i8 %i.o, 1
  %i.r = icmp ne i8 %i.o, 0
  %or.cond43.i = select i1 %.not44.i, i1 %.not.i, i1 %i.r
  br i1 %or.cond43.i, label %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit, label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph
  %i.s = icmp ult i32 %.028.i10, 64
  %3 = zext nneg i32 %.028.i10 to i64
  %i.t = shl i64 %i.p, %3
  %i.u = select i1 %i.s, i64 %i.t, i64 0, !prof !119
  %.130.i = add i64 %i.u, %.029.i9                ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.031.i8, i64 1 ; 3 uses
  %i.w = icmp slt i8 %i.n, 0
  br i1 %i.w, label %bb.c, label %._ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit_crit_edge15, !llvm.loop !118

._ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit_crit_edge15: ; preds = %bb.e
  br label %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit, !llvm.loop !118

_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit:        ; preds = %bb.c, %bb.d, %._ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit_crit_edge15, %bb.b
  %.132.i = phi ptr [ %i.v, %._ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit_crit_edge15 ], [ %scevgep.i, %bb.b ], [ %scevgep.i, %bb.c ], [ %.031.i8, %bb.d ]
  %.3.i = phi i64 [ %.130.i, %._ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit_crit_edge15 ], [ 0, %bb.b ], [ 0, %bb.d ], [ 0, %bb.c ]
  %i.x = ptrtoint ptr %.132.i to i64
  %i.y = ptrtoint ptr %i.e to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = and i64 %i.z, 4294967295
  %i.ab = load i64, ptr %1, align 8, !tbaa !41
  %i.ac = add i64 %i.aa, %i.ab
  store i64 %i.ac, ptr %1, align 8, !tbaa !41
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit
  %.0 = phi i64 [ %.3.i, %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit ], [ 0, %bb.a ]
  ret i64 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i64 @_ZNK12lldb_private13DataExtractor10GetSLEB128EPm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !41
  %i.b = load ptr, ptr %0, align 8, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef ptr %i.d(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %i.a, i64 noundef 1) #17 ; 4 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !23   ; 3 uses
  %i.i = ptrtoaddr ptr %i.h to i64                ; 2 uses
  %i.j = icmp eq ptr %i.e, %i.h
  br i1 %i.j, label %_ZN4llvm13decodeSLEB128EPKhPjS1_PPKc.exit, label %.lr.ph, !prof !116

bb.c:                                             ; preds = %bb.f
  %i.k = icmp eq ptr %i.w, %i.h
  br i1 %i.k, label %_ZN4llvm13decodeSLEB128EPKhPjS1_PPKc.exit, label %.lr.ph, !prof !117, !llvm.loop !120

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.044.i31 = phi i32 [ %3, %bb.c ], [ 0, %bb.b ] ; 5 uses
  %.045.i30 = phi i64 [ %.146.i, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %.050.i29 = phi ptr [ %i.w, %bb.c ], [ %i.e, %bb.b ] ; 3 uses
  %i.l = load i8, ptr %.050.i29, align 1, !tbaa !26 ; 4 uses
  %i.m = and i8 %i.l, 127
  %i.n = zext nneg i8 %i.m to i64                 ; 2 uses
  %i.o = icmp ugt i32 %.044.i31, 62
  br i1 %i.o, label %bb.d, label %bb.f, !prof !35

bb.d:                                             ; preds = %.lr.ph
  %i.p = icmp eq i32 %.044.i31, 63
  br i1 %i.p, label %switch.early.test.i, label %.critedge66.i

switch.early.test.i:                              ; preds = %bb.d
  switch i8 %i.l, label %bb.e [
    i8 -1, label %bb.f
    i8 -128, label %bb.f
    i8 127, label %bb.f
    i8 0, label %bb.f
  ]

.critedge66.i:                                    ; preds = %bb.d
  %i.q = icmp slt i64 %.045.i30, 0
  %i.r = select i1 %i.q, i64 127, i64 0
  %.not58.i = icmp eq i64 %i.r, %i.n
  br i1 %.not58.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.critedge66.i, %switch.early.test.i
  %i.s = ptrtoint ptr %.050.i29 to i64
  br label %_ZN4llvm13decodeSLEB128EPKhPjS1_PPKc.exit

bb.f:                                             ; preds = %.critedge66.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %.lr.ph
  %i.t = icmp ult i32 %.044.i31, 64
  %2 = zext nneg i32 %.044.i31 to i64
  %i.u = shl i64 %i.n, %2
  %i.v = select i1 %i.t, i64 %i.u, i64 0, !prof !119
  %.146.i = or i64 %i.v, %.045.i30                ; 2 uses
  %3 = add i32 %.044.i31, 7                       ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.050.i29, i64 1 ; 3 uses
  %i.x = icmp slt i8 %i.l, 0
  br i1 %i.x, label %bb.c, label %bb.g, !llvm.loop !120

bb.g:                                             ; preds = %bb.f
  %i.y = icmp ugt i32 %3, 63
  %.not61.i = icmp samesign ult i8 %i.l, 64
  %or.cond.i = select i1 %i.y, i1 true, i1 %.not61.i
  %4 = zext nneg i32 %3 to i64
  %i.z = shl nsw i64 -1, %4
  %i.aa = select i1 %or.cond.i, i64 0, i64 %i.z
  %.3.i = or i64 %.146.i, %i.aa
  %i.ab = ptrtoint ptr %i.w to i64
  br label %_ZN4llvm13decodeSLEB128EPKhPjS1_PPKc.exit

_ZN4llvm13decodeSLEB128EPKhPjS1_PPKc.exit:        ; preds = %bb.c, %bb.b, %bb.e, %bb.g
  %.sink.i = phi i64 [ %i.s, %bb.e ], [ %i.ab, %bb.g ], [ %i.i, %bb.b ], [ %i.i, %bb.c ]
  %.249.ph.i = phi i64 [ 0, %bb.e ], [ %.3.i, %bb.g ], [ 0, %bb.b ], [ 0, %bb.c ]
  %i.ac = ptrtoint ptr %i.e to i64
  %i.ad = sub i64 %.sink.i, %i.ac
  %i.ae = and i64 %i.ad, 4294967295
  %i.af = load i64, ptr %1, align 8, !tbaa !41
  %i.ag = add i64 %i.af, %i.ae
  store i64 %i.ag, ptr %1, align 8, !tbaa !41
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_ZN4llvm13decodeSLEB128EPKhPjS1_PPKc.exit
  %.0 = phi i64 [ %.249.ph.i, %_ZN4llvm13decodeSLEB128EPKhPjS1_PPKc.exit ], [ 0, %bb.a ]
  ret i64 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZNK12lldb_private13DataExtractor11Skip_LEB128EPm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !41
  %i.b = load ptr, ptr %0, align 8, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef ptr %i.d(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %i.a, i64 noundef 1) #17 ; 6 uses
  %i.f = ptrtoaddr ptr %i.e to i64                ; 2 uses
  %i.g = icmp eq ptr %i.e, null
  br i1 %i.g, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !23   ; 3 uses
  %i.j = icmp ult ptr %i.e, %i.i
  br i1 %i.j, label %.preheader.preheader, label %bb.d

.preheader.preheader:                             ; preds = %bb.b
  %i.k = ptrtoaddr ptr %i.i to i64                ; 2 uses
  %i.l = sub i64 %i.k, %i.f
  %scevgep = getelementptr i8, ptr %i.e, i64 %i.l
  %i.m = trunc i64 %i.k to i32
  %i.n = trunc i64 %i.f to i32
  %i.o = sub i32 %i.m, %i.n
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %bb.c
  %.020 = phi ptr [ %i.p, %bb.c ], [ %i.e, %.preheader.preheader ] ; 2 uses
  %.01419 = phi i32 [ %i.r, %bb.c ], [ 0, %.preheader.preheader ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.020, i64 1 ; 3 uses
  %i.q = load i8, ptr %.020, align 1, !tbaa !26
  %.not = icmp sgt i8 %i.q, -1
  br i1 %.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.preheader
  %i.r = add i32 %.01419, 1
  %exitcond.not = icmp eq ptr %i.p, %i.i
  br i1 %exitcond.not, label %.critedge, label %.preheader, !llvm.loop !121

.critedge:                                        ; preds = %bb.c, %.preheader
  %.lcssa = phi ptr [ %scevgep, %bb.c ], [ %i.p, %.preheader ]
  %.014.lcssa = phi i32 [ %i.o, %bb.c ], [ %.01419, %.preheader ]
  %i.s = ptrtoint ptr %.lcssa to i64
  %i.t = ptrtoint ptr %i.e to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = load i64, ptr %1, align 8, !tbaa !41
  %i.w = add i64 %i.u, %i.v
  store i64 %i.w, ptr %1, align 8, !tbaa !41
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %.critedge, %bb.a
  %.016 = phi i32 [ 0, %bb.a ], [ %.014.lcssa, %.critedge ], [ 0, %bb.b ]
  ret i32 %.016
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i64 @_ZNK12lldb_private13DataExtractor8PutToLogEPNS_3LogEmmmjNS0_4TypeE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 20 uses
  %7 = alloca %"class.lldb_private::StreamString", align 8 ; 18 uses
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %bb.ai, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  call void @_ZN12lldb_private12StreamStringC1Eb(ptr noundef nonnull align 8 dereferenceable(120) %7, i1 noundef zeroext false) #17
  store i64 %2, ptr %i.a, align 8, !tbaa !41
  %i.c = add i64 %3, %2                           ; 2 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !9
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = call noundef i64 %i.f(ptr noundef nonnull align 8 dereferenceable(48) %0) #17, !inline_history !28
  %i.h = icmp ult i64 %2, %i.g
  %i.i = load i64, ptr %i.a, align 8
  %i.j = icmp ult i64 %i.i, %i.c
  %i.k = select i1 %i.h, i1 %i.j, i1 false
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %.not22 = icmp eq i64 %4, -1
  %i.l = sub i64 %4, %2
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.af
  %.01945 = phi i32 [ 0, %.lr.ph ], [ %i.dy, %bb.af ] ; 2 uses
  %i.p = urem i32 %.01945, %5
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.r = call noundef i64 @_ZNK12lldb_private12StreamString7GetSizeEv(ptr noundef nonnull align 8 dereferenceable(120) %7) #17
  %.not = icmp eq i64 %i.r, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = call { ptr, i64 } @_ZNK12lldb_private12StreamString9GetStringEv(ptr noundef nonnull align 8 dereferenceable(120) %7) #17 ; 2 uses
  %i.t = extractvalue { ptr, i64 } %i.s, 0
  %i.u = extractvalue { ptr, i64 } %i.s, 1
  call void @_ZN12lldb_private3Log9PutStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(104) %1, ptr %i.t, i64 %i.u) #17
  call void @_ZN12lldb_private12StreamString5ClearEv(ptr noundef nonnull align 8 dereferenceable(120) %7) #17
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  br i1 %.not22, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = load i64, ptr %i.a, align 8, !tbaa !41
  %i.w = add i64 %i.l, %i.v
  %i.x = call noundef i64 (ptr, ptr, ...) @_ZN12lldb_private6Stream6PrintfEPKcz(ptr noundef nonnull align 8 dereferenceable(88) %7, ptr noundef nonnull @.str.5, i64 noundef %i.w) #17 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.c
  switch i32 %6, label %bb.af [
    i32 0, label %bb.i
    i32 1, label %bb.k
    i32 2, label %bb.m
    i32 3, label %bb.o
    i32 4, label %bb.q
    i32 5, label %bb.s
    i32 6, label %bb.t
    i32 7, label %bb.y
  ]

bb.i:                                             ; preds = %bb.h
  %i.y = load ptr, ptr %0, align 8, !tbaa !9
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = call noundef ptr %i.aa(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.a, i64 noundef 1) #17, !inline_history !55 ; 2 uses
  %.not.i = icmp eq ptr %i.ab, null
  br i1 %.not.i, label %_ZNK12lldb_private13DataExtractor5GetU8EPm.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !26
  %i.ad = zext i8 %i.ac to i32
  br label %_ZNK12lldb_private13DataExtractor5GetU8EPm.exit

_ZNK12lldb_private13DataExtractor5GetU8EPm.exit:  ; preds = %bb.i, %bb.j
  %.0.i = phi i32 [ %i.ad, %bb.j ], [ 0, %bb.i ]
  %i.ae = call noundef i64 (ptr, ptr, ...) @_ZN12lldb_private6Stream6PrintfEPKcz(ptr noundef nonnull align 8 dereferenceable(88) %7, ptr noundef nonnull @.str.6, i32 noundef %.0.i) #17 ; 0 uses
  br label %bb.af

bb.k:                                             ; preds = %bb.h
  %i.af = load ptr, ptr %0, align 8, !tbaa !9
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = call noundef ptr %i.ah(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.a, i64 noundef 1) #17, !inline_history !55 ; 2 uses
  %.not.i23 = icmp eq ptr %i.ai, null
  br i1 %.not.i23, label %_ZNK12lldb_private13DataExtractor5GetU8EPm.exit25, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !26
  br label %_ZNK12lldb_private13DataExtractor5GetU8EPm.exit25

_ZNK12lldb_private13DataExtractor5GetU8EPm.exit25: ; preds = %bb.k, %bb.l
  %.0.i24 = phi i8 [ %i.aj, %bb.l ], [ 0, %bb.k ] ; 2 uses
  %i.ak = add i8 %.0.i24, -32
  %i.al = icmp ult i8 %i.ak, 95
  %narrow = select i1 %i.al, i8 %.0.i24, i8 32
  %i.am = sext i8 %narrow to i32
  %i.an = call noundef i64 (ptr, ptr, ...) @_ZN12lldb_private6Stream6PrintfEPKcz(ptr noundef nonnull align 8 dereferenceable(88) %7, ptr noundef nonnull @.str.7, i32 noundef %i.am) #17 ; 0 uses
  br label %bb.af

bb.m:                                             ; preds = %bb.h
  %i.ao = load ptr, ptr %0, align 8, !tbaa !9
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = call noundef ptr %i.aq(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.a, i64 noundef 2) #17, !inline_history !56 ; 2 uses
  %.not.i26 = icmp eq ptr %i.ar, null
  br i1 %.not.i26, label %_ZNK12lldb_private13DataExtractor6GetU16EPm.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.as = load i32, ptr %i.o, align 8, !tbaa !11
  %.not6.i = icmp eq i32 %i.as, 4
  %.val7.i = load i16, ptr %i.ar, align 1         ; 2 uses
  %i.at = call i16 @llvm.bswap.i16(i16 %.val7.i)
  %spec.select.i = select i1 %.not6.i, i16 %.val7.i, i16 %i.at
  %i.au = zext i16 %spec.select.i to i32
  br label %_ZNK12lldb_private13DataExtractor6GetU16EPm.exit

_ZNK12lldb_private13DataExtractor6GetU16EPm.exit: ; preds = %bb.m, %bb.n
  %.0.i27 = phi i32 [ %i.au, %bb.n ], [ 0, %bb.m ]
  %i.av = call noundef i64 (ptr, ptr, ...) @_ZN12lldb_private6Stream6PrintfEPKcz(ptr noundef nonnull align 8 dereferenceable(88) %7, ptr noundef nonnull @.str.8, i32 noundef %.0.i27) #17 ; 0 uses
  br label %bb.af

bb.o:                                             ; preds = %bb.h
  %i.aw = load ptr, ptr %0, align 8, !tbaa !9
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = call noundef ptr %i.ay(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.a, i64 noundef 4) #17, !inline_history !57 ; 2 uses
  %.not.i28 = icmp eq ptr %i.az, null
  br i1 %.not.i28, label %_ZNK12lldb_private13DataExtractor6GetU32EPm.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ba = load i32, ptr %i.o, align 8, !tbaa !11
  %.not6.i29 = icmp eq i32 %i.ba, 4
  %.0.copyload.i = load i32, ptr %i.az, align 1   ; 2 uses
  %i.bb = call i32 @llvm.bswap.i32(i32 %.0.copyload.i)
  %spec.select.i30 = select i1 %.not6.i29, i32 %.0.copyload.i, i32 %i.bb
  br label %_ZNK12lldb_private13DataExtractor6GetU32EPm.exit

_ZNK12lldb_private13DataExtractor6GetU32EPm.exit: ; preds = %bb.o, %bb.p
  %.0.i31 = phi i32 [ %spec.select.i30, %bb.p ], [ 0, %bb.o ]
  %i.bc = call noundef i64 (ptr, ptr, ...) @_ZN12lldb_private6Stream6PrintfEPKcz(ptr noundef nonnull align 8 dereferenceable(88) %7, ptr noundef nonnull @.str.9, i32 noundef %.0.i31) #17 ; 0 uses
  br label %bb.af

bb.q:                                             ; preds = %bb.h
  %i.bd = load ptr, ptr %0, align 8, !tbaa !9
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = call noundef ptr %i.bf(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.a, i64 noundef 8) #17, !inline_history !58 ; 2 uses
  %.not.i32 = icmp eq ptr %i.bg, null
  br i1 %.not.i32, label %_ZNK12lldb_private13DataExtractor6GetU64EPm.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bh = load i32, ptr %i.o, align 8, !tbaa !11
  %.not6.i33 = icmp eq i32 %i.bh, 4
  %.0.copyload.i34 = load i64, ptr %i.bg, align 1 ; 2 uses
  %i.bi = call i64 @llvm.bswap.i64(i64 %.0.copyload.i34)
  %spec.select.i35 = select i1 %.not6.i33, i64 %.0.copyload.i34, i64 %i.bi
  br label %_ZNK12lldb_private13DataExtractor6GetU64EPm.exit

_ZNK12lldb_private13DataExtractor6GetU64EPm.exit: ; preds = %bb.q, %bb.r
  %.0.i36 = phi i64 [ %spec.select.i35, %bb.r ], [ 0, %bb.q ]
  %i.bj = call noundef i64 (ptr, ptr, ...) @_ZN12lldb_private6Stream6PrintfEPKcz(ptr noundef nonnull align 8 dereferenceable(88) %7, ptr noundef nonnull @.str.10, i64 noundef %.0.i36) #17 ; 0 uses
  br label %bb.af

bb.s:                                             ; preds = %bb.h
  %i.bk = load i32, ptr %i.n, align 4, !tbaa !21
  %i.bl = zext i32 %i.bk to i64
  %i.bm = call noundef i64 @_ZNK12lldb_private13DataExtractor9GetMaxU64EPmm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.a, i64 noundef %i.bl)
  %i.bn = call noundef i64 (ptr, ptr, ...) @_ZN12lldb_private6Stream6PrintfEPKcz(ptr noundef nonnull align 8 dereferenceable(88) %7, ptr noundef nonnull @.str.11, i64 noundef %i.bm) #17 ; 0 uses
  br label %bb.af

bb.t:                                             ; preds = %bb.h
  %i.bo = load i64, ptr %i.a, align 8, !tbaa !41
  %i.bp = load ptr, ptr %0, align 8, !tbaa !9
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 96
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = call noundef ptr %i.br(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %i.bo, i64 noundef 1) #17, !inline_history !122 ; 6 uses
  %i.bt = icmp eq ptr %i.bs, null
  br i1 %i.bt, label %_ZNK12lldb_private13DataExtractor10GetULEB128EPm.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bu = load ptr, ptr %i.m, align 8, !tbaa !23  ; 3 uses
  %i.bv = ptrtoaddr ptr %i.bs to i64
  %i.bw = ptrtoaddr ptr %i.bu to i64
  %i.bx = sub i64 %i.bw, %i.bv
  %scevgep.i.i = getelementptr i8, ptr %i.bs, i64 %i.bx ; 2 uses
  %i.by = icmp eq ptr %i.bs, %i.bu
  br i1 %i.by, label %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit.i, label %.lr.ph81, !prof !116

bb.v:                                             ; preds = %bb.x
  %8 = add i32 %.028.i.i79, 7
  %i.bz = icmp eq ptr %i.ci, %i.bu
  br i1 %i.bz, label %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit.i, label %.lr.ph81, !prof !117, !llvm.loop !118

.lr.ph81:                                         ; preds = %bb.u, %bb.v
  %.028.i.i79 = phi i32 [ %8, %bb.v ], [ 0, %bb.u ] ; 5 uses
  %.029.i.i78 = phi i64 [ %.130.i.i, %bb.v ], [ 0, %bb.u ]
  %.031.i.i77 = phi ptr [ %i.ci, %bb.v ], [ %i.bs, %bb.u ] ; 3 uses
  %i.ca = load i8, ptr %.031.i.i77, align 1, !tbaa !26 ; 2 uses
  %i.cb = and i8 %i.ca, 127                       ; 3 uses
  %i.cc = zext nneg i8 %i.cb to i64
  %i.cd = icmp ugt i32 %.028.i.i79, 62
  br i1 %i.cd, label %bb.w, label %bb.x, !prof !35

bb.w:                                             ; preds = %.lr.ph81
  %.not44.i.i = icmp eq i32 %.028.i.i79, 63
  %.not.i.i = icmp samesign ugt i8 %i.cb, 1
  %i.ce = icmp ne i8 %i.cb, 0
  %or.cond43.i.i = select i1 %.not44.i.i, i1 %.not.i.i, i1 %i.ce
  br i1 %or.cond43.i.i, label %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit.i, label %bb.x

bb.x:                                             ; preds = %bb.w, %.lr.ph81
  %i.cf = icmp ult i32 %.028.i.i79, 64
  %9 = zext nneg i32 %.028.i.i79 to i64
  %i.cg = shl i64 %i.cc, %9
  %i.ch = select i1 %i.cf, i64 %i.cg, i64 0, !prof !119
  %.130.i.i = add i64 %i.ch, %.029.i.i78          ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.031.i.i77, i64 1 ; 3 uses
  %i.cj = icmp slt i8 %i.ca, 0
  br i1 %i.cj, label %bb.v, label %._ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit.i_crit_edge, !llvm.loop !118

._ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit.i_crit_edge: ; preds = %bb.x
  br label %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit.i, !llvm.loop !118

_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit.i:      ; preds = %bb.v, %bb.w, %._ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit.i_crit_edge, %bb.u
  %.132.i.i = phi ptr [ %i.ci, %._ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit.i_crit_edge ], [ %scevgep.i.i, %bb.u ], [ %scevgep.i.i, %bb.v ], [ %.031.i.i77, %bb.w ]
  %.3.i.i = phi i64 [ %.130.i.i, %._ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit.i_crit_edge ], [ 0, %bb.u ], [ 0, %bb.w ], [ 0, %bb.v ]
  %i.ck = ptrtoint ptr %.132.i.i to i64
  %i.cl = ptrtoint ptr %i.bs to i64
  %i.cm = sub i64 %i.ck, %i.cl
  %i.cn = and i64 %i.cm, 4294967295
  %i.co = load i64, ptr %i.a, align 8, !tbaa !41
  %i.cp = add i64 %i.cn, %i.co
  store i64 %i.cp, ptr %i.a, align 8, !tbaa !41
  br label %_ZNK12lldb_private13DataExtractor10GetULEB128EPm.exit

_ZNK12lldb_private13DataExtractor10GetULEB128EPm.exit: ; preds = %bb.t, %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit.i
  %.0.i37 = phi i64 [ %.3.i.i, %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit.i ], [ 0, %bb.t ]
  %i.cq = call noundef i64 (ptr, ptr, ...) @_ZN12lldb_private6Stream6PrintfEPKcz(ptr noundef nonnull align 8 dereferenceable(88) %7, ptr noundef nonnull @.str.11, i64 noundef %.0.i37) #17 ; 0 uses
  br label %bb.af

bb.y:                                             ; preds = %bb.h
  %i.cr = load i64, ptr %i.a, align 8, !tbaa !41
  %i.cs = load ptr, ptr %0, align 8, !tbaa !9
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 96
  %i.cu = load ptr, ptr %i.ct, align 8
  %i.cv = call noundef ptr %i.cu(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %i.cr, i64 noundef 1) #17, !inline_history !123 ; 4 uses
  %i.cw = icmp eq ptr %i.cv, null
  br i1 %i.cw, label %_ZNK12lldb_private13DataExtractor10GetSLEB128EPm.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cx = load ptr, ptr %i.m, align 8, !tbaa !23  ; 3 uses
  %i.cy = ptrtoaddr ptr %i.cx to i64              ; 2 uses
  %i.cz = icmp eq ptr %i.cv, %i.cx
  br i1 %i.cz, label %_ZN4llvm13decodeSLEB128EPKhPjS1_PPKc.exit.i, label %.lr.ph76, !prof !116

bb.aa:                                            ; preds = %bb.ad
  %i.da = icmp eq ptr %i.dm, %i.cx
  br i1 %i.da, label %_ZN4llvm13decodeSLEB128EPKhPjS1_PPKc.exit.i, label %.lr.ph76, !prof !117, !llvm.loop !120

.lr.ph76:                                         ; preds = %bb.z, %bb.aa
  %.044.i.i74 = phi i32 [ %11, %bb.aa ], [ 0, %bb.z ] ; 5 uses
  %.045.i.i73 = phi i64 [ %.146.i.i, %bb.aa ], [ 0, %bb.z ] ; 2 uses
  %.050.i.i72 = phi ptr [ %i.dm, %bb.aa ], [ %i.cv, %bb.z ] ; 3 uses
  %i.db = load i8, ptr %.050.i.i72, align 1, !tbaa !26 ; 4 uses
  %i.dc = and i8 %i.db, 127
  %i.dd = zext nneg i8 %i.dc to i64               ; 2 uses
  %i.de = icmp ugt i32 %.044.i.i74, 62
  br i1 %i.de, label %bb.ab, label %bb.ad, !prof !35

bb.ab:                                            ; preds = %.lr.ph76
  %i.df = icmp eq i32 %.044.i.i74, 63
  br i1 %i.df, label %switch.early.test.i.i, label %.critedge66.i.i

switch.early.test.i.i:                            ; preds = %bb.ab
  switch i8 %i.db, label %bb.ac [
    i8 -1, label %bb.ad
    i8 -128, label %bb.ad
    i8 127, label %bb.ad
    i8 0, label %bb.ad
  ]

.critedge66.i.i:                                  ; preds = %bb.ab
  %i.dg = icmp slt i64 %.045.i.i73, 0
  %i.dh = select i1 %i.dg, i64 127, i64 0
  %.not58.i.i = icmp eq i64 %i.dh, %i.dd
  br i1 %.not58.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.critedge66.i.i, %switch.early.test.i.i
  %i.di = ptrtoint ptr %.050.i.i72 to i64
  br label %_ZN4llvm13decodeSLEB128EPKhPjS1_PPKc.exit.i

bb.ad:                                            ; preds = %.critedge66.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %.lr.ph76
  %i.dj = icmp ult i32 %.044.i.i74, 64
  %10 = zext nneg i32 %.044.i.i74 to i64
  %i.dk = shl i64 %i.dd, %10
  %i.dl = select i1 %i.dj, i64 %i.dk, i64 0, !prof !119
  %.146.i.i = or i64 %i.dl, %.045.i.i73           ; 2 uses
  %11 = add i32 %.044.i.i74, 7                    ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.050.i.i72, i64 1 ; 3 uses
  %i.dn = icmp slt i8 %i.db, 0
  br i1 %i.dn, label %bb.aa, label %bb.ae, !llvm.loop !120

bb.ae:                                            ; preds = %bb.ad
  %i.do = icmp ugt i32 %11, 63
  %.not61.i.i = icmp samesign ult i8 %i.db, 64
  %or.cond.i.i = select i1 %i.do, i1 true, i1 %.not61.i.i
  %12 = zext nneg i32 %11 to i64
  %i.dp = shl nsw i64 -1, %12
  %i.dq = select i1 %or.cond.i.i, i64 0, i64 %i.dp
  %.3.i.i38 = or i64 %.146.i.i, %i.dq
  %i.dr = ptrtoint ptr %i.dm to i64
  br label %_ZN4llvm13decodeSLEB128EPKhPjS1_PPKc.exit.i

_ZN4llvm13decodeSLEB128EPKhPjS1_PPKc.exit.i:      ; preds = %bb.aa, %bb.z, %bb.ae, %bb.ac
  %.sink.i.i = phi i64 [ %i.di, %bb.ac ], [ %i.dr, %bb.ae ], [ %i.cy, %bb.z ], [ %i.cy, %bb.aa ]
  %.249.ph.i.i = phi i64 [ 0, %bb.ac ], [ %.3.i.i38, %bb.ae ], [ 0, %bb.z ], [ 0, %bb.aa ]
  %i.ds = ptrtoint ptr %i.cv to i64
  %i.dt = sub i64 %.sink.i.i, %i.ds
  %i.du = and i64 %i.dt, 4294967295
  %i.dv = load i64, ptr %i.a, align 8, !tbaa !41
  %i.dw = add i64 %i.dv, %i.du
  store i64 %i.dw, ptr %i.a, align 8, !tbaa !41
  br label %_ZNK12lldb_private13DataExtractor10GetSLEB128EPm.exit

_ZNK12lldb_private13DataExtractor10GetSLEB128EPm.exit: ; preds = %bb.y, %_ZN4llvm13decodeSLEB128EPKhPjS1_PPKc.exit.i
  %.0.i39 = phi i64 [ %.249.ph.i.i, %_ZN4llvm13decodeSLEB128EPKhPjS1_PPKc.exit.i ], [ 0, %bb.y ]
  %i.dx = call noundef i64 (ptr, ptr, ...) @_ZN12lldb_private6Stream6PrintfEPKcz(ptr noundef nonnull align 8 dereferenceable(88) %7, ptr noundef nonnull @.str.12, i64 noundef %.0.i39) #17 ; 0 uses
  br label %bb.af

bb.af:                                            ; preds = %bb.h, %_ZNK12lldb_private13DataExtractor5GetU8EPm.exit, %_ZNK12lldb_private13DataExtractor5GetU8EPm.exit25, %_ZNK12lldb_private13DataExtractor6GetU16EPm.exit, %_ZNK12lldb_private13DataExtractor6GetU32EPm.exit, %_ZNK12lldb_private13DataExtractor6GetU64EPm.exit, %bb.s, %_ZNK12lldb_private13DataExtractor10GetULEB128EPm.exit, %_ZNK12lldb_private13DataExtractor10GetSLEB128EPm.exit
  %i.dy = add i32 %.01945, 1
  %i.dz = load i64, ptr %i.a, align 8, !tbaa !41
  %i.ea = load ptr, ptr %0, align 8, !tbaa !9
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 24
  %i.ec = load ptr, ptr %i.eb, align 8
  %i.ed = call noundef i64 %i.ec(ptr noundef nonnull align 8 dereferenceable(48) %0) #17, !inline_history !28
  %i.ee = icmp ult i64 %i.dz, %i.ed
  %i.ef = load i64, ptr %i.a, align 8
  %i.eg = icmp ult i64 %i.ef, %i.c
  %i.eh = select i1 %i.ee, i1 %i.eg, i1 false
  br i1 %i.eh, label %bb.c, label %._crit_edge, !llvm.loop !124

._crit_edge:                                      ; preds = %bb.af, %bb.b
  %i.ei = call noundef zeroext i1 @_ZNK12lldb_private12StreamString5EmptyEv(ptr noundef nonnull align 8 dereferenceable(120) %7) #17
  br i1 %i.ei, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %._crit_edge
  %i.ej = call { ptr, i64 } @_ZNK12lldb_private12StreamString9GetStringEv(ptr noundef nonnull align 8 dereferenceable(120) %7) #17 ; 2 uses
  %i.ek = extractvalue { ptr, i64 } %i.ej, 0
  %i.el = extractvalue { ptr, i64 } %i.ej, 1
  call void @_ZN12lldb_private3Log9PutStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(104) %1, ptr %i.ek, i64 %i.el) #17
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %._crit_edge
  %i.em = load i64, ptr %i.a, align 8, !tbaa !41
  call void @_ZN12lldb_private12StreamStringD1Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %7) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.ai

bb.ai:                                            ; preds = %bb.a, %bb.ah
  %.0 = phi i64 [ %i.em, %bb.ah ], [ %2, %bb.a ]
  ret i64 %.0
}

declare void @_ZN12lldb_private12StreamStringC1Eb(ptr noundef nonnull align 8 dereferenceable(120), i1 noundef zeroext) unnamed_addr #6

declare noundef i64 @_ZNK12lldb_private12StreamString7GetSizeEv(ptr noundef nonnull align 8 dereferenceable(120)) local_unnamed_addr #6

declare void @_ZN12lldb_private3Log9PutStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(104), ptr, i64) local_unnamed_addr #6

declare { ptr, i64 } @_ZNK12lldb_private12StreamString9GetStringEv(ptr noundef nonnull align 8 dereferenceable(120)) local_unnamed_addr #6

declare void @_ZN12lldb_private12StreamString5ClearEv(ptr noundef nonnull align 8 dereferenceable(120)) local_unnamed_addr #6

declare noundef i64 @_ZN12lldb_private6Stream6PrintfEPKcz(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef, ...) local_unnamed_addr #6

declare noundef zeroext i1 @_ZNK12lldb_private12StreamString5EmptyEv(ptr noundef nonnull align 8 dereferenceable(120)) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZN12lldb_private12StreamStringD1Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120)) unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i64 @_ZNK12lldb_private13DataExtractor4CopyERS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %2 = alloca %"class.std::shared_ptr", align 8   ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !9
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i64 %i.e(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 noundef 0, i64 noundef -1) #17 ; 0 uses
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !22
  %i.i = load ptr, ptr %0, align 8, !tbaa !9
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef i64 %i.k(ptr noundef nonnull align 8 dereferenceable(48) %0) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.m = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 3 uses
  tail call void @_ZN12lldb_private14DataBufferHeapC1EPKvm(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef %i.h, i64 noundef %i.l) #17
  store ptr %i.m, ptr %2, align 8, !tbaa !24
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.o = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #20 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i32 1, ptr %i.p, align 8, !tbaa !31
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  store i32 1, ptr %i.q, align 4, !tbaa !33
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN12lldb_private14DataBufferHeapELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.o, align 8, !tbaa !9
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr %i.m, ptr %i.r, align 8, !tbaa !125
  store ptr %i.o, ptr %i.n, align 8, !tbaa !25
  %i.s = load ptr, ptr %1, align 8, !tbaa !9
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 120
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = call noundef i64 %i.u(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef 0, i64 noundef -1) #17 ; 0 uses
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !25   ; 8 uses
  %.not.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN12lldb_private10DataBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 4 uses
  %i.y = load atomic i64, ptr %i.x acquire, align 8 ; 2 uses
  %i.z = icmp eq i64 %i.y, 4294967297
  %i.aa = trunc i64 %i.y to i32                   ; 2 uses
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.x, align 8, !tbaa !31
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  store i32 0, ptr %i.ab, align 4, !tbaa !33
  %i.ac = load ptr, ptr %i.w, align 8, !tbaa !9
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8
  call void %i.ae(ptr noundef nonnull align 8 dereferenceable(16) %i.w) #17, !inline_history !36
  %i.af = load ptr, ptr %i.w, align 8, !tbaa !9
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8
  call void %i.ah(ptr noundef nonnull align 8 dereferenceable(16) %i.w) #17, !inline_history !36
  br label %_ZNSt12__shared_ptrIN12lldb_private10DataBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.f:                                             ; preds = %bb.d
  %i.ai = load i8, ptr @__libc_single_threaded, align 1, !tbaa !26
  %.not.i.i.i = icmp eq i8 %i.ai, 0
  br i1 %.not.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = add nsw i32 %i.aa, -1
  store i32 %i.aj, ptr %i.x, align 8, !tbaa !27
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.ak = atomicrmw volatile add ptr %i.x, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i = phi i32 [ %i.aa, %bb.g ], [ %i.ak, %bb.h ]
  %i.al = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.al, label %bb.i, label %_ZNSt12__shared_ptrIN12lldb_private10DataBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !35

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.w) #17
  br label %_ZNSt12__shared_ptrIN12lldb_private10DataBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN12lldb_private10DataBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.c, %bb.e, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt12__shared_ptrIN12lldb_private10DataBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.b
  %i.am = load ptr, ptr %0, align 8, !tbaa !9
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = call noundef i64 %i.ao(ptr noundef nonnull align 8 dereferenceable(48) %0) #17
  ret i64 %i.ap
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #10

declare void @_ZN12lldb_private14DataBufferHeapC1EPKvm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN12lldb_private13DataExtractor6AppendERS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %2 = alloca %"class.std::shared_ptr", align 8   ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !11
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !11
  %.not13 = icmp eq i32 %i.b, %i.d
  br i1 %.not13, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !9
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef i64 %i.g(ptr noundef nonnull align 8 dereferenceable(48) %1) #17
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
end_hunk_0
