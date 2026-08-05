inline.NumInlined: 158
inline.NumDeleted: 40
loop-unroll.NumCompletelyUnrolled: 34
loop-unroll.NumRuntimeUnrolled: 45
loop-unroll.NumUnrolled: 79
begin_hunk_0_@opj_dwt_encode_procedure:bb.a
._crit_edge:                                      ; preds = %bb.c, %.preheader213
  %.0187.lcssa = phi i32 [ 0, %.preheader213 ], [ %i.bz, %bb.c ] ; 3 uses
  %i.ce = icmp ult i32 %.0187.lcssa, %i.be
  br i1 %i.ce, label %bb.d, label %bb.k

bb.d:                                             ; preds = %._crit_edge
  %i.cf = zext i32 %.0187.lcssa to i64
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.cf
  %i.ch = xor i32 %i.bu, 1
  %i.ci = sub nuw i32 %i.be, %.0187.lcssa
  tail call void %2(ptr noundef %i.cg, ptr noundef %i.av, i32 noundef %i.bj, i32 noundef %i.ch, i32 noundef %i.g, i32 noundef %i.ci) #15, !callees !34
  br label %bb.k

bb.e:                                             ; preds = %bb.b
  %spec.select = tail call i32 @llvm.umin.i32(i32 %i.be, i32 %i.a) ; 3 uses
  %i.cj = udiv i32 %i.be, %spec.select
  %i.ck = and i32 %i.cj, -8                       ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.critedge
  %.1188217 = phi i32 [ 0, %bb.e ], [ %i.cv, %.critedge ] ; 2 uses
  %i.cl = tail call ptr @opj_malloc(i64 noundef 56) #15 ; 13 uses
  %.not199 = icmp eq ptr %i.cl, null
  br i1 %.not199, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @opj_thread_pool_wait_completion(ptr noundef %0, i32 noundef 0) #15
  br label %.critedge210.sink.split

bb.h:                                             ; preds = %bb.f
  %i.cm = tail call ptr @opj_aligned_32_malloc(i64 noundef %i.au) #15 ; 2 uses
  store ptr %i.cm, ptr %i.cl, align 8, !tbaa !36
  %.not200 = icmp eq ptr %i.cm, null
  br i1 %.not200, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h
  tail call void @opj_thread_pool_wait_completion(ptr noundef %0, i32 noundef 0) #15
  tail call void @opj_free(ptr noundef nonnull %i.cl) #15
  br label %.critedge210.sink.split

.critedge:                                        ; preds = %bb.h
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  store i32 %i.bv, ptr %i.cn, align 8, !tbaa !39
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 12
  store i32 %i.bs, ptr %i.co, align 4, !tbaa !40
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  store i32 %i.bu, ptr %i.cp, align 8, !tbaa !41
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  store i32 %i.bj, ptr %i.cq, align 8, !tbaa !42
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cl, i64 28
  store i32 %i.g, ptr %i.cr, align 4, !tbaa !43
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cl, i64 32
  store ptr %i.c, ptr %i.cs, align 8, !tbaa !44
  %i.ct = mul i32 %.1188217, %i.ck
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cl, i64 40
  store i32 %i.ct, ptr %i.cu, align 8, !tbaa !45
  %i.cv = add nuw i32 %.1188217, 1                ; 4 uses
  %i.cw = icmp eq i32 %i.cv, %spec.select
  %i.cx = mul i32 %i.cv, %i.ck
  %i.cy = select i1 %i.cw, i32 %i.be, i32 %i.cx
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cl, i64 44
  store i32 %i.cy, ptr %i.cz, align 4, !tbaa !46
  %i.da = getelementptr inbounds nuw i8, ptr %i.cl, i64 48
  store ptr %2, ptr %i.da, align 8, !tbaa !47
  %i.db = tail call i32 @opj_thread_pool_submit_job(ptr noundef %0, ptr noundef nonnull @opj_dwt_encode_v_func, ptr noundef nonnull %i.cl) #15 ; 0 uses
  %exitcond.not = icmp eq i32 %i.cv, %spec.select
  br i1 %exitcond.not, label %bb.j, label %bb.f, !llvm.loop !48

bb.j:                                             ; preds = %.critedge
  tail call void @opj_thread_pool_wait_completion(ptr noundef %0, i32 noundef 0) #15
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge, %bb.d
  %i.dc = sub i32 %i.be, %i.bn
  %i.dd = icmp ult i32 %i.bj, 2
  %or.cond9 = select i1 %i.az, i1 true, i1 %i.dd
  br i1 %or.cond9, label %.preheader, label %bb.m

.preheader:                                       ; preds = %bb.k
  %.not228 = icmp eq i32 %i.bg, %i.bi
  br i1 %.not228, label %.loopexit, label %.lr.ph221

.lr.ph221:                                        ; preds = %.preheader
  %i.de = xor i32 %i.bt, 1
  %wide.trip.count = zext i32 %i.bj to i64
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph221, %bb.l
  %indvars.iv = phi i64 [ 0, %.lr.ph221 ], [ %indvars.iv.next, %bb.l ] ; 2 uses
  %i.df = trunc nuw i64 %indvars.iv to i32
  %i.dg = mul i32 %i.g, %i.df
  %i.dh = zext i32 %i.dg to i64
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.dh
  tail call void %3(ptr noundef %i.di, ptr noundef %i.av, i32 noundef %i.be, i32 noundef %i.de) #15, !callees !49
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond236.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond236.not, label %.loopexit, label %bb.l, !llvm.loop !50

bb.m:                                             ; preds = %bb.k
  %spec.select205 = tail call i32 @llvm.umin.i32(i32 %i.bj, i32 %i.a) ; 3 uses
  %i.dj = udiv i32 %i.bj, %spec.select205         ; 2 uses
  %i.dk = add nsw i32 %spec.select205, -1
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.critedge208
  %.3190219 = phi i32 [ 0, %bb.m ], [ %i.dv, %.critedge208 ] ; 3 uses
  %i.dl = tail call ptr @opj_malloc(i64 noundef 56) #15 ; 13 uses
  %.not202 = icmp eq ptr %i.dl, null
  br i1 %.not202, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void @opj_thread_pool_wait_completion(ptr noundef %0, i32 noundef 0) #15
  br label %.critedge210.sink.split

bb.p:                                             ; preds = %bb.n
  %i.dm = tail call ptr @opj_aligned_32_malloc(i64 noundef %i.au) #15 ; 2 uses
  store ptr %i.dm, ptr %i.dl, align 8, !tbaa !36
  %.not203 = icmp eq ptr %i.dm, null
  br i1 %.not203, label %bb.q, label %.critedge208

bb.q:                                             ; preds = %bb.p
  tail call void @opj_thread_pool_wait_completion(ptr noundef %0, i32 noundef 0) #15
  tail call void @opj_free(ptr noundef nonnull %i.dl) #15
  br label %.critedge210.sink.split

.critedge208:                                     ; preds = %bb.p
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  store i32 %i.dc, ptr %i.dn, align 8, !tbaa !39
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 12
  store i32 %i.bn, ptr %i.do, align 4, !tbaa !40
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  store i32 %i.bt, ptr %i.dp, align 8, !tbaa !41
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  store i32 %i.be, ptr %i.dq, align 8, !tbaa !42
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dl, i64 28
  store i32 %i.g, ptr %i.dr, align 4, !tbaa !43
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dl, i64 32
  store ptr %i.c, ptr %i.ds, align 8, !tbaa !44
  %i.dt = mul i32 %.3190219, %i.dj
  %i.du = getelementptr inbounds nuw i8, ptr %i.dl, i64 40
  store i32 %i.dt, ptr %i.du, align 8, !tbaa !45
  %i.dv = add nuw i32 %.3190219, 1                ; 3 uses
  %i.dw = mul i32 %i.dv, %i.dj
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dl, i64 44
  %i.dy = icmp eq i32 %.3190219, %i.dk
  %spec.select206 = select i1 %i.dy, i32 %i.bj, i32 %i.dw
  store i32 %spec.select206, ptr %i.dx, align 4, !tbaa !46
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dl, i64 48
  store ptr %3, ptr %i.dz, align 8, !tbaa !47
  %i.ea = tail call i32 @opj_thread_pool_submit_job(ptr noundef %0, ptr noundef nonnull @opj_dwt_encode_h_func, ptr noundef nonnull %i.dl) #15 ; 0 uses
  %exitcond234.not = icmp eq i32 %i.dv, %spec.select205
  br i1 %exitcond234.not, label %bb.r, label %bb.n, !llvm.loop !51

bb.r:                                             ; preds = %.critedge208
  tail call void @opj_thread_pool_wait_completion(ptr noundef %0, i32 noundef 0) #15
  br label %.loopexit

.loopexit:                                        ; preds = %bb.l, %.preheader, %bb.r
  %i.eb = add nsw i32 %i.ba, -1
  %.not = icmp eq i32 %i.ba, 0
  br i1 %.not, label %.critedge210.sink.split, label %bb.b, !llvm.loop !52

.critedge210.sink.split:                          ; preds = %.loopexit, %.preheader214, %bb.g, %bb.i, %bb.o, %bb.q
  %.10.ph = phi i32 [ 0, %bb.q ], [ 0, %bb.o ], [ 0, %bb.g ], [ 0, %bb.i ], [ 1, %.preheader214 ], [ 1, %.loopexit ]
  tail call void @opj_aligned_free(ptr noundef %i.av) #15
  br label %.critedge210

.critedge210:                                     ; preds = %.critedge210.sink.split, %opj_dwt_max_resolution.exit
  %.10 = phi i32 [ 0, %opj_dwt_max_resolution.exit ], [ %.10.ph, %.critedge210.sink.split ]
  ret i32 %.10
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal void @opj_dwt_encode_and_deinterleave_v(ptr nofree noundef captures(none) %0, ptr nofree noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #2 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %1 to i64
  %.not = icmp ne i32 %3, 0                       ; 5 uses
  %i.c = zext i1 %.not to i32
  %i.d = add i32 %2, %i.c                         ; 4 uses
  %i.e = lshr i32 %i.d, 1                         ; 14 uses
  %i.f = sub i32 %2, %i.e                         ; 10 uses
  %i.g = icmp eq i32 %5, 8                        ; 2 uses
  %.not41.i = icmp eq i32 %2, 0                   ; 2 uses
  br i1 %i.g, label %.preheader.i, label %.preheader33.i

.preheader33.i:                                   ; preds = %bb.a
  br i1 %.not41.i, label %opj_dwt_fetch_cols_vertical_pass.exit.thread, label %.preheader32.lr.ph.i

.preheader32.lr.ph.i:                             ; preds = %.preheader33.i
  %.not40.i = icmp eq i32 %5, 0
  br i1 %.not40.i, label %.preheader32.preheader.i, label %.preheader32.us.preheader.i

.preheader32.us.preheader.i:                      ; preds = %.preheader32.lr.ph.i
  %i.h = tail call i32 @llvm.usub.sat.i32(i32 7, i32 %5)
  %i.i = shl nuw nsw i32 %i.h, 2
  %narrow.i = add nuw nsw i32 %i.i, 4
  %i.j = zext nneg i32 %narrow.i to i64
  %wide.trip.count53.i = zext i32 %2 to i64
  %wide.trip.count.i = zext i32 %5 to i64         ; 6 uses
  %i.k = add nsw i64 %wide.trip.count.i, -1       ; 2 uses
  %min.iters.check = icmp ult i32 %5, 20
  %i.l = trunc i64 %i.k to i32                    ; 2 uses
  %i.m = icmp ugt i64 %i.k, 4294967295
  %n.vec = and i64 %wide.trip.count.i, 4294967288 ; 4 uses
  %ind.escape = add nsw i64 %n.vec, -1            ; 2 uses
  %i.n = trunc i64 %ind.escape to i32
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader32.us.i

.preheader32.preheader.i:                         ; preds = %.preheader32.lr.ph.i
  %wide.trip.count62.i = zext i32 %2 to i64       ; 2 uses
  %xtraiter378 = and i64 %wide.trip.count62.i, 3  ; 3 uses
  %i.o = icmp ult i32 %2, 4
  br i1 %i.o, label %.preheader32.i.epil.preheader, label %.preheader32.preheader.i.new

.preheader32.preheader.i.new:                     ; preds = %.preheader32.preheader.i
  %unroll_iter = and i64 %wide.trip.count62.i, 4294967292
  br label %.preheader32.i

.preheader32.us.i:                                ; preds = %._crit_edge.us.i, %.preheader32.us.preheader.i
  %indvars.iv50.i = phi i64 [ 0, %.preheader32.us.preheader.i ], [ %indvars.iv.next51.i, %._crit_edge.us.i ] ; 6 uses
  %i.p = trunc nuw i64 %indvars.iv50.i to i32     ; 2 uses
  %i.q = shl i32 %i.p, 3                          ; 7 uses
  %i.r = mul i32 %4, %i.p                         ; 6 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader32.us.i
  %i.s = trunc i64 %indvars.iv50.i to i32
  %i.t = mul i32 %4, %i.s
  %i.u = zext i32 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 2
  %i.w = add i64 %i.v, %i.a
  %i.x = shl i64 %indvars.iv50.i, 5
  %i.y = and i64 %i.x, 17179869152
  %i.z = add i64 %i.y, %i.b
  %i.aa = trunc i64 %indvars.iv50.i to i32
  %i.ab = mul i32 %4, %i.aa
  %indvars.iv50.i.tr = trunc i64 %indvars.iv50.i to i32
  %i.ac = shl i32 %indvars.iv50.i.tr, 3
  %i.ad = xor i32 %i.ac, -1
  %i.ae = icmp ult i32 %i.ad, %i.l
  %i.af = xor i32 %i.ab, -1
  %i.ag = icmp ult i32 %i.af, %i.l
  %i.ah = or i1 %i.ag, %i.m
  %i.ai = or i1 %i.ae, %i.ah
  %i.aj = sub i64 %i.w, %i.z
  %diff.check = icmp ugt i64 %i.aj, -32
  %or.cond = select i1 %i.ai, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.scevcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.scevcheck ] ; 2 uses
  %i.ak = trunc i64 %index to i32                 ; 2 uses
  %i.al = add i32 %i.r, %i.ak
  %i.am = zext i32 %i.al to i64
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.am ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %wide.load = load <4 x i32>, ptr %i.an, align 4, !tbaa !3
  %wide.load372 = load <4 x i32>, ptr %i.ao, align 4, !tbaa !3
  %i.ap = add i32 %i.q, %i.ak
  %i.aq = zext i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.aq ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store <4 x i32> %wide.load, ptr %i.ar, align 4, !tbaa !3
  store <4 x i32> %wide.load372, ptr %i.as, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.at = icmp eq i64 %index.next, %n.vec
  br i1 %i.at, label %middle.block, label %vector.body, !llvm.loop !53

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..preheader31_crit_edge.us.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.scevcheck, %.preheader32.us.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.preheader32.us.i ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.au = trunc nuw i64 %indvars.iv.i.prol to i32 ; 3 uses
  %i.av = add i32 %i.r, %i.au
  %i.aw = zext i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !3
  %i.az = add i32 %i.q, %i.au
  %i.ba = zext i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ba
  store i32 %i.ay, ptr %i.bb, align 4, !tbaa !3
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !56

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.lcssa377.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %indvars.iv.i.prol, %scalar.ph.prol ]
  %.lcssa376.unr = phi i32 [ poison, %scalar.ph.preheader ], [ %i.au, %scalar.ph.prol ]
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.prol, %scalar.ph.prol ]
  %i.bc = sub nsw i64 %indvars.iv.i.ph, %wide.trip.count.i
  %i.bd = icmp ugt i64 %i.bc, -4
  br i1 %i.bd, label %..preheader31_crit_edge.us.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %scalar.ph ], [ %indvars.iv.i.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.be = trunc nuw i64 %indvars.iv.i to i32      ; 2 uses
  %i.bf = add i32 %i.r, %i.be
  %i.bg = zext i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bg
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !3
  %i.bj = add i32 %i.q, %i.be
  %i.bk = zext i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bk
  store i32 %i.bi, ptr %i.bl, align 4, !tbaa !3
  %i.bm = trunc i64 %indvars.iv.i to i32
  %i.bn = add i32 %i.bm, 1                        ; 2 uses
  %i.bo = add i32 %i.r, %i.bn
  %i.bp = zext i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bp
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !3
  %i.bs = add i32 %i.q, %i.bn
  %i.bt = zext i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bt
  store i32 %i.br, ptr %i.bu, align 4, !tbaa !3
  %i.bv = trunc i64 %indvars.iv.i to i32
  %i.bw = add i32 %i.bv, 2                        ; 2 uses
  %i.bx = add i32 %i.r, %i.bw
  %i.by = zext i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.by
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !3
  %i.cb = add i32 %i.q, %i.bw
  %i.cc = zext i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cc
  store i32 %i.ca, ptr %i.cd, align 4, !tbaa !3
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %i.ce = trunc nuw i64 %indvars.iv.next.i.2 to i32 ; 3 uses
  %i.cf = add i32 %i.r, %i.ce
  %i.cg = zext i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cg
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !3
  %i.cj = add i32 %i.q, %i.ce
  %i.ck = zext i32 %i.cj to i64
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ck
  store i32 %i.ci, ptr %i.cl, align 4, !tbaa !3
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %..preheader31_crit_edge.us.i, label %scalar.ph, !llvm.loop !58

._crit_edge.us.i:                                 ; preds = %.lr.ph37.us.i, %..preheader31_crit_edge.us.i
  %indvars.iv.next51.i = add nuw nsw i64 %indvars.iv50.i, 1 ; 2 uses
  %exitcond54.not.i = icmp eq i64 %indvars.iv.next51.i, %wide.trip.count53.i
  br i1 %exitcond54.not.i, label %opj_dwt_fetch_cols_vertical_pass.exit, label %.preheader32.us.i, !llvm.loop !59

..preheader31_crit_edge.us.i:                     ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.i.lcssa = phi i64 [ %ind.escape, %middle.block ], [ %indvars.iv.i.lcssa377.unr, %scalar.ph.prol.loopexit ], [ %indvars.iv.next.i.2, %scalar.ph ]
  %.lcssa370 = phi i32 [ %i.n, %middle.block ], [ %.lcssa376.unr, %scalar.ph.prol.loopexit ], [ %i.ce, %scalar.ph ]
  %i.cm = icmp samesign ult i64 %indvars.iv.i.lcssa, 7
  br i1 %i.cm, label %.lr.ph37.us.i, label %._crit_edge.us.i

.lr.ph37.us.i:                                    ; preds = %..preheader31_crit_edge.us.i
  %i.cn = or disjoint i32 %i.q, 1
  %i.co = add nuw i32 %i.cn, %.lcssa370
  %i.cp = zext i32 %i.co to i64
  %i.cq = shl nuw nsw i64 %i.cp, 2
  %scevgep.i = getelementptr i8, ptr %1, i64 %i.cq
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i, i8 0, i64 %i.j, i1 false), !tbaa !3
  br label %._crit_edge.us.i

.preheader.i:                                     ; preds = %bb.a
  br i1 %.not41.i, label %opj_dwt_fetch_cols_vertical_pass.exit.thread, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %wide.trip.count67.i = zext i32 %2 to i64       ; 2 uses
  %xtraiter381 = and i64 %wide.trip.count67.i, 1
  %i.cr = icmp eq i32 %2, 1
  br i1 %i.cr, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter385 = and i64 %wide.trip.count67.i, 4294967294
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv64.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next65.i.1, %.lr.ph.i ] ; 4 uses
  %niter386 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter386.next.1, %.lr.ph.i ]
  %i.cs = trunc nuw i64 %indvars.iv64.i to i32
  %i.ct = shl nuw nsw i64 %indvars.iv64.i, 3
  %i.cu = and i64 %i.ct, 4294967280
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cu
  %i.cw = mul i32 %4, %i.cs
  %i.cx = zext i32 %i.cw to i64
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cx
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.cv, ptr noundef nonnull readonly align 4 dereferenceable(32) %i.cy, i64 32, i1 false)
  %indvars.iv.next65.i = or disjoint i64 %indvars.iv64.i, 1 ; 2 uses
  %i.cz = trunc nuw i64 %indvars.iv.next65.i to i32
  %i.da = shl nuw nsw i64 %indvars.iv.next65.i, 3
  %i.db = and i64 %i.da, 4294967288
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.db
  %i.dd = mul i32 %4, %i.cz
  %i.de = zext i32 %i.dd to i64
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.de
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.dc, ptr noundef nonnull readonly align 4 dereferenceable(32) %i.df, i64 32, i1 false)
  %indvars.iv.next65.i.1 = add nuw nsw i64 %indvars.iv64.i, 2 ; 2 uses
  %niter386.next.1 = add i64 %niter386, 2         ; 2 uses
  %niter386.ncmp.1 = icmp eq i64 %niter386.next.1, %unroll_iter385
  br i1 %niter386.ncmp.1, label %opj_dwt_fetch_cols_vertical_pass.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !60

.preheader32.i:                                   ; preds = %.preheader32.i, %.preheader32.preheader.i.new
  %indvars.iv59.i = phi i64 [ 0, %.preheader32.preheader.i.new ], [ %indvars.iv.next60.i.3, %.preheader32.i ] ; 5 uses
  %niter = phi i64 [ 0, %.preheader32.preheader.i.new ], [ %niter.next.3, %.preheader32.i ]
  %i.dg = shl nuw nsw i64 %indvars.iv59.i, 5
  %i.dh = and i64 %i.dg, 17179869056
  %scevgep55.i = getelementptr nuw i8, ptr %1, i64 %i.dh
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %scevgep55.i, i8 0, i64 32, i1 false), !tbaa !3
  %indvars.iv.next60.i = shl i64 %indvars.iv59.i, 5
  %i.di = and i64 %indvars.iv.next60.i, 17179869056
  %i.dj = getelementptr nuw i8, ptr %1, i64 %i.di
  %scevgep55.i.1 = getelementptr nuw i8, ptr %i.dj, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %scevgep55.i.1, i8 0, i64 32, i1 false), !tbaa !3
  %indvars.iv.next60.i.1 = shl i64 %indvars.iv59.i, 5
  %i.dk = and i64 %indvars.iv.next60.i.1, 17179869056
  %i.dl = getelementptr nuw i8, ptr %1, i64 %i.dk
  %scevgep55.i.2 = getelementptr nuw i8, ptr %i.dl, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %scevgep55.i.2, i8 0, i64 32, i1 false), !tbaa !3
  %indvars.iv.next60.i.2 = shl i64 %indvars.iv59.i, 5
  %i.dm = and i64 %indvars.iv.next60.i.2, 17179869056
  %i.dn = getelementptr nuw i8, ptr %1, i64 %i.dm
  %scevgep55.i.3 = getelementptr nuw i8, ptr %i.dn, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %scevgep55.i.3, i8 0, i64 32, i1 false), !tbaa !3
  %indvars.iv.next60.i.3 = add nuw nsw i64 %indvars.iv59.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %opj_dwt_fetch_cols_vertical_pass.exit.loopexit374.unr-lcssa, label %.preheader32.i, !llvm.loop !59

opj_dwt_fetch_cols_vertical_pass.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod383.not = icmp eq i64 %xtraiter381, 0
  br i1 %lcmp.mod383.not, label %opj_dwt_fetch_cols_vertical_pass.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %opj_dwt_fetch_cols_vertical_pass.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv64.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next65.i.1, %opj_dwt_fetch_cols_vertical_pass.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod384 = trunc i32 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod384)
  %i.do = trunc nuw i64 %indvars.iv64.i.epil.init to i32
  %i.dp = shl nuw nsw i64 %indvars.iv64.i.epil.init, 3
end_hunk_0
begin_hunk_1_@opj_dwt_decode:bb.a
  store i32 %i.arh, ptr %i.hn, align 4, !tbaa !3
  %i.ari = load i32, ptr %i.ho, align 4, !tbaa !3
  %.in315.v.v.us.3.i.i = select i1 %.not314.i.i, i32 7, i32 %i.ra
  %.in315.v.us.3.i.i = zext i32 %.in315.v.v.us.3.i.i to i64
  %.in315.us.3.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %.in315.v.us.3.i.i
  %i.arj = load i32, ptr %.in315.us.3.i.i, align 4, !tbaa !3
  %i.ark = load i32, ptr %i.hv, align 4, !tbaa !3
  %i.arl = add i32 %i.ark, %i.arj
  %i.arm = ashr i32 %i.arl, 1
  %i.arn = add i32 %i.arm, %i.ari
  store i32 %i.arn, ptr %i.ho, align 4, !tbaa !3
  br label %.split364.us.i.i

.preheader353.split.split.i.i:                    ; preds = %.preheader353.split.i.i
  br i1 %.not316.not.i.i, label %.preheader353.split.split.split.us.preheader.i.i, label %.preheader353.split.split.split.preheader.i.i

.preheader353.split.split.split.preheader.i.i:    ; preds = %.preheader353.split.split.i.i
  %i.aro = zext i32 %i.aqk to i64
  %i.arp = zext i32 %i.aqi to i64
  %i.arq = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.arp ; 4 uses
  %i.arr = or disjoint i32 %i.aqi, 4
  %.in315.v.v.i.i = select i1 %.not314.i.i, i32 %i.arr, i32 %i.qw
  %.in315.v.i.i = zext i32 %.in315.v.v.i.i to i64
  %.in315.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %.in315.v.i.i
  %i.ars = load i32, ptr %.in315.i.i, align 4, !tbaa !3
  %i.art = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.aro ; 3 uses
  %i.aru = or disjoint i32 %i.aqi, 5
  %.in315.v.v.1.i.i = select i1 %.not314.i.i, i32 %i.aru, i32 %i.qy
  %.in315.v.1.i.i = zext i32 %.in315.v.v.1.i.i to i64
  %.in315.1.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %.in315.v.1.i.i
  %i.arv = load i32, ptr %.in315.1.i.i, align 4, !tbaa !3
  %i.arw = load <2 x i32>, ptr %i.arq, align 4, !tbaa !3
  %i.arx = load <2 x i32>, ptr %i.art, align 4, !tbaa !3
  %i.ary = insertelement <2 x i32> poison, i32 %i.ars, i64 0
  %i.arz = insertelement <2 x i32> %i.ary, i32 %i.arv, i64 1
  %i.asa = add <2 x i32> %i.arx, %i.arz
  %i.asb = ashr <2 x i32> %i.asa, splat (i32 1)
  %i.asc = add <2 x i32> %i.asb, %i.arw
  store <2 x i32> %i.asc, ptr %i.arq, align 4, !tbaa !3
  %i.asd = getelementptr inbounds nuw i8, ptr %i.arq, i64 8 ; 2 uses
  %i.ase = load i32, ptr %i.asd, align 4, !tbaa !3
  %i.asf = or disjoint i32 %i.aqi, 6
  %.in315.v.v.2.i.i = select i1 %.not314.i.i, i32 %i.asf, i32 %i.qz
  %.in315.v.2.i.i = zext i32 %.in315.v.v.2.i.i to i64
  %.in315.2.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %.in315.v.2.i.i
  %i.asg = load i32, ptr %.in315.2.i.i, align 4, !tbaa !3
  %i.ash = getelementptr inbounds nuw i8, ptr %i.art, i64 8
  %i.asi = load i32, ptr %i.ash, align 4, !tbaa !3
  %i.asj = add i32 %i.asi, %i.asg
  %i.ask = ashr i32 %i.asj, 1
  %i.asl = add i32 %i.ask, %i.ase
  store i32 %i.asl, ptr %i.asd, align 4, !tbaa !3
  %i.asm = getelementptr inbounds nuw i8, ptr %i.arq, i64 12 ; 2 uses
  %i.asn = load i32, ptr %i.asm, align 4, !tbaa !3
  %i.aso = or disjoint i32 %i.aqi, 7
  %.in315.v.v.3.i.i = select i1 %.not314.i.i, i32 %i.aso, i32 %i.ra
  %.in315.v.3.i.i = zext i32 %.in315.v.v.3.i.i to i64
  %.in315.3.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %.in315.v.3.i.i
  %i.asp = load i32, ptr %.in315.3.i.i, align 4, !tbaa !3
  %i.asq = getelementptr inbounds nuw i8, ptr %i.art, i64 12
  %i.asr = load i32, ptr %i.asq, align 4, !tbaa !3
  %i.ass = add i32 %i.asr, %i.asp
  %i.ast = ashr i32 %i.ass, 1
  %i.asu = add i32 %i.ast, %i.asn
  store i32 %i.asu, ptr %i.asm, align 4, !tbaa !3
  br label %.split364.us.i.i

.preheader353.split.split.split.us.preheader.i.i: ; preds = %.preheader353.split.split.i.i
  %i.asv = zext i32 %i.aqi to i64
  %i.asw = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.asv ; 4 uses
  %i.asx = load <2 x i32>, ptr %i.asw, align 4, !tbaa !3
  %i.asy = load <2 x i32>, ptr %.in315.us370.i.i, align 4, !tbaa !3
  %i.asz = shl <2 x i32> %i.asy, splat (i32 1)
  %i.ata = ashr exact <2 x i32> %i.asz, splat (i32 1)
  %i.atb = add <2 x i32> %i.ata, %i.asx
  store <2 x i32> %i.atb, ptr %i.asw, align 4, !tbaa !3
  %i.atc = getelementptr inbounds nuw i8, ptr %i.asw, i64 8 ; 2 uses
  %i.atd = load i32, ptr %i.atc, align 4, !tbaa !3
  %i.ate = load i32, ptr %.in315.us370.2.i.i, align 4, !tbaa !3
  %i.atf = load i32, ptr %i.rc, align 4, !tbaa !3
  %i.atg = add i32 %i.atf, %i.ate
  %i.ath = ashr i32 %i.atg, 1
  %i.ati = add i32 %i.ath, %i.atd
  store i32 %i.ati, ptr %i.atc, align 4, !tbaa !3
  %i.atj = getelementptr inbounds nuw i8, ptr %i.asw, i64 12 ; 2 uses
  %i.atk = load i32, ptr %i.atj, align 4, !tbaa !3
  %i.atl = load i32, ptr %.in315.us370.3.i.i, align 4, !tbaa !3
  %i.atm = load i32, ptr %i.re, align 4, !tbaa !3
  %i.atn = add i32 %i.atm, %i.atl
  %i.ato = ashr i32 %i.atn, 1
  %i.atp = add i32 %i.ato, %i.atk
  store i32 %i.atp, ptr %i.atj, align 4, !tbaa !3
  br label %.split364.us.i.i

.split364.us.i.i:                                 ; preds = %.preheader353.split.split.split.us.preheader.i.i, %.preheader353.split.split.split.preheader.i.i, %.preheader353.split.split.us.preheader.i.i, %.thread333.us.preheader.i.i
  %i.atq = add nsw i32 %.9372.i.i, 1              ; 2 uses
  %exitcond433.not.i.i = icmp eq i32 %i.atq, %i.lg
  br i1 %exitcond433.not.i.i, label %opj_dwt_decode_partial_1_parallel.exit.i, label %.preheader353.i.i, !llvm.loop !173

opj_dwt_decode_partial_1_parallel.exit.i:         ; preds = %.split364.us.i.i, %.split398.us.i.i, %.preheader354.i.i, %.preheader351.preheader.i.i, %.preheader342.i.i, %.loopexit347.i.i, %bb.bk
  %i.atr = tail call i32 @opj_sparse_array_int32_write(ptr noundef nonnull %i.fe, i32 noundef %.0181.i, i32 noundef %i.lv, i32 noundef %i.aar, i32 noundef %i.ma, ptr noundef nonnull %i.so, i32 noundef 1, i32 noundef 4, i32 noundef 1) #15
  %.not188.not.i = icmp eq i32 %i.atr, 0
  br i1 %.not188.not.i, label %.thread288.i, label %bb.bi, !llvm.loop !174

.thread288.i:                                     ; preds = %opj_dwt_decode_partial_1_parallel.exit.i
  tail call void @opj_sparse_array_int32_free(ptr noundef nonnull %i.fe) #15
  tail call void @opj_aligned_free(ptr noundef nonnull %i.hg) #15
  br label %opj_dwt_decode_partial_tile.exit

bb.bs:                                            ; preds = %bb.bi
  %i.ats = add nuw i32 %.0172299.i, 1             ; 2 uses
  %exitcond309.not.i = icmp eq i32 %i.ats, %2
  br i1 %exitcond309.not.i, label %._crit_edge.i18, label %bb.x, !llvm.loop !175

._crit_edge.i18:                                  ; preds = %bb.bs, %.preheader294.i
  tail call void @opj_aligned_free(ptr noundef nonnull %i.hg) #15
  %i.att = getelementptr inbounds nuw i8, ptr %i.ed, i64 176
  %i.atu = load i32, ptr %i.att, align 8, !tbaa !137 ; 2 uses
  %i.atv = load i32, ptr %i.ed, align 8, !tbaa !29 ; 2 uses
  %i.atw = sub i32 %i.atu, %i.atv
  %i.atx = getelementptr inbounds nuw i8, ptr %i.ed, i64 180
  %i.aty = load i32, ptr %i.atx, align 4, !tbaa !138
  %i.atz = load i32, ptr %i.ez, align 4, !tbaa !31 ; 2 uses
  %i.aua = sub i32 %i.aty, %i.atz
  %i.aub = getelementptr inbounds nuw i8, ptr %i.ed, i64 184
  %i.auc = load i32, ptr %i.aub, align 8, !tbaa !139 ; 2 uses
  %i.aud = sub i32 %i.auc, %i.atv
  %i.aue = getelementptr inbounds nuw i8, ptr %i.ed, i64 188
  %i.auf = load i32, ptr %i.aue, align 4, !tbaa !140
  %i.aug = sub i32 %i.auf, %i.atz
  %i.auh = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.aui = load ptr, ptr %i.auh, align 8, !tbaa !141
  %i.auj = sub i32 %i.auc, %i.atu
  %i.auk = tail call i32 @opj_sparse_array_int32_read(ptr noundef nonnull %i.fe, i32 noundef %i.atw, i32 noundef %i.aua, i32 noundef %i.aud, i32 noundef %i.aug, ptr noundef %i.aui, i32 noundef 1, i32 noundef %i.auj, i32 noundef 1) #15 ; 0 uses
  tail call void @opj_sparse_array_int32_free(ptr noundef nonnull %i.fe) #15
  br label %opj_dwt_decode_partial_tile.exit

opj_dwt_decode_partial_tile.exit:                 ; preds = %._crit_edge.i18, %.thread288.i, %bb.bg, %bb.w, %bb.v, %bb.t, %bb.s, %bb.r, %opj_dwt_decode_tile.exit
  %.0 = phi i32 [ %.10.i, %opj_dwt_decode_tile.exit ], [ 1, %._crit_edge.i18 ], [ 1, %bb.r ], [ 1, %bb.v ], [ 0, %bb.w ], [ 0, %bb.t ], [ 1, %bb.s ], [ 0, %.thread288.i ], [ 0, %bb.bg ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define double @opj_dwt_getnorm(i32 noundef %0, i32 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp eq i32 %1, 0                        ; 2 uses
  %i.b = icmp ugt i32 %0, 9
  %or.cond = and i1 %i.b, %i.a
  %i.c = tail call i32 @llvm.umin.i32(i32 %0, i32 8)
  %spec.store.select = select i1 %i.a, i32 %0, i32 %i.c
  %i.d = zext i32 %spec.store.select to i64
  %.0 = select i1 %or.cond, i64 9, i64 %i.d
  %i.e = zext i32 %1 to i64
  %i.f = getelementptr inbounds nuw [80 x i8], ptr @opj_dwt_norms, i64 %i.e
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.0
  %i.h = load double, ptr %i.g, align 8, !tbaa !176
  ret double %i.h
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @opj_dwt_encode_real(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.c = tail call fastcc i32 @opj_dwt_encode_procedure(ptr noundef %i.b, ptr noundef %1, ptr noundef nonnull @opj_dwt_encode_and_deinterleave_v_real, ptr noundef nonnull @opj_dwt_encode_and_deinterleave_h_one_row_real)
  ret i32 %i.c
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal void @opj_dwt_encode_and_deinterleave_v_real(ptr nofree noundef captures(none) %0, ptr nofree noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #2 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %1 to i64
  %.not = icmp ne i32 %3, 0                       ; 8 uses
  %i.c = zext i1 %.not to i32
  %i.d = add i32 %2, %i.c                         ; 3 uses
  %i.e = lshr i32 %i.d, 1                         ; 16 uses
  %i.f = sub i32 %2, %i.e                         ; 12 uses
  %i.g = icmp eq i32 %2, 1
  br i1 %i.g, label %opj_dwt_deinterleave_v_cols.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq i32 %5, 8                        ; 3 uses
  %.not41.i = icmp eq i32 %2, 0                   ; 2 uses
  br i1 %i.h, label %.preheader.i, label %.preheader33.i

.preheader33.i:                                   ; preds = %bb.b
  br i1 %.not41.i, label %opj_dwt_fetch_cols_vertical_pass.exit, label %.preheader32.lr.ph.i

.preheader32.lr.ph.i:                             ; preds = %.preheader33.i
  %.not40.i = icmp eq i32 %5, 0
  br i1 %.not40.i, label %.preheader32.preheader.i, label %.preheader32.us.preheader.i

.preheader32.us.preheader.i:                      ; preds = %.preheader32.lr.ph.i
  %i.i = tail call i32 @llvm.usub.sat.i32(i32 7, i32 %5)
  %i.j = shl nuw nsw i32 %i.i, 2
  %narrow.i = add nuw nsw i32 %i.j, 4
  %i.k = zext nneg i32 %narrow.i to i64
  %wide.trip.count53.i = zext i32 %2 to i64
  %wide.trip.count.i = zext i32 %5 to i64         ; 6 uses
  %i.l = add nsw i64 %wide.trip.count.i, -1       ; 2 uses
  %min.iters.check = icmp ult i32 %5, 20
  %i.m = trunc i64 %i.l to i32                    ; 2 uses
  %i.n = icmp ugt i64 %i.l, 4294967295
  %n.vec = and i64 %wide.trip.count.i, 4294967288 ; 4 uses
  %ind.escape = add nsw i64 %n.vec, -1            ; 2 uses
  %i.o = trunc i64 %ind.escape to i32
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader32.us.i

.preheader32.preheader.i:                         ; preds = %.preheader32.lr.ph.i
  %wide.trip.count62.i = zext i32 %2 to i64       ; 2 uses
  %xtraiter177 = and i64 %wide.trip.count62.i, 3  ; 3 uses
  %i.p = icmp ult i32 %2, 4
  br i1 %i.p, label %.preheader32.i.epil.preheader, label %.preheader32.preheader.i.new

.preheader32.preheader.i.new:                     ; preds = %.preheader32.preheader.i
  %unroll_iter = and i64 %wide.trip.count62.i, 4294967292
  br label %.preheader32.i

.preheader32.us.i:                                ; preds = %._crit_edge.us.i, %.preheader32.us.preheader.i
  %indvars.iv50.i = phi i64 [ 0, %.preheader32.us.preheader.i ], [ %indvars.iv.next51.i, %._crit_edge.us.i ] ; 6 uses
  %i.q = trunc nuw i64 %indvars.iv50.i to i32     ; 2 uses
  %i.r = shl i32 %i.q, 3                          ; 7 uses
  %i.s = mul i32 %4, %i.q                         ; 6 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader32.us.i
  %i.t = trunc i64 %indvars.iv50.i to i32
  %i.u = mul i32 %4, %i.t
  %i.v = zext i32 %i.u to i64
  %i.w = shl nuw nsw i64 %i.v, 2
  %i.x = add i64 %i.w, %i.a
  %i.y = shl i64 %indvars.iv50.i, 5
  %i.z = and i64 %i.y, 17179869152
  %i.aa = add i64 %i.z, %i.b
  %i.ab = trunc i64 %indvars.iv50.i to i32
  %i.ac = mul i32 %4, %i.ab
  %indvars.iv50.i.tr = trunc i64 %indvars.iv50.i to i32
  %i.ad = shl i32 %indvars.iv50.i.tr, 3
  %i.ae = xor i32 %i.ad, -1
  %i.af = icmp ult i32 %i.ae, %i.m
  %i.ag = xor i32 %i.ac, -1
  %i.ah = icmp ult i32 %i.ag, %i.m
  %i.ai = or i1 %i.ah, %i.n
  %i.aj = or i1 %i.af, %i.ai
  %i.ak = sub i64 %i.x, %i.aa
  %diff.check = icmp ugt i64 %i.ak, -32
  %or.cond = select i1 %i.aj, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.scevcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.scevcheck ] ; 2 uses
  %i.al = trunc i64 %index to i32                 ; 2 uses
  %i.am = add i32 %i.s, %i.al
  %i.an = zext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.an ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %wide.load = load <4 x i32>, ptr %i.ao, align 4, !tbaa !3
  %wide.load171 = load <4 x i32>, ptr %i.ap, align 4, !tbaa !3
  %i.aq = add i32 %i.r, %i.al
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ar ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store <4 x i32> %wide.load, ptr %i.as, align 4, !tbaa !3
  store <4 x i32> %wide.load171, ptr %i.at, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.au = icmp eq i64 %index.next, %n.vec
  br i1 %i.au, label %middle.block, label %vector.body, !llvm.loop !178

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..preheader31_crit_edge.us.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.scevcheck, %.preheader32.us.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.preheader32.us.i ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.av = trunc nuw i64 %indvars.iv.i.prol to i32 ; 3 uses
  %i.aw = add i32 %i.s, %i.av
  %i.ax = zext i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !3
  %i.ba = add i32 %i.r, %i.av
  %i.bb = zext i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bb
  store i32 %i.az, ptr %i.bc, align 4, !tbaa !3
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !179

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.lcssa176.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %indvars.iv.i.prol, %scalar.ph.prol ]
  %.lcssa175.unr = phi i32 [ poison, %scalar.ph.preheader ], [ %i.av, %scalar.ph.prol ]
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.prol, %scalar.ph.prol ]
  %i.bd = sub nsw i64 %indvars.iv.i.ph, %wide.trip.count.i
  %i.be = icmp ugt i64 %i.bd, -4
  br i1 %i.be, label %..preheader31_crit_edge.us.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %scalar.ph ], [ %indvars.iv.i.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.bf = trunc nuw i64 %indvars.iv.i to i32      ; 2 uses
  %i.bg = add i32 %i.s, %i.bf
  %i.bh = zext i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bh
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !3
  %i.bk = add i32 %i.r, %i.bf
  %i.bl = zext i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bl
  store i32 %i.bj, ptr %i.bm, align 4, !tbaa !3
  %i.bn = trunc i64 %indvars.iv.i to i32
  %i.bo = add i32 %i.bn, 1                        ; 2 uses
  %i.bp = add i32 %i.s, %i.bo
  %i.bq = zext i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bq
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !3
  %i.bt = add i32 %i.r, %i.bo
  %i.bu = zext i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bu
  store i32 %i.bs, ptr %i.bv, align 4, !tbaa !3
  %i.bw = trunc i64 %indvars.iv.i to i32
  %i.bx = add i32 %i.bw, 2                        ; 2 uses
  %i.by = add i32 %i.s, %i.bx
  %i.bz = zext i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bz
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !3
  %i.cc = add i32 %i.r, %i.bx
  %i.cd = zext i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cd
  store i32 %i.cb, ptr %i.ce, align 4, !tbaa !3
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %i.cf = trunc nuw i64 %indvars.iv.next.i.2 to i32 ; 3 uses
  %i.cg = add i32 %i.s, %i.cf
  %i.ch = zext i32 %i.cg to i64
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ch
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !3
  %i.ck = add i32 %i.r, %i.cf
  %i.cl = zext i32 %i.ck to i64
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cl
  store i32 %i.cj, ptr %i.cm, align 4, !tbaa !3
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %..preheader31_crit_edge.us.i, label %scalar.ph, !llvm.loop !180

._crit_edge.us.i:                                 ; preds = %.lr.ph37.us.i, %..preheader31_crit_edge.us.i
  %indvars.iv.next51.i = add nuw nsw i64 %indvars.iv50.i, 1 ; 2 uses
  %exitcond54.not.i = icmp eq i64 %indvars.iv.next51.i, %wide.trip.count53.i
  br i1 %exitcond54.not.i, label %opj_dwt_fetch_cols_vertical_pass.exit, label %.preheader32.us.i, !llvm.loop !59

..preheader31_crit_edge.us.i:                     ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.i.lcssa = phi i64 [ %ind.escape, %middle.block ], [ %indvars.iv.i.lcssa176.unr, %scalar.ph.prol.loopexit ], [ %indvars.iv.next.i.2, %scalar.ph ]
  %.lcssa = phi i32 [ %i.o, %middle.block ], [ %.lcssa175.unr, %scalar.ph.prol.loopexit ], [ %i.cf, %scalar.ph ]
  %i.cn = icmp samesign ult i64 %indvars.iv.i.lcssa, 7
  br i1 %i.cn, label %.lr.ph37.us.i, label %._crit_edge.us.i

.lr.ph37.us.i:                                    ; preds = %..preheader31_crit_edge.us.i
  %i.co = or disjoint i32 %i.r, 1
  %i.cp = add nuw i32 %i.co, %.lcssa
  %i.cq = zext i32 %i.cp to i64
  %i.cr = shl nuw nsw i64 %i.cq, 2
  %scevgep.i = getelementptr i8, ptr %1, i64 %i.cr
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i, i8 0, i64 %i.k, i1 false), !tbaa !3
  br label %._crit_edge.us.i

.preheader.i:                                     ; preds = %bb.b
  br i1 %.not41.i, label %opj_dwt_fetch_cols_vertical_pass.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %wide.trip.count67.i = zext i32 %2 to i64       ; 2 uses
  %xtraiter180 = and i64 %wide.trip.count67.i, 1
  %unroll_iter184 = and i64 %wide.trip.count67.i, 4294967294
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv64.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next65.i.1, %.lr.ph.i ] ; 4 uses
  %niter185 = phi i64 [ 0, %.lr.ph.preheader.i ], [ %niter185.next.1, %.lr.ph.i ]
  %i.cs = trunc nuw i64 %indvars.iv64.i to i32
  %i.ct = shl nuw nsw i64 %indvars.iv64.i, 3
  %i.cu = and i64 %i.ct, 4294967280
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cu
  %i.cw = mul i32 %4, %i.cs
  %i.cx = zext i32 %i.cw to i64
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cx
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.cv, ptr noundef nonnull readonly align 4 dereferenceable(32) %i.cy, i64 32, i1 false)
  %indvars.iv.next65.i = or disjoint i64 %indvars.iv64.i, 1 ; 2 uses
  %i.cz = trunc nuw i64 %indvars.iv.next65.i to i32
  %i.da = shl nuw nsw i64 %indvars.iv.next65.i, 3
  %i.db = and i64 %i.da, 4294967288
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.db
  %i.dd = mul i32 %4, %i.cz
  %i.de = zext i32 %i.dd to i64
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.de
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.dc, ptr noundef nonnull readonly align 4 dereferenceable(32) %i.df, i64 32, i1 false)
  %indvars.iv.next65.i.1 = add nuw nsw i64 %indvars.iv64.i, 2 ; 3 uses
  %niter185.next.1 = add i64 %niter185, 2         ; 2 uses
  %niter185.ncmp.1 = icmp eq i64 %niter185.next.1, %unroll_iter184
  br i1 %niter185.ncmp.1, label %opj_dwt_fetch_cols_vertical_pass.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !60

.preheader32.i:                                   ; preds = %.preheader32.i, %.preheader32.preheader.i.new
  %indvars.iv59.i = phi i64 [ 0, %.preheader32.preheader.i.new ], [ %indvars.iv.next60.i.3, %.preheader32.i ] ; 5 uses
  %niter = phi i64 [ 0, %.preheader32.preheader.i.new ], [ %niter.next.3, %.preheader32.i ]
  %i.dg = shl nuw nsw i64 %indvars.iv59.i, 5
  %i.dh = and i64 %i.dg, 17179869056
  %scevgep55.i = getelementptr nuw i8, ptr %1, i64 %i.dh
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %scevgep55.i, i8 0, i64 32, i1 false), !tbaa !3
  %indvars.iv.next60.i = shl i64 %indvars.iv59.i, 5
  %i.di = and i64 %indvars.iv.next60.i, 17179869056
  %i.dj = getelementptr nuw i8, ptr %1, i64 %i.di
  %scevgep55.i.1 = getelementptr nuw i8, ptr %i.dj, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %scevgep55.i.1, i8 0, i64 32, i1 false), !tbaa !3
  %indvars.iv.next60.i.1 = shl i64 %indvars.iv59.i, 5
  %i.dk = and i64 %indvars.iv.next60.i.1, 17179869056
  %i.dl = getelementptr nuw i8, ptr %1, i64 %i.dk
  %scevgep55.i.2 = getelementptr nuw i8, ptr %i.dl, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %scevgep55.i.2, i8 0, i64 32, i1 false), !tbaa !3
  %indvars.iv.next60.i.2 = shl i64 %indvars.iv59.i, 5
  %i.dm = and i64 %indvars.iv.next60.i.2, 17179869056
  %i.dn = getelementptr nuw i8, ptr %1, i64 %i.dm
  %scevgep55.i.3 = getelementptr nuw i8, ptr %i.dn, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %scevgep55.i.3, i8 0, i64 32, i1 false), !tbaa !3
  %indvars.iv.next60.i.3 = add nuw nsw i64 %indvars.iv59.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %opj_dwt_fetch_cols_vertical_pass.exit.loopexit173.unr-lcssa, label %.preheader32.i, !llvm.loop !59

opj_dwt_fetch_cols_vertical_pass.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod182.not = icmp eq i64 %xtraiter180, 0
  br i1 %lcmp.mod182.not, label %opj_dwt_fetch_cols_vertical_pass.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %opj_dwt_fetch_cols_vertical_pass.exit.loopexit.unr-lcssa
  %lcmp.mod183 = trunc i32 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod183)
  %i.do = trunc nuw i64 %indvars.iv.next65.i.1 to i32
  %i.dp = shl nuw nsw i64 %indvars.iv.next65.i.1, 3
  %i.dq = and i64 %i.dp, 4294967288
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.dq
  %i.ds = mul i32 %4, %i.do
  %i.dt = zext i32 %i.ds to i64
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.dt
end_hunk_1
