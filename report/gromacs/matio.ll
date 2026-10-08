Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/matio?download=true
inline.NumInlined: 4757
inline.NumDeleted: 1842
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_Z11write_xpm_mP8_IO_FILE8t_matrix:bb.a
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
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 240 ; 2 uses
  %i.bo = zext nneg i32 %i.bk to i64              ; 2 uses
  br i1 %i.e, label %.lr.ph61.split.us, label %.lr.ph61.split

.lr.ph61.split.us:                                ; preds = %.lr.ph61, %bb.e
  %indvars.iv74.in = phi i64 [ %indvars.iv74, %bb.e ], [ %i.bo, %.lr.ph61 ] ; 2 uses
  %.035.in58.us = phi i32 [ %i.bs, %bb.e ], [ %i.bk, %.lr.ph61 ]
  %indvars.iv74 = add nsw i64 %indvars.iv74.in, -1 ; 3 uses
  %i.bp = load i32, ptr %i.o, align 8, !tbaa !99  ; 3 uses
  %i.bq = sdiv i32 %i.bp, 100
  %i.br = add nsw i32 %i.bq, 1
  %i.bs = trunc nuw nsw i64 %indvars.iv74 to i32  ; 3 uses
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
  %i.cg = getelementptr [2 x i8], ptr %i.cf, i64 %indvars.iv74
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
  %i.cq = icmp samesign ugt i64 %indvars.iv74.in, 1
  br i1 %i.cq, label %.lr.ph61.split.us, label %._crit_edge62, !llvm.loop !926

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split
  %.sroa.043.052 = phi ptr [ %i.dm, %.lr.ph.split ], [ %i.z, %.lr.ph ] ; 6 uses
  %i.cr = load i8, ptr %.sroa.043.052, align 8, !tbaa !59
  %i.cs = sext i8 %i.cr to i32
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.043.052, i64 1
  %i.cu = load i8, ptr %i.ct, align 1
  %i.cv = sext i8 %i.cu to i32
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.043.052, i64 40
  %i.cx = load <2 x double>, ptr %i.cw, align 8, !tbaa !62
  %i.cy = fmul <2 x double> %i.cx, splat (double 2.550000e+02)
  %i.cz = tail call <2 x double> @llvm.round.v2f64(<2 x double> %i.cy) ; 2 uses
  %i.da = extractelement <2 x double> %i.cz, i64 0
  %i.db = fptoui double %i.da to i32
  %i.dc = extractelement <2 x double> %i.cz, i64 1
  %i.dd = fptoui double %i.dc to i32
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.043.052, i64 56
  %i.df = load double, ptr %i.de, align 8, !tbaa !65
  %i.dg = fmul double %i.df, 2.550000e+02
  %i.dh = tail call double @llvm.round.f64(double %i.dg)
  %i.di = fptoui double %i.dh to i32
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.043.052, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !50
  %i.dl = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.226, i32 noundef %i.cs, i32 noundef %i.cv, i32 noundef %i.db, i32 noundef %i.dd, i32 noundef %i.di, ptr noundef %i.dk) #29 ; 0 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.043.052, i64 64 ; 2 uses
  %.not47 = icmp eq ptr %i.dm, %i.aa
  br i1 %.not47, label %._crit_edge, label %.lr.ph.split

._crit_edge62:                                    ; preds = %bb.i, %bb.e, %._crit_edge
  ret void

.lr.ph61.split:                                   ; preds = %.lr.ph61, %bb.i
  %indvars.iv68.in = phi i64 [ %indvars.iv68, %bb.i ], [ %i.bo, %.lr.ph61 ] ; 2 uses
  %.035.in58 = phi i32 [ %i.dq, %bb.i ], [ %i.bk, %.lr.ph61 ]
  %indvars.iv68 = add nsw i64 %indvars.iv68.in, -1 ; 3 uses
  %i.dn = load i32, ptr %i.o, align 8, !tbaa !99  ; 3 uses
  %i.do = sdiv i32 %i.dn, 100
  %i.dp = add nsw i32 %i.do, 1
  %i.dq = trunc nuw nsw i64 %indvars.iv68 to i32  ; 3 uses
  %i.dr = srem i32 %i.dq, %i.dp
  %i.ds = icmp eq i32 %i.dr, 0
  br i1 %i.ds, label %bb.f, label %.preheader49

bb.f:                                             ; preds = %.lr.ph61.split
  %i.dt = load ptr, ptr @stderr, align 8, !tbaa !45
  %i.du = sub nsw i32 %i.dn, %i.dq
  %i.dv = mul nsw i32 %i.du, 100
  %i.dw = sdiv i32 %i.dv, %i.dn
  %i.dx = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dt, ptr noundef nonnull @.str.47, i32 noundef %i.dw) #35 ; 0 uses
  br label %.preheader49

.preheader49:                                     ; preds = %bb.f, %.lr.ph61.split
  %fputc = tail call i32 @fputc(i32 34, ptr %0)   ; 0 uses
  %i.dy = load i32, ptr %i.m, align 4, !tbaa !98
  %i.dz = icmp sgt i32 %i.dy, 0
  br i1 %i.dz, label %.lr.ph54, label %.loopexit50

.lr.ph54:                                         ; preds = %.preheader49, %.lr.ph54
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph54 ], [ 0, %.preheader49 ] ; 2 uses
  %i.ea = load ptr, ptr %i.bm, align 8, !tbaa !111
  %i.eb = load i64, ptr %i.bn, align 8
  %i.ec = mul nsw i64 %i.eb, %indvars.iv
  %i.ed = getelementptr [2 x i8], ptr %i.ea, i64 %i.ec
  %i.ee = getelementptr [2 x i8], ptr %i.ed, i64 %indvars.iv68
  %i.ef = load i16, ptr %i.ee, align 2, !tbaa !109
  %i.eg = sext i16 %i.ef to i64
  %i.eh = load ptr, ptr %i.a, align 8, !tbaa !55
  %i.ei = getelementptr inbounds nuw [64 x i8], ptr %i.eh, i64 %i.eg
  %i.ej = load i16, ptr %i.ei, align 8, !tbaa !51 ; 2 uses
  %.sroa.5.0.extract.trunc = zext i16 %i.ej to i32
  %sext = shl i32 %.sroa.5.0.extract.trunc, 24
  %i.ek = ashr exact i32 %sext, 24
  %2 = ashr i16 %i.ej, 8
  %3 = sext i16 %2 to i32
  %i.el = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.229, i32 noundef %i.ek, i32 noundef %3) #29 ; 0 uses
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
  %i.ep = icmp samesign ugt i64 %indvars.iv68.in, 1
  br i1 %i.ep, label %.lr.ph61.split, label %._crit_edge62, !llvm.loop !926
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
end_hunk_0
