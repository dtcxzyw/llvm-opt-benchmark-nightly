Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/unames?download=true
inline.NumInlined: 47
inline.NumDeleted: 20
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 10
begin_hunk_0_@uchar_swapNames_78:bb.a
  %i.dl = icmp eq ptr %i.dk, null
  br i1 %i.dl, label %bb.q, label %.preheader305

.preheader305:                                    ; preds = %bb.p
  %invariant.umin = tail call i32 @llvm.umin.i32(i32 %i.ct, i32 256) ; 2 uses
  %.not348 = icmp eq i16 %i.cn, 0
  br i1 %.not348, label %.preheader, label %.lr.ph318.preheader

.lr.ph318.preheader:                              ; preds = %.preheader305
  %wide.trip.count369 = zext nneg i32 %invariant.umin to i64
  br label %.lr.ph318

bb.q:                                             ; preds = %bb.p
  tail call void (ptr, ptr, ...) @udata_printError_78(ptr noundef nonnull %0, ptr noundef nonnull @.str.2, i32 noundef %i.ct)
  store i32 7, ptr %4, align 4, !tbaa !11
  br label %.critedge298

.preheader:                                       ; preds = %.lr.ph318, %.preheader305
  %.3.lcssa = phi i32 [ 0, %.preheader305 ], [ %invariant.umin, %.lr.ph318 ] ; 2 uses
  %i.dm = icmp samesign ult i32 %.3.lcssa, %i.ct
  br i1 %i.dm, label %.lr.ph321.preheader, label %._crit_edge322

.lr.ph321.preheader:                              ; preds = %.preheader
  %i.dn = zext nneg i32 %.3.lcssa to i64
  %wide.trip.count374 = zext i16 %i.cn to i64
  br label %.lr.ph321

.lr.ph318:                                        ; preds = %.lr.ph318.preheader, %.lr.ph318
  %indvars.iv366 = phi i64 [ 0, %.lr.ph318.preheader ], [ %indvars.iv.next367, %.lr.ph318 ] ; 3 uses
  %i.do = load ptr, ptr %i.co, align 8, !tbaa !102
  %i.dp = getelementptr inbounds nuw [2 x i8], ptr %i.cr, i64 %indvars.iv366
  %i.dq = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv366
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !25
  %i.ds = zext i8 %i.dr to i64
  %i.dt = getelementptr inbounds nuw [2 x i8], ptr %i.dk, i64 %i.ds
  %i.du = tail call noundef i32 %i.do(ptr noundef nonnull %0, ptr noundef nonnull %i.dp, i32 noundef 2, ptr noundef nonnull %i.dt, ptr noundef nonnull %4) ; 0 uses
  %indvars.iv.next367 = add nuw nsw i64 %indvars.iv366, 1 ; 2 uses
  %exitcond370.not = icmp eq i64 %indvars.iv.next367, %wide.trip.count369
  br i1 %exitcond370.not, label %.preheader, label %.lr.ph318, !llvm.loop !93

.lr.ph321:                                        ; preds = %.lr.ph321.preheader, %.lr.ph321
  %indvars.iv371 = phi i64 [ %i.dn, %.lr.ph321.preheader ], [ %indvars.iv.next372, %.lr.ph321 ] ; 4 uses
  %i.dv = load ptr, ptr %i.co, align 8, !tbaa !102
  %i.dw = getelementptr inbounds nuw [2 x i8], ptr %i.cr, i64 %indvars.iv371
  %i.dx = and i64 %indvars.iv371, 2147483392
  %i.dy = getelementptr inbounds nuw [2 x i8], ptr %i.dk, i64 %i.dx
  %i.dz = and i64 %indvars.iv371, 255
  %i.ea = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.dz
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !25
  %i.ec = zext i8 %i.eb to i64
  %i.ed = getelementptr inbounds nuw [2 x i8], ptr %i.dy, i64 %i.ec
  %i.ee = tail call noundef i32 %i.dv(ptr noundef nonnull %0, ptr noundef nonnull %i.dw, i32 noundef 2, ptr noundef nonnull %i.ed, ptr noundef nonnull %4) ; 0 uses
  %indvars.iv.next372 = add nuw nsw i64 %indvars.iv371, 1 ; 2 uses
  %exitcond375.not = icmp eq i64 %indvars.iv.next372, %wide.trip.count374
  br i1 %exitcond375.not, label %._crit_edge322, label %.lr.ph321, !llvm.loop !94

._crit_edge322:                                   ; preds = %.lr.ph321, %.preheader
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.cs, ptr nonnull align 2 %i.dk, i64 %i.dj, i1 false)
  tail call void @uprv_free_78(ptr noundef nonnull %i.dk)
  %i.ef = zext i32 %i.bw to i64                   ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ef
  %i.eh = sub i32 %i.ca, %i.bw
  %i.ei = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ef
  %i.ej = tail call i32 @udata_swapInvStringBlock_78(ptr noundef nonnull %0, ptr noundef nonnull %i.eg, i32 noundef %i.eh, ptr noundef %i.ei, ptr noundef nonnull %4) ; 0 uses
  %i.ek = load i32, ptr %4, align 4, !tbaa !11
  %i.el = icmp slt i32 %i.ek, 1
  br i1 %i.el, label %bb.s, label %bb.r

bb.r:                                             ; preds = %._crit_edge322
  tail call void (ptr, ptr, ...) @udata_printError_78(ptr noundef nonnull %0, ptr noundef nonnull @.str.3)
  br label %.critedge298

bb.s:                                             ; preds = %._crit_edge322
  %i.em = load ptr, ptr %i.ck, align 8, !tbaa !100
  %i.en = zext i32 %i.ca to i64                   ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.en ; 2 uses
  %i.ep = load i16, ptr %i.eo, align 2, !tbaa !29
  %i.eq = tail call noundef zeroext i16 %i.em(i16 noundef zeroext %i.ep)
  %i.er = zext i16 %i.eq to i32
  %i.es = load ptr, ptr %i.co, align 8, !tbaa !102
  %i.et = mul nuw nsw i32 %i.er, 6
  %i.eu = add nuw nsw i32 %i.et, 2
  %i.ev = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.en
  %i.ew = tail call noundef i32 %i.es(ptr noundef nonnull %0, ptr noundef nonnull %i.eo, i32 noundef %i.eu, ptr noundef %i.ev, ptr noundef nonnull %4) ; 0 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !38
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !39
  %.not291 = icmp eq i8 %i.ey, %i.fa
  br i1 %.not291, label %bb.x, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #11
  %i.fb = sub i32 %i.aw, %i.ce                    ; 2 uses
  %i.fc = icmp ugt i32 %i.fb, 32
  br i1 %i.fc, label %.lr.ph335, label %._crit_edge336

.lr.ph335:                                        ; preds = %bb.t
  %i.fd = zext i32 %i.ce to i64                   ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.fd
  %i.ff = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.fd
  %i.fg = getelementptr inbounds nuw i8, ptr %i.d, i64 62
  %i.fh = getelementptr inbounds nuw i8, ptr %i.e, i64 62
  br label %bb.u

.loopexit304:                                     ; preds = %bb.w, %bb.u
  %.1260.lcssa = phi ptr [ %i.fj, %bb.u ], [ %.2261, %bb.w ]
  %.1.lcssa = phi ptr [ %i.fo, %bb.u ], [ %.2, %bb.w ]
  %i.fi = icmp ugt i32 %i.fv, 32
  br i1 %i.fi, label %bb.u, label %._crit_edge336, !llvm.loop !95

bb.u:                                             ; preds = %.lr.ph335, %.loopexit304
  %.0333 = phi ptr [ %i.fe, %.lr.ph335 ], [ %.1.lcssa, %.loopexit304 ]
  %.0259332 = phi ptr [ %i.ff, %.lr.ph335 ], [ %.1260.lcssa, %.loopexit304 ] ; 2 uses
  %.0263331 = phi i32 [ %i.fb, %.lr.ph335 ], [ %i.fv, %.loopexit304 ]
  %i.fj = call fastcc noundef ptr @_ZN6icu_78L18expandGroupLengthsEPKhPtS2_(ptr noundef %.0259332, ptr noundef %i.d, ptr noundef %i.e) ; 3 uses
  %i.fk = ptrtoint ptr %i.fj to i64
  %i.fl = ptrtoint ptr %.0259332 to i64
  %i.fm = sub i64 %i.fk, %i.fl                    ; 2 uses
  %i.fn = trunc i64 %i.fm to i32
  %i.fo = getelementptr inbounds i8, ptr %.0333, i64 %i.fm ; 2 uses
  %i.fp = load i16, ptr %i.fg, align 2, !tbaa !29
  %i.fq = zext i16 %i.fp to i32
  %i.fr = load i16, ptr %i.fh, align 2, !tbaa !29
  %i.fs = zext i16 %i.fr to i32
  %i.ft = add nuw nsw i32 %i.fs, %i.fq            ; 3 uses
  %i.fu = add i32 %i.ft, %i.fn
  %i.fv = sub i32 %.0263331, %i.fu                ; 2 uses
  %.not295323 = icmp eq i32 %i.ft, 0
  br i1 %.not295323, label %.loopexit304, label %.lr.ph328

.lr.ph328:                                        ; preds = %bb.u, %bb.w
  %.1326 = phi ptr [ %.2, %bb.w ], [ %i.fo, %bb.u ] ; 3 uses
  %.1260325 = phi ptr [ %.2261, %bb.w ], [ %i.fj, %bb.u ] ; 3 uses
  %.1266324 = phi i32 [ %i.gk, %bb.w ], [ %i.ft, %bb.u ]
  %i.fw = getelementptr inbounds nuw i8, ptr %.1260325, i64 1 ; 2 uses
  %i.fx = load i8, ptr %.1260325, align 1, !tbaa !25
  %i.fy = zext i8 %i.fx to i64                    ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.fy
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !25
  %i.gb = getelementptr inbounds nuw i8, ptr %.1326, i64 1 ; 2 uses
  store i8 %i.ga, ptr %.1326, align 1, !tbaa !25
  %i.gc = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.fy
  %i.gd = load i16, ptr %i.gc, align 2, !tbaa !29
  %.not296 = icmp eq i16 %i.gd, -2
  br i1 %.not296, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.lr.ph328
  %i.ge = getelementptr inbounds nuw i8, ptr %.1260325, i64 2
  %i.gf = load i8, ptr %i.fw, align 1, !tbaa !25
  %i.gg = zext i8 %i.gf to i64
  %i.gh = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.gg
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !25
  %i.gj = getelementptr inbounds nuw i8, ptr %.1326, i64 2
  store i8 %i.gi, ptr %i.gb, align 1, !tbaa !25
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph328, %bb.v
  %.sink = phi i32 [ -2, %bb.v ], [ -1, %.lr.ph328 ]
  %.2261 = phi ptr [ %i.ge, %bb.v ], [ %i.fw, %.lr.ph328 ] ; 2 uses
  %.2 = phi ptr [ %i.gj, %bb.v ], [ %i.gb, %.lr.ph328 ] ; 2 uses
  %i.gk = add i32 %.1266324, %.sink               ; 2 uses
  %.not295 = icmp eq i32 %i.gk, 0
  br i1 %.not295, label %.loopexit304, label %.lr.ph328, !llvm.loop !96

._crit_edge336:                                   ; preds = %.loopexit304, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  br label %bb.x

bb.x:                                             ; preds = %._crit_edge336, %bb.s
  %i.gl = load ptr, ptr %i.as, align 8, !tbaa !99
  %i.gm = zext nneg i32 %i.aw to i64              ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.gm ; 2 uses
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !16
  %i.gp = tail call noundef i32 %i.gl(i32 noundef %i.go) ; 2 uses
  %i.gq = load ptr, ptr %i.cf, align 8, !tbaa !101
  %i.gr = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.gm
  %i.gs = tail call noundef i32 %i.gq(ptr noundef nonnull %0, ptr noundef nonnull %i.gn, i32 noundef 4, ptr noundef %i.gr, ptr noundef nonnull %4) ; 0 uses
  %i.gt = add nuw i32 %i.aw, 4                    ; 2 uses
  %.not349 = icmp eq i32 %i.gp, 0
  br i1 %.not349, label %._crit_edge341, label %.lr.ph340

.lr.ph340:                                        ; preds = %bb.x
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph340, %bb.ah
  %.5338 = phi i32 [ 0, %.lr.ph340 ], [ %i.io, %bb.ah ] ; 4 uses
  %.1272337 = phi i32 [ %i.gt, %.lr.ph340 ], [ %i.he, %bb.ah ] ; 3 uses
  %i.gv = icmp ugt i32 %.1272337, %i.aq
  br i1 %i.gv, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  tail call void (ptr, ptr, ...) @udata_printError_78(ptr noundef nonnull %0, ptr noundef nonnull @.str.4, i32 noundef %i.aq, i32 noundef %.5338)
  store i32 8, ptr %4, align 4, !tbaa !11
  br label %.critedge298

bb.aa:                                            ; preds = %bb.y
  %i.gw = zext nneg i32 %.1272337 to i64          ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.gw ; 6 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.gw ; 4 uses
  %i.gz = load ptr, ptr %i.ck, align 8, !tbaa !100
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gx, i64 10 ; 2 uses
  %i.hb = load i16, ptr %i.ha, align 2, !tbaa !21
  %i.hc = tail call noundef zeroext i16 %i.gz(i16 noundef zeroext %i.hb)
  %i.hd = zext i16 %i.hc to i32                   ; 2 uses
  %i.he = add nuw i32 %.1272337, %i.hd            ; 2 uses
  %i.hf = load ptr, ptr %i.cf, align 8, !tbaa !101
  %i.hg = tail call noundef i32 %i.hf(ptr noundef nonnull %0, ptr noundef nonnull %i.gx, i32 noundef 8, ptr noundef %i.gy, ptr noundef nonnull %4) ; 0 uses
  %i.hh = load ptr, ptr %i.co, align 8, !tbaa !102
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gy, i64 10
  %i.hj = tail call noundef i32 %i.hh(ptr noundef nonnull %0, ptr noundef nonnull %i.ha, i32 noundef 2, ptr noundef nonnull %i.hi, ptr noundef nonnull %4) ; 0 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  %i.hl = load i8, ptr %i.hk, align 4, !tbaa !26  ; 2 uses
  switch i8 %i.hl, label %bb.ag [
    i8 0, label %bb.ab
    i8 1, label %bb.ad
  ]

bb.ab:                                            ; preds = %bb.aa
  %i.hm = load ptr, ptr %i.gu, align 8, !tbaa !40
  %i.hn = getelementptr inbounds nuw i8, ptr %i.gx, i64 12 ; 2 uses
  %i.ho = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.hn) #12
  %i.hp = trunc i64 %i.ho to i32
  %i.hq = getelementptr inbounds nuw i8, ptr %i.gy, i64 12
  %i.hr = tail call noundef i32 %i.hm(ptr noundef nonnull %0, ptr noundef nonnull %i.hn, i32 noundef %i.hp, ptr noundef nonnull %i.hq, ptr noundef nonnull %4) ; 0 uses
  %i.hs = load i32, ptr %4, align 4, !tbaa !11
  %i.ht = icmp slt i32 %i.hs, 1
  br i1 %i.ht, label %bb.ah, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  tail call void (ptr, ptr, ...) @udata_printError_78(ptr noundef nonnull %0, ptr noundef nonnull @.str.5, i32 noundef %.5338)
  br label %.critedge298

bb.ad:                                            ; preds = %bb.aa
  %i.hu = getelementptr inbounds nuw i8, ptr %i.gx, i64 9
  %i.hv = load i8, ptr %i.hu, align 1, !tbaa !27  ; 2 uses
  %i.hw = zext i8 %i.hv to i32
  %i.hx = getelementptr inbounds nuw i8, ptr %i.gx, i64 12 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.gy, i64 12 ; 2 uses
  %i.hz = load ptr, ptr %i.co, align 8, !tbaa !102
  %i.ia = shl nuw nsw i32 %i.hw, 1
  %i.ib = tail call noundef i32 %i.hz(ptr noundef nonnull %0, ptr noundef nonnull %i.hx, i32 noundef %i.ia, ptr noundef nonnull %i.hy, ptr noundef nonnull %4) ; 0 uses
  %i.ic = zext i8 %i.hv to i64                    ; 2 uses
  %.idx = shl nuw nsw i64 %i.ic, 1                ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.hx, i64 %.idx ; 2 uses
  %i.ie = getelementptr inbounds nuw [2 x i8], ptr %i.hy, i64 %i.ic
  %5 = trunc nuw nsw i64 %.idx to i32             ; 2 uses
  %.neg306 = add nsw i32 %i.hd, -12               ; 2 uses
  %.not292419 = icmp eq i32 %.neg306, %5
  br i1 %.not292419, label %.critedge, label %.lr.ph422

.lr.ph422:                                        ; preds = %bb.ad
  %i.if = sub nsw i32 %.neg306, %5
  %i.ig = zext i32 %i.if to i64
  br label %bb.af

bb.ae:                                            ; preds = %bb.af
  %.not292 = icmp eq i64 %i.ih, 0
  br i1 %.not292, label %.critedge, label %bb.af, !llvm.loop !97

bb.af:                                            ; preds = %.lr.ph422, %bb.ae
  %indvars.iv376420 = phi i64 [ %i.ig, %.lr.ph422 ], [ %i.ih, %bb.ae ] ; 2 uses
  %i.ih = add nsw i64 %indvars.iv376420, -1       ; 3 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.id, i64 %i.ih
  %i.ij = load i8, ptr %i.ii, align 1, !tbaa !25
  %.not293 = icmp eq i8 %i.ij, 0
  br i1 %.not293, label %.critedge.split.loop.exit407, label %bb.ae, !llvm.loop !97

.critedge.split.loop.exit407:                     ; preds = %bb.af
  %i.ik = trunc nuw i64 %indvars.iv376420 to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.ae, %bb.ad, %.critedge.split.loop.exit407
  %.1264.lcssa = phi i32 [ %i.ik, %.critedge.split.loop.exit407 ], [ 0, %bb.ad ], [ 0, %bb.ae ]
  %i.il = load ptr, ptr %i.gu, align 8, !tbaa !40
  %i.im = tail call noundef i32 %i.il(ptr noundef nonnull %0, ptr noundef nonnull %i.id, i32 noundef %.1264.lcssa, ptr noundef nonnull %i.ie, ptr noundef nonnull %4) ; 0 uses
  br label %bb.ah

bb.ag:                                            ; preds = %bb.aa
  %i.in = zext i8 %i.hl to i32
  tail call void (ptr, ptr, ...) @udata_printError_78(ptr noundef nonnull %0, ptr noundef nonnull @.str.6, i32 noundef %i.in, i32 noundef %.5338)
  store i32 16, ptr %4, align 4, !tbaa !11
  br label %.critedge298

bb.ah:                                            ; preds = %.critedge, %bb.ab
  %i.io = add nuw i32 %.5338, 1                   ; 2 uses
  %exitcond379.not = icmp eq i32 %i.io, %i.gp
  br i1 %exitcond379.not, label %._crit_edge341, label %bb.y, !llvm.loop !98

._crit_edge341:                                   ; preds = %bb.ah, %bb.x
  %.1272.lcssa = phi i32 [ %i.gt, %bb.x ], [ %i.he, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %.loopexit

.loopexit:                                        ; preds = %bb.l, %bb.k, %._crit_edge341
  %.3274 = phi i32 [ %.1272.lcssa, %._crit_edge341 ], [ %i.bi, %bb.k ], [ %i.br, %bb.l ]
  %i.ip = add nsw i32 %.3274, %i.f
  br label %bb.ai

.critedge298:                                     ; preds = %bb.ac, %bb.ag, %bb.z, %bb.r, %bb.q, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.ai

bb.ai:                                            ; preds = %.critedge298, %bb.a, %bb.b, %.loopexit, %bb.j, %._crit_edge381
  %.1277 = phi i32 [ 0, %._crit_edge381 ], [ %i.ip, %.loopexit ], [ 0, %.critedge298 ], [ 0, %bb.j ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.1277
}

declare i32 @udata_swapDataHeader_78(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @udata_printError_78(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare signext i16 @udata_readInt16_78(ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL12makeTokenMapPK12UDataSwapperPstPhP10UErrorCode(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1, i16 noundef zeroext %2, ptr nofree noundef nonnull captures(none) %3, ptr noundef nonnull %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 7 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  %i.d = load i32, ptr %4, align 4, !tbaa !11
  %i.e = icmp slt i32 %i.d, 1
  br i1 %i.e, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !38
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.i = load i8, ptr %i.h, align 1, !tbaa !39
  %i.j = icmp eq i8 %i.g, %i.i
  br i1 %i.j, label %vector.body, label %bb.c

vector.body:                                      ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16
  store <16 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, ptr %3, align 1, !tbaa !25
  store <16 x i8> <i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31>, ptr %i.k, align 1, !tbaa !25
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 48
  store <16 x i8> <i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47>, ptr %i.l, align 1, !tbaa !25
  store <16 x i8> <i8 48, i8 49, i8 50, i8 51, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 62, i8 63>, ptr %i.m, align 1, !tbaa !25
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 80
  store <16 x i8> <i8 64, i8 65, i8 66, i8 67, i8 68, i8 69, i8 70, i8 71, i8 72, i8 73, i8 74, i8 75, i8 76, i8 77, i8 78, i8 79>, ptr %i.n, align 1, !tbaa !25
  store <16 x i8> <i8 80, i8 81, i8 82, i8 83, i8 84, i8 85, i8 86, i8 87, i8 88, i8 89, i8 90, i8 91, i8 92, i8 93, i8 94, i8 95>, ptr %i.o, align 1, !tbaa !25
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 112
  store <16 x i8> <i8 96, i8 97, i8 98, i8 99, i8 100, i8 101, i8 102, i8 103, i8 104, i8 105, i8 106, i8 107, i8 108, i8 109, i8 110, i8 111>, ptr %i.p, align 1, !tbaa !25
  store <16 x i8> <i8 112, i8 113, i8 114, i8 115, i8 116, i8 117, i8 118, i8 119, i8 120, i8 121, i8 122, i8 123, i8 124, i8 125, i8 126, i8 127>, ptr %i.q, align 1, !tbaa !25
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 144
  store <16 x i8> <i8 -128, i8 -127, i8 -126, i8 -125, i8 -124, i8 -123, i8 -122, i8 -121, i8 -120, i8 -119, i8 -118, i8 -117, i8 -116, i8 -115, i8 -114, i8 -113>, ptr %i.r, align 1, !tbaa !25
  store <16 x i8> <i8 -112, i8 -111, i8 -110, i8 -109, i8 -108, i8 -107, i8 -106, i8 -105, i8 -104, i8 -103, i8 -102, i8 -101, i8 -100, i8 -99, i8 -98, i8 -97>, ptr %i.s, align 1, !tbaa !25
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 160
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 176
  store <16 x i8> <i8 -96, i8 -95, i8 -94, i8 -93, i8 -92, i8 -91, i8 -90, i8 -89, i8 -88, i8 -87, i8 -86, i8 -85, i8 -84, i8 -83, i8 -82, i8 -81>, ptr %i.t, align 1, !tbaa !25
  store <16 x i8> <i8 -80, i8 -79, i8 -78, i8 -77, i8 -76, i8 -75, i8 -74, i8 -73, i8 -72, i8 -71, i8 -70, i8 -69, i8 -68, i8 -67, i8 -66, i8 -65>, ptr %i.u, align 1, !tbaa !25
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 192
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 208
  store <16 x i8> <i8 -64, i8 -63, i8 -62, i8 -61, i8 -60, i8 -59, i8 -58, i8 -57, i8 -56, i8 -55, i8 -54, i8 -53, i8 -52, i8 -51, i8 -50, i8 -49>, ptr %i.v, align 1, !tbaa !25
  store <16 x i8> <i8 -48, i8 -47, i8 -46, i8 -45, i8 -44, i8 -43, i8 -42, i8 -41, i8 -40, i8 -39, i8 -38, i8 -37, i8 -36, i8 -35, i8 -34, i8 -33>, ptr %i.w, align 1, !tbaa !25
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 224
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 240
  store <16 x i8> <i8 -32, i8 -31, i8 -30, i8 -29, i8 -28, i8 -27, i8 -26, i8 -25, i8 -24, i8 -23, i8 -22, i8 -21, i8 -20, i8 -19, i8 -18, i8 -17>, ptr %i.x, align 1, !tbaa !25
  store <16 x i8> <i8 -16, i8 -15, i8 -14, i8 -13, i8 -12, i8 -11, i8 -10, i8 -9, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1>, ptr %i.y, align 1, !tbaa !25
  br label %.loopexit

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %3, i8 0, i64 256, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.a, i8 0, i64 256, i1 false)
  %i.z = icmp ugt i16 %2, 1
  br i1 %i.z, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.c
  %spec.store.select = tail call i16 @llvm.umin.i16(i16 %2, i16 256)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 72
  %wide.trip.count = zext nneg i16 %spec.store.select to i64 ; 2 uses
  br label %bb.d

.lr.ph47.preheader:                               ; preds = %bb.h
  %i.ab = add nsw i64 %wide.trip.count, -1        ; 3 uses
  %xtraiter = and i64 %i.ab, 1
  %i.ac = icmp eq i16 %2, 2
  br i1 %i.ac, label %.lr.ph47.epil.preheader, label %.lr.ph47.preheader.new

.lr.ph47.preheader.new:                           ; preds = %.lr.ph47.preheader
  %unroll_iter = and i64 %i.ab, -2
  br label %.lr.ph47

bb.d:                                             ; preds = %.lr.ph, %bb.h
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 4 uses
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !29
  %i.af = icmp eq i16 %i.ae, -1
  br i1 %i.af, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.ag = trunc i64 %indvars.iv to i8
  store i8 %i.ag, ptr %i.b, align 1, !tbaa !25
  %i.ah = load ptr, ptr %i.aa, align 8, !tbaa !40
  %i.ai = call noundef i32 %i.ah(ptr noundef %0, ptr noundef nonnull %i.b, i32 noundef 1, ptr noundef nonnull %i.c, ptr noundef nonnull %4) ; 0 uses
  %i.aj = load i32, ptr %4, align 4, !tbaa !11
  %i.ak = icmp slt i32 %i.aj, 1
  br i1 %i.ak, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.al = trunc nuw nsw i64 %indvars.iv to i32
  %i.am = and i32 %i.al, 65535
  %i.an = load i8, ptr %i.f, align 1, !tbaa !38
  %i.ao = zext i8 %i.an to i32
  call void (ptr, ptr, ...) @udata_printError_78(ptr noundef nonnull %0, ptr noundef nonnull @.str.43, i32 noundef %i.am, i32 noundef %i.ao)
  br label %.loopexit

bb.g:                                             ; preds = %bb.e
  %i.ap = load i8, ptr %i.c, align 1, !tbaa !25   ; 2 uses
  %i.aq = load i8, ptr %i.b, align 1, !tbaa !25
  %i.ar = zext i8 %i.aq to i64
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 %i.ar
  store i8 %i.ap, ptr %i.as, align 1, !tbaa !25
  %i.at = zext i8 %i.ap to i64
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.at
  store i8 1, ptr %i.au, align 1, !tbaa !25
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.g
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph47.preheader, label %bb.d, !llvm.loop !103

.lr.ph47:                                         ; preds = %bb.k, %.lr.ph47.preheader.new
  %indvars.iv52 = phi i64 [ 1, %.lr.ph47.preheader.new ], [ %indvars.iv.next53.1, %bb.k ] ; 3 uses
  %.046 = phi i16 [ 1, %.lr.ph47.preheader.new ], [ %.2.1, %bb.k ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph47.preheader.new ], [ %niter.next.1, %bb.k ]
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv52 ; 2 uses
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !25
  %i.ax = icmp eq i8 %i.aw, 0
  br i1 %i.ax, label %.preheader40, label %.lr.ph47.1

.preheader40:                                     ; preds = %.lr.ph47, %.preheader40
  %.1 = phi i16 [ %i.bb, %.preheader40 ], [ %.046, %.lr.ph47 ] ; 3 uses
  %i.ay = zext i16 %.1 to i64
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !25
  %.not38 = icmp eq i8 %i.ba, 0
end_hunk_0
