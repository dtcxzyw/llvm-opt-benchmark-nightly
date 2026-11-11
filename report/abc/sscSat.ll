Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/sscSat?download=true
inline.NumInlined: 151
inline.NumDeleted: 46
begin_hunk_0_@Ssc_ManCnfNodeAddToSolver:bb.a
Vec_IntGrow.exit11.sink.split.i.i157:             ; preds = %bb.bw, %Vec_IntGrow.exit.i.i161
  %spec.select.sink.i.i158 = phi i32 [ %spec.select.i.i154, %bb.bw ], [ 16, %Vec_IntGrow.exit.i.i161 ]
  store i32 %spec.select.sink.i.i158, ptr %.lcssa172, align 8, !tbaa !38
  %.pre.i159 = load i32, ptr %i.oi, align 4, !tbaa !37
  br label %Gia_ManAddClausesSuper.exit

Gia_ManAddClausesSuper.exit:                      ; preds = %.critedge.i, %bb.bs, %Vec_IntGrow.exit11.sink.split.i.i157
  %i.qi = phi i32 [ %.val19.lcssa.i, %.critedge.i ], [ %.val19.lcssa.i, %bb.bs ], [ %.pre.i159, %Vec_IntGrow.exit11.sink.split.i.i157 ] ; 2 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %.lcssa172, i64 8
  %i.qk = load ptr, ptr %i.qj, align 8, !tbaa !39 ; 3 uses
  %i.ql = add nsw i32 %i.qi, 1
  store i32 %i.ql, ptr %i.oi, align 4, !tbaa !37
  %i.qm = sext i32 %i.qi to i64
  %i.qn = getelementptr inbounds [4 x i8], ptr %i.qk, i64 %i.qm
  store i32 %i.ow, ptr %i.qn, align 4, !tbaa !42
  %i.qo = load ptr, ptr %i.y, align 8, !tbaa !46
  %.val.i = load i32, ptr %i.oi, align 4, !tbaa !37
  %i.qp = sext i32 %.val.i to i64
  %i.qq = getelementptr inbounds [4 x i8], ptr %i.qk, i64 %i.qp
  %i.qr = call i32 @sat_solver_addclause(ptr noundef %i.qo, ptr noundef %i.qk, ptr noundef %i.qq) #9 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.bx

bb.bx:                                            ; preds = %Gia_ManAddClausesMux.exit, %Gia_ManAddClausesSuper.exit
  %indvars.iv.next186 = add nuw nsw i64 %indvars.iv185, 1 ; 2 uses
  %i.qs = load ptr, ptr %i.o, align 8, !tbaa !89  ; 2 uses
  %i.qt = getelementptr i8, ptr %i.qs, i64 4
  %.val60 = load i32, ptr %i.qt, align 4, !tbaa !37
  %i.qu = sext i32 %.val60 to i64
  %i.qv = icmp slt i64 %indvars.iv.next186, %i.qu
  br i1 %i.qv, label %bb.d, label %.critedge, !llvm.loop !88

.critedge:                                        ; preds = %bb.d, %bb.bx, %Abc_Clock.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  %i.qw = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %2) #9
  %i.qx = icmp slt i32 %i.qw, 0
  br i1 %i.qx, label %Abc_Clock.exit166, label %bb.by

bb.by:                                            ; preds = %.critedge
  %i.qy = load i64, ptr %2, align 8, !tbaa !61
  %i.qz = mul nsw i64 %i.qy, 1000000
  %i.ra = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.rb = load i64, ptr %i.ra, align 8, !tbaa !62
  %i.rc = sdiv i64 %i.rb, 1000
  %i.rd = add nsw i64 %i.rc, %i.qz
  br label %Abc_Clock.exit166

Abc_Clock.exit166:                                ; preds = %.critedge, %bb.by
  %.0.i165 = phi i64 [ %i.rd, %bb.by ], [ -1, %.critedge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  %i.re = add i64 %.0.i165, %.0.i.neg
  %i.rf = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.rg = load i64, ptr %i.rf, align 8, !tbaa !92
  %i.rh = add nsw i64 %i.re, %i.rg
  store i64 %i.rh, ptr %i.rf, align 8, !tbaa !92
  br label %bb.bz

bb.bz:                                            ; preds = %bb.a, %Abc_Clock.exit166
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc void @Ssc_ManCnfAddToFrontier(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 40
  %.val14 = load ptr, ptr %i.a, align 8, !tbaa !40
  %i.b = getelementptr i8, ptr %.val14, i64 8
  %.val14.val = load ptr, ptr %i.b, align 8, !tbaa !39
  %i.c = sext i32 %1 to i64                       ; 2 uses
  %i.d = getelementptr inbounds [4 x i8], ptr %.val14.val, i64 %i.c ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !42
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !16
  %i.h = getelementptr i8, ptr %i.g, i64 32
  %.val13 = load ptr, ptr %i.h, align 8, !tbaa !44
  %i.i = getelementptr inbounds [12 x i8], ptr %.val13, i64 %i.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 3 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !21   ; 3 uses
  %i.l = add nsw i32 %i.k, 1
  store i32 %i.l, ptr %i.j, align 4, !tbaa !21
  %i.m = getelementptr i8, ptr %0, i64 48
  %.val12 = load ptr, ptr %i.m, align 8, !tbaa !41
  %i.n = getelementptr i8, ptr %.val12, i64 8
  %.val12.val = load ptr, ptr %i.n, align 8, !tbaa !39
  store i32 %i.k, ptr %i.d, align 4, !tbaa !42
  %i.o = sext i32 %i.k to i64
  %i.p = getelementptr inbounds [4 x i8], ptr %.val12.val, i64 %i.o
  store i32 %1, ptr %i.p, align 4, !tbaa !42
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !46
  %i.s = load i32, ptr %i.j, align 4, !tbaa !21
  %i.t = add nsw i32 %i.s, 100
  tail call void @sat_solver_setnvars(ptr noundef %i.r, i32 noundef %i.t) #9
  %.val15 = load i64, ptr %i.i, align 4           ; 2 uses
  %i.u = and i64 %.val15, 2147483648
  %.not.i = icmp ne i64 %i.u, 0
  %i.v = and i64 %.val15, 536870911
  %i.w = icmp eq i64 %i.v, 536870911
  %narrow.i.not = or i1 %.not.i, %i.w
  br i1 %narrow.i.not, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !37   ; 7 uses
  %i.z = load i32, ptr %2, align 8, !tbaa !38
  %i.aa = icmp eq i32 %i.y, %i.z
  br i1 %i.aa, label %bb.d, label %Vec_IntPush.exit

bb.d:                                             ; preds = %bb.c
  %i.ab = icmp slt i32 %i.y, 16
  br i1 %i.ab, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !39 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.ad, null
  br i1 %.not9.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.ad, i64 noundef 64) #11
  br label %Vec_IntGrow.exit.i

bb.g:                                             ; preds = %bb.e
  %i.af = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #10
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.g, %bb.f
  %i.ag = phi ptr [ %i.ae, %bb.f ], [ %i.af, %bb.g ]
  store ptr %i.ag, ptr %i.ac, align 8, !tbaa !39
  br label %Vec_IntGrow.exit11.sink.split.i

bb.h:                                             ; preds = %bb.d
  %i.ah = icmp samesign ult i32 %i.y, 1073741823
  %i.ai = shl nuw nsw i32 %i.y, 1
  %spec.select.i = select i1 %i.ah, i32 %i.ai, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %i.y, %spec.select.i
  br i1 %.not.i9.i, label %bb.i, label %Vec_IntPush.exit

bb.i:                                             ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !39 ; 2 uses
  %.not9.i10.i = icmp eq ptr %i.ak, null
  %i.al = zext nneg i32 %spec.select.i to i64
  %i.am = shl nuw nsw i64 %i.al, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = tail call ptr @realloc(ptr noundef nonnull %i.ak, i64 noundef %i.am) #11
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.ao = tail call noalias ptr @malloc(i64 noundef %i.am) #10
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ap = phi ptr [ %i.an, %bb.j ], [ %i.ao, %bb.k ]
  store ptr %i.ap, ptr %i.aj, align 8, !tbaa !39
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.l, %Vec_IntGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.l ], [ 16, %Vec_IntGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %2, align 8, !tbaa !38
  %.pre = load i32, ptr %i.x, align 4, !tbaa !37
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.c, %bb.h, %Vec_IntGrow.exit11.sink.split.i
  %i.aq = phi i32 [ %i.y, %bb.c ], [ %i.y, %bb.h ], [ %.pre, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !39
  %i.at = add nsw i32 %i.aq, 1
  store i32 %i.at, ptr %i.x, align 4, !tbaa !37
  %i.au = sext i32 %i.aq to i64
  %i.av = getelementptr inbounds [4 x i8], ptr %i.as, i64 %i.au
  store i32 %1, ptr %i.av, align 4, !tbaa !42
  br label %bb.m

bb.m:                                             ; preds = %bb.b, %Vec_IntPush.exit, %bb.a
  ret void
}

declare i32 @Gia_ObjIsMuxType(ptr noundef) local_unnamed_addr #2

declare ptr @Gia_ObjRecognizeMux(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @Ssc_ManCollectSuper_rec(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.b = and i64 %i.a, 1
  %.not18 = icmp eq i64 %i.b, 0
  br i1 %.not18, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %.val1430 = load i64, ptr %1, align 4
  %i.c = and i64 %.val1430, 2684354559
  %narrow.i.not31 = icmp eq i64 %i.c, 2684354559
  br i1 %narrow.i.not31, label %._crit_edge, label %.lr.ph33

.lr.ph:                                           ; preds = %tailrecurse
  %3 = inttoptr i64 %i.bh to ptr                  ; 2 uses
  %.val14 = load i64, ptr %3, align 4
  %4 = and i64 %.val14, 2684354559
  %narrow.i.not = icmp eq i64 %4, 2684354559
  br i1 %narrow.i.not, label %._crit_edge, label %.lr.ph33

.lr.ph33:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.tr151932 = phi ptr [ %3, %.lr.ph ], [ %1, %.lr.ph.preheader ] ; 5 uses
  %5 = phi i64 [ %i.bh, %.lr.ph ], [ %i.a, %.lr.ph.preheader ]
  %6 = tail call i32 @Gia_ObjIsMuxType(ptr noundef nonnull %.tr151932) #9
  %.not13 = icmp eq i32 %6, 0
  br i1 %.not13, label %tailrecurse, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph33, %.lr.ph, %tailrecurse, %.lr.ph.preheader, %bb.a
  %.lcssa17 = phi i64 [ %i.a, %bb.a ], [ %i.a, %.lr.ph.preheader ], [ %i.bh, %tailrecurse ], [ %5, %.lr.ph33 ], [ %i.bh, %.lr.ph ]
  %.lcssa = phi i32 [ 1, %bb.a ], [ 0, %.lr.ph.preheader ], [ 1, %tailrecurse ], [ 0, %.lr.ph33 ], [ 0, %.lr.ph ]
  %i.d = getelementptr i8, ptr %0, i64 32
  %.val = load ptr, ptr %i.d, align 8, !tbaa !44
  %i.e = and i64 %.lcssa17, -2
  %i.f = ptrtoint ptr %.val to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 12
  %i.i = trunc i64 %i.h to i32
  %i.j = shl nsw i32 %i.i, 1
  %i.k = or disjoint i32 %i.j, %.lcssa            ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !37   ; 9 uses
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %._crit_edge
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !39
  %wide.trip.count.i = zext nneg i32 %i.m to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.c, !llvm.loop !0

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.b ] ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.i
  %i.r = load i32, ptr %i.q, align 4, !tbaa !42
  %i.s = icmp eq i32 %i.r, %i.k
  br i1 %i.s, label %Vec_IntPushUnique.exit, label %bb.b

._crit_edge.i:                                    ; preds = %bb.b, %._crit_edge
  %i.t = load i32, ptr %2, align 8, !tbaa !38
  %i.u = icmp eq i32 %i.m, %i.t
  br i1 %i.u, label %bb.d, label %Vec_IntPush.exit.i

bb.d:                                             ; preds = %._crit_edge.i
  %i.v = icmp slt i32 %i.m, 16
  br i1 %i.v, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !39   ; 2 uses
  %.not9.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not9.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.x, i64 noundef 64) #11
  br label %Vec_IntGrow.exit.i.i

bb.g:                                             ; preds = %bb.e
  %i.z = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #10
  br label %Vec_IntGrow.exit.i.i

Vec_IntGrow.exit.i.i:                             ; preds = %bb.g, %bb.f
  %i.aa = phi ptr [ %i.y, %bb.f ], [ %i.z, %bb.g ]
  store ptr %i.aa, ptr %i.w, align 8, !tbaa !39
  br label %Vec_IntGrow.exit11.sink.split.i.i

bb.h:                                             ; preds = %bb.d
  %i.ab = icmp samesign ult i32 %i.m, 1073741823
  %i.ac = shl nuw nsw i32 %i.m, 1
  %spec.select.i.i = select i1 %i.ab, i32 %i.ac, i32 2147483647 ; 3 uses
  %.not.i9.i.i = icmp samesign ult i32 %i.m, %spec.select.i.i
  br i1 %.not.i9.i.i, label %bb.i, label %Vec_IntPush.exit.i

bb.i:                                             ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !39 ; 2 uses
  %.not9.i10.i.i = icmp eq ptr %i.ae, null
  %i.af = zext nneg i32 %spec.select.i.i to i64
  %i.ag = shl nuw nsw i64 %i.af, 2                ; 2 uses
  br i1 %.not9.i10.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = tail call ptr @realloc(ptr noundef nonnull %i.ae, i64 noundef %i.ag) #11
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.ai = tail call noalias ptr @malloc(i64 noundef %i.ag) #10
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.aj = phi ptr [ %i.ah, %bb.j ], [ %i.ai, %bb.k ]
  store ptr %i.aj, ptr %i.ad, align 8, !tbaa !39
  br label %Vec_IntGrow.exit11.sink.split.i.i

Vec_IntGrow.exit11.sink.split.i.i:                ; preds = %bb.l, %Vec_IntGrow.exit.i.i
  %spec.select.sink.i.i = phi i32 [ %spec.select.i.i, %bb.l ], [ 16, %Vec_IntGrow.exit.i.i ]
  store i32 %spec.select.sink.i.i, ptr %2, align 8, !tbaa !38
  %.pre.i = load i32, ptr %i.l, align 4, !tbaa !37
  br label %Vec_IntPush.exit.i

Vec_IntPush.exit.i:                               ; preds = %Vec_IntGrow.exit11.sink.split.i.i, %bb.h, %._crit_edge.i
  %i.ak = phi i32 [ %i.m, %._crit_edge.i ], [ %i.m, %bb.h ], [ %.pre.i, %Vec_IntGrow.exit11.sink.split.i.i ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !39
  %i.an = add nsw i32 %i.ak, 1
  store i32 %i.an, ptr %i.l, align 4, !tbaa !37
  %i.ao = sext i32 %i.ak to i64
  %i.ap = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.ao
  store i32 %i.k, ptr %i.ap, align 4, !tbaa !42
  br label %Vec_IntPushUnique.exit

tailrecurse:                                      ; preds = %.lr.ph33
  %i.aq = load i64, ptr %.tr151932, align 4       ; 2 uses
  %i.ar = and i64 %i.aq, 536870911
  %i.as = sub nsw i64 0, %i.ar
  %i.at = getelementptr inbounds [12 x i8], ptr %.tr151932, i64 %i.as
  %i.au = lshr i64 %i.aq, 29
  %i.av = and i64 %i.au, 1
  %i.aw = ptrtoint ptr %i.at to i64
  %i.ax = xor i64 %i.av, %i.aw
  %i.ay = inttoptr i64 %i.ax to ptr
  tail call fastcc void @Ssc_ManCollectSuper_rec(ptr noundef %0, ptr noundef %i.ay, ptr noundef %2)
  %i.az = load i64, ptr %.tr151932, align 4       ; 2 uses
  %i.ba = lshr i64 %i.az, 32
  %i.bb = and i64 %i.ba, 536870911
  %i.bc = sub nsw i64 0, %i.bb
  %i.bd = getelementptr inbounds [12 x i8], ptr %.tr151932, i64 %i.bc
  %i.be = lshr i64 %i.az, 61
  %i.bf = and i64 %i.be, 1
  %i.bg = ptrtoint ptr %i.bd to i64
  %i.bh = xor i64 %i.bf, %i.bg                    ; 5 uses
  %i.bi = and i64 %i.bh, 1
  %.not = icmp eq i64 %i.bi, 0
  br i1 %.not, label %.lr.ph, label %._crit_edge

Vec_IntPushUnique.exit:                           ; preds = %bb.c, %Vec_IntPush.exit.i
  ret void
}

; Function Attrs: nounwind
declare i32 @clock_gettime(i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { nounwind allocsize(1) }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !45}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS11Ssc_Pars_t_", !9, i64 0}
!11 = !{!"p1 _ZTS10Gia_Man_t_", !9, i64 0}
!12 = !{!"p1 _ZTS12sat_solver_t", !9, i64 0}
!13 = !{!"p1 _ZTS10Vec_Int_t_", !9, i64 0}
!14 = !{!"long", !5, i64 0}
!15 = !{!"Ssc_Man_t_", !10, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !12, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !6, i64 64, !6, i64 68, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !6, i64 128, !14, i64 136, !14, i64 144, !14, i64 152, !14, i64 160, !14, i64 168, !14, i64 176, !14, i64 184, !14, i64 192, !14, i64 200}
!16 = !{!15, !11, i64 24}
!17 = !{!"any p2 pointer", !9, i64 0}
!18 = !{!"p2 int", !17, i64 0}
!19 = !{!"p1 int", !9, i64 0}
!20 = !{!"p1 omnipotent char", !9, i64 0}
!21 = !{!15, !6, i64 68}
!22 = !{!"p1 _ZTS10Gia_Obj_t_", !9, i64 0}
!23 = !{!"Vec_Int_t_", !6, i64 0, !6, i64 4, !19, i64 8}
!24 = !{!"p1 _ZTS10Gia_Rpr_t_", !9, i64 0}
!25 = !{!"p1 _ZTS10Vec_Wec_t_", !9, i64 0}
!26 = !{!"p1 _ZTS10Vec_Str_t_", !9, i64 0}
!27 = !{!"p1 _ZTS10Abc_Cex_t_", !9, i64 0}
!28 = !{!"p1 _ZTS10Vec_Ptr_t_", !9, i64 0}
!29 = !{!"p1 _ZTS10Gia_Plc_t_", !9, i64 0}
!30 = !{!"p1 _ZTS10Vec_Flt_t_", !9, i64 0}
!31 = !{!"float", !5, i64 0}
!32 = !{!"p1 _ZTS10Vec_Vec_t_", !9, i64 0}
!33 = !{!"p1 _ZTS10Vec_Wrd_t_", !9, i64 0}
!34 = !{!"p1 _ZTS10Vec_Bit_t_", !9, i64 0}
!35 = !{!"p1 _ZTS10Gia_Dat_t_", !9, i64 0}
!36 = !{!"Gia_Man_t_", !20, i64 0, !20, i64 8, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !22, i64 32, !19, i64 40, !6, i64 48, !6, i64 52, !6, i64 56, !13, i64 64, !13, i64 72, !23, i64 80, !23, i64 96, !6, i64 112, !6, i64 116, !6, i64 120, !23, i64 128, !19, i64 144, !19, i64 152, !13, i64 160, !6, i64 168, !6, i64 172, !6, i64 176, !6, i64 180, !19, i64 184, !24, i64 192, !19, i64 200, !19, i64 208, !19, i64 216, !6, i64 224, !6, i64 228, !19, i64 232, !6, i64 240, !13, i64 248, !13, i64 256, !13, i64 264, !25, i64 272, !25, i64 280, !13, i64 288, !9, i64 296, !13, i64 304, !13, i64 312, !26, i64 320, !20, i64 328, !13, i64 336, !13, i64 344, !13, i64 352, !13, i64 360, !13, i64 368, !27, i64 376, !27, i64 384, !28, i64 392, !23, i64 400, !23, i64 416, !13, i64 432, !13, i64 440, !13, i64 448, !13, i64 456, !13, i64 464, !13, i64 472, !13, i64 480, !13, i64 488, !13, i64 496, !13, i64 504, !13, i64 512, !20, i64 520, !29, i64 528, !11, i64 536, !30, i64 544, !30, i64 552, !13, i64 560, !13, i64 568, !13, i64 576, !13, i64 584, !13, i64 592, !6, i64 600, !31, i64 604, !31, i64 608, !13, i64 616, !19, i64 624, !6, i64 632, !28, i64 640, !28, i64 648, !28, i64 656, !13, i64 664, !13, i64 672, !13, i64 680, !13, i64 688, !13, i64 696, !13, i64 704, !13, i64 712, !13, i64 720, !13, i64 728, !32, i64 736, !30, i64 744, !9, i64 752, !9, i64 760, !9, i64 768, !14, i64 776, !14, i64 784, !9, i64 792, !19, i64 800, !6, i64 808, !6, i64 812, !6, i64 816, !6, i64 820, !6, i64 824, !6, i64 828, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !33, i64 856, !33, i64 864, !33, i64 872, !33, i64 880, !13, i64 888, !13, i64 896, !13, i64 904, !34, i64 912, !6, i64 920, !6, i64 924, !6, i64 928, !13, i64 936, !6, i64 944, !6, i64 948, !13, i64 952, !13, i64 960, !28, i64 968, !33, i64 976, !13, i64 984, !13, i64 992, !6, i64 1000, !6, i64 1004, !33, i64 1008, !23, i64 1016, !23, i64 1032, !23, i64 1048, !35, i64 1064, !26, i64 1072, !26, i64 1080, !6, i64 1088, !6, i64 1092, !6, i64 1096, !6, i64 1100, !26, i64 1104, !13, i64 1112, !13, i64 1120, !13, i64 1128, !28, i64 1136}
!37 = !{!23, !6, i64 4}
!38 = !{!23, !6, i64 0}
!39 = !{!23, !19, i64 8}
!40 = !{!15, !13, i64 40}
!41 = !{!15, !13, i64 48}
!42 = !{!6, !6, i64 0}
!43 = !{!36, !13, i64 64}
!44 = !{!36, !22, i64 32}
!45 = !{!"llvm.loop.mustprogress"}
!46 = !{!15, !12, i64 32}
!47 = !{!"Sat_Mem_t_", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !18, i64 48}
!48 = !{!"p1 _ZTS8clause_t", !9, i64 0}
!49 = !{!"p1 _ZTS6veci_t", !9, i64 0}
!50 = !{!"p1 long", !9, i64 0}
!51 = !{!"veci_t", !6, i64 0, !6, i64 4, !19, i64 8}
!52 = !{!"double", !5, i64 0}
!53 = !{!"stats_t", !6, i64 0, !6, i64 4, !6, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48, !14, i64 56, !14, i64 64}
!54 = !{!"p1 double", !9, i64 0}
!55 = !{!"p1 _ZTS8_IO_FILE", !9, i64 0}
!56 = !{!"sat_solver_t", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !47, i64 16, !6, i64 72, !6, i64 76, !48, i64 80, !49, i64 88, !6, i64 96, !6, i64 100, !6, i64 104, !6, i64 108, !6, i64 112, !14, i64 120, !14, i64 128, !14, i64 136, !50, i64 144, !50, i64 152, !6, i64 160, !6, i64 164, !51, i64 168, !20, i64 184, !6, i64 192, !19, i64 200, !20, i64 208, !20, i64 216, !20, i64 224, !20, i64 232, !19, i64 240, !19, i64 248, !19, i64 256, !51, i64 264, !51, i64 280, !51, i64 296, !51, i64 312, !19, i64 328, !51, i64 336, !6, i64 352, !6, i64 356, !6, i64 360, !52, i64 368, !52, i64 376, !6, i64 384, !6, i64 388, !6, i64 392, !53, i64 400, !6, i64 472, !6, i64 476, !6, i64 480, !6, i64 484, !6, i64 488, !14, i64 496, !14, i64 504, !14, i64 512, !51, i64 520, !54, i64 536, !6, i64 544, !6, i64 548, !6, i64 552, !51, i64 560, !51, i64 576, !6, i64 592, !6, i64 596, !6, i64 600, !19, i64 608, !9, i64 616, !6, i64 624, !55, i64 632, !6, i64 640, !6, i64 644, !51, i64 648, !51, i64 664, !51, i64 680, !9, i64 696, !9, i64 704, !6, i64 712, !9, i64 720}
!57 = !{!15, !10, i64 0}
!58 = !{!"Ssc_Pars_t_", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24}
!59 = !{!58, !6, i64 4}
!60 = !{!"timespec", !14, i64 0, !14, i64 8}
!61 = !{!60, !14, i64 0}
!62 = !{!60, !14, i64 8}
!63 = distinct !{!63, !45}
!64 = distinct !{!64, !45}
!65 = !{!"p1 _ZTS10Aig_Man_t_", !9, i64 0}
!66 = !{!"Cnf_Dat_t_", !65, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !18, i64 24, !19, i64 32, !19, i64 40, !19, i64 48, !20, i64 56, !13, i64 64}
!67 = !{!66, !6, i64 8}
!68 = !{!15, !6, i64 64}
!69 = !{!15, !11, i64 8}
!70 = !{!36, !6, i64 24}
!71 = !{!36, !13, i64 72}
!72 = !{!15, !11, i64 16}
!73 = !{!66, !19, i64 32}
!74 = !{!66, !6, i64 16}
!75 = !{!66, !18, i64 24}
!76 = !{!19, !19, i64 0}
!77 = distinct !{!77, !45}
!78 = !{!56, !19, i64 328}
!79 = !{!56, !6, i64 12}
!80 = !{!56, !6, i64 8}
!81 = !{!15, !14, i64 176}
!82 = !{!15, !13, i64 88}
!83 = !{!15, !14, i64 168}
!84 = !{!15, !14, i64 184}
!85 = distinct !{!85, !45}
!86 = distinct !{!86, !45}
!87 = distinct !{!87, !45}
!88 = distinct !{!88, !45}
!89 = !{!15, !13, i64 72}
!90 = !{!15, !13, i64 80}
!91 = !{!22, !22, i64 0}
!92 = !{!15, !14, i64 152}
end_hunk_0
