Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/wlcUif?download=true
inline.NumInlined: 119
inline.NumDeleted: 27
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@Wlc_NtkPairIsUifable:bb.a
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !15
  %i.da = sext i32 %i.cz to i64
  %i.db = getelementptr inbounds [24 x i8], ptr %.val.i, i64 %i.da ; 3 uses
  %i.dc = getelementptr i8, ptr %i.cw, i64 8
  %.val25 = load i32, ptr %i.dc, align 8, !tbaa !28
  %i.dd = getelementptr i8, ptr %i.cw, i64 12
  %.val26 = load i32, ptr %i.dd, align 4, !tbaa !29
  %i.de = sub nsw i32 %.val25, %.val26
  %i.df = tail call i32 @llvm.abs.i32(i32 %i.de, i1 true)
  %i.dg = getelementptr i8, ptr %i.db, i64 8
  %.val = load i32, ptr %i.dg, align 8, !tbaa !28
  %i.dh = getelementptr i8, ptr %i.db, i64 12
  %.val24 = load i32, ptr %i.dh, align 4, !tbaa !29
  %i.di = sub nsw i32 %.val, %.val24
  %i.dj = tail call i32 @llvm.abs.i32(i32 %i.di, i1 true)
  %.not22 = icmp eq i32 %i.df, %i.dj
  br i1 %.not22, label %bb.l, label %.loopexit

bb.l:                                             ; preds = %Wlc_ObjFanin.exit40
  %.val32 = load i16, ptr %i.cw, align 8
  %.val31 = load i16, ptr %i.db, align 8
  %i.dk = xor i16 %.val31, %.val32
  %i.dl = and i16 %i.dk, 64
  %.not23 = icmp eq i16 %i.dl, 0
  br i1 %.not23, label %bb.j, label %.loopexit

.loopexit:                                        ; preds = %bb.k, %bb.i, %Wlc_ObjFanin.exit40.us51, %bb.f, %bb.g, %Wlc_ObjFanin.exit40.us51.1, %Wlc_ObjFanin.exit40, %bb.l, %bb.j, %Wlc_ObjFanin.exit40.1, %Wlc_ObjFanin.exit40.us, %bb.e, %bb.d, %.preheader, %bb.c, %bb.b, %bb.a
  %.019 = phi i32 [ 0, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ], [ %spec.select, %bb.i ], [ 1, %.preheader ], [ 0, %Wlc_ObjFanin.exit40.us ], [ 0, %bb.e ], [ 1, %bb.d ], [ 0, %Wlc_ObjFanin.exit40 ], [ 1, %bb.j ], [ 0, %bb.l ], [ 0, %Wlc_ObjFanin.exit40.1 ], [ %spec.select119, %bb.k ], [ 0, %bb.f ], [ 1, %bb.g ], [ 0, %Wlc_ObjFanin.exit40.us51 ], [ 0, %Wlc_ObjFanin.exit40.us51.1 ]
  ret i32 %.019
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define noalias noundef ptr @Wlc_NtkCollectMultipliers(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #10 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  store i32 0, ptr %i.b, align 4, !tbaa !12
  store i32 100, ptr %i.a, align 8, !tbaa !13
  %i.c = tail call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #10 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.c, ptr %i.d, align 8, !tbaa !14
  %i.e = getelementptr i8, ptr %0, i64 648        ; 2 uses
  %.val1214 = load i32, ptr %i.e, align 8, !tbaa !25 ; 2 uses
  %i.f = icmp sgt i32 %.val1214, 1
  br i1 %i.f, label %.lr.ph, label %.critedge.thread

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 640
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.l
  %.val1217 = phi i32 [ %.val1214, %.lr.ph ], [ %.val12, %bb.l ]
  %i.h = phi ptr [ %i.c, %.lr.ph ], [ %i.af, %bb.l ] ; 3 uses
  %i.i = phi ptr [ %i.c, %.lr.ph ], [ %i.ag, %bb.l ] ; 5 uses
  %i.j = phi i32 [ 100, %.lr.ph ], [ %i.ah, %bb.l ] ; 8 uses
  %i.k = phi i32 [ 0, %.lr.ph ], [ %i.ai, %bb.l ] ; 4 uses
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.l ] ; 3 uses
  %.val13 = load ptr, ptr %i.g, align 8, !tbaa !26
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %.val13, i64 %indvars.iv
  %i.m = load i16, ptr %i.l, align 8
  %i.n = and i16 %i.m, 63
  %i.o = icmp eq i16 %i.n, 45
  br i1 %i.o, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b
  %i.p = icmp eq i32 %i.k, %i.j
  br i1 %i.p, label %bb.d, label %Vec_IntPush.exit

bb.d:                                             ; preds = %bb.c
  %i.q = icmp slt i32 %i.j, 16
  br i1 %i.q, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %.not9.i.i = icmp eq ptr %i.i, null
  br i1 %.not9.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.i, i64 noundef 64) #11
  br label %Vec_IntGrow.exit11.sink.split.i

bb.g:                                             ; preds = %bb.e
  %i.s = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #10
  br label %Vec_IntGrow.exit11.sink.split.i

bb.h:                                             ; preds = %bb.d
  %i.t = icmp samesign ult i32 %i.j, 1073741823
  %i.u = shl nuw nsw i32 %i.j, 1
  %spec.select.i = select i1 %i.t, i32 %i.u, i32 2147483647 ; 4 uses
  %.not.i9.i = icmp samesign ult i32 %i.j, %spec.select.i
  br i1 %.not.i9.i, label %bb.i, label %Vec_IntPush.exit

bb.i:                                             ; preds = %bb.h
  %.not9.i10.i = icmp eq ptr %i.i, null
  %i.v = zext nneg i32 %spec.select.i to i64
  %i.w = shl nuw nsw i64 %i.v, 2                  ; 2 uses
  br i1 %.not9.i10.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = tail call ptr @realloc(ptr noundef nonnull %i.i, i64 noundef %i.w) #11
  br label %Vec_IntGrow.exit11.sink.split.i

bb.k:                                             ; preds = %bb.i
  %i.y = tail call noalias ptr @malloc(i64 noundef %i.w) #10
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.j, %bb.k, %bb.f, %bb.g
  %storemerge = phi ptr [ %i.s, %bb.g ], [ %i.r, %bb.f ], [ %i.x, %bb.j ], [ %i.y, %bb.k ] ; 2 uses
  %spec.select.sink.i = phi i32 [ 16, %bb.g ], [ 16, %bb.f ], [ %spec.select.i, %bb.j ], [ %spec.select.i, %bb.k ] ; 2 uses
  store ptr %storemerge, ptr %i.d, align 8, !tbaa !14
  store i32 %spec.select.sink.i, ptr %i.a, align 8, !tbaa !13
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.c, %bb.h, %Vec_IntGrow.exit11.sink.split.i
  %i.z = phi ptr [ %i.h, %bb.c ], [ %i.h, %bb.h ], [ %storemerge, %Vec_IntGrow.exit11.sink.split.i ] ; 3 uses
  %i.aa = phi i32 [ %i.j, %bb.c ], [ %i.j, %bb.h ], [ %spec.select.sink.i, %Vec_IntGrow.exit11.sink.split.i ]
  %i.ab = add nsw i32 %i.k, 1                     ; 2 uses
  store i32 %i.ab, ptr %i.b, align 4, !tbaa !12
  %i.ac = sext i32 %i.k to i64
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.ac
  %i.ae = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.ae, ptr %i.ad, align 4, !tbaa !15
  %.val12.pre = load i32, ptr %i.e, align 8, !tbaa !25
  br label %bb.l

bb.l:                                             ; preds = %bb.b, %Vec_IntPush.exit
  %.val12 = phi i32 [ %.val1217, %bb.b ], [ %.val12.pre, %Vec_IntPush.exit ] ; 2 uses
  %i.af = phi ptr [ %i.h, %bb.b ], [ %i.z, %Vec_IntPush.exit ] ; 2 uses
  %i.ag = phi ptr [ %i.i, %bb.b ], [ %i.z, %Vec_IntPush.exit ]
  %i.ah = phi i32 [ %i.j, %bb.b ], [ %i.aa, %Vec_IntPush.exit ]
  %i.ai = phi i32 [ %i.k, %bb.b ], [ %i.ab, %Vec_IntPush.exit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aj = sext i32 %.val12 to i64
  %i.ak = icmp slt i64 %indvars.iv.next, %i.aj
  br i1 %i.ak, label %bb.b, label %.critedge, !llvm.loop !37

.critedge:                                        ; preds = %bb.l
  %i.al = icmp sgt i32 %i.ai, 0
  br i1 %i.al, label %bb.n, label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.a, %.critedge
  %i.am = phi ptr [ %i.af, %.critedge ], [ %i.c, %bb.a ] ; 2 uses
  %.not.i = icmp eq ptr %i.am, null
  br i1 %.not.i, label %Vec_IntFree.exit, label %bb.m

bb.m:                                             ; preds = %.critedge.thread
  tail call void @free(ptr noundef nonnull %i.am) #12
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %.critedge.thread, %bb.m
  tail call void @free(ptr noundef nonnull %i.a) #12
  br label %bb.n

bb.n:                                             ; preds = %.critedge, %Vec_IntFree.exit
  %.011 = phi ptr [ null, %Vec_IntFree.exit ], [ %i.a, %.critedge ]
  ret ptr %.011
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define noalias noundef ptr @Wlc_NtkFindUifableMultiplierPairs(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call ptr @Wlc_NtkCollectMultipliers(ptr noundef %0) ; 4 uses
  %i.b = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #10 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 3 uses
  store i32 0, ptr %i.c, align 4, !tbaa !12
  store i32 16, ptr %i.b, align 8, !tbaa !13
  %i.d = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #10 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store ptr %i.d, ptr %i.e, align 8, !tbaa !14
  %i.f = getelementptr i8, ptr %i.a, i64 4
  %.val33 = load i32, ptr %i.f, align 4, !tbaa !12 ; 2 uses
  %i.g = icmp sgt i32 %.val33, 0
  br i1 %i.g, label %.lr.ph61, label %.critedge

.lr.ph61:                                         ; preds = %bb.a
  %i.h = getelementptr i8, ptr %i.a, i64 8
  %.val35 = load ptr, ptr %i.h, align 8, !tbaa !14 ; 2 uses
  %i.i = getelementptr i8, ptr %0, i64 640        ; 3 uses
  %wide.trip.count70 = zext nneg i32 %.val33 to i64 ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph61, %.critedge2
  %i.j = phi ptr [ %i.d, %.lr.ph61 ], [ %i.fc, %.critedge2 ]
  %i.k = phi ptr [ %i.d, %.lr.ph61 ], [ %i.fd, %.critedge2 ]
  %i.l = phi i32 [ 16, %.lr.ph61 ], [ %i.fe, %.critedge2 ]
  %i.m = phi i32 [ 0, %.lr.ph61 ], [ %i.ff, %.critedge2 ]
  %indvars.iv67 = phi i64 [ 0, %.lr.ph61 ], [ %indvars.iv.next68, %.critedge2 ] ; 3 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %.val35, i64 %indvars.iv67
  %i.o = load i32, ptr %i.n, align 4, !tbaa !15
  %.val37 = load ptr, ptr %i.i, align 8, !tbaa !26
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr inbounds [24 x i8], ptr %.val37, i64 %i.p ; 7 uses
  %i.r = getelementptr i8, ptr %i.q, i64 8
  %i.s = getelementptr i8, ptr %i.q, i64 12
  %i.t = getelementptr i8, ptr %i.q, i64 4
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 3 uses
  %i.v = ptrtoint ptr %i.q to i64
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 20
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %Wlc_NtkPairIsUifable.exit.thread
  %i.x = phi ptr [ %i.j, %.lr.ph ], [ %4, %Wlc_NtkPairIsUifable.exit.thread ] ; 14 uses
  %i.y = phi ptr [ %i.k, %.lr.ph ], [ %5, %Wlc_NtkPairIsUifable.exit.thread ] ; 18 uses
  %i.z = phi i32 [ %i.l, %.lr.ph ], [ %6, %Wlc_NtkPairIsUifable.exit.thread ] ; 17 uses
  %i.aa = phi i32 [ %i.m, %.lr.ph ], [ %7, %Wlc_NtkPairIsUifable.exit.thread ] ; 18 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %Wlc_NtkPairIsUifable.exit.thread ] ; 3 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %.val35, i64 %indvars.iv
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !15
  %.val36 = load ptr, ptr %i.i, align 8, !tbaa !26 ; 10 uses
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds [24 x i8], ptr %.val36, i64 %i.ad ; 6 uses
  %i.af = icmp eq i64 %indvars.iv, %indvars.iv67
  br i1 %i.af, label %.critedge2, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val29.i = load i32, ptr %i.r, align 8, !tbaa !28
  %.val30.i = load i32, ptr %i.s, align 4, !tbaa !29
  %i.ag = sub nsw i32 %.val29.i, %.val30.i
  %i.ah = tail call i32 @llvm.abs.i32(i32 %i.ag, i1 true)
  %i.ai = getelementptr i8, ptr %i.ae, i64 8
  %.val27.i = load i32, ptr %i.ai, align 8, !tbaa !28
  %i.aj = getelementptr i8, ptr %i.ae, i64 12
  %.val28.i = load i32, ptr %i.aj, align 4, !tbaa !29
  %i.ak = sub nsw i32 %.val27.i, %.val28.i
  %i.al = tail call i32 @llvm.abs.i32(i32 %i.ak, i1 true)
  %.not.i = icmp eq i32 %i.ah, %i.al
  br i1 %.not.i, label %bb.d, label %Wlc_NtkPairIsUifable.exit.thread

bb.d:                                             ; preds = %bb.c
  %.val34.i = load i16, ptr %i.q, align 8         ; 2 uses
  %.val33.i = load i16, ptr %i.ae, align 8        ; 2 uses
  %i.am = xor i16 %.val33.i, %.val34.i
  %i.an = and i16 %i.am, 64
  %.not20.i = icmp eq i16 %i.an, 0
  br i1 %.not20.i, label %bb.e, label %Wlc_NtkPairIsUifable.exit.thread

bb.e:                                             ; preds = %bb.d
  %.val37.i = load i32, ptr %i.t, align 4, !tbaa !30 ; 6 uses
  %i.ao = getelementptr i8, ptr %i.ae, i64 4
  %.val36.i = load i32, ptr %i.ao, align 4, !tbaa !30
  %.not21.i = icmp eq i32 %.val37.i, %.val36.i
  br i1 %.not21.i, label %.preheader.i, label %Wlc_NtkPairIsUifable.exit.thread

.preheader.i:                                     ; preds = %bb.e
  %i.ap = icmp sgt i32 %.val37.i, 0
  br i1 %i.ap, label %.lr.ph.i, label %Wlc_NtkPairIsUifable.exit

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.aq = icmp samesign ugt i32 %.val37.i, 2
  %i.ar = and i16 %.val33.i, 63                   ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 7 uses
  br i1 %i.aq, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  %i.at = load ptr, ptr %i.u, align 8, !tbaa !31
  %wide.trip.count104.i = zext nneg i32 %.val37.i to i64
  %i.au = load ptr, ptr %i.as, align 8, !tbaa !31
  br label %Wlc_ObjFanin.exit40.us.i

bb.f:                                             ; preds = %bb.g
  %indvars.iv.next102.i = add nuw nsw i64 %indvars.iv101.i, 1 ; 2 uses
  %exitcond105.not.i = icmp eq i64 %indvars.iv.next102.i, %wide.trip.count104.i
  br i1 %exitcond105.not.i, label %Wlc_NtkPairIsUifable.exit, label %Wlc_ObjFanin.exit40.us.i, !llvm.loop !0

Wlc_ObjFanin.exit40.us.i:                         ; preds = %bb.f, %.lr.ph.split.us.i
  %indvars.iv101.i = phi i64 [ %indvars.iv.next102.i, %bb.f ], [ 0, %.lr.ph.split.us.i ] ; 3 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv101.i
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !15
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds [24 x i8], ptr %.val36, i64 %i.ax ; 3 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv101.i
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !15
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds [24 x i8], ptr %.val36, i64 %i.bb ; 3 uses
  %i.bd = getelementptr i8, ptr %i.ay, i64 8
  %.val25.us.i = load i32, ptr %i.bd, align 8, !tbaa !28
  %i.be = getelementptr i8, ptr %i.ay, i64 12
  %.val26.us.i = load i32, ptr %i.be, align 4, !tbaa !29
  %i.bf = sub nsw i32 %.val25.us.i, %.val26.us.i
  %i.bg = tail call i32 @llvm.abs.i32(i32 %i.bf, i1 true)
  %i.bh = getelementptr i8, ptr %i.bc, i64 8
  %.val.us.i = load i32, ptr %i.bh, align 8, !tbaa !28
  %i.bi = getelementptr i8, ptr %i.bc, i64 12
  %.val24.us.i = load i32, ptr %i.bi, align 4, !tbaa !29
  %i.bj = sub nsw i32 %.val.us.i, %.val24.us.i
  %i.bk = tail call i32 @llvm.abs.i32(i32 %i.bj, i1 true)
  %.not22.us.i = icmp eq i32 %i.bg, %i.bk
  br i1 %.not22.us.i, label %bb.g, label %Wlc_NtkPairIsUifable.exit.thread

bb.g:                                             ; preds = %Wlc_ObjFanin.exit40.us.i
  %.val32.us.i = load i16, ptr %i.ay, align 8
  %.val31.us.i = load i16, ptr %i.bc, align 8
  %i.bl = xor i16 %.val31.us.i, %.val32.us.i
  %i.bm = and i16 %i.bl, 64
  %.not23.us.i = icmp eq i16 %i.bm, 0
  br i1 %.not23.us.i, label %bb.f, label %Wlc_NtkPairIsUifable.exit.thread

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %i.bn = and i16 %.val34.i, 63
  switch i16 %i.bn, label %Wlc_ObjFanin.exit.i [
    i16 6, label %.lr.ph.split.split.us.i
    i16 22, label %.lr.ph.split.split.us.i
  ]

.lr.ph.split.split.us.i:                          ; preds = %.lr.ph.split.i, %.lr.ph.split.i
  %i.bo = load ptr, ptr %i.u, align 8, !tbaa !31
  %wide.trip.count.i = zext nneg i32 %.val37.i to i64
  br label %bb.h

bb.h:                                             ; preds = %3, %.lr.ph.split.split.us.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %3 ], [ 0, %.lr.ph.split.split.us.i ] ; 3 uses
  %1 = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv.i
  %i.bp = load i32, ptr %1, align 4, !tbaa !15
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr inbounds [24 x i8], ptr %.val36, i64 %i.bq ; 3 uses
  switch i16 %i.ar, label %Wlc_ObjFanin.exit40.us51.i.a [
    i16 6, label %Wlc_ObjHasArray.exit.thread.i.i.i38.us50.i.a
    i16 22, label %Wlc_ObjHasArray.exit.thread.i.i.i38.us50.i.a
  ]

Wlc_ObjHasArray.exit.thread.i.i.i38.us50.i.a:     ; preds = %bb.h, %bb.h
  %i.bs = load ptr, ptr %i.as, align 8, !tbaa !31
  br label %Wlc_ObjFanin.exit40.us51.i.a

Wlc_ObjFanin.exit40.us51.i.a:                     ; preds = %Wlc_ObjHasArray.exit.thread.i.i.i38.us50.i.a, %bb.h
  %i.bt = phi ptr [ %i.bs, %Wlc_ObjHasArray.exit.thread.i.i.i38.us50.i.a ], [ %i.as, %bb.h ]
  %2 = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv.i
  %i.bu = load i32, ptr %2, align 4, !tbaa !15
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr inbounds [24 x i8], ptr %.val36, i64 %i.bv ; 3 uses
  %i.bx = getelementptr i8, ptr %i.br, i64 8
  %.val25.us52.i.a = load i32, ptr %i.bx, align 8, !tbaa !28
  %i.by = getelementptr i8, ptr %i.br, i64 12
  %.val26.us53.i.a = load i32, ptr %i.by, align 4, !tbaa !29
  %i.bz = sub nsw i32 %.val25.us52.i.a, %.val26.us53.i.a
  %i.ca = tail call i32 @llvm.abs.i32(i32 %i.bz, i1 true)
  %i.cb = getelementptr i8, ptr %i.bw, i64 8
  %.val.us54.i.a = load i32, ptr %i.cb, align 8, !tbaa !28
  %i.cc = getelementptr i8, ptr %i.bw, i64 12
  %.val24.us55.i.a = load i32, ptr %i.cc, align 4, !tbaa !29
  %i.cd = sub nsw i32 %.val.us54.i.a, %.val24.us55.i.a
  %i.ce = tail call i32 @llvm.abs.i32(i32 %i.cd, i1 true)
  %.not22.us56.i.a = icmp eq i32 %i.ca, %i.ce
  br i1 %.not22.us56.i.a, label %bb.i, label %Wlc_NtkPairIsUifable.exit.thread

bb.i:                                             ; preds = %Wlc_ObjFanin.exit40.us51.i.a
  %.val32.us57.i.a = load i16, ptr %i.br, align 8
  %.val31.us58.i.a = load i16, ptr %i.bw, align 8
  %i.cf = xor i16 %.val31.us58.i.a, %.val32.us57.i.a
  %i.cg = and i16 %i.cf, 64
  %.not23.us59.i.a = icmp eq i16 %i.cg, 0
  br i1 %.not23.us59.i.a, label %3, label %Wlc_NtkPairIsUifable.exit.thread

3:                                                ; preds = %bb.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %Wlc_NtkPairIsUifable.exit, label %bb.h, !llvm.loop !0

bb.j:                                             ; preds = %bb.l
  %exitcond95.not.i = icmp eq i32 %.val37.i, 1
  br i1 %exitcond95.not.i, label %Wlc_NtkPairIsUifable.exit, label %Wlc_ObjFanin.exit.i.1

Wlc_ObjFanin.exit.i.1:                            ; preds = %bb.j
  %i.ch = load i32, ptr %i.w, align 4, !tbaa !15
  %i.ci = sext i32 %i.ch to i64
  %i.cj = getelementptr inbounds [24 x i8], ptr %.val36, i64 %i.ci ; 3 uses
  switch i16 %i.ar, label %Wlc_ObjFanin.exit40.i.1 [
    i16 6, label %Wlc_ObjHasArray.exit.thread.i.i.i38.i.1
    i16 22, label %Wlc_ObjHasArray.exit.thread.i.i.i38.i.1
  ]

Wlc_ObjHasArray.exit.thread.i.i.i38.i.1:          ; preds = %Wlc_ObjFanin.exit.i.1, %Wlc_ObjFanin.exit.i.1
  %i.ck = load ptr, ptr %i.as, align 8, !tbaa !31
  br label %Wlc_ObjFanin.exit40.i.1

Wlc_ObjFanin.exit40.i.1:                          ; preds = %Wlc_ObjHasArray.exit.thread.i.i.i38.i.1, %Wlc_ObjFanin.exit.i.1
  %i.cl = phi ptr [ %i.ck, %Wlc_ObjHasArray.exit.thread.i.i.i38.i.1 ], [ %i.as, %Wlc_ObjFanin.exit.i.1 ]
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !15
  %i.co = sext i32 %i.cn to i64
  %i.cp = getelementptr inbounds [24 x i8], ptr %.val36, i64 %i.co ; 3 uses
  %i.cq = getelementptr i8, ptr %i.cj, i64 8
  %.val25.i.1 = load i32, ptr %i.cq, align 8, !tbaa !28
  %i.cr = getelementptr i8, ptr %i.cj, i64 12
  %.val26.i.1 = load i32, ptr %i.cr, align 4, !tbaa !29
  %i.cs = sub nsw i32 %.val25.i.1, %.val26.i.1
  %i.ct = tail call i32 @llvm.abs.i32(i32 %i.cs, i1 true)
  %i.cu = getelementptr i8, ptr %i.cp, i64 8
  %.val.i.1 = load i32, ptr %i.cu, align 8, !tbaa !28
  %i.cv = getelementptr i8, ptr %i.cp, i64 12
  %.val24.i.1 = load i32, ptr %i.cv, align 4, !tbaa !29
  %i.cw = sub nsw i32 %.val.i.1, %.val24.i.1
  %i.cx = tail call i32 @llvm.abs.i32(i32 %i.cw, i1 true)
  %.not22.i.1 = icmp eq i32 %i.ct, %i.cx
  br i1 %.not22.i.1, label %bb.k, label %Wlc_NtkPairIsUifable.exit.thread

bb.k:                                             ; preds = %Wlc_ObjFanin.exit40.i.1
  %.val32.i.1 = load i16, ptr %i.cj, align 8
  %.val31.i.1 = load i16, ptr %i.cp, align 8
  %i.cy = xor i16 %.val31.i.1, %.val32.i.1
  %i.cz = and i16 %i.cy, 64
  %.not23.i.1 = icmp eq i16 %i.cz, 0
  br i1 %.not23.i.1, label %Wlc_NtkPairIsUifable.exit, label %Wlc_NtkPairIsUifable.exit.thread

Wlc_ObjFanin.exit.i:                              ; preds = %.lr.ph.split.i
  %i.da = load i32, ptr %i.u, align 8, !tbaa !15
  %i.db = sext i32 %i.da to i64
  %i.dc = getelementptr inbounds [24 x i8], ptr %.val36, i64 %i.db ; 3 uses
  switch i16 %i.ar, label %Wlc_ObjFanin.exit40.i [
    i16 6, label %Wlc_ObjHasArray.exit.thread.i.i.i38.i
    i16 22, label %Wlc_ObjHasArray.exit.thread.i.i.i38.i
  ]

Wlc_ObjHasArray.exit.thread.i.i.i38.i:            ; preds = %Wlc_ObjFanin.exit.i, %Wlc_ObjFanin.exit.i
  %i.dd = load ptr, ptr %i.as, align 8, !tbaa !31
  br label %Wlc_ObjFanin.exit40.i

Wlc_ObjFanin.exit40.i:                            ; preds = %Wlc_ObjHasArray.exit.thread.i.i.i38.i, %Wlc_ObjFanin.exit.i
  %i.de = phi ptr [ %i.dd, %Wlc_ObjHasArray.exit.thread.i.i.i38.i ], [ %i.as, %Wlc_ObjFanin.exit.i ]
  %i.df = load i32, ptr %i.de, align 4, !tbaa !15
  %i.dg = sext i32 %i.df to i64
  %i.dh = getelementptr inbounds [24 x i8], ptr %.val36, i64 %i.dg ; 3 uses
  %i.di = getelementptr i8, ptr %i.dc, i64 8
  %.val25.i = load i32, ptr %i.di, align 8, !tbaa !28
  %i.dj = getelementptr i8, ptr %i.dc, i64 12
  %.val26.i = load i32, ptr %i.dj, align 4, !tbaa !29
  %i.dk = sub nsw i32 %.val25.i, %.val26.i
  %i.dl = tail call i32 @llvm.abs.i32(i32 %i.dk, i1 true)
  %i.dm = getelementptr i8, ptr %i.dh, i64 8
  %.val.i = load i32, ptr %i.dm, align 8, !tbaa !28
  %i.dn = getelementptr i8, ptr %i.dh, i64 12
  %.val24.i = load i32, ptr %i.dn, align 4, !tbaa !29
  %i.do = sub nsw i32 %.val.i, %.val24.i
  %i.dp = tail call i32 @llvm.abs.i32(i32 %i.do, i1 true)
  %.not22.i = icmp eq i32 %i.dl, %i.dp
  br i1 %.not22.i, label %bb.l, label %Wlc_NtkPairIsUifable.exit.thread

bb.l:                                             ; preds = %Wlc_ObjFanin.exit40.i
  %.val32.i = load i16, ptr %i.dc, align 8
  %.val31.i = load i16, ptr %i.dh, align 8
  %i.dq = xor i16 %.val31.i, %.val32.i
  %i.dr = and i16 %i.dq, 64
  %.not23.i = icmp eq i16 %i.dr, 0
  br i1 %.not23.i, label %bb.j, label %Wlc_NtkPairIsUifable.exit.thread

Wlc_NtkPairIsUifable.exit:                        ; preds = %3, %bb.j, %bb.k, %bb.f, %.preheader.i
  %i.ds = ptrtoint ptr %.val36 to i64             ; 3 uses
  %i.dt = sub i64 %i.v, %i.ds
  %i.du = sdiv exact i64 %i.dt, 24
  %i.dv = trunc i64 %i.du to i32
  %i.dw = icmp eq i32 %i.aa, %i.z
  br i1 %i.dw, label %bb.m, label %Vec_IntPush.exit

bb.m:                                             ; preds = %Wlc_NtkPairIsUifable.exit
  %i.dx = icmp slt i32 %i.z, 16
  br i1 %i.dx, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %.not9.i.i = icmp eq ptr %i.y, null
  br i1 %.not9.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dy = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.y, i64 noundef 64) #11
  br label %Vec_IntGrow.exit11.sink.split.i

bb.p:                                             ; preds = %bb.n
  %i.dz = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #10
  br label %Vec_IntGrow.exit11.sink.split.i

bb.q:                                             ; preds = %bb.m
  %i.ea = icmp samesign ult i32 %i.z, 1073741823
  %i.eb = shl nuw nsw i32 %i.z, 1
  %spec.select.i = select i1 %i.ea, i32 %i.eb, i32 2147483647 ; 4 uses
  %.not.i9.i = icmp samesign ult i32 %i.z, %spec.select.i
  br i1 %.not.i9.i, label %bb.r, label %Vec_IntPush.exit

bb.r:                                             ; preds = %bb.q
  %.not9.i10.i = icmp eq ptr %i.y, null
  %i.ec = zext nneg i32 %spec.select.i to i64
  %i.ed = shl nuw nsw i64 %i.ec, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ee = tail call ptr @realloc(ptr noundef nonnull %i.y, i64 noundef %i.ed) #11
  br label %Vec_IntGrow.exit11.sink.split.i

bb.t:                                             ; preds = %bb.r
  %i.ef = tail call noalias ptr @malloc(i64 noundef %i.ed) #10
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.s, %bb.t, %bb.o, %bb.p
  %storemerge = phi ptr [ %i.dz, %bb.p ], [ %i.dy, %bb.o ], [ %i.ee, %bb.s ], [ %i.ef, %bb.t ] ; 3 uses
  %spec.select.sink.i = phi i32 [ 16, %bb.p ], [ 16, %bb.o ], [ %spec.select.i, %bb.s ], [ %spec.select.i, %bb.t ]
  store ptr %storemerge, ptr %i.e, align 8, !tbaa !14
  store i32 %spec.select.sink.i, ptr %i.b, align 8, !tbaa !13
  %.val38.pre = load ptr, ptr %i.i, align 8, !tbaa !26
  %.pre = ptrtoint ptr %.val38.pre to i64
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %Wlc_NtkPairIsUifable.exit, %bb.q, %Vec_IntGrow.exit11.sink.split.i
  %.pre-phi = phi i64 [ %i.ds, %Wlc_NtkPairIsUifable.exit ], [ %i.ds, %bb.q ], [ %.pre, %Vec_IntGrow.exit11.sink.split.i ]
  %i.eg = phi ptr [ %i.x, %Wlc_NtkPairIsUifable.exit ], [ %i.x, %bb.q ], [ %storemerge, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.eh = phi ptr [ %i.y, %Wlc_NtkPairIsUifable.exit ], [ %i.y, %bb.q ], [ %storemerge, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.ei = add nsw i32 %i.aa, 1                    ; 6 uses
  store i32 %i.ei, ptr %i.c, align 4, !tbaa !12
  %i.ej = sext i32 %i.aa to i64
  %i.ek = getelementptr inbounds [4 x i8], ptr %i.eh, i64 %i.ej
  store i32 %i.dv, ptr %i.ek, align 4, !tbaa !15
  %i.el = ptrtoint ptr %i.ae to i64
  %i.em = sub i64 %i.el, %.pre-phi
  %i.en = sdiv exact i64 %i.em, 24
  %i.eo = trunc i64 %i.en to i32
  %i.ep = load i32, ptr %i.b, align 8, !tbaa !13  ; 2 uses
  %i.eq = icmp eq i32 %i.ei, %i.ep
  br i1 %i.eq, label %bb.u, label %Vec_IntPush.exit47

bb.u:                                             ; preds = %Vec_IntPush.exit
  %i.er = icmp slt i32 %i.aa, 15
  br i1 %i.er, label %Vec_IntGrow.exit11.sink.split.i43, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.es = icmp samesign ult i32 %i.aa, 1073741822
  %i.et = shl nuw nsw i32 %i.ei, 1
  %spec.select.i40 = select i1 %i.es, i32 %i.et, i32 2147483647 ; 3 uses
  %.not.i9.i41 = icmp samesign ult i32 %i.ei, %spec.select.i40
  br i1 %.not.i9.i41, label %bb.w, label %Vec_IntPush.exit47

bb.w:                                             ; preds = %bb.v
  %i.eu = zext nneg i32 %spec.select.i40 to i64
  %i.ev = shl nuw nsw i64 %i.eu, 2
  br label %Vec_IntGrow.exit11.sink.split.i43

Vec_IntGrow.exit11.sink.split.i43:                ; preds = %bb.u, %bb.w
  %.sink = phi i64 [ %i.ev, %bb.w ], [ 64, %bb.u ]
  %spec.select.sink.i44 = phi i32 [ %spec.select.i40, %bb.w ], [ 16, %bb.u ] ; 2 uses
  %i.ew = tail call ptr @realloc(ptr noundef nonnull %i.eh, i64 noundef %.sink) #11 ; 2 uses
  store ptr %i.ew, ptr %i.e, align 8, !tbaa !14
  store i32 %spec.select.sink.i44, ptr %i.b, align 8, !tbaa !13
  br label %Vec_IntPush.exit47

Vec_IntPush.exit47:                               ; preds = %Vec_IntPush.exit, %bb.v, %Vec_IntGrow.exit11.sink.split.i43
  %i.ex = phi ptr [ %i.eg, %Vec_IntPush.exit ], [ %i.eg, %bb.v ], [ %i.ew, %Vec_IntGrow.exit11.sink.split.i43 ] ; 3 uses
  %i.ey = phi i32 [ %i.ep, %Vec_IntPush.exit ], [ %i.ei, %bb.v ], [ %spec.select.sink.i44, %Vec_IntGrow.exit11.sink.split.i43 ]
  %i.ez = add nsw i32 %i.aa, 2                    ; 2 uses
  store i32 %i.ez, ptr %i.c, align 4, !tbaa !12
  %i.fa = sext i32 %i.ei to i64
  %i.fb = getelementptr inbounds [4 x i8], ptr %i.ex, i64 %i.fa
  store i32 %i.eo, ptr %i.fb, align 4, !tbaa !15
  br label %Wlc_NtkPairIsUifable.exit.thread

Wlc_NtkPairIsUifable.exit.thread:                 ; preds = %Wlc_ObjFanin.exit40.us51.i.a, %bb.i, %Wlc_ObjFanin.exit40.i, %bb.l, %Wlc_ObjFanin.exit40.i.1, %bb.k, %bb.g, %Wlc_ObjFanin.exit40.us.i, %bb.d, %bb.c, %bb.e, %Vec_IntPush.exit47
  %4 = phi ptr [ %i.x, %Wlc_ObjFanin.exit40.i ], [ %i.x, %bb.g ], [ %i.ex, %Vec_IntPush.exit47 ], [ %i.x, %bb.d ], [ %i.x, %bb.c ], [ %i.x, %bb.e ], [ %i.x, %Wlc_ObjFanin.exit40.us.i ], [ %i.x, %bb.k ], [ %i.x, %Wlc_ObjFanin.exit40.i.1 ], [ %i.x, %bb.l ], [ %i.x, %bb.i ], [ %i.x, %Wlc_ObjFanin.exit40.us51.i.a ] ; 2 uses
  %5 = phi ptr [ %i.y, %Wlc_ObjFanin.exit40.i ], [ %i.y, %bb.g ], [ %i.ex, %Vec_IntPush.exit47 ], [ %i.y, %bb.d ], [ %i.y, %bb.c ], [ %i.y, %bb.e ], [ %i.y, %Wlc_ObjFanin.exit40.us.i ], [ %i.y, %bb.k ], [ %i.y, %Wlc_ObjFanin.exit40.i.1 ], [ %i.y, %bb.l ], [ %i.y, %bb.i ], [ %i.y, %Wlc_ObjFanin.exit40.us51.i.a ] ; 2 uses
  %6 = phi i32 [ %i.z, %Wlc_ObjFanin.exit40.i ], [ %i.z, %bb.g ], [ %i.ey, %Vec_IntPush.exit47 ], [ %i.z, %bb.d ], [ %i.z, %bb.c ], [ %i.z, %bb.e ], [ %i.z, %Wlc_ObjFanin.exit40.us.i ], [ %i.z, %bb.k ], [ %i.z, %Wlc_ObjFanin.exit40.i.1 ], [ %i.z, %bb.l ], [ %i.z, %bb.i ], [ %i.z, %Wlc_ObjFanin.exit40.us51.i.a ] ; 2 uses
  %7 = phi i32 [ %i.aa, %Wlc_ObjFanin.exit40.i ], [ %i.aa, %bb.g ], [ %i.ez, %Vec_IntPush.exit47 ], [ %i.aa, %bb.d ], [ %i.aa, %bb.c ], [ %i.aa, %bb.e ], [ %i.aa, %Wlc_ObjFanin.exit40.us.i ], [ %i.aa, %bb.k ], [ %i.aa, %Wlc_ObjFanin.exit40.i.1 ], [ %i.aa, %bb.l ], [ %i.aa, %bb.i ], [ %i.aa, %Wlc_ObjFanin.exit40.us51.i.a ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count70
  br i1 %exitcond.not, label %.critedge2, label %bb.b, !llvm.loop !38

.critedge2:                                       ; preds = %Wlc_NtkPairIsUifable.exit.thread, %bb.b
  %i.fc = phi ptr [ %4, %Wlc_NtkPairIsUifable.exit.thread ], [ %i.x, %bb.b ] ; 2 uses
  %i.fd = phi ptr [ %5, %Wlc_NtkPairIsUifable.exit.thread ], [ %i.y, %bb.b ]
  %i.fe = phi i32 [ %6, %Wlc_NtkPairIsUifable.exit.thread ], [ %i.z, %bb.b ]
  %i.ff = phi i32 [ %7, %Wlc_NtkPairIsUifable.exit.thread ], [ %i.aa, %bb.b ] ; 2 uses
  %indvars.iv.next68 = add nuw nsw i64 %indvars.iv67, 1 ; 2 uses
  %exitcond71.not = icmp eq i64 %indvars.iv.next68, %wide.trip.count70
  br i1 %exitcond71.not, label %.critedge.loopexit, label %.lr.ph, !llvm.loop !39

.critedge.loopexit:                               ; preds = %.critedge2
  %i.fg = icmp sgt i32 %i.ff, 0
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %bb.a
  %i.fh = phi ptr [ %i.fc, %.critedge.loopexit ], [ %i.d, %bb.a ] ; 2 uses
  %.val = phi i1 [ %i.fg, %.critedge.loopexit ], [ false, %bb.a ]
  %i.fi = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !14 ; 2 uses
  %.not.i48 = icmp eq ptr %i.fj, null
  br i1 %.not.i48, label %Vec_IntFree.exit, label %bb.x

bb.x:                                             ; preds = %.critedge
  tail call void @free(ptr noundef nonnull %i.fj) #12
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %.critedge, %bb.x
  tail call void @free(ptr noundef nonnull %i.a) #12
  br i1 %.val, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %Vec_IntFree.exit
  %.not.i49 = icmp eq ptr %i.fh, null
  br i1 %.not.i49, label %Vec_IntFree.exit50, label %bb.z

bb.z:                                             ; preds = %bb.y
  tail call void @free(ptr noundef nonnull %i.fh) #12
  br label %Vec_IntFree.exit50

Vec_IntFree.exit50:                               ; preds = %bb.y, %bb.z
  tail call void @free(ptr noundef nonnull %i.b) #12
  br label %bb.aa

bb.aa:                                            ; preds = %Vec_IntFree.exit, %Vec_IntFree.exit50
  %.031 = phi ptr [ null, %Vec_IntFree.exit50 ], [ %i.b, %Vec_IntFree.exit ]
  ret ptr %.031
}

; Function Attrs: nounwind uwtable
define ptr @Wlc_NtkAbstractNodes(ptr noundef %0, ptr noundef captures(address) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.b, label %.preheader65

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @Wlc_NtkCollectMultipliers(ptr noundef %0) ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.p, label %.preheader65

.preheader65:                                     ; preds = %bb.a, %bb.b
  %.04890 = phi ptr [ %i.b, %bb.b ], [ %1, %bb.a ] ; 5 uses
  %i.d = getelementptr i8, ptr %.04890, i64 4     ; 2 uses
  %.048.val66 = load i32, ptr %i.d, align 4, !tbaa !12
  %i.e = icmp sgt i32 %.048.val66, 0
  br i1 %i.e, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.preheader65
  %i.f = getelementptr i8, ptr %.04890, i64 8
  %i.g = getelementptr i8, ptr %0, i64 640
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %.048.val52 = load ptr, ptr %i.f, align 8, !tbaa !14
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %.048.val52, i64 %indvars.iv
  %i.i = load i32, ptr %i.h, align 4, !tbaa !15
  %.val55 = load ptr, ptr %i.g, align 8, !tbaa !26
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds [24 x i8], ptr %.val55, i64 %i.j ; 2 uses
  %i.l = load i16, ptr %i.k, align 8
  %i.m = or i16 %i.l, 128
  store i16 %i.m, ptr %i.k, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.048.val = load i32, ptr %i.d, align 4, !tbaa !12
  %i.n = sext i32 %.048.val to i64
  %i.o = icmp slt i64 %indvars.iv.next, %i.n
  br i1 %i.o, label %bb.c, label %.critedge, !llvm.loop !40

.critedge:                                        ; preds = %bb.c, %.preheader65
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 752 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 652
  %i.r = load i32, ptr %i.q, align 4, !tbaa !43   ; 6 uses
  %i.s = load i32, ptr %i.p, align 8, !tbaa !13
  %.not.i.i.i = icmp slt i32 %i.s, %i.r
  br i1 %.not.i.i.i, label %bb.d, label %Vec_IntGrow.exit.i.i

bb.d:                                             ; preds = %.critedge
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 760 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !14   ; 2 uses
  %.not9.i.i.i = icmp eq ptr %i.u, null
  %i.v = sext i32 %i.r to i64
  %i.w = shl nsw i64 %i.v, 2                      ; 2 uses
  br i1 %.not9.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = tail call ptr @realloc(ptr noundef nonnull %i.u, i64 noundef %i.w) #11
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.y = tail call noalias ptr @malloc(i64 noundef %i.w) #10
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.z = phi ptr [ %i.x, %bb.e ], [ %i.y, %bb.f ]
  store ptr %i.z, ptr %i.t, align 8, !tbaa !14
  store i32 %i.r, ptr %i.p, align 8, !tbaa !13
  br label %Vec_IntGrow.exit.i.i

Vec_IntGrow.exit.i.i:                             ; preds = %bb.g, %.critedge
  %i.aa = icmp sgt i32 %i.r, 0
  br i1 %i.aa, label %.lr.ph.i.i, label %Wlc_NtkCleanCopy.exit

.lr.ph.i.i:                                       ; preds = %Vec_IntGrow.exit.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 760
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !14
  %wide.trip.count.i.i = zext nneg i32 %i.r to i64
  %i.ad = shl nuw nsw i64 %wide.trip.count.i.i, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ac, i8 0, i64 %i.ad, i1 false), !tbaa !15
  br label %Wlc_NtkCleanCopy.exit

Wlc_NtkCleanCopy.exit:                            ; preds = %Vec_IntGrow.exit.i.i, %.lr.ph.i.i
  %i.ae = getelementptr i8, ptr %0, i64 756       ; 2 uses
  store i32 %i.r, ptr %i.ae, align 4, !tbaa !12
  %i.af = getelementptr i8, ptr %0, i64 640
  %i.ag = getelementptr i8, ptr %0, i64 648       ; 2 uses
  %.val5374 = load i32, ptr %i.ag, align 8, !tbaa !25
  %i.ah = icmp sgt i32 %.val5374, 1
  br i1 %i.ah, label %.lr.ph76, label %.critedge2

.lr.ph76:                                         ; preds = %Wlc_NtkCleanCopy.exit
  %i.ai = getelementptr i8, ptr %0, i64 760       ; 3 uses
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph76, %.critedge4
  %indvars.iv82 = phi i64 [ 1, %.lr.ph76 ], [ %indvars.iv.next83, %.critedge4 ] ; 5 uses
  %.val54 = load ptr, ptr %i.af, align 8, !tbaa !26
  %i.aj = getelementptr inbounds nuw [24 x i8], ptr %.val54, i64 %indvars.iv82 ; 7 uses
  %.val = load i32, ptr %i.ae, align 4, !tbaa !12
  %i.ak = zext i32 %.val to i64
  %i.al = icmp eq i64 %indvars.iv82, %i.ak
  br i1 %i.al, label %.critedge2, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.am = load i16, ptr %i.aj, align 8            ; 3 uses
  %i.an = and i16 %i.am, 128
  %.not = icmp eq i16 %i.an, 0
  br i1 %.not, label %.preheader, label %bb.j

.preheader:                                       ; preds = %bb.i
  %i.ao = getelementptr i8, ptr %i.aj, i64 4      ; 2 uses
  %.val5968 = load i32, ptr %i.ao, align 4, !tbaa !30 ; 2 uses
  %i.ap = icmp sgt i32 %.val5968, 0
  %i.aq = trunc nuw nsw i64 %indvars.iv82 to i32  ; 2 uses
  br i1 %i.ap, label %.lr.ph73, label %.critedge4

.lr.ph73:                                         ; preds = %.preheader
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 5 uses
  br label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.as = and i16 %i.am, -129
  store i16 %i.as, ptr %i.aj, align 8
  %i.at = lshr i16 %i.am, 6
  %i.au = and i16 %i.at, 1
  %i.av = zext nneg i16 %i.au to i32
  %i.aw = getelementptr i8, ptr %i.aj, i64 8
  %.val56 = load i32, ptr %i.aw, align 8, !tbaa !28
  %i.ax = getelementptr i8, ptr %i.aj, i64 12
  %.val57 = load i32, ptr %i.ax, align 4, !tbaa !29
  %i.ay = sub nsw i32 %.val56, %.val57
  %i.az = tail call i32 @llvm.abs.i32(i32 %i.ay, i1 true)
  %i.ba = tail call i32 @Wlc_ObjAlloc(ptr noundef nonnull %0, i32 noundef 1, i32 noundef %i.av, i32 noundef %i.az, i32 noundef 0) #12
  br label %.critedge4

bb.k:                                             ; preds = %.lr.ph73, %Wlc_ObjFanins.exit
  %indvars.iv79 = phi i64 [ 0, %.lr.ph73 ], [ %indvars.iv.next80, %Wlc_ObjFanins.exit ] ; 4 uses
  %.val5972 = phi i32 [ %.val5968, %.lr.ph73 ], [ %.val59, %Wlc_ObjFanins.exit ]
  %i.bb = icmp ugt i32 %.val5972, 2
  br i1 %i.bb, label %Wlc_ObjFaninId.exit.thread63, label %bb.l

Wlc_ObjFaninId.exit.thread63:                     ; preds = %bb.k
  %i.bc = load ptr, ptr %i.ar, align 8, !tbaa !31
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %indvars.iv79
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !15
  %.val6064 = load ptr, ptr %i.ai, align 8, !tbaa !14
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr inbounds [4 x i8], ptr %.val6064, i64 %i.bf
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !15
  br label %Wlc_ObjHasArray.exit.thread.i

bb.l:                                             ; preds = %bb.k
  %i.bi = load i16, ptr %i.aj, align 8
  %i.bj = and i16 %i.bi, 63                       ; 2 uses
  switch i16 %i.bj, label %Wlc_ObjFaninId.exit.thread [
    i16 6, label %Wlc_ObjFaninId.exit
    i16 22, label %Wlc_ObjFaninId.exit
  ]
end_hunk_0
