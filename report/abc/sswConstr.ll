Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/sswConstr?download=true
inline.NumInlined: 306
inline.NumDeleted: 50
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@Ssw_ManSweepBmcConstr:bb.a
  %i.os = sdiv i64 %i.or, 1000
  %i.ot = add nsw i64 %i.os, %i.op
  br label %Abc_Clock.exit232

Abc_Clock.exit232:                                ; preds = %._crit_edge, %bb.af
  %.0.i231 = phi i64 [ %i.ot, %bb.af ], [ -1, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  %i.ou = load i64, ptr %i.f, align 8, !tbaa !120
  %i.ov = load i64, ptr %i.h, align 8, !tbaa !121
  %i.ow = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.ox = load i64, ptr %i.ow, align 8, !tbaa !119
  %.neg = add i64 %i.g, %.0.i.neg
  %i.oy = add i64 %.neg, %i.i
  %i.oz = add i64 %i.oy, %.0.i231
  %i.pa = add i64 %i.ou, %i.ov
  %i.pb = sub i64 %i.oz, %i.pa
  %i.pc = add nsw i64 %i.pb, %i.ox
  store i64 %i.pc, ptr %i.ow, align 8, !tbaa !119
  %i.pd = load i32, ptr %i.be, align 8, !tbaa !112
  ret i32 %i.pd
}

; Function Attrs: nounwind uwtable
define ptr @Ssw_FramesWithClasses_rec(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8          ; 4 uses
  %.val38 = load i32, ptr %i.a, align 8, !tbaa !99
  %i.b = getelementptr i8, ptr %0, i64 32         ; 4 uses
  %.val39 = load ptr, ptr %i.b, align 8, !tbaa !100
  %i.c = getelementptr i8, ptr %1, i64 36         ; 2 uses
  %.val40 = load i32, ptr %i.c, align 4, !tbaa !54
  %i.d = mul nsw i32 %.val40, %.val38
  %i.e = add nsw i32 %i.d, %2
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr inbounds [8 x i8], ptr %.val39, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !98   ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !87   ; 3 uses
  %i.k = getelementptr i8, ptr %1, i64 24
  %.val3.i = load i64, ptr %i.k, align 8
  %i.l = and i64 %.val3.i, 7
  %.not.i = icmp eq i64 %i.l, 2
  br i1 %.not.i, label %Saig_ObjIsLo.exit, label %Saig_ObjIsLo.exit.thread

Saig_ObjIsLo.exit:                                ; preds = %bb.b
  %.val4.i = load i32, ptr %1, align 8, !tbaa !32 ; 2 uses
  %i.m = getelementptr i8, ptr %i.j, i64 108
  %.val.i = load i32, ptr %i.m, align 4, !tbaa !28 ; 2 uses
  %.not55 = icmp slt i32 %.val4.i, %.val.i
  br i1 %.not55, label %Saig_ObjIsLo.exit.thread, label %bb.c

bb.c:                                             ; preds = %Saig_ObjIsLo.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !36
  %i.p = getelementptr i8, ptr %i.j, i64 112
  %.val5.i = load i32, ptr %i.p, align 8, !tbaa !40
  %i.q = add nsw i32 %.val5.i, %.val4.i
  %i.r = sub i32 %i.q, %.val.i
  %i.s = getelementptr i8, ptr %i.o, i64 8
  %.val4.i48 = load ptr, ptr %i.s, align 8, !tbaa !29
  %i.t = sext i32 %i.r to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %.val4.i48, i64 %i.t
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !30
  %i.w = getelementptr i8, ptr %i.v, i64 8        ; 2 uses
  %.val35 = load ptr, ptr %i.w, align 8, !tbaa !37
  %i.x = ptrtoint ptr %.val35 to i64
  %i.y = and i64 %i.x, -2
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = add nsw i32 %2, -1
  %i.ab = tail call ptr @Ssw_FramesWithClasses_rec(ptr noundef nonnull %0, ptr noundef %i.z, i32 noundef %i.aa)
  %.val36 = load ptr, ptr %i.w, align 8, !tbaa !37
  %i.ac = ptrtoint ptr %.val36 to i64
  %i.ad = and i64 %i.ac, 1
  %i.ae = ptrtoint ptr %i.ab to i64
  %i.af = xor i64 %i.ad, %i.ae
  %i.ag = inttoptr i64 %i.af to ptr
  br label %bb.f

Saig_ObjIsLo.exit.thread:                         ; preds = %bb.b, %Saig_ObjIsLo.exit
  %i.ah = getelementptr i8, ptr %1, i64 8         ; 2 uses
  %.val = load ptr, ptr %i.ah, align 8, !tbaa !37
  %i.ai = ptrtoint ptr %.val to i64
  %i.aj = and i64 %i.ai, -2
  %i.ak = inttoptr i64 %i.aj to ptr
  %i.al = tail call ptr @Ssw_FramesWithClasses_rec(ptr noundef nonnull %0, ptr noundef %i.ak, i32 noundef %2) ; 0 uses
  %i.am = getelementptr i8, ptr %1, i64 16        ; 2 uses
  %.val37 = load ptr, ptr %i.am, align 8, !tbaa !38
  %i.an = ptrtoint ptr %.val37 to i64
  %i.ao = and i64 %i.an, -2
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = tail call ptr @Ssw_FramesWithClasses_rec(ptr noundef nonnull %0, ptr noundef %i.ap, i32 noundef %2) ; 0 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !101
  %.val45 = load ptr, ptr %i.ah, align 8, !tbaa !37
  %i.at = ptrtoint ptr %.val45 to i64             ; 2 uses
  %i.au = and i64 %i.at, -2                       ; 2 uses
  %.not.i49 = icmp eq i64 %i.au, 0
  br i1 %.not.i49, label %Ssw_ObjChild0Fra.exit, label %bb.d

bb.d:                                             ; preds = %Saig_ObjIsLo.exit.thread
  %i.av = inttoptr i64 %i.au to ptr
  %.val6.i = load i32, ptr %i.a, align 8, !tbaa !99
  %.val7.i = load ptr, ptr %i.b, align 8, !tbaa !100
  %i.aw = getelementptr i8, ptr %i.av, i64 36
  %.val8.i = load i32, ptr %i.aw, align 4, !tbaa !54
  %i.ax = mul nsw i32 %.val8.i, %.val6.i
  %i.ay = add nsw i32 %i.ax, %2
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds [8 x i8], ptr %.val7.i, i64 %i.az
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !98
  %i.bc = and i64 %i.at, 1
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = xor i64 %i.bc, %i.bd
  %i.bf = inttoptr i64 %i.be to ptr
  br label %Ssw_ObjChild0Fra.exit

Ssw_ObjChild0Fra.exit:                            ; preds = %Saig_ObjIsLo.exit.thread, %bb.d
  %i.bg = phi ptr [ %i.bf, %bb.d ], [ null, %Saig_ObjIsLo.exit.thread ]
  %.val46 = load ptr, ptr %i.am, align 8, !tbaa !38
  %i.bh = ptrtoint ptr %.val46 to i64             ; 2 uses
  %i.bi = and i64 %i.bh, -2                       ; 2 uses
  %.not.i50 = icmp eq i64 %i.bi, 0
  br i1 %.not.i50, label %Ssw_ObjChild1Fra.exit, label %bb.e

bb.e:                                             ; preds = %Ssw_ObjChild0Fra.exit
  %i.bj = inttoptr i64 %i.bi to ptr
  %.val6.i51 = load i32, ptr %i.a, align 8, !tbaa !99
  %.val7.i52 = load ptr, ptr %i.b, align 8, !tbaa !100
  %i.bk = getelementptr i8, ptr %i.bj, i64 36
  %.val8.i53 = load i32, ptr %i.bk, align 4, !tbaa !54
  %i.bl = mul nsw i32 %.val8.i53, %.val6.i51
  %i.bm = add nsw i32 %i.bl, %2
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr inbounds [8 x i8], ptr %.val7.i52, i64 %i.bn
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !98
  %i.bq = and i64 %i.bh, 1
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = xor i64 %i.bq, %i.br
  %i.bt = inttoptr i64 %i.bs to ptr
  br label %Ssw_ObjChild1Fra.exit

Ssw_ObjChild1Fra.exit:                            ; preds = %Ssw_ObjChild0Fra.exit, %bb.e
  %i.bu = phi ptr [ %i.bt, %bb.e ], [ null, %Ssw_ObjChild0Fra.exit ]
  %i.bv = tail call ptr @Aig_And(ptr noundef %i.as, ptr noundef %i.bg, ptr noundef %i.bu) #12
  br label %bb.f

bb.f:                                             ; preds = %Ssw_ObjChild1Fra.exit, %bb.c
  %.0 = phi ptr [ %i.ag, %bb.c ], [ %i.bv, %Ssw_ObjChild1Fra.exit ] ; 2 uses
  %.val41 = load i32, ptr %i.a, align 8, !tbaa !99
  %.val42 = load ptr, ptr %i.b, align 8, !tbaa !100
  %.val43 = load i32, ptr %i.c, align 4, !tbaa !54
  %i.bw = mul nsw i32 %.val43, %.val41
  %i.bx = add nsw i32 %i.bw, %2
  %i.by = sext i32 %i.bx to i64
  %i.bz = getelementptr inbounds [8 x i8], ptr %.val42, i64 %i.by
  store ptr %.0, ptr %i.bz, align 8, !tbaa !98
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f
  %.032 = phi ptr [ %.0, %bb.f ], [ %i.h, %bb.a ]
  ret ptr %.032
}

; Function Attrs: nounwind uwtable
define i32 @Ssw_ManSweepConstr(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.timespec, align 8           ; 5 uses
  %2 = alloca %struct.timespec, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  %i.a = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %2) #12
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %Abc_Clock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %2, align 8, !tbaa !102
  %.neg205 = mul i64 %i.c, -1000000
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !104
  %.neg = sdiv i64 %i.e, -1000
  %.neg206 = add i64 %.neg, %.neg205
  br label %Abc_Clock.exit

Abc_Clock.exit:                                   ; preds = %bb.a, %bb.b
  %.0.i.neg = phi i64 [ %.neg206, %bb.b ], [ 1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  %i.f = call ptr @Ssw_FramesWithClasses(ptr noundef %0) #12 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 8 uses
  store ptr %i.f, ptr %i.g, align 8, !tbaa !101
  %i.h = getelementptr i8, ptr %i.f, i64 140
  %.val149 = load i32, ptr %i.h, align 4, !tbaa !55
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 10 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !87   ; 2 uses
  %i.k = getelementptr i8, ptr %i.j, i64 104
  %.val166 = load i32, ptr %i.k, align 8, !tbaa !26 ; 2 uses
  %i.l = sub nsw i32 %.val149, %.val166           ; 3 uses
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.lr.ph.preheader, label %.preheader208

.lr.ph.preheader:                                 ; preds = %Abc_Clock.exit
  %sext = zext nneg i32 %i.l to i64
  br label %.lr.ph

.preheader208.loopexit:                           ; preds = %.lr.ph
  %.pre = load ptr, ptr %i.i, align 8, !tbaa !87  ; 2 uses
  %.phi.trans.insert = getelementptr i8, ptr %.pre, i64 104
  %.val165211.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !26
  br label %.preheader208

.preheader208:                                    ; preds = %.preheader208.loopexit, %Abc_Clock.exit
  %.val165211 = phi i32 [ %.val165211.pre, %.preheader208.loopexit ], [ %.val166, %Abc_Clock.exit ]
  %i.n = phi ptr [ %.pre, %.preheader208.loopexit ], [ %i.j, %Abc_Clock.exit ]
  %i.o = icmp sgt i32 %.val165211, 0
  br i1 %i.o, label %.lr.ph213, label %._crit_edge

.lr.ph213:                                        ; preds = %.preheader208
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.q = sext i32 %i.l to i64
  br label %bb.c

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.r = load ptr, ptr %i.g, align 8, !tbaa !101
  %i.s = getelementptr i8, ptr %i.r, i64 24
  %.val169 = load ptr, ptr %i.s, align 8, !tbaa !36
  %i.t = getelementptr i8, ptr %.val169, i64 8
  %.val169.val = load ptr, ptr %i.t, align 8, !tbaa !29
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %.val169.val, i64 %indvars.iv ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !30
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !30
  %i.y = getelementptr i8, ptr %i.v, i64 8
  %.val171 = load ptr, ptr %i.y, align 8, !tbaa !37
  %i.z = getelementptr i8, ptr %i.x, i64 8
  %.val170 = load ptr, ptr %i.z, align 8, !tbaa !37
  %i.aa = call i32 @Ssw_NodesAreConstrained(ptr noundef nonnull %0, ptr noundef %.val171, ptr noundef %.val170) #12 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %3 = icmp samesign ult i64 %indvars.iv.next, %sext
  br i1 %3, label %.lr.ph, label %.preheader208.loopexit, !llvm.loop !133

bb.c:                                             ; preds = %.lr.ph213, %bb.c
  %indvars.iv236 = phi i64 [ 0, %.lr.ph213 ], [ %indvars.iv.next237, %bb.c ] ; 2 uses
  %i.ab = load ptr, ptr %i.g, align 8, !tbaa !101
  %i.ac = getelementptr i8, ptr %i.ab, i64 24
  %.val167 = load ptr, ptr %i.ac, align 8, !tbaa !36
  %i.ad = getelementptr i8, ptr %.val167, i64 8
  %.val167.val = load ptr, ptr %i.ad, align 8, !tbaa !29
  %i.ae = getelementptr [8 x i8], ptr %.val167.val, i64 %indvars.iv236
  %i.af = getelementptr [8 x i8], ptr %i.ae, i64 %i.q
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !30
  %i.ah = load ptr, ptr %i.p, align 8, !tbaa !116
  %i.ai = getelementptr i8, ptr %i.ag, i64 8
  %.val145 = load ptr, ptr %i.ai, align 8, !tbaa !37
  %i.aj = ptrtoint ptr %.val145 to i64
  %i.ak = and i64 %i.aj, -2
  %i.al = inttoptr i64 %i.ak to ptr
  call void @Ssw_CnfNodeAddToSolver(ptr noundef %i.ah, ptr noundef %i.al) #12
  %indvars.iv.next237 = add nuw nsw i64 %indvars.iv236, 1 ; 2 uses
  %i.am = load ptr, ptr %i.i, align 8, !tbaa !87  ; 2 uses
  %i.an = getelementptr i8, ptr %i.am, i64 104
  %.val165 = load i32, ptr %i.an, align 8, !tbaa !26
  %i.ao = sext i32 %.val165 to i64
  %i.ap = icmp slt i64 %indvars.iv.next237, %i.ao
  br i1 %i.ap, label %bb.c, label %._crit_edge, !llvm.loop !134

._crit_edge:                                      ; preds = %bb.c, %.preheader208
  %i.aq = phi ptr [ %i.n, %.preheader208 ], [ %i.am, %bb.c ] ; 3 uses
  %i.ar = load ptr, ptr %0, align 8, !tbaa !105
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  %i.at = load i32, ptr %i.as, align 4, !tbaa !106 ; 3 uses
  %i.au = getelementptr i8, ptr %i.aq, i64 108
  %.val134 = load i32, ptr %i.au, align 4, !tbaa !28 ; 2 uses
  %i.av = getelementptr i8, ptr %i.aq, i64 48
  %.val142 = load ptr, ptr %i.av, align 8, !tbaa !31
  %i.aw = load ptr, ptr %i.g, align 8, !tbaa !101
  %i.ax = getelementptr i8, ptr %i.aw, i64 48
  %.val141 = load ptr, ptr %i.ax, align 8, !tbaa !31
  %i.ay = getelementptr i8, ptr %0, i64 8         ; 6 uses
  %.val157 = load i32, ptr %i.ay, align 8, !tbaa !99
  %i.az = getelementptr i8, ptr %0, i64 32        ; 6 uses
  %.val158 = load ptr, ptr %i.az, align 8, !tbaa !100
  %i.ba = getelementptr i8, ptr %.val142, i64 36
  %.val159 = load i32, ptr %i.ba, align 4, !tbaa !54
  %i.bb = mul nsw i32 %.val159, %.val157
  %i.bc = add nsw i32 %i.bb, %i.at
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr inbounds [8 x i8], ptr %.val158, i64 %i.bd
  store ptr %.val141, ptr %i.be, align 8, !tbaa !98
  %i.bf = icmp sgt i32 %.val134, 0
  br i1 %i.bf, label %.lr.ph218, label %.critedge

.lr.ph218:                                        ; preds = %._crit_edge
  %i.bg = mul nsw i32 %.val134, %i.at
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 232
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph218, %bb.f
  %indvars.iv239 = phi i64 [ 0, %.lr.ph218 ], [ %indvars.iv.next240, %bb.f ] ; 2 uses
  %i.bi = phi ptr [ %i.aq, %.lr.ph218 ], [ %i.ch, %bb.f ]
  %.0216 = phi i32 [ %i.bg, %.lr.ph218 ], [ %.1, %bb.f ] ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !27
  %i.bl = getelementptr i8, ptr %i.bk, i64 8
  %.val137 = load ptr, ptr %i.bl, align 8, !tbaa !29
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %.val137, i64 %indvars.iv239
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !30
  %i.bo = load ptr, ptr %i.g, align 8, !tbaa !101
  %i.bp = call ptr @Aig_ObjCreateCi(ptr noundef %i.bo) #12 ; 2 uses
  %i.bq = load ptr, ptr %i.bh, align 8, !tbaa !81 ; 2 uses
  %.not130 = icmp eq ptr %i.bq, null
  br i1 %.not130, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.br = add nsw i32 %.0216, 1
  %i.bs = getelementptr i8, ptr %i.bq, i64 8
  %.val150 = load ptr, ptr %i.bs, align 8, !tbaa !50
  %i.bt = sext i32 %.0216 to i64
  %i.bu = getelementptr inbounds [4 x i8], ptr %.val150, i64 %i.bt
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !55
  %.not131 = icmp eq i32 %i.bv, 0
  %i.bw = select i1 %.not131, i64 0, i64 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.1 = phi i32 [ %i.br, %bb.e ], [ %.0216, %bb.d ]
  %i.bx = phi i64 [ %i.bw, %bb.e ], [ 0, %bb.d ]
  %i.by = getelementptr inbounds nuw i8, ptr %i.bp, i64 24 ; 2 uses
  %i.bz = load i64, ptr %i.by, align 8
  %i.ca = and i64 %i.bz, -9
  %i.cb = or disjoint i64 %i.ca, %i.bx
  store i64 %i.cb, ptr %i.by, align 8
  %.val154 = load i32, ptr %i.ay, align 8, !tbaa !99
  %.val155 = load ptr, ptr %i.az, align 8, !tbaa !100
  %i.cc = getelementptr i8, ptr %i.bn, i64 36
  %.val156 = load i32, ptr %i.cc, align 4, !tbaa !54
  %i.cd = mul nsw i32 %.val156, %.val154
  %i.ce = add nsw i32 %i.cd, %i.at
  %i.cf = sext i32 %i.ce to i64
  %i.cg = getelementptr inbounds [8 x i8], ptr %.val155, i64 %i.cf
  store ptr %i.bp, ptr %i.cg, align 8, !tbaa !98
  %indvars.iv.next240 = add nuw nsw i64 %indvars.iv239, 1 ; 2 uses
  %i.ch = load ptr, ptr %i.i, align 8, !tbaa !87  ; 2 uses
  %i.ci = getelementptr i8, ptr %i.ch, i64 108
  %.val133 = load i32, ptr %i.ci, align 4, !tbaa !28
  %i.cj = sext i32 %.val133 to i64
  %i.ck = icmp slt i64 %indvars.iv.next240, %i.cj
  br i1 %i.ck, label %bb.d, label %.critedge, !llvm.loop !135

.critedge:                                        ; preds = %bb.f, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  %i.cl = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %1) #12
  %i.cm = icmp slt i32 %i.cl, 0
  br i1 %i.cm, label %Abc_Clock.exit173, label %bb.g

bb.g:                                             ; preds = %.critedge
  %i.cn = load i64, ptr %1, align 8, !tbaa !102
  %i.co = mul nsw i64 %i.cn, 1000000
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !104
  %i.cr = sdiv i64 %i.cq, 1000
  %i.cs = add nsw i64 %i.cr, %i.co
  br label %Abc_Clock.exit173

Abc_Clock.exit173:                                ; preds = %.critedge, %bb.g
  %.0.i172 = phi i64 [ %i.cs, %bb.g ], [ -1, %.critedge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  %i.ct = add i64 %.0.i172, %.0.i.neg
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !136
  %i.cw = add nsw i64 %i.ct, %i.cv
  store i64 %i.cw, ptr %i.cu, align 8, !tbaa !136
  %i.cx = load ptr, ptr %0, align 8, !tbaa !105   ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 12
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !106 ; 3 uses
  %.not223 = icmp slt i32 %i.cz, 0
  br i1 %.not223, label %._crit_edge225, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %Abc_Clock.exit173
  %i.da = load ptr, ptr %i.i, align 8, !tbaa !87  ; 2 uses
  %i.db = getelementptr i8, ptr %i.da, i64 112
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !40
  %i.dd = icmp sgt i32 %i.dc, 0
  br i1 %i.dd, label %.preheader, label %._crit_edge225

.preheader:                                       ; preds = %.preheader.lr.ph, %.critedge2
  %i.de = phi ptr [ %i.fd, %.critedge2 ], [ %i.cx, %.preheader.lr.ph ]
  %i.df = phi ptr [ %i.fe, %.critedge2 ], [ %i.da, %.preheader.lr.ph ] ; 3 uses
  %.0116224 = phi i32 [ %i.ff, %.critedge2 ], [ 0, %.preheader.lr.ph ] ; 4 uses
  %i.dg = getelementptr i8, ptr %i.df, i64 112
  %.val147219 = load i32, ptr %i.dg, align 8, !tbaa !40 ; 2 uses
  %i.dh = icmp sgt i32 %.val147219, 0
  br i1 %i.dh, label %.lr.ph222, label %.critedge2

.lr.ph222:                                        ; preds = %.preheader, %bb.j
  %indvars.iv242 = phi i64 [ %indvars.iv.next243, %bb.j ], [ 0, %.preheader ] ; 3 uses
  %.val147221 = phi i32 [ %.val147, %bb.j ], [ %.val147219, %.preheader ]
  %i.di = phi ptr [ %i.ez, %bb.j ], [ %i.df, %.preheader ] ; 2 uses
  %i.dj = getelementptr i8, ptr %i.di, i64 120
  %.val148 = load i32, ptr %i.dj, align 8, !tbaa !42
  %i.dk = sub nsw i32 %.val147221, %.val148
  %i.dl = sext i32 %i.dk to i64
  %i.dm = icmp slt i64 %indvars.iv242, %i.dl
  br i1 %i.dm, label %bb.j, label %bb.h

bb.h:                                             ; preds = %.lr.ph222
  %i.dn = getelementptr inbounds nuw i8, ptr %i.di, i64 24
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !36
  %i.dp = getelementptr i8, ptr %i.do, i64 8
  %.val136 = load ptr, ptr %i.dp, align 8, !tbaa !29
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %.val136, i64 %indvars.iv242
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !30
  %i.ds = getelementptr i8, ptr %i.dr, i64 8      ; 2 uses
  %.val144 = load ptr, ptr %i.ds, align 8, !tbaa !37
  %i.dt = ptrtoint ptr %.val144 to i64
  %i.du = and i64 %i.dt, -2
  %i.dv = inttoptr i64 %i.du to ptr
  %i.dw = call ptr @Ssw_FramesWithClasses_rec(ptr noundef nonnull %0, ptr noundef %i.dv, i32 noundef %.0116224) ; 0 uses
  %.val163 = load ptr, ptr %i.ds, align 8, !tbaa !37
  %i.dx = ptrtoint ptr %.val163 to i64            ; 2 uses
  %i.dy = and i64 %i.dx, -2                       ; 2 uses
  %.not.i = icmp eq i64 %i.dy, 0
  br i1 %.not.i, label %Ssw_ObjChild0Fra.exit, label %Ssw_ObjChild0Fra.exit.thread

Ssw_ObjChild0Fra.exit:                            ; preds = %bb.h
  %i.dz = load ptr, ptr %i.g, align 8, !tbaa !101
  %i.ea = getelementptr i8, ptr %i.dz, i64 48
  %.val139 = load ptr, ptr %i.ea, align 8, !tbaa !31 ; 3 uses
  %i.eb = icmp eq ptr %.val139, inttoptr (i64 1 to ptr)
  br i1 %i.eb, label %bb.j, label %Ssw_ObjChild0Fra.exit178

Ssw_ObjChild0Fra.exit.thread:                     ; preds = %bb.h
  %i.ec = inttoptr i64 %i.dy to ptr
  %.val6.i = load i32, ptr %i.ay, align 8, !tbaa !99
  %.val7.i = load ptr, ptr %i.az, align 8, !tbaa !100
  %i.ed = getelementptr i8, ptr %i.ec, i64 36
  %.val8.i = load i32, ptr %i.ed, align 4, !tbaa !54
  %i.ee = mul nsw i32 %.val8.i, %.val6.i
  %i.ef = add nsw i32 %i.ee, %.0116224
  %i.eg = sext i32 %i.ef to i64
end_hunk_0
