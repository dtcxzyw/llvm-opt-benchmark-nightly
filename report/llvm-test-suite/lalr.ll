inline.NumInlined: 10
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@build_relations:bb.a
  %i.fn = getelementptr inbounds [2 x i8], ptr %i.eh, i64 %i.fm
  store i16 -1, ptr %i.fn, align 2, !tbaa !22
  br label %._crit_edge120.thread

._crit_edge120.thread:                            ; preds = %.lr.ph128, %._crit_edge120, %._crit_edge125
  %indvars.iv.next147 = add nuw nsw i64 %indvars.iv146, 1 ; 2 uses
  %i.fo = load i32, ptr @ngotos, align 4, !tbaa !4 ; 2 uses
  %i.fp = sext i32 %i.fo to i64
  %i.fq = icmp slt i64 %indvars.iv.next147, %i.fp
  br i1 %i.fq, label %.lr.ph128, label %._crit_edge129, !llvm.loop !92

._crit_edge129:                                   ; preds = %._crit_edge120.thread, %bb.a
  %.lcssa100 = phi i32 [ %i.l, %bb.a ], [ %i.fo, %._crit_edge120.thread ]
  %i.fr = load ptr, ptr @includes, align 8, !tbaa !74
  %i.fs = tail call ptr @transpose(ptr noundef %i.fr, i32 noundef %.lcssa100)
  %i.ft = load i32, ptr @ngotos, align 4, !tbaa !4 ; 2 uses
  %i.fu = icmp sgt i32 %i.ft, 0
  %.pre155 = load ptr, ptr @includes, align 8, !tbaa !74 ; 3 uses
  br i1 %i.fu, label %.lr.ph133, label %._crit_edge134

.lr.ph133:                                        ; preds = %._crit_edge129
  %wide.trip.count152 = zext nneg i32 %i.ft to i64
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph133, %bb.o
  %indvars.iv149 = phi i64 [ 0, %.lr.ph133 ], [ %indvars.iv.next150, %bb.o ] ; 2 uses
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %.pre155, i64 %indvars.iv149
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !19 ; 2 uses
  %.not88 = icmp eq ptr %i.fw, null
  br i1 %.not88, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @free(ptr noundef nonnull %i.fw) #9
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %indvars.iv.next150 = add nuw nsw i64 %indvars.iv149, 1 ; 2 uses
  %exitcond153.not = icmp eq i64 %indvars.iv.next150, %wide.trip.count152
  br i1 %exitcond153.not, label %._crit_edge134.thread, label %bb.m, !llvm.loop !93

._crit_edge134:                                   ; preds = %._crit_edge129
  %.not = icmp eq ptr %.pre155, null
  br i1 %.not, label %bb.p, label %._crit_edge134.thread

._crit_edge134.thread:                            ; preds = %bb.o, %._crit_edge134
  tail call void @free(ptr noundef nonnull %.pre155) #9
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge134.thread, %._crit_edge134
  store ptr %i.fs, ptr @includes, align 8, !tbaa !74
  %.not86 = icmp eq ptr %i.g, null
  br i1 %.not86, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @free(ptr noundef nonnull %i.g) #9
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.not87 = icmp eq ptr %i.k, null
  br i1 %.not87, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @free(ptr noundef nonnull %i.k) #9
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @compute_FOLLOWS() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @includes, align 8, !tbaa !74 ; 2 uses
  %i.b = load i32, ptr @ngotos, align 4, !tbaa !4 ; 2 uses
  %i.c = add nsw i32 %i.b, 2
  store i32 %i.c, ptr @infinity, align 4, !tbaa !4
  %i.d = shl i32 %i.b, 1
  %i.e = add i32 %i.d, 2
  %i.f = tail call ptr (i32, ...) @mallocate(i32 noundef %i.e) #9
  store ptr %i.f, ptr @INDEX, align 8, !tbaa !19
  %i.g = load i32, ptr @ngotos, align 4, !tbaa !4
  %i.h = shl i32 %i.g, 1
  %i.i = add i32 %i.h, 2
  %i.j = tail call ptr (i32, ...) @mallocate(i32 noundef %i.i) #9 ; 3 uses
  store ptr %i.j, ptr @VERTICES, align 8, !tbaa !19
  store i32 0, ptr @top, align 4, !tbaa !4
  store ptr %i.a, ptr @R, align 8, !tbaa !74
  %i.k = load i32, ptr @ngotos, align 4, !tbaa !4 ; 4 uses
  %i.l = icmp sgt i32 %i.k, 0                     ; 2 uses
  %.pre.pre.i = load ptr, ptr @INDEX, align 8, !tbaa !19 ; 4 uses
  br i1 %i.l, label %.lr.ph14.i, label %._crit_edge.i

.lr.ph14.i:                                       ; preds = %bb.a
  %i.m = shl nuw i32 %i.k, 1
  %i.n = zext i32 %i.m to i64
  tail call void @llvm.memset.p0.i64(ptr align 2 %.pre.pre.i, i8 0, i64 %i.n, i1 false), !tbaa !22
  %wide.trip.count.i = zext nneg i32 %i.k to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %.lr.ph14.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph14.i ], [ %indvars.iv.next.i, %bb.e ] ; 4 uses
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %.pre.pre.i, i64 %indvars.iv.i
  %i.p = load i16, ptr %i.o, align 2, !tbaa !22
  %i.q = icmp eq i16 %i.p, 0
  br i1 %i.q, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !19
  %.not11.i = icmp eq ptr %i.s, null
  br i1 %.not11.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = trunc nuw nsw i64 %indvars.iv.i to i32
  tail call void @traverse(i32 noundef %i.t)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.thread.i, label %bb.b, !llvm.loop !76

._crit_edge.i:                                    ; preds = %bb.a
  %.not.i = icmp eq ptr %.pre.pre.i, null
  br i1 %.not.i, label %bb.f, label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %bb.e, %._crit_edge.i
  tail call void @free(ptr noundef nonnull %.pre.pre.i) #9
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge.thread.i, %._crit_edge.i
  %.not10.i = icmp eq ptr %i.j, null
  br i1 %.not10.i, label %digraph.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @free(ptr noundef nonnull %i.j) #9
  br label %digraph.exit

digraph.exit:                                     ; preds = %bb.f, %bb.g
  %.pre = load ptr, ptr @includes, align 8, !tbaa !74 ; 3 uses
  br i1 %i.l, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %digraph.exit
  %wide.trip.count = zext nneg i32 %i.k to i64
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.j
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.j ] ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %indvars.iv
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !19   ; 2 uses
  %.not7 = icmp eq ptr %i.v, null
  br i1 %.not7, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @free(ptr noundef nonnull %i.v) #9
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.thread, label %bb.h, !llvm.loop !94

._crit_edge:                                      ; preds = %digraph.exit
  %.not = icmp eq ptr %.pre, null
  br i1 %.not, label %bb.k, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.j, %._crit_edge
  tail call void @free(ptr noundef nonnull %.pre) #9
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge.thread, %._crit_edge
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define dso_local void @compute_lookaheads() local_unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr @lookaheads, align 8, !tbaa !19
  %i.b = load i32, ptr @nstates, align 4, !tbaa !4
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr inbounds [2 x i8], ptr %i.a, i64 %i.c
  %i.e = load i16, ptr %i.d, align 2, !tbaa !22   ; 2 uses
  %i.f = sext i16 %i.e to i32                     ; 2 uses
  %i.g = icmp sgt i16 %i.e, 0
  br i1 %i.g, label %.lr.ph, label %._crit_edge49

.lr.ph:                                           ; preds = %bb.a
  %i.h = load ptr, ptr @LA, align 8, !tbaa !46
  %i.i = load ptr, ptr @lookback, align 8, !tbaa !48
  %i.j = load ptr, ptr @F, align 8                ; 2 uses
  %wide.trip.count = zext nneg i32 %i.f to i64
  %scevgep61 = getelementptr i8, ptr %i.j, i64 4
  br label %bb.b

.lr.ph48.preheader:                               ; preds = %._crit_edge
  %wide.trip.count55 = zext nneg i32 %i.f to i64
  br label %.lr.ph48

bb.b:                                             ; preds = %.lr.ph, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.02239 = phi ptr [ %i.h, %.lr.ph ], [ %i.m, %._crit_edge ] ; 9 uses
  %i.k = load i32, ptr @tokensetsize, align 4, !tbaa !4 ; 2 uses
  %i.l = sext i32 %i.k to i64
  %.idx = shl nsw i64 %i.l, 2                     ; 3 uses
  %i.m = getelementptr inbounds i8, ptr %.02239, i64 %.idx ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv
  %.02335 = load ptr, ptr %i.n, align 8, !tbaa !81 ; 2 uses
  %.not3236 = icmp ne ptr %.02335, null
  %i.o = icmp sgt i32 %i.k, 0
  %or.cond = select i1 %.not3236, i1 %i.o, i1 false
  br i1 %or.cond, label %.lr.ph.us.preheader, label %._crit_edge

.lr.ph.us.preheader:                              ; preds = %bb.b
  %.0223959 = ptrtoint ptr %.02239 to i64         ; 3 uses
  %scevgep = getelementptr i8, ptr %.02239, i64 4
  %i.p = add i64 %.idx, %.0223959
  %i.q = add i64 %.0223959, 4
  %umax = tail call i64 @llvm.umax.i64(i64 %i.p, i64 %i.q)
  %i.r = xor i64 %.0223959, -1
  %i.s = add i64 %umax, %i.r
  %i.t = and i64 %i.s, -4                         ; 2 uses
  %scevgep60 = getelementptr i8, ptr %scevgep, i64 %i.t
  %scevgep62 = getelementptr i8, ptr %scevgep61, i64 %i.t
  %0 = ptrtoint ptr %.02239 to i64                ; 3 uses
  %i.u = add i64 %.idx, %0
  %i.v = add i64 %0, 4
  %umax64 = tail call i64 @llvm.umax.i64(i64 %i.u, i64 %i.v)
  %i.w = xor i64 %0, -1
  %i.x = add i64 %umax64, %i.w                    ; 2 uses
  %i.y = lshr i64 %i.x, 2
  %i.z = add nuw nsw i64 %i.y, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.x, 28
  %n.vec = and i64 %i.z, 9223372036854775800      ; 3 uses
  %i.aa = shl i64 %n.vec, 2                       ; 2 uses
  %i.ab = getelementptr i8, ptr %.02239, i64 %i.aa
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %..loopexit_crit_edge.us
  %.02337.us = phi ptr [ %.023.us, %..loopexit_crit_edge.us ], [ %.02335, %.lr.ph.us.preheader ] ; 2 uses
  %i.ac = load i32, ptr @tokensetsize, align 4, !tbaa !4
  %i.ad = getelementptr inbounds nuw i8, ptr %.02337.us, i64 8
  %i.ae = load i16, ptr %i.ad, align 8, !tbaa !85
  %i.af = sext i16 %i.ae to i32
  %i.ag = mul i32 %i.ac, %i.af
  %i.ah = sext i32 %i.ag to i64                   ; 2 uses
  %i.ai = getelementptr [4 x i8], ptr %i.j, i64 %i.ah ; 5 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.us
  %i.aj = shl nsw i64 %i.ah, 2
  %scevgep63 = getelementptr i8, ptr %scevgep62, i64 %i.aj
  %bound0 = icmp ult ptr %.02239, %scevgep63
  %bound1 = icmp ult ptr %i.ai, %scevgep60
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.ak = getelementptr i8, ptr %i.ai, i64 %i.aa
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.al = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.02239, i64 %i.al ; 3 uses
  %next.gep65 = getelementptr i8, ptr %i.ai, i64 %i.al ; 2 uses
  %i.am = getelementptr i8, ptr %next.gep65, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep65, align 4, !tbaa !4, !alias.scope !95
  %wide.load66.a = load <4 x i32>, ptr %i.am, align 4, !tbaa !4, !alias.scope !95
  %i.an = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load67.a = load <4 x i32>, ptr %next.gep, align 4, !tbaa !4, !alias.scope !98, !noalias !95
  %wide.load68 = load <4 x i32>, ptr %i.an, align 4, !tbaa !4, !alias.scope !98, !noalias !95
  %i.ao = or <4 x i32> %wide.load67.a, %wide.load
  %i.ap = or <4 x i32> %wide.load68, %wide.load66.a
  store <4 x i32> %i.ao, ptr %next.gep, align 4, !tbaa !4, !alias.scope !98, !noalias !95
  store <4 x i32> %i.ap, ptr %i.an, align 4, !tbaa !4, !alias.scope !98, !noalias !95
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !100

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit_crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.us, %middle.block
  %.02534.us.ph = phi ptr [ %.02239, %vector.memcheck ], [ %.02239, %.lr.ph.us ], [ %i.ab, %middle.block ]
  %.02633.us.ph = phi ptr [ %i.ai, %vector.memcheck ], [ %i.ai, %.lr.ph.us ], [ %i.ak, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.02534.us = phi ptr [ %i.at, %scalar.ph ], [ %.02534.us.ph, %scalar.ph.preheader ] ; 3 uses
  %.02633.us = phi ptr [ %i.ar, %scalar.ph ], [ %.02633.us.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.02633.us, i64 4
  %i.as = load i32, ptr %.02633.us, align 4, !tbaa !4
  %i.at = getelementptr inbounds nuw i8, ptr %.02534.us, i64 4 ; 2 uses
  %i.au = load i32, ptr %.02534.us, align 4, !tbaa !4
  %i.av = or i32 %i.au, %i.as
  store i32 %i.av, ptr %.02534.us, align 4, !tbaa !4
  %i.aw = icmp ult ptr %i.at, %i.m
  br i1 %i.aw, label %scalar.ph, label %..loopexit_crit_edge.us, !llvm.loop !101

..loopexit_crit_edge.us:                          ; preds = %scalar.ph, %middle.block
  %.023.us = load ptr, ptr %.02337.us, align 8, !tbaa !81 ; 2 uses
  %.not32.us = icmp eq ptr %.023.us, null
  br i1 %.not32.us, label %._crit_edge, label %.lr.ph.us, !llvm.loop !102

._crit_edge:                                      ; preds = %..loopexit_crit_edge.us, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph48.preheader, label %bb.b, !llvm.loop !103

.lr.ph48:                                         ; preds = %.lr.ph48.preheader, %._crit_edge46
  %indvars.iv52 = phi i64 [ 0, %.lr.ph48.preheader ], [ %indvars.iv.next53, %._crit_edge46 ] ; 2 uses
  %i.ax = load ptr, ptr @lookback, align 8, !tbaa !48
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv52
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !81 ; 2 uses
  %.not3142 = icmp eq ptr %i.az, null
  br i1 %.not3142, label %._crit_edge46, label %.lr.ph45

.lr.ph45:                                         ; preds = %.lr.ph48, %.lr.ph45
  %.12443 = phi ptr [ %i.ba, %.lr.ph45 ], [ %i.az, %.lr.ph48 ] ; 2 uses
  %i.ba = load ptr, ptr %.12443, align 8, !tbaa !83 ; 2 uses
  tail call void @free(ptr noundef nonnull %.12443) #9
  %.not31 = icmp eq ptr %i.ba, null
  br i1 %.not31, label %._crit_edge46, label %.lr.ph45, !llvm.loop !104

._crit_edge46:                                    ; preds = %.lr.ph45, %.lr.ph48
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1 ; 2 uses
  %exitcond56.not = icmp eq i64 %indvars.iv.next53, %wide.trip.count55
  br i1 %exitcond56.not, label %._crit_edge49, label %.lr.ph48, !llvm.loop !105

._crit_edge49:                                    ; preds = %._crit_edge46, %bb.a
  %i.bb = load ptr, ptr @lookback, align 8, !tbaa !48 ; 2 uses
  %.not = icmp eq ptr %i.bb, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge49
  tail call void @free(ptr noundef nonnull %i.bb) #9
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge49
  %i.bc = load ptr, ptr @F, align 8, !tbaa !46    ; 2 uses
  %.not30 = icmp eq ptr %i.bc, null
  br i1 %.not30, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %i.bc) #9
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  ret void
}

declare ptr @mallocate(...) local_unnamed_addr #3

declare void @toomany(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @map_goto(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @goto_map, align 8, !tbaa !19
  %i.b = sext i32 %1 to i64
  %i.c = getelementptr inbounds [2 x i8], ptr %i.a, i64 %i.b ; 2 uses
  %i.d = load i16, ptr %i.c, align 2, !tbaa !22   ; 2 uses
  %i.e = getelementptr i8, ptr %i.c, i64 2
  %i.f = load i16, ptr %i.e, align 2, !tbaa !22   ; 2 uses
  %.not20 = icmp sgt i16 %i.d, %i.f
  br i1 %.not20, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = sext i16 %i.f to i32
  %i.h = sext i16 %i.d to i32
  %i.i = load ptr, ptr @from_state, align 8, !tbaa !19
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %.01522 = phi i32 [ %i.g, %.lr.ph ], [ %.1, %bb.c ] ; 2 uses
  %.01621 = phi i32 [ %i.h, %.lr.ph ], [ %.117, %bb.c ] ; 2 uses
  %i.j = add nsw i32 %.01522, %.01621
  %i.k = sdiv i32 %i.j, 2                         ; 4 uses
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr inbounds [2 x i8], ptr %i.i, i64 %i.l
  %i.n = load i16, ptr %i.m, align 2, !tbaa !22
  %i.o = sext i16 %i.n to i32                     ; 2 uses
  %i.p = icmp eq i32 %0, %i.o
  br i1 %i.p, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = icmp sgt i32 %0, %i.o                    ; 2 uses
  %i.r = add nsw i32 %i.k, 1
  %i.s = add nsw i32 %i.k, -1
  %.117 = select i1 %i.q, i32 %i.r, i32 %.01621   ; 2 uses
  %.1 = select i1 %i.q, i32 %.01522, i32 %i.s     ; 2 uses
  %.not = icmp sgt i32 %.117, %.1
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !67

._crit_edge:                                      ; preds = %bb.c, %bb.a
  tail call void @berror(ptr noundef nonnull @.str.1) #9
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %._crit_edge
  %.0 = phi i32 [ undef, %._crit_edge ], [ %i.k, %bb.b ]
  ret i32 %.0
}

declare void @berror(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @digraph(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @ngotos, align 4, !tbaa !4 ; 2 uses
  %i.b = add nsw i32 %i.a, 2
  store i32 %i.b, ptr @infinity, align 4, !tbaa !4
  %i.c = shl i32 %i.a, 1
  %i.d = add i32 %i.c, 2
  %i.e = tail call ptr (i32, ...) @mallocate(i32 noundef %i.d) #9
  store ptr %i.e, ptr @INDEX, align 8, !tbaa !19
  %i.f = load i32, ptr @ngotos, align 4, !tbaa !4
  %i.g = shl i32 %i.f, 1
  %i.h = add i32 %i.g, 2
  %i.i = tail call ptr (i32, ...) @mallocate(i32 noundef %i.h) #9 ; 3 uses
  store ptr %i.i, ptr @VERTICES, align 8, !tbaa !19
  store i32 0, ptr @top, align 4, !tbaa !4
  store ptr %0, ptr @R, align 8, !tbaa !74
  %i.j = load i32, ptr @ngotos, align 4, !tbaa !4 ; 3 uses
  %i.k = icmp sgt i32 %i.j, 0
end_hunk_0
begin_hunk_1_@add_lookback_edge:bb.a
  %i.f = getelementptr i8, ptr %i.c, i64 2
  %i.g = load i16, ptr %i.f, align 2, !tbaa !22   ; 2 uses
  %i.h = sext i16 %i.g to i32
  %i.i = icmp slt i16 %i.d, %i.g
  br i1 %i.i, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.a
  %i.j = load ptr, ptr @LAruleno, align 8, !tbaa !19
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.017 = phi i32 [ %i.e, %.lr.ph ], [ %.1, %bb.b ] ; 2 uses
  %i.k = sext i32 %.017 to i64
  %i.l = getelementptr inbounds [2 x i8], ptr %i.j, i64 %i.k
  %i.m = load i16, ptr %i.l, align 2, !tbaa !22
  %i.n = sext i16 %i.m to i32
  %i.o = icmp ne i32 %1, %i.n                     ; 3 uses
  %i.p = zext i1 %i.o to i32
  %.1 = add nsw i32 %.017, %i.p                   ; 4 uses
  %i.q = icmp slt i32 %.1, %i.h
  %i.r = select i1 %i.o, i1 %i.q, i1 false
  br i1 %i.r, label %bb.b, label %._crit_edge, !llvm.loop !80

._crit_edge:                                      ; preds = %bb.b
  br i1 %i.o, label %._crit_edge.thread, label %bb.c

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  %.0.lcssa23 = phi i32 [ %.1, %._crit_edge ], [ %i.e, %bb.a ]
  tail call void @berror(ptr noundef nonnull @.str.2) #9
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %.0.lcssa22 = phi i32 [ %.0.lcssa23, %._crit_edge.thread ], [ %.1, %._crit_edge ]
  %i.s = tail call ptr (i32, ...) @mallocate(i32 noundef 16) #9 ; 3 uses
  %i.t = load ptr, ptr @lookback, align 8, !tbaa !48
  %i.u = sext i32 %.0.lcssa22 to i64
  %i.v = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.u ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !81
  store ptr %i.w, ptr %i.s, align 8, !tbaa !83
  %i.x = trunc i32 %2 to i16
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i16 %i.x, ptr %i.y, align 8, !tbaa !85
  store ptr %i.s, ptr %i.v, align 8, !tbaa !81
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @transpose(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = shl i32 %1, 1
  %i.b = tail call ptr (i32, ...) @mallocate(i32 noundef %i.a) #9 ; 5 uses
  %i.c = icmp sgt i32 %1, 0                       ; 2 uses
  br i1 %i.c, label %.lr.ph56.preheader, label %._crit_edge

.lr.ph56.preheader:                               ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph56

.lr.ph56:                                         ; preds = %.lr.ph56.preheader, %.loopexit53
  %indvars.iv = phi i64 [ 0, %.lr.ph56.preheader ], [ %indvars.iv.next, %.loopexit53 ] ; 2 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !19   ; 3 uses
  %.not51 = icmp eq ptr %i.e, null
  br i1 %.not51, label %.loopexit53, label %.preheader52

.preheader52:                                     ; preds = %.lr.ph56
  %i.f = load i16, ptr %i.e, align 2, !tbaa !22   ; 2 uses
  %i.g = icmp sgt i16 %i.f, -1
  br i1 %i.g, label %.lr.ph, label %.loopexit53

.lr.ph:                                           ; preds = %.preheader52, %.lr.ph
  %i.h = phi i16 [ %i.n, %.lr.ph ], [ %i.f, %.preheader52 ]
  %.054 = phi ptr [ %i.i, %.lr.ph ], [ %i.e, %.preheader52 ]
  %i.i = getelementptr inbounds nuw i8, ptr %.054, i64 2 ; 2 uses
  %i.j = zext nneg i16 %i.h to i64
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.j ; 2 uses
  %i.l = load i16, ptr %i.k, align 2, !tbaa !22
  %i.m = add i16 %i.l, 1
  store i16 %i.m, ptr %i.k, align 2, !tbaa !22
  %i.n = load i16, ptr %i.i, align 2, !tbaa !22   ; 2 uses
  %i.o = icmp sgt i16 %i.n, -1
  br i1 %i.o, label %.lr.ph, label %.loopexit53, !llvm.loop !106

.loopexit53:                                      ; preds = %.lr.ph, %.preheader52, %.lr.ph56
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph56, !llvm.loop !107

._crit_edge:                                      ; preds = %.loopexit53, %bb.a
  %i.p = shl i32 %1, 3                            ; 2 uses
  %i.q = tail call ptr (i32, ...) @mallocate(i32 noundef %i.p) #9 ; 2 uses
  %i.r = tail call ptr (i32, ...) @mallocate(i32 noundef %i.p) #9 ; 4 uses
  br i1 %i.c, label %.lr.ph59.preheader, label %._crit_edge60

.lr.ph59.preheader:                               ; preds = %._crit_edge
  %wide.trip.count72 = zext nneg i32 %1 to i64
  br label %.lr.ph59

.lr.ph59:                                         ; preds = %.lr.ph59.preheader, %bb.c
  %indvars.iv69 = phi i64 [ 0, %.lr.ph59.preheader ], [ %indvars.iv.next70, %bb.c ] ; 4 uses
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv69
  %i.t = load i16, ptr %i.s, align 2, !tbaa !22   ; 3 uses
  %i.u = icmp sgt i16 %i.t, 0
  br i1 %i.u, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph59
  %i.v = shl nuw i16 %i.t, 1
  %i.w = zext i16 %i.v to i32
  %i.x = add nuw nsw i32 %i.w, 2
  %i.y = tail call ptr (i32, ...) @mallocate(i32 noundef %i.x) #9 ; 3 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv69
  store ptr %i.y, ptr %i.z, align 8, !tbaa !19
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv69
  store ptr %i.y, ptr %i.aa, align 8, !tbaa !19
  %i.ab = zext nneg i16 %i.t to i64
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %i.y, i64 %i.ab
  store i16 -1, ptr %i.ac, align 2, !tbaa !22
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph59, %bb.b
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 1 ; 2 uses
  %exitcond73.not = icmp eq i64 %indvars.iv.next70, %wide.trip.count72
  br i1 %exitcond73.not, label %.lr.ph66.preheader, label %.lr.ph59, !llvm.loop !108

._crit_edge60:                                    ; preds = %._crit_edge
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %._crit_edge67, label %.thread87

.thread87:                                        ; preds = %._crit_edge60
  tail call void @free(ptr noundef nonnull %i.b) #9
  br label %._crit_edge67

.lr.ph66.preheader:                               ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.b) #9
  %wide.trip.count77 = zext nneg i32 %1 to i64
  br label %.lr.ph66

.lr.ph66:                                         ; preds = %.lr.ph66.preheader, %.loopexit
  %indvars.iv74 = phi i64 [ 0, %.lr.ph66.preheader ], [ %indvars.iv.next75, %.loopexit ] ; 3 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv74
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !19 ; 3 uses
  %.not50 = icmp eq ptr %i.ae, null
  br i1 %.not50, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.lr.ph66
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !22 ; 2 uses
  %i.ag = icmp sgt i16 %i.af, -1
  br i1 %i.ag, label %.lr.ph62, label %.loopexit

.lr.ph62:                                         ; preds = %.preheader
  %i.ah = trunc i64 %indvars.iv74 to i16
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph62, %bb.d
  %i.ai = phi i16 [ %i.af, %.lr.ph62 ], [ %i.ao, %bb.d ]
  %.161 = phi ptr [ %i.ae, %.lr.ph62 ], [ %i.aj, %bb.d ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.161, i64 2 ; 2 uses
  %i.ak = zext nneg i16 %i.ai to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.ak ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !19 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 2
  store ptr %i.an, ptr %i.al, align 8, !tbaa !19
  store i16 %i.ah, ptr %i.am, align 2, !tbaa !22
  %i.ao = load i16, ptr %i.aj, align 2, !tbaa !22 ; 2 uses
  %i.ap = icmp sgt i16 %i.ao, -1
  br i1 %i.ap, label %bb.d, label %.loopexit, !llvm.loop !109

.loopexit:                                        ; preds = %bb.d, %.preheader, %.lr.ph66
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1 ; 2 uses
  %exitcond78.not = icmp eq i64 %indvars.iv.next75, %wide.trip.count77
  br i1 %exitcond78.not, label %._crit_edge67, label %.lr.ph66, !llvm.loop !110

._crit_edge67:                                    ; preds = %.loopexit, %._crit_edge60, %.thread87
  %.not49 = icmp eq ptr %i.r, null
  br i1 %.not49, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge67
  tail call void @free(ptr noundef nonnull %i.r) #9
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge67
  ret ptr %i.q
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @traverse(i32 noundef %0) local_unnamed_addr #5 {
bb.a:
  %i.a = trunc i32 %0 to i16
  %i.b = load ptr, ptr @VERTICES, align 8, !tbaa !19 ; 4 uses
  %i.c = load i32, ptr @top, align 4, !tbaa !4
  %i.d = add nsw i32 %i.c, 1                      ; 4 uses
  store i32 %i.d, ptr @top, align 4, !tbaa !4
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds [2 x i8], ptr %i.b, i64 %i.e
  store i16 %i.a, ptr %i.f, align 2, !tbaa !22
  %i.g = trunc i32 %i.d to i16                    ; 5 uses
  %i.h = load ptr, ptr @INDEX, align 8, !tbaa !19 ; 6 uses
  %i.i = sext i32 %0 to i64                       ; 2 uses
  %i.j = getelementptr inbounds [2 x i8], ptr %i.h, i64 %i.i ; 5 uses
  store i16 %i.g, ptr %i.j, align 2, !tbaa !22
  %i.k = load ptr, ptr @F, align 8, !tbaa !46     ; 8 uses
  %i.l = ptrtoint ptr %i.k to i64                 ; 3 uses
  %i.m = load i32, ptr @tokensetsize, align 4, !tbaa !4
  %.fr46 = freeze i32 %i.m                        ; 4 uses
  %i.n = mul i32 %.fr46, %0
  %i.o = sext i32 %i.n to i64                     ; 7 uses
  %i.p = getelementptr [4 x i8], ptr %i.k, i64 %i.o ; 10 uses
  %i.q = sext i32 %.fr46 to i64
  %.idx = shl nsw i64 %i.q, 2                     ; 4 uses
  %i.r = getelementptr inbounds i8, ptr %i.p, i64 %.idx ; 2 uses
  %i.s = load ptr, ptr @R, align 8, !tbaa !74
  %i.t = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.i
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !19   ; 3 uses
  %.not = icmp eq ptr %i.u, null
  br i1 %.not, label %.loopexit38, label %.preheader37

.preheader37:                                     ; preds = %bb.a
  %i.v = load i16, ptr %i.u, align 2, !tbaa !22   ; 2 uses
  %i.w = icmp sgt i16 %i.v, -1
  br i1 %i.w, label %.lr.ph41, label %.loopexit38

.lr.ph41:                                         ; preds = %.preheader37
  %i.x = zext nneg i16 %i.v to i32                ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 2 ; 2 uses
  %i.z = icmp sgt i32 %.fr46, 0
  br i1 %i.z, label %.lr.ph41.split.us.preheader, label %.lr.ph41.split

.lr.ph41.split.us.preheader:                      ; preds = %.lr.ph41
  %i.aa = add i64 %.idx, %i.l
  %i.ab = shl nsw i64 %i.o, 2                     ; 4 uses
  %i.ac = add i64 %i.aa, %i.ab
  %i.ad = add i64 %i.ab, %i.l
  %i.ae = add i64 %i.ad, 4
  %umax = tail call i64 @llvm.umax.i64(i64 %i.ac, i64 %i.ae)
  %i.af = xor i64 %i.l, -1
  %i.ag = add i64 %umax, %i.af
  %i.ah = sub i64 %i.ag, %i.ab
  %i.ai = and i64 %i.ah, -4                       ; 2 uses
  %i.aj = getelementptr i8, ptr %i.k, i64 %i.ai
  %i.ak = getelementptr i8, ptr %i.aj, i64 %i.ab
  %scevgep = getelementptr i8, ptr %i.ak, i64 4
  %i.al = getelementptr i8, ptr %i.k, i64 %i.ai
  %scevgep74 = getelementptr i8, ptr %i.al, i64 4
  %1 = ptrtoint ptr %i.k to i64                   ; 3 uses
  %i.am = shl nsw i64 %i.o, 2                     ; 2 uses
  %2 = add i64 %.idx, %1
  %i.an = add i64 %2, %i.am
  %i.ao = add i64 %i.am, %1
  %i.ap = add i64 %i.ao, 4
  %umax76 = tail call i64 @llvm.umax.i64(i64 %i.an, i64 %i.ap)
  %3 = shl nsw i64 %i.o, 2
  %i.aq = add i64 %3, %1
  %4 = xor i64 %i.aq, -1
  %5 = add i64 %umax76, %4                        ; 2 uses
  %i.ar = lshr i64 %5, 2
  %i.as = add nuw nsw i64 %i.ar, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %5, 28
  %n.vec = and i64 %i.as, 9223372036854775800     ; 3 uses
  %i.at = shl i64 %n.vec, 2                       ; 2 uses
  %i.au = getelementptr i8, ptr %i.p, i64 %i.at
  %cmp.n = icmp eq i64 %i.as, %n.vec
  br label %.lr.ph41.split.us

.lr.ph41.split.us:                                ; preds = %.lr.ph41.split.us.preheader, %..loopexit36_crit_edge.us
  %i.av = phi i16 [ %i.bf, %..loopexit36_crit_edge.us ], [ %i.g, %.lr.ph41.split.us.preheader ]
  %i.aw = phi i32 [ %i.ca, %..loopexit36_crit_edge.us ], [ %i.x, %.lr.ph41.split.us.preheader ] ; 3 uses
  %i.ax = phi ptr [ %i.by, %..loopexit36_crit_edge.us ], [ %i.y, %.lr.ph41.split.us.preheader ] ; 2 uses
  %i.ay = zext nneg i32 %i.aw to i64
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %i.ay ; 2 uses
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !22 ; 2 uses
  %i.bb = icmp eq i16 %i.ba, 0
  br i1 %i.bb, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph41.split.us
  tail call void @traverse(i32 noundef %i.aw)
  %.pre56 = load i16, ptr %i.j, align 2, !tbaa !22
  %.pre57 = load i16, ptr %i.az, align 2, !tbaa !22
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph41.split.us
  %i.bc = phi i16 [ %.pre57, %bb.b ], [ %i.ba, %.lr.ph41.split.us ] ; 3 uses
  %i.bd = phi i16 [ %.pre56, %bb.b ], [ %i.av, %.lr.ph41.split.us ] ; 2 uses
  %i.be = icmp sgt i16 %i.bd, %i.bc
  br i1 %i.be, label %bb.d, label %.lr.ph.us

bb.d:                                             ; preds = %bb.c
  store i16 %i.bc, ptr %i.j, align 2, !tbaa !22
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %bb.d, %bb.c
  %i.bf = phi i16 [ %i.bc, %bb.d ], [ %i.bd, %bb.c ] ; 2 uses
  %i.bg = load i32, ptr @tokensetsize, align 4, !tbaa !4
  %i.bh = mul i32 %i.bg, %i.aw
  %i.bi = sext i32 %i.bh to i64                   ; 2 uses
  %i.bj = getelementptr [4 x i8], ptr %i.k, i64 %i.bi ; 5 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.us
  %i.bk = shl nsw i64 %i.bi, 2
  %scevgep75 = getelementptr i8, ptr %scevgep74, i64 %i.bk
  %bound0 = icmp ult ptr %i.p, %scevgep75
  %bound1 = icmp ult ptr %i.bj, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.bl = getelementptr i8, ptr %i.bj, i64 %i.at
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bm = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.bm ; 3 uses
  %next.gep77 = getelementptr i8, ptr %i.bj, i64 %i.bm ; 2 uses
  %i.bn = getelementptr i8, ptr %next.gep77, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep77, align 4, !tbaa !4, !alias.scope !111
  %wide.load78.a = load <4 x i32>, ptr %i.bn, align 4, !tbaa !4, !alias.scope !111
  %i.bo = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load79.a = load <4 x i32>, ptr %next.gep, align 4, !tbaa !4, !alias.scope !114, !noalias !111
  %wide.load80 = load <4 x i32>, ptr %i.bo, align 4, !tbaa !4, !alias.scope !114, !noalias !111
  %i.bp = or <4 x i32> %wide.load79.a, %wide.load
  %i.bq = or <4 x i32> %wide.load80, %wide.load78.a
  store <4 x i32> %i.bp, ptr %next.gep, align 4, !tbaa !4, !alias.scope !114, !noalias !111
  store <4 x i32> %i.bq, ptr %i.bo, align 4, !tbaa !4, !alias.scope !114, !noalias !111
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.br = icmp eq i64 %index.next, %n.vec
  br i1 %i.br, label %middle.block, label %vector.body, !llvm.loop !116

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit36_crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.us, %middle.block
  %.040.us.ph = phi ptr [ %i.p, %vector.memcheck ], [ %i.p, %.lr.ph.us ], [ %i.au, %middle.block ]
  %.02939.us.ph = phi ptr [ %i.bj, %vector.memcheck ], [ %i.bj, %.lr.ph.us ], [ %i.bl, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.040.us = phi ptr [ %i.bu, %scalar.ph ], [ %.040.us.ph, %scalar.ph.preheader ] ; 3 uses
  %.02939.us = phi ptr [ %i.bs, %scalar.ph ], [ %.02939.us.ph, %scalar.ph.preheader ] ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.02939.us, i64 4
  %i.bt = load i32, ptr %.02939.us, align 4, !tbaa !4
  %i.bu = getelementptr inbounds nuw i8, ptr %.040.us, i64 4 ; 2 uses
  %i.bv = load i32, ptr %.040.us, align 4, !tbaa !4
  %i.bw = or i32 %i.bv, %i.bt
  store i32 %i.bw, ptr %.040.us, align 4, !tbaa !4
  %i.bx = icmp ult ptr %i.bu, %i.r
  br i1 %i.bx, label %scalar.ph, label %..loopexit36_crit_edge.us, !llvm.loop !117

..loopexit36_crit_edge.us:                        ; preds = %scalar.ph, %middle.block
  %i.by = getelementptr inbounds nuw i8, ptr %i.ax, i64 2
  %i.bz = load i16, ptr %i.ax, align 2, !tbaa !22 ; 2 uses
  %i.ca = zext nneg i16 %i.bz to i32
  %i.cb = icmp sgt i16 %i.bz, -1
  br i1 %i.cb, label %.lr.ph41.split.us, label %.loopexit38, !llvm.loop !118

.lr.ph41.split:                                   ; preds = %.lr.ph41, %.loopexit36
  %i.cc = phi i16 [ %i.cm, %.loopexit36 ], [ %i.g, %.lr.ph41 ]
  %i.cd = phi i32 [ %i.cp, %.loopexit36 ], [ %i.x, %.lr.ph41 ] ; 2 uses
  %i.ce = phi ptr [ %i.cn, %.loopexit36 ], [ %i.y, %.lr.ph41 ] ; 2 uses
  %i.cf = zext nneg i32 %i.cd to i64
  %i.cg = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %i.cf ; 2 uses
  %i.ch = load i16, ptr %i.cg, align 2, !tbaa !22 ; 2 uses
  %i.ci = icmp eq i16 %i.ch, 0
  br i1 %i.ci, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph41.split
  tail call void @traverse(i32 noundef %i.cd)
  %.pre = load i16, ptr %i.j, align 2, !tbaa !22
  %.pre55 = load i16, ptr %i.cg, align 2, !tbaa !22
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph41.split
  %i.cj = phi i16 [ %.pre55, %bb.e ], [ %i.ch, %.lr.ph41.split ] ; 3 uses
  %i.ck = phi i16 [ %.pre, %bb.e ], [ %i.cc, %.lr.ph41.split ] ; 2 uses
  %i.cl = icmp sgt i16 %i.ck, %i.cj
  br i1 %i.cl, label %bb.g, label %.loopexit36

bb.g:                                             ; preds = %bb.f
  store i16 %i.cj, ptr %i.j, align 2, !tbaa !22
  br label %.loopexit36

.loopexit36:                                      ; preds = %bb.g, %bb.f
  %i.cm = phi i16 [ %i.cj, %bb.g ], [ %i.ck, %bb.f ] ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ce, i64 2
  %i.co = load i16, ptr %i.ce, align 2, !tbaa !22 ; 2 uses
  %i.cp = zext nneg i16 %i.co to i32
  %i.cq = icmp sgt i16 %i.co, -1
  br i1 %i.cq, label %.lr.ph41.split, label %.loopexit38, !llvm.loop !118

.loopexit38:                                      ; preds = %.loopexit36, %..loopexit36_crit_edge.us, %.preheader37, %bb.a
  %i.cr = phi i16 [ %i.bf, %..loopexit36_crit_edge.us ], [ %i.g, %bb.a ], [ %i.g, %.preheader37 ], [ %i.cm, %.loopexit36 ]
  %i.cs = sext i16 %i.cr to i32
  %i.ct = icmp eq i32 %i.d, %i.cs
  br i1 %i.ct, label %.preheader, label %bb.h

.preheader:                                       ; preds = %.loopexit38
  %i.cu = load i32, ptr @infinity, align 4, !tbaa !4
  %i.cv = trunc i32 %i.cu to i16                  ; 3 uses
  %top.promoted = load i32, ptr @top, align 4, !tbaa !4 ; 2 uses
  %i.cw = add i32 %top.promoted, -1               ; 2 uses
  %i.cx = sext i32 %top.promoted to i64
  %i.cy = getelementptr inbounds [2 x i8], ptr %i.b, i64 %i.cx
  %i.cz = load i16, ptr %i.cy, align 2, !tbaa !22 ; 2 uses
  %i.da = sext i16 %i.cz to i32                   ; 2 uses
  %i.db = sext i16 %i.cz to i64
  %i.dc = getelementptr inbounds [2 x i8], ptr %i.h, i64 %i.db
  store i16 %i.cv, ptr %i.dc, align 2, !tbaa !22
  %i.dd = icmp eq i32 %0, %i.da
  br i1 %i.dd, label %.loopexit35, label %.lr.ph44

.lr.ph44:                                         ; preds = %.preheader
  %i.de = icmp sgt i32 %.fr46, 0
  %i.df = sext i32 %i.cw to i64                   ; 2 uses
  br i1 %i.de, label %.lr.ph.us45.preheader, label %.loopexit

.lr.ph.us45.preheader:                            ; preds = %.lr.ph44
  %6 = ptrtoint ptr %i.k to i64                   ; 3 uses
  %i.dg = shl nsw i64 %i.o, 2                     ; 2 uses
  %7 = add i64 %.idx, %6
  %i.dh = add i64 %7, %i.dg
  %i.di = add i64 %i.dg, %6
  %i.dj = add i64 %i.di, 4
  %umax83 = tail call i64 @llvm.umax.i64(i64 %i.dh, i64 %i.dj)
  %8 = shl nsw i64 %i.o, 2
  %i.dk = add i64 %8, %6
  %9 = xor i64 %i.dk, -1
  %10 = add i64 %umax83, %9                       ; 2 uses
  %i.dl = lshr i64 %10, 2
  %i.dm = add nuw nsw i64 %i.dl, 1                ; 2 uses
  %min.iters.check85 = icmp ult i64 %10, 28
  %n.vec88 = and i64 %i.dm, 9223372036854775800   ; 3 uses
  %i.dn = shl i64 %n.vec88, 2                     ; 2 uses
  %i.do = getelementptr i8, ptr %i.p, i64 %i.dn
  %cmp.n97 = icmp eq i64 %i.dm, %n.vec88
  br label %.lr.ph.us45

.lr.ph.us45:                                      ; preds = %.lr.ph.us45.preheader, %..loopexit_crit_edge.us
  %indvars.iv52 = phi i64 [ %indvars.iv.next53, %..loopexit_crit_edge.us ], [ %i.df, %.lr.ph.us45.preheader ] ; 2 uses
  %i.dp = phi i32 [ %i.ei, %..loopexit_crit_edge.us ], [ %i.da, %.lr.ph.us45.preheader ]
  %i.dq = load i32, ptr @tokensetsize, align 4, !tbaa !4
  %i.dr = mul i32 %i.dq, %i.dp
  %i.ds = sext i32 %i.dr to i64                   ; 2 uses
  %i.dt = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.ds ; 4 uses
  br i1 %min.iters.check85, label %scalar.ph84.preheader, label %vector.memcheck82

vector.memcheck82:                                ; preds = %.lr.ph.us45
  %i.du = sub nsw i64 %i.ds, %i.o
  %i.dv = shl nsw i64 %i.du, 2
  %i.dw = add nsw i64 %i.dv, -1
  %diff.check = icmp ult i64 %i.dw, 31
  br i1 %diff.check, label %scalar.ph84.preheader, label %vector.ph86

vector.ph86:                                      ; preds = %vector.memcheck82
  %i.dx = getelementptr i8, ptr %i.dt, i64 %i.dn
  br label %vector.body89

vector.body89:                                    ; preds = %vector.body89, %vector.ph86
  %index90 = phi i64 [ 0, %vector.ph86 ], [ %index.next95, %vector.body89 ] ; 2 uses
  %i.dy = shl i64 %index90, 2                     ; 2 uses
  %next.gep91 = getelementptr i8, ptr %i.p, i64 %i.dy ; 2 uses
  %next.gep92 = getelementptr i8, ptr %i.dt, i64 %i.dy ; 2 uses
  %i.dz = getelementptr i8, ptr %next.gep91, i64 16
  %wide.load93 = load <4 x i32>, ptr %next.gep91, align 4, !tbaa !4
  %wide.load94 = load <4 x i32>, ptr %i.dz, align 4, !tbaa !4
  %i.ea = getelementptr i8, ptr %next.gep92, i64 16
  store <4 x i32> %wide.load93, ptr %next.gep92, align 4, !tbaa !4
  store <4 x i32> %wide.load94, ptr %i.ea, align 4, !tbaa !4
  %index.next95 = add nuw i64 %index90, 8         ; 2 uses
  %i.eb = icmp eq i64 %index.next95, %n.vec88
  br i1 %i.eb, label %middle.block96, label %vector.body89, !llvm.loop !119

middle.block96:                                   ; preds = %vector.body89
  br i1 %cmp.n97, label %..loopexit_crit_edge.us, label %scalar.ph84.preheader

scalar.ph84.preheader:                            ; preds = %vector.memcheck82, %.lr.ph.us45, %middle.block96
  %.143.us.ph = phi ptr [ %i.p, %vector.memcheck82 ], [ %i.p, %.lr.ph.us45 ], [ %i.do, %middle.block96 ]
  %.13042.us.ph = phi ptr [ %i.dt, %vector.memcheck82 ], [ %i.dt, %.lr.ph.us45 ], [ %i.dx, %middle.block96 ]
  br label %scalar.ph84

scalar.ph84:                                      ; preds = %scalar.ph84.preheader, %scalar.ph84
  %.143.us = phi ptr [ %i.ec, %scalar.ph84 ], [ %.143.us.ph, %scalar.ph84.preheader ] ; 2 uses
  %.13042.us = phi ptr [ %i.ee, %scalar.ph84 ], [ %.13042.us.ph, %scalar.ph84.preheader ] ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.143.us, i64 4 ; 2 uses
  %i.ed = load i32, ptr %.143.us, align 4, !tbaa !4
  %i.ee = getelementptr inbounds nuw i8, ptr %.13042.us, i64 4
  store i32 %i.ed, ptr %.13042.us, align 4, !tbaa !4
  %i.ef = icmp ult ptr %i.ec, %i.r
  br i1 %i.ef, label %scalar.ph84, label %..loopexit_crit_edge.us, !llvm.loop !120

..loopexit_crit_edge.us:                          ; preds = %scalar.ph84, %middle.block96
  %indvars.iv.next53 = add nsw i64 %indvars.iv52, -1 ; 2 uses
  %i.eg = getelementptr inbounds [2 x i8], ptr %i.b, i64 %indvars.iv52
  %i.eh = load i16, ptr %i.eg, align 2, !tbaa !22 ; 2 uses
  %i.ei = sext i16 %i.eh to i32                   ; 2 uses
  %i.ej = sext i16 %i.eh to i64
  %i.ek = getelementptr inbounds [2 x i8], ptr %i.h, i64 %i.ej
  store i16 %i.cv, ptr %i.ek, align 2, !tbaa !22
  %i.el = icmp eq i32 %0, %i.ei
  br i1 %i.el, label %.loopexit35.loopexit, label %.lr.ph.us45

.loopexit:                                        ; preds = %.lr.ph44, %.loopexit
  %indvars.iv = phi i64 [ %indvars.iv.next, %.loopexit ], [ %i.df, %.lr.ph44 ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.em = getelementptr inbounds [2 x i8], ptr %i.b, i64 %indvars.iv
  %i.en = load i16, ptr %i.em, align 2, !tbaa !22 ; 2 uses
  %i.eo = sext i16 %i.en to i32
  %i.ep = sext i16 %i.en to i64
  %i.eq = getelementptr inbounds [2 x i8], ptr %i.h, i64 %i.ep
  store i16 %i.cv, ptr %i.eq, align 2, !tbaa !22
  %i.er = icmp eq i32 %0, %i.eo
  br i1 %i.er, label %.loopexit35.loopexit47, label %.loopexit

.loopexit35.loopexit:                             ; preds = %..loopexit_crit_edge.us
  %i.es = trunc nsw i64 %indvars.iv.next53 to i32
  br label %.loopexit35

.loopexit35.loopexit47:                           ; preds = %.loopexit
  %i.et = trunc nsw i64 %indvars.iv.next to i32
  br label %.loopexit35

.loopexit35:                                      ; preds = %.loopexit35.loopexit47, %.loopexit35.loopexit, %.preheader
  %.lcssa = phi i32 [ %i.cw, %.preheader ], [ %i.es, %.loopexit35.loopexit ], [ %i.et, %.loopexit35.loopexit47 ]
  store i32 %.lcssa, ptr @top, align 4, !tbaa !4
  br label %bb.h

bb.h:                                             ; preds = %.loopexit35, %.loopexit38
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(readwrite, argmem: read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"p2 _ZTS4core", !10, i64 0}
!10 = !{!"any p2 pointer", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"p1 _ZTS4core", !11, i64 0}
!14 = !{!15, !16, i64 16}
!15 = !{!"core", !13, i64 0, !13, i64 8, !16, i64 16, !16, i64 18, !16, i64 20, !6, i64 22}
!16 = !{!"short", !6, i64 0}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.mustprogress"}
!19 = !{!20, !20, i64 0}
!20 = !{!"p1 short", !11, i64 0}
!21 = !{!15, !16, i64 18}
!22 = !{!16, !16, i64 0}
!23 = distinct !{!23, !18}
!24 = !{!25, !25, i64 0}
!25 = !{!"p2 _ZTS6shifts", !10, i64 0}
!26 = !{!27, !27, i64 0}
!27 = !{!"p1 _ZTS6shifts", !11, i64 0}
!28 = !{!29, !16, i64 8}
!29 = !{!"shifts", !27, i64 0, !16, i64 8, !16, i64 10, !6, i64 12}
!30 = distinct !{!30, !18}
!31 = !{!32, !32, i64 0}
!32 = !{!"p2 _ZTS10reductions", !10, i64 0}
!33 = !{!34, !34, i64 0}
!34 = !{!"p1 _ZTS10reductions", !11, i64 0}
!35 = !{!36, !16, i64 8}
!36 = !{!"reductions", !34, i64 0, !16, i64 8, !16, i64 10, !6, i64 12}
!37 = distinct !{!37, !18}
!38 = distinct !{!38, !18}
!39 = !{!40, !40, i64 0}
!40 = !{!"p1 omnipotent char", !11, i64 0}
!41 = !{!36, !16, i64 10}
!42 = !{!6, !6, i64 0}
!43 = !{!29, !16, i64 10}
!44 = distinct !{!44, !18}
!45 = distinct !{!45, !18}
!46 = !{!47, !47, i64 0}
!47 = !{!"p1 int", !11, i64 0}
!48 = !{!49, !49, i64 0}
!49 = !{!"p2 _ZTS6shorts", !10, i64 0}
!50 = distinct !{!50, !18}
!51 = distinct !{!51, !18}
!52 = distinct !{!52, !18}
!53 = distinct !{!53, !18}
!54 = distinct !{!54, !55}
!55 = !{!"llvm.loop.unroll.disable"}
!56 = distinct !{!56, !18, !57, !58}
!57 = !{!"llvm.loop.isvectorized", i32 1}
!58 = !{!"llvm.loop.unroll.runtime.disable"}
!59 = !{!"branch_weights", i32 4, i32 12}
!60 = distinct !{!60, !18, !57, !58}
!61 = distinct !{!61, !55}
!62 = distinct !{!62, !18}
!63 = distinct !{!63, !18, !57}
!64 = distinct !{!64, !18}
!65 = distinct !{!65, !18}
!66 = distinct !{!66, !18}
!67 = distinct !{!67, !18}
!68 = distinct !{!68, !18}
!69 = distinct !{!69, !18, !57, !58}
!70 = distinct !{!70, !18, !57, !58}
!71 = distinct !{!71, !55}
!72 = distinct !{!72, !18, !57}
!73 = distinct !{!73, !18}
end_hunk_1
