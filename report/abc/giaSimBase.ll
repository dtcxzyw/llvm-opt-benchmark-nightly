Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaSimBase?download=true
inline.NumInlined: 1796
inline.NumDeleted: 187
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 107
loop-unroll.NumUnrolled: 129
begin_hunk_0_@Gia_SimQualityPatternsMax:bb.a
bb.q:                                             ; preds = %bb.p
  tail call void @free(ptr noundef nonnull %i.eg) #35
  br label %Vec_IntFree.exit66

Vec_IntFree.exit66:                               ; preds = %bb.p, %bb.q
  tail call void @free(ptr noundef nonnull %i.bo) #35
  %.val48 = load ptr, ptr %i.bd, align 8, !tbaa !61 ; 2 uses
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %.val48, i64 %indvars.iv ; 2 uses
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !62
  %i.ej = xor i32 %i.ei, 1
  store i32 %i.ej, ptr %i.eh, align 4, !tbaa !62
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val47 = load ptr, ptr %i.ba, align 8, !tbaa !59
  %i.ek = getelementptr i8, ptr %.val47, i64 4
  %.val47.val = load i32, ptr %i.ek, align 4, !tbaa !60
  %i.el = sext i32 %.val47.val to i64
  %i.em = icmp slt i64 %indvars.iv.next, %i.el
  br i1 %i.em, label %bb.e, label %._crit_edge, !llvm.loop !491

._crit_edge:                                      ; preds = %Vec_IntFree.exit66
  %.not43 = icmp eq i32 %.pr79, 0
  br i1 %.not43, label %._crit_edge.thread, label %bb.r

bb.r:                                             ; preds = %._crit_edge
  %i.en = tail call i32 @rand() #35
  %i.eo = srem i32 %i.en, %.pr79
  %i.ep = sext i32 %i.eo to i64
  %i.eq = getelementptr inbounds [4 x i8], ptr %i.eb, i64 %i.ep
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !62
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.d, %._crit_edge, %bb.r
  %.0.lcssa97 = phi double [ %.1, %bb.r ], [ %.1, %._crit_edge ], [ %i.ay, %bb.d ] ; 2 uses
  %.val4596 = phi i32 [ %.pr79, %bb.r ], [ 0, %._crit_edge ], [ 0, %bb.d ]
  %i.es = phi ptr [ %i.eb, %bb.r ], [ %i.eb, %._crit_edge ], [ %i.a, %bb.d ] ; 2 uses
  %i.et = phi i32 [ %i.er, %bb.r ], [ -1, %._crit_edge ], [ -1, %bb.d ] ; 2 uses
  br i1 %.not, label %bb.t, label %bb.s

bb.s:                                             ; preds = %._crit_edge.thread
  %i.eu = fdiv double %.0.lcssa97, %i.ay
  %i.ev = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.40, double noundef %.0.lcssa97, double noundef %i.eu, i32 noundef %.val4596) ; 0 uses
  %i.ew = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.41, i32 noundef %i.et) ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %._crit_edge.thread
  %.not.i67 = icmp eq ptr %i.es, null
  br i1 %.not.i67, label %Vec_IntFree.exit68, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void @free(ptr noundef nonnull %i.es) #35
  br label %Vec_IntFree.exit68

Vec_IntFree.exit68:                               ; preds = %bb.t, %bb.u
  ret i32 %i.et
}

; Function Attrs: nounwind
declare i32 @rand() local_unnamed_addr #20

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define noalias noundef ptr @Gia_ManPatCollectOne(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 64         ; 2 uses
  %.val10 = load ptr, ptr %i.a, align 8, !tbaa !59
  %i.b = getelementptr i8, ptr %.val10, i64 4
  %.val10.val = load i32, ptr %i.b, align 4, !tbaa !60 ; 3 uses
  %i.c = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #34 ; 5 uses
  %i.d = add i32 %.val10.val, -1
  %or.cond.i = icmp ult i32 %i.d, 15
  %spec.store.select.i = select i1 %or.cond.i, i32 16, i32 %.val10.val ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  store i32 0, ptr %i.e, align 4, !tbaa !60
  store i32 %spec.store.select.i, ptr %i.c, align 8, !tbaa !78
  %.not.i = icmp eq i32 %spec.store.select.i, 0
  br i1 %.not.i, label %Vec_IntAlloc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = sext i32 %spec.store.select.i to i64
  %i.g = shl nsw i64 %i.f, 2
  %i.h = tail call noalias ptr @malloc(i64 noundef %i.g) #34
  br label %Vec_IntAlloc.exit

Vec_IntAlloc.exit:                                ; preds = %bb.a, %bb.b
  %.promoted17 = phi ptr [ %i.h, %bb.b ], [ null, %bb.a ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %.promoted17, ptr %i.i, align 8, !tbaa !61
  %i.j = icmp sgt i32 %.val10.val, 0
  br i1 %i.j, label %.lr.ph, label %bb.l

.lr.ph:                                           ; preds = %Vec_IntAlloc.exit
  %i.k = getelementptr i8, ptr %1, i64 8
  %i.l = ashr i32 %2, 6
  %i.m = sext i32 %i.l to i64
  %i.n = and i32 %2, 63
  %i.o = zext nneg i32 %i.n to i64
  %i.p = sext i32 %3 to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %Vec_IntPush.exit
  %indvars.iv20 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next21, %Vec_IntPush.exit ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %Vec_IntPush.exit ] ; 7 uses
  %storemerge18 = phi ptr [ %.promoted17, %.lr.ph ], [ %storemerge19, %Vec_IntPush.exit ] ; 6 uses
  %spec.select.sink.i16 = phi i32 [ %spec.store.select.i, %.lr.ph ], [ %spec.select.sink.i15, %Vec_IntPush.exit ] ; 3 uses
  %i.q = mul nsw i64 %indvars.iv20, %i.p
  %.val = load ptr, ptr %i.k, align 8, !tbaa !65
  %i.r = getelementptr inbounds [8 x i8], ptr %.val, i64 %i.q
  %i.s = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.m
  %i.t = load i64, ptr %i.s, align 8, !tbaa !72
  %i.u = lshr i64 %i.t, %i.o
  %i.v = trunc i64 %i.u to i32
  %i.w = and i32 %i.v, 1
  %i.x = trunc nsw i64 %indvars.iv to i32
  %i.y = icmp eq i32 %spec.select.sink.i16, %i.x
  br i1 %i.y, label %bb.d, label %Vec_IntPush.exit

bb.d:                                             ; preds = %bb.c
  %i.z = icmp samesign ult i64 %indvars.iv, 16
  br i1 %i.z, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %.not9.i.i = icmp eq ptr %storemerge18, null
  br i1 %.not9.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge18, i64 noundef 64) #37
  br label %Vec_IntPush.exit

bb.g:                                             ; preds = %bb.e
  %i.ab = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #34
  br label %Vec_IntPush.exit

bb.h:                                             ; preds = %bb.d
  %i.ac = icmp samesign ult i64 %indvars.iv, 1073741823
  %indvars.iv.tr = trunc nsw i64 %indvars.iv to i32
  %i.ad = shl nsw i32 %indvars.iv.tr, 1
  %spec.select.i = select i1 %i.ac, i32 %i.ad, i32 2147483647 ; 4 uses
  %i.ae = sext i32 %spec.select.i to i64
  %.not.i9.i = icmp samesign ult i64 %indvars.iv, %i.ae
  br i1 %.not.i9.i, label %bb.i, label %Vec_IntPush.exit

bb.i:                                             ; preds = %bb.h
  %.not9.i10.i = icmp eq ptr %storemerge18, null
  %i.af = zext nneg i32 %spec.select.i to i64
  %i.ag = shl nuw nsw i64 %i.af, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = tail call ptr @realloc(ptr noundef nonnull %storemerge18, i64 noundef %i.ag) #37
  br label %Vec_IntPush.exit

bb.k:                                             ; preds = %bb.i
  %i.ai = tail call noalias ptr @malloc(i64 noundef %i.ag) #34
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.g, %bb.f, %bb.k, %bb.j, %bb.c, %bb.h
  %storemerge19 = phi ptr [ %storemerge18, %bb.c ], [ %storemerge18, %bb.h ], [ %i.ab, %bb.g ], [ %i.aa, %bb.f ], [ %i.ah, %bb.j ], [ %i.ai, %bb.k ] ; 3 uses
  %spec.select.sink.i15 = phi i32 [ %spec.select.sink.i16, %bb.c ], [ %spec.select.sink.i16, %bb.h ], [ 16, %bb.g ], [ 16, %bb.f ], [ %spec.select.i, %bb.j ], [ %spec.select.i, %bb.k ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %storemerge19, i64 %indvars.iv
  store i32 %i.w, ptr %i.aj, align 4, !tbaa !62
  %indvars.iv.next21 = add nuw nsw i64 %indvars.iv20, 1 ; 2 uses
  %.val9 = load ptr, ptr %i.a, align 8, !tbaa !59
  %i.ak = getelementptr i8, ptr %.val9, i64 4
  %.val9.val = load i32, ptr %i.ak, align 4, !tbaa !60
  %i.al = sext i32 %.val9.val to i64
  %i.am = icmp slt i64 %indvars.iv.next21, %i.al
  br i1 %i.am, label %bb.c, label %._crit_edge, !llvm.loop !492

._crit_edge:                                      ; preds = %Vec_IntPush.exit
  %i.an = trunc nsw i64 %indvars.iv.next to i32
  store i32 %i.an, ptr %i.e, align 4, !tbaa !60
  store i32 %spec.select.sink.i15, ptr %i.c, align 8
  store ptr %storemerge19, ptr %i.i, align 8
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge, %Vec_IntAlloc.exit
  ret ptr %i.c
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @Gia_ManPatUpdateOne(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %4, i64 4
  %.val = load i32, ptr %i.a, align 4, !tbaa !60  ; 3 uses
  %i.b = icmp sgt i32 %.val, 0
  br i1 %i.b, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr i8, ptr %4, i64 8
  %.val12 = load ptr, ptr %i.c, align 8, !tbaa !61 ; 6 uses
  %i.d = getelementptr i8, ptr %1, i64 8
  %.val13 = load ptr, ptr %i.d, align 8, !tbaa !65 ; 2 uses
  %i.e = ashr i32 %2, 6
  %i.f = sext i32 %i.e to i64                     ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %.val13, i64 %i.f ; 8 uses
  %i.g = and i32 %2, 63
  %i.h = zext nneg i32 %i.g to i64                ; 5 uses
  %i.i = shl nuw i64 1, %i.h                      ; 7 uses
  %i.j = sext i32 %3 to i64                       ; 3 uses
  %wide.trip.count = zext nneg i32 %.val to i64   ; 7 uses
  %min.iters.check = icmp ugt i32 %.val, 17
  %ident.check.not = icmp eq i32 %3, 1
  %or.cond = and i1 %min.iters.check, %ident.check.not
  br i1 %or.cond, label %vector.memcheck, label %scalar.ph.preheader

vector.memcheck:                                  ; preds = %.lr.ph
  %i.k = add nsw i64 %i.f, %wide.trip.count
  %i.l = shl nsw i64 %i.k, 3
  %scevgep = getelementptr i8, ptr %.val13, i64 %i.l
  %i.m = shl nuw nsw i64 %wide.trip.count, 2
  %scevgep16 = getelementptr i8, ptr %.val12, i64 %i.m
  %bound0 = icmp ult ptr %invariant.gep, %scevgep16
  %bound1 = icmp ult ptr %.val12, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.h, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue25, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue25 ] ; 6 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %.val12, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %wide.load = load <2 x i32>, ptr %i.n, align 4, !tbaa !62, !alias.scope !498
  %wide.load17 = load <2 x i32>, ptr %i.o, align 4, !tbaa !62, !alias.scope !498
  %i.p = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 3 uses
  %i.q = getelementptr i8, ptr %i.p, i64 16
  %wide.load18 = load <2 x i64>, ptr %i.p, align 8, !tbaa !72, !alias.scope !499, !noalias !498 ; 3 uses
  %wide.load19 = load <2 x i64>, ptr %i.q, align 8, !tbaa !72, !alias.scope !499, !noalias !498 ; 3 uses
  %i.r = lshr <2 x i64> %wide.load18, %broadcast.splat
  %i.s = lshr <2 x i64> %wide.load19, %broadcast.splat
  %i.t = trunc <2 x i64> %i.r to <2 x i32>
  %i.u = and <2 x i32> %i.t, splat (i32 1)
  %i.v = trunc <2 x i64> %i.s to <2 x i32>
  %i.w = and <2 x i32> %i.v, splat (i32 1)
  %i.x = icmp ne <2 x i32> %i.u, %wide.load       ; 2 uses
  %i.y = icmp ne <2 x i32> %i.w, %wide.load17     ; 2 uses
  %i.z = extractelement <2 x i1> %i.x, i64 0
  br i1 %i.z, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %i.aa = extractelement <2 x i64> %wide.load18, i64 0
  %i.ab = xor i64 %i.aa, %i.i
  store i64 %i.ab, ptr %i.p, align 8, !tbaa !72, !alias.scope !499, !noalias !498
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.ac = extractelement <2 x i1> %i.x, i64 1
  br i1 %i.ac, label %pred.store.if20, label %pred.store.continue21

pred.store.if20:                                  ; preds = %pred.store.continue
  %i.ad = getelementptr [8 x i8], ptr %invariant.gep, i64 %index
  %i.ae = getelementptr i8, ptr %i.ad, i64 8
  %i.af = extractelement <2 x i64> %wide.load18, i64 1
  %i.ag = xor i64 %i.af, %i.i
  store i64 %i.ag, ptr %i.ae, align 8, !tbaa !72, !alias.scope !499, !noalias !498
  br label %pred.store.continue21

pred.store.continue21:                            ; preds = %pred.store.if20, %pred.store.continue
  %i.ah = extractelement <2 x i1> %i.y, i64 0
  br i1 %i.ah, label %pred.store.if22, label %pred.store.continue23

pred.store.if22:                                  ; preds = %pred.store.continue21
  %i.ai = getelementptr [8 x i8], ptr %invariant.gep, i64 %index
  %i.aj = getelementptr i8, ptr %i.ai, i64 16
  %i.ak = extractelement <2 x i64> %wide.load19, i64 0
  %i.al = xor i64 %i.ak, %i.i
  store i64 %i.al, ptr %i.aj, align 8, !tbaa !72, !alias.scope !499, !noalias !498
  br label %pred.store.continue23

pred.store.continue23:                            ; preds = %pred.store.if22, %pred.store.continue21
  %i.am = extractelement <2 x i1> %i.y, i64 1
  br i1 %i.am, label %pred.store.if24, label %pred.store.continue25

pred.store.if24:                                  ; preds = %pred.store.continue23
  %i.an = getelementptr [8 x i8], ptr %invariant.gep, i64 %index
  %i.ao = getelementptr i8, ptr %i.an, i64 24
  %i.ap = extractelement <2 x i64> %wide.load19, i64 1
  %i.aq = xor i64 %i.ap, %i.i
  store i64 %i.aq, ptr %i.ao, align 8, !tbaa !72, !alias.scope !499, !noalias !498
  br label %pred.store.continue25

pred.store.continue25:                            ; preds = %pred.store.if24, %pred.store.continue23
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !496

middle.block:                                     ; preds = %pred.store.continue25
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.critedge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 5 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %.val12, i64 %indvars.iv.ph
  %i.at = load i32, ptr %i.as, align 4, !tbaa !62
  %i.au = mul nsw i64 %indvars.iv.ph, %i.j
  %gep.prol = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.au ; 2 uses
  %i.av = load i64, ptr %gep.prol, align 8, !tbaa !72 ; 2 uses
  %i.aw = lshr i64 %i.av, %i.h
  %i.ax = trunc i64 %i.aw to i32
  %i.ay = and i32 %i.ax, 1
  %.not.prol = icmp eq i32 %i.ay, %i.at
  br i1 %.not.prol, label %scalar.ph.prol.loopexit.unr-lcssa, label %bb.b

bb.b:                                             ; preds = %scalar.ph.prol
  %i.az = xor i64 %i.av, %i.i
  store i64 %i.az, ptr %gep.prol, align 8, !tbaa !72
  br label %scalar.ph.prol.loopexit.unr-lcssa

scalar.ph.prol.loopexit.unr-lcssa:                ; preds = %bb.b, %scalar.ph.prol
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol.loopexit.unr-lcssa, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol.loopexit.unr-lcssa ]
  %i.ba = add nsw i64 %wide.trip.count, -1
  %i.bb = icmp eq i64 %indvars.iv.ph, %i.ba
  br i1 %i.bb, label %.critedge, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %bb.e
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %bb.e ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %.val12, i64 %indvars.iv
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !62
  %i.be = mul nsw i64 %indvars.iv, %i.j
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.be ; 2 uses
  %i.bf = load i64, ptr %gep, align 8, !tbaa !72  ; 2 uses
  %i.bg = lshr i64 %i.bf, %i.h
  %i.bh = trunc i64 %i.bg to i32
  %i.bi = and i32 %i.bh, 1
  %.not = icmp eq i32 %i.bi, %i.bd
  br i1 %.not, label %scalar.ph.1, label %bb.c

bb.c:                                             ; preds = %scalar.ph
  %i.bj = xor i64 %i.bf, %i.i
  store i64 %i.bj, ptr %gep, align 8, !tbaa !72
  br label %scalar.ph.1

scalar.ph.1:                                      ; preds = %bb.c, %scalar.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %.val12, i64 %indvars.iv.next
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !62
  %i.bm = mul nsw i64 %indvars.iv.next, %i.j
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.bm ; 2 uses
  %i.bn = load i64, ptr %gep.1, align 8, !tbaa !72 ; 2 uses
  %i.bo = lshr i64 %i.bn, %i.h
  %i.bp = trunc i64 %i.bo to i32
  %i.bq = and i32 %i.bp, 1
  %.not.1 = icmp eq i32 %i.bq, %i.bl
  br i1 %.not.1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %scalar.ph.1
  %i.br = xor i64 %i.bn, %i.i
  store i64 %i.br, ptr %gep.1, align 8, !tbaa !72
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %scalar.ph.1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %.critedge, label %scalar.ph, !llvm.loop !497

.critedge:                                        ; preds = %scalar.ph.prol.loopexit, %bb.e, %middle.block, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @Gia_ManPatDistImprove(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #5 {
bb.a:
  %2 = alloca %struct.timespec, align 8           ; 5 uses
  %3 = alloca %struct.timespec, align 8           ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 872 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !67
  %i.c = getelementptr i8, ptr %i.b, i64 4
  %.val = load i32, ptr %i.c, align 4, !tbaa !68
  %i.d = getelementptr i8, ptr %0, i64 64         ; 3 uses
  %.val68 = load ptr, ptr %i.d, align 8, !tbaa !59
  %i.e = getelementptr i8, ptr %.val68, i64 4
  %.val68.val = load i32, ptr %i.e, align 4, !tbaa !60
  %i.f = sdiv i32 %.val, %.val68.val              ; 5 uses
  %i.g = tail call ptr @Gia_SimGenerateStats(ptr noundef %0) ; 5 uses
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !67   ; 3 uses
  store ptr null, ptr %i.a, align 8, !tbaa !67
  %i.i = tail call i32 @Abc_Random(i32 noundef 1) #35 ; 0 uses
  %i.j = shl i32 %i.f, 6                          ; 3 uses
  %i.k = icmp sgt i32 %i.f, 0
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.m = getelementptr i8, ptr %i.g, i64 4
  %i.n = getelementptr i8, ptr %i.g, i64 8        ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.not67 = icmp eq i32 %1, 0
end_hunk_0
begin_hunk_1_@Gia_ManPatDistImprove:bb.a

Gia_SimComputeScore.exit.thread:                  ; preds = %bb.d, %._crit_edge.i
  %.ph = phi double [ 1.000000e+00, %._crit_edge.i ], [ %i.bp, %bb.d ] ; 2 uses
  %i.bq = fadd double %.062107, %.ph
  br label %bb.e

Gia_SimComputeScore.exit:                         ; preds = %Abc_Clock.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !61 ; 2 uses
  %i.br = fadd double %.062107, 1.000000e+00      ; 2 uses
  %.not.i = icmp eq ptr %.pre, null
  br i1 %.not.i, label %Vec_IntFree.exit, label %bb.e

bb.e:                                             ; preds = %Gia_SimComputeScore.exit.thread, %Gia_SimComputeScore.exit
  %i.bs = phi double [ %i.bq, %Gia_SimComputeScore.exit.thread ], [ %i.br, %Gia_SimComputeScore.exit ]
  %i.bt = phi double [ %.ph, %Gia_SimComputeScore.exit.thread ], [ 1.000000e+00, %Gia_SimComputeScore.exit ]
  %i.bu = phi ptr [ %.val14.i, %Gia_SimComputeScore.exit.thread ], [ %.pre, %Gia_SimComputeScore.exit ]
  call void @free(ptr noundef nonnull %i.bu) #35
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %Gia_SimComputeScore.exit, %bb.e
  %i.bv = phi double [ %i.br, %Gia_SimComputeScore.exit ], [ %i.bs, %bb.e ] ; 2 uses
  %i.bw = phi double [ 1.000000e+00, %Gia_SimComputeScore.exit ], [ %i.bt, %bb.e ] ; 2 uses
  call void @free(ptr noundef nonnull %i.aa) #35
  %i.bx = getelementptr i8, ptr %i.z, i64 8       ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %Vec_IntFree.exit, %bb.g
  %.063105 = phi i32 [ 0, %Vec_IntFree.exit ], [ %i.ce, %bb.g ] ; 3 uses
  %i.by = call i32 @Gia_SimQualityPatternsMax(ptr noundef %0, ptr noundef %i.z, i32 noundef %.063105, i32 noundef %1, ptr noundef %i.g) ; 2 uses
  %i.bz = icmp eq i32 %i.by, -1
  br i1 %i.bz, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.val69 = load ptr, ptr %i.bx, align 8, !tbaa !61
  %i.ca = sext i32 %i.by to i64
  %i.cb = getelementptr inbounds [4 x i8], ptr %.val69, i64 %i.ca ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !62
  %i.cd = xor i32 %i.cc, 1
  store i32 %i.cd, ptr %i.cb, align 4, !tbaa !62
  %i.ce = add nuw nsw i32 %.063105, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.ce, 100
  br i1 %exitcond.not, label %bb.h, label %bb.f, !llvm.loop !500

bb.h:                                             ; preds = %bb.f, %bb.g
  %.063.lcssa = phi i32 [ %.063105, %bb.f ], [ 100, %bb.g ]
  %i.cf = call ptr @Gia_SimQualityOne(ptr noundef %0, ptr noundef %i.z, i32 noundef 0) ; 3 uses
  br i1 %i.ab, label %.critedge.lr.ph.i71, label %Gia_SimComputeScore.exit84

.critedge.lr.ph.i71:                              ; preds = %bb.h
  %.val15.i72 = load ptr, ptr %i.n, align 8, !tbaa !61 ; 3 uses
  %i.cg = getelementptr i8, ptr %i.cf, i64 8
  %.val14.i73 = load ptr, ptr %i.cg, align 8, !tbaa !61 ; 4 uses
  %wide.trip.count.i74 = zext nneg i32 %.val.i to i64 ; 2 uses
  %xtraiter152 = and i64 %wide.trip.count.i74, 1
  %i.ch = icmp eq i32 %.val.i, 1
  br i1 %i.ch, label %.critedge.i75.epil.preheader, label %.critedge.lr.ph.i71.new

.critedge.lr.ph.i71.new:                          ; preds = %.critedge.lr.ph.i71
  %unroll_iter156 = and i64 %wide.trip.count.i74, 2147483646
  br label %.critedge.i75

.critedge.i75:                                    ; preds = %.critedge.i75, %.critedge.lr.ph.i71.new
  %indvars.iv.i76 = phi i64 [ 0, %.critedge.lr.ph.i71.new ], [ %indvars.iv.next.i79.1, %.critedge.i75 ] ; 4 uses
  %.01316.i77 = phi double [ 0.000000e+00, %.critedge.lr.ph.i71.new ], [ %i.cz, %.critedge.i75 ]
  %niter157 = phi i64 [ 0, %.critedge.lr.ph.i71.new ], [ %niter157.next.1, %.critedge.i75 ]
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %.val15.i72, i64 %indvars.iv.i76
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !62
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %.val14.i73, i64 %indvars.iv.i76
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !62
  %spec.store.select.i78 = call i32 @llvm.umax.i32(i32 %i.cj, i32 1)
  %i.cm = sitofp i32 %i.cl to double
  %i.cn = fmul nnan double %i.cm, 1.000000e+03
  %i.co = sitofp i32 %spec.store.select.i78 to double
  %i.cp = fdiv double %i.cn, %i.co
  %i.cq = fadd double %.01316.i77, %i.cp
  %indvars.iv.next.i79 = or disjoint i64 %indvars.iv.i76, 1 ; 2 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %.val15.i72, i64 %indvars.iv.next.i79
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !62
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %.val14.i73, i64 %indvars.iv.next.i79
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !62
  %spec.store.select.i78.1 = call i32 @llvm.umax.i32(i32 %i.cs, i32 1)
  %i.cv = sitofp i32 %i.cu to double
  %i.cw = fmul nnan double %i.cv, 1.000000e+03
  %i.cx = sitofp i32 %spec.store.select.i78.1 to double
  %i.cy = fdiv double %i.cw, %i.cx
  %i.cz = fadd double %i.cq, %i.cy                ; 3 uses
  %indvars.iv.next.i79.1 = add nuw nsw i64 %indvars.iv.i76, 2 ; 2 uses
  %niter157.next.1 = add i64 %niter157, 2         ; 2 uses
  %niter157.ncmp.1 = icmp eq i64 %niter157.next.1, %unroll_iter156
  br i1 %niter157.ncmp.1, label %._crit_edge.i81.unr-lcssa, label %.critedge.i75, !llvm.loop !24

._crit_edge.i81.unr-lcssa:                        ; preds = %.critedge.i75
  %lcmp.mod153.not = icmp eq i64 %xtraiter152, 0
  br i1 %lcmp.mod153.not, label %._crit_edge.i81, label %.critedge.i75.epil.preheader

.critedge.i75.epil.preheader:                     ; preds = %._crit_edge.i81.unr-lcssa, %.critedge.lr.ph.i71
  %indvars.iv.i76.epil.init = phi i64 [ 0, %.critedge.lr.ph.i71 ], [ %indvars.iv.next.i79.1, %._crit_edge.i81.unr-lcssa ] ; 2 uses
  %.01316.i77.epil.init = phi double [ 0.000000e+00, %.critedge.lr.ph.i71 ], [ %i.cz, %._crit_edge.i81.unr-lcssa ]
  %lcmp.mod155 = trunc i32 %.val.i to i1
  call void @llvm.assume(i1 %lcmp.mod155)
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %.val15.i72, i64 %indvars.iv.i76.epil.init
  %i.db = load i32, ptr %i.da, align 4, !tbaa !62
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %.val14.i73, i64 %indvars.iv.i76.epil.init
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !62
  %spec.store.select.i78.epil = call i32 @llvm.umax.i32(i32 %i.db, i32 1)
  %i.de = sitofp i32 %i.dd to double
  %i.df = fmul nnan double %i.de, 1.000000e+03
  %i.dg = sitofp i32 %spec.store.select.i78.epil to double
  %i.dh = fdiv double %i.df, %i.dg
  %i.di = fadd double %.01316.i77.epil.init, %i.dh
  br label %._crit_edge.i81

._crit_edge.i81:                                  ; preds = %._crit_edge.i81.unr-lcssa, %.critedge.i75.epil.preheader
  %.lcssa147 = phi double [ %i.cz, %._crit_edge.i81.unr-lcssa ], [ %i.di, %.critedge.i75.epil.preheader ] ; 2 uses
  %i.dj = fcmp oeq double %.lcssa147, 0.000000e+00
  br i1 %i.dj, label %Gia_SimComputeScore.exit84.thread, label %bb.i

bb.i:                                             ; preds = %._crit_edge.i81
  %i.dk = load i32, ptr %i.o, align 8, !tbaa !69
  %i.dl = load ptr, ptr %i.d, align 8, !tbaa !59
  %i.dm = getelementptr i8, ptr %i.dl, i64 4
  %.val3.i.i82 = load i32, ptr %i.dm, align 4, !tbaa !60
  %i.dn = load ptr, ptr %i.p, align 8, !tbaa !75
  %i.do = getelementptr i8, ptr %i.dn, i64 4
  %.val.i.i83 = load i32, ptr %i.do, align 4, !tbaa !60
  %i.dp = add i32 %.val.i.i83, %.val3.i.i82
  %i.dq = xor i32 %i.dp, -1
  %i.dr = add i32 %i.dk, %i.dq
  %i.ds = sitofp i32 %i.dr to double
  %i.dt = fdiv double %.lcssa147, %i.ds
  br label %Gia_SimComputeScore.exit84.thread

Gia_SimComputeScore.exit84.thread:                ; preds = %bb.i, %._crit_edge.i81
  %.ph127 = phi double [ 1.000000e+00, %._crit_edge.i81 ], [ %i.dt, %bb.i ] ; 2 uses
  %i.du = fadd double %.061108, %.ph127
  br label %bb.j

Gia_SimComputeScore.exit84:                       ; preds = %bb.h
  %.phi.trans.insert115 = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %.pre116 = load ptr, ptr %.phi.trans.insert115, align 8, !tbaa !61 ; 2 uses
  %i.dv = fadd double %.061108, 1.000000e+00      ; 2 uses
  %.not.i85 = icmp eq ptr %.pre116, null
  br i1 %.not.i85, label %Vec_IntFree.exit86, label %bb.j

bb.j:                                             ; preds = %Gia_SimComputeScore.exit84.thread, %Gia_SimComputeScore.exit84
  %i.dw = phi double [ %i.du, %Gia_SimComputeScore.exit84.thread ], [ %i.dv, %Gia_SimComputeScore.exit84 ]
  %i.dx = phi double [ %.ph127, %Gia_SimComputeScore.exit84.thread ], [ 1.000000e+00, %Gia_SimComputeScore.exit84 ]
  %i.dy = phi ptr [ %.val14.i73, %Gia_SimComputeScore.exit84.thread ], [ %.pre116, %Gia_SimComputeScore.exit84 ]
  call void @free(ptr noundef nonnull %i.dy) #35
  br label %Vec_IntFree.exit86

Vec_IntFree.exit86:                               ; preds = %Gia_SimComputeScore.exit84, %bb.j
  %i.dz = phi double [ %i.dv, %Gia_SimComputeScore.exit84 ], [ %i.dw, %bb.j ] ; 2 uses
  %i.ea = phi double [ 1.000000e+00, %Gia_SimComputeScore.exit84 ], [ %i.dx, %bb.j ] ; 2 uses
  call void @free(ptr noundef nonnull %i.cf) #35
  br i1 %.not67, label %bb.m, label %bb.k

bb.k:                                             ; preds = %Vec_IntFree.exit86
  %i.eb = fdiv double %i.ea, %i.bw
  %i.ec = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.42, i32 noundef %.064106, i32 noundef %.063.lcssa, double noundef %i.bw, double noundef %i.ea, double noundef %i.eb) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #35
  %i.ed = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %2) #35
  %i.ee = icmp slt i32 %i.ed, 0
  br i1 %i.ee, label %Abc_Clock.exit88, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ef = load i64, ptr %2, align 8, !tbaa !88
  %i.eg = mul nsw i64 %i.ef, 1000000
  %i.eh = load i64, ptr %i.q, align 8, !tbaa !89
  %i.ei = sdiv i64 %i.eh, 1000
  %i.ej = add nsw i64 %i.ei, %i.eg
  br label %Abc_Clock.exit88

Abc_Clock.exit88:                                 ; preds = %bb.k, %bb.l
  %.0.i87 = phi i64 [ %i.ej, %bb.l ], [ -1, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35
  %i.ek = add i64 %.0.i87, %.0.i.neg
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.113, ptr noundef nonnull @.str.13)
  %i.el = sitofp i64 %i.ek to double
  %i.em = fdiv double %i.el, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.114, double noundef %i.em)
  br label %bb.m

bb.m:                                             ; preds = %Abc_Clock.exit88, %Vec_IntFree.exit86
  %i.en = getelementptr i8, ptr %i.z, i64 4
  %.val.i89 = load i32, ptr %i.en, align 4, !tbaa !60 ; 3 uses
  %i.eo = icmp sgt i32 %.val.i89, 0
  %.pre117 = load ptr, ptr %i.bx, align 8, !tbaa !61 ; 8 uses
  br i1 %i.eo, label %.lr.ph.i, label %Gia_ManPatUpdateOne.exit

.lr.ph.i:                                         ; preds = %bb.m
  %.val13.i = load ptr, ptr %i.r, align 8, !tbaa !65 ; 2 uses
  %i.ep = lshr i32 %.064106, 6
  %i.eq = zext nneg i32 %i.ep to i64
  %invariant.gep.i = getelementptr [8 x i8], ptr %.val13.i, i64 %i.eq ; 8 uses
  %i.er = and i32 %.064106, 63
  %i.es = zext nneg i32 %i.er to i64              ; 5 uses
  %i.et = shl nuw i64 1, %i.es                    ; 7 uses
  %wide.trip.count.i91 = zext nneg i32 %.val.i89 to i64 ; 7 uses
  %min.iters.check = icmp ugt i32 %.val.i89, 9
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  br i1 %or.cond, label %vector.memcheck, label %scalar.ph.preheader

vector.memcheck:                                  ; preds = %.lr.ph.i
  %i.eu = shl nuw nsw i64 %wide.trip.count.i91, 3
  %i.ev = getelementptr i8, ptr %.val13.i, i64 %i.u
  %scevgep = getelementptr i8, ptr %i.ev, i64 %i.eu
  %i.ew = shl nuw nsw i64 %wide.trip.count.i91, 2
  %scevgep136 = getelementptr i8, ptr %.pre117, i64 %i.ew
  %bound0 = icmp ult ptr %invariant.gep.i, %scevgep136
  %bound1 = icmp ult ptr %.pre117, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count.i91, 2147483644 ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.es, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue145, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue145 ] ; 6 uses
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %.pre117, i64 %index ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %wide.load = load <2 x i32>, ptr %i.ex, align 4, !tbaa !62, !alias.scope !507
  %wide.load137 = load <2 x i32>, ptr %i.ey, align 4, !tbaa !62, !alias.scope !507
  %i.ez = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %index ; 3 uses
  %i.fa = getelementptr i8, ptr %i.ez, i64 16
  %wide.load138 = load <2 x i64>, ptr %i.ez, align 8, !tbaa !72, !alias.scope !508, !noalias !507 ; 3 uses
  %wide.load139 = load <2 x i64>, ptr %i.fa, align 8, !tbaa !72, !alias.scope !508, !noalias !507 ; 3 uses
  %i.fb = lshr <2 x i64> %wide.load138, %broadcast.splat
  %i.fc = lshr <2 x i64> %wide.load139, %broadcast.splat
  %i.fd = trunc <2 x i64> %i.fb to <2 x i32>
  %i.fe = and <2 x i32> %i.fd, splat (i32 1)
  %i.ff = trunc <2 x i64> %i.fc to <2 x i32>
  %i.fg = and <2 x i32> %i.ff, splat (i32 1)
  %i.fh = icmp ne <2 x i32> %i.fe, %wide.load     ; 2 uses
  %i.fi = icmp ne <2 x i32> %i.fg, %wide.load137  ; 2 uses
  %i.fj = extractelement <2 x i1> %i.fh, i64 0
  br i1 %i.fj, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %i.fk = extractelement <2 x i64> %wide.load138, i64 0
  %i.fl = xor i64 %i.fk, %i.et
  store i64 %i.fl, ptr %i.ez, align 8, !tbaa !72, !alias.scope !508, !noalias !507
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.fm = extractelement <2 x i1> %i.fh, i64 1
  br i1 %i.fm, label %pred.store.if140, label %pred.store.continue141

pred.store.if140:                                 ; preds = %pred.store.continue
  %i.fn = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %index
  %i.fo = getelementptr i8, ptr %i.fn, i64 8
  %i.fp = extractelement <2 x i64> %wide.load138, i64 1
  %i.fq = xor i64 %i.fp, %i.et
  store i64 %i.fq, ptr %i.fo, align 8, !tbaa !72, !alias.scope !508, !noalias !507
  br label %pred.store.continue141

pred.store.continue141:                           ; preds = %pred.store.if140, %pred.store.continue
  %i.fr = extractelement <2 x i1> %i.fi, i64 0
  br i1 %i.fr, label %pred.store.if142, label %pred.store.continue143

pred.store.if142:                                 ; preds = %pred.store.continue141
  %i.fs = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %index
  %i.ft = getelementptr i8, ptr %i.fs, i64 16
  %i.fu = extractelement <2 x i64> %wide.load139, i64 0
  %i.fv = xor i64 %i.fu, %i.et
  store i64 %i.fv, ptr %i.ft, align 8, !tbaa !72, !alias.scope !508, !noalias !507
  br label %pred.store.continue143

pred.store.continue143:                           ; preds = %pred.store.if142, %pred.store.continue141
  %i.fw = extractelement <2 x i1> %i.fi, i64 1
  br i1 %i.fw, label %pred.store.if144, label %pred.store.continue145

pred.store.if144:                                 ; preds = %pred.store.continue143
  %i.fx = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %index
  %i.fy = getelementptr i8, ptr %i.fx, i64 24
  %i.fz = extractelement <2 x i64> %wide.load139, i64 1
  %i.ga = xor i64 %i.fz, %i.et
  store i64 %i.ga, ptr %i.fy, align 8, !tbaa !72, !alias.scope !508, !noalias !507
  br label %pred.store.continue145

pred.store.continue145:                           ; preds = %pred.store.if144, %pred.store.continue143
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.gb = icmp eq i64 %index.next, %n.vec
  br i1 %i.gb, label %middle.block, label %vector.body, !llvm.loop !504

middle.block:                                     ; preds = %pred.store.continue145
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i91
  br i1 %cmp.n, label %Gia_ManPatUpdateOne.exit.thread, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i, %middle.block
  %indvars.iv.i92.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ] ; 5 uses
  %xtraiter158 = and i64 %wide.trip.count.i91, 1
  %lcmp.mod159.not = icmp eq i64 %xtraiter158, 0
  br i1 %lcmp.mod159.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %.pre117, i64 %indvars.iv.i92.ph
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !62
  %i.ge = mul nuw nsw i64 %indvars.iv.i92.ph, %i.s
  %gep.i.prol = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.ge ; 2 uses
  %i.gf = load i64, ptr %gep.i.prol, align 8, !tbaa !72 ; 2 uses
  %i.gg = lshr i64 %i.gf, %i.es
  %i.gh = trunc i64 %i.gg to i32
  %i.gi = and i32 %i.gh, 1
  %.not.i93.prol = icmp eq i32 %i.gi, %i.gd
  br i1 %.not.i93.prol, label %scalar.ph.prol.loopexit.unr-lcssa, label %bb.n

bb.n:                                             ; preds = %scalar.ph.prol
  %i.gj = xor i64 %i.gf, %i.et
  store i64 %i.gj, ptr %gep.i.prol, align 8, !tbaa !72
  br label %scalar.ph.prol.loopexit.unr-lcssa

scalar.ph.prol.loopexit.unr-lcssa:                ; preds = %bb.n, %scalar.ph.prol
  %indvars.iv.next.i94.prol = or disjoint i64 %indvars.iv.i92.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol.loopexit.unr-lcssa, %scalar.ph.preheader
  %indvars.iv.i92.unr = phi i64 [ %indvars.iv.i92.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i94.prol, %scalar.ph.prol.loopexit.unr-lcssa ]
  %i.gk = add nsw i64 %wide.trip.count.i91, -1
  %i.gl = icmp eq i64 %indvars.iv.i92.ph, %i.gk
  br i1 %i.gl, label %Gia_ManPatUpdateOne.exit.thread, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %bb.q
  %indvars.iv.i92 = phi i64 [ %indvars.iv.next.i94.1, %bb.q ], [ %indvars.iv.i92.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %.pre117, i64 %indvars.iv.i92
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !62
  %i.go = mul nuw nsw i64 %indvars.iv.i92, %i.s
  %gep.i = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.go ; 2 uses
  %i.gp = load i64, ptr %gep.i, align 8, !tbaa !72 ; 2 uses
  %i.gq = lshr i64 %i.gp, %i.es
  %i.gr = trunc i64 %i.gq to i32
  %i.gs = and i32 %i.gr, 1
  %.not.i93 = icmp eq i32 %i.gs, %i.gn
  br i1 %.not.i93, label %scalar.ph.1, label %bb.o

bb.o:                                             ; preds = %scalar.ph
  %i.gt = xor i64 %i.gp, %i.et
  store i64 %i.gt, ptr %gep.i, align 8, !tbaa !72
  br label %scalar.ph.1

scalar.ph.1:                                      ; preds = %bb.o, %scalar.ph
  %indvars.iv.next.i94 = add nuw nsw i64 %indvars.iv.i92, 1 ; 2 uses
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %.pre117, i64 %indvars.iv.next.i94
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !62
  %i.gw = mul nuw nsw i64 %indvars.iv.next.i94, %i.s
  %gep.i.1 = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.gw ; 2 uses
  %i.gx = load i64, ptr %gep.i.1, align 8, !tbaa !72 ; 2 uses
  %i.gy = lshr i64 %i.gx, %i.es
  %i.gz = trunc i64 %i.gy to i32
  %i.ha = and i32 %i.gz, 1
  %.not.i93.1 = icmp eq i32 %i.ha, %i.gv
  br i1 %.not.i93.1, label %bb.q, label %bb.p

bb.p:                                             ; preds = %scalar.ph.1
  %i.hb = xor i64 %i.gx, %i.et
  store i64 %i.hb, ptr %gep.i.1, align 8, !tbaa !72
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %scalar.ph.1
  %indvars.iv.next.i94.1 = add nuw nsw i64 %indvars.iv.i92, 2 ; 2 uses
  %exitcond.not.i95.1 = icmp eq i64 %indvars.iv.next.i94.1, %wide.trip.count.i91
  br i1 %exitcond.not.i95.1, label %Gia_ManPatUpdateOne.exit.thread, label %scalar.ph, !llvm.loop !505

Gia_ManPatUpdateOne.exit:                         ; preds = %bb.m
  %.not.i96 = icmp eq ptr %.pre117, null
  br i1 %.not.i96, label %Vec_IntFree.exit97, label %Gia_ManPatUpdateOne.exit.thread

Gia_ManPatUpdateOne.exit.thread:                  ; preds = %scalar.ph.prol.loopexit, %bb.q, %middle.block, %Gia_ManPatUpdateOne.exit
  call void @free(ptr noundef nonnull %.pre117) #35
  br label %Vec_IntFree.exit97

Vec_IntFree.exit97:                               ; preds = %Gia_ManPatUpdateOne.exit, %Gia_ManPatUpdateOne.exit.thread
  call void @free(ptr noundef nonnull %i.z) #35
  %i.hc = add nuw nsw i32 %.064106, 1             ; 2 uses
  %exitcond114.not = icmp eq i32 %i.hc, %smax
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond114.not, label %._crit_edge, label %bb.b, !llvm.loop !506

._crit_edge:                                      ; preds = %Vec_IntFree.exit97, %bb.a
  %.062.lcssa = phi double [ 0.000000e+00, %bb.a ], [ %i.bv, %Vec_IntFree.exit97 ]
  %.061.lcssa = phi double [ 0.000000e+00, %bb.a ], [ %i.dz, %Vec_IntFree.exit97 ]
  %i.hd = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !61 ; 2 uses
  %.not.i98 = icmp eq ptr %i.he, null
  br i1 %.not.i98, label %Vec_IntFree.exit99, label %bb.r

bb.r:                                             ; preds = %._crit_edge
  call void @free(ptr noundef nonnull %i.he) #35
  br label %Vec_IntFree.exit99

Vec_IntFree.exit99:                               ; preds = %._crit_edge, %bb.r
  call void @free(ptr noundef nonnull %i.g) #35
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.t, label %bb.s

bb.s:                                             ; preds = %Vec_IntFree.exit99
  %putchar = call i32 @putchar(i32 10)            ; 0 uses
end_hunk_1
