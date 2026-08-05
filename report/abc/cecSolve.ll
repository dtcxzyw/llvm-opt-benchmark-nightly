inline.NumInlined: 361
inline.NumDeleted: 79
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@Cec_CnfNodeAddToSolver:bb.a

Vec_PtrGrow.exit12.sink.split.i.i111:             ; preds = %bb.ax, %Vec_PtrGrow.exit.i.i115
  %spec.select.sink.i.i112 = phi i32 [ %spec.select.i.i108, %bb.ax ], [ 16, %Vec_PtrGrow.exit.i.i115 ]
  store i32 %spec.select.sink.i.i112, ptr %i.fj, align 8, !tbaa !67
  %.pre.i113 = load i32, ptr %i.ft, align 4, !tbaa !54
  br label %Vec_PtrPushUnique.exit121

Vec_PtrPushUnique.exit121:                        ; preds = %._crit_edge.i105, %bb.at, %Vec_PtrGrow.exit12.sink.split.i.i111
  %i.gr = phi i32 [ %i.fh, %._crit_edge.i105 ], [ %i.fh, %bb.at ], [ %.pre.i113, %Vec_PtrGrow.exit12.sink.split.i.i111 ] ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !56
  %i.gu = add nsw i32 %i.gr, 1
  store i32 %i.gu, ptr %i.ft, align 4, !tbaa !54
  %i.gv = sext i32 %i.gr to i64
  %i.gw = getelementptr inbounds [8 x i8], ptr %i.gt, i64 %i.gv
  store ptr %i.fs, ptr %i.gw, align 8, !tbaa !57
  %.pre147 = load ptr, ptr %i.bd, align 8, !tbaa !70 ; 2 uses
  %.phi.trans.insert148 = getelementptr i8, ptr %.pre147, i64 4
  %.val62122.pre = load i32, ptr %.phi.trans.insert148, align 4, !tbaa !54
  %i.gx = icmp sgt i32 %.val62122.pre, 0
  br i1 %i.gx, label %.lr.ph.preheader, label %.critedge2

.lr.ph.preheader:                                 ; preds = %bb.ao, %Vec_PtrPushUnique.exit121
  %.ph = phi ptr [ %.pre147, %Vec_PtrPushUnique.exit121 ], [ %i.fj, %bb.ao ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.gy = phi ptr [ %i.hf, %.lr.ph ], [ %.ph, %.lr.ph.preheader ]
  %i.gz = getelementptr i8, ptr %i.gy, i64 8
  %.val65 = load ptr, ptr %i.gz, align 8, !tbaa !56
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %.val65, i64 %indvars.iv
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !57
  %i.hc = ptrtoint ptr %i.hb to i64
  %i.hd = and i64 %i.hc, -2
  %i.he = inttoptr i64 %i.hd to ptr
  tail call void @Cec_ObjAddToFrontier(ptr noundef nonnull %0, ptr noundef %i.he, ptr noundef nonnull %i.ay)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.hf = load ptr, ptr %i.bd, align 8, !tbaa !70 ; 2 uses
  %i.hg = getelementptr i8, ptr %i.hf, i64 4
  %.val62 = load i32, ptr %i.hg, align 4, !tbaa !54
  %i.hh = sext i32 %.val62 to i64
  %i.hi = icmp slt i64 %indvars.iv.next, %i.hh
  br i1 %i.hi, label %.lr.ph, label %.critedge2, !llvm.loop !71

.critedge2:                                       ; preds = %.lr.ph, %Vec_PtrPushUnique.exit121
  tail call void @Cec_AddClausesMux(ptr noundef nonnull %0, ptr noundef nonnull %i.bf)
  br label %bb.az

bb.ay:                                            ; preds = %bb.n
  tail call void @Cec_CollectSuper_rec(ptr noundef %i.bf, ptr noundef %i.bh, i32 noundef 1, i32 noundef 1)
  %i.hj = load ptr, ptr %i.bd, align 8, !tbaa !70 ; 3 uses
  %i.hk = getelementptr i8, ptr %i.hj, i64 4
  %.val61124 = load i32, ptr %i.hk, align 4, !tbaa !54
  %i.hl = icmp sgt i32 %.val61124, 0
  br i1 %i.hl, label %.lr.ph126, label %.critedge4

.lr.ph126:                                        ; preds = %bb.ay, %.lr.ph126
  %indvars.iv132 = phi i64 [ %indvars.iv.next133, %.lr.ph126 ], [ 0, %bb.ay ] ; 2 uses
  %i.hm = phi ptr [ %i.ht, %.lr.ph126 ], [ %i.hj, %bb.ay ]
  %i.hn = getelementptr i8, ptr %i.hm, i64 8
  %.val64 = load ptr, ptr %i.hn, align 8, !tbaa !56
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %.val64, i64 %indvars.iv132
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !57
  %i.hq = ptrtoint ptr %i.hp to i64
  %i.hr = and i64 %i.hq, -2
  %i.hs = inttoptr i64 %i.hr to ptr
  tail call void @Cec_ObjAddToFrontier(ptr noundef nonnull %0, ptr noundef %i.hs, ptr noundef nonnull %i.ay)
  %indvars.iv.next133 = add nuw nsw i64 %indvars.iv132, 1 ; 2 uses
  %i.ht = load ptr, ptr %i.bd, align 8, !tbaa !70 ; 3 uses
  %i.hu = getelementptr i8, ptr %i.ht, i64 4
  %.val61 = load i32, ptr %i.hu, align 4, !tbaa !54
  %i.hv = sext i32 %.val61 to i64
  %i.hw = icmp slt i64 %indvars.iv.next133, %i.hv
  br i1 %i.hw, label %.lr.ph126, label %.critedge4, !llvm.loop !72

.critedge4:                                       ; preds = %.lr.ph126, %bb.ay
  %.lcssa = phi ptr [ %i.hj, %bb.ay ], [ %i.ht, %.lr.ph126 ]
  tail call void @Cec_AddClausesSuper(ptr noundef nonnull %0, ptr noundef %i.bf, ptr noundef nonnull %.lcssa)
  br label %bb.az

bb.az:                                            ; preds = %.critedge2, %.critedge4
  %indvars.iv.next136 = add nuw nsw i64 %indvars.iv135, 1 ; 2 uses
  %.val63 = load i32, ptr %i.az, align 4, !tbaa !54
  %i.hx = sext i32 %.val63 to i64
  %i.hy = icmp slt i64 %indvars.iv.next136, %i.hx
  br i1 %i.hy, label %bb.n, label %.critedge, !llvm.loop !73

.critedge:                                        ; preds = %bb.az, %bb.m
  %i.hz = load ptr, ptr %i.bb, align 8, !tbaa !56 ; 2 uses
  %.not.i = icmp eq ptr %i.hz, null
  br i1 %.not.i, label %Vec_PtrFree.exit, label %bb.ba

bb.ba:                                            ; preds = %.critedge
  tail call void @free(ptr noundef nonnull %i.hz) #17
  br label %Vec_PtrFree.exit

Vec_PtrFree.exit:                                 ; preds = %.critedge, %bb.ba
  tail call void @free(ptr noundef nonnull %i.ay) #17
  br label %bb.bb

bb.bb:                                            ; preds = %bb.a, %Vec_PtrFree.exit, %Vec_PtrPush.exit
  ret void
}

declare void @sat_solver_setnvars(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @Cec_ManSatSolverRecycle(ptr nofree noundef captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !8    ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !68   ; 2 uses
  %i.f = getelementptr i8, ptr %i.e, i64 4        ; 3 uses
  %.val29 = load i32, ptr %i.f, align 4, !tbaa !54
  %i.g = icmp sgt i32 %.val29, 0
  br i1 %i.g, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.preheader
  %i.h = getelementptr i8, ptr %i.e, i64 8
  %.val21 = load ptr, ptr %i.h, align 8, !tbaa !56
  %i.i = getelementptr i8, ptr %0, i64 8
  %.val24 = load ptr, ptr %i.i, align 8, !tbaa !17
  %i.j = getelementptr i8, ptr %0, i64 48
  %.val25 = load ptr, ptr %i.j, align 8, !tbaa !18
  %i.k = getelementptr i8, ptr %.val24, i64 32
  %.val24.val = load ptr, ptr %i.k, align 8, !tbaa !19
  %i.l = ptrtoint ptr %.val24.val to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.val21, i64 %indvars.iv
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !57
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = sub i64 %i.o, %i.l
  %i.q = sdiv exact i64 %i.p, 12
  %sext.i = shl i64 %i.q, 32
  %i.r = ashr exact i64 %sext.i, 30
  %i.s = getelementptr inbounds i8, ptr %.val25, i64 %i.r
  store i32 0, ptr %i.s, align 4, !tbaa !36
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val = load i32, ptr %i.f, align 4, !tbaa !54
  %i.t = sext i32 %.val to i64
  %i.u = icmp slt i64 %indvars.iv.next, %i.t
  br i1 %i.u, label %bb.b, label %.critedge, !llvm.loop !74

.critedge:                                        ; preds = %bb.b, %.preheader
  store i32 0, ptr %i.f, align 4, !tbaa !54
  tail call void @sat_solver_delete(ptr noundef nonnull %i.c) #17
  br label %bb.c

bb.c:                                             ; preds = %.critedge, %bb.a
  %i.v = tail call ptr @sat_solver_new() #17      ; 2 uses
  store ptr %i.v, ptr %i.b, align 8, !tbaa !8
  tail call void @sat_solver_setnvars(ptr noundef %i.v, i32 noundef 1000) #17
  %i.w = load ptr, ptr %i.b, align 8, !tbaa !8    ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !75
  %i.z = sext i32 %i.y to i64
  %i.aa = tail call noalias ptr @calloc(i64 noundef %i.z, i64 noundef 8) #20
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 536
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !76
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store i32 1, ptr %i.ac, align 8, !tbaa !69
  store i32 3, ptr %i.a, align 4, !tbaa !36
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ae = call i32 @sat_solver_addclause(ptr noundef %i.w, ptr noundef nonnull %i.a, ptr noundef nonnull %i.ad) #17 ; 0 uses
  %i.af = load i32, ptr %i.ac, align 8, !tbaa !69 ; 2 uses
  %i.ag = add nsw i32 %i.af, 1
  store i32 %i.ag, ptr %i.ac, align 8, !tbaa !69
  %i.ah = getelementptr i8, ptr %0, i64 48
  %.val23 = load ptr, ptr %i.ah, align 8, !tbaa !18
  store i32 %i.af, ptr %.val23, align 4, !tbaa !36
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !77
  %i.ak = add nsw i32 %i.aj, 1
  store i32 %i.ak, ptr %i.ai, align 8, !tbaa !77
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 0, ptr %i.al, align 4, !tbaa !78
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret void
}

declare void @sat_solver_delete(ptr noundef) local_unnamed_addr #3

declare ptr @sat_solver_new() local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define void @Cec_SetActivityFactors_rec(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #1 {
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %6 = getelementptr i8, ptr %0, i64 48
  %7 = sub nsw i32 %3, %2
  %8 = sitofp i32 %7 to float
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.a

bb.a:                                             ; preds = %tailrecurse, %4
  %.tr40 = phi ptr [ %1, %4 ], [ %i.bx, %tailrecurse ] ; 8 uses
  %i.a = load ptr, ptr %5, align 8, !tbaa !17     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 624
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !79
  %i.d = getelementptr i8, ptr %i.a, i64 32
  %.val.i43 = load ptr, ptr %i.d, align 8, !tbaa !19 ; 2 uses
  %i.e = ptrtoint ptr %.tr40 to i64               ; 2 uses
  %i.f = ptrtoint ptr %.val.i43 to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 12
  %sext.i44 = shl i64 %i.h, 32
  %i.i = ashr exact i64 %sext.i44, 30
  %i.j = getelementptr inbounds i8, ptr %i.c, i64 %i.i ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !36
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %i.m = load i32, ptr %i.l, align 8, !tbaa !80   ; 2 uses
  %.not45 = icmp eq i32 %i.k, %i.m
  br i1 %.not45, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 %i.m, ptr %i.j, align 4, !tbaa !36
  %i.n = getelementptr i8, ptr %i.a, i64 160
  %.val36 = load ptr, ptr %i.n, align 8, !tbaa !81
  %i.o = tail call fastcc i32 @Gia_ObjLevel(ptr %.val.i43, ptr %.val36, ptr noundef %.tr40)
  %.not28 = icmp sgt i32 %i.o, %2
  br i1 %.not28, label %bb.c, label %._crit_edge

bb.c:                                             ; preds = %bb.b
  %.val32 = load i64, ptr %.tr40, align 4         ; 2 uses
  %i.p = and i64 %.val32, 2684354559
  %narrow.i.not = icmp eq i64 %i.p, 2684354559
  br i1 %narrow.i.not, label %._crit_edge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val = load ptr, ptr %5, align 8, !tbaa !17    ; 2 uses
  %.val31 = load ptr, ptr %6, align 8, !tbaa !18
  %i.q = getelementptr i8, ptr %.val, i64 32
  %.val.val = load ptr, ptr %i.q, align 8, !tbaa !19 ; 2 uses
  %i.r = ptrtoint ptr %.val.val to i64
  %i.s = sub i64 %i.e, %i.r
  %i.t = sdiv exact i64 %i.s, 12
  %sext.i39 = shl i64 %i.t, 32
  %i.u = ashr exact i64 %sext.i39, 30
  %i.v = getelementptr inbounds i8, ptr %.val31, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !36   ; 3 uses
  %.not30 = icmp eq i32 %i.w, 0
  br i1 %.not30, label %tailrecurse, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr i8, ptr %.val, i64 160
  %.val34 = load ptr, ptr %i.x, align 8, !tbaa !81
  %i.y = tail call fastcc i32 @Gia_ObjLevel(ptr %.val.val, ptr %.val34, ptr noundef nonnull %.tr40)
  %i.z = sub nsw i32 %i.y, %2
  %i.aa = sitofp i32 %i.z to float
  %i.ab = fmul nnan float %i.aa, 2.000000e+01
  %i.ac = fdiv float %i.ab, %8
  %i.ad = fpext float %i.ac to double
  %i.ae = load ptr, ptr %9, align 8, !tbaa !8     ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 536
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !76
  %i.ah = sext i32 %i.w to i64
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.ah
  store double %i.ad, ptr %i.ai, align 8, !tbaa !82
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 520 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 524 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !83 ; 5 uses
  %i.am = load i32, ptr %i.aj, align 8, !tbaa !84
  %i.an = icmp eq i32 %i.al, %i.am
  br i1 %i.an, label %bb.f, label %veci_push.exit

bb.f:                                             ; preds = %bb.e
  %i.ao = icmp slt i32 %i.al, 4
  %i.ap = shl nsw i32 %i.al, 1
  %i.aq = lshr i32 %i.al, 1
  %i.ar = mul nuw nsw i32 %i.aq, 3
  %i.as = select i1 %i.ao, i32 %i.ap, i32 %i.ar   ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ae, i64 528 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !85 ; 2 uses
  %.not.i = icmp eq ptr %i.au, null
  %i.av = sext i32 %i.as to i64
  %i.aw = shl nsw i64 %i.av, 2                    ; 2 uses
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ax = tail call ptr @realloc(ptr noundef nonnull %i.au, i64 noundef %i.aw) #19
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ay = tail call noalias ptr @malloc(i64 noundef %i.aw) #18
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.az = phi ptr [ %i.ax, %bb.g ], [ %i.ay, %bb.h ] ; 2 uses
  store ptr %i.az, ptr %i.at, align 8, !tbaa !85
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bb = load i32, ptr %i.aj, align 8, !tbaa !84
  %i.bc = sitofp i32 %i.bb to double
  %i.bd = fmul nnan double %i.bc, f0x3EB0000000000000
  %i.be = sitofp i32 %i.as to double
  %i.bf = fmul nnan double %i.be, f0x3EB0000000000000
  %i.bg = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %i.bd, double noundef %i.bf) ; 0 uses
  %i.bh = load ptr, ptr @stdout, align 8, !tbaa !86
  %i.bi = tail call i32 @fflush(ptr noundef %i.bh) ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  store i32 %i.as, ptr %i.aj, align 8, !tbaa !84
  %.pre.i = load i32, ptr %i.ak, align 4, !tbaa !83
  br label %veci_push.exit

veci_push.exit:                                   ; preds = %bb.e, %bb.k
  %i.bj = phi i32 [ %.pre.i, %bb.k ], [ %i.al, %bb.e ] ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ae, i64 528
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !85
  %i.bm = add nsw i32 %i.bj, 1
  store i32 %i.bm, ptr %i.ak, align 4, !tbaa !83
  %i.bn = sext i32 %i.bj to i64
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.bl, i64 %i.bn
  store i32 %i.w, ptr %i.bo, align 4, !tbaa !36
  %.pre = load i64, ptr %.tr40, align 4
  br label %tailrecurse

tailrecurse:                                      ; preds = %veci_push.exit, %bb.d
  %i.bp = phi i64 [ %.pre, %veci_push.exit ], [ %.val32, %bb.d ]
  %i.bq = and i64 %i.bp, 536870911
  %i.br = sub nsw i64 0, %i.bq
  %i.bs = getelementptr inbounds [12 x i8], ptr %.tr40, i64 %i.br
  tail call void @Cec_SetActivityFactors_rec(ptr noundef nonnull %0, ptr noundef nonnull %i.bs, i32 noundef %2, i32 noundef %3)
  %i.bt = load i64, ptr %.tr40, align 4
  %i.bu = lshr i64 %i.bt, 32
  %i.bv = and i64 %i.bu, 536870911
  %i.bw = sub nsw i64 0, %i.bv
  %i.bx = getelementptr inbounds [12 x i8], ptr %.tr40, i64 %i.bw
  br label %bb.a

._crit_edge:                                      ; preds = %bb.b, %bb.c, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define internal fastcc i32 @Gia_ObjLevel(ptr %.32.val, ptr nofree captures(none) %.160.val, ptr noundef %0) unnamed_addr #8 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = ptrtoint ptr %.32.val to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = sdiv exact i64 %i.c, 12                  ; 2 uses
  %i.e = trunc i64 %i.d to i32                    ; 6 uses
  %i.f = add nsw i32 %i.e, 1                      ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.160.val, i64 4 ; 3 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !87   ; 4 uses
  %.not.i.not.i.i = icmp sgt i32 %i.h, %i.e
  br i1 %.not.i.not.i.i, label %Gia_ObjLevelId.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load i32, ptr %.160.val, align 8, !tbaa !88 ; 4 uses
  %i.j = shl nsw i32 %i.i, 1                      ; 2 uses
  %.not.i.i = icmp sgt i32 %i.j, %i.e
  %.not.i.i.not.i.i = icmp sgt i32 %i.i, %i.e     ; 2 uses
  br i1 %.not.i.i, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %.not.i.i.not.i.i, label %Vec_IntGrow.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.160.val, i64 8 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !89   ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.l, null
  %i.m = sext i32 %i.f to i64
  %i.n = shl nsw i64 %i.m, 2                      ; 2 uses
  br i1 %.not9.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = tail call ptr @realloc(ptr noundef nonnull %i.l, i64 noundef %i.n) #19
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.p = tail call noalias ptr @malloc(i64 noundef %i.n) #18
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.q = phi ptr [ %i.o, %bb.e ], [ %i.p, %bb.f ]
  store ptr %i.q, ptr %i.k, align 8, !tbaa !89
  br label %Vec_IntGrow.exit.sink.split.i.i.i

bb.h:                                             ; preds = %bb.b
  br i1 %.not.i.i.not.i.i, label %Vec_IntGrow.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = icmp slt i32 %i.i, 1073741823
  %spec.select.i.i.i = select i1 %i.r, i32 %i.j, i32 2147483647 ; 3 uses
  %.not.i22.i.i.i = icmp slt i32 %i.i, %spec.select.i.i.i
  br i1 %.not.i22.i.i.i, label %bb.j, label %Vec_IntGrow.exit.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.s = getelementptr inbounds nuw i8, ptr %.160.val, i64 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !89   ; 2 uses
  %.not9.i23.i.i.i = icmp eq ptr %i.t, null
  %i.u = sext i32 %spec.select.i.i.i to i64
  %i.v = shl nsw i64 %i.u, 2                      ; 2 uses
  br i1 %.not9.i23.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = tail call ptr @realloc(ptr noundef nonnull %i.t, i64 noundef %i.v) #19
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.x = tail call noalias ptr @malloc(i64 noundef %i.v) #18
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.y = phi ptr [ %i.w, %bb.k ], [ %i.x, %bb.l ]
  store ptr %i.y, ptr %i.s, align 8, !tbaa !89
  br label %Vec_IntGrow.exit.sink.split.i.i.i

Vec_IntGrow.exit.sink.split.i.i.i:                ; preds = %bb.m, %bb.g
  %spec.select.sink.i.i.i = phi i32 [ %spec.select.i.i.i, %bb.m ], [ %i.f, %bb.g ]
  store i32 %spec.select.sink.i.i.i, ptr %.160.val, align 8, !tbaa !88
  %.pre.i.i = load i32, ptr %i.g, align 4, !tbaa !87
  br label %Vec_IntGrow.exit.i.i.i

Vec_IntGrow.exit.i.i.i:                           ; preds = %Vec_IntGrow.exit.sink.split.i.i.i, %bb.i, %bb.h, %bb.c
  %i.z = phi i32 [ %.pre.i.i, %Vec_IntGrow.exit.sink.split.i.i.i ], [ %i.h, %bb.i ], [ %i.h, %bb.h ], [ %i.h, %bb.c ] ; 3 uses
  %.not3.i.i = icmp sgt i32 %i.z, %i.e
  br i1 %.not3.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %Vec_IntGrow.exit.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.160.val, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !89
  %i.ac = sext i32 %i.z to i64
  %i.ad = shl nsw i64 %i.ac, 2
  %scevgep.i.i.i = getelementptr i8, ptr %i.ab, i64 %i.ad
  %i.ae = sub i32 %i.e, %i.z
  %i.af = zext i32 %i.ae to i64
  %i.ag = shl nuw nsw i64 %i.af, 2
  %i.ah = add nuw nsw i64 %i.ag, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i.i, i8 0, i64 %i.ah, i1 false), !tbaa !36
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %Vec_IntGrow.exit.i.i.i
  store i32 %i.f, ptr %i.g, align 4, !tbaa !87
  br label %Gia_ObjLevelId.exit

Gia_ObjLevelId.exit:                              ; preds = %bb.a, %._crit_edge.i.i.i
  %i.ai = getelementptr i8, ptr %.160.val, i64 8
  %.val.i.i = load ptr, ptr %i.ai, align 8, !tbaa !89
  %sext = shl i64 %i.d, 32
  %i.aj = ashr exact i64 %sext, 30
  %i.ak = getelementptr inbounds i8, ptr %.val.i.i, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !36
  ret i32 %i.al
}

; Function Attrs: nounwind uwtable
define noundef i32 @Cec_SetActivityFactors(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 524
  store i32 0, ptr %i.c, align 4, !tbaa !83
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !17
  tail call void @Gia_ManIncrementTravId(ptr noundef %i.e) #17
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !17   ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 32
  %.val = load ptr, ptr %i.g, align 8, !tbaa !19
  %i.h = getelementptr i8, ptr %i.f, i64 160
  %.val9 = load ptr, ptr %i.h, align 8, !tbaa !81
  %i.i = tail call fastcc i32 @Gia_ObjLevel(ptr %.val, ptr %.val9, ptr noundef %1) ; 2 uses
  %i.j = sitofp i32 %i.i to double
  %i.k = fmul nnan double %i.j, 5.000000e-01
  %i.l = fptosi double %i.k to i32
  tail call void @Cec_SetActivityFactors_rec(ptr noundef %0, ptr noundef %1, i32 noundef %i.l, i32 noundef %i.i)
  ret i32 1
}

declare void @Gia_ManIncrementTravId(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define range(i32 -1, 2) i32 @Cec_ManSatCheckNode(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %2 = alloca %struct.timespec, align 8           ; 5 uses
  %3 = alloca %struct.timespec, align 8           ; 5 uses
  %4 = alloca %struct.timespec, align 8           ; 5 uses
  %5 = alloca %struct.timespec, align 8           ; 3 uses
  %6 = alloca %struct.timespec, align 8           ; 5 uses
  %7 = alloca %struct.timespec, align 8           ; 3 uses
  %8 = alloca %struct.timespec, align 8           ; 3 uses
  %i.a = alloca i32, align 4                      ; 9 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = and i64 %i.b, -2                         ; 2 uses
  %i.d = inttoptr i64 %i.c to ptr                 ; 2 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !51     ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !90
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !17
  %i.j = getelementptr i8, ptr %i.i, i64 32
  %.val56 = load ptr, ptr %i.j, align 8, !tbaa !19 ; 2 uses
  %i.k = icmp eq ptr %1, %.val56
  br i1 %i.k, label %bb.t, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = ptrtoint ptr %.val56 to i64
  %i.m = xor i64 %i.l, 1
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = icmp eq ptr %1, %i.n
  br i1 %i.o, label %bb.t, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !78   ; 2 uses
  %i.r = add nsw i32 %i.q, 1
  store i32 %i.r, ptr %i.p, align 4, !tbaa !78
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !91
  %i.u = add nsw i32 %i.t, 1
  store i32 %i.u, ptr %i.s, align 4, !tbaa !91
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 8 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !8
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.z = load i32, ptr %i.y, align 4, !tbaa !92   ; 2 uses
  %.not = icmp eq i32 %i.z, 0
  br i1 %.not, label %Abc_Clock.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !69
  %i.ac = icmp sgt i32 %i.ab, %i.z
  br i1 %i.ac, label %bb.f, label %Abc_Clock.exit

bb.f:                                             ; preds = %bb.e
end_hunk_0
