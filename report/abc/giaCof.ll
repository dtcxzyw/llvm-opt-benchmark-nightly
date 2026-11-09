Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaCof?download=true
inline.NumInlined: 312
inline.NumDeleted: 83
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@Cof_ManPrintHighFanoutOne:bb.a
  %i.be = tail call i32 @Cof_ManSuppSize_rec(ptr noundef nonnull %0, ptr noundef nonnull %.sink.i)
  %i.bf = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %i.be) ; 0 uses
  %i.bg = load i32, ptr %i.au, align 8, !tbaa !55
  %i.bh = add nsw i32 %i.bg, 1
  store i32 %i.bh, ptr %i.au, align 8, !tbaa !55
  %.val.i13 = load i32, ptr %1, align 4
  %i.bi = and i32 %.val.i13, 241
  %narrow.i.not.i14 = icmp eq i32 %i.bi, 17
  br i1 %narrow.i.not.i14, label %bb.o, label %Cof_ManTfiSize.exit

bb.o:                                             ; preds = %Cof_ManSuppSize.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bk = load i32, ptr %i.bj, align 4
  %i.bl = and i32 %i.bk, 2147483647
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = sub nsw i64 0, %i.bm
  %i.bo = getelementptr inbounds [4 x i8], ptr %1, i64 %i.bn
  br label %Cof_ManTfiSize.exit

Cof_ManTfiSize.exit:                              ; preds = %bb.o, %Cof_ManSuppSize.exit
  %.sink.i15 = phi ptr [ %i.bo, %bb.o ], [ %1, %Cof_ManSuppSize.exit ]
  %i.bp = tail call i32 @Cof_ManTfiSize_rec(ptr noundef nonnull %0, ptr noundef nonnull %.sink.i15)
  %i.bq = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %i.bp) ; 0 uses
  %i.br = load i32, ptr %i.au, align 8, !tbaa !55
  %i.bs = add nsw i32 %i.br, 1
  store i32 %i.bs, ptr %i.au, align 8, !tbaa !55
  %i.bt = tail call i32 @Cof_ManTfoSize_rec(ptr noundef nonnull %0, ptr noundef nonnull %1)
  %i.bu = add i32 %i.bt, -1
  %i.bv = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %i.bu) ; 0 uses
  %i.bw = tail call i32 @Cof_ManCountRemoved(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 0)
  %i.bx = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %i.bw) ; 0 uses
  %i.by = tail call i32 @Cof_ManCountRemoved(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 1)
  %i.bz = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.by) ; 0 uses
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define void @Cof_ManPrintHighFanout(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #27 ; 5 uses
  %i.b = add i32 %1, -1
  %or.cond.i.i = icmp ult i32 %i.b, 7
  %spec.store.select.i.i = select i1 %or.cond.i.i, i32 8, i32 %1 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  store i32 0, ptr %i.c, align 4, !tbaa !60
  store i32 %spec.store.select.i.i, ptr %i.a, align 8, !tbaa !61
  %.not.i.i = icmp eq i32 %spec.store.select.i.i, 0
  br i1 %.not.i.i, label %Vec_PtrAlloc.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = sext i32 %spec.store.select.i.i to i64
  %i.e = shl nsw i64 %i.d, 3
  %i.f = tail call noalias ptr @malloc(i64 noundef %i.e) #27
  br label %Vec_PtrAlloc.exit.i

Vec_PtrAlloc.exit.i:                              ; preds = %bb.b, %bb.a
  %i.g = phi ptr [ %i.f, %bb.b ], [ null, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.g, ptr %i.h, align 8, !tbaa !62
  %i.i = getelementptr i8, ptr %0, i64 40
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !41   ; 2 uses
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph.i, label %.critedge

.lr.ph.i:                                         ; preds = %Vec_PtrAlloc.exit.i, %bb.f
  %i.m = phi i32 [ %i.s, %bb.f ], [ %i.k, %Vec_PtrAlloc.exit.i ]
  %.022.i = phi i32 [ %i.w, %bb.f ], [ 0, %Vec_PtrAlloc.exit.i ] ; 2 uses
  %.val.i = load ptr, ptr %i.i, align 8, !tbaa !42 ; 2 uses
  %i.n = zext nneg i32 %.022.i to i64
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %i.n ; 3 uses
  %.not.i = icmp eq ptr %.val.i, null
  br i1 %.not.i, label %Cof_ManCollectHighFanout.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %.val16.i = load i32, ptr %i.o, align 4         ; 4 uses
  %i.p = and i32 %.val16.i, 241
  %narrow.i.not.i = icmp eq i32 %i.p, 1
  br i1 %narrow.i.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i18.i = trunc i32 %.val16.i to i1
  %i.q = and i32 %.val16.i, 240
  %i.r = icmp eq i32 %i.q, 0
  %narrow.i19.not.i = or i1 %i.r, %.not.i18.i
  br i1 %narrow.i19.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void @Cof_ManInsertEntry_rec(ptr noundef nonnull %i.a, ptr noundef nonnull %i.o, i32 noundef %1)
  %.val15.pre.i = load i32, ptr %i.o, align 4
  %.pre.i = load i32, ptr %i.j, align 8, !tbaa !41
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.s = phi i32 [ %i.m, %bb.d ], [ %.pre.i, %bb.e ] ; 2 uses
  %.val15.i = phi i32 [ %.val16.i, %bb.d ], [ %.val15.pre.i, %bb.e ] ; 2 uses
  %i.t = lshr i32 %.val15.i, 4
  %i.u = and i32 %i.t, 15
  %i.v = lshr i32 %.val15.i, 8
  %narrow.i20.i = add nuw nsw i32 %.022.i, 6
  %narrow2.i.i = add nuw nsw i32 %narrow.i20.i, %i.v
  %i.w = add nuw nsw i32 %narrow2.i.i, %i.u       ; 2 uses
  %i.x = icmp slt i32 %i.w, %i.s
  br i1 %i.x, label %.lr.ph.i, label %Cof_ManCollectHighFanout.exit, !llvm.loop !1

Cof_ManCollectHighFanout.exit:                    ; preds = %.lr.ph.i, %bb.f
  %.val.pre = load i32, ptr %i.c, align 4, !tbaa !60 ; 2 uses
  %.pre.pre = load ptr, ptr %i.h, align 8, !tbaa !62 ; 3 uses
  %i.y = icmp sgt i32 %.val.pre, 0
  br i1 %i.y, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %Cof_ManCollectHighFanout.exit
  %wide.trip.count = zext nneg i32 %.val.pre to i64
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %.pre.pre, i64 %indvars.iv
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !63
  tail call void @Cof_ManPrintHighFanoutOne(ptr noundef %0, ptr noundef %i.aa)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge.thread, label %bb.g, !llvm.loop !85

.critedge:                                        ; preds = %Vec_PtrAlloc.exit.i, %Cof_ManCollectHighFanout.exit
  %.pre19 = phi ptr [ %.pre.pre, %Cof_ManCollectHighFanout.exit ], [ %i.g, %Vec_PtrAlloc.exit.i ] ; 2 uses
  %.not.i10 = icmp eq ptr %.pre19, null
  br i1 %.not.i10, label %Vec_PtrFree.exit, label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.g, %.critedge
  %.pre1922 = phi ptr [ %.pre19, %.critedge ], [ %.pre.pre, %bb.g ]
  tail call void @free(ptr noundef nonnull %.pre1922) #28
  br label %Vec_PtrFree.exit

Vec_PtrFree.exit:                                 ; preds = %.critedge, %.critedge.thread
  tail call void @free(ptr noundef nonnull %i.a) #28
  ret void
}

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite) uwtable
define i32 @Cof_NodeDeref_rec(ptr nofree noundef captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = load i32, ptr %0, align 4                ; 2 uses
  %i.b = and i32 %i.a, 240
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %tailrecurse
  %i.d = phi i32 [ %i.z, %tailrecurse ], [ %i.a, %bb.a ] ; 2 uses
  %.tr5 = phi ptr [ %i.w, %tailrecurse ], [ %0, %bb.a ] ; 5 uses
  %accumulator.tr4 = phi i32 [ %i.y, %tailrecurse ], [ 0, %bb.a ] ; 2 uses
  %i.e = lshr i32 %i.d, 8
  %i.f = add nuw nsw i32 %i.e, 16777215
  %i.g = and i32 %i.f, 16777215                   ; 2 uses
  %i.h = shl nuw i32 %i.g, 8
  %i.i = and i32 %i.d, 255
  %i.j = or disjoint i32 %i.h, %i.i
  store i32 %i.j, ptr %.tr5, align 4
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %tailrecurse, label %._crit_edge

tailrecurse:                                      ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %.tr5, i64 24
  %i.l = load i32, ptr %i.k, align 4
  %i.m = and i32 %i.l, 2147483647
  %i.n = zext nneg i32 %i.m to i64
  %i.o = sub nsw i64 0, %i.n
  %i.p = getelementptr inbounds [4 x i8], ptr %.tr5, i64 %i.o
  %i.q = tail call i32 @Cof_NodeDeref_rec(ptr noundef nonnull %i.p)
  %i.r = getelementptr inbounds nuw i8, ptr %.tr5, i64 28
  %i.s = load i32, ptr %i.r, align 4
  %i.t = and i32 %i.s, 2147483647
  %i.u = zext nneg i32 %i.t to i64
  %i.v = sub nsw i64 0, %i.u
  %i.w = getelementptr inbounds [4 x i8], ptr %.tr5, i64 %i.v ; 2 uses
  %i.x = add i32 %accumulator.tr4, 1
  %i.y = add i32 %i.x, %i.q                       ; 2 uses
  %i.z = load i32, ptr %i.w, align 4              ; 2 uses
  %i.aa = and i32 %i.z, 240
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %tailrecurse, %.lr.ph, %bb.a
  %accumulator.tr.lcssa = phi i32 [ 0, %bb.a ], [ %accumulator.tr4, %.lr.ph ], [ %i.y, %tailrecurse ]
  ret i32 %accumulator.tr.lcssa
}

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite) uwtable
define i32 @Cof_NodeRef_rec(ptr nofree noundef captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = load i32, ptr %0, align 4                ; 2 uses
  %i.b = and i32 %i.a, 240
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %tailrecurse
  %i.d = phi i32 [ %i.u, %tailrecurse ], [ %i.a, %bb.a ] ; 2 uses
  %.tr5 = phi ptr [ %i.r, %tailrecurse ], [ %0, %bb.a ] ; 5 uses
  %accumulator.tr4 = phi i32 [ %i.t, %tailrecurse ], [ 0, %bb.a ] ; 2 uses
  %i.e = add i32 %i.d, 256
  store i32 %i.e, ptr %.tr5, align 4
  %.not = icmp ult i32 %i.d, 256
  br i1 %.not, label %tailrecurse, label %._crit_edge

tailrecurse:                                      ; preds = %.lr.ph
  %i.f = getelementptr inbounds nuw i8, ptr %.tr5, i64 24
  %i.g = load i32, ptr %i.f, align 4
  %i.h = and i32 %i.g, 2147483647
  %i.i = zext nneg i32 %i.h to i64
  %i.j = sub nsw i64 0, %i.i
  %i.k = getelementptr inbounds [4 x i8], ptr %.tr5, i64 %i.j
  %i.l = tail call i32 @Cof_NodeRef_rec(ptr noundef nonnull %i.k)
  %i.m = getelementptr inbounds nuw i8, ptr %.tr5, i64 28
  %i.n = load i32, ptr %i.m, align 4
  %i.o = and i32 %i.n, 2147483647
  %i.p = zext nneg i32 %i.o to i64
  %i.q = sub nsw i64 0, %i.p
  %i.r = getelementptr inbounds [4 x i8], ptr %.tr5, i64 %i.q ; 2 uses
  %i.s = add i32 %accumulator.tr4, 1
  %i.t = add i32 %i.s, %i.l                       ; 2 uses
  %i.u = load i32, ptr %i.r, align 4              ; 2 uses
  %i.v = and i32 %i.u, 240
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %tailrecurse, %.lr.ph, %bb.a
  %accumulator.tr.lcssa = phi i32 [ 0, %bb.a ], [ %accumulator.tr4, %.lr.ph ], [ %i.t, %tailrecurse ]
  ret i32 %accumulator.tr.lcssa
}

; Function Attrs: nounwind uwtable
define void @Cof_ManPrintFanio(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [100 x i8], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.b = getelementptr i8, ptr %0, i64 40         ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !41   ; 3 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph.preheader, label %Abc_Base10Log.exit218

.lr.ph.preheader:                                 ; preds = %bb.a
  %.val178.pre285 = load ptr, ptr %i.b, align 8, !tbaa !42
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.f
  %.pre295 = phi i32 [ %.pre296, %bb.f ], [ %i.d, %.lr.ph.preheader ] ; 2 uses
  %i.f = phi i32 [ %i.af, %bb.f ], [ %i.d, %.lr.ph.preheader ] ; 2 uses
  %.val178 = phi ptr [ %.val178287, %bb.f ], [ %.val178.pre285, %.lr.ph.preheader ] ; 4 uses
  %.0152260 = phi i32 [ %i.ak, %bb.f ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %.0158257 = phi i32 [ %.1159, %bb.f ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %.0160256 = phi i32 [ %.1161, %bb.f ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %.0162255 = phi i32 [ %.1163, %bb.f ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %.0164254 = phi i32 [ %.1165, %bb.f ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.g = phi <2 x i32> [ %i.ag, %bb.f ], [ zeroinitializer, %.lr.ph.preheader ] ; 3 uses
  %i.h = zext nneg i32 %.0152260 to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %.val178, i64 %i.h ; 6 uses
  %.not = icmp eq ptr %.val178, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %.val186 = load i32, ptr %i.i, align 4          ; 8 uses
  %i.j = trunc i32 %.val186 to i1
  %i.k = icmp eq i32 %.0152260, 0
  %or.cond = or i1 %i.k, %i.j
  br i1 %or.cond, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = lshr i32 %.val186, 4
  %i.m = and i32 %i.l, 15                         ; 2 uses
  %i.n = lshr i32 %.val186, 8                     ; 2 uses
  %i.o = icmp ugt i32 %.val186, 511
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = and i32 %.val186, -256
  %i.q = and i32 %.val186, 254
  %i.r = or disjoint i32 %i.q, 256
  store i32 %i.r, ptr %i.i, align 4
  %i.s = tail call i32 @Cof_NodeDeref_rec(ptr noundef nonnull %i.i)
  %i.t = tail call i32 @Cof_NodeRef_rec(ptr noundef nonnull %i.i) ; 0 uses
  %i.u = load i32, ptr %i.i, align 4
  %i.v = and i32 %i.u, 255
  %i.w = or disjoint i32 %i.v, %i.p               ; 2 uses
  store i32 %i.w, ptr %i.i, align 4
  %.val178.pre = load ptr, ptr %i.b, align 8, !tbaa !42
  %.pre.pre = load i32, ptr %i.c, align 8, !tbaa !41
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.pre = phi i32 [ %.pre.pre, %bb.d ], [ %.pre295, %bb.c ] ; 2 uses
  %.val180289 = phi i32 [ %i.w, %bb.d ], [ %.val186, %bb.c ]
  %.val178286 = phi ptr [ %.val178.pre, %bb.d ], [ %.val178, %bb.c ]
  %i.x = phi i32 [ %i.s, %bb.d ], [ 0, %bb.c ]    ; 2 uses
  %i.y = add nsw i32 %i.m, %.0158257
  %i.z = insertelement <2 x i32> poison, i32 %i.n, i64 0
  %i.aa = insertelement <2 x i32> %i.z, i32 %i.x, i64 1
  %i.ab = add nsw <2 x i32> %i.aa, %i.g
  %i.ac = tail call noundef i32 @llvm.smax.i32(i32 %.0164254, i32 %i.m)
  %i.ad = tail call noundef i32 @llvm.smax.i32(i32 %.0162255, i32 %i.n)
  %i.ae = tail call noundef i32 @llvm.smax.i32(i32 %.0160256, i32 %i.x)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %.pre296 = phi i32 [ %.pre295, %bb.b ], [ %.pre, %bb.e ]
  %i.af = phi i32 [ %i.f, %bb.b ], [ %.pre, %bb.e ] ; 3 uses
  %.val180 = phi i32 [ %.val186, %bb.b ], [ %.val180289, %bb.e ] ; 2 uses
  %.val178287 = phi ptr [ %.val178, %bb.b ], [ %.val178286, %bb.e ]
  %.1165 = phi i32 [ %.0164254, %bb.b ], [ %i.ac, %bb.e ] ; 2 uses
  %.1163 = phi i32 [ %.0162255, %bb.b ], [ %i.ad, %bb.e ] ; 2 uses
  %.1161 = phi i32 [ %.0160256, %bb.b ], [ %i.ae, %bb.e ] ; 2 uses
  %.1159 = phi i32 [ %.0158257, %bb.b ], [ %i.y, %bb.e ] ; 2 uses
  %i.ag = phi <2 x i32> [ %i.g, %bb.b ], [ %i.ab, %bb.e ] ; 2 uses
  %i.ah = lshr i32 %.val180, 4
  %i.ai = and i32 %i.ah, 15
  %i.aj = lshr i32 %.val180, 8
  %narrow.i = add nuw nsw i32 %.0152260, 6
  %narrow2.i = add nuw nsw i32 %narrow.i, %i.aj
  %i.ak = add nuw nsw i32 %narrow2.i, %i.ai       ; 2 uses
  %i.al = icmp slt i32 %i.ak, %i.af
  br i1 %i.al, label %.lr.ph, label %.critedge, !llvm.loop !86

.critedge:                                        ; preds = %.lr.ph, %bb.f
  %i.am = phi i32 [ %i.f, %.lr.ph ], [ %i.af, %bb.f ]
  %.0164.lcssa.ph = phi i32 [ %.0164254, %.lr.ph ], [ %.1165, %bb.f ] ; 5 uses
  %.0162.lcssa.ph = phi i32 [ %.0162255, %.lr.ph ], [ %.1163, %bb.f ] ; 5 uses
  %.0160.lcssa.ph = phi i32 [ %.0160256, %.lr.ph ], [ %.1161, %bb.f ] ; 5 uses
  %.0158.lcssa.ph = phi i32 [ %.0158257, %.lr.ph ], [ %.1159, %bb.f ]
  %i.an = phi <2 x i32> [ %i.g, %.lr.ph ], [ %i.ag, %bb.f ]
  %i.ao = icmp sgt i32 %i.am, 0                   ; 2 uses
  %i.ap = sitofp i32 %.0158.lcssa.ph to double    ; 2 uses
  %i.aq = sitofp <2 x i32> %i.an to <2 x double>  ; 2 uses
  %i.ar = icmp ult i32 %.0164.lcssa.ph, 2
  br i1 %i.ar, label %Abc_Base10Log.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.critedge
  %i.as = add nsw i32 %.0164.lcssa.ph, -1
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.013.i = phi i32 [ %i.au, %.lr.ph.i ], [ 0, %.lr.ph.preheader.i ]
  %.0812.i = phi i32 [ %i.at, %.lr.ph.i ], [ %i.as, %.lr.ph.preheader.i ] ; 2 uses
  %i.at = udiv i32 %.0812.i, 10
  %i.au = add nuw nsw i32 %.013.i, 1              ; 2 uses
  %.not.i = icmp ult i32 %.0812.i, 10
  br i1 %.not.i, label %Abc_Base10Log.exit, label %.lr.ph.i, !llvm.loop !87

Abc_Base10Log.exit:                               ; preds = %.lr.ph.i, %.critedge
  %.09.i = phi i32 [ %.0164.lcssa.ph, %.critedge ], [ %i.au, %.lr.ph.i ]
  %i.av = mul i32 %.09.i, 10
  %i.aw = add i32 %i.av, 10
  %i.ax = icmp ult i32 %.0162.lcssa.ph, 2
  br i1 %i.ax, label %Abc_Base10Log.exit211, label %.lr.ph.preheader.i205

.lr.ph.preheader.i205:                            ; preds = %Abc_Base10Log.exit
  %i.ay = add nsw i32 %.0162.lcssa.ph, -1
  br label %.lr.ph.i206

.lr.ph.i206:                                      ; preds = %.lr.ph.i206, %.lr.ph.preheader.i205
  %.013.i207 = phi i32 [ %i.ba, %.lr.ph.i206 ], [ 0, %.lr.ph.preheader.i205 ]
  %.0812.i208 = phi i32 [ %i.az, %.lr.ph.i206 ], [ %i.ay, %.lr.ph.preheader.i205 ] ; 2 uses
  %i.az = udiv i32 %.0812.i208, 10
  %i.ba = add nuw nsw i32 %.013.i207, 1           ; 2 uses
  %.not.i209 = icmp ult i32 %.0812.i208, 10
  br i1 %.not.i209, label %Abc_Base10Log.exit211, label %.lr.ph.i206, !llvm.loop !87

Abc_Base10Log.exit211:                            ; preds = %.lr.ph.i206, %Abc_Base10Log.exit
  %.09.i210 = phi i32 [ %.0162.lcssa.ph, %Abc_Base10Log.exit ], [ %i.ba, %.lr.ph.i206 ]
  %i.bb = mul i32 %.09.i210, 10
  %i.bc = add i32 %i.bb, 10
  %i.bd = tail call noundef i32 @llvm.smax.i32(i32 %i.aw, i32 %i.bc) ; 2 uses
  %i.be = icmp ult i32 %.0160.lcssa.ph, 2
  br i1 %i.be, label %Abc_Base10Log.exit218, label %.lr.ph.preheader.i212

.lr.ph.preheader.i212:                            ; preds = %Abc_Base10Log.exit211
  %i.bf = add nsw i32 %.0160.lcssa.ph, -1
  br label %.lr.ph.i213

.lr.ph.i213:                                      ; preds = %.lr.ph.i213, %.lr.ph.preheader.i212
  %.013.i214 = phi i32 [ %i.bh, %.lr.ph.i213 ], [ 0, %.lr.ph.preheader.i212 ]
  %.0812.i215 = phi i32 [ %i.bg, %.lr.ph.i213 ], [ %i.bf, %.lr.ph.preheader.i212 ] ; 2 uses
  %i.bg = udiv i32 %.0812.i215, 10
  %i.bh = add nuw nsw i32 %.013.i214, 1           ; 2 uses
  %.not.i216 = icmp ult i32 %.0812.i215, 10
  br i1 %.not.i216, label %Abc_Base10Log.exit218, label %.lr.ph.i213, !llvm.loop !87

Abc_Base10Log.exit218:                            ; preds = %.lr.ph.i213, %bb.a, %Abc_Base10Log.exit211
  %i.bi = phi i32 [ %i.bd, %Abc_Base10Log.exit211 ], [ 10, %bb.a ], [ %i.bd, %.lr.ph.i213 ]
  %.0158.lcssa324336350 = phi double [ %i.ap, %Abc_Base10Log.exit211 ], [ 0.000000e+00, %bb.a ], [ %i.ap, %.lr.ph.i213 ]
  %.0160.lcssa323337349 = phi i32 [ %.0160.lcssa.ph, %Abc_Base10Log.exit211 ], [ 0, %bb.a ], [ %.0160.lcssa.ph, %.lr.ph.i213 ]
  %.0162.lcssa322338348 = phi i32 [ %.0162.lcssa.ph, %Abc_Base10Log.exit211 ], [ 0, %bb.a ], [ %.0162.lcssa.ph, %.lr.ph.i213 ]
  %.0164.lcssa321339347 = phi i32 [ %.0164.lcssa.ph, %Abc_Base10Log.exit211 ], [ 0, %bb.a ], [ %.0164.lcssa.ph, %.lr.ph.i213 ]
  %i.bj = phi i1 [ %i.ao, %Abc_Base10Log.exit211 ], [ false, %bb.a ], [ %i.ao, %.lr.ph.i213 ]
  %.09.i217 = phi i32 [ %.0160.lcssa.ph, %Abc_Base10Log.exit211 ], [ 0, %bb.a ], [ %i.bh, %.lr.ph.i213 ]
  %i.bk = phi <2 x double> [ %i.aq, %Abc_Base10Log.exit211 ], [ zeroinitializer, %bb.a ], [ %i.aq, %.lr.ph.i213 ]
  %i.bl = mul i32 %.09.i217, 10
  %i.bm = add i32 %i.bl, 10
  %i.bn = tail call noundef i32 @llvm.smax.i32(i32 %i.bm, i32 %i.bi) ; 13 uses
  %i.bo = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #27 ; 6 uses
  %i.bp = add i32 %i.bn, -1
  %or.cond.i.i = icmp ult i32 %i.bp, 15
end_hunk_0
