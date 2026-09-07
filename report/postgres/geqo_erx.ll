Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/geqo_erx?download=true
inline.NumInlined: 7
inline.NumDeleted: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@gimme_edge_table:bb.a
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !7

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.b ] ; 3 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv.i
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = tail call i32 @llvm.abs.i32(i32 %i.af, i1 false)
  %i.ah = icmp eq i32 %i.ag, %i.y
  br i1 %i.ah, label %bb.c, label %bb.b

bb.c:                                             ; preds = %.lr.ph.i
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv.i
  %i.aj = sub i32 0, %i.y
  store i32 %i.aj, ptr %i.ai, align 4
  br label %gimme_edge.exit

._crit_edge.i:                                    ; preds = %bb.b, %.lr.ph80
  %i.ak = sext i32 %i.ac to i64
  %i.al = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %i.ak
  store i32 %i.y, ptr %i.al, align 4
  %i.am = load <2 x i32>, ptr %i.ab, align 4
  %i.an = add <2 x i32> %i.am, splat (i32 1)
  store <2 x i32> %i.an, ptr %i.ab, align 4
  br label %gimme_edge.exit

gimme_edge.exit:                                  ; preds = %bb.c, %._crit_edge.i
  %.023.i = phi i32 [ 0, %bb.c ], [ 1, %._crit_edge.i ]
  %i.ao = add i32 %.023.i, %.079
  %i.ap = load i32, ptr %i.x, align 4
  %i.aq = load i32, ptr %i.u, align 4             ; 3 uses
  %i.ar = sext i32 %i.ap to i64
  %i.as = getelementptr inbounds [24 x i8], ptr %4, i64 %i.ar ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16 ; 3 uses
  %i.au = load i32, ptr %i.at, align 4            ; 3 uses
  %i.av = icmp sgt i32 %i.au, 0
  br i1 %i.av, label %.lr.ph.preheader.i44, label %._crit_edge.i42

.lr.ph.preheader.i44:                             ; preds = %gimme_edge.exit
  %wide.trip.count.i45 = zext nneg i32 %i.au to i64
  br label %.lr.ph.i46

bb.d:                                             ; preds = %.lr.ph.i46
  %indvars.iv.next.i48 = add nuw nsw i64 %indvars.iv.i47, 1 ; 2 uses
  %exitcond.not.i49 = icmp eq i64 %indvars.iv.next.i48, %wide.trip.count.i45
  br i1 %exitcond.not.i49, label %._crit_edge.i42, label %.lr.ph.i46, !llvm.loop !7

.lr.ph.i46:                                       ; preds = %bb.d, %.lr.ph.preheader.i44
  %indvars.iv.i47 = phi i64 [ 0, %.lr.ph.preheader.i44 ], [ %indvars.iv.next.i48, %bb.d ] ; 3 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv.i47
  %i.ax = load i32, ptr %i.aw, align 4
  %i.ay = tail call i32 @llvm.abs.i32(i32 %i.ax, i1 false)
  %i.az = icmp eq i32 %i.ay, %i.aq
  br i1 %i.az, label %bb.e, label %bb.d

bb.e:                                             ; preds = %.lr.ph.i46
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv.i47
  %i.bb = sub i32 0, %i.aq
  store i32 %i.bb, ptr %i.ba, align 4
  br label %gimme_edge.exit50

._crit_edge.i42:                                  ; preds = %bb.d, %gimme_edge.exit
  %i.bc = sext i32 %i.au to i64
  %i.bd = getelementptr inbounds [4 x i8], ptr %i.as, i64 %i.bc
  store i32 %i.aq, ptr %i.bd, align 4
  %i.be = load <2 x i32>, ptr %i.at, align 4
  %i.bf = add <2 x i32> %i.be, splat (i32 1)
  store <2 x i32> %i.bf, ptr %i.at, align 4
  br label %gimme_edge.exit50

gimme_edge.exit50:                                ; preds = %bb.e, %._crit_edge.i42
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv86 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.w ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4            ; 3 uses
  %i.bk = sext i32 %i.bh to i64
  %i.bl = getelementptr inbounds [24 x i8], ptr %4, i64 %i.bk ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16 ; 3 uses
  %i.bn = load i32, ptr %i.bm, align 4            ; 3 uses
  %i.bo = icmp sgt i32 %i.bn, 0
  br i1 %i.bo, label %.lr.ph.preheader.i53, label %._crit_edge.i51

.lr.ph.preheader.i53:                             ; preds = %gimme_edge.exit50
  %wide.trip.count.i54 = zext nneg i32 %i.bn to i64
  br label %.lr.ph.i55

bb.f:                                             ; preds = %.lr.ph.i55
  %indvars.iv.next.i57 = add nuw nsw i64 %indvars.iv.i56, 1 ; 2 uses
  %exitcond.not.i58 = icmp eq i64 %indvars.iv.next.i57, %wide.trip.count.i54
  br i1 %exitcond.not.i58, label %._crit_edge.i51, label %.lr.ph.i55, !llvm.loop !7

.lr.ph.i55:                                       ; preds = %bb.f, %.lr.ph.preheader.i53
  %indvars.iv.i56 = phi i64 [ 0, %.lr.ph.preheader.i53 ], [ %indvars.iv.next.i57, %bb.f ] ; 3 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %indvars.iv.i56
  %i.bq = load i32, ptr %i.bp, align 4
  %i.br = tail call i32 @llvm.abs.i32(i32 %i.bq, i1 false)
  %i.bs = icmp eq i32 %i.br, %i.bj
  br i1 %i.bs, label %bb.g, label %bb.f

bb.g:                                             ; preds = %.lr.ph.i55
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %indvars.iv.i56
  %i.bu = sub i32 0, %i.bj
  store i32 %i.bu, ptr %i.bt, align 4
  br label %gimme_edge.exit59

._crit_edge.i51:                                  ; preds = %bb.f, %gimme_edge.exit50
  %i.bv = sext i32 %i.bn to i64
  %i.bw = getelementptr inbounds [4 x i8], ptr %i.bl, i64 %i.bv
  store i32 %i.bj, ptr %i.bw, align 4
  %i.bx = load <2 x i32>, ptr %i.bm, align 4
  %i.by = add <2 x i32> %i.bx, splat (i32 1)
  store <2 x i32> %i.by, ptr %i.bm, align 4
  br label %gimme_edge.exit59

gimme_edge.exit59:                                ; preds = %bb.g, %._crit_edge.i51
  %.023.i52 = phi i32 [ 0, %bb.g ], [ 1, %._crit_edge.i51 ]
  %i.bz = add i32 %i.ao, %.023.i52                ; 2 uses
  %i.ca = load i32, ptr %i.bi, align 4
  %i.cb = load i32, ptr %i.bg, align 4            ; 3 uses
  %i.cc = sext i32 %i.ca to i64
  %i.cd = getelementptr inbounds [24 x i8], ptr %4, i64 %i.cc ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16 ; 3 uses
  %i.cf = load i32, ptr %i.ce, align 4            ; 3 uses
  %i.cg = icmp sgt i32 %i.cf, 0
  br i1 %i.cg, label %.lr.ph.preheader.i62, label %._crit_edge.i60

.lr.ph.preheader.i62:                             ; preds = %gimme_edge.exit59
  %wide.trip.count.i63 = zext nneg i32 %i.cf to i64
  br label %.lr.ph.i64

bb.h:                                             ; preds = %.lr.ph.i64
  %indvars.iv.next.i66 = add nuw nsw i64 %indvars.iv.i65, 1 ; 2 uses
  %exitcond.not.i67 = icmp eq i64 %indvars.iv.next.i66, %wide.trip.count.i63
  br i1 %exitcond.not.i67, label %._crit_edge.i60, label %.lr.ph.i64, !llvm.loop !7

.lr.ph.i64:                                       ; preds = %bb.h, %.lr.ph.preheader.i62
  %indvars.iv.i65 = phi i64 [ 0, %.lr.ph.preheader.i62 ], [ %indvars.iv.next.i66, %bb.h ] ; 3 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %indvars.iv.i65
  %i.ci = load i32, ptr %i.ch, align 4
  %i.cj = tail call i32 @llvm.abs.i32(i32 %i.ci, i1 false)
  %i.ck = icmp eq i32 %i.cj, %i.cb
  br i1 %i.ck, label %bb.i, label %bb.h

bb.i:                                             ; preds = %.lr.ph.i64
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %indvars.iv.i65
  %i.cm = sub i32 0, %i.cb
  store i32 %i.cm, ptr %i.cl, align 4
  br label %gimme_edge.exit68

._crit_edge.i60:                                  ; preds = %bb.h, %gimme_edge.exit59
  %i.cn = sext i32 %i.cf to i64
  %i.co = getelementptr inbounds [4 x i8], ptr %i.cd, i64 %i.cn
  store i32 %i.cb, ptr %i.co, align 4
  %i.cp = load <2 x i32>, ptr %i.ce, align 4
  %i.cq = add <2 x i32> %i.cp, splat (i32 1)
  store <2 x i32> %i.cq, ptr %i.ce, align 4
  br label %gimme_edge.exit68

gimme_edge.exit68:                                ; preds = %bb.i, %._crit_edge.i60
  %exitcond90.not = icmp eq i64 %indvars.iv.next87, %i.g
  br i1 %exitcond90.not, label %._crit_edge.loopexit, label %.lr.ph80, !llvm.loop !8

._crit_edge.loopexit:                             ; preds = %gimme_edge.exit68
  %i.cr = shl i32 %i.bz, 1
  %i.cs = sitofp i32 %i.cr to float
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.a, %._crit_edge.loopexit
  %.0.lcssa = phi float [ %i.cs, %._crit_edge.loopexit ], [ 0.000000e+00, %bb.a ]
  %i.ct = sitofp i32 %3 to float
  %i.cu = fdiv float %.0.lcssa, %i.ct
  ret float %i.cu
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gimme_tour(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) initializes((0, 4)) %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.Edge, align 8               ; 6 uses
  %5 = alloca %struct.Edge, align 8               ; 5 uses
  %i.a = tail call i32 @geqo_randint(ptr noundef %0, i32 noundef %3, i32 noundef 1) #8
  store i32 %i.a, ptr %2, align 4
  %i.b = icmp sgt i32 %3, 1
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.d = add nuw i32 %3, 1                        ; 2 uses
  %smax.i = tail call i32 @llvm.smax.i32(i32 %i.d, i32 2)
  %wide.trip.count.i44 = zext nneg i32 %smax.i to i64
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 20
  %wide.trip.count = zext nneg i32 %3 to i64
  %i.f = add nsw i64 %wide.trip.count.i44, -1     ; 3 uses
  %xtraiter = and i64 %i.f, 1
  %i.g = icmp slt i32 %i.d, 3
  %unroll_iter = and i64 %i.f, -2
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod132 = trunc i64 %i.f to i1
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %edge_failure.exit
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %edge_failure.exit ] ; 3 uses
  %.073 = phi i32 [ 0, %.lr.ph ], [ %.1, %edge_failure.exit ] ; 2 uses
  %i.h = getelementptr [4 x i8], ptr %2, i64 %indvars.iv
  %i.i = getelementptr i8, ptr %i.h, i64 -4       ; 3 uses
  %i.j = load i32, ptr %i.i, align 4              ; 3 uses
  %i.k = sext i32 %i.j to i64                     ; 2 uses
  %i.l = getelementptr inbounds [24 x i8], ptr %1, i64 %i.k
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 4 dereferenceable(24) %i.l, i64 24, i1 false)
  %i.m = load i32, ptr %i.c, align 4              ; 2 uses
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.lr.ph4.preheader.i, label %remove_gene.exit

.lr.ph4.preheader.i:                              ; preds = %bb.b
  %wide.trip.count10.i = zext nneg i32 %i.m to i64
  br label %.lr.ph4.i

.lr.ph4.i:                                        ; preds = %.loopexit.i, %.lr.ph4.preheader.i
  %indvars.iv7.i = phi i64 [ 0, %.lr.ph4.preheader.i ], [ %indvars.iv.next8.i, %.loopexit.i ] ; 2 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv7.i
  %i.p = load i32, ptr %i.o, align 4
  %i.q = tail call i32 @llvm.abs.i32(i32 %i.p, i1 false)
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds [24 x i8], ptr %1, i64 %i.r ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 20 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4              ; 3 uses
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %.lr.ph.preheader.i, label %.loopexit.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph4.i
  %wide.trip.count.i = zext nneg i32 %i.u to i64
  br label %.lr.ph.i

bb.c:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !10

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.c ] ; 3 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv.i
  %i.x = load i32, ptr %i.w, align 4
  %i.y = tail call i32 @llvm.abs.i32(i32 %i.x, i1 false)
  %i.z = icmp eq i32 %i.y, %i.j
  br i1 %i.z, label %bb.d, label %bb.c

bb.d:                                             ; preds = %.lr.ph.i
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv.i
  %i.ab = add nsw i32 %i.u, -1                    ; 2 uses
  store i32 %i.ab, ptr %i.t, align 4
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4
  store i32 %i.ae, ptr %i.aa, align 4
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.c, %bb.d, %.lr.ph4.i
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1 ; 2 uses
  %exitcond11.not.i = icmp eq i64 %indvars.iv.next8.i, %wide.trip.count10.i
  br i1 %exitcond11.not.i, label %remove_gene.exit.loopexit, label %.lr.ph4.i, !llvm.loop !11

remove_gene.exit.loopexit:                        ; preds = %.loopexit.i
  %.pre = load i32, ptr %i.i, align 4             ; 2 uses
  %.pre85 = sext i32 %.pre to i64
  br label %remove_gene.exit

remove_gene.exit:                                 ; preds = %remove_gene.exit.loopexit, %bb.b
  %.pre-phi = phi i64 [ %.pre85, %remove_gene.exit.loopexit ], [ %i.k, %bb.b ]
  %i.af = phi i32 [ %.pre, %remove_gene.exit.loopexit ], [ %i.j, %bb.b ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.ag = getelementptr inbounds [24 x i8], ptr %1, i64 %.pre-phi ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 20
  %i.ai = load i32, ptr %i.ah, align 4
  %i.aj = icmp sgt i32 %i.ai, 0
  br i1 %i.aj, label %bb.e, label %.lr.ph.preheader.i43

bb.e:                                             ; preds = %remove_gene.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 4 dereferenceable(24) %i.ag, i64 24, i1 false)
  %i.ak = load i32, ptr %i.e, align 4             ; 2 uses
  %i.al = icmp sgt i32 %i.ak, 0
  br i1 %i.al, label %.lr.ph.preheader.i36, label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %bb.e
  %i.am = tail call i32 @geqo_randint(ptr noundef %0, i32 noundef -2, i32 noundef 0) #8 ; 0 uses
  br label %._crit_edge55.i

.lr.ph.preheader.i36:                             ; preds = %bb.e
  %wide.trip.count.i37 = zext nneg i32 %i.ak to i64 ; 2 uses
  br label %.lr.ph.i38

.lr.ph.i38:                                       ; preds = %bb.k, %.lr.ph.preheader.i36
  %indvars.iv.i39 = phi i64 [ 0, %.lr.ph.preheader.i36 ], [ %indvars.iv.next.i40, %bb.k ] ; 2 uses
  %.048.i = phi i32 [ -1, %.lr.ph.preheader.i36 ], [ %.1.i, %bb.k ] ; 2 uses
  %.02747.i = phi i32 [ 5, %.lr.ph.preheader.i36 ], [ %.128.i, %bb.k ] ; 3 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.i39
  %i.ao = load i32, ptr %i.an, align 4            ; 3 uses
  %i.ap = icmp slt i32 %i.ao, 0
  br i1 %i.ap, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.i38
  %i.aq = sub i32 0, %i.ao
  br label %gimme_gene.exit

bb.g:                                             ; preds = %.lr.ph.i38
  %i.ar = zext nneg i32 %i.ao to i64
  %i.as = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 20
  %i.au = load i32, ptr %i.at, align 4            ; 3 uses
  %i.av = icmp slt i32 %i.au, %.02747.i
  br i1 %i.av, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aw = icmp eq i32 %.048.i, -1
  br i1 %i.aw, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ax = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #9 ; 0 uses
  %i.ay = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str) #8 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 345, ptr noundef nonnull @__func__.gimme_gene) #8
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.az = icmp eq i32 %i.au, %.02747.i
  %i.ba = zext i1 %i.az to i32
  %spec.select.i = add nuw i32 %.048.i, %i.ba
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g
  %.128.i = phi i32 [ %.02747.i, %bb.j ], [ %i.au, %bb.g ] ; 2 uses
  %.1.i = phi i32 [ %spec.select.i, %bb.j ], [ 1, %bb.g ] ; 3 uses
  %indvars.iv.next.i40 = add nuw nsw i64 %indvars.iv.i39, 1 ; 2 uses
  %exitcond.not.i41 = icmp eq i64 %indvars.iv.next.i40, %wide.trip.count.i37
  br i1 %exitcond.not.i41, label %._crit_edge.i, label %.lr.ph.i38, !llvm.loop !12

._crit_edge.i:                                    ; preds = %bb.k
  %i.bb = add i32 %.1.i, -1
  %i.bc = tail call i32 @geqo_randint(ptr noundef %0, i32 noundef %i.bb, i32 noundef 0) #8
  br label %.lr.ph54.i

.lr.ph54.i:                                       ; preds = %bb.m, %._crit_edge.i
  %indvars.iv61.i = phi i64 [ 0, %._crit_edge.i ], [ %indvars.iv.next62.i, %bb.m ] ; 2 uses
  %.252.i = phi i32 [ %.1.i, %._crit_edge.i ], [ %.3.i, %bb.m ] ; 2 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv61.i
  %i.be = load i32, ptr %i.bd, align 4            ; 2 uses
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr inbounds [24 x i8], ptr %1, i64 %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 20
  %i.bi = load i32, ptr %i.bh, align 4
  %i.bj = icmp eq i32 %i.bi, %.128.i
  br i1 %i.bj, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph54.i
  %i.bk = add i32 %.252.i, -1                     ; 2 uses
  %i.bl = icmp eq i32 %i.bk, %i.bc
  br i1 %i.bl, label %gimme_gene.exit, label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph54.i
  %.3.i = phi i32 [ %i.bk, %bb.l ], [ %.252.i, %.lr.ph54.i ]
  %indvars.iv.next62.i = add nuw nsw i64 %indvars.iv61.i, 1 ; 2 uses
  %exitcond65.not.i = icmp eq i64 %indvars.iv.next62.i, %wide.trip.count.i37
  br i1 %exitcond65.not.i, label %._crit_edge55.i, label %.lr.ph54.i, !llvm.loop !13

._crit_edge55.i:                                  ; preds = %bb.m, %._crit_edge.thread.i
  %i.bm = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #9 ; 0 uses
  %i.bn = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.2) #8 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 370, ptr noundef nonnull @__func__.gimme_gene) #8
  unreachable

gimme_gene.exit:                                  ; preds = %bb.l, %bb.f
  %.031.i = phi i32 [ %i.aq, %bb.f ], [ %i.be, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %edge_failure.exit

.lr.ph.preheader.i43:                             ; preds = %remove_gene.exit
  %i.bo = zext i32 %i.af to i64                   ; 3 uses
  br i1 %i.g, label %.lr.ph.i45.epil.preheader, label %.lr.ph.i45

.lr.ph.i45:                                       ; preds = %.lr.ph.preheader.i43, %bb.p
  %indvars.iv.i46 = phi i64 [ %indvars.iv.next.i49.1, %bb.p ], [ 1, %.lr.ph.preheader.i43 ] ; 4 uses
  %.080.i = phi i32 [ %.1.i48.1, %bb.p ], [ 0, %.lr.ph.preheader.i43 ] ; 2 uses
  %.04979.i = phi i32 [ %.150.i.1, %bb.p ], [ 0, %.lr.ph.preheader.i43 ] ; 2 uses
  %niter = phi i64 [ %niter.next.1, %bb.p ], [ 0, %.lr.ph.preheader.i43 ]
  %i.bp = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv.i46 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 20
  %i.br = load i32, ptr %i.bq, align 4
  %.not70.i = icmp eq i32 %i.br, -1
  %.not71.i = icmp eq i64 %indvars.iv.i46, %i.bo
  %or.cond.i = or i1 %.not71.i, %.not70.i
  br i1 %or.cond.i, label %.lr.ph.i45.1, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i45
  %i.bs = add i32 %.04979.i, 1
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.bu = load i32, ptr %i.bt, align 4
  %i.bv = icmp eq i32 %i.bu, 4
  %i.bw = zext i1 %i.bv to i32
  %spec.select.i47 = add i32 %.080.i, %i.bw
  br label %.lr.ph.i45.1

.lr.ph.i45.1:                                     ; preds = %bb.n, %.lr.ph.i45
  %.150.i = phi i32 [ %.04979.i, %.lr.ph.i45 ], [ %i.bs, %bb.n ] ; 2 uses
  %.1.i48 = phi i32 [ %.080.i, %.lr.ph.i45 ], [ %spec.select.i47, %bb.n ] ; 2 uses
  %indvars.iv.next.i49 = add nuw nsw i64 %indvars.iv.i46, 1 ; 2 uses
  %i.bx = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv.next.i49 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 20
  %i.bz = load i32, ptr %i.by, align 4
  %.not70.i.1 = icmp eq i32 %i.bz, -1
  %.not71.i.1 = icmp eq i64 %indvars.iv.next.i49, %i.bo
  %or.cond.i.1 = or i1 %.not71.i.1, %.not70.i.1
  br i1 %or.cond.i.1, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i45.1
  %i.ca = add i32 %.150.i, 1
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.cc = load i32, ptr %i.cb, align 4
  %i.cd = icmp eq i32 %i.cc, 4
  %i.ce = zext i1 %i.cd to i32
  %spec.select.i47.1 = add i32 %.1.i48, %i.ce
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.lr.ph.i45.1
  %.150.i.1 = phi i32 [ %.150.i, %.lr.ph.i45.1 ], [ %i.ca, %bb.o ] ; 3 uses
  %.1.i48.1 = phi i32 [ %.1.i48, %.lr.ph.i45.1 ], [ %spec.select.i47.1, %bb.o ] ; 3 uses
  %indvars.iv.next.i49.1 = add nuw nsw i64 %indvars.iv.i46, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i50.unr-lcssa, label %.lr.ph.i45, !llvm.loop !14

._crit_edge.i50.unr-lcssa:                        ; preds = %bb.p
  br i1 %lcmp.mod.not, label %._crit_edge.i50, label %.lr.ph.i45.epil.preheader

.lr.ph.i45.epil.preheader:                        ; preds = %._crit_edge.i50.unr-lcssa, %.lr.ph.preheader.i43
  %indvars.iv.i46.epil.init = phi i64 [ 1, %.lr.ph.preheader.i43 ], [ %indvars.iv.next.i49.1, %._crit_edge.i50.unr-lcssa ] ; 2 uses
  %.080.i.epil.init = phi i32 [ 0, %.lr.ph.preheader.i43 ], [ %.1.i48.1, %._crit_edge.i50.unr-lcssa ] ; 2 uses
  %.04979.i.epil.init = phi i32 [ 0, %.lr.ph.preheader.i43 ], [ %.150.i.1, %._crit_edge.i50.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod132)
  %i.cf = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv.i46.epil.init ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 20
  %i.ch = load i32, ptr %i.cg, align 4
  %.not70.i.epil = icmp eq i32 %i.ch, -1
  %.not71.i.epil = icmp eq i64 %indvars.iv.i46.epil.init, %i.bo
  %or.cond.i.epil = or i1 %.not71.i.epil, %.not70.i.epil
  br i1 %or.cond.i.epil, label %._crit_edge.i50, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i45.epil.preheader
  %i.ci = add i32 %.04979.i.epil.init, 1
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %i.ck = load i32, ptr %i.cj, align 4
  %i.cl = icmp eq i32 %i.ck, 4
  %i.cm = zext i1 %i.cl to i32
  %spec.select.i47.epil = add i32 %.080.i.epil.init, %i.cm
  br label %._crit_edge.i50

._crit_edge.i50:                                  ; preds = %.lr.ph.i45.epil.preheader, %bb.q, %._crit_edge.i50.unr-lcssa
  %.150.i.lcssa = phi i32 [ %.150.i.1, %._crit_edge.i50.unr-lcssa ], [ %.04979.i.epil.init, %.lr.ph.i45.epil.preheader ], [ %i.ci, %bb.q ] ; 3 uses
  %.1.i48.lcssa = phi i32 [ %.1.i48.1, %._crit_edge.i50.unr-lcssa ], [ %.080.i.epil.init, %.lr.ph.i45.epil.preheader ], [ %spec.select.i47.epil, %bb.q ] ; 3 uses
  %i.cn = add i32 %.073, 1                        ; 3 uses
  %.not61.i = icmp eq i32 %.1.i48.lcssa, 0
  br i1 %.not61.i, label %bb.w, label %bb.r

bb.r:                                             ; preds = %._crit_edge.i50
  %i.co = add i32 %.1.i48.lcssa, -1
  %i.cp = tail call i32 @geqo_randint(ptr noundef %0, i32 noundef %i.co, i32 noundef 0) #8
  br label %.lr.ph86.i

.lr.ph86.i:                                       ; preds = %bb.v, %bb.r
  %.284.i = phi i32 [ %.3.i51, %bb.v ], [ %.1.i48.lcssa, %bb.r ] ; 4 uses
  %.15483.i = phi i32 [ %i.cz, %bb.v ], [ 1, %bb.r ] ; 4 uses
  %.not68.i = icmp eq i32 %.15483.i, %i.af
  br i1 %.not68.i, label %bb.v, label %bb.s

bb.s:                                             ; preds = %.lr.ph86.i
  %i.cq = sext i32 %.15483.i to i64
  %i.cr = getelementptr inbounds [24 x i8], ptr %1, i64 %i.cq ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 20
  %i.ct = load i32, ptr %i.cs, align 4
  %.not69.i = icmp eq i32 %i.ct, -1
  br i1 %.not69.i, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.cv = load i32, ptr %i.cu, align 4
  %i.cw = icmp eq i32 %i.cv, 4
  br i1 %i.cw, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cx = add i32 %.284.i, -1                     ; 2 uses
  %i.cy = icmp eq i32 %i.cp, %i.cx
  br i1 %i.cy, label %edge_failure.exit, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s, %.lr.ph86.i
  %.3.i51 = phi i32 [ %i.cx, %bb.u ], [ %.284.i, %bb.t ], [ %.284.i, %bb.s ], [ %.284.i, %.lr.ph86.i ]
  %i.cz = add i32 %.15483.i, 1                    ; 2 uses
  %.not67.i = icmp sgt i32 %i.cz, %3
  br i1 %.not67.i, label %._crit_edge87.i, label %.lr.ph86.i, !llvm.loop !15

._crit_edge87.i:                                  ; preds = %bb.v
  %i.da = tail call zeroext i1 @errstart(i32 noundef 15, ptr noundef null) #8
  br i1 %i.da, label %.sink.split.i, label %bb.ac

bb.w:                                             ; preds = %._crit_edge.i50
  %.not62.i = icmp eq i32 %.150.i.lcssa, 0
  br i1 %.not62.i, label %.lr.ph96.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.db = add i32 %.150.i.lcssa, -1
  %i.dc = tail call i32 @geqo_randint(ptr noundef %0, i32 noundef %i.db, i32 noundef 0) #8
  br label %.lr.ph92.i

.lr.ph92.i:                                       ; preds = %bb.aa, %bb.x
  %.25190.i = phi i32 [ %.352.i, %bb.aa ], [ %.150.i.lcssa, %bb.x ] ; 3 uses
  %.25589.i = phi i32 [ %i.dj, %bb.aa ], [ 1, %bb.x ] ; 4 uses
  %.not65.i = icmp eq i32 %.25589.i, %i.af
  br i1 %.not65.i, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %.lr.ph92.i
  %i.dd = sext i32 %.25589.i to i64
  %i.de = getelementptr inbounds [24 x i8], ptr %1, i64 %i.dd
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 20
  %i.dg = load i32, ptr %i.df, align 4
  %.not66.i = icmp eq i32 %i.dg, -1
  br i1 %.not66.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dh = add i32 %.25190.i, -1                   ; 2 uses
  %i.di = icmp eq i32 %i.dc, %i.dh
  br i1 %i.di, label %edge_failure.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %.lr.ph92.i
  %.352.i = phi i32 [ %i.dh, %bb.z ], [ %.25190.i, %bb.y ], [ %.25190.i, %.lr.ph92.i ]
  %i.dj = add i32 %.25589.i, 1                    ; 2 uses
  %.not64.i = icmp sgt i32 %i.dj, %3
  br i1 %.not64.i, label %._crit_edge93.i, label %.lr.ph92.i, !llvm.loop !16

._crit_edge93.i:                                  ; preds = %bb.aa
  %i.dk = tail call zeroext i1 @errstart(i32 noundef 15, ptr noundef null) #8
  br i1 %i.dk, label %.sink.split.i, label %bb.ac

.lr.ph96.i:                                       ; preds = %bb.w, %bb.ab
  %.35695.i = phi i32 [ %i.dq, %bb.ab ], [ 1, %bb.w ] ; 3 uses
  %i.dl = sext i32 %.35695.i to i64
  %i.dm = getelementptr inbounds [24 x i8], ptr %1, i64 %i.dl
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 20
  %i.do = load i32, ptr %i.dn, align 4
  %i.dp = icmp sgt i32 %i.do, -1
  br i1 %i.dp, label %edge_failure.exit, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph96.i
  %i.dq = add i32 %.35695.i, 1                    ; 2 uses
  %.not63.i = icmp sgt i32 %i.dq, %3
  br i1 %.not63.i, label %._crit_edge97.i, label %.lr.ph96.i, !llvm.loop !17

._crit_edge97.i:                                  ; preds = %bb.ab
  %i.dr = tail call zeroext i1 @errstart(i32 noundef 15, ptr noundef null) #8
  br i1 %i.dr, label %.sink.split.i, label %bb.ac

.sink.split.i:                                    ; preds = %._crit_edge97.i, %._crit_edge93.i, %._crit_edge87.i
  %.str.4.sink.i = phi ptr [ @.str.3, %._crit_edge87.i ], [ @.str.4, %._crit_edge93.i ], [ @.str.5, %._crit_edge97.i ]
  %.sink.i = phi i32 [ 431, %._crit_edge87.i ], [ 452, %._crit_edge93.i ], [ 470, %._crit_edge97.i ]
  %i.ds = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull %.str.4.sink.i) #8 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef %.sink.i, ptr noundef nonnull @__func__.edge_failure) #8
  br label %bb.ac

bb.ac:                                            ; preds = %.sink.split.i, %._crit_edge97.i, %._crit_edge93.i, %._crit_edge87.i
  %i.dt = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #9 ; 0 uses
  %i.du = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.6) #8 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 475, ptr noundef nonnull @__func__.edge_failure) #8
  unreachable

edge_failure.exit:                                ; preds = %bb.u, %bb.z, %.lr.ph96.i, %gimme_gene.exit
  %.057.i.sink = phi i32 [ %.031.i, %gimme_gene.exit ], [ %.25589.i, %bb.z ], [ %.35695.i, %.lr.ph96.i ], [ %.15483.i, %bb.u ]
  %.1 = phi i32 [ %.073, %gimme_gene.exit ], [ %i.cn, %bb.z ], [ %i.cn, %.lr.ph96.i ], [ %i.cn, %bb.u ] ; 2 uses
  %6 = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  store i32 %.057.i.sink, ptr %6, align 4
  %i.dv = load i32, ptr %i.i, align 4
  %i.dw = sext i32 %i.dv to i64
  %i.dx = getelementptr inbounds [24 x i8], ptr %1, i64 %i.dw
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 20
  store i32 -1, ptr %i.dy, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !18

._crit_edge:                                      ; preds = %edge_failure.exit, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %.1, %edge_failure.exit ]
  ret i32 %.0.lcssa
}

declare i32 @geqo_randint(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #4

; Function Attrs: cold
declare zeroext i1 @errstart_cold(i32 noundef, ptr noundef) local_unnamed_addr #5

declare zeroext i1 @errstart(i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @errmsg_internal(ptr noundef, ...) local_unnamed_addr #2

declare void @errfinish(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = !{!"llvm.loop.mustprogress"}
!5 = distinct !{!5, !9}
!6 = distinct !{!6, !4}
!7 = distinct !{!7, !4}
!8 = distinct !{!8, !4}
!9 = !{!"llvm.loop.unroll.disable"}
!10 = distinct !{!10, !4}
!11 = distinct !{!11, !4}
!12 = distinct !{!12, !4}
!13 = distinct !{!13, !4}
!14 = distinct !{!14, !4}
!15 = distinct !{!15, !4}
!16 = distinct !{!16, !4}
!17 = distinct !{!17, !4}
!18 = distinct !{!18, !4}
end_hunk_0
