Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/dpcm?download=true
inline.NumInlined: 7
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@dpcm_decode_frame:bb.a
  store i16 %i.cv, ptr %.1289, align 2, !tbaa !36
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.0.2287, i64 4
  %i.da = load i16, ptr %i.cu, align 1, !tbaa !43 ; 2 uses
  %i.db = sext i16 %i.da to i32
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv313
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 4
  store i32 %i.db, ptr %i.dd, align 4, !tbaa !30
  %i.de = getelementptr inbounds nuw i8, ptr %.1289, i64 4
  store i16 %i.da, ptr %i.cy, align 2, !tbaa !36
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.0.2287, i64 6
  %i.dg = load i16, ptr %i.cz, align 1, !tbaa !43 ; 2 uses
  %i.dh = sext i16 %i.dg to i32
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv313
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  store i32 %i.dh, ptr %i.dj, align 4, !tbaa !30
  %i.dk = getelementptr inbounds nuw i8, ptr %.1289, i64 6
  store i16 %i.dg, ptr %i.de, align 2, !tbaa !36
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.0.2287, i64 8 ; 2 uses
  %i.dm = load i16, ptr %i.df, align 1, !tbaa !43 ; 2 uses
  %i.dn = sext i16 %i.dm to i32
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv313
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 12
  store i32 %i.dn, ptr %i.dp, align 4, !tbaa !30
  %i.dq = getelementptr inbounds nuw i8, ptr %.1289, i64 8 ; 2 uses
  store i16 %i.dm, ptr %i.dk, align 2, !tbaa !36
  %indvars.iv.next314.3 = add nuw nsw i64 %indvars.iv313, 4 ; 2 uses
  %exitcond317.not.3 = icmp eq i64 %indvars.iv.next314.3, %wide.trip.count316
  br i1 %exitcond317.not.3, label %.preheader, label %.lr.ph291, !llvm.loop !55

.lr.ph297:                                        ; preds = %.preheader, %.lr.ph297
  %.2296 = phi ptr [ %i.ed, %.lr.ph297 ], [ %.1.lcssa, %.preheader ] ; 2 uses
  %.2195295 = phi i32 [ %i.ee, %.lr.ph297 ], [ 0, %.preheader ] ; 2 uses
  %.sroa.0.3294 = phi ptr [ %i.dr, %.lr.ph297 ], [ %.sroa.0.2.lcssa, %.preheader ] ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.0.3294, i64 1
  %i.ds = load i8, ptr %.sroa.0.3294, align 1, !tbaa !43
  %i.dt = zext i8 %i.ds to i64
  %i.du = getelementptr inbounds nuw [2 x i8], ptr @interplay_delta_table, i64 %i.dt
  %i.dv = load i16, ptr %i.du, align 2, !tbaa !36
  %i.dw = sext i16 %i.dv to i32
  %i.dx = sext i32 %.2195295 to i64
  %i.dy = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.dx ; 2 uses
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !30
  %i.ea = add nsw i32 %i.dz, %i.dw
  %i.eb = tail call i32 @llvm.smax.i32(i32 %i.ea, i32 -32768)
  %i.ec = tail call i32 @llvm.smin.i32(i32 %i.eb, i32 32767) ; 2 uses
  %.0.i219 = trunc nsw i32 %i.ec to i16
  store i32 %i.ec, ptr %i.dy, align 4, !tbaa !30
  %i.ed = getelementptr inbounds nuw i8, ptr %.2296, i64 2 ; 2 uses
  store i16 %.0.i219, ptr %.2296, align 2, !tbaa !36
  %i.ee = xor i32 %.2195295, %i.i
  %i.ef = icmp ult ptr %i.ed, %i.am
  br i1 %i.ef, label %.lr.ph297, label %.loopexit, !llvm.loop !56

bb.p:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store i64 17179869188, ptr %i.b, align 8
  %i.eg = load i32, ptr %i.g, align 4, !tbaa !29  ; 3 uses
  %i.eh = icmp sgt i32 %i.eg, 0
  br i1 %i.eh, label %.lr.ph282.preheader, label %.lr.ph286.preheader

.lr.ph282.preheader:                              ; preds = %bb.p
  %wide.trip.count = zext nneg i32 %i.eg to i64   ; 3 uses
  %min.iters.check = icmp ult i32 %i.eg, 8
  br i1 %min.iters.check, label %.lr.ph282.preheader377, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph282.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 4 uses
  %i.ei = shl nuw nsw i64 %n.vec, 1
  %i.ej = getelementptr i8, ptr %i.l, i64 %i.ei   ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ek = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %i.l, i64 %i.ek ; 2 uses
  %i.el = getelementptr i8, ptr %next.gep, i64 8
  %wide.load = load <4 x i16>, ptr %next.gep, align 1, !tbaa !43
  %wide.load356 = load <4 x i16>, ptr %i.el, align 1, !tbaa !43
  %i.em = sext <4 x i16> %wide.load to <4 x i32>
  %i.en = sext <4 x i16> %wide.load356 to <4 x i32>
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  store <4 x i32> %i.em, ptr %i.eo, align 4, !tbaa !30
  store <4 x i32> %i.en, ptr %i.ep, align 4, !tbaa !30
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.eq = icmp eq i64 %index.next, %n.vec
  br i1 %i.eq, label %middle.block, label %vector.body, !llvm.loop !57

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.lr.ph286.preheader, label %.lr.ph282.preheader377

.lr.ph282.preheader377:                           ; preds = %.lr.ph282.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph282.preheader ], [ %n.vec, %middle.block ]
  %.sroa.0.4280.ph = phi ptr [ %i.l, %.lr.ph282.preheader ], [ %i.ej, %middle.block ]
  br label %.lr.ph282

.lr.ph282:                                        ; preds = %.lr.ph282.preheader377, %.lr.ph282
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph282 ], [ %indvars.iv.ph, %.lr.ph282.preheader377 ] ; 2 uses
  %.sroa.0.4280 = phi ptr [ %i.er, %.lr.ph282 ], [ %.sroa.0.4280.ph, %.lr.ph282.preheader377 ] ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.0.4280, i64 2 ; 2 uses
  %i.es = load i16, ptr %.sroa.0.4280, align 1, !tbaa !43
  %i.et = sext i16 %i.es to i32
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  store i32 %i.et, ptr %i.eu, align 4, !tbaa !30
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph286.preheader, label %.lr.ph282, !llvm.loop !58

.lr.ph286.preheader:                              ; preds = %.lr.ph282, %middle.block, %bb.p
  %.sroa.0.5283.ph = phi ptr [ %i.l, %bb.p ], [ %i.ej, %middle.block ], [ %i.er, %.lr.ph282 ]
  br label %.lr.ph286

.lr.ph286:                                        ; preds = %.lr.ph286.preheader, %bb.s
  %.3285 = phi ptr [ %i.fw, %bb.s ], [ %i.aj, %.lr.ph286.preheader ] ; 2 uses
  %.4197284 = phi i32 [ %i.fx, %bb.s ], [ 0, %.lr.ph286.preheader ] ; 3 uses
  %.sroa.0.5283 = phi ptr [ %i.ev, %bb.s ], [ %.sroa.0.5283.ph, %.lr.ph286.preheader ] ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.0.5283, i64 1
  %i.ew = load i8, ptr %.sroa.0.5283, align 1, !tbaa !43
  %i.ex = zext i8 %i.ew to i32                    ; 2 uses
  %i.ey = and i32 %i.ex, 3                        ; 2 uses
  %i.ez = icmp eq i32 %i.ey, 3
  br i1 %i.ez, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.lr.ph286
  %i.fa = sext i32 %.4197284 to i64               ; 2 uses
  %i.fb = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.fa ; 2 uses
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !30
  %i.fd = add nsw i32 %i.fc, 1                    ; 2 uses
  store i32 %i.fd, ptr %i.fb, align 4, !tbaa !30
  br label %bb.s

bb.r:                                             ; preds = %.lr.ph286
  %i.fe = shl nuw nsw i32 %i.ey, 1
  %i.ff = sext i32 %.4197284 to i64               ; 2 uses
  %i.fg = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.ff ; 2 uses
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !30
  %i.fi = sub nsw i32 %i.fh, %i.fe                ; 2 uses
  store i32 %i.fi, ptr %i.fg, align 4, !tbaa !30
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.fj = phi i32 [ %i.fi, %bb.r ], [ %i.fd, %bb.q ]
  %.pre-phi323 = phi i64 [ %i.ff, %bb.r ], [ %i.fa, %bb.q ] ; 2 uses
  %i.fk = shl nuw i32 %i.ex, 24
  %i.fl = ashr exact i32 %i.fk, 16
  %i.fm = and i32 %i.fl, -1024
  %i.fn = getelementptr inbounds [4 x i8], ptr %i.b, i64 %.pre-phi323
  %i.fo = tail call i32 @llvm.smax.i32(i32 %i.fj, i32 0)
  %i.fp = tail call i32 @llvm.umin.i32(i32 %i.fo, i32 31) ; 2 uses
  store i32 %i.fp, ptr %i.fn, align 4, !tbaa !30
  %i.fq = ashr i32 %i.fm, %i.fp
  %i.fr = getelementptr inbounds [4 x i8], ptr %i.a, i64 %.pre-phi323 ; 2 uses
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !30
  %i.ft = add nsw i32 %i.fq, %i.fs
  %i.fu = tail call i32 @llvm.smax.i32(i32 %i.ft, i32 -32768)
  %i.fv = tail call i32 @llvm.smin.i32(i32 %i.fu, i32 32767) ; 2 uses
  %.0.i217 = trunc nsw i32 %i.fv to i16
  store i32 %i.fv, ptr %i.fr, align 4, !tbaa !30
  %i.fw = getelementptr inbounds nuw i8, ptr %.3285, i64 2 ; 2 uses
  store i16 %.0.i217, ptr %.3285, align 2, !tbaa !36
  %i.fx = xor i32 %.4197284, %i.i
  %i.fy = icmp ult ptr %i.fw, %i.am
  br i1 %i.fy, label %.lr.ph286, label %._crit_edge, !llvm.loop !59

._crit_edge:                                      ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  br label %.loopexit

bb.t:                                             ; preds = %bb.k
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !40
  %.not208 = icmp eq i32 %i.ga, 3
  br i1 %.not208, label %.lr.ph279, label %.lr.ph275

.lr.ph279:                                        ; preds = %bb.t
  %i.gb = getelementptr inbounds nuw i8, ptr %i.f, i64 512 ; 3 uses
  br label %bb.v

.lr.ph275:                                        ; preds = %bb.t
  %i.gc = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.al
  %i.gd = getelementptr inbounds nuw i8, ptr %i.f, i64 528 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.f, i64 512 ; 3 uses
  %i.gf = sext i32 %i.i to i64
  %i.gg = getelementptr inbounds [4 x i8], ptr %i.ge, i64 %i.gf ; 2 uses
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph275, %bb.u
  %.0191274 = phi ptr [ %i.aj, %.lr.ph275 ], [ %i.hd, %bb.u ] ; 3 uses
  %.sroa.0.6273 = phi ptr [ %i.l, %.lr.ph275 ], [ %i.gh, %bb.u ] ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.sroa.0.6273, i64 1
  %i.gi = load i8, ptr %.sroa.0.6273, align 1, !tbaa !43
  %i.gj = zext i8 %i.gi to i32                    ; 2 uses
  %i.gk = load ptr, ptr %i.gd, align 8, !tbaa !42
  %i.gl = lshr i32 %i.gj, 4
  %i.gm = zext nneg i32 %i.gl to i64
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gk, i64 %i.gm
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !43
  %i.gp = sext i8 %i.go to i32
  %i.gq = load i32, ptr %i.ge, align 8, !tbaa !30
  %i.gr = add nsw i32 %i.gq, %i.gp                ; 3 uses
  %.not.i226 = icmp ult i32 %i.gr, 256
  %isnotneg.i227 = icmp sgt i32 %i.gr, -1
  %4 = sext i1 %isnotneg.i227 to i8
  %i.gs = trunc nuw i32 %i.gr to i8
  %.0.i228 = select i1 %.not.i226, i8 %i.gs, i8 %4 ; 2 uses
  %5 = zext i8 %.0.i228 to i32
  store i32 %5, ptr %i.ge, align 8, !tbaa !30
  %i.gt = getelementptr inbounds nuw i8, ptr %.0191274, i64 1
  store i8 %.0.i228, ptr %.0191274, align 1, !tbaa !43
  %i.gu = load ptr, ptr %i.gd, align 8, !tbaa !42
  %i.gv = and i32 %i.gj, 15
  %i.gw = zext nneg i32 %i.gv to i64
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gu, i64 %i.gw
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !43
  %i.gz = sext i8 %i.gy to i32
  %i.ha = load i32, ptr %i.gg, align 4, !tbaa !30
  %i.hb = add nsw i32 %i.ha, %i.gz                ; 3 uses
  %.not.i224 = icmp ult i32 %i.hb, 256
  %isnotneg.i = icmp sgt i32 %i.hb, -1
  %6 = sext i1 %isnotneg.i to i8
  %i.hc = trunc nuw i32 %i.hb to i8
  %.0.i225 = select i1 %.not.i224, i8 %i.hc, i8 %6 ; 2 uses
  %7 = zext i8 %.0.i225 to i32
  store i32 %7, ptr %i.gg, align 4, !tbaa !30
  %i.hd = getelementptr inbounds nuw i8, ptr %.0191274, i64 2 ; 2 uses
  store i8 %.0.i225, ptr %i.gt, align 1, !tbaa !43
  %i.he = icmp ult ptr %i.hd, %i.gc
  br i1 %i.he, label %bb.u, label %.loopexit, !llvm.loop !60

bb.v:                                             ; preds = %.lr.ph279, %bb.y
  %.4278 = phi ptr [ %i.aj, %.lr.ph279 ], [ %i.ic, %bb.y ] ; 2 uses
  %.5198277 = phi i32 [ 0, %.lr.ph279 ], [ %i.id, %bb.y ] ; 3 uses
  %.sroa.0.7276 = phi ptr [ %i.l, %.lr.ph279 ], [ %i.hf, %bb.y ] ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %.sroa.0.7276, i64 1
  %i.hg = load i8, ptr %.sroa.0.7276, align 1, !tbaa !43 ; 3 uses
  %.not209 = icmp sgt i8 %i.hg, -1
  br i1 %.not209, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.hh = and i8 %i.hg, 127
  %i.hi = zext nneg i8 %i.hh to i64
  %i.hj = getelementptr inbounds nuw [2 x i8], ptr @sol_table_16, i64 %i.hi
  %i.hk = load i16, ptr %i.hj, align 2, !tbaa !36
  %i.hl = sext i16 %i.hk to i32
  %i.hm = sext i32 %.5198277 to i64               ; 2 uses
  %i.hn = getelementptr inbounds [4 x i8], ptr %i.gb, i64 %i.hm ; 2 uses
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !30
  %i.hp = sub nsw i32 %i.ho, %i.hl                ; 2 uses
  store i32 %i.hp, ptr %i.hn, align 4, !tbaa !30
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.hq = zext nneg i8 %i.hg to i64
  %i.hr = getelementptr inbounds nuw [2 x i8], ptr @sol_table_16, i64 %i.hq
  %i.hs = load i16, ptr %i.hr, align 2, !tbaa !36
  %i.ht = sext i16 %i.hs to i32
  %i.hu = sext i32 %.5198277 to i64               ; 2 uses
  %i.hv = getelementptr inbounds [4 x i8], ptr %i.gb, i64 %i.hu ; 2 uses
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !30
  %i.hx = add nsw i32 %i.hw, %i.ht                ; 2 uses
  store i32 %i.hx, ptr %i.hv, align 4, !tbaa !30
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.hy = phi i32 [ %i.hx, %bb.x ], [ %i.hp, %bb.w ]
  %.pre-phi322 = phi i64 [ %i.hu, %bb.x ], [ %i.hm, %bb.w ]
  %i.hz = getelementptr inbounds [4 x i8], ptr %i.gb, i64 %.pre-phi322
  %i.ia = tail call i32 @llvm.smax.i32(i32 %i.hy, i32 -32768)
  %i.ib = tail call i32 @llvm.smin.i32(i32 %i.ia, i32 32767) ; 2 uses
  %.0.i215 = trunc nsw i32 %i.ib to i16
  store i32 %i.ib, ptr %i.hz, align 4, !tbaa !30
  %i.ic = getelementptr inbounds nuw i8, ptr %.4278, i64 2 ; 2 uses
  store i16 %.0.i215, ptr %.4278, align 2, !tbaa !36
  %i.id = xor i32 %.5198277, %i.i
  %i.ie = icmp ult ptr %i.ic, %i.am
  br i1 %i.ie, label %bb.v, label %.loopexit, !llvm.loop !61

.lr.ph272:                                        ; preds = %bb.k, %bb.k
  %i.if = getelementptr inbounds nuw i8, ptr %i.f, i64 512 ; 2 uses
  br label %bb.z

bb.z:                                             ; preds = %.lr.ph272, %bb.ab
  %.5271 = phi ptr [ %i.aj, %.lr.ph272 ], [ %i.iv, %bb.ab ] ; 2 uses
  %.6199270 = phi i32 [ 0, %.lr.ph272 ], [ %i.iw, %bb.ab ] ; 2 uses
  %.sroa.0.8269 = phi ptr [ %i.l, %.lr.ph272 ], [ %i.ig, %bb.ab ] ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %.sroa.0.8269, i64 1
  %i.ih = load i8, ptr %.sroa.0.8269, align 1, !tbaa !43 ; 2 uses
  %i.ii = and i8 %i.ih, 1
  %.not207 = icmp eq i8 %i.ii, 0
  %i.ij = sext i32 %.6199270 to i64               ; 2 uses
  %i.ik = getelementptr inbounds [4 x i8], ptr %i.if, i64 %i.ij ; 2 uses
  br i1 %.not207, label %bb.aa, label %._crit_edge318

._crit_edge318:                                   ; preds = %bb.z
  %.pre320 = load i32, ptr %i.ik, align 4, !tbaa !30
  br label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i32 0, ptr %i.ik, align 4, !tbaa !30
  br label %bb.ab

bb.ab:                                            ; preds = %._crit_edge318, %bb.aa
  %i.il = phi i32 [ %.pre320, %._crit_edge318 ], [ 0, %bb.aa ]
  %i.im = sext i8 %i.ih to i64
  %i.in = getelementptr [2 x i8], ptr %i.f, i64 %i.im
  %i.io = getelementptr i8, ptr %i.in, i64 256
  %i.ip = load i16, ptr %i.io, align 2, !tbaa !36
  %i.iq = sext i16 %i.ip to i32
  %i.ir = getelementptr inbounds [4 x i8], ptr %i.if, i64 %i.ij
  %i.is = add nsw i32 %i.il, %i.iq
  %i.it = tail call i32 @llvm.smax.i32(i32 %i.is, i32 -32768)
  %i.iu = tail call i32 @llvm.smin.i32(i32 %i.it, i32 32767) ; 2 uses
  %.0.i213 = trunc nsw i32 %i.iu to i16
  store i32 %i.iu, ptr %i.ir, align 4, !tbaa !30
  %i.iv = getelementptr inbounds nuw i8, ptr %.5271, i64 2 ; 2 uses
  store i16 %.0.i213, ptr %.5271, align 2, !tbaa !36
  %i.iw = xor i32 %.6199270, %i.i
  %i.ix = icmp ult ptr %i.iv, %i.am
  br i1 %i.ix, label %bb.z, label %.loopexit, !llvm.loop !62

bb.ac:                                            ; preds = %.lr.ph268, %bb.ac
  %.0189267 = phi i32 [ 0, %.lr.ph268 ], [ %i.jk, %bb.ac ] ; 2 uses
  %.6266 = phi ptr [ %i.aj, %.lr.ph268 ], [ %i.jj, %bb.ac ] ; 2 uses
  %.sroa.0.9265 = phi ptr [ %i.l, %.lr.ph268 ], [ %i.iy, %bb.ac ] ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %.sroa.0.9265, i64 1
  %i.iz = load i8, ptr %.sroa.0.9265, align 1, !tbaa !43
  %i.ja = zext i8 %i.iz to i64
  %i.jb = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.ja
  %i.jc = load i16, ptr %i.jb, align 2, !tbaa !36
  %i.jd = sext i16 %i.jc to i32
  %i.je = zext nneg i32 %.0189267 to i64
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.je ; 2 uses
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !30
  %i.jh = add i32 %i.jg, %i.jd                    ; 2 uses
  store i32 %i.jh, ptr %i.jf, align 4, !tbaa !30
  %i.ji = trunc i32 %i.jh to i16
  %i.jj = getelementptr inbounds nuw i8, ptr %.6266, i64 2 ; 2 uses
  store i16 %i.ji, ptr %.6266, align 2, !tbaa !36
  %i.jk = xor i32 %.0189267, 1
  %i.jl = icmp ult ptr %i.jj, %i.am
  br i1 %i.jl, label %bb.ac, label %.loopexit, !llvm.loop !63

bb.ad:                                            ; preds = %.lr.ph264, %bb.ad
  %.0188263 = phi i32 [ 0, %.lr.ph264 ], [ %i.kc, %bb.ad ] ; 2 uses
  %.7262 = phi ptr [ %i.aj, %.lr.ph264 ], [ %i.kb, %bb.ad ] ; 2 uses
  %.sroa.0.10261 = phi ptr [ %i.l, %.lr.ph264 ], [ %i.jm, %bb.ad ] ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %.sroa.0.10261, i64 1
  %i.jn = load i8, ptr %.sroa.0.10261, align 1, !tbaa !43 ; 2 uses
  %i.jo = and i8 %i.jn, 127
  %i.jp = tail call i8 @llvm.umin.i8(i8 %i.jo, i8 95)
  %i.jq = zext nneg i8 %i.jp to i64
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr @derf_steps, i64 %i.jq
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !30 ; 2 uses
  %i.jt = sub nsw i32 0, %i.js
  %.not206245 = icmp slt i8 %i.jn, 0
  %i.ju = select i1 %.not206245, i32 %i.jt, i32 %i.js
  %i.jv = sext i32 %.0188263 to i64
  %i.jw = getelementptr inbounds [4 x i8], ptr %i.as, i64 %i.jv ; 2 uses
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !30
  %i.jy = add nsw i32 %i.jx, %i.ju
  %i.jz = tail call i32 @llvm.smax.i32(i32 %i.jy, i32 -32768)
  %i.ka = tail call i32 @llvm.smin.i32(i32 %i.jz, i32 32767) ; 2 uses
  %.0.i211 = trunc nsw i32 %i.ka to i16
  store i32 %i.ka, ptr %i.jw, align 4, !tbaa !30
  %i.kb = getelementptr inbounds nuw i8, ptr %.7262, i64 2 ; 2 uses
  store i16 %.0.i211, ptr %.7262, align 2, !tbaa !36
  %i.kc = xor i32 %.0188263, %i.i
  %i.kd = icmp ult ptr %i.kb, %i.am
  br i1 %i.kd, label %bb.ad, label %.loopexit, !llvm.loop !64

bb.ae:                                            ; preds = %.lr.ph, %bb.ah
  %.0260 = phi i32 [ 0, %.lr.ph ], [ %i.kz, %bb.ah ] ; 3 uses
  %.8259 = phi ptr [ %i.aj, %.lr.ph ], [ %i.ky, %bb.ah ] ; 2 uses
  %.sroa.0.11258 = phi ptr [ %i.l, %.lr.ph ], [ %i.ke, %bb.ah ] ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %.sroa.0.11258, i64 1
  %i.kf = load i8, ptr %.sroa.0.11258, align 1, !tbaa !43 ; 3 uses
  %.not205 = icmp sgt i8 %i.kf, -1
  br i1 %.not205, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.kg = zext i8 %i.kf to i32
  %i.kh = shl i32 %i.kg, 25
  %i.ki = ashr exact i32 %i.kh, 16                ; 2 uses
  %i.kj = sext i32 %.0260 to i64
  %i.kk = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %i.kj
  store i32 %i.ki, ptr %i.kk, align 4, !tbaa !30
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.kl = load i32, ptr %i.ar, align 8, !tbaa !44
  %i.km = zext nneg i8 %i.kf to i64
  %i.kn = getelementptr inbounds nuw [2 x i8], ptr @wady_table, i64 %i.km
  %i.ko = load i16, ptr %i.kn, align 2, !tbaa !36
  %i.kp = sext i16 %i.ko to i32
  %i.kq = mul i32 %i.kl, %i.kp
  %i.kr = sext i32 %.0260 to i64
  %i.ks = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %i.kr ; 2 uses
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !30
  %i.ku = add i32 %i.kq, %i.kt                    ; 2 uses
  store i32 %i.ku, ptr %i.ks, align 4, !tbaa !30
  %i.kv = tail call i32 @llvm.smax.i32(i32 %i.ku, i32 -32768)
  %i.kw = tail call i32 @llvm.smin.i32(i32 %i.kv, i32 32767)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.kx = phi i32 [ %i.kw, %bb.ag ], [ %i.ki, %bb.af ]
  %.0.i = trunc nsw i32 %i.kx to i16
  %i.ky = getelementptr inbounds nuw i8, ptr %.8259, i64 2 ; 2 uses
  store i16 %.0.i, ptr %.8259, align 2, !tbaa !36
  %i.kz = xor i32 %.0260, %i.i
  %i.la = icmp ult ptr %i.ky, %i.am
  br i1 %i.la, label %bb.ae, label %.loopexit, !llvm.loop !65

.loopexit:                                        ; preds = %bb.ah, %bb.ad, %bb.ac, %bb.ab, %bb.u, %bb.y, %.lr.ph297, %.lr.ph302, %.preheader, %._crit_edge, %bb.k
  store i32 1, ptr %2, align 4, !tbaa !30
  %i.lb = load i32, ptr %i.c, align 8, !tbaa !67
  br label %bb.ai

bb.ai:                                            ; preds = %bb.j, %.loopexit, %.thread
  %.0186 = phi i32 [ -22, %.thread ], [ %i.lb, %.loopexit ], [ %i.ah, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.0186
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @dpcm_flush(ptr nofree noundef readonly captures(none) %0) #2 {
end_hunk_0
