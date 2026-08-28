Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/box_filters?download=true
inline.NumInlined: 200
inline.NumDeleted: 77
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 36
loop-unroll.NumUnrolled: 68
begin_hunk_0_@dt_box_min:bb.a
  br i1 %lcmp.mod403.not, label %_ZL11_window_minPKfi.exit.i.us.i.preheader, label %.lr.ph.i.i.us.i.epil.preheader

.lr.ph.i.i.us.i.epil.preheader:                   ; preds = %_ZL11_window_minPKfi.exit.i.us.i.preheader.loopexit.unr-lcssa, %.lr.ph.i.i.us.i.preheader
  %indvars.iv.i.i.us.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.us.i.preheader ], [ %indvars.iv.next.i.i.us.i.7, %_ZL11_window_minPKfi.exit.i.us.i.preheader.loopexit.unr-lcssa ]
  %.0911.i.i.us.i.epil.init = phi float [ f0x7F7FFFFF, %.lr.ph.i.i.us.i.preheader ], [ %.09..i.i.us.i.7, %_ZL11_window_minPKfi.exit.i.us.i.preheader.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod405)
  br label %.lr.ph.i.i.us.i.epil

.lr.ph.i.i.us.i.epil:                             ; preds = %.lr.ph.i.i.us.i.epil, %.lr.ph.i.i.us.i.epil.preheader
  %indvars.iv.i.i.us.i.epil = phi i64 [ %indvars.iv.next.i.i.us.i.epil, %.lr.ph.i.i.us.i.epil ], [ %indvars.iv.i.i.us.i.epil.init, %.lr.ph.i.i.us.i.epil.preheader ] ; 2 uses
  %.0911.i.i.us.i.epil = phi float [ %.09..i.i.us.i.epil, %.lr.ph.i.i.us.i.epil ], [ %.0911.i.i.us.i.epil.init, %.lr.ph.i.i.us.i.epil.preheader ] ; 2 uses
  %epil.iter402 = phi i64 [ %epil.iter402.next, %.lr.ph.i.i.us.i.epil ], [ 0, %.lr.ph.i.i.us.i.epil.preheader ]
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.i.i.us.i.epil
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !18 ; 2 uses
  %i.bl = fcmp reassoc nsz arcp contract afn olt float %.0911.i.i.us.i.epil, %i.bk
  %.09..i.i.us.i.epil = select reassoc nsz arcp contract afn i1 %i.bl, float %.0911.i.i.us.i.epil, float %i.bk ; 2 uses
  %indvars.iv.next.i.i.us.i.epil = add nuw nsw i64 %indvars.iv.i.i.us.i.epil, 1
  %epil.iter402.next = add i64 %epil.iter402, 1   ; 2 uses
  %epil.iter402.cmp.not = icmp eq i64 %epil.iter402.next, %xtraiter401
  br i1 %epil.iter402.cmp.not, label %_ZL11_window_minPKfi.exit.i.us.i.preheader, label %.lr.ph.i.i.us.i.epil, !llvm.loop !882

_ZL11_window_minPKfi.exit.i.us.i.preheader:       ; preds = %_ZL11_window_minPKfi.exit.i.us.i.preheader.loopexit.unr-lcssa, %.lr.ph.i.i.us.i.epil, %.lr.ph.split.us.i
  %.03854.i.us.i.ph = phi float [ f0x7F7FFFFF, %.lr.ph.split.us.i ], [ %.09..i.i.us.i.7, %_ZL11_window_minPKfi.exit.i.us.i.preheader.loopexit.unr-lcssa ], [ %.09..i.i.us.i.epil, %.lr.ph.i.i.us.i.epil ]
  br label %_ZL11_window_minPKfi.exit.i.us.i

_ZL11_window_minPKfi.exit.i.us.i:                 ; preds = %_ZL11_window_minPKfi.exit.i.us.i.preheader, %bb.f
  %indvars.iv.i.us.i = phi i64 [ %indvars.iv.next.i.us.i, %bb.f ], [ 0, %_ZL11_window_minPKfi.exit.i.us.i.preheader ] ; 7 uses
  %.03854.i.us.i = phi float [ %.2.i.us.i, %bb.f ], [ %.03854.i.us.i.ph, %_ZL11_window_minPKfi.exit.i.us.i.preheader ] ; 4 uses
  %i.bm = add i64 %i.z, %indvars.iv.i.us.i
  %i.bn = trunc i64 %i.bm to i32
  %smin = tail call i32 @llvm.smin.i32(i32 %i.bn, i32 %i.r)
  %i.bo = sub i64 %i.aa, %indvars.iv.i.us.i
  %i.bp = trunc i64 %i.bo to i32
  %i.bq = add i32 %smin, %i.bp
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv.i.us.i
  store float %.03854.i.us.i, ptr %i.br, align 4, !tbaa !18
  %i.bs = sub nsw i64 %indvars.iv.i.us.i, %i.x    ; 3 uses
  %i.bt = icmp sgt i64 %i.bs, -1
  br i1 %i.bt, label %bb.c, label %_ZL11_window_minPKfi.exit53.i.us.i

bb.c:                                             ; preds = %_ZL11_window_minPKfi.exit.i.us.i
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.bs
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !18
  %i.bw = fcmp reassoc nsz arcp contract afn oeq float %i.bv, %.03854.i.us.i
  br i1 %i.bw, label %bb.d, label %_ZL11_window_minPKfi.exit53.i.us.i

bb.d:                                             ; preds = %bb.c
  %i.bx = add nuw nsw i64 %i.bs, 1                ; 2 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.bx ; 9 uses
  %i.bz = trunc nuw nsw i64 %indvars.iv.i.us.i to i32
  %i.ca = add i32 %i.w, %i.bz
  %..i.us.i = tail call i32 @llvm.smin.i32(i32 %i.ca, i32 %i.r)
  %i.cb = trunc nsw i64 %i.bx to i32
  %i.cc = sub nsw i32 %..i.us.i, %i.cb            ; 2 uses
  %i.cd = icmp sgt i32 %i.cc, 0
  br i1 %i.cd, label %.lr.ph.preheader.i45.i.us.i, label %_ZL11_window_minPKfi.exit53.i.us.i

.lr.ph.preheader.i45.i.us.i:                      ; preds = %bb.d
  %wide.trip.count.i46.i.us.i = zext nneg i32 %i.cc to i64 ; 2 uses
  %xtraiter408 = and i64 %wide.trip.count.i46.i.us.i, 7 ; 3 uses
  %i.ce = add i32 %i.bq, -1
  %i.cf = icmp ult i32 %i.ce, 7
  br i1 %i.cf, label %.lr.ph.i47.i.us.i.epil.preheader, label %.lr.ph.preheader.i45.i.us.i.new

.lr.ph.preheader.i45.i.us.i.new:                  ; preds = %.lr.ph.preheader.i45.i.us.i
  %unroll_iter413 = and i64 %wide.trip.count.i46.i.us.i, 2147483640
  br label %.lr.ph.i47.i.us.i

.lr.ph.i47.i.us.i:                                ; preds = %.lr.ph.i47.i.us.i, %.lr.ph.preheader.i45.i.us.i.new
  %indvars.iv.i48.i.us.i = phi i64 [ 0, %.lr.ph.preheader.i45.i.us.i.new ], [ %indvars.iv.next.i51.i.us.i.7, %.lr.ph.i47.i.us.i ] ; 9 uses
  %.0911.i49.i.us.i = phi float [ f0x7F7FFFFF, %.lr.ph.preheader.i45.i.us.i.new ], [ %.09..i50.i.us.i.7, %.lr.ph.i47.i.us.i ] ; 2 uses
  %niter414 = phi i64 [ 0, %.lr.ph.preheader.i45.i.us.i.new ], [ %niter414.next.7, %.lr.ph.i47.i.us.i ]
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv.i48.i.us.i
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !18 ; 2 uses
  %i.ci = fcmp reassoc nsz arcp contract afn olt float %.0911.i49.i.us.i, %i.ch
  %.09..i50.i.us.i = select reassoc nsz arcp contract afn i1 %i.ci, float %.0911.i49.i.us.i, float %i.ch ; 2 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv.i48.i.us.i
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !18 ; 2 uses
  %i.cm = fcmp reassoc nsz arcp contract afn olt float %.09..i50.i.us.i, %i.cl
  %.09..i50.i.us.i.1 = select reassoc nsz arcp contract afn i1 %i.cm, float %.09..i50.i.us.i, float %i.cl ; 2 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv.i48.i.us.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cp = load float, ptr %i.co, align 4, !tbaa !18 ; 2 uses
  %i.cq = fcmp reassoc nsz arcp contract afn olt float %.09..i50.i.us.i.1, %i.cp
  %.09..i50.i.us.i.2 = select reassoc nsz arcp contract afn i1 %i.cq, float %.09..i50.i.us.i.1, float %i.cp ; 2 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv.i48.i.us.i
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 12
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !18 ; 2 uses
  %i.cu = fcmp reassoc nsz arcp contract afn olt float %.09..i50.i.us.i.2, %i.ct
  %.09..i50.i.us.i.3 = select reassoc nsz arcp contract afn i1 %i.cu, float %.09..i50.i.us.i.2, float %i.ct ; 2 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv.i48.i.us.i
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !18 ; 2 uses
  %i.cy = fcmp reassoc nsz arcp contract afn olt float %.09..i50.i.us.i.3, %i.cx
  %.09..i50.i.us.i.4 = select reassoc nsz arcp contract afn i1 %i.cy, float %.09..i50.i.us.i.3, float %i.cx ; 2 uses
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv.i48.i.us.i
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 20
  %i.db = load float, ptr %i.da, align 4, !tbaa !18 ; 2 uses
  %i.dc = fcmp reassoc nsz arcp contract afn olt float %.09..i50.i.us.i.4, %i.db
  %.09..i50.i.us.i.5 = select reassoc nsz arcp contract afn i1 %i.dc, float %.09..i50.i.us.i.4, float %i.db ; 2 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv.i48.i.us.i
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.df = load float, ptr %i.de, align 4, !tbaa !18 ; 2 uses
  %i.dg = fcmp reassoc nsz arcp contract afn olt float %.09..i50.i.us.i.5, %i.df
  %.09..i50.i.us.i.6 = select reassoc nsz arcp contract afn i1 %i.dg, float %.09..i50.i.us.i.5, float %i.df ; 2 uses
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv.i48.i.us.i
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 28
  %i.dj = load float, ptr %i.di, align 4, !tbaa !18 ; 2 uses
  %i.dk = fcmp reassoc nsz arcp contract afn olt float %.09..i50.i.us.i.6, %i.dj
  %.09..i50.i.us.i.7 = select reassoc nsz arcp contract afn i1 %i.dk, float %.09..i50.i.us.i.6, float %i.dj ; 3 uses
  %indvars.iv.next.i51.i.us.i.7 = add nuw nsw i64 %indvars.iv.i48.i.us.i, 8 ; 2 uses
  %niter414.next.7 = add i64 %niter414, 8         ; 2 uses
  %niter414.ncmp.7 = icmp eq i64 %niter414.next.7, %unroll_iter413
  br i1 %niter414.ncmp.7, label %_ZL11_window_minPKfi.exit53.i.us.i.loopexit.unr-lcssa, label %.lr.ph.i47.i.us.i, !llvm.loop !881

_ZL11_window_minPKfi.exit53.i.us.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i47.i.us.i
  %lcmp.mod410.not = icmp eq i64 %xtraiter408, 0
  br i1 %lcmp.mod410.not, label %_ZL11_window_minPKfi.exit53.i.us.i, label %.lr.ph.i47.i.us.i.epil.preheader

.lr.ph.i47.i.us.i.epil.preheader:                 ; preds = %_ZL11_window_minPKfi.exit53.i.us.i.loopexit.unr-lcssa, %.lr.ph.preheader.i45.i.us.i
  %indvars.iv.i48.i.us.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i45.i.us.i ], [ %indvars.iv.next.i51.i.us.i.7, %_ZL11_window_minPKfi.exit53.i.us.i.loopexit.unr-lcssa ]
  %.0911.i49.i.us.i.epil.init = phi float [ f0x7F7FFFFF, %.lr.ph.preheader.i45.i.us.i ], [ %.09..i50.i.us.i.7, %_ZL11_window_minPKfi.exit53.i.us.i.loopexit.unr-lcssa ]
  %lcmp.mod412 = icmp ne i64 %xtraiter408, 0
  tail call void @llvm.assume(i1 %lcmp.mod412)
  br label %.lr.ph.i47.i.us.i.epil

.lr.ph.i47.i.us.i.epil:                           ; preds = %.lr.ph.i47.i.us.i.epil, %.lr.ph.i47.i.us.i.epil.preheader
  %indvars.iv.i48.i.us.i.epil = phi i64 [ %indvars.iv.i48.i.us.i.epil.init, %.lr.ph.i47.i.us.i.epil.preheader ], [ %indvars.iv.next.i51.i.us.i.epil, %.lr.ph.i47.i.us.i.epil ] ; 2 uses
  %.0911.i49.i.us.i.epil = phi float [ %.0911.i49.i.us.i.epil.init, %.lr.ph.i47.i.us.i.epil.preheader ], [ %.09..i50.i.us.i.epil, %.lr.ph.i47.i.us.i.epil ] ; 2 uses
  %epil.iter409 = phi i64 [ 0, %.lr.ph.i47.i.us.i.epil.preheader ], [ %epil.iter409.next, %.lr.ph.i47.i.us.i.epil ]
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv.i48.i.us.i.epil
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !18 ; 2 uses
  %i.dn = fcmp reassoc nsz arcp contract afn olt float %.0911.i49.i.us.i.epil, %i.dm
  %.09..i50.i.us.i.epil = select reassoc nsz arcp contract afn i1 %i.dn, float %.0911.i49.i.us.i.epil, float %i.dm ; 2 uses
  %indvars.iv.next.i51.i.us.i.epil = add nuw nsw i64 %indvars.iv.i48.i.us.i.epil, 1
  %epil.iter409.next = add i64 %epil.iter409, 1   ; 2 uses
  %epil.iter409.cmp.not = icmp eq i64 %epil.iter409.next, %xtraiter408
  br i1 %epil.iter409.cmp.not, label %_ZL11_window_minPKfi.exit53.i.us.i, label %.lr.ph.i47.i.us.i.epil, !llvm.loop !883

_ZL11_window_minPKfi.exit53.i.us.i:               ; preds = %_ZL11_window_minPKfi.exit53.i.us.i.loopexit.unr-lcssa, %.lr.ph.i47.i.us.i.epil, %bb.d, %bb.c, %_ZL11_window_minPKfi.exit.i.us.i
  %.1.i.us.i = phi nsz float [ %.03854.i.us.i, %_ZL11_window_minPKfi.exit.i.us.i ], [ %.03854.i.us.i, %bb.c ], [ f0x7F7FFFFF, %bb.d ], [ %.09..i50.i.us.i.7, %_ZL11_window_minPKfi.exit53.i.us.i.loopexit.unr-lcssa ], [ %.09..i50.i.us.i.epil, %.lr.ph.i47.i.us.i.epil ] ; 3 uses
  %i.do = trunc nuw nsw i64 %indvars.iv.i.us.i to i32
  %i.dp = add i32 %i.s, %i.do                     ; 2 uses
  %i.dq = icmp slt i32 %i.dp, %i.r
  br i1 %i.dq, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZL11_window_minPKfi.exit53.i.us.i
  %i.dr = sext i32 %i.dp to i64
  %i.ds = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.dr
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !18 ; 2 uses
  %i.du = fcmp reassoc nsz arcp contract afn olt float %i.dt, %.1.i.us.i
  %..1.i.us.i = select reassoc nsz arcp contract afn i1 %i.du, float %i.dt, float %.1.i.us.i
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZL11_window_minPKfi.exit53.i.us.i
  %.2.i.us.i = phi nsz float [ %..1.i.us.i, %bb.e ], [ %.1.i.us.i, %_ZL11_window_minPKfi.exit53.i.us.i ]
  %indvars.iv.next.i.us.i = add nuw nsw i64 %indvars.iv.i.us.i, 1 ; 2 uses
  %exitcond.not.i.us.i = icmp eq i64 %indvars.iv.next.i.us.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.us.i, label %_ZL11_box_min_1diPKfPfi.exit.loopexit.us.i, label %_ZL11_window_minPKfi.exit.i.us.i, !llvm.loop !884

_ZL11_box_min_1diPKfPfi.exit.loopexit.us.i:       ; preds = %bb.f
  %i.dv = add nuw i64 %.062174.us.i, 1            ; 2 uses
  %exitcond243.not.i = icmp eq i64 %i.dv, %1
  br i1 %exitcond243.not.i, label %.preheader129.i, label %.lr.ph.split.us.i, !llvm.loop !885

.preheader129.i.loopexit398.unr-lcssa:            ; preds = %_ZL11_window_minPKfi.exit.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader129.i, label %_ZL11_window_minPKfi.exit.i.i.epil.preheader

_ZL11_window_minPKfi.exit.i.i.epil.preheader:     ; preds = %.preheader129.i.loopexit398.unr-lcssa, %_ZL11_window_minPKfi.exit.i.i.preheader
  %.062174.i.epil.init = phi i64 [ 0, %_ZL11_window_minPKfi.exit.i.i.preheader ], [ %i.fg, %.preheader129.i.loopexit398.unr-lcssa ]
  %lcmp.mod400 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod400)
  br label %_ZL11_window_minPKfi.exit.i.i.epil

_ZL11_window_minPKfi.exit.i.i.epil:               ; preds = %_ZL11_window_minPKfi.exit.i.i.epil, %_ZL11_window_minPKfi.exit.i.i.epil.preheader
  %.062174.i.epil = phi i64 [ %i.dy, %_ZL11_window_minPKfi.exit.i.i.epil ], [ %.062174.i.epil.init, %_ZL11_window_minPKfi.exit.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %_ZL11_window_minPKfi.exit.i.i.epil ], [ 0, %_ZL11_window_minPKfi.exit.i.i.epil.preheader ]
  %i.dw = mul i64 %.062174.i.epil, %2
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.dw
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 64 %i.o, ptr align 4 %i.dx, i64 %i.q, i1 false)
  %i.dy = add nuw i64 %.062174.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader129.i, label %_ZL11_window_minPKfi.exit.i.i.epil, !llvm.loop !886

.preheader129.i:                                  ; preds = %.preheader129.i.loopexit398.unr-lcssa, %_ZL11_window_minPKfi.exit.i.i.epil, %_ZL11_box_min_1diPKfPfi.exit.loopexit.us.i, %.preheader130.i
  %i.dz = and i64 %2, -16                         ; 5 uses
  %.not194.i = icmp eq i64 %i.dz, 0
  br i1 %.not194.i, label %.preheader128.i, label %.lr.ph186.i

.lr.ph186.i:                                      ; preds = %.preheader129.i
  %i.ea = trunc i64 %1 to i32                     ; 2 uses
  %i.eb = add nsw i64 %i.i, -1                    ; 6 uses
  %i.ec = add i32 %i.b, 1
  %i.ed = tail call i32 @llvm.umin.i32(i32 %i.ec, i32 %i.ea) ; 4 uses
  %i.ee = zext i32 %i.ed to i64                   ; 2 uses
  %sext126.i = shl i64 %2, 32
  %i.ef = ashr exact i64 %sext126.i, 32           ; 9 uses
  %i.eg = and i64 %1, 4294967295                  ; 5 uses
  %.not212.i.i = icmp eq i32 %i.ea, 0
  %i.eh = add nuw nsw i64 %i.c, 1                 ; 2 uses
  %xtraiter415 = and i64 %i.ee, 1
  %i.ei = icmp eq i32 %i.ed, 1                    ; 0 uses
  %unroll_iter420 = and i64 %i.ee, 4294967294
  %lcmp.mod417.not = icmp eq i64 %xtraiter415, 0
  %lcmp.mod419 = trunc i32 %i.ed to i1
  %invariant.op = sub i64 1, %i.c
  %broadcast.splatinsert = insertelement <8 x i64> poison, i64 %i.eb, i64 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> poison, <8 x i32> zeroinitializer
  br label %bb.g

_ZL11_window_minPKfi.exit.i.i:                    ; preds = %_ZL11_window_minPKfi.exit.i.i, %_ZL11_window_minPKfi.exit.i.i.preheader.new
  %.062174.i = phi i64 [ 0, %_ZL11_window_minPKfi.exit.i.i.preheader.new ], [ %i.fg, %_ZL11_window_minPKfi.exit.i.i ] ; 9 uses
  %niter = phi i64 [ 0, %_ZL11_window_minPKfi.exit.i.i.preheader.new ], [ %niter.next.7, %_ZL11_window_minPKfi.exit.i.i ]
  %i.ej = mul i64 %.062174.i, %2
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ej
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 64 %i.o, ptr align 4 %i.ek, i64 %i.q, i1 false)
  %i.el = or disjoint i64 %.062174.i, 1
  %i.em = mul i64 %i.el, %2
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.em
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 64 %i.o, ptr align 4 %i.en, i64 %i.q, i1 false)
  %i.eo = or disjoint i64 %.062174.i, 2
  %i.ep = mul i64 %i.eo, %2
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ep
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 64 %i.o, ptr align 4 %i.eq, i64 %i.q, i1 false)
  %i.er = or disjoint i64 %.062174.i, 3
  %i.es = mul i64 %i.er, %2
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.es
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 64 %i.o, ptr align 4 %i.et, i64 %i.q, i1 false)
  %i.eu = or disjoint i64 %.062174.i, 4
  %i.ev = mul i64 %i.eu, %2
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ev
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 64 %i.o, ptr align 4 %i.ew, i64 %i.q, i1 false)
  %i.ex = or disjoint i64 %.062174.i, 5
  %i.ey = mul i64 %i.ex, %2
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ey
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 64 %i.o, ptr align 4 %i.ez, i64 %i.q, i1 false)
  %i.fa = or disjoint i64 %.062174.i, 6
  %i.fb = mul i64 %i.fa, %2
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.fb
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 64 %i.o, ptr align 4 %i.fc, i64 %i.q, i1 false)
  %i.fd = or disjoint i64 %.062174.i, 7
  %i.fe = mul i64 %i.fd, %2
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.fe
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 64 %i.o, ptr align 4 %i.ff, i64 %i.q, i1 false)
  %i.fg = add nuw i64 %.062174.i, 8               ; 2 uses
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.preheader129.i.loopexit398.unr-lcssa, label %_ZL11_window_minPKfi.exit.i.i, !llvm.loop !885

.preheader128.i:                                  ; preds = %_ZL13_box_min_vertILm16EEvjPfS0_ijm.exit.i, %.preheader129.i
  %i.fh = and i64 %2, -4                          ; 2 uses
  %i.fi = icmp ult i64 %i.dz, %i.fh
  br i1 %i.fi, label %.lr.ph189.i, label %.preheader.i

.lr.ph189.i:                                      ; preds = %.preheader128.i
  %i.fj = trunc i64 %1 to i32                     ; 2 uses
  %i.fk = add nsw i64 %i.i, -1                    ; 6 uses
  %i.fl = add i32 %i.b, 1
  %i.fm = tail call i32 @llvm.umin.i32(i32 %i.fl, i32 %i.fj) ; 4 uses
  %i.fn = zext i32 %i.fm to i64                   ; 2 uses
  %sext124.i = shl i64 %2, 32
  %i.fo = ashr exact i64 %sext124.i, 32           ; 9 uses
  %i.fp = and i64 %1, 4294967295                  ; 5 uses
  %.not104.i.i = icmp eq i32 %i.fj, 0
  %i.fq = add nuw nsw i64 %i.c, 1                 ; 2 uses
  %xtraiter422 = and i64 %i.fn, 1
  %i.fr = icmp eq i32 %i.fm, 1                    ; 0 uses
  %unroll_iter429 = and i64 %i.fn, 4294967294
  %lcmp.mod426.not = icmp eq i64 %xtraiter422, 0
  %lcmp.mod428 = trunc i32 %i.fm to i1
  %invariant.op482 = sub i64 1, %i.c
  %broadcast.splatinsert275 = insertelement <8 x i64> poison, i64 %i.fk, i64 0
  %broadcast.splat276 = shufflevector <8 x i64> %broadcast.splatinsert275, <8 x i64> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %bb.k

bb.g:                                             ; preds = %_ZL13_box_min_vertILm16EEvjPfS0_ijm.exit.i, %.lr.ph186.i
  %.061185.i = phi i64 [ 0, %.lr.ph186.i ], [ %i.mf, %_ZL13_box_min_vertILm16EEvjPfS0_ijm.exit.i ] ; 2 uses
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.061185.i ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !887)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !890)
  switch i32 %i.ed, label %.lr.ph.i70.i [
    i32 0, label %.preheader.i.i
    i32 1, label %.lr.ph.i70.i.epil.preheader
  ]

.preheader.i.i.loopexit.unr-lcssa:                ; preds = %.lr.ph.i70.i
  br i1 %lcmp.mod417.not, label %.preheader.i.i, label %.lr.ph.i70.i.epil.preheader

.lr.ph.i70.i.epil.preheader:                      ; preds = %bb.g, %.preheader.i.i.loopexit.unr-lcssa
  %.05262.i.i.epil.init = phi i64 [ 0, %bb.g ], [ %i.gy, %.preheader.i.i.loopexit.unr-lcssa ] ; 3 uses
  %.epil.init = phi <16 x float> [ splat (float f0x7F7FFFFF), %bb.g ], [ %i.gx, %.preheader.i.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod419)
  %i.ft = add nuw nsw i64 %.05262.i.i.epil.init, 24
  %i.fu = mul i64 %i.ft, %i.ef
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %i.fu
  tail call void @llvm.prefetch.p0(ptr %i.fv, i32 0, i32 0, i32 1), !noalias !887
  %i.fw = and i64 %.05262.i.i.epil.init, %i.eb
  %.idx59.i.i.epil = shl nuw nsw i64 %i.fw, 6
  %i.fx = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx59.i.i.epil
  %i.fy = mul nsw i64 %.05262.i.i.epil.init, %i.ef
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %i.fy ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !892)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %i.fx, ptr noundef nonnull readonly align 4 dereferenceable(64) %i.fz, i64 64, i1 false), !tbaa !18, !alias.scope !895
  %i.ga = load <16 x float>, ptr %i.fz, align 4, !tbaa !18, !alias.scope !897, !noalias !898
  %i.gb = tail call reassoc nsz arcp contract afn <16 x float> @llvm.minnum.v16f32(<16 x float> %.epil.init, <16 x float> %i.ga)
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.lr.ph.i70.i.epil.preheader, %.preheader.i.i.loopexit.unr-lcssa, %bb.g
  %i.gc = phi <16 x float> [ splat (float f0x7F7FFFFF), %bb.g ], [ %i.gx, %.preheader.i.i.loopexit.unr-lcssa ], [ %i.gb, %.lr.ph.i70.i.epil.preheader ] ; 2 uses
  br i1 %.not212.i.i, label %_ZL13_box_min_vertILm16EEvjPfS0_ijm.exit.i, label %.lr.ph135.i.i.preheader

.lr.ph135.i.i.preheader:                          ; preds = %.preheader.i.i
  %i.gd = shufflevector <16 x float> %i.gc, <16 x float> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  br label %.lr.ph135.i.i

.lr.ph.i70.i:                                     ; preds = %bb.g, %.lr.ph.i70.i
  %.05262.i.i = phi i64 [ %i.gy, %.lr.ph.i70.i ], [ 0, %bb.g ] ; 6 uses
  %i.ge = phi <16 x float> [ %i.gx, %.lr.ph.i70.i ], [ splat (float f0x7F7FFFFF), %bb.g ]
  %niter421 = phi i64 [ %niter421.next.1, %.lr.ph.i70.i ], [ 0, %bb.g ]
  %i.gf = add nuw nsw i64 %.05262.i.i, 24
  %i.gg = mul i64 %i.gf, %i.ef
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %i.gg
  tail call void @llvm.prefetch.p0(ptr %i.gh, i32 0, i32 0, i32 1), !noalias !887
  %i.gi = and i64 %.05262.i.i, %i.eb
  %.idx59.i.i = shl nuw nsw i64 %i.gi, 6
  %i.gj = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx59.i.i
  %i.gk = mul nsw i64 %.05262.i.i, %i.ef
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %i.gk ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !892)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %i.gj, ptr noundef nonnull readonly align 4 dereferenceable(64) %i.gl, i64 64, i1 false), !tbaa !18, !alias.scope !895
  %i.gm = load <16 x float>, ptr %i.gl, align 4, !tbaa !18, !alias.scope !897, !noalias !898
  %i.gn = tail call reassoc nsz arcp contract afn <16 x float> @llvm.minnum.v16f32(<16 x float> %i.ge, <16 x float> %i.gm)
  %i.go = or disjoint i64 %.05262.i.i, 1          ; 2 uses
  %i.gp = add nuw nsw i64 %.05262.i.i, 25
  %i.gq = mul i64 %i.gp, %i.ef
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %i.gq
  tail call void @llvm.prefetch.p0(ptr %i.gr, i32 0, i32 0, i32 1), !noalias !887
  %i.gs = and i64 %i.go, %i.eb
  %.idx59.i.i.1 = shl nuw nsw i64 %i.gs, 6
  %i.gt = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx59.i.i.1
  %i.gu = mul nsw i64 %i.go, %i.ef
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %i.gu ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !899)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %i.gt, ptr noundef nonnull readonly align 4 dereferenceable(64) %i.gv, i64 64, i1 false), !tbaa !18, !alias.scope !901
  %i.gw = load <16 x float>, ptr %i.gv, align 4, !tbaa !18, !alias.scope !897, !noalias !902
  %i.gx = tail call reassoc nsz arcp contract afn <16 x float> @llvm.minnum.v16f32(<16 x float> %i.gn, <16 x float> %i.gw) ; 3 uses
  %i.gy = add nuw nsw i64 %.05262.i.i, 2          ; 2 uses
  %niter421.next.1 = add i64 %niter421, 2         ; 2 uses
  %niter421.ncmp.1 = icmp eq i64 %niter421.next.1, %unroll_iter420
  br i1 %niter421.ncmp.1, label %.preheader.i.i.loopexit.unr-lcssa, label %.lr.ph.i70.i, !llvm.loop !903

.lr.ph135.i.i:                                    ; preds = %.lr.ph135.i.i.preheader, %bb.j
  %indvars.iv.i72.i = phi i64 [ %indvars.iv.next.i75.i, %bb.j ], [ %i.eh, %.lr.ph135.i.i.preheader ] ; 3 uses
  %.051134.i.i = phi i64 [ %i.md, %bb.j ], [ 0, %.lr.ph135.i.i.preheader ] ; 7 uses
  %i.gz = phi <16 x float> [ %i.me, %bb.j ], [ %i.gc, %.lr.ph135.i.i.preheader ]
  %i.ha = phi <32 x float> [ %i.mc, %bb.j ], [ %i.gd, %.lr.ph135.i.i.preheader ] ; 3 uses
  %umin = tail call i64 @llvm.umin.i64(i64 %indvars.iv.i72.i, i64 %i.eg)
  %i.hb = xor i64 %.051134.i.i, -1
  %5 = add nsw i64 %i.c, %i.hb
  %i.hc = add i64 %umin, %5                       ; 3 uses
  %umin.i.i = tail call i64 @llvm.umin.i64(i64 %indvars.iv.i72.i, i64 %i.eg)
  %i.hd = add nuw nsw i64 %.051134.i.i, 24
  %i.he = mul i64 %i.hd, %i.ef
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %i.he
  tail call void @llvm.prefetch.p0(ptr %i.hf, i32 0, i32 0, i32 1), !noalias !887
  %i.hg = mul nsw i64 %.051134.i.i, %i.ef
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %i.hg ; 2 uses
  %i.hi = shufflevector <32 x float> %i.ha, <32 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  store <8 x float> %i.hi, ptr %i.hh, align 4, !tbaa !18, !alias.scope !904, !noalias !887
  %.sroa.59.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.hh, i64 32
  %i.hj = shufflevector <32 x float> %i.ha, <32 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  store <8 x float> %i.hj, ptr %.sroa.59.0..sroa_idx.i.i, align 4, !tbaa !18, !alias.scope !904, !noalias !887
  %.not.i73.i = icmp samesign ult i64 %.051134.i.i, %i.c
  %.pre.i.i = add nuw nsw i64 %.051134.i.i, %i.eh ; 4 uses
  br i1 %.not.i73.i, label %.loopexit.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph135.i.i
  %..i74.i = tail call i64 @llvm.umin.i64(i64 %.pre.i.i, i64 %i.eg)
  %.0109.reass.reass.i.reass.reass.i.reass.reass.reass = add i64 %.051134.i.i, %invariant.op ; 4 uses
  %i.hk = icmp samesign ult i64 %.0109.reass.reass.i.reass.reass.i.reass.reass.reass, %..i74.i
  br i1 %i.hk, label %.lr.ph111.i.i.preheader, label %.loopexit.i.i

.lr.ph111.i.i.preheader:                          ; preds = %bb.h
  %min.iters.check = icmp ult i64 %i.hc, 8
  br i1 %min.iters.check, label %.lr.ph111.i.i.preheader376, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph111.i.i.preheader
  %n.vec = and i64 %i.hc, -8                      ; 3 uses
  %broadcast.splatinsert208 = insertelement <8 x i64> poison, i64 %.0109.reass.reass.i.reass.reass.i.reass.reass.reass, i64 0
  %broadcast.splat209 = shufflevector <8 x i64> %broadcast.splatinsert208, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction = add nuw nsw <8 x i64> %broadcast.splat209, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i64> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %vec.phi = phi <8 x float> [ splat (float f0x7F7FFFFF), %vector.ph ], [ %i.hn, %vector.body ] ; 2 uses
  %vec.phi210 = phi <8 x float> [ splat (float f0x7F7FFFFF), %vector.ph ], [ %i.ho, %vector.body ] ; 2 uses
  %vec.phi211 = phi <8 x float> [ splat (float f0x7F7FFFFF), %vector.ph ], [ %i.hp, %vector.body ] ; 2 uses
  %vec.phi212 = phi <8 x float> [ splat (float f0x7F7FFFFF), %vector.ph ], [ %i.hq, %vector.body ] ; 2 uses
  %vec.phi213 = phi <8 x float> [ splat (float f0x7F7FFFFF), %vector.ph ], [ %i.hr, %vector.body ] ; 2 uses
  %vec.phi214 = phi <8 x float> [ splat (float f0x7F7FFFFF), %vector.ph ], [ %i.hs, %vector.body ] ; 2 uses
  %vec.phi215 = phi <8 x float> [ splat (float f0x7F7FFFFF), %vector.ph ], [ %i.ht, %vector.body ] ; 2 uses
  %vec.phi216 = phi <8 x float> [ splat (float f0x7F7FFFFF), %vector.ph ], [ %i.hu, %vector.body ] ; 2 uses
  %vec.phi217 = phi <8 x float> [ splat (float f0x7F7FFFFF), %vector.ph ], [ %i.hv, %vector.body ] ; 2 uses
  %vec.phi218 = phi <8 x float> [ splat (float f0x7F7FFFFF), %vector.ph ], [ %i.hw, %vector.body ] ; 2 uses
  %vec.phi219 = phi <8 x float> [ splat (float f0x7F7FFFFF), %vector.ph ], [ %i.hx, %vector.body ] ; 2 uses
  %vec.phi220 = phi <8 x float> [ splat (float f0x7F7FFFFF), %vector.ph ], [ %i.hy, %vector.body ] ; 2 uses
  %vec.phi221 = phi <8 x float> [ splat (float f0x7F7FFFFF), %vector.ph ], [ %i.hz, %vector.body ] ; 2 uses
  %vec.phi222 = phi <8 x float> [ splat (float f0x7F7FFFFF), %vector.ph ], [ %i.ia, %vector.body ] ; 2 uses
  %vec.phi223 = phi <8 x float> [ splat (float f0x7F7FFFFF), %vector.ph ], [ %i.ib, %vector.body ] ; 2 uses
  %vec.phi224 = phi <8 x float> [ splat (float f0x7F7FFFFF), %vector.ph ], [ %i.ic, %vector.body ] ; 2 uses
  %i.hl = and <8 x i64> %vec.ind, %broadcast.splat
  %i.hm = shl <8 x i64> %i.hl, splat (i64 6)
  %wide.gep = getelementptr inbounds nuw i8, ptr %i.o, <8 x i64> %i.hm ; 16 uses
  %wide.masked.gather = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !18, !alias.scope !908, !noalias !890 ; 2 uses
  %i.hn = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %vec.phi, <8 x float> %wide.masked.gather) ; 2 uses
  %wide.gep225 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 4
  %wide.masked.gather226 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep225, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !18, !alias.scope !908, !noalias !890 ; 2 uses
  %i.ho = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %vec.phi210, <8 x float> %wide.masked.gather226) ; 2 uses
  %wide.gep227 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 8
  %wide.masked.gather228 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep227, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !18, !alias.scope !908, !noalias !890 ; 2 uses
  %i.hp = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %vec.phi211, <8 x float> %wide.masked.gather228) ; 2 uses
  %wide.gep229 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 12
  %wide.masked.gather230 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep229, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !18, !alias.scope !908, !noalias !890 ; 2 uses
  %i.hq = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %vec.phi212, <8 x float> %wide.masked.gather230) ; 2 uses
  %wide.gep231 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 16
  %wide.masked.gather232 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep231, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !18, !alias.scope !908, !noalias !890 ; 2 uses
  %i.hr = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %vec.phi213, <8 x float> %wide.masked.gather232) ; 2 uses
  %wide.gep233 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 20
  %wide.masked.gather234 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep233, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !18, !alias.scope !908, !noalias !890 ; 2 uses
  %i.hs = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %vec.phi214, <8 x float> %wide.masked.gather234) ; 2 uses
  %wide.gep235 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 24
  %wide.masked.gather236 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep235, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !18, !alias.scope !908, !noalias !890 ; 2 uses
  %i.ht = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %vec.phi215, <8 x float> %wide.masked.gather236) ; 2 uses
  %wide.gep237 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 28
  %wide.masked.gather238 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep237, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !18, !alias.scope !908, !noalias !890 ; 2 uses
  %i.hu = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %vec.phi216, <8 x float> %wide.masked.gather238) ; 2 uses
  %wide.gep239 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 32
  %wide.masked.gather240 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep239, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !18, !alias.scope !908, !noalias !890 ; 2 uses
  %i.hv = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %vec.phi217, <8 x float> %wide.masked.gather240) ; 2 uses
  %wide.gep241 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 36
  %wide.masked.gather242 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep241, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !18, !alias.scope !908, !noalias !890 ; 2 uses
  %i.hw = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %vec.phi218, <8 x float> %wide.masked.gather242) ; 2 uses
  %wide.gep243 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 40
  %wide.masked.gather244 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep243, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !18, !alias.scope !908, !noalias !890 ; 2 uses
  %i.hx = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %vec.phi219, <8 x float> %wide.masked.gather244) ; 2 uses
  %wide.gep245 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 44
  %wide.masked.gather246 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep245, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !18, !alias.scope !908, !noalias !890 ; 2 uses
  %i.hy = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %vec.phi220, <8 x float> %wide.masked.gather246) ; 2 uses
  %wide.gep247 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 48
  %wide.masked.gather248 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep247, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !18, !alias.scope !908, !noalias !890 ; 2 uses
  %i.hz = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %vec.phi221, <8 x float> %wide.masked.gather248) ; 2 uses
  %wide.gep249 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 52
  %wide.masked.gather250 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep249, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !18, !alias.scope !908, !noalias !890 ; 2 uses
  %i.ia = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %vec.phi222, <8 x float> %wide.masked.gather250) ; 2 uses
  %wide.gep251 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 56
  %wide.masked.gather252 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep251, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !18, !alias.scope !908, !noalias !890 ; 2 uses
  %i.ib = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %vec.phi223, <8 x float> %wide.masked.gather252) ; 2 uses
  %wide.gep253 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 60
  %wide.masked.gather254 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep253, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !18, !alias.scope !908, !noalias !890 ; 2 uses
  %i.ic = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %vec.phi224, <8 x float> %wide.masked.gather254) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.id = fcmp uno <8 x float> %wide.masked.gather, %wide.masked.gather226
  %i.ie = fcmp uno <8 x float> %wide.masked.gather230, %wide.masked.gather228
  %i.if = or <8 x i1> %i.id, %i.ie
  %i.ig = fcmp uno <8 x float> %wide.masked.gather234, %wide.masked.gather232
  %i.ih = or <8 x i1> %i.if, %i.ig
  %i.ii = fcmp uno <8 x float> %wide.masked.gather238, %wide.masked.gather236
  %i.ij = or <8 x i1> %i.ih, %i.ii
  %i.ik = fcmp uno <8 x float> %wide.masked.gather242, %wide.masked.gather240
  %i.il = or <8 x i1> %i.ij, %i.ik
  %i.im = fcmp uno <8 x float> %wide.masked.gather246, %wide.masked.gather244
  %i.in = or <8 x i1> %i.il, %i.im
  %i.io = fcmp uno <8 x float> %wide.masked.gather250, %wide.masked.gather248
  %i.ip = or <8 x i1> %i.in, %i.io
  %i.iq = fcmp uno <8 x float> %wide.masked.gather254, %wide.masked.gather252
  %i.ir = or <8 x i1> %i.ip, %i.iq
  %i.is = freeze <8 x i1> %i.ir
  %i.it = bitcast <8 x i1> %i.is to i8
  %i.iu = icmp ne i8 %i.it, 0                     ; 19 uses
  %i.iv = icmp eq i64 %index.next, %n.vec
  %i.iw = or i1 %i.iu, %i.iv
  %vec.ind.next = add nuw nsw <8 x i64> %vec.ind, splat (i64 8)
  br i1 %i.iw, label %middle.block, label %vector.body, !llvm.loop !911

middle.block:                                     ; preds = %vector.body
  %i.ix = select i1 %i.iu, <8 x float> %vec.phi, <8 x float> %i.hn
  %i.iy = select i1 %i.iu, <8 x float> %vec.phi210, <8 x float> %i.ho
  %i.iz = select i1 %i.iu, <8 x float> %vec.phi211, <8 x float> %i.hp
  %i.ja = select i1 %i.iu, <8 x float> %vec.phi212, <8 x float> %i.hq
  %i.jb = select i1 %i.iu, <8 x float> %vec.phi213, <8 x float> %i.hr
  %i.jc = select i1 %i.iu, <8 x float> %vec.phi214, <8 x float> %i.hs
  %i.jd = select i1 %i.iu, <8 x float> %vec.phi215, <8 x float> %i.ht
  %i.je = select i1 %i.iu, <8 x float> %vec.phi216, <8 x float> %i.hu
  %i.jf = select i1 %i.iu, <8 x float> %vec.phi217, <8 x float> %i.hv
  %i.jg = select i1 %i.iu, <8 x float> %vec.phi218, <8 x float> %i.hw
  %i.jh = select i1 %i.iu, <8 x float> %vec.phi219, <8 x float> %i.hx
  %i.ji = select i1 %i.iu, <8 x float> %vec.phi220, <8 x float> %i.hy
  %i.jj = select i1 %i.iu, <8 x float> %vec.phi221, <8 x float> %i.hz
  %i.jk = select i1 %i.iu, <8 x float> %vec.phi222, <8 x float> %i.ia
  %i.jl = select i1 %i.iu, <8 x float> %vec.phi223, <8 x float> %i.ib
  %i.jm = select i1 %i.iu, <8 x float> %vec.phi224, <8 x float> %i.ic
  %i.jn = select i1 %i.iu, i64 %index, i64 %n.vec
  %i.jo = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fmin.v8f32(<8 x float> %i.ix) ; 2 uses
  %i.jp = add i64 %.0109.reass.reass.i.reass.reass.i.reass.reass.reass, %i.jn
  %i.jq = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fmin.v8f32(<8 x float> %i.iy) ; 2 uses
  %i.jr = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fmin.v8f32(<8 x float> %i.iz) ; 2 uses
  %i.js = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fmin.v8f32(<8 x float> %i.ja) ; 2 uses
  %i.jt = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fmin.v8f32(<8 x float> %i.jb) ; 2 uses
  %i.ju = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fmin.v8f32(<8 x float> %i.jc) ; 2 uses
  %i.jv = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fmin.v8f32(<8 x float> %i.jd) ; 2 uses
  %i.jw = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fmin.v8f32(<8 x float> %i.je) ; 2 uses
  %i.jx = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fmin.v8f32(<8 x float> %i.jf) ; 2 uses
  %i.jy = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fmin.v8f32(<8 x float> %i.jg) ; 2 uses
  %i.jz = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fmin.v8f32(<8 x float> %i.jh) ; 2 uses
  %i.ka = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fmin.v8f32(<8 x float> %i.ji) ; 2 uses
  %i.kb = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fmin.v8f32(<8 x float> %i.jj) ; 2 uses
  %i.kc = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fmin.v8f32(<8 x float> %i.jk) ; 2 uses
  %i.kd = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fmin.v8f32(<8 x float> %i.jl) ; 2 uses
  %i.ke = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fmin.v8f32(<8 x float> %i.jm) ; 2 uses
  %cmp.n = icmp ne i64 %i.hc, %n.vec
  %.not = or i1 %cmp.n, %i.iu
  %i.kf = insertelement <16 x float> poison, float %i.jo, i64 0
  %i.kg = insertelement <16 x float> %i.kf, float %i.jq, i64 1
  %i.kh = insertelement <16 x float> %i.kg, float %i.jr, i64 2
  %i.ki = insertelement <16 x float> %i.kh, float %i.js, i64 3
  %i.kj = insertelement <16 x float> %i.ki, float %i.jt, i64 4
  %i.kk = insertelement <16 x float> %i.kj, float %i.ju, i64 5
  %i.kl = insertelement <16 x float> %i.kk, float %i.jv, i64 6
  %i.km = insertelement <16 x float> %i.kl, float %i.jw, i64 7
  %i.kn = insertelement <16 x float> %i.km, float %i.jx, i64 8
  %i.ko = insertelement <16 x float> %i.kn, float %i.jy, i64 9
  %i.kp = insertelement <16 x float> %i.ko, float %i.jz, i64 10
  %i.kq = insertelement <16 x float> %i.kp, float %i.ka, i64 11
  %i.kr = insertelement <16 x float> %i.kq, float %i.kb, i64 12
  %i.ks = insertelement <16 x float> %i.kr, float %i.kc, i64 13
  %i.kt = insertelement <16 x float> %i.ks, float %i.kd, i64 14
  %i.ku = insertelement <16 x float> %i.kt, float %i.ke, i64 15 ; 2 uses
  %i.kv = insertelement <32 x float> poison, float %i.ke, i64 0
  %i.kw = insertelement <32 x float> %i.kv, float %i.kd, i64 1
  %i.kx = insertelement <32 x float> %i.kw, float %i.kc, i64 2
  %i.ky = insertelement <32 x float> %i.kx, float %i.kb, i64 3
  %i.kz = insertelement <32 x float> %i.ky, float %i.ka, i64 4
  %i.la = insertelement <32 x float> %i.kz, float %i.jz, i64 5
  %i.lb = insertelement <32 x float> %i.la, float %i.jy, i64 6
  %i.lc = insertelement <32 x float> %i.lb, float %i.jx, i64 7
  %i.ld = insertelement <32 x float> %i.lc, float %i.jw, i64 8
  %i.le = insertelement <32 x float> %i.ld, float %i.jv, i64 9
  %i.lf = insertelement <32 x float> %i.le, float %i.ju, i64 10
  %i.lg = insertelement <32 x float> %i.lf, float %i.jt, i64 11
  %i.lh = insertelement <32 x float> %i.lg, float %i.js, i64 12
  %i.li = insertelement <32 x float> %i.lh, float %i.jr, i64 13
  %i.lj = insertelement <32 x float> %i.li, float %i.jq, i64 14
  %i.lk = insertelement <32 x float> %i.lj, float %i.jo, i64 15
  %i.ll = shufflevector <32 x float> %i.lk, <32 x float> poison, <32 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0, i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  br i1 %.not, label %.lr.ph111.i.i.preheader376, label %.loopexit.i.i

.lr.ph111.i.i.preheader376:                       ; preds = %.lr.ph111.i.i.preheader, %middle.block
  %.0110.i.i.ph = phi i64 [ %.0109.reass.reass.i.reass.reass.i.reass.reass.reass, %.lr.ph111.i.i.preheader ], [ %i.jp, %middle.block ]
  %.ph377 = phi <16 x float> [ splat (float f0x7F7FFFFF), %.lr.ph111.i.i.preheader ], [ %i.ku, %middle.block ]
  br label %.lr.ph111.i.i

.lr.ph111.i.i:                                    ; preds = %.lr.ph111.i.i.preheader376, %.lr.ph111.i.i
  %.0110.i.i = phi i64 [ %.0.i.i, %.lr.ph111.i.i ], [ %.0110.i.i.ph, %.lr.ph111.i.i.preheader376 ] ; 2 uses
  %i.lm = phi <16 x float> [ %i.lq, %.lr.ph111.i.i ], [ %.ph377, %.lr.ph111.i.i.preheader376 ]
  %i.ln = and i64 %.0110.i.i, %i.eb
  %.idx58.i.i = shl i64 %i.ln, 6
  %i.lo = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx58.i.i
  %i.lp = load <16 x float>, ptr %i.lo, align 64, !tbaa !18, !alias.scope !908, !noalias !890
  %i.lq = tail call reassoc nsz arcp contract afn <16 x float> @llvm.minnum.v16f32(<16 x float> %i.lm, <16 x float> %i.lp) ; 3 uses
  %.0.i.i = add nuw nsw i64 %.0110.i.i, 1         ; 2 uses
  %exitcond244.not.i.i = icmp eq i64 %.0.i.i, %umin.i.i
  br i1 %exitcond244.not.i.i, label %.loopexit.i.i.loopexit, label %.lr.ph111.i.i, !llvm.loop !912

.loopexit.i.i.loopexit:                           ; preds = %.lr.ph111.i.i
  %i.lr = shufflevector <16 x float> %i.lq, <16 x float> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.loopexit.i.i.loopexit, %middle.block, %bb.h, %.lr.ph135.i.i
  %i.ls = phi <16 x float> [ %i.gz, %.lr.ph135.i.i ], [ splat (float f0x7F7FFFFF), %bb.h ], [ %i.ku, %middle.block ], [ %i.lq, %.loopexit.i.i.loopexit ]
  %i.lt = phi <32 x float> [ %i.ha, %.lr.ph135.i.i ], [ splat (float f0x7F7FFFFF), %bb.h ], [ %i.ll, %middle.block ], [ %i.lr, %.loopexit.i.i.loopexit ]
  %i.lu = icmp samesign ult i64 %.pre.i.i, %i.eg
  br i1 %i.lu, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.loopexit.i.i
  %i.lv = and i64 %.pre.i.i, %i.eb
  %.idx.i.i = shl nuw nsw i64 %i.lv, 6
  %i.lw = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx.i.i
  %i.lx = mul nsw i64 %.pre.i.i, %i.ef
  %i.ly = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %i.lx ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !913)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %i.lw, ptr noundef nonnull readonly align 4 dereferenceable(64) %i.ly, i64 64, i1 false), !tbaa !18, !alias.scope !916
  %i.lz = load <16 x float>, ptr %i.ly, align 4, !tbaa !18, !alias.scope !918, !noalias !919
  %i.ma = tail call reassoc nsz arcp contract afn <16 x float> @llvm.minnum.v16f32(<16 x float> %i.ls, <16 x float> %i.lz)
  %i.mb = shufflevector <16 x float> %i.ma, <16 x float> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.loopexit.i.i
  %i.mc = phi <32 x float> [ %i.mb, %bb.i ], [ %i.lt, %.loopexit.i.i ] ; 2 uses
  %i.md = add nuw nsw i64 %.051134.i.i, 1         ; 2 uses
  %indvars.iv.next.i75.i = add nuw nsw i64 %indvars.iv.i72.i, 1
  %exitcond245.not.i.i = icmp eq i64 %i.md, %i.eg
  %i.me = shufflevector <32 x float> %i.mc, <32 x float> poison, <16 x i32> <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  br i1 %exitcond245.not.i.i, label %_ZL13_box_min_vertILm16EEvjPfS0_ijm.exit.i, label %.lr.ph135.i.i, !llvm.loop !920

_ZL13_box_min_vertILm16EEvjPfS0_ijm.exit.i:       ; preds = %bb.j, %.preheader.i.i
  %i.mf = add nuw i64 %.061185.i, 16              ; 2 uses
  %i.mg = icmp ult i64 %i.mf, %i.dz
  br i1 %i.mg, label %bb.g, label %.preheader128.i, !llvm.loop !921

.preheader.i:                                     ; preds = %_ZL13_box_min_vertILm4EEvjPfS0_ijm.exit.i, %.preheader128.i
  %.0.lcssa.i = phi i64 [ %i.dz, %.preheader128.i ], [ %i.qp, %_ZL13_box_min_vertILm4EEvjPfS0_ijm.exit.i ] ; 2 uses
  %i.mh = icmp ult i64 %.0.lcssa.i, %2
  br i1 %i.mh, label %.lr.ph193.i, label %._crit_edge.i

.lr.ph193.i:                                      ; preds = %.preheader.i
  %i.mi = trunc i64 %1 to i32                     ; 2 uses
  %i.mj = add nsw i64 %i.i, -1                    ; 8 uses
  %i.mk = add i32 %i.b, 1
  %i.ml = tail call i32 @llvm.umin.i32(i32 %i.mk, i32 %i.mi) ; 3 uses
  %i.mm = zext i32 %i.ml to i64                   ; 2 uses
  %.not71.i.i = icmp eq i32 %i.ml, 0
  %sext.i = shl i64 %2, 32
  %i.mn = ashr exact i64 %sext.i, 32              ; 13 uses
  %i.mo = and i64 %1, 4294967295                  ; 5 uses
  %.not72.i.i = icmp eq i32 %i.mi, 0
  %i.mp = add nuw nsw i64 %i.c, 1                 ; 2 uses
  %xtraiter431 = and i64 %i.mm, 3                 ; 3 uses
  %i.mq = icmp ult i32 %i.ml, 4
  %unroll_iter436 = and i64 %i.mm, 4294967292
  %lcmp.mod433.not = icmp eq i64 %xtraiter431, 0
  %lcmp.mod435 = icmp ne i64 %xtraiter431, 0
  %invariant.op483 = sub i64 1, %i.c
  %broadcast.splatinsert324.a = insertelement <8 x i64> poison, i64 %i.mj, i64 0
  %broadcast.splat325.a = shufflevector <8 x i64> %broadcast.splatinsert324.a, <8 x i64> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %bb.o

bb.k:                                             ; preds = %_ZL13_box_min_vertILm4EEvjPfS0_ijm.exit.i, %.lr.ph189.i
  %.0188.i = phi i64 [ %i.dz, %.lr.ph189.i ], [ %i.qp, %_ZL13_box_min_vertILm4EEvjPfS0_ijm.exit.i ] ; 2 uses
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0188.i ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !922)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !925)
  switch i32 %i.fm, label %.lr.ph.i76.i [
    i32 0, label %.preheader.i80.i
    i32 1, label %.lr.ph.i76.i.epil.preheader
  ]

.preheader.i80.i.loopexit.unr-lcssa:              ; preds = %.lr.ph.i76.i
  br i1 %lcmp.mod426.not, label %.preheader.i80.i, label %.lr.ph.i76.i.epil.preheader

.lr.ph.i76.i.epil.preheader:                      ; preds = %bb.k, %.preheader.i80.i.loopexit.unr-lcssa
  %.05262.i77.i.epil.init = phi i64 [ 0, %bb.k ], [ %i.nw, %.preheader.i80.i.loopexit.unr-lcssa ] ; 3 uses
  %.epil.init425 = phi <4 x float> [ splat (float f0x7F7FFFFF), %bb.k ], [ %i.nv, %.preheader.i80.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod428)
  %i.ms = add nuw nsw i64 %.05262.i77.i.epil.init, 24
  %i.mt = mul i64 %i.ms, %i.fo
  %i.mu = getelementptr inbounds nuw [4 x i8], ptr %i.mr, i64 %i.mt
  tail call void @llvm.prefetch.p0(ptr %i.mu, i32 0, i32 0, i32 1), !noalias !922
  %i.mv = and i64 %.05262.i77.i.epil.init, %i.fk
  %.idx59.i78.i.epil = shl nuw nsw i64 %i.mv, 4
  %i.mw = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx59.i78.i.epil
  %i.mx = mul nsw i64 %.05262.i77.i.epil.init, %i.fo
  %i.my = getelementptr inbounds nuw [4 x i8], ptr %i.mr, i64 %i.mx ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !927)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.mw, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.my, i64 16, i1 false), !tbaa !18, !alias.scope !930
  %i.mz = load <4 x float>, ptr %i.my, align 4, !tbaa !18, !alias.scope !932, !noalias !933
  %i.na = tail call reassoc nsz arcp contract afn <4 x float> @llvm.minnum.v4f32(<4 x float> %.epil.init425, <4 x float> %i.mz)
  br label %.preheader.i80.i

.preheader.i80.i:                                 ; preds = %.lr.ph.i76.i.epil.preheader, %.preheader.i80.i.loopexit.unr-lcssa, %bb.k
  %i.nb = phi <4 x float> [ splat (float f0x7F7FFFFF), %bb.k ], [ %i.nv, %.preheader.i80.i.loopexit.unr-lcssa ], [ %i.na, %.lr.ph.i76.i.epil.preheader ] ; 2 uses
  br i1 %.not104.i.i, label %_ZL13_box_min_vertILm4EEvjPfS0_ijm.exit.i, label %.lr.ph90.i.i

.lr.ph.i76.i:                                     ; preds = %bb.k, %.lr.ph.i76.i
  %.05262.i77.i = phi i64 [ %i.nw, %.lr.ph.i76.i ], [ 0, %bb.k ] ; 6 uses
  %i.nc = phi <4 x float> [ %i.nv, %.lr.ph.i76.i ], [ splat (float f0x7F7FFFFF), %bb.k ]
  %niter430 = phi i64 [ %niter430.next.1, %.lr.ph.i76.i ], [ 0, %bb.k ]
  %i.nd = add nuw nsw i64 %.05262.i77.i, 24
  %i.ne = mul i64 %i.nd, %i.fo
  %i.nf = getelementptr inbounds nuw [4 x i8], ptr %i.mr, i64 %i.ne
  tail call void @llvm.prefetch.p0(ptr %i.nf, i32 0, i32 0, i32 1), !noalias !922
  %i.ng = and i64 %.05262.i77.i, %i.fk
  %.idx59.i78.i = shl nuw nsw i64 %i.ng, 4
  %i.nh = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx59.i78.i
  %i.ni = mul nsw i64 %.05262.i77.i, %i.fo
  %i.nj = getelementptr inbounds nuw [4 x i8], ptr %i.mr, i64 %i.ni ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !927)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(16) %i.nh, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.nj, i64 16, i1 false), !tbaa !18, !alias.scope !930
  %i.nk = load <4 x float>, ptr %i.nj, align 4, !tbaa !18, !alias.scope !932, !noalias !933
  %i.nl = tail call reassoc nsz arcp contract afn <4 x float> @llvm.minnum.v4f32(<4 x float> %i.nc, <4 x float> %i.nk)
  %i.nm = or disjoint i64 %.05262.i77.i, 1        ; 2 uses
  %i.nn = add nuw nsw i64 %.05262.i77.i, 25
  %i.no = mul i64 %i.nn, %i.fo
  %i.np = getelementptr inbounds nuw [4 x i8], ptr %i.mr, i64 %i.no
  tail call void @llvm.prefetch.p0(ptr %i.np, i32 0, i32 0, i32 1), !noalias !922
  %i.nq = and i64 %i.nm, %i.fk
  %.idx59.i78.i.1 = shl nuw nsw i64 %i.nq, 4
  %i.nr = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx59.i78.i.1
  %i.ns = mul nsw i64 %i.nm, %i.fo
  %i.nt = getelementptr inbounds nuw [4 x i8], ptr %i.mr, i64 %i.ns ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !934)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.nr, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.nt, i64 16, i1 false), !tbaa !18, !alias.scope !936
  %i.nu = load <4 x float>, ptr %i.nt, align 4, !tbaa !18, !alias.scope !932, !noalias !937
  %i.nv = tail call reassoc nsz arcp contract afn <4 x float> @llvm.minnum.v4f32(<4 x float> %i.nl, <4 x float> %i.nu) ; 3 uses
  %i.nw = add nuw nsw i64 %.05262.i77.i, 2        ; 2 uses
  %niter430.next.1 = add i64 %niter430, 2         ; 2 uses
  %niter430.ncmp.1 = icmp eq i64 %niter430.next.1, %unroll_iter429
  br i1 %niter430.ncmp.1, label %.preheader.i80.i.loopexit.unr-lcssa, label %.lr.ph.i76.i, !llvm.loop !938

.lr.ph90.i.i:                                     ; preds = %.preheader.i80.i, %bb.n
  %indvars.iv.i88.i = phi i64 [ %indvars.iv.next.i106.i, %bb.n ], [ %i.fq, %.preheader.i80.i ] ; 3 uses
  %.05189.i.i = phi i64 [ %i.qo, %bb.n ], [ 0, %.preheader.i80.i ] ; 7 uses
  %i.nx = phi <4 x float> [ %i.qn, %bb.n ], [ %i.nb, %.preheader.i80.i ]
  %i.ny = phi <4 x float> [ %i.qm, %bb.n ], [ %i.nb, %.preheader.i80.i ] ; 2 uses
  %umin270 = tail call i64 @llvm.umin.i64(i64 %indvars.iv.i88.i, i64 %i.fp)
  %i.nz = xor i64 %.05189.i.i, -1
  %6 = add nsw i64 %i.c, %i.nz
  %i.oa = add i64 %umin270, %6                    ; 3 uses
  %umin.i89.i = tail call i64 @llvm.umin.i64(i64 %indvars.iv.i88.i, i64 %i.fp)
  %i.ob = add nuw nsw i64 %.05189.i.i, 24
  %i.oc = mul i64 %i.ob, %i.fo
  %i.od = getelementptr inbounds nuw [4 x i8], ptr %i.mr, i64 %i.oc
  tail call void @llvm.prefetch.p0(ptr %i.od, i32 0, i32 0, i32 1), !noalias !922
  %i.oe = mul nsw i64 %.05189.i.i, %i.fo
  %i.of = getelementptr inbounds nuw [4 x i8], ptr %i.mr, i64 %i.oe
  store <4 x float> %i.ny, ptr %i.of, align 4, !tbaa !18, !alias.scope !939, !noalias !922
  %.not.i93.i = icmp samesign ult i64 %.05189.i.i, %i.c
  %.pre.i94.i = add nuw nsw i64 %.05189.i.i, %i.fq ; 4 uses
  br i1 %.not.i93.i, label %.loopexit.i97.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph90.i.i
  %..i95.i = tail call i64 @llvm.umin.i64(i64 %.pre.i94.i, i64 %i.fp)
  %.077.reass.reass.i.reass.reass.i.reass.reass.reass = add i64 %.05189.i.i, %invariant.op482 ; 4 uses
  %i.og = icmp samesign ult i64 %.077.reass.reass.i.reass.reass.i.reass.reass.reass, %..i95.i
  br i1 %i.og, label %.lr.ph79.i.i.preheader, label %.loopexit.i97.i

.lr.ph79.i.i.preheader:                           ; preds = %bb.l
  %min.iters.check272 = icmp ult i64 %i.oa, 16
  br i1 %min.iters.check272, label %.lr.ph79.i.i.preheader363, label %vector.ph273

vector.ph273:                                     ; preds = %.lr.ph79.i.i.preheader
  %n.vec274 = and i64 %i.oa, -16                  ; 3 uses
  %broadcast.splatinsert277 = insertelement <8 x i64> poison, i64 %.077.reass.reass.i.reass.reass.i.reass.reass.reass, i64 0
  %broadcast.splat278 = shufflevector <8 x i64> %broadcast.splatinsert277, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction279 = add nuw nsw <8 x i64> %broadcast.splat278, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  br label %vector.body280

vector.body280:                                   ; preds = %vector.body280, %vector.ph273
  %index281 = phi i64 [ 0, %vector.ph273 ], [ %index.next307, %vector.body280 ] ; 2 uses
  %vec.ind282 = phi <8 x i64> [ %induction279, %vector.ph273 ], [ %vec.ind.next308, %vector.body280 ] ; 3 uses
  %vec.phi283.a = phi <8 x float> [ splat (float f0x7F7FFFFF), %vector.ph273 ], [ %i.ol, %vector.body280 ] ; 2 uses
  %vec.phi284.a = phi <8 x float> [ splat (float f0x7F7FFFFF), %vector.ph273 ], [ %i.om, %vector.body280 ] ; 2 uses
  %vec.phi285.a = phi <8 x float> [ splat (float f0x7F7FFFFF), %vector.ph273 ], [ %i.on, %vector.body280 ] ; 2 uses
  %vec.phi286.a = phi <8 x float> [ splat (float f0x7F7FFFFF), %vector.ph273 ], [ %i.oo, %vector.body280 ] ; 2 uses
  %vec.phi287.a = phi <8 x float> [ splat (float f0x7F7FFFFF), %vector.ph273 ], [ %i.op, %vector.body280 ] ; 2 uses
  %vec.phi288.a = phi <8 x float> [ splat (float f0x7F7FFFFF), %vector.ph273 ], [ %i.oq, %vector.body280 ] ; 2 uses
  %vec.phi289.a = phi <8 x float> [ splat (float f0x7F7FFFFF), %vector.ph273 ], [ %i.or, %vector.body280 ] ; 2 uses
  %vec.phi290 = phi <8 x float> [ splat (float f0x7F7FFFFF), %vector.ph273 ], [ %i.os, %vector.body280 ] ; 2 uses
  %step.add = add nuw nsw <8 x i64> %vec.ind282, splat (i64 8)
  %i.oh = and <8 x i64> %vec.ind282, %broadcast.splat276
  %i.oi = and <8 x i64> %step.add, %broadcast.splat276
  %i.oj = shl <8 x i64> %i.oh, splat (i64 4)
  %i.ok = shl <8 x i64> %i.oi, splat (i64 4)
  %wide.gep291.a = getelementptr inbounds nuw i8, ptr %i.o, <8 x i64> %i.oj ; 4 uses
  %wide.gep292 = getelementptr inbounds nuw i8, ptr %i.o, <8 x i64> %i.ok ; 4 uses
  %wide.masked.gather293.a = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep291.a, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !18, !alias.scope !943, !noalias !925 ; 2 uses
  %wide.masked.gather294 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep292, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !18, !alias.scope !943, !noalias !925 ; 2 uses
  %i.ol = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %vec.phi283.a, <8 x float> %wide.masked.gather293.a) ; 2 uses
  %i.om = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %vec.phi284.a, <8 x float> %wide.masked.gather294) ; 2 uses
  %wide.gep295.a = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep291.a, i64 4
  %wide.gep296 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep292, i64 4
  %wide.masked.gather297.a = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep295.a, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !18, !alias.scope !943, !noalias !925 ; 2 uses
  %wide.masked.gather298 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep296, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !18, !alias.scope !943, !noalias !925 ; 2 uses
  %i.on = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %vec.phi285.a, <8 x float> %wide.masked.gather297.a) ; 2 uses
  %i.oo = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %vec.phi286.a, <8 x float> %wide.masked.gather298) ; 2 uses
  %wide.gep299.a = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep291.a, i64 8
  %wide.gep300 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep292, i64 8
  %wide.masked.gather301.a = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep299.a, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !18, !alias.scope !943, !noalias !925 ; 2 uses
  %wide.masked.gather302 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep300, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !18, !alias.scope !943, !noalias !925 ; 2 uses
  %i.op = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %vec.phi287.a, <8 x float> %wide.masked.gather301.a) ; 2 uses
  %i.oq = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %vec.phi288.a, <8 x float> %wide.masked.gather302) ; 2 uses
  %wide.gep303.a = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep291.a, i64 12
  %wide.gep304 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep292, i64 12
  %wide.masked.gather305.a = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep303.a, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !18, !alias.scope !943, !noalias !925 ; 2 uses
  %wide.masked.gather306 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep304, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !18, !alias.scope !943, !noalias !925 ; 2 uses
  %i.or = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %vec.phi289.a, <8 x float> %wide.masked.gather305.a) ; 2 uses
  %i.os = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %vec.phi290, <8 x float> %wide.masked.gather306) ; 2 uses
  %index.next307 = add nuw i64 %index281, 16      ; 2 uses
  %i.ot = fcmp uno <8 x float> %wide.masked.gather293.a, %wide.masked.gather297.a
  %i.ou = fcmp uno <8 x float> %wide.masked.gather294, %wide.masked.gather298
  %i.ov = fcmp uno <8 x float> %wide.masked.gather305.a, %wide.masked.gather301.a
  %i.ow = or <8 x i1> %i.ot, %i.ov
  %i.ox = fcmp uno <8 x float> %wide.masked.gather306, %wide.masked.gather302
  %i.oy = or <8 x i1> %i.ou, %i.ox
  %i.oz = freeze <8 x i1> %i.ow
  %i.pa = freeze <8 x i1> %i.oy
  %i.pb = or <8 x i1> %i.oz, %i.pa
  %i.pc = bitcast <8 x i1> %i.pb to i8
  %i.pd = icmp ne i8 %i.pc, 0                     ; 11 uses
  %i.pe = icmp eq i64 %index.next307, %n.vec274
  %i.pf = or i1 %i.pd, %i.pe
  %vec.ind.next308 = add nuw nsw <8 x i64> %vec.ind282, splat (i64 16)
  br i1 %i.pf, label %middle.block309, label %vector.body280, !llvm.loop !946

middle.block309:                                  ; preds = %vector.body280
  %i.pg = select i1 %i.pd, <8 x float> %vec.phi283.a, <8 x float> %i.ol
  %i.ph = select i1 %i.pd, <8 x float> %vec.phi284.a, <8 x float> %i.om
  %i.pi = select i1 %i.pd, <8 x float> %vec.phi285.a, <8 x float> %i.on
  %i.pj = select i1 %i.pd, <8 x float> %vec.phi286.a, <8 x float> %i.oo
  %i.pk = select i1 %i.pd, <8 x float> %vec.phi287.a, <8 x float> %i.op
  %i.pl = select i1 %i.pd, <8 x float> %vec.phi288.a, <8 x float> %i.oq
  %i.pm = select i1 %i.pd, <8 x float> %vec.phi289.a, <8 x float> %i.or
  %i.pn = select i1 %i.pd, <8 x float> %vec.phi290, <8 x float> %i.os
  %i.po = select i1 %i.pd, i64 %index281, i64 %n.vec274
  %rdx.minmax = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.pg, <8 x float> %i.ph)
  %i.pp = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fmin.v8f32(<8 x float> %rdx.minmax)
  %i.pq = add i64 %.077.reass.reass.i.reass.reass.i.reass.reass.reass, %i.po
  %rdx.minmax310.a = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.pi, <8 x float> %i.pj)
  %i.pr = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fmin.v8f32(<8 x float> %rdx.minmax310.a)
  %rdx.minmax311.a = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.pk, <8 x float> %i.pl)
  %i.ps = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fmin.v8f32(<8 x float> %rdx.minmax311.a)
  %rdx.minmax312 = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.pm, <8 x float> %i.pn)
  %i.pt = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fmin.v8f32(<8 x float> %rdx.minmax312)
  %cmp.n313 = icmp ne i64 %i.oa, %n.vec274
  %.not354 = or i1 %cmp.n313, %i.pd
  %i.pu = insertelement <4 x float> poison, float %i.pp, i64 0
  %i.pv = insertelement <4 x float> %i.pu, float %i.pr, i64 1
  %i.pw = insertelement <4 x float> %i.pv, float %i.ps, i64 2
  %i.px = insertelement <4 x float> %i.pw, float %i.pt, i64 3 ; 3 uses
  br i1 %.not354, label %.lr.ph79.i.i.preheader363, label %.loopexit.i97.i

.lr.ph79.i.i.preheader363:                        ; preds = %.lr.ph79.i.i.preheader, %middle.block309
  %.078.i.i.ph = phi i64 [ %.077.reass.reass.i.reass.reass.i.reass.reass.reass, %.lr.ph79.i.i.preheader ], [ %i.pq, %middle.block309 ]
  %.ph = phi <4 x float> [ splat (float f0x7F7FFFFF), %.lr.ph79.i.i.preheader ], [ %i.px, %middle.block309 ]
  br label %.lr.ph79.i.i

.lr.ph79.i.i:                                     ; preds = %.lr.ph79.i.i.preheader363, %.lr.ph79.i.i
  %.078.i.i = phi i64 [ %.0.i109.i, %.lr.ph79.i.i ], [ %.078.i.i.ph, %.lr.ph79.i.i.preheader363 ] ; 2 uses
  %i.py = phi <4 x float> [ %i.qc, %.lr.ph79.i.i ], [ %.ph, %.lr.ph79.i.i.preheader363 ]
  %i.pz = and i64 %.078.i.i, %i.fk
  %.idx58.i108.i = shl i64 %i.pz, 4
  %i.qa = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx58.i108.i
  %i.qb = load <4 x float>, ptr %i.qa, align 16, !tbaa !18, !alias.scope !943, !noalias !925
  %i.qc = tail call reassoc nsz arcp contract afn <4 x float> @llvm.minnum.v4f32(<4 x float> %i.py, <4 x float> %i.qb) ; 3 uses
  %.0.i109.i = add nuw nsw i64 %.078.i.i, 1       ; 2 uses
  %exitcond113.not.i.i = icmp eq i64 %.0.i109.i, %umin.i89.i
  br i1 %exitcond113.not.i.i, label %.loopexit.i97.i, label %.lr.ph79.i.i, !llvm.loop !947

.loopexit.i97.i:                                  ; preds = %.lr.ph79.i.i, %middle.block309, %bb.l, %.lr.ph90.i.i
  %i.qd = phi <4 x float> [ %i.nx, %.lr.ph90.i.i ], [ splat (float f0x7F7FFFFF), %bb.l ], [ %i.px, %middle.block309 ], [ %i.qc, %.lr.ph79.i.i ] ; 2 uses
  %i.qe = phi <4 x float> [ %i.ny, %.lr.ph90.i.i ], [ splat (float f0x7F7FFFFF), %bb.l ], [ %i.px, %middle.block309 ], [ %i.qc, %.lr.ph79.i.i ]
  %i.qf = icmp samesign ult i64 %.pre.i94.i, %i.fp
  br i1 %i.qf, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.loopexit.i97.i
  %i.qg = and i64 %.pre.i94.i, %i.fk
  %.idx.i107.i = shl nuw nsw i64 %i.qg, 4
  %i.qh = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx.i107.i
  %i.qi = mul nsw i64 %.pre.i94.i, %i.fo
  %i.qj = getelementptr inbounds nuw [4 x i8], ptr %i.mr, i64 %i.qi ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !948)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.qh, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.qj, i64 16, i1 false), !tbaa !18, !alias.scope !951
  %i.qk = load <4 x float>, ptr %i.qj, align 4, !tbaa !18, !alias.scope !953, !noalias !954
  %i.ql = tail call reassoc nsz arcp contract afn <4 x float> @llvm.minnum.v4f32(<4 x float> %i.qd, <4 x float> %i.qk) ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.loopexit.i97.i
  %i.qm = phi <4 x float> [ %i.ql, %bb.m ], [ %i.qe, %.loopexit.i97.i ]
  %i.qn = phi <4 x float> [ %i.ql, %bb.m ], [ %i.qd, %.loopexit.i97.i ]
  %i.qo = add nuw nsw i64 %.05189.i.i, 1          ; 2 uses
  %indvars.iv.next.i106.i = add nuw nsw i64 %indvars.iv.i88.i, 1
  %exitcond114.not.i.i = icmp eq i64 %i.qo, %i.fp
  br i1 %exitcond114.not.i.i, label %_ZL13_box_min_vertILm4EEvjPfS0_ijm.exit.i, label %.lr.ph90.i.i, !llvm.loop !955

_ZL13_box_min_vertILm4EEvjPfS0_ijm.exit.i:        ; preds = %bb.n, %.preheader.i80.i
  %i.qp = add nuw i64 %.0188.i, 4                 ; 3 uses
  %i.qq = icmp ult i64 %i.qp, %i.fh
  br i1 %i.qq, label %bb.k, label %.preheader.i, !llvm.loop !956

bb.o:                                             ; preds = %_ZL13_box_min_vertILm1EEvjPfS0_ijm.exit.i, %.lr.ph193.i
  %.1192.i = phi i64 [ %.0.lcssa.i, %.lr.ph193.i ], [ %i.ui, %_ZL13_box_min_vertILm1EEvjPfS0_ijm.exit.i ] ; 2 uses
  %i.qr = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.1192.i ; 13 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !957)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !960)
  br i1 %.not71.i.i, label %.preheader.i113.i, label %.lr.ph.i110.i.preheader

.lr.ph.i110.i.preheader:                          ; preds = %bb.o
  br i1 %i.mq, label %.lr.ph.i110.i.epil.preheader, label %.lr.ph.i110.i

.preheader.i113.i.loopexit.unr-lcssa:             ; preds = %.lr.ph.i110.i
  br i1 %lcmp.mod433.not, label %.preheader.i113.i, label %.lr.ph.i110.i.epil.preheader

.lr.ph.i110.i.epil.preheader:                     ; preds = %.preheader.i113.i.loopexit.unr-lcssa, %.lr.ph.i110.i.preheader
  %.05262.i111.i.epil.init = phi i64 [ 0, %.lr.ph.i110.i.preheader ], [ %i.sp, %.preheader.i113.i.loopexit.unr-lcssa ]
  %.sroa.0.161.i.i.epil.init = phi float [ f0x7F7FFFFF, %.lr.ph.i110.i.preheader ], [ %i.so, %.preheader.i113.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod435)
  br label %.lr.ph.i110.i.epil

.lr.ph.i110.i.epil:                               ; preds = %.lr.ph.i110.i.epil, %.lr.ph.i110.i.epil.preheader
  %.05262.i111.i.epil = phi i64 [ %i.rb, %.lr.ph.i110.i.epil ], [ %.05262.i111.i.epil.init, %.lr.ph.i110.i.epil.preheader ] ; 4 uses
  %.sroa.0.161.i.i.epil = phi float [ %i.ra, %.lr.ph.i110.i.epil ], [ %.sroa.0.161.i.i.epil.init, %.lr.ph.i110.i.epil.preheader ]
  %epil.iter432 = phi i64 [ %epil.iter432.next, %.lr.ph.i110.i.epil ], [ 0, %.lr.ph.i110.i.epil.preheader ]
  %i.qs = add nuw nsw i64 %.05262.i111.i.epil, 24
  %i.qt = mul i64 %i.qs, %i.mn
  %i.qu = getelementptr inbounds nuw [4 x i8], ptr %i.qr, i64 %i.qt
  tail call void @llvm.prefetch.p0(ptr %i.qu, i32 0, i32 0, i32 1), !noalias !957
  %i.qv = and i64 %.05262.i111.i.epil, %i.mj
  %i.qw = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.qv
  %i.qx = mul nsw i64 %.05262.i111.i.epil, %i.mn
  %i.qy = getelementptr inbounds nuw [4 x i8], ptr %i.qr, i64 %i.qx
  tail call void @llvm.experimental.noalias.scope.decl(metadata !962)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !965)
  %i.qz = load float, ptr %i.qy, align 4, !tbaa !18, !alias.scope !967, !noalias !968 ; 2 uses
  store float %i.qz, ptr %i.qw, align 4, !tbaa !18, !alias.scope !968, !noalias !967
  %i.ra = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %.sroa.0.161.i.i.epil, float %i.qz) ; 2 uses
  %i.rb = add nuw nsw i64 %.05262.i111.i.epil, 1
  %epil.iter432.next = add i64 %epil.iter432, 1   ; 2 uses
  %epil.iter432.cmp.not = icmp eq i64 %epil.iter432.next, %xtraiter431
  br i1 %epil.iter432.cmp.not, label %.preheader.i113.i, label %.lr.ph.i110.i.epil, !llvm.loop !969

.preheader.i113.i:                                ; preds = %.preheader.i113.i.loopexit.unr-lcssa, %.lr.ph.i110.i.epil, %bb.o
  %.sroa.0.1.lcssa.i.i = phi float [ f0x7F7FFFFF, %bb.o ], [ %i.so, %.preheader.i113.i.loopexit.unr-lcssa ], [ %i.ra, %.lr.ph.i110.i.epil ]
  br i1 %.not72.i.i, label %_ZL13_box_min_vertILm1EEvjPfS0_ijm.exit.i, label %.lr.ph70.i.i

.lr.ph.i110.i:                                    ; preds = %.lr.ph.i110.i.preheader, %.lr.ph.i110.i
  %.05262.i111.i = phi i64 [ %i.sp, %.lr.ph.i110.i ], [ 0, %.lr.ph.i110.i.preheader ] ; 10 uses
  %.sroa.0.161.i.i = phi float [ %i.so, %.lr.ph.i110.i ], [ f0x7F7FFFFF, %.lr.ph.i110.i.preheader ]
  %niter437 = phi i64 [ %niter437.next.3, %.lr.ph.i110.i ], [ 0, %.lr.ph.i110.i.preheader ]
  %i.rc = add nuw nsw i64 %.05262.i111.i, 24
  %i.rd = mul i64 %i.rc, %i.mn
  %i.re = getelementptr inbounds nuw [4 x i8], ptr %i.qr, i64 %i.rd
  tail call void @llvm.prefetch.p0(ptr %i.re, i32 0, i32 0, i32 1), !noalias !957
  %i.rf = and i64 %.05262.i111.i, %i.mj
  %i.rg = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.rf
  %i.rh = mul nsw i64 %.05262.i111.i, %i.mn
  %i.ri = getelementptr inbounds nuw [4 x i8], ptr %i.qr, i64 %i.rh
  tail call void @llvm.experimental.noalias.scope.decl(metadata !962)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !965)
  %i.rj = load float, ptr %i.ri, align 4, !tbaa !18, !alias.scope !967, !noalias !968 ; 2 uses
  store float %i.rj, ptr %i.rg, align 16, !tbaa !18, !alias.scope !968, !noalias !967
  %i.rk = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %.sroa.0.161.i.i, float %i.rj)
  %i.rl = or disjoint i64 %.05262.i111.i, 1       ; 2 uses
  %i.rm = add nuw nsw i64 %.05262.i111.i, 25
  %i.rn = mul i64 %i.rm, %i.mn
  %i.ro = getelementptr inbounds nuw [4 x i8], ptr %i.qr, i64 %i.rn
  tail call void @llvm.prefetch.p0(ptr %i.ro, i32 0, i32 0, i32 1), !noalias !957
  %i.rp = and i64 %i.rl, %i.mj
  %i.rq = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.rp
  %i.rr = mul nsw i64 %i.rl, %i.mn
  %i.rs = getelementptr inbounds nuw [4 x i8], ptr %i.qr, i64 %i.rr
  tail call void @llvm.experimental.noalias.scope.decl(metadata !970)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !972)
  %i.rt = load float, ptr %i.rs, align 4, !tbaa !18, !alias.scope !974, !noalias !975 ; 2 uses
  store float %i.rt, ptr %i.rq, align 4, !tbaa !18, !alias.scope !975, !noalias !974
  %i.ru = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.rk, float %i.rt)
  %i.rv = or disjoint i64 %.05262.i111.i, 2       ; 2 uses
  %i.rw = add nuw nsw i64 %.05262.i111.i, 26
  %i.rx = mul i64 %i.rw, %i.mn
  %i.ry = getelementptr inbounds nuw [4 x i8], ptr %i.qr, i64 %i.rx
  tail call void @llvm.prefetch.p0(ptr %i.ry, i32 0, i32 0, i32 1), !noalias !957
  %i.rz = and i64 %i.rv, %i.mj
  %i.sa = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.rz
  %i.sb = mul nsw i64 %i.rv, %i.mn
  %i.sc = getelementptr inbounds nuw [4 x i8], ptr %i.qr, i64 %i.sb
  tail call void @llvm.experimental.noalias.scope.decl(metadata !976)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !978)
  %i.sd = load float, ptr %i.sc, align 4, !tbaa !18, !alias.scope !980, !noalias !981 ; 2 uses
  store float %i.sd, ptr %i.sa, align 8, !tbaa !18, !alias.scope !981, !noalias !980
  %i.se = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.ru, float %i.sd)
  %i.sf = or disjoint i64 %.05262.i111.i, 3       ; 2 uses
  %i.sg = add nuw nsw i64 %.05262.i111.i, 27
  %i.sh = mul i64 %i.sg, %i.mn
  %i.si = getelementptr inbounds nuw [4 x i8], ptr %i.qr, i64 %i.sh
  tail call void @llvm.prefetch.p0(ptr %i.si, i32 0, i32 0, i32 1), !noalias !957
  %i.sj = and i64 %i.sf, %i.mj
  %i.sk = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.sj
  %i.sl = mul nsw i64 %i.sf, %i.mn
  %i.sm = getelementptr inbounds nuw [4 x i8], ptr %i.qr, i64 %i.sl
  tail call void @llvm.experimental.noalias.scope.decl(metadata !982)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !984)
  %i.sn = load float, ptr %i.sm, align 4, !tbaa !18, !alias.scope !986, !noalias !987 ; 2 uses
  store float %i.sn, ptr %i.sk, align 4, !tbaa !18, !alias.scope !987, !noalias !986
  %i.so = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.se, float %i.sn) ; 3 uses
  %i.sp = add nuw nsw i64 %.05262.i111.i, 4       ; 2 uses
  %niter437.next.3 = add i64 %niter437, 4         ; 2 uses
  %niter437.ncmp.3 = icmp eq i64 %niter437.next.3, %unroll_iter436
  br i1 %niter437.ncmp.3, label %.preheader.i113.i.loopexit.unr-lcssa, label %.lr.ph.i110.i, !llvm.loop !988

.lr.ph70.i.i:                                     ; preds = %.preheader.i113.i, %bb.r
  %indvars.iv.i114.i = phi i64 [ %indvars.iv.next.i121.i, %bb.r ], [ %i.mp, %.preheader.i113.i ] ; 3 uses
  %.05169.i.i = phi i64 [ %i.uh, %bb.r ], [ 0, %.preheader.i113.i ] ; 7 uses
  %.sroa.0.268.i.i = phi float [ %.sroa.0.5.i.i, %bb.r ], [ %.sroa.0.1.lcssa.i.i, %.preheader.i113.i ] ; 2 uses
  %umin319 = tail call i64 @llvm.umin.i64(i64 %indvars.iv.i114.i, i64 %i.mo)
  %i.sq = xor i64 %.05169.i.i, -1
  %7 = add nsw i64 %i.c, %i.sq
  %i.sr = add i64 %umin319, %7                    ; 3 uses
  %umin.i115.i = tail call i64 @llvm.umin.i64(i64 %indvars.iv.i114.i, i64 %i.mo)
  %i.ss = add nuw nsw i64 %.05169.i.i, 24
  %i.st = mul i64 %i.ss, %i.mn
  %i.su = getelementptr inbounds nuw [4 x i8], ptr %i.qr, i64 %i.st
  tail call void @llvm.prefetch.p0(ptr %i.su, i32 0, i32 0, i32 1), !noalias !957
  %i.sv = mul nsw i64 %.05169.i.i, %i.mn
  %i.sw = getelementptr inbounds nuw [4 x i8], ptr %i.qr, i64 %i.sv
  store float %.sroa.0.268.i.i, ptr %i.sw, align 4, !tbaa !18, !alias.scope !989, !noalias !957
  %.not.i116.i = icmp samesign ult i64 %.05169.i.i, %i.c
  %.pre.i117.i = add nuw nsw i64 %.05169.i.i, %i.mp ; 4 uses
  br i1 %.not.i116.i, label %.loopexit.i120.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph70.i.i
  %..i118.i = tail call i64 @llvm.umin.i64(i64 %.pre.i117.i, i64 %i.mo)
  %.063.reass.reass.i.reass.reass.i.reass.reass.reass = add i64 %.05169.i.i, %invariant.op483 ; 4 uses
  %i.sx = icmp samesign ult i64 %.063.reass.reass.i.reass.reass.i.reass.reass.reass, %..i118.i
  br i1 %i.sx, label %.lr.ph66.i.i.preheader, label %.loopexit.i120.i

.lr.ph66.i.i.preheader:                           ; preds = %bb.p
  %min.iters.check321 = icmp ult i64 %i.sr, 32
  br i1 %min.iters.check321, label %.lr.ph66.i.i.preheader356, label %vector.ph322

vector.ph322:                                     ; preds = %.lr.ph66.i.i.preheader
  %n.vec323 = and i64 %i.sr, -32                  ; 3 uses
  %broadcast.splatinsert326 = insertelement <8 x i64> poison, i64 %.063.reass.reass.i.reass.reass.i.reass.reass.reass, i64 0
  %broadcast.splat327 = shufflevector <8 x i64> %broadcast.splatinsert326, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction328 = add nuw nsw <8 x i64> %broadcast.splat327, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  br label %vector.body329

vector.body329:                                   ; preds = %vector.body329, %vector.ph322
  %index330 = phi i64 [ 0, %vector.ph322 ], [ %index.next345, %vector.body329 ] ; 2 uses
  %vec.ind331 = phi <8 x i64> [ %induction328, %vector.ph322 ], [ %vec.ind.next346, %vector.body329 ] ; 5 uses
  %vec.phi332.a = phi <8 x float> [ splat (float f0x7F7FFFFF), %vector.ph322 ], [ %i.tc, %vector.body329 ] ; 2 uses
  %vec.phi333.a = phi <8 x float> [ splat (float f0x7F7FFFFF), %vector.ph322 ], [ %i.td, %vector.body329 ] ; 2 uses
  %vec.phi334 = phi <8 x float> [ splat (float f0x7F7FFFFF), %vector.ph322 ], [ %i.te, %vector.body329 ] ; 2 uses
  %vec.phi335 = phi <8 x float> [ splat (float f0x7F7FFFFF), %vector.ph322 ], [ %i.tf, %vector.body329 ] ; 2 uses
  %step.add336 = add nuw nsw <8 x i64> %vec.ind331, splat (i64 8)
  %step.add.2 = add nuw nsw <8 x i64> %vec.ind331, splat (i64 16)
  %step.add.3 = add nuw nsw <8 x i64> %vec.ind331, splat (i64 24)
  %i.sy = and <8 x i64> %vec.ind331, %broadcast.splat325.a
  %i.sz = and <8 x i64> %step.add336, %broadcast.splat325.a
  %i.ta = and <8 x i64> %step.add.2, %broadcast.splat325.a
  %i.tb = and <8 x i64> %step.add.3, %broadcast.splat325.a
  %wide.gep337.a = getelementptr inbounds nuw [4 x i8], ptr %i.o, <8 x i64> %i.sy
  %wide.gep338.a = getelementptr inbounds nuw [4 x i8], ptr %i.o, <8 x i64> %i.sz
  %wide.gep339 = getelementptr inbounds nuw [4 x i8], ptr %i.o, <8 x i64> %i.ta
  %wide.gep340 = getelementptr inbounds nuw [4 x i8], ptr %i.o, <8 x i64> %i.tb
  %wide.masked.gather341.a = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep337.a, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !18, !alias.scope !992, !noalias !960 ; 2 uses
  %wide.masked.gather342.a = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep338.a, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !18, !alias.scope !992, !noalias !960 ; 2 uses
  %wide.masked.gather343 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep339, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !18, !alias.scope !992, !noalias !960 ; 2 uses
  %wide.masked.gather344 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep340, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !18, !alias.scope !992, !noalias !960 ; 2 uses
  %i.tc = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %vec.phi332.a, <8 x float> %wide.masked.gather341.a) ; 2 uses
  %i.td = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %vec.phi333.a, <8 x float> %wide.masked.gather342.a) ; 2 uses
  %i.te = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %vec.phi334, <8 x float> %wide.masked.gather343) ; 2 uses
  %i.tf = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %vec.phi335, <8 x float> %wide.masked.gather344) ; 2 uses
  %index.next345 = add nuw i64 %index330, 32      ; 2 uses
  %i.tg = fcmp uno <8 x float> %wide.masked.gather341.a, %wide.masked.gather342.a
  %i.th = fcmp uno <8 x float> %wide.masked.gather343, %wide.masked.gather344
  %i.ti = freeze <8 x i1> %i.tg
  %i.tj = freeze <8 x i1> %i.th
  %i.tk = or <8 x i1> %i.ti, %i.tj
  %i.tl = bitcast <8 x i1> %i.tk to i8
  %i.tm = icmp ne i8 %i.tl, 0                     ; 7 uses
  %i.tn = icmp eq i64 %index.next345, %n.vec323
  %i.to = or i1 %i.tm, %i.tn
  %vec.ind.next346 = add nuw nsw <8 x i64> %vec.ind331, splat (i64 32)
  br i1 %i.to, label %middle.block347, label %vector.body329, !llvm.loop !995

middle.block347:                                  ; preds = %vector.body329
  %i.tp = select i1 %i.tm, <8 x float> %vec.phi332.a, <8 x float> %i.tc
  %i.tq = select i1 %i.tm, <8 x float> %vec.phi333.a, <8 x float> %i.td
  %i.tr = select i1 %i.tm, <8 x float> %vec.phi334, <8 x float> %i.te
  %i.ts = select i1 %i.tm, <8 x float> %vec.phi335, <8 x float> %i.tf
  %i.tt = select i1 %i.tm, i64 %index330, i64 %n.vec323
  %rdx.minmax348.a = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.tp, <8 x float> %i.tq)
  %rdx.minmax349 = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %rdx.minmax348.a, <8 x float> %i.tr)
  %rdx.minmax350 = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %rdx.minmax349, <8 x float> %i.ts)
  %i.tu = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fmin.v8f32(<8 x float> %rdx.minmax350) ; 2 uses
  %i.tv = add i64 %.063.reass.reass.i.reass.reass.i.reass.reass.reass, %i.tt
  %cmp.n351 = icmp ne i64 %i.sr, %n.vec323
  %.not355 = or i1 %cmp.n351, %i.tm
  br i1 %.not355, label %.lr.ph66.i.i.preheader356, label %.loopexit.i120.i

.lr.ph66.i.i.preheader356:                        ; preds = %.lr.ph66.i.i.preheader, %middle.block347
  %.065.i.i.ph = phi i64 [ %.063.reass.reass.i.reass.reass.i.reass.reass.reass, %.lr.ph66.i.i.preheader ], [ %i.tv, %middle.block347 ]
  %.sroa.0.364.i.i.ph = phi float [ f0x7F7FFFFF, %.lr.ph66.i.i.preheader ], [ %i.tu, %middle.block347 ]
  br label %.lr.ph66.i.i

.lr.ph66.i.i:                                     ; preds = %.lr.ph66.i.i.preheader356, %.lr.ph66.i.i
  %.065.i.i = phi i64 [ %.0.i122.i, %.lr.ph66.i.i ], [ %.065.i.i.ph, %.lr.ph66.i.i.preheader356 ] ; 2 uses
  %.sroa.0.364.i.i = phi float [ %i.tz, %.lr.ph66.i.i ], [ %.sroa.0.364.i.i.ph, %.lr.ph66.i.i.preheader356 ]
  %i.tw = and i64 %.065.i.i, %i.mj
  %i.tx = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.tw
  %i.ty = load float, ptr %i.tx, align 4, !tbaa !18, !alias.scope !992, !noalias !960
  %i.tz = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %.sroa.0.364.i.i, float %i.ty) ; 2 uses
  %.0.i122.i = add nuw nsw i64 %.065.i.i, 1       ; 2 uses
  %exitcond74.not.i.i = icmp eq i64 %.0.i122.i, %umin.i115.i
  br i1 %exitcond74.not.i.i, label %.loopexit.i120.i, label %.lr.ph66.i.i, !llvm.loop !996

.loopexit.i120.i:                                 ; preds = %.lr.ph66.i.i, %middle.block347, %bb.p, %.lr.ph70.i.i
  %.sroa.0.4.i.i = phi nsz float [ %.sroa.0.268.i.i, %.lr.ph70.i.i ], [ f0x7F7FFFFF, %bb.p ], [ %i.tu, %middle.block347 ], [ %i.tz, %.lr.ph66.i.i ] ; 2 uses
  %i.ua = icmp samesign ult i64 %.pre.i117.i, %i.mo
  br i1 %i.ua, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.loopexit.i120.i
  %i.ub = and i64 %.pre.i117.i, %i.mj
  %i.uc = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.ub
  %i.ud = mul nsw i64 %.pre.i117.i, %i.mn
  %i.ue = getelementptr inbounds nuw [4 x i8], ptr %i.qr, i64 %i.ud
  tail call void @llvm.experimental.noalias.scope.decl(metadata !997)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1000)
  %i.uf = load float, ptr %i.ue, align 4, !tbaa !18, !alias.scope !1002, !noalias !1003 ; 2 uses
  store float %i.uf, ptr %i.uc, align 4, !tbaa !18, !alias.scope !1003, !noalias !1002
  %i.ug = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %.sroa.0.4.i.i, float %i.uf)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.loopexit.i120.i
  %.sroa.0.5.i.i = phi nsz float [ %i.ug, %bb.q ], [ %.sroa.0.4.i.i, %.loopexit.i120.i ]
  %i.uh = add nuw nsw i64 %.05169.i.i, 1          ; 2 uses
  %indvars.iv.next.i121.i = add nuw nsw i64 %indvars.iv.i114.i, 1
  %exitcond75.not.i.i = icmp eq i64 %i.uh, %i.mo
  br i1 %exitcond75.not.i.i, label %_ZL13_box_min_vertILm1EEvjPfS0_ijm.exit.i, label %.lr.ph70.i.i, !llvm.loop !1004

_ZL13_box_min_vertILm1EEvjPfS0_ijm.exit.i:        ; preds = %bb.r, %.preheader.i113.i
  %i.ui = add nuw i64 %.1192.i, 1                 ; 2 uses
  %exitcond244.not.i = icmp eq i64 %i.ui, %2
  br i1 %exitcond244.not.i, label %._crit_edge.i, label %bb.o, !llvm.loop !1005

._crit_edge.i:                                    ; preds = %_ZL13_box_min_vertILm1EEvjPfS0_ijm.exit.i, %.preheader.i
  tail call void @free(ptr noundef %i.o) #11
  br label %_ZL12_box_min_1chPfmmj.exit

bb.s:                                             ; preds = %bb.a
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 701, ptr noundef nonnull @__FUNCTION__.dt_box_min)
  unreachable

_ZL12_box_min_1chPfmmj.exit:                      ; preds = %._crit_edge.i, %_ZL25_compute_effective_heightmm.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define void @dt_box_max(ptr nofree noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, i64 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %3, 1
  br i1 %i.a, label %bb.b, label %bb.s

bb.b:                                             ; preds = %bb.a
  %i.b = trunc i64 %4 to i32                      ; 6 uses
  %i.c = and i64 %4, 4294967295                   ; 13 uses
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %_ZL25_compute_effective_heightmm.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.b
  %i.d = shl nuw nsw i64 %i.c, 1
  %i.e = or disjoint i64 %i.d, 1
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %.011.i.i = phi i64 [ %i.g, %.lr.ph.i.i ], [ %i.e, %.lr.ph.preheader.i.i ] ; 2 uses
  %.0910.i.i = phi i64 [ %i.f, %.lr.ph.i.i ], [ 2, %.lr.ph.preheader.i.i ]
  %i.f = shl nuw nsw i64 %.0910.i.i, 1            ; 2 uses
  %i.g = lshr i64 %.011.i.i, 1
  %i.h = icmp samesign ugt i64 %.011.i.i, 3
  br i1 %i.h, label %.lr.ph.i.i, label %_ZL25_compute_effective_heightmm.exit.i, !llvm.loop !11

_ZL25_compute_effective_heightmm.exit.i:          ; preds = %.lr.ph.i.i, %bb.b
  %.09.lcssa.i.i = phi i64 [ 2, %bb.b ], [ %i.f, %.lr.ph.i.i ]
  %i.i = tail call noundef range(i64 0, -1) i64 @llvm.umin.i64(i64 %.09.lcssa.i.i, i64 %1) ; 4 uses
  %i.j = shl i64 %i.i, 4
  %i.k = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.j)
  %..i = tail call i64 @llvm.umax.i64(i64 %2, i64 %i.k)
  %i.l = shl i64 %..i, 2
  %i.m = add i64 %i.l, 60
  %i.n = and i64 %i.m, -64
  %i.o = tail call noundef ptr @dt_alloc_aligned(i64 noundef %i.n) ; 49 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.o, i64 64) ]
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %_ZL12_box_max_1chPfmmj.exit, label %.preheader125.i

.preheader125.i:                                  ; preds = %_ZL25_compute_effective_heightmm.exit.i
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %.preheader124.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader125.i
  %i.q = shl i64 %2, 2                            ; 10 uses
  %i.r = trunc i64 %2 to i32                      ; 5 uses
  %i.s = add i32 %i.b, 1                          ; 2 uses
  %i.t = tail call i32 @llvm.smin.i32(i32 %i.s, i32 %i.r) ; 3 uses
  %i.u = icmp sgt i32 %i.t, 0
  %wide.trip.count.i.i.i = zext i32 %i.t to i64   ; 2 uses
  %i.v = icmp sgt i32 %i.r, 0
  %i.w = add i32 %i.b, 2
  %sext = shl i64 %4, 32
  %i.x = ashr exact i64 %sext, 32
  %wide.trip.count.i.i = and i64 %2, 2147483647
  br i1 %i.v, label %.lr.ph.split.us.i.preheader, label %_ZL11_window_maxPKfi.exit.i.i.preheader

_ZL11_window_maxPKfi.exit.i.i.preheader:          ; preds = %.lr.ph.i
  %xtraiter = and i64 %1, 7                       ; 3 uses
  %i.y = icmp ult i64 %1, 8
  br i1 %i.y, label %_ZL11_window_maxPKfi.exit.i.i.epil.preheader, label %_ZL11_window_maxPKfi.exit.i.i.preheader.new

_ZL11_window_maxPKfi.exit.i.i.preheader.new:      ; preds = %_ZL11_window_maxPKfi.exit.i.i.preheader
  %unroll_iter = and i64 %1, -8
  br label %_ZL11_window_maxPKfi.exit.i.i

.lr.ph.split.us.i.preheader:                      ; preds = %.lr.ph.i
  %i.z = add i64 %4, 2
  %i.aa = add i64 %4, 4294967295
  %xtraiter401 = and i64 %wide.trip.count.i.i.i, 7 ; 3 uses
  %i.ab = icmp ult i32 %i.t, 8
  %unroll_iter406 = and i64 %wide.trip.count.i.i.i, 2147483640
  %lcmp.mod403.not = icmp eq i64 %xtraiter401, 0
  %lcmp.mod405 = icmp ne i64 %xtraiter401, 0
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.split.us.i.preheader, %_ZL10box_max_1diPKfPfi.exit.loopexit.us.i
  %.062169.us.i = phi i64 [ %i.dv, %_ZL10box_max_1diPKfPfi.exit.loopexit.us.i ], [ 0, %.lr.ph.split.us.i.preheader ] ; 2 uses
  %i.ac = mul i64 %.062169.us.i, %2
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ac ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 64 %i.o, ptr align 4 %i.ad, i64 %i.q, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1006)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1009)
  br i1 %i.u, label %.lr.ph.i.i.us.i.preheader, label %_ZL11_window_maxPKfi.exit.i.us.i.preheader

.lr.ph.i.i.us.i.preheader:                        ; preds = %.lr.ph.split.us.i
  br i1 %i.ab, label %.lr.ph.i.i.us.i.epil.preheader, label %.lr.ph.i.i.us.i

.lr.ph.i.i.us.i:                                  ; preds = %.lr.ph.i.i.us.i.preheader, %.lr.ph.i.i.us.i
  %indvars.iv.i.i.us.i = phi i64 [ %indvars.iv.next.i.i.us.i.7, %.lr.ph.i.i.us.i ], [ 0, %.lr.ph.i.i.us.i.preheader ] ; 9 uses
  %.0911.i.i.us.i = phi float [ %.09..i.i.us.i.7, %.lr.ph.i.i.us.i ], [ f0xFF7FFFFF, %.lr.ph.i.i.us.i.preheader ] ; 2 uses
  %niter407 = phi i64 [ %niter407.next.7, %.lr.ph.i.i.us.i ], [ 0, %.lr.ph.i.i.us.i.preheader ]
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.i.i.us.i
  %i.af = load float, ptr %i.ae, align 32, !tbaa !18, !alias.scope !1006, !noalias !1009 ; 2 uses
  %i.ag = fcmp reassoc nsz arcp contract afn ogt float %.0911.i.i.us.i, %i.af
  %.09..i.i.us.i = select reassoc nsz arcp contract afn i1 %i.ag, float %.0911.i.i.us.i, float %i.af ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.i.i.us.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !18, !alias.scope !1006, !noalias !1009 ; 2 uses
  %i.ak = fcmp reassoc nsz arcp contract afn ogt float %.09..i.i.us.i, %i.aj
  %.09..i.i.us.i.1 = select reassoc nsz arcp contract afn i1 %i.ak, float %.09..i.i.us.i, float %i.aj ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.i.i.us.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load float, ptr %i.am, align 8, !tbaa !18, !alias.scope !1006, !noalias !1009 ; 2 uses
  %i.ao = fcmp reassoc nsz arcp contract afn ogt float %.09..i.i.us.i.1, %i.an
  %.09..i.i.us.i.2 = select reassoc nsz arcp contract afn i1 %i.ao, float %.09..i.i.us.i.1, float %i.an ; 2 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.i.i.us.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 12
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !18, !alias.scope !1006, !noalias !1009 ; 2 uses
  %i.as = fcmp reassoc nsz arcp contract afn ogt float %.09..i.i.us.i.2, %i.ar
  %.09..i.i.us.i.3 = select reassoc nsz arcp contract afn i1 %i.as, float %.09..i.i.us.i.2, float %i.ar ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.i.i.us.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = load float, ptr %i.au, align 16, !tbaa !18, !alias.scope !1006, !noalias !1009 ; 2 uses
  %i.aw = fcmp reassoc nsz arcp contract afn ogt float %.09..i.i.us.i.3, %i.av
  %.09..i.i.us.i.4 = select reassoc nsz arcp contract afn i1 %i.aw, float %.09..i.i.us.i.3, float %i.av ; 2 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.i.i.us.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 20
  %i.az = load float, ptr %i.ay, align 4, !tbaa !18, !alias.scope !1006, !noalias !1009 ; 2 uses
  %i.ba = fcmp reassoc nsz arcp contract afn ogt float %.09..i.i.us.i.4, %i.az
  %.09..i.i.us.i.5 = select reassoc nsz arcp contract afn i1 %i.ba, float %.09..i.i.us.i.4, float %i.az ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.i.i.us.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bd = load float, ptr %i.bc, align 8, !tbaa !18, !alias.scope !1006, !noalias !1009 ; 2 uses
  %i.be = fcmp reassoc nsz arcp contract afn ogt float %.09..i.i.us.i.5, %i.bd
  %.09..i.i.us.i.6 = select reassoc nsz arcp contract afn i1 %i.be, float %.09..i.i.us.i.5, float %i.bd ; 2 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.i.i.us.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 28
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !18, !alias.scope !1006, !noalias !1009 ; 2 uses
  %i.bi = fcmp reassoc nsz arcp contract afn ogt float %.09..i.i.us.i.6, %i.bh
  %.09..i.i.us.i.7 = select reassoc nsz arcp contract afn i1 %i.bi, float %.09..i.i.us.i.6, float %i.bh ; 3 uses
  %indvars.iv.next.i.i.us.i.7 = add nuw nsw i64 %indvars.iv.i.i.us.i, 8 ; 2 uses
  %niter407.next.7 = add i64 %niter407, 8         ; 2 uses
  %niter407.ncmp.7 = icmp eq i64 %niter407.next.7, %unroll_iter406
  br i1 %niter407.ncmp.7, label %_ZL11_window_maxPKfi.exit.i.us.i.preheader.loopexit.unr-lcssa, label %.lr.ph.i.i.us.i, !llvm.loop !1011

_ZL11_window_maxPKfi.exit.i.us.i.preheader.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.us.i
  br i1 %lcmp.mod403.not, label %_ZL11_window_maxPKfi.exit.i.us.i.preheader, label %.lr.ph.i.i.us.i.epil.preheader

.lr.ph.i.i.us.i.epil.preheader:                   ; preds = %_ZL11_window_maxPKfi.exit.i.us.i.preheader.loopexit.unr-lcssa, %.lr.ph.i.i.us.i.preheader
  %indvars.iv.i.i.us.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.us.i.preheader ], [ %indvars.iv.next.i.i.us.i.7, %_ZL11_window_maxPKfi.exit.i.us.i.preheader.loopexit.unr-lcssa ]
  %.0911.i.i.us.i.epil.init = phi float [ f0xFF7FFFFF, %.lr.ph.i.i.us.i.preheader ], [ %.09..i.i.us.i.7, %_ZL11_window_maxPKfi.exit.i.us.i.preheader.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod405)
  br label %.lr.ph.i.i.us.i.epil

.lr.ph.i.i.us.i.epil:                             ; preds = %.lr.ph.i.i.us.i.epil, %.lr.ph.i.i.us.i.epil.preheader
  %indvars.iv.i.i.us.i.epil = phi i64 [ %indvars.iv.next.i.i.us.i.epil, %.lr.ph.i.i.us.i.epil ], [ %indvars.iv.i.i.us.i.epil.init, %.lr.ph.i.i.us.i.epil.preheader ] ; 2 uses
  %.0911.i.i.us.i.epil = phi float [ %.09..i.i.us.i.epil, %.lr.ph.i.i.us.i.epil ], [ %.0911.i.i.us.i.epil.init, %.lr.ph.i.i.us.i.epil.preheader ] ; 2 uses
  %epil.iter402 = phi i64 [ %epil.iter402.next, %.lr.ph.i.i.us.i.epil ], [ 0, %.lr.ph.i.i.us.i.epil.preheader ]
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.i.i.us.i.epil
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !18, !alias.scope !1006, !noalias !1009 ; 2 uses
  %i.bl = fcmp reassoc nsz arcp contract afn ogt float %.0911.i.i.us.i.epil, %i.bk
  %.09..i.i.us.i.epil = select reassoc nsz arcp contract afn i1 %i.bl, float %.0911.i.i.us.i.epil, float %i.bk ; 2 uses
  %indvars.iv.next.i.i.us.i.epil = add nuw nsw i64 %indvars.iv.i.i.us.i.epil, 1
  %epil.iter402.next = add i64 %epil.iter402, 1   ; 2 uses
  %epil.iter402.cmp.not = icmp eq i64 %epil.iter402.next, %xtraiter401
  br i1 %epil.iter402.cmp.not, label %_ZL11_window_maxPKfi.exit.i.us.i.preheader, label %.lr.ph.i.i.us.i.epil, !llvm.loop !1012

_ZL11_window_maxPKfi.exit.i.us.i.preheader:       ; preds = %_ZL11_window_maxPKfi.exit.i.us.i.preheader.loopexit.unr-lcssa, %.lr.ph.i.i.us.i.epil, %.lr.ph.split.us.i
  %.03854.i.us.i.ph = phi float [ f0xFF7FFFFF, %.lr.ph.split.us.i ], [ %.09..i.i.us.i.7, %_ZL11_window_maxPKfi.exit.i.us.i.preheader.loopexit.unr-lcssa ], [ %.09..i.i.us.i.epil, %.lr.ph.i.i.us.i.epil ]
  br label %_ZL11_window_maxPKfi.exit.i.us.i

_ZL11_window_maxPKfi.exit.i.us.i:                 ; preds = %_ZL11_window_maxPKfi.exit.i.us.i.preheader, %bb.f
  %indvars.iv.i.us.i = phi i64 [ %indvars.iv.next.i.us.i, %bb.f ], [ 0, %_ZL11_window_maxPKfi.exit.i.us.i.preheader ] ; 7 uses
  %.03854.i.us.i = phi float [ %.2.i.us.i, %bb.f ], [ %.03854.i.us.i.ph, %_ZL11_window_maxPKfi.exit.i.us.i.preheader ] ; 4 uses
  %i.bm = add i64 %i.z, %indvars.iv.i.us.i
  %i.bn = trunc i64 %i.bm to i32
  %smin = tail call i32 @llvm.smin.i32(i32 %i.bn, i32 %i.r)
  %i.bo = sub i64 %i.aa, %indvars.iv.i.us.i
  %i.bp = trunc i64 %i.bo to i32
  %i.bq = add i32 %smin, %i.bp
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv.i.us.i
  store float %.03854.i.us.i, ptr %i.br, align 4, !tbaa !18, !alias.scope !1009, !noalias !1006
  %i.bs = sub nsw i64 %indvars.iv.i.us.i, %i.x    ; 3 uses
  %i.bt = icmp sgt i64 %i.bs, -1
  br i1 %i.bt, label %bb.c, label %_ZL11_window_maxPKfi.exit53.i.us.i

bb.c:                                             ; preds = %_ZL11_window_maxPKfi.exit.i.us.i
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.bs
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !18, !alias.scope !1006, !noalias !1009
  %i.bw = fcmp reassoc nsz arcp contract afn oeq float %i.bv, %.03854.i.us.i
  br i1 %i.bw, label %bb.d, label %_ZL11_window_maxPKfi.exit53.i.us.i

bb.d:                                             ; preds = %bb.c
  %i.bx = add nuw nsw i64 %i.bs, 1                ; 2 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.bx ; 9 uses
  %i.bz = trunc nuw nsw i64 %indvars.iv.i.us.i to i32
  %i.ca = add i32 %i.w, %i.bz
  %..i.us.i = tail call i32 @llvm.smin.i32(i32 %i.ca, i32 %i.r)
  %i.cb = trunc nsw i64 %i.bx to i32
  %i.cc = sub nsw i32 %..i.us.i, %i.cb            ; 2 uses
  %i.cd = icmp sgt i32 %i.cc, 0
  br i1 %i.cd, label %.lr.ph.preheader.i45.i.us.i, label %_ZL11_window_maxPKfi.exit53.i.us.i

.lr.ph.preheader.i45.i.us.i:                      ; preds = %bb.d
  %wide.trip.count.i46.i.us.i = zext nneg i32 %i.cc to i64 ; 2 uses
  %xtraiter408 = and i64 %wide.trip.count.i46.i.us.i, 7 ; 3 uses
  %i.ce = add i32 %i.bq, -1
  %i.cf = icmp ult i32 %i.ce, 7
  br i1 %i.cf, label %.lr.ph.i47.i.us.i.epil.preheader, label %.lr.ph.preheader.i45.i.us.i.new

.lr.ph.preheader.i45.i.us.i.new:                  ; preds = %.lr.ph.preheader.i45.i.us.i
  %unroll_iter413 = and i64 %wide.trip.count.i46.i.us.i, 2147483640
  br label %.lr.ph.i47.i.us.i

.lr.ph.i47.i.us.i:                                ; preds = %.lr.ph.i47.i.us.i, %.lr.ph.preheader.i45.i.us.i.new
  %indvars.iv.i48.i.us.i = phi i64 [ 0, %.lr.ph.preheader.i45.i.us.i.new ], [ %indvars.iv.next.i51.i.us.i.7, %.lr.ph.i47.i.us.i ] ; 9 uses
  %.0911.i49.i.us.i = phi float [ f0xFF7FFFFF, %.lr.ph.preheader.i45.i.us.i.new ], [ %.09..i50.i.us.i.7, %.lr.ph.i47.i.us.i ] ; 2 uses
  %niter414 = phi i64 [ 0, %.lr.ph.preheader.i45.i.us.i.new ], [ %niter414.next.7, %.lr.ph.i47.i.us.i ]
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv.i48.i.us.i
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !18, !alias.scope !1006, !noalias !1009 ; 2 uses
  %i.ci = fcmp reassoc nsz arcp contract afn ogt float %.0911.i49.i.us.i, %i.ch
  %.09..i50.i.us.i = select reassoc nsz arcp contract afn i1 %i.ci, float %.0911.i49.i.us.i, float %i.ch ; 2 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv.i48.i.us.i
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !18, !alias.scope !1006, !noalias !1009 ; 2 uses
  %i.cm = fcmp reassoc nsz arcp contract afn ogt float %.09..i50.i.us.i, %i.cl
  %.09..i50.i.us.i.1 = select reassoc nsz arcp contract afn i1 %i.cm, float %.09..i50.i.us.i, float %i.cl ; 2 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv.i48.i.us.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cp = load float, ptr %i.co, align 4, !tbaa !18, !alias.scope !1006, !noalias !1009 ; 2 uses
  %i.cq = fcmp reassoc nsz arcp contract afn ogt float %.09..i50.i.us.i.1, %i.cp
  %.09..i50.i.us.i.2 = select reassoc nsz arcp contract afn i1 %i.cq, float %.09..i50.i.us.i.1, float %i.cp ; 2 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv.i48.i.us.i
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 12
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !18, !alias.scope !1006, !noalias !1009 ; 2 uses
  %i.cu = fcmp reassoc nsz arcp contract afn ogt float %.09..i50.i.us.i.2, %i.ct
  %.09..i50.i.us.i.3 = select reassoc nsz arcp contract afn i1 %i.cu, float %.09..i50.i.us.i.2, float %i.ct ; 2 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv.i48.i.us.i
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !18, !alias.scope !1006, !noalias !1009 ; 2 uses
  %i.cy = fcmp reassoc nsz arcp contract afn ogt float %.09..i50.i.us.i.3, %i.cx
  %.09..i50.i.us.i.4 = select reassoc nsz arcp contract afn i1 %i.cy, float %.09..i50.i.us.i.3, float %i.cx ; 2 uses
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv.i48.i.us.i
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 20
  %i.db = load float, ptr %i.da, align 4, !tbaa !18, !alias.scope !1006, !noalias !1009 ; 2 uses
  %i.dc = fcmp reassoc nsz arcp contract afn ogt float %.09..i50.i.us.i.4, %i.db
  %.09..i50.i.us.i.5 = select reassoc nsz arcp contract afn i1 %i.dc, float %.09..i50.i.us.i.4, float %i.db ; 2 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv.i48.i.us.i
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.df = load float, ptr %i.de, align 4, !tbaa !18, !alias.scope !1006, !noalias !1009 ; 2 uses
  %i.dg = fcmp reassoc nsz arcp contract afn ogt float %.09..i50.i.us.i.5, %i.df
  %.09..i50.i.us.i.6 = select reassoc nsz arcp contract afn i1 %i.dg, float %.09..i50.i.us.i.5, float %i.df ; 2 uses
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv.i48.i.us.i
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 28
  %i.dj = load float, ptr %i.di, align 4, !tbaa !18, !alias.scope !1006, !noalias !1009 ; 2 uses
  %i.dk = fcmp reassoc nsz arcp contract afn ogt float %.09..i50.i.us.i.6, %i.dj
  %.09..i50.i.us.i.7 = select reassoc nsz arcp contract afn i1 %i.dk, float %.09..i50.i.us.i.6, float %i.dj ; 3 uses
  %indvars.iv.next.i51.i.us.i.7 = add nuw nsw i64 %indvars.iv.i48.i.us.i, 8 ; 2 uses
  %niter414.next.7 = add i64 %niter414, 8         ; 2 uses
  %niter414.ncmp.7 = icmp eq i64 %niter414.next.7, %unroll_iter413
  br i1 %niter414.ncmp.7, label %_ZL11_window_maxPKfi.exit53.i.us.i.loopexit.unr-lcssa, label %.lr.ph.i47.i.us.i, !llvm.loop !1011

_ZL11_window_maxPKfi.exit53.i.us.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i47.i.us.i
  %lcmp.mod410.not = icmp eq i64 %xtraiter408, 0
  br i1 %lcmp.mod410.not, label %_ZL11_window_maxPKfi.exit53.i.us.i, label %.lr.ph.i47.i.us.i.epil.preheader

.lr.ph.i47.i.us.i.epil.preheader:                 ; preds = %_ZL11_window_maxPKfi.exit53.i.us.i.loopexit.unr-lcssa, %.lr.ph.preheader.i45.i.us.i
  %indvars.iv.i48.i.us.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i45.i.us.i ], [ %indvars.iv.next.i51.i.us.i.7, %_ZL11_window_maxPKfi.exit53.i.us.i.loopexit.unr-lcssa ]
  %.0911.i49.i.us.i.epil.init = phi float [ f0xFF7FFFFF, %.lr.ph.preheader.i45.i.us.i ], [ %.09..i50.i.us.i.7, %_ZL11_window_maxPKfi.exit53.i.us.i.loopexit.unr-lcssa ]
  %lcmp.mod412 = icmp ne i64 %xtraiter408, 0
  tail call void @llvm.assume(i1 %lcmp.mod412)
  br label %.lr.ph.i47.i.us.i.epil

.lr.ph.i47.i.us.i.epil:                           ; preds = %.lr.ph.i47.i.us.i.epil, %.lr.ph.i47.i.us.i.epil.preheader
  %indvars.iv.i48.i.us.i.epil = phi i64 [ %indvars.iv.i48.i.us.i.epil.init, %.lr.ph.i47.i.us.i.epil.preheader ], [ %indvars.iv.next.i51.i.us.i.epil, %.lr.ph.i47.i.us.i.epil ] ; 2 uses
  %.0911.i49.i.us.i.epil = phi float [ %.0911.i49.i.us.i.epil.init, %.lr.ph.i47.i.us.i.epil.preheader ], [ %.09..i50.i.us.i.epil, %.lr.ph.i47.i.us.i.epil ] ; 2 uses
  %epil.iter409 = phi i64 [ 0, %.lr.ph.i47.i.us.i.epil.preheader ], [ %epil.iter409.next, %.lr.ph.i47.i.us.i.epil ]
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv.i48.i.us.i.epil
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !18, !alias.scope !1006, !noalias !1009 ; 2 uses
  %i.dn = fcmp reassoc nsz arcp contract afn ogt float %.0911.i49.i.us.i.epil, %i.dm
  %.09..i50.i.us.i.epil = select reassoc nsz arcp contract afn i1 %i.dn, float %.0911.i49.i.us.i.epil, float %i.dm ; 2 uses
  %indvars.iv.next.i51.i.us.i.epil = add nuw nsw i64 %indvars.iv.i48.i.us.i.epil, 1
  %epil.iter409.next = add i64 %epil.iter409, 1   ; 2 uses
  %epil.iter409.cmp.not = icmp eq i64 %epil.iter409.next, %xtraiter408
  br i1 %epil.iter409.cmp.not, label %_ZL11_window_maxPKfi.exit53.i.us.i, label %.lr.ph.i47.i.us.i.epil, !llvm.loop !1013

_ZL11_window_maxPKfi.exit53.i.us.i:               ; preds = %_ZL11_window_maxPKfi.exit53.i.us.i.loopexit.unr-lcssa, %.lr.ph.i47.i.us.i.epil, %bb.d, %bb.c, %_ZL11_window_maxPKfi.exit.i.us.i
  %.1.i.us.i = phi nsz float [ %.03854.i.us.i, %_ZL11_window_maxPKfi.exit.i.us.i ], [ %.03854.i.us.i, %bb.c ], [ f0xFF7FFFFF, %bb.d ], [ %.09..i50.i.us.i.7, %_ZL11_window_maxPKfi.exit53.i.us.i.loopexit.unr-lcssa ], [ %.09..i50.i.us.i.epil, %.lr.ph.i47.i.us.i.epil ] ; 3 uses
  %i.do = trunc nuw nsw i64 %indvars.iv.i.us.i to i32
  %i.dp = add i32 %i.s, %i.do                     ; 2 uses
  %i.dq = icmp slt i32 %i.dp, %i.r
  br i1 %i.dq, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZL11_window_maxPKfi.exit53.i.us.i
  %i.dr = sext i32 %i.dp to i64
  %i.ds = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.dr
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !18, !alias.scope !1006, !noalias !1009 ; 2 uses
  %i.du = fcmp reassoc nsz arcp contract afn ogt float %i.dt, %.1.i.us.i
  %..1.i.us.i = select reassoc nsz arcp contract afn i1 %i.du, float %i.dt, float %.1.i.us.i
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZL11_window_maxPKfi.exit53.i.us.i
  %.2.i.us.i = phi nsz float [ %..1.i.us.i, %bb.e ], [ %.1.i.us.i, %_ZL11_window_maxPKfi.exit53.i.us.i ]
  %indvars.iv.next.i.us.i = add nuw nsw i64 %indvars.iv.i.us.i, 1 ; 2 uses
  %exitcond.not.i.us.i = icmp eq i64 %indvars.iv.next.i.us.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.us.i, label %_ZL10box_max_1diPKfPfi.exit.loopexit.us.i, label %_ZL11_window_maxPKfi.exit.i.us.i, !llvm.loop !1014

_ZL10box_max_1diPKfPfi.exit.loopexit.us.i:        ; preds = %bb.f
  %i.dv = add nuw i64 %.062169.us.i, 1            ; 2 uses
  %exitcond238.not.i = icmp eq i64 %i.dv, %1
  br i1 %exitcond238.not.i, label %.preheader124.i, label %.lr.ph.split.us.i, !llvm.loop !1015

.preheader124.i.loopexit398.unr-lcssa:            ; preds = %_ZL11_window_maxPKfi.exit.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader124.i, label %_ZL11_window_maxPKfi.exit.i.i.epil.preheader

_ZL11_window_maxPKfi.exit.i.i.epil.preheader:     ; preds = %.preheader124.i.loopexit398.unr-lcssa, %_ZL11_window_maxPKfi.exit.i.i.preheader
  %.062169.i.epil.init = phi i64 [ 0, %_ZL11_window_maxPKfi.exit.i.i.preheader ], [ %i.ff, %.preheader124.i.loopexit398.unr-lcssa ]
  %lcmp.mod400 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod400)
  br label %_ZL11_window_maxPKfi.exit.i.i.epil

_ZL11_window_maxPKfi.exit.i.i.epil:               ; preds = %_ZL11_window_maxPKfi.exit.i.i.epil, %_ZL11_window_maxPKfi.exit.i.i.epil.preheader
  %.062169.i.epil = phi i64 [ %i.dy, %_ZL11_window_maxPKfi.exit.i.i.epil ], [ %.062169.i.epil.init, %_ZL11_window_maxPKfi.exit.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %_ZL11_window_maxPKfi.exit.i.i.epil ], [ 0, %_ZL11_window_maxPKfi.exit.i.i.epil.preheader ]
  %i.dw = mul i64 %.062169.i.epil, %2
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.dw
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 64 %i.o, ptr align 4 %i.dx, i64 %i.q, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1006)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1009)
  %i.dy = add nuw i64 %.062169.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader124.i, label %_ZL11_window_maxPKfi.exit.i.i.epil, !llvm.loop !1016

.preheader124.i:                                  ; preds = %.preheader124.i.loopexit398.unr-lcssa, %_ZL11_window_maxPKfi.exit.i.i.epil, %_ZL10box_max_1diPKfPfi.exit.loopexit.us.i, %.preheader125.i
  %i.dz = and i64 %2, -16                         ; 5 uses
  %.not189.i = icmp eq i64 %i.dz, 0
  br i1 %.not189.i, label %.preheader123.i, label %.lr.ph181.i

.lr.ph181.i:                                      ; preds = %.preheader124.i
  %i.ea = trunc i64 %1 to i32                     ; 2 uses
  %i.eb = add nsw i64 %i.i, -1                    ; 6 uses
  %i.ec = add i32 %i.b, 1
  %i.ed = tail call i32 @llvm.umin.i32(i32 %i.ec, i32 %i.ea) ; 4 uses
  %i.ee = zext i32 %i.ed to i64                   ; 2 uses
  %i.ef = and i64 %1, 4294967295                  ; 5 uses
  %.not212.i.i = icmp eq i32 %i.ea, 0
  %i.eg = add nuw nsw i64 %i.c, 1                 ; 2 uses
  %xtraiter415 = and i64 %i.ee, 1
  %i.eh = icmp eq i32 %i.ed, 1                    ; 0 uses
  %unroll_iter420 = and i64 %i.ee, 4294967294
  %lcmp.mod417.not = icmp eq i64 %xtraiter415, 0
  %lcmp.mod419 = trunc i32 %i.ed to i1
  %invariant.op = sub i64 1, %i.c
  %broadcast.splatinsert = insertelement <8 x i64> poison, i64 %i.eb, i64 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> poison, <8 x i32> zeroinitializer
  br label %bb.g

_ZL11_window_maxPKfi.exit.i.i:                    ; preds = %_ZL11_window_maxPKfi.exit.i.i, %_ZL11_window_maxPKfi.exit.i.i.preheader.new
  %.062169.i = phi i64 [ 0, %_ZL11_window_maxPKfi.exit.i.i.preheader.new ], [ %i.ff, %_ZL11_window_maxPKfi.exit.i.i ] ; 9 uses
  %niter = phi i64 [ 0, %_ZL11_window_maxPKfi.exit.i.i.preheader.new ], [ %niter.next.7, %_ZL11_window_maxPKfi.exit.i.i ]
  %i.ei = mul i64 %.062169.i, %2
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ei
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 64 %i.o, ptr align 4 %i.ej, i64 %i.q, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1006)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1009)
  %i.ek = or disjoint i64 %.062169.i, 1
  %i.el = mul i64 %i.ek, %2
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.el
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 64 %i.o, ptr align 4 %i.em, i64 %i.q, i1 false)
  %i.en = or disjoint i64 %.062169.i, 2
  %i.eo = mul i64 %i.en, %2
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.eo
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 64 %i.o, ptr align 4 %i.ep, i64 %i.q, i1 false)
  %i.eq = or disjoint i64 %.062169.i, 3
  %i.er = mul i64 %i.eq, %2
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.er
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 64 %i.o, ptr align 4 %i.es, i64 %i.q, i1 false)
  %i.et = or disjoint i64 %.062169.i, 4
  %i.eu = mul i64 %i.et, %2
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.eu
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 64 %i.o, ptr align 4 %i.ev, i64 %i.q, i1 false)
  %i.ew = or disjoint i64 %.062169.i, 5
  %i.ex = mul i64 %i.ew, %2
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ex
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 64 %i.o, ptr align 4 %i.ey, i64 %i.q, i1 false)
  %i.ez = or disjoint i64 %.062169.i, 6
  %i.fa = mul i64 %i.ez, %2
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.fa
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 64 %i.o, ptr align 4 %i.fb, i64 %i.q, i1 false)
  %i.fc = or disjoint i64 %.062169.i, 7
  %i.fd = mul i64 %i.fc, %2
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.fd
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 64 %i.o, ptr align 4 %i.fe, i64 %i.q, i1 false)
  %i.ff = add nuw i64 %.062169.i, 8               ; 2 uses
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.preheader124.i.loopexit398.unr-lcssa, label %_ZL11_window_maxPKfi.exit.i.i, !llvm.loop !1015

.preheader123.i:                                  ; preds = %_ZL13_box_max_vertILm16EEvjPfS0_mjm.exit.i, %.preheader124.i
  %i.fg = and i64 %2, -4                          ; 2 uses
  %i.fh = icmp ult i64 %i.dz, %i.fg
  br i1 %i.fh, label %.lr.ph184.i, label %.preheader.i

.lr.ph184.i:                                      ; preds = %.preheader123.i
  %i.fi = trunc i64 %1 to i32                     ; 2 uses
  %i.fj = add nsw i64 %i.i, -1                    ; 6 uses
  %i.fk = add i32 %i.b, 1
  %i.fl = tail call i32 @llvm.umin.i32(i32 %i.fk, i32 %i.fi) ; 4 uses
  %i.fm = zext i32 %i.fl to i64                   ; 2 uses
  %i.fn = and i64 %1, 4294967295                  ; 5 uses
  %.not104.i.i = icmp eq i32 %i.fi, 0
  %i.fo = add nuw nsw i64 %i.c, 1                 ; 2 uses
  %xtraiter422 = and i64 %i.fm, 1
  %i.fp = icmp eq i32 %i.fl, 1                    ; 0 uses
  %unroll_iter429 = and i64 %i.fm, 4294967294
  %lcmp.mod426.not = icmp eq i64 %xtraiter422, 0
  %lcmp.mod428 = trunc i32 %i.fl to i1
  %invariant.op482 = sub i64 1, %i.c
  %broadcast.splatinsert275 = insertelement <8 x i64> poison, i64 %i.fj, i64 0
  %broadcast.splat276 = shufflevector <8 x i64> %broadcast.splatinsert275, <8 x i64> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %bb.k

bb.g:                                             ; preds = %_ZL13_box_max_vertILm16EEvjPfS0_mjm.exit.i, %.lr.ph181.i
  %.061180.i = phi i64 [ 0, %.lr.ph181.i ], [ %i.md, %_ZL13_box_max_vertILm16EEvjPfS0_mjm.exit.i ] ; 2 uses
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.061180.i ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1017)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1020)
  switch i32 %i.ed, label %.lr.ph.i70.i [
    i32 0, label %.preheader.i.i
    i32 1, label %.lr.ph.i70.i.epil.preheader
  ]

.preheader.i.i.loopexit.unr-lcssa:                ; preds = %.lr.ph.i70.i
  br i1 %lcmp.mod417.not, label %.preheader.i.i, label %.lr.ph.i70.i.epil.preheader

.lr.ph.i70.i.epil.preheader:                      ; preds = %bb.g, %.preheader.i.i.loopexit.unr-lcssa
  %.05262.i.i.epil.init = phi i64 [ 0, %bb.g ], [ %i.gw, %.preheader.i.i.loopexit.unr-lcssa ] ; 3 uses
  %.epil.init = phi <16 x float> [ splat (float f0xFF7FFFFF), %bb.g ], [ %i.gv, %.preheader.i.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod419)
  %i.fr = add nuw nsw i64 %.05262.i.i.epil.init, 24
  %i.fs = mul i64 %i.fr, %2
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.fq, i64 %i.fs
  tail call void @llvm.prefetch.p0(ptr %i.ft, i32 0, i32 0, i32 1), !noalias !1017
  %i.fu = and i64 %.05262.i.i.epil.init, %i.eb
  %.idx59.i.i.epil = shl nuw nsw i64 %i.fu, 6
  %i.fv = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx59.i.i.epil
  %i.fw = mul i64 %.05262.i.i.epil.init, %2
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.fq, i64 %i.fw ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1022)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %i.fv, ptr noundef nonnull readonly align 4 dereferenceable(64) %i.fx, i64 64, i1 false), !tbaa !18, !alias.scope !1025
  %i.fy = load <16 x float>, ptr %i.fx, align 4, !tbaa !18, !alias.scope !1027, !noalias !1028
  %i.fz = tail call reassoc nsz arcp contract afn <16 x float> @llvm.maxnum.v16f32(<16 x float> %.epil.init, <16 x float> %i.fy)
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.lr.ph.i70.i.epil.preheader, %.preheader.i.i.loopexit.unr-lcssa, %bb.g
  %i.ga = phi <16 x float> [ splat (float f0xFF7FFFFF), %bb.g ], [ %i.gv, %.preheader.i.i.loopexit.unr-lcssa ], [ %i.fz, %.lr.ph.i70.i.epil.preheader ] ; 2 uses
  br i1 %.not212.i.i, label %_ZL13_box_max_vertILm16EEvjPfS0_mjm.exit.i, label %.lr.ph135.i.i.preheader

.lr.ph135.i.i.preheader:                          ; preds = %.preheader.i.i
  %i.gb = shufflevector <16 x float> %i.ga, <16 x float> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  br label %.lr.ph135.i.i

.lr.ph.i70.i:                                     ; preds = %bb.g, %.lr.ph.i70.i
  %.05262.i.i = phi i64 [ %i.gw, %.lr.ph.i70.i ], [ 0, %bb.g ] ; 6 uses
  %i.gc = phi <16 x float> [ %i.gv, %.lr.ph.i70.i ], [ splat (float f0xFF7FFFFF), %bb.g ]
  %niter421 = phi i64 [ %niter421.next.1, %.lr.ph.i70.i ], [ 0, %bb.g ]
  %i.gd = add nuw nsw i64 %.05262.i.i, 24
  %i.ge = mul i64 %i.gd, %2
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.fq, i64 %i.ge
  tail call void @llvm.prefetch.p0(ptr %i.gf, i32 0, i32 0, i32 1), !noalias !1017
  %i.gg = and i64 %.05262.i.i, %i.eb
  %.idx59.i.i = shl nuw nsw i64 %i.gg, 6
  %i.gh = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx59.i.i
  %i.gi = mul i64 %.05262.i.i, %2
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.fq, i64 %i.gi ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1022)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %i.gh, ptr noundef nonnull readonly align 4 dereferenceable(64) %i.gj, i64 64, i1 false), !tbaa !18, !alias.scope !1025
  %i.gk = load <16 x float>, ptr %i.gj, align 4, !tbaa !18, !alias.scope !1027, !noalias !1028
  %i.gl = tail call reassoc nsz arcp contract afn <16 x float> @llvm.maxnum.v16f32(<16 x float> %i.gc, <16 x float> %i.gk)
  %i.gm = or disjoint i64 %.05262.i.i, 1          ; 2 uses
  %i.gn = add nuw nsw i64 %.05262.i.i, 25
  %i.go = mul i64 %i.gn, %2
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.fq, i64 %i.go
  tail call void @llvm.prefetch.p0(ptr %i.gp, i32 0, i32 0, i32 1), !noalias !1017
  %i.gq = and i64 %i.gm, %i.eb
  %.idx59.i.i.1 = shl nuw nsw i64 %i.gq, 6
  %i.gr = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx59.i.i.1
  %i.gs = mul i64 %i.gm, %2
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.fq, i64 %i.gs ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1029)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %i.gr, ptr noundef nonnull readonly align 4 dereferenceable(64) %i.gt, i64 64, i1 false), !tbaa !18, !alias.scope !1031
  %i.gu = load <16 x float>, ptr %i.gt, align 4, !tbaa !18, !alias.scope !1027, !noalias !1032
  %i.gv = tail call reassoc nsz arcp contract afn <16 x float> @llvm.maxnum.v16f32(<16 x float> %i.gl, <16 x float> %i.gu) ; 3 uses
  %i.gw = add nuw nsw i64 %.05262.i.i, 2          ; 2 uses
  %niter421.next.1 = add i64 %niter421, 2         ; 2 uses
  %niter421.ncmp.1 = icmp eq i64 %niter421.next.1, %unroll_iter420
  br i1 %niter421.ncmp.1, label %.preheader.i.i.loopexit.unr-lcssa, label %.lr.ph.i70.i, !llvm.loop !1033

.lr.ph135.i.i:                                    ; preds = %.lr.ph135.i.i.preheader, %bb.j
  %indvars.iv.i72.i = phi i64 [ %indvars.iv.next.i75.i, %bb.j ], [ %i.eg, %.lr.ph135.i.i.preheader ] ; 3 uses
  %.051134.i.i = phi i64 [ %i.mb, %bb.j ], [ 0, %.lr.ph135.i.i.preheader ] ; 7 uses
  %i.gx = phi <16 x float> [ %i.mc, %bb.j ], [ %i.ga, %.lr.ph135.i.i.preheader ]
  %i.gy = phi <32 x float> [ %i.ma, %bb.j ], [ %i.gb, %.lr.ph135.i.i.preheader ] ; 3 uses
  %umin = tail call i64 @llvm.umin.i64(i64 %indvars.iv.i72.i, i64 %i.ef)
  %i.gz = xor i64 %.051134.i.i, -1
  %5 = add nsw i64 %i.c, %i.gz
  %i.ha = add i64 %umin, %5                       ; 3 uses
  %umin.i.i = tail call i64 @llvm.umin.i64(i64 %indvars.iv.i72.i, i64 %i.ef)
  %i.hb = add nuw nsw i64 %.051134.i.i, 24
  %i.hc = mul i64 %i.hb, %2
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.fq, i64 %i.hc
  tail call void @llvm.prefetch.p0(ptr %i.hd, i32 0, i32 0, i32 1), !noalias !1017
  %i.he = mul i64 %.051134.i.i, %2
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.fq, i64 %i.he ; 2 uses
  %i.hg = shufflevector <32 x float> %i.gy, <32 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  store <8 x float> %i.hg, ptr %i.hf, align 4, !tbaa !18, !alias.scope !1034, !noalias !1017
  %.sroa.59.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.hf, i64 32
  %i.hh = shufflevector <32 x float> %i.gy, <32 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  store <8 x float> %i.hh, ptr %.sroa.59.0..sroa_idx.i.i, align 4, !tbaa !18, !alias.scope !1034, !noalias !1017
  %.not.i73.i = icmp samesign ult i64 %.051134.i.i, %i.c
  %.pre.i.i = add nuw nsw i64 %.051134.i.i, %i.eg ; 4 uses
  br i1 %.not.i73.i, label %.loopexit.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph135.i.i
  %..i74.i = tail call i64 @llvm.umin.i64(i64 %.pre.i.i, i64 %i.ef)
  %.0109.reass.reass.i.reass.reass.i.reass.reass.reass = add i64 %.051134.i.i, %invariant.op ; 4 uses
  %i.hi = icmp samesign ult i64 %.0109.reass.reass.i.reass.reass.i.reass.reass.reass, %..i74.i
  br i1 %i.hi, label %.lr.ph111.i.i.preheader, label %.loopexit.i.i

.lr.ph111.i.i.preheader:                          ; preds = %bb.h
  %min.iters.check = icmp ult i64 %i.ha, 8
  br i1 %min.iters.check, label %.lr.ph111.i.i.preheader376, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph111.i.i.preheader
  %n.vec = and i64 %i.ha, -8                      ; 3 uses
  %broadcast.splatinsert208 = insertelement <8 x i64> poison, i64 %.0109.reass.reass.i.reass.reass.i.reass.reass.reass, i64 0
  %broadcast.splat209 = shufflevector <8 x i64> %broadcast.splatinsert208, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction = add nuw nsw <8 x i64> %broadcast.splat209, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i64> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %vec.phi = phi <8 x float> [ splat (float f0xFF7FFFFF), %vector.ph ], [ %i.hl, %vector.body ] ; 2 uses
  %vec.phi210 = phi <8 x float> [ splat (float f0xFF7FFFFF), %vector.ph ], [ %i.hm, %vector.body ] ; 2 uses
  %vec.phi211 = phi <8 x float> [ splat (float f0xFF7FFFFF), %vector.ph ], [ %i.hn, %vector.body ] ; 2 uses
  %vec.phi212 = phi <8 x float> [ splat (float f0xFF7FFFFF), %vector.ph ], [ %i.ho, %vector.body ] ; 2 uses
  %vec.phi213 = phi <8 x float> [ splat (float f0xFF7FFFFF), %vector.ph ], [ %i.hp, %vector.body ] ; 2 uses
  %vec.phi214 = phi <8 x float> [ splat (float f0xFF7FFFFF), %vector.ph ], [ %i.hq, %vector.body ] ; 2 uses
  %vec.phi215 = phi <8 x float> [ splat (float f0xFF7FFFFF), %vector.ph ], [ %i.hr, %vector.body ] ; 2 uses
  %vec.phi216 = phi <8 x float> [ splat (float f0xFF7FFFFF), %vector.ph ], [ %i.hs, %vector.body ] ; 2 uses
  %vec.phi217 = phi <8 x float> [ splat (float f0xFF7FFFFF), %vector.ph ], [ %i.ht, %vector.body ] ; 2 uses
  %vec.phi218 = phi <8 x float> [ splat (float f0xFF7FFFFF), %vector.ph ], [ %i.hu, %vector.body ] ; 2 uses
  %vec.phi219 = phi <8 x float> [ splat (float f0xFF7FFFFF), %vector.ph ], [ %i.hv, %vector.body ] ; 2 uses
  %vec.phi220 = phi <8 x float> [ splat (float f0xFF7FFFFF), %vector.ph ], [ %i.hw, %vector.body ] ; 2 uses
  %vec.phi221 = phi <8 x float> [ splat (float f0xFF7FFFFF), %vector.ph ], [ %i.hx, %vector.body ] ; 2 uses
  %vec.phi222 = phi <8 x float> [ splat (float f0xFF7FFFFF), %vector.ph ], [ %i.hy, %vector.body ] ; 2 uses
  %vec.phi223 = phi <8 x float> [ splat (float f0xFF7FFFFF), %vector.ph ], [ %i.hz, %vector.body ] ; 2 uses
  %vec.phi224 = phi <8 x float> [ splat (float f0xFF7FFFFF), %vector.ph ], [ %i.ia, %vector.body ] ; 2 uses
  %i.hj = and <8 x i64> %vec.ind, %broadcast.splat
  %i.hk = shl <8 x i64> %i.hj, splat (i64 6)
  %wide.gep = getelementptr inbounds nuw i8, ptr %i.o, <8 x i64> %i.hk ; 16 uses
  %wide.masked.gather = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !18, !alias.scope !1038, !noalias !1020 ; 2 uses
  %i.hl = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi, <8 x float> %wide.masked.gather) ; 2 uses
  %wide.gep225 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 4
  %wide.masked.gather226 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep225, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !18, !alias.scope !1038, !noalias !1020 ; 2 uses
  %i.hm = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi210, <8 x float> %wide.masked.gather226) ; 2 uses
  %wide.gep227 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 8
  %wide.masked.gather228 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep227, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !18, !alias.scope !1038, !noalias !1020 ; 2 uses
  %i.hn = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi211, <8 x float> %wide.masked.gather228) ; 2 uses
  %wide.gep229 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 12
  %wide.masked.gather230 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep229, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !18, !alias.scope !1038, !noalias !1020 ; 2 uses
  %i.ho = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi212, <8 x float> %wide.masked.gather230) ; 2 uses
  %wide.gep231 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 16
  %wide.masked.gather232 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep231, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !18, !alias.scope !1038, !noalias !1020 ; 2 uses
  %i.hp = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi213, <8 x float> %wide.masked.gather232) ; 2 uses
  %wide.gep233 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 20
  %wide.masked.gather234 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep233, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !18, !alias.scope !1038, !noalias !1020 ; 2 uses
  %i.hq = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi214, <8 x float> %wide.masked.gather234) ; 2 uses
  %wide.gep235 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 24
  %wide.masked.gather236 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep235, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !18, !alias.scope !1038, !noalias !1020 ; 2 uses
  %i.hr = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi215, <8 x float> %wide.masked.gather236) ; 2 uses
  %wide.gep237 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 28
  %wide.masked.gather238 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep237, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !18, !alias.scope !1038, !noalias !1020 ; 2 uses
  %i.hs = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi216, <8 x float> %wide.masked.gather238) ; 2 uses
  %wide.gep239 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 32
  %wide.masked.gather240 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep239, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !18, !alias.scope !1038, !noalias !1020 ; 2 uses
  %i.ht = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi217, <8 x float> %wide.masked.gather240) ; 2 uses
  %wide.gep241 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 36
  %wide.masked.gather242 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep241, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !18, !alias.scope !1038, !noalias !1020 ; 2 uses
  %i.hu = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi218, <8 x float> %wide.masked.gather242) ; 2 uses
  %wide.gep243 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 40
  %wide.masked.gather244 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep243, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !18, !alias.scope !1038, !noalias !1020 ; 2 uses
  %i.hv = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi219, <8 x float> %wide.masked.gather244) ; 2 uses
  %wide.gep245 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 44
  %wide.masked.gather246 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep245, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !18, !alias.scope !1038, !noalias !1020 ; 2 uses
  %i.hw = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi220, <8 x float> %wide.masked.gather246) ; 2 uses
  %wide.gep247 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 48
  %wide.masked.gather248 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep247, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !18, !alias.scope !1038, !noalias !1020 ; 2 uses
  %i.hx = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi221, <8 x float> %wide.masked.gather248) ; 2 uses
  %wide.gep249 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 52
  %wide.masked.gather250 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep249, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !18, !alias.scope !1038, !noalias !1020 ; 2 uses
  %i.hy = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi222, <8 x float> %wide.masked.gather250) ; 2 uses
  %wide.gep251 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 56
  %wide.masked.gather252 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep251, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !18, !alias.scope !1038, !noalias !1020 ; 2 uses
  %i.hz = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi223, <8 x float> %wide.masked.gather252) ; 2 uses
  %wide.gep253 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 60
  %wide.masked.gather254 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep253, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !18, !alias.scope !1038, !noalias !1020 ; 2 uses
  %i.ia = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi224, <8 x float> %wide.masked.gather254) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ib = fcmp uno <8 x float> %wide.masked.gather, %wide.masked.gather226
  %i.ic = fcmp uno <8 x float> %wide.masked.gather230, %wide.masked.gather228
  %i.id = or <8 x i1> %i.ib, %i.ic
  %i.ie = fcmp uno <8 x float> %wide.masked.gather234, %wide.masked.gather232
  %i.if = or <8 x i1> %i.id, %i.ie
  %i.ig = fcmp uno <8 x float> %wide.masked.gather238, %wide.masked.gather236
  %i.ih = or <8 x i1> %i.if, %i.ig
  %i.ii = fcmp uno <8 x float> %wide.masked.gather242, %wide.masked.gather240
  %i.ij = or <8 x i1> %i.ih, %i.ii
  %i.ik = fcmp uno <8 x float> %wide.masked.gather246, %wide.masked.gather244
  %i.il = or <8 x i1> %i.ij, %i.ik
  %i.im = fcmp uno <8 x float> %wide.masked.gather250, %wide.masked.gather248
  %i.in = or <8 x i1> %i.il, %i.im
  %i.io = fcmp uno <8 x float> %wide.masked.gather254, %wide.masked.gather252
  %i.ip = or <8 x i1> %i.in, %i.io
  %i.iq = freeze <8 x i1> %i.ip
  %i.ir = bitcast <8 x i1> %i.iq to i8
  %i.is = icmp ne i8 %i.ir, 0                     ; 19 uses
  %i.it = icmp eq i64 %index.next, %n.vec
  %i.iu = or i1 %i.is, %i.it
  %vec.ind.next = add nuw nsw <8 x i64> %vec.ind, splat (i64 8)
  br i1 %i.iu, label %middle.block, label %vector.body, !llvm.loop !1041

middle.block:                                     ; preds = %vector.body
  %i.iv = select i1 %i.is, <8 x float> %vec.phi, <8 x float> %i.hl
  %i.iw = select i1 %i.is, <8 x float> %vec.phi210, <8 x float> %i.hm
  %i.ix = select i1 %i.is, <8 x float> %vec.phi211, <8 x float> %i.hn
  %i.iy = select i1 %i.is, <8 x float> %vec.phi212, <8 x float> %i.ho
  %i.iz = select i1 %i.is, <8 x float> %vec.phi213, <8 x float> %i.hp
  %i.ja = select i1 %i.is, <8 x float> %vec.phi214, <8 x float> %i.hq
  %i.jb = select i1 %i.is, <8 x float> %vec.phi215, <8 x float> %i.hr
  %i.jc = select i1 %i.is, <8 x float> %vec.phi216, <8 x float> %i.hs
  %i.jd = select i1 %i.is, <8 x float> %vec.phi217, <8 x float> %i.ht
  %i.je = select i1 %i.is, <8 x float> %vec.phi218, <8 x float> %i.hu
  %i.jf = select i1 %i.is, <8 x float> %vec.phi219, <8 x float> %i.hv
  %i.jg = select i1 %i.is, <8 x float> %vec.phi220, <8 x float> %i.hw
  %i.jh = select i1 %i.is, <8 x float> %vec.phi221, <8 x float> %i.hx
  %i.ji = select i1 %i.is, <8 x float> %vec.phi222, <8 x float> %i.hy
  %i.jj = select i1 %i.is, <8 x float> %vec.phi223, <8 x float> %i.hz
  %i.jk = select i1 %i.is, <8 x float> %vec.phi224, <8 x float> %i.ia
  %i.jl = select i1 %i.is, i64 %index, i64 %n.vec
  %i.jm = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fmax.v8f32(<8 x float> %i.iv) ; 2 uses
  %i.jn = add i64 %.0109.reass.reass.i.reass.reass.i.reass.reass.reass, %i.jl
  %i.jo = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fmax.v8f32(<8 x float> %i.iw) ; 2 uses
  %i.jp = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fmax.v8f32(<8 x float> %i.ix) ; 2 uses
  %i.jq = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fmax.v8f32(<8 x float> %i.iy) ; 2 uses
  %i.jr = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fmax.v8f32(<8 x float> %i.iz) ; 2 uses
  %i.js = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fmax.v8f32(<8 x float> %i.ja) ; 2 uses
  %i.jt = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fmax.v8f32(<8 x float> %i.jb) ; 2 uses
  %i.ju = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fmax.v8f32(<8 x float> %i.jc) ; 2 uses
  %i.jv = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fmax.v8f32(<8 x float> %i.jd) ; 2 uses
  %i.jw = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fmax.v8f32(<8 x float> %i.je) ; 2 uses
  %i.jx = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fmax.v8f32(<8 x float> %i.jf) ; 2 uses
  %i.jy = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fmax.v8f32(<8 x float> %i.jg) ; 2 uses
  %i.jz = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fmax.v8f32(<8 x float> %i.jh) ; 2 uses
  %i.ka = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fmax.v8f32(<8 x float> %i.ji) ; 2 uses
  %i.kb = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fmax.v8f32(<8 x float> %i.jj) ; 2 uses
  %i.kc = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fmax.v8f32(<8 x float> %i.jk) ; 2 uses
  %cmp.n = icmp ne i64 %i.ha, %n.vec
  %.not = or i1 %cmp.n, %i.is
  %i.kd = insertelement <16 x float> poison, float %i.jm, i64 0
  %i.ke = insertelement <16 x float> %i.kd, float %i.jo, i64 1
  %i.kf = insertelement <16 x float> %i.ke, float %i.jp, i64 2
  %i.kg = insertelement <16 x float> %i.kf, float %i.jq, i64 3
  %i.kh = insertelement <16 x float> %i.kg, float %i.jr, i64 4
  %i.ki = insertelement <16 x float> %i.kh, float %i.js, i64 5
  %i.kj = insertelement <16 x float> %i.ki, float %i.jt, i64 6
  %i.kk = insertelement <16 x float> %i.kj, float %i.ju, i64 7
  %i.kl = insertelement <16 x float> %i.kk, float %i.jv, i64 8
  %i.km = insertelement <16 x float> %i.kl, float %i.jw, i64 9
  %i.kn = insertelement <16 x float> %i.km, float %i.jx, i64 10
  %i.ko = insertelement <16 x float> %i.kn, float %i.jy, i64 11
  %i.kp = insertelement <16 x float> %i.ko, float %i.jz, i64 12
  %i.kq = insertelement <16 x float> %i.kp, float %i.ka, i64 13
  %i.kr = insertelement <16 x float> %i.kq, float %i.kb, i64 14
  %i.ks = insertelement <16 x float> %i.kr, float %i.kc, i64 15 ; 2 uses
  %i.kt = insertelement <32 x float> poison, float %i.kc, i64 0
  %i.ku = insertelement <32 x float> %i.kt, float %i.kb, i64 1
  %i.kv = insertelement <32 x float> %i.ku, float %i.ka, i64 2
  %i.kw = insertelement <32 x float> %i.kv, float %i.jz, i64 3
  %i.kx = insertelement <32 x float> %i.kw, float %i.jy, i64 4
  %i.ky = insertelement <32 x float> %i.kx, float %i.jx, i64 5
  %i.kz = insertelement <32 x float> %i.ky, float %i.jw, i64 6
  %i.la = insertelement <32 x float> %i.kz, float %i.jv, i64 7
  %i.lb = insertelement <32 x float> %i.la, float %i.ju, i64 8
  %i.lc = insertelement <32 x float> %i.lb, float %i.jt, i64 9
  %i.ld = insertelement <32 x float> %i.lc, float %i.js, i64 10
  %i.le = insertelement <32 x float> %i.ld, float %i.jr, i64 11
  %i.lf = insertelement <32 x float> %i.le, float %i.jq, i64 12
  %i.lg = insertelement <32 x float> %i.lf, float %i.jp, i64 13
  %i.lh = insertelement <32 x float> %i.lg, float %i.jo, i64 14
  %i.li = insertelement <32 x float> %i.lh, float %i.jm, i64 15
  %i.lj = shufflevector <32 x float> %i.li, <32 x float> poison, <32 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0, i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  br i1 %.not, label %.lr.ph111.i.i.preheader376, label %.loopexit.i.i

.lr.ph111.i.i.preheader376:                       ; preds = %.lr.ph111.i.i.preheader, %middle.block
  %.0110.i.i.ph = phi i64 [ %.0109.reass.reass.i.reass.reass.i.reass.reass.reass, %.lr.ph111.i.i.preheader ], [ %i.jn, %middle.block ]
  %.ph377 = phi <16 x float> [ splat (float f0xFF7FFFFF), %.lr.ph111.i.i.preheader ], [ %i.ks, %middle.block ]
  br label %.lr.ph111.i.i

.lr.ph111.i.i:                                    ; preds = %.lr.ph111.i.i.preheader376, %.lr.ph111.i.i
  %.0110.i.i = phi i64 [ %.0.i.i, %.lr.ph111.i.i ], [ %.0110.i.i.ph, %.lr.ph111.i.i.preheader376 ] ; 2 uses
  %i.lk = phi <16 x float> [ %i.lo, %.lr.ph111.i.i ], [ %.ph377, %.lr.ph111.i.i.preheader376 ]
  %i.ll = and i64 %.0110.i.i, %i.eb
  %.idx58.i.i = shl i64 %i.ll, 6
  %i.lm = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx58.i.i
  %i.ln = load <16 x float>, ptr %i.lm, align 64, !tbaa !18, !alias.scope !1038, !noalias !1020
  %i.lo = tail call reassoc nsz arcp contract afn <16 x float> @llvm.maxnum.v16f32(<16 x float> %i.lk, <16 x float> %i.ln) ; 3 uses
  %.0.i.i = add nuw nsw i64 %.0110.i.i, 1         ; 2 uses
  %exitcond244.not.i.i = icmp eq i64 %.0.i.i, %umin.i.i
  br i1 %exitcond244.not.i.i, label %.loopexit.i.i.loopexit, label %.lr.ph111.i.i, !llvm.loop !1042

.loopexit.i.i.loopexit:                           ; preds = %.lr.ph111.i.i
  %i.lp = shufflevector <16 x float> %i.lo, <16 x float> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.loopexit.i.i.loopexit, %middle.block, %bb.h, %.lr.ph135.i.i
  %i.lq = phi <16 x float> [ %i.gx, %.lr.ph135.i.i ], [ splat (float f0xFF7FFFFF), %bb.h ], [ %i.ks, %middle.block ], [ %i.lo, %.loopexit.i.i.loopexit ]
  %i.lr = phi <32 x float> [ %i.gy, %.lr.ph135.i.i ], [ splat (float f0xFF7FFFFF), %bb.h ], [ %i.lj, %middle.block ], [ %i.lp, %.loopexit.i.i.loopexit ]
  %i.ls = icmp samesign ult i64 %.pre.i.i, %i.ef
  br i1 %i.ls, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.loopexit.i.i
  %i.lt = and i64 %.pre.i.i, %i.eb
  %.idx.i.i = shl nuw nsw i64 %i.lt, 6
  %i.lu = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx.i.i
  %i.lv = mul i64 %.pre.i.i, %2
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %i.fq, i64 %i.lv ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1043)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %i.lu, ptr noundef nonnull readonly align 4 dereferenceable(64) %i.lw, i64 64, i1 false), !tbaa !18, !alias.scope !1046
  %i.lx = load <16 x float>, ptr %i.lw, align 4, !tbaa !18, !alias.scope !1048, !noalias !1049
  %i.ly = tail call reassoc nsz arcp contract afn <16 x float> @llvm.maxnum.v16f32(<16 x float> %i.lq, <16 x float> %i.lx)
  %i.lz = shufflevector <16 x float> %i.ly, <16 x float> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.loopexit.i.i
  %i.ma = phi <32 x float> [ %i.lz, %bb.i ], [ %i.lr, %.loopexit.i.i ] ; 2 uses
  %i.mb = add nuw nsw i64 %.051134.i.i, 1         ; 2 uses
  %indvars.iv.next.i75.i = add nuw nsw i64 %indvars.iv.i72.i, 1
  %exitcond245.not.i.i = icmp eq i64 %i.mb, %i.ef
  %i.mc = shufflevector <32 x float> %i.ma, <32 x float> poison, <16 x i32> <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  br i1 %exitcond245.not.i.i, label %_ZL13_box_max_vertILm16EEvjPfS0_mjm.exit.i, label %.lr.ph135.i.i, !llvm.loop !1050

_ZL13_box_max_vertILm16EEvjPfS0_mjm.exit.i:       ; preds = %bb.j, %.preheader.i.i
  %i.md = add nuw i64 %.061180.i, 16              ; 2 uses
  %i.me = icmp ult i64 %i.md, %i.dz
  br i1 %i.me, label %bb.g, label %.preheader123.i, !llvm.loop !1051

.preheader.i:                                     ; preds = %_ZL13_box_max_vertILm4EEvjPfS0_mjm.exit.i, %.preheader123.i
  %.0.lcssa.i = phi i64 [ %i.dz, %.preheader123.i ], [ %i.qm, %_ZL13_box_max_vertILm4EEvjPfS0_mjm.exit.i ] ; 2 uses
  %i.mf = icmp ult i64 %.0.lcssa.i, %2
  br i1 %i.mf, label %.lr.ph188.i, label %._crit_edge.i

.lr.ph188.i:                                      ; preds = %.preheader.i
  %i.mg = trunc i64 %1 to i32                     ; 2 uses
  %i.mh = add nsw i64 %i.i, -1                    ; 8 uses
  %i.mi = add i32 %i.b, 1
  %i.mj = tail call i32 @llvm.umin.i32(i32 %i.mi, i32 %i.mg) ; 3 uses
  %i.mk = zext i32 %i.mj to i64                   ; 2 uses
  %.not71.i.i = icmp eq i32 %i.mj, 0
  %i.ml = and i64 %1, 4294967295                  ; 5 uses
  %.not72.i.i = icmp eq i32 %i.mg, 0
  %i.mm = add nuw nsw i64 %i.c, 1                 ; 2 uses
  %xtraiter431 = and i64 %i.mk, 3                 ; 3 uses
  %i.mn = icmp ult i32 %i.mj, 4
  %unroll_iter436 = and i64 %i.mk, 4294967292
  %lcmp.mod433.not = icmp eq i64 %xtraiter431, 0
  %lcmp.mod435 = icmp ne i64 %xtraiter431, 0
  %invariant.op483 = sub i64 1, %i.c
  %broadcast.splatinsert324.a = insertelement <8 x i64> poison, i64 %i.mh, i64 0
  %broadcast.splat325.a = shufflevector <8 x i64> %broadcast.splatinsert324.a, <8 x i64> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %bb.o

bb.k:                                             ; preds = %_ZL13_box_max_vertILm4EEvjPfS0_mjm.exit.i, %.lr.ph184.i
  %.0183.i = phi i64 [ %i.dz, %.lr.ph184.i ], [ %i.qm, %_ZL13_box_max_vertILm4EEvjPfS0_mjm.exit.i ] ; 2 uses
  %i.mo = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0183.i ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1052)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1055)
  switch i32 %i.fl, label %.lr.ph.i76.i [
    i32 0, label %.preheader.i80.i
    i32 1, label %.lr.ph.i76.i.epil.preheader
  ]

.preheader.i80.i.loopexit.unr-lcssa:              ; preds = %.lr.ph.i76.i
  br i1 %lcmp.mod426.not, label %.preheader.i80.i, label %.lr.ph.i76.i.epil.preheader

.lr.ph.i76.i.epil.preheader:                      ; preds = %bb.k, %.preheader.i80.i.loopexit.unr-lcssa
  %.05262.i77.i.epil.init = phi i64 [ 0, %bb.k ], [ %i.nt, %.preheader.i80.i.loopexit.unr-lcssa ] ; 3 uses
  %.epil.init425 = phi <4 x float> [ splat (float f0xFF7FFFFF), %bb.k ], [ %i.ns, %.preheader.i80.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod428)
  %i.mp = add nuw nsw i64 %.05262.i77.i.epil.init, 24
  %i.mq = mul i64 %i.mp, %2
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %i.mo, i64 %i.mq
  tail call void @llvm.prefetch.p0(ptr %i.mr, i32 0, i32 0, i32 1), !noalias !1052
  %i.ms = and i64 %.05262.i77.i.epil.init, %i.fj
  %.idx59.i78.i.epil = shl nuw nsw i64 %i.ms, 4
  %i.mt = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx59.i78.i.epil
  %i.mu = mul i64 %.05262.i77.i.epil.init, %2
  %i.mv = getelementptr inbounds nuw [4 x i8], ptr %i.mo, i64 %i.mu ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1057)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.mt, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.mv, i64 16, i1 false), !tbaa !18, !alias.scope !1060
  %i.mw = load <4 x float>, ptr %i.mv, align 4, !tbaa !18, !alias.scope !1062, !noalias !1063
  %i.mx = tail call reassoc nsz arcp contract afn <4 x float> @llvm.maxnum.v4f32(<4 x float> %.epil.init425, <4 x float> %i.mw)
  br label %.preheader.i80.i

.preheader.i80.i:                                 ; preds = %.lr.ph.i76.i.epil.preheader, %.preheader.i80.i.loopexit.unr-lcssa, %bb.k
  %i.my = phi <4 x float> [ splat (float f0xFF7FFFFF), %bb.k ], [ %i.ns, %.preheader.i80.i.loopexit.unr-lcssa ], [ %i.mx, %.lr.ph.i76.i.epil.preheader ] ; 2 uses
  br i1 %.not104.i.i, label %_ZL13_box_max_vertILm4EEvjPfS0_mjm.exit.i, label %.lr.ph90.i.i

.lr.ph.i76.i:                                     ; preds = %bb.k, %.lr.ph.i76.i
  %.05262.i77.i = phi i64 [ %i.nt, %.lr.ph.i76.i ], [ 0, %bb.k ] ; 6 uses
  %i.mz = phi <4 x float> [ %i.ns, %.lr.ph.i76.i ], [ splat (float f0xFF7FFFFF), %bb.k ]
  %niter430 = phi i64 [ %niter430.next.1, %.lr.ph.i76.i ], [ 0, %bb.k ]
  %i.na = add nuw nsw i64 %.05262.i77.i, 24
  %i.nb = mul i64 %i.na, %2
  %i.nc = getelementptr inbounds nuw [4 x i8], ptr %i.mo, i64 %i.nb
  tail call void @llvm.prefetch.p0(ptr %i.nc, i32 0, i32 0, i32 1), !noalias !1052
  %i.nd = and i64 %.05262.i77.i, %i.fj
  %.idx59.i78.i = shl nuw nsw i64 %i.nd, 4
  %i.ne = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx59.i78.i
  %i.nf = mul i64 %.05262.i77.i, %2
  %i.ng = getelementptr inbounds nuw [4 x i8], ptr %i.mo, i64 %i.nf ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1057)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(16) %i.ne, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.ng, i64 16, i1 false), !tbaa !18, !alias.scope !1060
  %i.nh = load <4 x float>, ptr %i.ng, align 4, !tbaa !18, !alias.scope !1062, !noalias !1063
  %i.ni = tail call reassoc nsz arcp contract afn <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.mz, <4 x float> %i.nh)
  %i.nj = or disjoint i64 %.05262.i77.i, 1        ; 2 uses
  %i.nk = add nuw nsw i64 %.05262.i77.i, 25
  %i.nl = mul i64 %i.nk, %2
  %i.nm = getelementptr inbounds nuw [4 x i8], ptr %i.mo, i64 %i.nl
  tail call void @llvm.prefetch.p0(ptr %i.nm, i32 0, i32 0, i32 1), !noalias !1052
  %i.nn = and i64 %i.nj, %i.fj
  %.idx59.i78.i.1 = shl nuw nsw i64 %i.nn, 4
  %i.no = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx59.i78.i.1
  %i.np = mul i64 %i.nj, %2
  %i.nq = getelementptr inbounds nuw [4 x i8], ptr %i.mo, i64 %i.np ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1064)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.no, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.nq, i64 16, i1 false), !tbaa !18, !alias.scope !1066
  %i.nr = load <4 x float>, ptr %i.nq, align 4, !tbaa !18, !alias.scope !1062, !noalias !1067
  %i.ns = tail call reassoc nsz arcp contract afn <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.ni, <4 x float> %i.nr) ; 3 uses
  %i.nt = add nuw nsw i64 %.05262.i77.i, 2        ; 2 uses
  %niter430.next.1 = add i64 %niter430, 2         ; 2 uses
  %niter430.ncmp.1 = icmp eq i64 %niter430.next.1, %unroll_iter429
  br i1 %niter430.ncmp.1, label %.preheader.i80.i.loopexit.unr-lcssa, label %.lr.ph.i76.i, !llvm.loop !1068

.lr.ph90.i.i:                                     ; preds = %.preheader.i80.i, %bb.n
  %indvars.iv.i88.i = phi i64 [ %indvars.iv.next.i106.i, %bb.n ], [ %i.fo, %.preheader.i80.i ] ; 3 uses
  %.05189.i.i = phi i64 [ %i.ql, %bb.n ], [ 0, %.preheader.i80.i ] ; 7 uses
  %i.nu = phi <4 x float> [ %i.qk, %bb.n ], [ %i.my, %.preheader.i80.i ]
  %i.nv = phi <4 x float> [ %i.qj, %bb.n ], [ %i.my, %.preheader.i80.i ] ; 2 uses
  %umin270 = tail call i64 @llvm.umin.i64(i64 %indvars.iv.i88.i, i64 %i.fn)
  %i.nw = xor i64 %.05189.i.i, -1
  %6 = add nsw i64 %i.c, %i.nw
  %i.nx = add i64 %umin270, %6                    ; 3 uses
  %umin.i89.i = tail call i64 @llvm.umin.i64(i64 %indvars.iv.i88.i, i64 %i.fn)
  %i.ny = add nuw nsw i64 %.05189.i.i, 24
  %i.nz = mul i64 %i.ny, %2
  %i.oa = getelementptr inbounds nuw [4 x i8], ptr %i.mo, i64 %i.nz
  tail call void @llvm.prefetch.p0(ptr %i.oa, i32 0, i32 0, i32 1), !noalias !1052
  %i.ob = mul i64 %.05189.i.i, %2
  %i.oc = getelementptr inbounds nuw [4 x i8], ptr %i.mo, i64 %i.ob
  store <4 x float> %i.nv, ptr %i.oc, align 4, !tbaa !18, !alias.scope !1069, !noalias !1052
  %.not.i93.i = icmp samesign ult i64 %.05189.i.i, %i.c
  %.pre.i94.i = add nuw nsw i64 %.05189.i.i, %i.fo ; 4 uses
  br i1 %.not.i93.i, label %.loopexit.i97.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph90.i.i
  %..i95.i = tail call i64 @llvm.umin.i64(i64 %.pre.i94.i, i64 %i.fn)
  %.077.reass.reass.i.reass.reass.i.reass.reass.reass = add i64 %.05189.i.i, %invariant.op482 ; 4 uses
  %i.od = icmp samesign ult i64 %.077.reass.reass.i.reass.reass.i.reass.reass.reass, %..i95.i
  br i1 %i.od, label %.lr.ph79.i.i.preheader, label %.loopexit.i97.i

.lr.ph79.i.i.preheader:                           ; preds = %bb.l
  %min.iters.check272 = icmp ult i64 %i.nx, 16
  br i1 %min.iters.check272, label %.lr.ph79.i.i.preheader363, label %vector.ph273

vector.ph273:                                     ; preds = %.lr.ph79.i.i.preheader
  %n.vec274 = and i64 %i.nx, -16                  ; 3 uses
  %broadcast.splatinsert277 = insertelement <8 x i64> poison, i64 %.077.reass.reass.i.reass.reass.i.reass.reass.reass, i64 0
  %broadcast.splat278 = shufflevector <8 x i64> %broadcast.splatinsert277, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction279 = add nuw nsw <8 x i64> %broadcast.splat278, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  br label %vector.body280

vector.body280:                                   ; preds = %vector.body280, %vector.ph273
  %index281 = phi i64 [ 0, %vector.ph273 ], [ %index.next307, %vector.body280 ] ; 2 uses
  %vec.ind282 = phi <8 x i64> [ %induction279, %vector.ph273 ], [ %vec.ind.next308, %vector.body280 ] ; 3 uses
  %vec.phi283.a = phi <8 x float> [ splat (float f0xFF7FFFFF), %vector.ph273 ], [ %i.oi, %vector.body280 ] ; 2 uses
  %vec.phi284.a = phi <8 x float> [ splat (float f0xFF7FFFFF), %vector.ph273 ], [ %i.oj, %vector.body280 ] ; 2 uses
  %vec.phi285.a = phi <8 x float> [ splat (float f0xFF7FFFFF), %vector.ph273 ], [ %i.ok, %vector.body280 ] ; 2 uses
  %vec.phi286.a = phi <8 x float> [ splat (float f0xFF7FFFFF), %vector.ph273 ], [ %i.ol, %vector.body280 ] ; 2 uses
  %vec.phi287.a = phi <8 x float> [ splat (float f0xFF7FFFFF), %vector.ph273 ], [ %i.om, %vector.body280 ] ; 2 uses
  %vec.phi288.a = phi <8 x float> [ splat (float f0xFF7FFFFF), %vector.ph273 ], [ %i.on, %vector.body280 ] ; 2 uses
  %vec.phi289.a = phi <8 x float> [ splat (float f0xFF7FFFFF), %vector.ph273 ], [ %i.oo, %vector.body280 ] ; 2 uses
  %vec.phi290 = phi <8 x float> [ splat (float f0xFF7FFFFF), %vector.ph273 ], [ %i.op, %vector.body280 ] ; 2 uses
  %step.add = add nuw nsw <8 x i64> %vec.ind282, splat (i64 8)
  %i.oe = and <8 x i64> %vec.ind282, %broadcast.splat276
  %i.of = and <8 x i64> %step.add, %broadcast.splat276
  %i.og = shl <8 x i64> %i.oe, splat (i64 4)
  %i.oh = shl <8 x i64> %i.of, splat (i64 4)
  %wide.gep291.a = getelementptr inbounds nuw i8, ptr %i.o, <8 x i64> %i.og ; 4 uses
  %wide.gep292 = getelementptr inbounds nuw i8, ptr %i.o, <8 x i64> %i.oh ; 4 uses
  %wide.masked.gather293.a = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep291.a, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !18, !alias.scope !1073, !noalias !1055 ; 2 uses
  %wide.masked.gather294 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep292, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !18, !alias.scope !1073, !noalias !1055 ; 2 uses
  %i.oi = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi283.a, <8 x float> %wide.masked.gather293.a) ; 2 uses
  %i.oj = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi284.a, <8 x float> %wide.masked.gather294) ; 2 uses
  %wide.gep295.a = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep291.a, i64 4
  %wide.gep296 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep292, i64 4
  %wide.masked.gather297.a = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep295.a, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !18, !alias.scope !1073, !noalias !1055 ; 2 uses
  %wide.masked.gather298 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep296, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !18, !alias.scope !1073, !noalias !1055 ; 2 uses
  %i.ok = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi285.a, <8 x float> %wide.masked.gather297.a) ; 2 uses
  %i.ol = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi286.a, <8 x float> %wide.masked.gather298) ; 2 uses
  %wide.gep299.a = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep291.a, i64 8
  %wide.gep300 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep292, i64 8
  %wide.masked.gather301.a = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep299.a, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !18, !alias.scope !1073, !noalias !1055 ; 2 uses
  %wide.masked.gather302 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep300, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !18, !alias.scope !1073, !noalias !1055 ; 2 uses
  %i.om = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi287.a, <8 x float> %wide.masked.gather301.a) ; 2 uses
  %i.on = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi288.a, <8 x float> %wide.masked.gather302) ; 2 uses
  %wide.gep303.a = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep291.a, i64 12
  %wide.gep304 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep292, i64 12
  %wide.masked.gather305.a = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep303.a, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !18, !alias.scope !1073, !noalias !1055 ; 2 uses
  %wide.masked.gather306 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep304, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !18, !alias.scope !1073, !noalias !1055 ; 2 uses
  %i.oo = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi289.a, <8 x float> %wide.masked.gather305.a) ; 2 uses
  %i.op = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi290, <8 x float> %wide.masked.gather306) ; 2 uses
  %index.next307 = add nuw i64 %index281, 16      ; 2 uses
  %i.oq = fcmp uno <8 x float> %wide.masked.gather293.a, %wide.masked.gather297.a
  %i.or = fcmp uno <8 x float> %wide.masked.gather294, %wide.masked.gather298
  %i.os = fcmp uno <8 x float> %wide.masked.gather305.a, %wide.masked.gather301.a
  %i.ot = or <8 x i1> %i.oq, %i.os
  %i.ou = fcmp uno <8 x float> %wide.masked.gather306, %wide.masked.gather302
  %i.ov = or <8 x i1> %i.or, %i.ou
  %i.ow = freeze <8 x i1> %i.ot
  %i.ox = freeze <8 x i1> %i.ov
  %i.oy = or <8 x i1> %i.ow, %i.ox
  %i.oz = bitcast <8 x i1> %i.oy to i8
  %i.pa = icmp ne i8 %i.oz, 0                     ; 11 uses
  %i.pb = icmp eq i64 %index.next307, %n.vec274
  %i.pc = or i1 %i.pa, %i.pb
  %vec.ind.next308 = add nuw nsw <8 x i64> %vec.ind282, splat (i64 16)
  br i1 %i.pc, label %middle.block309, label %vector.body280, !llvm.loop !1076

middle.block309:                                  ; preds = %vector.body280
  %i.pd = select i1 %i.pa, <8 x float> %vec.phi283.a, <8 x float> %i.oi
  %i.pe = select i1 %i.pa, <8 x float> %vec.phi284.a, <8 x float> %i.oj
  %i.pf = select i1 %i.pa, <8 x float> %vec.phi285.a, <8 x float> %i.ok
  %i.pg = select i1 %i.pa, <8 x float> %vec.phi286.a, <8 x float> %i.ol
  %i.ph = select i1 %i.pa, <8 x float> %vec.phi287.a, <8 x float> %i.om
  %i.pi = select i1 %i.pa, <8 x float> %vec.phi288.a, <8 x float> %i.on
  %i.pj = select i1 %i.pa, <8 x float> %vec.phi289.a, <8 x float> %i.oo
  %i.pk = select i1 %i.pa, <8 x float> %vec.phi290, <8 x float> %i.op
  %i.pl = select i1 %i.pa, i64 %index281, i64 %n.vec274
  %rdx.minmax = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.pd, <8 x float> %i.pe)
  %i.pm = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fmax.v8f32(<8 x float> %rdx.minmax)
  %i.pn = add i64 %.077.reass.reass.i.reass.reass.i.reass.reass.reass, %i.pl
  %rdx.minmax310.a = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.pf, <8 x float> %i.pg)
  %i.po = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fmax.v8f32(<8 x float> %rdx.minmax310.a)
  %rdx.minmax311.a = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.ph, <8 x float> %i.pi)
  %i.pp = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fmax.v8f32(<8 x float> %rdx.minmax311.a)
  %rdx.minmax312 = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.pj, <8 x float> %i.pk)
  %i.pq = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fmax.v8f32(<8 x float> %rdx.minmax312)
  %cmp.n313 = icmp ne i64 %i.nx, %n.vec274
  %.not354 = or i1 %cmp.n313, %i.pa
  %i.pr = insertelement <4 x float> poison, float %i.pm, i64 0
  %i.ps = insertelement <4 x float> %i.pr, float %i.po, i64 1
  %i.pt = insertelement <4 x float> %i.ps, float %i.pp, i64 2
  %i.pu = insertelement <4 x float> %i.pt, float %i.pq, i64 3 ; 3 uses
  br i1 %.not354, label %.lr.ph79.i.i.preheader363, label %.loopexit.i97.i

.lr.ph79.i.i.preheader363:                        ; preds = %.lr.ph79.i.i.preheader, %middle.block309
  %.078.i.i.ph = phi i64 [ %.077.reass.reass.i.reass.reass.i.reass.reass.reass, %.lr.ph79.i.i.preheader ], [ %i.pn, %middle.block309 ]
  %.ph = phi <4 x float> [ splat (float f0xFF7FFFFF), %.lr.ph79.i.i.preheader ], [ %i.pu, %middle.block309 ]
  br label %.lr.ph79.i.i

.lr.ph79.i.i:                                     ; preds = %.lr.ph79.i.i.preheader363, %.lr.ph79.i.i
  %.078.i.i = phi i64 [ %.0.i109.i, %.lr.ph79.i.i ], [ %.078.i.i.ph, %.lr.ph79.i.i.preheader363 ] ; 2 uses
  %i.pv = phi <4 x float> [ %i.pz, %.lr.ph79.i.i ], [ %.ph, %.lr.ph79.i.i.preheader363 ]
  %i.pw = and i64 %.078.i.i, %i.fj
  %.idx58.i108.i = shl i64 %i.pw, 4
  %i.px = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx58.i108.i
  %i.py = load <4 x float>, ptr %i.px, align 16, !tbaa !18, !alias.scope !1073, !noalias !1055
  %i.pz = tail call reassoc nsz arcp contract afn <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.pv, <4 x float> %i.py) ; 3 uses
  %.0.i109.i = add nuw nsw i64 %.078.i.i, 1       ; 2 uses
  %exitcond113.not.i.i = icmp eq i64 %.0.i109.i, %umin.i89.i
  br i1 %exitcond113.not.i.i, label %.loopexit.i97.i, label %.lr.ph79.i.i, !llvm.loop !1077

.loopexit.i97.i:                                  ; preds = %.lr.ph79.i.i, %middle.block309, %bb.l, %.lr.ph90.i.i
  %i.qa = phi <4 x float> [ %i.nu, %.lr.ph90.i.i ], [ splat (float f0xFF7FFFFF), %bb.l ], [ %i.pu, %middle.block309 ], [ %i.pz, %.lr.ph79.i.i ] ; 2 uses
  %i.qb = phi <4 x float> [ %i.nv, %.lr.ph90.i.i ], [ splat (float f0xFF7FFFFF), %bb.l ], [ %i.pu, %middle.block309 ], [ %i.pz, %.lr.ph79.i.i ]
  %i.qc = icmp samesign ult i64 %.pre.i94.i, %i.fn
  br i1 %i.qc, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.loopexit.i97.i
  %i.qd = and i64 %.pre.i94.i, %i.fj
  %.idx.i107.i = shl nuw nsw i64 %i.qd, 4
  %i.qe = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx.i107.i
  %i.qf = mul i64 %.pre.i94.i, %2
  %i.qg = getelementptr inbounds nuw [4 x i8], ptr %i.mo, i64 %i.qf ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1078)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.qe, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.qg, i64 16, i1 false), !tbaa !18, !alias.scope !1081
  %i.qh = load <4 x float>, ptr %i.qg, align 4, !tbaa !18, !alias.scope !1083, !noalias !1084
  %i.qi = tail call reassoc nsz arcp contract afn <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.qa, <4 x float> %i.qh) ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.loopexit.i97.i
  %i.qj = phi <4 x float> [ %i.qi, %bb.m ], [ %i.qb, %.loopexit.i97.i ]
  %i.qk = phi <4 x float> [ %i.qi, %bb.m ], [ %i.qa, %.loopexit.i97.i ]
  %i.ql = add nuw nsw i64 %.05189.i.i, 1          ; 2 uses
  %indvars.iv.next.i106.i = add nuw nsw i64 %indvars.iv.i88.i, 1
  %exitcond114.not.i.i = icmp eq i64 %i.ql, %i.fn
  br i1 %exitcond114.not.i.i, label %_ZL13_box_max_vertILm4EEvjPfS0_mjm.exit.i, label %.lr.ph90.i.i, !llvm.loop !1085

_ZL13_box_max_vertILm4EEvjPfS0_mjm.exit.i:        ; preds = %bb.n, %.preheader.i80.i
  %i.qm = add nuw i64 %.0183.i, 4                 ; 3 uses
  %i.qn = icmp ult i64 %i.qm, %i.fg
  br i1 %i.qn, label %bb.k, label %.preheader.i, !llvm.loop !1086

bb.o:                                             ; preds = %_ZL13_box_max_vertILm1EEvjPfS0_mjm.exit.i, %.lr.ph188.i
  %.1187.i = phi i64 [ %.0.lcssa.i, %.lr.ph188.i ], [ %i.uf, %_ZL13_box_max_vertILm1EEvjPfS0_mjm.exit.i ] ; 2 uses
  %i.qo = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.1187.i ; 13 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1087)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1090)
  br i1 %.not71.i.i, label %.preheader.i113.i, label %.lr.ph.i110.i.preheader

.lr.ph.i110.i.preheader:                          ; preds = %bb.o
  br i1 %i.mn, label %.lr.ph.i110.i.epil.preheader, label %.lr.ph.i110.i

.preheader.i113.i.loopexit.unr-lcssa:             ; preds = %.lr.ph.i110.i
  br i1 %lcmp.mod433.not, label %.preheader.i113.i, label %.lr.ph.i110.i.epil.preheader

.lr.ph.i110.i.epil.preheader:                     ; preds = %.preheader.i113.i.loopexit.unr-lcssa, %.lr.ph.i110.i.preheader
  %.05262.i111.i.epil.init = phi i64 [ 0, %.lr.ph.i110.i.preheader ], [ %i.sm, %.preheader.i113.i.loopexit.unr-lcssa ]
  %.sroa.0.161.i.i.epil.init = phi float [ f0xFF7FFFFF, %.lr.ph.i110.i.preheader ], [ %i.sl, %.preheader.i113.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod435)
  br label %.lr.ph.i110.i.epil

.lr.ph.i110.i.epil:                               ; preds = %.lr.ph.i110.i.epil, %.lr.ph.i110.i.epil.preheader
  %.05262.i111.i.epil = phi i64 [ %i.qy, %.lr.ph.i110.i.epil ], [ %.05262.i111.i.epil.init, %.lr.ph.i110.i.epil.preheader ] ; 4 uses
  %.sroa.0.161.i.i.epil = phi float [ %i.qx, %.lr.ph.i110.i.epil ], [ %.sroa.0.161.i.i.epil.init, %.lr.ph.i110.i.epil.preheader ]
  %epil.iter432 = phi i64 [ %epil.iter432.next, %.lr.ph.i110.i.epil ], [ 0, %.lr.ph.i110.i.epil.preheader ]
  %i.qp = add nuw nsw i64 %.05262.i111.i.epil, 24
  %i.qq = mul i64 %i.qp, %2
  %i.qr = getelementptr inbounds nuw [4 x i8], ptr %i.qo, i64 %i.qq
  tail call void @llvm.prefetch.p0(ptr %i.qr, i32 0, i32 0, i32 1), !noalias !1087
  %i.qs = and i64 %.05262.i111.i.epil, %i.mh
  %i.qt = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.qs
  %i.qu = mul i64 %.05262.i111.i.epil, %2
  %i.qv = getelementptr inbounds nuw [4 x i8], ptr %i.qo, i64 %i.qu
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1092)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1095)
  %i.qw = load float, ptr %i.qv, align 4, !tbaa !18, !alias.scope !1097, !noalias !1098 ; 2 uses
  store float %i.qw, ptr %i.qt, align 4, !tbaa !18, !alias.scope !1098, !noalias !1097
  %i.qx = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %.sroa.0.161.i.i.epil, float %i.qw) ; 2 uses
  %i.qy = add nuw nsw i64 %.05262.i111.i.epil, 1
  %epil.iter432.next = add i64 %epil.iter432, 1   ; 2 uses
  %epil.iter432.cmp.not = icmp eq i64 %epil.iter432.next, %xtraiter431
  br i1 %epil.iter432.cmp.not, label %.preheader.i113.i, label %.lr.ph.i110.i.epil, !llvm.loop !1099

.preheader.i113.i:                                ; preds = %.preheader.i113.i.loopexit.unr-lcssa, %.lr.ph.i110.i.epil, %bb.o
  %.sroa.0.1.lcssa.i.i = phi float [ f0xFF7FFFFF, %bb.o ], [ %i.sl, %.preheader.i113.i.loopexit.unr-lcssa ], [ %i.qx, %.lr.ph.i110.i.epil ]
  br i1 %.not72.i.i, label %_ZL13_box_max_vertILm1EEvjPfS0_mjm.exit.i, label %.lr.ph70.i.i

.lr.ph.i110.i:                                    ; preds = %.lr.ph.i110.i.preheader, %.lr.ph.i110.i
  %.05262.i111.i = phi i64 [ %i.sm, %.lr.ph.i110.i ], [ 0, %.lr.ph.i110.i.preheader ] ; 10 uses
  %.sroa.0.161.i.i = phi float [ %i.sl, %.lr.ph.i110.i ], [ f0xFF7FFFFF, %.lr.ph.i110.i.preheader ]
  %niter437 = phi i64 [ %niter437.next.3, %.lr.ph.i110.i ], [ 0, %.lr.ph.i110.i.preheader ]
  %i.qz = add nuw nsw i64 %.05262.i111.i, 24
  %i.ra = mul i64 %i.qz, %2
  %i.rb = getelementptr inbounds nuw [4 x i8], ptr %i.qo, i64 %i.ra
  tail call void @llvm.prefetch.p0(ptr %i.rb, i32 0, i32 0, i32 1), !noalias !1087
  %i.rc = and i64 %.05262.i111.i, %i.mh
  %i.rd = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.rc
  %i.re = mul i64 %.05262.i111.i, %2
  %i.rf = getelementptr inbounds nuw [4 x i8], ptr %i.qo, i64 %i.re
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1092)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1095)
  %i.rg = load float, ptr %i.rf, align 4, !tbaa !18, !alias.scope !1097, !noalias !1098 ; 2 uses
  store float %i.rg, ptr %i.rd, align 16, !tbaa !18, !alias.scope !1098, !noalias !1097
  %i.rh = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %.sroa.0.161.i.i, float %i.rg)
  %i.ri = or disjoint i64 %.05262.i111.i, 1       ; 2 uses
  %i.rj = add nuw nsw i64 %.05262.i111.i, 25
  %i.rk = mul i64 %i.rj, %2
  %i.rl = getelementptr inbounds nuw [4 x i8], ptr %i.qo, i64 %i.rk
  tail call void @llvm.prefetch.p0(ptr %i.rl, i32 0, i32 0, i32 1), !noalias !1087
  %i.rm = and i64 %i.ri, %i.mh
  %i.rn = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.rm
  %i.ro = mul i64 %i.ri, %2
  %i.rp = getelementptr inbounds nuw [4 x i8], ptr %i.qo, i64 %i.ro
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1100)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1102)
  %i.rq = load float, ptr %i.rp, align 4, !tbaa !18, !alias.scope !1104, !noalias !1105 ; 2 uses
  store float %i.rq, ptr %i.rn, align 4, !tbaa !18, !alias.scope !1105, !noalias !1104
  %i.rr = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.rh, float %i.rq)
  %i.rs = or disjoint i64 %.05262.i111.i, 2       ; 2 uses
  %i.rt = add nuw nsw i64 %.05262.i111.i, 26
  %i.ru = mul i64 %i.rt, %2
  %i.rv = getelementptr inbounds nuw [4 x i8], ptr %i.qo, i64 %i.ru
  tail call void @llvm.prefetch.p0(ptr %i.rv, i32 0, i32 0, i32 1), !noalias !1087
  %i.rw = and i64 %i.rs, %i.mh
  %i.rx = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.rw
  %i.ry = mul i64 %i.rs, %2
  %i.rz = getelementptr inbounds nuw [4 x i8], ptr %i.qo, i64 %i.ry
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1106)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1108)
  %i.sa = load float, ptr %i.rz, align 4, !tbaa !18, !alias.scope !1110, !noalias !1111 ; 2 uses
  store float %i.sa, ptr %i.rx, align 8, !tbaa !18, !alias.scope !1111, !noalias !1110
  %i.sb = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.rr, float %i.sa)
  %i.sc = or disjoint i64 %.05262.i111.i, 3       ; 2 uses
  %i.sd = add nuw nsw i64 %.05262.i111.i, 27
  %i.se = mul i64 %i.sd, %2
  %i.sf = getelementptr inbounds nuw [4 x i8], ptr %i.qo, i64 %i.se
  tail call void @llvm.prefetch.p0(ptr %i.sf, i32 0, i32 0, i32 1), !noalias !1087
  %i.sg = and i64 %i.sc, %i.mh
  %i.sh = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.sg
  %i.si = mul i64 %i.sc, %2
  %i.sj = getelementptr inbounds nuw [4 x i8], ptr %i.qo, i64 %i.si
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1112)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1114)
  %i.sk = load float, ptr %i.sj, align 4, !tbaa !18, !alias.scope !1116, !noalias !1117 ; 2 uses
  store float %i.sk, ptr %i.sh, align 4, !tbaa !18, !alias.scope !1117, !noalias !1116
  %i.sl = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.sb, float %i.sk) ; 3 uses
  %i.sm = add nuw nsw i64 %.05262.i111.i, 4       ; 2 uses
  %niter437.next.3 = add i64 %niter437, 4         ; 2 uses
  %niter437.ncmp.3 = icmp eq i64 %niter437.next.3, %unroll_iter436
  br i1 %niter437.ncmp.3, label %.preheader.i113.i.loopexit.unr-lcssa, label %.lr.ph.i110.i, !llvm.loop !1118

.lr.ph70.i.i:                                     ; preds = %.preheader.i113.i, %bb.r
  %indvars.iv.i114.i = phi i64 [ %indvars.iv.next.i121.i, %bb.r ], [ %i.mm, %.preheader.i113.i ] ; 3 uses
  %.05169.i.i = phi i64 [ %i.ue, %bb.r ], [ 0, %.preheader.i113.i ] ; 7 uses
  %.sroa.0.268.i.i = phi float [ %.sroa.0.5.i.i, %bb.r ], [ %.sroa.0.1.lcssa.i.i, %.preheader.i113.i ] ; 2 uses
  %umin319 = tail call i64 @llvm.umin.i64(i64 %indvars.iv.i114.i, i64 %i.ml)
  %i.sn = xor i64 %.05169.i.i, -1
  %7 = add nsw i64 %i.c, %i.sn
  %i.so = add i64 %umin319, %7                    ; 3 uses
  %umin.i115.i = tail call i64 @llvm.umin.i64(i64 %indvars.iv.i114.i, i64 %i.ml)
  %i.sp = add nuw nsw i64 %.05169.i.i, 24
  %i.sq = mul i64 %i.sp, %2
  %i.sr = getelementptr inbounds nuw [4 x i8], ptr %i.qo, i64 %i.sq
  tail call void @llvm.prefetch.p0(ptr %i.sr, i32 0, i32 0, i32 1), !noalias !1087
  %i.ss = mul i64 %.05169.i.i, %2
  %i.st = getelementptr inbounds nuw [4 x i8], ptr %i.qo, i64 %i.ss
  store float %.sroa.0.268.i.i, ptr %i.st, align 4, !tbaa !18, !alias.scope !1119, !noalias !1087
  %.not.i116.i = icmp samesign ult i64 %.05169.i.i, %i.c
  %.pre.i117.i = add nuw nsw i64 %.05169.i.i, %i.mm ; 4 uses
  br i1 %.not.i116.i, label %.loopexit.i120.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph70.i.i
  %..i118.i = tail call i64 @llvm.umin.i64(i64 %.pre.i117.i, i64 %i.ml)
  %.063.reass.reass.i.reass.reass.i.reass.reass.reass = add i64 %.05169.i.i, %invariant.op483 ; 4 uses
  %i.su = icmp samesign ult i64 %.063.reass.reass.i.reass.reass.i.reass.reass.reass, %..i118.i
  br i1 %i.su, label %.lr.ph66.i.i.preheader, label %.loopexit.i120.i

.lr.ph66.i.i.preheader:                           ; preds = %bb.p
  %min.iters.check321 = icmp ult i64 %i.so, 32
  br i1 %min.iters.check321, label %.lr.ph66.i.i.preheader356, label %vector.ph322

vector.ph322:                                     ; preds = %.lr.ph66.i.i.preheader
  %n.vec323 = and i64 %i.so, -32                  ; 3 uses
  %broadcast.splatinsert326 = insertelement <8 x i64> poison, i64 %.063.reass.reass.i.reass.reass.i.reass.reass.reass, i64 0
  %broadcast.splat327 = shufflevector <8 x i64> %broadcast.splatinsert326, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction328 = add nuw nsw <8 x i64> %broadcast.splat327, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  br label %vector.body329

vector.body329:                                   ; preds = %vector.body329, %vector.ph322
  %index330 = phi i64 [ 0, %vector.ph322 ], [ %index.next345, %vector.body329 ] ; 2 uses
  %vec.ind331 = phi <8 x i64> [ %induction328, %vector.ph322 ], [ %vec.ind.next346, %vector.body329 ] ; 5 uses
  %vec.phi332.a = phi <8 x float> [ splat (float f0xFF7FFFFF), %vector.ph322 ], [ %i.sz, %vector.body329 ] ; 2 uses
  %vec.phi333.a = phi <8 x float> [ splat (float f0xFF7FFFFF), %vector.ph322 ], [ %i.ta, %vector.body329 ] ; 2 uses
  %vec.phi334 = phi <8 x float> [ splat (float f0xFF7FFFFF), %vector.ph322 ], [ %i.tb, %vector.body329 ] ; 2 uses
  %vec.phi335 = phi <8 x float> [ splat (float f0xFF7FFFFF), %vector.ph322 ], [ %i.tc, %vector.body329 ] ; 2 uses
  %step.add336 = add nuw nsw <8 x i64> %vec.ind331, splat (i64 8)
  %step.add.2 = add nuw nsw <8 x i64> %vec.ind331, splat (i64 16)
  %step.add.3 = add nuw nsw <8 x i64> %vec.ind331, splat (i64 24)
  %i.sv = and <8 x i64> %vec.ind331, %broadcast.splat325.a
  %i.sw = and <8 x i64> %step.add336, %broadcast.splat325.a
  %i.sx = and <8 x i64> %step.add.2, %broadcast.splat325.a
  %i.sy = and <8 x i64> %step.add.3, %broadcast.splat325.a
  %wide.gep337.a = getelementptr inbounds nuw [4 x i8], ptr %i.o, <8 x i64> %i.sv
  %wide.gep338.a = getelementptr inbounds nuw [4 x i8], ptr %i.o, <8 x i64> %i.sw
  %wide.gep339 = getelementptr inbounds nuw [4 x i8], ptr %i.o, <8 x i64> %i.sx
  %wide.gep340 = getelementptr inbounds nuw [4 x i8], ptr %i.o, <8 x i64> %i.sy
  %wide.masked.gather341.a = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep337.a, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !18, !alias.scope !1122, !noalias !1090 ; 2 uses
  %wide.masked.gather342.a = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep338.a, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !18, !alias.scope !1122, !noalias !1090 ; 2 uses
  %wide.masked.gather343 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep339, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !18, !alias.scope !1122, !noalias !1090 ; 2 uses
  %wide.masked.gather344 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep340, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !18, !alias.scope !1122, !noalias !1090 ; 2 uses
  %i.sz = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi332.a, <8 x float> %wide.masked.gather341.a) ; 2 uses
  %i.ta = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi333.a, <8 x float> %wide.masked.gather342.a) ; 2 uses
  %i.tb = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi334, <8 x float> %wide.masked.gather343) ; 2 uses
  %i.tc = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi335, <8 x float> %wide.masked.gather344) ; 2 uses
  %index.next345 = add nuw i64 %index330, 32      ; 2 uses
  %i.td = fcmp uno <8 x float> %wide.masked.gather341.a, %wide.masked.gather342.a
  %i.te = fcmp uno <8 x float> %wide.masked.gather343, %wide.masked.gather344
  %i.tf = freeze <8 x i1> %i.td
  %i.tg = freeze <8 x i1> %i.te
  %i.th = or <8 x i1> %i.tf, %i.tg
  %i.ti = bitcast <8 x i1> %i.th to i8
  %i.tj = icmp ne i8 %i.ti, 0                     ; 7 uses
  %i.tk = icmp eq i64 %index.next345, %n.vec323
  %i.tl = or i1 %i.tj, %i.tk
  %vec.ind.next346 = add nuw nsw <8 x i64> %vec.ind331, splat (i64 32)
  br i1 %i.tl, label %middle.block347, label %vector.body329, !llvm.loop !1125

middle.block347:                                  ; preds = %vector.body329
  %i.tm = select i1 %i.tj, <8 x float> %vec.phi332.a, <8 x float> %i.sz
  %i.tn = select i1 %i.tj, <8 x float> %vec.phi333.a, <8 x float> %i.ta
  %i.to = select i1 %i.tj, <8 x float> %vec.phi334, <8 x float> %i.tb
  %i.tp = select i1 %i.tj, <8 x float> %vec.phi335, <8 x float> %i.tc
  %i.tq = select i1 %i.tj, i64 %index330, i64 %n.vec323
  %rdx.minmax348.a = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.tm, <8 x float> %i.tn)
  %rdx.minmax349 = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %rdx.minmax348.a, <8 x float> %i.to)
  %rdx.minmax350 = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %rdx.minmax349, <8 x float> %i.tp)
  %i.tr = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fmax.v8f32(<8 x float> %rdx.minmax350) ; 2 uses
  %i.ts = add i64 %.063.reass.reass.i.reass.reass.i.reass.reass.reass, %i.tq
  %cmp.n351 = icmp ne i64 %i.so, %n.vec323
  %.not355 = or i1 %cmp.n351, %i.tj
  br i1 %.not355, label %.lr.ph66.i.i.preheader356, label %.loopexit.i120.i

.lr.ph66.i.i.preheader356:                        ; preds = %.lr.ph66.i.i.preheader, %middle.block347
  %.065.i.i.ph = phi i64 [ %.063.reass.reass.i.reass.reass.i.reass.reass.reass, %.lr.ph66.i.i.preheader ], [ %i.ts, %middle.block347 ]
  %.sroa.0.364.i.i.ph = phi float [ f0xFF7FFFFF, %.lr.ph66.i.i.preheader ], [ %i.tr, %middle.block347 ]
  br label %.lr.ph66.i.i

.lr.ph66.i.i:                                     ; preds = %.lr.ph66.i.i.preheader356, %.lr.ph66.i.i
  %.065.i.i = phi i64 [ %.0.i122.i, %.lr.ph66.i.i ], [ %.065.i.i.ph, %.lr.ph66.i.i.preheader356 ] ; 2 uses
  %.sroa.0.364.i.i = phi float [ %i.tw, %.lr.ph66.i.i ], [ %.sroa.0.364.i.i.ph, %.lr.ph66.i.i.preheader356 ]
  %i.tt = and i64 %.065.i.i, %i.mh
  %i.tu = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.tt
  %i.tv = load float, ptr %i.tu, align 4, !tbaa !18, !alias.scope !1122, !noalias !1090
  %i.tw = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %.sroa.0.364.i.i, float %i.tv) ; 2 uses
  %.0.i122.i = add nuw nsw i64 %.065.i.i, 1       ; 2 uses
  %exitcond74.not.i.i = icmp eq i64 %.0.i122.i, %umin.i115.i
  br i1 %exitcond74.not.i.i, label %.loopexit.i120.i, label %.lr.ph66.i.i, !llvm.loop !1126

.loopexit.i120.i:                                 ; preds = %.lr.ph66.i.i, %middle.block347, %bb.p, %.lr.ph70.i.i
  %.sroa.0.4.i.i = phi nsz float [ %.sroa.0.268.i.i, %.lr.ph70.i.i ], [ f0xFF7FFFFF, %bb.p ], [ %i.tr, %middle.block347 ], [ %i.tw, %.lr.ph66.i.i ] ; 2 uses
  %i.tx = icmp samesign ult i64 %.pre.i117.i, %i.ml
  br i1 %i.tx, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.loopexit.i120.i
  %i.ty = and i64 %.pre.i117.i, %i.mh
  %i.tz = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.ty
  %i.ua = mul i64 %.pre.i117.i, %2
  %i.ub = getelementptr inbounds nuw [4 x i8], ptr %i.qo, i64 %i.ua
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1127)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1130)
  %i.uc = load float, ptr %i.ub, align 4, !tbaa !18, !alias.scope !1132, !noalias !1133 ; 2 uses
  store float %i.uc, ptr %i.tz, align 4, !tbaa !18, !alias.scope !1133, !noalias !1132
  %i.ud = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %.sroa.0.4.i.i, float %i.uc)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.loopexit.i120.i
  %.sroa.0.5.i.i = phi nsz float [ %i.ud, %bb.q ], [ %.sroa.0.4.i.i, %.loopexit.i120.i ]
  %i.ue = add nuw nsw i64 %.05169.i.i, 1          ; 2 uses
  %indvars.iv.next.i121.i = add nuw nsw i64 %indvars.iv.i114.i, 1
  %exitcond75.not.i.i = icmp eq i64 %i.ue, %i.ml
  br i1 %exitcond75.not.i.i, label %_ZL13_box_max_vertILm1EEvjPfS0_mjm.exit.i, label %.lr.ph70.i.i, !llvm.loop !1134

_ZL13_box_max_vertILm1EEvjPfS0_mjm.exit.i:        ; preds = %bb.r, %.preheader.i113.i
  %i.uf = add nuw i64 %.1187.i, 1                 ; 2 uses
  %exitcond239.not.i = icmp eq i64 %i.uf, %2
  br i1 %exitcond239.not.i, label %._crit_edge.i, label %bb.o, !llvm.loop !1135

._crit_edge.i:                                    ; preds = %_ZL13_box_max_vertILm1EEvjPfS0_mjm.exit.i, %.preheader.i
  tail call void @free(ptr noundef %i.o) #11
  br label %_ZL12_box_max_1chPfmmj.exit

bb.s:                                             ; preds = %bb.a
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 715, ptr noundef nonnull @__FUNCTION__.dt_box_max)
  unreachable

_ZL12_box_max_1chPfmmj.exit:                      ; preds = %._crit_edge.i, %_ZL25_compute_effective_heightmm.exit.i
  ret void
}

declare ptr @dt_alloc_aligned(i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg range(i32 0, 2), i32 immarg range(i32 0, 4), i32 immarg range(i32 0, 2)) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.minnum.f32(float, float) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc void @_ZL18_blur_vertical_1chILb0EEvPfmmmS0_m(ptr noalias nofree noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr noalias nofree noundef nonnull %4) unnamed_addr #2 {
bb.a:
  %.not133 = icmp eq i64 %2, 0
  br i1 %.not133, label %._crit_edge, label %.lr.ph132

.lr.ph132:                                        ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "align"(ptr %4, i64 64) ]
  %i.a = shl i64 %3, 1                            ; 2 uses
  %.not231.i = icmp eq i64 %i.a, 0                ; 3 uses
  %i.b = or disjoint i64 %i.a, 1                  ; 3 uses
  %i.c = tail call i64 @llvm.umin.i64(i64 %3, i64 %1) ; 20 uses
  %.not232.i = icmp eq i64 %i.c, 0                ; 3 uses
  %i.d = tail call i64 @llvm.usub.sat.i64(i64 %1, i64 %3) ; 9 uses
  %i.e = xor i64 %3, -1                           ; 11 uses
  %i.f = and i64 %2, -4                           ; 2 uses
  %i.g = xor i64 %3, -1
  %i.h = add i64 %1, %i.g
  %i.i = xor i64 %3, -1
  %i.j = add i64 %1, %i.i
  %xtraiter = and i64 %i.c, 3                     ; 3 uses
  %i.k = icmp ult i64 %i.c, 4
  %unroll_iter = and i64 %i.c, -4
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod243 = icmp ne i64 %xtraiter, 0
  %exitcond284.not.i53.not = icmp ugt i64 %1, %3
  %xtraiter248 = and i64 %i.c, 3                  ; 3 uses
  %i.l = icmp ult i64 %i.c, 4
  %unroll_iter255 = and i64 %i.c, -4
  %lcmp.mod252.not = icmp eq i64 %xtraiter248, 0
  %lcmp.mod254 = icmp ne i64 %xtraiter248, 0
  %exitcond169.not.i109.not = icmp ugt i64 %1, %3
  %min.iters.check149 = icmp ugt i64 %i.c, 3
  %ident.check148.not = icmp eq i64 %2, 1
  %or.cond = and i1 %min.iters.check149, %ident.check148.not
  %min.iters.check151 = icmp ult i64 %i.c, 32
  %i.m = and i64 %i.c, 28
  %n.vec153 = and i64 %i.c, -32                   ; 4 uses
  %cmp.n171 = icmp eq i64 %i.c, %n.vec153
  %min.epilog.iters.check176 = icmp eq i64 %i.m, 0
  %n.vec178 = and i64 %i.c, -4                    ; 3 uses
  %cmp.n192 = icmp eq i64 %i.c, %n.vec178
  %xtraiter264 = and i64 %i.c, 3                  ; 2 uses
  %lcmp.mod265.not = icmp eq i64 %xtraiter264, 0
  %exitcond137.not.i126.not = icmp ugt i64 %1, %3
  %ident.check.not = icmp eq i64 %2, 1
  br label %bb.b

._crit_edge:                                      ; preds = %_ZL14_blur_verticalILm16ELb0EEvPfmmmS0_.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph132, %_ZL14_blur_verticalILm16ELb0EEvPfmmmS0_.exit
  %.031131 = phi i64 [ 0, %.lr.ph132 ], [ %i.n, %_ZL14_blur_verticalILm16ELb0EEvPfmmmS0_.exit ] ; 5 uses
  %i.n = add i64 %.031131, 16                     ; 3 uses
  %.not = icmp ugt i64 %i.n, %2
  br i1 %.not, label %.preheader76, label %bb.c

.preheader76:                                     ; preds = %bb.b
  %i.o = icmp ult i64 %.031131, %i.f
  br i1 %i.o, label %.lr.ph, label %.preheader

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.031131 ; 13 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1136)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1139)
  br i1 %.not231.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.c
  %.0.lcssa.i = phi i64 [ 1, %bb.c ], [ %i.r, %.lr.ph.i ] ; 11 uses
  br i1 %.not232.i, label %.preheader100.i, label %.lr.ph107.i.preheader

.lr.ph107.i.preheader:                            ; preds = %._crit_edge.i
  br i1 %i.k, label %.lr.ph107.i.epil.preheader, label %.lr.ph107.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.0103.i = phi i64 [ %i.r, %.lr.ph.i ], [ 1, %bb.c ]
  %.082102.i = phi i64 [ %i.s, %.lr.ph.i ], [ %i.b, %bb.c ] ; 2 uses
  %i.q = shl i64 %.0103.i, 1
  %i.r = or disjoint i64 %i.q, 1                  ; 2 uses
  %i.s = lshr i64 %.082102.i, 1
  %i.t = icmp ugt i64 %.082102.i, 3
  br i1 %i.t, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !1141

.preheader100.i.loopexit.unr-lcssa:               ; preds = %.lr.ph107.i
  %i.u = shufflevector <16 x float> %i.bn, <16 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.v = shufflevector <16 x float> %i.bn, <16 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.w = shufflevector <16 x float> %i.bn, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  br i1 %lcmp.mod.not, label %.preheader100.i, label %.lr.ph107.i.epil.preheader

.lr.ph107.i.epil.preheader:                       ; preds = %.preheader100.i.loopexit.unr-lcssa, %.lr.ph107.i.preheader
  %.084106.i.epil.init = phi i64 [ 0, %.lr.ph107.i.preheader ], [ %i.bh, %.preheader100.i.loopexit.unr-lcssa ]
  %.epil.init = phi <16 x float> [ zeroinitializer, %.lr.ph107.i.preheader ], [ %i.bn, %.preheader100.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod243)
  br label %.lr.ph107.i.epil

.lr.ph107.i.epil:                                 ; preds = %.lr.ph107.i.epil, %.lr.ph107.i.epil.preheader
  %.084106.i.epil = phi i64 [ %i.y, %.lr.ph107.i.epil ], [ %.084106.i.epil.init, %.lr.ph107.i.epil.preheader ] ; 3 uses
  %i.x = phi <16 x float> [ %i.ae, %.lr.ph107.i.epil ], [ %.epil.init, %.lr.ph107.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph107.i.epil ], [ 0, %.lr.ph107.i.epil.preheader ]
  %i.y = add nuw i64 %.084106.i.epil, 1
  %i.z = and i64 %.084106.i.epil, %.0.lcssa.i
  %.idx98.i.epil = shl i64 %i.z, 6
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 %.idx98.i.epil
  %i.ab = mul i64 %.084106.i.epil, %2
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.ab ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1142)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %i.aa, ptr noundef nonnull readonly align 4 dereferenceable(64) %i.ac, i64 64, i1 false), !tbaa !18, !alias.scope !1145, !noalias !1147
  %i.ad = load <16 x float>, ptr %i.ac, align 4, !tbaa !18, !alias.scope !1149, !noalias !1150
  %i.ae = fadd reassoc nsz arcp contract afn <16 x float> %i.ad, %i.x ; 4 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader100.i.loopexit.epilog-lcssa, label %.lr.ph107.i.epil, !llvm.loop !1151

.preheader100.i.loopexit.epilog-lcssa:            ; preds = %.lr.ph107.i.epil
  %i.af = shufflevector <16 x float> %i.ae, <16 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ag = shufflevector <16 x float> %i.ae, <16 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ah = shufflevector <16 x float> %i.ae, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  br label %.preheader100.i

.preheader100.i:                                  ; preds = %.preheader100.i.loopexit.epilog-lcssa, %.preheader100.i.loopexit.unr-lcssa, %._crit_edge.i
  %i.ai = phi <8 x float> [ zeroinitializer, %._crit_edge.i ], [ %i.w, %.preheader100.i.loopexit.unr-lcssa ], [ %i.ah, %.preheader100.i.loopexit.epilog-lcssa ] ; 2 uses
  %i.aj = phi <4 x float> [ zeroinitializer, %._crit_edge.i ], [ %i.v, %.preheader100.i.loopexit.unr-lcssa ], [ %i.ag, %.preheader100.i.loopexit.epilog-lcssa ] ; 2 uses
  %i.ak = phi <4 x float> [ zeroinitializer, %._crit_edge.i ], [ %i.u, %.preheader100.i.loopexit.unr-lcssa ], [ %i.af, %.preheader100.i.loopexit.epilog-lcssa ] ; 2 uses
end_hunk_0
