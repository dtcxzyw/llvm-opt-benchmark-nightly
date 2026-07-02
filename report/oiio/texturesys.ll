inline.NumInlined: 5129
inline.NumDeleted: 1476
loop-unroll.NumCompletelyUnrolled: 51
loop-unroll.NumRuntimeUnrolled: 52
loop-unroll.NumUnrolled: 108
begin_hunk_0_@_ZN11OpenImageIO4v3_117TextureSystemImpl7textureEPNS0_13TextureSystem13TextureHandleEPNS2_9PerthreadERNS0_13TextureOpt_v2EffffffiPfS9_S9_:bb.a
  %i.aj = tail call noundef zeroext i1 @_ZN11OpenImageIO4v3_117TextureSystemImpl15missing_textureERNS0_13TextureOpt_v2EiPfS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr noundef nonnull align 8 dereferenceable(76) %3, i32 noundef %10, ptr noundef %11, ptr noundef %12, ptr noundef %13, ptr noundef null)
  br label %.critedge

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
  %i.ba = getelementptr inbounds nuw [128 x i8], ptr %i.az, i64 %i.ay ; 8 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 120
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !199 ; 6 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 60
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !227 ; 3 uses
  %i.bf = load i32, ptr %3, align 8, !tbaa !187   ; 2 uses
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
  %.not240 = icmp ne i8 %i.bu, 1
  %or.cond253.not = and i1 %.not240, %i.cl
  %.not241 = icmp ne i8 %i.ci, 1
  %or.cond254.not324 = and i1 %or.cond253.not, %.not241
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 68
  %i.cn = load i32, ptr %i.cm, align 4
  %i.co = icmp slt i32 %i.cn, 1
  %or.cond257 = select i1 %or.cond254.not324, i1 %i.co, i1 false
  br i1 %or.cond257, label %.preheader331, label %bb.ad

.preheader331:                                    ; preds = %bb.w
  %i.cp = icmp sgt i32 %.1.i, 0
  br i1 %i.cp, label %.lr.ph, label %.preheader330

.lr.ph:                                           ; preds = %.preheader331
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ba, i64 48
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !252 ; 2 uses
  %i.cs = sext i32 %i.bf to i64                   ; 2 uses
  %wide.trip.count = zext nneg i32 %.1.i to i64   ; 5 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.cr, i64 %i.cs ; 6 uses
  %min.iters.check = icmp ult i32 %.1.i, 12
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.ct = ptrtoaddr ptr %i.cr to i64
  %i.cu = shl nsw i64 %i.cs, 2
  %i.cv = add i64 %i.cu, %i.ct
  %i.cw = sub i64 %i.a, %i.cv
  %diff.check = icmp ult i64 %i.cw, 32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cx = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.cy = getelementptr i8, ptr %i.cx, i64 16
  %wide.load = load <4 x float>, ptr %i.cx, align 4, !tbaa !26
  %wide.load360 = load <4 x float>, ptr %i.cy, align 4, !tbaa !26
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %index ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  store <4 x float> %wide.load, ptr %i.cz, align 4, !tbaa !26
  store <4 x float> %wide.load360, ptr %i.da, align 4, !tbaa !26
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.db = icmp eq i64 %index.next, %n.vec
  br i1 %i.db, label %middle.block, label %vector.body, !llvm.loop !253

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.preheader330, label %scalar.ph.preheader

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
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !256

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.de = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.df = icmp ugt i64 %i.de, -4
  br i1 %i.df, label %.preheader330, label %scalar.ph

.preheader330:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader331
  %i.dg = icmp slt i32 %spec.select.i, %10        ; 2 uses
  br i1 %i.dg, label %.lr.ph334, label %._crit_edge

.lr.ph334:                                        ; preds = %.preheader330
  %i.dh = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.di = tail call i32 @llvm.umin.i32(i32 %10, i32 %spec.select.i) ; 2 uses
  %i.dj = zext nneg i32 %i.di to i64              ; 3 uses
  %i.dk = add nuw nsw i32 %10, %i.di
  %i.dl = sub i32 %i.dk, %.1.i
  %.pre = load float, ptr %i.dh, align 8, !tbaa !258 ; 2 uses
  %i.dm = xor i32 %.1.i, -1
  %i.dn = add i32 %10, %i.dm                      ; 2 uses
  %i.do = zext i32 %i.dn to i64
  %i.dp = add nuw nsw i64 %i.do, 1                ; 2 uses
  %min.iters.check362 = icmp ult i32 %i.dn, 7
  br i1 %min.iters.check362, label %scalar.ph361.preheader, label %vector.ph363

vector.ph363:                                     ; preds = %.lr.ph334
  %n.vec365 = and i64 %i.dp, 8589934584           ; 3 uses
  %i.dq = add nuw nsw i64 %n.vec365, %i.dj
  %broadcast.splatinsert = insertelement <4 x float> poison, float %.pre, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.gep372 = getelementptr [4 x i8], ptr %11, i64 %i.dj
  br label %vector.body366

vector.body366:                                   ; preds = %vector.body366, %vector.ph363
  %index367 = phi i64 [ 0, %vector.ph363 ], [ %index.next368, %vector.body366 ] ; 2 uses
  %gep373 = getelementptr [4 x i8], ptr %invariant.gep372, i64 %index367 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %gep373, i64 16
  store <4 x float> %broadcast.splat, ptr %gep373, align 4, !tbaa !26
  store <4 x float> %broadcast.splat, ptr %i.dr, align 4, !tbaa !26
  %index.next368 = add nuw i64 %index367, 8       ; 2 uses
  %i.ds = icmp eq i64 %index.next368, %n.vec365
  br i1 %i.ds, label %middle.block369, label %vector.body366, !llvm.loop !259

middle.block369:                                  ; preds = %vector.body366
  %cmp.n370 = icmp eq i64 %i.dp, %n.vec365
  br i1 %cmp.n370, label %._crit_edge, label %scalar.ph361.preheader

scalar.ph361.preheader:                           ; preds = %.lr.ph334, %middle.block369
  %indvars.iv343.ph = phi i64 [ %i.dj, %.lr.ph334 ], [ %i.dq, %middle.block369 ]
  br label %scalar.ph361

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
  br i1 %exitcond.not.3, label %.preheader330, label %scalar.ph, !llvm.loop !260

._crit_edge:                                      ; preds = %scalar.ph361, %middle.block369, %.preheader330
  %.not248 = icmp ne ptr %12, null                ; 3 uses
  %i.eb = icmp sgt i32 %10, 0
  %or.cond341 = and i1 %.not248, %i.eb
  br i1 %or.cond341, label %.lr.ph336.preheader, label %.loopexit

.lr.ph336.preheader:                              ; preds = %._crit_edge
  %i.ec = zext nneg i32 %10 to i64
  %i.ed = shl nuw nsw i64 %i.ec, 2                ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %12, i8 0, i64 %i.ed, i1 false), !tbaa !26
  tail call void @llvm.memset.p0.i64(ptr align 4 %13, i8 0, i64 %i.ed, i1 false), !tbaa !26
  br label %.loopexit

scalar.ph361:                                     ; preds = %scalar.ph361.preheader, %scalar.ph361
  %indvars.iv343 = phi i64 [ %indvars.iv.next344, %scalar.ph361 ], [ %indvars.iv343.ph, %scalar.ph361.preheader ] ; 2 uses
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %indvars.iv343
  store float %.pre, ptr %i.ee, align 4, !tbaa !26
  %indvars.iv.next344 = add nuw nsw i64 %indvars.iv343, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next344 to i32
  %exitcond345.not = icmp eq i32 %i.dl, %lftr.wideiv
  br i1 %exitcond345.not, label %._crit_edge, label %scalar.ph361, !llvm.loop !261

.loopexit:                                        ; preds = %.lr.ph336.preheader, %._crit_edge
  %i.ef = load i32, ptr %3, align 8
  %i.eg = icmp eq i32 %i.ef, 0
  %or.cond259 = select i1 %i.dg, i1 %i.eg, i1 false
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 161
  %i.ei = load i8, ptr %i.eh, align 1, !range !62
  %i.ej = trunc nuw i8 %i.ei to i1
  %or.cond262 = select i1 %or.cond259, i1 %i.ej, i1 false
  br i1 %or.cond262, label %bb.x, label %.critedge

bb.x:                                             ; preds = %.loopexit
  %i.ek = icmp eq i32 %i.be, 1
  %i.el = icmp samesign ugt i32 %10, 2
  %or.cond.i = and i1 %i.el, %i.ek
  br i1 %or.cond.i, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.em = load float, ptr %11, align 4, !tbaa !26 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %11, i64 4
  store float %i.em, ptr %i.en, align 4, !tbaa !26
  %i.eo = getelementptr inbounds nuw i8, ptr %11, i64 8
  store float %i.em, ptr %i.eo, align 4, !tbaa !26
  br i1 %.not248, label %bb.z, label %.critedge

bb.z:                                             ; preds = %bb.y
  %i.ep = load float, ptr %12, align 4, !tbaa !26 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %12, i64 4
  store float %i.ep, ptr %i.eq, align 4, !tbaa !26
  %i.er = getelementptr inbounds nuw i8, ptr %12, i64 8
  store float %i.ep, ptr %i.er, align 4, !tbaa !26
  %i.es = load float, ptr %13, align 4, !tbaa !26 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %13, i64 4
  store float %i.es, ptr %i.et, align 4, !tbaa !26
  %i.eu = getelementptr inbounds nuw i8, ptr %13, i64 8
  store float %i.es, ptr %i.eu, align 4, !tbaa !26
  br label %.critedge

bb.aa:                                            ; preds = %bb.x
  %i.ev = icmp eq i32 %i.be, 2
  %i.ew = icmp eq i32 %10, 4
  %or.cond3.i = and i1 %i.ew, %i.ev
  %i.ex = getelementptr inbounds nuw i8, ptr %i.bc, i64 120
  %i.ey = load i32, ptr %i.ex, align 8
  %i.ez = icmp eq i32 %i.ey, 1
  %or.cond63.i = select i1 %or.cond3.i, i1 %i.ez, i1 false
  br i1 %or.cond63.i, label %bb.ab, label %.critedge

bb.ab:                                            ; preds = %bb.aa
  %i.fa = getelementptr inbounds nuw i8, ptr %11, i64 4
  %i.fb = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.fc = load <2 x float>, ptr %11, align 4, !tbaa !26 ; 2 uses
  %i.fd = extractelement <2 x float> %i.fc, i64 0
  store float %i.fd, ptr %i.fa, align 4, !tbaa !26
  store <2 x float> %i.fc, ptr %i.fb, align 4, !tbaa !26
  br i1 %.not248, label %bb.ac, label %.critedge

bb.ac:                                            ; preds = %bb.ab
  %i.fe = getelementptr inbounds nuw i8, ptr %12, i64 4
  %i.ff = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.fg = load <2 x float>, ptr %12, align 4, !tbaa !26 ; 2 uses
  %i.fh = extractelement <2 x float> %i.fg, i64 0
  store float %i.fh, ptr %i.fe, align 4, !tbaa !26
  store <2 x float> %i.fg, ptr %i.ff, align 4, !tbaa !26
  %i.fi = getelementptr inbounds nuw i8, ptr %13, i64 4
  %i.fj = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.fk = load <2 x float>, ptr %13, align 4, !tbaa !26 ; 2 uses
  %i.fl = extractelement <2 x float> %i.fk, i64 0
  store float %i.fl, ptr %i.fi, align 4, !tbaa !26
  store <2 x float> %i.fk, ptr %i.fj, align 4, !tbaa !26
  br label %.critedge

bb.ad:                                            ; preds = %bb.w
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 162 ; 3 uses
  %i.fn = load i8, ptr %i.fm, align 2, !tbaa !112, !range !62, !noundef !63
  %i.fo = trunc nuw i8 %i.fn to i1                ; 3 uses
  %i.fp = fsub float 1.000000e+00, %.0202
  %i.fq = fneg float %7
  %i.fr = fneg float %9
  %.0209 = select i1 %i.fo, float %i.fr, float %9 ; 2 uses
  %.0206 = select i1 %i.fo, float %i.fq, float %7 ; 2 uses
  %.1203 = select i1 %i.fo, float %i.fp, float %.0202 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.ba, i64 44
  %i.ft = load i8, ptr %i.fs, align 4, !tbaa !262, !range !62, !noundef !63
  %i.fu = trunc nuw i8 %i.ft to i1
  br i1 %i.fu, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ba, i64 80
  %i.fw = load float, ptr %i.fv, align 8, !tbaa !263 ; 3 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ba, i64 84
  %i.fy = load float, ptr %i.fx, align 4, !tbaa !264
  %i.fz = tail call float @llvm.fmuladd.f32(float %.0200, float %i.fw, float %i.fy)
  %i.ga = fmul float %6, %i.fw
  %i.gb = fmul float %8, %i.fw
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ba, i64 88
  %i.gd = load float, ptr %i.gc, align 8, !tbaa !265 ; 3 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ba, i64 92
  %i.gf = load float, ptr %i.ge, align 4, !tbaa !266
  %i.gg = tail call float @llvm.fmuladd.f32(float %.1203, float %i.gd, float %i.gf)
  %i.gh = fmul float %.0206, %i.gd
  %i.gi = fmul float %.0209, %i.gd
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.1210 = phi float [ %.0209, %bb.ad ], [ %i.gi, %bb.ae ] ; 2 uses
  %.0208 = phi float [ %8, %bb.ad ], [ %i.gb, %bb.ae ] ; 2 uses
  %.1207 = phi float [ %.0206, %bb.ad ], [ %i.gh, %bb.ae ] ; 2 uses
  %.0205 = phi float [ %6, %bb.ad ], [ %i.ga, %bb.ae ] ; 2 uses
  %.2204 = phi float [ %.1203, %bb.ad ], [ %i.gg, %bb.ae ] ; 2 uses
  %.1201 = phi float [ %.0200, %bb.ad ], [ %i.fz, %bb.ae ] ; 2 uses
  %.not242 = icmp ne i32 %10, 4
  %i.gj = ptrtoint ptr %11 to i64
  %i.gk = ptrtoint ptr %12 to i64
  %i.gl = or i64 %i.gk, %i.gj
  %i.gm = ptrtoint ptr %13 to i64
  %i.gn = or i64 %i.gl, %i.gm
  %i.go = and i64 %i.gn, 15
  %i.gp = icmp ne i64 %i.go, 0
  %or.cond283 = or i1 %.not242, %i.gp
  br i1 %or.cond283, label %.critedge268, label %bb.ap

.critedge268:                                     ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #3
end_hunk_0
