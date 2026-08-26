Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/abcHieNew?download=true
inline.NumInlined: 551
inline.NumDeleted: 114
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 19
begin_hunk_0_@Au_ObjSuppSize_rec:bb.a
  %.val20 = load i64, ptr %i.bh, align 4
  %i.bp = lshr i64 %.val20, 35
  %i.bq = icmp samesign ult i64 %indvars.iv.next, %i.bp
  br i1 %i.bq, label %bb.s, label %.critedge, !llvm.loop !99

.critedge:                                        ; preds = %bb.s, %.preheader, %Au_ObjSetTravIdCurrentId.exit, %Au_ObjIsTravIdCurrentId.exit
  %.016 = phi i32 [ 1, %Au_ObjSetTravIdCurrentId.exit ], [ 0, %Au_ObjIsTravIdCurrentId.exit ], [ 0, %.preheader ], [ %i.bo, %bb.s ]
  ret i32 %.016
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define i32 @Au_ObjSuppSize(ptr noundef %0) local_unnamed_addr #12 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 1023
  %i.c = sub nsw i64 0, %i.b
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !65   ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 152 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !100
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.b, label %Au_NtkIncrementTravId.exit

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 144 ; 2 uses
  %i.j = getelementptr i8, ptr %i.e, i64 116
  %.val.i = load i32, ptr %i.j, align 4, !tbaa !20
  %i.k = getelementptr i8, ptr %i.e, i64 128
  %.val4.i = load i32, ptr %i.k, align 8, !tbaa !49
  %i.l = shl i32 %.val.i, 12
  %i.m = add i32 %i.l, -4096
  %i.n = add nsw i32 %i.m, %.val4.i               ; 2 uses
  %i.o = add nsw i32 %i.n, 500                    ; 5 uses
  %i.p = load i32, ptr %i.i, align 8, !tbaa !25
  %.not.i.i.i = icmp slt i32 %i.p, %i.o
  br i1 %.not.i.i.i, label %bb.c, label %Vec_IntGrow.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.q = sext i32 %i.o to i64
  %i.r = shl nsw i64 %i.q, 2
  %i.s = tail call noalias ptr @malloc(i64 noundef %i.r) #29 ; 2 uses
  store ptr %i.s, ptr %i.f, align 8, !tbaa !24
  store i32 %i.o, ptr %i.i, align 8, !tbaa !25
  br label %Vec_IntGrow.exit.i.i

Vec_IntGrow.exit.i.i:                             ; preds = %bb.c, %bb.b
  %i.t = phi ptr [ %i.s, %bb.c ], [ null, %bb.b ]
  %i.u = icmp sgt i32 %i.n, -500
  br i1 %i.u, label %.lr.ph.i.i, label %Vec_IntFill.exit.i

.lr.ph.i.i:                                       ; preds = %Vec_IntGrow.exit.i.i
  %wide.trip.count.i.i = zext nneg i32 %i.o to i64
  %i.v = shl nuw nsw i64 %wide.trip.count.i.i, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.t, i8 0, i64 %i.v, i1 false), !tbaa !47
  br label %Vec_IntFill.exit.i

Vec_IntFill.exit.i:                               ; preds = %.lr.ph.i.i, %Vec_IntGrow.exit.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 148
  store i32 %i.o, ptr %i.w, align 4, !tbaa !48
  br label %Au_NtkIncrementTravId.exit

Au_NtkIncrementTravId.exit:                       ; preds = %bb.a, %Vec_IntFill.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 140 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !98
  %i.z = add nsw i32 %i.y, 1
  store i32 %i.z, ptr %i.x, align 4, !tbaa !98
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !47
  %i.ac = trunc i64 %i.a to i32
  %i.ad = lshr i32 %i.ac, 4
  %i.ae = and i32 %i.ad, 63
  %i.af = or i32 %i.ab, %i.ae
  %i.ag = tail call i32 @Au_ObjSuppSize_rec(ptr noundef nonnull %i.e, i32 noundef %i.af)
  ret i32 %i.ag
}

; Function Attrs: nounwind uwtable
define noundef i32 @Au_NtkSuppSizeTest(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 60         ; 2 uses
  %.val1115 = load i32, ptr %i.a, align 4, !tbaa !48 ; 2 uses
  %i.b = icmp sgt i32 %.val1115, 0
  br i1 %i.b, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 64
  %i.d = getelementptr i8, ptr %0, i64 120
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %.val1119 = phi i32 [ %.val1115, %.lr.ph ], [ %.val11, %bb.f ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %.017 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.f ]  ; 2 uses
  %.val12 = load ptr, ptr %i.c, align 8, !tbaa !24
  %.val13 = load ptr, ptr %i.d, align 8, !tbaa !38
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %.val12, i64 %indvars.iv
  %i.f = load i32, ptr %i.e, align 4, !tbaa !47   ; 2 uses
  %i.g = ashr i32 %i.f, 12
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds [8 x i8], ptr %.val13, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !31
  %i.k = and i32 %i.f, 4095
  %i.l = zext nneg i32 %i.k to i64
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.l ; 3 uses
  %.val14 = load i64, ptr %i.m, align 4
  %i.n = and i64 %.val14, 30064771072
  %.not = icmp eq i64 %i.n, 30064771072
  br i1 %.not, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.o = ptrtoint ptr %i.m to i64                 ; 2 uses
  %i.p = and i64 %i.o, 1023
  %i.q = sub nsw i64 0, %i.p
  %i.r = getelementptr inbounds i8, ptr %i.m, i64 %i.q ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !65   ; 7 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 152 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !100
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.d, label %Au_ObjSuppSize.exit

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 144 ; 2 uses
  %i.x = getelementptr i8, ptr %i.s, i64 116
  %.val.i.i = load i32, ptr %i.x, align 4, !tbaa !20
  %i.y = getelementptr i8, ptr %i.s, i64 128
  %.val4.i.i = load i32, ptr %i.y, align 8, !tbaa !49
  %i.z = shl i32 %.val.i.i, 12
  %i.aa = add i32 %i.z, -4096
  %i.ab = add nsw i32 %i.aa, %.val4.i.i           ; 2 uses
  %i.ac = add nsw i32 %i.ab, 500                  ; 5 uses
  %i.ad = load i32, ptr %i.w, align 8, !tbaa !25
  %.not.i.i.i.i = icmp slt i32 %i.ad, %i.ac
  br i1 %.not.i.i.i.i, label %bb.e, label %Vec_IntGrow.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.ae = sext i32 %i.ac to i64
  %i.af = shl nsw i64 %i.ae, 2
  %i.ag = tail call noalias ptr @malloc(i64 noundef %i.af) #29 ; 2 uses
  store ptr %i.ag, ptr %i.t, align 8, !tbaa !24
  store i32 %i.ac, ptr %i.w, align 8, !tbaa !25
  br label %Vec_IntGrow.exit.i.i.i

Vec_IntGrow.exit.i.i.i:                           ; preds = %bb.e, %bb.d
  %i.ah = phi ptr [ %i.ag, %bb.e ], [ null, %bb.d ]
  %i.ai = icmp sgt i32 %i.ab, -500
  br i1 %i.ai, label %.lr.ph.i.i.i, label %Vec_IntFill.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %Vec_IntGrow.exit.i.i.i
  %wide.trip.count.i.i.i = zext nneg i32 %i.ac to i64
  %i.aj = shl nuw nsw i64 %wide.trip.count.i.i.i, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ah, i8 0, i64 %i.aj, i1 false), !tbaa !47
  br label %Vec_IntFill.exit.i.i

Vec_IntFill.exit.i.i:                             ; preds = %.lr.ph.i.i.i, %Vec_IntGrow.exit.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.s, i64 148
  store i32 %i.ac, ptr %i.ak, align 4, !tbaa !48
  br label %Au_ObjSuppSize.exit

Au_ObjSuppSize.exit:                              ; preds = %bb.c, %Vec_IntFill.exit.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.s, i64 140 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !98
  %i.an = add nsw i32 %i.am, 1
  store i32 %i.an, ptr %i.al, align 4, !tbaa !98
  %i.ao = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !47
  %i.aq = trunc i64 %i.o to i32
  %i.ar = lshr i32 %i.aq, 4
  %i.as = and i32 %i.ar, 63
  %i.at = or i32 %i.ap, %i.as
  %i.au = tail call i32 @Au_ObjSuppSize_rec(ptr noundef nonnull %i.s, i32 noundef %i.at)
  %i.av = icmp slt i32 %i.au, 17
  %i.aw = zext i1 %i.av to i32
  %i.ax = add nsw i32 %.017, %i.aw
  %.val11.pre = load i32, ptr %i.a, align 4, !tbaa !48
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %Au_ObjSuppSize.exit
  %.val11 = phi i32 [ %.val11.pre, %Au_ObjSuppSize.exit ], [ %.val1119, %bb.b ] ; 2 uses
  %.1 = phi i32 [ %i.ax, %Au_ObjSuppSize.exit ], [ %.017, %bb.b ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ay = sext i32 %.val11 to i64
  %i.az = icmp slt i64 %indvars.iv.next, %i.ay
  br i1 %i.az, label %bb.b, label %.critedge, !llvm.loop !101

.critedge:                                        ; preds = %bb.f, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %.1, %bb.f ] ; 2 uses
  %i.ba = getelementptr i8, ptr %0, i64 100
  %.val = load i32, ptr %i.ba, align 4, !tbaa !47
  %i.bb = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.25, i32 noundef %.0.lcssa, i32 noundef %.val) ; 0 uses
  ret i32 %.0.lcssa
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define i32 @Au_NtkAllocObj(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #12 {
bb.a:
  %i.a = add nsw i32 %1, 2                        ; 2 uses
  %i.b = ashr i32 %i.a, 2
  %i.c = and i32 %i.a, 3
  %i.d = icmp ne i32 %i.c, 0
  %i.e = zext i1 %i.d to i32
  %i.f = add nsw i32 %i.b, %i.e                   ; 4 uses
  %i.g = icmp sgt i32 %i.f, 63
  %3 = or i32 %i.f, 63
  %spec.select = select i1 %i.g, i32 %3, i32 %i.f ; 5 uses
  %4 = getelementptr i8, ptr %0, i64 116          ; 4 uses
  %invariant.op = sub nsw i32 4096, %spec.select  ; 2 uses
  %invariant.op125 = sub nsw i32 64, %spec.select
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 10 uses
  %i.i = getelementptr i8, ptr %0, i64 120        ; 6 uses
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb.x, %bb.a
  %.val = load i32, ptr %4, align 4, !tbaa !20    ; 3 uses
  %i.j = icmp eq i32 %.val, 0
  br i1 %i.j, label %.split127.us, label %bb.b

bb.b:                                             ; preds = %tailrecurse
  %i.k = load i32, ptr %i.h, align 8, !tbaa !49   ; 5 uses
  %i.l = icmp sgt i32 %i.k, %invariant.op
  br i1 %i.l, label %.split127.us, label %bb.t

.split127.us:                                     ; preds = %bb.b, %tailrecurse
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.n = icmp sgt i32 %spec.select, 4032          ; 2 uses
  %i.o = add nuw nsw i32 %spec.select, 64         ; 2 uses
  %narrow177 = select i1 %i.n, i32 %i.o, i32 4160
  %.sink = zext i32 %narrow177 to i64
  %.sink176 = select i1 %i.n, i32 %i.o, i32 4160
  %i.p = tail call noalias ptr @calloc(i64 noundef %.sink, i64 noundef 16) #27 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !46
  %i.s = add nsw i32 %i.r, %.sink176
  store i32 %i.s, ptr %i.q, align 4, !tbaa !46
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !23   ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 4 ; 3 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !20   ; 7 uses
  %i.x = load i32, ptr %i.u, align 8, !tbaa !21
  %i.y = icmp eq i32 %i.w, %i.x
  br i1 %i.y, label %bb.c, label %Vec_PtrPush.exit

bb.c:                                             ; preds = %.split127.us
  %i.z = icmp slt i32 %i.w, 16
  br i1 %i.z, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !22 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.ab, null
  br i1 %.not9.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.ab, i64 noundef 128) #31
  br label %Vec_PtrGrow.exit.i

bb.f:                                             ; preds = %bb.d
  %i.ad = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #29
  br label %Vec_PtrGrow.exit.i

Vec_PtrGrow.exit.i:                               ; preds = %bb.f, %bb.e
  %i.ae = phi ptr [ %i.ac, %bb.e ], [ %i.ad, %bb.f ]
  store ptr %i.ae, ptr %i.aa, align 8, !tbaa !22
  br label %Vec_PtrGrow.exit12.sink.split.i

bb.g:                                             ; preds = %bb.c
  %i.af = icmp samesign ult i32 %i.w, 1073741823
  %i.ag = shl nuw nsw i32 %i.w, 1
  %spec.select.i = select i1 %i.af, i32 %i.ag, i32 2147483647 ; 3 uses
  %.not.i10.i = icmp samesign ult i32 %i.w, %spec.select.i
  br i1 %.not.i10.i, label %bb.h, label %Vec_PtrPush.exit

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !22 ; 2 uses
  %.not9.i11.i = icmp eq ptr %i.ai, null
  %i.aj = zext nneg i32 %spec.select.i to i64
  %i.ak = shl nuw nsw i64 %i.aj, 3                ; 2 uses
  br i1 %.not9.i11.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.al = tail call ptr @realloc(ptr noundef nonnull %i.ai, i64 noundef %i.ak) #31
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.am = tail call noalias ptr @malloc(i64 noundef %i.ak) #29
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.an = phi ptr [ %i.al, %bb.i ], [ %i.am, %bb.j ]
  store ptr %i.an, ptr %i.ah, align 8, !tbaa !22
  br label %Vec_PtrGrow.exit12.sink.split.i

Vec_PtrGrow.exit12.sink.split.i:                  ; preds = %bb.k, %Vec_PtrGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.k ], [ 16, %Vec_PtrGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %i.u, align 8, !tbaa !21
  %.pre = load i32, ptr %i.v, align 4, !tbaa !20
  br label %Vec_PtrPush.exit

Vec_PtrPush.exit:                                 ; preds = %.split127.us, %bb.g, %Vec_PtrGrow.exit12.sink.split.i
  %i.ao = phi i32 [ %i.w, %.split127.us ], [ %i.w, %bb.g ], [ %.pre, %Vec_PtrGrow.exit12.sink.split.i ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !22
  %i.ar = add nsw i32 %i.ao, 1
  store i32 %i.ar, ptr %i.v, align 4, !tbaa !20
  %i.as = sext i32 %i.ao to i64
  %i.at = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.as
  store ptr %i.p, ptr %i.at, align 8, !tbaa !31
  %i.au = ptrtoint ptr %i.p to i64
  %i.av = and i64 %i.au, 15                       ; 2 uses
  %.not79.a = icmp eq i64 %i.av, 0
  %i.aw = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.ax = sub nsw i64 0, %i.av
  %i.ay = getelementptr inbounds i8, ptr %i.aw, i64 %i.ax
  %.1 = select i1 %.not79.a, ptr %i.p, ptr %i.ay  ; 2 uses
  %i.az = ptrtoint ptr %.1 to i64
  %i.ba = trunc i64 %i.az to i32
  %i.bb = lshr i32 %i.ba, 4
  %i.bc = and i32 %i.bb, 63                       ; 2 uses
  %.not80 = icmp eq i32 %i.bc, 0
  %i.bd = sub nuw nsw i32 64, %i.bc
  %narrow = select i1 %.not80, i32 0, i32 %i.bd
  %.2.idx = zext nneg i32 %narrow to i64
  %.2 = getelementptr inbounds nuw [16 x i8], ptr %.1, i64 %.2.idx ; 2 uses
  store i32 0, ptr %i.h, align 8, !tbaa !49
  %i.be = load i32, ptr %4, align 4, !tbaa !20    ; 7 uses
  %i.bf = load i32, ptr %i.m, align 8, !tbaa !21
  %i.bg = icmp eq i32 %i.be, %i.bf
  br i1 %i.bg, label %bb.l, label %Vec_PtrPush.exit.Vec_PtrPush.exit94_crit_edge

Vec_PtrPush.exit.Vec_PtrPush.exit94_crit_edge:    ; preds = %Vec_PtrPush.exit
  %.pre137.a = load ptr, ptr %i.i, align 8, !tbaa !22
  br label %Vec_PtrPush.exit94

bb.l:                                             ; preds = %Vec_PtrPush.exit
  %i.bh = icmp slt i32 %i.be, 16
  br i1 %i.bh, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.bi = load ptr, ptr %i.i, align 8, !tbaa !22  ; 2 uses
  %.not9.i.i92 = icmp eq ptr %i.bi, null
  br i1 %.not9.i.i92, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bj = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.bi, i64 noundef 128) #31
  br label %Vec_PtrGrow.exit12.sink.split.i90

bb.o:                                             ; preds = %bb.m
  %i.bk = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #29
  br label %Vec_PtrGrow.exit12.sink.split.i90

bb.p:                                             ; preds = %bb.l
  %i.bl = icmp samesign ult i32 %i.be, 1073741823
  %i.bm = shl nuw nsw i32 %i.be, 1
  %spec.select.i87 = select i1 %i.bl, i32 %i.bm, i32 2147483647 ; 4 uses
  %.not.i10.i88 = icmp samesign ult i32 %i.be, %spec.select.i87
  %.pre138 = load ptr, ptr %i.i, align 8, !tbaa !22 ; 3 uses
  br i1 %.not.i10.i88, label %bb.q, label %Vec_PtrPush.exit94

bb.q:                                             ; preds = %bb.p
  %.not9.i11.i89 = icmp eq ptr %.pre138, null
  %i.bn = zext nneg i32 %spec.select.i87 to i64
  %i.bo = shl nuw nsw i64 %i.bn, 3                ; 2 uses
  br i1 %.not9.i11.i89, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bp = tail call ptr @realloc(ptr noundef nonnull %.pre138, i64 noundef %i.bo) #31
  br label %Vec_PtrGrow.exit12.sink.split.i90

bb.s:                                             ; preds = %bb.q
  %i.bq = tail call noalias ptr @malloc(i64 noundef %i.bo) #29
  br label %Vec_PtrGrow.exit12.sink.split.i90

Vec_PtrGrow.exit12.sink.split.i90:                ; preds = %bb.r, %bb.s, %bb.n, %bb.o
  %i.br = phi ptr [ %i.bk, %bb.o ], [ %i.bj, %bb.n ], [ %i.bp, %bb.r ], [ %i.bq, %bb.s ] ; 2 uses
  %spec.select.sink.i91 = phi i32 [ 16, %bb.o ], [ 16, %bb.n ], [ %spec.select.i87, %bb.r ], [ %spec.select.i87, %bb.s ]
  store ptr %i.br, ptr %i.i, align 8, !tbaa !22
  store i32 %spec.select.sink.i91, ptr %i.m, align 8, !tbaa !21
  %.pre139 = load i32, ptr %4, align 4, !tbaa !20
  %.pre140 = load i32, ptr %i.h, align 8, !tbaa !49
  br label %Vec_PtrPush.exit94

Vec_PtrPush.exit94:                               ; preds = %Vec_PtrPush.exit.Vec_PtrPush.exit94_crit_edge, %bb.p, %Vec_PtrGrow.exit12.sink.split.i90
  %i.bs = phi i32 [ 0, %Vec_PtrPush.exit.Vec_PtrPush.exit94_crit_edge ], [ 0, %bb.p ], [ %.pre140, %Vec_PtrGrow.exit12.sink.split.i90 ] ; 2 uses
  %i.bt = phi i32 [ %i.be, %Vec_PtrPush.exit.Vec_PtrPush.exit94_crit_edge ], [ %i.be, %bb.p ], [ %.pre139, %Vec_PtrGrow.exit12.sink.split.i90 ] ; 2 uses
  %i.bu = phi ptr [ %.pre137.a, %Vec_PtrPush.exit.Vec_PtrPush.exit94_crit_edge ], [ %.pre138, %bb.p ], [ %i.br, %Vec_PtrGrow.exit12.sink.split.i90 ]
  %i.bv = add nsw i32 %i.bt, 1                    ; 3 uses
  store i32 %i.bv, ptr %4, align 4, !tbaa !20
  %i.bw = sext i32 %i.bt to i64
  %i.bx = getelementptr inbounds [8 x i8], ptr %i.bu, i64 %i.bw
  store ptr %.2, ptr %i.bx, align 8, !tbaa !31
  %.val10.i = load ptr, ptr %i.i, align 8, !tbaa !22
  %i.by = sext i32 %i.bv to i64
  %i.bz = getelementptr [8 x i8], ptr %.val10.i, i64 %i.by
  %i.ca = getelementptr i8, ptr %i.bz, i64 -8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !31
  %i.cc = sext i32 %i.bs to i64
  %i.cd = getelementptr inbounds [16 x i8], ptr %i.cb, i64 %i.cc ; 2 uses
  store ptr %0, ptr %i.cd, align 8, !tbaa !65
  %i.ce = shl i32 %i.bv, 12
  %i.cf = add i32 %i.ce, -4096
  %i.cg = and i32 %i.bs, 4032
  %i.ch = or disjoint i32 %i.cg, %i.cf
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store i32 %i.ch, ptr %i.ci, align 8, !tbaa !47
  %i.cj = load i32, ptr %i.h, align 8, !tbaa !49
  %i.ck = add nsw i32 %i.cj, 1                    ; 2 uses
  store i32 %i.ck, ptr %i.h, align 8, !tbaa !49
  br label %.loopexit

bb.t:                                             ; preds = %bb.b
  %.val86 = load ptr, ptr %i.i, align 8, !tbaa !22
  %i.cl = sext i32 %.val to i64
  %i.cm = getelementptr [8 x i8], ptr %.val86, i64 %i.cl
  %i.cn = getelementptr i8, ptr %i.cm, i64 -8
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !31 ; 2 uses
  %i.cp = and i32 %i.k, 63                        ; 2 uses
  %i.cq = icmp eq i32 %i.cp, 0                    ; 2 uses
  %i.cr = icmp sgt i32 %i.cp, %invariant.op125
  %or.cond = select i1 %i.cq, i1 true, i1 %i.cr
  br i1 %or.cond, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  br i1 %i.cq, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %reass.sub = and i32 %i.k, -64
  %i.cs = add i32 %reass.sub, 64                  ; 2 uses
  store i32 %i.cs, ptr %i.h, align 8, !tbaa !49
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.ct = phi i32 [ %i.cs, %bb.v ], [ %i.k, %bb.u ] ; 2 uses
  %i.cu = sext i32 %i.ct to i64
  %i.cv = getelementptr inbounds [16 x i8], ptr %i.co, i64 %i.cu ; 2 uses
  store ptr %0, ptr %i.cv, align 8, !tbaa !65
  %i.cw = shl i32 %.val, 12
  %i.cx = add i32 %i.cw, -4096
  %i.cy = and i32 %i.ct, 4032
  %i.cz = or disjoint i32 %i.cy, %i.cx
  %i.da = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  store i32 %i.cz, ptr %i.da, align 8, !tbaa !47
  %i.db = load i32, ptr %i.h, align 8, !tbaa !49
  %i.dc = add nsw i32 %i.db, 1                    ; 2 uses
  store i32 %i.dc, ptr %i.h, align 8, !tbaa !49
  br label %bb.x

bb.x:                                             ; preds = %bb.t, %bb.w
  %i.dd = phi i32 [ %i.k, %bb.t ], [ %i.dc, %bb.w ] ; 2 uses
  %i.de = icmp sgt i32 %i.dd, %invariant.op
  br i1 %i.de, label %tailrecurse, label %.loopexit

.loopexit:                                        ; preds = %bb.x, %Vec_PtrPush.exit94
  %5 = phi i32 [ %i.ck, %Vec_PtrPush.exit94 ], [ %i.dd, %bb.x ]
  %.3 = phi ptr [ %.2, %Vec_PtrPush.exit94 ], [ %i.co, %bb.x ]
  %i.df = sext i32 %5 to i64
  %i.dg = getelementptr inbounds [16 x i8], ptr %.3, i64 %i.df ; 10 uses
  %i.dh = load i64, ptr %i.dg, align 4
  %i.di = and i32 %1, 536870911
  %i.dj = zext nneg i32 %i.di to i64
  %i.dk = shl nuw i64 %i.dj, 35
  %i.dl = and i64 %i.dh, 4294967295
  %i.dm = or disjoint i64 %i.dl, %i.dk
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.do = and i32 %2, 7
  %i.dp = zext nneg i32 %i.do to i64              ; 2 uses
  %i.dq = shl nuw nsw i64 %i.dp, 32
  %i.dr = or disjoint i64 %i.dm, %i.dq
  store i64 %i.dr, ptr %i.dg, align 4
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %i.dp ; 2 uses
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !47
  %i.du = add nsw i32 %i.dt, 1
  store i32 %i.du, ptr %i.ds, align 4, !tbaa !47
  switch i32 %2, label %.loopexit._crit_edge [
    i32 2, label %bb.y
    i32 3, label %bb.ai
  ]

.loopexit._crit_edge:                             ; preds = %.loopexit
  %.pre145 = ptrtoint ptr %i.dg to i64            ; 2 uses
  %.pre147 = and i64 %.pre145, 1023
  %.pre149 = sub nsw i64 0, %.pre147
  br label %bb.as

bb.y:                                             ; preds = %.loopexit
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.dw = getelementptr i8, ptr %0, i64 28        ; 3 uses
  %.val83 = load i32, ptr %i.dw, align 4, !tbaa !48 ; 8 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  store i32 %.val83, ptr %i.dx, align 4, !tbaa !47
  %i.dy = ptrtoint ptr %i.dg to i64               ; 3 uses
  %i.dz = and i64 %i.dy, 1023
  %i.ea = sub nsw i64 0, %i.dz                    ; 2 uses
  %i.eb = getelementptr inbounds i8, ptr %i.dg, i64 %i.ea
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !47
  %i.ee = trunc i64 %i.dy to i32
  %i.ef = lshr i32 %i.ee, 4
  %i.eg = and i32 %i.ef, 63
  %i.eh = or i32 %i.ed, %i.eg
  %i.ei = load i32, ptr %i.dv, align 8, !tbaa !25
  %i.ej = icmp eq i32 %.val83, %i.ei
  br i1 %i.ej, label %bb.z, label %Vec_IntPush.exit

bb.z:                                             ; preds = %bb.y
  %i.ek = icmp slt i32 %.val83, 16
  br i1 %i.ek, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %bb.z
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !24 ; 2 uses
  %.not9.i.i99 = icmp eq ptr %i.em, null
  br i1 %.not9.i.i99, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.en = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.em, i64 noundef 64) #31
  br label %Vec_IntGrow.exit.i

bb.ac:                                            ; preds = %bb.aa
  %i.eo = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #29
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.ac, %bb.ab
  %i.ep = phi ptr [ %i.en, %bb.ab ], [ %i.eo, %bb.ac ]
  store ptr %i.ep, ptr %i.el, align 8, !tbaa !24
  br label %Vec_IntGrow.exit11.sink.split.i

bb.ad:                                            ; preds = %bb.z
  %i.eq = icmp samesign ult i32 %.val83, 1073741823
  %i.er = shl nuw nsw i32 %.val83, 1
  %spec.select.i97 = select i1 %i.eq, i32 %i.er, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %.val83, %spec.select.i97
  br i1 %.not.i9.i, label %bb.ae, label %Vec_IntPush.exit

bb.ae:                                            ; preds = %bb.ad
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !24 ; 2 uses
  %.not9.i10.i = icmp eq ptr %i.et, null
  %i.eu = zext nneg i32 %spec.select.i97 to i64
  %i.ev = shl nuw nsw i64 %i.eu, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ew = tail call ptr @realloc(ptr noundef nonnull %i.et, i64 noundef %i.ev) #31
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.ex = tail call noalias ptr @malloc(i64 noundef %i.ev) #29
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.ey = phi ptr [ %i.ew, %bb.af ], [ %i.ex, %bb.ag ]
  store ptr %i.ey, ptr %i.es, align 8, !tbaa !24
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.ah, %Vec_IntGrow.exit.i
  %spec.select.sink.i98 = phi i32 [ %spec.select.i97, %bb.ah ], [ 16, %Vec_IntGrow.exit.i ]
  store i32 %spec.select.sink.i98, ptr %i.dv, align 8, !tbaa !25
  %.pre142 = load i32, ptr %i.dw, align 4, !tbaa !48
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.y, %bb.ad, %Vec_IntGrow.exit11.sink.split.i
  %i.ez = phi i32 [ %.val83, %bb.y ], [ %.val83, %bb.ad ], [ %.pre142, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !24
  %i.fc = add nsw i32 %i.ez, 1
  store i32 %i.fc, ptr %i.dw, align 4, !tbaa !48
  %i.fd = sext i32 %i.ez to i64
  %i.fe = getelementptr inbounds [4 x i8], ptr %i.fb, i64 %i.fd
  store i32 %i.eh, ptr %i.fe, align 4, !tbaa !47
  br label %bb.as

bb.ai:                                            ; preds = %.loopexit
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.fg = getelementptr i8, ptr %0, i64 44        ; 3 uses
  %.val82 = load i32, ptr %i.fg, align 4, !tbaa !48 ; 8 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.dg, i64 12
  store i32 %.val82, ptr %i.fh, align 4, !tbaa !47
  %i.fi = ptrtoint ptr %i.dg to i64               ; 3 uses
  %i.fj = and i64 %i.fi, 1023
  %i.fk = sub nsw i64 0, %i.fj                    ; 2 uses
  %i.fl = getelementptr inbounds i8, ptr %i.dg, i64 %i.fk
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !47
  %i.fo = trunc i64 %i.fi to i32
  %i.fp = lshr i32 %i.fo, 4
  %i.fq = and i32 %i.fp, 63
  %i.fr = or i32 %i.fn, %i.fq
  %i.fs = load i32, ptr %i.ff, align 8, !tbaa !25
  %i.ft = icmp eq i32 %.val82, %i.fs
  br i1 %i.ft, label %bb.aj, label %Vec_IntPush.exit107

bb.aj:                                            ; preds = %bb.ai
  %i.fu = icmp slt i32 %.val82, 16
  br i1 %i.fu, label %bb.ak, label %bb.an

bb.ak:                                            ; preds = %bb.aj
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !24 ; 2 uses
  %.not9.i.i105 = icmp eq ptr %i.fw, null
  br i1 %.not9.i.i105, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fx = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.fw, i64 noundef 64) #31
  br label %Vec_IntGrow.exit.i106

bb.am:                                            ; preds = %bb.ak
  %i.fy = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #29
  br label %Vec_IntGrow.exit.i106

Vec_IntGrow.exit.i106:                            ; preds = %bb.am, %bb.al
  %i.fz = phi ptr [ %i.fx, %bb.al ], [ %i.fy, %bb.am ]
  store ptr %i.fz, ptr %i.fv, align 8, !tbaa !24
  br label %Vec_IntGrow.exit11.sink.split.i103

bb.an:                                            ; preds = %bb.aj
  %i.ga = icmp samesign ult i32 %.val82, 1073741823
  %i.gb = shl nuw nsw i32 %.val82, 1
  %spec.select.i100 = select i1 %i.ga, i32 %i.gb, i32 2147483647 ; 3 uses
  %.not.i9.i101 = icmp samesign ult i32 %.val82, %spec.select.i100
  br i1 %.not.i9.i101, label %bb.ao, label %Vec_IntPush.exit107

bb.ao:                                            ; preds = %bb.an
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !24 ; 2 uses
  %.not9.i10.i102 = icmp eq ptr %i.gd, null
  %i.ge = zext nneg i32 %spec.select.i100 to i64
  %i.gf = shl nuw nsw i64 %i.ge, 2                ; 2 uses
  br i1 %.not9.i10.i102, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.gg = tail call ptr @realloc(ptr noundef nonnull %i.gd, i64 noundef %i.gf) #31
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ao
  %i.gh = tail call noalias ptr @malloc(i64 noundef %i.gf) #29
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.gi = phi ptr [ %i.gg, %bb.ap ], [ %i.gh, %bb.aq ]
  store ptr %i.gi, ptr %i.gc, align 8, !tbaa !24
  br label %Vec_IntGrow.exit11.sink.split.i103

Vec_IntGrow.exit11.sink.split.i103:               ; preds = %bb.ar, %Vec_IntGrow.exit.i106
  %spec.select.sink.i104 = phi i32 [ %spec.select.i100, %bb.ar ], [ 16, %Vec_IntGrow.exit.i106 ]
  store i32 %spec.select.sink.i104, ptr %i.ff, align 8, !tbaa !25
  %.pre141 = load i32, ptr %i.fg, align 4, !tbaa !48
  br label %Vec_IntPush.exit107

Vec_IntPush.exit107:                              ; preds = %bb.ai, %bb.an, %Vec_IntGrow.exit11.sink.split.i103
  %i.gj = phi i32 [ %.val82, %bb.ai ], [ %.val82, %bb.an ], [ %.pre141, %Vec_IntGrow.exit11.sink.split.i103 ] ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !24
  %i.gm = add nsw i32 %i.gj, 1
  store i32 %i.gm, ptr %i.fg, align 4, !tbaa !48
  %i.gn = sext i32 %i.gj to i64
  %i.go = getelementptr inbounds [4 x i8], ptr %i.gl, i64 %i.gn
  store i32 %i.fr, ptr %i.go, align 4, !tbaa !47
  br label %bb.as

bb.as:                                            ; preds = %.loopexit._crit_edge, %Vec_IntPush.exit107, %Vec_IntPush.exit
  %.pre-phi150 = phi i64 [ %.pre149, %.loopexit._crit_edge ], [ %i.fk, %Vec_IntPush.exit107 ], [ %i.ea, %Vec_IntPush.exit ]
  %.pre-phi146 = phi i64 [ %.pre145, %.loopexit._crit_edge ], [ %i.fi, %Vec_IntPush.exit107 ], [ %i.dy, %Vec_IntPush.exit ]
  %i.gp = load i32, ptr %i.h, align 8, !tbaa !49
  %i.gq = add nsw i32 %i.gp, %spec.select
  store i32 %i.gq, ptr %i.h, align 8, !tbaa !49
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.gs = load i32, ptr %i.gr, align 8, !tbaa !50
  %i.gt = add nsw i32 %i.gs, %i.f
  store i32 %i.gt, ptr %i.gr, align 8, !tbaa !50
  %i.gu = getelementptr inbounds i8, ptr %i.dg, i64 %.pre-phi150
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !47
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 3 uses
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !48 ; 7 uses
  %i.ha = load i32, ptr %i.gx, align 8, !tbaa !25
  %i.hb = icmp eq i32 %i.gz, %i.ha
  br i1 %i.hb, label %bb.at, label %Vec_IntPush.exit115

bb.at:                                            ; preds = %bb.as
  %i.hc = icmp slt i32 %i.gz, 16
  br i1 %i.hc, label %bb.au, label %bb.ax

bb.au:                                            ; preds = %bb.at
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !24 ; 2 uses
  %.not9.i.i113 = icmp eq ptr %i.he, null
  br i1 %.not9.i.i113, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.hf = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.he, i64 noundef 64) #31
  br label %Vec_IntGrow.exit.i114

bb.aw:                                            ; preds = %bb.au
  %i.hg = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #29
  br label %Vec_IntGrow.exit.i114

Vec_IntGrow.exit.i114:                            ; preds = %bb.aw, %bb.av
  %i.hh = phi ptr [ %i.hf, %bb.av ], [ %i.hg, %bb.aw ]
  store ptr %i.hh, ptr %i.hd, align 8, !tbaa !24
  br label %Vec_IntGrow.exit11.sink.split.i111

bb.ax:                                            ; preds = %bb.at
  %i.hi = icmp samesign ult i32 %i.gz, 1073741823
  %i.hj = shl nuw nsw i32 %i.gz, 1
  %spec.select.i108 = select i1 %i.hi, i32 %i.hj, i32 2147483647 ; 3 uses
  %.not.i9.i109 = icmp samesign ult i32 %i.gz, %spec.select.i108
  br i1 %.not.i9.i109, label %bb.ay, label %Vec_IntPush.exit115

bb.ay:                                            ; preds = %bb.ax
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !24 ; 2 uses
  %.not9.i10.i110 = icmp eq ptr %i.hl, null
  %i.hm = zext nneg i32 %spec.select.i108 to i64
  %i.hn = shl nuw nsw i64 %i.hm, 2                ; 2 uses
  br i1 %.not9.i10.i110, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ho = tail call ptr @realloc(ptr noundef nonnull %i.hl, i64 noundef %i.hn) #31
  br label %bb.bb

bb.ba:                                            ; preds = %bb.ay
  %i.hp = tail call noalias ptr @malloc(i64 noundef %i.hn) #29
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.hq = phi ptr [ %i.ho, %bb.az ], [ %i.hp, %bb.ba ]
  store ptr %i.hq, ptr %i.hk, align 8, !tbaa !24
  br label %Vec_IntGrow.exit11.sink.split.i111

Vec_IntGrow.exit11.sink.split.i111:               ; preds = %bb.bb, %Vec_IntGrow.exit.i114
  %spec.select.sink.i112 = phi i32 [ %spec.select.i108, %bb.bb ], [ 16, %Vec_IntGrow.exit.i114 ]
  store i32 %spec.select.sink.i112, ptr %i.gx, align 8, !tbaa !25
  %.pre143 = load i32, ptr %i.gy, align 4, !tbaa !48
  br label %Vec_IntPush.exit115

Vec_IntPush.exit115:                              ; preds = %bb.as, %bb.ax, %Vec_IntGrow.exit11.sink.split.i111
  %i.hr = phi i32 [ %i.gz, %bb.as ], [ %i.gz, %bb.ax ], [ %.pre143, %Vec_IntGrow.exit11.sink.split.i111 ] ; 2 uses
  %i.hs = trunc i64 %.pre-phi146 to i32
  %i.ht = lshr i32 %i.hs, 4
  %i.hu = and i32 %i.ht, 63
  %i.hv = or i32 %i.gw, %i.hu                     ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !24
  %i.hy = add nsw i32 %i.hr, 1
  store i32 %i.hy, ptr %i.gy, align 4, !tbaa !48
  %i.hz = sext i32 %i.hr to i64
  %i.ia = getelementptr inbounds [4 x i8], ptr %i.hx, i64 %i.hz
  store i32 %i.hv, ptr %i.ia, align 4, !tbaa !47
  ret i32 %i.hv
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define i32 @Au_NtkCreateConst0(ptr noundef %0) local_unnamed_addr #12 {
bb.a:
  %i.a = tail call i32 @Au_NtkAllocObj(ptr noundef %0, i32 noundef 0, i32 noundef 1)
  ret i32 %i.a
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define i32 @Au_NtkCreatePi(ptr noundef %0) local_unnamed_addr #12 {
bb.a:
  %i.a = tail call i32 @Au_NtkAllocObj(ptr noundef %0, i32 noundef 0, i32 noundef 2)
  ret i32 %i.a
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define i32 @Au_NtkCreatePo(ptr noundef %0, i32 noundef %1) local_unnamed_addr #12 {
bb.a:
  %i.a = tail call i32 @Au_NtkAllocObj(ptr noundef %0, i32 noundef 1, i32 noundef 3) ; 3 uses
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 120
  %.val = load ptr, ptr %i.b, align 8, !tbaa !38
  %i.c = ashr i32 %i.a, 12
  %i.d = sext i32 %i.c to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %.val, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !31
  %i.g = and i32 %i.a, 4095
  %i.h = zext nneg i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i32 %1, ptr %i.j, align 4, !tbaa !47
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 %i.a
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define i32 @Au_NtkCreateFan(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #12 {
bb.a:
  %i.a = tail call i32 @Au_NtkAllocObj(ptr noundef %0, i32 noundef 1, i32 noundef 4) ; 3 uses
  %i.b = getelementptr i8, ptr %0, i64 120
  %.val = load ptr, ptr %i.b, align 8, !tbaa !38
  %i.c = ashr i32 %i.a, 12
  %i.d = sext i32 %i.c to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %.val, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !31
  %i.g = and i32 %i.a, 4095
  %i.h = zext nneg i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.h ; 4 uses
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i32 %1, ptr %i.j, align 4, !tbaa !47
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  store i32 %2, ptr %i.k, align 4, !tbaa !47
  %i.l = load i64, ptr %i.i, align 4
  %i.m = and i32 %3, 1073741823
  %i.n = zext nneg i32 %i.m to i64
  %i.o = and i64 %i.l, -1073741824
  %i.p = or disjoint i64 %i.o, %i.n
  store i64 %i.p, ptr %i.i, align 4
  ret i32 %i.a
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define i32 @Au_NtkCreateNode(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #12 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 4          ; 3 uses
  %.val14 = load i32, ptr %i.a, align 4, !tbaa !48
  %i.b = tail call i32 @Au_NtkAllocObj(ptr noundef %0, i32 noundef %.val14, i32 noundef 7) ; 3 uses
  %i.c = getelementptr i8, ptr %0, i64 120
  %.val16 = load ptr, ptr %i.c, align 8, !tbaa !38
  %i.d = ashr i32 %i.b, 12
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds [8 x i8], ptr %.val16, i64 %i.e
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !31
  %i.h = and i32 %i.b, 4095
  %i.i = zext nneg i32 %i.h to i64
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.i ; 3 uses
  %.val17 = load i32, ptr %i.a, align 4, !tbaa !48
  %i.k = icmp sgt i32 %.val17, 0
  br i1 %i.k, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.l = getelementptr i8, ptr %1, i64 8
  %.val15 = load ptr, ptr %i.l, align 8, !tbaa !24
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %.val15, i64 %indvars.iv
  %i.o = load i32, ptr %i.n, align 4, !tbaa !47
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv
  store i32 %i.o, ptr %i.p, align 4, !tbaa !47
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val = load i32, ptr %i.a, align 4, !tbaa !48
  %i.q = sext i32 %.val to i64
  %i.r = icmp slt i64 %indvars.iv.next, %i.q
  br i1 %i.r, label %bb.b, label %.critedge, !llvm.loop !102

.critedge:                                        ; preds = %bb.b, %bb.a
  %i.s = load i64, ptr %i.j, align 4
  %i.t = and i32 %2, 1073741823
end_hunk_0
