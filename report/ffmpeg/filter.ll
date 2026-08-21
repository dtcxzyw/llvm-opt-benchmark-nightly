Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/filter?download=true
inline.NumInlined: 77
inline.NumDeleted: 38
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 41
begin_hunk_0_@ff_vvc_alf_copy_ctu_to_hv:bb.a
  %i.au = load i8, ptr %i.at, align 4, !tbaa !84
  %i.av = zext i8 %i.au to i32                    ; 6 uses
  %i.aw = shl i32 %i.ac, %i.av
  %i.ax = add nsw i32 %i.aw, %i.as
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr inbounds i8, ptr %i.ar, i64 %i.ay ; 6 uses
  %i.ba = sext i32 %i.ap to i64                   ; 15 uses
  %i.bb = lshr i32 %i.ah, %i.x                    ; 2 uses
  %.not67.not = icmp eq i64 %indvars.iv, 0        ; 3 uses
  %i.bc = select i1 %.not67.not, i32 3, i32 2     ; 4 uses
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %indvars.iv ; 2 uses
  %i.be = mul nsw i32 %i.bc, %i.i
  %i.bf = mul nsw i32 %i.be, %i.bb
  %i.bg = add nsw i32 %i.bf, %i.ac
  %i.bh = shl i32 %i.bg, %i.av
  %i.bi = sext i32 %i.bh to i64                   ; 2 uses
  %i.bj = shl i32 %i.bb, %i.av
  %i.bk = sext i32 %i.bj to i64                   ; 4 uses
  %i.bl = shl i32 %i.aj, %i.av
  %i.bm = sext i32 %i.bl to i64                   ; 6 uses
  %i.bn = load ptr, ptr %i.bd, align 8, !tbaa !83
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 %i.bi ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bo, ptr align 1 %i.az, i64 %i.bm, i1 false)
  %i.bp = getelementptr inbounds i8, ptr %i.az, i64 %i.ba ; 2 uses
  %i.bq = getelementptr inbounds i8, ptr %i.bo, i64 %i.bk ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bq, ptr align 1 %i.bp, i64 %i.bm, i1 false)
  br i1 %.not67.not, label %bb.d, label %alf_copy_border.exit.i

.lr.ph.i.preheader.preheader.i:                   ; preds = %alf_copy_border.exit.1.i
  %i.br = load ptr, ptr %i.cn, align 8, !tbaa !83
  %i.bs = getelementptr inbounds i8, ptr %i.br, i64 %i.cs ; 2 uses
  %xtraiter = and i32 %i.bz, 3                    ; 3 uses
  %i.bt = icmp ult i32 %i.bz, 4
  br i1 %i.bt, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.preheader.preheader.i.new

.lr.ph.i.preheader.preheader.i.new:               ; preds = %.lr.ph.i.preheader.preheader.i
  %unroll_iter = and i32 %i.bz, 2147483644
  br label %.lr.ph.i.i

bb.d:                                             ; preds = %bb.c
  %i.bu = getelementptr inbounds i8, ptr %i.bp, i64 %i.ba
  %i.bv = getelementptr inbounds i8, ptr %i.bq, i64 %i.bk
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bv, ptr align 1 %i.bu, i64 %i.bm, i1 false)
  br label %alf_copy_border.exit.i

alf_copy_border.exit.i:                           ; preds = %bb.d, %bb.c
  %i.bw = zext i16 %i.al to i32                   ; 2 uses
  %i.bx = sub nsw i32 %i.bw, %2
  %i.by = tail call i32 @llvm.smin.i32(i32 %i.bx, i32 %i.l)
  %i.bz = ashr i32 %i.by, %i.ab                   ; 8 uses
  %i.ca = sub nsw i32 %i.bz, %i.bc
  %i.cb = sext i32 %i.ca to i64
  %i.cc = mul nsw i64 %i.cb, %i.ba
  %i.cd = getelementptr inbounds i8, ptr %i.az, i64 %i.cc ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !83
  %i.cg = getelementptr inbounds i8, ptr %i.cf, i64 %i.bi ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cg, ptr align 1 %i.cd, i64 %i.bm, i1 false)
  %i.ch = getelementptr inbounds i8, ptr %i.cd, i64 %i.ba ; 2 uses
  %i.ci = getelementptr inbounds i8, ptr %i.cg, i64 %i.bk ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ci, ptr align 1 %i.ch, i64 %i.bm, i1 false)
  br i1 %.not67.not, label %bb.e, label %alf_copy_border.exit.1.i

bb.e:                                             ; preds = %alf_copy_border.exit.i
  %i.cj = getelementptr inbounds i8, ptr %i.ch, i64 %i.ba
  %i.ck = getelementptr inbounds i8, ptr %i.ci, i64 %i.bk
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ck, ptr align 1 %i.cj, i64 %i.bm, i1 false)
  br label %alf_copy_border.exit.1.i

alf_copy_border.exit.1.i:                         ; preds = %bb.e, %alf_copy_border.exit.i
  %i.cl = sub nsw i32 %i.aj, %i.bc
  %i.cm = lshr i32 %i.bw, %i.ab
  %i.cn = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %indvars.iv ; 2 uses
  %i.co = mul nsw i32 %i.cm, %i.h
  %i.cp = add nsw i32 %i.co, %i.ad
  %i.cq = shl i32 %i.bc, %i.av                    ; 2 uses
  %i.cr = mul nsw i32 %i.cp, %i.cq
  %i.cs = sext i32 %i.cr to i64                   ; 2 uses
  %i.ct = sext i32 %i.cq to i64                   ; 20 uses
  %i.cu = icmp sgt i32 %i.bz, 0
  br i1 %i.cu, label %.lr.ph.i.preheader.preheader.i, label %alf_copy_ctb_to_hv.exit

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.preheader.preheader.i.new
  %.01114.i53.i = phi ptr [ %i.bs, %.lr.ph.i.preheader.preheader.i.new ], [ %i.db, %.lr.ph.i.i ] ; 2 uses
  %.01213.i54.i = phi ptr [ %i.az, %.lr.ph.i.preheader.preheader.i.new ], [ %i.dc, %.lr.ph.i.i ] ; 2 uses
  %niter = phi i32 [ 0, %.lr.ph.i.preheader.preheader.i.new ], [ %niter.next.3, %.lr.ph.i.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.01114.i53.i, ptr align 1 %.01213.i54.i, i64 %i.ct, i1 false)
  %i.cv = getelementptr inbounds i8, ptr %.01114.i53.i, i64 %i.ct ; 2 uses
  %i.cw = getelementptr inbounds i8, ptr %.01213.i54.i, i64 %i.ba ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cv, ptr align 1 %i.cw, i64 %i.ct, i1 false)
  %i.cx = getelementptr inbounds i8, ptr %i.cv, i64 %i.ct ; 2 uses
  %i.cy = getelementptr inbounds i8, ptr %i.cw, i64 %i.ba ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cx, ptr align 1 %i.cy, i64 %i.ct, i1 false)
  %i.cz = getelementptr inbounds i8, ptr %i.cx, i64 %i.ct ; 2 uses
  %i.da = getelementptr inbounds i8, ptr %i.cy, i64 %i.ba ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cz, ptr align 1 %i.da, i64 %i.ct, i1 false)
  %i.db = getelementptr inbounds i8, ptr %i.cz, i64 %i.ct ; 2 uses
  %i.dc = getelementptr inbounds i8, ptr %i.da, i64 %i.ba ; 2 uses
  %niter.next.3 = add nuw nsw i32 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %alf_copy_border.exit56.loopexit.i.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !203

alf_copy_border.exit56.loopexit.i.unr-lcssa:      ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %alf_copy_border.exit56.loopexit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %alf_copy_border.exit56.loopexit.i.unr-lcssa, %.lr.ph.i.preheader.preheader.i
  %.01114.i53.i.epil.init = phi ptr [ %i.bs, %.lr.ph.i.preheader.preheader.i ], [ %i.db, %alf_copy_border.exit56.loopexit.i.unr-lcssa ]
  %.01213.i54.i.epil.init = phi ptr [ %i.az, %.lr.ph.i.preheader.preheader.i ], [ %i.dc, %alf_copy_border.exit56.loopexit.i.unr-lcssa ]
  %lcmp.mod60 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod60)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %.01114.i53.i.epil = phi ptr [ %i.dd, %.lr.ph.i.i.epil ], [ %.01114.i53.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %.01213.i54.i.epil = phi ptr [ %i.de, %.lr.ph.i.i.epil ], [ %.01213.i54.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.i.i.epil ], [ 0, %.lr.ph.i.i.epil.preheader ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.01114.i53.i.epil, ptr align 1 %.01213.i54.i.epil, i64 %i.ct, i1 false)
  %i.dd = getelementptr inbounds i8, ptr %.01114.i53.i.epil, i64 %i.ct
  %i.de = getelementptr inbounds i8, ptr %.01213.i54.i.epil, i64 %i.ba
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %alf_copy_border.exit56.loopexit.i, label %.lr.ph.i.i.epil, !llvm.loop !204

alf_copy_border.exit56.loopexit.i:                ; preds = %.lr.ph.i.i.epil, %alf_copy_border.exit56.loopexit.i.unr-lcssa
  %i.df = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !83
  %i.dh = getelementptr inbounds i8, ptr %i.dg, i64 %i.cs ; 2 uses
  %i.di = shl i32 %i.cl, %i.av
  %i.dj = sext i32 %i.di to i64
  %i.dk = getelementptr inbounds i8, ptr %i.az, i64 %i.dj ; 2 uses
  %xtraiter61 = and i32 %i.bz, 3                  ; 3 uses
  %i.dl = icmp ult i32 %i.bz, 4
  br i1 %i.dl, label %.lr.ph.i.1.i.epil.preheader, label %alf_copy_border.exit56.loopexit.i.new

alf_copy_border.exit56.loopexit.i.new:            ; preds = %alf_copy_border.exit56.loopexit.i
  %unroll_iter65 = and i32 %i.bz, 2147483644
  br label %.lr.ph.i.1.i

.lr.ph.i.1.i:                                     ; preds = %.lr.ph.i.1.i, %alf_copy_border.exit56.loopexit.i.new
  %.01114.i53.1.i = phi ptr [ %i.dh, %alf_copy_border.exit56.loopexit.i.new ], [ %i.ds, %.lr.ph.i.1.i ] ; 2 uses
  %.01213.i54.1.i = phi ptr [ %i.dk, %alf_copy_border.exit56.loopexit.i.new ], [ %i.dt, %.lr.ph.i.1.i ] ; 2 uses
  %niter66 = phi i32 [ 0, %alf_copy_border.exit56.loopexit.i.new ], [ %niter66.next.3, %.lr.ph.i.1.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.01114.i53.1.i, ptr align 1 %.01213.i54.1.i, i64 %i.ct, i1 false)
  %i.dm = getelementptr inbounds i8, ptr %.01114.i53.1.i, i64 %i.ct ; 2 uses
  %i.dn = getelementptr inbounds i8, ptr %.01213.i54.1.i, i64 %i.ba ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dm, ptr align 1 %i.dn, i64 %i.ct, i1 false)
  %i.do = getelementptr inbounds i8, ptr %i.dm, i64 %i.ct ; 2 uses
  %i.dp = getelementptr inbounds i8, ptr %i.dn, i64 %i.ba ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.do, ptr align 1 %i.dp, i64 %i.ct, i1 false)
  %i.dq = getelementptr inbounds i8, ptr %i.do, i64 %i.ct ; 2 uses
  %i.dr = getelementptr inbounds i8, ptr %i.dp, i64 %i.ba ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dq, ptr align 1 %i.dr, i64 %i.ct, i1 false)
  %i.ds = getelementptr inbounds i8, ptr %i.dq, i64 %i.ct ; 2 uses
  %i.dt = getelementptr inbounds i8, ptr %i.dr, i64 %i.ba ; 2 uses
  %niter66.next.3 = add i32 %niter66, 4           ; 2 uses
  %niter66.ncmp.3 = icmp eq i32 %niter66.next.3, %unroll_iter65
  br i1 %niter66.ncmp.3, label %alf_copy_ctb_to_hv.exit.loopexit.unr-lcssa, label %.lr.ph.i.1.i, !llvm.loop !203

alf_copy_ctb_to_hv.exit.loopexit.unr-lcssa:       ; preds = %.lr.ph.i.1.i
  %lcmp.mod63.not = icmp eq i32 %xtraiter61, 0
  br i1 %lcmp.mod63.not, label %alf_copy_ctb_to_hv.exit, label %.lr.ph.i.1.i.epil.preheader

.lr.ph.i.1.i.epil.preheader:                      ; preds = %alf_copy_ctb_to_hv.exit.loopexit.unr-lcssa, %alf_copy_border.exit56.loopexit.i
  %.01114.i53.1.i.epil.init = phi ptr [ %i.dh, %alf_copy_border.exit56.loopexit.i ], [ %i.ds, %alf_copy_ctb_to_hv.exit.loopexit.unr-lcssa ]
  %.01213.i54.1.i.epil.init = phi ptr [ %i.dk, %alf_copy_border.exit56.loopexit.i ], [ %i.dt, %alf_copy_ctb_to_hv.exit.loopexit.unr-lcssa ]
  %lcmp.mod64 = icmp ne i32 %xtraiter61, 0
  tail call void @llvm.assume(i1 %lcmp.mod64)
  br label %.lr.ph.i.1.i.epil

.lr.ph.i.1.i.epil:                                ; preds = %.lr.ph.i.1.i.epil, %.lr.ph.i.1.i.epil.preheader
  %.01114.i53.1.i.epil = phi ptr [ %i.du, %.lr.ph.i.1.i.epil ], [ %.01114.i53.1.i.epil.init, %.lr.ph.i.1.i.epil.preheader ] ; 2 uses
  %.01213.i54.1.i.epil = phi ptr [ %i.dv, %.lr.ph.i.1.i.epil ], [ %.01213.i54.1.i.epil.init, %.lr.ph.i.1.i.epil.preheader ] ; 2 uses
  %epil.iter62 = phi i32 [ %epil.iter62.next, %.lr.ph.i.1.i.epil ], [ 0, %.lr.ph.i.1.i.epil.preheader ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.01114.i53.1.i.epil, ptr align 1 %.01213.i54.1.i.epil, i64 %i.ct, i1 false)
  %i.du = getelementptr inbounds i8, ptr %.01114.i53.1.i.epil, i64 %i.ct
  %i.dv = getelementptr inbounds i8, ptr %.01213.i54.1.i.epil, i64 %i.ba
  %epil.iter62.next = add i32 %epil.iter62, 1     ; 2 uses
  %epil.iter62.cmp.not = icmp eq i32 %epil.iter62.next, %xtraiter61
  br i1 %epil.iter62.cmp.not, label %alf_copy_ctb_to_hv.exit, label %.lr.ph.i.1.i.epil, !llvm.loop !205

alf_copy_ctb_to_hv.exit:                          ; preds = %alf_copy_ctb_to_hv.exit.loopexit.unr-lcssa, %.lr.ph.i.1.i.epil, %alf_copy_border.exit.1.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.dw = icmp samesign ult i64 %indvars.iv, 2
  %i.dx = select i1 %.not, i1 %i.dw, i1 false
  br i1 %i.dx, label %bb.c, label %bb.b, !llvm.loop !206
}

; Function Attrs: nounwind uwtable
define void @ff_vvc_alf_filter(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [6 x i16], align 2                ; 9 uses
  %i.b = alloca [25 x [12 x i8]], align 16        ; 4 uses
  %i.c = alloca [1024 x i32], align 16            ; 4 uses
  %i.d = alloca [1024 x i32], align 16            ; 4 uses
  %i.e = alloca [4 x [4 x i32]], align 16         ; 38 uses
  %3 = alloca [4 x %struct.VVCRect], align 16     ; 24 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !9    ; 18 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 2064 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !20   ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 30 ; 2 uses
  %i.k = load i8, ptr %i.j, align 2, !tbaa !76
  %i.l = zext i8 %i.k to i32                      ; 2 uses
  %i.m = ashr i32 %1, %i.l                        ; 12 uses
  %i.n = ashr i32 %2, %i.l                        ; 10 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 20
  %i.p = load i8, ptr %i.o, align 4, !tbaa !84
  %i.q = zext i8 %i.p to i32                      ; 2 uses
  %i.r = shl i32 1280, %i.q
  %i.s = shl i32 10248, %i.q
  %i.t = load ptr, ptr %i.i, align 8, !tbaa !85
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 7
  %i.v = load i8, ptr %i.u, align 1, !tbaa !86
  %.not = icmp ne i8 %i.v, 0                      ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 2 uses
  %i.x = load i16, ptr %i.w, align 8, !tbaa !73
  %i.y = zext i16 %i.x to i32
  %i.z = add nsw i32 %2, %i.y                     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 21824
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !207
  %i.ac = getelementptr inbounds nuw i8, ptr %i.g, i64 2072 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !79 ; 7 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 4038
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !109
  %i.ag = zext i16 %i.af to i32                   ; 3 uses
  %i.ah = mul nsw i32 %i.n, %i.ag                 ; 2 uses
  %i.ai = add nsw i32 %i.ah, %i.m
  %i.aj = sext i32 %i.ai to i64                   ; 3 uses
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.aj ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  %4 = load i16, ptr %i.w, align 8, !tbaa !73
  %5 = zext i16 %4 to i32                         ; 8 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.g, i64 2114 ; 3 uses
  %6 = load i8, ptr %i.j, align 2, !tbaa !76
  %7 = zext nneg i8 %6 to i32                     ; 5 uses
  %i.am = shl i32 %i.n, %7                        ; 3 uses
  %8 = load ptr, ptr %i.i, align 8, !tbaa !85     ; 6 uses
  %i.an = getelementptr inbounds nuw i8, ptr %8, i64 38772
  %i.ao = load i8, ptr %i.an, align 4, !tbaa !112
  %.not29.i.i = icmp eq i8 %i.ao, 0               ; 2 uses
  br i1 %.not29.i.i, label %get_virtual_boundary.exit.thread.i, label %.preheader.i.i

get_virtual_boundary.exit.thread.i:               ; preds = %bb.a
  %i.ap = shl i32 %i.m, %7
  br label %get_virtual_boundary.exit70.i

.preheader.i.i:                                   ; preds = %bb.a
  %.in.in.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 2112
  %.in.i.i = load i8, ptr %.in.in.i.i, align 8, !tbaa !77 ; 2 uses
  %.not3036.not.i.i = icmp eq i8 %.in.i.i, 0
  br i1 %.not3036.not.i.i, label %.preheader.i59.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %.preheader.i.i
  %wide.trip.count.i.i = zext i8 %.in.i.i to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.b ] ; 2 uses
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %i.al, i64 %indvars.iv.i.i
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !99
  %i.as = zext i16 %i.ar to i32                   ; 2 uses
  %i.at = sub nsw i32 %i.as, %i.am                ; 2 uses
  %i.au = icmp sgt i32 %i.at, -1
  %i.av = icmp samesign ult i32 %i.at, %5
  %or.cond.i = select i1 %i.au, i1 %i.av, i1 false
  br i1 %or.cond.i, label %.preheader.i59.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %.preheader.i59.i, label %.lr.ph.i.i, !llvm.loop !113

.preheader.i59.i:                                 ; preds = %bb.b, %.lr.ph.i.i, %.preheader.i.i
  %.3.i97.i = phi i32 [ 0, %.preheader.i.i ], [ %i.as, %.lr.ph.i.i ], [ 0, %bb.b ] ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.g, i64 2106
  %i.ax = shl i32 %i.m, %7                        ; 4 uses
  %.in.in.i60.i = getelementptr inbounds nuw i8, ptr %i.g, i64 2104
  %.in.i61.i = load i8, ptr %.in.in.i60.i, align 8, !tbaa !77 ; 2 uses
  %.not3036.not.i62.i = icmp eq i8 %.in.i61.i, 0
  br i1 %.not3036.not.i62.i, label %get_virtual_boundary.exit70.i, label %.lr.ph.preheader.i63.i

.lr.ph.preheader.i63.i:                           ; preds = %.preheader.i59.i
  %wide.trip.count.i64.i = zext i8 %.in.i61.i to i64
  br label %.lr.ph.i65.i

.lr.ph.i65.i:                                     ; preds = %bb.c, %.lr.ph.preheader.i63.i
  %indvars.iv.i66.i = phi i64 [ 0, %.lr.ph.preheader.i63.i ], [ %indvars.iv.next.i67.i, %bb.c ] ; 2 uses
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %i.aw, i64 %indvars.iv.i66.i
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !99
  %i.ba = zext i16 %i.az to i32                   ; 2 uses
  %i.bb = sub nsw i32 %i.ba, %i.ax                ; 2 uses
  %i.bc = icmp sgt i32 %i.bb, -1
  %i.bd = icmp samesign ult i32 %i.bb, %5
  %or.cond98.i = select i1 %i.bc, i1 %i.bd, i1 false
  br i1 %or.cond98.i, label %get_virtual_boundary.exit70.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i65.i
  %indvars.iv.next.i67.i = add nuw nsw i64 %indvars.iv.i66.i, 1 ; 2 uses
  %exitcond.not.i68.i = icmp eq i64 %indvars.iv.next.i67.i, %wide.trip.count.i64.i
  br i1 %exitcond.not.i68.i, label %get_virtual_boundary.exit70.i, label %.lr.ph.i65.i, !llvm.loop !113

get_virtual_boundary.exit70.i:                    ; preds = %bb.c, %.lr.ph.i65.i, %.preheader.i59.i, %get_virtual_boundary.exit.thread.i
  %i.be = phi i32 [ %i.ap, %get_virtual_boundary.exit.thread.i ], [ %i.ax, %.preheader.i59.i ], [ %i.ax, %.lr.ph.i65.i ], [ %i.ax, %bb.c ] ; 2 uses
  %.3.i94.i = phi i32 [ 0, %get_virtual_boundary.exit.thread.i ], [ %.3.i97.i, %.preheader.i59.i ], [ %.3.i97.i, %.lr.ph.i65.i ], [ %.3.i97.i, %bb.c ] ; 7 uses
  %.3.i69.i = phi i32 [ 0, %get_virtual_boundary.exit.thread.i ], [ 0, %.preheader.i59.i ], [ 0, %bb.c ], [ %i.ba, %.lr.ph.i65.i ] ; 7 uses
  %i.bf = icmp sgt i32 %.3.i94.i, %2              ; 2 uses
  %.not235.not.not = icmp sgt i32 %.3.i69.i, %1
  %i.bg = add nsw i32 %1, %5
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ad, i64 30
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !80
  %i.bj = zext i16 %i.bi to i32
  %..i = tail call i32 @llvm.smin.i32(i32 %i.bg, i32 %i.bj) ; 5 uses
  %9 = add nsw i32 %2, %5
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.bl = load i16, ptr %i.bk, align 8, !tbaa !98
  %i.bm = zext i16 %i.bl to i32
  %i.bn = tail call i32 @llvm.smin.i32(i32 %9, i32 %i.bm) ; 6 uses
  %.not.i = icmp eq i32 %i.m, 0                   ; 2 uses
  %i.bo = zext i1 %.not.i to i32
  %.not55.i = icmp eq i32 %i.n, 0                 ; 2 uses
  %i.bp = zext i1 %.not55.i to i32
  %i.bq = add nsw i32 %i.ag, -1
  %i.br = icmp eq i32 %i.m, %i.bq                 ; 2 uses
  %i.bs = zext i1 %i.br to i32
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ad, i64 4040
  %i.bu = load i16, ptr %i.bt, align 8, !tbaa !110
  %i.bv = zext i16 %i.bu to i32
  %i.bw = add nsw i32 %i.bv, -1
  %i.bx = icmp eq i32 %i.n, %i.bw                 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.bz = load ptr, ptr %i.by, align 16, !tbaa !114
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !115
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 18808
  %i.cd = load i16, ptr %i.cc, align 4, !tbaa !121
  %i.ce = load ptr, ptr %i.ad, align 8, !tbaa !126 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 4084
  %i.cg = load i8, ptr %i.cf, align 4, !tbaa !130
  %.not.i.i = icmp eq i8 %i.cg, 0
  br i1 %.not.i.i, label %bb.d, label %bb.l

bb.d:                                             ; preds = %get_virtual_boundary.exit70.i
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !165
  %i.cj = lshr i32 %i.ci, 1
  %.lobit.i.i = and i32 %i.cj, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ck = phi i32 [ 1, %bb.d ], [ %.lobit.i.i, %bb.e ] ; 2 uses
  br i1 %.not55.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !165
  %i.cn = lshr i32 %i.cm, 4
  %.lobit94.i.i = and i32 %i.cn, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.co = phi i32 [ 1, %bb.f ], [ %.lobit94.i.i, %bb.g ] ; 2 uses
  br i1 %i.br, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ad, i64 4080
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !132
  %i.cr = sext i32 %i.m to i64
  %i.cs = getelementptr inbounds [2 x i8], ptr %i.cq, i64 %i.cr ; 2 uses
  %i.ct = load i16, ptr %i.cs, align 2, !tbaa !99
  %i.cu = getelementptr i8, ptr %i.cs, i64 2
  %i.cv = load i16, ptr %i.cu, align 2, !tbaa !99
  %i.cw = icmp ne i16 %i.ct, %i.cv
  %i.cx = zext i1 %i.cw to i32
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.cy = phi i32 [ 1, %bb.h ], [ %i.cx, %bb.i ]  ; 2 uses
  br i1 %i.bx, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ad, i64 4088
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !134
  %i.db = sext i32 %i.n to i64
  %i.dc = getelementptr inbounds [2 x i8], ptr %i.da, i64 %i.db ; 2 uses
  %i.dd = load i16, ptr %i.dc, align 2, !tbaa !99
  %i.de = getelementptr i8, ptr %i.dc, i64 2
  %i.df = load i16, ptr %i.de, align 2, !tbaa !99
  %i.dg = icmp ne i16 %i.dd, %i.df
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %get_virtual_boundary.exit70.i
  %.sroa.30.0.shrunk.i = phi i1 [ %i.bx, %get_virtual_boundary.exit70.i ], [ true, %bb.j ], [ %i.dg, %bb.k ] ; 2 uses
  %.sroa.21.0.i = phi i32 [ %i.bs, %get_virtual_boundary.exit70.i ], [ %i.cy, %bb.j ], [ %i.cy, %bb.k ] ; 2 uses
  %.sroa.12.0.i = phi i32 [ %i.bp, %get_virtual_boundary.exit70.i ], [ %i.co, %bb.j ], [ %i.co, %bb.k ] ; 2 uses
  %.sroa.0.0.i = phi i32 [ %i.bo, %get_virtual_boundary.exit70.i ], [ %i.ck, %bb.j ], [ %i.ck, %bb.k ] ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ce, i64 1992092
  %i.di = load i8, ptr %i.dh, align 4, !tbaa !127
  %.not97.i.i = icmp eq i8 %i.di, 0
  br i1 %.not97.i.i, label %bb.m, label %bb.u

bb.m:                                             ; preds = %bb.l
  %.not98.i.i = icmp eq i32 %.sroa.0.0.i, 0
  br i1 %.not98.i.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !165
  %i.dl = and i32 %i.dk, 1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.dm = phi i32 [ 1, %bb.m ], [ %i.dl, %bb.n ]  ; 2 uses
  %.not99.i.i = icmp eq i32 %.sroa.12.0.i, 0
  br i1 %.not99.i.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !165
  %i.dp = lshr i32 %i.do, 3
  %.lobit100.i.i = and i32 %i.dp, 1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.dq = phi i32 [ 1, %bb.o ], [ %.lobit100.i.i, %bb.p ] ; 2 uses
  %.not101.i.i = icmp eq i32 %.sroa.21.0.i, 0
  br i1 %.not101.i.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.dr = getelementptr inbounds nuw i8, ptr %i.g, i64 21800
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !133 ; 2 uses
  %i.dt = getelementptr inbounds [2 x i8], ptr %i.ds, i64 %i.aj
  %i.du = load i16, ptr %i.dt, align 2, !tbaa !99
  %i.dv = add nsw i32 %i.m, 1
  %i.dw = add nsw i32 %i.dv, %i.ah
  %i.dx = sext i32 %i.dw to i64
  %i.dy = getelementptr inbounds [2 x i8], ptr %i.ds, i64 %i.dx
  %i.dz = load i16, ptr %i.dy, align 2, !tbaa !99
  %i.ea = icmp ne i16 %i.du, %i.dz
  %i.eb = zext i1 %i.ea to i32
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ec = phi i32 [ 1, %bb.q ], [ %i.eb, %bb.r ]  ; 2 uses
  br i1 %.sroa.30.0.shrunk.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ed = getelementptr inbounds nuw i8, ptr %i.g, i64 21800
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !133 ; 2 uses
  %i.ef = getelementptr inbounds [2 x i8], ptr %i.ee, i64 %i.aj
  %i.eg = load i16, ptr %i.ef, align 2, !tbaa !99
  %i.eh = add nsw i32 %i.n, 1
  %i.ei = mul nsw i32 %i.eh, %i.ag
  %i.ej = add nsw i32 %i.ei, %i.m
  %i.ek = sext i32 %i.ej to i64
  %i.el = getelementptr inbounds [2 x i8], ptr %i.ee, i64 %i.ek
  %i.em = load i16, ptr %i.el, align 2, !tbaa !99
  %i.en = icmp ne i16 %i.eg, %i.em
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.l
  %.sroa.30.1.shrunk.i = phi i1 [ %.sroa.30.0.shrunk.i, %bb.l ], [ true, %bb.s ], [ %i.en, %bb.t ] ; 2 uses
  %.sroa.21.1.i = phi i32 [ %.sroa.21.0.i, %bb.l ], [ %i.ec, %bb.s ], [ %i.ec, %bb.t ] ; 2 uses
  %.sroa.12.1.i = phi i32 [ %.sroa.12.0.i, %bb.l ], [ %i.dq, %bb.s ], [ %i.dq, %bb.t ] ; 2 uses
  %.sroa.0.1.i = phi i32 [ %.sroa.0.0.i, %bb.l ], [ %i.dm, %bb.s ], [ %i.dm, %bb.t ] ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %8, i64 10412
  %i.ep = zext i16 %i.cd to i64                   ; 5 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.ep
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !77
  %.not103.i.i = icmp eq i8 %i.er, 0
  br i1 %.not103.i.i, label %bb.v, label %bb.ad

bb.v:                                             ; preds = %bb.u
  %.not104.i.i = icmp eq i32 %.sroa.0.1.i, 0
  br i1 %.not104.i.i, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.et = load i32, ptr %i.es, align 8, !tbaa !165
  %i.eu = lshr i32 %i.et, 2
  %.lobit105.i.i = and i32 %i.eu, 1
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.ev = phi i32 [ 1, %bb.v ], [ %.lobit105.i.i, %bb.w ] ; 2 uses
  %.not106.i.i = icmp eq i32 %.sroa.12.1.i, 0
  br i1 %.not106.i.i, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ex = load i32, ptr %i.ew, align 8, !tbaa !165
  %i.ey = lshr i32 %i.ex, 5
  %.lobit107.i.i = and i32 %i.ey, 1
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.ez = phi i32 [ 1, %bb.x ], [ %.lobit107.i.i, %bb.y ] ; 2 uses
  %.not108.i.i = icmp eq i32 %.sroa.21.1.i, 0
  br i1 %.not108.i.i, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.fa = getelementptr inbounds nuw i8, ptr %8, i64 1412
  %i.fb = getelementptr inbounds nuw [2 x i8], ptr %i.fa, i64 %i.ep
  %i.fc = load i16, ptr %i.fb, align 2, !tbaa !99
  %i.fd = zext i16 %i.fc to i32
  %i.fe = getelementptr inbounds nuw i8, ptr %8, i64 5412
  %i.ff = getelementptr inbounds nuw [2 x i8], ptr %i.fe, i64 %i.ep
  %i.fg = load i16, ptr %i.ff, align 2, !tbaa !99
  %i.fh = zext i16 %i.fg to i32
  %i.fi = add nuw nsw i32 %i.fh, %i.fd
  %i.fj = icmp eq i32 %i.fi, %i.m
  %i.fk = zext i1 %i.fj to i32
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.fl = phi i32 [ 1, %bb.z ], [ %i.fk, %bb.aa ] ; 2 uses
  br i1 %.sroa.30.1.shrunk.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fm = getelementptr inbounds nuw i8, ptr %8, i64 3412
  %i.fn = getelementptr inbounds nuw [2 x i8], ptr %i.fm, i64 %i.ep
  %i.fo = load i16, ptr %i.fn, align 2, !tbaa !99
  %i.fp = zext i16 %i.fo to i32
  %i.fq = getelementptr inbounds nuw i8, ptr %8, i64 7412
  %i.fr = getelementptr inbounds nuw [2 x i8], ptr %i.fq, i64 %i.ep
  %i.fs = load i16, ptr %i.fr, align 2, !tbaa !99
  %i.ft = zext i16 %i.fs to i32
  %i.fu = add nuw nsw i32 %i.ft, %i.fp
  %i.fv = icmp eq i32 %i.fu, %i.n
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.u
  %.sroa.30.2.shrunk.i = phi i1 [ %.sroa.30.1.shrunk.i, %bb.u ], [ true, %bb.ab ], [ %i.fv, %bb.ac ] ; 2 uses
  %.sroa.21.2.i = phi i32 [ %.sroa.21.1.i, %bb.u ], [ %i.fl, %bb.ab ], [ %i.fl, %bb.ac ] ; 2 uses
  %.sroa.12.2.i = phi i32 [ %.sroa.12.1.i, %bb.u ], [ %i.ez, %bb.ab ], [ %i.ez, %bb.ac ] ; 2 uses
  %.sroa.0.2.i = phi i32 [ %.sroa.0.1.i, %bb.u ], [ %i.ev, %bb.ab ], [ %i.ev, %bb.ac ] ; 2 uses
  br i1 %.not29.i.i, label %alf_get_edges.exit.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %.not111.i.i = icmp eq i32 %.sroa.0.2.i, 0
  br i1 %.not111.i.i, label %.preheader.i.i.i.i, label %bb.ag

.preheader.i.i.i.i:                               ; preds = %bb.ae
  %.in.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 2104
  %.in.i.i.i.i = load i8, ptr %.in.in.i.i.i.i, align 8, !tbaa !77 ; 2 uses
  %.not3036.not.i.i.i.i = icmp eq i8 %.in.i.i.i.i, 0
  br i1 %.not3036.not.i.i.i.i, label %is_virtual_boundary.exit.i.i, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %.preheader.i.i.i.i
  %wide.trip.count.i.i.i.i = zext i8 %.in.i.i.i.i to i64
  %i.fw = getelementptr inbounds nuw i8, ptr %i.g, i64 2106
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.af, %.lr.ph.preheader.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i.i ], [ %indvars.iv.next.i.i.i.i, %bb.af ] ; 2 uses
  %i.fx = getelementptr inbounds nuw [2 x i8], ptr %i.fw, i64 %indvars.iv.i.i.i.i
  %i.fy = load i16, ptr %i.fx, align 2, !tbaa !99
  %i.fz = zext i16 %i.fy to i32                   ; 2 uses
  %i.ga = sub nsw i32 %i.fz, %i.be                ; 2 uses
  %i.gb = icmp sgt i32 %i.ga, -1
  %i.gc = icmp samesign ult i32 %i.ga, %5
  %or.cond99.i = select i1 %i.gb, i1 %i.gc, i1 false
  br i1 %or.cond99.i, label %is_virtual_boundary.exit.i.i, label %bb.af

bb.af:                                            ; preds = %.lr.ph.i.i.i.i
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, %wide.trip.count.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %is_virtual_boundary.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !113

is_virtual_boundary.exit.i.i:                     ; preds = %bb.af, %.lr.ph.i.i.i.i, %.preheader.i.i.i.i
  %.3.i.i.i.i = phi i32 [ 0, %.preheader.i.i.i.i ], [ %i.fz, %.lr.ph.i.i.i.i ], [ 0, %bb.af ]
  %i.gd = icmp eq i32 %.3.i.i.i.i, %i.be
  %i.ge = zext i1 %i.gd to i32
  br label %bb.ag

bb.ag:                                            ; preds = %is_virtual_boundary.exit.i.i, %bb.ae
  %i.gf = phi i32 [ 1, %bb.ae ], [ %i.ge, %is_virtual_boundary.exit.i.i ] ; 2 uses
  %.not112.i.i = icmp eq i32 %.sroa.12.2.i, 0
  br i1 %.not112.i.i, label %.preheader.i.i116.i.i, label %bb.ai

.preheader.i.i116.i.i:                            ; preds = %bb.ag
  %.in.in.i.i117.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 2112
  %.in.i.i118.i.i = load i8, ptr %.in.in.i.i117.i.i, align 8, !tbaa !77 ; 2 uses
  %.not3036.not.i.i119.i.i = icmp eq i8 %.in.i.i118.i.i, 0
  br i1 %.not3036.not.i.i119.i.i, label %is_virtual_boundary.exit127.i.i, label %.lr.ph.preheader.i.i120.i.i

.lr.ph.preheader.i.i120.i.i:                      ; preds = %.preheader.i.i116.i.i
  %wide.trip.count.i.i121.i.i = zext i8 %.in.i.i118.i.i to i64
  br label %.lr.ph.i.i122.i.i

.lr.ph.i.i122.i.i:                                ; preds = %bb.ah, %.lr.ph.preheader.i.i120.i.i
  %indvars.iv.i.i123.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i120.i.i ], [ %indvars.iv.next.i.i124.i.i, %bb.ah ] ; 2 uses
  %i.gg = getelementptr inbounds nuw [2 x i8], ptr %i.al, i64 %indvars.iv.i.i123.i.i
  %i.gh = load i16, ptr %i.gg, align 2, !tbaa !99
  %i.gi = zext i16 %i.gh to i32                   ; 2 uses
  %i.gj = sub nsw i32 %i.gi, %i.am                ; 2 uses
  %i.gk = icmp sgt i32 %i.gj, -1
  %i.gl = icmp samesign ult i32 %i.gj, %5
  %or.cond100.i = select i1 %i.gk, i1 %i.gl, i1 false
  br i1 %or.cond100.i, label %is_virtual_boundary.exit127.i.i, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph.i.i122.i.i
  %indvars.iv.next.i.i124.i.i = add nuw nsw i64 %indvars.iv.i.i123.i.i, 1 ; 2 uses
  %exitcond.not.i.i125.i.i = icmp eq i64 %indvars.iv.next.i.i124.i.i, %wide.trip.count.i.i121.i.i
  br i1 %exitcond.not.i.i125.i.i, label %is_virtual_boundary.exit127.i.i, label %.lr.ph.i.i122.i.i, !llvm.loop !113

is_virtual_boundary.exit127.i.i:                  ; preds = %bb.ah, %.lr.ph.i.i122.i.i, %.preheader.i.i116.i.i
  %.3.i.i126.i.i = phi i32 [ 0, %.preheader.i.i116.i.i ], [ %i.gi, %.lr.ph.i.i122.i.i ], [ 0, %bb.ah ]
  %i.gm = icmp eq i32 %.3.i.i126.i.i, %i.am
  %i.gn = zext i1 %i.gm to i32
  br label %bb.ai

bb.ai:                                            ; preds = %is_virtual_boundary.exit127.i.i, %bb.ag
  %i.go = phi i32 [ 1, %bb.ag ], [ %i.gn, %is_virtual_boundary.exit127.i.i ] ; 2 uses
  %.not113.i.i = icmp eq i32 %.sroa.21.2.i, 0
  br i1 %.not113.i.i, label %.preheader.i.i129.i.i, label %bb.ak

.preheader.i.i129.i.i:                            ; preds = %bb.ai
  %i.gp = add nsw i32 %i.m, 1
  %i.gq = shl i32 %i.gp, %7                       ; 2 uses
  %.in.in.i.i130.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 2104
  %.in.i.i131.i.i = load i8, ptr %.in.in.i.i130.i.i, align 8, !tbaa !77 ; 2 uses
  %.not3036.not.i.i132.i.i = icmp eq i8 %.in.i.i131.i.i, 0
  br i1 %.not3036.not.i.i132.i.i, label %is_virtual_boundary.exit140.i.i, label %.lr.ph.preheader.i.i133.i.i

.lr.ph.preheader.i.i133.i.i:                      ; preds = %.preheader.i.i129.i.i
  %wide.trip.count.i.i134.i.i = zext i8 %.in.i.i131.i.i to i64
  %i.gr = getelementptr inbounds nuw i8, ptr %i.g, i64 2106
  br label %.lr.ph.i.i135.i.i

.lr.ph.i.i135.i.i:                                ; preds = %bb.aj, %.lr.ph.preheader.i.i133.i.i
  %indvars.iv.i.i136.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i133.i.i ], [ %indvars.iv.next.i.i137.i.i, %bb.aj ] ; 2 uses
  %i.gs = getelementptr inbounds nuw [2 x i8], ptr %i.gr, i64 %indvars.iv.i.i136.i.i
  %i.gt = load i16, ptr %i.gs, align 2, !tbaa !99
  %i.gu = zext i16 %i.gt to i32                   ; 2 uses
  %i.gv = sub nsw i32 %i.gu, %i.gq                ; 2 uses
  %i.gw = icmp sgt i32 %i.gv, -1
  %i.gx = icmp samesign ult i32 %i.gv, %5
  %or.cond101.i = select i1 %i.gw, i1 %i.gx, i1 false
  br i1 %or.cond101.i, label %is_virtual_boundary.exit140.i.i, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph.i.i135.i.i
  %indvars.iv.next.i.i137.i.i = add nuw nsw i64 %indvars.iv.i.i136.i.i, 1 ; 2 uses
  %exitcond.not.i.i138.i.i = icmp eq i64 %indvars.iv.next.i.i137.i.i, %wide.trip.count.i.i134.i.i
  br i1 %exitcond.not.i.i138.i.i, label %is_virtual_boundary.exit140.i.i, label %.lr.ph.i.i135.i.i, !llvm.loop !113

is_virtual_boundary.exit140.i.i:                  ; preds = %bb.aj, %.lr.ph.i.i135.i.i, %.preheader.i.i129.i.i
  %.3.i.i139.i.i = phi i32 [ 0, %.preheader.i.i129.i.i ], [ %i.gu, %.lr.ph.i.i135.i.i ], [ 0, %bb.aj ]
  %i.gy = icmp eq i32 %.3.i.i139.i.i, %i.gq
  %i.gz = zext i1 %i.gy to i32
  br label %bb.ak

bb.ak:                                            ; preds = %is_virtual_boundary.exit140.i.i, %bb.ai
  %i.ha = phi i32 [ 1, %bb.ai ], [ %i.gz, %is_virtual_boundary.exit140.i.i ] ; 2 uses
  br i1 %.sroa.30.2.shrunk.i, label %alf_get_edges.exit.i, label %.preheader.i.i142.i.i

.preheader.i.i142.i.i:                            ; preds = %bb.ak
  %i.hb = add nsw i32 %i.n, 1
  %i.hc = shl i32 %i.hb, %7                       ; 2 uses
  %.in.in.i.i143.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 2112
  %.in.i.i144.i.i = load i8, ptr %.in.in.i.i143.i.i, align 8, !tbaa !77 ; 2 uses
  %.not3036.not.i.i145.i.i = icmp eq i8 %.in.i.i144.i.i, 0
  br i1 %.not3036.not.i.i145.i.i, label %is_virtual_boundary.exit153.i.i, label %.lr.ph.preheader.i.i146.i.i

.lr.ph.preheader.i.i146.i.i:                      ; preds = %.preheader.i.i142.i.i
  %wide.trip.count.i.i147.i.i = zext i8 %.in.i.i144.i.i to i64
  br label %.lr.ph.i.i148.i.i

.lr.ph.i.i148.i.i:                                ; preds = %bb.al, %.lr.ph.preheader.i.i146.i.i
  %indvars.iv.i.i149.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i146.i.i ], [ %indvars.iv.next.i.i150.i.i, %bb.al ] ; 2 uses
  %i.hd = getelementptr inbounds nuw [2 x i8], ptr %i.al, i64 %indvars.iv.i.i149.i.i
  %i.he = load i16, ptr %i.hd, align 2, !tbaa !99
  %i.hf = zext i16 %i.he to i32                   ; 2 uses
  %i.hg = sub nsw i32 %i.hf, %i.hc                ; 2 uses
  %i.hh = icmp sgt i32 %i.hg, -1
  %i.hi = icmp samesign ult i32 %i.hg, %5
  %or.cond102.i = select i1 %i.hh, i1 %i.hi, i1 false
  br i1 %or.cond102.i, label %is_virtual_boundary.exit153.i.i, label %bb.al

bb.al:                                            ; preds = %.lr.ph.i.i148.i.i
  %indvars.iv.next.i.i150.i.i = add nuw nsw i64 %indvars.iv.i.i149.i.i, 1 ; 2 uses
  %exitcond.not.i.i151.i.i = icmp eq i64 %indvars.iv.next.i.i150.i.i, %wide.trip.count.i.i147.i.i
  br i1 %exitcond.not.i.i151.i.i, label %is_virtual_boundary.exit153.i.i, label %.lr.ph.i.i148.i.i, !llvm.loop !113

is_virtual_boundary.exit153.i.i:                  ; preds = %bb.al, %.lr.ph.i.i148.i.i, %.preheader.i.i142.i.i
  %.3.i.i152.i.i = phi i32 [ 0, %.preheader.i.i142.i.i ], [ %i.hf, %.lr.ph.i.i148.i.i ], [ 0, %bb.al ]
  %i.hj = icmp eq i32 %.3.i.i152.i.i, %i.hc
  br label %alf_get_edges.exit.i

alf_get_edges.exit.i:                             ; preds = %is_virtual_boundary.exit153.i.i, %bb.ak, %bb.ad
  %.sroa.30.3.shrunk.i = phi i1 [ %.sroa.30.2.shrunk.i, %bb.ad ], [ true, %bb.ak ], [ %i.hj, %is_virtual_boundary.exit153.i.i ]
  %.sroa.21.3.i = phi i32 [ %.sroa.21.2.i, %bb.ad ], [ %i.ha, %bb.ak ], [ %i.ha, %is_virtual_boundary.exit153.i.i ] ; 6 uses
  %.sroa.12.3.i = phi i32 [ %.sroa.12.2.i, %bb.ad ], [ %i.go, %bb.ak ], [ %i.go, %is_virtual_boundary.exit153.i.i ] ; 6 uses
  %.sroa.0.3.i = phi i32 [ %.sroa.0.2.i, %bb.ad ], [ %i.gf, %bb.ak ], [ %i.gf, %is_virtual_boundary.exit153.i.i ] ; 6 uses
  %.sroa.30.3.i = zext i1 %.sroa.30.3.shrunk.i to i32 ; 6 uses
  store i32 %1, ptr %3, align 16, !tbaa !97
  %.sroa.4.0..sroa_idx.us.us.us.us.i.us.peel = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %2, ptr %.sroa.4.0..sroa_idx.us.us.us.us.i.us.peel, align 4, !tbaa !97
  %.sroa.5.0..sroa_idx.us.us.us.us.i.us.peel = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  br i1 %.not235.not.not, label %alf_get_edges.exit.split.us.i, label %alf_get_edges.exit.split.i

alf_get_edges.exit.split.us.i:                    ; preds = %alf_get_edges.exit.i
  %.sroa.6.0..sroa_idx.us.us.us.us.i.us.peel = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx.us.us.us.us.i.us = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 2 uses
  %.sroa.5.0..sroa_idx.us.us.us.us.i.us = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %.sroa.6.0..sroa_idx.us.us.us.us.i.us = getelementptr inbounds nuw i8, ptr %3, i64 28 ; 2 uses
  br i1 %i.bf, label %.split.us.us.split.us.us.i.1, label %.split.us.us.split.i

.split.us.us.split.us.us.i.1:                     ; preds = %alf_get_edges.exit.split.us.i
  store i32 %.sroa.0.3.i, ptr %i.e, align 16
  %.sroa.12.0..sroa_idx.us.us.us.us.i.us.peel = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i32 %.sroa.12.3.i, ptr %.sroa.12.0..sroa_idx.us.us.us.us.i.us.peel, align 4
  %.sroa.21.0..sroa_idx.us.us.us.us.i.us.peel = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.30.0..sroa_idx.us.us.us.us.i.us.peel = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 %.3.i94.i, ptr %.sroa.6.0..sroa_idx.us.us.us.us.i.us.peel, align 4, !tbaa !97
  store i32 1, ptr %.sroa.30.0..sroa_idx.us.us.us.us.i.us.peel, align 4, !tbaa !97
  store i32 %.3.i69.i, ptr %.sroa.5.0..sroa_idx.us.us.us.us.i.us.peel, align 8, !tbaa !97
  store i32 1, ptr %.sroa.21.0..sroa_idx.us.us.us.us.i.us.peel, align 8, !tbaa !97
  store i32 %2, ptr %.sroa.4.0..sroa_idx.us.us.us.us.i.us, align 4, !tbaa !97
  store i32 %..i, ptr %.sroa.5.0..sroa_idx.us.us.us.us.i.us, align 8, !tbaa !97
  %.sroa.12.0..sroa_idx.us.us.us.us.i.us = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  store i32 %.sroa.12.3.i, ptr %.sroa.12.0..sroa_idx.us.us.us.us.i.us, align 4
  %.sroa.21.0..sroa_idx.us.us.us.us.i.us = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i32 %.sroa.21.3.i, ptr %.sroa.21.0..sroa_idx.us.us.us.us.i.us, align 8
  %.sroa.30.0..sroa_idx.us.us.us.us.i.us = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  store i32 %.3.i94.i, ptr %.sroa.6.0..sroa_idx.us.us.us.us.i.us, align 4, !tbaa !97
  store i32 1, ptr %.sroa.30.0..sroa_idx.us.us.us.us.i.us, align 4, !tbaa !97
  store i32 %.3.i69.i, ptr %i.hk, align 16, !tbaa !97
  store i32 1, ptr %i.hl, align 16, !tbaa !97
  %i.hm = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.hn = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store i32 %1, ptr %i.hm, align 16, !tbaa !97
  %.sroa.4.0..sroa_idx.us.us.us.us.i.peel.1 = getelementptr inbounds nuw i8, ptr %3, i64 36
  %.sroa.5.0..sroa_idx.us.us.us.us.i.peel.1 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %.sroa.6.0..sroa_idx.us.us.us.us.i.peel.1 = getelementptr inbounds nuw i8, ptr %3, i64 44
  store i32 %i.bn, ptr %.sroa.6.0..sroa_idx.us.us.us.us.i.peel.1, align 4, !tbaa !97
  store i32 %.sroa.0.3.i, ptr %i.hn, align 16
  %.sroa.12.0..sroa_idx.us.us.us.us.i.peel.1 = getelementptr inbounds nuw i8, ptr %i.e, i64 36
  %.sroa.21.0..sroa_idx.us.us.us.us.i.peel.1 = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sroa.30.0..sroa_idx.us.us.us.us.i.peel.1 = getelementptr inbounds nuw i8, ptr %i.e, i64 44
  store i32 %.sroa.30.3.i, ptr %.sroa.30.0..sroa_idx.us.us.us.us.i.peel.1, align 4
  store i32 %.3.i94.i, ptr %.sroa.4.0..sroa_idx.us.us.us.us.i.peel.1, align 4, !tbaa !97
  store i32 1, ptr %.sroa.12.0..sroa_idx.us.us.us.us.i.peel.1, align 4, !tbaa !97
  store i32 %.3.i69.i, ptr %.sroa.5.0..sroa_idx.us.us.us.us.i.peel.1, align 8, !tbaa !97
  store i32 1, ptr %.sroa.21.0..sroa_idx.us.us.us.us.i.peel.1, align 8, !tbaa !97
  %i.ho = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.hp = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %.sroa.4.0..sroa_idx.us.us.us.us.i.1 = getelementptr inbounds nuw i8, ptr %3, i64 52
  %.sroa.5.0..sroa_idx.us.us.us.us.i.1 = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i32 %..i, ptr %.sroa.5.0..sroa_idx.us.us.us.us.i.1, align 8, !tbaa !97
  %.sroa.6.0..sroa_idx.us.us.us.us.i.1 = getelementptr inbounds nuw i8, ptr %3, i64 60
  store i32 %i.bn, ptr %.sroa.6.0..sroa_idx.us.us.us.us.i.1, align 4, !tbaa !97
  %.sroa.12.0..sroa_idx.us.us.us.us.i.1 = getelementptr inbounds nuw i8, ptr %i.e, i64 52
  %.sroa.21.0..sroa_idx.us.us.us.us.i.1 = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store i32 %.sroa.21.3.i, ptr %.sroa.21.0..sroa_idx.us.us.us.us.i.1, align 8
  %.sroa.30.0..sroa_idx.us.us.us.us.i.1 = getelementptr inbounds nuw i8, ptr %i.e, i64 60
  store i32 %.sroa.30.3.i, ptr %.sroa.30.0..sroa_idx.us.us.us.us.i.1, align 4
  store i32 %.3.i94.i, ptr %.sroa.4.0..sroa_idx.us.us.us.us.i.1, align 4, !tbaa !97
  store i32 1, ptr %.sroa.12.0..sroa_idx.us.us.us.us.i.1, align 4, !tbaa !97
  store i32 %.3.i69.i, ptr %i.ho, align 16, !tbaa !97
  store i32 1, ptr %i.hp, align 16, !tbaa !97
  br label %.lr.ph

.split.us.us.split.i:                             ; preds = %alf_get_edges.exit.split.us.i
  store i32 %i.bn, ptr %.sroa.6.0..sroa_idx.us.us.us.us.i.us.peel, align 4, !tbaa !97
  store i32 %.sroa.0.3.i, ptr %i.e, align 16
  %.sroa.12.0..sroa_idx.us.us.i.peel = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i32 %.sroa.12.3.i, ptr %.sroa.12.0..sroa_idx.us.us.i.peel, align 4
  %.sroa.21.0..sroa_idx.us.us.i.peel = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.30.0..sroa_idx.us.us.i.peel = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 %.sroa.30.3.i, ptr %.sroa.30.0..sroa_idx.us.us.i.peel, align 4
  store i32 %.3.i69.i, ptr %.sroa.5.0..sroa_idx.us.us.us.us.i.us.peel, align 8, !tbaa !97
  store i32 1, ptr %.sroa.21.0..sroa_idx.us.us.i.peel, align 8, !tbaa !97
  store i32 %2, ptr %.sroa.4.0..sroa_idx.us.us.us.us.i.us, align 4, !tbaa !97
  store i32 %..i, ptr %.sroa.5.0..sroa_idx.us.us.us.us.i.us, align 8, !tbaa !97
  store i32 %i.bn, ptr %.sroa.6.0..sroa_idx.us.us.us.us.i.us, align 4, !tbaa !97
  %.sroa.12.0..sroa_idx.us.us.i = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  store i32 %.sroa.12.3.i, ptr %.sroa.12.0..sroa_idx.us.us.i, align 4
  %.sroa.21.0..sroa_idx.us.us.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i32 %.sroa.21.3.i, ptr %.sroa.21.0..sroa_idx.us.us.i, align 8
  %.sroa.30.0..sroa_idx.us.us.i = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  store i32 %.sroa.30.3.i, ptr %.sroa.30.0..sroa_idx.us.us.i, align 4
  store i32 %.3.i69.i, ptr %i.hk, align 16, !tbaa !97
  store i32 1, ptr %i.hl, align 16, !tbaa !97
  br label %.lr.ph

alf_get_edges.exit.split.i:                       ; preds = %alf_get_edges.exit.i
  store i32 %..i, ptr %.sroa.5.0..sroa_idx.us.us.us.us.i.us.peel, align 8, !tbaa !97
  %.sroa.6.0..sroa_idx.us109.us.i.us = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  br i1 %i.bf, label %alf_get_subblock.exit.us114.us.i.us, label %alf_get_subblock.exit.i

alf_get_subblock.exit.us114.us.i.us:              ; preds = %alf_get_edges.exit.split.i
  store i32 %.sroa.0.3.i, ptr %i.e, align 16
  %.sroa.12.0..sroa_idx.us110.us.i.us = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i32 %.sroa.12.3.i, ptr %.sroa.12.0..sroa_idx.us110.us.i.us, align 4
  %.sroa.21.0..sroa_idx.us111.us.i.us = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i32 %.sroa.21.3.i, ptr %.sroa.21.0..sroa_idx.us111.us.i.us, align 8
  %.sroa.30.0..sroa_idx.us112.us.i.us = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 %.3.i94.i, ptr %.sroa.6.0..sroa_idx.us109.us.i.us, align 4, !tbaa !97
  store i32 1, ptr %.sroa.30.0..sroa_idx.us112.us.i.us, align 4, !tbaa !97
  %i.hq = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.hr = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i32 %1, ptr %i.hq, align 16, !tbaa !97
  %.sroa.4.0..sroa_idx.us107.us.i.1 = getelementptr inbounds nuw i8, ptr %3, i64 20
  %.sroa.5.0..sroa_idx.us108.us.i.1 = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 %..i, ptr %.sroa.5.0..sroa_idx.us108.us.i.1, align 8, !tbaa !97
  %.sroa.6.0..sroa_idx.us109.us.i.1 = getelementptr inbounds nuw i8, ptr %3, i64 28
  store i32 %i.bn, ptr %.sroa.6.0..sroa_idx.us109.us.i.1, align 4, !tbaa !97
  store i32 %.sroa.0.3.i, ptr %i.hr, align 16
  %.sroa.12.0..sroa_idx.us110.us.i.1 = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %.sroa.21.0..sroa_idx.us111.us.i.1 = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i32 %.sroa.21.3.i, ptr %.sroa.21.0..sroa_idx.us111.us.i.1, align 8
  %.sroa.30.0..sroa_idx.us112.us.i.1 = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  store i32 %.sroa.30.3.i, ptr %.sroa.30.0..sroa_idx.us112.us.i.1, align 4
  store i32 %.3.i94.i, ptr %.sroa.4.0..sroa_idx.us107.us.i.1, align 4, !tbaa !97
  store i32 1, ptr %.sroa.12.0..sroa_idx.us110.us.i.1, align 4, !tbaa !97
  br label %.lr.ph

alf_get_subblock.exit.i:                          ; preds = %alf_get_edges.exit.split.i
  store i32 %i.bn, ptr %.sroa.6.0..sroa_idx.us109.us.i.us, align 4, !tbaa !97
  store i32 %.sroa.0.3.i, ptr %i.e, align 16
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i32 %.sroa.12.3.i, ptr %.sroa.12.0..sroa_idx.i, align 4
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i32 %.sroa.21.3.i, ptr %.sroa.21.0..sroa_idx.i, align 8
  %.sroa.30.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 %.sroa.30.3.i, ptr %.sroa.30.0..sroa_idx.i, align 4
  br label %.lr.ph

.lr.ph:                                           ; preds = %alf_get_subblock.exit.us114.us.i.us, %.split.us.us.split.i, %.split.us.us.split.us.us.i.1, %alf_get_subblock.exit.i
  %.us-phi122.i = phi i64 [ 4, %.split.us.us.split.us.us.i.1 ], [ 1, %alf_get_subblock.exit.i ], [ 2, %.split.us.us.split.i ], [ 2, %alf_get_subblock.exit.us114.us.i.us ]
  %i.hs = getelementptr inbounds nuw i8, ptr %i.g, i64 2048
  %i.ht = getelementptr inbounds nuw i8, ptr %i.ak, i64 6
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ak, i64 7
  %i.hv = sext i32 %i.s to i64                    ; 2 uses
  %invariant.gep = getelementptr i8, ptr %0, i64 %i.hv
  %i.hw = sext i32 %i.r to i64                    ; 79 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.g, i64 22256
  %i.hy = add nsw i32 %i.n, -1
  %i.hz = add nsw i32 %i.n, 1
  %i.ia = getelementptr inbounds nuw i8, ptr %i.g, i64 22304
  %i.ib = add nsw i32 %i.m, -1
  %i.ic = sub nsw i64 0, %i.hw                    ; 2 uses
  %i.id = add nsw i32 %i.m, 1
  %i.ie = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.if = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ig = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %i.ih = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ii = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %i.ij = add i32 %i.z, -4                        ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 32928
  %i.il = getelementptr inbounds i8, ptr %i.ik, i64 %i.hv
  %i.im = getelementptr i8, ptr %i.ak, i64 3
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 864480 ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 839904 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 770208
  br label %bb.am

._crit_edge:                                      ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  ret void

bb.am:                                            ; preds = %.lr.ph, %bb.an
  %indvars.iv205 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next206, %bb.an ] ; 3 uses
  %i.iq = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv205 ; 4 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 4 ; 2 uses
  %10 = getelementptr inbounds nuw i8, ptr %i.iq, i64 8
  %i.is = getelementptr inbounds nuw i8, ptr %i.iq, i64 12
  %11 = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %indvars.iv205 ; 4 uses
  %12 = getelementptr inbounds nuw i8, ptr %11, i64 4
  %i.it = getelementptr inbounds nuw i8, ptr %11, i64 12
  %13 = getelementptr inbounds nuw i8, ptr %11, i64 8
  %14 = load i32, ptr %i.iq, align 16, !tbaa !208 ; 2 uses
  %15 = load i32, ptr %i.ir, align 4, !tbaa !210  ; 3 uses
  %16 = load i32, ptr %10, align 8, !tbaa !211
  %17 = sub nsw i32 %16, %14
  %18 = load i32, ptr %i.is, align 4, !tbaa !212
  %i.iu = sub nsw i32 %18, %15
  %i.iv = sub nsw i32 %i.z, %15
  br label %bb.ao

bb.an:                                            ; preds = %alf_filter_cc.exit
  %indvars.iv.next206 = add nuw nsw i64 %indvars.iv205, 1 ; 2 uses
  %exitcond209.not = icmp eq i64 %indvars.iv.next206, %.us-phi122.i
  br i1 %exitcond209.not, label %._crit_edge, label %bb.am, !llvm.loop !213

bb.ao:                                            ; preds = %bb.am, %alf_filter_cc.exit
  %indvars.iv = phi i64 [ 0, %bb.am ], [ %indvars.iv.next, %alf_filter_cc.exit ] ; 14 uses
  %i.iw = load ptr, ptr %i.h, align 8, !tbaa !20  ; 3 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 8
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 %indvars.iv
  %i.iz = load i8, ptr %i.iy, align 1, !tbaa !77
  %i.ja = zext i8 %i.iz to i32                    ; 4 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iw, i64 11
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 %indvars.iv
  %i.jd = load i8, ptr %i.jc, align 1, !tbaa !77
  %i.je = zext i8 %i.jd to i32                    ; 5 uses
  %i.jf = ashr i32 %14, %i.ja
  %i.jg = ashr i32 %15, %i.je                     ; 3 uses
  %i.jh = ashr i32 %17, %i.ja                     ; 6 uses
  %i.ji = ashr i32 %i.iu, %i.je                   ; 27 uses
  %i.jj = load ptr, ptr %i.hs, align 8, !tbaa !78 ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 64
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.jk, i64 %indvars.iv
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !97 ; 3 uses
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %i.jj, i64 %indvars.iv
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !83
  %i.jp = mul nsw i32 %i.jm, %i.jg
  %i.jq = getelementptr inbounds nuw i8, ptr %i.iw, i64 20
  %i.jr = load i8, ptr %i.jq, align 4, !tbaa !84  ; 5 uses
  %i.js = zext i8 %i.jr to i32                    ; 6 uses
  %i.jt = shl i32 %i.jf, %i.js                    ; 3 uses
  %i.ju = add nsw i32 %i.jt, %i.jp
  %i.jv = sext i32 %i.ju to i64
  %i.jw = getelementptr inbounds i8, ptr %i.jo, i64 %i.jv ; 5 uses
  %i.jx = getelementptr i8, ptr %i.ak, i64 %indvars.iv ; 4 uses
  %i.jy = load i8, ptr %i.jx, align 1, !tbaa !77
  %.not125 = icmp eq i8 %i.jy, 0
  br i1 %.not125, label %bb.ap, label %bb.as

bb.ap:                                            ; preds = %bb.ao
  %i.jz = icmp eq i64 %indvars.iv, 0
  %or.cond = select i1 %i.jz, i1 %.not, i1 false
  br i1 %or.cond, label %bb.aq, label %alf_prepare_buffer.exit.thread

bb.aq:                                            ; preds = %bb.ap
  %i.ka = load i8, ptr %i.ht, align 1, !tbaa !77
  %.not126 = icmp eq i8 %i.ka, 0
  br i1 %.not126, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.kb = load i8, ptr %i.hu, align 1, !tbaa !77
  %.not127 = icmp eq i8 %i.kb, 0
  br i1 %.not127, label %alf_filter_cc.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq, %bb.ao
  %.not128.not.not.not.not.not.not.not.not.not.not.not.not.not.not = icmp eq i64 %indvars.iv, 0 ; 18 uses
  %.v = select i1 %.not128.not.not.not.not.not.not.not.not.not.not.not.not.not.not, i64 32928, i64 401568
  %gep = getelementptr i8, ptr %invariant.gep, i64 %.v ; 13 uses
  %i.kc = sext i32 %i.jm to i64                   ; 7 uses
  %i.kd = load ptr, ptr %i.ac, align 8, !tbaa !79 ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 30
  %i.kf = load i16, ptr %i.ke, align 2, !tbaa !80
  %i.kg = zext i16 %i.kf to i32
  %i.kh = lshr i32 %i.kg, %i.ja                   ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kd, i64 32
  %i.kj = load i16, ptr %i.ki, align 8, !tbaa !98
  %i.kk = zext i16 %i.kj to i32
  %i.kl = lshr i32 %i.kk, %i.je                   ; 2 uses
  %.neg171.i = select i1 %.not128.not.not.not.not.not.not.not.not.not.not.not.not.not.not, i32 -3, i32 -2
  %i.km = select i1 %.not128.not.not.not.not.not.not.not.not.not.not.not.not.not.not, i32 3, i32 2 ; 9 uses
  %i.kn = shl i32 %i.jh, %i.js
  %i.ko = icmp sgt i32 %i.ji, 0
  %i.kp = sext i32 %i.kn to i64                   ; 18 uses
  br i1 %i.ko, label %.lr.ph.i.i139.preheader, label %copy_ctb.exit.i

.lr.ph.i.i139.preheader:                          ; preds = %bb.as
  %i.kq = add nsw i32 %i.ji, -1
  %xtraiter = and i32 %i.ji, 3                    ; 3 uses
  %i.kr = icmp ult i32 %i.kq, 3
  br i1 %i.kr, label %.lr.ph.i.i139.epil.preheader, label %.lr.ph.i.i139.preheader.new

.lr.ph.i.i139.preheader.new:                      ; preds = %.lr.ph.i.i139.preheader
  %unroll_iter = and i32 %i.ji, 2147483644
  br label %.lr.ph.i.i139

.lr.ph.i.i139:                                    ; preds = %.lr.ph.i.i139, %.lr.ph.i.i139.preheader.new
  %.0912.i.i = phi ptr [ %gep, %.lr.ph.i.i139.preheader.new ], [ %i.ky, %.lr.ph.i.i139 ] ; 2 uses
  %.01011.i.i = phi ptr [ %i.jw, %.lr.ph.i.i139.preheader.new ], [ %i.kz, %.lr.ph.i.i139 ] ; 2 uses
  %niter = phi i32 [ 0, %.lr.ph.i.i139.preheader.new ], [ %niter.next.3, %.lr.ph.i.i139 ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0912.i.i, ptr align 1 %.01011.i.i, i64 %i.kp, i1 false)
  %i.ks = getelementptr inbounds i8, ptr %.0912.i.i, i64 %i.hw ; 2 uses
  %i.kt = getelementptr inbounds i8, ptr %.01011.i.i, i64 %i.kc ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ks, ptr align 1 %i.kt, i64 %i.kp, i1 false)
  %i.ku = getelementptr inbounds i8, ptr %i.ks, i64 %i.hw ; 2 uses
  %i.kv = getelementptr inbounds i8, ptr %i.kt, i64 %i.kc ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ku, ptr align 1 %i.kv, i64 %i.kp, i1 false)
  %i.kw = getelementptr inbounds i8, ptr %i.ku, i64 %i.hw ; 2 uses
  %i.kx = getelementptr inbounds i8, ptr %i.kv, i64 %i.kc ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.kw, ptr align 1 %i.kx, i64 %i.kp, i1 false)
  %i.ky = getelementptr inbounds i8, ptr %i.kw, i64 %i.hw ; 2 uses
  %i.kz = getelementptr inbounds i8, ptr %i.kx, i64 %i.kc ; 2 uses
  %niter.next.3 = add nuw nsw i32 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %copy_ctb.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i139, !llvm.loop !140

copy_ctb.exit.i.loopexit.unr-lcssa:               ; preds = %.lr.ph.i.i139
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %copy_ctb.exit.i, label %.lr.ph.i.i139.epil.preheader

.lr.ph.i.i139.epil.preheader:                     ; preds = %copy_ctb.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i139.preheader
  %.0912.i.i.epil.init = phi ptr [ %gep, %.lr.ph.i.i139.preheader ], [ %i.ky, %copy_ctb.exit.i.loopexit.unr-lcssa ]
  %.01011.i.i.epil.init = phi ptr [ %i.jw, %.lr.ph.i.i139.preheader ], [ %i.kz, %copy_ctb.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod254 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod254)
  br label %.lr.ph.i.i139.epil

.lr.ph.i.i139.epil:                               ; preds = %.lr.ph.i.i139.epil, %.lr.ph.i.i139.epil.preheader
  %.0912.i.i.epil = phi ptr [ %i.la, %.lr.ph.i.i139.epil ], [ %.0912.i.i.epil.init, %.lr.ph.i.i139.epil.preheader ] ; 2 uses
  %.01011.i.i.epil = phi ptr [ %i.lb, %.lr.ph.i.i139.epil ], [ %.01011.i.i.epil.init, %.lr.ph.i.i139.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.i.i139.epil ], [ 0, %.lr.ph.i.i139.epil.preheader ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0912.i.i.epil, ptr align 1 %.01011.i.i.epil, i64 %i.kp, i1 false)
  %i.la = getelementptr inbounds i8, ptr %.0912.i.i.epil, i64 %i.hw
  %i.lb = getelementptr inbounds i8, ptr %.01011.i.i.epil, i64 %i.kc
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %copy_ctb.exit.i, label %.lr.ph.i.i139.epil, !llvm.loop !214

copy_ctb.exit.i:                                  ; preds = %copy_ctb.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i139.epil, %bb.as
  %i.lc = getelementptr inbounds nuw [16 x i8], ptr %i.hx, i64 %indvars.iv ; 2 uses
  %i.ld = mul nuw nsw i32 %i.kh, %i.km
  %i.le = shl i32 %i.ld, %i.js                    ; 2 uses
  %i.lf = zext nneg i32 %i.km to i64              ; 21 uses
  %i.lg = mul nsw i64 %i.lf, %i.hw                ; 3 uses
  %i.lh = sub nsw i64 0, %i.lg                    ; 3 uses
  %i.li = getelementptr inbounds i8, ptr %gep, i64 %i.lh ; 4 uses
  %i.lj = shl i32 %i.kh, %i.js
  %i.lk = sext i32 %i.lj to i64                   ; 4 uses
  %i.ll = load i32, ptr %12, align 4, !tbaa !97   ; 3 uses
  %.not.i.i137 = icmp eq i32 %i.ll, 0             ; 5 uses
  br i1 %.not.i.i137, label %.preheader168.i, label %.preheader169.i

.preheader169.i:                                  ; preds = %copy_ctb.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.li, ptr nonnull readonly align 1 %gep, i64 %i.kp, i1 false)
  %i.lm = getelementptr inbounds i8, ptr %i.li, i64 %i.hw ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.lm, ptr nonnull readonly align 1 %gep, i64 %i.kp, i1 false)
  br i1 %.not128.not.not.not.not.not.not.not.not.not.not.not.not.not.not, label %.preheader169.i.2, label %alf_fill_border_h.exit.i

.preheader169.i.2:                                ; preds = %.preheader169.i
  %i.ln = getelementptr inbounds i8, ptr %i.lm, i64 %i.hw
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ln, ptr nonnull readonly align 1 %gep, i64 %i.kp, i1 false)
  br label %alf_fill_border_h.exit.i

.preheader168.i:                                  ; preds = %copy_ctb.exit.i
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lc, i64 8
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !83
  %i.lq = mul nsw i32 %i.le, %i.hy
  %i.lr = add nsw i32 %i.lq, %i.jt
  %i.ls = sext i32 %i.lr to i64
  %i.lt = getelementptr inbounds i8, ptr %i.lp, i64 %i.ls ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.li, ptr align 1 %i.lt, i64 %i.kp, i1 false)
  %i.lu = getelementptr inbounds i8, ptr %i.lt, i64 %i.lk ; 2 uses
  %i.lv = getelementptr inbounds i8, ptr %i.li, i64 %i.hw ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.lv, ptr align 1 %i.lu, i64 %i.kp, i1 false)
  br i1 %.not128.not.not.not.not.not.not.not.not.not.not.not.not.not.not, label %.preheader168.i.2, label %alf_fill_border_h.exit.i

.preheader168.i.2:                                ; preds = %.preheader168.i
  %i.lw = getelementptr inbounds i8, ptr %i.lu, i64 %i.lk
  %i.lx = getelementptr inbounds i8, ptr %i.lv, i64 %i.hw
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.lx, ptr align 1 %i.lw, i64 %i.kp, i1 false)
  br label %alf_fill_border_h.exit.i

alf_fill_border_h.exit.i:                         ; preds = %.preheader169.i, %.preheader169.i.2, %.preheader168.i, %.preheader168.i.2
  %i.ly = sext i32 %i.ji to i64
  %i.lz = mul nsw i64 %i.ly, %i.hw
  %i.ma = getelementptr inbounds i8, ptr %gep, i64 %i.lz ; 4 uses
  %i.mb = add nsw i32 %i.ji, -1
  %i.mc = sext i32 %i.mb to i64
  %i.md = mul nsw i64 %i.mc, %i.hw
  %i.me = getelementptr inbounds i8, ptr %gep, i64 %i.md ; 3 uses
  %i.mf = load i32, ptr %i.it, align 4, !tbaa !97
  %.not.i105.i = icmp eq i32 %i.mf, 0             ; 5 uses
  br i1 %.not.i105.i, label %.preheader165.i, label %.preheader166.i

.preheader166.i:                                  ; preds = %alf_fill_border_h.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ma, ptr nonnull readonly align 1 %i.me, i64 %i.kp, i1 false)
  %i.mg = getelementptr inbounds i8, ptr %i.ma, i64 %i.hw ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.mg, ptr nonnull readonly align 1 %i.me, i64 %i.kp, i1 false)
  br i1 %.not128.not.not.not.not.not.not.not.not.not.not.not.not.not.not, label %.preheader166.i.2, label %alf_fill_border_h.exit113.i

.preheader166.i.2:                                ; preds = %.preheader166.i
  %i.mh = getelementptr inbounds i8, ptr %i.mg, i64 %i.hw
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.mh, ptr nonnull readonly align 1 %i.me, i64 %i.kp, i1 false)
  br label %alf_fill_border_h.exit113.i

.preheader165.i:                                  ; preds = %alf_fill_border_h.exit.i
  %i.mi = load ptr, ptr %i.lc, align 8, !tbaa !83
  %i.mj = mul nsw i32 %i.le, %i.hz
  %i.mk = add nsw i32 %i.mj, %i.jt
  %i.ml = sext i32 %i.mk to i64
  %i.mm = getelementptr inbounds i8, ptr %i.mi, i64 %i.ml ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ma, ptr align 1 %i.mm, i64 %i.kp, i1 false)
  %i.mn = getelementptr inbounds i8, ptr %i.mm, i64 %i.lk ; 2 uses
  %i.mo = getelementptr inbounds i8, ptr %i.ma, i64 %i.hw ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.mo, ptr align 1 %i.mn, i64 %i.kp, i1 false)
  br i1 %.not128.not.not.not.not.not.not.not.not.not.not.not.not.not.not, label %.preheader165.i.2, label %alf_fill_border_h.exit113.i

.preheader165.i.2:                                ; preds = %.preheader165.i
  %i.mp = getelementptr inbounds i8, ptr %i.mn, i64 %i.lk
  %i.mq = getelementptr inbounds i8, ptr %i.mo, i64 %i.hw
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.mq, ptr align 1 %i.mp, i64 %i.kp, i1 false)
  br label %alf_fill_border_h.exit113.i

alf_fill_border_h.exit113.i:                      ; preds = %.preheader166.i, %.preheader166.i.2, %.preheader165.i, %.preheader165.i.2
  %i.mr = getelementptr inbounds nuw [16 x i8], ptr %i.ia, i64 %indvars.iv ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 8
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !83
  %i.mu = mul nsw i32 %i.kl, %i.ib
  %i.mv = add i32 %i.jg, %.neg171.i               ; 2 uses
  %i.mw = add i32 %i.mu, %i.mv
  %i.mx = shl i32 %i.km, %i.js                    ; 3 uses
  %i.my = mul nsw i32 %i.mw, %i.mx
  %i.mz = sext i32 %i.my to i64
  %i.na = getelementptr inbounds i8, ptr %i.mt, i64 %i.mz
  %i.nb = sext i32 %i.mx to i64                   ; 36 uses
  %i.nc = sub nsw i64 0, %i.nb
  %i.nd = getelementptr inbounds i8, ptr %gep, i64 %i.nc ; 4 uses
  %i.ne = getelementptr inbounds i8, ptr %i.nd, i64 %i.lh ; 9 uses
  %i.nf = getelementptr inbounds i8, ptr %i.ne, i64 %i.nb ; 4 uses
  %i.ng = load i32, ptr %11, align 16, !tbaa !97
  %.not.i114.i = icmp eq i32 %i.ng, 0
  br i1 %.not.i114.i, label %bb.ay, label %bb.at

bb.at:                                            ; preds = %alf_fill_border_h.exit113.i
  %i.nh = shl nuw nsw i32 %i.km, 1                ; 3 uses
  %i.ni = add i32 %i.ji, %i.nh                    ; 5 uses
  %i.nj = icmp eq i8 %i.jr, 0
  br i1 %i.nj, label %.preheader.i.i.i, label %bb.au

.preheader.i.i.i:                                 ; preds = %bb.at
  %i.nk = icmp sgt i32 %i.ni, 0
  br i1 %i.nk, label %.lr.ph.i.i.i.preheader, label %alf_fill_border_v.exit.i

.lr.ph.i.i.i.preheader:                           ; preds = %.preheader.i.i.i
  %i.nl = add i32 %i.ji, -1
  %i.nm = add i32 %i.nl, %i.nh
  %xtraiter261 = and i32 %i.ni, 7                 ; 3 uses
  %i.nn = icmp ult i32 %i.nm, 7
  br i1 %i.nn, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter265 = and i32 %i.ni, 2147483640
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %.03141.i.i.i = phi ptr [ %i.ne, %.lr.ph.i.i.i.preheader.new ], [ %i.ol, %.lr.ph.i.i.i ] ; 2 uses
  %.03240.i.i.i = phi ptr [ %i.nf, %.lr.ph.i.i.i.preheader.new ], [ %i.ok, %.lr.ph.i.i.i ] ; 2 uses
  %niter266 = phi i32 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter266.next.7, %.lr.ph.i.i.i ]
  %i.no = load i8, ptr %.03240.i.i.i, align 1, !tbaa !77
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.03141.i.i.i, i8 %i.no, i64 %i.lf, i1 false)
  %i.np = getelementptr inbounds i8, ptr %.03240.i.i.i, i64 %i.hw ; 2 uses
  %i.nq = getelementptr inbounds i8, ptr %.03141.i.i.i, i64 %i.hw ; 2 uses
  %i.nr = load i8, ptr %i.np, align 1, !tbaa !77
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.nq, i8 %i.nr, i64 %i.lf, i1 false)
  %i.ns = getelementptr inbounds i8, ptr %i.np, i64 %i.hw ; 2 uses
  %i.nt = getelementptr inbounds i8, ptr %i.nq, i64 %i.hw ; 2 uses
  %i.nu = load i8, ptr %i.ns, align 1, !tbaa !77
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.nt, i8 %i.nu, i64 %i.lf, i1 false)
  %i.nv = getelementptr inbounds i8, ptr %i.ns, i64 %i.hw ; 2 uses
  %i.nw = getelementptr inbounds i8, ptr %i.nt, i64 %i.hw ; 2 uses
  %i.nx = load i8, ptr %i.nv, align 1, !tbaa !77
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.nw, i8 %i.nx, i64 %i.lf, i1 false)
  %i.ny = getelementptr inbounds i8, ptr %i.nv, i64 %i.hw ; 2 uses
  %i.nz = getelementptr inbounds i8, ptr %i.nw, i64 %i.hw ; 2 uses
  %i.oa = load i8, ptr %i.ny, align 1, !tbaa !77
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.nz, i8 %i.oa, i64 %i.lf, i1 false)
  %i.ob = getelementptr inbounds i8, ptr %i.ny, i64 %i.hw ; 2 uses
  %i.oc = getelementptr inbounds i8, ptr %i.nz, i64 %i.hw ; 2 uses
  %i.od = load i8, ptr %i.ob, align 1, !tbaa !77
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.oc, i8 %i.od, i64 %i.lf, i1 false)
  %i.oe = getelementptr inbounds i8, ptr %i.ob, i64 %i.hw ; 2 uses
  %i.of = getelementptr inbounds i8, ptr %i.oc, i64 %i.hw ; 2 uses
  %i.og = load i8, ptr %i.oe, align 1, !tbaa !77
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.of, i8 %i.og, i64 %i.lf, i1 false)
  %i.oh = getelementptr inbounds i8, ptr %i.oe, i64 %i.hw ; 2 uses
  %i.oi = getelementptr inbounds i8, ptr %i.of, i64 %i.hw ; 2 uses
  %i.oj = load i8, ptr %i.oh, align 1, !tbaa !77
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.oi, i8 %i.oj, i64 %i.lf, i1 false)
  %i.ok = getelementptr inbounds i8, ptr %i.oh, i64 %i.hw ; 2 uses
  %i.ol = getelementptr inbounds i8, ptr %i.oi, i64 %i.hw ; 2 uses
  %niter266.next.7 = add i32 %niter266, 8         ; 2 uses
  %niter266.ncmp.7 = icmp eq i32 %niter266.next.7, %unroll_iter265
  br i1 %niter266.ncmp.7, label %alf_fill_border_v.exit.i.loopexit250.unr-lcssa, label %.lr.ph.i.i.i, !llvm.loop !215

bb.au:                                            ; preds = %bb.at
  %i.om = zext nneg i8 %i.jr to i64
  %i.on = ashr i64 %i.hw, %i.om                   ; 4 uses
  %i.oo = icmp sgt i32 %i.ni, 0
  br i1 %i.oo, label %.preheader34.i.i.i.preheader, label %alf_fill_border_v.exit.i

.preheader34.i.i.i.preheader:                     ; preds = %bb.au
  %i.op = add i32 %i.ji, -1
  %xtraiter255 = and i32 %i.ji, 1                 ; 2 uses
  %i.oq = sub nsw i32 0, %i.nh
  %i.or = icmp eq i32 %i.op, %i.oq
  br i1 %i.or, label %.preheader34.i.i.i.epil.preheader, label %.preheader34.i.i.i.preheader.new

.preheader34.i.i.i.preheader.new:                 ; preds = %.preheader34.i.i.i.preheader
  %unroll_iter259 = sub nsw i32 %i.ni, %xtraiter255
  br label %.preheader34.i.i.i

.preheader34.i.i.i:                               ; preds = %bb.aw, %.preheader34.i.i.i.preheader.new
  %.02838.i.i.i = phi ptr [ %i.ne, %.preheader34.i.i.i.preheader.new ], [ %i.oy, %bb.aw ] ; 4 uses
  %.02937.i.i.i = phi ptr [ %i.nf, %.preheader34.i.i.i.preheader.new ], [ %i.ox, %bb.aw ] ; 2 uses
  %niter260 = phi i32 [ 0, %.preheader34.i.i.i.preheader.new ], [ %niter260.next.1, %bb.aw ]
  %.pre.i.i.i = load i16, ptr %.02937.i.i.i, align 2, !tbaa !99 ; 3 uses
  store i16 %.pre.i.i.i, ptr %.02838.i.i.i, align 2, !tbaa !99
  %i.os = getelementptr inbounds nuw i8, ptr %.02838.i.i.i, i64 2
  store i16 %.pre.i.i.i, ptr %i.os, align 2, !tbaa !99
  br i1 %.not128.not.not.not.not.not.not.not.not.not.not.not.not.not.not, label %bb.ax, label %.preheader34.i.i.i.1

.preheader34.i.i.i.1:                             ; preds = %bb.ax, %.preheader34.i.i.i
  %i.ot = getelementptr inbounds [2 x i8], ptr %.02937.i.i.i, i64 %i.on ; 2 uses
  %i.ou = getelementptr inbounds [2 x i8], ptr %.02838.i.i.i, i64 %i.on ; 4 uses
  %.pre.i.i.i.1 = load i16, ptr %i.ot, align 2, !tbaa !99 ; 3 uses
  store i16 %.pre.i.i.i.1, ptr %i.ou, align 2, !tbaa !99
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 2
  store i16 %.pre.i.i.i.1, ptr %i.ov, align 2, !tbaa !99
  br i1 %.not128.not.not.not.not.not.not.not.not.not.not.not.not.not.not, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %.preheader34.i.i.i.1
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ou, i64 4
  store i16 %.pre.i.i.i.1, ptr %i.ow, align 2, !tbaa !99
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %.preheader34.i.i.i.1
  %i.ox = getelementptr inbounds [2 x i8], ptr %i.ot, i64 %i.on ; 2 uses
  %i.oy = getelementptr inbounds [2 x i8], ptr %i.ou, i64 %i.on ; 2 uses
  %niter260.next.1 = add i32 %niter260, 2         ; 2 uses
  %niter260.ncmp.1 = icmp eq i32 %niter260.next.1, %unroll_iter259
  br i1 %niter260.ncmp.1, label %alf_fill_border_v.exit.i.loopexit251.unr-lcssa, label %.preheader34.i.i.i, !llvm.loop !216

bb.ax:                                            ; preds = %.preheader34.i.i.i
  %i.oz = getelementptr inbounds nuw i8, ptr %.02838.i.i.i, i64 4
  store i16 %.pre.i.i.i, ptr %i.oz, align 2, !tbaa !99
  br label %.preheader34.i.i.i.1

bb.ay:                                            ; preds = %alf_fill_border_h.exit113.i
  %i.pa = zext i1 %.not.i.i137 to i32
  %i.pb = zext i1 %.not.i105.i to i32
  %i.pc = add nuw nsw i32 %i.pb, %i.pa
  %i.pd = mul nuw nsw i32 %i.pc, %i.km            ; 2 uses
  %i.pe = add nsw i32 %i.pd, %i.ji                ; 3 uses
  %i.pf = icmp sgt i32 %i.pe, 0
  br i1 %i.pf, label %.lr.ph.i50.preheader.i.i, label %alf_copy_border.exit.i.i

.lr.ph.i50.preheader.i.i:                         ; preds = %bb.ay
  %i.pg = mul nsw i64 %i.nb, %i.lf
  %i.ph = sext i32 %i.ll to i64                   ; 2 uses
  %i.pi = mul nsw i64 %i.pg, %i.ph
  %i.pj = getelementptr inbounds i8, ptr %i.na, i64 %i.pi ; 2 uses
  %i.pk = mul nsw i64 %i.lg, %i.ph
  %i.pl = getelementptr inbounds i8, ptr %i.ne, i64 %i.pk ; 2 uses
  %i.pm = add i32 %i.ji, -1
  %i.pn = add i32 %i.pm, %i.pd
  %xtraiter267 = and i32 %i.pe, 3                 ; 3 uses
  %i.po = icmp ult i32 %i.pn, 3
  br i1 %i.po, label %.lr.ph.i50.i.i.epil.preheader, label %.lr.ph.i50.preheader.i.i.new

.lr.ph.i50.preheader.i.i.new:                     ; preds = %.lr.ph.i50.preheader.i.i
  %unroll_iter271 = and i32 %i.pe, 2147483644
  br label %.lr.ph.i50.i.i

.lr.ph.i50.i.i:                                   ; preds = %.lr.ph.i50.i.i, %.lr.ph.i50.preheader.i.i.new
  %.01114.i.i119.i = phi ptr [ %i.pl, %.lr.ph.i50.preheader.i.i.new ], [ %i.pv, %.lr.ph.i50.i.i ] ; 2 uses
  %.01213.i.i120.i = phi ptr [ %i.pj, %.lr.ph.i50.preheader.i.i.new ], [ %i.pw, %.lr.ph.i50.i.i ] ; 2 uses
  %niter272 = phi i32 [ 0, %.lr.ph.i50.preheader.i.i.new ], [ %niter272.next.3, %.lr.ph.i50.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.01114.i.i119.i, ptr align 1 %.01213.i.i120.i, i64 %i.nb, i1 false)
  %i.pp = getelementptr inbounds i8, ptr %.01114.i.i119.i, i64 %i.hw ; 2 uses
  %i.pq = getelementptr inbounds i8, ptr %.01213.i.i120.i, i64 %i.nb ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.pp, ptr align 1 %i.pq, i64 %i.nb, i1 false)
  %i.pr = getelementptr inbounds i8, ptr %i.pp, i64 %i.hw ; 2 uses
  %i.ps = getelementptr inbounds i8, ptr %i.pq, i64 %i.nb ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.pr, ptr align 1 %i.ps, i64 %i.nb, i1 false)
  %i.pt = getelementptr inbounds i8, ptr %i.pr, i64 %i.hw ; 2 uses
  %i.pu = getelementptr inbounds i8, ptr %i.ps, i64 %i.nb ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.pt, ptr align 1 %i.pu, i64 %i.nb, i1 false)
  %i.pv = getelementptr inbounds i8, ptr %i.pt, i64 %i.hw ; 2 uses
  %i.pw = getelementptr inbounds i8, ptr %i.pu, i64 %i.nb ; 2 uses
  %niter272.next.3 = add i32 %niter272, 4         ; 2 uses
  %niter272.ncmp.3 = icmp eq i32 %niter272.next.3, %unroll_iter271
  br i1 %niter272.ncmp.3, label %alf_copy_border.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i50.i.i, !llvm.loop !203

alf_copy_border.exit.i.i.loopexit.unr-lcssa:      ; preds = %.lr.ph.i50.i.i
  %lcmp.mod269.not = icmp eq i32 %xtraiter267, 0
  br i1 %lcmp.mod269.not, label %alf_copy_border.exit.i.i, label %.lr.ph.i50.i.i.epil.preheader

.lr.ph.i50.i.i.epil.preheader:                    ; preds = %alf_copy_border.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i50.preheader.i.i
  %.01114.i.i119.i.epil.init = phi ptr [ %i.pl, %.lr.ph.i50.preheader.i.i ], [ %i.pv, %alf_copy_border.exit.i.i.loopexit.unr-lcssa ]
  %.01213.i.i120.i.epil.init = phi ptr [ %i.pj, %.lr.ph.i50.preheader.i.i ], [ %i.pw, %alf_copy_border.exit.i.i.loopexit.unr-lcssa ]
  %lcmp.mod270 = icmp ne i32 %xtraiter267, 0
  call void @llvm.assume(i1 %lcmp.mod270)
  br label %.lr.ph.i50.i.i.epil

.lr.ph.i50.i.i.epil:                              ; preds = %.lr.ph.i50.i.i.epil, %.lr.ph.i50.i.i.epil.preheader
  %.01114.i.i119.i.epil = phi ptr [ %i.px, %.lr.ph.i50.i.i.epil ], [ %.01114.i.i119.i.epil.init, %.lr.ph.i50.i.i.epil.preheader ] ; 2 uses
  %.01213.i.i120.i.epil = phi ptr [ %i.py, %.lr.ph.i50.i.i.epil ], [ %.01213.i.i120.i.epil.init, %.lr.ph.i50.i.i.epil.preheader ] ; 2 uses
  %epil.iter268 = phi i32 [ %epil.iter268.next, %.lr.ph.i50.i.i.epil ], [ 0, %.lr.ph.i50.i.i.epil.preheader ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.01114.i.i119.i.epil, ptr align 1 %.01213.i.i120.i.epil, i64 %i.nb, i1 false)
  %i.px = getelementptr inbounds i8, ptr %.01114.i.i119.i.epil, i64 %i.hw
  %i.py = getelementptr inbounds i8, ptr %.01213.i.i120.i.epil, i64 %i.nb
  %epil.iter268.next = add i32 %epil.iter268, 1   ; 2 uses
  %epil.iter268.cmp.not = icmp eq i32 %epil.iter268.next, %xtraiter267
  br i1 %epil.iter268.cmp.not, label %alf_copy_border.exit.i.i, label %.lr.ph.i50.i.i.epil, !llvm.loop !217

alf_copy_border.exit.i.i:                         ; preds = %alf_copy_border.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i50.i.i.epil, %bb.ay
  br i1 %.not.i.i137, label %alf_extend_horz.exit.i.i, label %.preheader162.i

.preheader162.i:                                  ; preds = %alf_copy_border.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ne, ptr nonnull readonly align 1 %i.nd, i64 %i.nb, i1 false)
  %i.pz = getelementptr inbounds i8, ptr %i.ne, i64 %i.hw ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.pz, ptr nonnull readonly align 1 %i.nd, i64 %i.nb, i1 false)
  br i1 %.not128.not.not.not.not.not.not.not.not.not.not.not.not.not.not, label %.preheader162.i.2, label %alf_extend_horz.exit.i.i

.preheader162.i.2:                                ; preds = %.preheader162.i
  %i.qa = getelementptr inbounds i8, ptr %i.pz, i64 %i.hw
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.qa, ptr nonnull readonly align 1 %i.nd, i64 %i.nb, i1 false)
  br label %alf_extend_horz.exit.i.i

alf_extend_horz.exit.i.i:                         ; preds = %.preheader162.i, %.preheader162.i.2, %alf_copy_border.exit.i.i
end_hunk_0
begin_hunk_1_@ff_vvc_alf_filter:bb.a
  %i.sy = icmp sgt i32 %i.sx, 0
  br i1 %i.sy, label %.lr.ph.i50.preheader.i151.i, label %alf_copy_border.exit.i141.i

.lr.ph.i50.preheader.i151.i:                      ; preds = %bb.bh
  %i.sz = mul nsw i64 %i.nb, %i.lf
  %i.ta = sext i32 %i.ll to i64                   ; 2 uses
  %i.tb = mul nsw i64 %i.sz, %i.ta
  %i.tc = getelementptr inbounds i8, ptr %i.qs, i64 %i.tb ; 2 uses
  %i.td = mul nsw i64 %i.lg, %i.ta
  %i.te = getelementptr inbounds i8, ptr %i.qu, i64 %i.td ; 2 uses
  %i.tf = add i32 %i.ji, -1
  %i.tg = add i32 %i.tf, %i.sw
  %xtraiter285 = and i32 %i.sx, 3                 ; 3 uses
  %i.th = icmp ult i32 %i.tg, 3
  br i1 %i.th, label %.lr.ph.i50.i152.i.epil.preheader, label %.lr.ph.i50.preheader.i151.i.new

.lr.ph.i50.preheader.i151.i.new:                  ; preds = %.lr.ph.i50.preheader.i151.i
  %unroll_iter289 = and i32 %i.sx, 2147483644
  br label %.lr.ph.i50.i152.i

.lr.ph.i50.i152.i:                                ; preds = %.lr.ph.i50.i152.i, %.lr.ph.i50.preheader.i151.i.new
  %.01114.i.i154.i = phi ptr [ %i.te, %.lr.ph.i50.preheader.i151.i.new ], [ %i.to, %.lr.ph.i50.i152.i ] ; 2 uses
  %.01213.i.i155.i = phi ptr [ %i.tc, %.lr.ph.i50.preheader.i151.i.new ], [ %i.tp, %.lr.ph.i50.i152.i ] ; 2 uses
  %niter290 = phi i32 [ 0, %.lr.ph.i50.preheader.i151.i.new ], [ %niter290.next.3, %.lr.ph.i50.i152.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.01114.i.i154.i, ptr align 1 %.01213.i.i155.i, i64 %i.nb, i1 false)
  %i.ti = getelementptr inbounds i8, ptr %.01114.i.i154.i, i64 %i.hw ; 2 uses
  %i.tj = getelementptr inbounds i8, ptr %.01213.i.i155.i, i64 %i.nb ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ti, ptr align 1 %i.tj, i64 %i.nb, i1 false)
  %i.tk = getelementptr inbounds i8, ptr %i.ti, i64 %i.hw ; 2 uses
  %i.tl = getelementptr inbounds i8, ptr %i.tj, i64 %i.nb ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.tk, ptr align 1 %i.tl, i64 %i.nb, i1 false)
  %i.tm = getelementptr inbounds i8, ptr %i.tk, i64 %i.hw ; 2 uses
  %i.tn = getelementptr inbounds i8, ptr %i.tl, i64 %i.nb ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.tm, ptr align 1 %i.tn, i64 %i.nb, i1 false)
  %i.to = getelementptr inbounds i8, ptr %i.tm, i64 %i.hw ; 2 uses
  %i.tp = getelementptr inbounds i8, ptr %i.tn, i64 %i.nb ; 2 uses
  %niter290.next.3 = add i32 %niter290, 4         ; 2 uses
  %niter290.ncmp.3 = icmp eq i32 %niter290.next.3, %unroll_iter289
  br i1 %niter290.ncmp.3, label %alf_copy_border.exit.i141.i.loopexit.unr-lcssa, label %.lr.ph.i50.i152.i, !llvm.loop !203

alf_copy_border.exit.i141.i.loopexit.unr-lcssa:   ; preds = %.lr.ph.i50.i152.i
  %lcmp.mod287.not = icmp eq i32 %xtraiter285, 0
  br i1 %lcmp.mod287.not, label %alf_copy_border.exit.i141.i, label %.lr.ph.i50.i152.i.epil.preheader

.lr.ph.i50.i152.i.epil.preheader:                 ; preds = %alf_copy_border.exit.i141.i.loopexit.unr-lcssa, %.lr.ph.i50.preheader.i151.i
  %.01114.i.i154.i.epil.init = phi ptr [ %i.te, %.lr.ph.i50.preheader.i151.i ], [ %i.to, %alf_copy_border.exit.i141.i.loopexit.unr-lcssa ]
  %.01213.i.i155.i.epil.init = phi ptr [ %i.tc, %.lr.ph.i50.preheader.i151.i ], [ %i.tp, %alf_copy_border.exit.i141.i.loopexit.unr-lcssa ]
  %lcmp.mod288 = icmp ne i32 %xtraiter285, 0
  call void @llvm.assume(i1 %lcmp.mod288)
  br label %.lr.ph.i50.i152.i.epil

.lr.ph.i50.i152.i.epil:                           ; preds = %.lr.ph.i50.i152.i.epil, %.lr.ph.i50.i152.i.epil.preheader
  %.01114.i.i154.i.epil = phi ptr [ %i.tq, %.lr.ph.i50.i152.i.epil ], [ %.01114.i.i154.i.epil.init, %.lr.ph.i50.i152.i.epil.preheader ] ; 2 uses
  %.01213.i.i155.i.epil = phi ptr [ %i.tr, %.lr.ph.i50.i152.i.epil ], [ %.01213.i.i155.i.epil.init, %.lr.ph.i50.i152.i.epil.preheader ] ; 2 uses
  %epil.iter286 = phi i32 [ %epil.iter286.next, %.lr.ph.i50.i152.i.epil ], [ 0, %.lr.ph.i50.i152.i.epil.preheader ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.01114.i.i154.i.epil, ptr align 1 %.01213.i.i155.i.epil, i64 %i.nb, i1 false)
  %i.tq = getelementptr inbounds i8, ptr %.01114.i.i154.i.epil, i64 %i.hw
  %i.tr = getelementptr inbounds i8, ptr %.01213.i.i155.i.epil, i64 %i.nb
  %epil.iter286.next = add i32 %epil.iter286, 1   ; 2 uses
  %epil.iter286.cmp.not = icmp eq i32 %epil.iter286.next, %xtraiter285
  br i1 %epil.iter286.cmp.not, label %alf_copy_border.exit.i141.i, label %.lr.ph.i50.i152.i.epil, !llvm.loop !219

alf_copy_border.exit.i141.i:                      ; preds = %alf_copy_border.exit.i141.i.loopexit.unr-lcssa, %.lr.ph.i50.i152.i.epil, %bb.bh
  br i1 %.not.i.i137, label %alf_extend_horz.exit.i146.i, label %.preheader.i138

.preheader.i138:                                  ; preds = %alf_copy_border.exit.i141.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.qu, ptr nonnull readonly align 1 %i.qt, i64 %i.nb, i1 false)
  %i.ts = getelementptr inbounds i8, ptr %i.qu, i64 %i.hw ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ts, ptr nonnull readonly align 1 %i.qt, i64 %i.nb, i1 false)
  br i1 %.not128.not.not.not.not.not.not.not.not.not.not.not.not.not.not, label %.preheader.i138.2, label %alf_extend_horz.exit.i146.i

.preheader.i138.2:                                ; preds = %.preheader.i138
  %i.tt = getelementptr inbounds i8, ptr %i.ts, i64 %i.hw
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.tt, ptr nonnull readonly align 1 %i.qt, i64 %i.nb, i1 false)
  br label %alf_extend_horz.exit.i146.i

alf_extend_horz.exit.i146.i:                      ; preds = %.preheader.i138, %.preheader.i138.2, %alf_copy_border.exit.i141.i
  br i1 %.not.i105.i, label %alf_prepare_buffer.exit, label %bb.bi

bb.bi:                                            ; preds = %alf_extend_horz.exit.i146.i
  %i.tu = add nsw i32 %i.ji, %i.km
  %i.tv = sext i32 %i.tu to i64
  %i.tw = mul nsw i64 %i.tv, %i.hw
  %i.tx = getelementptr inbounds i8, ptr %i.qu, i64 %i.tw ; 3 uses
  %i.ty = getelementptr inbounds i8, ptr %i.tx, i64 %i.ic ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.tx, ptr readonly align 1 %i.ty, i64 %i.nb, i1 false)
  %i.tz = getelementptr inbounds i8, ptr %i.tx, i64 %i.hw ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.tz, ptr readonly align 1 %i.ty, i64 %i.nb, i1 false)
  br i1 %.not128.not.not.not.not.not.not.not.not.not.not.not.not.not.not, label %bb.bj, label %alf_prepare_buffer.exit

bb.bj:                                            ; preds = %bb.bi
  %i.ua = getelementptr inbounds i8, ptr %i.tz, i64 %i.hw
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ua, ptr readonly align 1 %i.ty, i64 %i.nb, i1 false)
  br label %alf_prepare_buffer.exit

alf_prepare_buffer.exit.loopexit248.unr-lcssa:    ; preds = %.lr.ph.i.i134.i
  %lcmp.mod281.not = icmp eq i32 %xtraiter279, 0
  br i1 %lcmp.mod281.not, label %alf_prepare_buffer.exit, label %.lr.ph.i.i134.i.epil.preheader

.lr.ph.i.i134.i.epil.preheader:                   ; preds = %alf_prepare_buffer.exit.loopexit248.unr-lcssa, %.lr.ph.i.i134.i.preheader
  %.03141.i.i136.i.epil.init = phi ptr [ %i.qu, %.lr.ph.i.i134.i.preheader ], [ %i.se, %alf_prepare_buffer.exit.loopexit248.unr-lcssa ]
  %.03240.i.i137.i.epil.init = phi ptr [ %i.qy, %.lr.ph.i.i134.i.preheader ], [ %i.sd, %alf_prepare_buffer.exit.loopexit248.unr-lcssa ]
  %lcmp.mod282 = icmp ne i32 %xtraiter279, 0
  call void @llvm.assume(i1 %lcmp.mod282)
  br label %.lr.ph.i.i134.i.epil

.lr.ph.i.i134.i.epil:                             ; preds = %.lr.ph.i.i134.i.epil, %.lr.ph.i.i134.i.epil.preheader
  %.03141.i.i136.i.epil = phi ptr [ %i.ud, %.lr.ph.i.i134.i.epil ], [ %.03141.i.i136.i.epil.init, %.lr.ph.i.i134.i.epil.preheader ] ; 2 uses
  %.03240.i.i137.i.epil = phi ptr [ %i.uc, %.lr.ph.i.i134.i.epil ], [ %.03240.i.i137.i.epil.init, %.lr.ph.i.i134.i.epil.preheader ] ; 2 uses
  %epil.iter280 = phi i32 [ %epil.iter280.next, %.lr.ph.i.i134.i.epil ], [ 0, %.lr.ph.i.i134.i.epil.preheader ]
  %i.ub = load i8, ptr %.03240.i.i137.i.epil, align 1, !tbaa !77
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.03141.i.i136.i.epil, i8 %i.ub, i64 %i.lf, i1 false)
  %i.uc = getelementptr inbounds i8, ptr %.03240.i.i137.i.epil, i64 %i.hw
  %i.ud = getelementptr inbounds i8, ptr %.03141.i.i136.i.epil, i64 %i.hw
  %epil.iter280.next = add i32 %epil.iter280, 1   ; 2 uses
  %epil.iter280.cmp.not = icmp eq i32 %epil.iter280.next, %xtraiter279
  br i1 %epil.iter280.cmp.not, label %alf_prepare_buffer.exit, label %.lr.ph.i.i134.i.epil, !llvm.loop !220

alf_prepare_buffer.exit.loopexit249.unr-lcssa:    ; preds = %bb.bf
  %lcmp.mod275.not = icmp eq i32 %xtraiter273, 0
  br i1 %lcmp.mod275.not, label %alf_prepare_buffer.exit, label %.preheader34.i.i124.i.epil.preheader

.preheader34.i.i124.i.epil.preheader:             ; preds = %alf_prepare_buffer.exit.loopexit249.unr-lcssa, %.preheader34.i.i124.i.preheader
  %.02838.i.i126.i.epil.init = phi ptr [ %i.qu, %.preheader34.i.i124.i.preheader ], [ %i.sr, %alf_prepare_buffer.exit.loopexit249.unr-lcssa ] ; 3 uses
  %.02937.i.i127.i.epil.init = phi ptr [ %i.qy, %.preheader34.i.i124.i.preheader ], [ %i.sq, %alf_prepare_buffer.exit.loopexit249.unr-lcssa ]
  %lcmp.mod276 = trunc i32 %i.ji to i1
  call void @llvm.assume(i1 %lcmp.mod276)
  %.pre.i.i128.i.epil = load i16, ptr %.02937.i.i127.i.epil.init, align 2, !tbaa !99 ; 3 uses
  store i16 %.pre.i.i128.i.epil, ptr %.02838.i.i126.i.epil.init, align 2, !tbaa !99
  %i.ue = getelementptr inbounds nuw i8, ptr %.02838.i.i126.i.epil.init, i64 2
  store i16 %.pre.i.i128.i.epil, ptr %i.ue, align 2, !tbaa !99
  br i1 %.not128.not.not.not.not.not.not.not.not.not.not.not.not.not.not, label %bb.bk, label %alf_prepare_buffer.exit

bb.bk:                                            ; preds = %.preheader34.i.i124.i.epil.preheader
  %i.uf = getelementptr inbounds nuw i8, ptr %.02838.i.i126.i.epil.init, i64 4
  store i16 %.pre.i.i128.i.epil, ptr %i.uf, align 2, !tbaa !99
  br label %alf_prepare_buffer.exit

alf_prepare_buffer.exit:                          ; preds = %alf_prepare_buffer.exit.loopexit249.unr-lcssa, %bb.bk, %.preheader34.i.i124.i.epil.preheader, %alf_prepare_buffer.exit.loopexit248.unr-lcssa, %.lr.ph.i.i134.i.epil, %bb.bi, %bb.bj, %alf_extend_horz.exit.i146.i, %bb.bd, %.preheader.i.i133.i
  %.pr = load i8, ptr %i.jx, align 1, !tbaa !77
  %.not129 = icmp eq i8 %.pr, 0
  br i1 %.not129, label %alf_prepare_buffer.exit.thread, label %bb.bl

bb.bl:                                            ; preds = %alf_prepare_buffer.exit
  %.pre210 = load ptr, ptr %i.f, align 8, !tbaa !9 ; 7 uses
  %.pre212 = load ptr, ptr %i.by, align 16, !tbaa !114 ; 2 uses
  br i1 %.not128.not.not.not.not.not.not.not.not.not.not.not.not.not.not, label %.thread, label %.thread172

.thread:                                          ; preds = %bb.bl
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre212, i64 8
  %.pre213 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !115
  %.val = load i8, ptr %i.im, align 1, !tbaa !221 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(300) %i.b, i8 0, i64 300, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  %i.ug = icmp ult i8 %.val, 16
  %i.uh = zext i8 %.val to i64                    ; 2 uses
  br i1 %i.ug, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %.thread
  %i.ui = getelementptr inbounds nuw [25 x i8], ptr @ff_vvc_alf_class_to_filt_map, i64 %i.uh
  br label %alf_filter_luma.exit

bb.bn:                                            ; preds = %.thread
  %i.uj = getelementptr inbounds nuw i8, ptr %.pre213, i64 1349
  %i.uk = add nuw nsw i64 %i.uh, 4294967280
  %i.ul = and i64 %i.uk, 4294967295
  %i.um = getelementptr inbounds nuw i8, ptr %i.uj, i64 %i.ul
  %i.un = load i8, ptr %i.um, align 1, !tbaa !77
  %i.uo = getelementptr inbounds nuw i8, ptr %.pre210, i64 2544
  %i.up = zext i8 %i.un to i64
  %i.uq = getelementptr inbounds nuw [8 x i8], ptr %i.uo, i64 %i.up
  %i.ur = load ptr, ptr %i.uq, align 8, !tbaa !223 ; 2 uses
  %i.us = getelementptr inbounds nuw i8, ptr %i.ur, i64 8
  %i.ut = getelementptr inbounds nuw i8, ptr %i.ur, i64 608
  br label %alf_filter_luma.exit

alf_filter_luma.exit:                             ; preds = %bb.bm, %bb.bn
  %.026.i.i = phi ptr [ @ff_vvc_alf_fix_filt_coeff, %bb.bm ], [ %i.us, %bb.bn ]
  %.025.i.i = phi ptr [ %i.b, %bb.bm ], [ %i.ut, %bb.bn ]
  %.0.i.i = phi ptr [ %i.ui, %bb.bm ], [ @ff_vvc_alf_aps_class_to_filt_map, %bb.bn ]
  %i.uu = sub i32 %i.ij, %i.jg                    ; 2 uses
  %i.uv = mul nsw i32 %i.ji, %i.jh
  %i.uw = sdiv i32 %i.uv, 16
  %i.ux = getelementptr inbounds nuw i8, ptr %.pre210, i64 21720
  %i.uy = load ptr, ptr %i.ux, align 8, !tbaa !225
  call void %i.uy(ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef %gep, i64 noundef range(i64 -2147483648, 2147483648) %i.hw, i32 noundef %i.jh, i32 noundef %i.ji, i32 noundef %i.uu, ptr noundef nonnull %i.ip) #8, !inline_history !226
  %i.uz = getelementptr inbounds nuw i8, ptr %.pre210, i64 21728
  %i.va = load ptr, ptr %i.uz, align 8, !tbaa !227
  call void %i.va(ptr noundef nonnull %i.io, ptr noundef nonnull %i.in, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, i32 noundef %i.uw, ptr noundef nonnull %.026.i.i, ptr noundef nonnull %.025.i.i, ptr noundef nonnull %.0.i.i) #8, !inline_history !226
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  %i.vb = getelementptr inbounds nuw i8, ptr %.pre210, i64 21696
  %i.vc = load ptr, ptr %i.vb, align 8, !tbaa !135
  call void %i.vc(ptr noundef %i.jw, i64 noundef range(i64 -2147483648, 2147483648) %i.kc, ptr noundef %gep, i64 noundef range(i64 -2147483648, 2147483648) %i.hw, i32 noundef %i.jh, i32 noundef %i.ji, ptr noundef nonnull %i.io, ptr noundef nonnull %i.in, i32 noundef %i.uu) #8, !inline_history !228
  br label %alf_filter_cc.exit

.thread172:                                       ; preds = %bb.bl
  %i.vd = ashr i32 %i.iv, %i.je
  %i.ve = add nsw i32 %i.vd, -2
  %i.vf = getelementptr i8, ptr %.pre212, i64 8
  %.val133.val = load ptr, ptr %i.vf, align 8, !tbaa !115
  %i.vg = getelementptr i8, ptr %.val133.val, i64 1359
  %.val133.val.val = load i8, ptr %i.vg, align 1, !tbaa !229
  %i.vh = getelementptr inbounds nuw i8, ptr %.pre210, i64 2544
  %i.vi = zext i8 %.val133.val.val to i64
  %i.vj = getelementptr inbounds nuw [8 x i8], ptr %i.vh, i64 %i.vi
  %i.vk = load ptr, ptr %i.vj, align 8, !tbaa !223 ; 2 uses
  %i.vl = getelementptr i8, ptr %i.jx, i64 3
  %i.vm = load i8, ptr %i.vl, align 1, !tbaa !77
  %i.vn = zext i8 %i.vm to i64                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vk, i64 1006
  %i.vp = getelementptr inbounds nuw [6 x i8], ptr %i.vo, i64 %i.vn ; 6 uses
  %i.vq = getelementptr i8, ptr %.pre210, i64 2064
  %.val.i = load ptr, ptr %i.vq, align 8, !tbaa !20
  %i.vr = getelementptr i8, ptr %.val.i, i64 28
  %.val.val.i = load i8, ptr %i.vr, align 4, !tbaa !230
  %i.vs = zext i8 %.val.val.i to i32              ; 6 uses
  %i.vt = load i8, ptr %i.vp, align 1, !tbaa !77
  %i.vu = zext i8 %i.vt to i64
  %i.vv = getelementptr inbounds nuw [4 x i8], ptr @__const.alf_clip_from_idx.offset, i64 %i.vu
  %i.vw = load i32, ptr %i.vv, align 4, !tbaa !97
  %i.vx = sub nsw i32 %i.vs, %i.vw
  %i.vy = shl nuw i32 1, %i.vx
  %i.vz = trunc i32 %i.vy to i16
  store i16 %i.vz, ptr %i.a, align 2, !tbaa !99
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vp, i64 1
  %i.wb = load i8, ptr %i.wa, align 1, !tbaa !77
  %i.wc = zext i8 %i.wb to i64
  %i.wd = getelementptr inbounds nuw [4 x i8], ptr @__const.alf_clip_from_idx.offset, i64 %i.wc
  %i.we = load i32, ptr %i.wd, align 4, !tbaa !97
  %i.wf = sub nsw i32 %i.vs, %i.we
  %i.wg = shl nuw i32 1, %i.wf
  %i.wh = trunc i32 %i.wg to i16
  store i16 %i.wh, ptr %i.ie, align 2, !tbaa !99
  %i.wi = getelementptr inbounds nuw i8, ptr %i.vp, i64 2
  %i.wj = load i8, ptr %i.wi, align 1, !tbaa !77
  %i.wk = zext i8 %i.wj to i64
  %i.wl = getelementptr inbounds nuw [4 x i8], ptr @__const.alf_clip_from_idx.offset, i64 %i.wk
  %i.wm = load i32, ptr %i.wl, align 4, !tbaa !97
  %i.wn = sub nsw i32 %i.vs, %i.wm
  %i.wo = shl nuw i32 1, %i.wn
  %i.wp = trunc i32 %i.wo to i16
  store i16 %i.wp, ptr %i.if, align 2, !tbaa !99
  %i.wq = getelementptr inbounds nuw i8, ptr %i.vp, i64 3
  %i.wr = load i8, ptr %i.wq, align 1, !tbaa !77
  %i.ws = zext i8 %i.wr to i64
  %i.wt = getelementptr inbounds nuw [4 x i8], ptr @__const.alf_clip_from_idx.offset, i64 %i.ws
  %i.wu = load i32, ptr %i.wt, align 4, !tbaa !97
  %i.wv = sub nsw i32 %i.vs, %i.wu
  %i.ww = shl nuw i32 1, %i.wv
  %i.wx = trunc i32 %i.ww to i16
  store i16 %i.wx, ptr %i.ig, align 2, !tbaa !99
  %i.wy = getelementptr inbounds nuw i8, ptr %i.vp, i64 4
  %i.wz = load i8, ptr %i.wy, align 1, !tbaa !77
  %i.xa = zext i8 %i.wz to i64
  %i.xb = getelementptr inbounds nuw [4 x i8], ptr @__const.alf_clip_from_idx.offset, i64 %i.xa
  %i.xc = load i32, ptr %i.xb, align 4, !tbaa !97
  %i.xd = sub nsw i32 %i.vs, %i.xc
  %i.xe = shl nuw i32 1, %i.xd
  %i.xf = trunc i32 %i.xe to i16
  store i16 %i.xf, ptr %i.ih, align 2, !tbaa !99
  %i.xg = getelementptr inbounds nuw i8, ptr %i.vp, i64 5
  %i.xh = load i8, ptr %i.xg, align 1, !tbaa !77
  %i.xi = zext i8 %i.xh to i64
  %i.xj = getelementptr inbounds nuw [4 x i8], ptr @__const.alf_clip_from_idx.offset, i64 %i.xi
  %i.xk = load i32, ptr %i.xj, align 4, !tbaa !97
  %i.xl = sub nsw i32 %i.vs, %i.xk
  %i.xm = shl nuw i32 1, %i.xl
  %i.xn = trunc i32 %i.xm to i16
  store i16 %i.xn, ptr %i.ii, align 2, !tbaa !99
  %i.xo = getelementptr inbounds nuw i8, ptr %i.vk, i64 910
  %i.xp = getelementptr inbounds nuw [12 x i8], ptr %i.xo, i64 %i.vn
  %i.xq = getelementptr inbounds nuw i8, ptr %.pre210, i64 21704
  %i.xr = load ptr, ptr %i.xq, align 8, !tbaa !135
  call void %i.xr(ptr noundef %i.jw, i64 noundef range(i64 -2147483648, 2147483648) %i.kc, ptr noundef nonnull %gep, i64 noundef range(i64 -2147483648, 2147483648) %i.hw, i32 noundef %i.jh, i32 noundef %i.ji, ptr noundef nonnull %i.xp, ptr noundef nonnull %i.a, i32 noundef range(i32 -2147483648, 2147483646) %i.ve) #8, !inline_history !231
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.bo

alf_prepare_buffer.exit.thread:                   ; preds = %bb.ap, %alf_prepare_buffer.exit
  %.not131 = icmp eq i64 %indvars.iv, 0
  br i1 %.not131, label %alf_filter_cc.exit, label %bb.bo

bb.bo:                                            ; preds = %.thread172, %alf_prepare_buffer.exit.thread
  %i.xs = getelementptr i8, ptr %i.jx, i64 5
  %i.xt = load i8, ptr %i.xs, align 1, !tbaa !77  ; 2 uses
  %.not132 = icmp eq i8 %i.xt, 0
  br i1 %.not132, label %alf_filter_cc.exit, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %.val135 = load ptr, ptr %i.by, align 16, !tbaa !114
  %.val136 = load ptr, ptr %i.f, align 8, !tbaa !9 ; 2 uses
  %i.xu = getelementptr i8, ptr %.val135, i64 8
  %.val135.val = load ptr, ptr %i.xu, align 8, !tbaa !115
  %i.xv = icmp eq i64 %indvars.iv, 1
  %.in.in.v.i = select i1 %i.xv, i64 1361, i64 1363
  %.in.in.i = getelementptr inbounds nuw i8, ptr %.val135.val, i64 %.in.in.v.i
  %.in.i = load i8, ptr %.in.in.i, align 1, !tbaa !77
  %i.xw = getelementptr inbounds nuw i8, ptr %.val136, i64 2544
  %i.xx = zext i8 %.in.i to i64
  %i.xy = getelementptr inbounds nuw [8 x i8], ptr %i.xw, i64 %i.xx
  %i.xz = load ptr, ptr %i.xy, align 8, !tbaa !223 ; 2 uses
  %.not.i141 = icmp eq ptr %i.xz, null
  br i1 %.not.i141, label %alf_filter_cc.exit, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %19 = load i32, ptr %i.ir, align 4, !tbaa !210
  %20 = sub i32 %i.ij, %19
  %i.ya = sext i32 %i.jm to i64
  %i.yb = getelementptr [56 x i8], ptr %i.xz, i64 %indvars.iv
  %i.yc = zext i8 %i.xt to i64
  %i.yd = getelementptr [14 x i8], ptr %i.yb, i64 %i.yc
  %i.ye = getelementptr i8, ptr %i.yd, i64 986
  %i.yf = getelementptr inbounds nuw i8, ptr %.val136, i64 21712
  %i.yg = load ptr, ptr %i.yf, align 8, !tbaa !232
  call void %i.yg(ptr noundef %i.jw, i64 noundef range(i64 -2147483648, 2147483648) %i.ya, ptr noundef nonnull %i.il, i64 noundef range(i64 -2147483648, 2147483648) %i.hw, i32 noundef %i.jh, i32 noundef %i.ji, i32 noundef range(i32 0, 256) %i.ja, i32 noundef range(i32 0, 256) %i.je, ptr noundef %i.ye, i32 noundef range(i32 -2147483648, 2147483644) %20) #8, !inline_history !233
  br label %alf_filter_cc.exit

alf_filter_cc.exit:                               ; preds = %bb.ar, %alf_filter_luma.exit, %bb.bq, %bb.bp, %bb.bo, %alf_prepare_buffer.exit.thread
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.yh = icmp samesign ult i64 %indvars.iv, 2
  %i.yi = select i1 %.not, i1 %i.yh, i1 false
  br i1 %i.yi, label %bb.ao, label %bb.an, !llvm.loop !234
}

; Function Attrs: nounwind uwtable
define void @ff_vvc_lmcs_filter(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !114
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !115
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1364
  %i.f = load i8, ptr %i.e, align 4, !tbaa !235
  %.not = icmp eq i8 %i.f, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !9    ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 2064
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !20   ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = load i16, ptr %i.k, align 8, !tbaa !73
  %i.m = zext i16 %i.l to i32                     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 2072
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !79   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.q = load i16, ptr %i.p, align 8, !tbaa !98
  %i.r = zext i16 %i.q to i32
  %i.s = sub nsw i32 %i.r, %2
  %i.t = tail call i32 @llvm.smin.i32(i32 %i.s, i32 %i.m)
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 30
  %i.v = load i16, ptr %i.u, align 2, !tbaa !80
  %i.w = zext i16 %i.v to i32
  %i.x = sub nsw i32 %i.w, %1
  %. = tail call i32 @llvm.smin.i32(i32 %i.x, i32 %i.m)
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 2048
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !78   ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !83
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 11
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !77
  %i.ad = zext nneg i8 %i.ac to i32
  %i.ae = ashr i32 %2, %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 64
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !97 ; 2 uses
  %i.ah = mul nsw i32 %i.ae, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.aj = load i8, ptr %i.ai, align 8, !tbaa !77
  %i.ak = zext nneg i8 %i.aj to i32
  %i.al = ashr i32 %1, %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  %i.an = load i8, ptr %i.am, align 4, !tbaa !84
  %i.ao = zext nneg i8 %i.an to i32
  %i.ap = shl i32 %i.al, %i.ao
  %i.aq = add nsw i32 %i.ap, %i.ah
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds i8, ptr %i.aa, i64 %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.h, i64 21480
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !236
  %i.av = sext i32 %i.ag to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.h, i64 10802
  tail call void %i.au(ptr noundef %i.as, i64 noundef %i.av, i32 noundef %., i32 noundef %i.t, ptr noundef nonnull %i.aw) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare void @av_image_copy_plane(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare ptr @ff_vvc_get_ref_list(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc range(i32 0, 2) i32 @boundary_strength(ptr nofree readonly captures(none) %.80.val.16696.val, ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i8, ptr %i.a, align 4, !tbaa !237   ; 2 uses
  switch i8 %i.b, label %bb.z [
    i8 8, label %.thread1
    i8 5, label %bb.b
    i8 3, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %1, align 8, !tbaa !238
  %i.d = load i32, ptr %0, align 8, !tbaa !238
  %i.e = add i32 %i.c, -8
  %i.f = sub i32 %i.e, %i.d
  %i.g = icmp ult i32 %i.f, -15
  br i1 %i.g, label %.thread1, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !240
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !240
  %i.l = add i32 %i.i, -8
  %i.m = sub i32 %i.l, %i.k
  %i.n = icmp ult i32 %i.m, -15
  br label %.thread1

bb.d:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.p = load i8, ptr %i.o, align 4, !tbaa !237
  %i.q = icmp eq i8 %i.p, 3
  br i1 %i.q, label %bb.e, label %.thread1

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load i8, ptr %i.r, align 8, !tbaa !77
  %i.t = sext i8 %i.s to i64
  %i.u = getelementptr inbounds [32 x i8], ptr %.80.val.16696.val, i64 %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load i32, ptr %i.v, align 8, !tbaa !241  ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.y = load i8, ptr %i.x, align 8, !tbaa !77
  %i.z = sext i8 %i.y to i64
  %i.aa = getelementptr inbounds [32 x i8], ptr %2, i64 %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !241 ; 2 uses
  %i.ad = icmp eq i32 %i.w, %i.ac
  br i1 %i.ad, label %bb.f, label %._crit_edge23

._crit_edge23:                                    ; preds = %bb.e
  %.phi.trans.insert24 = getelementptr inbounds nuw i8, ptr %1, i64 17
  %.pre25 = load i8, ptr %.phi.trans.insert24, align 1, !tbaa !77
  %.phi.trans.insert26 = sext i8 %.pre25 to i64
  %.phi.trans.insert27 = getelementptr [32 x i8], ptr %2, i64 %.phi.trans.insert26
  %.phi.trans.insert28 = getelementptr i8, ptr %.phi.trans.insert27, i64 944
  %.pre29 = load i32, ptr %.phi.trans.insert28, align 8, !tbaa !241
  br label %bb.t

bb.f:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 17
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !77
  %i.ag = sext i8 %i.af to i64
  %i.ah = getelementptr [32 x i8], ptr %.80.val.16696.val, i64 %i.ag
  %i.ai = getelementptr i8, ptr %i.ah, i64 944
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !241 ; 2 uses
  %i.ak = icmp eq i32 %i.w, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 17
  %i.am = load i8, ptr %i.al, align 1, !tbaa !77
  %i.an = sext i8 %i.am to i64
  %i.ao = getelementptr [32 x i8], ptr %2, i64 %i.an
  %i.ap = getelementptr i8, ptr %i.ao, i64 944
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !241 ; 3 uses
  %i.ar = icmp eq i32 %i.w, %i.aq
  %or.cond = select i1 %i.ak, i1 %i.ar, i1 false
  br i1 %or.cond, label %bb.g, label %._crit_edge

bb.g:                                             ; preds = %bb.f
  %i.as = load i32, ptr %1, align 8, !tbaa !238
  %i.at = load i32, ptr %0, align 8, !tbaa !238   ; 2 uses
  %i.au = add i32 %i.as, -8                       ; 2 uses
  %i.av = sub i32 %i.au, %i.at
  %i.aw = icmp ult i32 %i.av, -15
  br i1 %i.aw, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !240
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !240
  %i.bb = add i32 %i.ay, -8
  %i.bc = sub i32 %i.bb, %i.ba
  %i.bd = icmp ult i32 %i.bc, -15
  br i1 %i.bd, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !238
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !238
  %i.bi = add i32 %i.bf, -8
  %i.bj = sub i32 %i.bi, %i.bh
  %i.bk = icmp ult i32 %i.bj, -15
  br i1 %i.bk, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !240
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !240
  %i.bp = add i32 %i.bm, -8
  %i.bq = sub i32 %i.bp, %i.bo
  %i.br = icmp ult i32 %i.bq, -15
  br i1 %i.br, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.g
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !238
  %reass.sub = sub i32 %i.bt, %i.at
end_hunk_1
