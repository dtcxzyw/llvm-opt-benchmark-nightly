Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/filter?download=true
inline.NumInlined: 77
inline.NumDeleted: 38
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 41
begin_hunk_0_@ff_vvc_alf_copy_ctu_to_hv:bb.a
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !102 ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !88
  %i.as = mul nsw i32 %i.ap, %i.ad
  %i.at = getelementptr inbounds nuw i8, ptr %i.t, i64 20
  %i.au = load i8, ptr %i.at, align 4, !tbaa !89
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
  %i.bn = load ptr, ptr %i.bd, align 8, !tbaa !88
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 %i.bi ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bo, ptr align 1 %i.az, i64 %i.bm, i1 false)
  %i.bp = getelementptr inbounds i8, ptr %i.az, i64 %i.ba ; 2 uses
  %i.bq = getelementptr inbounds i8, ptr %i.bo, i64 %i.bk ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bq, ptr align 1 %i.bp, i64 %i.bm, i1 false)
  br i1 %.not67.not, label %bb.d, label %alf_copy_border.exit.i

.lr.ph.i.preheader.preheader.i:                   ; preds = %alf_copy_border.exit.1.i
  %i.br = load ptr, ptr %i.cn, align 8, !tbaa !88
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
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !88
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
  br i1 %niter.ncmp.3, label %alf_copy_border.exit56.loopexit.i.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !4

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
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !88
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
  br i1 %niter66.ncmp.3, label %alf_copy_ctb_to_hv.exit.loopexit.unr-lcssa, label %.lr.ph.i.1.i, !llvm.loop !4

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
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !24   ; 18 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 2064 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !77   ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 30
  %i.k = load i8, ptr %i.j, align 2, !tbaa !81
  %i.l = zext i8 %i.k to i32                      ; 7 uses
  %i.m = ashr i32 %1, %i.l                        ; 12 uses
  %i.n = ashr i32 %2, %i.l                        ; 10 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 20
  %i.p = load i8, ptr %i.o, align 4, !tbaa !89
  %i.q = zext i8 %i.p to i32                      ; 2 uses
  %i.r = shl i32 1280, %i.q
  %i.s = shl i32 10248, %i.q
  %i.t = load ptr, ptr %i.i, align 8, !tbaa !90   ; 7 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 7
  %i.v = load i8, ptr %i.u, align 1, !tbaa !101
  %.not = icmp ne i8 %i.v, 0                      ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.x = load i16, ptr %i.w, align 8, !tbaa !80
  %i.y = zext i16 %i.x to i32                     ; 8 uses
  %i.z = add nsw i32 %2, %i.y                     ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 21824
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !220
  %i.ac = getelementptr inbounds nuw i8, ptr %i.g, i64 2072 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !84 ; 7 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 4038
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !107
  %i.ag = zext i16 %i.af to i32                   ; 3 uses
  %i.ah = mul nsw i32 %i.n, %i.ag                 ; 2 uses
  %i.ai = add nsw i32 %i.ah, %i.m
  %i.aj = sext i32 %i.ai to i64                   ; 3 uses
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.aj ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  %i.al = getelementptr inbounds nuw i8, ptr %i.g, i64 2114 ; 3 uses
  %i.am = shl i32 %i.n, %i.l                      ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.t, i64 38772
  %i.ao = load i8, ptr %i.an, align 4, !tbaa !109
  %.not29.i.i = icmp eq i8 %i.ao, 0               ; 2 uses
  br i1 %.not29.i.i, label %get_virtual_boundary.exit.thread.i, label %.preheader.i.i

get_virtual_boundary.exit.thread.i:               ; preds = %bb.a
  %i.ap = shl i32 %i.m, %i.l
  br label %get_virtual_boundary.exit70.i

.preheader.i.i:                                   ; preds = %bb.a
  %.in.in.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 2112
  %.in.i.i = load i8, ptr %.in.in.i.i, align 8, !tbaa !82 ; 2 uses
  %.not3036.not.i.i = icmp eq i8 %.in.i.i, 0
  br i1 %.not3036.not.i.i, label %.preheader.i59.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %.preheader.i.i
  %wide.trip.count.i.i = zext i8 %.in.i.i to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.b ] ; 2 uses
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %i.al, i64 %indvars.iv.i.i
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !104
  %i.as = zext i16 %i.ar to i32                   ; 2 uses
  %i.at = sub nsw i32 %i.as, %i.am                ; 2 uses
  %i.au = icmp sgt i32 %i.at, -1
  %i.av = icmp samesign ult i32 %i.at, %i.y
  %or.cond.i = select i1 %i.au, i1 %i.av, i1 false
  br i1 %or.cond.i, label %.preheader.i59.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %.preheader.i59.i, label %.lr.ph.i.i, !llvm.loop !2

.preheader.i59.i:                                 ; preds = %bb.b, %.lr.ph.i.i, %.preheader.i.i
  %.3.i97.i = phi i32 [ 0, %.preheader.i.i ], [ %i.as, %.lr.ph.i.i ], [ 0, %bb.b ] ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.g, i64 2106
  %i.ax = shl i32 %i.m, %i.l                      ; 4 uses
  %.in.in.i60.i = getelementptr inbounds nuw i8, ptr %i.g, i64 2104
  %.in.i61.i = load i8, ptr %.in.in.i60.i, align 8, !tbaa !82 ; 2 uses
  %.not3036.not.i62.i = icmp eq i8 %.in.i61.i, 0
  br i1 %.not3036.not.i62.i, label %get_virtual_boundary.exit70.i, label %.lr.ph.preheader.i63.i

.lr.ph.preheader.i63.i:                           ; preds = %.preheader.i59.i
  %wide.trip.count.i64.i = zext i8 %.in.i61.i to i64
  br label %.lr.ph.i65.i

.lr.ph.i65.i:                                     ; preds = %bb.c, %.lr.ph.preheader.i63.i
  %indvars.iv.i66.i = phi i64 [ 0, %.lr.ph.preheader.i63.i ], [ %indvars.iv.next.i67.i, %bb.c ] ; 2 uses
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %i.aw, i64 %indvars.iv.i66.i
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !104
  %i.ba = zext i16 %i.az to i32                   ; 2 uses
  %i.bb = sub nsw i32 %i.ba, %i.ax                ; 2 uses
  %i.bc = icmp sgt i32 %i.bb, -1
  %i.bd = icmp samesign ult i32 %i.bb, %i.y
  %or.cond98.i = select i1 %i.bc, i1 %i.bd, i1 false
  br i1 %or.cond98.i, label %get_virtual_boundary.exit70.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i65.i
  %indvars.iv.next.i67.i = add nuw nsw i64 %indvars.iv.i66.i, 1 ; 2 uses
  %exitcond.not.i68.i = icmp eq i64 %indvars.iv.next.i67.i, %wide.trip.count.i64.i
  br i1 %exitcond.not.i68.i, label %get_virtual_boundary.exit70.i, label %.lr.ph.i65.i, !llvm.loop !2

get_virtual_boundary.exit70.i:                    ; preds = %bb.c, %.lr.ph.i65.i, %.preheader.i59.i, %get_virtual_boundary.exit.thread.i
  %i.be = phi i32 [ %i.ap, %get_virtual_boundary.exit.thread.i ], [ %i.ax, %.preheader.i59.i ], [ %i.ax, %.lr.ph.i65.i ], [ %i.ax, %bb.c ] ; 2 uses
  %.3.i94.i = phi i32 [ 0, %get_virtual_boundary.exit.thread.i ], [ %.3.i97.i, %.preheader.i59.i ], [ %.3.i97.i, %.lr.ph.i65.i ], [ %.3.i97.i, %bb.c ] ; 7 uses
  %.3.i69.i = phi i32 [ 0, %get_virtual_boundary.exit.thread.i ], [ 0, %.preheader.i59.i ], [ 0, %bb.c ], [ %i.ba, %.lr.ph.i65.i ] ; 7 uses
  %i.bf = icmp sgt i32 %.3.i94.i, %2              ; 2 uses
  %.not236.not.not = icmp sgt i32 %.3.i69.i, %1
  %i.bg = add nsw i32 %1, %i.y
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ad, i64 30
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !87
  %i.bj = zext i16 %i.bi to i32
  %..i = tail call i32 @llvm.smin.i32(i32 %i.bg, i32 %i.bj) ; 5 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.bl = load i16, ptr %i.bk, align 8, !tbaa !103
  %i.bm = zext i16 %i.bl to i32
  %i.bn = tail call i32 @llvm.smin.i32(i32 %i.z, i32 %i.bm) ; 6 uses
  %.not.i = icmp eq i32 %i.m, 0                   ; 2 uses
  %i.bo = zext i1 %.not.i to i32
  %.not55.i = icmp eq i32 %i.n, 0                 ; 2 uses
  %i.bp = zext i1 %.not55.i to i32
  %i.bq = add nsw i32 %i.ag, -1
  %i.br = icmp eq i32 %i.m, %i.bq                 ; 2 uses
  %i.bs = zext i1 %i.br to i32
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ad, i64 4040
  %i.bu = load i16, ptr %i.bt, align 8, !tbaa !108
  %i.bv = zext i16 %i.bu to i32
  %i.bw = add nsw i32 %i.bv, -1
  %i.bx = icmp eq i32 %i.n, %i.bw                 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.bz = load ptr, ptr %i.by, align 16, !tbaa !110
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !116
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 18808
  %i.cd = load i16, ptr %i.cc, align 4, !tbaa !121
  %i.ce = load ptr, ptr %i.ad, align 8, !tbaa !122 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 4084
  %i.cg = load i8, ptr %i.cf, align 4, !tbaa !125
  %.not.i.i = icmp eq i8 %i.cg, 0
  br i1 %.not.i.i, label %bb.d, label %bb.l

bb.d:                                             ; preds = %get_virtual_boundary.exit70.i
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !137
  %i.cj = lshr i32 %i.ci, 1
  %.lobit.i.i = and i32 %i.cj, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ck = phi i32 [ 1, %bb.d ], [ %.lobit.i.i, %bb.e ] ; 2 uses
  br i1 %.not55.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !137
  %i.cn = lshr i32 %i.cm, 4
  %.lobit94.i.i = and i32 %i.cn, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.co = phi i32 [ 1, %bb.f ], [ %.lobit94.i.i, %bb.g ] ; 2 uses
  br i1 %i.br, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ad, i64 4080
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !126
  %i.cr = sext i32 %i.m to i64
  %i.cs = getelementptr inbounds [2 x i8], ptr %i.cq, i64 %i.cr ; 2 uses
  %i.ct = load i16, ptr %i.cs, align 2, !tbaa !104
  %i.cu = getelementptr i8, ptr %i.cs, i64 2
  %i.cv = load i16, ptr %i.cu, align 2, !tbaa !104
  %i.cw = icmp ne i16 %i.ct, %i.cv
  %i.cx = zext i1 %i.cw to i32
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.cy = phi i32 [ 1, %bb.h ], [ %i.cx, %bb.i ]  ; 2 uses
  br i1 %i.bx, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ad, i64 4088
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !128
  %i.db = sext i32 %i.n to i64
  %i.dc = getelementptr inbounds [2 x i8], ptr %i.da, i64 %i.db ; 2 uses
  %i.dd = load i16, ptr %i.dc, align 2, !tbaa !104
  %i.de = getelementptr i8, ptr %i.dc, i64 2
  %i.df = load i16, ptr %i.de, align 2, !tbaa !104
  %i.dg = icmp ne i16 %i.dd, %i.df
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %get_virtual_boundary.exit70.i
  %.sroa.30.0.shrunk.i = phi i1 [ %i.bx, %get_virtual_boundary.exit70.i ], [ true, %bb.j ], [ %i.dg, %bb.k ] ; 2 uses
  %.sroa.21.0.i = phi i32 [ %i.bs, %get_virtual_boundary.exit70.i ], [ %i.cy, %bb.j ], [ %i.cy, %bb.k ] ; 2 uses
  %.sroa.12.0.i = phi i32 [ %i.bp, %get_virtual_boundary.exit70.i ], [ %i.co, %bb.j ], [ %i.co, %bb.k ] ; 2 uses
  %.sroa.0.0.i = phi i32 [ %i.bo, %get_virtual_boundary.exit70.i ], [ %i.ck, %bb.j ], [ %i.ck, %bb.k ] ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ce, i64 1992092
  %i.di = load i8, ptr %i.dh, align 4, !tbaa !124
  %.not97.i.i = icmp eq i8 %i.di, 0
  br i1 %.not97.i.i, label %bb.m, label %bb.u

bb.m:                                             ; preds = %bb.l
  %.not98.i.i = icmp eq i32 %.sroa.0.0.i, 0
  br i1 %.not98.i.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !137
  %i.dl = and i32 %i.dk, 1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.dm = phi i32 [ 1, %bb.m ], [ %i.dl, %bb.n ]  ; 2 uses
  %.not99.i.i = icmp eq i32 %.sroa.12.0.i, 0
  br i1 %.not99.i.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !137
  %i.dp = lshr i32 %i.do, 3
  %.lobit100.i.i = and i32 %i.dp, 1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.dq = phi i32 [ 1, %bb.o ], [ %.lobit100.i.i, %bb.p ] ; 2 uses
  %.not101.i.i = icmp eq i32 %.sroa.21.0.i, 0
  br i1 %.not101.i.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.dr = getelementptr inbounds nuw i8, ptr %i.g, i64 21800
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !127 ; 2 uses
  %i.dt = getelementptr inbounds [2 x i8], ptr %i.ds, i64 %i.aj
  %i.du = load i16, ptr %i.dt, align 2, !tbaa !104
  %i.dv = add nsw i32 %i.m, 1
  %i.dw = add nsw i32 %i.dv, %i.ah
  %i.dx = sext i32 %i.dw to i64
  %i.dy = getelementptr inbounds [2 x i8], ptr %i.ds, i64 %i.dx
  %i.dz = load i16, ptr %i.dy, align 2, !tbaa !104
  %i.ea = icmp ne i16 %i.du, %i.dz
  %i.eb = zext i1 %i.ea to i32
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ec = phi i32 [ 1, %bb.q ], [ %i.eb, %bb.r ]  ; 2 uses
  br i1 %.sroa.30.0.shrunk.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ed = getelementptr inbounds nuw i8, ptr %i.g, i64 21800
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !127 ; 2 uses
  %i.ef = getelementptr inbounds [2 x i8], ptr %i.ee, i64 %i.aj
  %i.eg = load i16, ptr %i.ef, align 2, !tbaa !104
  %i.eh = add nsw i32 %i.n, 1
  %i.ei = mul nsw i32 %i.eh, %i.ag
  %i.ej = add nsw i32 %i.ei, %i.m
  %i.ek = sext i32 %i.ej to i64
  %i.el = getelementptr inbounds [2 x i8], ptr %i.ee, i64 %i.ek
  %i.em = load i16, ptr %i.el, align 2, !tbaa !104
  %i.en = icmp ne i16 %i.eg, %i.em
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.l
  %.sroa.30.1.shrunk.i = phi i1 [ %.sroa.30.0.shrunk.i, %bb.l ], [ true, %bb.s ], [ %i.en, %bb.t ] ; 2 uses
  %.sroa.21.1.i = phi i32 [ %.sroa.21.0.i, %bb.l ], [ %i.ec, %bb.s ], [ %i.ec, %bb.t ] ; 2 uses
  %.sroa.12.1.i = phi i32 [ %.sroa.12.0.i, %bb.l ], [ %i.dq, %bb.s ], [ %i.dq, %bb.t ] ; 2 uses
  %.sroa.0.1.i = phi i32 [ %.sroa.0.0.i, %bb.l ], [ %i.dm, %bb.s ], [ %i.dm, %bb.t ] ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.t, i64 10412
  %i.ep = zext i16 %i.cd to i64                   ; 5 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.ep
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !82
  %.not103.i.i = icmp eq i8 %i.er, 0
  br i1 %.not103.i.i, label %bb.v, label %bb.ad

bb.v:                                             ; preds = %bb.u
  %.not104.i.i = icmp eq i32 %.sroa.0.1.i, 0
  br i1 %.not104.i.i, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.et = load i32, ptr %i.es, align 8, !tbaa !137
  %i.eu = lshr i32 %i.et, 2
  %.lobit105.i.i = and i32 %i.eu, 1
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.ev = phi i32 [ 1, %bb.v ], [ %.lobit105.i.i, %bb.w ] ; 2 uses
  %.not106.i.i = icmp eq i32 %.sroa.12.1.i, 0
  br i1 %.not106.i.i, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ex = load i32, ptr %i.ew, align 8, !tbaa !137
  %i.ey = lshr i32 %i.ex, 5
  %.lobit107.i.i = and i32 %i.ey, 1
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.ez = phi i32 [ 1, %bb.x ], [ %.lobit107.i.i, %bb.y ] ; 2 uses
  %.not108.i.i = icmp eq i32 %.sroa.21.1.i, 0
  br i1 %.not108.i.i, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.fa = getelementptr inbounds nuw i8, ptr %i.t, i64 1412
  %i.fb = getelementptr inbounds nuw [2 x i8], ptr %i.fa, i64 %i.ep
  %i.fc = load i16, ptr %i.fb, align 2, !tbaa !104
  %i.fd = zext i16 %i.fc to i32
  %i.fe = getelementptr inbounds nuw i8, ptr %i.t, i64 5412
  %i.ff = getelementptr inbounds nuw [2 x i8], ptr %i.fe, i64 %i.ep
  %i.fg = load i16, ptr %i.ff, align 2, !tbaa !104
  %i.fh = zext i16 %i.fg to i32
  %i.fi = add nuw nsw i32 %i.fh, %i.fd
  %i.fj = icmp eq i32 %i.fi, %i.m
  %i.fk = zext i1 %i.fj to i32
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.fl = phi i32 [ 1, %bb.z ], [ %i.fk, %bb.aa ] ; 2 uses
  br i1 %.sroa.30.1.shrunk.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fm = getelementptr inbounds nuw i8, ptr %i.t, i64 3412
  %i.fn = getelementptr inbounds nuw [2 x i8], ptr %i.fm, i64 %i.ep
  %i.fo = load i16, ptr %i.fn, align 2, !tbaa !104
  %i.fp = zext i16 %i.fo to i32
  %i.fq = getelementptr inbounds nuw i8, ptr %i.t, i64 7412
  %i.fr = getelementptr inbounds nuw [2 x i8], ptr %i.fq, i64 %i.ep
  %i.fs = load i16, ptr %i.fr, align 2, !tbaa !104
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
  %.in.i.i.i.i = load i8, ptr %.in.in.i.i.i.i, align 8, !tbaa !82 ; 2 uses
  %.not3036.not.i.i.i.i = icmp eq i8 %.in.i.i.i.i, 0
  br i1 %.not3036.not.i.i.i.i, label %is_virtual_boundary.exit.i.i, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %.preheader.i.i.i.i
  %wide.trip.count.i.i.i.i = zext i8 %.in.i.i.i.i to i64
  %i.fw = getelementptr inbounds nuw i8, ptr %i.g, i64 2106
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.af, %.lr.ph.preheader.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i.i ], [ %indvars.iv.next.i.i.i.i, %bb.af ] ; 2 uses
  %i.fx = getelementptr inbounds nuw [2 x i8], ptr %i.fw, i64 %indvars.iv.i.i.i.i
  %i.fy = load i16, ptr %i.fx, align 2, !tbaa !104
  %i.fz = zext i16 %i.fy to i32                   ; 2 uses
  %i.ga = sub nsw i32 %i.fz, %i.be                ; 2 uses
  %i.gb = icmp sgt i32 %i.ga, -1
  %i.gc = icmp samesign ult i32 %i.ga, %i.y
  %or.cond99.i = select i1 %i.gb, i1 %i.gc, i1 false
  br i1 %or.cond99.i, label %is_virtual_boundary.exit.i.i, label %bb.af

bb.af:                                            ; preds = %.lr.ph.i.i.i.i
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, %wide.trip.count.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %is_virtual_boundary.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !2

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
  %.in.i.i118.i.i = load i8, ptr %.in.in.i.i117.i.i, align 8, !tbaa !82 ; 2 uses
  %.not3036.not.i.i119.i.i = icmp eq i8 %.in.i.i118.i.i, 0
  br i1 %.not3036.not.i.i119.i.i, label %is_virtual_boundary.exit127.i.i, label %.lr.ph.preheader.i.i120.i.i

.lr.ph.preheader.i.i120.i.i:                      ; preds = %.preheader.i.i116.i.i
  %wide.trip.count.i.i121.i.i = zext i8 %.in.i.i118.i.i to i64
  br label %.lr.ph.i.i122.i.i

.lr.ph.i.i122.i.i:                                ; preds = %bb.ah, %.lr.ph.preheader.i.i120.i.i
  %indvars.iv.i.i123.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i120.i.i ], [ %indvars.iv.next.i.i124.i.i, %bb.ah ] ; 2 uses
  %i.gg = getelementptr inbounds nuw [2 x i8], ptr %i.al, i64 %indvars.iv.i.i123.i.i
  %i.gh = load i16, ptr %i.gg, align 2, !tbaa !104
  %i.gi = zext i16 %i.gh to i32                   ; 2 uses
  %i.gj = sub nsw i32 %i.gi, %i.am                ; 2 uses
  %i.gk = icmp sgt i32 %i.gj, -1
  %i.gl = icmp samesign ult i32 %i.gj, %i.y
  %or.cond100.i = select i1 %i.gk, i1 %i.gl, i1 false
  br i1 %or.cond100.i, label %is_virtual_boundary.exit127.i.i, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph.i.i122.i.i
  %indvars.iv.next.i.i124.i.i = add nuw nsw i64 %indvars.iv.i.i123.i.i, 1 ; 2 uses
  %exitcond.not.i.i125.i.i = icmp eq i64 %indvars.iv.next.i.i124.i.i, %wide.trip.count.i.i121.i.i
  br i1 %exitcond.not.i.i125.i.i, label %is_virtual_boundary.exit127.i.i, label %.lr.ph.i.i122.i.i, !llvm.loop !2

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
  %i.gq = shl i32 %i.gp, %i.l                     ; 2 uses
  %.in.in.i.i130.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 2104
  %.in.i.i131.i.i = load i8, ptr %.in.in.i.i130.i.i, align 8, !tbaa !82 ; 2 uses
  %.not3036.not.i.i132.i.i = icmp eq i8 %.in.i.i131.i.i, 0
  br i1 %.not3036.not.i.i132.i.i, label %is_virtual_boundary.exit140.i.i, label %.lr.ph.preheader.i.i133.i.i

.lr.ph.preheader.i.i133.i.i:                      ; preds = %.preheader.i.i129.i.i
  %wide.trip.count.i.i134.i.i = zext i8 %.in.i.i131.i.i to i64
  %i.gr = getelementptr inbounds nuw i8, ptr %i.g, i64 2106
  br label %.lr.ph.i.i135.i.i

.lr.ph.i.i135.i.i:                                ; preds = %bb.aj, %.lr.ph.preheader.i.i133.i.i
  %indvars.iv.i.i136.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i133.i.i ], [ %indvars.iv.next.i.i137.i.i, %bb.aj ] ; 2 uses
  %i.gs = getelementptr inbounds nuw [2 x i8], ptr %i.gr, i64 %indvars.iv.i.i136.i.i
  %i.gt = load i16, ptr %i.gs, align 2, !tbaa !104
  %i.gu = zext i16 %i.gt to i32                   ; 2 uses
  %i.gv = sub nsw i32 %i.gu, %i.gq                ; 2 uses
  %i.gw = icmp sgt i32 %i.gv, -1
  %i.gx = icmp samesign ult i32 %i.gv, %i.y
  %or.cond101.i = select i1 %i.gw, i1 %i.gx, i1 false
  br i1 %or.cond101.i, label %is_virtual_boundary.exit140.i.i, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph.i.i135.i.i
  %indvars.iv.next.i.i137.i.i = add nuw nsw i64 %indvars.iv.i.i136.i.i, 1 ; 2 uses
  %exitcond.not.i.i138.i.i = icmp eq i64 %indvars.iv.next.i.i137.i.i, %wide.trip.count.i.i134.i.i
  br i1 %exitcond.not.i.i138.i.i, label %is_virtual_boundary.exit140.i.i, label %.lr.ph.i.i135.i.i, !llvm.loop !2

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
  %i.hc = shl i32 %i.hb, %i.l                     ; 2 uses
  %.in.in.i.i143.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 2112
  %.in.i.i144.i.i = load i8, ptr %.in.in.i.i143.i.i, align 8, !tbaa !82 ; 2 uses
  %.not3036.not.i.i145.i.i = icmp eq i8 %.in.i.i144.i.i, 0
  br i1 %.not3036.not.i.i145.i.i, label %is_virtual_boundary.exit153.i.i, label %.lr.ph.preheader.i.i146.i.i

.lr.ph.preheader.i.i146.i.i:                      ; preds = %.preheader.i.i142.i.i
  %wide.trip.count.i.i147.i.i = zext i8 %.in.i.i144.i.i to i64
  br label %.lr.ph.i.i148.i.i

.lr.ph.i.i148.i.i:                                ; preds = %bb.al, %.lr.ph.preheader.i.i146.i.i
  %indvars.iv.i.i149.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i146.i.i ], [ %indvars.iv.next.i.i150.i.i, %bb.al ] ; 2 uses
  %i.hd = getelementptr inbounds nuw [2 x i8], ptr %i.al, i64 %indvars.iv.i.i149.i.i
  %i.he = load i16, ptr %i.hd, align 2, !tbaa !104
  %i.hf = zext i16 %i.he to i32                   ; 2 uses
  %i.hg = sub nsw i32 %i.hf, %i.hc                ; 2 uses
  %i.hh = icmp sgt i32 %i.hg, -1
  %i.hi = icmp samesign ult i32 %i.hg, %i.y
  %or.cond102.i = select i1 %i.hh, i1 %i.hi, i1 false
  br i1 %or.cond102.i, label %is_virtual_boundary.exit153.i.i, label %bb.al

bb.al:                                            ; preds = %.lr.ph.i.i148.i.i
  %indvars.iv.next.i.i150.i.i = add nuw nsw i64 %indvars.iv.i.i149.i.i, 1 ; 2 uses
  %exitcond.not.i.i151.i.i = icmp eq i64 %indvars.iv.next.i.i150.i.i, %wide.trip.count.i.i147.i.i
  br i1 %exitcond.not.i.i151.i.i, label %is_virtual_boundary.exit153.i.i, label %.lr.ph.i.i148.i.i, !llvm.loop !2

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
  store i32 %1, ptr %3, align 16, !tbaa !102
  %.sroa.4.0..sroa_idx.us.us.us.us.i.us.peel = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %2, ptr %.sroa.4.0..sroa_idx.us.us.us.us.i.us.peel, align 4, !tbaa !102
  %.sroa.5.0..sroa_idx.us.us.us.us.i.us.peel = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  br i1 %.not236.not.not, label %alf_get_edges.exit.split.us.i, label %alf_get_edges.exit.split.i

alf_get_edges.exit.split.us.i:                    ; preds = %alf_get_edges.exit.i
  %.sroa.6.0..sroa_idx.us.us.us.us.i.us.peel = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %5 = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
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
  store i32 %.3.i94.i, ptr %.sroa.6.0..sroa_idx.us.us.us.us.i.us.peel, align 4, !tbaa !102
  store i32 1, ptr %.sroa.30.0..sroa_idx.us.us.us.us.i.us.peel, align 4, !tbaa !102
  store i32 %.3.i69.i, ptr %.sroa.5.0..sroa_idx.us.us.us.us.i.us.peel, align 8, !tbaa !102
  store i32 1, ptr %.sroa.21.0..sroa_idx.us.us.us.us.i.us.peel, align 8, !tbaa !102
  store i32 %2, ptr %.sroa.4.0..sroa_idx.us.us.us.us.i.us, align 4, !tbaa !102
  store i32 %..i, ptr %.sroa.5.0..sroa_idx.us.us.us.us.i.us, align 8, !tbaa !102
  %.sroa.12.0..sroa_idx.us.us.us.us.i.us = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  store i32 %.sroa.12.3.i, ptr %.sroa.12.0..sroa_idx.us.us.us.us.i.us, align 4
  %.sroa.21.0..sroa_idx.us.us.us.us.i.us = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i32 %.sroa.21.3.i, ptr %.sroa.21.0..sroa_idx.us.us.us.us.i.us, align 8
  %.sroa.30.0..sroa_idx.us.us.us.us.i.us = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  store i32 %.3.i94.i, ptr %.sroa.6.0..sroa_idx.us.us.us.us.i.us, align 4, !tbaa !102
  store i32 1, ptr %.sroa.30.0..sroa_idx.us.us.us.us.i.us, align 4, !tbaa !102
  store i32 %.3.i69.i, ptr %4, align 16, !tbaa !102
  store i32 1, ptr %5, align 16, !tbaa !102
  %i.hk = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.hl = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store i32 %1, ptr %i.hk, align 16, !tbaa !102
  %.sroa.4.0..sroa_idx.us.us.us.us.i.peel.1 = getelementptr inbounds nuw i8, ptr %3, i64 36
  %.sroa.5.0..sroa_idx.us.us.us.us.i.peel.1 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %.sroa.6.0..sroa_idx.us.us.us.us.i.peel.1 = getelementptr inbounds nuw i8, ptr %3, i64 44
  store i32 %i.bn, ptr %.sroa.6.0..sroa_idx.us.us.us.us.i.peel.1, align 4, !tbaa !102
  store i32 %.sroa.0.3.i, ptr %i.hl, align 16
  %.sroa.12.0..sroa_idx.us.us.us.us.i.peel.1 = getelementptr inbounds nuw i8, ptr %i.e, i64 36
  %.sroa.21.0..sroa_idx.us.us.us.us.i.peel.1 = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sroa.30.0..sroa_idx.us.us.us.us.i.peel.1 = getelementptr inbounds nuw i8, ptr %i.e, i64 44
  store i32 %.sroa.30.3.i, ptr %.sroa.30.0..sroa_idx.us.us.us.us.i.peel.1, align 4
  store i32 %.3.i94.i, ptr %.sroa.4.0..sroa_idx.us.us.us.us.i.peel.1, align 4, !tbaa !102
  store i32 1, ptr %.sroa.12.0..sroa_idx.us.us.us.us.i.peel.1, align 4, !tbaa !102
  store i32 %.3.i69.i, ptr %.sroa.5.0..sroa_idx.us.us.us.us.i.peel.1, align 8, !tbaa !102
  store i32 1, ptr %.sroa.21.0..sroa_idx.us.us.us.us.i.peel.1, align 8, !tbaa !102
  %i.hm = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.hn = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %.sroa.4.0..sroa_idx.us.us.us.us.i.1 = getelementptr inbounds nuw i8, ptr %3, i64 52
  %.sroa.5.0..sroa_idx.us.us.us.us.i.1 = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i32 %..i, ptr %.sroa.5.0..sroa_idx.us.us.us.us.i.1, align 8, !tbaa !102
  %.sroa.6.0..sroa_idx.us.us.us.us.i.1 = getelementptr inbounds nuw i8, ptr %3, i64 60
  store i32 %i.bn, ptr %.sroa.6.0..sroa_idx.us.us.us.us.i.1, align 4, !tbaa !102
  %.sroa.12.0..sroa_idx.us.us.us.us.i.1 = getelementptr inbounds nuw i8, ptr %i.e, i64 52
  %.sroa.21.0..sroa_idx.us.us.us.us.i.1 = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store i32 %.sroa.21.3.i, ptr %.sroa.21.0..sroa_idx.us.us.us.us.i.1, align 8
  %.sroa.30.0..sroa_idx.us.us.us.us.i.1 = getelementptr inbounds nuw i8, ptr %i.e, i64 60
  store i32 %.sroa.30.3.i, ptr %.sroa.30.0..sroa_idx.us.us.us.us.i.1, align 4
  store i32 %.3.i94.i, ptr %.sroa.4.0..sroa_idx.us.us.us.us.i.1, align 4, !tbaa !102
  store i32 1, ptr %.sroa.12.0..sroa_idx.us.us.us.us.i.1, align 4, !tbaa !102
  store i32 %.3.i69.i, ptr %i.hm, align 16, !tbaa !102
  store i32 1, ptr %i.hn, align 16, !tbaa !102
  br label %.lr.ph

.split.us.us.split.i:                             ; preds = %alf_get_edges.exit.split.us.i
  store i32 %i.bn, ptr %.sroa.6.0..sroa_idx.us.us.us.us.i.us.peel, align 4, !tbaa !102
  store i32 %.sroa.0.3.i, ptr %i.e, align 16
  %.sroa.12.0..sroa_idx.us.us.i.peel = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i32 %.sroa.12.3.i, ptr %.sroa.12.0..sroa_idx.us.us.i.peel, align 4
  %.sroa.21.0..sroa_idx.us.us.i.peel = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.30.0..sroa_idx.us.us.i.peel = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 %.sroa.30.3.i, ptr %.sroa.30.0..sroa_idx.us.us.i.peel, align 4
  store i32 %.3.i69.i, ptr %.sroa.5.0..sroa_idx.us.us.us.us.i.us.peel, align 8, !tbaa !102
  store i32 1, ptr %.sroa.21.0..sroa_idx.us.us.i.peel, align 8, !tbaa !102
  store i32 %2, ptr %.sroa.4.0..sroa_idx.us.us.us.us.i.us, align 4, !tbaa !102
  store i32 %..i, ptr %.sroa.5.0..sroa_idx.us.us.us.us.i.us, align 8, !tbaa !102
  store i32 %i.bn, ptr %.sroa.6.0..sroa_idx.us.us.us.us.i.us, align 4, !tbaa !102
  %.sroa.12.0..sroa_idx.us.us.i = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  store i32 %.sroa.12.3.i, ptr %.sroa.12.0..sroa_idx.us.us.i, align 4
  %.sroa.21.0..sroa_idx.us.us.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i32 %.sroa.21.3.i, ptr %.sroa.21.0..sroa_idx.us.us.i, align 8
  %.sroa.30.0..sroa_idx.us.us.i = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  store i32 %.sroa.30.3.i, ptr %.sroa.30.0..sroa_idx.us.us.i, align 4
  store i32 %.3.i69.i, ptr %4, align 16, !tbaa !102
  store i32 1, ptr %5, align 16, !tbaa !102
  br label %.lr.ph

alf_get_edges.exit.split.i:                       ; preds = %alf_get_edges.exit.i
  store i32 %..i, ptr %.sroa.5.0..sroa_idx.us.us.us.us.i.us.peel, align 8, !tbaa !102
  %.sroa.6.0..sroa_idx.us109.us.i.us = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  br i1 %i.bf, label %alf_get_subblock.exit.us114.us.i.us, label %alf_get_subblock.exit.i

alf_get_subblock.exit.us114.us.i.us:              ; preds = %alf_get_edges.exit.split.i
  store i32 %.sroa.0.3.i, ptr %i.e, align 16
  %.sroa.12.0..sroa_idx.us110.us.i.us = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i32 %.sroa.12.3.i, ptr %.sroa.12.0..sroa_idx.us110.us.i.us, align 4
  %.sroa.21.0..sroa_idx.us111.us.i.us = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i32 %.sroa.21.3.i, ptr %.sroa.21.0..sroa_idx.us111.us.i.us, align 8
  %.sroa.30.0..sroa_idx.us112.us.i.us = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 %.3.i94.i, ptr %.sroa.6.0..sroa_idx.us109.us.i.us, align 4, !tbaa !102
  store i32 1, ptr %.sroa.30.0..sroa_idx.us112.us.i.us, align 4, !tbaa !102
  %i.ho = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.hp = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i32 %1, ptr %i.ho, align 16, !tbaa !102
  %.sroa.4.0..sroa_idx.us107.us.i.1 = getelementptr inbounds nuw i8, ptr %3, i64 20
  %.sroa.5.0..sroa_idx.us108.us.i.1 = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 %..i, ptr %.sroa.5.0..sroa_idx.us108.us.i.1, align 8, !tbaa !102
  %.sroa.6.0..sroa_idx.us109.us.i.1 = getelementptr inbounds nuw i8, ptr %3, i64 28
  store i32 %i.bn, ptr %.sroa.6.0..sroa_idx.us109.us.i.1, align 4, !tbaa !102
  store i32 %.sroa.0.3.i, ptr %i.hp, align 16
  %.sroa.12.0..sroa_idx.us110.us.i.1 = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %.sroa.21.0..sroa_idx.us111.us.i.1 = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i32 %.sroa.21.3.i, ptr %.sroa.21.0..sroa_idx.us111.us.i.1, align 8
  %.sroa.30.0..sroa_idx.us112.us.i.1 = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  store i32 %.sroa.30.3.i, ptr %.sroa.30.0..sroa_idx.us112.us.i.1, align 4
  store i32 %.3.i94.i, ptr %.sroa.4.0..sroa_idx.us107.us.i.1, align 4, !tbaa !102
  store i32 1, ptr %.sroa.12.0..sroa_idx.us110.us.i.1, align 4, !tbaa !102
  br label %.lr.ph

alf_get_subblock.exit.i:                          ; preds = %alf_get_edges.exit.split.i
  store i32 %i.bn, ptr %.sroa.6.0..sroa_idx.us109.us.i.us, align 4, !tbaa !102
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
  %i.hq = getelementptr inbounds nuw i8, ptr %i.g, i64 2048
  %i.hr = getelementptr inbounds nuw i8, ptr %i.ak, i64 6
  %i.hs = getelementptr inbounds nuw i8, ptr %i.ak, i64 7
  %i.ht = sext i32 %i.s to i64                    ; 2 uses
  %invariant.gep = getelementptr i8, ptr %0, i64 %i.ht
  %i.hu = sext i32 %i.r to i64                    ; 79 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.g, i64 22256
  %i.hw = add nsw i32 %i.n, -1
  %i.hx = add nsw i32 %i.n, 1
  %i.hy = getelementptr inbounds nuw i8, ptr %i.g, i64 22304
  %i.hz = add nsw i32 %i.m, -1
  %i.ia = sub nsw i64 0, %i.hu                    ; 2 uses
  %i.ib = add nsw i32 %i.m, 1
  %i.ic = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.id = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ie = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %i.if = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ig = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %i.ih = add i32 %i.z, -4                        ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 32928
  %i.ij = getelementptr inbounds i8, ptr %i.ii, i64 %i.ht
  %i.ik = getelementptr i8, ptr %i.ak, i64 3
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 864480 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 839904 ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 770208
  br label %bb.am

._crit_edge:                                      ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  ret void

bb.am:                                            ; preds = %.lr.ph, %bb.an
  %indvars.iv206 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next207, %bb.an ] ; 3 uses
  %i.io = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv206 ; 4 uses
  %i.ip = load i32, ptr %i.io, align 16, !tbaa !222 ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.io, i64 4
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !223 ; 4 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.io, i64 8
  %i.it = load i32, ptr %i.is, align 8, !tbaa !224
  %i.iu = sub nsw i32 %i.it, %i.ip
  %i.iv = getelementptr inbounds nuw i8, ptr %i.io, i64 12
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !225
  %i.ix = sub nsw i32 %i.iw, %i.ir
  %i.iy = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %indvars.iv206 ; 4 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 4
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iy, i64 12
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iy, i64 8
  %i.jc = sub nsw i32 %i.z, %i.ir
  %i.jd = sub i32 %i.ih, %i.ir
  br label %bb.ao

bb.an:                                            ; preds = %alf_filter_cc.exit
  %indvars.iv.next207 = add nuw nsw i64 %indvars.iv206, 1 ; 2 uses
  %exitcond210.not = icmp eq i64 %indvars.iv.next207, %.us-phi122.i
  br i1 %exitcond210.not, label %._crit_edge, label %bb.am, !llvm.loop !207

bb.ao:                                            ; preds = %bb.am, %alf_filter_cc.exit
  %indvars.iv = phi i64 [ 0, %bb.am ], [ %indvars.iv.next, %alf_filter_cc.exit ] ; 14 uses
  %i.je = load ptr, ptr %i.h, align 8, !tbaa !77  ; 3 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 8
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 %indvars.iv
  %i.jh = load i8, ptr %i.jg, align 1, !tbaa !82
  %i.ji = zext i8 %i.jh to i32                    ; 4 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.je, i64 11
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 %indvars.iv
  %i.jl = load i8, ptr %i.jk, align 1, !tbaa !82
  %i.jm = zext i8 %i.jl to i32                    ; 5 uses
  %i.jn = ashr i32 %i.ip, %i.ji
  %i.jo = ashr i32 %i.ir, %i.jm                   ; 3 uses
  %i.jp = ashr i32 %i.iu, %i.ji                   ; 6 uses
  %i.jq = ashr i32 %i.ix, %i.jm                   ; 27 uses
  %i.jr = load ptr, ptr %i.hq, align 8, !tbaa !83 ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 64
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %indvars.iv
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !102 ; 3 uses
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %i.jr, i64 %indvars.iv
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !88
  %i.jx = mul nsw i32 %i.ju, %i.jo
  %i.jy = getelementptr inbounds nuw i8, ptr %i.je, i64 20
  %i.jz = load i8, ptr %i.jy, align 4, !tbaa !89  ; 5 uses
  %i.ka = zext i8 %i.jz to i32                    ; 6 uses
  %i.kb = shl i32 %i.jn, %i.ka                    ; 3 uses
  %i.kc = add nsw i32 %i.kb, %i.jx
  %i.kd = sext i32 %i.kc to i64
  %i.ke = getelementptr inbounds i8, ptr %i.jw, i64 %i.kd ; 5 uses
  %i.kf = getelementptr i8, ptr %i.ak, i64 %indvars.iv ; 4 uses
  %i.kg = load i8, ptr %i.kf, align 1, !tbaa !82
  %.not125 = icmp eq i8 %i.kg, 0
  br i1 %.not125, label %bb.ap, label %bb.as

bb.ap:                                            ; preds = %bb.ao
  %i.kh = icmp eq i64 %indvars.iv, 0
  %or.cond = select i1 %i.kh, i1 %.not, i1 false
  br i1 %or.cond, label %bb.aq, label %alf_prepare_buffer.exit.thread

bb.aq:                                            ; preds = %bb.ap
  %i.ki = load i8, ptr %i.hr, align 1, !tbaa !82
  %.not126 = icmp eq i8 %i.ki, 0
  br i1 %.not126, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.kj = load i8, ptr %i.hs, align 1, !tbaa !82
  %.not127 = icmp eq i8 %i.kj, 0
  br i1 %.not127, label %alf_filter_cc.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq, %bb.ao
  %.not128.not.not.not.not.not.not.not.not.not.not.not.not.not.not = icmp eq i64 %indvars.iv, 0 ; 18 uses
  %.v = select i1 %.not128.not.not.not.not.not.not.not.not.not.not.not.not.not.not, i64 32928, i64 401568
  %gep = getelementptr i8, ptr %invariant.gep, i64 %.v ; 13 uses
  %i.kk = sext i32 %i.ju to i64                   ; 7 uses
  %i.kl = load ptr, ptr %i.ac, align 8, !tbaa !84 ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 30
  %i.kn = load i16, ptr %i.km, align 2, !tbaa !87
  %i.ko = zext i16 %i.kn to i32
  %i.kp = lshr i32 %i.ko, %i.ji                   ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kl, i64 32
  %i.kr = load i16, ptr %i.kq, align 8, !tbaa !103
  %i.ks = zext i16 %i.kr to i32
  %i.kt = lshr i32 %i.ks, %i.jm                   ; 2 uses
  %.neg171.i = select i1 %.not128.not.not.not.not.not.not.not.not.not.not.not.not.not.not, i32 -3, i32 -2
  %i.ku = select i1 %.not128.not.not.not.not.not.not.not.not.not.not.not.not.not.not, i32 3, i32 2 ; 9 uses
  %i.kv = shl i32 %i.jp, %i.ka
  %i.kw = icmp sgt i32 %i.jq, 0
  %i.kx = sext i32 %i.kv to i64                   ; 18 uses
  br i1 %i.kw, label %.lr.ph.i.i139.preheader, label %copy_ctb.exit.i

.lr.ph.i.i139.preheader:                          ; preds = %bb.as
  %i.ky = add nsw i32 %i.jq, -1
  %xtraiter = and i32 %i.jq, 3                    ; 3 uses
  %i.kz = icmp ult i32 %i.ky, 3
  br i1 %i.kz, label %.lr.ph.i.i139.epil.preheader, label %.lr.ph.i.i139.preheader.new

.lr.ph.i.i139.preheader.new:                      ; preds = %.lr.ph.i.i139.preheader
  %unroll_iter = and i32 %i.jq, 2147483644
  br label %.lr.ph.i.i139

.lr.ph.i.i139:                                    ; preds = %.lr.ph.i.i139, %.lr.ph.i.i139.preheader.new
  %.0912.i.i = phi ptr [ %gep, %.lr.ph.i.i139.preheader.new ], [ %i.lg, %.lr.ph.i.i139 ] ; 2 uses
  %.01011.i.i = phi ptr [ %i.ke, %.lr.ph.i.i139.preheader.new ], [ %i.lh, %.lr.ph.i.i139 ] ; 2 uses
  %niter = phi i32 [ 0, %.lr.ph.i.i139.preheader.new ], [ %niter.next.3, %.lr.ph.i.i139 ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0912.i.i, ptr align 1 %.01011.i.i, i64 %i.kx, i1 false)
  %i.la = getelementptr inbounds i8, ptr %.0912.i.i, i64 %i.hu ; 2 uses
  %i.lb = getelementptr inbounds i8, ptr %.01011.i.i, i64 %i.kk ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.la, ptr align 1 %i.lb, i64 %i.kx, i1 false)
  %i.lc = getelementptr inbounds i8, ptr %i.la, i64 %i.hu ; 2 uses
  %i.ld = getelementptr inbounds i8, ptr %i.lb, i64 %i.kk ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.lc, ptr align 1 %i.ld, i64 %i.kx, i1 false)
  %i.le = getelementptr inbounds i8, ptr %i.lc, i64 %i.hu ; 2 uses
  %i.lf = getelementptr inbounds i8, ptr %i.ld, i64 %i.kk ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.le, ptr align 1 %i.lf, i64 %i.kx, i1 false)
  %i.lg = getelementptr inbounds i8, ptr %i.le, i64 %i.hu ; 2 uses
  %i.lh = getelementptr inbounds i8, ptr %i.lf, i64 %i.kk ; 2 uses
  %niter.next.3 = add nuw nsw i32 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %copy_ctb.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i139, !llvm.loop !3

copy_ctb.exit.i.loopexit.unr-lcssa:               ; preds = %.lr.ph.i.i139
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %copy_ctb.exit.i, label %.lr.ph.i.i139.epil.preheader

.lr.ph.i.i139.epil.preheader:                     ; preds = %copy_ctb.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i139.preheader
  %.0912.i.i.epil.init = phi ptr [ %gep, %.lr.ph.i.i139.preheader ], [ %i.lg, %copy_ctb.exit.i.loopexit.unr-lcssa ]
  %.01011.i.i.epil.init = phi ptr [ %i.ke, %.lr.ph.i.i139.preheader ], [ %i.lh, %copy_ctb.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod255 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod255)
  br label %.lr.ph.i.i139.epil

.lr.ph.i.i139.epil:                               ; preds = %.lr.ph.i.i139.epil, %.lr.ph.i.i139.epil.preheader
  %.0912.i.i.epil = phi ptr [ %i.li, %.lr.ph.i.i139.epil ], [ %.0912.i.i.epil.init, %.lr.ph.i.i139.epil.preheader ] ; 2 uses
  %.01011.i.i.epil = phi ptr [ %i.lj, %.lr.ph.i.i139.epil ], [ %.01011.i.i.epil.init, %.lr.ph.i.i139.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.i.i139.epil ], [ 0, %.lr.ph.i.i139.epil.preheader ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0912.i.i.epil, ptr align 1 %.01011.i.i.epil, i64 %i.kx, i1 false)
  %i.li = getelementptr inbounds i8, ptr %.0912.i.i.epil, i64 %i.hu
  %i.lj = getelementptr inbounds i8, ptr %.01011.i.i.epil, i64 %i.kk
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %copy_ctb.exit.i, label %.lr.ph.i.i139.epil, !llvm.loop !208

copy_ctb.exit.i:                                  ; preds = %copy_ctb.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i139.epil, %bb.as
  %i.lk = getelementptr inbounds nuw [16 x i8], ptr %i.hv, i64 %indvars.iv ; 2 uses
  %i.ll = mul nuw nsw i32 %i.kp, %i.ku
  %i.lm = shl i32 %i.ll, %i.ka                    ; 2 uses
  %i.ln = zext nneg i32 %i.ku to i64              ; 21 uses
  %i.lo = mul nsw i64 %i.ln, %i.hu                ; 3 uses
  %i.lp = sub nsw i64 0, %i.lo                    ; 3 uses
  %i.lq = getelementptr inbounds i8, ptr %gep, i64 %i.lp ; 4 uses
  %i.lr = shl i32 %i.kp, %i.ka
  %i.ls = sext i32 %i.lr to i64                   ; 4 uses
  %i.lt = load i32, ptr %i.iz, align 4, !tbaa !102 ; 3 uses
  %.not.i.i137 = icmp eq i32 %i.lt, 0             ; 5 uses
  br i1 %.not.i.i137, label %.preheader168.i, label %.preheader169.i

.preheader169.i:                                  ; preds = %copy_ctb.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.lq, ptr nonnull readonly align 1 %gep, i64 %i.kx, i1 false)
  %i.lu = getelementptr inbounds i8, ptr %i.lq, i64 %i.hu ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.lu, ptr nonnull readonly align 1 %gep, i64 %i.kx, i1 false)
  br i1 %.not128.not.not.not.not.not.not.not.not.not.not.not.not.not.not, label %.preheader169.i.2, label %alf_fill_border_h.exit.i

.preheader169.i.2:                                ; preds = %.preheader169.i
end_hunk_0
