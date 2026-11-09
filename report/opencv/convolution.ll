Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/convolution?download=true
inline.NumInlined: 742
inline.NumDeleted: 316
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 35
begin_hunk_0_@_ZN2cv3dnnL13packInputDataEPcPfPKiS4_iiiiiiiiiiiiiiiiiiiiiiiiiiiibb:bb.a
  %36 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %37 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %38 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %39 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %40 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %i.b = icmp slt i32 %4, %5
  br i1 %i.b, label %.lr.ph1079, label %._crit_edge1080

.lr.ph1079:                                       ; preds = %bb.a
  %i.c = mul i32 %31, %25                         ; 4 uses
  %i.d = sext i32 %26 to i64
  %i.e = getelementptr inbounds [4 x i8], ptr %1, i64 %i.d ; 5 uses
  %i.f = mul nsw i32 %23, %22                     ; 6 uses
  %i.g = mul nsw i32 %21, %20                     ; 3 uses
  %factor.op.mul1011 = mul i32 %30, %24
  %i.h = icmp sgt i32 %6, 0                       ; 10 uses
  %i.i = icmp sgt i32 %24, 0                      ; 8 uses
  %i.j = sext i32 %30 to i64                      ; 49 uses
  %i.k = shl nsw i32 %9, 3                        ; 4 uses
  %i.l = sext i32 %27 to i64                      ; 37 uses
  %i.m = sext i32 %9 to i64                       ; 10 uses
  %i.n = shl nsw i32 %9, 1                        ; 7 uses
  %i.o = sext i32 %i.n to i64                     ; 4 uses
  %i.p = mul nsw i32 %9, 3                        ; 4 uses
  %i.q = sext i32 %i.p to i64                     ; 4 uses
  %i.r = shl nsw i32 %9, 2                        ; 5 uses
  %i.s = sext i32 %i.r to i64
  %i.t = mul nsw i32 %9, 5                        ; 4 uses
  %i.u = sext i32 %i.t to i64
  %i.v = mul nsw i32 %9, 6                        ; 4 uses
  %i.w = sext i32 %i.v to i64
  %i.x = mul nsw i32 %9, 7                        ; 7 uses
  %i.y = sext i32 %i.x to i64                     ; 4 uses
  %i.z = icmp eq i32 %9, 1                        ; 4 uses
  %i.aa = icmp ne i32 %28, 2
  %i.ab = icmp eq i32 %24, 1
  %i.ac = sext i32 %i.c to i64
  %i.ad = add i32 %16, -1
  %i.ae = add i32 %i.ad, %19
  %i.af = add nsw i32 %13, -1
  %i.ag = mul nsw i32 %16, %i.af
  %i.ah = sub nsw i32 %19, %i.ag
  %i.ai = add nsw i32 %14, -1
  %i.aj = mul nsw i32 %17, %i.ai
  %i.ak = sub nsw i32 %20, %i.aj                  ; 2 uses
  %i.al = add i32 %17, -1
  %i.am = add i32 %i.al, %20                      ; 2 uses
  %i.an = add nsw i32 %15, -1
  %i.ao = mul nsw i32 %18, %i.an
  %i.ap = sub nsw i32 %21, %i.ao                  ; 6 uses
  %i.aq = icmp eq i32 %31, 4                      ; 3 uses
  %wide.trip.count.i687 = zext i32 %6 to i64      ; 17 uses
  %i.ar = add i32 %18, -1
  %i.as = add i32 %i.ar, %21                      ; 3 uses
  %factor.op.mul1020 = mul i32 %i.g, %16
  %factor.op.mul = mul i32 %21, %17               ; 2 uses
  %i.at = mul nsw i32 %31, %30
  %i.au = sext i32 %i.at to i64                   ; 15 uses
  br i1 %32, label %.lr.ph1079.split.us, label %.lr.ph1079.split

.lr.ph1079.split.us:                              ; preds = %.lr.ph1079
  br i1 %i.i, label %.lr.ph1079.split.us.split.us.split.us.preheader, label %._crit_edge1080

.lr.ph1079.split.us.split.us.split.us.preheader:  ; preds = %.lr.ph1079.split.us
  %i.av = sext i32 %4 to i64
  %i.aw = sext i32 %5 to i64                      ; 2 uses
  %i.ax = sext i32 %31 to i64
  %i.ay = add nsw i32 %24, -1                     ; 2 uses
  %xtraiter147 = and i32 %24, 3                   ; 3 uses
  %i.az = icmp ult i32 %i.ay, 3
  %unroll_iter151 = and i32 %24, 2147483644
  %lcmp.mod149.not = icmp eq i32 %xtraiter147, 0
  %lcmp.mod150 = icmp ne i32 %xtraiter147, 0
  %xtraiter153 = and i32 %24, 3                   ; 3 uses
  %i.ba = icmp ult i32 %i.ay, 3
  %unroll_iter157 = and i32 %24, 2147483644
  %lcmp.mod155.not = icmp eq i32 %xtraiter153, 0
  %lcmp.mod156 = icmp ne i32 %xtraiter153, 0
  br label %.lr.ph1079.split.us.split.us.split.us

.lr.ph1079.split.us.split.us.split.us:            ; preds = %.lr.ph1079.split.us.split.us.split.us.preheader, %..loopexit975_crit_edge.us.us.us
  %indvars.iv1171 = phi i64 [ 0, %.lr.ph1079.split.us.split.us.split.us.preheader ], [ %indvars.iv.next1172, %..loopexit975_crit_edge.us.us.us ] ; 2 uses
  %indvars.iv1169 = phi i64 [ %i.av, %.lr.ph1079.split.us.split.us.split.us.preheader ], [ %indvars.iv.next1170, %..loopexit975_crit_edge.us.us.us ] ; 3 uses
  %i.bb = trunc nuw nsw i64 %indvars.iv1171 to i32
  %i.bc = mul i32 %i.c, %i.bb
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr inbounds i8, ptr %0, i64 %i.bd ; 4 uses
  %i.bf = sub nsw i64 %i.aw, %indvars.iv1169      ; 2 uses
  %i.bg = icmp slt i64 %i.bf, %i.j
  %i.bh = getelementptr inbounds [4 x i8], ptr %i.e, i64 %indvars.iv1169 ; 4 uses
  br i1 %i.bg, label %.preheader972.us.us.us, label %.preheader974.us.us.us.preheader

.preheader974.us.us.us.preheader:                 ; preds = %.lr.ph1079.split.us.split.us.split.us
  br i1 %i.az, label %.preheader974.us.us.us.epil.preheader, label %.preheader974.us.us.us

.preheader974.us.us.us:                           ; preds = %.preheader974.us.us.us.preheader, %.preheader974.us.us.us
  %.05401070.us.us.us = phi ptr [ %i.bo, %.preheader974.us.us.us ], [ %i.bh, %.preheader974.us.us.us.preheader ] ; 2 uses
  %.09221068.us.us.us = phi ptr [ %i.bp, %.preheader974.us.us.us ], [ %i.be, %.preheader974.us.us.us.preheader ] ; 2 uses
  %niter152 = phi i32 [ %niter152.next.3, %.preheader974.us.us.us ], [ 0, %.preheader974.us.us.us.preheader ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.09221068.us.us.us, ptr align 4 %.05401070.us.us.us, i64 %i.au, i1 false)
  %i.bi = getelementptr inbounds [4 x i8], ptr %.05401070.us.us.us, i64 %i.l ; 2 uses
  %i.bj = getelementptr inbounds i8, ptr %.09221068.us.us.us, i64 %i.au ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bj, ptr align 4 %i.bi, i64 %i.au, i1 false)
  %i.bk = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %i.l ; 2 uses
  %i.bl = getelementptr inbounds i8, ptr %i.bj, i64 %i.au ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bl, ptr align 4 %i.bk, i64 %i.au, i1 false)
  %i.bm = getelementptr inbounds [4 x i8], ptr %i.bk, i64 %i.l ; 2 uses
  %i.bn = getelementptr inbounds i8, ptr %i.bl, i64 %i.au ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bn, ptr align 4 %i.bm, i64 %i.au, i1 false)
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %i.l ; 2 uses
  %i.bp = getelementptr inbounds i8, ptr %i.bn, i64 %i.au ; 2 uses
  %niter152.next.3 = add nuw nsw i32 %niter152, 4 ; 2 uses
  %niter152.ncmp.3 = icmp eq i32 %niter152.next.3, %unroll_iter151
  br i1 %niter152.ncmp.3, label %..loopexit975_crit_edge.us.us.us.loopexit67.unr-lcssa, label %.preheader974.us.us.us, !llvm.loop !292

.preheader972.us.us.us:                           ; preds = %.lr.ph1079.split.us.split.us.split.us
  %i.bq = mul nsw i64 %i.bf, %i.ax                ; 5 uses
  br i1 %i.ba, label %.epil.preheader, label %.preheader972.us.us.us.new

.preheader972.us.us.us.new:                       ; preds = %.preheader972.us.us.us, %.preheader972.us.us.us.new
  %.11074.us.us.us = phi ptr [ %i.bx, %.preheader972.us.us.us.new ], [ %i.bh, %.preheader972.us.us.us ] ; 2 uses
  %.19231072.us.us.us = phi ptr [ %i.by, %.preheader972.us.us.us.new ], [ %i.be, %.preheader972.us.us.us ] ; 2 uses
  %niter158 = phi i32 [ %niter158.next.3, %.preheader972.us.us.us.new ], [ 0, %.preheader972.us.us.us ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.19231072.us.us.us, ptr align 4 %.11074.us.us.us, i64 %i.bq, i1 false)
  %i.br = getelementptr inbounds [4 x i8], ptr %.11074.us.us.us, i64 %i.l ; 2 uses
  %i.bs = getelementptr inbounds i8, ptr %.19231072.us.us.us, i64 %i.au ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bs, ptr align 4 %i.br, i64 %i.bq, i1 false)
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.l ; 2 uses
  %i.bu = getelementptr inbounds i8, ptr %i.bs, i64 %i.au ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bu, ptr align 4 %i.bt, i64 %i.bq, i1 false)
  %i.bv = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.l ; 2 uses
  %i.bw = getelementptr inbounds i8, ptr %i.bu, i64 %i.au ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bw, ptr align 4 %i.bv, i64 %i.bq, i1 false)
  %i.bx = getelementptr inbounds [4 x i8], ptr %i.bv, i64 %i.l ; 2 uses
  %i.by = getelementptr inbounds i8, ptr %i.bw, i64 %i.au ; 2 uses
  %niter158.next.3 = add nuw nsw i32 %niter158, 4 ; 2 uses
  %niter158.ncmp.3 = icmp eq i32 %niter158.next.3, %unroll_iter157
  br i1 %niter158.ncmp.3, label %..loopexit975_crit_edge.us.us.us.loopexit.unr-lcssa, label %.preheader972.us.us.us.new, !llvm.loop !293

..loopexit975_crit_edge.us.us.us.loopexit.unr-lcssa: ; preds = %.preheader972.us.us.us.new
  br i1 %lcmp.mod155.not, label %..loopexit975_crit_edge.us.us.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %..loopexit975_crit_edge.us.us.us.loopexit.unr-lcssa, %.preheader972.us.us.us
  %.11074.us.us.us.epil.init = phi ptr [ %i.bh, %.preheader972.us.us.us ], [ %i.bx, %..loopexit975_crit_edge.us.us.us.loopexit.unr-lcssa ]
  %.19231072.us.us.us.epil.init = phi ptr [ %i.be, %.preheader972.us.us.us ], [ %i.by, %..loopexit975_crit_edge.us.us.us.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod156)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %.11074.us.us.us.epil = phi ptr [ %.11074.us.us.us.epil.init, %.epil.preheader ], [ %i.bz, %bb.b ] ; 2 uses
  %.19231072.us.us.us.epil = phi ptr [ %.19231072.us.us.us.epil.init, %.epil.preheader ], [ %i.ca, %bb.b ] ; 2 uses
  %epil.iter154 = phi i32 [ 0, %.epil.preheader ], [ %epil.iter154.next, %bb.b ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.19231072.us.us.us.epil, ptr align 4 %.11074.us.us.us.epil, i64 %i.bq, i1 false)
  %i.bz = getelementptr inbounds [4 x i8], ptr %.11074.us.us.us.epil, i64 %i.l
  %i.ca = getelementptr inbounds i8, ptr %.19231072.us.us.us.epil, i64 %i.au
  %epil.iter154.next = add i32 %epil.iter154, 1   ; 2 uses
  %epil.iter154.cmp.not = icmp eq i32 %epil.iter154.next, %xtraiter153
  br i1 %epil.iter154.cmp.not, label %..loopexit975_crit_edge.us.us.us, label %bb.b, !llvm.loop !294

..loopexit975_crit_edge.us.us.us.loopexit67.unr-lcssa: ; preds = %.preheader974.us.us.us
  br i1 %lcmp.mod149.not, label %..loopexit975_crit_edge.us.us.us, label %.preheader974.us.us.us.epil.preheader

.preheader974.us.us.us.epil.preheader:            ; preds = %..loopexit975_crit_edge.us.us.us.loopexit67.unr-lcssa, %.preheader974.us.us.us.preheader
  %.05401070.us.us.us.epil.init = phi ptr [ %i.bh, %.preheader974.us.us.us.preheader ], [ %i.bo, %..loopexit975_crit_edge.us.us.us.loopexit67.unr-lcssa ]
  %.09221068.us.us.us.epil.init = phi ptr [ %i.be, %.preheader974.us.us.us.preheader ], [ %i.bp, %..loopexit975_crit_edge.us.us.us.loopexit67.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod150)
  br label %.preheader974.us.us.us.epil

.preheader974.us.us.us.epil:                      ; preds = %.preheader974.us.us.us.epil, %.preheader974.us.us.us.epil.preheader
  %.05401070.us.us.us.epil = phi ptr [ %i.cb, %.preheader974.us.us.us.epil ], [ %.05401070.us.us.us.epil.init, %.preheader974.us.us.us.epil.preheader ] ; 2 uses
  %.09221068.us.us.us.epil = phi ptr [ %i.cc, %.preheader974.us.us.us.epil ], [ %.09221068.us.us.us.epil.init, %.preheader974.us.us.us.epil.preheader ] ; 2 uses
  %epil.iter148 = phi i32 [ %epil.iter148.next, %.preheader974.us.us.us.epil ], [ 0, %.preheader974.us.us.us.epil.preheader ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.09221068.us.us.us.epil, ptr align 4 %.05401070.us.us.us.epil, i64 %i.au, i1 false)
  %i.cb = getelementptr inbounds [4 x i8], ptr %.05401070.us.us.us.epil, i64 %i.l
  %i.cc = getelementptr inbounds i8, ptr %.09221068.us.us.us.epil, i64 %i.au
  %epil.iter148.next = add i32 %epil.iter148, 1   ; 2 uses
  %epil.iter148.cmp.not = icmp eq i32 %epil.iter148.next, %xtraiter147
  br i1 %epil.iter148.cmp.not, label %..loopexit975_crit_edge.us.us.us, label %.preheader974.us.us.us.epil, !llvm.loop !295

..loopexit975_crit_edge.us.us.us:                 ; preds = %..loopexit975_crit_edge.us.us.us.loopexit67.unr-lcssa, %.preheader974.us.us.us.epil, %..loopexit975_crit_edge.us.us.us.loopexit.unr-lcssa, %bb.b
  %indvars.iv.next1172 = add nuw nsw i64 %indvars.iv1171, 1
  %indvars.iv.next1170 = add nsw i64 %indvars.iv1169, %i.j ; 2 uses
  %i.cd = icmp slt i64 %indvars.iv.next1170, %i.aw
  br i1 %i.cd, label %.lr.ph1079.split.us.split.us.split.us, label %._crit_edge1080, !llvm.loop !296

.lr.ph1079.split:                                 ; preds = %.lr.ph1079
  %i.ce = icmp eq i32 %29, 3
  br i1 %i.ce, label %.lr.ph1079.split.split.us, label %.lr.ph1079.split.split

.lr.ph1079.split.split.us:                        ; preds = %.lr.ph1079.split
  br i1 %i.ab, label %.lr.ph1079.split.split.us.split.preheader, label %.split.us

.lr.ph1079.split.split.us.split.preheader:        ; preds = %.lr.ph1079.split.split.us
  %i.cf = sext i32 %18 to i64                     ; 11 uses
  %i.cg = sext i32 %15 to i64                     ; 6 uses
  %i.ch = sext i32 %14 to i64                     ; 3 uses
  %i.ci = sext i32 %8 to i64
  %i.cj = sext i32 %11 to i64
  %i.ck = sext i32 %21 to i64
  %i.cl = sext i32 %i.ak to i64
  %i.cm = shl nsw i64 %i.cg, 2                    ; 2 uses
  %i.cn = mul nsw i64 %i.cg, %i.ch
  %i.co = shl i64 %i.cn, 2
  %i.cp = add nsw i64 %wide.trip.count.i687, -1   ; 6 uses
  %ident.check39 = icmp ne i32 %30, 1
  %ident.check40 = icmp ne i32 %18, 1
  %i.cq = or i1 %ident.check39, %ident.check40
  %xtraiter107 = and i64 %wide.trip.count.i687, 1
  %i.cr = icmp eq i64 %i.cp, 0
  %unroll_iter111 = and i64 %wide.trip.count.i687, 2147483646
  %lcmp.mod109.not = icmp eq i64 %xtraiter107, 0
  %lcmp.mod110 = trunc i32 %6 to i1
  %xtraiter113 = and i64 %wide.trip.count.i687, 1
  %i.cs = icmp eq i64 %i.cp, 0
  %unroll_iter117 = and i64 %wide.trip.count.i687, 2147483646
  %lcmp.mod115.not = icmp eq i64 %xtraiter113, 0
  %lcmp.mod116 = trunc i32 %6 to i1
  %ident.check18 = icmp ne i32 %30, 1
  %ident.check19 = icmp ne i32 %18, 1
  %i.ct = or i1 %ident.check18, %ident.check19
  %xtraiter121 = and i64 %wide.trip.count.i687, 1
  %i.cu = icmp eq i64 %i.cp, 0
  %unroll_iter125 = and i64 %wide.trip.count.i687, 2147483646
  %lcmp.mod123.not = icmp eq i64 %xtraiter121, 0
  %lcmp.mod124 = trunc i32 %6 to i1
  %xtraiter127 = and i64 %wide.trip.count.i687, 1
  %i.cv = icmp eq i64 %i.cp, 0
  %unroll_iter131 = and i64 %wide.trip.count.i687, 2147483646
  %lcmp.mod129.not = icmp eq i64 %xtraiter127, 0
  %lcmp.mod130 = trunc i32 %6 to i1
  %ident.check = icmp ne i32 %30, 1
  %ident.check13 = icmp ne i32 %18, 1
  %i.cw = or i1 %ident.check, %ident.check13
  %xtraiter135 = and i64 %wide.trip.count.i687, 1
  %i.cx = icmp eq i64 %i.cp, 0
  %unroll_iter139 = and i64 %wide.trip.count.i687, 2147483646
  %lcmp.mod137.not = icmp eq i64 %xtraiter135, 0
  %lcmp.mod138 = trunc i32 %6 to i1
  %xtraiter141 = and i64 %wide.trip.count.i687, 1
  %i.cy = icmp eq i64 %i.cp, 0
  %unroll_iter145 = and i64 %wide.trip.count.i687, 2147483646
  %lcmp.mod143.not = icmp eq i64 %xtraiter141, 0
  %lcmp.mod144 = trunc i32 %6 to i1
  br label %.lr.ph1079.split.split.us.split

.lr.ph1079.split.split.us.split:                  ; preds = %.lr.ph1079.split.split.us.split.preheader, %.loopexit981.us
  %indvars.iv1164 = phi i64 [ 0, %.lr.ph1079.split.split.us.split.preheader ], [ %indvars.iv.next1165, %.loopexit981.us ] ; 2 uses
  %.05371077.us1081 = phi i32 [ %4, %.lr.ph1079.split.split.us.split.preheader ], [ %i.aba, %.loopexit981.us ] ; 4 uses
  %i.cz = trunc i64 %indvars.iv1164 to i32
  %i.da = mul i32 %i.c, %i.cz
  %i.db = sext i32 %i.da to i64                   ; 4 uses
  %i.dc = getelementptr inbounds i8, ptr %0, i64 %i.db ; 10 uses
  %i.dd = sub nsw i32 %5, %.05371077.us1081
  %.sroa.speculated870.us = tail call i32 @llvm.smin.i32(i32 %30, i32 %i.dd) ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.dc, i8 0, i64 %i.ac, i1 false)
  %i.de = sdiv i32 %.05371077.us1081, %i.f        ; 2 uses
  %i.df = mul nsw i32 %i.de, %i.f                 ; 0 uses
  %.recomposed = srem i32 %.05371077.us1081, %i.f ; 2 uses
  %i.dg = sdiv i32 %.recomposed, %23              ; 3 uses
  %i.dh = mul nsw i32 %i.dg, %23                  ; 0 uses
  %.recomposed175 = srem i32 %.recomposed, %23    ; 3 uses
  switch i32 %28, label %.loopexit981.us [
    i32 0, label %.preheader976.us
    i32 1, label %.preheader978.us
    i32 2, label %.preheader980.us
  ]

.preheader980.us:                                 ; preds = %.lr.ph1079.split.split.us.split
  %i.di = icmp sgt i32 %.sroa.speculated870.us, 0
  br i1 %i.di, label %.lr.ph1037.us.preheader, label %.loopexit981.us

.lr.ph1037.us.preheader:                          ; preds = %.preheader980.us
  %i.dj = add i64 %i.a, %i.db
  br label %.lr.ph1037.us

.lr.ph1037.us:                                    ; preds = %.lr.ph1037.us.preheader, %._crit_edge1032.us
  %.05471036.us = phi i32 [ %i.ma, %._crit_edge1032.us ], [ %i.de, %.lr.ph1037.us.preheader ] ; 2 uses
  %.21035.us = phi i32 [ %i.mb, %._crit_edge1032.us ], [ %i.dg, %.lr.ph1037.us.preheader ] ; 2 uses
  %.05791034.us = phi i32 [ %i.lx, %._crit_edge1032.us ], [ 0, %.lr.ph1037.us.preheader ] ; 3 uses
  %.69301033.us = phi i32 [ 0, %._crit_edge1032.us ], [ %.recomposed175, %.lr.ph1037.us.preheader ] ; 4 uses
  %i.dk = sub nsw i32 %.sroa.speculated870.us, %.05791034.us
  %i.dl = sub nsw i32 %23, %.69301033.us
  %.sroa.speculated757.us = tail call i32 @llvm.smin.i32(i32 %i.dl, i32 %i.dk) ; 3 uses
  %i.dm = add nsw i32 %.sroa.speculated757.us, %.69301033.us ; 3 uses
  %i.dn = mul nsw i32 %.05471036.us, %7
  %i.do = sub nsw i32 %i.dn, %10                  ; 5 uses
  %i.dp = mul nsw i32 %.21035.us, %8
  %i.dq = sub nsw i32 %i.dp, %11                  ; 5 uses
  %i.dr = mul nsw i32 %.69301033.us, %9
  %i.ds = sub nsw i32 %i.dr, %12                  ; 2 uses
  %i.dt = mul nsw i32 %i.do, %i.g
  %i.du = sext i32 %i.dt to i64
  %i.dv = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.du
  %i.dw = mul nsw i32 %i.dq, %21
  %i.dx = sext i32 %i.dw to i64
  %i.dy = getelementptr inbounds [4 x i8], ptr %i.dv, i64 %i.dx
  %i.dz = sext i32 %i.ds to i64
  %i.ea = getelementptr inbounds [4 x i8], ptr %i.dy, i64 %i.dz
  %i.eb = xor i32 %i.do, -1
  %i.ec = add i32 %16, %i.eb
  %i.ed = sdiv i32 %i.ec, %16
  %.sroa.speculated739.us = tail call i32 @llvm.smax.i32(i32 %i.ed, i32 0) ; 2 uses
  %i.ee = sub i32 %i.ae, %i.do
  %i.ef = sdiv i32 %i.ee, %16
  %.sroa.speculated735.us = tail call i32 @llvm.smin.i32(i32 %i.ef, i32 %13) ; 2 uses
  %i.eg = icmp sgt i32 %i.do, -1
  br i1 %i.eg, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph1037.us
  %i.eh = icmp slt i32 %i.do, %i.ah
  %i.ei = icmp sgt i32 %i.dq, -1
  %or.cond9.us = select i1 %i.eh, i1 %i.ei, i1 false
  %i.ej = icmp slt i32 %i.dq, %i.ak
  %spec.select = select i1 %or.cond9.us, i1 %i.ej, i1 false
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph1037.us
  %i.ek = phi i1 [ false, %.lr.ph1037.us ], [ %spec.select, %bb.c ]
  %i.el = icmp sgt i32 %.sroa.speculated757.us, 0
  br i1 %i.el, label %.lr.ph1031.us, label %._crit_edge1032.us

.lr.ph1031.us:                                    ; preds = %bb.d
  %i.em = sub i32 %i.am, %i.dq
  %i.en = sdiv i32 %i.em, %17
  %.sroa.speculated725.us = tail call i32 @llvm.smin.i32(i32 %i.en, i32 %14) ; 2 uses
  %i.eo = xor i32 %i.dq, -1
  %i.ep = add i32 %17, %i.eo
  %i.eq = sdiv i32 %i.ep, %17
  %.sroa.speculated729.us = tail call i32 @llvm.smax.i32(i32 %i.eq, i32 0) ; 2 uses
  %i.er = icmp slt i32 %.sroa.speculated739.us, %.sroa.speculated735.us
  %i.es = icmp slt i32 %.sroa.speculated729.us, %.sroa.speculated725.us
  %i.et = zext nneg i32 %.sroa.speculated729.us to i64 ; 2 uses
  %i.eu = zext nneg i32 %.sroa.speculated739.us to i64 ; 2 uses
  %wide.trip.count1144 = zext nneg i32 %.sroa.speculated735.us to i64
  %wide.trip.count1139 = zext nneg i32 %.sroa.speculated725.us to i64
  %i.ev = mul nsw i64 %i.ch, %i.eu
  %i.ew = add i64 %i.ev, %i.et
  %i.ex = mul i64 %i.ew, %i.cg
  %i.ey = select i1 %i.er, i1 %i.es, i1 false
  br label %bb.e

bb.e:                                             ; preds = %.loopexit959.us, %.lr.ph1031.us
  %.71029.us = phi i32 [ %.69301033.us, %.lr.ph1031.us ], [ %i.ls, %.loopexit959.us ] ; 6 uses
  %.09331028.us = phi i32 [ %.05791034.us, %.lr.ph1031.us ], [ %i.lt, %.loopexit959.us ] ; 7 uses
  %.09451027.us = phi i32 [ %i.ds, %.lr.ph1031.us ], [ %i.lv, %.loopexit959.us ] ; 9 uses
  %.09471026.us = phi ptr [ %i.ea, %.lr.ph1031.us ], [ %i.lu, %.loopexit959.us ] ; 23 uses
  %.09471026.us50 = ptrtoaddr ptr %.09471026.us to i64
  br i1 %i.ek, label %bb.f, label %.critedge628.us

bb.f:                                             ; preds = %bb.e
  %i.ez = add nsw i32 %.71029.us, 8
  %i.fa = icmp sle i32 %i.ez, %i.dm
  %i.fb = icmp sgt i32 %.09451027.us, -1          ; 2 uses
  %or.cond11.us = select i1 %i.fa, i1 %i.fb, i1 false
  %i.fc = add nsw i32 %.09451027.us, %i.k
  %.not621.us = icmp sle i32 %i.fc, %i.ap
  %or.cond.not = select i1 %or.cond11.us, i1 %.not621.us, i1 false
  br i1 %or.cond.not, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.fd = mul nsw i32 %.09331028.us, %31
  %i.fe = sext i32 %i.fd to i64
  %i.ff = getelementptr inbounds i8, ptr %i.dc, i64 %i.fe ; 4 uses
  br i1 %i.aq, label %bb.h, label %.split1084.us

bb.h:                                             ; preds = %bb.g
  br i1 %i.z, label %.preheader.i692.us, label %.preheader1.i685.us

.preheader1.i685.us:                              ; preds = %bb.h
  br i1 %i.h, label %.lr.ph.i686.us, label %_ZN2cv3dnnL9packData8ERPcRPfRiS5_S5_PKiiii.exit700.us

.lr.ph.i686.us:                                   ; preds = %.preheader1.i685.us, %.lr.ph.i686.us
  %indvars.iv.i688.us = phi i64 [ %indvars.iv.next.i690.us, %.lr.ph.i686.us ], [ 0, %.preheader1.i685.us ] ; 3 uses
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i688.us
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !39 ; 8 uses
  %i.fi = sext i32 %i.fh to i64
  %i.fj = getelementptr inbounds [4 x i8], ptr %.09471026.us, i64 %i.fi
  %i.fk = load float, ptr %i.fj, align 4, !tbaa !99
  %i.fl = add nsw i32 %i.fh, %9
  %i.fm = sext i32 %i.fl to i64
  %i.fn = getelementptr inbounds [4 x i8], ptr %.09471026.us, i64 %i.fm
  %i.fo = load float, ptr %i.fn, align 4, !tbaa !99
  %i.fp = add nsw i32 %i.fh, %i.n
  %i.fq = sext i32 %i.fp to i64
  %i.fr = getelementptr inbounds [4 x i8], ptr %.09471026.us, i64 %i.fq
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !99
  %i.ft = add nsw i32 %i.fh, %i.p
  %i.fu = sext i32 %i.ft to i64
  %i.fv = getelementptr inbounds [4 x i8], ptr %.09471026.us, i64 %i.fu
  %i.fw = load float, ptr %i.fv, align 4, !tbaa !99
  %i.fx = add nsw i32 %i.fh, %i.r
  %i.fy = sext i32 %i.fx to i64
  %i.fz = getelementptr inbounds [4 x i8], ptr %.09471026.us, i64 %i.fy
  %i.ga = load float, ptr %i.fz, align 4, !tbaa !99
  %i.gb = add nsw i32 %i.fh, %i.t
  %i.gc = sext i32 %i.gb to i64
  %i.gd = getelementptr inbounds [4 x i8], ptr %.09471026.us, i64 %i.gc
  %i.ge = load float, ptr %i.gd, align 4, !tbaa !99
  %i.gf = add nsw i32 %i.fh, %i.v
  %i.gg = sext i32 %i.gf to i64
  %i.gh = getelementptr inbounds [4 x i8], ptr %.09471026.us, i64 %i.gg
  %i.gi = load float, ptr %i.gh, align 4, !tbaa !99
  %i.gj = add nsw i32 %i.fh, %i.x
  %i.gk = sext i32 %i.gj to i64
  %i.gl = getelementptr inbounds [4 x i8], ptr %.09471026.us, i64 %i.gk
  %i.gm = load float, ptr %i.gl, align 4, !tbaa !99
  %.idx.i689.us = mul nuw nsw i64 %indvars.iv.i688.us, 96
  %i.gn = getelementptr inbounds nuw i8, ptr %i.ff, i64 %.idx.i689.us ; 8 uses
  store float %i.fk, ptr %i.gn, align 4, !tbaa !99
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 4
  store float %i.fo, ptr %i.go, align 4, !tbaa !99
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  store float %i.fs, ptr %i.gp, align 4, !tbaa !99
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gn, i64 12
  store float %i.fw, ptr %i.gq, align 4, !tbaa !99
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  store float %i.ga, ptr %i.gr, align 4, !tbaa !99
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gn, i64 20
  store float %i.ge, ptr %i.gs, align 4, !tbaa !99
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gn, i64 24
  store float %i.gi, ptr %i.gt, align 4, !tbaa !99
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gn, i64 28
  store float %i.gm, ptr %i.gu, align 4, !tbaa !99
  %indvars.iv.next.i690.us = add nuw nsw i64 %indvars.iv.i688.us, 1 ; 2 uses
  %exitcond.not.i691.us = icmp eq i64 %indvars.iv.next.i690.us, %wide.trip.count.i687
  br i1 %exitcond.not.i691.us, label %_ZN2cv3dnnL9packData8ERPcRPfRiS5_S5_PKiiii.exit700.us, label %.lr.ph.i686.us, !llvm.loop !297

.preheader.i692.us:                               ; preds = %bb.h
  br i1 %i.h, label %.lr.ph5.i695.us.preheader, label %_ZN2cv3dnnL9packData8ERPcRPfRiS5_S5_PKiiii.exit700.us

.lr.ph5.i695.us.preheader:                        ; preds = %.preheader.i692.us
  br i1 %i.cs, label %.lr.ph5.i695.us.epil.preheader, label %.lr.ph5.i695.us

.lr.ph5.i695.us:                                  ; preds = %.lr.ph5.i695.us.preheader, %.lr.ph5.i695.us
  %indvars.iv8.i696.us = phi i64 [ %indvars.iv.next9.i698.us.1, %.lr.ph5.i695.us ], [ 0, %.lr.ph5.i695.us.preheader ] ; 4 uses
  %niter118 = phi i64 [ %niter118.next.1, %.lr.ph5.i695.us ], [ 0, %.lr.ph5.i695.us.preheader ]
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv8.i696.us
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !39
  %i.gx = sext i32 %i.gw to i64
  %i.gy = getelementptr inbounds [4 x i8], ptr %.09471026.us, i64 %i.gx ; 2 uses
  %i.gz = getelementptr i8, ptr %i.gy, i64 16
  %.idx16.i697.us = mul nuw nsw i64 %indvars.iv8.i696.us, 96
  %i.ha = getelementptr inbounds nuw i8, ptr %i.ff, i64 %.idx16.i697.us ; 2 uses
  %i.hb = load <4 x float>, ptr %i.gy, align 4, !tbaa !99
  %i.hc = getelementptr inbounds nuw i8, ptr %i.ha, i64 16
  %i.hd = load <4 x float>, ptr %i.gz, align 4, !tbaa !99
  store <4 x float> %i.hb, ptr %i.ha, align 4, !tbaa !99
  store <4 x float> %i.hd, ptr %i.hc, align 4, !tbaa !99
  %indvars.iv.next9.i698.us = or disjoint i64 %indvars.iv8.i696.us, 1 ; 2 uses
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next9.i698.us
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !39
  %i.hg = sext i32 %i.hf to i64
  %i.hh = getelementptr inbounds [4 x i8], ptr %.09471026.us, i64 %i.hg ; 2 uses
  %i.hi = getelementptr i8, ptr %i.hh, i64 16
  %.idx16.i697.us.1 = mul nuw nsw i64 %indvars.iv.next9.i698.us, 96
  %i.hj = getelementptr inbounds nuw i8, ptr %i.ff, i64 %.idx16.i697.us.1 ; 2 uses
  %i.hk = load <4 x float>, ptr %i.hh, align 4, !tbaa !99
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hj, i64 16
  %i.hm = load <4 x float>, ptr %i.hi, align 4, !tbaa !99
  store <4 x float> %i.hk, ptr %i.hj, align 4, !tbaa !99
  store <4 x float> %i.hm, ptr %i.hl, align 4, !tbaa !99
  %indvars.iv.next9.i698.us.1 = add nuw nsw i64 %indvars.iv8.i696.us, 2 ; 2 uses
  %niter118.next.1 = add i64 %niter118, 2         ; 2 uses
  %niter118.ncmp.1 = icmp eq i64 %niter118.next.1, %unroll_iter117
  br i1 %niter118.ncmp.1, label %_ZN2cv3dnnL9packData8ERPcRPfRiS5_S5_PKiiii.exit700.us.loopexit.unr-lcssa, label %.lr.ph5.i695.us, !llvm.loop !298

_ZN2cv3dnnL9packData8ERPcRPfRiS5_S5_PKiiii.exit700.us.loopexit.unr-lcssa: ; preds = %.lr.ph5.i695.us
  br i1 %lcmp.mod115.not, label %_ZN2cv3dnnL9packData8ERPcRPfRiS5_S5_PKiiii.exit700.us, label %.lr.ph5.i695.us.epil.preheader

.lr.ph5.i695.us.epil.preheader:                   ; preds = %_ZN2cv3dnnL9packData8ERPcRPfRiS5_S5_PKiiii.exit700.us.loopexit.unr-lcssa, %.lr.ph5.i695.us.preheader
  %indvars.iv8.i696.us.epil.init = phi i64 [ 0, %.lr.ph5.i695.us.preheader ], [ %indvars.iv.next9.i698.us.1, %_ZN2cv3dnnL9packData8ERPcRPfRiS5_S5_PKiiii.exit700.us.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod116)
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv8.i696.us.epil.init
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !39
  %i.hp = sext i32 %i.ho to i64
  %i.hq = getelementptr inbounds [4 x i8], ptr %.09471026.us, i64 %i.hp ; 2 uses
  %i.hr = getelementptr i8, ptr %i.hq, i64 16
  %.idx16.i697.us.epil = mul nuw nsw i64 %indvars.iv8.i696.us.epil.init, 96
  %i.hs = getelementptr inbounds nuw i8, ptr %i.ff, i64 %.idx16.i697.us.epil ; 2 uses
  %i.ht = load <4 x float>, ptr %i.hq, align 4, !tbaa !99
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hs, i64 16
  %i.hv = load <4 x float>, ptr %i.hr, align 4, !tbaa !99
  store <4 x float> %i.ht, ptr %i.hs, align 4, !tbaa !99
  store <4 x float> %i.hv, ptr %i.hu, align 4, !tbaa !99
  br label %_ZN2cv3dnnL9packData8ERPcRPfRiS5_S5_PKiiii.exit700.us

_ZN2cv3dnnL9packData8ERPcRPfRiS5_S5_PKiiii.exit700.us: ; preds = %.lr.ph.i686.us, %.lr.ph5.i695.us.epil.preheader, %_ZN2cv3dnnL9packData8ERPcRPfRiS5_S5_PKiiii.exit700.us.loopexit.unr-lcssa, %.preheader.i692.us, %.preheader1.i685.us
  %i.hw = add nsw i32 %.71029.us, 7
  %i.hx = add nsw i32 %.09331028.us, 7
  %i.hy = getelementptr inbounds [4 x i8], ptr %.09471026.us, i64 %i.y
  %i.hz = add nsw i32 %.09451027.us, %i.x
  br label %.loopexit959.us

bb.i:                                             ; preds = %bb.f
  %i.ia = add nsw i32 %.71029.us, 2
  %i.ib = icmp sle i32 %i.ia, %i.dm
  %or.cond13.us = select i1 %i.ib, i1 %i.fb, i1 false
  %i.ic = add nsw i32 %.09451027.us, %i.n
  %.not622.us = icmp sle i32 %i.ic, %i.ap
  %or.cond1099.not = select i1 %or.cond13.us, i1 %.not622.us, i1 false
  br i1 %or.cond1099.not, label %bb.j, label %.critedge628.us

bb.j:                                             ; preds = %bb.i
  %i.id = mul nsw i32 %.09331028.us, %31
  %i.ie = sext i32 %i.id to i64
  %i.if = getelementptr inbounds i8, ptr %i.dc, i64 %i.ie ; 3 uses
  br i1 %i.h, label %.lr.ph.i703.us.preheader, label %_ZN2cv3dnnL9packData2ERPcRPfRiS5_S5_PKiiii.exit708.us

.lr.ph.i703.us.preheader:                         ; preds = %bb.j
  br i1 %i.cr, label %.lr.ph.i703.us.epil.preheader, label %.lr.ph.i703.us

.lr.ph.i703.us:                                   ; preds = %.lr.ph.i703.us.preheader, %.lr.ph.i703.us
  %indvars.iv.i704.us = phi i64 [ %indvars.iv.next.i706.us.1, %.lr.ph.i703.us ], [ 0, %.lr.ph.i703.us.preheader ] ; 4 uses
  %niter112 = phi i64 [ %niter112.next.1, %.lr.ph.i703.us ], [ 0, %.lr.ph.i703.us.preheader ]
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i704.us
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !39 ; 2 uses
  %i.ii = sext i32 %i.ih to i64
  %i.ij = getelementptr inbounds [4 x i8], ptr %.09471026.us, i64 %i.ii
  %i.ik = load float, ptr %i.ij, align 4, !tbaa !99
  %i.il = add nsw i32 %i.ih, %9
  %i.im = sext i32 %i.il to i64
  %i.in = getelementptr inbounds [4 x i8], ptr %.09471026.us, i64 %i.im
  %i.io = load float, ptr %i.in, align 4, !tbaa !99
  %.idx.i705.us = mul nuw nsw i64 %indvars.iv.i704.us, 96
  %i.ip = getelementptr inbounds nuw i8, ptr %i.if, i64 %.idx.i705.us ; 2 uses
  store float %i.ik, ptr %i.ip, align 4, !tbaa !99
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 4
  store float %i.io, ptr %i.iq, align 4, !tbaa !99
  %indvars.iv.next.i706.us = or disjoint i64 %indvars.iv.i704.us, 1 ; 2 uses
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next.i706.us
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !39 ; 2 uses
  %i.it = sext i32 %i.is to i64
  %i.iu = getelementptr inbounds [4 x i8], ptr %.09471026.us, i64 %i.it
  %i.iv = load float, ptr %i.iu, align 4, !tbaa !99
  %i.iw = add nsw i32 %i.is, %9
  %i.ix = sext i32 %i.iw to i64
  %i.iy = getelementptr inbounds [4 x i8], ptr %.09471026.us, i64 %i.ix
  %i.iz = load float, ptr %i.iy, align 4, !tbaa !99
  %.idx.i705.us.1 = mul nuw nsw i64 %indvars.iv.next.i706.us, 96
  %i.ja = getelementptr inbounds nuw i8, ptr %i.if, i64 %.idx.i705.us.1 ; 2 uses
  store float %i.iv, ptr %i.ja, align 4, !tbaa !99
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 4
  store float %i.iz, ptr %i.jb, align 4, !tbaa !99
  %indvars.iv.next.i706.us.1 = add nuw nsw i64 %indvars.iv.i704.us, 2 ; 2 uses
  %niter112.next.1 = add i64 %niter112, 2         ; 2 uses
  %niter112.ncmp.1 = icmp eq i64 %niter112.next.1, %unroll_iter111
  br i1 %niter112.ncmp.1, label %_ZN2cv3dnnL9packData2ERPcRPfRiS5_S5_PKiiii.exit708.us.loopexit.unr-lcssa, label %.lr.ph.i703.us, !llvm.loop !299

_ZN2cv3dnnL9packData2ERPcRPfRiS5_S5_PKiiii.exit708.us.loopexit.unr-lcssa: ; preds = %.lr.ph.i703.us
  br i1 %lcmp.mod109.not, label %_ZN2cv3dnnL9packData2ERPcRPfRiS5_S5_PKiiii.exit708.us, label %.lr.ph.i703.us.epil.preheader

.lr.ph.i703.us.epil.preheader:                    ; preds = %_ZN2cv3dnnL9packData2ERPcRPfRiS5_S5_PKiiii.exit708.us.loopexit.unr-lcssa, %.lr.ph.i703.us.preheader
  %indvars.iv.i704.us.epil.init = phi i64 [ 0, %.lr.ph.i703.us.preheader ], [ %indvars.iv.next.i706.us.1, %_ZN2cv3dnnL9packData2ERPcRPfRiS5_S5_PKiiii.exit708.us.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod110)
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i704.us.epil.init
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !39 ; 2 uses
  %i.je = sext i32 %i.jd to i64
  %i.jf = getelementptr inbounds [4 x i8], ptr %.09471026.us, i64 %i.je
  %i.jg = load float, ptr %i.jf, align 4, !tbaa !99
  %i.jh = add nsw i32 %i.jd, %9
  %i.ji = sext i32 %i.jh to i64
  %i.jj = getelementptr inbounds [4 x i8], ptr %.09471026.us, i64 %i.ji
  %i.jk = load float, ptr %i.jj, align 4, !tbaa !99
  %.idx.i705.us.epil = mul nuw nsw i64 %indvars.iv.i704.us.epil.init, 96
  %i.jl = getelementptr inbounds nuw i8, ptr %i.if, i64 %.idx.i705.us.epil ; 2 uses
  store float %i.jg, ptr %i.jl, align 4, !tbaa !99
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 4
  store float %i.jk, ptr %i.jm, align 4, !tbaa !99
  br label %_ZN2cv3dnnL9packData2ERPcRPfRiS5_S5_PKiiii.exit708.us

_ZN2cv3dnnL9packData2ERPcRPfRiS5_S5_PKiiii.exit708.us: ; preds = %.lr.ph.i703.us.epil.preheader, %_ZN2cv3dnnL9packData2ERPcRPfRiS5_S5_PKiiii.exit708.us.loopexit.unr-lcssa, %bb.j
  %i.jn = add nsw i32 %.71029.us, 1
  %i.jo = add nsw i32 %.09331028.us, 1
  %i.jp = getelementptr inbounds [4 x i8], ptr %.09471026.us, i64 %i.m
  %i.jq = add nsw i32 %.09451027.us, %9
  br label %.loopexit959.us

.critedge628.us:                                  ; preds = %bb.i, %bb.e
  %i.jr = xor i32 %.09451027.us, -1
  %i.js = add i32 %18, %i.jr
  %i.jt = sdiv i32 %i.js, %18
  %.sroa.speculated713.us = tail call i32 @llvm.smax.i32(i32 %i.jt, i32 0) ; 2 uses
  %i.ju = sub i32 %i.as, %.09451027.us
  %i.jv = sdiv i32 %i.ju, %18
  %.sroa.speculated.us = tail call i32 @llvm.smin.i32(i32 %i.jv, i32 %15) ; 2 uses
  %i.jw = sext i32 %.09331028.us to i64           ; 2 uses
  %i.jx = getelementptr inbounds [4 x i8], ptr %i.dc, i64 %i.jw ; 4 uses
  %i.jy = icmp slt i32 %.sroa.speculated713.us, %.sroa.speculated.us
  %or.cond1222 = select i1 %i.ey, i1 %i.jy, i1 false
  br i1 %or.cond1222, label %.preheader955.us.preheader, label %.loopexit959.us

.preheader955.us.preheader:                       ; preds = %.critedge628.us
  %i.jz = zext nneg i32 %.sroa.speculated713.us to i64 ; 7 uses
  %wide.trip.count1134 = zext nneg i32 %.sroa.speculated.us to i64 ; 4 uses
  %i.ka = add i64 %i.ex, %i.jz
  %i.kb = add i64 %i.ka, %i.jw
  %i.kc = shl i64 %i.kb, 2
  %i.kd = add i64 %i.kc, %i.dj
  %i.ke = sub nsw i64 %wide.trip.count1134, %i.jz ; 3 uses
  %min.iters.check54 = icmp ult i64 %i.ke, 8
  %n.vec58 = and i64 %i.ke, -8                    ; 3 uses
  %i.kf = add nsw i64 %n.vec58, %i.jz
  %cmp.n65 = icmp eq i64 %i.ke, %n.vec58
  %i.kg = add nsw i64 %wide.trip.count1134, -1
  br label %.preheader955.us

.preheader955.us:                                 ; preds = %.preheader955.us.preheader, %._crit_edge1023.us
  %indvar51 = phi i64 [ 0, %.preheader955.us.preheader ], [ %indvar.next52, %._crit_edge1023.us ] ; 2 uses
  %indvars.iv1141 = phi i64 [ %i.eu, %.preheader955.us.preheader ], [ %indvars.iv.next1142, %._crit_edge1023.us ] ; 3 uses
  %i.kh = mul i64 %i.co, %indvar51
  %i.ki = add i64 %i.kd, %i.kh
  %i.kj = trunc nuw nsw i64 %indvars.iv1141 to i32
  %factor.op.mul.reass1021.us = mul i32 %factor.op.mul1020, %i.kj
  %i.kk = mul nsw i64 %indvars.iv1141, %i.ch
  br label %.preheader.us

.preheader.us:                                    ; preds = %._crit_edge1019.us, %.preheader955.us
  %indvar48 = phi i64 [ %indvar.next49, %._crit_edge1019.us ], [ 0, %.preheader955.us ] ; 2 uses
  %indvars.iv1136 = phi i64 [ %indvars.iv.next1137, %._crit_edge1019.us ], [ %i.et, %.preheader955.us ] ; 3 uses
  %i.kl = trunc nuw nsw i64 %indvars.iv1136 to i32
  %factor.op.mul1015.reass.us = mul i32 %factor.op.mul, %i.kl
  %i.km = add nsw i32 %factor.op.mul1015.reass.us, %factor.op.mul.reass1021.us
  %i.kn = add nsw i64 %indvars.iv1136, %i.kk
  %i.ko = mul nsw i64 %i.kn, %i.cg                ; 4 uses
  %i.kp = sext i32 %i.km to i64                   ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %.09471026.us, i64 %i.kp ; 4 uses
  %brmerge = or i1 %min.iters.check54, %i.cq
  br i1 %brmerge, label %scalar.ph53.preheader, label %vector.memcheck55

vector.memcheck55:                                ; preds = %.preheader.us
  %i.kq = mul i64 %indvar48, %i.cm
  %i.kr = add i64 %i.ki, %i.kq
  %i.ks = add nsw i64 %i.kp, %i.jz
  %i.kt = shl nsw i64 %i.ks, 2
  %i.ku = add i64 %i.kt, %.09471026.us50
  %i.kv = sub i64 %i.ku, %i.kr
  %diff.check56 = icmp ugt i64 %i.kv, -32
  br i1 %diff.check56, label %scalar.ph53.preheader, label %vector.ph57

vector.ph57:                                      ; preds = %vector.memcheck55
  %invariant.gep171 = getelementptr [4 x i8], ptr %i.jx, i64 %i.ko
  br label %vector.body59

vector.body59:                                    ; preds = %vector.body59, %vector.ph57
  %index60 = phi i64 [ 0, %vector.ph57 ], [ %index.next63, %vector.body59 ] ; 2 uses
  %i.kw = add nuw i64 %index60, %i.jz             ; 2 uses
  %i.kx = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.kw ; 2 uses
  %i.ky = getelementptr i8, ptr %i.kx, i64 16
  %wide.load61 = load <4 x float>, ptr %i.kx, align 4, !tbaa !99
  %wide.load62 = load <4 x float>, ptr %i.ky, align 4, !tbaa !99
  %gep172 = getelementptr [4 x i8], ptr %invariant.gep171, i64 %i.kw ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %gep172, i64 16
  store <4 x float> %wide.load61, ptr %gep172, align 4, !tbaa !99
  store <4 x float> %wide.load62, ptr %i.kz, align 4, !tbaa !99
  %index.next63 = add nuw i64 %index60, 8         ; 2 uses
  %i.la = icmp eq i64 %index.next63, %n.vec58
  br i1 %i.la, label %middle.block64, label %vector.body59, !llvm.loop !300

middle.block64:                                   ; preds = %vector.body59
  br i1 %cmp.n65, label %._crit_edge1019.us, label %scalar.ph53.preheader

scalar.ph53.preheader:                            ; preds = %.preheader.us, %vector.memcheck55, %middle.block64
  %indvars.iv1131.ph = phi i64 [ %i.jz, %vector.memcheck55 ], [ %i.kf, %middle.block64 ], [ %i.jz, %.preheader.us ] ; 6 uses
  %i.lb = sub nsw i64 %wide.trip.count1134, %indvars.iv1131.ph
  %xtraiter105 = and i64 %i.lb, 1
  %lcmp.mod106.not = icmp eq i64 %xtraiter105, 0
  br i1 %lcmp.mod106.not, label %scalar.ph53.prol.loopexit, label %scalar.ph53.prol

scalar.ph53.prol:                                 ; preds = %scalar.ph53.preheader
  %i.lc = mul nsw i64 %indvars.iv1131.ph, %i.cf
  %gep.prol = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.lc
  %i.ld = load float, ptr %gep.prol, align 4, !tbaa !99
  %i.le = add nsw i64 %indvars.iv1131.ph, %i.ko
  %i.lf = mul nsw i64 %i.le, %i.j
  %i.lg = getelementptr inbounds [4 x i8], ptr %i.jx, i64 %i.lf
  store float %i.ld, ptr %i.lg, align 4, !tbaa !99
  %indvars.iv.next1132.prol = add nuw nsw i64 %indvars.iv1131.ph, 1
  br label %scalar.ph53.prol.loopexit

scalar.ph53.prol.loopexit:                        ; preds = %scalar.ph53.prol, %scalar.ph53.preheader
  %indvars.iv1131.unr = phi i64 [ %indvars.iv1131.ph, %scalar.ph53.preheader ], [ %indvars.iv.next1132.prol, %scalar.ph53.prol ]
  %i.lh = icmp eq i64 %indvars.iv1131.ph, %i.kg
  br i1 %i.lh, label %._crit_edge1019.us, label %scalar.ph53

scalar.ph53:                                      ; preds = %scalar.ph53.prol.loopexit, %scalar.ph53
  %indvars.iv1131 = phi i64 [ %indvars.iv.next1132.1, %scalar.ph53 ], [ %indvars.iv1131.unr, %scalar.ph53.prol.loopexit ] ; 4 uses
  %i.li = mul nsw i64 %indvars.iv1131, %i.cf
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.li
  %i.lj = load float, ptr %gep, align 4, !tbaa !99
  %i.lk = add nsw i64 %indvars.iv1131, %i.ko
  %i.ll = mul nsw i64 %i.lk, %i.j
  %i.lm = getelementptr inbounds [4 x i8], ptr %i.jx, i64 %i.ll
  store float %i.lj, ptr %i.lm, align 4, !tbaa !99
  %indvars.iv.next1132 = add nuw nsw i64 %indvars.iv1131, 1 ; 2 uses
  %i.ln = mul nsw i64 %indvars.iv.next1132, %i.cf
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.ln
  %i.lo = load float, ptr %gep.1, align 4, !tbaa !99
  %i.lp = add nsw i64 %indvars.iv.next1132, %i.ko
  %i.lq = mul nsw i64 %i.lp, %i.j
  %i.lr = getelementptr inbounds [4 x i8], ptr %i.jx, i64 %i.lq
  store float %i.lo, ptr %i.lr, align 4, !tbaa !99
  %indvars.iv.next1132.1 = add nuw nsw i64 %indvars.iv1131, 2 ; 2 uses
  %exitcond1135.not.1 = icmp eq i64 %indvars.iv.next1132.1, %wide.trip.count1134
  br i1 %exitcond1135.not.1, label %._crit_edge1019.us, label %scalar.ph53, !llvm.loop !301

._crit_edge1019.us:                               ; preds = %scalar.ph53.prol.loopexit, %scalar.ph53, %middle.block64
  %indvars.iv.next1137 = add nuw nsw i64 %indvars.iv1136, 1 ; 2 uses
  %exitcond1140.not = icmp eq i64 %indvars.iv.next1137, %wide.trip.count1139
  %indvar.next49 = add i64 %indvar48, 1
  br i1 %exitcond1140.not, label %._crit_edge1023.us, label %.preheader.us, !llvm.loop !302

._crit_edge1023.us:                               ; preds = %._crit_edge1019.us
  %indvars.iv.next1142 = add nuw nsw i64 %indvars.iv1141, 1 ; 2 uses
  %exitcond1145.not = icmp eq i64 %indvars.iv.next1142, %wide.trip.count1144
  %indvar.next52 = add i64 %indvar51, 1
  br i1 %exitcond1145.not, label %.loopexit959.us, label %.preheader955.us, !llvm.loop !303

.loopexit959.us:                                  ; preds = %._crit_edge1023.us, %.critedge628.us, %_ZN2cv3dnnL9packData2ERPcRPfRiS5_S5_PKiiii.exit708.us, %_ZN2cv3dnnL9packData8ERPcRPfRiS5_S5_PKiiii.exit700.us
  %.1948.us = phi ptr [ %i.hy, %_ZN2cv3dnnL9packData8ERPcRPfRiS5_S5_PKiiii.exit700.us ], [ %i.jp, %_ZN2cv3dnnL9packData2ERPcRPfRiS5_S5_PKiiii.exit708.us ], [ %.09471026.us, %.critedge628.us ], [ %.09471026.us, %._crit_edge1023.us ]
  %.1946.us = phi i32 [ %i.hz, %_ZN2cv3dnnL9packData8ERPcRPfRiS5_S5_PKiiii.exit700.us ], [ %i.jq, %_ZN2cv3dnnL9packData2ERPcRPfRiS5_S5_PKiiii.exit708.us ], [ %.09451027.us, %.critedge628.us ], [ %.09451027.us, %._crit_edge1023.us ]
  %.1934.us = phi i32 [ %i.hx, %_ZN2cv3dnnL9packData8ERPcRPfRiS5_S5_PKiiii.exit700.us ], [ %i.jo, %_ZN2cv3dnnL9packData2ERPcRPfRiS5_S5_PKiiii.exit708.us ], [ %.09331028.us, %.critedge628.us ], [ %.09331028.us, %._crit_edge1023.us ]
  %.8.us = phi i32 [ %i.hw, %_ZN2cv3dnnL9packData8ERPcRPfRiS5_S5_PKiiii.exit700.us ], [ %i.jn, %_ZN2cv3dnnL9packData2ERPcRPfRiS5_S5_PKiiii.exit708.us ], [ %.71029.us, %.critedge628.us ], [ %.71029.us, %._crit_edge1023.us ]
  %i.ls = add nsw i32 %.8.us, 1                   ; 2 uses
  %i.lt = add nsw i32 %.1934.us, 1
  %i.lu = getelementptr inbounds [4 x i8], ptr %.1948.us, i64 %i.m
  %i.lv = add nsw i32 %.1946.us, %9
  %i.lw = icmp slt i32 %i.ls, %i.dm
  br i1 %i.lw, label %bb.e, label %._crit_edge1032.us, !llvm.loop !304

._crit_edge1032.us:                               ; preds = %.loopexit959.us, %bb.d
  %i.lx = add nsw i32 %.sroa.speculated757.us, %.05791034.us ; 2 uses
  %i.ly = add nsw i32 %.21035.us, 1               ; 2 uses
  %i.lz = sdiv i32 %i.ly, %22
  %i.ma = add nsw i32 %i.lz, %.05471036.us
  %i.mb = srem i32 %i.ly, %22
  %i.mc = icmp slt i32 %i.lx, %.sroa.speculated870.us
  br i1 %i.mc, label %.lr.ph1037.us, label %.loopexit981.us, !llvm.loop !305

.preheader978.us:                                 ; preds = %.lr.ph1079.split.split.us.split
  %i.md = icmp sgt i32 %.sroa.speculated870.us, 0
  br i1 %i.md, label %.lr.ph1054.us.preheader, label %.loopexit981.us

.lr.ph1054.us.preheader:                          ; preds = %.preheader978.us
  %i.me = sext i32 %i.dg to i64
  %i.mf = add i64 %i.a, %i.db
  br label %.lr.ph1054.us

.lr.ph1054.us:                                    ; preds = %.lr.ph1054.us.preheader, %._crit_edge1050.us
  %indvars.iv1156 = phi i64 [ %i.me, %.lr.ph1054.us.preheader ], [ %indvars.iv.next1157, %._crit_edge1050.us ] ; 2 uses
  %.05541052.us = phi i32 [ 0, %.lr.ph1054.us.preheader ], [ %i.tw, %._crit_edge1050.us ] ; 3 uses
  %.39271051.us = phi i32 [ %.recomposed175, %.lr.ph1054.us.preheader ], [ 0, %._crit_edge1050.us ] ; 4 uses
  %i.mg = sub nsw i32 %.sroa.speculated870.us, %.05541052.us
  %i.mh = sub nsw i32 %23, %.39271051.us
  %.sroa.speculated805.us = tail call i32 @llvm.smin.i32(i32 %i.mh, i32 %i.mg) ; 3 uses
  %i.mi = add nsw i32 %.sroa.speculated805.us, %.39271051.us ; 3 uses
  %i.mj = mul nsw i64 %indvars.iv1156, %i.ci
  %i.mk = sub nsw i64 %i.mj, %i.cj                ; 4 uses
  %i.ml = icmp sgt i64 %i.mk, -1
  %i.mm = icmp slt i64 %i.mk, %i.cl
  %i.mn = select i1 %i.ml, i1 %i.mm, i1 false
  %i.mo = icmp sgt i32 %.sroa.speculated805.us, 0
  br i1 %i.mo, label %.lr.ph1049.us, label %._crit_edge1050.us

.lr.ph1049.us:                                    ; preds = %.lr.ph1054.us
  %i.mp = trunc nsw i64 %i.mk to i32              ; 2 uses
  %i.mq = sub i32 %i.am, %i.mp
  %i.mr = sdiv i32 %i.mq, %17
  %.sroa.speculated782.us = tail call i32 @llvm.smin.i32(i32 %i.mr, i32 %14) ; 2 uses
  %i.ms = xor i32 %i.mp, -1
  %i.mt = add i32 %17, %i.ms
  %i.mu = sdiv i32 %i.mt, %17
  %.sroa.speculated787.us = tail call i32 @llvm.smax.i32(i32 %i.mu, i32 0) ; 2 uses
  %i.mv = mul nsw i64 %i.mk, %i.ck
  %i.mw = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.mv
  %i.mx = mul nsw i32 %.39271051.us, %9
  %i.my = sub nsw i32 %i.mx, %12                  ; 2 uses
  %i.mz = sext i32 %i.my to i64
  %i.na = getelementptr inbounds [4 x i8], ptr %i.mw, i64 %i.mz
  %i.nb = icmp slt i32 %.sroa.speculated787.us, %.sroa.speculated782.us
  %i.nc = zext nneg i32 %.sroa.speculated787.us to i64 ; 2 uses
  %wide.trip.count1154 = zext nneg i32 %.sroa.speculated782.us to i64
  %i.nd = mul nsw i64 %i.cg, %i.nc
  br label %bb.k

bb.k:                                             ; preds = %.loopexit957.us, %.lr.ph1049.us
  %.49281047.us = phi i32 [ %.39271051.us, %.lr.ph1049.us ], [ %i.tr, %.loopexit957.us ] ; 6 uses
  %.09391046.us = phi i32 [ %i.my, %.lr.ph1049.us ], [ %i.tu, %.loopexit957.us ] ; 9 uses
  %.09411045.us = phi ptr [ %i.na, %.lr.ph1049.us ], [ %i.tt, %.loopexit957.us ] ; 23 uses
  %.09431044.us = phi i32 [ %.05541052.us, %.lr.ph1049.us ], [ %i.ts, %.loopexit957.us ] ; 7 uses
  %.09411045.us23 = ptrtoaddr ptr %.09411045.us to i64
  br i1 %i.mn, label %bb.l, label %.critedge.us

bb.l:                                             ; preds = %bb.k
  %i.ne = add nsw i32 %.49281047.us, 8
  %i.nf = icmp sle i32 %i.ne, %i.mi
  %i.ng = icmp sgt i32 %.09391046.us, -1          ; 2 uses
  %or.cond5.us = select i1 %i.nf, i1 %i.ng, i1 false
  %i.nh = add nsw i32 %.09391046.us, %i.k
  %.not623.us = icmp sle i32 %i.nh, %i.ap
  %or.cond1100.not = select i1 %or.cond5.us, i1 %.not623.us, i1 false
  br i1 %or.cond1100.not, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.ni = mul nsw i32 %.09431044.us, %31
  %i.nj = sext i32 %i.ni to i64
  %i.nk = getelementptr inbounds i8, ptr %i.dc, i64 %i.nj ; 4 uses
  br i1 %i.aq, label %bb.n, label %.split1086.us

bb.n:                                             ; preds = %bb.m
  br i1 %i.z, label %.preheader.i658.us, label %.preheader1.i651.us

.preheader1.i651.us:                              ; preds = %bb.n
  br i1 %i.h, label %.lr.ph.i652.us, label %_ZN2cv3dnnL9packData8ERPcRPfRiS5_S5_PKiiii.exit666.us

.lr.ph.i652.us:                                   ; preds = %.preheader1.i651.us, %.lr.ph.i652.us
  %indvars.iv.i654.us = phi i64 [ %indvars.iv.next.i656.us, %.lr.ph.i652.us ], [ 0, %.preheader1.i651.us ] ; 3 uses
  %i.nl = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i654.us
  %i.nm = load i32, ptr %i.nl, align 4, !tbaa !39 ; 8 uses
  %i.nn = sext i32 %i.nm to i64
  %i.no = getelementptr inbounds [4 x i8], ptr %.09411045.us, i64 %i.nn
  %i.np = load float, ptr %i.no, align 4, !tbaa !99
  %i.nq = add nsw i32 %i.nm, %9
  %i.nr = sext i32 %i.nq to i64
  %i.ns = getelementptr inbounds [4 x i8], ptr %.09411045.us, i64 %i.nr
  %i.nt = load float, ptr %i.ns, align 4, !tbaa !99
  %i.nu = add nsw i32 %i.nm, %i.n
  %i.nv = sext i32 %i.nu to i64
  %i.nw = getelementptr inbounds [4 x i8], ptr %.09411045.us, i64 %i.nv
  %i.nx = load float, ptr %i.nw, align 4, !tbaa !99
  %i.ny = add nsw i32 %i.nm, %i.p
  %i.nz = sext i32 %i.ny to i64
  %i.oa = getelementptr inbounds [4 x i8], ptr %.09411045.us, i64 %i.nz
  %i.ob = load float, ptr %i.oa, align 4, !tbaa !99
end_hunk_0
begin_hunk_1_@_ZN2cv3dnnL13packInputDataEPcPfPKiS4_iiiiiiiiiiiiiiiiiiiiiiiiiiiibb:bb.a
  store float %i.on, ptr %i.oy, align 4, !tbaa !99
  %i.oz = getelementptr inbounds nuw i8, ptr %i.os, i64 28
  store float %i.or, ptr %i.oz, align 4, !tbaa !99
  %indvars.iv.next.i656.us = add nuw nsw i64 %indvars.iv.i654.us, 1 ; 2 uses
  %exitcond.not.i657.us = icmp eq i64 %indvars.iv.next.i656.us, %wide.trip.count.i687
  br i1 %exitcond.not.i657.us, label %_ZN2cv3dnnL9packData8ERPcRPfRiS5_S5_PKiiii.exit666.us, label %.lr.ph.i652.us, !llvm.loop !297

.preheader.i658.us:                               ; preds = %bb.n
  br i1 %i.h, label %.lr.ph5.i661.us.preheader, label %_ZN2cv3dnnL9packData8ERPcRPfRiS5_S5_PKiiii.exit666.us

.lr.ph5.i661.us.preheader:                        ; preds = %.preheader.i658.us
  br i1 %i.cv, label %.lr.ph5.i661.us.epil.preheader, label %.lr.ph5.i661.us

.lr.ph5.i661.us:                                  ; preds = %.lr.ph5.i661.us.preheader, %.lr.ph5.i661.us
  %indvars.iv8.i662.us = phi i64 [ %indvars.iv.next9.i664.us.1, %.lr.ph5.i661.us ], [ 0, %.lr.ph5.i661.us.preheader ] ; 4 uses
  %niter132 = phi i64 [ %niter132.next.1, %.lr.ph5.i661.us ], [ 0, %.lr.ph5.i661.us.preheader ]
  %i.pa = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv8.i662.us
  %i.pb = load i32, ptr %i.pa, align 4, !tbaa !39
  %i.pc = sext i32 %i.pb to i64
  %i.pd = getelementptr inbounds [4 x i8], ptr %.09411045.us, i64 %i.pc ; 2 uses
  %i.pe = getelementptr i8, ptr %i.pd, i64 16
  %.idx16.i663.us = mul nuw nsw i64 %indvars.iv8.i662.us, 96
  %i.pf = getelementptr inbounds nuw i8, ptr %i.nk, i64 %.idx16.i663.us ; 2 uses
  %i.pg = load <4 x float>, ptr %i.pd, align 4, !tbaa !99
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pf, i64 16
  %i.pi = load <4 x float>, ptr %i.pe, align 4, !tbaa !99
  store <4 x float> %i.pg, ptr %i.pf, align 4, !tbaa !99
  store <4 x float> %i.pi, ptr %i.ph, align 4, !tbaa !99
  %indvars.iv.next9.i664.us = or disjoint i64 %indvars.iv8.i662.us, 1 ; 2 uses
  %i.pj = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next9.i664.us
  %i.pk = load i32, ptr %i.pj, align 4, !tbaa !39
  %i.pl = sext i32 %i.pk to i64
  %i.pm = getelementptr inbounds [4 x i8], ptr %.09411045.us, i64 %i.pl ; 2 uses
  %i.pn = getelementptr i8, ptr %i.pm, i64 16
  %.idx16.i663.us.1 = mul nuw nsw i64 %indvars.iv.next9.i664.us, 96
  %i.po = getelementptr inbounds nuw i8, ptr %i.nk, i64 %.idx16.i663.us.1 ; 2 uses
  %i.pp = load <4 x float>, ptr %i.pm, align 4, !tbaa !99
  %i.pq = getelementptr inbounds nuw i8, ptr %i.po, i64 16
  %i.pr = load <4 x float>, ptr %i.pn, align 4, !tbaa !99
  store <4 x float> %i.pp, ptr %i.po, align 4, !tbaa !99
  store <4 x float> %i.pr, ptr %i.pq, align 4, !tbaa !99
  %indvars.iv.next9.i664.us.1 = add nuw nsw i64 %indvars.iv8.i662.us, 2 ; 2 uses
  %niter132.next.1 = add i64 %niter132, 2         ; 2 uses
  %niter132.ncmp.1 = icmp eq i64 %niter132.next.1, %unroll_iter131
  br i1 %niter132.ncmp.1, label %_ZN2cv3dnnL9packData8ERPcRPfRiS5_S5_PKiiii.exit666.us.loopexit.unr-lcssa, label %.lr.ph5.i661.us, !llvm.loop !298

_ZN2cv3dnnL9packData8ERPcRPfRiS5_S5_PKiiii.exit666.us.loopexit.unr-lcssa: ; preds = %.lr.ph5.i661.us
  br i1 %lcmp.mod129.not, label %_ZN2cv3dnnL9packData8ERPcRPfRiS5_S5_PKiiii.exit666.us, label %.lr.ph5.i661.us.epil.preheader

.lr.ph5.i661.us.epil.preheader:                   ; preds = %_ZN2cv3dnnL9packData8ERPcRPfRiS5_S5_PKiiii.exit666.us.loopexit.unr-lcssa, %.lr.ph5.i661.us.preheader
  %indvars.iv8.i662.us.epil.init = phi i64 [ 0, %.lr.ph5.i661.us.preheader ], [ %indvars.iv.next9.i664.us.1, %_ZN2cv3dnnL9packData8ERPcRPfRiS5_S5_PKiiii.exit666.us.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod130)
  %i.ps = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv8.i662.us.epil.init
  %i.pt = load i32, ptr %i.ps, align 4, !tbaa !39
  %i.pu = sext i32 %i.pt to i64
  %i.pv = getelementptr inbounds [4 x i8], ptr %.09411045.us, i64 %i.pu ; 2 uses
  %i.pw = getelementptr i8, ptr %i.pv, i64 16
  %.idx16.i663.us.epil = mul nuw nsw i64 %indvars.iv8.i662.us.epil.init, 96
  %i.px = getelementptr inbounds nuw i8, ptr %i.nk, i64 %.idx16.i663.us.epil ; 2 uses
  %i.py = load <4 x float>, ptr %i.pv, align 4, !tbaa !99
  %i.pz = getelementptr inbounds nuw i8, ptr %i.px, i64 16
  %i.qa = load <4 x float>, ptr %i.pw, align 4, !tbaa !99
  store <4 x float> %i.py, ptr %i.px, align 4, !tbaa !99
  store <4 x float> %i.qa, ptr %i.pz, align 4, !tbaa !99
  br label %_ZN2cv3dnnL9packData8ERPcRPfRiS5_S5_PKiiii.exit666.us

_ZN2cv3dnnL9packData8ERPcRPfRiS5_S5_PKiiii.exit666.us: ; preds = %.lr.ph.i652.us, %.lr.ph5.i661.us.epil.preheader, %_ZN2cv3dnnL9packData8ERPcRPfRiS5_S5_PKiiii.exit666.us.loopexit.unr-lcssa, %.preheader.i658.us, %.preheader1.i651.us
  %i.qb = add nsw i32 %.49281047.us, 7
  %i.qc = add nsw i32 %.09431044.us, 7
  %i.qd = getelementptr inbounds [4 x i8], ptr %.09411045.us, i64 %i.y
  %i.qe = add nsw i32 %.09391046.us, %i.x
  br label %.loopexit957.us

bb.o:                                             ; preds = %bb.l
  %i.qf = add nsw i32 %.49281047.us, 2
  %i.qg = icmp sle i32 %i.qf, %i.mi
  %or.cond7.us = select i1 %i.qg, i1 %i.ng, i1 false
  %i.qh = add nsw i32 %.09391046.us, %i.n
  %.not624.us = icmp sle i32 %i.qh, %i.ap
  %or.cond1101.not = select i1 %or.cond7.us, i1 %.not624.us, i1 false
  br i1 %or.cond1101.not, label %bb.p, label %.critedge.us

bb.p:                                             ; preds = %bb.o
  %i.qi = mul nsw i32 %.09431044.us, %31
  %i.qj = sext i32 %i.qi to i64
  %i.qk = getelementptr inbounds i8, ptr %i.dc, i64 %i.qj ; 3 uses
  br i1 %i.h, label %.lr.ph.i669.us.preheader, label %_ZN2cv3dnnL9packData2ERPcRPfRiS5_S5_PKiiii.exit674.us

.lr.ph.i669.us.preheader:                         ; preds = %bb.p
  br i1 %i.cu, label %.lr.ph.i669.us.epil.preheader, label %.lr.ph.i669.us

.lr.ph.i669.us:                                   ; preds = %.lr.ph.i669.us.preheader, %.lr.ph.i669.us
  %indvars.iv.i670.us = phi i64 [ %indvars.iv.next.i672.us.1, %.lr.ph.i669.us ], [ 0, %.lr.ph.i669.us.preheader ] ; 4 uses
  %niter126 = phi i64 [ %niter126.next.1, %.lr.ph.i669.us ], [ 0, %.lr.ph.i669.us.preheader ]
  %i.ql = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i670.us
  %i.qm = load i32, ptr %i.ql, align 4, !tbaa !39 ; 2 uses
  %i.qn = sext i32 %i.qm to i64
  %i.qo = getelementptr inbounds [4 x i8], ptr %.09411045.us, i64 %i.qn
  %i.qp = load float, ptr %i.qo, align 4, !tbaa !99
  %i.qq = add nsw i32 %i.qm, %9
  %i.qr = sext i32 %i.qq to i64
  %i.qs = getelementptr inbounds [4 x i8], ptr %.09411045.us, i64 %i.qr
  %i.qt = load float, ptr %i.qs, align 4, !tbaa !99
  %.idx.i671.us = mul nuw nsw i64 %indvars.iv.i670.us, 96
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qk, i64 %.idx.i671.us ; 2 uses
  store float %i.qp, ptr %i.qu, align 4, !tbaa !99
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qu, i64 4
  store float %i.qt, ptr %i.qv, align 4, !tbaa !99
  %indvars.iv.next.i672.us = or disjoint i64 %indvars.iv.i670.us, 1 ; 2 uses
  %i.qw = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next.i672.us
  %i.qx = load i32, ptr %i.qw, align 4, !tbaa !39 ; 2 uses
  %i.qy = sext i32 %i.qx to i64
  %i.qz = getelementptr inbounds [4 x i8], ptr %.09411045.us, i64 %i.qy
  %i.ra = load float, ptr %i.qz, align 4, !tbaa !99
  %i.rb = add nsw i32 %i.qx, %9
  %i.rc = sext i32 %i.rb to i64
  %i.rd = getelementptr inbounds [4 x i8], ptr %.09411045.us, i64 %i.rc
  %i.re = load float, ptr %i.rd, align 4, !tbaa !99
  %.idx.i671.us.1 = mul nuw nsw i64 %indvars.iv.next.i672.us, 96
  %i.rf = getelementptr inbounds nuw i8, ptr %i.qk, i64 %.idx.i671.us.1 ; 2 uses
  store float %i.ra, ptr %i.rf, align 4, !tbaa !99
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rf, i64 4
  store float %i.re, ptr %i.rg, align 4, !tbaa !99
  %indvars.iv.next.i672.us.1 = add nuw nsw i64 %indvars.iv.i670.us, 2 ; 2 uses
  %niter126.next.1 = add i64 %niter126, 2         ; 2 uses
  %niter126.ncmp.1 = icmp eq i64 %niter126.next.1, %unroll_iter125
  br i1 %niter126.ncmp.1, label %_ZN2cv3dnnL9packData2ERPcRPfRiS5_S5_PKiiii.exit674.us.loopexit.unr-lcssa, label %.lr.ph.i669.us, !llvm.loop !299

_ZN2cv3dnnL9packData2ERPcRPfRiS5_S5_PKiiii.exit674.us.loopexit.unr-lcssa: ; preds = %.lr.ph.i669.us
  br i1 %lcmp.mod123.not, label %_ZN2cv3dnnL9packData2ERPcRPfRiS5_S5_PKiiii.exit674.us, label %.lr.ph.i669.us.epil.preheader

.lr.ph.i669.us.epil.preheader:                    ; preds = %_ZN2cv3dnnL9packData2ERPcRPfRiS5_S5_PKiiii.exit674.us.loopexit.unr-lcssa, %.lr.ph.i669.us.preheader
  %indvars.iv.i670.us.epil.init = phi i64 [ 0, %.lr.ph.i669.us.preheader ], [ %indvars.iv.next.i672.us.1, %_ZN2cv3dnnL9packData2ERPcRPfRiS5_S5_PKiiii.exit674.us.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod124)
  %i.rh = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i670.us.epil.init
  %i.ri = load i32, ptr %i.rh, align 4, !tbaa !39 ; 2 uses
  %i.rj = sext i32 %i.ri to i64
  %i.rk = getelementptr inbounds [4 x i8], ptr %.09411045.us, i64 %i.rj
  %i.rl = load float, ptr %i.rk, align 4, !tbaa !99
  %i.rm = add nsw i32 %i.ri, %9
  %i.rn = sext i32 %i.rm to i64
  %i.ro = getelementptr inbounds [4 x i8], ptr %.09411045.us, i64 %i.rn
  %i.rp = load float, ptr %i.ro, align 4, !tbaa !99
  %.idx.i671.us.epil = mul nuw nsw i64 %indvars.iv.i670.us.epil.init, 96
  %i.rq = getelementptr inbounds nuw i8, ptr %i.qk, i64 %.idx.i671.us.epil ; 2 uses
  store float %i.rl, ptr %i.rq, align 4, !tbaa !99
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rq, i64 4
  store float %i.rp, ptr %i.rr, align 4, !tbaa !99
  br label %_ZN2cv3dnnL9packData2ERPcRPfRiS5_S5_PKiiii.exit674.us

_ZN2cv3dnnL9packData2ERPcRPfRiS5_S5_PKiiii.exit674.us: ; preds = %.lr.ph.i669.us.epil.preheader, %_ZN2cv3dnnL9packData2ERPcRPfRiS5_S5_PKiiii.exit674.us.loopexit.unr-lcssa, %bb.p
  %i.rs = add nsw i32 %.49281047.us, 1
  %i.rt = add nsw i32 %.09431044.us, 1
  %i.ru = getelementptr inbounds [4 x i8], ptr %.09411045.us, i64 %i.m
  %i.rv = add nsw i32 %.09391046.us, %9
  br label %.loopexit957.us

.critedge.us:                                     ; preds = %bb.o, %bb.k
  %i.rw = xor i32 %.09391046.us, -1
  %i.rx = add i32 %18, %i.rw
  %i.ry = sdiv i32 %i.rx, %18
  %.sroa.speculated769.us = tail call i32 @llvm.smax.i32(i32 %i.ry, i32 0) ; 2 uses
  %i.rz = sub i32 %i.as, %.09391046.us
  %i.sa = sdiv i32 %i.rz, %18
  %.sroa.speculated764.us = tail call i32 @llvm.smin.i32(i32 %i.sa, i32 %15) ; 2 uses
  %i.sb = sext i32 %.09431044.us to i64           ; 2 uses
  %i.sc = getelementptr inbounds [4 x i8], ptr %i.dc, i64 %i.sb ; 4 uses
  %i.sd = icmp slt i32 %.sroa.speculated769.us, %.sroa.speculated764.us
  %or.cond1106 = select i1 %i.nb, i1 %i.sd, i1 false
  br i1 %or.cond1106, label %.preheader954.us.preheader, label %.loopexit957.us

.preheader954.us.preheader:                       ; preds = %.critedge.us
  %i.se = zext nneg i32 %.sroa.speculated769.us to i64 ; 7 uses
  %wide.trip.count1149 = zext nneg i32 %.sroa.speculated764.us to i64 ; 4 uses
  %i.sf = add i64 %i.nd, %i.se
  %i.sg = add i64 %i.sf, %i.sb
  %i.sh = shl i64 %i.sg, 2
  %i.si = add i64 %i.sh, %i.mf
  %i.sj = sub nsw i64 %wide.trip.count1149, %i.se ; 3 uses
  %min.iters.check25 = icmp ult i64 %i.sj, 8
  %n.vec29 = and i64 %i.sj, -8                    ; 3 uses
  %i.sk = add nsw i64 %n.vec29, %i.se
  %cmp.n36 = icmp eq i64 %i.sj, %n.vec29
  %i.sl = add nsw i64 %wide.trip.count1149, -1
  br label %.preheader954.us

.preheader954.us:                                 ; preds = %.preheader954.us.preheader, %._crit_edge1041.us
  %indvar = phi i64 [ 0, %.preheader954.us.preheader ], [ %indvar.next, %._crit_edge1041.us ] ; 2 uses
  %indvars.iv1151 = phi i64 [ %i.nc, %.preheader954.us.preheader ], [ %indvars.iv.next1152, %._crit_edge1041.us ] ; 3 uses
  %i.sm = trunc nuw nsw i64 %indvars.iv1151 to i32
  %factor.op.mul1038.reass.us = mul i32 %factor.op.mul, %i.sm
  %i.sn = mul nsw i64 %indvars.iv1151, %i.cg      ; 4 uses
  %i.so = sext i32 %factor.op.mul1038.reass.us to i64 ; 2 uses
  %invariant.gep1220 = getelementptr [4 x i8], ptr %.09411045.us, i64 %i.so ; 4 uses
  %brmerge178 = or i1 %min.iters.check25, %i.ct
  br i1 %brmerge178, label %scalar.ph24.preheader, label %vector.memcheck26

vector.memcheck26:                                ; preds = %.preheader954.us
  %i.sp = mul i64 %indvar, %i.cm
  %i.sq = add i64 %i.si, %i.sp
  %i.sr = add nsw i64 %i.so, %i.se
  %i.ss = shl nsw i64 %i.sr, 2
  %i.st = add i64 %i.ss, %.09411045.us23
  %i.su = sub i64 %i.st, %i.sq
  %diff.check27 = icmp ugt i64 %i.su, -32
  br i1 %diff.check27, label %scalar.ph24.preheader, label %vector.ph28

vector.ph28:                                      ; preds = %vector.memcheck26
  %invariant.gep173 = getelementptr [4 x i8], ptr %i.sc, i64 %i.sn
  br label %vector.body30

vector.body30:                                    ; preds = %vector.body30, %vector.ph28
  %index31 = phi i64 [ 0, %vector.ph28 ], [ %index.next34, %vector.body30 ] ; 2 uses
  %i.sv = add nuw i64 %index31, %i.se             ; 2 uses
  %i.sw = getelementptr [4 x i8], ptr %invariant.gep1220, i64 %i.sv ; 2 uses
  %i.sx = getelementptr i8, ptr %i.sw, i64 16
  %wide.load32 = load <4 x float>, ptr %i.sw, align 4, !tbaa !99
  %wide.load33 = load <4 x float>, ptr %i.sx, align 4, !tbaa !99
  %gep174 = getelementptr [4 x i8], ptr %invariant.gep173, i64 %i.sv ; 2 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %gep174, i64 16
  store <4 x float> %wide.load32, ptr %gep174, align 4, !tbaa !99
  store <4 x float> %wide.load33, ptr %i.sy, align 4, !tbaa !99
  %index.next34 = add nuw i64 %index31, 8         ; 2 uses
  %i.sz = icmp eq i64 %index.next34, %n.vec29
  br i1 %i.sz, label %middle.block35, label %vector.body30, !llvm.loop !306

middle.block35:                                   ; preds = %vector.body30
  br i1 %cmp.n36, label %._crit_edge1041.us, label %scalar.ph24.preheader

scalar.ph24.preheader:                            ; preds = %.preheader954.us, %vector.memcheck26, %middle.block35
  %indvars.iv1146.ph = phi i64 [ %i.se, %vector.memcheck26 ], [ %i.sk, %middle.block35 ], [ %i.se, %.preheader954.us ] ; 6 uses
  %i.ta = sub nsw i64 %wide.trip.count1149, %indvars.iv1146.ph
  %xtraiter119 = and i64 %i.ta, 1
  %lcmp.mod120.not = icmp eq i64 %xtraiter119, 0
  br i1 %lcmp.mod120.not, label %scalar.ph24.prol.loopexit, label %scalar.ph24.prol

scalar.ph24.prol:                                 ; preds = %scalar.ph24.preheader
  %i.tb = mul nsw i64 %indvars.iv1146.ph, %i.cf
  %gep1221.prol = getelementptr [4 x i8], ptr %invariant.gep1220, i64 %i.tb
  %i.tc = load float, ptr %gep1221.prol, align 4, !tbaa !99
  %i.td = add nsw i64 %indvars.iv1146.ph, %i.sn
  %i.te = mul nsw i64 %i.td, %i.j
  %i.tf = getelementptr inbounds [4 x i8], ptr %i.sc, i64 %i.te
  store float %i.tc, ptr %i.tf, align 4, !tbaa !99
  %indvars.iv.next1147.prol = add nuw nsw i64 %indvars.iv1146.ph, 1
  br label %scalar.ph24.prol.loopexit

scalar.ph24.prol.loopexit:                        ; preds = %scalar.ph24.prol, %scalar.ph24.preheader
  %indvars.iv1146.unr = phi i64 [ %indvars.iv1146.ph, %scalar.ph24.preheader ], [ %indvars.iv.next1147.prol, %scalar.ph24.prol ]
  %i.tg = icmp eq i64 %indvars.iv1146.ph, %i.sl
  br i1 %i.tg, label %._crit_edge1041.us, label %scalar.ph24

scalar.ph24:                                      ; preds = %scalar.ph24.prol.loopexit, %scalar.ph24
  %indvars.iv1146 = phi i64 [ %indvars.iv.next1147.1, %scalar.ph24 ], [ %indvars.iv1146.unr, %scalar.ph24.prol.loopexit ] ; 4 uses
  %i.th = mul nsw i64 %indvars.iv1146, %i.cf
  %gep1221 = getelementptr [4 x i8], ptr %invariant.gep1220, i64 %i.th
  %i.ti = load float, ptr %gep1221, align 4, !tbaa !99
  %i.tj = add nsw i64 %indvars.iv1146, %i.sn
  %i.tk = mul nsw i64 %i.tj, %i.j
  %i.tl = getelementptr inbounds [4 x i8], ptr %i.sc, i64 %i.tk
  store float %i.ti, ptr %i.tl, align 4, !tbaa !99
  %indvars.iv.next1147 = add nuw nsw i64 %indvars.iv1146, 1 ; 2 uses
  %i.tm = mul nsw i64 %indvars.iv.next1147, %i.cf
  %gep1221.1 = getelementptr [4 x i8], ptr %invariant.gep1220, i64 %i.tm
  %i.tn = load float, ptr %gep1221.1, align 4, !tbaa !99
  %i.to = add nsw i64 %indvars.iv.next1147, %i.sn
  %i.tp = mul nsw i64 %i.to, %i.j
  %i.tq = getelementptr inbounds [4 x i8], ptr %i.sc, i64 %i.tp
  store float %i.tn, ptr %i.tq, align 4, !tbaa !99
  %indvars.iv.next1147.1 = add nuw nsw i64 %indvars.iv1146, 2 ; 2 uses
  %exitcond1150.not.1 = icmp eq i64 %indvars.iv.next1147.1, %wide.trip.count1149
  br i1 %exitcond1150.not.1, label %._crit_edge1041.us, label %scalar.ph24, !llvm.loop !307

._crit_edge1041.us:                               ; preds = %scalar.ph24.prol.loopexit, %scalar.ph24, %middle.block35
  %indvars.iv.next1152 = add nuw nsw i64 %indvars.iv1151, 1 ; 2 uses
  %exitcond1155.not = icmp eq i64 %indvars.iv.next1152, %wide.trip.count1154
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1155.not, label %.loopexit957.us, label %.preheader954.us, !llvm.loop !308

.loopexit957.us:                                  ; preds = %._crit_edge1041.us, %.critedge.us, %_ZN2cv3dnnL9packData2ERPcRPfRiS5_S5_PKiiii.exit674.us, %_ZN2cv3dnnL9packData8ERPcRPfRiS5_S5_PKiiii.exit666.us
  %.1944.us = phi i32 [ %i.qc, %_ZN2cv3dnnL9packData8ERPcRPfRiS5_S5_PKiiii.exit666.us ], [ %i.rt, %_ZN2cv3dnnL9packData2ERPcRPfRiS5_S5_PKiiii.exit674.us ], [ %.09431044.us, %.critedge.us ], [ %.09431044.us, %._crit_edge1041.us ]
  %.1942.us = phi ptr [ %i.qd, %_ZN2cv3dnnL9packData8ERPcRPfRiS5_S5_PKiiii.exit666.us ], [ %i.ru, %_ZN2cv3dnnL9packData2ERPcRPfRiS5_S5_PKiiii.exit674.us ], [ %.09411045.us, %.critedge.us ], [ %.09411045.us, %._crit_edge1041.us ]
  %.1940.us = phi i32 [ %i.qe, %_ZN2cv3dnnL9packData8ERPcRPfRiS5_S5_PKiiii.exit666.us ], [ %i.rv, %_ZN2cv3dnnL9packData2ERPcRPfRiS5_S5_PKiiii.exit674.us ], [ %.09391046.us, %.critedge.us ], [ %.09391046.us, %._crit_edge1041.us ]
  %.5929.us = phi i32 [ %i.qb, %_ZN2cv3dnnL9packData8ERPcRPfRiS5_S5_PKiiii.exit666.us ], [ %i.rs, %_ZN2cv3dnnL9packData2ERPcRPfRiS5_S5_PKiiii.exit674.us ], [ %.49281047.us, %.critedge.us ], [ %.49281047.us, %._crit_edge1041.us ]
  %i.tr = add nsw i32 %.5929.us, 1                ; 2 uses
  %i.ts = add nsw i32 %.1944.us, 1
  %i.tt = getelementptr inbounds [4 x i8], ptr %.1942.us, i64 %i.m
  %i.tu = add nsw i32 %.1940.us, %9
  %i.tv = icmp slt i32 %i.tr, %i.mi
  br i1 %i.tv, label %bb.k, label %._crit_edge1050.us, !llvm.loop !309

._crit_edge1050.us:                               ; preds = %.loopexit957.us, %.lr.ph1054.us
  %i.tw = add nsw i32 %.sroa.speculated805.us, %.05541052.us ; 2 uses
  %indvars.iv.next1157 = add nsw i64 %indvars.iv1156, 1
  %i.tx = icmp slt i32 %i.tw, %.sroa.speculated870.us
  br i1 %i.tx, label %.lr.ph1054.us, label %.loopexit981.us, !llvm.loop !310

.preheader976.us:                                 ; preds = %.lr.ph1079.split.split.us.split
  %i.ty = icmp sgt i32 %.sroa.speculated870.us, 0
  br i1 %i.ty, label %.lr.ph1067.us.preheader, label %.loopexit981.us

.lr.ph1067.us.preheader:                          ; preds = %.preheader976.us
  %invariant.op = add i64 %i.a, %i.db
  br label %.lr.ph1067.us

.lr.ph1067.us:                                    ; preds = %.lr.ph1067.us.preheader, %._crit_edge1064.us
  %.05511066.us = phi i32 [ %i.aay, %._crit_edge1064.us ], [ 0, %.lr.ph1067.us.preheader ] ; 3 uses
  %.09241065.us = phi i32 [ 0, %._crit_edge1064.us ], [ %.recomposed175, %.lr.ph1067.us.preheader ] ; 4 uses
  %i.tz = sub nsw i32 %.sroa.speculated870.us, %.05511066.us
  %i.ua = sub nsw i32 %23, %.09241065.us
  %.sroa.speculated841.us = tail call i32 @llvm.smin.i32(i32 %i.ua, i32 %i.tz) ; 3 uses
  %i.ub = add nsw i32 %.sroa.speculated841.us, %.09241065.us ; 3 uses
  %i.uc = icmp sgt i32 %.sroa.speculated841.us, 0
  br i1 %i.uc, label %.lr.ph1063.us.preheader, label %._crit_edge1064.us

.lr.ph1063.us.preheader:                          ; preds = %.lr.ph1067.us
  %i.ud = mul nsw i32 %.09241065.us, %9
  %i.ue = sub nsw i32 %i.ud, %12                  ; 2 uses
  %i.uf = sext i32 %i.ue to i64
  %i.ug = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.uf
  br label %.lr.ph1063.us

.lr.ph1063.us:                                    ; preds = %.lr.ph1063.us.preheader, %.loopexit.us
  %.19251061.us = phi i32 [ %i.aat, %.loopexit.us ], [ %.09241065.us, %.lr.ph1063.us.preheader ] ; 8 uses
  %.09311060.us = phi i32 [ %i.aaw, %.loopexit.us ], [ %i.ue, %.lr.ph1063.us.preheader ] ; 11 uses
  %.09351059.us = phi ptr [ %i.aav, %.loopexit.us ], [ %i.ug, %.lr.ph1063.us.preheader ] ; 30 uses
  %.09371058.us = phi i32 [ %i.aau, %.loopexit.us ], [ %.05511066.us, %.lr.ph1063.us.preheader ] ; 9 uses
  %.09351059.us15 = ptrtoaddr ptr %.09351059.us to i64
  %i.uh = add nsw i32 %.19251061.us, 8
  %i.ui = icmp sle i32 %i.uh, %i.ub
  %i.uj = icmp sgt i32 %.09311060.us, -1          ; 2 uses
  %or.cond.us = select i1 %i.ui, i1 %i.uj, i1 false
  %i.uk = add nsw i32 %.09311060.us, %i.k
  %.not625.us = icmp sle i32 %i.uk, %i.ap
  %or.cond1102.not = select i1 %or.cond.us, i1 %.not625.us, i1 false
  br i1 %or.cond1102.not, label %bb.q, label %bb.s

bb.q:                                             ; preds = %.lr.ph1063.us
  %i.ul = mul nsw i32 %.09371058.us, %31
  %i.um = sext i32 %i.ul to i64
  %i.un = getelementptr inbounds i8, ptr %i.dc, i64 %i.um ; 4 uses
  br i1 %i.aq, label %bb.r, label %.split1088.us

bb.r:                                             ; preds = %bb.q
  br i1 %i.z, label %.preheader.i.us, label %.preheader1.i.us

.preheader1.i.us:                                 ; preds = %bb.r
  br i1 %i.h, label %.lr.ph.i.us, label %_ZN2cv3dnnL9packData8ERPcRPfRiS5_S5_PKiiii.exit.us

.lr.ph.i.us:                                      ; preds = %.preheader1.i.us, %.lr.ph.i.us
  %indvars.iv.i.us = phi i64 [ %indvars.iv.next.i.us, %.lr.ph.i.us ], [ 0, %.preheader1.i.us ] ; 3 uses
  %i.uo = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i.us
  %i.up = load i32, ptr %i.uo, align 4, !tbaa !39 ; 8 uses
  %i.uq = sext i32 %i.up to i64
  %i.ur = getelementptr inbounds [4 x i8], ptr %.09351059.us, i64 %i.uq
  %i.us = load float, ptr %i.ur, align 4, !tbaa !99
  %i.ut = add nsw i32 %i.up, %9
  %i.uu = sext i32 %i.ut to i64
  %i.uv = getelementptr inbounds [4 x i8], ptr %.09351059.us, i64 %i.uu
  %i.uw = load float, ptr %i.uv, align 4, !tbaa !99
  %i.ux = add nsw i32 %i.up, %i.n
  %i.uy = sext i32 %i.ux to i64
  %i.uz = getelementptr inbounds [4 x i8], ptr %.09351059.us, i64 %i.uy
  %i.va = load float, ptr %i.uz, align 4, !tbaa !99
  %i.vb = add nsw i32 %i.up, %i.p
  %i.vc = sext i32 %i.vb to i64
  %i.vd = getelementptr inbounds [4 x i8], ptr %.09351059.us, i64 %i.vc
  %i.ve = load float, ptr %i.vd, align 4, !tbaa !99
  %i.vf = add nsw i32 %i.up, %i.r
  %i.vg = sext i32 %i.vf to i64
  %i.vh = getelementptr inbounds [4 x i8], ptr %.09351059.us, i64 %i.vg
  %i.vi = load float, ptr %i.vh, align 4, !tbaa !99
  %i.vj = add nsw i32 %i.up, %i.t
  %i.vk = sext i32 %i.vj to i64
  %i.vl = getelementptr inbounds [4 x i8], ptr %.09351059.us, i64 %i.vk
  %i.vm = load float, ptr %i.vl, align 4, !tbaa !99
  %i.vn = add nsw i32 %i.up, %i.v
  %i.vo = sext i32 %i.vn to i64
  %i.vp = getelementptr inbounds [4 x i8], ptr %.09351059.us, i64 %i.vo
  %i.vq = load float, ptr %i.vp, align 4, !tbaa !99
  %i.vr = add nsw i32 %i.up, %i.x
  %i.vs = sext i32 %i.vr to i64
  %i.vt = getelementptr inbounds [4 x i8], ptr %.09351059.us, i64 %i.vs
  %i.vu = load float, ptr %i.vt, align 4, !tbaa !99
  %.idx.i.us = mul nuw nsw i64 %indvars.iv.i.us, 96
  %i.vv = getelementptr inbounds nuw i8, ptr %i.un, i64 %.idx.i.us ; 8 uses
  store float %i.us, ptr %i.vv, align 4, !tbaa !99
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vv, i64 4
  store float %i.uw, ptr %i.vw, align 4, !tbaa !99
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vv, i64 8
  store float %i.va, ptr %i.vx, align 4, !tbaa !99
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vv, i64 12
  store float %i.ve, ptr %i.vy, align 4, !tbaa !99
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vv, i64 16
  store float %i.vi, ptr %i.vz, align 4, !tbaa !99
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vv, i64 20
  store float %i.vm, ptr %i.wa, align 4, !tbaa !99
  %i.wb = getelementptr inbounds nuw i8, ptr %i.vv, i64 24
  store float %i.vq, ptr %i.wb, align 4, !tbaa !99
  %i.wc = getelementptr inbounds nuw i8, ptr %i.vv, i64 28
  store float %i.vu, ptr %i.wc, align 4, !tbaa !99
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 1 ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %indvars.iv.next.i.us, %wide.trip.count.i687
  br i1 %exitcond.not.i.us, label %_ZN2cv3dnnL9packData8ERPcRPfRiS5_S5_PKiiii.exit.us, label %.lr.ph.i.us, !llvm.loop !297

.preheader.i.us:                                  ; preds = %bb.r
  br i1 %i.h, label %.lr.ph5.i.us.preheader, label %_ZN2cv3dnnL9packData8ERPcRPfRiS5_S5_PKiiii.exit.us

.lr.ph5.i.us.preheader:                           ; preds = %.preheader.i.us
  br i1 %i.cy, label %.lr.ph5.i.us.epil.preheader, label %.lr.ph5.i.us

.lr.ph5.i.us:                                     ; preds = %.lr.ph5.i.us.preheader, %.lr.ph5.i.us
  %indvars.iv8.i.us = phi i64 [ %indvars.iv.next9.i.us.1, %.lr.ph5.i.us ], [ 0, %.lr.ph5.i.us.preheader ] ; 4 uses
  %niter146 = phi i64 [ %niter146.next.1, %.lr.ph5.i.us ], [ 0, %.lr.ph5.i.us.preheader ]
  %i.wd = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv8.i.us
  %i.we = load i32, ptr %i.wd, align 4, !tbaa !39
  %i.wf = sext i32 %i.we to i64
  %i.wg = getelementptr inbounds [4 x i8], ptr %.09351059.us, i64 %i.wf ; 2 uses
  %i.wh = getelementptr i8, ptr %i.wg, i64 16
  %.idx16.i.us = mul nuw nsw i64 %indvars.iv8.i.us, 96
  %i.wi = getelementptr inbounds nuw i8, ptr %i.un, i64 %.idx16.i.us ; 2 uses
  %i.wj = load <4 x float>, ptr %i.wg, align 4, !tbaa !99
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wi, i64 16
  %i.wl = load <4 x float>, ptr %i.wh, align 4, !tbaa !99
  store <4 x float> %i.wj, ptr %i.wi, align 4, !tbaa !99
  store <4 x float> %i.wl, ptr %i.wk, align 4, !tbaa !99
  %indvars.iv.next9.i.us = or disjoint i64 %indvars.iv8.i.us, 1 ; 2 uses
  %i.wm = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next9.i.us
  %i.wn = load i32, ptr %i.wm, align 4, !tbaa !39
  %i.wo = sext i32 %i.wn to i64
  %i.wp = getelementptr inbounds [4 x i8], ptr %.09351059.us, i64 %i.wo ; 2 uses
  %i.wq = getelementptr i8, ptr %i.wp, i64 16
  %.idx16.i.us.1 = mul nuw nsw i64 %indvars.iv.next9.i.us, 96
  %i.wr = getelementptr inbounds nuw i8, ptr %i.un, i64 %.idx16.i.us.1 ; 2 uses
  %i.ws = load <4 x float>, ptr %i.wp, align 4, !tbaa !99
  %i.wt = getelementptr inbounds nuw i8, ptr %i.wr, i64 16
  %i.wu = load <4 x float>, ptr %i.wq, align 4, !tbaa !99
  store <4 x float> %i.ws, ptr %i.wr, align 4, !tbaa !99
  store <4 x float> %i.wu, ptr %i.wt, align 4, !tbaa !99
  %indvars.iv.next9.i.us.1 = add nuw nsw i64 %indvars.iv8.i.us, 2 ; 2 uses
  %niter146.next.1 = add i64 %niter146, 2         ; 2 uses
  %niter146.ncmp.1 = icmp eq i64 %niter146.next.1, %unroll_iter145
  br i1 %niter146.ncmp.1, label %_ZN2cv3dnnL9packData8ERPcRPfRiS5_S5_PKiiii.exit.us.loopexit.unr-lcssa, label %.lr.ph5.i.us, !llvm.loop !298

_ZN2cv3dnnL9packData8ERPcRPfRiS5_S5_PKiiii.exit.us.loopexit.unr-lcssa: ; preds = %.lr.ph5.i.us
  br i1 %lcmp.mod143.not, label %_ZN2cv3dnnL9packData8ERPcRPfRiS5_S5_PKiiii.exit.us, label %.lr.ph5.i.us.epil.preheader

.lr.ph5.i.us.epil.preheader:                      ; preds = %_ZN2cv3dnnL9packData8ERPcRPfRiS5_S5_PKiiii.exit.us.loopexit.unr-lcssa, %.lr.ph5.i.us.preheader
  %indvars.iv8.i.us.epil.init = phi i64 [ 0, %.lr.ph5.i.us.preheader ], [ %indvars.iv.next9.i.us.1, %_ZN2cv3dnnL9packData8ERPcRPfRiS5_S5_PKiiii.exit.us.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod144)
  %i.wv = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv8.i.us.epil.init
  %i.ww = load i32, ptr %i.wv, align 4, !tbaa !39
  %i.wx = sext i32 %i.ww to i64
  %i.wy = getelementptr inbounds [4 x i8], ptr %.09351059.us, i64 %i.wx ; 2 uses
  %i.wz = getelementptr i8, ptr %i.wy, i64 16
  %.idx16.i.us.epil = mul nuw nsw i64 %indvars.iv8.i.us.epil.init, 96
  %i.xa = getelementptr inbounds nuw i8, ptr %i.un, i64 %.idx16.i.us.epil ; 2 uses
  %i.xb = load <4 x float>, ptr %i.wy, align 4, !tbaa !99
  %i.xc = getelementptr inbounds nuw i8, ptr %i.xa, i64 16
  %i.xd = load <4 x float>, ptr %i.wz, align 4, !tbaa !99
  store <4 x float> %i.xb, ptr %i.xa, align 4, !tbaa !99
  store <4 x float> %i.xd, ptr %i.xc, align 4, !tbaa !99
  br label %_ZN2cv3dnnL9packData8ERPcRPfRiS5_S5_PKiiii.exit.us

_ZN2cv3dnnL9packData8ERPcRPfRiS5_S5_PKiiii.exit.us: ; preds = %.lr.ph.i.us, %.lr.ph5.i.us.epil.preheader, %_ZN2cv3dnnL9packData8ERPcRPfRiS5_S5_PKiiii.exit.us.loopexit.unr-lcssa, %.preheader.i.us, %.preheader1.i.us
  %i.xe = add nsw i32 %.19251061.us, 7
  %i.xf = add nsw i32 %.09371058.us, 7
  %i.xg = getelementptr inbounds [4 x i8], ptr %.09351059.us, i64 %i.y
  %i.xh = add nsw i32 %.09311060.us, %i.x
  br label %.loopexit.us

bb.s:                                             ; preds = %.lr.ph1063.us
  %i.xi = add nsw i32 %.19251061.us, 2
  %i.xj = icmp sle i32 %i.xi, %i.ub
  %or.cond3.us = select i1 %i.xj, i1 %i.uj, i1 false
  %i.xk = add nsw i32 %.09311060.us, %i.n
  %.not626.us = icmp sle i32 %i.xk, %i.ap
  %or.cond1103.not = select i1 %or.cond3.us, i1 %.not626.us, i1 false
  br i1 %or.cond1103.not, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.xl = mul nsw i32 %.09371058.us, %31
  %i.xm = sext i32 %i.xl to i64
  %i.xn = getelementptr inbounds i8, ptr %i.dc, i64 %i.xm ; 3 uses
  br i1 %i.h, label %.lr.ph.i638.us.preheader, label %_ZN2cv3dnnL9packData2ERPcRPfRiS5_S5_PKiiii.exit.us

.lr.ph.i638.us.preheader:                         ; preds = %bb.t
  br i1 %i.cx, label %.lr.ph.i638.us.epil.preheader, label %.lr.ph.i638.us

.lr.ph.i638.us:                                   ; preds = %.lr.ph.i638.us.preheader, %.lr.ph.i638.us
  %indvars.iv.i639.us = phi i64 [ %indvars.iv.next.i641.us.1, %.lr.ph.i638.us ], [ 0, %.lr.ph.i638.us.preheader ] ; 4 uses
  %niter140 = phi i64 [ %niter140.next.1, %.lr.ph.i638.us ], [ 0, %.lr.ph.i638.us.preheader ]
  %i.xo = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i639.us
  %i.xp = load i32, ptr %i.xo, align 4, !tbaa !39 ; 2 uses
  %i.xq = sext i32 %i.xp to i64
  %i.xr = getelementptr inbounds [4 x i8], ptr %.09351059.us, i64 %i.xq
  %i.xs = load float, ptr %i.xr, align 4, !tbaa !99
  %i.xt = add nsw i32 %i.xp, %9
  %i.xu = sext i32 %i.xt to i64
  %i.xv = getelementptr inbounds [4 x i8], ptr %.09351059.us, i64 %i.xu
  %i.xw = load float, ptr %i.xv, align 4, !tbaa !99
  %.idx.i640.us = mul nuw nsw i64 %indvars.iv.i639.us, 96
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xn, i64 %.idx.i640.us ; 2 uses
  store float %i.xs, ptr %i.xx, align 4, !tbaa !99
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xx, i64 4
  store float %i.xw, ptr %i.xy, align 4, !tbaa !99
  %indvars.iv.next.i641.us = or disjoint i64 %indvars.iv.i639.us, 1 ; 2 uses
  %i.xz = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next.i641.us
  %i.ya = load i32, ptr %i.xz, align 4, !tbaa !39 ; 2 uses
  %i.yb = sext i32 %i.ya to i64
  %i.yc = getelementptr inbounds [4 x i8], ptr %.09351059.us, i64 %i.yb
  %i.yd = load float, ptr %i.yc, align 4, !tbaa !99
  %i.ye = add nsw i32 %i.ya, %9
  %i.yf = sext i32 %i.ye to i64
  %i.yg = getelementptr inbounds [4 x i8], ptr %.09351059.us, i64 %i.yf
  %i.yh = load float, ptr %i.yg, align 4, !tbaa !99
  %.idx.i640.us.1 = mul nuw nsw i64 %indvars.iv.next.i641.us, 96
  %i.yi = getelementptr inbounds nuw i8, ptr %i.xn, i64 %.idx.i640.us.1 ; 2 uses
  store float %i.yd, ptr %i.yi, align 4, !tbaa !99
  %i.yj = getelementptr inbounds nuw i8, ptr %i.yi, i64 4
  store float %i.yh, ptr %i.yj, align 4, !tbaa !99
  %indvars.iv.next.i641.us.1 = add nuw nsw i64 %indvars.iv.i639.us, 2 ; 2 uses
  %niter140.next.1 = add i64 %niter140, 2         ; 2 uses
  %niter140.ncmp.1 = icmp eq i64 %niter140.next.1, %unroll_iter139
  br i1 %niter140.ncmp.1, label %_ZN2cv3dnnL9packData2ERPcRPfRiS5_S5_PKiiii.exit.us.loopexit.unr-lcssa, label %.lr.ph.i638.us, !llvm.loop !299

_ZN2cv3dnnL9packData2ERPcRPfRiS5_S5_PKiiii.exit.us.loopexit.unr-lcssa: ; preds = %.lr.ph.i638.us
  br i1 %lcmp.mod137.not, label %_ZN2cv3dnnL9packData2ERPcRPfRiS5_S5_PKiiii.exit.us, label %.lr.ph.i638.us.epil.preheader

.lr.ph.i638.us.epil.preheader:                    ; preds = %_ZN2cv3dnnL9packData2ERPcRPfRiS5_S5_PKiiii.exit.us.loopexit.unr-lcssa, %.lr.ph.i638.us.preheader
  %indvars.iv.i639.us.epil.init = phi i64 [ 0, %.lr.ph.i638.us.preheader ], [ %indvars.iv.next.i641.us.1, %_ZN2cv3dnnL9packData2ERPcRPfRiS5_S5_PKiiii.exit.us.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod138)
  %i.yk = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i639.us.epil.init
  %i.yl = load i32, ptr %i.yk, align 4, !tbaa !39 ; 2 uses
  %i.ym = sext i32 %i.yl to i64
  %i.yn = getelementptr inbounds [4 x i8], ptr %.09351059.us, i64 %i.ym
  %i.yo = load float, ptr %i.yn, align 4, !tbaa !99
  %i.yp = add nsw i32 %i.yl, %9
  %i.yq = sext i32 %i.yp to i64
  %i.yr = getelementptr inbounds [4 x i8], ptr %.09351059.us, i64 %i.yq
  %i.ys = load float, ptr %i.yr, align 4, !tbaa !99
  %.idx.i640.us.epil = mul nuw nsw i64 %indvars.iv.i639.us.epil.init, 96
  %i.yt = getelementptr inbounds nuw i8, ptr %i.xn, i64 %.idx.i640.us.epil ; 2 uses
  store float %i.yo, ptr %i.yt, align 4, !tbaa !99
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yt, i64 4
  store float %i.ys, ptr %i.yu, align 4, !tbaa !99
  br label %_ZN2cv3dnnL9packData2ERPcRPfRiS5_S5_PKiiii.exit.us

_ZN2cv3dnnL9packData2ERPcRPfRiS5_S5_PKiiii.exit.us: ; preds = %.lr.ph.i638.us.epil.preheader, %_ZN2cv3dnnL9packData2ERPcRPfRiS5_S5_PKiiii.exit.us.loopexit.unr-lcssa, %bb.t
  %i.yv = add nsw i32 %.19251061.us, 1
  %i.yw = add nsw i32 %.09371058.us, 1
  %i.yx = getelementptr inbounds [4 x i8], ptr %.09351059.us, i64 %i.m
  %i.yy = add nsw i32 %.09311060.us, %9
  br label %.loopexit.us

bb.u:                                             ; preds = %bb.s
  %i.yz = xor i32 %.09311060.us, -1
  %i.za = add i32 %18, %i.yz
  %i.zb = sdiv i32 %i.za, %18
  %.sroa.speculated817.us = tail call i32 @llvm.smax.i32(i32 %i.zb, i32 0) ; 2 uses
  %i.zc = sub i32 %i.as, %.09311060.us
  %i.zd = sdiv i32 %i.zc, %18
  %.sroa.speculated812.us = tail call i32 @llvm.smin.i32(i32 %i.zd, i32 %15) ; 2 uses
  %i.ze = sext i32 %.09371058.us to i64           ; 2 uses
  %i.zf = getelementptr inbounds [4 x i8], ptr %i.dc, i64 %i.ze ; 6 uses
  %i.zg = icmp slt i32 %.sroa.speculated817.us, %.sroa.speculated812.us
  br i1 %i.zg, label %.lr.ph1057.us.preheader, label %.loopexit.us

.lr.ph1057.us.preheader:                          ; preds = %bb.u
  %i.zh = zext nneg i32 %.sroa.speculated817.us to i64 ; 5 uses
  %wide.trip.count1162 = zext nneg i32 %.sroa.speculated812.us to i64 ; 4 uses
  %i.zi = sub nsw i64 %wide.trip.count1162, %i.zh ; 3 uses
  %min.iters.check = icmp ult i64 %i.zi, 16
  %brmerge179 = or i1 %min.iters.check, %i.cw
  br i1 %brmerge179, label %.lr.ph1057.us.preheader69, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph1057.us.preheader
  %i.zj = shl nsw i64 %i.ze, 2
  %.reass = add i64 %i.zj, %invariant.op
  %41 = sub i64 %.09351059.us15, %.reass
  %diff.check = icmp ugt i64 %41, -32
  br i1 %diff.check, label %.lr.ph1057.us.preheader69, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.zi, -8                      ; 3 uses
  %i.zk = add nsw i64 %n.vec, %i.zh
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.zl = add nuw i64 %index, %i.zh               ; 2 uses
  %i.zm = getelementptr inbounds [4 x i8], ptr %.09351059.us, i64 %i.zl ; 2 uses
  %i.zn = getelementptr inbounds nuw i8, ptr %i.zm, i64 16
  %wide.load = load <4 x float>, ptr %i.zm, align 4, !tbaa !99
  %wide.load16 = load <4 x float>, ptr %i.zn, align 4, !tbaa !99
  %i.zo = getelementptr inbounds [4 x i8], ptr %i.zf, i64 %i.zl ; 2 uses
  %i.zp = getelementptr inbounds nuw i8, ptr %i.zo, i64 16
  store <4 x float> %wide.load, ptr %i.zo, align 4, !tbaa !99
  store <4 x float> %wide.load16, ptr %i.zp, align 4, !tbaa !99
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.zq = icmp eq i64 %index.next, %n.vec
  br i1 %i.zq, label %middle.block, label %vector.body, !llvm.loop !311

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.zi, %n.vec
  br i1 %cmp.n, label %.loopexit.us, label %.lr.ph1057.us.preheader69

.lr.ph1057.us.preheader69:                        ; preds = %.lr.ph1057.us.preheader, %vector.memcheck, %middle.block
  %indvars.iv1159.ph = phi i64 [ %i.zh, %vector.memcheck ], [ %i.zk, %middle.block ], [ %i.zh, %.lr.ph1057.us.preheader ] ; 4 uses
  %i.zr = sub nsw i64 %wide.trip.count1162, %indvars.iv1159.ph
  %xtraiter133 = and i64 %i.zr, 3                 ; 2 uses
  %lcmp.mod134.not = icmp eq i64 %xtraiter133, 0
  br i1 %lcmp.mod134.not, label %.lr.ph1057.us.prol.loopexit, label %.lr.ph1057.us.prol

.lr.ph1057.us.prol:                               ; preds = %.lr.ph1057.us.preheader69, %.lr.ph1057.us.prol
  %indvars.iv1159.prol = phi i64 [ %indvars.iv.next1160.prol, %.lr.ph1057.us.prol ], [ %indvars.iv1159.ph, %.lr.ph1057.us.preheader69 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph1057.us.prol ], [ 0, %.lr.ph1057.us.preheader69 ]
  %i.zs = mul nsw i64 %indvars.iv1159.prol, %i.cf
  %i.zt = getelementptr inbounds [4 x i8], ptr %.09351059.us, i64 %i.zs
  %i.zu = load float, ptr %i.zt, align 4, !tbaa !99
  %i.zv = mul nsw i64 %indvars.iv1159.prol, %i.j
  %i.zw = getelementptr inbounds [4 x i8], ptr %i.zf, i64 %i.zv
  store float %i.zu, ptr %i.zw, align 4, !tbaa !99
  %indvars.iv.next1160.prol = add nuw nsw i64 %indvars.iv1159.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter133
  br i1 %prol.iter.cmp.not, label %.lr.ph1057.us.prol.loopexit, label %.lr.ph1057.us.prol, !llvm.loop !312

.lr.ph1057.us.prol.loopexit:                      ; preds = %.lr.ph1057.us.prol, %.lr.ph1057.us.preheader69
  %indvars.iv1159.unr = phi i64 [ %indvars.iv1159.ph, %.lr.ph1057.us.preheader69 ], [ %indvars.iv.next1160.prol, %.lr.ph1057.us.prol ]
  %i.zx = sub nsw i64 %indvars.iv1159.ph, %wide.trip.count1162
  %i.zy = icmp ugt i64 %i.zx, -4
  br i1 %i.zy, label %.loopexit.us, label %.lr.ph1057.us

.lr.ph1057.us:                                    ; preds = %.lr.ph1057.us.prol.loopexit, %.lr.ph1057.us
  %indvars.iv1159 = phi i64 [ %indvars.iv.next1160.3, %.lr.ph1057.us ], [ %indvars.iv1159.unr, %.lr.ph1057.us.prol.loopexit ] ; 6 uses
  %i.zz = mul nsw i64 %indvars.iv1159, %i.cf
  %i.aaa = getelementptr inbounds [4 x i8], ptr %.09351059.us, i64 %i.zz
  %i.aab = load float, ptr %i.aaa, align 4, !tbaa !99
  %i.aac = mul nsw i64 %indvars.iv1159, %i.j
  %i.aad = getelementptr inbounds [4 x i8], ptr %i.zf, i64 %i.aac
  store float %i.aab, ptr %i.aad, align 4, !tbaa !99
  %indvars.iv.next1160 = add nuw nsw i64 %indvars.iv1159, 1 ; 2 uses
  %i.aae = mul nsw i64 %indvars.iv.next1160, %i.cf
  %i.aaf = getelementptr inbounds [4 x i8], ptr %.09351059.us, i64 %i.aae
  %i.aag = load float, ptr %i.aaf, align 4, !tbaa !99
  %i.aah = mul nsw i64 %indvars.iv.next1160, %i.j
  %i.aai = getelementptr inbounds [4 x i8], ptr %i.zf, i64 %i.aah
  store float %i.aag, ptr %i.aai, align 4, !tbaa !99
  %indvars.iv.next1160.1 = add nuw nsw i64 %indvars.iv1159, 2 ; 2 uses
  %i.aaj = mul nsw i64 %indvars.iv.next1160.1, %i.cf
  %i.aak = getelementptr inbounds [4 x i8], ptr %.09351059.us, i64 %i.aaj
  %i.aal = load float, ptr %i.aak, align 4, !tbaa !99
  %i.aam = mul nsw i64 %indvars.iv.next1160.1, %i.j
  %i.aan = getelementptr inbounds [4 x i8], ptr %i.zf, i64 %i.aam
  store float %i.aal, ptr %i.aan, align 4, !tbaa !99
  %indvars.iv.next1160.2 = add nuw nsw i64 %indvars.iv1159, 3 ; 2 uses
  %i.aao = mul nsw i64 %indvars.iv.next1160.2, %i.cf
  %i.aap = getelementptr inbounds [4 x i8], ptr %.09351059.us, i64 %i.aao
  %i.aaq = load float, ptr %i.aap, align 4, !tbaa !99
  %i.aar = mul nsw i64 %indvars.iv.next1160.2, %i.j
  %i.aas = getelementptr inbounds [4 x i8], ptr %i.zf, i64 %i.aar
  store float %i.aaq, ptr %i.aas, align 4, !tbaa !99
  %indvars.iv.next1160.3 = add nuw nsw i64 %indvars.iv1159, 4 ; 2 uses
  %exitcond1163.not.3 = icmp eq i64 %indvars.iv.next1160.3, %wide.trip.count1162
  br i1 %exitcond1163.not.3, label %.loopexit.us, label %.lr.ph1057.us, !llvm.loop !313

.loopexit.us:                                     ; preds = %.lr.ph1057.us.prol.loopexit, %.lr.ph1057.us, %middle.block, %bb.u, %_ZN2cv3dnnL9packData2ERPcRPfRiS5_S5_PKiiii.exit.us, %_ZN2cv3dnnL9packData8ERPcRPfRiS5_S5_PKiiii.exit.us
  %.1938.us = phi i32 [ %i.xf, %_ZN2cv3dnnL9packData8ERPcRPfRiS5_S5_PKiiii.exit.us ], [ %i.yw, %_ZN2cv3dnnL9packData2ERPcRPfRiS5_S5_PKiiii.exit.us ], [ %.09371058.us, %bb.u ], [ %.09371058.us, %middle.block ], [ %.09371058.us, %.lr.ph1057.us ], [ %.09371058.us, %.lr.ph1057.us.prol.loopexit ]
  %.1936.us = phi ptr [ %i.xg, %_ZN2cv3dnnL9packData8ERPcRPfRiS5_S5_PKiiii.exit.us ], [ %i.yx, %_ZN2cv3dnnL9packData2ERPcRPfRiS5_S5_PKiiii.exit.us ], [ %.09351059.us, %bb.u ], [ %.09351059.us, %middle.block ], [ %.09351059.us, %.lr.ph1057.us ], [ %.09351059.us, %.lr.ph1057.us.prol.loopexit ]
  %.1932.us = phi i32 [ %i.xh, %_ZN2cv3dnnL9packData8ERPcRPfRiS5_S5_PKiiii.exit.us ], [ %i.yy, %_ZN2cv3dnnL9packData2ERPcRPfRiS5_S5_PKiiii.exit.us ], [ %.09311060.us, %bb.u ], [ %.09311060.us, %middle.block ], [ %.09311060.us, %.lr.ph1057.us ], [ %.09311060.us, %.lr.ph1057.us.prol.loopexit ]
  %.2926.us = phi i32 [ %i.xe, %_ZN2cv3dnnL9packData8ERPcRPfRiS5_S5_PKiiii.exit.us ], [ %i.yv, %_ZN2cv3dnnL9packData2ERPcRPfRiS5_S5_PKiiii.exit.us ], [ %.19251061.us, %bb.u ], [ %.19251061.us, %middle.block ], [ %.19251061.us, %.lr.ph1057.us ], [ %.19251061.us, %.lr.ph1057.us.prol.loopexit ]
  %i.aat = add nsw i32 %.2926.us, 1               ; 2 uses
  %i.aau = add nsw i32 %.1938.us, 1
  %i.aav = getelementptr inbounds [4 x i8], ptr %.1936.us, i64 %i.m
  %i.aaw = add nsw i32 %.1932.us, %9
  %i.aax = icmp slt i32 %i.aat, %i.ub
  br i1 %i.aax, label %.lr.ph1063.us, label %._crit_edge1064.us, !llvm.loop !314

._crit_edge1064.us:                               ; preds = %.loopexit.us, %.lr.ph1067.us
  %i.aay = add nsw i32 %.sroa.speculated841.us, %.05511066.us ; 2 uses
  %i.aaz = icmp slt i32 %i.aay, %.sroa.speculated870.us
  br i1 %i.aaz, label %.lr.ph1067.us, label %.loopexit981.us, !llvm.loop !315

.loopexit981.us:                                  ; preds = %._crit_edge1032.us, %._crit_edge1050.us, %._crit_edge1064.us, %.preheader976.us, %.preheader978.us, %.preheader980.us, %.lr.ph1079.split.split.us.split
  %indvars.iv.next1165 = add nuw i64 %indvars.iv1164, 1
  %i.aba = add nsw i32 %.05371077.us1081, %30     ; 2 uses
  %i.abb = icmp slt i32 %i.aba, %5
  br i1 %i.abb, label %.lr.ph1079.split.split.us.split, label %._crit_edge1080, !llvm.loop !296

.lr.ph1079.split.split:                           ; preds = %.lr.ph1079.split
  br i1 %i.h, label %.lr.ph1014.preheader, label %._crit_edge1080

.lr.ph1014.preheader:                             ; preds = %.lr.ph1079.split.split
  %i.abc = add i32 %24, -1                        ; 3 uses
  %xtraiter = and i32 %24, 7                      ; 3 uses
  %i.abd = icmp ult i32 %24, 8
  %unroll_iter = and i32 %24, 2147483640
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod80 = icmp ne i32 %xtraiter, 0
  %xtraiter81 = and i32 %24, 3                    ; 3 uses
  %i.abe = icmp ult i32 %24, 4
  %unroll_iter85 = and i32 %24, 2147483644
  %lcmp.mod83.not = icmp eq i32 %xtraiter81, 0
  %lcmp.mod84 = icmp ne i32 %xtraiter81, 0
  %xtraiter87 = and i32 %24, 1
  %i.abf = icmp eq i32 %i.abc, 0
  %unroll_iter91 = and i32 %24, 2147483646
  %lcmp.mod89.not = icmp eq i32 %xtraiter87, 0
  %lcmp.mod90 = trunc i32 %24 to i1
  %xtraiter93 = and i32 %24, 7                    ; 3 uses
  %i.abg = icmp ult i32 %i.abc, 7
  %unroll_iter97 = and i32 %24, 2147483640
  %lcmp.mod95.not = icmp eq i32 %xtraiter93, 0
  %lcmp.mod96 = icmp ne i32 %xtraiter93, 0
  %xtraiter99 = and i32 %24, 7                    ; 3 uses
  %i.abh = icmp ult i32 %i.abc, 7
  %unroll_iter103 = and i32 %24, 2147483640
  %lcmp.mod101.not = icmp eq i32 %xtraiter99, 0
  %lcmp.mod102 = icmp ne i32 %xtraiter99, 0
  br label %.lr.ph1014

._crit_edge1080:                                  ; preds = %..loopexit982_crit_edge, %.loopexit981.us, %..loopexit975_crit_edge.us.us.us, %.lr.ph1079.split.us, %.lr.ph1079.split.split, %bb.a
  ret void

.lr.ph1014:                                       ; preds = %.lr.ph1014.preheader, %..loopexit982_crit_edge
  %indvars.iv1128 = phi i64 [ %indvars.iv.next1129, %..loopexit982_crit_edge ], [ 0, %.lr.ph1014.preheader ] ; 2 uses
  %.05371077 = phi i32 [ %i.ali, %..loopexit982_crit_edge ], [ %4, %.lr.ph1014.preheader ] ; 3 uses
  %i.abi = trunc nuw nsw i64 %indvars.iv1128 to i32
  %i.abj = mul i32 %i.c, %i.abi
  %i.abk = sext i32 %i.abj to i64
  %i.abl = getelementptr inbounds i8, ptr %0, i64 %i.abk
  %i.abm = sdiv i32 %.05371077, %i.f              ; 2 uses
  %i.abn = mul nsw i32 %i.abm, %i.f               ; 0 uses
  %.recomposed176 = srem i32 %.05371077, %i.f     ; 2 uses
  %i.abo = sdiv i32 %.recomposed176, %23          ; 2 uses
  %i.abp = mul nsw i32 %i.abo, %23                ; 0 uses
  %.recomposed177 = srem i32 %.recomposed176, %23
  br label %bb.af

.split.us:                                        ; preds = %.lr.ph1079.split.split.us
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %39, ptr noundef nonnull @.str.24, ptr noundef nonnull align 1 dereferenceable(1) %40)
          to label %bb.v unwind label %bb.x

bb.v:                                             ; preds = %.split.us
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %39, ptr noundef nonnull @__func__._ZN2cv3dnnL13packInputDataEPcPfPKiS4_iiiiiiiiiiiiiiiiiiiiiiiiiiiibb, ptr noundef nonnull @.str.1, i32 noundef 659) #24
          to label %bb.w unwind label %bb.y

bb.w:                                             ; preds = %bb.v
  unreachable

bb.x:                                             ; preds = %.split.us
  %i.abq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.y:                                             ; preds = %bb.v
  %i.abr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.abs = load ptr, ptr %39, align 8, !tbaa !35  ; 2 uses
  %i.abt = getelementptr inbounds nuw i8, ptr %39, i64 16 ; 2 uses
  %i.abu = icmp eq ptr %i.abs, %i.abt
  br i1 %i.abu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.y
  %i.abv = load i64, ptr %i.abt, align 8, !tbaa !36
  %i.abw = add i64 %i.abv, 1
  call void @_ZdlPvm(ptr noundef %i.abs, i64 noundef %i.abw) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i683, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i649, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %common.resume.op = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.abx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.acd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i649 ], [ %i.acj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i683 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.x
  %.pn = phi { ptr, i32 } [ %i.abq, %bb.x ], [ %i.abr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.abr, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #23
  br label %common.resume
end_hunk_1
