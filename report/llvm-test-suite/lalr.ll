Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/lalr?download=true
inline.NumInlined: 10
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@add_lookback_edge:bb.a

.lr.ph:                                           ; preds = %bb.a
  %i.j = load ptr, ptr @LAruleno, align 8, !tbaa !19
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.01416 = phi i32 [ %i.e, %.lr.ph ], [ %.115, %bb.b ] ; 2 uses
  %i.k = sext i32 %.01416 to i64
  %i.l = getelementptr inbounds [2 x i8], ptr %i.j, i64 %i.k
  %i.m = load i16, ptr %i.l, align 2, !tbaa !22
  %i.n = sext i16 %i.m to i32
  %i.o = icmp ne i32 %1, %i.n                     ; 3 uses
  %i.p = zext i1 %i.o to i32
  %.115 = add nsw i32 %.01416, %i.p               ; 4 uses
  %i.q = icmp slt i32 %.115, %i.h
  %i.r = select i1 %i.o, i1 %i.q, i1 false
  br i1 %i.r, label %bb.b, label %._crit_edge, !llvm.loop !80

._crit_edge:                                      ; preds = %bb.b
  br i1 %i.o, label %._crit_edge.thread, label %bb.c

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  %.014.lcssa23 = phi i32 [ %.115, %._crit_edge ], [ %i.e, %bb.a ]
  tail call void @berror(ptr noundef nonnull @.str.2) #9
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %.014.lcssa22 = phi i32 [ %.014.lcssa23, %._crit_edge.thread ], [ %.115, %._crit_edge ]
  %i.s = tail call ptr (i32, ...) @mallocate(i32 noundef 16) #9 ; 3 uses
  %i.t = load ptr, ptr @lookback, align 8, !tbaa !48
  %i.u = sext i32 %.014.lcssa22 to i64
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
  %.04154 = phi ptr [ %i.i, %.lr.ph ], [ %i.e, %.preheader52 ]
  %i.i = getelementptr inbounds nuw i8, ptr %.04154, i64 2 ; 2 uses
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
  %.14261 = phi ptr [ %i.ae, %.lr.ph62 ], [ %i.aj, %bb.d ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.14261, i64 2 ; 2 uses
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
  %i.k = load ptr, ptr @F, align 8, !tbaa !46     ; 6 uses
  %i.l = ptrtoaddr ptr %i.k to i64                ; 9 uses
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
  %i.am = shl nsw i64 %i.o, 2                     ; 2 uses
  %i.an = add i64 %.idx, %i.l
  %i.ao = add i64 %i.an, %i.am
  %i.ap = add i64 %i.am, %i.l
  %i.aq = add i64 %i.ap, 4
  %i.ar = tail call i64 @llvm.umax.i64(i64 %i.ao, i64 %i.aq)
  %i.as = xor i64 %i.l, -1
  %i.at = add i64 %i.ar, %i.as
  %1 = shl nsw i64 %i.o, 2
  %i.au = sub i64 %i.at, %1                       ; 2 uses
  %i.av = lshr i64 %i.au, 2
  %i.aw = add nuw nsw i64 %i.av, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.au, 28
  %n.vec = and i64 %i.aw, 9223372036854775800     ; 3 uses
  %i.ax = shl i64 %n.vec, 2                       ; 2 uses
  %i.ay = getelementptr i8, ptr %i.p, i64 %i.ax
  %cmp.n = icmp eq i64 %i.aw, %n.vec
  br label %.lr.ph41.split.us

.lr.ph41.split.us:                                ; preds = %.lr.ph41.split.us.preheader, %..loopexit36_crit_edge.us
  %i.az = phi i16 [ %i.bj, %..loopexit36_crit_edge.us ], [ %i.g, %.lr.ph41.split.us.preheader ]
  %i.ba = phi i32 [ %i.ce, %..loopexit36_crit_edge.us ], [ %i.x, %.lr.ph41.split.us.preheader ] ; 3 uses
  %i.bb = phi ptr [ %i.cc, %..loopexit36_crit_edge.us ], [ %i.y, %.lr.ph41.split.us.preheader ] ; 2 uses
  %i.bc = zext nneg i32 %i.ba to i64
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %i.bc ; 2 uses
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !22 ; 2 uses
  %i.bf = icmp eq i16 %i.be, 0
  br i1 %i.bf, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph41.split.us
  tail call void @traverse(i32 noundef %i.ba)
  %.pre56 = load i16, ptr %i.j, align 2, !tbaa !22
  %.pre57 = load i16, ptr %i.bd, align 2, !tbaa !22
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph41.split.us
  %i.bg = phi i16 [ %.pre57, %bb.b ], [ %i.be, %.lr.ph41.split.us ] ; 3 uses
  %i.bh = phi i16 [ %.pre56, %bb.b ], [ %i.az, %.lr.ph41.split.us ] ; 2 uses
  %i.bi = icmp sgt i16 %i.bh, %i.bg
  br i1 %i.bi, label %bb.d, label %.lr.ph.us

bb.d:                                             ; preds = %bb.c
  store i16 %i.bg, ptr %i.j, align 2, !tbaa !22
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %bb.d, %bb.c
  %i.bj = phi i16 [ %i.bg, %bb.d ], [ %i.bh, %bb.c ] ; 2 uses
  %i.bk = load i32, ptr @tokensetsize, align 4, !tbaa !4
  %i.bl = mul i32 %i.bk, %i.ba
  %i.bm = sext i32 %i.bl to i64                   ; 2 uses
  %i.bn = getelementptr [4 x i8], ptr %i.k, i64 %i.bm ; 5 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.us
  %i.bo = shl nsw i64 %i.bm, 2
  %scevgep75 = getelementptr i8, ptr %scevgep74, i64 %i.bo
  %bound0 = icmp ult ptr %i.p, %scevgep75
  %bound1 = icmp ult ptr %i.bn, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.bp = getelementptr i8, ptr %i.bn, i64 %i.ax
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bq = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bn, i64 %i.bq ; 2 uses
  %next.gep76 = getelementptr i8, ptr %i.p, i64 %i.bq ; 3 uses
  %i.br = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !4, !alias.scope !111
  %wide.load77 = load <4 x i32>, ptr %i.br, align 4, !tbaa !4, !alias.scope !111
  %i.bs = getelementptr i8, ptr %next.gep76, i64 16 ; 2 uses
  %wide.load78 = load <4 x i32>, ptr %next.gep76, align 4, !tbaa !4, !alias.scope !114, !noalias !111
  %wide.load79 = load <4 x i32>, ptr %i.bs, align 4, !tbaa !4, !alias.scope !114, !noalias !111
  %i.bt = or <4 x i32> %wide.load78, %wide.load
  %i.bu = or <4 x i32> %wide.load79, %wide.load77
  store <4 x i32> %i.bt, ptr %next.gep76, align 4, !tbaa !4, !alias.scope !114, !noalias !111
  store <4 x i32> %i.bu, ptr %i.bs, align 4, !tbaa !4, !alias.scope !114, !noalias !111
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bv = icmp eq i64 %index.next, %n.vec
  br i1 %i.bv, label %middle.block, label %vector.body, !llvm.loop !116

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit36_crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.us, %middle.block
  %.02940.us.ph = phi ptr [ %i.bn, %vector.memcheck ], [ %i.bn, %.lr.ph.us ], [ %i.bp, %middle.block ]
  %.03039.us.ph = phi ptr [ %i.p, %vector.memcheck ], [ %i.p, %.lr.ph.us ], [ %i.ay, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.02940.us = phi ptr [ %i.bw, %scalar.ph ], [ %.02940.us.ph, %scalar.ph.preheader ] ; 2 uses
  %.03039.us = phi ptr [ %i.by, %scalar.ph ], [ %.03039.us.ph, %scalar.ph.preheader ] ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.02940.us, i64 4
  %i.bx = load i32, ptr %.02940.us, align 4, !tbaa !4
  %i.by = getelementptr inbounds nuw i8, ptr %.03039.us, i64 4 ; 2 uses
  %i.bz = load i32, ptr %.03039.us, align 4, !tbaa !4
  %i.ca = or i32 %i.bz, %i.bx
  store i32 %i.ca, ptr %.03039.us, align 4, !tbaa !4
  %i.cb = icmp ult ptr %i.by, %i.r
  br i1 %i.cb, label %scalar.ph, label %..loopexit36_crit_edge.us, !llvm.loop !117

..loopexit36_crit_edge.us:                        ; preds = %scalar.ph, %middle.block
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bb, i64 2
  %i.cd = load i16, ptr %i.bb, align 2, !tbaa !22 ; 2 uses
  %i.ce = zext nneg i16 %i.cd to i32
  %i.cf = icmp sgt i16 %i.cd, -1
  br i1 %i.cf, label %.lr.ph41.split.us, label %.loopexit38, !llvm.loop !118

.lr.ph41.split:                                   ; preds = %.lr.ph41, %.loopexit36
  %i.cg = phi i16 [ %i.cq, %.loopexit36 ], [ %i.g, %.lr.ph41 ]
  %i.ch = phi i32 [ %i.ct, %.loopexit36 ], [ %i.x, %.lr.ph41 ] ; 2 uses
  %i.ci = phi ptr [ %i.cr, %.loopexit36 ], [ %i.y, %.lr.ph41 ] ; 2 uses
  %i.cj = zext nneg i32 %i.ch to i64
  %i.ck = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %i.cj ; 2 uses
  %i.cl = load i16, ptr %i.ck, align 2, !tbaa !22 ; 2 uses
  %i.cm = icmp eq i16 %i.cl, 0
  br i1 %i.cm, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph41.split
  tail call void @traverse(i32 noundef %i.ch)
  %.pre = load i16, ptr %i.j, align 2, !tbaa !22
  %.pre55 = load i16, ptr %i.ck, align 2, !tbaa !22
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph41.split
  %i.cn = phi i16 [ %.pre55, %bb.e ], [ %i.cl, %.lr.ph41.split ] ; 3 uses
  %i.co = phi i16 [ %.pre, %bb.e ], [ %i.cg, %.lr.ph41.split ] ; 2 uses
  %i.cp = icmp sgt i16 %i.co, %i.cn
  br i1 %i.cp, label %bb.g, label %.loopexit36

bb.g:                                             ; preds = %bb.f
  store i16 %i.cn, ptr %i.j, align 2, !tbaa !22
  br label %.loopexit36

.loopexit36:                                      ; preds = %bb.g, %bb.f
  %i.cq = phi i16 [ %i.cn, %bb.g ], [ %i.co, %bb.f ] ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ci, i64 2
  %i.cs = load i16, ptr %i.ci, align 2, !tbaa !22 ; 2 uses
  %i.ct = zext nneg i16 %i.cs to i32
  %i.cu = icmp sgt i16 %i.cs, -1
  br i1 %i.cu, label %.lr.ph41.split, label %.loopexit38, !llvm.loop !118

.loopexit38:                                      ; preds = %.loopexit36, %..loopexit36_crit_edge.us, %.preheader37, %bb.a
  %i.cv = phi i16 [ %i.bj, %..loopexit36_crit_edge.us ], [ %i.g, %bb.a ], [ %i.g, %.preheader37 ], [ %i.cq, %.loopexit36 ]
  %i.cw = sext i16 %i.cv to i32
  %i.cx = icmp eq i32 %i.d, %i.cw
  br i1 %i.cx, label %.preheader, label %bb.h

.preheader:                                       ; preds = %.loopexit38
  %i.cy = load i32, ptr @infinity, align 4, !tbaa !4
  %i.cz = trunc i32 %i.cy to i16                  ; 3 uses
  %top.promoted = load i32, ptr @top, align 4, !tbaa !4 ; 2 uses
  %i.da = add i32 %top.promoted, -1               ; 2 uses
  %i.db = sext i32 %top.promoted to i64
  %i.dc = getelementptr inbounds [2 x i8], ptr %i.b, i64 %i.db
  %i.dd = load i16, ptr %i.dc, align 2, !tbaa !22 ; 2 uses
  %i.de = sext i16 %i.dd to i32                   ; 2 uses
  %i.df = sext i16 %i.dd to i64
  %i.dg = getelementptr inbounds [2 x i8], ptr %i.h, i64 %i.df
  store i16 %i.cz, ptr %i.dg, align 2, !tbaa !22
  %i.dh = icmp eq i32 %0, %i.de
  br i1 %i.dh, label %.loopexit35, label %.lr.ph44

.lr.ph44:                                         ; preds = %.preheader
  %i.di = icmp sgt i32 %.fr46, 0
  %i.dj = sext i32 %i.da to i64                   ; 2 uses
  br i1 %i.di, label %.lr.ph.us45.preheader, label %.loopexit

.lr.ph.us45.preheader:                            ; preds = %.lr.ph44
  %i.dk = shl nsw i64 %i.o, 2                     ; 2 uses
  %i.dl = add i64 %.idx, %i.l
  %i.dm = add i64 %i.dl, %i.dk
  %i.dn = add i64 %i.dk, %i.l
  %i.do = add i64 %i.dn, 4
  %i.dp = tail call i64 @llvm.umax.i64(i64 %i.dm, i64 %i.do)
  %i.dq = xor i64 %i.l, -1
  %i.dr = add i64 %i.dp, %i.dq
  %2 = shl nsw i64 %i.o, 2
  %i.ds = sub i64 %i.dr, %2                       ; 2 uses
  %i.dt = lshr i64 %i.ds, 2
  %i.du = add nuw nsw i64 %i.dt, 1                ; 2 uses
  %min.iters.check83 = icmp ult i64 %i.ds, 28
  %n.vec85 = and i64 %i.du, 9223372036854775800   ; 3 uses
  %i.dv = shl i64 %n.vec85, 2                     ; 2 uses
  %i.dw = getelementptr i8, ptr %i.p, i64 %i.dv
  %cmp.n94 = icmp eq i64 %i.du, %n.vec85
  br label %.lr.ph.us45

.lr.ph.us45:                                      ; preds = %.lr.ph.us45.preheader, %..loopexit_crit_edge.us
  %indvars.iv52 = phi i64 [ %indvars.iv.next53, %..loopexit_crit_edge.us ], [ %i.dj, %.lr.ph.us45.preheader ] ; 2 uses
  %i.dx = phi i32 [ %i.eq, %..loopexit_crit_edge.us ], [ %i.de, %.lr.ph.us45.preheader ]
  %i.dy = load i32, ptr @tokensetsize, align 4, !tbaa !4
  %i.dz = mul i32 %i.dy, %i.dx
  %i.ea = sext i32 %i.dz to i64                   ; 2 uses
  %i.eb = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.ea ; 4 uses
  br i1 %min.iters.check83, label %scalar.ph82.preheader, label %vector.memcheck81

vector.memcheck81:                                ; preds = %.lr.ph.us45
  %i.ec = sub nsw i64 %i.ea, %i.o
  %i.ed = shl nsw i64 %i.ec, 2
  %i.ee = add nsw i64 %i.ed, -1
  %diff.check = icmp ult i64 %i.ee, 31
  br i1 %diff.check, label %scalar.ph82.preheader, label %vector.ph84

vector.ph84:                                      ; preds = %vector.memcheck81
  %i.ef = getelementptr i8, ptr %i.eb, i64 %i.dv
  br label %vector.body86

vector.body86:                                    ; preds = %vector.body86, %vector.ph84
  %index87 = phi i64 [ 0, %vector.ph84 ], [ %index.next92, %vector.body86 ] ; 2 uses
  %i.eg = shl i64 %index87, 2                     ; 2 uses
  %next.gep88 = getelementptr i8, ptr %i.eb, i64 %i.eg ; 2 uses
  %next.gep89 = getelementptr i8, ptr %i.p, i64 %i.eg ; 2 uses
  %i.eh = getelementptr i8, ptr %next.gep89, i64 16
  %wide.load90 = load <4 x i32>, ptr %next.gep89, align 4, !tbaa !4
  %wide.load91 = load <4 x i32>, ptr %i.eh, align 4, !tbaa !4
  %i.ei = getelementptr i8, ptr %next.gep88, i64 16
  store <4 x i32> %wide.load90, ptr %next.gep88, align 4, !tbaa !4
  store <4 x i32> %wide.load91, ptr %i.ei, align 4, !tbaa !4
  %index.next92 = add nuw i64 %index87, 8         ; 2 uses
  %i.ej = icmp eq i64 %index.next92, %n.vec85
  br i1 %i.ej, label %middle.block93, label %vector.body86, !llvm.loop !119

middle.block93:                                   ; preds = %vector.body86
  br i1 %cmp.n94, label %..loopexit_crit_edge.us, label %scalar.ph82.preheader

scalar.ph82.preheader:                            ; preds = %vector.memcheck81, %.lr.ph.us45, %middle.block93
  %.143.us.ph = phi ptr [ %i.eb, %vector.memcheck81 ], [ %i.eb, %.lr.ph.us45 ], [ %i.ef, %middle.block93 ]
  %.13142.us.ph = phi ptr [ %i.p, %vector.memcheck81 ], [ %i.p, %.lr.ph.us45 ], [ %i.dw, %middle.block93 ]
  br label %scalar.ph82

scalar.ph82:                                      ; preds = %scalar.ph82.preheader, %scalar.ph82
  %.143.us = phi ptr [ %i.em, %scalar.ph82 ], [ %.143.us.ph, %scalar.ph82.preheader ] ; 2 uses
  %.13142.us = phi ptr [ %i.ek, %scalar.ph82 ], [ %.13142.us.ph, %scalar.ph82.preheader ] ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.13142.us, i64 4 ; 2 uses
  %i.el = load i32, ptr %.13142.us, align 4, !tbaa !4
  %i.em = getelementptr inbounds nuw i8, ptr %.143.us, i64 4
  store i32 %i.el, ptr %.143.us, align 4, !tbaa !4
  %i.en = icmp ult ptr %i.ek, %i.r
  br i1 %i.en, label %scalar.ph82, label %..loopexit_crit_edge.us, !llvm.loop !120

..loopexit_crit_edge.us:                          ; preds = %scalar.ph82, %middle.block93
  %indvars.iv.next53 = add nsw i64 %indvars.iv52, -1 ; 2 uses
  %i.eo = getelementptr inbounds [2 x i8], ptr %i.b, i64 %indvars.iv52
  %i.ep = load i16, ptr %i.eo, align 2, !tbaa !22 ; 2 uses
  %i.eq = sext i16 %i.ep to i32                   ; 2 uses
  %i.er = sext i16 %i.ep to i64
  %i.es = getelementptr inbounds [2 x i8], ptr %i.h, i64 %i.er
  store i16 %i.cz, ptr %i.es, align 2, !tbaa !22
  %i.et = icmp eq i32 %0, %i.eq
  br i1 %i.et, label %.loopexit35.loopexit, label %.lr.ph.us45

.loopexit:                                        ; preds = %.lr.ph44, %.loopexit
  %indvars.iv = phi i64 [ %indvars.iv.next, %.loopexit ], [ %i.dj, %.lr.ph44 ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.eu = getelementptr inbounds [2 x i8], ptr %i.b, i64 %indvars.iv
  %i.ev = load i16, ptr %i.eu, align 2, !tbaa !22 ; 2 uses
  %i.ew = sext i16 %i.ev to i32
  %i.ex = sext i16 %i.ev to i64
  %i.ey = getelementptr inbounds [2 x i8], ptr %i.h, i64 %i.ex
  store i16 %i.cz, ptr %i.ey, align 2, !tbaa !22
  %i.ez = icmp eq i32 %0, %i.ew
  br i1 %i.ez, label %.loopexit35.loopexit47, label %.loopexit

.loopexit35.loopexit:                             ; preds = %..loopexit_crit_edge.us
  %i.fa = trunc nsw i64 %indvars.iv.next53 to i32
  br label %.loopexit35

.loopexit35.loopexit47:                           ; preds = %.loopexit
  %i.fb = trunc nsw i64 %indvars.iv.next to i32
  br label %.loopexit35

.loopexit35:                                      ; preds = %.loopexit35.loopexit47, %.loopexit35.loopexit, %.preheader
  %.lcssa = phi i32 [ %i.da, %.preheader ], [ %i.fa, %.loopexit35.loopexit ], [ %i.fb, %.loopexit35.loopexit47 ]
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
end_hunk_0
