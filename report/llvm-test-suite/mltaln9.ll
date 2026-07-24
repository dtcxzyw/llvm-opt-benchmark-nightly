inline.NumInlined: 16
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 91
loop-unroll.NumUnrolled: 95
begin_hunk_0_@seqcheck:bb.a
  %i.am = tail call i64 @fwrite(ptr nonnull @.str, i64 75, i64 1, ptr %i.al) #30 ; 0 uses
  %i.an = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.ao = tail call i64 @fwrite(ptr nonnull @.str, i64 75, i64 1, ptr %i.an) #30 ; 0 uses
  %i.ap = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.aq = tail call i64 @fwrite(ptr nonnull @.str, i64 75, i64 1, ptr %i.ap) #30 ; 0 uses
  %i.ar = load ptr, ptr %.01623, align 8, !tbaa !12
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %indvars.iv
  %i.at = load i8, ptr %i.as, align 1, !tbaa !8
  br label %.loopexit

bb.c:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !17

._crit_edge:                                      ; preds = %bb.c, %.lr.ph25
  %i.au = getelementptr inbounds nuw i8, ptr %.01623, i64 8 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !12 ; 2 uses
  %.not = icmp eq ptr %i.av, null
  br i1 %.not, label %.loopexit, label %.lr.ph25, !llvm.loop !18

.loopexit:                                        ; preds = %._crit_edge, %bb.a, %bb.b
  %.0 = phi i8 [ %i.at, %bb.b ], [ 0, %bb.a ], [ 0, %._crit_edge ]
  ret i8 %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @scmx_calc(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !12
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #29 ; 2 uses
  %i.c = trunc i64 %i.b to i32                    ; 3 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.preheader52.preheader, label %.preheader51

.preheader52.preheader:                           ; preds = %bb.a
  %wide.trip.count = and i64 %i.b, 2147483647
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !19
  %.phi.trans.insert87 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.pre88 = load ptr, ptr %.phi.trans.insert87, align 8, !tbaa !19
  %.phi.trans.insert89 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.pre90 = load ptr, ptr %.phi.trans.insert89, align 8, !tbaa !19
  %.phi.trans.insert91 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %.pre92 = load ptr, ptr %.phi.trans.insert91, align 8, !tbaa !19
  %.phi.trans.insert93 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %.pre94 = load ptr, ptr %.phi.trans.insert93, align 8, !tbaa !19
  %.phi.trans.insert95 = getelementptr inbounds nuw i8, ptr %3, i64 56
  %.pre96 = load ptr, ptr %.phi.trans.insert95, align 8, !tbaa !19
  %.phi.trans.insert97 = getelementptr inbounds nuw i8, ptr %3, i64 64
  %.pre98 = load ptr, ptr %.phi.trans.insert97, align 8, !tbaa !19
  %.phi.trans.insert99 = getelementptr inbounds nuw i8, ptr %3, i64 72
  %.pre100 = load ptr, ptr %.phi.trans.insert99, align 8, !tbaa !19
  %.phi.trans.insert101 = getelementptr inbounds nuw i8, ptr %3, i64 80
  %.pre102 = load ptr, ptr %.phi.trans.insert101, align 8, !tbaa !19
  %.phi.trans.insert103 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %.pre104 = load ptr, ptr %.phi.trans.insert103, align 8, !tbaa !19
  %.phi.trans.insert105 = getelementptr inbounds nuw i8, ptr %3, i64 96
  %.pre106 = load ptr, ptr %.phi.trans.insert105, align 8, !tbaa !19
  %.phi.trans.insert107 = getelementptr inbounds nuw i8, ptr %3, i64 104
  %.pre108 = load ptr, ptr %.phi.trans.insert107, align 8, !tbaa !19
  %.phi.trans.insert109 = getelementptr inbounds nuw i8, ptr %3, i64 112
  %.pre110 = load ptr, ptr %.phi.trans.insert109, align 8, !tbaa !19
  %.phi.trans.insert111 = getelementptr inbounds nuw i8, ptr %3, i64 120
  %.pre112 = load ptr, ptr %.phi.trans.insert111, align 8, !tbaa !19
  %.phi.trans.insert113 = getelementptr inbounds nuw i8, ptr %3, i64 128
  %.pre114 = load ptr, ptr %.phi.trans.insert113, align 8, !tbaa !19
  %.phi.trans.insert115 = getelementptr inbounds nuw i8, ptr %3, i64 136
  %.pre116 = load ptr, ptr %.phi.trans.insert115, align 8, !tbaa !19
  %.phi.trans.insert117 = getelementptr inbounds nuw i8, ptr %3, i64 144
  %.pre118 = load ptr, ptr %.phi.trans.insert117, align 8, !tbaa !19
  %.phi.trans.insert119 = getelementptr inbounds nuw i8, ptr %3, i64 152
  %.pre120 = load ptr, ptr %.phi.trans.insert119, align 8, !tbaa !19
  %.phi.trans.insert121 = getelementptr inbounds nuw i8, ptr %3, i64 160
  %.pre122 = load ptr, ptr %.phi.trans.insert121, align 8, !tbaa !19
  %.phi.trans.insert123 = getelementptr inbounds nuw i8, ptr %3, i64 168
  %.pre124 = load ptr, ptr %.phi.trans.insert123, align 8, !tbaa !19
  %.phi.trans.insert125 = getelementptr inbounds nuw i8, ptr %3, i64 176
  %.pre126 = load ptr, ptr %.phi.trans.insert125, align 8, !tbaa !19
  %.phi.trans.insert127 = getelementptr inbounds nuw i8, ptr %3, i64 184
  %.pre128 = load ptr, ptr %.phi.trans.insert127, align 8, !tbaa !19
  %.phi.trans.insert129 = getelementptr inbounds nuw i8, ptr %3, i64 192
  %.pre130 = load ptr, ptr %.phi.trans.insert129, align 8, !tbaa !19
  %.phi.trans.insert131 = getelementptr inbounds nuw i8, ptr %3, i64 200
  %.pre132 = load ptr, ptr %.phi.trans.insert131, align 8, !tbaa !19
  %i.e = load ptr, ptr %3, align 8, !tbaa !19
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !19
  br label %.preheader52

.preheader52:                                     ; preds = %.preheader52.preheader, %.preheader52
  %indvars.iv = phi i64 [ 0, %.preheader52.preheader ], [ %indvars.iv.next, %.preheader52 ] ; 27 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv
  store float 0.000000e+00, ptr %i.h, align 4, !tbaa !21
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv
  store float 0.000000e+00, ptr %i.i, align 4, !tbaa !21
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %indvars.iv
  store float 0.000000e+00, ptr %i.j, align 4, !tbaa !21
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %.pre88, i64 %indvars.iv
  store float 0.000000e+00, ptr %i.k, align 4, !tbaa !21
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %.pre90, i64 %indvars.iv
  store float 0.000000e+00, ptr %i.l, align 4, !tbaa !21
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %.pre92, i64 %indvars.iv
  store float 0.000000e+00, ptr %i.m, align 4, !tbaa !21
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %.pre94, i64 %indvars.iv
  store float 0.000000e+00, ptr %i.n, align 4, !tbaa !21
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %.pre96, i64 %indvars.iv
  store float 0.000000e+00, ptr %i.o, align 4, !tbaa !21
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %.pre98, i64 %indvars.iv
  store float 0.000000e+00, ptr %i.p, align 4, !tbaa !21
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %.pre100, i64 %indvars.iv
  store float 0.000000e+00, ptr %i.q, align 4, !tbaa !21
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %.pre102, i64 %indvars.iv
  store float 0.000000e+00, ptr %i.r, align 4, !tbaa !21
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %.pre104, i64 %indvars.iv
  store float 0.000000e+00, ptr %i.s, align 4, !tbaa !21
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %.pre106, i64 %indvars.iv
  store float 0.000000e+00, ptr %i.t, align 4, !tbaa !21
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %.pre108, i64 %indvars.iv
  store float 0.000000e+00, ptr %i.u, align 4, !tbaa !21
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %.pre110, i64 %indvars.iv
  store float 0.000000e+00, ptr %i.v, align 4, !tbaa !21
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %.pre112, i64 %indvars.iv
  store float 0.000000e+00, ptr %i.w, align 4, !tbaa !21
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %.pre114, i64 %indvars.iv
  store float 0.000000e+00, ptr %i.x, align 4, !tbaa !21
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %.pre116, i64 %indvars.iv
  store float 0.000000e+00, ptr %i.y, align 4, !tbaa !21
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %.pre118, i64 %indvars.iv
  store float 0.000000e+00, ptr %i.z, align 4, !tbaa !21
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %.pre120, i64 %indvars.iv
  store float 0.000000e+00, ptr %i.aa, align 4, !tbaa !21
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %.pre122, i64 %indvars.iv
  store float 0.000000e+00, ptr %i.ab, align 4, !tbaa !21
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %.pre124, i64 %indvars.iv
  store float 0.000000e+00, ptr %i.ac, align 4, !tbaa !21
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %.pre126, i64 %indvars.iv
  store float 0.000000e+00, ptr %i.ad, align 4, !tbaa !21
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %.pre128, i64 %indvars.iv
  store float 0.000000e+00, ptr %i.ae, align 4, !tbaa !21
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %.pre130, i64 %indvars.iv
  store float 0.000000e+00, ptr %i.af, align 4, !tbaa !21
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %.pre132, i64 %indvars.iv
  store float 0.000000e+00, ptr %i.ag, align 4, !tbaa !21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader51, label %.preheader52, !llvm.loop !23

.preheader51:                                     ; preds = %.preheader52, %bb.a
  %.not55 = icmp slt i32 %0, 0
  br i1 %.not55, label %._crit_edge64, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader51
  %i.ah = add nuw i32 %0, 1                       ; 4 uses
  %wide.trip.count70 = zext i32 %i.ah to i64      ; 6 uses
  %xtraiter = and i64 %wide.trip.count70, 1
  %i.ai = icmp eq i32 %0, 0
  br i1 %i.ai, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count70, 4294967294
  br label %.lr.ph

.preheader50.unr-lcssa:                           ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader50, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.preheader50.unr-lcssa, %.lr.ph.preheader
  %indvars.iv67.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next68.1, %.preheader50.unr-lcssa ] ; 2 uses
  %lcmp.mod136 = trunc i32 %i.ah to i1
  tail call void @llvm.assume(i1 %lcmp.mod136)
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv67.epil.init
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !12
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !8
  %i.am = sext i8 %i.al to i64
  %i.an = getelementptr inbounds [4 x i8], ptr @amino_n, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !4
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv67.epil.init
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !24
  %i.ar = fptrunc double %i.aq to float
  %i.as = sext i32 %i.ao to i64
  %i.at = getelementptr inbounds [8 x i8], ptr %3, i64 %i.as
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !19 ; 2 uses
  %i.av = load float, ptr %i.au, align 4, !tbaa !21
  %i.aw = fadd float %i.av, %i.ar
  store float %i.aw, ptr %i.au, align 4, !tbaa !21
  br label %.preheader50

.preheader50:                                     ; preds = %.preheader50.unr-lcssa, %.lr.ph.epil.preheader
  %i.ax = add i32 %i.c, -1                        ; 2 uses
  %i.ay = icmp slt i32 %i.c, 3
  br i1 %i.ay, label %.lr.ph63, label %.preheader49.preheader

.preheader49.preheader:                           ; preds = %.preheader50
  %wide.trip.count80 = zext nneg i32 %i.ax to i64
  %xtraiter137 = and i64 %wide.trip.count70, 1
  %i.az = icmp eq i32 %0, 0
  %unroll_iter140 = and i64 %wide.trip.count70, 4294967294
  %lcmp.mod138.not = icmp eq i64 %xtraiter137, 0
  %lcmp.mod139 = trunc i32 %i.ah to i1
  br label %.preheader49

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv67 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next68.1, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv67
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !12
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !8
  %i.bd = sext i8 %i.bc to i64
  %i.be = getelementptr inbounds [4 x i8], ptr @amino_n, i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !4
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv67
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !24
  %i.bi = fptrunc double %i.bh to float
  %i.bj = sext i32 %i.bf to i64
  %i.bk = getelementptr inbounds [8 x i8], ptr %3, i64 %i.bj
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !19 ; 2 uses
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !21
  %i.bn = fadd float %i.bm, %i.bi
  store float %i.bn, ptr %i.bl, align 4, !tbaa !21
  %indvars.iv.next68 = or disjoint i64 %indvars.iv67, 1 ; 2 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next68
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !12
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !8
  %i.br = sext i8 %i.bq to i64
  %i.bs = getelementptr inbounds [4 x i8], ptr @amino_n, i64 %i.br
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !4
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next68
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !24
  %i.bw = fptrunc double %i.bv to float
  %i.bx = sext i32 %i.bt to i64
  %i.by = getelementptr inbounds [8 x i8], ptr %3, i64 %i.bx
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !19 ; 2 uses
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !21
  %i.cb = fadd float %i.ca, %i.bw
  store float %i.cb, ptr %i.bz, align 4, !tbaa !21
  %indvars.iv.next68.1 = add nuw nsw i64 %indvars.iv67, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader50.unr-lcssa, label %.lr.ph, !llvm.loop !26

.preheader49:                                     ; preds = %.preheader49.preheader, %._crit_edge
  %indvars.iv77 = phi i64 [ 1, %.preheader49.preheader ], [ %indvars.iv.next78, %._crit_edge ] ; 7 uses
  br i1 %i.az, label %.epil.preheader, label %.preheader49.new

.lr.ph63:                                         ; preds = %._crit_edge, %.preheader50
  %i.cc = sext i32 %i.ax to i64                   ; 6 uses
  %xtraiter143 = and i64 %wide.trip.count70, 1
  %i.cd = icmp eq i32 %0, 0
  br i1 %i.cd, label %.epil.preheader142, label %.lr.ph63.new

.lr.ph63.new:                                     ; preds = %.lr.ph63
  %unroll_iter146 = and i64 %wide.trip.count70, 4294967294
  br label %bb.b

.preheader49.new:                                 ; preds = %.preheader49, %.preheader49.new
  %indvars.iv72 = phi i64 [ %indvars.iv.next73.1, %.preheader49.new ], [ 0, %.preheader49 ] ; 4 uses
  %niter141 = phi i64 [ %niter141.next.1, %.preheader49.new ], [ 0, %.preheader49 ]
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv72
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !12
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %indvars.iv77
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !8
  %i.ci = sext i8 %i.ch to i64
  %i.cj = getelementptr inbounds [4 x i8], ptr @amino_n, i64 %i.ci
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !4
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv72
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !24
  %i.cn = fptrunc double %i.cm to float
  %i.co = sext i32 %i.ck to i64
  %i.cp = getelementptr inbounds [8 x i8], ptr %3, i64 %i.co
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !19
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %indvars.iv77 ; 2 uses
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !21
  %i.ct = fadd float %i.cs, %i.cn
  store float %i.ct, ptr %i.cr, align 4, !tbaa !21
  %indvars.iv.next73 = or disjoint i64 %indvars.iv72, 1 ; 2 uses
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next73
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !12
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 %indvars.iv77
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !8
  %i.cy = sext i8 %i.cx to i64
  %i.cz = getelementptr inbounds [4 x i8], ptr @amino_n, i64 %i.cy
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !4
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next73
  %i.dc = load double, ptr %i.db, align 8, !tbaa !24
  %i.dd = fptrunc double %i.dc to float
  %i.de = sext i32 %i.da to i64
  %i.df = getelementptr inbounds [8 x i8], ptr %3, i64 %i.de
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !19
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %indvars.iv77 ; 2 uses
  %i.di = load float, ptr %i.dh, align 4, !tbaa !21
  %i.dj = fadd float %i.di, %i.dd
  store float %i.dj, ptr %i.dh, align 4, !tbaa !21
  %indvars.iv.next73.1 = add nuw nsw i64 %indvars.iv72, 2 ; 2 uses
  %niter141.next.1 = add i64 %niter141, 2         ; 2 uses
  %niter141.ncmp.1 = icmp eq i64 %niter141.next.1, %unroll_iter140
  br i1 %niter141.ncmp.1, label %._crit_edge.unr-lcssa, label %.preheader49.new, !llvm.loop !27

._crit_edge.unr-lcssa:                            ; preds = %.preheader49.new
  br i1 %lcmp.mod138.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.preheader49
  %indvars.iv72.epil.init = phi i64 [ 0, %.preheader49 ], [ %indvars.iv.next73.1, %._crit_edge.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod139)
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv72.epil.init
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !12
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 %indvars.iv77
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !8
  %i.do = sext i8 %i.dn to i64
  %i.dp = getelementptr inbounds [4 x i8], ptr @amino_n, i64 %i.do
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !4
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv72.epil.init
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !24
  %i.dt = fptrunc double %i.ds to float
  %i.du = sext i32 %i.dq to i64
  %i.dv = getelementptr inbounds [8 x i8], ptr %3, i64 %i.du
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !19
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %indvars.iv77 ; 2 uses
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !21
  %i.dz = fadd float %i.dy, %i.dt
  store float %i.dz, ptr %i.dx, align 4, !tbaa !21
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %indvars.iv.next78 = add nuw nsw i64 %indvars.iv77, 1 ; 2 uses
  %exitcond81.not = icmp eq i64 %indvars.iv.next78, %wide.trip.count80
  br i1 %exitcond81.not, label %.lr.ph63, label %.preheader49, !llvm.loop !28

bb.b:                                             ; preds = %bb.b, %.lr.ph63.new
  %indvars.iv82 = phi i64 [ 0, %.lr.ph63.new ], [ %indvars.iv.next83.1, %bb.b ] ; 4 uses
  %niter147 = phi i64 [ 0, %.lr.ph63.new ], [ %niter147.next.1, %bb.b ]
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv82
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !12
  %i.ec = getelementptr inbounds i8, ptr %i.eb, i64 %i.cc
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !8
  %i.ee = sext i8 %i.ed to i64
  %i.ef = getelementptr inbounds [4 x i8], ptr @amino_n, i64 %i.ee
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !4
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv82
  %i.ei = load double, ptr %i.eh, align 8, !tbaa !24
  %i.ej = fptrunc double %i.ei to float
  %i.ek = sext i32 %i.eg to i64
  %i.el = getelementptr inbounds [8 x i8], ptr %3, i64 %i.ek
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !19
  %i.en = getelementptr inbounds [4 x i8], ptr %i.em, i64 %i.cc ; 2 uses
  %i.eo = load float, ptr %i.en, align 4, !tbaa !21
  %i.ep = fadd float %i.eo, %i.ej
  store float %i.ep, ptr %i.en, align 4, !tbaa !21
  %indvars.iv.next83 = or disjoint i64 %indvars.iv82, 1 ; 2 uses
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next83
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !12
  %i.es = getelementptr inbounds i8, ptr %i.er, i64 %i.cc
  %i.et = load i8, ptr %i.es, align 1, !tbaa !8
  %i.eu = sext i8 %i.et to i64
  %i.ev = getelementptr inbounds [4 x i8], ptr @amino_n, i64 %i.eu
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !4
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next83
  %i.ey = load double, ptr %i.ex, align 8, !tbaa !24
  %i.ez = fptrunc double %i.ey to float
  %i.fa = sext i32 %i.ew to i64
  %i.fb = getelementptr inbounds [8 x i8], ptr %3, i64 %i.fa
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !19
  %i.fd = getelementptr inbounds [4 x i8], ptr %i.fc, i64 %i.cc ; 2 uses
  %i.fe = load float, ptr %i.fd, align 4, !tbaa !21
  %i.ff = fadd float %i.fe, %i.ez
  store float %i.ff, ptr %i.fd, align 4, !tbaa !21
  %indvars.iv.next83.1 = add nuw nsw i64 %indvars.iv82, 2 ; 2 uses
  %niter147.next.1 = add i64 %niter147, 2         ; 2 uses
  %niter147.ncmp.1 = icmp eq i64 %niter147.next.1, %unroll_iter146
  br i1 %niter147.ncmp.1, label %._crit_edge64.loopexit.unr-lcssa, label %bb.b, !llvm.loop !29

._crit_edge64.loopexit.unr-lcssa:                 ; preds = %bb.b
  %lcmp.mod144.not = icmp eq i64 %xtraiter143, 0
  br i1 %lcmp.mod144.not, label %._crit_edge64, label %.epil.preheader142

.epil.preheader142:                               ; preds = %._crit_edge64.loopexit.unr-lcssa, %.lr.ph63
  %indvars.iv82.epil.init = phi i64 [ 0, %.lr.ph63 ], [ %indvars.iv.next83.1, %._crit_edge64.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod145 = trunc i32 %i.ah to i1
  tail call void @llvm.assume(i1 %lcmp.mod145)
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv82.epil.init
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !12
  %i.fi = getelementptr inbounds i8, ptr %i.fh, i64 %i.cc
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !8
  %i.fk = sext i8 %i.fj to i64
  %i.fl = getelementptr inbounds [4 x i8], ptr @amino_n, i64 %i.fk
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !4
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv82.epil.init
  %i.fo = load double, ptr %i.fn, align 8, !tbaa !24
  %i.fp = fptrunc double %i.fo to float
  %i.fq = sext i32 %i.fm to i64
  %i.fr = getelementptr inbounds [8 x i8], ptr %3, i64 %i.fq
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !19
  %i.ft = getelementptr inbounds [4 x i8], ptr %i.fs, i64 %i.cc ; 2 uses
  %i.fu = load float, ptr %i.ft, align 4, !tbaa !21
  %i.fv = fadd float %i.fu, %i.fp
end_hunk_0
begin_hunk_1_@intergroup_score_new:bb.a
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv109
  %i.m = load double, ptr %i.l, align 8, !tbaa !24
  %i.n = fmul double %i.k, %i.m
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv109
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !12   ; 3 uses
  %i.q = load i32, ptr @penalty, align 4
  %i.r = sitofp i32 %i.q to double                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.i, %.lr.ph75.us.us
  %.05773.us.us = phi double [ 0.000000e+00, %.lr.ph75.us.us ], [ %.3.us.us, %bb.i ] ; 2 uses
  %.05872.us.us = phi i32 [ 0, %.lr.ph75.us.us ], [ %i.bh, %bb.i ] ; 7 uses
  %i.s = sext i32 %.05872.us.us to i64            ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %i.i, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !tbaa !8     ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %i.p, i64 %i.s
  %i.w = load i8, ptr %i.v, align 1, !tbaa !8     ; 2 uses
  %i.x = icmp eq i8 %i.u, 45                      ; 2 uses
  %i.y = icmp eq i8 %i.w, 45                      ; 2 uses
  %or.cond.us.us = select i1 %i.x, i1 %i.y, i1 false
  br i1 %or.cond.us.us, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.z = sext i8 %i.u to i64
  %i.aa = getelementptr inbounds [512 x i8], ptr @amino_dis, i64 %i.z ; 2 uses
  %i.ab = sext i8 %i.w to i64                     ; 2 uses
  %i.ac = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !4
  %i.ae = sitofp i32 %i.ad to double              ; 3 uses
  %i.af = fadd double %.05773.us.us, %i.ae        ; 3 uses
  br i1 %i.x, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %i.y, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.ag = fadd double %i.af, %i.r
  %i.ah = fadd double %i.ag, %i.ae                ; 2 uses
  %i.ai = add nsw i32 %.05872.us.us, 1
  %i.aj = sext i32 %i.ai to i64                   ; 2 uses
  %i.ak = getelementptr inbounds i8, ptr %i.p, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !8
  %i.am = icmp eq i8 %i.al, 45
  br i1 %i.am, label %.lr.ph.us.us, label %._crit_edge.us.us

._crit_edge.us.us.loopexit:                       ; preds = %bb.f
  %i.an = trunc nsw i64 %indvars.iv103 to i32
  br label %._crit_edge.us.us

._crit_edge.us.us:                                ; preds = %._crit_edge.us.us.loopexit, %bb.e
  %.260.lcssa.us.us = phi i32 [ %.05872.us.us, %bb.e ], [ %i.an, %._crit_edge.us.us.loopexit ] ; 2 uses
  %.2.lcssa.us.us = phi double [ %i.ah, %bb.e ], [ %i.ap, %._crit_edge.us.us.loopexit ] ; 2 uses
  %i.ao = icmp sgt i32 %.260.lcssa.us.us, %i.a
  br i1 %i.ao, label %._crit_edge76.us.us, label %bb.i

bb.f:                                             ; preds = %.lr.ph.us.us, %bb.f
  %indvars.iv103 = phi i64 [ %i.aj, %.lr.ph.us.us ], [ %indvars.iv.next104, %bb.f ] ; 2 uses
  %.264.us.us = phi double [ %i.ah, %.lr.ph.us.us ], [ %i.ap, %bb.f ]
  %i.ap = fadd double %.264.us.us, %i.bl          ; 2 uses
  %indvars.iv.next104 = add nsw i64 %indvars.iv103, 1 ; 2 uses
  %i.aq = getelementptr inbounds i8, ptr %i.p, i64 %indvars.iv.next104
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !8
  %i.as = icmp eq i8 %i.ar, 45
  br i1 %i.as, label %bb.f, label %._crit_edge.us.us.loopexit, !llvm.loop !46

bb.g:                                             ; preds = %bb.c
  %i.at = fadd double %i.af, %i.r
  %i.au = fadd double %i.at, %i.ae                ; 2 uses
  %i.av = add nsw i32 %.05872.us.us, 1
  %i.aw = sext i32 %i.av to i64                   ; 2 uses
  %i.ax = getelementptr inbounds i8, ptr %i.i, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !8
  %i.az = icmp eq i8 %i.ay, 45
  br i1 %i.az, label %.lr.ph68.us.us, label %._crit_edge69.us.us

._crit_edge69.us.us.loopexit:                     ; preds = %bb.h
  %i.ba = trunc nsw i64 %indvars.iv106 to i32
  br label %._crit_edge69.us.us

._crit_edge69.us.us:                              ; preds = %._crit_edge69.us.us.loopexit, %bb.g
  %.159.lcssa.us.us = phi i32 [ %.05872.us.us, %bb.g ], [ %i.ba, %._crit_edge69.us.us.loopexit ] ; 2 uses
  %.1.lcssa.us.us = phi double [ %i.au, %bb.g ], [ %i.bd, %._crit_edge69.us.us.loopexit ] ; 2 uses
  %i.bb = icmp sgt i32 %.159.lcssa.us.us, %i.a
  br i1 %i.bb, label %._crit_edge76.us.us, label %bb.i

._crit_edge76.us.us:                              ; preds = %bb.i, %._crit_edge69.us.us, %._crit_edge.us.us
  %.4.us.us = phi double [ %.2.lcssa.us.us, %._crit_edge.us.us ], [ %.1.lcssa.us.us, %._crit_edge69.us.us ], [ %.3.us.us, %bb.i ]
  %i.bc = tail call double @llvm.fmuladd.f64(double %.4.us.us, double %i.n, double %i.j) ; 3 uses
  store double %i.bc, ptr %7, align 8, !tbaa !24
  %indvars.iv.next110 = add nuw nsw i64 %indvars.iv109, 1 ; 2 uses
  %exitcond113.not = icmp eq i64 %indvars.iv.next110, %wide.trip.count112
  br i1 %exitcond113.not, label %._crit_edge84.split.us.us, label %.lr.ph75.us.us, !llvm.loop !47

bb.h:                                             ; preds = %.lr.ph68.us.us, %bb.h
  %indvars.iv106 = phi i64 [ %i.aw, %.lr.ph68.us.us ], [ %indvars.iv.next107, %bb.h ] ; 2 uses
  %.166.us.us = phi double [ %i.au, %.lr.ph68.us.us ], [ %i.bd, %bb.h ]
  %i.bd = fadd double %.166.us.us, %i.bo          ; 2 uses
  %indvars.iv.next107 = add nsw i64 %indvars.iv106, 1 ; 2 uses
  %i.be = getelementptr inbounds i8, ptr %i.i, i64 %indvars.iv.next107
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !8
  %i.bg = icmp eq i8 %i.bf, 45
  br i1 %i.bg, label %bb.h, label %._crit_edge69.us.us.loopexit, !llvm.loop !48

bb.i:                                             ; preds = %._crit_edge69.us.us, %._crit_edge.us.us, %bb.d, %bb.b
  %.361.us.us = phi i32 [ %.05872.us.us, %bb.b ], [ %.159.lcssa.us.us, %._crit_edge69.us.us ], [ %.260.lcssa.us.us, %._crit_edge.us.us ], [ %.05872.us.us, %bb.d ]
  %.3.us.us = phi double [ %.05773.us.us, %bb.b ], [ %.1.lcssa.us.us, %._crit_edge69.us.us ], [ %.2.lcssa.us.us, %._crit_edge.us.us ], [ %i.af, %bb.d ] ; 2 uses
  %i.bh = add nsw i32 %.361.us.us, 1              ; 2 uses
  %i.bi = icmp slt i32 %i.bh, %6
  br i1 %i.bi, label %bb.b, label %._crit_edge76.us.us, !llvm.loop !49

.lr.ph.us.us:                                     ; preds = %bb.e
  %i.bj = getelementptr inbounds nuw i8, ptr %i.aa, i64 180
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !4
  %i.bl = sitofp i32 %i.bk to double
  br label %bb.f

.lr.ph68.us.us:                                   ; preds = %bb.g
  %i.bm = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @amino_dis, i64 23040), i64 %i.ab
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !4
  %i.bo = sitofp i32 %i.bn to double
  br label %bb.h

._crit_edge84.split.us.us:                        ; preds = %._crit_edge76.us.us
  %indvars.iv.next115 = add nuw nsw i64 %indvars.iv114, 1 ; 2 uses
  %exitcond118.not = icmp eq i64 %indvars.iv.next115, %wide.trip.count117
  br i1 %exitcond118.not, label %._crit_edge.split, label %.preheader.us, !llvm.loop !50

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge84.split
  %indvars.iv98 = phi i64 [ %indvars.iv.next99, %._crit_edge84.split ], [ 0, %.preheader.preheader ] ; 2 uses
  %i.bp = phi double [ %.lcssa137, %._crit_edge84.split ], [ 0.000000e+00, %.preheader.preheader ] ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv98 ; 3 uses
  br i1 %i.e, label %.epil.preheader, label %.preheader.new

.preheader.new:                                   ; preds = %.preheader, %.preheader.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader.new ], [ 0, %.preheader ] ; 3 uses
  %i.br = phi double [ %i.cc, %.preheader.new ], [ %i.bp, %.preheader ]
  %niter = phi i64 [ %niter.next.1, %.preheader.new ], [ 0, %.preheader ]
  %i.bs = load double, ptr %i.bq, align 8, !tbaa !24
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !24
  %i.bv = fmul double %i.bs, %i.bu
  %i.bw = tail call double @llvm.fmuladd.f64(double %i.bv, double 0.000000e+00, double %i.br) ; 2 uses
  store double %i.bw, ptr %7, align 8, !tbaa !24
  %i.bx = load double, ptr %i.bq, align 8, !tbaa !24
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !24
  %i.cb = fmul double %i.bx, %i.ca
  %i.cc = tail call double @llvm.fmuladd.f64(double %i.cb, double 0.000000e+00, double %i.bw) ; 4 uses
  store double %i.cc, ptr %7, align 8, !tbaa !24
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge84.split.unr-lcssa, label %.preheader.new, !llvm.loop !47

._crit_edge84.split.unr-lcssa:                    ; preds = %.preheader.new
  br i1 %lcmp.mod.not, label %._crit_edge84.split, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge84.split.unr-lcssa, %.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.1, %._crit_edge84.split.unr-lcssa ]
  %.epil.init = phi double [ %i.bp, %.preheader ], [ %i.cc, %._crit_edge84.split.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod139)
  %i.cd = load double, ptr %i.bq, align 8, !tbaa !24
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.epil.init
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !24
  %i.cg = fmul double %i.cd, %i.cf
  %i.ch = tail call double @llvm.fmuladd.f64(double %i.cg, double 0.000000e+00, double %.epil.init) ; 2 uses
  store double %i.ch, ptr %7, align 8, !tbaa !24
  br label %._crit_edge84.split

._crit_edge84.split:                              ; preds = %._crit_edge84.split.unr-lcssa, %.epil.preheader
  %.lcssa137 = phi double [ %i.cc, %._crit_edge84.split.unr-lcssa ], [ %i.ch, %.epil.preheader ]
  %indvars.iv.next99 = add nuw nsw i64 %indvars.iv98, 1 ; 2 uses
  %exitcond102.not = icmp eq i64 %indvars.iv.next99, %wide.trip.count117
  br i1 %exitcond102.not, label %._crit_edge.split, label %.preheader, !llvm.loop !50

._crit_edge.split:                                ; preds = %._crit_edge84.split, %._crit_edge84.split.us.us, %bb.a
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local double @score_calc3(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 %3) local_unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !12
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #29
  %.fr = freeze i64 %i.b
  %i.c = trunc i64 %.fr to i32                    ; 3 uses
  %i.d = load i32, ptr @weight, align 4, !tbaa !4 ; 2 uses
  switch i32 %i.d, label %bb.d [
    i32 0, label %bb.b
    i32 2, label %bb.c
    i32 3, label %.preheader
  ]

.preheader:                                       ; preds = %bb.a
  %i.e = icmp sgt i32 %1, 1
  br i1 %i.e, label %.lr.ph78.preheader, label %._crit_edge

.lr.ph78.preheader:                               ; preds = %.preheader
  %i.f = add nsw i32 %1, -1
  %wide.trip.count111 = zext nneg i32 %i.f to i64
  %wide.trip.count = zext nneg i32 %1 to i64      ; 3 uses
  %i.g = add nsw i64 %wide.trip.count, -2
  br label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.h = sitofp i32 %1 to double                  ; 2 uses
  %i.i = fadd nnan double %i.h, -1.000000e+00
  %i.j = fmul double %i.i, %i.h
  %i.k = fmul double %i.j, 5.000000e-01
  br label %.loopexit73

bb.c:                                             ; preds = %bb.a
  %i.l = sdiv i32 %1, 2
  %i.m = sitofp i32 %i.l to double
  br label %.loopexit73

.loopexit72:                                      ; preds = %.lr.ph.new, %.prol.loopexit
  %.lcssa158 = phi double [ %.lcssa158.unr, %.prol.loopexit ], [ %i.ba, %.lr.ph.new ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond112.not = icmp eq i64 %indvars.iv.next109, %wide.trip.count111
  br i1 %exitcond112.not, label %.loopexit73, label %.lr.ph, !llvm.loop !51

.lr.ph:                                           ; preds = %.loopexit72, %.lr.ph78.preheader
  %indvars.iv108 = phi i64 [ 0, %.lr.ph78.preheader ], [ %indvars.iv.next109, %.loopexit72 ] ; 4 uses
  %indvars.iv = phi i64 [ 1, %.lr.ph78.preheader ], [ %indvars.iv.next, %.loopexit72 ] ; 3 uses
  %.077 = phi double [ 0.000000e+00, %.lr.ph78.preheader ], [ %.lcssa158, %.loopexit72 ] ; 2 uses
  %i.n = xor i64 %indvars.iv108, -1
  %i.o = add nsw i64 %i.n, %wide.trip.count
  %i.p = sub i64 %i.g, %indvars.iv108
  %indvars.iv.next109 = add nuw nsw i64 %indvars.iv108, 1 ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv108
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !52   ; 9 uses
  %xtraiter = and i64 %i.o, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph, %.prol.preheader
  %indvars.iv105.prol = phi i64 [ %indvars.iv.next106.prol, %.prol.preheader ], [ %indvars.iv, %.lr.ph ] ; 2 uses
  %.175.prol = phi double [ %i.u, %.prol.preheader ], [ %.077, %.lr.ph ]
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph ]
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv105.prol
  %i.t = load double, ptr %i.s, align 8, !tbaa !24
  %i.u = fadd double %.175.prol, %i.t             ; 3 uses
  %indvars.iv.next106.prol = add nuw nsw i64 %indvars.iv105.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !54

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph
  %.lcssa158.unr = phi double [ poison, %.lr.ph ], [ %i.u, %.prol.preheader ]
  %indvars.iv105.unr = phi i64 [ %indvars.iv, %.lr.ph ], [ %indvars.iv.next106.prol, %.prol.preheader ]
  %.175.unr = phi double [ %.077, %.lr.ph ], [ %i.u, %.prol.preheader ]
  %i.v = icmp ult i64 %i.p, 7
  br i1 %i.v, label %.loopexit72, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %indvars.iv105 = phi i64 [ %indvars.iv.next106.7, %.lr.ph.new ], [ %indvars.iv105.unr, %.prol.loopexit ] ; 9 uses
  %.175 = phi double [ %i.ba, %.lr.ph.new ], [ %.175.unr, %.prol.loopexit ]
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv105
  %i.x = load double, ptr %i.w, align 8, !tbaa !24
  %i.y = fadd double %.175, %i.x
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv105
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !24
  %i.ac = fadd double %i.y, %i.ab
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv105
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load double, ptr %i.ae, align 8, !tbaa !24
  %i.ag = fadd double %i.ac, %i.af
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv105
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !24
  %i.ak = fadd double %i.ag, %i.aj
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv105
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.an = load double, ptr %i.am, align 8, !tbaa !24
  %i.ao = fadd double %i.ak, %i.an
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv105
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !24
  %i.as = fadd double %i.ao, %i.ar
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv105
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 48
  %i.av = load double, ptr %i.au, align 8, !tbaa !24
  %i.aw = fadd double %i.as, %i.av
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv105
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 56
  %i.az = load double, ptr %i.ay, align 8, !tbaa !24
  %i.ba = fadd double %i.aw, %i.az                ; 2 uses
  %indvars.iv.next106.7 = add nuw nsw i64 %indvars.iv105, 8 ; 2 uses
  %exitcond.not.7 = icmp eq i64 %indvars.iv.next106.7, %wide.trip.count
  br i1 %exitcond.not.7, label %.loopexit72, label %.lr.ph.new, !llvm.loop !56

bb.d:                                             ; preds = %bb.a
  %i.bb = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.bc = tail call i64 @fwrite(ptr nonnull @.str.7, i64 6, i64 1, ptr %i.bb) #30 ; 0 uses
  tail call void @exit(i32 noundef 1) #32
  unreachable

.loopexit73:                                      ; preds = %.loopexit72, %bb.c, %bb.b
  %.2 = phi double [ %i.k, %bb.b ], [ %i.m, %bb.c ], [ %.lcssa158, %.loopexit72 ] ; 3 uses
  %i.bd = icmp sgt i32 %1, 1
  br i1 %i.bd, label %.lr.ph99, label %._crit_edge

.lr.ph99:                                         ; preds = %.loopexit73
  %i.be = add nsw i32 %1, -1
  %i.bf = add nsw i32 %i.c, -2                    ; 2 uses
  %i.bg = icmp sgt i32 %i.c, 0
  %i.bh = load i32, ptr @scoremtx, align 4
  %.not = icmp eq i32 %i.bh, 0
  %i.bi = select i1 %.not, i32 400, i32 0
  %i.bj = load i32, ptr @penalty, align 4
  %i.bk = load i32, ptr getelementptr inbounds nuw (i8, ptr @n_dis, i64 96), align 16
  %i.bl = sub nsw i32 %i.bj, %i.bk
  %i.bm = sext i32 %i.bl to i64                   ; 2 uses
  %wide.trip.count141 = zext nneg i32 %i.be to i64 ; 2 uses
  %wide.trip.count136 = zext nneg i32 %1 to i64   ; 2 uses
  br i1 %i.bg, label %.lr.ph95.us, label %.lr.ph95

.loopexit.us:                                     ; preds = %._crit_edge.us.us
  %indvars.iv.next132 = add nuw nsw i64 %indvars.iv131, 1
  %exitcond142.not = icmp eq i64 %indvars.iv.next139, %wide.trip.count141
  br i1 %exitcond142.not, label %._crit_edge, label %.lr.ph95.us, !llvm.loop !57

.lr.ph95.us:                                      ; preds = %.lr.ph99, %.loopexit.us
  %indvars.iv138 = phi i64 [ %indvars.iv.next139, %.loopexit.us ], [ 0, %.lr.ph99 ] ; 3 uses
  %indvars.iv131 = phi i64 [ %indvars.iv.next132, %.loopexit.us ], [ 1, %.lr.ph99 ] ; 2 uses
  %.05898.us = phi double [ %i.dd, %.loopexit.us ], [ 0.000000e+00, %.lr.ph99 ]
  %indvars.iv.next139 = add nuw nsw i64 %indvars.iv138, 1 ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv138
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv138
  br label %.lr.ph83.us.us

.lr.ph83.us.us:                                   ; preds = %._crit_edge.us.us, %.lr.ph95.us
  %indvars.iv133 = phi i64 [ %indvars.iv.next134, %._crit_edge.us.us ], [ %indvars.iv131, %.lr.ph95.us ] ; 3 uses
  %.15993.us.us = phi double [ %i.dd, %._crit_edge.us.us ], [ %.05898.us, %.lr.ph95.us ]
  %i.bp = load ptr, ptr %i.bn, align 8, !tbaa !12
  %i.bq = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @score_calc3.mseq1, ptr noundef nonnull dereferenceable(1) %i.bp) #33 ; 0 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv133
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !12
  %i.bt = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @score_calc3.mseq2, ptr noundef nonnull dereferenceable(1) %i.bs) #33 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.i, %.lr.ph83.us.us
  %.05582.us.us = phi i64 [ 0, %.lr.ph83.us.us ], [ %.156.us.us, %bb.i ] ; 2 uses
  %.06381.us.us = phi i32 [ 0, %.lr.ph83.us.us ], [ %.164.us.us, %bb.i ] ; 2 uses
  %.06680.us.us = phi i32 [ 0, %.lr.ph83.us.us ], [ %i.de, %bb.i ] ; 3 uses
  %i.bu = sext i32 %.06680.us.us to i64           ; 4 uses
  %i.bv = getelementptr inbounds i8, ptr @score_calc3.mseq1, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !8   ; 2 uses
  %i.bx = icmp eq i8 %i.bw, 45                    ; 2 uses
  %i.by = getelementptr inbounds i8, ptr @score_calc3.mseq2, i64 %i.bu
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !8   ; 3 uses
  %i.ca = icmp eq i8 %i.bz, 45
  %or.cond = select i1 %i.bx, i1 %i.ca, i1 false
  br i1 %or.cond, label %bb.i, label %._crit_edge143

._crit_edge143:                                   ; preds = %bb.e
  %i.cb = sext i8 %i.bw to i64
  %i.cc = getelementptr inbounds [512 x i8], ptr @amino_dis, i64 %i.cb
  %i.cd = sext i8 %i.bz to i64
  %i.ce = getelementptr inbounds [4 x i8], ptr %i.cc, i64 %i.cd
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !4
  %i.cg = add nsw i32 %i.bi, %i.cf
  %i.ch = sext i32 %i.cg to i64
  %i.ci = add nsw i64 %.05582.us.us, %i.ch        ; 3 uses
  %i.cj = add nsw i32 %.06381.us.us, 1            ; 5 uses
  br i1 %i.bx, label %.preheader153, label %bb.f

bb.f:                                             ; preds = %._crit_edge143
  %i.ck = icmp eq i8 %i.bz, 45
  br i1 %i.ck, label %.preheader154, label %bb.i

.preheader154:                                    ; preds = %bb.f, %.preheader154
  %indvars.iv125 = phi i64 [ %indvars.iv.next126, %.preheader154 ], [ %i.bu, %bb.f ] ; 2 uses
  %indvars.iv.next126 = add nsw i64 %indvars.iv125, 1 ; 2 uses
  %i.cl = getelementptr inbounds i8, ptr @score_calc3.mseq2, i64 %indvars.iv.next126
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !8
  %i.cn = icmp eq i8 %i.cm, 45
  br i1 %i.cn, label %.preheader154, label %bb.g, !llvm.loop !58

bb.g:                                             ; preds = %.preheader154
  %i.co = add nsw i64 %i.ci, %i.bm                ; 2 uses
  %i.cp = trunc nsw i64 %indvars.iv125 to i32     ; 2 uses
  %i.cq = icmp slt i32 %i.bf, %i.cp
  br i1 %i.cq, label %._crit_edge.us.us, label %bb.i

.preheader153:                                    ; preds = %._crit_edge143, %.preheader153
  %indvars.iv128 = phi i64 [ %indvars.iv.next129, %.preheader153 ], [ %i.bu, %._crit_edge143 ] ; 2 uses
  %indvars.iv.next129 = add nsw i64 %indvars.iv128, 1 ; 2 uses
  %i.cr = getelementptr inbounds i8, ptr @score_calc3.mseq1, i64 %indvars.iv.next129
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !8
  %i.ct = icmp eq i8 %i.cs, 45
  br i1 %i.ct, label %.preheader153, label %bb.h, !llvm.loop !59

bb.h:                                             ; preds = %.preheader153
  %i.cu = add nsw i64 %i.ci, %i.bm                ; 2 uses
  %i.cv = trunc nsw i64 %indvars.iv128 to i32     ; 2 uses
  %i.cw = icmp slt i32 %i.bf, %i.cv
  br i1 %i.cw, label %._crit_edge.us.us, label %bb.i

._crit_edge.us.us:                                ; preds = %bb.i, %bb.h, %bb.g
  %.265.us.us = phi i32 [ %i.cj, %bb.g ], [ %i.cj, %bb.h ], [ %.164.us.us, %bb.i ]
  %.257.us.us = phi i64 [ %i.co, %bb.g ], [ %i.cu, %bb.h ], [ %.156.us.us, %bb.i ]
  %i.cx = sitofp i64 %.257.us.us to double
  %i.cy = sitofp i32 %.265.us.us to double
  %i.cz = fdiv double %i.cx, %i.cy
  %i.da = load ptr, ptr %i.bo, align 8, !tbaa !52
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %indvars.iv133
  %i.dc = load double, ptr %i.db, align 8, !tbaa !24
  %i.dd = tail call double @llvm.fmuladd.f64(double %i.cz, double %i.dc, double %.15993.us.us) ; 3 uses
  %indvars.iv.next134 = add nuw nsw i64 %indvars.iv133, 1 ; 2 uses
  %exitcond137.not = icmp eq i64 %indvars.iv.next134, %wide.trip.count136
  br i1 %exitcond137.not, label %.loopexit.us, label %.lr.ph83.us.us, !llvm.loop !60

bb.i:                                             ; preds = %bb.e, %bb.h, %bb.g, %bb.f
  %.3.us.us = phi i32 [ %.06680.us.us, %bb.e ], [ %i.cv, %bb.h ], [ %i.cp, %bb.g ], [ %.06680.us.us, %bb.f ]
  %.164.us.us = phi i32 [ %.06381.us.us, %bb.e ], [ %i.cj, %bb.h ], [ %i.cj, %bb.g ], [ %i.cj, %bb.f ] ; 2 uses
  %.156.us.us = phi i64 [ %.05582.us.us, %bb.e ], [ %i.cu, %bb.h ], [ %i.co, %bb.g ], [ %i.ci, %bb.f ] ; 2 uses
  %i.de = add nsw i32 %.3.us.us, 1                ; 2 uses
  %i.df = icmp slt i32 %i.de, %i.c
  br i1 %i.df, label %bb.e, label %._crit_edge.us.us, !llvm.loop !61

.loopexit:                                        ; preds = %bb.j
  %indvars.iv.next114 = add nuw nsw i64 %indvars.iv113, 1
  %exitcond124.not = icmp eq i64 %indvars.iv.next121, %wide.trip.count141
  br i1 %exitcond124.not, label %._crit_edge, label %.lr.ph95, !llvm.loop !57

.lr.ph95:                                         ; preds = %.lr.ph99, %.loopexit
  %indvars.iv120 = phi i64 [ %indvars.iv.next121, %.loopexit ], [ 0, %.lr.ph99 ] ; 2 uses
  %indvars.iv113 = phi i64 [ %indvars.iv.next114, %.loopexit ], [ 1, %.lr.ph99 ] ; 2 uses
  %indvars.iv.next121 = add nuw nsw i64 %indvars.iv120, 1 ; 2 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv120
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph95, %bb.j
  %indvars.iv115 = phi i64 [ %indvars.iv113, %.lr.ph95 ], [ %indvars.iv.next116, %bb.j ] ; 2 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !12
  %i.di = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @score_calc3.mseq1, ptr noundef nonnull dereferenceable(1) %i.dh) #33 ; 0 uses
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv115
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !12
  %i.dl = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @score_calc3.mseq2, ptr noundef nonnull dereferenceable(1) %i.dk) #33 ; 0 uses
  %indvars.iv.next116 = add nuw nsw i64 %indvars.iv115, 1 ; 2 uses
  %exitcond119.not = icmp eq i64 %indvars.iv.next116, %wide.trip.count136
  br i1 %exitcond119.not, label %.loopexit, label %bb.j, !llvm.loop !60

._crit_edge:                                      ; preds = %.loopexit, %.loopexit.us, %.preheader, %.loopexit73
  %.2150 = phi double [ %.2, %.loopexit73 ], [ %.2, %.loopexit.us ], [ 0.000000e+00, %.preheader ], [ %.2, %.loopexit ]
  %.058.lcssa = phi double [ 0.000000e+00, %.loopexit73 ], [ %i.dd, %.loopexit.us ], [ 0.000000e+00, %.preheader ], [ +qnan, %.loopexit ] ; 2 uses
  %i.dm = icmp eq i32 %i.d, 0
  %i.dn = fdiv double %.058.lcssa, %.2150
  %.260 = select i1 %i.dm, double %i.dn, double %.058.lcssa
  ret double %.260
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none)) local_unnamed_addr #8

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local double @score_calc5(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #11 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !12
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #29
  %.fr = freeze i64 %i.b
  %i.c = trunc i64 %.fr to i32                    ; 6 uses
  %i.d = icmp sgt i32 %1, 0
  br i1 %i.d, label %.lr.ph160, label %._crit_edge

.lr.ph160:                                        ; preds = %bb.a
  %i.e = sext i32 %3 to i64                       ; 5 uses
  %i.f = getelementptr inbounds [8 x i8], ptr %0, i64 %i.e
  %i.g = add nsw i32 %i.c, -2                     ; 2 uses
  %i.h = icmp sgt i32 %i.c, 0
  %i.i = load i32, ptr @penalty, align 4
  %i.j = sitofp i32 %i.i to double                ; 2 uses
  %i.k = zext i32 %3 to i64                       ; 4 uses
  %wide.trip.count224 = zext nneg i32 %1 to i64   ; 5 uses
  br i1 %i.h, label %.lr.ph160.split.us, label %.lr.ph160.split.preheader

.lr.ph160.split.preheader:                        ; preds = %.lr.ph160
  %xtraiter = and i64 %wide.trip.count224, 1
  %i.l = icmp eq i32 %1, 1
  br i1 %i.l, label %.lr.ph160.split.epil.preheader, label %.lr.ph160.split.preheader.new

.lr.ph160.split.preheader.new:                    ; preds = %.lr.ph160.split.preheader
  %unroll_iter = and i64 %wide.trip.count224, 2147483646
  br label %.lr.ph160.split

.lr.ph160.split.us:                               ; preds = %.lr.ph160, %bb.h
  %indvars.iv221 = phi i64 [ %indvars.iv.next222, %bb.h ], [ 0, %.lr.ph160 ] ; 4 uses
  %.0113158.us = phi double [ %.1114.us, %bb.h ], [ 0.000000e+00, %.lr.ph160 ] ; 2 uses
  %i.m = icmp eq i64 %indvars.iv221, %i.k
  br i1 %i.m, label %bb.h, label %.lr.ph150.us

.lr.ph150.us:                                     ; preds = %.lr.ph160.split.us
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv221
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !52
  %i.p = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.e
  %i.q = load double, ptr %i.p, align 8, !tbaa !24
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv221
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !12   ; 4 uses
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !12   ; 5 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph150.us, %bb.g
  %.0148.us = phi double [ 0.000000e+00, %.lr.ph150.us ], [ %.3.us, %bb.g ] ; 3 uses
  %.0121147.us = phi i32 [ 0, %.lr.ph150.us ], [ %i.cc, %bb.g ] ; 7 uses
  %i.u = sext i32 %.0121147.us to i64             ; 3 uses
  %i.v = getelementptr inbounds i8, ptr %i.s, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !tbaa !8     ; 2 uses
  %i.x = icmp eq i8 %i.w, 45
  br i1 %i.x, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = sext i8 %i.w to i64
  %i.z = getelementptr inbounds [512 x i8], ptr @amino_dis, i64 %i.y
  %i.aa = getelementptr inbounds i8, ptr %i.t, i64 %i.u
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !8   ; 2 uses
  %i.ac = sext i8 %i.ab to i64
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !4
  %i.af = sitofp i32 %i.ae to double
  %i.ag = fadd double %.0148.us, %i.af            ; 2 uses
  %i.ah = icmp eq i8 %i.ab, 45
  br i1 %i.ah, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.ai = fadd double %i.ag, %i.j                 ; 2 uses
  %i.aj = add nsw i32 %.0121147.us, 1
  %i.ak = sext i32 %i.aj to i64                   ; 2 uses
  %i.al = getelementptr inbounds i8, ptr %i.t, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !tbaa !8
  %i.an = icmp eq i8 %i.am, 45
  br i1 %i.an, label %.lr.ph.us, label %._crit_edge.us

._crit_edge.us.loopexit:                          ; preds = %.lr.ph.us
  %i.ao = trunc nsw i64 %indvars.iv215 to i32
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %._crit_edge.us.loopexit, %bb.d
  %.2123.lcssa.us = phi i32 [ %.0121147.us, %bb.d ], [ %i.ao, %._crit_edge.us.loopexit ] ; 2 uses
  %.2.lcssa.us = phi double [ %i.ai, %bb.d ], [ %i.ax, %._crit_edge.us.loopexit ] ; 2 uses
  %i.ap = icmp sgt i32 %.2123.lcssa.us, %i.g
  br i1 %i.ap, label %._crit_edge151.us, label %bb.g

.lr.ph.us:                                        ; preds = %bb.d, %.lr.ph.us
  %indvars.iv215 = phi i64 [ %indvars.iv.next216, %.lr.ph.us ], [ %i.ak, %bb.d ] ; 3 uses
  %.2139.us = phi double [ %i.ax, %.lr.ph.us ], [ %i.ai, %bb.d ]
  %i.aq = getelementptr inbounds i8, ptr %i.s, i64 %indvars.iv215
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !8
  %i.as = sext i8 %i.ar to i64
  %i.at = getelementptr inbounds [512 x i8], ptr @amino_dis, i64 %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 180
  %i.av = load i32, ptr %i.au, align 4, !tbaa !4
  %i.aw = sitofp i32 %i.av to double
  %i.ax = fadd double %.2139.us, %i.aw            ; 2 uses
  %indvars.iv.next216 = add nsw i64 %indvars.iv215, 1 ; 2 uses
  %i.ay = getelementptr inbounds i8, ptr %i.t, i64 %indvars.iv.next216
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !8
  %i.ba = icmp eq i8 %i.az, 45
  br i1 %i.ba, label %.lr.ph.us, label %._crit_edge.us.loopexit, !llvm.loop !62

bb.e:                                             ; preds = %bb.b
  %i.bb = getelementptr inbounds i8, ptr %i.t, i64 %i.u
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !8   ; 2 uses
  %i.bd = icmp eq i8 %i.bc, 45
  br i1 %i.bd, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.be = sext i8 %i.bc to i64
  %i.bf = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @amino_dis, i64 23040), i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !4
  %i.bh = sitofp i32 %i.bg to double
  %i.bi = fadd double %.0148.us, %i.bh
  %i.bj = fadd double %i.bi, %i.j                 ; 2 uses
  %i.bk = add nsw i32 %.0121147.us, 1
  %i.bl = sext i32 %i.bk to i64                   ; 2 uses
  %i.bm = getelementptr inbounds i8, ptr %i.s, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !8
  %i.bo = icmp eq i8 %i.bn, 45
  br i1 %i.bo, label %.lr.ph143.us, label %._crit_edge144.us

._crit_edge144.us.loopexit:                       ; preds = %.lr.ph143.us
  %i.bp = trunc nsw i64 %indvars.iv218 to i32
  br label %._crit_edge144.us

._crit_edge144.us:                                ; preds = %._crit_edge144.us.loopexit, %bb.f
  %.1122.lcssa.us = phi i32 [ %.0121147.us, %bb.f ], [ %i.bp, %._crit_edge144.us.loopexit ] ; 2 uses
  %.1.lcssa.us = phi double [ %i.bj, %bb.f ], [ %i.by, %._crit_edge144.us.loopexit ] ; 2 uses
  %i.bq = icmp sgt i32 %.1122.lcssa.us, %i.g
  br i1 %i.bq, label %._crit_edge151.us, label %bb.g

._crit_edge151.us:                                ; preds = %bb.g, %._crit_edge144.us, %._crit_edge.us
  %.4.us = phi double [ %.2.lcssa.us, %._crit_edge.us ], [ %.1.lcssa.us, %._crit_edge144.us ], [ %.3.us, %bb.g ]
  %i.br = tail call double @llvm.fmuladd.f64(double %.4.us, double %i.q, double %.0113158.us)
  br label %bb.h

.lr.ph143.us:                                     ; preds = %bb.f, %.lr.ph143.us
  %indvars.iv218 = phi i64 [ %indvars.iv.next219, %.lr.ph143.us ], [ %i.bl, %bb.f ] ; 3 uses
  %.1141.us = phi double [ %i.by, %.lr.ph143.us ], [ %i.bj, %bb.f ]
  %i.bs = getelementptr inbounds i8, ptr %i.t, i64 %indvars.iv218
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !8
  %i.bu = sext i8 %i.bt to i64
  %i.bv = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @amino_dis, i64 23040), i64 %i.bu
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !4
  %i.bx = sitofp i32 %i.bw to double
  %i.by = fadd double %.1141.us, %i.bx            ; 2 uses
  %indvars.iv.next219 = add nsw i64 %indvars.iv218, 1 ; 2 uses
  %i.bz = getelementptr inbounds i8, ptr %i.s, i64 %indvars.iv.next219
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !8
  %i.cb = icmp eq i8 %i.ca, 45
  br i1 %i.cb, label %.lr.ph143.us, label %._crit_edge144.us.loopexit, !llvm.loop !63

bb.g:                                             ; preds = %._crit_edge144.us, %bb.e, %._crit_edge.us, %bb.c
  %.3124.us = phi i32 [ %.0121147.us, %bb.e ], [ %.1122.lcssa.us, %._crit_edge144.us ], [ %.2123.lcssa.us, %._crit_edge.us ], [ %.0121147.us, %bb.c ]
  %.3.us = phi double [ %.0148.us, %bb.e ], [ %.1.lcssa.us, %._crit_edge144.us ], [ %.2.lcssa.us, %._crit_edge.us ], [ %i.ag, %bb.c ] ; 2 uses
  %i.cc = add nsw i32 %.3124.us, 1                ; 2 uses
  %i.cd = icmp slt i32 %i.cc, %i.c
  br i1 %i.cd, label %bb.b, label %._crit_edge151.us, !llvm.loop !64

bb.h:                                             ; preds = %._crit_edge151.us, %.lr.ph160.split.us
  %.1114.us = phi double [ %.0113158.us, %.lr.ph160.split.us ], [ %i.br, %._crit_edge151.us ] ; 2 uses
  %indvars.iv.next222 = add nuw nsw i64 %indvars.iv221, 1 ; 2 uses
  %exitcond225.not = icmp eq i64 %indvars.iv.next222, %wide.trip.count224
  br i1 %exitcond225.not, label %.preheader, label %.lr.ph160.split.us, !llvm.loop !65

.preheader.loopexit281.unr-lcssa:                 ; preds = %bb.s
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader, label %.lr.ph160.split.epil.preheader

.lr.ph160.split.epil.preheader:                   ; preds = %.preheader.loopexit281.unr-lcssa, %.lr.ph160.split.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph160.split.preheader ], [ %indvars.iv.next.1, %.preheader.loopexit281.unr-lcssa ] ; 2 uses
  %.0113158.epil.init = phi double [ 0.000000e+00, %.lr.ph160.split.preheader ], [ %.1114.1, %.preheader.loopexit281.unr-lcssa ] ; 2 uses
  %lcmp.mod283 = trunc i32 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod283)
  %i.ce = icmp eq i64 %indvars.iv.epil.init, %i.k
  br i1 %i.ce, label %.preheader, label %bb.i

bb.i:                                             ; preds = %.lr.ph160.split.epil.preheader
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.epil.init
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !52
  %i.ch = getelementptr inbounds [8 x i8], ptr %i.cg, i64 %i.e
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !24
  %i.cj = tail call double @llvm.fmuladd.f64(double %i.ci, double 0.000000e+00, double %.0113158.epil.init)
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit281.unr-lcssa, %bb.i, %.lr.ph160.split.epil.preheader, %bb.h
  %.0113.lcssa = phi double [ %.1114.us, %bb.h ], [ %.1114.1, %.preheader.loopexit281.unr-lcssa ], [ %.0113158.epil.init, %.lr.ph160.split.epil.preheader ], [ %i.cj, %bb.i ] ; 3 uses
  %.not = icmp eq i32 %1, 1
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.ck = add nsw i32 %1, -1
  %i.cl = add nsw i32 %i.c, -2                    ; 2 uses
  %i.cm = icmp sgt i32 %i.c, 0
  %i.cn = load i32, ptr @penalty, align 4
  %i.co = sitofp i32 %i.cn to double              ; 2 uses
  %i.cp = zext i32 %3 to i64                      ; 6 uses
  %wide.trip.count254 = zext nneg i32 %i.ck to i64 ; 2 uses
  %wide.trip.count249 = zext nneg i32 %1 to i64   ; 2 uses
  br i1 %i.cm, label %.lr.ph183.us, label %.lr.ph183.preheader

.lr.ph183.preheader:                              ; preds = %.lr.ph
  %i.cq = add nsw i64 %wide.trip.count224, -2
  br label %.lr.ph183

.loopexit.us:                                     ; preds = %bb.p, %.lr.ph183.us
  %.3116.lcssa.us = phi double [ %.2115197.us, %.lr.ph183.us ], [ %.4117.us189.us, %bb.p ] ; 2 uses
  %indvars.iv.next245 = add nuw nsw i64 %indvars.iv244, 1
  %exitcond255.not = icmp eq i64 %indvars.iv.next252, %wide.trip.count254
  br i1 %exitcond255.not, label %._crit_edge, label %.lr.ph183.us, !llvm.loop !66

.lr.ph183.us:                                     ; preds = %.lr.ph, %.loopexit.us
  %indvars.iv251 = phi i64 [ %indvars.iv.next252, %.loopexit.us ], [ 0, %.lr.ph ] ; 4 uses
  %indvars.iv244 = phi i64 [ %indvars.iv.next245, %.loopexit.us ], [ 1, %.lr.ph ] ; 2 uses
  %.2115197.us = phi double [ %.3116.lcssa.us, %.loopexit.us ], [ %.0113.lcssa, %.lr.ph ] ; 2 uses
  %indvars.iv.next252 = add nuw nsw i64 %indvars.iv251, 1 ; 2 uses
  %i.cr = icmp eq i64 %indvars.iv251, %i.cp
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv251
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv251
  br i1 %i.cr, label %.loopexit.us, label %.lr.ph183.split.us198

.lr.ph183.split.us198:                            ; preds = %.lr.ph183.us, %bb.p
  %indvars.iv246 = phi i64 [ %indvars.iv.next247, %bb.p ], [ %indvars.iv244, %.lr.ph183.us ] ; 4 uses
  %.3116181.us187.us = phi double [ %.4117.us189.us, %bb.p ], [ %.2115197.us, %.lr.ph183.us ] ; 2 uses
  %i.cu = icmp eq i64 %indvars.iv246, %i.cp
  br i1 %i.cu, label %bb.p, label %.lr.ph173.us.us

.lr.ph173.us.us:                                  ; preds = %.lr.ph183.split.us198
  %i.cv = load ptr, ptr %i.cs, align 8, !tbaa !52
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %indvars.iv246
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !24
  %i.cy = load ptr, ptr %i.ct, align 8, !tbaa !12 ; 4 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv246
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !12 ; 5 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.o, %.lr.ph173.us.us
  %.5171.us.us = phi double [ 0.000000e+00, %.lr.ph173.us.us ], [ %.8.us.us, %bb.o ] ; 3 uses
  %.4125170.us.us = phi i32 [ 0, %.lr.ph173.us.us ], [ %i.fj, %bb.o ] ; 7 uses
  %i.db = sext i32 %.4125170.us.us to i64         ; 3 uses
  %i.dc = getelementptr inbounds i8, ptr %i.cy, i64 %i.db
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !8   ; 2 uses
  %i.de = icmp eq i8 %i.dd, 45
  br i1 %i.de, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.df = sext i8 %i.dd to i64
  %i.dg = getelementptr inbounds [512 x i8], ptr @amino_dis, i64 %i.df
  %i.dh = getelementptr inbounds i8, ptr %i.da, i64 %i.db
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !8   ; 2 uses
  %i.dj = sext i8 %i.di to i64
  %i.dk = getelementptr inbounds [4 x i8], ptr %i.dg, i64 %i.dj
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !4
  %i.dm = sitofp i32 %i.dl to double
  %i.dn = fadd double %.5171.us.us, %i.dm         ; 2 uses
  %i.do = icmp eq i8 %i.di, 45
  br i1 %i.do, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.dp = fadd double %i.dn, %i.co                ; 2 uses
  %i.dq = add nsw i32 %.4125170.us.us, 1
  %i.dr = sext i32 %i.dq to i64                   ; 2 uses
  %i.ds = getelementptr inbounds i8, ptr %i.da, i64 %i.dr
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !8
  %i.du = icmp eq i8 %i.dt, 45
  br i1 %i.du, label %.lr.ph.us190.us, label %._crit_edge.us191.us

._crit_edge.us191.us.loopexit:                    ; preds = %.lr.ph.us190.us
  %i.dv = trunc nsw i64 %indvars.iv238 to i32
  br label %._crit_edge.us191.us

._crit_edge.us191.us:                             ; preds = %._crit_edge.us191.us.loopexit, %bb.l
  %.6127.lcssa.us.us = phi i32 [ %.4125170.us.us, %bb.l ], [ %i.dv, %._crit_edge.us191.us.loopexit ] ; 2 uses
  %.7.lcssa.us.us = phi double [ %i.dp, %bb.l ], [ %i.ee, %._crit_edge.us191.us.loopexit ] ; 2 uses
  %i.dw = icmp sgt i32 %.6127.lcssa.us.us, %i.cl
  br i1 %i.dw, label %._crit_edge174.us.us, label %bb.o

.lr.ph.us190.us:                                  ; preds = %bb.l, %.lr.ph.us190.us
  %indvars.iv238 = phi i64 [ %indvars.iv.next239, %.lr.ph.us190.us ], [ %i.dr, %bb.l ] ; 3 uses
  %.7162.us.us = phi double [ %i.ee, %.lr.ph.us190.us ], [ %i.dp, %bb.l ]
  %i.dx = getelementptr inbounds i8, ptr %i.cy, i64 %indvars.iv238
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !8
  %i.dz = sext i8 %i.dy to i64
  %i.ea = getelementptr inbounds [512 x i8], ptr @amino_dis, i64 %i.dz
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 180
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !4
  %i.ed = sitofp i32 %i.ec to double
  %i.ee = fadd double %.7162.us.us, %i.ed         ; 2 uses
  %indvars.iv.next239 = add nsw i64 %indvars.iv238, 1 ; 2 uses
  %i.ef = getelementptr inbounds i8, ptr %i.da, i64 %indvars.iv.next239
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !8
  %i.eh = icmp eq i8 %i.eg, 45
  br i1 %i.eh, label %.lr.ph.us190.us, label %._crit_edge.us191.us.loopexit, !llvm.loop !67

bb.m:                                             ; preds = %bb.j
  %i.ei = getelementptr inbounds i8, ptr %i.da, i64 %i.db
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !8   ; 2 uses
  %i.ek = icmp eq i8 %i.ej, 45
  br i1 %i.ek, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.el = sext i8 %i.ej to i64
  %i.em = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @amino_dis, i64 23040), i64 %i.el
  %i.en = load i32, ptr %i.em, align 4, !tbaa !4
  %i.eo = sitofp i32 %i.en to double
  %i.ep = fadd double %.5171.us.us, %i.eo
  %i.eq = fadd double %i.ep, %i.co                ; 2 uses
  %i.er = add nsw i32 %.4125170.us.us, 1
  %i.es = sext i32 %i.er to i64                   ; 2 uses
  %i.et = getelementptr inbounds i8, ptr %i.cy, i64 %i.es
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !8
  %i.ev = icmp eq i8 %i.eu, 45
  br i1 %i.ev, label %.lr.ph166.us.us, label %._crit_edge167.us.us

._crit_edge167.us.us.loopexit:                    ; preds = %.lr.ph166.us.us
  %i.ew = trunc nsw i64 %indvars.iv241 to i32
  br label %._crit_edge167.us.us

._crit_edge167.us.us:                             ; preds = %._crit_edge167.us.us.loopexit, %bb.n
  %.5126.lcssa.us.us = phi i32 [ %.4125170.us.us, %bb.n ], [ %i.ew, %._crit_edge167.us.us.loopexit ] ; 2 uses
  %.6.lcssa.us.us = phi double [ %i.eq, %bb.n ], [ %i.ff, %._crit_edge167.us.us.loopexit ] ; 2 uses
  %i.ex = icmp sgt i32 %.5126.lcssa.us.us, %i.cl
  br i1 %i.ex, label %._crit_edge174.us.us, label %bb.o

._crit_edge174.us.us:                             ; preds = %bb.o, %._crit_edge167.us.us, %._crit_edge.us191.us
  %.9.us.us = phi double [ %.7.lcssa.us.us, %._crit_edge.us191.us ], [ %.6.lcssa.us.us, %._crit_edge167.us.us ], [ %.8.us.us, %bb.o ]
  %i.ey = tail call double @llvm.fmuladd.f64(double %.9.us.us, double %i.cx, double %.3116181.us187.us)
  br label %bb.p

.lr.ph166.us.us:                                  ; preds = %bb.n, %.lr.ph166.us.us
  %indvars.iv241 = phi i64 [ %indvars.iv.next242, %.lr.ph166.us.us ], [ %i.es, %bb.n ] ; 3 uses
  %.6164.us.us = phi double [ %i.ff, %.lr.ph166.us.us ], [ %i.eq, %bb.n ]
  %i.ez = getelementptr inbounds i8, ptr %i.da, i64 %indvars.iv241
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !8
  %i.fb = sext i8 %i.fa to i64
  %i.fc = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @amino_dis, i64 23040), i64 %i.fb
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !4
  %i.fe = sitofp i32 %i.fd to double
  %i.ff = fadd double %.6164.us.us, %i.fe         ; 2 uses
  %indvars.iv.next242 = add nsw i64 %indvars.iv241, 1 ; 2 uses
  %i.fg = getelementptr inbounds i8, ptr %i.cy, i64 %indvars.iv.next242
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !8
  %i.fi = icmp eq i8 %i.fh, 45
  br i1 %i.fi, label %.lr.ph166.us.us, label %._crit_edge167.us.us.loopexit, !llvm.loop !68

bb.o:                                             ; preds = %._crit_edge167.us.us, %bb.m, %._crit_edge.us191.us, %bb.k
  %.7128.us.us = phi i32 [ %.4125170.us.us, %bb.m ], [ %.5126.lcssa.us.us, %._crit_edge167.us.us ], [ %.6127.lcssa.us.us, %._crit_edge.us191.us ], [ %.4125170.us.us, %bb.k ]
  %.8.us.us = phi double [ %.5171.us.us, %bb.m ], [ %.6.lcssa.us.us, %._crit_edge167.us.us ], [ %.7.lcssa.us.us, %._crit_edge.us191.us ], [ %i.dn, %bb.k ] ; 2 uses
  %i.fj = add nsw i32 %.7128.us.us, 1             ; 2 uses
  %i.fk = icmp slt i32 %i.fj, %i.c
  br i1 %i.fk, label %bb.j, label %._crit_edge174.us.us, !llvm.loop !69

bb.p:                                             ; preds = %._crit_edge174.us.us, %.lr.ph183.split.us198
  %.4117.us189.us = phi double [ %.3116181.us187.us, %.lr.ph183.split.us198 ], [ %i.ey, %._crit_edge174.us.us ] ; 2 uses
  %indvars.iv.next247 = add nuw nsw i64 %indvars.iv246, 1 ; 2 uses
  %exitcond250.not = icmp eq i64 %indvars.iv.next247, %wide.trip.count249
  br i1 %exitcond250.not, label %.loopexit.us, label %.lr.ph183.split.us198, !llvm.loop !70

.lr.ph160.split:                                  ; preds = %bb.s, %.lr.ph160.split.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph160.split.preheader.new ], [ %indvars.iv.next.1, %bb.s ] ; 4 uses
  %.0113158 = phi double [ 0.000000e+00, %.lr.ph160.split.preheader.new ], [ %.1114.1, %bb.s ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph160.split.preheader.new ], [ %niter.next.1, %bb.s ]
  %i.fl = icmp eq i64 %indvars.iv, %i.k
  br i1 %i.fl, label %.lr.ph160.split.1, label %bb.q

bb.q:                                             ; preds = %.lr.ph160.split
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !52
  %i.fo = getelementptr inbounds [8 x i8], ptr %i.fn, i64 %i.e
  %i.fp = load double, ptr %i.fo, align 8, !tbaa !24
  %i.fq = tail call double @llvm.fmuladd.f64(double %i.fp, double 0.000000e+00, double %.0113158)
  br label %.lr.ph160.split.1

.lr.ph160.split.1:                                ; preds = %.lr.ph160.split, %bb.q
  %.1114 = phi double [ %.0113158, %.lr.ph160.split ], [ %i.fq, %bb.q ] ; 2 uses
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.fr = icmp eq i64 %indvars.iv.next, %i.k
  br i1 %i.fr, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph160.split.1
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !52
  %i.fu = getelementptr inbounds [8 x i8], ptr %i.ft, i64 %i.e
  %i.fv = load double, ptr %i.fu, align 8, !tbaa !24
  %i.fw = tail call double @llvm.fmuladd.f64(double %i.fv, double 0.000000e+00, double %.1114)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph160.split.1
  %.1114.1 = phi double [ %.1114, %.lr.ph160.split.1 ], [ %i.fw, %bb.r ] ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.loopexit281.unr-lcssa, label %.lr.ph160.split, !llvm.loop !65

.loopexit:                                        ; preds = %.lr.ph183.split.prol.loopexit, %bb.w, %.lr.ph183
  %.3116.lcssa = phi double [ %.2115197, %.lr.ph183 ], [ %.4117.lcssa.unr, %.lr.ph183.split.prol.loopexit ], [ %.4117.1, %bb.w ] ; 2 uses
  %indvars.iv.next227 = add nuw nsw i64 %indvars.iv226, 1
  %exitcond237.not = icmp eq i64 %indvars.iv.next234, %wide.trip.count254
  br i1 %exitcond237.not, label %._crit_edge, label %.lr.ph183, !llvm.loop !66

.lr.ph183:                                        ; preds = %.lr.ph183.preheader, %.loopexit
  %indvars.iv233 = phi i64 [ %indvars.iv.next234, %.loopexit ], [ 0, %.lr.ph183.preheader ] ; 5 uses
  %indvars.iv226 = phi i64 [ %indvars.iv.next227, %.loopexit ], [ 1, %.lr.ph183.preheader ] ; 5 uses
  %.2115197 = phi double [ %.3116.lcssa, %.loopexit ], [ %.0113.lcssa, %.lr.ph183.preheader ] ; 4 uses
  %indvars.iv.next234 = add nuw nsw i64 %indvars.iv233, 1 ; 2 uses
  %i.fx = icmp eq i64 %indvars.iv233, %i.cp
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv233 ; 3 uses
  br i1 %i.fx, label %.loopexit, label %.lr.ph183.split.preheader

.lr.ph183.split.preheader:                        ; preds = %.lr.ph183
  %i.fz = sub nsw i64 %indvars.iv233, %wide.trip.count224
  %i.ga = and i64 %i.fz, 1
  %lcmp.mod285.not.not = icmp eq i64 %i.ga, 0
  br i1 %lcmp.mod285.not.not, label %.lr.ph183.split.prol, label %.lr.ph183.split.prol.loopexit

.lr.ph183.split.prol:                             ; preds = %.lr.ph183.split.preheader
  %i.gb = icmp eq i64 %indvars.iv226, %i.cp
  br i1 %i.gb, label %.lr.ph183.split.prol.loopexit.unr-lcssa, label %bb.t

bb.t:                                             ; preds = %.lr.ph183.split.prol
  %i.gc = load ptr, ptr %i.fy, align 8, !tbaa !52
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.gc, i64 %indvars.iv226
  %i.ge = load double, ptr %i.gd, align 8, !tbaa !24
  %i.gf = tail call double @llvm.fmuladd.f64(double %i.ge, double 0.000000e+00, double %.2115197)
  br label %.lr.ph183.split.prol.loopexit.unr-lcssa

.lr.ph183.split.prol.loopexit.unr-lcssa:          ; preds = %bb.t, %.lr.ph183.split.prol
  %.4117.prol = phi double [ %.2115197, %.lr.ph183.split.prol ], [ %i.gf, %bb.t ] ; 2 uses
  %indvars.iv.next229.prol = add nuw nsw i64 %indvars.iv226, 1
  br label %.lr.ph183.split.prol.loopexit

.lr.ph183.split.prol.loopexit:                    ; preds = %.lr.ph183.split.prol.loopexit.unr-lcssa, %.lr.ph183.split.preheader
  %.4117.lcssa.unr = phi double [ poison, %.lr.ph183.split.preheader ], [ %.4117.prol, %.lr.ph183.split.prol.loopexit.unr-lcssa ]
  %indvars.iv228.unr = phi i64 [ %indvars.iv226, %.lr.ph183.split.preheader ], [ %indvars.iv.next229.prol, %.lr.ph183.split.prol.loopexit.unr-lcssa ]
  %.3116181.unr = phi double [ %.2115197, %.lr.ph183.split.preheader ], [ %.4117.prol, %.lr.ph183.split.prol.loopexit.unr-lcssa ]
  %i.gg = icmp eq i64 %i.cq, %indvars.iv233
  br i1 %i.gg, label %.loopexit, label %.lr.ph183.split

.lr.ph183.split:                                  ; preds = %.lr.ph183.split.prol.loopexit, %bb.w
  %indvars.iv228 = phi i64 [ %indvars.iv.next229.1, %bb.w ], [ %indvars.iv228.unr, %.lr.ph183.split.prol.loopexit ] ; 4 uses
  %.3116181 = phi double [ %.4117.1, %bb.w ], [ %.3116181.unr, %.lr.ph183.split.prol.loopexit ] ; 2 uses
  %i.gh = icmp eq i64 %indvars.iv228, %i.cp
  br i1 %i.gh, label %.lr.ph183.split.1, label %bb.u

bb.u:                                             ; preds = %.lr.ph183.split
  %i.gi = load ptr, ptr %i.fy, align 8, !tbaa !52
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.gi, i64 %indvars.iv228
  %i.gk = load double, ptr %i.gj, align 8, !tbaa !24
  %i.gl = tail call double @llvm.fmuladd.f64(double %i.gk, double 0.000000e+00, double %.3116181)
  br label %.lr.ph183.split.1

.lr.ph183.split.1:                                ; preds = %.lr.ph183.split, %bb.u
  %.4117 = phi double [ %.3116181, %.lr.ph183.split ], [ %i.gl, %bb.u ] ; 2 uses
  %indvars.iv.next229 = add nuw nsw i64 %indvars.iv228, 1 ; 2 uses
  %i.gm = icmp eq i64 %indvars.iv.next229, %i.cp
  br i1 %i.gm, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.lr.ph183.split.1
  %i.gn = load ptr, ptr %i.fy, align 8, !tbaa !52
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %indvars.iv.next229
  %i.gp = load double, ptr %i.go, align 8, !tbaa !24
  %i.gq = tail call double @llvm.fmuladd.f64(double %i.gp, double 0.000000e+00, double %.4117)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.lr.ph183.split.1
  %.4117.1 = phi double [ %.4117, %.lr.ph183.split.1 ], [ %i.gq, %bb.v ] ; 2 uses
  %indvars.iv.next229.1 = add nuw nsw i64 %indvars.iv228, 2 ; 2 uses
  %exitcond232.not.1 = icmp eq i64 %indvars.iv.next229.1, %wide.trip.count249
  br i1 %exitcond232.not.1, label %.loopexit, label %.lr.ph183.split, !llvm.loop !70

._crit_edge:                                      ; preds = %.loopexit, %.loopexit.us, %bb.a, %.preheader
  %.2115.lcssa = phi double [ %.0113.lcssa, %.preheader ], [ %.3116.lcssa.us, %.loopexit.us ], [ 0.000000e+00, %bb.a ], [ %.3116.lcssa, %.loopexit ]
  ret double %.2115.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local double @score_calc4(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 %3) local_unnamed_addr #11 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !12
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #29
  %.fr102 = freeze i64 %i.b
  %i.c = trunc i64 %.fr102 to i32                 ; 3 uses
  %i.d = add i32 %1, -1                           ; 2 uses
  %i.e = icmp sgt i32 %1, 1
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = load i32, ptr @mix, align 4
  %.fr101 = freeze i32 %i.f
  %i.g = icmp eq i32 %.fr101, 1                   ; 2 uses
  %i.h = add nsw i32 %i.c, -2                     ; 2 uses
  %i.i = icmp sgt i32 %i.c, 0
  %i.j = load i32, ptr @scoremtx, align 4
  %.not = icmp eq i32 %i.j, 0
  %i.k = select i1 %.not, i32 400, i32 0
  %i.l = load i32, ptr @penalty, align 4
  %i.m = load i32, ptr getelementptr inbounds nuw (i8, ptr @n_dis, i64 2496), align 16
  %i.n = sub nsw i32 %i.l, %i.m
  %i.o = sext i32 %i.n to i64                     ; 2 uses
  br i1 %i.i, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %wide.trip.count130 = zext nneg i32 %i.d to i64
  %wide.trip.count125 = zext nneg i32 %1 to i64
  br label %.lr.ph76.us

.loopexit.us:                                     ; preds = %._crit_edge.us.us
  %indvars.iv.next121 = add nuw nsw i64 %indvars.iv120, 1
  %exitcond131.not = icmp eq i64 %indvars.iv.next128, %wide.trip.count130
  br i1 %exitcond131.not, label %._crit_edge, label %.lr.ph76.us, !llvm.loop !71

.lr.ph76.us:                                      ; preds = %.loopexit.us, %.lr.ph.split.us.preheader
  %indvars.iv127 = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %indvars.iv.next128, %.loopexit.us ] ; 3 uses
  %indvars.iv120 = phi i64 [ 1, %.lr.ph.split.us.preheader ], [ %indvars.iv.next121, %.loopexit.us ] ; 2 uses
  %.05287.us = phi double [ 0.000000e+00, %.lr.ph.split.us.preheader ], [ %i.bb, %.loopexit.us ]
  %.05786.us = phi double [ 0.000000e+00, %.lr.ph.split.us.preheader ], [ %.4.us.us, %.loopexit.us ]
  %indvars.iv.next128 = add nuw nsw i64 %indvars.iv127, 1 ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv127
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !52
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv127
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !12   ; 2 uses
  br label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %._crit_edge.us.us, %.lr.ph76.us
  %indvars.iv122 = phi i64 [ %indvars.iv.next123, %._crit_edge.us.us ], [ %indvars.iv120, %.lr.ph76.us ] ; 3 uses
  %.15373.us.us = phi double [ %i.bb, %._crit_edge.us.us ], [ %.05287.us, %.lr.ph76.us ]
  %.15872.us.us = phi double [ %.4.us.us, %._crit_edge.us.us ], [ %.05786.us, %.lr.ph76.us ]
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv122
  %i.u = load double, ptr %i.t, align 8, !tbaa !24
  %spec.store.select.us.us = select i1 %i.g, double 1.000000e+00, double %i.u ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv122
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !12   ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.lr.ph.us.us
  %.05164.us.us = phi i64 [ 0, %.lr.ph.us.us ], [ %.1.us.us, %bb.f ] ; 2 uses
  %.05463.us.us = phi i32 [ 0, %.lr.ph.us.us ], [ %i.bc, %bb.f ] ; 3 uses
  %.25962.us.us = phi double [ %.15872.us.us, %.lr.ph.us.us ], [ %.360.us.us, %bb.f ] ; 2 uses
  %i.x = sext i32 %.05463.us.us to i64            ; 4 uses
  %i.y = getelementptr inbounds i8, ptr %i.s, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !8     ; 2 uses
  %i.aa = icmp eq i8 %i.z, 45                     ; 2 uses
  %i.ab = getelementptr inbounds i8, ptr %i.w, i64 %i.x
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !8   ; 3 uses
  %i.ad = icmp eq i8 %i.ac, 45
  %or.cond = select i1 %i.aa, i1 %i.ad, i1 false
  br i1 %or.cond, label %bb.f, label %._crit_edge132

._crit_edge132:                                   ; preds = %bb.b
  %i.ae = sext i8 %i.z to i64
  %i.af = getelementptr inbounds [512 x i8], ptr @amino_dis, i64 %i.ae
  %i.ag = sext i8 %i.ac to i64
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !4
  %i.aj = add nsw i32 %i.k, %i.ai
  %i.ak = sext i32 %i.aj to i64
  %i.al = add nsw i64 %.05164.us.us, %i.ak        ; 3 uses
  %i.am = fadd double %spec.store.select.us.us, %.25962.us.us ; 5 uses
  br i1 %i.aa, label %.preheader, label %bb.c

bb.c:                                             ; preds = %._crit_edge132
  %i.an = icmp eq i8 %i.ac, 45
  br i1 %i.an, label %.preheader140, label %bb.f

.preheader140:                                    ; preds = %bb.c, %.preheader140
  %indvars.iv114 = phi i64 [ %indvars.iv.next115, %.preheader140 ], [ %i.x, %bb.c ] ; 2 uses
  %indvars.iv.next115 = add nsw i64 %indvars.iv114, 1 ; 2 uses
  %i.ao = getelementptr inbounds i8, ptr %i.w, i64 %indvars.iv.next115
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !8
  %i.aq = icmp eq i8 %i.ap, 45
  br i1 %i.aq, label %.preheader140, label %bb.d, !llvm.loop !72

bb.d:                                             ; preds = %.preheader140
  %i.ar = add nsw i64 %i.al, %i.o                 ; 2 uses
  %i.as = trunc nsw i64 %indvars.iv114 to i32     ; 2 uses
  %i.at = icmp slt i32 %i.h, %i.as
  br i1 %i.at, label %._crit_edge.us.us, label %bb.f

.preheader:                                       ; preds = %._crit_edge132, %.preheader
  %indvars.iv117 = phi i64 [ %indvars.iv.next118, %.preheader ], [ %i.x, %._crit_edge132 ] ; 2 uses
  %indvars.iv.next118 = add nsw i64 %indvars.iv117, 1 ; 2 uses
  %i.au = getelementptr inbounds i8, ptr %i.s, i64 %indvars.iv.next118
  %i.av = load i8, ptr %i.au, align 1, !tbaa !8
  %i.aw = icmp eq i8 %i.av, 45
  br i1 %i.aw, label %.preheader, label %bb.e, !llvm.loop !73

bb.e:                                             ; preds = %.preheader
  %i.ax = add nsw i64 %i.al, %i.o                 ; 2 uses
  %i.ay = trunc nsw i64 %indvars.iv117 to i32     ; 2 uses
  %i.az = icmp slt i32 %i.h, %i.ay
  br i1 %i.az, label %._crit_edge.us.us, label %bb.f

._crit_edge.us.us:                                ; preds = %bb.f, %bb.e, %bb.d
  %.4.us.us = phi double [ %i.am, %bb.d ], [ %i.am, %bb.e ], [ %.360.us.us, %bb.f ] ; 3 uses
  %.2.us.us = phi i64 [ %i.ar, %bb.d ], [ %i.ax, %bb.e ], [ %.1.us.us, %bb.f ]
  %i.ba = sitofp i64 %.2.us.us to double
  %i.bb = tail call double @llvm.fmuladd.f64(double %i.ba, double %spec.store.select.us.us, double %.15373.us.us) ; 3 uses
  %indvars.iv.next123 = add nuw nsw i64 %indvars.iv122, 1 ; 2 uses
  %exitcond126.not = icmp eq i64 %indvars.iv.next123, %wide.trip.count125
  br i1 %exitcond126.not, label %.loopexit.us, label %.lr.ph.us.us, !llvm.loop !74

bb.f:                                             ; preds = %bb.b, %bb.e, %bb.d, %bb.c
  %.360.us.us = phi double [ %.25962.us.us, %bb.b ], [ %i.am, %bb.e ], [ %i.am, %bb.d ], [ %i.am, %bb.c ] ; 2 uses
  %.3.us.us = phi i32 [ %.05463.us.us, %bb.b ], [ %i.ay, %bb.e ], [ %i.as, %bb.d ], [ %.05463.us.us, %bb.c ]
  %.1.us.us = phi i64 [ %.05164.us.us, %bb.b ], [ %i.ax, %bb.e ], [ %i.ar, %bb.d ], [ %i.al, %bb.c ] ; 2 uses
  %i.bc = add nsw i32 %.3.us.us, 1                ; 2 uses
  %i.bd = icmp slt i32 %i.bc, %i.c
  br i1 %i.bd, label %bb.b, label %._crit_edge.us.us, !llvm.loop !75

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %i.g, label %._crit_edge, label %.lr.ph.split.split.preheader

.lr.ph.split.split.preheader:                     ; preds = %.lr.ph.split
  %wide.trip.count112 = zext nneg i32 %i.d to i64
  %wide.trip.count = zext nneg i32 %1 to i64      ; 3 uses
  %i.be = add nsw i64 %wide.trip.count, -2
  br label %.lr.ph76

.loopexit:                                        ; preds = %.lr.ph76.new, %.prol.loopexit
  %.lcssa144 = phi double [ %.lcssa144.unr, %.prol.loopexit ], [ %i.cc, %.lr.ph76.new ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond113.not = icmp eq i64 %indvars.iv.next110, %wide.trip.count112
  br i1 %exitcond113.not, label %._crit_edge, label %.lr.ph76, !llvm.loop !71

.lr.ph76:                                         ; preds = %.loopexit, %.lr.ph.split.split.preheader
  %indvars.iv109 = phi i64 [ 0, %.lr.ph.split.split.preheader ], [ %indvars.iv.next110, %.loopexit ] ; 4 uses
  %indvars.iv = phi i64 [ 1, %.lr.ph.split.split.preheader ], [ %indvars.iv.next, %.loopexit ] ; 3 uses
  %.05287 = phi double [ 0.000000e+00, %.lr.ph.split.split.preheader ], [ %.lcssa144, %.loopexit ] ; 2 uses
  %i.bf = xor i64 %indvars.iv109, -1
  %i.bg = add nsw i64 %i.bf, %wide.trip.count
  %i.bh = sub i64 %i.be, %indvars.iv109
  %indvars.iv.next110 = add nuw nsw i64 %indvars.iv109, 1 ; 2 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv109
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !52 ; 5 uses
  %xtraiter = and i64 %i.bg, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph76, %.prol.preheader
  %indvars.iv106.prol = phi i64 [ %indvars.iv.next107.prol, %.prol.preheader ], [ %indvars.iv, %.lr.ph76 ] ; 2 uses
  %.15373.prol = phi double [ %i.bm, %.prol.preheader ], [ %.05287, %.lr.ph76 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph76 ]
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv106.prol
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !24
  %i.bm = tail call double @llvm.fmuladd.f64(double %i.bl, double 0.000000e+00, double %.15373.prol) ; 3 uses
  %indvars.iv.next107.prol = add nuw nsw i64 %indvars.iv106.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !76

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph76
  %.lcssa144.unr = phi double [ poison, %.lr.ph76 ], [ %i.bm, %.prol.preheader ]
  %indvars.iv106.unr = phi i64 [ %indvars.iv, %.lr.ph76 ], [ %indvars.iv.next107.prol, %.prol.preheader ]
  %.15373.unr = phi double [ %.05287, %.lr.ph76 ], [ %i.bm, %.prol.preheader ]
  %i.bn = icmp ult i64 %i.bh, 3
  br i1 %i.bn, label %.loopexit, label %.lr.ph76.new

.lr.ph76.new:                                     ; preds = %.prol.loopexit, %.lr.ph76.new
  %indvars.iv106 = phi i64 [ %indvars.iv.next107.3, %.lr.ph76.new ], [ %indvars.iv106.unr, %.prol.loopexit ] ; 5 uses
  %.15373 = phi double [ %i.cc, %.lr.ph76.new ], [ %.15373.unr, %.prol.loopexit ]
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv106
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !24
  %i.bq = tail call double @llvm.fmuladd.f64(double %i.bp, double 0.000000e+00, double %.15373)
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv106
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !24
  %i.bu = tail call double @llvm.fmuladd.f64(double %i.bt, double 0.000000e+00, double %i.bq)
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv106
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !24
  %i.by = tail call double @llvm.fmuladd.f64(double %i.bx, double 0.000000e+00, double %i.bu)
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv106
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !24
  %i.cc = tail call double @llvm.fmuladd.f64(double %i.cb, double 0.000000e+00, double %i.by) ; 2 uses
  %indvars.iv.next107.3 = add nuw nsw i64 %indvars.iv106, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next107.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.loopexit, label %.lr.ph76.new, !llvm.loop !74

._crit_edge:                                      ; preds = %.loopexit, %.loopexit.us, %.lr.ph.split, %bb.a
  %.057.lcssa = phi double [ 0.000000e+00, %bb.a ], [ %.4.us.us, %.loopexit.us ], [ 0.000000e+00, %.lr.ph.split ], [ 0.000000e+00, %.loopexit ]
  %.052.lcssa = phi double [ 0.000000e+00, %bb.a ], [ %i.bb, %.loopexit.us ], [ 0.000000e+00, %.lr.ph.split ], [ %.lcssa144, %.loopexit ]
  %i.cd = fdiv double %.052.lcssa, %.057.lcssa
  ret double %i.cd
}

; Function Attrs: nounwind uwtable
define dso_local void @upg2(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #12 {
bb.a:
  %i.a = alloca [50000 x double], align 16        ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  %i.b = load ptr, ptr @upg2.pair, align 8, !tbaa !77 ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr @njob, align 4, !tbaa !4   ; 2 uses
  %i.d = tail call ptr @AllocateCharMtx(i32 noundef %i.c, i32 noundef %i.c) #33 ; 2 uses
  store ptr %i.d, ptr @upg2.pair, align 8, !tbaa !77
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = phi ptr [ %i.d, %bb.b ], [ %i.b, %bb.a ] ; 11 uses
  %i.f = icmp sgt i32 %0, 0
  br i1 %i.f, label %.preheader155.lr.ph, label %._crit_edge199

.preheader155.lr.ph:                              ; preds = %bb.c
  %i.g = zext nneg i32 %0 to i64
  %i.h = shl nuw nsw i64 %i.g, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.a, i8 0, i64 %i.h, i1 false), !tbaa !24
  %wide.trip.count205 = zext nneg i32 %0 to i64   ; 15 uses
  %i.i = add nsw i64 %wide.trip.count205, -1      ; 4 uses
  %xtraiter = and i64 %wide.trip.count205, 3      ; 3 uses
  %i.j = icmp ult i32 %0, 4
  %unroll_iter = and i64 %wide.trip.count205, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod256 = icmp ne i64 %xtraiter, 0
  br label %.preheader155

.preheader155:                                    ; preds = %.preheader155.lr.ph, %._crit_edge
  %indvars.iv202 = phi i64 [ 0, %.preheader155.lr.ph ], [ %indvars.iv.next203, %._crit_edge ] ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv202 ; 5 uses
  br i1 %i.j, label %.epil.preheader, label %.preheader155.new

.lr.ph162:                                        ; preds = %._crit_edge
  %xtraiter258 = and i64 %wide.trip.count205, 3   ; 3 uses
  %i.l = icmp ult i32 %0, 4
  br i1 %i.l, label %.epil.preheader257, label %.lr.ph162.new

.lr.ph162.new:                                    ; preds = %.lr.ph162
  %unroll_iter262 = and i64 %wide.trip.count205, 2147483644
  br label %bb.f

.preheader155.new:                                ; preds = %.preheader155, %.preheader155.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.preheader155.new ], [ 0, %.preheader155 ] ; 5 uses
  %niter = phi i64 [ %niter.next.3, %.preheader155.new ], [ 0, %.preheader155 ]
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !12
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv
  store i8 0, ptr %i.n, align 1, !tbaa !8
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !12
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %indvars.iv
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  store i8 0, ptr %i.q, align 1, !tbaa !8
  %i.r = load ptr, ptr %i.k, align 8, !tbaa !12
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %indvars.iv
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  store i8 0, ptr %i.t, align 1, !tbaa !8
  %i.u = load ptr, ptr %i.k, align 8, !tbaa !12
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %indvars.iv
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 3
  store i8 0, ptr %i.w, align 1, !tbaa !8
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %.preheader155.new, !llvm.loop !80

._crit_edge.unr-lcssa:                            ; preds = %.preheader155.new
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.preheader155
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader155 ], [ %indvars.iv.next.3, %._crit_edge.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod256)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.d ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.x = load ptr, ptr %i.k, align 8, !tbaa !12
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %indvars.iv.epil
  store i8 0, ptr %i.y, align 1, !tbaa !8
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.d, !llvm.loop !81

._crit_edge:                                      ; preds = %bb.d, %._crit_edge.unr-lcssa
  %indvars.iv.next203 = add nuw nsw i64 %indvars.iv202, 1 ; 2 uses
  %exitcond206.not = icmp eq i64 %indvars.iv.next203, %wide.trip.count205
  br i1 %exitcond206.not, label %.lr.ph162, label %.preheader155, !llvm.loop !82

.preheader153.unr-lcssa:                          ; preds = %bb.f
  %lcmp.mod260.not = icmp eq i64 %xtraiter258, 0
  br i1 %lcmp.mod260.not, label %.preheader153, label %.epil.preheader257

.epil.preheader257:                               ; preds = %.preheader153.unr-lcssa, %.lr.ph162
  %indvars.iv207.epil.init = phi i64 [ 0, %.lr.ph162 ], [ %indvars.iv.next208.3, %.preheader153.unr-lcssa ]
  %lcmp.mod261 = icmp ne i64 %xtraiter258, 0
  tail call void @llvm.assume(i1 %lcmp.mod261)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.epil.preheader257
  %indvars.iv207.epil = phi i64 [ %indvars.iv207.epil.init, %.epil.preheader257 ], [ %indvars.iv.next208.epil, %bb.e ] ; 3 uses
  %epil.iter259 = phi i64 [ 0, %.epil.preheader257 ], [ %epil.iter259.next, %bb.e ]
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv207.epil
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !12
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %indvars.iv207.epil
  store i8 1, ptr %i.ab, align 1, !tbaa !8
  %indvars.iv.next208.epil = add nuw nsw i64 %indvars.iv207.epil, 1
  %epil.iter259.next = add i64 %epil.iter259, 1   ; 2 uses
  %epil.iter259.cmp.not = icmp eq i64 %epil.iter259.next, %xtraiter258
  br i1 %epil.iter259.cmp.not, label %.preheader153, label %bb.e, !llvm.loop !83

.preheader153:                                    ; preds = %bb.e, %.preheader153.unr-lcssa
  %.not255 = icmp eq i32 %0, 1
  br i1 %.not255, label %._crit_edge199, label %.preheader152.lr.ph

.preheader152.lr.ph:                              ; preds = %.preheader153
  %i.ac = add nsw i32 %0, -1
  %wide.trip.count248 = zext nneg i32 %i.ac to i64 ; 2 uses
  %wide.trip.count217 = zext nneg i32 %0 to i64
  %i.ad = add nsw i64 %wide.trip.count205, -2
  %xtraiter267 = and i64 %wide.trip.count205, 1
  %i.ae = icmp eq i64 %i.i, 0
  %unroll_iter272 = and i64 %wide.trip.count205, 2147483646
end_hunk_1
begin_hunk_2_@loadtree:bb.a
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !8   ; 2 uses
  %i.ai = sext i8 %i.ah to i64
  %i.aj = getelementptr inbounds [2 x i8], ptr %i.ae, i64 %i.ai
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !102
  %i.al = and i16 %i.ak, 8
  %.not211 = icmp eq i16 %i.al, 0
  %spec.select = select i1 %.not211, i8 95, i8 %i.ah
  %i.am = getelementptr inbounds nuw i8, ptr %i.aa, i64 %indvars.iv
  store i8 %spec.select, ptr %i.am, align 1, !tbaa !8
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.an = load ptr, ptr %i.z, align 8, !tbaa !100
  %i.ao = load ptr, ptr %i.ab, align 8, !tbaa !12
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %indvars.iv.next
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !8   ; 2 uses
  %i.ar = sext i8 %i.aq to i64
  %i.as = getelementptr inbounds [2 x i8], ptr %i.an, i64 %i.ar
  %i.at = load i16, ptr %i.as, align 2, !tbaa !102
  %i.au = and i16 %i.at, 8
  %.not211.1 = icmp eq i16 %i.au, 0
  %spec.select.1 = select i1 %.not211.1, i8 95, i8 %i.aq
  %i.av = getelementptr inbounds nuw i8, ptr %i.aa, i64 %indvars.iv.next
  store i8 %spec.select.1, ptr %i.av, align 1, !tbaa !8
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 30
  br i1 %exitcond.not.1, label %bb.g, label %bb.f, !llvm.loop !104

bb.g:                                             ; preds = %bb.f
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aa, i64 30
  store i8 0, ptr %i.aw, align 1, !tbaa !8
  %i.ax = load ptr, ptr @loadtree.tree, align 8, !tbaa !77
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv259
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !12
  %indvars.iv.next260 = add nuw nsw i64 %indvars.iv259, 1 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  %i.bb = trunc nuw nsw i64 %indvars.iv.next260 to i32
  %i.bc = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.az, ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %i.bb, ptr noundef nonnull %i.ba) #33 ; 0 uses
  %exitcond262.not = icmp eq i64 %indvars.iv.next260, %wide.trip.count
  br i1 %exitcond262.not, label %.lr.ph.preheader, label %.preheader218, !llvm.loop !105

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %i.bd = phi ptr [ %.pre278, %.lr.ph.preheader.new ], [ %i.ad, %.lr.ph ]
  %indvars.iv263 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next264.1, %.lr.ph ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.be = getelementptr inbounds nuw [24 x i8], ptr %i.bd, i64 %indvars.iv263 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  store ptr %i.bf, ptr %i.be, align 8, !tbaa !106
  %i.bg = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %indvars.iv263 ; 2 uses
  %i.bh = getelementptr inbounds i8, ptr %i.bg, i64 -24
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !108
  %i.bj = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %indvars.iv263
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = trunc nuw nsw i64 %indvars.iv263 to i32
  store i32 %i.bl, ptr %i.bk, align 8, !tbaa !109
  %indvars.iv.next264 = or disjoint i64 %indvars.iv263, 1 ; 4 uses
  %i.bm = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %indvars.iv.next264 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  store ptr %i.bn, ptr %i.bm, align 8, !tbaa !106
  %i.bo = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %indvars.iv.next264 ; 2 uses
  %i.bp = getelementptr inbounds i8, ptr %i.bo, i64 -24
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store ptr %i.bp, ptr %i.bq, align 8, !tbaa !108
  %i.br = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %indvars.iv.next264
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = trunc nuw nsw i64 %indvars.iv.next264 to i32
  store i32 %i.bt, ptr %i.bs, align 8, !tbaa !109
  %indvars.iv.next264.1 = add nuw nsw i64 %indvars.iv263, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph225.unr-lcssa, label %.lr.ph, !llvm.loop !110

._crit_edge226.thread:                            ; preds = %bb.e
  %.pre278292 = load ptr, ptr @loadtree.ac, align 8, !tbaa !98
  %i.bu = sext i32 %0 to i64
  %i.bv = getelementptr [24 x i8], ptr %.pre278292, i64 %i.bu
  %i.bw = getelementptr i8, ptr %i.bv, i64 -24
  store ptr null, ptr %i.bw, align 8, !tbaa !106
  %i.bx = load ptr, ptr @stderr, align 8, !tbaa !15
  %fputc293 = tail call i32 @fputc(i32 10, ptr %i.bx) ; 0 uses
  br label %._crit_edge253

.lr.ph225.unr-lcssa:                              ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph225, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.lr.ph225.unr-lcssa, %.lr.ph.preheader
  %.epil.init = phi ptr [ %.pre278, %.lr.ph.preheader ], [ %i.ad, %.lr.ph225.unr-lcssa ]
  %indvars.iv263.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next264.1, %.lr.ph225.unr-lcssa ] ; 4 uses
  %lcmp.mod310 = trunc i32 %0 to i1
  tail call void @llvm.assume(i1 %lcmp.mod310)
  %i.by = getelementptr inbounds nuw [24 x i8], ptr %.epil.init, i64 %indvars.iv263.epil.init ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  store ptr %i.bz, ptr %i.by, align 8, !tbaa !106
  %i.ca = load ptr, ptr @loadtree.ac, align 8, !tbaa !98 ; 3 uses
  %i.cb = getelementptr inbounds nuw [24 x i8], ptr %i.ca, i64 %indvars.iv263.epil.init ; 2 uses
  %i.cc = getelementptr inbounds i8, ptr %i.cb, i64 -24
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store ptr %i.cc, ptr %i.cd, align 8, !tbaa !108
  %i.ce = getelementptr inbounds nuw [24 x i8], ptr %i.ca, i64 %indvars.iv263.epil.init
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.cg = trunc nuw nsw i64 %indvars.iv263.epil.init to i32
  store i32 %i.cg, ptr %i.cf, align 8, !tbaa !109
  br label %.lr.ph225

.lr.ph225:                                        ; preds = %.lr.ph225.unr-lcssa, %.lr.ph.epil.preheader
  %.lcssa308 = phi ptr [ %i.ad, %.lr.ph225.unr-lcssa ], [ %i.ca, %.lr.ph.epil.preheader ]
  %i.ch = add nsw i32 %0, -1                      ; 2 uses
  %i.ci = zext nneg i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [24 x i8], ptr %.lcssa308, i64 %i.ci
  store ptr null, ptr %i.cj, align 8, !tbaa !106
  %i.ck = load ptr, ptr @loadtree.hist, align 8, !tbaa !89 ; 7 uses
  %i.cl = load ptr, ptr @loadtree.nmemar, align 8, !tbaa !89 ; 7 uses
  %wide.trip.count271 = zext nneg i32 %0 to i64
  %min.iters.check = icmp ult i32 %0, 8
  %i.cm = ptrtoaddr ptr %i.cl to i64
  %i.cn = ptrtoaddr ptr %i.ck to i64
  %i.co = sub i64 %i.cn, %i.cm
  %diff.check = icmp ugt i64 %i.co, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph225
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %index ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  store <4 x i32> splat (i32 -1), ptr %i.cp, align 4, !tbaa !4
  store <4 x i32> splat (i32 -1), ptr %i.cq, align 4, !tbaa !4
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %index ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  store <4 x i32> splat (i32 1), ptr %i.cr, align 4, !tbaa !4
  store <4 x i32> splat (i32 1), ptr %i.cs, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ct = icmp eq i64 %index.next, %n.vec
  br i1 %i.ct, label %middle.block, label %vector.body, !llvm.loop !111

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge226, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph225, %middle.block
  %indvars.iv268.ph = phi i64 [ 0, %.lr.ph225 ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter311 = and i64 %wide.trip.count, 3      ; 2 uses
  %lcmp.mod312.not = icmp eq i64 %xtraiter311, 0
  br i1 %lcmp.mod312.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv268.prol = phi i64 [ %indvars.iv.next269.prol, %scalar.ph.prol ], [ %indvars.iv268.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %indvars.iv268.prol
  store i32 -1, ptr %i.cu, align 4, !tbaa !4
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %indvars.iv268.prol
  store i32 1, ptr %i.cv, align 4, !tbaa !4
  %indvars.iv.next269.prol = add nuw nsw i64 %indvars.iv268.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter311
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !114

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv268.unr = phi i64 [ %indvars.iv268.ph, %scalar.ph.preheader ], [ %indvars.iv.next269.prol, %scalar.ph.prol ]
  %i.cw = sub nsw i64 %indvars.iv268.ph, %wide.trip.count
  %i.cx = icmp ugt i64 %i.cw, -4
  br i1 %i.cx, label %._crit_edge226, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv268 = phi i64 [ %indvars.iv.next269.3, %scalar.ph ], [ %indvars.iv268.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %indvars.iv268
  store i32 -1, ptr %i.cy, align 4, !tbaa !4
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %indvars.iv268
  store i32 1, ptr %i.cz, align 4, !tbaa !4
  %indvars.iv.next269 = add nuw nsw i64 %indvars.iv268, 1 ; 2 uses
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %indvars.iv.next269
  store i32 -1, ptr %i.da, align 4, !tbaa !4
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %indvars.iv.next269
  store i32 1, ptr %i.db, align 4, !tbaa !4
  %indvars.iv.next269.1 = add nuw nsw i64 %indvars.iv268, 2 ; 2 uses
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %indvars.iv.next269.1
  store i32 -1, ptr %i.dc, align 4, !tbaa !4
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %indvars.iv.next269.1
  store i32 1, ptr %i.dd, align 4, !tbaa !4
  %indvars.iv.next269.2 = add nuw nsw i64 %indvars.iv268, 3 ; 2 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %indvars.iv.next269.2
  store i32 -1, ptr %i.de, align 4, !tbaa !4
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %indvars.iv.next269.2
  store i32 1, ptr %i.df, align 4, !tbaa !4
  %indvars.iv.next269.3 = add nuw nsw i64 %indvars.iv268, 4 ; 2 uses
  %exitcond272.not.3 = icmp eq i64 %indvars.iv.next269.3, %wide.trip.count271
  br i1 %exitcond272.not.3, label %._crit_edge226, label %scalar.ph, !llvm.loop !115

._crit_edge226:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.dg = load ptr, ptr @stderr, align 8, !tbaa !15
  %fputc = tail call i32 @fputc(i32 10, ptr %i.dg) ; 0 uses
  %.not298 = icmp eq i32 %0, 1
  br i1 %.not298, label %._crit_edge253, label %.lr.ph252

.lr.ph252:                                        ; preds = %._crit_edge226
  %i.dh = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 3 uses
  %wide.trip.count276 = zext nneg i32 %i.ch to i64
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph252, %bb.ab
  %indvars.iv273 = phi i64 [ 0, %.lr.ph252 ], [ %indvars.iv.next274, %bb.ab ] ; 4 uses
  %i.di = trunc nuw nsw i64 %indvars.iv273 to i32 ; 3 uses
  %i.dj = urem i32 %i.di, 10
  %i.dk = icmp eq i32 %i.dj, 0
  br i1 %i.dk, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.dl = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.dm = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dl, ptr noundef nonnull @.str.13, i32 noundef %i.di, i32 noundef %0) #31 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv273 ; 3 uses
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !19 ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 4
  store <2 x float> splat (float -1.000000e+00), ptr %i.do, align 4, !tbaa !21
  %i.dq = call ptr @fgets(ptr noundef nonnull @loadtreeoneline.gett, i32 noundef 999, ptr noundef nonnull %i.b) ; 0 uses
  %i.dr = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull @loadtreeoneline.gett, ptr noundef nonnull @.str.38, ptr noundef nonnull %i.a, ptr noundef nonnull %i.dh, ptr noundef nonnull %i.do, ptr noundef nonnull %i.dp) #33 ; 0 uses
  %i.ds = load i32, ptr %i.a, align 4, !tbaa !4   ; 2 uses
  %i.dt = add nsw i32 %i.ds, -1                   ; 3 uses
  store i32 %i.dt, ptr %i.a, align 4, !tbaa !4
  %i.du = load i32, ptr %i.dh, align 4, !tbaa !4  ; 2 uses
  %i.dv = add nsw i32 %i.du, -1                   ; 3 uses
  store i32 %i.dv, ptr %i.dh, align 4, !tbaa !4
  %.not.i = icmp slt i32 %i.ds, %i.du
  br i1 %.not.i, label %loadtreeoneline.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dw = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.dx = call i64 @fwrite(ptr nonnull @.str.39, i64 21, i64 1, ptr %i.dw) #30 ; 0 uses
  call void @exit(i32 noundef 1) #32
  unreachable

loadtreeoneline.exit:                             ; preds = %bb.j
  %i.dy = load ptr, ptr %i.dn, align 8, !tbaa !19 ; 3 uses
  %i.dz = load float, ptr %i.dy, align 4, !tbaa !21 ; 2 uses
  %i.ea = fcmp oeq float %i.dz, -1.000000e+00
  br i1 %i.ea, label %bb.m, label %bb.l

bb.l:                                             ; preds = %loadtreeoneline.exit
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dy, i64 4 ; 2 uses
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !21 ; 2 uses
  %i.ed = fcmp oeq float %i.ec, -1.000000e+00
  br i1 %i.ed, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l, %loadtreeoneline.exit
  %i.ee = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.ef = call i64 @fwrite(ptr nonnull @.str.14, i64 37, i64 1, ptr %i.ee) #30 ; 0 uses
  call void @exit(i32 noundef 1) #32
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.eg = fcmp olt float %i.dz, 0.000000e+00
  br i1 %i.eg, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store float 0.000000e+00, ptr %i.dy, align 4, !tbaa !21
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.eh = fcmp olt float %i.ec, 0.000000e+00
  br i1 %i.eh, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store float 0.000000e+00, ptr %i.eb, align 4, !tbaa !21
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ei = load ptr, ptr @loadtree.hist, align 8, !tbaa !89 ; 2 uses
  %i.ej = sext i32 %i.dt to i64                   ; 5 uses
  %i.ek = getelementptr inbounds [4 x i8], ptr %i.ei, i64 %i.ej ; 2 uses
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !4  ; 2 uses
  %i.em = load ptr, ptr @loadtree.nmemar, align 8, !tbaa !89 ; 2 uses
  %i.en = getelementptr inbounds [4 x i8], ptr %i.em, i64 %i.ej ; 2 uses
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !4  ; 2 uses
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv273 ; 3 uses
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !87
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !89
  %i.es = add nsw i32 %i.eo, 1
  %i.et = sext i32 %i.es to i64
  %i.eu = shl nsw i64 %i.et, 2
  %i.ev = call ptr @realloc(ptr noundef %i.er, i64 noundef %i.eu) #36 ; 5 uses
  %i.ew = load ptr, ptr %i.ep, align 8, !tbaa !87 ; 2 uses
  store ptr %i.ev, ptr %i.ew, align 8, !tbaa !89
  %i.ex = icmp eq i32 %i.el, -1
  br i1 %i.ex, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ev, i64 4
  store i32 %i.dt, ptr %i.ev, align 4, !tbaa !4
  store i32 -1, ptr %i.ey, align 4, !tbaa !4
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.ez = sext i32 %i.el to i64
  %i.fa = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ez
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !87 ; 2 uses
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !89 ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !89 ; 3 uses
  %i.ff = load i32, ptr %i.fc, align 4, !tbaa !4  ; 3 uses
  %i.fg = load i32, ptr %i.fe, align 4, !tbaa !4  ; 3 uses
  %i.fh = icmp sgt i32 %i.ff, %i.fg               ; 2 uses
  %.212 = select i1 %i.fh, ptr %i.fc, ptr %i.fe   ; 2 uses
  %i.fi = call i32 @llvm.smin.i32(i32 %i.ff, i32 %i.fg) ; 2 uses
  %.not202227 = icmp eq i32 %i.fi, -1
  %i.fj = call i32 @llvm.smax.i32(i32 %i.ff, i32 %i.fg)
  br i1 %.not202227, label %.preheader215, label %.lr.ph231.preheader

.lr.ph231.preheader:                              ; preds = %bb.t
  %. = select i1 %i.fh, ptr %i.fe, ptr %i.fc
  br label %.lr.ph231

.preheader215.loopexit:                           ; preds = %.lr.ph231
  %.pre = load i32, ptr %.212, align 4, !tbaa !4
  br label %.preheader215

.preheader215:                                    ; preds = %.preheader215.loopexit, %bb.t
  %i.fk = phi i32 [ %i.fj, %bb.t ], [ %.pre, %.preheader215.loopexit ] ; 2 uses
  %.0183.lcssa = phi ptr [ %i.ev, %bb.t ], [ %i.fn, %.preheader215.loopexit ] ; 2 uses
  %.not203232 = icmp eq i32 %i.fk, -1
  br i1 %.not203232, label %._crit_edge236, label %.lr.ph235

.lr.ph231:                                        ; preds = %.lr.ph231.preheader, %.lr.ph231
  %i.fl = phi i32 [ %i.fo, %.lr.ph231 ], [ %i.fi, %.lr.ph231.preheader ]
  %.0180229 = phi ptr [ %i.fm, %.lr.ph231 ], [ %., %.lr.ph231.preheader ]
  %.0183228 = phi ptr [ %i.fn, %.lr.ph231 ], [ %i.ev, %.lr.ph231.preheader ] ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %.0180229, i64 4 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.0183228, i64 4 ; 2 uses
  store i32 %i.fl, ptr %.0183228, align 4, !tbaa !4
  %i.fo = load i32, ptr %i.fm, align 4, !tbaa !4  ; 2 uses
  %.not202 = icmp eq i32 %i.fo, -1
  br i1 %.not202, label %.preheader215.loopexit, label %.lr.ph231, !llvm.loop !116

.lr.ph235:                                        ; preds = %.preheader215, %.lr.ph235
  %i.fp = phi i32 [ %i.fs, %.lr.ph235 ], [ %i.fk, %.preheader215 ]
  %.1181234 = phi ptr [ %i.fq, %.lr.ph235 ], [ %.212, %.preheader215 ]
  %.1184233 = phi ptr [ %i.fr, %.lr.ph235 ], [ %.0183.lcssa, %.preheader215 ] ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.1181234, i64 4 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.1184233, i64 4 ; 2 uses
  store i32 %i.fp, ptr %.1184233, align 4, !tbaa !4
  %i.fs = load i32, ptr %i.fq, align 4, !tbaa !4  ; 2 uses
  %.not203 = icmp eq i32 %i.fs, -1
  br i1 %.not203, label %._crit_edge236, label %.lr.ph235, !llvm.loop !117

._crit_edge236:                                   ; preds = %.lr.ph235, %.preheader215
  %.1184.lcssa = phi ptr [ %.0183.lcssa, %.preheader215 ], [ %i.fr, %.lr.ph235 ]
  store i32 -1, ptr %.1184.lcssa, align 4, !tbaa !4
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge236, %bb.s
  %i.ft = sext i32 %i.dv to i64                   ; 4 uses
  %i.fu = getelementptr inbounds [4 x i8], ptr %i.em, i64 %i.ft
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !4  ; 2 uses
  %i.fw = getelementptr inbounds [4 x i8], ptr %i.ei, i64 %i.ft
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !4  ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !89
  %i.ga = add nsw i32 %i.fv, 1
  %i.gb = sext i32 %i.ga to i64
  %i.gc = shl nsw i64 %i.gb, 2
  %i.gd = call ptr @realloc(ptr noundef %i.fz, i64 noundef %i.gc) #36 ; 6 uses
  %i.ge = load ptr, ptr %i.ep, align 8, !tbaa !87
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  store ptr %i.gd, ptr %i.gf, align 8, !tbaa !89
  %.not204 = icmp eq ptr %i.gd, null
  br i1 %.not204, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.gg = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.gh = call i64 @fwrite(ptr nonnull @.str.15, i64 24, i64 1, ptr %i.gg) #30 ; 0 uses
  call void @exit(i32 noundef 1) #32
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.gi = icmp eq i32 %i.fx, -1
  br i1 %i.gi, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gd, i64 4
  store i32 %i.dv, ptr %i.gd, align 4, !tbaa !4
  store i32 -1, ptr %i.gj, align 4, !tbaa !4
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.gk = sext i32 %i.fx to i64
  %i.gl = getelementptr inbounds [8 x i8], ptr %1, i64 %i.gk
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !87 ; 2 uses
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !89 ; 3 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !89 ; 3 uses
  %i.gq = load i32, ptr %i.gn, align 4, !tbaa !4  ; 3 uses
  %i.gr = load i32, ptr %i.gp, align 4, !tbaa !4  ; 3 uses
  %i.gs = icmp sgt i32 %i.gq, %i.gr               ; 2 uses
  %.214 = select i1 %i.gs, ptr %i.gn, ptr %i.gp   ; 2 uses
  %i.gt = call i32 @llvm.smin.i32(i32 %i.gq, i32 %i.gr) ; 2 uses
  %.not205238 = icmp eq i32 %i.gt, -1
end_hunk_2
begin_hunk_3_@loadtop:bb.a
  %i.y = tail call ptr @AllocateIntVec(i32 noundef %i.x) #33
  store ptr %i.y, ptr @loadtop.nmemar, align 8, !tbaa !89
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.z = icmp sgt i32 %0, 0
  br i1 %i.z, label %.lr.ph.preheader, label %._crit_edge239.thread

.lr.ph.preheader:                                 ; preds = %bb.i
  %wide.trip.count = zext nneg i32 %0 to i64      ; 7 uses
  br label %.lr.ph

.lr.ph233.preheader:                              ; preds = %.lr.ph
  %.pre295316 = load ptr, ptr @loadtop.ac, align 8, !tbaa !98 ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.aa = icmp eq i32 %0, 1
  br i1 %i.aa, label %.lr.ph233.epil.preheader, label %.lr.ph233.preheader.new

.lr.ph233.preheader.new:                          ; preds = %.lr.ph233.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %i.ab = load ptr, ptr @loadtop.ac, align 8, !tbaa !98 ; 8 uses
  br label %.lr.ph233

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.ac = load ptr, ptr @loadtop.tree, align 8, !tbaa !77
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.af = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.ag = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.ae, ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef %i.af) #33 ; 0 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph233.preheader, label %.lr.ph, !llvm.loop !121

.lr.ph233:                                        ; preds = %.lr.ph233, %.lr.ph233.preheader.new
  %i.ah = phi ptr [ %.pre295316, %.lr.ph233.preheader.new ], [ %i.ab, %.lr.ph233 ]
  %indvars.iv277 = phi i64 [ 0, %.lr.ph233.preheader.new ], [ %indvars.iv.next278.1, %.lr.ph233 ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph233.preheader.new ], [ %niter.next.1, %.lr.ph233 ]
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.ah, i64 %indvars.iv277 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  store ptr %i.aj, ptr %i.ai, align 8, !tbaa !106
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr %i.ab, i64 %indvars.iv277 ; 2 uses
  %i.al = getelementptr inbounds i8, ptr %i.ak, i64 -24
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr %i.al, ptr %i.am, align 8, !tbaa !108
  %i.an = getelementptr inbounds nuw [24 x i8], ptr %i.ab, i64 %indvars.iv277
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = trunc nuw nsw i64 %indvars.iv277 to i32
  store i32 %i.ap, ptr %i.ao, align 8, !tbaa !109
  %indvars.iv.next278 = or disjoint i64 %indvars.iv277, 1 ; 4 uses
  %i.aq = getelementptr inbounds nuw [24 x i8], ptr %i.ab, i64 %indvars.iv.next278 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  store ptr %i.ar, ptr %i.aq, align 8, !tbaa !106
  %i.as = getelementptr inbounds nuw [24 x i8], ptr %i.ab, i64 %indvars.iv.next278 ; 2 uses
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 -24
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store ptr %i.at, ptr %i.au, align 8, !tbaa !108
  %i.av = getelementptr inbounds nuw [24 x i8], ptr %i.ab, i64 %indvars.iv.next278
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = trunc nuw nsw i64 %indvars.iv.next278 to i32
  store i32 %i.ax, ptr %i.aw, align 8, !tbaa !109
  %indvars.iv.next278.1 = add nuw nsw i64 %indvars.iv277, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph238.unr-lcssa, label %.lr.ph233, !llvm.loop !122

._crit_edge239.thread:                            ; preds = %bb.i
  %.pre295 = load ptr, ptr @loadtop.ac, align 8, !tbaa !98
  %i.ay = sext i32 %0 to i64
  %i.az = getelementptr [24 x i8], ptr %.pre295, i64 %i.ay
  %i.ba = getelementptr i8, ptr %i.az, i64 -24
  store ptr null, ptr %i.ba, align 8, !tbaa !106
  %i.bb = load ptr, ptr @stderr, align 8, !tbaa !15
  %fputc318 = tail call i32 @fputc(i32 10, ptr %i.bb) ; 0 uses
  br label %._crit_edge272

.lr.ph238.unr-lcssa:                              ; preds = %.lr.ph233
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph238, label %.lr.ph233.epil.preheader

.lr.ph233.epil.preheader:                         ; preds = %.lr.ph238.unr-lcssa, %.lr.ph233.preheader
  %.epil.init = phi ptr [ %.pre295316, %.lr.ph233.preheader ], [ %i.ab, %.lr.ph238.unr-lcssa ]
  %indvars.iv277.epil.init = phi i64 [ 0, %.lr.ph233.preheader ], [ %indvars.iv.next278.1, %.lr.ph238.unr-lcssa ] ; 4 uses
  %lcmp.mod336 = trunc i32 %0 to i1
  tail call void @llvm.assume(i1 %lcmp.mod336)
  %i.bc = getelementptr inbounds nuw [24 x i8], ptr %.epil.init, i64 %indvars.iv277.epil.init ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  store ptr %i.bd, ptr %i.bc, align 8, !tbaa !106
  %i.be = load ptr, ptr @loadtop.ac, align 8, !tbaa !98 ; 3 uses
  %i.bf = getelementptr inbounds nuw [24 x i8], ptr %i.be, i64 %indvars.iv277.epil.init ; 2 uses
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 -24
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !108
  %i.bi = getelementptr inbounds nuw [24 x i8], ptr %i.be, i64 %indvars.iv277.epil.init
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = trunc nuw nsw i64 %indvars.iv277.epil.init to i32
  store i32 %i.bk, ptr %i.bj, align 8, !tbaa !109
  br label %.lr.ph238

.lr.ph238:                                        ; preds = %.lr.ph238.unr-lcssa, %.lr.ph233.epil.preheader
  %.lcssa334 = phi ptr [ %i.ab, %.lr.ph238.unr-lcssa ], [ %i.be, %.lr.ph233.epil.preheader ]
  %i.bl = add nsw i32 %0, -1                      ; 2 uses
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [24 x i8], ptr %.lcssa334, i64 %i.bm
  store ptr null, ptr %i.bn, align 8, !tbaa !106
  %i.bo = load ptr, ptr @loadtop.tmptmplen, align 8, !tbaa !19
  %i.bp = zext nneg i32 %0 to i64
  %i.bq = shl nuw nsw i64 %i.bp, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.bo, i8 0, i64 %i.bq, i1 false), !tbaa !21
  %i.br = load ptr, ptr @loadtop.hist, align 8, !tbaa !89 ; 7 uses
  %i.bs = load ptr, ptr @loadtop.nmemar, align 8, !tbaa !89 ; 7 uses
  %wide.trip.count288 = zext nneg i32 %0 to i64
  %min.iters.check = icmp ult i32 %0, 8
  %i.bt = ptrtoaddr ptr %i.bs to i64
  %i.bu = ptrtoaddr ptr %i.br to i64
  %i.bv = sub i64 %i.bu, %i.bt
  %diff.check = icmp ugt i64 %i.bv, -32
  %or.cond330 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond330, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph238
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %index ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  store <4 x i32> splat (i32 -1), ptr %i.bw, align 4, !tbaa !4
  store <4 x i32> splat (i32 -1), ptr %i.bx, align 4, !tbaa !4
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %index ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  store <4 x i32> splat (i32 1), ptr %i.by, align 4, !tbaa !4
  store <4 x i32> splat (i32 1), ptr %i.bz, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ca = icmp eq i64 %index.next, %n.vec
  br i1 %i.ca, label %middle.block, label %vector.body, !llvm.loop !123

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge239, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph238, %middle.block
  %indvars.iv285.ph = phi i64 [ 0, %.lr.ph238 ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter337 = and i64 %wide.trip.count, 3      ; 2 uses
  %lcmp.mod338.not = icmp eq i64 %xtraiter337, 0
  br i1 %lcmp.mod338.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv285.prol = phi i64 [ %indvars.iv.next286.prol, %scalar.ph.prol ], [ %indvars.iv285.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %indvars.iv285.prol
  store i32 -1, ptr %i.cb, align 4, !tbaa !4
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %indvars.iv285.prol
  store i32 1, ptr %i.cc, align 4, !tbaa !4
  %indvars.iv.next286.prol = add nuw nsw i64 %indvars.iv285.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter337
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !124

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv285.unr = phi i64 [ %indvars.iv285.ph, %scalar.ph.preheader ], [ %indvars.iv.next286.prol, %scalar.ph.prol ]
  %i.cd = sub nsw i64 %indvars.iv285.ph, %wide.trip.count
  %i.ce = icmp ugt i64 %i.cd, -4
  br i1 %i.ce, label %._crit_edge239, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv285 = phi i64 [ %indvars.iv.next286.3, %scalar.ph ], [ %indvars.iv285.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %indvars.iv285
  store i32 -1, ptr %i.cf, align 4, !tbaa !4
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %indvars.iv285
  store i32 1, ptr %i.cg, align 4, !tbaa !4
  %indvars.iv.next286 = add nuw nsw i64 %indvars.iv285, 1 ; 2 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %indvars.iv.next286
  store i32 -1, ptr %i.ch, align 4, !tbaa !4
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %indvars.iv.next286
  store i32 1, ptr %i.ci, align 4, !tbaa !4
  %indvars.iv.next286.1 = add nuw nsw i64 %indvars.iv285, 2 ; 2 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %indvars.iv.next286.1
  store i32 -1, ptr %i.cj, align 4, !tbaa !4
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %indvars.iv.next286.1
  store i32 1, ptr %i.ck, align 4, !tbaa !4
  %indvars.iv.next286.2 = add nuw nsw i64 %indvars.iv285, 3 ; 2 uses
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %indvars.iv.next286.2
  store i32 -1, ptr %i.cl, align 4, !tbaa !4
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %indvars.iv.next286.2
  store i32 1, ptr %i.cm, align 4, !tbaa !4
  %indvars.iv.next286.3 = add nuw nsw i64 %indvars.iv285, 4 ; 2 uses
  %exitcond289.not.3 = icmp eq i64 %indvars.iv.next286.3, %wide.trip.count288
  br i1 %exitcond289.not.3, label %._crit_edge239, label %scalar.ph, !llvm.loop !125

._crit_edge239:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.cn = load ptr, ptr @stderr, align 8, !tbaa !15
  %fputc = tail call i32 @fputc(i32 10, ptr %i.cn) ; 0 uses
  %.not323 = icmp eq i32 %0, 1
  br i1 %.not323, label %._crit_edge272, label %.lr.ph271

.lr.ph271:                                        ; preds = %._crit_edge239
  %i.co = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 3 uses
  %wide.trip.count293 = zext nneg i32 %i.bl to i64
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph271, %bb.ag
  %indvars.iv290 = phi i64 [ 0, %.lr.ph271 ], [ %indvars.iv.next291, %bb.ag ] ; 4 uses
  %i.cq = trunc nuw nsw i64 %indvars.iv290 to i32 ; 3 uses
  %i.cr = urem i32 %i.cq, 10
  %i.cs = icmp eq i32 %i.cr, 0
  br i1 %i.cs, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ct = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.cu = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ct, ptr noundef nonnull @.str.13, i32 noundef %i.cq, i32 noundef %0) #31 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  store <2 x float> splat (float -1.000000e+00), ptr %i.b, align 8, !tbaa !21
  %i.cv = call ptr @fgets(ptr noundef nonnull @loadtreeoneline.gett, i32 noundef 999, ptr noundef nonnull %i.f) ; 0 uses
  %i.cw = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull @loadtreeoneline.gett, ptr noundef nonnull @.str.38, ptr noundef nonnull %i.a, ptr noundef nonnull %i.cp, ptr noundef nonnull %i.b, ptr noundef nonnull %i.co) #33 ; 0 uses
  %i.cx = load i32, ptr %i.a, align 4, !tbaa !4   ; 3 uses
  %i.cy = add nsw i32 %i.cx, -1                   ; 7 uses
  store i32 %i.cy, ptr %i.a, align 4, !tbaa !4
  %i.cz = load i32, ptr %i.cp, align 4, !tbaa !4  ; 3 uses
  %i.da = add nsw i32 %i.cz, -1                   ; 7 uses
  store i32 %i.da, ptr %i.cp, align 4, !tbaa !4
  %.not.i = icmp slt i32 %i.cx, %i.cz
  br i1 %.not.i, label %loadtreeoneline.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.db = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.dc = call i64 @fwrite(ptr nonnull @.str.39, i64 21, i64 1, ptr %i.db) #30 ; 0 uses
  call void @exit(i32 noundef 1) #32
  unreachable

loadtreeoneline.exit:                             ; preds = %bb.l
  %i.dd = sext i32 %i.cy to i64                   ; 7 uses
  %i.de = getelementptr inbounds [8 x i8], ptr %1, i64 %i.dd
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !19
  %i.dg = sub nsw i32 %i.cz, %i.cx
  %i.dh = zext nneg i32 %i.dg to i64
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %i.dh
  %i.dj = load float, ptr %i.di, align 4, !tbaa !21
  %i.dk = load float, ptr %i.b, align 8, !tbaa !21
  %i.dl = fcmp une float %i.dk, -1.000000e+00
  %i.dm = load float, ptr %i.co, align 4
  %i.dn = fcmp une float %i.dm, -1.000000e+00
  %or.cond = select i1 %i.dl, i1 true, i1 %i.dn
  br i1 %or.cond, label %bb.n, label %bb.o

bb.n:                                             ; preds = %loadtreeoneline.exit
  %i.do = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.dp = call i64 @fwrite(ptr nonnull @.str.22, i64 44, i64 1, ptr %i.do) #30 ; 0 uses
  call void @exit(i32 noundef 1) #32
  unreachable

bb.o:                                             ; preds = %loadtreeoneline.exit
  %i.dq = load ptr, ptr @loadtop.hist, align 8, !tbaa !89 ; 2 uses
  %i.dr = getelementptr inbounds [4 x i8], ptr %i.dq, i64 %i.dd ; 2 uses
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !4  ; 2 uses
  %i.dt = load ptr, ptr @loadtop.nmemar, align 8, !tbaa !89 ; 2 uses
  %i.du = getelementptr inbounds [4 x i8], ptr %i.dt, i64 %i.dd ; 2 uses
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !4  ; 2 uses
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv290 ; 3 uses
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !87
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !89
  %i.dz = add nsw i32 %i.dv, 1
  %i.ea = sext i32 %i.dz to i64
  %i.eb = shl nsw i64 %i.ea, 2
  %i.ec = call ptr @realloc(ptr noundef %i.dy, i64 noundef %i.eb) #36 ; 5 uses
  %i.ed = load ptr, ptr %i.dw, align 8, !tbaa !87 ; 2 uses
  store ptr %i.ec, ptr %i.ed, align 8, !tbaa !89
  %i.ee = icmp eq i32 %i.ds, -1
  br i1 %i.ee, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 4
  store i32 %i.cy, ptr %i.ec, align 4, !tbaa !4
  store i32 -1, ptr %i.ef, align 4, !tbaa !4
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.eg = sext i32 %i.ds to i64
  %i.eh = getelementptr inbounds [8 x i8], ptr %2, i64 %i.eg
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !87 ; 2 uses
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !89 ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !89 ; 3 uses
  %i.em = load i32, ptr %i.ej, align 4, !tbaa !4  ; 3 uses
  %i.en = load i32, ptr %i.el, align 4, !tbaa !4  ; 3 uses
  %i.eo = icmp sgt i32 %i.em, %i.en               ; 2 uses
  %.222 = select i1 %i.eo, ptr %i.ej, ptr %i.el   ; 2 uses
  %i.ep = call i32 @llvm.smin.i32(i32 %i.em, i32 %i.en) ; 2 uses
  %.not212240 = icmp eq i32 %i.ep, -1
  %i.eq = call i32 @llvm.smax.i32(i32 %i.em, i32 %i.en)
  br i1 %.not212240, label %.preheader228, label %.lr.ph244.preheader

.lr.ph244.preheader:                              ; preds = %bb.q
  %. = select i1 %i.eo, ptr %i.el, ptr %i.ej
  br label %.lr.ph244

.preheader228.loopexit:                           ; preds = %.lr.ph244
  %.pre = load i32, ptr %.222, align 4, !tbaa !4
  br label %.preheader228

.preheader228:                                    ; preds = %.preheader228.loopexit, %bb.q
  %i.er = phi i32 [ %i.eq, %bb.q ], [ %.pre, %.preheader228.loopexit ] ; 2 uses
  %.0193.lcssa = phi ptr [ %i.ec, %bb.q ], [ %i.eu, %.preheader228.loopexit ] ; 2 uses
  %.not213245 = icmp eq i32 %i.er, -1
  br i1 %.not213245, label %._crit_edge249, label %.lr.ph248

.lr.ph244:                                        ; preds = %.lr.ph244.preheader, %.lr.ph244
  %i.es = phi i32 [ %i.ev, %.lr.ph244 ], [ %i.ep, %.lr.ph244.preheader ]
  %.0189242 = phi ptr [ %i.et, %.lr.ph244 ], [ %., %.lr.ph244.preheader ]
  %.0193241 = phi ptr [ %i.eu, %.lr.ph244 ], [ %i.ec, %.lr.ph244.preheader ] ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.0189242, i64 4 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.0193241, i64 4 ; 2 uses
  store i32 %i.es, ptr %.0193241, align 4, !tbaa !4
  %i.ev = load i32, ptr %i.et, align 4, !tbaa !4  ; 2 uses
  %.not212 = icmp eq i32 %i.ev, -1
  br i1 %.not212, label %.preheader228.loopexit, label %.lr.ph244, !llvm.loop !126

.lr.ph248:                                        ; preds = %.preheader228, %.lr.ph248
  %i.ew = phi i32 [ %i.ez, %.lr.ph248 ], [ %i.er, %.preheader228 ]
  %.1190247 = phi ptr [ %i.ex, %.lr.ph248 ], [ %.222, %.preheader228 ]
  %.1194246 = phi ptr [ %i.ey, %.lr.ph248 ], [ %.0193.lcssa, %.preheader228 ] ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.1190247, i64 4 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.1194246, i64 4 ; 2 uses
  store i32 %i.ew, ptr %.1194246, align 4, !tbaa !4
  %i.ez = load i32, ptr %i.ex, align 4, !tbaa !4  ; 2 uses
  %.not213 = icmp eq i32 %i.ez, -1
  br i1 %.not213, label %._crit_edge249, label %.lr.ph248, !llvm.loop !127

._crit_edge249:                                   ; preds = %.lr.ph248, %.preheader228
  %.1194.lcssa = phi ptr [ %.0193.lcssa, %.preheader228 ], [ %i.ey, %.lr.ph248 ]
  store i32 -1, ptr %.1194.lcssa, align 4, !tbaa !4
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge249, %bb.p
  %i.fa = sext i32 %i.da to i64                   ; 6 uses
  %i.fb = getelementptr inbounds [4 x i8], ptr %i.dq, i64 %i.fa
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !4  ; 2 uses
  %i.fd = getelementptr inbounds [4 x i8], ptr %i.dt, i64 %i.fa
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !4  ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !89
  %i.fh = add nsw i32 %i.fe, 1
  %i.fi = sext i32 %i.fh to i64
  %i.fj = shl nsw i64 %i.fi, 2
  %i.fk = call ptr @realloc(ptr noundef %i.fg, i64 noundef %i.fj) #36 ; 6 uses
  %i.fl = load ptr, ptr %i.dw, align 8, !tbaa !87
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  store ptr %i.fk, ptr %i.fm, align 8, !tbaa !89
  %.not214 = icmp eq ptr %i.fk, null
  br i1 %.not214, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.fn = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.fo = call i64 @fwrite(ptr nonnull @.str.15, i64 24, i64 1, ptr %i.fn) #30 ; 0 uses
  call void @exit(i32 noundef 1) #32
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.fp = icmp eq i32 %i.fc, -1
  br i1 %i.fp, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fk, i64 4
  store i32 %i.da, ptr %i.fk, align 4, !tbaa !4
  store i32 -1, ptr %i.fq, align 4, !tbaa !4
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.fr = sext i32 %i.fc to i64
  %i.fs = getelementptr inbounds [8 x i8], ptr %2, i64 %i.fr
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !87 ; 2 uses
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !89 ; 3 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !89 ; 3 uses
  %i.fx = load i32, ptr %i.fu, align 4, !tbaa !4  ; 3 uses
  %i.fy = load i32, ptr %i.fw, align 4, !tbaa !4  ; 3 uses
  %i.fz = icmp sgt i32 %i.fx, %i.fy               ; 2 uses
  %.224 = select i1 %i.fz, ptr %i.fu, ptr %i.fw   ; 2 uses
  %i.ga = call i32 @llvm.smin.i32(i32 %i.fx, i32 %i.fy) ; 2 uses
  %.not215251 = icmp eq i32 %i.ga, -1
  %i.gb = call i32 @llvm.smax.i32(i32 %i.fx, i32 %i.fy)
  br i1 %.not215251, label %.preheader, label %.lr.ph255.preheader

.lr.ph255.preheader:                              ; preds = %bb.v
  %.223 = select i1 %i.fz, ptr %i.fw, ptr %i.fu
  br label %.lr.ph255

.preheader.loopexit:                              ; preds = %.lr.ph255
  %.pre296 = load i32, ptr %.224, align 4, !tbaa !4
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.v
  %i.gc = phi i32 [ %i.gb, %bb.v ], [ %.pre296, %.preheader.loopexit ] ; 2 uses
  %.2195.lcssa = phi ptr [ %i.fk, %bb.v ], [ %i.gf, %.preheader.loopexit ] ; 2 uses
  %.not216257 = icmp eq i32 %i.gc, -1
  br i1 %.not216257, label %._crit_edge261, label %.lr.ph260

end_hunk_3
begin_hunk_4_@fixed_musclesupg_float_realloc_nobk_halfmtx_treeout:bb.a
  %i.cb = load ptr, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.ac, align 8, !tbaa !98 ; 3 uses
  %i.cc = getelementptr inbounds nuw [24 x i8], ptr %i.cb, i64 %indvars.iv401.epil.init ; 2 uses
  %i.cd = getelementptr inbounds i8, ptr %i.cc, i64 -24
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store ptr %i.cd, ptr %i.ce, align 8, !tbaa !108
  %i.cf = getelementptr inbounds nuw [24 x i8], ptr %i.cb, i64 %indvars.iv401.epil.init
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %i.ch = trunc nuw nsw i64 %indvars.iv401.epil.init to i32
  store i32 %i.ch, ptr %i.cg, align 8, !tbaa !109
  br label %.lr.ph334

.lr.ph334:                                        ; preds = %.lr.ph334.unr-lcssa, %.lr.ph.epil.preheader
  %.lcssa483 = phi ptr [ %i.ae, %.lr.ph334.unr-lcssa ], [ %i.cb, %.lr.ph.epil.preheader ]
  %i.ci = add nsw i32 %0, -1                      ; 2 uses
  %i.cj = zext nneg i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw [24 x i8], ptr %.lcssa483, i64 %i.cj
  store ptr null, ptr %i.ck, align 8, !tbaa !106
  %i.cl = load ptr, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.ac, align 8, !tbaa !98 ; 3 uses
  %.not3540.i = icmp eq ptr %i.cl, null
  %wide.trip.count409 = zext nneg i32 %0 to i64
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph334, %setnearest.exit
  %indvars.iv406 = phi i64 [ 0, %.lr.ph334 ], [ %indvars.iv.next407, %setnearest.exit ] ; 8 uses
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %.0243, i64 %indvars.iv406 ; 3 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %.0244, i64 %indvars.iv406 ; 3 uses
  store float 9.999000e+02, ptr %i.cm, align 4, !tbaa !21
  store i32 -1, ptr %i.cn, align 4, !tbaa !4
  %i.co = getelementptr inbounds nuw [24 x i8], ptr %i.cl, i64 %indvars.iv406
  %.037.i = load ptr, ptr %i.co, align 8, !tbaa !106 ; 2 uses
  %.not38.i = icmp eq ptr %.037.i, null
  br i1 %.not38.i, label %.lr.ph42.preheader.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv406
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !19
  %i.cr = trunc nuw nsw i64 %indvars.iv406 to i32
  br label %bb.k

.preheader.i:                                     ; preds = %bb.m
  br i1 %.not3540.i, label %setnearest.exit, label %.lr.ph42.preheader.i

.lr.ph42.preheader.i:                             ; preds = %.preheader.i, %bb.j
  %i.cs = phi float [ %i.dc, %.preheader.i ], [ 9.999000e+02, %bb.j ]
  %i.ct = trunc nuw nsw i64 %indvars.iv406 to i32
  br label %.lr.ph42.i

bb.k:                                             ; preds = %bb.m, %.lr.ph.i
  %i.cu = phi float [ 9.999000e+02, %.lr.ph.i ], [ %i.dc, %bb.m ] ; 2 uses
  %.039.i = phi ptr [ %.037.i, %.lr.ph.i ], [ %.0.i, %bb.m ] ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.039.i, i64 16
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !109 ; 2 uses
  %i.cx = sub nsw i32 %i.cw, %i.cr
  %i.cy = sext i32 %i.cx to i64
  %i.cz = getelementptr inbounds [4 x i8], ptr %i.cq, i64 %i.cy
  %i.da = load float, ptr %i.cz, align 4, !tbaa !21 ; 3 uses
  %i.db = fcmp olt float %i.da, %i.cu
  br i1 %i.db, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store float %i.da, ptr %i.cm, align 4, !tbaa !21
  store i32 %i.cw, ptr %i.cn, align 4, !tbaa !4
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.dc = phi float [ %i.cu, %bb.k ], [ %i.da, %bb.l ] ; 2 uses
  %.0.i = load ptr, ptr %.039.i, align 8, !tbaa !106 ; 2 uses
  %.not.i = icmp eq ptr %.0.i, null
  br i1 %.not.i, label %.preheader.i, label %bb.k, !llvm.loop !136

.lr.ph42.i:                                       ; preds = %bb.p, %.lr.ph42.preheader.i
  %i.dd = phi float [ %i.dp, %bb.p ], [ %i.cs, %.lr.ph42.preheader.i ] ; 2 uses
  %.141.i = phi ptr [ %i.dq, %bb.p ], [ %i.cl, %.lr.ph42.preheader.i ] ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.141.i, i64 16
  %i.df = load i32, ptr %i.de, align 8, !tbaa !109 ; 4 uses
  %i.dg = zext i32 %i.df to i64
  %.not36.i = icmp eq i64 %indvars.iv406, %i.dg
  br i1 %.not36.i, label %setnearest.exit, label %bb.n

bb.n:                                             ; preds = %.lr.ph42.i
  %i.dh = sext i32 %i.df to i64
  %i.di = getelementptr inbounds [8 x i8], ptr %1, i64 %i.dh
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !19
  %i.dk = sub nsw i32 %i.ct, %i.df
  %i.dl = sext i32 %i.dk to i64
  %i.dm = getelementptr inbounds [4 x i8], ptr %i.dj, i64 %i.dl
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !21 ; 3 uses
  %i.do = fcmp olt float %i.dn, %i.dd
  br i1 %i.do, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store float %i.dn, ptr %i.cm, align 4, !tbaa !21
  store i32 %i.df, ptr %i.cn, align 4, !tbaa !4
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.dp = phi float [ %i.dd, %bb.n ], [ %i.dn, %bb.o ]
  %i.dq = load ptr, ptr %.141.i, align 8, !tbaa !106 ; 2 uses
  %.not35.i = icmp eq ptr %i.dq, null
  br i1 %.not35.i, label %setnearest.exit, label %.lr.ph42.i, !llvm.loop !137

setnearest.exit:                                  ; preds = %.lr.ph42.i, %bb.p, %.preheader.i
  %indvars.iv.next407 = add nuw nsw i64 %indvars.iv406, 1 ; 2 uses
  %exitcond410.not = icmp eq i64 %indvars.iv.next407, %wide.trip.count409
  br i1 %exitcond410.not, label %.lr.ph338, label %bb.j, !llvm.loop !138

.lr.ph338:                                        ; preds = %setnearest.exit
  %i.dr = load ptr, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.tmptmplen, align 8, !tbaa !19
  %i.ds = zext nneg i32 %0 to i64
  %i.dt = shl nuw nsw i64 %i.ds, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.dr, i8 0, i64 %i.dt, i1 false), !tbaa !21
  %i.du = load ptr, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.hist, align 8, !tbaa !89 ; 7 uses
  %i.dv = load ptr, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.nmemar, align 8, !tbaa !89 ; 7 uses
  %wide.trip.count417 = zext nneg i32 %0 to i64
  %min.iters.check = icmp ult i32 %0, 8
  %i.dw = ptrtoaddr ptr %i.dv to i64
  %i.dx = ptrtoaddr ptr %i.du to i64
  %i.dy = sub i64 %i.dx, %i.dw
  %diff.check = icmp ugt i64 %i.dy, -32
  %or.cond477 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond477, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph338
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %index ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  store <4 x i32> splat (i32 -1), ptr %i.dz, align 4, !tbaa !4
  store <4 x i32> splat (i32 -1), ptr %i.ea, align 4, !tbaa !4
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %index ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  store <4 x i32> splat (i32 1), ptr %i.eb, align 4, !tbaa !4
  store <4 x i32> splat (i32 1), ptr %i.ec, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ed = icmp eq i64 %index.next, %n.vec
  br i1 %i.ed, label %middle.block, label %vector.body, !llvm.loop !139

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge339, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph338, %middle.block
  %indvars.iv414.ph = phi i64 [ 0, %.lr.ph338 ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter486 = and i64 %wide.trip.count404, 3   ; 2 uses
  %lcmp.mod487.not = icmp eq i64 %xtraiter486, 0
  br i1 %lcmp.mod487.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv414.prol = phi i64 [ %indvars.iv.next415.prol, %scalar.ph.prol ], [ %indvars.iv414.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %indvars.iv414.prol
  store i32 -1, ptr %i.ee, align 4, !tbaa !4
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %indvars.iv414.prol
  store i32 1, ptr %i.ef, align 4, !tbaa !4
  %indvars.iv.next415.prol = add nuw nsw i64 %indvars.iv414.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter486
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !140

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv414.unr = phi i64 [ %indvars.iv414.ph, %scalar.ph.preheader ], [ %indvars.iv.next415.prol, %scalar.ph.prol ]
  %i.eg = sub nsw i64 %indvars.iv414.ph, %wide.trip.count404
  %i.eh = icmp ugt i64 %i.eg, -4
  br i1 %i.eh, label %._crit_edge339, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv414 = phi i64 [ %indvars.iv.next415.3, %scalar.ph ], [ %indvars.iv414.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %indvars.iv414
  store i32 -1, ptr %i.ei, align 4, !tbaa !4
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %indvars.iv414
  store i32 1, ptr %i.ej, align 4, !tbaa !4
  %indvars.iv.next415 = add nuw nsw i64 %indvars.iv414, 1 ; 2 uses
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %indvars.iv.next415
  store i32 -1, ptr %i.ek, align 4, !tbaa !4
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %indvars.iv.next415
  store i32 1, ptr %i.el, align 4, !tbaa !4
  %indvars.iv.next415.1 = add nuw nsw i64 %indvars.iv414, 2 ; 2 uses
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %indvars.iv.next415.1
  store i32 -1, ptr %i.em, align 4, !tbaa !4
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %indvars.iv.next415.1
  store i32 1, ptr %i.en, align 4, !tbaa !4
  %indvars.iv.next415.2 = add nuw nsw i64 %indvars.iv414, 3 ; 2 uses
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %indvars.iv.next415.2
  store i32 -1, ptr %i.eo, align 4, !tbaa !4
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %indvars.iv.next415.2
  store i32 1, ptr %i.ep, align 4, !tbaa !4
  %indvars.iv.next415.3 = add nuw nsw i64 %indvars.iv414, 4 ; 2 uses
  %exitcond418.not.3 = icmp eq i64 %indvars.iv.next415.3, %wide.trip.count417
  br i1 %exitcond418.not.3, label %._crit_edge339, label %scalar.ph, !llvm.loop !141

._crit_edge339:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.eq = load ptr, ptr @stderr, align 8, !tbaa !15
  %fputc = tail call i32 @fputc(i32 10, ptr %i.eq) ; 0 uses
  %.not468 = icmp eq i32 %0, 1
  br i1 %.not468, label %._crit_edge389, label %.lr.ph388.preheader

.lr.ph388.preheader:                              ; preds = %._crit_edge339
  %wide.trip.count422 = zext nneg i32 %i.ci to i64
  br label %.lr.ph388

.lr.ph388:                                        ; preds = %.lr.ph388.preheader, %._crit_edge384
  %indvars.iv419 = phi i64 [ 0, %.lr.ph388.preheader ], [ %indvars.iv.next420, %._crit_edge384 ] ; 4 uses
  %.0260385 = phi i32 [ -1, %.lr.ph388.preheader ], [ %spec.select, %._crit_edge384 ] ; 2 uses
  %i.er = trunc nuw nsw i64 %indvars.iv419 to i32 ; 3 uses
  %i.es = urem i32 %i.er, 10
  %i.et = icmp eq i32 %i.es, 0
  br i1 %i.et, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.lr.ph388
  %i.eu = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.ev = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.eu, ptr noundef nonnull @.str.13, i32 noundef %i.er, i32 noundef %0) #31 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.lr.ph388
  %.0254340 = load ptr, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.ac, align 8, !tbaa !98 ; 2 uses
  %i.ew = load ptr, ptr %.0254340, align 8, !tbaa !106 ; 2 uses
  %.not290341 = icmp eq ptr %i.ew, null
  br i1 %.not290341, label %._crit_edge347, label %.lr.ph346

.lr.ph346:                                        ; preds = %bb.r, %.lr.ph346
  %.0254 = phi ptr [ %i.fd, %.lr.ph346 ], [ %i.ew, %bb.r ] ; 2 uses
  %.0254344 = phi ptr [ %.0254, %.lr.ph346 ], [ %.0254340, %bb.r ]
  %.0245343 = phi float [ %.1246, %.lr.ph346 ], [ 9.999000e+02, %bb.r ] ; 2 uses
  %.1261342 = phi i32 [ %.2262, %.lr.ph346 ], [ %.0260385, %bb.r ]
  %i.ex = getelementptr inbounds nuw i8, ptr %.0254344, i64 16
  %i.ey = load i32, ptr %i.ex, align 8, !tbaa !109 ; 2 uses
  %i.ez = sext i32 %i.ey to i64
  %i.fa = getelementptr inbounds [4 x i8], ptr %.0243, i64 %i.ez
  %i.fb = load float, ptr %i.fa, align 4, !tbaa !21 ; 2 uses
  %i.fc = fcmp olt float %i.fb, %.0245343         ; 2 uses
  %.2262 = select i1 %i.fc, i32 %i.ey, i32 %.1261342 ; 2 uses
  %.1246 = select i1 %i.fc, float %i.fb, float %.0245343 ; 2 uses
  %i.fd = load ptr, ptr %.0254, align 8, !tbaa !106 ; 2 uses
  %.not290 = icmp eq ptr %i.fd, null
  br i1 %.not290, label %._crit_edge347.loopexit, label %.lr.ph346, !llvm.loop !142

._crit_edge347.loopexit:                          ; preds = %.lr.ph346
  %i.fe = fmul float %.1246, 5.000000e-01
  br label %._crit_edge347

._crit_edge347:                                   ; preds = %._crit_edge347.loopexit, %bb.r
  %.1261.lcssa = phi i32 [ %.0260385, %bb.r ], [ %.2262, %._crit_edge347.loopexit ] ; 3 uses
  %.0245.lcssa = phi float [ 4.999500e+02, %bb.r ], [ %i.fe, %._crit_edge347.loopexit ] ; 3 uses
  %i.ff = sext i32 %.1261.lcssa to i64
  %i.fg = getelementptr inbounds [4 x i8], ptr %.0244, i64 %i.ff
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !4  ; 2 uses
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.fh, i32 %.1261.lcssa) ; 10 uses
  %spec.select302 = tail call i32 @llvm.smax.i32(i32 %i.fh, i32 %.1261.lcssa) ; 7 uses
  %i.fi = load ptr, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.hist, align 8, !tbaa !89 ; 2 uses
  %i.fj = sext i32 %spec.select to i64            ; 8 uses
  %i.fk = getelementptr inbounds [4 x i8], ptr %i.fi, i64 %i.fj ; 2 uses
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !4  ; 2 uses
  %i.fm = load ptr, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.nmemar, align 8, !tbaa !89 ; 2 uses
  %i.fn = getelementptr inbounds [4 x i8], ptr %i.fm, i64 %i.fj ; 2 uses
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !4  ; 2 uses
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv419 ; 3 uses
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !87
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !89
  %i.fs = add nsw i32 %i.fo, 1
  %i.ft = sext i32 %i.fs to i64
  %i.fu = shl nsw i64 %i.ft, 2
  %i.fv = tail call ptr @realloc(ptr noundef %i.fr, i64 noundef %i.fu) #36 ; 5 uses
  %i.fw = load ptr, ptr %i.fp, align 8, !tbaa !87 ; 2 uses
  store ptr %i.fv, ptr %i.fw, align 8, !tbaa !89
  %i.fx = icmp eq i32 %i.fl, -1
  br i1 %i.fx, label %bb.s, label %bb.t

bb.s:                                             ; preds = %._crit_edge347
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fv, i64 4
  store i32 %spec.select, ptr %i.fv, align 4, !tbaa !4
  store i32 -1, ptr %i.fy, align 4, !tbaa !4
  br label %bb.u

bb.t:                                             ; preds = %._crit_edge347
  %i.fz = sext i32 %i.fl to i64
  %i.ga = getelementptr inbounds [8 x i8], ptr %2, i64 %i.fz
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !87 ; 2 uses
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !89 ; 3 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !89 ; 3 uses
  %i.gf = load i32, ptr %i.gc, align 4, !tbaa !4  ; 3 uses
  %i.gg = load i32, ptr %i.ge, align 4, !tbaa !4  ; 3 uses
  %i.gh = icmp sgt i32 %i.gf, %i.gg               ; 2 uses
  %.303 = select i1 %i.gh, ptr %i.gc, ptr %i.ge   ; 2 uses
  %i.gi = tail call i32 @llvm.smin.i32(i32 %i.gf, i32 %i.gg) ; 2 uses
  %.not291349 = icmp eq i32 %i.gi, -1
  %i.gj = tail call i32 @llvm.smax.i32(i32 %i.gf, i32 %i.gg)
  br i1 %.not291349, label %.preheader320, label %.lr.ph353.preheader

.lr.ph353.preheader:                              ; preds = %bb.t
  %. = select i1 %i.gh, ptr %i.ge, ptr %i.gc
  br label %.lr.ph353

.preheader320.loopexit:                           ; preds = %.lr.ph353
  %.pre = load i32, ptr %.303, align 4, !tbaa !4
  br label %.preheader320

.preheader320:                                    ; preds = %.preheader320.loopexit, %bb.t
  %i.gk = phi i32 [ %i.gj, %bb.t ], [ %.pre, %.preheader320.loopexit ] ; 2 uses
  %.0266.lcssa = phi ptr [ %i.fv, %bb.t ], [ %i.gn, %.preheader320.loopexit ] ; 2 uses
  %.not292355 = icmp eq i32 %i.gk, -1
  br i1 %.not292355, label %._crit_edge359, label %.lr.ph358

.lr.ph353:                                        ; preds = %.lr.ph353.preheader, %.lr.ph353
  %i.gl = phi i32 [ %i.go, %.lr.ph353 ], [ %i.gi, %.lr.ph353.preheader ]
  %.0266351 = phi ptr [ %i.gn, %.lr.ph353 ], [ %i.fv, %.lr.ph353.preheader ] ; 2 uses
  %.0270350 = phi ptr [ %i.gm, %.lr.ph353 ], [ %., %.lr.ph353.preheader ]
  %i.gm = getelementptr inbounds nuw i8, ptr %.0270350, i64 4 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.0266351, i64 4 ; 2 uses
  store i32 %i.gl, ptr %.0266351, align 4, !tbaa !4
  %i.go = load i32, ptr %i.gm, align 4, !tbaa !4  ; 2 uses
  %.not291 = icmp eq i32 %i.go, -1
  br i1 %.not291, label %.preheader320.loopexit, label %.lr.ph353, !llvm.loop !143

.lr.ph358:                                        ; preds = %.preheader320, %.lr.ph358
  %i.gp = phi i32 [ %i.gs, %.lr.ph358 ], [ %i.gk, %.preheader320 ]
  %.1267357 = phi ptr [ %i.gr, %.lr.ph358 ], [ %.0266.lcssa, %.preheader320 ] ; 2 uses
  %.1271356 = phi ptr [ %i.gq, %.lr.ph358 ], [ %.303, %.preheader320 ]
  %i.gq = getelementptr inbounds nuw i8, ptr %.1271356, i64 4 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %.1267357, i64 4 ; 2 uses
  store i32 %i.gp, ptr %.1267357, align 4, !tbaa !4
  %i.gs = load i32, ptr %i.gq, align 4, !tbaa !4  ; 2 uses
  %.not292 = icmp eq i32 %i.gs, -1
  br i1 %.not292, label %._crit_edge359, label %.lr.ph358, !llvm.loop !144

._crit_edge359:                                   ; preds = %.lr.ph358, %.preheader320
  %.1267.lcssa = phi ptr [ %.0266.lcssa, %.preheader320 ], [ %i.gr, %.lr.ph358 ]
  store i32 -1, ptr %.1267.lcssa, align 4, !tbaa !4
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge359, %bb.s
  %i.gt = sext i32 %spec.select302 to i64         ; 6 uses
  %i.gu = getelementptr inbounds [4 x i8], ptr %i.fi, i64 %i.gt
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !4  ; 2 uses
  %i.gw = getelementptr inbounds [4 x i8], ptr %i.fm, i64 %i.gt
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !4  ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !89
  %i.ha = add nsw i32 %i.gx, 1
  %i.hb = sext i32 %i.ha to i64
  %i.hc = shl nsw i64 %i.hb, 2
  %i.hd = tail call ptr @realloc(ptr noundef %i.gz, i64 noundef %i.hc) #36 ; 6 uses
  %i.he = load ptr, ptr %i.fp, align 8, !tbaa !87
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 8
  store ptr %i.hd, ptr %i.hf, align 8, !tbaa !89
  %.not293 = icmp eq ptr %i.hd, null
  br i1 %.not293, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.hg = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.hh = tail call i64 @fwrite(ptr nonnull @.str.15, i64 24, i64 1, ptr %i.hg) #30 ; 0 uses
  tail call void @exit(i32 noundef 1) #32
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.hi = icmp eq i32 %i.gv, -1
  br i1 %i.hi, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hd, i64 4
  store i32 %spec.select302, ptr %i.hd, align 4, !tbaa !4
  store i32 -1, ptr %i.hj, align 4, !tbaa !4
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.hk = sext i32 %i.gv to i64
  %i.hl = getelementptr inbounds [8 x i8], ptr %2, i64 %i.hk
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !87 ; 2 uses
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !89 ; 3 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hm, i64 8
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !89 ; 3 uses
  %i.hq = load i32, ptr %i.hn, align 4, !tbaa !4  ; 3 uses
  %i.hr = load i32, ptr %i.hp, align 4, !tbaa !4  ; 3 uses
  %i.hs = icmp sgt i32 %i.hq, %i.hr               ; 2 uses
  %.305 = select i1 %i.hs, ptr %i.hn, ptr %i.hp   ; 2 uses
  %i.ht = tail call i32 @llvm.smin.i32(i32 %i.hq, i32 %i.hr) ; 2 uses
  %.not294361 = icmp eq i32 %i.ht, -1
  %i.hu = tail call i32 @llvm.smax.i32(i32 %i.hq, i32 %i.hr)
  br i1 %.not294361, label %.preheader, label %.lr.ph365.preheader

.lr.ph365.preheader:                              ; preds = %bb.y
  %.304 = select i1 %i.hs, ptr %i.hp, ptr %i.hn
  br label %.lr.ph365

.preheader.loopexit:                              ; preds = %.lr.ph365
  %.pre426 = load i32, ptr %.305, align 4, !tbaa !4
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.y
  %i.hv = phi i32 [ %i.hu, %bb.y ], [ %.pre426, %.preheader.loopexit ] ; 2 uses
  %.2268.lcssa = phi ptr [ %i.hd, %bb.y ], [ %i.hy, %.preheader.loopexit ] ; 2 uses
  %.not295367 = icmp eq i32 %i.hv, -1
  br i1 %.not295367, label %._crit_edge371, label %.lr.ph370

.lr.ph365:                                        ; preds = %.lr.ph365.preheader, %.lr.ph365
  %i.hw = phi i32 [ %i.hz, %.lr.ph365 ], [ %i.ht, %.lr.ph365.preheader ]
  %.2268363 = phi ptr [ %i.hy, %.lr.ph365 ], [ %i.hd, %.lr.ph365.preheader ] ; 2 uses
  %.2272362 = phi ptr [ %i.hx, %.lr.ph365 ], [ %.304, %.lr.ph365.preheader ]
end_hunk_4
begin_hunk_5_@fixed_musclesupg_float_realloc_nobk_halfmtx:bb.a
  %i.as = load ptr, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx.ac, align 8, !tbaa !98 ; 3 uses
  %i.at = getelementptr inbounds nuw [24 x i8], ptr %i.as, i64 %indvars.iv.epil.init ; 2 uses
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 -24
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr %i.au, ptr %i.av, align 8, !tbaa !108
  %i.aw = getelementptr inbounds nuw [24 x i8], ptr %i.as, i64 %indvars.iv.epil.init
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = trunc nuw nsw i64 %indvars.iv.epil.init to i32
  store i32 %i.ay, ptr %i.ax, align 8, !tbaa !109
  br label %.lr.ph298

.lr.ph298:                                        ; preds = %.lr.ph298.unr-lcssa, %.lr.ph.epil.preheader
  %.lcssa436 = phi ptr [ %i.u, %.lr.ph298.unr-lcssa ], [ %i.as, %.lr.ph.epil.preheader ]
  %i.az = add nsw i32 %0, -1                      ; 2 uses
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw [24 x i8], ptr %.lcssa436, i64 %i.ba
  store ptr null, ptr %i.bb, align 8, !tbaa !106
  %i.bc = load ptr, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx.ac, align 8, !tbaa !98 ; 3 uses
  %.not3540.i = icmp eq ptr %i.bc, null
  %wide.trip.count363 = zext nneg i32 %0 to i64
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph298, %setnearest.exit
  %indvars.iv360 = phi i64 [ 0, %.lr.ph298 ], [ %indvars.iv.next361, %setnearest.exit ] ; 8 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %.0, i64 %indvars.iv360 ; 3 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %.0216, i64 %indvars.iv360 ; 3 uses
  store float 9.999000e+02, ptr %i.bd, align 4, !tbaa !21
  store i32 -1, ptr %i.be, align 4, !tbaa !4
  %i.bf = getelementptr inbounds nuw [24 x i8], ptr %i.bc, i64 %indvars.iv360
  %.037.i = load ptr, ptr %i.bf, align 8, !tbaa !106 ; 2 uses
  %.not38.i = icmp eq ptr %.037.i, null
  br i1 %.not38.i, label %.lr.ph42.preheader.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv360
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !19
  %i.bi = trunc nuw nsw i64 %indvars.iv360 to i32
  br label %bb.i

.preheader.i:                                     ; preds = %bb.k
  br i1 %.not3540.i, label %setnearest.exit, label %.lr.ph42.preheader.i

.lr.ph42.preheader.i:                             ; preds = %.preheader.i, %bb.h
  %i.bj = phi float [ %i.bt, %.preheader.i ], [ 9.999000e+02, %bb.h ]
  %i.bk = trunc nuw nsw i64 %indvars.iv360 to i32
  br label %.lr.ph42.i

bb.i:                                             ; preds = %bb.k, %.lr.ph.i
  %i.bl = phi float [ 9.999000e+02, %.lr.ph.i ], [ %i.bt, %bb.k ] ; 2 uses
  %.039.i = phi ptr [ %.037.i, %.lr.ph.i ], [ %.0.i, %bb.k ] ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.039.i, i64 16
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !109 ; 2 uses
  %i.bo = sub nsw i32 %i.bn, %i.bi
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr inbounds [4 x i8], ptr %i.bh, i64 %i.bp
  %i.br = load float, ptr %i.bq, align 4, !tbaa !21 ; 3 uses
  %i.bs = fcmp olt float %i.br, %i.bl
  br i1 %i.bs, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store float %i.br, ptr %i.bd, align 4, !tbaa !21
  store i32 %i.bn, ptr %i.be, align 4, !tbaa !4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bt = phi float [ %i.bl, %bb.i ], [ %i.br, %bb.j ] ; 2 uses
  %.0.i = load ptr, ptr %.039.i, align 8, !tbaa !106 ; 2 uses
  %.not.i = icmp eq ptr %.0.i, null
  br i1 %.not.i, label %.preheader.i, label %bb.i, !llvm.loop !136

.lr.ph42.i:                                       ; preds = %bb.n, %.lr.ph42.preheader.i
  %i.bu = phi float [ %i.cg, %bb.n ], [ %i.bj, %.lr.ph42.preheader.i ] ; 2 uses
  %.141.i = phi ptr [ %i.ch, %bb.n ], [ %i.bc, %.lr.ph42.preheader.i ] ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.141.i, i64 16
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !109 ; 4 uses
  %i.bx = zext i32 %i.bw to i64
  %.not36.i = icmp eq i64 %indvars.iv360, %i.bx
  br i1 %.not36.i, label %setnearest.exit, label %bb.l

bb.l:                                             ; preds = %.lr.ph42.i
  %i.by = sext i32 %i.bw to i64
  %i.bz = getelementptr inbounds [8 x i8], ptr %1, i64 %i.by
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !19
  %i.cb = sub nsw i32 %i.bk, %i.bw
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %i.cc
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !21 ; 3 uses
  %i.cf = fcmp olt float %i.ce, %i.bu
  br i1 %i.cf, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store float %i.ce, ptr %i.bd, align 4, !tbaa !21
  store i32 %i.bw, ptr %i.be, align 4, !tbaa !4
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.cg = phi float [ %i.bu, %bb.l ], [ %i.ce, %bb.m ]
  %i.ch = load ptr, ptr %.141.i, align 8, !tbaa !106 ; 2 uses
  %.not35.i = icmp eq ptr %i.ch, null
  br i1 %.not35.i, label %setnearest.exit, label %.lr.ph42.i, !llvm.loop !137

setnearest.exit:                                  ; preds = %.lr.ph42.i, %bb.n, %.preheader.i
  %indvars.iv.next361 = add nuw nsw i64 %indvars.iv360, 1 ; 2 uses
  %exitcond364.not = icmp eq i64 %indvars.iv.next361, %wide.trip.count363
  br i1 %exitcond364.not, label %.lr.ph302, label %bb.h, !llvm.loop !151

.lr.ph302:                                        ; preds = %setnearest.exit
  %i.ci = load ptr, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx.tmptmplen, align 8, !tbaa !19
  %i.cj = zext nneg i32 %0 to i64
  %i.ck = shl nuw nsw i64 %i.cj, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ci, i8 0, i64 %i.ck, i1 false), !tbaa !21
  %i.cl = load ptr, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx.hist, align 8, !tbaa !89 ; 7 uses
  %i.cm = load ptr, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx.nmemar, align 8, !tbaa !89 ; 7 uses
  %wide.trip.count371 = zext nneg i32 %0 to i64
  %min.iters.check = icmp ult i32 %0, 8
  %i.cn = ptrtoaddr ptr %i.cm to i64
  %i.co = ptrtoaddr ptr %i.cl to i64
  %i.cp = sub i64 %i.co, %i.cn
  %diff.check = icmp ugt i64 %i.cp, -32
  %or.cond430 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond430, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph302
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %index ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  store <4 x i32> splat (i32 -1), ptr %i.cq, align 4, !tbaa !4
  store <4 x i32> splat (i32 -1), ptr %i.cr, align 4, !tbaa !4
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %index ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  store <4 x i32> splat (i32 1), ptr %i.cs, align 4, !tbaa !4
  store <4 x i32> splat (i32 1), ptr %i.ct, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cu = icmp eq i64 %index.next, %n.vec
  br i1 %i.cu, label %middle.block, label %vector.body, !llvm.loop !152

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge303, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph302, %middle.block
  %indvars.iv368.ph = phi i64 [ 0, %.lr.ph302 ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter439 = and i64 %wide.trip.count, 3      ; 2 uses
  %lcmp.mod440.not = icmp eq i64 %xtraiter439, 0
  br i1 %lcmp.mod440.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv368.prol = phi i64 [ %indvars.iv.next369.prol, %scalar.ph.prol ], [ %indvars.iv368.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %indvars.iv368.prol
  store i32 -1, ptr %i.cv, align 4, !tbaa !4
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv368.prol
  store i32 1, ptr %i.cw, align 4, !tbaa !4
  %indvars.iv.next369.prol = add nuw nsw i64 %indvars.iv368.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter439
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !153

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv368.unr = phi i64 [ %indvars.iv368.ph, %scalar.ph.preheader ], [ %indvars.iv.next369.prol, %scalar.ph.prol ]
  %i.cx = sub nsw i64 %indvars.iv368.ph, %wide.trip.count
  %i.cy = icmp ugt i64 %i.cx, -4
  br i1 %i.cy, label %._crit_edge303, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv368 = phi i64 [ %indvars.iv.next369.3, %scalar.ph ], [ %indvars.iv368.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %indvars.iv368
  store i32 -1, ptr %i.cz, align 4, !tbaa !4
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv368
  store i32 1, ptr %i.da, align 4, !tbaa !4
  %indvars.iv.next369 = add nuw nsw i64 %indvars.iv368, 1 ; 2 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %indvars.iv.next369
  store i32 -1, ptr %i.db, align 4, !tbaa !4
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv.next369
  store i32 1, ptr %i.dc, align 4, !tbaa !4
  %indvars.iv.next369.1 = add nuw nsw i64 %indvars.iv368, 2 ; 2 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %indvars.iv.next369.1
  store i32 -1, ptr %i.dd, align 4, !tbaa !4
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv.next369.1
  store i32 1, ptr %i.de, align 4, !tbaa !4
  %indvars.iv.next369.2 = add nuw nsw i64 %indvars.iv368, 3 ; 2 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %indvars.iv.next369.2
  store i32 -1, ptr %i.df, align 4, !tbaa !4
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv.next369.2
  store i32 1, ptr %i.dg, align 4, !tbaa !4
  %indvars.iv.next369.3 = add nuw nsw i64 %indvars.iv368, 4 ; 2 uses
  %exitcond372.not.3 = icmp eq i64 %indvars.iv.next369.3, %wide.trip.count371
  br i1 %exitcond372.not.3, label %._crit_edge303, label %scalar.ph, !llvm.loop !154

._crit_edge303:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.dh = load ptr, ptr @stderr, align 8, !tbaa !15
  %fputc = tail call i32 @fputc(i32 10, ptr %i.dh) ; 0 uses
  %.not421 = icmp eq i32 %0, 1
  br i1 %.not421, label %._crit_edge353, label %.lr.ph352.preheader

.lr.ph352.preheader:                              ; preds = %._crit_edge303
  %wide.trip.count376 = zext nneg i32 %i.az to i64
  br label %.lr.ph352

.lr.ph352:                                        ; preds = %.lr.ph352.preheader, %._crit_edge348
  %indvars.iv373 = phi i64 [ 0, %.lr.ph352.preheader ], [ %indvars.iv.next374, %._crit_edge348 ] ; 4 uses
  %.0231349 = phi i32 [ -1, %.lr.ph352.preheader ], [ %spec.select, %._crit_edge348 ] ; 2 uses
  %i.di = trunc nuw nsw i64 %indvars.iv373 to i32 ; 3 uses
  %i.dj = urem i32 %i.di, 10
  %i.dk = icmp eq i32 %i.dj, 0
  br i1 %i.dk, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.lr.ph352
  %i.dl = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.dm = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dl, ptr noundef nonnull @.str.13, i32 noundef %i.di, i32 noundef %0) #31 ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.lr.ph352
  %.0225304 = load ptr, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx.ac, align 8, !tbaa !98 ; 2 uses
  %i.dn = load ptr, ptr %.0225304, align 8, !tbaa !106 ; 2 uses
  %.not261305 = icmp eq ptr %i.dn, null
  br i1 %.not261305, label %._crit_edge311, label %.lr.ph310

.lr.ph310:                                        ; preds = %bb.p, %.lr.ph310
  %.0225 = phi ptr [ %i.du, %.lr.ph310 ], [ %i.dn, %bb.p ] ; 2 uses
  %.0225308 = phi ptr [ %.0225, %.lr.ph310 ], [ %.0225304, %bb.p ]
  %.0217307 = phi float [ %.1, %.lr.ph310 ], [ 9.999000e+02, %bb.p ] ; 2 uses
  %.1232306 = phi i32 [ %.2233, %.lr.ph310 ], [ %.0231349, %bb.p ]
  %i.do = getelementptr inbounds nuw i8, ptr %.0225308, i64 16
  %i.dp = load i32, ptr %i.do, align 8, !tbaa !109 ; 2 uses
  %i.dq = sext i32 %i.dp to i64
  %i.dr = getelementptr inbounds [4 x i8], ptr %.0, i64 %i.dq
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !21 ; 2 uses
  %i.dt = fcmp olt float %i.ds, %.0217307         ; 2 uses
  %.2233 = select i1 %i.dt, i32 %i.dp, i32 %.1232306 ; 2 uses
  %.1 = select i1 %i.dt, float %i.ds, float %.0217307 ; 2 uses
  %i.du = load ptr, ptr %.0225, align 8, !tbaa !106 ; 2 uses
  %.not261 = icmp eq ptr %i.du, null
  br i1 %.not261, label %._crit_edge311.loopexit, label %.lr.ph310, !llvm.loop !155

._crit_edge311.loopexit:                          ; preds = %.lr.ph310
  %i.dv = fmul float %.1, 5.000000e-01
  br label %._crit_edge311

._crit_edge311:                                   ; preds = %._crit_edge311.loopexit, %bb.p
  %.1232.lcssa = phi i32 [ %.0231349, %bb.p ], [ %.2233, %._crit_edge311.loopexit ] ; 3 uses
  %.0217.lcssa = phi float [ 4.999500e+02, %bb.p ], [ %i.dv, %._crit_edge311.loopexit ] ; 3 uses
  %i.dw = sext i32 %.1232.lcssa to i64
  %i.dx = getelementptr inbounds [4 x i8], ptr %.0216, i64 %i.dw
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !4  ; 2 uses
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.dy, i32 %.1232.lcssa) ; 10 uses
  %spec.select272 = tail call i32 @llvm.smax.i32(i32 %i.dy, i32 %.1232.lcssa) ; 7 uses
  %i.dz = load ptr, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx.hist, align 8, !tbaa !89 ; 2 uses
  %i.ea = sext i32 %spec.select to i64            ; 6 uses
  %i.eb = getelementptr inbounds [4 x i8], ptr %i.dz, i64 %i.ea ; 2 uses
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !4  ; 2 uses
  %i.ed = load ptr, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx.nmemar, align 8, !tbaa !89 ; 2 uses
  %i.ee = getelementptr inbounds [4 x i8], ptr %i.ed, i64 %i.ea ; 2 uses
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !4  ; 2 uses
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv373 ; 3 uses
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !87
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !89
  %i.ej = add nsw i32 %i.ef, 1
  %i.ek = sext i32 %i.ej to i64
  %i.el = shl nsw i64 %i.ek, 2
  %i.em = tail call ptr @realloc(ptr noundef %i.ei, i64 noundef %i.el) #36 ; 5 uses
  %i.en = load ptr, ptr %i.eg, align 8, !tbaa !87 ; 2 uses
  store ptr %i.em, ptr %i.en, align 8, !tbaa !89
  %i.eo = icmp eq i32 %i.ec, -1
  br i1 %i.eo, label %bb.q, label %bb.r

bb.q:                                             ; preds = %._crit_edge311
  %i.ep = getelementptr inbounds nuw i8, ptr %i.em, i64 4
  store i32 %spec.select, ptr %i.em, align 4, !tbaa !4
  store i32 -1, ptr %i.ep, align 4, !tbaa !4
  br label %bb.s

bb.r:                                             ; preds = %._crit_edge311
  %i.eq = sext i32 %i.ec to i64
  %i.er = getelementptr inbounds [8 x i8], ptr %2, i64 %i.eq
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !87 ; 2 uses
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !89 ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !89 ; 3 uses
  %i.ew = load i32, ptr %i.et, align 4, !tbaa !4  ; 3 uses
  %i.ex = load i32, ptr %i.ev, align 4, !tbaa !4  ; 3 uses
  %i.ey = icmp sgt i32 %i.ew, %i.ex               ; 2 uses
  %.273 = select i1 %i.ey, ptr %i.et, ptr %i.ev   ; 2 uses
  %i.ez = tail call i32 @llvm.smin.i32(i32 %i.ew, i32 %i.ex) ; 2 uses
  %.not262313 = icmp eq i32 %i.ez, -1
  %i.fa = tail call i32 @llvm.smax.i32(i32 %i.ew, i32 %i.ex)
  br i1 %.not262313, label %.preheader290, label %.lr.ph317.preheader

.lr.ph317.preheader:                              ; preds = %bb.r
  %. = select i1 %i.ey, ptr %i.ev, ptr %i.et
  br label %.lr.ph317

.preheader290.loopexit:                           ; preds = %.lr.ph317
  %.pre = load i32, ptr %.273, align 4, !tbaa !4
  br label %.preheader290

.preheader290:                                    ; preds = %.preheader290.loopexit, %bb.r
  %i.fb = phi i32 [ %i.fa, %bb.r ], [ %.pre, %.preheader290.loopexit ] ; 2 uses
  %.0237.lcssa = phi ptr [ %i.em, %bb.r ], [ %i.fe, %.preheader290.loopexit ] ; 2 uses
  %.not263319 = icmp eq i32 %i.fb, -1
  br i1 %.not263319, label %._crit_edge323, label %.lr.ph322

.lr.ph317:                                        ; preds = %.lr.ph317.preheader, %.lr.ph317
  %i.fc = phi i32 [ %i.ff, %.lr.ph317 ], [ %i.ez, %.lr.ph317.preheader ]
  %.0237315 = phi ptr [ %i.fe, %.lr.ph317 ], [ %i.em, %.lr.ph317.preheader ] ; 2 uses
  %.0241314 = phi ptr [ %i.fd, %.lr.ph317 ], [ %., %.lr.ph317.preheader ]
  %i.fd = getelementptr inbounds nuw i8, ptr %.0241314, i64 4 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.0237315, i64 4 ; 2 uses
  store i32 %i.fc, ptr %.0237315, align 4, !tbaa !4
  %i.ff = load i32, ptr %i.fd, align 4, !tbaa !4  ; 2 uses
  %.not262 = icmp eq i32 %i.ff, -1
  br i1 %.not262, label %.preheader290.loopexit, label %.lr.ph317, !llvm.loop !156

.lr.ph322:                                        ; preds = %.preheader290, %.lr.ph322
  %i.fg = phi i32 [ %i.fj, %.lr.ph322 ], [ %i.fb, %.preheader290 ]
  %.1238321 = phi ptr [ %i.fi, %.lr.ph322 ], [ %.0237.lcssa, %.preheader290 ] ; 2 uses
  %.1242320 = phi ptr [ %i.fh, %.lr.ph322 ], [ %.273, %.preheader290 ]
  %i.fh = getelementptr inbounds nuw i8, ptr %.1242320, i64 4 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.1238321, i64 4 ; 2 uses
  store i32 %i.fg, ptr %.1238321, align 4, !tbaa !4
  %i.fj = load i32, ptr %i.fh, align 4, !tbaa !4  ; 2 uses
  %.not263 = icmp eq i32 %i.fj, -1
  br i1 %.not263, label %._crit_edge323, label %.lr.ph322, !llvm.loop !157

._crit_edge323:                                   ; preds = %.lr.ph322, %.preheader290
  %.1238.lcssa = phi ptr [ %.0237.lcssa, %.preheader290 ], [ %i.fi, %.lr.ph322 ]
  store i32 -1, ptr %.1238.lcssa, align 4, !tbaa !4
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge323, %bb.q
  %i.fk = sext i32 %spec.select272 to i64         ; 5 uses
  %i.fl = getelementptr inbounds [4 x i8], ptr %i.dz, i64 %i.fk
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !4  ; 2 uses
  %i.fn = getelementptr inbounds [4 x i8], ptr %i.ed, i64 %i.fk
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !4  ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !89
  %i.fr = add nsw i32 %i.fo, 1
  %i.fs = sext i32 %i.fr to i64
  %i.ft = shl nsw i64 %i.fs, 2
  %i.fu = tail call ptr @realloc(ptr noundef %i.fq, i64 noundef %i.ft) #36 ; 6 uses
  %i.fv = load ptr, ptr %i.eg, align 8, !tbaa !87
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  store ptr %i.fu, ptr %i.fw, align 8, !tbaa !89
  %.not264 = icmp eq ptr %i.fu, null
  br i1 %.not264, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.fx = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.fy = tail call i64 @fwrite(ptr nonnull @.str.15, i64 24, i64 1, ptr %i.fx) #30 ; 0 uses
  tail call void @exit(i32 noundef 1) #32
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.fz = icmp eq i32 %i.fm, -1
  br i1 %i.fz, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fu, i64 4
  store i32 %spec.select272, ptr %i.fu, align 4, !tbaa !4
  store i32 -1, ptr %i.ga, align 4, !tbaa !4
  br label %.lr.ph341

bb.w:                                             ; preds = %bb.u
  %i.gb = sext i32 %i.fm to i64
  %i.gc = getelementptr inbounds [8 x i8], ptr %2, i64 %i.gb
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !87 ; 2 uses
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !89 ; 3 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !89 ; 3 uses
  %i.gh = load i32, ptr %i.ge, align 4, !tbaa !4  ; 3 uses
  %i.gi = load i32, ptr %i.gg, align 4, !tbaa !4  ; 3 uses
  %i.gj = icmp sgt i32 %i.gh, %i.gi               ; 2 uses
  %.275 = select i1 %i.gj, ptr %i.ge, ptr %i.gg   ; 2 uses
  %i.gk = tail call i32 @llvm.smin.i32(i32 %i.gh, i32 %i.gi) ; 2 uses
  %.not265325 = icmp eq i32 %i.gk, -1
  %i.gl = tail call i32 @llvm.smax.i32(i32 %i.gh, i32 %i.gi)
  br i1 %.not265325, label %.preheader, label %.lr.ph329.preheader

.lr.ph329.preheader:                              ; preds = %bb.w
  %.274 = select i1 %i.gj, ptr %i.gg, ptr %i.ge
  br label %.lr.ph329

.preheader.loopexit:                              ; preds = %.lr.ph329
  %.pre380 = load i32, ptr %.275, align 4, !tbaa !4
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.w
  %i.gm = phi i32 [ %i.gl, %bb.w ], [ %.pre380, %.preheader.loopexit ] ; 2 uses
  %.2239.lcssa = phi ptr [ %i.fu, %bb.w ], [ %i.gp, %.preheader.loopexit ] ; 2 uses
  %.not266331 = icmp eq i32 %i.gm, -1
  br i1 %.not266331, label %._crit_edge335, label %.lr.ph334

.lr.ph329:                                        ; preds = %.lr.ph329.preheader, %.lr.ph329
  %i.gn = phi i32 [ %i.gq, %.lr.ph329 ], [ %i.gk, %.lr.ph329.preheader ]
  %.2239327 = phi ptr [ %i.gp, %.lr.ph329 ], [ %i.fu, %.lr.ph329.preheader ] ; 2 uses
  %.2243326 = phi ptr [ %i.go, %.lr.ph329 ], [ %.274, %.lr.ph329.preheader ]
end_hunk_5
begin_hunk_6_@fixed_musclesupg_float_realloc_nobk_halfmtx:bb.a
  br i1 %.not36.i287, label %setnearest.exit289, label %bb.an

bb.an:                                            ; preds = %.lr.ph42.i285
  %i.jm = sext i32 %i.jl to i64
  %i.jn = getelementptr inbounds [8 x i8], ptr %1, i64 %i.jm
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !19
  %i.jp = sub nsw i32 %i.ir, %i.jl
  %i.jq = sext i32 %i.jp to i64
  %i.jr = getelementptr inbounds [4 x i8], ptr %i.jo, i64 %i.jq
  %i.js = load float, ptr %i.jr, align 4, !tbaa !21 ; 3 uses
  %i.jt = fcmp olt float %i.js, %i.jj
  br i1 %i.jt, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  store float %i.js, ptr %i.iw, align 4, !tbaa !21
  store i32 %i.jl, ptr %i.it, align 4, !tbaa !4
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.ju = phi float [ %i.jj, %bb.an ], [ %i.js, %bb.ao ]
  %i.jv = load ptr, ptr %.141.i286, align 8, !tbaa !106 ; 2 uses
  %.not35.i288 = icmp eq ptr %i.jv, null
  br i1 %.not35.i288, label %setnearest.exit289, label %.lr.ph42.i285, !llvm.loop !137

setnearest.exit289:                               ; preds = %bb.ap, %.lr.ph42.i285, %.lr.ph347
  %.2227 = load ptr, ptr %.2227345, align 8, !tbaa !98 ; 2 uses
  %.not269 = icmp eq ptr %.2227, null
  br i1 %.not269, label %._crit_edge348, label %.lr.ph347, !llvm.loop !162

._crit_edge348:                                   ; preds = %setnearest.exit289, %bb.ai
  %indvars.iv.next374 = add nuw nsw i64 %indvars.iv373, 1 ; 2 uses
  %exitcond377.not = icmp eq i64 %indvars.iv.next374, %wide.trip.count376
  br i1 %exitcond377.not, label %._crit_edge353, label %.lr.ph352, !llvm.loop !163

._crit_edge353:                                   ; preds = %._crit_edge348, %.preheader292.thread, %._crit_edge303
  %i.jw = load ptr, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx.tmptmplen, align 8, !tbaa !19
  tail call void @free(ptr noundef %i.jw) #33
  store ptr null, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx.tmptmplen, align 8, !tbaa !19
  %i.jx = load ptr, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx.hist, align 8, !tbaa !89
  tail call void @free(ptr noundef %i.jx) #33
  store ptr null, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx.hist, align 8, !tbaa !89
  %i.jy = load ptr, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx.ac, align 8, !tbaa !98
  tail call void @free(ptr noundef %i.jy) #33
  store ptr null, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx.ac, align 8, !tbaa !98
  %i.jz = load ptr, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx.nmemar, align 8, !tbaa !89
  tail call void @free(ptr noundef %i.jz) #33
  store ptr null, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx.nmemar, align 8, !tbaa !89
  tail call void @free(ptr noundef %.0) #33
  tail call void @free(ptr noundef %.0216) #33
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @veryfastsupg_double_loadtop(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #12 {
bb.a:
  %i.a = alloca [2 x i32], align 4                ; 6 uses
  %i.b = alloca [2 x float], align 8              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  %i.c = tail call noalias ptr @fopen(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9) ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.e = tail call i64 @fwrite(ptr nonnull @.str.10, i64 23, i64 1, ptr %i.d) #30 ; 0 uses
  tail call void @exit(i32 noundef 1) #32
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = load ptr, ptr @veryfastsupg_double_loadtop.hist, align 8, !tbaa !89
  %.not186 = icmp eq ptr %i.f, null
  br i1 %.not186, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = load i32, ptr @njob, align 4, !tbaa !4
  %i.h = mul nsw i32 %i.g, 50
  %i.i = tail call ptr @AllocateCharVec(i32 noundef %i.h) #33
  store ptr %i.i, ptr @veryfastsupg_double_loadtop.treetmp, align 8, !tbaa !12
  %i.j = load i32, ptr @njob, align 4, !tbaa !4   ; 2 uses
  %i.k = mul nsw i32 %i.j, 50
  %i.l = tail call ptr @AllocateCharMtx(i32 noundef %i.j, i32 noundef %i.k) #33
  store ptr %i.l, ptr @veryfastsupg_double_loadtop.tree, align 8, !tbaa !77
  %i.m = load i32, ptr @njob, align 4, !tbaa !4
  %i.n = tail call ptr @AllocateIntVec(i32 noundef %i.m) #33
  store ptr %i.n, ptr @veryfastsupg_double_loadtop.hist, align 8, !tbaa !89
  %i.o = load i32, ptr @njob, align 4, !tbaa !4
  %i.p = sext i32 %i.o to i64
  %i.q = shl nsw i64 %i.p, 3
  %i.r = tail call noalias ptr @malloc(i64 noundef %i.q) #34
  store ptr %i.r, ptr @veryfastsupg_double_loadtop.tmptmplen, align 8, !tbaa !52
  %i.s = load i32, ptr @njob, align 4, !tbaa !4
  %i.t = sext i32 %i.s to i64
  %i.u = shl nsw i64 %i.t, 3
  %i.v = tail call noalias ptr @malloc(i64 noundef %i.u) #34
  store ptr %i.v, ptr @veryfastsupg_double_loadtop.ac, align 8, !tbaa !164
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.w = icmp sgt i32 %0, 0
  br i1 %i.w, label %.lr.ph.preheader, label %._crit_edge212.thread

.lr.ph.preheader:                                 ; preds = %bb.e
  %wide.trip.count = zext nneg i32 %0 to i64      ; 3 uses
  br label %.lr.ph

.lr.ph206:                                        ; preds = %.lr.ph
  %.pre283 = load ptr, ptr @veryfastsupg_double_loadtop.ac, align 8, !tbaa !164 ; 4 uses
  %wide.trip.count249 = zext nneg i32 %0 to i64
  %min.iters.check = icmp ult i32 %0, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph206
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %vec.ind295 = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph ], [ %vec.ind.next298, %vector.body ] ; 3 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %.pre283, i64 %index
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %.pre283, i64 %index
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = trunc <2 x i64> %vec.ind to <2 x i32>
  %i.ab = trunc <2 x i64> %vec.ind to <2 x i32>
  %i.ac = shufflevector <2 x i32> %i.aa, <2 x i32> %vec.ind295, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %interleaved.vec = add <4 x i32> %i.ac, <i32 1, i32 -1, i32 1, i32 -1>
  store <4 x i32> %interleaved.vec, ptr %i.x, align 4, !tbaa !4
  %i.ad = shufflevector <2 x i32> %i.ab, <2 x i32> %vec.ind295, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %interleaved.vec297 = add <4 x i32> %i.ad, <i32 3, i32 1, i32 3, i32 1>
  store <4 x i32> %interleaved.vec297, ptr %i.z, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %vec.ind.next298 = add <2 x i32> %vec.ind295, splat (i32 4)
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !166

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge212, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph206, %middle.block
  %indvars.iv246.ph = phi i64 [ 0, %.lr.ph206 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.af = load ptr, ptr @veryfastsupg_double_loadtop.tree, align 8, !tbaa !77
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ai = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.aj = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.ah, ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef %i.ai) #33 ; 0 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph206, label %.lr.ph, !llvm.loop !167

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv246 = phi i64 [ %indvars.iv.next247, %scalar.ph ], [ %indvars.iv246.ph, %scalar.ph.preheader ] ; 3 uses
  %indvars.iv.next247 = add nuw nsw i64 %indvars.iv246, 1 ; 3 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %.pre283, i64 %indvars.iv246 ; 2 uses
  %i.al = trunc nuw nsw i64 %indvars.iv.next247 to i32
  store i32 %i.al, ptr %i.ak, align 4, !tbaa !168
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.an = trunc i64 %indvars.iv246 to i32
  %i.ao = add i32 %i.an, -1
  store i32 %i.ao, ptr %i.am, align 4, !tbaa !170
  %exitcond250.not = icmp eq i64 %indvars.iv.next247, %wide.trip.count249
  br i1 %exitcond250.not, label %._crit_edge212, label %scalar.ph, !llvm.loop !171

._crit_edge212.thread:                            ; preds = %bb.e
  %.pre = load ptr, ptr @veryfastsupg_double_loadtop.ac, align 8, !tbaa !164
  %i.ap = sext i32 %0 to i64
  %i.aq = getelementptr [8 x i8], ptr %.pre, i64 %i.ap
  %i.ar = getelementptr i8, ptr %i.aq, i64 -8
  store i32 -1, ptr %i.ar, align 4, !tbaa !168
  %i.as = load ptr, ptr @stderr, align 8, !tbaa !15
  %fputc287 = tail call i32 @fputc(i32 10, ptr %i.as) ; 0 uses
  br label %._crit_edge241

._crit_edge212:                                   ; preds = %scalar.ph, %middle.block
  %i.at = add nsw i32 %0, -1                      ; 2 uses
  %i.au = zext nneg i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %.pre283, i64 %i.au
  store i32 -1, ptr %i.av, align 4, !tbaa !168
  %i.aw = load ptr, ptr @veryfastsupg_double_loadtop.tmptmplen, align 8, !tbaa !52
  %i.ax = zext nneg i32 %0 to i64
  %i.ay = shl nuw nsw i64 %i.ax, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.aw, i8 0, i64 %i.ay, i1 false), !tbaa !24
  %i.az = load ptr, ptr @veryfastsupg_double_loadtop.hist, align 8, !tbaa !89
  %i.ba = zext nneg i32 %0 to i64
  %i.bb = shl nuw nsw i64 %i.ba, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.az, i8 -1, i64 %i.bb, i1 false), !tbaa !4
  %i.bc = load ptr, ptr @stderr, align 8, !tbaa !15
  %fputc = tail call i32 @fputc(i32 10, ptr %i.bc) ; 0 uses
  %.not291 = icmp eq i32 %0, 1
  br i1 %.not291, label %._crit_edge241, label %.lr.ph240

.lr.ph240:                                        ; preds = %._crit_edge212
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 3 uses
  %wide.trip.count260 = zext nneg i32 %i.at to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph240, %bb.ac
  %indvars.iv257 = phi i64 [ 0, %.lr.ph240 ], [ %indvars.iv.next258, %bb.ac ] ; 4 uses
  %i.bf = trunc nuw nsw i64 %indvars.iv257 to i32 ; 3 uses
  %i.bg = urem i32 %i.bf, 10
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bi = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.bj = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bi, ptr noundef nonnull @.str.24, i32 noundef %i.bf, i32 noundef %0) #31 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  store <2 x float> splat (float -1.000000e+00), ptr %i.b, align 8, !tbaa !21
  %i.bk = call ptr @fgets(ptr noundef nonnull @loadtreeoneline.gett, i32 noundef 999, ptr noundef nonnull %i.c) ; 0 uses
  %i.bl = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull @loadtreeoneline.gett, ptr noundef nonnull @.str.38, ptr noundef nonnull %i.a, ptr noundef nonnull %i.be, ptr noundef nonnull %i.b, ptr noundef nonnull %i.bd) #33 ; 0 uses
  %i.bm = load i32, ptr %i.a, align 4, !tbaa !4   ; 2 uses
  %i.bn = add nsw i32 %i.bm, -1                   ; 5 uses
  store i32 %i.bn, ptr %i.a, align 4, !tbaa !4
  %i.bo = load i32, ptr %i.be, align 4, !tbaa !4  ; 2 uses
  %i.bp = add nsw i32 %i.bo, -1                   ; 6 uses
  store i32 %i.bp, ptr %i.be, align 4, !tbaa !4
  %.not.i = icmp slt i32 %i.bm, %i.bo
  br i1 %.not.i, label %loadtreeoneline.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bq = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.br = call i64 @fwrite(ptr nonnull @.str.39, i64 21, i64 1, ptr %i.bq) #30 ; 0 uses
  call void @exit(i32 noundef 1) #32
  unreachable

loadtreeoneline.exit:                             ; preds = %bb.h
  %i.bs = sext i32 %i.bn to i64                   ; 7 uses
  %i.bt = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bs
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !52
  %i.bv = sext i32 %i.bp to i64                   ; 6 uses
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.bu, i64 %i.bv
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !24
  %i.by = load float, ptr %i.b, align 8, !tbaa !21
  %i.bz = fcmp une float %i.by, -1.000000e+00
  %i.ca = load float, ptr %i.bd, align 4
  %i.cb = fcmp une float %i.ca, -1.000000e+00
  %or.cond = select i1 %i.bz, i1 true, i1 %i.cb
  br i1 %or.cond, label %bb.j, label %bb.k

bb.j:                                             ; preds = %loadtreeoneline.exit
  %i.cc = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.cd = call i64 @fwrite(ptr nonnull @.str.25, i64 34, i64 1, ptr %i.cc) #30 ; 0 uses
  call void @exit(i32 noundef 1) #32
  unreachable

bb.k:                                             ; preds = %loadtreeoneline.exit
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv257
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !87 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !89 ; 4 uses
  %i.ch = load ptr, ptr @veryfastsupg_double_loadtop.hist, align 8, !tbaa !89 ; 2 uses
  %i.ci = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %i.bs ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !4  ; 2 uses
  %i.ck = icmp eq i32 %i.cj, -1
  br i1 %i.ck, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cg, i64 4
  store i32 %i.bn, ptr %i.cg, align 4, !tbaa !4
  store i32 -1, ptr %i.cl, align 4, !tbaa !4
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.cm = sext i32 %i.cj to i64
  %i.cn = getelementptr inbounds [8 x i8], ptr %2, i64 %i.cm
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !87 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !89 ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !89 ; 3 uses
  %i.cs = load i32, ptr %i.cp, align 4, !tbaa !4  ; 3 uses
  %i.ct = load i32, ptr %i.cr, align 4, !tbaa !4  ; 3 uses
  %i.cu = icmp sgt i32 %i.cs, %i.ct               ; 2 uses
  %.197 = select i1 %i.cu, ptr %i.cp, ptr %i.cr   ; 2 uses
  %i.cv = call i32 @llvm.smin.i32(i32 %i.cs, i32 %i.ct) ; 2 uses
  %.not188213 = icmp eq i32 %i.cv, -1
  %i.cw = call i32 @llvm.smax.i32(i32 %i.cs, i32 %i.ct)
  br i1 %.not188213, label %.preheader201, label %.lr.ph217.preheader

.lr.ph217.preheader:                              ; preds = %bb.m
  %. = select i1 %i.cu, ptr %i.cr, ptr %i.cp
  br label %.lr.ph217

.preheader201.loopexit:                           ; preds = %.lr.ph217
  %.pre262 = load i32, ptr %.197, align 4, !tbaa !4
  br label %.preheader201

.preheader201:                                    ; preds = %.preheader201.loopexit, %bb.m
  %i.cx = phi i32 [ %i.cw, %bb.m ], [ %.pre262, %.preheader201.loopexit ] ; 2 uses
  %.0169.lcssa = phi ptr [ %i.cg, %bb.m ], [ %i.da, %.preheader201.loopexit ] ; 2 uses
  %.not189218 = icmp eq i32 %i.cx, -1
  br i1 %.not189218, label %._crit_edge222, label %.lr.ph221

.lr.ph217:                                        ; preds = %.lr.ph217.preheader, %.lr.ph217
  %i.cy = phi i32 [ %i.db, %.lr.ph217 ], [ %i.cv, %.lr.ph217.preheader ]
  %.0165215 = phi ptr [ %i.cz, %.lr.ph217 ], [ %., %.lr.ph217.preheader ]
  %.0169214 = phi ptr [ %i.da, %.lr.ph217 ], [ %i.cg, %.lr.ph217.preheader ] ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.0165215, i64 4 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.0169214, i64 4 ; 2 uses
  store i32 %i.cy, ptr %.0169214, align 4, !tbaa !4
  %i.db = load i32, ptr %i.cz, align 4, !tbaa !4  ; 2 uses
  %.not188 = icmp eq i32 %i.db, -1
  br i1 %.not188, label %.preheader201.loopexit, label %.lr.ph217, !llvm.loop !172

.lr.ph221:                                        ; preds = %.preheader201, %.lr.ph221
  %i.dc = phi i32 [ %i.df, %.lr.ph221 ], [ %i.cx, %.preheader201 ]
  %.1166220 = phi ptr [ %i.dd, %.lr.ph221 ], [ %.197, %.preheader201 ]
  %.1170219 = phi ptr [ %i.de, %.lr.ph221 ], [ %.0169.lcssa, %.preheader201 ] ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.1166220, i64 4 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.1170219, i64 4 ; 2 uses
  store i32 %i.dc, ptr %.1170219, align 4, !tbaa !4
  %i.df = load i32, ptr %i.dd, align 4, !tbaa !4  ; 2 uses
  %.not189 = icmp eq i32 %i.df, -1
  br i1 %.not189, label %._crit_edge222, label %.lr.ph221, !llvm.loop !173

._crit_edge222:                                   ; preds = %.lr.ph221, %.preheader201
  %.1170.lcssa = phi ptr [ %.0169.lcssa, %.preheader201 ], [ %i.de, %.lr.ph221 ]
  store i32 -1, ptr %.1170.lcssa, align 4, !tbaa !4
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge222, %bb.l
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !89 ; 4 uses
  %i.di = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %i.bv
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !4  ; 2 uses
  %i.dk = icmp eq i32 %i.dj, -1
  br i1 %i.dk, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 4
  store i32 %i.bp, ptr %i.dh, align 4, !tbaa !4
  store i32 -1, ptr %i.dl, align 4, !tbaa !4
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.dm = sext i32 %i.dj to i64
  %i.dn = getelementptr inbounds [8 x i8], ptr %2, i64 %i.dm
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !87 ; 2 uses
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !89 ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !89 ; 3 uses
  %i.ds = load i32, ptr %i.dp, align 4, !tbaa !4  ; 3 uses
  %i.dt = load i32, ptr %i.dr, align 4, !tbaa !4  ; 3 uses
  %i.du = icmp sgt i32 %i.ds, %i.dt               ; 2 uses
  %.199 = select i1 %i.du, ptr %i.dp, ptr %i.dr   ; 2 uses
  %i.dv = call i32 @llvm.smin.i32(i32 %i.ds, i32 %i.dt) ; 2 uses
  %.not190224 = icmp eq i32 %i.dv, -1
  %i.dw = call i32 @llvm.smax.i32(i32 %i.ds, i32 %i.dt)
  br i1 %.not190224, label %.preheader, label %.lr.ph228.preheader

.lr.ph228.preheader:                              ; preds = %bb.p
  %.198 = select i1 %i.du, ptr %i.dr, ptr %i.dp
  br label %.lr.ph228

.preheader.loopexit:                              ; preds = %.lr.ph228
  %.pre263 = load i32, ptr %.199, align 4, !tbaa !4
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.p
  %i.dx = phi i32 [ %i.dw, %bb.p ], [ %.pre263, %.preheader.loopexit ] ; 2 uses
  %.2171.lcssa = phi ptr [ %i.dh, %bb.p ], [ %i.ea, %.preheader.loopexit ] ; 2 uses
  %.not191230 = icmp eq i32 %i.dx, -1
  br i1 %.not191230, label %._crit_edge234, label %.lr.ph233

.lr.ph228:                                        ; preds = %.lr.ph228.preheader, %.lr.ph228
  %i.dy = phi i32 [ %i.eb, %.lr.ph228 ], [ %i.dv, %.lr.ph228.preheader ]
  %.2167226 = phi ptr [ %i.dz, %.lr.ph228 ], [ %.198, %.lr.ph228.preheader ]
  %.2171225 = phi ptr [ %i.ea, %.lr.ph228 ], [ %i.dh, %.lr.ph228.preheader ] ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.2167226, i64 4 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.2171225, i64 4 ; 2 uses
  store i32 %i.dy, ptr %.2171225, align 4, !tbaa !4
  %i.eb = load i32, ptr %i.dz, align 4, !tbaa !4  ; 2 uses
  %.not190 = icmp eq i32 %i.eb, -1
  br i1 %.not190, label %.preheader.loopexit, label %.lr.ph228, !llvm.loop !174

.lr.ph233:                                        ; preds = %.preheader, %.lr.ph233
  %i.ec = phi i32 [ %i.ef, %.lr.ph233 ], [ %i.dx, %.preheader ]
  %.3168232 = phi ptr [ %i.ed, %.lr.ph233 ], [ %.199, %.preheader ]
  %.3172231 = phi ptr [ %i.ee, %.lr.ph233 ], [ %.2171.lcssa, %.preheader ] ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.3168232, i64 4 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.3172231, i64 4 ; 2 uses
  store i32 %i.ec, ptr %.3172231, align 4, !tbaa !4
  %i.ef = load i32, ptr %i.ed, align 4, !tbaa !4  ; 2 uses
  %.not191 = icmp eq i32 %i.ef, -1
  br i1 %.not191, label %._crit_edge234, label %.lr.ph233, !llvm.loop !175

._crit_edge234:                                   ; preds = %.lr.ph233, %.preheader
  %.3172.lcssa = phi ptr [ %.2171.lcssa, %.preheader ], [ %i.ee, %.lr.ph233 ]
  store i32 -1, ptr %.3172.lcssa, align 4, !tbaa !4
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge234, %bb.o
  %i.eg = fmul double %i.bx, 5.000000e-01         ; 3 uses
  %i.eh = load ptr, ptr @veryfastsupg_double_loadtop.tmptmplen, align 8, !tbaa !52 ; 2 uses
end_hunk_6
begin_hunk_7_@veryfastsupg_double_loadtop:bb.a
bb.ab:                                            ; preds = %bb.aa
  %i.fs = sext i32 %i.fp to i64
  %i.ft = getelementptr inbounds [8 x i8], ptr %i.et, i64 %i.fs
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 4
  store i32 %i.fo, ptr %i.fu, align 4, !tbaa !170
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.fv = load ptr, ptr @veryfastsupg_double_loadtop.treetmp, align 8, !tbaa !12
  %i.fw = load ptr, ptr @veryfastsupg_double_loadtop.tree, align 8, !tbaa !77 ; 2 uses
  %i.fx = getelementptr inbounds [8 x i8], ptr %i.fw, i64 %i.bs
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !12
  %i.fz = load double, ptr %i.em, align 8, !tbaa !24
  %i.ga = getelementptr inbounds [8 x i8], ptr %i.fw, i64 %i.bv
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !12
  %i.gc = load double, ptr %i.eq, align 8, !tbaa !24
  %i.gd = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.fv, ptr noundef nonnull dereferenceable(1) @.str.16, ptr noundef %i.fy, double noundef %i.fz, ptr noundef %i.gb, double noundef %i.gc) #33 ; 0 uses
  %i.ge = load ptr, ptr @veryfastsupg_double_loadtop.tree, align 8, !tbaa !77
  %i.gf = getelementptr inbounds [8 x i8], ptr %i.ge, i64 %i.bs
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !12
  %i.gh = load ptr, ptr @veryfastsupg_double_loadtop.treetmp, align 8, !tbaa !12
  %i.gi = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.gg, ptr noundef nonnull dereferenceable(1) %i.gh) #33 ; 0 uses
  %indvars.iv.next258 = add nuw nsw i64 %indvars.iv257, 1 ; 2 uses
  %exitcond261.not = icmp eq i64 %indvars.iv.next258, %wide.trip.count260
  br i1 %exitcond261.not, label %._crit_edge241, label %bb.f, !llvm.loop !177

._crit_edge241:                                   ; preds = %bb.ac, %._crit_edge212.thread, %._crit_edge212
  %i.gj = call i32 @fclose(ptr noundef nonnull %i.c) ; 0 uses
  %i.gk = call noalias ptr @fopen(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18) ; 2 uses
  %i.gl = load ptr, ptr @veryfastsupg_double_loadtop.treetmp, align 8, !tbaa !12
  %i.gm = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gk, ptr noundef nonnull @.str.4, ptr noundef %i.gl) #33 ; 0 uses
  %i.gn = call i32 @fclose(ptr noundef %i.gk)     ; 0 uses
  %i.go = load ptr, ptr @stderr, align 8, !tbaa !15
  %fputc187 = call i32 @fputc(i32 10, ptr %i.go)  ; 0 uses
  %i.gp = load ptr, ptr @veryfastsupg_double_loadtop.tmptmplen, align 8, !tbaa !52
  call void @free(ptr noundef %i.gp) #33
  store ptr null, ptr @veryfastsupg_double_loadtop.tmptmplen, align 8, !tbaa !52
  %i.gq = load ptr, ptr @veryfastsupg_double_loadtop.hist, align 8, !tbaa !89
  call void @free(ptr noundef %i.gq) #33
  store ptr null, ptr @veryfastsupg_double_loadtop.hist, align 8, !tbaa !89
  %i.gr = load ptr, ptr @veryfastsupg_double_loadtop.ac, align 8, !tbaa !164
  call void @free(ptr noundef %i.gr) #33
  store ptr null, ptr @veryfastsupg_double_loadtop.ac, align 8, !tbaa !164
  %i.gs = load ptr, ptr @veryfastsupg_double_loadtop.tree, align 8, !tbaa !77
  call void @FreeCharMtx(ptr noundef %i.gs) #33
  %i.gt = load ptr, ptr @veryfastsupg_double_loadtop.treetmp, align 8, !tbaa !12
  call void @free(ptr noundef %i.gt) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @veryfastsupg_double_loadtree(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #12 {
bb.a:
  %i.a = alloca [2 x i32], align 4                ; 6 uses
  %i.b = alloca [2 x float], align 8              ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  %i.c = tail call noalias ptr @fopen(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9) ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.e = tail call i64 @fwrite(ptr nonnull @.str.10, i64 23, i64 1, ptr %i.d) #30 ; 0 uses
  tail call void @exit(i32 noundef 1) #32
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = load ptr, ptr @veryfastsupg_double_loadtree.hist, align 8, !tbaa !89
  %.not175 = icmp eq ptr %i.f, null
  br i1 %.not175, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = load i32, ptr @njob, align 4, !tbaa !4
  %i.h = mul nsw i32 %i.g, 50
  %i.i = tail call ptr @AllocateCharVec(i32 noundef %i.h) #33
  store ptr %i.i, ptr @veryfastsupg_double_loadtree.treetmp, align 8, !tbaa !12
  %i.j = load i32, ptr @njob, align 4, !tbaa !4   ; 2 uses
  %i.k = mul nsw i32 %i.j, 50
  %i.l = tail call ptr @AllocateCharMtx(i32 noundef %i.j, i32 noundef %i.k) #33
  store ptr %i.l, ptr @veryfastsupg_double_loadtree.tree, align 8, !tbaa !77
  %i.m = load i32, ptr @njob, align 4, !tbaa !4
  %i.n = tail call ptr @AllocateIntVec(i32 noundef %i.m) #33
  store ptr %i.n, ptr @veryfastsupg_double_loadtree.hist, align 8, !tbaa !89
  %i.o = load i32, ptr @njob, align 4, !tbaa !4
  %i.p = sext i32 %i.o to i64
  %i.q = shl nsw i64 %i.p, 3
  %i.r = tail call noalias ptr @malloc(i64 noundef %i.q) #34
  store ptr %i.r, ptr @veryfastsupg_double_loadtree.tmptmplen, align 8, !tbaa !52
  %i.s = load i32, ptr @njob, align 4, !tbaa !4
  %i.t = sext i32 %i.s to i64
  %i.u = shl nsw i64 %i.t, 3
  %i.v = tail call noalias ptr @malloc(i64 noundef %i.u) #34
  store ptr %i.v, ptr @veryfastsupg_double_loadtree.ac, align 8, !tbaa !164
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.w = icmp sgt i32 %0, 0
  br i1 %i.w, label %.lr.ph.preheader, label %._crit_edge201.thread

.lr.ph.preheader:                                 ; preds = %bb.e
  %wide.trip.count = zext nneg i32 %0 to i64      ; 3 uses
  br label %.lr.ph

.lr.ph195:                                        ; preds = %.lr.ph
  %.pre274 = load ptr, ptr @veryfastsupg_double_loadtree.ac, align 8, !tbaa !164 ; 4 uses
  %wide.trip.count238 = zext nneg i32 %0 to i64
  %min.iters.check = icmp ult i32 %0, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph195
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %vec.ind286 = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph ], [ %vec.ind.next289, %vector.body ] ; 3 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %.pre274, i64 %index
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %.pre274, i64 %index
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = trunc <2 x i64> %vec.ind to <2 x i32>
  %i.ab = trunc <2 x i64> %vec.ind to <2 x i32>
  %i.ac = shufflevector <2 x i32> %i.aa, <2 x i32> %vec.ind286, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %interleaved.vec = add <4 x i32> %i.ac, <i32 1, i32 -1, i32 1, i32 -1>
  store <4 x i32> %interleaved.vec, ptr %i.x, align 4, !tbaa !4
  %i.ad = shufflevector <2 x i32> %i.ab, <2 x i32> %vec.ind286, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %interleaved.vec288 = add <4 x i32> %i.ad, <i32 3, i32 1, i32 3, i32 1>
  store <4 x i32> %interleaved.vec288, ptr %i.z, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %vec.ind.next289 = add <2 x i32> %vec.ind286, splat (i32 4)
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !178

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge201, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph195, %middle.block
  %indvars.iv235.ph = phi i64 [ 0, %.lr.ph195 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.af = load ptr, ptr @veryfastsupg_double_loadtree.tree, align 8, !tbaa !77
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ai = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.aj = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.ah, ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef %i.ai) #33 ; 0 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph195, label %.lr.ph, !llvm.loop !179

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv235 = phi i64 [ %indvars.iv.next236, %scalar.ph ], [ %indvars.iv235.ph, %scalar.ph.preheader ] ; 3 uses
  %indvars.iv.next236 = add nuw nsw i64 %indvars.iv235, 1 ; 3 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %.pre274, i64 %indvars.iv235 ; 2 uses
  %i.al = trunc nuw nsw i64 %indvars.iv.next236 to i32
  store i32 %i.al, ptr %i.ak, align 4, !tbaa !168
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.an = trunc i64 %indvars.iv235 to i32
  %i.ao = add i32 %i.an, -1
  store i32 %i.ao, ptr %i.am, align 4, !tbaa !170
  %exitcond239.not = icmp eq i64 %indvars.iv.next236, %wide.trip.count238
  br i1 %exitcond239.not, label %._crit_edge201, label %scalar.ph, !llvm.loop !180

._crit_edge201.thread:                            ; preds = %bb.e
  %.pre = load ptr, ptr @veryfastsupg_double_loadtree.ac, align 8, !tbaa !164
  %i.ap = sext i32 %0 to i64
  %i.aq = getelementptr [8 x i8], ptr %.pre, i64 %i.ap
  %i.ar = getelementptr i8, ptr %i.aq, i64 -8
  store i32 -1, ptr %i.ar, align 4, !tbaa !168
  %i.as = load ptr, ptr @stderr, align 8, !tbaa !15
  %fputc278 = tail call i32 @fputc(i32 10, ptr %i.as) ; 0 uses
  br label %._crit_edge230

._crit_edge201:                                   ; preds = %scalar.ph, %middle.block
  %i.at = add nsw i32 %0, -1                      ; 2 uses
  %i.au = zext nneg i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %.pre274, i64 %i.au
  store i32 -1, ptr %i.av, align 4, !tbaa !168
  %i.aw = load ptr, ptr @veryfastsupg_double_loadtree.tmptmplen, align 8, !tbaa !52
  %i.ax = zext nneg i32 %0 to i64
  %i.ay = shl nuw nsw i64 %i.ax, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.aw, i8 0, i64 %i.ay, i1 false), !tbaa !24
  %i.az = load ptr, ptr @veryfastsupg_double_loadtree.hist, align 8, !tbaa !89
  %i.ba = zext nneg i32 %0 to i64
  %i.bb = shl nuw nsw i64 %i.ba, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.az, i8 -1, i64 %i.bb, i1 false), !tbaa !4
  %i.bc = load ptr, ptr @stderr, align 8, !tbaa !15
  %fputc = tail call i32 @fputc(i32 10, ptr %i.bc) ; 0 uses
  %.not282 = icmp eq i32 %0, 1
  br i1 %.not282, label %._crit_edge230, label %.lr.ph229

.lr.ph229:                                        ; preds = %._crit_edge201
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 3 uses
  %wide.trip.count249 = zext nneg i32 %i.at to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph229, %bb.ac
  %indvars.iv246 = phi i64 [ 0, %.lr.ph229 ], [ %indvars.iv.next247, %bb.ac ] ; 4 uses
  %i.bf = trunc nuw nsw i64 %indvars.iv246 to i32 ; 3 uses
  %i.bg = urem i32 %i.bf, 10
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bi = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.bj = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bi, ptr noundef nonnull @.str.24, i32 noundef %i.bf, i32 noundef %0) #31 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  store <2 x float> splat (float -1.000000e+00), ptr %i.b, align 8, !tbaa !21
  %i.bk = call ptr @fgets(ptr noundef nonnull @loadtreeoneline.gett, i32 noundef 999, ptr noundef nonnull %i.c) ; 0 uses
  %i.bl = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull @loadtreeoneline.gett, ptr noundef nonnull @.str.38, ptr noundef nonnull %i.a, ptr noundef nonnull %i.be, ptr noundef nonnull %i.b, ptr noundef nonnull %i.bd) #33 ; 0 uses
  %i.bm = load i32, ptr %i.a, align 4, !tbaa !4   ; 2 uses
  %i.bn = add nsw i32 %i.bm, -1                   ; 5 uses
  store i32 %i.bn, ptr %i.a, align 4, !tbaa !4
  %i.bo = load i32, ptr %i.be, align 4, !tbaa !4  ; 2 uses
  %i.bp = add nsw i32 %i.bo, -1                   ; 6 uses
  store i32 %i.bp, ptr %i.be, align 4, !tbaa !4
  %.not.i = icmp slt i32 %i.bm, %i.bo
  br i1 %.not.i, label %loadtreeoneline.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bq = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.br = call i64 @fwrite(ptr nonnull @.str.39, i64 21, i64 1, ptr %i.bq) #30 ; 0 uses
  call void @exit(i32 noundef 1) #32
  unreachable

loadtreeoneline.exit:                             ; preds = %bb.h
  %i.bs = sext i32 %i.bn to i64                   ; 7 uses
  %i.bt = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bs
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !52
  %i.bv = sext i32 %i.bp to i64                   ; 5 uses
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.bu, i64 %i.bv
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !24
  %i.by = load float, ptr %i.b, align 8, !tbaa !21 ; 3 uses
  %i.bz = fcmp oeq float %i.by, -1.000000e+00
  %i.ca = load float, ptr %i.bd, align 4          ; 2 uses
  %i.cb = fcmp oeq float %i.ca, -1.000000e+00
  %or.cond = select i1 %i.bz, i1 true, i1 %i.cb
  br i1 %or.cond, label %bb.j, label %bb.k

bb.j:                                             ; preds = %loadtreeoneline.exit
  %i.cc = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.cd = call i64 @fwrite(ptr nonnull @.str.26, i64 39, i64 1, ptr %i.cc) #30 ; 0 uses
  call void @exit(i32 noundef 1) #32
  unreachable

bb.k:                                             ; preds = %loadtreeoneline.exit
  %i.ce = fcmp olt float %i.by, 0.000000e+00
  br i1 %i.ce, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store float 0.000000e+00, ptr %i.b, align 8, !tbaa !21
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.cf = phi float [ 0.000000e+00, %bb.l ], [ %i.by, %bb.k ]
  %i.cg = fcmp olt float %i.ca, 0.000000e+00
  br i1 %i.cg, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store float 0.000000e+00, ptr %i.bd, align 4, !tbaa !21
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv246
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !87 ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !89 ; 4 uses
  %i.ck = load ptr, ptr @veryfastsupg_double_loadtree.hist, align 8, !tbaa !89 ; 2 uses
  %i.cl = getelementptr inbounds [4 x i8], ptr %i.ck, i64 %i.bs ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !4  ; 2 uses
  %i.cn = icmp eq i32 %i.cm, -1
  br i1 %i.cn, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.co = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  store i32 %i.bn, ptr %i.cj, align 4, !tbaa !4
  store i32 -1, ptr %i.co, align 4, !tbaa !4
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.cp = sext i32 %i.cm to i64
  %i.cq = getelementptr inbounds [8 x i8], ptr %2, i64 %i.cp
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !87 ; 2 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !89 ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !89 ; 3 uses
  %i.cv = load i32, ptr %i.cs, align 4, !tbaa !4  ; 3 uses
  %i.cw = load i32, ptr %i.cu, align 4, !tbaa !4  ; 3 uses
  %i.cx = icmp sgt i32 %i.cv, %i.cw               ; 2 uses
  %.186 = select i1 %i.cx, ptr %i.cs, ptr %i.cu   ; 2 uses
  %i.cy = call i32 @llvm.smin.i32(i32 %i.cv, i32 %i.cw) ; 2 uses
  %.not177202 = icmp eq i32 %i.cy, -1
  %i.cz = call i32 @llvm.smax.i32(i32 %i.cv, i32 %i.cw)
  br i1 %.not177202, label %.preheader190, label %.lr.ph206.preheader

.lr.ph206.preheader:                              ; preds = %bb.q
  %. = select i1 %i.cx, ptr %i.cu, ptr %i.cs
  br label %.lr.ph206

.preheader190.loopexit:                           ; preds = %.lr.ph206
  %.pre251 = load i32, ptr %.186, align 4, !tbaa !4
  br label %.preheader190

.preheader190:                                    ; preds = %.preheader190.loopexit, %bb.q
  %i.da = phi i32 [ %i.cz, %bb.q ], [ %.pre251, %.preheader190.loopexit ] ; 2 uses
  %.0157.lcssa = phi ptr [ %i.cj, %bb.q ], [ %i.dd, %.preheader190.loopexit ] ; 2 uses
  %.not178207 = icmp eq i32 %i.da, -1
  br i1 %.not178207, label %._crit_edge211, label %.lr.ph210

.lr.ph206:                                        ; preds = %.lr.ph206.preheader, %.lr.ph206
  %i.db = phi i32 [ %i.de, %.lr.ph206 ], [ %i.cy, %.lr.ph206.preheader ]
  %.0153204 = phi ptr [ %i.dc, %.lr.ph206 ], [ %., %.lr.ph206.preheader ]
  %.0157203 = phi ptr [ %i.dd, %.lr.ph206 ], [ %i.cj, %.lr.ph206.preheader ] ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.0153204, i64 4 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.0157203, i64 4 ; 2 uses
  store i32 %i.db, ptr %.0157203, align 4, !tbaa !4
  %i.de = load i32, ptr %i.dc, align 4, !tbaa !4  ; 2 uses
  %.not177 = icmp eq i32 %i.de, -1
  br i1 %.not177, label %.preheader190.loopexit, label %.lr.ph206, !llvm.loop !181

.lr.ph210:                                        ; preds = %.preheader190, %.lr.ph210
  %i.df = phi i32 [ %i.di, %.lr.ph210 ], [ %i.da, %.preheader190 ]
  %.1154209 = phi ptr [ %i.dg, %.lr.ph210 ], [ %.186, %.preheader190 ]
  %.1158208 = phi ptr [ %i.dh, %.lr.ph210 ], [ %.0157.lcssa, %.preheader190 ] ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.1154209, i64 4 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.1158208, i64 4 ; 2 uses
  store i32 %i.df, ptr %.1158208, align 4, !tbaa !4
  %i.di = load i32, ptr %i.dg, align 4, !tbaa !4  ; 2 uses
  %.not178 = icmp eq i32 %i.di, -1
  br i1 %.not178, label %._crit_edge211, label %.lr.ph210, !llvm.loop !182

._crit_edge211:                                   ; preds = %.lr.ph210, %.preheader190
  %.1158.lcssa = phi ptr [ %.0157.lcssa, %.preheader190 ], [ %i.dh, %.lr.ph210 ]
  store i32 -1, ptr %.1158.lcssa, align 4, !tbaa !4
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge211, %bb.p
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !89 ; 4 uses
  %i.dl = getelementptr inbounds [4 x i8], ptr %i.ck, i64 %i.bv
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !4  ; 2 uses
  %i.dn = icmp eq i32 %i.dm, -1
  br i1 %i.dn, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.do = getelementptr inbounds nuw i8, ptr %i.dk, i64 4
  store i32 %i.bp, ptr %i.dk, align 4, !tbaa !4
  store i32 -1, ptr %i.do, align 4, !tbaa !4
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.dp = sext i32 %i.dm to i64
  %i.dq = getelementptr inbounds [8 x i8], ptr %2, i64 %i.dp
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !87 ; 2 uses
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !89 ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !89 ; 3 uses
  %i.dv = load i32, ptr %i.ds, align 4, !tbaa !4  ; 3 uses
  %i.dw = load i32, ptr %i.du, align 4, !tbaa !4  ; 3 uses
  %i.dx = icmp sgt i32 %i.dv, %i.dw               ; 2 uses
  %.188 = select i1 %i.dx, ptr %i.ds, ptr %i.du   ; 2 uses
  %i.dy = call i32 @llvm.smin.i32(i32 %i.dv, i32 %i.dw) ; 2 uses
  %.not179213 = icmp eq i32 %i.dy, -1
  %i.dz = call i32 @llvm.smax.i32(i32 %i.dv, i32 %i.dw)
  br i1 %.not179213, label %.preheader, label %.lr.ph217.preheader

.lr.ph217.preheader:                              ; preds = %bb.t
  %.187 = select i1 %i.dx, ptr %i.du, ptr %i.ds
  br label %.lr.ph217

.preheader.loopexit:                              ; preds = %.lr.ph217
  %.pre252 = load i32, ptr %.188, align 4, !tbaa !4
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.t
  %i.ea = phi i32 [ %i.dz, %bb.t ], [ %.pre252, %.preheader.loopexit ] ; 2 uses
  %.2159.lcssa = phi ptr [ %i.dk, %bb.t ], [ %i.ed, %.preheader.loopexit ] ; 2 uses
  %.not180219 = icmp eq i32 %i.ea, -1
  br i1 %.not180219, label %._crit_edge223, label %.lr.ph222

.lr.ph217:                                        ; preds = %.lr.ph217.preheader, %.lr.ph217
  %i.eb = phi i32 [ %i.ee, %.lr.ph217 ], [ %i.dy, %.lr.ph217.preheader ]
  %.2155215 = phi ptr [ %i.ec, %.lr.ph217 ], [ %.187, %.lr.ph217.preheader ]
  %.2159214 = phi ptr [ %i.ed, %.lr.ph217 ], [ %i.dk, %.lr.ph217.preheader ] ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.2155215, i64 4 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.2159214, i64 4 ; 2 uses
  store i32 %i.eb, ptr %.2159214, align 4, !tbaa !4
  %i.ee = load i32, ptr %i.ec, align 4, !tbaa !4  ; 2 uses
  %.not179 = icmp eq i32 %i.ee, -1
  br i1 %.not179, label %.preheader.loopexit, label %.lr.ph217, !llvm.loop !183

.lr.ph222:                                        ; preds = %.preheader, %.lr.ph222
  %i.ef = phi i32 [ %i.ei, %.lr.ph222 ], [ %i.ea, %.preheader ]
end_hunk_7
begin_hunk_8_@veryfastsupg_double_outtree:bb.a
  %i.ge = sext i8 %i.gd to i64
  %i.gf = getelementptr inbounds [2 x i8], ptr %i.gb, i64 %i.ge
  %i.gg = load i16, ptr %i.gf, align 2, !tbaa !102
  %i.gh = and i16 %i.gg, 8
  %.not219.20 = icmp eq i16 %i.gh, 0
  %spec.select.20 = select i1 %.not219.20, i8 95, i8 %i.gd
  %i.gi = getelementptr inbounds nuw i8, ptr %i.x, i64 20
  store i8 %spec.select.20, ptr %i.gi, align 1, !tbaa !8
  %i.gj = load ptr, ptr %i.w, align 8, !tbaa !100
  %i.gk = getelementptr inbounds nuw i8, ptr %i.y, i64 21
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !8   ; 2 uses
  %i.gm = sext i8 %i.gl to i64
  %i.gn = getelementptr inbounds [2 x i8], ptr %i.gj, i64 %i.gm
  %i.go = load i16, ptr %i.gn, align 2, !tbaa !102
  %i.gp = and i16 %i.go, 8
  %.not219.21 = icmp eq i16 %i.gp, 0
  %spec.select.21 = select i1 %.not219.21, i8 95, i8 %i.gl
  %i.gq = getelementptr inbounds nuw i8, ptr %i.x, i64 21
  store i8 %spec.select.21, ptr %i.gq, align 1, !tbaa !8
  %i.gr = load ptr, ptr %i.w, align 8, !tbaa !100
  %i.gs = getelementptr inbounds nuw i8, ptr %i.y, i64 22
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !8   ; 2 uses
  %i.gu = sext i8 %i.gt to i64
  %i.gv = getelementptr inbounds [2 x i8], ptr %i.gr, i64 %i.gu
  %i.gw = load i16, ptr %i.gv, align 2, !tbaa !102
  %i.gx = and i16 %i.gw, 8
  %.not219.22 = icmp eq i16 %i.gx, 0
  %spec.select.22 = select i1 %.not219.22, i8 95, i8 %i.gt
  %i.gy = getelementptr inbounds nuw i8, ptr %i.x, i64 22
  store i8 %spec.select.22, ptr %i.gy, align 1, !tbaa !8
  %i.gz = load ptr, ptr %i.w, align 8, !tbaa !100
  %i.ha = getelementptr inbounds nuw i8, ptr %i.y, i64 23
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !8   ; 2 uses
  %i.hc = sext i8 %i.hb to i64
  %i.hd = getelementptr inbounds [2 x i8], ptr %i.gz, i64 %i.hc
  %i.he = load i16, ptr %i.hd, align 2, !tbaa !102
  %i.hf = and i16 %i.he, 8
  %.not219.23 = icmp eq i16 %i.hf, 0
  %spec.select.23 = select i1 %.not219.23, i8 95, i8 %i.hb
  %i.hg = getelementptr inbounds nuw i8, ptr %i.x, i64 23
  store i8 %spec.select.23, ptr %i.hg, align 1, !tbaa !8
  %i.hh = load ptr, ptr %i.w, align 8, !tbaa !100
  %i.hi = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !8   ; 2 uses
  %i.hk = sext i8 %i.hj to i64
  %i.hl = getelementptr inbounds [2 x i8], ptr %i.hh, i64 %i.hk
  %i.hm = load i16, ptr %i.hl, align 2, !tbaa !102
  %i.hn = and i16 %i.hm, 8
  %.not219.24 = icmp eq i16 %i.hn, 0
  %spec.select.24 = select i1 %.not219.24, i8 95, i8 %i.hj
  %i.ho = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  store i8 %spec.select.24, ptr %i.ho, align 1, !tbaa !8
  %i.hp = load ptr, ptr %i.w, align 8, !tbaa !100
  %i.hq = getelementptr inbounds nuw i8, ptr %i.y, i64 25
  %i.hr = load i8, ptr %i.hq, align 1, !tbaa !8   ; 2 uses
  %i.hs = sext i8 %i.hr to i64
  %i.ht = getelementptr inbounds [2 x i8], ptr %i.hp, i64 %i.hs
  %i.hu = load i16, ptr %i.ht, align 2, !tbaa !102
  %i.hv = and i16 %i.hu, 8
  %.not219.25 = icmp eq i16 %i.hv, 0
  %spec.select.25 = select i1 %.not219.25, i8 95, i8 %i.hr
  %i.hw = getelementptr inbounds nuw i8, ptr %i.x, i64 25
  store i8 %spec.select.25, ptr %i.hw, align 1, !tbaa !8
  %i.hx = load ptr, ptr %i.w, align 8, !tbaa !100
  %i.hy = getelementptr inbounds nuw i8, ptr %i.y, i64 26
  %i.hz = load i8, ptr %i.hy, align 1, !tbaa !8   ; 2 uses
  %i.ia = sext i8 %i.hz to i64
  %i.ib = getelementptr inbounds [2 x i8], ptr %i.hx, i64 %i.ia
  %i.ic = load i16, ptr %i.ib, align 2, !tbaa !102
  %i.id = and i16 %i.ic, 8
  %.not219.26 = icmp eq i16 %i.id, 0
  %spec.select.26 = select i1 %.not219.26, i8 95, i8 %i.hz
  %i.ie = getelementptr inbounds nuw i8, ptr %i.x, i64 26
  store i8 %spec.select.26, ptr %i.ie, align 1, !tbaa !8
  %i.if = load ptr, ptr %i.w, align 8, !tbaa !100
  %i.ig = getelementptr inbounds nuw i8, ptr %i.y, i64 27
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !8   ; 2 uses
  %i.ii = sext i8 %i.ih to i64
  %i.ij = getelementptr inbounds [2 x i8], ptr %i.if, i64 %i.ii
  %i.ik = load i16, ptr %i.ij, align 2, !tbaa !102
  %i.il = and i16 %i.ik, 8
  %.not219.27 = icmp eq i16 %i.il, 0
  %spec.select.27 = select i1 %.not219.27, i8 95, i8 %i.ih
  %i.im = getelementptr inbounds nuw i8, ptr %i.x, i64 27
  store i8 %spec.select.27, ptr %i.im, align 1, !tbaa !8
  %i.in = load ptr, ptr %i.w, align 8, !tbaa !100
  %i.io = getelementptr inbounds nuw i8, ptr %i.y, i64 28
  %i.ip = load i8, ptr %i.io, align 1, !tbaa !8   ; 2 uses
  %i.iq = sext i8 %i.ip to i64
  %i.ir = getelementptr inbounds [2 x i8], ptr %i.in, i64 %i.iq
  %i.is = load i16, ptr %i.ir, align 2, !tbaa !102
  %i.it = and i16 %i.is, 8
  %.not219.28 = icmp eq i16 %i.it, 0
  %spec.select.28 = select i1 %.not219.28, i8 95, i8 %i.ip
  %i.iu = getelementptr inbounds nuw i8, ptr %i.x, i64 28
  store i8 %spec.select.28, ptr %i.iu, align 1, !tbaa !8
  %i.iv = load ptr, ptr %i.w, align 8, !tbaa !100
  %i.iw = getelementptr inbounds nuw i8, ptr %i.y, i64 29
  %i.ix = load i8, ptr %i.iw, align 1, !tbaa !8   ; 2 uses
  %i.iy = sext i8 %i.ix to i64
  %i.iz = getelementptr inbounds [2 x i8], ptr %i.iv, i64 %i.iy
  %i.ja = load i16, ptr %i.iz, align 2, !tbaa !102
  %i.jb = and i16 %i.ja, 8
  %.not219.29 = icmp eq i16 %i.jb, 0
  %spec.select.29 = select i1 %.not219.29, i8 95, i8 %i.ix
  %i.jc = getelementptr inbounds nuw i8, ptr %i.x, i64 29
  store i8 %spec.select.29, ptr %i.jc, align 1, !tbaa !8
  %i.jd = getelementptr inbounds nuw i8, ptr %i.x, i64 30
  store i8 0, ptr %i.jd, align 1, !tbaa !8
  %i.je = load ptr, ptr @veryfastsupg_double_outtree.tree, align 8, !tbaa !77
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %i.je, i64 %indvars.iv288
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !12
  %indvars.iv.next289 = add nuw nsw i64 %indvars.iv288, 1 ; 3 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  %i.ji = trunc nuw nsw i64 %indvars.iv.next289 to i32
  %i.jj = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.jg, ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %i.ji, ptr noundef nonnull %i.jh) #33 ; 0 uses
  %exitcond291.not = icmp eq i64 %indvars.iv.next289, %wide.trip.count
  br i1 %exitcond291.not, label %.preheader226, label %.preheader228, !llvm.loop !187

.preheader226:                                    ; preds = %.preheader228
  %.pre = load ptr, ptr @veryfastsupg_double_outtree.ac, align 8, !tbaa !164 ; 4 uses
  %wide.trip.count295 = zext nneg i32 %0 to i64
  %min.iters.check = icmp ult i32 %0, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader226
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %vec.ind342 = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph ], [ %vec.ind.next345, %vector.body ] ; 3 uses
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %index
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %index
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 16
  %i.jn = trunc <2 x i64> %vec.ind to <2 x i32>
  %i.jo = trunc <2 x i64> %vec.ind to <2 x i32>
  %i.jp = shufflevector <2 x i32> %i.jn, <2 x i32> %vec.ind342, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %interleaved.vec = add <4 x i32> %i.jp, <i32 1, i32 -1, i32 1, i32 -1>
  store <4 x i32> %interleaved.vec, ptr %i.jk, align 4, !tbaa !4
  %i.jq = shufflevector <2 x i32> %i.jo, <2 x i32> %vec.ind342, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %interleaved.vec344 = add <4 x i32> %i.jq, <i32 3, i32 1, i32 3, i32 1>
  store <4 x i32> %interleaved.vec344, ptr %i.jm, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %vec.ind.next345 = add <2 x i32> %vec.ind342, splat (i32 4)
  %i.jr = icmp eq i64 %index.next, %n.vec
  br i1 %i.jr, label %middle.block, label %vector.body, !llvm.loop !188

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge238, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader226, %middle.block
  %indvars.iv292.ph = phi i64 [ 0, %.preheader226 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv292 = phi i64 [ %indvars.iv.next293, %scalar.ph ], [ %indvars.iv292.ph, %scalar.ph.preheader ] ; 3 uses
  %indvars.iv.next293 = add nuw nsw i64 %indvars.iv292, 1 ; 3 uses
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %indvars.iv292 ; 2 uses
  %i.jt = trunc nuw nsw i64 %indvars.iv.next293 to i32
  store i32 %i.jt, ptr %i.js, align 4, !tbaa !168
  %i.ju = getelementptr inbounds nuw i8, ptr %i.js, i64 4
  %i.jv = trunc i64 %indvars.iv292 to i32
  %i.jw = add i32 %i.jv, -1
  store i32 %i.jw, ptr %i.ju, align 4, !tbaa !170
  %exitcond296.not = icmp eq i64 %indvars.iv.next293, %wide.trip.count295
  br i1 %exitcond296.not, label %._crit_edge238, label %scalar.ph, !llvm.loop !189

._crit_edge238.thread:                            ; preds = %bb.g
  %.pre329 = load ptr, ptr @veryfastsupg_double_outtree.ac, align 8, !tbaa !164
  %i.jx = sext i32 %0 to i64
  %i.jy = getelementptr [8 x i8], ptr %.pre329, i64 %i.jx
  %i.jz = getelementptr i8, ptr %i.jy, i64 -8
  store i32 -1, ptr %i.jz, align 4, !tbaa !168
  %i.ka = load ptr, ptr @stderr, align 8, !tbaa !15
  %fputc332 = tail call i32 @fputc(i32 10, ptr %i.ka) ; 0 uses
  br label %._crit_edge282

._crit_edge238:                                   ; preds = %scalar.ph, %middle.block
  %i.kb = add nsw i32 %0, -1                      ; 2 uses
  %i.kc = zext nneg i32 %i.kb to i64
  %i.kd = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.kc
  store i32 -1, ptr %i.kd, align 4, !tbaa !168
  %i.ke = load ptr, ptr @veryfastsupg_double_outtree.tmptmplen, align 8, !tbaa !52
  %i.kf = zext nneg i32 %0 to i64
  %i.kg = shl nuw nsw i64 %i.kf, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ke, i8 0, i64 %i.kg, i1 false), !tbaa !24
  %i.kh = load ptr, ptr @veryfastsupg_double_outtree.hist, align 8, !tbaa !89
  %i.ki = zext nneg i32 %0 to i64
  %i.kj = shl nuw nsw i64 %i.ki, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.kh, i8 -1, i64 %i.kj, i1 false), !tbaa !4
  %i.kk = load ptr, ptr @stderr, align 8, !tbaa !15
  %fputc = tail call i32 @fputc(i32 10, ptr %i.kk) ; 0 uses
  %.not337 = icmp eq i32 %0, 1
  br i1 %.not337, label %._crit_edge282, label %.lr.ph281.preheader

.lr.ph281.preheader:                              ; preds = %._crit_edge238
  %wide.trip.count306 = zext nneg i32 %i.kb to i64
  br label %.lr.ph281

.lr.ph281:                                        ; preds = %.lr.ph281.preheader, %bb.x
  %indvars.iv303 = phi i64 [ 0, %.lr.ph281.preheader ], [ %indvars.iv.next304, %bb.x ] ; 4 uses
  %.0173279 = phi i32 [ -1, %.lr.ph281.preheader ], [ %.1174.lcssa, %bb.x ] ; 2 uses
  %.0177278 = phi i32 [ -1, %.lr.ph281.preheader ], [ %.1178.lcssa, %bb.x ] ; 2 uses
  %i.kl = trunc nuw nsw i64 %indvars.iv303 to i32 ; 3 uses
  %i.km = urem i32 %i.kl, 10
  %i.kn = icmp eq i32 %i.km, 0
  br i1 %i.kn, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph281
  %i.ko = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.kp = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ko, ptr noundef nonnull @.str.24, i32 noundef %i.kl, i32 noundef %0) #31 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph281
  %i.kq = load ptr, ptr @veryfastsupg_double_outtree.ac, align 8, !tbaa !164 ; 4 uses
  %i.kr = load i32, ptr %i.kq, align 4, !tbaa !168 ; 2 uses
  %.not209243 = icmp eq i32 %i.kr, -1
  br i1 %.not209243, label %._crit_edge248, label %.preheader

.loopexit:                                        ; preds = %bb.j
  %i.ks = sext i32 %i.kv to i64                   ; 2 uses
  %i.kt = getelementptr inbounds [8 x i8], ptr %i.kq, i64 %i.ks
  %i.ku = load i32, ptr %i.kt, align 4, !tbaa !168 ; 2 uses
  %.not209 = icmp eq i32 %i.ku, -1
  br i1 %.not209, label %._crit_edge248.loopexit, label %.preheader, !llvm.loop !190

.preheader:                                       ; preds = %bb.i, %.loopexit
  %i.kv = phi i32 [ %i.ku, %.loopexit ], [ %i.kr, %bb.i ] ; 3 uses
  %i.kw = phi i64 [ %i.ks, %.loopexit ], [ 0, %bb.i ]
  %.4247 = phi i32 [ %i.kv, %.loopexit ], [ 0, %bb.i ]
  %.1174246 = phi i32 [ %.3176, %.loopexit ], [ %.0173279, %bb.i ]
  %.1178245 = phi i32 [ %.3180, %.loopexit ], [ %.0177278, %bb.i ]
  %.0182244 = phi double [ %.2184, %.loopexit ], [ f0x40F869FE66666666, %bb.i ]
  %i.kx = getelementptr inbounds [8 x i8], ptr %1, i64 %i.kw
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !52
  br label %bb.j

bb.j:                                             ; preds = %.preheader, %bb.j
  %.2172242 = phi i32 [ %i.kv, %.preheader ], [ %i.le, %bb.j ] ; 2 uses
  %.2175241 = phi i32 [ %.1174246, %.preheader ], [ %.3176, %bb.j ]
  %.2179240 = phi i32 [ %.1178245, %.preheader ], [ %.3180, %bb.j ]
  %.1183239 = phi double [ %.0182244, %.preheader ], [ %.2184, %bb.j ] ; 2 uses
  %i.kz = sext i32 %.2172242 to i64               ; 2 uses
  %i.la = getelementptr inbounds [8 x i8], ptr %i.ky, i64 %i.kz
  %i.lb = load double, ptr %i.la, align 8, !tbaa !24 ; 2 uses
  %i.lc = fcmp olt double %i.lb, %.1183239        ; 3 uses
  %.2184 = select i1 %i.lc, double %i.lb, double %.1183239 ; 3 uses
  %.3180 = select i1 %i.lc, i32 %.4247, i32 %.2179240 ; 3 uses
  %.3176 = select i1 %i.lc, i32 %.2172242, i32 %.2175241 ; 3 uses
  %i.ld = getelementptr inbounds [8 x i8], ptr %i.kq, i64 %i.kz
  %i.le = load i32, ptr %i.ld, align 4, !tbaa !168 ; 2 uses
  %.not218 = icmp eq i32 %i.le, -1
  br i1 %.not218, label %.loopexit, label %bb.j, !llvm.loop !191

._crit_edge248.loopexit:                          ; preds = %.loopexit
  %i.lf = fmul double %.2184, 5.000000e-01
  br label %._crit_edge248

._crit_edge248:                                   ; preds = %._crit_edge248.loopexit, %bb.i
  %.0182.lcssa = phi double [ f0x40E869FE66666666, %bb.i ], [ %i.lf, %._crit_edge248.loopexit ] ; 3 uses
  %.1178.lcssa = phi i32 [ %.0177278, %bb.i ], [ %.3180, %._crit_edge248.loopexit ] ; 5 uses
  %.1174.lcssa = phi i32 [ %.0173279, %bb.i ], [ %.3176, %._crit_edge248.loopexit ] ; 6 uses
  %i.lg = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv303
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !87 ; 2 uses
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !89 ; 4 uses
  %i.lj = load ptr, ptr @veryfastsupg_double_outtree.hist, align 8, !tbaa !89 ; 2 uses
  %i.lk = sext i32 %.1178.lcssa to i64            ; 6 uses
  %i.ll = getelementptr inbounds [4 x i8], ptr %i.lj, i64 %i.lk ; 2 uses
  %i.lm = load i32, ptr %i.ll, align 4, !tbaa !4  ; 2 uses
  %i.ln = icmp eq i32 %i.lm, -1
  br i1 %i.ln, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge248
  %i.lo = getelementptr inbounds nuw i8, ptr %i.li, i64 4
  store i32 %.1178.lcssa, ptr %i.li, align 4, !tbaa !4
  store i32 -1, ptr %i.lo, align 4, !tbaa !4
  br label %bb.m

bb.l:                                             ; preds = %._crit_edge248
  %i.lp = sext i32 %i.lm to i64
  %i.lq = getelementptr inbounds [8 x i8], ptr %2, i64 %i.lp
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !87 ; 2 uses
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !89 ; 3 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lr, i64 8
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !89 ; 3 uses
  %i.lv = load i32, ptr %i.ls, align 4, !tbaa !4  ; 3 uses
  %i.lw = load i32, ptr %i.lu, align 4, !tbaa !4  ; 3 uses
  %i.lx = icmp sgt i32 %i.lv, %i.lw               ; 2 uses
  %.220 = select i1 %i.lx, ptr %i.ls, ptr %i.lu   ; 2 uses
  %i.ly = tail call i32 @llvm.smin.i32(i32 %i.lv, i32 %i.lw) ; 2 uses
  %.not210251 = icmp eq i32 %i.ly, -1
  %i.lz = tail call i32 @llvm.smax.i32(i32 %i.lv, i32 %i.lw)
  br i1 %.not210251, label %.preheader224, label %.lr.ph255.preheader

.lr.ph255.preheader:                              ; preds = %bb.l
  %. = select i1 %i.lx, ptr %i.lu, ptr %i.ls
  br label %.lr.ph255

.preheader224.loopexit:                           ; preds = %.lr.ph255
  %.pre308 = load i32, ptr %.220, align 4, !tbaa !4
  br label %.preheader224

.preheader224:                                    ; preds = %.preheader224.loopexit, %bb.l
  %i.ma = phi i32 [ %i.lz, %bb.l ], [ %.pre308, %.preheader224.loopexit ] ; 2 uses
  %.0192.lcssa = phi ptr [ %i.li, %bb.l ], [ %i.md, %.preheader224.loopexit ] ; 2 uses
  %.not211257 = icmp eq i32 %i.ma, -1
  br i1 %.not211257, label %._crit_edge261, label %.lr.ph260

.lr.ph255:                                        ; preds = %.lr.ph255.preheader, %.lr.ph255
  %i.mb = phi i32 [ %i.me, %.lr.ph255 ], [ %i.ly, %.lr.ph255.preheader ]
  %.0188253 = phi ptr [ %i.mc, %.lr.ph255 ], [ %., %.lr.ph255.preheader ]
  %.0192252 = phi ptr [ %i.md, %.lr.ph255 ], [ %i.li, %.lr.ph255.preheader ] ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %.0188253, i64 4 ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %.0192252, i64 4 ; 2 uses
  store i32 %i.mb, ptr %.0192252, align 4, !tbaa !4
  %i.me = load i32, ptr %i.mc, align 4, !tbaa !4  ; 2 uses
  %.not210 = icmp eq i32 %i.me, -1
  br i1 %.not210, label %.preheader224.loopexit, label %.lr.ph255, !llvm.loop !192

.lr.ph260:                                        ; preds = %.preheader224, %.lr.ph260
  %i.mf = phi i32 [ %i.mi, %.lr.ph260 ], [ %i.ma, %.preheader224 ]
  %.1189259 = phi ptr [ %i.mg, %.lr.ph260 ], [ %.220, %.preheader224 ]
  %.1193258 = phi ptr [ %i.mh, %.lr.ph260 ], [ %.0192.lcssa, %.preheader224 ] ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %.1189259, i64 4 ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %.1193258, i64 4 ; 2 uses
  store i32 %i.mf, ptr %.1193258, align 4, !tbaa !4
  %i.mi = load i32, ptr %i.mg, align 4, !tbaa !4  ; 2 uses
  %.not211 = icmp eq i32 %i.mi, -1
  br i1 %.not211, label %._crit_edge261, label %.lr.ph260, !llvm.loop !193

._crit_edge261:                                   ; preds = %.lr.ph260, %.preheader224
  %.1193.lcssa = phi ptr [ %.0192.lcssa, %.preheader224 ], [ %i.mh, %.lr.ph260 ]
  store i32 -1, ptr %.1193.lcssa, align 4, !tbaa !4
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge261, %bb.k
  %i.mj = getelementptr inbounds nuw i8, ptr %i.lh, i64 8
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !89 ; 4 uses
  %i.ml = sext i32 %.1174.lcssa to i64            ; 5 uses
  %i.mm = getelementptr inbounds [4 x i8], ptr %i.lj, i64 %i.ml
  %i.mn = load i32, ptr %i.mm, align 4, !tbaa !4  ; 2 uses
  %i.mo = icmp eq i32 %i.mn, -1
  br i1 %i.mo, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mk, i64 4
  store i32 %.1174.lcssa, ptr %i.mk, align 4, !tbaa !4
  store i32 -1, ptr %i.mp, align 4, !tbaa !4
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.mq = sext i32 %i.mn to i64
  %i.mr = getelementptr inbounds [8 x i8], ptr %2, i64 %i.mq
  %i.ms = load ptr, ptr %i.mr, align 8, !tbaa !87 ; 2 uses
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !89 ; 3 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %i.ms, i64 8
  %i.mv = load ptr, ptr %i.mu, align 8, !tbaa !89 ; 3 uses
  %i.mw = load i32, ptr %i.mt, align 4, !tbaa !4  ; 3 uses
  %i.mx = load i32, ptr %i.mv, align 4, !tbaa !4  ; 3 uses
  %i.my = icmp sgt i32 %i.mw, %i.mx               ; 2 uses
  %.222 = select i1 %i.my, ptr %i.mt, ptr %i.mv   ; 2 uses
  %i.mz = tail call i32 @llvm.smin.i32(i32 %i.mw, i32 %i.mx) ; 2 uses
  %.not212263 = icmp eq i32 %i.mz, -1
  %i.na = tail call i32 @llvm.smax.i32(i32 %i.mw, i32 %i.mx)
  br i1 %.not212263, label %.preheader223, label %.lr.ph267.preheader

.lr.ph267.preheader:                              ; preds = %bb.o
  %.221 = select i1 %i.my, ptr %i.mv, ptr %i.mt
  br label %.lr.ph267

.preheader223.loopexit:                           ; preds = %.lr.ph267
  %.pre309 = load i32, ptr %.222, align 4, !tbaa !4
  br label %.preheader223

.preheader223:                                    ; preds = %.preheader223.loopexit, %bb.o
  %i.nb = phi i32 [ %i.na, %bb.o ], [ %.pre309, %.preheader223.loopexit ] ; 2 uses
  %.2194.lcssa = phi ptr [ %i.mk, %bb.o ], [ %i.ne, %.preheader223.loopexit ] ; 2 uses
  %.not213269 = icmp eq i32 %i.nb, -1
  br i1 %.not213269, label %._crit_edge273, label %.lr.ph272

.lr.ph267:                                        ; preds = %.lr.ph267.preheader, %.lr.ph267
  %i.nc = phi i32 [ %i.nf, %.lr.ph267 ], [ %i.mz, %.lr.ph267.preheader ]
  %.2190265 = phi ptr [ %i.nd, %.lr.ph267 ], [ %.221, %.lr.ph267.preheader ]
  %.2194264 = phi ptr [ %i.ne, %.lr.ph267 ], [ %i.mk, %.lr.ph267.preheader ] ; 2 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %.2190265, i64 4 ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %.2194264, i64 4 ; 2 uses
  store i32 %i.nc, ptr %.2194264, align 4, !tbaa !4
  %i.nf = load i32, ptr %i.nd, align 4, !tbaa !4  ; 2 uses
  %.not212 = icmp eq i32 %i.nf, -1
  br i1 %.not212, label %.preheader223.loopexit, label %.lr.ph267, !llvm.loop !194

.lr.ph272:                                        ; preds = %.preheader223, %.lr.ph272
  %i.ng = phi i32 [ %i.nj, %.lr.ph272 ], [ %i.nb, %.preheader223 ]
  %.3191271 = phi ptr [ %i.nh, %.lr.ph272 ], [ %.222, %.preheader223 ]
  %.3195270 = phi ptr [ %i.ni, %.lr.ph272 ], [ %.2194.lcssa, %.preheader223 ] ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %.3191271, i64 4 ; 2 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %.3195270, i64 4 ; 2 uses
end_hunk_8
begin_hunk_9_@cluster_mix_double:bb.a
bb.a:
  %i.a = fcmp olt double %0, %1
  %i.b = select i1 %i.a, double %0, double %1
  %i.c = load double, ptr @sueff1_double, align 8, !tbaa !24
  %i.d = fadd double %0, %1
  %i.e = load double, ptr @sueff05_double, align 8, !tbaa !24
  %i.f = fmul double %i.d, %i.e
  %i.g = tail call double @llvm.fmuladd.f64(double %i.b, double %i.c, double %i.f)
  ret double %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef double @cluster_average_double(double noundef %0, double noundef %1) unnamed_addr #19 {
bb.a:
  %i.a = fadd double %0, %1
  %i.b = fmul double %i.a, 5.000000e-01
  ret double %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef double @cluster_minimum_double(double noundef %0, double noundef %1) unnamed_addr #19 {
bb.a:
  %i.a = fcmp olt double %0, %1
  %i.b = select i1 %i.a, double %0, double %1
  ret double %i.b
}

; Function Attrs: nounwind uwtable
define dso_local void @veryfastsupg(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #12 {
bb.a:
  %i.a = load ptr, ptr @veryfastsupg.eff, align 8, !tbaa !87
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr @njob, align 4, !tbaa !4   ; 2 uses
  %i.c = tail call ptr @AllocateIntMtx(i32 noundef %i.b, i32 noundef %i.b) #33
  store ptr %i.c, ptr @veryfastsupg.eff, align 8, !tbaa !87
  %i.d = load i32, ptr @njob, align 4, !tbaa !4
  %i.e = tail call ptr @AllocateIntVec(i32 noundef %i.d) #33
  store ptr %i.e, ptr @veryfastsupg.hist, align 8, !tbaa !89
  %i.f = load i32, ptr @njob, align 4, !tbaa !4
  %i.g = sext i32 %i.f to i64
  %i.h = shl nsw i64 %i.g, 3
  %i.i = tail call noalias ptr @malloc(i64 noundef %i.h) #34
  store ptr %i.i, ptr @veryfastsupg.tmptmplen, align 8, !tbaa !52
  %i.j = load i32, ptr @njob, align 4, !tbaa !4
  %i.k = sext i32 %i.j to i64
  %i.l = shl nsw i64 %i.k, 3
  %i.m = tail call noalias ptr @malloc(i64 noundef %i.l) #34
  store ptr %i.m, ptr @veryfastsupg.ac, align 8, !tbaa !164
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.n = icmp sgt i32 %0, 0
  br i1 %i.n, label %.preheader208.lr.ph, label %._crit_edge218.thread

.preheader208.lr.ph:                              ; preds = %bb.c
  %i.o = load ptr, ptr @veryfastsupg.eff, align 8
  %wide.trip.count271 = zext nneg i32 %0 to i64   ; 6 uses
  %min.iters.check = icmp ult i32 %0, 4
  %n.vec = and i64 %wide.trip.count271, 2147483644 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count271
  br label %.preheader208

.preheader208:                                    ; preds = %.preheader208.lr.ph, %._crit_edge
  %indvars.iv268 = phi i64 [ 0, %.preheader208.lr.ph ], [ %indvars.iv.next269, %._crit_edge ] ; 3 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv268
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !52   ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv268
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !89   ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader208, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader208 ] ; 3 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %index ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %wide.load = load <2 x double>, ptr %i.t, align 8, !tbaa !24
  %wide.load323 = load <2 x double>, ptr %i.u, align 8, !tbaa !24
  %i.v = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load, <2 x double> splat (double 1.000000e+06), <2 x double> splat (double 5.000000e-01))
  %i.w = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load323, <2 x double> splat (double 1.000000e+06), <2 x double> splat (double 5.000000e-01))
  %i.x = fptosi <2 x double> %i.v to <2 x i32>
  %i.y = fptosi <2 x double> %i.w to <2 x i32>
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %index ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store <2 x i32> %i.x, ptr %i.z, align 4, !tbaa !4
  store <2 x i32> %i.y, ptr %i.aa, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !199

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader208, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader208 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

.preheader207:                                    ; preds = %._crit_edge
  %.pre = load ptr, ptr @veryfastsupg.ac, align 8, !tbaa !164 ; 4 uses
  %wide.trip.count276 = zext nneg i32 %0 to i64
  %min.iters.check325 = icmp ult i32 %0, 4
  br i1 %min.iters.check325, label %scalar.ph324.preheader, label %vector.ph326

vector.ph326:                                     ; preds = %.preheader207
  %n.vec328 = and i64 %wide.trip.count271, 2147483644 ; 3 uses
  br label %vector.body329

vector.body329:                                   ; preds = %vector.body329, %vector.ph326
  %index330 = phi i64 [ 0, %vector.ph326 ], [ %index.next334, %vector.body329 ] ; 3 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph326 ], [ %vec.ind.next, %vector.body329 ] ; 3 uses
  %vec.ind331 = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph326 ], [ %vec.ind.next335, %vector.body329 ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %index330
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %index330
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = trunc <2 x i64> %vec.ind to <2 x i32>
  %i.ag = trunc <2 x i64> %vec.ind to <2 x i32>
  %i.ah = shufflevector <2 x i32> %i.af, <2 x i32> %vec.ind331, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %interleaved.vec = add <4 x i32> %i.ah, <i32 1, i32 -1, i32 1, i32 -1>
  store <4 x i32> %interleaved.vec, ptr %i.ac, align 4, !tbaa !4
  %i.ai = shufflevector <2 x i32> %i.ag, <2 x i32> %vec.ind331, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %interleaved.vec333 = add <4 x i32> %i.ai, <i32 3, i32 1, i32 3, i32 1>
  store <4 x i32> %interleaved.vec333, ptr %i.ae, align 4, !tbaa !4
  %index.next334 = add nuw i64 %index330, 4       ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %vec.ind.next335 = add <2 x i32> %vec.ind331, splat (i32 4)
  %i.aj = icmp eq i64 %index.next334, %n.vec328
  br i1 %i.aj, label %middle.block336, label %vector.body329, !llvm.loop !200

middle.block336:                                  ; preds = %vector.body329
  %cmp.n337 = icmp eq i64 %n.vec328, %wide.trip.count271
  br i1 %cmp.n337, label %._crit_edge218, label %scalar.ph324.preheader

scalar.ph324.preheader:                           ; preds = %.preheader207, %middle.block336
  %indvars.iv273.ph = phi i64 [ 0, %.preheader207 ], [ %n.vec328, %middle.block336 ]
  br label %scalar.ph324

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv
  %i.al = load double, ptr %i.ak, align 8, !tbaa !24
  %i.am = tail call double @llvm.fmuladd.f64(double %i.al, double 1.000000e+06, double 5.000000e-01)
  %i.an = fptosi double %i.am to i32
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv
  store i32 %i.an, ptr %i.ao, align 4, !tbaa !4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count271
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !201

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %indvars.iv.next269 = add nuw nsw i64 %indvars.iv268, 1 ; 2 uses
  %exitcond272.not = icmp eq i64 %indvars.iv.next269, %wide.trip.count271
  br i1 %exitcond272.not, label %.preheader207, label %.preheader208, !llvm.loop !202

scalar.ph324:                                     ; preds = %scalar.ph324.preheader, %scalar.ph324
  %indvars.iv273 = phi i64 [ %indvars.iv.next274, %scalar.ph324 ], [ %indvars.iv273.ph, %scalar.ph324.preheader ] ; 3 uses
  %indvars.iv.next274 = add nuw nsw i64 %indvars.iv273, 1 ; 3 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %indvars.iv273 ; 2 uses
  %i.aq = trunc nuw nsw i64 %indvars.iv.next274 to i32
  store i32 %i.aq, ptr %i.ap, align 4, !tbaa !168
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.as = trunc i64 %indvars.iv273 to i32
  %i.at = add i32 %i.as, -1
  store i32 %i.at, ptr %i.ar, align 4, !tbaa !170
  %exitcond277.not = icmp eq i64 %indvars.iv.next274, %wide.trip.count276
  br i1 %exitcond277.not, label %._crit_edge218, label %scalar.ph324, !llvm.loop !203

._crit_edge218.thread:                            ; preds = %bb.c
  %.pre310 = load ptr, ptr @veryfastsupg.ac, align 8, !tbaa !164
  %i.au = sext i32 %0 to i64
  %i.av = getelementptr [8 x i8], ptr %.pre310, i64 %i.au
  %i.aw = getelementptr i8, ptr %i.av, i64 -8
  store i32 -1, ptr %i.aw, align 4, !tbaa !168
  %i.ax = load ptr, ptr @stderr, align 8, !tbaa !15
  %fputc313 = tail call i32 @fputc(i32 10, ptr %i.ax) ; 0 uses
  br label %._crit_edge218.._crit_edge263_crit_edge

._crit_edge218:                                   ; preds = %scalar.ph324, %middle.block336
  %i.ay = add nsw i32 %0, -1                      ; 2 uses
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.az
  store i32 -1, ptr %i.ba, align 4, !tbaa !168
  %i.bb = load ptr, ptr @veryfastsupg.tmptmplen, align 8, !tbaa !52
  %i.bc = zext nneg i32 %0 to i64
  %i.bd = shl nuw nsw i64 %i.bc, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bb, i8 0, i64 %i.bd, i1 false), !tbaa !24
  %i.be = load ptr, ptr @veryfastsupg.hist, align 8, !tbaa !89
  %i.bf = zext nneg i32 %0 to i64
  %i.bg = shl nuw nsw i64 %i.bf, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.be, i8 -1, i64 %i.bg, i1 false), !tbaa !4
  %i.bh = load ptr, ptr @stderr, align 8, !tbaa !15
  %fputc = tail call i32 @fputc(i32 10, ptr %i.bh) ; 0 uses
  %.not318 = icmp eq i32 %0, 1
  br i1 %.not318, label %._crit_edge218.._crit_edge263_crit_edge, label %.lr.ph262.preheader

._crit_edge218.._crit_edge263_crit_edge:          ; preds = %._crit_edge218.thread, %._crit_edge218
  %.pre294 = load ptr, ptr @veryfastsupg.eff, align 8, !tbaa !87
  br label %._crit_edge263

.lr.ph262.preheader:                              ; preds = %._crit_edge218
  %wide.trip.count287 = zext nneg i32 %i.ay to i64
  br label %.lr.ph262

.lr.ph262:                                        ; preds = %.lr.ph262.preheader, %bb.t
  %indvars.iv284 = phi i64 [ 0, %.lr.ph262.preheader ], [ %indvars.iv.next285, %bb.t ] ; 4 uses
  %.0156260 = phi i32 [ -1, %.lr.ph262.preheader ], [ %.1157.lcssa, %bb.t ] ; 2 uses
  %.0160259 = phi i32 [ -1, %.lr.ph262.preheader ], [ %.1161.lcssa, %bb.t ] ; 2 uses
  %i.bi = trunc nuw nsw i64 %indvars.iv284 to i32 ; 3 uses
  %i.bj = urem i32 %i.bi, 10
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph262
  %i.bl = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.bm = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bl, ptr noundef nonnull @.str.24, i32 noundef %i.bi, i32 noundef %0) #31 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph262
  %i.bn = load ptr, ptr @veryfastsupg.ac, align 8, !tbaa !164 ; 7 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !168 ; 2 uses
  %.not191223 = icmp eq i32 %i.bo, -1
  br i1 %.not191223, label %._crit_edge228, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.e
  %i.bp = load ptr, ptr @veryfastsupg.eff, align 8, !tbaa !87
  br label %.preheader

.loopexit:                                        ; preds = %bb.f
  %i.bq = sext i32 %i.bt to i64                   ; 2 uses
  %i.br = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.bq
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !168 ; 2 uses
  %.not191 = icmp eq i32 %i.bs, -1
  br i1 %.not191, label %._crit_edge228.loopexit, label %.preheader, !llvm.loop !204

.preheader:                                       ; preds = %.preheader.lr.ph, %.loopexit
  %i.bt = phi i32 [ %i.bo, %.preheader.lr.ph ], [ %i.bs, %.loopexit ] ; 3 uses
  %i.bu = phi i64 [ 0, %.preheader.lr.ph ], [ %i.bq, %.loopexit ]
  %.4227 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.bt, %.loopexit ]
  %.1157226 = phi i32 [ %.0156260, %.preheader.lr.ph ], [ %.3159, %.loopexit ]
  %.1161225 = phi i32 [ %.0160259, %.preheader.lr.ph ], [ %.3163, %.loopexit ]
  %.0165224 = phi i32 [ 4000000, %.preheader.lr.ph ], [ %.2167, %.loopexit ]
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.bp, i64 %i.bu
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !89
  br label %bb.f

bb.f:                                             ; preds = %.preheader, %bb.f
  %.1155222 = phi i32 [ %i.bt, %.preheader ], [ %i.cc, %bb.f ] ; 2 uses
  %.2158221 = phi i32 [ %.1157226, %.preheader ], [ %.3159, %bb.f ]
  %.2162220 = phi i32 [ %.1161225, %.preheader ], [ %.3163, %bb.f ]
  %.1166219 = phi i32 [ %.0165224, %.preheader ], [ %.2167, %bb.f ] ; 2 uses
  %i.bx = sext i32 %.1155222 to i64               ; 2 uses
  %i.by = getelementptr inbounds [4 x i8], ptr %i.bw, i64 %i.bx
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !4  ; 2 uses
  %i.ca = icmp slt i32 %i.bz, %.1166219           ; 2 uses
  %.2167 = tail call i32 @llvm.smin.i32(i32 %i.bz, i32 %.1166219) ; 3 uses
  %.3163 = select i1 %i.ca, i32 %.4227, i32 %.2162220 ; 3 uses
  %.3159 = select i1 %i.ca, i32 %.1155222, i32 %.2158221 ; 3 uses
  %i.cb = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.bx
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !168 ; 2 uses
  %.not200 = icmp eq i32 %i.cc, -1
  br i1 %.not200, label %.loopexit, label %bb.f, !llvm.loop !205

._crit_edge228.loopexit:                          ; preds = %.loopexit
  %i.cd = sitofp i32 %.2167 to double
  %i.ce = fmul nnan double %i.cd, 5.000000e-01
  br label %._crit_edge228

._crit_edge228:                                   ; preds = %._crit_edge228.loopexit, %bb.e
  %.0165.lcssa = phi double [ 2.000000e+06, %bb.e ], [ %i.ce, %._crit_edge228.loopexit ]
  %.1161.lcssa = phi i32 [ %.0160259, %bb.e ], [ %.3163, %._crit_edge228.loopexit ] ; 5 uses
  %.1157.lcssa = phi i32 [ %.0156260, %bb.e ], [ %.3159, %._crit_edge228.loopexit ] ; 6 uses
  %i.cf = fdiv double %.0165.lcssa, 1.000000e+06  ; 3 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv284
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !87 ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !89 ; 4 uses
  %i.cj = load ptr, ptr @veryfastsupg.hist, align 8, !tbaa !89 ; 2 uses
  %i.ck = sext i32 %.1161.lcssa to i64            ; 4 uses
  %i.cl = getelementptr inbounds [4 x i8], ptr %i.cj, i64 %i.ck ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !4  ; 2 uses
  %i.cn = icmp eq i32 %i.cm, -1
  br i1 %i.cn, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge228
  %i.co = getelementptr inbounds nuw i8, ptr %i.ci, i64 4
  store i32 %.1161.lcssa, ptr %i.ci, align 4, !tbaa !4
  store i32 -1, ptr %i.co, align 4, !tbaa !4
  br label %bb.i

bb.h:                                             ; preds = %._crit_edge228
  %i.cp = sext i32 %i.cm to i64
  %i.cq = getelementptr inbounds [8 x i8], ptr %2, i64 %i.cp
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !87 ; 2 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !89 ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !89 ; 3 uses
  %i.cv = load i32, ptr %i.cs, align 4, !tbaa !4  ; 3 uses
  %i.cw = load i32, ptr %i.cu, align 4, !tbaa !4  ; 3 uses
  %i.cx = icmp sgt i32 %i.cv, %i.cw               ; 2 uses
  %.201 = select i1 %i.cx, ptr %i.cs, ptr %i.cu   ; 2 uses
  %i.cy = tail call i32 @llvm.smin.i32(i32 %i.cv, i32 %i.cw) ; 2 uses
  %.not192232 = icmp eq i32 %i.cy, -1
  %i.cz = tail call i32 @llvm.smax.i32(i32 %i.cv, i32 %i.cw)
  br i1 %.not192232, label %.preheader205, label %.lr.ph236.preheader

.lr.ph236.preheader:                              ; preds = %bb.h
  %. = select i1 %i.cx, ptr %i.cu, ptr %i.cs
  br label %.lr.ph236

.preheader205.loopexit:                           ; preds = %.lr.ph236
  %.pre289 = load i32, ptr %.201, align 4, !tbaa !4
  br label %.preheader205

.preheader205:                                    ; preds = %.preheader205.loopexit, %bb.h
  %i.da = phi i32 [ %i.cz, %bb.h ], [ %.pre289, %.preheader205.loopexit ] ; 2 uses
  %.0175.lcssa = phi ptr [ %i.ci, %bb.h ], [ %i.dd, %.preheader205.loopexit ] ; 2 uses
  %.not193238 = icmp eq i32 %i.da, -1
  br i1 %.not193238, label %._crit_edge242, label %.lr.ph241

.lr.ph236:                                        ; preds = %.lr.ph236.preheader, %.lr.ph236
  %i.db = phi i32 [ %i.de, %.lr.ph236 ], [ %i.cy, %.lr.ph236.preheader ]
  %.0171234 = phi ptr [ %i.dc, %.lr.ph236 ], [ %., %.lr.ph236.preheader ]
  %.0175233 = phi ptr [ %i.dd, %.lr.ph236 ], [ %i.ci, %.lr.ph236.preheader ] ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.0171234, i64 4 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.0175233, i64 4 ; 2 uses
  store i32 %i.db, ptr %.0175233, align 4, !tbaa !4
  %i.de = load i32, ptr %i.dc, align 4, !tbaa !4  ; 2 uses
  %.not192 = icmp eq i32 %i.de, -1
  br i1 %.not192, label %.preheader205.loopexit, label %.lr.ph236, !llvm.loop !206

.lr.ph241:                                        ; preds = %.preheader205, %.lr.ph241
  %i.df = phi i32 [ %i.di, %.lr.ph241 ], [ %i.da, %.preheader205 ]
  %.1172240 = phi ptr [ %i.dg, %.lr.ph241 ], [ %.201, %.preheader205 ]
  %.1176239 = phi ptr [ %i.dh, %.lr.ph241 ], [ %.0175.lcssa, %.preheader205 ] ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.1172240, i64 4 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.1176239, i64 4 ; 2 uses
  store i32 %i.df, ptr %.1176239, align 4, !tbaa !4
  %i.di = load i32, ptr %i.dg, align 4, !tbaa !4  ; 2 uses
  %.not193 = icmp eq i32 %i.di, -1
  br i1 %.not193, label %._crit_edge242, label %.lr.ph241, !llvm.loop !207

._crit_edge242:                                   ; preds = %.lr.ph241, %.preheader205
  %.1176.lcssa = phi ptr [ %.0175.lcssa, %.preheader205 ], [ %i.dh, %.lr.ph241 ]
  store i32 -1, ptr %.1176.lcssa, align 4, !tbaa !4
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge242, %bb.g
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !89 ; 4 uses
  %i.dl = sext i32 %.1157.lcssa to i64            ; 4 uses
  %i.dm = getelementptr inbounds [4 x i8], ptr %i.cj, i64 %i.dl
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !4  ; 2 uses
  %i.do = icmp eq i32 %i.dn, -1
  br i1 %i.do, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dk, i64 4
  store i32 %.1157.lcssa, ptr %i.dk, align 4, !tbaa !4
  store i32 -1, ptr %i.dp, align 4, !tbaa !4
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.dq = sext i32 %i.dn to i64
  %i.dr = getelementptr inbounds [8 x i8], ptr %2, i64 %i.dq
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !87 ; 2 uses
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !89 ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !89 ; 3 uses
  %i.dw = load i32, ptr %i.dt, align 4, !tbaa !4  ; 3 uses
  %i.dx = load i32, ptr %i.dv, align 4, !tbaa !4  ; 3 uses
  %i.dy = icmp sgt i32 %i.dw, %i.dx               ; 2 uses
  %.203 = select i1 %i.dy, ptr %i.dt, ptr %i.dv   ; 2 uses
  %i.dz = tail call i32 @llvm.smin.i32(i32 %i.dw, i32 %i.dx) ; 2 uses
  %.not194244 = icmp eq i32 %i.dz, -1
  %i.ea = tail call i32 @llvm.smax.i32(i32 %i.dw, i32 %i.dx)
  br i1 %.not194244, label %.preheader204, label %.lr.ph248.preheader

.lr.ph248.preheader:                              ; preds = %bb.k
  %.202 = select i1 %i.dy, ptr %i.dv, ptr %i.dt
  br label %.lr.ph248

.preheader204.loopexit:                           ; preds = %.lr.ph248
  %.pre290 = load i32, ptr %.203, align 4, !tbaa !4
  br label %.preheader204

.preheader204:                                    ; preds = %.preheader204.loopexit, %bb.k
  %i.eb = phi i32 [ %i.ea, %bb.k ], [ %.pre290, %.preheader204.loopexit ] ; 2 uses
  %.2177.lcssa = phi ptr [ %i.dk, %bb.k ], [ %i.ee, %.preheader204.loopexit ] ; 2 uses
  %.not195250 = icmp eq i32 %i.eb, -1
  br i1 %.not195250, label %._crit_edge254, label %.lr.ph253

.lr.ph248:                                        ; preds = %.lr.ph248.preheader, %.lr.ph248
  %i.ec = phi i32 [ %i.ef, %.lr.ph248 ], [ %i.dz, %.lr.ph248.preheader ]
  %.2173246 = phi ptr [ %i.ed, %.lr.ph248 ], [ %.202, %.lr.ph248.preheader ]
  %.2177245 = phi ptr [ %i.ee, %.lr.ph248 ], [ %i.dk, %.lr.ph248.preheader ] ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.2173246, i64 4 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.2177245, i64 4 ; 2 uses
  store i32 %i.ec, ptr %.2177245, align 4, !tbaa !4
  %i.ef = load i32, ptr %i.ed, align 4, !tbaa !4  ; 2 uses
  %.not194 = icmp eq i32 %i.ef, -1
  br i1 %.not194, label %.preheader204.loopexit, label %.lr.ph248, !llvm.loop !208

end_hunk_9
begin_hunk_10_@veryfastsupg_int:bb.a
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr @njob, align 4, !tbaa !4   ; 2 uses
  %i.c = tail call ptr @AllocateIntMtx(i32 noundef %i.b, i32 noundef %i.b) #33
  store ptr %i.c, ptr @veryfastsupg_int.eff, align 8, !tbaa !87
  %i.d = load i32, ptr @njob, align 4, !tbaa !4
  %i.e = tail call ptr @AllocateIntVec(i32 noundef %i.d) #33
  store ptr %i.e, ptr @veryfastsupg_int.hist, align 8, !tbaa !89
  %i.f = load i32, ptr @njob, align 4, !tbaa !4
  %i.g = tail call ptr @AllocateIntVec(i32 noundef %i.f) #33
  store ptr %i.g, ptr @veryfastsupg_int.tmptmplen, align 8, !tbaa !89
  %i.h = load i32, ptr @njob, align 4, !tbaa !4
  %i.i = sext i32 %i.h to i64
  %i.j = shl nsw i64 %i.i, 3
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.j) #34
  store ptr %i.k, ptr @veryfastsupg_int.ac, align 8, !tbaa !164
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.l = icmp sgt i32 %0, 0
  br i1 %i.l, label %.preheader208.lr.ph, label %._crit_edge218.thread

.preheader208.lr.ph:                              ; preds = %bb.c
  %i.m = load ptr, ptr @veryfastsupg_int.eff, align 8
  %wide.trip.count271 = zext nneg i32 %0 to i64   ; 8 uses
  %min.iters.check = icmp ult i32 %0, 8
  %n.vec = and i64 %wide.trip.count271, 2147483640 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count271
  %xtraiter = and i64 %wide.trip.count271, 3      ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader208

.preheader208:                                    ; preds = %.preheader208.lr.ph, %._crit_edge
  %indvars.iv268 = phi i64 [ 0, %.preheader208.lr.ph ], [ %indvars.iv.next269, %._crit_edge ] ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv268
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !89   ; 7 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv268
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !89   ; 7 uses
  %i.r = ptrtoaddr ptr %i.q to i64
  %i.s = ptrtoaddr ptr %i.o to i64
  %i.t = sub i64 %i.s, %i.r
  %diff.check = icmp ugt i64 %i.t, -32
  %or.cond341 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond341, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader208, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader208 ] ; 3 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %index ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %wide.load = load <4 x i32>, ptr %i.u, align 4, !tbaa !4
  %wide.load323 = load <4 x i32>, ptr %i.v, align 4, !tbaa !4
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %index ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store <4 x i32> %wide.load, ptr %i.w, align 4, !tbaa !4
  store <4 x i32> %wide.load323, ptr %i.x, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !212

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader208, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader208 ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.prol
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !4
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.prol
  store i32 %i.aa, ptr %i.ab, align 4, !tbaa !4
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !213

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.ac = sub nsw i64 %indvars.iv.ph, %wide.trip.count271
  %i.ad = icmp ugt i64 %i.ac, -4
  br i1 %i.ad, label %._crit_edge, label %scalar.ph

.preheader207:                                    ; preds = %._crit_edge
  %.pre = load ptr, ptr @veryfastsupg_int.ac, align 8, !tbaa !164 ; 4 uses
  %wide.trip.count276 = zext nneg i32 %0 to i64
  %min.iters.check325 = icmp ult i32 %0, 4
  br i1 %min.iters.check325, label %scalar.ph324.preheader, label %vector.ph326

vector.ph326:                                     ; preds = %.preheader207
  %n.vec328 = and i64 %wide.trip.count271, 2147483644 ; 3 uses
  br label %vector.body329

vector.body329:                                   ; preds = %vector.body329, %vector.ph326
  %index330 = phi i64 [ 0, %vector.ph326 ], [ %index.next334, %vector.body329 ] ; 3 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph326 ], [ %vec.ind.next, %vector.body329 ] ; 3 uses
  %vec.ind331 = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph326 ], [ %vec.ind.next335, %vector.body329 ] ; 3 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %index330
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %index330
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = trunc <2 x i64> %vec.ind to <2 x i32>
  %i.ai = trunc <2 x i64> %vec.ind to <2 x i32>
  %i.aj = shufflevector <2 x i32> %i.ah, <2 x i32> %vec.ind331, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %interleaved.vec = add <4 x i32> %i.aj, <i32 1, i32 -1, i32 1, i32 -1>
  store <4 x i32> %interleaved.vec, ptr %i.ae, align 4, !tbaa !4
  %i.ak = shufflevector <2 x i32> %i.ai, <2 x i32> %vec.ind331, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %interleaved.vec333 = add <4 x i32> %i.ak, <i32 3, i32 1, i32 3, i32 1>
  store <4 x i32> %interleaved.vec333, ptr %i.ag, align 4, !tbaa !4
  %index.next334 = add nuw i64 %index330, 4       ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %vec.ind.next335 = add <2 x i32> %vec.ind331, splat (i32 4)
  %i.al = icmp eq i64 %index.next334, %n.vec328
  br i1 %i.al, label %middle.block336, label %vector.body329, !llvm.loop !214

middle.block336:                                  ; preds = %vector.body329
  %cmp.n337 = icmp eq i64 %n.vec328, %wide.trip.count271
  br i1 %cmp.n337, label %._crit_edge218, label %scalar.ph324.preheader

scalar.ph324.preheader:                           ; preds = %.preheader207, %middle.block336
  %indvars.iv273.ph = phi i64 [ 0, %.preheader207 ], [ %n.vec328, %middle.block336 ]
  br label %scalar.ph324

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv
  %i.an = load i32, ptr %i.am, align 4, !tbaa !4
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv
  store i32 %i.an, ptr %i.ao, align 4, !tbaa !4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.next
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !4
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.next
  store i32 %i.aq, ptr %i.ar, align 4, !tbaa !4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.next.1
  %i.at = load i32, ptr %i.as, align 4, !tbaa !4
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.next.1
  store i32 %i.at, ptr %i.au, align 4, !tbaa !4
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.next.2
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !4
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.next.2
  store i32 %i.aw, ptr %i.ax, align 4, !tbaa !4
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count271
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !215

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next269 = add nuw nsw i64 %indvars.iv268, 1 ; 2 uses
  %exitcond272.not = icmp eq i64 %indvars.iv.next269, %wide.trip.count271
  br i1 %exitcond272.not, label %.preheader207, label %.preheader208, !llvm.loop !216

scalar.ph324:                                     ; preds = %scalar.ph324.preheader, %scalar.ph324
  %indvars.iv273 = phi i64 [ %indvars.iv.next274, %scalar.ph324 ], [ %indvars.iv273.ph, %scalar.ph324.preheader ] ; 3 uses
  %indvars.iv.next274 = add nuw nsw i64 %indvars.iv273, 1 ; 3 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %indvars.iv273 ; 2 uses
  %i.az = trunc nuw nsw i64 %indvars.iv.next274 to i32
  store i32 %i.az, ptr %i.ay, align 4, !tbaa !168
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  %i.bb = trunc i64 %indvars.iv273 to i32
  %i.bc = add i32 %i.bb, -1
  store i32 %i.bc, ptr %i.ba, align 4, !tbaa !170
  %exitcond277.not = icmp eq i64 %indvars.iv.next274, %wide.trip.count276
  br i1 %exitcond277.not, label %._crit_edge218, label %scalar.ph324, !llvm.loop !217

._crit_edge218.thread:                            ; preds = %bb.c
  %.pre310 = load ptr, ptr @veryfastsupg_int.ac, align 8, !tbaa !164
  %i.bd = sext i32 %0 to i64
  %i.be = getelementptr [8 x i8], ptr %.pre310, i64 %i.bd
  %i.bf = getelementptr i8, ptr %i.be, i64 -8
  store i32 -1, ptr %i.bf, align 4, !tbaa !168
  %i.bg = load ptr, ptr @stderr, align 8, !tbaa !15
  %fputc313 = tail call i32 @fputc(i32 10, ptr %i.bg) ; 0 uses
  br label %._crit_edge218.._crit_edge263_crit_edge

._crit_edge218:                                   ; preds = %scalar.ph324, %middle.block336
  %i.bh = add nsw i32 %0, -1                      ; 2 uses
  %i.bi = zext nneg i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.bi
  store i32 -1, ptr %i.bj, align 4, !tbaa !168
  %i.bk = load ptr, ptr @veryfastsupg_int.tmptmplen, align 8, !tbaa !89
  %i.bl = zext nneg i32 %0 to i64
  %i.bm = shl nuw nsw i64 %i.bl, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.bk, i8 0, i64 %i.bm, i1 false), !tbaa !4
  %i.bn = load ptr, ptr @veryfastsupg_int.hist, align 8, !tbaa !89
  %i.bo = zext nneg i32 %0 to i64
  %i.bp = shl nuw nsw i64 %i.bo, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.bn, i8 -1, i64 %i.bp, i1 false), !tbaa !4
  %i.bq = load ptr, ptr @stderr, align 8, !tbaa !15
  %fputc = tail call i32 @fputc(i32 10, ptr %i.bq) ; 0 uses
  %.not318 = icmp eq i32 %0, 1
  br i1 %.not318, label %._crit_edge218.._crit_edge263_crit_edge, label %.lr.ph262.preheader

._crit_edge218.._crit_edge263_crit_edge:          ; preds = %._crit_edge218.thread, %._crit_edge218
  %.pre294 = load ptr, ptr @veryfastsupg_int.eff, align 8, !tbaa !87
  br label %._crit_edge263

.lr.ph262.preheader:                              ; preds = %._crit_edge218
  %wide.trip.count287 = zext nneg i32 %i.bh to i64
  br label %.lr.ph262

.lr.ph262:                                        ; preds = %.lr.ph262.preheader, %bb.t
  %indvars.iv284 = phi i64 [ 0, %.lr.ph262.preheader ], [ %indvars.iv.next285, %bb.t ] ; 4 uses
  %.0156260 = phi i32 [ -1, %.lr.ph262.preheader ], [ %.1157.lcssa, %bb.t ] ; 2 uses
  %.0160259 = phi i32 [ -1, %.lr.ph262.preheader ], [ %.1161.lcssa, %bb.t ] ; 2 uses
  %i.br = trunc nuw nsw i64 %indvars.iv284 to i32 ; 3 uses
  %i.bs = urem i32 %i.br, 10
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph262
  %i.bu = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.bv = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bu, ptr noundef nonnull @.str.24, i32 noundef %i.br, i32 noundef %0) #31 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph262
  %i.bw = load ptr, ptr @veryfastsupg_int.ac, align 8, !tbaa !164 ; 7 uses
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !168 ; 2 uses
  %.not191223 = icmp eq i32 %i.bx, -1
  br i1 %.not191223, label %._crit_edge228, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.e
  %i.by = load ptr, ptr @veryfastsupg_int.eff, align 8, !tbaa !87
  br label %.preheader

.loopexit:                                        ; preds = %bb.f
  %i.bz = sext i32 %i.cc to i64                   ; 2 uses
  %i.ca = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %i.bz
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !168 ; 2 uses
  %.not191 = icmp eq i32 %i.cb, -1
  br i1 %.not191, label %._crit_edge228.loopexit, label %.preheader, !llvm.loop !218

.preheader:                                       ; preds = %.preheader.lr.ph, %.loopexit
  %i.cc = phi i32 [ %i.bx, %.preheader.lr.ph ], [ %i.cb, %.loopexit ] ; 3 uses
  %i.cd = phi i64 [ 0, %.preheader.lr.ph ], [ %i.bz, %.loopexit ]
  %.4227 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.cc, %.loopexit ]
  %.1157226 = phi i32 [ %.0156260, %.preheader.lr.ph ], [ %.3159, %.loopexit ]
  %.1161225 = phi i32 [ %.0160259, %.preheader.lr.ph ], [ %.3163, %.loopexit ]
  %.0164224 = phi i32 [ 4000000, %.preheader.lr.ph ], [ %.2166, %.loopexit ]
  %i.ce = getelementptr inbounds [8 x i8], ptr %i.by, i64 %i.cd
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !89
  br label %bb.f

bb.f:                                             ; preds = %.preheader, %bb.f
  %.1155222 = phi i32 [ %i.cc, %.preheader ], [ %i.cl, %bb.f ] ; 2 uses
  %.2158221 = phi i32 [ %.1157226, %.preheader ], [ %.3159, %bb.f ]
  %.2162220 = phi i32 [ %.1161225, %.preheader ], [ %.3163, %bb.f ]
  %.1165219 = phi i32 [ %.0164224, %.preheader ], [ %.2166, %bb.f ] ; 2 uses
  %i.cg = sext i32 %.1155222 to i64               ; 2 uses
  %i.ch = getelementptr inbounds [4 x i8], ptr %i.cf, i64 %i.cg
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !4  ; 2 uses
  %i.cj = icmp slt i32 %i.ci, %.1165219           ; 2 uses
  %.2166 = tail call i32 @llvm.smin.i32(i32 %i.ci, i32 %.1165219) ; 3 uses
  %.3163 = select i1 %i.cj, i32 %.4227, i32 %.2162220 ; 3 uses
  %.3159 = select i1 %i.cj, i32 %.1155222, i32 %.2158221 ; 3 uses
  %i.ck = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %i.cg
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !168 ; 2 uses
  %.not200 = icmp eq i32 %i.cl, -1
  br i1 %.not200, label %.loopexit, label %bb.f, !llvm.loop !219

._crit_edge228.loopexit:                          ; preds = %.loopexit
  %i.cm = sitofp i32 %.2166 to double
  %i.cn = fmul nnan double %i.cm, 5.000000e-01
  %i.co = fptosi double %i.cn to i32
  br label %._crit_edge228

._crit_edge228:                                   ; preds = %._crit_edge228.loopexit, %bb.e
  %.0164.lcssa = phi i32 [ 2000000, %bb.e ], [ %i.co, %._crit_edge228.loopexit ] ; 3 uses
  %.1161.lcssa = phi i32 [ %.0160259, %bb.e ], [ %.3163, %._crit_edge228.loopexit ] ; 5 uses
  %.1157.lcssa = phi i32 [ %.0156260, %bb.e ], [ %.3159, %._crit_edge228.loopexit ] ; 6 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv284
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !87 ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !89 ; 4 uses
  %i.cs = load ptr, ptr @veryfastsupg_int.hist, align 8, !tbaa !89 ; 2 uses
  %i.ct = sext i32 %.1161.lcssa to i64            ; 4 uses
  %i.cu = getelementptr inbounds [4 x i8], ptr %i.cs, i64 %i.ct ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !4  ; 2 uses
  %i.cw = icmp eq i32 %i.cv, -1
  br i1 %i.cw, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge228
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cr, i64 4
  store i32 %.1161.lcssa, ptr %i.cr, align 4, !tbaa !4
  store i32 -1, ptr %i.cx, align 4, !tbaa !4
  br label %bb.i

bb.h:                                             ; preds = %._crit_edge228
  %i.cy = sext i32 %i.cv to i64
  %i.cz = getelementptr inbounds [8 x i8], ptr %2, i64 %i.cy
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !87 ; 2 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !89 ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !89 ; 3 uses
  %i.de = load i32, ptr %i.db, align 4, !tbaa !4  ; 3 uses
  %i.df = load i32, ptr %i.dd, align 4, !tbaa !4  ; 3 uses
  %i.dg = icmp sgt i32 %i.de, %i.df               ; 2 uses
  %.201 = select i1 %i.dg, ptr %i.db, ptr %i.dd   ; 2 uses
  %i.dh = tail call i32 @llvm.smin.i32(i32 %i.de, i32 %i.df) ; 2 uses
  %.not192232 = icmp eq i32 %i.dh, -1
  %i.di = tail call i32 @llvm.smax.i32(i32 %i.de, i32 %i.df)
  br i1 %.not192232, label %.preheader205, label %.lr.ph236.preheader

.lr.ph236.preheader:                              ; preds = %bb.h
  %. = select i1 %i.dg, ptr %i.dd, ptr %i.db
  br label %.lr.ph236

.preheader205.loopexit:                           ; preds = %.lr.ph236
  %.pre289 = load i32, ptr %.201, align 4, !tbaa !4
  br label %.preheader205

.preheader205:                                    ; preds = %.preheader205.loopexit, %bb.h
  %i.dj = phi i32 [ %i.di, %bb.h ], [ %.pre289, %.preheader205.loopexit ] ; 2 uses
  %.0174.lcssa = phi ptr [ %i.cr, %bb.h ], [ %i.dm, %.preheader205.loopexit ] ; 2 uses
  %.not193238 = icmp eq i32 %i.dj, -1
  br i1 %.not193238, label %._crit_edge242, label %.lr.ph241

.lr.ph236:                                        ; preds = %.lr.ph236.preheader, %.lr.ph236
  %i.dk = phi i32 [ %i.dn, %.lr.ph236 ], [ %i.dh, %.lr.ph236.preheader ]
  %.0170234 = phi ptr [ %i.dl, %.lr.ph236 ], [ %., %.lr.ph236.preheader ]
  %.0174233 = phi ptr [ %i.dm, %.lr.ph236 ], [ %i.cr, %.lr.ph236.preheader ] ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.0170234, i64 4 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.0174233, i64 4 ; 2 uses
  store i32 %i.dk, ptr %.0174233, align 4, !tbaa !4
  %i.dn = load i32, ptr %i.dl, align 4, !tbaa !4  ; 2 uses
  %.not192 = icmp eq i32 %i.dn, -1
  br i1 %.not192, label %.preheader205.loopexit, label %.lr.ph236, !llvm.loop !220

.lr.ph241:                                        ; preds = %.preheader205, %.lr.ph241
  %i.do = phi i32 [ %i.dr, %.lr.ph241 ], [ %i.dj, %.preheader205 ]
  %.1171240 = phi ptr [ %i.dp, %.lr.ph241 ], [ %.201, %.preheader205 ]
  %.1175239 = phi ptr [ %i.dq, %.lr.ph241 ], [ %.0174.lcssa, %.preheader205 ] ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.1171240, i64 4 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.1175239, i64 4 ; 2 uses
  store i32 %i.do, ptr %.1175239, align 4, !tbaa !4
  %i.dr = load i32, ptr %i.dp, align 4, !tbaa !4  ; 2 uses
  %.not193 = icmp eq i32 %i.dr, -1
  br i1 %.not193, label %._crit_edge242, label %.lr.ph241, !llvm.loop !221

._crit_edge242:                                   ; preds = %.lr.ph241, %.preheader205
  %.1175.lcssa = phi ptr [ %.0174.lcssa, %.preheader205 ], [ %i.dq, %.lr.ph241 ]
  store i32 -1, ptr %.1175.lcssa, align 4, !tbaa !4
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge242, %bb.g
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !89 ; 4 uses
  %i.du = sext i32 %.1157.lcssa to i64            ; 4 uses
  %i.dv = getelementptr inbounds [4 x i8], ptr %i.cs, i64 %i.du
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !4  ; 2 uses
  %i.dx = icmp eq i32 %i.dw, -1
  br i1 %i.dx, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dt, i64 4
  store i32 %.1157.lcssa, ptr %i.dt, align 4, !tbaa !4
  store i32 -1, ptr %i.dy, align 4, !tbaa !4
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.dz = sext i32 %i.dw to i64
  %i.ea = getelementptr inbounds [8 x i8], ptr %2, i64 %i.dz
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !87 ; 2 uses
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !89 ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !89 ; 3 uses
  %i.ef = load i32, ptr %i.ec, align 4, !tbaa !4  ; 3 uses
  %i.eg = load i32, ptr %i.ee, align 4, !tbaa !4  ; 3 uses
  %i.eh = icmp sgt i32 %i.ef, %i.eg               ; 2 uses
  %.203 = select i1 %i.eh, ptr %i.ec, ptr %i.ee   ; 2 uses
  %i.ei = tail call i32 @llvm.smin.i32(i32 %i.ef, i32 %i.eg) ; 2 uses
  %.not194244 = icmp eq i32 %i.ei, -1
  %i.ej = tail call i32 @llvm.smax.i32(i32 %i.ef, i32 %i.eg)
  br i1 %.not194244, label %.preheader204, label %.lr.ph248.preheader

.lr.ph248.preheader:                              ; preds = %bb.k
  %.202 = select i1 %i.eh, ptr %i.ee, ptr %i.ec
  br label %.lr.ph248

.preheader204.loopexit:                           ; preds = %.lr.ph248
  %.pre290 = load i32, ptr %.203, align 4, !tbaa !4
  br label %.preheader204

.preheader204:                                    ; preds = %.preheader204.loopexit, %bb.k
  %i.ek = phi i32 [ %i.ej, %bb.k ], [ %.pre290, %.preheader204.loopexit ] ; 2 uses
  %.2176.lcssa = phi ptr [ %i.dt, %bb.k ], [ %i.en, %.preheader204.loopexit ] ; 2 uses
  %.not195250 = icmp eq i32 %i.ek, -1
  br i1 %.not195250, label %._crit_edge254, label %.lr.ph253

.lr.ph248:                                        ; preds = %.lr.ph248.preheader, %.lr.ph248
  %i.el = phi i32 [ %i.eo, %.lr.ph248 ], [ %i.ei, %.lr.ph248.preheader ]
  %.2172246 = phi ptr [ %i.em, %.lr.ph248 ], [ %.202, %.lr.ph248.preheader ]
  %.2176245 = phi ptr [ %i.en, %.lr.ph248 ], [ %i.dt, %.lr.ph248.preheader ] ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.2172246, i64 4 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.2176245, i64 4 ; 2 uses
  store i32 %i.el, ptr %.2176245, align 4, !tbaa !4
  %i.eo = load i32, ptr %i.em, align 4, !tbaa !4  ; 2 uses
  %.not194 = icmp eq i32 %i.eo, -1
  br i1 %.not194, label %.preheader204.loopexit, label %.lr.ph248, !llvm.loop !222

end_hunk_10
begin_hunk_11_@fastsupg:bb.a
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %index306
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %index306
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = trunc <2 x i64> %vec.ind to <2 x i32>
  %i.ab = trunc <2 x i64> %vec.ind to <2 x i32>
  %i.ac = shufflevector <2 x i32> %i.aa, <2 x i32> %vec.ind307, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %interleaved.vec = add <4 x i32> %i.ac, <i32 1, i32 -1, i32 1, i32 -1>
  store <4 x i32> %interleaved.vec, ptr %i.x, align 4, !tbaa !4
  %i.ad = shufflevector <2 x i32> %i.ab, <2 x i32> %vec.ind307, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %interleaved.vec309 = add <4 x i32> %i.ad, <i32 3, i32 1, i32 3, i32 1>
  store <4 x i32> %interleaved.vec309, ptr %i.z, align 4, !tbaa !4
  %index.next310 = add nuw i64 %index306, 4       ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %vec.ind.next311 = add <2 x i32> %vec.ind307, splat (i32 4)
  %i.ae = icmp eq i64 %index.next310, %n.vec304
  br i1 %i.ae, label %middle.block312, label %vector.body305, !llvm.loop !229

middle.block312:                                  ; preds = %vector.body305
  %cmp.n313 = icmp eq i64 %n.vec304, %wide.trip.count230
  br i1 %cmp.n313, label %.preheader170.lr.ph, label %scalar.ph300.preheader

scalar.ph300.preheader:                           ; preds = %.preheader172, %middle.block312
  %indvars.iv232.ph = phi i64 [ 0, %.preheader172 ], [ %n.vec304, %middle.block312 ]
  br label %scalar.ph300

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv
  %i.ag = load double, ptr %i.af, align 8, !tbaa !24
  %i.ah = fptrunc double %i.ag to float
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv
  store float %i.ah, ptr %i.ai, align 4, !tbaa !21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count230
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !230

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %indvars.iv.next228 = add nuw nsw i64 %indvars.iv227, 1 ; 2 uses
  %exitcond231.not = icmp eq i64 %indvars.iv.next228, %wide.trip.count230
  br i1 %exitcond231.not, label %.preheader172, label %.preheader173, !llvm.loop !231

scalar.ph300:                                     ; preds = %scalar.ph300.preheader, %scalar.ph300
  %indvars.iv232 = phi i64 [ %indvars.iv.next233, %scalar.ph300 ], [ %indvars.iv232.ph, %scalar.ph300.preheader ] ; 3 uses
  %indvars.iv.next233 = add nuw nsw i64 %indvars.iv232, 1 ; 3 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %indvars.iv232 ; 2 uses
  %i.ak = trunc nuw nsw i64 %indvars.iv.next233 to i32
  store i32 %i.ak, ptr %i.aj, align 4, !tbaa !168
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.am = trunc i64 %indvars.iv232 to i32
  %i.an = add i32 %i.am, -1
  store i32 %i.an, ptr %i.al, align 4, !tbaa !170
  %exitcond236.not = icmp eq i64 %indvars.iv.next233, %wide.trip.count235
  br i1 %exitcond236.not, label %.preheader170.lr.ph, label %scalar.ph300, !llvm.loop !232

.preheader169.thread:                             ; preds = %bb.c
  %.pre294 = load ptr, ptr @fastsupg.ac, align 8, !tbaa !164
  %i.ao = sext i32 %0 to i64
  %i.ap = getelementptr [8 x i8], ptr %.pre294, i64 %i.ao
  %i.aq = getelementptr i8, ptr %i.ap, i64 -8
  store i32 -1, ptr %i.aq, align 4, !tbaa !168
  %i.ar = load ptr, ptr @stderr, align 8, !tbaa !15
  %fputc297 = tail call i32 @fputc(i32 10, ptr %i.ar) ; 0 uses
  br label %._crit_edge225

.preheader170.lr.ph:                              ; preds = %scalar.ph300, %middle.block312
  %i.as = add nsw i32 %0, -1                      ; 2 uses
  %i.at = zext nneg i32 %i.as to i64
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.at
  store i32 -1, ptr %i.au, align 4, !tbaa !168
  %i.av = load ptr, ptr @fastsupg.tmplen, align 8, !tbaa !19
  %i.aw = zext nneg i32 %0 to i64
  %i.ax = shl nuw nsw i64 %i.aw, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.av, i8 0, i64 %i.ax, i1 false), !tbaa !21
  %i.ay = load ptr, ptr @fastsupg.pair, align 8
  %wide.trip.count248 = zext nneg i32 %0 to i64
  %xtraiter = and i64 %wide.trip.count230, 3      ; 3 uses
  %i.az = icmp ult i32 %0, 4
  %unroll_iter = and i64 %wide.trip.count230, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod315 = icmp ne i64 %xtraiter, 0
  br label %.preheader170

.preheader170:                                    ; preds = %.preheader170.lr.ph, %._crit_edge183
  %indvars.iv245 = phi i64 [ 0, %.preheader170.lr.ph ], [ %indvars.iv.next246, %._crit_edge183 ] ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv245 ; 5 uses
  br i1 %i.az, label %.epil.preheader, label %.preheader170.new

.lr.ph186:                                        ; preds = %._crit_edge183
  %i.bb = load ptr, ptr @fastsupg.pair, align 8, !tbaa !77 ; 5 uses
  %xtraiter317 = and i64 %wide.trip.count230, 3   ; 3 uses
  %i.bc = icmp ult i32 %0, 4
  br i1 %i.bc, label %.epil.preheader316, label %.lr.ph186.new

.lr.ph186.new:                                    ; preds = %.lr.ph186
  %unroll_iter321 = and i64 %wide.trip.count230, 2147483644
  br label %bb.e

.preheader170.new:                                ; preds = %.preheader170, %.preheader170.new
  %indvars.iv240 = phi i64 [ %indvars.iv.next241.3, %.preheader170.new ], [ 0, %.preheader170 ] ; 5 uses
  %niter = phi i64 [ %niter.next.3, %.preheader170.new ], [ 0, %.preheader170 ]
  %i.bd = load ptr, ptr %i.ba, align 8, !tbaa !12
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %indvars.iv240
  store i8 0, ptr %i.be, align 1, !tbaa !8
  %i.bf = load ptr, ptr %i.ba, align 8, !tbaa !12
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %indvars.iv240
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 1
  store i8 0, ptr %i.bh, align 1, !tbaa !8
  %i.bi = load ptr, ptr %i.ba, align 8, !tbaa !12
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %indvars.iv240
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 2
  store i8 0, ptr %i.bk, align 1, !tbaa !8
  %i.bl = load ptr, ptr %i.ba, align 8, !tbaa !12
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %indvars.iv240
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 3
  store i8 0, ptr %i.bn, align 1, !tbaa !8
  %indvars.iv.next241.3 = add nuw nsw i64 %indvars.iv240, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge183.unr-lcssa, label %.preheader170.new, !llvm.loop !233

._crit_edge183.unr-lcssa:                         ; preds = %.preheader170.new
  br i1 %lcmp.mod.not, label %._crit_edge183, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge183.unr-lcssa, %.preheader170
  %indvars.iv240.epil.init = phi i64 [ 0, %.preheader170 ], [ %indvars.iv.next241.3, %._crit_edge183.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod315)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %indvars.iv240.epil = phi i64 [ %indvars.iv240.epil.init, %.epil.preheader ], [ %indvars.iv.next241.epil, %bb.d ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.bo = load ptr, ptr %i.ba, align 8, !tbaa !12
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %indvars.iv240.epil
  store i8 0, ptr %i.bp, align 1, !tbaa !8
  %indvars.iv.next241.epil = add nuw nsw i64 %indvars.iv240.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge183, label %bb.d, !llvm.loop !234

._crit_edge183:                                   ; preds = %bb.d, %._crit_edge183.unr-lcssa
  %indvars.iv.next246 = add nuw nsw i64 %indvars.iv245, 1 ; 2 uses
  %exitcond249.not = icmp eq i64 %indvars.iv.next246, %wide.trip.count248
  br i1 %exitcond249.not, label %.lr.ph186, label %.preheader170, !llvm.loop !235

bb.e:                                             ; preds = %bb.e, %.lr.ph186.new
  %indvars.iv250 = phi i64 [ 0, %.lr.ph186.new ], [ %indvars.iv.next251.3, %bb.e ] ; 6 uses
  %niter322 = phi i64 [ 0, %.lr.ph186.new ], [ %niter322.next.3, %bb.e ]
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv250
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !12
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %indvars.iv250
  store i8 1, ptr %i.bs, align 1, !tbaa !8
  %indvars.iv.next251 = or disjoint i64 %indvars.iv250, 1 ; 2 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv.next251
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !12
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 %indvars.iv.next251
  store i8 1, ptr %i.bv, align 1, !tbaa !8
  %indvars.iv.next251.1 = or disjoint i64 %indvars.iv250, 2 ; 2 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv.next251.1
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !12
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %indvars.iv.next251.1
  store i8 1, ptr %i.by, align 1, !tbaa !8
  %indvars.iv.next251.2 = or disjoint i64 %indvars.iv250, 3 ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv.next251.2
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !12
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 %indvars.iv.next251.2
  store i8 1, ptr %i.cb, align 1, !tbaa !8
  %indvars.iv.next251.3 = add nuw nsw i64 %indvars.iv250, 4 ; 2 uses
  %niter322.next.3 = add i64 %niter322, 4         ; 2 uses
  %niter322.ncmp.3 = icmp eq i64 %niter322.next.3, %unroll_iter321
  br i1 %niter322.ncmp.3, label %._crit_edge187.unr-lcssa, label %bb.e, !llvm.loop !236

._crit_edge187.unr-lcssa:                         ; preds = %bb.e
  %lcmp.mod319.not = icmp eq i64 %xtraiter317, 0
  br i1 %lcmp.mod319.not, label %._crit_edge187, label %.epil.preheader316

.epil.preheader316:                               ; preds = %._crit_edge187.unr-lcssa, %.lr.ph186
  %indvars.iv250.epil.init = phi i64 [ 0, %.lr.ph186 ], [ %indvars.iv.next251.3, %._crit_edge187.unr-lcssa ]
  %lcmp.mod320 = icmp ne i64 %xtraiter317, 0
  tail call void @llvm.assume(i1 %lcmp.mod320)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader316
  %indvars.iv250.epil = phi i64 [ %indvars.iv250.epil.init, %.epil.preheader316 ], [ %indvars.iv.next251.epil, %bb.f ] ; 3 uses
  %epil.iter318 = phi i64 [ 0, %.epil.preheader316 ], [ %epil.iter318.next, %bb.f ]
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv250.epil
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !12
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 %indvars.iv250.epil
  store i8 1, ptr %i.ce, align 1, !tbaa !8
  %indvars.iv.next251.epil = add nuw nsw i64 %indvars.iv250.epil, 1
  %epil.iter318.next = add i64 %epil.iter318, 1   ; 2 uses
  %epil.iter318.cmp.not = icmp eq i64 %epil.iter318.next, %xtraiter317
  br i1 %epil.iter318.cmp.not, label %._crit_edge187, label %bb.f, !llvm.loop !237

._crit_edge187:                                   ; preds = %bb.f, %._crit_edge187.unr-lcssa
  %i.cf = load ptr, ptr @stderr, align 8, !tbaa !15
  %fputc = tail call i32 @fputc(i32 10, ptr %i.cf) ; 0 uses
  %.not298 = icmp eq i32 %0, 1
  br i1 %.not298, label %._crit_edge225, label %.lr.ph224

.lr.ph224:                                        ; preds = %._crit_edge187
  %wide.trip.count278 = zext nneg i32 %i.as to i64
  %xtraiter324 = and i64 %wide.trip.count230, 3   ; 3 uses
  %i.cg = icmp ult i32 %0, 4
  %unroll_iter329 = and i64 %wide.trip.count230, 2147483644
  %lcmp.mod326.not = icmp eq i64 %xtraiter324, 0
  %lcmp.mod328 = icmp ne i64 %xtraiter324, 0
  %xtraiter332 = and i64 %wide.trip.count230, 3   ; 3 uses
  %i.ch = icmp ult i32 %0, 4
  %unroll_iter337 = and i64 %wide.trip.count230, 2147483644
  %lcmp.mod334.not = icmp eq i64 %xtraiter332, 0
  %lcmp.mod336 = icmp ne i64 %xtraiter332, 0
  %xtraiter340 = and i64 %wide.trip.count230, 1
  %unroll_iter344 = and i64 %wide.trip.count230, 2147483646
  %lcmp.mod342.not = icmp eq i64 %xtraiter340, 0
  %lcmp.mod343 = trunc i32 %0 to i1
  %xtraiter347 = and i64 %wide.trip.count230, 3   ; 3 uses
  %i.ci = icmp ult i32 %0, 4
  %unroll_iter351 = and i64 %wide.trip.count230, 2147483644
  %lcmp.mod349.not = icmp eq i64 %xtraiter347, 0
  %lcmp.mod350 = icmp ne i64 %xtraiter347, 0
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph224, %bb.an
  %indvars.iv275 = phi i64 [ 0, %.lr.ph224 ], [ %indvars.iv.next276, %bb.an ] ; 4 uses
  %.0222 = phi i32 [ -1, %.lr.ph224 ], [ %.1.lcssa, %bb.an ] ; 2 uses
  %.0134221 = phi i32 [ -1, %.lr.ph224 ], [ %.1135.lcssa, %bb.an ] ; 2 uses
  %i.cj = trunc nuw nsw i64 %indvars.iv275 to i32 ; 2 uses
  %i.ck = urem i32 %i.cj, 10
  %i.cl = icmp eq i32 %i.ck, 0
  br i1 %i.cl, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cm = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.cn = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cm, ptr noundef nonnull @.str.24, i32 noundef %i.cj, i32 noundef %0) #31 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.co = load ptr, ptr @fastsupg.ac, align 8, !tbaa !164 ; 7 uses
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !168 ; 2 uses
  %.not162192 = icmp eq i32 %i.cp, -1
  br i1 %.not162192, label %.lr.ph204, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.i
  %i.cq = load ptr, ptr @fastsupg.eff, align 8, !tbaa !226
  br label %.preheader

.loopexit:                                        ; preds = %bb.j
  %i.cr = sext i32 %i.cu to i64                   ; 2 uses
  %i.cs = getelementptr inbounds [8 x i8], ptr %i.co, i64 %i.cr
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !168 ; 2 uses
  %.not162 = icmp eq i32 %i.ct, -1
  br i1 %.not162, label %._crit_edge197.loopexit, label %.preheader, !llvm.loop !238

.preheader:                                       ; preds = %.preheader.lr.ph, %.loopexit
  %i.cu = phi i32 [ %i.cp, %.preheader.lr.ph ], [ %i.ct, %.loopexit ] ; 3 uses
  %i.cv = phi i64 [ 0, %.preheader.lr.ph ], [ %i.cr, %.loopexit ]
  %.1196 = phi i32 [ %.0222, %.preheader.lr.ph ], [ %.3, %.loopexit ]
  %.1135195 = phi i32 [ %.0134221, %.preheader.lr.ph ], [ %.3137, %.loopexit ]
  %.0138194 = phi float [ 9.999000e+03, %.preheader.lr.ph ], [ %.2140, %.loopexit ]
  %.5193 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.cu, %.loopexit ]
  %i.cw = getelementptr inbounds [8 x i8], ptr %i.cq, i64 %i.cv
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !19
  br label %bb.j

bb.j:                                             ; preds = %.preheader, %bb.j
  %.2191 = phi i32 [ %.1196, %.preheader ], [ %.3, %bb.j ]
  %.2136190 = phi i32 [ %.1135195, %.preheader ], [ %.3137, %bb.j ]
  %.1139189 = phi float [ %.0138194, %.preheader ], [ %.2140, %bb.j ] ; 2 uses
  %.2147188 = phi i32 [ %i.cu, %.preheader ], [ %i.dd, %bb.j ] ; 2 uses
  %i.cy = sext i32 %.2147188 to i64               ; 2 uses
  %i.cz = getelementptr inbounds [4 x i8], ptr %i.cx, i64 %i.cy
  %i.da = load float, ptr %i.cz, align 4, !tbaa !21 ; 2 uses
  %i.db = fcmp olt float %i.da, %.1139189         ; 3 uses
  %.2140 = select i1 %i.db, float %i.da, float %.1139189 ; 3 uses
  %.3137 = select i1 %i.db, i32 %.5193, i32 %.2136190 ; 3 uses
  %.3 = select i1 %i.db, i32 %.2147188, i32 %.2191 ; 3 uses
  %i.dc = getelementptr inbounds [8 x i8], ptr %i.co, i64 %i.cy
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !168 ; 2 uses
  %.not166 = icmp eq i32 %i.dd, -1
  br i1 %.not166, label %.loopexit, label %bb.j, !llvm.loop !239

._crit_edge197.loopexit:                          ; preds = %.loopexit
  %i.de = fmul float %.2140, 5.000000e-01
  br label %.lr.ph204

.lr.ph204:                                        ; preds = %bb.i, %._crit_edge197.loopexit
  %.0138.lcssa = phi float [ 4.999500e+03, %bb.i ], [ %i.de, %._crit_edge197.loopexit ] ; 2 uses
  %.1135.lcssa = phi i32 [ %.0134221, %bb.i ], [ %.3137, %._crit_edge197.loopexit ] ; 5 uses
  %.1.lcssa = phi i32 [ %.0222, %bb.i ], [ %.3, %._crit_edge197.loopexit ] ; 5 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv275
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !87 ; 2 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !89 ; 2 uses
  %i.di = load ptr, ptr @fastsupg.pair, align 8, !tbaa !77
  %i.dj = sext i32 %.1135.lcssa to i64
  %i.dk = getelementptr inbounds [8 x i8], ptr %i.di, i64 %i.dj
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !12 ; 5 uses
  br i1 %i.cg, label %.epil.preheader323, label %.lr.ph204.new

.lr.ph204.new:                                    ; preds = %.lr.ph204, %bb.r
  %indvars.iv255 = phi i64 [ %indvars.iv.next256.3, %bb.r ], [ 0, %.lr.ph204 ] ; 6 uses
  %.0149201 = phi ptr [ %.1150.3, %bb.r ], [ %i.dh, %.lr.ph204 ] ; 3 uses
  %niter330 = phi i64 [ %niter330.next.3, %bb.r ], [ 0, %.lr.ph204 ]
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 %indvars.iv255
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !8
  %i.do = icmp sgt i8 %i.dn, 0
  br i1 %i.do, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph204.new
  %i.dp = getelementptr inbounds nuw i8, ptr %.0149201, i64 4
  %i.dq = trunc nuw nsw i64 %indvars.iv255 to i32
  store i32 %i.dq, ptr %.0149201, align 4, !tbaa !4
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph204.new, %bb.k
  %.1150 = phi ptr [ %i.dp, %bb.k ], [ %.0149201, %.lr.ph204.new ] ; 3 uses
  %indvars.iv.next256 = or disjoint i64 %indvars.iv255, 1 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dl, i64 %indvars.iv.next256
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !8
  %i.dt = icmp sgt i8 %i.ds, 0
  br i1 %i.dt, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.du = getelementptr inbounds nuw i8, ptr %.1150, i64 4
  %i.dv = trunc nuw nsw i64 %indvars.iv.next256 to i32
  store i32 %i.dv, ptr %.1150, align 4, !tbaa !4
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.1150.1 = phi ptr [ %i.du, %bb.m ], [ %.1150, %bb.l ] ; 3 uses
  %indvars.iv.next256.1 = or disjoint i64 %indvars.iv255, 2 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dl, i64 %indvars.iv.next256.1
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !8
  %i.dy = icmp sgt i8 %i.dx, 0
  br i1 %i.dy, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.dz = getelementptr inbounds nuw i8, ptr %.1150.1, i64 4
  %i.ea = trunc nuw nsw i64 %indvars.iv.next256.1 to i32
  store i32 %i.ea, ptr %.1150.1, align 4, !tbaa !4
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.1150.2 = phi ptr [ %i.dz, %bb.o ], [ %.1150.1, %bb.n ] ; 3 uses
  %indvars.iv.next256.2 = or disjoint i64 %indvars.iv255, 3 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dl, i64 %indvars.iv.next256.2
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !8
  %i.ed = icmp sgt i8 %i.ec, 0
  br i1 %i.ed, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ee = getelementptr inbounds nuw i8, ptr %.1150.2, i64 4
  %i.ef = trunc nuw nsw i64 %indvars.iv.next256.2 to i32
  store i32 %i.ef, ptr %.1150.2, align 4, !tbaa !4
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.1150.3 = phi ptr [ %i.ee, %bb.q ], [ %.1150.2, %bb.p ] ; 3 uses
  %indvars.iv.next256.3 = add nuw nsw i64 %indvars.iv255, 4 ; 2 uses
  %niter330.next.3 = add i64 %niter330, 4         ; 2 uses
  %niter330.ncmp.3 = icmp eq i64 %niter330.next.3, %unroll_iter329
  br i1 %niter330.ncmp.3, label %.lr.ph210.unr-lcssa, label %.lr.ph204.new, !llvm.loop !240

.lr.ph210.unr-lcssa:                              ; preds = %bb.r
  br i1 %lcmp.mod326.not, label %.lr.ph210, label %.epil.preheader323

.epil.preheader323:                               ; preds = %.lr.ph210.unr-lcssa, %.lr.ph204
  %indvars.iv255.epil.init = phi i64 [ 0, %.lr.ph204 ], [ %indvars.iv.next256.3, %.lr.ph210.unr-lcssa ]
  %.0149201.epil.init = phi ptr [ %i.dh, %.lr.ph204 ], [ %.1150.3, %.lr.ph210.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod328)
  br label %bb.s

bb.s:                                             ; preds = %bb.u, %.epil.preheader323
  %indvars.iv255.epil = phi i64 [ %indvars.iv255.epil.init, %.epil.preheader323 ], [ %indvars.iv.next256.epil, %bb.u ] ; 3 uses
  %.0149201.epil = phi ptr [ %.0149201.epil.init, %.epil.preheader323 ], [ %.1150.epil, %bb.u ] ; 3 uses
  %epil.iter325 = phi i64 [ 0, %.epil.preheader323 ], [ %epil.iter325.next, %bb.u ]
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dl, i64 %indvars.iv255.epil
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !8
  %i.ei = icmp sgt i8 %i.eh, 0
  br i1 %i.ei, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ej = getelementptr inbounds nuw i8, ptr %.0149201.epil, i64 4
  %i.ek = trunc nuw nsw i64 %indvars.iv255.epil to i32
  store i32 %i.ek, ptr %.0149201.epil, align 4, !tbaa !4
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.1150.epil = phi ptr [ %i.ej, %bb.t ], [ %.0149201.epil, %bb.s ] ; 2 uses
  %indvars.iv.next256.epil = add nuw nsw i64 %indvars.iv255.epil, 1
  %epil.iter325.next = add i64 %epil.iter325, 1   ; 2 uses
  %epil.iter325.cmp.not = icmp eq i64 %epil.iter325.next, %xtraiter324
  br i1 %epil.iter325.cmp.not, label %.lr.ph210, label %bb.s, !llvm.loop !241

.lr.ph210:                                        ; preds = %bb.u, %.lr.ph210.unr-lcssa
  %.1150.lcssa = phi ptr [ %.1150.3, %.lr.ph210.unr-lcssa ], [ %.1150.epil, %bb.u ]
  store i32 -1, ptr %.1150.lcssa, align 4, !tbaa !4
  %i.el = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !89 ; 2 uses
  %i.en = load ptr, ptr @fastsupg.pair, align 8, !tbaa !77
  %i.eo = sext i32 %.1.lcssa to i64               ; 6 uses
  %i.ep = getelementptr inbounds [8 x i8], ptr %i.en, i64 %i.eo
end_hunk_11
begin_hunk_12_@countnode:bb.a
bb.a:
  %i.a = add i32 %0, -2
  %i.b = icmp slt i32 %0, 2
  br i1 %i.b, label %bb.b, label %.preheader89.preheader

.preheader89.preheader:                           ; preds = %bb.a
  %i.c = zext nneg i32 %0 to i64
  %i.d = shl nuw nsw i64 %i.c, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 16 @countnode.rootnode, i8 0, i64 %i.d, i1 false), !tbaa !24
  %.not = icmp eq i32 %0, 2
  br i1 %.not, label %.preheader83, label %.preheader87.preheader

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.f = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.e, ptr noundef nonnull @.str.27, i32 noundef %0) #31 ; 0 uses
  tail call void @exit(i32 noundef 1) #32
  unreachable

.preheader87.preheader:                           ; preds = %.preheader89.preheader
  %wide.trip.count = zext nneg i32 %i.a to i64    ; 2 uses
  br label %.preheader87

.preheader87:                                     ; preds = %.preheader87.preheader, %._crit_edge101
  %indvars.iv124 = phi i64 [ 0, %.preheader87.preheader ], [ %indvars.iv.next125, %._crit_edge101 ] ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv124
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !87   ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !89   ; 3 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !4    ; 3 uses
  %i.k = icmp sgt i32 %i.j, -1                    ; 2 uses
  br i1 %i.k, label %.lr.ph, label %.preheader86.thread

.preheader83:                                     ; preds = %._crit_edge101, %.preheader89.preheader
  %.pre-phi = phi i64 [ 0, %.preheader89.preheader ], [ %wide.trip.count, %._crit_edge101 ]
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.pre-phi
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !87   ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !89   ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !4    ; 2 uses
  %i.p = icmp sgt i32 %i.o, -1
  br i1 %i.p, label %.preheader.lr.ph, label %._crit_edge106

.preheader.lr.ph:                                 ; preds = %.preheader83
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !89   ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !4    ; 2 uses
  %i.t = icmp sgt i32 %i.s, -1
  br i1 %i.t, label %.preheader.us, label %._crit_edge106

.preheader.us:                                    ; preds = %.preheader.lr.ph, %._crit_edge.us107
  %indvars.iv133 = phi i64 [ %indvars.iv.next134, %._crit_edge.us107 ], [ 0, %.preheader.lr.ph ]
  %i.u = phi i32 [ %i.ao, %._crit_edge.us107 ], [ %i.o, %.preheader.lr.ph ] ; 3 uses
  %i.v = zext nneg i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [8 x i8], ptr @countnode.rootnode, i64 %i.v
  %i.x = load double, ptr %i.w, align 8, !tbaa !24
  br label %bb.c

bb.c:                                             ; preds = %.preheader.us, %bb.c
  %indvars.iv130 = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next131, %bb.c ]
  %i.y = phi i32 [ %i.s, %.preheader.us ], [ %i.al, %bb.c ] ; 3 uses
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr @countnode.rootnode, i64 %i.z
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !24
  %i.ac = fadd double %i.x, %i.ab
  %i.ad = tail call i32 @llvm.smin.i32(i32 %i.u, i32 %i.y)
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ae
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !52
  %i.ah = tail call i32 @llvm.smax.i32(i32 %i.u, i32 %i.y)
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ai
  store double %i.ac, ptr %i.aj, align 8, !tbaa !24
  %indvars.iv.next131 = add nuw nsw i64 %indvars.iv130, 1 ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv.next131
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !4  ; 2 uses
  %i.am = icmp sgt i32 %i.al, -1
  br i1 %i.am, label %bb.c, label %._crit_edge.us107, !llvm.loop !287

._crit_edge.us107:                                ; preds = %bb.c
  %indvars.iv.next134 = add nuw nsw i64 %indvars.iv133, 1 ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.next134
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !4  ; 2 uses
  %i.ap = icmp sgt i32 %i.ao, -1
  br i1 %i.ap, label %.preheader.us, label %._crit_edge106, !llvm.loop !288

.preheader86:                                     ; preds = %.lr.ph
  %i.aq = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !89 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !4  ; 2 uses
  %i.at = icmp sgt i32 %i.as, -1
  br i1 %i.at, label %.lr.ph96.preheader, label %._crit_edge101

.preheader86.thread:                              ; preds = %.preheader87
  %i.au = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !89 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !4  ; 2 uses
  %i.ax = icmp sgt i32 %i.aw, -1
  br i1 %i.ax, label %.lr.ph96.preheader, label %._crit_edge101

.lr.ph96.preheader:                               ; preds = %.preheader86.thread, %.preheader86
  %i.ay = phi i32 [ %i.aw, %.preheader86.thread ], [ %i.as, %.preheader86 ] ; 2 uses
  %i.az = phi ptr [ %i.av, %.preheader86.thread ], [ %i.ar, %.preheader86 ] ; 2 uses
  br label %.lr.ph96

.lr.ph:                                           ; preds = %.preheader87, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.preheader87 ]
  %i.ba = phi i32 [ %i.bg, %.lr.ph ], [ %i.j, %.preheader87 ]
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr @countnode.rootnode, i64 %i.bb ; 2 uses
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !24
  %i.be = fadd double %i.bd, 1.000000e+00
  store double %i.be, ptr %i.bc, align 8, !tbaa !24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.next
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !4  ; 2 uses
  %i.bh = icmp sgt i32 %i.bg, -1
  br i1 %i.bh, label %.lr.ph, label %.preheader86, !llvm.loop !289

.preheader85:                                     ; preds = %.lr.ph96
  br i1 %i.k, label %.preheader84.us, label %._crit_edge101

.preheader84.us:                                  ; preds = %.preheader85, %._crit_edge.us
  %indvars.iv121 = phi i64 [ %indvars.iv.next122, %._crit_edge.us ], [ 0, %.preheader85 ]
  %i.bi = phi i32 [ %i.cd, %._crit_edge.us ], [ %i.j, %.preheader85 ] ; 3 uses
  %i.bj = zext nneg i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr @countnode.rootnode, i64 %i.bj
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !24
  br label %bb.d

bb.d:                                             ; preds = %.preheader84.us, %bb.d
  %indvars.iv118 = phi i64 [ 0, %.preheader84.us ], [ %indvars.iv.next119, %bb.d ]
  %i.bm = phi i32 [ %i.ay, %.preheader84.us ], [ %i.ca, %bb.d ] ; 3 uses
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr @countnode.rootnode, i64 %i.bn
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !24
  %i.bq = fadd double %i.bl, %i.bp
  %i.br = fadd double %i.bq, -1.000000e+00
  %i.bs = tail call i32 @llvm.smin.i32(i32 %i.bi, i32 %i.bm)
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.bt
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !52
  %i.bw = tail call i32 @llvm.smax.i32(i32 %i.bi, i32 %i.bm)
  %i.bx = zext nneg i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.bx
  store double %i.br, ptr %i.by, align 8, !tbaa !24
  %indvars.iv.next119 = add nuw nsw i64 %indvars.iv118, 1 ; 2 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.next119
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !4  ; 2 uses
  %i.cb = icmp sgt i32 %i.ca, -1
  br i1 %i.cb, label %bb.d, label %._crit_edge.us, !llvm.loop !290

._crit_edge.us:                                   ; preds = %bb.d
  %indvars.iv.next122 = add nuw nsw i64 %indvars.iv121, 1 ; 2 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.next122
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !4  ; 2 uses
  %i.ce = icmp sgt i32 %i.cd, -1
  br i1 %i.ce, label %.preheader84.us, label %._crit_edge101, !llvm.loop !291

.lr.ph96:                                         ; preds = %.lr.ph96.preheader, %.lr.ph96
  %indvars.iv112 = phi i64 [ 0, %.lr.ph96.preheader ], [ %indvars.iv.next113, %.lr.ph96 ]
  %i.cf = phi i32 [ %i.ay, %.lr.ph96.preheader ], [ %i.cl, %.lr.ph96 ]
  %i.cg = zext nneg i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr @countnode.rootnode, i64 %i.cg ; 2 uses
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !24
  %i.cj = fadd double %i.ci, 1.000000e+00
  store double %i.cj, ptr %i.ch, align 8, !tbaa !24
  %indvars.iv.next113 = add nuw nsw i64 %indvars.iv112, 1 ; 2 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.next113
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !4  ; 2 uses
  %i.cm = icmp sgt i32 %i.cl, -1
  br i1 %i.cm, label %.lr.ph96, label %.preheader85, !llvm.loop !292

._crit_edge101:                                   ; preds = %._crit_edge.us, %.preheader86, %.preheader86.thread, %.preheader85
  %indvars.iv.next125 = add nuw nsw i64 %indvars.iv124, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next125, %wide.trip.count
  br i1 %exitcond.not, label %.preheader83, label %.preheader87, !llvm.loop !293

._crit_edge106:                                   ; preds = %._crit_edge.us107, %.preheader.lr.ph, %.preheader83
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @countnode_int(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [50000 x i32], align 16           ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  %i.b = icmp sgt i32 %0, 0
  br i1 %i.b, label %.preheader102, label %.preheader102.thread

.preheader102.thread:                             ; preds = %bb.a
  %i.c = add i32 %0, -2
  br label %.preheader97

.preheader102:                                    ; preds = %bb.a
  %i.d = zext nneg i32 %0 to i64
  %i.e = shl nuw nsw i64 %i.d, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.a, i8 0, i64 %i.e, i1 false), !tbaa !4
  %i.f = add nsw i32 %0, -2                       ; 3 uses
  %i.g = icmp samesign ugt i32 %0, 2
  br i1 %i.g, label %.preheader101.preheader, label %.preheader97

.preheader101.preheader:                          ; preds = %.preheader102
  %wide.trip.count = zext nneg i32 %i.f to i64
  br label %.preheader101

.preheader101:                                    ; preds = %.preheader101.preheader, %._crit_edge116
  %indvars.iv144 = phi i64 [ 0, %.preheader101.preheader ], [ %indvars.iv.next145, %._crit_edge116 ] ; 2 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv144
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !87   ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !89   ; 3 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !4    ; 3 uses
  %i.l = icmp sgt i32 %i.k, -1                    ; 2 uses
  br i1 %i.l, label %.lr.ph108, label %.preheader100.thread

.preheader97:                                     ; preds = %._crit_edge116, %.preheader102.thread, %.preheader102
  %i.m = phi i32 [ %i.c, %.preheader102.thread ], [ %i.f, %.preheader102 ], [ %i.f, %._crit_edge116 ]
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds [8 x i8], ptr %1, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !87   ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !89   ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !4    ; 2 uses
  %i.s = icmp sgt i32 %i.r, -1
  br i1 %i.s, label %.preheader96.lr.ph, label %.preheader

.preheader96.lr.ph:                               ; preds = %.preheader97
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !89   ; 3 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !4    ; 2 uses
  %i.w = icmp sgt i32 %i.v, -1
  br i1 %i.w, label %.preheader96, label %.preheader

.preheader100:                                    ; preds = %.lr.ph108
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !89   ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !4    ; 2 uses
  %i.aa = icmp sgt i32 %i.z, -1
  br i1 %i.aa, label %.lr.ph111.preheader, label %._crit_edge116

.preheader100.thread:                             ; preds = %.preheader101
  %i.ab = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !89 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !4  ; 2 uses
  %i.ae = icmp sgt i32 %i.ad, -1
  br i1 %i.ae, label %.lr.ph111.preheader, label %._crit_edge116

.lr.ph111.preheader:                              ; preds = %.preheader100.thread, %.preheader100
  %i.af = phi i32 [ %i.ad, %.preheader100.thread ], [ %i.z, %.preheader100 ]
  %i.ag = phi ptr [ %i.ac, %.preheader100.thread ], [ %i.y, %.preheader100 ] ; 3 uses
  br label %.lr.ph111

.lr.ph108:                                        ; preds = %.preheader101, %.lr.ph108
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph108 ], [ 0, %.preheader101 ]
  %i.ah = phi i32 [ %i.an, %.lr.ph108 ], [ %i.k, %.preheader101 ]
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ai ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !4
  %i.al = add nsw i32 %i.ak, 1
  store i32 %i.al, ptr %i.aj, align 4, !tbaa !4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next
  %i.an = load i32, ptr %i.am, align 4, !tbaa !4  ; 2 uses
  %i.ao = icmp sgt i32 %i.an, -1
  br i1 %i.ao, label %.lr.ph108, label %.preheader100, !llvm.loop !294

.preheader99:                                     ; preds = %.lr.ph111
  br i1 %i.l, label %.preheader98, label %._crit_edge116

.lr.ph111:                                        ; preds = %.lr.ph111.preheader, %.lr.ph111
  %indvars.iv132 = phi i64 [ 0, %.lr.ph111.preheader ], [ %indvars.iv.next133, %.lr.ph111 ]
  %i.ap = phi i32 [ %i.af, %.lr.ph111.preheader ], [ %i.av, %.lr.ph111 ]
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.aq ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !4
  %i.at = add nsw i32 %i.as, 1
  store i32 %i.at, ptr %i.ar, align 4, !tbaa !4
  %indvars.iv.next133 = add nuw nsw i64 %indvars.iv132, 1 ; 2 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv.next133
  %i.av = load i32, ptr %i.au, align 4, !tbaa !4  ; 2 uses
  %i.aw = icmp sgt i32 %i.av, -1
  br i1 %i.aw, label %.lr.ph111, label %.preheader99, !llvm.loop !295

.preheader98:                                     ; preds = %.preheader99, %._crit_edge
  %indvars.iv141 = phi i64 [ %indvars.iv.next142, %._crit_edge ], [ 0, %.preheader99 ]
  %i.ax = phi i32 [ %i.bu, %._crit_edge ], [ %i.k, %.preheader99 ] ; 3 uses
  %i.ay = load i32, ptr %i.ag, align 4, !tbaa !4  ; 2 uses
  %i.az = icmp sgt i32 %i.ay, -1
  br i1 %i.az, label %.lr.ph114, label %._crit_edge

.lr.ph114:                                        ; preds = %.preheader98
  %i.ba = zext nneg i32 %i.ax to i64
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !4
  %i.bd = add i32 %i.bc, -1
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph114, %bb.b
  %indvars.iv138 = phi i64 [ 0, %.lr.ph114 ], [ %indvars.iv.next139, %bb.b ]
  %i.be = phi i32 [ %i.ay, %.lr.ph114 ], [ %i.br, %bb.b ] ; 3 uses
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bf
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !4
  %i.bi = add i32 %i.bd, %i.bh
  %i.bj = tail call i32 @llvm.umin.i32(i32 %i.ax, i32 %i.be)
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.bk
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !89
  %i.bn = tail call i32 @llvm.umax.i32(i32 %i.ax, i32 %i.be)
  %i.bo = zext nneg i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.bo
  store i32 %i.bi, ptr %i.bp, align 4, !tbaa !4
  %indvars.iv.next139 = add nuw nsw i64 %indvars.iv138, 1 ; 2 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv.next139
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !4  ; 2 uses
  %i.bs = icmp sgt i32 %i.br, -1
  br i1 %i.bs, label %bb.b, label %._crit_edge, !llvm.loop !296

._crit_edge:                                      ; preds = %bb.b, %.preheader98
  %indvars.iv.next142 = add nuw nsw i64 %indvars.iv141, 1 ; 2 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next142
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !4  ; 2 uses
  %i.bv = icmp sgt i32 %i.bu, -1
  br i1 %i.bv, label %.preheader98, label %._crit_edge116, !llvm.loop !297

._crit_edge116:                                   ; preds = %._crit_edge, %.preheader100, %.preheader100.thread, %.preheader99
  %indvars.iv.next145 = add nuw nsw i64 %indvars.iv144, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next145, %wide.trip.count
  br i1 %exitcond.not, label %.preheader97, label %.preheader101, !llvm.loop !299

.preheader96thread-pre-split:                     ; preds = %._crit_edge120
  %.pr = load i32, ptr %i.u, align 4, !tbaa !4
  br label %.preheader96

.preheader96:                                     ; preds = %.preheader96.lr.ph, %.preheader96thread-pre-split
  %i.bw = phi i32 [ %.pr, %.preheader96thread-pre-split ], [ %i.v, %.preheader96.lr.ph ] ; 2 uses
  %indvars.iv153 = phi i64 [ %indvars.iv.next154, %.preheader96thread-pre-split ], [ 0, %.preheader96.lr.ph ]
  %i.bx = phi i32 [ %i.cv, %.preheader96thread-pre-split ], [ %i.r, %.preheader96.lr.ph ] ; 3 uses
  %i.by = icmp sgt i32 %i.bw, -1
  br i1 %i.by, label %.lr.ph119, label %._crit_edge120

.lr.ph119:                                        ; preds = %.preheader96
  %i.bz = zext nneg i32 %i.bx to i64
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bz
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !4
  br label %bb.c

.preheader:                                       ; preds = %._crit_edge120, %.preheader96.lr.ph, %.preheader97
  %i.cc = icmp sgt i32 %0, 1
  br i1 %i.cc, label %.lr.ph126.preheader, label %._crit_edge127

.lr.ph126.preheader:                              ; preds = %.preheader
  %i.cd = add nsw i32 %0, -1
  %wide.trip.count166 = zext nneg i32 %i.cd to i64
  %wide.trip.count161 = zext nneg i32 %0 to i64   ; 3 uses
  %i.ce = add nsw i64 %wide.trip.count161, -2
  br label %.lr.ph124

bb.c:                                             ; preds = %.lr.ph119, %bb.c
  %indvars.iv150 = phi i64 [ 0, %.lr.ph119 ], [ %indvars.iv.next151, %bb.c ]
  %i.cf = phi i32 [ %i.bw, %.lr.ph119 ], [ %i.cs, %bb.c ] ; 3 uses
  %i.cg = zext nneg i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.cg
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !4
  %i.cj = add nsw i32 %i.ci, %i.cb
  %i.ck = tail call i32 @llvm.umin.i32(i32 %i.bx, i32 %i.cf)
  %i.cl = zext nneg i32 %i.ck to i64
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.cl
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !89
  %i.co = tail call i32 @llvm.umax.i32(i32 %i.bx, i32 %i.cf)
  %i.cp = zext nneg i32 %i.co to i64
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %i.cp
  store i32 %i.cj, ptr %i.cq, align 4, !tbaa !4
  %indvars.iv.next151 = add nuw nsw i64 %indvars.iv150, 1 ; 2 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.next151
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !4  ; 2 uses
  %i.ct = icmp sgt i32 %i.cs, -1
  br i1 %i.ct, label %bb.c, label %._crit_edge120, !llvm.loop !300

._crit_edge120:                                   ; preds = %bb.c, %.preheader96
  %indvars.iv.next154 = add nuw nsw i64 %indvars.iv153, 1 ; 2 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.next154
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !4  ; 2 uses
  %i.cw = icmp sgt i32 %i.cv, -1
  br i1 %i.cw, label %.preheader96thread-pre-split, label %.preheader, !llvm.loop !301

.loopexit:                                        ; preds = %.lr.ph124.new, %.prol.loopexit
  %indvars.iv.next157 = add nuw nsw i64 %indvars.iv156, 1
  %exitcond167.not = icmp eq i64 %indvars.iv.next164, %wide.trip.count166
  br i1 %exitcond167.not, label %._crit_edge127, label %.lr.ph124, !llvm.loop !302

.lr.ph124:                                        ; preds = %.loopexit, %.lr.ph126.preheader
  %indvars.iv163 = phi i64 [ 0, %.lr.ph126.preheader ], [ %indvars.iv.next164, %.loopexit ] ; 9 uses
  %indvars.iv156 = phi i64 [ 1, %.lr.ph126.preheader ], [ %indvars.iv.next157, %.loopexit ] ; 3 uses
  %i.cx = xor i64 %indvars.iv163, -1
  %i.cy = add nsw i64 %i.cx, %wide.trip.count161
  %i.cz = sub i64 %i.ce, %indvars.iv163
  %indvars.iv.next164 = add nuw nsw i64 %indvars.iv163, 1 ; 2 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv163
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !89 ; 5 uses
  %xtraiter = and i64 %i.cy, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph124, %.prol.preheader
  %indvars.iv158.prol = phi i64 [ %indvars.iv.next159.prol, %.prol.preheader ], [ %indvars.iv156, %.lr.ph124 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph124 ]
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %indvars.iv158.prol
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !4
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv158.prol
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !89
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %indvars.iv163
  store i32 %i.dd, ptr %i.dg, align 4, !tbaa !4
  %indvars.iv.next159.prol = add nuw nsw i64 %indvars.iv158.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !303

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph124
  %indvars.iv158.unr = phi i64 [ %indvars.iv156, %.lr.ph124 ], [ %indvars.iv.next159.prol, %.prol.preheader ]
  %i.dh = icmp ult i64 %i.cz, 3
  br i1 %i.dh, label %.loopexit, label %.lr.ph124.new

.lr.ph124.new:                                    ; preds = %.prol.loopexit, %.lr.ph124.new
  %indvars.iv158 = phi i64 [ %indvars.iv.next159.3, %.lr.ph124.new ], [ %indvars.iv158.unr, %.prol.loopexit ] ; 6 uses
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %indvars.iv158
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !4
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv158
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !89
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %indvars.iv163
  store i32 %i.dj, ptr %i.dm, align 4, !tbaa !4
  %indvars.iv.next159 = add nuw nsw i64 %indvars.iv158, 1 ; 2 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %indvars.iv.next159
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !4
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next159
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !89
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %indvars.iv163
  store i32 %i.do, ptr %i.dr, align 4, !tbaa !4
  %indvars.iv.next159.1 = add nuw nsw i64 %indvars.iv158, 2 ; 2 uses
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %indvars.iv.next159.1
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !4
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next159.1
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !89
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %indvars.iv163
  store i32 %i.dt, ptr %i.dw, align 4, !tbaa !4
  %indvars.iv.next159.2 = add nuw nsw i64 %indvars.iv158, 3 ; 2 uses
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %indvars.iv.next159.2
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !4
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next159.2
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !89
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %indvars.iv163
  store i32 %i.dy, ptr %i.eb, align 4, !tbaa !4
  %indvars.iv.next159.3 = add nuw nsw i64 %indvars.iv158, 4 ; 2 uses
  %exitcond162.not.3 = icmp eq i64 %indvars.iv.next159.3, %wide.trip.count161
  br i1 %exitcond162.not.3, label %.loopexit, label %.lr.ph124.new, !llvm.loop !304

._crit_edge127:                                   ; preds = %.loopexit, %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @counteff_simple_float(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp sgt i32 %0, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge67

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64                  ; 10 uses
  %i.c = shl nuw nsw i64 %i.b, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 16 @counteff_simple_float.rootnode, i8 0, i64 %i.c, i1 false), !tbaa !24
  %min.iters.check = icmp ult i32 %0, 4
  br i1 %min.iters.check, label %.lr.ph.preheader126, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.b, 2147483644               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr @counteff_simple_float.eff, i64 %index ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store <2 x double> splat (double 1.000000e+00), ptr %i.d, align 16, !tbaa !24
  store <2 x double> splat (double 1.000000e+00), ptr %i.e, align 16, !tbaa !24
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.f = icmp eq i64 %index.next, %n.vec
  br i1 %i.f, label %middle.block, label %vector.body, !llvm.loop !305

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.b
  br i1 %cmp.n, label %.preheader51, label %.lr.ph.preheader126

.lr.ph.preheader126:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.preheader51:                                     ; preds = %.lr.ph, %middle.block
  %.not = icmp eq i32 %0, 1
  br i1 %.not, label %.lr.ph61.preheader, label %.preheader50.preheader

.preheader50.preheader:                           ; preds = %.preheader51
  %i.g = add nsw i32 %0, -1
  %wide.trip.count78 = zext nneg i32 %i.g to i64
  br label %.preheader50

.lr.ph:                                           ; preds = %.lr.ph.preheader126, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader126 ] ; 2 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr @counteff_simple_float.eff, i64 %indvars.iv
  store double 1.000000e+00, ptr %i.h, align 8, !tbaa !24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.b
  br i1 %exitcond.not, label %.preheader51, label %.lr.ph, !llvm.loop !306

.preheader50:                                     ; preds = %.preheader50.preheader, %._crit_edge
  %indvars.iv75 = phi i64 [ 0, %.preheader50.preheader ], [ %indvars.iv.next76, %._crit_edge ] ; 4 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv75
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !87   ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !89   ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !4    ; 2 uses
  %i.m = icmp sgt i32 %i.l, -1
  br i1 %i.m, label %.lr.ph55, label %.preheader49

.lr.ph55:                                         ; preds = %.preheader50
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv75
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !19
  %i.p = load float, ptr %i.o, align 4, !tbaa !21
  %i.q = fpext float %i.p to double
  br label %bb.b

.lr.ph61.preheader:                               ; preds = %._crit_edge, %.preheader51
  %wide.trip.count83 = zext nneg i32 %0 to i64
  %min.iters.check101 = icmp ult i32 %0, 4
  br i1 %min.iters.check101, label %.lr.ph61.preheader125, label %vector.ph102

vector.ph102:                                     ; preds = %.lr.ph61.preheader
  %n.vec104 = and i64 %i.b, 2147483644            ; 3 uses
  br label %vector.body105

vector.body105:                                   ; preds = %vector.body105, %vector.ph102
  %index106 = phi i64 [ 0, %vector.ph102 ], [ %index.next108, %vector.body105 ] ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr @counteff_simple_float.rootnode, i64 %index106 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  %wide.load = load <2 x double>, ptr %i.r, align 16, !tbaa !24
  %wide.load107 = load <2 x double>, ptr %i.s, align 16, !tbaa !24
  %i.t = fadd <2 x double> %wide.load, splat (double 1.000000e-03)
  %i.u = fadd <2 x double> %wide.load107, splat (double 1.000000e-03)
  store <2 x double> %i.t, ptr %i.r, align 16, !tbaa !24
  store <2 x double> %i.u, ptr %i.s, align 16, !tbaa !24
  %index.next108 = add nuw i64 %index106, 4       ; 2 uses
  %i.v = icmp eq i64 %index.next108, %n.vec104
  br i1 %i.v, label %middle.block109, label %vector.body105, !llvm.loop !307

middle.block109:                                  ; preds = %vector.body105
  %cmp.n110 = icmp eq i64 %n.vec104, %i.b
  br i1 %cmp.n110, label %.lr.ph64.preheader, label %.lr.ph61.preheader125

.lr.ph61.preheader125:                            ; preds = %.lr.ph61.preheader, %middle.block109
  %indvars.iv80.ph = phi i64 [ 0, %.lr.ph61.preheader ], [ %n.vec104, %middle.block109 ]
  br label %.lr.ph61

.preheader49:                                     ; preds = %bb.b, %.preheader50
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !89   ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !4    ; 2 uses
  %i.z = icmp sgt i32 %i.y, -1
  br i1 %i.z, label %.lr.ph58, label %._crit_edge

.lr.ph58:                                         ; preds = %.preheader49
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv75
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !19
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !21
  %i.ae = fpext float %i.ad to double
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph55, %bb.b
  %indvars.iv69 = phi i64 [ 0, %.lr.ph55 ], [ %indvars.iv.next70, %bb.b ]
  %i.af = phi i32 [ %i.l, %.lr.ph55 ], [ %i.ao, %bb.b ]
  %i.ag = zext nneg i32 %i.af to i64              ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr @counteff_simple_float.eff, i64 %i.ag ; 2 uses
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !24 ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr @counteff_simple_float.rootnode, i64 %i.ag ; 2 uses
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !24
  %i.al = tail call double @llvm.fmuladd.f64(double %i.q, double %i.ai, double %i.ak)
  store double %i.al, ptr %i.aj, align 8, !tbaa !24
  %i.am = fmul double %i.ai, 5.000000e-01
  store double %i.am, ptr %i.ah, align 8, !tbaa !24
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 1 ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.next70
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !4  ; 2 uses
  %i.ap = icmp sgt i32 %i.ao, -1
  br i1 %i.ap, label %bb.b, label %.preheader49, !llvm.loop !308

bb.c:                                             ; preds = %.lr.ph58, %bb.c
  %indvars.iv72 = phi i64 [ 0, %.lr.ph58 ], [ %indvars.iv.next73, %bb.c ]
  %i.aq = phi i32 [ %i.y, %.lr.ph58 ], [ %i.az, %bb.c ]
  %i.ar = zext nneg i32 %i.aq to i64              ; 2 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr @counteff_simple_float.eff, i64 %i.ar ; 2 uses
  %i.at = load double, ptr %i.as, align 8, !tbaa !24 ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr @counteff_simple_float.rootnode, i64 %i.ar ; 2 uses
  %i.av = load double, ptr %i.au, align 8, !tbaa !24
  %i.aw = tail call double @llvm.fmuladd.f64(double %i.ae, double %i.at, double %i.av)
  store double %i.aw, ptr %i.au, align 8, !tbaa !24
  %i.ax = fmul double %i.at, 5.000000e-01
  store double %i.ax, ptr %i.as, align 8, !tbaa !24
  %indvars.iv.next73 = add nuw nsw i64 %indvars.iv72, 1 ; 2 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv.next73
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !4  ; 2 uses
  %i.ba = icmp sgt i32 %i.az, -1
  br i1 %i.ba, label %bb.c, label %._crit_edge, !llvm.loop !309

._crit_edge:                                      ; preds = %bb.c, %.preheader49
  %indvars.iv.next76 = add nuw nsw i64 %indvars.iv75, 1 ; 2 uses
  %exitcond79.not = icmp eq i64 %indvars.iv.next76, %wide.trip.count78
  br i1 %exitcond79.not, label %.lr.ph61.preheader, label %.preheader50, !llvm.loop !310

.lr.ph64.preheader:                               ; preds = %.lr.ph61, %middle.block109
  %xtraiter = and i64 %i.b, 7                     ; 3 uses
  %i.bb = icmp ult i32 %0, 8
  br i1 %i.bb, label %.lr.ph64.epil.preheader, label %.lr.ph64.preheader.new

.lr.ph64.preheader.new:                           ; preds = %.lr.ph64.preheader
  %unroll_iter = and i64 %i.b, 2147483640
  br label %.lr.ph64

.lr.ph61:                                         ; preds = %.lr.ph61.preheader125, %.lr.ph61
  %indvars.iv80 = phi i64 [ %indvars.iv.next81, %.lr.ph61 ], [ %indvars.iv80.ph, %.lr.ph61.preheader125 ] ; 2 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr @counteff_simple_float.rootnode, i64 %indvars.iv80 ; 2 uses
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !24
  %i.be = fadd double %i.bd, 1.000000e-03
  store double %i.be, ptr %i.bc, align 8, !tbaa !24
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, 1 ; 2 uses
  %exitcond84.not = icmp eq i64 %indvars.iv.next81, %wide.trip.count83
  br i1 %exitcond84.not, label %.lr.ph64.preheader, label %.lr.ph61, !llvm.loop !311

.lr.ph66.preheader.unr-lcssa:                     ; preds = %.lr.ph64
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph66.preheader, label %.lr.ph64.epil.preheader

.lr.ph64.epil.preheader:                          ; preds = %.lr.ph66.preheader.unr-lcssa, %.lr.ph64.preheader
  %indvars.iv85.epil.init = phi i64 [ 0, %.lr.ph64.preheader ], [ %indvars.iv.next86.7, %.lr.ph66.preheader.unr-lcssa ]
  %.063.epil.init = phi double [ 0.000000e+00, %.lr.ph64.preheader ], [ %i.cq, %.lr.ph66.preheader.unr-lcssa ]
  %lcmp.mod128 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod128)
  br label %.lr.ph64.epil

.lr.ph64.epil:                                    ; preds = %.lr.ph64.epil, %.lr.ph64.epil.preheader
  %indvars.iv85.epil = phi i64 [ %indvars.iv85.epil.init, %.lr.ph64.epil.preheader ], [ %indvars.iv.next86.epil, %.lr.ph64.epil ] ; 2 uses
  %.063.epil = phi double [ %.063.epil.init, %.lr.ph64.epil.preheader ], [ %i.bh, %.lr.ph64.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph64.epil.preheader ], [ %epil.iter.next, %.lr.ph64.epil ]
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr @counteff_simple_float.rootnode, i64 %indvars.iv85.epil
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !24
  %i.bh = fadd double %.063.epil, %i.bg           ; 2 uses
  %indvars.iv.next86.epil = add nuw nsw i64 %indvars.iv85.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph66.preheader, label %.lr.ph64.epil, !llvm.loop !312

.lr.ph66.preheader:                               ; preds = %.lr.ph64.epil, %.lr.ph66.preheader.unr-lcssa
  %.lcssa = phi double [ %i.cq, %.lr.ph66.preheader.unr-lcssa ], [ %i.bh, %.lr.ph64.epil ] ; 2 uses
  %wide.trip.count93 = zext nneg i32 %0 to i64
  %min.iters.check113 = icmp eq i32 %0, 1
  br i1 %min.iters.check113, label %.lr.ph66.preheader124, label %vector.ph114

vector.ph114:                                     ; preds = %.lr.ph66.preheader
  %n.vec116 = and i64 %i.b, 2147483646            ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %.lcssa, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body117

vector.body117:                                   ; preds = %vector.body117, %vector.ph114
  %index118 = phi i64 [ 0, %vector.ph114 ], [ %index.next120, %vector.body117 ] ; 3 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr @counteff_simple_float.rootnode, i64 %index118
  %wide.load119 = load <2 x double>, ptr %i.bi, align 16, !tbaa !24
  %i.bj = fdiv <2 x double> %wide.load119, %broadcast.splat
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index118
  store <2 x double> %i.bj, ptr %i.bk, align 8, !tbaa !24
  %index.next120 = add nuw i64 %index118, 2       ; 2 uses
  %i.bl = icmp eq i64 %index.next120, %n.vec116
  br i1 %i.bl, label %middle.block121, label %vector.body117, !llvm.loop !313

middle.block121:                                  ; preds = %vector.body117
  %cmp.n122 = icmp eq i64 %n.vec116, %i.b
  br i1 %cmp.n122, label %._crit_edge67, label %.lr.ph66.preheader124

.lr.ph66.preheader124:                            ; preds = %.lr.ph66.preheader, %middle.block121
  %indvars.iv90.ph = phi i64 [ 0, %.lr.ph66.preheader ], [ %n.vec116, %middle.block121 ]
  br label %.lr.ph66

.lr.ph64:                                         ; preds = %.lr.ph64, %.lr.ph64.preheader.new
  %indvars.iv85 = phi i64 [ 0, %.lr.ph64.preheader.new ], [ %indvars.iv.next86.7, %.lr.ph64 ] ; 9 uses
  %.063 = phi double [ 0.000000e+00, %.lr.ph64.preheader.new ], [ %i.cq, %.lr.ph64 ]
  %niter = phi i64 [ 0, %.lr.ph64.preheader.new ], [ %niter.next.7, %.lr.ph64 ]
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr @counteff_simple_float.rootnode, i64 %indvars.iv85
  %i.bn = load double, ptr %i.bm, align 16, !tbaa !24
  %i.bo = fadd double %.063, %i.bn
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr @counteff_simple_float.rootnode, i64 %indvars.iv85
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load double, ptr %i.bq, align 8, !tbaa !24
  %i.bs = fadd double %i.bo, %i.br
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr @counteff_simple_float.rootnode, i64 %indvars.iv85
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = load double, ptr %i.bu, align 16, !tbaa !24
  %i.bw = fadd double %i.bs, %i.bv
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr @counteff_simple_float.rootnode, i64 %indvars.iv85
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.bz = load double, ptr %i.by, align 8, !tbaa !24
  %i.ca = fadd double %i.bw, %i.bz
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr @counteff_simple_float.rootnode, i64 %indvars.iv85
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 32
  %i.cd = load double, ptr %i.cc, align 16, !tbaa !24
  %i.ce = fadd double %i.ca, %i.cd
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr @counteff_simple_float.rootnode, i64 %indvars.iv85
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 40
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !24
  %i.ci = fadd double %i.ce, %i.ch
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr @counteff_simple_float.rootnode, i64 %indvars.iv85
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 48
  %i.cl = load double, ptr %i.ck, align 16, !tbaa !24
  %i.cm = fadd double %i.ci, %i.cl
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr @counteff_simple_float.rootnode, i64 %indvars.iv85
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 56
  %i.cp = load double, ptr %i.co, align 8, !tbaa !24
  %i.cq = fadd double %i.cm, %i.cp                ; 3 uses
  %indvars.iv.next86.7 = add nuw nsw i64 %indvars.iv85, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.lr.ph66.preheader.unr-lcssa, label %.lr.ph64, !llvm.loop !314

.lr.ph66:                                         ; preds = %.lr.ph66.preheader124, %.lr.ph66
  %indvars.iv90 = phi i64 [ %indvars.iv.next91, %.lr.ph66 ], [ %indvars.iv90.ph, %.lr.ph66.preheader124 ] ; 3 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr @counteff_simple_float.rootnode, i64 %indvars.iv90
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !24
  %i.ct = fdiv double %i.cs, %.lcssa
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv90
  store double %i.ct, ptr %i.cu, align 8, !tbaa !24
  %indvars.iv.next91 = add nuw nsw i64 %indvars.iv90, 1 ; 2 uses
  %exitcond94.not = icmp eq i64 %indvars.iv.next91, %wide.trip.count93
  br i1 %exitcond94.not, label %._crit_edge67, label %.lr.ph66, !llvm.loop !315

._crit_edge67:                                    ; preds = %.lr.ph66, %middle.block121, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @counteff_simple(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp sgt i32 %0, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge67

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64                  ; 10 uses
  %i.c = shl nuw nsw i64 %i.b, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 16 @counteff_simple.rootnode, i8 0, i64 %i.c, i1 false), !tbaa !24
  %min.iters.check = icmp ult i32 %0, 4
  br i1 %min.iters.check, label %.lr.ph.preheader126, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.b, 2147483644               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr @counteff_simple.eff, i64 %index ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store <2 x double> splat (double 1.000000e+00), ptr %i.d, align 16, !tbaa !24
  store <2 x double> splat (double 1.000000e+00), ptr %i.e, align 16, !tbaa !24
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.f = icmp eq i64 %index.next, %n.vec
  br i1 %i.f, label %middle.block, label %vector.body, !llvm.loop !316

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.b
  br i1 %cmp.n, label %.preheader51, label %.lr.ph.preheader126

.lr.ph.preheader126:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.preheader51:                                     ; preds = %.lr.ph, %middle.block
  %.not = icmp eq i32 %0, 1
  br i1 %.not, label %.lr.ph61.preheader, label %.preheader50.preheader

.preheader50.preheader:                           ; preds = %.preheader51
  %i.g = add nsw i32 %0, -1
  %wide.trip.count78 = zext nneg i32 %i.g to i64
  br label %.preheader50

.lr.ph:                                           ; preds = %.lr.ph.preheader126, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader126 ] ; 2 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr @counteff_simple.eff, i64 %indvars.iv
  store double 1.000000e+00, ptr %i.h, align 8, !tbaa !24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.b
  br i1 %exitcond.not, label %.preheader51, label %.lr.ph, !llvm.loop !317

.preheader50:                                     ; preds = %.preheader50.preheader, %._crit_edge
  %indvars.iv75 = phi i64 [ 0, %.preheader50.preheader ], [ %indvars.iv.next76, %._crit_edge ] ; 4 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv75
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !87   ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !89   ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !4    ; 2 uses
  %i.m = icmp sgt i32 %i.l, -1
  br i1 %i.m, label %.lr.ph55, label %.preheader49

.lr.ph55:                                         ; preds = %.preheader50
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv75
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !52
  %i.p = load double, ptr %i.o, align 8, !tbaa !24
  br label %bb.b

.lr.ph61.preheader:                               ; preds = %._crit_edge, %.preheader51
  %wide.trip.count83 = zext nneg i32 %0 to i64
  %min.iters.check101 = icmp ult i32 %0, 4
  br i1 %min.iters.check101, label %.lr.ph61.preheader125, label %vector.ph102

vector.ph102:                                     ; preds = %.lr.ph61.preheader
  %n.vec104 = and i64 %i.b, 2147483644            ; 3 uses
  br label %vector.body105

vector.body105:                                   ; preds = %vector.body105, %vector.ph102
  %index106 = phi i64 [ 0, %vector.ph102 ], [ %index.next108, %vector.body105 ] ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr @counteff_simple.rootnode, i64 %index106 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  %wide.load = load <2 x double>, ptr %i.q, align 16, !tbaa !24
  %wide.load107 = load <2 x double>, ptr %i.r, align 16, !tbaa !24
  %i.s = fadd <2 x double> %wide.load, splat (double 1.000000e-03)
  %i.t = fadd <2 x double> %wide.load107, splat (double 1.000000e-03)
  store <2 x double> %i.s, ptr %i.q, align 16, !tbaa !24
  store <2 x double> %i.t, ptr %i.r, align 16, !tbaa !24
  %index.next108 = add nuw i64 %index106, 4       ; 2 uses
  %i.u = icmp eq i64 %index.next108, %n.vec104
  br i1 %i.u, label %middle.block109, label %vector.body105, !llvm.loop !318

middle.block109:                                  ; preds = %vector.body105
  %cmp.n110 = icmp eq i64 %n.vec104, %i.b
  br i1 %cmp.n110, label %.lr.ph64.preheader, label %.lr.ph61.preheader125

.lr.ph61.preheader125:                            ; preds = %.lr.ph61.preheader, %middle.block109
  %indvars.iv80.ph = phi i64 [ 0, %.lr.ph61.preheader ], [ %n.vec104, %middle.block109 ]
  br label %.lr.ph61

.preheader49:                                     ; preds = %bb.b, %.preheader50
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !89   ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !4    ; 2 uses
  %i.y = icmp sgt i32 %i.x, -1
  br i1 %i.y, label %.lr.ph58, label %._crit_edge

.lr.ph58:                                         ; preds = %.preheader49
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv75
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !52
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !24
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph55, %bb.b
  %indvars.iv69 = phi i64 [ 0, %.lr.ph55 ], [ %indvars.iv.next70, %bb.b ]
  %i.ad = phi i32 [ %i.l, %.lr.ph55 ], [ %i.am, %bb.b ]
  %i.ae = zext nneg i32 %i.ad to i64              ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr @counteff_simple.eff, i64 %i.ae ; 2 uses
  %i.ag = load double, ptr %i.af, align 8, !tbaa !24 ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr @counteff_simple.rootnode, i64 %i.ae ; 2 uses
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !24
  %i.aj = tail call double @llvm.fmuladd.f64(double %i.p, double %i.ag, double %i.ai)
  store double %i.aj, ptr %i.ah, align 8, !tbaa !24
  %i.ak = fmul double %i.ag, 5.000000e-01
  store double %i.ak, ptr %i.af, align 8, !tbaa !24
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 1 ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.next70
  %i.am = load i32, ptr %i.al, align 4, !tbaa !4  ; 2 uses
  %i.an = icmp sgt i32 %i.am, -1
  br i1 %i.an, label %bb.b, label %.preheader49, !llvm.loop !319

bb.c:                                             ; preds = %.lr.ph58, %bb.c
  %indvars.iv72 = phi i64 [ 0, %.lr.ph58 ], [ %indvars.iv.next73, %bb.c ]
  %i.ao = phi i32 [ %i.x, %.lr.ph58 ], [ %i.ax, %bb.c ]
  %i.ap = zext nneg i32 %i.ao to i64              ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr @counteff_simple.eff, i64 %i.ap ; 2 uses
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !24 ; 2 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr @counteff_simple.rootnode, i64 %i.ap ; 2 uses
  %i.at = load double, ptr %i.as, align 8, !tbaa !24
  %i.au = tail call double @llvm.fmuladd.f64(double %i.ac, double %i.ar, double %i.at)
  store double %i.au, ptr %i.as, align 8, !tbaa !24
  %i.av = fmul double %i.ar, 5.000000e-01
  store double %i.av, ptr %i.aq, align 8, !tbaa !24
  %indvars.iv.next73 = add nuw nsw i64 %indvars.iv72, 1 ; 2 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.next73
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !4  ; 2 uses
  %i.ay = icmp sgt i32 %i.ax, -1
  br i1 %i.ay, label %bb.c, label %._crit_edge, !llvm.loop !320

._crit_edge:                                      ; preds = %bb.c, %.preheader49
  %indvars.iv.next76 = add nuw nsw i64 %indvars.iv75, 1 ; 2 uses
  %exitcond79.not = icmp eq i64 %indvars.iv.next76, %wide.trip.count78
  br i1 %exitcond79.not, label %.lr.ph61.preheader, label %.preheader50, !llvm.loop !321

.lr.ph64.preheader:                               ; preds = %.lr.ph61, %middle.block109
  %xtraiter = and i64 %i.b, 7                     ; 3 uses
  %i.az = icmp ult i32 %0, 8
  br i1 %i.az, label %.lr.ph64.epil.preheader, label %.lr.ph64.preheader.new

.lr.ph64.preheader.new:                           ; preds = %.lr.ph64.preheader
  %unroll_iter = and i64 %i.b, 2147483640
  br label %.lr.ph64

.lr.ph61:                                         ; preds = %.lr.ph61.preheader125, %.lr.ph61
  %indvars.iv80 = phi i64 [ %indvars.iv.next81, %.lr.ph61 ], [ %indvars.iv80.ph, %.lr.ph61.preheader125 ] ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr @counteff_simple.rootnode, i64 %indvars.iv80 ; 2 uses
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !24
  %i.bc = fadd double %i.bb, 1.000000e-03
  store double %i.bc, ptr %i.ba, align 8, !tbaa !24
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, 1 ; 2 uses
  %exitcond84.not = icmp eq i64 %indvars.iv.next81, %wide.trip.count83
  br i1 %exitcond84.not, label %.lr.ph64.preheader, label %.lr.ph61, !llvm.loop !322

.lr.ph66.preheader.unr-lcssa:                     ; preds = %.lr.ph64
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph66.preheader, label %.lr.ph64.epil.preheader

.lr.ph64.epil.preheader:                          ; preds = %.lr.ph66.preheader.unr-lcssa, %.lr.ph64.preheader
  %indvars.iv85.epil.init = phi i64 [ 0, %.lr.ph64.preheader ], [ %indvars.iv.next86.7, %.lr.ph66.preheader.unr-lcssa ]
  %.063.epil.init = phi double [ 0.000000e+00, %.lr.ph64.preheader ], [ %i.co, %.lr.ph66.preheader.unr-lcssa ]
  %lcmp.mod128 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod128)
  br label %.lr.ph64.epil

.lr.ph64.epil:                                    ; preds = %.lr.ph64.epil, %.lr.ph64.epil.preheader
  %indvars.iv85.epil = phi i64 [ %indvars.iv85.epil.init, %.lr.ph64.epil.preheader ], [ %indvars.iv.next86.epil, %.lr.ph64.epil ] ; 2 uses
  %.063.epil = phi double [ %.063.epil.init, %.lr.ph64.epil.preheader ], [ %i.bf, %.lr.ph64.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph64.epil.preheader ], [ %epil.iter.next, %.lr.ph64.epil ]
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr @counteff_simple.rootnode, i64 %indvars.iv85.epil
  %i.be = load double, ptr %i.bd, align 8, !tbaa !24
  %i.bf = fadd double %.063.epil, %i.be           ; 2 uses
  %indvars.iv.next86.epil = add nuw nsw i64 %indvars.iv85.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph66.preheader, label %.lr.ph64.epil, !llvm.loop !323

.lr.ph66.preheader:                               ; preds = %.lr.ph64.epil, %.lr.ph66.preheader.unr-lcssa
  %.lcssa = phi double [ %i.co, %.lr.ph66.preheader.unr-lcssa ], [ %i.bf, %.lr.ph64.epil ] ; 2 uses
  %wide.trip.count93 = zext nneg i32 %0 to i64
  %min.iters.check113 = icmp eq i32 %0, 1
  br i1 %min.iters.check113, label %.lr.ph66.preheader124, label %vector.ph114

vector.ph114:                                     ; preds = %.lr.ph66.preheader
  %n.vec116 = and i64 %i.b, 2147483646            ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %.lcssa, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body117

vector.body117:                                   ; preds = %vector.body117, %vector.ph114
  %index118 = phi i64 [ 0, %vector.ph114 ], [ %index.next120, %vector.body117 ] ; 3 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr @counteff_simple.rootnode, i64 %index118
  %wide.load119 = load <2 x double>, ptr %i.bg, align 16, !tbaa !24
  %i.bh = fdiv <2 x double> %wide.load119, %broadcast.splat
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index118
  store <2 x double> %i.bh, ptr %i.bi, align 8, !tbaa !24
  %index.next120 = add nuw i64 %index118, 2       ; 2 uses
  %i.bj = icmp eq i64 %index.next120, %n.vec116
  br i1 %i.bj, label %middle.block121, label %vector.body117, !llvm.loop !324

middle.block121:                                  ; preds = %vector.body117
  %cmp.n122 = icmp eq i64 %n.vec116, %i.b
  br i1 %cmp.n122, label %._crit_edge67, label %.lr.ph66.preheader124

.lr.ph66.preheader124:                            ; preds = %.lr.ph66.preheader, %middle.block121
  %indvars.iv90.ph = phi i64 [ 0, %.lr.ph66.preheader ], [ %n.vec116, %middle.block121 ]
  br label %.lr.ph66

.lr.ph64:                                         ; preds = %.lr.ph64, %.lr.ph64.preheader.new
  %indvars.iv85 = phi i64 [ 0, %.lr.ph64.preheader.new ], [ %indvars.iv.next86.7, %.lr.ph64 ] ; 9 uses
  %.063 = phi double [ 0.000000e+00, %.lr.ph64.preheader.new ], [ %i.co, %.lr.ph64 ]
  %niter = phi i64 [ 0, %.lr.ph64.preheader.new ], [ %niter.next.7, %.lr.ph64 ]
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr @counteff_simple.rootnode, i64 %indvars.iv85
  %i.bl = load double, ptr %i.bk, align 16, !tbaa !24
  %i.bm = fadd double %.063, %i.bl
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr @counteff_simple.rootnode, i64 %indvars.iv85
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !24
  %i.bq = fadd double %i.bm, %i.bp
  %i.br = getelementptr inbounds nuw [8 x i8], ptr @counteff_simple.rootnode, i64 %indvars.iv85
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load double, ptr %i.bs, align 16, !tbaa !24
  %i.bu = fadd double %i.bq, %i.bt
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr @counteff_simple.rootnode, i64 %indvars.iv85
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !24
  %i.by = fadd double %i.bu, %i.bx
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr @counteff_simple.rootnode, i64 %indvars.iv85
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  %i.cb = load double, ptr %i.ca, align 16, !tbaa !24
  %i.cc = fadd double %i.by, %i.cb
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr @counteff_simple.rootnode, i64 %indvars.iv85
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 40
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !24
  %i.cg = fadd double %i.cc, %i.cf
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr @counteff_simple.rootnode, i64 %indvars.iv85
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 48
  %i.cj = load double, ptr %i.ci, align 16, !tbaa !24
  %i.ck = fadd double %i.cg, %i.cj
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr @counteff_simple.rootnode, i64 %indvars.iv85
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 56
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !24
  %i.co = fadd double %i.ck, %i.cn                ; 3 uses
  %indvars.iv.next86.7 = add nuw nsw i64 %indvars.iv85, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.lr.ph66.preheader.unr-lcssa, label %.lr.ph64, !llvm.loop !325

.lr.ph66:                                         ; preds = %.lr.ph66.preheader124, %.lr.ph66
  %indvars.iv90 = phi i64 [ %indvars.iv.next91, %.lr.ph66 ], [ %indvars.iv90.ph, %.lr.ph66.preheader124 ] ; 3 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr @counteff_simple.rootnode, i64 %indvars.iv90
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !24
  %i.cr = fdiv double %i.cq, %.lcssa
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv90
  store double %i.cr, ptr %i.cs, align 8, !tbaa !24
  %indvars.iv.next91 = add nuw nsw i64 %indvars.iv90, 1 ; 2 uses
  %exitcond94.not = icmp eq i64 %indvars.iv.next91, %wide.trip.count93
  br i1 %exitcond94.not, label %._crit_edge67, label %.lr.ph66, !llvm.loop !326

._crit_edge67:                                    ; preds = %.lr.ph66, %middle.block121, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @counteff(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #12 {
bb.a:
  %i.a = alloca [50000 x double], align 16        ; 18 uses
  %i.b = alloca [50000 x double], align 16        ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  %i.c = load i32, ptr @mix, align 4, !tbaa !4
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr @weight, align 4, !tbaa !4
  switch i32 %i.d, label %bb.c [
    i32 2, label %.loopexit174.thread327
    i32 3, label %.thread326
  ]

.loopexit174.thread327:                           ; preds = %bb.b
  store i32 3, ptr @weight, align 4, !tbaa !4
  br label %.preheader171

.thread326:                                       ; preds = %bb.b
  store i32 2, ptr @weight, align 4, !tbaa !4
  br label %.preheader184

bb.c:                                             ; preds = %bb.b
  tail call void @ErrorExit(ptr noundef nonnull @.str.28) #33
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.pr = load i32, ptr @weight, align 4, !tbaa !4
  switch i32 %.pr, label %.loopexit [
    i32 2, label %.preheader184
    i32 3, label %.preheader171
  ]

.preheader184:                                    ; preds = %bb.d, %.thread326
  %i.e = icmp sgt i32 %0, 0
  br i1 %i.e, label %.preheader183, label %.preheader183.thread

.preheader183.thread:                             ; preds = %.preheader184
  %i.f = add i32 %0, -2
  br label %.preheader178

.preheader183:                                    ; preds = %.preheader184
  %i.g = zext nneg i32 %0 to i64
  %i.h = shl nuw nsw i64 %i.g, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.a, i8 0, i64 %i.h, i1 false), !tbaa !24
  %i.i = add nsw i32 %0, -2                       ; 3 uses
  %i.j = icmp samesign ugt i32 %0, 2
  br i1 %i.j, label %.preheader182.preheader, label %.preheader178

.preheader182.preheader:                          ; preds = %.preheader183
  %wide.trip.count = zext nneg i32 %i.i to i64
  br label %.preheader182

.preheader182:                                    ; preds = %.preheader182.preheader, %._crit_edge201
  %indvars.iv247 = phi i64 [ 0, %.preheader182.preheader ], [ %indvars.iv.next248, %._crit_edge201 ] ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv247
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !87   ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !89   ; 3 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !4    ; 3 uses
  %i.o = icmp sgt i32 %i.n, -1                    ; 2 uses
  br i1 %i.o, label %.lr.ph193, label %.preheader181.thread

.preheader178:                                    ; preds = %._crit_edge201, %.preheader183.thread, %.preheader183
  %i.p = phi i32 [ %i.f, %.preheader183.thread ], [ %i.i, %.preheader183 ], [ %i.i, %._crit_edge201 ]
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds [8 x i8], ptr %1, i64 %i.q
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !87   ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !89   ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !4    ; 2 uses
  %i.v = icmp sgt i32 %i.u, -1
  br i1 %i.v, label %.preheader177.lr.ph, label %.preheader176

.preheader177.lr.ph:                              ; preds = %.preheader178
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !89   ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !4    ; 2 uses
  %i.z = icmp sgt i32 %i.y, -1
  br i1 %i.z, label %.preheader177.us, label %.preheader176

.preheader177.us:                                 ; preds = %.preheader177.lr.ph, %._crit_edge.us206
  %indvars.iv256 = phi i64 [ %indvars.iv.next257, %._crit_edge.us206 ], [ 0, %.preheader177.lr.ph ]
  %i.aa = phi i32 [ %i.au, %._crit_edge.us206 ], [ %i.u, %.preheader177.lr.ph ] ; 3 uses
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ab
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !24
  br label %bb.e

bb.e:                                             ; preds = %.preheader177.us, %bb.e
  %indvars.iv253 = phi i64 [ 0, %.preheader177.us ], [ %indvars.iv.next254, %bb.e ]
  %i.ae = phi i32 [ %i.y, %.preheader177.us ], [ %i.ar, %bb.e ] ; 3 uses
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.af
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !24
  %i.ai = fadd double %i.ad, %i.ah
  %i.aj = tail call i32 @llvm.smin.i32(i32 %i.aa, i32 %i.ae)
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.ak
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !52
  %i.an = tail call i32 @llvm.smax.i32(i32 %i.aa, i32 %i.ae)
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.ao
  store double %i.ai, ptr %i.ap, align 8, !tbaa !24
  %indvars.iv.next254 = add nuw nsw i64 %indvars.iv253, 1 ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv.next254
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !4  ; 2 uses
  %i.as = icmp sgt i32 %i.ar, -1
  br i1 %i.as, label %bb.e, label %._crit_edge.us206, !llvm.loop !327

._crit_edge.us206:                                ; preds = %bb.e
  %indvars.iv.next257 = add nuw nsw i64 %indvars.iv256, 1 ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.next257
  %i.au = load i32, ptr %i.at, align 4, !tbaa !4  ; 2 uses
  %i.av = icmp sgt i32 %i.au, -1
  br i1 %i.av, label %.preheader177.us, label %.preheader176, !llvm.loop !328

.preheader181:                                    ; preds = %.lr.ph193
  %i.aw = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !89 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !4  ; 2 uses
  %i.az = icmp sgt i32 %i.ay, -1
  br i1 %i.az, label %.lr.ph196.preheader, label %._crit_edge201

.preheader181.thread:                             ; preds = %.preheader182
  %i.ba = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !89 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !4  ; 2 uses
  %i.bd = icmp sgt i32 %i.bc, -1
  br i1 %i.bd, label %.lr.ph196.preheader, label %._crit_edge201

.lr.ph196.preheader:                              ; preds = %.preheader181.thread, %.preheader181
  %i.be = phi i32 [ %i.bc, %.preheader181.thread ], [ %i.ay, %.preheader181 ] ; 2 uses
  %i.bf = phi ptr [ %i.bb, %.preheader181.thread ], [ %i.ax, %.preheader181 ] ; 2 uses
  br label %.lr.ph196

.lr.ph193:                                        ; preds = %.preheader182, %.lr.ph193
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph193 ], [ 0, %.preheader182 ]
  %i.bg = phi i32 [ %i.bm, %.lr.ph193 ], [ %i.n, %.preheader182 ]
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bh ; 2 uses
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !24
  %i.bk = fadd double %i.bj, 1.000000e+00
  store double %i.bk, ptr %i.bi, align 8, !tbaa !24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.next
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !4  ; 2 uses
  %i.bn = icmp sgt i32 %i.bm, -1
  br i1 %i.bn, label %.lr.ph193, label %.preheader181, !llvm.loop !329

.preheader180:                                    ; preds = %.lr.ph196
  br i1 %i.o, label %.preheader179.us, label %._crit_edge201

.preheader179.us:                                 ; preds = %.preheader180, %._crit_edge.us
  %indvars.iv244 = phi i64 [ %indvars.iv.next245, %._crit_edge.us ], [ 0, %.preheader180 ]
  %i.bo = phi i32 [ %i.cj, %._crit_edge.us ], [ %i.n, %.preheader180 ] ; 3 uses
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bp
  %i.br = load double, ptr %i.bq, align 8, !tbaa !24
  br label %bb.f

bb.f:                                             ; preds = %.preheader179.us, %bb.f
  %indvars.iv241 = phi i64 [ 0, %.preheader179.us ], [ %indvars.iv.next242, %bb.f ]
  %i.bs = phi i32 [ %i.be, %.preheader179.us ], [ %i.cg, %bb.f ] ; 3 uses
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bt
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !24
  %i.bw = fadd double %i.br, %i.bv
  %i.bx = fadd double %i.bw, -1.000000e+00
  %i.by = tail call i32 @llvm.smin.i32(i32 %i.bo, i32 %i.bs)
  %i.bz = zext nneg i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.bz
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !52
  %i.cc = tail call i32 @llvm.smax.i32(i32 %i.bo, i32 %i.bs)
  %i.cd = zext nneg i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.cd
  store double %i.bx, ptr %i.ce, align 8, !tbaa !24
  %indvars.iv.next242 = add nuw nsw i64 %indvars.iv241, 1 ; 2 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.next242
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !4  ; 2 uses
  %i.ch = icmp sgt i32 %i.cg, -1
  br i1 %i.ch, label %bb.f, label %._crit_edge.us, !llvm.loop !330

._crit_edge.us:                                   ; preds = %bb.f
  %indvars.iv.next245 = add nuw nsw i64 %indvars.iv244, 1 ; 2 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.next245
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !4  ; 2 uses
  %i.ck = icmp sgt i32 %i.cj, -1
  br i1 %i.ck, label %.preheader179.us, label %._crit_edge201, !llvm.loop !331

.lr.ph196:                                        ; preds = %.lr.ph196.preheader, %.lr.ph196
  %indvars.iv235 = phi i64 [ 0, %.lr.ph196.preheader ], [ %indvars.iv.next236, %.lr.ph196 ]
  %i.cl = phi i32 [ %i.be, %.lr.ph196.preheader ], [ %i.cr, %.lr.ph196 ]
  %i.cm = zext nneg i32 %i.cl to i64
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.cm ; 2 uses
  %i.co = load double, ptr %i.cn, align 8, !tbaa !24
  %i.cp = fadd double %i.co, 1.000000e+00
  store double %i.cp, ptr %i.cn, align 8, !tbaa !24
  %indvars.iv.next236 = add nuw nsw i64 %indvars.iv235, 1 ; 2 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.next236
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !4  ; 2 uses
  %i.cs = icmp sgt i32 %i.cr, -1
  br i1 %i.cs, label %.lr.ph196, label %.preheader180, !llvm.loop !332

._crit_edge201:                                   ; preds = %._crit_edge.us, %.preheader181, %.preheader181.thread, %.preheader180
  %indvars.iv.next248 = add nuw nsw i64 %indvars.iv247, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next248, %wide.trip.count
  br i1 %exitcond.not, label %.preheader178, label %.preheader182, !llvm.loop !333

.preheader176:                                    ; preds = %._crit_edge.us206, %.preheader177.lr.ph, %.preheader178
  %i.ct = add i32 %0, -1                          ; 2 uses
  %i.cu = icmp sgt i32 %0, 1
  br i1 %i.cu, label %.lr.ph210, label %.loopexit

.lr.ph210:                                        ; preds = %.preheader176
  %i.cv = load float, ptr @geta2, align 4
  %i.cw = fpext float %i.cv to double
  %wide.trip.count269 = zext nneg i32 %i.ct to i64
  %wide.trip.count264 = zext nneg i32 %0 to i64   ; 3 uses
  br label %.lr.ph208

.loopexit175:                                     ; preds = %ipower.exit
  %indvars.iv.next260 = add nuw nsw i64 %indvars.iv259, 1
  %exitcond270.not = icmp eq i64 %indvars.iv.next267, %wide.trip.count269
  br i1 %exitcond270.not, label %.lr.ph215.preheader, label %.lr.ph208, !llvm.loop !334

.lr.ph215.preheader:                              ; preds = %.loopexit175
  %wide.trip.count281 = zext nneg i32 %i.ct to i64
  %wide.trip.count276 = zext nneg i32 %0 to i64
  %i.cx = add nsw i64 %wide.trip.count264, -2
  br label %.lr.ph213

.lr.ph208:                                        ; preds = %.loopexit175, %.lr.ph210
  %indvars.iv266 = phi i64 [ 0, %.lr.ph210 ], [ %indvars.iv.next267, %.loopexit175 ] ; 2 uses
  %indvars.iv259 = phi i64 [ 1, %.lr.ph210 ], [ %indvars.iv.next260, %.loopexit175 ] ; 2 uses
  %indvars.iv.next267 = add nuw nsw i64 %indvars.iv266, 1 ; 2 uses
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv266
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !52
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph208, %ipower.exit
  %indvars.iv261 = phi i64 [ %indvars.iv259, %.lr.ph208 ], [ %indvars.iv.next262, %ipower.exit ] ; 2 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %indvars.iv261 ; 2 uses
  %i.db = load double, ptr %i.da, align 8, !tbaa !24
  %i.dc = fptosi double %i.db to i32              ; 2 uses
  %.not10.i = icmp eq i32 %i.dc, 0
  br i1 %.not10.i, label %ipower.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %.lr.ph.i
  %.013.i = phi double [ %.1.i, %.lr.ph.i ], [ 1.000000e+00, %bb.g ] ; 2 uses
  %.0712.i = phi i32 [ %i.dg, %.lr.ph.i ], [ %i.dc, %bb.g ] ; 2 uses
  %.0811.i = phi double [ %i.df, %.lr.ph.i ], [ 5.000000e-01, %bb.g ] ; 3 uses
  %i.dd = and i32 %.0712.i, 1
  %.not9.i = icmp eq i32 %i.dd, 0
  %i.de = fmul double %.013.i, %.0811.i
  %.1.i = select i1 %.not9.i, double %.013.i, double %i.de ; 2 uses
  %i.df = fmul double %.0811.i, %.0811.i
  %i.dg = ashr i32 %.0712.i, 1                    ; 2 uses
  %.not.i = icmp eq i32 %i.dg, 0
  br i1 %.not.i, label %ipower.exit, label %.lr.ph.i, !llvm.loop !286

ipower.exit:                                      ; preds = %.lr.ph.i, %bb.g
  %.0.lcssa.i = phi double [ 1.000000e+00, %bb.g ], [ %.1.i, %.lr.ph.i ]
  %i.dh = fadd double %.0.lcssa.i, %i.cw
  store double %i.dh, ptr %i.da, align 8, !tbaa !24
  %indvars.iv.next262 = add nuw nsw i64 %indvars.iv261, 1 ; 2 uses
  %exitcond265.not = icmp eq i64 %indvars.iv.next262, %wide.trip.count264
  br i1 %exitcond265.not, label %.loopexit175, label %bb.g, !llvm.loop !335

.loopexit172:                                     ; preds = %.lr.ph213.new, %.prol.loopexit
  %indvars.iv.next272 = add nuw nsw i64 %indvars.iv271, 1
  %exitcond282.not = icmp eq i64 %indvars.iv.next279, %wide.trip.count281
  br i1 %exitcond282.not, label %.loopexit, label %.lr.ph213, !llvm.loop !336

.lr.ph213:                                        ; preds = %.loopexit172, %.lr.ph215.preheader
  %indvars.iv278 = phi i64 [ 0, %.lr.ph215.preheader ], [ %indvars.iv.next279, %.loopexit172 ] ; 9 uses
  %indvars.iv271 = phi i64 [ 1, %.lr.ph215.preheader ], [ %indvars.iv.next272, %.loopexit172 ] ; 3 uses
  %i.di = xor i64 %indvars.iv278, -1
  %i.dj = add nsw i64 %i.di, %wide.trip.count264
  %i.dk = sub i64 %i.cx, %indvars.iv278
  %indvars.iv.next279 = add nuw nsw i64 %indvars.iv278, 1 ; 2 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv278
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !52 ; 5 uses
  %xtraiter350 = and i64 %i.dj, 3                 ; 2 uses
  %lcmp.mod351.not = icmp eq i64 %xtraiter350, 0
  br i1 %lcmp.mod351.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph213, %.prol.preheader
  %indvars.iv273.prol = phi i64 [ %indvars.iv.next274.prol, %.prol.preheader ], [ %indvars.iv271, %.lr.ph213 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph213 ]
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %indvars.iv273.prol
  %i.do = load double, ptr %i.dn, align 8, !tbaa !24
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv273.prol
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !52
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %indvars.iv278
  store double %i.do, ptr %i.dr, align 8, !tbaa !24
  %indvars.iv.next274.prol = add nuw nsw i64 %indvars.iv273.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter350
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !337

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph213
  %indvars.iv273.unr = phi i64 [ %indvars.iv271, %.lr.ph213 ], [ %indvars.iv.next274.prol, %.prol.preheader ]
  %i.ds = icmp ult i64 %i.dk, 3
  br i1 %i.ds, label %.loopexit172, label %.lr.ph213.new

.lr.ph213.new:                                    ; preds = %.prol.loopexit, %.lr.ph213.new
  %indvars.iv273 = phi i64 [ %indvars.iv.next274.3, %.lr.ph213.new ], [ %indvars.iv273.unr, %.prol.loopexit ] ; 6 uses
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %indvars.iv273
  %i.du = load double, ptr %i.dt, align 8, !tbaa !24
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv273
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !52
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %indvars.iv278
  store double %i.du, ptr %i.dx, align 8, !tbaa !24
  %indvars.iv.next274 = add nuw nsw i64 %indvars.iv273, 1 ; 2 uses
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %indvars.iv.next274
  %i.dz = load double, ptr %i.dy, align 8, !tbaa !24
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next274
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !52
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %indvars.iv278
  store double %i.dz, ptr %i.ec, align 8, !tbaa !24
  %indvars.iv.next274.1 = add nuw nsw i64 %indvars.iv273, 2 ; 2 uses
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %indvars.iv.next274.1
  %i.ee = load double, ptr %i.ed, align 8, !tbaa !24
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next274.1
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !52
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %indvars.iv278
  store double %i.ee, ptr %i.eh, align 8, !tbaa !24
  %indvars.iv.next274.2 = add nuw nsw i64 %indvars.iv273, 3 ; 2 uses
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %indvars.iv.next274.2
  %i.ej = load double, ptr %i.ei, align 8, !tbaa !24
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next274.2
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !52
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %indvars.iv278
  store double %i.ej, ptr %i.em, align 8, !tbaa !24
  %indvars.iv.next274.3 = add nuw nsw i64 %indvars.iv273, 4 ; 2 uses
  %exitcond277.not.3 = icmp eq i64 %indvars.iv.next274.3, %wide.trip.count276
  br i1 %exitcond277.not.3, label %.loopexit172, label %.lr.ph213.new, !llvm.loop !338

.preheader171:                                    ; preds = %bb.d, %.loopexit174.thread327
  %i.en = icmp sgt i32 %0, 0
  br i1 %i.en, label %.lr.ph217.preheader, label %.loopexit

.lr.ph217.preheader:                              ; preds = %.preheader171
  %i.eo = zext nneg i32 %0 to i64                 ; 8 uses
  %i.ep = shl nuw nsw i64 %i.eo, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.a, i8 0, i64 %i.ep, i1 false), !tbaa !24
  %min.iters.check = icmp ult i32 %0, 4
  br i1 %min.iters.check, label %.lr.ph217.preheader348, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph217.preheader
  %n.vec = and i64 %i.eo, 2147483644              ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %index ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  store <2 x double> splat (double 1.000000e+00), ptr %i.eq, align 16, !tbaa !24
  store <2 x double> splat (double 1.000000e+00), ptr %i.er, align 16, !tbaa !24
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.es = icmp eq i64 %index.next, %n.vec
  br i1 %i.es, label %middle.block, label %vector.body, !llvm.loop !339

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.eo
  br i1 %cmp.n, label %.preheader170, label %.lr.ph217.preheader348

.lr.ph217.preheader348:                           ; preds = %.lr.ph217.preheader, %middle.block
  %indvars.iv283.ph = phi i64 [ 0, %.lr.ph217.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph217

.preheader170:                                    ; preds = %.lr.ph217, %middle.block
  %.not332 = icmp eq i32 %0, 1
  br i1 %.not332, label %.lr.ph226.preheader, label %.preheader169.preheader

.preheader169.preheader:                          ; preds = %.preheader170
  %i.et = add nsw i32 %0, -1
  %wide.trip.count297 = zext nneg i32 %i.et to i64
  br label %.preheader169

.lr.ph217:                                        ; preds = %.lr.ph217.preheader348, %.lr.ph217
  %indvars.iv283 = phi i64 [ %indvars.iv.next284, %.lr.ph217 ], [ %indvars.iv283.ph, %.lr.ph217.preheader348 ] ; 2 uses
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv283
  store double 1.000000e+00, ptr %i.eu, align 8, !tbaa !24
  %indvars.iv.next284 = add nuw nsw i64 %indvars.iv283, 1 ; 2 uses
  %exitcond287.not = icmp eq i64 %indvars.iv.next284, %i.eo
  br i1 %exitcond287.not, label %.preheader170, label %.lr.ph217, !llvm.loop !340

.preheader169:                                    ; preds = %.preheader169.preheader, %._crit_edge
  %indvars.iv294 = phi i64 [ 0, %.preheader169.preheader ], [ %indvars.iv.next295, %._crit_edge ] ; 4 uses
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv294
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !87 ; 2 uses
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !89 ; 2 uses
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !4  ; 2 uses
  %i.ez = icmp sgt i32 %i.ey, -1
  br i1 %i.ez, label %.lr.ph219, label %.preheader168

.lr.ph219:                                        ; preds = %.preheader169
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv294
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !52
  %i.fc = load double, ptr %i.fb, align 8, !tbaa !24
  br label %bb.h

.lr.ph226.preheader:                              ; preds = %._crit_edge, %.preheader170
  %wide.trip.count302 = zext nneg i32 %0 to i64
  %min.iters.check335 = icmp ult i32 %0, 4
  br i1 %min.iters.check335, label %.lr.ph226.preheader347, label %vector.ph336

vector.ph336:                                     ; preds = %.lr.ph226.preheader
  %n.vec338 = and i64 %i.eo, 2147483644           ; 3 uses
  br label %vector.body339

vector.body339:                                   ; preds = %vector.body339, %vector.ph336
  %index340 = phi i64 [ 0, %vector.ph336 ], [ %index.next342, %vector.body339 ] ; 2 uses
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index340 ; 3 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 16 ; 2 uses
  %wide.load = load <2 x double>, ptr %i.fd, align 16, !tbaa !24
  %wide.load341 = load <2 x double>, ptr %i.fe, align 16, !tbaa !24
  %i.ff = fadd <2 x double> %wide.load, splat (double 1.000000e-03)
  %i.fg = fadd <2 x double> %wide.load341, splat (double 1.000000e-03)
  store <2 x double> %i.ff, ptr %i.fd, align 16, !tbaa !24
  store <2 x double> %i.fg, ptr %i.fe, align 16, !tbaa !24
  %index.next342 = add nuw i64 %index340, 4       ; 2 uses
  %i.fh = icmp eq i64 %index.next342, %n.vec338
  br i1 %i.fh, label %middle.block343, label %vector.body339, !llvm.loop !341

middle.block343:                                  ; preds = %vector.body339
  %cmp.n344 = icmp eq i64 %n.vec338, %i.eo
  br i1 %cmp.n344, label %.preheader.preheader, label %.lr.ph226.preheader347

.lr.ph226.preheader347:                           ; preds = %.lr.ph226.preheader, %middle.block343
  %indvars.iv299.ph = phi i64 [ 0, %.lr.ph226.preheader ], [ %n.vec338, %middle.block343 ]
  br label %.lr.ph226

.preheader168:                                    ; preds = %bb.h, %.preheader169
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !89 ; 2 uses
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !4  ; 2 uses
  %i.fl = icmp sgt i32 %i.fk, -1
  br i1 %i.fl, label %.lr.ph223, label %._crit_edge

.lr.ph223:                                        ; preds = %.preheader168
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv294
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !52
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  %i.fp = load double, ptr %i.fo, align 8, !tbaa !24
  br label %bb.i

bb.h:                                             ; preds = %.lr.ph219, %bb.h
  %indvars.iv288 = phi i64 [ 0, %.lr.ph219 ], [ %indvars.iv.next289, %bb.h ]
  %i.fq = phi i32 [ %i.ey, %.lr.ph219 ], [ %i.fz, %bb.h ]
  %i.fr = zext nneg i32 %i.fq to i64              ; 2 uses
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.fr ; 2 uses
  %i.ft = load double, ptr %i.fs, align 8, !tbaa !24 ; 2 uses
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.fr ; 2 uses
  %i.fv = load double, ptr %i.fu, align 8, !tbaa !24
  %i.fw = tail call double @llvm.fmuladd.f64(double %i.fc, double %i.ft, double %i.fv)
  store double %i.fw, ptr %i.fu, align 8, !tbaa !24
  %i.fx = fmul double %i.ft, 5.000000e-01
  store double %i.fx, ptr %i.fs, align 8, !tbaa !24
  %indvars.iv.next289 = add nuw nsw i64 %indvars.iv288, 1 ; 2 uses
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %indvars.iv.next289
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !4  ; 2 uses
  %i.ga = icmp sgt i32 %i.fz, -1
  br i1 %i.ga, label %bb.h, label %.preheader168, !llvm.loop !342

bb.i:                                             ; preds = %.lr.ph223, %bb.i
  %indvars.iv291 = phi i64 [ 0, %.lr.ph223 ], [ %indvars.iv.next292, %bb.i ]
  %i.gb = phi i32 [ %i.fk, %.lr.ph223 ], [ %i.gk, %bb.i ]
  %i.gc = zext nneg i32 %i.gb to i64              ; 2 uses
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.gc ; 2 uses
  %i.ge = load double, ptr %i.gd, align 8, !tbaa !24 ; 2 uses
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.gc ; 2 uses
  %i.gg = load double, ptr %i.gf, align 8, !tbaa !24
  %i.gh = tail call double @llvm.fmuladd.f64(double %i.fp, double %i.ge, double %i.gg)
  store double %i.gh, ptr %i.gf, align 8, !tbaa !24
  %i.gi = fmul double %i.ge, 5.000000e-01
  store double %i.gi, ptr %i.gd, align 8, !tbaa !24
  %indvars.iv.next292 = add nuw nsw i64 %indvars.iv291, 1 ; 2 uses
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %indvars.iv.next292
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !4  ; 2 uses
  %i.gl = icmp sgt i32 %i.gk, -1
  br i1 %i.gl, label %bb.i, label %._crit_edge, !llvm.loop !343

._crit_edge:                                      ; preds = %bb.i, %.preheader168
  %indvars.iv.next295 = add nuw nsw i64 %indvars.iv294, 1 ; 2 uses
  %exitcond298.not = icmp eq i64 %indvars.iv.next295, %wide.trip.count297
  br i1 %exitcond298.not, label %.lr.ph226.preheader, label %.preheader169, !llvm.loop !344

.preheader.preheader:                             ; preds = %.lr.ph226, %middle.block343
  %wide.trip.count312 = zext nneg i32 %0 to i64
  %xtraiter = and i64 %i.eo, 1
  %i.gm = icmp eq i32 %0, 1
  %unroll_iter = and i64 %i.eo, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod349 = trunc i32 %0 to i1
  br label %.preheader

.lr.ph226:                                        ; preds = %.lr.ph226.preheader347, %.lr.ph226
  %indvars.iv299 = phi i64 [ %indvars.iv.next300, %.lr.ph226 ], [ %indvars.iv299.ph, %.lr.ph226.preheader347 ] ; 2 uses
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv299 ; 2 uses
  %i.go = load double, ptr %i.gn, align 8, !tbaa !24
  %i.gp = fadd double %i.go, 1.000000e-03
  store double %i.gp, ptr %i.gn, align 8, !tbaa !24
  %indvars.iv.next300 = add nuw nsw i64 %indvars.iv299, 1 ; 2 uses
  %exitcond303.not = icmp eq i64 %indvars.iv.next300, %wide.trip.count302
  br i1 %exitcond303.not, label %.preheader.preheader, label %.lr.ph226, !llvm.loop !345

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge229
  %indvars.iv309 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next310, %._crit_edge229 ] ; 9 uses
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv309 ; 2 uses
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv309 ; 2 uses
  br i1 %i.gm, label %.epil.preheader, label %.preheader.new

.preheader.new:                                   ; preds = %.preheader
  %i.gs = load double, ptr %i.gq, align 8, !tbaa !24 ; 4 uses
  %i.gt = load ptr, ptr %i.gr, align 8, !tbaa !52 ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.n, %.preheader.new
  %indvars.iv304 = phi i64 [ 0, %.preheader.new ], [ %indvars.iv.next305.1, %bb.n ] ; 5 uses
  %niter = phi i64 [ 0, %.preheader.new ], [ %niter.next.1, %bb.n ]
  %.not165 = icmp eq i64 %indvars.iv304, %indvars.iv309
  br i1 %.not165, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv304
  %i.gv = load double, ptr %i.gu, align 16, !tbaa !24
  %i.gw = fmul double %i.gs, %i.gv
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %indvars.iv304.sink = phi i64 [ %indvars.iv304, %bb.k ], [ %indvars.iv309, %bb.j ]
  %.sink = phi double [ %i.gw, %bb.k ], [ %i.gs, %bb.j ]
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.gt, i64 %indvars.iv304.sink
  store double %.sink, ptr %i.gx, align 8, !tbaa !24
  %indvars.iv.next305 = or disjoint i64 %indvars.iv304, 1 ; 3 uses
  %.not165.1 = icmp eq i64 %indvars.iv.next305, %indvars.iv309
  br i1 %.not165.1, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next305
  %i.gz = load double, ptr %i.gy, align 8, !tbaa !24
  %i.ha = fmul double %i.gs, %i.gz
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %indvars.iv304.sink.1 = phi i64 [ %indvars.iv.next305, %bb.m ], [ %indvars.iv309, %bb.l ]
  %.sink.1 = phi double [ %i.ha, %bb.m ], [ %i.gs, %bb.l ]
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.gt, i64 %indvars.iv304.sink.1
  store double %.sink.1, ptr %i.hb, align 8, !tbaa !24
  %indvars.iv.next305.1 = add nuw nsw i64 %indvars.iv304, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge229.unr-lcssa, label %bb.j, !llvm.loop !346

._crit_edge229.unr-lcssa:                         ; preds = %bb.n
  br i1 %lcmp.mod.not, label %._crit_edge229, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge229.unr-lcssa, %.preheader
  %indvars.iv304.epil.init = phi i64 [ 0, %.preheader ], [ %indvars.iv.next305.1, %._crit_edge229.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod349)
  %.not165.epil = icmp eq i64 %indvars.iv304.epil.init, %indvars.iv309
  %i.hc = load double, ptr %i.gq, align 8, !tbaa !24 ; 2 uses
  br i1 %.not165.epil, label %._crit_edge229.epilog-lcssa, label %bb.o

bb.o:                                             ; preds = %.epil.preheader
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv304.epil.init
  %i.he = load double, ptr %i.hd, align 8, !tbaa !24
  %i.hf = fmul double %i.hc, %i.he
  br label %._crit_edge229.epilog-lcssa

._crit_edge229.epilog-lcssa:                      ; preds = %bb.o, %.epil.preheader
  %indvars.iv304.sink.epil = phi i64 [ %indvars.iv304.epil.init, %bb.o ], [ %indvars.iv309, %.epil.preheader ]
  %.sink.epil = phi double [ %i.hf, %bb.o ], [ %i.hc, %.epil.preheader ]
  %i.hg = load ptr, ptr %i.gr, align 8, !tbaa !52
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.hg, i64 %indvars.iv304.sink.epil
  store double %.sink.epil, ptr %i.hh, align 8, !tbaa !24
end_hunk_12
begin_hunk_13_@substitution_hosei:bb.a

.outer:                                           ; preds = %bb.d, %bb.a
  %.018.ph = phi i32 [ %i.j, %bb.d ], [ 0, %bb.a ] ; 3 uses
  %.016.ph = phi i32 [ %i.i, %bb.d ], [ 0, %bb.a ] ; 2 uses
  %.015.ph = phi ptr [ %i.c, %bb.d ], [ %1, %bb.a ]
  %.0.ph = phi ptr [ %i.b, %bb.d ], [ %0, %bb.a ]
  br label %bb.b

bb.b:                                             ; preds = %.outer, %bb.c
  %.015 = phi ptr [ %i.c, %bb.c ], [ %.015.ph, %.outer ] ; 2 uses
  %.0 = phi ptr [ %i.b, %bb.c ], [ %.0.ph, %.outer ] ; 2 uses
  %i.a = load i8, ptr %.0, align 1, !tbaa !8      ; 3 uses
  %.not = icmp eq i8 %i.a, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %.0, i64 1 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.015, i64 1 ; 2 uses
  %i.d = load i8, ptr %.015, align 1, !tbaa !8    ; 2 uses
  %i.e = icmp eq i8 %i.a, 45
  %i.f = icmp eq i8 %i.d, 45
  %or.cond = select i1 %i.e, i1 true, i1 %i.f
  br i1 %or.cond, label %bb.b, label %bb.d, !llvm.loop !354

bb.d:                                             ; preds = %bb.c
  %i.g = icmp ne i8 %i.a, %i.d
  %i.h = zext i1 %i.g to i32
  %i.i = add nuw nsw i32 %.016.ph, %i.h
  %i.j = add nuw nsw i32 %.018.ph, 1
  br label %.outer, !llvm.loop !354

bb.e:                                             ; preds = %bb.b
  %.not23 = icmp eq i32 %.018.ph, 0
  %i.k = uitofp nneg i32 %.016.ph to float
  %i.l = uitofp nneg i32 %.018.ph to float
  %i.m = fdiv float %i.k, %i.l
  %i.n = fpext float %i.m to double
  %.017 = select i1 %.not23, double 1.000000e+00, double %i.n ; 2 uses
  %i.o = fcmp olt double %.017, f0x3FEE666666666666
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = fsub double 1.000000e+00, %.017
  %i.q = tail call double @log(double noundef %i.p) #33, !tbaa !4
  %i.r = fptrunc double %i.q to float
  %i.s = fneg float %i.r
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.1 = phi float [ %i.s, %bb.f ], [ 3.000000e+00, %bb.e ]
  ret float %.1
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @log(double noundef) local_unnamed_addr #23

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local float @substitution(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #29 ; 5 uses
  %i.b = trunc i64 %i.a to i32
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph.preheader, label %._crit_edge.thread

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = and i64 %i.a, 2147483647
  %xtraiter = and i64 %i.a, 1
  %i.d = icmp eq i64 %wide.trip.count, 1
  br i1 %i.d, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.a, 2147483646
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.f, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %bb.f ] ; 4 uses
  %.01725 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %.1.1, %bb.f ] ; 3 uses
  %.01824 = phi float [ 0.000000e+00, %.lr.ph.preheader.new ], [ %.119.1, %bb.f ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %bb.f ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.f = load i8, ptr %i.e, align 1, !tbaa !8     ; 2 uses
  %.not22 = icmp eq i8 %i.f, 45
  br i1 %.not22, label %.lr.ph.1, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.h = load i8, ptr %i.g, align 1, !tbaa !8     ; 2 uses
  %.not23 = icmp eq i8 %i.h, 45
  br i1 %.not23, label %.lr.ph.1, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = icmp ne i8 %i.f, %i.h
  %i.j = uitofp i1 %i.i to float
  %i.k = fadd float %.01824, %i.j
  %i.l = add i32 %.01725, 1
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph, %bb.b, %bb.c
  %.119 = phi float [ %i.k, %bb.c ], [ %.01824, %bb.b ], [ %.01824, %.lr.ph ] ; 3 uses
  %.1 = phi i32 [ %i.l, %bb.c ], [ %.01725, %bb.b ], [ %.01725, %.lr.ph ] ; 3 uses
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next
  %i.n = load i8, ptr %i.m, align 1, !tbaa !8     ; 2 uses
  %.not22.1 = icmp eq i8 %i.n, 45
  br i1 %.not22.1, label %bb.f, label %bb.d

bb.d:                                             ; preds = %.lr.ph.1
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next
  %i.p = load i8, ptr %i.o, align 1, !tbaa !8     ; 2 uses
  %.not23.1 = icmp eq i8 %i.p, 45
  br i1 %.not23.1, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = icmp ne i8 %i.n, %i.p
  %i.r = uitofp i1 %i.q to float
  %i.s = fadd float %.119, %i.r
  %i.t = add i32 %.1, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %.lr.ph.1
  %.119.1 = phi float [ %i.s, %bb.e ], [ %.119, %bb.d ], [ %.119, %.lr.ph.1 ] ; 3 uses
  %.1.1 = phi i32 [ %i.t, %bb.e ], [ %.1, %bb.d ], [ %.1, %.lr.ph.1 ] ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.lr.ph, !llvm.loop !355

._crit_edge.unr-lcssa:                            ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ] ; 2 uses
  %.01725.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %.1.1, %._crit_edge.unr-lcssa ] ; 3 uses
  %.01824.epil.init = phi float [ 0.000000e+00, %.lr.ph.preheader ], [ %.119.1, %._crit_edge.unr-lcssa ] ; 3 uses
  %lcmp.mod37 = trunc i64 %i.a to i1
  tail call void @llvm.assume(i1 %lcmp.mod37)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.epil.init
  %i.v = load i8, ptr %i.u, align 1, !tbaa !8     ; 2 uses
  %.not22.epil = icmp eq i8 %i.v, 45
  br i1 %.not22.epil, label %._crit_edge, label %bb.g

bb.g:                                             ; preds = %.lr.ph.epil.preheader
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.epil.init
  %i.x = load i8, ptr %i.w, align 1, !tbaa !8     ; 2 uses
  %.not23.epil = icmp eq i8 %i.x, 45
  br i1 %.not23.epil, label %._crit_edge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = icmp ne i8 %i.v, %i.x
  %i.z = uitofp i1 %i.y to float
  %i.aa = fadd float %.01824.epil.init, %i.z
  %i.ab = add i32 %.01725.epil.init, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %bb.g, %bb.h, %._crit_edge.unr-lcssa
  %.119.lcssa = phi float [ %.119.1, %._crit_edge.unr-lcssa ], [ %i.aa, %bb.h ], [ %.01824.epil.init, %bb.g ], [ %.01824.epil.init, %.lr.ph.epil.preheader ]
  %.1.lcssa = phi i32 [ %.1.1, %._crit_edge.unr-lcssa ], [ %i.ab, %bb.h ], [ %.01725.epil.init, %bb.g ], [ %.01725.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %.not = icmp eq i32 %.1.lcssa, 0
  %i.ac = sitofp i32 %.1.lcssa to float
  %i.ad = fdiv float %.119.lcssa, %i.ac
  br i1 %.not, label %._crit_edge.thread, label %bb.i

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge, %._crit_edge.thread
  %i.ae = phi float [ 1.000000e+00, %._crit_edge.thread ], [ %i.ad, %._crit_edge ]
  ret float %i.ae
}

; Function Attrs: nounwind uwtable
define dso_local void @treeconstruction(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #12 {
bb.a:
  %i.a = load i32, ptr @weight, align 4, !tbaa !4
  %i.b = icmp sgt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %.preheader34

.preheader34:                                     ; preds = %bb.a
  %i.c = icmp sgt i32 %1, 0
  br i1 %i.c, label %.preheader33.preheader, label %.loopexit35

.preheader33.preheader:                           ; preds = %.preheader34
  %wide.trip.count55 = zext nneg i32 %1 to i64    ; 4 uses
  %min.iters.check = icmp ult i32 %1, 4
  %n.vec = and i64 %wide.trip.count55, 2147483644 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count55
  br label %.preheader33

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr @utree, align 4, !tbaa !4
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %.preheader, label %.loopexit35

.preheader:                                       ; preds = %bb.b
  %i.f = icmp sgt i32 %1, 1
  br i1 %i.f, label %.lr.ph45.preheader, label %._crit_edge46

.lr.ph45.preheader:                               ; preds = %.preheader
  %i.g = add nsw i32 %1, -1
  %wide.trip.count67 = zext nneg i32 %i.g to i64
  %wide.trip.count62 = zext nneg i32 %1 to i64
  br label %.lr.ph

.loopexit:                                        ; preds = %substitution_hosei.exit
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1
  %exitcond68.not = icmp eq i64 %indvars.iv.next65, %wide.trip.count67
  br i1 %exitcond68.not, label %._crit_edge46, label %.lr.ph, !llvm.loop !356

.lr.ph:                                           ; preds = %.loopexit, %.lr.ph45.preheader
  %indvars.iv64 = phi i64 [ 0, %.lr.ph45.preheader ], [ %indvars.iv.next65, %.loopexit ] ; 3 uses
  %indvars.iv57 = phi i64 [ 1, %.lr.ph45.preheader ], [ %indvars.iv.next58, %.loopexit ] ; 2 uses
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1 ; 2 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv64
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !12
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv64
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !52
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %substitution_hosei.exit
  %indvars.iv59 = phi i64 [ %indvars.iv57, %.lr.ph ], [ %indvars.iv.next60, %substitution_hosei.exit ] ; 3 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv59
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !12
  br label %.outer.i

.outer.i:                                         ; preds = %bb.f, %bb.c
  %.018.ph.i = phi i32 [ %i.w, %bb.f ], [ 0, %bb.c ] ; 3 uses
  %.016.ph.i = phi i32 [ %i.v, %bb.f ], [ 0, %bb.c ] ; 2 uses
  %.015.ph.i = phi ptr [ %i.p, %bb.f ], [ %i.m, %bb.c ]
  %.0.ph.i = phi ptr [ %i.o, %bb.f ], [ %i.i, %bb.c ]
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.outer.i
  %.015.i = phi ptr [ %i.p, %bb.e ], [ %.015.ph.i, %.outer.i ] ; 2 uses
  %.0.i = phi ptr [ %i.o, %bb.e ], [ %.0.ph.i, %.outer.i ] ; 2 uses
  %i.n = load i8, ptr %.0.i, align 1, !tbaa !8    ; 3 uses
  %.not.i = icmp eq i8 %i.n, 0
  br i1 %.not.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i, i64 1 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.015.i, i64 1 ; 2 uses
  %i.q = load i8, ptr %.015.i, align 1, !tbaa !8  ; 2 uses
  %i.r = icmp eq i8 %i.n, 45
  %i.s = icmp eq i8 %i.q, 45
  %or.cond.i = select i1 %i.r, i1 true, i1 %i.s
  br i1 %or.cond.i, label %bb.d, label %bb.f, !llvm.loop !354

bb.f:                                             ; preds = %bb.e
  %i.t = icmp ne i8 %i.n, %i.q
  %i.u = zext i1 %i.t to i32
  %i.v = add nuw nsw i32 %.016.ph.i, %i.u
  %i.w = add nuw nsw i32 %.018.ph.i, 1
  br label %.outer.i, !llvm.loop !354

bb.g:                                             ; preds = %bb.d
  %.not23.i = icmp eq i32 %.018.ph.i, 0
  %i.x = uitofp nneg i32 %.016.ph.i to float
  %i.y = uitofp nneg i32 %.018.ph.i to float
  %i.z = fdiv float %i.x, %i.y
  %i.aa = fpext float %i.z to double
  %.017.i = select i1 %.not23.i, double 1.000000e+00, double %i.aa ; 2 uses
  %i.ab = fcmp olt double %.017.i, f0x3FEE666666666666
  br i1 %i.ab, label %bb.h, label %substitution_hosei.exit

bb.h:                                             ; preds = %bb.g
  %i.ac = fsub double 1.000000e+00, %.017.i
  %i.ad = tail call double @log(double noundef %i.ac) #33, !tbaa !4
  %i.ae = fptrunc double %i.ad to float
  %i.af = fneg float %i.ae
  %i.ag = fpext float %i.af to double
  br label %substitution_hosei.exit

substitution_hosei.exit:                          ; preds = %bb.g, %bb.h
  %.1.i = phi double [ %i.ag, %bb.h ], [ 3.000000e+00, %bb.g ]
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv59
  store double %.1.i, ptr %i.ah, align 8, !tbaa !24
  %indvars.iv.next60 = add nuw nsw i64 %indvars.iv59, 1 ; 2 uses
  %exitcond63.not = icmp eq i64 %indvars.iv.next60, %wide.trip.count62
  br i1 %exitcond63.not, label %.loopexit, label %bb.c, !llvm.loop !357

._crit_edge46:                                    ; preds = %.loopexit, %.preheader
  tail call void @spg(i32 noundef %1, ptr noundef %4, ptr noundef %2, ptr noundef %3)
  tail call void @counteff(i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  br label %.loopexit35

.preheader33:                                     ; preds = %.preheader33.preheader, %._crit_edge
  %indvars.iv52 = phi i64 [ 0, %.preheader33.preheader ], [ %indvars.iv.next53, %._crit_edge ] ; 2 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv52
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !52 ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader33, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader33 ] ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %index ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store <2 x double> splat (double 1.000000e+00), ptr %i.ak, align 8, !tbaa !24
  store <2 x double> splat (double 1.000000e+00), ptr %i.al, align 8, !tbaa !24
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !358

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader33, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader33 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv
  store double 1.000000e+00, ptr %i.an, align 8, !tbaa !24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count55
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !359

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1 ; 2 uses
  %exitcond56.not = icmp eq i64 %indvars.iv.next53, %wide.trip.count55
  br i1 %exitcond56.not, label %.loopexit35, label %.preheader33, !llvm.loop !360

.loopexit35:                                      ; preds = %._crit_edge, %.preheader34, %bb.b, %._crit_edge46
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local float @bscore_calc(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #11 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !12
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #29
  %.fr = freeze i64 %i.b                          ; 2 uses
  %i.c = add nsw i32 %1, -1
  %i.d = icmp sgt i32 %1, 1
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = trunc i64 %.fr to i32
  %i.f = icmp sgt i32 %i.e, 0
  %i.g = load i32, ptr @penalty, align 4
  %i.h = sext i32 %i.g to i64
  br i1 %i.f, label %.lr.ph.split.us.preheader, label %._crit_edge

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %wide.trip.count106 = zext nneg i32 %i.c to i64
  %wide.trip.count101 = zext nneg i32 %1 to i64
  %wide.trip.count = and i64 %.fr, 2147483647
  br label %.lr.ph81.us

.loopexit.us:                                     ; preds = %._crit_edge.us.us
  %indvars.iv.next97 = add nuw nsw i64 %indvars.iv96, 1
  %exitcond107.not = icmp eq i64 %indvars.iv.next104, %wide.trip.count106
  br i1 %exitcond107.not, label %._crit_edge.loopexit, label %.lr.ph81.us, !llvm.loop !361

.lr.ph81.us:                                      ; preds = %.loopexit.us, %.lr.ph.split.us.preheader
  %indvars.iv103 = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %indvars.iv.next104, %.loopexit.us ] ; 3 uses
  %indvars.iv96 = phi i64 [ 1, %.lr.ph.split.us.preheader ], [ %indvars.iv.next97, %.loopexit.us ] ; 2 uses
  %.06186.us = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %i.bh, %.loopexit.us ]
  %.06385.us = phi i32 [ 0, %.lr.ph.split.us.preheader ], [ %i.bj, %.loopexit.us ]
  %indvars.iv.next104 = add nuw nsw i64 %indvars.iv103, 1 ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv103
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !52
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv103
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !12
  br label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %._crit_edge.us.us, %.lr.ph81.us
  %indvars.iv98 = phi i64 [ %indvars.iv.next99, %._crit_edge.us.us ], [ %indvars.iv96, %.lr.ph81.us ] ; 3 uses
  %.179.us.us = phi i64 [ %i.bh, %._crit_edge.us.us ], [ %.06186.us, %.lr.ph81.us ]
  %.16477.us.us = phi i32 [ %i.bj, %._crit_edge.us.us ], [ %.06385.us, %.lr.ph81.us ]
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv98
  %i.n = load double, ptr %i.m, align 8, !tbaa !24 ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv98
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !12
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.us.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %.lr.ph.us.us ] ; 3 uses
  %.275.us.us = phi i64 [ %i.bh, %bb.b ], [ %.179.us.us, %.lr.ph.us.us ]
  %.26574.us.us = phi i32 [ %i.bj, %bb.b ], [ %.16477.us.us, %.lr.ph.us.us ]
  %.06772.us.us = phi i32 [ %i.x, %bb.b ], [ 0, %.lr.ph.us.us ] ; 4 uses
  %.06871.us.us = phi i32 [ %i.t, %bb.b ], [ 0, %.lr.ph.us.us ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv
  %i.r = load i8, ptr %i.q, align 1, !tbaa !8     ; 2 uses
  %i.s = icmp eq i8 %i.r, 45                      ; 6 uses
  %i.t = zext i1 %i.s to i32
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 %indvars.iv
  %i.v = load i8, ptr %i.u, align 1, !tbaa !8     ; 2 uses
  %i.w = icmp eq i8 %i.v, 45                      ; 6 uses
  %i.x = zext i1 %i.w to i32
  %i.y = xor i32 %.06871.us.us, 1                 ; 2 uses
  %i.z = select i1 %i.s, i32 %i.y, i32 0          ; 2 uses
  %i.aa = xor i32 %.06772.us.us, 1                ; 2 uses
  %i.ab = select i1 %i.s, i32 0, i32 %i.y
  %.v.us.us = select i1 %i.w, i32 %i.ab, i32 %i.z
  %i.ac = mul nuw nsw i32 %.v.us.us, %i.aa
  %i.ad = mul nuw nsw i32 %i.z, %.06772.us.us
  %i.ae = select i1 %i.s, i32 0, i32 %.06871.us.us ; 2 uses
  %i.af = mul nuw nsw i32 %i.ae, %i.aa
  %i.ag = select i1 %i.w, i32 %i.af, i32 %i.ad
  %i.ah = add nuw nsw i32 %i.ag, %i.ac
  %i.ai = uitofp nneg i32 %i.ah to double
  %i.aj = mul nuw nsw i32 %i.ae, %.06772.us.us
  %i.ak = uitofp nneg i32 %i.aj to double
  %i.al = select i1 %i.w, double %i.ak, double 0.000000e+00
  %i.am = fadd double %i.al, %i.ai
  %i.an = select i1 %i.s, i32 %.06871.us.us, i32 0
  %i.ao = mul nuw nsw i32 %i.an, %.06772.us.us
  %i.ap = uitofp nneg i32 %i.ao to double
  %i.aq = select i1 %i.w, double 0.000000e+00, double %i.ap
  %i.ar = fadd double %i.aq, %i.am
  %i.as = fptosi double %i.ar to i32
  %i.at = sext i32 %i.as to i64
  %i.au = mul nsw i64 %i.at, %i.h
  %i.av = sitofp i64 %i.au to double
  %i.aw = sitofp i64 %.275.us.us to double
  %i.ax = tail call double @llvm.fmuladd.f64(double %i.av, double %i.n, double %i.aw)
  %i.ay = fptosi double %i.ax to i64
  %i.az = sext i8 %i.r to i64
  %i.ba = getelementptr inbounds [512 x i8], ptr @amino_dis, i64 %i.az
  %i.bb = sext i8 %i.v to i64
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.ba, i64 %i.bb
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !4
  %i.be = sitofp i32 %i.bd to double
  %i.bf = sitofp i64 %i.ay to double
  %i.bg = tail call double @llvm.fmuladd.f64(double %i.be, double %i.n, double %i.bf)
  %i.bh = fptosi double %i.bg to i64              ; 4 uses
  %mulbool.demorgan.us.us = or i1 %i.s, %i.w
  %mulbool.us.us = xor i1 %mulbool.demorgan.us.us, true
  %i.bi = zext i1 %mulbool.us.us to i32
  %i.bj = add nsw i32 %.26574.us.us, %i.bi        ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us.us, label %bb.b, !llvm.loop !362

._crit_edge.us.us:                                ; preds = %bb.b
  %indvars.iv.next99 = add nuw nsw i64 %indvars.iv98, 1 ; 2 uses
  %exitcond102.not = icmp eq i64 %indvars.iv.next99, %wide.trip.count101
  br i1 %exitcond102.not, label %.loopexit.us, label %.lr.ph.us.us, !llvm.loop !363

._crit_edge.loopexit:                             ; preds = %.loopexit.us
  %i.bk = sitofp i64 %i.bh to float
  %i.bl = sitofp i32 %i.bj to float
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %._crit_edge.loopexit, %bb.a
  %.063.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.bl, %._crit_edge.loopexit ], [ 0.000000e+00, %.lr.ph ]
  %.061.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.bk, %._crit_edge.loopexit ], [ 0.000000e+00, %.lr.ph ]
  %i.bm = fdiv float %.061.lcssa, %.063.lcssa
  %i.bn = fpext float %i.bm to double
  %i.bo = load i32, ptr @scoremtx, align 4, !tbaa !4
  %.not = icmp eq i32 %i.bo, 0
  %i.bp = uitofp i1 %.not to double
  %i.bq = tail call double @llvm.fmuladd.f64(double %i.bp, double 4.000000e+02, double %i.bn)
  %i.br = fptrunc double %i.bq to float
  ret float %i.br
}

; Function Attrs: nounwind uwtable
define dso_local void @AllocateTmpSeqs(ptr nofree noundef writeonly captures(none) initializes((0, 8)) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1, i32 noundef %2) local_unnamed_addr #12 {
bb.a:
  %i.a = load i32, ptr @njob, align 4, !tbaa !4
  %i.b = add nsw i32 %2, 1                        ; 2 uses
  %i.c = tail call ptr @AllocateCharMtx(i32 noundef %i.a, i32 noundef %i.b) #33
  store ptr %i.c, ptr %0, align 8, !tbaa !77
  %i.d = tail call ptr @AllocateCharVec(i32 noundef %i.b) #33
  store ptr %i.d, ptr %1, align 8, !tbaa !12
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @FreeTmpSeqs(ptr noundef %0, ptr noundef captures(none) %1) local_unnamed_addr #12 {
bb.a:
  tail call void @FreeCharMtx(ptr noundef %0) #33
  tail call void @free(ptr noundef %1) #33
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @gappick0(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #24 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.06 = phi ptr [ %0, %bb.a ], [ %.1, %bb.d ]    ; 4 uses
  %.0 = phi ptr [ %1, %bb.a ], [ %i.c, %bb.d ]    ; 2 uses
  %i.a = load i8, ptr %.0, align 1, !tbaa !8      ; 2 uses
  switch i8 %i.a, label %bb.c [
    i8 0, label %bb.e
    i8 45, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %.06, i64 1
  store i8 %i.a, ptr %.06, align 1, !tbaa !8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.1 = phi ptr [ %i.b, %bb.c ], [ %.06, %bb.b ]
  %i.c = getelementptr inbounds nuw i8, ptr %.0, i64 1
  br label %bb.b, !llvm.loop !364

bb.e:                                             ; preds = %bb.b
  store i8 0, ptr %.06, align 1, !tbaa !8
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @gappick(i32 noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5) local_unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !12
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #29 ; 2 uses
  %i.c = trunc i64 %i.b to i32
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.preheader58.lr.ph, label %.preheader56

.preheader58.lr.ph:                               ; preds = %bb.a
  %i.e = icmp sgt i32 %0, 0
  br i1 %i.e, label %.preheader58.us.us.preheader, label %._crit_edge

.preheader58.us.us.preheader:                     ; preds = %.preheader58.lr.ph
  %i.f = zext i32 %1 to i64                       ; 6 uses
  %wide.trip.count99 = and i64 %i.b, 2147483647
  %wide.trip.count = zext nneg i32 %0 to i64      ; 5 uses
  %i.g = add nsw i64 %wide.trip.count, -1         ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.h = icmp eq i64 %i.g, 0
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod115 = trunc i32 %0 to i1
  %xtraiter117 = and i64 %wide.trip.count, 1
  %i.i = icmp eq i64 %i.g, 0
  %unroll_iter120 = and i64 %wide.trip.count, 2147483646
  %lcmp.mod118.not = icmp eq i64 %xtraiter117, 0
  %lcmp.mod119 = trunc i32 %0 to i1
  br label %.preheader58.us.us

.preheader58.us.us:                               ; preds = %.preheader58.us.us.preheader, %bb.b
  %indvars.iv96 = phi i64 [ 0, %.preheader58.us.us.preheader ], [ %indvars.iv.next97, %bb.b ] ; 7 uses
  %.04865.us.us = phi i32 [ 0, %.preheader58.us.us.preheader ], [ %.149.us.us, %bb.b ] ; 3 uses
  br i1 %i.h, label %.epil.preheader, label %.preheader58.us.us.new

bb.b:                                             ; preds = %._crit_edge64.us.us, %._crit_edge.us.us
  %.149.us.us = phi i32 [ %i.bd, %._crit_edge64.us.us ], [ %.04865.us.us, %._crit_edge.us.us ] ; 2 uses
  %indvars.iv.next97 = add nuw nsw i64 %indvars.iv96, 1 ; 2 uses
end_hunk_13
begin_hunk_14_@strins:bb.a
middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.r, %n.vec
  br i1 %cmp.n, label %.preheader, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !382

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec36 = and i64 %i.r, -8                     ; 3 uses
  %i.ab = sub i64 0, %n.vec36
  %i.ac = getelementptr i8, ptr %i.g, i64 %i.ab   ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index37 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next40, %vec.epilog.vector.body ] ; 2 uses
  %i.ad = sub i64 0, %index37
  %next.gep38 = getelementptr i8, ptr %i.g, i64 %i.ad ; 2 uses
  %i.ae = getelementptr inbounds i8, ptr %next.gep38, i64 %i.m
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -7
  %wide.load39 = load <8 x i8>, ptr %i.af, align 1, !tbaa !8
  %i.ag = getelementptr i8, ptr %next.gep38, i64 -7
  store <8 x i8> %wide.load39, ptr %i.ag, align 1, !tbaa !8
  %index.next40 = add nuw i64 %index37, 8         ; 2 uses
  %i.ah = icmp eq i64 %index.next40, %n.vec36
  br i1 %i.ah, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !383

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n41 = icmp eq i64 %i.r, %n.vec36
  br i1 %cmp.n41, label %.preheader, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.01823.ph = phi ptr [ %i.g, %iter.check ], [ %i.t, %vec.epilog.iter.check ], [ %i.ac, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

.preheader:                                       ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %.018.lcssa = phi ptr [ %i.g, %bb.a ], [ %i.ac, %vec.epilog.middle.block ], [ %i.t, %middle.block ], [ %i.bf, %vec.epilog.scalar.ph ] ; 9 uses
  %.018.lcssa44 = ptrtoaddr ptr %.018.lcssa to i64
  %.not2124 = icmp ult ptr %.018.lcssa, %1
  br i1 %.not2124, label %._crit_edge, label %iter.check65

iter.check65:                                     ; preds = %.preheader
  %.018.lcssa46 = ptrtoint ptr %.018.lcssa to i64 ; 2 uses
  %i.ai = add i64 %.018.lcssa46, -1
  %i.aj = add i64 %i.b, -1
  %umin47 = tail call i64 @llvm.umin.i64(i64 %i.ai, i64 %i.aj)
  %i.ak = sub i64 %.018.lcssa46, %umin47          ; 7 uses
  %min.iters.check48 = icmp ult i64 %i.ak, 8
  br i1 %min.iters.check48, label %.lr.ph27.preheader, label %vector.memcheck43

vector.memcheck43:                                ; preds = %iter.check65
  %i.al = add i64 %i.i, %i.a
  %i.am = sub i64 %.018.lcssa44, %i.al
  %diff.check45 = icmp ugt i64 %i.am, -32
  br i1 %diff.check45, label %.lr.ph27.preheader, label %vector.main.loop.iter.check49

vector.main.loop.iter.check49:                    ; preds = %vector.memcheck43
  %min.iters.check50 = icmp ult i64 %i.ak, 32
  br i1 %min.iters.check50, label %vec.epilog.ph69, label %vector.ph51

vector.ph51:                                      ; preds = %vector.main.loop.iter.check49
  %n.mod.vf52 = and i64 %i.ak, 24
  %n.vec53 = and i64 %i.ak, -32                   ; 4 uses
  %i.an = sub i64 0, %n.vec53                     ; 2 uses
  %i.ao = getelementptr i8, ptr %i.j, i64 %i.an
  %i.ap = getelementptr i8, ptr %.018.lcssa, i64 %i.an
  br label %vector.body54

vector.body54:                                    ; preds = %vector.body54, %vector.ph51
  %index55 = phi i64 [ 0, %vector.ph51 ], [ %index.next60, %vector.body54 ] ; 2 uses
  %i.aq = sub i64 0, %index55                     ; 2 uses
  %next.gep56 = getelementptr i8, ptr %i.j, i64 %i.aq ; 2 uses
  %next.gep57 = getelementptr i8, ptr %.018.lcssa, i64 %i.aq ; 2 uses
  %i.ar = getelementptr i8, ptr %next.gep56, i64 -15
  %i.as = getelementptr i8, ptr %next.gep56, i64 -31
  %wide.load58 = load <16 x i8>, ptr %i.ar, align 1, !tbaa !8
  %wide.load59 = load <16 x i8>, ptr %i.as, align 1, !tbaa !8
  %i.at = getelementptr i8, ptr %next.gep57, i64 -15
  %i.au = getelementptr i8, ptr %next.gep57, i64 -31
  store <16 x i8> %wide.load58, ptr %i.at, align 1, !tbaa !8
  store <16 x i8> %wide.load59, ptr %i.au, align 1, !tbaa !8
  %index.next60 = add nuw i64 %index55, 32        ; 2 uses
  %i.av = icmp eq i64 %index.next60, %n.vec53
  br i1 %i.av, label %middle.block61, label %vector.body54, !llvm.loop !384

middle.block61:                                   ; preds = %vector.body54
  %cmp.n62 = icmp eq i64 %i.ak, %n.vec53
  br i1 %cmp.n62, label %._crit_edge, label %vec.epilog.iter.check67

vec.epilog.iter.check67:                          ; preds = %middle.block61
  %min.epilog.iters.check68 = icmp eq i64 %n.mod.vf52, 0
  br i1 %min.epilog.iters.check68, label %.lr.ph27.preheader, label %vec.epilog.ph69, !prof !382

vec.epilog.ph69:                                  ; preds = %vector.main.loop.iter.check49, %vec.epilog.iter.check67
  %vec.epilog.resume.val63 = phi i64 [ %n.vec53, %vec.epilog.iter.check67 ], [ 0, %vector.main.loop.iter.check49 ]
  %n.vec71 = and i64 %i.ak, -8                    ; 3 uses
  %i.aw = sub i64 0, %n.vec71                     ; 2 uses
  %i.ax = getelementptr i8, ptr %i.j, i64 %i.aw
  %i.ay = getelementptr i8, ptr %.018.lcssa, i64 %i.aw
  br label %vec.epilog.vector.body72

vec.epilog.vector.body72:                         ; preds = %vec.epilog.vector.body72, %vec.epilog.ph69
  %index73 = phi i64 [ %vec.epilog.resume.val63, %vec.epilog.ph69 ], [ %index.next77, %vec.epilog.vector.body72 ] ; 2 uses
  %i.az = sub i64 0, %index73                     ; 2 uses
  %next.gep74 = getelementptr i8, ptr %i.j, i64 %i.az
  %next.gep75 = getelementptr i8, ptr %.018.lcssa, i64 %i.az
  %i.ba = getelementptr i8, ptr %next.gep74, i64 -7
  %wide.load76 = load <8 x i8>, ptr %i.ba, align 1, !tbaa !8
  %i.bb = getelementptr i8, ptr %next.gep75, i64 -7
  store <8 x i8> %wide.load76, ptr %i.bb, align 1, !tbaa !8
  %index.next77 = add nuw i64 %index73, 8         ; 2 uses
  %i.bc = icmp eq i64 %index.next77, %n.vec71
  br i1 %i.bc, label %vec.epilog.middle.block78, label %vec.epilog.vector.body72, !llvm.loop !385

vec.epilog.middle.block78:                        ; preds = %vec.epilog.vector.body72
  %cmp.n79 = icmp eq i64 %i.ak, %n.vec71
  br i1 %cmp.n79, label %._crit_edge, label %.lr.ph27.preheader

.lr.ph27.preheader:                               ; preds = %vector.memcheck43, %iter.check65, %vec.epilog.iter.check67, %vec.epilog.middle.block78
  %.026.ph = phi ptr [ %i.j, %iter.check65 ], [ %i.j, %vector.memcheck43 ], [ %i.ao, %vec.epilog.iter.check67 ], [ %i.ax, %vec.epilog.middle.block78 ]
  %.125.ph = phi ptr [ %.018.lcssa, %iter.check65 ], [ %.018.lcssa, %vector.memcheck43 ], [ %i.ap, %vec.epilog.iter.check67 ], [ %i.ay, %vec.epilog.middle.block78 ]
  br label %.lr.ph27

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.01823 = phi ptr [ %i.bf, %vec.epilog.scalar.ph ], [ %.01823.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.bd = getelementptr inbounds i8, ptr %.01823, i64 %i.m
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !8
  store i8 %i.be, ptr %.01823, align 1, !tbaa !8
  %i.bf = getelementptr inbounds i8, ptr %.01823, i64 -1 ; 3 uses
  %.not = icmp ult ptr %i.bf, %i.l
  br i1 %.not, label %.preheader, label %vec.epilog.scalar.ph, !llvm.loop !386

.lr.ph27:                                         ; preds = %.lr.ph27.preheader, %.lr.ph27
  %.026 = phi ptr [ %i.bg, %.lr.ph27 ], [ %.026.ph, %.lr.ph27.preheader ] ; 2 uses
  %.125 = phi ptr [ %i.bi, %.lr.ph27 ], [ %.125.ph, %.lr.ph27.preheader ] ; 2 uses
  %i.bg = getelementptr inbounds i8, ptr %.026, i64 -1
  %i.bh = load i8, ptr %.026, align 1, !tbaa !8
  %i.bi = getelementptr inbounds i8, ptr %.125, i64 -1 ; 2 uses
  store i8 %i.bh, ptr %.125, align 1, !tbaa !8
  %.not21 = icmp ult ptr %i.bi, %1
  br i1 %.not21, label %._crit_edge, label %.lr.ph27, !llvm.loop !387

._crit_edge:                                      ; preds = %.lr.ph27, %middle.block61, %vec.epilog.middle.block78, %.preheader
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 2) i32 @isaligned(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #11 {
bb.a:
  %i.a = icmp sgt i32 %0, 1
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !12
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #29
  %sext = shl i64 %i.c, 32
  %i.d = ashr exact i64 %sext, 32
  %wide.trip.count = zext nneg i32 %0 to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !388

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.g = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.f) #29
  %.not = icmp eq i64 %i.g, %i.d
  br i1 %.not, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 1, %bb.a ], [ 1, %bb.b ], [ 0, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nofree nounwind uwtable
define dso_local double @score_calc_for_score(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !12
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #29
  %.fr = freeze i64 %i.b
  %i.c = trunc i64 %.fr to i32                    ; 3 uses
  %i.d = add i32 %0, -1
  %i.e = icmp sgt i32 %0, 1
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = add nsw i32 %i.c, -2                     ; 2 uses
  %i.g = icmp sgt i32 %i.c, 0
  %i.h = load i32, ptr @penalty, align 4
  %i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @n_dis, i64 96), align 16
  %i.j = sub nsw i32 %i.h, %i.i
  %i.k = sitofp i32 %i.j to double                ; 2 uses
  br i1 %i.g, label %.lr.ph.split.us.preheader, label %._crit_edge

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %wide.trip.count94 = zext nneg i32 %i.d to i64
  %wide.trip.count = zext nneg i32 %0 to i64
  br label %.lr.ph73.us

.loopexit.us:                                     ; preds = %._crit_edge.us.us
  %indvars.iv.next86 = add nuw nsw i64 %indvars.iv85, 1
  %exitcond95.not = icmp eq i64 %indvars.iv.next92, %wide.trip.count94
  br i1 %exitcond95.not, label %._crit_edge, label %.lr.ph73.us, !llvm.loop !389

.lr.ph73.us:                                      ; preds = %.loopexit.us, %.lr.ph.split.us.preheader
  %indvars.iv91 = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %indvars.iv.next92, %.loopexit.us ] ; 2 uses
  %indvars.iv85 = phi i64 [ 1, %.lr.ph.split.us.preheader ], [ %indvars.iv.next86, %.loopexit.us ] ; 2 uses
  %.05175.us = phi double [ 0.000000e+00, %.lr.ph.split.us.preheader ], [ %i.bb, %.loopexit.us ]
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, 1 ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv91
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !12   ; 2 uses
  br label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %._crit_edge.us.us, %.lr.ph73.us
  %indvars.iv87 = phi i64 [ %indvars.iv.next88, %._crit_edge.us.us ], [ %indvars.iv85, %.lr.ph73.us ] ; 2 uses
  %.15270.us.us = phi double [ %i.bb, %._crit_edge.us.us ], [ %.05175.us, %.lr.ph73.us ]
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv87
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !12   ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.i, %.lr.ph.us.us
  %.05062.us.us = phi double [ 0.000000e+00, %.lr.ph.us.us ], [ %.1.us.us, %bb.i ] ; 3 uses
  %.05361.us.us = phi i32 [ 0, %.lr.ph.us.us ], [ %i.bc, %bb.i ] ; 3 uses
  %.05660.us.us = phi i32 [ 0, %.lr.ph.us.us ], [ %.157.us.us, %bb.i ] ; 3 uses
  %i.p = sext i32 %.05361.us.us to i64            ; 5 uses
  %i.q = getelementptr inbounds i8, ptr %i.m, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !8     ; 2 uses
  %i.s = icmp eq i8 %i.r, 45
  br i1 %i.s, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = sext i8 %i.r to i64
  %i.u = getelementptr inbounds [512 x i8], ptr @amino_dis, i64 %i.t
  %i.v = getelementptr inbounds i8, ptr %i.o, i64 %i.p
  %i.w = load i8, ptr %i.v, align 1, !tbaa !8     ; 2 uses
  %i.x = sext i8 %i.w to i64
  %i.y = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !4
  %i.aa = sitofp i32 %i.z to double
  %i.ab = fadd double %.05062.us.us, %i.aa        ; 2 uses
  %i.ac = add nsw i32 %.05660.us.us, 1            ; 3 uses
  %i.ad = icmp eq i8 %i.w, 45
  br i1 %i.ad, label %.preheader, label %bb.i

.preheader:                                       ; preds = %bb.c, %.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader ], [ %i.p, %bb.c ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.ae = getelementptr inbounds i8, ptr %i.o, i64 %indvars.iv.next
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !8
  %i.ag = icmp eq i8 %i.af, 45
  br i1 %i.ag, label %.preheader, label %bb.d, !llvm.loop !390

bb.d:                                             ; preds = %.preheader
  %i.ah = fadd double %i.ab, %i.k                 ; 2 uses
  %i.ai = trunc nsw i64 %indvars.iv to i32        ; 2 uses
  %i.aj = icmp slt i32 %i.f, %i.ai
  br i1 %i.aj, label %._crit_edge.us.us, label %bb.i

bb.e:                                             ; preds = %bb.b
  %i.ak = getelementptr inbounds i8, ptr %i.o, i64 %i.p
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !8   ; 2 uses
  %i.am = icmp eq i8 %i.al, 45
  br i1 %i.am, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.an = sext i8 %i.al to i64
  %i.ao = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @amino_dis, i64 23040), i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !4
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %indvars.iv82 = phi i64 [ %indvars.iv.next83, %bb.g ], [ %i.p, %bb.f ] ; 2 uses
  %indvars.iv.next83 = add nsw i64 %indvars.iv82, 1 ; 2 uses
  %i.aq = getelementptr inbounds i8, ptr %i.m, i64 %indvars.iv.next83
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !8
  %i.as = icmp eq i8 %i.ar, 45
  br i1 %i.as, label %bb.g, label %bb.h, !llvm.loop !391

bb.h:                                             ; preds = %bb.g
  %i.at = sitofp i32 %i.ap to double
  %i.au = fadd double %.05062.us.us, %i.at
  %i.av = add nsw i32 %.05660.us.us, 1            ; 2 uses
  %i.aw = fadd double %i.au, %i.k                 ; 2 uses
  %i.ax = trunc nsw i64 %indvars.iv82 to i32      ; 2 uses
  %i.ay = icmp slt i32 %i.f, %i.ax
  br i1 %i.ay, label %._crit_edge.us.us, label %bb.i

._crit_edge.us.us:                                ; preds = %bb.i, %bb.h, %bb.d
  %.258.us.us = phi i32 [ %i.ac, %bb.d ], [ %i.av, %bb.h ], [ %.157.us.us, %bb.i ]
  %.2.us.us = phi double [ %i.ah, %bb.d ], [ %i.aw, %bb.h ], [ %.1.us.us, %bb.i ]
  %i.az = sitofp i32 %.258.us.us to double
  %i.ba = fdiv double %.2.us.us, %i.az
  %i.bb = fadd double %.15270.us.us, %i.ba        ; 3 uses
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87, 1 ; 2 uses
  %exitcond90.not = icmp eq i64 %indvars.iv.next88, %wide.trip.count
  br i1 %exitcond90.not, label %.loopexit.us, label %.lr.ph.us.us, !llvm.loop !392

bb.i:                                             ; preds = %bb.h, %bb.e, %bb.d, %bb.c
  %.157.us.us = phi i32 [ %.05660.us.us, %bb.e ], [ %i.av, %bb.h ], [ %i.ac, %bb.d ], [ %i.ac, %bb.c ] ; 2 uses
  %.3.us.us = phi i32 [ %.05361.us.us, %bb.e ], [ %i.ax, %bb.h ], [ %i.ai, %bb.d ], [ %.05361.us.us, %bb.c ]
  %.1.us.us = phi double [ %.05062.us.us, %bb.e ], [ %i.aw, %bb.h ], [ %i.ah, %bb.d ], [ %i.ab, %bb.c ] ; 2 uses
  %i.bc = add nsw i32 %.3.us.us, 1                ; 2 uses
  %i.bd = icmp slt i32 %i.bc, %i.c
  br i1 %i.bd, label %bb.b, label %._crit_edge.us.us, !llvm.loop !393

._crit_edge:                                      ; preds = %.loopexit.us, %.lr.ph, %bb.a
  %.051.lcssa = phi double [ 0.000000e+00, %bb.a ], [ +qnan, %.lr.ph ], [ %i.bb, %.loopexit.us ] ; 2 uses
  %i.be = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.bf = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.be, ptr noundef nonnull @.str.29, double noundef %.051.lcssa) #31 ; 0 uses
  %i.bg = sitofp i32 %0 to double                 ; 2 uses
  %i.bh = fadd nnan double %i.bg, -1.000000e+00
  %i.bi = fmul double %i.bh, %i.bg
  %i.bj = fmul double %i.bi, 5.000000e-01
  %i.bk = fdiv double %.051.lcssa, %i.bj
  %i.bl = fadd double %i.bk, 4.000000e+02
  ret double %i.bl
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @floatncpy(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #24 {
bb.a:
  %.not4 = icmp eq i32 %2, 0
  br i1 %.not4, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %1 to i64
  %i.c = zext i32 %2 to i64                       ; 2 uses
  %min.iters.check = icmp ult i32 %2, 8
  %i.d = sub i64 %i.b, %i.a
  %diff.check = icmp ugt i64 %i.d, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.preheader12, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.c, 4294967288               ; 4 uses
  %i.e = trunc nuw i64 %n.vec to i32
  %i.f = sub i32 %2, %i.e
  %i.g = shl nuw nsw i64 %n.vec, 2                ; 2 uses
  %i.h = getelementptr i8, ptr %1, i64 %i.g
  %i.i = getelementptr i8, ptr %0, i64 %i.g
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.j = shl i64 %index, 2                        ; 2 uses
  %next.gep = getelementptr i8, ptr %1, i64 %i.j  ; 2 uses
  %next.gep8 = getelementptr i8, ptr %0, i64 %i.j ; 2 uses
  %i.k = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x float>, ptr %next.gep, align 4, !tbaa !21
  %wide.load9 = load <4 x float>, ptr %i.k, align 4, !tbaa !21
  %i.l = getelementptr i8, ptr %next.gep8, i64 16
  store <4 x float> %wide.load, ptr %next.gep8, align 4, !tbaa !21
  store <4 x float> %wide.load9, ptr %i.l, align 4, !tbaa !21
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.m = icmp eq i64 %index.next, %n.vec
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !394

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.c
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader12

.lr.ph.preheader12:                               ; preds = %.lr.ph.preheader, %middle.block
  %.07.ph = phi i32 [ %2, %.lr.ph.preheader ], [ %i.f, %middle.block ] ; 4 uses
  %.026.ph = phi ptr [ %1, %.lr.ph.preheader ], [ %i.h, %middle.block ] ; 2 uses
  %.035.ph = phi ptr [ %0, %.lr.ph.preheader ], [ %i.i, %middle.block ] ; 2 uses
  %i.n = add nsw i32 %.07.ph, -1
  %xtraiter = and i32 %.07.ph, 7                  ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader12, %.lr.ph.prol
  %.07.prol = phi i32 [ %i.o, %.lr.ph.prol ], [ %.07.ph, %.lr.ph.preheader12 ]
  %.026.prol = phi ptr [ %i.p, %.lr.ph.prol ], [ %.026.ph, %.lr.ph.preheader12 ] ; 2 uses
  %.035.prol = phi ptr [ %i.r, %.lr.ph.prol ], [ %.035.ph, %.lr.ph.preheader12 ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader12 ]
  %i.o = add nsw i32 %.07.prol, -1                ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.026.prol, i64 4 ; 2 uses
  %i.q = load float, ptr %.026.prol, align 4, !tbaa !21
  %i.r = getelementptr inbounds nuw i8, ptr %.035.prol, i64 4 ; 2 uses
  store float %i.q, ptr %.035.prol, align 4, !tbaa !21
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !395

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader12
  %.07.unr = phi i32 [ %.07.ph, %.lr.ph.preheader12 ], [ %i.o, %.lr.ph.prol ]
  %.026.unr = phi ptr [ %.026.ph, %.lr.ph.preheader12 ], [ %i.p, %.lr.ph.prol ]
  %.035.unr = phi ptr [ %.035.ph, %.lr.ph.preheader12 ], [ %i.r, %.lr.ph.prol ]
  %i.s = icmp ult i32 %i.n, 7
  br i1 %i.s, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.07 = phi i32 [ %i.ao, %.lr.ph ], [ %.07.unr, %.lr.ph.prol.loopexit ]
  %.026 = phi ptr [ %i.ap, %.lr.ph ], [ %.026.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %.035 = phi ptr [ %i.ar, %.lr.ph ], [ %.035.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.026, i64 4
  %i.u = load float, ptr %.026, align 4, !tbaa !21
  %i.v = getelementptr inbounds nuw i8, ptr %.035, i64 4
  store float %i.u, ptr %.035, align 4, !tbaa !21
  %i.w = getelementptr inbounds nuw i8, ptr %.026, i64 8
  %i.x = load float, ptr %i.t, align 4, !tbaa !21
  %i.y = getelementptr inbounds nuw i8, ptr %.035, i64 8
  store float %i.x, ptr %i.v, align 4, !tbaa !21
  %i.z = getelementptr inbounds nuw i8, ptr %.026, i64 12
  %i.aa = load float, ptr %i.w, align 4, !tbaa !21
  %i.ab = getelementptr inbounds nuw i8, ptr %.035, i64 12
  store float %i.aa, ptr %i.y, align 4, !tbaa !21
  %i.ac = getelementptr inbounds nuw i8, ptr %.026, i64 16
  %i.ad = load float, ptr %i.z, align 4, !tbaa !21
  %i.ae = getelementptr inbounds nuw i8, ptr %.035, i64 16
  store float %i.ad, ptr %i.ab, align 4, !tbaa !21
  %i.af = getelementptr inbounds nuw i8, ptr %.026, i64 20
  %i.ag = load float, ptr %i.ac, align 4, !tbaa !21
  %i.ah = getelementptr inbounds nuw i8, ptr %.035, i64 20
  store float %i.ag, ptr %i.ae, align 4, !tbaa !21
  %i.ai = getelementptr inbounds nuw i8, ptr %.026, i64 24
  %i.aj = load float, ptr %i.af, align 4, !tbaa !21
  %i.ak = getelementptr inbounds nuw i8, ptr %.035, i64 24
  store float %i.aj, ptr %i.ah, align 4, !tbaa !21
  %i.al = getelementptr inbounds nuw i8, ptr %.026, i64 28
  %i.am = load float, ptr %i.ai, align 4, !tbaa !21
  %i.an = getelementptr inbounds nuw i8, ptr %.035, i64 28
  store float %i.am, ptr %i.ak, align 4, !tbaa !21
  %i.ao = add nsw i32 %.07, -8                    ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.026, i64 32
  %i.aq = load float, ptr %i.al, align 4, !tbaa !21
  %i.ar = getelementptr inbounds nuw i8, ptr %.035, i64 32
  store float %i.aq, ptr %i.an, align 4, !tbaa !21
  %.not.7 = icmp eq i32 %i.ao, 0
  br i1 %.not.7, label %._crit_edge, label %.lr.ph, !llvm.loop !396

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local float @score_calc_a(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #11 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !12
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #29
  %.fr = freeze i64 %i.b                          ; 2 uses
  %i.c = add nsw i32 %1, -1
  %i.d = icmp sgt i32 %1, 1
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = trunc i64 %.fr to i32
  %i.f = icmp sgt i32 %i.e, 0
  %i.g = load i32, ptr @penalty, align 4
  %i.h = sitofp i32 %i.g to double
  br i1 %i.f, label %.lr.ph.split.us.preheader, label %._crit_edge

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %wide.trip.count122 = zext nneg i32 %i.c to i64
  %wide.trip.count117 = zext nneg i32 %1 to i64
  %wide.trip.count = and i64 %.fr, 2147483647
  br label %.lr.ph97.us

.loopexit.us:                                     ; preds = %._crit_edge.us.us
  %indvars.iv.next113 = add nuw nsw i64 %indvars.iv112, 1
  %exitcond123.not = icmp eq i64 %indvars.iv.next120, %wide.trip.count122
  br i1 %exitcond123.not, label %._crit_edge.loopexit, label %.lr.ph97.us, !llvm.loop !397

.lr.ph97.us:                                      ; preds = %.loopexit.us, %.lr.ph.split.us.preheader
  %indvars.iv119 = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %indvars.iv.next120, %.loopexit.us ] ; 3 uses
  %indvars.iv112 = phi i64 [ 1, %.lr.ph.split.us.preheader ], [ %indvars.iv.next113, %.loopexit.us ] ; 2 uses
  %.077102.us = phi float [ 0.000000e+00, %.lr.ph.split.us.preheader ], [ %i.be, %.loopexit.us ]
  %.079101.us = phi i32 [ 0, %.lr.ph.split.us.preheader ], [ %i.bg, %.loopexit.us ]
  %indvars.iv.next120 = add nuw nsw i64 %indvars.iv119, 1 ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv119
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !52
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv119
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !12
  br label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %._crit_edge.us.us, %.lr.ph97.us
  %indvars.iv114 = phi i64 [ %indvars.iv.next115, %._crit_edge.us.us ], [ %indvars.iv112, %.lr.ph97.us ] ; 3 uses
  %.195.us.us = phi float [ %i.be, %._crit_edge.us.us ], [ %.077102.us, %.lr.ph97.us ]
  %.18093.us.us = phi i32 [ %i.bg, %._crit_edge.us.us ], [ %.079101.us, %.lr.ph97.us ]
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv114
  %i.n = load double, ptr %i.m, align 8, !tbaa !24 ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv114
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !12
  %i.q = fptrunc double %i.n to float
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.us.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %.lr.ph.us.us ] ; 3 uses
  %.291.us.us = phi float [ %i.be, %bb.b ], [ %.195.us.us, %.lr.ph.us.us ]
  %.28190.us.us = phi i32 [ %i.bg, %bb.b ], [ %.18093.us.us, %.lr.ph.us.us ]
  %.08388.us.us = phi i32 [ %i.y, %bb.b ], [ 0, %.lr.ph.us.us ] ; 4 uses
  %.08487.us.us = phi i32 [ %i.u, %bb.b ], [ 0, %.lr.ph.us.us ] ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv
  %i.s = load i8, ptr %i.r, align 1, !tbaa !8     ; 2 uses
  %i.t = icmp eq i8 %i.s, 45                      ; 7 uses
  %i.u = zext i1 %i.t to i32
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 %indvars.iv
  %i.w = load i8, ptr %i.v, align 1, !tbaa !8     ; 2 uses
  %i.x = icmp eq i8 %i.w, 45                      ; 4 uses
  %i.y = zext i1 %i.x to i32
  %i.z = xor i32 %.08487.us.us, 1                 ; 4 uses
  %i.aa = select i1 %i.t, i32 %i.z, i32 0
  %i.ab = xor i32 %.08388.us.us, 1                ; 3 uses
  %i.ac = select i1 %i.t, i32 0, i32 %.08487.us.us
  %i.ad = select i1 %i.t, i32 %i.z, i32 %.08487.us.us
  %i.ae = select i1 %i.t, i32 0, i32 %i.z
  %.v.us.us = select i1 %i.x, i32 %i.ae, i32 %i.ad
  %i.af = mul nuw nsw i32 %.v.us.us, %i.ab
  %i.ag = mul nuw nsw i32 %i.aa, %.08388.us.us
  %i.ah = select i1 %i.t, i32 %.08487.us.us, i32 0 ; 2 uses
  %i.ai = mul nuw nsw i32 %i.ah, %i.ab
  %i.aj = add nuw nsw i32 %i.ab, %.08388.us.us
  %i.ak = mul nuw nsw i32 %i.ac, %i.aj
  %i.al = add nuw nsw i32 %i.z, %i.ah
  %i.am = mul nuw nsw i32 %i.al, %.08388.us.us
  %i.an = add nuw nsw i32 %i.ak, %i.ag
  %i.ao = add nuw nsw i32 %i.an, %i.ai
  %i.ap = select i1 %i.x, i32 %i.ao, i32 %i.am
  %i.aq = add nuw nsw i32 %i.ap, %i.af
  %i.ar = uitofp nneg i32 %i.aq to float
  %i.as = fpext nnan ninf float %i.ar to double
  %i.at = fmul nnan double %i.as, 5.000000e-01
  %i.au = fmul double %i.at, %i.h
  %i.av = fpext float %.291.us.us to double
  %i.aw = tail call double @llvm.fmuladd.f64(double %i.au, double %i.n, double %i.av)
  %i.ax = fptrunc double %i.aw to float
  %i.ay = sext i8 %i.s to i64
  %i.az = getelementptr inbounds [512 x i8], ptr @amino_dis, i64 %i.ay
  %i.ba = sext i8 %i.w to i64
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.az, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !4
  %i.bd = sitofp i32 %i.bc to float
  %i.be = tail call float @llvm.fmuladd.f32(float %i.bd, float %i.q, float %i.ax) ; 4 uses
  %mulbool.demorgan.us.us = or i1 %i.t, %i.x
  %mulbool.us.us = xor i1 %mulbool.demorgan.us.us, true
  %i.bf = zext i1 %mulbool.us.us to i32
  %i.bg = add nsw i32 %.28190.us.us, %i.bf        ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us.us, label %bb.b, !llvm.loop !398

._crit_edge.us.us:                                ; preds = %bb.b
  %indvars.iv.next115 = add nuw nsw i64 %indvars.iv114, 1 ; 2 uses
  %exitcond118.not = icmp eq i64 %indvars.iv.next115, %wide.trip.count117
  br i1 %exitcond118.not, label %.loopexit.us, label %.lr.ph.us.us, !llvm.loop !399

._crit_edge.loopexit:                             ; preds = %.loopexit.us
  %i.bh = sitofp i32 %i.bg to float
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %._crit_edge.loopexit, %bb.a
  %.079.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.bh, %._crit_edge.loopexit ], [ 0.000000e+00, %.lr.ph ]
  %.077.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.be, %._crit_edge.loopexit ], [ 0.000000e+00, %.lr.ph ]
  %i.bi = fdiv float %.077.lcssa, %.079.lcssa
  %i.bj = fpext float %i.bi to double
  %i.bk = load i32, ptr @scoremtx, align 4, !tbaa !4
  %.not = icmp eq i32 %i.bk, 0
  %i.bl = uitofp i1 %.not to double
  %i.bm = tail call double @llvm.fmuladd.f64(double %i.bl, double 4.000000e+02, double %i.bj)
  %i.bn = fptrunc double %i.bm to float
  ret float %i.bn
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #10

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local float @score_calc_s(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #11 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !12
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #29
  %.fr = freeze i64 %i.b                          ; 2 uses
  %i.c = add nsw i32 %1, -1
  %i.d = icmp sgt i32 %1, 1
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = trunc i64 %.fr to i32
  %i.f = icmp sgt i32 %i.e, 0
  %i.g = load i32, ptr @penalty, align 4
  %i.h = sitofp i32 %i.g to double
  br i1 %i.f, label %.lr.ph.split.us.preheader, label %._crit_edge

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %wide.trip.count104 = zext nneg i32 %i.c to i64
  %wide.trip.count99 = zext nneg i32 %1 to i64
  %wide.trip.count = and i64 %.fr, 2147483647
  br label %.lr.ph79.us

.loopexit.us:                                     ; preds = %._crit_edge.us.us
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv94, 1
  %exitcond105.not = icmp eq i64 %indvars.iv.next102, %wide.trip.count104
  br i1 %exitcond105.not, label %._crit_edge.loopexit, label %.lr.ph79.us, !llvm.loop !400

.lr.ph79.us:                                      ; preds = %.loopexit.us, %.lr.ph.split.us.preheader
  %indvars.iv101 = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %indvars.iv.next102, %.loopexit.us ] ; 3 uses
  %indvars.iv94 = phi i64 [ 1, %.lr.ph.split.us.preheader ], [ %indvars.iv.next95, %.loopexit.us ] ; 2 uses
  %.06184.us = phi float [ 0.000000e+00, %.lr.ph.split.us.preheader ], [ %i.aw, %.loopexit.us ]
  %.06383.us = phi i32 [ 0, %.lr.ph.split.us.preheader ], [ %i.ay, %.loopexit.us ]
  %indvars.iv.next102 = add nuw nsw i64 %indvars.iv101, 1 ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv101
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !52
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv101
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !12
  br label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %._crit_edge.us.us, %.lr.ph79.us
  %indvars.iv96 = phi i64 [ %indvars.iv.next97, %._crit_edge.us.us ], [ %indvars.iv94, %.lr.ph79.us ] ; 3 uses
  %.177.us.us = phi float [ %i.aw, %._crit_edge.us.us ], [ %.06184.us, %.lr.ph79.us ]
  %.16475.us.us = phi i32 [ %i.ay, %._crit_edge.us.us ], [ %.06383.us, %.lr.ph79.us ]
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv96
  %i.n = load double, ptr %i.m, align 8, !tbaa !24 ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv96
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !12
  %i.q = fptrunc double %i.n to float
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.us.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %.lr.ph.us.us ] ; 3 uses
  %.273.us.us = phi float [ %i.aw, %bb.b ], [ %.177.us.us, %.lr.ph.us.us ]
  %.26572.us.us = phi i32 [ %i.ay, %bb.b ], [ %.16475.us.us, %.lr.ph.us.us ]
  %.06770.us.us = phi i32 [ %i.y, %bb.b ], [ 0, %.lr.ph.us.us ] ; 2 uses
  %.06869.us.us = phi i32 [ %i.u, %bb.b ], [ 0, %.lr.ph.us.us ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv
  %i.s = load i8, ptr %i.r, align 1, !tbaa !8     ; 2 uses
  %i.t = icmp eq i8 %i.s, 45                      ; 5 uses
  %i.u = zext i1 %i.t to i32
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 %indvars.iv
  %i.w = load i8, ptr %i.v, align 1, !tbaa !8     ; 2 uses
  %i.x = icmp eq i8 %i.w, 45                      ; 4 uses
  %i.y = zext i1 %i.x to i32
  %i.z = xor i32 %.06869.us.us, 1                 ; 3 uses
  %i.aa = xor i32 %.06770.us.us, 1                ; 2 uses
  %i.ab = select i1 %i.t, i32 0, i32 %.06869.us.us
  %i.ac = mul nuw nsw i32 %i.ab, %i.aa
  %i.ad = select i1 %i.t, i32 %i.z, i32 %.06869.us.us
  %i.ae = select i1 %i.t, i32 0, i32 %i.z
  %.v.us.us = select i1 %i.x, i32 %i.ae, i32 %i.ad
  %i.af = mul nuw nsw i32 %.v.us.us, %i.aa
  %i.ag = mul nuw nsw i32 %i.z, %.06770.us.us
  %i.ah = select i1 %i.x, i32 %i.ac, i32 %i.ag
  %i.ai = add nuw nsw i32 %i.ah, %i.af
  %i.aj = uitofp nneg i32 %i.ai to float
  %i.ak = fpext nnan ninf float %i.aj to double
  %i.al = fmul nnan double %i.ak, 5.000000e-01
  %i.am = fmul double %i.al, %i.h
  %i.an = fpext float %.273.us.us to double
  %i.ao = tail call double @llvm.fmuladd.f64(double %i.am, double %i.n, double %i.an)
  %i.ap = fptrunc double %i.ao to float
  %i.aq = sext i8 %i.s to i64
  %i.ar = getelementptr inbounds [512 x i8], ptr @amino_dis, i64 %i.aq
  %i.as = sext i8 %i.w to i64
  %i.at = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4, !tbaa !4
  %i.av = sitofp i32 %i.au to float
  %i.aw = tail call float @llvm.fmuladd.f32(float %i.av, float %i.q, float %i.ap) ; 4 uses
  %mulbool.demorgan.us.us = or i1 %i.t, %i.x
  %mulbool.us.us = xor i1 %mulbool.demorgan.us.us, true
  %i.ax = zext i1 %mulbool.us.us to i32
  %i.ay = add nsw i32 %.26572.us.us, %i.ax        ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us.us, label %bb.b, !llvm.loop !401

._crit_edge.us.us:                                ; preds = %bb.b
  %indvars.iv.next97 = add nuw nsw i64 %indvars.iv96, 1 ; 2 uses
  %exitcond100.not = icmp eq i64 %indvars.iv.next97, %wide.trip.count99
  br i1 %exitcond100.not, label %.loopexit.us, label %.lr.ph.us.us, !llvm.loop !402

._crit_edge.loopexit:                             ; preds = %.loopexit.us
  %i.az = sitofp i32 %i.ay to float
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %._crit_edge.loopexit, %bb.a
  %.063.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.az, %._crit_edge.loopexit ], [ 0.000000e+00, %.lr.ph ]
  %.061.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.aw, %._crit_edge.loopexit ], [ 0.000000e+00, %.lr.ph ]
  %i.ba = fdiv float %.061.lcssa, %.063.lcssa
  %i.bb = fadd float %i.ba, 4.000000e+02
  ret float %i.bb
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local double @score_calc_for_score_s(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #11 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !12
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #29
  %.fr = freeze i64 %i.b                          ; 2 uses
  %i.c = add nsw i32 %0, -1
  %i.d = icmp sgt i32 %0, 1
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = trunc i64 %.fr to i32
  %i.f = icmp sgt i32 %i.e, 0
  %i.g = load i32, ptr @penalty, align 4
  %i.h = sitofp i32 %i.g to double
  br i1 %i.f, label %.lr.ph.split.us.preheader, label %._crit_edge

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %wide.trip.count97 = zext nneg i32 %i.c to i64
  %wide.trip.count92 = zext nneg i32 %0 to i64
  %wide.trip.count = and i64 %.fr, 2147483647
  br label %.preheader.lr.ph.us

.loopexit.us:                                     ; preds = %._crit_edge.us.us
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87, 1
  %exitcond98.not = icmp eq i64 %indvars.iv.next95, %wide.trip.count97
  br i1 %exitcond98.not, label %._crit_edge.loopexit, label %.preheader.lr.ph.us, !llvm.loop !403

.preheader.lr.ph.us:                              ; preds = %.loopexit.us, %.lr.ph.split.us.preheader
  %indvars.iv94 = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %indvars.iv.next95, %.loopexit.us ] ; 2 uses
  %indvars.iv87 = phi i64 [ 1, %.lr.ph.split.us.preheader ], [ %indvars.iv.next88, %.loopexit.us ] ; 2 uses
  %.078.us = phi float [ 0.000000e+00, %.lr.ph.split.us.preheader ], [ %i.aq, %.loopexit.us ]
  %.05776.us = phi i32 [ 0, %.lr.ph.split.us.preheader ], [ %i.as, %.loopexit.us ]
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv94, 1 ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv94
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !12
  br label %.preheader.us.us

.preheader.us.us:                                 ; preds = %._crit_edge.us.us, %.preheader.lr.ph.us
  %indvars.iv89 = phi i64 [ %indvars.iv.next90, %._crit_edge.us.us ], [ %indvars.iv87, %.preheader.lr.ph.us ] ; 2 uses
  %.172.us.us = phi float [ %i.aq, %._crit_edge.us.us ], [ %.078.us, %.preheader.lr.ph.us ]
  %.15871.us.us = phi i32 [ %i.as, %._crit_edge.us.us ], [ %.05776.us, %.preheader.lr.ph.us ]
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv89
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !12
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.preheader.us.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %.preheader.us.us ] ; 3 uses
  %.268.us.us = phi float [ %i.aq, %bb.b ], [ %.172.us.us, %.preheader.us.us ]
  %.25967.us.us = phi i32 [ %i.as, %bb.b ], [ %.15871.us.us, %.preheader.us.us ]
  %.06166.us.us = phi i32 [ %i.t, %bb.b ], [ 0, %.preheader.us.us ] ; 2 uses
  %.06265.us.us = phi i32 [ %i.p, %bb.b ], [ 0, %.preheader.us.us ] ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %indvars.iv
  %i.n = load i8, ptr %i.m, align 1, !tbaa !8     ; 2 uses
  %i.o = icmp eq i8 %i.n, 45                      ; 5 uses
  %i.p = zext i1 %i.o to i32
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv
  %i.r = load i8, ptr %i.q, align 1, !tbaa !8     ; 2 uses
  %i.s = icmp eq i8 %i.r, 45                      ; 4 uses
  %i.t = zext i1 %i.s to i32
  %i.u = xor i32 %.06265.us.us, 1                 ; 3 uses
  %i.v = xor i32 %.06166.us.us, 1                 ; 2 uses
  %i.w = select i1 %i.o, i32 0, i32 %.06265.us.us
  %i.x = mul nuw nsw i32 %i.w, %i.v
  %i.y = select i1 %i.o, i32 %i.u, i32 %.06265.us.us
  %i.z = select i1 %i.o, i32 0, i32 %i.u
  %.v.us.us = select i1 %i.s, i32 %i.z, i32 %i.y
  %i.aa = mul nuw nsw i32 %.v.us.us, %i.v
  %i.ab = mul nuw nsw i32 %i.u, %.06166.us.us
  %i.ac = select i1 %i.s, i32 %i.x, i32 %i.ab
  %i.ad = add nuw nsw i32 %i.ac, %i.aa
  %i.ae = uitofp nneg i32 %i.ad to float
  %i.af = fpext nnan ninf float %i.ae to double
  %i.ag = fmul nnan double %i.af, 5.000000e-01
  %i.ah = fpext float %.268.us.us to double
  %i.ai = tail call double @llvm.fmuladd.f64(double %i.ag, double %i.h, double %i.ah)
  %i.aj = fptrunc double %i.ai to float
  %i.ak = sext i8 %i.n to i64
  %i.al = getelementptr inbounds [512 x i8], ptr @amino_dis, i64 %i.ak
  %i.am = sext i8 %i.r to i64
  %i.an = getelementptr inbounds [4 x i8], ptr %i.al, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !4
  %i.ap = sitofp i32 %i.ao to float
  %i.aq = fadd float %i.ap, %i.aj                 ; 4 uses
  %mulbool.demorgan.us.us = or i1 %i.o, %i.s
  %mulbool.us.us = xor i1 %mulbool.demorgan.us.us, true
  %i.ar = zext i1 %mulbool.us.us to i32
  %i.as = add nsw i32 %.25967.us.us, %i.ar        ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us.us, label %bb.b, !llvm.loop !404

._crit_edge.us.us:                                ; preds = %bb.b
  %indvars.iv.next90 = add nuw nsw i64 %indvars.iv89, 1 ; 2 uses
  %exitcond93.not = icmp eq i64 %indvars.iv.next90, %wide.trip.count92
  br i1 %exitcond93.not, label %.loopexit.us, label %.preheader.us.us, !llvm.loop !405

._crit_edge.loopexit:                             ; preds = %.loopexit.us
  %i.at = fpext float %i.aq to double
  %i.au = sitofp i32 %i.as to double
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %._crit_edge.loopexit, %bb.a
  %.057.lcssa = phi double [ 0.000000e+00, %bb.a ], [ %i.au, %._crit_edge.loopexit ], [ 0.000000e+00, %.lr.ph ]
  %.0.lcssa = phi double [ 0.000000e+00, %bb.a ], [ %i.at, %._crit_edge.loopexit ], [ 0.000000e+00, %.lr.ph ]
  %i.av = fdiv double %.0.lcssa, %.057.lcssa
  %i.aw = fadd double %i.av, 4.000000e+02
  ret double %i.aw
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local double @SSPscore___(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #11 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !12
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #29
  %.fr = freeze i64 %i.b                          ; 2 uses
  %i.c = icmp sgt i32 %0, 0
  br i1 %i.c, label %.lr.ph72, label %._crit_edge

.lr.ph72:                                         ; preds = %bb.a
  %i.d = trunc i64 %.fr to i32
  %i.e = icmp sgt i32 %i.d, 0
  %i.f = sext i32 %2 to i64
  %i.g = getelementptr inbounds [8 x i8], ptr %1, i64 %i.f
  %i.h = load i32, ptr @penalty, align 4
  %i.i = sitofp i32 %i.h to double
  br i1 %i.e, label %.lr.ph72.split.us.preheader, label %._crit_edge

.lr.ph72.split.us.preheader:                      ; preds = %.lr.ph72
  %i.j = zext i32 %2 to i64
  %wide.trip.count81 = zext nneg i32 %0 to i64
  %wide.trip.count = and i64 %.fr, 2147483647
  br label %.lr.ph72.split.us

.lr.ph72.split.us:                                ; preds = %.lr.ph72.split.us.preheader, %..loopexit_crit_edge.us
  %indvars.iv78 = phi i64 [ 0, %.lr.ph72.split.us.preheader ], [ %indvars.iv.next79, %..loopexit_crit_edge.us ] ; 3 uses
  %.071.us = phi float [ 0.000000e+00, %.lr.ph72.split.us.preheader ], [ %.2.us, %..loopexit_crit_edge.us ] ; 2 uses
  %i.k = icmp eq i64 %indvars.iv78, %i.j
  br i1 %i.k, label %..loopexit_crit_edge.us, label %.preheader.us

bb.b:                                             ; preds = %.preheader.us, %bb.b
  %indvars.iv = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %.166.us = phi float [ %.071.us, %.preheader.us ], [ %i.az, %bb.b ]
  %.05963.us = phi i32 [ 0, %.preheader.us ], [ %i.s, %bb.b ] ; 3 uses
  %.06062.us = phi i32 [ 0, %.preheader.us ], [ %i.o, %bb.b ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.ba, i64 %indvars.iv
  %i.m = load i8, ptr %i.l, align 1, !tbaa !8     ; 2 uses
  %i.n = icmp eq i8 %i.m, 45                      ; 5 uses
  %i.o = zext i1 %i.n to i32
  %i.p = getelementptr inbounds nuw i8, ptr %i.bc, i64 %indvars.iv
  %i.q = load i8, ptr %i.p, align 1, !tbaa !8     ; 2 uses
  %i.r = icmp eq i8 %i.q, 45                      ; 5 uses
  %i.s = zext i1 %i.r to i32
  %i.t = xor i32 %.06062.us, 1                    ; 3 uses
  %i.u = select i1 %i.n, i32 %i.t, i32 0
  %i.v = xor i32 %.05963.us, 1                    ; 2 uses
  %i.w = select i1 %i.n, i32 0, i32 %.06062.us
  %i.x = mul nuw nsw i32 %i.w, %i.v
  %i.y = select i1 %i.n, i32 %i.t, i32 %.06062.us
  %i.z = select i1 %i.n, i32 0, i32 %i.t          ; 2 uses
  %.v.us = select i1 %i.r, i32 %i.z, i32 %i.y
  %i.aa = mul nuw nsw i32 %.v.us, %i.v
  %i.ab = mul nuw nsw i32 %i.z, %.05963.us
  %i.ac = select i1 %i.r, i32 0, i32 %i.ab
  %i.ad = add nuw nsw i32 %i.aa, %i.ac
  %i.ae = uitofp nneg i32 %i.ad to double
  %i.af = mul nuw nsw i32 %i.u, %.05963.us
  %i.ag = uitofp nneg i32 %i.af to double
  %i.ah = select i1 %i.r, double 0.000000e+00, double %i.ag
  %i.ai = tail call double @llvm.fmuladd.f64(double %i.ah, double 2.000000e+00, double %i.ae)
  %i.aj = uitofp nneg i32 %i.x to double
  %i.ak = select i1 %i.r, double %i.aj, double 0.000000e+00
  %i.al = tail call double @llvm.fmuladd.f64(double %i.ak, double 2.000000e+00, double %i.ai)
  %i.am = fptosi double %i.al to i32
  %i.an = sitofp i32 %i.am to float
  %i.ao = fpext nnan ninf float %i.an to double
  %i.ap = fmul nnan double %i.ao, 5.000000e-01
  %i.aq = fpext float %.166.us to double
  %i.ar = tail call double @llvm.fmuladd.f64(double %i.ap, double %i.i, double %i.aq)
  %i.as = fptrunc double %i.ar to float
  %i.at = sext i8 %i.m to i64
  %i.au = getelementptr inbounds [512 x i8], ptr @amino_dis, i64 %i.at
  %i.av = sext i8 %i.q to i64
  %i.aw = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.av
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !4
  %i.ay = sitofp i32 %i.ax to float
  %i.az = fadd float %i.ay, %i.as                 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %..loopexit_crit_edge.us, label %bb.b, !llvm.loop !406

..loopexit_crit_edge.us:                          ; preds = %bb.b, %.lr.ph72.split.us
  %.2.us = phi float [ %.071.us, %.lr.ph72.split.us ], [ %i.az, %bb.b ] ; 2 uses
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1 ; 2 uses
  %exitcond82.not = icmp eq i64 %indvars.iv.next79, %wide.trip.count81
  br i1 %exitcond82.not, label %._crit_edge.loopexit, label %.lr.ph72.split.us, !llvm.loop !407

.preheader.us:                                    ; preds = %.lr.ph72.split.us
  %i.ba = load ptr, ptr %i.g, align 8, !tbaa !12
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv78
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !12
  br label %bb.b

._crit_edge.loopexit:                             ; preds = %..loopexit_crit_edge.us
  %i.bd = fpext float %.2.us to double
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph72, %._crit_edge.loopexit, %bb.a
  %.0.lcssa = phi double [ 0.000000e+00, %bb.a ], [ %i.bd, %._crit_edge.loopexit ], [ 0.000000e+00, %.lr.ph72 ]
  ret double %.0.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local double @SSPscore(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #11 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !12
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #29
  %.fr = freeze i64 %i.b                          ; 2 uses
  %i.c = add nsw i32 %0, -1
  %i.d = icmp sgt i32 %0, 1
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = trunc i64 %.fr to i32
  %i.f = icmp sgt i32 %i.e, 0
  %i.g = load i32, ptr @penalty, align 4
  %i.h = sitofp i32 %i.g to double
  br i1 %i.f, label %.lr.ph.split.us.preheader, label %._crit_edge

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %wide.trip.count94 = zext nneg i32 %i.c to i64
  %wide.trip.count89 = zext nneg i32 %0 to i64
  %wide.trip.count = and i64 %.fr, 2147483647
  br label %.preheader.lr.ph.us

.loopexit.us:                                     ; preds = %._crit_edge.us.us
  %indvars.iv.next85 = add nuw nsw i64 %indvars.iv84, 1
  %exitcond95.not = icmp eq i64 %indvars.iv.next92, %wide.trip.count94
  br i1 %exitcond95.not, label %._crit_edge.loopexit, label %.preheader.lr.ph.us, !llvm.loop !408

.preheader.lr.ph.us:                              ; preds = %.loopexit.us, %.lr.ph.split.us.preheader
  %indvars.iv91 = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %indvars.iv.next92, %.loopexit.us ] ; 2 uses
  %indvars.iv84 = phi i64 [ 1, %.lr.ph.split.us.preheader ], [ %indvars.iv.next85, %.loopexit.us ] ; 2 uses
  %.077.us = phi float [ 0.000000e+00, %.lr.ph.split.us.preheader ], [ %i.aq, %.loopexit.us ]
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, 1 ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv91
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !12
  br label %.preheader.us.us

.preheader.us.us:                                 ; preds = %._crit_edge.us.us, %.preheader.lr.ph.us
  %indvars.iv86 = phi i64 [ %indvars.iv.next87, %._crit_edge.us.us ], [ %indvars.iv84, %.preheader.lr.ph.us ] ; 2 uses
  %.171.us.us = phi float [ %i.aq, %._crit_edge.us.us ], [ %.077.us, %.preheader.lr.ph.us ]
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv86
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !12
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.preheader.us.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %.preheader.us.us ] ; 3 uses
  %.267.us.us = phi float [ %i.aq, %bb.b ], [ %.171.us.us, %.preheader.us.us ]
  %.06065.us.us = phi i32 [ %i.t, %bb.b ], [ 0, %.preheader.us.us ] ; 2 uses
  %.06164.us.us = phi i32 [ %i.p, %bb.b ], [ 0, %.preheader.us.us ] ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %indvars.iv
  %i.n = load i8, ptr %i.m, align 1, !tbaa !8     ; 2 uses
  %i.o = icmp eq i8 %i.n, 45                      ; 4 uses
  %i.p = zext i1 %i.o to i32
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv
  %i.r = load i8, ptr %i.q, align 1, !tbaa !8     ; 2 uses
  %i.s = icmp eq i8 %i.r, 45                      ; 3 uses
  %i.t = zext i1 %i.s to i32
  %i.u = xor i32 %.06164.us.us, 1                 ; 3 uses
  %i.v = xor i32 %.06065.us.us, 1                 ; 2 uses
  %i.w = select i1 %i.o, i32 0, i32 %.06164.us.us
  %i.x = mul nuw nsw i32 %i.w, %i.v
  %i.y = select i1 %i.o, i32 %i.u, i32 %.06164.us.us
  %i.z = select i1 %i.o, i32 0, i32 %i.u
  %.v.us.us = select i1 %i.s, i32 %i.z, i32 %i.y
  %i.aa = mul nuw nsw i32 %.v.us.us, %i.v
  %i.ab = mul nuw nsw i32 %i.u, %.06065.us.us
  %i.ac = select i1 %i.s, i32 %i.x, i32 %i.ab
  %i.ad = add nuw nsw i32 %i.ac, %i.aa
  %i.ae = uitofp nneg i32 %i.ad to float
  %i.af = fpext nnan ninf float %i.ae to double
  %i.ag = fmul nnan double %i.af, 5.000000e-01
  %i.ah = fpext float %.267.us.us to double
  %i.ai = tail call double @llvm.fmuladd.f64(double %i.ag, double %i.h, double %i.ah)
  %i.aj = fptrunc double %i.ai to float
  %i.ak = sext i8 %i.n to i64
  %i.al = getelementptr inbounds [512 x i8], ptr @amino_dis, i64 %i.ak
  %i.am = sext i8 %i.r to i64
  %i.an = getelementptr inbounds [4 x i8], ptr %i.al, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !4
  %i.ap = sitofp i32 %i.ao to float
  %i.aq = fadd float %i.ap, %i.aj                 ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us.us, label %bb.b, !llvm.loop !409

._crit_edge.us.us:                                ; preds = %bb.b
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, 1 ; 2 uses
  %exitcond90.not = icmp eq i64 %indvars.iv.next87, %wide.trip.count89
  br i1 %exitcond90.not, label %.loopexit.us, label %.preheader.us.us, !llvm.loop !410

._crit_edge.loopexit:                             ; preds = %.loopexit.us
  %i.ar = fpext float %i.aq to double
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %._crit_edge.loopexit, %bb.a
  %.0.lcssa = phi double [ 0.000000e+00, %bb.a ], [ %i.ar, %._crit_edge.loopexit ], [ 0.000000e+00, %.lr.ph ]
  ret double %.0.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local double @DSPscore(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #11 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !12
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #29
  %.fr = freeze i64 %i.b
  %i.c = trunc i64 %.fr to i32                    ; 3 uses
  %i.d = add nsw i32 %0, -1
  %i.e = icmp sgt i32 %0, 1
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = add nsw i32 %i.c, -2                     ; 2 uses
  %i.g = icmp sgt i32 %i.c, 0
  %i.h = load i32, ptr @penalty, align 4
  %i.i = sitofp i32 %i.h to double                ; 2 uses
  br i1 %i.g, label %.lr.ph.split.us.preheader, label %._crit_edge

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %wide.trip.count108 = zext nneg i32 %i.d to i64
  %wide.trip.count = zext nneg i32 %0 to i64
  br label %.lr.ph84.us

.loopexit.us:                                     ; preds = %._crit_edge75.us.us
  %indvars.iv.next101 = add nuw nsw i64 %indvars.iv100, 1
  %exitcond109.not = icmp eq i64 %indvars.iv.next106, %wide.trip.count108
  br i1 %exitcond109.not, label %._crit_edge, label %.lr.ph84.us, !llvm.loop !411

.lr.ph84.us:                                      ; preds = %.loopexit.us, %.lr.ph.split.us.preheader
  %indvars.iv105 = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %indvars.iv.next106, %.loopexit.us ] ; 2 uses
  %indvars.iv100 = phi i64 [ 1, %.lr.ph.split.us.preheader ], [ %indvars.iv.next101, %.loopexit.us ] ; 2 uses
  %.05486.us = phi double [ 0.000000e+00, %.lr.ph.split.us.preheader ], [ %i.bk, %.loopexit.us ]
  %indvars.iv.next106 = add nuw nsw i64 %indvars.iv105, 1 ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv105
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !12   ; 4 uses
  br label %.lr.ph74.us.us

.lr.ph74.us.us:                                   ; preds = %._crit_edge75.us.us, %.lr.ph84.us
  %indvars.iv102 = phi i64 [ %indvars.iv.next103, %._crit_edge75.us.us ], [ %indvars.iv100, %.lr.ph84.us ] ; 2 uses
  %.15581.us.us = phi double [ %i.bk, %._crit_edge75.us.us ], [ %.05486.us, %.lr.ph84.us ]
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv102
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !12   ; 5 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %.lr.ph74.us.us
  %.05372.us.us = phi double [ 0.000000e+00, %.lr.ph74.us.us ], [ %.3.us.us, %bb.g ] ; 3 uses
  %.05671.us.us = phi i32 [ 0, %.lr.ph74.us.us ], [ %i.bv, %bb.g ] ; 7 uses
  %i.n = sext i32 %.05671.us.us to i64            ; 3 uses
  %i.o = getelementptr inbounds i8, ptr %i.k, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !tbaa !8     ; 2 uses
  %i.q = icmp eq i8 %i.p, 45
  br i1 %i.q, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = sext i8 %i.p to i64
  %i.s = getelementptr inbounds [512 x i8], ptr @amino_dis, i64 %i.r
  %i.t = getelementptr inbounds i8, ptr %i.m, i64 %i.n
  %i.u = load i8, ptr %i.t, align 1, !tbaa !8     ; 2 uses
  %i.v = sext i8 %i.u to i64
  %i.w = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !4
  %i.y = sitofp i32 %i.x to double
  %i.z = fadd double %.05372.us.us, %i.y          ; 2 uses
  %i.aa = icmp eq i8 %i.u, 45
  br i1 %i.aa, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.ab = fadd double %i.z, %i.i                  ; 2 uses
  %i.ac = add nsw i32 %.05671.us.us, 1
  %i.ad = sext i32 %i.ac to i64                   ; 2 uses
  %i.ae = getelementptr inbounds i8, ptr %i.m, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !8
  %i.ag = icmp eq i8 %i.af, 45
  br i1 %i.ag, label %.lr.ph.us.us, label %._crit_edge.us.us

._crit_edge.us.us.loopexit:                       ; preds = %.lr.ph.us.us
  %i.ah = trunc nsw i64 %indvars.iv to i32
  br label %._crit_edge.us.us

._crit_edge.us.us:                                ; preds = %._crit_edge.us.us.loopexit, %bb.d
  %.258.lcssa.us.us = phi i32 [ %.05671.us.us, %bb.d ], [ %i.ah, %._crit_edge.us.us.loopexit ] ; 2 uses
  %.2.lcssa.us.us = phi double [ %i.ab, %bb.d ], [ %i.aq, %._crit_edge.us.us.loopexit ] ; 2 uses
  %i.ai = icmp sgt i32 %.258.lcssa.us.us, %i.f
  br i1 %i.ai, label %._crit_edge75.us.us, label %bb.g

.lr.ph.us.us:                                     ; preds = %bb.d, %.lr.ph.us.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.us.us ], [ %i.ad, %bb.d ] ; 3 uses
  %.263.us.us = phi double [ %i.aq, %.lr.ph.us.us ], [ %i.ab, %bb.d ]
  %i.aj = getelementptr inbounds i8, ptr %i.k, i64 %indvars.iv
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !8
  %i.al = sext i8 %i.ak to i64
  %i.am = getelementptr inbounds [512 x i8], ptr @amino_dis, i64 %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 180
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !4
  %i.ap = sitofp i32 %i.ao to double
  %i.aq = fadd double %.263.us.us, %i.ap          ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.ar = getelementptr inbounds i8, ptr %i.m, i64 %indvars.iv.next
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !8
  %i.at = icmp eq i8 %i.as, 45
  br i1 %i.at, label %.lr.ph.us.us, label %._crit_edge.us.us.loopexit, !llvm.loop !412

bb.e:                                             ; preds = %bb.b
  %i.au = getelementptr inbounds i8, ptr %i.m, i64 %i.n
  %i.av = load i8, ptr %i.au, align 1, !tbaa !8   ; 2 uses
  %i.aw = icmp eq i8 %i.av, 45
  br i1 %i.aw, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ax = sext i8 %i.av to i64
  %i.ay = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @amino_dis, i64 23040), i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !4
  %i.ba = sitofp i32 %i.az to double
  %i.bb = fadd double %.05372.us.us, %i.ba
  %i.bc = fadd double %i.bb, %i.i                 ; 2 uses
  %i.bd = add nsw i32 %.05671.us.us, 1
  %i.be = sext i32 %i.bd to i64                   ; 2 uses
  %i.bf = getelementptr inbounds i8, ptr %i.k, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !8
  %i.bh = icmp eq i8 %i.bg, 45
  br i1 %i.bh, label %.lr.ph67.us.us, label %._crit_edge68.us.us

._crit_edge68.us.us.loopexit:                     ; preds = %.lr.ph67.us.us
  %i.bi = trunc nsw i64 %indvars.iv97 to i32
  br label %._crit_edge68.us.us

._crit_edge68.us.us:                              ; preds = %._crit_edge68.us.us.loopexit, %bb.f
  %.157.lcssa.us.us = phi i32 [ %.05671.us.us, %bb.f ], [ %i.bi, %._crit_edge68.us.us.loopexit ] ; 2 uses
  %.1.lcssa.us.us = phi double [ %i.bc, %bb.f ], [ %i.br, %._crit_edge68.us.us.loopexit ] ; 2 uses
  %i.bj = icmp sgt i32 %.157.lcssa.us.us, %i.f
  br i1 %i.bj, label %._crit_edge75.us.us, label %bb.g

._crit_edge75.us.us:                              ; preds = %bb.g, %._crit_edge68.us.us, %._crit_edge.us.us
  %.4.us.us = phi double [ %.2.lcssa.us.us, %._crit_edge.us.us ], [ %.1.lcssa.us.us, %._crit_edge68.us.us ], [ %.3.us.us, %bb.g ]
  %i.bk = fadd double %.15581.us.us, %.4.us.us    ; 3 uses
  %indvars.iv.next103 = add nuw nsw i64 %indvars.iv102, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next103, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit.us, label %.lr.ph74.us.us, !llvm.loop !413

.lr.ph67.us.us:                                   ; preds = %bb.f, %.lr.ph67.us.us
  %indvars.iv97 = phi i64 [ %indvars.iv.next98, %.lr.ph67.us.us ], [ %i.be, %bb.f ] ; 3 uses
  %.165.us.us = phi double [ %i.br, %.lr.ph67.us.us ], [ %i.bc, %bb.f ]
  %i.bl = getelementptr inbounds i8, ptr %i.m, i64 %indvars.iv97
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !8
  %i.bn = sext i8 %i.bm to i64
  %i.bo = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @amino_dis, i64 23040), i64 %i.bn
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !4
  %i.bq = sitofp i32 %i.bp to double
  %i.br = fadd double %.165.us.us, %i.bq          ; 2 uses
  %indvars.iv.next98 = add nsw i64 %indvars.iv97, 1 ; 2 uses
  %i.bs = getelementptr inbounds i8, ptr %i.k, i64 %indvars.iv.next98
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !8
  %i.bu = icmp eq i8 %i.bt, 45
  br i1 %i.bu, label %.lr.ph67.us.us, label %._crit_edge68.us.us.loopexit, !llvm.loop !414

bb.g:                                             ; preds = %._crit_edge68.us.us, %bb.e, %._crit_edge.us.us, %bb.c
  %.359.us.us = phi i32 [ %.05671.us.us, %bb.e ], [ %.157.lcssa.us.us, %._crit_edge68.us.us ], [ %.258.lcssa.us.us, %._crit_edge.us.us ], [ %.05671.us.us, %bb.c ]
  %.3.us.us = phi double [ %.05372.us.us, %bb.e ], [ %.1.lcssa.us.us, %._crit_edge68.us.us ], [ %.2.lcssa.us.us, %._crit_edge.us.us ], [ %i.z, %bb.c ] ; 2 uses
  %i.bv = add nsw i32 %.359.us.us, 1              ; 2 uses
  %i.bw = icmp slt i32 %i.bv, %i.c
  br i1 %i.bw, label %bb.b, label %._crit_edge75.us.us, !llvm.loop !415

._crit_edge:                                      ; preds = %.loopexit.us, %.lr.ph, %bb.a
  %.054.lcssa = phi double [ 0.000000e+00, %bb.a ], [ 0.000000e+00, %.lr.ph ], [ %i.bk, %.loopexit.us ]
  ret double %.054.lcssa
}

; Function Attrs: nounwind uwtable
define dso_local i32 @searchAnchors(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #12 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !12
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #29 ; 3 uses
  %i.c = trunc i64 %i.b to i32                    ; 6 uses
  %i.d = load i32, ptr @searchAnchors.alloclen, align 4, !tbaa !4 ; 2 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr @searchAnchors.stra, align 8, !tbaa !52
  tail call void @FreeDoubleVec(ptr noundef %i.f) #33
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.g = load i32, ptr @divThreshold, align 4, !tbaa !4
  %i.h = sitofp i32 %i.g to double
  %i.i = fdiv nnan double %i.h, 1.000000e+02
  %i.j = fmul nnan double %i.i, 6.000000e+02
  %i.k = load i32, ptr @divWinSize, align 4, !tbaa !4
  %i.l = sitofp i32 %i.k to double
  %i.m = fmul double %i.j, %i.l
  store double %i.m, ptr @searchAnchors.threshold, align 8, !tbaa !24
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.n = tail call ptr @AllocateDoubleVec(i32 noundef %i.c) #33
  store ptr %i.n, ptr @searchAnchors.stra, align 8, !tbaa !52
  store i32 %i.c, ptr @searchAnchors.alloclen, align 4, !tbaa !4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.a
  %i.o = icmp sgt i32 %i.c, 0
  br i1 %i.o, label %.lr.ph109, label %._crit_edge110

.lr.ph109:                                        ; preds = %bb.f
  %i.p = load ptr, ptr @searchAnchors.stra, align 8, !tbaa !52 ; 3 uses
  %i.q = add i32 %0, -1                           ; 2 uses
  %i.r = icmp sgt i32 %0, 1
  %i.s = sitofp i32 %0 to double
  %i.t = sitofp i32 %i.q to double
  %i.u = fmul nnan double %i.s, %i.t
  %i.v = fmul nnan double %i.u, 5.000000e-01      ; 2 uses
  %wide.trip.count148 = and i64 %i.b, 2147483647  ; 4 uses
  br i1 %i.r, label %.lr.ph106.us.preheader, label %.lr.ph109.split.preheader

.lr.ph109.split.preheader:                        ; preds = %.lr.ph109
  %i.w = fdiv double 0.000000e+00, %i.v           ; 2 uses
end_hunk_14
begin_hunk_15_@calcimportance:bb.a

bb.h:                                             ; preds = %.lr.ph135.us, %.loopexit118.us
  %indvars.iv195 = phi i64 [ 0, %.lr.ph135.us ], [ %indvars.iv.next196, %.loopexit118.us ] ; 5 uses
  %i.bw = shl nuw nsw i64 %indvars.iv195, 3       ; 2 uses
  %scevgep251 = getelementptr i8, ptr %1, i64 %i.bw
  %i.bx = getelementptr i8, ptr %1, i64 %i.bw
  %scevgep252 = getelementptr i8, ptr %i.bx, i64 8
  %i.by = icmp eq i64 %indvars.iv210, %indvars.iv195
  br i1 %i.by, label %.loopexit118.us, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bz = load ptr, ptr %i.ee, align 8, !tbaa !433 ; 2 uses
  %.not111131.us = icmp eq ptr %i.bz, null
  br i1 %.not111131.us, label %.loopexit118.us, label %.lr.ph133.us

bb.j:                                             ; preds = %.lr.ph133.us, %.loopexit115.us
  %.099132.us = phi ptr [ %i.ec, %.lr.ph133.us ], [ %i.ea, %.loopexit115.us ] ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.099132.us, i64 40
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !435
  %i.cc = fcmp oeq double %i.cb, -1.000000e+00
  br i1 %i.cc, label %.loopexit115.us, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cd = getelementptr inbounds nuw i8, ptr %.099132.us, i64 24
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !444 ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.099132.us, i64 28
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !445 ; 6 uses
  %.not112128.us = icmp sgt i32 %i.ce, %i.cg
  br i1 %.not112128.us, label %.loopexit115.us, label %.lr.ph130.us.preheader

.lr.ph130.us.preheader:                           ; preds = %bb.k
  %i.ch = sext i32 %i.ce to i64                   ; 6 uses
  %i.ci = add i32 %i.cg, 1
  %i.cj = sub i32 %i.cg, %i.ce                    ; 2 uses
  %i.ck = zext i32 %i.cj to i64
  %i.cl = add nuw nsw i64 %i.ck, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.cj, 5
  br i1 %min.iters.check, label %.lr.ph130.us.preheader257, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph130.us.preheader
  %i.cm = shl nsw i64 %i.ch, 3
  %scevgep = getelementptr i8, ptr %i.j, i64 %i.cm
  %i.cn = sub i32 %i.cg, %i.ce
  %i.co = zext i32 %i.cn to i64
  %i.cp = add nsw i64 %i.ch, %i.co
  %i.cq = shl nsw i64 %i.cp, 3
  %scevgep250 = getelementptr i8, ptr %scevgep249, i64 %i.cq
  %bound0 = icmp ult ptr %scevgep, %scevgep252
  %bound1 = icmp ult ptr %scevgep251, %scevgep250
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph130.us.preheader257, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cl, 8589934588              ; 3 uses
  %i.cr = add nsw i64 %n.vec, %i.ch
  %i.cs = load double, ptr %i.ed, align 8, !tbaa !24, !alias.scope !450
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.cs, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.j, i64 %i.ch
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %gep, i64 16 ; 2 uses
  %wide.load = load <2 x double>, ptr %gep, align 8, !tbaa !24, !alias.scope !453, !noalias !450
  %wide.load253 = load <2 x double>, ptr %i.ct, align 8, !tbaa !24, !alias.scope !453, !noalias !450
  %i.cu = fadd <2 x double> %broadcast.splat, %wide.load
  %i.cv = fadd <2 x double> %broadcast.splat, %wide.load253
  store <2 x double> %i.cu, ptr %gep, align 8, !tbaa !24, !alias.scope !453, !noalias !450
  store <2 x double> %i.cv, ptr %i.ct, align 8, !tbaa !24, !alias.scope !453, !noalias !450
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cw = icmp eq i64 %index.next, %n.vec
  br i1 %i.cw, label %middle.block, label %vector.body, !llvm.loop !455

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cl, %n.vec
  br i1 %cmp.n, label %.loopexit115.us, label %.lr.ph130.us.preheader257

.lr.ph130.us.preheader257:                        ; preds = %vector.memcheck, %.lr.ph130.us.preheader, %middle.block
  %indvars.iv191.ph = phi i64 [ %i.ch, %vector.memcheck ], [ %i.ch, %.lr.ph130.us.preheader ], [ %i.cr, %middle.block ] ; 3 uses
  %i.cx = add i32 %i.cg, 1
  %i.cy = trunc i64 %indvars.iv191.ph to i32      ; 2 uses
  %i.cz = sub i32 %i.cx, %i.cy
  %i.da = sub i32 %i.cg, %i.cy
  %xtraiter = and i32 %i.cz, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph130.us.prol.loopexit, label %.lr.ph130.us.prol

.lr.ph130.us.prol:                                ; preds = %.lr.ph130.us.preheader257, %.lr.ph130.us.prol
  %indvars.iv191.prol = phi i64 [ %indvars.iv.next192.prol, %.lr.ph130.us.prol ], [ %indvars.iv191.ph, %.lr.ph130.us.preheader257 ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph130.us.prol ], [ 0, %.lr.ph130.us.preheader257 ]
  %i.db = load double, ptr %i.ed, align 8, !tbaa !24
  %i.dc = getelementptr inbounds [8 x i8], ptr %i.j, i64 %indvars.iv191.prol ; 2 uses
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !24
  %i.de = fadd double %i.db, %i.dd
  store double %i.de, ptr %i.dc, align 8, !tbaa !24
  %indvars.iv.next192.prol = add nsw i64 %indvars.iv191.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph130.us.prol.loopexit, label %.lr.ph130.us.prol, !llvm.loop !456

.lr.ph130.us.prol.loopexit:                       ; preds = %.lr.ph130.us.prol, %.lr.ph130.us.preheader257
  %indvars.iv191.unr = phi i64 [ %indvars.iv191.ph, %.lr.ph130.us.preheader257 ], [ %indvars.iv.next192.prol, %.lr.ph130.us.prol ]
  %i.df = icmp ult i32 %i.da, 3
  br i1 %i.df, label %.loopexit115.us, label %.lr.ph130.us

.lr.ph130.us:                                     ; preds = %.lr.ph130.us.prol.loopexit, %.lr.ph130.us
  %indvars.iv191 = phi i64 [ %indvars.iv.next192.3, %.lr.ph130.us ], [ %indvars.iv191.unr, %.lr.ph130.us.prol.loopexit ] ; 5 uses
  %i.dg = load double, ptr %i.ed, align 8, !tbaa !24
  %i.dh = getelementptr inbounds [8 x i8], ptr %i.j, i64 %indvars.iv191 ; 2 uses
  %i.di = load double, ptr %i.dh, align 8, !tbaa !24
  %i.dj = fadd double %i.dg, %i.di
  store double %i.dj, ptr %i.dh, align 8, !tbaa !24
  %i.dk = load double, ptr %i.ed, align 8, !tbaa !24
  %i.dl = getelementptr [8 x i8], ptr %i.j, i64 %indvars.iv191
  %i.dm = getelementptr i8, ptr %i.dl, i64 8      ; 2 uses
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !24
  %i.do = fadd double %i.dk, %i.dn
  store double %i.do, ptr %i.dm, align 8, !tbaa !24
  %i.dp = load double, ptr %i.ed, align 8, !tbaa !24
  %i.dq = getelementptr [8 x i8], ptr %i.j, i64 %indvars.iv191
  %i.dr = getelementptr i8, ptr %i.dq, i64 16     ; 2 uses
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !24
  %i.dt = fadd double %i.dp, %i.ds
  store double %i.dt, ptr %i.dr, align 8, !tbaa !24
  %i.du = load double, ptr %i.ed, align 8, !tbaa !24
  %i.dv = getelementptr [8 x i8], ptr %i.j, i64 %indvars.iv191
  %i.dw = getelementptr i8, ptr %i.dv, i64 24     ; 2 uses
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !24
  %i.dy = fadd double %i.du, %i.dx
  store double %i.dy, ptr %i.dw, align 8, !tbaa !24
  %indvars.iv.next192.3 = add nsw i64 %indvars.iv191, 4 ; 2 uses
  %lftr.wideiv.3 = trunc i64 %indvars.iv.next192.3 to i32
  %exitcond194.not.3 = icmp eq i32 %i.ci, %lftr.wideiv.3
  br i1 %exitcond194.not.3, label %.loopexit115.us, label %.lr.ph130.us, !llvm.loop !457

.loopexit115.us:                                  ; preds = %.lr.ph130.us.prol.loopexit, %.lr.ph130.us, %middle.block, %bb.k, %bb.j
  %i.dz = getelementptr inbounds nuw i8, ptr %.099132.us, i64 8
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !440 ; 2 uses
  %.not111.us = icmp eq ptr %i.ea, null
  br i1 %.not111.us, label %.loopexit118.us, label %bb.j, !llvm.loop !458

.loopexit118.us:                                  ; preds = %.loopexit115.us, %bb.i, %bb.h
  %indvars.iv.next196 = add nuw nsw i64 %indvars.iv195, 1 ; 2 uses
  %exitcond199.not = icmp eq i64 %indvars.iv.next196, %wide.trip.count213
  br i1 %exitcond199.not, label %.preheader119.us, label %bb.h, !llvm.loop !459

.preheader119.us:                                 ; preds = %.loopexit118.us
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv210
  br label %bb.d

.lr.ph133.us:                                     ; preds = %bb.i
  %i.ec = getelementptr inbounds nuw [80 x i8], ptr %i.bz, i64 %indvars.iv195
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv195 ; 6 uses
  br label %bb.j

.lr.ph135.us:                                     ; preds = %.preheader121.us, %.lr.ph127.us.preheader
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv210
  br label %bb.h

._crit_edge147.us:                                ; preds = %.loopexit117.us
  %indvars.iv.next211 = add nuw nsw i64 %indvars.iv210, 1 ; 2 uses
  %exitcond214.not = icmp eq i64 %indvars.iv.next211, %wide.trip.count213
  br i1 %exitcond214.not, label %.preheader, label %.preheader121.us, !llvm.loop !460

bb.l:                                             ; preds = %.lr.ph, %seqlen.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %seqlen.exit ] ; 3 uses
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !12 ; 2 uses
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !8   ; 2 uses
  %.not6.i = icmp eq i8 %i.eh, 0
  br i1 %.not6.i, label %seqlen.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.l, %.lr.ph.i
  %i.ei = phi i8 [ %i.el, %.lr.ph.i ], [ %i.eh, %bb.l ]
  %.08.i = phi i32 [ %spec.select.i, %.lr.ph.i ], [ 0, %bb.l ]
  %.037.i = phi ptr [ %i.ej, %.lr.ph.i ], [ %i.eg, %bb.l ]
  %i.ej = getelementptr inbounds nuw i8, ptr %.037.i, i64 1 ; 2 uses
  %.not5.i = icmp ne i8 %i.ei, 45
  %i.ek = zext i1 %.not5.i to i32
  %spec.select.i = add nuw nsw i32 %.08.i, %i.ek  ; 2 uses
  %i.el = load i8, ptr %i.ej, align 1, !tbaa !8   ; 2 uses
  %.not.i = icmp eq i8 %i.el, 0
  br i1 %.not.i, label %seqlen.exit, label %.lr.ph.i, !llvm.loop !9

seqlen.exit:                                      ; preds = %.lr.ph.i, %bb.l
  %.0.lcssa.i = phi i32 [ 0, %bb.l ], [ %spec.select.i, %.lr.ph.i ]
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv
  store i32 %.0.lcssa.i, ptr %i.em, align 4, !tbaa !4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader121.lr.ph, label %bb.l, !llvm.loop !461

.preheader:                                       ; preds = %._crit_edge147.us
  %.not244 = icmp eq i32 %0, 1
  br i1 %.not244, label %._crit_edge180, label %.lr.ph179.preheader

.lr.ph179.preheader:                              ; preds = %.preheader
  %i.en = add nsw i32 %0, -1
  %wide.trip.count225 = zext nneg i32 %i.en to i64
  %wide.trip.count220 = zext nneg i32 %0 to i64
  br label %.lr.ph177

.loopexit:                                        ; preds = %bb.q
  %indvars.iv.next216 = add nuw nsw i64 %indvars.iv215, 1
  %exitcond226.not = icmp eq i64 %indvars.iv.next223, %wide.trip.count225
  br i1 %exitcond226.not, label %._crit_edge180, label %.lr.ph177, !llvm.loop !462

.lr.ph177:                                        ; preds = %.loopexit, %.lr.ph179.preheader
  %indvars.iv222 = phi i64 [ 0, %.lr.ph179.preheader ], [ %indvars.iv.next223, %.loopexit ] ; 4 uses
  %indvars.iv215 = phi i64 [ 1, %.lr.ph179.preheader ], [ %indvars.iv.next216, %.loopexit ] ; 2 uses
  %indvars.iv.next223 = add nuw nsw i64 %indvars.iv222, 1 ; 2 uses
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv222
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !433
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph177, %bb.q
  %indvars.iv217 = phi i64 [ %indvars.iv215, %.lr.ph177 ], [ %indvars.iv.next218, %bb.q ] ; 4 uses
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv217
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !433 ; 2 uses
  %.not = icmp eq ptr %i.er, null
  br i1 %.not, label %._crit_edge.thread, label %.lr.ph173.preheader

.lr.ph173.preheader:                              ; preds = %bb.m
  %i.es = getelementptr inbounds nuw [80 x i8], ptr %i.ep, i64 %indvars.iv217
  %i.et = getelementptr inbounds nuw [80 x i8], ptr %i.er, i64 %indvars.iv222
  br label %.lr.ph173

.lr.ph173:                                        ; preds = %.lr.ph173.preheader, %bb.p
  %.0172 = phi ptr [ %i.fm, %bb.p ], [ %i.et, %.lr.ph173.preheader ] ; 4 uses
  %.097171 = phi ptr [ %i.fk, %bb.p ], [ %i.es, %.lr.ph173.preheader ] ; 4 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.097171, i64 40
  %i.ev = load double, ptr %i.eu, align 8, !tbaa !435
  %i.ew = fcmp oeq double %i.ev, -1.000000e+00
  br i1 %i.ew, label %bb.p, label %bb.n

bb.n:                                             ; preds = %.lr.ph173
  %i.ex = getelementptr inbounds nuw i8, ptr %.0172, i64 40
  %i.ey = load double, ptr %i.ex, align 8, !tbaa !435
  %i.ez = fcmp oeq double %i.ey, -1.000000e+00
  br i1 %i.ez, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.fa = getelementptr inbounds nuw i8, ptr %.097171, i64 56 ; 2 uses
  %i.fb = load double, ptr %i.fa, align 8, !tbaa !438
  %i.fc = getelementptr inbounds nuw i8, ptr %.0172, i64 56 ; 2 uses
  %i.fd = load double, ptr %i.fc, align 8, !tbaa !438
  %i.fe = fadd double %i.fb, %i.fd
  %i.ff = fmul double %i.fe, 5.000000e-01         ; 3 uses
  store double %i.ff, ptr %i.fc, align 8, !tbaa !438
  store double %i.ff, ptr %i.fa, align 8, !tbaa !438
  %i.fg = fptrunc double %i.ff to float           ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.0172, i64 64
  store float %i.fg, ptr %i.fh, align 8, !tbaa !439
  %i.fi = getelementptr inbounds nuw i8, ptr %.097171, i64 64
  store float %i.fg, ptr %i.fi, align 8, !tbaa !439
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph173, %bb.n, %bb.o
  %i.fj = getelementptr inbounds nuw i8, ptr %.097171, i64 8
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !440 ; 3 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.0172, i64 8
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !440 ; 2 uses
  %i.fn = icmp ne ptr %i.fk, null
  %i.fo = icmp ne ptr %i.fm, null                 ; 2 uses
  %i.fp = select i1 %i.fn, i1 %i.fo, i1 false
  br i1 %i.fp, label %.lr.ph173, label %._crit_edge, !llvm.loop !463

._crit_edge:                                      ; preds = %bb.p
  %i.fq = icmp ne ptr %i.fk, null
  %i.fr = xor i1 %i.fq, %i.fo
  br i1 %i.fr, label %._crit_edge.thread, label %bb.q

._crit_edge.thread:                               ; preds = %bb.m, %._crit_edge
  %i.fs = trunc nuw nsw i64 %indvars.iv222 to i32
  %i.ft = trunc nuw nsw i64 %indvars.iv217 to i32
  %i.fu = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.fv = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fu, ptr noundef nonnull @.str.31, i32 noundef %i.fs, i32 noundef %i.ft) #31 ; 0 uses
  tail call void @exit(i32 noundef 1) #32
  unreachable

bb.q:                                             ; preds = %._crit_edge
  %indvars.iv.next218 = add nuw nsw i64 %indvars.iv217, 1 ; 2 uses
  %exitcond221.not = icmp eq i64 %indvars.iv.next218, %wide.trip.count220
  br i1 %exitcond221.not, label %.loopexit, label %bb.m, !llvm.loop !464

._crit_edge180:                                   ; preds = %.loopexit, %bb.c, %.preheader
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @extendlocalhom2(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #12 {
bb.a:
  %i.a = load ptr, ptr @extendlocalhom2.ini, align 8, !tbaa !89
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr @nlenmax, align 4, !tbaa !4
  %i.d = add nsw i32 %i.c, 1
  %i.e = tail call ptr @AllocateIntVec(i32 noundef %i.d) #33
  store ptr %i.e, ptr @extendlocalhom2.ini, align 8, !tbaa !89
  %i.f = load i32, ptr @nlenmax, align 4, !tbaa !4
  %i.g = add nsw i32 %i.f, 1
  %i.h = tail call ptr @AllocateIntVec(i32 noundef %i.g) #33
  store ptr %i.h, ptr @extendlocalhom2.inj, align 8, !tbaa !89
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = icmp sgt i32 %0, 1
  br i1 %i.i, label %.lr.ph.split.us.preheader, label %._crit_edge

.lr.ph.split.us.preheader:                        ; preds = %bb.c
  %i.j = add nsw i32 %0, -1
  %wide.trip.count291 = zext nneg i32 %i.j to i64
  %wide.trip.count286 = zext nneg i32 %0 to i64   ; 2 uses
  br label %.preheader201.lr.ph.us

.loopexit202.us:                                  ; preds = %._crit_edge256.us.us
  %indvars.iv.next282 = add nuw nsw i64 %indvars.iv281, 1
  %exitcond292.not = icmp eq i64 %indvars.iv.next289, %wide.trip.count291
  br i1 %exitcond292.not, label %._crit_edge, label %.preheader201.lr.ph.us, !llvm.loop !465

.preheader201.lr.ph.us:                           ; preds = %.loopexit202.us, %.lr.ph.split.us.preheader
  %indvars.iv288 = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %indvars.iv.next289, %.loopexit202.us ] ; 6 uses
  %indvars.iv281 = phi i64 [ 1, %.lr.ph.split.us.preheader ], [ %indvars.iv.next282, %.loopexit202.us ] ; 2 uses
  %.0148267.us = phi i32 [ 0, %.lr.ph.split.us.preheader ], [ %.5.us.us, %.loopexit202.us ]
  %.0152266.us = phi i32 [ 0, %.lr.ph.split.us.preheader ], [ %.5157.us.us, %.loopexit202.us ]
  %indvars.iv.next289 = add nuw nsw i64 %indvars.iv288, 1 ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv288
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv288 ; 3 uses
  %i.m = trunc nuw nsw i64 %indvars.iv288 to i32  ; 2 uses
  br label %.preheader201.us.us

.preheader201.us.us:                              ; preds = %._crit_edge256.us.us, %.preheader201.lr.ph.us
  %indvars.iv283 = phi i64 [ %indvars.iv.next284, %._crit_edge256.us.us ], [ %indvars.iv281, %.preheader201.lr.ph.us ] ; 6 uses
  %.1149261.us.us = phi i32 [ %.5.us.us, %._crit_edge256.us.us ], [ %.0148267.us, %.preheader201.lr.ph.us ]
  %.1153260.us.us = phi i32 [ %.5157.us.us, %._crit_edge256.us.us ], [ %.0152266.us, %.preheader201.lr.ph.us ]
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv283 ; 3 uses
  %i.o = trunc nuw nsw i64 %indvars.iv283 to i32  ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.loopexit.us.us, %.preheader201.us.us
  %indvars.iv276 = phi i64 [ %indvars.iv.next277, %.loopexit.us.us ], [ 0, %.preheader201.us.us ] ; 10 uses
  %.2150254.us.us = phi i32 [ %.5.us.us, %.loopexit.us.us ], [ %.1149261.us.us, %.preheader201.us.us ] ; 5 uses
  %.2154253.us.us = phi i32 [ %.5157.us.us, %.loopexit.us.us ], [ %.1153260.us.us, %.preheader201.us.us ] ; 5 uses
  %i.p = icmp eq i64 %indvars.iv276, %indvars.iv288
  %i.q = icmp eq i64 %indvars.iv276, %indvars.iv283
  %or.cond.us.us = or i1 %i.p, %i.q
  br i1 %or.cond.us.us, label %.loopexit.us.us, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = trunc nuw nsw i64 %indvars.iv276 to i32  ; 6 uses
  %i.s = tail call i32 @llvm.umin.i32(i32 %i.m, i32 %i.r)
  %i.t = zext nneg i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.t
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !52
  %i.w = tail call i32 @llvm.umax.i32(i32 %i.m, i32 %i.r)
  %i.x = zext nneg i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.x
  %i.z = load double, ptr %i.y, align 8, !tbaa !24
  %i.aa = load ptr, ptr %i.k, align 8, !tbaa !52
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv283
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !24
  %i.ad = load double, ptr @thrinter, align 8, !tbaa !24
  %i.ae = fmul double %i.ac, %i.ad                ; 2 uses
  %i.af = fcmp ogt double %i.z, %i.ae
  br i1 %i.af, label %.loopexit.us.us, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = tail call i32 @llvm.umin.i32(i32 %i.o, i32 %i.r)
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ah
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !52
  %i.ak = tail call i32 @llvm.umax.i32(i32 %i.o, i32 %i.r)
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.al
  %i.an = load double, ptr %i.am, align 8, !tbaa !24
  %i.ao = fcmp ogt double %i.an, %i.ae
  br i1 %i.ao, label %.loopexit.us.us, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ap = load i32, ptr @nlenmax, align 4, !tbaa !4
  %i.aq = add nsw i32 %i.ap, 1                    ; 2 uses
  %.not203.us.us = icmp eq i32 %i.aq, 0
  br i1 %.not203.us.us, label %._crit_edge211.us.us, label %._crit_edge.us.us

._crit_edge.us.us:                                ; preds = %bb.g
  %i.ar = load ptr, ptr @extendlocalhom2.ini, align 8, !tbaa !89
  %i.as = zext i32 %i.aq to i64
  %i.at = shl nuw nsw i64 %i.as, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ar, i8 -1, i64 %i.at, i1 false), !tbaa !4
  %.pre = load i32, ptr @nlenmax, align 4, !tbaa !4
  %.pre293 = add nsw i32 %.pre, 1                 ; 2 uses
  %.not184206.us.us = icmp eq i32 %.pre293, 0
  br i1 %.not184206.us.us, label %._crit_edge211.us.us, label %.lr.ph210.us.us.preheader

.lr.ph210.us.us.preheader:                        ; preds = %._crit_edge.us.us
  %i.au = load ptr, ptr @extendlocalhom2.inj, align 8, !tbaa !89
  %i.av = zext i32 %.pre293 to i64
  %i.aw = shl nuw nsw i64 %i.av, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.au, i8 -1, i64 %i.aw, i1 false), !tbaa !4
  br label %._crit_edge211.us.us

._crit_edge211.us.us:                             ; preds = %bb.g, %.lr.ph210.us.us.preheader, %._crit_edge.us.us
  %i.ax = load ptr, ptr %i.l, align 8, !tbaa !433 ; 2 uses
  %.not185219.us.us = icmp eq ptr %i.ax, null
  br i1 %.not185219.us.us, label %._crit_edge223.us.us, label %.lr.ph222.us.us.preheader

.lr.ph222.us.us.preheader:                        ; preds = %._crit_edge211.us.us
  %i.ay = getelementptr inbounds nuw [80 x i8], ptr %i.ax, i64 %indvars.iv276
  br label %.lr.ph222.us.us

.lr.ph222.us.us:                                  ; preds = %.lr.ph222.us.us.preheader, %._crit_edge218.us.us
  %.0220.us.us = phi ptr [ %i.ce, %._crit_edge218.us.us ], [ %i.ay, %.lr.ph222.us.us.preheader ] ; 6 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.0220.us.us, i64 40
  %i.ba = load double, ptr %i.az, align 8, !tbaa !435
  %i.bb = fcmp oeq double %i.ba, -1.000000e+00
  br i1 %i.bb, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph222.us.us
  %i.bc = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.bd = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bc, ptr noundef nonnull @.str.32, double noundef -1.000000e+00) #31 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph222.us.us
  %i.be = getelementptr inbounds nuw i8, ptr %.0220.us.us, i64 52
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !466
  %i.bg = icmp sgt i32 %i.bf, -1
  br i1 %i.bg, label %._crit_edge223.us.us, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bh = getelementptr inbounds nuw i8, ptr %.0220.us.us, i64 24
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !444 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.0220.us.us, i64 28
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !445
  %reass.sub = sub i32 %i.bk, %i.bi
  %i.bl = add i32 %reass.sub, 1                   ; 5 uses
  %.not186212.us.us = icmp eq i32 %i.bl, 0
  br i1 %.not186212.us.us, label %._crit_edge218.us.us, label %.lr.ph217.us.us.preheader

.lr.ph217.us.us.preheader:                        ; preds = %bb.j
  %i.bm = load ptr, ptr @extendlocalhom2.ini, align 8, !tbaa !89
  %i.bn = getelementptr inbounds nuw i8, ptr %.0220.us.us, i64 32
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !467
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %i.bp ; 3 uses
  %i.br = zext i32 %i.bl to i64                   ; 2 uses
  %min.iters.check316 = icmp ult i32 %i.bl, 8
  br i1 %min.iters.check316, label %.lr.ph217.us.us.preheader336, label %vector.ph317

vector.ph317:                                     ; preds = %.lr.ph217.us.us.preheader
  %n.vec319 = and i64 %i.br, 4294967288           ; 4 uses
  %i.bs = shl nuw nsw i64 %n.vec319, 2
  %i.bt = getelementptr i8, ptr %i.bq, i64 %i.bs
  %i.bu = trunc nuw i64 %n.vec319 to i32          ; 2 uses
  %i.bv = sub i32 %i.bl, %i.bu
  %i.bw = add i32 %i.bi, %i.bu
  %broadcast.splatinsert320 = insertelement <4 x i32> poison, i32 %i.bi, i64 0
  %broadcast.splat321 = shufflevector <4 x i32> %broadcast.splatinsert320, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction322 = add nsw <4 x i32> %broadcast.splat321, <i32 0, i32 1, i32 2, i32 3>
  br label %vector.body323

vector.body323:                                   ; preds = %vector.body323, %vector.ph317
  %index324 = phi i64 [ 0, %vector.ph317 ], [ %index.next328, %vector.body323 ] ; 2 uses
  %vec.ind325 = phi <4 x i32> [ %induction322, %vector.ph317 ], [ %vec.ind.next329, %vector.body323 ] ; 3 uses
  %step.add326 = add nsw <4 x i32> %vec.ind325, splat (i32 4)
  %i.bx = shl i64 %index324, 2
  %next.gep327 = getelementptr i8, ptr %i.bq, i64 %i.bx ; 2 uses
  %i.by = getelementptr i8, ptr %next.gep327, i64 16
  store <4 x i32> %vec.ind325, ptr %next.gep327, align 4, !tbaa !4
  store <4 x i32> %step.add326, ptr %i.by, align 4, !tbaa !4
  %index.next328 = add nuw i64 %index324, 8       ; 2 uses
  %vec.ind.next329 = add nsw <4 x i32> %vec.ind325, splat (i32 8)
  %i.bz = icmp eq i64 %index.next328, %n.vec319
  br i1 %i.bz, label %middle.block330, label %vector.body323, !llvm.loop !468

middle.block330:                                  ; preds = %vector.body323
  %cmp.n331 = icmp eq i64 %n.vec319, %i.br
  br i1 %cmp.n331, label %._crit_edge218.us.us, label %.lr.ph217.us.us.preheader336

.lr.ph217.us.us.preheader336:                     ; preds = %.lr.ph217.us.us.preheader, %middle.block330
  %.2215.us.us.ph = phi ptr [ %i.bq, %.lr.ph217.us.us.preheader ], [ %i.bt, %middle.block330 ]
  %.0161214.us.us.ph = phi i32 [ %i.bl, %.lr.ph217.us.us.preheader ], [ %i.bv, %middle.block330 ]
  %.0166213.us.us.ph = phi i32 [ %i.bi, %.lr.ph217.us.us.preheader ], [ %i.bw, %middle.block330 ]
  br label %.lr.ph217.us.us

.lr.ph217.us.us:                                  ; preds = %.lr.ph217.us.us.preheader336, %.lr.ph217.us.us
  %.2215.us.us = phi ptr [ %i.cc, %.lr.ph217.us.us ], [ %.2215.us.us.ph, %.lr.ph217.us.us.preheader336 ] ; 2 uses
  %.0161214.us.us = phi i32 [ %i.ca, %.lr.ph217.us.us ], [ %.0161214.us.us.ph, %.lr.ph217.us.us.preheader336 ]
  %.0166213.us.us = phi i32 [ %i.cb, %.lr.ph217.us.us ], [ %.0166213.us.us.ph, %.lr.ph217.us.us.preheader336 ] ; 2 uses
  %i.ca = add nsw i32 %.0161214.us.us, -1         ; 2 uses
  %i.cb = add nsw i32 %.0166213.us.us, 1
  %i.cc = getelementptr inbounds nuw i8, ptr %.2215.us.us, i64 4
  store i32 %.0166213.us.us, ptr %.2215.us.us, align 4, !tbaa !4
  %.not186.us.us = icmp eq i32 %i.ca, 0
  br i1 %.not186.us.us, label %._crit_edge218.us.us, label %.lr.ph217.us.us, !llvm.loop !469

._crit_edge218.us.us:                             ; preds = %.lr.ph217.us.us, %middle.block330, %bb.j
  %i.cd = getelementptr inbounds nuw i8, ptr %.0220.us.us, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !440 ; 2 uses
  %.not185.us.us = icmp eq ptr %i.ce, null
  br i1 %.not185.us.us, label %._crit_edge223.us.us, label %.lr.ph222.us.us, !llvm.loop !470

._crit_edge223.us.us:                             ; preds = %._crit_edge218.us.us, %bb.i, %._crit_edge211.us.us
  %i.cf = load ptr, ptr %i.n, align 8, !tbaa !433 ; 2 uses
  %.not187232.us.us = icmp eq ptr %i.cf, null
  br i1 %.not187232.us.us, label %._crit_edge236.us.us, label %.lr.ph235.us.us.preheader

.lr.ph235.us.us.preheader:                        ; preds = %._crit_edge223.us.us
  %i.cg = getelementptr inbounds nuw [80 x i8], ptr %i.cf, i64 %indvars.iv276
  br label %.lr.ph235.us.us

.lr.ph235.us.us:                                  ; preds = %.lr.ph235.us.us.preheader, %._crit_edge231.us.us
  %.1233.us.us = phi ptr [ %i.dm, %._crit_edge231.us.us ], [ %i.cg, %.lr.ph235.us.us.preheader ] ; 6 uses
end_hunk_15
begin_hunk_16_@extendlocalhom2:bb.a
  store i32 %i.fr, ptr %i.gi, align 4, !tbaa !445
  %i.gj = getelementptr inbounds nuw i8, ptr %.sink.i198.us.us, i64 36
  store i32 %i.fs, ptr %i.gj, align 4, !tbaa !477
  %i.gk = getelementptr inbounds nuw i8, ptr %.sink.i198.us.us, i64 40
  store double %i.gb, ptr %i.gk, align 8, !tbaa !435
  %i.gl = getelementptr inbounds nuw i8, ptr %.sink.i198.us.us, i64 52
  store i32 %i.r, ptr %i.gl, align 4, !tbaa !466
  %i.gm = getelementptr inbounds nuw i8, ptr %.sink.i198.us.us, i64 48
  store i32 %.1171.us.us.lcssa, ptr %i.gm, align 8, !tbaa !437
  br label %.critedge.us.us

.critedge.us.us:                                  ; preds = %addlocalhom2_e.exit199.us.us, %bb.s
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %indvars.iv271
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !4  ; 2 uses
  %i.gp = icmp eq i32 %i.go, -1
  br i1 %i.gp, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %.critedge.us.us
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %indvars.iv271
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !4  ; 2 uses
  %i.gs = icmp eq i32 %i.gr, -1
  br i1 %i.gs, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %.critedge.us.us, %bb.w
  %.2160.us.us = phi i32 [ 1, %bb.ab ], [ 0, %.critedge.us.us ], [ 0, %bb.aa ], [ 1, %bb.w ]
  %.4156.us.us = phi i32 [ %i.go, %bb.ab ], [ %.3155246.us.us, %.critedge.us.us ], [ %.3155246.us.us, %bb.aa ], [ %.3155246.us.us, %bb.w ] ; 2 uses
  %.4.us.us = phi i32 [ %i.gr, %bb.ab ], [ %.3151247.us.us, %.critedge.us.us ], [ %.3151247.us.us, %bb.aa ], [ %.3151247.us.us, %bb.w ] ; 2 uses
  %indvars.iv.next272 = add nuw nsw i64 %indvars.iv271, 1 ; 2 uses
  %exitcond275.not = icmp eq i64 %indvars.iv.next272, %wide.trip.count274
  br i1 %exitcond275.not, label %.loopexit.us.us, label %bb.s, !llvm.loop !478

.loopexit.us.us:                                  ; preds = %bb.ac, %._crit_edge236.us.us, %bb.f, %bb.e, %bb.d
  %.5157.us.us = phi i32 [ %.2154253.us.us, %bb.d ], [ %.2154253.us.us, %bb.f ], [ %.2154253.us.us, %bb.e ], [ %.2154253.us.us, %._crit_edge236.us.us ], [ %.4156.us.us, %bb.ac ] ; 3 uses
  %.5.us.us = phi i32 [ %.2150254.us.us, %bb.d ], [ %.2150254.us.us, %bb.f ], [ %.2150254.us.us, %bb.e ], [ %.2150254.us.us, %._crit_edge236.us.us ], [ %.4.us.us, %bb.ac ] ; 3 uses
  %indvars.iv.next277 = add nuw nsw i64 %indvars.iv276, 1 ; 2 uses
  %exitcond280.not = icmp eq i64 %indvars.iv.next277, %wide.trip.count286
  br i1 %exitcond280.not, label %._crit_edge256.us.us, label %bb.d, !llvm.loop !479

.lr.ph242.us.us:                                  ; preds = %._crit_edge236.us.us
  %i.gt = load ptr, ptr @extendlocalhom2.ini, align 8, !tbaa !89 ; 3 uses
  %i.gu = load ptr, ptr @extendlocalhom2.inj, align 8 ; 3 uses
  %i.gv = add nuw i32 %i.dn, 1                    ; 2 uses
  %wide.trip.count = zext i32 %i.gv to i64        ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.gw = icmp eq i32 %i.dn, 0
  br i1 %i.gw, label %.epil.preheader, label %.lr.ph242.us.us.new

.lr.ph242.us.us.new:                              ; preds = %.lr.ph242.us.us
  %unroll_iter = and i64 %wide.trip.count, 4294967294
  br label %bb.n

.lr.ph248.us.us.unr-lcssa:                        ; preds = %bb.r
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph248.us.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %.lr.ph248.us.us.unr-lcssa, %.lr.ph242.us.us
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph242.us.us ], [ %indvars.iv.next.1, %.lr.ph248.us.us.unr-lcssa ] ; 2 uses
  %.0170239.us.us.epil.init = phi i32 [ 0, %.lr.ph242.us.us ], [ %.1171.us.us.1, %.lr.ph248.us.us.unr-lcssa ] ; 2 uses
  %lcmp.mod338 = trunc i32 %i.gv to i1
  tail call void @llvm.assume(i1 %lcmp.mod338)
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.gt, i64 %indvars.iv.epil.init
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !4
  %.not195.us.us.epil = icmp eq i32 %i.gy, -1
  br i1 %.not195.us.us.epil, label %.lr.ph248.us.us, label %bb.ad

bb.ad:                                            ; preds = %.epil.preheader
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %indvars.iv.epil.init
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !4
  %.not196.us.us.epil = icmp ne i32 %i.ha, -1
  %i.hb = zext i1 %.not196.us.us.epil to i32
  %spec.select.us.us.epil = add nsw i32 %.0170239.us.us.epil.init, %i.hb
  br label %.lr.ph248.us.us

.lr.ph248.us.us:                                  ; preds = %.epil.preheader, %bb.ad, %.lr.ph248.us.us.unr-lcssa
  %.1171.us.us.lcssa = phi i32 [ %.1171.us.us.1, %.lr.ph248.us.us.unr-lcssa ], [ %.0170239.us.us.epil.init, %.epil.preheader ], [ %spec.select.us.us.epil, %bb.ad ] ; 2 uses
  %i.hc = load ptr, ptr @extendlocalhom2.ini, align 8 ; 4 uses
  %i.hd = load ptr, ptr @extendlocalhom2.inj, align 8 ; 4 uses
  %i.he = add nuw i32 %i.dn, 1
  %wide.trip.count274 = zext i32 %i.he to i64
  br label %bb.s

._crit_edge256.us.us:                             ; preds = %.loopexit.us.us
  %indvars.iv.next284 = add nuw nsw i64 %indvars.iv283, 1 ; 2 uses
  %exitcond287.not = icmp eq i64 %indvars.iv.next284, %wide.trip.count286
  br i1 %exitcond287.not, label %.loopexit202.us, label %.preheader201.us.us, !llvm.loop !480

._crit_edge:                                      ; preds = %.loopexit202.us, %bb.c
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @makelocal(ptr noundef %0, ptr nofree noundef captures(none) %1, i32 noundef %2) local_unnamed_addr #9 {
bb.a:
  %i.a = load i32, ptr @penalty, align 4
  %i.b = sitofp i32 %i.a to double
  %i.c = ptrtoint ptr %0 to i64                   ; 2 uses
  br label %.outer

.outer:                                           ; preds = %bb.e, %bb.a
  %.043.ph = phi i32 [ %.144, %bb.e ], [ 0, %bb.a ] ; 4 uses
  %.041.ph = phi i32 [ %.142, %bb.e ], [ 0, %bb.a ] ; 3 uses
  %.039.ph = phi i32 [ %.2, %bb.e ], [ 0, %bb.a ] ; 2 uses
  %.037.ph = phi ptr [ %i.n, %bb.e ], [ %0, %bb.a ] ; 2 uses
  %.035.ph = phi ptr [ %i.q, %bb.e ], [ %1, %bb.a ]
  %.033.ph = phi double [ %.134, %bb.e ], [ 0.000000e+00, %bb.a ]
  %.0.ph = phi double [ %.1, %bb.e ], [ 0.000000e+00, %bb.a ] ; 2 uses
  %.pre = load i8, ptr %.037.ph, align 1, !tbaa !8
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %bb.d
  %i.d = fadd double %.033, %i.b
  br label %.loopexit, !llvm.loop !481

.loopexit:                                        ; preds = %.loopexit.loopexit, %.outer
  %i.e = phi i8 [ %.pre, %.outer ], [ %i.h, %.loopexit.loopexit ] ; 2 uses
  %.037 = phi ptr [ %.037.ph, %.outer ], [ %.138, %.loopexit.loopexit ] ; 3 uses
  %.035 = phi ptr [ %.035.ph, %.outer ], [ %.136, %.loopexit.loopexit ] ; 3 uses
  %.033 = phi double [ %.033.ph, %.outer ], [ %i.d, %.loopexit.loopexit ] ; 2 uses
  switch i8 %i.e, label %bb.b [
    i8 0, label %bb.f
    i8 45, label %.preheader
  ]

bb.b:                                             ; preds = %.loopexit
  %i.f = load i8, ptr %.035, align 1, !tbaa !8    ; 2 uses
  %i.g = icmp eq i8 %i.f, 45
  br i1 %i.g, label %.preheader, label %bb.e

.preheader:                                       ; preds = %.loopexit, %bb.b
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %.critedge
  %.138 = phi ptr [ %i.l, %.critedge ], [ %.037, %.preheader ] ; 3 uses
  %.136 = phi ptr [ %i.m, %.critedge ], [ %.035, %.preheader ] ; 3 uses
  %i.h = load i8, ptr %.138, align 1, !tbaa !8    ; 2 uses
  %i.i = icmp eq i8 %i.h, 45
  br i1 %i.i, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load i8, ptr %.136, align 1, !tbaa !8
  %i.k = icmp eq i8 %i.j, 45
  br i1 %i.k, label %.critedge, label %.loopexit.loopexit

.critedge:                                        ; preds = %bb.c, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %.138, i64 1
  %i.m = getelementptr inbounds nuw i8, ptr %.136, i64 1
  br label %bb.c, !llvm.loop !482

bb.e:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %.037, i64 1 ; 2 uses
  %i.o = sext i8 %i.e to i64
  %i.p = getelementptr inbounds [512 x i8], ptr @amino_dis, i64 %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %.035, i64 1
  %i.r = sext i8 %i.f to i64
  %i.s = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !4
  %i.u = sub nsw i32 %i.t, %2
  %i.v = sitofp i32 %i.u to double
  %i.w = fadd double %.033, %i.v                  ; 4 uses
  %i.x = fcmp ogt double %i.w, %.0.ph             ; 2 uses
  %.142 = select i1 %i.x, i32 %.043.ph, i32 %.041.ph ; 2 uses
  %.1 = select i1 %i.x, double %i.w, double %.0.ph
  %i.y = fcmp olt double %i.w, 0.000000e+00       ; 3 uses
  %i.z = icmp eq i32 %.043.ph, %.142
  %i.aa = ptrtoint ptr %i.n to i64
  %i.ab = sub i64 %i.aa, %i.c
  %i.ac = trunc i64 %i.ab to i32                  ; 2 uses
  %.144 = select i1 %i.y, i32 %i.ac, i32 %.043.ph
  %i.ad = select i1 %i.y, i1 %i.z, i1 false
  %.2 = select i1 %i.ad, i32 %i.ac, i32 %.039.ph
  %.134 = select i1 %i.y, double 0.000000e+00, double %i.w
  br label %.outer, !llvm.loop !481

bb.f:                                             ; preds = %.loopexit
  %i.ae = icmp eq i32 %.043.ph, %.041.ph
  %i.af = ptrtoint ptr %.037 to i64
  %i.ag = xor i64 %i.c, -1
  %i.ah = add i64 %i.af, %i.ag
  %i.ai = trunc i64 %i.ah to i32
  %.3 = select i1 %i.ae, i32 %i.ai, i32 %.039.ph
  %i.aj = add nsw i32 %.3, 1
  %i.ak = sext i32 %i.aj to i64                   ; 2 uses
  %i.al = getelementptr inbounds i8, ptr %0, i64 %i.ak
  store i8 0, ptr %i.al, align 1, !tbaa !8
  %i.am = getelementptr inbounds i8, ptr %1, i64 %i.ak
  store i8 0, ptr %i.am, align 1, !tbaa !8
  ret i32 %.041.ph
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @resetlocalhom(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp sgt i32 %0, 1
  br i1 %i.a, label %.lr.ph17.preheader, label %._crit_edge

.lr.ph17.preheader:                               ; preds = %bb.a
  %i.b = add nsw i32 %0, -1
  %wide.trip.count24 = zext nneg i32 %i.b to i64
  %wide.trip.count = zext nneg i32 %0 to i64      ; 3 uses
  %i.c = add nsw i64 %wide.trip.count, -2
  br label %.lr.ph

.loopexit:                                        ; preds = %bb.f, %.prol.loopexit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond25.not = icmp eq i64 %indvars.iv.next22, %wide.trip.count24
  br i1 %exitcond25.not, label %._crit_edge, label %.lr.ph, !llvm.loop !483

.lr.ph:                                           ; preds = %.loopexit, %.lr.ph17.preheader
  %indvars.iv21 = phi i64 [ 0, %.lr.ph17.preheader ], [ %indvars.iv.next22, %.loopexit ] ; 4 uses
  %indvars.iv = phi i64 [ 1, %.lr.ph17.preheader ], [ %indvars.iv.next, %.loopexit ] ; 4 uses
  %indvars.iv.next22 = add nuw nsw i64 %indvars.iv21, 1 ; 2 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv21
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !433  ; 3 uses
  %i.f = sub nsw i64 %indvars.iv21, %wide.trip.count
  %i.g = and i64 %i.f, 1
  %lcmp.mod.not.not = icmp eq i64 %i.g, 0
  br i1 %lcmp.mod.not.not, label %.prol.preheader, label %.prol.loopexit

.prol.preheader:                                  ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw [80 x i8], ptr %i.e, i64 %indvars.iv
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.prol.preheader
  %.014.prol = phi ptr [ %i.h, %.prol.preheader ], [ %i.k, %bb.b ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.014.prol, i64 40
  store double 1.000000e+00, ptr %i.i, align 8, !tbaa !435
  %i.j = getelementptr inbounds nuw i8, ptr %.014.prol, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !440  ; 2 uses
  %.not.prol = icmp eq ptr %i.k, null
  br i1 %.not.prol, label %.prol.loopexit.unr-lcssa, label %bb.b, !llvm.loop !484

.prol.loopexit.unr-lcssa:                         ; preds = %bb.b
  %indvars.iv.next19.prol = add nuw nsw i64 %indvars.iv, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv18.unr = phi i64 [ %indvars.iv, %.lr.ph ], [ %indvars.iv.next19.prol, %.prol.loopexit.unr-lcssa ]
  %i.l = icmp eq i64 %i.c, %indvars.iv21
  br i1 %i.l, label %.loopexit, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.prol.loopexit, %bb.f
  %indvars.iv18 = phi i64 [ %indvars.iv.next19.1, %bb.f ], [ %indvars.iv18.unr, %.prol.loopexit ] ; 3 uses
  %i.m = getelementptr inbounds nuw [80 x i8], ptr %i.e, i64 %indvars.iv18
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph.new, %bb.c
  %.014 = phi ptr [ %i.m, %.lr.ph.new ], [ %i.p, %bb.c ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.014, i64 40
  store double 1.000000e+00, ptr %i.n, align 8, !tbaa !435
  %i.o = getelementptr inbounds nuw i8, ptr %.014, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !440  ; 2 uses
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %bb.d, label %bb.c, !llvm.loop !484

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw [80 x i8], ptr %i.e, i64 %indvars.iv18
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 80
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %.014.1 = phi ptr [ %i.r, %bb.d ], [ %i.u, %bb.e ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.014.1, i64 40
  store double 1.000000e+00, ptr %i.s, align 8, !tbaa !435
  %i.t = getelementptr inbounds nuw i8, ptr %.014.1, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !440  ; 2 uses
  %.not.1 = icmp eq ptr %i.u, null
  br i1 %.not.1, label %bb.f, label %bb.e, !llvm.loop !484

bb.f:                                             ; preds = %bb.e
  %indvars.iv.next19.1 = add nuw nsw i64 %indvars.iv18, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next19.1, %wide.trip.count
  br i1 %exitcond.not.1, label %.loopexit, label %.lr.ph.new, !llvm.loop !485

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @gapireru(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #24 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.06 = phi ptr [ %1, %bb.a ], [ %.17, %bb.d ]   ; 3 uses
  %.05 = phi ptr [ %2, %bb.a ], [ %i.a, %bb.d ]   ; 2 uses
  %.0 = phi ptr [ %0, %bb.a ], [ %.1, %bb.d ]     ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.05, i64 1
  %i.b = load i8, ptr %.05, align 1, !tbaa !8     ; 2 uses
  switch i8 %i.b, label %bb.c [
    i8 0, label %bb.e
    i8 45, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %.06, i64 1
  %i.d = load i8, ptr %.06, align 1, !tbaa !8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %storemerge = phi i8 [ %i.d, %bb.c ], [ %i.b, %bb.b ]
  %.17 = phi ptr [ %i.c, %bb.c ], [ %.06, %bb.b ]
  %.1 = getelementptr inbounds nuw i8, ptr %.0, i64 1
  store i8 %storemerge, ptr %.0, align 1, !tbaa !8
  br label %bb.b, !llvm.loop !486

bb.e:                                             ; preds = %bb.b
  store i8 0, ptr %.0, align 1, !tbaa !8
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @getkyokaigap(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #9 {
bb.a:
  %.not5 = icmp eq i32 %3, 0
  br i1 %.not5, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = sext i32 %2 to i64                       ; 5 uses
  %xtraiter = and i32 %3, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph, %.prol.preheader
  %.08.prol = phi i32 [ %i.b, %.prol.preheader ], [ %3, %.lr.ph ]
  %.037.prol = phi ptr [ %i.g, %.prol.preheader ], [ %0, %.lr.ph ] ; 2 uses
  %.046.prol = phi ptr [ %i.c, %.prol.preheader ], [ %1, %.lr.ph ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph ]
  %i.b = add nsw i32 %.08.prol, -1                ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.046.prol, i64 8 ; 2 uses
  %i.d = load ptr, ptr %.046.prol, align 8, !tbaa !12
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 %i.a
  %i.f = load i8, ptr %i.e, align 1, !tbaa !8
  %i.g = getelementptr inbounds nuw i8, ptr %.037.prol, i64 1 ; 2 uses
  store i8 %i.f, ptr %.037.prol, align 1, !tbaa !8
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !487

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph
  %.08.unr = phi i32 [ %3, %.lr.ph ], [ %i.b, %.prol.preheader ]
  %.037.unr = phi ptr [ %0, %.lr.ph ], [ %i.g, %.prol.preheader ]
  %.046.unr = phi ptr [ %1, %.lr.ph ], [ %i.c, %.prol.preheader ]
  %i.h = icmp ult i32 %3, 4
  br i1 %i.h, label %._crit_edge, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %.08 = phi i32 [ %i.x, %.lr.ph.new ], [ %.08.unr, %.prol.loopexit ]
  %.037 = phi ptr [ %i.ac, %.lr.ph.new ], [ %.037.unr, %.prol.loopexit ] ; 5 uses
  %.046 = phi ptr [ %i.y, %.lr.ph.new ], [ %.046.unr, %.prol.loopexit ] ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.046, i64 8
  %i.j = load ptr, ptr %.046, align 8, !tbaa !12
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 %i.a
  %i.l = load i8, ptr %i.k, align 1, !tbaa !8
  %i.m = getelementptr inbounds nuw i8, ptr %.037, i64 1
  store i8 %i.l, ptr %.037, align 1, !tbaa !8
  %i.n = getelementptr inbounds nuw i8, ptr %.046, i64 16
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !12
  %i.p = getelementptr inbounds i8, ptr %i.o, i64 %i.a
  %i.q = load i8, ptr %i.p, align 1, !tbaa !8
  %i.r = getelementptr inbounds nuw i8, ptr %.037, i64 2
  store i8 %i.q, ptr %i.m, align 1, !tbaa !8
  %i.s = getelementptr inbounds nuw i8, ptr %.046, i64 24
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !12
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 %i.a
  %i.v = load i8, ptr %i.u, align 1, !tbaa !8
  %i.w = getelementptr inbounds nuw i8, ptr %.037, i64 3
  store i8 %i.v, ptr %i.r, align 1, !tbaa !8
  %i.x = add nsw i32 %.08, -4                     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.046, i64 32
  %i.z = load ptr, ptr %i.s, align 8, !tbaa !12
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 %i.a
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !8
  %i.ac = getelementptr inbounds nuw i8, ptr %.037, i64 4
  store i8 %i.ab, ptr %i.w, align 1, !tbaa !8
  %.not.3 = icmp eq i32 %i.x, 0
  br i1 %.not.3, label %._crit_edge, label %.lr.ph.new, !llvm.loop !488

._crit_edge:                                      ; preds = %.prol.loopexit, %.lr.ph.new, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @new_OpeningGapCount(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, ptr nofree noundef readonly captures(none) %5) local_unnamed_addr #9 {
bb.a:
  %.not29 = icmp eq i32 %4, 0
  br i1 %.not29, label %._crit_edge39.split, label %.preheader.thread

.preheader.thread:                                ; preds = %bb.a
  %i.a = zext i32 %4 to i64
  %i.b = shl nuw nsw i64 %i.a, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %0, i8 0, i64 %i.b, i1 false), !tbaa !21
  %i.c = icmp sgt i32 %1, 0
  br i1 %i.c, label %.lr.ph36.preheader, label %._crit_edge39.split

.lr.ph36.preheader:                               ; preds = %.preheader.thread
  %wide.trip.count = zext nneg i32 %1 to i64
  %xtraiter = and i32 %4, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
end_hunk_16
