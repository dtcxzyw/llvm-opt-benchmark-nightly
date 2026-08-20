inline.NumInlined: 81
inline.NumDeleted: 23
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 9
begin_hunk_0_@cff_glyph_load:bb.a
  %.0403.i = phi ptr [ %i.re, %.lr.ph.i ], [ %i.qe, %.lr.ph.i.preheader ] ; 4 uses
  %.0288402.i = phi i32 [ %i.rd, %.lr.ph.i ], [ %i.qg, %.lr.ph.i.preheader ] ; 2 uses
  %i.qq = load i64, ptr %.0403.i, align 8, !tbaa !139
  %i.qr = mul i64 %i.qq, %i.qh                    ; 2 uses
  %i.qs = ashr i64 %i.qr, 63
  %i.qt = add i64 %i.qr, 32768
  %i.qu = add i64 %i.qt, %i.qs
  %i.qv = ashr i64 %i.qu, 16
  store i64 %i.qv, ptr %.0403.i, align 8, !tbaa !139
  %i.qw = getelementptr inbounds nuw i8, ptr %.0403.i, i64 8 ; 2 uses
  %i.qx = load i64, ptr %i.qw, align 8, !tbaa !135
  %i.qy = mul i64 %i.qx, %i.qi                    ; 2 uses
  %i.qz = ashr i64 %i.qy, 63
  %i.ra = add i64 %i.qy, 32768
  %i.rb = add i64 %i.ra, %i.qz
  %i.rc = ashr i64 %i.rb, 16
  store i64 %i.rc, ptr %i.qw, align 8, !tbaa !135
  %i.rd = add nsw i32 %.0288402.i, -1
  %i.re = getelementptr inbounds nuw i8, ptr %.0403.i, i64 16
  %i.rf = icmp samesign ugt i32 %.0288402.i, 1
  br i1 %i.rf, label %.lr.ph.i, label %.loopexit.i, !llvm.loop !369

.loopexit.i:                                      ; preds = %vector.body, %.lr.ph.i, %bb.bt, %bb.bs
  %i.rg = load i64, ptr %i.nc, align 8, !tbaa !361
  %i.rh = extractelement <2 x i64> %i.px, i64 0
  %i.ri = mul i64 %i.rg, %i.rh                    ; 2 uses
  %i.rj = ashr i64 %i.ri, 63
  %i.rk = add i64 %i.ri, 32768
  %i.rl = add i64 %i.rk, %i.rj
  %i.rm = ashr i64 %i.rl, 16
  store i64 %i.rm, ptr %i.nc, align 8, !tbaa !361
  %i.rn = extractelement <2 x i64> %i.px, i64 1
  %i.ro = mul i64 %i.rn, %i.pv                    ; 2 uses
  %i.rp = ashr i64 %i.ro, 63
  %i.rq = add i64 %i.ro, 32768
  %i.rr = add i64 %i.rq, %i.rp
  %i.rs = ashr i64 %i.rr, 16
  store i64 %i.rs, ptr %i.on, align 8, !tbaa !363
  br label %bb.bu

bb.bu:                                            ; preds = %.loopexit.i, %bb.br
  call void @FT_Outline_Get_CBox(ptr noundef nonnull %i.mk, ptr noundef nonnull %11) #18
  %i.rt = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.ru = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.rv = load i64, ptr %i.ru, align 8, !tbaa !370
  %i.rw = load <2 x i64>, ptr %i.rt, align 16, !tbaa !136
  %i.rx = load <2 x i64>, ptr %11, align 16, !tbaa !136
  %i.ry = load i64, ptr %11, align 16, !tbaa !371 ; 2 uses
  %i.rz = sub nsw <2 x i64> %i.rw, %i.rx
  store <2 x i64> %i.rz, ptr %i.mi, align 8, !tbaa !136
  %i.sa = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %i.ry, ptr %i.sa, align 8, !tbaa !360
  %i.sb = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %i.rv, ptr %i.sb, align 8, !tbaa !372
  br i1 %.not349398.i, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.sc = load i64, ptr %i.nc, align 8, !tbaa !361
  %.neg.i = sdiv i64 %i.sc, -2
  %i.sd = add i64 %.neg.i, %i.ry
  %i.se = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %i.sd, ptr %i.se, align 8, !tbaa !373
  %i.sf = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.sg = load i64, ptr %i.sf, align 8, !tbaa !362
  %i.sh = load i64, ptr %i.fz, align 8, !tbaa !315
  %i.si = mul i64 %i.sh, %i.sg                    ; 2 uses
  %i.sj = ashr i64 %i.si, 63
  %i.sk = add i64 %i.si, 32768
  %i.sl = add i64 %i.sk, %i.sj
  %i.sm = ashr i64 %i.sl, 16
  store i64 %i.sm, ptr %i.sf, align 8, !tbaa !362
  br label %bb.by

bb.bw:                                            ; preds = %bb.bu
  %i.sn = and i32 %3, 16
  %.not352.i = icmp eq i32 %i.sn, 0
  br i1 %.not352.i, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.so = load i64, ptr %i.on, align 8, !tbaa !363
  call void @ft_synthesize_vertical_metrics(ptr noundef nonnull %i.mi, i64 noundef %i.so) #18
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw, %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  br label %cff_slot_load.exit

cff_slot_load.exit:                               ; preds = %bb.d, %cff_charset_cid_to_gindex.exit.i, %bb.e, %bb.o, %bb.p, %bb.s, %bb.t, %bb.v, %.thread391.i, %bb.bd, %bb.be, %bb.by
  %.4.i = phi i32 [ 6, %cff_charset_cid_to_gindex.exit.i ], [ 6, %bb.e ], [ 6, %bb.p ], [ 6, %bb.d ], [ 0, %bb.o ], [ 0, %bb.be ], [ 0, %bb.by ], [ %i.lu, %bb.bd ], [ %.1293.i, %.thread391.i ], [ 36, %bb.t ], [ 36, %bb.s ], [ 0, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  ret i32 %.4.i
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @cff_get_kerning(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) initializes((0, 16)) %3) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !186  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1372
  %i.d = load i32, ptr %i.c, align 4, !tbaa !374
  %.not10 = icmp eq i32 %i.d, 0
  br i1 %.not10, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !375
  %i.g = tail call i32 %i.f(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2) #18
  %i.h = sext i32 %i.g to i64
  store i64 %i.h, ptr %3, align 8, !tbaa !139
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 8) i32 @cff_get_advances(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef writeonly captures(none) %4) #4 {
bb.a:
  %i.a = alloca i16, align 2                      ; 4 uses
  %i.b = alloca i16, align 2                      ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !129  ; 3 uses
  %i.e = and i64 %i.d, 8
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = and i32 %3, 16                           ; 2 uses
  %.not23.not = icmp eq i32 %i.f, 0
  br i1 %.not23.not, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 438
  %i.h = load i16, ptr %i.g, align 2, !tbaa !359
  %.not28 = icmp eq i16 %i.h, 0
  br i1 %.not28, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !126
  %i.k = and i64 %i.j, 2147418112
  %i.l = and i64 %i.d, 32768
  %i.m = or disjoint i64 %i.k, %i.l
  %or.cond = icmp eq i64 %i.m, 0
  br i1 %or.cond, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1216
  %i.o = load i32, ptr %i.n, align 8, !tbaa !376
  %i.p = and i32 %i.o, 2
  %.not31 = icmp eq i32 %i.p, 0
  br i1 %.not31, label %.loopexit, label %bb.i

bb.f:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.r = load i8, ptr %i.q, align 8, !tbaa !292
  %.not24 = icmp eq i8 %i.r, 0
  br i1 %.not24, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !126
  %i.u = and i64 %i.t, 2147418112
  %i.v = and i64 %i.d, 32768
  %i.w = or disjoint i64 %i.u, %i.v
  %or.cond32 = icmp eq i64 %i.w, 0
  br i1 %or.cond32, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1216
  %i.y = load i32, ptr %i.x, align 8, !tbaa !376
  %i.z = and i32 %i.y, 16
  %.not27 = icmp eq i32 %i.z, 0
  br i1 %.not27, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.d, %bb.h, %bb.e
  %.not34 = icmp eq i32 %2, 0
  br i1 %.not34, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 880
  %.lobit = lshr exact i32 %i.f, 4
  %i.ab = trunc nuw nsw i32 %.lobit to i8
  %wide.trip.count = zext i32 %2 to i64
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %bb.j
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.j ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.ac = load ptr, ptr %i.aa, align 8, !tbaa !186
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 336
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !290
  %i.af = trunc i64 %indvars.iv to i32
  %i.ag = add i32 %1, %i.af
  call void %i.ae(ptr noundef nonnull %0, i8 noundef zeroext %i.ab, i32 noundef %i.ag, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #18
  %i.ah = load i16, ptr %i.a, align 2, !tbaa !61
  %i.ai = zext i16 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv
  store i64 %i.ai, ptr %i.aj, align 8, !tbaa !136
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.j, !llvm.loop !377

.loopexit:                                        ; preds = %bb.j, %bb.i, %bb.h, %bb.f, %bb.e, %bb.c, %bb.a
  %.022 = phi i32 [ 7, %bb.h ], [ 7, %bb.c ], [ 7, %bb.a ], [ 7, %bb.f ], [ 7, %bb.e ], [ 0, %bb.i ], [ 0, %bb.j ]
  ret i32 %.022
}

; Function Attrs: nounwind uwtable
define internal i32 @cff_size_request(ptr nofree noundef captures(none) %0, ptr noundef %1) #4 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !226    ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !129
  %i.e = and i64 %i.d, 2
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 880
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !186
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 224
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !378
  %i.j = call i32 %i.i(ptr noundef nonnull %i.b, ptr noundef %1, ptr noundef nonnull %i.a) #18
  %.not52.not = icmp eq i32 %i.j, 0
  br i1 %.not52.not, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  %i.k = load i64, ptr %i.a, align 8, !tbaa !136
  %i.l = call i32 @cff_size_select(ptr noundef nonnull %0, i64 noundef %i.k) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %cff_size_get_globals_funcs.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 4294967295, ptr %i.m, align 8, !tbaa !233
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %.pre = load ptr, ptr %0, align 8, !tbaa !226
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.n = phi ptr [ %.pre, %bb.c ], [ %i.b, %bb.a ]
  %i.o = call i32 @FT_Request_Metrics(ptr noundef %i.n, ptr noundef %1) #18 ; 2 uses
  %.not53 = icmp eq i32 %i.o, 0
  br i1 %.not53, label %bb.e, label %cff_size_get_globals_funcs.exit.thread

bb.e:                                             ; preds = %bb.d
  %.val = load ptr, ptr %0, align 8, !tbaa !217
  %i.p = getelementptr i8, ptr %.val, i64 1160
  %.val.val = load ptr, ptr %i.p, align 8, !tbaa !15 ; 2 uses
  %.val.val.val = load ptr, ptr %.val.val, align 8, !tbaa !222
  %i.q = getelementptr i8, ptr %.val.val, i64 4944
  %.val.val.val57 = load ptr, ptr %i.q, align 8, !tbaa !124 ; 2 uses
  %i.r = call ptr @FT_Get_Module(ptr noundef %.val.val.val, ptr noundef nonnull @.str.17) #18 ; 2 uses
  %i.s = icmp ne ptr %i.r, null
  %i.t = icmp ne ptr %.val.val.val57, null
  %or.cond.i = select i1 %i.s, i1 %i.t, i1 false
  br i1 %or.cond.i, label %bb.f, label %cff_size_get_globals_funcs.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.u = load ptr, ptr %.val.val.val57, align 8, !tbaa !223 ; 2 uses
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %cff_size_get_globals_funcs.exit.thread, label %cff_size_get_globals_funcs.exit

cff_size_get_globals_funcs.exit:                  ; preds = %bb.f
  %i.v = call ptr %i.u(ptr noundef nonnull %i.r) #18, !inline_history !225 ; 2 uses
  %.not54 = icmp eq ptr %i.v, null
  br i1 %.not54, label %cff_size_get_globals_funcs.exit.thread, label %bb.g

bb.g:                                             ; preds = %cff_size_get_globals_funcs.exit
  %i.w = load ptr, ptr %0, align 8, !tbaa !226
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 1160
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !15   ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !230
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !231 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 1736
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !312 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !379
  %i.ag = load ptr, ptr %i.ab, align 8, !tbaa !237
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !380
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !381
  call void %i.af(ptr noundef %i.ag, i64 noundef %i.ai, i64 noundef %i.ak, i64 noundef 0, i64 noundef 0) #18
  %i.al = getelementptr inbounds nuw i8, ptr %i.y, i64 2856
  %i.am = load i32, ptr %i.al, align 8, !tbaa !140 ; 2 uses
  %.not5559 = icmp eq i32 %i.am, 0
  br i1 %.not5559, label %cff_size_get_globals_funcs.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %i.y, i64 2864
  %i.ao = zext i32 %i.am to i64
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.k
  %indvars.iv = phi i64 [ %i.ao, %.lr.ph ], [ %i.ap, %bb.k ] ; 2 uses
  %i.ap = add nsw i64 %indvars.iv, -1             ; 3 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.ap
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !141
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 96
  %i.at = load i64, ptr %i.as, align 8, !tbaa !313 ; 3 uses
  %.not56 = icmp eq i64 %i.ad, %i.at
  %i.au = load i64, ptr %i.ah, align 8, !tbaa !380 ; 2 uses
  br i1 %.not56, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.av = call i64 @FT_MulDiv(i64 noundef %i.au, i64 noundef %i.ad, i64 noundef %i.at) #18
  %i.aw = load i64, ptr %i.aj, align 8, !tbaa !381
  %i.ax = call i64 @FT_MulDiv(i64 noundef %i.aw, i64 noundef %i.ad, i64 noundef %i.at) #18
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.ay = load i64, ptr %i.aj, align 8, !tbaa !381
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.045 = phi i64 [ %i.av, %bb.i ], [ %i.au, %bb.j ]
  %.0 = phi i64 [ %i.ax, %bb.i ], [ %i.ay, %bb.j ]
  %i.az = load ptr, ptr %i.ae, align 8, !tbaa !379
  %i.ba = getelementptr [8 x i8], ptr %i.ab, i64 %indvars.iv
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !234
  call void %i.az(ptr noundef %i.bb, i64 noundef %.045, i64 noundef %.0, i64 noundef 0, i64 noundef 0) #18
  %.not55.wide = icmp eq i64 %i.ap, 0
  br i1 %.not55.wide, label %cff_size_get_globals_funcs.exit.thread, label %bb.h, !llvm.loop !382

cff_size_get_globals_funcs.exit.thread:           ; preds = %bb.k, %bb.g, %bb.e, %bb.f, %.thread, %bb.d, %cff_size_get_globals_funcs.exit
  %.1 = phi i32 [ 0, %.thread ], [ 0, %bb.e ], [ 0, %cff_size_get_globals_funcs.exit ], [ %i.o, %bb.d ], [ 0, %bb.f ], [ 0, %bb.g ], [ 0, %bb.k ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @cff_size_select(ptr nofree noundef captures(none) initializes((88, 96)) %0, i64 noundef %1) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %1, ptr %i.a, align 8, !tbaa !233
  %i.b = load ptr, ptr %0, align 8, !tbaa !226
  tail call void @FT_Select_Metrics(ptr noundef %i.b, i64 noundef %1) #18
  %.val = load ptr, ptr %0, align 8, !tbaa !217
  %i.c = getelementptr i8, ptr %.val, i64 1160
  %.val.val = load ptr, ptr %i.c, align 8, !tbaa !15 ; 2 uses
  %.val.val.val = load ptr, ptr %.val.val, align 8, !tbaa !222
  %i.d = getelementptr i8, ptr %.val.val, i64 4944
  %.val.val.val42 = load ptr, ptr %i.d, align 8, !tbaa !124 ; 2 uses
  %i.e = tail call ptr @FT_Get_Module(ptr noundef %.val.val.val, ptr noundef nonnull @.str.17) #18 ; 2 uses
  %i.f = icmp ne ptr %i.e, null
  %i.g = icmp ne ptr %.val.val.val42, null
  %or.cond.i = select i1 %i.f, i1 %i.g, i1 false
  br i1 %or.cond.i, label %bb.b, label %cff_size_get_globals_funcs.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %.val.val.val42, align 8, !tbaa !223 ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %cff_size_get_globals_funcs.exit.thread, label %cff_size_get_globals_funcs.exit

cff_size_get_globals_funcs.exit:                  ; preds = %bb.b
  %i.i = tail call ptr %i.h(ptr noundef nonnull %i.e) #18, !inline_history !225 ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %cff_size_get_globals_funcs.exit.thread, label %bb.c

bb.c:                                             ; preds = %cff_size_get_globals_funcs.exit
  %i.j = load ptr, ptr %0, align 8, !tbaa !226
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1160
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !15   ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !230
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !231  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 1736
  %i.q = load i64, ptr %i.p, align 8, !tbaa !312  ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !379
  %i.t = load ptr, ptr %i.o, align 8, !tbaa !237
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !380
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !381
  tail call void %i.s(ptr noundef %i.t, i64 noundef %i.v, i64 noundef %i.x, i64 noundef 0, i64 noundef 0) #18
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 2856
  %i.z = load i32, ptr %i.y, align 8, !tbaa !140  ; 2 uses
  %.not4044 = icmp eq i32 %i.z, 0
  br i1 %.not4044, label %cff_size_get_globals_funcs.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.l, i64 2864
  %i.ab = zext i32 %i.z to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.g
end_hunk_0
begin_hunk_1_@cff_fd_select_get:bb.a
  %i.c = load i8, ptr %0, align 8, !tbaa !202
  switch i8 %i.c, label %.loopexit [
    i8 0, label %bb.c
    i8 3, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.d = zext i32 %1 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !167
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !308
  %i.i = sub i32 %1, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !309
  %i.l = icmp ult i32 %i.i, %i.k
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.n = load i8, ptr %i.m, align 4, !tbaa !310
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load i32, ptr %i.o, align 8, !tbaa !201
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.t = load i8, ptr %i.b, align 1, !tbaa !167
  %i.u = zext i8 %i.t to i32
  %i.v = shl nuw nsw i32 %i.u, 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.x = load i8, ptr %i.w, align 1, !tbaa !167
  %i.y = zext i8 %i.x to i32
  %i.z = or disjoint i32 %i.v, %i.y
  br label %bb.g

bb.g:                                             ; preds = %bb.j, %bb.f
  %.033 = phi ptr [ %i.s, %bb.f ], [ %i.an, %bb.j ] ; 4 uses
  %.0 = phi i32 [ %i.z, %bb.f ], [ %i.ai, %bb.j ] ; 3 uses
  %i.aa = icmp ult i32 %1, %.0
  br i1 %i.aa, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %.033, i64 1
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !167
  %i.ad = zext i8 %i.ac to i32
  %i.ae = shl nuw nsw i32 %i.ad, 8
  %i.af = getelementptr inbounds nuw i8, ptr %.033, i64 2
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !167
  %i.ah = zext i8 %i.ag to i32
  %i.ai = or disjoint i32 %i.ae, %i.ah            ; 3 uses
  %i.aj = icmp ult i32 %1, %i.ai
  br i1 %i.aj, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ak = load i8, ptr %.033, align 1, !tbaa !167 ; 2 uses
  store i32 %.0, ptr %i.g, align 4, !tbaa !308
  %i.al = sub nsw i32 %i.ai, %.0
  store i32 %i.al, ptr %i.j, align 8, !tbaa !309
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 %i.ak, ptr %i.am, align 4, !tbaa !310
  br label %.loopexit

bb.j:                                             ; preds = %bb.h
  %i.an = getelementptr inbounds nuw i8, ptr %.033, i64 3 ; 2 uses
  %i.ao = icmp ult ptr %i.an, %i.r
  br i1 %i.ao, label %bb.g, label %.loopexit, !llvm.loop !311

.loopexit:                                        ; preds = %bb.j, %bb.g, %bb.i, %bb.c, %bb.e, %bb.b, %bb.a
  %.1 = phi i8 [ 0, %bb.b ], [ %i.f, %bb.c ], [ %i.n, %bb.e ], [ 0, %bb.a ], [ %i.ak, %bb.i ], [ 0, %bb.g ], [ 0, %bb.j ]
  ret i8 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal zeroext range(i8 0, 2) i8 @cff_blend_check_vector(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3) #2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !467
  %.not = icmp eq i8 %i.a, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !468
  %.not10 = icmp eq i32 %i.c, %1
  br i1 %.not10, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !469
  %.not11 = icmp eq i32 %i.e, %2
  br i1 %.not11, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %.not12 = icmp eq i32 %2, 0
  br i1 %.not12, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !470
  %i.h = zext i32 %2 to i64
  %i.i = shl nuw nsw i64 %i.h, 3
  %bcmp = tail call i32 @bcmp(ptr %3, ptr %i.g, i64 %i.i)
  %.not13 = icmp eq i32 %bcmp, 0
  br i1 %.not13, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.b, %bb.c, %bb.e, %bb.f
  %.0 = phi i8 [ 0, %bb.f ], [ 1, %bb.e ], [ 1, %bb.c ], [ 1, %bb.b ], [ 1, %bb.a ]
  ret i8 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @cff_blend_build_vector(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3) #4 {
bb.a:
  %i.a = alloca i32, align 4                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i32 0, ptr %i.a, align 4, !tbaa !62
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !471  ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !188  ; 2 uses
  %i.f = icmp eq i32 %2, 0                        ; 4 uses
  %i.g = icmp ne ptr %3, null
  %or.cond = or i1 %i.f, %i.g
  br i1 %or.cond, label %bb.b, label %.split.us

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %0, align 8, !tbaa !467
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 5008
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 5024
  %i.j = load i16, ptr %i.i, align 8, !tbaa !472
  %i.k = zext i16 %i.j to i32
  %.not102 = icmp eq i32 %2, %i.k
  br i1 %.not102, label %bb.d, label %.split.us

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.l = load i32, ptr %i.h, align 8, !tbaa !473
  %.not103 = icmp ult i32 %1, %i.l
  br i1 %.not103, label %bb.e, label %.split.us

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 5016
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !474
  %i.o = zext i32 %1 to i64
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %i.o ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !475  ; 2 uses
  %i.r = add i32 %i.q, 1                          ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !477
  %i.u = zext i32 %i.t to i64
  %i.v = zext i32 %i.r to i64                     ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !478
  %i.y = call ptr @ft_mem_qrealloc(ptr noundef %i.e, i64 noundef 4, i64 noundef %i.u, i64 noundef %i.v, ptr noundef %i.x, ptr noundef nonnull %i.a) #18 ; 6 uses
  store ptr %i.y, ptr %i.w, align 8, !tbaa !478
  %i.z = load i32, ptr %i.a, align 4, !tbaa !62   ; 2 uses
  %.not104 = icmp eq i32 %i.z, 0
  br i1 %.not104, label %bb.f, label %.split.us

bb.f:                                             ; preds = %bb.e
  store i32 %i.r, ptr %i.s, align 8, !tbaa !477
  %.not = icmp eq i32 %i.r, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 5032
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 5028 ; 2 uses
  br i1 %i.f, label %bb.g, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %wide.trip.count = zext i32 %2 to i64
  br label %.lr.ph.split

bb.g:                                             ; preds = %.lr.ph
  store i32 65536, ptr %i.y, align 4, !tbaa !62
  %exitcond128.peel.not = icmp eq i32 %i.q, 0
  br i1 %exitcond128.peel.not, label %._crit_edge.thread, label %.lr.ph.split.us.peel.next

._crit_edge.thread:                               ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %1, ptr %i.ad, align 8, !tbaa !468
  br label %bb.w

.lr.ph.split.us.peel.next:                        ; preds = %bb.g
  %i.ae = load ptr, ptr %i.aa, align 8, !tbaa !479
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %.lr.ph.split.us.peel.next
  %indvars.iv124 = phi i64 [ 1, %.lr.ph.split.us.peel.next ], [ %indvars.iv.next125, %bb.i ] ; 3 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv124
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 17179869180
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !62
  %i.ai = load i32, ptr %i.ac, align 4, !tbaa !480
  %.not106.us = icmp ult i32 %i.ah, %i.ai
  br i1 %.not106.us, label %bb.i, label %.split.us

bb.i:                                             ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv124
  store i32 0, ptr %i.aj, align 4, !tbaa !62
  %indvars.iv.next125 = add nuw nsw i64 %indvars.iv124, 1 ; 2 uses
  %exitcond128.not = icmp eq i64 %indvars.iv.next125, %i.v
  br i1 %exitcond128.not, label %._crit_edge, label %bb.h, !llvm.loop !481

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %.loopexit
  %i.ak = phi ptr [ %i.y, %.lr.ph.split.preheader ], [ %i.cc, %.loopexit ] ; 5 uses
  %i.al = phi ptr [ %i.y, %.lr.ph.split.preheader ], [ %i.cd, %.loopexit ]
  %i.am = phi ptr [ %i.y, %.lr.ph.split.preheader ], [ %i.ce, %.loopexit ] ; 2 uses
  %indvars.iv119 = phi i64 [ 0, %.lr.ph.split.preheader ], [ %indvars.iv.next120, %.loopexit ] ; 7 uses
  %i.an = icmp eq i64 %indvars.iv119, 0
  br i1 %i.an, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph.split
  store i32 65536, ptr %i.ak, align 4, !tbaa !62
  br label %.loopexit

bb.k:                                             ; preds = %.lr.ph.split
  %i.ao = load ptr, ptr %i.aa, align 8, !tbaa !479
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv119
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 17179869180
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !62 ; 2 uses
  %i.as = load ptr, ptr %i.ab, align 8, !tbaa !483
  %i.at = zext i32 %i.ar to i64
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.at
  %i.av = load i32, ptr %i.ac, align 4, !tbaa !480
  %.not106 = icmp ult i32 %i.ar, %i.av
  br i1 %.not106, label %bb.l, label %.split.us

bb.l:                                             ; preds = %bb.k
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv119
  store i32 65536, ptr %i.aw, align 4, !tbaa !62
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.t
  %i.ax = phi ptr [ %i.ak, %bb.l ], [ %i.bz, %bb.t ] ; 2 uses
  %i.ay = phi ptr [ %i.al, %bb.l ], [ %i.ca, %bb.t ] ; 5 uses
  %i.az = phi ptr [ %i.am, %bb.l ], [ %i.cb, %bb.t ]
  %indvars.iv = phi i64 [ 0, %bb.l ], [ %indvars.iv.next, %bb.t ] ; 3 uses
  %i.ba = load ptr, ptr %i.au, align 8, !tbaa !484
  %i.bb = getelementptr inbounds nuw [24 x i8], ptr %i.ba, i64 %indvars.iv ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !487 ; 5 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !136 ; 6 uses
  %i.bg = icmp eq i64 %i.bd, %i.bf
  %i.bh = icmp eq i64 %i.bd, 0
  %or.cond109 = or i1 %i.bh, %i.bg
  br i1 %or.cond109, label %bb.t, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bi = load i64, ptr %i.bb, align 8, !tbaa !489 ; 3 uses
  %.not107 = icmp sgt i64 %i.bf, %i.bi
  br i1 %.not107, label %bb.o, label %bb.s

bb.o:                                             ; preds = %bb.n
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !490 ; 3 uses
  %.not108 = icmp slt i64 %i.bf, %i.bk
  br i1 %.not108, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.bl = icmp slt i64 %i.bf, %i.bd
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv119
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !62
  %i.bo = sext i32 %i.bn to i64                   ; 2 uses
  br i1 %i.bl, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bp = sub nsw i64 %i.bf, %i.bi
  %i.bq = sub nsw i64 %i.bd, %i.bi
  %i.br = call i64 @FT_MulDiv(i64 noundef %i.bo, i64 noundef %i.bp, i64 noundef %i.bq) #18
  br label %.sink.split

bb.r:                                             ; preds = %bb.p
  %i.bs = sub nsw i64 %i.bk, %i.bf
  %i.bt = sub nsw i64 %i.bk, %i.bd
  %i.bu = call i64 @FT_MulDiv(i64 noundef %i.bo, i64 noundef %i.bs, i64 noundef %i.bt) #18
  br label %.sink.split

bb.s:                                             ; preds = %bb.n, %bb.o
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv119
  store i32 0, ptr %i.bv, align 4, !tbaa !62
  br label %.loopexit

.sink.split:                                      ; preds = %bb.q, %bb.r
  %.sink150 = phi i64 [ %i.bu, %bb.r ], [ %i.br, %bb.q ]
  %i.bw = trunc i64 %.sink150 to i32
  %i.bx = load ptr, ptr %i.w, align 8, !tbaa !478 ; 4 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %indvars.iv119
  store i32 %i.bw, ptr %i.by, align 4, !tbaa !62
  br label %bb.t

bb.t:                                             ; preds = %.sink.split, %bb.m
  %i.bz = phi ptr [ %i.ax, %bb.m ], [ %i.bx, %.sink.split ] ; 2 uses
  %i.ca = phi ptr [ %i.ay, %bb.m ], [ %i.bx, %.sink.split ] ; 2 uses
  %i.cb = phi ptr [ %i.az, %bb.m ], [ %i.bx, %.sink.split ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.m, !llvm.loop !491

.loopexit:                                        ; preds = %bb.t, %bb.j, %bb.s
  %i.cc = phi ptr [ %i.ax, %bb.s ], [ %i.ak, %bb.j ], [ %i.bz, %bb.t ]
  %i.cd = phi ptr [ %i.ay, %bb.s ], [ %i.ak, %bb.j ], [ %i.ca, %bb.t ]
  %i.ce = phi ptr [ %i.ay, %bb.s ], [ %i.ak, %bb.j ], [ %i.cb, %bb.t ]
  %indvars.iv.next120 = add nuw nsw i64 %indvars.iv119, 1 ; 2 uses
  %exitcond123.not = icmp eq i64 %indvars.iv.next120, %i.v
  br i1 %exitcond123.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !492

._crit_edge:                                      ; preds = %.loopexit, %bb.i, %bb.f
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %1, ptr %i.cf, align 8, !tbaa !468
  br i1 %i.f, label %bb.w, label %bb.u

bb.u:                                             ; preds = %._crit_edge
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !469
  %i.ci = zext i32 %i.ch to i64
  %i.cj = zext i32 %2 to i64                      ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !470
  %i.cm = call ptr @ft_mem_qrealloc(ptr noundef %i.e, i64 noundef 8, i64 noundef %i.ci, i64 noundef %i.cj, ptr noundef %i.cl, ptr noundef nonnull %i.a) #18 ; 2 uses
  store ptr %i.cm, ptr %i.ck, align 8, !tbaa !470
  %i.cn = load i32, ptr %i.a, align 4, !tbaa !62  ; 2 uses
  %.not105 = icmp eq i32 %i.cn, 0
  br i1 %.not105, label %bb.v, label %.split.us

bb.v:                                             ; preds = %bb.u
  %i.co = shl nuw nsw i64 %i.cj, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.cm, ptr align 8 %3, i64 %i.co, i1 false)
  br label %bb.w

bb.w:                                             ; preds = %._crit_edge.thread, %bb.v, %._crit_edge
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %2, ptr %i.cp, align 4, !tbaa !469
  store i8 1, ptr %0, align 8, !tbaa !467
  %.pre = load i32, ptr %i.a, align 4, !tbaa !62
  br label %.split.us

.split.us:                                        ; preds = %bb.k, %bb.h, %bb.d, %bb.c, %bb.a, %bb.u, %bb.e, %bb.w
  %i.cq = phi i32 [ 3, %bb.d ], [ %i.cn, %bb.u ], [ %i.z, %bb.e ], [ %.pre, %bb.w ], [ 3, %bb.c ], [ 3, %bb.a ], [ 3, %bb.h ], [ 3, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret i32 %i.cq
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

declare hidden i32 @FT_Stream_Seek(ptr noundef, i64 noundef) local_unnamed_addr #9

declare hidden i32 @FT_Stream_EnterFrame(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define internal fastcc i32 @cff_parser_run(ptr noundef nonnull initializes((8, 32), (40, 48)) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !456
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  store ptr %i.b, ptr %i.c, align 8, !tbaa !458
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.d, align 8, !tbaa !493
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %i.e, align 8, !tbaa !494
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %1, ptr %i.f, align 8, !tbaa !495
  %i.g = icmp ult ptr %1, %2
  br i1 %i.g, label %.lr.ph232, label %.thread199

.lr.ph232:                                        ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph232, %.thread194
  %.0149231 = phi ptr [ %1, %.lr.ph232 ], [ %i.di, %.thread194 ] ; 9 uses
  %i.k = load i8, ptr %.0149231, align 1, !tbaa !167 ; 6 uses
  %i.l = zext i8 %i.k to i32
  %i.m = icmp ne i8 %i.k, 31
  %i.n = add i8 %i.k, -27
  %i.o = icmp ult i8 %i.n, -28
  %or.cond4 = and i1 %i.m, %i.o
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !458  ; 4 uses
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !456  ; 6 uses
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = lshr exact i64 %i.t, 3
  %i.v = trunc i64 %i.u to i32                    ; 4 uses
  %i.w = load i32, ptr %i.h, align 8, !tbaa !457
  %.not174 = icmp ugt i32 %i.w, %i.v              ; 2 uses
  br i1 %or.cond4, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  br i1 %.not174, label %bb.d, label %.thread199

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.x, ptr %i.c, align 8, !tbaa !458
  store ptr %.0149231, ptr %i.p, align 8, !tbaa !162
  switch i8 %i.k, label %bb.g [
    i8 30, label %.preheader.preheader
    i8 28, label %bb.e
    i8 29, label %bb.f
  ]

.preheader.preheader:                             ; preds = %bb.d
  %.1150271 = getelementptr inbounds nuw i8, ptr %.0149231, i64 1 ; 2 uses
  %.not175272 = icmp ult ptr %.1150271, %2
  br i1 %.not175272, label %.lr.ph274, label %.thread199

.preheader:                                       ; preds = %.lr.ph274
  %.1150 = getelementptr inbounds nuw i8, ptr %.1150273, i64 1 ; 2 uses
  %.not175 = icmp ult ptr %.1150, %2
  br i1 %.not175, label %.lr.ph274, label %.thread199

.lr.ph274:                                        ; preds = %.preheader.preheader, %.preheader
  %.1150273 = phi ptr [ %.1150, %.preheader ], [ %.1150271, %.preheader.preheader ] ; 3 uses
  %i.y = load i8, ptr %.1150273, align 1, !tbaa !167
  %i.z = zext i8 %i.y to i32                      ; 2 uses
  %.mask = and i32 %i.z, 240
end_hunk_1
begin_hunk_2_@cff_parse_blend:bb.a
  %.val = load ptr, ptr %i.y, align 8, !tbaa !162
  %i.z = tail call fastcc i64 @cff_parse_num(ptr noundef nonnull %0, ptr %.val) ; 2 uses
  %i.aa = trunc i64 %i.z to i32                   ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !457
  %i.ad = icmp ult i32 %i.ac, %i.aa
  br i1 %i.ad, label %bb.ac, label %bb.i

bb.i:                                             ; preds = %cff_blend_check_vector.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 1056
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !434
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !188
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i32 0, ptr %i.a, align 4, !tbaa !62
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 1080 ; 3 uses
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !477
  %i.ak = mul i32 %i.aj, %i.aa                    ; 2 uses
  %i.al = load ptr, ptr %i.w, align 8, !tbaa !458
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 -8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !456
  %i.ap = ptrtoint ptr %i.am to i64
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = lshr exact i64 %i.ar, 3
  %i.at = trunc i64 %i.as to i32                  ; 2 uses
  %i.au = icmp ugt i32 %i.ak, %i.at
  br i1 %i.au, label %cff_blend_doBlend.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.av = mul i32 %i.aa, 5                        ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.e, i64 1128 ; 3 uses
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !466 ; 2 uses
  %i.ay = add i32 %i.ax, %i.av
  %i.az = getelementptr inbounds nuw i8, ptr %i.e, i64 1132 ; 3 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !516 ; 3 uses
  %i.bb = icmp ugt i32 %i.ay, %i.ba
  br i1 %i.bb, label %bb.k, label %.thread.i

bb.k:                                             ; preds = %bb.j
  %i.bc = getelementptr inbounds nuw i8, ptr %i.e, i64 1112 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !464 ; 6 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.e, i64 1120 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !465 ; 2 uses
  %i.bg = zext i32 %i.ba to i64
  %i.bh = add i32 %i.ba, %i.av
  %i.bi = zext i32 %i.bh to i64
  %i.bj = call ptr @ft_mem_qrealloc(ptr noundef %i.ah, i64 noundef 1, i64 noundef %i.bg, i64 noundef %i.bi, ptr noundef %i.bd, ptr noundef nonnull %i.a) #18 ; 4 uses
  store ptr %i.bj, ptr %i.bc, align 8, !tbaa !464
  %i.bk = load i32, ptr %i.a, align 4, !tbaa !62  ; 2 uses
  %.not.i29 = icmp eq i32 %i.bk, 0
  br i1 %.not.i29, label %bb.l, label %cff_blend_doBlend.exit

bb.l:                                             ; preds = %bb.k
  %i.bl = load i32, ptr %i.aw, align 8, !tbaa !466 ; 5 uses
  %i.bm = zext i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bm
  store ptr %i.bn, ptr %i.be, align 8, !tbaa !465
  %i.bo = load i32, ptr %i.az, align 4, !tbaa !516
  %i.bp = add i32 %i.bo, %i.av
  store i32 %i.bp, ptr %i.az, align 4, !tbaa !516
  %.not93.i = icmp eq ptr %i.bd, null
  %.not94.i = icmp eq ptr %i.bj, %i.bd
  %or.cond102.i = select i1 %.not93.i, i1 true, i1 %.not94.i
  br i1 %or.cond102.i, label %.thread.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bq = ptrtoint ptr %i.bj to i64
  %i.br = ptrtoint ptr %i.bd to i64
  %i.bs = sub i64 %i.bq, %i.br                    ; 5 uses
  %i.bt = load ptr, ptr %i.an, align 8, !tbaa !456 ; 8 uses
  %i.bu = load ptr, ptr %i.w, align 8, !tbaa !458 ; 3 uses
  %i.bv = icmp ult ptr %i.bt, %i.bu
  br i1 %i.bv, label %.lr.ph.i.preheader, label %.thread.i

.lr.ph.i.preheader:                               ; preds = %bb.m
  %i.bw = ptrtoaddr ptr %i.bu to i64
  %i.bx = ptrtoaddr ptr %i.bt to i64              ; 2 uses
  %i.by = add i64 %i.bx, 8
  %i.bz = call i64 @llvm.umax.i64(i64 %i.bw, i64 %i.by)
  %i.ca = xor i64 %i.bx, -1
  %i.cb = add i64 %i.bz, %i.ca                    ; 2 uses
  %i.cc = lshr i64 %i.cb, 3
  %i.cd = add nuw nsw i64 %i.cc, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cb, 24
  br i1 %min.iters.check, label %.lr.ph.i.preheader68, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.cd, 4611686018427387900     ; 3 uses
  %i.ce = shl i64 %n.vec, 3
  %i.cf = getelementptr i8, ptr %i.bt, i64 %i.ce
  %broadcast.splatinsert = insertelement <2 x ptr> poison, ptr %i.bd, i64 0
  %broadcast.splat = shufflevector <2 x ptr> %broadcast.splatinsert, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert55 = insertelement <2 x ptr> poison, ptr %i.bf, i64 0
  %broadcast.splat56 = shufflevector <2 x ptr> %broadcast.splatinsert55, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue66, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue66 ] ; 2 uses
  %i.cg = shl i64 %index, 3                       ; 4 uses
  %next.gep = getelementptr i8, ptr %i.bt, i64 %i.cg ; 3 uses
  %i.ch = getelementptr i8, ptr %i.bt, i64 %i.cg
  %next.gep57 = getelementptr i8, ptr %i.ch, i64 8
  %i.ci = getelementptr i8, ptr %i.bt, i64 %i.cg
  %next.gep58 = getelementptr i8, ptr %i.ci, i64 16
  %i.cj = getelementptr i8, ptr %i.bt, i64 %i.cg
  %next.gep59 = getelementptr i8, ptr %i.cj, i64 24
  %i.ck = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x ptr>, ptr %next.gep, align 8, !tbaa !162 ; 4 uses
  %wide.load60 = load <2 x ptr>, ptr %i.ck, align 8, !tbaa !162 ; 4 uses
  %i.cl = icmp uge <2 x ptr> %wide.load, %broadcast.splat
  %i.cm = icmp uge <2 x ptr> %wide.load60, %broadcast.splat
  %i.cn = icmp ult <2 x ptr> %wide.load, %broadcast.splat56
  %i.co = icmp ult <2 x ptr> %wide.load60, %broadcast.splat56
  %i.cp = select <2 x i1> %i.cl, <2 x i1> %i.cn, <2 x i1> zeroinitializer ; 2 uses
  %i.cq = select <2 x i1> %i.cm, <2 x i1> %i.co, <2 x i1> zeroinitializer ; 2 uses
  %i.cr = extractelement <2 x i1> %i.cp, i64 0
  br i1 %i.cr, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %i.cs = extractelement <2 x ptr> %wide.load, i64 0
  %i.ct = getelementptr inbounds i8, ptr %i.cs, i64 %i.bs
  store ptr %i.ct, ptr %next.gep, align 8, !tbaa !162
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.cu = extractelement <2 x i1> %i.cp, i64 1
  br i1 %i.cu, label %pred.store.if61, label %pred.store.continue62

pred.store.if61:                                  ; preds = %pred.store.continue
  %i.cv = extractelement <2 x ptr> %wide.load, i64 1
  %i.cw = getelementptr inbounds i8, ptr %i.cv, i64 %i.bs
  store ptr %i.cw, ptr %next.gep57, align 8, !tbaa !162
  br label %pred.store.continue62

pred.store.continue62:                            ; preds = %pred.store.if61, %pred.store.continue
  %i.cx = extractelement <2 x i1> %i.cq, i64 0
  br i1 %i.cx, label %pred.store.if63, label %pred.store.continue64

pred.store.if63:                                  ; preds = %pred.store.continue62
  %i.cy = extractelement <2 x ptr> %wide.load60, i64 0
  %i.cz = getelementptr inbounds i8, ptr %i.cy, i64 %i.bs
  store ptr %i.cz, ptr %next.gep58, align 8, !tbaa !162
  br label %pred.store.continue64

pred.store.continue64:                            ; preds = %pred.store.if63, %pred.store.continue62
  %i.da = extractelement <2 x i1> %i.cq, i64 1
  br i1 %i.da, label %pred.store.if65, label %pred.store.continue66

pred.store.if65:                                  ; preds = %pred.store.continue64
  %i.db = extractelement <2 x ptr> %wide.load60, i64 1
  %i.dc = getelementptr inbounds i8, ptr %i.db, i64 %i.bs
  store ptr %i.dc, ptr %next.gep59, align 8, !tbaa !162
  br label %pred.store.continue66

pred.store.continue66:                            ; preds = %pred.store.if65, %pred.store.continue64
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dd = icmp eq i64 %index.next, %n.vec
  br i1 %i.dd, label %middle.block, label %vector.body, !llvm.loop !517

middle.block:                                     ; preds = %pred.store.continue66
  %cmp.n = icmp eq i64 %i.cd, %n.vec
  br i1 %cmp.n, label %.thread.i, label %.lr.ph.i.preheader68

.lr.ph.i.preheader68:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.082103.i.ph = phi ptr [ %i.bt, %.lr.ph.i.preheader ], [ %i.cf, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader68, %bb.o
  %.082103.i = phi ptr [ %i.dh, %bb.o ], [ %.082103.i.ph, %.lr.ph.i.preheader68 ] ; 3 uses
  %i.de = load ptr, ptr %.082103.i, align 8, !tbaa !162 ; 3 uses
  %.not95.i = icmp uge ptr %i.de, %i.bd
  %i.df = icmp ult ptr %i.de, %i.bf
  %or.cond.i = select i1 %.not95.i, i1 %i.df, i1 false
  br i1 %or.cond.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph.i
  %i.dg = getelementptr inbounds i8, ptr %i.de, i64 %i.bs
  store ptr %i.dg, ptr %.082103.i, align 8, !tbaa !162
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph.i
  %i.dh = getelementptr inbounds nuw i8, ptr %.082103.i, i64 8 ; 2 uses
  %i.di = icmp ult ptr %i.dh, %i.bu
  br i1 %i.di, label %.lr.ph.i, label %.thread.i, !llvm.loop !518

.thread.i:                                        ; preds = %bb.o, %middle.block, %bb.m, %bb.l, %bb.j
  %i.dj = phi i32 [ %i.ax, %bb.j ], [ %i.bl, %bb.m ], [ %i.bl, %bb.l ], [ %i.bl, %middle.block ], [ %i.bl, %bb.o ]
  %i.dk = add i32 %i.dj, %i.av
  store i32 %i.dk, ptr %i.aw, align 8, !tbaa !466
  %i.dl = sub i32 %i.at, %i.ak                    ; 2 uses
  %i.dm = add i32 %i.dl, %i.aa                    ; 2 uses
  %.not114.i = icmp eq i32 %i.aa, 0
  br i1 %.not114.i, label %._crit_edge113.i, label %.lr.ph112.i

.lr.ph112.i:                                      ; preds = %.thread.i
  %i.dn = getelementptr inbounds nuw i8, ptr %i.e, i64 1088
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.e, i64 1120 ; 10 uses
  %1 = zext i32 %i.dl to i64
  %wide.trip.count.i = and i64 %i.z, 4294967295
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge.i, %.lr.ph112.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph112.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 2 uses
  %.085110.i = phi i32 [ %i.dm, %.lr.ph112.i ], [ %.1.lcssa.i, %._crit_edge.i ] ; 2 uses
  %i.dq = load ptr, ptr %i.dn, align 8, !tbaa !478
  %i.dr = load ptr, ptr %i.an, align 8, !tbaa !456
  %2 = add nuw nsw i64 %indvars.iv.i, %1          ; 2 uses
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %2
  %.val96.i = load ptr, ptr %i.ds, align 8, !tbaa !162
  %i.dt = call fastcc i64 @do_fixed(ptr noundef nonnull readonly %0, ptr readonly %.val96.i, i64 noundef 0) ; 2 uses
  %i.du = load i32, ptr %i.ai, align 8, !tbaa !477 ; 2 uses
  %i.dv = icmp ugt i32 %i.du, 1
  br i1 %i.dv, label %.lr.ph108.i, label %._crit_edge.i

.lr.ph108.i:                                      ; preds = %bb.p, %do_fixed.exit.i
  %i.dw = phi i32 [ %i.gk, %do_fixed.exit.i ], [ %i.du, %bb.p ] ; 4 uses
  %.0107.i = phi i64 [ %i.gs, %do_fixed.exit.i ], [ %i.dt, %bb.p ]
  %.pn106.i = phi ptr [ %.080.i, %do_fixed.exit.i ], [ %i.dq, %bb.p ]
  %.083105.i = phi i32 [ %i.gt, %do_fixed.exit.i ], [ 1, %bb.p ]
  %.1104.i = phi i32 [ %i.dy, %do_fixed.exit.i ], [ %.085110.i, %bb.p ] ; 2 uses
  %.080.i = getelementptr inbounds nuw i8, ptr %.pn106.i, i64 4 ; 2 uses
  %i.dx = load ptr, ptr %i.an, align 8, !tbaa !456
  %i.dy = add i32 %.1104.i, 1                     ; 2 uses
  %i.dz = zext i32 %.1104.i to i64
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %i.dz
  %.val.i = load ptr, ptr %i.ea, align 8, !tbaa !162 ; 11 uses
  %i.eb = load i8, ptr %.val.i, align 1, !tbaa !167 ; 5 uses
  switch i8 %i.eb, label %bb.s [
    i8 30, label %bb.q
    i8 -1, label %bb.r
  ]

bb.q:                                             ; preds = %.lr.ph108.i
  %i.ec = load ptr, ptr %i.do, align 8, !tbaa !494
  %i.ed = call fastcc i64 @cff_parse_real(ptr noundef nonnull readonly %.val.i, ptr noundef %i.ec, i64 noundef 0, ptr noundef null)
  %.pre.i = load i32, ptr %i.ai, align 8, !tbaa !477
  br label %do_fixed.exit.i

bb.r:                                             ; preds = %.lr.ph108.i
  %i.ee = getelementptr inbounds nuw i8, ptr %.val.i, i64 1
  %i.ef = load i32, ptr %i.ee, align 1
  %i.eg = call i32 @llvm.bswap.i32(i32 %i.ef)
  %i.eh = sext i32 %i.eg to i64
  br label %do_fixed.exit.i

bb.s:                                             ; preds = %.lr.ph108.i
  %i.ei = load ptr, ptr %i.do, align 8, !tbaa !494 ; 6 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.val.i, i64 1 ; 7 uses
  %i.ek = zext i8 %i.eb to i32                    ; 3 uses
  switch i8 %i.eb, label %bb.v [
    i8 28, label %bb.t
    i8 29, label %bb.u
  ]

bb.t:                                             ; preds = %bb.s
  %i.el = getelementptr inbounds nuw i8, ptr %.val.i, i64 3
  %i.em = icmp ule ptr %i.el, %i.ei
  %.not37.i.i.i = icmp ult ptr %i.ei, %i.ej
  %or.cond.i.i.i = select i1 %i.em, i1 true, i1 %.not37.i.i.i
  br i1 %or.cond.i.i.i, label %cff_parse_integer.exit.i.thread.i, label %cff_parse_integer.exit.i.thread.thread.i

bb.u:                                             ; preds = %bb.s
  %i.en = getelementptr inbounds nuw i8, ptr %.val.i, i64 5
  %i.eo = icmp ule ptr %i.en, %i.ei
  %.not36.i.i.i = icmp ult ptr %i.ei, %i.ej
  %or.cond38.i.i.i = select i1 %i.eo, i1 true, i1 %.not36.i.i.i
  br i1 %or.cond38.i.i.i, label %cff_parse_integer.exit.i.i, label %cff_parse_integer.exit.i.thread.thread.i

bb.v:                                             ; preds = %bb.s
  %i.ep = icmp ult i8 %i.eb, -9
  br i1 %i.ep, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.eq = add nsw i32 %i.ek, -139
  %i.er = sext i32 %i.eq to i64
  br label %cff_parse_integer.exit.i.thread.thread.i

bb.x:                                             ; preds = %bb.v
  %i.es = icmp samesign ult i8 %i.eb, -5
  %i.et = getelementptr inbounds nuw i8, ptr %.val.i, i64 2
  %i.eu = icmp ule ptr %i.et, %i.ei
  %.not35.i.i.i = icmp ult ptr %i.ei, %i.ej
  %or.cond39.i.i.i = select i1 %i.eu, i1 true, i1 %.not35.i.i.i ; 2 uses
  br i1 %i.es, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  br i1 %or.cond39.i.i.i, label %bb.z, label %cff_parse_integer.exit.i.thread.thread.i

bb.z:                                             ; preds = %bb.y
  %i.ev = shl nuw nsw i32 %i.ek, 8
  %i.ew = load i8, ptr %i.ej, align 1, !tbaa !167
  %i.ex = zext i8 %i.ew to i32
  %i.ey = add nsw i32 %i.ev, -63124
  %i.ez = add nuw nsw i32 %i.ey, %i.ex
  %i.fa = zext nneg i32 %i.ez to i64
  br label %cff_parse_integer.exit.i.thread.thread.i

bb.aa:                                            ; preds = %bb.x
  br i1 %or.cond39.i.i.i, label %bb.ab, label %cff_parse_integer.exit.i.thread.thread.i

bb.ab:                                            ; preds = %bb.aa
  %i.fb = shl nuw nsw i32 %i.ek, 8
  %i.fc = load i8, ptr %i.ej, align 1, !tbaa !167
  %i.fd = zext i8 %i.fc to i32
  %i.fe = or disjoint i32 %i.fb, %i.fd
  %i.ff = sub nsw i32 64148, %i.fe
  %i.fg = sext i32 %i.ff to i64
  br label %cff_parse_integer.exit.i.thread.thread.i

cff_parse_integer.exit.i.i:                       ; preds = %bb.u
  %i.fh = load i8, ptr %i.ej, align 1, !tbaa !167
  %i.fi = zext i8 %i.fh to i64
  %i.fj = shl nuw nsw i64 %i.fi, 24
  %i.fk = getelementptr inbounds nuw i8, ptr %.val.i, i64 2
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !167
  %i.fm = zext i8 %i.fl to i64
  %i.fn = shl nuw nsw i64 %i.fm, 16
  %i.fo = or disjoint i64 %i.fn, %i.fj
  %i.fp = getelementptr inbounds nuw i8, ptr %.val.i, i64 3
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !167
  %i.fr = zext i8 %i.fq to i64
  %i.fs = shl nuw nsw i64 %i.fr, 8
  %i.ft = or disjoint i64 %i.fo, %i.fs            ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.val.i, i64 4
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !167
  %i.fw = zext i8 %i.fv to i64
  %i.fx = or disjoint i64 %i.ft, %i.fw
  %i.fy = icmp samesign ugt i64 %i.ft, 32767
  br i1 %i.fy, label %do_fixed.exit.i, label %cff_parse_integer.exit.i.thread.thread.i

cff_parse_integer.exit.i.thread.thread.i:         ; preds = %cff_parse_integer.exit.i.i, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.w, %bb.u, %bb.t
  %.0.i.i99.ph.i = phi i64 [ %i.fg, %bb.ab ], [ %i.er, %bb.w ], [ %i.fa, %bb.z ], [ 0, %bb.aa ], [ 0, %bb.y ], [ 0, %bb.u ], [ 0, %bb.t ], [ %i.fx, %cff_parse_integer.exit.i.i ]
  %i.fz = shl nsw i64 %.0.i.i99.ph.i, 16
  br label %do_fixed.exit.i

cff_parse_integer.exit.i.thread.i:                ; preds = %bb.t
  %i.ga = load i8, ptr %i.ej, align 1, !tbaa !167
  %i.gb = zext i8 %i.ga to i16
  %i.gc = shl nuw i16 %i.gb, 8
  %i.gd = getelementptr inbounds nuw i8, ptr %.val.i, i64 2
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !167
  %i.gf = zext i8 %i.ge to i16
  %i.gg = or disjoint i16 %i.gc, %i.gf
  %.fr.i = freeze i16 %i.gg                       ; 2 uses
  %i.gh = sext i16 %.fr.i to i64
  %i.gi = icmp eq i16 %.fr.i, -32768
  %i.gj = shl nsw i64 %i.gh, 16
  %spec.select.i = select i1 %i.gi, i64 -2147483647, i64 %i.gj
  br label %do_fixed.exit.i

do_fixed.exit.i:                                  ; preds = %cff_parse_integer.exit.i.thread.i, %cff_parse_integer.exit.i.thread.thread.i, %cff_parse_integer.exit.i.i, %bb.r, %bb.q
  %i.gk = phi i32 [ %.pre.i, %bb.q ], [ %i.dw, %bb.r ], [ %i.dw, %cff_parse_integer.exit.i.i ], [ %i.dw, %cff_parse_integer.exit.i.thread.thread.i ], [ %i.dw, %cff_parse_integer.exit.i.thread.i ] ; 2 uses
  %.2.i.i = phi i64 [ %i.ed, %bb.q ], [ %i.eh, %bb.r ], [ 2147483647, %cff_parse_integer.exit.i.i ], [ %i.fz, %cff_parse_integer.exit.i.thread.thread.i ], [ %spec.select.i, %cff_parse_integer.exit.i.thread.i ]
  %i.gl = load i32, ptr %.080.i, align 4, !tbaa !62
  %i.gm = sext i32 %i.gl to i64
  %i.gn = mul i64 %.2.i.i, %i.gm                  ; 2 uses
  %i.go = ashr i64 %i.gn, 63
  %i.gp = add i64 %i.gn, 32768
  %i.gq = add i64 %i.gp, %i.go
  %i.gr = ashr i64 %i.gq, 16
  %i.gs = add nsw i64 %i.gr, %.0107.i             ; 2 uses
  %i.gt = add nuw i32 %.083105.i, 1               ; 2 uses
  %i.gu = icmp ult i32 %i.gt, %i.gk
  br i1 %i.gu, label %.lr.ph108.i, label %._crit_edge.i, !llvm.loop !519

._crit_edge.i:                                    ; preds = %do_fixed.exit.i, %bb.p
  %.1.lcssa.i = phi i32 [ %.085110.i, %bb.p ], [ %i.dy, %do_fixed.exit.i ]
  %.0.lcssa.i = phi i64 [ %i.dt, %bb.p ], [ %i.gs, %do_fixed.exit.i ] ; 4 uses
  %i.gv = load ptr, ptr %i.dp, align 8, !tbaa !465 ; 3 uses
  %i.gw = load ptr, ptr %i.an, align 8, !tbaa !456
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.gw, i64 %2
  store ptr %i.gv, ptr %i.gx, align 8, !tbaa !162
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gv, i64 1
  store ptr %i.gy, ptr %i.dp, align 8, !tbaa !465
  store i8 -1, ptr %i.gv, align 1, !tbaa !167
  %i.gz = lshr i64 %.0.lcssa.i, 24
  %i.ha = trunc i64 %i.gz to i8
  %i.hb = load ptr, ptr %i.dp, align 8, !tbaa !465 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 1
  store ptr %i.hc, ptr %i.dp, align 8, !tbaa !465
  store i8 %i.ha, ptr %i.hb, align 1, !tbaa !167
  %i.hd = lshr i64 %.0.lcssa.i, 16
  %i.he = trunc i64 %i.hd to i8
  %i.hf = load ptr, ptr %i.dp, align 8, !tbaa !465 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 1
  store ptr %i.hg, ptr %i.dp, align 8, !tbaa !465
  store i8 %i.he, ptr %i.hf, align 1, !tbaa !167
  %i.hh = lshr i64 %.0.lcssa.i, 8
  %i.hi = trunc i64 %i.hh to i8
  %i.hj = load ptr, ptr %i.dp, align 8, !tbaa !465 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 1
  store ptr %i.hk, ptr %i.dp, align 8, !tbaa !465
  store i8 %i.hi, ptr %i.hj, align 1, !tbaa !167
  %i.hl = trunc i64 %.0.lcssa.i to i8
  %i.hm = load ptr, ptr %i.dp, align 8, !tbaa !465 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 1
  store ptr %i.hn, ptr %i.dp, align 8, !tbaa !465
  store i8 %i.hl, ptr %i.hm, align 1, !tbaa !167
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge113.loopexit.i, label %bb.p, !llvm.loop !520

._crit_edge113.loopexit.i:                        ; preds = %._crit_edge.i
  %.pre117.pre.i = load i32, ptr %i.a, align 4, !tbaa !62
  br label %._crit_edge113.i

._crit_edge113.i:                                 ; preds = %._crit_edge113.loopexit.i, %.thread.i
  %.pre117.i = phi i32 [ %.pre117.pre.i, %._crit_edge113.loopexit.i ], [ 0, %.thread.i ]
  %i.ho = load ptr, ptr %i.an, align 8, !tbaa !456
  %i.hp = zext i32 %i.dm to i64
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.ho, i64 %i.hp
  store ptr %i.hq, ptr %i.w, align 8, !tbaa !458
  br label %cff_blend_doBlend.exit

cff_blend_doBlend.exit:                           ; preds = %bb.i, %bb.k, %._crit_edge113.i
  %i.hr = phi i32 [ %i.bk, %bb.k ], [ %.pre117.i, %._crit_edge113.i ], [ 161, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.hs = getelementptr inbounds nuw i8, ptr %i.e, i64 1049
  store i8 1, ptr %i.hs, align 1, !tbaa !514
  br label %bb.ac

bb.ac:                                            ; preds = %cff_blend_check_vector.exit, %bb.a, %bb.b, %bb.h, %cff_blend_doBlend.exit
  %.0 = phi i32 [ %i.v, %bb.h ], [ 3, %bb.a ], [ %i.hr, %cff_blend_doBlend.exit ], [ 3, %bb.b ], [ 3, %cff_blend_check_vector.exit ]
  ret i32 %.0
}

declare hidden zeroext i8 @FT_Matrix_Check(ptr noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define internal fastcc i64 @cff_parse_real(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef readnone captures(address) %1, i64 noundef range(i64 0, 4) %2, ptr nofree noundef writeonly captures(address_is_null) %3) unnamed_addr #4 {
bb.a:
  %.not = icmp eq ptr %3, null                    ; 2 uses
  br i1 %.not, label %.preheader320, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %3, align 8, !tbaa !136
  br label %.preheader320

.preheader320:                                    ; preds = %bb.b, %bb.a
  br label %.outer.outer

.outer.outer:                                     ; preds = %bb.j, %.preheader320
  %.0165.ph.ph = phi ptr [ %.1166, %bb.j ], [ %0, %.preheader320 ]
  %.0159.ph.ph = phi i32 [ %i.i, %bb.j ], [ 4, %.preheader320 ]
  %.0152.ph.ph = phi i64 [ %i.r, %bb.j ], [ 0, %.preheader320 ]
  %.0145.ph.ph = phi i32 [ %.0145.ph325, %bb.j ], [ 0, %.preheader320 ]
  %.0136.ph.ph = phi i64 [ %.0136, %bb.j ], [ 0, %.preheader320 ]
  %.0134.ph.ph = phi i64 [ %i.o, %bb.j ], [ 0, %.preheader320 ] ; 5 uses
  br label %.outer

.outer:                                           ; preds = %.outer.outer, %bb.i
  %.0165.ph = phi ptr [ %.1166, %bb.i ], [ %.0165.ph.ph, %.outer.outer ]
  %.0159.ph = phi i32 [ %i.i, %bb.i ], [ %.0159.ph.ph, %.outer.outer ]
  %.0152.ph = phi i64 [ 0, %bb.i ], [ %.0152.ph.ph, %.outer.outer ] ; 5 uses
  %.0145.ph = phi i32 [ %.0145.ph325, %bb.i ], [ %.0145.ph.ph, %.outer.outer ]
  %.0136.ph = phi i64 [ %.0136, %bb.i ], [ %.0136.ph.ph, %.outer.outer ]
  %i.a = icmp sgt i64 %.0152.ph, 214748363
  br label %.outer322

.outer322:                                        ; preds = %bb.e, %.outer
  %.0165.ph323 = phi ptr [ %.0165.ph, %.outer ], [ %.1166, %bb.e ]
  %.0159.ph324 = phi i32 [ %.0159.ph, %.outer ], [ %i.i, %bb.e ]
  %.0145.ph325 = phi i32 [ %.0145.ph, %.outer ], [ 1, %bb.e ] ; 3 uses
  %.0136.ph326 = phi i64 [ %.0136.ph, %.outer ], [ %.0136, %bb.e ]
  br label %bb.c

bb.c:                                             ; preds = %.outer322, %bb.h
  %.0165 = phi ptr [ %.1166, %bb.h ], [ %.0165.ph323, %.outer322 ] ; 3 uses
  %.0159 = phi i32 [ %i.i, %bb.h ], [ %.0159.ph324, %.outer322 ] ; 3 uses
  %.0136 = phi i64 [ %i.l, %bb.h ], [ %.0136.ph326, %.outer322 ] ; 6 uses
  %.not193 = icmp eq i32 %.0159, 0
  br i1 %.not193, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.b = getelementptr inbounds nuw i8, ptr %.0165, i64 1 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.0165, i64 2
  %i.d = icmp ule ptr %i.c, %1
  %.not194 = icmp ult ptr %1, %i.b
  %or.cond205 = select i1 %i.d, i1 true, i1 %.not194
  br i1 %or.cond205, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1166 = phi ptr [ %.0165, %bb.c ], [ %i.b, %bb.d ] ; 7 uses
  %i.e = load i8, ptr %.1166, align 1, !tbaa !167 ; 3 uses
  %i.f = zext i8 %i.e to i32
  %i.g = lshr i32 %i.f, %.0159
  %i.h = and i32 %i.g, 15                         ; 6 uses
  %i.i = sub nuw nsw i32 4, %.0159                ; 6 uses
  %i.j = icmp eq i32 %i.h, 14
  br i1 %i.j, label %.outer322, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = icmp samesign ugt i32 %i.h, 9
  br i1 %i.k, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %i.a, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.l = add nsw i64 %.0136, 1
  br label %bb.c

bb.i:                                             ; preds = %bb.g
  %i.m = icmp ne i32 %i.h, 0
  %i.n = icmp ne i64 %.0152.ph, 0
  %or.cond = select i1 %i.m, i1 true, i1 %i.n
  br i1 %or.cond, label %bb.j, label %.outer

bb.j:                                             ; preds = %bb.i
  %i.o = add nuw nsw i64 %.0134.ph.ph, 1
  %i.p = mul nsw i64 %.0152.ph, 10
  %i.q = zext nneg i32 %i.h to i64
  %i.r = add nsw i64 %i.p, %i.q
  br label %.outer.outer

bb.k:                                             ; preds = %bb.f
  %i.s = icmp eq i32 %i.h, 10
  br i1 %i.s, label %.preheader221.outer.outer, label %.loopexit223

.preheader221.outer.outer:                        ; preds = %bb.k, %bb.o
  %.ph.ph = phi i8 [ %i.aa, %bb.o ], [ %i.e, %bb.k ]
  %.2167.ph.ph = phi ptr [ %.3168, %bb.o ], [ %.1166, %bb.k ]
  %.1160.ph.ph = phi i32 [ %i.ae, %bb.o ], [ %i.i, %bb.k ]
  %.2154.ph.ph = phi i64 [ 0, %bb.o ], [ %.0152.ph, %bb.k ]
  %.2138.ph.ph = phi i64 [ %i.ah, %bb.o ], [ %.0136, %bb.k ] ; 2 uses
  %.0.ph.ph = phi i64 [ %.0.ph, %bb.o ], [ 0, %bb.k ]
  br label %.preheader221.outer

.preheader221.outer:                              ; preds = %.preheader221.outer.outer, %bb.q
  %.ph = phi i8 [ %i.aa, %bb.q ], [ %.ph.ph, %.preheader221.outer.outer ]
  %.2167.ph = phi ptr [ %.3168, %bb.q ], [ %.2167.ph.ph, %.preheader221.outer.outer ]
  %.1160.ph = phi i32 [ %i.ae, %bb.q ], [ %.1160.ph.ph, %.preheader221.outer.outer ]
  %.2154.ph = phi i64 [ %i.al, %bb.q ], [ %.2154.ph.ph, %.preheader221.outer.outer ] ; 4 uses
  %.0.ph = phi i64 [ %i.ai, %bb.q ], [ %.0.ph.ph, %.preheader221.outer.outer ] ; 4 uses
  %i.t = icmp ne i64 %.2154.ph, 0
  %i.u = icmp slt i64 %.2154.ph, 214748364
  %i.v = icmp slt i64 %.0.ph, 9
  %or.cond5 = select i1 %i.u, i1 %i.v, i1 false
  br label %.preheader221

.preheader221:                                    ; preds = %.preheader221.outer, %bb.p
  %i.w = phi i8 [ %i.aa, %bb.p ], [ %.ph, %.preheader221.outer ]
  %.2167 = phi ptr [ %.3168, %bb.p ], [ %.2167.ph, %.preheader221.outer ] ; 3 uses
  %.1160 = phi i32 [ %i.ae, %bb.p ], [ %.1160.ph, %.preheader221.outer ] ; 3 uses
  %.not195 = icmp eq i32 %.1160, 0
  br i1 %.not195, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.preheader221
  %i.x = getelementptr inbounds nuw i8, ptr %.2167, i64 1 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.2167, i64 2
  %i.z = icmp ule ptr %i.y, %1
  %.not196 = icmp ult ptr %1, %i.x
  %or.cond206 = select i1 %i.z, i1 true, i1 %.not196
  br i1 %or.cond206, label %._crit_edge, label %.loopexit

._crit_edge:                                      ; preds = %bb.l
  %.pre = load i8, ptr %i.x, align 1, !tbaa !167
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge, %.preheader221
  %i.aa = phi i8 [ %i.w, %.preheader221 ], [ %.pre, %._crit_edge ] ; 5 uses
  %.3168 = phi ptr [ %.2167, %.preheader221 ], [ %i.x, %._crit_edge ] ; 4 uses
  %i.ab = zext i8 %i.aa to i32
  %i.ac = lshr i32 %i.ab, %.1160
  %i.ad = and i32 %i.ac, 15                       ; 4 uses
  %i.ae = sub nuw nsw i32 4, %.1160               ; 4 uses
  %i.af = icmp samesign ugt i32 %i.ad, 9
  br i1 %i.af, label %.loopexit223, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ag = icmp ne i32 %i.ad, 0
end_hunk_2
begin_hunk_3_@do_fixed:bb.a

bb.w:                                             ; preds = %bb.v
  %i.bn = icmp slt i64 %.0, -32767
  %i.bo = shl nsw i64 %.0, 16
  %spec.select = select i1 %i.bn, i64 -2147483647, i64 %i.bo
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.t, %bb.e, %bb.f, %bb.c, %bb.b
  %.2 = phi i64 [ %i.d, %bb.b ], [ %i.h, %bb.c ], [ %i.n, %bb.e ], [ %i.q, %bb.f ], [ %spec.select, %bb.w ], [ %i.bi, %bb.t ], [ 2147483647, %bb.v ]
  ret i64 %.2
}

declare i64 @FT_MulDiv(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define internal i32 @cff_get_glyph_data(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef writeonly captures(none) %3) #4 {
bb.a:
  %4 = alloca %struct.FT_Data_, align 8           ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !328
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !329  ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !333
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !337
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !339
  %i.i = call i32 %i.f(ptr noundef %i.h, i32 noundef %1, ptr noundef nonnull %4) #18
  %i.j = load ptr, ptr %4, align 8, !tbaa !341
  store ptr %i.j, ptr %2, align 8, !tbaa !162
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.l = load i32, ptr %i.k, align 8, !tbaa !343
  %i.m = zext i32 %i.l to i64
  store i64 %i.m, ptr %3, align 8, !tbaa !136
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1160
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !15
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1336
  %i.q = tail call fastcc i32 @cff_index_access_element(ptr noundef nonnull %i.p, i32 noundef %1, ptr noundef %2, ptr noundef %3)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.i, %bb.b ], [ %i.q, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal void @cff_free_glyph_data(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2) #4 {
bb.a:
  %3 = alloca %struct.FT_Data_, align 8           ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !328
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !329  ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.e = load ptr, ptr %1, align 8, !tbaa !162
  store ptr %i.e, ptr %3, align 8, !tbaa !341
  %i.f = trunc i64 %2 to i32
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.f, ptr %i.g, align 8, !tbaa !343
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !333
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !346
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !339
  call void %i.j(ptr noundef %i.l, ptr noundef nonnull %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %cff_index_forget_element.exit

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1160
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !15   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 1392
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !192
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.d, label %cff_index_forget_element.exit

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 1336
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !189
  tail call void @FT_Stream_ReleaseFrame(ptr noundef %i.s, ptr noundef %1) #18
  br label %cff_index_forget_element.exit

cff_index_forget_element.exit:                    ; preds = %bb.d, %bb.c, %bb.b
  ret void
}

declare void @FT_Outline_Transform(ptr noundef, ptr noundef) local_unnamed_addr #9

declare void @FT_Outline_Translate(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #9

declare void @FT_Outline_Get_CBox(ptr noundef, ptr noundef) local_unnamed_addr #9

declare hidden void @ft_synthesize_vertical_metrics(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define internal fastcc i32 @cff_index_access_element(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef writeonly captures(none) %3) unnamed_addr #4 {
bb.a:
  %i.a = alloca [4 x i8], align 1                 ; 9 uses
  %i.b = alloca [4 x i8], align 1                 ; 10 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.critedge84, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !521  ; 2 uses
  %i.e = icmp ugt i32 %i.d, %1
  br i1 %i.e, label %bb.c, label %.critedge84

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %0, align 8, !tbaa !189    ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !193  ; 3 uses
  %.not75 = icmp eq ptr %i.h, null
  br i1 %.not75, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.j = load i8, ptr %i.i, align 8, !tbaa !522
  %i.k = zext i8 %i.j to i32
  %i.l = mul i32 %1, %i.k
  %i.m = zext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !523
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load i32, ptr %i.p, align 8, !tbaa !524
  %i.r = zext i32 %i.q to i64
  %i.s = add i64 %i.o, %i.r
  %i.t = add i64 %i.s, %i.m
  %i.u = tail call i32 @FT_Stream_Seek(ptr noundef %i.f, i64 noundef %i.t) #18 ; 2 uses
  %.not76 = icmp eq i32 %i.u, 0
  br i1 %.not76, label %bb.e, label %.critedge84

bb.e:                                             ; preds = %bb.d
  %i.v = load ptr, ptr %0, align 8, !tbaa !189
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.w = load i8, ptr %i.i, align 8, !tbaa !522
  %i.x = zext i8 %i.w to i64
  %i.y = call i32 @FT_Stream_Read(ptr noundef %i.v, ptr noundef nonnull %i.b, i64 noundef %i.x) #18 ; 2 uses
  %.not.i = icmp eq i32 %i.y, 0
  br i1 %.not.i, label %.preheader.i, label %cff_index_read_offset.exit

.preheader.i:                                     ; preds = %bb.e
  %i.z = load i8, ptr %i.i, align 8, !tbaa !522   ; 3 uses
  %.not13.i = icmp eq i8 %i.z, 0
  br i1 %.not13.i, label %.thread, label %.lr.ph.preheader.i

.thread:                                          ; preds = %.preheader.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  br label %.critedge2.thread

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %wide.trip.count.i = zext i8 %i.z to i64        ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.aa = icmp ult i8 %i.z, 4
  br i1 %i.aa, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 252
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.3, %.lr.ph.i ] ; 5 uses
  %.01011.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %i.ax, %.lr.ph.i ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.i
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !167
  %i.ad = zext i8 %i.ac to i64
  %i.ae = shl i64 %.01011.i, 16
  %i.af = shl nuw nsw i64 %i.ad, 8
  %i.ag = or disjoint i64 %i.ae, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 1
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !167
  %i.ak = zext i8 %i.aj to i64
  %i.al = or disjoint i64 %i.ag, %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 2
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !167
  %i.ap = zext i8 %i.ao to i64
  %i.aq = shl i64 %i.al, 16
  %i.ar = shl nuw nsw i64 %i.ap, 8
  %i.as = or disjoint i64 %i.aq, %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 3
  %i.av = load i8, ptr %i.au, align 1, !tbaa !167
  %i.aw = zext i8 %i.av to i64
  %i.ax = or disjoint i64 %i.as, %i.aw            ; 3 uses
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %.lr.ph.i, !llvm.loop !525

cff_index_read_offset.exit:                       ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  br label %.critedge84

.unr-lcssa:                                       ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.3, %.unr-lcssa ]
  %.01011.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %i.ax, %.unr-lcssa ]
  %lcmp.mod170 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod170)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.lr.ph.i.epil.preheader ], [ %indvars.iv.next.i.epil, %.lr.ph.i.epil ] ; 2 uses
  %.01011.i.epil = phi i64 [ %.01011.i.epil.init, %.lr.ph.i.epil.preheader ], [ %i.bc, %.lr.ph.i.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.epil ]
  %i.ay = shl i64 %.01011.i.epil, 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.i.epil
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !167
  %i.bb = zext i8 %i.ba to i64
  %i.bc = or disjoint i64 %i.ay, %i.bb            ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %.lr.ph.i.epil, !llvm.loop !526

.epilog-lcssa:                                    ; preds = %.lr.ph.i.epil, %.unr-lcssa
  %.lcssa164 = phi i64 [ %i.ax, %.unr-lcssa ], [ %i.bc, %.lr.ph.i.epil ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  %.not78 = icmp eq i64 %.lcssa164, 0
  br i1 %.not78, label %.critedge2.thread, label %.preheader

.preheader:                                       ; preds = %.epilog-lcssa, %bb.f
  %.062 = phi i32 [ %i.cm, %bb.f ], [ %1, %.epilog-lcssa ]
  %i.bd = load ptr, ptr %0, align 8, !tbaa !189
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.be = load i8, ptr %i.i, align 8, !tbaa !522
  %i.bf = zext i8 %i.be to i64
  %i.bg = call i32 @FT_Stream_Read(ptr noundef %i.bd, ptr noundef nonnull %i.a, i64 noundef %i.bf) #18 ; 2 uses
  %.not.i85 = icmp eq i32 %i.bg, 0
  br i1 %.not.i85, label %.preheader.i87, label %cff_index_read_offset.exit96.thread

.preheader.i87:                                   ; preds = %.preheader
  %i.bh = load i8, ptr %i.i, align 8, !tbaa !522  ; 3 uses
  %.not13.i88 = icmp eq i8 %i.bh, 0
  br i1 %.not13.i88, label %cff_index_read_offset.exit96.thread, label %.lr.ph.preheader.i89

.lr.ph.preheader.i89:                             ; preds = %.preheader.i87
  %wide.trip.count.i90 = zext i8 %i.bh to i64     ; 2 uses
  %xtraiter171 = and i64 %wide.trip.count.i90, 3  ; 3 uses
  %i.bi = icmp ult i8 %i.bh, 4
  br i1 %i.bi, label %.lr.ph.i91.epil.preheader, label %.lr.ph.preheader.i89.new

.lr.ph.preheader.i89.new:                         ; preds = %.lr.ph.preheader.i89
  %unroll_iter176 = and i64 %wide.trip.count.i90, 252
  br label %.lr.ph.i91

.lr.ph.i91:                                       ; preds = %.lr.ph.i91, %.lr.ph.preheader.i89.new
  %indvars.iv.i92 = phi i64 [ 0, %.lr.ph.preheader.i89.new ], [ %indvars.iv.next.i94.3, %.lr.ph.i91 ] ; 5 uses
  %.01011.i93 = phi i64 [ 0, %.lr.ph.preheader.i89.new ], [ %i.cf, %.lr.ph.i91 ]
  %niter177 = phi i64 [ 0, %.lr.ph.preheader.i89.new ], [ %niter177.next.3, %.lr.ph.i91 ]
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i92
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !167
  %i.bl = zext i8 %i.bk to i64
  %i.bm = shl i64 %.01011.i93, 16
  %i.bn = shl nuw nsw i64 %i.bl, 8
  %i.bo = or disjoint i64 %i.bm, %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i92
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 1
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !167
  %i.bs = zext i8 %i.br to i64
  %i.bt = or disjoint i64 %i.bo, %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i92
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 2
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !167
  %i.bx = zext i8 %i.bw to i64
  %i.by = shl i64 %i.bt, 16
  %i.bz = shl nuw nsw i64 %i.bx, 8
  %i.ca = or disjoint i64 %i.by, %i.bz
  %i.cb = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i92
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 3
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !167
  %i.ce = zext i8 %i.cd to i64
  %i.cf = or disjoint i64 %i.ca, %i.ce            ; 3 uses
  %indvars.iv.next.i94.3 = add nuw nsw i64 %indvars.iv.i92, 4 ; 2 uses
  %niter177.next.3 = add nuw i64 %niter177, 4     ; 2 uses
  %niter177.ncmp.3 = icmp eq i64 %niter177.next.3, %unroll_iter176
  br i1 %niter177.ncmp.3, label %cff_index_read_offset.exit96.unr-lcssa, label %.lr.ph.i91, !llvm.loop !525

cff_index_read_offset.exit96.thread:              ; preds = %.preheader, %.preheader.i87
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.f

cff_index_read_offset.exit96.unr-lcssa:           ; preds = %.lr.ph.i91
  %lcmp.mod173.not = icmp eq i64 %xtraiter171, 0
  br i1 %lcmp.mod173.not, label %cff_index_read_offset.exit96, label %.lr.ph.i91.epil.preheader

.lr.ph.i91.epil.preheader:                        ; preds = %cff_index_read_offset.exit96.unr-lcssa, %.lr.ph.preheader.i89
  %indvars.iv.i92.epil.init = phi i64 [ 0, %.lr.ph.preheader.i89 ], [ %indvars.iv.next.i94.3, %cff_index_read_offset.exit96.unr-lcssa ]
  %.01011.i93.epil.init = phi i64 [ 0, %.lr.ph.preheader.i89 ], [ %i.cf, %cff_index_read_offset.exit96.unr-lcssa ]
  %lcmp.mod175 = icmp ne i64 %xtraiter171, 0
  call void @llvm.assume(i1 %lcmp.mod175)
  br label %.lr.ph.i91.epil

.lr.ph.i91.epil:                                  ; preds = %.lr.ph.i91.epil, %.lr.ph.i91.epil.preheader
  %indvars.iv.i92.epil = phi i64 [ %indvars.iv.i92.epil.init, %.lr.ph.i91.epil.preheader ], [ %indvars.iv.next.i94.epil, %.lr.ph.i91.epil ] ; 2 uses
  %.01011.i93.epil = phi i64 [ %.01011.i93.epil.init, %.lr.ph.i91.epil.preheader ], [ %i.ck, %.lr.ph.i91.epil ]
  %epil.iter172 = phi i64 [ 0, %.lr.ph.i91.epil.preheader ], [ %epil.iter172.next, %.lr.ph.i91.epil ]
  %i.cg = shl i64 %.01011.i93.epil, 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i92.epil
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !167
  %i.cj = zext i8 %i.ci to i64
  %i.ck = or disjoint i64 %i.cg, %i.cj            ; 2 uses
  %indvars.iv.next.i94.epil = add nuw nsw i64 %indvars.iv.i92.epil, 1
  %epil.iter172.next = add i64 %epil.iter172, 1   ; 2 uses
  %epil.iter172.cmp.not = icmp eq i64 %epil.iter172.next, %xtraiter171
  br i1 %epil.iter172.cmp.not, label %cff_index_read_offset.exit96, label %.lr.ph.i91.epil, !llvm.loop !528

cff_index_read_offset.exit96:                     ; preds = %.lr.ph.i91.epil, %cff_index_read_offset.exit96.unr-lcssa
  %.lcssa = phi i64 [ %i.cf, %cff_index_read_offset.exit96.unr-lcssa ], [ %i.ck, %.lr.ph.i91.epil ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.cl = icmp eq i64 %.lcssa, 0
  br i1 %i.cl, label %bb.f, label %.critedge2

bb.f:                                             ; preds = %cff_index_read_offset.exit96.thread, %cff_index_read_offset.exit96
  %i.cm = add nuw i32 %.062, 1                    ; 2 uses
  %i.cn = load i32, ptr %i.c, align 4, !tbaa !521
  %i.co = icmp ult i32 %i.cm, %i.cn
  br i1 %i.co, label %.preheader, label %.critedge2.thread, !llvm.loop !529

bb.g:                                             ; preds = %bb.c
  %i.cp = zext i32 %1 to i64                      ; 2 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.cp
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !136 ; 3 uses
  %.not79 = icmp eq i64 %i.cr, 0
  br i1 %.not79, label %.critedge2.thread, label %.preheader113.preheader

.preheader113.preheader:                          ; preds = %bb.g
  %wide.trip.count = zext i32 %i.d to i64
  br label %.preheader113

.preheader113:                                    ; preds = %.preheader113.preheader, %bb.h
  %indvars.iv = phi i64 [ %i.cp, %.preheader113.preheader ], [ %indvars.iv.next, %bb.h ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.next
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !136 ; 2 uses
  %i.cu = icmp eq i64 %i.ct, 0
  br i1 %i.cu, label %bb.h, label %.critedge2

bb.h:                                             ; preds = %.preheader113
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge2.thread, label %.preheader113, !llvm.loop !530

.critedge2.thread:                                ; preds = %bb.h, %bb.f, %bb.g, %.epilog-lcssa, %.thread
  %.0.ph = phi i32 [ 0, %.thread ], [ %i.bg, %bb.f ], [ 0, %bb.g ], [ 0, %.epilog-lcssa ], [ 0, %bb.h ]
  %.160.ph = phi i64 [ 0, %.thread ], [ %.lcssa164, %bb.f ], [ 0, %bb.g ], [ 0, %.epilog-lcssa ], [ %i.cr, %bb.h ]
  %i.cv = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !531
  %.pre129 = add i64 %i.cw, 1
  br label %bb.i

.critedge2:                                       ; preds = %.preheader113, %cff_index_read_offset.exit96
  %.160 = phi i64 [ %.lcssa164, %cff_index_read_offset.exit96 ], [ %i.cr, %.preheader113 ] ; 2 uses
  %.2 = phi i64 [ %.lcssa, %cff_index_read_offset.exit96 ], [ %i.ct, %.preheader113 ] ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !531
  %i.cz = add i64 %i.cy, 1                        ; 3 uses
  %i.da = icmp ugt i64 %.2, %i.cz
  br i1 %i.da, label %.critedge2._crit_edge, label %bb.i

.critedge2._crit_edge:                            ; preds = %.critedge2
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !532
  br label %bb.j

bb.i:                                             ; preds = %.critedge2.thread, %.critedge2
  %.pre-phi = phi i64 [ %.pre129, %.critedge2.thread ], [ %i.cz, %.critedge2 ] ; 2 uses
  %.2112 = phi i64 [ 0, %.critedge2.thread ], [ %.2, %.critedge2 ] ; 2 uses
  %.160111 = phi i64 [ %.160.ph, %.critedge2.thread ], [ %.160, %.critedge2 ] ; 2 uses
  %.0108 = phi i32 [ %.0.ph, %.critedge2.thread ], [ 0, %.critedge2 ] ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !532 ; 2 uses
  %i.dd = sub i64 %.pre-phi, %.2112
  %i.de = icmp ugt i64 %i.dc, %i.dd
  br i1 %i.de, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.critedge2._crit_edge, %bb.i
  %.pre-phi130 = phi i64 [ %i.cz, %.critedge2._crit_edge ], [ %.pre-phi, %bb.i ]
  %i.df = phi i64 [ %.pre, %.critedge2._crit_edge ], [ %i.dc, %bb.i ]
  %.160110 = phi i64 [ %.160, %.critedge2._crit_edge ], [ %.160111, %bb.i ]
  %.0107 = phi i32 [ 0, %.critedge2._crit_edge ], [ %.0108, %bb.i ]
  %i.dg = sub i64 %.pre-phi130, %i.df
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.160109 = phi i64 [ %.160110, %bb.j ], [ %.160111, %bb.i ] ; 5 uses
  %.0106 = phi i32 [ %.0107, %bb.j ], [ %.0108, %bb.i ] ; 2 uses
  %.3 = phi i64 [ %i.dg, %bb.j ], [ %.2112, %bb.i ] ; 2 uses
  %.not80 = icmp ne i64 %.160109, 0
  %i.dh = icmp ugt i64 %.3, %.160109
  %or.cond = select i1 %.not80, i1 %i.dh, i1 false
  br i1 %or.cond, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.di = sub nuw i64 %.3, %.160109               ; 2 uses
  store i64 %i.di, ptr %3, align 8, !tbaa !136
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !192 ; 2 uses
  %.not81 = icmp eq ptr %i.dk, null
  br i1 %.not81, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 %.160109
  %i.dm = getelementptr inbounds i8, ptr %i.dl, i64 -1
  store ptr %i.dm, ptr %2, align 8, !tbaa !162
  br label %.critedge84

bb.n:                                             ; preds = %bb.l
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !532
  %i.dp = add i64 %.160109, -1
  %i.dq = add i64 %i.dp, %i.do
  %i.dr = call i32 @FT_Stream_Seek(ptr noundef nonnull %i.f, i64 noundef %i.dq) #18 ; 2 uses
  %.not82 = icmp eq i32 %i.dr, 0
  br i1 %.not82, label %bb.o, label %.critedge84

bb.o:                                             ; preds = %bb.n
  %i.ds = call i32 @FT_Stream_ExtractFrame(ptr noundef nonnull %i.f, i64 noundef %i.di, ptr noundef %2) #18
  br label %.critedge84

bb.p:                                             ; preds = %bb.k
  store ptr null, ptr %2, align 8, !tbaa !162
  store i64 0, ptr %3, align 8, !tbaa !136
  br label %.critedge84

.critedge84:                                      ; preds = %bb.a, %bb.b, %cff_index_read_offset.exit, %bb.o, %bb.d, %bb.p, %bb.m, %bb.n
  %.1 = phi i32 [ %i.u, %bb.d ], [ %i.ds, %bb.o ], [ %i.dr, %bb.n ], [ %.0106, %bb.m ], [ %.0106, %bb.p ], [ %i.y, %cff_index_read_offset.exit ], [ 6, %bb.b ], [ 6, %bb.a ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @cff_index_read_offset(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca [4 x i8], align 1                 ; 8 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !189
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8, !tbaa !522
  %i.e = zext i8 %i.d to i64
  %i.f = call i32 @FT_Stream_Read(ptr noundef %i.b, ptr noundef nonnull %i.a, i64 noundef %i.e) #18 ; 2 uses
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.a
  %i.g = load i8, ptr %i.c, align 8, !tbaa !522   ; 3 uses
  %.not13 = icmp eq i8 %i.g, 0
  br i1 %.not13, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext i8 %i.g to i64          ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.h = icmp ult i8 %i.g, 4
  br i1 %i.h, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 252
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 5 uses
  %.01011 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.ae, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv
  %i.j = load i8, ptr %i.i, align 1, !tbaa !167
  %i.k = zext i8 %i.j to i64
  %i.l = shl i64 %.01011, 16
  %i.m = shl nuw nsw i64 %i.k, 8
  %i.n = or disjoint i64 %i.l, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %i.q = load i8, ptr %i.p, align 1, !tbaa !167
  %i.r = zext i8 %i.q to i64
  %i.s = or disjoint i64 %i.n, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  %i.v = load i8, ptr %i.u, align 1, !tbaa !167
  %i.w = zext i8 %i.v to i64
  %i.x = shl i64 %i.s, 16
  %i.y = shl nuw nsw i64 %i.w, 8
  %i.z = or disjoint i64 %i.x, %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 3
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !167
  %i.ad = zext i8 %i.ac to i64
  %i.ae = or disjoint i64 %i.z, %i.ad             ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !525

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %.loopexit.loopexit.unr-lcssa ]
  %.01011.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.ae, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod16 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod16)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 2 uses
  %.01011.epil = phi i64 [ %.01011.epil.init, %.lr.ph.epil.preheader ], [ %i.aj, %.lr.ph.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.af = shl i64 %.01011.epil, 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.epil
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !167
  %i.ai = zext i8 %i.ah to i64
  %i.aj = or disjoint i64 %i.af, %i.ai            ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph.epil, !llvm.loop !533

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.epil, %.preheader, %bb.a
  %.1 = phi i64 [ 0, %bb.a ], [ 0, %.preheader ], [ %i.ae, %.loopexit.loopexit.unr-lcssa ], [ %i.aj, %.lr.ph.epil ]
  store i32 %i.f, ptr %1, align 4, !tbaa !62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret i64 %.1
}

declare hidden i32 @FT_Stream_ExtractFrame(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #9

declare hidden i32 @FT_Stream_Read(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #9

declare hidden void @FT_Stream_ReleaseFrame(ptr noundef, ptr noundef) local_unnamed_addr #9

declare hidden ptr @ft_mem_alloc(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @cff_make_private_dict(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 224)) %1) unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 320
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %1, i8 0, i64 224, i1 false)
  %i.b = load i8, ptr %i.a, align 8, !tbaa !462   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i8 %i.b, ptr %i.c, align 8, !tbaa !534
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %wide.trip.count = zext i8 %i.b to i64          ; 3 uses
  %min.iters.check = icmp ult i8 %i.b, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 252          ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %index ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %wide.load = load <2 x i64>, ptr %i.f, align 8, !tbaa !136
  %wide.load123 = load <2 x i64>, ptr %i.g, align 8, !tbaa !136
  %i.h = add nsw <2 x i64> %wide.load, splat (i64 32768)
  %i.i = add nsw <2 x i64> %wide.load123, splat (i64 32768)
  %i.j = lshr <2 x i64> %i.h, splat (i64 16)
  %i.k = lshr <2 x i64> %i.i, splat (i64 16)
  %i.l = trunc <2 x i64> %i.j to <2 x i16>
  %i.m = trunc <2 x i64> %i.k to <2 x i16>
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  store <2 x i16> %i.l, ptr %i.n, align 2, !tbaa !61
  store <2 x i16> %i.m, ptr %i.o, align 2, !tbaa !61
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.p = icmp eq i64 %index.next, %n.vec
  br i1 %i.p, label %middle.block, label %vector.body, !llvm.loop !536

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  %i.r = load i64, ptr %i.q, align 8, !tbaa !136
  %i.s = add nsw i64 %i.r, 32768
  %i.t = lshr i64 %i.s, 16
  %i.u = trunc i64 %i.t to i16
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %indvars.iv
  store i16 %i.u, ptr %i.v, align 2, !tbaa !61
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !537

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 321
  %i.x = load i8, ptr %i.w, align 1, !tbaa !538   ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 9
  store i8 %i.x, ptr %i.y, align 1, !tbaa !539
  %.not92 = icmp eq i8 %i.x, 0
  br i1 %.not92, label %._crit_edge75, label %.lr.ph74

.lr.ph74:                                         ; preds = %._crit_edge
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %wide.trip.count101 = zext i8 %i.x to i64       ; 3 uses
  %min.iters.check125 = icmp ult i8 %i.x, 4
  br i1 %min.iters.check125, label %scalar.ph124.preheader, label %vector.ph126

vector.ph126:                                     ; preds = %.lr.ph74
  %n.vec127 = and i64 %wide.trip.count101, 252    ; 3 uses
  br label %vector.body128

vector.body128:                                   ; preds = %vector.body128, %vector.ph126
  %index129 = phi i64 [ 0, %vector.ph126 ], [ %index.next132, %vector.body128 ] ; 3 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %index129 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %wide.load130 = load <2 x i64>, ptr %i.ab, align 8, !tbaa !136
  %wide.load131 = load <2 x i64>, ptr %i.ac, align 8, !tbaa !136
  %i.ad = add nsw <2 x i64> %wide.load130, splat (i64 32768)
  %i.ae = add nsw <2 x i64> %wide.load131, splat (i64 32768)
  %i.af = lshr <2 x i64> %i.ad, splat (i64 16)
  %i.ag = lshr <2 x i64> %i.ae, splat (i64 16)
  %i.ah = trunc <2 x i64> %i.af to <2 x i16>
  %i.ai = trunc <2 x i64> %i.ag to <2 x i16>
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %index129 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  store <2 x i16> %i.ah, ptr %i.aj, align 2, !tbaa !61
  store <2 x i16> %i.ai, ptr %i.ak, align 2, !tbaa !61
  %index.next132 = add nuw i64 %index129, 4       ; 2 uses
  %i.al = icmp eq i64 %index.next132, %n.vec127
  br i1 %i.al, label %middle.block133, label %vector.body128, !llvm.loop !540

middle.block133:                                  ; preds = %vector.body128
  %cmp.n134 = icmp eq i64 %n.vec127, %wide.trip.count101
  br i1 %cmp.n134, label %._crit_edge75, label %scalar.ph124.preheader

scalar.ph124.preheader:                           ; preds = %.lr.ph74, %middle.block133
  %indvars.iv98.ph = phi i64 [ 0, %.lr.ph74 ], [ %n.vec127, %middle.block133 ]
  br label %scalar.ph124

scalar.ph124:                                     ; preds = %scalar.ph124.preheader, %scalar.ph124
  %indvars.iv98 = phi i64 [ %indvars.iv.next99, %scalar.ph124 ], [ %indvars.iv98.ph, %scalar.ph124.preheader ] ; 3 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv98
  %i.an = load i64, ptr %i.am, align 8, !tbaa !136
  %i.ao = add nsw i64 %i.an, 32768
  %i.ap = lshr i64 %i.ao, 16
  %i.aq = trunc i64 %i.ap to i16
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %indvars.iv98
  store i16 %i.aq, ptr %i.ar, align 2, !tbaa !61
  %indvars.iv.next99 = add nuw nsw i64 %indvars.iv98, 1 ; 2 uses
  %exitcond102.not = icmp eq i64 %indvars.iv.next99, %wide.trip.count101
  br i1 %exitcond102.not, label %._crit_edge75, label %scalar.ph124, !llvm.loop !541

._crit_edge75:                                    ; preds = %scalar.ph124, %middle.block133, %._crit_edge
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 322
  %i.at = load i8, ptr %i.as, align 2, !tbaa !542 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 10
  store i8 %i.at, ptr %i.au, align 2, !tbaa !543
  %.not93 = icmp eq i8 %i.at, 0
  br i1 %.not93, label %._crit_edge79, label %.lr.ph78

.lr.ph78:                                         ; preds = %._crit_edge75
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 60 ; 2 uses
  %wide.trip.count106 = zext i8 %i.at to i64      ; 3 uses
  %min.iters.check137 = icmp ult i8 %i.at, 4
  br i1 %min.iters.check137, label %scalar.ph136.preheader, label %vector.ph138

vector.ph138:                                     ; preds = %.lr.ph78
  %n.vec139 = and i64 %wide.trip.count106, 252    ; 3 uses
  br label %vector.body140

vector.body140:                                   ; preds = %vector.body140, %vector.ph138
  %index141 = phi i64 [ 0, %vector.ph138 ], [ %index.next144, %vector.body140 ] ; 3 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %index141 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %wide.load142 = load <2 x i64>, ptr %i.ax, align 8, !tbaa !136
  %wide.load143 = load <2 x i64>, ptr %i.ay, align 8, !tbaa !136
  %i.az = add nsw <2 x i64> %wide.load142, splat (i64 32768)
  %i.ba = add nsw <2 x i64> %wide.load143, splat (i64 32768)
  %i.bb = lshr <2 x i64> %i.az, splat (i64 16)
  %i.bc = lshr <2 x i64> %i.ba, splat (i64 16)
  %i.bd = trunc <2 x i64> %i.bb to <2 x i16>
  %i.be = trunc <2 x i64> %i.bc to <2 x i16>
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr %i.aw, i64 %index141 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  store <2 x i16> %i.bd, ptr %i.bf, align 2, !tbaa !61
end_hunk_3
begin_hunk_4_@cff_index_get_pointers:bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !460 ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.o ; 4 uses
  %.not88.i = icmp eq i64 %i.o, 0                 ; 4 uses
  switch i8 %i.k, label %.preheader.i [
    i8 1, label %.preheader68.i
    i8 2, label %.preheader70.i
    i8 3, label %.preheader72.i
  ]

.preheader72.i:                                   ; preds = %bb.f
  br i1 %.not88.i, label %.loopexit.i, label %.lr.ph.i

.preheader70.i:                                   ; preds = %bb.f
  br i1 %.not88.i, label %.loopexit.i, label %.lr.ph78.i

.preheader68.i:                                   ; preds = %bb.f
  br i1 %.not88.i, label %.loopexit.i, label %.lr.ph81.i

.preheader.i:                                     ; preds = %bb.f
  br i1 %.not88.i, label %.loopexit.i, label %.lr.ph84.i

.lr.ph81.i:                                       ; preds = %.preheader68.i, %.lr.ph81.i
  %.05580.i = phi ptr [ %i.ag, %.lr.ph81.i ], [ %i.z, %.preheader68.i ] ; 2 uses
  %.05679.i = phi ptr [ %i.af, %.lr.ph81.i ], [ %i.ab, %.preheader68.i ] ; 2 uses
  %i.ad = load i8, ptr %.05679.i, align 1, !tbaa !167
  %i.ae = zext i8 %i.ad to i64
  store i64 %i.ae, ptr %.05580.i, align 8, !tbaa !136
  %i.af = getelementptr inbounds nuw i8, ptr %.05679.i, i64 1 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.05580.i, i64 8
  %i.ah = icmp ult ptr %i.af, %i.ac
  br i1 %i.ah, label %.lr.ph81.i, label %.loopexit.i, !llvm.loop !586

.lr.ph78.i:                                       ; preds = %.preheader70.i, %.lr.ph78.i
  %.177.i = phi ptr [ %i.aq, %.lr.ph78.i ], [ %i.z, %.preheader70.i ] ; 2 uses
  %.15776.i = phi ptr [ %i.ap, %.lr.ph78.i ], [ %i.ab, %.preheader70.i ] ; 3 uses
  %i.ai = load i8, ptr %.15776.i, align 1, !tbaa !167
  %i.aj = zext i8 %i.ai to i64
  %i.ak = shl nuw nsw i64 %i.aj, 8
  %i.al = getelementptr inbounds nuw i8, ptr %.15776.i, i64 1
  %i.am = load i8, ptr %i.al, align 1, !tbaa !167
  %i.an = zext i8 %i.am to i64
  %i.ao = or disjoint i64 %i.ak, %i.an
  store i64 %i.ao, ptr %.177.i, align 8, !tbaa !136
  %i.ap = getelementptr inbounds nuw i8, ptr %.15776.i, i64 2 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.177.i, i64 8
  %i.ar = icmp ult ptr %i.ap, %i.ac
  br i1 %i.ar, label %.lr.ph78.i, label %.loopexit.i, !llvm.loop !587

.lr.ph.i:                                         ; preds = %.preheader72.i, %.lr.ph.i
  %.275.i = phi ptr [ %i.bf, %.lr.ph.i ], [ %i.z, %.preheader72.i ] ; 2 uses
  %.25874.i = phi ptr [ %i.be, %.lr.ph.i ], [ %i.ab, %.preheader72.i ] ; 4 uses
  %i.as = load i8, ptr %.25874.i, align 1, !tbaa !167
  %i.at = zext i8 %i.as to i64
  %i.au = shl nuw nsw i64 %i.at, 16
  %i.av = getelementptr inbounds nuw i8, ptr %.25874.i, i64 1
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !167
  %i.ax = zext i8 %i.aw to i64
  %i.ay = shl nuw nsw i64 %i.ax, 8
  %i.az = or disjoint i64 %i.ay, %i.au
  %i.ba = getelementptr inbounds nuw i8, ptr %.25874.i, i64 2
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !167
  %i.bc = zext i8 %i.bb to i64
  %i.bd = or disjoint i64 %i.az, %i.bc
  store i64 %i.bd, ptr %.275.i, align 8, !tbaa !136
  %i.be = getelementptr inbounds nuw i8, ptr %.25874.i, i64 3 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.275.i, i64 8
  %i.bg = icmp ult ptr %i.be, %i.ac
  br i1 %i.bg, label %.lr.ph.i, label %.loopexit.i, !llvm.loop !588

.lr.ph84.i:                                       ; preds = %.preheader.i, %.lr.ph84.i
  %.383.i = phi ptr [ %i.bl, %.lr.ph84.i ], [ %i.z, %.preheader.i ] ; 2 uses
  %.35982.i = phi ptr [ %i.bk, %.lr.ph84.i ], [ %i.ab, %.preheader.i ] ; 2 uses
  %i.bh = load i32, ptr %.35982.i, align 1
  %i.bi = call i32 @llvm.bswap.i32(i32 %i.bh)
  %i.bj = zext i32 %i.bi to i64
  store i64 %i.bj, ptr %.383.i, align 8, !tbaa !136
  %i.bk = getelementptr inbounds nuw i8, ptr %.35982.i, i64 4 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.383.i, i64 8
  %i.bm = icmp ult ptr %i.bk, %i.ac
  br i1 %i.bm, label %.lr.ph84.i, label %.loopexit.i, !llvm.loop !589

.loopexit.i:                                      ; preds = %.lr.ph.i, %.lr.ph78.i, %.lr.ph81.i, %.lr.ph84.i, %.preheader.i, %.preheader68.i, %.preheader70.i, %.preheader72.i
  call void @FT_Stream_ExitFrame(ptr noundef nonnull %i.c) #18
  %.pr.pre.i = load i32, ptr %i.a, align 4, !tbaa !62
  %i.bn = icmp eq i32 %.pr.pre.i, 0
  br i1 %i.bn, label %cff_index_load_offsets.exit.thread, label %cff_index_load_offsets.exit

cff_index_load_offsets.exit.thread:               ; preds = %.loopexit.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  store i32 0, ptr %i.b, align 4, !tbaa !62
  br label %bb.g

cff_index_load_offsets.exit:                      ; preds = %bb.c, %bb.d, %bb.e, %.loopexit.i
  %i.bo = load ptr, ptr %i.f, align 8, !tbaa !193
  call void @ft_mem_free(ptr noundef %i.e, ptr noundef %i.bo) #18
  store ptr null, ptr %i.f, align 8, !tbaa !193
  %.pre.i = load i32, ptr %i.a, align 4, !tbaa !62 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  store i32 %.pre.i, ptr %i.b, align 4, !tbaa !62
  %.not86 = icmp eq i32 %.pre.i, 0
  br i1 %.not86, label %bb.g, label %.thread.thread

bb.g:                                             ; preds = %cff_index_load_offsets.exit.thread, %cff_index_load_offsets.exit, %bb.a
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !584
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !521 ; 3 uses
  %i.bt = zext i32 %i.bs to i64
  %i.bu = add i64 %i.bq, %i.bt                    ; 2 uses
  %.not87 = icmp eq i32 %i.bs, 0
  br i1 %.not87, label %.thread.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bv = add i32 %i.bs, 1
  %i.bw = zext i32 %i.bv to i64
  %i.bx = call ptr @ft_mem_qrealloc(ptr noundef %i.e, i64 noundef 8, i64 noundef 0, i64 noundef %i.bw, ptr noundef null, ptr noundef nonnull %i.b) #18 ; 11 uses
  %i.by = load i32, ptr %i.b, align 4, !tbaa !62  ; 2 uses
  %.not88 = icmp eq i32 %i.by, 0
  br i1 %.not88, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %.not89 = icmp eq ptr %2, null                  ; 2 uses
  br i1 %.not89, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bz = call ptr @ft_mem_alloc(ptr noundef %i.e, i64 noundef %i.bu, ptr noundef nonnull %i.b) #18 ; 6 uses
  %i.ca = load i32, ptr %i.b, align 4, !tbaa !62
  %.not90 = icmp eq i32 %i.ca, 0
  br i1 %.not90, label %.thread124, label %bb.x

bb.k:                                             ; preds = %bb.i
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !192 ; 4 uses
  store ptr %i.cc, ptr %i.bx, align 8, !tbaa !162
  %i.cd = load i32, ptr %i.br, align 4, !tbaa !521 ; 4 uses
  %.not91104 = icmp eq i32 %i.cd, 0
  br i1 %.not91104, label %._crit_edge, label %.lr.ph.split.us

.thread124:                                       ; preds = %bb.j
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !192
  store ptr %i.bz, ptr %i.bx, align 8, !tbaa !162
  %i.cg = load i32, ptr %i.br, align 4, !tbaa !521 ; 2 uses
  %.not91104127 = icmp eq i32 %i.cg, 0
  br i1 %.not91104127, label %._crit_edge.thread, label %.lr.ph.split

._crit_edge.thread:                               ; preds = %.thread124
  store ptr %i.bx, ptr %1, align 8, !tbaa !585
  br label %bb.u

.lr.ph.split.us:                                  ; preds = %bb.k
  %i.ch = load ptr, ptr %i.f, align 8, !tbaa !193 ; 3 uses
  %i.ci = zext i32 %i.cd to i64                   ; 2 uses
  %xtraiter = and i64 %i.ci, 1
  %i.cj = icmp eq i32 %i.cd, 1
  br i1 %i.cj, label %.epil.preheader, label %.lr.ph.split.us.new

.lr.ph.split.us.new:                              ; preds = %.lr.ph.split.us
  %unroll_iter = and i64 %i.ci, 4294967294
  br label %bb.l

bb.l:                                             ; preds = %bb.p, %.lr.ph.split.us.new
  %.076106.us = phi i64 [ 0, %.lr.ph.split.us.new ], [ %.0.us.1, %bb.p ] ; 2 uses
  %.077105.us = phi i64 [ 1, %.lr.ph.split.us.new ], [ %i.cz, %bb.p ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.split.us.new ], [ %niter.next.1, %bb.p ]
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %.077105.us
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !136
  %i.cm = add i64 %i.cl, -1                       ; 2 uses
  %i.cn = icmp ult i64 %i.cm, %.076106.us
  br i1 %i.cn, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.co = load i64, ptr %i.bp, align 8, !tbaa !584
  %spec.select.us = call i64 @llvm.umin.i64(i64 %i.cm, i64 %i.co)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.0.us = phi i64 [ %spec.select.us, %bb.m ], [ %.076106.us, %bb.l ] ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cc, i64 %.0.us
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %.077105.us
  store ptr %i.cp, ptr %i.cq, align 8, !tbaa !162
  %i.cr = add nuw nsw i64 %.077105.us, 1          ; 2 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.cr
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !136
  %i.cu = add i64 %i.ct, -1                       ; 2 uses
  %i.cv = icmp ult i64 %i.cu, %.0.us
  br i1 %i.cv, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cw = load i64, ptr %i.bp, align 8, !tbaa !584
  %spec.select.us.1 = call i64 @llvm.umin.i64(i64 %i.cu, i64 %i.cw)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.0.us.1 = phi i64 [ %spec.select.us.1, %bb.o ], [ %.0.us, %bb.n ] ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cc, i64 %.0.us.1
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.cr
  store ptr %i.cx, ptr %i.cy, align 8, !tbaa !162
  %i.cz = add nuw nsw i64 %.077105.us, 2          ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.l, !llvm.loop !590

.lr.ph.split:                                     ; preds = %.thread124, %bb.s
  %i.da = phi i32 [ %i.dx, %bb.s ], [ %i.cg, %.thread124 ] ; 2 uses
  %.075107 = phi i64 [ %.1, %bb.s ], [ 0, %.thread124 ] ; 5 uses
  %.076106 = phi i64 [ %.0135, %bb.s ], [ 0, %.thread124 ] ; 5 uses
  %.077105 = phi i64 [ %i.dy, %bb.s ], [ 1, %.thread124 ] ; 5 uses
  %i.db = load ptr, ptr %i.f, align 8, !tbaa !193
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %.077105
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !136
  %i.de = add i64 %i.dd, -1                       ; 2 uses
  %i.df = icmp ult i64 %i.de, %.076106
  br i1 %i.df, label %.thread132, label %bb.q

.thread132:                                       ; preds = %.lr.ph.split
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bz, i64 %.076106
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 %.075107
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %.077105
  store ptr %i.dh, ptr %i.di, align 8, !tbaa !162
  br label %bb.s

bb.q:                                             ; preds = %.lr.ph.split
  %i.dj = load i64, ptr %i.bp, align 8, !tbaa !584
  %spec.select = call i64 @llvm.umin.i64(i64 %i.de, i64 %i.dj) ; 4 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.bz, i64 %spec.select
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 %.075107 ; 2 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %.077105 ; 5 uses
  store ptr %i.dl, ptr %i.dm, align 8, !tbaa !162
  %.not93 = icmp eq i64 %spec.select, %.076106
  br i1 %.not93, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dn = getelementptr i8, ptr %i.dm, i64 -8
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !162 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.076106
  %i.dq = ptrtoint ptr %i.dl to i64
  %i.dr = ptrtoint ptr %i.do to i64
  %i.ds = sub i64 %i.dq, %i.dr
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.do, ptr align 1 %i.dp, i64 %i.ds, i1 false)
  %i.dt = load ptr, ptr %i.dm, align 8, !tbaa !162
  store i8 0, ptr %i.dt, align 1, !tbaa !167
  %i.du = load ptr, ptr %i.dm, align 8, !tbaa !162
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 1
  store ptr %i.dv, ptr %i.dm, align 8, !tbaa !162
  %i.dw = add i64 %.075107, 1
  %.pre = load i32, ptr %i.br, align 4, !tbaa !521
  br label %bb.s

bb.s:                                             ; preds = %.thread132, %bb.q, %bb.r
  %.0135 = phi i64 [ %spec.select, %bb.r ], [ %spec.select, %bb.q ], [ %.076106, %.thread132 ]
  %i.dx = phi i32 [ %.pre, %bb.r ], [ %i.da, %bb.q ], [ %i.da, %.thread132 ] ; 2 uses
  %.1 = phi i64 [ %i.dw, %bb.r ], [ %.075107, %bb.q ], [ %.075107, %.thread132 ]
  %i.dy = add nuw nsw i64 %.077105, 1
  %i.dz = zext i32 %i.dx to i64
  %.not91.not = icmp samesign ult i64 %.077105, %i.dz
  br i1 %.not91.not, label %.lr.ph.split, label %._crit_edge, !llvm.loop !590

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.p
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.split.us
  %.076106.us.epil.init = phi i64 [ 0, %.lr.ph.split.us ], [ %.0.us.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.077105.us.epil.init = phi i64 [ 1, %.lr.ph.split.us ], [ %i.cz, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod151 = trunc i32 %i.cd to i1
  call void @llvm.assume(i1 %lcmp.mod151)
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %.077105.us.epil.init
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !136
  %i.ec = add i64 %i.eb, -1                       ; 2 uses
  %i.ed = icmp ult i64 %i.ec, %.076106.us.epil.init
  br i1 %i.ed, label %._crit_edge.loopexit.epilog-lcssa, label %bb.t

bb.t:                                             ; preds = %.epil.preheader
  %i.ee = load i64, ptr %i.bp, align 8, !tbaa !584
  %spec.select.us.epil = call i64 @llvm.umin.i64(i64 %i.ec, i64 %i.ee)
  br label %._crit_edge.loopexit.epilog-lcssa

._crit_edge.loopexit.epilog-lcssa:                ; preds = %bb.t, %.epil.preheader
  %.0.us.epil = phi i64 [ %spec.select.us.epil, %bb.t ], [ %.076106.us.epil.init, %.epil.preheader ]
  %i.ef = getelementptr inbounds nuw i8, ptr %i.cc, i64 %.0.us.epil
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %.077105.us.epil.init
  store ptr %i.ef, ptr %i.eg, align 8, !tbaa !162
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.s, %._crit_edge.loopexit.epilog-lcssa, %._crit_edge.loopexit.unr-lcssa, %bb.k
  %.078129 = phi ptr [ null, %._crit_edge.loopexit.epilog-lcssa ], [ null, %bb.k ], [ null, %._crit_edge.loopexit.unr-lcssa ], [ %i.bz, %bb.s ] ; 2 uses
  store ptr %i.bx, ptr %1, align 8, !tbaa !585
  br i1 %.not89, label %bb.v, label %bb.u

bb.u:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %.078129137 = phi ptr [ %i.bz, %._crit_edge.thread ], [ %.078129, %._crit_edge ] ; 2 uses
  store ptr %.078129137, ptr %2, align 8, !tbaa !162
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %._crit_edge
  %.078129138 = phi ptr [ %.078129137, %bb.u ], [ %.078129, %._crit_edge ] ; 2 uses
  %.not92 = icmp eq ptr %3, null
  br i1 %.not92, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  store i64 %i.bu, ptr %3, align 8, !tbaa !136
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w, %bb.j
  %.179 = phi ptr [ %.078129138, %bb.v ], [ %i.bz, %bb.j ], [ %.078129138, %bb.w ] ; 2 uses
  %i.eh = load i32, ptr %i.b, align 4, !tbaa !62  ; 2 uses
  %i.ei = icmp ne i32 %i.eh, 0
  %i.ej = icmp ne ptr %.179, null
  %or.cond = select i1 %i.ei, i1 %i.ej, i1 false
  br i1 %or.cond, label %bb.y, label %.thread

bb.y:                                             ; preds = %bb.x
  call void @ft_mem_free(ptr noundef %i.e, ptr noundef nonnull %.179) #18
  %.pre112 = load i32, ptr %i.b, align 4, !tbaa !62
  br label %.thread

.thread:                                          ; preds = %bb.h, %bb.y, %bb.x
  %i.ek = phi i32 [ %i.by, %bb.h ], [ %.pre112, %bb.y ], [ %i.eh, %bb.x ] ; 2 uses
  %i.el = icmp ne i32 %i.ek, 0
  %i.em = icmp ne ptr %i.bx, null
  %or.cond3 = select i1 %i.el, i1 %i.em, i1 false
  br i1 %or.cond3, label %bb.z, label %.thread.thread

bb.z:                                             ; preds = %.thread
  call void @ft_mem_free(ptr noundef %i.e, ptr noundef nonnull %i.bx) #18
  %.pre113 = load i32, ptr %i.b, align 4, !tbaa !62
  br label %.thread.thread

.thread.thread:                                   ; preds = %cff_index_load_offsets.exit, %bb.g, %bb.z, %.thread
  %i.en = phi i32 [ %.pre.i, %cff_index_load_offsets.exit ], [ 0, %bb.g ], [ %.pre113, %bb.z ], [ %i.ek, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  ret i32 %i.en
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @cff_subfont_load(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef range(i32 4096, 16385) %5, ptr noundef %6, ptr nofree noundef readonly captures(none) %7) unnamed_addr #4 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %8 = alloca %struct.CFF_ParserRec_, align 8     ; 12 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store ptr null, ptr %i.b, align 8, !tbaa !162
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 920
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !114  ; 2 uses
  %i.f = icmp eq i32 %5, 12288
  %i.g = icmp eq i32 %5, 16384
  %i.h = or i1 %i.f, %i.g                         ; 3 uses
  %i.i = zext i1 %i.h to i8
  %i.j = select i1 %i.h, i32 513, i32 96          ; 2 uses
  %i.k = load ptr, ptr %6, align 8, !tbaa !222    ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !448
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.m, i8 0, i64 64, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 52
  store i32 %5, ptr %i.n, align 4, !tbaa !452
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 56
  store ptr %0, ptr %i.o, align 8, !tbaa !454
  store ptr %i.k, ptr %8, align 8, !tbaa !455
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 66
  store i16 0, ptr %i.p, align 2, !tbaa !513
  %i.q = zext nneg i32 %i.j to i64
  %i.r = call ptr @ft_mem_qrealloc(ptr noundef %i.l, i64 noundef 8, i64 noundef 0, i64 noundef %i.q, ptr noundef null, ptr noundef nonnull %i.a) #18 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  store ptr %i.r, ptr %i.s, align 8, !tbaa !456
  %i.t = load i32, ptr %i.a, align 4, !tbaa !62   ; 2 uses
  %.not.i = icmp eq i32 %i.t, 0
  br i1 %.not.i, label %bb.b, label %cff_parser_init.exit

cff_parser_init.exit:                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.v

bb.b:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 48
  store i32 %i.j, ptr %i.u, align 8, !tbaa !457
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 40
  store ptr %i.r, ptr %i.v, align 8, !tbaa !458
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(296) %i.w, i8 0, i64 296, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i16 -100, ptr %i.x, align 8, !tbaa !591
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 42
  store i16 50, ptr %i.y, align 2, !tbaa !592
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 2, ptr %i.z, align 8, !tbaa !593
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 65536, ptr %i.aa, align 8, !tbaa !594
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 65536, ptr %i.ab, align 8, !tbaa !595
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i64 8720, ptr %i.ac, align 8, !tbaa !596
  store <4 x i32> splat (i32 65535), ptr %0, align 8, !tbaa !62
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 65535, ptr %i.ad, align 8, !tbaa !159
end_hunk_4
begin_hunk_5_@cff_charset_load:bb.a
  %spec.select.i = call i16 @llvm.umax.i16(i16 %i.cx, i16 %.029.i) ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %vec.epilog.scalar.ph157, !llvm.loop !618

._crit_edge.i:                                    ; preds = %vec.epilog.scalar.ph157, %vec.epilog.middle.block169, %middle.block153
  %spec.select.i.lcssa = phi i16 [ %i.cv, %vec.epilog.middle.block169 ], [ %i.cr, %middle.block153 ], [ %spec.select.i, %vec.epilog.scalar.ph157 ] ; 2 uses
  %i.cy = zext i16 %spec.select.i.lcssa to i64
  %i.cz = add nuw nsw i64 %i.cy, 1
  %i.da = call ptr @ft_mem_realloc(ptr noundef %i.d, i64 noundef 2, i64 noundef 0, i64 noundef %i.cz, ptr noundef null, ptr noundef nonnull %i.a) #18 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.da, ptr %i.db, align 8, !tbaa !197
  %i.dc = load i32, ptr %i.a, align 4, !tbaa !62  ; 2 uses
  %.not26.i = icmp eq i32 %i.dc, 0
  br i1 %.not26.i, label %.preheader.i, label %cff_charset_compute_cids.exit

.preheader.i:                                     ; preds = %._crit_edge.i
  %.12430.i = add i32 %1, -1
  %i.dd = load ptr, ptr %i.cj, align 8, !tbaa !66
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %.preheader.i
  %.12431.i = phi i32 [ %.12430.i, %.preheader.i ], [ %.124.i, %bb.y ] ; 3 uses
  %i.de = trunc i32 %.12431.i to i16
  %i.df = zext i32 %.12431.i to i64
  %i.dg = getelementptr inbounds nuw [2 x i8], ptr %i.dd, i64 %i.df
  %i.dh = load i16, ptr %i.dg, align 2, !tbaa !61
  %i.di = zext i16 %i.dh to i64
  %i.dj = getelementptr inbounds nuw [2 x i8], ptr %i.da, i64 %i.di
  store i16 %i.de, ptr %i.dj, align 2, !tbaa !61
  %.124.i = add i32 %.12431.i, -1                 ; 2 uses
  %i.dk = icmp ult i32 %.124.i, %1
  br i1 %i.dk, label %bb.y, label %._crit_edge33.i, !llvm.loop !619

._crit_edge33.i:                                  ; preds = %bb.y
  %i.dl = zext i16 %spec.select.i.lcssa to i32
  store i32 %i.dl, ptr %i.ch, align 8, !tbaa !198
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %1, ptr %i.dm, align 4, !tbaa !620
  br label %cff_charset_compute_cids.exit

cff_charset_compute_cids.exit:                    ; preds = %bb.x, %._crit_edge.i, %._crit_edge33.i
  %i.dn = phi i32 [ %i.dc, %._crit_edge.i ], [ 0, %bb.x ], [ 0, %._crit_edge33.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  store i32 %i.dn, ptr %i.b, align 4, !tbaa !62
  br label %bb.z

thread-pre-split:                                 ; preds = %.lr.ph118, %bb.i, %bb.j, %bb.c, %bb.f, %bb.d, %bb.l, %bb.b, %bb.w, %.loopexit112
  %.pr = load i32, ptr %i.b, align 4, !tbaa !62
  br label %bb.z

bb.z:                                             ; preds = %thread-pre-split, %cff_charset_compute_cids.exit
  %i.do = phi i32 [ %.pr, %thread-pre-split ], [ %i.dn, %cff_charset_compute_cids.exit ]
  %.not102 = icmp eq i32 %i.do, 0
  br i1 %.not102, label %bb.aa, label %.thread110

.thread110.sink.split:                            ; preds = %bb.t, %bb.q, %bb.n
  store i32 3, ptr %i.b, align 4, !tbaa !62
  br label %.thread110

.thread110:                                       ; preds = %.thread110.sink.split, %bb.o, %bb.r, %bb.u, %bb.z
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !66
  call void @ft_mem_free(ptr noundef %i.d, ptr noundef %i.dq) #18
  store ptr null, ptr %i.dp, align 8, !tbaa !66
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !197
  call void @ft_mem_free(ptr noundef %i.d, ptr noundef %i.ds) #18
  store ptr null, ptr %i.dr, align 8, !tbaa !197
  store i32 0, ptr %0, align 8, !tbaa !199
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.dt, align 8, !tbaa !609
  %.pre = load i32, ptr %i.b, align 4, !tbaa !62
  br label %bb.aa

bb.aa:                                            ; preds = %.thread110, %bb.z
  %i.du = phi i32 [ %.pre, %.thread110 ], [ 0, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  ret i32 %i.du
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @cff_encoding_load(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef %2, ptr noundef %3, i64 noundef %4, i64 noundef %5) unnamed_addr #4 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 10 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !66
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %.loopexit151, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ugt i64 %5, 1
  br i1 %i.e, label %bb.c, label %bb.ad

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 532 ; 7 uses
  %i.h = add i64 %5, %4                           ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.f, i8 0, i64 1024, i1 false)
  store i64 %i.h, ptr %i.i, align 8, !tbaa !185
  %i.j = tail call i32 @FT_Stream_Seek(ptr noundef %3, i64 noundef %i.h) #18 ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !62
  %.not130 = icmp eq i32 %i.j, 0
  br i1 %.not130, label %bb.d, label %.loopexit151

bb.d:                                             ; preds = %bb.c
  %i.k = call zeroext i8 @FT_Stream_ReadByte(ptr noundef %3, ptr noundef nonnull %i.b) #18
  %i.l = zext i8 %i.k to i32
  store i32 %i.l, ptr %0, align 8, !tbaa !195
  %i.m = load i32, ptr %i.b, align 4, !tbaa !62   ; 2 uses
  %.not131 = icmp eq i32 %i.m, 0
  br i1 %.not131, label %bb.e, label %.loopexit151

bb.e:                                             ; preds = %bb.d
  %i.n = call zeroext i8 @FT_Stream_ReadByte(ptr noundef %3, ptr noundef nonnull %i.b) #18 ; 7 uses
  %i.o = zext i8 %i.n to i32                      ; 2 uses
  %i.p = load i32, ptr %i.b, align 4, !tbaa !62   ; 2 uses
  %.not132 = icmp eq i32 %i.p, 0
  br i1 %.not132, label %bb.f, label %.loopexit151

bb.f:                                             ; preds = %bb.e
  %i.q = load i32, ptr %0, align 8, !tbaa !195
  %i.r = and i32 %i.q, 127
  switch i32 %i.r, label %.loopexit151 [
    i32 0, label %bb.g
    i32 1, label %bb.m
  ]

bb.g:                                             ; preds = %bb.f
  %i.s = add nuw nsw i32 %i.o, 1
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.s, ptr %i.t, align 8, !tbaa !184
  %i.u = zext i8 %i.n to i64
  %i.v = call i32 @FT_Stream_EnterFrame(ptr noundef %3, i64 noundef %i.u) #18 ; 3 uses
  store i32 %i.v, ptr %i.b, align 4, !tbaa !62
  %.not136 = icmp eq i32 %i.v, 0
  br i1 %.not136, label %bb.h, label %.loopexit151

bb.h:                                             ; preds = %bb.g
  %.not137164 = icmp eq i8 %i.n, 0
  br i1 %.not137164, label %.thread, label %.lr.ph168.preheader

.lr.ph168.preheader:                              ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !460  ; 2 uses
  %i.y = zext i32 %2 to i64                       ; 3 uses
  %i.z = zext i8 %i.n to i64                      ; 2 uses
  %xtraiter244 = and i64 %i.z, 1
  %i.aa = icmp eq i8 %i.n, 1
  br i1 %i.aa, label %.lr.ph168.epil.preheader, label %.lr.ph168.preheader.new

.lr.ph168.preheader.new:                          ; preds = %.lr.ph168.preheader
  %unroll_iter = and i64 %i.z, 254
  br label %.lr.ph168

.lr.ph168:                                        ; preds = %bb.k, %.lr.ph168.preheader.new
  %indvars.iv188 = phi i64 [ 1, %.lr.ph168.preheader.new ], [ %indvars.iv.next189.1, %bb.k ] ; 5 uses
  %.0116166 = phi ptr [ %i.x, %.lr.ph168.preheader.new ], [ %i.al, %bb.k ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph168.preheader.new ], [ %niter.next.1, %bb.k ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.0116166, i64 1
  %i.ac = icmp samesign ult i64 %indvars.iv188, %i.y
  br i1 %i.ac, label %bb.i, label %.lr.ph168.1

bb.i:                                             ; preds = %.lr.ph168
  %i.ad = load i8, ptr %.0116166, align 1, !tbaa !167
  %i.ae = trunc i64 %indvars.iv188 to i16
  %i.af = zext i8 %i.ad to i64                    ; 2 uses
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.af
  store i16 %i.ae, ptr %i.ag, align 2, !tbaa !61
  %i.ah = load ptr, ptr %i.c, align 8, !tbaa !66
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %i.ah, i64 %indvars.iv188
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !61
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.af
  store i16 %i.aj, ptr %i.ak, align 2, !tbaa !61
  br label %.lr.ph168.1

.lr.ph168.1:                                      ; preds = %.lr.ph168, %bb.i
  %indvars.iv.next189 = add nuw nsw i64 %indvars.iv188, 1 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.0116166, i64 2 ; 2 uses
  %i.am = icmp samesign ult i64 %indvars.iv.next189, %i.y
  br i1 %i.am, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph168.1
  %i.an = load i8, ptr %i.ab, align 1, !tbaa !167
  %i.ao = trunc i64 %indvars.iv.next189 to i16
  %i.ap = zext i8 %i.an to i64                    ; 2 uses
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.ap
  store i16 %i.ao, ptr %i.aq, align 2, !tbaa !61
  %i.ar = load ptr, ptr %i.c, align 8, !tbaa !66
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %indvars.iv.next189
  %i.at = load i16, ptr %i.as, align 2, !tbaa !61
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.ap
  store i16 %i.at, ptr %i.au, align 2, !tbaa !61
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph168.1
  %indvars.iv.next189.1 = add nuw nsw i64 %indvars.iv188, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.thread.loopexit.unr-lcssa, label %.lr.ph168, !llvm.loop !621

.thread.loopexit.unr-lcssa:                       ; preds = %bb.k
  %lcmp.mod245.not = icmp eq i64 %xtraiter244, 0
  br i1 %lcmp.mod245.not, label %.thread, label %.lr.ph168.epil.preheader

.lr.ph168.epil.preheader:                         ; preds = %.thread.loopexit.unr-lcssa, %.lr.ph168.preheader
  %indvars.iv188.epil.init = phi i64 [ 1, %.lr.ph168.preheader ], [ %indvars.iv.next189.1, %.thread.loopexit.unr-lcssa ] ; 3 uses
  %.0116166.epil.init = phi ptr [ %i.x, %.lr.ph168.preheader ], [ %i.al, %.thread.loopexit.unr-lcssa ]
  %lcmp.mod246 = trunc i8 %i.n to i1
  call void @llvm.assume(i1 %lcmp.mod246)
  %i.av = icmp samesign ult i64 %indvars.iv188.epil.init, %i.y
  br i1 %i.av, label %bb.l, label %.thread

bb.l:                                             ; preds = %.lr.ph168.epil.preheader
  %i.aw = load i8, ptr %.0116166.epil.init, align 1, !tbaa !167
  %i.ax = trunc i64 %indvars.iv188.epil.init to i16
  %i.ay = zext i8 %i.aw to i64                    ; 2 uses
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.ay
  store i16 %i.ax, ptr %i.az, align 2, !tbaa !61
  %i.ba = load ptr, ptr %i.c, align 8, !tbaa !66
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %i.ba, i64 %indvars.iv188.epil.init
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !61
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.ay
  store i16 %i.bc, ptr %i.bd, align 2, !tbaa !61
  br label %.thread

.thread:                                          ; preds = %.thread.loopexit.unr-lcssa, %bb.l, %.lr.ph168.epil.preheader, %bb.h
  call void @FT_Stream_ExitFrame(ptr noundef %3) #18
  br label %.thread146

bb.m:                                             ; preds = %bb.f
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store i32 0, ptr %i.be, align 8, !tbaa !184
  %.not177 = icmp eq i8 %i.n, 0
  br i1 %.not177, label %.thread146, label %.lr.ph162.preheader

.lr.ph162.preheader:                              ; preds = %bb.m
  %i.bf = zext i32 %2 to i64                      ; 2 uses
  br label %.lr.ph162

.lr.ph162:                                        ; preds = %.lr.ph162.preheader, %._crit_edge
  %.0114160 = phi i32 [ %i.bp, %._crit_edge ], [ 1, %.lr.ph162.preheader ] ; 5 uses
  %.1119159 = phi i32 [ %i.cy, %._crit_edge ], [ 0, %.lr.ph162.preheader ]
  %i.bg = call zeroext i8 @FT_Stream_ReadByte(ptr noundef %3, ptr noundef nonnull %i.b) #18 ; 2 uses
  %i.bh = zext i8 %i.bg to i32                    ; 2 uses
  %i.bi = load i32, ptr %i.b, align 4, !tbaa !62  ; 2 uses
  %.not133 = icmp eq i32 %i.bi, 0
  br i1 %.not133, label %bb.n, label %.loopexit151

bb.n:                                             ; preds = %.lr.ph162
  %i.bj = call zeroext i8 @FT_Stream_ReadByte(ptr noundef %3, ptr noundef nonnull %i.b) #18
  %i.bk = load i32, ptr %i.b, align 4, !tbaa !62  ; 2 uses
  %.not134 = icmp eq i32 %i.bk, 0
  br i1 %.not134, label %bb.o, label %.loopexit151

bb.o:                                             ; preds = %bb.n
  %i.bl = zext i8 %i.bj to i32                    ; 2 uses
  %i.bm = add nuw nsw i32 %i.bl, 1                ; 3 uses
  %i.bn = load i32, ptr %i.be, align 8, !tbaa !184 ; 2 uses
  %.not135 = icmp ugt i32 %i.bn, %i.bl
  br i1 %.not135, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i32 %i.bm, ptr %i.be, align 8, !tbaa !184
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bo = phi i32 [ %i.bm, %bb.p ], [ %i.bn, %bb.o ]
  %i.bp = add i32 %i.bm, %.0114160                ; 3 uses
  %i.bq = icmp ult i32 %.0114160, %i.bp
  br i1 %i.bq, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.q
  %i.br = zext i32 %.0114160 to i64               ; 5 uses
  %wide.trip.count = zext i32 %i.bp to i64        ; 3 uses
  %i.bs = sub nsw i64 %wide.trip.count, %i.br
  %xtraiter = and i64 %i.bs, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.bt = icmp ult i32 %.0114160, %2
  br i1 %i.bt, label %bb.r, label %.lr.ph.prol.loopexit.unr-lcssa

bb.r:                                             ; preds = %.lr.ph.prol
  %i.bu = trunc i32 %.0114160 to i16
  %i.bv = zext i8 %i.bg to i64                    ; 2 uses
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.bv
  store i16 %i.bu, ptr %i.bw, align 2, !tbaa !61
  %i.bx = load ptr, ptr %i.c, align 8, !tbaa !66
  %i.by = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %i.br
  %i.bz = load i16, ptr %i.by, align 2, !tbaa !61
  %i.ca = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.bv
  store i16 %i.bz, ptr %i.ca, align 2, !tbaa !61
  br label %.lr.ph.prol.loopexit.unr-lcssa

.lr.ph.prol.loopexit.unr-lcssa:                   ; preds = %bb.r, %.lr.ph.prol
  %indvars.iv.next184.prol = add nuw nsw i64 %i.br, 1
  %i.cb = add nuw nsw i32 %i.bh, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv183.unr = phi i64 [ %i.br, %.lr.ph.preheader ], [ %indvars.iv.next184.prol, %.lr.ph.prol.loopexit.unr-lcssa ]
  %.0117157.unr = phi i32 [ %i.bh, %.lr.ph.preheader ], [ %i.cb, %.lr.ph.prol.loopexit.unr-lcssa ]
  %i.cc = add nsw i64 %wide.trip.count, -1
  %i.cd = icmp eq i64 %i.cc, %i.br
  br i1 %i.cd, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %bb.u
  %indvars.iv183 = phi i64 [ %indvars.iv.next184.1, %bb.u ], [ %indvars.iv183.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %.0117157 = phi i32 [ %i.cx, %bb.u ], [ %.0117157.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.ce = icmp samesign ult i64 %indvars.iv183, %i.bf
  %i.cf = icmp ult i32 %.0117157, 256
  %or.cond = select i1 %i.ce, i1 %i.cf, i1 false
  br i1 %or.cond, label %bb.s, label %.lr.ph.1

bb.s:                                             ; preds = %.lr.ph
  %i.cg = trunc i64 %indvars.iv183 to i16
  %i.ch = zext nneg i32 %.0117157 to i64          ; 2 uses
  %i.ci = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.ch
  store i16 %i.cg, ptr %i.ci, align 2, !tbaa !61
  %i.cj = load ptr, ptr %i.c, align 8, !tbaa !66
  %i.ck = getelementptr inbounds nuw [2 x i8], ptr %i.cj, i64 %indvars.iv183
  %i.cl = load i16, ptr %i.ck, align 2, !tbaa !61
  %i.cm = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.ch
  store i16 %i.cl, ptr %i.cm, align 2, !tbaa !61
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph, %bb.s
  %indvars.iv.next184 = add nuw nsw i64 %indvars.iv183, 1 ; 3 uses
  %i.cn = add i32 %.0117157, 1                    ; 2 uses
  %i.co = icmp samesign ult i64 %indvars.iv.next184, %i.bf
  %i.cp = icmp ult i32 %i.cn, 256
  %or.cond.1 = select i1 %i.co, i1 %i.cp, i1 false
  br i1 %or.cond.1, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.lr.ph.1
  %i.cq = trunc i64 %indvars.iv.next184 to i16
  %i.cr = zext nneg i32 %i.cn to i64              ; 2 uses
  %i.cs = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.cr
  store i16 %i.cq, ptr %i.cs, align 2, !tbaa !61
  %i.ct = load ptr, ptr %i.c, align 8, !tbaa !66
  %i.cu = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %indvars.iv.next184
  %i.cv = load i16, ptr %i.cu, align 2, !tbaa !61
  %i.cw = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.cr
  store i16 %i.cv, ptr %i.cw, align 2, !tbaa !61
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.lr.ph.1
  %indvars.iv.next184.1 = add nuw nsw i64 %indvars.iv183, 2 ; 2 uses
  %i.cx = add i32 %.0117157, 2
  %exitcond186.not.1 = icmp eq i64 %indvars.iv.next184.1, %wide.trip.count
  br i1 %exitcond186.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !622

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %bb.u, %bb.q
  %i.cy = add nuw nsw i32 %.1119159, 1            ; 2 uses
  %exitcond187.not = icmp eq i32 %i.cy, %i.o
  br i1 %exitcond187.not, label %._crit_edge163, label %.lr.ph162, !llvm.loop !623

._crit_edge163:                                   ; preds = %._crit_edge
  %i.cz = icmp ugt i32 %i.bo, 256
  br i1 %i.cz, label %bb.v, label %.thread146

bb.v:                                             ; preds = %._crit_edge163
  store i32 256, ptr %i.be, align 8, !tbaa !184
  br label %.thread146

.thread146:                                       ; preds = %bb.m, %._crit_edge163, %bb.v, %.thread
  %i.da = load i32, ptr %0, align 8, !tbaa !195
  %i.db = and i32 %i.da, 128
  %.not138 = icmp eq i32 %i.db, 0
  br i1 %.not138, label %.thread146..loopexit151_crit_edge, label %bb.w

.thread146..loopexit151_crit_edge:                ; preds = %.thread146
  %.pre = load i32, ptr %i.b, align 4, !tbaa !62
  br label %.loopexit151

bb.w:                                             ; preds = %.thread146
  %i.dc = call zeroext i8 @FT_Stream_ReadByte(ptr noundef %3, ptr noundef nonnull %i.b) #18 ; 2 uses
  %i.dd = zext i8 %i.dc to i32
  %i.de = load i32, ptr %i.b, align 4, !tbaa !62  ; 2 uses
  %.not139 = icmp eq i32 %i.de, 0
  %i.df = icmp ne i8 %i.dc, 0
  %or.cond176 = select i1 %.not139, i1 %i.df, i1 false
  br i1 %or.cond176, label %.lr.ph173, label %.loopexit151

.lr.ph173:                                        ; preds = %bb.w
  %.not178 = icmp eq i32 %2, 0
  %wide.trip.count196 = zext i32 %2 to i64
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph173, %.loopexit
  %.2120172 = phi i32 [ 0, %.lr.ph173 ], [ %i.ds, %.loopexit ]
  %i.dg = call zeroext i8 @FT_Stream_ReadByte(ptr noundef %3, ptr noundef nonnull %i.b) #18
  %i.dh = load i32, ptr %i.b, align 4, !tbaa !62  ; 2 uses
  %.not140 = icmp eq i32 %i.dh, 0
  br i1 %.not140, label %bb.y, label %.loopexit151

end_hunk_5
