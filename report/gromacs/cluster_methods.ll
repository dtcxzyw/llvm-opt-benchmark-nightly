inline.NumInlined: 558
inline.NumDeleted: 247
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_Z11mc_optimizeP8_IO_FILEP5t_matPfiiifPKcP16gmx_output_env_t:bb.a
  %15 = alloca %"class.gmx::ThreeFry2x64Fast", align 8 ; 15 uses
  %16 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 9 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  store ptr %7, ptr %i.a, align 8, !tbaa !9
  %i.b = icmp eq i32 %5, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef i64 @_ZN3gmx14makeRandomSeedEv()
  %i.d = trunc i64 %i.c to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0140 = phi i32 [ %i.d, %bb.b ], [ %5, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  %i.e = sext i32 %.0140 to i64
  store i64 %i.e, ptr %15, align 8
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 4 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !tbaa !12
  call void @_ZN3gmx8internal14highBitCounter9incrementImLm2ELj7EEEvPSt5arrayIT_XT0_EES4_(ptr noundef nonnull align 8 dereferenceable(52) %15, i64 noundef 63)
  %i.f = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.g = load i64, ptr %15, align 8, !tbaa !13    ; 4 uses
  %i.h = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !tbaa !13 ; 6 uses
  %i.i = xor i64 %i.g, %i.h
  %i.j = xor i64 %i.i, 2004413935125273122        ; 2 uses
  %i.k = add i64 %i.h, %i.g                       ; 2 uses
  %i.l = call i64 @llvm.fshl.i64(i64 %i.h, i64 %i.h, i64 16)
  %i.m = xor i64 %i.l, %i.k                       ; 3 uses
  %i.n = add i64 %i.m, %i.k                       ; 2 uses
  %i.o = call i64 @llvm.fshl.i64(i64 %i.m, i64 %i.m, i64 42)
  %i.p = xor i64 %i.o, %i.n                       ; 3 uses
  %i.q = add i64 %i.p, %i.n                       ; 2 uses
  %i.r = call i64 @llvm.fshl.i64(i64 %i.p, i64 %i.p, i64 12)
  %i.s = xor i64 %i.r, %i.q                       ; 3 uses
  %i.t = add i64 %i.s, %i.q                       ; 2 uses
  %i.u = call i64 @llvm.fshl.i64(i64 %i.s, i64 %i.s, i64 31)
  %i.v = xor i64 %i.u, %i.t
  %i.w = add i64 %i.t, %i.h
  %i.x = add i64 %i.j, 1
  %i.y = add i64 %i.x, %i.v                       ; 3 uses
  %i.z = add i64 %i.w, %i.y                       ; 2 uses
  %i.aa = call i64 @llvm.fshl.i64(i64 %i.y, i64 %i.y, i64 16)
  %i.ab = xor i64 %i.aa, %i.z                     ; 3 uses
  %i.ac = add i64 %i.ab, %i.z                     ; 2 uses
  %i.ad = call i64 @llvm.fshl.i64(i64 %i.ab, i64 %i.ab, i64 32)
  %i.ae = xor i64 %i.ad, %i.ac                    ; 3 uses
  %i.af = add i64 %i.ae, %i.ac                    ; 2 uses
  %i.ag = call i64 @llvm.fshl.i64(i64 %i.ae, i64 %i.ae, i64 24)
  %i.ah = xor i64 %i.ag, %i.af                    ; 3 uses
  %i.ai = add i64 %i.ah, %i.af                    ; 2 uses
  %i.aj = call i64 @llvm.fshl.i64(i64 %i.ah, i64 %i.ah, i64 21)
  %i.ak = xor i64 %i.aj, %i.ai
  %i.al = add i64 %i.ai, %i.j
  %i.am = add i64 %i.g, 2
  %i.an = add i64 %i.am, %i.ak                    ; 3 uses
  %i.ao = add i64 %i.al, %i.an                    ; 2 uses
  %i.ap = call i64 @llvm.fshl.i64(i64 %i.an, i64 %i.an, i64 16)
  %i.aq = xor i64 %i.ap, %i.ao                    ; 3 uses
  %i.ar = add i64 %i.aq, %i.ao                    ; 2 uses
  %i.as = call i64 @llvm.fshl.i64(i64 %i.aq, i64 %i.aq, i64 42)
  %i.at = xor i64 %i.as, %i.ar                    ; 3 uses
  %i.au = add i64 %i.at, %i.ar                    ; 2 uses
  %i.av = call i64 @llvm.fshl.i64(i64 %i.at, i64 %i.at, i64 12)
  %i.aw = xor i64 %i.av, %i.au                    ; 3 uses
  %i.ax = add i64 %i.aw, %i.au                    ; 2 uses
  %i.ay = call i64 @llvm.fshl.i64(i64 %i.aw, i64 %i.aw, i64 31)
  %i.az = xor i64 %i.ay, %i.ax
  %i.ba = add i64 %i.ax, %i.g
  %i.bb = add i64 %i.h, 3
  %i.bc = add i64 %i.bb, %i.az                    ; 3 uses
  %i.bd = add i64 %i.ba, %i.bc                    ; 2 uses
  %i.be = call i64 @llvm.fshl.i64(i64 %i.bc, i64 %i.bc, i64 16)
  %i.bf = xor i64 %i.be, %i.bd
  %i.bg = getelementptr inbounds nuw i8, ptr %15, i64 32 ; 5 uses
  store i64 %i.bd, ptr %i.bg, align 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %15, i64 40 ; 3 uses
  store i64 %i.bf, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !12
  %i.bh = getelementptr inbounds nuw i8, ptr %15, i64 48 ; 5 uses
  store i32 0, ptr %i.bh, align 8, !tbaa !15
  %i.bi = load i32, ptr %1, align 8, !tbaa !18
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 5 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !26
  %.not = icmp eq i32 %i.bi, %i.bk
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bl = load ptr, ptr @stderr, align 8, !tbaa !27
  %i.bm = call i64 @fwrite(ptr nonnull @.str, i64 62, i64 1, ptr %i.bl) #24 ; 0 uses
  br label %bb.ar

bb.e:                                             ; preds = %bb.c
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  %puts150 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  %puts151 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2) ; 0 uses
  %i.bn = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %.0140) ; 0 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !29 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !30
  %i.br = load float, ptr %i.bq, align 4, !tbaa !31
  %i.bs = load i32, ptr %1, align 8, !tbaa !18    ; 2 uses
  %i.bt = icmp sgt i32 %i.bs, 0
  br i1 %i.bt, label %.preheader230.lr.ph, label %._crit_edge251.thread

.preheader230.lr.ph:                              ; preds = %bb.e
  %i.bu = load i32, ptr %i.bj, align 4, !tbaa !26 ; 3 uses
  %i.bv = icmp sgt i32 %i.bu, 0
  br i1 %i.bv, label %.preheader230.us.preheader, label %._crit_edge251.thread

.preheader230.us.preheader:                       ; preds = %.preheader230.lr.ph
  %wide.trip.count288 = zext nneg i32 %i.bs to i64
  %wide.trip.count = zext nneg i32 %i.bu to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 7         ; 3 uses
  %i.bw = icmp ult i32 %i.bu, 8
  %unroll_iter = and i64 %wide.trip.count, 2147483640
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod349 = icmp ne i64 %xtraiter, 0
  br label %.preheader230.us

.preheader230.us:                                 ; preds = %.preheader230.us.preheader, %._crit_edge.us
  %indvars.iv285 = phi i64 [ 0, %.preheader230.us.preheader ], [ %indvars.iv.next286, %._crit_edge.us ] ; 3 uses
  %.0121250.us = phi i32 [ -1, %.preheader230.us.preheader ], [ %.2123.us.lcssa, %._crit_edge.us ] ; 2 uses
  %.0124249.us = phi i32 [ -1, %.preheader230.us.preheader ], [ %.2126.us.lcssa, %._crit_edge.us ] ; 2 uses
  %.0131247.us = phi float [ %i.br, %.preheader230.us.preheader ], [ %.2133.us.lcssa, %._crit_edge.us ] ; 2 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv285
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !30 ; 9 uses
  %i.bz = trunc nuw nsw i64 %indvars.iv285 to i32 ; 2 uses
  br i1 %i.bw, label %.epil.preheader, label %.preheader230.us.new

.preheader230.us.new:                             ; preds = %.preheader230.us, %.preheader230.us.new
  %indvars.iv = phi i64 [ %indvars.iv.next.7, %.preheader230.us.new ], [ 0, %.preheader230.us ] ; 10 uses
  %.1122244.us = phi i32 [ %.2123.us.7, %.preheader230.us.new ], [ %.0121250.us, %.preheader230.us ]
  %.1125243.us = phi i32 [ %.2126.us.7, %.preheader230.us.new ], [ %.0124249.us, %.preheader230.us ]
  %.1132241.us = phi float [ %.2133.us.7, %.preheader230.us.new ], [ %.0131247.us, %.preheader230.us ] ; 2 uses
  %niter = phi i64 [ %niter.next.7, %.preheader230.us.new ], [ 0, %.preheader230.us ]
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !31 ; 2 uses
  %i.cc = fcmp ogt float %i.cb, %.1132241.us      ; 3 uses
  %.2133.us = select i1 %i.cc, float %i.cb, float %.1132241.us ; 2 uses
  %i.cd = trunc nuw nsw i64 %indvars.iv to i32
  %.2123.us = select i1 %i.cc, i32 %i.cd, i32 %.1122244.us
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv.next
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !31 ; 2 uses
  %i.cg = fcmp ogt float %i.cf, %.2133.us         ; 3 uses
  %.2133.us.1 = select i1 %i.cg, float %i.cf, float %.2133.us ; 2 uses
  %i.ch = or i1 %i.cg, %i.cc
  %i.ci = trunc nuw nsw i64 %indvars.iv.next to i32
  %.2123.us.1 = select i1 %i.cg, i32 %i.ci, i32 %.2123.us
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv.next.1
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !31 ; 2 uses
  %i.cl = fcmp ogt float %i.ck, %.2133.us.1       ; 3 uses
  %.2133.us.2 = select i1 %i.cl, float %i.ck, float %.2133.us.1 ; 2 uses
  %i.cm = trunc nuw nsw i64 %indvars.iv.next.1 to i32
  %.2123.us.2 = select i1 %i.cl, i32 %i.cm, i32 %.2123.us.1
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv.next.2
  %i.co = load float, ptr %i.cn, align 4, !tbaa !31 ; 2 uses
  %i.cp = fcmp ogt float %i.co, %.2133.us.2       ; 3 uses
  %.2133.us.3 = select i1 %i.cp, float %i.co, float %.2133.us.2 ; 2 uses
  %i.cq = or i1 %i.cp, %i.cl
  %i.cr = trunc nuw nsw i64 %indvars.iv.next.2 to i32
  %.2123.us.3 = select i1 %i.cp, i32 %i.cr, i32 %.2123.us.2
  %indvars.iv.next.3 = or disjoint i64 %indvars.iv, 4 ; 2 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv.next.3
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !31 ; 2 uses
  %i.cu = fcmp ogt float %i.ct, %.2133.us.3       ; 3 uses
  %.2133.us.4 = select i1 %i.cu, float %i.ct, float %.2133.us.3 ; 2 uses
  %i.cv = trunc nuw nsw i64 %indvars.iv.next.3 to i32
  %.2123.us.4 = select i1 %i.cu, i32 %i.cv, i32 %.2123.us.3
  %indvars.iv.next.4 = or disjoint i64 %indvars.iv, 5 ; 2 uses
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv.next.4
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !31 ; 2 uses
  %i.cy = fcmp ogt float %i.cx, %.2133.us.4       ; 3 uses
  %.2133.us.5 = select i1 %i.cy, float %i.cx, float %.2133.us.4 ; 2 uses
  %i.cz = or i1 %i.cy, %i.cu
  %i.da = trunc nuw nsw i64 %indvars.iv.next.4 to i32
  %.2123.us.5 = select i1 %i.cy, i32 %i.da, i32 %.2123.us.4
  %indvars.iv.next.5 = or disjoint i64 %indvars.iv, 6 ; 2 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv.next.5
  %i.dc = load float, ptr %i.db, align 4, !tbaa !31 ; 2 uses
  %i.dd = fcmp ogt float %i.dc, %.2133.us.5       ; 3 uses
  %.2133.us.6 = select i1 %i.dd, float %i.dc, float %.2133.us.5 ; 2 uses
  %i.de = trunc nuw nsw i64 %indvars.iv.next.5 to i32
  %.2123.us.6 = select i1 %i.dd, i32 %i.de, i32 %.2123.us.5
  %indvars.iv.next.6 = or disjoint i64 %indvars.iv, 7 ; 2 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv.next.6
  %i.dg = load float, ptr %i.df, align 4, !tbaa !31 ; 2 uses
  %i.dh = fcmp ogt float %i.dg, %.2133.us.6       ; 3 uses
  %.2133.us.7 = select i1 %i.dh, float %i.dg, float %.2133.us.6 ; 3 uses
  %i.di = or i1 %i.dh, %i.dd
  %i.dj = select i1 %i.di, i1 true, i1 %i.cz
  %i.dk = select i1 %i.dj, i1 true, i1 %i.cq
  %i.dl = select i1 %i.dk, i1 true, i1 %i.ch
  %.2126.us.7 = select i1 %i.dl, i32 %i.bz, i32 %.1125243.us ; 3 uses
  %i.dm = trunc nuw nsw i64 %indvars.iv.next.6 to i32
  %.2123.us.7 = select i1 %i.dh, i32 %i.dm, i32 %.2123.us.6 ; 3 uses
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.us.unr-lcssa, label %.preheader230.us.new, !llvm.loop !32

._crit_edge.us.unr-lcssa:                         ; preds = %.preheader230.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.preheader230.us
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader230.us ], [ %indvars.iv.next.7, %._crit_edge.us.unr-lcssa ]
  %.1122244.us.epil.init = phi i32 [ %.0121250.us, %.preheader230.us ], [ %.2123.us.7, %._crit_edge.us.unr-lcssa ]
  %.1125243.us.epil.init = phi i32 [ %.0124249.us, %.preheader230.us ], [ %.2126.us.7, %._crit_edge.us.unr-lcssa ]
  %.1132241.us.epil.init = phi float [ %.0131247.us, %.preheader230.us ], [ %.2133.us.7, %._crit_edge.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod349)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.f ] ; 3 uses
  %.1122244.us.epil = phi i32 [ %.1122244.us.epil.init, %.epil.preheader ], [ %.2123.us.epil, %bb.f ]
  %.1125243.us.epil = phi i32 [ %.1125243.us.epil.init, %.epil.preheader ], [ %.2126.us.epil, %bb.f ]
  %.1132241.us.epil = phi float [ %.1132241.us.epil.init, %.epil.preheader ], [ %.2133.us.epil, %bb.f ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.f ]
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv.epil
  %i.do = load float, ptr %i.dn, align 4, !tbaa !31 ; 2 uses
  %i.dp = fcmp ogt float %i.do, %.1132241.us.epil ; 3 uses
  %.2133.us.epil = select i1 %i.dp, float %i.do, float %.1132241.us.epil ; 2 uses
  %.2126.us.epil = select i1 %i.dp, i32 %i.bz, i32 %.1125243.us.epil ; 2 uses
  %i.dq = trunc nuw nsw i64 %indvars.iv.epil to i32
  %.2123.us.epil = select i1 %i.dp, i32 %i.dq, i32 %.1122244.us.epil ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.us, label %bb.f, !llvm.loop !34

._crit_edge.us:                                   ; preds = %bb.f, %._crit_edge.us.unr-lcssa
  %.2133.us.lcssa = phi float [ %.2133.us.7, %._crit_edge.us.unr-lcssa ], [ %.2133.us.epil, %bb.f ] ; 3 uses
  %.2126.us.lcssa = phi i32 [ %.2126.us.7, %._crit_edge.us.unr-lcssa ], [ %.2126.us.epil, %bb.f ] ; 4 uses
  %.2123.us.lcssa = phi i32 [ %.2123.us.7, %._crit_edge.us.unr-lcssa ], [ %.2123.us.epil, %bb.f ] ; 4 uses
  %indvars.iv.next286 = add nuw nsw i64 %indvars.iv285, 1 ; 2 uses
  %exitcond289.not = icmp eq i64 %indvars.iv.next286, %wide.trip.count288
  br i1 %exitcond289.not, label %._crit_edge251, label %.preheader230.us, !llvm.loop !36

._crit_edge251:                                   ; preds = %._crit_edge.us
  %i.dr = icmp eq i32 %.2126.us.lcssa, -1
  %i.ds = icmp eq i32 %.2123.us.lcssa, -1
  %or.cond = select i1 %i.dr, i1 true, i1 %i.ds
  br i1 %or.cond, label %._crit_edge251.thread, label %bb.g

._crit_edge251.thread:                            ; preds = %.preheader230.lr.ph, %bb.e, %._crit_edge251
  %i.dt = load ptr, ptr @stderr, align 8, !tbaa !27
  %i.du = call i64 @fwrite(ptr nonnull @.str.5, i64 47, i64 1, ptr %i.dt) #24 ; 0 uses
  br label %bb.ar

bb.g:                                             ; preds = %._crit_edge251
  call void @_Z9swap_rowsP5t_matii(ptr noundef nonnull %1, i32 noundef 0, i32 noundef %.2126.us.lcssa)
  %i.dv = load i32, ptr %1, align 8, !tbaa !18
  %i.dw = add nsw i32 %i.dv, -1
  call void @_Z9swap_rowsP5t_matii(ptr noundef nonnull %1, i32 noundef %i.dw, i32 noundef %.2123.us.lcssa)
  %i.dx = call noundef float @_Z10mat_energyP5t_mat(ptr noundef nonnull %1) ; 3 uses
  %i.dy = fpext float %.2133.us.lcssa to double
  %i.dz = fpext float %i.dx to double
  %i.ea = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, double noundef %i.dy, i32 noundef %.2126.us.lcssa, i32 noundef %.2123.us.lcssa, double noundef %i.dz) ; 0 uses
  %i.eb = load i32, ptr %i.bj, align 4, !tbaa !26 ; 5 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ed = load i8, ptr %i.ec, align 8, !tbaa !37, !range !38, !noundef !39
  %i.ee = trunc nuw i8 %i.ed to i1
  %i.ef = call noundef ptr @_Z8init_matib(i32 noundef %i.eb, i1 noundef zeroext %i.ee) ; 5 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 4
  store i32 %i.eb, ptr %i.eg, align 4, !tbaa !26
  call void @_Z10copy_t_matP5t_matS0_(ptr noundef %i.ef, ptr noundef nonnull %1)
  %i.eh = load ptr, ptr %i.a, align 8, !tbaa !9
  %.not152 = icmp eq ptr %i.eh, null
  br i1 %.not152, label %bb.k, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  call void @_ZNSt10filesystem7__cxx114pathC2IPKcS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %16, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i8 noundef zeroext 2)
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #23
  %i.ei = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 6 uses
  store ptr %i.ei, ptr %17, align 8, !tbaa !40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.ei, ptr noundef nonnull align 1 dereferenceable(6) @.str.8, i64 6, i1 false)
  %i.ej = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 6, ptr %i.ej, align 8, !tbaa !42
  %i.ek = getelementptr inbounds nuw i8, ptr %17, i64 22
  store i8 0, ptr %i.ek, align 2, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #23
  %i.el = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 6 uses
  store ptr %i.el, ptr %18, align 8, !tbaa !40
  store i32 1885697107, ptr %i.el, align 8
  %i.em = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 4, ptr %i.em, align 8, !tbaa !42
  %i.en = getelementptr inbounds nuw i8, ptr %18, i64 20
  store i8 0, ptr %i.en, align 4, !tbaa !12
  %i.eo = invoke noundef ptr @_Z8xvgropenRKNSt10filesystem7__cxx114pathEPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_PK16gmx_output_env_t(ptr noundef nonnull align 8 dereferenceable(40) %16, ptr noundef nonnull @.str.7, ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef %8)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %._crit_edge.i.i
  %i.ep = load ptr, ptr %18, align 8, !tbaa !44   ; 2 uses
  %i.eq = icmp eq ptr %i.ep, %i.el
  br i1 %i.eq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.er = load i64, ptr %i.el, align 8, !tbaa !12
  %i.es = add i64 %i.er, 1
  call void @_ZdlPvm(ptr noundef %i.ep, i64 noundef %i.es) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  %i.et = load ptr, ptr %17, align 8, !tbaa !44   ; 2 uses
  %i.eu = icmp eq ptr %i.et, %i.ei
  br i1 %i.eu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ev = load i64, ptr %i.ei, align 8, !tbaa !12
  %i.ew = add i64 %i.ev, 1
  call void @_ZdlPvm(ptr noundef %i.et, i64 noundef %i.ew) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  %i.ex = getelementptr inbounds nuw i8, ptr %16, i64 32 ; 2 uses
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !45 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ey, null
  br i1 %.not.i.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.ex, ptr noundef nonnull %i.ey) #23
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i:  ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166
  %i.ez = load ptr, ptr %16, align 8, !tbaa !44   ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.fb = icmp eq ptr %i.ez, %i.fa
  br i1 %i.fb, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i
  %i.fc = load i64, ptr %i.fa, align 8, !tbaa !12
  %i.fd = add i64 %i.fc, 1
  call void @_ZdlPvm(ptr noundef %i.ez, i64 noundef %i.fd) #25
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit

_ZNSt10filesystem7__cxx114pathD2Ev.exit:          ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  br label %bb.k

bb.j:                                             ; preds = %._crit_edge.i.i
  %i.fe = landingpad { ptr, i32 }
          cleanup
  %i.ff = load ptr, ptr %18, align 8, !tbaa !44   ; 2 uses
  %i.fg = icmp eq ptr %i.ff, %i.el
  br i1 %i.fg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167: ; preds = %bb.j
  %i.fh = load i64, ptr %i.el, align 8, !tbaa !12
  %i.fi = add i64 %i.fh, 1
  call void @_ZdlPvm(ptr noundef %i.ff, i64 noundef %i.fi) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  %i.fj = load ptr, ptr %17, align 8, !tbaa !44   ; 2 uses
  %i.fk = icmp eq ptr %i.fj, %i.ei
  br i1 %i.fk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169
  %i.fl = load i64, ptr %i.ei, align 8, !tbaa !12
  %i.fm = add i64 %i.fl, 1
  call void @_ZdlPvm(ptr noundef %i.fj, i64 noundef %i.fm) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172

common.resume:                                    ; preds = %bb.ad, %bb.ae, %bb.t, %bb.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172
  %common.resume.op = phi { ptr, i32 } [ %i.fe, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172 ], [ %i.gt, %bb.t ], [ %.pn.pn23.i, %bb.u ], [ %.pn.pn23.i194, %bb.ae ], [ %i.kb, %bb.ad ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %16) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  br label %common.resume

bb.k:                                             ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit, %bb.g
  %.0139 = phi ptr [ %i.eo, %_ZNSt10filesystem7__cxx114pathD2Ev.exit ], [ null, %bb.g ] ; 4 uses
  %.not.i.i = icmp slt i32 %i.eb, 3
  br i1 %.not.i.i, label %bb.l, label %_ZN3gmx22UniformIntDistributionIiEC2Eii.exit.preheader

_ZN3gmx22UniformIntDistributionIiEC2Eii.exit.preheader: ; preds = %bb.k
  %i.fn = icmp sgt i32 %3, 0
  br i1 %i.fn, label %.preheader.lr.ph, label %_ZN3gmx22UniformIntDistributionIiEC2Eii.exit._crit_edge

.preheader.lr.ph:                                 ; preds = %_ZN3gmx22UniformIntDistributionIiEC2Eii.exit.preheader
  %i.fo = add nsw i32 %i.eb, -3                   ; 6 uses
  %i.fp = icmp ne i32 %i.eb, 3
  %i.fq = getelementptr inbounds nuw i8, ptr %15, i64 24 ; 4 uses
  %i.fr = fcmp ogt float %6, 0.000000e+00
  %i.fs = fmul float %6, %.2133.us.lcssa
  %.not158 = icmp eq ptr %.0139, null
  call void @llvm.assume(i1 %i.fp)
  br label %.preheader

bb.l:                                             ; preds = %bb.k
end_hunk_0
begin_hunk_1_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm

; Function Attrs: nounwind
declare void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef) local_unnamed_addr #7

; Function Attrs: noreturn
declare void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #13

declare noundef i32 @_ZN3gmx5log2IEj(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZN3gmx19ThreeFry2x64GeneralILj13ELj64EEclEv(ptr noundef nonnull align 8 dereferenceable(52) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !15   ; 3 uses
  %i.c = icmp ugt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.phi.trans.insert1 = zext nneg i32 %i.b to i64
  %.phi.trans.insert2 = getelementptr inbounds nuw [8 x i8], ptr %.phi.trans.insert, i64 %.phi.trans.insert1
  %.pre = load i64, ptr %.phi.trans.insert2, align 8, !tbaa !13
  %i.d = add nuw nsw i32 %i.b, 1
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @_ZN3gmx8internal14highBitCounter9incrementImLm2ELj64EEEvPSt5arrayIT_XT0_EE(ptr noundef nonnull %i.e)
  %.sroa.020.0.copyload.i = load i64, ptr %i.e, align 8
  %.sroa.49.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.49.0.copyload.i = load i64, ptr %.sroa.49.0..sroa_idx.i, align 8, !tbaa !12
  %i.f = load i64, ptr %0, align 8, !tbaa !13     ; 4 uses
  %i.g = add i64 %i.f, %.sroa.020.0.copyload.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !13   ; 4 uses
  %i.j = xor i64 %i.f, %i.i
  %i.k = xor i64 %i.j, 2004413935125273122        ; 2 uses
  %i.l = add i64 %i.i, %.sroa.49.0.copyload.i     ; 3 uses
  %i.m = add i64 %i.g, %i.l                       ; 2 uses
  %i.n = tail call i64 @llvm.fshl.i64(i64 %i.l, i64 %i.l, i64 16)
  %i.o = xor i64 %i.n, %i.m                       ; 3 uses
  %i.p = add i64 %i.o, %i.m                       ; 2 uses
  %i.q = tail call i64 @llvm.fshl.i64(i64 %i.o, i64 %i.o, i64 42)
  %i.r = xor i64 %i.q, %i.p                       ; 3 uses
  %i.s = add i64 %i.r, %i.p                       ; 2 uses
  %i.t = tail call i64 @llvm.fshl.i64(i64 %i.r, i64 %i.r, i64 12)
  %i.u = xor i64 %i.t, %i.s                       ; 3 uses
  %i.v = add i64 %i.u, %i.s                       ; 2 uses
  %i.w = tail call i64 @llvm.fshl.i64(i64 %i.u, i64 %i.u, i64 31)
  %i.x = xor i64 %i.w, %i.v
  %i.y = add i64 %i.v, %i.i
  %i.z = add i64 %i.k, 1
  %i.aa = add i64 %i.z, %i.x                      ; 3 uses
  %i.ab = add i64 %i.y, %i.aa                     ; 2 uses
  %i.ac = tail call i64 @llvm.fshl.i64(i64 %i.aa, i64 %i.aa, i64 16)
  %i.ad = xor i64 %i.ac, %i.ab                    ; 3 uses
  %i.ae = add i64 %i.ad, %i.ab                    ; 2 uses
  %i.af = tail call i64 @llvm.fshl.i64(i64 %i.ad, i64 %i.ad, i64 32)
  %i.ag = xor i64 %i.af, %i.ae                    ; 3 uses
  %i.ah = add i64 %i.ag, %i.ae                    ; 2 uses
  %i.ai = tail call i64 @llvm.fshl.i64(i64 %i.ag, i64 %i.ag, i64 24)
  %i.aj = xor i64 %i.ai, %i.ah                    ; 3 uses
  %i.ak = add i64 %i.aj, %i.ah                    ; 2 uses
  %i.al = tail call i64 @llvm.fshl.i64(i64 %i.aj, i64 %i.aj, i64 21)
  %i.am = xor i64 %i.al, %i.ak
  %i.an = add i64 %i.ak, %i.k
  %i.ao = add i64 %i.f, 2
  %i.ap = add i64 %i.ao, %i.am                    ; 3 uses
  %i.aq = add i64 %i.an, %i.ap                    ; 2 uses
  %i.ar = tail call i64 @llvm.fshl.i64(i64 %i.ap, i64 %i.ap, i64 16)
  %i.as = xor i64 %i.ar, %i.aq                    ; 3 uses
  %i.at = add i64 %i.as, %i.aq                    ; 2 uses
  %i.au = tail call i64 @llvm.fshl.i64(i64 %i.as, i64 %i.as, i64 42)
  %i.av = xor i64 %i.au, %i.at                    ; 3 uses
  %i.aw = add i64 %i.av, %i.at                    ; 2 uses
  %i.ax = tail call i64 @llvm.fshl.i64(i64 %i.av, i64 %i.av, i64 12)
  %i.ay = xor i64 %i.ax, %i.aw                    ; 3 uses
  %i.az = add i64 %i.ay, %i.aw                    ; 2 uses
  %i.ba = tail call i64 @llvm.fshl.i64(i64 %i.ay, i64 %i.ay, i64 31)
  %i.bb = xor i64 %i.ba, %i.az
  %i.bc = add i64 %i.az, %i.f
  %i.bd = add i64 %i.i, 3
  %i.be = add i64 %i.bd, %i.bb                    ; 3 uses
  %i.bf = add i64 %i.bc, %i.be                    ; 3 uses
  %i.bg = tail call i64 @llvm.fshl.i64(i64 %i.be, i64 %i.be, i64 16)
  %i.bh = xor i64 %i.bg, %i.bf
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.bf, ptr %i.bi, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.bh, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !12
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %i.bj = phi i64 [ %i.bf, %bb.b ], [ %.pre, %._crit_edge ]
  %i.bk = phi i32 [ 1, %bb.b ], [ %i.d, %._crit_edge ]
  store i32 %i.bk, ptr %i.a, align 8, !tbaa !15
  ret i64 %i.bj
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3gmx8internal14highBitCounter9incrementImLm2ELj64EEEvPSt5arrayIT_XT0_EE(ptr noundef %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.gmx::InternalError", align 8 ; 4 uses
  %2 = alloca %"class.gmx::ExceptionInitializer", align 8 ; 7 uses
  %3 = alloca %"class.gmx::ExceptionInfo", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !13
  %i.c = add i64 %i.b, 1                          ; 2 uses
  store i64 %i.c, ptr %i.a, align 8, !tbaa !13
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 24) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  invoke void @_ZN3gmx20ExceptionInitializerC2EPKc(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull @.str.16)
          to label %bb.c unwind label %.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN3gmx16GromacsExceptionC2ERKNS_20ExceptionInitializerE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(56) %2)
          to label %bb.d unwind label %.thread24

bb.d:                                             ; preds = %bb.c
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx13InternalErrorE, i64 16), ptr %1, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, i64 16), ptr %3, align 8, !tbaa !47
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @__PRETTY_FUNCTION__._ZN3gmx8internal14highBitCounter9incrementImLm2ELj64EEEvPSt5arrayIT_XT0_EE, ptr %i.f, align 8, !tbaa !9
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr @.str.17, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !9
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 280, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !49
  invoke void @_ZN3gmxlsINS_13InternalErrorENS_22ExceptionInfoLocation_ENS_13ThrowLocationEEENSt9enable_ifIXsr3stdE12is_base_of_vINS_16GromacsExceptionET_EES6_E4typeES6_RKNS_13ExceptionInfoIT0_T1_EE(ptr dead_on_unwind writable sret(%"class.gmx::InternalError") align 8 %i.e, ptr noundef nonnull align 8 %1, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_throw(ptr %i.e, ptr nonnull @_ZTIN3gmx13InternalErrorE, ptr nonnull @_ZN3gmx16GromacsExceptionD2Ev) #26
          to label %bb.j unwind label %bb.f

.thread:                                          ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

.thread24:                                        ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %2) #23
  br label %.sink.split

bb.f:                                             ; preds = %bb.d, %bb.e
  %.0 = phi i1 [ false, %bb.e ], [ true, %bb.d ]
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZN3gmx8internal14IExceptionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @_ZN3gmx16GromacsExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %1) #23
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br i1 %.0, label %bb.g, label %bb.h

.sink.split:                                      ; preds = %.thread, %.thread24
  %.pn.pn23.ph = phi { ptr, i32 } [ %i.h, %.thread24 ], [ %i.g, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.f
  %.pn.pn23 = phi { ptr, i32 } [ %i.i, %bb.f ], [ %.pn.pn23.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.e) #23
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn.pn22 = phi { ptr, i32 } [ %.pn.pn23, %bb.g ], [ %i.i, %bb.f ]
  resume { ptr, i32 } %.pn.pn22

bb.i:                                             ; preds = %bb.a
  ret void

bb.j:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @expf(float noundef) local_unnamed_addr #14

; Function Attrs: mustprogress uwtable
define void @_Z6gatherP5t_matfP10t_clusters(ptr nofree noundef readonly captures(none) %0, float noundef %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %struct.t_dist, align 4             ; 4 uses
  %4 = alloca %struct.t_dist, align 4             ; 4 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator", align 1    ; 3 uses
  %7 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !26   ; 17 uses
  %i.c = add nsw i32 %i.b, -1
  %i.d = mul nsw i32 %i.c, %i.b
  %.fr192 = freeze i32 %i.d                       ; 5 uses
  %i.e = sdiv i32 %.fr192, 2                      ; 3 uses
  %i.f = sext i32 %i.e to i64                     ; 3 uses
  %i.g = tail call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27, i32 noundef 217, i64 noundef range(i64 -2147483648, 2147483648) %i.f, i64 noundef 12) ; 30 uses
  %i.h = icmp sgt i32 %i.b, 0                     ; 3 uses
  br i1 %i.h, label %.lr.ph171, label %._crit_edge

.lr.ph171:                                        ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = zext nneg i32 %i.b to i64                ; 3 uses
  %wide.trip.count206 = zext nneg i32 %i.b to i64 ; 5 uses
  %scevgep = getelementptr i8, ptr %i.g, i64 8
  %i.k = mul nuw nsw i64 %wide.trip.count206, 12
  %i.l = shl nuw nsw i64 %wide.trip.count206, 2
  %i.m = getelementptr i8, ptr %i.g, i64 %i.k
  %i.n = getelementptr i8, ptr %i.m, i64 -12
  br label %bb.b

.loopexit166.loopexit:                            ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next.lcssa = phi i64 [ %i.ac, %middle.block ], [ %indvars.iv.next.lcssa260.unr, %scalar.ph.prol.loopexit ], [ %indvars.iv.next.3, %scalar.ph ]
  %i.o = trunc nsw i64 %indvars.iv.next.lcssa to i32
  br label %.loopexit166

.loopexit166:                                     ; preds = %.loopexit166.loopexit, %bb.b
  %.190.lcssa = phi i32 [ %.089170, %bb.b ], [ %i.o, %.loopexit166.loopexit ] ; 2 uses
  %indvars.iv.next197 = add nuw nsw i64 %indvars.iv196, 1
  %exitcond207.not = icmp eq i64 %indvars.iv.next204, %wide.trip.count206
  br i1 %exitcond207.not, label %._crit_edge, label %bb.b, !llvm.loop !83

bb.b:                                             ; preds = %.lr.ph171, %.loopexit166
  %indvars.iv203 = phi i64 [ 0, %.lr.ph171 ], [ %indvars.iv.next204, %.loopexit166 ] ; 6 uses
  %indvars.iv196 = phi i64 [ 1, %.lr.ph171 ], [ %indvars.iv.next197, %.loopexit166 ] ; 6 uses
  %.089170 = phi i32 [ 0, %.lr.ph171 ], [ %.190.lcssa, %.loopexit166 ] ; 2 uses
  %i.p = xor i64 %indvars.iv203, -1
  %i.q = add nsw i64 %i.p, %wide.trip.count206    ; 3 uses
  %i.r = mul nsw i64 %indvars.iv203, -12
  %scevgep251 = getelementptr i8, ptr %i.n, i64 %i.r
  %i.s = shl nuw nsw i64 %indvars.iv203, 2
  %indvars.iv.next204 = add nuw nsw i64 %indvars.iv203, 1 ; 3 uses
  %i.t = icmp samesign ult i64 %indvars.iv.next204, %i.j
  br i1 %i.t, label %.lr.ph, label %.loopexit166

.lr.ph:                                           ; preds = %bb.b
  %i.u = load ptr, ptr %i.i, align 8, !tbaa !29
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv203
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !30   ; 8 uses
  %i.x = sext i32 %.089170 to i64                 ; 5 uses
  %i.y = trunc nuw nsw i64 %indvars.iv203 to i32  ; 6 uses
  %min.iters.check = icmp ult i64 %i.q, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.z = mul nsw i64 %i.x, 12                     ; 2 uses
  %scevgep250 = getelementptr i8, ptr %scevgep, i64 %i.z
  %scevgep252 = getelementptr i8, ptr %scevgep251, i64 %i.z
  %i.aa = getelementptr nuw i8, ptr %i.w, i64 %i.s
  %scevgep253 = getelementptr nuw i8, ptr %i.aa, i64 4
  %scevgep254 = getelementptr i8, ptr %i.w, i64 %i.l
  %bound0 = icmp ult ptr %scevgep250, %scevgep254
  %bound1 = icmp ult ptr %scevgep253, %scevgep252
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.q, -8                       ; 4 uses
  %i.ab = add i64 %indvars.iv196, %n.vec
  %i.ac = add i64 %n.vec, %i.x                    ; 2 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.y, i64 0
  %i.ad = trunc i64 %indvars.iv196 to i32
  %broadcast.splatinsert255 = insertelement <8 x i32> poison, i32 %i.ad, i64 0
  %broadcast.splat256 = shufflevector <8 x i32> %broadcast.splatinsert255, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction = add <8 x i32> %broadcast.splat256, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %invariant.gep = getelementptr [12 x i8], ptr %i.g, i64 %i.x
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv196
  %i.af = bitcast <8 x i32> %broadcast.splatinsert to <8 x float>
  %i.ag = shufflevector <8 x float> %i.af, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <8 x i32> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %gep = getelementptr [12 x i8], ptr %invariant.gep, i64 %index
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %index
  %wide.load = load <8 x float>, ptr %i.ah, align 4, !tbaa !31, !alias.scope !84
  %i.ai = bitcast <8 x i32> %vec.ind to <8 x float>
  %i.aj = shufflevector <8 x float> %i.ag, <8 x float> %i.ai, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ak = shufflevector <8 x float> %wide.load, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <16 x float> %i.aj, <16 x float> %i.ak, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x float> %interleaved.vec, ptr %gep, align 4, !tbaa !12
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <8 x i32> %vec.ind, splat (i32 8)
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !87

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.q, %n.vec
  br i1 %cmp.n, label %.loopexit166.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv198.ph = phi i64 [ %indvars.iv196, %vector.memcheck ], [ %indvars.iv196, %.lr.ph ], [ %i.ab, %middle.block ] ; 4 uses
  %indvars.iv.ph = phi i64 [ %i.x, %vector.memcheck ], [ %i.x, %.lr.ph ], [ %i.ac, %middle.block ] ; 2 uses
  %i.am = sub i64 %i.j, %indvars.iv198.ph
  %xtraiter = and i64 %i.am, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv198.prol = phi i64 [ %indvars.iv.next199.prol, %scalar.ph.prol ], [ %indvars.iv198.ph, %scalar.ph.preheader ] ; 3 uses
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.an = getelementptr inbounds [12 x i8], ptr %i.g, i64 %indvars.iv.prol ; 3 uses
  store i32 %i.y, ptr %i.an, align 4, !tbaa !90
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %i.ap = trunc nuw nsw i64 %indvars.iv198.prol to i32
  store i32 %i.ap, ptr %i.ao, align 4, !tbaa !92
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv198.prol
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !31
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store float %i.ar, ptr %i.as, align 4, !tbaa !93
  %indvars.iv.next199.prol = add nuw nsw i64 %indvars.iv198.prol, 1 ; 2 uses
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, 1 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !94

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.next.lcssa260.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %indvars.iv198.unr = phi i64 [ %indvars.iv198.ph, %scalar.ph.preheader ], [ %indvars.iv.next199.prol, %scalar.ph.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.at = sub i64 %indvars.iv198.ph, %i.j
  %i.au = icmp ugt i64 %i.at, -4
  br i1 %i.au, label %.loopexit166.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv198 = phi i64 [ %indvars.iv.next199.3, %scalar.ph ], [ %indvars.iv198.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.av = getelementptr inbounds [12 x i8], ptr %i.g, i64 %indvars.iv ; 3 uses
  store i32 %i.y, ptr %i.av, align 4, !tbaa !90
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %i.ax = trunc nuw nsw i64 %indvars.iv198 to i32
  store i32 %i.ax, ptr %i.aw, align 4, !tbaa !92
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv198
  %i.az = load float, ptr %i.ay, align 4, !tbaa !31
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store float %i.az, ptr %i.ba, align 4, !tbaa !93
  %indvars.iv.next199 = add nuw nsw i64 %indvars.iv198, 1 ; 2 uses
  %i.bb = getelementptr [12 x i8], ptr %i.g, i64 %indvars.iv ; 3 uses
  %i.bc = getelementptr i8, ptr %i.bb, i64 12
  store i32 %i.y, ptr %i.bc, align 4, !tbaa !90
  %i.bd = getelementptr i8, ptr %i.bb, i64 16
  %i.be = trunc nuw nsw i64 %indvars.iv.next199 to i32
  store i32 %i.be, ptr %i.bd, align 4, !tbaa !92
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.next199
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !31
  %i.bh = getelementptr i8, ptr %i.bb, i64 20
  store float %i.bg, ptr %i.bh, align 4, !tbaa !93
  %indvars.iv.next199.1 = add nuw nsw i64 %indvars.iv198, 2 ; 2 uses
  %i.bi = getelementptr [12 x i8], ptr %i.g, i64 %indvars.iv ; 3 uses
  %i.bj = getelementptr i8, ptr %i.bi, i64 24
  store i32 %i.y, ptr %i.bj, align 4, !tbaa !90
  %i.bk = getelementptr i8, ptr %i.bi, i64 28
  %i.bl = trunc nuw nsw i64 %indvars.iv.next199.1 to i32
  store i32 %i.bl, ptr %i.bk, align 4, !tbaa !92
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.next199.1
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !31
  %i.bo = getelementptr i8, ptr %i.bi, i64 32
  store float %i.bn, ptr %i.bo, align 4, !tbaa !93
  %indvars.iv.next199.2 = add nuw nsw i64 %indvars.iv198, 3 ; 2 uses
  %i.bp = getelementptr [12 x i8], ptr %i.g, i64 %indvars.iv ; 3 uses
  %i.bq = getelementptr i8, ptr %i.bp, i64 36
  store i32 %i.y, ptr %i.bq, align 4, !tbaa !90
  %i.br = getelementptr i8, ptr %i.bp, i64 40
  %i.bs = trunc nuw nsw i64 %indvars.iv.next199.2 to i32
  store i32 %i.bs, ptr %i.br, align 4, !tbaa !92
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.next199.2
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !31
  %i.bv = getelementptr i8, ptr %i.bp, i64 44
  store float %i.bu, ptr %i.bv, align 4, !tbaa !93
  %indvars.iv.next199.3 = add nuw nsw i64 %indvars.iv198, 4 ; 2 uses
  %indvars.iv.next.3 = add nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next199.3, %wide.trip.count206
  br i1 %exitcond.not.3, label %.loopexit166.loopexit, label %scalar.ph, !llvm.loop !95

._crit_edge:                                      ; preds = %.loopexit166, %bb.a
  %.089.lcssa = phi i32 [ 0, %bb.a ], [ %.190.lcssa, %.loopexit166 ]
  %.not = icmp eq i32 %.089.lcssa, %i.e
  br i1 %.not, label %bb.i, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.29, ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA71_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 1 dereferenceable(71) @.str.27, i8 noundef zeroext 2)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  invoke void @_Z18gmx_error_functionPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSt10filesystem7__cxx114pathEi(ptr noundef nonnull @.str.28, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(40) %7, i32 noundef 229) #26
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.bx = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %7) #23
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.bx, %bb.g ], [ %i.bw, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  %i.by = load ptr, ptr %5, align 8, !tbaa !44    ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ca = icmp eq ptr %i.by, %i.bz
  br i1 %i.ca, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.cb = load i64, ptr %i.bz, align 8, !tbaa !12
  %i.cc = add i64 %i.cb, 1
  call void @_ZdlPvm(ptr noundef %i.by, i64 noundef %i.cc) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  resume { ptr, i32 } %.pn

bb.i:                                             ; preds = %._crit_edge
  %.idx = mul nsw i64 %i.f, 12                    ; 2 uses
  %i.cd = getelementptr inbounds i8, ptr %i.g, i64 %.idx ; 3 uses
  %.off = add i32 %.fr192, 1
  %.not.i.i = icmp ult i32 %.off, 3
  br i1 %.not.i.i, label %_ZSt4sortIP6t_distPFbRKS0_S3_EEvT_S6_T0_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ce = ptrtoint ptr %i.g to i64
  %i.cf = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.f, i1 true)
  %i.cg = shl nuw nsw i64 %i.cf, 1
  %i.ch = xor i64 %i.cg, 126
  tail call void @_ZSt16__introsort_loopIP6t_distlN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS0_S6_EEEEvT_SA_T0_T1_(ptr noundef %i.g, ptr noundef %i.cd, i64 noundef %i.ch, ptr nonnull @_ZL13rms_dist_compRK6t_distS1_)
  %i.ci = icmp sgt i32 %.fr192, 33
  br i1 %i.ci, label %bb.k, label %bb.r

bb.k:                                             ; preds = %bb.j
  %scevgep.i = getelementptr i8, ptr %i.g, i64 12
  %i.cj = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  br label %bb.l

bb.l:                                             ; preds = %bb.q, %bb.k
  %.020.i.idx.i = phi i64 [ 12, %bb.k ], [ %.020.i.add.i, %bb.q ] ; 4 uses
  %.pn19.i.i = phi ptr [ %i.g, %bb.k ], [ %.020.i.ptr.i, %bb.q ] ; 3 uses
  %.020.i.ptr.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %.020.i.idx.i ; 6 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.020.i.ptr.i, i64 8
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !93 ; 4 uses
  %i.cm = load float, ptr %i.cj, align 4, !tbaa !93
  %i.cn = fcmp olt float %i.cl, %i.cm
  br i1 %i.cn, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef nonnull align 4 dereferenceable(12) %.020.i.ptr.i, i64 12, i1 false), !tbaa.struct !96
  %i.co = icmp samesign ugt i64 %.020.i.idx.i, 12
  br i1 %i.co, label %bb.n, label %bb.o, !prof !97

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i, ptr noundef nonnull align 4 dereferenceable(1) %i.g, i64 %.020.i.idx.i, i1 false)
  br label %_ZSt13move_backwardIP6t_distS1_ET0_T_S3_S2_.exit.i.i

bb.o:                                             ; preds = %bb.m
  %i.cp = getelementptr inbounds nuw i8, ptr %.pn19.i.i, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cp, ptr noundef nonnull align 4 dereferenceable(12) %i.g, i64 12, i1 false), !tbaa.struct !96
  br label %_ZSt13move_backwardIP6t_distS1_ET0_T_S3_S2_.exit.i.i

_ZSt13move_backwardIP6t_distS1_ET0_T_S3_S2_.exit.i.i: ; preds = %bb.o, %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.g, ptr noundef nonnull align 4 dereferenceable(12) %4, i64 12, i1 false), !tbaa.struct !96
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.q

bb.p:                                             ; preds = %bb.l
  %i.cq = load i64, ptr %.020.i.ptr.i, align 4
  %i.cr = getelementptr inbounds nuw i8, ptr %.pn19.i.i, i64 8
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !93
  %i.ct = fcmp olt float %i.cl, %i.cs
  br i1 %i.ct, label %.lr.ph.i.i.i, label %_ZSt25__unguarded_linear_insertIP6t_distN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.p, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.0.i.i.i, %.lr.ph.i.i.i ], [ %.pn19.i.i, %bb.p ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %.012.i.i.i, %.lr.ph.i.i.i ], [ %.020.i.ptr.i, %bb.p ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i, i64 12, i1 false), !tbaa.struct !96
  %.0.i.i.i = getelementptr inbounds i8, ptr %.012.i.i.i, i64 -12
  %i.cu = getelementptr inbounds i8, ptr %.012.i.i.i, i64 -4
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !93
  %i.cw = fcmp olt float %i.cl, %i.cv
  br i1 %i.cw, label %.lr.ph.i.i.i, label %_ZSt25__unguarded_linear_insertIP6t_distN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i.i, !llvm.loop !98

_ZSt25__unguarded_linear_insertIP6t_distN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.p
  %.09.lcssa.i.i.i = phi ptr [ %.020.i.ptr.i, %bb.p ], [ %.012.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  store i64 %i.cq, ptr %.09.lcssa.i.i.i, align 4
  %.sroa.4.0..09.lcssa.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i.i, i64 8
  store float %i.cl, ptr %.sroa.4.0..09.lcssa.i.i.i.sroa_idx, align 4, !tbaa !31
  br label %bb.q

bb.q:                                             ; preds = %_ZSt25__unguarded_linear_insertIP6t_distN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i.i, %_ZSt13move_backwardIP6t_distS1_ET0_T_S3_S2_.exit.i.i
  %.020.i.add.i = add nuw nsw i64 %.020.i.idx.i, 12 ; 2 uses
  %.not.i.i103 = icmp eq i64 %.020.i.add.i, 192
  br i1 %.not.i.i103, label %.lr.ph.i.i.preheader, label %bb.l, !llvm.loop !99

.lr.ph.i.i.preheader:                             ; preds = %bb.q
  %i.cx = getelementptr inbounds nuw i8, ptr %i.g, i64 192 ; 4 uses
  %i.cy = add nsw i64 %.idx, -204                 ; 2 uses
  %i.cz = udiv i64 %i.cy, 12
  %i.da = and i64 %i.cz, 1
  %lcmp.mod262.not.not = icmp eq i64 %i.da, 0
  br i1 %lcmp.mod262.not.not, label %.lr.ph.i.i.prol, label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader
  %i.db = load i64, ptr %i.cx, align 4
  %.sroa.4145.0..08.i.i.sroa_idx.prol = getelementptr inbounds nuw i8, ptr %i.g, i64 200
  %.sroa.4145.0.copyload.prol = load float, ptr %.sroa.4145.0..08.i.i.sroa_idx.prol, align 4, !tbaa !31 ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.g, i64 188
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !93
  %i.de = fcmp olt float %.sroa.4145.0.copyload.prol, %i.dd
  br i1 %i.de, label %.lr.ph.i.i14.i.prol, label %_ZSt25__unguarded_linear_insertIP6t_distN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i11.i.prol

.lr.ph.i.i14.i.prol:                              ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i14.i.prol
  %.0911.i.i16.i.prol = phi ptr [ %.012.i.i15.i.prol, %.lr.ph.i.i14.i.prol ], [ %i.cx, %.lr.ph.i.i.prol ] ; 3 uses
  %.012.i.i15.i.prol = getelementptr inbounds i8, ptr %.0911.i.i16.i.prol, i64 -12 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i16.i.prol, ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i15.i.prol, i64 12, i1 false), !tbaa.struct !96
  %i.df = getelementptr inbounds i8, ptr %.0911.i.i16.i.prol, i64 -16
  %i.dg = load float, ptr %i.df, align 4, !tbaa !93
  %i.dh = fcmp olt float %.sroa.4145.0.copyload.prol, %i.dg
  br i1 %i.dh, label %.lr.ph.i.i14.i.prol, label %_ZSt25__unguarded_linear_insertIP6t_distN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i11.i.prol, !llvm.loop !98

_ZSt25__unguarded_linear_insertIP6t_distN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i11.i.prol: ; preds = %.lr.ph.i.i14.i.prol, %.lr.ph.i.i.prol
  %.09.lcssa.i.i12.i.prol = phi ptr [ %i.cx, %.lr.ph.i.i.prol ], [ %.012.i.i15.i.prol, %.lr.ph.i.i14.i.prol ] ; 2 uses
  store i64 %i.db, ptr %.09.lcssa.i.i12.i.prol, align 4
  %.sroa.4145.0..09.lcssa.i.i12.i.sroa_idx.prol = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i12.i.prol, i64 8
  store float %.sroa.4145.0.copyload.prol, ptr %.sroa.4145.0..09.lcssa.i.i12.i.sroa_idx.prol, align 4, !tbaa !31
  %i.di = getelementptr inbounds nuw i8, ptr %i.g, i64 204
  br label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol.loopexit:                         ; preds = %_ZSt25__unguarded_linear_insertIP6t_distN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i11.i.prol, %.lr.ph.i.i.preheader
  %.08.i.i.unr = phi ptr [ %i.cx, %.lr.ph.i.i.preheader ], [ %i.di, %_ZSt25__unguarded_linear_insertIP6t_distN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i11.i.prol ]
  %i.dj = icmp ult i64 %i.cy, 12
  br i1 %i.dj, label %_ZSt4sortIP6t_distPFbRKS0_S3_EEvT_S6_T0_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %_ZSt25__unguarded_linear_insertIP6t_distN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i11.i.1
  %.08.i.i = phi ptr [ %i.dz, %_ZSt25__unguarded_linear_insertIP6t_distN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i11.i.1 ], [ %.08.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 9 uses
  %i.dk = load i64, ptr %.08.i.i, align 4
  %.sroa.4145.0..08.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 8
  %.sroa.4145.0.copyload = load float, ptr %.sroa.4145.0..08.i.i.sroa_idx, align 4, !tbaa !31 ; 3 uses
  %i.dl = getelementptr inbounds i8, ptr %.08.i.i, i64 -4
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !93
  %i.dn = fcmp olt float %.sroa.4145.0.copyload, %i.dm
  br i1 %i.dn, label %.lr.ph.i.i14.i, label %_ZSt25__unguarded_linear_insertIP6t_distN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i11.i

.lr.ph.i.i14.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i14.i
  %.0911.i.i16.i = phi ptr [ %.012.i.i15.i, %.lr.ph.i.i14.i ], [ %.08.i.i, %.lr.ph.i.i ] ; 3 uses
  %.012.i.i15.i = getelementptr inbounds i8, ptr %.0911.i.i16.i, i64 -12 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i16.i, ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i15.i, i64 12, i1 false), !tbaa.struct !96
  %i.do = getelementptr inbounds i8, ptr %.0911.i.i16.i, i64 -16
  %i.dp = load float, ptr %i.do, align 4, !tbaa !93
  %i.dq = fcmp olt float %.sroa.4145.0.copyload, %i.dp
  br i1 %i.dq, label %.lr.ph.i.i14.i, label %_ZSt25__unguarded_linear_insertIP6t_distN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i11.i, !llvm.loop !98

_ZSt25__unguarded_linear_insertIP6t_distN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i11.i: ; preds = %.lr.ph.i.i14.i, %.lr.ph.i.i
  %.09.lcssa.i.i12.i = phi ptr [ %.08.i.i, %.lr.ph.i.i ], [ %.012.i.i15.i, %.lr.ph.i.i14.i ] ; 2 uses
  store i64 %i.dk, ptr %.09.lcssa.i.i12.i, align 4
  %.sroa.4145.0..09.lcssa.i.i12.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i12.i, i64 8
  store float %.sroa.4145.0.copyload, ptr %.sroa.4145.0..09.lcssa.i.i12.i.sroa_idx, align 4, !tbaa !31
  %i.dr = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 12 ; 3 uses
  %i.ds = load i64, ptr %i.dr, align 4
  %.sroa.4145.0..08.i.i.sroa_idx.1 = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 20
  %.sroa.4145.0.copyload.1 = load float, ptr %.sroa.4145.0..08.i.i.sroa_idx.1, align 4, !tbaa !31 ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 8
  %i.du = load float, ptr %i.dt, align 4, !tbaa !93
  %i.dv = fcmp olt float %.sroa.4145.0.copyload.1, %i.du
  br i1 %i.dv, label %.lr.ph.i.i14.i.1, label %_ZSt25__unguarded_linear_insertIP6t_distN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i11.i.1

.lr.ph.i.i14.i.1:                                 ; preds = %_ZSt25__unguarded_linear_insertIP6t_distN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i11.i, %.lr.ph.i.i14.i.1
  %.0911.i.i16.i.1 = phi ptr [ %.012.i.i15.i.1, %.lr.ph.i.i14.i.1 ], [ %i.dr, %_ZSt25__unguarded_linear_insertIP6t_distN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i11.i ] ; 3 uses
  %.012.i.i15.i.1 = getelementptr inbounds i8, ptr %.0911.i.i16.i.1, i64 -12 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i16.i.1, ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i15.i.1, i64 12, i1 false), !tbaa.struct !96
  %i.dw = getelementptr inbounds i8, ptr %.0911.i.i16.i.1, i64 -16
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !93
  %i.dy = fcmp olt float %.sroa.4145.0.copyload.1, %i.dx
  br i1 %i.dy, label %.lr.ph.i.i14.i.1, label %_ZSt25__unguarded_linear_insertIP6t_distN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i11.i.1, !llvm.loop !98

_ZSt25__unguarded_linear_insertIP6t_distN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i11.i.1: ; preds = %.lr.ph.i.i14.i.1, %_ZSt25__unguarded_linear_insertIP6t_distN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i11.i
  %.09.lcssa.i.i12.i.1 = phi ptr [ %i.dr, %_ZSt25__unguarded_linear_insertIP6t_distN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i11.i ], [ %.012.i.i15.i.1, %.lr.ph.i.i14.i.1 ] ; 2 uses
  store i64 %i.ds, ptr %.09.lcssa.i.i12.i.1, align 4
  %.sroa.4145.0..09.lcssa.i.i12.i.sroa_idx.1 = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i12.i.1, i64 8
  store float %.sroa.4145.0.copyload.1, ptr %.sroa.4145.0..09.lcssa.i.i12.i.sroa_idx.1, align 4, !tbaa !31
  %i.dz = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 24 ; 2 uses
  %.not.i13.i.1 = icmp eq ptr %i.dz, %i.cd
  br i1 %.not.i13.i.1, label %_ZSt4sortIP6t_distPFbRKS0_S3_EEvT_S6_T0_.exit, label %.lr.ph.i.i, !llvm.loop !100

bb.r:                                             ; preds = %bb.j
  %i.ea = and i32 %.fr192, -2
  %.not18.i.i = icmp eq i32 %i.ea, 2
  br i1 %.not18.i.i, label %_ZSt4sortIP6t_distPFbRKS0_S3_EEvT_S6_T0_.exit, label %.lr.ph.i19.i.preheader

.lr.ph.i19.i.preheader:                           ; preds = %bb.r
  %.017.i18.i = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.eb = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  br label %.lr.ph.i19.i

.lr.ph.i19.i:                                     ; preds = %.lr.ph.i19.i.preheader, %bb.x
  %.020.i20.i = phi ptr [ %.0.i24.i, %bb.x ], [ %.017.i18.i, %.lr.ph.i19.i.preheader ] ; 8 uses
  %.pn19.i21.i = phi ptr [ %.020.i20.i, %bb.x ], [ %i.g, %.lr.ph.i19.i.preheader ] ; 4 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.020.i20.i, i64 8
  %i.ed = load float, ptr %i.ec, align 4, !tbaa !93 ; 4 uses
  %i.ee = load float, ptr %i.eb, align 4, !tbaa !93
  %i.ef = fcmp olt float %i.ed, %i.ee
  br i1 %i.ef, label %bb.s, label %bb.w

bb.s:                                             ; preds = %.lr.ph.i19.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 4 dereferenceable(12) %.020.i20.i, i64 12, i1 false), !tbaa.struct !96
  %i.eg = ptrtoint ptr %.020.i20.i to i64
  %i.eh = sub i64 %i.eg, %i.ce                    ; 4 uses
  %i.ei = icmp sgt i64 %i.eh, 12
  br i1 %i.ei, label %bb.t, label %bb.u, !prof !97

bb.t:                                             ; preds = %bb.s
  %8 = getelementptr inbounds nuw i8, ptr %.pn19.i21.i, i64 24
  %.neg25.i31.i = udiv exact i64 %i.eh, 12
  %.neg25.neg.i32.i = sub nsw i64 0, %.neg25.i31.i
  %9 = getelementptr inbounds [12 x i8], ptr %8, i64 %.neg25.neg.i32.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %9, ptr noundef nonnull align 4 dereferenceable(1) %i.g, i64 %i.eh, i1 false)
  br label %_ZSt13move_backwardIP6t_distS1_ET0_T_S3_S2_.exit.i30.i

bb.u:                                             ; preds = %bb.s
  %i.ej = icmp eq i64 %i.eh, 12
  br i1 %i.ej, label %bb.v, label %_ZSt13move_backwardIP6t_distS1_ET0_T_S3_S2_.exit.i30.i

bb.v:                                             ; preds = %bb.u
  %i.ek = getelementptr inbounds nuw i8, ptr %.pn19.i21.i, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ek, ptr noundef nonnull align 4 dereferenceable(12) %i.g, i64 12, i1 false), !tbaa.struct !96
  br label %_ZSt13move_backwardIP6t_distS1_ET0_T_S3_S2_.exit.i30.i

_ZSt13move_backwardIP6t_distS1_ET0_T_S3_S2_.exit.i30.i: ; preds = %bb.v, %bb.u, %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.g, ptr noundef nonnull align 4 dereferenceable(12) %3, i64 12, i1 false), !tbaa.struct !96
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.x

bb.w:                                             ; preds = %.lr.ph.i19.i
  %i.el = load i64, ptr %.020.i20.i, align 4
  %i.em = getelementptr inbounds nuw i8, ptr %.pn19.i21.i, i64 8
  %i.en = load float, ptr %i.em, align 4, !tbaa !93
  %i.eo = fcmp olt float %i.ed, %i.en
  br i1 %i.eo, label %.lr.ph.i.i26.i, label %_ZSt25__unguarded_linear_insertIP6t_distN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i22.i

.lr.ph.i.i26.i:                                   ; preds = %bb.w, %.lr.ph.i.i26.i
  %.012.i.i27.i = phi ptr [ %.0.i.i29.i, %.lr.ph.i.i26.i ], [ %.pn19.i21.i, %bb.w ] ; 5 uses
  %.0911.i.i28.i = phi ptr [ %.012.i.i27.i, %.lr.ph.i.i26.i ], [ %.020.i20.i, %bb.w ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i28.i, ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i27.i, i64 12, i1 false), !tbaa.struct !96
  %.0.i.i29.i = getelementptr inbounds i8, ptr %.012.i.i27.i, i64 -12
  %i.ep = getelementptr inbounds i8, ptr %.012.i.i27.i, i64 -4
  %i.eq = load float, ptr %i.ep, align 4, !tbaa !93
  %i.er = fcmp olt float %i.ed, %i.eq
  br i1 %i.er, label %.lr.ph.i.i26.i, label %_ZSt25__unguarded_linear_insertIP6t_distN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i22.i, !llvm.loop !98

_ZSt25__unguarded_linear_insertIP6t_distN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i22.i: ; preds = %.lr.ph.i.i26.i, %bb.w
  %.09.lcssa.i.i23.i = phi ptr [ %.020.i20.i, %bb.w ], [ %.012.i.i27.i, %.lr.ph.i.i26.i ] ; 2 uses
  store i64 %i.el, ptr %.09.lcssa.i.i23.i, align 4
  %.sroa.4149.0..09.lcssa.i.i23.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i23.i, i64 8
  store float %i.ed, ptr %.sroa.4149.0..09.lcssa.i.i23.i.sroa_idx, align 4, !tbaa !31
  br label %bb.x

bb.x:                                             ; preds = %_ZSt25__unguarded_linear_insertIP6t_distN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i22.i, %_ZSt13move_backwardIP6t_distS1_ET0_T_S3_S2_.exit.i30.i
  %.0.i24.i = getelementptr inbounds nuw i8, ptr %.020.i20.i, i64 12 ; 2 uses
  %.not.i25.i = icmp eq ptr %.0.i24.i, %i.cd
  br i1 %.not.i25.i, label %_ZSt4sortIP6t_distPFbRKS0_S3_EEvT_S6_T0_.exit, label %.lr.ph.i19.i, !llvm.loop !99

_ZSt4sortIP6t_distPFbRKS0_S3_EEvT_S6_T0_.exit:    ; preds = %bb.x, %.lr.ph.i.i.prol.loopexit, %_ZSt25__unguarded_linear_insertIP6t_distN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i11.i.1, %bb.r, %bb.i
  %i.es = tail call noundef ptr @_Z11new_clustidi(i32 noundef %i.b) ; 42 uses
  %i.et = load ptr, ptr @stderr, align 8, !tbaa !27
  %i.eu = tail call i64 @fwrite(ptr nonnull @.str.30, i64 19, i64 1, ptr %i.et) #24 ; 0 uses
  %i.ev = icmp sgt i32 %.fr192, 1
  br i1 %i.ev, label %.lr.ph176.us.preheader, label %.critedge

.lr.ph176.us.preheader:                           ; preds = %_ZSt4sortIP6t_distPFbRKS0_S3_EEvT_S6_T0_.exit
  %wide.trip.count210 = zext nneg i32 %i.e to i64
  br label %.lr.ph176.us

.lr.ph176.us:                                     ; preds = %.lr.ph176.us.preheader, %.critedge.us
  %i.ew = load ptr, ptr @stderr, align 8, !tbaa !27
  %fputc.us = tail call i32 @fputc(i32 42, ptr %i.ew) ; 0 uses
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph176.us, %bb.ad
  %indvars.iv208 = phi i64 [ 0, %.lr.ph176.us ], [ %indvars.iv.next209, %bb.ad ] ; 2 uses
  %.085174.us = phi i1 [ false, %.lr.ph176.us ], [ %.186.us, %bb.ad ] ; 2 uses
  %i.ex = getelementptr inbounds nuw [12 x i8], ptr %i.g, i64 %indvars.iv208 ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.ez = load float, ptr %i.ey, align 4, !tbaa !93
  %i.fa = fcmp olt float %i.ez, %1
  br i1 %i.fa, label %bb.z, label %.critedge.us

bb.z:                                             ; preds = %bb.y
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ex, i64 4
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !92
  %i.fd = sext i32 %i.fc to i64
  %i.fe = getelementptr inbounds [8 x i8], ptr %i.es, i64 %i.fd
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 4 ; 2 uses
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !101 ; 3 uses
  %i.fh = load i32, ptr %i.ex, align 4, !tbaa !90
  %i.fi = sext i32 %i.fh to i64
  %i.fj = getelementptr inbounds [8 x i8], ptr %i.es, i64 %i.fi
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 4 ; 2 uses
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !101 ; 3 uses
  %.not99.us = icmp eq i32 %i.fg, %i.fl
  br i1 %.not99.us, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fm = icmp sgt i32 %i.fg, %i.fl
  br i1 %i.fm, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store i32 %i.fg, ptr %i.fk, align 4, !tbaa !101
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  store i32 %i.fl, ptr %i.ff, align 4, !tbaa !101
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.z
  %.186.us = phi i1 [ true, %bb.ac ], [ true, %bb.ab ], [ %.085174.us, %bb.z ] ; 2 uses
  %indvars.iv.next209 = add nuw nsw i64 %indvars.iv208, 1 ; 2 uses
  %exitcond211.not = icmp eq i64 %indvars.iv.next209, %wide.trip.count210
  br i1 %exitcond211.not, label %.critedge.us, label %bb.y, !llvm.loop !103

.critedge.us:                                     ; preds = %bb.ad, %bb.y
  %.085.lcssa.us = phi i1 [ %.085174.us, %bb.y ], [ %.186.us, %bb.ad ]
  br i1 %.085.lcssa.us, label %.lr.ph176.us, label %.split.us, !llvm.loop !104

.critedge:                                        ; preds = %_ZSt4sortIP6t_distPFbRKS0_S3_EEvT_S6_T0_.exit
  %i.fn = load ptr, ptr @stderr, align 8, !tbaa !27
  %fputc = tail call i32 @fputc(i32 42, ptr %i.fn) ; 0 uses
  br label %.split.us

.split.us:                                        ; preds = %.critedge.us, %.critedge
  %i.fo = load ptr, ptr @stderr, align 8, !tbaa !27
  %i.fp = tail call i64 @fwrite(ptr nonnull @.str.32, i64 34, i64 1, ptr %i.fo) #24 ; 0 uses
  %i.fq = sext i32 %i.b to i64                    ; 2 uses
  %.idx163 = shl nsw i64 %i.fq, 3                 ; 2 uses
  %i.fr = getelementptr inbounds i8, ptr %i.es, i64 %.idx163 ; 3 uses
  %.not.i.i102 = icmp eq i32 %i.b, 0
  br i1 %.not.i.i102, label %.loopexit.thread244, label %bb.ae

.loopexit.thread244:                              ; preds = %.split.us
  %i.fs = getelementptr i8, ptr %i.es, i64 4
  store i32 1, ptr %i.fs, align 4, !tbaa !101
  store i32 1, ptr %2, align 8, !tbaa !105
  br label %._crit_edge191

bb.ae:                                            ; preds = %.split.us
  %i.ft = ptrtoint ptr %i.es to i64
  %i.fu = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.fq, i1 true)
  %i.fv = shl nuw nsw i64 %i.fu, 1
  %i.fw = xor i64 %i.fv, 126
  tail call void @_ZSt16__introsort_loopIP9t_clustidlN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS0_S6_EEEEvT_SA_T0_T1_(ptr noundef %i.es, ptr noundef nonnull %i.fr, i64 noundef %i.fw, ptr nonnull @_ZL13clust_id_compRK9t_clustidS1_)
  %i.fx = icmp sgt i32 %i.b, 16
  br i1 %i.fx, label %bb.af, label %bb.al

bb.af:                                            ; preds = %bb.ae
  %scevgep.i117 = getelementptr i8, ptr %i.es, i64 8
  %i.fy = getelementptr inbounds nuw i8, ptr %i.es, i64 4
  br label %bb.ag

bb.ag:                                            ; preds = %_ZSt13move_backwardIP9t_clustidS1_ET0_T_S3_S2_.exit.i.i, %bb.af
  %.020.i.idx.i118 = phi i64 [ 8, %bb.af ], [ %.020.i.add.i122, %_ZSt13move_backwardIP9t_clustidS1_ET0_T_S3_S2_.exit.i.i ] ; 4 uses
  %.pn19.i.i119 = phi ptr [ %i.es, %bb.af ], [ %.020.i.ptr.i120, %_ZSt13move_backwardIP9t_clustidS1_ET0_T_S3_S2_.exit.i.i ] ; 3 uses
  %.020.i.ptr.i120 = getelementptr inbounds nuw i8, ptr %i.es, i64 %.020.i.idx.i118 ; 5 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %.020.i.ptr.i120, i64 4
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !101
  %i.gb = load i32, ptr %i.fy, align 4, !tbaa !101
  %i.gc = icmp slt i32 %i.ga, %i.gb
  %i.gd = load i64, ptr %.020.i.ptr.i120, align 4 ; 2 uses
  br i1 %i.gc, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  %i.ge = icmp samesign ugt i64 %.020.i.idx.i118, 8
  br i1 %i.ge, label %bb.ai, label %bb.aj, !prof !97

bb.ai:                                            ; preds = %bb.ah
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i117, ptr noundef nonnull align 4 dereferenceable(1) %i.es, i64 %.020.i.idx.i118, i1 false)
  br label %_ZSt13move_backwardIP9t_clustidS1_ET0_T_S3_S2_.exit.i.i

bb.aj:                                            ; preds = %bb.ah
  %i.gf = getelementptr inbounds nuw i8, ptr %.pn19.i.i119, i64 8
  %i.gg = load i64, ptr %i.es, align 4
  store i64 %i.gg, ptr %i.gf, align 4
  br label %_ZSt13move_backwardIP9t_clustidS1_ET0_T_S3_S2_.exit.i.i

bb.ak:                                            ; preds = %bb.ag
  %.sroa.4153.0.extract.shift = lshr i64 %i.gd, 32
  %.sroa.4153.0.extract.trunc = trunc nuw i64 %.sroa.4153.0.extract.shift to i32 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.pn19.i.i119, i64 4
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !101
  %i.gj = icmp sgt i32 %i.gi, %.sroa.4153.0.extract.trunc
  br i1 %i.gj, label %.lr.ph.i.i.i134, label %_ZSt13move_backwardIP9t_clustidS1_ET0_T_S3_S2_.exit.i.i

.lr.ph.i.i.i134:                                  ; preds = %bb.ak, %.lr.ph.i.i.i134
  %.012.i.i.i135 = phi ptr [ %.0.i.i.i137, %.lr.ph.i.i.i134 ], [ %.pn19.i.i119, %bb.ak ] ; 5 uses
  %.0911.i.i.i136 = phi ptr [ %.012.i.i.i135, %.lr.ph.i.i.i134 ], [ %.020.i.ptr.i120, %bb.ak ]
  %i.gk = load i64, ptr %.012.i.i.i135, align 4
  store i64 %i.gk, ptr %.0911.i.i.i136, align 4
  %.0.i.i.i137 = getelementptr inbounds i8, ptr %.012.i.i.i135, i64 -8
  %i.gl = getelementptr inbounds i8, ptr %.012.i.i.i135, i64 -4
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !101
  %i.gn = icmp sgt i32 %i.gm, %.sroa.4153.0.extract.trunc
  br i1 %i.gn, label %.lr.ph.i.i.i134, label %_ZSt13move_backwardIP9t_clustidS1_ET0_T_S3_S2_.exit.i.i, !llvm.loop !107

_ZSt13move_backwardIP9t_clustidS1_ET0_T_S3_S2_.exit.i.i: ; preds = %.lr.ph.i.i.i134, %bb.ak, %bb.ai, %bb.aj
  %.09.lcssa.i.i.i121.sink = phi ptr [ %i.es, %bb.ai ], [ %i.es, %bb.aj ], [ %.020.i.ptr.i120, %bb.ak ], [ %.012.i.i.i135, %.lr.ph.i.i.i134 ]
  store i64 %i.gd, ptr %.09.lcssa.i.i.i121.sink, align 4
  %.020.i.add.i122 = add nuw nsw i64 %.020.i.idx.i118, 8 ; 2 uses
  %.not.i.i123 = icmp eq i64 %.020.i.add.i122, 128
  br i1 %.not.i.i123, label %_ZSt16__insertion_sortIP9t_clustidN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS0_S6_EEEEvT_SA_T0_.exit.i, label %bb.ag, !llvm.loop !108

_ZSt16__insertion_sortIP9t_clustidN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS0_S6_EEEEvT_SA_T0_.exit.i: ; preds = %_ZSt13move_backwardIP9t_clustidS1_ET0_T_S3_S2_.exit.i.i
  %i.go = getelementptr inbounds nuw i8, ptr %i.es, i64 128 ; 4 uses
  %i.gp = add nsw i64 %.idx163, -136              ; 2 uses
  %i.gq = and i64 %i.gp, 8
  %lcmp.mod265.not.not = icmp eq i64 %i.gq, 0
  br i1 %lcmp.mod265.not.not, label %.lr.ph.i.i125.prol, label %.lr.ph.i.i125.prol.loopexit

.lr.ph.i.i125.prol:                               ; preds = %_ZSt16__insertion_sortIP9t_clustidN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS0_S6_EEEEvT_SA_T0_.exit.i
end_hunk_1
begin_hunk_2_@_Z6gatherP5t_matfP10t_clusters:bb.a
  %.sroa.4156.0.extract.shift.prol = lshr i64 %i.gr, 32
  %.sroa.4156.0.extract.trunc.prol = trunc nuw i64 %.sroa.4156.0.extract.shift.prol to i32 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.es, i64 124
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !101
  %i.gu = icmp sgt i32 %i.gt, %.sroa.4156.0.extract.trunc.prol
  br i1 %i.gu, label %.lr.ph.i.i14.i130.prol, label %_ZSt25__unguarded_linear_insertIP9t_clustidN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i11.i.prol

.lr.ph.i.i14.i130.prol:                           ; preds = %.lr.ph.i.i125.prol, %.lr.ph.i.i14.i130.prol
  %.0911.i.i16.i132.prol = phi ptr [ %.012.i.i15.i131.prol, %.lr.ph.i.i14.i130.prol ], [ %i.go, %.lr.ph.i.i125.prol ] ; 3 uses
  %.012.i.i15.i131.prol = getelementptr inbounds i8, ptr %.0911.i.i16.i132.prol, i64 -8 ; 3 uses
  %i.gv = load i64, ptr %.012.i.i15.i131.prol, align 4
  store i64 %i.gv, ptr %.0911.i.i16.i132.prol, align 4
  %i.gw = getelementptr inbounds i8, ptr %.0911.i.i16.i132.prol, i64 -12
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !101
  %i.gy = icmp sgt i32 %i.gx, %.sroa.4156.0.extract.trunc.prol
  br i1 %i.gy, label %.lr.ph.i.i14.i130.prol, label %_ZSt25__unguarded_linear_insertIP9t_clustidN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i11.i.prol, !llvm.loop !107

_ZSt25__unguarded_linear_insertIP9t_clustidN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i11.i.prol: ; preds = %.lr.ph.i.i14.i130.prol, %.lr.ph.i.i125.prol
  %.09.lcssa.i.i12.i128.prol = phi ptr [ %i.go, %.lr.ph.i.i125.prol ], [ %.012.i.i15.i131.prol, %.lr.ph.i.i14.i130.prol ]
  store i64 %i.gr, ptr %.09.lcssa.i.i12.i128.prol, align 4
  %i.gz = getelementptr inbounds nuw i8, ptr %i.es, i64 136
  br label %.lr.ph.i.i125.prol.loopexit

.lr.ph.i.i125.prol.loopexit:                      ; preds = %_ZSt25__unguarded_linear_insertIP9t_clustidN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i11.i.prol, %_ZSt16__insertion_sortIP9t_clustidN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS0_S6_EEEEvT_SA_T0_.exit.i
  %.08.i.i126.unr = phi ptr [ %i.go, %_ZSt16__insertion_sortIP9t_clustidN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS0_S6_EEEEvT_SA_T0_.exit.i ], [ %i.gz, %_ZSt25__unguarded_linear_insertIP9t_clustidN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i11.i.prol ]
  %i.ha = icmp eq i64 %i.gp, 0
  br i1 %i.ha, label %_ZSt4sortIP9t_clustidPFbRKS0_S3_EEvT_S6_T0_.exit, label %.lr.ph.i.i125

.lr.ph.i.i125:                                    ; preds = %.lr.ph.i.i125.prol.loopexit, %_ZSt25__unguarded_linear_insertIP9t_clustidN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i11.i.1
  %.08.i.i126 = phi ptr [ %i.hs, %_ZSt25__unguarded_linear_insertIP9t_clustidN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i11.i.1 ], [ %.08.i.i126.unr, %.lr.ph.i.i125.prol.loopexit ] ; 7 uses
  %i.hb = load i64, ptr %.08.i.i126, align 4      ; 2 uses
  %.sroa.4156.0.extract.shift = lshr i64 %i.hb, 32
  %.sroa.4156.0.extract.trunc = trunc nuw i64 %.sroa.4156.0.extract.shift to i32 ; 2 uses
  %i.hc = getelementptr inbounds i8, ptr %.08.i.i126, i64 -4
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !101
  %i.he = icmp sgt i32 %i.hd, %.sroa.4156.0.extract.trunc
  br i1 %i.he, label %.lr.ph.i.i14.i130, label %_ZSt25__unguarded_linear_insertIP9t_clustidN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i11.i

.lr.ph.i.i14.i130:                                ; preds = %.lr.ph.i.i125, %.lr.ph.i.i14.i130
  %.0911.i.i16.i132 = phi ptr [ %.012.i.i15.i131, %.lr.ph.i.i14.i130 ], [ %.08.i.i126, %.lr.ph.i.i125 ] ; 3 uses
  %.012.i.i15.i131 = getelementptr inbounds i8, ptr %.0911.i.i16.i132, i64 -8 ; 3 uses
  %i.hf = load i64, ptr %.012.i.i15.i131, align 4
  store i64 %i.hf, ptr %.0911.i.i16.i132, align 4
  %i.hg = getelementptr inbounds i8, ptr %.0911.i.i16.i132, i64 -12
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !101
  %i.hi = icmp sgt i32 %i.hh, %.sroa.4156.0.extract.trunc
  br i1 %i.hi, label %.lr.ph.i.i14.i130, label %_ZSt25__unguarded_linear_insertIP9t_clustidN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i11.i, !llvm.loop !107

_ZSt25__unguarded_linear_insertIP9t_clustidN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i11.i: ; preds = %.lr.ph.i.i14.i130, %.lr.ph.i.i125
  %.09.lcssa.i.i12.i128 = phi ptr [ %.08.i.i126, %.lr.ph.i.i125 ], [ %.012.i.i15.i131, %.lr.ph.i.i14.i130 ]
  store i64 %i.hb, ptr %.09.lcssa.i.i12.i128, align 4
  %i.hj = getelementptr inbounds nuw i8, ptr %.08.i.i126, i64 8 ; 3 uses
  %i.hk = load i64, ptr %i.hj, align 4            ; 2 uses
  %.sroa.4156.0.extract.shift.1 = lshr i64 %i.hk, 32
  %.sroa.4156.0.extract.trunc.1 = trunc nuw i64 %.sroa.4156.0.extract.shift.1 to i32 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %.08.i.i126, i64 4
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !101
  %i.hn = icmp sgt i32 %i.hm, %.sroa.4156.0.extract.trunc.1
  br i1 %i.hn, label %.lr.ph.i.i14.i130.1, label %_ZSt25__unguarded_linear_insertIP9t_clustidN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i11.i.1

.lr.ph.i.i14.i130.1:                              ; preds = %_ZSt25__unguarded_linear_insertIP9t_clustidN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i11.i, %.lr.ph.i.i14.i130.1
  %.0911.i.i16.i132.1 = phi ptr [ %.012.i.i15.i131.1, %.lr.ph.i.i14.i130.1 ], [ %i.hj, %_ZSt25__unguarded_linear_insertIP9t_clustidN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i11.i ] ; 3 uses
  %.012.i.i15.i131.1 = getelementptr inbounds i8, ptr %.0911.i.i16.i132.1, i64 -8 ; 3 uses
  %i.ho = load i64, ptr %.012.i.i15.i131.1, align 4
  store i64 %i.ho, ptr %.0911.i.i16.i132.1, align 4
  %i.hp = getelementptr inbounds i8, ptr %.0911.i.i16.i132.1, i64 -12
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !101
  %i.hr = icmp sgt i32 %i.hq, %.sroa.4156.0.extract.trunc.1
  br i1 %i.hr, label %.lr.ph.i.i14.i130.1, label %_ZSt25__unguarded_linear_insertIP9t_clustidN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i11.i.1, !llvm.loop !107

_ZSt25__unguarded_linear_insertIP9t_clustidN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i11.i.1: ; preds = %.lr.ph.i.i14.i130.1, %_ZSt25__unguarded_linear_insertIP9t_clustidN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i11.i
  %.09.lcssa.i.i12.i128.1 = phi ptr [ %i.hj, %_ZSt25__unguarded_linear_insertIP9t_clustidN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i11.i ], [ %.012.i.i15.i131.1, %.lr.ph.i.i14.i130.1 ]
  store i64 %i.hk, ptr %.09.lcssa.i.i12.i128.1, align 4
  %i.hs = getelementptr inbounds nuw i8, ptr %.08.i.i126, i64 16 ; 2 uses
  %.not.i13.i129.1 = icmp eq ptr %i.hs, %i.fr
  br i1 %.not.i13.i129.1, label %_ZSt4sortIP9t_clustidPFbRKS0_S3_EEvT_S6_T0_.exit, label %.lr.ph.i.i125, !llvm.loop !109

bb.al:                                            ; preds = %bb.ae
  %.not18.i.i105 = icmp eq i32 %i.b, 1
  br i1 %.not18.i.i105, label %._crit_edge183, label %.lr.ph.i19.i107.preheader

.lr.ph.i19.i107.preheader:                        ; preds = %bb.al
  %.017.i18.i104 = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.ht = getelementptr inbounds nuw i8, ptr %i.es, i64 4
  br label %.lr.ph.i19.i107

.lr.ph.i19.i107:                                  ; preds = %.lr.ph.i19.i107.preheader, %_ZSt13move_backwardIP9t_clustidS1_ET0_T_S3_S2_.exit.i30.i
  %.020.i20.i108 = phi ptr [ %.0.i24.i111, %_ZSt13move_backwardIP9t_clustidS1_ET0_T_S3_S2_.exit.i30.i ], [ %.017.i18.i104, %.lr.ph.i19.i107.preheader ] ; 7 uses
  %.pn19.i21.i109 = phi ptr [ %.020.i20.i108, %_ZSt13move_backwardIP9t_clustidS1_ET0_T_S3_S2_.exit.i30.i ], [ %i.es, %.lr.ph.i19.i107.preheader ] ; 4 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %.020.i20.i108, i64 4
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !101
  %i.hw = load i32, ptr %i.ht, align 4, !tbaa !101
  %i.hx = icmp slt i32 %i.hv, %i.hw
  %i.hy = load i64, ptr %.020.i20.i108, align 4   ; 2 uses
  br i1 %i.hx, label %bb.am, label %bb.aq

bb.am:                                            ; preds = %.lr.ph.i19.i107
  %i.hz = ptrtoint ptr %.020.i20.i108 to i64
  %i.ia = sub i64 %i.hz, %i.ft                    ; 3 uses
  %i.ib = ashr exact i64 %i.ia, 3                 ; 2 uses
  %i.ic = icmp sgt i64 %i.ib, 1
  br i1 %i.ic, label %bb.an, label %bb.ao, !prof !97

bb.an:                                            ; preds = %bb.am
  %i.id = getelementptr inbounds nuw i8, ptr %.pn19.i21.i109, i64 16
  %i.ie = sub nsw i64 0, %i.ib
  %i.if = getelementptr inbounds [8 x i8], ptr %i.id, i64 %i.ie
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.if, ptr noundef nonnull align 4 dereferenceable(1) %i.es, i64 %i.ia, i1 false)
  br label %_ZSt13move_backwardIP9t_clustidS1_ET0_T_S3_S2_.exit.i30.i

bb.ao:                                            ; preds = %bb.am
  %i.ig = icmp eq i64 %i.ia, 8
  br i1 %i.ig, label %bb.ap, label %_ZSt13move_backwardIP9t_clustidS1_ET0_T_S3_S2_.exit.i30.i

bb.ap:                                            ; preds = %bb.ao
  %i.ih = getelementptr inbounds nuw i8, ptr %.pn19.i21.i109, i64 8
  %i.ii = load i64, ptr %i.es, align 4
  store i64 %i.ii, ptr %i.ih, align 4
  br label %_ZSt13move_backwardIP9t_clustidS1_ET0_T_S3_S2_.exit.i30.i

bb.aq:                                            ; preds = %.lr.ph.i19.i107
  %.sroa.4159.0.extract.shift = lshr i64 %i.hy, 32
  %.sroa.4159.0.extract.trunc = trunc nuw i64 %.sroa.4159.0.extract.shift to i32 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %.pn19.i21.i109, i64 4
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !101
  %i.il = icmp sgt i32 %i.ik, %.sroa.4159.0.extract.trunc
  br i1 %i.il, label %.lr.ph.i.i26.i113, label %_ZSt13move_backwardIP9t_clustidS1_ET0_T_S3_S2_.exit.i30.i

.lr.ph.i.i26.i113:                                ; preds = %bb.aq, %.lr.ph.i.i26.i113
  %.012.i.i27.i114 = phi ptr [ %.0.i.i29.i116, %.lr.ph.i.i26.i113 ], [ %.pn19.i21.i109, %bb.aq ] ; 5 uses
  %.0911.i.i28.i115 = phi ptr [ %.012.i.i27.i114, %.lr.ph.i.i26.i113 ], [ %.020.i20.i108, %bb.aq ]
  %i.im = load i64, ptr %.012.i.i27.i114, align 4
  store i64 %i.im, ptr %.0911.i.i28.i115, align 4
  %.0.i.i29.i116 = getelementptr inbounds i8, ptr %.012.i.i27.i114, i64 -8
  %i.in = getelementptr inbounds i8, ptr %.012.i.i27.i114, i64 -4
  %i.io = load i32, ptr %i.in, align 4, !tbaa !101
  %i.ip = icmp sgt i32 %i.io, %.sroa.4159.0.extract.trunc
  br i1 %i.ip, label %.lr.ph.i.i26.i113, label %_ZSt13move_backwardIP9t_clustidS1_ET0_T_S3_S2_.exit.i30.i, !llvm.loop !107

_ZSt13move_backwardIP9t_clustidS1_ET0_T_S3_S2_.exit.i30.i: ; preds = %.lr.ph.i.i26.i113, %bb.aq, %bb.an, %bb.ao, %bb.ap
  %.09.lcssa.i.i23.i110.sink = phi ptr [ %i.es, %bb.an ], [ %i.es, %bb.ap ], [ %i.es, %bb.ao ], [ %.020.i20.i108, %bb.aq ], [ %.012.i.i27.i114, %.lr.ph.i.i26.i113 ]
  store i64 %i.hy, ptr %.09.lcssa.i.i23.i110.sink, align 4
  %.0.i24.i111 = getelementptr inbounds nuw i8, ptr %.020.i20.i108, i64 8 ; 2 uses
  %.not.i25.i112 = icmp eq ptr %.0.i24.i111, %i.fr
  br i1 %.not.i25.i112, label %_ZSt4sortIP9t_clustidPFbRKS0_S3_EEvT_S6_T0_.exit, label %.lr.ph.i19.i107, !llvm.loop !108

_ZSt4sortIP9t_clustidPFbRKS0_S3_EEvT_S6_T0_.exit: ; preds = %_ZSt13move_backwardIP9t_clustidS1_ET0_T_S3_S2_.exit.i30.i, %.lr.ph.i.i125.prol.loopexit, %_ZSt25__unguarded_linear_insertIP9t_clustidN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i11.i.1
  %i.iq = icmp sgt i32 %i.b, 1
  br i1 %i.iq, label %.lr.ph182.preheader, label %._crit_edge183

.lr.ph182.preheader:                              ; preds = %_ZSt4sortIP9t_clustidPFbRKS0_S3_EEvT_S6_T0_.exit
  %wide.trip.count215 = zext nneg i32 %i.b to i64
  %i.ir = add nsw i64 %wide.trip.count215, -1     ; 2 uses
  %xtraiter267 = and i64 %i.ir, 3                 ; 3 uses
  %i.is = add nsw i32 %i.b, -2
  %i.it = icmp ult i32 %i.is, 3
  br i1 %i.it, label %.lr.ph182.epil.preheader, label %.lr.ph182.preheader.new

.lr.ph182.preheader.new:                          ; preds = %.lr.ph182.preheader
  %unroll_iter = and i64 %i.ir, -4
  br label %.lr.ph182

.lr.ph182:                                        ; preds = %.lr.ph182, %.lr.ph182.preheader.new
  %indvars.iv212 = phi i64 [ 1, %.lr.ph182.preheader.new ], [ %indvars.iv.next213.3, %.lr.ph182 ] ; 5 uses
  %.087181 = phi i32 [ 1, %.lr.ph182.preheader.new ], [ %spec.select.3, %.lr.ph182 ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph182.preheader.new ], [ %niter.next.3, %.lr.ph182 ]
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %indvars.iv212 ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 4
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !101 ; 2 uses
  %i.ix = getelementptr i8, ptr %i.iu, i64 -4     ; 2 uses
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !101
  %.not98 = icmp ne i32 %i.iw, %i.iy
  %i.iz = zext i1 %.not98 to i32
  %spec.select = add nuw nsw i32 %.087181, %i.iz  ; 2 uses
  store i32 %.087181, ptr %i.ix, align 4, !tbaa !101
  %i.ja = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %indvars.iv212 ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 12
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !101 ; 2 uses
  %i.jd = getelementptr i8, ptr %i.ja, i64 4
  %.not98.1 = icmp ne i32 %i.jc, %i.iw
  %i.je = zext i1 %.not98.1 to i32
  %spec.select.1 = add nuw nsw i32 %spec.select, %i.je ; 2 uses
  store i32 %spec.select, ptr %i.jd, align 4, !tbaa !101
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %indvars.iv212 ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 20
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !101 ; 2 uses
  %i.ji = getelementptr i8, ptr %i.jf, i64 12
  %.not98.2 = icmp ne i32 %i.jh, %i.jc
  %i.jj = zext i1 %.not98.2 to i32
  %spec.select.2 = add nuw nsw i32 %spec.select.1, %i.jj ; 2 uses
  store i32 %spec.select.1, ptr %i.ji, align 4, !tbaa !101
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %indvars.iv212 ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 28
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !101
  %i.jn = getelementptr i8, ptr %i.jk, i64 20
  %.not98.3 = icmp ne i32 %i.jm, %i.jh
  %i.jo = zext i1 %.not98.3 to i32
  %spec.select.3 = add nuw nsw i32 %spec.select.2, %i.jo ; 3 uses
  store i32 %spec.select.2, ptr %i.jn, align 4, !tbaa !101
  %indvars.iv.next213.3 = add nuw nsw i64 %indvars.iv212, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge183.loopexit.unr-lcssa, label %.lr.ph182, !llvm.loop !110

._crit_edge183.loopexit.unr-lcssa:                ; preds = %.lr.ph182
  %lcmp.mod268.not = icmp eq i64 %xtraiter267, 0
  br i1 %lcmp.mod268.not, label %._crit_edge183.loopexit, label %.lr.ph182.epil.preheader

.lr.ph182.epil.preheader:                         ; preds = %._crit_edge183.loopexit.unr-lcssa, %.lr.ph182.preheader
  %indvars.iv212.epil.init = phi i64 [ 1, %.lr.ph182.preheader ], [ %indvars.iv.next213.3, %._crit_edge183.loopexit.unr-lcssa ]
  %.087181.epil.init = phi i32 [ 1, %.lr.ph182.preheader ], [ %spec.select.3, %._crit_edge183.loopexit.unr-lcssa ]
  %lcmp.mod270 = icmp ne i64 %xtraiter267, 0
  tail call void @llvm.assume(i1 %lcmp.mod270)
  br label %.lr.ph182.epil

.lr.ph182.epil:                                   ; preds = %.lr.ph182.epil, %.lr.ph182.epil.preheader
  %indvars.iv212.epil = phi i64 [ %indvars.iv212.epil.init, %.lr.ph182.epil.preheader ], [ %indvars.iv.next213.epil, %.lr.ph182.epil ] ; 2 uses
  %.087181.epil = phi i32 [ %.087181.epil.init, %.lr.ph182.epil.preheader ], [ %spec.select.epil, %.lr.ph182.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph182.epil.preheader ], [ %epil.iter.next, %.lr.ph182.epil ]
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %indvars.iv212.epil ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 4
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !101
  %i.js = getelementptr i8, ptr %i.jp, i64 -4     ; 2 uses
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !101
  %.not98.epil = icmp ne i32 %i.jr, %i.jt
  %i.ju = zext i1 %.not98.epil to i32
  %spec.select.epil = add nuw nsw i32 %.087181.epil, %i.ju ; 2 uses
  store i32 %.087181.epil, ptr %i.js, align 4, !tbaa !101
  %indvars.iv.next213.epil = add nuw nsw i64 %indvars.iv212.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter267
  br i1 %epil.iter.cmp.not, label %._crit_edge183.loopexit, label %.lr.ph182.epil, !llvm.loop !111

._crit_edge183.loopexit:                          ; preds = %.lr.ph182.epil, %._crit_edge183.loopexit.unr-lcssa
  %spec.select.lcssa = phi i32 [ %spec.select.3, %._crit_edge183.loopexit.unr-lcssa ], [ %spec.select.epil, %.lr.ph182.epil ]
  %i.jv = zext nneg i32 %i.b to i64
  br label %._crit_edge183

._crit_edge183:                                   ; preds = %bb.al, %_ZSt4sortIP9t_clustidPFbRKS0_S3_EEvT_S6_T0_.exit, %._crit_edge183.loopexit
  %.3.lcssa = phi i64 [ %i.jv, %._crit_edge183.loopexit ], [ 1, %_ZSt4sortIP9t_clustidPFbRKS0_S3_EEvT_S6_T0_.exit ], [ 1, %bb.al ]
  %.087.lcssa = phi i32 [ %spec.select.lcssa, %._crit_edge183.loopexit ], [ 1, %_ZSt4sortIP9t_clustidPFbRKS0_S3_EEvT_S6_T0_.exit ], [ 1, %bb.al ] ; 3 uses
  %i.jw = getelementptr [8 x i8], ptr %i.es, i64 %.3.lcssa
  %i.jx = getelementptr i8, ptr %i.jw, i64 -4
  store i32 %.087.lcssa, ptr %i.jx, align 4, !tbaa !101
  %i.jy = load ptr, ptr @debug, align 8, !tbaa !27
  %.not97 = icmp ne ptr %i.jy, null
  %or.cond = and i1 %.not97, %i.h
  br i1 %or.cond, label %.lr.ph187.preheader, label %.loopexit

.lr.ph187.preheader:                              ; preds = %._crit_edge183
  %wide.trip.count220 = zext nneg i32 %i.b to i64
  br label %.lr.ph187

.lr.ph187:                                        ; preds = %.lr.ph187.preheader, %.lr.ph187
  %indvars.iv217 = phi i64 [ 0, %.lr.ph187.preheader ], [ %indvars.iv.next218, %.lr.ph187 ] ; 2 uses
  %i.jz = load ptr, ptr @debug, align 8, !tbaa !27
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %indvars.iv217 ; 2 uses
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !112
  %i.kc = getelementptr inbounds nuw i8, ptr %i.ka, i64 4
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !101
  %i.ke = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.jz, ptr noundef nonnull @.str.33, i32 noundef %i.kb, i32 noundef %i.kd) #23 ; 0 uses
  %indvars.iv.next218 = add nuw nsw i64 %indvars.iv217, 1 ; 2 uses
  %exitcond221.not = icmp eq i64 %indvars.iv.next218, %wide.trip.count220
  br i1 %exitcond221.not, label %.loopexit.thread, label %.lr.ph187, !llvm.loop !113

.loopexit.thread:                                 ; preds = %.lr.ph187
  store i32 %.087.lcssa, ptr %2, align 8, !tbaa !105
  br label %.lr.ph190

.loopexit:                                        ; preds = %._crit_edge183
  store i32 %.087.lcssa, ptr %2, align 8, !tbaa !105
  br i1 %i.h, label %.lr.ph190, label %._crit_edge191

.lr.ph190:                                        ; preds = %.loopexit.thread, %.loopexit
  %i.kf = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !114 ; 9 uses
  %wide.trip.count225 = zext nneg i32 %i.b to i64 ; 2 uses
  %xtraiter271 = and i64 %wide.trip.count225, 7   ; 3 uses
  %i.kh = icmp ult i32 %i.b, 8
  br i1 %i.kh, label %.epil.preheader, label %.lr.ph190.new

.lr.ph190.new:                                    ; preds = %.lr.ph190
  %unroll_iter275 = and i64 %wide.trip.count225, 2147483640
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ar, %.lr.ph190.new
  %indvars.iv222 = phi i64 [ 0, %.lr.ph190.new ], [ %indvars.iv.next223.7, %bb.ar ] ; 9 uses
  %niter276 = phi i64 [ 0, %.lr.ph190.new ], [ %niter276.next.7, %bb.ar ]
  %i.ki = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %indvars.iv222 ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 4
  %i.kk = load i32, ptr %i.kj, align 4, !tbaa !101
  %i.kl = load i32, ptr %i.ki, align 4, !tbaa !112
  %i.km = sext i32 %i.kl to i64
  %i.kn = getelementptr inbounds [4 x i8], ptr %i.kg, i64 %i.km
  store i32 %i.kk, ptr %i.kn, align 4, !tbaa !49
  %i.ko = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %indvars.iv222 ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 8
  %i.kq = getelementptr inbounds nuw i8, ptr %i.ko, i64 12
  %i.kr = load i32, ptr %i.kq, align 4, !tbaa !101
  %i.ks = load i32, ptr %i.kp, align 4, !tbaa !112
  %i.kt = sext i32 %i.ks to i64
  %i.ku = getelementptr inbounds [4 x i8], ptr %i.kg, i64 %i.kt
  store i32 %i.kr, ptr %i.ku, align 4, !tbaa !49
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %indvars.iv222 ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 16
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kv, i64 20
  %i.ky = load i32, ptr %i.kx, align 4, !tbaa !101
  %i.kz = load i32, ptr %i.kw, align 4, !tbaa !112
  %i.la = sext i32 %i.kz to i64
  %i.lb = getelementptr inbounds [4 x i8], ptr %i.kg, i64 %i.la
  store i32 %i.ky, ptr %i.lb, align 4, !tbaa !49
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %indvars.iv222 ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 24
  %i.le = getelementptr inbounds nuw i8, ptr %i.lc, i64 28
  %i.lf = load i32, ptr %i.le, align 4, !tbaa !101
  %i.lg = load i32, ptr %i.ld, align 4, !tbaa !112
  %i.lh = sext i32 %i.lg to i64
  %i.li = getelementptr inbounds [4 x i8], ptr %i.kg, i64 %i.lh
  store i32 %i.lf, ptr %i.li, align 4, !tbaa !49
  %i.lj = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %indvars.iv222 ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 32
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lj, i64 36
  %i.lm = load i32, ptr %i.ll, align 4, !tbaa !101
  %i.ln = load i32, ptr %i.lk, align 4, !tbaa !112
  %i.lo = sext i32 %i.ln to i64
  %i.lp = getelementptr inbounds [4 x i8], ptr %i.kg, i64 %i.lo
  store i32 %i.lm, ptr %i.lp, align 4, !tbaa !49
  %i.lq = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %indvars.iv222 ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 40
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lq, i64 44
  %i.lt = load i32, ptr %i.ls, align 4, !tbaa !101
  %i.lu = load i32, ptr %i.lr, align 4, !tbaa !112
  %i.lv = sext i32 %i.lu to i64
  %i.lw = getelementptr inbounds [4 x i8], ptr %i.kg, i64 %i.lv
  store i32 %i.lt, ptr %i.lw, align 4, !tbaa !49
  %i.lx = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %indvars.iv222 ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 48
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lx, i64 52
  %i.ma = load i32, ptr %i.lz, align 4, !tbaa !101
  %i.mb = load i32, ptr %i.ly, align 4, !tbaa !112
  %i.mc = sext i32 %i.mb to i64
  %i.md = getelementptr inbounds [4 x i8], ptr %i.kg, i64 %i.mc
  store i32 %i.ma, ptr %i.md, align 4, !tbaa !49
  %i.me = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %indvars.iv222 ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 56
  %i.mg = getelementptr inbounds nuw i8, ptr %i.me, i64 60
  %i.mh = load i32, ptr %i.mg, align 4, !tbaa !101
  %i.mi = load i32, ptr %i.mf, align 4, !tbaa !112
  %i.mj = sext i32 %i.mi to i64
  %i.mk = getelementptr inbounds [4 x i8], ptr %i.kg, i64 %i.mj
  store i32 %i.mh, ptr %i.mk, align 4, !tbaa !49
  %indvars.iv.next223.7 = add nuw nsw i64 %indvars.iv222, 8 ; 2 uses
  %niter276.next.7 = add i64 %niter276, 8         ; 2 uses
  %niter276.ncmp.7 = icmp eq i64 %niter276.next.7, %unroll_iter275
  br i1 %niter276.ncmp.7, label %._crit_edge191.loopexit.unr-lcssa, label %bb.ar, !llvm.loop !115

._crit_edge191.loopexit.unr-lcssa:                ; preds = %bb.ar
  %lcmp.mod273.not = icmp eq i64 %xtraiter271, 0
  br i1 %lcmp.mod273.not, label %._crit_edge191, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge191.loopexit.unr-lcssa, %.lr.ph190
  %indvars.iv222.epil.init = phi i64 [ 0, %.lr.ph190 ], [ %indvars.iv.next223.7, %._crit_edge191.loopexit.unr-lcssa ]
  %lcmp.mod274 = icmp ne i64 %xtraiter271, 0
  tail call void @llvm.assume(i1 %lcmp.mod274)
  br label %bb.as

bb.as:                                            ; preds = %bb.as, %.epil.preheader
  %indvars.iv222.epil = phi i64 [ %indvars.iv222.epil.init, %.epil.preheader ], [ %indvars.iv.next223.epil, %bb.as ] ; 2 uses
  %epil.iter272 = phi i64 [ 0, %.epil.preheader ], [ %epil.iter272.next, %bb.as ]
  %i.ml = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %indvars.iv222.epil ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 4
  %i.mn = load i32, ptr %i.mm, align 4, !tbaa !101
  %i.mo = load i32, ptr %i.ml, align 4, !tbaa !112
  %i.mp = sext i32 %i.mo to i64
  %i.mq = getelementptr inbounds [4 x i8], ptr %i.kg, i64 %i.mp
  store i32 %i.mn, ptr %i.mq, align 4, !tbaa !49
  %indvars.iv.next223.epil = add nuw nsw i64 %indvars.iv222.epil, 1
  %epil.iter272.next = add i64 %epil.iter272, 1   ; 2 uses
  %epil.iter272.cmp.not = icmp eq i64 %epil.iter272.next, %xtraiter271
  br i1 %epil.iter272.cmp.not, label %._crit_edge191, label %bb.as, !llvm.loop !116

._crit_edge191:                                   ; preds = %._crit_edge191.loopexit.unr-lcssa, %bb.as, %.loopexit.thread244, %.loopexit
  tail call void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.27, i32 noundef 291, ptr noundef nonnull %i.es)
  tail call void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27, i32 noundef 292, ptr noundef %i.g)
  ret void
}

; Function Attrs: noreturn
declare void @_Z18gmx_error_functionPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSt10filesystem7__cxx114pathEi(ptr noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt10filesystem7__cxx114pathC2IA71_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 1 dereferenceable(71) %1, i8 noundef zeroext %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(71) %1) #23 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %i.b, ptr %i.a, align 8, !tbaa !13
  %i.d = icmp ugt i64 %i.b, 15
  br i1 %i.d, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.a
  %i.e = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !44
  %i.f = load i64, ptr %i.a, align 8, !tbaa !13
  store i64 %i.f, ptr %i.c, align 8, !tbaa !12
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i.i, %bb.a
  %i.g = phi ptr [ %i.e, %.noexc.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.b, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.h = load i8, ptr %1, align 1, !tbaa !12
  store i8 %i.h, ptr %i.g, align 1, !tbaa !12
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr nonnull align 1 %1, i64 %i.b, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i.i
  %i.i = load i64, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.i, ptr %i.j, align 8, !tbaa !42
  %i.k = load ptr, ptr %0, align 8, !tbaa !44
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i
  store i8 0, ptr %i.l, align 1, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  invoke void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  ret void

bb.g:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

bb.h:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !45   ; 2 uses
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull %i.p) #23
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit:    ; preds = %bb.i, %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.n, %bb.g ], [ %i.o, %bb.h ], [ %i.o, %bb.i ]
  %i.q = load ptr, ptr %0, align 8, !tbaa !44     ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit
  %i.s = load i64, ptr %i.c, align 8, !tbaa !12
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @_ZL13rms_dist_compRK6t_distS1_(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %1) #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load float, ptr %i.a, align 4, !tbaa !93
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load float, ptr %i.c, align 4, !tbaa !93
  %i.e = fcmp olt float %i.b, %i.d
  ret i1 %i.e
}

declare noundef ptr @_Z11new_clustidi(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @_ZL13clust_id_compRK9t_clustidS1_(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !101
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !101
  %i.e = icmp slt i32 %i.b, %i.d
  ret i1 %i.e
}

declare noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIP6t_distlN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS0_S6_EEEEvT_SA_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr %3) local_unnamed_addr #0 comdat {
bb.a:
  %4 = alloca %struct.t_dist, align 8             ; 6 uses
  %5 = alloca %struct.t_dist, align 4             ; 4 uses
  %6 = alloca %struct.t_dist, align 4             ; 4 uses
  %7 = alloca %struct.t_dist, align 4             ; 4 uses
  %8 = alloca %struct.t_dist, align 4             ; 4 uses
  %9 = alloca %struct.t_dist, align 4             ; 4 uses
  %10 = alloca %struct.t_dist, align 4            ; 4 uses
  %11 = alloca %struct.t_dist, align 4            ; 4 uses
  %12 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8 ; 4 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 3 uses
  %i.d = icmp sgt i64 %i.c, 192
  br i1 %i.d, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 8 uses
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph34

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIP6t_distN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS0_S6_EEEET_SA_SA_T0_.exit
  %i.g = icmp eq i64 %i.am, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph34, !llvm.loop !117

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa30 = phi i64 [ %i.c, %.lr.ph ], [ %i.ba, %bb.b ]
  %.020.lcssa = phi ptr [ %1, %.lr.ph ], [ %.1.i.i, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  store ptr %3, ptr %12, align 8
  %i.h = udiv exact i64 %.lcssa30, 12             ; 3 uses
  %i.i = add nsw i64 %i.h, -2                     ; 2 uses
  %i.j = lshr i64 %i.i, 1                         ; 3 uses
  %i.k = add nsw i64 %i.h, -1
  %i.l = lshr i64 %i.k, 1                         ; 2 uses
  %i.m = and i64 %i.h, 1
  %i.n = icmp eq i64 %i.m, 0
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.o = or disjoint i64 %i.i, 1                  ; 2 uses
  %i.p = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %i.o
  %i.q = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %i.j
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIP6t_distlS0_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS0_S6_EEEEvT_T0_SB_T1_T2_.exit.i.i, %._crit_edge
  %.017.i.i = phi i64 [ %i.j, %._crit_edge ], [ %i.ak, %_ZSt13__adjust_heapIP6t_distlS0_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS0_S6_EEEEvT_T0_SB_T1_T2_.exit.i.i ] ; 8 uses
  %i.r = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %.017.i.i ; 2 uses
  %.sroa.04.0.copyload.i.i = load i64, ptr %i.r, align 4
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.4.0.copyload.i.i = load float, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !tbaa !31
end_hunk_2
begin_hunk_3_@_ZSt16__introsort_loopIP9t_clustidlN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS0_S6_EEEEvT_SA_T0_T1_:bb.a
  %i.bt = icmp sgt i64 %i.bs, 128
  br i1 %i.bt, label %bb.b, label %_ZSt14__partial_sortIP9t_clustidN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS0_S6_EEEEvT_SA_SA_T0_.exit, !llvm.loop !131

_ZSt14__partial_sortIP9t_clustidN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS0_S6_EEEEvT_SA_SA_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIP9t_clustidN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS0_S6_EEEET_SA_SA_T0_.exit, %_ZSt10__pop_heapIP9t_clustidN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS0_S6_EEEEvT_SA_SA_RT0_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIP9t_clustidN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS0_S6_EEEEvT_SA_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %struct.t_clustid, align 8          ; 11 uses
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 3 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 3 uses
  %i.g = lshr i64 %i.f, 1                         ; 2 uses
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 4 uses
  %i.j = and i64 %i.c, 8
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  br i1 %i.k, label %.split.preheader, label %.split.us

.split.preheader:                                 ; preds = %bb.b
  %i.m = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.m
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.l
  br label %.split

.split.us:                                        ; preds = %bb.b, %_ZSt13__adjust_heapIP9t_clustidlS0_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS0_S6_EEEEvT_T0_SB_T1_T2_.exit.us
  %.015.us = phi i64 [ %i.ak, %_ZSt13__adjust_heapIP9t_clustidlS0_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS0_S6_EEEEvT_T0_SB_T1_T2_.exit.us ], [ %i.g, %bb.b ] ; 8 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.015.us
  %.sroa.02.0.copyload.us = load i64, ptr %i.p, align 4 ; 3 uses
  %.sroa.0.0.copyload.us = load ptr, ptr %2, align 8, !tbaa !62 ; 2 uses
  %i.q = icmp slt i64 %.015.us, %i.i
  br i1 %i.q, label %.lr.ph.i.us, label %._crit_edge.i.us.thread

._crit_edge.i.us.thread:                          ; preds = %.split.us
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  br label %_ZSt13__adjust_heapIP9t_clustidlS0_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS0_S6_EEEEvT_T0_SB_T1_T2_.exit.us

.lr.ph.i.us:                                      ; preds = %.split.us, %.lr.ph.i.us
  %.031.i.us = phi i64 [ %spec.select.i.us, %.lr.ph.i.us ], [ %.015.us, %.split.us ] ; 2 uses
  %i.r = shl i64 %.031.i.us, 1                    ; 3 uses
  %i.s = add i64 %i.r, 2                          ; 2 uses
  %i.t = getelementptr inbounds [8 x i8], ptr %0, i64 %i.s
  %i.u = getelementptr [8 x i8], ptr %0, i64 %i.r
  %i.v = getelementptr i8, ptr %i.u, i64 8
  %i.w = call noundef zeroext i1 %.sroa.0.0.copyload.us(ptr noundef nonnull align 4 dereferenceable(8) %i.t, ptr noundef nonnull align 4 dereferenceable(8) %i.v), !inline_history !142
  %i.x = or disjoint i64 %i.r, 1
  %spec.select.i.us = select i1 %i.w, i64 %i.x, i64 %i.s ; 6 uses
  %i.y = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.us
  %i.z = getelementptr inbounds [8 x i8], ptr %0, i64 %.031.i.us
  %i.aa = load i64, ptr %i.y, align 4
  store i64 %i.aa, ptr %i.z, align 4
  %i.ab = icmp slt i64 %spec.select.i.us, %i.i
  br i1 %i.ab, label %.lr.ph.i.us, label %._crit_edge.i.us, !llvm.loop !133

._crit_edge.i.us:                                 ; preds = %.lr.ph.i.us
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i64 %.sroa.02.0.copyload.us, ptr %3, align 8
  %i.ac = icmp sgt i64 %spec.select.i.us, %.015.us
  br i1 %i.ac, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIP9t_clustidlS0_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS0_S6_EEEEvT_T0_SB_T1_T2_.exit.us

.lr.ph.i.i.us:                                    ; preds = %._crit_edge.i.us, %bb.c
  %.01316.i.i.us = phi i64 [ %.017.i.i.us, %bb.c ], [ %spec.select.i.us, %._crit_edge.i.us ] ; 3 uses
  %.017.in.i.i.us = add nsw i64 %.01316.i.i.us, -1
  %.017.i.i.us = sdiv i64 %.017.in.i.i.us, 2      ; 4 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.017.i.i.us ; 2 uses
  %i.ae = call noundef zeroext i1 %.sroa.0.0.copyload.us(ptr noundef nonnull align 4 dereferenceable(8) %i.ad, ptr noundef nonnull align 4 dereferenceable(8) %3), !inline_history !143
  br i1 %i.ae, label %bb.c, label %.critedge.loopexit.i.i.us

bb.c:                                             ; preds = %.lr.ph.i.i.us
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01316.i.i.us
  %i.ag = load i64, ptr %i.ad, align 4
  store i64 %i.ag, ptr %i.af, align 4
  %i.ah = icmp sgt i64 %.017.i.i.us, %.015.us
  br i1 %i.ah, label %.lr.ph.i.i.us, label %.critedge.loopexit.i.i.us, !llvm.loop !135

.critedge.loopexit.i.i.us:                        ; preds = %bb.c, %.lr.ph.i.i.us
  %.013.lcssa.ph.i.i.us = phi i64 [ %.01316.i.i.us, %.lr.ph.i.i.us ], [ %.017.i.i.us, %bb.c ]
  %.pre.i.i.us = load i64, ptr %3, align 8
  br label %_ZSt13__adjust_heapIP9t_clustidlS0_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS0_S6_EEEEvT_T0_SB_T1_T2_.exit.us

_ZSt13__adjust_heapIP9t_clustidlS0_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS0_S6_EEEEvT_T0_SB_T1_T2_.exit.us: ; preds = %._crit_edge.i.us.thread, %.critedge.loopexit.i.i.us, %._crit_edge.i.us
  %i.ai = phi i64 [ %.sroa.02.0.copyload.us, %._crit_edge.i.us ], [ %.pre.i.i.us, %.critedge.loopexit.i.i.us ], [ %.sroa.02.0.copyload.us, %._crit_edge.i.us.thread ]
  %.013.lcssa.i.i.us = phi i64 [ %spec.select.i.us, %._crit_edge.i.us ], [ %.013.lcssa.ph.i.i.us, %.critedge.loopexit.i.i.us ], [ %.015.us, %._crit_edge.i.us.thread ]
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.013.lcssa.i.i.us
  store i64 %i.ai, ptr %i.aj, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %.not.us = icmp eq i64 %.015.us, 0
  %i.ak = add nsw i64 %.015.us, -1
  br i1 %.not.us, label %.loopexit, label %.split.us, !llvm.loop !144

.split:                                           ; preds = %.split.preheader, %_ZSt13__adjust_heapIP9t_clustidlS0_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS0_S6_EEEEvT_T0_SB_T1_T2_.exit
  %.015 = phi i64 [ %i.bi, %_ZSt13__adjust_heapIP9t_clustidlS0_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS0_S6_EEEEvT_T0_SB_T1_T2_.exit ], [ %i.g, %.split.preheader ] ; 8 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.015
  %.sroa.02.0.copyload = load i64, ptr %i.al, align 4 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !tbaa !62 ; 2 uses
  %i.am = icmp slt i64 %.015, %i.i
  br i1 %i.am, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.split, %.lr.ph.i
  %.031.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.015, %.split ] ; 2 uses
  %i.an = shl i64 %.031.i, 1                      ; 3 uses
  %i.ao = add i64 %i.an, 2                        ; 2 uses
  %i.ap = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ao
  %i.aq = getelementptr [8 x i8], ptr %0, i64 %i.an
  %i.ar = getelementptr i8, ptr %i.aq, i64 8
  %i.as = call noundef zeroext i1 %.sroa.0.0.copyload(ptr noundef nonnull align 4 dereferenceable(8) %i.ap, ptr noundef nonnull align 4 dereferenceable(8) %i.ar), !inline_history !142
  %i.at = or disjoint i64 %i.an, 1
  %spec.select.i = select i1 %i.as, i64 %i.at, i64 %i.ao ; 4 uses
  %i.au = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i
  %i.av = getelementptr inbounds [8 x i8], ptr %0, i64 %.031.i
  %i.aw = load i64, ptr %i.au, align 4
  store i64 %i.aw, ptr %i.av, align 4
  %i.ax = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.ax, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !133

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.split
  %.0.lcssa.i = phi i64 [ %.015, %.split ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.ay = icmp eq i64 %.0.lcssa.i, %i.l
  br i1 %i.ay, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  %i.az = load i64, ptr %i.n, align 4
  store i64 %i.az, ptr %i.o, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %.1.i = phi i64 [ %i.m, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i64 %.sroa.02.0.copyload, ptr %3, align 8
  %i.ba = icmp sgt i64 %.1.i, %.015
  br i1 %i.ba, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIP9t_clustidlS0_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS0_S6_EEEEvT_T0_SB_T1_T2_.exit

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.01316.i.i = phi i64 [ %.017.i.i, %bb.f ], [ %.1.i, %bb.e ] ; 3 uses
  %.017.in.i.i = add nsw i64 %.01316.i.i, -1
  %.017.i.i = sdiv i64 %.017.in.i.i, 2            ; 4 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.017.i.i ; 2 uses
  %i.bc = call noundef zeroext i1 %.sroa.0.0.copyload(ptr noundef nonnull align 4 dereferenceable(8) %i.bb, ptr noundef nonnull align 4 dereferenceable(8) %3), !inline_history !143
  br i1 %i.bc, label %bb.f, label %.critedge.loopexit.i.i

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01316.i.i
  %i.be = load i64, ptr %i.bb, align 4
  store i64 %i.be, ptr %i.bd, align 4
  %i.bf = icmp sgt i64 %.017.i.i, %.015
  br i1 %i.bf, label %.lr.ph.i.i, label %.critedge.loopexit.i.i, !llvm.loop !135

.critedge.loopexit.i.i:                           ; preds = %bb.f, %.lr.ph.i.i
  %.013.lcssa.ph.i.i = phi i64 [ %.01316.i.i, %.lr.ph.i.i ], [ %.017.i.i, %bb.f ]
  %.pre.i.i = load i64, ptr %3, align 8
  br label %_ZSt13__adjust_heapIP9t_clustidlS0_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS0_S6_EEEEvT_T0_SB_T1_T2_.exit

_ZSt13__adjust_heapIP9t_clustidlS0_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS0_S6_EEEEvT_T0_SB_T1_T2_.exit: ; preds = %bb.e, %.critedge.loopexit.i.i
  %i.bg = phi i64 [ %.sroa.02.0.copyload, %bb.e ], [ %.pre.i.i, %.critedge.loopexit.i.i ]
  %.013.lcssa.i.i = phi i64 [ %.1.i, %bb.e ], [ %.013.lcssa.ph.i.i, %.critedge.loopexit.i.i ]
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.013.lcssa.i.i
  store i64 %i.bg, ptr %i.bh, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %.not = icmp eq i64 %.015, 0
  %i.bi = add nsw i64 %.015, -1
  br i1 %.not, label %.loopexit, label %.split, !llvm.loop !144

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIP9t_clustidlS0_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS0_S6_EEEEvT_T0_SB_T1_T2_.exit.us, %_ZSt13__adjust_heapIP9t_clustidlS0_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS0_S6_EEEEvT_T0_SB_T1_T2_.exit, %bb.a
  ret void
}

declare void @_Z9save_freePKcS0_iPv(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_Z14jarvis_patrickiPPfiifP10t_clusters(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, float noundef %4, ptr nofree noundef captures(none) %5) local_unnamed_addr #0 {
bb.a:
  %6 = alloca %struct.t_dist, align 4             ; 4 uses
  %7 = alloca %struct.t_dist, align 4             ; 4 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.b = fcmp olt float %4, 0.000000e+00
  %.0177 = select i1 %i.b, float 1.000000e+04, float %4 ; 2 uses
  %i.c = sext i32 %0 to i64                       ; 9 uses
  %i.d = tail call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.27, i32 noundef 352, i64 noundef range(i64 -2147483648, 2147483648) %i.c, i64 noundef 8) ; 8 uses
  %i.e = tail call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.27, i32 noundef 353, i64 noundef range(i64 -2147483648, 2147483648) %i.c, i64 noundef 12) ; 32 uses
  %i.f = icmp sgt i32 %0, 0                       ; 6 uses
  br i1 %i.f, label %.preheader273.lr.ph, label %._crit_edge292

.preheader273.lr.ph:                              ; preds = %bb.a
  %.idx265 = mul nuw nsw i64 %i.c, 12             ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx265 ; 3 uses
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.c, i1 true)
  %i.j = shl nuw nsw i64 %i.i, 1
  %i.k = xor i64 %i.j, 126
  %i.l = icmp samesign ugt i32 %0, 16
  %.017.i18.i = getelementptr i8, ptr %i.e, i64 12 ; 2 uses
  %.not18.i.i = icmp eq i32 %0, 1
  %i.m = getelementptr i8, ptr %i.e, i64 8        ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 192 ; 4 uses
  %i.o = icmp sgt i32 %2, 0
  %i.p = add nuw nsw i32 %2, 1
  %i.q = zext nneg i32 %i.p to i64
  %wide.trip.count349 = zext nneg i32 %0 to i64   ; 9 uses
  %i.r = mul nuw nsw i64 %wide.trip.count349, 12
  %scevgep433 = getelementptr i8, ptr %i.e, i64 %i.r
  %i.s = shl nuw nsw i64 %wide.trip.count349, 2
  %i.t = add nsw i64 %.idx265, -204               ; 2 uses
  %i.u = udiv i64 %i.t, 12
  %min.iters.check = icmp ult i32 %0, 8
  %n.vec = and i64 %wide.trip.count349, 2147483640 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count349
  %xtraiter = and i64 %wide.trip.count349, 7      ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.v = and i64 %i.u, 1
  %lcmp.mod442.not.not = icmp eq i64 %i.v, 0
  %.sroa.4249.0..08.i.i.sroa_idx.prol = getelementptr inbounds nuw i8, ptr %i.e, i64 200
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 188
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 204
  %i.y = icmp ult i64 %i.t, 12
  br label %.lr.ph

.lr.ph:                                           ; preds = %.critedge, %.preheader273.lr.ph
  %indvars.iv346 = phi i64 [ 0, %.preheader273.lr.ph ], [ %indvars.iv.next347, %.critedge ] ; 9 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv346
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !30  ; 12 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %scevgep434 = getelementptr i8, ptr %i.aa, i64 %i.s
  %bound0 = icmp ult ptr %i.m, %scevgep434
  %bound1 = icmp ult ptr %i.aa, %scevgep433
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 2 uses
  %vec.ind = phi <8 x i64> [ %vec.ind.next, %vector.body ], [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.memcheck ] ; 2 uses
  %vec.ind435 = phi <8 x i32> [ %vec.ind.next438, %vector.body ], [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.memcheck ] ; 2 uses
  %wide.gep = getelementptr inbounds nuw [12 x i8], ptr %i.e, <8 x i64> %vec.ind ; 2 uses
  %wide.gep436 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 4
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> %vec.ind435, <8 x ptr> align 4 %wide.gep436, <8 x i1> splat (i1 true)), !tbaa !92
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %index
  %wide.load = load <8 x float>, ptr %i.ab, align 4, !tbaa !31, !alias.scope !145
  %wide.gep437 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 8
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %wide.load, <8 x ptr> align 4 %wide.gep437, <8 x i1> splat (i1 true)), !tbaa !93, !alias.scope !148, !noalias !145
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw nsw <8 x i64> %vec.ind, splat (i64 8)
  %vec.ind.next438 = add <8 x i32> %vec.ind435, splat (i32 8)
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !150

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ad = getelementptr inbounds nuw [12 x i8], ptr %i.e, i64 %indvars.iv.prol ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.af = trunc nuw nsw i64 %indvars.iv.prol to i32
  store i32 %i.af, ptr %i.ae, align 4, !tbaa !92
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv.prol
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !31
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store float %i.ah, ptr %i.ai, align 4, !tbaa !93
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !151

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.aj = sub nsw i64 %indvars.iv.ph, %wide.trip.count349
  %i.ak = icmp ugt i64 %i.aj, -8
  br i1 %i.ak, label %._crit_edge, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.7, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 11 uses
  %i.al = getelementptr inbounds nuw [12 x i8], ptr %i.e, i64 %indvars.iv ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %i.an = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.an, ptr %i.am, align 4, !tbaa !92
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !31
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store float %i.ap, ptr %i.aq, align 4, !tbaa !93
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ar = getelementptr inbounds nuw [12 x i8], ptr %i.e, i64 %indvars.iv.next ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %i.at = trunc nuw nsw i64 %indvars.iv.next to i32
  store i32 %i.at, ptr %i.as, align 4, !tbaa !92
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv.next
  %i.av = load float, ptr %i.au, align 4, !tbaa !31
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store float %i.av, ptr %i.aw, align 4, !tbaa !93
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.ax = getelementptr inbounds nuw [12 x i8], ptr %i.e, i64 %indvars.iv.next.1 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  %i.az = trunc nuw nsw i64 %indvars.iv.next.1 to i32
  store i32 %i.az, ptr %i.ay, align 4, !tbaa !92
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv.next.1
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !31
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store float %i.bb, ptr %i.bc, align 4, !tbaa !93
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 3 uses
  %i.bd = getelementptr inbounds nuw [12 x i8], ptr %i.e, i64 %indvars.iv.next.2 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  %i.bf = trunc nuw nsw i64 %indvars.iv.next.2 to i32
  store i32 %i.bf, ptr %i.be, align 4, !tbaa !92
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv.next.2
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !31
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store float %i.bh, ptr %i.bi, align 4, !tbaa !93
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 3 uses
  %i.bj = getelementptr inbounds nuw [12 x i8], ptr %i.e, i64 %indvars.iv.next.3 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 4
  %i.bl = trunc nuw nsw i64 %indvars.iv.next.3 to i32
  store i32 %i.bl, ptr %i.bk, align 4, !tbaa !92
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv.next.3
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !31
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store float %i.bn, ptr %i.bo, align 4, !tbaa !93
  %indvars.iv.next.4 = add nuw nsw i64 %indvars.iv, 5 ; 3 uses
  %i.bp = getelementptr inbounds nuw [12 x i8], ptr %i.e, i64 %indvars.iv.next.4 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  %i.br = trunc nuw nsw i64 %indvars.iv.next.4 to i32
  store i32 %i.br, ptr %i.bq, align 4, !tbaa !92
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv.next.4
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !31
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store float %i.bt, ptr %i.bu, align 4, !tbaa !93
  %indvars.iv.next.5 = add nuw nsw i64 %indvars.iv, 6 ; 3 uses
  %i.bv = getelementptr inbounds nuw [12 x i8], ptr %i.e, i64 %indvars.iv.next.5 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  %i.bx = trunc nuw nsw i64 %indvars.iv.next.5 to i32
  store i32 %i.bx, ptr %i.bw, align 4, !tbaa !92
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv.next.5
  %i.bz = load float, ptr %i.by, align 4, !tbaa !31
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store float %i.bz, ptr %i.ca, align 4, !tbaa !93
  %indvars.iv.next.6 = add nuw nsw i64 %indvars.iv, 7 ; 3 uses
  %i.cb = getelementptr inbounds nuw [12 x i8], ptr %i.e, i64 %indvars.iv.next.6 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  %i.cd = trunc nuw nsw i64 %indvars.iv.next.6 to i32
  store i32 %i.cd, ptr %i.cc, align 4, !tbaa !92
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv.next.6
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !31
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store float %i.cf, ptr %i.cg, align 4, !tbaa !93
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %exitcond.not.7 = icmp eq i64 %indvars.iv.next.7, %wide.trip.count349
  br i1 %exitcond.not.7, label %._crit_edge, label %scalar.ph, !llvm.loop !152

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  tail call void @_ZSt16__introsort_loopIP6t_distlN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS0_S6_EEEEvT_SA_T0_T1_(ptr noundef nonnull %i.e, ptr noundef nonnull %i.g, i64 noundef %i.k, ptr nonnull @_ZL13rms_dist_compRK6t_distS1_)
  br i1 %i.l, label %.preheader, label %bb.g

.preheader:                                       ; preds = %._crit_edge, %bb.f
  %.020.i.idx.i = phi i64 [ %.020.i.add.i, %bb.f ], [ 12, %._crit_edge ] ; 4 uses
  %.pn19.i.i = phi ptr [ %.020.i.ptr.i, %bb.f ], [ %i.e, %._crit_edge ] ; 3 uses
  %.020.i.ptr.i = getelementptr inbounds nuw i8, ptr %i.e, i64 %.020.i.idx.i ; 6 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.020.i.ptr.i, i64 8
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !93 ; 4 uses
  %i.cj = load float, ptr %i.m, align 4, !tbaa !93
  %i.ck = fcmp olt float %i.ci, %i.cj
  br i1 %i.ck, label %bb.b, label %bb.e

bb.b:                                             ; preds = %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %7, ptr noundef nonnull align 4 dereferenceable(12) %.020.i.ptr.i, i64 12, i1 false), !tbaa.struct !96
  %i.cl = icmp samesign ugt i64 %.020.i.idx.i, 12
  br i1 %i.cl, label %bb.c, label %bb.d, !prof !97

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %.017.i18.i, ptr noundef nonnull align 4 dereferenceable(1) %i.e, i64 %.020.i.idx.i, i1 false)
  br label %_ZSt13move_backwardIP6t_distS1_ET0_T_S3_S2_.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.cm = getelementptr inbounds nuw i8, ptr %.pn19.i.i, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cm, ptr noundef nonnull align 4 dereferenceable(12) %i.e, i64 12, i1 false), !tbaa.struct !96
  br label %_ZSt13move_backwardIP6t_distS1_ET0_T_S3_S2_.exit.i.i

_ZSt13move_backwardIP6t_distS1_ET0_T_S3_S2_.exit.i.i: ; preds = %bb.d, %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.e, ptr noundef nonnull align 4 dereferenceable(12) %7, i64 12, i1 false), !tbaa.struct !96
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %bb.f

bb.e:                                             ; preds = %.preheader
  %i.cn = load i64, ptr %.020.i.ptr.i, align 4
  %i.co = getelementptr inbounds nuw i8, ptr %.pn19.i.i, i64 8
  %i.cp = load float, ptr %i.co, align 4, !tbaa !93
  %i.cq = fcmp olt float %i.ci, %i.cp
  br i1 %i.cq, label %.lr.ph.i.i.i, label %_ZSt25__unguarded_linear_insertIP6t_distN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.0.i.i.i, %.lr.ph.i.i.i ], [ %.pn19.i.i, %bb.e ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %.012.i.i.i, %.lr.ph.i.i.i ], [ %.020.i.ptr.i, %bb.e ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i, i64 12, i1 false), !tbaa.struct !96
  %.0.i.i.i = getelementptr inbounds i8, ptr %.012.i.i.i, i64 -12
  %i.cr = getelementptr inbounds i8, ptr %.012.i.i.i, i64 -4
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !93
  %i.ct = fcmp olt float %i.ci, %i.cs
  br i1 %i.ct, label %.lr.ph.i.i.i, label %_ZSt25__unguarded_linear_insertIP6t_distN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i.i, !llvm.loop !98

_ZSt25__unguarded_linear_insertIP6t_distN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.e
  %.09.lcssa.i.i.i = phi ptr [ %.020.i.ptr.i, %bb.e ], [ %.012.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  store i64 %i.cn, ptr %.09.lcssa.i.i.i, align 4
  %.sroa.4.0..09.lcssa.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i.i, i64 8
  store float %i.ci, ptr %.sroa.4.0..09.lcssa.i.i.i.sroa_idx, align 4, !tbaa !31
  br label %bb.f

bb.f:                                             ; preds = %_ZSt25__unguarded_linear_insertIP6t_distN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i.i, %_ZSt13move_backwardIP6t_distS1_ET0_T_S3_S2_.exit.i.i
  %.020.i.add.i = add nuw nsw i64 %.020.i.idx.i, 12 ; 2 uses
  %.not.i.i194 = icmp eq i64 %.020.i.add.i, 192
  br i1 %.not.i.i194, label %.lr.ph.i.i.preheader, label %.preheader, !llvm.loop !99

.lr.ph.i.i.preheader:                             ; preds = %bb.f
  br i1 %lcmp.mod442.not.not, label %.lr.ph.i.i.prol, label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader
  %i.cu = load i64, ptr %i.n, align 4
  %.sroa.4249.0.copyload.prol = load float, ptr %.sroa.4249.0..08.i.i.sroa_idx.prol, align 4, !tbaa !31 ; 3 uses
  %i.cv = load float, ptr %i.w, align 4, !tbaa !93
  %i.cw = fcmp olt float %.sroa.4249.0.copyload.prol, %i.cv
  br i1 %i.cw, label %.lr.ph.i.i14.i.prol, label %_ZSt25__unguarded_linear_insertIP6t_distN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i11.i.prol

.lr.ph.i.i14.i.prol:                              ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i14.i.prol
  %.0911.i.i16.i.prol = phi ptr [ %.012.i.i15.i.prol, %.lr.ph.i.i14.i.prol ], [ %i.n, %.lr.ph.i.i.prol ] ; 3 uses
  %.012.i.i15.i.prol = getelementptr inbounds i8, ptr %.0911.i.i16.i.prol, i64 -12 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i16.i.prol, ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i15.i.prol, i64 12, i1 false), !tbaa.struct !96
  %i.cx = getelementptr inbounds i8, ptr %.0911.i.i16.i.prol, i64 -16
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !93
  %i.cz = fcmp olt float %.sroa.4249.0.copyload.prol, %i.cy
  br i1 %i.cz, label %.lr.ph.i.i14.i.prol, label %_ZSt25__unguarded_linear_insertIP6t_distN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i11.i.prol, !llvm.loop !98

_ZSt25__unguarded_linear_insertIP6t_distN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i11.i.prol: ; preds = %.lr.ph.i.i14.i.prol, %.lr.ph.i.i.prol
  %.09.lcssa.i.i12.i.prol = phi ptr [ %i.n, %.lr.ph.i.i.prol ], [ %.012.i.i15.i.prol, %.lr.ph.i.i14.i.prol ] ; 2 uses
  store i64 %i.cu, ptr %.09.lcssa.i.i12.i.prol, align 4
  %.sroa.4249.0..09.lcssa.i.i12.i.sroa_idx.prol = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i12.i.prol, i64 8
  store float %.sroa.4249.0.copyload.prol, ptr %.sroa.4249.0..09.lcssa.i.i12.i.sroa_idx.prol, align 4, !tbaa !31
  br label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol.loopexit:                         ; preds = %_ZSt25__unguarded_linear_insertIP6t_distN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i11.i.prol, %.lr.ph.i.i.preheader
  %.08.i.i.unr = phi ptr [ %i.n, %.lr.ph.i.i.preheader ], [ %i.x, %_ZSt25__unguarded_linear_insertIP6t_distN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i11.i.prol ]
  br i1 %i.y, label %_ZSt4sortIP6t_distPFbRKS0_S3_EEvT_S6_T0_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %_ZSt25__unguarded_linear_insertIP6t_distN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i11.i.1
  %.08.i.i = phi ptr [ %i.dp, %_ZSt25__unguarded_linear_insertIP6t_distN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i11.i.1 ], [ %.08.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 9 uses
  %i.da = load i64, ptr %.08.i.i, align 4
  %.sroa.4249.0..08.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 8
  %.sroa.4249.0.copyload = load float, ptr %.sroa.4249.0..08.i.i.sroa_idx, align 4, !tbaa !31 ; 3 uses
  %i.db = getelementptr inbounds i8, ptr %.08.i.i, i64 -4
  %i.dc = load float, ptr %i.db, align 4, !tbaa !93
  %i.dd = fcmp olt float %.sroa.4249.0.copyload, %i.dc
  br i1 %i.dd, label %.lr.ph.i.i14.i, label %_ZSt25__unguarded_linear_insertIP6t_distN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i11.i

.lr.ph.i.i14.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i14.i
  %.0911.i.i16.i = phi ptr [ %.012.i.i15.i, %.lr.ph.i.i14.i ], [ %.08.i.i, %.lr.ph.i.i ] ; 3 uses
  %.012.i.i15.i = getelementptr inbounds i8, ptr %.0911.i.i16.i, i64 -12 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i16.i, ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i15.i, i64 12, i1 false), !tbaa.struct !96
  %i.de = getelementptr inbounds i8, ptr %.0911.i.i16.i, i64 -16
  %i.df = load float, ptr %i.de, align 4, !tbaa !93
  %i.dg = fcmp olt float %.sroa.4249.0.copyload, %i.df
  br i1 %i.dg, label %.lr.ph.i.i14.i, label %_ZSt25__unguarded_linear_insertIP6t_distN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i11.i, !llvm.loop !98

_ZSt25__unguarded_linear_insertIP6t_distN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i11.i: ; preds = %.lr.ph.i.i14.i, %.lr.ph.i.i
  %.09.lcssa.i.i12.i = phi ptr [ %.08.i.i, %.lr.ph.i.i ], [ %.012.i.i15.i, %.lr.ph.i.i14.i ] ; 2 uses
  store i64 %i.da, ptr %.09.lcssa.i.i12.i, align 4
  %.sroa.4249.0..09.lcssa.i.i12.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i12.i, i64 8
  store float %.sroa.4249.0.copyload, ptr %.sroa.4249.0..09.lcssa.i.i12.i.sroa_idx, align 4, !tbaa !31
  %i.dh = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 12 ; 3 uses
  %i.di = load i64, ptr %i.dh, align 4
  %.sroa.4249.0..08.i.i.sroa_idx.1 = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 20
  %.sroa.4249.0.copyload.1 = load float, ptr %.sroa.4249.0..08.i.i.sroa_idx.1, align 4, !tbaa !31 ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 8
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !93
  %i.dl = fcmp olt float %.sroa.4249.0.copyload.1, %i.dk
  br i1 %i.dl, label %.lr.ph.i.i14.i.1, label %_ZSt25__unguarded_linear_insertIP6t_distN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i11.i.1

.lr.ph.i.i14.i.1:                                 ; preds = %_ZSt25__unguarded_linear_insertIP6t_distN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i11.i, %.lr.ph.i.i14.i.1
  %.0911.i.i16.i.1 = phi ptr [ %.012.i.i15.i.1, %.lr.ph.i.i14.i.1 ], [ %i.dh, %_ZSt25__unguarded_linear_insertIP6t_distN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i11.i ] ; 3 uses
  %.012.i.i15.i.1 = getelementptr inbounds i8, ptr %.0911.i.i16.i.1, i64 -12 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i16.i.1, ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i15.i.1, i64 12, i1 false), !tbaa.struct !96
  %i.dm = getelementptr inbounds i8, ptr %.0911.i.i16.i.1, i64 -16
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !93
  %i.do = fcmp olt float %.sroa.4249.0.copyload.1, %i.dn
  br i1 %i.do, label %.lr.ph.i.i14.i.1, label %_ZSt25__unguarded_linear_insertIP6t_distN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i11.i.1, !llvm.loop !98

_ZSt25__unguarded_linear_insertIP6t_distN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i11.i.1: ; preds = %.lr.ph.i.i14.i.1, %_ZSt25__unguarded_linear_insertIP6t_distN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i11.i
  %.09.lcssa.i.i12.i.1 = phi ptr [ %i.dh, %_ZSt25__unguarded_linear_insertIP6t_distN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i11.i ], [ %.012.i.i15.i.1, %.lr.ph.i.i14.i.1 ] ; 2 uses
  store i64 %i.di, ptr %.09.lcssa.i.i12.i.1, align 4
  %.sroa.4249.0..09.lcssa.i.i12.i.sroa_idx.1 = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i12.i.1, i64 8
  store float %.sroa.4249.0.copyload.1, ptr %.sroa.4249.0..09.lcssa.i.i12.i.sroa_idx.1, align 4, !tbaa !31
  %i.dp = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 24 ; 2 uses
  %.not.i13.i.1 = icmp eq ptr %i.dp, %i.g
  br i1 %.not.i13.i.1, label %_ZSt4sortIP6t_distPFbRKS0_S3_EEvT_S6_T0_.exit, label %.lr.ph.i.i, !llvm.loop !100

bb.g:                                             ; preds = %._crit_edge
  br i1 %.not18.i.i, label %_ZSt4sortIP6t_distPFbRKS0_S3_EEvT_S6_T0_.exit, label %.lr.ph.i19.i

.lr.ph.i19.i:                                     ; preds = %bb.g, %bb.m
  %.020.i20.i = phi ptr [ %.0.i24.i, %bb.m ], [ %.017.i18.i, %bb.g ] ; 8 uses
  %.pn19.i21.i = phi ptr [ %.020.i20.i, %bb.m ], [ %i.e, %bb.g ] ; 4 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.020.i20.i, i64 8
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !93 ; 4 uses
  %i.ds = load float, ptr %i.m, align 4, !tbaa !93
  %i.dt = fcmp olt float %i.dr, %i.ds
  br i1 %i.dt, label %bb.h, label %bb.l

bb.h:                                             ; preds = %.lr.ph.i19.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %6, ptr noundef nonnull align 4 dereferenceable(12) %.020.i20.i, i64 12, i1 false), !tbaa.struct !96
  %i.du = ptrtoint ptr %.020.i20.i to i64
  %i.dv = sub i64 %i.du, %i.h                     ; 4 uses
  %i.dw = icmp sgt i64 %i.dv, 12
  br i1 %i.dw, label %bb.i, label %bb.j, !prof !97

bb.i:                                             ; preds = %bb.h
  %8 = getelementptr inbounds nuw i8, ptr %.pn19.i21.i, i64 24
  %.neg25.i31.i = udiv exact i64 %i.dv, 12
  %.neg25.neg.i32.i = sub nsw i64 0, %.neg25.i31.i
  %9 = getelementptr inbounds [12 x i8], ptr %8, i64 %.neg25.neg.i32.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %9, ptr noundef nonnull align 4 dereferenceable(1) %i.e, i64 %i.dv, i1 false)
  br label %_ZSt13move_backwardIP6t_distS1_ET0_T_S3_S2_.exit.i30.i

bb.j:                                             ; preds = %bb.h
  %i.dx = icmp eq i64 %i.dv, 12
  br i1 %i.dx, label %bb.k, label %_ZSt13move_backwardIP6t_distS1_ET0_T_S3_S2_.exit.i30.i

bb.k:                                             ; preds = %bb.j
  %i.dy = getelementptr inbounds nuw i8, ptr %.pn19.i21.i, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.dy, ptr noundef nonnull align 4 dereferenceable(12) %i.e, i64 12, i1 false), !tbaa.struct !96
  br label %_ZSt13move_backwardIP6t_distS1_ET0_T_S3_S2_.exit.i30.i

_ZSt13move_backwardIP6t_distS1_ET0_T_S3_S2_.exit.i30.i: ; preds = %bb.k, %bb.j, %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.e, ptr noundef nonnull align 4 dereferenceable(12) %6, i64 12, i1 false), !tbaa.struct !96
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %bb.m

bb.l:                                             ; preds = %.lr.ph.i19.i
  %i.dz = load i64, ptr %.020.i20.i, align 4
  %i.ea = getelementptr inbounds nuw i8, ptr %.pn19.i21.i, i64 8
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !93
  %i.ec = fcmp olt float %i.dr, %i.eb
  br i1 %i.ec, label %.lr.ph.i.i26.i, label %_ZSt25__unguarded_linear_insertIP6t_distN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i22.i

.lr.ph.i.i26.i:                                   ; preds = %bb.l, %.lr.ph.i.i26.i
  %.012.i.i27.i = phi ptr [ %.0.i.i29.i, %.lr.ph.i.i26.i ], [ %.pn19.i21.i, %bb.l ] ; 5 uses
  %.0911.i.i28.i = phi ptr [ %.012.i.i27.i, %.lr.ph.i.i26.i ], [ %.020.i20.i, %bb.l ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i28.i, ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i27.i, i64 12, i1 false), !tbaa.struct !96
  %.0.i.i29.i = getelementptr inbounds i8, ptr %.012.i.i27.i, i64 -12
  %i.ed = getelementptr inbounds i8, ptr %.012.i.i27.i, i64 -4
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !93
  %i.ef = fcmp olt float %i.dr, %i.ee
  br i1 %i.ef, label %.lr.ph.i.i26.i, label %_ZSt25__unguarded_linear_insertIP6t_distN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i22.i, !llvm.loop !98

_ZSt25__unguarded_linear_insertIP6t_distN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i22.i: ; preds = %.lr.ph.i.i26.i, %bb.l
  %.09.lcssa.i.i23.i = phi ptr [ %.020.i20.i, %bb.l ], [ %.012.i.i27.i, %.lr.ph.i.i26.i ] ; 2 uses
  store i64 %i.dz, ptr %.09.lcssa.i.i23.i, align 4
  %.sroa.4253.0..09.lcssa.i.i23.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i23.i, i64 8
  store float %i.dr, ptr %.sroa.4253.0..09.lcssa.i.i23.i.sroa_idx, align 4, !tbaa !31
  br label %bb.m

bb.m:                                             ; preds = %_ZSt25__unguarded_linear_insertIP6t_distN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i22.i, %_ZSt13move_backwardIP6t_distS1_ET0_T_S3_S2_.exit.i30.i
  %.0.i24.i = getelementptr inbounds nuw i8, ptr %.020.i20.i, i64 12 ; 2 uses
  %.not.i25.i = icmp eq ptr %.0.i24.i, %i.g
  br i1 %.not.i25.i, label %_ZSt4sortIP6t_distPFbRKS0_S3_EEvT_S6_T0_.exit, label %.lr.ph.i19.i, !llvm.loop !99

_ZSt4sortIP6t_distPFbRKS0_S3_EEvT_S6_T0_.exit:    ; preds = %bb.m, %.lr.ph.i.i.prol.loopexit, %_ZSt25__unguarded_linear_insertIP6t_distN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i11.i.1, %bb.g
  br i1 %i.o, label %.lr.ph286, label %.lr.ph278

.lr.ph278:                                        ; preds = %_ZSt4sortIP6t_distPFbRKS0_S3_EEvT_S6_T0_.exit
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv346
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv346 ; 2 uses
  br label %bb.r

.lr.ph286:                                        ; preds = %_ZSt4sortIP6t_distPFbRKS0_S3_EEvT_S6_T0_.exit
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv346
  %i.ej = tail call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.27, i32 noundef 365, i64 noundef range(i64 2, 2147483648) %i.q, i64 noundef 4) ; 4 uses
  store ptr %i.ej, ptr %i.ei, align 8, !tbaa !153
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv346
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !30
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph286, %bb.q
  %indvars.iv343 = phi i64 [ 0, %.lr.ph286 ], [ %indvars.iv.next344, %bb.q ] ; 2 uses
  %.0163284 = phi i32 [ 0, %.lr.ph286 ], [ %.1164, %bb.q ] ; 4 uses
  %i.em = getelementptr inbounds nuw [12 x i8], ptr %i.e, i64 %indvars.iv343
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 4
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !92 ; 3 uses
  %i.ep = sext i32 %i.eo to i64
  %i.eq = getelementptr inbounds [4 x i8], ptr %i.el, i64 %i.ep
  %i.er = load float, ptr %i.eq, align 4, !tbaa !31
  %i.es = fcmp olt float %i.er, %.0177
  br i1 %i.es, label %bb.o, label %.critedge

bb.o:                                             ; preds = %bb.n
  %i.et = zext i32 %i.eo to i64
  %.not192 = icmp eq i64 %indvars.iv346, %i.et
  br i1 %.not192, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.eu = sext i32 %.0163284 to i64
  %i.ev = getelementptr inbounds [4 x i8], ptr %i.ej, i64 %i.eu
  store i32 %i.eo, ptr %i.ev, align 4, !tbaa !49
  %i.ew = add nsw i32 %.0163284, 1
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %.1164 = phi i32 [ %i.ew, %bb.p ], [ %.0163284, %bb.o ] ; 3 uses
  %indvars.iv.next344 = add nuw nsw i64 %indvars.iv343, 1 ; 2 uses
  %i.ex = icmp slt i32 %.1164, %2
  %i.ey = icmp slt i64 %indvars.iv.next344, %i.c
  %or.cond = select i1 %i.ex, i1 %i.ey, i1 false
  br i1 %or.cond, label %bb.n, label %.critedge, !llvm.loop !154

bb.r:                                             ; preds = %.lr.ph278, %bb.w
  %indvars.iv338 = phi i64 [ 0, %.lr.ph278 ], [ %indvars.iv.next339, %bb.w ] ; 2 uses
  %.0158277 = phi i32 [ 0, %.lr.ph278 ], [ %.2160, %bb.w ] ; 5 uses
  %.2165276 = phi i32 [ 0, %.lr.ph278 ], [ %.3, %bb.w ] ; 5 uses
  %i.ez = load ptr, ptr %i.eg, align 8, !tbaa !30
  %i.fa = getelementptr inbounds nuw [12 x i8], ptr %i.e, i64 %indvars.iv338
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 4 ; 2 uses
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !92 ; 3 uses
  %i.fd = sext i32 %i.fc to i64
  %i.fe = getelementptr inbounds [4 x i8], ptr %i.ez, i64 %i.fd
  %i.ff = load float, ptr %i.fe, align 4, !tbaa !31
  %i.fg = fcmp olt float %i.ff, %.0177
  br i1 %i.fg, label %bb.s, label %.critedge2

bb.s:                                             ; preds = %bb.r
  %i.fh = zext i32 %i.fc to i64
  %.not190 = icmp eq i64 %indvars.iv346, %i.fh
  br i1 %.not190, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.not191 = icmp slt i32 %.2165276, %.0158277
  %.pre402 = load ptr, ptr %i.eh, align 8, !tbaa !153 ; 2 uses
  br i1 %.not191, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fi = add nsw i32 %.0158277, 10               ; 2 uses
  %i.fj = sext i32 %i.fi to i64
  %i.fk = tail call noundef ptr @_Z12save_reallocPKcS0_iPvmm(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.27, i32 noundef 388, ptr noundef %.pre402, i64 noundef range(i64 -2147483647, 2147483648) %i.fj, i64 noundef 4) ; 2 uses
  store ptr %i.fk, ptr %i.eh, align 8, !tbaa !153
  %.pre = load i32, ptr %i.fb, align 4, !tbaa !92
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.fl = phi ptr [ %i.fk, %bb.u ], [ %.pre402, %bb.t ]
  %i.fm = phi i32 [ %.pre, %bb.u ], [ %i.fc, %bb.t ]
  %.1159 = phi i32 [ %i.fi, %bb.u ], [ %.0158277, %bb.t ]
  %i.fn = sext i32 %.2165276 to i64
  %i.fo = getelementptr inbounds [4 x i8], ptr %i.fl, i64 %i.fn
  store i32 %i.fm, ptr %i.fo, align 4, !tbaa !49
  %i.fp = add nsw i32 %.2165276, 1
  br label %bb.w

bb.w:                                             ; preds = %bb.s, %bb.v
  %.3 = phi i32 [ %i.fp, %bb.v ], [ %.2165276, %bb.s ] ; 2 uses
  %.2160 = phi i32 [ %.1159, %bb.v ], [ %.0158277, %bb.s ] ; 2 uses
  %indvars.iv.next339 = add nuw nsw i64 %indvars.iv338, 1 ; 2 uses
  %exitcond342.not = icmp eq i64 %indvars.iv.next339, %wide.trip.count349
  br i1 %exitcond342.not, label %.critedge2, label %bb.r, !llvm.loop !155

.critedge2:                                       ; preds = %bb.r, %bb.w
  %.2165.lcssa.ph = phi i32 [ %.2165276, %bb.r ], [ %.3, %bb.w ] ; 4 uses
  %.0158.lcssa.ph = phi i32 [ %.0158277, %bb.r ], [ %.2160, %bb.w ]
  %i.fq = icmp eq i32 %.2165.lcssa.ph, %.0158.lcssa.ph
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv346 ; 3 uses
  br i1 %i.fq, label %bb.x, label %.critedge2._crit_edge

.critedge2._crit_edge:                            ; preds = %.critedge2
  %.pre403 = load ptr, ptr %i.fr, align 8, !tbaa !153
  br label %.critedge

bb.x:                                             ; preds = %.critedge2
  %i.fs = add nsw i32 %.2165.lcssa.ph, 1
  %i.ft = sext i32 %i.fs to i64
  %i.fu = load ptr, ptr %i.fr, align 8, !tbaa !153
  %i.fv = tail call noundef ptr @_Z12save_reallocPKcS0_iPvmm(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.27, i32 noundef 396, ptr noundef %i.fu, i64 noundef range(i64 -2147483647, 2147483648) %i.ft, i64 noundef 4) ; 2 uses
  store ptr %i.fv, ptr %i.fr, align 8, !tbaa !153
  br label %.critedge

.critedge:                                        ; preds = %bb.q, %bb.n, %bb.x, %.critedge2._crit_edge
  %.0163.lcssa.ph.sink = phi i32 [ %.2165.lcssa.ph, %.critedge2._crit_edge ], [ %.2165.lcssa.ph, %bb.x ], [ %.1164, %bb.q ], [ %.0163284, %bb.n ]
  %.sink429 = phi ptr [ %.pre403, %.critedge2._crit_edge ], [ %i.fv, %bb.x ], [ %i.ej, %bb.n ], [ %i.ej, %bb.q ]
  %i.fw = sext i32 %.0163.lcssa.ph.sink to i64
  %i.fx = getelementptr inbounds [4 x i8], ptr %.sink429, i64 %i.fw
  store i32 -1, ptr %i.fx, align 4, !tbaa !49
  %indvars.iv.next347 = add nuw nsw i64 %indvars.iv346, 1 ; 2 uses
  %exitcond350.not = icmp eq i64 %indvars.iv.next347, %wide.trip.count349
  br i1 %exitcond350.not, label %._crit_edge292, label %.lr.ph, !llvm.loop !156

._crit_edge292:                                   ; preds = %.critedge, %bb.a
  tail call void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.27, i32 noundef 401, ptr noundef %i.e)
  %i.fy = load ptr, ptr @debug, align 8, !tbaa !27 ; 2 uses
  %.not = icmp eq ptr %i.fy, null
  br i1 %.not, label %.loopexit270, label %bb.y

bb.y:                                             ; preds = %._crit_edge292
  %i.fz = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.fy, ptr noundef nonnull @.str.38, i32 noundef %2, i32 noundef %3) #23 ; 0 uses
  br i1 %i.f, label %.lr.ph299.preheader, label %.loopexit270

.lr.ph299.preheader:                              ; preds = %bb.y
  %wide.trip.count357 = zext nneg i32 %0 to i64
  br label %.lr.ph299

.lr.ph299:                                        ; preds = %.lr.ph299.preheader, %._crit_edge296
  %indvars.iv354 = phi i64 [ 0, %.lr.ph299.preheader ], [ %indvars.iv.next355, %._crit_edge296 ] ; 4 uses
  %i.ga = load ptr, ptr @debug, align 8, !tbaa !27
  %i.gb = trunc nuw nsw i64 %indvars.iv354 to i32
  %i.gc = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ga, ptr noundef nonnull @.str.39, i32 noundef %i.gb) #23 ; 0 uses
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv354 ; 2 uses
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !153
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !49 ; 2 uses
  %i.gg = icmp sgt i32 %i.gf, -1
  br i1 %i.gg, label %.lr.ph295, label %._crit_edge296

.lr.ph295:                                        ; preds = %.lr.ph299
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv354
  br label %bb.z

end_hunk_3
begin_hunk_4_@_Z14jarvis_patrickiPPfiifP10t_clusters:bb.a

.lr.ph.i.i14.i221.prol:                           ; preds = %.lr.ph.i.i216.prol, %.lr.ph.i.i14.i221.prol
  %.0911.i.i16.i223.prol = phi ptr [ %.012.i.i15.i222.prol, %.lr.ph.i.i14.i221.prol ], [ %i.kz, %.lr.ph.i.i216.prol ] ; 3 uses
  %.012.i.i15.i222.prol = getelementptr inbounds i8, ptr %.0911.i.i16.i223.prol, i64 -8 ; 3 uses
  %i.lg = load i64, ptr %.012.i.i15.i222.prol, align 4
  store i64 %i.lg, ptr %.0911.i.i16.i223.prol, align 4
  %i.lh = getelementptr inbounds i8, ptr %.0911.i.i16.i223.prol, i64 -12
  %i.li = load i32, ptr %i.lh, align 4, !tbaa !101
  %i.lj = icmp sgt i32 %i.li, %.sroa.4260.0.extract.trunc.prol
  br i1 %i.lj, label %.lr.ph.i.i14.i221.prol, label %_ZSt25__unguarded_linear_insertIP9t_clustidN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i11.i.prol, !llvm.loop !107

_ZSt25__unguarded_linear_insertIP9t_clustidN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i11.i.prol: ; preds = %.lr.ph.i.i14.i221.prol, %.lr.ph.i.i216.prol
  %.09.lcssa.i.i12.i219.prol = phi ptr [ %i.kz, %.lr.ph.i.i216.prol ], [ %.012.i.i15.i222.prol, %.lr.ph.i.i14.i221.prol ]
  store i64 %i.lc, ptr %.09.lcssa.i.i12.i219.prol, align 4
  %i.lk = getelementptr inbounds nuw i8, ptr %i.gv, i64 136
  br label %.lr.ph.i.i216.prol.loopexit

.lr.ph.i.i216.prol.loopexit:                      ; preds = %_ZSt25__unguarded_linear_insertIP9t_clustidN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i11.i.prol, %_ZSt16__insertion_sortIP9t_clustidN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS0_S6_EEEEvT_SA_T0_.exit.i
  %.08.i.i217.unr = phi ptr [ %i.kz, %_ZSt16__insertion_sortIP9t_clustidN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS0_S6_EEEEvT_SA_T0_.exit.i ], [ %i.lk, %_ZSt25__unguarded_linear_insertIP9t_clustidN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i11.i.prol ]
  %i.ll = icmp eq i64 %i.la, 0
  br i1 %i.ll, label %_ZSt4sortIP9t_clustidPFbRKS0_S3_EEvT_S6_T0_.exit, label %.lr.ph.i.i216

.lr.ph.i.i216:                                    ; preds = %.lr.ph.i.i216.prol.loopexit, %_ZSt25__unguarded_linear_insertIP9t_clustidN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i11.i.1
  %.08.i.i217 = phi ptr [ %i.md, %_ZSt25__unguarded_linear_insertIP9t_clustidN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i11.i.1 ], [ %.08.i.i217.unr, %.lr.ph.i.i216.prol.loopexit ] ; 7 uses
  %i.lm = load i64, ptr %.08.i.i217, align 4      ; 2 uses
  %.sroa.4260.0.extract.shift = lshr i64 %i.lm, 32
  %.sroa.4260.0.extract.trunc = trunc nuw i64 %.sroa.4260.0.extract.shift to i32 ; 2 uses
  %i.ln = getelementptr inbounds i8, ptr %.08.i.i217, i64 -4
  %i.lo = load i32, ptr %i.ln, align 4, !tbaa !101
  %i.lp = icmp sgt i32 %i.lo, %.sroa.4260.0.extract.trunc
  br i1 %i.lp, label %.lr.ph.i.i14.i221, label %_ZSt25__unguarded_linear_insertIP9t_clustidN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i11.i

.lr.ph.i.i14.i221:                                ; preds = %.lr.ph.i.i216, %.lr.ph.i.i14.i221
  %.0911.i.i16.i223 = phi ptr [ %.012.i.i15.i222, %.lr.ph.i.i14.i221 ], [ %.08.i.i217, %.lr.ph.i.i216 ] ; 3 uses
  %.012.i.i15.i222 = getelementptr inbounds i8, ptr %.0911.i.i16.i223, i64 -8 ; 3 uses
  %i.lq = load i64, ptr %.012.i.i15.i222, align 4
  store i64 %i.lq, ptr %.0911.i.i16.i223, align 4
  %i.lr = getelementptr inbounds i8, ptr %.0911.i.i16.i223, i64 -12
  %i.ls = load i32, ptr %i.lr, align 4, !tbaa !101
  %i.lt = icmp sgt i32 %i.ls, %.sroa.4260.0.extract.trunc
  br i1 %i.lt, label %.lr.ph.i.i14.i221, label %_ZSt25__unguarded_linear_insertIP9t_clustidN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i11.i, !llvm.loop !107

_ZSt25__unguarded_linear_insertIP9t_clustidN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i11.i: ; preds = %.lr.ph.i.i14.i221, %.lr.ph.i.i216
  %.09.lcssa.i.i12.i219 = phi ptr [ %.08.i.i217, %.lr.ph.i.i216 ], [ %.012.i.i15.i222, %.lr.ph.i.i14.i221 ]
  store i64 %i.lm, ptr %.09.lcssa.i.i12.i219, align 4
  %i.lu = getelementptr inbounds nuw i8, ptr %.08.i.i217, i64 8 ; 3 uses
  %i.lv = load i64, ptr %i.lu, align 4            ; 2 uses
  %.sroa.4260.0.extract.shift.1 = lshr i64 %i.lv, 32
  %.sroa.4260.0.extract.trunc.1 = trunc nuw i64 %.sroa.4260.0.extract.shift.1 to i32 ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %.08.i.i217, i64 4
  %i.lx = load i32, ptr %i.lw, align 4, !tbaa !101
  %i.ly = icmp sgt i32 %i.lx, %.sroa.4260.0.extract.trunc.1
  br i1 %i.ly, label %.lr.ph.i.i14.i221.1, label %_ZSt25__unguarded_linear_insertIP9t_clustidN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i11.i.1

.lr.ph.i.i14.i221.1:                              ; preds = %_ZSt25__unguarded_linear_insertIP9t_clustidN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i11.i, %.lr.ph.i.i14.i221.1
  %.0911.i.i16.i223.1 = phi ptr [ %.012.i.i15.i222.1, %.lr.ph.i.i14.i221.1 ], [ %i.lu, %_ZSt25__unguarded_linear_insertIP9t_clustidN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i11.i ] ; 3 uses
  %.012.i.i15.i222.1 = getelementptr inbounds i8, ptr %.0911.i.i16.i223.1, i64 -8 ; 3 uses
  %i.lz = load i64, ptr %.012.i.i15.i222.1, align 4
  store i64 %i.lz, ptr %.0911.i.i16.i223.1, align 4
  %i.ma = getelementptr inbounds i8, ptr %.0911.i.i16.i223.1, i64 -12
  %i.mb = load i32, ptr %i.ma, align 4, !tbaa !101
  %i.mc = icmp sgt i32 %i.mb, %.sroa.4260.0.extract.trunc.1
  br i1 %i.mc, label %.lr.ph.i.i14.i221.1, label %_ZSt25__unguarded_linear_insertIP9t_clustidN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i11.i.1, !llvm.loop !107

_ZSt25__unguarded_linear_insertIP9t_clustidN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i11.i.1: ; preds = %.lr.ph.i.i14.i221.1, %_ZSt25__unguarded_linear_insertIP9t_clustidN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i11.i
  %.09.lcssa.i.i12.i219.1 = phi ptr [ %i.lu, %_ZSt25__unguarded_linear_insertIP9t_clustidN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i11.i ], [ %.012.i.i15.i222.1, %.lr.ph.i.i14.i221.1 ]
  store i64 %i.lv, ptr %.09.lcssa.i.i12.i219.1, align 4
  %i.md = getelementptr inbounds nuw i8, ptr %.08.i.i217, i64 16 ; 2 uses
  %.not.i13.i220.1 = icmp eq ptr %i.md, %i.kc
  br i1 %.not.i13.i220.1, label %_ZSt4sortIP9t_clustidPFbRKS0_S3_EEvT_S6_T0_.exit, label %.lr.ph.i.i216, !llvm.loop !109

bb.ax:                                            ; preds = %bb.aq
  %.not18.i.i196 = icmp eq i32 %0, 1
  br i1 %.not18.i.i196, label %._crit_edge320.thread, label %.lr.ph.i19.i198.preheader

._crit_edge320.thread:                            ; preds = %bb.ax
  %i.me = getelementptr i8, ptr %i.gv, i64 4
  store i32 1, ptr %i.me, align 4, !tbaa !101
  store i32 1, ptr %5, align 8, !tbaa !105
  br label %.lr.ph325

.lr.ph.i19.i198.preheader:                        ; preds = %bb.ax
  %.017.i18.i195 = getelementptr inbounds nuw i8, ptr %i.gv, i64 8
  %i.mf = getelementptr inbounds nuw i8, ptr %i.gv, i64 4
  br label %.lr.ph.i19.i198

.lr.ph.i19.i198:                                  ; preds = %.lr.ph.i19.i198.preheader, %_ZSt13move_backwardIP9t_clustidS1_ET0_T_S3_S2_.exit.i30.i
  %.020.i20.i199 = phi ptr [ %.0.i24.i202, %_ZSt13move_backwardIP9t_clustidS1_ET0_T_S3_S2_.exit.i30.i ], [ %.017.i18.i195, %.lr.ph.i19.i198.preheader ] ; 7 uses
  %.pn19.i21.i200 = phi ptr [ %.020.i20.i199, %_ZSt13move_backwardIP9t_clustidS1_ET0_T_S3_S2_.exit.i30.i ], [ %i.gv, %.lr.ph.i19.i198.preheader ] ; 4 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %.020.i20.i199, i64 4
  %i.mh = load i32, ptr %i.mg, align 4, !tbaa !101
  %i.mi = load i32, ptr %i.mf, align 4, !tbaa !101
  %i.mj = icmp slt i32 %i.mh, %i.mi
  %i.mk = load i64, ptr %.020.i20.i199, align 4   ; 2 uses
  br i1 %i.mj, label %bb.ay, label %bb.bc

bb.ay:                                            ; preds = %.lr.ph.i19.i198
  %i.ml = ptrtoint ptr %.020.i20.i199 to i64
  %i.mm = sub i64 %i.ml, %i.ke                    ; 3 uses
  %i.mn = ashr exact i64 %i.mm, 3                 ; 2 uses
  %i.mo = icmp sgt i64 %i.mn, 1
  br i1 %i.mo, label %bb.az, label %bb.ba, !prof !97

bb.az:                                            ; preds = %bb.ay
  %i.mp = getelementptr inbounds nuw i8, ptr %.pn19.i21.i200, i64 16
  %i.mq = sub nsw i64 0, %i.mn
  %i.mr = getelementptr inbounds [8 x i8], ptr %i.mp, i64 %i.mq
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.mr, ptr noundef nonnull align 4 dereferenceable(1) %i.gv, i64 %i.mm, i1 false)
  br label %_ZSt13move_backwardIP9t_clustidS1_ET0_T_S3_S2_.exit.i30.i

bb.ba:                                            ; preds = %bb.ay
  %i.ms = icmp eq i64 %i.mm, 8
  br i1 %i.ms, label %bb.bb, label %_ZSt13move_backwardIP9t_clustidS1_ET0_T_S3_S2_.exit.i30.i

bb.bb:                                            ; preds = %bb.ba
  %i.mt = getelementptr inbounds nuw i8, ptr %.pn19.i21.i200, i64 8
  %i.mu = load i64, ptr %i.gv, align 4
  store i64 %i.mu, ptr %i.mt, align 4
  br label %_ZSt13move_backwardIP9t_clustidS1_ET0_T_S3_S2_.exit.i30.i

bb.bc:                                            ; preds = %.lr.ph.i19.i198
  %.sroa.4263.0.extract.shift = lshr i64 %i.mk, 32
  %.sroa.4263.0.extract.trunc = trunc nuw i64 %.sroa.4263.0.extract.shift to i32 ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %.pn19.i21.i200, i64 4
  %i.mw = load i32, ptr %i.mv, align 4, !tbaa !101
  %i.mx = icmp sgt i32 %i.mw, %.sroa.4263.0.extract.trunc
  br i1 %i.mx, label %.lr.ph.i.i26.i204, label %_ZSt13move_backwardIP9t_clustidS1_ET0_T_S3_S2_.exit.i30.i

.lr.ph.i.i26.i204:                                ; preds = %bb.bc, %.lr.ph.i.i26.i204
  %.012.i.i27.i205 = phi ptr [ %.0.i.i29.i207, %.lr.ph.i.i26.i204 ], [ %.pn19.i21.i200, %bb.bc ] ; 5 uses
  %.0911.i.i28.i206 = phi ptr [ %.012.i.i27.i205, %.lr.ph.i.i26.i204 ], [ %.020.i20.i199, %bb.bc ]
  %i.my = load i64, ptr %.012.i.i27.i205, align 4
  store i64 %i.my, ptr %.0911.i.i28.i206, align 4
  %.0.i.i29.i207 = getelementptr inbounds i8, ptr %.012.i.i27.i205, i64 -8
  %i.mz = getelementptr inbounds i8, ptr %.012.i.i27.i205, i64 -4
  %i.na = load i32, ptr %i.mz, align 4, !tbaa !101
  %i.nb = icmp sgt i32 %i.na, %.sroa.4263.0.extract.trunc
  br i1 %i.nb, label %.lr.ph.i.i26.i204, label %_ZSt13move_backwardIP9t_clustidS1_ET0_T_S3_S2_.exit.i30.i, !llvm.loop !107

_ZSt13move_backwardIP9t_clustidS1_ET0_T_S3_S2_.exit.i30.i: ; preds = %.lr.ph.i.i26.i204, %bb.bc, %bb.az, %bb.ba, %bb.bb
  %.09.lcssa.i.i23.i201.sink = phi ptr [ %i.gv, %bb.az ], [ %i.gv, %bb.bb ], [ %i.gv, %bb.ba ], [ %.020.i20.i199, %bb.bc ], [ %.012.i.i27.i205, %.lr.ph.i.i26.i204 ]
  store i64 %i.mk, ptr %.09.lcssa.i.i23.i201.sink, align 4
  %.0.i24.i202 = getelementptr inbounds nuw i8, ptr %.020.i20.i199, i64 8 ; 2 uses
  %.not.i25.i203 = icmp eq ptr %.0.i24.i202, %i.kc
  br i1 %.not.i25.i203, label %_ZSt4sortIP9t_clustidPFbRKS0_S3_EEvT_S6_T0_.exit, label %.lr.ph.i19.i198, !llvm.loop !108

_ZSt4sortIP9t_clustidPFbRKS0_S3_EEvT_S6_T0_.exit: ; preds = %_ZSt13move_backwardIP9t_clustidS1_ET0_T_S3_S2_.exit.i30.i, %.lr.ph.i.i216.prol.loopexit, %_ZSt25__unguarded_linear_insertIP9t_clustidN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i11.i.1
  %i.nc = icmp sgt i32 %0, 1
  br i1 %i.nc, label %.lr.ph319.preheader, label %._crit_edge320

.lr.ph319.preheader:                              ; preds = %_ZSt4sortIP9t_clustidPFbRKS0_S3_EEvT_S6_T0_.exit
  %wide.trip.count385 = zext nneg i32 %0 to i64
  %i.nd = add nsw i64 %wide.trip.count385, -1     ; 2 uses
  %xtraiter450 = and i64 %i.nd, 3                 ; 3 uses
  %i.ne = add nsw i32 %0, -2
  %i.nf = icmp ult i32 %i.ne, 3
  br i1 %i.nf, label %.lr.ph319.epil.preheader, label %.lr.ph319.preheader.new

.lr.ph319.preheader.new:                          ; preds = %.lr.ph319.preheader
  %unroll_iter = and i64 %i.nd, -4
  br label %.lr.ph319

.lr.ph319:                                        ; preds = %.lr.ph319, %.lr.ph319.preheader.new
  %indvars.iv382 = phi i64 [ 1, %.lr.ph319.preheader.new ], [ %indvars.iv.next383.3, %.lr.ph319 ] ; 5 uses
  %.0161318 = phi i32 [ 1, %.lr.ph319.preheader.new ], [ %spec.select.3, %.lr.ph319 ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph319.preheader.new ], [ %niter.next.3, %.lr.ph319 ]
  %i.ng = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %indvars.iv382 ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 4
  %i.ni = load i32, ptr %i.nh, align 4, !tbaa !101 ; 2 uses
  %i.nj = getelementptr i8, ptr %i.ng, i64 -4     ; 2 uses
  %i.nk = load i32, ptr %i.nj, align 4, !tbaa !101
  %.not187 = icmp ne i32 %i.ni, %i.nk
  %i.nl = zext i1 %.not187 to i32
  %spec.select = add nuw nsw i32 %.0161318, %i.nl ; 2 uses
  store i32 %.0161318, ptr %i.nj, align 4, !tbaa !101
  %i.nm = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %indvars.iv382 ; 2 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 12
  %i.no = load i32, ptr %i.nn, align 4, !tbaa !101 ; 2 uses
  %i.np = getelementptr i8, ptr %i.nm, i64 4
  %.not187.1 = icmp ne i32 %i.no, %i.ni
  %i.nq = zext i1 %.not187.1 to i32
  %spec.select.1 = add nuw nsw i32 %spec.select, %i.nq ; 2 uses
  store i32 %spec.select, ptr %i.np, align 4, !tbaa !101
  %i.nr = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %indvars.iv382 ; 2 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 20
  %i.nt = load i32, ptr %i.ns, align 4, !tbaa !101 ; 2 uses
  %i.nu = getelementptr i8, ptr %i.nr, i64 12
  %.not187.2 = icmp ne i32 %i.nt, %i.no
  %i.nv = zext i1 %.not187.2 to i32
  %spec.select.2 = add nuw nsw i32 %spec.select.1, %i.nv ; 2 uses
  store i32 %spec.select.1, ptr %i.nu, align 4, !tbaa !101
  %i.nw = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %indvars.iv382 ; 2 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 28
  %i.ny = load i32, ptr %i.nx, align 4, !tbaa !101
  %i.nz = getelementptr i8, ptr %i.nw, i64 20
  %.not187.3 = icmp ne i32 %i.ny, %i.nt
  %i.oa = zext i1 %.not187.3 to i32
  %spec.select.3 = add nuw nsw i32 %spec.select.2, %i.oa ; 3 uses
  store i32 %spec.select.2, ptr %i.nz, align 4, !tbaa !101
  %indvars.iv.next383.3 = add nuw nsw i64 %indvars.iv382, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge320.loopexit.unr-lcssa, label %.lr.ph319, !llvm.loop !169

._crit_edge320.loopexit.unr-lcssa:                ; preds = %.lr.ph319
  %lcmp.mod451.not = icmp eq i64 %xtraiter450, 0
  br i1 %lcmp.mod451.not, label %._crit_edge320.loopexit, label %.lr.ph319.epil.preheader

.lr.ph319.epil.preheader:                         ; preds = %._crit_edge320.loopexit.unr-lcssa, %.lr.ph319.preheader
  %indvars.iv382.epil.init = phi i64 [ 1, %.lr.ph319.preheader ], [ %indvars.iv.next383.3, %._crit_edge320.loopexit.unr-lcssa ]
  %.0161318.epil.init = phi i32 [ 1, %.lr.ph319.preheader ], [ %spec.select.3, %._crit_edge320.loopexit.unr-lcssa ]
  %lcmp.mod453 = icmp ne i64 %xtraiter450, 0
  tail call void @llvm.assume(i1 %lcmp.mod453)
  br label %.lr.ph319.epil

.lr.ph319.epil:                                   ; preds = %.lr.ph319.epil, %.lr.ph319.epil.preheader
  %indvars.iv382.epil = phi i64 [ %indvars.iv382.epil.init, %.lr.ph319.epil.preheader ], [ %indvars.iv.next383.epil, %.lr.ph319.epil ] ; 2 uses
  %.0161318.epil = phi i32 [ %.0161318.epil.init, %.lr.ph319.epil.preheader ], [ %spec.select.epil, %.lr.ph319.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph319.epil.preheader ], [ %epil.iter.next, %.lr.ph319.epil ]
  %i.ob = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %indvars.iv382.epil ; 2 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 4
  %i.od = load i32, ptr %i.oc, align 4, !tbaa !101
  %i.oe = getelementptr i8, ptr %i.ob, i64 -4     ; 2 uses
  %i.of = load i32, ptr %i.oe, align 4, !tbaa !101
  %.not187.epil = icmp ne i32 %i.od, %i.of
  %i.og = zext i1 %.not187.epil to i32
  %spec.select.epil = add nuw nsw i32 %.0161318.epil, %i.og ; 2 uses
  store i32 %.0161318.epil, ptr %i.oe, align 4, !tbaa !101
  %indvars.iv.next383.epil = add nuw nsw i64 %indvars.iv382.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter450
  br i1 %epil.iter.cmp.not, label %._crit_edge320.loopexit, label %.lr.ph319.epil, !llvm.loop !170

._crit_edge320.loopexit:                          ; preds = %.lr.ph319.epil, %._crit_edge320.loopexit.unr-lcssa
  %spec.select.lcssa = phi i32 [ %spec.select.3, %._crit_edge320.loopexit.unr-lcssa ], [ %spec.select.epil, %.lr.ph319.epil ]
  %i.oh = zext nneg i32 %0 to i64
  br label %._crit_edge320

._crit_edge320:                                   ; preds = %_ZSt4sortIP9t_clustidPFbRKS0_S3_EEvT_S6_T0_.exit, %._crit_edge320.loopexit
  %.4.lcssa = phi i64 [ %i.oh, %._crit_edge320.loopexit ], [ 1, %_ZSt4sortIP9t_clustidPFbRKS0_S3_EEvT_S6_T0_.exit ]
  %.0161.lcssa = phi i32 [ %spec.select.lcssa, %._crit_edge320.loopexit ], [ 1, %_ZSt4sortIP9t_clustidPFbRKS0_S3_EEvT_S6_T0_.exit ] ; 2 uses
  %i.oi = getelementptr [8 x i8], ptr %i.gv, i64 %.4.lcssa
  %i.oj = getelementptr i8, ptr %i.oi, i64 -4
  store i32 %.0161.lcssa, ptr %i.oj, align 4, !tbaa !101
  store i32 %.0161.lcssa, ptr %5, align 8, !tbaa !105
  br i1 %i.f, label %.lr.ph325, label %._crit_edge332.critedge

.lr.ph325:                                        ; preds = %._crit_edge320.thread, %._crit_edge320
  %i.ok = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ol = load ptr, ptr %i.ok, align 8, !tbaa !114 ; 9 uses
  %wide.trip.count390 = zext nneg i32 %0 to i64   ; 2 uses
  %xtraiter454 = and i64 %wide.trip.count390, 7   ; 3 uses
  %i.om = icmp ult i32 %0, 8
  br i1 %i.om, label %.epil.preheader, label %.lr.ph325.new

.lr.ph325.new:                                    ; preds = %.lr.ph325
  %unroll_iter458 = and i64 %wide.trip.count390, 2147483640
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bd, %.lr.ph325.new
  %indvars.iv387 = phi i64 [ 0, %.lr.ph325.new ], [ %indvars.iv.next388.7, %bb.bd ] ; 9 uses
  %niter459 = phi i64 [ 0, %.lr.ph325.new ], [ %niter459.next.7, %bb.bd ]
  %i.on = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %indvars.iv387 ; 2 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 4
  %i.op = load i32, ptr %i.oo, align 4, !tbaa !101
  %i.oq = load i32, ptr %i.on, align 4, !tbaa !112
  %i.or = sext i32 %i.oq to i64
  %i.os = getelementptr inbounds [4 x i8], ptr %i.ol, i64 %i.or
  store i32 %i.op, ptr %i.os, align 4, !tbaa !49
  %i.ot = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %indvars.iv387 ; 2 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 8
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ot, i64 12
  %i.ow = load i32, ptr %i.ov, align 4, !tbaa !101
  %i.ox = load i32, ptr %i.ou, align 4, !tbaa !112
  %i.oy = sext i32 %i.ox to i64
  %i.oz = getelementptr inbounds [4 x i8], ptr %i.ol, i64 %i.oy
  store i32 %i.ow, ptr %i.oz, align 4, !tbaa !49
  %i.pa = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %indvars.iv387 ; 2 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %i.pa, i64 16
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pa, i64 20
  %i.pd = load i32, ptr %i.pc, align 4, !tbaa !101
  %i.pe = load i32, ptr %i.pb, align 4, !tbaa !112
  %i.pf = sext i32 %i.pe to i64
  %i.pg = getelementptr inbounds [4 x i8], ptr %i.ol, i64 %i.pf
  store i32 %i.pd, ptr %i.pg, align 4, !tbaa !49
  %i.ph = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %indvars.iv387 ; 2 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ph, i64 24
  %i.pj = getelementptr inbounds nuw i8, ptr %i.ph, i64 28
  %i.pk = load i32, ptr %i.pj, align 4, !tbaa !101
  %i.pl = load i32, ptr %i.pi, align 4, !tbaa !112
  %i.pm = sext i32 %i.pl to i64
  %i.pn = getelementptr inbounds [4 x i8], ptr %i.ol, i64 %i.pm
  store i32 %i.pk, ptr %i.pn, align 4, !tbaa !49
  %i.po = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %indvars.iv387 ; 2 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %i.po, i64 32
  %i.pq = getelementptr inbounds nuw i8, ptr %i.po, i64 36
  %i.pr = load i32, ptr %i.pq, align 4, !tbaa !101
  %i.ps = load i32, ptr %i.pp, align 4, !tbaa !112
  %i.pt = sext i32 %i.ps to i64
  %i.pu = getelementptr inbounds [4 x i8], ptr %i.ol, i64 %i.pt
  store i32 %i.pr, ptr %i.pu, align 4, !tbaa !49
  %i.pv = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %indvars.iv387 ; 2 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pv, i64 40
  %i.px = getelementptr inbounds nuw i8, ptr %i.pv, i64 44
  %i.py = load i32, ptr %i.px, align 4, !tbaa !101
  %i.pz = load i32, ptr %i.pw, align 4, !tbaa !112
  %i.qa = sext i32 %i.pz to i64
  %i.qb = getelementptr inbounds [4 x i8], ptr %i.ol, i64 %i.qa
  store i32 %i.py, ptr %i.qb, align 4, !tbaa !49
  %i.qc = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %indvars.iv387 ; 2 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qc, i64 48
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qc, i64 52
  %i.qf = load i32, ptr %i.qe, align 4, !tbaa !101
  %i.qg = load i32, ptr %i.qd, align 4, !tbaa !112
  %i.qh = sext i32 %i.qg to i64
  %i.qi = getelementptr inbounds [4 x i8], ptr %i.ol, i64 %i.qh
  store i32 %i.qf, ptr %i.qi, align 4, !tbaa !49
  %i.qj = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %indvars.iv387 ; 2 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qj, i64 56
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qj, i64 60
  %i.qm = load i32, ptr %i.ql, align 4, !tbaa !101
  %i.qn = load i32, ptr %i.qk, align 4, !tbaa !112
  %i.qo = sext i32 %i.qn to i64
  %i.qp = getelementptr inbounds [4 x i8], ptr %i.ol, i64 %i.qo
  store i32 %i.qm, ptr %i.qp, align 4, !tbaa !49
  %indvars.iv.next388.7 = add nuw nsw i64 %indvars.iv387, 8 ; 2 uses
  %niter459.next.7 = add i64 %niter459, 8         ; 2 uses
  %niter459.ncmp.7 = icmp eq i64 %niter459.next.7, %unroll_iter458
  br i1 %niter459.ncmp.7, label %._crit_edge326.unr-lcssa, label %bb.bd, !llvm.loop !171

._crit_edge326.unr-lcssa:                         ; preds = %bb.bd
  %lcmp.mod456.not = icmp eq i64 %xtraiter454, 0
  br i1 %lcmp.mod456.not, label %._crit_edge326, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge326.unr-lcssa, %.lr.ph325
  %indvars.iv387.epil.init = phi i64 [ 0, %.lr.ph325 ], [ %indvars.iv.next388.7, %._crit_edge326.unr-lcssa ]
  %lcmp.mod457 = icmp ne i64 %xtraiter454, 0
  tail call void @llvm.assume(i1 %lcmp.mod457)
  br label %bb.be

bb.be:                                            ; preds = %bb.be, %.epil.preheader
  %indvars.iv387.epil = phi i64 [ %indvars.iv387.epil.init, %.epil.preheader ], [ %indvars.iv.next388.epil, %bb.be ] ; 2 uses
  %epil.iter455 = phi i64 [ 0, %.epil.preheader ], [ %epil.iter455.next, %bb.be ]
  %i.qq = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %indvars.iv387.epil ; 2 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qq, i64 4
  %i.qs = load i32, ptr %i.qr, align 4, !tbaa !101
  %i.qt = load i32, ptr %i.qq, align 4, !tbaa !112
  %i.qu = sext i32 %i.qt to i64
  %i.qv = getelementptr inbounds [4 x i8], ptr %i.ol, i64 %i.qu
  store i32 %i.qs, ptr %i.qv, align 4, !tbaa !49
  %indvars.iv.next388.epil = add nuw nsw i64 %indvars.iv387.epil, 1
  %epil.iter455.next = add i64 %epil.iter455, 1   ; 2 uses
  %epil.iter455.cmp.not = icmp eq i64 %epil.iter455.next, %xtraiter454
  br i1 %epil.iter455.cmp.not, label %._crit_edge326, label %bb.be, !llvm.loop !172

._crit_edge326:                                   ; preds = %bb.be, %._crit_edge326.unr-lcssa
  %i.qw = load ptr, ptr @debug, align 8, !tbaa !27
  %.not186 = icmp ne ptr %i.qw, null
  %or.cond333 = and i1 %.not186, %i.f
  br i1 %or.cond333, label %.lr.ph328.preheader, label %.loopexit

.lr.ph328.preheader:                              ; preds = %._crit_edge326
  %wide.trip.count395 = zext nneg i32 %0 to i64
  br label %.lr.ph328

.lr.ph328:                                        ; preds = %.lr.ph328.preheader, %.lr.ph328
  %indvars.iv392 = phi i64 [ 0, %.lr.ph328.preheader ], [ %indvars.iv.next393, %.lr.ph328 ] ; 2 uses
  %i.qx = load ptr, ptr @debug, align 8, !tbaa !27
  %i.qy = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %indvars.iv392 ; 2 uses
  %i.qz = load i32, ptr %i.qy, align 4, !tbaa !112
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qy, i64 4
  %i.rb = load i32, ptr %i.ra, align 4, !tbaa !101
  %i.rc = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.qx, ptr noundef nonnull @.str.33, i32 noundef %i.qz, i32 noundef %i.rb) #23 ; 0 uses
  %indvars.iv.next393 = add nuw nsw i64 %indvars.iv392, 1 ; 2 uses
  %exitcond396.not = icmp eq i64 %indvars.iv.next393, %wide.trip.count395
  br i1 %exitcond396.not, label %.loopexit, label %.lr.ph328, !llvm.loop !173

.loopexit:                                        ; preds = %.lr.ph328, %._crit_edge320.thread424, %._crit_edge326
  call void @_Z11done_matrixiPPPf(i32 noundef %0, ptr noundef nonnull %i.a)
  call void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.27, i32 noundef 489, ptr noundef nonnull %i.gv)
  br i1 %i.f, label %.lr.ph331.preheader, label %._crit_edge332

.lr.ph331.preheader:                              ; preds = %.loopexit
  %wide.trip.count400 = zext nneg i32 %0 to i64
  br label %.lr.ph331

.lr.ph331:                                        ; preds = %.lr.ph331.preheader, %.lr.ph331
  %indvars.iv397 = phi i64 [ 0, %.lr.ph331.preheader ], [ %indvars.iv.next398, %.lr.ph331 ] ; 2 uses
  %i.rd = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv397
  %i.re = load ptr, ptr %i.rd, align 8, !tbaa !153
  call void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.27, i32 noundef 492, ptr noundef %i.re)
  %indvars.iv.next398 = add nuw nsw i64 %indvars.iv397, 1 ; 2 uses
  %exitcond401.not = icmp eq i64 %indvars.iv.next398, %wide.trip.count400
  br i1 %exitcond401.not, label %._crit_edge332, label %.lr.ph331, !llvm.loop !174

._crit_edge332.critedge:                          ; preds = %._crit_edge320
  call void @_Z11done_matrixiPPPf(i32 noundef %0, ptr noundef nonnull %i.a)
  call void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.27, i32 noundef 489, ptr noundef nonnull %i.gv)
  br label %._crit_edge332

._crit_edge332:                                   ; preds = %.lr.ph331, %._crit_edge332.critedge, %.loopexit
  call void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.27, i32 noundef 494, ptr noundef %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void
}

declare noundef ptr @_Z9mk_matrixiib(i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

declare void @_Z11done_matrixiPPPf(i32 noundef, ptr noundef) local_unnamed_addr #2

declare noundef ptr @_Z12save_reallocPKcS0_iPvmm(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define void @_Z6gromosiPPffP10t_clusters(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, float noundef %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #17 {
bb.a:
  %.sroa.6156 = alloca [12 x i8], align 4         ; 4 uses
  %4 = alloca %struct.t_nnb, align 8              ; 4 uses
  %.sroa.6152 = alloca [12 x i8], align 4         ; 12 uses
  %.sroa.6148 = alloca [12 x i8], align 4         ; 4 uses
  %5 = alloca %struct.t_nnb, align 8              ; 4 uses
  %.sroa.6144 = alloca [12 x i8], align 4         ; 4 uses
  %6 = alloca %struct.t_nnb, align 8              ; 4 uses
  %.sroa.6140 = alloca [12 x i8], align 4         ; 12 uses
  %.sroa.6 = alloca [12 x i8], align 4            ; 4 uses
  %7 = alloca %struct.t_nnb, align 8              ; 4 uses
  %i.a = load ptr, ptr @stderr, align 8, !tbaa !27
  %i.b = tail call i64 @fwrite(ptr nonnull @.str.42, i64 39, i64 1, ptr %i.a) #24 ; 0 uses
  %i.c = sext i32 %0 to i64                       ; 3 uses
  %i.d = tail call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.27, i32 noundef 521, i64 noundef range(i64 -2147483648, 2147483648) %i.c, i64 noundef 16) ; 49 uses
  %i.e = icmp sgt i32 %0, 0                       ; 3 uses
  br i1 %i.e, label %.preheader161.lr.ph, label %._crit_edge166

.preheader161.lr.ph:                              ; preds = %bb.a
  %i.f = udiv i32 %0, 100
  %i.g = add nuw nsw i32 %i.f, 1
  %wide.trip.count196 = zext nneg i32 %0 to i64   ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.h, %.preheader161.lr.ph
  %indvars.iv193 = phi i64 [ 0, %.preheader161.lr.ph ], [ %indvars.iv.next194, %bb.h ] ; 6 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv193
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %indvars.iv193
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 3 uses
  %.0164 = phi i32 [ 0, %.lr.ph ], [ %.2, %bb.f ] ; 4 uses
  %.062163 = phi i32 [ 0, %.lr.ph ], [ %.163, %bb.f ] ; 4 uses
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !30
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv
  %i.m = load float, ptr %i.l, align 4, !tbaa !31
  %i.n = fcmp olt float %i.m, %2
  br i1 %i.n, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %.not79 = icmp slt i32 %.062163, %.0164
  %.pre = load ptr, ptr %i.j, align 8, !tbaa !153 ; 2 uses
  br i1 %.not79, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = add nsw i32 %.0164, 10                   ; 2 uses
  %i.p = sext i32 %i.o to i64
  %i.q = tail call noundef ptr @_Z12save_reallocPKcS0_iPvmm(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.27, i32 noundef 534, ptr noundef %.pre, i64 noundef range(i64 -2147483647, 2147483648) %i.p, i64 noundef 4) ; 2 uses
  store ptr %i.q, ptr %i.j, align 8, !tbaa !153
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.r = phi ptr [ %i.q, %bb.d ], [ %.pre, %bb.c ]
  %.1 = phi i32 [ %i.o, %bb.d ], [ %.0164, %bb.c ]
  %i.s = sext i32 %.062163 to i64
  %i.t = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.s
  %i.u = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.u, ptr %i.t, align 4, !tbaa !49
  %i.v = add nsw i32 %.062163, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.e
  %.163 = phi i32 [ %i.v, %bb.e ], [ %.062163, %bb.b ] ; 2 uses
  %.2 = phi i32 [ %.1, %bb.e ], [ %.0164, %bb.b ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count196
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !175

._crit_edge:                                      ; preds = %bb.f
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %indvars.iv193
  store i32 %.163, ptr %i.w, align 8, !tbaa !176
  %i.x = trunc nuw nsw i64 %indvars.iv193 to i32
  %i.y = urem i32 %i.x, %i.g
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge
  %i.aa = load ptr, ptr @stderr, align 8, !tbaa !27
  %i.ab = trunc i64 %indvars.iv193 to i32
  %i.ac = mul i32 %i.ab, 100
  %i.ad = or disjoint i32 %i.ac, 1
  %i.ae = udiv i32 %i.ad, %0
  %i.af = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aa, ptr noundef nonnull @.str.44, i32 noundef %i.ae) #28 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %bb.g
  %indvars.iv.next194 = add nuw nsw i64 %indvars.iv193, 1 ; 2 uses
  %exitcond197.not = icmp eq i64 %indvars.iv.next194, %wide.trip.count196
  br i1 %exitcond197.not, label %._crit_edge166, label %.lr.ph, !llvm.loop !178

._crit_edge166:                                   ; preds = %bb.h, %bb.a
  %i.ag = load ptr, ptr @stderr, align 8, !tbaa !27
  %i.ah = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ag, ptr noundef nonnull @.str.45, i32 noundef 100) #28 ; 0 uses
  %.idx = shl nsw i64 %i.c, 4                     ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %i.d, i64 %.idx ; 3 uses
  %.not.i.i = icmp eq i32 %0, 0
  br i1 %.not.i.i, label %_ZSt4sortIP5t_nnbPFbRKS0_S3_EEvT_S6_T0_.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge166
  %i.aj = ptrtoint ptr %i.d to i64
  %i.ak = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.c, i1 true)
  %i.al = shl nuw nsw i64 %i.ak, 1
  %i.am = xor i64 %i.al, 126
  tail call void @_ZSt16__introsort_loopIP5t_nnblN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS0_S6_EEEEvT_SA_T0_T1_(ptr noundef %i.d, ptr noundef nonnull %i.ai, i64 noundef %i.am, ptr nonnull @_ZL9nrnb_compRK5t_nnbS1_)
  %i.an = icmp sgt i32 %0, 16
  br i1 %i.an, label %bb.j, label %bb.q

bb.j:                                             ; preds = %bb.i
  %scevgep.i = getelementptr i8, ptr %i.d, i64 16
  br label %bb.k

end_hunk_4
