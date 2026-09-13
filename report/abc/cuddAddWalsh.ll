Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/cuddAddWalsh?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
begin_hunk_0_@Cudd_addWalsh:bb.a
bb.j:                                             ; preds = %bb.i
  tail call void @Cudd_RecursiveDeref(ptr noundef nonnull %0, ptr noundef nonnull %i.m) #6
  tail call void @Cudd_RecursiveDeref(ptr noundef nonnull %0, ptr noundef nonnull %i.ae) #6
  tail call void @Cudd_RecursiveDeref(ptr noundef nonnull %0, ptr noundef nonnull %i.an) #6
  br label %addWalshInt.exit

bb.k:                                             ; preds = %bb.f
  %i.ay = load i32, ptr %i.r, align 4, !tbaa !27
  %i.az = add i32 %i.ay, -1
  store i32 %i.az, ptr %i.r, align 4, !tbaa !27
  br label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.i
  %i.ba = ptrtoint ptr %i.aw to i64
  %i.bb = and i64 %i.ba, -2
  %i.bc = inttoptr i64 %i.bb to ptr
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 4 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !27
  %i.bf = add i32 %i.be, 1
  store i32 %i.bf, ptr %i.bd, align 4, !tbaa !27
  tail call void @Cudd_RecursiveDeref(ptr noundef nonnull %0, ptr noundef nonnull %i.an) #6
  %i.bg = load i32, ptr %i.r, align 4, !tbaa !27
  %i.bh = add i32 %i.bg, -1
  store i32 %i.bh, ptr %i.r, align 4, !tbaa !27
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.s, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ %i.j, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.s ] ; 5 uses
  %.0124147.i = phi ptr [ %i.ae, %.lr.ph.preheader.i ], [ %i.bu, %bb.s ] ; 7 uses
  %.1146.i = phi ptr [ %i.aw, %.lr.ph.preheader.i ], [ %.2.i, %bb.s ] ; 8 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !28
  %i.bk = tail call ptr @Cudd_addIte(ptr noundef nonnull %0, ptr noundef %i.bj, ptr noundef %.1146.i, ptr noundef nonnull %.0124147.i) #6 ; 5 uses
  %i.bl = icmp eq ptr %i.bk, null
  br i1 %i.bl, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph.i
  tail call void @Cudd_RecursiveDeref(ptr noundef nonnull %0, ptr noundef nonnull %.0124147.i) #6
  tail call void @Cudd_RecursiveDeref(ptr noundef nonnull %0, ptr noundef %.1146.i) #6
  br label %addWalshInt.exit

bb.m:                                             ; preds = %.lr.ph.i
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = and i64 %i.bm, -2
  %i.bo = inttoptr i64 %i.bn to ptr
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 4 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !27
  %i.br = add i32 %i.bq, 1
  store i32 %i.br, ptr %i.bp, align 4, !tbaa !27
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.i ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !28
  %i.bu = tail call ptr @Cudd_addIte(ptr noundef nonnull %0, ptr noundef %i.bt, ptr noundef nonnull %i.bk, ptr noundef nonnull %.0124147.i) #6 ; 5 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  tail call void @Cudd_RecursiveDeref(ptr noundef nonnull %0, ptr noundef nonnull %.0124147.i) #6
  tail call void @Cudd_RecursiveDeref(ptr noundef nonnull %0, ptr noundef %.1146.i) #6
  tail call void @Cudd_RecursiveDeref(ptr noundef nonnull %0, ptr noundef nonnull %i.bk) #6
  br label %addWalshInt.exit

bb.o:                                             ; preds = %bb.m
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = and i64 %i.bw, -2
  %i.by = inttoptr i64 %i.bx to ptr               ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 4 ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !27
  %i.cb = add i32 %i.ca, 1
  store i32 %i.cb, ptr %i.bz, align 4, !tbaa !27
  tail call void @Cudd_RecursiveDeref(ptr noundef nonnull %0, ptr noundef nonnull %i.bk) #6
  %.not.i = icmp eq i64 %indvars.iv.i, 0
  br i1 %.not.i, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cc = load ptr, ptr %i.bi, align 8, !tbaa !28
  %i.cd = tail call ptr @Cudd_addIte(ptr noundef nonnull %0, ptr noundef %i.cc, ptr noundef nonnull %.0124147.i, ptr noundef %.1146.i) #6 ; 4 uses
  %i.ce = icmp eq ptr %i.cd, null
  br i1 %i.ce, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  tail call void @Cudd_RecursiveDeref(ptr noundef nonnull %0, ptr noundef nonnull %.0124147.i) #6
  tail call void @Cudd_RecursiveDeref(ptr noundef nonnull %0, ptr noundef %.1146.i) #6
  tail call void @Cudd_RecursiveDeref(ptr noundef nonnull %0, ptr noundef nonnull %i.bu) #6
  br label %addWalshInt.exit

bb.r:                                             ; preds = %bb.p
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = and i64 %i.cf, -2
  %i.ch = inttoptr i64 %i.cg to ptr
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 4 ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !27
  %i.ck = add i32 %i.cj, 1
  store i32 %i.ck, ptr %i.ci, align 4, !tbaa !27
  %i.cl = load ptr, ptr %i.bs, align 8, !tbaa !28
  %i.cm = tail call ptr @Cudd_addIte(ptr noundef nonnull %0, ptr noundef %i.cl, ptr noundef nonnull %i.cd, ptr noundef %.1146.i) #6 ; 2 uses
  %i.cn = ptrtoint ptr %i.cm to i64
  %i.co = and i64 %i.cn, -2
  %i.cp = inttoptr i64 %i.co to ptr
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 4 ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !27
  %i.cs = add i32 %i.cr, 1
  store i32 %i.cs, ptr %i.cq, align 4, !tbaa !27
  tail call void @Cudd_RecursiveDeref(ptr noundef nonnull %0, ptr noundef nonnull %i.cd) #6
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.o
  %.2.i = phi ptr [ %i.cm, %bb.r ], [ %.1146.i, %bb.o ]
  tail call void @Cudd_RecursiveDeref(ptr noundef nonnull %0, ptr noundef nonnull %.0124147.i) #6
  tail call void @Cudd_RecursiveDeref(ptr noundef nonnull %0, ptr noundef %.1146.i) #6
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %i.ct = icmp sgt i64 %indvars.iv.i, 0
  br i1 %i.ct, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !30

._crit_edge.i:                                    ; preds = %bb.s, %bb.k
  %.pre-phi163.i = phi ptr [ %i.ai, %bb.k ], [ %i.by, %bb.s ]
  %.0124.lcssa.i = phi ptr [ %i.ae, %bb.k ], [ %i.bu, %bb.s ]
  %i.cu = getelementptr inbounds nuw i8, ptr %.pre-phi163.i, i64 4 ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !27
  %i.cw = add i32 %i.cv, -1
  store i32 %i.cw, ptr %i.cu, align 4, !tbaa !27
  br label %addWalshInt.exit

addWalshInt.exit:                                 ; preds = %.split, %bb.c, %bb.e, %bb.h, %bb.j, %bb.l, %bb.n, %bb.q, %._crit_edge.i
  %.0126.i.ph = phi ptr [ null, %.split ], [ null, %bb.q ], [ null, %bb.n ], [ null, %bb.l ], [ null, %bb.j ], [ null, %bb.h ], [ null, %bb.e ], [ null, %bb.c ], [ %.0124.lcssa.i, %._crit_edge.i ]
  %.pr = load i32, ptr %i.a, align 8, !tbaa !32
  %i.cx = icmp eq i32 %.pr, 1
  br i1 %i.cx, label %.split, label %addWalshInt.exit.thread, !llvm.loop !31

addWalshInt.exit.thread:                          ; preds = %addWalshInt.exit, %.split.us
  %.us-phi = phi ptr [ %i.k, %.split.us ], [ %.0126.i.ph, %addWalshInt.exit ]
  ret ptr %.us-phi
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define ptr @Cudd_addResidue(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.b = icmp slt i32 %1, 1
  %i.c = icmp slt i32 %2, 2
  %or.cond = and i1 %i.b, %i.c
  br i1 %or.cond, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %3, 1
  %i.e = and i32 %3, 2
  %i.f = sext i32 %2 to i64
  %i.g = shl nsw i64 %i.f, 3                      ; 2 uses
  %i.h = tail call noalias ptr @malloc(i64 noundef %i.g) #7 ; 8 uses
  store ptr %i.h, ptr %i.a, align 16, !tbaa !42
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 632
  store i32 1, ptr %i.j, align 8, !tbaa !43
  br label %bb.q

bb.d:                                             ; preds = %bb.b
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.g) #7 ; 9 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.k, ptr %i.l, align 8, !tbaa !42
  %i.m = icmp eq ptr %i.k, null
  br i1 %i.m, label %bb.e, label %.preheader132

.preheader132:                                    ; preds = %bb.d
  %i.n = icmp sgt i32 %2, 0                       ; 3 uses
  br i1 %i.n, label %.lr.ph141.preheader, label %.preheader130

bb.e:                                             ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %i.h) #6
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 632
  store i32 1, ptr %i.o, align 8, !tbaa !43
  br label %bb.q

.lr.ph141.preheader:                              ; preds = %.preheader132
  %i.p = zext nneg i32 %2 to i64
  %i.q = shl nuw nsw i64 %i.p, 3                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.k, i8 0, i64 %i.q, i1 false), !tbaa !28
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.h, i8 0, i64 %i.q, i1 false), !tbaa !28
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %.lr.ph141

.preheader130:                                    ; preds = %bb.f, %.preheader132
  %i.r = icmp sgt i32 %1, 0
  br i1 %i.r, label %.lr.ph148, label %.preheader128

.lr.ph148:                                        ; preds = %.preheader130
  %.not = icmp eq i32 %i.d, 0
  %i.s = add nsw i32 %4, %1
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.not122 = icmp ne i32 %i.e, 0
  %i.v = add nsw i32 %1, -1
  %wide.trip.count178 = zext nneg i32 %2 to i64
  %wide.trip.count183 = zext nneg i32 %2 to i64
  br label %bb.g

.lr.ph141:                                        ; preds = %.lr.ph141.preheader, %bb.f
  %indvars.iv212 = phi i32 [ 0, %.lr.ph141.preheader ], [ %indvars.iv.next213, %bb.f ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph141.preheader ], [ %indvars.iv.next, %bb.f ] ; 4 uses
  %i.w = trunc nuw nsw i64 %indvars.iv to i32
  %i.x = uitofp nneg i32 %i.w to double
  %i.y = tail call ptr @cuddUniqueConst(ptr noundef %0, double noundef %i.x) #6 ; 3 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %.preheader, label %bb.f

.preheader:                                       ; preds = %.lr.ph141
  %.not164 = icmp eq i64 %indvars.iv, 0
  br i1 %.not164, label %._crit_edge162, label %.lr.ph161.preheader

.lr.ph161.preheader:                              ; preds = %.preheader
  %wide.trip.count215 = zext nneg i32 %indvars.iv212 to i64
  br label %.lr.ph161

.lr.ph161:                                        ; preds = %.lr.ph161.preheader, %.lr.ph161
  %indvars.iv209 = phi i64 [ 0, %.lr.ph161.preheader ], [ %indvars.iv.next210, %.lr.ph161 ] ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv209
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !28
  tail call void @Cudd_RecursiveDeref(ptr noundef %0, ptr noundef %i.ab) #6
  %indvars.iv.next210 = add nuw nsw i64 %indvars.iv209, 1 ; 2 uses
  %exitcond216.not = icmp eq i64 %indvars.iv.next210, %wide.trip.count215
  br i1 %exitcond216.not, label %._crit_edge162, label %.lr.ph161, !llvm.loop !33

._crit_edge162:                                   ; preds = %.lr.ph161, %.preheader
  tail call void @free(ptr noundef %i.h) #6
  tail call void @free(ptr noundef nonnull %i.k) #6
  br label %bb.q

bb.f:                                             ; preds = %.lr.ph141
  %i.ac = ptrtoint ptr %i.y to i64
  %i.ad = and i64 %i.ac, -2
  %i.ae = inttoptr i64 %i.ad to ptr
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 4 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !27
  %i.ah = add i32 %i.ag, 1
  store i32 %i.ah, ptr %i.af, align 4, !tbaa !27
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv
  store ptr %i.y, ptr %i.ai, align 8, !tbaa !28
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  %indvars.iv.next213 = add nuw nsw i32 %indvars.iv212, 1
  br i1 %exitcond.not, label %.preheader130, label %.lr.ph141, !llvm.loop !34

.preheader128:                                    ; preds = %bb.o, %.preheader130
  %i.aj = icmp sgt i32 %2, 1
  %i.ak = and i32 %1, 1
  %i.al = xor i32 %i.ak, 1
  %i.am = zext nneg i32 %i.al to i64              ; 2 uses
  br i1 %i.aj, label %.lr.ph150, label %._crit_edge151

.lr.ph150:                                        ; preds = %.preheader128
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.am
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !42
  %wide.trip.count189 = zext nneg i32 %2 to i64
  br label %bb.p

bb.g:                                             ; preds = %.lr.ph148, %bb.o
  %.0105147 = phi i32 [ 1, %.lr.ph148 ], [ %.1, %bb.o ] ; 2 uses
  %.0106146 = phi i32 [ 0, %.lr.ph148 ], [ %i.cv, %bb.o ] ; 5 uses
  %i.ap = and i32 %.0106146, 1                    ; 2 uses
  %i.aq = xor i32 %i.ap, 1                        ; 3 uses
  %i.ar = xor i32 %.0106146, -1
  %i.as = add i32 %i.s, %i.ar
  %i.at = add nsw i32 %.0106146, %4
  %.0 = select i1 %.not, i32 %i.at, i32 %i.as
  %i.au = load ptr, ptr %i.t, align 8, !tbaa !26
  %i.av = load ptr, ptr %i.u, align 8, !tbaa !44
  %i.aw = tail call ptr @cuddUniqueInter(ptr noundef %0, i32 noundef %.0, ptr noundef %i.au, ptr noundef %i.av) #6 ; 4 uses
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %.preheader125, label %bb.i

.preheader125:                                    ; preds = %bb.g
  br i1 %i.n, label %.lr.ph158, label %._crit_edge159

.lr.ph158:                                        ; preds = %.preheader125
  %i.ay = zext nneg i32 %i.aq to i64
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ay
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !42
  %wide.trip.count207 = zext nneg i32 %2 to i64
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph158, %bb.h
  %indvars.iv204 = phi i64 [ 0, %.lr.ph158 ], [ %indvars.iv.next205, %bb.h ] ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %indvars.iv204
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !28
  tail call void @Cudd_RecursiveDeref(ptr noundef nonnull %0, ptr noundef %i.bc) #6
  %indvars.iv.next205 = add nuw nsw i64 %indvars.iv204, 1 ; 2 uses
  %exitcond208.not = icmp eq i64 %indvars.iv.next205, %wide.trip.count207
  br i1 %exitcond208.not, label %._crit_edge159, label %bb.h, !llvm.loop !35

._crit_edge159:                                   ; preds = %bb.h, %.preheader125
  tail call void @free(ptr noundef %i.h) #6
  tail call void @free(ptr noundef %i.k) #6
  br label %bb.q

bb.i:                                             ; preds = %bb.g
  %i.bd = ptrtoint ptr %i.aw to i64
  %i.be = and i64 %i.bd, -2
  %i.bf = inttoptr i64 %i.be to ptr
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 4 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !27
  %i.bi = add i32 %i.bh, 1
  store i32 %i.bi, ptr %i.bg, align 4, !tbaa !27
  br i1 %i.n, label %.lr.ph143, label %._crit_edge

.lr.ph143:                                        ; preds = %bb.i
  %i.bj = zext nneg i32 %i.aq to i64
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bj
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !42 ; 3 uses
  %i.bm = zext nneg i32 %i.ap to i64
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bm ; 2 uses
  br label %bb.j

.lr.ph145:                                        ; preds = %bb.l
  %i.bo = zext nneg i32 %i.aq to i64
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bo
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !42
  br label %bb.m

bb.j:                                             ; preds = %.lr.ph143, %bb.l
  %indvars.iv194 = phi i32 [ 0, %.lr.ph143 ], [ %indvars.iv.next195, %bb.l ] ; 2 uses
  %indvars.iv175 = phi i64 [ 0, %.lr.ph143 ], [ %indvars.iv.next176, %bb.l ] ; 5 uses
  %i.br = trunc i64 %indvars.iv175 to i32
  %i.bs = add i32 %.0105147, %i.br
  %i.bt = srem i32 %i.bs, %2
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %i.bu
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !28
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %indvars.iv175
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !28
  %i.bz = tail call ptr @Cudd_addIte(ptr noundef %0, ptr noundef nonnull %i.aw, ptr noundef %i.bw, ptr noundef %i.by) #6 ; 3 uses
  %i.ca = icmp eq ptr %i.bz, null
  br i1 %i.ca, label %.preheader127, label %bb.l

.preheader127:                                    ; preds = %bb.j
  %.not163 = icmp eq i64 %indvars.iv175, 0
  br i1 %.not163, label %.lr.ph155.preheader, label %.lr.ph153

.lr.ph153:                                        ; preds = %.preheader127
  %i.cb = load ptr, ptr %i.bn, align 8, !tbaa !42
  %wide.trip.count197 = zext nneg i32 %indvars.iv194 to i64
  br label %bb.k

.lr.ph155.preheader:                              ; preds = %bb.k, %.preheader127
  %wide.trip.count202 = zext nneg i32 %2 to i64
  br label %.lr.ph155

bb.k:                                             ; preds = %.lr.ph153, %bb.k
  %indvars.iv191 = phi i64 [ 0, %.lr.ph153 ], [ %indvars.iv.next192, %bb.k ] ; 2 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %indvars.iv191
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !28
  tail call void @Cudd_RecursiveDeref(ptr noundef %0, ptr noundef %i.cd) #6
  %indvars.iv.next192 = add nuw nsw i64 %indvars.iv191, 1 ; 2 uses
  %exitcond198.not = icmp eq i64 %indvars.iv.next192, %wide.trip.count197
  br i1 %exitcond198.not, label %.lr.ph155.preheader, label %bb.k, !llvm.loop !36

.lr.ph155:                                        ; preds = %.lr.ph155.preheader, %.lr.ph155
  %indvars.iv199 = phi i64 [ 0, %.lr.ph155.preheader ], [ %indvars.iv.next200, %.lr.ph155 ] ; 2 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %indvars.iv199
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !28
  tail call void @Cudd_RecursiveDeref(ptr noundef %0, ptr noundef %i.cf) #6
  %indvars.iv.next200 = add nuw nsw i64 %indvars.iv199, 1 ; 2 uses
  %exitcond203.not = icmp eq i64 %indvars.iv.next200, %wide.trip.count202
  br i1 %exitcond203.not, label %._crit_edge156, label %.lr.ph155, !llvm.loop !37

._crit_edge156:                                   ; preds = %.lr.ph155
  tail call void @free(ptr noundef %i.h) #6
  tail call void @free(ptr noundef %i.k) #6
  br label %bb.q

bb.l:                                             ; preds = %bb.j
  %i.cg = ptrtoint ptr %i.bz to i64
  %i.ch = and i64 %i.cg, -2
  %i.ci = inttoptr i64 %i.ch to ptr
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 4 ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !27
  %i.cl = add i32 %i.ck, 1
  store i32 %i.cl, ptr %i.cj, align 4, !tbaa !27
  %i.cm = load ptr, ptr %i.bn, align 8, !tbaa !42
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %indvars.iv175
  store ptr %i.bz, ptr %i.cn, align 8, !tbaa !28
  %indvars.iv.next176 = add nuw nsw i64 %indvars.iv175, 1 ; 2 uses
  %exitcond179.not = icmp eq i64 %indvars.iv.next176, %wide.trip.count178
  %indvars.iv.next195 = add nuw nsw i32 %indvars.iv194, 1
  br i1 %exitcond179.not, label %.lr.ph145, label %bb.j, !llvm.loop !38

bb.m:                                             ; preds = %.lr.ph145, %bb.m
  %indvars.iv180 = phi i64 [ 0, %.lr.ph145 ], [ %indvars.iv.next181, %bb.m ] ; 2 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %indvars.iv180
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !28
  tail call void @Cudd_RecursiveDeref(ptr noundef %0, ptr noundef %i.cp) #6
  %indvars.iv.next181 = add nuw nsw i64 %indvars.iv180, 1 ; 2 uses
  %exitcond184.not = icmp eq i64 %indvars.iv.next181, %wide.trip.count183
  br i1 %exitcond184.not, label %._crit_edge, label %bb.m, !llvm.loop !39

._crit_edge:                                      ; preds = %bb.m, %bb.i
  tail call void @Cudd_RecursiveDeref(ptr noundef %0, ptr noundef nonnull %i.aw) #6
  %i.cq = shl nsw i32 %.0105147, 1
  %i.cr = srem i32 %i.cq, %2                      ; 2 uses
  %i.cs = icmp eq i32 %.0106146, %i.v
  %or.cond124 = select i1 %.not122, i1 %i.cs, i1 false
  br i1 %or.cond124, label %bb.n, label %bb.o

bb.n:                                             ; preds = %._crit_edge
  %i.ct = sub nsw i32 %2, %i.cr
  %i.cu = srem i32 %i.ct, %2
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge, %bb.n
  %.1 = phi i32 [ %i.cu, %bb.n ], [ %i.cr, %._crit_edge ]
  %i.cv = add nuw nsw i32 %.0106146, 1            ; 2 uses
  %exitcond185.not = icmp eq i32 %i.cv, %1
  br i1 %exitcond185.not, label %.preheader128, label %bb.g, !llvm.loop !40

bb.p:                                             ; preds = %.lr.ph150, %bb.p
  %indvars.iv186 = phi i64 [ 1, %.lr.ph150 ], [ %indvars.iv.next187, %bb.p ] ; 2 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv186
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !28
  tail call void @Cudd_RecursiveDeref(ptr noundef %0, ptr noundef %i.cx) #6
  %indvars.iv.next187 = add nuw nsw i64 %indvars.iv186, 1 ; 2 uses
  %exitcond190.not = icmp eq i64 %indvars.iv.next187, %wide.trip.count189
  br i1 %exitcond190.not, label %._crit_edge151, label %bb.p, !llvm.loop !41

._crit_edge151:                                   ; preds = %bb.p, %.preheader128
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.am
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !42
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !28 ; 2 uses
  tail call void @free(ptr noundef %i.h) #6
  tail call void @free(ptr noundef %i.k) #6
  %i.db = ptrtoint ptr %i.da to i64
  %i.dc = and i64 %i.db, -2
  %i.dd = inttoptr i64 %i.dc to ptr
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 4 ; 2 uses
  %i.df = load i32, ptr %i.de, align 4, !tbaa !27
  %i.dg = add i32 %i.df, -1
  store i32 %i.dg, ptr %i.de, align 4, !tbaa !27
  br label %bb.q

bb.q:                                             ; preds = %bb.a, %._crit_edge151, %._crit_edge156, %._crit_edge159, %._crit_edge162, %bb.e, %bb.c
  %.0113 = phi ptr [ %i.da, %._crit_edge151 ], [ null, %bb.c ], [ null, %bb.e ], [ null, %._crit_edge162 ], [ null, %._crit_edge159 ], [ null, %._crit_edge156 ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret ptr %.0113
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #3

declare ptr @cuddUniqueConst(ptr noundef, double noundef) local_unnamed_addr #4

declare void @Cudd_RecursiveDeref(ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @cuddUniqueInter(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @Cudd_addIte(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 _ZTS6DdNode", !8, i64 0}
!10 = !{!"long", !4, i64 0}
!11 = !{!"DdNode", !5, i64 0, !5, i64 4, !9, i64 8, !4, i64 16, !10, i64 32}
!12 = !{!"p1 _ZTS7DdCache", !8, i64 0}
!13 = !{!"double", !4, i64 0}
!14 = !{!"p1 _ZTS10DdSubtable", !8, i64 0}
!15 = !{!"any p2 pointer", !8, i64 0}
!16 = !{!"p2 _ZTS6DdNode", !15, i64 0}
!17 = !{!"DdSubtable", !16, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48}
!18 = !{!"p1 int", !8, i64 0}
!19 = !{!"p1 long", !8, i64 0}
!20 = !{!"p1 omnipotent char", !8, i64 0}
!21 = !{!"p1 _ZTS7MtrNode", !8, i64 0}
!22 = !{!"p1 _ZTS12DdLocalCache", !8, i64 0}
!23 = !{!"p1 _ZTS6DdHook", !8, i64 0}
!24 = !{!"p1 _ZTS8_IO_FILE", !8, i64 0}
!25 = !{!"DdManager", !11, i64 0, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !12, i64 80, !12, i64 88, !5, i64 96, !5, i64 100, !13, i64 104, !13, i64 112, !13, i64 120, !5, i64 128, !5, i64 132, !5, i64 136, !5, i64 140, !5, i64 144, !5, i64 148, !14, i64 152, !14, i64 160, !17, i64 168, !5, i64 224, !5, i64 228, !5, i64 232, !5, i64 236, !5, i64 240, !5, i64 244, !5, i64 248, !13, i64 256, !5, i64 264, !5, i64 268, !5, i64 272, !16, i64 280, !10, i64 288, !10, i64 296, !13, i64 304, !5, i64 312, !18, i64 320, !18, i64 328, !18, i64 336, !18, i64 344, !16, i64 352, !18, i64 360, !16, i64 368, !5, i64 376, !19, i64 384, !19, i64 392, !16, i64 400, !9, i64 408, !20, i64 416, !16, i64 424, !5, i64 432, !5, i64 436, !5, i64 440, !13, i64 448, !5, i64 456, !5, i64 460, !5, i64 464, !5, i64 468, !13, i64 472, !13, i64 480, !5, i64 488, !5, i64 492, !5, i64 496, !5, i64 500, !5, i64 504, !5, i64 508, !5, i64 512, !5, i64 516, !5, i64 520, !21, i64 528, !21, i64 536, !5, i64 544, !5, i64 548, !5, i64 552, !5, i64 556, !5, i64 560, !5, i64 564, !22, i64 568, !20, i64 576, !23, i64 584, !23, i64 592, !23, i64 600, !23, i64 608, !24, i64 616, !24, i64 624, !5, i64 632, !10, i64 640, !10, i64 648, !10, i64 656, !5, i64 664, !10, i64 672, !10, i64 680, !13, i64 688, !13, i64 696, !13, i64 704, !13, i64 712, !13, i64 720, !13, i64 728, !5, i64 736, !9, i64 744, !9, i64 752, !10, i64 760}
!26 = !{!25, !9, i64 40}
!27 = !{!11, !5, i64 4}
!28 = !{!9, !9, i64 0}
!29 = !{!"llvm.loop.mustprogress"}
!30 = distinct !{!30, !29}
!31 = distinct !{!31, !29}
!32 = !{!25, !5, i64 456}
!33 = distinct !{!33, !29}
!34 = distinct !{!34, !29}
!35 = distinct !{!35, !29}
!36 = distinct !{!36, !29}
!37 = distinct !{!37, !29}
!38 = distinct !{!38, !29}
!39 = distinct !{!39, !29}
!40 = distinct !{!40, !29}
!41 = distinct !{!41, !29}
!42 = !{!16, !16, i64 0}
!43 = !{!25, !5, i64 632}
!44 = !{!25, !9, i64 48}
end_hunk_0
