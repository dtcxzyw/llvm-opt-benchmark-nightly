Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/bacReadVer?download=true
inline.NumInlined: 329
inline.NumDeleted: 61
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@Psr_ManUtilSkipUntil:bb.a
  %.val25.val.i = load i8, ptr %i.k, align 1, !tbaa !28
  %.not32.i = icmp eq i8 %.val25.val.i, 47
  br i1 %.not32.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %storemerge36.i, i64 2
  br label %.backedge

bb.h:                                             ; preds = %bb.f, %.lr.ph.i
  %i.m = getelementptr inbounds nuw i8, ptr %storemerge36.i, i64 1 ; 4 uses
  store ptr %i.m, ptr %i.a, align 8, !tbaa !27
  %exitcond.not.i = icmp eq ptr %i.m, %i.c
  br i1 %exitcond.not.i, label %.loopexit16thread-pre-split, label %.lr.ph.i, !llvm.loop !2

.loopexit16thread-pre-split:                      ; preds = %bb.h, %bb.d, %bb.e, %bb.c
  %.val8.i21.ph = phi ptr [ %i.h, %bb.d ], [ %i.f, %bb.c ], [ %i.i, %bb.e ], [ %i.m, %bb.h ] ; 2 uses
  %.val8.val.i.pr = load i8, ptr %.val8.i21.ph, align 1, !tbaa !28
  br label %.loopexit16

.loopexit16:                                      ; preds = %.loopexit16thread-pre-split, %.lr.ph
  %.val8.val.i = phi i8 [ %.val8.val.i.pr, %.loopexit16thread-pre-split ], [ %.val.val, %.lr.ph ]
  %.val8.i21 = phi ptr [ %.val8.i21.ph, %.loopexit16thread-pre-split ], [ %.val8.i2227, %.lr.ph ] ; 3 uses
  %.not.i9 = icmp eq i8 %.val8.val.i, 92
  br i1 %.not.i9, label %.preheader.i.preheader, label %.loopexit

.preheader.i.preheader:                           ; preds = %.loopexit16
  %storemerge.i7 = getelementptr inbounds nuw i8, ptr %.val8.i21, i64 1 ; 4 uses
  store ptr %storemerge.i7, ptr %i.a, align 8, !tbaa !27
  %i.n = icmp ult ptr %storemerge.i7, %i.c
  br i1 %i.n, label %.lr.ph10, label %.loopexit

.preheader.i:                                     ; preds = %.lr.ph10
  %storemerge.i = getelementptr inbounds nuw i8, ptr %storemerge.i9, i64 1 ; 4 uses
  store ptr %storemerge.i, ptr %i.a, align 8, !tbaa !27
  %i.o = icmp ult ptr %storemerge.i, %i.c
  br i1 %i.o, label %.lr.ph10, label %.loopexit, !llvm.loop !75

.lr.ph10:                                         ; preds = %.preheader.i.preheader, %.preheader.i
  %storemerge.i9 = phi ptr [ %storemerge.i, %.preheader.i ], [ %storemerge.i7, %.preheader.i.preheader ] ; 3 uses
  %storemerge11.i8 = phi ptr [ %storemerge.i9, %.preheader.i ], [ %.val8.i21, %.preheader.i.preheader ]
  %.val.val.i11 = load i8, ptr %storemerge.i9, align 1, !tbaa !28
  %.not9.i = icmp eq i8 %.val.val.i11, 32
  br i1 %.not9.i, label %Psr_ManUtilSkipName.exit, label %.preheader.i, !llvm.loop !75

Psr_ManUtilSkipName.exit:                         ; preds = %.lr.ph10
  %i.p = getelementptr inbounds nuw i8, ptr %storemerge11.i8, i64 2
  br label %.backedge

.loopexit:                                        ; preds = %.preheader.i, %.preheader.i.preheader, %bb.b, %.loopexit16
  %.val8.i24 = phi ptr [ %.val8.i21, %.loopexit16 ], [ %.val8.i2227, %bb.b ], [ %storemerge.i7, %.preheader.i.preheader ], [ %storemerge.i, %.preheader.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %.val8.i24, i64 1
  br label %.backedge

.backedge:                                        ; preds = %.lr.ph38.i, %bb.g, %.loopexit, %Psr_ManUtilSkipName.exit
  %.sink = phi ptr [ %i.q, %.loopexit ], [ %i.p, %Psr_ManUtilSkipName.exit ], [ %i.l, %bb.g ], [ %i.h, %.lr.ph38.i ] ; 3 uses
  store ptr %.sink, ptr %i.a, align 8, !tbaa !27
  %i.r = icmp ult ptr %.sink, %i.c
  br i1 %i.r, label %.lr.ph, label %._crit_edge, !llvm.loop !76

._crit_edge:                                      ; preds = %.backedge, %.lr.ph, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 1, %.lr.ph ], [ 0, %.backedge ]
  ret i32 %.0
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @Psr_ManReadAssign(ptr noundef nonnull %0) unnamed_addr #2 {
bb.a:
  %i.a = tail call fastcc i32 @Psr_ManReadSignal(ptr noundef nonnull %0) ; 3 uses
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 156
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %i.c, ptr noundef nonnull align 1 dereferenceable(40) @.str.120, i64 40, i1 false)
  br label %bb.bf

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 24         ; 21 uses
  %.val110 = load ptr, ptr %i.d, align 8, !tbaa !27 ; 2 uses
  %.val110.val = load i8, ptr %.val110, align 1, !tbaa !28
  %.not = icmp eq i8 %.val110.val, 61
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 156
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(35) %i.e, ptr noundef nonnull align 1 dereferenceable(35) @.str.121, i64 35, i1 false)
  br label %bb.bf

bb.e:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %.val110, i64 1 ; 3 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !27
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !29   ; 6 uses
  %i.i = icmp ult ptr %i.f, %i.h
  br i1 %i.i, label %.preheader.i, label %.loopexit188

.preheader.i:                                     ; preds = %bb.e, %.preheader.i.backedge
  %i.j = phi ptr [ %.be331, %.preheader.i.backedge ], [ %i.f, %bb.e ] ; 6 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !28    ; 2 uses
  switch i8 %i.k, label %.loopexit185 [
    i8 32, label %Psr_CharIsSpace.exit.thread.i
    i8 13, label %Psr_CharIsSpace.exit.thread.i
    i8 9, label %Psr_CharIsSpace.exit.thread.i
    i8 10, label %Psr_CharIsSpace.exit.thread.i
    i8 0, label %.loopexit188
    i8 47, label %bb.f
  ]

Psr_CharIsSpace.exit.thread.i:                    ; preds = %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 1 ; 2 uses
  store ptr %i.l, ptr %i.d, align 8, !tbaa !27
  br label %.preheader.i.backedge

.preheader.i.backedge:                            ; preds = %Psr_CharIsSpace.exit.thread.i, %Psr_ManUtilSkipComments.exit.i
  %.be331 = phi ptr [ %i.l, %Psr_CharIsSpace.exit.thread.i ], [ %.sink.i.i, %Psr_ManUtilSkipComments.exit.i ]
  br label %.preheader.i, !llvm.loop !0

bb.f:                                             ; preds = %.preheader.i
  %i.m = getelementptr i8, ptr %i.j, i64 1
  %.val27.val.i.i = load i8, ptr %i.m, align 1, !tbaa !28
  switch i8 %.val27.val.i.i, label %.loopexit185.thread [
    i8 47, label %bb.g
    i8 42, label %bb.i
  ]

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 2 ; 4 uses
  store ptr %i.n, ptr %i.d, align 8, !tbaa !27
  %i.o = icmp ult ptr %i.n, %i.h
  br i1 %i.o, label %.lr.ph38.i.i, label %.loopexit185thread-pre-split

.lr.ph38.i.i:                                     ; preds = %bb.g, %bb.h
  %storemerge2137.i.i = phi ptr [ %i.p, %bb.h ], [ %i.n, %bb.g ] ; 2 uses
  %.val23.val.i.i = load i8, ptr %storemerge2137.i.i, align 1, !tbaa !28
  %.not29.i.i = icmp eq i8 %.val23.val.i.i, 10
  %i.p = getelementptr inbounds nuw i8, ptr %storemerge2137.i.i, i64 1 ; 5 uses
  br i1 %.not29.i.i, label %Psr_ManUtilSkipComments.exit.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph38.i.i
  store ptr %i.p, ptr %i.d, align 8, !tbaa !27
  %exitcond44.not.i.i = icmp eq ptr %i.p, %i.h
  br i1 %exitcond44.not.i.i, label %.loopexit185thread-pre-split, label %.lr.ph38.i.i, !llvm.loop !1

bb.i:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 2 ; 4 uses
  store ptr %i.q, ptr %i.d, align 8, !tbaa !27
  %i.r = icmp ult ptr %i.q, %i.h
  br i1 %i.r, label %.lr.ph.i.i, label %.loopexit185thread-pre-split

.lr.ph.i.i:                                       ; preds = %bb.i, %bb.l
  %storemerge36.i.i = phi ptr [ %i.u, %bb.l ], [ %i.q, %bb.i ] ; 4 uses
  %.val.val.i.i = load i8, ptr %storemerge36.i.i, align 1, !tbaa !28
  %.not31.i.i = icmp eq i8 %.val.val.i.i, 42
  br i1 %.not31.i.i, label %bb.j, label %bb.l

bb.j:                                             ; preds = %.lr.ph.i.i
  %i.s = getelementptr i8, ptr %storemerge36.i.i, i64 1
  %.val25.val.i.i = load i8, ptr %i.s, align 1, !tbaa !28
  %.not32.i.i = icmp eq i8 %.val25.val.i.i, 47
  br i1 %.not32.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.t = getelementptr inbounds nuw i8, ptr %storemerge36.i.i, i64 2
  br label %Psr_ManUtilSkipComments.exit.i

bb.l:                                             ; preds = %bb.j, %.lr.ph.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %storemerge36.i.i, i64 1 ; 4 uses
  store ptr %i.u, ptr %i.d, align 8, !tbaa !27
  %exitcond.not.i.i = icmp eq ptr %i.u, %i.h
  br i1 %exitcond.not.i.i, label %.loopexit185thread-pre-split, label %.lr.ph.i.i, !llvm.loop !2

Psr_ManUtilSkipComments.exit.i:                   ; preds = %.lr.ph38.i.i, %bb.k
  %.sink.i.i = phi ptr [ %i.t, %bb.k ], [ %i.p, %.lr.ph38.i.i ] ; 3 uses
  store ptr %.sink.i.i, ptr %i.d, align 8, !tbaa !27
  %i.v = icmp ult ptr %.sink.i.i, %i.h
  br i1 %i.v, label %.preheader.i.backedge, label %.loopexit188

.loopexit188:                                     ; preds = %Psr_ManUtilSkipComments.exit.i, %.preheader.i, %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 156 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(34) %i.w, ptr noundef nonnull align 1 dereferenceable(34) @.str.23, i64 34, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(17) %i.w, ptr noundef nonnull align 1 dereferenceable(17) @.str.122, i64 17, i1 false)
  br label %bb.bf

.loopexit185thread-pre-split:                     ; preds = %bb.i, %bb.g, %bb.l, %bb.h
  %.val109.ph = phi ptr [ %i.u, %bb.l ], [ %i.p, %bb.h ], [ %i.q, %bb.i ], [ %i.n, %bb.g ] ; 2 uses
  %.val109.val.pr = load i8, ptr %.val109.ph, align 1, !tbaa !28
  br label %.loopexit185

.loopexit185:                                     ; preds = %.preheader.i, %.loopexit185thread-pre-split
  %.val109.val = phi i8 [ %.val109.val.pr, %.loopexit185thread-pre-split ], [ %i.k, %.preheader.i ]
  %.val109 = phi ptr [ %.val109.ph, %.loopexit185thread-pre-split ], [ %i.j, %.preheader.i ]
  %.not286 = icmp eq i8 %.val109.val, 126
  br i1 %.not286, label %bb.m, label %.loopexit185.thread

bb.m:                                             ; preds = %.loopexit185
  %i.x = getelementptr inbounds nuw i8, ptr %.val109, i64 1
  store ptr %i.x, ptr %i.d, align 8, !tbaa !27
  br label %.loopexit185.thread

.loopexit185.thread:                              ; preds = %bb.f, %bb.m, %.loopexit185
  %i.y = phi i1 [ true, %.loopexit185 ], [ false, %bb.m ], [ true, %bb.f ] ; 5 uses
  %1 = xor i1 %i.y, true                          ; 2 uses
  %i.z = tail call fastcc i32 @Psr_ManReadSignal(ptr noundef nonnull %0) ; 2 uses
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.loopexit185.thread
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 156
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(54) %i.ab, ptr noundef nonnull align 1 dereferenceable(54) @.str.123, i64 54, i1 false)
  br label %bb.bf

bb.o:                                             ; preds = %.loopexit185.thread
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 16 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 12 uses
  store i32 0, ptr %i.ad, align 4, !tbaa !17
  %i.ae = load i32, ptr %i.ac, align 8, !tbaa !18
  %i.af = icmp eq i32 %i.ae, 0
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !19 ; 3 uses
  br i1 %i.af, label %bb.p, label %Vec_IntPush.exit

bb.p:                                             ; preds = %bb.o
  %.not9.i.i = icmp eq ptr %i.ah, null
  br i1 %.not9.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ai = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.ah, i64 noundef 64) #18
  %.pre217.pre = load i32, ptr %i.ad, align 4, !tbaa !17
  br label %Vec_IntGrow.exit11.sink.split.i

bb.r:                                             ; preds = %bb.p
  %i.aj = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #19
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.q, %bb.r
  %.pre217 = phi i32 [ %.pre217.pre, %bb.q ], [ 0, %bb.r ]
  %i.ak = phi ptr [ %i.ai, %bb.q ], [ %i.aj, %bb.r ] ; 2 uses
  store ptr %i.ak, ptr %i.ag, align 8, !tbaa !19
  store i32 16, ptr %i.ac, align 8, !tbaa !18
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.o, %Vec_IntGrow.exit11.sink.split.i
  %i.al = phi i32 [ %.pre217, %Vec_IntGrow.exit11.sink.split.i ], [ 0, %bb.o ] ; 2 uses
  %i.am = phi ptr [ %i.ak, %Vec_IntGrow.exit11.sink.split.i ], [ %i.ah, %bb.o ] ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.ao = add nsw i32 %i.al, 1
  store i32 %i.ao, ptr %i.ad, align 4, !tbaa !17
  %i.ap = sext i32 %i.al to i64
  %i.aq = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.ap
  store i32 0, ptr %i.aq, align 4, !tbaa !20
  %i.ar = load i32, ptr %i.ad, align 4, !tbaa !17 ; 7 uses
  %i.as = load i32, ptr %i.ac, align 8, !tbaa !18
  %i.at = icmp eq i32 %i.ar, %i.as
  br i1 %i.at, label %bb.s, label %Vec_IntPush.exit121

bb.s:                                             ; preds = %Vec_IntPush.exit
  %i.au = icmp slt i32 %i.ar, 16
  br i1 %i.au, label %Vec_IntGrow.exit11.sink.split.i117, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.av = icmp samesign ult i32 %i.ar, 1073741823
  %i.aw = shl nuw nsw i32 %i.ar, 1
  %spec.select.i114 = select i1 %i.av, i32 %i.aw, i32 2147483647 ; 3 uses
  %.not.i9.i115 = icmp samesign ult i32 %i.ar, %spec.select.i114
  br i1 %.not.i9.i115, label %bb.u, label %Vec_IntPush.exit121

bb.u:                                             ; preds = %bb.t
  %i.ax = zext nneg i32 %spec.select.i114 to i64
  %i.ay = shl nuw nsw i64 %i.ax, 2
  br label %Vec_IntGrow.exit11.sink.split.i117

Vec_IntGrow.exit11.sink.split.i117:               ; preds = %bb.s, %bb.u
  %.sink = phi i64 [ %i.ay, %bb.u ], [ 64, %bb.s ]
  %spec.select.sink.i118 = phi i32 [ %spec.select.i114, %bb.u ], [ 16, %bb.s ]
  %i.az = tail call ptr @realloc(ptr noundef nonnull %i.am, i64 noundef %.sink) #18 ; 2 uses
  store ptr %i.az, ptr %i.an, align 8, !tbaa !19
  store i32 %spec.select.sink.i118, ptr %i.ac, align 8, !tbaa !18
  %.pre218 = load i32, ptr %i.ad, align 4, !tbaa !17
  br label %Vec_IntPush.exit121

Vec_IntPush.exit121:                              ; preds = %Vec_IntPush.exit, %bb.t, %Vec_IntGrow.exit11.sink.split.i117
  %i.ba = phi i32 [ %i.ar, %Vec_IntPush.exit ], [ %i.ar, %bb.t ], [ %.pre218, %Vec_IntGrow.exit11.sink.split.i117 ] ; 2 uses
  %i.bb = phi ptr [ %i.am, %Vec_IntPush.exit ], [ %i.am, %bb.t ], [ %i.az, %Vec_IntGrow.exit11.sink.split.i117 ] ; 4 uses
  %i.bc = add nsw i32 %i.ba, 1
  store i32 %i.bc, ptr %i.ad, align 4, !tbaa !17
  %i.bd = sext i32 %i.ba to i64
  %i.be = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.bd
  store i32 %i.z, ptr %i.be, align 4, !tbaa !20
  %.val108 = load ptr, ptr %i.d, align 8, !tbaa !27 ; 2 uses
  %.val108.val = load i8, ptr %.val108, align 1, !tbaa !28 ; 3 uses
  %.not170 = icmp eq i8 %.val108.val, 59
  br i1 %.not170, label %bb.v, label %bb.ac

bb.v:                                             ; preds = %Vec_IntPush.exit121
  %i.bf = load i32, ptr %i.ad, align 4, !tbaa !17 ; 7 uses
  %i.bg = load i32, ptr %i.ac, align 8, !tbaa !18
  %i.bh = icmp eq i32 %i.bf, %i.bg
  br i1 %i.bh, label %bb.w, label %Vec_IntPush.exit129

bb.w:                                             ; preds = %bb.v
  %i.bi = icmp slt i32 %i.bf, 16
  br i1 %i.bi, label %Vec_IntGrow.exit11.sink.split.i125, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bj = icmp samesign ult i32 %i.bf, 1073741823
  %i.bk = shl nuw nsw i32 %i.bf, 1
  %spec.select.i122 = select i1 %i.bj, i32 %i.bk, i32 2147483647 ; 3 uses
  %.not.i9.i123 = icmp samesign ult i32 %i.bf, %spec.select.i122
  br i1 %.not.i9.i123, label %bb.y, label %Vec_IntPush.exit129

bb.y:                                             ; preds = %bb.x
  %i.bl = zext nneg i32 %spec.select.i122 to i64
  %i.bm = shl nuw nsw i64 %i.bl, 2
  br label %Vec_IntGrow.exit11.sink.split.i125

Vec_IntGrow.exit11.sink.split.i125:               ; preds = %bb.w, %bb.y
  %.sink284 = phi i64 [ %i.bm, %bb.y ], [ 64, %bb.w ]
  %spec.select.sink.i126 = phi i32 [ %spec.select.i122, %bb.y ], [ 16, %bb.w ]
  %i.bn = tail call ptr @realloc(ptr noundef nonnull %i.bb, i64 noundef %.sink284) #18 ; 2 uses
  store ptr %i.bn, ptr %i.an, align 8, !tbaa !19
  store i32 %spec.select.sink.i126, ptr %i.ac, align 8, !tbaa !18
  %.pre221 = load i32, ptr %i.ad, align 4, !tbaa !17
  br label %Vec_IntPush.exit129

Vec_IntPush.exit129:                              ; preds = %bb.v, %bb.x, %Vec_IntGrow.exit11.sink.split.i125
  %i.bo = phi i32 [ %i.bf, %bb.v ], [ %i.bf, %bb.x ], [ %.pre221, %Vec_IntGrow.exit11.sink.split.i125 ] ; 2 uses
  %i.bp = phi ptr [ %i.bb, %bb.v ], [ %i.bb, %bb.x ], [ %i.bn, %Vec_IntGrow.exit11.sink.split.i125 ] ; 4 uses
  %i.bq = add nsw i32 %i.bo, 1
  store i32 %i.bq, ptr %i.ad, align 4, !tbaa !17
  %i.br = sext i32 %i.bo to i64
  %i.bs = getelementptr inbounds [4 x i8], ptr %i.bp, i64 %i.br
  store i32 0, ptr %i.bs, align 4, !tbaa !20
  %i.bt = load i32, ptr %i.ad, align 4, !tbaa !17 ; 7 uses
  %i.bu = load i32, ptr %i.ac, align 8, !tbaa !18
  %i.bv = icmp eq i32 %i.bt, %i.bu
  br i1 %i.bv, label %bb.z, label %Vec_IntPush.exit137

bb.z:                                             ; preds = %Vec_IntPush.exit129
  %i.bw = icmp slt i32 %i.bt, 16
  br i1 %i.bw, label %Vec_IntGrow.exit11.sink.split.i133, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bx = icmp samesign ult i32 %i.bt, 1073741823
  %i.by = shl nuw nsw i32 %i.bt, 1
  %spec.select.i130 = select i1 %i.bx, i32 %i.by, i32 2147483647 ; 3 uses
  %.not.i9.i131 = icmp samesign ult i32 %i.bt, %spec.select.i130
  br i1 %.not.i9.i131, label %bb.ab, label %Vec_IntPush.exit137

bb.ab:                                            ; preds = %bb.aa
  %i.bz = zext nneg i32 %spec.select.i130 to i64
  %i.ca = shl nuw nsw i64 %i.bz, 2
  br label %Vec_IntGrow.exit11.sink.split.i133

Vec_IntGrow.exit11.sink.split.i133:               ; preds = %bb.z, %bb.ab
  %.sink285 = phi i64 [ %i.ca, %bb.ab ], [ 64, %bb.z ]
  %spec.select.sink.i134 = phi i32 [ %spec.select.i130, %bb.ab ], [ 16, %bb.z ]
  %i.cb = tail call ptr @realloc(ptr noundef nonnull %i.bp, i64 noundef %.sink285) #18 ; 2 uses
  store ptr %i.cb, ptr %i.an, align 8, !tbaa !19
  store i32 %spec.select.sink.i134, ptr %i.ac, align 8, !tbaa !18
  %.pre222 = load i32, ptr %i.ad, align 4, !tbaa !17
  br label %Vec_IntPush.exit137

Vec_IntPush.exit137:                              ; preds = %Vec_IntPush.exit129, %bb.aa, %Vec_IntGrow.exit11.sink.split.i133
  %i.cc = phi i32 [ %i.bt, %Vec_IntPush.exit129 ], [ %i.bt, %bb.aa ], [ %.pre222, %Vec_IntGrow.exit11.sink.split.i133 ] ; 2 uses
  %i.cd = phi ptr [ %i.bp, %Vec_IntPush.exit129 ], [ %i.bp, %bb.aa ], [ %i.cb, %Vec_IntGrow.exit11.sink.split.i133 ]
  %i.ce = add nsw i32 %i.cc, 1
  store i32 %i.ce, ptr %i.ad, align 4, !tbaa !17
  %i.cf = sext i32 %i.cc to i64
  %i.cg = getelementptr inbounds [4 x i8], ptr %i.cd, i64 %i.cf
  store i32 %i.a, ptr %i.cg, align 4, !tbaa !20
  %2 = select i1 %i.y, i32 10, i32 11
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !31
  tail call fastcc void @Psr_NtkAddBox(ptr noundef %i.ci, i32 noundef %2, i32 noundef 0, ptr noundef %i.ac)
  br label %bb.bf

bb.ac:                                            ; preds = %Vec_IntPush.exit121
  %.not173 = icmp eq i8 %.val108.val, 38          ; 2 uses
  br i1 %.not173, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  switch i8 %.val108.val, label %bb.ae [
    i8 124, label %bb.af
    i8 94, label %.fold.split
    i8 63, label %.fold.split179
  ]

bb.ae:                                            ; preds = %bb.ad
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 156
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(47) %i.cj, ptr noundef nonnull align 1 dereferenceable(47) @.str.124, i64 47, i1 false)
  br label %bb.bf

.fold.split:                                      ; preds = %bb.ad
  br label %bb.af

.fold.split179:                                   ; preds = %bb.ad
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %.fold.split179, %.fold.split, %bb.ac
  %i.ck = phi i1 [ false, %.fold.split ], [ false, %bb.ac ], [ false, %bb.ad ], [ true, %.fold.split179 ]
  %i.cl = phi i1 [ false, %.fold.split ], [ false, %bb.ac ], [ true, %bb.ad ], [ false, %.fold.split179 ]
  %i.cm = phi i1 [ true, %.fold.split ], [ false, %bb.ac ], [ false, %bb.ad ], [ false, %.fold.split179 ]
  %.0 = phi i32 [ 16, %.fold.split ], [ 12, %bb.ac ], [ 14, %bb.ad ], [ 20, %.fold.split179 ]
  %i.cn = getelementptr inbounds nuw i8, ptr %.val108, i64 1 ; 3 uses
  store ptr %i.cn, ptr %i.d, align 8, !tbaa !27
  %i.co = load ptr, ptr %i.g, align 8, !tbaa !29  ; 6 uses
  %i.cp = icmp ult ptr %i.cn, %i.co
  br i1 %i.cp, label %.preheader.i142, label %.loopexit182

.preheader.i142:                                  ; preds = %bb.af, %.preheader.i142.backedge
  %i.cq = phi ptr [ %.be, %.preheader.i142.backedge ], [ %i.cn, %bb.af ] ; 6 uses
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !28  ; 2 uses
  switch i8 %i.cr, label %.loopexit [
    i8 32, label %Psr_CharIsSpace.exit.thread.i159
    i8 13, label %Psr_CharIsSpace.exit.thread.i159
    i8 9, label %Psr_CharIsSpace.exit.thread.i159
    i8 10, label %Psr_CharIsSpace.exit.thread.i159
    i8 0, label %.loopexit182
    i8 47, label %bb.ag
  ]

Psr_CharIsSpace.exit.thread.i159:                 ; preds = %.preheader.i142, %.preheader.i142, %.preheader.i142, %.preheader.i142
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 1 ; 2 uses
  store ptr %i.cs, ptr %i.d, align 8, !tbaa !27
  br label %.preheader.i142.backedge

.preheader.i142.backedge:                         ; preds = %Psr_CharIsSpace.exit.thread.i159, %Psr_ManUtilSkipComments.exit.i152
  %.be = phi ptr [ %i.cs, %Psr_CharIsSpace.exit.thread.i159 ], [ %.sink.i.i153, %Psr_ManUtilSkipComments.exit.i152 ]
  br label %.preheader.i142, !llvm.loop !0

bb.ag:                                            ; preds = %.preheader.i142
  %i.ct = getelementptr i8, ptr %i.cq, i64 1
  %.val27.val.i.i144 = load i8, ptr %i.ct, align 1, !tbaa !28
  switch i8 %.val27.val.i.i144, label %.loopexit.thread [
    i8 47, label %bb.ah
    i8 42, label %bb.aj
  ]

bb.ah:                                            ; preds = %bb.ag
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cq, i64 2 ; 4 uses
  store ptr %i.cu, ptr %i.d, align 8, !tbaa !27
  %i.cv = icmp ult ptr %i.cu, %i.co
  br i1 %i.cv, label %.lr.ph38.i.i154, label %.loopexitthread-pre-split

.lr.ph38.i.i154:                                  ; preds = %bb.ah, %bb.ai
  %storemerge2137.i.i155 = phi ptr [ %i.cw, %bb.ai ], [ %i.cu, %bb.ah ] ; 2 uses
  %.val23.val.i.i156 = load i8, ptr %storemerge2137.i.i155, align 1, !tbaa !28
  %.not29.i.i157 = icmp eq i8 %.val23.val.i.i156, 10
  %i.cw = getelementptr inbounds nuw i8, ptr %storemerge2137.i.i155, i64 1 ; 5 uses
  br i1 %.not29.i.i157, label %Psr_ManUtilSkipComments.exit.i152, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph38.i.i154
  store ptr %i.cw, ptr %i.d, align 8, !tbaa !27
  %exitcond44.not.i.i158 = icmp eq ptr %i.cw, %i.co
  br i1 %exitcond44.not.i.i158, label %.loopexitthread-pre-split, label %.lr.ph38.i.i154, !llvm.loop !1

bb.aj:                                            ; preds = %bb.ag
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cq, i64 2 ; 4 uses
  store ptr %i.cx, ptr %i.d, align 8, !tbaa !27
  %i.cy = icmp ult ptr %i.cx, %i.co
  br i1 %i.cy, label %.lr.ph.i.i145, label %.loopexitthread-pre-split

.lr.ph.i.i145:                                    ; preds = %bb.aj, %bb.am
  %storemerge36.i.i146 = phi ptr [ %i.db, %bb.am ], [ %i.cx, %bb.aj ] ; 4 uses
  %.val.val.i.i147 = load i8, ptr %storemerge36.i.i146, align 1, !tbaa !28
  %.not31.i.i148 = icmp eq i8 %.val.val.i.i147, 42
  br i1 %.not31.i.i148, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %.lr.ph.i.i145
  %i.cz = getelementptr i8, ptr %storemerge36.i.i146, i64 1
  %.val25.val.i.i150 = load i8, ptr %i.cz, align 1, !tbaa !28
  %.not32.i.i151 = icmp eq i8 %.val25.val.i.i150, 47
  br i1 %.not32.i.i151, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.da = getelementptr inbounds nuw i8, ptr %storemerge36.i.i146, i64 2
  br label %Psr_ManUtilSkipComments.exit.i152

bb.am:                                            ; preds = %bb.ak, %.lr.ph.i.i145
  %i.db = getelementptr inbounds nuw i8, ptr %storemerge36.i.i146, i64 1 ; 4 uses
  store ptr %i.db, ptr %i.d, align 8, !tbaa !27
  %exitcond.not.i.i149 = icmp eq ptr %i.db, %i.co
  br i1 %exitcond.not.i.i149, label %.loopexitthread-pre-split, label %.lr.ph.i.i145, !llvm.loop !2

Psr_ManUtilSkipComments.exit.i152:                ; preds = %.lr.ph38.i.i154, %bb.al
  %.sink.i.i153 = phi ptr [ %i.da, %bb.al ], [ %i.cw, %.lr.ph38.i.i154 ] ; 3 uses
  store ptr %.sink.i.i153, ptr %i.d, align 8, !tbaa !27
  %i.dc = icmp ult ptr %.sink.i.i153, %i.co
  br i1 %i.dc, label %.preheader.i142.backedge, label %.loopexit182

.loopexit182:                                     ; preds = %Psr_ManUtilSkipComments.exit.i152, %.preheader.i142, %bb.af
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 156 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(34) %i.dd, ptr noundef nonnull align 1 dereferenceable(34) @.str.23, i64 34, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(17) %i.dd, ptr noundef nonnull align 1 dereferenceable(17) @.str.125, i64 17, i1 false)
  br label %bb.bf

.loopexitthread-pre-split:                        ; preds = %bb.aj, %bb.ah, %bb.am, %bb.ai
  %.val103.ph = phi ptr [ %i.db, %bb.am ], [ %i.cw, %bb.ai ], [ %i.cx, %bb.aj ], [ %i.cu, %bb.ah ] ; 2 uses
  %.val103.val.pr = load i8, ptr %.val103.ph, align 1, !tbaa !28
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.i142, %.loopexitthread-pre-split
  %.val103.val = phi i8 [ %.val103.val.pr, %.loopexitthread-pre-split ], [ %i.cr, %.preheader.i142 ]
  %.val103 = phi ptr [ %.val103.ph, %.loopexitthread-pre-split ], [ %i.cq, %.preheader.i142 ]
  %i.de = icmp eq i8 %.val103.val, 126
  br i1 %i.de, label %bb.an, label %.loopexit.thread

bb.an:                                            ; preds = %.loopexit
  %i.df = getelementptr inbounds nuw i8, ptr %.val103, i64 1
  store ptr %i.df, ptr %i.d, align 8, !tbaa !27
  br label %.loopexit.thread

.loopexit.thread:                                 ; preds = %bb.ag, %bb.an, %.loopexit
  %i.dg = phi i1 [ false, %.loopexit ], [ true, %bb.an ], [ false, %bb.ag ] ; 5 uses
  %i.dh = tail call fastcc i32 @Psr_ManReadSignal(ptr noundef nonnull %0) ; 2 uses
  %i.di = icmp eq i32 %i.dh, 0
  br i1 %i.di, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %.loopexit.thread
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 156
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(55) %i.dj, ptr noundef nonnull align 1 dereferenceable(55) @.str.126, i64 55, i1 false)
  br label %bb.bf

bb.ap:                                            ; preds = %.loopexit.thread
  tail call fastcc void @Vec_IntPush(ptr noundef nonnull %i.ac, i32 noundef 0)
  tail call fastcc void @Vec_IntPush(ptr noundef nonnull %i.ac, i32 noundef %i.dh)
  br i1 %i.ck, label %bb.aq, label %bb.aw

bb.aq:                                            ; preds = %bb.ap
  %.val102 = load ptr, ptr %i.d, align 8, !tbaa !27 ; 2 uses
  %.val102.val = load i8, ptr %.val102, align 1, !tbaa !28
  %.not177 = icmp eq i8 %.val102.val, 58
  br i1 %.not177, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 156
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(38) %i.dk, ptr noundef nonnull align 1 dereferenceable(38) @.str.127, i64 38, i1 false)
  br label %bb.bf

bb.as:                                            ; preds = %bb.aq
  %i.dl = getelementptr inbounds nuw i8, ptr %.val102, i64 1
  store ptr %i.dl, ptr %i.d, align 8, !tbaa !27
  %i.dm = tail call fastcc i32 @Psr_ManReadSignal(ptr noundef nonnull %0) ; 2 uses
  %i.dn = icmp eq i32 %i.dm, 0
  br i1 %i.dn, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 156
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(54) %i.do, ptr noundef nonnull align 1 dereferenceable(54) @.str.128, i64 54, i1 false)
  br label %bb.bf

bb.au:                                            ; preds = %bb.as
  tail call fastcc void @Vec_IntPush(ptr noundef nonnull %i.ac, i32 noundef 0)
  tail call fastcc void @Vec_IntPush(ptr noundef nonnull %i.ac, i32 noundef %i.dm)
  %.val = load ptr, ptr %i.d, align 8, !tbaa !27
  %.val.val = load i8, ptr %.val, align 1, !tbaa !28
  %.not178 = icmp eq i8 %.val.val, 59
  br i1 %.not178, label %bb.be, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 156
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(55) %i.dp, ptr noundef nonnull align 1 dereferenceable(55) @.str.129, i64 55, i1 false)
  br label %bb.bf

bb.aw:                                            ; preds = %bb.ap
  br i1 %.not173, label %bb.ax, label %bb.ba

bb.ax:                                            ; preds = %bb.aw
  %or.cond = or i1 %i.y, %i.dg
  br i1 %or.cond, label %bb.ay, label %bb.be

bb.ay:                                            ; preds = %bb.ax
  %or.cond3 = and i1 %i.y, %i.dg
  br i1 %or.cond3, label %bb.be, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %or.cond5 = and i1 %i.dg, %1
  %spec.select = select i1 %or.cond5, i32 15, i32 12
  br label %bb.be

bb.ba:                                            ; preds = %bb.aw
  br i1 %i.cl, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %or.cond7 = and i1 %i.dg, %1
  %spec.select100 = select i1 %or.cond7, i32 13, i32 14
  br label %bb.be

bb.bc:                                            ; preds = %bb.ba
  br i1 %i.cm, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %or.cond9 = or i1 %i.y, %i.dg
  %spec.select101 = select i1 %or.cond9, i32 16, i32 17
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bb, %bb.az, %bb.ay, %bb.ax, %bb.bc, %bb.au
  %.1 = phi i32 [ 20, %bb.au ], [ 19, %bb.ax ], [ 18, %bb.ay ], [ %spec.select101, %bb.bd ], [ %.0, %bb.bc ], [ %spec.select, %bb.az ], [ %spec.select100, %bb.bb ]
  tail call fastcc void @Vec_IntPush(ptr noundef nonnull %i.ac, i32 noundef 0)
  tail call fastcc void @Vec_IntPush(ptr noundef nonnull %i.ac, i32 noundef %i.a)
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !31
  tail call fastcc void @Psr_NtkAddBox(ptr noundef %i.dr, i32 noundef %.1, i32 noundef 0, ptr noundef %i.ac)
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.av, %bb.at, %bb.ar, %bb.ao, %.loopexit182, %bb.ae, %Vec_IntPush.exit137, %bb.n, %.loopexit188, %bb.d, %bb.b
  %.083 = phi i32 [ 0, %bb.b ], [ 0, %.loopexit188 ], [ 0, %bb.n ], [ 1, %Vec_IntPush.exit137 ], [ 0, %.loopexit182 ], [ 0, %bb.ao ], [ 0, %bb.at ], [ 1, %bb.be ], [ 0, %bb.av ], [ 0, %bb.ar ], [ 0, %bb.ae ], [ 0, %bb.d ]
  ret i32 %.083
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @Psr_ManReadInstance(ptr noundef nonnull %0, i32 noundef range(i32 13, 12) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 58 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !29   ; 6 uses
  %.promoted21.i = load ptr, ptr %i.a, align 8, !tbaa !27 ; 2 uses
  %i.d = icmp ult ptr %.promoted21.i, %i.c
  br i1 %i.d, label %.preheader.i, label %.loopexit194

.preheader.i:                                     ; preds = %bb.a, %.preheader.i.backedge
  %i.e = phi ptr [ %.be735, %.preheader.i.backedge ], [ %.promoted21.i, %bb.a ] ; 7 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !28    ; 2 uses
  switch i8 %i.f, label %.loopexit191 [
    i8 32, label %Psr_CharIsSpace.exit.thread.i
    i8 13, label %Psr_CharIsSpace.exit.thread.i
    i8 9, label %Psr_CharIsSpace.exit.thread.i
    i8 10, label %Psr_CharIsSpace.exit.thread.i
    i8 0, label %.loopexit194
    i8 47, label %bb.b
  ]

Psr_CharIsSpace.exit.thread.i:                    ; preds = %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 2 uses
  store ptr %i.g, ptr %i.a, align 8, !tbaa !27
  br label %.preheader.i.backedge

.preheader.i.backedge:                            ; preds = %Psr_CharIsSpace.exit.thread.i, %Psr_ManUtilSkipComments.exit.i
  %.be735 = phi ptr [ %i.g, %Psr_CharIsSpace.exit.thread.i ], [ %.sink.i.i, %Psr_ManUtilSkipComments.exit.i ]
  br label %.preheader.i, !llvm.loop !0

bb.b:                                             ; preds = %.preheader.i
  %i.h = getelementptr i8, ptr %i.e, i64 1
  %.val27.val.i.i = load i8, ptr %i.h, align 1, !tbaa !28
  switch i8 %.val27.val.i.i, label %.loopexit191.thread [
    i8 47, label %bb.c
    i8 42, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 2 ; 4 uses
  store ptr %i.i, ptr %i.a, align 8, !tbaa !27
  %i.j = icmp ult ptr %i.i, %i.c
  br i1 %i.j, label %.lr.ph38.i.i, label %.loopexit191thread-pre-split

.lr.ph38.i.i:                                     ; preds = %bb.c, %bb.d
  %storemerge2137.i.i = phi ptr [ %i.k, %bb.d ], [ %i.i, %bb.c ] ; 2 uses
  %.val23.val.i.i = load i8, ptr %storemerge2137.i.i, align 1, !tbaa !28
  %.not29.i.i = icmp eq i8 %.val23.val.i.i, 10
  %i.k = getelementptr inbounds nuw i8, ptr %storemerge2137.i.i, i64 1 ; 5 uses
  br i1 %.not29.i.i, label %Psr_ManUtilSkipComments.exit.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph38.i.i
  store ptr %i.k, ptr %i.a, align 8, !tbaa !27
  %exitcond44.not.i.i = icmp eq ptr %i.k, %i.c
  br i1 %exitcond44.not.i.i, label %.loopexit191thread-pre-split, label %.lr.ph38.i.i, !llvm.loop !1

bb.e:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 2 ; 4 uses
  store ptr %i.l, ptr %i.a, align 8, !tbaa !27
  %i.m = icmp ult ptr %i.l, %i.c
  br i1 %i.m, label %.lr.ph.i.i, label %.loopexit191thread-pre-split

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.h
  %storemerge36.i.i = phi ptr [ %i.p, %bb.h ], [ %i.l, %bb.e ] ; 4 uses
  %.val.val.i.i = load i8, ptr %storemerge36.i.i, align 1, !tbaa !28
  %.not31.i.i = icmp eq i8 %.val.val.i.i, 42
  br i1 %.not31.i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.n = getelementptr i8, ptr %storemerge36.i.i, i64 1
  %.val25.val.i.i = load i8, ptr %i.n, align 1, !tbaa !28
  %.not32.i.i = icmp eq i8 %.val25.val.i.i, 47
  br i1 %.not32.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %storemerge36.i.i, i64 2
  br label %Psr_ManUtilSkipComments.exit.i

bb.h:                                             ; preds = %bb.f, %.lr.ph.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %storemerge36.i.i, i64 1 ; 4 uses
  store ptr %i.p, ptr %i.a, align 8, !tbaa !27
  %exitcond.not.i.i = icmp eq ptr %i.p, %i.c
  br i1 %exitcond.not.i.i, label %.loopexit191thread-pre-split, label %.lr.ph.i.i, !llvm.loop !2

Psr_ManUtilSkipComments.exit.i:                   ; preds = %.lr.ph38.i.i, %bb.g
  %.sink.i.i = phi ptr [ %i.o, %bb.g ], [ %i.k, %.lr.ph38.i.i ] ; 3 uses
  store ptr %.sink.i.i, ptr %i.a, align 8, !tbaa !27
  %i.q = icmp ult ptr %.sink.i.i, %i.c
  br i1 %i.q, label %.preheader.i.backedge, label %.loopexit194

.loopexit194:                                     ; preds = %Psr_ManUtilSkipComments.exit.i, %.preheader.i, %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 156 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(34) %i.r, ptr noundef nonnull align 1 dereferenceable(34) @.str.23, i64 34, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(17) %i.r, ptr noundef nonnull align 1 dereferenceable(17) @.str.130, i64 17, i1 false)
  br label %bb.cc

.loopexit191thread-pre-split:                     ; preds = %bb.e, %bb.c, %bb.h, %bb.d
  %.ph = phi ptr [ %i.p, %bb.h ], [ %i.k, %bb.d ], [ %i.l, %bb.e ], [ %i.i, %bb.c ] ; 2 uses
  %.val17.val.i.pr = load i8, ptr %.ph, align 1, !tbaa !28
  br label %.loopexit191

.loopexit191:                                     ; preds = %.preheader.i, %.loopexit191thread-pre-split
  %.val17.val.i = phi i8 [ %.val17.val.i.pr, %.loopexit191thread-pre-split ], [ %i.f, %.preheader.i ] ; 2 uses
  %i.s = phi ptr [ %.ph, %.loopexit191thread-pre-split ], [ %i.e, %.preheader.i ] ; 2 uses
  %.not.i = icmp eq i8 %.val17.val.i, 92
  br i1 %.not.i, label %bb.i, label %.loopexit191.thread

bb.i:                                             ; preds = %.loopexit191
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 1 ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %bb.i
  %storemerge15.i = phi ptr [ %i.t, %bb.i ], [ %i.u, %bb.j ] ; 4 uses
  store ptr %storemerge15.i, ptr %i.a, align 8, !tbaa !27
  %.val.val.i = load i8, ptr %storemerge15.i, align 1, !tbaa !28
  %.not18.i = icmp eq i8 %.val.val.i, 32
  %i.u = getelementptr inbounds nuw i8, ptr %storemerge15.i, i64 1
  br i1 %.not18.i, label %Psr_ManReadName.exit, label %bb.j, !llvm.loop !3

.loopexit191.thread:                              ; preds = %bb.b, %.loopexit191
  %i.v = phi ptr [ %i.s, %.loopexit191 ], [ %i.e, %bb.b ] ; 3 uses
  %.val17.val.i388 = phi i8 [ %.val17.val.i, %.loopexit191 ], [ 47, %bb.b ] ; 2 uses
  %i.w = and i8 %.val17.val.i388, -33
  %i.x = add i8 %i.w, -91
  %narrow.i.i.i = icmp ult i8 %i.x, -26
  %i.y = icmp ne i8 %.val17.val.i388, 95
  %.not20.i = and i1 %i.y, %narrow.i.i.i
  br i1 %.not20.i, label %Psr_ManReadName.exit.threadthread-pre-split, label %.preheader.i49

.preheader.i49:                                   ; preds = %.loopexit191.thread, %.preheader.i49
  %.pn28.i = phi ptr [ %storemerge.i, %.preheader.i49 ], [ %i.v, %.loopexit191.thread ]
  %storemerge.i = getelementptr inbounds nuw i8, ptr %.pn28.i, i64 1 ; 4 uses
  store ptr %storemerge.i, ptr %i.a, align 8, !tbaa !27
  %i.z = load i8, ptr %storemerge.i, align 1, !tbaa !28 ; 4 uses
  %i.aa = and i8 %i.z, -33
  %i.ab = add i8 %i.aa, -91
  %narrow.i.i.i.i = icmp ult i8 %i.ab, -26
  %i.ac = icmp ne i8 %i.z, 95
  %.not5.not7.i.not26.i = and i1 %i.ac, %narrow.i.i.i.i
  %i.ad = add i8 %i.z, -58
  %i.ae = icmp ult i8 %i.ad, -10
  %i.af = icmp ne i8 %i.z, 36
  %.not24.i = and i1 %i.af, %.not5.not7.i.not26.i
  %narrow.i.not.i = and i1 %i.ae, %.not24.i
  br i1 %narrow.i.not.i, label %Psr_ManReadName.exit, label %.preheader.i49, !llvm.loop !4

Psr_ManReadName.exit:                             ; preds = %.preheader.i49, %bb.j
  %i.ag = phi ptr [ %storemerge15.i, %bb.j ], [ %storemerge.i, %.preheader.i49 ]
  %.0.i50 = phi ptr [ %i.t, %bb.j ], [ %i.v, %.preheader.i49 ]
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !32
  %i.aj = tail call i32 @Abc_NamStrFindOrAddLim(ptr noundef %i.ai, ptr noundef nonnull %.0.i50, ptr noundef nonnull %i.ag, ptr noundef null) #20 ; 6 uses
  %.not39 = icmp eq i32 %i.aj, 0
  %.val48.pre = load ptr, ptr %i.a, align 8, !tbaa !27 ; 3 uses
  br i1 %.not39, label %Psr_ManReadName.exit.threadthread-pre-split, label %bb.k

bb.k:                                             ; preds = %Psr_ManReadName.exit
  %i.ak = load ptr, ptr %i.b, align 8, !tbaa !29  ; 6 uses
  %i.al = icmp ult ptr %.val48.pre, %i.ak
  br i1 %i.al, label %.preheader.i54, label %.loopexit187

.preheader.i54:                                   ; preds = %bb.k, %.preheader.i54.backedge
  %i.am = phi ptr [ %.be715, %.preheader.i54.backedge ], [ %.val48.pre, %bb.k ] ; 6 uses
  %i.an = load i8, ptr %i.am, align 1, !tbaa !28  ; 2 uses
  switch i8 %i.an, label %Psr_ManReadName.exit.thread [
    i8 32, label %Psr_CharIsSpace.exit.thread.i71
    i8 13, label %Psr_CharIsSpace.exit.thread.i71
    i8 9, label %Psr_CharIsSpace.exit.thread.i71
    i8 10, label %Psr_CharIsSpace.exit.thread.i71
    i8 0, label %.loopexit187
    i8 47, label %bb.l
  ]

Psr_CharIsSpace.exit.thread.i71:                  ; preds = %.preheader.i54, %.preheader.i54, %.preheader.i54, %.preheader.i54
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 1 ; 2 uses
  store ptr %i.ao, ptr %i.a, align 8, !tbaa !27
  br label %.preheader.i54.backedge

.preheader.i54.backedge:                          ; preds = %Psr_CharIsSpace.exit.thread.i71, %Psr_ManUtilSkipComments.exit.i64
  %.be715 = phi ptr [ %i.ao, %Psr_CharIsSpace.exit.thread.i71 ], [ %.sink.i.i65, %Psr_ManUtilSkipComments.exit.i64 ]
  br label %.preheader.i54, !llvm.loop !0

end_hunk_0
