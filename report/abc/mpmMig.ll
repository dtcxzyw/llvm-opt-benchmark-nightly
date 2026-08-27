Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/mpmMig?download=true
inline.NumInlined: 124
inline.NumDeleted: 51
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@Mig_ManSetRefs:bb.a
  %.not.i.i = icmp slt i32 %i.c, %.val31
  br i1 %.not.i.i, label %bb.b, label %Vec_IntGrow.exit.i

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !8    ; 2 uses
  %.not9.i.i = icmp eq ptr %i.e, null
  %i.f = sext i32 %.val31 to i64
  %i.g = shl nsw i64 %i.f, 2                      ; 2 uses
  br i1 %.not9.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call ptr @realloc(ptr noundef nonnull %i.e, i64 noundef %i.g) #19
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = tail call noalias ptr @malloc(i64 noundef %i.g) #17
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.j = phi ptr [ %i.h, %bb.c ], [ %i.i, %bb.d ]
  store ptr %i.j, ptr %i.d, align 8, !tbaa !8
  store i32 %.val31, ptr %i.a, align 8, !tbaa !12
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.e, %bb.a
  %i.k = icmp sgt i32 %.val31, 0
  br i1 %i.k, label %.lr.ph.i, label %Vec_IntFill.exit

.lr.ph.i:                                         ; preds = %Vec_IntGrow.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !8
  %i.n = zext nneg i32 %.val31 to i64
  %i.o = shl nuw nsw i64 %i.n, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.m, i8 0, i64 %i.o, i1 false), !tbaa !38
  br label %Vec_IntFill.exit

Vec_IntFill.exit:                                 ; preds = %Vec_IntGrow.exit.i, %.lr.ph.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 140
  store i32 %.val31, ptr %i.p, align 4, !tbaa !39
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.r = getelementptr i8, ptr %0, i64 28         ; 2 uses
  store i32 0, ptr %i.q, align 8, !tbaa !28
  %.val44 = load i32, ptr %i.r, align 4, !tbaa !18 ; 2 uses
  %i.s = icmp sgt i32 %.val44, 0
  br i1 %i.s, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %Vec_IntFill.exit
  %i.t = getelementptr i8, ptr %0, i64 32
  %.val30 = load ptr, ptr %i.t, align 8, !tbaa !14
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.v = getelementptr i8, ptr %0, i64 144        ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %._crit_edge
  %.val48 = phi i32 [ %.val44, %.lr.ph ], [ %.val, %._crit_edge ]
  %storemerge45 = phi i32 [ 0, %.lr.ph ], [ %i.bu, %._crit_edge ] ; 2 uses
  %i.w = sext i32 %storemerge45 to i64
  %i.x = getelementptr inbounds [8 x i8], ptr %.val30, i64 %i.w
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !13   ; 4 uses
  store ptr %i.y, ptr %i.u, align 8, !tbaa !29
  %.not = icmp eq ptr %i.y, null
  br i1 %.not, label %.critedge, label %.preheader40

.preheader40:                                     ; preds = %bb.f
  %i.z = getelementptr i8, ptr %i.y, i64 12       ; 2 uses
  %.023.val42 = load i32, ptr %i.z, align 4
  %i.aa = icmp ult i32 %.023.val42, -2
  br i1 %i.aa, label %.preheader, label %._crit_edge

.preheader:                                       ; preds = %.preheader40, %Mig_ObjSiblId.exit.thread
  %i.ab = phi ptr [ %i.br, %Mig_ObjSiblId.exit.thread ], [ %i.z, %.preheader40 ]
  %.02343 = phi ptr [ %i.bq, %Mig_ObjSiblId.exit.thread ], [ %i.y, %.preheader40 ] ; 6 uses
  %i.ac = load i32, ptr %.02343, align 4          ; 2 uses
  %i.ad = icmp ugt i32 %i.ac, -3
  br i1 %i.ad, label %.critedge2, label %bb.g

bb.g:                                             ; preds = %.preheader
  %i.ae = lshr i32 %i.ac, 1                       ; 2 uses
  %.not28 = icmp eq i32 %i.ae, 0
  br i1 %.not28, label %.critedge2, label %Mig_ObjHasFanin.exit.1

Mig_ObjHasFanin.exit.1:                           ; preds = %bb.g
  %.val33 = load ptr, ptr %i.v, align 8, !tbaa !8 ; 3 uses
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %.val33, i64 %i.af ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !38
  %i.ai = add nsw i32 %i.ah, 1
  store i32 %i.ai, ptr %i.ag, align 4, !tbaa !38
  %i.aj = getelementptr inbounds nuw i8, ptr %.02343, i64 4
  %i.ak = load i32, ptr %i.aj, align 4            ; 2 uses
  %i.al = icmp ugt i32 %i.ak, -3
  br i1 %i.al, label %.critedge2, label %bb.h

bb.h:                                             ; preds = %Mig_ObjHasFanin.exit.1
  %i.am = lshr i32 %i.ak, 1                       ; 2 uses
  %.not28.1 = icmp eq i32 %i.am, 0
  br i1 %.not28.1, label %.critedge2, label %Mig_ObjHasFanin.exit.2

Mig_ObjHasFanin.exit.2:                           ; preds = %bb.h
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %.val33, i64 %i.an ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !38
  %i.aq = add nsw i32 %i.ap, 1
  store i32 %i.aq, ptr %i.ao, align 4, !tbaa !38
  %i.ar = getelementptr inbounds nuw i8, ptr %.02343, i64 8
  %i.as = load i32, ptr %i.ar, align 4            ; 2 uses
  %i.at = icmp ugt i32 %i.as, -3
  br i1 %i.at, label %.critedge2, label %bb.i

bb.i:                                             ; preds = %Mig_ObjHasFanin.exit.2
  %i.au = lshr i32 %i.as, 1                       ; 2 uses
  %.not28.2 = icmp eq i32 %i.au, 0
  br i1 %.not28.2, label %.critedge2, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %.val33, i64 %i.av ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !38
  %i.ay = add nsw i32 %i.ax, 1
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !38
  br label %.critedge2

.critedge2:                                       ; preds = %bb.j, %bb.i, %Mig_ObjHasFanin.exit.2, %bb.h, %Mig_ObjHasFanin.exit.1, %.preheader, %bb.g
  %.val.i.i = load i32, ptr %i.ab, align 4
  %i.az = lshr i32 %.val.i.i, 1                   ; 2 uses
  %i.ba = and i32 %i.az, 4095
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = sub nsw i64 0, %i.bb
  %i.bd = getelementptr inbounds [16 x i8], ptr %.02343, i64 %i.bc
  %i.be = getelementptr inbounds i8, ptr %i.bd, i64 -16
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !40 ; 2 uses
  %i.bg = getelementptr i8, ptr %i.bf, i64 124
  %.val3.i = load i32, ptr %i.bg, align 4, !tbaa !39
  %i.bh = icmp eq i32 %.val3.i, 0
  br i1 %i.bh, label %Mig_ObjSiblId.exit.thread, label %Mig_ObjSiblId.exit

Mig_ObjSiblId.exit:                               ; preds = %.critedge2
  %i.bi = getelementptr i8, ptr %i.bf, i64 128
  %.val4.i = load ptr, ptr %i.bi, align 8, !tbaa !8
  %i.bj = zext nneg i32 %i.az to i64
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %.val4.i, i64 %i.bj
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !38 ; 2 uses
  %.not29 = icmp eq i32 %i.bl, 0
  br i1 %.not29, label %Mig_ObjSiblId.exit.thread, label %Mig_ObjSiblId.exit37

Mig_ObjSiblId.exit37:                             ; preds = %Mig_ObjSiblId.exit
  %.val32 = load ptr, ptr %i.v, align 8, !tbaa !8
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr inbounds [4 x i8], ptr %.val32, i64 %i.bm ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !38
  %i.bp = add nsw i32 %i.bo, 1
  store i32 %i.bp, ptr %i.bn, align 4, !tbaa !38
  br label %Mig_ObjSiblId.exit.thread

Mig_ObjSiblId.exit.thread:                        ; preds = %.critedge2, %Mig_ObjSiblId.exit, %Mig_ObjSiblId.exit37
  %i.bq = getelementptr inbounds nuw i8, ptr %.02343, i64 16
  %i.br = getelementptr i8, ptr %.02343, i64 28   ; 2 uses
  %.023.val = load i32, ptr %i.br, align 4
  %i.bs = icmp ult i32 %.023.val, -2
  br i1 %i.bs, label %.preheader, label %._crit_edge.loopexit, !llvm.loop !42

._crit_edge.loopexit:                             ; preds = %Mig_ObjSiblId.exit.thread
  %.pre = load i32, ptr %i.q, align 8, !tbaa !28
  %.val.pre = load i32, ptr %i.r, align 4, !tbaa !18
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader40
  %.val = phi i32 [ %.val.pre, %._crit_edge.loopexit ], [ %.val48, %.preheader40 ] ; 2 uses
  %i.bt = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %storemerge45, %.preheader40 ]
  %i.bu = add nsw i32 %i.bt, 1                    ; 3 uses
  store i32 %i.bu, ptr %i.q, align 8, !tbaa !28
  %i.bv = icmp slt i32 %i.bu, %.val
  br i1 %i.bv, label %bb.f, label %.critedge, !llvm.loop !43

.critedge:                                        ; preds = %bb.f, %._crit_edge, %Vec_IntFill.exit
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define i32 @Mig_ManSuppSize_rec(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %Mig_ObjIsCi.exit._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %Mig_ObjFanin2.exit
  %.tr32 = phi ptr [ %i.ey, %Mig_ObjFanin2.exit ], [ %0, %bb.a ] ; 12 uses
  %accumulator.tr30 = phi i32 [ %i.fa, %Mig_ObjFanin2.exit ], [ 0, %bb.a ] ; 4 uses
  %i.b = getelementptr i8, ptr %.tr32, i64 12     ; 5 uses
  %.val.i.i = load i32, ptr %i.b, align 4         ; 2 uses
  %i.c = lshr i32 %.val.i.i, 1                    ; 8 uses
  %i.d = and i32 %i.c, 4095
  %i.e = zext nneg i32 %i.d to i64
  %i.f = sub nsw i64 0, %i.e
  %i.g = getelementptr inbounds [16 x i8], ptr %.tr32, i64 %i.f
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 -16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !40   ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 88 ; 2 uses
  %i.k = add nuw nsw i32 %i.c, 1                  ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 92 ; 3 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !39   ; 3 uses
  %.not.i.not.i.i = icmp slt i32 %i.c, %i.m
  br i1 %.not.i.not.i.i, label %Mig_ObjIsTravIdCurrent.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.n = load i32, ptr %i.j, align 8, !tbaa !12   ; 4 uses
  %i.o = shl nsw i32 %i.n, 1                      ; 2 uses
  %.not.i.i = icmp slt i32 %i.c, %i.o
  br i1 %.not.i.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 96 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !8    ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.q, null
  %i.r = zext nneg i32 %i.k to i64
  %i.s = shl nuw nsw i64 %i.r, 2                  ; 2 uses
  br i1 %.not9.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = tail call ptr @realloc(ptr noundef nonnull %i.q, i64 noundef %i.s) #19
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.u = tail call noalias ptr @malloc(i64 noundef %i.s) #17
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.v = phi ptr [ %i.t, %bb.d ], [ %i.u, %bb.e ]
  store ptr %i.v, ptr %i.p, align 8, !tbaa !8
  br label %Vec_IntGrow.exit.sink.split.i.i.i

bb.g:                                             ; preds = %bb.b
  %.not.i.i.not.i.i = icmp sgt i32 %i.n, %i.c
  br i1 %.not.i.i.not.i.i, label %Vec_IntGrow.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = icmp slt i32 %i.n, 1073741823
  %spec.select.i.i.i = select i1 %i.w, i32 %i.o, i32 2147483647 ; 3 uses
  %.not.i22.i.i.i = icmp slt i32 %i.n, %spec.select.i.i.i
  br i1 %.not.i22.i.i.i, label %bb.i, label %Vec_IntGrow.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 96 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !8    ; 2 uses
  %.not9.i23.i.i.i = icmp eq ptr %i.y, null
  %i.z = zext nneg i32 %spec.select.i.i.i to i64
  %i.aa = shl nuw nsw i64 %i.z, 2                 ; 2 uses
  br i1 %.not9.i23.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = tail call ptr @realloc(ptr noundef nonnull %i.y, i64 noundef %i.aa) #19
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.ac = tail call noalias ptr @malloc(i64 noundef %i.aa) #17
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ad = phi ptr [ %i.ab, %bb.j ], [ %i.ac, %bb.k ]
  store ptr %i.ad, ptr %i.x, align 8, !tbaa !8
  br label %Vec_IntGrow.exit.sink.split.i.i.i

Vec_IntGrow.exit.sink.split.i.i.i:                ; preds = %bb.l, %bb.f
  %spec.select.sink.i.i.i = phi i32 [ %spec.select.i.i.i, %bb.l ], [ %i.k, %bb.f ]
  store i32 %spec.select.sink.i.i.i, ptr %i.j, align 8, !tbaa !12
  %.pre.i.i = load i32, ptr %i.l, align 4, !tbaa !39
  br label %Vec_IntGrow.exit.i.i.i

Vec_IntGrow.exit.i.i.i:                           ; preds = %Vec_IntGrow.exit.sink.split.i.i.i, %bb.h, %bb.g
  %1 = phi i32 [ %.pre.i.i, %Vec_IntGrow.exit.sink.split.i.i.i ], [ %i.m, %bb.h ], [ %i.m, %bb.g ] ; 3 uses
  %.not3.i.i = icmp sgt i32 %1, %i.c
  br i1 %.not3.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %Vec_IntGrow.exit.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !8
  %i.ag = sext i32 %1 to i64
  %i.ah = shl nsw i64 %i.ag, 2
  %scevgep.i.i.i = getelementptr i8, ptr %i.af, i64 %i.ah
  %i.ai = sub i32 %i.c, %1
  %i.aj = zext i32 %i.ai to i64
  %i.ak = shl nuw nsw i64 %i.aj, 2
  %i.al = add nuw nsw i64 %i.ak, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i.i, i8 0, i64 %i.al, i1 false), !tbaa !38
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %Vec_IntGrow.exit.i.i.i
  store i32 %i.k, ptr %i.l, align 4, !tbaa !39
  %.val.i4.pre.i = load i32, ptr %i.b, align 4    ; 2 uses
  %.pre.i = lshr i32 %.val.i4.pre.i, 1
  %.pre6.i = and i32 %.pre.i, 4095
  %.pre8.i = zext nneg i32 %.pre6.i to i64
  %.pre10.i = sub nsw i64 0, %.pre8.i
  %.phi.trans.insert = getelementptr inbounds [16 x i8], ptr %.tr32, i64 %.pre10.i
  %.phi.trans.insert39 = getelementptr inbounds i8, ptr %.phi.trans.insert, i64 -16
  %.pre = load ptr, ptr %.phi.trans.insert39, align 8, !tbaa !40
  br label %Mig_ObjIsTravIdCurrent.exit

Mig_ObjIsTravIdCurrent.exit:                      ; preds = %.lr.ph, %._crit_edge.i.i.i
  %.val.i.i9 = phi i32 [ %.val.i.i, %.lr.ph ], [ %.val.i4.pre.i, %._crit_edge.i.i.i ]
  %i.am = phi ptr [ %i.i, %.lr.ph ], [ %.pre, %._crit_edge.i.i.i ]
  %i.an = getelementptr i8, ptr %i.i, i64 96
  %.val.i3.i = load ptr, ptr %i.an, align 8, !tbaa !8
  %i.ao = zext nneg i32 %i.c to i64
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %.val.i3.i, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !38
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 84
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !44
  %.not = icmp eq i32 %i.aq, %i.as
  br i1 %.not, label %Mig_ObjIsCi.exit._crit_edge.loopexit, label %bb.m

bb.m:                                             ; preds = %Mig_ObjIsTravIdCurrent.exit
  %i.at = lshr i32 %.val.i.i9, 1                  ; 8 uses
  %i.au = and i32 %i.at, 4095
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = sub nsw i64 0, %i.av
  %i.ax = getelementptr inbounds [16 x i8], ptr %.tr32, i64 %i.aw
  %i.ay = getelementptr inbounds i8, ptr %i.ax, i64 -16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !40 ; 7 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 88 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 84
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !44
  %i.bd = add nuw nsw i32 %i.at, 1                ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 92 ; 3 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !39 ; 3 uses
  %.not.i.not.i.i10 = icmp slt i32 %i.at, %i.bf
  br i1 %.not.i.not.i.i10, label %Mig_ObjSetTravIdCurrent.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bg = load i32, ptr %i.ba, align 8, !tbaa !12 ; 4 uses
  %i.bh = shl nsw i32 %i.bg, 1                    ; 2 uses
  %.not.i.i11 = icmp slt i32 %i.at, %i.bh
  br i1 %.not.i.i11, label %bb.s, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bi = getelementptr inbounds nuw i8, ptr %i.az, i64 96 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !8  ; 2 uses
  %.not9.i.i.i.i13 = icmp eq ptr %i.bj, null
  %i.bk = zext nneg i32 %i.bd to i64
  %i.bl = shl nuw nsw i64 %i.bk, 2                ; 2 uses
  br i1 %.not9.i.i.i.i13, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bm = tail call ptr @realloc(ptr noundef nonnull %i.bj, i64 noundef %i.bl) #19
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.bn = tail call noalias ptr @malloc(i64 noundef %i.bl) #17
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bo = phi ptr [ %i.bm, %bb.p ], [ %i.bn, %bb.q ]
  store ptr %i.bo, ptr %i.bi, align 8, !tbaa !8
  br label %Vec_IntGrow.exit.sink.split.i.i.i14

bb.s:                                             ; preds = %bb.n
  %.not.i.i.not.i.i20 = icmp sgt i32 %i.bg, %i.at
  br i1 %.not.i.i.not.i.i20, label %Vec_IntGrow.exit.i.i.i17, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bp = icmp slt i32 %i.bg, 1073741823
  %spec.select.i.i.i21 = select i1 %i.bp, i32 %i.bh, i32 2147483647 ; 3 uses
  %.not.i22.i.i.i22 = icmp slt i32 %i.bg, %spec.select.i.i.i21
  br i1 %.not.i22.i.i.i22, label %bb.u, label %Vec_IntGrow.exit.i.i.i17

bb.u:                                             ; preds = %bb.t
  %i.bq = getelementptr inbounds nuw i8, ptr %i.az, i64 96 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !8  ; 2 uses
  %.not9.i23.i.i.i23 = icmp eq ptr %i.br, null
  %i.bs = zext nneg i32 %spec.select.i.i.i21 to i64
  %i.bt = shl nuw nsw i64 %i.bs, 2                ; 2 uses
  br i1 %.not9.i23.i.i.i23, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bu = tail call ptr @realloc(ptr noundef nonnull %i.br, i64 noundef %i.bt) #19
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.bv = tail call noalias ptr @malloc(i64 noundef %i.bt) #17
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.bw = phi ptr [ %i.bu, %bb.v ], [ %i.bv, %bb.w ]
  store ptr %i.bw, ptr %i.bq, align 8, !tbaa !8
  br label %Vec_IntGrow.exit.sink.split.i.i.i14

Vec_IntGrow.exit.sink.split.i.i.i14:              ; preds = %bb.x, %bb.r
  %spec.select.sink.i.i.i15 = phi i32 [ %spec.select.i.i.i21, %bb.x ], [ %i.bd, %bb.r ]
  store i32 %spec.select.sink.i.i.i15, ptr %i.ba, align 8, !tbaa !12
  %.pre.i.i16 = load i32, ptr %i.be, align 4, !tbaa !39
  br label %Vec_IntGrow.exit.i.i.i17

Vec_IntGrow.exit.i.i.i17:                         ; preds = %Vec_IntGrow.exit.sink.split.i.i.i14, %bb.t, %bb.s
  %2 = phi i32 [ %.pre.i.i16, %Vec_IntGrow.exit.sink.split.i.i.i14 ], [ %i.bf, %bb.t ], [ %i.bf, %bb.s ] ; 3 uses
  %.not4.i.i = icmp sgt i32 %2, %i.at
  br i1 %.not4.i.i, label %._crit_edge.i.i.i20, label %.lr.ph.i.i.i18

.lr.ph.i.i.i18:                                   ; preds = %Vec_IntGrow.exit.i.i.i17
  %i.bx = getelementptr inbounds nuw i8, ptr %i.az, i64 96
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !8
  %i.bz = sext i32 %2 to i64
  %i.ca = shl nsw i64 %i.bz, 2
  %scevgep.i.i.i19 = getelementptr i8, ptr %i.by, i64 %i.ca
  %i.cb = sub i32 %i.at, %2
  %i.cc = zext i32 %i.cb to i64
  %i.cd = shl nuw nsw i64 %i.cc, 2
  %i.ce = add nuw nsw i64 %i.cd, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i.i19, i8 0, i64 %i.ce, i1 false), !tbaa !38
  br label %._crit_edge.i.i.i20

._crit_edge.i.i.i20:                              ; preds = %.lr.ph.i.i.i18, %Vec_IntGrow.exit.i.i.i17
  store i32 %i.bd, ptr %i.be, align 4, !tbaa !39
  br label %Mig_ObjSetTravIdCurrent.exit

Mig_ObjSetTravIdCurrent.exit:                     ; preds = %bb.m, %._crit_edge.i.i.i20
  %i.cf = getelementptr i8, ptr %i.az, i64 96
  %.val.i4.i = load ptr, ptr %i.cf, align 8, !tbaa !8
  %i.cg = zext nneg i32 %i.at to i64
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %.val.i4.i, i64 %i.cg
  store i32 %i.bc, ptr %i.ch, align 4, !tbaa !38
  %i.ci = getelementptr inbounds nuw i8, ptr %.tr32, i64 4 ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 4
  %i.ck = icmp ult i32 %i.cj, -2
  br i1 %i.ck, label %bb.y, label %Mig_ObjIsTerm.exit.i

Mig_ObjIsTerm.exit.i:                             ; preds = %Mig_ObjSetTravIdCurrent.exit
  %i.cl = getelementptr inbounds nuw i8, ptr %.tr32, i64 8
  %i.cm = load i32, ptr %i.cl, align 4
  %i.cn = icmp ugt i32 %i.cm, -3
  br i1 %i.cn, label %bb.y, label %Mig_ObjIsCi.exit

Mig_ObjIsCi.exit:                                 ; preds = %Mig_ObjIsTerm.exit.i
  %i.co = load i32, ptr %.tr32, align 4           ; 2 uses
  %i.cp = icmp ult i32 %i.co, -2
  br i1 %i.cp, label %.thread, label %Mig_ObjIsCi.exit._crit_edge.loopexit

bb.y:                                             ; preds = %Mig_ObjSetTravIdCurrent.exit, %Mig_ObjIsTerm.exit.i
  %.pr = load i32, ptr %.tr32, align 4            ; 2 uses
  %i.cq = icmp ult i32 %.pr, -2
  br i1 %i.cq, label %.thread, label %Mig_ObjFanin0.exit

.thread:                                          ; preds = %Mig_ObjIsCi.exit, %bb.y
  %i.cr = phi i32 [ %.pr, %bb.y ], [ %i.co, %Mig_ObjIsCi.exit ] ; 2 uses
  %.val.i.i.i = load i32, ptr %i.b, align 4
  %i.cs = lshr i32 %.val.i.i.i, 1
  %i.ct = and i32 %i.cs, 4095
  %i.cu = zext nneg i32 %i.ct to i64
  %i.cv = sub nsw i64 0, %i.cu
  %i.cw = getelementptr inbounds [16 x i8], ptr %.tr32, i64 %i.cv
  %i.cx = getelementptr inbounds i8, ptr %i.cw, i64 -16
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !40
  %i.cz = lshr i32 %i.cr, 1
  %i.da = getelementptr i8, ptr %i.cy, i64 32
  %.val.i.i24 = load ptr, ptr %i.da, align 8, !tbaa !14
  %i.db = lshr i32 %i.cr, 13
  %i.dc = zext nneg i32 %i.db to i64
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i24, i64 %i.dc
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !13
  %i.df = and i32 %i.cz, 4095
  %i.dg = zext nneg i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw [16 x i8], ptr %i.de, i64 %i.dg
  br label %Mig_ObjFanin0.exit

Mig_ObjFanin0.exit:                               ; preds = %bb.y, %.thread
  %i.di = phi ptr [ %i.dh, %.thread ], [ null, %bb.y ]
  %i.dj = tail call i32 @Mig_ManSuppSize_rec(ptr noundef %i.di) ; 2 uses
  %i.dk = load i32, ptr %i.ci, align 4            ; 3 uses
  %i.dl = icmp ult i32 %i.dk, -2
  br i1 %i.dl, label %bb.z, label %Mig_ObjFanin1.exit

bb.z:                                             ; preds = %Mig_ObjFanin0.exit
  %.val.i.i.i25 = load i32, ptr %i.b, align 4
  %i.dm = lshr i32 %.val.i.i.i25, 1
  %i.dn = and i32 %i.dm, 4095
  %i.do = zext nneg i32 %i.dn to i64
  %i.dp = sub nsw i64 0, %i.do
  %i.dq = getelementptr inbounds [16 x i8], ptr %.tr32, i64 %i.dp
  %i.dr = getelementptr inbounds i8, ptr %i.dq, i64 -16
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !40
  %i.dt = lshr i32 %i.dk, 1
  %i.du = getelementptr i8, ptr %i.ds, i64 32
  %.val.i.i26 = load ptr, ptr %i.du, align 8, !tbaa !14
  %i.dv = lshr i32 %i.dk, 13
  %i.dw = zext nneg i32 %i.dv to i64
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i26, i64 %i.dw
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !13
  %i.dz = and i32 %i.dt, 4095
  %i.ea = zext nneg i32 %i.dz to i64
  %i.eb = getelementptr inbounds nuw [16 x i8], ptr %i.dy, i64 %i.ea
  br label %Mig_ObjFanin1.exit

Mig_ObjFanin1.exit:                               ; preds = %Mig_ObjFanin0.exit, %bb.z
  %i.ec = phi ptr [ %i.eb, %bb.z ], [ null, %Mig_ObjFanin0.exit ]
  %i.ed = tail call i32 @Mig_ManSuppSize_rec(ptr noundef %i.ec) ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.tr32, i64 8
  %i.ef = load i32, ptr %i.ee, align 4            ; 3 uses
  %i.eg = icmp ult i32 %i.ef, -2
  br i1 %i.eg, label %Mig_ObjFanin2.exit, label %Mig_ObjFanin2.exit.thread

Mig_ObjFanin2.exit.thread:                        ; preds = %Mig_ObjFanin1.exit
  %i.eh = add i32 %i.dj, %accumulator.tr30
  %i.ei = add i32 %i.eh, %i.ed
  br label %Mig_ObjIsCi.exit._crit_edge.loopexit

Mig_ObjFanin2.exit:                               ; preds = %Mig_ObjFanin1.exit
  %.val.i.i.i27 = load i32, ptr %i.b, align 4
  %i.ej = lshr i32 %.val.i.i.i27, 1
  %i.ek = and i32 %i.ej, 4095
  %i.el = zext nneg i32 %i.ek to i64
  %i.em = sub nsw i64 0, %i.el
  %i.en = getelementptr inbounds [16 x i8], ptr %.tr32, i64 %i.em
  %i.eo = getelementptr inbounds i8, ptr %i.en, i64 -16
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !40
  %i.eq = lshr i32 %i.ef, 1
  %i.er = getelementptr i8, ptr %i.ep, i64 32
  %.val.i.i28 = load ptr, ptr %i.er, align 8, !tbaa !14
  %i.es = lshr i32 %i.ef, 13
  %i.et = zext nneg i32 %i.es to i64
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i28, i64 %i.et
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !13 ; 2 uses
  %i.ew = and i32 %i.eq, 4095
  %i.ex = zext nneg i32 %i.ew to i64
  %i.ey = getelementptr inbounds nuw [16 x i8], ptr %i.ev, i64 %i.ex
  %i.ez = add i32 %i.dj, %accumulator.tr30
  %i.fa = add i32 %i.ez, %i.ed                    ; 2 uses
  %i.fb = icmp eq ptr %i.ev, null
  br i1 %i.fb, label %Mig_ObjIsCi.exit._crit_edge.loopexit, label %.lr.ph

Mig_ObjIsCi.exit._crit_edge.loopexit:             ; preds = %Mig_ObjIsCi.exit, %Mig_ObjIsTravIdCurrent.exit, %Mig_ObjFanin2.exit, %Mig_ObjFanin2.exit.thread
  %accumulator.tr.lcssa.ph = phi i32 [ %i.ei, %Mig_ObjFanin2.exit.thread ], [ %accumulator.tr30, %Mig_ObjIsCi.exit ], [ %accumulator.tr30, %Mig_ObjIsTravIdCurrent.exit ], [ %i.fa, %Mig_ObjFanin2.exit ]
  %.0.ph = phi i32 [ 0, %Mig_ObjFanin2.exit.thread ], [ 1, %Mig_ObjIsCi.exit ], [ 0, %Mig_ObjIsTravIdCurrent.exit ], [ 0, %Mig_ObjFanin2.exit ]
  %i.fc = add i32 %.0.ph, %accumulator.tr.lcssa.ph
  br label %Mig_ObjIsCi.exit._crit_edge

Mig_ObjIsCi.exit._crit_edge:                      ; preds = %Mig_ObjIsCi.exit._crit_edge.loopexit, %bb.a
  %accumulator.ret.tr = phi i32 [ 0, %bb.a ], [ %i.fc, %Mig_ObjIsCi.exit._crit_edge.loopexit ]
  ret i32 %accumulator.ret.tr
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define i32 @Mig_ManSuppSize2_rec(ptr noundef %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp eq i32 %1, 2147483647
  br i1 %i.a, label %Mig_ObjIsCi.exit._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 5 uses
  %i.d = getelementptr i8, ptr %0, i64 96         ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.f = getelementptr i8, ptr %0, i64 32
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %Mig_ObjIsCi.exit.thread
  %.tr3537 = phi i32 [ %1, %.lr.ph ], [ %i.bq, %Mig_ObjIsCi.exit.thread ] ; 14 uses
  %accumulator.tr36 = phi i32 [ 0, %.lr.ph ], [ %i.bs, %Mig_ObjIsCi.exit.thread ] ; 3 uses
  %i.g = add nsw i32 %.tr3537, 1                  ; 7 uses
  %i.h = load i32, ptr %i.c, align 4, !tbaa !39   ; 5 uses
  %.not.i.not.i.i = icmp slt i32 %.tr3537, %i.h
  br i1 %.not.i.not.i.i, label %Mig_ObjIsTravIdCurrentId.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %i.b, align 8, !tbaa !12   ; 4 uses
  %i.j = shl nsw i32 %i.i, 1                      ; 2 uses
  %.not.i.i = icmp slt i32 %.tr3537, %i.j
  %.not.i.i.not.i.i = icmp sgt i32 %i.i, %.tr3537 ; 2 uses
  br i1 %.not.i.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %.not.i.i.not.i.i, label %Vec_IntGrow.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !8    ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.k, null
  %i.l = sext i32 %i.g to i64
  %i.m = shl nsw i64 %i.l, 2                      ; 2 uses
  br i1 %.not9.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = tail call ptr @realloc(ptr noundef nonnull %i.k, i64 noundef %i.m) #19
  br label %Vec_IntGrow.exit.sink.split.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.o = tail call noalias ptr @malloc(i64 noundef %i.m) #17
  br label %Vec_IntGrow.exit.sink.split.i.i.i

bb.h:                                             ; preds = %bb.c
  br i1 %.not.i.i.not.i.i, label %Vec_IntGrow.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = icmp slt i32 %i.i, 1073741823
  %spec.select.i.i.i = select i1 %i.p, i32 %i.j, i32 2147483647 ; 4 uses
  %.not.i22.i.i.i = icmp slt i32 %i.i, %spec.select.i.i.i
  br i1 %.not.i22.i.i.i, label %bb.j, label %Vec_IntGrow.exit.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !8    ; 2 uses
  %.not9.i23.i.i.i = icmp eq ptr %i.q, null
  %i.r = sext i32 %spec.select.i.i.i to i64
  %i.s = shl nsw i64 %i.r, 2                      ; 2 uses
  br i1 %.not9.i23.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = tail call ptr @realloc(ptr noundef nonnull %i.q, i64 noundef %i.s) #19
end_hunk_0
