inline.NumInlined: 335
inline.NumDeleted: 77
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 25
begin_hunk_0_@Gia_ManAppendCi:bb.a
bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !88  ; 2 uses
  %.not9.i10.i = icmp eq ptr %i.aa, null
  %i.ab = zext nneg i32 %spec.select.i to i64
  %i.ac = shl nuw nsw i64 %i.ab, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = tail call ptr @realloc(ptr noundef nonnull %i.aa, i64 noundef %i.ac) #29
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ae = tail call noalias ptr @malloc(i64 noundef %i.ac) #28
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.af = phi ptr [ %i.ad, %bb.h ], [ %i.ae, %bb.i ]
  store ptr %i.af, ptr %i.z, align 8, !tbaa !88
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.j, %Vec_IntGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.j ], [ 16, %Vec_IntGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %i.l, align 8, !tbaa !87
  %.pre = load i32, ptr %i.n, align 4, !tbaa !85
  %.val10.pre = load ptr, ptr %i.m, align 8, !tbaa !86
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.a, %bb.f, %Vec_IntGrow.exit11.sink.split.i
  %.val10 = phi ptr [ %.val11, %bb.a ], [ %.val11, %bb.f ], [ %.val10.pre, %Vec_IntGrow.exit11.sink.split.i ]
  %i.ag = phi i32 [ %i.o, %bb.a ], [ %i.o, %bb.f ], [ %.pre, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.ah = ptrtoint ptr %i.a to i64                ; 2 uses
  %i.ai = ptrtoint ptr %.val11 to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = sdiv exact i64 %i.aj, 12
  %i.al = trunc i64 %i.ak to i32
  %i.am = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !88
  %i.ao = add nsw i32 %i.ag, 1
  store i32 %i.ao, ptr %i.n, align 4, !tbaa !85
  %i.ap = sext i32 %i.ag to i64
  %i.aq = getelementptr inbounds [4 x i8], ptr %i.an, i64 %i.ap
  store i32 %i.al, ptr %i.aq, align 4, !tbaa !24
  %i.ar = ptrtoint ptr %.val10 to i64
  %i.as = sub i64 %i.ah, %i.ar
  %i.at = sdiv exact i64 %i.as, 12
  %i.au = trunc i64 %i.at to i32
  %i.av = shl i32 %i.au, 1
  ret i32 %i.av
}

declare i32 @Gia_ManHashAnd(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

declare i32 @Gia_ManHashXor(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

declare i32 @Gia_ManHashMux(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc range(i32 0, -1) i32 @Gia_ManAppendCo(ptr noundef %0, i32 noundef %1) unnamed_addr #13 {
bb.a:
  %i.a = tail call fastcc ptr @Gia_ManAppendObj(ptr noundef %0) ; 8 uses
  %i.b = load i64, ptr %i.a, align 4
  %i.c = or i64 %i.b, 2147483648                  ; 2 uses
  store i64 %i.c, ptr %i.a, align 4
  %i.d = getelementptr i8, ptr %0, i64 32         ; 3 uses
  %.val20 = load ptr, ptr %i.d, align 8, !tbaa !86
  %i.e = ptrtoint ptr %i.a to i64                 ; 3 uses
  %i.f = ptrtoint ptr %.val20 to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 12
  %i.i = trunc i64 %i.h to i32
  %i.j = lshr i32 %1, 1
  %i.k = sub i32 %i.i, %i.j
  %i.l = and i32 %i.k, 536870911
  %i.m = zext nneg i32 %i.l to i64
  %i.n = and i64 %i.c, -1073741824
  %i.o = shl i32 %1, 29
  %i.p = and i32 %i.o, 536870912
  %i.q = zext nneg i32 %i.p to i64
  %i.r = or disjoint i64 %i.n, %i.q
  %i.s = or disjoint i64 %i.r, %i.m               ; 2 uses
  store i64 %i.s, ptr %i.a, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !89
  %i.v = getelementptr i8, ptr %i.u, i64 4
  %.val = load i32, ptr %i.v, align 4, !tbaa !85
  %i.w = and i32 %.val, 536870911
  %i.x = zext nneg i32 %i.w to i64
  %i.y = shl nuw nsw i64 %i.x, 32
  %i.z = and i64 %i.s, -2305843004918726657
  %i.aa = or disjoint i64 %i.z, %i.y
  store i64 %i.aa, ptr %i.a, align 4
  %i.ab = load ptr, ptr %i.t, align 8, !tbaa !89  ; 6 uses
  %.val19 = load ptr, ptr %i.d, align 8, !tbaa !86
  %i.ac = ptrtoint ptr %.val19 to i64
  %i.ad = sub i64 %i.e, %i.ac
  %i.ae = sdiv exact i64 %i.ad, 12
  %i.af = trunc i64 %i.ae to i32
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 4 ; 3 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !85 ; 7 uses
  %i.ai = load i32, ptr %i.ab, align 8, !tbaa !87
  %i.aj = icmp eq i32 %i.ah, %i.ai
  br i1 %i.aj, label %bb.b, label %Vec_IntPush.exit

bb.b:                                             ; preds = %bb.a
  %i.ak = icmp slt i32 %i.ah, 16
  br i1 %i.ak, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.al = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !88 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.am, null
  br i1 %.not9.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.an = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.am, i64 noundef 64) #29
  br label %Vec_IntGrow.exit.i

bb.e:                                             ; preds = %bb.c
  %i.ao = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #28
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.e, %bb.d
  %i.ap = phi ptr [ %i.an, %bb.d ], [ %i.ao, %bb.e ]
  store ptr %i.ap, ptr %i.al, align 8, !tbaa !88
  br label %Vec_IntGrow.exit11.sink.split.i

bb.f:                                             ; preds = %bb.b
  %i.aq = icmp samesign ult i32 %i.ah, 1073741823
  %i.ar = shl nuw nsw i32 %i.ah, 1
  %spec.select.i = select i1 %i.aq, i32 %i.ar, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %i.ah, %spec.select.i
  br i1 %.not.i9.i, label %bb.g, label %Vec_IntPush.exit

bb.g:                                             ; preds = %bb.f
  %i.as = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !88 ; 2 uses
  %.not9.i10.i = icmp eq ptr %i.at, null
  %i.au = zext nneg i32 %spec.select.i to i64
  %i.av = shl nuw nsw i64 %i.au, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aw = tail call ptr @realloc(ptr noundef nonnull %i.at, i64 noundef %i.av) #29
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ax = tail call noalias ptr @malloc(i64 noundef %i.av) #28
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ay = phi ptr [ %i.aw, %bb.h ], [ %i.ax, %bb.i ]
  store ptr %i.ay, ptr %i.as, align 8, !tbaa !88
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.j, %Vec_IntGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.j ], [ 16, %Vec_IntGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %i.ab, align 8, !tbaa !87
  %.pre = load i32, ptr %i.ag, align 4, !tbaa !85
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.a, %bb.f, %Vec_IntGrow.exit11.sink.split.i
  %i.az = phi i32 [ %i.ah, %bb.a ], [ %i.ah, %bb.f ], [ %.pre, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !88
  %i.bc = add nsw i32 %i.az, 1
  store i32 %i.bc, ptr %i.ag, align 4, !tbaa !85
  %i.bd = sext i32 %i.az to i64
  %i.be = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.bd
  store i32 %i.af, ptr %i.be, align 4, !tbaa !24
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !90
  %.not = icmp eq ptr %i.bg, null
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %Vec_IntPush.exit
  %i.bh = load i64, ptr %i.a, align 4
  %i.bi = and i64 %i.bh, 536870911
  %i.bj = sub nsw i64 0, %i.bi
  %i.bk = getelementptr inbounds [12 x i8], ptr %i.a, i64 %i.bj
  tail call void @Gia_ObjAddFanout(ptr noundef nonnull %0, ptr noundef nonnull %i.bk, ptr noundef nonnull %i.a) #26
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %Vec_IntPush.exit
  %.val18 = load ptr, ptr %i.d, align 8, !tbaa !86
  %i.bl = ptrtoint ptr %.val18 to i64
  %i.bm = sub i64 %i.e, %i.bl
  %i.bn = sdiv exact i64 %i.bm, 12
  %i.bo = trunc i64 %i.bn to i32
  %i.bp = shl i32 %i.bo, 1
  ret i32 %i.bp
}

declare ptr @Gia_ManCleanup(ptr noundef) local_unnamed_addr #9

declare void @Gia_ManStop(ptr noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define ptr @Ifn_ManStrFindCofactors(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #7 {
bb.a:
  %i.a = shl nuw nsw i32 1, %0
  %i.b = getelementptr i8, ptr %1, i64 24         ; 3 uses
  %.val66 = load i32, ptr %i.b, align 8, !tbaa !91
  %i.c = tail call ptr @Gia_ManStart(i32 noundef %.val66) #26 ; 11 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !58     ; 3 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %Abc_UtilStrsav.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.d) #30
  %i.f = add i64 %i.e, 1
  %i.g = tail call noalias ptr @malloc(i64 noundef %i.f) #28 ; 2 uses
  %i.h = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.g, ptr noundef nonnull readonly dereferenceable(1) %i.d) #26 ; 0 uses
  br label %Abc_UtilStrsav.exit

Abc_UtilStrsav.exit:                              ; preds = %bb.a, %bb.b
  %i.i = phi ptr [ %i.g, %bb.b ], [ null, %bb.a ]
  store ptr %i.i, ptr %i.c, align 8, !tbaa !58
  tail call void @Gia_ManHashAlloc(ptr noundef nonnull %i.c) #26
  %i.j = getelementptr i8, ptr %1, i64 32         ; 5 uses
  %.val67 = load ptr, ptr %i.j, align 8, !tbaa !86
  %i.k = getelementptr inbounds nuw i8, ptr %.val67, i64 8
  store i32 0, ptr %i.k, align 4, !tbaa !92
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !84   ; 2 uses
  %i.n = getelementptr i8, ptr %i.m, i64 4
  %.val6480 = load i32, ptr %i.n, align 4, !tbaa !85
  %i.o = icmp sgt i32 %.val6480, 0
  br i1 %i.o, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %Abc_UtilStrsav.exit
  %i.p = sext i32 %0 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %i.q = phi ptr [ %i.m, %.lr.ph.preheader ], [ %i.y, %bb.e ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %.val70 = load ptr, ptr %i.j, align 8, !tbaa !86 ; 2 uses
  %i.r = getelementptr i8, ptr %i.q, i64 8
  %.val71.val = load ptr, ptr %i.r, align 8, !tbaa !88
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %.val71.val, i64 %indvars.iv
  %i.t = load i32, ptr %i.s, align 4, !tbaa !24
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds [12 x i8], ptr %.val70, i64 %i.u
  %.not = icmp eq ptr %.val70, null
  br i1 %.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %.not63 = icmp slt i64 %indvars.iv, %i.p
  br i1 %.not63, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = tail call fastcc i32 @Gia_ManAppendCi(ptr noundef nonnull %i.c)
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i32 %i.w, ptr %i.x, align 4, !tbaa !92
  %.pre = load ptr, ptr %i.l, align 8, !tbaa !84
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.y = phi ptr [ %i.q, %bb.c ], [ %.pre, %bb.d ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.z = getelementptr i8, ptr %i.y, i64 4
  %.val64 = load i32, ptr %i.z, align 4, !tbaa !85
  %i.aa = sext i32 %.val64 to i64
  %i.ab = icmp slt i64 %indvars.iv.next, %i.aa
  br i1 %i.ab, label %.lr.ph, label %.critedge, !llvm.loop !94

.critedge:                                        ; preds = %.lr.ph, %bb.e, %Abc_UtilStrsav.exit
  %.not97 = icmp eq i32 %0, 31
  br i1 %.not97, label %._crit_edge, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.critedge
  %i.ac = getelementptr i8, ptr %1, i64 16        ; 2 uses
  %i.ad = getelementptr i8, ptr %1, i64 72        ; 2 uses
  %i.ae = getelementptr i8, ptr %i.c, i64 32      ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 72 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 232
  %i.ah = sext i32 %0 to i64                      ; 3 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.critedge6
  %.096 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.fz, %.critedge6 ] ; 4 uses
  %i.ai = load ptr, ptr %i.l, align 8, !tbaa !84  ; 2 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 4
  %.val = load i32, ptr %i.aj, align 4, !tbaa !85 ; 4 uses
  %i.ak = icmp sgt i32 %.val, 0
  br i1 %i.ak, label %.lr.ph84, label %.critedge2

.lr.ph84:                                         ; preds = %.preheader
  %.val68 = load ptr, ptr %i.j, align 8, !tbaa !86 ; 4 uses
  %i.al = getelementptr i8, ptr %i.ai, i64 8
  %.val69.val = load ptr, ptr %i.al, align 8, !tbaa !88 ; 3 uses
  %.not59 = icmp eq ptr %.val68, null
  br i1 %.not59, label %.critedge2, label %.lr.ph84.split.preheader

.lr.ph84.split.preheader:                         ; preds = %.lr.ph84
  %wide.trip.count = zext nneg i32 %.val to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.am = icmp eq i32 %.val, 1
  br i1 %i.am, label %.lr.ph84.split.epil.preheader, label %.lr.ph84.split.preheader.new

.lr.ph84.split.preheader.new:                     ; preds = %.lr.ph84.split.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph84.split

.lr.ph84.split:                                   ; preds = %bb.h, %.lr.ph84.split.preheader.new
  %indvars.iv99 = phi i64 [ 0, %.lr.ph84.split.preheader.new ], [ %indvars.iv.next100.1, %bb.h ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph84.split.preheader.new ], [ %niter.next.1, %bb.h ]
  %i.an = icmp slt i64 %indvars.iv99, %i.ah
  br i1 %i.an, label %bb.f, label %.lr.ph84.split.1

bb.f:                                             ; preds = %.lr.ph84.split
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %.val69.val, i64 %indvars.iv99
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !24
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds [12 x i8], ptr %.val68, i64 %i.aq
  %i.as = trunc nuw nsw i64 %indvars.iv99 to i32
  %i.at = lshr i32 %.096, %i.as
  %i.au = and i32 %i.at, 1
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store i32 %i.au, ptr %i.av, align 4, !tbaa !92
  br label %.lr.ph84.split.1

.lr.ph84.split.1:                                 ; preds = %.lr.ph84.split, %bb.f
  %indvars.iv.next100 = or disjoint i64 %indvars.iv99, 1 ; 3 uses
  %i.aw = icmp slt i64 %indvars.iv.next100, %i.ah
  br i1 %i.aw, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph84.split.1
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %.val69.val, i64 %indvars.iv.next100
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !24
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds [12 x i8], ptr %.val68, i64 %i.az
  %i.bb = trunc nuw nsw i64 %indvars.iv.next100 to i32
  %i.bc = lshr i32 %.096, %i.bb
  %i.bd = and i32 %i.bc, 1
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store i32 %i.bd, ptr %i.be, align 4, !tbaa !92
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph84.split.1
  %indvars.iv.next100.1 = add nuw nsw i64 %indvars.iv99, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.critedge2.loopexit.unr-lcssa, label %.lr.ph84.split, !llvm.loop !95

.critedge2.loopexit.unr-lcssa:                    ; preds = %bb.h
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.critedge2, label %.lr.ph84.split.epil.preheader

.lr.ph84.split.epil.preheader:                    ; preds = %.critedge2.loopexit.unr-lcssa, %.lr.ph84.split.preheader
  %indvars.iv99.epil.init = phi i64 [ 0, %.lr.ph84.split.preheader ], [ %indvars.iv.next100.1, %.critedge2.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod117 = trunc i32 %.val to i1
  tail call void @llvm.assume(i1 %lcmp.mod117)
  %i.bf = icmp slt i64 %indvars.iv99.epil.init, %i.ah
  br i1 %i.bf, label %bb.i, label %.critedge2

bb.i:                                             ; preds = %.lr.ph84.split.epil.preheader
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %.val69.val, i64 %indvars.iv99.epil.init
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !24
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr inbounds [12 x i8], ptr %.val68, i64 %i.bi
  %i.bk = trunc nuw nsw i64 %indvars.iv99.epil.init to i32
  %i.bl = lshr i32 %.096, %i.bk
  %i.bm = and i32 %i.bl, 1
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store i32 %i.bm, ptr %i.bn, align 4, !tbaa !92
  br label %.critedge2

.critedge2:                                       ; preds = %.critedge2.loopexit.unr-lcssa, %bb.i, %.lr.ph84.split.epil.preheader, %.lr.ph84, %.preheader
  %i.bo = load i32, ptr %i.b, align 8, !tbaa !91  ; 2 uses
  %i.bp = icmp sgt i32 %i.bo, 0
  br i1 %i.bp, label %.lr.ph87, label %.critedge4

.lr.ph87:                                         ; preds = %.critedge2, %bb.l
  %i.bq = phi i32 [ %i.cp, %bb.l ], [ %i.bo, %.critedge2 ]
  %indvars.iv102 = phi i64 [ %indvars.iv.next103, %bb.l ], [ 0, %.critedge2 ] ; 2 uses
  %.val65 = load ptr, ptr %i.j, align 8, !tbaa !86 ; 2 uses
  %i.br = getelementptr inbounds nuw [12 x i8], ptr %.val65, i64 %indvars.iv102 ; 4 uses
  %.not60 = icmp eq ptr %.val65, null
  br i1 %.not60, label %.critedge4, label %bb.j

bb.j:                                             ; preds = %.lr.ph87
  %.val72 = load i64, ptr %i.br, align 4          ; 5 uses
  %i.bs = and i64 %.val72, 2147483648
  %.not.i77 = icmp ne i64 %i.bs, 0
  %i.bt = and i64 %.val72, 536870911              ; 2 uses
  %i.bu = icmp eq i64 %i.bt, 536870911
  %narrow.i.not = or i1 %.not.i77, %i.bu
  br i1 %narrow.i.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bv = sub nsw i64 0, %i.bt
  %i.bw = getelementptr inbounds [12 x i8], ptr %i.br, i64 %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !92
  %i.bz = trunc i64 %.val72 to i32
  %i.ca = lshr i32 %i.bz, 29
  %i.cb = and i32 %i.ca, 1
  %i.cc = xor i32 %i.by, %i.cb
  %i.cd = lshr i64 %.val72, 32
  %i.ce = and i64 %i.cd, 536870911
  %i.cf = sub nsw i64 0, %i.ce
  %i.cg = getelementptr inbounds [12 x i8], ptr %i.br, i64 %i.cf
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !92
  %i.cj = lshr i64 %.val72, 61
  %i.ck = trunc nuw nsw i64 %i.cj to i32
  %i.cl = and i32 %i.ck, 1
  %i.cm = xor i32 %i.ci, %i.cl
  %i.cn = tail call i32 @Gia_ManHashAnd(ptr noundef nonnull %i.c, i32 noundef %i.cc, i32 noundef %i.cm) #26
  %i.co = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store i32 %i.cn, ptr %i.co, align 4, !tbaa !92
  %.pre109 = load i32, ptr %i.b, align 8, !tbaa !91
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.cp = phi i32 [ %.pre109, %bb.k ], [ %i.bq, %bb.j ] ; 2 uses
  %indvars.iv.next103 = add nuw nsw i64 %indvars.iv102, 1 ; 2 uses
  %i.cq = sext i32 %i.cp to i64
  %i.cr = icmp slt i64 %indvars.iv.next103, %i.cq
  br i1 %i.cr, label %.lr.ph87, label %.critedge4, !llvm.loop !96

.critedge4:                                       ; preds = %.lr.ph87, %bb.l, %.critedge2
  %.val7389 = load i32, ptr %i.ac, align 8, !tbaa !97
  %.val7490 = load ptr, ptr %i.ad, align 8, !tbaa !89 ; 2 uses
  %i.cs = getelementptr i8, ptr %.val7490, i64 4
  %.val74.val91 = load i32, ptr %i.cs, align 4, !tbaa !85
  %i.ct = icmp sgt i32 %.val74.val91, %.val7389
  br i1 %i.ct, label %.lr.ph94, label %.critedge6

.lr.ph94:                                         ; preds = %.critedge4, %Gia_ManAppendCo.exit
  %indvars.iv105 = phi i64 [ %indvars.iv.next106, %Gia_ManAppendCo.exit ], [ 0, %.critedge4 ] ; 2 uses
  %.val7493 = phi ptr [ %.val74, %Gia_ManAppendCo.exit ], [ %.val7490, %.critedge4 ]
  %.val75 = load ptr, ptr %i.j, align 8, !tbaa !86 ; 2 uses
  %i.cu = getelementptr i8, ptr %.val7493, i64 8
  %.val76.val = load ptr, ptr %i.cu, align 8, !tbaa !88
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %.val76.val, i64 %indvars.iv105
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !24
  %i.cx = sext i32 %i.cw to i64
  %i.cy = getelementptr inbounds [12 x i8], ptr %.val75, i64 %i.cx ; 3 uses
  %.not61 = icmp eq ptr %.val75, null
  br i1 %.not61, label %.critedge6, label %bb.m

bb.m:                                             ; preds = %.lr.ph94
  %i.cz = load i64, ptr %i.cy, align 4            ; 2 uses
  %i.da = and i64 %i.cz, 536870911
  %i.db = sub nsw i64 0, %i.da
  %i.dc = getelementptr inbounds [12 x i8], ptr %i.cy, i64 %i.db
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !92 ; 2 uses
  %i.df = trunc i64 %i.cz to i32
  %i.dg = tail call fastcc ptr @Gia_ManAppendObj(ptr noundef nonnull %i.c) ; 8 uses
  %i.dh = load i64, ptr %i.dg, align 4
  %i.di = or i64 %i.dh, 2147483648                ; 2 uses
  store i64 %i.di, ptr %i.dg, align 4
  %.val20.i = load ptr, ptr %i.ae, align 8, !tbaa !86
  %i.dj = ptrtoint ptr %i.dg to i64               ; 3 uses
  %i.dk = ptrtoint ptr %.val20.i to i64
  %i.dl = sub i64 %i.dj, %i.dk
  %i.dm = sdiv exact i64 %i.dl, 12
  %i.dn = trunc i64 %i.dm to i32
  %i.do = lshr i32 %i.de, 1
  %i.dp = sub i32 %i.dn, %i.do
  %i.dq = and i32 %i.dp, 536870911
  %i.dr = zext nneg i32 %i.dq to i64
  %i.ds = and i64 %i.di, -1073741824
  %i.dt = shl i32 %i.de, 29
  %i.du = xor i32 %i.dt, %i.df
  %i.dv = and i32 %i.du, 536870912
  %i.dw = zext nneg i32 %i.dv to i64
  %i.dx = or disjoint i64 %i.ds, %i.dw
  %i.dy = or disjoint i64 %i.dx, %i.dr            ; 2 uses
  store i64 %i.dy, ptr %i.dg, align 4
  %i.dz = load ptr, ptr %i.af, align 8, !tbaa !89
  %i.ea = getelementptr i8, ptr %i.dz, i64 4
  %.val.i = load i32, ptr %i.ea, align 4, !tbaa !85
  %i.eb = and i32 %.val.i, 536870911
  %i.ec = zext nneg i32 %i.eb to i64
  %i.ed = shl nuw nsw i64 %i.ec, 32
  %i.ee = and i64 %i.dy, -2305843004918726657
  %i.ef = or disjoint i64 %i.ee, %i.ed
  store i64 %i.ef, ptr %i.dg, align 4
  %i.eg = load ptr, ptr %i.af, align 8, !tbaa !89 ; 6 uses
  %.val19.i = load ptr, ptr %i.ae, align 8, !tbaa !86
  %i.eh = ptrtoint ptr %.val19.i to i64
  %i.ei = sub i64 %i.dj, %i.eh
  %i.ej = sdiv exact i64 %i.ei, 12
  %i.ek = trunc i64 %i.ej to i32
  %i.el = getelementptr inbounds nuw i8, ptr %i.eg, i64 4 ; 3 uses
  %i.em = load i32, ptr %i.el, align 4, !tbaa !85 ; 7 uses
  %i.en = load i32, ptr %i.eg, align 8, !tbaa !87
  %i.eo = icmp eq i32 %i.em, %i.en
  br i1 %i.eo, label %bb.n, label %Vec_IntPush.exit.i

bb.n:                                             ; preds = %bb.m
  %i.ep = icmp slt i32 %i.em, 16
  br i1 %i.ep, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eg, i64 8 ; 2 uses
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !88 ; 2 uses
  %.not9.i.i.i = icmp eq ptr %i.er, null
  br i1 %.not9.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.es = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.er, i64 noundef 64) #29
  br label %Vec_IntGrow.exit.i.i

bb.q:                                             ; preds = %bb.o
  %i.et = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #28
  br label %Vec_IntGrow.exit.i.i

Vec_IntGrow.exit.i.i:                             ; preds = %bb.q, %bb.p
  %i.eu = phi ptr [ %i.es, %bb.p ], [ %i.et, %bb.q ]
  store ptr %i.eu, ptr %i.eq, align 8, !tbaa !88
  br label %Vec_IntGrow.exit11.sink.split.i.i

bb.r:                                             ; preds = %bb.n
  %i.ev = icmp samesign ult i32 %i.em, 1073741823
  %i.ew = shl nuw nsw i32 %i.em, 1
  %spec.select.i.i = select i1 %i.ev, i32 %i.ew, i32 2147483647 ; 3 uses
  %.not.i9.i.i = icmp samesign ult i32 %i.em, %spec.select.i.i
  br i1 %.not.i9.i.i, label %bb.s, label %Vec_IntPush.exit.i

bb.s:                                             ; preds = %bb.r
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eg, i64 8 ; 2 uses
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !88 ; 2 uses
  %.not9.i10.i.i = icmp eq ptr %i.ey, null
  %i.ez = zext nneg i32 %spec.select.i.i to i64
  %i.fa = shl nuw nsw i64 %i.ez, 2                ; 2 uses
  br i1 %.not9.i10.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.fb = tail call ptr @realloc(ptr noundef nonnull %i.ey, i64 noundef %i.fa) #29
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.fc = tail call noalias ptr @malloc(i64 noundef %i.fa) #28
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.fd = phi ptr [ %i.fb, %bb.t ], [ %i.fc, %bb.u ]
  store ptr %i.fd, ptr %i.ex, align 8, !tbaa !88
  br label %Vec_IntGrow.exit11.sink.split.i.i

Vec_IntGrow.exit11.sink.split.i.i:                ; preds = %bb.v, %Vec_IntGrow.exit.i.i
  %spec.select.sink.i.i = phi i32 [ %spec.select.i.i, %bb.v ], [ 16, %Vec_IntGrow.exit.i.i ]
  store i32 %spec.select.sink.i.i, ptr %i.eg, align 8, !tbaa !87
  %.pre.i = load i32, ptr %i.el, align 4, !tbaa !85
  br label %Vec_IntPush.exit.i

Vec_IntPush.exit.i:                               ; preds = %Vec_IntGrow.exit11.sink.split.i.i, %bb.r, %bb.m
  %i.fe = phi i32 [ %i.em, %bb.m ], [ %i.em, %bb.r ], [ %.pre.i, %Vec_IntGrow.exit11.sink.split.i.i ] ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !88
  %i.fh = add nsw i32 %i.fe, 1
  store i32 %i.fh, ptr %i.el, align 4, !tbaa !85
  %i.fi = sext i32 %i.fe to i64
  %i.fj = getelementptr inbounds [4 x i8], ptr %i.fg, i64 %i.fi
  store i32 %i.ek, ptr %i.fj, align 4, !tbaa !24
  %i.fk = load ptr, ptr %i.ag, align 8, !tbaa !90
  %.not.i78 = icmp eq ptr %i.fk, null
  br i1 %.not.i78, label %Gia_ManAppendCo.exit, label %bb.w

bb.w:                                             ; preds = %Vec_IntPush.exit.i
  %i.fl = load i64, ptr %i.dg, align 4
  %i.fm = and i64 %i.fl, 536870911
  %i.fn = sub nsw i64 0, %i.fm
  %i.fo = getelementptr inbounds [12 x i8], ptr %i.dg, i64 %i.fn
  tail call void @Gia_ObjAddFanout(ptr noundef nonnull %i.c, ptr noundef nonnull %i.fo, ptr noundef nonnull %i.dg) #26
  br label %Gia_ManAppendCo.exit

Gia_ManAppendCo.exit:                             ; preds = %Vec_IntPush.exit.i, %bb.w
  %.val18.i = load ptr, ptr %i.ae, align 8, !tbaa !86
  %i.fp = ptrtoint ptr %.val18.i to i64
  %i.fq = sub i64 %i.dj, %i.fp
  %i.fr = sdiv exact i64 %i.fq, 12
  %i.fs = trunc i64 %i.fr to i32
  %i.ft = shl i32 %i.fs, 1
  %i.fu = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store i32 %i.ft, ptr %i.fu, align 4, !tbaa !92
  %indvars.iv.next106 = add nuw nsw i64 %indvars.iv105, 1 ; 2 uses
  %.val73 = load i32, ptr %i.ac, align 8, !tbaa !97
  %.val74 = load ptr, ptr %i.ad, align 8, !tbaa !89 ; 2 uses
  %i.fv = getelementptr i8, ptr %.val74, i64 4
  %.val74.val = load i32, ptr %i.fv, align 4, !tbaa !85
  %i.fw = sub nsw i32 %.val74.val, %.val73
  %i.fx = sext i32 %i.fw to i64
  %i.fy = icmp slt i64 %indvars.iv.next106, %i.fx
  br i1 %i.fy, label %.lr.ph94, label %.critedge6, !llvm.loop !98

.critedge6:                                       ; preds = %Gia_ManAppendCo.exit, %.lr.ph94, %.critedge4
  %i.fz = add nuw nsw i32 %.096, 1                ; 2 uses
  %exitcond108.not = icmp eq i32 %i.fz, %i.a
  br i1 %exitcond108.not, label %._crit_edge, label %.preheader, !llvm.loop !99

._crit_edge:                                      ; preds = %.critedge6, %.critedge
  %i.ga = tail call ptr @Gia_ManCleanup(ptr noundef nonnull %i.c) #26
  tail call void @Gia_ManStop(ptr noundef nonnull %i.c) #26
  ret ptr %i.ga
}

declare void @Gia_ManHashAlloc(ptr noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define noundef ptr @Ifn_ManStrFindSolver(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #7 {
bb.a:
  %i.a = tail call ptr @Gia_ManToAigSimple(ptr noundef %0) #26 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store i32 0, ptr %i.b, align 8, !tbaa !100
  %i.c = getelementptr i8, ptr %i.a, i64 140
  %.val.i = load i32, ptr %i.c, align 4, !tbaa !24
  %i.d = tail call ptr @Cnf_Derive(ptr noundef %i.a, i32 noundef %.val.i) #26 ; 6 uses
  tail call void @Aig_ManStop(ptr noundef %i.a) #26
  %i.e = tail call ptr @sat_solver_new() #26      ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !108
  tail call void @sat_solver_setnvars(ptr noundef %i.e, i32 noundef %i.g) #26
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !111
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !112  ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !113
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.next
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !113
  %i.q = tail call i32 @sat_solver_addclause(ptr noundef %i.e, ptr noundef %i.n, ptr noundef %i.p) #26 ; 0 uses
  %i.r = load i32, ptr %i.h, align 8, !tbaa !111
  %i.s = sext i32 %i.r to i64
  %i.t = icmp slt i64 %indvars.iv.next, %i.s
  br i1 %i.t, label %bb.b, label %._crit_edge, !llvm.loop !114

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.u = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %.val48 = load i32, ptr %i.u, align 8, !tbaa !97 ; 2 uses
  %i.v = getelementptr i8, ptr %0, i64 64         ; 3 uses
  %.val49 = load ptr, ptr %i.v, align 8, !tbaa !84
  %i.w = getelementptr i8, ptr %.val49, i64 4
  %.val49.val = load i32, ptr %i.w, align 4, !tbaa !85
  %i.x = sub nsw i32 %.val49.val, %.val48         ; 2 uses
  %i.y = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #28 ; 4 uses
  %i.z = add i32 %i.x, -1
  %or.cond.i = icmp ult i32 %i.z, 15
  %spec.store.select.i = select i1 %or.cond.i, i32 16, i32 %i.x ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  store i32 0, ptr %i.aa, align 4, !tbaa !85
  store i32 %spec.store.select.i, ptr %i.y, align 8, !tbaa !87
  %.not.i = icmp eq i32 %spec.store.select.i, 0
  br i1 %.not.i, label %Vec_IntAlloc.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.ab = sext i32 %spec.store.select.i to i64
  %i.ac = shl nsw i64 %i.ab, 2
  %i.ad = tail call noalias ptr @malloc(i64 noundef %i.ac) #28
  br label %Vec_IntAlloc.exit

Vec_IntAlloc.exit:                                ; preds = %._crit_edge, %bb.c
  %i.ae = phi ptr [ %i.ad, %bb.c ], [ null, %._crit_edge ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !88
  store ptr %i.y, ptr %1, align 8, !tbaa !115
  %i.ag = getelementptr i8, ptr %0, i64 32        ; 2 uses
  %i.ah = load ptr, ptr %i.v, align 8, !tbaa !84  ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 4
  %.val3963 = load i32, ptr %i.ai, align 4, !tbaa !85
  %i.aj = icmp sgt i32 %.val3963, 0
  br i1 %i.aj, label %.lr.ph65, label %.critedge

.lr.ph65:                                         ; preds = %Vec_IntAlloc.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph65, %Vec_IntPush.exit
  %i.al = phi ptr [ %i.ah, %.lr.ph65 ], [ %i.bn, %Vec_IntPush.exit ] ; 3 uses
  %indvars.iv72 = phi i64 [ 0, %.lr.ph65 ], [ %indvars.iv.next73, %Vec_IntPush.exit ] ; 2 uses
  %.val42 = load ptr, ptr %i.ag, align 8, !tbaa !86
  %.not = icmp eq ptr %.val42, null
  br i1 %.not, label %.critedge.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.am = getelementptr i8, ptr %i.al, i64 8
  %.val43.val = load ptr, ptr %i.am, align 8, !tbaa !88
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %.val43.val, i64 %indvars.iv72
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !24
  %i.ap = load ptr, ptr %1, align 8, !tbaa !115   ; 6 uses
  %i.aq = load ptr, ptr %i.ak, align 8, !tbaa !116
  %i.ar = sext i32 %i.ao to i64
  %i.as = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !24
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 4 ; 3 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !85 ; 7 uses
  %i.aw = load i32, ptr %i.ap, align 8, !tbaa !87
  %i.ax = icmp eq i32 %i.av, %i.aw
  br i1 %i.ax, label %bb.f, label %Vec_IntPush.exit

bb.f:                                             ; preds = %bb.e
  %i.ay = icmp slt i32 %i.av, 16
  br i1 %i.ay, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.az = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !88 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.ba, null
  br i1 %.not9.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bb = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.ba, i64 noundef 64) #29
  br label %Vec_IntGrow.exit.i

bb.i:                                             ; preds = %bb.g
  %i.bc = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #28
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.i, %bb.h
  %i.bd = phi ptr [ %i.bb, %bb.h ], [ %i.bc, %bb.i ]
  store ptr %i.bd, ptr %i.az, align 8, !tbaa !88
  br label %Vec_IntGrow.exit11.sink.split.i

bb.j:                                             ; preds = %bb.f
  %i.be = icmp samesign ult i32 %i.av, 1073741823
  %i.bf = shl nuw nsw i32 %i.av, 1
  %spec.select.i = select i1 %i.be, i32 %i.bf, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %i.av, %spec.select.i
  br i1 %.not.i9.i, label %bb.k, label %Vec_IntPush.exit

bb.k:                                             ; preds = %bb.j
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !88 ; 2 uses
  %.not9.i10.i = icmp eq ptr %i.bh, null
  %i.bi = zext nneg i32 %spec.select.i to i64
  %i.bj = shl nuw nsw i64 %i.bi, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bk = tail call ptr @realloc(ptr noundef nonnull %i.bh, i64 noundef %i.bj) #29
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.bl = tail call noalias ptr @malloc(i64 noundef %i.bj) #28
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bm = phi ptr [ %i.bk, %bb.l ], [ %i.bl, %bb.m ]
  store ptr %i.bm, ptr %i.bg, align 8, !tbaa !88
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.n, %Vec_IntGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.n ], [ 16, %Vec_IntGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %i.ap, align 8, !tbaa !87
  %.pre = load i32, ptr %i.au, align 4, !tbaa !85
  %.pre78 = load ptr, ptr %i.v, align 8, !tbaa !84
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.e, %bb.j, %Vec_IntGrow.exit11.sink.split.i
  %i.bn = phi ptr [ %i.al, %bb.e ], [ %i.al, %bb.j ], [ %.pre78, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.bo = phi i32 [ %i.av, %bb.e ], [ %i.av, %bb.j ], [ %.pre, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !88
  %i.br = add nsw i32 %i.bo, 1
  store i32 %i.br, ptr %i.au, align 4, !tbaa !85
  %i.bs = sext i32 %i.bo to i64
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.bq, i64 %i.bs
  store i32 %i.at, ptr %i.bt, align 4, !tbaa !24
  %indvars.iv.next73 = add nuw nsw i64 %indvars.iv72, 1 ; 2 uses
  %i.bu = getelementptr i8, ptr %i.bn, i64 4
  %.val39 = load i32, ptr %i.bu, align 4, !tbaa !85
  %i.bv = sext i32 %.val39 to i64
  %i.bw = icmp slt i64 %indvars.iv.next73, %i.bv
  br i1 %i.bw, label %bb.d, label %.critedge.loopexit, !llvm.loop !117

.critedge.loopexit:                               ; preds = %Vec_IntPush.exit, %bb.d
  %.val44.pre = load i32, ptr %i.u, align 8, !tbaa !97
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %Vec_IntAlloc.exit
  %.val44 = phi i32 [ %.val44.pre, %.critedge.loopexit ], [ %.val48, %Vec_IntAlloc.exit ]
  %i.bx = getelementptr i8, ptr %0, i64 72        ; 3 uses
  %.val45 = load ptr, ptr %i.bx, align 8, !tbaa !89
  %i.by = getelementptr i8, ptr %.val45, i64 4
  %.val45.val = load i32, ptr %i.by, align 4, !tbaa !85
  %i.bz = sub nsw i32 %.val45.val, %.val44        ; 2 uses
  %i.ca = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #28 ; 4 uses
  %i.cb = add i32 %i.bz, -1
  %or.cond.i50 = icmp ult i32 %i.cb, 15
  %spec.store.select.i51 = select i1 %or.cond.i50, i32 16, i32 %i.bz ; 3 uses
end_hunk_0
begin_hunk_1_@Ifn_NtkDeriveTruth:bb.a
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 16
  %wide.load305 = load <2 x i64>, ptr %i.hh, align 8, !tbaa !49, !alias.scope !196
  %wide.load306 = load <2 x i64>, ptr %i.hi, align 8, !tbaa !49, !alias.scope !196
  %i.hj = xor <2 x i64> %wide.load305, %wide.load303
  %i.hk = xor <2 x i64> %wide.load306, %wide.load304
  store <2 x i64> %i.hj, ptr %i.hf, align 8, !tbaa !49, !alias.scope !193, !noalias !196
  store <2 x i64> %i.hk, ptr %i.hg, align 8, !tbaa !49, !alias.scope !193, !noalias !196
  %index.next307 = add nuw i64 %index302, 4       ; 2 uses
  %i.hl = icmp eq i64 %index.next307, %n.vec300
  br i1 %i.hl, label %middle.block308, label %vector.body301, !llvm.loop !198

middle.block308:                                  ; preds = %vector.body301
  br i1 %cmp.n309, label %Abc_TtXor.exit.loopexit, label %.lr.ph22.i.preheader

.lr.ph22.i.preheader:                             ; preds = %vector.memcheck289, %.lr.ph22.preheader.i, %middle.block308
  %indvars.iv25.i.ph = phi i64 [ 0, %vector.memcheck289 ], [ 0, %.lr.ph22.preheader.i ], [ %n.vec300, %middle.block308 ] ; 3 uses
  br i1 %lcmp.mod422.not, label %.lr.ph22.i.prol.loopexit, label %.lr.ph22.i.prol

.lr.ph22.i.prol:                                  ; preds = %.lr.ph22.i.preheader, %.lr.ph22.i.prol
  %indvars.iv25.i.prol = phi i64 [ %indvars.iv.next26.i.prol, %.lr.ph22.i.prol ], [ %indvars.iv25.i.ph, %.lr.ph22.i.preheader ] ; 3 uses
  %prol.iter423 = phi i64 [ %prol.iter423.next, %.lr.ph22.i.prol ], [ 0, %.lr.ph22.i.preheader ]
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %indvars.iv25.i.prol ; 2 uses
  %i.hn = load i64, ptr %i.hm, align 8, !tbaa !49
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.hd, i64 %indvars.iv25.i.prol
  %i.hp = load i64, ptr %i.ho, align 8, !tbaa !49
  %i.hq = xor i64 %i.hp, %i.hn
  store i64 %i.hq, ptr %i.hm, align 8, !tbaa !49
  %indvars.iv.next26.i.prol = add nuw nsw i64 %indvars.iv25.i.prol, 1 ; 2 uses
  %prol.iter423.next = add i64 %prol.iter423, 1   ; 2 uses
  %prol.iter423.cmp.not = icmp eq i64 %prol.iter423.next, %xtraiter421
  br i1 %prol.iter423.cmp.not, label %.lr.ph22.i.prol.loopexit, label %.lr.ph22.i.prol, !llvm.loop !199

.lr.ph22.i.prol.loopexit:                         ; preds = %.lr.ph22.i.prol, %.lr.ph22.i.preheader
  %indvars.iv25.i.unr = phi i64 [ %indvars.iv25.i.ph, %.lr.ph22.i.preheader ], [ %indvars.iv.next26.i.prol, %.lr.ph22.i.prol ]
  %i.hr = sub nsw i64 %indvars.iv25.i.ph, %i.cb
  %i.hs = icmp ugt i64 %i.hr, -4
  br i1 %i.hs, label %Abc_TtXor.exit.loopexit, label %.lr.ph22.i

.lr.ph22.i:                                       ; preds = %.lr.ph22.i.prol.loopexit, %.lr.ph22.i
  %indvars.iv25.i = phi i64 [ %indvars.iv.next26.i.3, %.lr.ph22.i ], [ %indvars.iv25.i.unr, %.lr.ph22.i.prol.loopexit ] ; 6 uses
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %indvars.iv25.i ; 2 uses
  %i.hu = load i64, ptr %i.ht, align 8, !tbaa !49
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.hd, i64 %indvars.iv25.i
  %i.hw = load i64, ptr %i.hv, align 8, !tbaa !49
  %i.hx = xor i64 %i.hw, %i.hu
  store i64 %i.hx, ptr %i.ht, align 8, !tbaa !49
  %indvars.iv.next26.i = add nuw nsw i64 %indvars.iv25.i, 1 ; 2 uses
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %indvars.iv.next26.i ; 2 uses
  %i.hz = load i64, ptr %i.hy, align 8, !tbaa !49
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.hd, i64 %indvars.iv.next26.i
  %i.ib = load i64, ptr %i.ia, align 8, !tbaa !49
  %i.ic = xor i64 %i.ib, %i.hz
  store i64 %i.ic, ptr %i.hy, align 8, !tbaa !49
  %indvars.iv.next26.i.1 = add nuw nsw i64 %indvars.iv25.i, 2 ; 2 uses
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %indvars.iv.next26.i.1 ; 2 uses
  %i.ie = load i64, ptr %i.id, align 8, !tbaa !49
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.hd, i64 %indvars.iv.next26.i.1
  %i.ig = load i64, ptr %i.if, align 8, !tbaa !49
  %i.ih = xor i64 %i.ig, %i.ie
  store i64 %i.ih, ptr %i.id, align 8, !tbaa !49
  %indvars.iv.next26.i.2 = add nuw nsw i64 %indvars.iv25.i, 3 ; 2 uses
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %indvars.iv.next26.i.2 ; 2 uses
  %i.ij = load i64, ptr %i.ii, align 8, !tbaa !49
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.hd, i64 %indvars.iv.next26.i.2
  %i.il = load i64, ptr %i.ik, align 8, !tbaa !49
  %i.im = xor i64 %i.il, %i.ij
  store i64 %i.im, ptr %i.ii, align 8, !tbaa !49
  %indvars.iv.next26.i.3 = add nuw nsw i64 %indvars.iv25.i, 4 ; 2 uses
  %exitcond29.not.i.3 = icmp eq i64 %indvars.iv.next26.i.3, %i.cb
  br i1 %exitcond29.not.i.3, label %Abc_TtXor.exit.loopexit, label %.lr.ph22.i, !llvm.loop !200

Abc_TtXor.exit.loopexit:                          ; preds = %.lr.ph22.i.prol.loopexit, %.lr.ph22.i, %middle.block308
  %indvars.iv.next207 = add nuw nsw i64 %indvars.iv206, 1 ; 2 uses
  %exitcond210.not = icmp eq i64 %indvars.iv.next207, %wide.trip.count209
  br i1 %exitcond210.not, label %Abc_TtMux.exit, label %.lr.ph22.preheader.i, !llvm.loop !201

bb.e:                                             ; preds = %bb.b
  %i.in = load i32, ptr %i.fh, align 4, !tbaa !24
  %i.io = mul i32 %i.in, %i.bw
  %i.ip = sext i32 %i.io to i64                   ; 2 uses
  %i.iq = getelementptr inbounds [8 x i8], ptr %i.bu, i64 %i.ip ; 4 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  %i.is = load i32, ptr %i.ir, align 8, !tbaa !24
  %i.it = mul i32 %i.is, %i.bw
  %i.iu = sext i32 %i.it to i64                   ; 2 uses
  %i.iv = getelementptr inbounds [8 x i8], ptr %i.bu, i64 %i.iu ; 4 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.fd, i64 12
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !24
  %i.iy = mul i32 %i.ix, %i.bw
  %i.iz = sext i32 %i.iy to i64                   ; 2 uses
  %i.ja = getelementptr inbounds [8 x i8], ptr %i.bu, i64 %i.iz ; 4 uses
  br i1 %i.ca, label %.lr.ph.i123.preheader, label %Abc_TtMux.exit

.lr.ph.i123.preheader:                            ; preds = %bb.e
  br i1 %min.iters.check317, label %.lr.ph.i123.preheader400, label %vector.memcheck311

vector.memcheck311:                               ; preds = %.lr.ph.i123.preheader
  %i.jb = shl nsw i64 %i.ip, 3
  %i.jc = sub i64 %i.jb, %i.fa
  %diff.check312 = icmp ugt i64 %i.jc, -32
  %i.jd = shl nsw i64 %i.iu, 3
  %i.je = sub i64 %i.jd, %i.fa
  %diff.check313 = icmp ugt i64 %i.je, -32
  %conflict.rdx = or i1 %diff.check312, %diff.check313
  %i.jf = shl nsw i64 %i.iz, 3
  %i.jg = sub i64 %i.jf, %i.fa
  %diff.check314 = icmp ugt i64 %i.jg, -32
  %conflict.rdx315 = or i1 %conflict.rdx, %diff.check314
  br i1 %conflict.rdx315, label %.lr.ph.i123.preheader400, label %vector.body320

vector.body320:                                   ; preds = %vector.memcheck311, %vector.body320
  %index321 = phi i64 [ %index.next328, %vector.body320 ], [ 0, %vector.memcheck311 ] ; 5 uses
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %i.iq, i64 %index321 ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 16
  %wide.load322 = load <2 x i64>, ptr %i.jh, align 8, !tbaa !49 ; 2 uses
  %wide.load323 = load <2 x i64>, ptr %i.ji, align 8, !tbaa !49 ; 2 uses
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %i.iv, i64 %index321 ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 16
  %wide.load324 = load <2 x i64>, ptr %i.jj, align 8, !tbaa !49
  %wide.load325 = load <2 x i64>, ptr %i.jk, align 8, !tbaa !49
  %i.jl = and <2 x i64> %wide.load324, %wide.load322
  %i.jm = and <2 x i64> %wide.load325, %wide.load323
  %i.jn = xor <2 x i64> %wide.load322, splat (i64 -1)
  %i.jo = xor <2 x i64> %wide.load323, splat (i64 -1)
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %i.ja, i64 %index321 ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 16
  %wide.load326 = load <2 x i64>, ptr %i.jp, align 8, !tbaa !49
  %wide.load327 = load <2 x i64>, ptr %i.jq, align 8, !tbaa !49
  %i.jr = and <2 x i64> %wide.load326, %i.jn
  %i.js = and <2 x i64> %wide.load327, %i.jo
  %i.jt = or <2 x i64> %i.jr, %i.jl
  %i.ju = or <2 x i64> %i.js, %i.jm
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %index321 ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 16
  store <2 x i64> %i.jt, ptr %i.jv, align 8, !tbaa !49
  store <2 x i64> %i.ju, ptr %i.jw, align 8, !tbaa !49
  %index.next328 = add nuw i64 %index321, 4       ; 2 uses
  %i.jx = icmp eq i64 %index.next328, %n.vec319
  br i1 %i.jx, label %middle.block329, label %vector.body320, !llvm.loop !202

middle.block329:                                  ; preds = %vector.body320
  br i1 %cmp.n330, label %Abc_TtMux.exit, label %.lr.ph.i123.preheader400

.lr.ph.i123.preheader400:                         ; preds = %vector.memcheck311, %.lr.ph.i123.preheader, %middle.block329
  %indvars.iv.i124.ph = phi i64 [ 0, %vector.memcheck311 ], [ 0, %.lr.ph.i123.preheader ], [ %n.vec319, %middle.block329 ] ; 7 uses
  br i1 %lcmp.mod419.not, label %.lr.ph.i123.prol.loopexit, label %.lr.ph.i123.prol

.lr.ph.i123.prol:                                 ; preds = %.lr.ph.i123.preheader400
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %i.iq, i64 %indvars.iv.i124.ph
  %i.jz = load i64, ptr %i.jy, align 8, !tbaa !49 ; 2 uses
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %i.iv, i64 %indvars.iv.i124.ph
  %i.kb = load i64, ptr %i.ka, align 8, !tbaa !49
  %i.kc = and i64 %i.kb, %i.jz
  %i.kd = xor i64 %i.jz, -1
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr %i.ja, i64 %indvars.iv.i124.ph
  %i.kf = load i64, ptr %i.ke, align 8, !tbaa !49
  %i.kg = and i64 %i.kf, %i.kd
  %i.kh = or i64 %i.kg, %i.kc
  %i.ki = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %indvars.iv.i124.ph
  store i64 %i.kh, ptr %i.ki, align 8, !tbaa !49
  %indvars.iv.next.i125.prol = or disjoint i64 %indvars.iv.i124.ph, 1
  br label %.lr.ph.i123.prol.loopexit

.lr.ph.i123.prol.loopexit:                        ; preds = %.lr.ph.i123.prol, %.lr.ph.i123.preheader400
  %indvars.iv.i124.unr = phi i64 [ %indvars.iv.i124.ph, %.lr.ph.i123.preheader400 ], [ %indvars.iv.next.i125.prol, %.lr.ph.i123.prol ]
  %i.kj = icmp eq i64 %indvars.iv.i124.ph, %i.dx
  br i1 %i.kj, label %Abc_TtMux.exit, label %.lr.ph.i123

.lr.ph.i123:                                      ; preds = %.lr.ph.i123.prol.loopexit, %.lr.ph.i123
  %indvars.iv.i124 = phi i64 [ %indvars.iv.next.i125.1, %.lr.ph.i123 ], [ %indvars.iv.i124.unr, %.lr.ph.i123.prol.loopexit ] ; 6 uses
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %i.iq, i64 %indvars.iv.i124
  %i.kl = load i64, ptr %i.kk, align 8, !tbaa !49 ; 2 uses
  %i.km = getelementptr inbounds nuw [8 x i8], ptr %i.iv, i64 %indvars.iv.i124
  %i.kn = load i64, ptr %i.km, align 8, !tbaa !49
  %i.ko = and i64 %i.kn, %i.kl
  %i.kp = xor i64 %i.kl, -1
  %i.kq = getelementptr inbounds nuw [8 x i8], ptr %i.ja, i64 %indvars.iv.i124
  %i.kr = load i64, ptr %i.kq, align 8, !tbaa !49
  %i.ks = and i64 %i.kr, %i.kp
  %i.kt = or i64 %i.ks, %i.ko
  %i.ku = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %indvars.iv.i124
  store i64 %i.kt, ptr %i.ku, align 8, !tbaa !49
  %indvars.iv.next.i125 = add nuw nsw i64 %indvars.iv.i124, 1 ; 4 uses
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %i.iq, i64 %indvars.iv.next.i125
  %i.kw = load i64, ptr %i.kv, align 8, !tbaa !49 ; 2 uses
  %i.kx = getelementptr inbounds nuw [8 x i8], ptr %i.iv, i64 %indvars.iv.next.i125
  %i.ky = load i64, ptr %i.kx, align 8, !tbaa !49
  %i.kz = and i64 %i.ky, %i.kw
  %i.la = xor i64 %i.kw, -1
  %i.lb = getelementptr inbounds nuw [8 x i8], ptr %i.ja, i64 %indvars.iv.next.i125
  %i.lc = load i64, ptr %i.lb, align 8, !tbaa !49
  %i.ld = and i64 %i.lc, %i.la
  %i.le = or i64 %i.ld, %i.kz
  %i.lf = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %indvars.iv.next.i125
  store i64 %i.le, ptr %i.lf, align 8, !tbaa !49
  %indvars.iv.next.i125.1 = add nuw nsw i64 %indvars.iv.i124, 2 ; 2 uses
  %exitcond.not.i126.1 = icmp eq i64 %indvars.iv.next.i125.1, %i.cb
  br i1 %exitcond.not.i126.1, label %Abc_TtMux.exit, label %.lr.ph.i123, !llvm.loop !203

bb.f:                                             ; preds = %bb.b
  %i.lg = shl nuw nsw i32 1, %i.fg
  br i1 %i.ca, label %.lr.ph.preheader.i127, label %Abc_TtClear.exit128

.lr.ph.preheader.i127:                            ; preds = %bb.f
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.fj, i8 0, i64 %i.cc, i1 false), !tbaa !49
  br label %Abc_TtClear.exit128

Abc_TtClear.exit128:                              ; preds = %bb.f, %.lr.ph.preheader.i127
  %.not178 = icmp eq i32 %i.fg, 31
  br i1 %.not178, label %Abc_TtMux.exit, label %.lr.ph165

.lr.ph165:                                        ; preds = %Abc_TtClear.exit128
  %.not179 = icmp eq i32 %i.fg, 0
  %wide.trip.count203 = zext nneg i32 %i.fg to i64
  %bound0336 = icmp ult ptr %scevgep333, %scevgep335
  %bound1337 = icmp ult ptr %i.bz, %scevgep334
  %found.conflict338 = and i1 %bound0336, %bound1337
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph165, %Abc_TtOr.exit
  %.1104163 = phi i32 [ 0, %.lr.ph165 ], [ %i.pr, %Abc_TtOr.exit ] ; 3 uses
  %i.lh = load i32, ptr %i.fd, align 8
  %i.li = lshr i32 %i.lh, 8
  %i.lj = and i32 %i.li, 255
  %i.lk = add nuw nsw i32 %i.lj, %.1104163
  %i.ll = zext nneg i32 %i.lk to i64
  %i.lm = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ll
  %i.ln = load i32, ptr %i.lm, align 4, !tbaa !24
  %i.lo = icmp eq i32 %i.ln, 0
  br i1 %i.lo, label %Abc_TtOr.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  br i1 %i.ca, label %.lr.ph.preheader.i129, label %Abc_TtFill.exit130

.lr.ph.preheader.i129:                            ; preds = %bb.h
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.bz, i8 -1, i64 %i.cc, i1 false), !tbaa !49
  br label %Abc_TtFill.exit130

Abc_TtFill.exit130:                               ; preds = %bb.h, %.lr.ph.preheader.i129
  br i1 %.not179, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %Abc_TtFill.exit130, %Abc_TtAnd.exit137
  %indvars.iv200 = phi i64 [ %indvars.iv.next201, %Abc_TtAnd.exit137 ], [ 0, %Abc_TtFill.exit130 ] ; 3 uses
  %i.lp = trunc nuw nsw i64 %indvars.iv200 to i32
  %i.lq = shl nuw i32 1, %i.lp
  %i.lr = and i32 %i.lq, %.1104163
  %.not = icmp eq i32 %i.lr, 0
  %i.ls = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %indvars.iv200
  %i.lt = load i32, ptr %i.ls, align 4, !tbaa !24
  %i.lu = mul i32 %i.lt, %i.bw
  %i.lv = sext i32 %i.lu to i64                   ; 3 uses
  %i.lw = getelementptr [8 x i8], ptr %i.bu, i64 %i.lv ; 12 uses
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph
  br i1 %i.ca, label %.lr.ph.i133.preheader, label %Abc_TtAnd.exit137

.lr.ph.i133.preheader:                            ; preds = %bb.i
  br i1 %min.iters.check382, label %.lr.ph.i133.preheader396, label %vector.memcheck374

vector.memcheck374:                               ; preds = %.lr.ph.i133.preheader
  %i.lx = shl nsw i64 %i.lv, 3
  %scevgep377 = getelementptr i8, ptr %scevgep376, i64 %i.lx
  %bound0378 = icmp ult ptr %i.bz, %scevgep377
  %bound1379 = icmp ult ptr %i.lw, %scevgep375
  %found.conflict380 = and i1 %bound0378, %bound1379
  br i1 %found.conflict380, label %.lr.ph.i133.preheader396, label %vector.body385

vector.body385:                                   ; preds = %vector.memcheck374, %vector.body385
  %index386 = phi i64 [ %index.next391, %vector.body385 ], [ 0, %vector.memcheck374 ] ; 3 uses
  %i.ly = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %index386 ; 3 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 16 ; 2 uses
  %wide.load387 = load <2 x i64>, ptr %i.ly, align 8, !tbaa !49, !alias.scope !204, !noalias !207
  %wide.load388 = load <2 x i64>, ptr %i.lz, align 8, !tbaa !49, !alias.scope !204, !noalias !207
  %i.ma = getelementptr inbounds nuw [8 x i8], ptr %i.lw, i64 %index386 ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 16
  %wide.load389 = load <2 x i64>, ptr %i.ma, align 8, !tbaa !49, !alias.scope !207
  %wide.load390 = load <2 x i64>, ptr %i.mb, align 8, !tbaa !49, !alias.scope !207
  %i.mc = and <2 x i64> %wide.load389, %wide.load387
  %i.md = and <2 x i64> %wide.load390, %wide.load388
  store <2 x i64> %i.mc, ptr %i.ly, align 8, !tbaa !49, !alias.scope !204, !noalias !207
  store <2 x i64> %i.md, ptr %i.lz, align 8, !tbaa !49, !alias.scope !204, !noalias !207
  %index.next391 = add nuw i64 %index386, 4       ; 2 uses
  %i.me = icmp eq i64 %index.next391, %n.vec384
  br i1 %i.me, label %middle.block392, label %vector.body385, !llvm.loop !209

middle.block392:                                  ; preds = %vector.body385
  br i1 %cmp.n393, label %Abc_TtAnd.exit137, label %.lr.ph.i133.preheader396

.lr.ph.i133.preheader396:                         ; preds = %vector.memcheck374, %.lr.ph.i133.preheader, %middle.block392
  %indvars.iv.i134.ph = phi i64 [ 0, %vector.memcheck374 ], [ 0, %.lr.ph.i133.preheader ], [ %n.vec384, %middle.block392 ] ; 3 uses
  br i1 %lcmp.mod410.not, label %.lr.ph.i133.prol.loopexit, label %.lr.ph.i133.prol

.lr.ph.i133.prol:                                 ; preds = %.lr.ph.i133.preheader396, %.lr.ph.i133.prol
  %indvars.iv.i134.prol = phi i64 [ %indvars.iv.next.i135.prol, %.lr.ph.i133.prol ], [ %indvars.iv.i134.ph, %.lr.ph.i133.preheader396 ] ; 3 uses
  %prol.iter411 = phi i64 [ %prol.iter411.next, %.lr.ph.i133.prol ], [ 0, %.lr.ph.i133.preheader396 ]
  %i.mf = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %indvars.iv.i134.prol ; 2 uses
  %i.mg = load i64, ptr %i.mf, align 8, !tbaa !49
  %i.mh = getelementptr inbounds nuw [8 x i8], ptr %i.lw, i64 %indvars.iv.i134.prol
  %i.mi = load i64, ptr %i.mh, align 8, !tbaa !49
  %i.mj = and i64 %i.mi, %i.mg
  store i64 %i.mj, ptr %i.mf, align 8, !tbaa !49
  %indvars.iv.next.i135.prol = add nuw nsw i64 %indvars.iv.i134.prol, 1 ; 2 uses
  %prol.iter411.next = add i64 %prol.iter411, 1   ; 2 uses
  %prol.iter411.cmp.not = icmp eq i64 %prol.iter411.next, %xtraiter409
  br i1 %prol.iter411.cmp.not, label %.lr.ph.i133.prol.loopexit, label %.lr.ph.i133.prol, !llvm.loop !210

.lr.ph.i133.prol.loopexit:                        ; preds = %.lr.ph.i133.prol, %.lr.ph.i133.preheader396
  %indvars.iv.i134.unr = phi i64 [ %indvars.iv.i134.ph, %.lr.ph.i133.preheader396 ], [ %indvars.iv.next.i135.prol, %.lr.ph.i133.prol ]
  %i.mk = sub nsw i64 %indvars.iv.i134.ph, %i.cb
  %i.ml = icmp ugt i64 %i.mk, -4
  br i1 %i.ml, label %Abc_TtAnd.exit137, label %.lr.ph.i133

.lr.ph.i133:                                      ; preds = %.lr.ph.i133.prol.loopexit, %.lr.ph.i133
  %indvars.iv.i134 = phi i64 [ %indvars.iv.next.i135.3, %.lr.ph.i133 ], [ %indvars.iv.i134.unr, %.lr.ph.i133.prol.loopexit ] ; 6 uses
  %i.mm = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %indvars.iv.i134 ; 2 uses
  %i.mn = load i64, ptr %i.mm, align 8, !tbaa !49
  %i.mo = getelementptr inbounds nuw [8 x i8], ptr %i.lw, i64 %indvars.iv.i134
  %i.mp = load i64, ptr %i.mo, align 8, !tbaa !49
  %i.mq = and i64 %i.mp, %i.mn
  store i64 %i.mq, ptr %i.mm, align 8, !tbaa !49
  %indvars.iv.next.i135 = add nuw nsw i64 %indvars.iv.i134, 1 ; 2 uses
  %i.mr = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %indvars.iv.next.i135 ; 2 uses
  %i.ms = load i64, ptr %i.mr, align 8, !tbaa !49
  %i.mt = getelementptr inbounds nuw [8 x i8], ptr %i.lw, i64 %indvars.iv.next.i135
  %i.mu = load i64, ptr %i.mt, align 8, !tbaa !49
  %i.mv = and i64 %i.mu, %i.ms
  store i64 %i.mv, ptr %i.mr, align 8, !tbaa !49
  %indvars.iv.next.i135.1 = add nuw nsw i64 %indvars.iv.i134, 2 ; 2 uses
  %i.mw = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %indvars.iv.next.i135.1 ; 2 uses
  %i.mx = load i64, ptr %i.mw, align 8, !tbaa !49
  %i.my = getelementptr inbounds nuw [8 x i8], ptr %i.lw, i64 %indvars.iv.next.i135.1
  %i.mz = load i64, ptr %i.my, align 8, !tbaa !49
  %i.na = and i64 %i.mz, %i.mx
  store i64 %i.na, ptr %i.mw, align 8, !tbaa !49
  %indvars.iv.next.i135.2 = add nuw nsw i64 %indvars.iv.i134, 3 ; 2 uses
  %i.nb = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %indvars.iv.next.i135.2 ; 2 uses
  %i.nc = load i64, ptr %i.nb, align 8, !tbaa !49
  %i.nd = getelementptr inbounds nuw [8 x i8], ptr %i.lw, i64 %indvars.iv.next.i135.2
  %i.ne = load i64, ptr %i.nd, align 8, !tbaa !49
  %i.nf = and i64 %i.ne, %i.nc
  store i64 %i.nf, ptr %i.nb, align 8, !tbaa !49
  %indvars.iv.next.i135.3 = add nuw nsw i64 %indvars.iv.i134, 4 ; 2 uses
  %exitcond.not.i136.3 = icmp eq i64 %indvars.iv.next.i135.3, %i.cb
  br i1 %exitcond.not.i136.3, label %Abc_TtAnd.exit137, label %.lr.ph.i133, !llvm.loop !211

bb.j:                                             ; preds = %.lr.ph
  br i1 %i.ca, label %.lr.ph.i140.preheader, label %Abc_TtAnd.exit137

.lr.ph.i140.preheader:                            ; preds = %bb.j
  br i1 %min.iters.check361, label %.lr.ph.i140.preheader395, label %vector.memcheck353

vector.memcheck353:                               ; preds = %.lr.ph.i140.preheader
  %i.ng = shl nsw i64 %i.lv, 3
  %scevgep356 = getelementptr i8, ptr %scevgep355, i64 %i.ng
  %bound0357 = icmp ult ptr %i.bz, %scevgep356
  %bound1358 = icmp ult ptr %i.lw, %scevgep354
  %found.conflict359 = and i1 %bound0357, %bound1358
  br i1 %found.conflict359, label %.lr.ph.i140.preheader395, label %vector.body364

vector.body364:                                   ; preds = %vector.memcheck353, %vector.body364
  %index365 = phi i64 [ %index.next370, %vector.body364 ], [ 0, %vector.memcheck353 ] ; 3 uses
  %i.nh = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %index365 ; 3 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 16 ; 2 uses
  %wide.load366 = load <2 x i64>, ptr %i.nh, align 8, !tbaa !49, !alias.scope !212, !noalias !215
  %wide.load367 = load <2 x i64>, ptr %i.ni, align 8, !tbaa !49, !alias.scope !212, !noalias !215
  %i.nj = getelementptr inbounds nuw [8 x i8], ptr %i.lw, i64 %index365 ; 2 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 16
  %wide.load368 = load <2 x i64>, ptr %i.nj, align 8, !tbaa !49, !alias.scope !215
  %wide.load369 = load <2 x i64>, ptr %i.nk, align 8, !tbaa !49, !alias.scope !215
  %i.nl = xor <2 x i64> %wide.load368, splat (i64 -1)
  %i.nm = xor <2 x i64> %wide.load369, splat (i64 -1)
  %i.nn = and <2 x i64> %wide.load366, %i.nl
  %i.no = and <2 x i64> %wide.load367, %i.nm
  store <2 x i64> %i.nn, ptr %i.nh, align 8, !tbaa !49, !alias.scope !212, !noalias !215
  store <2 x i64> %i.no, ptr %i.ni, align 8, !tbaa !49, !alias.scope !212, !noalias !215
  %index.next370 = add nuw i64 %index365, 4       ; 2 uses
  %i.np = icmp eq i64 %index.next370, %n.vec363
  br i1 %i.np, label %middle.block371, label %vector.body364, !llvm.loop !217

middle.block371:                                  ; preds = %vector.body364
  br i1 %cmp.n372, label %Abc_TtAnd.exit137, label %.lr.ph.i140.preheader395

.lr.ph.i140.preheader395:                         ; preds = %vector.memcheck353, %.lr.ph.i140.preheader, %middle.block371
  %indvars.iv.i141.ph = phi i64 [ 0, %vector.memcheck353 ], [ 0, %.lr.ph.i140.preheader ], [ %n.vec363, %middle.block371 ] ; 5 uses
  br i1 %lcmp.mod413.not, label %.lr.ph.i140.prol.loopexit, label %.lr.ph.i140.prol

.lr.ph.i140.prol:                                 ; preds = %.lr.ph.i140.preheader395
  %i.nq = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %indvars.iv.i141.ph ; 2 uses
  %i.nr = load i64, ptr %i.nq, align 8, !tbaa !49
  %i.ns = getelementptr inbounds nuw [8 x i8], ptr %i.lw, i64 %indvars.iv.i141.ph
  %i.nt = load i64, ptr %i.ns, align 8, !tbaa !49
  %i.nu = xor i64 %i.nt, -1
  %i.nv = and i64 %i.nr, %i.nu
  store i64 %i.nv, ptr %i.nq, align 8, !tbaa !49
  %indvars.iv.next.i142.prol = or disjoint i64 %indvars.iv.i141.ph, 1
  br label %.lr.ph.i140.prol.loopexit

.lr.ph.i140.prol.loopexit:                        ; preds = %.lr.ph.i140.prol, %.lr.ph.i140.preheader395
  %indvars.iv.i141.unr = phi i64 [ %indvars.iv.i141.ph, %.lr.ph.i140.preheader395 ], [ %indvars.iv.next.i142.prol, %.lr.ph.i140.prol ]
  %i.nw = icmp eq i64 %indvars.iv.i141.ph, %i.dw
  br i1 %i.nw, label %Abc_TtAnd.exit137, label %.lr.ph.i140

.lr.ph.i140:                                      ; preds = %.lr.ph.i140.prol.loopexit, %.lr.ph.i140
  %indvars.iv.i141 = phi i64 [ %indvars.iv.next.i142.1, %.lr.ph.i140 ], [ %indvars.iv.i141.unr, %.lr.ph.i140.prol.loopexit ] ; 4 uses
  %i.nx = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %indvars.iv.i141 ; 2 uses
  %i.ny = load i64, ptr %i.nx, align 8, !tbaa !49
  %i.nz = getelementptr inbounds nuw [8 x i8], ptr %i.lw, i64 %indvars.iv.i141
  %i.oa = load i64, ptr %i.nz, align 8, !tbaa !49
  %i.ob = xor i64 %i.oa, -1
  %i.oc = and i64 %i.ny, %i.ob
  store i64 %i.oc, ptr %i.nx, align 8, !tbaa !49
  %indvars.iv.next.i142 = add nuw nsw i64 %indvars.iv.i141, 1 ; 2 uses
  %i.od = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %indvars.iv.next.i142 ; 2 uses
  %i.oe = load i64, ptr %i.od, align 8, !tbaa !49
  %i.of = getelementptr inbounds nuw [8 x i8], ptr %i.lw, i64 %indvars.iv.next.i142
  %i.og = load i64, ptr %i.of, align 8, !tbaa !49
  %i.oh = xor i64 %i.og, -1
  %i.oi = and i64 %i.oe, %i.oh
  store i64 %i.oi, ptr %i.od, align 8, !tbaa !49
  %indvars.iv.next.i142.1 = add nuw nsw i64 %indvars.iv.i141, 2 ; 2 uses
  %exitcond.not.i143.1 = icmp eq i64 %indvars.iv.next.i142.1, %i.cb
  br i1 %exitcond.not.i143.1, label %Abc_TtAnd.exit137, label %.lr.ph.i140, !llvm.loop !218

Abc_TtAnd.exit137:                                ; preds = %.lr.ph.i133.prol.loopexit, %.lr.ph.i133, %.lr.ph.i140.prol.loopexit, %.lr.ph.i140, %middle.block392, %middle.block371, %bb.j, %bb.i
  %indvars.iv.next201 = add nuw nsw i64 %indvars.iv200, 1 ; 2 uses
  %exitcond204.not = icmp eq i64 %indvars.iv.next201, %wide.trip.count203
  br i1 %exitcond204.not, label %._crit_edge, label %.lr.ph, !llvm.loop !219

._crit_edge:                                      ; preds = %Abc_TtAnd.exit137, %Abc_TtFill.exit130
  br i1 %i.ca, label %.lr.ph.i146.preheader, label %Abc_TtOr.exit

.lr.ph.i146.preheader:                            ; preds = %._crit_edge
  %brmerge = select i1 %min.iters.check340, i1 true, i1 %found.conflict338
  br i1 %brmerge, label %.lr.ph.i146.preheader398, label %vector.body343

vector.body343:                                   ; preds = %.lr.ph.i146.preheader, %vector.body343
  %index344 = phi i64 [ %index.next349, %vector.body343 ], [ 0, %.lr.ph.i146.preheader ] ; 3 uses
  %i.oj = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %index344 ; 3 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 16 ; 2 uses
  %wide.load345 = load <2 x i64>, ptr %i.oj, align 8, !tbaa !49, !alias.scope !220, !noalias !223
  %wide.load346 = load <2 x i64>, ptr %i.ok, align 8, !tbaa !49, !alias.scope !220, !noalias !223
  %i.ol = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %index344 ; 2 uses
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 16
  %wide.load347 = load <2 x i64>, ptr %i.ol, align 8, !tbaa !49, !alias.scope !223
  %wide.load348 = load <2 x i64>, ptr %i.om, align 8, !tbaa !49, !alias.scope !223
  %i.on = or <2 x i64> %wide.load347, %wide.load345
  %i.oo = or <2 x i64> %wide.load348, %wide.load346
  store <2 x i64> %i.on, ptr %i.oj, align 8, !tbaa !49, !alias.scope !220, !noalias !223
  store <2 x i64> %i.oo, ptr %i.ok, align 8, !tbaa !49, !alias.scope !220, !noalias !223
  %index.next349 = add nuw i64 %index344, 4       ; 2 uses
  %i.op = icmp eq i64 %index.next349, %n.vec342
  br i1 %i.op, label %middle.block350, label %vector.body343, !llvm.loop !225

middle.block350:                                  ; preds = %vector.body343
  br i1 %cmp.n351, label %Abc_TtOr.exit, label %.lr.ph.i146.preheader398

.lr.ph.i146.preheader398:                         ; preds = %.lr.ph.i146.preheader, %middle.block350
  %indvars.iv.i147.ph = phi i64 [ %n.vec342, %middle.block350 ], [ 0, %.lr.ph.i146.preheader ] ; 3 uses
  br i1 %lcmp.mod416.not, label %.lr.ph.i146.prol.loopexit, label %.lr.ph.i146.prol

.lr.ph.i146.prol:                                 ; preds = %.lr.ph.i146.preheader398, %.lr.ph.i146.prol
  %indvars.iv.i147.prol = phi i64 [ %indvars.iv.next.i148.prol, %.lr.ph.i146.prol ], [ %indvars.iv.i147.ph, %.lr.ph.i146.preheader398 ] ; 3 uses
  %prol.iter417 = phi i64 [ %prol.iter417.next, %.lr.ph.i146.prol ], [ 0, %.lr.ph.i146.preheader398 ]
  %i.oq = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %indvars.iv.i147.prol ; 2 uses
  %i.or = load i64, ptr %i.oq, align 8, !tbaa !49
  %i.os = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %indvars.iv.i147.prol
  %i.ot = load i64, ptr %i.os, align 8, !tbaa !49
  %i.ou = or i64 %i.ot, %i.or
  store i64 %i.ou, ptr %i.oq, align 8, !tbaa !49
  %indvars.iv.next.i148.prol = add nuw nsw i64 %indvars.iv.i147.prol, 1 ; 2 uses
  %prol.iter417.next = add i64 %prol.iter417, 1   ; 2 uses
  %prol.iter417.cmp.not = icmp eq i64 %prol.iter417.next, %xtraiter415
  br i1 %prol.iter417.cmp.not, label %.lr.ph.i146.prol.loopexit, label %.lr.ph.i146.prol, !llvm.loop !226

.lr.ph.i146.prol.loopexit:                        ; preds = %.lr.ph.i146.prol, %.lr.ph.i146.preheader398
  %indvars.iv.i147.unr = phi i64 [ %indvars.iv.i147.ph, %.lr.ph.i146.preheader398 ], [ %indvars.iv.next.i148.prol, %.lr.ph.i146.prol ]
  %i.ov = sub nsw i64 %indvars.iv.i147.ph, %i.cb
  %i.ow = icmp ugt i64 %i.ov, -4
  br i1 %i.ow, label %Abc_TtOr.exit, label %.lr.ph.i146

.lr.ph.i146:                                      ; preds = %.lr.ph.i146.prol.loopexit, %.lr.ph.i146
  %indvars.iv.i147 = phi i64 [ %indvars.iv.next.i148.3, %.lr.ph.i146 ], [ %indvars.iv.i147.unr, %.lr.ph.i146.prol.loopexit ] ; 6 uses
  %i.ox = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %indvars.iv.i147 ; 2 uses
  %i.oy = load i64, ptr %i.ox, align 8, !tbaa !49
  %i.oz = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %indvars.iv.i147
  %i.pa = load i64, ptr %i.oz, align 8, !tbaa !49
  %i.pb = or i64 %i.pa, %i.oy
  store i64 %i.pb, ptr %i.ox, align 8, !tbaa !49
  %indvars.iv.next.i148 = add nuw nsw i64 %indvars.iv.i147, 1 ; 2 uses
  %i.pc = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %indvars.iv.next.i148 ; 2 uses
  %i.pd = load i64, ptr %i.pc, align 8, !tbaa !49
  %i.pe = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %indvars.iv.next.i148
  %i.pf = load i64, ptr %i.pe, align 8, !tbaa !49
  %i.pg = or i64 %i.pf, %i.pd
  store i64 %i.pg, ptr %i.pc, align 8, !tbaa !49
  %indvars.iv.next.i148.1 = add nuw nsw i64 %indvars.iv.i147, 2 ; 2 uses
  %i.ph = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %indvars.iv.next.i148.1 ; 2 uses
  %i.pi = load i64, ptr %i.ph, align 8, !tbaa !49
  %i.pj = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %indvars.iv.next.i148.1
  %i.pk = load i64, ptr %i.pj, align 8, !tbaa !49
  %i.pl = or i64 %i.pk, %i.pi
  store i64 %i.pl, ptr %i.ph, align 8, !tbaa !49
  %indvars.iv.next.i148.2 = add nuw nsw i64 %indvars.iv.i147, 3 ; 2 uses
  %i.pm = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %indvars.iv.next.i148.2 ; 2 uses
  %i.pn = load i64, ptr %i.pm, align 8, !tbaa !49
  %i.po = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %indvars.iv.next.i148.2
  %i.pp = load i64, ptr %i.po, align 8, !tbaa !49
  %i.pq = or i64 %i.pp, %i.pn
  store i64 %i.pq, ptr %i.pm, align 8, !tbaa !49
  %indvars.iv.next.i148.3 = add nuw nsw i64 %indvars.iv.i147, 4 ; 2 uses
  %exitcond.not.i149.3 = icmp eq i64 %indvars.iv.next.i148.3, %i.cb
  br i1 %exitcond.not.i149.3, label %Abc_TtOr.exit, label %.lr.ph.i146, !llvm.loop !227

Abc_TtOr.exit:                                    ; preds = %.lr.ph.i146.prol.loopexit, %.lr.ph.i146, %middle.block350, %._crit_edge, %bb.g
  %i.pr = add nuw nsw i32 %.1104163, 1            ; 2 uses
  %exitcond205.not = icmp eq i32 %i.pr, %i.lg
  br i1 %exitcond205.not, label %Abc_TtMux.exit, label %bb.g, !llvm.loop !228

Abc_TtMux.exit:                                   ; preds = %Abc_TtOr.exit, %.lr.ph.i123.prol.loopexit, %.lr.ph.i123, %Abc_TtXor.exit.loopexit, %Abc_TtAnd.exit.loopexit, %middle.block329, %bb.d, %bb.c, %Abc_TtClear.exit, %Abc_TtFill.exit, %Abc_TtClear.exit128, %bb.e, %bb.b
  %indvars.iv.next217 = add nsw i64 %indvars.iv216, 1 ; 2 uses
  %exitcond220.not = icmp eq i64 %indvars.iv.next217, %wide.trip.count219
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond220.not, label %._crit_edge172, label %bb.b, !llvm.loop !229

._crit_edge172:                                   ; preds = %Abc_TtMux.exit, %.preheader.._crit_edge172_crit_edge
  %i.ps = phi i32 [ %.pre, %.preheader.._crit_edge172_crit_edge ], [ %i.bw, %Abc_TtMux.exit ]
  %i.pt = add nsw i32 %i.br, -1
  %i.pu = getelementptr inbounds nuw i8, ptr %0, i64 8496
  %i.pv = mul nsw i32 %i.ps, %i.pt
  %i.pw = sext i32 %i.pv to i64
  %i.px = getelementptr inbounds [8 x i8], ptr %i.pu, i64 %i.pw
  ret ptr %i.px
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @Ifn_TtComparisonConstr(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i64], align 16               ; 10 uses
  %i.b = alloca [4 x i64], align 16               ; 11 uses
  %i.c = alloca [4 x i64], align 16               ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  %i.d = shl nsw i32 %1, 1
  %i.e = icmp slt i32 %1, 4
  %i.f = add nsw i32 %i.d, -6
  %i.g = shl nuw i32 1, %i.f
  %i.h = select i1 %i.e, i32 1, i32 %i.g          ; 12 uses
  %i.i = zext nneg i32 %i.h to i64                ; 23 uses
  %i.j = shl nuw nsw i64 %i.i, 3                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %0, i8 0, i64 %i.j, i1 false), !tbaa !49
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.b, i8 -1, i64 %i.j, i1 false), !tbaa !49
  %i.k = icmp sgt i32 %1, 0
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.058 = add nsw i32 %1, -1
  %.not24 = icmp eq i32 %2, 0
  %i.l = zext nneg i32 %.058 to i64               ; 2 uses
  br i1 %.not24, label %.lr.ph.split.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %min.iters.check115 = icmp samesign ult i32 %i.h, 4
  %n.vec117 = and i64 %i.i, 1431655764
  %min.iters.check101 = icmp samesign ult i32 %i.h, 4
  %n.vec103 = and i64 %i.i, 1431655764
  %min.iters.check87 = icmp samesign ult i32 %i.h, 4
  %n.vec89 = and i64 %i.i, 1431655764
  %min.iters.check73 = icmp samesign ult i32 %i.h, 4
  %n.vec75 = and i64 %i.i, 1431655764
  %min.iters.check = icmp samesign ult i32 %i.h, 4
  %n.vec = and i64 %i.i, 1431655764
  br label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %min.iters.check185 = icmp samesign ult i32 %i.h, 4
  %n.vec187 = and i64 %i.i, 1431655764
  %min.iters.check171 = icmp samesign ult i32 %i.h, 4
  %n.vec173 = and i64 %i.i, 1431655764
  %min.iters.check157 = icmp samesign ult i32 %i.h, 4
  %n.vec159 = and i64 %i.i, 1431655764
  %min.iters.check143 = icmp samesign ult i32 %i.h, 4
  %n.vec145 = and i64 %i.i, 1431655764
  %min.iters.check129 = icmp samesign ult i32 %i.h, 4
  %n.vec131 = and i64 %i.i, 1431655764
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %Abc_TtAnd.exit51.us
  %indvars.iv62 = phi i64 [ %indvars.iv.next63, %Abc_TtAnd.exit51.us ], [ %i.l, %.lr.ph.split.us.preheader ] ; 3 uses
  %.idx66 = shl nuw nsw i64 %indvars.iv62, 6
  %i.m = getelementptr inbounds nuw i8, ptr @__const.Ifn_TtComparisonConstr.s_TtElems, i64 %.idx66 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32 ; 4 uses
  br i1 %min.iters.check185, label %.lr.ph.i26.us, label %vector.body188

vector.body188:                                   ; preds = %.lr.ph.split.us, %vector.body188
  %index189 = phi i64 [ %index.next194, %vector.body188 ], [ 0, %.lr.ph.split.us ] ; 4 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %index189 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %wide.load190 = load <2 x i64>, ptr %i.o, align 16, !tbaa !49
  %wide.load191 = load <2 x i64>, ptr %i.p, align 16, !tbaa !49
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %index189 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %wide.load192 = load <2 x i64>, ptr %i.q, align 16, !tbaa !49
  %wide.load193 = load <2 x i64>, ptr %i.r, align 16, !tbaa !49
  %i.s = xor <2 x i64> %wide.load192, splat (i64 -1)
  %i.t = xor <2 x i64> %wide.load193, splat (i64 -1)
  %i.u = and <2 x i64> %wide.load190, %i.s
  %i.v = and <2 x i64> %wide.load191, %i.t
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index189 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store <2 x i64> %i.u, ptr %i.w, align 16, !tbaa !49
  store <2 x i64> %i.v, ptr %i.x, align 16, !tbaa !49
  %index.next194 = add nuw i64 %index189, 4       ; 2 uses
  %i.y = icmp eq i64 %index.next194, %n.vec187
  br i1 %i.y, label %.lr.ph.i32.us.preheader, label %vector.body188, !llvm.loop !230

.lr.ph.i26.us:                                    ; preds = %.lr.ph.split.us, %.lr.ph.i26.us
  %indvars.iv.i27.us = phi i64 [ %indvars.iv.next.i28.us, %.lr.ph.i26.us ], [ 0, %.lr.ph.split.us ] ; 4 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.i27.us
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !49
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.i27.us
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !49
  %i.ad = xor i64 %i.ac, -1
  %i.ae = and i64 %i.aa, %i.ad
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i27.us
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !49
  %indvars.iv.next.i28.us = add nuw nsw i64 %indvars.iv.i27.us, 1 ; 2 uses
  %exitcond.not.i29.us = icmp eq i64 %indvars.iv.next.i28.us, %i.i
  br i1 %exitcond.not.i29.us, label %.lr.ph.i32.us.preheader, label %.lr.ph.i26.us, !llvm.loop !231

.lr.ph.i32.us.preheader:                          ; preds = %vector.body188, %.lr.ph.i26.us
  br i1 %min.iters.check171, label %.lr.ph.i32.us, label %vector.body174

vector.body174:                                   ; preds = %.lr.ph.i32.us.preheader, %vector.body174
  %index175 = phi i64 [ %index.next180, %vector.body174 ], [ 0, %.lr.ph.i32.us.preheader ] ; 4 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %index175 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %wide.load176 = load <2 x i64>, ptr %i.ag, align 16, !tbaa !49
  %wide.load177 = load <2 x i64>, ptr %i.ah, align 16, !tbaa !49
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index175 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %wide.load178 = load <2 x i64>, ptr %i.ai, align 16, !tbaa !49
  %wide.load179 = load <2 x i64>, ptr %i.aj, align 16, !tbaa !49
  %i.ak = and <2 x i64> %wide.load178, %wide.load176
  %i.al = and <2 x i64> %wide.load179, %wide.load177
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %index175 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store <2 x i64> %i.ak, ptr %i.am, align 16, !tbaa !49
  store <2 x i64> %i.al, ptr %i.an, align 16, !tbaa !49
  %index.next180 = add nuw i64 %index175, 4       ; 2 uses
  %i.ao = icmp eq i64 %index.next180, %n.vec173
  br i1 %i.ao, label %.lr.ph.i37.us.preheader, label %vector.body174, !llvm.loop !232

.lr.ph.i32.us:                                    ; preds = %.lr.ph.i32.us.preheader, %.lr.ph.i32.us
  %indvars.iv.i33.us = phi i64 [ %indvars.iv.next.i34.us, %.lr.ph.i32.us ], [ 0, %.lr.ph.i32.us.preheader ] ; 4 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.i33.us
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !49
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i33.us
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !49
  %i.at = and i64 %i.as, %i.aq
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.i33.us
  store i64 %i.at, ptr %i.au, align 8, !tbaa !49
  %indvars.iv.next.i34.us = add nuw nsw i64 %indvars.iv.i33.us, 1 ; 2 uses
  %exitcond.not.i35.us = icmp eq i64 %indvars.iv.next.i34.us, %i.i
  br i1 %exitcond.not.i35.us, label %.lr.ph.i37.us.preheader, label %.lr.ph.i32.us, !llvm.loop !233

.lr.ph.i37.us.preheader:                          ; preds = %vector.body174, %.lr.ph.i32.us
  br i1 %min.iters.check157, label %.lr.ph.i37.us, label %vector.body160

vector.body160:                                   ; preds = %.lr.ph.i37.us.preheader, %vector.body160
  %index161 = phi i64 [ %index.next166, %vector.body160 ], [ 0, %.lr.ph.i37.us.preheader ] ; 3 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index161 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16 ; 2 uses
  %wide.load162 = load <2 x i64>, ptr %i.av, align 8, !tbaa !49
  %wide.load163 = load <2 x i64>, ptr %i.aw, align 8, !tbaa !49
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %index161 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %wide.load164 = load <2 x i64>, ptr %i.ax, align 16, !tbaa !49
  %wide.load165 = load <2 x i64>, ptr %i.ay, align 16, !tbaa !49
  %i.az = or <2 x i64> %wide.load164, %wide.load162
  %i.ba = or <2 x i64> %wide.load165, %wide.load163
  store <2 x i64> %i.az, ptr %i.av, align 8, !tbaa !49
  store <2 x i64> %i.ba, ptr %i.aw, align 8, !tbaa !49
  %index.next166 = add nuw i64 %index161, 4       ; 2 uses
  %i.bb = icmp eq i64 %index.next166, %n.vec159
  br i1 %i.bb, label %.lr.ph.i42.us.preheader, label %vector.body160, !llvm.loop !234

.lr.ph.i37.us:                                    ; preds = %.lr.ph.i37.us.preheader, %.lr.ph.i37.us
  %indvars.iv.i38.us = phi i64 [ %indvars.iv.next.i39.us, %.lr.ph.i37.us ], [ 0, %.lr.ph.i37.us.preheader ] ; 3 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.i38.us ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !49
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.i38.us
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !49
  %i.bg = or i64 %i.bf, %i.bd
  store i64 %i.bg, ptr %i.bc, align 8, !tbaa !49
  %indvars.iv.next.i39.us = add nuw nsw i64 %indvars.iv.i38.us, 1 ; 2 uses
  %exitcond.not.i40.us = icmp eq i64 %indvars.iv.next.i39.us, %i.i
  br i1 %exitcond.not.i40.us, label %.lr.ph.i42.us.preheader, label %.lr.ph.i37.us, !llvm.loop !235

.lr.ph.i42.us.preheader:                          ; preds = %vector.body160, %.lr.ph.i37.us
  br i1 %min.iters.check143, label %.lr.ph.i42.us, label %vector.body146

vector.body146:                                   ; preds = %.lr.ph.i42.us.preheader, %vector.body146
  %index147 = phi i64 [ %index.next152, %vector.body146 ], [ 0, %.lr.ph.i42.us.preheader ] ; 4 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %index147 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %wide.load148 = load <2 x i64>, ptr %i.bh, align 16, !tbaa !49
  %wide.load149 = load <2 x i64>, ptr %i.bi, align 16, !tbaa !49
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %index147 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %wide.load150 = load <2 x i64>, ptr %i.bj, align 16, !tbaa !49
  %wide.load151 = load <2 x i64>, ptr %i.bk, align 16, !tbaa !49
  %i.bl = xor <2 x i64> %wide.load148, %wide.load150
  %i.bm = xor <2 x i64> %wide.load149, %wide.load151
  %i.bn = xor <2 x i64> %i.bl, splat (i64 -1)
  %i.bo = xor <2 x i64> %i.bm, splat (i64 -1)
end_hunk_1
begin_hunk_2_@Ifn_NtkMatchCollectConfig:bb.a
  %min.iters.check = icmp ult i32 %i.d, 8
  %i.j = trunc nsw i64 %i.i to i32
  %i.k = icmp ugt i64 %i.i, 4294967295
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.l = add nsw i64 %wide.trip.count, -1
  br label %.preheader.us

.preheader.us:                                    ; preds = %._crit_edge.us, %.preheader.lr.ph.split.us
  %.02633.us = phi i32 [ 0, %.preheader.lr.ph.split.us ], [ %i.bl, %._crit_edge.us ] ; 5 uses
  %i.m = mul nuw nsw i32 %i.d, %.02633.us
  %invariant.op.us = add i32 %i.m, %i.h           ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader.us
  %i.n = mul i32 %i.d, %.02633.us
  %i.o = add i32 %i.h, %i.n                       ; 2 uses
  %i.p = add i32 %i.o, %i.j
  %i.q = icmp slt i32 %i.p, %i.o
  %i.r = or i1 %i.q, %i.k
  br i1 %i.r, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.scevcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.scevcheck ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.ad, %vector.body ], [ zeroinitializer, %vector.scevcheck ]
  %vec.phi48 = phi <4 x i32> [ %i.ae, %vector.body ], [ zeroinitializer, %vector.scevcheck ]
  %vec.ind = phi <4 x i32> [ %vec.ind.next, %vector.body ], [ <i32 0, i32 1, i32 2, i32 3>, %vector.scevcheck ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.s = trunc i64 %index to i32
  %i.t = add i32 %invariant.op.us, %i.s
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds [4 x i8], ptr %.val29.us, i64 %i.u ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %wide.load = load <4 x i32>, ptr %i.v, align 4, !tbaa !24
  %wide.load49 = load <4 x i32>, ptr %i.w, align 4, !tbaa !24
  %i.x = icmp eq <4 x i32> %wide.load, splat (i32 1)
  %i.y = icmp eq <4 x i32> %wide.load49, splat (i32 1)
  %i.z = shl nuw <4 x i32> splat (i32 1), %vec.ind
  %i.aa = shl nuw <4 x i32> splat (i32 1), %step.add
  %i.ab = select <4 x i1> %i.x, <4 x i32> %i.z, <4 x i32> zeroinitializer
  %i.ac = select <4 x i1> %i.y, <4 x i32> %i.aa, <4 x i32> zeroinitializer
  %i.ad = or <4 x i32> %i.ab, %vec.phi            ; 2 uses
  %i.ae = or <4 x i32> %i.ac, %vec.phi48          ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !278

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <4 x i32> %i.ae, %i.ad
  %i.ag = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.scevcheck, %.preheader.us, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.preheader.us ], [ %n.vec, %middle.block ] ; 4 uses
  %.032.us.ph = phi i32 [ 0, %vector.scevcheck ], [ 0, %.preheader.us ], [ %i.ag, %middle.block ] ; 2 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ah = trunc nuw nsw i64 %indvars.iv.ph to i32 ; 2 uses
  %.reass.us.prol = add i32 %invariant.op.us, %i.ah
  %i.ai = sext i32 %.reass.us.prol to i64
  %i.aj = getelementptr inbounds [4 x i8], ptr %.val29.us, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !24
  %.not30.us.prol = icmp eq i32 %i.ak, 1
  %i.al = shl nuw i32 1, %i.ah
  %i.am = select i1 %.not30.us.prol, i32 %i.al, i32 0
  %.1.us.prol = or i32 %i.am, %.032.us.ph         ; 2 uses
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.1.us.lcssa51.unr = phi i32 [ poison, %scalar.ph.preheader ], [ %.1.us.prol, %scalar.ph.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %.032.us.unr = phi i32 [ %.032.us.ph, %scalar.ph.preheader ], [ %.1.us.prol, %scalar.ph.prol ]
  %i.an = icmp eq i64 %indvars.iv.ph, %i.l
  br i1 %i.an, label %._crit_edge.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %.032.us = phi i32 [ %.1.us.1, %scalar.ph ], [ %.032.us.unr, %scalar.ph.prol.loopexit ]
  %i.ao = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %.reass.us = add i32 %invariant.op.us, %i.ao
  %i.ap = sext i32 %.reass.us to i64
  %i.aq = getelementptr inbounds [4 x i8], ptr %.val29.us, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !24
  %.not30.us = icmp eq i32 %i.ar, 1
  %i.as = shl nuw i32 1, %i.ao
  %i.at = select i1 %.not30.us, i32 %i.as, i32 0
  %.1.us = or i32 %i.at, %.032.us
  %i.au = trunc i64 %indvars.iv to i32
  %i.av = add i32 %i.au, 1                        ; 2 uses
  %.reass.us.1 = add i32 %invariant.op.us, %i.av
  %i.aw = sext i32 %.reass.us.1 to i64
  %i.ax = getelementptr inbounds [4 x i8], ptr %.val29.us, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !24
  %.not30.us.1 = icmp eq i32 %i.ay, 1
  %i.az = shl nuw i32 1, %i.av
  %i.ba = select i1 %.not30.us.1, i32 %i.az, i32 0
  %.1.us.1 = or i32 %i.ba, %.1.us                 ; 2 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge.us, label %scalar.ph, !llvm.loop !279

._crit_edge.us:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.1.us.lcssa = phi i32 [ %i.ag, %middle.block ], [ %.1.us.lcssa51.unr, %scalar.ph.prol.loopexit ], [ %.1.us.1, %scalar.ph ]
  %i.bb = sext i32 %.1.us.lcssa to i64
  %i.bc = shl i32 %.02633.us, 2
  %i.bd = and i32 %i.bc, 60
  %i.be = zext nneg i32 %i.bd to i64
  %i.bf = shl i64 %i.bb, %i.be
  %i.bg = lshr i32 %.02633.us, 4
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.bh ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !49
  %i.bk = or i64 %i.bj, %i.bf
  store i64 %i.bk, ptr %i.bi, align 8, !tbaa !49
  %i.bl = add nuw nsw i32 %.02633.us, 1           ; 2 uses
  %exitcond38.not = icmp eq i32 %i.bl, %i.a
  br i1 %exitcond38.not, label %._crit_edge34, label %.preheader.us, !llvm.loop !280

._crit_edge34:                                    ; preds = %._crit_edge.us, %.preheader.lr.ph, %bb.a
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !14 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 1564
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !18 ; 2 uses
  %i.bq = icmp slt i32 %i.bn, %i.bp
  br i1 %i.bq, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %._crit_edge34
  %i.br = getelementptr i8, ptr %1, i64 328
  %.val = load ptr, ptr %i.br, align 8, !tbaa !125
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bt = sext i32 %i.bn to i64
  %wide.trip.count42 = sext i32 %i.bp to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv39 = phi i64 [ %i.bt, %.lr.ph ], [ %indvars.iv.next40, %bb.d ] ; 3 uses
  %i.bu = getelementptr inbounds [4 x i8], ptr %.val, i64 %indvars.iv39
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !24
  %.not = icmp eq i32 %i.bv, 1
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.bw = trunc i64 %indvars.iv39 to i32
  %i.bx = sub i32 %i.bw, %i.bn                    ; 2 uses
  %i.by = and i32 %i.bx, 63
  %i.bz = zext nneg i32 %i.by to i64
  %i.ca = shl nuw i64 1, %i.bz
  %i.cb = ashr i32 %i.bx, 6
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.bs, i64 %i.cc ; 2 uses
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !49
  %i.cf = or i64 %i.ce, %i.ca
  store i64 %i.cf, ptr %i.cd, align 8, !tbaa !49
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %indvars.iv.next40 = add nsw i64 %indvars.iv39, 1 ; 2 uses
  %exitcond43.not = icmp eq i64 %indvars.iv.next40, %wide.trip.count42
  br i1 %exitcond43.not, label %._crit_edge, label %bb.b, !llvm.loop !281

._crit_edge:                                      ; preds = %bb.d, %._crit_edge34
  ret void
}

; Function Attrs: nofree nounwind uwtable
define void @Ifn_NtkMatchPrintPerm(i64 noundef %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.05 = phi i32 [ %i.i, %.lr.ph ], [ 0, %bb.a ]  ; 2 uses
  %i.b = shl i32 %.05, 2
  %i.c = and i32 %i.b, 60
  %i.d = zext nneg i32 %i.c to i64
  %i.e = lshr i64 %0, %i.d
  %i.f = trunc i64 %i.e to i32
  %i.g = and i32 %i.f, 15
  %i.h = add nuw nsw i32 %i.g, 97
  %putchar4 = tail call i32 @putchar(i32 %i.h)    ; 0 uses
  %i.i = add nuw nsw i32 %.05, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.i, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !282

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @Ifn_NtkMatch(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr nofree noundef captures(address_is_null) %6) local_unnamed_addr #7 {
bb.a:
  %7 = alloca %struct.timespec, align 8           ; 5 uses
  %8 = alloca %struct.timespec, align 8           ; 5 uses
  %9 = alloca %struct.timespec, align 8           ; 5 uses
  %i.a = shl nuw nsw i32 1, %2                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  %i.b = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %9) #26
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %Abc_Clock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %9, align 8, !tbaa !283
  %i.e = mul nsw i64 %i.d, 1000000
  %i.f = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !285
  %i.h = sdiv i64 %i.g, 1000
  %i.i = add nsw i64 %i.h, %i.e
  br label %Abc_Clock.exit

Abc_Clock.exit:                                   ; preds = %bb.a, %bb.b
  %.0.i = phi i64 [ %i.i, %bb.b ], [ -1, %bb.a ]  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  %i.j = icmp eq i32 %2, 0
  br i1 %i.j, label %bb.aa, label %bb.c

bb.c:                                             ; preds = %Abc_Clock.exit
  %i.k = call ptr @sat_solver_new() #26           ; 10 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1576 ; 2 uses
  store ptr %1, ptr %i.l, align 8, !tbaa !8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1552 ; 3 uses
  store i32 %2, ptr %i.m, align 8, !tbaa !12
  %i.n = icmp slt i32 %2, 7
  %i.o = add nsw i32 %2, -6
  %i.p = shl nuw i32 1, %i.o
  %i.q = select i1 %i.n, i32 1, i32 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1556 ; 2 uses
  store i32 %i.q, ptr %i.r, align 4, !tbaa !13
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 5 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !14   ; 4 uses
  %i.u = load i32, ptr %0, align 8, !tbaa !15     ; 3 uses
  %i.v = icmp slt i32 %i.u, %i.t
  br i1 %i.v, label %.lr.ph.i, label %Ifn_Prepare.exit

.lr.ph.i:                                         ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = sext i32 %i.u to i64
  %wide.trip.count.i = sext i32 %i.t to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %.lr.ph.i
  %i.y = phi i32 [ %i.t, %.lr.ph.i ], [ %i.ak, %bb.f ] ; 3 uses
  %indvars.iv.i = phi i64 [ %i.x, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.f ] ; 2 uses
  %i.z = getelementptr inbounds [48 x i8], ptr %i.w, i64 %indvars.iv.i ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8             ; 3 uses
  %i.ab = and i32 %i.aa, 7
  %.not.i = icmp eq i32 %i.ab, 6
  br i1 %.not.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ac = shl i32 %i.y, 8
  %i.ad = and i32 %i.ac, 65280
  %i.ae = and i32 %i.aa, -65282
  %i.af = or disjoint i32 %i.ae, %i.ad
  store i32 %i.af, ptr %i.z, align 8
  %i.ag = lshr i32 %i.aa, 3
  %i.ah = and i32 %i.ag, 31
  %i.ai = shl nuw i32 1, %i.ah
  %i.aj = add nsw i32 %i.ai, %i.y
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ak = phi i32 [ %i.aj, %bb.e ], [ %i.y, %bb.d ] ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %Ifn_Prepare.exit, label %bb.d, !llvm.loop !16

Ifn_Prepare.exit:                                 ; preds = %bb.f, %bb.c
  %i.al = phi i32 [ %i.t, %bb.c ], [ %i.ak, %bb.f ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1568 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 1564 ; 3 uses
  store i32 %i.al, ptr %i.an, align 4, !tbaa !18
  %i.ao = icmp eq i32 %2, 1
  %i.ap = add i32 %2, -1
  %i.aq = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ap, i1 true)
  %i.ar = sub nuw nsw i32 32, %i.aq
  %.09.i.i = select i1 %i.ao, i32 1, i32 %i.ar    ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 1560 ; 2 uses
  store i32 %.09.i.i, ptr %i.as, align 8, !tbaa !19
  %i.at = mul nsw i32 %i.u, %.09.i.i
  %i.au = add nsw i32 %i.al, %i.at                ; 3 uses
  store i32 %i.au, ptr %i.am, align 8, !tbaa !20
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 1584 ; 9 uses
  %i.aw = sext i32 %i.au to i64
  %i.ax = shl nsw i64 %i.aw, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.av, i8 -1, i64 %i.ax, i1 false)
  call void @sat_solver_setnvars(ptr noundef %i.k, i32 noundef %i.au) #26
  call void @Ifn_NtkAddConstraints(ptr noundef nonnull %0, ptr noundef %i.k)
  %.not = icmp eq i32 %5, 0                       ; 2 uses
  br i1 %.not, label %bb.i, label %bb.g

bb.g:                                             ; preds = %Ifn_Prepare.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  %i.ay = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %8) #26
  %i.az = icmp slt i32 %i.ay, 0
  br i1 %i.az, label %Abc_Clock.exit86, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ba = load i64, ptr %8, align 8, !tbaa !283
  %i.bb = mul nsw i64 %i.ba, 1000000
  %i.bc = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !285
  %i.be = sdiv i64 %i.bd, 1000
  %i.bf = add nsw i64 %i.be, %i.bb
  br label %Abc_Clock.exit86

Abc_Clock.exit86:                                 ; preds = %bb.g, %bb.h
  %.0.i85 = phi i64 [ %i.bf, %bb.h ], [ -1, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  %i.bg = sub nsw i64 %.0.i85, %.0.i
  call void @Ifn_NtkMatchPrintStatus(ptr noundef %i.k, i32 noundef 0, i32 noundef 1, i32 noundef -1, i32 noundef -1, i64 noundef %i.bg)
  br label %bb.i

bb.i:                                             ; preds = %Abc_Clock.exit86, %Ifn_Prepare.exit
  %.not124 = icmp eq i32 %2, 31
  br i1 %.not124, label %Ifn_NtkMatchCollectConfig.exit, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.i
  %i.bh = sext i32 %3 to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bj = getelementptr i8, ptr %i.k, i64 328     ; 3 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.v
  %.074119 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.go, %bb.v ] ; 6 uses
  %.075118 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.jp, %bb.v ] ; 7 uses
  %i.bk = load i32, ptr %i.s, align 4, !tbaa !14  ; 5 uses
  %i.bl = icmp sgt i32 %i.bk, 0
  br i1 %i.bl, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.bm = load i32, ptr %i.m, align 8, !tbaa !12
  %i.bn = sext i32 %i.bm to i64                   ; 3 uses
  %wide.trip.count = zext nneg i32 %i.bk to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.bo = icmp eq i32 %i.bk, 1
  br i1 %i.bo, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.j ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.j ]
  %i.bp = icmp slt i64 %indvars.iv, %i.bn
  %i.bq = trunc nuw nsw i64 %indvars.iv to i32
  %i.br = lshr i32 %.074119, %i.bq
  %i.bs = and i32 %i.br, 1
  %i.bt = select i1 %i.bp, i32 %i.bs, i32 -1
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv
  store i32 %i.bt, ptr %i.bu, align 4, !tbaa !24
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %i.bv = icmp slt i64 %indvars.iv.next, %i.bn
  %i.bw = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.bx = lshr i32 %.074119, %i.bw
  %i.by = and i32 %i.bx, 1
  %i.bz = select i1 %i.bv, i32 %i.by, i32 -1
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv.next
  store i32 %i.bz, ptr %i.ca, align 4, !tbaa !24
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.j, !llvm.loop !286

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.j
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod199 = trunc i32 %i.bk to i1
  call void @llvm.assume(i1 %lcmp.mod199)
  %i.cb = icmp slt i64 %indvars.iv.epil.init, %i.bn
  %i.cc = trunc nuw nsw i64 %indvars.iv.epil.init to i32
  %i.cd = lshr i32 %.074119, %i.cc
  %i.ce = and i32 %i.cd, 1
  %i.cf = select i1 %i.cb, i32 %i.ce, i32 -1
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv.epil.init
  store i32 %i.cf, ptr %i.cg, align 4, !tbaa !24
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %.preheader
  %i.ch = ashr i32 %.074119, 6
  %i.ci = sext i32 %i.ch to i64
  %i.cj = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ci
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !49
  %i.cl = and i32 %.074119, 63
  %i.cm = zext nneg i32 %i.cl to i64
  %i.cn = lshr i64 %i.ck, %i.cm
  %i.co = trunc i64 %i.cn to i32
  %i.cp = and i32 %i.co, 1
  %i.cq = sext i32 %i.bk to i64
  %i.cr = getelementptr [4 x i8], ptr %i.av, i64 %i.cq
  %i.cs = getelementptr i8, ptr %i.cr, i64 -4
  store i32 %i.cp, ptr %i.cs, align 4, !tbaa !24
  %i.ct = call i32 @Ifn_NtkAddClauses(ptr noundef nonnull %0, ptr noundef nonnull %i.av, ptr noundef %i.k)
  %.not80 = icmp eq i32 %i.ct, 0
  br i1 %.not80, label %Ifn_NtkMatchCollectConfig.exit, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.cu = call i32 @sat_solver_solve(ptr noundef %i.k, ptr noundef null, ptr noundef null, i64 noundef %i.bh, i64 noundef 0, i64 noundef 0, i64 noundef 0) #26 ; 2 uses
  br i1 %.not, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cv = add nuw nsw i32 %.075118, 1
  %i.cw = load i32, ptr %i.s, align 4, !tbaa !14
  %i.cx = sext i32 %i.cw to i64
  %i.cy = getelementptr [4 x i8], ptr %i.av, i64 %i.cx
  %i.cz = getelementptr i8, ptr %i.cy, i64 -4
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.db = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %7) #26
  %i.dc = icmp slt i32 %i.db, 0
  br i1 %i.dc, label %Abc_Clock.exit88, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dd = load i64, ptr %7, align 8, !tbaa !283
  %i.de = mul nsw i64 %i.dd, 1000000
  %i.df = load i64, ptr %i.bi, align 8, !tbaa !285
  %i.dg = sdiv i64 %i.df, 1000
  %i.dh = add nsw i64 %i.dg, %i.de
  br label %Abc_Clock.exit88

Abc_Clock.exit88:                                 ; preds = %bb.l, %bb.m
  %.0.i87 = phi i64 [ %i.dh, %bb.m ], [ -1, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  %i.di = sub nsw i64 %.0.i87, %.0.i
  call void @Ifn_NtkMatchPrintStatus(ptr noundef %i.k, i32 noundef %i.cv, i32 noundef %i.cu, i32 noundef %.074119, i32 noundef %i.da, i64 noundef %i.di)
  br label %bb.n

bb.n:                                             ; preds = %Abc_Clock.exit88, %bb.k
  %.not81 = icmp eq i32 %i.cu, 1
  br i1 %.not81, label %bb.o, label %Ifn_NtkMatchCollectConfig.exit

bb.o:                                             ; preds = %bb.n
  %i.dj = load i32, ptr %i.s, align 4, !tbaa !14  ; 2 uses
  %i.dk = load i32, ptr %i.am, align 8, !tbaa !20
  %i.dl = icmp slt i32 %i.dj, %i.dk
  br i1 %i.dl, label %.lr.ph116, label %._crit_edge117

.lr.ph116:                                        ; preds = %bb.o
  %.val = load ptr, ptr %i.bj, align 8, !tbaa !125
  %i.dm = sext i32 %i.dj to i64
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph116, %bb.p
  %indvars.iv134 = phi i64 [ %i.dm, %.lr.ph116 ], [ %indvars.iv.next135, %bb.p ] ; 3 uses
  %i.dn = getelementptr inbounds [4 x i8], ptr %.val, i64 %indvars.iv134
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !24
  %i.dp = icmp eq i32 %i.do, 1
  %i.dq = zext i1 %i.dp to i32
  %i.dr = getelementptr inbounds [4 x i8], ptr %i.av, i64 %indvars.iv134
  store i32 %i.dq, ptr %i.dr, align 4, !tbaa !24
  %indvars.iv.next135 = add nsw i64 %indvars.iv134, 1 ; 2 uses
  %i.ds = load i32, ptr %i.am, align 8, !tbaa !20
  %i.dt = sext i32 %i.ds to i64
  %i.du = icmp slt i64 %indvars.iv.next135, %i.dt
  br i1 %i.du, label %bb.p, label %._crit_edge117, !llvm.loop !287

._crit_edge117:                                   ; preds = %bb.p, %bb.o
  %i.dv = call ptr @Ifn_NtkDeriveTruth(ptr noundef nonnull %0, ptr noundef nonnull %i.av) ; 9 uses
  %i.dw = load ptr, ptr %i.l, align 8, !tbaa !8   ; 8 uses
  %i.dx = load i32, ptr %i.r, align 4, !tbaa !13  ; 3 uses
  %i.dy = icmp sgt i32 %i.dx, 0
  br i1 %i.dy, label %.lr.ph22.preheader.i, label %Abc_TtXor.exit

.lr.ph22.preheader.i:                             ; preds = %._crit_edge117
  %wide.trip.count28.i = zext nneg i32 %i.dx to i64 ; 6 uses
  %min.iters.check = icmp ult i32 %i.dx, 4
  br i1 %min.iters.check, label %.lr.ph22.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph22.preheader.i
  %i.dz = shl nuw nsw i64 %wide.trip.count28.i, 3 ; 2 uses
  %scevgep = getelementptr i8, ptr %i.dv, i64 %i.dz
  %scevgep171 = getelementptr i8, ptr %i.dw, i64 %i.dz
  %bound0 = icmp ult ptr %i.dv, %scevgep171
  %bound1 = icmp ult ptr %i.dw, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph22.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count28.i, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %index ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.ea, align 8, !tbaa !49, !alias.scope !288, !noalias !291
  %wide.load172 = load <2 x i64>, ptr %i.eb, align 8, !tbaa !49, !alias.scope !288, !noalias !291
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %index ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %wide.load173 = load <2 x i64>, ptr %i.ec, align 8, !tbaa !49, !alias.scope !291
  %wide.load174 = load <2 x i64>, ptr %i.ed, align 8, !tbaa !49, !alias.scope !291
  %i.ee = xor <2 x i64> %wide.load173, %wide.load
  %i.ef = xor <2 x i64> %wide.load174, %wide.load172
  store <2 x i64> %i.ee, ptr %i.ea, align 8, !tbaa !49, !alias.scope !288, !noalias !291
  store <2 x i64> %i.ef, ptr %i.eb, align 8, !tbaa !49, !alias.scope !288, !noalias !291
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.eg = icmp eq i64 %index.next, %n.vec
  br i1 %i.eg, label %middle.block, label %vector.body, !llvm.loop !293

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count28.i
  br i1 %cmp.n, label %Abc_TtXor.exit, label %.lr.ph22.i.preheader

.lr.ph22.i.preheader:                             ; preds = %vector.memcheck, %.lr.ph22.preheader.i, %middle.block
  %indvars.iv25.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph22.preheader.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter200 = and i64 %wide.trip.count28.i, 3  ; 2 uses
  %lcmp.mod201.not = icmp eq i64 %xtraiter200, 0
  br i1 %lcmp.mod201.not, label %.lr.ph22.i.prol.loopexit, label %.lr.ph22.i.prol

.lr.ph22.i.prol:                                  ; preds = %.lr.ph22.i.preheader, %.lr.ph22.i.prol
  %indvars.iv25.i.prol = phi i64 [ %indvars.iv.next26.i.prol, %.lr.ph22.i.prol ], [ %indvars.iv25.i.ph, %.lr.ph22.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph22.i.prol ], [ 0, %.lr.ph22.i.preheader ]
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %indvars.iv25.i.prol ; 2 uses
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !49
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %indvars.iv25.i.prol
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !49
  %i.el = xor i64 %i.ek, %i.ei
end_hunk_2
begin_hunk_3_@Ifn_NtkMatch:bb.a
  %i.gi = icmp eq i64 %i.gh, 0                    ; 2 uses
  %i.gj = add nuw nsw i32 %.3.i.i, 2
  %i.gk = lshr exact i64 %.323.i.i, 2
  %.424.i.i = select i1 %i.gi, i64 %i.gk, i64 %.323.i.i
  %.4.i.i = select i1 %i.gi, i32 %i.gj, i32 %.3.i.i
  %i.gl = trunc i64 %.424.i.i to i32
  %i.gm = and i32 %i.gl, 1
  %i.gn = xor i32 %i.gm, 1
  %.5.i.i = add nuw nsw i32 %.4.i.i, %i.fr
  %i.go = add nuw nsw i32 %.5.i.i, %i.gn          ; 2 uses
  %i.gp = icmp eq i32 %i.go, -1
  br i1 %i.gp, label %Abc_TtFindFirstBit.exit.thread, label %bb.v

Abc_TtFindFirstBit.exit.thread:                   ; preds = %Abc_TtXor.exit, %Abc_TtFindFirstBit.exit, %bb.q
  %.not82 = icmp eq ptr %6, null
  br i1 %.not82, label %Ifn_NtkMatchCollectConfig.exit, label %bb.r

bb.r:                                             ; preds = %Abc_TtFindFirstBit.exit.thread
  %i.gq = load i32, ptr %0, align 8, !tbaa !15    ; 2 uses
  %i.gr = icmp sgt i32 %i.gq, 0
  br i1 %i.gr, label %.preheader.lr.ph.i, label %.._crit_edge34.i_crit_edge

.._crit_edge34.i_crit_edge:                       ; preds = %bb.r
  %.pre = load i32, ptr %i.an, align 4, !tbaa !18
  br label %._crit_edge34.i

.preheader.lr.ph.i:                               ; preds = %bb.r
  %i.gs = load i32, ptr %i.as, align 8, !tbaa !19 ; 5 uses
  %i.gt = icmp sgt i32 %i.gs, 0
  %.pre138 = load i32, ptr %i.an, align 4, !tbaa !18 ; 4 uses
  br i1 %i.gt, label %.preheader.lr.ph.split.us.i, label %._crit_edge34.i

.preheader.lr.ph.split.us.i:                      ; preds = %.preheader.lr.ph.i
  %.val29.us.i = load ptr, ptr %i.bj, align 8, !tbaa !125 ; 4 uses
  %wide.trip.count.i98 = zext nneg i32 %i.gs to i64 ; 6 uses
  %i.gu = add nsw i64 %wide.trip.count.i98, -1    ; 2 uses
  %min.iters.check176 = icmp ult i32 %i.gs, 8
  %i.gv = trunc nsw i64 %i.gu to i32
  %i.gw = icmp ugt i64 %i.gu, 4294967295
  %n.vec178 = and i64 %wide.trip.count.i98, 2147483640 ; 3 uses
  %cmp.n186 = icmp eq i64 %n.vec178, %wide.trip.count.i98
  %xtraiter202 = and i64 %wide.trip.count.i98, 1
  %lcmp.mod203.not = icmp eq i64 %xtraiter202, 0
  %i.gx = add nsw i64 %wide.trip.count.i98, -1
  br label %.preheader.us.i

.preheader.us.i:                                  ; preds = %._crit_edge.us.i, %.preheader.lr.ph.split.us.i
  %.02633.us.i = phi i32 [ 0, %.preheader.lr.ph.split.us.i ], [ %i.ix, %._crit_edge.us.i ] ; 5 uses
  %i.gy = mul nuw nsw i32 %.02633.us.i, %i.gs
  %invariant.op.us.i = add i32 %i.gy, %.pre138    ; 4 uses
  br i1 %min.iters.check176, label %scalar.ph175.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader.us.i
  %i.gz = mul i32 %i.gs, %.02633.us.i
  %i.ha = add i32 %.pre138, %i.gz                 ; 2 uses
  %i.hb = add i32 %i.ha, %i.gv
  %i.hc = icmp slt i32 %i.hb, %i.ha
  %i.hd = or i1 %i.hc, %i.gw
  br i1 %i.hd, label %scalar.ph175.preheader, label %vector.body179

vector.body179:                                   ; preds = %vector.scevcheck, %vector.body179
  %index180 = phi i64 [ %index.next184, %vector.body179 ], [ 0, %vector.scevcheck ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.hp, %vector.body179 ], [ zeroinitializer, %vector.scevcheck ]
  %vec.phi181 = phi <4 x i32> [ %i.hq, %vector.body179 ], [ zeroinitializer, %vector.scevcheck ]
  %vec.ind = phi <4 x i32> [ %vec.ind.next, %vector.body179 ], [ <i32 0, i32 1, i32 2, i32 3>, %vector.scevcheck ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.he = trunc i64 %index180 to i32
  %i.hf = add i32 %invariant.op.us.i, %i.he
  %i.hg = sext i32 %i.hf to i64
  %i.hh = getelementptr inbounds [4 x i8], ptr %.val29.us.i, i64 %i.hg ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 16
  %wide.load182 = load <4 x i32>, ptr %i.hh, align 4, !tbaa !24
  %wide.load183 = load <4 x i32>, ptr %i.hi, align 4, !tbaa !24
  %i.hj = icmp eq <4 x i32> %wide.load182, splat (i32 1)
  %i.hk = icmp eq <4 x i32> %wide.load183, splat (i32 1)
  %i.hl = shl nuw <4 x i32> splat (i32 1), %vec.ind
  %i.hm = shl nuw <4 x i32> splat (i32 1), %step.add
  %i.hn = select <4 x i1> %i.hj, <4 x i32> %i.hl, <4 x i32> zeroinitializer
  %i.ho = select <4 x i1> %i.hk, <4 x i32> %i.hm, <4 x i32> zeroinitializer
  %i.hp = or <4 x i32> %i.hn, %vec.phi            ; 2 uses
  %i.hq = or <4 x i32> %i.ho, %vec.phi181         ; 2 uses
  %index.next184 = add nuw i64 %index180, 8       ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.hr = icmp eq i64 %index.next184, %n.vec178
  br i1 %i.hr, label %middle.block185, label %vector.body179, !llvm.loop !297

middle.block185:                                  ; preds = %vector.body179
  %bin.rdx = or <4 x i32> %i.hq, %i.hp
  %i.hs = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n186, label %._crit_edge.us.i, label %scalar.ph175.preheader

scalar.ph175.preheader:                           ; preds = %vector.scevcheck, %.preheader.us.i, %middle.block185
  %indvars.iv.i99.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.preheader.us.i ], [ %n.vec178, %middle.block185 ] ; 4 uses
  %.032.us.i.ph = phi i32 [ 0, %vector.scevcheck ], [ 0, %.preheader.us.i ], [ %i.hs, %middle.block185 ] ; 2 uses
  br i1 %lcmp.mod203.not, label %scalar.ph175.prol.loopexit, label %scalar.ph175.prol

scalar.ph175.prol:                                ; preds = %scalar.ph175.preheader
  %i.ht = trunc nuw nsw i64 %indvars.iv.i99.ph to i32 ; 2 uses
  %.reass.us.i.prol = add i32 %invariant.op.us.i, %i.ht
  %i.hu = sext i32 %.reass.us.i.prol to i64
  %i.hv = getelementptr inbounds [4 x i8], ptr %.val29.us.i, i64 %i.hu
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !24
  %.not30.us.i.prol = icmp eq i32 %i.hw, 1
  %i.hx = shl nuw i32 1, %i.ht
  %i.hy = select i1 %.not30.us.i.prol, i32 %i.hx, i32 0
  %.1.us.i.prol = or i32 %i.hy, %.032.us.i.ph     ; 2 uses
  %indvars.iv.next.i100.prol = or disjoint i64 %indvars.iv.i99.ph, 1
  br label %scalar.ph175.prol.loopexit

scalar.ph175.prol.loopexit:                       ; preds = %scalar.ph175.prol, %scalar.ph175.preheader
  %.1.us.i.lcssa189.unr = phi i32 [ poison, %scalar.ph175.preheader ], [ %.1.us.i.prol, %scalar.ph175.prol ]
  %indvars.iv.i99.unr = phi i64 [ %indvars.iv.i99.ph, %scalar.ph175.preheader ], [ %indvars.iv.next.i100.prol, %scalar.ph175.prol ]
  %.032.us.i.unr = phi i32 [ %.032.us.i.ph, %scalar.ph175.preheader ], [ %.1.us.i.prol, %scalar.ph175.prol ]
  %i.hz = icmp eq i64 %indvars.iv.i99.ph, %i.gx
  br i1 %i.hz, label %._crit_edge.us.i, label %scalar.ph175

scalar.ph175:                                     ; preds = %scalar.ph175.prol.loopexit, %scalar.ph175
  %indvars.iv.i99 = phi i64 [ %indvars.iv.next.i100.1, %scalar.ph175 ], [ %indvars.iv.i99.unr, %scalar.ph175.prol.loopexit ] ; 3 uses
  %.032.us.i = phi i32 [ %.1.us.i.1, %scalar.ph175 ], [ %.032.us.i.unr, %scalar.ph175.prol.loopexit ]
  %i.ia = trunc nuw nsw i64 %indvars.iv.i99 to i32 ; 2 uses
  %.reass.us.i = add i32 %invariant.op.us.i, %i.ia
  %i.ib = sext i32 %.reass.us.i to i64
  %i.ic = getelementptr inbounds [4 x i8], ptr %.val29.us.i, i64 %i.ib
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !24
  %.not30.us.i = icmp eq i32 %i.id, 1
  %i.ie = shl nuw i32 1, %i.ia
  %i.if = select i1 %.not30.us.i, i32 %i.ie, i32 0
  %.1.us.i = or i32 %i.if, %.032.us.i
  %i.ig = trunc i64 %indvars.iv.i99 to i32
  %i.ih = add i32 %i.ig, 1                        ; 2 uses
  %.reass.us.i.1 = add i32 %invariant.op.us.i, %i.ih
  %i.ii = sext i32 %.reass.us.i.1 to i64
  %i.ij = getelementptr inbounds [4 x i8], ptr %.val29.us.i, i64 %i.ii
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !24
  %.not30.us.i.1 = icmp eq i32 %i.ik, 1
  %i.il = shl nuw i32 1, %i.ih
  %i.im = select i1 %.not30.us.i.1, i32 %i.il, i32 0
  %.1.us.i.1 = or i32 %i.im, %.1.us.i             ; 2 uses
  %indvars.iv.next.i100.1 = add nuw nsw i64 %indvars.iv.i99, 2 ; 2 uses
  %exitcond.not.i101.1 = icmp eq i64 %indvars.iv.next.i100.1, %wide.trip.count.i98
  br i1 %exitcond.not.i101.1, label %._crit_edge.us.i, label %scalar.ph175, !llvm.loop !298

._crit_edge.us.i:                                 ; preds = %scalar.ph175.prol.loopexit, %scalar.ph175, %middle.block185
  %.1.us.i.lcssa = phi i32 [ %i.hs, %middle.block185 ], [ %.1.us.i.lcssa189.unr, %scalar.ph175.prol.loopexit ], [ %.1.us.i.1, %scalar.ph175 ]
  %i.in = sext i32 %.1.us.i.lcssa to i64
  %i.io = shl i32 %.02633.us.i, 2
  %i.ip = and i32 %i.io, 60
  %i.iq = zext nneg i32 %i.ip to i64
  %i.ir = shl i64 %i.in, %i.iq
  %i.is = lshr i32 %.02633.us.i, 4
  %i.it = zext nneg i32 %i.is to i64
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.it ; 2 uses
  %i.iv = load i64, ptr %i.iu, align 8, !tbaa !49
  %i.iw = or i64 %i.iv, %i.ir
  store i64 %i.iw, ptr %i.iu, align 8, !tbaa !49
  %i.ix = add nuw nsw i32 %.02633.us.i, 1         ; 2 uses
  %exitcond38.not.i = icmp eq i32 %i.ix, %i.gq
  br i1 %exitcond38.not.i, label %._crit_edge34.i, label %.preheader.us.i, !llvm.loop !280

._crit_edge34.i:                                  ; preds = %._crit_edge.us.i, %.._crit_edge34.i_crit_edge, %.preheader.lr.ph.i
  %i.iy = phi i32 [ %.pre, %.._crit_edge34.i_crit_edge ], [ %.pre138, %.preheader.lr.ph.i ], [ %.pre138, %._crit_edge.us.i ] ; 2 uses
  %i.iz = load i32, ptr %i.s, align 4, !tbaa !14  ; 3 uses
  %i.ja = icmp slt i32 %i.iz, %i.iy
  br i1 %i.ja, label %.lr.ph.i96, label %Ifn_NtkMatchCollectConfig.exit

.lr.ph.i96:                                       ; preds = %._crit_edge34.i
  %.val.i = load ptr, ptr %i.bj, align 8, !tbaa !125
  %i.jb = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.jc = sext i32 %i.iz to i64
  %wide.trip.count42.i = sext i32 %i.iy to i64
  br label %bb.s

bb.s:                                             ; preds = %bb.u, %.lr.ph.i96
  %indvars.iv39.i = phi i64 [ %i.jc, %.lr.ph.i96 ], [ %indvars.iv.next40.i, %bb.u ] ; 3 uses
  %i.jd = getelementptr inbounds [4 x i8], ptr %.val.i, i64 %indvars.iv39.i
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !24
  %.not.i97 = icmp eq i32 %i.je, 1
  br i1 %.not.i97, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.jf = trunc i64 %indvars.iv39.i to i32
  %i.jg = sub i32 %i.jf, %i.iz                    ; 2 uses
  %i.jh = and i32 %i.jg, 63
  %i.ji = zext nneg i32 %i.jh to i64
  %i.jj = shl nuw i64 1, %i.ji
  %i.jk = ashr i32 %i.jg, 6
  %i.jl = sext i32 %i.jk to i64
  %i.jm = getelementptr inbounds [8 x i8], ptr %i.jb, i64 %i.jl ; 2 uses
  %i.jn = load i64, ptr %i.jm, align 8, !tbaa !49
  %i.jo = or i64 %i.jn, %i.jj
  store i64 %i.jo, ptr %i.jm, align 8, !tbaa !49
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %indvars.iv.next40.i = add nsw i64 %indvars.iv39.i, 1 ; 2 uses
  %exitcond43.not.i = icmp eq i64 %indvars.iv.next40.i, %wide.trip.count42.i
  br i1 %exitcond43.not.i, label %Ifn_NtkMatchCollectConfig.exit, label %bb.s, !llvm.loop !281

bb.v:                                             ; preds = %Abc_TtFindFirstBit.exit
  %i.jp = add nuw nsw i32 %.075118, 1             ; 2 uses
  %exitcond137.not = icmp eq i32 %i.jp, %i.a
  br i1 %exitcond137.not, label %Ifn_NtkMatchCollectConfig.exit, label %.preheader, !llvm.loop !299

Ifn_NtkMatchCollectConfig.exit:                   ; preds = %bb.v, %._crit_edge, %bb.n, %bb.u, %bb.i, %._crit_edge34.i, %Abc_TtFindFirstBit.exit.thread
  %.075110 = phi i32 [ %.075118, %Abc_TtFindFirstBit.exit.thread ], [ %.075118, %._crit_edge34.i ], [ %.075118, %bb.u ], [ 0, %bb.i ], [ %i.a, %bb.v ], [ %.075118, %._crit_edge ], [ %.075118, %bb.n ]
  %.not84 = phi i1 [ false, %Abc_TtFindFirstBit.exit.thread ], [ false, %._crit_edge34.i ], [ false, %bb.u ], [ true, %bb.i ], [ true, %bb.n ], [ true, %._crit_edge ], [ true, %bb.v ] ; 2 uses
  %.073 = phi i32 [ 1, %Abc_TtFindFirstBit.exit.thread ], [ 1, %._crit_edge34.i ], [ 1, %bb.u ], [ 0, %bb.i ], [ 0, %bb.n ], [ 0, %._crit_edge ], [ 0, %bb.v ]
  %.not83 = icmp eq i32 %4, 0
  br i1 %.not83, label %bb.z, label %bb.w

bb.w:                                             ; preds = %Ifn_NtkMatchCollectConfig.exit
  %i.jq = select i1 %.not84, ptr @.str.58, ptr @.str.57
  %i.jr = call i32 @sat_solver_nconflicts(ptr noundef %i.k) #26
  %i.js = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.56, ptr noundef nonnull %i.jq, i32 noundef %.075110, i32 noundef %i.jr) ; 0 uses
  br i1 %.not84, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @Ifn_NtkMatchPrintConfig(ptr noundef nonnull %0, ptr noundef %i.k)
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %putchar = call i32 @putchar(i32 10)            ; 0 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %Ifn_NtkMatchCollectConfig.exit
  call void @sat_solver_delete(ptr noundef %i.k) #26
  br label %bb.aa

bb.aa:                                            ; preds = %Abc_Clock.exit, %bb.z
  %.0 = phi i32 [ %.073, %bb.z ], [ 1, %Abc_Clock.exit ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define void @Ifn_NtkRead() local_unnamed_addr #7 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = tail call ptr @Dau_DsdToTruth(ptr noundef nonnull @.str.59, i32 noundef 8) #26 ; 2 uses
  %i.c = tail call ptr @Ifn_NtkParse(ptr noundef nonnull @.str.60) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 0, ptr %i.a, align 8, !tbaa !49
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @Ifn_NtkPrint(ptr noundef nonnull %i.c)
  tail call void @Dau_DsdPrintFromTruth(ptr noundef %i.b, i32 noundef 8) #26
  %i.e = call i32 @Ifn_NtkMatch(ptr noundef nonnull %i.c, ptr noundef %i.b, i32 noundef 8, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %i.a) ; 0 uses
  call void @free(ptr noundef nonnull %i.c) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret void
}

declare ptr @Dau_DsdToTruth(ptr noundef, i32 noundef) local_unnamed_addr #9

declare void @Dau_DsdPrintFromTruth(ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none)) local_unnamed_addr #17

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #18

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc ptr @Gia_ManAppendObj(ptr nofree noundef captures(none) %0) unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !91   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 4 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !300
  %i.e = icmp eq i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.f = shl nsw i32 %i.b, 1
  %i.g = tail call noundef range(i32 -2147483648, 536870913) i32 @llvm.smin.i32(i32 %i.f, i32 536870912) ; 6 uses
  %i.h = icmp eq i32 %i.b, 536870912
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.2) ; 0 uses
  tail call void @exit(i32 noundef 1) #31
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 820
  %i.j = load i32, ptr %i.i, align 4, !tbaa !301
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.69, i32 noundef %i.b, i32 noundef %i.g) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !86   ; 2 uses
  %.not33 = icmp eq ptr %i.m, null
  %i.n = sext i32 %i.g to i64
  %i.o = mul nsw i64 %i.n, 12                     ; 2 uses
  br i1 %.not33, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = tail call ptr @realloc(ptr noundef nonnull %i.m, i64 noundef %i.o) #29
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.q = tail call noalias ptr @malloc(i64 noundef %i.o) #28
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.r = phi ptr [ %i.p, %bb.g ], [ %i.q, %bb.h ] ; 2 uses
  store ptr %i.r, ptr %i.l, align 8, !tbaa !86
  %i.s = load i32, ptr %i.c, align 4, !tbaa !300  ; 2 uses
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds [12 x i8], ptr %i.r, i64 %i.t
  %i.v = sub nsw i32 %i.g, %i.s
  %i.w = sext i32 %i.v to i64
  %i.x = mul nsw i64 %i.w, 12
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.u, i8 0, i64 %i.x, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !302  ; 2 uses
  %.not34 = icmp eq ptr %i.z, null
  br i1 %.not34, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = sext i32 %i.g to i64
  %i.ab = shl nsw i64 %i.aa, 2
  %i.ac = tail call ptr @realloc(ptr noundef nonnull %i.z, i64 noundef %i.ab) #29 ; 2 uses
  store ptr %i.ac, ptr %i.y, align 8, !tbaa !302
  %i.ad = load i32, ptr %i.c, align 4, !tbaa !300 ; 2 uses
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.ae
  %i.ag = sub nsw i32 %i.g, %i.ad
  %i.ah = sext i32 %i.ag to i64
  %i.ai = shl nsw i64 %i.ah, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.af, i8 0, i64 %i.ai, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  store i32 %i.g, ptr %i.c, align 4, !tbaa !300
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.a
  %i.aj = getelementptr i8, ptr %0, i64 100
  %.val = load i32, ptr %i.aj, align 4, !tbaa !85
  %.not35 = icmp eq i32 %.val, 0
  br i1 %.not35, label %bb.w, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 3 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !85 ; 7 uses
  %i.an = load i32, ptr %i.ak, align 8, !tbaa !87
  %i.ao = icmp eq i32 %i.am, %i.an
  br i1 %i.ao, label %bb.n, label %Vec_IntPush.exit

bb.n:                                             ; preds = %bb.m
  %i.ap = icmp slt i32 %i.am, 16
  br i1 %i.ap, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !88 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.ar, null
  br i1 %.not9.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.as = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.ar, i64 noundef 64) #29
  br label %Vec_IntGrow.exit.i

bb.q:                                             ; preds = %bb.o
  %i.at = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #28
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.q, %bb.p
  %i.au = phi ptr [ %i.as, %bb.p ], [ %i.at, %bb.q ]
  store ptr %i.au, ptr %i.aq, align 8, !tbaa !88
  br label %Vec_IntGrow.exit11.sink.split.i

bb.r:                                             ; preds = %bb.n
  %i.av = icmp samesign ult i32 %i.am, 1073741823
  %i.aw = shl nuw nsw i32 %i.am, 1
  %spec.select.i = select i1 %i.av, i32 %i.aw, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %i.am, %spec.select.i
  br i1 %.not.i9.i, label %bb.s, label %Vec_IntPush.exit

bb.s:                                             ; preds = %bb.r
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !88 ; 2 uses
  %.not9.i10.i = icmp eq ptr %i.ay, null
  %i.az = zext nneg i32 %spec.select.i to i64
  %i.ba = shl nuw nsw i64 %i.az, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bb = tail call ptr @realloc(ptr noundef nonnull %i.ay, i64 noundef %i.ba) #29
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.bc = tail call noalias ptr @malloc(i64 noundef %i.ba) #28
  br label %bb.v
end_hunk_3
