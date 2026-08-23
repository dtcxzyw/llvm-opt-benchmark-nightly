Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/aigPartReg?download=true
inline.NumInlined: 200
inline.NumDeleted: 45
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@Aig_ManRegFindBestVar:bb.a
bb.d:                                             ; preds = %bb.c
  %i.z = load ptr, ptr %i.j, align 8, !tbaa !47
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 %i.w
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !55
  %i.ac = sext i8 %i.ab to i32
  %i.ad = mul nsw i32 %i.ac, 3
  %i.ae = add i32 %.03038, 1
  %i.af = add i32 %i.ae, %i.ad
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.131 = phi i32 [ %.03038, %bb.c ], [ %i.af, %bb.d ] ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %.val36, i64 %indvars.iv
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !56
  %i.aj = sext i32 %i.ai to i64                   ; 2 uses
  %i.ak = getelementptr inbounds i8, ptr %i.s, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !55
  %.not.1 = icmp eq i8 %i.al, 0
  br i1 %.not.1, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.am = load ptr, ptr %i.j, align 8, !tbaa !47
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 %i.aj
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !55
  %i.ap = sext i8 %i.ao to i32
  %i.aq = mul nsw i32 %i.ap, 3
  %i.ar = add i32 %.131, 1
  %i.as = add i32 %i.ar, %i.aq
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.131.1 = phi i32 [ %.131, %bb.e ], [ %i.as, %bb.f ] ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.critedge2.unr-lcssa, label %bb.c, !llvm.loop !61

.critedge2.unr-lcssa:                             ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.critedge2, label %.epil.preheader

.epil.preheader:                                  ; preds = %.critedge2.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.critedge2.unr-lcssa ]
  %.03038.epil.init = phi i32 [ 0, %.lr.ph ], [ %.131.1, %.critedge2.unr-lcssa ] ; 2 uses
  %lcmp.mod54 = trunc i32 %.val34 to i1
  tail call void @llvm.assume(i1 %lcmp.mod54)
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %.val36, i64 %indvars.iv.epil.init
  %i.au = load i32, ptr %i.at, align 4, !tbaa !56
  %i.av = sext i32 %i.au to i64                   ; 2 uses
  %i.aw = getelementptr inbounds i8, ptr %i.s, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !55
  %.not.epil = icmp eq i8 %i.ax, 0
  br i1 %.not.epil, label %bb.h, label %.critedge2

bb.h:                                             ; preds = %.epil.preheader
  %i.ay = load ptr, ptr %i.j, align 8, !tbaa !47
  %i.az = getelementptr inbounds i8, ptr %i.ay, i64 %i.av
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !55
  %i.bb = sext i8 %i.ba to i32
  %i.bc = mul nsw i32 %i.bb, 3
  %i.bd = add i32 %.03038.epil.init, 1
  %i.be = add i32 %i.bd, %i.bc
  br label %.critedge2

.critedge2:                                       ; preds = %.epil.preheader, %bb.h, %.critedge2.unr-lcssa
  %.131.lcssa = phi i32 [ %.131.1, %.critedge2.unr-lcssa ], [ %.03038.epil.init, %.epil.preheader ], [ %i.be, %bb.h ] ; 3 uses
  %i.bf = icmp eq i32 %.131.lcssa, 0
  br i1 %i.bf, label %.critedge, label %bb.i

bb.i:                                             ; preds = %.critedge2
  %i.bg = icmp sgt i32 %.02840, %.131.lcssa
  %spec.select = tail call i32 @llvm.smin.i32(i32 %.02840, i32 %.131.lcssa)
  %spec.select33 = select i1 %i.bg, i32 %i.l, i32 %.02741 ; 2 uses
  %indvars.iv.next48 = add nuw nsw i64 %indvars.iv47, 1 ; 2 uses
  %exitcond51.not = icmp eq i64 %indvars.iv.next48, %wide.trip.count50
  br i1 %exitcond51.not, label %.critedge, label %bb.b, !llvm.loop !62

.critedge:                                        ; preds = %bb.b, %.critedge2, %bb.i, %bb.a
  %.032 = phi i32 [ -1, %bb.a ], [ %i.l, %bb.b ], [ %spec.select33, %bb.i ], [ %i.l, %.critedge2 ]
  ret i32 %.032
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define void @Aig_ManRegPartitionAdd(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !47
  %i.c = sext i32 %1 to i64                       ; 3 uses
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 %i.c ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !55
  %.not = icmp eq i8 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %i.d, align 1, !tbaa !55
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !30   ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4 ; 3 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !24   ; 7 uses
  %i.j = load i32, ptr %i.g, align 8, !tbaa !27
  %i.k = icmp eq i32 %i.i, %i.j
  br i1 %i.k, label %bb.c, label %Vec_IntPush.exit

bb.c:                                             ; preds = %bb.b
  %i.l = icmp slt i32 %i.i, 16
  br i1 %i.l, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !28   ; 2 uses
  %.not9.i.i = icmp eq ptr %i.n, null
  br i1 %.not9.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.n, i64 noundef 64) #16
  br label %Vec_IntGrow.exit.i

bb.f:                                             ; preds = %bb.d
  %i.p = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #15
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.f, %bb.e
  %i.q = phi ptr [ %i.o, %bb.e ], [ %i.p, %bb.f ]
  store ptr %i.q, ptr %i.m, align 8, !tbaa !28
  br label %Vec_IntGrow.exit11.sink.split.i

bb.g:                                             ; preds = %bb.c
  %i.r = icmp samesign ult i32 %i.i, 1073741823
  %i.s = shl nuw nsw i32 %i.i, 1
  %spec.select.i = select i1 %i.r, i32 %i.s, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %i.i, %spec.select.i
  br i1 %.not.i9.i, label %bb.h, label %Vec_IntPush.exit

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !28   ; 2 uses
  %.not9.i10.i = icmp eq ptr %i.u, null
  %i.v = zext nneg i32 %spec.select.i to i64
  %i.w = shl nuw nsw i64 %i.v, 2                  ; 2 uses
  br i1 %.not9.i10.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = tail call ptr @realloc(ptr noundef nonnull %i.u, i64 noundef %i.w) #16
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.y = tail call noalias ptr @malloc(i64 noundef %i.w) #15
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.z = phi ptr [ %i.x, %bb.i ], [ %i.y, %bb.j ]
  store ptr %i.z, ptr %i.t, align 8, !tbaa !28
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.k, %Vec_IntGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.k ], [ 16, %Vec_IntGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %i.g, align 8, !tbaa !27
  %.pre = load i32, ptr %i.h, align 4, !tbaa !24
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.b, %bb.g, %Vec_IntGrow.exit11.sink.split.i
  %i.aa = phi i32 [ %i.i, %bb.b ], [ %i.i, %bb.g ], [ %.pre, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !28
  %i.ad = add nsw i32 %i.aa, 1
  store i32 %i.ad, ptr %i.h, align 4, !tbaa !24
  %i.ae = sext i32 %i.aa to i64
  %i.af = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.ae
  store i32 %1, ptr %i.af, align 4, !tbaa !56
  br label %bb.l

bb.l:                                             ; preds = %Vec_IntPush.exit, %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !31 ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 4      ; 3 uses
  %.val32 = load i32, ptr %i.ai, align 4, !tbaa !24 ; 5 uses
  %i.aj = icmp sgt i32 %.val32, 0
  br i1 %i.aj, label %.lr.ph.i, label %Vec_IntRemove.exit

.lr.ph.i:                                         ; preds = %bb.l
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !28 ; 3 uses
  %wide.trip.count.i = zext nneg i32 %.val32 to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.n, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.n ] ; 5 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv.i
  %i.an = load i32, ptr %i.am, align 4, !tbaa !56
  %i.ao = icmp eq i32 %i.an, %1
  br i1 %i.ao, label %._crit_edge.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %Vec_IntRemove.exit, label %bb.m, !llvm.loop !63

._crit_edge.i:                                    ; preds = %bb.m
  %i.ap = trunc nuw nsw i64 %indvars.iv.i to i32
  %.123.i = add nuw nsw i32 %i.ap, 1              ; 2 uses
  %i.aq = icmp slt i32 %.123.i, %.val32
  br i1 %i.aq, label %.lr.ph26.i, label %._crit_edge27.i

.lr.ph26.i:                                       ; preds = %._crit_edge.i
  %2 = zext i32 %.123.i to i64
  %i.ar = shl nuw nsw i64 %indvars.iv.i, 2
  %scevgep = getelementptr nuw i8, ptr %i.al, i64 %i.ar
  %3 = shl nuw nsw i64 %2, 2
  %scevgep59 = getelementptr nuw i8, ptr %i.al, i64 %3
  %i.as = add nsw i32 %.val32, -2
  %i.at = trunc i64 %indvars.iv.i to i32
  %i.au = sub i32 %i.as, %i.at
  %i.av = zext i32 %i.au to i64
  %i.aw = shl nuw nsw i64 %i.av, 2
  %i.ax = add nuw nsw i64 %i.aw, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, ptr noundef nonnull align 4 dereferenceable(1) %scevgep59, i64 %i.ax, i1 false), !tbaa !56
  %.pre.i = load i32, ptr %i.ai, align 4, !tbaa !24
  br label %._crit_edge27.i

._crit_edge27.i:                                  ; preds = %.lr.ph26.i, %._crit_edge.i
  %i.ay = phi i32 [ %.pre.i, %.lr.ph26.i ], [ %.val32, %._crit_edge.i ]
  %i.az = add nsw i32 %i.ay, -1
  store i32 %i.az, ptr %i.ai, align 4, !tbaa !24
  br label %Vec_IntRemove.exit

Vec_IntRemove.exit:                               ; preds = %bb.n, %._crit_edge27.i, %bb.l
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !48
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 %i.c
  store i8 1, ptr %i.bc, align 1, !tbaa !55
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !29 ; 6 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 4 ; 3 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !24 ; 7 uses
  %i.bh = load i32, ptr %i.be, align 8, !tbaa !27
  %i.bi = icmp eq i32 %i.bg, %i.bh
  br i1 %i.bi, label %bb.o, label %Vec_IntPush.exit41

bb.o:                                             ; preds = %Vec_IntRemove.exit
  %i.bj = icmp slt i32 %i.bg, 16
  br i1 %i.bj, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.bk = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !28 ; 2 uses
  %.not9.i.i39 = icmp eq ptr %i.bl, null
  br i1 %.not9.i.i39, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bm = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.bl, i64 noundef 64) #16
  br label %Vec_IntGrow.exit.i40

bb.r:                                             ; preds = %bb.p
  %i.bn = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #15
  br label %Vec_IntGrow.exit.i40

Vec_IntGrow.exit.i40:                             ; preds = %bb.r, %bb.q
  %i.bo = phi ptr [ %i.bm, %bb.q ], [ %i.bn, %bb.r ]
  store ptr %i.bo, ptr %i.bk, align 8, !tbaa !28
  br label %Vec_IntGrow.exit11.sink.split.i37

bb.s:                                             ; preds = %bb.o
  %i.bp = icmp samesign ult i32 %i.bg, 1073741823
  %i.bq = shl nuw nsw i32 %i.bg, 1
  %spec.select.i34 = select i1 %i.bp, i32 %i.bq, i32 2147483647 ; 3 uses
  %.not.i9.i35 = icmp samesign ult i32 %i.bg, %spec.select.i34
  br i1 %.not.i9.i35, label %bb.t, label %Vec_IntPush.exit41

bb.t:                                             ; preds = %bb.s
  %i.br = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !28 ; 2 uses
  %.not9.i10.i36 = icmp eq ptr %i.bs, null
  %i.bt = zext nneg i32 %spec.select.i34 to i64
  %i.bu = shl nuw nsw i64 %i.bt, 2                ; 2 uses
  br i1 %.not9.i10.i36, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bv = tail call ptr @realloc(ptr noundef nonnull %i.bs, i64 noundef %i.bu) #16
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.bw = tail call noalias ptr @malloc(i64 noundef %i.bu) #15
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.bx = phi ptr [ %i.bv, %bb.u ], [ %i.bw, %bb.v ]
  store ptr %i.bx, ptr %i.br, align 8, !tbaa !28
  br label %Vec_IntGrow.exit11.sink.split.i37

Vec_IntGrow.exit11.sink.split.i37:                ; preds = %bb.w, %Vec_IntGrow.exit.i40
  %spec.select.sink.i38 = phi i32 [ %spec.select.i34, %bb.w ], [ 16, %Vec_IntGrow.exit.i40 ]
  store i32 %spec.select.sink.i38, ptr %i.be, align 8, !tbaa !27
  %.pre61 = load i32, ptr %i.bf, align 4, !tbaa !24
  br label %Vec_IntPush.exit41

Vec_IntPush.exit41:                               ; preds = %Vec_IntRemove.exit, %bb.s, %Vec_IntGrow.exit11.sink.split.i37
  %i.by = phi i32 [ %i.bg, %Vec_IntRemove.exit ], [ %i.bg, %bb.s ], [ %.pre61, %Vec_IntGrow.exit11.sink.split.i37 ] ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !28
  %i.cb = add nsw i32 %i.by, 1
  store i32 %i.cb, ptr %i.bf, align 4, !tbaa !24
  %i.cc = sext i32 %i.by to i64
  %i.cd = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %i.cc
  store i32 %1, ptr %i.cd, align 4, !tbaa !56
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !16
  %i.cg = getelementptr i8, ptr %i.cf, i64 8
  %.val = load ptr, ptr %i.cg, align 8, !tbaa !22
  %i.ch = getelementptr inbounds [8 x i8], ptr %.val, i64 %i.c
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !52 ; 2 uses
  %i.cj = getelementptr i8, ptr %i.ci, i64 4      ; 2 uses
  %.val3154 = load i32, ptr %i.cj, align 4, !tbaa !24 ; 2 uses
  %i.ck = icmp sgt i32 %.val3154, 0
  br i1 %i.ck, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %Vec_IntPush.exit41
  %i.cl = getelementptr i8, ptr %i.ci, i64 8
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph, %bb.ai
  %.val3163 = phi i32 [ %.val3154, %.lr.ph ], [ %.val31, %bb.ai ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.ai ] ; 2 uses
  %.val33 = load ptr, ptr %i.cl, align 8, !tbaa !28
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %.val33, i64 %indvars.iv
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !56 ; 2 uses
  %i.co = load ptr, ptr %i.ba, align 8, !tbaa !48
  %i.cp = sext i32 %i.cn to i64
  %i.cq = getelementptr inbounds i8, ptr %i.co, i64 %i.cp ; 2 uses
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !55
  %.not28 = icmp eq i8 %i.cr, 0
  br i1 %.not28, label %bb.y, label %bb.ai

bb.y:                                             ; preds = %bb.x
  store i8 1, ptr %i.cq, align 1, !tbaa !55
  %i.cs = load ptr, ptr %i.ag, align 8, !tbaa !31 ; 6 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 4 ; 3 uses
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !24 ; 7 uses
  %i.cv = load i32, ptr %i.cs, align 8, !tbaa !27
  %i.cw = icmp eq i32 %i.cu, %i.cv
  br i1 %i.cw, label %bb.z, label %Vec_IntPush.exit49

bb.z:                                             ; preds = %bb.y
  %i.cx = icmp slt i32 %i.cu, 16
  br i1 %i.cx, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %bb.z
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cs, i64 8 ; 2 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !28 ; 2 uses
  %.not9.i.i47 = icmp eq ptr %i.cz, null
  br i1 %.not9.i.i47, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.da = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.cz, i64 noundef 64) #16
  br label %Vec_IntGrow.exit.i48

bb.ac:                                            ; preds = %bb.aa
  %i.db = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #15
  br label %Vec_IntGrow.exit.i48

Vec_IntGrow.exit.i48:                             ; preds = %bb.ac, %bb.ab
  %i.dc = phi ptr [ %i.da, %bb.ab ], [ %i.db, %bb.ac ]
  store ptr %i.dc, ptr %i.cy, align 8, !tbaa !28
  br label %Vec_IntGrow.exit11.sink.split.i45

bb.ad:                                            ; preds = %bb.z
  %i.dd = icmp samesign ult i32 %i.cu, 1073741823
  %i.de = shl nuw nsw i32 %i.cu, 1
  %spec.select.i42 = select i1 %i.dd, i32 %i.de, i32 2147483647 ; 3 uses
  %.not.i9.i43 = icmp samesign ult i32 %i.cu, %spec.select.i42
  br i1 %.not.i9.i43, label %bb.ae, label %Vec_IntPush.exit49

bb.ae:                                            ; preds = %bb.ad
  %i.df = getelementptr inbounds nuw i8, ptr %i.cs, i64 8 ; 2 uses
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !28 ; 2 uses
  %.not9.i10.i44 = icmp eq ptr %i.dg, null
  %i.dh = zext nneg i32 %spec.select.i42 to i64
  %i.di = shl nuw nsw i64 %i.dh, 2                ; 2 uses
  br i1 %.not9.i10.i44, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dj = tail call ptr @realloc(ptr noundef nonnull %i.dg, i64 noundef %i.di) #16
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.dk = tail call noalias ptr @malloc(i64 noundef %i.di) #15
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.dl = phi ptr [ %i.dj, %bb.af ], [ %i.dk, %bb.ag ]
  store ptr %i.dl, ptr %i.df, align 8, !tbaa !28
  br label %Vec_IntGrow.exit11.sink.split.i45

Vec_IntGrow.exit11.sink.split.i45:                ; preds = %bb.ah, %Vec_IntGrow.exit.i48
  %spec.select.sink.i46 = phi i32 [ %spec.select.i42, %bb.ah ], [ 16, %Vec_IntGrow.exit.i48 ]
  store i32 %spec.select.sink.i46, ptr %i.cs, align 8, !tbaa !27
  %.pre62 = load i32, ptr %i.ct, align 4, !tbaa !24
  br label %Vec_IntPush.exit49

Vec_IntPush.exit49:                               ; preds = %bb.y, %bb.ad, %Vec_IntGrow.exit11.sink.split.i45
  %i.dm = phi i32 [ %i.cu, %bb.y ], [ %i.cu, %bb.ad ], [ %.pre62, %Vec_IntGrow.exit11.sink.split.i45 ] ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !28
  %i.dp = add nsw i32 %i.dm, 1
  store i32 %i.dp, ptr %i.ct, align 4, !tbaa !24
  %i.dq = sext i32 %i.dm to i64
  %i.dr = getelementptr inbounds [4 x i8], ptr %i.do, i64 %i.dq
  store i32 %i.cn, ptr %i.dr, align 4, !tbaa !56
  %.val31.pre = load i32, ptr %i.cj, align 4, !tbaa !24
  br label %bb.ai
end_hunk_0
