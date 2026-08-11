inline.NumInlined: 5128
inline.NumDeleted: 1476
loop-unroll.NumCompletelyUnrolled: 51
loop-unroll.NumRuntimeUnrolled: 52
loop-unroll.NumUnrolled: 108
begin_hunk_0_@_ZN11OpenImageIO4v3_117TextureSystemImpl7textureEPNS0_13TextureSystem13TextureHandleEPNS2_9PerthreadERNS0_13TextureOpt_v2EffffffiPfS9_S9_:bb.a
bb.k:                                             ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !196 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i, label %_ZNK11OpenImageIO4v3_17ustring5emptyEv.exit.thread, label %_ZNK11OpenImageIO4v3_17ustring5emptyEv.exit

_ZNK11OpenImageIO4v3_17ustring5emptyEv.exit:      ; preds = %bb.k
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 -24
  %i.an = load i64, ptr %i.am, align 8, !tbaa !173
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %_ZNK11OpenImageIO4v3_17ustring5emptyEv.exit.thread, label %bb.l

bb.l:                                             ; preds = %_ZNK11OpenImageIO4v3_17ustring5emptyEv.exit
  %i.ap = load ptr, ptr %i.p, align 8, !tbaa !92
  %i.aq = tail call noundef i32 @_ZN11OpenImageIO4v3_114ImageCacheImpl18subimage_from_nameEPNS0_14ImageCacheFileENS0_7ustringE(ptr noundef nonnull align 64 dereferenceable(25240) %i.ap, ptr noundef nonnull %i.ac, ptr nonnull %i.al) ; 2 uses
  %i.ar = icmp sgt i32 %i.aq, -1
  br i1 %i.ar, label %.thread, label %bb.m

.thread:                                          ; preds = %bb.l
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %i.aq, ptr %i.as, align 4, !tbaa !197
  store ptr null, ptr %i.ak, align 8, !tbaa !196
  br label %_ZNK11OpenImageIO4v3_17ustring5emptyEv.exit.thread

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #3
  %i.at = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %.sroa.0.0.copyload.i = load ptr, ptr %i.at, align 8, !tbaa !108
  store ptr %.sroa.0.0.copyload.i, ptr %14, align 8
  call void @_ZNK11OpenImageIO4v3_117TextureSystemImpl5errorIJNS0_7ustringES3_EEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr noundef nonnull @.str.59, ptr noundef nonnull align 8 dereferenceable(8) %i.ak, ptr noundef nonnull align 8 dereferenceable(8) %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #3
  %i.au = call noundef zeroext i1 @_ZN11OpenImageIO4v3_117TextureSystemImpl15missing_textureERNS0_13TextureOpt_v2EiPfS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr noundef nonnull align 8 dereferenceable(76) %3, i32 noundef %10, ptr noundef %11, ptr noundef %12, ptr noundef %13, ptr noundef null)
  br label %.critedge

_ZNK11OpenImageIO4v3_17ustring5emptyEv.exit.thread: ; preds = %bb.k, %.thread, %_ZNK11OpenImageIO4v3_17ustring5emptyEv.exit
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !197
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ac, i64 80
  %i.ay = sext i32 %i.aw to i64
  %i.az = load ptr, ptr %i.ax, align 8, !tbaa !198
  %i.ba = getelementptr inbounds nuw [128 x i8], ptr %i.az, i64 %i.ay ; 6 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 120
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !199 ; 6 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 60
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !227
  %i.bf = load i32, ptr %3, align 8, !tbaa !187   ; 3 uses
  %i.bg = sub i32 %i.be, %i.bf                    ; 2 uses
  %spec.select.i = tail call i32 @llvm.smax.i32(i32 %i.bg, i32 0) ; 4 uses
  %.1.i = tail call i32 @llvm.smin.i32(i32 %spec.select.i, i32 %10) ; 7 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.bi = load i8, ptr %i.bh, align 8, !tbaa !245 ; 2 uses
  %i.bj = icmp eq i8 %i.bi, 0
  br i1 %i.bj, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZNK11OpenImageIO4v3_17ustring5emptyEv.exit.thread
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ac, i64 156
  %i.bl = load i8, ptr %i.bk, align 4, !tbaa !246 ; 2 uses
  store i8 %i.bl, ptr %i.bh, align 8, !tbaa !245
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZNK11OpenImageIO4v3_17ustring5emptyEv.exit.thread
  %i.bm = phi i8 [ %i.bl, %bb.n ], [ %i.bi, %_ZNK11OpenImageIO4v3_17ustring5emptyEv.exit.thread ] ; 2 uses
  %i.bn = icmp eq i8 %i.bm, 3
  br i1 %i.bn, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bc, i64 12
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !247 ; 2 uses
  %i.bq = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.bp)
  %i.br = icmp samesign ult i32 %i.bq, 2
  %i.bs = icmp sgt i32 %i.bp, -1
  %i.bt = and i1 %i.bs, %i.br
  br i1 %i.bt, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i8 5, ptr %i.bh, align 8, !tbaa !245
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o
  %i.bu = phi i8 [ 5, %bb.q ], [ 3, %bb.p ], [ %i.bm, %bb.o ]
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 17 ; 3 uses
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !248 ; 2 uses
  %i.bx = icmp eq i8 %i.bw, 0
  br i1 %i.bx, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.by = getelementptr inbounds nuw i8, ptr %i.ac, i64 157
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !249 ; 2 uses
  store i8 %i.bz, ptr %i.bv, align 1, !tbaa !248
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.ca = phi i8 [ %i.bz, %bb.s ], [ %i.bw, %bb.r ] ; 2 uses
  %i.cb = icmp eq i8 %i.ca, 3
  br i1 %i.cb, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !250 ; 2 uses
  %i.ce = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.cd)
  %i.cf = icmp samesign ult i32 %i.ce, 2
  %i.cg = icmp sgt i32 %i.cd, -1
  %i.ch = and i1 %i.cg, %i.cf
  br i1 %i.ch, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i8 5, ptr %i.bv, align 1, !tbaa !248
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t
  %i.ci = phi i8 [ 5, %bb.v ], [ 3, %bb.u ], [ %i.ca, %bb.t ]
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ba, i64 45
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !251, !range !62, !noundef !63
  %i.cl = trunc nuw i8 %i.ck to i1
  %.not338 = xor i1 %i.cl, true
  %.not240 = icmp eq i8 %i.bu, 1
  %or.cond339 = or i1 %.not240, %.not338
  %.not241 = icmp eq i8 %i.ci, 1
  %or.cond340 = or i1 %or.cond339, %.not241
  br i1 %or.cond340, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 68
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !252
  %i.co = icmp slt i32 %i.cn, 1
  br i1 %i.co, label %.preheader309, label %bb.aa

.preheader309:                                    ; preds = %bb.x
  %i.cp = icmp sgt i32 %.1.i, 0
  br i1 %i.cp, label %.lr.ph, label %.preheader308

.lr.ph:                                           ; preds = %.preheader309
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ba, i64 48
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !253 ; 2 uses
  %i.cs = sext i32 %i.bf to i64                   ; 2 uses
  %wide.trip.count = zext nneg i32 %.1.i to i64   ; 5 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.cr, i64 %i.cs ; 6 uses
  %min.iters.check = icmp ult i32 %.1.i, 16
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.ct = ptrtoaddr ptr %i.cr to i64
  %i.cu = shl nsw i64 %i.cs, 2
  %i.cv = add i64 %i.cu, %i.ct
  %i.cw = sub i64 %i.cv, %i.a
  %diff.check = icmp ugt i64 %i.cw, -32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cx = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.cy = getelementptr i8, ptr %i.cx, i64 16
  %wide.load = load <4 x float>, ptr %i.cx, align 4, !tbaa !26
  %wide.load341 = load <4 x float>, ptr %i.cy, align 4, !tbaa !26
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %index ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  store <4 x float> %wide.load, ptr %i.cz, align 4, !tbaa !26
  store <4 x float> %wide.load341, ptr %i.da, align 4, !tbaa !26
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.db = icmp eq i64 %index.next, %n.vec
  br i1 %i.db, label %middle.block, label %vector.body, !llvm.loop !254

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.preheader308, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %gep.prol = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.prol
  %i.dc = load float, ptr %gep.prol, align 4, !tbaa !26
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %indvars.iv.prol
  store float %i.dc, ptr %i.dd, align 4, !tbaa !26
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !257

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.de = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.df = icmp ugt i64 %i.de, -4
  br i1 %i.df, label %.preheader308, label %scalar.ph

.preheader308:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader309
  %i.dg = icmp slt i32 %spec.select.i, %10        ; 2 uses
  br i1 %i.dg, label %.lr.ph312, label %._crit_edge

.lr.ph312:                                        ; preds = %.preheader308
  %i.dh = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.di = tail call i32 @llvm.umin.i32(i32 %10, i32 %spec.select.i) ; 4 uses
  %i.dj = zext nneg i32 %i.di to i64              ; 3 uses
  %i.dk = add nuw nsw i32 %10, %i.di
  %i.dl = sub i32 %i.dk, %.1.i
  %.pre = load float, ptr %i.dh, align 8, !tbaa !259 ; 2 uses
  %18 = add i32 %10, %i.di
  %i.dm = xor i32 %.1.i, -1
  %i.dn = add i32 %18, %i.dm
  %19 = sub i32 %i.dn, %i.di                      ; 2 uses
  %i.do = zext i32 %19 to i64
  %i.dp = add nuw nsw i64 %i.do, 1                ; 2 uses
  %min.iters.check343 = icmp ult i32 %19, 7
  br i1 %min.iters.check343, label %scalar.ph342.preheader, label %vector.ph344

vector.ph344:                                     ; preds = %.lr.ph312
  %n.vec345 = and i64 %i.dp, 8589934584           ; 3 uses
  %i.dq = add nuw nsw i64 %n.vec345, %i.dj
  %broadcast.splatinsert = insertelement <4 x float> poison, float %.pre, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.gep352 = getelementptr [4 x i8], ptr %11, i64 %i.dj
  br label %vector.body346

vector.body346:                                   ; preds = %vector.body346, %vector.ph344
  %index347 = phi i64 [ 0, %vector.ph344 ], [ %index.next348, %vector.body346 ] ; 2 uses
  %gep353 = getelementptr [4 x i8], ptr %invariant.gep352, i64 %index347 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %gep353, i64 16
  store <4 x float> %broadcast.splat, ptr %gep353, align 4, !tbaa !26
  store <4 x float> %broadcast.splat, ptr %i.dr, align 4, !tbaa !26
  %index.next348 = add nuw i64 %index347, 8       ; 2 uses
  %i.ds = icmp eq i64 %index.next348, %n.vec345
  br i1 %i.ds, label %middle.block349, label %vector.body346, !llvm.loop !260

middle.block349:                                  ; preds = %vector.body346
  %cmp.n350 = icmp eq i64 %i.dp, %n.vec345
  br i1 %cmp.n350, label %._crit_edge, label %scalar.ph342.preheader

scalar.ph342.preheader:                           ; preds = %.lr.ph312, %middle.block349
  %indvars.iv321.ph = phi i64 [ %i.dj, %.lr.ph312 ], [ %i.dq, %middle.block349 ]
  br label %scalar.ph342

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.dt = load float, ptr %gep, align 4, !tbaa !26
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %indvars.iv
  store float %i.dt, ptr %i.du, align 4, !tbaa !26
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next
  %i.dv = load float, ptr %gep.1, align 4, !tbaa !26
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %indvars.iv.next
  store float %i.dv, ptr %i.dw, align 4, !tbaa !26
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %gep.2 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next.1
  %i.dx = load float, ptr %gep.2, align 4, !tbaa !26
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %indvars.iv.next.1
  store float %i.dx, ptr %i.dy, align 4, !tbaa !26
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %gep.3 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next.2
  %i.dz = load float, ptr %gep.3, align 4, !tbaa !26
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %indvars.iv.next.2
  store float %i.dz, ptr %i.ea, align 4, !tbaa !26
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.preheader308, label %scalar.ph, !llvm.loop !261

._crit_edge:                                      ; preds = %scalar.ph342, %middle.block349, %.preheader308
  %.not248 = icmp ne ptr %12, null
  %i.eb = icmp sgt i32 %10, 0
  %or.cond319 = and i1 %.not248, %i.eb
  br i1 %or.cond319, label %.lr.ph314.preheader, label %.loopexit

.lr.ph314.preheader:                              ; preds = %._crit_edge
  %i.ec = zext nneg i32 %10 to i64
  %i.ed = shl nuw nsw i64 %i.ec, 2                ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %12, i8 0, i64 %i.ed, i1 false), !tbaa !26
  tail call void @llvm.memset.p0.i64(ptr align 4 %13, i8 0, i64 %i.ed, i1 false), !tbaa !26
  br label %.loopexit

scalar.ph342:                                     ; preds = %scalar.ph342.preheader, %scalar.ph342
  %indvars.iv321 = phi i64 [ %indvars.iv.next322, %scalar.ph342 ], [ %indvars.iv321.ph, %scalar.ph342.preheader ] ; 2 uses
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %indvars.iv321
  store float %.pre, ptr %i.ee, align 4, !tbaa !26
  %indvars.iv.next322 = add nuw nsw i64 %indvars.iv321, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next322 to i32
  %exitcond323.not = icmp eq i32 %i.dl, %lftr.wideiv
  br i1 %exitcond323.not, label %._crit_edge, label %scalar.ph342, !llvm.loop !262

.loopexit:                                        ; preds = %.lr.ph314.preheader, %._crit_edge
  %i.ef = icmp eq i32 %i.bf, 0
  %or.cond301 = select i1 %i.dg, i1 %i.ef, i1 false
  br i1 %or.cond301, label %bb.y, label %.critedge

bb.y:                                             ; preds = %.loopexit
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 161
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !111, !range !62, !noundef !63
  %i.ei = trunc nuw i8 %i.eh to i1
  br i1 %i.ei, label %bb.z, label %.critedge

bb.z:                                             ; preds = %bb.y
  tail call void @_ZN11OpenImageIO4v3_117TextureSystemImpl18fill_gray_channelsERKNS0_9ImageSpecEiPfS5_S5_S5_(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(160) %i.bc, i32 noundef %10, ptr noundef %11, ptr noundef %12, ptr noundef %13, ptr noundef null)
  br label %.critedge

bb.aa:                                            ; preds = %bb.x, %bb.w
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 162 ; 3 uses
  %i.ek = load i8, ptr %i.ej, align 2, !tbaa !112, !range !62, !noundef !63
  %i.el = trunc nuw i8 %i.ek to i1                ; 3 uses
  %i.em = fsub float 1.000000e+00, %.0202
  %i.en = fneg float %7
  %i.eo = fneg float %9
  %.0209 = select i1 %i.el, float %i.eo, float %9 ; 2 uses
  %.0206 = select i1 %i.el, float %i.en, float %7 ; 2 uses
  %.1203 = select i1 %i.el, float %i.em, float %.0202 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ba, i64 44
  %i.eq = load i8, ptr %i.ep, align 4, !tbaa !263, !range !62, !noundef !63
  %i.er = trunc nuw i8 %i.eq to i1
  br i1 %i.er, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.es = getelementptr inbounds nuw i8, ptr %i.ba, i64 80
  %i.et = getelementptr inbounds nuw i8, ptr %i.ba, i64 88
  %i.eu = load <4 x float>, ptr %i.es, align 8, !tbaa !26 ; 3 uses
  %i.ev = load float, ptr %i.et, align 8, !tbaa !264 ; 2 uses
  %i.ew = extractelement <4 x float> %i.eu, i64 0 ; 2 uses
  %i.ex = fmul float %6, %i.ew
  %i.ey = fmul float %8, %i.ew
  %i.ez = insertelement <2 x float> poison, float %.0200, i64 0
  %i.fa = insertelement <2 x float> %i.ez, float %.1203, i64 1
  %i.fb = shufflevector <4 x float> %i.eu, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.fc = shufflevector <4 x float> %i.eu, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.fd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fa, <2 x float> %i.fb, <2 x float> %i.fc) ; 2 uses
  %i.fe = fmul float %.0206, %i.ev
  %i.ff = fmul float %.0209, %i.ev
  %i.fg = extractelement <2 x float> %i.fd, i64 0
  %i.fh = extractelement <2 x float> %i.fd, i64 1
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.1210 = phi float [ %.0209, %bb.aa ], [ %i.ff, %bb.ab ] ; 2 uses
  %.0208 = phi float [ %8, %bb.aa ], [ %i.ey, %bb.ab ] ; 2 uses
  %.1207 = phi float [ %.0206, %bb.aa ], [ %i.fe, %bb.ab ] ; 2 uses
  %.0205 = phi float [ %6, %bb.aa ], [ %i.ex, %bb.ab ] ; 2 uses
  %.2204 = phi float [ %.1203, %bb.aa ], [ %i.fh, %bb.ab ] ; 2 uses
  %.1201 = phi float [ %.0200, %bb.aa ], [ %i.fg, %bb.ab ] ; 2 uses
  %.not242 = icmp ne i32 %10, 4
  %i.fi = ptrtoint ptr %11 to i64
  %i.fj = ptrtoint ptr %12 to i64
  %i.fk = or i64 %i.fj, %i.fi
  %i.fl = ptrtoint ptr %13 to i64
  %i.fm = or i64 %i.fk, %i.fl
  %i.fn = and i64 %i.fm, 15
  %i.fo = icmp ne i64 %i.fn, 0
  %or.cond262 = or i1 %.not242, %i.fo
  br i1 %or.cond262, label %.critedge257, label %bb.ao

.critedge257:                                     ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #3
  %.not246 = icmp eq ptr %12, null                ; 3 uses
  %spec.select258 = select i1 %.not246, ptr %13, ptr %17 ; 2 uses
  %spec.select259 = select i1 %.not246, ptr null, ptr %16 ; 2 uses
  %i.fp = inttoptr i64 %.unpack to ptr
  %i.fq = call noundef zeroext i1 %i.fp(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr noundef nonnull align 8 dereferenceable(400) %i.ac, ptr noundef nonnull %i.r, ptr noundef nonnull align 8 dereferenceable(76) %3, i32 noundef %10, i32 noundef %.1.i, float noundef %.1201, float noundef %.2204, float noundef %.0205, float noundef %.1207, float noundef %.0208, float noundef %.1210, ptr noundef nonnull %15, ptr noundef %spec.select259, ptr noundef %spec.select258)
  %i.fr = icmp slt i32 %spec.select.i, %10
  br i1 %i.fr, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %.critedge257
  %i.fs = load i32, ptr %3, align 8, !tbaa !187
  %i.ft = icmp eq i32 %i.fs, 0
  br i1 %i.ft, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 161
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !111, !range !62, !noundef !63
  %i.fw = trunc nuw i8 %i.fv to i1
  br i1 %i.fw, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  call void @_ZN11OpenImageIO4v3_117TextureSystemImpl18fill_gray_channelsERKNS0_9ImageSpecEiPfS5_S5_S5_(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(160) %i.bc, i32 noundef %10, ptr noundef nonnull %15, ptr noundef %spec.select259, ptr noundef %spec.select258, ptr noundef null)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad, %.critedge257
  switch i32 %10, label %_ZNK11OpenImageIO4v3_14simd7vfloat45storeEPfi.exit264 [
    i32 1, label %bb.ah
    i32 2, label %bb.ai
    i32 3, label %bb.aj
    i32 4, label %bb.ak
  ]

bb.ah:                                            ; preds = %bb.ag
  %i.fx = load <4 x float>, ptr %15, align 16, !tbaa !34
  %i.fy = extractelement <4 x float> %i.fx, i64 0
  store float %i.fy, ptr %11, align 1, !tbaa !34
  br label %_ZNK11OpenImageIO4v3_14simd7vfloat45storeEPfi.exit264

bb.ai:                                            ; preds = %bb.ag
  %i.fz = load <2 x double>, ptr %15, align 16, !tbaa !34
  %i.ga = extractelement <2 x double> %i.fz, i64 0
  store double %i.ga, ptr %11, align 1, !tbaa !34
  br label %_ZNK11OpenImageIO4v3_14simd7vfloat45storeEPfi.exit264

bb.aj:                                            ; preds = %bb.ag
  %i.gb = load <2 x float>, ptr %15, align 16, !tbaa !34
  store <2 x float> %i.gb, ptr %11, align 4, !tbaa !26
  %i.gc = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.gd = load float, ptr %i.gc, align 8, !tbaa !34
  %i.ge = getelementptr inbounds nuw i8, ptr %11, i64 8
  store float %i.gd, ptr %i.ge, align 4, !tbaa !26
  br label %_ZNK11OpenImageIO4v3_14simd7vfloat45storeEPfi.exit264

bb.ak:                                            ; preds = %bb.ag
  %i.gf = load <4 x float>, ptr %15, align 16, !tbaa !34
end_hunk_0
begin_hunk_1_@_ZN11OpenImageIO4v3_19ImageSpecD2Ev:bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i2
  %i.s = load i64, ptr %i.q, align 8, !tbaa !34
  %i.t = add i64 %i.s, 1
  tail call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #45
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 32 ; 2 uses
  %.not.i.i.i4 = icmp eq ptr %i.u, %i.o
  br i1 %.not.i.i.i4, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i2, !llvm.loop !603

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i5 = load ptr, ptr %i.l, align 8, !tbaa !601
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit
  %i.v = phi ptr [ %.pr.i5, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.m, %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i6 = icmp eq ptr %i.v, null
  br i1 %.not.i.i1.i6, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !604
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #45
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !605 ; 3 uses
  %.not.i.i.i7 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i7, label %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !606
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.ac to i64
  %i.ah = sub i64 %i.af, %i.ag
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.ah) #45
  br label %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EED2Ev.exit

_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN11OpenImageIO4v3_113TextureSystem14unit_test_hashEv() local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
.noexc105:
  %0 = alloca %struct.timespec, align 8           ; 5 uses
  %1 = alloca %struct.timespec, align 8           ; 5 uses
  %2 = alloca %"struct.fmt::v12::detail::format_arg_store.218", align 16 ; 3 uses
  %3 = alloca %"struct.fmt::v12::detail::format_arg_store.330", align 16 ; 5 uses
  %4 = alloca %"struct.fmt::v12::detail::format_arg_store.330", align 16 ; 5 uses
  %5 = alloca %"struct.fmt::v12::detail::format_arg_store.330", align 16 ; 5 uses
  %6 = alloca %"struct.fmt::v12::detail::format_arg_store.330", align 16 ; 5 uses
  %7 = alloca %"struct.fmt::v12::detail::format_arg_store.307", align 16 ; 4 uses
  %8 = alloca %"struct.fmt::v12::detail::format_arg_store.329", align 16 ; 4 uses
  %9 = alloca %"struct.fmt::v12::detail::format_arg_store.327", align 16 ; 8 uses
  %10 = alloca %"class.std::shared_ptr.1", align 8 ; 7 uses
  %i.a = alloca i32, align 4                      ; 7 uses
  %11 = alloca %"class.OpenImageIO::v3_1::intrusive_ptr.204", align 8 ; 9 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #47 ; 20 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.b, i8 0, i64 128, i1 false), !tbaa !110
  %i.c = invoke noalias noundef nonnull dereferenceable(2048) ptr @_Znwm(i64 noundef 2048) #47
          to label %.lr.ph.i.i.i.i.i.i.i.i.i106.preheader unwind label %bb.c ; 8 uses

.lr.ph.i.i.i.i.i.i.i.i.i106.preheader:            ; preds = %.noexc105
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2048) %i.c, i8 0, i64 2048, i1 false), !tbaa !110
  %i.d = invoke noalias noundef nonnull dereferenceable(524288) ptr @_Znwm(i64 noundef 524288) #47
          to label %.lr.ph.i.i.i.i.i.i.i.i.i111.preheader unwind label %bb.d ; 8 uses

.lr.ph.i.i.i.i.i.i.i.i.i111.preheader:            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i106.preheader
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(524288) %i.d, i8 0, i64 524288, i1 false), !tbaa !110
  %i.e = invoke noalias noundef nonnull dereferenceable(2048) ptr @_Znwm(i64 noundef 2048) #47
          to label %.lr.ph.i.i.i.i.i.i.i.i.i116.preheader unwind label %bb.e ; 8 uses

.lr.ph.i.i.i.i.i.i.i.i.i116.preheader:            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i111.preheader
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2048) %i.e, i8 0, i64 2048, i1 false), !tbaa !110
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #3
  store i32 244, ptr %9, align 16, !tbaa !34
  %i.f = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i32 4096, ptr %i.f, align 16, !tbaa !34
  %i.g = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i32 4096, ptr %i.g, align 16, !tbaa !34
  %i.h = getelementptr inbounds nuw i8, ptr %9, i64 48
  store i32 64, ptr %i.h, align 16, !tbaa !34
  %i.i = getelementptr inbounds nuw i8, ptr %9, i64 64
  store i32 64, ptr %i.i, align 16, !tbaa !34
  %i.j = load ptr, ptr @stdout, align 8, !tbaa !96
  invoke void @_ZN3fmt3v126vprintEP8_IO_FILENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr noundef %i.j, ptr nonnull @.str.75, i64 56, i64 69905, ptr nonnull %9)
          to label %bb.a unwind label %bb.f

bb.a:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i116.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #3
  invoke void @_ZN11OpenImageIO4v3_110ImageCache6createEb(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.1") align 8 %10, i1 noundef zeroext true)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  store i32 0, ptr %i.a, align 4, !tbaa !3
  br label %bb.h

bb.c:                                             ; preds = %.noexc105
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorImSaImEED2Ev.exit177

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i106.preheader
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorImSaImEED2Ev.exit175

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i111.preheader
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorImSaImEED2Ev.exit173

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i116.preheader
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorImSaImEED2Ev.exit171

bb.g:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_110ImageCacheELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit169

bb.h:                                             ; preds = %bb.b, %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEED2Ev.exit
  %.sroa.0231.0372 = phi ptr [ null, %bb.b ], [ %.sroa.0231.1330, %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEED2Ev.exit ] ; 12 uses
  %.sroa.12.0371 = phi ptr [ null, %bb.b ], [ %.sroa.12.1329, %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEED2Ev.exit ] ; 8 uses
  %.sroa.18.0370 = phi ptr [ null, %bb.b ], [ %.sroa.18.1328, %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEED2Ev.exit ] ; 5 uses
  %i.p = invoke ptr @_ZN11OpenImageIO4v3_17ustring9fmtformatIJiEEES1_PKcDpRKT_(ptr noundef nonnull @.str.76, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.i unwind label %bb.q

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #3
  %i.q = invoke noalias noundef nonnull dereferenceable(400) ptr @_Znwm(i64 noundef 400) #47
          to label %bb.j unwind label %bb.r       ; 4 uses

bb.j:                                             ; preds = %bb.i
  %i.r = load ptr, ptr %10, align 8, !tbaa !73
  invoke void @_ZN11OpenImageIO4v3_114ImageCacheFileC1ERNS0_14ImageCacheImplEPNS0_23ImageCachePerThreadInfoENS0_7ustringEPFPNS0_10ImageInputEvEPKNS0_9ImageSpecE(ptr noundef nonnull align 8 dereferenceable(400) %i.q, ptr noundef nonnull align 64 dereferenceable(25240) %i.r, ptr noundef null, ptr %i.p, ptr noundef null, ptr noundef null)
          to label %bb.k unwind label %bb.s

bb.k:                                             ; preds = %bb.j
  store ptr %i.q, ptr %11, align 8, !tbaa !607
  %i.s = atomicrmw add ptr %i.q, i32 1 seq_cst, align 4 ; 0 uses
  %.not.i.i = icmp eq ptr %.sroa.12.0371, %.sroa.18.0370
  br i1 %.not.i.i, label %bb.l, label %_ZNSt6vectorIN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEESaIS4_EE9push_backEOS4_.exit.thread

_ZNSt6vectorIN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEESaIS4_EE9push_backEOS4_.exit.thread: ; preds = %bb.k
  %i.t = load ptr, ptr %11, align 8, !tbaa !607
  store ptr %i.t, ptr %.sroa.12.0371, align 8, !tbaa !607
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.12.0371, i64 8
  br label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEED2Ev.exit

bb.l:                                             ; preds = %bb.k
  %i.v = ptrtoint ptr %.sroa.12.0371 to i64       ; 3 uses
  %i.w = ptrtoint ptr %.sroa.0231.0372 to i64     ; 3 uses
  %i.x = sub i64 %i.v, %i.w                       ; 4 uses
  %i.y = icmp eq i64 %i.x, 9223372036854775800
  br i1 %i.y, label %bb.m, label %_ZNKSt6vectorIN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEESaIS4_EE12_M_check_lenEmPKc.exit.i

bb.m:                                             ; preds = %bb.l
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.141) #49
          to label %.noexc179 unwind label %.loopexit.split-lp

.noexc179:                                        ; preds = %bb.m
  unreachable

_ZNKSt6vectorIN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEESaIS4_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.l
  %i.z = ashr exact i64 %i.x, 3                   ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.z, i64 1)
  %i.aa = add nsw i64 %.sroa.speculated.i.i, %i.z ; 2 uses
  %i.ab = icmp ult i64 %i.aa, %i.z
  %i.ac = call i64 @llvm.umin.i64(i64 %i.aa, i64 1152921504606846975)
  %i.ad = select i1 %i.ab, i64 1152921504606846975, i64 %i.ac ; 3 uses
  %.not.i.i178 = icmp ne i64 %i.ad, 0
  call void @llvm.assume(i1 %.not.i.i178)
  %i.ae = shl nuw nsw i64 %i.ad, 3
  %i.af = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #47
          to label %.noexc180 unwind label %.loopexit ; 12 uses

.noexc180:                                        ; preds = %_ZNKSt6vectorIN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEESaIS4_EE12_M_check_lenEmPKc.exit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.x
  %i.ah = load ptr, ptr %11, align 8, !tbaa !607
  store ptr %i.ah, ptr %i.ag, align 8, !tbaa !607
  store ptr null, ptr %11, align 8, !tbaa !607
  %.not10.i.i.i.i = icmp eq ptr %.sroa.0231.0372, %.sroa.12.0371
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc180
  %12 = add i64 %i.v, -8
  %13 = sub i64 %12, %i.w                         ; 2 uses
  %i.ai = lshr i64 %13, 3
  %i.aj = add nuw nsw i64 %i.ai, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %13, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader543, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.af, i64 8
  %i.ak = add i64 %i.v, -8
  %i.al = sub i64 %i.ak, %i.w
  %i.am = and i64 %i.al, -8                       ; 2 uses
  %scevgep537 = getelementptr i8, ptr %scevgep, i64 %i.am
  %scevgep538 = getelementptr i8, ptr %.sroa.0231.0372, i64 8
  %scevgep539 = getelementptr i8, ptr %scevgep538, i64 %i.am
  %bound0 = icmp ult ptr %i.af, %scevgep539
  %bound1 = icmp ult ptr %.sroa.0231.0372, %scevgep537
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader543, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aj, 4611686018427387900     ; 3 uses
  %i.an = shl i64 %n.vec, 3                       ; 2 uses
  %i.ao = getelementptr i8, ptr %i.af, i64 %i.an  ; 2 uses
  %i.ap = getelementptr i8, ptr %.sroa.0231.0372, i64 %i.an
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aq = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.af, i64 %i.aq ; 2 uses
  %next.gep540 = getelementptr i8, ptr %.sroa.0231.0372, i64 %i.aq ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !609)
  call void @llvm.experimental.noalias.scope.decl(metadata !612)
  %i.ar = getelementptr i8, ptr %next.gep540, i64 16 ; 2 uses
  %wide.load = load <2 x ptr>, ptr %next.gep540, align 8, !tbaa !607, !alias.scope !614, !noalias !609
  %wide.load541 = load <2 x ptr>, ptr %i.ar, align 8, !tbaa !607, !alias.scope !614, !noalias !609
  %i.as = getelementptr i8, ptr %next.gep, i64 16
  store <2 x ptr> %wide.load, ptr %next.gep, align 8, !tbaa !607, !alias.scope !617, !noalias !614
  store <2 x ptr> %wide.load541, ptr %i.as, align 8, !tbaa !607, !alias.scope !617, !noalias !614
  store <2 x ptr> splat (ptr null), ptr %next.gep540, align 8, !tbaa !607, !alias.scope !614, !noalias !609
  store <2 x ptr> splat (ptr null), ptr %i.ar, align 8, !tbaa !607, !alias.scope !614, !noalias !609
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.at = icmp eq i64 %index.next, %n.vec
  br i1 %i.at, label %middle.block, label %vector.body, !llvm.loop !619

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aj, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i, label %.lr.ph.i.i.i.i.preheader543

.lr.ph.i.i.i.i.preheader543:                      ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.af, %vector.memcheck ], [ %i.af, %.lr.ph.i.i.i.i.preheader ], [ %i.ao, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %.sroa.0231.0372, %vector.memcheck ], [ %.sroa.0231.0372, %.lr.ph.i.i.i.i.preheader ], [ %i.ap, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader543, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.aw, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader543 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.av, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader543 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !609)
  call void @llvm.experimental.noalias.scope.decl(metadata !612)
  %i.au = load ptr, ptr %.0911.i.i.i.i, align 8, !tbaa !607, !alias.scope !612, !noalias !609
  store ptr %i.au, ptr %.012.i.i.i.i, align 8, !tbaa !607, !alias.scope !609, !noalias !612
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !607, !alias.scope !612, !noalias !609
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.av, %.sroa.12.0371
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !620

_ZNSt6vectorIN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc180
  %.0.lcssa.i.i.i.i = phi ptr [ %i.af, %.noexc180 ], [ %i.ao, %middle.block ], [ %i.aw, %.lr.ph.i.i.i.i ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8 ; 3 uses
  %.not.i23.i = icmp eq ptr %.sroa.0231.0372, null
  br i1 %.not.i23.i, label %_ZNSt6vectorIN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEESaIS4_EE9push_backEOS4_.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0231.0372, i64 noundef %i.x) #45
  br label %_ZNSt6vectorIN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEESaIS4_EE9push_backEOS4_.exit

_ZNSt6vectorIN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEESaIS4_EE9push_backEOS4_.exit: ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i, %bb.n
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ad ; 3 uses
  %.pr = load ptr, ptr %11, align 8, !tbaa !607   ; 4 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEESaIS4_EE9push_backEOS4_.exit
  %i.az = atomicrmw sub ptr %.pr, i32 1 seq_cst, align 4
  %i.ba = icmp eq i32 %i.az, 1
  br i1 %i.ba, label %bb.p, label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEED2Ev.exit

bb.p:                                             ; preds = %bb.o
  call void @_ZN11OpenImageIO4v3_114ImageCacheFileD1Ev(ptr noundef nonnull align 8 dereferenceable(400) %.pr) #3
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef 400) #45
  br label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEED2Ev.exit

_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEED2Ev.exit: ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEESaIS4_EE9push_backEOS4_.exit.thread, %_ZNSt6vectorIN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEESaIS4_EE9push_backEOS4_.exit, %bb.o, %bb.p
  %.sroa.0231.1330 = phi ptr [ %.sroa.0231.0372, %_ZNSt6vectorIN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEESaIS4_EE9push_backEOS4_.exit.thread ], [ %i.af, %_ZNSt6vectorIN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEESaIS4_EE9push_backEOS4_.exit ], [ %i.af, %bb.o ], [ %i.af, %bb.p ] ; 11 uses
  %.sroa.12.1329 = phi ptr [ %i.u, %_ZNSt6vectorIN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEESaIS4_EE9push_backEOS4_.exit.thread ], [ %i.ax, %_ZNSt6vectorIN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEESaIS4_EE9push_backEOS4_.exit ], [ %i.ax, %bb.o ], [ %i.ax, %bb.p ] ; 6 uses
  %.sroa.18.1328 = phi ptr [ %.sroa.18.0370, %_ZNSt6vectorIN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEESaIS4_EE9push_backEOS4_.exit.thread ], [ %i.ay, %_ZNSt6vectorIN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEESaIS4_EE9push_backEOS4_.exit ], [ %i.ay, %bb.o ], [ %i.ay, %bb.p ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #3
  %i.bb = load i32, ptr %i.a, align 4, !tbaa !3   ; 2 uses
  %i.bc = add nsw i32 %i.bb, 1
  store i32 %i.bc, ptr %i.a, align 4, !tbaa !3
  %i.bd = icmp slt i32 %i.bb, 243
  br i1 %i.bd, label %bb.h, label %bb.w, !llvm.loop !621

bb.q:                                             ; preds = %bb.h
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.r:                                             ; preds = %bb.i
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.s:                                             ; preds = %bb.j
  %i.bg = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef 400) #45
  br label %bb.u

.loopexit:                                        ; preds = %_ZNKSt6vectorIN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEESaIS4_EE12_M_check_lenEmPKc.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

.loopexit.split-lp:                               ; preds = %bb.m
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.t:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #3
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r
  %.sroa.18.0370415 = phi ptr [ %.sroa.12.0371, %bb.t ], [ %.sroa.18.0370, %bb.r ], [ %.sroa.18.0370, %bb.s ]
  %.pn91 = phi { ptr, i32 } [ %lpad.phi, %bb.t ], [ %i.bf, %bb.r ], [ %i.bg, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #3
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.q
  %.sroa.18.0370414 = phi ptr [ %.sroa.18.0370415, %bb.u ], [ %.sroa.18.0370, %bb.q ]
  %.pn91.pn = phi { ptr, i32 } [ %.pn91, %bb.u ], [ %i.be, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  br label %_ZN11OpenImageIO4v3_15TimerD2Ev.exit153

bb.w:                                             ; preds = %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #3
  %i.bh = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %1) #3 ; 0 uses
  %i.bi = load i64, ptr %1, align 8, !tbaa !622
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !624
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #3
  br label %.preheader339

.preheader339:                                    ; preds = %bb.w, %bb.y
  %indvars.iv443 = phi i64 [ 0, %bb.w ], [ %indvars.iv.next444, %bb.y ] ; 2 uses
  %.075383 = phi i64 [ 0, %bb.w ], [ %i.bv, %bb.y ] ; 3 uses
  %.0321381 = phi i64 [ 0, %bb.w ], [ %i.cl, %bb.y ]
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0231.1330, i64 %indvars.iv443
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !607
  %i.bn = ptrtoint ptr %i.bm to i64               ; 2 uses
  %i.bo = lshr i64 %i.bn, 23
  %i.bp = xor i64 %i.bo, %i.bn
  %i.bq = mul i64 %i.bp, 2388976653695081527      ; 2 uses
  %i.br = lshr i64 %i.bq, 47
  %i.bs = trunc i64 %.075383 to i32
  %i.bt = or disjoint i32 %i.bs, 64
  %invariant.op596 = xor i64 %i.br, %i.bq
  br label %.preheader338

bb.x:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #3
  store i64 %i.cl, ptr %8, align 16, !tbaa !34
  %i.bu = load ptr, ptr @stdout, align 8, !tbaa !96
  invoke void @_ZN3fmt3v126vprintEP8_IO_FILENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr noundef %i.bu, ptr nonnull @.str.77, i64 8, i64 4, ptr nonnull %8)
          to label %bb.ab unwind label %bb.ac

.preheader338:                                    ; preds = %.preheader339, %bb.z
  %indvars.iv440 = phi i64 [ 0, %.preheader339 ], [ %indvars.iv.next441, %bb.z ] ; 3 uses
  %indvars.iv438 = phi i32 [ %i.bt, %.preheader339 ], [ %indvars.iv.next439, %bb.z ] ; 2 uses
  %.176380 = phi i64 [ %.075383, %.preheader339 ], [ %i.bw, %bb.z ] ; 2 uses
  %.1322378 = phi i64 [ %.0321381, %.preheader339 ], [ %i.cl, %bb.z ]
  %invariant.op = mul nuw nsw i64 %indvars.iv440, 4294967808
  br label %bb.aa

bb.y:                                             ; preds = %bb.z
  %i.bv = add nuw nsw i64 %.075383, 4096
  %indvars.iv.next444 = add nuw nsw i64 %indvars.iv443, 1 ; 2 uses
  %exitcond446.not = icmp eq i64 %indvars.iv.next444, 244
  br i1 %exitcond446.not, label %bb.x, label %.preheader339, !llvm.loop !625

bb.z:                                             ; preds = %bb.aa
  %i.bw = add i64 %.176380, 64
  %indvars.iv.next441 = add nuw nsw i64 %indvars.iv440, 64
  %i.bx = icmp samesign ult i64 %indvars.iv440, 4032
  %indvars.iv.next439 = add i32 %indvars.iv438, 64
  br i1 %i.bx, label %.preheader338, label %bb.y, !llvm.loop !626

end_hunk_1
begin_hunk_2_@_ZN3fmt3v126detail13format_dragonENS1_8basic_fpIoEEjiRNS1_6bufferIcEERi:bb.a
  %.pre681.pre = load ptr, ptr %5, align 8, !tbaa !926
  %.pre1373 = add i64 %.pre.i.i.pre, 1
  br label %_ZN3fmt3v126detail6bigintlSEi.exit

_ZN3fmt3v126detail6bigintlSEi.exit:               ; preds = %bb.i, %_ZN3fmt3v126detail9allocatorIjE8allocateEm.exit.i
  %.pre2.i.i.pre-phi = phi i64 [ %.pre1373, %bb.i ], [ %i.be, %_ZN3fmt3v126detail9allocatorIjE8allocateEm.exit.i ]
  %.pre681 = phi ptr [ %.pre681.pre, %bb.i ], [ %i.bj, %_ZN3fmt3v126detail9allocatorIjE8allocateEm.exit.i ]
  %.pre.i.i = phi i64 [ %.pre.i.i.pre, %bb.i ], [ %i.ah, %_ZN3fmt3v126detail9allocatorIjE8allocateEm.exit.i ]
  store i64 %.pre2.i.i.pre-phi, ptr %i.c, align 8, !tbaa !936
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %.pre681, i64 %.pre.i.i
  store i32 %.lcssa1624, ptr %i.bl, align 4, !tbaa !3
  br label %_ZN3fmt3v126detail6bigintlSEi.exit.thread

_ZN3fmt3v126detail6bigintlSEi.exit.thread:        ; preds = %bb.f, %._crit_edge.i, %_ZN3fmt3v126detail6bigintlSEi.exit, %_ZN3fmt3v126detail6bigintlSEi.exit.thread1161
  store i32 1, ptr %i.n, align 8, !tbaa !3
  store i64 1, ptr %i.m, align 8, !tbaa !936
  %i.bm = lshr i32 %i.x, 5
  store i32 %i.bm, ptr %i.o, align 8, !tbaa !928
  %i.bn = and i32 %i.x, 31                        ; 2 uses
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %_ZN3fmt3v126detail6bigintlSEi.exit135, label %.lr.ph.i124

.lr.ph.i124:                                      ; preds = %_ZN3fmt3v126detail6bigintlSEi.exit.thread
  %i.bp = shl nuw i32 1, %i.bn
  store i32 %i.bp, ptr %i.n, align 8, !tbaa !3
  br label %_ZN3fmt3v126detail6bigintlSEi.exit135

_ZN3fmt3v126detail6bigintlSEi.exit135:            ; preds = %.lr.ph.i124, %_ZN3fmt3v126detail6bigintlSEi.exit.thread
  br i1 %.not, label %_ZN3fmt3v126detail6bigintlSEi.exit155, label %bb.j

bb.j:                                             ; preds = %_ZN3fmt3v126detail6bigintlSEi.exit135
  store i32 1, ptr %i.s, align 8, !tbaa !3
  store i64 1, ptr %i.r, align 8, !tbaa !936
  %i.bq = add nuw nsw i32 %i.x, 1                 ; 2 uses
  %i.br = lshr i32 %i.bq, 5
  store i32 %i.br, ptr %i.t, align 8, !tbaa !928
  %i.bs = and i32 %i.bq, 31                       ; 2 uses
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %_ZN3fmt3v126detail6bigintlSEi.exit155, label %.lr.ph.i144

.lr.ph.i144:                                      ; preds = %bb.j
  %i.bu = shl nuw i32 1, %i.bs
  store i32 %i.bu, ptr %i.s, align 8, !tbaa !3
  br label %_ZN3fmt3v126detail6bigintlSEi.exit155

.loopexit569:                                     ; preds = %bb.u
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %.invoke1568, %_ZN3fmt3v126detail6bigintlSEi.exit155, %bb.o, %_ZN3fmt3v126detail6bigintlSEi.exit253, %bb.m, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i179, %bb.s, %bb.w, %bb.x, %bb.aa, %bb.am, %bb.an, %bb.aq
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZN3fmt3v126detail6bigintlSEi.exit155:            ; preds = %.lr.ph.i144, %bb.j, %_ZN3fmt3v126detail6bigintlSEi.exit135
  %.087 = phi ptr [ null, %_ZN3fmt3v126detail6bigintlSEi.exit135 ], [ %8, %bb.j ], [ %8, %.lr.ph.i144 ] ; 3 uses
  %i.bv = load i32, ptr %4, align 4, !tbaa !3
  invoke void @_ZN3fmt3v126detail6bigint12assign_pow10Ei(ptr noundef nonnull align 8 dereferenceable(172) %6, i32 noundef %i.bv)
          to label %bb.k unwind label %.loopexit.split-lp

bb.k:                                             ; preds = %_ZN3fmt3v126detail6bigintlSEi.exit155
  %i.bw = load i64, ptr %i.h, align 8, !tbaa !936 ; 7 uses
  %.not19.i156 = icmp eq i64 %i.bw, 0
  %extract.t816 = trunc i128 %i.z to i32          ; 3 uses
  br i1 %.not19.i156, label %_ZN3fmt3v126detail6bigintlSEi.exit168, label %.lr.ph.i157

.lr.ph.i157:                                      ; preds = %bb.k
  %i.bx = load ptr, ptr %6, align 8, !tbaa !926   ; 3 uses
  %i.by = xor i32 %i.u, 31                        ; 2 uses
  %min.iters.check1747 = icmp ult i64 %i.bw, 8
  br i1 %min.iters.check1747, label %scalar.ph1746.preheader, label %vector.ph1748

vector.ph1748:                                    ; preds = %.lr.ph.i157
  %n.vec1749 = and i64 %i.bw, -8                  ; 3 uses
  %broadcast.splatinsert1750 = insertelement <4 x i32> poison, i32 %i.by, i64 0
  %broadcast.splat1751 = shufflevector <4 x i32> %broadcast.splatinsert1750, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1752 = insertelement <4 x i32> poison, i32 %i.v, i64 0
  %broadcast.splat1753 = shufflevector <4 x i32> %broadcast.splatinsert1752, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body1754

vector.body1754:                                  ; preds = %vector.body1754, %vector.ph1748
  %index1755 = phi i64 [ 0, %vector.ph1748 ], [ %index.next1759, %vector.body1754 ] ; 2 uses
  %vector.recur1756 = phi <4 x i32> [ <i32 poison, i32 poison, i32 poison, i32 0>, %vector.ph1748 ], [ %i.cc, %vector.body1754 ]
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %index1755 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16 ; 2 uses
  %wide.load1757 = load <4 x i32>, ptr %i.bz, align 4, !tbaa !3 ; 2 uses
  %wide.load1758 = load <4 x i32>, ptr %i.ca, align 4, !tbaa !3 ; 2 uses
  %i.cb = lshr <4 x i32> %wide.load1757, %broadcast.splat1751 ; 2 uses
  %i.cc = lshr <4 x i32> %wide.load1758, %broadcast.splat1751 ; 3 uses
  %i.cd = shufflevector <4 x i32> %vector.recur1756, <4 x i32> %i.cb, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.ce = shufflevector <4 x i32> %i.cb, <4 x i32> %i.cc, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.cf = shl <4 x i32> %wide.load1757, %broadcast.splat1753
  %i.cg = shl <4 x i32> %wide.load1758, %broadcast.splat1753
  %i.ch = add <4 x i32> %i.cf, %i.cd
  %i.ci = add <4 x i32> %i.cg, %i.ce
  store <4 x i32> %i.ch, ptr %i.bz, align 4, !tbaa !3
  store <4 x i32> %i.ci, ptr %i.ca, align 4, !tbaa !3
  %index.next1759 = add nuw i64 %index1755, 8     ; 2 uses
  %i.cj = icmp eq i64 %index.next1759, %n.vec1749
  br i1 %i.cj, label %middle.block1760, label %vector.body1754, !llvm.loop !939

middle.block1760:                                 ; preds = %vector.body1754
  %vector.recur.extract1761 = extractelement <4 x i32> %i.cc, i64 3 ; 2 uses
  %cmp.n1762 = icmp eq i64 %i.bw, %n.vec1749
  br i1 %cmp.n1762, label %._crit_edge.i161, label %scalar.ph1746.preheader

scalar.ph1746.preheader:                          ; preds = %.lr.ph.i157, %middle.block1760
  %.01418.i158.ph = phi i64 [ 0, %.lr.ph.i157 ], [ %n.vec1749, %middle.block1760 ]
  %.017.i159.ph = phi i32 [ 0, %.lr.ph.i157 ], [ %vector.recur.extract1761, %middle.block1760 ]
  br label %scalar.ph1746

._crit_edge.i161:                                 ; preds = %scalar.ph1746, %middle.block1760
  %.lcssa1623 = phi i32 [ %vector.recur.extract1761, %middle.block1760 ], [ %i.cm, %scalar.ph1746 ] ; 2 uses
  %.not.i162 = icmp eq i32 %.lcssa1623, 0
  br i1 %.not.i162, label %_ZN3fmt3v126detail6bigintlSEi.exit168, label %bb.l

scalar.ph1746:                                    ; preds = %scalar.ph1746.preheader, %scalar.ph1746
  %.01418.i158 = phi i64 [ %i.cp, %scalar.ph1746 ], [ %.01418.i158.ph, %scalar.ph1746.preheader ] ; 2 uses
  %.017.i159 = phi i32 [ %i.cm, %scalar.ph1746 ], [ %.017.i159.ph, %scalar.ph1746.preheader ]
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %.01418.i158 ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !3  ; 2 uses
  %i.cm = lshr i32 %i.cl, %i.by                   ; 2 uses
  %i.cn = shl i32 %i.cl, %i.v
  %i.co = add i32 %i.cn, %.017.i159
  store i32 %i.co, ptr %i.ck, align 4, !tbaa !3
  %i.cp = add nuw i64 %.01418.i158, 1             ; 2 uses
  %exitcond.not.i160 = icmp eq i64 %i.cp, %i.bw
  br i1 %exitcond.not.i160, label %._crit_edge.i161, label %scalar.ph1746, !llvm.loop !940

bb.l:                                             ; preds = %._crit_edge.i161
  %i.cq = add i64 %i.bw, 1                        ; 3 uses
  %i.cr = load i64, ptr %i.f, align 8, !tbaa !927
  %i.cs = icmp ugt i64 %i.cq, %i.cr
  br i1 %i.cs, label %bb.m, label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i163

bb.m:                                             ; preds = %bb.l
  %i.ct = load ptr, ptr %i.g, align 8, !tbaa !924
  invoke void %i.ct(ptr noundef nonnull align 8 dereferenceable(172) %6, i64 noundef %i.cq)
          to label %.noexc167 unwind label %.loopexit.split-lp, !inline_history !941

.noexc167:                                        ; preds = %bb.m
  %.pre.i.i165 = load i64, ptr %i.h, align 8, !tbaa !936 ; 2 uses
  %.pre2.i.i166 = add i64 %.pre.i.i165, 1
  %.pre684 = load ptr, ptr %6, align 8, !tbaa !926
  br label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i163

_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i163: ; preds = %.noexc167, %bb.l
  %i.cu = phi ptr [ %i.bx, %bb.l ], [ %.pre684, %.noexc167 ]
  %.pre-phi.i.i164 = phi i64 [ %i.cq, %bb.l ], [ %.pre2.i.i166, %.noexc167 ]
  %i.cv = phi i64 [ %i.bw, %bb.l ], [ %.pre.i.i165, %.noexc167 ]
  store i64 %.pre-phi.i.i164, ptr %i.h, align 8, !tbaa !936
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %i.cv
  store i32 %.lcssa1623, ptr %i.cw, align 4, !tbaa !3
  br label %_ZN3fmt3v126detail6bigintlSEi.exit168

bb.n:                                             ; preds = %bb.a
  %i.cx = load i32, ptr %4, align 4, !tbaa !3     ; 2 uses
  %i.cy = icmp slt i32 %i.cx, 0
  br i1 %i.cy, label %bb.o, label %bb.ab

bb.o:                                             ; preds = %bb.n
  %i.cz = sub nsw i32 0, %i.cx
  invoke void @_ZN3fmt3v126detail6bigint12assign_pow10Ei(ptr noundef nonnull align 8 dereferenceable(172) %5, i32 noundef %i.cz)
          to label %bb.p unwind label %.loopexit.split-lp

bb.p:                                             ; preds = %bb.o
  %i.da = load i64, ptr %i.c, align 8, !tbaa !936 ; 7 uses
  %i.db = load i64, ptr %i.k, align 8, !tbaa !927
  %i.dc = icmp ugt i64 %i.da, %i.db
  br i1 %i.dc, label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i, label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i

_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i: ; preds = %bb.p
  %i.dd = load ptr, ptr %i.l, align 8, !tbaa !924
  invoke void %i.dd(ptr noundef nonnull align 8 dereferenceable(172) %7, i64 noundef %i.da)
          to label %.noexc170 unwind label %.loopexit.split-lp, !inline_history !942

.noexc170:                                        ; preds = %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i
  %.pre.i.i.i = load i64, ptr %i.k, align 8, !tbaa !927
  %i.de = call noundef i64 @llvm.umin.i64(i64 %i.da, i64 %.pre.i.i.i)
  store i64 %i.de, ptr %i.m, align 8, !tbaa !936
  %i.df = load ptr, ptr %5, align 8, !tbaa !926   ; 2 uses
  %.idx8.i = shl nuw nsw i64 %i.da, 2
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 %.idx8.i
  br label %.lr.ph.i.preheader.i

_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i: ; preds = %bb.p
  store i64 %i.da, ptr %i.m, align 8, !tbaa !936
  %i.dh = load ptr, ptr %5, align 8, !tbaa !926   ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.da, 2
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 %.idx.i
  %.not6.i.i = icmp eq i64 %i.da, 0
  br i1 %.not6.i.i, label %.loopexit570, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i, %.noexc170
  %i.dj = phi ptr [ %i.dg, %.noexc170 ], [ %i.di, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i ] ; 2 uses
  %i.dk = phi ptr [ %i.df, %.noexc170 ], [ %i.dh, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i ] ; 6 uses
  %i.dl = ptrtoaddr ptr %i.dk to i64              ; 2 uses
  %i.dm = load ptr, ptr %7, align 8, !tbaa !926   ; 4 uses
  %i.dn = ptrtoaddr ptr %i.dj to i64
  %9 = add i64 %i.dn, -4
  %10 = sub i64 %9, %i.dl                         ; 2 uses
  %i.do = lshr i64 %10, 2
  %i.dp = add nuw nsw i64 %i.do, 1                ; 2 uses
  %min.iters.check1663 = icmp ult i64 %10, 44
  %i.dq = ptrtoaddr ptr %i.dm to i64
  %i.dr = sub i64 %i.dl, %i.dq
  %diff.check = icmp ugt i64 %i.dr, -32
  %or.cond1767 = select i1 %min.iters.check1663, i1 true, i1 %diff.check
  br i1 %or.cond1767, label %.lr.ph.i.i.preheader, label %vector.ph1664

vector.ph1664:                                    ; preds = %.lr.ph.i.preheader.i
  %n.vec1665 = and i64 %i.dp, 9223372036854775800 ; 3 uses
  %i.ds = shl i64 %n.vec1665, 2                   ; 2 uses
  %i.dt = getelementptr i8, ptr %i.dm, i64 %i.ds
  %i.du = getelementptr i8, ptr %i.dk, i64 %i.ds
  br label %vector.body1666

vector.body1666:                                  ; preds = %vector.body1666, %vector.ph1664
  %index1667 = phi i64 [ 0, %vector.ph1664 ], [ %index.next1671, %vector.body1666 ] ; 2 uses
  %i.dv = shl i64 %index1667, 2                   ; 2 uses
  %next.gep = getelementptr i8, ptr %i.dm, i64 %i.dv ; 2 uses
  %next.gep1668 = getelementptr i8, ptr %i.dk, i64 %i.dv ; 2 uses
  %i.dw = getelementptr i8, ptr %next.gep1668, i64 16
  %wide.load1669 = load <4 x i32>, ptr %next.gep1668, align 4, !tbaa !3
  %wide.load1670 = load <4 x i32>, ptr %i.dw, align 4, !tbaa !3
  %i.dx = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load1669, ptr %next.gep, align 4, !tbaa !3
  store <4 x i32> %wide.load1670, ptr %i.dx, align 4, !tbaa !3
  %index.next1671 = add nuw i64 %index1667, 8     ; 2 uses
  %i.dy = icmp eq i64 %index.next1671, %n.vec1665
  br i1 %i.dy, label %middle.block1672, label %vector.body1666, !llvm.loop !943

middle.block1672:                                 ; preds = %vector.body1666
  %cmp.n1673 = icmp eq i64 %i.dp, %n.vec1665
  br i1 %cmp.n1673, label %.loopexit570, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.i.preheader.i, %middle.block1672
  %.08.i.i.ph = phi ptr [ %i.dm, %.lr.ph.i.preheader.i ], [ %i.dt, %middle.block1672 ]
  %.057.i.i.ph = phi ptr [ %i.dk, %.lr.ph.i.preheader.i ], [ %i.du, %middle.block1672 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.08.i.i = phi ptr [ %i.eb, %.lr.ph.i.i ], [ %.08.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.057.i.i = phi ptr [ %i.dz, %.lr.ph.i.i ], [ %.057.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.057.i.i, i64 4 ; 2 uses
  %i.ea = load i32, ptr %.057.i.i, align 4, !tbaa !3
  %i.eb = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 4
  store i32 %i.ea, ptr %.08.i.i, align 4, !tbaa !3
  %.not.i.i169 = icmp eq ptr %i.dz, %i.dj
  br i1 %.not.i.i169, label %.loopexit570, label %.lr.ph.i.i, !llvm.loop !944

.loopexit570:                                     ; preds = %.lr.ph.i.i, %middle.block1672, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i
  %i.ec = phi ptr [ %i.dh, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i ], [ %i.dk, %middle.block1672 ], [ %i.dk, %.lr.ph.i.i ] ; 2 uses
  %i.ed = load i32, ptr %i.e, align 8, !tbaa !928 ; 2 uses
  store i32 %i.ed, ptr %i.o, align 8, !tbaa !928
  br i1 %.not, label %_ZN3fmt3v126detail6bigintlSEi.exit196, label %bb.q

bb.q:                                             ; preds = %.loopexit570
  %i.ee = load i64, ptr %i.c, align 8, !tbaa !936 ; 8 uses
  %i.ef = load i64, ptr %i.p, align 8, !tbaa !927 ; 2 uses
  %i.eg = icmp ugt i64 %i.ee, %i.ef
  br i1 %i.eg, label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i179, label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i171

_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i179: ; preds = %bb.q
  %i.eh = load ptr, ptr %i.q, align 8, !tbaa !924
  invoke void %i.eh(ptr noundef nonnull align 8 dereferenceable(172) %8, i64 noundef %i.ee)
          to label %.noexc182 unwind label %.loopexit.split-lp, !inline_history !942

.noexc182:                                        ; preds = %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i179
  %.pre.i.i.i180 = load i64, ptr %i.p, align 8, !tbaa !927 ; 2 uses
  %i.ei = call noundef i64 @llvm.umin.i64(i64 %i.ee, i64 %.pre.i.i.i180) ; 2 uses
  store i64 %i.ei, ptr %i.r, align 8, !tbaa !936
  %i.ej = load ptr, ptr %5, align 8, !tbaa !926   ; 2 uses
  %.idx8.i181 = shl nuw nsw i64 %i.ee, 2
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 %.idx8.i181
  br label %.lr.ph.i.preheader.i174

_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i171: ; preds = %bb.q
  store i64 %i.ee, ptr %i.r, align 8, !tbaa !936
  %.idx.i172 = shl nuw nsw i64 %i.ee, 2
  %i.el = getelementptr inbounds nuw i8, ptr %i.ec, i64 %.idx.i172
  %.not6.i.i173 = icmp eq i64 %i.ee, 0
  br i1 %.not6.i.i173, label %.thread, label %.lr.ph.i.preheader.i174

.thread:                                          ; preds = %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i171
  store i32 %i.ed, ptr %i.t, align 8, !tbaa !928
  br label %_ZN3fmt3v126detail6bigintlSEi.exit196

.lr.ph.i.preheader.i174:                          ; preds = %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i171, %.noexc182
  %i.em = phi i64 [ %.pre.i.i.i180, %.noexc182 ], [ %i.ef, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i171 ]
  %.pr = phi i64 [ %i.ei, %.noexc182 ], [ %i.ee, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i171 ] ; 7 uses
  %i.en = phi ptr [ %i.ek, %.noexc182 ], [ %i.el, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i171 ] ; 2 uses
  %i.eo = phi ptr [ %i.ej, %.noexc182 ], [ %i.ec, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i171 ] ; 4 uses
  %i.ep = ptrtoaddr ptr %i.eo to i64              ; 2 uses
  %i.eq = load ptr, ptr %8, align 8, !tbaa !926   ; 7 uses
  %i.er = ptrtoaddr ptr %i.en to i64
  %11 = add i64 %i.er, -4
  %12 = sub i64 %11, %i.ep                        ; 2 uses
  %i.es = lshr i64 %12, 2
  %i.et = add nuw nsw i64 %i.es, 1                ; 2 uses
  %min.iters.check1679 = icmp ult i64 %12, 44
  %i.eu = ptrtoaddr ptr %i.eq to i64
  %i.ev = sub i64 %i.ep, %i.eu
  %diff.check1677 = icmp ugt i64 %i.ev, -32
  %or.cond1769 = select i1 %min.iters.check1679, i1 true, i1 %diff.check1677
  br i1 %or.cond1769, label %.lr.ph.i.i175.preheader, label %vector.ph1680

vector.ph1680:                                    ; preds = %.lr.ph.i.preheader.i174
  %n.vec1681 = and i64 %i.et, 9223372036854775800 ; 3 uses
  %i.ew = shl i64 %n.vec1681, 2                   ; 2 uses
  %i.ex = getelementptr i8, ptr %i.eq, i64 %i.ew
  %i.ey = getelementptr i8, ptr %i.eo, i64 %i.ew
  br label %vector.body1682

vector.body1682:                                  ; preds = %vector.body1682, %vector.ph1680
  %index1683 = phi i64 [ 0, %vector.ph1680 ], [ %index.next1688, %vector.body1682 ] ; 2 uses
  %i.ez = shl i64 %index1683, 2                   ; 2 uses
  %next.gep1684 = getelementptr i8, ptr %i.eq, i64 %i.ez ; 2 uses
  %next.gep1685 = getelementptr i8, ptr %i.eo, i64 %i.ez ; 2 uses
  %i.fa = getelementptr i8, ptr %next.gep1685, i64 16
  %wide.load1686 = load <4 x i32>, ptr %next.gep1685, align 4, !tbaa !3
  %wide.load1687 = load <4 x i32>, ptr %i.fa, align 4, !tbaa !3
  %i.fb = getelementptr i8, ptr %next.gep1684, i64 16
  store <4 x i32> %wide.load1686, ptr %next.gep1684, align 4, !tbaa !3
  store <4 x i32> %wide.load1687, ptr %i.fb, align 4, !tbaa !3
  %index.next1688 = add nuw i64 %index1683, 8     ; 2 uses
  %i.fc = icmp eq i64 %index.next1688, %n.vec1681
  br i1 %i.fc, label %middle.block1689, label %vector.body1682, !llvm.loop !945

middle.block1689:                                 ; preds = %vector.body1682
  %cmp.n1690 = icmp eq i64 %i.et, %n.vec1681
  br i1 %cmp.n1690, label %.loopexit1765, label %.lr.ph.i.i175.preheader

.lr.ph.i.i175.preheader:                          ; preds = %.lr.ph.i.preheader.i174, %middle.block1689
  %.08.i.i176.ph = phi ptr [ %i.eq, %.lr.ph.i.preheader.i174 ], [ %i.ex, %middle.block1689 ]
  %.057.i.i177.ph = phi ptr [ %i.eo, %.lr.ph.i.preheader.i174 ], [ %i.ey, %middle.block1689 ]
  br label %.lr.ph.i.i175

.lr.ph.i.i175:                                    ; preds = %.lr.ph.i.i175.preheader, %.lr.ph.i.i175
  %.08.i.i176 = phi ptr [ %i.ff, %.lr.ph.i.i175 ], [ %.08.i.i176.ph, %.lr.ph.i.i175.preheader ] ; 2 uses
  %.057.i.i177 = phi ptr [ %i.fd, %.lr.ph.i.i175 ], [ %.057.i.i177.ph, %.lr.ph.i.i175.preheader ] ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.057.i.i177, i64 4 ; 2 uses
  %i.fe = load i32, ptr %.057.i.i177, align 4, !tbaa !3
  %i.ff = getelementptr inbounds nuw i8, ptr %.08.i.i176, i64 4
  store i32 %i.fe, ptr %.08.i.i176, align 4, !tbaa !3
  %.not.i.i178 = icmp eq ptr %i.fd, %i.en
  br i1 %.not.i.i178, label %.loopexit1765, label %.lr.ph.i.i175, !llvm.loop !946

.loopexit1765:                                    ; preds = %.lr.ph.i.i175, %middle.block1689
  %i.fg = load i32, ptr %i.e, align 8, !tbaa !928
  store i32 %i.fg, ptr %i.t, align 8, !tbaa !928
  %.not19.i184 = icmp eq i64 %.pr, 0
  br i1 %.not19.i184, label %_ZN3fmt3v126detail6bigintlSEi.exit196, label %.lr.ph.i185.preheader

.lr.ph.i185.preheader:                            ; preds = %.loopexit1765
  %min.iters.check1694 = icmp ult i64 %.pr, 8
  br i1 %min.iters.check1694, label %.lr.ph.i185.preheader1834, label %vector.ph1695

vector.ph1695:                                    ; preds = %.lr.ph.i185.preheader
  %n.vec1696 = and i64 %.pr, -8                   ; 3 uses
  br label %vector.body1697

vector.body1697:                                  ; preds = %vector.body1697, %vector.ph1695
  %index1698 = phi i64 [ 0, %vector.ph1695 ], [ %index.next1702, %vector.body1697 ] ; 2 uses
  %vector.recur1699 = phi <4 x i32> [ <i32 poison, i32 poison, i32 poison, i32 0>, %vector.ph1695 ], [ %i.fk, %vector.body1697 ]
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %index1698 ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 16 ; 2 uses
  %wide.load1700 = load <4 x i32>, ptr %i.fh, align 4, !tbaa !3 ; 2 uses
  %wide.load1701 = load <4 x i32>, ptr %i.fi, align 4, !tbaa !3 ; 3 uses
  %i.fj = lshr <4 x i32> %wide.load1700, splat (i32 31) ; 2 uses
  %i.fk = lshr <4 x i32> %wide.load1701, splat (i32 31) ; 3 uses
  %i.fl = shufflevector <4 x i32> %vector.recur1699, <4 x i32> %i.fj, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.fm = shufflevector <4 x i32> %i.fj, <4 x i32> %i.fk, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.fn = shl <4 x i32> %wide.load1700, splat (i32 1)
  %i.fo = shl <4 x i32> %wide.load1701, splat (i32 1)
  %i.fp = or disjoint <4 x i32> %i.fn, %i.fl
  %i.fq = or disjoint <4 x i32> %i.fo, %i.fm
  store <4 x i32> %i.fp, ptr %i.fh, align 4, !tbaa !3
  store <4 x i32> %i.fq, ptr %i.fi, align 4, !tbaa !3
  %index.next1702 = add nuw i64 %index1698, 8     ; 2 uses
  %i.fr = icmp eq i64 %index.next1702, %n.vec1696
  br i1 %i.fr, label %middle.block1703, label %vector.body1697, !llvm.loop !947

middle.block1703:                                 ; preds = %vector.body1697
  %vector.recur.extract1704 = extractelement <4 x i32> %i.fk, i64 3 ; 2 uses
  %i.fs = extractelement <4 x i32> %wide.load1701, i64 3
  %cmp.n1705 = icmp eq i64 %.pr, %n.vec1696
  br i1 %cmp.n1705, label %._crit_edge.i189, label %.lr.ph.i185.preheader1834

.lr.ph.i185.preheader1834:                        ; preds = %.lr.ph.i185.preheader, %middle.block1703
  %.01418.i186.ph = phi i64 [ 0, %.lr.ph.i185.preheader ], [ %n.vec1696, %middle.block1703 ]
  %.017.i187.ph = phi i32 [ 0, %.lr.ph.i185.preheader ], [ %vector.recur.extract1704, %middle.block1703 ]
  br label %.lr.ph.i185

._crit_edge.i189:                                 ; preds = %.lr.ph.i185, %middle.block1703
  %.lcssa1630 = phi i32 [ %i.fs, %middle.block1703 ], [ %i.fu, %.lr.ph.i185 ]
  %.lcssa1629 = phi i32 [ %vector.recur.extract1704, %middle.block1703 ], [ %i.fv, %.lr.ph.i185 ]
  %.not.i190 = icmp sgt i32 %.lcssa1630, -1
  br i1 %.not.i190, label %_ZN3fmt3v126detail6bigintlSEi.exit196, label %bb.r

.lr.ph.i185:                                      ; preds = %.lr.ph.i185.preheader1834, %.lr.ph.i185
  %.01418.i186 = phi i64 [ %i.fy, %.lr.ph.i185 ], [ %.01418.i186.ph, %.lr.ph.i185.preheader1834 ] ; 2 uses
  %.017.i187 = phi i32 [ %i.fv, %.lr.ph.i185 ], [ %.017.i187.ph, %.lr.ph.i185.preheader1834 ]
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %.01418.i186 ; 2 uses
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !3  ; 3 uses
  %i.fv = lshr i32 %i.fu, 31                      ; 2 uses
  %i.fw = shl i32 %i.fu, 1
  %i.fx = or disjoint i32 %i.fw, %.017.i187
  store i32 %i.fx, ptr %i.ft, align 4, !tbaa !3
  %i.fy = add nuw i64 %.01418.i186, 1             ; 2 uses
  %exitcond.not.i188 = icmp eq i64 %i.fy, %.pr
  br i1 %exitcond.not.i188, label %._crit_edge.i189, label %.lr.ph.i185, !llvm.loop !948

bb.r:                                             ; preds = %._crit_edge.i189
  %i.fz = add i64 %.pr, 1                         ; 3 uses
  %i.ga = icmp ugt i64 %i.fz, %i.em
  br i1 %i.ga, label %bb.s, label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i191

bb.s:                                             ; preds = %bb.r
  %i.gb = load ptr, ptr %i.q, align 8, !tbaa !924
  invoke void %i.gb(ptr noundef nonnull align 8 dereferenceable(172) %8, i64 noundef %i.fz)
          to label %.noexc195 unwind label %.loopexit.split-lp, !inline_history !941

.noexc195:                                        ; preds = %bb.s
  %.pre.i.i193 = load i64, ptr %i.r, align 8, !tbaa !936 ; 2 uses
  %.pre2.i.i194 = add i64 %.pre.i.i193, 1
  %.pre678 = load ptr, ptr %8, align 8, !tbaa !926
  br label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i191

_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i191: ; preds = %.noexc195, %bb.r
  %i.gc = phi ptr [ %i.eq, %bb.r ], [ %.pre678, %.noexc195 ]
  %.pre-phi.i.i192 = phi i64 [ %i.fz, %bb.r ], [ %.pre2.i.i194, %.noexc195 ]
  %i.gd = phi i64 [ %.pr, %bb.r ], [ %.pre.i.i193, %.noexc195 ]
  store i64 %.pre-phi.i.i192, ptr %i.r, align 8, !tbaa !936
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.gc, i64 %i.gd
  store i32 %.lcssa1629, ptr %i.ge, align 4, !tbaa !3
  br label %_ZN3fmt3v126detail6bigintlSEi.exit196

_ZN3fmt3v126detail6bigintlSEi.exit196:            ; preds = %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i191, %._crit_edge.i189, %.loopexit1765, %.thread, %.loopexit570
  %.188 = phi ptr [ null, %.loopexit570 ], [ %8, %.thread ], [ %8, %.loopexit1765 ], [ %8, %._crit_edge.i189 ], [ %8, %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i191 ] ; 3 uses
  %i.gf = load i128, ptr %0, align 16, !tbaa !934 ; 3 uses
  %i.gg = and i128 %i.gf, 18446744073709551615
  %i.gh = load i64, ptr %i.c, align 8, !tbaa !936 ; 4 uses
  %.not23.i.i = icmp eq i64 %i.gh, 0
  br i1 %.not23.i.i, label %_ZN3fmt3v126detail6bigintlSEi.exit213, label %.lr.ph.i.i197

.lr.ph.i.i197:                                    ; preds = %_ZN3fmt3v126detail6bigintlSEi.exit196
  %i.gi = load ptr, ptr %5, align 8, !tbaa !926   ; 3 uses
  %i.gj = lshr i128 %i.gf, 32
  %i.gk = and i128 %i.gj, 79228162514264337589248983040
  br label %bb.t

.preheader.i.i:                                   ; preds = %bb.t
  %.not20.i.i = icmp eq i128 %i.gv, 0
  br i1 %.not20.i.i, label %.lr.ph.i202, label %.lr.ph22.i.i

bb.t:                                             ; preds = %bb.t, %.lr.ph.i.i197
  %.019.i.i = phi i128 [ 0, %.lr.ph.i.i197 ], [ %i.gv, %bb.t ] ; 2 uses
  %.01718.i.i = phi i64 [ 0, %.lr.ph.i.i197 ], [ %i.gx, %bb.t ] ; 2 uses
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.gi, i64 %.01718.i.i ; 2 uses
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !3
  %i.gn = zext i32 %i.gm to i128                  ; 2 uses
  %i.go = mul nuw nsw i128 %i.gg, %i.gn
  %i.gp = and i128 %.019.i.i, 4294967295
  %i.gq = add nuw nsw i128 %i.go, %i.gp           ; 2 uses
  %i.gr = mul nuw i128 %i.gk, %i.gn
  %i.gs = lshr i128 %i.gq, 32
  %i.gt = lshr i128 %.019.i.i, 32
  %i.gu = add nuw i128 %i.gr, %i.gt
  %i.gv = add nuw i128 %i.gu, %i.gs               ; 3 uses
  %i.gw = trunc i128 %i.gq to i32
  store i32 %i.gw, ptr %i.gl, align 4, !tbaa !3
  %i.gx = add nuw i64 %.01718.i.i, 1              ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.gx, %i.gh
  br i1 %exitcond.not.i.i, label %.preheader.i.i, label %bb.t, !llvm.loop !949

.lr.ph22.i.i:                                     ; preds = %.preheader.i.i, %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i
  %i.gy = phi ptr [ %i.hf, %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i ], [ %i.gi, %.preheader.i.i ]
  %i.gz = phi i64 [ %.pre-phi.i.i.i, %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i ], [ %i.gh, %.preheader.i.i ] ; 2 uses
  %.121.i.i = phi i128 [ %i.hi, %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i ], [ %i.gv, %.preheader.i.i ] ; 2 uses
  %i.ha = trunc i128 %.121.i.i to i32
  %i.hb = add i64 %i.gz, 1                        ; 3 uses
  %i.hc = load i64, ptr %i.a, align 8, !tbaa !927
  %i.hd = icmp ugt i64 %i.hb, %i.hc
  br i1 %i.hd, label %bb.u, label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i

bb.u:                                             ; preds = %.lr.ph22.i.i
  %i.he = load ptr, ptr %i.b, align 8, !tbaa !924
  invoke void %i.he(ptr noundef nonnull align 8 dereferenceable(172) %5, i64 noundef %i.hb)
          to label %.noexc200 unwind label %.loopexit569, !inline_history !950

.noexc200:                                        ; preds = %bb.u
  %.pre.i.i.i199 = load i64, ptr %i.c, align 8, !tbaa !936 ; 2 uses
  %.pre2.i.i.i = add i64 %.pre.i.i.i199, 1
  %.pre.i = load ptr, ptr %5, align 8, !tbaa !926
  br label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i

_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i: ; preds = %.noexc200, %.lr.ph22.i.i
end_hunk_2
