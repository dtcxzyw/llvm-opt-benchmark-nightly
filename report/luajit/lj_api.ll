Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luajit/original/lj_api?download=true
inline.NumInlined: 66
inline.NumDeleted: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@lua_xmove:bb.a
  %i.ad = getelementptr inbounds i8, ptr %.020, i64 -32
  %i.ae = getelementptr inbounds i8, ptr %.01319, i64 -32
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !20
  store i64 %i.af, ptr %i.ad, align 8, !tbaa !20
  %i.ag = getelementptr inbounds i8, ptr %.020, i64 -40
  %i.ah = getelementptr inbounds i8, ptr %.01319, i64 -40
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !20
  store i64 %i.ai, ptr %i.ag, align 8, !tbaa !20
  %i.aj = getelementptr inbounds i8, ptr %.020, i64 -48
  %i.ak = getelementptr inbounds i8, ptr %.01319, i64 -48
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !20
  store i64 %i.al, ptr %i.aj, align 8, !tbaa !20
  %i.am = getelementptr inbounds i8, ptr %.020, i64 -56
  %i.an = getelementptr inbounds i8, ptr %.01319, i64 -56
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !20
  store i64 %i.ao, ptr %i.am, align 8, !tbaa !20
  %i.ap = add nsw i32 %.01418, -8
  %i.aq = getelementptr inbounds i8, ptr %.020, i64 -64 ; 2 uses
  %i.ar = getelementptr inbounds i8, ptr %.01319, i64 -64 ; 3 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !20
  store i64 %i.as, ptr %i.aq, align 8, !tbaa !20
  %i.at = icmp sgt i32 %.01418, 8
  br i1 %i.at, label %.lr.ph, label %._crit_edge, !llvm.loop !51

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %lj_state_checkstack.exit
  %.013.lcssa = phi ptr [ %i.l, %lj_state_checkstack.exit ], [ %.lcssa.unr, %.lr.ph.prol.loopexit ], [ %i.ar, %.lr.ph ]
  store ptr %.013.lcssa, ptr %i.k, align 8, !tbaa !17
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @lua_version(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #5 {
bb.a:
  ret ptr @lua_version.version
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @lua_gettop(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !18
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 3
  %i.i = trunc i64 %i.h to i32
  ret i32 %i.i
}

; Function Attrs: nounwind uwtable
define dso_local void @lua_settop(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp sgt i32 %1, -1
  br i1 %i.a, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !18   ; 2 uses
  %i.d = zext nneg i32 %1 to i64                  ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.d ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !17   ; 3 uses
  %i.h = icmp ugt ptr %i.e, %i.g
  br i1 %i.h, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = load i64, ptr %i.i, align 8, !tbaa !19
  %i.k = inttoptr i64 %i.j to ptr
  %.not = icmp ult ptr %i.e, %i.k
  br i1 %.not, label %.preheader, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = ptrtoint ptr %i.g to i64
  %i.m = ptrtoint ptr %i.c to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = lshr exact i64 %i.n, 3
  %i.p = trunc i64 %i.o to i32
  %i.q = sub i32 %1, %i.p
  tail call void @lj_state_growstack(ptr noundef nonnull %0, i32 noundef %i.q) #13
  %.pre.pre = load ptr, ptr %i.f, align 8, !tbaa !17
  br label %.preheader

.preheader:                                       ; preds = %bb.d, %bb.c
  %.ph = phi ptr [ %i.g, %bb.c ], [ %.pre.pre, %bb.d ]
  br label %bb.e

bb.e:                                             ; preds = %.preheader, %bb.e
  %i.r = phi ptr [ %i.t, %bb.e ], [ %.ph, %.preheader ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %i.s, ptr %i.f, align 8, !tbaa !17
  store i64 -1, ptr %i.r, align 8, !tbaa !20
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !17   ; 2 uses
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.d
  %i.w = icmp ult ptr %i.t, %i.v
  br i1 %i.w, label %bb.e, label %.loopexit, !llvm.loop !52

bb.f:                                             ; preds = %bb.b
  store ptr %i.e, ptr %i.f, align 8, !tbaa !17
  br label %.loopexit

bb.g:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !17
  %i.z = sext i32 %1 to i64
  %i.aa = getelementptr [8 x i8], ptr %i.y, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.aa, i64 8
  store ptr %i.ab, ptr %i.x, align 8, !tbaa !17
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %bb.f, %bb.g
  ret void
}

declare hidden void @lj_state_growstack(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @lua_remove(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.d = zext nneg i32 %1 to i64
  %i.e = getelementptr [8 x i8], ptr %i.c, i64 %i.d
  %i.f = getelementptr i8, ptr %i.e, i64 -8       ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !17   ; 3 uses
  %i.i = icmp ult ptr %i.f, %i.h
  br i1 %i.i, label %index2adr_stack.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !23
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 248
  br label %index2adr_stack.exit

bb.d:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !17   ; 2 uses
  %i.p = sext i32 %1 to i64
  %i.q = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.p
  br label %index2adr_stack.exit

index2adr_stack.exit:                             ; preds = %bb.b, %bb.c, %bb.d
  %i.r = phi ptr [ %i.o, %bb.d ], [ %i.h, %bb.c ], [ %i.h, %bb.b ] ; 2 uses
  %.1.i = phi ptr [ %i.q, %bb.d ], [ %i.m, %bb.c ], [ %i.f, %bb.b ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.1.i, i64 8 ; 2 uses
  %i.u = icmp ult ptr %i.t, %i.r
  br i1 %i.u, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %index2adr_stack.exit, %.lr.ph
  %i.v = phi ptr [ %i.x, %.lr.ph ], [ %i.t, %index2adr_stack.exit ] ; 3 uses
  %.010 = phi ptr [ %i.v, %.lr.ph ], [ %.1.i, %index2adr_stack.exit ]
  %i.w = load i64, ptr %i.v, align 8, !tbaa !20
  store i64 %i.w, ptr %.010, align 8, !tbaa !20
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !17   ; 2 uses
  %i.z = icmp ult ptr %i.x, %i.y
  br i1 %i.z, label %.lr.ph, label %._crit_edge, !llvm.loop !53

._crit_edge:                                      ; preds = %.lr.ph, %index2adr_stack.exit
  %.lcssa = phi ptr [ %i.r, %index2adr_stack.exit ], [ %i.y, %.lr.ph ]
  %i.aa = getelementptr inbounds i8, ptr %.lcssa, i64 -8
  store ptr %i.aa, ptr %i.s, align 8, !tbaa !17
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @lua_insert(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.d = zext nneg i32 %1 to i64
  %i.e = getelementptr [8 x i8], ptr %i.c, i64 %i.d
  %i.f = getelementptr i8, ptr %i.e, i64 -8       ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !17   ; 3 uses
  %i.i = icmp ult ptr %i.f, %i.h
  br i1 %i.i, label %index2adr_stack.exit.a, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !23
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 248
  br label %index2adr_stack.exit

bb.d:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !17   ; 2 uses
  %i.p = sext i32 %1 to i64
  %i.q = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.p
  br label %index2adr_stack.exit

index2adr_stack.exit:                             ; preds = %bb.c, %bb.d
  %2 = phi ptr [ %i.o, %bb.d ], [ %i.h, %bb.c ]   ; 3 uses
  %.1.i = phi ptr [ %i.q, %bb.d ], [ %i.m, %bb.c ] ; 3 uses
  %3 = icmp ugt ptr %2, %.1.i
  br i1 %3, label %index2adr_stack.exit.a, label %._crit_edge

index2adr_stack.exit.a:                           ; preds = %bb.b, %index2adr_stack.exit
  %.1.i20 = phi ptr [ %.1.i, %index2adr_stack.exit ], [ %i.f, %bb.b ] ; 2 uses
  %4 = phi ptr [ %2, %index2adr_stack.exit ], [ %i.h, %bb.b ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %.lr.ph

.lr.ph:                                           ; preds = %index2adr_stack.exit.a, %.lr.ph
  %.012 = phi ptr [ %i.s, %.lr.ph ], [ %4, %index2adr_stack.exit.a ] ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %.012, i64 -8 ; 3 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !20
  store i64 %i.t, ptr %.012, align 8, !tbaa !20
  %i.u = icmp ugt ptr %i.s, %.1.i20
  br i1 %i.u, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !54

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre = load ptr, ptr %i.r, align 8, !tbaa !17
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %index2adr_stack.exit
  %.1.i19 = phi ptr [ %.1.i20, %._crit_edge.loopexit ], [ %.1.i, %index2adr_stack.exit ]
  %i.v = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %2, %index2adr_stack.exit ]
  %i.w = load i64, ptr %i.v, align 8, !tbaa !20
  store i64 %i.w, ptr %.1.i19, align 8, !tbaa !20
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @lua_replace(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -8
  tail call fastcc void @copy_slot(ptr noundef %0, ptr noundef nonnull %i.c, i32 noundef %1)
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -8
  store ptr %i.e, ptr %i.a, align 8, !tbaa !17
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @copy_slot(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) unnamed_addr #1 {
bb.a:
  switch i32 %2, label %bb.i [
    i32 -10002, label %bb.b
    i32 -10001, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i64, ptr %1, align 8, !tbaa !20
  %i.b = and i64 %i.a, 140737488355327
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %i.b, ptr %i.c, align 8, !tbaa !24
  br label %bb.z

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 -16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !20
  %i.h = and i64 %i.g, 140737488355327
  %i.i = inttoptr i64 %i.h to ptr                 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 9
  %i.k = load i8, ptr %i.j, align 1, !tbaa !20
  %.not27 = icmp eq i8 %i.k, 8
  br i1 %.not27, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @lj_err_msg(ptr noundef nonnull %0, i32 noundef 807) #14
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.l = load i64, ptr %1, align 8, !tbaa !20
  %i.m = and i64 %i.l, 140737488355327
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 %i.m, ptr %i.n, align 8, !tbaa !20
  %i.o = load i64, ptr %1, align 8, !tbaa !20     ; 2 uses
  %i.p = ashr i64 %i.o, 47
  %i.q = trunc nsw i64 %i.p to i32
  %i.r = add nsw i32 %i.q, 13
  %i.s = icmp ult i32 %i.r, 9
  br i1 %i.s, label %bb.f, label %bb.z

bb.f:                                             ; preds = %bb.e
  %i.t = and i64 %i.o, 140737488355327
  %i.u = inttoptr i64 %i.t to ptr                 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load i8, ptr %i.v, align 8, !tbaa !20
  %i.x = and i8 %i.w, 3
  %.not28 = icmp eq i8 %i.x, 0
  br i1 %.not28, label %bb.z, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.z = load i8, ptr %i.y, align 8, !tbaa !20
  %i.aa = and i8 %i.z, 4
  %.not29 = icmp eq i8 %i.aa, 0
  br i1 %.not29, label %bb.z, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !23
  %i.ad = inttoptr i64 %i.ac to ptr
  tail call void @lj_gc_barrierf(ptr noundef %i.ad, ptr noundef nonnull %i.i, ptr noundef nonnull %i.u) #13
  br label %bb.z

bb.i:                                             ; preds = %bb.a
  %i.ae = icmp sgt i32 %2, 0
  br i1 %i.ae, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !18
  %i.ah = zext nneg i32 %2 to i64
  %i.ai = getelementptr [8 x i8], ptr %i.ag, i64 %i.ah
  %i.aj = getelementptr i8, ptr %i.ai, i64 -8     ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !17
  %i.am = icmp ult ptr %i.aj, %i.al
  br i1 %i.am, label %index2adr.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !23
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 248
  br label %index2adr.exit.thread

bb.l:                                             ; preds = %bb.i
  %i.ar = icmp sgt i32 %2, -10000
  br i1 %i.ar, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !17
  %i.au = sext i32 %2 to i64
  %i.av = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.au
  br label %index2adr.exit.thread

bb.n:                                             ; preds = %bb.l
  switch i32 %2, label %bb.q [
    i32 -10002, label %bb.o
    i32 -10000, label %bb.p
  ]

bb.o:                                             ; preds = %bb.n
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !23
  %i.ay = inttoptr i64 %i.ax to ptr
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 232 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !24
  %i.bc = or i64 %i.bb, -1688849860263936
  store i64 %i.bc, ptr %i.az, align 8, !tbaa !20
  br label %index2adr.exit.thread

bb.p:                                             ; preds = %bb.n
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !23
  %i.bf = inttoptr i64 %i.be to ptr
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 272
  br label %index2adr.exit.thread

bb.q:                                             ; preds = %bb.n
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !18
  %i.bj = getelementptr inbounds i8, ptr %i.bi, i64 -16
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !20
  %i.bl = and i64 %i.bk, 140737488355327
  %i.bm = inttoptr i64 %i.bl to ptr               ; 3 uses
  %i.bn = icmp eq i32 %2, -10001
  br i1 %i.bn, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !23
  %i.bq = inttoptr i64 %i.bp to ptr
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 232 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !20
  %i.bu = or i64 %i.bt, -1688849860263936
  store i64 %i.bu, ptr %i.br, align 8, !tbaa !20
  br label %index2adr.exit.thread

bb.s:                                             ; preds = %bb.q
  %i.bv = sub nuw nsw i32 -10002, %2
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bm, i64 11
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !20
  %i.by = zext i8 %i.bx to i32
  %.not.i = icmp samesign ugt i32 %i.bv, %i.by
  br i1 %.not.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bm, i64 48
  %i.ca = sub nsw i32 -10003, %2
  %i.cb = sext i32 %i.ca to i64
  %i.cc = getelementptr inbounds [8 x i8], ptr %i.bz, i64 %i.cb
  br label %index2adr.exit

bb.u:                                             ; preds = %bb.s
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !23
  %i.cf = inttoptr i64 %i.ce to ptr
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 248
  br label %index2adr.exit

index2adr.exit.thread:                            ; preds = %bb.j, %bb.k, %bb.m, %bb.o, %bb.p, %bb.r
  %.1.i.ph = phi ptr [ %i.br, %bb.r ], [ %i.aq, %bb.k ], [ %i.bg, %bb.p ], [ %i.az, %bb.o ], [ %i.av, %bb.m ], [ %i.aj, %bb.j ]
  %i.ch = load i64, ptr %1, align 8, !tbaa !20
  store i64 %i.ch, ptr %.1.i.ph, align 8, !tbaa !20
  br label %bb.z

index2adr.exit:                                   ; preds = %bb.t, %bb.u
  %.1.i = phi ptr [ %i.cc, %bb.t ], [ %i.cg, %bb.u ]
  %i.ci = load i64, ptr %1, align 8, !tbaa !20    ; 3 uses
  store i64 %i.ci, ptr %.1.i, align 8, !tbaa !20
  %i.cj = icmp samesign ult i32 %2, -10002
  br i1 %i.cj, label %bb.v, label %bb.z

bb.v:                                             ; preds = %index2adr.exit
  %i.ck = ashr i64 %i.ci, 47
  %i.cl = trunc nsw i64 %i.ck to i32
  %i.cm = add nsw i32 %i.cl, 13
  %i.cn = icmp ult i32 %i.cm, 9
end_hunk_0
