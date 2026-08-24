Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/cecClass?download=true
inline.NumInlined: 225
inline.NumDeleted: 49
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 24
begin_hunk_0_@Cec_ManSimCompareEqualScore:bb.a

.lr.ph50:                                         ; preds = %.lr.ph50.preheader, %.loopexit
  %indvars.iv61 = phi i64 [ 0, %.lr.ph50.preheader ], [ %indvars.iv.next62, %.loopexit ] ; 4 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv61 ; 3 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !8
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv61 ; 3 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !8
  %.not38 = icmp eq i32 %i.h, %i.j
  br i1 %.not38, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.lr.ph50
  %i.k = shl i64 %indvars.iv61, 5
  %i.l = and i64 %i.k, 4294967264
  %invariant.gep67 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.l ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.preheader
  %indvars.iv57 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next58.1, %bb.f ] ; 4 uses
  %i.m = load i32, ptr %i.g, align 4, !tbaa !8
  %i.n = load i32, ptr %i.i, align 4, !tbaa !8
  %i.o = xor i32 %i.n, %i.m
  %i.p = trunc nuw nsw i64 %indvars.iv57 to i32
  %i.q = shl nuw i32 1, %i.p
  %i.r = and i32 %i.o, %i.q
  %.not39 = icmp eq i32 %i.r, 0
  br i1 %.not39, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %gep68 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep67, i64 %indvars.iv57 ; 2 uses
  %i.s = load i32, ptr %gep68, align 4, !tbaa !8
  %i.t = add nsw i32 %i.s, 1
  store i32 %i.t, ptr %gep68, align 4, !tbaa !8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %indvars.iv.next58 = or disjoint i64 %indvars.iv57, 1 ; 2 uses
  %i.u = load i32, ptr %i.g, align 4, !tbaa !8
  %i.v = load i32, ptr %i.i, align 4, !tbaa !8
  %i.w = xor i32 %i.v, %i.u
  %i.x = trunc nuw nsw i64 %indvars.iv.next58 to i32
  %i.y = shl nuw i32 1, %i.x
  %i.z = and i32 %i.w, %i.y
  %.not39.1 = icmp eq i32 %i.z, 0
  br i1 %.not39.1, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %gep68.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep67, i64 %indvars.iv.next58 ; 2 uses
  %i.aa = load i32, ptr %gep68.1, align 4, !tbaa !8
  %i.ab = add nsw i32 %i.aa, 1
  store i32 %i.ab, ptr %gep68.1, align 4, !tbaa !8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %indvars.iv.next58.1 = add nuw nsw i64 %indvars.iv57, 2 ; 2 uses
  %exitcond60.not.1 = icmp eq i64 %indvars.iv.next58.1, 32
  br i1 %exitcond60.not.1, label %.loopexit, label %bb.b, !llvm.loop !22

.loopexit:                                        ; preds = %bb.f, %.lr.ph50
  %indvars.iv.next62 = add nuw nsw i64 %indvars.iv61, 1 ; 2 uses
  %exitcond65.not = icmp eq i64 %indvars.iv.next62, %wide.trip.count64
  br i1 %exitcond65.not, label %.loopexit41, label %.lr.ph50, !llvm.loop !23

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.loopexit43
  %indvars.iv53 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next54, %.loopexit43 ] ; 4 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv53 ; 3 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !8
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv53 ; 3 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !8
  %i.ag = xor i32 %i.af, %i.ad
  %.not = icmp eq i32 %i.ag, -1
  br i1 %.not, label %.loopexit43, label %.preheader42

.preheader42:                                     ; preds = %.lr.ph
  %i.ah = shl i64 %indvars.iv53, 5
  %i.ai = and i64 %i.ah, 4294967264
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ai ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.k, %.preheader42
  %indvars.iv = phi i64 [ 0, %.preheader42 ], [ %indvars.iv.next.1, %bb.k ] ; 4 uses
  %i.aj = load i32, ptr %i.ac, align 4, !tbaa !8
  %i.ak = load i32, ptr %i.ae, align 4, !tbaa !8
  %i.al = xor i32 %i.ak, %i.aj
  %i.am = trunc nuw nsw i64 %indvars.iv to i32
  %i.an = shl nuw i32 1, %i.am
  %i.ao = and i32 %i.al, %i.an
  %.not37.not = icmp eq i32 %i.ao, 0
  br i1 %.not37.not, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv ; 2 uses
  %i.ap = load i32, ptr %gep, align 4, !tbaa !8
  %i.aq = add nsw i32 %i.ap, 1
  store i32 %i.aq, ptr %gep, align 4, !tbaa !8
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.ar = load i32, ptr %i.ac, align 4, !tbaa !8
  %i.as = load i32, ptr %i.ae, align 4, !tbaa !8
  %i.at = xor i32 %i.as, %i.ar
  %i.au = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.av = shl nuw i32 1, %i.au
  %i.aw = and i32 %i.at, %i.av
  %.not37.not.1 = icmp eq i32 %i.aw, 0
  br i1 %.not37.not.1, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %gep.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next ; 2 uses
  %i.ax = load i32, ptr %gep.1, align 4, !tbaa !8
  %i.ay = add nsw i32 %i.ax, 1
  store i32 %i.ay, ptr %gep.1, align 4, !tbaa !8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 32
  br i1 %exitcond.not.1, label %.loopexit43, label %bb.g, !llvm.loop !24

.loopexit43:                                      ; preds = %bb.k, %.lr.ph
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1 ; 2 uses
  %exitcond56.not = icmp eq i64 %indvars.iv.next54, %wide.trip.count
  br i1 %exitcond56.not, label %.loopexit41, label %.lr.ph, !llvm.loop !25

.loopexit41:                                      ; preds = %.loopexit43, %.loopexit, %.preheader44, %.preheader40
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @Cec_ManSimClassCreate(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 4          ; 3 uses
  %.val26 = load i32, ptr %i.a, align 4, !tbaa !26
  %i.b = icmp sgt i32 %.val26, 0
  br i1 %i.b, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 192        ; 2 uses
  %i.e = getelementptr i8, ptr %0, i64 200
  %.val21.peel = load ptr, ptr %i.c, align 8, !tbaa !30
  %i.f = load i32, ptr %.val21.peel, align 4, !tbaa !8 ; 4 uses
  %.val23.peel = load ptr, ptr %i.d, align 8, !tbaa !31
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [4 x i8], ptr %.val23.peel, i64 %i.g ; 2 uses
  %i.i = load i32, ptr %i.h, align 4
  %i.j = or i32 %i.i, 268435455
  store i32 %i.j, ptr %i.h, align 4
  %.val.peel.pre = load i32, ptr %i.a, align 4, !tbaa !26
  %i.k = icmp sgt i32 %.val.peel.pre, 1
  br i1 %i.k, label %.peel.next, label %.critedge.loopexit

.peel.next:                                       ; preds = %bb.b
  %i.l = and i32 %i.f, 268435455
  br label %bb.c

bb.c:                                             ; preds = %.peel.next, %bb.c
  %indvars.iv = phi i64 [ 1, %.peel.next ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %.01828 = phi i32 [ %i.f, %.peel.next ], [ %i.n, %bb.c ]
  %.val21 = load ptr, ptr %i.c, align 8, !tbaa !30
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %.val21, i64 %indvars.iv
  %i.n = load i32, ptr %i.m, align 4, !tbaa !8    ; 4 uses
  %.val22 = load ptr, ptr %i.d, align 8, !tbaa !31
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds [4 x i8], ptr %.val22, i64 %i.o ; 2 uses
  %i.q = load i32, ptr %i.p, align 4
  %i.r = and i32 %i.q, -268435456
  %i.s = or disjoint i32 %i.r, %i.l
  store i32 %i.s, ptr %i.p, align 4
  %.val25 = load ptr, ptr %i.e, align 8, !tbaa !50
  %i.t = sext i32 %.01828 to i64
  %i.u = getelementptr inbounds [4 x i8], ptr %.val25, i64 %i.t
  store i32 %i.n, ptr %i.u, align 4, !tbaa !8
  %.val.pre = load i32, ptr %i.a, align 4, !tbaa !26
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.v = sext i32 %.val.pre to i64
  %i.w = icmp slt i64 %indvars.iv.next, %i.v
  br i1 %i.w, label %bb.c, label %.critedge.loopexit, !llvm.loop !51

.critedge.loopexit:                               ; preds = %bb.c, %bb.b
  %.lcssa = phi i32 [ %i.f, %bb.b ], [ %i.n, %bb.c ]
  %i.x = sext i32 %.lcssa to i64
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %bb.a
  %.018.lcssa = phi i64 [ -1, %bb.a ], [ %i.x, %.critedge.loopexit ]
  %i.y = getelementptr i8, ptr %0, i64 200
  %.val24 = load ptr, ptr %i.y, align 8, !tbaa !50
  %i.z = getelementptr inbounds [4 x i8], ptr %.val24, i64 %.018.lcssa
  store i32 0, ptr %i.z, align 4, !tbaa !8
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define range(i32 -2147483647, -2147483648) i32 @Cec_ManSimClassRefineOne_rec(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 5 uses
  %i.c = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %s_Count.promoted = load i32, ptr @s_Count, align 4, !tbaa !8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !53
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb.au, %bb.a
  %i.h = phi ptr [ %.pre, %bb.a ], [ %i.hy, %bb.au ]
  %accumulator.tr.a = phi i32 [ %s_Count.promoted, %bb.a ], [ %i.i, %bb.au ]
  %.tr88.a = phi i32 [ 0, %bb.a ], [ %i.if, %bb.au ] ; 2 uses
  %.tr88 = phi i32 [ %1, %bb.a ], [ %i.ie, %bb.au ] ; 2 uses
  %i.i = add nsw i32 %accumulator.tr.a, 1         ; 2 uses
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !57   ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4 ; 4 uses
  store i32 0, ptr %i.k, align 4, !tbaa !26
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store i32 0, ptr %i.l, align 4, !tbaa !26
  %i.m = load i32, ptr %i.k, align 4, !tbaa !26   ; 7 uses
  %i.n = load i32, ptr %i.j, align 8, !tbaa !58
  %i.o = icmp eq i32 %i.m, %i.n
  br i1 %i.o, label %bb.b, label %Vec_IntPush.exit

bb.b:                                             ; preds = %tailrecurse
  %i.p = icmp slt i32 %i.m, 16
  br i1 %i.p, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !30   ; 2 uses
  %.not9.i.i = icmp eq ptr %i.r, null
  br i1 %.not9.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.r, i64 noundef 64) #22
  br label %Vec_IntGrow.exit.i

bb.e:                                             ; preds = %bb.c
  %i.t = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #23
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.e, %bb.d
  %i.u = phi ptr [ %i.s, %bb.d ], [ %i.t, %bb.e ]
  store ptr %i.u, ptr %i.q, align 8, !tbaa !30
  br label %Vec_IntGrow.exit11.sink.split.i

bb.f:                                             ; preds = %bb.b
  %i.v = icmp samesign ult i32 %i.m, 1073741823
  %i.w = shl nuw nsw i32 %i.m, 1
  %spec.select.i = select i1 %i.v, i32 %i.w, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %i.m, %spec.select.i
  br i1 %.not.i9.i, label %bb.g, label %Vec_IntPush.exit

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !30   ; 2 uses
  %.not9.i10.i = icmp eq ptr %i.y, null
  %i.z = zext nneg i32 %spec.select.i to i64
  %i.aa = shl nuw nsw i64 %i.z, 2                 ; 2 uses
  br i1 %.not9.i10.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = tail call ptr @realloc(ptr noundef nonnull %i.y, i64 noundef %i.aa) #22
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ac = tail call noalias ptr @malloc(i64 noundef %i.aa) #23
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ad = phi ptr [ %i.ab, %bb.h ], [ %i.ac, %bb.i ]
  store ptr %i.ad, ptr %i.x, align 8, !tbaa !30
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.j, %Vec_IntGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.j ], [ 16, %Vec_IntGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %i.j, align 8, !tbaa !58
  %.pre99 = load i32, ptr %i.k, align 4, !tbaa !26
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %tailrecurse, %bb.f, %Vec_IntGrow.exit11.sink.split.i
  %i.ae = phi i32 [ %i.m, %tailrecurse ], [ %i.m, %bb.f ], [ %.pre99, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !30
  %i.ah = add nsw i32 %i.ae, 1
  store i32 %i.ah, ptr %i.k, align 4, !tbaa !26
  %i.ai = sext i32 %i.ae to i64
  %i.aj = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %i.ai
  store i32 %.tr88, ptr %i.aj, align 4, !tbaa !8
  %.val39 = load ptr, ptr %i.c, align 8, !tbaa !59
  %.val40 = load ptr, ptr %i.d, align 8, !tbaa !60
  %i.ak = sext i32 %.tr88 to i64                  ; 2 uses
  %i.al = getelementptr inbounds [4 x i8], ptr %.val39, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !8
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds [4 x i8], ptr %.val40, i64 %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4 ; 6 uses
  %i.aq = load ptr, ptr %0, align 8, !tbaa !61    ; 2 uses
  %i.ar = getelementptr i8, ptr %i.aq, i64 200
  %.val42 = load ptr, ptr %i.ar, align 8, !tbaa !50 ; 2 uses
  %i.as = getelementptr inbounds [4 x i8], ptr %.val42, i64 %i.ak
  %.093 = load i32, ptr %i.as, align 4, !tbaa !8  ; 2 uses
  %i.at = icmp sgt i32 %.093, 0
  br i1 %i.at, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %Vec_IntPush.exit, %Cec_ManSimCompareEqualScore.exit
  %.094 = phi i32 [ %.0, %Cec_ManSimCompareEqualScore.exit ], [ %.093, %Vec_IntPush.exit ] ; 3 uses
  %.val37 = load ptr, ptr %i.c, align 8, !tbaa !59
  %.val38 = load ptr, ptr %i.d, align 8, !tbaa !60
  %i.au = zext nneg i32 %.094 to i64              ; 2 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %.val37, i64 %i.au
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !8
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds [4 x i8], ptr %.val38, i64 %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 4 ; 6 uses
  %i.ba = load i32, ptr %i.e, align 8, !tbaa !62  ; 3 uses
  %i.bb = load i32, ptr %i.ap, align 4, !tbaa !8
  %i.bc = load i32, ptr %i.az, align 4, !tbaa !8
  %i.bd = xor i32 %i.bc, %i.bb
  %i.be = and i32 %i.bd, 1
  %i.bf = icmp eq i32 %i.be, 0
  %i.bg = icmp sgt i32 %i.ba, 0                   ; 2 uses
  br i1 %i.bf, label %.preheader.i, label %.preheader18.i

.preheader18.i:                                   ; preds = %.lr.ph
  br i1 %i.bg, label %.lr.ph.preheader.i, label %.loopexit

.lr.ph.preheader.i:                               ; preds = %.preheader18.i
  %wide.trip.count.i = zext nneg i32 %i.ba to i64
  br label %.lr.ph.i

.preheader.i:                                     ; preds = %.lr.ph
  br i1 %i.bg, label %.lr.ph25.preheader.i, label %.loopexit

.lr.ph25.preheader.i:                             ; preds = %.preheader.i
  %wide.trip.count35.i = zext nneg i32 %i.ba to i64
  br label %.lr.ph25.i

bb.k:                                             ; preds = %.lr.ph25.i
  %indvars.iv.next33.i = add nuw nsw i64 %indvars.iv32.i, 1 ; 2 uses
  %exitcond36.not.i = icmp eq i64 %indvars.iv.next33.i, %wide.trip.count35.i
  br i1 %exitcond36.not.i, label %.loopexit, label %.lr.ph25.i, !llvm.loop !12

.lr.ph25.i:                                       ; preds = %bb.k, %.lr.ph25.preheader.i
  %indvars.iv32.i = phi i64 [ 0, %.lr.ph25.preheader.i ], [ %indvars.iv.next33.i, %bb.k ] ; 3 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv32.i
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !8
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv32.i
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !8
  %.not17.i = icmp eq i32 %i.bi, %i.bk
  br i1 %.not17.i, label %bb.k, label %Cec_ManSimCompareEqual.exit

bb.l:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit, label %.lr.ph.i, !llvm.loop !13

.lr.ph.i:                                         ; preds = %bb.l, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.l ] ; 3 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.i
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !8
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.i
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !8
  %i.bp = xor i32 %i.bo, %i.bm
  %.not.i = icmp eq i32 %i.bp, -1
  br i1 %.not.i, label %bb.l, label %Cec_ManSimCompareEqual.exit

.loopexit:                                        ; preds = %bb.l, %bb.k, %.preheader18.i, %.preheader.i
  %i.bq = load ptr, ptr %i.a, align 8, !tbaa !57  ; 6 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 4 ; 3 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !26 ; 7 uses
  %i.bt = load i32, ptr %i.bq, align 8, !tbaa !58
  %i.bu = icmp eq i32 %i.bs, %i.bt
  br i1 %i.bu, label %bb.m, label %Vec_IntPush.exit50

bb.m:                                             ; preds = %.loopexit
  %i.bv = icmp slt i32 %i.bs, 16
  br i1 %i.bv, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !30 ; 2 uses
  %.not9.i.i48 = icmp eq ptr %i.bx, null
  br i1 %.not9.i.i48, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.by = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.bx, i64 noundef 64) #22
  br label %Vec_IntGrow.exit.i49

bb.p:                                             ; preds = %bb.n
  %i.bz = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #23
  br label %Vec_IntGrow.exit.i49

Vec_IntGrow.exit.i49:                             ; preds = %bb.p, %bb.o
  %i.ca = phi ptr [ %i.by, %bb.o ], [ %i.bz, %bb.p ]
  store ptr %i.ca, ptr %i.bw, align 8, !tbaa !30
  br label %Vec_IntGrow.exit11.sink.split.i46

bb.q:                                             ; preds = %bb.m
  %i.cb = icmp samesign ult i32 %i.bs, 1073741823
  %i.cc = shl nuw nsw i32 %i.bs, 1
  %spec.select.i43 = select i1 %i.cb, i32 %i.cc, i32 2147483647 ; 3 uses
  %.not.i9.i44 = icmp samesign ult i32 %i.bs, %spec.select.i43
  br i1 %.not.i9.i44, label %bb.r, label %Vec_IntPush.exit50

bb.r:                                             ; preds = %bb.q
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !30 ; 2 uses
  %.not9.i10.i45 = icmp eq ptr %i.ce, null
  %i.cf = zext nneg i32 %spec.select.i43 to i64
  %i.cg = shl nuw nsw i64 %i.cf, 2                ; 2 uses
  br i1 %.not9.i10.i45, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ch = tail call ptr @realloc(ptr noundef nonnull %i.ce, i64 noundef %i.cg) #22
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.ci = tail call noalias ptr @malloc(i64 noundef %i.cg) #23
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.cj = phi ptr [ %i.ch, %bb.s ], [ %i.ci, %bb.t ]
  store ptr %i.cj, ptr %i.cd, align 8, !tbaa !30
  br label %Vec_IntGrow.exit11.sink.split.i46

Vec_IntGrow.exit11.sink.split.i46:                ; preds = %bb.u, %Vec_IntGrow.exit.i49
  %spec.select.sink.i47 = phi i32 [ %spec.select.i43, %bb.u ], [ 16, %Vec_IntGrow.exit.i49 ]
  store i32 %spec.select.sink.i47, ptr %i.bq, align 8, !tbaa !58
  %.pre101 = load i32, ptr %i.br, align 4, !tbaa !26
  br label %Vec_IntPush.exit50

Vec_IntPush.exit50:                               ; preds = %.loopexit, %bb.q, %Vec_IntGrow.exit11.sink.split.i46
  %i.ck = phi i32 [ %i.bs, %.loopexit ], [ %i.bs, %bb.q ], [ %.pre101, %Vec_IntGrow.exit11.sink.split.i46 ] ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !30
  %i.cn = add nsw i32 %i.ck, 1
  store i32 %i.cn, ptr %i.br, align 4, !tbaa !26
  %i.co = sext i32 %i.ck to i64
  %i.cp = getelementptr inbounds [4 x i8], ptr %i.cm, i64 %i.co
  store i32 %.094, ptr %i.cp, align 4, !tbaa !8
  br label %Cec_ManSimCompareEqualScore.exit

Cec_ManSimCompareEqual.exit:                      ; preds = %.lr.ph.i, %.lr.ph25.i
  %i.cq = load ptr, ptr %i.b, align 8, !tbaa !53  ; 6 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 4 ; 3 uses
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !26 ; 7 uses
  %i.ct = load i32, ptr %i.cq, align 8, !tbaa !58
  %i.cu = icmp eq i32 %i.cs, %i.ct
  br i1 %i.cu, label %bb.v, label %Vec_IntPush.exit58

bb.v:                                             ; preds = %Cec_ManSimCompareEqual.exit
  %i.cv = icmp slt i32 %i.cs, 16
  br i1 %i.cv, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cq, i64 8 ; 2 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !30 ; 2 uses
  %.not9.i.i56 = icmp eq ptr %i.cx, null
  br i1 %.not9.i.i56, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cy = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.cx, i64 noundef 64) #22
  br label %Vec_IntGrow.exit.i57

bb.y:                                             ; preds = %bb.w
  %i.cz = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #23
  br label %Vec_IntGrow.exit.i57

Vec_IntGrow.exit.i57:                             ; preds = %bb.y, %bb.x
  %i.da = phi ptr [ %i.cy, %bb.x ], [ %i.cz, %bb.y ]
  store ptr %i.da, ptr %i.cw, align 8, !tbaa !30
  br label %Vec_IntGrow.exit11.sink.split.i54

bb.z:                                             ; preds = %bb.v
  %i.db = icmp samesign ult i32 %i.cs, 1073741823
  %i.dc = shl nuw nsw i32 %i.cs, 1
  %spec.select.i51 = select i1 %i.db, i32 %i.dc, i32 2147483647 ; 3 uses
  %.not.i9.i52 = icmp samesign ult i32 %i.cs, %spec.select.i51
  br i1 %.not.i9.i52, label %bb.aa, label %Vec_IntPush.exit58

bb.aa:                                            ; preds = %bb.z
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cq, i64 8 ; 2 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !30 ; 2 uses
  %.not9.i10.i53 = icmp eq ptr %i.de, null
  %i.df = zext nneg i32 %spec.select.i51 to i64
  %i.dg = shl nuw nsw i64 %i.df, 2                ; 2 uses
  br i1 %.not9.i10.i53, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dh = tail call ptr @realloc(ptr noundef nonnull %i.de, i64 noundef %i.dg) #22
  br label %bb.ad
end_hunk_0
begin_hunk_1_@Cec_ManSimClassRefineOne_rec:bb.a
  %indvars.iv.i63 = phi i64 [ 0, %.preheader42.i ], [ %indvars.iv.next.i64.1, %bb.ao ] ; 4 uses
  %i.fc = load i32, ptr %i.ev, align 4, !tbaa !8
  %i.fd = load i32, ptr %i.ex, align 4, !tbaa !8
  %i.fe = xor i32 %i.fd, %i.fc
  %i.ff = trunc nuw nsw i64 %indvars.iv.i63 to i32
  %i.fg = shl nuw i32 1, %i.ff
  %i.fh = and i32 %i.fe, %i.fg
  %.not37.not.i = icmp eq i32 %i.fh, 0
  br i1 %.not37.not.i, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %gep.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i63 ; 2 uses
  %i.fi = load i32, ptr %gep.i, align 4, !tbaa !8
  %i.fj = add nsw i32 %i.fi, 1
  store i32 %i.fj, ptr %gep.i, align 4, !tbaa !8
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %indvars.iv.next.i64 = or disjoint i64 %indvars.iv.i63, 1 ; 2 uses
  %i.fk = load i32, ptr %i.ev, align 4, !tbaa !8
  %i.fl = load i32, ptr %i.ex, align 4, !tbaa !8
  %i.fm = xor i32 %i.fl, %i.fk
  %i.fn = trunc nuw nsw i64 %indvars.iv.next.i64 to i32
  %i.fo = shl nuw i32 1, %i.fn
  %i.fp = and i32 %i.fm, %i.fo
  %.not37.not.i.1 = icmp eq i32 %i.fp, 0
  br i1 %.not37.not.i.1, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %gep.i.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i64 ; 2 uses
  %i.fq = load i32, ptr %gep.i.1, align 4, !tbaa !8
  %i.fr = add nsw i32 %i.fq, 1
  store i32 %i.fr, ptr %gep.i.1, align 4, !tbaa !8
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %indvars.iv.next.i64.1 = add nuw nsw i64 %indvars.iv.i63, 2 ; 2 uses
  %exitcond.not.i65.1 = icmp eq i64 %indvars.iv.next.i64.1, 32
  br i1 %exitcond.not.i65.1, label %.loopexit43.i, label %bb.ak, !llvm.loop !24

.loopexit43.i:                                    ; preds = %bb.ao, %.lr.ph.i61
  %indvars.iv.next54.i = add nuw nsw i64 %indvars.iv53.i, 1 ; 2 uses
  %exitcond56.not.i = icmp eq i64 %indvars.iv.next54.i, %wide.trip.count.i60
  br i1 %exitcond56.not.i, label %Cec_ManSimCompareEqualScore.exit, label %.lr.ph.i61, !llvm.loop !25

Cec_ManSimCompareEqualScore.exit:                 ; preds = %.loopexit43.i, %.loopexit.i, %.preheader40.i, %.preheader44.i, %Vec_IntPush.exit50, %Vec_IntPush.exit58
  %i.fs = load ptr, ptr %0, align 8, !tbaa !61    ; 2 uses
  %i.ft = getelementptr i8, ptr %i.fs, i64 200
  %.val41 = load ptr, ptr %i.ft, align 8, !tbaa !50 ; 2 uses
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %.val41, i64 %i.au
  %.0 = load i32, ptr %i.fu, align 4, !tbaa !8    ; 2 uses
  %i.fv = icmp sgt i32 %.0, 0
  br i1 %i.fv, label %.lr.ph, label %._crit_edge, !llvm.loop !65

._crit_edge:                                      ; preds = %Cec_ManSimCompareEqualScore.exit, %Vec_IntPush.exit
  %.val24.i103 = phi ptr [ %.val42, %Vec_IntPush.exit ], [ %.val41, %Cec_ManSimCompareEqualScore.exit ]
  %i.fw = phi ptr [ %i.aq, %Vec_IntPush.exit ], [ %i.fs, %Cec_ManSimCompareEqualScore.exit ] ; 3 uses
  %i.fx = load ptr, ptr %i.b, align 8, !tbaa !53  ; 2 uses
  %i.fy = getelementptr i8, ptr %i.fx, i64 4
  %.val35 = load i32, ptr %i.fy, align 4, !tbaa !26
  %i.fz = icmp eq i32 %.val35, 0
  br i1 %i.fz, label %bb.av, label %bb.ap

bb.ap:                                            ; preds = %._crit_edge
  %i.ga = load ptr, ptr %i.a, align 8, !tbaa !57  ; 2 uses
  %i.gb = getelementptr i8, ptr %i.ga, i64 4      ; 3 uses
  %.val26.i = load i32, ptr %i.gb, align 4, !tbaa !26
  %i.gc = icmp sgt i32 %.val26.i, 0
  br i1 %i.gc, label %bb.aq, label %Cec_ManSimClassCreate.exit

bb.aq:                                            ; preds = %bb.ap
  %i.gd = getelementptr i8, ptr %i.ga, i64 8      ; 2 uses
  %i.ge = getelementptr i8, ptr %i.fw, i64 192    ; 2 uses
  %i.gf = getelementptr i8, ptr %i.fw, i64 200    ; 2 uses
  %.val21.peel.i = load ptr, ptr %i.gd, align 8, !tbaa !30
  %i.gg = load i32, ptr %.val21.peel.i, align 4, !tbaa !8 ; 3 uses
  %.val23.peel.i = load ptr, ptr %i.ge, align 8, !tbaa !31
  %i.gh = sext i32 %i.gg to i64                   ; 2 uses
  %i.gi = getelementptr inbounds [4 x i8], ptr %.val23.peel.i, i64 %i.gh ; 2 uses
  %i.gj = load i32, ptr %i.gi, align 4
  %i.gk = or i32 %i.gj, 268435455
  store i32 %i.gk, ptr %i.gi, align 4
  %.val.peel.pre.i = load i32, ptr %i.gb, align 4, !tbaa !26
  %i.gl = icmp sgt i32 %.val.peel.pre.i, 1
  br i1 %i.gl, label %.peel.next.i, label %..critedge.loopexit.i_crit_edge

..critedge.loopexit.i_crit_edge:                  ; preds = %bb.aq
  %.val24.i.pre.pre = load ptr, ptr %i.gf, align 8, !tbaa !50
  br label %.critedge.loopexit.i

.peel.next.i:                                     ; preds = %bb.aq
  %i.gm = and i32 %i.gg, 268435455
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ar, %.peel.next.i
  %indvars.iv.i67 = phi i64 [ 1, %.peel.next.i ], [ %indvars.iv.next.i68, %bb.ar ] ; 2 uses
  %.01828.i = phi i32 [ %i.gg, %.peel.next.i ], [ %i.go, %bb.ar ]
  %.val21.i = load ptr, ptr %i.gd, align 8, !tbaa !30
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %.val21.i, i64 %indvars.iv.i67
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !8  ; 3 uses
  %.val22.i = load ptr, ptr %i.ge, align 8, !tbaa !31
  %i.gp = sext i32 %i.go to i64                   ; 2 uses
  %i.gq = getelementptr inbounds [4 x i8], ptr %.val22.i, i64 %i.gp ; 2 uses
  %i.gr = load i32, ptr %i.gq, align 4
  %i.gs = and i32 %i.gr, -268435456
  %i.gt = or disjoint i32 %i.gs, %i.gm
  store i32 %i.gt, ptr %i.gq, align 4
  %.val25.i = load ptr, ptr %i.gf, align 8, !tbaa !50 ; 2 uses
  %i.gu = sext i32 %.01828.i to i64
  %i.gv = getelementptr inbounds [4 x i8], ptr %.val25.i, i64 %i.gu
  store i32 %i.go, ptr %i.gv, align 4, !tbaa !8
  %.val.pre.i = load i32, ptr %i.gb, align 4, !tbaa !26
  %indvars.iv.next.i68 = add nuw nsw i64 %indvars.iv.i67, 1 ; 2 uses
  %i.gw = sext i32 %.val.pre.i to i64
  %i.gx = icmp slt i64 %indvars.iv.next.i68, %i.gw
  br i1 %i.gx, label %bb.ar, label %.critedge.loopexit.i, !llvm.loop !51

.critedge.loopexit.i:                             ; preds = %bb.ar, %..critedge.loopexit.i_crit_edge
  %.pre-phi = phi i64 [ %i.gh, %..critedge.loopexit.i_crit_edge ], [ %i.gp, %bb.ar ]
  %.val24.i.pre = phi ptr [ %.val24.i.pre.pre, %..critedge.loopexit.i_crit_edge ], [ %.val25.i, %bb.ar ]
  %.pre104 = load ptr, ptr %0, align 8, !tbaa !61
  %.pre105 = load ptr, ptr %i.b, align 8, !tbaa !53
  br label %Cec_ManSimClassCreate.exit

Cec_ManSimClassCreate.exit:                       ; preds = %bb.ap, %.critedge.loopexit.i
  %i.gy = phi ptr [ %i.fx, %bb.ap ], [ %.pre105, %.critedge.loopexit.i ] ; 3 uses
  %i.gz = phi ptr [ %i.fw, %bb.ap ], [ %.pre104, %.critedge.loopexit.i ] ; 3 uses
  %.val24.i = phi ptr [ %.val24.i103, %bb.ap ], [ %.val24.i.pre, %.critedge.loopexit.i ]
  %.018.lcssa.i = phi i64 [ -1, %bb.ap ], [ %.pre-phi, %.critedge.loopexit.i ]
  %i.ha = getelementptr inbounds [4 x i8], ptr %.val24.i, i64 %.018.lcssa.i
  store i32 0, ptr %i.ha, align 4, !tbaa !8
  %i.hb = getelementptr i8, ptr %i.gy, i64 4      ; 3 uses
  %.val26.i69 = load i32, ptr %i.hb, align 4, !tbaa !26
  %i.hc = icmp sgt i32 %.val26.i69, 0
  br i1 %i.hc, label %bb.as, label %Cec_ManSimClassCreate.exit85

bb.as:                                            ; preds = %Cec_ManSimClassCreate.exit
  %i.hd = getelementptr i8, ptr %i.gy, i64 8      ; 2 uses
  %i.he = getelementptr i8, ptr %i.gz, i64 192    ; 2 uses
  %i.hf = getelementptr i8, ptr %i.gz, i64 200
  %.val21.peel.i72 = load ptr, ptr %i.hd, align 8, !tbaa !30
  %i.hg = load i32, ptr %.val21.peel.i72, align 4, !tbaa !8 ; 3 uses
  %.val23.peel.i73 = load ptr, ptr %i.he, align 8, !tbaa !31
  %i.hh = sext i32 %i.hg to i64                   ; 2 uses
  %i.hi = getelementptr inbounds [4 x i8], ptr %.val23.peel.i73, i64 %i.hh ; 2 uses
  %i.hj = load i32, ptr %i.hi, align 4
  %i.hk = or i32 %i.hj, 268435455
  store i32 %i.hk, ptr %i.hi, align 4
  %.val.peel.pre.i74 = load i32, ptr %i.hb, align 4, !tbaa !26
  %i.hl = icmp sgt i32 %.val.peel.pre.i74, 1
  br i1 %i.hl, label %.peel.next.i77, label %.critedge.loopexit.i75

.peel.next.i77:                                   ; preds = %bb.as
  %i.hm = and i32 %i.hg, 268435455
  br label %bb.at

bb.at:                                            ; preds = %bb.at, %.peel.next.i77
  %indvars.iv.i78 = phi i64 [ 1, %.peel.next.i77 ], [ %indvars.iv.next.i84, %bb.at ] ; 2 uses
  %.01828.i79 = phi i32 [ %i.hg, %.peel.next.i77 ], [ %i.ho, %bb.at ]
  %.val21.i80 = load ptr, ptr %i.hd, align 8, !tbaa !30
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %.val21.i80, i64 %indvars.iv.i78
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !8  ; 3 uses
  %.val22.i81 = load ptr, ptr %i.he, align 8, !tbaa !31
  %i.hp = sext i32 %i.ho to i64                   ; 2 uses
  %i.hq = getelementptr inbounds [4 x i8], ptr %.val22.i81, i64 %i.hp ; 2 uses
  %i.hr = load i32, ptr %i.hq, align 4
  %i.hs = and i32 %i.hr, -268435456
  %i.ht = or disjoint i32 %i.hs, %i.hm
  store i32 %i.ht, ptr %i.hq, align 4
  %.val25.i82 = load ptr, ptr %i.hf, align 8, !tbaa !50
  %i.hu = sext i32 %.01828.i79 to i64
  %i.hv = getelementptr inbounds [4 x i8], ptr %.val25.i82, i64 %i.hu
  store i32 %i.ho, ptr %i.hv, align 4, !tbaa !8
  %.val.pre.i83 = load i32, ptr %i.hb, align 4, !tbaa !26
  %indvars.iv.next.i84 = add nuw nsw i64 %indvars.iv.i78, 1 ; 2 uses
  %i.hw = sext i32 %.val.pre.i83 to i64
  %i.hx = icmp slt i64 %indvars.iv.next.i84, %i.hw
  br i1 %i.hx, label %bb.at, label %.critedge.loopexit.i75, !llvm.loop !51

.critedge.loopexit.i75:                           ; preds = %bb.at, %bb.as
  %.pre-phi108 = phi i64 [ %i.hh, %bb.as ], [ %i.hp, %bb.at ]
  %.pre106 = load ptr, ptr %i.b, align 8, !tbaa !53
  br label %Cec_ManSimClassCreate.exit85

Cec_ManSimClassCreate.exit85:                     ; preds = %Cec_ManSimClassCreate.exit, %.critedge.loopexit.i75
  %i.hy = phi ptr [ %i.gy, %Cec_ManSimClassCreate.exit ], [ %.pre106, %.critedge.loopexit.i75 ] ; 3 uses
  %.018.lcssa.i70 = phi i64 [ -1, %Cec_ManSimClassCreate.exit ], [ %.pre-phi108, %.critedge.loopexit.i75 ]
  %i.hz = getelementptr i8, ptr %i.gz, i64 200
  %.val24.i71 = load ptr, ptr %i.hz, align 8, !tbaa !50
  %i.ia = getelementptr inbounds [4 x i8], ptr %.val24.i71, i64 %.018.lcssa.i70
  store i32 0, ptr %i.ia, align 4, !tbaa !8
  %i.ib = getelementptr i8, ptr %i.hy, i64 4
  %.val = load i32, ptr %i.ib, align 4, !tbaa !26
  %i.ic = icmp sgt i32 %.val, 1
  br i1 %i.ic, label %bb.au, label %bb.av

bb.au:                                            ; preds = %Cec_ManSimClassCreate.exit85
  %i.id = getelementptr i8, ptr %i.hy, i64 8
  %.val36 = load ptr, ptr %i.id, align 8, !tbaa !30
  %i.ie = load i32, ptr %.val36, align 4, !tbaa !8
  %i.if = add i32 %.tr88.a, 1
  br label %tailrecurse

bb.av:                                            ; preds = %Cec_ManSimClassCreate.exit85, %._crit_edge
  %.033 = phi i32 [ 0, %._crit_edge ], [ 1, %Cec_ManSimClassCreate.exit85 ]
  store i32 %i.i, ptr @s_Count, align 4, !tbaa !8
  %accumulator.ret.tr = add i32 %.033, %.tr88.a
  ret i32 %accumulator.ret.tr
}

; Function Attrs: nounwind uwtable
define range(i32 -2147483647, -2147483648) i32 @Cec_ManSimClassRefineOne_(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #6 {
bb.a:
  store i32 0, ptr @s_Count, align 4, !tbaa !8
  %i.a = tail call i32 @Cec_ManSimClassRefineOne_rec(ptr noundef %0, i32 noundef %1)
  %i.b = load i32, ptr @s_Count, align 4, !tbaa !8 ; 2 uses
  %i.c = icmp sgt i32 %i.b, 10
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.b) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 %i.a
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #7

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define range(i32 -2147483647, -2147483648) i32 @Cec_ManSimClassRefineOne(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call i32 @Cec_ManSimClassRefineOne_rec(ptr noundef %0, i32 noundef %1)
  ret i32 %i.a
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define i32 @Cec_ManSimRefineMappedFrame(ptr nofree noundef captures(none) initializes((16, 20)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #5 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 4 uses
  %i.b = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #23 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 3 uses
  store i32 0, ptr %i.c, align 4, !tbaa !26
  store i32 64, ptr %i.b, align 8, !tbaa !58
  %i.d = tail call noalias dereferenceable_or_null(256) ptr @malloc(i64 noundef 256) #23 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.d, ptr %i.e, align 8, !tbaa !30
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store i32 %4, ptr %i.f, align 8, !tbaa !62
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !66
  %.not = icmp eq i32 %i.h, %4
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.k = load i32, ptr %i.j, align 4, !tbaa !67
  %i.l = add i32 %4, 1                            ; 2 uses
  %i.m = mul nsw i32 %i.k, %i.l                   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.o = add i32 %i.l, %i.m
  %i.p = load i32, ptr %i.n, align 8, !tbaa !68
  %i.q = icmp ult i32 %i.o, %i.p
  br i1 %i.q, label %.lr.ph.i, label %Cec_ManSimMemRelink.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !60
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i
  %.016.i = phi i32 [ %i.m, %.lr.ph.i ], [ %i.x, %bb.c ] ; 3 uses
  %.01415.i = phi ptr [ %i.i, %.lr.ph.i ], [ %i.u, %bb.c ]
  store i32 %.016.i, ptr %.01415.i, align 4, !tbaa !8
  %i.t = zext i32 %.016.i to i64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.t ; 2 uses
  %i.v = load i32, ptr %i.f, align 8, !tbaa !62
  %i.w = add i32 %i.v, 1                          ; 2 uses
  %i.x = add i32 %i.w, %.016.i                    ; 2 uses
  %i.y = add i32 %i.w, %i.x
  %i.z = load i32, ptr %i.n, align 8, !tbaa !68
  %i.aa = icmp ult i32 %i.y, %i.z
  br i1 %i.aa, label %bb.c, label %Cec_ManSimMemRelink.exit, !llvm.loop !69

Cec_ManSimMemRelink.exit:                         ; preds = %bb.c, %bb.b
  %.014.lcssa.i = phi ptr [ %i.i, %bb.b ], [ %i.u, %bb.c ]
  store i32 0, ptr %.014.lcssa.i, align 4, !tbaa !8
  %i.ab = load i32, ptr %i.f, align 8, !tbaa !62
  store i32 %i.ab, ptr %i.g, align 8, !tbaa !66
  br label %bb.d

bb.d:                                             ; preds = %Cec_ManSimMemRelink.exit, %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 4 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !70
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  store i32 0, ptr %i.ae, align 4, !tbaa !26
  %i.af = load ptr, ptr %0, align 8, !tbaa !61    ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !71
  %i.ai = icmp sgt i32 %i.ah, 1
  br i1 %i.ai, label %.lr.ph, label %.critedge4

.critedge.preheader:                              ; preds = %Gia_ObjIsHead.exit.thread
  %i.aj = icmp sgt i32 %i.cf, 1
  %i.ak = icmp sgt i32 %i.cd, 0
  br i1 %i.aj, label %.lr.ph189, label %.critedge2.preheader

.lr.ph189:                                        ; preds = %.critedge.preheader
  %i.al = getelementptr i8, ptr %2, i64 8
  %i.am = sext i32 %4 to i64                      ; 3 uses
  %i.an = icmp sgt i32 %4, 0                      ; 4 uses
  %wide.trip.count.i = zext i32 %4 to i64         ; 12 uses
  %i.ao = getelementptr i8, ptr %0, i64 24
  %i.ap = getelementptr i8, ptr %0, i64 32
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.as = sext i32 %3 to i64
  %i.at = shl nsw i64 %i.am, 2
  %i.au = shl nsw i64 %i.am, 2
  %min.iters.check289 = icmp ult i32 %4, 8
  %n.vec291 = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  %cmp.n298 = icmp eq i64 %n.vec291, %wide.trip.count.i
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %min.iters.check = icmp ult i32 %4, 8
  %n.vec = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  %xtraiter344 = and i64 %wide.trip.count.i, 3    ; 2 uses
  %lcmp.mod345.not = icmp eq i64 %xtraiter344, 0
  br label %bb.n

.lr.ph:                                           ; preds = %bb.d, %Gia_ObjIsHead.exit.thread
  %.pre235 = phi ptr [ %.pre236, %Gia_ObjIsHead.exit.thread ], [ %i.af, %bb.d ] ; 4 uses
  %i.av = phi ptr [ %i.bz, %Gia_ObjIsHead.exit.thread ], [ %i.af, %bb.d ] ; 4 uses
  %i.aw = phi ptr [ %i.ca, %Gia_ObjIsHead.exit.thread ], [ %i.d, %bb.d ] ; 4 uses
  %i.ax = phi ptr [ %i.cb, %Gia_ObjIsHead.exit.thread ], [ %i.d, %bb.d ] ; 6 uses
  %i.ay = phi i32 [ %i.cc, %Gia_ObjIsHead.exit.thread ], [ 64, %bb.d ] ; 9 uses
  %i.az = phi i32 [ %i.cd, %Gia_ObjIsHead.exit.thread ], [ 0, %bb.d ] ; 5 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %Gia_ObjIsHead.exit.thread ], [ 1, %bb.d ] ; 4 uses
  %i.ba = getelementptr i8, ptr %i.av, i64 192
  %.val3.i = load ptr, ptr %i.ba, align 8, !tbaa !31
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %.val3.i, i64 %indvars.iv
  %i.bc = load i32, ptr %i.bb, align 4
  %i.bd = and i32 %i.bc, 268435455
  %i.be = icmp eq i32 %i.bd, 268435455
  br i1 %i.be, label %Gia_ObjIsHead.exit, label %Gia_ObjIsHead.exit.thread

Gia_ObjIsHead.exit:                               ; preds = %.lr.ph
  %i.bf = getelementptr i8, ptr %i.av, i64 200
  %.val.i = load ptr, ptr %i.bf, align 8, !tbaa !50
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %indvars.iv
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !8
  %i.bi = icmp slt i32 %i.bh, 1
  br i1 %i.bi, label %Gia_ObjIsHead.exit.thread, label %bb.e

bb.e:                                             ; preds = %Gia_ObjIsHead.exit
  %i.bj = icmp eq i32 %i.az, %i.ay
  br i1 %i.bj, label %bb.f, label %Vec_IntPush.exit

bb.f:                                             ; preds = %bb.e
  %i.bk = icmp slt i32 %i.ay, 16
  br i1 %i.bk, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %.not9.i.i = icmp eq ptr %i.ax, null
  br i1 %.not9.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bl = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.ax, i64 noundef 64) #22
  br label %Vec_IntGrow.exit11.sink.split.i

bb.i:                                             ; preds = %bb.g
  %i.bm = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #23
  br label %Vec_IntGrow.exit11.sink.split.i

bb.j:                                             ; preds = %bb.f
  %i.bn = icmp samesign ult i32 %i.ay, 1073741823
  %i.bo = shl nuw nsw i32 %i.ay, 1
  %spec.select.i = select i1 %i.bn, i32 %i.bo, i32 2147483647 ; 4 uses
  %.not.i9.i = icmp samesign ult i32 %i.ay, %spec.select.i
  br i1 %.not.i9.i, label %bb.k, label %Vec_IntPush.exit

bb.k:                                             ; preds = %bb.j
  %.not9.i10.i = icmp eq ptr %i.ax, null
  %i.bp = zext nneg i32 %spec.select.i to i64
  %i.bq = shl nuw nsw i64 %i.bp, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.br = tail call ptr @realloc(ptr noundef nonnull %i.ax, i64 noundef %i.bq) #22
  br label %Vec_IntGrow.exit11.sink.split.i

bb.m:                                             ; preds = %bb.k
  %i.bs = tail call noalias ptr @malloc(i64 noundef %i.bq) #23
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.l, %bb.m, %bb.h, %bb.i
  %storemerge = phi ptr [ %i.bm, %bb.i ], [ %i.bl, %bb.h ], [ %i.br, %bb.l ], [ %i.bs, %bb.m ] ; 2 uses
  %spec.select.sink.i = phi i32 [ 16, %bb.i ], [ 16, %bb.h ], [ %spec.select.i, %bb.l ], [ %spec.select.i, %bb.m ] ; 2 uses
  store ptr %storemerge, ptr %i.e, align 8, !tbaa !30
  store i32 %spec.select.sink.i, ptr %i.b, align 8, !tbaa !58
  %.pre.pre = load ptr, ptr %0, align 8, !tbaa !61
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.e, %bb.j, %Vec_IntGrow.exit11.sink.split.i
end_hunk_1
