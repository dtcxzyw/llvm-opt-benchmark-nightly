Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/matio?download=true
inline.NumInlined: 4757
inline.NumDeleted: 1842
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_Z11matrix2realPK8t_matrixPPf:bb.a

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.preheader
  %indvars.iv73.epil.init = phi i64 [ 0, %.preheader ], [ %indvars.iv.next74.3, %._crit_edge.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod97)
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.epil.preheader
  %indvars.iv73.epil = phi i64 [ %indvars.iv73.epil.init, %.epil.preheader ], [ %indvars.iv.next74.epil, %bb.i ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.i ]
  %i.cc = load i64, ptr %i.bm, align 8
  %i.cd = mul nsw i64 %i.cc, %indvars.iv76
  %i.ce = getelementptr [2 x i8], ptr %i.bo, i64 %i.cd
  %i.cf = getelementptr [2 x i8], ptr %i.ce, i64 %indvars.iv73.epil
  %i.cg = load i16, ptr %i.cf, align 2, !tbaa !109
  %i.ch = sext i16 %i.cg to i64
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %.sroa.053.0, i64 %i.ch
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !105
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %indvars.iv73.epil
  store float %i.cj, ptr %i.ck, align 4, !tbaa !105
  %indvars.iv.next74.epil = add nuw nsw i64 %indvars.iv73.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.i, !llvm.loop !922

._crit_edge:                                      ; preds = %bb.i, %._crit_edge.unr-lcssa
  %indvars.iv.next77 = add nuw nsw i64 %indvars.iv76, 1 ; 2 uses
  %exitcond80.not = icmp eq i64 %indvars.iv.next77, %wide.trip.count79
  br i1 %exitcond80.not, label %._crit_edge70.split, label %.preheader, !llvm.loop !923

.preheader.new:                                   ; preds = %.preheader, %.preheader.new
  %indvars.iv73 = phi i64 [ %indvars.iv.next74.3, %.preheader.new ], [ 0, %.preheader ] ; 6 uses
  %niter = phi i64 [ %niter.next.3, %.preheader.new ], [ 0, %.preheader ]
  %i.cl = load i64, ptr %i.bm, align 8
  %i.cm = mul nsw i64 %i.cl, %indvars.iv76
  %i.cn = getelementptr [2 x i8], ptr %i.bo, i64 %i.cm
  %i.co = getelementptr [2 x i8], ptr %i.cn, i64 %indvars.iv73
  %i.cp = load i16, ptr %i.co, align 2, !tbaa !109
  %i.cq = sext i16 %i.cp to i64
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.053.0, i64 %i.cq
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !105
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %indvars.iv73
  store float %i.cs, ptr %i.ct, align 4, !tbaa !105
  %indvars.iv.next74 = or disjoint i64 %indvars.iv73, 1 ; 2 uses
  %i.cu = load i64, ptr %i.bm, align 8
  %i.cv = mul nsw i64 %i.cu, %indvars.iv76
  %i.cw = getelementptr [2 x i8], ptr %i.bo, i64 %i.cv
  %i.cx = getelementptr [2 x i8], ptr %i.cw, i64 %indvars.iv.next74
  %i.cy = load i16, ptr %i.cx, align 2, !tbaa !109
  %i.cz = sext i16 %i.cy to i64
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %.sroa.053.0, i64 %i.cz
  %i.db = load float, ptr %i.da, align 4, !tbaa !105
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %indvars.iv.next74
  store float %i.db, ptr %i.dc, align 4, !tbaa !105
  %indvars.iv.next74.1 = or disjoint i64 %indvars.iv73, 2 ; 2 uses
  %i.dd = load i64, ptr %i.bm, align 8
  %i.de = mul nsw i64 %i.dd, %indvars.iv76
  %i.df = getelementptr [2 x i8], ptr %i.bo, i64 %i.de
  %i.dg = getelementptr [2 x i8], ptr %i.df, i64 %indvars.iv.next74.1
  %i.dh = load i16, ptr %i.dg, align 2, !tbaa !109
  %i.di = sext i16 %i.dh to i64
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.053.0, i64 %i.di
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !105
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %indvars.iv.next74.1
  store float %i.dk, ptr %i.dl, align 4, !tbaa !105
  %indvars.iv.next74.2 = or disjoint i64 %indvars.iv73, 3 ; 2 uses
  %i.dm = load i64, ptr %i.bm, align 8
  %i.dn = mul nsw i64 %i.dm, %indvars.iv76
  %i.do = getelementptr [2 x i8], ptr %i.bo, i64 %i.dn
  %i.dp = getelementptr [2 x i8], ptr %i.do, i64 %indvars.iv.next74.2
  %i.dq = load i16, ptr %i.dp, align 2, !tbaa !109
  %i.dr = sext i16 %i.dq to i64
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %.sroa.053.0, i64 %i.dr
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !105
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %indvars.iv.next74.2
  store float %i.dt, ptr %i.du, align 4, !tbaa !105
  %indvars.iv.next74.3 = add nuw nsw i64 %indvars.iv73, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %.preheader.new, !llvm.loop !924

bb.j:                                             ; preds = %bb.c, %._crit_edge70.split
  %.143 = phi ptr [ %.06192, %._crit_edge70.split ], [ null, %bb.c ]
  %.not.i.i.i = icmp eq ptr %.sroa.053.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dv = ptrtoint ptr %.sroa.11.0 to i64
  %i.dw = ptrtoint ptr %.sroa.053.0 to i64
  %i.dx = sub i64 %i.dv, %i.dw
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.053.0, i64 noundef %i.dx) #31
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret ptr %.143

bb.l:                                             ; preds = %bb.h, %bb.f
  %.pn = phi { ptr, i32 } [ %i.bf, %bb.h ], [ %i.ax, %bb.f ]
  %.not.i.i.i51 = icmp eq ptr %.sroa.053.0, null
  br i1 %.not.i.i.i51, label %_ZNSt6vectorIfSaIfEED2Ev.exit52, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dy = ptrtoint ptr %.sroa.11.0 to i64
  %i.dz = ptrtoint ptr %.sroa.053.0 to i64
  %i.ea = sub i64 %i.dy, %i.dz
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.053.0, i64 noundef %i.ea) #31
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit52

_ZNSt6vectorIfSaIfEED2Ev.exit52:                  ; preds = %bb.m, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nofree nounwind uwtable
define void @_Z11write_xpm_mP8_IO_FILE8t_matrix(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly align 8 captures(none) %1) local_unnamed_addr #15 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !55
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.d = load i8, ptr %i.c, align 1, !tbaa !60
  %.fr64 = freeze i8 %i.d
  %i.e = icmp eq i8 %.fr64, 0                     ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.k = load i8, ptr %i.j, align 8, !tbaa !100, !range !75, !noundef !76
  %i.l = trunc nuw i8 %i.k to i1
  tail call fastcc void @_ZL16write_xpm_headerP8_IO_FILERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_S8_S8_b(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i1 noundef zeroext %i.l)
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.224, i64 31, i64 1, ptr %0) ; 0 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 5 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !98
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !99
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 272 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !70
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !55
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = ashr exact i64 %i.v, 6
  %i.x = select i1 %i.e, i32 1, i32 2
  %i.y = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.225, i32 noundef %i.n, i32 noundef %i.p, i64 noundef %i.w, i32 noundef %i.x) #29 ; 0 uses
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !116  ; 3 uses
  %i.aa = load ptr, ptr %i.q, align 8, !tbaa !116 ; 3 uses
  %.not4751 = icmp eq ptr %i.z, %i.aa
  br i1 %.not4751, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  br i1 %i.e, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.lr.ph.split.us
  %.sroa.043.052.us = phi ptr [ %i.at, %.lr.ph.split.us ], [ %i.z, %.lr.ph ] ; 5 uses
  %i.ab = load i8, ptr %.sroa.043.052.us, align 8, !tbaa !59
  %i.ac = sext i8 %i.ab to i32
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.043.052.us, i64 40
  %i.ae = load <2 x double>, ptr %i.ad, align 8, !tbaa !62
  %i.af = fmul <2 x double> %i.ae, splat (double 2.550000e+02)
  %i.ag = tail call <2 x double> @llvm.round.v2f64(<2 x double> %i.af) ; 2 uses
  %i.ah = extractelement <2 x double> %i.ag, i64 0
  %i.ai = fptoui double %i.ah to i32
  %i.aj = extractelement <2 x double> %i.ag, i64 1
  %i.ak = fptoui double %i.aj to i32
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.043.052.us, i64 56
  %i.am = load double, ptr %i.al, align 8, !tbaa !65
  %i.an = fmul double %i.am, 2.550000e+02
  %i.ao = tail call double @llvm.round.f64(double %i.an)
  %i.ap = fptoui double %i.ao to i32
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.043.052.us, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !50
  %i.as = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.226, i32 noundef %i.ac, i32 noundef 32, i32 noundef %i.ai, i32 noundef %i.ak, i32 noundef %i.ap, ptr noundef %i.ar) #29 ; 0 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.043.052.us, i64 64 ; 2 uses
  %.not47.us = icmp eq ptr %i.at, %i.aa
  br i1 %.not47.us, label %._crit_edge, label %.lr.ph.split.us

._crit_edge:                                      ; preds = %.lr.ph.split, %.lr.ph.split.us, %bb.a
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !102 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !103
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = ptrtoint ptr %i.av to i64
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.ba
  tail call fastcc void @_ZL12writeXpmAxisP8_IO_FILEPKcN3gmx8ArrayRefIKfEE(ptr noundef %0, ptr noundef nonnull @.str.207, ptr %i.av, ptr %i.bb)
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !102 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !103
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = ptrtoint ptr %i.bd to i64
  %i.bi = sub i64 %i.bg, %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bi
  tail call fastcc void @_ZL12writeXpmAxisP8_IO_FILEPKcN3gmx8ArrayRefIKfEE(ptr noundef %0, ptr noundef nonnull @.str.208, ptr %i.bd, ptr %i.bj)
  %i.bk = load i32, ptr %i.o, align 8, !tbaa !99  ; 4 uses
  %i.bl = icmp sgt i32 %i.bk, 0
  br i1 %i.bl, label %.lr.ph61, label %._crit_edge62

.lr.ph61:                                         ; preds = %._crit_edge
  %.03557 = add nsw i32 %i.bk, -1
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 240 ; 2 uses
  %i.bo = zext nneg i32 %.03557 to i64            ; 2 uses
  br i1 %i.e, label %.lr.ph61.split.us, label %.lr.ph61.split

.lr.ph61.split.us:                                ; preds = %.lr.ph61, %bb.e
  %indvars.iv74.in = phi i64 [ %indvars.iv.next75, %bb.e ], [ %i.bo, %.lr.ph61 ] ; 4 uses
  %.035.in58.us = phi i32 [ %i.bs, %bb.e ], [ %i.bk, %.lr.ph61 ]
  %i.bp = load i32, ptr %i.o, align 8, !tbaa !99  ; 3 uses
  %i.bq = sdiv i32 %i.bp, 100
  %i.br = add nsw i32 %i.bq, 1
  %i.bs = trunc nuw nsw i64 %indvars.iv74.in to i32 ; 3 uses
  %i.bt = srem i32 %i.bs, %i.br
  %i.bu = icmp eq i32 %i.bt, 0
  br i1 %i.bu, label %bb.b, label %.preheader.us

bb.b:                                             ; preds = %.lr.ph61.split.us
  %i.bv = load ptr, ptr @stderr, align 8, !tbaa !45
  %i.bw = sub nsw i32 %i.bp, %i.bs
  %i.bx = mul nsw i32 %i.bw, 100
  %i.by = sdiv i32 %i.bx, %i.bp
  %i.bz = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bv, ptr noundef nonnull @.str.47, i32 noundef %i.by) #35 ; 0 uses
  br label %.preheader.us

.preheader.us:                                    ; preds = %bb.b, %.lr.ph61.split.us
  %fputc.us = tail call i32 @fputc(i32 34, ptr %0) ; 0 uses
  %i.ca = load i32, ptr %i.m, align 4, !tbaa !98
  %i.cb = icmp sgt i32 %i.ca, 0
  br i1 %i.cb, label %.lr.ph56.us, label %.loopexit.us

.lr.ph56.us:                                      ; preds = %.preheader.us, %.lr.ph56.us
  %indvars.iv71 = phi i64 [ %indvars.iv.next72, %.lr.ph56.us ], [ 0, %.preheader.us ] ; 2 uses
  %i.cc = load ptr, ptr %i.bm, align 8, !tbaa !111
  %i.cd = load i64, ptr %i.bn, align 8
  %i.ce = mul nsw i64 %i.cd, %indvars.iv71
  %i.cf = getelementptr [2 x i8], ptr %i.cc, i64 %i.ce
  %i.cg = getelementptr [2 x i8], ptr %i.cf, i64 %indvars.iv74.in
  %i.ch = load i16, ptr %i.cg, align 2, !tbaa !109
  %i.ci = sext i16 %i.ch to i64
  %i.cj = load ptr, ptr %i.a, align 8, !tbaa !55
  %i.ck = getelementptr inbounds nuw [64 x i8], ptr %i.cj, i64 %i.ci
  %i.cl = load i8, ptr %i.ck, align 8, !tbaa !59
  %i.cm = sext i8 %i.cl to i32
  %fputc39.us = tail call i32 @fputc(i32 %i.cm, ptr %0) ; 0 uses
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1 ; 2 uses
  %i.cn = load i32, ptr %i.m, align 4, !tbaa !98
  %i.co = sext i32 %i.cn to i64
  %i.cp = icmp slt i64 %indvars.iv.next72, %i.co
  br i1 %i.cp, label %.lr.ph56.us, label %.loopexit.us, !llvm.loop !925

.loopexit.us:                                     ; preds = %.lr.ph56.us, %.preheader.us
  %.not.us = icmp eq i32 %.035.in58.us, 1
  br i1 %.not.us, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.loopexit.us
  %fwrite38.us = tail call i64 @fwrite(ptr nonnull @.str.230, i64 3, i64 1, ptr %0) ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %.loopexit.us
  %fwrite37.us = tail call i64 @fwrite(ptr nonnull @.str.231, i64 2, i64 1, ptr %0) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %indvars.iv.next75 = add nsw i64 %indvars.iv74.in, -1
  %2 = icmp sgt i64 %indvars.iv74.in, 0
  br i1 %2, label %.lr.ph61.split.us, label %._crit_edge62, !llvm.loop !926

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split
  %.sroa.043.052 = phi ptr [ %i.dl, %.lr.ph.split ], [ %i.z, %.lr.ph ] ; 6 uses
  %i.cq = load i8, ptr %.sroa.043.052, align 8, !tbaa !59
  %i.cr = sext i8 %i.cq to i32
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.043.052, i64 1
  %i.ct = load i8, ptr %i.cs, align 1
  %i.cu = sext i8 %i.ct to i32
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.043.052, i64 40
  %i.cw = load <2 x double>, ptr %i.cv, align 8, !tbaa !62
  %i.cx = fmul <2 x double> %i.cw, splat (double 2.550000e+02)
  %i.cy = tail call <2 x double> @llvm.round.v2f64(<2 x double> %i.cx) ; 2 uses
  %i.cz = extractelement <2 x double> %i.cy, i64 0
  %i.da = fptoui double %i.cz to i32
  %i.db = extractelement <2 x double> %i.cy, i64 1
  %i.dc = fptoui double %i.db to i32
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.043.052, i64 56
  %i.de = load double, ptr %i.dd, align 8, !tbaa !65
  %i.df = fmul double %i.de, 2.550000e+02
  %i.dg = tail call double @llvm.round.f64(double %i.df)
  %i.dh = fptoui double %i.dg to i32
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.043.052, i64 8
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !50
  %i.dk = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.226, i32 noundef %i.cr, i32 noundef %i.cu, i32 noundef %i.da, i32 noundef %i.dc, i32 noundef %i.dh, ptr noundef %i.dj) #29 ; 0 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.043.052, i64 64 ; 2 uses
  %.not47 = icmp eq ptr %i.dl, %i.aa
  br i1 %.not47, label %._crit_edge, label %.lr.ph.split

._crit_edge62:                                    ; preds = %bb.i, %bb.e, %._crit_edge
  ret void

.lr.ph61.split:                                   ; preds = %.lr.ph61, %bb.i
  %indvars.iv68.in = phi i64 [ %indvars.iv.next69, %bb.i ], [ %i.bo, %.lr.ph61 ] ; 4 uses
  %.035.in58 = phi i32 [ %i.dp, %bb.i ], [ %i.bk, %.lr.ph61 ]
  %i.dm = load i32, ptr %i.o, align 8, !tbaa !99  ; 3 uses
  %i.dn = sdiv i32 %i.dm, 100
  %i.do = add nsw i32 %i.dn, 1
  %i.dp = trunc nuw nsw i64 %indvars.iv68.in to i32 ; 3 uses
  %i.dq = srem i32 %i.dp, %i.do
  %i.dr = icmp eq i32 %i.dq, 0
  br i1 %i.dr, label %bb.f, label %.preheader49

bb.f:                                             ; preds = %.lr.ph61.split
  %i.ds = load ptr, ptr @stderr, align 8, !tbaa !45
  %i.dt = sub nsw i32 %i.dm, %i.dp
  %i.du = mul nsw i32 %i.dt, 100
  %i.dv = sdiv i32 %i.du, %i.dm
  %i.dw = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ds, ptr noundef nonnull @.str.47, i32 noundef %i.dv) #35 ; 0 uses
  br label %.preheader49

.preheader49:                                     ; preds = %bb.f, %.lr.ph61.split
  %fputc = tail call i32 @fputc(i32 34, ptr %0)   ; 0 uses
  %i.dx = load i32, ptr %i.m, align 4, !tbaa !98
  %i.dy = icmp sgt i32 %i.dx, 0
  br i1 %i.dy, label %.lr.ph54, label %.loopexit50

.lr.ph54:                                         ; preds = %.preheader49, %.lr.ph54
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph54 ], [ 0, %.preheader49 ] ; 2 uses
  %i.dz = load ptr, ptr %i.bm, align 8, !tbaa !111
  %i.ea = load i64, ptr %i.bn, align 8
  %i.eb = mul nsw i64 %i.ea, %indvars.iv
  %i.ec = getelementptr [2 x i8], ptr %i.dz, i64 %i.eb
  %i.ed = getelementptr [2 x i8], ptr %i.ec, i64 %indvars.iv68.in
  %i.ee = load i16, ptr %i.ed, align 2, !tbaa !109
  %i.ef = sext i16 %i.ee to i64
  %i.eg = load ptr, ptr %i.a, align 8, !tbaa !55
  %i.eh = getelementptr inbounds nuw [64 x i8], ptr %i.eg, i64 %i.ef
  %i.ei = load i16, ptr %i.eh, align 8            ; 2 uses
  %.sroa.046.0.extract.trunc = zext i16 %i.ei to i32
  %.sroa.5.0.extract.shift = lshr i16 %i.ei, 8
  %.sroa.5.0.extract.trunc = zext nneg i16 %.sroa.5.0.extract.shift to i32
  %sext = shl i32 %.sroa.046.0.extract.trunc, 24
  %i.ej = ashr exact i32 %sext, 24
  %sext48 = shl nuw i32 %.sroa.5.0.extract.trunc, 24
  %i.ek = ashr exact i32 %sext48, 24
  %i.el = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.229, i32 noundef %i.ej, i32 noundef %i.ek) #29 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.em = load i32, ptr %i.m, align 4, !tbaa !98
  %i.en = sext i32 %i.em to i64
  %i.eo = icmp slt i64 %indvars.iv.next, %i.en
  br i1 %i.eo, label %.lr.ph54, label %.loopexit50, !llvm.loop !927

.loopexit50:                                      ; preds = %.lr.ph54, %.preheader49
  %.not = icmp eq i32 %.035.in58, 1
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.loopexit50
  %fwrite38 = tail call i64 @fwrite(ptr nonnull @.str.230, i64 3, i64 1, ptr %0) ; 0 uses
  br label %bb.i

bb.h:                                             ; preds = %.loopexit50
  %fwrite37 = tail call i64 @fwrite(ptr nonnull @.str.231, i64 2, i64 1, ptr %0) ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %indvars.iv.next69 = add nsw i64 %indvars.iv68.in, -1
  %3 = icmp sgt i64 %indvars.iv68.in, 0
  br i1 %3, label %.lr.ph61.split, label %._crit_edge62, !llvm.loop !926
}

; Function Attrs: mustprogress nofree nounwind uwtable
define internal fastcc void @_ZL16write_xpm_headerP8_IO_FILERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_S8_S8_b(ptr nofree noundef captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %4, i1 noundef zeroext %5) unnamed_addr #15 {
bb.a:
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.232, i64 10, i64 1, ptr %0) ; 0 uses
  %fwrite12 = tail call i64 @fwrite(ptr nonnull @.str.233, i64 70, i64 1, ptr %0) ; 0 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !50
  %i.b = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.234, ptr noundef %i.a) #29 ; 0 uses
  %i.c = load ptr, ptr %2, align 8, !tbaa !50
  %i.d = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.235, ptr noundef %i.c) #29 ; 0 uses
  %i.e = load ptr, ptr %3, align 8, !tbaa !50
  %i.f = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.236, ptr noundef %i.e) #29 ; 0 uses
  %i.g = load ptr, ptr %4, align 8, !tbaa !50
  %i.h = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.237, ptr noundef %i.g) #29 ; 0 uses
  br i1 %5, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %fwrite14 = tail call i64 @fwrite(ptr nonnull @.str.238, i64 26, i64 1, ptr %0) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %fwrite13 = tail call i64 @fwrite(ptr nonnull @.str.239, i64 28, i64 1, ptr %0) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.round.f64(double) #22

; Function Attrs: mustprogress nofree nounwind uwtable
define internal fastcc void @_ZL12writeXpmAxisP8_IO_FILEPKcN3gmx8ArrayRefIKfEE(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr %2, ptr %3) unnamed_addr #15 {
bb.a:
  %i.a = icmp eq ptr %2, %3
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %3 to i64
  %i.c = ptrtoint ptr %2 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = ashr exact i64 %i.d, 2
  %i.f = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.241, ptr noundef %1) #29 ; 0 uses
  %i.g = load float, ptr %2, align 4, !tbaa !105
  %i.h = fpext float %i.g to double
  %i.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.242, double noundef %i.h) #29 ; 0 uses
  %.not.peel = icmp eq i64 %i.d, 4
  br i1 %.not.peel, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.d, %bb.b
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.240, i64 3, i64 1, ptr %0) ; 0 uses
  br label %bb.e

.lr.ph:                                           ; preds = %bb.b, %bb.d
  %.012 = phi i64 [ %i.q, %bb.d ], [ 1, %bb.b ]   ; 3 uses
  %i.j = urem i64 %.012, 80
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %fwrite10 = tail call i64 @fwrite(ptr nonnull @.str.240, i64 3, i64 1, ptr %0) ; 0 uses
  %i.l = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.241, ptr noundef %1) #29 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.012
  %i.n = load float, ptr %i.m, align 4, !tbaa !105
  %i.o = fpext float %i.n to double
  %i.p = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.242, double noundef %i.o) #29 ; 0 uses
  %i.q = add nuw nsw i64 %.012, 1                 ; 2 uses
  %.not = icmp eq i64 %i.q, %i.e
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !928

bb.e:                                             ; preds = %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_Z10write_xpm3P8_IO_FILEjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_S8_S8_iiPfS9_PS9_fff5t_rgbSB_SB_Pi(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %5, i32 noundef %6, i32 noundef %7, ptr noundef %8, ptr noundef %9, ptr nofree noundef readonly captures(none) %10, float noundef %11, float noundef %12, float noundef %13, ptr nofree noundef readonly byval(%struct.t_rgb) align 8 captures(none) %14, ptr nofree noundef readonly byval(%struct.t_rgb) align 8 captures(none) %15, ptr nofree noundef readonly byval(%struct.t_rgb) align 8 captures(none) %16, ptr nofree noundef captures(none) %17) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %18 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %19 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %i.a = fcmp ugt float %13, %11
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #29
  call void @_ZNSt10filesystem7__cxx114pathC2IA61_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %19, ptr noundef nonnull align 1 dereferenceable(61) @.str.1, i8 noundef zeroext 2)
  %i.b = fpext float %13 to double
  %i.c = fpext float %11 to double
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %19, i32 noundef 1131, ptr noundef nonnull @.str.243, double noundef %i.b, double noundef %i.c) #30
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

common.resume:                                    ; preds = %bb.l, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.d, %bb.d ], [ %i.ab, %bb.l ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %19) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #29
  br label %common.resume

bb.e:                                             ; preds = %bb.a
  %fwrite.i = tail call i64 @fwrite(ptr nonnull @.str.232, i64 10, i64 1, ptr %0) ; 0 uses
  %fwrite12.i = tail call i64 @fwrite(ptr nonnull @.str.233, i64 70, i64 1, ptr %0) ; 0 uses
  %i.e = load ptr, ptr %2, align 8, !tbaa !50
  %i.f = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.234, ptr noundef %i.e) #29 ; 0 uses
  %i.g = load ptr, ptr %3, align 8, !tbaa !50
  %i.h = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.235, ptr noundef %i.g) #29 ; 0 uses
  %i.i = load ptr, ptr %4, align 8, !tbaa !50
  %i.j = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.236, ptr noundef %i.i) #29 ; 0 uses
  %i.k = load ptr, ptr %5, align 8, !tbaa !50
  %i.l = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.237, ptr noundef %i.k) #29 ; 0 uses
  %fwrite13.i = tail call i64 @fwrite(ptr nonnull @.str.239, i64 28, i64 1, ptr %0) ; 0 uses
  %i.m = load <2 x double>, ptr %14, align 8, !tbaa !62 ; 2 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 16
  %.sroa.3.0.copyload = load double, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !62 ; 2 uses
  %.sroa.358.0..sroa_idx = getelementptr inbounds nuw i8, ptr %15, i64 16
  %.sroa.358.0.copyload = load double, ptr %.sroa.358.0..sroa_idx, align 8, !tbaa !62 ; 3 uses
  %i.n = load <2 x double>, ptr %15, align 8, !tbaa !62 ; 3 uses
  %i.o = load <2 x double>, ptr %16, align 8, !tbaa !62
  %.sroa.364.0..sroa_idx = getelementptr inbounds nuw i8, ptr %16, i64 16
  %.sroa.364.0.copyload = load double, ptr %.sroa.364.0..sroa_idx, align 8, !tbaa !62
  %i.p = load i32, ptr %17, align 4, !tbaa !52    ; 4 uses
  %i.q = icmp sgt i32 %i.p, 7921
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.r = load ptr, ptr @stderr, align 8, !tbaa !45
  %i.s = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.r, ptr noundef nonnull @.str.244, i32 noundef %i.p, i32 noundef 7921) #35 ; 0 uses
  br label %.sink.split.i

bb.g:                                             ; preds = %bb.e
  %i.t = icmp slt i32 %i.p, 2
  br i1 %i.t, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.u = load ptr, ptr @stderr, align 8, !tbaa !45
  %i.v = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.u, ptr noundef nonnull @.str.245, i32 noundef %i.p) #35 ; 0 uses
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.h, %bb.f
  %.sink.i = phi i32 [ 2, %bb.h ], [ 7921, %bb.f ]
  store i32 %.sink.i, ptr %17, align 4, !tbaa !52
  br label %bb.i

bb.i:                                             ; preds = %.sink.split.i, %bb.g
  %i.w = fcmp oge float %12, %11
  %i.x = fcmp olt float %12, %13
  %or.cond.i = and i1 %i.w, %i.x
  br i1 %or.cond.i, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #29
  call void @_ZNSt10filesystem7__cxx114pathC2IA61_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %18, ptr noundef nonnull align 1 dereferenceable(61) @.str.1, i8 noundef zeroext 2)
  %i.y = fpext float %11 to double
  %i.z = fpext float %12 to double
  %i.aa = fpext float %13 to double
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %18, i32 noundef 672, ptr noundef nonnull @.str.246, double noundef %i.y, double noundef %i.z, double noundef %i.aa) #30
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %18) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #29
  br label %common.resume

bb.m:                                             ; preds = %bb.i
  %fwrite.i37 = tail call i64 @fwrite(ptr nonnull @.str.224, i64 31, i64 1, ptr %0) ; 0 uses
  %i.ac = load i32, ptr %17, align 4, !tbaa !52   ; 2 uses
  %i.ad = icmp slt i32 %i.ac, 90
  %i.ae = select i1 %i.ad, i32 1, i32 2
  %i.af = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.247, i32 noundef %6, i32 noundef %7, i32 noundef %i.ac, i32 noundef %i.ae) #29 ; 0 uses
  %i.ag = load i32, ptr %17, align 4, !tbaa !52   ; 3 uses
  %i.ah = fsub float %12, %11                     ; 2 uses
  %i.ai = fsub float %13, %11
  %i.aj = fdiv float %i.ah, %i.ai                 ; 2 uses
  %i.ak = add nsw i32 %i.ag, -1                   ; 2 uses
  %i.al = sitofp i32 %i.ak to float
  %i.am = fmul float %i.aj, %i.al
  %i.an = fptosi float %i.am to i32
  %.sroa.speculated7.i.i = tail call i32 @llvm.smax.i32(i32 %i.an, i32 0)
  %.sroa.speculated.i.i = tail call noundef range(i32 -2147483648, 2147483647) i32 @llvm.smin.i32(i32 %i.ak, i32 %.sroa.speculated7.i.i) ; 8 uses
  %i.ao = sitofp i32 %.sroa.speculated.i.i to double ; 3 uses
  %i.ap = xor i32 %.sroa.speculated.i.i, -1       ; 2 uses
  %i.aq = add i32 %i.ag, %i.ap
  %i.ar = sitofp i32 %i.aq to double              ; 3 uses
  %i.as = icmp sgt i32 %.sroa.speculated.i.i, 0
  br i1 %i.as, label %.lr.ph.i, label %.preheader.i
end_hunk_0
begin_hunk_1_@_Z10write_xpm3P8_IO_FILEjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_S8_S8_iiPfS9_PS9_fff5t_rgbSB_SB_Pi:bb.a

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.dj = phi i32 [ %i.di, %bb.r ], [ 32, %bb.q ]
  %i.dk = fmul <2 x double> %i.cv, splat (double 2.550000e+02)
  %i.dl = tail call <2 x double> @llvm.round.v2f64(<2 x double> %i.dk) ; 2 uses
  %i.dm = extractelement <2 x double> %i.dl, i64 0
  %i.dn = fptoui double %i.dm to i32
  %i.do = extractelement <2 x double> %i.dl, i64 1
  %i.dp = fptoui double %i.do to i32
  %i.dq = fmul double %i.cy, 2.550000e+02
  %i.dr = tail call double @llvm.round.f64(double %i.dq)
  %i.ds = fptoui double %i.dr to i32
  %i.dt = add i32 %i.cp, %i.ap
  %i.du = sub i32 %i.dt, %.187.i
  %i.dv = sitofp i32 %i.du to float
  %i.dw = uitofp nneg i32 %.187.i to float
  %i.dx = fmul float %13, %i.dw
  %i.dy = tail call float @llvm.fmuladd.f32(float %i.dv, float %12, float %i.dx)
  %i.dz = fpext float %i.dy to double
  %i.ea = fdiv double %i.dz, %i.ar
  %i.eb = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.248, i32 noundef %i.de, i32 noundef %i.dj, i32 noundef %i.dn, i32 noundef %i.dp, i32 noundef %i.ds, double noundef %i.ea) #29 ; 0 uses
  %i.ec = add nuw nsw i32 %.187.i, 1              ; 2 uses
  %i.ed = load i32, ptr %17, align 4, !tbaa !52   ; 2 uses
  %i.ee = sub nsw i32 %i.ed, %.sroa.speculated.i.i
  %i.ef = icmp slt i32 %i.ec, %i.ee
  br i1 %i.ef, label %bb.q, label %_ZL14write_xpm_map3P8_IO_FILEiiPifff5t_rgbS2_S2_.exit, !llvm.loop !931

_ZL14write_xpm_map3P8_IO_FILEiiPifff5t_rgbS2_S2_.exit: ; preds = %bb.s, %.preheader.i
  %i.eg = sext i32 %6 to i64
  %i.eh = getelementptr inbounds [4 x i8], ptr %8, i64 %i.eg
  %i.ei = and i32 %1, 1
  %i.ej = zext nneg i32 %i.ei to i64
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %i.ej
  tail call fastcc void @_ZL12writeXpmAxisP8_IO_FILEPKcN3gmx8ArrayRefIKfEE(ptr noundef %0, ptr noundef nonnull @.str.207, ptr %8, ptr %i.ek)
  %i.el = sext i32 %7 to i64
  %i.em = getelementptr inbounds [4 x i8], ptr %9, i64 %i.el
  %i.en = lshr i32 %1, 1
  %.lobit = and i32 %i.en, 1
  %i.eo = zext nneg i32 %.lobit to i64
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %i.eo
  tail call fastcc void @_ZL12writeXpmAxisP8_IO_FILEPKcN3gmx8ArrayRefIKfEE(ptr noundef %0, ptr noundef nonnull @.str.208, ptr %9, ptr %i.ep)
  %i.eq = load i32, ptr %17, align 4, !tbaa !52   ; 2 uses
  %i.er = add nsw i32 %i.eq, -1                   ; 5 uses
  %i.es = sitofp i32 %i.er to float
  %i.et = fmul float %i.aj, %i.es
  %i.eu = fptosi float %i.et to i32
  %.sroa.speculated7.i.i38 = tail call i32 @llvm.smax.i32(i32 %i.eu, i32 0)
  %.sroa.speculated.i.i39 = tail call noundef range(i32 -2147483648, 2147483647) i32 @llvm.smin.i32(i32 %i.er, i32 %.sroa.speculated7.i.i38) ; 4 uses
  %i.ev = sub nsw i32 %i.er, %.sroa.speculated.i.i39
  %i.ew = uitofp nneg i32 %i.ev to float
  %i.ex = fsub float %13, %12
  %i.ey = fdiv float %i.ew, %i.ex                 ; 2 uses
  %i.ez = sitofp i32 %.sroa.speculated.i.i39 to float
  %i.fa = fdiv float %i.ez, %i.ah                 ; 2 uses
  %.05466.i = add nsw i32 %7, -1                  ; 2 uses
  %i.fb = icmp sgt i32 %7, 0
  br i1 %i.fb, label %.lr.ph70.i, label %_ZL15write_xpm_data3P8_IO_FILEiiPPffffi.exit

.lr.ph70.i:                                       ; preds = %_ZL14write_xpm_map3P8_IO_FILEiiPifff5t_rgbS2_S2_.exit
  %i.fc = udiv i32 %7, 100
  %i.fd = add nuw nsw i32 %i.fc, 1                ; 3 uses
  %i.fe = icmp sgt i32 %6, 0
  br i1 %i.fe, label %.lr.ph70.split.us.i, label %.lr.ph70.split.i

.lr.ph70.split.us.i:                              ; preds = %.lr.ph70.i
  %i.ff = icmp slt i32 %i.eq, 90
  %i.fg = zext nneg i32 %.05466.i to i64          ; 2 uses
  %wide.trip.count87.i = zext nneg i32 %6 to i64  ; 2 uses
  br i1 %i.ff, label %.lr.ph70.split.us.split.us.i, label %.lr.ph70.split.us.split.i

.lr.ph70.split.us.split.us.i:                     ; preds = %.lr.ph70.split.us.i, %bb.ab
  %indvars.iv89.i = phi i64 [ %indvars.iv.next90.i, %bb.ab ], [ %i.fg, %.lr.ph70.split.us.i ] ; 4 uses
  %.054.in67.us.us.i = phi i32 [ %i.fh, %bb.ab ], [ %7, %.lr.ph70.split.us.i ]
  %i.fh = trunc nuw nsw i64 %indvars.iv89.i to i32 ; 3 uses
  %i.fi = srem i32 %i.fh, %i.fd
  %i.fj = icmp eq i32 %i.fi, 0
  br i1 %i.fj, label %bb.t, label %.lr.ph.us.us.i

bb.t:                                             ; preds = %.lr.ph70.split.us.split.us.i
  %i.fk = load ptr, ptr @stderr, align 8, !tbaa !45
  %i.fl = sub i32 %7, %i.fh
  %i.fm = mul i32 %i.fl, 100
  %i.fn = udiv i32 %i.fm, %7
  %i.fo = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fk, ptr noundef nonnull @.str.47, i32 noundef %i.fn) #35 ; 0 uses
  br label %.lr.ph.us.us.i

.lr.ph.us.us.i:                                   ; preds = %bb.t, %.lr.ph70.split.us.split.us.i
  %fputc.us.us.i = tail call i32 @fputc(i32 34, ptr %0) ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.y, %.lr.ph.us.us.i
  %indvars.iv84.i = phi i64 [ %indvars.iv.next85.i, %bb.y ], [ 0, %.lr.ph.us.us.i ] ; 2 uses
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %indvars.iv84.i
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !38
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.fq, i64 %indvars.iv89.i
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !105 ; 4 uses
  %i.ft = fcmp ult float %i.fs, %12
  br i1 %i.ft, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fu = fsub float %i.fs, %12
  %i.fv = fmul float %i.ey, %i.fu
  %i.fw = tail call float @llvm.rint.f32(float %i.fv)
  %i.fx = fptosi float %i.fw to i32
  %i.fy = add nsw i32 %.sroa.speculated.i.i39, %i.fx
  br label %bb.y

bb.w:                                             ; preds = %bb.u
  %i.fz = fcmp ult float %i.fs, %11
  br i1 %i.fz, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ga = fsub float %i.fs, %11
  %i.gb = fmul float %i.fa, %i.ga
  %i.gc = tail call float @llvm.rint.f32(float %i.gb)
  %i.gd = fptosi float %i.gc to i32
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v
  %.0.us.us.us.i = phi i32 [ %i.fy, %bb.v ], [ %i.gd, %bb.x ], [ 0, %bb.w ]
  %spec.store.select.us.us.us.i = tail call i32 @llvm.smax.i32(i32 %.0.us.us.us.i, i32 0)
  %spec.select.us.us.us.i = tail call i32 @llvm.smin.i32(i32 %spec.store.select.us.us.us.i, i32 %i.er)
  %i.ge = sext i32 %spec.select.us.us.us.i to i64
  %i.gf = getelementptr inbounds i8, ptr @_ZL6mapper, i64 %i.ge
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !51
  %i.gh = sext i8 %i.gg to i32
  %fputc62.us.us.us.i = tail call i32 @fputc(i32 %i.gh, ptr %0) ; 0 uses
  %indvars.iv.next85.i = add nuw nsw i64 %indvars.iv84.i, 1 ; 2 uses
  %exitcond88.not.i = icmp eq i64 %indvars.iv.next85.i, %wide.trip.count87.i
  br i1 %exitcond88.not.i, label %._crit_edge.split.us.us.us.i, label %bb.u, !llvm.loop !932

._crit_edge.split.us.us.us.i:                     ; preds = %bb.y
  %.not.us.us.i = icmp eq i32 %.054.in67.us.us.i, 1
  br i1 %.not.us.us.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %._crit_edge.split.us.us.us.i
  %fwrite60.us.us.i = tail call i64 @fwrite(ptr nonnull @.str.230, i64 3, i64 1, ptr %0) ; 0 uses
  br label %bb.ab

bb.aa:                                            ; preds = %._crit_edge.split.us.us.us.i
  %fwrite.us.us.i = tail call i64 @fwrite(ptr nonnull @.str.231, i64 2, i64 1, ptr %0) ; 0 uses
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %indvars.iv.next90.i = add nsw i64 %indvars.iv89.i, -1
  %i.gi = icmp sgt i64 %indvars.iv89.i, 0
  br i1 %i.gi, label %.lr.ph70.split.us.split.us.i, label %_ZL15write_xpm_data3P8_IO_FILEiiPPffffi.exit, !llvm.loop !933

.lr.ph70.split.us.split.i:                        ; preds = %.lr.ph70.split.us.i, %bb.ak
  %indvars.iv81.i = phi i64 [ %indvars.iv.next82.i, %bb.ak ], [ %i.fg, %.lr.ph70.split.us.i ] ; 4 uses
  %.054.in67.us.i = phi i32 [ %i.gj, %bb.ak ], [ %7, %.lr.ph70.split.us.i ]
  %i.gj = trunc nuw nsw i64 %indvars.iv81.i to i32 ; 3 uses
  %i.gk = srem i32 %i.gj, %i.fd
  %i.gl = icmp eq i32 %i.gk, 0
  br i1 %i.gl, label %bb.ac, label %.lr.ph.us.i

bb.ac:                                            ; preds = %.lr.ph70.split.us.split.i
  %i.gm = load ptr, ptr @stderr, align 8, !tbaa !45
  %i.gn = sub i32 %7, %i.gj
  %i.go = mul i32 %i.gn, 100
  %i.gp = udiv i32 %i.go, %7
  %i.gq = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gm, ptr noundef nonnull @.str.47, i32 noundef %i.gp) #35 ; 0 uses
  br label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %bb.ac, %.lr.ph70.split.us.split.i
  %fputc.us.i = tail call i32 @fputc(i32 34, ptr %0) ; 0 uses
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ah, %.lr.ph.us.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.ah ], [ 0, %.lr.ph.us.i ] ; 2 uses
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %indvars.iv.i
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !38
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.gs, i64 %indvars.iv81.i
  %i.gu = load float, ptr %i.gt, align 4, !tbaa !105 ; 4 uses
  %i.gv = fcmp ult float %i.gu, %12
  br i1 %i.gv, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gw = fsub float %i.gu, %12
  %i.gx = fmul float %i.ey, %i.gw
  %i.gy = tail call float @llvm.rint.f32(float %i.gx)
  %i.gz = fptosi float %i.gy to i32
  %i.ha = add nsw i32 %.sroa.speculated.i.i39, %i.gz
  br label %bb.ah

bb.af:                                            ; preds = %bb.ad
  %i.hb = fcmp ult float %i.gu, %11
  br i1 %i.hb, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.hc = fsub float %i.gu, %11
  %i.hd = fmul float %i.fa, %i.hc
  %i.he = tail call float @llvm.rint.f32(float %i.hd)
  %i.hf = fptosi float %i.he to i32
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %bb.ae
  %.0.us74.i = phi i32 [ %i.ha, %bb.ae ], [ %i.hf, %bb.ag ], [ 0, %bb.af ]
  %spec.store.select.us75.i = tail call i32 @llvm.smax.i32(i32 %.0.us74.i, i32 0)
  %spec.select.us76.i = tail call i32 @llvm.smin.i32(i32 %spec.store.select.us75.i, i32 %i.er) ; 2 uses
  %20 = urem i32 %spec.select.us76.i, 89
  %.sext.us.i = zext nneg i32 %20 to i64
  %i.hg = getelementptr inbounds nuw i8, ptr @_ZL6mapper, i64 %.sext.us.i
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !51
  %i.hi = sext i8 %i.hh to i32
  %21 = udiv i32 %spec.select.us76.i, 89
  %.sext64.us.i = zext nneg i32 %21 to i64
  %i.hj = getelementptr inbounds nuw i8, ptr @_ZL6mapper, i64 %.sext64.us.i
  %i.hk = load i8, ptr %i.hj, align 1, !tbaa !51
  %i.hl = sext i8 %i.hk to i32
  %i.hm = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.229, i32 noundef %i.hi, i32 noundef %i.hl) #29 ; 0 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i41 = icmp eq i64 %indvars.iv.next.i, %wide.trip.count87.i
  br i1 %exitcond.not.i41, label %._crit_edge.split.us77.i, label %bb.ad, !llvm.loop !932

._crit_edge.split.us77.i:                         ; preds = %bb.ah
  %.not.us.i = icmp eq i32 %.054.in67.us.i, 1
  br i1 %.not.us.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %._crit_edge.split.us77.i
  %fwrite60.us.i = tail call i64 @fwrite(ptr nonnull @.str.230, i64 3, i64 1, ptr %0) ; 0 uses
  br label %bb.ak

bb.aj:                                            ; preds = %._crit_edge.split.us77.i
  %fwrite.us.i = tail call i64 @fwrite(ptr nonnull @.str.231, i64 2, i64 1, ptr %0) ; 0 uses
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %indvars.iv.next82.i = add nsw i64 %indvars.iv81.i, -1
  %i.hn = icmp sgt i64 %indvars.iv81.i, 0
  br i1 %i.hn, label %.lr.ph70.split.us.split.i, label %_ZL15write_xpm_data3P8_IO_FILEiiPPffffi.exit, !llvm.loop !933

.lr.ph70.split.i:                                 ; preds = %.lr.ph70.i, %bb.ap
  %.05468.i = phi i32 [ %.054.i, %bb.ap ], [ %.05466.i, %.lr.ph70.i ] ; 5 uses
  %.054.in67.i = phi i32 [ %.05468.i, %bb.ap ], [ %7, %.lr.ph70.i ]
  %i.ho = srem i32 %.05468.i, %i.fd
  %i.hp = icmp eq i32 %i.ho, 0
  br i1 %i.hp, label %bb.al, label %bb.am

bb.al:                                            ; preds = %.lr.ph70.split.i
  %i.hq = load ptr, ptr @stderr, align 8, !tbaa !45
  %i.hr = sub nsw i32 %7, %.05468.i
  %i.hs = mul nuw nsw i32 %i.hr, 100
  %i.ht = udiv i32 %i.hs, %7
  %i.hu = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hq, ptr noundef nonnull @.str.47, i32 noundef %i.ht) #35 ; 0 uses
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %.lr.ph70.split.i
  %fputc.i = tail call i32 @fputc(i32 34, ptr %0) ; 0 uses
  %.not.i = icmp eq i32 %.054.in67.i, 1
  br i1 %.not.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %fwrite60.i = tail call i64 @fwrite(ptr nonnull @.str.230, i64 3, i64 1, ptr %0) ; 0 uses
  br label %bb.ap

bb.ao:                                            ; preds = %bb.am
  %fwrite.i40 = tail call i64 @fwrite(ptr nonnull @.str.231, i64 2, i64 1, ptr %0) ; 0 uses
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.054.i = add nsw i32 %.05468.i, -1
  %.not101.i = icmp eq i32 %.05468.i, 0
  br i1 %.not101.i, label %_ZL15write_xpm_data3P8_IO_FILEiiPPffffi.exit, label %.lr.ph70.split.i, !llvm.loop !933

_ZL15write_xpm_data3P8_IO_FILEiiPPffffi.exit:     ; preds = %bb.ap, %bb.ak, %bb.ab, %_ZL14write_xpm_map3P8_IO_FILEiiPifff5t_rgbS2_S2_.exit
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.rint.f32(float) #22

; Function Attrs: mustprogress uwtable
define void @_Z10write_xpm3P8_IO_FILEjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_S8_S8_N3gmx8ArrayRefIfEESB_NS9_12basic_mdspanIfNS9_7extentsIJLln1ELln1EEEENS9_12layout_rightENS9_14accessor_basicIfEEEEfff5t_rgbSJ_SJ_Pi(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %5, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.201") align 8 captures(none) %6, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.201") align 8 captures(none) %7, ptr nofree noundef readonly byval(%"class.gmx::basic_mdspan.204") align 8 captures(none) %8, float noundef %9, float noundef %10, float noundef %11, ptr nofree noundef readonly byval(%struct.t_rgb) align 8 captures(none) %12, ptr nofree noundef readonly byval(%struct.t_rgb) align 8 captures(none) %13, ptr nofree noundef readonly byval(%struct.t_rgb) align 8 captures(none) %14, ptr nofree noundef captures(none) %15) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.b = load i64, ptr %i.a, align 8              ; 5 uses
  %i.c = tail call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.249, ptr noundef nonnull @.str.1, i32 noundef 1159, i64 noundef %i.b, i64 noundef 8) ; 5 uses
  %i.d = icmp sgt i64 %i.b, 0                     ; 2 uses
  br i1 %i.d, label %.lr.ph34, label %._crit_edge35

.lr.ph34:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.f = load i64, ptr %i.e, align 8
  %.fr37 = freeze i64 %i.f                        ; 15 uses
  %i.g = icmp sgt i64 %.fr37, 0
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  br i1 %i.g, label %.lr.ph.us.preheader, label %.lr.ph34.split

.lr.ph.us.preheader:                              ; preds = %.lr.ph34
  %i.j = ptrtoaddr ptr %i.i to i64
  %i.k = mul i64 %.fr37, -4
  %min.iters.check = icmp ult i64 %.fr37, 4
  %min.iters.check54 = icmp ult i64 %.fr37, 32
  %i.l = and i64 %.fr37, 28
  %n.vec = and i64 %.fr37, 9223372036854775776    ; 4 uses
  %cmp.n = icmp eq i64 %.fr37, %n.vec
  %min.epilog.iters.check = icmp eq i64 %i.l, 0
  %n.vec58 = and i64 %.fr37, 9223372036854775804  ; 3 uses
  %cmp.n62 = icmp eq i64 %.fr37, %n.vec58
  br label %iter.check

iter.check:                                       ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %indvars.iv44 = phi i64 [ %indvars.iv.next45, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ] ; 4 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv44
  %i.n = tail call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.250, ptr noundef nonnull @.str.1, i32 noundef 1162, i64 noundef %.fr37, i64 noundef 4) ; 13 uses
  store ptr %i.n, ptr %i.m, align 8, !tbaa !38
  %i.o = mul nuw nsw i64 %.fr37, %indvars.iv44
  %i.p = getelementptr [4 x i8], ptr %i.i, i64 %i.o ; 11 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.q = ptrtoaddr ptr %i.n to i64
  %i.r = mul i64 %i.k, %indvars.iv44
  %i.s = sub i64 %i.r, %i.j
  %i.t = add i64 %i.s, %i.q
  %i.u = add i64 %i.t, -1
  %diff.check = icmp ult i64 %i.u, 127
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check54, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.v = getelementptr [4 x i8], ptr %i.p, i64 %index ; 4 uses
  %i.w = getelementptr i8, ptr %i.v, i64 32
  %i.x = getelementptr i8, ptr %i.v, i64 64
  %i.y = getelementptr i8, ptr %i.v, i64 96
  %wide.load = load <8 x float>, ptr %i.v, align 4, !tbaa !105
  %wide.load55 = load <8 x float>, ptr %i.w, align 4, !tbaa !105
  %wide.load56 = load <8 x float>, ptr %i.x, align 4, !tbaa !105
  %wide.load57 = load <8 x float>, ptr %i.y, align 4, !tbaa !105
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %index ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 96
  store <8 x float> %wide.load, ptr %i.z, align 4, !tbaa !105
  store <8 x float> %wide.load55, ptr %i.aa, align 4, !tbaa !105
  store <8 x float> %wide.load56, ptr %i.ab, align 4, !tbaa !105
  store <8 x float> %wide.load57, ptr %i.ac, align 4, !tbaa !105
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !934

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !429

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index59 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next61, %vec.epilog.vector.body ] ; 3 uses
  %i.ae = getelementptr [4 x i8], ptr %i.p, i64 %index59
  %wide.load60 = load <4 x float>, ptr %i.ae, align 4, !tbaa !105
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %index59
  store <4 x float> %wide.load60, ptr %i.af, align 4, !tbaa !105
  %index.next61 = add nuw i64 %index59, 4         ; 2 uses
  %i.ag = icmp eq i64 %index.next61, %n.vec58
  br i1 %i.ag, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !935

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n62, label %._crit_edge.us, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv40.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec58, %vec.epilog.middle.block ] ; 4 uses
  %i.ah = sub nsw i64 %.fr37, %indvars.iv40.ph
  %xtraiter = and i64 %i.ah, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv40.prol = phi i64 [ %indvars.iv.next41.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv40.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.ai = getelementptr [4 x i8], ptr %i.p, i64 %indvars.iv40.prol
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !105
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv40.prol
  store float %i.aj, ptr %i.ak, align 4, !tbaa !105
  %indvars.iv.next41.prol = add nuw nsw i64 %indvars.iv40.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !936

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv40.unr = phi i64 [ %indvars.iv40.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next41.prol, %vec.epilog.scalar.ph.prol ]
  %i.al = sub nsw i64 %indvars.iv40.ph, %.fr37
  %i.am = icmp ugt i64 %i.al, -8
  br i1 %i.am, label %._crit_edge.us, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv40 = phi i64 [ %indvars.iv.next41.7, %vec.epilog.scalar.ph ], [ %indvars.iv40.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 10 uses
  %i.an = getelementptr [4 x i8], ptr %i.p, i64 %indvars.iv40
  %i.ao = load float, ptr %i.an, align 4, !tbaa !105
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv40
  store float %i.ao, ptr %i.ap, align 4, !tbaa !105
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1 ; 2 uses
  %i.aq = getelementptr [4 x i8], ptr %i.p, i64 %indvars.iv.next41
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !105
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.next41
  store float %i.ar, ptr %i.as, align 4, !tbaa !105
end_hunk_1
begin_hunk_2_@_Z15write_xpm_splitP8_IO_FILEjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_S8_S8_iiPfS9_PS9_ffPi5t_rgbSC_ffSB_bSC_SC_:bb.a
  %i.u = load ptr, ptr %3, align 8, !tbaa !50
  %i.v = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.235, ptr noundef %i.u) #29 ; 0 uses
  %i.w = load ptr, ptr %4, align 8, !tbaa !50
  %i.x = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.236, ptr noundef %i.w) #29 ; 0 uses
  %i.y = load ptr, ptr %5, align 8, !tbaa !50
  %i.z = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.237, ptr noundef %i.y) #29 ; 0 uses
  %fwrite13.i = tail call i64 @fwrite(ptr nonnull @.str.239, i64 28, i64 1, ptr %0) ; 0 uses
  %i.aa = load i32, ptr %13, align 4, !tbaa !52
  %i.ab = load i32, ptr %18, align 4, !tbaa !52
  %i.ac = add nsw i32 %i.ab, %i.aa                ; 3 uses
  %i.ad = icmp sgt i32 %i.ac, 89
  br i1 %i.ad, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #29
  call void @_ZNSt10filesystem7__cxx114pathC2IA61_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %24, ptr noundef nonnull align 1 dereferenceable(61) @.str.1, i8 noundef zeroext 2)
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %24, i32 noundef 792, ptr noundef nonnull @.str.255, i32 noundef %i.ac) #30
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %bb.t
  unreachable

common.resume:                                    ; preds = %bb.d, %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.aj, %bb.al, %bb.v
  %common.resume.op = phi { ptr, i32 } [ %i.ae, %bb.v ], [ %i.ec, %bb.al ], [ %i.dv, %bb.aj ], [ %i.d, %bb.d ], [ %i.h, %bb.h ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

bb.v:                                             ; preds = %bb.t
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %24) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #29
  br label %common.resume

bb.w:                                             ; preds = %bb.s
  %fwrite.i61 = tail call i64 @fwrite(ptr nonnull @.str.224, i64 31, i64 1, ptr %0) ; 0 uses
  %i.af = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.247, i32 noundef %6, i32 noundef %7, i32 noundef %i.ac, i32 noundef 1) #29 ; 0 uses
  %i.ag = load i32, ptr %18, align 4, !tbaa !52   ; 3 uses
  br i1 %19, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %.sroa.speculated.i.i = tail call i32 @llvm.smin.i32(i32 %i.ag, i32 16) ; 2 uses
  store i32 %.sroa.speculated.i.i, ptr %18, align 4, !tbaa !52
  %i.ah = icmp sgt i32 %i.ag, 0
  br i1 %i.ah, label %.lr.ph.preheader.i.i, label %_ZL19write_xpm_map_splitP8_IO_FILEiiPKiff5t_rgbS3_bPiffS3_S3_.exit

.lr.ph.preheader.i.i:                             ; preds = %bb.x
  %wide.trip.count.i.i = zext nneg i32 %.sroa.speculated.i.i to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %.lr.ph.i.i ] ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr @_ZL6mapper, i64 %indvars.iv.i.i
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !51
  %i.ak = sext i8 %i.aj to i32
  %i.al = getelementptr inbounds nuw [24 x i8], ptr @constinit, i64 %indvars.iv.i.i ; 2 uses
  %i.am = load <2 x double>, ptr %i.al, align 8, !tbaa !62
  %i.an = fmul <2 x double> %i.am, splat (double 2.550000e+02)
  %i.ao = tail call <2 x double> @llvm.round.v2f64(<2 x double> %i.an) ; 2 uses
  %i.ap = extractelement <2 x double> %i.ao, i64 0
  %i.aq = fptoui double %i.ap to i32
  %i.ar = extractelement <2 x double> %i.ao, i64 1
  %i.as = fptoui double %i.ar to i32
  %i.at = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.au = load double, ptr %i.at, align 8, !tbaa !432
  %i.av = fmul double %i.au, 2.550000e+02
  %i.aw = tail call double @llvm.round.f64(double %i.av)
  %i.ax = fptoui double %i.aw to i32
  %i.ay = trunc nuw nsw i64 %indvars.iv.i.i to i32
  %i.az = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.256, i32 noundef %i.ak, i32 noundef 32, i32 noundef %i.aq, i32 noundef %i.as, i32 noundef %i.ax, i32 noundef %i.ay) #29 ; 0 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_ZL19write_xpm_map_splitP8_IO_FILEiiPKiff5t_rgbS3_bPiffS3_S3_.exit, label %.lr.ph.i.i, !llvm.loop !940

bb.y:                                             ; preds = %bb.w
  tail call fastcc void @_ZL14pr_simple_cmapP8_IO_FILEffi5t_rgbS1_i(ptr noundef %0, float noundef %16, float noundef %17, i32 noundef %i.ag, ptr noundef nonnull byval(%struct.t_rgb) align 8 %20, ptr noundef nonnull byval(%struct.t_rgb) align 8 %21, i32 noundef 0)
  br label %_ZL19write_xpm_map_splitP8_IO_FILEiiPKiff5t_rgbS3_bPiffS3_S3_.exit

_ZL19write_xpm_map_splitP8_IO_FILEiiPKiff5t_rgbS3_bPiffS3_S3_.exit: ; preds = %.lr.ph.i.i, %bb.x, %bb.y
  %i.ba = load i32, ptr %13, align 4, !tbaa !52
  %i.bb = load i32, ptr %18, align 4, !tbaa !52
  tail call fastcc void @_ZL14pr_simple_cmapP8_IO_FILEffi5t_rgbS1_i(ptr noundef %0, float noundef %11, float noundef %12, i32 noundef %i.ba, ptr noundef nonnull byval(%struct.t_rgb) align 8 %14, ptr noundef nonnull byval(%struct.t_rgb) align 8 %15, i32 noundef %i.bb)
  %i.bc = sext i32 %6 to i64
  %i.bd = getelementptr inbounds [4 x i8], ptr %8, i64 %i.bc
  %i.be = and i32 %1, 1
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.bf
  tail call fastcc void @_ZL12writeXpmAxisP8_IO_FILEPKcN3gmx8ArrayRefIKfEE(ptr noundef %0, ptr noundef nonnull @.str.207, ptr %8, ptr %i.bg)
  %i.bh = sext i32 %7 to i64
  %i.bi = getelementptr inbounds [4 x i8], ptr %9, i64 %i.bh
  %i.bj = lshr i32 %1, 1
  %.lobit = and i32 %i.bj, 1
  %i.bk = zext nneg i32 %.lobit to i64
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.bk
  tail call fastcc void @_ZL12writeXpmAxisP8_IO_FILEPKcN3gmx8ArrayRefIKfEE(ptr noundef %0, ptr noundef nonnull @.str.208, ptr %9, ptr %i.bl)
  %i.bm = load i32, ptr %13, align 4, !tbaa !52   ; 4 uses
  %i.bn = load i32, ptr %18, align 4, !tbaa !52   ; 6 uses
  %i.bo = add nsw i32 %i.bm, -1
  %i.bp = sitofp i32 %i.bo to float
  %i.bq = fsub float %12, %11
  %i.br = fdiv float %i.bp, %i.bq
  %i.bs = add nsw i32 %i.bn, -1
  %i.bt = sitofp i32 %i.bs to float
  %i.bu = fsub float %17, %16
  %i.bv = fdiv float %i.bt, %i.bu
  %i.bw = icmp sgt i32 %7, 0
  br i1 %i.bw, label %.lr.ph95.i, label %_ZL20write_xpm_data_splitP8_IO_FILEiiPPfffiffi.exit

.lr.ph95.i:                                       ; preds = %_ZL19write_xpm_map_splitP8_IO_FILEiiPKiff5t_rgbS3_bPiffS3_S3_.exit
  %i.bx = udiv i32 %7, 100
  %i.by = add nuw nsw i32 %i.bx, 1                ; 2 uses
  %i.bz = icmp sgt i32 %6, 0
  %i.ca = shl nsw i32 %i.bn, 1
  br i1 %i.bz, label %.lr.ph95.split.us.preheader.i, label %.lr.ph95.split.i

.lr.ph95.split.us.preheader.i:                    ; preds = %.lr.ph95.i
  %i.cb = zext nneg i32 %7 to i64
  %wide.trip.count.i = zext nneg i32 %6 to i64
  br label %.lr.ph95.split.us.i

.lr.ph95.split.us.i:                              ; preds = %bb.af, %.lr.ph95.split.us.preheader.i
  %indvars.iv125.i = phi i64 [ %i.cb, %.lr.ph95.split.us.preheader.i ], [ %indvars.iv.next126.i, %bb.af ] ; 4 uses
  %indvars.iv.next126.i = add nsw i64 %indvars.iv125.i, -1 ; 7 uses
  %i.cc = trunc nuw nsw i64 %indvars.iv.next126.i to i32 ; 4 uses
  %i.cd = srem i32 %i.cc, %i.by
  %i.ce = icmp eq i32 %i.cd, 0
  br i1 %i.ce, label %bb.z, label %.lr.ph.us.i

bb.z:                                             ; preds = %.lr.ph95.split.us.i
  %i.cf = load ptr, ptr @stderr, align 8, !tbaa !45
  %i.cg = sub i32 %7, %i.cc
  %i.ch = mul i32 %i.cg, 100
  %i.ci = udiv i32 %i.ch, %7
  %i.cj = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cf, ptr noundef nonnull @.str.47, i32 noundef %i.ci) #35 ; 0 uses
  br label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %bb.z, %.lr.ph95.split.us.i
  %fputc.us.i = tail call i32 @fputc(i32 34, ptr %0) ; 0 uses
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ae, %.lr.ph.us.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.us.i ], [ %indvars.iv.next.i, %bb.ae ] ; 9 uses
  %i.ck = icmp slt i64 %indvars.iv.i, %indvars.iv.next126.i
  br i1 %i.ck, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.not73.us.i = icmp slt i64 %indvars.iv.i, %indvars.iv125.i
  br i1 %.not73.us.i, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %indvars.iv.i
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !38
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv.next126.i
  %i.co = load float, ptr %i.cn, align 4, !tbaa !105
  %i.cp = fsub float %i.co, %16
  %i.cq = fmul float %i.bv, %i.cp
  %i.cr = tail call float @llvm.rint.f32(float %i.cq)
  %i.cs = fptosi float %i.cr to i32               ; 4 uses
  %i.ct = icmp sgt i32 %i.cs, -1
  %.not74.us.i = icmp sgt i32 %i.ca, %i.cs
  %or.cond78.us.i = select i1 %i.ct, i1 %.not74.us.i, i1 false
  br i1 %or.cond78.us.i, label %bb.ae, label %.split.us.i

bb.ad:                                            ; preds = %bb.aa
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %indvars.iv.i
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !38
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %indvars.iv.next126.i
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !105
  %i.cy = fsub float %i.cx, %11
  %i.cz = fmul float %i.br, %i.cy
  %i.da = tail call float @llvm.rint.f32(float %i.cz)
  %i.db = fptosi float %i.da to i32               ; 3 uses
  %i.dc = add nsw i32 %i.bn, %i.db                ; 2 uses
  %i.dd = icmp sgt i32 %i.db, -1
  %.not75.us.i = icmp sgt i32 %i.bm, %i.db
  %or.cond.us.i = and i1 %i.dd, %.not75.us.i
  br i1 %or.cond.us.i, label %bb.ae, label %.split102.us.i

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ab
  %.066.us.i = phi i32 [ %i.dc, %bb.ad ], [ %i.cs, %bb.ac ], [ %i.bn, %bb.ab ]
  %i.de = sext i32 %.066.us.i to i64
  %i.df = getelementptr inbounds i8, ptr @_ZL6mapper, i64 %i.de
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !51
  %i.dh = sext i8 %i.dg to i32
  %fputc76.us.i = tail call i32 @fputc(i32 %i.dh, ptr %0) ; 0 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.us.i, label %bb.aa, !llvm.loop !941

bb.af:                                            ; preds = %._crit_edge.us.i
  %fwrite72.us.i = tail call i64 @fwrite(ptr nonnull @.str.230, i64 3, i64 1, ptr %0) ; 0 uses
  %i.di = icmp sgt i64 %indvars.iv125.i, 1
  br i1 %i.di, label %.lr.ph95.split.us.i, label %_ZL20write_xpm_data_splitP8_IO_FILEiiPPfffiffi.exit, !llvm.loop !942

._crit_edge.us.i:                                 ; preds = %bb.ae
  %.not.us.i = icmp eq i64 %indvars.iv125.i, 1
  br i1 %.not.us.i, label %_ZL20write_xpm_data_splitP8_IO_FILEiiPPfffiffi.exit.sink.split, label %bb.af

.lr.ph95.split.i:                                 ; preds = %.lr.ph95.i, %bb.am
  %.067.in92.i = phi i32 [ %.06793.i, %bb.am ], [ %7, %.lr.ph95.i ] ; 2 uses
  %.06793.i = add nsw i32 %.067.in92.i, -1        ; 3 uses
  %30 = urem i32 %.06793.i, %i.by
  %i.dj = icmp eq i32 %30, 0
  br i1 %i.dj, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %.lr.ph95.split.i
  %i.dk = load ptr, ptr @stderr, align 8, !tbaa !45
  %i.dl = sub nsw i32 %7, %.06793.i
  %i.dm = mul nuw nsw i32 %i.dl, 100
  %i.dn = udiv i32 %i.dm, %7
  %i.do = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dk, ptr noundef nonnull @.str.47, i32 noundef %i.dn) #35 ; 0 uses
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.lr.ph95.split.i
  %fputc.i = tail call i32 @fputc(i32 34, ptr %0) ; 0 uses
  %.not.i = icmp eq i32 %.067.in92.i, 1
  br i1 %.not.i, label %_ZL20write_xpm_data_splitP8_IO_FILEiiPPfffiffi.exit.sink.split, label %bb.am

.split102.us.i:                                   ; preds = %bb.ad
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %indvars.iv.i
  %i.dq = trunc nuw nsw i64 %indvars.iv.i to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #29
  call void @_ZNSt10filesystem7__cxx114pathC2IA61_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %22, ptr noundef nonnull align 1 dereferenceable(61) @.str.1, i8 noundef zeroext 2)
  %i.dr = load ptr, ptr %i.dp, align 8, !tbaa !38
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %indvars.iv.next126.i
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !105
  %i.du = fpext float %i.dt to double
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %22, i32 noundef 1006, ptr noundef nonnull @.str.257, i32 noundef %i.dq, i32 noundef %i.cc, i32 noundef %i.dc, i32 noundef %i.bn, i32 noundef %i.bm, double noundef %i.du) #30
          to label %bb.ai unwind label %bb.aj

bb.ai:                                            ; preds = %.split102.us.i
  unreachable

bb.aj:                                            ; preds = %.split102.us.i
  %i.dv = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %22) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #29
  br label %common.resume

.split.us.i:                                      ; preds = %bb.ac
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %indvars.iv.i
  %i.dx = trunc nuw nsw i64 %indvars.iv.i to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #29
  call void @_ZNSt10filesystem7__cxx114pathC2IA61_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %23, ptr noundef nonnull align 1 dereferenceable(61) @.str.1, i8 noundef zeroext 2)
  %i.dy = load ptr, ptr %i.dw, align 8, !tbaa !38
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %indvars.iv.next126.i
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !105
  %i.eb = fpext float %i.ea to double
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %23, i32 noundef 1022, ptr noundef nonnull @.str.257, i32 noundef %i.dx, i32 noundef %i.cc, i32 noundef %i.cs, i32 noundef %i.bn, i32 noundef %i.bm, double noundef %i.eb) #30
          to label %bb.ak unwind label %bb.al

bb.ak:                                            ; preds = %.split.us.i
  unreachable

bb.al:                                            ; preds = %.split.us.i
  %i.ec = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %23) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #29
  br label %common.resume

bb.am:                                            ; preds = %bb.ah
  %fwrite72.i = tail call i64 @fwrite(ptr nonnull @.str.230, i64 3, i64 1, ptr %0) ; 0 uses
  br label %.lr.ph95.split.i, !llvm.loop !942

_ZL20write_xpm_data_splitP8_IO_FILEiiPPfffiffi.exit.sink.split: ; preds = %bb.ah, %._crit_edge.us.i
  %fwrite.us.i = tail call i64 @fwrite(ptr nonnull @.str.231, i64 2, i64 1, ptr %0) ; 0 uses
  br label %_ZL20write_xpm_data_splitP8_IO_FILEiiPPfffiffi.exit

_ZL20write_xpm_data_splitP8_IO_FILEiiPPfffiffi.exit: ; preds = %bb.af, %_ZL20write_xpm_data_splitP8_IO_FILEiiPPfffiffi.exit.sink.split, %_ZL19write_xpm_map_splitP8_IO_FILEiiPKiff5t_rgbS3_bPiffS3_S3_.exit
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define internal fastcc void @_ZL14pr_simple_cmapP8_IO_FILEffi5t_rgbS1_i(ptr nofree noundef captures(none) %0, float noundef %1, float noundef %2, i32 noundef %3, ptr nofree noundef readonly byval(%struct.t_rgb) align 8 captures(none) %4, ptr nofree noundef readonly byval(%struct.t_rgb) align 8 captures(none) %5, i32 noundef %6) unnamed_addr #15 {
bb.a:
  %i.a = icmp sgt i32 %3, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = uitofp nneg i32 %3 to double             ; 2 uses
  %i.c = load double, ptr %4, align 8, !tbaa !944 ; 3 uses
  %i.d = load double, ptr %5, align 8, !tbaa !944
  %i.e = fsub double %i.d, %i.c                   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.g = load double, ptr %i.f, align 8, !tbaa !945 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.i = load double, ptr %i.h, align 8, !tbaa !945
  %i.j = fsub double %i.i, %i.g                   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.l = load double, ptr %i.k, align 8, !tbaa !432 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.n = load double, ptr %i.m, align 8, !tbaa !432
  %i.o = fsub double %i.n, %i.l                   ; 2 uses
  %i.p = icmp samesign ult i32 %3, 90
  %i.q = fsub float %2, %1                        ; 2 uses
  br i1 %i.p, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.lr.ph.split.us
  %.023.us = phi i32 [ %i.r, %.lr.ph.split.us ], [ 0, %.lr.ph ] ; 2 uses
  %i.r = add nuw nsw i32 %.023.us, 1              ; 3 uses
  %i.s = uitofp nneg i32 %i.r to double
  %i.t = fdiv double %i.s, %i.b
  %i.u = fptrunc double %i.t to float             ; 2 uses
  %i.v = fpext float %i.u to double               ; 3 uses
  %i.w = tail call double @llvm.fmuladd.f64(double %i.v, double %i.e, double %i.c)
  %i.x = fptrunc double %i.w to float
  %i.y = tail call double @llvm.fmuladd.f64(double %i.v, double %i.j, double %i.g)
  %i.z = fptrunc double %i.y to float
  %i.aa = tail call double @llvm.fmuladd.f64(double %i.v, double %i.o, double %i.l)
  %i.ab = fptrunc double %i.aa to float
  %i.ac = add nsw i32 %.023.us, %6
  %i.ad = srem i32 %i.ac, 89
  %.sext.us = sext i32 %i.ad to i64
  %i.ae = getelementptr inbounds i8, ptr @_ZL6mapper, i64 %.sext.us
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !51
  %i.ag = sext i8 %i.af to i32
  %i.ah = fmul float %i.x, 2.550000e+02
  %i.ai = tail call noundef float @llvm.round.f32(float %i.ah)
  %i.aj = fptoui float %i.ai to i32
  %i.ak = fmul float %i.z, 2.550000e+02
  %i.al = tail call noundef float @llvm.round.f32(float %i.ak)
  %i.am = fptoui float %i.al to i32
  %i.an = fmul float %i.ab, 2.550000e+02
  %i.ao = tail call noundef float @llvm.round.f32(float %i.an)
  %i.ap = fptoui float %i.ao to i32
  %i.aq = tail call float @llvm.fmuladd.f32(float %i.u, float %i.q, float %1)
  %i.ar = fpext float %i.aq to double
  %i.as = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.248, i32 noundef %i.ag, i32 noundef 32, i32 noundef %i.aj, i32 noundef %i.am, i32 noundef %i.ap, double noundef %i.ar) #29 ; 0 uses
  %exitcond25.not = icmp eq i32 %i.r, %3
  br i1 %exitcond25.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !943

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split
  %.023 = phi i32 [ %i.at, %.lr.ph.split ], [ 0, %.lr.ph ] ; 2 uses
  %i.at = add nuw nsw i32 %.023, 1                ; 3 uses
  %i.au = uitofp nneg i32 %i.at to double
  %i.av = fdiv double %i.au, %i.b
  %i.aw = fptrunc double %i.av to float           ; 2 uses
  %i.ax = fpext float %i.aw to double             ; 3 uses
  %i.ay = tail call double @llvm.fmuladd.f64(double %i.ax, double %i.e, double %i.c)
  %i.az = fptrunc double %i.ay to float
  %i.ba = tail call double @llvm.fmuladd.f64(double %i.ax, double %i.j, double %i.g)
  %i.bb = fptrunc double %i.ba to float
  %i.bc = tail call double @llvm.fmuladd.f64(double %i.ax, double %i.o, double %i.l)
  %i.bd = fptrunc double %i.bc to float
  %i.be = add nsw i32 %.023, %6                   ; 2 uses
  %i.bf = srem i32 %i.be, 89
  %.sext = sext i32 %i.bf to i64
  %i.bg = getelementptr inbounds i8, ptr @_ZL6mapper, i64 %.sext
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !51
  %i.bi = sext i8 %i.bh to i32
  %i.bj = sdiv i32 %i.be, 89
  %.sext22 = sext i32 %i.bj to i64
  %i.bk = getelementptr inbounds i8, ptr @_ZL6mapper, i64 %.sext22
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !51
  %i.bm = sext i8 %i.bl to i32
  %i.bn = fmul float %i.az, 2.550000e+02
  %i.bo = tail call noundef float @llvm.round.f32(float %i.bn)
  %i.bp = fptoui float %i.bo to i32
  %i.bq = fmul float %i.bb, 2.550000e+02
  %i.br = tail call noundef float @llvm.round.f32(float %i.bq)
  %i.bs = fptoui float %i.br to i32
  %i.bt = fmul float %i.bd, 2.550000e+02
  %i.bu = tail call noundef float @llvm.round.f32(float %i.bt)
  %i.bv = fptoui float %i.bu to i32
  %i.bw = tail call float @llvm.fmuladd.f32(float %i.aw, float %i.q, float %1)
  %i.bx = fpext float %i.bw to double
  %i.by = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.248, i32 noundef %i.bi, i32 noundef %i.bm, i32 noundef %i.bp, i32 noundef %i.bs, i32 noundef %i.bv, double noundef %i.bx) #29 ; 0 uses
  %exitcond.not = icmp eq i32 %i.at, %3
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !943

._crit_edge:                                      ; preds = %.lr.ph.split, %.lr.ph.split.us, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.round.f32(float) #22

; Function Attrs: mustprogress uwtable
define void @_Z15write_xpm_splitP8_IO_FILEjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_S8_S8_N3gmx8ArrayRefIfEESB_NS9_12basic_mdspanIfNS9_7extentsIJLln1ELln1EEEENS9_12layout_rightENS9_14accessor_basicIfEEEEffPi5t_rgbSK_ffSJ_bSK_SK_(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %5, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.201") align 8 captures(none) %6, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.201") align 8 captures(none) %7, ptr nofree noundef readonly byval(%"class.gmx::basic_mdspan.204") align 8 captures(none) %8, float noundef %9, float noundef %10, ptr nofree noundef readonly captures(none) %11, ptr nofree noundef readonly byval(%struct.t_rgb) align 8 captures(none) %12, ptr nofree noundef readonly byval(%struct.t_rgb) align 8 captures(none) %13, float noundef %14, float noundef %15, ptr nofree noundef captures(none) %16, i1 noundef zeroext %17, ptr nofree noundef readonly byval(%struct.t_rgb) align 8 captures(none) %18, ptr nofree noundef readonly byval(%struct.t_rgb) align 8 captures(none) %19) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.b = load i64, ptr %i.a, align 8              ; 5 uses
  %i.c = tail call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.249, ptr noundef nonnull @.str.1, i32 noundef 1264, i64 noundef %i.b, i64 noundef 8) ; 5 uses
  %i.d = icmp sgt i64 %i.b, 0                     ; 2 uses
  br i1 %i.d, label %.lr.ph37, label %._crit_edge38

.lr.ph37:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.f = load i64, ptr %i.e, align 8
  %.fr40 = freeze i64 %i.f                        ; 15 uses
  %i.g = icmp sgt i64 %.fr40, 0
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  br i1 %i.g, label %.lr.ph.us.preheader, label %.lr.ph37.split

.lr.ph.us.preheader:                              ; preds = %.lr.ph37
  %i.j = ptrtoaddr ptr %i.i to i64
end_hunk_2
begin_hunk_3_@_Z9write_xpmP8_IO_FILEjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_S8_S8_iiPKfSA_PKSA_ff5t_rgbSD_Pi:bb.a
  %i.w = icmp slt i32 %i.v, 90
  %i.x = select i1 %i.w, i32 1, i32 2
  %i.y = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.247, i32 noundef %6, i32 noundef %7, i32 noundef %i.v, i32 noundef %i.x) #29 ; 0 uses
  %i.z = load i32, ptr %15, align 4, !tbaa !52    ; 3 uses
  %i.aa = add nsw i32 %i.z, -1
  %i.ab = sitofp i32 %i.aa to double
  %i.ac = fdiv double 1.000000e+00, %i.ab
  %i.ad = fptrunc double %i.ac to float           ; 2 uses
  %i.ae = icmp sgt i32 %i.z, 0
  br i1 %i.ae, label %.lr.ph.i, label %_ZL13write_xpm_mapP8_IO_FILEiiPiff5t_rgbS2_.exit

.lr.ph.i:                                         ; preds = %bb.i
  %i.af = fpext float %i.ad to double             ; 2 uses
  %i.ag = insertelement <2 x double> poison, double %i.af, i64 0
  %i.ah = shufflevector <2 x double> %i.ag, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.j

bb.j:                                             ; preds = %bb.l, %.lr.ph.i
  %.042.i = phi i32 [ 0, %.lr.ph.i ], [ %i.bz, %bb.l ] ; 6 uses
  %i.ai = phi i32 [ %i.z, %.lr.ph.i ], [ %.pr.i, %bb.l ] ; 2 uses
  %i.aj = xor i32 %.042.i, -1
  %i.ak = add i32 %i.ai, %i.aj                    ; 2 uses
  %i.al = sitofp i32 %i.ak to double              ; 2 uses
  %i.am = uitofp nneg i32 %.042.i to double       ; 2 uses
  %i.an = fmul double %.sroa.045.0.copyload, %i.am
  %i.ao = tail call double @llvm.fmuladd.f64(double %i.al, double %.sroa.040.0.copyload, double %i.an)
  %i.ap = fmul double %i.ao, %i.af
  %i.aq = fptrunc double %i.ap to float
  %i.ar = insertelement <2 x double> poison, double %i.am, i64 0
  %i.as = shufflevector <2 x double> %i.ar, <2 x double> poison, <2 x i32> zeroinitializer
  %i.at = fmul <2 x double> %i.n, %i.as
  %i.au = insertelement <2 x double> poison, double %i.al, i64 0
  %i.av = shufflevector <2 x double> %i.au, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.av, <2 x double> %i.m, <2 x double> %i.at)
  %i.ax = fmul <2 x double> %i.aw, %i.ah
  %i.ay = fptrunc <2 x double> %i.ax to <2 x float>
  %i.az = urem i32 %.042.i, 89
  %i.ba = udiv i32 %.042.i, 89
  %.zext.i = zext nneg i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr @_ZL6mapper, i64 %.zext.i
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !51
  %i.bd = sext i8 %i.bc to i32
  %i.be = icmp slt i32 %i.ai, 90
  br i1 %i.be, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.zext41.i = zext nneg i32 %i.ba to i64
  %i.bf = getelementptr inbounds nuw i8, ptr @_ZL6mapper, i64 %.zext41.i
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !51
  %i.bh = sext i8 %i.bg to i32
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bi = phi i32 [ %i.bh, %bb.k ], [ 32, %bb.j ]
  %i.bj = fmul float %i.aq, 2.550000e+02
  %i.bk = tail call noundef float @llvm.round.f32(float %i.bj)
  %i.bl = fptoui float %i.bk to i32
  %i.bm = fmul <2 x float> %i.ay, splat (float 2.550000e+02)
  %i.bn = tail call <2 x float> @llvm.round.v2f32(<2 x float> %i.bm) ; 2 uses
  %i.bo = extractelement <2 x float> %i.bn, i64 0
  %i.bp = fptoui float %i.bo to i32
  %i.bq = extractelement <2 x float> %i.bn, i64 1
  %i.br = fptoui float %i.bq to i32
  %i.bs = sitofp i32 %i.ak to float
  %i.bt = uitofp nneg i32 %.042.i to float
  %i.bu = fmul float %12, %i.bt
  %i.bv = tail call float @llvm.fmuladd.f32(float %i.bs, float %11, float %i.bu)
  %i.bw = fmul float %i.bv, %i.ad
  %i.bx = fpext float %i.bw to double
  %i.by = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.248, i32 noundef %i.bd, i32 noundef %i.bi, i32 noundef %i.bl, i32 noundef %i.bp, i32 noundef %i.br, double noundef %i.bx) #29 ; 0 uses
  %i.bz = add nuw nsw i32 %.042.i, 1              ; 2 uses
  %.pr.i = load i32, ptr %15, align 4, !tbaa !52  ; 2 uses
  %i.ca = icmp slt i32 %i.bz, %.pr.i
  br i1 %i.ca, label %bb.j, label %_ZL13write_xpm_mapP8_IO_FILEiiPiff5t_rgbS2_.exit, !llvm.loop !952

_ZL13write_xpm_mapP8_IO_FILEiiPiff5t_rgbS2_.exit: ; preds = %bb.l, %bb.i
  %i.cb = sext i32 %6 to i64
  %i.cc = getelementptr inbounds [4 x i8], ptr %8, i64 %i.cb
  %i.cd = and i32 %1, 1
  %i.ce = zext nneg i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %i.ce
  tail call fastcc void @_ZL12writeXpmAxisP8_IO_FILEPKcN3gmx8ArrayRefIKfEE(ptr noundef %0, ptr noundef nonnull @.str.207, ptr %8, ptr %i.cf)
  %i.cg = sext i32 %7 to i64
  %i.ch = getelementptr inbounds [4 x i8], ptr %9, i64 %i.cg
  %i.ci = lshr i32 %1, 1
  %.lobit = and i32 %i.ci, 1
  %i.cj = zext nneg i32 %.lobit to i64
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %i.cj
  tail call fastcc void @_ZL12writeXpmAxisP8_IO_FILEPKcN3gmx8ArrayRefIKfEE(ptr noundef %0, ptr noundef nonnull @.str.208, ptr %9, ptr %i.ck)
  %i.cl = load i32, ptr %15, align 4, !tbaa !52   ; 2 uses
  %i.cm = add nsw i32 %i.cl, -1                   ; 3 uses
  %i.cn = sitofp i32 %i.cm to float
  %i.co = fsub float %12, %11
  %i.cp = fdiv float %i.cn, %i.co                 ; 2 uses
  %.03240.i = add nsw i32 %7, -1                  ; 2 uses
  %i.cq = icmp sgt i32 %7, 0
  br i1 %i.cq, label %.lr.ph44.i, label %_ZL14write_xpm_dataP8_IO_FILEiiPKPKfffi.exit

.lr.ph44.i:                                       ; preds = %_ZL13write_xpm_mapP8_IO_FILEiiPiff5t_rgbS2_.exit
  %i.cr = udiv i32 %7, 100
  %i.cs = add nuw nsw i32 %i.cr, 1                ; 3 uses
  %i.ct = icmp sgt i32 %6, 0
  br i1 %i.ct, label %.lr.ph44.split.us.i, label %.lr.ph44.split.i

.lr.ph44.split.us.i:                              ; preds = %.lr.ph44.i
  %i.cu = icmp slt i32 %i.cl, 90
  %i.cv = zext nneg i32 %.03240.i to i64          ; 2 uses
  %wide.trip.count60.i = zext nneg i32 %6 to i64  ; 2 uses
  br i1 %i.cu, label %.lr.ph44.split.us.split.us.i, label %.lr.ph44.split.us.split.i

.lr.ph44.split.us.split.us.i:                     ; preds = %.lr.ph44.split.us.i, %bb.q
  %indvars.iv62.i = phi i64 [ %indvars.iv.next63.i, %bb.q ], [ %i.cv, %.lr.ph44.split.us.i ] ; 4 uses
  %.032.in41.us.us.i = phi i32 [ %i.cw, %bb.q ], [ %7, %.lr.ph44.split.us.i ]
  %i.cw = trunc nuw nsw i64 %indvars.iv62.i to i32 ; 3 uses
  %i.cx = srem i32 %i.cw, %i.cs
  %i.cy = icmp eq i32 %i.cx, 0
  br i1 %i.cy, label %bb.m, label %.lr.ph.us.us.i

bb.m:                                             ; preds = %.lr.ph44.split.us.split.us.i
  %i.cz = load ptr, ptr @stderr, align 8, !tbaa !45
  %i.da = sub i32 %7, %i.cw
  %i.db = mul i32 %i.da, 100
  %i.dc = udiv i32 %i.db, %7
  %i.dd = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cz, ptr noundef nonnull @.str.47, i32 noundef %i.dc) #35 ; 0 uses
  br label %.lr.ph.us.us.i

.lr.ph.us.us.i:                                   ; preds = %bb.m, %.lr.ph44.split.us.split.us.i
  %fputc.us.us.i = tail call i32 @fputc(i32 34, ptr %0) ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.lr.ph.us.us.i
  %indvars.iv57.i = phi i64 [ %indvars.iv.next58.i, %bb.n ], [ 0, %.lr.ph.us.us.i ] ; 2 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %indvars.iv57.i
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !38
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %indvars.iv62.i
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !105
  %i.di = fsub float %i.dh, %11
  %i.dj = fmul float %i.cp, %i.di
  %i.dk = tail call float @llvm.rint.f32(float %i.dj)
  %i.dl = fptosi float %i.dk to i32
  %spec.store.select.us.us.us.i = tail call i32 @llvm.smax.i32(i32 %i.dl, i32 0)
  %spec.select.us.us.us.i = tail call i32 @llvm.smin.i32(i32 %spec.store.select.us.us.us.i, i32 %i.cm)
  %i.dm = sext i32 %spec.select.us.us.us.i to i64
  %i.dn = getelementptr inbounds i8, ptr @_ZL6mapper, i64 %i.dm
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !51
  %i.dp = sext i8 %i.do to i32
  %fputc36.us.us.us.i = tail call i32 @fputc(i32 %i.dp, ptr %0) ; 0 uses
  %indvars.iv.next58.i = add nuw nsw i64 %indvars.iv57.i, 1 ; 2 uses
  %exitcond61.not.i = icmp eq i64 %indvars.iv.next58.i, %wide.trip.count60.i
  br i1 %exitcond61.not.i, label %._crit_edge.split.us.us.us.i, label %bb.n, !llvm.loop !953

._crit_edge.split.us.us.us.i:                     ; preds = %bb.n
  %.not.us.us.i = icmp eq i32 %.032.in41.us.us.i, 1
  br i1 %.not.us.us.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %._crit_edge.split.us.us.us.i
  %fwrite34.us.us.i = tail call i64 @fwrite(ptr nonnull @.str.230, i64 3, i64 1, ptr %0) ; 0 uses
  br label %bb.q

bb.p:                                             ; preds = %._crit_edge.split.us.us.us.i
  %fwrite.us.us.i = tail call i64 @fwrite(ptr nonnull @.str.231, i64 2, i64 1, ptr %0) ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %indvars.iv.next63.i = add nsw i64 %indvars.iv62.i, -1
  %i.dq = icmp sgt i64 %indvars.iv62.i, 0
  br i1 %i.dq, label %.lr.ph44.split.us.split.us.i, label %_ZL14write_xpm_dataP8_IO_FILEiiPKPKfffi.exit, !llvm.loop !954

.lr.ph44.split.us.split.i:                        ; preds = %.lr.ph44.split.us.i, %bb.v
  %indvars.iv54.i = phi i64 [ %indvars.iv.next55.i, %bb.v ], [ %i.cv, %.lr.ph44.split.us.i ] ; 4 uses
  %.032.in41.us.i = phi i32 [ %i.dr, %bb.v ], [ %7, %.lr.ph44.split.us.i ]
  %i.dr = trunc nuw nsw i64 %indvars.iv54.i to i32 ; 3 uses
  %i.ds = srem i32 %i.dr, %i.cs
  %i.dt = icmp eq i32 %i.ds, 0
  br i1 %i.dt, label %bb.r, label %.lr.ph.us.i

bb.r:                                             ; preds = %.lr.ph44.split.us.split.i
  %i.du = load ptr, ptr @stderr, align 8, !tbaa !45
  %i.dv = sub i32 %7, %i.dr
  %i.dw = mul i32 %i.dv, 100
  %i.dx = udiv i32 %i.dw, %7
  %i.dy = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.du, ptr noundef nonnull @.str.47, i32 noundef %i.dx) #35 ; 0 uses
  br label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %bb.r, %.lr.ph44.split.us.split.i
  %fputc.us.i = tail call i32 @fputc(i32 34, ptr %0) ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.lr.ph.us.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.s ], [ 0, %.lr.ph.us.i ] ; 2 uses
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %indvars.iv.i
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !38
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %indvars.iv54.i
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !105
  %i.ed = fsub float %i.ec, %11
  %i.ee = fmul float %i.cp, %i.ed
  %i.ef = tail call float @llvm.rint.f32(float %i.ee)
  %i.eg = fptosi float %i.ef to i32
  %spec.store.select.us48.i = tail call i32 @llvm.smax.i32(i32 %i.eg, i32 0)
  %spec.select.us49.i = tail call i32 @llvm.smin.i32(i32 %spec.store.select.us48.i, i32 %i.cm) ; 2 uses
  %17 = urem i32 %spec.select.us49.i, 89
  %.sext.us.i = zext nneg i32 %17 to i64
  %i.eh = getelementptr inbounds nuw i8, ptr @_ZL6mapper, i64 %.sext.us.i
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !51
  %i.ej = sext i8 %i.ei to i32
  %18 = udiv i32 %spec.select.us49.i, 89
  %.sext38.us.i = zext nneg i32 %18 to i64
  %i.ek = getelementptr inbounds nuw i8, ptr @_ZL6mapper, i64 %.sext38.us.i
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !51
  %i.em = sext i8 %i.el to i32
  %i.en = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.229, i32 noundef %i.ej, i32 noundef %i.em) #29 ; 0 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count60.i
  br i1 %exitcond.not.i, label %._crit_edge.split.us50.i, label %bb.s, !llvm.loop !953

._crit_edge.split.us50.i:                         ; preds = %bb.s
  %.not.us.i = icmp eq i32 %.032.in41.us.i, 1
  br i1 %.not.us.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %._crit_edge.split.us50.i
  %fwrite34.us.i = tail call i64 @fwrite(ptr nonnull @.str.230, i64 3, i64 1, ptr %0) ; 0 uses
  br label %bb.v

bb.u:                                             ; preds = %._crit_edge.split.us50.i
  %fwrite.us.i = tail call i64 @fwrite(ptr nonnull @.str.231, i64 2, i64 1, ptr %0) ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %indvars.iv.next55.i = add nsw i64 %indvars.iv54.i, -1
  %i.eo = icmp sgt i64 %indvars.iv54.i, 0
  br i1 %i.eo, label %.lr.ph44.split.us.split.i, label %_ZL14write_xpm_dataP8_IO_FILEiiPKPKfffi.exit, !llvm.loop !954

.lr.ph44.split.i:                                 ; preds = %.lr.ph44.i, %bb.aa
  %.03242.i = phi i32 [ %.032.i, %bb.aa ], [ %.03240.i, %.lr.ph44.i ] ; 5 uses
  %.032.in41.i = phi i32 [ %.03242.i, %bb.aa ], [ %7, %.lr.ph44.i ]
  %i.ep = srem i32 %.03242.i, %i.cs
  %i.eq = icmp eq i32 %i.ep, 0
  br i1 %i.eq, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.lr.ph44.split.i
  %i.er = load ptr, ptr @stderr, align 8, !tbaa !45
  %i.es = sub nsw i32 %7, %.03242.i
  %i.et = mul nuw nsw i32 %i.es, 100
  %i.eu = udiv i32 %i.et, %7
  %i.ev = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.er, ptr noundef nonnull @.str.47, i32 noundef %i.eu) #35 ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.lr.ph44.split.i
  %fputc.i = tail call i32 @fputc(i32 34, ptr %0) ; 0 uses
  %.not.i = icmp eq i32 %.032.in41.i, 1
  br i1 %.not.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %fwrite34.i = tail call i64 @fwrite(ptr nonnull @.str.230, i64 3, i64 1, ptr %0) ; 0 uses
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  %fwrite.i36 = tail call i64 @fwrite(ptr nonnull @.str.231, i64 2, i64 1, ptr %0) ; 0 uses
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.032.i = add nsw i32 %.03242.i, -1
  %.not68.i = icmp eq i32 %.03242.i, 0
  br i1 %.not68.i, label %_ZL14write_xpm_dataP8_IO_FILEiiPKPKfffi.exit, label %.lr.ph44.split.i, !llvm.loop !954

_ZL14write_xpm_dataP8_IO_FILEiiPKPKfffi.exit:     ; preds = %bb.aa, %bb.v, %bb.q, %_ZL13write_xpm_mapP8_IO_FILEiiPiff5t_rgbS2_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_Z9write_xpmP8_IO_FILEjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_S8_S8_N3gmx8ArrayRefIKfEESC_NS9_12basic_mdspanISB_NS9_7extentsIJLln1ELln1EEEENS9_12layout_rightENS9_14accessor_basicISB_EEEEff5t_rgbSK_Pi(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %5, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.198") align 8 captures(none) %6, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.198") align 8 captures(none) %7, ptr nofree noundef readonly byval(%"class.gmx::basic_mdspan.206") align 8 captures(none) %8, float noundef %9, float noundef %10, ptr nofree noundef readonly byval(%struct.t_rgb) align 8 captures(none) %11, ptr nofree noundef readonly byval(%struct.t_rgb) align 8 captures(none) %12, ptr nofree noundef captures(none) %13) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.b = load i64, ptr %i.a, align 8              ; 5 uses
  %i.c = tail call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.249, ptr noundef nonnull @.str.1, i32 noundef 1368, i64 noundef %i.b, i64 noundef 8) ; 5 uses
  %i.d = icmp sgt i64 %i.b, 0                     ; 2 uses
  br i1 %i.d, label %.lr.ph33, label %._crit_edge34

.lr.ph33:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.f = load i64, ptr %i.e, align 8
  %.fr36 = freeze i64 %i.f                        ; 15 uses
  %i.g = icmp sgt i64 %.fr36, 0
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  br i1 %i.g, label %.lr.ph.us.preheader, label %.lr.ph33.split

.lr.ph.us.preheader:                              ; preds = %.lr.ph33
  %i.j = ptrtoaddr ptr %i.i to i64
  %i.k = mul i64 %.fr36, -4
  %min.iters.check = icmp ult i64 %.fr36, 4
  %min.iters.check53 = icmp ult i64 %.fr36, 32
  %i.l = and i64 %.fr36, 28
  %n.vec = and i64 %.fr36, 9223372036854775776    ; 4 uses
  %cmp.n = icmp eq i64 %.fr36, %n.vec
  %min.epilog.iters.check = icmp eq i64 %i.l, 0
  %n.vec57 = and i64 %.fr36, 9223372036854775804  ; 3 uses
  %cmp.n61 = icmp eq i64 %.fr36, %n.vec57
  br label %iter.check

iter.check:                                       ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %indvars.iv43 = phi i64 [ %indvars.iv.next44, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ] ; 4 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv43
  %i.n = tail call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.250, ptr noundef nonnull @.str.1, i32 noundef 1371, i64 noundef %.fr36, i64 noundef 4) ; 13 uses
  store ptr %i.n, ptr %i.m, align 8, !tbaa !38
  %i.o = mul nuw nsw i64 %.fr36, %indvars.iv43
  %i.p = getelementptr [4 x i8], ptr %i.i, i64 %i.o ; 11 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.q = ptrtoaddr ptr %i.n to i64
  %i.r = mul i64 %i.k, %indvars.iv43
  %i.s = sub i64 %i.r, %i.j
  %i.t = add i64 %i.s, %i.q
  %i.u = add i64 %i.t, -1
  %diff.check = icmp ult i64 %i.u, 127
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check53, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.v = getelementptr [4 x i8], ptr %i.p, i64 %index ; 4 uses
  %i.w = getelementptr i8, ptr %i.v, i64 32
  %i.x = getelementptr i8, ptr %i.v, i64 64
  %i.y = getelementptr i8, ptr %i.v, i64 96
  %wide.load = load <8 x float>, ptr %i.v, align 4, !tbaa !105
  %wide.load54 = load <8 x float>, ptr %i.w, align 4, !tbaa !105
  %wide.load55 = load <8 x float>, ptr %i.x, align 4, !tbaa !105
  %wide.load56 = load <8 x float>, ptr %i.y, align 4, !tbaa !105
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %index ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 96
  store <8 x float> %wide.load, ptr %i.z, align 4, !tbaa !105
  store <8 x float> %wide.load54, ptr %i.aa, align 4, !tbaa !105
  store <8 x float> %wide.load55, ptr %i.ab, align 4, !tbaa !105
  store <8 x float> %wide.load56, ptr %i.ac, align 4, !tbaa !105
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !955

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !429

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index58 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next60, %vec.epilog.vector.body ] ; 3 uses
  %i.ae = getelementptr [4 x i8], ptr %i.p, i64 %index58
  %wide.load59 = load <4 x float>, ptr %i.ae, align 4, !tbaa !105
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %index58
  store <4 x float> %wide.load59, ptr %i.af, align 4, !tbaa !105
  %index.next60 = add nuw i64 %index58, 4         ; 2 uses
  %i.ag = icmp eq i64 %index.next60, %n.vec57
  br i1 %i.ag, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !956

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n61, label %._crit_edge.us, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv39.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec57, %vec.epilog.middle.block ] ; 4 uses
  %i.ah = sub nsw i64 %.fr36, %indvars.iv39.ph
  %xtraiter = and i64 %i.ah, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv39.prol = phi i64 [ %indvars.iv.next40.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv39.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.ai = getelementptr [4 x i8], ptr %i.p, i64 %indvars.iv39.prol
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !105
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv39.prol
  store float %i.aj, ptr %i.ak, align 4, !tbaa !105
  %indvars.iv.next40.prol = add nuw nsw i64 %indvars.iv39.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !957

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv39.unr = phi i64 [ %indvars.iv39.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next40.prol, %vec.epilog.scalar.ph.prol ]
  %i.al = sub nsw i64 %indvars.iv39.ph, %.fr36
  %i.am = icmp ugt i64 %i.al, -8
  br i1 %i.am, label %._crit_edge.us, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv39 = phi i64 [ %indvars.iv.next40.7, %vec.epilog.scalar.ph ], [ %indvars.iv39.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 10 uses
  %i.an = getelementptr [4 x i8], ptr %i.p, i64 %indvars.iv39
  %i.ao = load float, ptr %i.an, align 4, !tbaa !105
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv39
  store float %i.ao, ptr %i.ap, align 4, !tbaa !105
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1 ; 2 uses
  %i.aq = getelementptr [4 x i8], ptr %i.p, i64 %indvars.iv.next40
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !105
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.next40
  store float %i.ar, ptr %i.as, align 4, !tbaa !105
  %indvars.iv.next40.1 = add nuw nsw i64 %indvars.iv39, 2 ; 2 uses
  %i.at = getelementptr [4 x i8], ptr %i.p, i64 %indvars.iv.next40.1
  %i.au = load float, ptr %i.at, align 4, !tbaa !105
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.next40.1
  store float %i.au, ptr %i.av, align 4, !tbaa !105
  %indvars.iv.next40.2 = add nuw nsw i64 %indvars.iv39, 3 ; 2 uses
end_hunk_3
