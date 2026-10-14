Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/mioParse?download=true
inline.NumInlined: 120
inline.NumDeleted: 30
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 10
begin_hunk_0_@Mio_ParseFormula:bb.a
  %i.tl = tail call fastcc ptr @Exp_Reverse(ptr noundef %i.tg) ; 0 uses
  br label %Vec_IntFreeP.exit313

bb.fx:                                            ; preds = %bb.fv
  %i.tm = load ptr, ptr @stdout, align 8, !tbaa !41
  %fwrite160 = tail call i64 @fwrite(ptr nonnull @.str.10, i64 61, i64 1, ptr %i.tm) ; 0 uses
  br label %.thread327

bb.fy:                                            ; preds = %bb.fu
  %i.tn = load ptr, ptr @stdout, align 8, !tbaa !41
  %fwrite159 = tail call i64 @fwrite(ptr nonnull @.str.11, i64 60, i64 1, ptr %i.tn) ; 0 uses
  br label %.thread327

bb.fz:                                            ; preds = %bb.ft
  %i.to = load ptr, ptr @stdout, align 8, !tbaa !41
  %fwrite158 = tail call i64 @fwrite(ptr nonnull @.str.12, i64 46, i64 1, ptr %i.to) ; 0 uses
  br label %.thread327

.thread327:                                       ; preds = %.thread, %bb.bh, %bb.bb, %bb.ae, %bb.do, %bb.t, %.critedge._crit_edge, %bb.fx, %bb.fy, %bb.fz
  tail call void @free(ptr noundef %i.j) #18
  %i.tp = load ptr, ptr %i.a, align 8, !tbaa !24  ; 3 uses
  %i.tq = icmp eq ptr %i.tp, null
  br i1 %i.tq, label %Vec_PtrFreeP.exit310, label %bb.ga

bb.ga:                                            ; preds = %.thread327
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tp, i64 8
  %i.ts = load ptr, ptr %i.tr, align 8, !tbaa !11 ; 2 uses
  %.not.i308 = icmp eq ptr %i.ts, null
  br i1 %.not.i308, label %bb.gb, label %.thread.i309

.thread.i309:                                     ; preds = %bb.ga
  tail call void @free(ptr noundef nonnull %i.ts) #18
  br label %bb.gb

bb.gb:                                            ; preds = %.thread.i309, %bb.ga
  tail call void @free(ptr noundef nonnull %i.tp) #18
  br label %Vec_PtrFreeP.exit310

Vec_PtrFreeP.exit310:                             ; preds = %.thread327, %bb.gb
  %i.tt = load ptr, ptr %i.b, align 8, !tbaa !26  ; 3 uses
  %i.tu = icmp eq ptr %i.tt, null
  br i1 %i.tu, label %Vec_IntFreeP.exit313, label %bb.gc

bb.gc:                                            ; preds = %Vec_PtrFreeP.exit310
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tt, i64 8
  %i.tw = load ptr, ptr %i.tv, align 8, !tbaa !16 ; 2 uses
  %.not.i311 = icmp eq ptr %i.tw, null
  br i1 %.not.i311, label %bb.gd, label %.thread.i312

.thread.i312:                                     ; preds = %bb.gc
  tail call void @free(ptr noundef nonnull %i.tw) #18
  br label %bb.gd

bb.gd:                                            ; preds = %.thread.i312, %bb.gc
  tail call void @free(ptr noundef nonnull %i.tt) #18
  br label %Vec_IntFreeP.exit313

Vec_IntFreeP.exit313:                             ; preds = %bb.gd, %Vec_PtrFreeP.exit310, %bb.fw, %Vec_IntFreeP.exit283, %Vec_IntFreeP.exit, %bb.g
  %.0110 = phi ptr [ null, %bb.g ], [ %i.tg, %bb.fw ], [ null, %Vec_IntFreeP.exit ], [ null, %Vec_IntFreeP.exit283 ], [ null, %Vec_PtrFreeP.exit310 ], [ null, %bb.gd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret ptr %.0110
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: inlinehint mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define internal fastcc void @Vec_PtrFreeP(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #8 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !24     ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !11   ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %.thread

.thread:                                          ; preds = %bb.b
  tail call void @free(ptr noundef nonnull %i.d) #18
  %i.e = load ptr, ptr %0, align 8, !tbaa !24     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr null, ptr %i.f, align 8, !tbaa !11
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.thread
  %i.g = phi ptr [ %i.e, %.thread ], [ %i.a, %bb.b ]
  tail call void @free(ptr noundef nonnull %i.g) #18
  store ptr null, ptr %0, align 8, !tbaa !24
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define internal fastcc void @Vec_IntFreeP(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #8 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !26     ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !16   ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %.thread

.thread:                                          ; preds = %bb.b
  tail call void @free(ptr noundef nonnull %i.d) #18
  %i.e = load ptr, ptr %0, align 8, !tbaa !26     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr null, ptr %i.f, align 8, !tbaa !16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.thread
  %i.g = phi ptr [ %i.e, %.thread ], [ %i.a, %bb.b ]
  tail call void @free(ptr noundef nonnull %i.g) #18
  store ptr null, ptr %0, align 8, !tbaa !26
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #6

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef ptr @Exp_Reverse(ptr nofree noundef readonly returned captures(ret: address, provenance) %0) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !18   ; 2 uses
  %i.c = icmp sgt i32 %i.b, 1
  br i1 %i.c, label %.lr.ph.i, label %Vec_IntReverseOrder.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !16   ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.b ] ; 3 uses
  %i.f = phi i32 [ %i.b, %.lr.ph.i ], [ %i.s, %bb.b ]
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.i ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !17
  %i.i = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.j = xor i32 %i.i, -1                         ; 2 uses
  %i.k = add i32 %i.f, %i.j
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4, !tbaa !17
  store i32 %i.n, ptr %i.g, align 4, !tbaa !17
  %i.o = load i32, ptr %i.a, align 4, !tbaa !18
  %i.p = add i32 %i.o, %i.j
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.q
  store i32 %i.h, ptr %i.r, align 4, !tbaa !17
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.s = load i32, ptr %i.a, align 4, !tbaa !18   ; 2 uses
  %i.t = sdiv i32 %i.s, 2
  %i.u = sext i32 %i.t to i64
  %i.v = icmp slt i64 %indvars.iv.next.i, %i.u
  br i1 %i.v, label %bb.b, label %Vec_IntReverseOrder.exit, !llvm.loop !42

Vec_IntReverseOrder.exit:                         ; preds = %bb.b, %bb.a
  ret ptr %0
}

; Function Attrs: nounwind uwtable
define noalias noundef ptr @Mio_ParseFormulaTruth(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call ptr @Mio_ParseFormula(ptr noundef %0, ptr noundef %1, i32 noundef %2) ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.t, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp slt i32 %2, 7
  %i.d = add nsw i32 %2, -6
  %i.e = shl nuw i32 1, %i.d
  %i.f = select i1 %i.c, i32 1, i32 %i.e          ; 41 uses
  %i.g = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #16 ; 4 uses
  %spec.store.select.i.i = tail call i32 @llvm.umax.i32(i32 %i.f, i32 16) ; 2 uses
  store i32 %spec.store.select.i.i, ptr %i.g, align 8, !tbaa !69
  %i.h = sext i32 %spec.store.select.i.i to i64
  %i.i = shl nsw i64 %i.h, 3
  %i.j = tail call noalias ptr @malloc(i64 noundef %i.i) #16 ; 30 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.j, ptr %i.l, align 8, !tbaa !31
  store i32 %i.f, ptr %i.k, align 4, !tbaa !70
  %i.m = sext i32 %i.f to i64
  %i.n = shl nsw i64 %i.m, 3                      ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.j, i8 0, i64 %i.n, i1 false)
  %i.o = sext i32 %2 to i64
  %i.p = shl nsw i64 %i.o, 3
  %i.q = tail call noalias ptr @malloc(i64 noundef %i.p) #16 ; 12 uses
  %i.r = icmp sgt i32 %2, 0                       ; 2 uses
  br i1 %i.r, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b
  %wide.trip.count.i = zext nneg i32 %2 to i64    ; 2 uses
  br label %bb.c

.lr.ph195.i:                                      ; preds = %bb.c
  %i.s = icmp sgt i32 %i.f, 0                     ; 2 uses
  %wide.trip.count229.i = zext i32 %i.f to i64    ; 2 uses
  %min.iters.check54 = icmp ult i32 %i.f, 4
  %n.vec56 = and i64 %wide.trip.count229.i, 2147483644
  %exitcond230.not.i = icmp eq i32 %i.f, 1
  %exitcond230.not.i.1 = icmp eq i32 %i.f, 2
  %min.iters.check = icmp ult i32 %i.f, 4
  %n.vec = and i64 %wide.trip.count229.i, 2147483644
  %exitcond235.not.i = icmp eq i32 %i.f, 1
  %exitcond235.not.i.1 = icmp eq i32 %i.f, 2
  br label %bb.d

bb.c:                                             ; preds = %bb.c, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.c ] ; 2 uses
  %i.t = tail call noalias ptr @malloc(i64 noundef %i.n) #16
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.i
  store ptr %i.t, ptr %i.u, align 8, !tbaa !71
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.lr.ph195.i, label %bb.c, !llvm.loop !43

bb.d:                                             ; preds = %.loopexit.i, %.lr.ph195.i
  %indvars.iv236.i = phi i64 [ 0, %.lr.ph195.i ], [ %indvars.iv.next237.i, %.loopexit.i ] ; 6 uses
  %i.v = icmp samesign ult i64 %indvars.iv236.i, 6
  br i1 %i.v, label %.preheader.i, label %.preheader185.i

.preheader185.i:                                  ; preds = %bb.d
  br i1 %i.s, label %.lr.ph190.i, label %.loopexit.i

.lr.ph190.i:                                      ; preds = %.preheader185.i
  %i.w = trunc i64 %indvars.iv236.i to i32
  %i.x = add i32 %i.w, -6                         ; 3 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv236.i
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !71   ; 4 uses
  br i1 %min.iters.check54, label %scalar.ph53, label %vector.ph55

vector.ph55:                                      ; preds = %.lr.ph190.i
  %i.aa = shl nuw i32 1, %i.x
  %broadcast.splatinsert57 = insertelement <2 x i32> poison, i32 %i.aa, i64 0
  %broadcast.splat58 = shufflevector <2 x i32> %broadcast.splatinsert57, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body59

vector.body59:                                    ; preds = %vector.body59, %vector.ph55
  %index60 = phi i64 [ 0, %vector.ph55 ], [ %index.next61, %vector.body59 ] ; 2 uses
  %vec.ind = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph55 ], [ %vec.ind.next, %vector.body59 ] ; 3 uses
  %step.add = add <2 x i32> %vec.ind, splat (i32 2)
  %i.ab = and <2 x i32> %broadcast.splat58, %vec.ind
  %i.ac = and <2 x i32> %broadcast.splat58, %step.add
  %i.ad = icmp ne <2 x i32> %i.ab, zeroinitializer
  %i.ae = icmp ne <2 x i32> %i.ac, zeroinitializer
  %i.af = sext <2 x i1> %i.ad to <2 x i64>
  %i.ag = sext <2 x i1> %i.ae to <2 x i64>
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %index60 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store <2 x i64> %i.af, ptr %i.ah, align 8, !tbaa !73
  store <2 x i64> %i.ag, ptr %i.ai, align 8, !tbaa !73
  %index.next61 = add nuw i64 %index60, 4         ; 2 uses
  %vec.ind.next = add <2 x i32> %vec.ind, splat (i32 4)
  %i.aj = icmp eq i64 %index.next61, %n.vec56
  br i1 %i.aj, label %.loopexit.i, label %vector.body59, !llvm.loop !44

.preheader.i:                                     ; preds = %bb.d
  br i1 %i.s, label %.lr.ph192.i, label %.loopexit.i

.lr.ph192.i:                                      ; preds = %.preheader.i
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr @Exp_Truth.Truth6, i64 %indvars.iv236.i
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !73 ; 4 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv236.i
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !71 ; 4 uses
  br i1 %min.iters.check, label %scalar.ph, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph192.i
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.al, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %index ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store <2 x i64> %broadcast.splat, ptr %i.ao, align 8, !tbaa !73
  store <2 x i64> %broadcast.splat, ptr %i.ap, align 8, !tbaa !73
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %.loopexit.i, label %vector.body, !llvm.loop !45

scalar.ph:                                        ; preds = %.lr.ph192.i
  store i64 %i.al, ptr %i.an, align 8, !tbaa !73
  br i1 %exitcond235.not.i, label %.loopexit.i, label %scalar.ph.1

scalar.ph.1:                                      ; preds = %scalar.ph
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i64 %i.al, ptr %i.ar, align 8, !tbaa !73
  br i1 %exitcond235.not.i.1, label %.loopexit.i, label %scalar.ph.2

scalar.ph.2:                                      ; preds = %scalar.ph.1
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store i64 %i.al, ptr %i.as, align 8, !tbaa !73
  br label %.loopexit.i

scalar.ph53:                                      ; preds = %.lr.ph190.i
  store i64 0, ptr %i.z, align 8, !tbaa !73
  br i1 %exitcond230.not.i, label %.loopexit.i, label %scalar.ph53.1

scalar.ph53.1:                                    ; preds = %scalar.ph53
  %.not110.i.1 = icmp eq i32 %i.x, 0
  %i.at = sext i1 %.not110.i.1 to i64
  %i.au = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i64 %i.at, ptr %i.au, align 8, !tbaa !73
  br i1 %exitcond230.not.i.1, label %.loopexit.i, label %scalar.ph53.2

scalar.ph53.2:                                    ; preds = %scalar.ph53.1
  %i.av = icmp eq i32 %i.x, 1
  %i.aw = sext i1 %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store i64 %i.aw, ptr %i.ax, align 8, !tbaa !73
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %vector.body59, %scalar.ph53, %scalar.ph53.1, %scalar.ph53.2, %vector.body, %scalar.ph, %scalar.ph.1, %scalar.ph.2, %.preheader.i, %.preheader185.i
  %indvars.iv.next237.i = add nuw nsw i64 %indvars.iv236.i, 1 ; 2 uses
  %exitcond240.not.i = icmp eq i64 %indvars.iv.next237.i, %wide.trip.count.i
  br i1 %exitcond240.not.i, label %._crit_edge.i, label %bb.d, !llvm.loop !46

._crit_edge.i:                                    ; preds = %.loopexit.i, %bb.b
  %i.ay = getelementptr i8, ptr %i.a, i64 4       ; 3 uses
  %.val115.i = load i32, ptr %i.ay, align 4, !tbaa !18 ; 5 uses
  %i.az = sdiv i32 %.val115.i, 2                  ; 3 uses
  %i.ba = sext i32 %i.az to i64
  %i.bb = shl nsw i64 %i.ba, 3
  %i.bc = tail call noalias ptr @malloc(i64 noundef %i.bb) #16 ; 11 uses
  %i.bd = icmp sgt i32 %.val115.i, 1              ; 2 uses
  br i1 %i.bd, label %.lr.ph198.i, label %._crit_edge199.i

.lr.ph198.i:                                      ; preds = %._crit_edge.i
  %wide.trip.count244.i = zext nneg i32 %i.az to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph198.i
  %indvars.iv241.i = phi i64 [ 0, %.lr.ph198.i ], [ %indvars.iv.next242.i, %bb.e ] ; 2 uses
  %i.be = tail call noalias ptr @malloc(i64 noundef %i.n) #16
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %indvars.iv241.i
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !71
  %indvars.iv.next242.i = add nuw nsw i64 %indvars.iv241.i, 1 ; 2 uses
  %exitcond245.not.i = icmp eq i64 %indvars.iv.next242.i, %wide.trip.count244.i
  br i1 %exitcond245.not.i, label %._crit_edge199.i, label %bb.e, !llvm.loop !47

._crit_edge199.i:                                 ; preds = %bb.e, %._crit_edge.i
  %i.bg = tail call noalias ptr @malloc(i64 noundef %i.n) #16 ; 16 uses
  %i.bh = tail call noalias ptr @malloc(i64 noundef %i.n) #16 ; 16 uses
  br i1 %i.bd, label %.lr.ph205.i, label %._crit_edge206.i

.lr.ph205.i:                                      ; preds = %._crit_edge199.i
  %i.bi = getelementptr i8, ptr %i.a, i64 8
  %.val111.i = load ptr, ptr %i.bi, align 8, !tbaa !16
  %i.bj = icmp sgt i32 %i.f, 0                    ; 8 uses
  %i.bk = zext i32 %i.f to i64                    ; 7 uses
  %i.bl = shl nuw nsw i64 %i.bk, 3                ; 8 uses
  %i.bm = shl nsw i32 %2, 1                       ; 2 uses
  %wide.trip.count254.i = zext nneg i32 %i.az to i64
  %min.iters.check115 = icmp ult i32 %i.f, 4
  %n.vec117 = and i64 %i.bk, 2147483644
  %exitcond.not.i.i = icmp eq i32 %i.f, 1
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %exitcond.not.i.i.1 = icmp eq i32 %i.f, 2
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %min.iters.check103 = icmp ult i32 %i.f, 4
  %n.vec105 = and i64 %i.bk, 2147483644
  %exitcond71.not.i.i = icmp eq i32 %i.f, 1
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %exitcond71.not.i.i.1 = icmp eq i32 %i.f, 2
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %min.iters.check91 = icmp ult i32 %i.f, 4
  %n.vec93 = and i64 %i.bk, 2147483644
  %exitcond.not.i129.i = icmp eq i32 %i.f, 1
  %i.br = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %exitcond.not.i129.i.1 = icmp eq i32 %i.f, 2
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %min.iters.check79 = icmp ult i32 %i.f, 4
  %n.vec81 = and i64 %i.bk, 2147483644
  %exitcond71.not.i141.i = icmp eq i32 %i.f, 1
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %exitcond71.not.i141.i.1 = icmp eq i32 %i.f, 2
end_hunk_0
begin_hunk_1_@Mio_ParseFormulaTruth:bb.a

vector.body94:                                    ; preds = %.lr.ph51.split.i126.i, %vector.body94
  %index95 = phi i64 [ %index.next98, %vector.body94 ], [ 0, %.lr.ph51.split.i126.i ] ; 3 uses
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %index95 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  %wide.load96 = load <2 x i64>, ptr %i.ek, align 8, !tbaa !73
  %wide.load97 = load <2 x i64>, ptr %i.el, align 8, !tbaa !73
  %i.em = xor <2 x i64> %wide.load96, splat (i64 -1)
  %i.en = xor <2 x i64> %wide.load97, splat (i64 -1)
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %index95 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  store <2 x i64> %i.em, ptr %i.eo, align 8, !tbaa !73
  store <2 x i64> %i.en, ptr %i.ep, align 8, !tbaa !73
  %index.next98 = add nuw i64 %index95, 4         ; 2 uses
  %i.eq = icmp eq i64 %index.next98, %n.vec93
  br i1 %i.eq, label %.lr.ph201.i, label %vector.body94, !llvm.loop !50

.preheader.i134.i:                                ; preds = %bb.h
  br i1 %i.bj, label %.lr.ph53.i135.i, label %._crit_edge202.i

.lr.ph53.i135.i:                                  ; preds = %.preheader.i134.i
  %i.er = and i32 %i.dx, 1
  %.not40.i136.i = icmp eq i32 %i.er, 0
  br i1 %.not40.i136.i, label %.lr.ph53.split.us.i142.i, label %.lr.ph53.split.i138.i

.lr.ph53.split.us.i142.i:                         ; preds = %.lr.ph53.i135.i
  %i.es = ashr exact i32 %i.dx, 1
  %i.et = sext i32 %i.es to i64
  %i.eu = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.et
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !71
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bh, ptr noundef nonnull align 8 dereferenceable(1) %i.ev, i64 %i.bl, i1 false), !tbaa !73
  br label %.lr.ph201.i

.lr.ph53.split.i138.i:                            ; preds = %.lr.ph53.i135.i
  %i.ew = sdiv i32 %i.dx, 2
  %i.ex = sext i32 %i.ew to i64
  %i.ey = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.ex
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !71 ; 4 uses
  br i1 %min.iters.check79, label %scalar.ph78, label %vector.body82

vector.body82:                                    ; preds = %.lr.ph53.split.i138.i, %vector.body82
  %index83 = phi i64 [ %index.next86, %vector.body82 ], [ 0, %.lr.ph53.split.i138.i ] ; 3 uses
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %index83 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  %wide.load84 = load <2 x i64>, ptr %i.fa, align 8, !tbaa !73
  %wide.load85 = load <2 x i64>, ptr %i.fb, align 8, !tbaa !73
  %i.fc = xor <2 x i64> %wide.load84, splat (i64 -1)
  %i.fd = xor <2 x i64> %wide.load85, splat (i64 -1)
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %index83 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  store <2 x i64> %i.fc, ptr %i.fe, align 8, !tbaa !73
  store <2 x i64> %i.fd, ptr %i.ff, align 8, !tbaa !73
  %index.next86 = add nuw i64 %index83, 4         ; 2 uses
  %i.fg = icmp eq i64 %index.next86, %n.vec81
  br i1 %i.fg, label %.lr.ph201.i, label %vector.body82, !llvm.loop !51

scalar.ph78:                                      ; preds = %.lr.ph53.split.i138.i
  %i.fh = load i64, ptr %i.ez, align 8, !tbaa !73
  %i.fi = xor i64 %i.fh, -1
  store i64 %i.fi, ptr %i.bh, align 8, !tbaa !73
  br i1 %exitcond71.not.i141.i, label %.lr.ph201.i, label %scalar.ph78.1

scalar.ph78.1:                                    ; preds = %scalar.ph78
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !73
  %i.fl = xor i64 %i.fk, -1
  store i64 %i.fl, ptr %i.bt, align 8, !tbaa !73
  br i1 %exitcond71.not.i141.i.1, label %.lr.ph201.i, label %scalar.ph78.2

scalar.ph78.2:                                    ; preds = %scalar.ph78.1
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !73
  %i.fo = xor i64 %i.fn, -1
  store i64 %i.fo, ptr %i.bu, align 8, !tbaa !73
  br label %.lr.ph201.i

scalar.ph90:                                      ; preds = %.lr.ph51.split.i126.i
  %i.fp = load i64, ptr %i.ej, align 8, !tbaa !73
  %i.fq = xor i64 %i.fp, -1
  store i64 %i.fq, ptr %i.bh, align 8, !tbaa !73
  br i1 %exitcond.not.i129.i, label %.lr.ph201.i, label %scalar.ph90.1

scalar.ph90.1:                                    ; preds = %scalar.ph90
  %i.fr = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !73
  %i.ft = xor i64 %i.fs, -1
  store i64 %i.ft, ptr %i.br, align 8, !tbaa !73
  br i1 %exitcond.not.i129.i.1, label %.lr.ph201.i, label %scalar.ph90.2

scalar.ph90.2:                                    ; preds = %scalar.ph90.1
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !73
  %i.fw = xor i64 %i.fv, -1
  store i64 %i.fw, ptr %i.bs, align 8, !tbaa !73
  br label %.lr.ph201.i

.lr.ph201.i:                                      ; preds = %vector.body94, %scalar.ph90, %scalar.ph90.1, %scalar.ph90.2, %vector.body82, %scalar.ph78, %scalar.ph78.1, %scalar.ph78.2, %.lr.ph53.split.us.i142.i, %.lr.ph51.split.us.i130.i, %.lr.ph49.preheader.i121.i, %.lr.ph.preheader.i119.i
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %indvars.iv251.i
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !71 ; 2 uses
  br i1 %min.iters.check66, label %scalar.ph65, label %vector.body69

vector.body69:                                    ; preds = %.lr.ph201.i, %vector.body69
  %index70 = phi i64 [ %index.next74, %vector.body69 ], [ 0, %.lr.ph201.i ] ; 4 uses
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %index70 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  %wide.load = load <2 x i64>, ptr %i.fz, align 8, !tbaa !73
  %wide.load71 = load <2 x i64>, ptr %i.ga, align 8, !tbaa !73
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %index70 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 16
  %wide.load72 = load <2 x i64>, ptr %i.gb, align 8, !tbaa !73
  %wide.load73 = load <2 x i64>, ptr %i.gc, align 8, !tbaa !73
  %i.gd = and <2 x i64> %wide.load72, %wide.load
  %i.ge = and <2 x i64> %wide.load73, %wide.load71
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.fy, i64 %index70 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  store <2 x i64> %i.gd, ptr %i.gf, align 8, !tbaa !73
  store <2 x i64> %i.ge, ptr %i.gg, align 8, !tbaa !73
  %index.next74 = add nuw i64 %index70, 4         ; 2 uses
  %i.gh = icmp eq i64 %index.next74, %n.vec68
  br i1 %i.gh, label %._crit_edge202.i, label %vector.body69, !llvm.loop !52

scalar.ph65:                                      ; preds = %.lr.ph201.i, %scalar.ph65
  %indvars.iv246.i = phi i64 [ %indvars.iv.next247.i, %scalar.ph65 ], [ 0, %.lr.ph201.i ] ; 4 uses
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv246.i
  %i.gj = load i64, ptr %i.gi, align 8, !tbaa !73
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv246.i
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !73
  %i.gm = and i64 %i.gl, %i.gj
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.fy, i64 %indvars.iv246.i
  store i64 %i.gm, ptr %i.gn, align 8, !tbaa !73
  %indvars.iv.next247.i = add nuw nsw i64 %indvars.iv246.i, 1 ; 2 uses
  %exitcond250.not.i = icmp eq i64 %indvars.iv.next247.i, %i.bk
  br i1 %exitcond250.not.i, label %._crit_edge202.i, label %scalar.ph65, !llvm.loop !53

._crit_edge202.i:                                 ; preds = %vector.body69, %scalar.ph65, %.preheader.i134.i, %.preheader41.i122.i, %.preheader43.i120.i, %.preheader45.i118.i
  %indvars.iv.next252.i = add nuw nsw i64 %indvars.iv251.i, 1 ; 2 uses
  %exitcond255.not.i = icmp eq i64 %indvars.iv.next252.i, %wide.trip.count254.i
  br i1 %exitcond255.not.i, label %._crit_edge206.i, label %bb.f, !llvm.loop !54

._crit_edge206.i:                                 ; preds = %._crit_edge202.i, %._crit_edge199.i
  %.not.i = icmp eq ptr %i.bg, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %._crit_edge206.i
  tail call void @free(ptr noundef nonnull %i.bg) #18
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge206.i
  %.not105.i = icmp eq ptr %i.bh, null
  br i1 %.not105.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @free(ptr noundef nonnull %i.bh) #18
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.go = getelementptr i8, ptr %i.a, i64 8       ; 2 uses
  %.val117.i = load ptr, ptr %i.go, align 8, !tbaa !16
  %i.gp = sext i32 %.val115.i to i64
  %i.gq = getelementptr [4 x i8], ptr %.val117.i, i64 %i.gp
  %i.gr = getelementptr i8, ptr %i.gq, i64 -4
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !17 ; 8 uses
  switch i32 %i.gs, label %bb.m [
    i32 -1, label %.preheader43.i149.i
    i32 -2, label %.preheader45.i147.i
  ]

.preheader45.i147.i:                              ; preds = %bb.l
  %i.gt = icmp sgt i32 %i.f, 0
  br i1 %i.gt, label %.lr.ph.preheader.i148.i, label %Exp_TruthLit.exit175.i

.lr.ph.preheader.i148.i:                          ; preds = %.preheader45.i147.i
  %i.gu = zext nneg i32 %i.f to i64
  %i.gv = shl nuw nsw i64 %i.gu, 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.j, i8 -1, i64 %i.gv, i1 false), !tbaa !73
  br label %Exp_TruthLit.exit175.i

.preheader43.i149.i:                              ; preds = %bb.l
  %i.gw = icmp sgt i32 %i.f, 0
  br i1 %i.gw, label %.lr.ph49.preheader.i150.i, label %Exp_TruthLit.exit175.i

.lr.ph49.preheader.i150.i:                        ; preds = %.preheader43.i149.i
  %i.gx = zext nneg i32 %i.f to i64
  %i.gy = shl nuw nsw i64 %i.gx, 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.j, i8 0, i64 %i.gy, i1 false), !tbaa !73
  br label %Exp_TruthLit.exit175.i

bb.m:                                             ; preds = %bb.l
  %i.gz = shl nsw i32 %2, 1
  %i.ha = icmp slt i32 %i.gs, %i.gz
  %i.hb = icmp sgt i32 %i.f, 0                    ; 2 uses
  br i1 %i.ha, label %.preheader.i163.i, label %.preheader41.i151.i

.preheader41.i151.i:                              ; preds = %bb.m
  br i1 %i.hb, label %.lr.ph51.i152.i, label %Exp_TruthLit.exit175.i

.lr.ph51.i152.i:                                  ; preds = %.preheader41.i151.i
  %i.hc = and i32 %i.gs, 1
  %.not.i153.i = icmp eq i32 %i.hc, 0
  %wide.trip.count65.i154.i = zext nneg i32 %i.f to i64 ; 6 uses
  %3 = ptrtoaddr ptr %i.j to i64                  ; 2 uses
  br i1 %.not.i153.i, label %.lr.ph51.split.us.i159.i, label %.lr.ph51.split.i155.i

.lr.ph51.split.us.i159.i:                         ; preds = %.lr.ph51.i152.i
  %i.hd = ashr exact i32 %i.gs, 1
  %i.he = sub nsw i32 %i.hd, %2
  %i.hf = sext i32 %i.he to i64
  %i.hg = getelementptr inbounds [8 x i8], ptr %i.bc, i64 %i.hf
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !71 ; 7 uses
  %min.iters.check141 = icmp ult i32 %i.f, 8
  %i.hi = ptrtoaddr ptr %i.hh to i64
  %i.hj = sub i64 %i.hi, %3
  %diff.check139 = icmp ugt i64 %i.hj, -32
  %or.cond = select i1 %min.iters.check141, i1 true, i1 %diff.check139
  br i1 %or.cond, label %scalar.ph140.preheader, label %vector.ph142

scalar.ph140.preheader:                           ; preds = %.lr.ph51.split.us.i159.i
  %xtraiter205 = and i64 %wide.trip.count65.i154.i, 3 ; 3 uses
  %i.hk = icmp ult i32 %i.f, 4
  br i1 %i.hk, label %scalar.ph140.epil.preheader, label %scalar.ph140.preheader.new

scalar.ph140.preheader.new:                       ; preds = %scalar.ph140.preheader
  %unroll_iter209 = and i64 %wide.trip.count65.i154.i, 2147483644
  br label %scalar.ph140

vector.ph142:                                     ; preds = %.lr.ph51.split.us.i159.i
  %n.vec143 = and i64 %wide.trip.count65.i154.i, 2147483644
  br label %vector.body144

vector.body144:                                   ; preds = %vector.body144, %vector.ph142
  %index145 = phi i64 [ 0, %vector.ph142 ], [ %index.next148, %vector.body144 ] ; 3 uses
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.hh, i64 %index145 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 16
  %wide.load146 = load <2 x i64>, ptr %i.hl, align 8, !tbaa !73
  %wide.load147 = load <2 x i64>, ptr %i.hm, align 8, !tbaa !73
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %index145 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 16
  store <2 x i64> %wide.load146, ptr %i.hn, align 8, !tbaa !73
  store <2 x i64> %wide.load147, ptr %i.ho, align 8, !tbaa !73
  %index.next148 = add nuw i64 %index145, 4       ; 2 uses
  %i.hp = icmp eq i64 %index.next148, %n.vec143
  br i1 %i.hp, label %Exp_TruthLit.exit175.i, label %vector.body144, !llvm.loop !55

scalar.ph140:                                     ; preds = %scalar.ph140, %scalar.ph140.preheader.new
  %indvars.iv62.i160.i = phi i64 [ 0, %scalar.ph140.preheader.new ], [ %indvars.iv.next63.i161.i.3, %scalar.ph140 ] ; 6 uses
  %niter210 = phi i64 [ 0, %scalar.ph140.preheader.new ], [ %niter210.next.3, %scalar.ph140 ]
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.hh, i64 %indvars.iv62.i160.i
  %i.hr = load i64, ptr %i.hq, align 8, !tbaa !73
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv62.i160.i
  store i64 %i.hr, ptr %i.hs, align 8, !tbaa !73
  %indvars.iv.next63.i161.i = or disjoint i64 %indvars.iv62.i160.i, 1 ; 2 uses
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %i.hh, i64 %indvars.iv.next63.i161.i
  %i.hu = load i64, ptr %i.ht, align 8, !tbaa !73
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next63.i161.i
  store i64 %i.hu, ptr %i.hv, align 8, !tbaa !73
  %indvars.iv.next63.i161.i.1 = or disjoint i64 %indvars.iv62.i160.i, 2 ; 2 uses
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.hh, i64 %indvars.iv.next63.i161.i.1
  %i.hx = load i64, ptr %i.hw, align 8, !tbaa !73
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next63.i161.i.1
  store i64 %i.hx, ptr %i.hy, align 8, !tbaa !73
  %indvars.iv.next63.i161.i.2 = or disjoint i64 %indvars.iv62.i160.i, 3 ; 2 uses
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.hh, i64 %indvars.iv.next63.i161.i.2
  %i.ia = load i64, ptr %i.hz, align 8, !tbaa !73
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next63.i161.i.2
  store i64 %i.ia, ptr %i.ib, align 8, !tbaa !73
  %indvars.iv.next63.i161.i.3 = add nuw nsw i64 %indvars.iv62.i160.i, 4 ; 2 uses
  %niter210.next.3 = add i64 %niter210, 4         ; 2 uses
  %niter210.ncmp.3 = icmp eq i64 %niter210.next.3, %unroll_iter209
  br i1 %niter210.ncmp.3, label %Exp_TruthLit.exit175.i.loopexit190.unr-lcssa, label %scalar.ph140, !llvm.loop !56

.lr.ph51.split.i155.i:                            ; preds = %.lr.ph51.i152.i
  %i.ic = sdiv i32 %i.gs, 2
  %i.id = sub nsw i32 %i.ic, %2
  %i.ie = sext i32 %i.id to i64
  %i.if = getelementptr inbounds [8 x i8], ptr %i.bc, i64 %i.ie
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !71 ; 7 uses
  %min.iters.check127 = icmp ult i32 %i.f, 6
  %i.ih = ptrtoaddr ptr %i.ig to i64
  %i.ii = sub i64 %i.ih, %3
  %diff.check = icmp ugt i64 %i.ii, -32
  %or.cond182 = select i1 %min.iters.check127, i1 true, i1 %diff.check
  br i1 %or.cond182, label %scalar.ph126.preheader, label %vector.ph128

scalar.ph126.preheader:                           ; preds = %.lr.ph51.split.i155.i
  %xtraiter = and i64 %wide.trip.count65.i154.i, 3 ; 3 uses
  %i.ij = icmp ult i32 %i.f, 4
  br i1 %i.ij, label %scalar.ph126.epil.preheader, label %scalar.ph126.preheader.new

scalar.ph126.preheader.new:                       ; preds = %scalar.ph126.preheader
  %unroll_iter = and i64 %wide.trip.count65.i154.i, 2147483644
  br label %scalar.ph126

vector.ph128:                                     ; preds = %.lr.ph51.split.i155.i
  %n.vec129 = and i64 %wide.trip.count65.i154.i, 2147483644
  br label %vector.body130

vector.body130:                                   ; preds = %vector.body130, %vector.ph128
  %index131 = phi i64 [ 0, %vector.ph128 ], [ %index.next134, %vector.body130 ] ; 3 uses
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.ig, i64 %index131 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 16
  %wide.load132 = load <2 x i64>, ptr %i.ik, align 8, !tbaa !73
  %wide.load133 = load <2 x i64>, ptr %i.il, align 8, !tbaa !73
  %i.im = xor <2 x i64> %wide.load132, splat (i64 -1)
  %i.in = xor <2 x i64> %wide.load133, splat (i64 -1)
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %index131 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 16
  store <2 x i64> %i.im, ptr %i.io, align 8, !tbaa !73
  store <2 x i64> %i.in, ptr %i.ip, align 8, !tbaa !73
  %index.next134 = add nuw i64 %index131, 4       ; 2 uses
  %i.iq = icmp eq i64 %index.next134, %n.vec129
  br i1 %i.iq, label %Exp_TruthLit.exit175.i, label %vector.body130, !llvm.loop !57

.preheader.i163.i:                                ; preds = %bb.m
  br i1 %i.hb, label %.lr.ph53.i164.i, label %Exp_TruthLit.exit175.i

.lr.ph53.i164.i:                                  ; preds = %.preheader.i163.i
  %i.ir = and i32 %i.gs, 1
  %.not40.i165.i = icmp eq i32 %i.ir, 0
  %wide.trip.count75.i166.i = zext nneg i32 %i.f to i64 ; 6 uses
  %4 = ptrtoaddr ptr %i.j to i64                  ; 2 uses
  br i1 %.not40.i165.i, label %.lr.ph53.split.us.i171.i, label %.lr.ph53.split.i167.i

.lr.ph53.split.us.i171.i:                         ; preds = %.lr.ph53.i164.i
  %i.is = ashr exact i32 %i.gs, 1
  %i.it = sext i32 %i.is to i64
  %i.iu = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.it
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !71 ; 7 uses
  %min.iters.check169 = icmp ult i32 %i.f, 8
  %i.iw = ptrtoaddr ptr %i.iv to i64
  %i.ix = sub i64 %i.iw, %4
  %diff.check167 = icmp ugt i64 %i.ix, -32
  %or.cond184 = select i1 %min.iters.check169, i1 true, i1 %diff.check167
  br i1 %or.cond184, label %scalar.ph168.preheader, label %vector.ph170

scalar.ph168.preheader:                           ; preds = %.lr.ph53.split.us.i171.i
  %xtraiter217 = and i64 %wide.trip.count75.i166.i, 3 ; 3 uses
  %i.iy = icmp ult i32 %i.f, 4
  br i1 %i.iy, label %scalar.ph168.epil.preheader, label %scalar.ph168.preheader.new

scalar.ph168.preheader.new:                       ; preds = %scalar.ph168.preheader
  %unroll_iter221 = and i64 %wide.trip.count75.i166.i, 2147483644
  br label %scalar.ph168

vector.ph170:                                     ; preds = %.lr.ph53.split.us.i171.i
  %n.vec171 = and i64 %wide.trip.count75.i166.i, 2147483644
  br label %vector.body172

vector.body172:                                   ; preds = %vector.body172, %vector.ph170
  %index173 = phi i64 [ 0, %vector.ph170 ], [ %index.next176, %vector.body172 ] ; 3 uses
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %i.iv, i64 %index173 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 16
  %wide.load174 = load <2 x i64>, ptr %i.iz, align 8, !tbaa !73
  %wide.load175 = load <2 x i64>, ptr %i.ja, align 8, !tbaa !73
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %index173 ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 16
  store <2 x i64> %wide.load174, ptr %i.jb, align 8, !tbaa !73
  store <2 x i64> %wide.load175, ptr %i.jc, align 8, !tbaa !73
  %index.next176 = add nuw i64 %index173, 4       ; 2 uses
  %i.jd = icmp eq i64 %index.next176, %n.vec171
  br i1 %i.jd, label %Exp_TruthLit.exit175.i, label %vector.body172, !llvm.loop !58

scalar.ph168:                                     ; preds = %scalar.ph168, %scalar.ph168.preheader.new
  %indvars.iv72.i172.i = phi i64 [ 0, %scalar.ph168.preheader.new ], [ %indvars.iv.next73.i173.i.3, %scalar.ph168 ] ; 6 uses
  %niter222 = phi i64 [ 0, %scalar.ph168.preheader.new ], [ %niter222.next.3, %scalar.ph168 ]
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %i.iv, i64 %indvars.iv72.i172.i
  %i.jf = load i64, ptr %i.je, align 8, !tbaa !73
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv72.i172.i
  store i64 %i.jf, ptr %i.jg, align 8, !tbaa !73
  %indvars.iv.next73.i173.i = or disjoint i64 %indvars.iv72.i172.i, 1 ; 2 uses
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %i.iv, i64 %indvars.iv.next73.i173.i
  %i.ji = load i64, ptr %i.jh, align 8, !tbaa !73
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next73.i173.i
  store i64 %i.ji, ptr %i.jj, align 8, !tbaa !73
  %indvars.iv.next73.i173.i.1 = or disjoint i64 %indvars.iv72.i172.i, 2 ; 2 uses
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %i.iv, i64 %indvars.iv.next73.i173.i.1
  %i.jl = load i64, ptr %i.jk, align 8, !tbaa !73
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next73.i173.i.1
  store i64 %i.jl, ptr %i.jm, align 8, !tbaa !73
  %indvars.iv.next73.i173.i.2 = or disjoint i64 %indvars.iv72.i172.i, 3 ; 2 uses
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %i.iv, i64 %indvars.iv.next73.i173.i.2
  %i.jo = load i64, ptr %i.jn, align 8, !tbaa !73
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next73.i173.i.2
  store i64 %i.jo, ptr %i.jp, align 8, !tbaa !73
  %indvars.iv.next73.i173.i.3 = add nuw nsw i64 %indvars.iv72.i172.i, 4 ; 2 uses
  %niter222.next.3 = add i64 %niter222, 4         ; 2 uses
  %niter222.ncmp.3 = icmp eq i64 %niter222.next.3, %unroll_iter221
  br i1 %niter222.ncmp.3, label %Exp_TruthLit.exit175.i.loopexit.unr-lcssa, label %scalar.ph168, !llvm.loop !59

.lr.ph53.split.i167.i:                            ; preds = %.lr.ph53.i164.i
  %i.jq = sdiv i32 %i.gs, 2
  %i.jr = sext i32 %i.jq to i64
  %i.js = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.jr
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !71 ; 7 uses
  %min.iters.check155 = icmp ult i32 %i.f, 6
  %i.ju = ptrtoaddr ptr %i.jt to i64
  %i.jv = sub i64 %i.ju, %4
  %diff.check153 = icmp ugt i64 %i.jv, -32
  %or.cond186 = select i1 %min.iters.check155, i1 true, i1 %diff.check153
  br i1 %or.cond186, label %scalar.ph154.preheader, label %vector.ph156

scalar.ph154.preheader:                           ; preds = %.lr.ph53.split.i167.i
  %xtraiter211 = and i64 %wide.trip.count75.i166.i, 3 ; 3 uses
  %i.jw = icmp ult i32 %i.f, 4
  br i1 %i.jw, label %scalar.ph154.epil.preheader, label %scalar.ph154.preheader.new

scalar.ph154.preheader.new:                       ; preds = %scalar.ph154.preheader
  %unroll_iter215 = and i64 %wide.trip.count75.i166.i, 2147483644
  br label %scalar.ph154

vector.ph156:                                     ; preds = %.lr.ph53.split.i167.i
  %n.vec157 = and i64 %wide.trip.count75.i166.i, 2147483644
  br label %vector.body158

vector.body158:                                   ; preds = %vector.body158, %vector.ph156
  %index159 = phi i64 [ 0, %vector.ph156 ], [ %index.next162, %vector.body158 ] ; 3 uses
  %i.jx = getelementptr inbounds nuw [8 x i8], ptr %i.jt, i64 %index159 ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 16
  %wide.load160 = load <2 x i64>, ptr %i.jx, align 8, !tbaa !73
  %wide.load161 = load <2 x i64>, ptr %i.jy, align 8, !tbaa !73
  %i.jz = xor <2 x i64> %wide.load160, splat (i64 -1)
  %i.ka = xor <2 x i64> %wide.load161, splat (i64 -1)
  %i.kb = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %index159 ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 16
  store <2 x i64> %i.jz, ptr %i.kb, align 8, !tbaa !73
  store <2 x i64> %i.ka, ptr %i.kc, align 8, !tbaa !73
  %index.next162 = add nuw i64 %index159, 4       ; 2 uses
  %i.kd = icmp eq i64 %index.next162, %n.vec157
  br i1 %i.kd, label %Exp_TruthLit.exit175.i, label %vector.body158, !llvm.loop !60

scalar.ph154:                                     ; preds = %scalar.ph154, %scalar.ph154.preheader.new
  %indvars.iv67.i168.i = phi i64 [ 0, %scalar.ph154.preheader.new ], [ %indvars.iv.next68.i169.i.3, %scalar.ph154 ] ; 6 uses
  %niter216 = phi i64 [ 0, %scalar.ph154.preheader.new ], [ %niter216.next.3, %scalar.ph154 ]
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr %i.jt, i64 %indvars.iv67.i168.i
  %i.kf = load i64, ptr %i.ke, align 8, !tbaa !73
  %i.kg = xor i64 %i.kf, -1
  %i.kh = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv67.i168.i
  store i64 %i.kg, ptr %i.kh, align 8, !tbaa !73
  %indvars.iv.next68.i169.i = or disjoint i64 %indvars.iv67.i168.i, 1 ; 2 uses
  %i.ki = getelementptr inbounds nuw [8 x i8], ptr %i.jt, i64 %indvars.iv.next68.i169.i
  %i.kj = load i64, ptr %i.ki, align 8, !tbaa !73
  %i.kk = xor i64 %i.kj, -1
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next68.i169.i
  store i64 %i.kk, ptr %i.kl, align 8, !tbaa !73
  %indvars.iv.next68.i169.i.1 = or disjoint i64 %indvars.iv67.i168.i, 2 ; 2 uses
  %i.km = getelementptr inbounds nuw [8 x i8], ptr %i.jt, i64 %indvars.iv.next68.i169.i.1
  %i.kn = load i64, ptr %i.km, align 8, !tbaa !73
  %i.ko = xor i64 %i.kn, -1
  %i.kp = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next68.i169.i.1
  store i64 %i.ko, ptr %i.kp, align 8, !tbaa !73
  %indvars.iv.next68.i169.i.2 = or disjoint i64 %indvars.iv67.i168.i, 3 ; 2 uses
  %i.kq = getelementptr inbounds nuw [8 x i8], ptr %i.jt, i64 %indvars.iv.next68.i169.i.2
  %i.kr = load i64, ptr %i.kq, align 8, !tbaa !73
  %i.ks = xor i64 %i.kr, -1
  %i.kt = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next68.i169.i.2
  store i64 %i.ks, ptr %i.kt, align 8, !tbaa !73
  %indvars.iv.next68.i169.i.3 = add nuw nsw i64 %indvars.iv67.i168.i, 4 ; 2 uses
  %niter216.next.3 = add i64 %niter216, 4         ; 2 uses
  %niter216.ncmp.3 = icmp eq i64 %niter216.next.3, %unroll_iter215
  br i1 %niter216.ncmp.3, label %Exp_TruthLit.exit175.i.loopexit188.unr-lcssa, label %scalar.ph154, !llvm.loop !61

scalar.ph126:                                     ; preds = %scalar.ph126, %scalar.ph126.preheader.new
  %indvars.iv.i156.i = phi i64 [ 0, %scalar.ph126.preheader.new ], [ %indvars.iv.next.i157.i.3, %scalar.ph126 ] ; 6 uses
  %niter = phi i64 [ 0, %scalar.ph126.preheader.new ], [ %niter.next.3, %scalar.ph126 ]
  %i.ku = getelementptr inbounds nuw [8 x i8], ptr %i.ig, i64 %indvars.iv.i156.i
  %i.kv = load i64, ptr %i.ku, align 8, !tbaa !73
  %i.kw = xor i64 %i.kv, -1
  %i.kx = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.i156.i
  store i64 %i.kw, ptr %i.kx, align 8, !tbaa !73
  %indvars.iv.next.i157.i = or disjoint i64 %indvars.iv.i156.i, 1 ; 2 uses
  %i.ky = getelementptr inbounds nuw [8 x i8], ptr %i.ig, i64 %indvars.iv.next.i157.i
  %i.kz = load i64, ptr %i.ky, align 8, !tbaa !73
  %i.la = xor i64 %i.kz, -1
  %i.lb = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next.i157.i
  store i64 %i.la, ptr %i.lb, align 8, !tbaa !73
  %indvars.iv.next.i157.i.1 = or disjoint i64 %indvars.iv.i156.i, 2 ; 2 uses
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %i.ig, i64 %indvars.iv.next.i157.i.1
  %i.ld = load i64, ptr %i.lc, align 8, !tbaa !73
  %i.le = xor i64 %i.ld, -1
  %i.lf = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next.i157.i.1
  store i64 %i.le, ptr %i.lf, align 8, !tbaa !73
  %indvars.iv.next.i157.i.2 = or disjoint i64 %indvars.iv.i156.i, 3 ; 2 uses
  %i.lg = getelementptr inbounds nuw [8 x i8], ptr %i.ig, i64 %indvars.iv.next.i157.i.2
  %i.lh = load i64, ptr %i.lg, align 8, !tbaa !73
  %i.li = xor i64 %i.lh, -1
  %i.lj = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next.i157.i.2
  store i64 %i.li, ptr %i.lj, align 8, !tbaa !73
  %indvars.iv.next.i157.i.3 = add nuw nsw i64 %indvars.iv.i156.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %Exp_TruthLit.exit175.i.loopexit192.unr-lcssa, label %scalar.ph126, !llvm.loop !62

Exp_TruthLit.exit175.i.loopexit.unr-lcssa:        ; preds = %scalar.ph168
  %lcmp.mod219.not = icmp eq i64 %xtraiter217, 0
  br i1 %lcmp.mod219.not, label %Exp_TruthLit.exit175.i, label %scalar.ph168.epil.preheader

scalar.ph168.epil.preheader:                      ; preds = %Exp_TruthLit.exit175.i.loopexit.unr-lcssa, %scalar.ph168.preheader
  %indvars.iv72.i172.i.epil.init = phi i64 [ 0, %scalar.ph168.preheader ], [ %indvars.iv.next73.i173.i.3, %Exp_TruthLit.exit175.i.loopexit.unr-lcssa ]
  %lcmp.mod220 = icmp ne i64 %xtraiter217, 0
  tail call void @llvm.assume(i1 %lcmp.mod220)
  br label %scalar.ph168.epil

scalar.ph168.epil:                                ; preds = %scalar.ph168.epil, %scalar.ph168.epil.preheader
  %indvars.iv72.i172.i.epil = phi i64 [ %indvars.iv.next73.i173.i.epil, %scalar.ph168.epil ], [ %indvars.iv72.i172.i.epil.init, %scalar.ph168.epil.preheader ] ; 3 uses
  %epil.iter218 = phi i64 [ %epil.iter218.next, %scalar.ph168.epil ], [ 0, %scalar.ph168.epil.preheader ]
  %i.lk = getelementptr inbounds nuw [8 x i8], ptr %i.iv, i64 %indvars.iv72.i172.i.epil
  %i.ll = load i64, ptr %i.lk, align 8, !tbaa !73
  %i.lm = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv72.i172.i.epil
  store i64 %i.ll, ptr %i.lm, align 8, !tbaa !73
  %indvars.iv.next73.i173.i.epil = add nuw nsw i64 %indvars.iv72.i172.i.epil, 1
  %epil.iter218.next = add i64 %epil.iter218, 1   ; 2 uses
  %epil.iter218.cmp.not = icmp eq i64 %epil.iter218.next, %xtraiter217
  br i1 %epil.iter218.cmp.not, label %Exp_TruthLit.exit175.i, label %scalar.ph168.epil, !llvm.loop !63

Exp_TruthLit.exit175.i.loopexit188.unr-lcssa:     ; preds = %scalar.ph154
  %lcmp.mod213.not = icmp eq i64 %xtraiter211, 0
  br i1 %lcmp.mod213.not, label %Exp_TruthLit.exit175.i, label %scalar.ph154.epil.preheader

scalar.ph154.epil.preheader:                      ; preds = %Exp_TruthLit.exit175.i.loopexit188.unr-lcssa, %scalar.ph154.preheader
  %indvars.iv67.i168.i.epil.init = phi i64 [ 0, %scalar.ph154.preheader ], [ %indvars.iv.next68.i169.i.3, %Exp_TruthLit.exit175.i.loopexit188.unr-lcssa ]
  %lcmp.mod214.a = icmp ne i64 %xtraiter211, 0
  tail call void @llvm.assume(i1 %lcmp.mod214.a)
  br label %scalar.ph154.epil

scalar.ph154.epil:                                ; preds = %scalar.ph154.epil, %scalar.ph154.epil.preheader
  %indvars.iv67.i168.i.epil = phi i64 [ %indvars.iv.next68.i169.i.epil, %scalar.ph154.epil ], [ %indvars.iv67.i168.i.epil.init, %scalar.ph154.epil.preheader ] ; 3 uses
  %epil.iter212 = phi i64 [ %epil.iter212.next, %scalar.ph154.epil ], [ 0, %scalar.ph154.epil.preheader ]
  %i.ln = getelementptr inbounds nuw [8 x i8], ptr %i.jt, i64 %indvars.iv67.i168.i.epil
  %i.lo = load i64, ptr %i.ln, align 8, !tbaa !73
  %i.lp = xor i64 %i.lo, -1
  %i.lq = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv67.i168.i.epil
  store i64 %i.lp, ptr %i.lq, align 8, !tbaa !73
  %indvars.iv.next68.i169.i.epil = add nuw nsw i64 %indvars.iv67.i168.i.epil, 1
  %epil.iter212.next = add i64 %epil.iter212, 1   ; 2 uses
  %epil.iter212.cmp.not = icmp eq i64 %epil.iter212.next, %xtraiter211
  br i1 %epil.iter212.cmp.not, label %Exp_TruthLit.exit175.i, label %scalar.ph154.epil, !llvm.loop !64

Exp_TruthLit.exit175.i.loopexit190.unr-lcssa:     ; preds = %scalar.ph140
  %lcmp.mod207.not = icmp eq i64 %xtraiter205, 0
  br i1 %lcmp.mod207.not, label %Exp_TruthLit.exit175.i, label %scalar.ph140.epil.preheader

scalar.ph140.epil.preheader:                      ; preds = %Exp_TruthLit.exit175.i.loopexit190.unr-lcssa, %scalar.ph140.preheader
  %indvars.iv62.i160.i.epil.init = phi i64 [ 0, %scalar.ph140.preheader ], [ %indvars.iv.next63.i161.i.3, %Exp_TruthLit.exit175.i.loopexit190.unr-lcssa ]
  %lcmp.mod208 = icmp ne i64 %xtraiter205, 0
  tail call void @llvm.assume(i1 %lcmp.mod208)
  br label %scalar.ph140.epil

scalar.ph140.epil:                                ; preds = %scalar.ph140.epil, %scalar.ph140.epil.preheader
  %indvars.iv62.i160.i.epil = phi i64 [ %indvars.iv.next63.i161.i.epil, %scalar.ph140.epil ], [ %indvars.iv62.i160.i.epil.init, %scalar.ph140.epil.preheader ] ; 3 uses
  %epil.iter206 = phi i64 [ %epil.iter206.next, %scalar.ph140.epil ], [ 0, %scalar.ph140.epil.preheader ]
  %i.lr = getelementptr inbounds nuw [8 x i8], ptr %i.hh, i64 %indvars.iv62.i160.i.epil
  %i.ls = load i64, ptr %i.lr, align 8, !tbaa !73
  %i.lt = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv62.i160.i.epil
  store i64 %i.ls, ptr %i.lt, align 8, !tbaa !73
  %indvars.iv.next63.i161.i.epil = add nuw nsw i64 %indvars.iv62.i160.i.epil, 1
  %epil.iter206.next = add i64 %epil.iter206, 1   ; 2 uses
  %epil.iter206.cmp.not = icmp eq i64 %epil.iter206.next, %xtraiter205
  br i1 %epil.iter206.cmp.not, label %Exp_TruthLit.exit175.i, label %scalar.ph140.epil, !llvm.loop !65

Exp_TruthLit.exit175.i.loopexit192.unr-lcssa:     ; preds = %scalar.ph126
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %Exp_TruthLit.exit175.i, label %scalar.ph126.epil.preheader

scalar.ph126.epil.preheader:                      ; preds = %Exp_TruthLit.exit175.i.loopexit192.unr-lcssa, %scalar.ph126.preheader
  %indvars.iv.i156.i.epil.init = phi i64 [ 0, %scalar.ph126.preheader ], [ %indvars.iv.next.i157.i.3, %Exp_TruthLit.exit175.i.loopexit192.unr-lcssa ]
  %lcmp.mod204 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod204)
  br label %scalar.ph126.epil

scalar.ph126.epil:                                ; preds = %scalar.ph126.epil, %scalar.ph126.epil.preheader
  %indvars.iv.i156.i.epil = phi i64 [ %indvars.iv.next.i157.i.epil, %scalar.ph126.epil ], [ %indvars.iv.i156.i.epil.init, %scalar.ph126.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %scalar.ph126.epil ], [ 0, %scalar.ph126.epil.preheader ]
  %i.lu = getelementptr inbounds nuw [8 x i8], ptr %i.ig, i64 %indvars.iv.i156.i.epil
  %i.lv = load i64, ptr %i.lu, align 8, !tbaa !73
  %i.lw = xor i64 %i.lv, -1
  %i.lx = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.i156.i.epil
  store i64 %i.lw, ptr %i.lx, align 8, !tbaa !73
  %indvars.iv.next.i157.i.epil = add nuw nsw i64 %indvars.iv.i156.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %Exp_TruthLit.exit175.i, label %scalar.ph126.epil, !llvm.loop !66

Exp_TruthLit.exit175.i:                           ; preds = %vector.body130, %Exp_TruthLit.exit175.i.loopexit192.unr-lcssa, %scalar.ph126.epil, %vector.body144, %Exp_TruthLit.exit175.i.loopexit190.unr-lcssa, %scalar.ph140.epil, %vector.body158, %Exp_TruthLit.exit175.i.loopexit188.unr-lcssa, %scalar.ph154.epil, %vector.body172, %Exp_TruthLit.exit175.i.loopexit.unr-lcssa, %scalar.ph168.epil, %.preheader.i163.i, %.preheader41.i151.i, %.lr.ph49.preheader.i150.i, %.preheader43.i149.i, %.lr.ph.preheader.i148.i, %.preheader45.i147.i
  br i1 %i.r, label %.lr.ph208.preheader.i, label %._crit_edge209.i

.lr.ph208.preheader.i:                            ; preds = %Exp_TruthLit.exit175.i
  %wide.trip.count259.i = zext nneg i32 %2 to i64
  br label %.lr.ph208.i

.lr.ph208.i:                                      ; preds = %bb.o, %.lr.ph208.preheader.i
  %indvars.iv256.i = phi i64 [ 0, %.lr.ph208.preheader.i ], [ %indvars.iv.next257.i, %bb.o ] ; 2 uses
  %i.ly = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv256.i ; 2 uses
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !71 ; 2 uses
  %.not109.i = icmp eq ptr %i.lz, null
  br i1 %.not109.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph208.i
end_hunk_1
