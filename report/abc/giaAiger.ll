Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaAiger?download=true
inline.NumInlined: 617
inline.NumDeleted: 77
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 10
begin_hunk_0_@Gia_AigerCollectLiterals:bb.a

bb.q:                                             ; preds = %bb.m
  %i.ca = icmp samesign ult i32 %i.bi, 1073741823
  %i.cb = shl nuw nsw i32 %i.bi, 1
  %spec.select.i36 = select i1 %i.ca, i32 %i.cb, i32 2147483647 ; 4 uses
  %.not.i9.i37 = icmp samesign ult i32 %i.bi, %spec.select.i36
  br i1 %.not.i9.i37, label %bb.r, label %Vec_IntPush.exit43

bb.r:                                             ; preds = %bb.q
  %.not9.i10.i38 = icmp eq ptr %i.bh, null
  %i.cc = zext nneg i32 %spec.select.i36 to i64
  %i.cd = shl nuw nsw i64 %i.cc, 2                ; 2 uses
  br i1 %.not9.i10.i38, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ce = tail call ptr @realloc(ptr noundef nonnull %i.bh, i64 noundef %i.cd) #30
  br label %Vec_IntGrow.exit11.sink.split.i39

bb.t:                                             ; preds = %bb.r
  %i.cf = tail call noalias ptr @malloc(i64 noundef %i.cd) #28
  br label %Vec_IntGrow.exit11.sink.split.i39

Vec_IntGrow.exit11.sink.split.i39:                ; preds = %bb.s, %bb.t, %bb.o, %bb.p
  %storemerge44 = phi ptr [ %i.bz, %bb.p ], [ %i.by, %bb.o ], [ %i.ce, %bb.s ], [ %i.cf, %bb.t ] ; 2 uses
  %spec.select.sink.i40 = phi i32 [ 16, %bb.p ], [ 16, %bb.o ], [ %spec.select.i36, %bb.s ], [ %spec.select.i36, %bb.t ] ; 2 uses
  store ptr %storemerge44, ptr %i.l, align 8, !tbaa !36
  store i32 %spec.select.sink.i40, ptr %i.e, align 8, !tbaa !35
  %.val23.pre = load ptr, ptr %i.b, align 8, !tbaa !33
  br label %Vec_IntPush.exit43

Vec_IntPush.exit43:                               ; preds = %bb.l, %bb.q, %Vec_IntGrow.exit11.sink.split.i39
  %.val23 = phi ptr [ %.val2361, %bb.l ], [ %.val2361, %bb.q ], [ %.val23.pre, %Vec_IntGrow.exit11.sink.split.i39 ] ; 2 uses
  %i.cg = phi ptr [ %i.bh, %bb.l ], [ %i.bh, %bb.q ], [ %storemerge44, %Vec_IntGrow.exit11.sink.split.i39 ] ; 2 uses
  %i.ch = phi i32 [ %i.bi, %bb.l ], [ %i.bi, %bb.q ], [ %spec.select.sink.i40, %Vec_IntGrow.exit11.sink.split.i39 ]
  %i.ci = add nsw i32 %i.bj, 1                    ; 2 uses
  store i32 %i.ci, ptr %i.g, align 4, !tbaa !34
  %i.cj = sext i32 %i.bj to i64
  %i.ck = getelementptr inbounds [4 x i8], ptr %i.cg, i64 %i.cj
  store i32 %i.bv, ptr %i.ck, align 4, !tbaa !38
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val = load i32, ptr %i.a, align 8, !tbaa !11
  %i.cl = getelementptr i8, ptr %.val23, i64 4
  %.val23.val = load i32, ptr %i.cl, align 4, !tbaa !34
  %i.cm = sub nsw i32 %.val23.val, %.val
  %i.cn = sext i32 %i.cm to i64
  %i.co = icmp slt i64 %indvars.iv.next, %i.cn
  br i1 %i.co, label %.lr.ph54, label %.critedge2, !llvm.loop !40

.critedge2:                                       ; preds = %.lr.ph54, %Vec_IntPush.exit43, %.critedge
  ret ptr %i.e
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define noalias noundef ptr @Gia_AigerReadLiterals(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #7 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #28 ; 7 uses
  %i.b = add i32 %1, -1
  %or.cond.i = icmp ult i32 %i.b, 15
  %spec.store.select.i = select i1 %or.cond.i, i32 16, i32 %1 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 3 uses
  store i32 %spec.store.select.i, ptr %i.a, align 8, !tbaa !35
  %.not.i = icmp eq i32 %spec.store.select.i, 0   ; 2 uses
  br i1 %.not.i, label %Vec_IntAlloc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = sext i32 %spec.store.select.i to i64
  %i.e = shl nsw i64 %i.d, 2
  %i.f = tail call noalias ptr @malloc(i64 noundef %i.e) #28
  br label %Vec_IntAlloc.exit

Vec_IntAlloc.exit:                                ; preds = %bb.a, %bb.b
  %i.g = phi ptr [ %i.f, %bb.b ], [ null, %bb.a ] ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store ptr %i.g, ptr %i.h, align 8, !tbaa !36
  %.promoted.i = load ptr, ptr %0, align 8, !tbaa !41 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.promoted.i, i64 1 ; 2 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !41
  %i.j = load i8, ptr %.promoted.i, align 1, !tbaa !8 ; 2 uses
  %i.k = zext i8 %i.j to i32                      ; 2 uses
  %.not7.i = icmp sgt i8 %i.j, -1
  br i1 %.not7.i, label %Gia_AigerReadUnsigned.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %Vec_IntAlloc.exit, %.lr.ph.i
  %i.l = phi i32 [ %i.u, %.lr.ph.i ], [ %i.k, %Vec_IntAlloc.exit ]
  %i.m = phi ptr [ %i.s, %.lr.ph.i ], [ %i.i, %Vec_IntAlloc.exit ] ; 2 uses
  %.09.i = phi i32 [ %i.o, %.lr.ph.i ], [ 0, %Vec_IntAlloc.exit ] ; 2 uses
  %.068.i = phi i32 [ %i.r, %.lr.ph.i ], [ 0, %Vec_IntAlloc.exit ]
  %i.n = and i32 %i.l, 127
  %i.o = add i32 %.09.i, 1                        ; 2 uses
  %i.p = mul i32 %.09.i, 7
  %i.q = shl i32 %i.n, %i.p
  %i.r = or i32 %i.q, %.068.i                     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 1 ; 2 uses
  store ptr %i.s, ptr %0, align 8, !tbaa !41
  %i.t = load i8, ptr %i.m, align 1, !tbaa !8     ; 2 uses
  %i.u = zext i8 %i.t to i32                      ; 2 uses
  %.not.i17 = icmp sgt i8 %i.t, -1
  br i1 %.not.i17, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !42

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %i.v = mul i32 %i.o, 7
  br label %Gia_AigerReadUnsigned.exit

Gia_AigerReadUnsigned.exit:                       ; preds = %Vec_IntAlloc.exit, %._crit_edge.loopexit.i
  %.06.lcssa.i = phi i32 [ 0, %Vec_IntAlloc.exit ], [ %i.r, %._crit_edge.loopexit.i ]
  %.0.lcssa.i = phi i32 [ 0, %Vec_IntAlloc.exit ], [ %i.v, %._crit_edge.loopexit.i ]
  %.lcssa.i = phi i32 [ %i.k, %Vec_IntAlloc.exit ], [ %i.u, %._crit_edge.loopexit.i ]
  %i.w = shl i32 %.lcssa.i, %.0.lcssa.i
  %i.x = or i32 %i.w, %.06.lcssa.i                ; 2 uses
  br i1 %.not.i, label %bb.c, label %Vec_IntPush.exit

bb.c:                                             ; preds = %Gia_AigerReadUnsigned.exit
  %.not9.i.i = icmp eq ptr %i.g, null
  br i1 %.not9.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.g, i64 noundef 64) #30
  br label %Vec_IntGrow.exit11.sink.split.i

bb.e:                                             ; preds = %bb.c
  %i.z = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #28
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.d, %bb.e
  %i.aa = phi ptr [ %i.y, %bb.d ], [ %i.z, %bb.e ] ; 2 uses
  store ptr %i.aa, ptr %i.h, align 8, !tbaa !36
  store i32 16, ptr %i.a, align 8, !tbaa !35
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %Gia_AigerReadUnsigned.exit, %Vec_IntGrow.exit11.sink.split.i
  %.promoted48 = phi ptr [ %i.g, %Gia_AigerReadUnsigned.exit ], [ %i.aa, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  store i32 1, ptr %i.c, align 4, !tbaa !34
  store i32 %i.x, ptr %.promoted48, align 4, !tbaa !38
  %i.ab = icmp sgt i32 %1, 1
  br i1 %i.ab, label %.lr.ph, label %bb.j

.lr.ph:                                           ; preds = %Vec_IntPush.exit
  %.promoted = load i32, ptr %i.c, align 4, !tbaa !34
  %.promoted45 = load i32, ptr %i.a, align 8, !tbaa !35
  %i.ac = sext i32 %.promoted to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %Vec_IntPush.exit36
  %indvars.iv = phi i64 [ %i.ac, %.lr.ph ], [ %indvars.iv.next, %Vec_IntPush.exit36 ] ; 7 uses
  %storemerge49 = phi ptr [ %.promoted48, %.lr.ph ], [ %storemerge50, %Vec_IntPush.exit36 ] ; 3 uses
  %spec.select.sink.i3347 = phi i32 [ %.promoted45, %.lr.ph ], [ %spec.select.sink.i3346, %Vec_IntPush.exit36 ] ; 3 uses
  %.043 = phi i32 [ 1, %.lr.ph ], [ %i.bi, %Vec_IntPush.exit36 ]
  %.01642 = phi i32 [ %i.x, %.lr.ph ], [ %i.ax, %Vec_IntPush.exit36 ]
  %.promoted.i18 = load ptr, ptr %0, align 8, !tbaa !41 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.promoted.i18, i64 1 ; 2 uses
  store ptr %i.ad, ptr %0, align 8, !tbaa !41
  %i.ae = load i8, ptr %.promoted.i18, align 1, !tbaa !8 ; 2 uses
  %i.af = zext i8 %i.ae to i32                    ; 2 uses
  %.not7.i19 = icmp sgt i8 %i.ae, -1
  br i1 %.not7.i19, label %Gia_AigerReadUnsigned.exit28, label %.lr.ph.i20

.lr.ph.i20:                                       ; preds = %bb.f, %.lr.ph.i20
  %i.ag = phi i32 [ %i.ap, %.lr.ph.i20 ], [ %i.af, %bb.f ]
  %i.ah = phi ptr [ %i.an, %.lr.ph.i20 ], [ %i.ad, %bb.f ] ; 2 uses
  %.09.i21 = phi i32 [ %i.aj, %.lr.ph.i20 ], [ 0, %bb.f ] ; 2 uses
  %.068.i22 = phi i32 [ %i.am, %.lr.ph.i20 ], [ 0, %bb.f ]
  %i.ai = and i32 %i.ag, 127
  %i.aj = add i32 %.09.i21, 1                     ; 2 uses
  %i.ak = mul i32 %.09.i21, 7
  %i.al = shl i32 %i.ai, %i.ak
  %i.am = or i32 %i.al, %.068.i22                 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 1 ; 2 uses
  store ptr %i.an, ptr %0, align 8, !tbaa !41
  %i.ao = load i8, ptr %i.ah, align 1, !tbaa !8   ; 2 uses
  %i.ap = zext i8 %i.ao to i32                    ; 2 uses
  %.not.i23 = icmp sgt i8 %i.ao, -1
  br i1 %.not.i23, label %._crit_edge.loopexit.i24, label %.lr.ph.i20, !llvm.loop !42

._crit_edge.loopexit.i24:                         ; preds = %.lr.ph.i20
  %i.aq = mul i32 %i.aj, 7
  br label %Gia_AigerReadUnsigned.exit28

Gia_AigerReadUnsigned.exit28:                     ; preds = %bb.f, %._crit_edge.loopexit.i24
  %.06.lcssa.i25 = phi i32 [ 0, %bb.f ], [ %i.am, %._crit_edge.loopexit.i24 ]
  %.0.lcssa.i26 = phi i32 [ 0, %bb.f ], [ %i.aq, %._crit_edge.loopexit.i24 ]
  %.lcssa.i27 = phi i32 [ %i.af, %bb.f ], [ %i.ap, %._crit_edge.loopexit.i24 ]
  %i.ar = shl i32 %.lcssa.i27, %.0.lcssa.i26
  %i.as = or i32 %i.ar, %.06.lcssa.i25            ; 2 uses
  %i.at = and i32 %i.as, 1
  %.not = icmp eq i32 %i.at, 0
  %i.au = ashr i32 %i.as, 1                       ; 2 uses
  %i.av = sub nsw i32 0, %i.au
  %i.aw = select i1 %.not, i32 %i.au, i32 %i.av
  %i.ax = add nsw i32 %i.aw, %.01642              ; 2 uses
  %i.ay = trunc nsw i64 %indvars.iv to i32
  %i.az = icmp eq i32 %spec.select.sink.i3347, %i.ay
  br i1 %i.az, label %bb.g, label %Vec_IntPush.exit36

bb.g:                                             ; preds = %Gia_AigerReadUnsigned.exit28
  %i.ba = icmp slt i64 %indvars.iv, 16
  br i1 %i.ba, label %Vec_IntPush.exit36.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bb = icmp samesign ult i64 %indvars.iv, 1073741823
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.bc = shl nsw i32 %indvars.iv.tr, 1
  %spec.select.i29 = select i1 %i.bb, i32 %i.bc, i32 2147483647 ; 3 uses
  %i.bd = sext i32 %spec.select.i29 to i64
  %.not.i9.i30 = icmp samesign ult i64 %indvars.iv, %i.bd
  br i1 %.not.i9.i30, label %bb.i, label %Vec_IntPush.exit36

bb.i:                                             ; preds = %bb.h
  %i.be = zext nneg i32 %spec.select.i29 to i64
  %i.bf = shl nuw nsw i64 %i.be, 2
  br label %Vec_IntPush.exit36.sink.split

Vec_IntPush.exit36.sink.split:                    ; preds = %bb.g, %bb.i
  %.sink = phi i64 [ %i.bf, %bb.i ], [ 64, %bb.g ]
  %spec.select.sink.i3346.ph = phi i32 [ %spec.select.i29, %bb.i ], [ 16, %bb.g ]
  %i.bg = tail call ptr @realloc(ptr noundef nonnull %storemerge49, i64 noundef %.sink) #30
  br label %Vec_IntPush.exit36

Vec_IntPush.exit36:                               ; preds = %Vec_IntPush.exit36.sink.split, %Gia_AigerReadUnsigned.exit28, %bb.h
  %storemerge50 = phi ptr [ %storemerge49, %Gia_AigerReadUnsigned.exit28 ], [ %storemerge49, %bb.h ], [ %i.bg, %Vec_IntPush.exit36.sink.split ] ; 3 uses
  %spec.select.sink.i3346 = phi i32 [ %spec.select.sink.i3347, %Gia_AigerReadUnsigned.exit28 ], [ %spec.select.sink.i3347, %bb.h ], [ %spec.select.sink.i3346.ph, %Vec_IntPush.exit36.sink.split ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.bh = getelementptr inbounds [4 x i8], ptr %storemerge50, i64 %indvars.iv
  store i32 %i.ax, ptr %i.bh, align 4, !tbaa !38
  %i.bi = add nuw nsw i32 %.043, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.bi, %1
  br i1 %exitcond.not, label %._crit_edge, label %bb.f, !llvm.loop !43

._crit_edge:                                      ; preds = %Vec_IntPush.exit36
  %i.bj = trunc nsw i64 %indvars.iv.next to i32
  store i32 %i.bj, ptr %i.c, align 4, !tbaa !34
  store i32 %spec.select.sink.i3346, ptr %i.a, align 8
  store ptr %storemerge50, ptr %i.h, align 8
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge, %Vec_IntPush.exit
  ret ptr %i.a
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define noalias noundef ptr @Gia_AigerWriteLiterals(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 4          ; 2 uses
  %.val32 = load i32, ptr %i.a, align 4, !tbaa !34 ; 2 uses
  %i.b = shl nsw i32 %.val32, 1                   ; 2 uses
  %i.c = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #28 ; 5 uses
  %i.d = add i32 %i.b, -1
  %or.cond.i = icmp ult i32 %i.d, 15
  %spec.store.select.i = select i1 %or.cond.i, i32 16, i32 %i.b ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  store i32 0, ptr %i.e, align 4, !tbaa !44
  store i32 %spec.store.select.i, ptr %i.c, align 8, !tbaa !46
  %.not.i = icmp eq i32 %spec.store.select.i, 0
  br i1 %.not.i, label %Vec_StrAlloc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = sext i32 %spec.store.select.i to i64
  %i.g = tail call noalias ptr @malloc(i64 noundef %i.f) #28
  br label %Vec_StrAlloc.exit

Vec_StrAlloc.exit:                                ; preds = %bb.a, %bb.b
  %.promoted = phi ptr [ %i.g, %bb.b ], [ null, %bb.a ] ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %.promoted, ptr %i.h, align 8, !tbaa !47
  %i.i = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %.val34 = load ptr, ptr %i.i, align 8, !tbaa !36
  %i.j = load i32, ptr %.val34, align 4, !tbaa !38 ; 4 uses
  %.not11.i = icmp ult i32 %i.j, 128
  br i1 %.not11.i, label %Gia_AigerWriteUnsignedBuffer.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %Vec_StrAlloc.exit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %Vec_StrAlloc.exit ] ; 2 uses
  %.013.i = phi i32 [ %i.n, %.lr.ph.i ], [ %i.j, %Vec_StrAlloc.exit ] ; 3 uses
  %i.k = trunc i32 %.013.i to i8
  %i.l = or i8 %i.k, -128
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.promoted, i64 %indvars.iv.i
  store i8 %i.l, ptr %i.m, align 1, !tbaa !8
  %i.n = lshr i32 %.013.i, 7                      ; 2 uses
  %.not.i37 = icmp ult i32 %.013.i, 16384
  br i1 %.not.i37, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !48

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %i.o = trunc nsw i64 %indvars.iv.next.i to i32
  br label %Gia_AigerWriteUnsignedBuffer.exit

Gia_AigerWriteUnsignedBuffer.exit:                ; preds = %Vec_StrAlloc.exit, %._crit_edge.loopexit.i
  %.010.lcssa.i = phi i32 [ 0, %Vec_StrAlloc.exit ], [ %i.o, %._crit_edge.loopexit.i ] ; 2 uses
  %.0.lcssa.i = phi i32 [ %i.j, %Vec_StrAlloc.exit ], [ %i.n, %._crit_edge.loopexit.i ]
  %i.p = trunc nuw nsw i32 %.0.lcssa.i to i8
  %i.q = sext i32 %.010.lcssa.i to i64
  %i.r = getelementptr inbounds i8, ptr %.promoted, i64 %i.q
  store i8 %i.p, ptr %i.r, align 1, !tbaa !8
  %.03051 = add nsw i32 %.010.lcssa.i, 1          ; 2 uses
  %i.s = icmp sgt i32 %.val32, 1
  br i1 %i.s, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %Gia_AigerWriteUnsignedBuffer.exit, %bb.c
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.c ], [ 1, %Gia_AigerWriteUnsignedBuffer.exit ] ; 2 uses
  %i.t = phi i32 [ %i.ar, %bb.c ], [ %spec.store.select.i, %Gia_AigerWriteUnsignedBuffer.exit ] ; 3 uses
  %i.u = phi ptr [ %i.as, %bb.c ], [ %.promoted, %Gia_AigerWriteUnsignedBuffer.exit ] ; 4 uses
  %.03055 = phi i32 [ %.030, %bb.c ], [ %.03051, %Gia_AigerWriteUnsignedBuffer.exit ] ; 2 uses
  %.02953 = phi i32 [ %i.w, %bb.c ], [ %i.j, %Gia_AigerWriteUnsignedBuffer.exit ] ; 2 uses
  %.val33 = load ptr, ptr %i.i, align 8, !tbaa !36
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %.val33, i64 %indvars.iv
  %i.w = load i32, ptr %i.v, align 4, !tbaa !38   ; 3 uses
  %i.x = sub nsw i32 %i.w, %.02953
  %i.y = icmp slt i32 %i.w, %.02953
  %i.z = tail call i32 @llvm.abs.i32(i32 %i.x, i1 false)
  %i.aa = shl i32 %i.z, 1                         ; 2 uses
  %i.ab = zext i1 %i.y to i32
  %i.ac = or disjoint i32 %i.aa, %i.ab            ; 2 uses
  %.not11.i38 = icmp ult i32 %i.aa, 128
  br i1 %.not11.i38, label %Gia_AigerWriteUnsignedBuffer.exit48, label %.lr.ph.preheader.i39

.lr.ph.preheader.i39:                             ; preds = %.lr.ph
  %i.ad = sext i32 %.03055 to i64
  br label %.lr.ph.i40

.lr.ph.i40:                                       ; preds = %.lr.ph.i40, %.lr.ph.preheader.i39
  %indvars.iv.i41 = phi i64 [ %i.ad, %.lr.ph.preheader.i39 ], [ %indvars.iv.next.i43, %.lr.ph.i40 ] ; 2 uses
  %.013.i42 = phi i32 [ %i.ac, %.lr.ph.preheader.i39 ], [ %i.ah, %.lr.ph.i40 ] ; 3 uses
  %i.ae = trunc i32 %.013.i42 to i8
  %i.af = or i8 %i.ae, -128
  %indvars.iv.next.i43 = add nsw i64 %indvars.iv.i41, 1 ; 2 uses
  %i.ag = getelementptr inbounds i8, ptr %i.u, i64 %indvars.iv.i41
  store i8 %i.af, ptr %i.ag, align 1, !tbaa !8
  %i.ah = lshr i32 %.013.i42, 7                   ; 2 uses
  %.not.i44 = icmp ult i32 %.013.i42, 16384
  br i1 %.not.i44, label %._crit_edge.loopexit.i45, label %.lr.ph.i40, !llvm.loop !48

._crit_edge.loopexit.i45:                         ; preds = %.lr.ph.i40
  %i.ai = trunc nsw i64 %indvars.iv.next.i43 to i32
  br label %Gia_AigerWriteUnsignedBuffer.exit48

Gia_AigerWriteUnsignedBuffer.exit48:              ; preds = %.lr.ph, %._crit_edge.loopexit.i45
  %.010.lcssa.i46 = phi i32 [ %.03055, %.lr.ph ], [ %i.ai, %._crit_edge.loopexit.i45 ] ; 3 uses
  %.0.lcssa.i47 = phi i32 [ %i.ac, %.lr.ph ], [ %i.ah, %._crit_edge.loopexit.i45 ]
  %i.aj = trunc nuw nsw i32 %.0.lcssa.i47 to i8
  %i.ak = sext i32 %.010.lcssa.i46 to i64
  %i.al = getelementptr inbounds i8, ptr %i.u, i64 %i.ak
  store i8 %i.aj, ptr %i.al, align 1, !tbaa !8
  %i.am = add nsw i32 %.010.lcssa.i46, 11
  %i.an = icmp sgt i32 %i.am, %i.t
  br i1 %i.an, label %Vec_StrGrow.exit, label %bb.c

Vec_StrGrow.exit:                                 ; preds = %Gia_AigerWriteUnsignedBuffer.exit48
  %i.ao = add nsw i32 %i.t, 1                     ; 2 uses
  %i.ap = sext i32 %i.ao to i64
  %i.aq = tail call ptr @realloc(ptr noundef nonnull %i.u, i64 noundef %i.ap) #30
  br label %bb.c

bb.c:                                             ; preds = %Gia_AigerWriteUnsignedBuffer.exit48, %Vec_StrGrow.exit
  %i.ar = phi i32 [ %i.t, %Gia_AigerWriteUnsignedBuffer.exit48 ], [ %i.ao, %Vec_StrGrow.exit ] ; 2 uses
  %i.as = phi ptr [ %i.u, %Gia_AigerWriteUnsignedBuffer.exit48 ], [ %i.aq, %Vec_StrGrow.exit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.030 = add nsw i32 %.010.lcssa.i46, 1          ; 2 uses
  %.val = load i32, ptr %i.a, align 4, !tbaa !34
  %i.at = sext i32 %.val to i64
  %i.au = icmp slt i64 %indvars.iv.next, %i.at
  br i1 %i.au, label %.lr.ph, label %..critedge_crit_edge, !llvm.loop !49

..critedge_crit_edge:                             ; preds = %bb.c
  store ptr %i.as, ptr %i.h, align 8
  store i32 %i.ar, ptr %i.c, align 8
  br label %.critedge

.critedge:                                        ; preds = %..critedge_crit_edge, %Gia_AigerWriteUnsignedBuffer.exit
  %.030.lcssa = phi i32 [ %.030, %..critedge_crit_edge ], [ %.03051, %Gia_AigerWriteUnsignedBuffer.exit ]
  store i32 %.030.lcssa, ptr %i.e, align 4, !tbaa !44
  ret ptr %i.c
}

; Function Attrs: nounwind uwtable
define ptr @Gia_AigerReadFromMemory(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 %4) local_unnamed_addr #8 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 123 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %storemerge = phi ptr [ %0, %bb.a ], [ %i.c, %bb.b ] ; 3 uses
  %i.b = load i8, ptr %storemerge, align 1, !tbaa !8
  %.not = icmp eq i8 %i.b, 32
  %i.c = getelementptr inbounds nuw i8, ptr %storemerge, i64 1 ; 4 uses
  br i1 %.not, label %bb.c, label %bb.b, !llvm.loop !50

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.c, ptr noundef null, i32 noundef 10) #29, !inline_history !51
  %i.e = trunc i64 %i.d to i32                    ; 3 uses
  %i.f = load i8, ptr %i.c, align 1, !tbaa !8
  %.not8601448 = icmp eq i8 %i.f, 32
  br i1 %.not8601448, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %i.g = phi ptr [ %i.h, %.lr.ph ], [ %i.c, %bb.c ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1 ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !8
  %.not860 = icmp eq i8 %i.i, 32
  br i1 %.not860, label %._crit_edge, label %.lr.ph, !llvm.loop !52

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
end_hunk_0
begin_hunk_1_@Gia_AigerReadFromMemory:bb.a
  %.promoted1520 = phi i64 [ 0, %Vec_IntAlloc.exit1095 ], [ %indvars.iv.next1689, %Vec_IntPush.exit1119 ]
  %i.qe = icmp sgt i32 %.37471920, 0
  br i1 %i.qe, label %.lr.ph1517, label %.preheader1399

.lr.ph1506:                                       ; preds = %Vec_IntAlloc.exit1095, %Vec_IntPush.exit1119
  %i.qf = phi ptr [ %i.ry, %Vec_IntPush.exit1119 ], [ %.promoted1475, %Vec_IntAlloc.exit1095 ] ; 2 uses
  %indvars.iv1688 = phi i64 [ %indvars.iv.next1689, %Vec_IntPush.exit1119 ], [ 0, %Vec_IntAlloc.exit1095 ] ; 7 uses
  %storemerge13831513 = phi ptr [ %storemerge13831514, %Vec_IntPush.exit1119 ], [ %.promoted1512, %Vec_IntAlloc.exit1095 ] ; 6 uses
  %spec.select.sink.i11161511 = phi i32 [ %spec.select.sink.i11161510, %Vec_IntPush.exit1119 ], [ %spec.store.select.i1089, %Vec_IntAlloc.exit1095 ] ; 3 uses
  %.47421505 = phi i32 [ %i.ss, %Vec_IntPush.exit1119 ], [ 0, %Vec_IntAlloc.exit1095 ]
  %i.qg = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.qf, ptr noundef null, i32 noundef 10) #29, !inline_history !51 ; 2 uses
  %i.qh = trunc i64 %i.qg to i32
  br label %bb.ca

bb.ca:                                            ; preds = %bb.cb, %.lr.ph1506
  %i.qi = phi ptr [ %i.qk, %bb.cb ], [ %i.qf, %.lr.ph1506 ] ; 2 uses
  %i.qj = load i8, ptr %i.qi, align 1, !tbaa !8
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qi, i64 1 ; 6 uses
  switch i8 %i.qj, label %bb.cb [
    i8 32, label %bb.cc
    i8 10, label %bb.cm
  ]

bb.cb:                                            ; preds = %bb.ca
  store ptr %i.qk, ptr %i.a, align 8, !tbaa !41
  br label %bb.ca, !llvm.loop !74

bb.cc:                                            ; preds = %bb.ca
  %i.ql = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.qk, ptr noundef null, i32 noundef 10) #29, !inline_history !51
  %i.qm = trunc i64 %i.ql to i32
  %i.qn = load i32, ptr %i.px, align 4, !tbaa !34 ; 7 uses
  %i.qo = load i32, ptr %i.pv, align 8, !tbaa !35
  %i.qp = icmp eq i32 %i.qn, %i.qo
  br i1 %i.qp, label %bb.cd, label %.Vec_IntPush.exit1103_crit_edge

.Vec_IntPush.exit1103_crit_edge:                  ; preds = %bb.cc
  %.pre1735 = load ptr, ptr %i.qc, align 8, !tbaa !36
  br label %Vec_IntPush.exit1103

bb.cd:                                            ; preds = %bb.cc
  %i.qq = icmp slt i32 %i.qn, 16
  br i1 %i.qq, label %bb.ce, label %bb.ch

bb.ce:                                            ; preds = %bb.cd
  %i.qr = load ptr, ptr %i.qc, align 8, !tbaa !36 ; 2 uses
  %.not9.i.i1101 = icmp eq ptr %i.qr, null
  br i1 %.not9.i.i1101, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.qs = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.qr, i64 noundef 64) #30
  br label %Vec_IntGrow.exit11.sink.split.i1099

bb.cg:                                            ; preds = %bb.ce
  %i.qt = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #28
  br label %Vec_IntGrow.exit11.sink.split.i1099

bb.ch:                                            ; preds = %bb.cd
  %i.qu = icmp samesign ult i32 %i.qn, 1073741823
  %i.qv = shl nuw nsw i32 %i.qn, 1
  %spec.select.i1096 = select i1 %i.qu, i32 %i.qv, i32 2147483647 ; 4 uses
  %.not.i9.i1097 = icmp samesign ult i32 %i.qn, %spec.select.i1096
  %.pre1736 = load ptr, ptr %i.qc, align 8, !tbaa !36 ; 3 uses
  br i1 %.not.i9.i1097, label %bb.ci, label %Vec_IntPush.exit1103

bb.ci:                                            ; preds = %bb.ch
  %.not9.i10.i1098 = icmp eq ptr %.pre1736, null
  %i.qw = zext nneg i32 %spec.select.i1096 to i64
  %i.qx = shl nuw nsw i64 %i.qw, 2                ; 2 uses
  br i1 %.not9.i10.i1098, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.qy = tail call ptr @realloc(ptr noundef nonnull %.pre1736, i64 noundef %i.qx) #30
  br label %Vec_IntGrow.exit11.sink.split.i1099

bb.ck:                                            ; preds = %bb.ci
  %i.qz = tail call noalias ptr @malloc(i64 noundef %i.qx) #28
  br label %Vec_IntGrow.exit11.sink.split.i1099

Vec_IntGrow.exit11.sink.split.i1099:              ; preds = %bb.cj, %bb.ck, %bb.cf, %bb.cg
  %storemerge1382 = phi ptr [ %i.qt, %bb.cg ], [ %i.qs, %bb.cf ], [ %i.qy, %bb.cj ], [ %i.qz, %bb.ck ] ; 2 uses
  %spec.select.sink.i1100 = phi i32 [ 16, %bb.cg ], [ 16, %bb.cf ], [ %spec.select.i1096, %bb.cj ], [ %spec.select.i1096, %bb.ck ]
  store ptr %storemerge1382, ptr %i.qc, align 8, !tbaa !36
  store i32 %spec.select.sink.i1100, ptr %i.pv, align 8, !tbaa !35
  br label %Vec_IntPush.exit1103

Vec_IntPush.exit1103:                             ; preds = %.Vec_IntPush.exit1103_crit_edge, %bb.ch, %Vec_IntGrow.exit11.sink.split.i1099
  %i.ra = phi ptr [ %.pre1735, %.Vec_IntPush.exit1103_crit_edge ], [ %.pre1736, %bb.ch ], [ %storemerge1382, %Vec_IntGrow.exit11.sink.split.i1099 ]
  %i.rb = add nsw i32 %i.qn, 1
  store i32 %i.rb, ptr %i.px, align 4, !tbaa !34
  %i.rc = sext i32 %i.qn to i64
  %i.rd = getelementptr inbounds [4 x i8], ptr %i.ra, i64 %i.rc
  store i32 %i.qm, ptr %i.rd, align 4, !tbaa !38
  br label %bb.cl

bb.cl:                                            ; preds = %bb.cl, %Vec_IntPush.exit1103
  %i.re = phi ptr [ %i.rf, %bb.cl ], [ %i.qk, %Vec_IntPush.exit1103 ] ; 2 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %i.re, i64 1 ; 3 uses
  store ptr %i.rf, ptr %i.a, align 8, !tbaa !41
  %i.rg = load i8, ptr %i.re, align 1, !tbaa !8
  %.not935 = icmp eq i8 %i.rg, 10
  br i1 %.not935, label %.loopexit1402, label %bb.cl, !llvm.loop !75

bb.cm:                                            ; preds = %bb.ca
  store ptr %i.qk, ptr %i.a, align 8, !tbaa !41
  %i.rh = load i32, ptr %i.px, align 4, !tbaa !34 ; 7 uses
  %i.ri = load i32, ptr %i.pv, align 8, !tbaa !35
  %i.rj = icmp eq i32 %i.rh, %i.ri
  br i1 %i.rj, label %bb.cn, label %.Vec_IntPush.exit1111_crit_edge

.Vec_IntPush.exit1111_crit_edge:                  ; preds = %bb.cm
  %.pre1733 = load ptr, ptr %i.qc, align 8, !tbaa !36
  br label %Vec_IntPush.exit1111

bb.cn:                                            ; preds = %bb.cm
  %i.rk = icmp slt i32 %i.rh, 16
  br i1 %i.rk, label %bb.co, label %bb.cr

bb.co:                                            ; preds = %bb.cn
  %i.rl = load ptr, ptr %i.qc, align 8, !tbaa !36 ; 2 uses
  %.not9.i.i1109 = icmp eq ptr %i.rl, null
  br i1 %.not9.i.i1109, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.rm = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.rl, i64 noundef 64) #30
  br label %Vec_IntGrow.exit11.sink.split.i1107

bb.cq:                                            ; preds = %bb.co
  %i.rn = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #28
  br label %Vec_IntGrow.exit11.sink.split.i1107

bb.cr:                                            ; preds = %bb.cn
  %i.ro = icmp samesign ult i32 %i.rh, 1073741823
  %i.rp = shl nuw nsw i32 %i.rh, 1
  %spec.select.i1104 = select i1 %i.ro, i32 %i.rp, i32 2147483647 ; 4 uses
  %.not.i9.i1105 = icmp samesign ult i32 %i.rh, %spec.select.i1104
  %.pre1734 = load ptr, ptr %i.qc, align 8, !tbaa !36 ; 3 uses
  br i1 %.not.i9.i1105, label %bb.cs, label %Vec_IntPush.exit1111

bb.cs:                                            ; preds = %bb.cr
  %.not9.i10.i1106 = icmp eq ptr %.pre1734, null
  %i.rq = zext nneg i32 %spec.select.i1104 to i64
  %i.rr = shl nuw nsw i64 %i.rq, 2                ; 2 uses
  br i1 %.not9.i10.i1106, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.rs = tail call ptr @realloc(ptr noundef nonnull %.pre1734, i64 noundef %i.rr) #30
  br label %Vec_IntGrow.exit11.sink.split.i1107

bb.cu:                                            ; preds = %bb.cs
  %i.rt = tail call noalias ptr @malloc(i64 noundef %i.rr) #28
  br label %Vec_IntGrow.exit11.sink.split.i1107

Vec_IntGrow.exit11.sink.split.i1107:              ; preds = %bb.ct, %bb.cu, %bb.cp, %bb.cq
  %storemerge1381 = phi ptr [ %i.rn, %bb.cq ], [ %i.rm, %bb.cp ], [ %i.rs, %bb.ct ], [ %i.rt, %bb.cu ] ; 2 uses
  %spec.select.sink.i1108 = phi i32 [ 16, %bb.cq ], [ 16, %bb.cp ], [ %spec.select.i1104, %bb.ct ], [ %spec.select.i1104, %bb.cu ]
  store ptr %storemerge1381, ptr %i.qc, align 8, !tbaa !36
  store i32 %spec.select.sink.i1108, ptr %i.pv, align 8, !tbaa !35
  br label %Vec_IntPush.exit1111

Vec_IntPush.exit1111:                             ; preds = %.Vec_IntPush.exit1111_crit_edge, %bb.cr, %Vec_IntGrow.exit11.sink.split.i1107
  %i.ru = phi ptr [ %.pre1733, %.Vec_IntPush.exit1111_crit_edge ], [ %.pre1734, %bb.cr ], [ %storemerge1381, %Vec_IntGrow.exit11.sink.split.i1107 ]
  %i.rv = add nsw i32 %i.rh, 1
  store i32 %i.rv, ptr %i.px, align 4, !tbaa !34
  %i.rw = sext i32 %i.rh to i64
  %i.rx = getelementptr inbounds [4 x i8], ptr %i.ru, i64 %i.rw
  store i32 0, ptr %i.rx, align 4, !tbaa !38
  br label %.loopexit1402

.loopexit1402:                                    ; preds = %bb.cl, %Vec_IntPush.exit1111
  %i.ry = phi ptr [ %i.qk, %Vec_IntPush.exit1111 ], [ %i.rf, %bb.cl ] ; 2 uses
  %i.rz = lshr i64 %i.qg, 1
  %.val976 = load ptr, ptr %i.dc, align 8, !tbaa !36
  %i.sa = and i64 %i.rz, 2147483647
  %i.sb = getelementptr inbounds nuw [4 x i8], ptr %.val976, i64 %i.sa
  %i.sc = load i32, ptr %i.sb, align 4, !tbaa !38
  %i.sd = and i32 %i.qh, 1
  %i.se = xor i32 %i.sc, %i.sd
  %i.sf = trunc nsw i64 %indvars.iv1688 to i32
  %i.sg = icmp eq i32 %spec.select.sink.i11161511, %i.sf
  br i1 %i.sg, label %bb.cv, label %Vec_IntPush.exit1119

bb.cv:                                            ; preds = %.loopexit1402
  %i.sh = icmp samesign ult i64 %indvars.iv1688, 16
  br i1 %i.sh, label %bb.cw, label %bb.cz

bb.cw:                                            ; preds = %bb.cv
  %.not9.i.i1117 = icmp eq ptr %storemerge13831513, null
  br i1 %.not9.i.i1117, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.si = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge13831513, i64 noundef 64) #30
  br label %Vec_IntPush.exit1119

bb.cy:                                            ; preds = %bb.cw
  %i.sj = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #28
  br label %Vec_IntPush.exit1119

bb.cz:                                            ; preds = %bb.cv
  %i.sk = icmp samesign ult i64 %indvars.iv1688, 1073741823
  %indvars.iv1688.tr = trunc i64 %indvars.iv1688 to i32
  %i.sl = shl nsw i32 %indvars.iv1688.tr, 1
  %spec.select.i1112 = select i1 %i.sk, i32 %i.sl, i32 2147483647 ; 4 uses
  %i.sm = sext i32 %spec.select.i1112 to i64
  %.not.i9.i1113 = icmp samesign ult i64 %indvars.iv1688, %i.sm
  br i1 %.not.i9.i1113, label %bb.da, label %Vec_IntPush.exit1119

bb.da:                                            ; preds = %bb.cz
  %.not9.i10.i1114 = icmp eq ptr %storemerge13831513, null
  %i.sn = zext nneg i32 %spec.select.i1112 to i64
  %i.so = shl nuw nsw i64 %i.sn, 2                ; 2 uses
  br i1 %.not9.i10.i1114, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.sp = tail call ptr @realloc(ptr noundef nonnull %storemerge13831513, i64 noundef %i.so) #30
  br label %Vec_IntPush.exit1119

bb.dc:                                            ; preds = %bb.da
  %i.sq = tail call noalias ptr @malloc(i64 noundef %i.so) #28
  br label %Vec_IntPush.exit1119

Vec_IntPush.exit1119:                             ; preds = %bb.cy, %bb.cx, %bb.dc, %bb.db, %.loopexit1402, %bb.cz
  %storemerge13831514 = phi ptr [ %storemerge13831513, %.loopexit1402 ], [ %storemerge13831513, %bb.cz ], [ %i.sj, %bb.cy ], [ %i.si, %bb.cx ], [ %i.sp, %bb.db ], [ %i.sq, %bb.dc ] ; 3 uses
  %spec.select.sink.i11161510 = phi i32 [ %spec.select.sink.i11161511, %.loopexit1402 ], [ %spec.select.sink.i11161511, %bb.cz ], [ 16, %bb.cy ], [ 16, %bb.cx ], [ %spec.select.i1112, %bb.db ], [ %spec.select.i1112, %bb.dc ] ; 2 uses
  %indvars.iv.next1689 = add nuw nsw i64 %indvars.iv1688, 1 ; 2 uses
  %i.sr = getelementptr inbounds nuw [4 x i8], ptr %storemerge13831514, i64 %indvars.iv1688
  store i32 %i.se, ptr %i.sr, align 4, !tbaa !38
  %i.ss = add nuw nsw i32 %.47421505, 1           ; 2 uses
  %exitcond1691.not = icmp eq i32 %i.ss, %i.t
  br i1 %exitcond1691.not, label %.preheader1400, label %.lr.ph1506, !llvm.loop !76

.lr.ph1517:                                       ; preds = %.preheader1400, %Vec_IntPush.exit1127
  %indvars.iv1692 = phi i64 [ %indvars.iv.next1693, %Vec_IntPush.exit1127 ], [ %.promoted1520, %.preheader1400 ] ; 7 uses
  %storemerge13801526 = phi ptr [ %storemerge13801527, %Vec_IntPush.exit1127 ], [ %.promoted1525, %.preheader1400 ] ; 6 uses
  %spec.select.sink.i11241524 = phi i32 [ %spec.select.sink.i11241523, %Vec_IntPush.exit1127 ], [ %.promoted1522, %.preheader1400 ] ; 3 uses
  %.promoted15151519 = phi ptr [ %i.sv, %Vec_IntPush.exit1127 ], [ %.promoted1518, %.preheader1400 ] ; 2 uses
  %.57431516 = phi i32 [ %i.tr, %Vec_IntPush.exit1127 ], [ 0, %.preheader1400 ]
  %i.st = tail call i64 @strtol(ptr noundef nonnull captures(none) %.promoted15151519, ptr noundef null, i32 noundef 10) #29, !inline_history !51 ; 2 uses
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dd, %.lr.ph1517
  %i.su = phi ptr [ %i.sv, %bb.dd ], [ %.promoted15151519, %.lr.ph1517 ] ; 2 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %i.su, i64 1 ; 3 uses
  store ptr %i.sv, ptr %i.a, align 8, !tbaa !41
  %i.sw = load i8, ptr %i.su, align 1, !tbaa !8
  %.not932 = icmp eq i8 %i.sw, 10
  br i1 %.not932, label %bb.de, label %bb.dd, !llvm.loop !77

bb.de:                                            ; preds = %bb.dd
  %i.sx = trunc i64 %i.st to i32
  %i.sy = lshr i64 %i.st, 1
  %.val975 = load ptr, ptr %i.dc, align 8, !tbaa !36
  %i.sz = and i64 %i.sy, 2147483647
  %i.ta = getelementptr inbounds nuw [4 x i8], ptr %.val975, i64 %i.sz
  %i.tb = load i32, ptr %i.ta, align 4, !tbaa !38
  %i.tc = and i32 %i.sx, 1
  %i.td = xor i32 %i.tb, %i.tc
  %i.te = trunc nsw i64 %indvars.iv1692 to i32
  %i.tf = icmp eq i32 %spec.select.sink.i11241524, %i.te
  br i1 %i.tf, label %bb.df, label %Vec_IntPush.exit1127

bb.df:                                            ; preds = %bb.de
  %i.tg = icmp slt i64 %indvars.iv1692, 16
  br i1 %i.tg, label %bb.dg, label %bb.dj

bb.dg:                                            ; preds = %bb.df
  %.not9.i.i1125 = icmp eq ptr %storemerge13801526, null
  br i1 %.not9.i.i1125, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.th = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge13801526, i64 noundef 64) #30
  br label %Vec_IntPush.exit1127

bb.di:                                            ; preds = %bb.dg
  %i.ti = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #28
  br label %Vec_IntPush.exit1127

bb.dj:                                            ; preds = %bb.df
  %i.tj = icmp samesign ult i64 %indvars.iv1692, 1073741823
  %indvars.iv1692.tr = trunc i64 %indvars.iv1692 to i32
  %i.tk = shl nsw i32 %indvars.iv1692.tr, 1
  %spec.select.i1120 = select i1 %i.tj, i32 %i.tk, i32 2147483647 ; 4 uses
  %i.tl = sext i32 %spec.select.i1120 to i64
  %.not.i9.i1121 = icmp samesign ult i64 %indvars.iv1692, %i.tl
  br i1 %.not.i9.i1121, label %bb.dk, label %Vec_IntPush.exit1127

bb.dk:                                            ; preds = %bb.dj
  %.not9.i10.i1122 = icmp eq ptr %storemerge13801526, null
  %i.tm = zext nneg i32 %spec.select.i1120 to i64
  %i.tn = shl nuw nsw i64 %i.tm, 2                ; 2 uses
  br i1 %.not9.i10.i1122, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.to = tail call ptr @realloc(ptr noundef nonnull %storemerge13801526, i64 noundef %i.tn) #30
  br label %Vec_IntPush.exit1127

bb.dm:                                            ; preds = %bb.dk
  %i.tp = tail call noalias ptr @malloc(i64 noundef %i.tn) #28
  br label %Vec_IntPush.exit1127

Vec_IntPush.exit1127:                             ; preds = %bb.di, %bb.dh, %bb.dm, %bb.dl, %bb.de, %bb.dj
  %storemerge13801527 = phi ptr [ %storemerge13801526, %bb.de ], [ %storemerge13801526, %bb.dj ], [ %i.ti, %bb.di ], [ %i.th, %bb.dh ], [ %i.to, %bb.dl ], [ %i.tp, %bb.dm ] ; 3 uses
  %spec.select.sink.i11241523 = phi i32 [ %spec.select.sink.i11241524, %bb.de ], [ %spec.select.sink.i11241524, %bb.dj ], [ 16, %bb.di ], [ 16, %bb.dh ], [ %spec.select.i1120, %bb.dl ], [ %spec.select.i1120, %bb.dm ]
  %indvars.iv.next1693 = add nsw i64 %indvars.iv1692, 1
  %i.tq = getelementptr inbounds [4 x i8], ptr %storemerge13801527, i64 %indvars.iv1692
  store i32 %i.td, ptr %i.tq, align 4, !tbaa !38
  %i.tr = add nuw nsw i32 %.57431516, 1           ; 2 uses
  %exitcond1695.not = icmp eq i32 %i.tr, %.37471920
  br i1 %exitcond1695.not, label %.loopexit1401, label %.lr.ph1517, !llvm.loop !78

.preheader1403:                                   ; preds = %Vec_IntPush.exit1135, %.preheader1404
  %.promoted1500 = phi ptr [ %.promoted1512, %.preheader1404 ], [ %storemerge13731491, %Vec_IntPush.exit1135 ] ; 2 uses
  %.promoted1497 = phi i32 [ %spec.store.select.i1089, %.preheader1404 ], [ %spec.select.sink.i11321487, %Vec_IntPush.exit1135 ]
  %.promoted1495 = phi i64 [ 0, %.preheader1404 ], [ %indvars.iv.next, %Vec_IntPush.exit1135 ]
  %i.ts = icmp sgt i32 %.37471920, 0
  br i1 %i.ts, label %.lr.ph1493, label %._crit_edge1494

.lr.ph1493:                                       ; preds = %.preheader1403
  %i.tt = getelementptr i8, ptr %.0753, i64 8
  %.0753.val = load ptr, ptr %i.tt, align 8, !tbaa !36
  %.val972 = load ptr, ptr %i.dc, align 8, !tbaa !36
  %sext1884 = shl i64 %i.s, 32
  %wide.trip.count1686 = zext nneg i32 %.37471920 to i64
  %i.tu = ashr exact i64 %sext1884, 30
  %invariant.gep = getelementptr i8, ptr %.0753.val, i64 %i.tu
  br label %bb.dw

bb.dn:                                            ; preds = %.lr.ph1483, %Vec_IntPush.exit1135
  %indvars.iv1673 = phi i64 [ 0, %.lr.ph1483 ], [ %indvars.iv.next1674, %Vec_IntPush.exit1135 ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph1483 ], [ %indvars.iv.next, %Vec_IntPush.exit1135 ] ; 7 uses
  %storemerge13731490 = phi ptr [ %.promoted1512, %.lr.ph1483 ], [ %storemerge13731491, %Vec_IntPush.exit1135 ] ; 6 uses
  %spec.select.sink.i11321488 = phi i32 [ %spec.store.select.i1089, %.lr.ph1483 ], [ %spec.select.sink.i11321487, %Vec_IntPush.exit1135 ] ; 3 uses
  %i.tv = getelementptr inbounds nuw [4 x i8], ptr %.0753.val974, i64 %indvars.iv1673
  %i.tw = load i32, ptr %i.tv, align 4, !tbaa !38 ; 2 uses
  %i.tx = lshr i32 %i.tw, 1
  %i.ty = zext nneg i32 %i.tx to i64
  %i.tz = getelementptr inbounds nuw [4 x i8], ptr %.val973, i64 %i.ty
  %i.ua = load i32, ptr %i.tz, align 4, !tbaa !38
  %i.ub = and i32 %i.tw, 1
  %i.uc = xor i32 %i.ua, %i.ub
  %i.ud = trunc nsw i64 %indvars.iv to i32
  %i.ue = icmp eq i32 %spec.select.sink.i11321488, %i.ud
  br i1 %i.ue, label %bb.do, label %Vec_IntPush.exit1135

bb.do:                                            ; preds = %bb.dn
  %i.uf = icmp samesign ult i64 %indvars.iv, 16
  br i1 %i.uf, label %bb.dp, label %bb.ds

bb.dp:                                            ; preds = %bb.do
  %.not9.i.i1133 = icmp eq ptr %storemerge13731490, null
  br i1 %.not9.i.i1133, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.ug = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge13731490, i64 noundef 64) #30
  br label %Vec_IntPush.exit1135

bb.dr:                                            ; preds = %bb.dp
  %i.uh = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #28
  br label %Vec_IntPush.exit1135

bb.ds:                                            ; preds = %bb.do
  %i.ui = icmp samesign ult i64 %indvars.iv, 1073741823
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.uj = shl nsw i32 %indvars.iv.tr, 1
  %spec.select.i1128 = select i1 %i.ui, i32 %i.uj, i32 2147483647 ; 4 uses
  %i.uk = sext i32 %spec.select.i1128 to i64
  %.not.i9.i1129 = icmp samesign ult i64 %indvars.iv, %i.uk
  br i1 %.not.i9.i1129, label %bb.dt, label %Vec_IntPush.exit1135

bb.dt:                                            ; preds = %bb.ds
  %.not9.i10.i1130 = icmp eq ptr %storemerge13731490, null
  %i.ul = zext nneg i32 %spec.select.i1128 to i64
  %i.um = shl nuw nsw i64 %i.ul, 2                ; 2 uses
  br i1 %.not9.i10.i1130, label %bb.dv, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.un = tail call ptr @realloc(ptr noundef nonnull %storemerge13731490, i64 noundef %i.um) #30
  br label %Vec_IntPush.exit1135

bb.dv:                                            ; preds = %bb.dt
  %i.uo = tail call noalias ptr @malloc(i64 noundef %i.um) #28
  br label %Vec_IntPush.exit1135

Vec_IntPush.exit1135:                             ; preds = %bb.dr, %bb.dq, %bb.dv, %bb.du, %bb.dn, %bb.ds
  %storemerge13731491 = phi ptr [ %storemerge13731490, %bb.dn ], [ %storemerge13731490, %bb.ds ], [ %i.uh, %bb.dr ], [ %i.ug, %bb.dq ], [ %i.un, %bb.du ], [ %i.uo, %bb.dv ] ; 3 uses
  %spec.select.sink.i11321487 = phi i32 [ %spec.select.sink.i11321488, %bb.dn ], [ %spec.select.sink.i11321488, %bb.ds ], [ 16, %bb.dr ], [ 16, %bb.dq ], [ %spec.select.i1128, %bb.du ], [ %spec.select.i1128, %bb.dv ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.up = getelementptr inbounds nuw [4 x i8], ptr %storemerge13731491, i64 %indvars.iv
  store i32 %i.uc, ptr %i.up, align 4, !tbaa !38
  %indvars.iv.next1674 = add nuw nsw i64 %indvars.iv1673, 1 ; 2 uses
  %exitcond1678.not = icmp eq i64 %indvars.iv.next1674, %wide.trip.count
  br i1 %exitcond1678.not, label %.preheader1403, label %bb.dn, !llvm.loop !79

bb.dw:                                            ; preds = %.lr.ph1493, %Vec_IntPush.exit1143
  %indvars.iv1681 = phi i64 [ 0, %.lr.ph1493 ], [ %indvars.iv.next1682, %Vec_IntPush.exit1143 ] ; 2 uses
  %indvars.iv1679 = phi i64 [ %.promoted1495, %.lr.ph1493 ], [ %indvars.iv.next1680, %Vec_IntPush.exit1143 ] ; 7 uses
  %storemerge13721501 = phi ptr [ %.promoted1500, %.lr.ph1493 ], [ %storemerge13721502, %Vec_IntPush.exit1143 ] ; 6 uses
  %spec.select.sink.i11401499 = phi i32 [ %.promoted1497, %.lr.ph1493 ], [ %spec.select.sink.i11401498, %Vec_IntPush.exit1143 ] ; 3 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv1681
  %i.uq = load i32, ptr %gep, align 4, !tbaa !38  ; 2 uses
  %i.ur = lshr i32 %i.uq, 1
  %i.us = zext nneg i32 %i.ur to i64
  %i.ut = getelementptr inbounds nuw [4 x i8], ptr %.val972, i64 %i.us
  %i.uu = load i32, ptr %i.ut, align 4, !tbaa !38
  %i.uv = and i32 %i.uq, 1
  %i.uw = xor i32 %i.uu, %i.uv
  %i.ux = trunc nsw i64 %indvars.iv1679 to i32
  %i.uy = icmp eq i32 %spec.select.sink.i11401499, %i.ux
  br i1 %i.uy, label %bb.dx, label %Vec_IntPush.exit1143

bb.dx:                                            ; preds = %bb.dw
  %i.uz = icmp slt i64 %indvars.iv1679, 16
  br i1 %i.uz, label %bb.dy, label %bb.eb

bb.dy:                                            ; preds = %bb.dx
  %.not9.i.i1141 = icmp eq ptr %storemerge13721501, null
  br i1 %.not9.i.i1141, label %bb.ea, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.va = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge13721501, i64 noundef 64) #30
  br label %Vec_IntPush.exit1143

bb.ea:                                            ; preds = %bb.dy
  %i.vb = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #28
  br label %Vec_IntPush.exit1143

bb.eb:                                            ; preds = %bb.dx
  %i.vc = icmp samesign ult i64 %indvars.iv1679, 1073741823
  %indvars.iv1679.tr = trunc i64 %indvars.iv1679 to i32
  %i.vd = shl nsw i32 %indvars.iv1679.tr, 1
  %spec.select.i1136 = select i1 %i.vc, i32 %i.vd, i32 2147483647 ; 4 uses
  %i.ve = sext i32 %spec.select.i1136 to i64
  %.not.i9.i1137 = icmp samesign ult i64 %indvars.iv1679, %i.ve
  br i1 %.not.i9.i1137, label %bb.ec, label %Vec_IntPush.exit1143

bb.ec:                                            ; preds = %bb.eb
  %.not9.i10.i1138 = icmp eq ptr %storemerge13721501, null
  %i.vf = zext nneg i32 %spec.select.i1136 to i64
  %i.vg = shl nuw nsw i64 %i.vf, 2                ; 2 uses
  br i1 %.not9.i10.i1138, label %bb.ee, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.vh = tail call ptr @realloc(ptr noundef nonnull %storemerge13721501, i64 noundef %i.vg) #30
  br label %Vec_IntPush.exit1143

bb.ee:                                            ; preds = %bb.ec
  %i.vi = tail call noalias ptr @malloc(i64 noundef %i.vg) #28
  br label %Vec_IntPush.exit1143

Vec_IntPush.exit1143:                             ; preds = %bb.ea, %bb.dz, %bb.ee, %bb.ed, %bb.dw, %bb.eb
  %storemerge13721502 = phi ptr [ %storemerge13721501, %bb.dw ], [ %storemerge13721501, %bb.eb ], [ %i.vb, %bb.ea ], [ %i.va, %bb.dz ], [ %i.vh, %bb.ed ], [ %i.vi, %bb.ee ] ; 3 uses
  %spec.select.sink.i11401498 = phi i32 [ %spec.select.sink.i11401499, %bb.dw ], [ %spec.select.sink.i11401499, %bb.eb ], [ 16, %bb.ea ], [ 16, %bb.dz ], [ %spec.select.i1136, %bb.ed ], [ %spec.select.i1136, %bb.ee ]
  %indvars.iv.next1680 = add nsw i64 %indvars.iv1679, 1
  %i.vj = getelementptr inbounds [4 x i8], ptr %storemerge13721502, i64 %indvars.iv1679
  store i32 %i.uw, ptr %i.vj, align 4, !tbaa !38
  %indvars.iv.next1682 = add nuw nsw i64 %indvars.iv1681, 1 ; 2 uses
  %exitcond1687.not = icmp eq i64 %indvars.iv.next1682, %wide.trip.count1686
  br i1 %exitcond1687.not, label %._crit_edge1494, label %bb.dw, !llvm.loop !80

._crit_edge1494:                                  ; preds = %Vec_IntPush.exit1143, %.preheader1403
  %.val9711741 = phi ptr [ %.promoted1500, %.preheader1403 ], [ %storemerge13721502, %Vec_IntPush.exit1143 ]
  %i.vk = getelementptr inbounds nuw i8, ptr %.0753, i64 8
  %i.vl = load ptr, ptr %i.vk, align 8, !tbaa !36 ; 2 uses
  %.not.i1144 = icmp eq ptr %i.vl, null
  br i1 %.not.i1144, label %Vec_IntFree.exit, label %bb.ef

bb.ef:                                            ; preds = %._crit_edge1494
  tail call void @free(ptr noundef nonnull %i.vl) #29
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %._crit_edge1494, %bb.ef
  tail call void @free(ptr noundef nonnull %.0753) #29
  br label %.loopexit1401

.loopexit1401:                                    ; preds = %Vec_IntPush.exit1127, %Vec_IntFree.exit
  %i.vm = phi ptr [ %.val9711741, %Vec_IntFree.exit ], [ %storemerge13801527, %Vec_IntPush.exit1127 ] ; 3 uses
  %.01331 = phi ptr [ null, %Vec_IntFree.exit ], [ %i.pv, %Vec_IntPush.exit1127 ] ; 2 uses
  %i.vn = icmp sgt i32 %.37471920, 0
  br i1 %i.vn, label %.lr.ph1531, label %.preheader1399

.lr.ph1531:                                       ; preds = %.loopexit1401
  %sext1885 = shl i64 %i.s, 32
  %wide.trip.count1699 = zext nneg i32 %.37471920 to i64
  %i.vo = ashr exact i64 %sext1885, 30
  %invariant.gep1984 = getelementptr i8, ptr %i.vm, i64 %i.vo
  br label %bb.eg

.preheader1399:                                   ; preds = %bb.eg, %.preheader1400, %.loopexit1401
  %.013311907 = phi ptr [ %i.pv, %.preheader1400 ], [ %.01331, %.loopexit1401 ], [ %.01331, %bb.eg ] ; 5 uses
  %i.vp = phi ptr [ %.promoted1525, %.preheader1400 ], [ %i.vm, %.loopexit1401 ], [ %i.vm, %bb.eg ] ; 3 uses
  %i.vq = icmp sgt i32 %i.t, 0
  br i1 %i.vq, label %.lr.ph1533, label %._crit_edge1534

.lr.ph1533:                                       ; preds = %.preheader1399
  %wide.trip.count1704 = and i64 %i.s, 2147483647
  br label %bb.eh

bb.eg:                                            ; preds = %.lr.ph1531, %bb.eg
  %indvars.iv1696 = phi i64 [ 0, %.lr.ph1531 ], [ %indvars.iv.next1697, %bb.eg ] ; 2 uses
  %gep1985 = getelementptr [4 x i8], ptr %invariant.gep1984, i64 %indvars.iv1696
  %i.vr = load i32, ptr %gep1985, align 4, !tbaa !38
  tail call fastcc void @Gia_ManAppendCo(ptr noundef %i.co, i32 noundef %i.vr)
  %indvars.iv.next1697 = add nuw nsw i64 %indvars.iv1696, 1 ; 2 uses
  %exitcond1700.not = icmp eq i64 %indvars.iv.next1697, %wide.trip.count1699
  br i1 %exitcond1700.not, label %.preheader1399, label %bb.eg, !llvm.loop !81

bb.eh:                                            ; preds = %.lr.ph1533, %bb.eh
  %indvars.iv1701 = phi i64 [ 0, %.lr.ph1533 ], [ %indvars.iv.next1702, %bb.eh ] ; 2 uses
  %i.vs = getelementptr inbounds nuw [4 x i8], ptr %i.vp, i64 %indvars.iv1701
  %i.vt = load i32, ptr %i.vs, align 4, !tbaa !38
  tail call fastcc void @Gia_ManAppendCo(ptr noundef %i.co, i32 noundef %i.vt)
  %indvars.iv.next1702 = add nuw nsw i64 %indvars.iv1701, 1 ; 2 uses
  %exitcond1705.not = icmp eq i64 %indvars.iv.next1702, %wide.trip.count1704
  br i1 %exitcond1705.not, label %._crit_edge1534.thread, label %bb.eh, !llvm.loop !82

._crit_edge1534:                                  ; preds = %.preheader1399
  %.not.i1145 = icmp eq ptr %i.vp, null
  br i1 %.not.i1145, label %Vec_IntFree.exit1146, label %._crit_edge1534.thread

._crit_edge1534.thread:                           ; preds = %bb.eh, %._crit_edge1534
  tail call void @free(ptr noundef nonnull %i.vp) #29
  br label %Vec_IntFree.exit1146

Vec_IntFree.exit1146:                             ; preds = %._crit_edge1534, %._crit_edge1534.thread
  tail call void @Gia_ManSetRegNum(ptr noundef %i.co, i32 noundef %i.t) #29
  store ptr %i.pl, ptr %i.a, align 8, !tbaa !41
  %i.vu = sext i32 %1 to i64
  %i.vv = getelementptr inbounds i8, ptr %0, i64 %i.vu ; 4 uses
  %i.vw = icmp ult ptr %i.pl, %i.vv
  br i1 %i.vw, label %bb.ei, label %.critedge19.thread

bb.ei:                                            ; preds = %Vec_IntFree.exit1146
  %i.vx = load i8, ptr %i.pl, align 1, !tbaa !8   ; 2 uses
  %.not876 = icmp eq i8 %i.vx, 99
  br i1 %.not876, label %.critedge19.thread, label %.lr.ph1545

.lr.ph1545:                                       ; preds = %bb.ei
  %i.vy = getelementptr i8, ptr %i.co, i64 100
  %i.vz = getelementptr i8, ptr %i.co, i64 24
  br label %bb.ej

thread-pre-split:                                 ; preds = %bb.ff
  %.pr = load i8, ptr %i.yo, align 1, !tbaa !8
  br label %bb.ej

bb.ej:                                            ; preds = %thread-pre-split, %.lr.ph1545
  %i.wa = phi i8 [ %.pr, %thread-pre-split ], [ %i.vx, %.lr.ph1545 ]
  %i.wb = phi ptr [ %i.yo, %thread-pre-split ], [ %i.pl, %.lr.ph1545 ] ; 2 uses
  %.07541544 = phi ptr [ %.2756, %thread-pre-split ], [ null, %.lr.ph1545 ] ; 8 uses
  %.07621543 = phi ptr [ %.2764, %thread-pre-split ], [ null, %.lr.ph1545 ] ; 11 uses
  %.07731542 = phi ptr [ %.2775, %thread-pre-split ], [ null, %.lr.ph1545 ] ; 11 uses
  %.07831541 = phi ptr [ %.2785, %thread-pre-split ], [ null, %.lr.ph1545 ] ; 11 uses
  %.07931540 = phi ptr [ %.2795, %thread-pre-split ], [ null, %.lr.ph1545 ] ; 8 uses
  switch i8 %i.wa, label %.critedge19 [
    i8 99, label %.critedge19.thread
    i8 105, label %bb.ek
    i8 111, label %bb.ek
    i8 108, label %bb.ek
    i8 110, label %bb.ek
  ]

bb.ek:                                            ; preds = %bb.ej, %bb.ej, %bb.ej, %bb.ej
  %i.wc = getelementptr inbounds nuw i8, ptr %i.wb, i64 1 ; 2 uses
  %i.wd = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.wc, ptr noundef null, i32 noundef 10) #29, !inline_history !51 ; 5 uses
  br label %bb.el

bb.el:                                            ; preds = %bb.el, %bb.ek
  %i.we = phi ptr [ %i.wf, %bb.el ], [ %i.wc, %bb.ek ] ; 2 uses
  %i.wf = getelementptr inbounds nuw i8, ptr %i.we, i64 1 ; 5 uses
  store ptr %i.wf, ptr %i.a, align 8, !tbaa !41
  %i.wg = load i8, ptr %i.we, align 1, !tbaa !8
  %.not883 = icmp eq i8 %i.wg, 32
  br i1 %.not883, label %.preheader1397, label %bb.el, !llvm.loop !83

.preheader1397:                                   ; preds = %bb.el
  %i.wh = trunc i64 %i.wd to i32                  ; 3 uses
  %i.wi = load i8, ptr %i.wf, align 1, !tbaa !8   ; 2 uses
  %i.wj = icmp eq i8 %i.wi, 32
  br i1 %i.wj, label %.lr.ph1537, label %.preheader1396

.preheader1396:                                   ; preds = %.lr.ph1537, %.preheader1397
  %i.wk = phi i8 [ %i.wi, %.preheader1397 ], [ %i.wn, %.lr.ph1537 ]
  %.promoted1539 = phi ptr [ %i.wf, %.preheader1397 ], [ %i.wm, %.lr.ph1537 ] ; 11 uses
  br label %bb.em

.lr.ph1537:                                       ; preds = %.preheader1397, %.lr.ph1537
  %i.wl = phi ptr [ %i.wm, %.lr.ph1537 ], [ %i.wf, %.preheader1397 ]
  %i.wm = getelementptr inbounds nuw i8, ptr %i.wl, i64 1 ; 4 uses
  store ptr %i.wm, ptr %i.a, align 8, !tbaa !41
  %i.wn = load i8, ptr %i.wm, align 1, !tbaa !8   ; 2 uses
  %i.wo = icmp eq i8 %i.wn, 32
  br i1 %i.wo, label %.lr.ph1537, label %.preheader1396, !llvm.loop !84

bb.em:                                            ; preds = %.preheader1396, %bb.en
  %i.wp = phi i8 [ %i.wk, %.preheader1396 ], [ %.pre1742, %bb.en ]
  %i.wq = phi ptr [ %.promoted1539, %.preheader1396 ], [ %i.wr, %bb.en ] ; 2 uses
  switch i8 %i.wp, label %bb.en [
    i8 10, label %bb.eo
    i8 0, label %.loopexit
  ]

bb.en:                                            ; preds = %bb.em
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wq, i64 1 ; 3 uses
  store ptr %i.wr, ptr %i.a, align 8, !tbaa !41
  %.pre1742 = load i8, ptr %i.wr, align 1, !tbaa !8
  br label %bb.em, !llvm.loop !85

bb.eo:                                            ; preds = %bb.em
  store i8 0, ptr %i.wq, align 1, !tbaa !8
  br label %.loopexit

.loopexit:                                        ; preds = %bb.em, %bb.eo
  %i.ws = load i8, ptr %i.wb, align 1, !tbaa !8
  switch i8 %i.ws, label %.critedge19 [
    i8 105, label %bb.ep
    i8 111, label %bb.es
    i8 108, label %bb.ev
    i8 110, label %bb.fa
  ]

bb.ep:                                            ; preds = %.loopexit
  %i.wt = icmp eq ptr %.07931540, null
  br i1 %i.wt, label %bb.eq, label %bb.er

bb.eq:                                            ; preds = %bb.ep
  %i.wu = tail call fastcc ptr @Vec_PtrStart(i32 noundef %i.m)
  br label %bb.er

bb.er:                                            ; preds = %bb.eq, %bb.ep
  %.1794 = phi ptr [ %i.wu, %bb.eq ], [ %.07931540, %bb.ep ] ; 4 uses
end_hunk_1
begin_hunk_2_@Gia_AigerWriteS:bb.a
  %i.bq = add nsw i32 %i.bp, %.0473.val674.val
  %i.br = getelementptr i8, ptr %.0473, i64 16    ; 13 uses
  %.0473.val663 = load i32, ptr %i.br, align 8, !tbaa !11 ; 3 uses
  %i.bs = sub nsw i32 %.0473.val674.val, %.0473.val663
  %i.bt = getelementptr i8, ptr %.0473, i64 172   ; 3 uses
  %.not495 = icmp eq i32 %.0473.val679, 0
  %i.bu = sub nsw i32 %.val.i, %.0473.val663
  %spec.select = select i1 %.not495, i32 %i.bu, i32 0
  %i.bv = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.aw, ptr noundef nonnull @.str.60, ptr noundef nonnull %i.bf, i32 noundef %i.bq, i32 noundef %i.bs, i32 noundef %.0473.val663, i32 noundef %spec.select, i32 noundef %i.bp) #29 ; 0 uses
  %.0473.val678 = load i32, ptr %i.bt, align 4, !tbaa !63 ; 3 uses
  %.not496 = icmp eq i32 %.0473.val678, 0
  br i1 %.not496, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.0473.val591 = load i32, ptr %i.br, align 8, !tbaa !11
  %.0473.val592 = load ptr, ptr %i.bk, align 8, !tbaa !33
  %i.bw = getelementptr i8, ptr %.0473.val592, i64 4
  %.0473.val592.val = load i32, ptr %i.bw, align 4, !tbaa !34
  %i.bx = add i32 %.0473.val591, %.0473.val678
  %i.by = sub i32 %.0473.val592.val, %i.bx
  %i.bz = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.aw, ptr noundef nonnull @.str.63, i32 noundef %i.by, i32 noundef %.0473.val678) #29 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %fputc = tail call i32 @fputc(i32 10, ptr nonnull %i.aw) ; 0 uses
  tail call void @Gia_ManInvertConstraints(ptr noundef nonnull %.0473) #29
  br i1 %.not494, label %.preheader743, label %bb.l

.preheader743:                                    ; preds = %bb.i
  %i.ca = getelementptr i8, ptr %.0473, i64 32    ; 2 uses
  %.0473.val600747 = load i32, ptr %i.br, align 8, !tbaa !11 ; 3 uses
  %i.cb = icmp sgt i32 %.0473.val600747, 0
  br i1 %i.cb, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.preheader743, %bb.j
  %.0473.val600749 = phi i32 [ %.0473.val600, %bb.j ], [ %.0473.val600747, %.preheader743 ] ; 2 uses
  %.0471748 = phi i32 [ %i.ct, %bb.j ], [ 0, %.preheader743 ] ; 2 uses
  %.0473.val613 = load ptr, ptr %i.ca, align 8, !tbaa !37 ; 2 uses
  %.not497 = icmp eq ptr %.0473.val613, null
  br i1 %.not497, label %.critedge, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %.0473.val590 = load ptr, ptr %i.bk, align 8, !tbaa !33 ; 2 uses
  %i.cc = getelementptr i8, ptr %.0473.val590, i64 8
  %.0473.val614.val = load ptr, ptr %i.cc, align 8, !tbaa !36
  %i.cd = getelementptr i8, ptr %.0473.val590, i64 4
  %.0473.val590.val = load i32, ptr %i.cd, align 4, !tbaa !34
  %i.ce = sub i32 %.0471748, %.0473.val600749
  %i.cf = add i32 %i.ce, %.0473.val590.val
  %i.cg = sext i32 %i.cf to i64
  %i.ch = getelementptr inbounds [4 x i8], ptr %.0473.val614.val, i64 %i.cg
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !38 ; 2 uses
  %i.cj = sext i32 %i.ci to i64
  %i.ck = getelementptr inbounds [12 x i8], ptr %.0473.val613, i64 %i.cj
  %.val3.i.i = load i64, ptr %i.ck, align 4
  %i.cl = trunc i64 %.val3.i.i to i32             ; 2 uses
  %i.cm = and i32 %i.cl, 536870911
  %i.cn = sub nsw i32 %i.ci, %i.cm
  %i.co = lshr i32 %i.cl, 29
  %i.cp = and i32 %i.co, 1
  %i.cq = shl nsw i32 %i.cn, 1
  %i.cr = or disjoint i32 %i.cq, %i.cp
  %i.cs = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.aw, ptr noundef nonnull @.str.64, i32 noundef %i.cr) #29 ; 0 uses
  %i.ct = add nuw nsw i32 %.0471748, 1            ; 2 uses
  %.0473.val600 = load i32, ptr %i.br, align 8, !tbaa !11 ; 3 uses
  %i.cu = icmp slt i32 %i.ct, %.0473.val600
  br i1 %i.cu, label %.lr.ph, label %.critedge, !llvm.loop !173

.critedge:                                        ; preds = %.lr.ph, %bb.j, %.preheader743
  %.0473.val587751 = phi i32 [ %.0473.val600747, %.preheader743 ], [ %.0473.val600749, %.lr.ph ], [ %.0473.val600, %bb.j ]
  %.0473.val588752 = load ptr, ptr %i.bk, align 8, !tbaa !33 ; 2 uses
  %i.cv = getelementptr i8, ptr %.0473.val588752, i64 4
  %.0473.val588.val753 = load i32, ptr %i.cv, align 4, !tbaa !34
  %i.cw = icmp sgt i32 %.0473.val588.val753, %.0473.val587751
  br i1 %i.cw, label %.lr.ph756, label %.critedge2

.lr.ph756:                                        ; preds = %.critedge, %bb.k
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.k ], [ 0, %.critedge ] ; 2 uses
  %.0473.val588755 = phi ptr [ %.0473.val588, %bb.k ], [ %.0473.val588752, %.critedge ]
  %.0473.val611 = load ptr, ptr %i.ca, align 8, !tbaa !37 ; 2 uses
  %.not498 = icmp eq ptr %.0473.val611, null
  br i1 %.not498, label %.critedge2, label %bb.k

bb.k:                                             ; preds = %.lr.ph756
  %i.cx = getelementptr i8, ptr %.0473.val588755, i64 8
  %.0473.val612.val = load ptr, ptr %i.cx, align 8, !tbaa !36
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %.0473.val612.val, i64 %indvars.iv
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !38 ; 2 uses
  %i.da = sext i32 %i.cz to i64
  %i.db = getelementptr inbounds [12 x i8], ptr %.0473.val611, i64 %i.da
  %.val3.i.i691 = load i64, ptr %i.db, align 4
  %i.dc = trunc i64 %.val3.i.i691 to i32          ; 2 uses
  %i.dd = and i32 %i.dc, 536870911
  %i.de = sub nsw i32 %i.cz, %i.dd
  %i.df = lshr i32 %i.dc, 29
  %i.dg = and i32 %i.df, 1
  %i.dh = shl nsw i32 %i.de, 1
  %i.di = or disjoint i32 %i.dh, %i.dg
  %i.dj = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.aw, ptr noundef nonnull @.str.64, i32 noundef %i.di) #29 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.0473.val587 = load i32, ptr %i.br, align 8, !tbaa !11
  %.0473.val588 = load ptr, ptr %i.bk, align 8, !tbaa !33 ; 2 uses
  %i.dk = getelementptr i8, ptr %.0473.val588, i64 4
  %.0473.val588.val = load i32, ptr %i.dk, align 4, !tbaa !34
  %i.dl = sub nsw i32 %.0473.val588.val, %.0473.val587
  %i.dm = sext i32 %i.dl to i64
  %i.dn = icmp slt i64 %indvars.iv.next, %i.dm
  br i1 %i.dn, label %.lr.ph756, label %.critedge2, !llvm.loop !174

bb.l:                                             ; preds = %bb.i
  %i.do = tail call ptr @Gia_AigerCollectLiterals(ptr noundef nonnull %.0473) ; 3 uses
  %i.dp = tail call ptr @Gia_AigerWriteLiterals(ptr noundef %i.do) ; 3 uses
  %i.dq = getelementptr i8, ptr %i.dp, i64 8
  %.val623 = load ptr, ptr %i.dq, align 8, !tbaa !47 ; 3 uses
  %i.dr = getelementptr i8, ptr %i.dp, i64 4
  %.val656 = load i32, ptr %i.dr, align 4, !tbaa !44
  %i.ds = sext i32 %.val656 to i64
  %i.dt = tail call i64 @fwrite(ptr noundef %.val623, i64 noundef 1, i64 noundef %i.ds, ptr noundef nonnull %i.aw) ; 0 uses
  %.not.i = icmp eq ptr %.val623, null
  br i1 %.not.i, label %Vec_StrFree.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @free(ptr noundef nonnull %.val623) #29
  br label %Vec_StrFree.exit

Vec_StrFree.exit:                                 ; preds = %bb.l, %bb.m
  tail call void @free(ptr noundef nonnull %i.dp) #29
  %i.du = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !36 ; 2 uses
  %.not.i692 = icmp eq ptr %i.dv, null
  br i1 %.not.i692, label %Vec_IntFree.exit, label %bb.n

bb.n:                                             ; preds = %Vec_StrFree.exit
  tail call void @free(ptr noundef nonnull %i.dv) #29
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %Vec_StrFree.exit, %bb.n
  tail call void @free(ptr noundef nonnull %i.do) #29
  br label %.critedge2

.critedge2:                                       ; preds = %bb.k, %.lr.ph756, %.critedge, %Vec_IntFree.exit
  tail call void @Gia_ManInvertConstraints(ptr noundef nonnull %.0473) #29
  %i.dw = load i32, ptr %i.bi, align 8, !tbaa !91 ; 3 uses
  %i.dx = load ptr, ptr %i.bg, align 8, !tbaa !65
  %i.dy = getelementptr i8, ptr %i.dx, i64 4
  %.val3.i693 = load i32, ptr %i.dy, align 4, !tbaa !34
  %i.dz = load ptr, ptr %i.bk, align 8, !tbaa !33
  %i.ea = getelementptr i8, ptr %i.dz, i64 4
  %.val.i694 = load i32, ptr %i.ea, align 4, !tbaa !34
  %i.eb = add i32 %.val.i694, %.val3.i693
  %i.ec = xor i32 %i.eb, -1
  %i.ed = add i32 %i.dw, %i.ec
  %i.ee = shl nsw i32 %i.ed, 3                    ; 2 uses
  %i.ef = add nsw i32 %i.ee, 100
  %i.eg = sext i32 %i.ef to i64
  %i.eh = tail call noalias ptr @malloc(i64 noundef %i.eg) #28 ; 7 uses
  %i.ei = icmp sgt i32 %i.dw, 0
  br i1 %i.ei, label %.lr.ph760, label %.critedge4

.lr.ph760:                                        ; preds = %.critedge2
  %i.ej = getelementptr i8, ptr %.0473, i64 32
  %.0473.val608 = load ptr, ptr %i.ej, align 8, !tbaa !37 ; 2 uses
  %.not499 = icmp eq ptr %.0473.val608, null
  %i.ek = add nsw i32 %i.ee, 90
  br i1 %.not499, label %.critedge4, label %.lr.ph760.split.preheader

.lr.ph760.split.preheader:                        ; preds = %.lr.ph760
  %wide.trip.count = zext nneg i32 %i.dw to i64
  br label %.lr.ph760.split

.lr.ph760.split:                                  ; preds = %.lr.ph760.split.preheader, %bb.r
  %indvars.iv829 = phi i64 [ 0, %.lr.ph760.split.preheader ], [ %indvars.iv.next830, %bb.r ] ; 4 uses
  %.0469759 = phi i32 [ 0, %.lr.ph760.split.preheader ], [ %.1470, %bb.r ] ; 3 uses
  %i.el = getelementptr inbounds nuw [12 x i8], ptr %.0473.val608, i64 %indvars.iv829
  %.val673 = load i64, ptr %i.el, align 4         ; 5 uses
  %i.em = and i64 %.val673, 2147483648
  %.not.i695 = icmp ne i64 %i.em, 0
  %i.en = and i64 %.val673, 536870911
  %i.eo = icmp eq i64 %i.en, 536870911
  %narrow.i.not = or i1 %.not.i695, %i.eo
  br i1 %narrow.i.not, label %bb.r, label %bb.o

bb.o:                                             ; preds = %.lr.ph760.split
  %i.ep = trunc i64 %.val673 to i32               ; 2 uses
  %i.eq = and i32 %i.ep, 536870911
  %i.er = trunc nuw nsw i64 %indvars.iv829 to i32 ; 2 uses
  %.neg = sub nsw i32 %i.eq, %i.er
  %i.es = shl i32 %i.ep, 2
  %i.et = ashr i32 %i.es, 31
  %.neg730 = shl i32 %.neg, 1
  %.neg731 = add i32 %.neg730, %i.et
  %i.eu = lshr i64 %.val673, 32
  %i.ev = trunc nuw i64 %i.eu to i32
  %i.ew = and i32 %i.ev, 536870911
  %i.ex = sub nsw i32 %i.er, %i.ew
  %i.ey = lshr i64 %.val673, 61
  %i.ez = trunc nuw nsw i64 %i.ey to i32
  %i.fa = and i32 %i.ez, 1
  %i.fb = shl nsw i32 %i.ex, 1
  %i.fc = or disjoint i32 %i.fb, %i.fa            ; 2 uses
  %indvars.iv829.tr = trunc nuw i64 %indvars.iv829 to i32
  %i.fd = shl nuw i32 %indvars.iv829.tr, 1
  %i.fe = sub i32 %i.fd, %i.fc                    ; 3 uses
  %.not11.i = icmp ult i32 %i.fe, 128
  br i1 %.not11.i, label %Gia_AigerWriteUnsignedBuffer.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.o
  %i.ff = sext i32 %.0469759 to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ %i.ff, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %.013.i = phi i32 [ %i.fe, %.lr.ph.preheader.i ], [ %i.fj, %.lr.ph.i ] ; 3 uses
  %i.fg = trunc i32 %.013.i to i8
  %i.fh = or i8 %i.fg, -128
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.fi = getelementptr inbounds i8, ptr %i.eh, i64 %indvars.iv.i
  store i8 %i.fh, ptr %i.fi, align 1, !tbaa !8
  %i.fj = lshr i32 %.013.i, 7                     ; 2 uses
  %.not.i696 = icmp ult i32 %.013.i, 16384
  br i1 %.not.i696, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !48

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %i.fk = trunc nsw i64 %indvars.iv.next.i to i32
  br label %Gia_AigerWriteUnsignedBuffer.exit

Gia_AigerWriteUnsignedBuffer.exit:                ; preds = %bb.o, %._crit_edge.loopexit.i
  %.010.lcssa.i = phi i32 [ %.0469759, %bb.o ], [ %i.fk, %._crit_edge.loopexit.i ] ; 2 uses
  %.0.lcssa.i = phi i32 [ %i.fe, %bb.o ], [ %i.fj, %._crit_edge.loopexit.i ]
  %i.fl = trunc nuw nsw i32 %.0.lcssa.i to i8
  %i.fm = add nsw i32 %.010.lcssa.i, 1            ; 2 uses
  %i.fn = sext i32 %.010.lcssa.i to i64
  %i.fo = getelementptr inbounds i8, ptr %i.eh, i64 %i.fn
  store i8 %i.fl, ptr %i.fo, align 1, !tbaa !8
  %i.fp = add i32 %.neg731, %i.fc                 ; 3 uses
  %.not11.i697 = icmp ult i32 %i.fp, 128
  br i1 %.not11.i697, label %Gia_AigerWriteUnsignedBuffer.exit707, label %.lr.ph.preheader.i698

.lr.ph.preheader.i698:                            ; preds = %Gia_AigerWriteUnsignedBuffer.exit
  %i.fq = sext i32 %i.fm to i64
  br label %.lr.ph.i699

.lr.ph.i699:                                      ; preds = %.lr.ph.i699, %.lr.ph.preheader.i698
  %indvars.iv.i700 = phi i64 [ %i.fq, %.lr.ph.preheader.i698 ], [ %indvars.iv.next.i702, %.lr.ph.i699 ] ; 2 uses
  %.013.i701 = phi i32 [ %i.fp, %.lr.ph.preheader.i698 ], [ %i.fu, %.lr.ph.i699 ] ; 3 uses
  %i.fr = trunc i32 %.013.i701 to i8
  %i.fs = or i8 %i.fr, -128
  %indvars.iv.next.i702 = add nsw i64 %indvars.iv.i700, 1 ; 2 uses
  %i.ft = getelementptr inbounds i8, ptr %i.eh, i64 %indvars.iv.i700
  store i8 %i.fs, ptr %i.ft, align 1, !tbaa !8
  %i.fu = lshr i32 %.013.i701, 7                  ; 2 uses
  %.not.i703 = icmp ult i32 %.013.i701, 16384
  br i1 %.not.i703, label %._crit_edge.loopexit.i704, label %.lr.ph.i699, !llvm.loop !48

._crit_edge.loopexit.i704:                        ; preds = %.lr.ph.i699
  %i.fv = trunc nsw i64 %indvars.iv.next.i702 to i32
  br label %Gia_AigerWriteUnsignedBuffer.exit707

Gia_AigerWriteUnsignedBuffer.exit707:             ; preds = %Gia_AigerWriteUnsignedBuffer.exit, %._crit_edge.loopexit.i704
  %.010.lcssa.i705 = phi i32 [ %i.fm, %Gia_AigerWriteUnsignedBuffer.exit ], [ %i.fv, %._crit_edge.loopexit.i704 ] ; 3 uses
  %.0.lcssa.i706 = phi i32 [ %i.fp, %Gia_AigerWriteUnsignedBuffer.exit ], [ %i.fu, %._crit_edge.loopexit.i704 ]
  %i.fw = trunc nuw nsw i32 %.0.lcssa.i706 to i8
  %i.fx = add nsw i32 %.010.lcssa.i705, 1
  %i.fy = sext i32 %.010.lcssa.i705 to i64
  %i.fz = getelementptr inbounds i8, ptr %i.eh, i64 %i.fy
  store i8 %i.fw, ptr %i.fz, align 1, !tbaa !8
  %.not732 = icmp slt i32 %.010.lcssa.i705, %i.ek
  br i1 %.not732, label %bb.r, label %bb.p

bb.p:                                             ; preds = %Gia_AigerWriteUnsignedBuffer.exit707
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.7) ; 0 uses
  %i.ga = tail call i32 @fclose(ptr noundef nonnull %i.aw) ; 0 uses
  %.not569 = icmp eq ptr %.0473, %0
  br i1 %.not569, label %bb.db, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @Gia_ManStop(ptr noundef nonnull %.0473) #29
  br label %bb.db

bb.r:                                             ; preds = %.lr.ph760.split, %Gia_AigerWriteUnsignedBuffer.exit707
  %.1470 = phi i32 [ %i.fx, %Gia_AigerWriteUnsignedBuffer.exit707 ], [ %.0469759, %.lr.ph760.split ] ; 2 uses
  %indvars.iv.next830 = add nuw nsw i64 %indvars.iv829, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next830, %wide.trip.count
  br i1 %exitcond.not, label %.critedge4.loopexit, label %.lr.ph760.split, !llvm.loop !175

.critedge4.loopexit:                              ; preds = %bb.r
  %i.gb = sext i32 %.1470 to i64
  br label %.critedge4

.critedge4:                                       ; preds = %.critedge4.loopexit, %.lr.ph760, %.critedge2
  %.0469.lcssa = phi i64 [ 0, %.critedge2 ], [ 0, %.lr.ph760 ], [ %i.gb, %.critedge4.loopexit ]
  %i.gc = tail call i64 @fwrite(ptr noundef %i.eh, i64 noundef 1, i64 noundef %.0469.lcssa, ptr noundef nonnull %i.aw) ; 0 uses
  %.not500 = icmp eq ptr %i.eh, null
  br i1 %.not500, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.critedge4
  tail call void @free(ptr noundef nonnull %i.eh) #29
  br label %bb.t

bb.t:                                             ; preds = %.critedge4, %bb.s
  %i.gd = getelementptr inbounds nuw i8, ptr %.0473, i64 640 ; 3 uses
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !143
  %.not501 = icmp eq ptr %i.ge, null
  br i1 %.not501, label %.critedge10, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.gf = getelementptr inbounds nuw i8, ptr %.0473, i64 648 ; 2 uses
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !144
  %.not502 = icmp eq ptr %i.gg, null
  br i1 %.not502, label %.critedge10, label %.preheader742

.preheader742:                                    ; preds = %bb.u
  %i.gh = getelementptr i8, ptr %.0473, i64 32    ; 4 uses
  %.0473.val661763 = load i32, ptr %i.br, align 8, !tbaa !11 ; 3 uses
  %.0473.val662764 = load ptr, ptr %i.bg, align 8, !tbaa !65
  %i.gi = getelementptr i8, ptr %.0473.val662764, i64 4
  %.0473.val662.val765 = load i32, ptr %i.gi, align 4, !tbaa !34
  %i.gj = icmp sgt i32 %.0473.val662.val765, %.0473.val661763
  br i1 %i.gj, label %.lr.ph767.preheader, label %.critedge6

.lr.ph767.preheader:                              ; preds = %.preheader742
  %.0473.val670912 = load ptr, ptr %i.gh, align 8, !tbaa !37
  %.not503913 = icmp eq ptr %.0473.val670912, null
  br i1 %.not503913, label %.critedge6, label %.lr.ph915

.lr.ph767:                                        ; preds = %.lr.ph915
  %.0473.val670 = load ptr, ptr %i.gh, align 8, !tbaa !37
  %.not503 = icmp eq ptr %.0473.val670, null
  br i1 %.not503, label %.critedge6, label %.lr.ph915, !llvm.loop !176

.lr.ph915:                                        ; preds = %.lr.ph767.preheader, %.lr.ph767
  %indvars.iv832914 = phi i64 [ %indvars.iv.next833, %.lr.ph767 ], [ 0, %.lr.ph767.preheader ] ; 3 uses
  %i.gk = load ptr, ptr %i.gd, align 8, !tbaa !143
  %i.gl = getelementptr i8, ptr %i.gk, i64 8
  %.val642 = load ptr, ptr %i.gl, align 8, !tbaa !89
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %.val642, i64 %indvars.iv832914
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !90
  %i.go = trunc nuw nsw i64 %indvars.iv832914 to i32
  %i.gp = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.aw, ptr noundef nonnull @.str.66, i32 noundef %i.go, ptr noundef %i.gn) #29 ; 0 uses
  %indvars.iv.next833 = add nuw nsw i64 %indvars.iv832914, 1 ; 2 uses
  %.0473.val661 = load i32, ptr %i.br, align 8, !tbaa !11 ; 3 uses
  %.0473.val662 = load ptr, ptr %i.bg, align 8, !tbaa !65
  %i.gq = getelementptr i8, ptr %.0473.val662, i64 4
  %.0473.val662.val = load i32, ptr %i.gq, align 4, !tbaa !34
  %i.gr = sub nsw i32 %.0473.val662.val, %.0473.val661
  %i.gs = sext i32 %i.gr to i64
  %i.gt = icmp slt i64 %indvars.iv.next833, %i.gs
  br i1 %i.gt, label %.lr.ph767, label %..critedge6.loopexit_crit_edge, !llvm.loop !176

..critedge6.loopexit_crit_edge:                   ; preds = %.lr.ph915
  br label %.critedge6, !llvm.loop !176

.critedge6:                                       ; preds = %.lr.ph767, %.lr.ph767.preheader, %..critedge6.loopexit_crit_edge, %.preheader742
  %.0473.val599769 = phi i32 [ %.0473.val661763, %.preheader742 ], [ %.0473.val661, %..critedge6.loopexit_crit_edge ], [ %.0473.val661763, %.lr.ph767.preheader ], [ %.0473.val661, %.lr.ph767 ] ; 3 uses
  %i.gu = icmp sgt i32 %.0473.val599769, 0
  br i1 %i.gu, label %.lr.ph772, label %.critedge8

.lr.ph772:                                        ; preds = %.critedge6, %bb.v
  %.0473.val599771 = phi i32 [ %.0473.val599, %bb.v ], [ %.0473.val599769, %.critedge6 ] ; 2 uses
  %.4770 = phi i32 [ %i.he, %bb.v ], [ 0, %.critedge6 ] ; 3 uses
  %.0473.val668 = load ptr, ptr %i.gh, align 8, !tbaa !37
  %.not504 = icmp eq ptr %.0473.val668, null
  br i1 %.not504, label %.critedge8, label %bb.v

bb.v:                                             ; preds = %.lr.ph772
  %.0473.val660 = load ptr, ptr %i.bg, align 8, !tbaa !65
  %i.gv = getelementptr i8, ptr %.0473.val660, i64 4
  %.0473.val660.val = load i32, ptr %i.gv, align 4, !tbaa !34
  %i.gw = sub i32 %.4770, %.0473.val599771
  %i.gx = add i32 %i.gw, %.0473.val660.val
  %i.gy = sext i32 %i.gx to i64
  %i.gz = load ptr, ptr %i.gd, align 8, !tbaa !143
  %i.ha = getelementptr i8, ptr %i.gz, i64 8
  %.val641 = load ptr, ptr %i.ha, align 8, !tbaa !89
  %i.hb = getelementptr inbounds [8 x i8], ptr %.val641, i64 %i.gy
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !90
  %i.hd = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.aw, ptr noundef nonnull @.str.67, i32 noundef %.4770, ptr noundef %i.hc) #29 ; 0 uses
  %i.he = add nuw nsw i32 %.4770, 1               ; 2 uses
  %.0473.val599 = load i32, ptr %i.br, align 8, !tbaa !11 ; 3 uses
  %i.hf = icmp slt i32 %i.he, %.0473.val599
  br i1 %i.hf, label %.lr.ph772, label %.critedge8, !llvm.loop !177

.critedge8:                                       ; preds = %.lr.ph772, %bb.v, %.critedge6
  %.0473.val774 = phi i32 [ %.0473.val599769, %.critedge6 ], [ %.0473.val599771, %.lr.ph772 ], [ %.0473.val599, %bb.v ]
  %.0473.val586775 = load ptr, ptr %i.bk, align 8, !tbaa !33
  %i.hg = getelementptr i8, ptr %.0473.val586775, i64 4
  %.0473.val586.val776 = load i32, ptr %i.hg, align 4, !tbaa !34
  %i.hh = icmp sgt i32 %.0473.val586.val776, %.0473.val774
  br i1 %i.hh, label %.lr.ph778, label %.critedge10

.lr.ph778:                                        ; preds = %.critedge8, %bb.w
  %indvars.iv835 = phi i64 [ %indvars.iv.next836, %bb.w ], [ 0, %.critedge8 ] ; 3 uses
  %.0473.val609 = load ptr, ptr %i.gh, align 8, !tbaa !37
  %.not505 = icmp eq ptr %.0473.val609, null
  br i1 %.not505, label %.critedge10, label %bb.w

bb.w:                                             ; preds = %.lr.ph778
  %i.hi = load ptr, ptr %i.gf, align 8, !tbaa !144
  %i.hj = getelementptr i8, ptr %i.hi, i64 8
  %.val640 = load ptr, ptr %i.hj, align 8, !tbaa !89
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %.val640, i64 %indvars.iv835
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !90
end_hunk_2
