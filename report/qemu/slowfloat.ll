inline.NumInlined: 295
inline.NumDeleted: 28
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@slow_f128M_mulAdd:bb.a
  %.promoted74.i = phi i64 [ 0, %f128MToFloatX256.exit22 ], [ 0, %bb.k ], [ 0, %bb.o ], [ 0, %bb.p ], [ 0, %bb.s ], [ 0, %bb.t ], [ 0, %bb.w ], [ 0, %bb.x ], [ %.sroa.10.2.i, %bb.ae ] ; 4 uses
  %.promoted76.i = phi i64 [ %i.v, %f128MToFloatX256.exit22 ], [ %i.v, %bb.k ], [ %i.v, %bb.o ], [ 0, %bb.p ], [ 0, %bb.s ], [ %i.v, %bb.t ], [ 0, %bb.w ], [ 0, %bb.x ], [ %.sroa.17.2.i, %bb.ae ] ; 4 uses
  %.promoted78.i = phi i64 [ %i.w, %f128MToFloatX256.exit22 ], [ %i.w, %bb.k ], [ %i.w, %bb.o ], [ 0, %bb.p ], [ 0, %bb.s ], [ %i.w, %bb.t ], [ 0, %bb.w ], [ 0, %bb.x ], [ %.sroa.24.2.i, %bb.ae ] ; 4 uses
  %i.cx = phi i64 [ %i.p, %f128MToFloatX256.exit22 ], [ %i.p, %bb.k ], [ %i.p, %bb.o ], [ 0, %bb.p ], [ 0, %bb.s ], [ %i.p, %bb.t ], [ 0, %bb.w ], [ 0, %bb.x ], [ %i.cw, %bb.ae ] ; 5 uses
  %i.cy = phi i8 [ %i.t, %f128MToFloatX256.exit22 ], [ %i.at, %bb.k ], [ %i.bh, %bb.o ], [ 0, %bb.p ], [ 0, %bb.s ], [ %i.bh, %bb.t ], [ 1, %bb.w ], [ 0, %bb.x ], [ %i.bh, %bb.ae ] ; 9 uses
  %i.cz = phi i8 [ %i.q, %f128MToFloatX256.exit22 ], [ 0, %bb.k ], [ %i.q, %bb.o ], [ 0, %bb.p ], [ 0, %bb.s ], [ 0, %bb.t ], [ 1, %bb.w ], [ 1, %bb.x ], [ %i.q, %bb.ae ] ; 2 uses
  %i.da = phi i8 [ %i.r, %f128MToFloatX256.exit22 ], [ 0, %bb.k ], [ 1, %bb.o ], [ 0, %bb.p ], [ 0, %bb.s ], [ 1, %bb.t ], [ 0, %bb.w ], [ 0, %bb.x ], [ 0, %bb.ae ]
  %i.db = phi i1 [ true, %f128MToFloatX256.exit22 ], [ true, %bb.k ], [ false, %bb.o ], [ true, %bb.p ], [ true, %bb.s ], [ false, %bb.t ], [ false, %bb.w ], [ false, %bb.x ], [ false, %bb.ae ]
  %.val = load i64, ptr %2, align 8, !tbaa !34    ; 5 uses
  %i.dc = getelementptr i8, ptr %2, i64 8
  %.val4 = load i64, ptr %i.dc, align 8, !tbaa !33 ; 3 uses
  %i.dd = lshr i64 %.val4, 48
  %i.de = and i64 %i.dd, 32767                    ; 2 uses
  %i.df = and i64 %.val4, 281474976710655         ; 5 uses
  switch i64 %i.de, label %bb.ai [
    i64 32767, label %bb.af
    i64 0, label %bb.ah
  ]

bb.af:                                            ; preds = %floatX256Mul.exit
  %i.dg = icmp ne i64 %i.df, 0
  %i.dh = icmp ne i64 %.val, 0
  %or.cond.i.i35 = select i1 %i.dg, i1 true, i1 %i.dh
  br i1 %or.cond.i.i35, label %f128MToFloatX256.exit36, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  br label %f128MToFloatX256.exit36

bb.ah:                                            ; preds = %floatX256Mul.exit
  %i.di = icmp ne i64 %i.df, 0
  %i.dj = icmp ne i64 %.val, 0
  %or.cond5.i.i23 = select i1 %i.di, i1 true, i1 %i.dj
  br i1 %or.cond5.i.i23, label %.preheader.i.i31, label %f128MToFloatX256.exit36

.preheader.i.i31:                                 ; preds = %bb.ah, %.preheader.i.i31
  %.sroa.08.0.i.i32 = phi i64 [ %i.dm, %.preheader.i.i31 ], [ %.val, %bb.ah ]
  %.sroa.8.0.i.i33 = phi i64 [ %i.dn, %.preheader.i.i31 ], [ %i.df, %bb.ah ]
  %.0.i.i34 = phi i64 [ %i.dk, %.preheader.i.i31 ], [ -16382, %bb.ah ]
  %i.dk = add nsw i64 %.0.i.i34, -1               ; 2 uses
  %i.dl = tail call { i64, i64 } @shortShiftLeft128(i64 %.sroa.08.0.i.i32, i64 %.sroa.8.0.i.i33, i32 noundef 1) #10 ; 2 uses
  %i.dm = extractvalue { i64, i64 } %i.dl, 0      ; 2 uses
  %i.dn = extractvalue { i64, i64 } %i.dl, 1      ; 3 uses
  %i.do = icmp ult i64 %i.dn, 281474976710656
  br i1 %i.do, label %.preheader.i.i31, label %f128MToFloatX256.exit36

bb.ai:                                            ; preds = %floatX256Mul.exit
  %i.dp = add nsw i64 %i.de, -16383
  %i.dq = or disjoint i64 %i.df, 281474976710656
  br label %f128MToFloatX256.exit36

f128MToFloatX256.exit36:                          ; preds = %.preheader.i.i31, %bb.af, %bb.ag, %bb.ah, %bb.ai
  %.sroa.131.0.i24 = phi i64 [ %i.dp, %bb.ai ], [ undef, %bb.af ], [ undef, %bb.ag ], [ undef, %bb.ah ], [ %i.dk, %.preheader.i.i31 ] ; 7 uses
  %.sroa.8.0.i25 = phi i8 [ 0, %bb.ai ], [ 0, %bb.af ], [ 0, %bb.ag ], [ 1, %bb.ah ], [ 0, %.preheader.i.i31 ] ; 3 uses
  %.sroa.5.0.i26 = phi i8 [ 0, %bb.ai ], [ 0, %bb.af ], [ 1, %bb.ag ], [ 0, %bb.ah ], [ 0, %.preheader.i.i31 ] ; 2 uses
  %.sroa.0.0.i27 = phi i8 [ 0, %bb.ai ], [ 1, %bb.af ], [ 0, %bb.ag ], [ 0, %bb.ah ], [ 0, %.preheader.i.i31 ] ; 2 uses
  %.sroa.08.1.i.i28 = phi i64 [ %.val, %bb.ai ], [ %.val, %bb.af ], [ 0, %bb.ag ], [ 0, %bb.ah ], [ %i.dm, %.preheader.i.i31 ]
  %.sroa.8.1.i.i29 = phi i64 [ %i.dq, %bb.ai ], [ %i.df, %bb.af ], [ 0, %bb.ag ], [ 0, %bb.ah ], [ %i.dn, %.preheader.i.i31 ]
  %.lobit.i.i30 = lshr i64 %.val4, 63
  %i.dr = trunc nuw nsw i64 %.lobit.i.i30 to i8   ; 7 uses
  %i.ds = tail call { i64, i64 } @shortShiftLeft128(i64 %.sroa.08.1.i.i28, i64 %.sroa.8.1.i.i29, i32 noundef 7) #10 ; 2 uses
  %i.dt = extractvalue { i64, i64 } %i.ds, 0      ; 2 uses
  %i.du = extractvalue { i64, i64 } %i.ds, 1      ; 2 uses
  store i8 %.sroa.0.0.i27, ptr %7, align 8, !tbaa !35
  store i8 %.sroa.5.0.i26, ptr %i.ax, align 1, !tbaa !38
  store i8 %.sroa.8.0.i25, ptr %i.ay, align 2, !tbaa !39
  store i8 %i.dr, ptr %i.az, align 1, !tbaa !40
  store i64 %.sroa.131.0.i24, ptr %i.ba, align 8, !tbaa !41
  store i64 %i.du, ptr %i.bc, align 8, !tbaa !42
  store i64 %i.dt, ptr %i.bd, align 8, !tbaa !43
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bb, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  br i1 %i.db, label %floatX256Add.exit, label %bb.aj

bb.aj:                                            ; preds = %f128MToFloatX256.exit36
  %i.dv = trunc nuw i8 %.sroa.0.0.i27 to i1
  br i1 %i.dv, label %bb.bx, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dw = trunc nuw i8 %i.da to i1
  %i.dx = trunc nuw i8 %.sroa.5.0.i26 to i1       ; 2 uses
  br i1 %i.dw, label %bb.al, label %bb.an

bb.al:                                            ; preds = %bb.ak
  %.not61.i = icmp ne i8 %i.cy, %i.dr
  %or.cond48.not = select i1 %i.dx, i1 %.not61.i, i1 false
  br i1 %or.cond48.not, label %bb.am, label %floatX256Add.exit

bb.am:                                            ; preds = %bb.al
  %i.dy = load i8, ptr @slowfloat_exceptionFlags, align 1, !tbaa !27
  %i.dz = or i8 %i.dy, 16
  store i8 %i.dz, ptr @slowfloat_exceptionFlags, align 1, !tbaa !27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(48) @floatX256NaN, i64 48, i1 false), !tbaa.struct !44
  br label %floatX256Add.exit

bb.an:                                            ; preds = %bb.ak
  br i1 %i.dx, label %bb.bx, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ea = trunc nuw i8 %i.cz to i1
  %i.eb = and i8 %i.cz, %.sroa.8.0.i25
  %or.cond49.not = icmp eq i8 %i.eb, 0
  br i1 %or.cond49.not, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ec = icmp eq i8 %i.cy, %i.dr
  br i1 %i.ec, label %floatX256Add.exit, label %bb.as

bb.aq:                                            ; preds = %bb.ao
  %.not.i37 = icmp ne i8 %i.cy, %i.dr
  %i.ed = icmp eq i64 %i.cx, %.sroa.131.0.i24
  %or.cond.i = select i1 %.not.i37, i1 %i.ed, i1 false
  %i.ee = icmp eq i64 %.promoted78.i, %i.du
  %or.cond51 = select i1 %or.cond.i, i1 %i.ee, i1 false
  %i.ef = icmp eq i64 %.promoted76.i, %i.dt
  %or.cond53 = select i1 %or.cond51, i1 %i.ef, i1 false
  br i1 %or.cond53, label %bb.ar, label %eq256M.exit.thread.i

bb.ar:                                            ; preds = %bb.aq
  %i.eg = icmp eq i64 %.promoted74.i, 0
  %i.eh = icmp eq i64 %.promoted72.i, 0
  %or.cond55 = select i1 %i.eg, i1 %i.eh, i1 false
  br i1 %or.cond55, label %bb.as, label %eq256M.exit.thread.i

bb.as:                                            ; preds = %bb.ar, %bb.ap
  %i.ei = load i8, ptr @slowfloat_roundingMode, align 1, !tbaa !27
  %i.ej = icmp eq i8 %i.ei, 2
  br i1 %i.ej, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(48) @floatX256NegativeZero, i64 48, i1 false), !tbaa.struct !44
  br label %floatX256Add.exit

bb.au:                                            ; preds = %bb.as
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(48) @floatX256PositiveZero, i64 48, i1 false), !tbaa.struct !44
  br label %floatX256Add.exit

eq256M.exit.thread.i:                             ; preds = %bb.ar, %bb.aq
  br i1 %i.ea, label %bb.bx, label %bb.av

bb.av:                                            ; preds = %eq256M.exit.thread.i
  %i.ek = trunc nuw i8 %.sroa.8.0.i25 to i1
  br i1 %i.ek, label %floatX256Add.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.el = sub nsw i64 %i.cx, %.sroa.131.0.i24     ; 9 uses
  %i.em = icmp slt i64 %i.el, 0
  br i1 %i.em, label %bb.ax, label %bb.bh

bb.ax:                                            ; preds = %bb.aw
  store i64 %.sroa.131.0.i24, ptr %i.aa, align 8, !tbaa !41
  %i.en = icmp samesign ult i64 %i.el, -248
  %i.eo = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  br i1 %i.en, label %bb.ay, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.ax
  %i.ep = sub i64 %.sroa.131.0.i24, %i.cx
  %.neg205 = add i64 %i.cx, 1
  %xtraiter199 = and i64 %i.ep, 1
  %lcmp.mod200.not = icmp eq i64 %xtraiter199, 0
  br i1 %lcmp.mod200.not, label %.preheader.i.prol.loopexit, label %.preheader.i.prol

.preheader.i.prol:                                ; preds = %.preheader.i.preheader
  %i.eq = add nsw i64 %i.el, 1
  %i.er = and i64 %.promoted72.i, 1
  %i.es = tail call i64 @llvm.fshl.i64(i64 %.promoted74.i, i64 %.promoted72.i, i64 63)
  %i.et = tail call i64 @llvm.fshl.i64(i64 %.promoted76.i, i64 %.promoted74.i, i64 63) ; 2 uses
  %i.eu = tail call i64 @llvm.fshl.i64(i64 %.promoted78.i, i64 %.promoted76.i, i64 63) ; 2 uses
  %i.ev = lshr i64 %.promoted78.i, 1              ; 2 uses
  %i.ew = or i64 %i.es, %i.er                     ; 2 uses
  br label %.preheader.i.prol.loopexit

.preheader.i.prol.loopexit:                       ; preds = %.preheader.i.prol, %.preheader.i.preheader
  %.lcssa179.unr = phi i64 [ poison, %.preheader.i.preheader ], [ %i.et, %.preheader.i.prol ]
  %.lcssa178.unr = phi i64 [ poison, %.preheader.i.preheader ], [ %i.eu, %.preheader.i.prol ]
  %.lcssa177.unr = phi i64 [ poison, %.preheader.i.preheader ], [ %i.ev, %.preheader.i.prol ]
  %.lcssa176.unr = phi i64 [ poison, %.preheader.i.preheader ], [ %i.ew, %.preheader.i.prol ]
  %.unr201 = phi i64 [ %.promoted78.i, %.preheader.i.preheader ], [ %i.ev, %.preheader.i.prol ]
  %.unr202 = phi i64 [ %.promoted76.i, %.preheader.i.preheader ], [ %i.eu, %.preheader.i.prol ]
  %.unr203 = phi i64 [ %.promoted74.i, %.preheader.i.preheader ], [ %i.et, %.preheader.i.prol ]
  %.unr204 = phi i64 [ %.promoted72.i, %.preheader.i.preheader ], [ %i.ew, %.preheader.i.prol ]
  %.071.i.unr = phi i64 [ %i.el, %.preheader.i.preheader ], [ %i.eq, %.preheader.i.prol ]
  %i.ex = icmp eq i64 %.sroa.131.0.i24, %.neg205
  br i1 %i.ex, label %.loopexit.i, label %.preheader.i

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eo, i8 0, i64 24, i1 false)
  store i64 1, ptr %i.ab, align 8, !tbaa !45
  br label %bb.az

.preheader.i:                                     ; preds = %.preheader.i.prol.loopexit, %.preheader.i
  %i.ey = phi i64 [ %i.fm, %.preheader.i ], [ %.unr201, %.preheader.i.prol.loopexit ] ; 3 uses
  %i.ez = phi i64 [ %i.fl, %.preheader.i ], [ %.unr202, %.preheader.i.prol.loopexit ] ; 2 uses
  %i.fa = phi i64 [ %i.fk, %.preheader.i ], [ %.unr203, %.preheader.i.prol.loopexit ] ; 2 uses
  %i.fb = phi i64 [ %i.fn, %.preheader.i ], [ %.unr204, %.preheader.i.prol.loopexit ] ; 2 uses
  %.071.i = phi i64 [ %i.fh, %.preheader.i ], [ %.071.i.unr, %.preheader.i.prol.loopexit ]
  %i.fc = tail call i64 @llvm.fshl.i64(i64 %i.fa, i64 %i.fb, i64 63) ; 2 uses
  %i.fd = tail call i64 @llvm.fshl.i64(i64 %i.ez, i64 %i.fa, i64 63) ; 2 uses
  %i.fe = tail call i64 @llvm.fshl.i64(i64 %i.ey, i64 %i.ez, i64 63) ; 2 uses
  %i.ff = lshr i64 %i.ey, 1
  %i.fg = or i64 %i.fc, %i.fb
  %i.fh = add nsw i64 %.071.i, 2                  ; 2 uses
  %i.fi = and i64 %i.fg, 1
  %i.fj = tail call i64 @llvm.fshl.i64(i64 %i.fd, i64 %i.fc, i64 63)
  %i.fk = tail call i64 @llvm.fshl.i64(i64 %i.fe, i64 %i.fd, i64 63) ; 2 uses
  %i.fl = tail call i64 @llvm.fshl.i64(i64 %i.ff, i64 %i.fe, i64 63) ; 2 uses
  %i.fm = lshr i64 %i.ey, 2                       ; 2 uses
  %i.fn = or i64 %i.fj, %i.fi                     ; 2 uses
  %exitcond.not.i39.1 = icmp eq i64 %i.fh, 0
  br i1 %exitcond.not.i39.1, label %.loopexit.i, label %.preheader.i

.loopexit.i:                                      ; preds = %.preheader.i, %.preheader.i.prol.loopexit
  %.lcssa179 = phi i64 [ %.lcssa179.unr, %.preheader.i.prol.loopexit ], [ %i.fk, %.preheader.i ] ; 2 uses
  %.lcssa178 = phi i64 [ %.lcssa178.unr, %.preheader.i.prol.loopexit ], [ %i.fl, %.preheader.i ] ; 2 uses
  %.lcssa177 = phi i64 [ %.lcssa177.unr, %.preheader.i.prol.loopexit ], [ %i.fm, %.preheader.i ] ; 2 uses
  %.lcssa176 = phi i64 [ %.lcssa176.unr, %.preheader.i.prol.loopexit ], [ %i.fn, %.preheader.i ] ; 2 uses
  store i64 %.lcssa176, ptr %i.ab, align 8, !tbaa !46
  store i64 %.lcssa179, ptr %i.eo, align 8, !tbaa !47
  store i64 %.lcssa178, ptr %i.ad, align 8, !tbaa !48
  store i64 %.lcssa177, ptr %i.ac, align 8, !tbaa !49
  br label %bb.az

bb.az:                                            ; preds = %.loopexit.i, %bb.ay
  %i.fo = phi i64 [ %.lcssa178, %.loopexit.i ], [ 0, %bb.ay ] ; 3 uses
  %i.fp = phi i64 [ %.lcssa177, %.loopexit.i ], [ 0, %bb.ay ] ; 3 uses
  %i.fq = phi i64 [ %.lcssa176, %.loopexit.i ], [ 1, %bb.ay ] ; 3 uses
  %i.fr = phi i64 [ %.lcssa179, %.loopexit.i ], [ 0, %bb.ay ] ; 3 uses
  %.not59.i = icmp eq i8 %i.cy, %i.dr
  br i1 %.not59.i, label %neg256M.exit47, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.fs = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.ft = or i64 %i.fq, %i.fr
  %.not.i44 = icmp eq i64 %i.ft, 0
  br i1 %.not.i44, label %bb.be, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.fu = xor i64 %i.fp, -1
  store i64 %i.fu, ptr %i.ac, align 8, !tbaa !49
  %i.fv = xor i64 %i.fo, -1
  store i64 %i.fv, ptr %i.ad, align 8, !tbaa !48
  %.not24.i45 = icmp eq i64 %i.fq, 0
  br i1 %.not24.i45, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.fw = xor i64 %i.fr, -1
  store i64 %i.fw, ptr %i.fs, align 8, !tbaa !47
  %i.fx = sub i64 0, %i.fq
  store i64 %i.fx, ptr %i.ab, align 8, !tbaa !46
  br label %neg256M.exit47

bb.bd:                                            ; preds = %bb.bb
  %i.fy = sub i64 0, %i.fr
  store i64 %i.fy, ptr %i.fs, align 8, !tbaa !47
  br label %neg256M.exit47

bb.be:                                            ; preds = %bb.ba
  %.not23.i46 = icmp eq i64 %i.fo, 0
  br i1 %.not23.i46, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.fz = xor i64 %i.fp, -1
  store i64 %i.fz, ptr %i.ac, align 8, !tbaa !49
  %i.ga = sub i64 0, %i.fo
  store i64 %i.ga, ptr %i.ad, align 8, !tbaa !48
  br label %neg256M.exit47

bb.bg:                                            ; preds = %bb.be
  %i.gb = sub nsw i64 0, %i.fp
  store i64 %i.gb, ptr %i.ac, align 8, !tbaa !49
  br label %neg256M.exit47

neg256M.exit47:                                   ; preds = %bb.bg, %bb.bf, %bb.bd, %bb.bc, %bb.az
  store i8 %i.dr, ptr %i.z, align 1, !tbaa !40
  br label %neg256M.exit.i

bb.bh:                                            ; preds = %bb.aw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.bb, i64 32, i1 false), !tbaa.struct !50
  %i.gc = icmp samesign ugt i64 %i.el, 248
  br i1 %i.gc, label %bb.bi, label %.preheader62.i

.preheader62.i:                                   ; preds = %bb.bh
  %.promoted.i38 = load i64, ptr %5, align 8      ; 4 uses
  %.not80.i = icmp eq i64 %i.el, 0
  br i1 %.not80.i, label %.loopexit63.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader62.i
  %i.gd = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %.promoted65.i = load i64, ptr %i.gd, align 8, !tbaa !47 ; 3 uses
  %.promoted67.i = load i64, ptr %i.ge, align 8, !tbaa !48 ; 3 uses
  %.promoted69.i = load i64, ptr %i.gf, align 8, !tbaa !49 ; 3 uses
  %.neg = add i64 %.sroa.131.0.i24, 1
  %xtraiter = and i64 %i.el, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph.i
  %i.gg = add nsw i64 %i.el, -1
  %i.gh = and i64 %.promoted.i38, 1
  %i.gi = tail call i64 @llvm.fshl.i64(i64 %.promoted65.i, i64 %.promoted.i38, i64 63)
  %i.gj = tail call i64 @llvm.fshl.i64(i64 %.promoted67.i, i64 %.promoted65.i, i64 63) ; 2 uses
  %i.gk = tail call i64 @llvm.fshl.i64(i64 %.promoted69.i, i64 %.promoted67.i, i64 63) ; 2 uses
  %i.gl = lshr i64 %.promoted69.i, 1              ; 2 uses
  %i.gm = or i64 %i.gi, %i.gh                     ; 2 uses
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph.i
  %.unr = phi i64 [ %.promoted69.i, %.lr.ph.i ], [ %i.gl, %.prol.loopexit.unr-lcssa ]
  %.unr196 = phi i64 [ %.promoted67.i, %.lr.ph.i ], [ %i.gk, %.prol.loopexit.unr-lcssa ]
  %.unr197 = phi i64 [ %.promoted65.i, %.lr.ph.i ], [ %i.gj, %.prol.loopexit.unr-lcssa ]
  %.164.i.unr = phi i64 [ %i.el, %.lr.ph.i ], [ %i.gg, %.prol.loopexit.unr-lcssa ]
  %.unr198 = phi i64 [ %.promoted.i38, %.lr.ph.i ], [ %i.gm, %.prol.loopexit.unr-lcssa ]
  %.lcssa183.unr = phi i64 [ poison, %.lr.ph.i ], [ %i.gj, %.prol.loopexit.unr-lcssa ]
  %.lcssa182.unr = phi i64 [ poison, %.lr.ph.i ], [ %i.gk, %.prol.loopexit.unr-lcssa ]
  %.lcssa181.unr = phi i64 [ poison, %.lr.ph.i ], [ %i.gl, %.prol.loopexit.unr-lcssa ]
  %.lcssa180.unr = phi i64 [ poison, %.lr.ph.i ], [ %i.gm, %.prol.loopexit.unr-lcssa ]
  %i.gn = icmp eq i64 %i.cx, %.neg
  br i1 %i.gn, label %..loopexit63_crit_edge.i, label %.lr.ph.i.new

bb.bi:                                            ; preds = %bb.bh
  %i.go = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.go, i8 0, i64 24, i1 false)
  br label %.loopexit63.i

.lr.ph.i.new:                                     ; preds = %.prol.loopexit, %.lr.ph.i.new
  %i.gp = phi i64 [ %i.hd, %.lr.ph.i.new ], [ %.unr, %.prol.loopexit ] ; 3 uses
  %i.gq = phi i64 [ %i.hc, %.lr.ph.i.new ], [ %.unr196, %.prol.loopexit ] ; 2 uses
  %i.gr = phi i64 [ %i.hb, %.lr.ph.i.new ], [ %.unr197, %.prol.loopexit ] ; 2 uses
  %.164.i = phi i64 [ %i.gy, %.lr.ph.i.new ], [ %.164.i.unr, %.prol.loopexit ] ; 2 uses
  %i.gs = phi i64 [ %i.he, %.lr.ph.i.new ], [ %.unr198, %.prol.loopexit ] ; 2 uses
  %i.gt = tail call i64 @llvm.fshl.i64(i64 %i.gr, i64 %i.gs, i64 63) ; 2 uses
  %i.gu = tail call i64 @llvm.fshl.i64(i64 %i.gq, i64 %i.gr, i64 63) ; 2 uses
  %i.gv = tail call i64 @llvm.fshl.i64(i64 %i.gp, i64 %i.gq, i64 63) ; 2 uses
  %i.gw = lshr i64 %i.gp, 1
  %i.gx = or i64 %i.gt, %i.gs
  %i.gy = add nsw i64 %.164.i, -2
  %i.gz = and i64 %i.gx, 1
  %i.ha = tail call i64 @llvm.fshl.i64(i64 %i.gu, i64 %i.gt, i64 63)
  %i.hb = tail call i64 @llvm.fshl.i64(i64 %i.gv, i64 %i.gu, i64 63) ; 2 uses
  %i.hc = tail call i64 @llvm.fshl.i64(i64 %i.gw, i64 %i.gv, i64 63) ; 2 uses
  %i.hd = lshr i64 %i.gp, 2                       ; 2 uses
  %i.he = or i64 %i.ha, %i.gz                     ; 2 uses
  %i.hf = icmp sgt i64 %.164.i, 2
  br i1 %i.hf, label %.lr.ph.i.new, label %..loopexit63_crit_edge.i

..loopexit63_crit_edge.i:                         ; preds = %.lr.ph.i.new, %.prol.loopexit
  %.lcssa183 = phi i64 [ %.lcssa183.unr, %.prol.loopexit ], [ %i.hb, %.lr.ph.i.new ]
  %.lcssa182 = phi i64 [ %.lcssa182.unr, %.prol.loopexit ], [ %i.hc, %.lr.ph.i.new ]
  %.lcssa181 = phi i64 [ %.lcssa181.unr, %.prol.loopexit ], [ %i.hd, %.lr.ph.i.new ]
  %.lcssa180 = phi i64 [ %.lcssa180.unr, %.prol.loopexit ], [ %i.he, %.lr.ph.i.new ]
  store i64 %.lcssa183, ptr %i.gd, align 8, !tbaa !47
  store i64 %.lcssa182, ptr %i.ge, align 8, !tbaa !48
  store i64 %.lcssa181, ptr %i.gf, align 8, !tbaa !49
  br label %.loopexit63.i

.loopexit63.i:                                    ; preds = %.preheader62.i, %..loopexit63_crit_edge.i, %bb.bi
  %i.hg = phi i64 [ 1, %bb.bi ], [ %.lcssa180, %..loopexit63_crit_edge.i ], [ %.promoted.i38, %.preheader62.i ] ; 4 uses
  store i64 %i.hg, ptr %5, align 8
  %.not58.i = icmp eq i8 %i.cy, %i.dr
  br i1 %.not58.i, label %neg256M.exit.i, label %bb.bj

bb.bj:                                            ; preds = %.loopexit63.i
  %i.hh = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.hi = load i64, ptr %i.hh, align 8, !tbaa !47 ; 3 uses
  %i.hj = or i64 %i.hi, %i.hg
  %.not.i.i = icmp eq i64 %i.hj, 0
  br i1 %.not.i.i, label %bb.bn, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.hk = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.hl = load <2 x i64>, ptr %i.hk, align 8, !tbaa !26
  %i.hm = xor <2 x i64> %i.hl, splat (i64 -1)
  store <2 x i64> %i.hm, ptr %i.hk, align 8, !tbaa !26
  %.not24.i.i = icmp eq i64 %i.hg, 0
  br i1 %.not24.i.i, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.hn = xor i64 %i.hi, -1
  store i64 %i.hn, ptr %i.hh, align 8, !tbaa !47
  %i.ho = sub i64 0, %i.hg
  store i64 %i.ho, ptr %5, align 8, !tbaa !46
  br label %neg256M.exit.i

bb.bm:                                            ; preds = %bb.bk
  %i.hp = sub i64 0, %i.hi
  store i64 %i.hp, ptr %i.hh, align 8, !tbaa !47
  br label %neg256M.exit.i

bb.bn:                                            ; preds = %bb.bj
  %i.hq = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.hr = load i64, ptr %i.hq, align 8, !tbaa !48 ; 2 uses
  %.not23.i.i = icmp eq i64 %i.hr, 0
  %i.hs = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  %i.ht = load i64, ptr %i.hs, align 8, !tbaa !49 ; 2 uses
  br i1 %.not23.i.i, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.hu = xor i64 %i.ht, -1
  store i64 %i.hu, ptr %i.hs, align 8, !tbaa !49
  %i.hv = sub i64 0, %i.hr
end_hunk_0
