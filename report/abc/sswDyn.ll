Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/sswDyn?download=true
inline.NumInlined: 122
inline.NumDeleted: 50
begin_hunk_0_@Ssw_ManCollectPos_rec:bb.a
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr inbounds [4 x i8], ptr %.val31.peel, i64 %i.p
  %.pre = load i32, ptr %i.q, align 4, !tbaa !50  ; 2 uses
  %i.r = getelementptr i8, ptr %i.m, i64 32
  %.val32.peel = load ptr, ptr %i.r, align 8, !tbaa !51 ; 2 uses
  %.not.i.peel = icmp eq ptr %.val32.peel, null
  br i1 %.not.i.peel, label %Aig_ManObj.exit.peel, label %bb.d

bb.d:                                             ; preds = %.critedge.peel
  %i.s = ashr i32 %.pre, 1
  %i.t = getelementptr i8, ptr %.val32.peel, i64 8
  %.val.i.peel = load ptr, ptr %i.t, align 8, !tbaa !38
  %i.u = sext i32 %i.s to i64
  %i.v = getelementptr inbounds [8 x i8], ptr %.val.i.peel, i64 %i.u
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !39
  br label %Aig_ManObj.exit.peel

Aig_ManObj.exit.peel:                             ; preds = %bb.d, %.critedge.peel
  %i.x = phi ptr [ %i.w, %bb.d ], [ null, %.critedge.peel ]
  tail call void @Ssw_ManCollectPos_rec(ptr noundef nonnull %0, ptr noundef %i.x, ptr noundef %2)
  %i.y = load i64, ptr %i.a, align 8
  %i.z = and i64 %i.y, 4294967168
  %.not45 = icmp eq i64 %i.z, 0
  br i1 %.not45, label %.loopexit, label %.critedge

bb.e:                                             ; preds = %bb.c
  %.val27 = load i32, ptr %1, align 8, !tbaa !52  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !24
  %i.ac = getelementptr i8, ptr %i.ab, i64 140
  %.val28 = load i32, ptr %i.ac, align 4, !tbaa !50
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !34
  %i.af = getelementptr i8, ptr %i.ae, i64 104
  %.val29 = load i32, ptr %i.af, align 8, !tbaa !77
  %i.ag = sub nsw i32 %.val28, %.val29
  %.not25 = icmp slt i32 %.val27, %i.ag
  br i1 %.not25, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  %i.ah = sdiv i32 %.val27, 2
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !54 ; 7 uses
  %i.ak = load i32, ptr %2, align 8, !tbaa !78
  %i.al = icmp eq i32 %i.aj, %i.ak
  br i1 %i.al, label %bb.g, label %Vec_IntPush.exit

bb.g:                                             ; preds = %bb.f
  %i.am = icmp slt i32 %i.aj, 16
  br i1 %i.am, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !55 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.ao, null
  br i1 %.not9.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ap = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.ao, i64 noundef 64) #9
  br label %Vec_IntGrow.exit.i

bb.j:                                             ; preds = %bb.h
  %i.aq = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #10
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.j, %bb.i
  %i.ar = phi ptr [ %i.ap, %bb.i ], [ %i.aq, %bb.j ]
  store ptr %i.ar, ptr %i.an, align 8, !tbaa !55
  br label %Vec_IntGrow.exit11.sink.split.i

bb.k:                                             ; preds = %bb.g
  %i.as = icmp samesign ult i32 %i.aj, 1073741823
  %i.at = shl nuw nsw i32 %i.aj, 1
  %spec.select.i = select i1 %i.as, i32 %i.at, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %i.aj, %spec.select.i
  br i1 %.not.i9.i, label %bb.l, label %Vec_IntPush.exit

bb.l:                                             ; preds = %bb.k
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !55 ; 2 uses
  %.not9.i10.i = icmp eq ptr %i.av, null
  %i.aw = zext nneg i32 %spec.select.i to i64
  %i.ax = shl nuw nsw i64 %i.aw, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ay = tail call ptr @realloc(ptr noundef nonnull %i.av, i64 noundef %i.ax) #9
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.az = tail call noalias ptr @malloc(i64 noundef %i.ax) #10
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ba = phi ptr [ %i.ay, %bb.m ], [ %i.az, %bb.n ]
  store ptr %i.ba, ptr %i.au, align 8, !tbaa !55
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.o, %Vec_IntGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.o ], [ 16, %Vec_IntGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %2, align 8, !tbaa !78
  %.pre40 = load i32, ptr %i.ai, align 4, !tbaa !54
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.f, %bb.k, %Vec_IntGrow.exit11.sink.split.i
  %i.bb = phi i32 [ %i.aj, %bb.f ], [ %i.aj, %bb.k ], [ %.pre40, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !55
  %i.be = add nsw i32 %i.bb, 1
  store i32 %i.be, ptr %i.ai, align 4, !tbaa !54
  %i.bf = sext i32 %i.bb to i64
  %i.bg = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %i.bf
  store i32 %i.ah, ptr %i.bg, align 4, !tbaa !50
  br label %.loopexit

.critedge:                                        ; preds = %Aig_ManObj.exit.peel, %Aig_ManObj.exit
  %.035 = phi i32 [ %i.bx, %Aig_ManObj.exit ], [ 1, %Aig_ManObj.exit.peel ]
  %.02234 = phi i32 [ %i.bq, %Aig_ManObj.exit ], [ %.pre, %Aig_ManObj.exit.peel ] ; 2 uses
  %i.bh = load ptr, ptr %i.l, align 8, !tbaa !24  ; 2 uses
  %.phi.trans.insert = getelementptr i8, ptr %i.bh, i64 32
  %.val32.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !51 ; 2 uses
  %i.bi = getelementptr i8, ptr %i.bh, i64 176
  %.val30 = load ptr, ptr %i.bi, align 8, !tbaa !76
  %i.bj = and i32 %.02234, 1
  %i.bk = add nuw nsw i32 %i.bj, 3
  %i.bl = ashr i32 %.02234, 1
  %i.bm = mul nsw i32 %i.bl, 5
  %i.bn = add i32 %i.bk, %i.bm
  %i.bo = sext i32 %i.bn to i64
  %i.bp = getelementptr inbounds [4 x i8], ptr %.val30, i64 %i.bo
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !50 ; 2 uses
  %.not.i = icmp eq ptr %.val32.pre, null
  br i1 %.not.i, label %Aig_ManObj.exit, label %bb.p

bb.p:                                             ; preds = %.critedge
  %i.br = ashr i32 %i.bq, 1
  %i.bs = getelementptr i8, ptr %.val32.pre, i64 8
  %.val.i = load ptr, ptr %i.bs, align 8, !tbaa !38
  %i.bt = sext i32 %i.br to i64
  %i.bu = getelementptr inbounds [8 x i8], ptr %.val.i, i64 %i.bt
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !39
  br label %Aig_ManObj.exit

Aig_ManObj.exit:                                  ; preds = %.critedge, %bb.p
  %i.bw = phi ptr [ %i.bv, %bb.p ], [ null, %.critedge ]
  tail call void @Ssw_ManCollectPos_rec(ptr noundef nonnull %0, ptr noundef %i.bw, ptr noundef %2)
  %i.bx = add nuw nsw i32 %.035, 1                ; 2 uses
  %i.by = load i64, ptr %i.a, align 8
  %i.bz = trunc i64 %i.by to i32
  %i.ca = lshr i32 %i.bz, 6
  %i.cb = icmp samesign ult i32 %i.bx, %i.ca
  br i1 %i.cb, label %.critedge, label %.loopexit, !llvm.loop !75

.loopexit:                                        ; preds = %Aig_ManObj.exit, %Aig_ManObj.exit.peel, %.preheader, %bb.e, %bb.b, %bb.a, %Vec_IntPush.exit
  ret void
}

; Function Attrs: nounwind uwtable
define void @Ssw_ManLoadSolver(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !56
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.c = load i32, ptr %i.b, align 4, !tbaa !58   ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 8
  %.val49 = load i32, ptr %i.d, align 8, !tbaa !33 ; 2 uses
  %i.e = getelementptr i8, ptr %0, i64 32
  %.val50 = load ptr, ptr %i.e, align 8, !tbaa !40 ; 2 uses
  %i.f = getelementptr i8, ptr %1, i64 36
  %.val51 = load i32, ptr %i.f, align 4, !tbaa !41
  %i.g = mul nsw i32 %.val51, %.val49
  %i.h = add nsw i32 %i.g, %i.c
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr inbounds [8 x i8], ptr %.val50, i64 %i.i
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !42
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = and i64 %i.l, -2
  %i.n = inttoptr i64 %i.m to ptr                 ; 2 uses
  %i.o = getelementptr i8, ptr %2, i64 36
  %.val48 = load i32, ptr %i.o, align 4, !tbaa !41
  %i.p = mul nsw i32 %.val48, %.val49
  %i.q = add nsw i32 %i.p, %i.c
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds [8 x i8], ptr %.val50, i64 %i.r
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !42
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = and i64 %i.u, -2
  %i.w = inttoptr i64 %i.v to ptr                 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !59
  tail call void @Ssw_CnfNodeAddToSolver(ptr noundef %i.y, ptr noundef %i.n) #11
  %i.z = load ptr, ptr %i.x, align 8, !tbaa !59
  tail call void @Ssw_CnfNodeAddToSolver(ptr noundef %i.z, ptr noundef %i.w) #11
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 4 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !82 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  store i32 0, ptr %i.ac, align 4, !tbaa !45
  tail call void @Ssw_ManCollectPis_rec(ptr noundef %i.n, ptr noundef %i.ab)
  %i.ad = load ptr, ptr %i.aa, align 8, !tbaa !82
  tail call void @Ssw_ManCollectPis_rec(ptr noundef %i.w, ptr noundef %i.ad)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 4 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !83
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  store i32 0, ptr %i.ag, align 4, !tbaa !54
  %i.ah = load ptr, ptr %i.aa, align 8, !tbaa !82 ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 4
  %.val5259 = load i32, ptr %i.ai, align 4, !tbaa !45
  %i.aj = icmp sgt i32 %.val5259, 0
  br i1 %i.aj, label %.lr.ph, label %.critedge2

.critedge.preheader:                              ; preds = %.lr.ph
  %.pre = load ptr, ptr %i.ae, align 8, !tbaa !83 ; 2 uses
  %.phi.trans.insert = getelementptr i8, ptr %.pre, i64 4
  %.val5361.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !54
  %i.ak = icmp sgt i32 %.val5361.pre, 0
  br i1 %i.ak, label %.lr.ph63, label %.critedge2

.lr.ph63:                                         ; preds = %.critedge.preheader
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.b

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.a ] ; 2 uses
  %i.am = phi ptr [ %i.ar, %.lr.ph ], [ %i.ah, %bb.a ]
  %i.an = getelementptr i8, ptr %i.am, i64 8
  %.val = load ptr, ptr %i.an, align 8, !tbaa !38
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %indvars.iv
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !39
  %i.aq = load ptr, ptr %i.ae, align 8, !tbaa !83
  tail call void @Ssw_ManCollectPos_rec(ptr noundef nonnull %0, ptr noundef %i.ap, ptr noundef %i.aq)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ar = load ptr, ptr %i.aa, align 8, !tbaa !82 ; 2 uses
  %i.as = getelementptr i8, ptr %i.ar, i64 4
  %.val52 = load i32, ptr %i.as, align 4, !tbaa !45
  %i.at = sext i32 %.val52 to i64
  %i.au = icmp slt i64 %indvars.iv.next, %i.at
  br i1 %i.au, label %.lr.ph, label %.critedge.preheader, !llvm.loop !80

bb.b:                                             ; preds = %.lr.ph63, %.critedge
  %i.av = phi ptr [ %.pre, %.lr.ph63 ], [ %i.bv, %.critedge ] ; 2 uses
  %indvars.iv65 = phi i64 [ 0, %.lr.ph63 ], [ %indvars.iv.next66, %.critedge ] ; 2 uses
  %i.aw = getelementptr i8, ptr %i.av, i64 8
  %.val54 = load ptr, ptr %i.aw, align 8, !tbaa !55
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %.val54, i64 %indvars.iv65
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !50
  %i.az = load ptr, ptr %i.al, align 8, !tbaa !24
  %i.ba = shl nsw i32 %i.ay, 1
  %i.bb = getelementptr i8, ptr %i.az, i64 24
  %.val56 = load ptr, ptr %i.bb, align 8, !tbaa !84
  %i.bc = getelementptr i8, ptr %.val56, i64 8
  %.val56.val = load ptr, ptr %i.bc, align 8, !tbaa !38
  %i.bd = sext i32 %i.ba to i64
  %i.be = getelementptr [8 x i8], ptr %.val56.val, i64 %i.bd ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !39 ; 2 uses
  %i.bg = getelementptr i8, ptr %i.be, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !39 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 24 ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8            ; 2 uses
  %i.bk = and i64 %i.bj, 32
  %.not44 = icmp eq i64 %i.bk, 0
  br i1 %.not44, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bm = load i64, ptr %i.bl, align 8
  %i.bn = and i64 %i.bm, 32
  %.not45 = icmp eq i64 %i.bn, 0
  br i1 %.not45, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.bo = or i64 %i.bj, 32
  store i64 %i.bo, ptr %i.bi, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bh, i64 24 ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8
  %i.br = or i64 %i.bq, 32
  store i64 %i.br, ptr %i.bp, align 8
  %i.bs = getelementptr i8, ptr %i.bf, i64 8
  %.val58 = load ptr, ptr %i.bs, align 8, !tbaa !47
  %i.bt = getelementptr i8, ptr %i.bh, i64 8
  %.val57 = load ptr, ptr %i.bt, align 8, !tbaa !47
  %i.bu = tail call i32 @Ssw_NodesAreConstrained(ptr noundef nonnull %0, ptr noundef %.val58, ptr noundef %.val57) #11 ; 0 uses
  %.pre69 = load ptr, ptr %i.ae, align 8, !tbaa !83
  br label %.critedge

.critedge:                                        ; preds = %bb.c, %bb.d
  %i.bv = phi ptr [ %i.av, %bb.c ], [ %.pre69, %bb.d ] ; 2 uses
  %indvars.iv.next66 = add nuw nsw i64 %indvars.iv65, 1 ; 2 uses
  %i.bw = getelementptr i8, ptr %i.bv, i64 4
  %.val53 = load i32, ptr %i.bw, align 4, !tbaa !54
  %i.bx = sext i32 %.val53 to i64
  %i.by = icmp slt i64 %indvars.iv.next66, %i.bx
  br i1 %i.by, label %bb.b, label %.critedge2, !llvm.loop !81

.critedge2:                                       ; preds = %.critedge, %bb.a, %.critedge.preheader
  %i.bz = load ptr, ptr %i.x, align 8, !tbaa !59
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !62 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 12
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !95
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !96
  %.not = icmp eq i32 %i.cd, %i.cf
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.critedge2
  %i.cg = tail call i32 @sat_solver_simplify(ptr noundef nonnull %i.cb) #11 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.critedge2
  ret void
}

declare void @Ssw_CnfNodeAddToSolver(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @Ssw_NodesAreConstrained(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @sat_solver_simplify(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define void @Ssw_ManSweepTransferDyn(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !36   ; 2 uses
  %i.e = getelementptr i8, ptr %i.d, i64 4
  %.val6568 = load i32, ptr %i.e, align 4, !tbaa !45
  %i.f = icmp sgt i32 %.val6568, 0
  br i1 %i.f, label %.lr.ph, label %.critedge.preheader

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 8
  %i.h = getelementptr i8, ptr %0, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  br label %bb.b

.critedge.preheader:                              ; preds = %bb.e, %bb.a
  %i.l = phi ptr [ %i.b, %bb.a ], [ %i.as, %bb.e ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !33   ; 3 uses
  %i.o = icmp sgt i32 %i.n, 1
  br i1 %i.o, label %.preheader67.lr.ph, label %.critedge._crit_edge

.preheader67.lr.ph:                               ; preds = %.critedge.preheader
  %i.p = getelementptr i8, ptr %0, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.s = getelementptr i8, ptr %i.l, i64 108
  %i.t = load i32, ptr %i.s, align 4, !tbaa !35
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %.preheader67, label %.critedge._crit_edge

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %i.v = phi ptr [ %i.d, %.lr.ph ], [ %i.au, %bb.e ]
  %i.w = getelementptr i8, ptr %i.v, i64 8
  %.val56 = load ptr, ptr %i.w, align 8, !tbaa !38
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %.val56, i64 %indvars.iv
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !39   ; 3 uses
  %.val60 = load i32, ptr %i.g, align 8, !tbaa !33
  %.val61 = load ptr, ptr %i.h, align 8, !tbaa !40
  %i.z = getelementptr i8, ptr %i.y, i64 36
  %.val62 = load i32, ptr %i.z, align 4, !tbaa !41
  %i.aa = mul nsw i32 %.val62, %.val60
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds [8 x i8], ptr %.val61, i64 %i.ab
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !42 ; 2 uses
  %i.ae = load ptr, ptr %i.i, align 8, !tbaa !24
  %i.af = getelementptr i8, ptr %i.ae, i64 48
  %.val66 = load ptr, ptr %i.af, align 8, !tbaa !32
  %i.ag = ptrtoint ptr %.val66 to i64
  %i.ah = xor i64 %i.ag, 1
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = icmp eq ptr %i.ad, %i.ai
  br i1 %i.aj, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ak = load ptr, ptr %i.k, align 8, !tbaa !64
  tail call void @Ssw_SmlObjAssignConst(ptr noundef %i.ak, ptr noundef nonnull %i.y, i32 noundef 0, i32 noundef 0) #11
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.al = load ptr, ptr %i.j, align 8, !tbaa !65
  %.val64 = load i32, ptr %i.ad, align 8, !tbaa !52
  %i.am = getelementptr i8, ptr %i.al, i64 8
  %.val55 = load ptr, ptr %i.am, align 8, !tbaa !38
  %i.an = sext i32 %.val64 to i64
  %i.ao = getelementptr inbounds [8 x i8], ptr %.val55, i64 %i.an
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !39
  %i.aq = load ptr, ptr %i.k, align 8, !tbaa !64
  %i.ar = load i32, ptr %i.ap, align 4, !tbaa !50
  tail call void @Ssw_SmlObjSetWord(ptr noundef %i.aq, ptr noundef nonnull %i.y, i32 noundef %i.ar, i32 noundef 0, i32 noundef 0) #11
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.as = load ptr, ptr %i.a, align 8, !tbaa !34  ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !36 ; 2 uses
  %i.av = getelementptr i8, ptr %i.au, i64 4
  %.val65 = load i32, ptr %i.av, align 4, !tbaa !45
  %i.aw = sext i32 %.val65 to i64
  %i.ax = icmp slt i64 %indvars.iv.next, %i.aw
  br i1 %i.ax, label %bb.b, label %.critedge.preheader, !llvm.loop !97

.preheader67:                                     ; preds = %.preheader67.lr.ph, %.critedge2
  %i.ay = phi i32 [ %i.bz, %.critedge2 ], [ %i.n, %.preheader67.lr.ph ]
  %i.az = phi ptr [ %i.ca, %.critedge2 ], [ %i.l, %.preheader67.lr.ph ] ; 3 uses
  %.073 = phi i32 [ %i.cb, %.critedge2 ], [ 1, %.preheader67.lr.ph ] ; 3 uses
  %i.ba = getelementptr i8, ptr %i.az, i64 108
  %.val5170 = load i32, ptr %i.ba, align 4, !tbaa !35
  %i.bb = icmp sgt i32 %.val5170, 0
  br i1 %i.bb, label %.lr.ph72, label %.critedge2

.lr.ph72:                                         ; preds = %.preheader67, %.lr.ph72
  %indvars.iv82 = phi i64 [ %indvars.iv.next83, %.lr.ph72 ], [ 0, %.preheader67 ] ; 2 uses
  %i.bc = phi ptr [ %i.bv, %.lr.ph72 ], [ %i.az, %.preheader67 ]
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !36
  %i.bf = getelementptr i8, ptr %i.be, i64 8
  %.val54 = load ptr, ptr %i.bf, align 8, !tbaa !38
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %.val54, i64 %indvars.iv82
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !39 ; 2 uses
  %.val57 = load i32, ptr %i.m, align 8, !tbaa !33
  %.val58 = load ptr, ptr %i.p, align 8, !tbaa !40
  %i.bi = getelementptr i8, ptr %i.bh, i64 36
  %.val59 = load i32, ptr %i.bi, align 4, !tbaa !41
  %i.bj = mul nsw i32 %.val59, %.val57
  %i.bk = add nsw i32 %i.bj, %.073
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr inbounds [8 x i8], ptr %.val58, i64 %i.bl
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !42
  %i.bo = load ptr, ptr %i.q, align 8, !tbaa !65
  %.val63 = load i32, ptr %i.bn, align 8, !tbaa !52
  %i.bp = getelementptr i8, ptr %i.bo, i64 8
  %.val53 = load ptr, ptr %i.bp, align 8, !tbaa !38
  %i.bq = sext i32 %.val63 to i64
  %i.br = getelementptr inbounds [8 x i8], ptr %.val53, i64 %i.bq
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !39
  %i.bt = load ptr, ptr %i.r, align 8, !tbaa !64
  %i.bu = load i32, ptr %i.bs, align 4, !tbaa !50
  tail call void @Ssw_SmlObjSetWord(ptr noundef %i.bt, ptr noundef %i.bh, i32 noundef %i.bu, i32 noundef 0, i32 noundef %.073) #11
  %indvars.iv.next83 = add nuw nsw i64 %indvars.iv82, 1 ; 2 uses
  %i.bv = load ptr, ptr %i.a, align 8, !tbaa !34  ; 3 uses
  %i.bw = getelementptr i8, ptr %i.bv, i64 108
  %.val51 = load i32, ptr %i.bw, align 4, !tbaa !35
  %i.bx = sext i32 %.val51 to i64
  %i.by = icmp slt i64 %indvars.iv.next83, %i.bx
  br i1 %i.by, label %.lr.ph72, label %.critedge2.loopexit, !llvm.loop !98

.critedge2.loopexit:                              ; preds = %.lr.ph72
  %.pre = load i32, ptr %i.m, align 8, !tbaa !33
  br label %.critedge2

.critedge2:                                       ; preds = %.critedge2.loopexit, %.preheader67
  %i.bz = phi i32 [ %.pre, %.critedge2.loopexit ], [ %i.ay, %.preheader67 ] ; 2 uses
  %i.ca = phi ptr [ %i.bv, %.critedge2.loopexit ], [ %i.az, %.preheader67 ]
  %i.cb = add nuw nsw i32 %.073, 1                ; 3 uses
  %i.cc = icmp slt i32 %i.cb, %i.bz
  br i1 %i.cc, label %.preheader67, label %.critedge._crit_edge, !llvm.loop !99

.critedge._crit_edge:                             ; preds = %.critedge2, %.preheader67.lr.ph, %.critedge.preheader
  %.0.lcssa = phi i32 [ 1, %.critedge.preheader ], [ %i.n, %.preheader67.lr.ph ], [ %i.cb, %.critedge2 ] ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !64
  %i.cf = tail call i32 @Ssw_SmlNumFrames(ptr noundef %i.ce) #11 ; 2 uses
  %i.cg = icmp slt i32 %.0.lcssa, %i.cf
  br i1 %i.cg, label %.preheader.lr.ph, label %._crit_edge

.preheader.lr.ph:                                 ; preds = %.critedge._crit_edge
  %i.ch = load ptr, ptr %i.a, align 8, !tbaa !34  ; 2 uses
  %i.ci = getelementptr i8, ptr %i.ch, i64 108
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !35
  %i.ck = icmp sgt i32 %i.cj, 0
  br i1 %i.ck, label %.preheader, label %._crit_edge

.preheader:                                       ; preds = %.preheader.lr.ph, %.critedge4
  %i.cl = phi ptr [ %i.cz, %.critedge4 ], [ %i.ch, %.preheader.lr.ph ] ; 3 uses
  %.177 = phi i32 [ %i.da, %.critedge4 ], [ %.0.lcssa, %.preheader.lr.ph ] ; 2 uses
  %i.cm = getelementptr i8, ptr %i.cl, i64 108
  %.val74 = load i32, ptr %i.cm, align 4, !tbaa !35
  %i.cn = icmp sgt i32 %.val74, 0
  br i1 %i.cn, label %.lr.ph76, label %.critedge4

.lr.ph76:                                         ; preds = %.preheader, %.lr.ph76
  %indvars.iv85 = phi i64 [ %indvars.iv.next86, %.lr.ph76 ], [ 0, %.preheader ] ; 2 uses
  %i.co = phi ptr [ %i.cv, %.lr.ph76 ], [ %i.cl, %.preheader ]
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !36
  %i.cr = getelementptr i8, ptr %i.cq, i64 8
  %.val52 = load ptr, ptr %i.cr, align 8, !tbaa !38
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %.val52, i64 %indvars.iv85
end_hunk_0
