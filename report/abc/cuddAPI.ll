Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/cuddAPI?download=true
inline.NumInlined: 40
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@Cudd_bddNewVarAtLevel:bb.a
Cudd_bddIthVar.exit:                              ; preds = %bb.d, %bb.c, %bb.e, %bb.a, %bb.f
  %.0 = phi ptr [ null, %bb.a ], [ null, %bb.e ], [ %i.r, %bb.f ], [ null, %bb.c ], [ %i.j, %bb.d ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define ptr @Cudd_bddIthVar(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ugt i32 %1, 2147483645
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.c = load i32, ptr %i.b, align 8, !tbaa !32
  %i.d = icmp slt i32 %1, %i.c
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !37
  %i.g = zext nneg i32 %1 to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !38
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !34   ; 2 uses
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = xor i64 %i.l, 1
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = tail call ptr @cuddUniqueInter(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %i.k, ptr noundef %i.n) #22
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.a
  %.010 = phi ptr [ null, %bb.a ], [ %i.i, %bb.c ], [ %i.o, %bb.d ]
  ret ptr %.010
}

; Function Attrs: nounwind uwtable
define ptr @Cudd_zddIthVar(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ugt i32 %1, 2147483645
  br i1 %i.a, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.c = load i32, ptr %i.b, align 4, !tbaa !39
  %i.d = add nsw i32 %i.c, -1
  %i.e = icmp slt i32 %1, %i.d
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !40
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !41
  %i.j = zext nneg i32 %1 to i64
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.j
  %i.l = load i32, ptr %i.k, align 4, !tbaa !42
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr [8 x i8], ptr %i.g, i64 %i.m
  %i.o = getelementptr i8, ptr %i.n, i64 8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.in = phi ptr [ %i.o, %bb.c ], [ %i.p, %bb.d ]
  %i.q = load ptr, ptr %.in, align 8, !tbaa !38
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 456 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  store i32 0, ptr %i.r, align 8, !tbaa !33
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !35
  %i.u = tail call ptr @cuddUniqueInterZdd(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %i.q, ptr noundef %i.t) #22 ; 4 uses
  %i.v = load i32, ptr %i.r, align 8, !tbaa !33
  %i.w = icmp eq i32 %i.v, 1
  br i1 %i.w, label %bb.f, label %bb.g, !llvm.loop !122

bb.g:                                             ; preds = %bb.f
  %i.x = icmp eq ptr %i.u, null
  br i1 %i.x, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = ptrtoint ptr %i.u to i64
  %i.z = and i64 %i.y, -2
  %i.aa = inttoptr i64 %i.z to ptr                ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 4 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !43
  %i.ad = add i32 %i.ac, 1
  store i32 %i.ad, ptr %i.ab, align 4, !tbaa !43
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !41
  %i.ag = zext nneg i32 %1 to i64
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !42 ; 2 uses
  %i.aj = icmp sgt i32 %i.ai, 0
  br i1 %i.aj, label %.preheader.lr.ph, label %._crit_edge

.preheader.lr.ph:                                 ; preds = %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.al = zext nneg i32 %i.ai to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.l
  %indvars.iv = phi i64 [ %i.al, %.preheader.lr.ph ], [ %indvars.iv.next, %bb.l ] ; 2 uses
  %.03544 = phi ptr [ %i.u, %.preheader.lr.ph ], [ %i.ap, %bb.l ] ; 4 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %.preheader, %bb.i
  store i32 0, ptr %i.r, align 8, !tbaa !33
  %i.am = load ptr, ptr %i.ak, align 8, !tbaa !44
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv.next
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !42
  %i.ap = tail call ptr @cuddUniqueInterZdd(ptr noundef nonnull %0, i32 noundef %i.ao, ptr noundef nonnull %.03544, ptr noundef nonnull %.03544) #22 ; 4 uses
  %i.aq = load i32, ptr %i.r, align 8, !tbaa !33
  %i.ar = icmp eq i32 %i.aq, 1
  br i1 %i.ar, label %bb.i, label %bb.j, !llvm.loop !123

bb.j:                                             ; preds = %bb.i
  %i.as = icmp eq ptr %i.ap, null
  br i1 %i.as, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void @Cudd_RecursiveDerefZdd(ptr noundef nonnull %0, ptr noundef nonnull %.03544) #22
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.at = ptrtoint ptr %i.ap to i64
  %i.au = and i64 %i.at, -2
  %i.av = inttoptr i64 %i.au to ptr               ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 4 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !43
  %i.ay = add i32 %i.ax, 1
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !43
  tail call void @Cudd_RecursiveDerefZdd(ptr noundef nonnull %0, ptr noundef nonnull %.03544) #22
  %i.az = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.az, label %.preheader, label %._crit_edge, !llvm.loop !124

._crit_edge:                                      ; preds = %bb.l, %bb.h
  %.pre-phi51 = phi ptr [ %i.aa, %bb.h ], [ %i.av, %bb.l ]
  %.035.lcssa = phi ptr [ %i.u, %bb.h ], [ %i.ap, %bb.l ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.pre-phi51, i64 4 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !43
  %i.bc = add i32 %i.bb, -1
  store i32 %i.bc, ptr %i.ba, align 4, !tbaa !43
  br label %bb.m

bb.m:                                             ; preds = %bb.g, %bb.a, %._crit_edge, %bb.k
  %.036 = phi ptr [ %.035.lcssa, %._crit_edge ], [ null, %bb.a ], [ null, %bb.k ], [ null, %bb.g ]
  ret ptr %.036
}

declare ptr @cuddUniqueInterZdd(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @Cudd_RecursiveDerefZdd(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @Cudd_zddVarsFromBddVars(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i32 %1, 1
  br i1 %i.a, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 4 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !39   ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 5 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !32
  %i.g = mul nsw i32 %i.f, %1                     ; 2 uses
  %i.h = icmp sgt i32 %i.g, %i.c
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = add nsw i32 %i.g, -1
  %i.j = tail call i32 @cuddResizeTableZdd(ptr noundef nonnull %0, i32 noundef %i.i) #22
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  br i1 %i.d, label %.preheader126, label %bb.f

.preheader126:                                    ; preds = %bb.d
  %i.l = load i32, ptr %i.e, align 8, !tbaa !32
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.preheader125.lr.ph.split, label %.preheader124

.preheader125.lr.ph.split:                        ; preds = %.preheader126
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !45
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !41   ; 3 uses
  %i.s = load ptr, ptr %i.n, align 8, !tbaa !44   ; 3 uses
  %2 = zext nneg i32 %1 to i64
  %wide.trip.count159 = zext nneg i32 %1 to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count159, 1
  %i.t = icmp eq i32 %1, 1
  %unroll_iter = and i64 %wide.trip.count159, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod200 = trunc i32 %1 to i1
  br label %.preheader125

.preheader125:                                    ; preds = %.preheader125.lr.ph.split, %._crit_edge137
  %indvars.iv161 = phi i64 [ 0, %.preheader125.lr.ph.split ], [ %indvars.iv.next162, %._crit_edge137 ] ; 3 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv161 ; 3 uses
  %i.v = mul nuw nsw i64 %indvars.iv161, %2       ; 3 uses
  br i1 %i.t, label %.epil.preheader, label %.preheader125.new

.preheader124:                                    ; preds = %._crit_edge137, %.preheader126
  %i.w = load i32, ptr %i.b, align 4, !tbaa !39   ; 3 uses
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %.lr.ph140, label %.loopexit

.lr.ph140:                                        ; preds = %.preheader124
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !44   ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !40 ; 5 uses
  %wide.trip.count167 = zext nneg i32 %i.w to i64 ; 2 uses
  %xtraiter202 = and i64 %wide.trip.count167, 3   ; 3 uses
  %i.ac = icmp ult i32 %i.w, 4
  br i1 %i.ac, label %.epil.preheader201, label %.lr.ph140.new

.lr.ph140.new:                                    ; preds = %.lr.ph140
  %unroll_iter205 = and i64 %wide.trip.count167, 2147483644
  br label %bb.e

.preheader125.new:                                ; preds = %.preheader125, %.preheader125.new
  %indvars.iv155 = phi i64 [ %indvars.iv.next156.1, %.preheader125.new ], [ 0, %.preheader125 ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.preheader125.new ], [ 0, %.preheader125 ]
  %i.ad = load i32, ptr %i.u, align 4, !tbaa !42
  %i.ae = mul nsw i32 %i.ad, %1
  %i.af = trunc nuw nsw i64 %indvars.iv155 to i32
  %i.ag = add nsw i32 %i.ae, %i.af                ; 2 uses
  %i.ah = add nuw nsw i64 %indvars.iv155, %i.v    ; 2 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.ah
  store i32 %i.ag, ptr %i.ai, align 4, !tbaa !42
  %i.aj = sext i32 %i.ag to i64
  %i.ak = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.aj
  %i.al = trunc nuw i64 %i.ah to i32
  store i32 %i.al, ptr %i.ak, align 4, !tbaa !42
  %indvars.iv.next156 = or disjoint i64 %indvars.iv155, 1 ; 2 uses
  %i.am = load i32, ptr %i.u, align 4, !tbaa !42
  %i.an = mul nsw i32 %i.am, %1
  %i.ao = trunc nuw nsw i64 %indvars.iv.next156 to i32
  %i.ap = add nsw i32 %i.an, %i.ao                ; 2 uses
  %i.aq = add nuw nsw i64 %indvars.iv.next156, %i.v ; 2 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.aq
  store i32 %i.ap, ptr %i.ar, align 4, !tbaa !42
  %i.as = sext i32 %i.ap to i64
  %i.at = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.as
  %i.au = trunc nuw i64 %i.aq to i32
  store i32 %i.au, ptr %i.at, align 4, !tbaa !42
  %indvars.iv.next156.1 = add nuw nsw i64 %indvars.iv155, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge137.unr-lcssa, label %.preheader125.new, !llvm.loop !125

._crit_edge137.unr-lcssa:                         ; preds = %.preheader125.new
  br i1 %lcmp.mod.not, label %._crit_edge137, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge137.unr-lcssa, %.preheader125
  %indvars.iv155.epil.init = phi i64 [ 0, %.preheader125 ], [ %indvars.iv.next156.1, %._crit_edge137.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod200)
  %i.av = load i32, ptr %i.u, align 4, !tbaa !42
  %i.aw = mul nsw i32 %i.av, %1
  %i.ax = trunc nuw nsw i64 %indvars.iv155.epil.init to i32
  %i.ay = add nsw i32 %i.aw, %i.ax                ; 2 uses
  %i.az = add nuw nsw i64 %indvars.iv155.epil.init, %i.v ; 2 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.az
  store i32 %i.ay, ptr %i.ba, align 4, !tbaa !42
  %i.bb = sext i32 %i.ay to i64
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.bb
  %i.bd = trunc nuw i64 %i.az to i32
  store i32 %i.bd, ptr %i.bc, align 4, !tbaa !42
  br label %._crit_edge137

._crit_edge137:                                   ; preds = %._crit_edge137.unr-lcssa, %.epil.preheader
  %indvars.iv.next162 = add nuw nsw i64 %indvars.iv161, 1 ; 2 uses
  %i.be = load i32, ptr %i.e, align 8, !tbaa !32
  %i.bf = sext i32 %i.be to i64
  %i.bg = icmp slt i64 %indvars.iv.next162, %i.bf
  br i1 %i.bg, label %.preheader125, label %.preheader124, !llvm.loop !126

bb.e:                                             ; preds = %bb.e, %.lr.ph140.new
  %indvars.iv164 = phi i64 [ 0, %.lr.ph140.new ], [ %indvars.iv.next165.3, %bb.e ] ; 6 uses
  %niter206 = phi i64 [ 0, %.lr.ph140.new ], [ %niter206.next.3, %bb.e ]
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv164
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !42
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv164
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !38
  store i32 %i.bi, ptr %i.bk, align 8, !tbaa !46
  %indvars.iv.next165 = or disjoint i64 %indvars.iv164, 1 ; 2 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv.next165
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !42
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next165
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !38
  store i32 %i.bm, ptr %i.bo, align 8, !tbaa !46
  %indvars.iv.next165.1 = or disjoint i64 %indvars.iv164, 2 ; 2 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv.next165.1
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !42
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next165.1
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !38
  store i32 %i.bq, ptr %i.bs, align 8, !tbaa !46
  %indvars.iv.next165.2 = or disjoint i64 %indvars.iv164, 3 ; 2 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv.next165.2
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !42
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next165.2
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !38
  store i32 %i.bu, ptr %i.bw, align 8, !tbaa !46
  %indvars.iv.next165.3 = add nuw nsw i64 %indvars.iv164, 4 ; 2 uses
  %niter206.next.3 = add i64 %niter206, 4         ; 2 uses
  %niter206.ncmp.3 = icmp eq i64 %niter206.next.3, %unroll_iter205
  br i1 %niter206.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %bb.e, !llvm.loop !127

bb.f:                                             ; preds = %bb.d
  %i.bx = load i32, ptr %i.b, align 4, !tbaa !39  ; 2 uses
  %i.by = sext i32 %i.bx to i64                   ; 3 uses
  %i.bz = shl nsw i64 %i.by, 2
  %i.ca = tail call noalias ptr @malloc(i64 noundef %i.bz) #23 ; 6 uses
  %i.cb = icmp eq ptr %i.ca, null
  br i1 %i.cb, label %bb.g, label %.preheader128

.preheader128:                                    ; preds = %bb.f
  %i.cc = load i32, ptr %i.e, align 8, !tbaa !32  ; 3 uses
  %i.cd = icmp sgt i32 %i.cc, 0
  br i1 %i.cd, label %.preheader127.lr.ph.split, label %._crit_edge131.split

.preheader127.lr.ph.split:                        ; preds = %.preheader128
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !47
  %i.cg = zext nneg i32 %1 to i64
  %wide.trip.count148 = zext nneg i32 %i.cc to i64
  %wide.trip.count = zext nneg i32 %1 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %1, 8
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.preheader127

bb.g:                                             ; preds = %bb.f
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 632
  store i32 1, ptr %i.ch, align 8, !tbaa !48
  br label %.critedge

.preheader127:                                    ; preds = %.preheader127.lr.ph.split, %._crit_edge
  %indvars.iv145 = phi i64 [ 0, %.preheader127.lr.ph.split ], [ %indvars.iv.next146, %._crit_edge ] ; 3 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv145
  %i.cj = mul nuw nsw i64 %indvars.iv145, %i.cg
  %.pre = load i32, ptr %i.ci, align 4, !tbaa !42
  %i.ck = mul nsw i32 %.pre, %1                   ; 2 uses
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.cj ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader127
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.ck, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op = add <4 x i32> splat (i32 4), %broadcast.splat
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %i.cl = add nsw <4 x i32> %broadcast.splat, %vec.ind
  %.reass = add <4 x i32> %vec.ind, %invariant.op
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  store <4 x i32> %i.cl, ptr %i.cm, align 4, !tbaa !42
  store <4 x i32> %.reass, ptr %i.cn, align 4, !tbaa !42
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.co = icmp eq i64 %index.next, %n.vec
  br i1 %i.co, label %middle.block, label %vector.body, !llvm.loop !128

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader127, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader127 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.cp = trunc nuw nsw i64 %indvars.iv to i32
  %i.cq = add nsw i32 %i.ck, %i.cp
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  store i32 %i.cq, ptr %gep, align 4, !tbaa !42
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !129

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %indvars.iv.next146 = add nuw nsw i64 %indvars.iv145, 1 ; 2 uses
  %exitcond149.not = icmp eq i64 %indvars.iv.next146, %wide.trip.count148
  br i1 %exitcond149.not, label %._crit_edge131.split, label %.preheader127, !llvm.loop !130

._crit_edge131.split:                             ; preds = %._crit_edge, %.preheader128
  %i.cr = mul nsw i32 %i.cc, %1                   ; 3 uses
  %i.cs = icmp slt i32 %i.cr, %i.bx
  br i1 %i.cs, label %.lr.ph.preheader, label %._crit_edge134

.lr.ph.preheader:                                 ; preds = %._crit_edge131.split
  %i.ct = sext i32 %i.cr to i64                   ; 4 uses
  %i.cu = sub nsw i64 %i.by, %i.ct                ; 3 uses
  %min.iters.check185 = icmp ult i64 %i.cu, 8
  br i1 %min.iters.check185, label %.lr.ph.preheader199, label %vector.ph186

vector.ph186:                                     ; preds = %.lr.ph.preheader
  %n.vec187 = and i64 %i.cu, -8                   ; 3 uses
  %i.cv = add nsw i64 %n.vec187, %i.ct
  %broadcast.splatinsert188 = insertelement <4 x i32> poison, i32 %i.cr, i64 0
  %broadcast.splat189 = shufflevector <4 x i32> %broadcast.splatinsert188, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = add <4 x i32> %broadcast.splat189, <i32 0, i32 1, i32 2, i32 3>
  %invariant.gep207 = getelementptr [4 x i8], ptr %i.ca, i64 %i.ct
  br label %vector.body190

vector.body190:                                   ; preds = %vector.body190, %vector.ph186
  %index191 = phi i64 [ 0, %vector.ph186 ], [ %index.next194, %vector.body190 ] ; 2 uses
  %vec.ind192 = phi <4 x i32> [ %induction, %vector.ph186 ], [ %vec.ind.next195, %vector.body190 ] ; 3 uses
  %step.add193 = add <4 x i32> %vec.ind192, splat (i32 4)
  %gep208 = getelementptr [4 x i8], ptr %invariant.gep207, i64 %index191 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %gep208, i64 16
  store <4 x i32> %vec.ind192, ptr %gep208, align 4, !tbaa !42
  store <4 x i32> %step.add193, ptr %i.cw, align 4, !tbaa !42
  %index.next194 = add nuw i64 %index191, 8       ; 2 uses
  %vec.ind.next195 = add <4 x i32> %vec.ind192, splat (i32 8)
  %i.cx = icmp eq i64 %index.next194, %n.vec187
  br i1 %i.cx, label %middle.block196, label %vector.body190, !llvm.loop !131

middle.block196:                                  ; preds = %vector.body190
  %cmp.n197 = icmp eq i64 %i.cu, %n.vec187
  br i1 %cmp.n197, label %._crit_edge134, label %.lr.ph.preheader199

.lr.ph.preheader199:                              ; preds = %.lr.ph.preheader, %middle.block196
  %indvars.iv150.ph = phi i64 [ %i.ct, %.lr.ph.preheader ], [ %i.cv, %middle.block196 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader199, %.lr.ph
  %indvars.iv150 = phi i64 [ %indvars.iv.next151, %.lr.ph ], [ %indvars.iv150.ph, %.lr.ph.preheader199 ] ; 3 uses
  %i.cy = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %indvars.iv150
  %i.cz = trunc nsw i64 %indvars.iv150 to i32
  store i32 %i.cz, ptr %i.cy, align 4, !tbaa !42
  %indvars.iv.next151 = add nsw i64 %indvars.iv150, 1 ; 2 uses
  %exitcond154.not = icmp eq i64 %indvars.iv.next151, %i.by
  br i1 %exitcond154.not, label %._crit_edge134, label %.lr.ph, !llvm.loop !132

._crit_edge134:                                   ; preds = %.lr.ph, %middle.block196, %._crit_edge131.split
  %i.da = tail call i32 @Cudd_zddShuffleHeap(ptr noundef %0, ptr noundef nonnull %i.ca) #22
  tail call void @free(ptr noundef nonnull %i.ca) #22
  %i.db = icmp eq i32 %i.da, 0
  br i1 %i.db, label %.critedge, label %.loopexit

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.e
  %lcmp.mod203.not = icmp eq i64 %xtraiter202, 0
  br i1 %lcmp.mod203.not, label %.loopexit, label %.epil.preheader201

.epil.preheader201:                               ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph140
  %indvars.iv164.epil.init = phi i64 [ 0, %.lr.ph140 ], [ %indvars.iv.next165.3, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod204 = icmp ne i64 %xtraiter202, 0
  tail call void @llvm.assume(i1 %lcmp.mod204)
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.epil.preheader201
  %indvars.iv164.epil = phi i64 [ %indvars.iv164.epil.init, %.epil.preheader201 ], [ %indvars.iv.next165.epil, %bb.h ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader201 ], [ %epil.iter.next, %bb.h ]
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv164.epil
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !42
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv164.epil
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !38
  store i32 %i.dd, ptr %i.df, align 8, !tbaa !46
  %indvars.iv.next165.epil = add nuw nsw i64 %indvars.iv164.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter202
  br i1 %epil.iter.cmp.not, label %.loopexit, label %bb.h, !llvm.loop !133

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.h, %.preheader124, %._crit_edge134
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 4 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !52 ; 2 uses
  %.not = icmp eq ptr %i.dh, null
  br i1 %.not, label %bb.i, label %Cudd_FreeZddTree.exit

Cudd_FreeZddTree.exit:                            ; preds = %.loopexit
  tail call void @Mtr_FreeTree(ptr noundef nonnull %i.dh) #22
  store ptr null, ptr %i.dg, align 8, !tbaa !52
  br label %bb.i

bb.i:                                             ; preds = %Cudd_FreeZddTree.exit, %.loopexit
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !53 ; 2 uses
  %.not120 = icmp eq ptr %i.dj, null
  br i1 %.not120, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dk = tail call ptr @Mtr_CopyTree(ptr noundef nonnull %i.dj, i32 noundef %1) #22 ; 3 uses
  store ptr %i.dk, ptr %i.dg, align 8, !tbaa !52
  %i.dl = icmp eq ptr %i.dk, null
  br i1 %i.dl, label %.critedge, label %bb.m

bb.k:                                             ; preds = %bb.i
  %cond = icmp eq i32 %1, 1
  br i1 %cond, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dm = load i32, ptr %i.b, align 4, !tbaa !39
  %i.dn = tail call ptr @Mtr_InitGroupTree(i32 noundef 0, i32 noundef %i.dm) #22 ; 4 uses
  store ptr %i.dn, ptr %i.dg, align 8, !tbaa !52
  %i.do = icmp eq ptr %i.dn, null
  br i1 %i.do, label %.critedge, label %.thread

.thread:                                          ; preds = %bb.l
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !44
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !42
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dn, i64 12
  store i32 %i.dr, ptr %i.ds, align 4, !tbaa !55
  br label %bb.n

bb.m:                                             ; preds = %bb.j
  %.not122 = icmp eq i32 %1, 1
  br i1 %.not122, label %.critedge, label %bb.n

bb.n:                                             ; preds = %.thread, %bb.m
  %i.dt = phi ptr [ %i.dn, %.thread ], [ %i.dk, %bb.m ]
  %i.du = load i32, ptr %i.e, align 8, !tbaa !32  ; 3 uses
  %i.dv = sext i32 %i.du to i64                   ; 2 uses
  %i.dw = tail call noalias ptr @malloc(i64 noundef %i.dv) #23 ; 4 uses
  %i.dx = icmp eq ptr %i.dw, null
  br i1 %i.dx, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 632
  store i32 1, ptr %i.dy, align 8, !tbaa !48
  br label %.critedge

bb.p:                                             ; preds = %bb.n
  %i.dz = tail call noalias ptr @malloc(i64 noundef %i.dv) #23 ; 4 uses
  %i.ea = icmp eq ptr %i.dz, null
  br i1 %i.ea, label %bb.q, label %.preheader

.preheader:                                       ; preds = %bb.p
  %i.eb = icmp sgt i32 %i.du, 0
  br i1 %i.eb, label %.lr.ph142.preheader, label %._crit_edge143

.lr.ph142.preheader:                              ; preds = %.preheader
  %i.ec = zext nneg i32 %i.du to i64              ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.dz, i8 0, i64 %i.ec, i1 false), !tbaa !56
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.dw, i8 0, i64 %i.ec, i1 false), !tbaa !56
  br label %._crit_edge143

bb.q:                                             ; preds = %bb.p
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 632
  store i32 1, ptr %i.ed, align 8, !tbaa !48
  br label %.critedge

._crit_edge143:                                   ; preds = %.lr.ph142.preheader, %.preheader
  %i.ee = tail call fastcc i32 @addMultiplicityGroups(ptr noundef nonnull %0, ptr noundef nonnull %i.dt, i32 noundef %1, ptr noundef %i.dw, ptr noundef %i.dz)
  tail call void @free(ptr noundef nonnull %i.dw) #22
  tail call void @free(ptr noundef nonnull %i.dz) #22
  br label %.critedge

.critedge:                                        ; preds = %._crit_edge143, %bb.k, %bb.o, %bb.q, %bb.m, %bb.l, %bb.j, %._crit_edge134, %bb.c, %bb.a, %bb.g
  %.1111 = phi i32 [ 0, %bb.c ], [ 0, %bb.a ], [ 0, %._crit_edge134 ], [ 0, %bb.l ], [ 1, %bb.m ], [ 0, %bb.j ], [ 0, %bb.g ], [ 0, %bb.o ], [ 1, %bb.k ], [ %i.ee, %._crit_edge143 ], [ 0, %bb.q ]
  ret i32 %.1111
}

declare i32 @cuddResizeTableZdd(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #2

declare i32 @Cudd_zddShuffleHeap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @Cudd_FreeZddTree(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @Mtr_FreeTree(ptr noundef nonnull %i.b) #22
  store ptr null, ptr %i.a, align 8, !tbaa !52
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
end_hunk_0
