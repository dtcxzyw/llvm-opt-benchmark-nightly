Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lua/original/lstrlib?download=true
inline.NumInlined: 79
inline.NumDeleted: 38
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 16
begin_hunk_0_@str_pack:bb.a
  br i1 %i.dc, label %bb.n, label %bb.m, !prof !14

bb.m:                                             ; preds = %bb.l
  %i.dd = call i32 @luaL_argerror(ptr noundef %0, i32 noundef %i.ad, ptr noundef nonnull @.str.61) #12 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %bb.k
  %i.de = load i32, ptr %i.h, align 8, !tbaa !49
  %i.df = trunc i64 %i.n to i32                   ; 2 uses
  %i.dg = and i64 %i.n, 4294967295                ; 6 uses
  %i.dh = call ptr @luaL_prepbuffsize(ptr noundef nonnull %1, i64 noundef %i.dg) #12 ; 11 uses
  %i.di = trunc i64 %i.cz to i8
  %.not.i69 = icmp eq i32 %i.de, 0                ; 2 uses
  %i.dj = add i32 %i.df, -1                       ; 2 uses
  %i.dk = select i1 %.not.i69, i32 %i.dj, i32 0
  %i.dl = zext i32 %i.dk to i64
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.dl
  store i8 %i.di, ptr %i.dm, align 1, !tbaa !13
  %i.dn = icmp ugt i32 %i.df, 1
  br i1 %i.dn, label %.lr.ph.i70, label %packint.exit93

.lr.ph.i70:                                       ; preds = %bb.n
  br i1 %.not.i69, label %.lr.ph.split.us.preheader.i80, label %.lr.ph.split.i71.preheader

.lr.ph.split.i71.preheader:                       ; preds = %.lr.ph.i70
  %i.do = add nsw i64 %i.dg, -1                   ; 2 uses
  %i.dp = add nsw i64 %i.dg, -2
  %xtraiter210 = and i64 %i.do, 3                 ; 3 uses
  %i.dq = icmp ult i64 %i.dp, 3
  br i1 %i.dq, label %.lr.ph.split.i71.epil.preheader, label %.lr.ph.split.i71.preheader.new

.lr.ph.split.i71.preheader.new:                   ; preds = %.lr.ph.split.i71.preheader
  %unroll_iter214 = and i64 %i.do, -4
  br label %.lr.ph.split.i71

.lr.ph.split.us.preheader.i80:                    ; preds = %.lr.ph.i70
  %i.dr = zext i32 %i.dj to i64                   ; 5 uses
  %i.ds = add nsw i64 %i.dg, -1                   ; 2 uses
  %i.dt = add nsw i64 %i.dg, -2
  %xtraiter216 = and i64 %i.ds, 3                 ; 3 uses
  %i.du = icmp ult i64 %i.dt, 3
  br i1 %i.du, label %.lr.ph.split.us.i81.epil.preheader, label %.lr.ph.split.us.preheader.i80.new

.lr.ph.split.us.preheader.i80.new:                ; preds = %.lr.ph.split.us.preheader.i80
  %unroll_iter220 = and i64 %i.ds, -4
  %invariant.gep239 = getelementptr i8, ptr %i.dh, i64 %i.dr
  br label %.lr.ph.split.us.i81

.lr.ph.split.us.i81:                              ; preds = %.lr.ph.split.us.i81, %.lr.ph.split.us.preheader.i80.new
  %indvars.iv36.i82 = phi i64 [ 1, %.lr.ph.split.us.preheader.i80.new ], [ %indvars.iv.next37.i84.3, %.lr.ph.split.us.i81 ] ; 5 uses
  %.02830.us.i83 = phi i64 [ %i.cz, %.lr.ph.split.us.preheader.i80.new ], [ %i.ef, %.lr.ph.split.us.i81 ] ; 4 uses
  %niter221 = phi i64 [ 0, %.lr.ph.split.us.preheader.i80.new ], [ %niter221.next.3, %.lr.ph.split.us.i81 ]
  %i.dv = lshr i64 %.02830.us.i83, 8
  %i.dw = trunc i64 %i.dv to i8
  %i.dx = sub nuw nsw i64 %i.dr, %indvars.iv36.i82
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.dx
  store i8 %i.dw, ptr %i.dy, align 1, !tbaa !13
  %indvars.iv.next37.i84.neg = xor i64 %indvars.iv36.i82, -1
  %i.dz = lshr i64 %.02830.us.i83, 16
  %i.ea = trunc i64 %i.dz to i8
  %gep240 = getelementptr i8, ptr %invariant.gep239, i64 %indvars.iv.next37.i84.neg
  store i8 %i.ea, ptr %gep240, align 1, !tbaa !13
  %indvars.iv.next37.i84.1 = add nuw nsw i64 %indvars.iv36.i82, 2
  %i.eb = lshr i64 %.02830.us.i83, 24
  %i.ec = trunc i64 %i.eb to i8
  %i.ed = sub nuw nsw i64 %i.dr, %indvars.iv.next37.i84.1
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.ed
  store i8 %i.ec, ptr %i.ee, align 1, !tbaa !13
  %indvars.iv.next37.i84.2 = add nuw nsw i64 %indvars.iv36.i82, 3
  %i.ef = lshr i64 %.02830.us.i83, 32             ; 3 uses
  %i.eg = trunc i64 %i.ef to i8
  %i.eh = sub nuw nsw i64 %i.dr, %indvars.iv.next37.i84.2
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.eh
  store i8 %i.eg, ptr %i.ei, align 1, !tbaa !13
  %indvars.iv.next37.i84.3 = add nuw nsw i64 %indvars.iv36.i82, 4 ; 2 uses
  %niter221.next.3 = add nuw i64 %niter221, 4     ; 2 uses
  %niter221.ncmp.3 = icmp eq i64 %niter221.next.3, %unroll_iter220
  br i1 %niter221.ncmp.3, label %packint.exit93.loopexit.unr-lcssa, label %.lr.ph.split.us.i81

.lr.ph.split.i71:                                 ; preds = %.lr.ph.split.i71, %.lr.ph.split.i71.preheader.new
  %indvars.iv.i72 = phi i64 [ 1, %.lr.ph.split.i71.preheader.new ], [ %indvars.iv.next.i74.3, %.lr.ph.split.i71 ] ; 5 uses
  %.02830.i73 = phi i64 [ %i.cz, %.lr.ph.split.i71.preheader.new ], [ %i.eu, %.lr.ph.split.i71 ] ; 4 uses
  %niter215 = phi i64 [ 0, %.lr.ph.split.i71.preheader.new ], [ %niter215.next.3, %.lr.ph.split.i71 ]
  %i.ej = lshr i64 %.02830.i73, 8
  %i.ek = trunc i64 %i.ej to i8
  %i.el = getelementptr inbounds nuw i8, ptr %i.dh, i64 %indvars.iv.i72
  store i8 %i.ek, ptr %i.el, align 1, !tbaa !13
  %i.em = lshr i64 %.02830.i73, 16
  %i.en = trunc i64 %i.em to i8
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dh, i64 %indvars.iv.i72
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 1
  store i8 %i.en, ptr %i.ep, align 1, !tbaa !13
  %i.eq = lshr i64 %.02830.i73, 24
  %i.er = trunc i64 %i.eq to i8
  %i.es = getelementptr inbounds nuw i8, ptr %i.dh, i64 %indvars.iv.i72
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 2
  store i8 %i.er, ptr %i.et, align 1, !tbaa !13
  %i.eu = lshr i64 %.02830.i73, 32                ; 3 uses
  %i.ev = trunc i64 %i.eu to i8
  %i.ew = getelementptr inbounds nuw i8, ptr %i.dh, i64 %indvars.iv.i72
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 3
  store i8 %i.ev, ptr %i.ex, align 1, !tbaa !13
  %indvars.iv.next.i74.3 = add nuw nsw i64 %indvars.iv.i72, 4 ; 2 uses
  %niter215.next.3 = add nuw i64 %niter215, 4     ; 2 uses
  %niter215.ncmp.3 = icmp eq i64 %niter215.next.3, %unroll_iter214
  br i1 %niter215.ncmp.3, label %packint.exit93.loopexit201.unr-lcssa, label %.lr.ph.split.i71

packint.exit93.loopexit.unr-lcssa:                ; preds = %.lr.ph.split.us.i81
  %lcmp.mod218.not = icmp eq i64 %xtraiter216, 0
  br i1 %lcmp.mod218.not, label %packint.exit93, label %.lr.ph.split.us.i81.epil.preheader

.lr.ph.split.us.i81.epil.preheader:               ; preds = %packint.exit93.loopexit.unr-lcssa, %.lr.ph.split.us.preheader.i80
  %indvars.iv36.i82.epil.init = phi i64 [ 1, %.lr.ph.split.us.preheader.i80 ], [ %indvars.iv.next37.i84.3, %packint.exit93.loopexit.unr-lcssa ]
  %.02830.us.i83.epil.init = phi i64 [ %i.cz, %.lr.ph.split.us.preheader.i80 ], [ %i.ef, %packint.exit93.loopexit.unr-lcssa ]
  %lcmp.mod219 = icmp ne i64 %xtraiter216, 0
  call void @llvm.assume(i1 %lcmp.mod219)
  br label %.lr.ph.split.us.i81.epil

.lr.ph.split.us.i81.epil:                         ; preds = %.lr.ph.split.us.i81.epil, %.lr.ph.split.us.i81.epil.preheader
  %indvars.iv36.i82.epil = phi i64 [ %indvars.iv36.i82.epil.init, %.lr.ph.split.us.i81.epil.preheader ], [ %indvars.iv.next37.i84.epil, %.lr.ph.split.us.i81.epil ] ; 2 uses
  %.02830.us.i83.epil = phi i64 [ %.02830.us.i83.epil.init, %.lr.ph.split.us.i81.epil.preheader ], [ %i.ey, %.lr.ph.split.us.i81.epil ]
  %epil.iter217 = phi i64 [ 0, %.lr.ph.split.us.i81.epil.preheader ], [ %epil.iter217.next, %.lr.ph.split.us.i81.epil ]
  %i.ey = lshr i64 %.02830.us.i83.epil, 8         ; 2 uses
  %i.ez = trunc i64 %i.ey to i8
  %i.fa = sub nuw nsw i64 %i.dr, %indvars.iv36.i82.epil
  %i.fb = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.fa
  store i8 %i.ez, ptr %i.fb, align 1, !tbaa !13
  %indvars.iv.next37.i84.epil = add nuw nsw i64 %indvars.iv36.i82.epil, 1
  %epil.iter217.next = add i64 %epil.iter217, 1   ; 2 uses
  %epil.iter217.cmp.not = icmp eq i64 %epil.iter217.next, %xtraiter216
  br i1 %epil.iter217.cmp.not, label %packint.exit93, label %.lr.ph.split.us.i81.epil, !llvm.loop !55

packint.exit93.loopexit201.unr-lcssa:             ; preds = %.lr.ph.split.i71
  %lcmp.mod212.not = icmp eq i64 %xtraiter210, 0
  br i1 %lcmp.mod212.not, label %packint.exit93, label %.lr.ph.split.i71.epil.preheader

.lr.ph.split.i71.epil.preheader:                  ; preds = %packint.exit93.loopexit201.unr-lcssa, %.lr.ph.split.i71.preheader
  %indvars.iv.i72.epil.init = phi i64 [ 1, %.lr.ph.split.i71.preheader ], [ %indvars.iv.next.i74.3, %packint.exit93.loopexit201.unr-lcssa ]
  %.02830.i73.epil.init = phi i64 [ %i.cz, %.lr.ph.split.i71.preheader ], [ %i.eu, %packint.exit93.loopexit201.unr-lcssa ]
  %lcmp.mod213 = icmp ne i64 %xtraiter210, 0
  call void @llvm.assume(i1 %lcmp.mod213)
  br label %.lr.ph.split.i71.epil

.lr.ph.split.i71.epil:                            ; preds = %.lr.ph.split.i71.epil, %.lr.ph.split.i71.epil.preheader
  %indvars.iv.i72.epil = phi i64 [ %indvars.iv.next.i74.epil, %.lr.ph.split.i71.epil ], [ %indvars.iv.i72.epil.init, %.lr.ph.split.i71.epil.preheader ] ; 2 uses
  %.02830.i73.epil = phi i64 [ %i.fc, %.lr.ph.split.i71.epil ], [ %.02830.i73.epil.init, %.lr.ph.split.i71.epil.preheader ]
  %epil.iter211 = phi i64 [ %epil.iter211.next, %.lr.ph.split.i71.epil ], [ 0, %.lr.ph.split.i71.epil.preheader ]
  %i.fc = lshr i64 %.02830.i73.epil, 8            ; 2 uses
  %i.fd = trunc i64 %i.fc to i8
  %i.fe = getelementptr inbounds nuw i8, ptr %i.dh, i64 %indvars.iv.i72.epil
  store i8 %i.fd, ptr %i.fe, align 1, !tbaa !13
  %indvars.iv.next.i74.epil = add nuw nsw i64 %indvars.iv.i72.epil, 1
  %epil.iter211.next = add i64 %epil.iter211, 1   ; 2 uses
  %epil.iter211.cmp.not = icmp eq i64 %epil.iter211.next, %xtraiter210
  br i1 %epil.iter211.cmp.not, label %packint.exit93, label %.lr.ph.split.i71.epil, !llvm.loop !56

packint.exit93:                                   ; preds = %packint.exit93.loopexit201.unr-lcssa, %.lr.ph.split.i71.epil, %packint.exit93.loopexit.unr-lcssa, %.lr.ph.split.us.i81.epil, %bb.n
  %i.ff = load i64, ptr %i.k, align 16, !tbaa !21
  %i.fg = add i64 %i.ff, %i.dg
  store i64 %i.fg, ptr %i.k, align 16, !tbaa !21
  br label %bb.ak

bb.o:                                             ; preds = %._crit_edge
  %i.fh = call double @luaL_checknumber(ptr noundef %0, i32 noundef %i.ad) #12
  %i.fi = fptrunc double %i.fh to float           ; 2 uses
  %i.fj = call ptr @luaL_prepbuffsize(ptr noundef nonnull %1, i64 noundef 4) #12 ; 5 uses
  %i.fk = load i32, ptr %i.h, align 8, !tbaa !49
  %i.fl = icmp eq i32 %i.fk, 1
  br i1 %i.fl, label %bb.p, label %copywithendian.exit.loopexit

bb.p:                                             ; preds = %bb.o
  store float %i.fi, ptr %i.fj, align 1
  br label %copywithendian.exit

copywithendian.exit.loopexit:                     ; preds = %bb.o
  %.0.i = getelementptr i8, ptr %i.fj, i64 3
  %i.fm = bitcast float %i.fi to i32              ; 4 uses
  %.0.extract.trunc171 = trunc i32 %i.fm to i8
  store i8 %.0.extract.trunc171, ptr %.0.i, align 1, !tbaa !13
  %.0.i.1 = getelementptr i8, ptr %i.fj, i64 2
  %.1.extract.shift174 = lshr i32 %i.fm, 8
  %.1.extract.trunc175 = trunc i32 %.1.extract.shift174 to i8
  store i8 %.1.extract.trunc175, ptr %.0.i.1, align 1, !tbaa !13
  %.0.i.2 = getelementptr i8, ptr %i.fj, i64 1
  %.2.extract.shift177 = lshr i32 %i.fm, 16
  %.2.extract.trunc178 = trunc i32 %.2.extract.shift177 to i8
  store i8 %.2.extract.trunc178, ptr %.0.i.2, align 1, !tbaa !13
  %.3.extract.shift180 = lshr i32 %i.fm, 24
  %.3.extract.trunc181 = trunc nuw i32 %.3.extract.shift180 to i8
  store i8 %.3.extract.trunc181, ptr %i.fj, align 1, !tbaa !13
  br label %copywithendian.exit

copywithendian.exit:                              ; preds = %copywithendian.exit.loopexit, %bb.p
  %i.fn = load i64, ptr %i.k, align 16, !tbaa !21
  %i.fo = add i64 %i.fn, %i.n
  store i64 %i.fo, ptr %i.k, align 16, !tbaa !21
  br label %bb.ak

bb.q:                                             ; preds = %._crit_edge
  %i.fp = call double @luaL_checknumber(ptr noundef %0, i32 noundef %i.ad) #12 ; 2 uses
  %i.fq = call ptr @luaL_prepbuffsize(ptr noundef nonnull %1, i64 noundef 8) #12 ; 9 uses
  %i.fr = load i32, ptr %i.h, align 8, !tbaa !49
  %i.fs = icmp eq i32 %i.fr, 1
  br i1 %i.fs, label %bb.r, label %copywithendian.exit100.loopexit

bb.r:                                             ; preds = %bb.q
  store double %i.fp, ptr %i.fq, align 1
  br label %copywithendian.exit100

copywithendian.exit100.loopexit:                  ; preds = %bb.q
  %.0.i98 = getelementptr i8, ptr %i.fq, i64 7
  %3 = bitcast double %i.fp to i64                ; 8 uses
  %.0.extract.trunc147 = trunc i64 %3 to i8
  store i8 %.0.extract.trunc147, ptr %.0.i98, align 1, !tbaa !13
  %.0.i98.1 = getelementptr i8, ptr %i.fq, i64 6
  %.1.extract.shift150 = lshr i64 %3, 8
  %.1.extract.trunc151 = trunc i64 %.1.extract.shift150 to i8
  store i8 %.1.extract.trunc151, ptr %.0.i98.1, align 1, !tbaa !13
  %.0.i98.2 = getelementptr i8, ptr %i.fq, i64 5
  %.2.extract.shift153 = lshr i64 %3, 16
  %.2.extract.trunc154 = trunc i64 %.2.extract.shift153 to i8
  store i8 %.2.extract.trunc154, ptr %.0.i98.2, align 1, !tbaa !13
  %.0.i98.3 = getelementptr i8, ptr %i.fq, i64 4
  %.3.extract.shift156 = lshr i64 %3, 24
  %.3.extract.trunc157 = trunc i64 %.3.extract.shift156 to i8
  store i8 %.3.extract.trunc157, ptr %.0.i98.3, align 1, !tbaa !13
  %.0.i98.4 = getelementptr i8, ptr %i.fq, i64 3
  %.4.extract.shift159 = lshr i64 %3, 32
  %.4.extract.trunc160 = trunc i64 %.4.extract.shift159 to i8
  store i8 %.4.extract.trunc160, ptr %.0.i98.4, align 1, !tbaa !13
  %.0.i98.5 = getelementptr i8, ptr %i.fq, i64 2
  %.5.extract.shift162 = lshr i64 %3, 40
  %.5.extract.trunc163 = trunc i64 %.5.extract.shift162 to i8
  store i8 %.5.extract.trunc163, ptr %.0.i98.5, align 1, !tbaa !13
  %.0.i98.6 = getelementptr i8, ptr %i.fq, i64 1
  %.6.extract.shift165 = lshr i64 %3, 48
  %.6.extract.trunc166 = trunc i64 %.6.extract.shift165 to i8
  store i8 %.6.extract.trunc166, ptr %.0.i98.6, align 1, !tbaa !13
  %.7.extract.shift168 = lshr i64 %3, 56
  %.7.extract.trunc169 = trunc nuw i64 %.7.extract.shift168 to i8
  store i8 %.7.extract.trunc169, ptr %i.fq, align 1, !tbaa !13
  br label %copywithendian.exit100

copywithendian.exit100:                           ; preds = %copywithendian.exit100.loopexit, %bb.r
  %i.ft = load i64, ptr %i.k, align 16, !tbaa !21
  %i.fu = add i64 %i.ft, %i.n
  store i64 %i.fu, ptr %i.k, align 16, !tbaa !21
  br label %bb.ak

bb.s:                                             ; preds = %._crit_edge
  %i.fv = call double @luaL_checknumber(ptr noundef %0, i32 noundef %i.ad) #12 ; 2 uses
  %i.fw = call ptr @luaL_prepbuffsize(ptr noundef nonnull %1, i64 noundef 8) #12 ; 9 uses
  %i.fx = load i32, ptr %i.h, align 8, !tbaa !49
  %i.fy = icmp eq i32 %i.fx, 1
  br i1 %i.fy, label %bb.t, label %copywithendian.exit106.loopexit

bb.t:                                             ; preds = %bb.s
  store double %i.fv, ptr %i.fw, align 1
  br label %copywithendian.exit106

copywithendian.exit106.loopexit:                  ; preds = %bb.s
  %.0.i104 = getelementptr i8, ptr %i.fw, i64 7
  %4 = bitcast double %i.fv to i64                ; 8 uses
  %.0.extract.trunc = trunc i64 %4 to i8
  store i8 %.0.extract.trunc, ptr %.0.i104, align 1, !tbaa !13
  %.0.i104.1 = getelementptr i8, ptr %i.fw, i64 6
  %.1.extract.shift = lshr i64 %4, 8
  %.1.extract.trunc = trunc i64 %.1.extract.shift to i8
  store i8 %.1.extract.trunc, ptr %.0.i104.1, align 1, !tbaa !13
  %.0.i104.2 = getelementptr i8, ptr %i.fw, i64 5
  %.2.extract.shift = lshr i64 %4, 16
  %.2.extract.trunc = trunc i64 %.2.extract.shift to i8
  store i8 %.2.extract.trunc, ptr %.0.i104.2, align 1, !tbaa !13
  %.0.i104.3 = getelementptr i8, ptr %i.fw, i64 4
  %.3.extract.shift = lshr i64 %4, 24
  %.3.extract.trunc = trunc i64 %.3.extract.shift to i8
  store i8 %.3.extract.trunc, ptr %.0.i104.3, align 1, !tbaa !13
  %.0.i104.4 = getelementptr i8, ptr %i.fw, i64 3
  %.4.extract.shift = lshr i64 %4, 32
  %.4.extract.trunc = trunc i64 %.4.extract.shift to i8
  store i8 %.4.extract.trunc, ptr %.0.i104.4, align 1, !tbaa !13
  %.0.i104.5 = getelementptr i8, ptr %i.fw, i64 2
  %.5.extract.shift = lshr i64 %4, 40
  %.5.extract.trunc = trunc i64 %.5.extract.shift to i8
  store i8 %.5.extract.trunc, ptr %.0.i104.5, align 1, !tbaa !13
  %.0.i104.6 = getelementptr i8, ptr %i.fw, i64 1
  %.6.extract.shift = lshr i64 %4, 48
  %.6.extract.trunc = trunc i64 %.6.extract.shift to i8
  store i8 %.6.extract.trunc, ptr %.0.i104.6, align 1, !tbaa !13
  %.7.extract.shift = lshr i64 %4, 56
  %.7.extract.trunc = trunc nuw i64 %.7.extract.shift to i8
  store i8 %.7.extract.trunc, ptr %i.fw, align 1, !tbaa !13
  br label %copywithendian.exit106

copywithendian.exit106:                           ; preds = %copywithendian.exit106.loopexit, %bb.t
  %i.fz = load i64, ptr %i.k, align 16, !tbaa !21
  %i.ga = add i64 %i.fz, %i.n
  store i64 %i.ga, ptr %i.k, align 16, !tbaa !21
  br label %bb.ak

bb.u:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  %i.gb = call ptr @luaL_checklstring(ptr noundef %0, i32 noundef %i.ad, ptr noundef nonnull %i.d) #12
  %i.gc = load i64, ptr %i.d, align 8, !tbaa !11  ; 2 uses
  %.not67 = icmp ugt i64 %i.gc, %i.n
  br i1 %.not67, label %bb.v, label %bb.w, !prof !12

bb.v:                                             ; preds = %bb.u
  %i.gd = call i32 @luaL_argerror(ptr noundef %0, i32 noundef %i.ad, ptr noundef nonnull @.str.62) #12 ; 0 uses
  %.pre186 = load i64, ptr %i.d, align 8, !tbaa !11
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.ge = phi i64 [ %.pre186, %bb.v ], [ %i.gc, %bb.u ]
  call void @luaL_addlstring(ptr noundef nonnull %1, ptr noundef %i.gb, i64 noundef %i.ge) #12
  %i.gf = load i64, ptr %i.d, align 8, !tbaa !11  ; 2 uses
  %i.gg = icmp ult i64 %i.gf, %i.n
  br i1 %i.gg, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.gh = sub nuw i64 %i.n, %i.gf                 ; 3 uses
  %i.gi = call ptr @luaL_prepbuffsize(ptr noundef nonnull %1, i64 noundef %i.gh) #12
  call void @llvm.memset.p0.i64(ptr align 1 %i.gi, i8 0, i64 %i.gh, i1 false)
  %i.gj = load i64, ptr %i.k, align 16, !tbaa !21
  %i.gk = add i64 %i.gj, %i.gh
  store i64 %i.gk, ptr %i.k, align 16, !tbaa !21
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  br label %bb.ak

bb.z:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  %i.gl = call ptr @luaL_checklstring(ptr noundef %0, i32 noundef %i.ad, ptr noundef nonnull %i.e) #12
  %i.gm = icmp ugt i64 %i.n, 7
  %i.gn = load i64, ptr %i.e, align 8             ; 2 uses
  %i.go = shl nuw nsw i64 %i.n, 3
  %.highbits = lshr i64 %i.gn, %i.go
  %i.gp = icmp eq i64 %.highbits, 0
  %i.gq = select i1 %i.gm, i1 true, i1 %i.gp
  br i1 %i.gq, label %bb.ab, label %bb.aa, !prof !14

bb.aa:                                            ; preds = %bb.z
  %i.gr = call i32 @luaL_argerror(ptr noundef %0, i32 noundef %i.ad, ptr noundef nonnull @.str.63) #12 ; 0 uses
  %.pre185 = load i64, ptr %i.e, align 8, !tbaa !11
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.gs = phi i64 [ %.pre185, %bb.aa ], [ %i.gn, %bb.z ] ; 5 uses
  %i.gt = load i32, ptr %i.h, align 8, !tbaa !49
  %i.gu = trunc i64 %i.n to i32                   ; 2 uses
  %i.gv = and i64 %i.n, 4294967295                ; 6 uses
  %i.gw = call ptr @luaL_prepbuffsize(ptr noundef nonnull %1, i64 noundef %i.gv) #12 ; 11 uses
  %i.gx = trunc i64 %i.gs to i8
  %.not.i107 = icmp eq i32 %i.gt, 0               ; 2 uses
  %i.gy = add i32 %i.gu, -1                       ; 2 uses
  %i.gz = select i1 %.not.i107, i32 %i.gy, i32 0
  %i.ha = zext i32 %i.gz to i64
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.ha
  store i8 %i.gx, ptr %i.hb, align 1, !tbaa !13
  %i.hc = icmp ugt i32 %i.gu, 1
  br i1 %i.hc, label %.lr.ph.i108, label %packint.exit131

.lr.ph.i108:                                      ; preds = %bb.ab
  br i1 %.not.i107, label %.lr.ph.split.us.preheader.i118, label %.lr.ph.split.i109.preheader

.lr.ph.split.i109.preheader:                      ; preds = %.lr.ph.i108
  %i.hd = add nsw i64 %i.gv, -1                   ; 2 uses
  %i.he = add nsw i64 %i.gv, -2
  %xtraiter = and i64 %i.hd, 3                    ; 3 uses
  %i.hf = icmp ult i64 %i.he, 3
  br i1 %i.hf, label %.lr.ph.split.i109.epil.preheader, label %.lr.ph.split.i109.preheader.new

.lr.ph.split.i109.preheader.new:                  ; preds = %.lr.ph.split.i109.preheader
  %unroll_iter = and i64 %i.hd, -4
  br label %.lr.ph.split.i109

.lr.ph.split.us.preheader.i118:                   ; preds = %.lr.ph.i108
  %i.hg = zext i32 %i.gy to i64                   ; 5 uses
  %i.hh = add nsw i64 %i.gv, -1                   ; 2 uses
  %i.hi = add nsw i64 %i.gv, -2
  %xtraiter204 = and i64 %i.hh, 3                 ; 3 uses
  %i.hj = icmp ult i64 %i.hi, 3
  br i1 %i.hj, label %.lr.ph.split.us.i119.epil.preheader, label %.lr.ph.split.us.preheader.i118.new

.lr.ph.split.us.preheader.i118.new:               ; preds = %.lr.ph.split.us.preheader.i118
  %unroll_iter208 = and i64 %i.hh, -4
  %invariant.gep = getelementptr i8, ptr %i.gw, i64 %i.hg
  br label %.lr.ph.split.us.i119

.lr.ph.split.us.i119:                             ; preds = %.lr.ph.split.us.i119, %.lr.ph.split.us.preheader.i118.new
  %indvars.iv36.i120 = phi i64 [ 1, %.lr.ph.split.us.preheader.i118.new ], [ %indvars.iv.next37.i122.3, %.lr.ph.split.us.i119 ] ; 5 uses
  %.02830.us.i121 = phi i64 [ %i.gs, %.lr.ph.split.us.preheader.i118.new ], [ %i.hu, %.lr.ph.split.us.i119 ] ; 4 uses
  %niter209 = phi i64 [ 0, %.lr.ph.split.us.preheader.i118.new ], [ %niter209.next.3, %.lr.ph.split.us.i119 ]
  %i.hk = lshr i64 %.02830.us.i121, 8
  %i.hl = trunc i64 %i.hk to i8
  %i.hm = sub nuw nsw i64 %i.hg, %indvars.iv36.i120
  %i.hn = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.hm
  store i8 %i.hl, ptr %i.hn, align 1, !tbaa !13
  %indvars.iv.next37.i122.neg = xor i64 %indvars.iv36.i120, -1
  %i.ho = lshr i64 %.02830.us.i121, 16
  %i.hp = trunc i64 %i.ho to i8
  %gep = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv.next37.i122.neg
  store i8 %i.hp, ptr %gep, align 1, !tbaa !13
  %indvars.iv.next37.i122.1 = add nuw nsw i64 %indvars.iv36.i120, 2
  %i.hq = lshr i64 %.02830.us.i121, 24
  %i.hr = trunc i64 %i.hq to i8
  %i.hs = sub nuw nsw i64 %i.hg, %indvars.iv.next37.i122.1
  %i.ht = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.hs
  store i8 %i.hr, ptr %i.ht, align 1, !tbaa !13
  %indvars.iv.next37.i122.2 = add nuw nsw i64 %indvars.iv36.i120, 3
  %i.hu = lshr i64 %.02830.us.i121, 32            ; 3 uses
  %i.hv = trunc i64 %i.hu to i8
  %i.hw = sub nuw nsw i64 %i.hg, %indvars.iv.next37.i122.2
  %i.hx = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.hw
  store i8 %i.hv, ptr %i.hx, align 1, !tbaa !13
  %indvars.iv.next37.i122.3 = add nuw nsw i64 %indvars.iv36.i120, 4 ; 2 uses
  %niter209.next.3 = add nuw i64 %niter209, 4     ; 2 uses
  %niter209.ncmp.3 = icmp eq i64 %niter209.next.3, %unroll_iter208
  br i1 %niter209.ncmp.3, label %packint.exit131.loopexit.unr-lcssa, label %.lr.ph.split.us.i119

.lr.ph.split.i109:                                ; preds = %.lr.ph.split.i109, %.lr.ph.split.i109.preheader.new
  %indvars.iv.i110 = phi i64 [ 1, %.lr.ph.split.i109.preheader.new ], [ %indvars.iv.next.i112.3, %.lr.ph.split.i109 ] ; 5 uses
  %.02830.i111 = phi i64 [ %i.gs, %.lr.ph.split.i109.preheader.new ], [ %i.ij, %.lr.ph.split.i109 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.split.i109.preheader.new ], [ %niter.next.3, %.lr.ph.split.i109 ]
  %i.hy = lshr i64 %.02830.i111, 8
  %i.hz = trunc i64 %i.hy to i8
  %i.ia = getelementptr inbounds nuw i8, ptr %i.gw, i64 %indvars.iv.i110
  store i8 %i.hz, ptr %i.ia, align 1, !tbaa !13
  %i.ib = lshr i64 %.02830.i111, 16
  %i.ic = trunc i64 %i.ib to i8
  %i.id = getelementptr inbounds nuw i8, ptr %i.gw, i64 %indvars.iv.i110
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 1
  store i8 %i.ic, ptr %i.ie, align 1, !tbaa !13
  %i.if = lshr i64 %.02830.i111, 24
  %i.ig = trunc i64 %i.if to i8
  %i.ih = getelementptr inbounds nuw i8, ptr %i.gw, i64 %indvars.iv.i110
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 2
  store i8 %i.ig, ptr %i.ii, align 1, !tbaa !13
  %i.ij = lshr i64 %.02830.i111, 32               ; 3 uses
  %i.ik = trunc i64 %i.ij to i8
  %i.il = getelementptr inbounds nuw i8, ptr %i.gw, i64 %indvars.iv.i110
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 3
  store i8 %i.ik, ptr %i.im, align 1, !tbaa !13
  %indvars.iv.next.i112.3 = add nuw nsw i64 %indvars.iv.i110, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %packint.exit131.loopexit202.unr-lcssa, label %.lr.ph.split.i109

packint.exit131.loopexit.unr-lcssa:               ; preds = %.lr.ph.split.us.i119
  %lcmp.mod206.not = icmp eq i64 %xtraiter204, 0
  br i1 %lcmp.mod206.not, label %packint.exit131, label %.lr.ph.split.us.i119.epil.preheader

.lr.ph.split.us.i119.epil.preheader:              ; preds = %packint.exit131.loopexit.unr-lcssa, %.lr.ph.split.us.preheader.i118
  %indvars.iv36.i120.epil.init = phi i64 [ 1, %.lr.ph.split.us.preheader.i118 ], [ %indvars.iv.next37.i122.3, %packint.exit131.loopexit.unr-lcssa ]
  %.02830.us.i121.epil.init = phi i64 [ %i.gs, %.lr.ph.split.us.preheader.i118 ], [ %i.hu, %packint.exit131.loopexit.unr-lcssa ]
  %lcmp.mod207 = icmp ne i64 %xtraiter204, 0
  call void @llvm.assume(i1 %lcmp.mod207)
  br label %.lr.ph.split.us.i119.epil

.lr.ph.split.us.i119.epil:                        ; preds = %.lr.ph.split.us.i119.epil, %.lr.ph.split.us.i119.epil.preheader
  %indvars.iv36.i120.epil = phi i64 [ %indvars.iv36.i120.epil.init, %.lr.ph.split.us.i119.epil.preheader ], [ %indvars.iv.next37.i122.epil, %.lr.ph.split.us.i119.epil ] ; 2 uses
  %.02830.us.i121.epil = phi i64 [ %.02830.us.i121.epil.init, %.lr.ph.split.us.i119.epil.preheader ], [ %i.in, %.lr.ph.split.us.i119.epil ]
  %epil.iter205 = phi i64 [ 0, %.lr.ph.split.us.i119.epil.preheader ], [ %epil.iter205.next, %.lr.ph.split.us.i119.epil ]
  %i.in = lshr i64 %.02830.us.i121.epil, 8        ; 2 uses
  %i.io = trunc i64 %i.in to i8
  %i.ip = sub nuw nsw i64 %i.hg, %indvars.iv36.i120.epil
  %i.iq = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.ip
  store i8 %i.io, ptr %i.iq, align 1, !tbaa !13
  %indvars.iv.next37.i122.epil = add nuw nsw i64 %indvars.iv36.i120.epil, 1
  %epil.iter205.next = add i64 %epil.iter205, 1   ; 2 uses
  %epil.iter205.cmp.not = icmp eq i64 %epil.iter205.next, %xtraiter204
  br i1 %epil.iter205.cmp.not, label %packint.exit131, label %.lr.ph.split.us.i119.epil, !llvm.loop !57

packint.exit131.loopexit202.unr-lcssa:            ; preds = %.lr.ph.split.i109
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %packint.exit131, label %.lr.ph.split.i109.epil.preheader

.lr.ph.split.i109.epil.preheader:                 ; preds = %packint.exit131.loopexit202.unr-lcssa, %.lr.ph.split.i109.preheader
  %indvars.iv.i110.epil.init = phi i64 [ 1, %.lr.ph.split.i109.preheader ], [ %indvars.iv.next.i112.3, %packint.exit131.loopexit202.unr-lcssa ]
  %.02830.i111.epil.init = phi i64 [ %i.gs, %.lr.ph.split.i109.preheader ], [ %i.ij, %packint.exit131.loopexit202.unr-lcssa ]
  %lcmp.mod203 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod203)
  br label %.lr.ph.split.i109.epil

.lr.ph.split.i109.epil:                           ; preds = %.lr.ph.split.i109.epil, %.lr.ph.split.i109.epil.preheader
  %indvars.iv.i110.epil = phi i64 [ %indvars.iv.next.i112.epil, %.lr.ph.split.i109.epil ], [ %indvars.iv.i110.epil.init, %.lr.ph.split.i109.epil.preheader ] ; 2 uses
  %.02830.i111.epil = phi i64 [ %i.ir, %.lr.ph.split.i109.epil ], [ %.02830.i111.epil.init, %.lr.ph.split.i109.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.split.i109.epil ], [ 0, %.lr.ph.split.i109.epil.preheader ]
  %i.ir = lshr i64 %.02830.i111.epil, 8           ; 2 uses
  %i.is = trunc i64 %i.ir to i8
  %i.it = getelementptr inbounds nuw i8, ptr %i.gw, i64 %indvars.iv.i110.epil
  store i8 %i.is, ptr %i.it, align 1, !tbaa !13
  %indvars.iv.next.i112.epil = add nuw nsw i64 %indvars.iv.i110.epil, 1
end_hunk_0
