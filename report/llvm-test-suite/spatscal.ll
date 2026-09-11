Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/spatscal?download=true
inline.NumInlined: 6
inline.NumDeleted: 2
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@Make_Spatial_Prediction_Frame:bb.a
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !11
  %i.gj = zext i8 %i.gi to i32
  %i.gk = mul nsw i32 %i.fj, %i.gj
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fe, i64 %indvars.iv.i140
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !11
  %i.gn = zext i8 %i.gm to i32
  %i.go = mul nsw i32 %i.fi, %i.gn
  %i.gp = add nsw i32 %i.go, %i.gk
  %i.gq = trunc i32 %i.gp to i16
  %i.gr = getelementptr inbounds nuw [2 x i8], ptr %i.ew, i64 %indvars.iv.i140
  store i16 %i.gq, ptr %i.gr, align 2, !tbaa !60
  %indvars.iv.next.i141 = add nuw nsw i64 %indvars.iv.i140, 1 ; 3 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.fc, i64 %indvars.iv.next.i141
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !11
  %i.gu = zext i8 %i.gt to i32
  %i.gv = mul nsw i32 %i.fj, %i.gu
  %i.gw = getelementptr inbounds nuw i8, ptr %i.fe, i64 %indvars.iv.next.i141
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !11
  %i.gy = zext i8 %i.gx to i32
  %i.gz = mul nsw i32 %i.fi, %i.gy
  %i.ha = add nsw i32 %i.gz, %i.gv
  %i.hb = trunc i32 %i.ha to i16
  %i.hc = getelementptr inbounds nuw [2 x i8], ptr %i.ew, i64 %indvars.iv.next.i141
  store i16 %i.hb, ptr %i.hc, align 2, !tbaa !60
  %indvars.iv.next.i141.1 = add nuw nsw i64 %indvars.iv.i140, 2 ; 2 uses
  %exitcond.not.i142.1 = icmp eq i64 %indvars.iv.next.i141.1, %i.eq
  br i1 %exitcond.not.i142.1, label %._crit_edge.i143, label %scalar.ph255, !llvm.loop !42

._crit_edge.i143:                                 ; preds = %scalar.ph255.prol.loopexit, %scalar.ph255, %middle.block268
  %indvars.iv.next43.i144 = add nuw nsw i64 %indvars.iv42.i137, 1 ; 2 uses
  %exitcond184.not = icmp eq i64 %indvars.iv.next43.i144, %i.er
  br i1 %exitcond184.not, label %Subsample_Vertical.exit, label %.lr.ph.i136, !llvm.loop !30

bb.g:                                             ; preds = %bb.c
  tail call fastcc void @Deinterlace(ptr noundef %2, ptr noundef %3, i32 noundef 1, i32 noundef %8, i32 noundef %9, i32 noundef %16)
  tail call fastcc void @Deinterlace(ptr noundef %3, ptr noundef %2, i32 noundef 0, i32 noundef %8, i32 noundef %9, i32 noundef %16)
  br i1 %i.bv, label %.lr.ph39.i146, label %Subsample_Vertical.exit

.lr.ph39.i146:                                    ; preds = %bb.g
  %i.hd = add nsw i32 %9, -1
  %i.he = ashr i32 %13, 1
  %i.hf = icmp sgt i32 %8, 0
  br i1 %i.hf, label %.lr.ph.preheader.i147, label %Subsample_Vertical.exit157

.lr.ph.preheader.i147:                            ; preds = %.lr.ph39.i146
  %i.hg = zext nneg i32 %8 to i64                 ; 9 uses
  %i.hh = zext nneg i32 %i.d to i64               ; 2 uses
  %i.hi = shl nuw nsw i64 %i.hh, 1
  %i.hj = add nsw i64 %i.hi, -2
  %i.hk = or i64 %i.hj, 2
  %i.hl = mul i64 %i.hk, %i.hg
  %scevgep272 = getelementptr i8, ptr %4, i64 %i.hl ; 2 uses
  %scevgep273 = getelementptr i8, ptr %2, i64 %i.hg
  %scevgep275 = getelementptr i8, ptr %2, i64 %i.hg
  %min.iters.check285 = icmp ult i32 %8, 8
  %n.vec287 = and i64 %i.hg, 2147483640           ; 3 uses
  %cmp.n298 = icmp eq i64 %n.vec287, %i.hg
  %xtraiter337 = and i64 %i.hg, 1
  %lcmp.mod338.not = icmp eq i64 %xtraiter337, 0
  %i.hm = add nsw i64 %i.hg, -1
  br label %.lr.ph.i148

.lr.ph.i148:                                      ; preds = %._crit_edge.i155, %.lr.ph.preheader.i147
  %indvars.iv42.i149 = phi i64 [ 0, %.lr.ph.preheader.i147 ], [ %indvars.iv.next43.i156, %._crit_edge.i155 ] ; 3 uses
  %i.hn = mul nuw nsw i64 %indvars.iv42.i149, %i.hg
  %i.ho = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.hn ; 4 uses
  %i.hp = trunc i64 %indvars.iv42.i149 to i32
  %i.hq = mul i32 %12, %i.hp                      ; 2 uses
  %i.hr = sdiv i32 %i.hq, %13                     ; 2 uses
  %i.hs = mul nsw i32 %i.hr, %8
  %i.ht = sext i32 %i.hs to i64                   ; 3 uses
  %i.hu = getelementptr inbounds i8, ptr %2, i64 %i.ht ; 6 uses
  %i.hv = icmp slt i32 %i.hr, %i.hd
  %narrow.i150 = select i1 %i.hv, i32 %8, i32 0
  %.idx.i151 = zext nneg i32 %narrow.i150 to i64  ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hu, i64 %.idx.i151 ; 5 uses
  %i.hx = srem i32 %i.hq, %13
  %i.hy = shl nsw i32 %i.hx, 4
  %i.hz = add nsw i32 %i.hy, %i.he
  %i.ia = sdiv i32 %i.hz, %13                     ; 5 uses
  %i.ib = sub nsw i32 16, %i.ia                   ; 4 uses
  br i1 %min.iters.check285, label %scalar.ph284.preheader, label %vector.memcheck271

vector.memcheck271:                               ; preds = %.lr.ph.i148
  %i.ic = getelementptr i8, ptr %scevgep273, i64 %i.ht
  %scevgep274 = getelementptr i8, ptr %i.ic, i64 %.idx.i151
  %scevgep276 = getelementptr i8, ptr %scevgep275, i64 %i.ht
  %bound0277 = icmp ult ptr %4, %scevgep274
  %bound1278 = icmp ult ptr %i.hw, %scevgep272
  %found.conflict279 = and i1 %bound0277, %bound1278
  %bound0280 = icmp ult ptr %4, %scevgep276
  %bound1281 = icmp ult ptr %i.hu, %scevgep272
  %found.conflict282 = and i1 %bound0280, %bound1281
  %conflict.rdx283 = or i1 %found.conflict279, %found.conflict282
  br i1 %conflict.rdx283, label %scalar.ph284.preheader, label %vector.ph286

vector.ph286:                                     ; preds = %vector.memcheck271
  %broadcast.splatinsert288 = insertelement <8 x i32> poison, i32 %i.ia, i64 0
  %broadcast.splat289 = shufflevector <8 x i32> %broadcast.splatinsert288, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert290 = insertelement <8 x i32> poison, i32 %i.ib, i64 0
  %broadcast.splat291 = shufflevector <8 x i32> %broadcast.splatinsert290, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body292

vector.body292:                                   ; preds = %vector.body292, %vector.ph286
  %index293 = phi i64 [ 0, %vector.ph286 ], [ %index.next296, %vector.body292 ] ; 4 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.hu, i64 %index293
  %wide.load294 = load <8 x i8>, ptr %i.id, align 1, !tbaa !11, !alias.scope !71
  %i.ie = zext <8 x i8> %wide.load294 to <8 x i32>
  %i.if = mul nsw <8 x i32> %broadcast.splat291, %i.ie
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hw, i64 %index293
  %wide.load295 = load <8 x i8>, ptr %i.ig, align 1, !tbaa !11, !alias.scope !72
  %i.ih = zext <8 x i8> %wide.load295 to <8 x i32>
  %i.ii = mul nsw <8 x i32> %broadcast.splat289, %i.ih
  %i.ij = add nsw <8 x i32> %i.ii, %i.if
  %i.ik = trunc <8 x i32> %i.ij to <8 x i16>
  %i.il = getelementptr inbounds nuw [2 x i8], ptr %i.ho, i64 %index293
  store <8 x i16> %i.ik, ptr %i.il, align 2, !tbaa !60, !alias.scope !73, !noalias !74
  %index.next296 = add nuw i64 %index293, 8       ; 2 uses
  %i.im = icmp eq i64 %index.next296, %n.vec287
  br i1 %i.im, label %middle.block297, label %vector.body292, !llvm.loop !47

middle.block297:                                  ; preds = %vector.body292
  br i1 %cmp.n298, label %._crit_edge.i155, label %scalar.ph284.preheader

scalar.ph284.preheader:                           ; preds = %vector.memcheck271, %.lr.ph.i148, %middle.block297
  %indvars.iv.i152.ph = phi i64 [ 0, %vector.memcheck271 ], [ 0, %.lr.ph.i148 ], [ %n.vec287, %middle.block297 ] ; 6 uses
  br i1 %lcmp.mod338.not, label %scalar.ph284.prol.loopexit, label %scalar.ph284.prol

scalar.ph284.prol:                                ; preds = %scalar.ph284.preheader
  %i.in = getelementptr inbounds nuw i8, ptr %i.hu, i64 %indvars.iv.i152.ph
  %i.io = load i8, ptr %i.in, align 1, !tbaa !11
  %i.ip = zext i8 %i.io to i32
  %i.iq = mul nsw i32 %i.ib, %i.ip
  %i.ir = getelementptr inbounds nuw i8, ptr %i.hw, i64 %indvars.iv.i152.ph
  %i.is = load i8, ptr %i.ir, align 1, !tbaa !11
  %i.it = zext i8 %i.is to i32
  %i.iu = mul nsw i32 %i.ia, %i.it
  %i.iv = add nsw i32 %i.iu, %i.iq
  %i.iw = trunc i32 %i.iv to i16
  %i.ix = getelementptr inbounds nuw [2 x i8], ptr %i.ho, i64 %indvars.iv.i152.ph
  store i16 %i.iw, ptr %i.ix, align 2, !tbaa !60
  %indvars.iv.next.i153.prol = or disjoint i64 %indvars.iv.i152.ph, 1
  br label %scalar.ph284.prol.loopexit

scalar.ph284.prol.loopexit:                       ; preds = %scalar.ph284.prol, %scalar.ph284.preheader
  %indvars.iv.i152.unr = phi i64 [ %indvars.iv.i152.ph, %scalar.ph284.preheader ], [ %indvars.iv.next.i153.prol, %scalar.ph284.prol ]
  %i.iy = icmp eq i64 %indvars.iv.i152.ph, %i.hm
  br i1 %i.iy, label %._crit_edge.i155, label %scalar.ph284

scalar.ph284:                                     ; preds = %scalar.ph284.prol.loopexit, %scalar.ph284
  %indvars.iv.i152 = phi i64 [ %indvars.iv.next.i153.1, %scalar.ph284 ], [ %indvars.iv.i152.unr, %scalar.ph284.prol.loopexit ] ; 5 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.hu, i64 %indvars.iv.i152
  %i.ja = load i8, ptr %i.iz, align 1, !tbaa !11
  %i.jb = zext i8 %i.ja to i32
  %i.jc = mul nsw i32 %i.ib, %i.jb
  %i.jd = getelementptr inbounds nuw i8, ptr %i.hw, i64 %indvars.iv.i152
  %i.je = load i8, ptr %i.jd, align 1, !tbaa !11
  %i.jf = zext i8 %i.je to i32
  %i.jg = mul nsw i32 %i.ia, %i.jf
  %i.jh = add nsw i32 %i.jg, %i.jc
  %i.ji = trunc i32 %i.jh to i16
  %i.jj = getelementptr inbounds nuw [2 x i8], ptr %i.ho, i64 %indvars.iv.i152
  store i16 %i.ji, ptr %i.jj, align 2, !tbaa !60
  %indvars.iv.next.i153 = add nuw nsw i64 %indvars.iv.i152, 1 ; 3 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.hu, i64 %indvars.iv.next.i153
  %i.jl = load i8, ptr %i.jk, align 1, !tbaa !11
  %i.jm = zext i8 %i.jl to i32
  %i.jn = mul nsw i32 %i.ib, %i.jm
  %i.jo = getelementptr inbounds nuw i8, ptr %i.hw, i64 %indvars.iv.next.i153
  %i.jp = load i8, ptr %i.jo, align 1, !tbaa !11
  %i.jq = zext i8 %i.jp to i32
  %i.jr = mul nsw i32 %i.ia, %i.jq
  %i.js = add nsw i32 %i.jr, %i.jn
  %i.jt = trunc i32 %i.js to i16
  %i.ju = getelementptr inbounds nuw [2 x i8], ptr %i.ho, i64 %indvars.iv.next.i153
  store i16 %i.jt, ptr %i.ju, align 2, !tbaa !60
  %indvars.iv.next.i153.1 = add nuw nsw i64 %indvars.iv.i152, 2 ; 2 uses
  %exitcond.not.i154.1 = icmp eq i64 %indvars.iv.next.i153.1, %i.hg
  br i1 %exitcond.not.i154.1, label %._crit_edge.i155, label %scalar.ph284, !llvm.loop !48

._crit_edge.i155:                                 ; preds = %scalar.ph284.prol.loopexit, %scalar.ph284, %middle.block297
  %indvars.iv.next43.i156 = add nuw nsw i64 %indvars.iv42.i149, 2 ; 2 uses
  %i.jv = icmp samesign ult i64 %indvars.iv.next43.i156, %i.hh
  br i1 %i.jv, label %.lr.ph.i148, label %Subsample_Vertical.exit157, !llvm.loop !30

Subsample_Vertical.exit157:                       ; preds = %._crit_edge.i155, %.lr.ph39.i146
  %.not199 = icmp eq i32 %i.d, 1
  br i1 %.not199, label %Subsample_Vertical.exit, label %.lr.ph39.i158

.lr.ph39.i158:                                    ; preds = %Subsample_Vertical.exit157
  %i.jw = add nsw i32 %9, -1
  %i.jx = ashr i32 %13, 1
  %i.jy = icmp sgt i32 %8, 0
  br i1 %i.jy, label %.lr.ph.preheader.i159, label %Subsample_Vertical.exit

.lr.ph.preheader.i159:                            ; preds = %.lr.ph39.i158
  %i.jz = zext nneg i32 %8 to i64                 ; 10 uses
  %i.ka = zext nneg i32 %i.d to i64               ; 2 uses
  %i.kb = shl nuw nsw i64 %i.jz, 1
  %scevgep301 = getelementptr i8, ptr %4, i64 %i.kb ; 2 uses
  %umax = tail call i64 @llvm.umax.i64(i64 %i.ka, i64 3)
  %i.kc = shl nuw nsw i64 %umax, 1
  %i.kd = and i64 %i.kc, 4294967292
  %i.ke = mul nuw nsw i64 %i.kd, %i.jz
  %scevgep302 = getelementptr i8, ptr %4, i64 %i.ke ; 2 uses
  %scevgep303 = getelementptr i8, ptr %3, i64 %i.jz
  %scevgep305 = getelementptr i8, ptr %3, i64 %i.jz
  %min.iters.check315 = icmp ult i32 %8, 8
  %n.vec317 = and i64 %i.jz, 2147483640           ; 3 uses
  %cmp.n328 = icmp eq i64 %n.vec317, %i.jz
  %xtraiter339 = and i64 %i.jz, 1
  %lcmp.mod340.not = icmp eq i64 %xtraiter339, 0
  %i.kf = add nsw i64 %i.jz, -1
  br label %.lr.ph.i160

.lr.ph.i160:                                      ; preds = %._crit_edge.i167, %.lr.ph.preheader.i159
  %indvars.iv42.i161 = phi i64 [ 1, %.lr.ph.preheader.i159 ], [ %indvars.iv.next43.i168, %._crit_edge.i167 ] ; 3 uses
  %i.kg = mul nuw nsw i64 %indvars.iv42.i161, %i.jz
  %i.kh = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.kg ; 4 uses
  %i.ki = trunc i64 %indvars.iv42.i161 to i32
  %i.kj = mul i32 %12, %i.ki                      ; 2 uses
  %i.kk = sdiv i32 %i.kj, %13                     ; 2 uses
  %i.kl = mul nsw i32 %i.kk, %8
  %i.km = sext i32 %i.kl to i64                   ; 3 uses
  %i.kn = getelementptr inbounds i8, ptr %3, i64 %i.km ; 6 uses
  %i.ko = icmp slt i32 %i.kk, %i.jw
  %narrow.i162 = select i1 %i.ko, i32 %8, i32 0
  %.idx.i163 = zext nneg i32 %narrow.i162 to i64  ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kn, i64 %.idx.i163 ; 5 uses
  %i.kq = srem i32 %i.kj, %13
  %i.kr = shl nsw i32 %i.kq, 4
  %i.ks = add nsw i32 %i.kr, %i.jx
  %i.kt = sdiv i32 %i.ks, %13                     ; 5 uses
  %i.ku = sub nsw i32 16, %i.kt                   ; 4 uses
  br i1 %min.iters.check315, label %scalar.ph314.preheader, label %vector.memcheck300

vector.memcheck300:                               ; preds = %.lr.ph.i160
  %i.kv = getelementptr i8, ptr %scevgep303, i64 %i.km
  %scevgep304 = getelementptr i8, ptr %i.kv, i64 %.idx.i163
  %scevgep306 = getelementptr i8, ptr %scevgep305, i64 %i.km
  %bound0307 = icmp ult ptr %scevgep301, %scevgep304
  %bound1308 = icmp ult ptr %i.kp, %scevgep302
  %found.conflict309 = and i1 %bound0307, %bound1308
  %bound0310 = icmp ult ptr %scevgep301, %scevgep306
  %bound1311 = icmp ult ptr %i.kn, %scevgep302
  %found.conflict312 = and i1 %bound0310, %bound1311
  %conflict.rdx313 = or i1 %found.conflict309, %found.conflict312
  br i1 %conflict.rdx313, label %scalar.ph314.preheader, label %vector.ph316

vector.ph316:                                     ; preds = %vector.memcheck300
  %broadcast.splatinsert318 = insertelement <8 x i32> poison, i32 %i.kt, i64 0
  %broadcast.splat319 = shufflevector <8 x i32> %broadcast.splatinsert318, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert320 = insertelement <8 x i32> poison, i32 %i.ku, i64 0
  %broadcast.splat321 = shufflevector <8 x i32> %broadcast.splatinsert320, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body322

vector.body322:                                   ; preds = %vector.body322, %vector.ph316
  %index323 = phi i64 [ 0, %vector.ph316 ], [ %index.next326, %vector.body322 ] ; 4 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kn, i64 %index323
  %wide.load324 = load <8 x i8>, ptr %i.kw, align 1, !tbaa !11, !alias.scope !75
  %i.kx = zext <8 x i8> %wide.load324 to <8 x i32>
  %i.ky = mul nsw <8 x i32> %broadcast.splat321, %i.kx
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kp, i64 %index323
  %wide.load325 = load <8 x i8>, ptr %i.kz, align 1, !tbaa !11, !alias.scope !76
  %i.la = zext <8 x i8> %wide.load325 to <8 x i32>
  %i.lb = mul nsw <8 x i32> %broadcast.splat319, %i.la
  %i.lc = add nsw <8 x i32> %i.lb, %i.ky
  %i.ld = trunc <8 x i32> %i.lc to <8 x i16>
  %i.le = getelementptr inbounds nuw [2 x i8], ptr %i.kh, i64 %index323
  store <8 x i16> %i.ld, ptr %i.le, align 2, !tbaa !60, !alias.scope !77, !noalias !78
  %index.next326 = add nuw i64 %index323, 8       ; 2 uses
  %i.lf = icmp eq i64 %index.next326, %n.vec317
  br i1 %i.lf, label %middle.block327, label %vector.body322, !llvm.loop !53

middle.block327:                                  ; preds = %vector.body322
  br i1 %cmp.n328, label %._crit_edge.i167, label %scalar.ph314.preheader

scalar.ph314.preheader:                           ; preds = %vector.memcheck300, %.lr.ph.i160, %middle.block327
  %indvars.iv.i164.ph = phi i64 [ 0, %vector.memcheck300 ], [ 0, %.lr.ph.i160 ], [ %n.vec317, %middle.block327 ] ; 6 uses
  br i1 %lcmp.mod340.not, label %scalar.ph314.prol.loopexit, label %scalar.ph314.prol

scalar.ph314.prol:                                ; preds = %scalar.ph314.preheader
  %i.lg = getelementptr inbounds nuw i8, ptr %i.kn, i64 %indvars.iv.i164.ph
  %i.lh = load i8, ptr %i.lg, align 1, !tbaa !11
  %i.li = zext i8 %i.lh to i32
  %i.lj = mul nsw i32 %i.ku, %i.li
  %i.lk = getelementptr inbounds nuw i8, ptr %i.kp, i64 %indvars.iv.i164.ph
  %i.ll = load i8, ptr %i.lk, align 1, !tbaa !11
  %i.lm = zext i8 %i.ll to i32
  %i.ln = mul nsw i32 %i.kt, %i.lm
  %i.lo = add nsw i32 %i.ln, %i.lj
  %i.lp = trunc i32 %i.lo to i16
  %i.lq = getelementptr inbounds nuw [2 x i8], ptr %i.kh, i64 %indvars.iv.i164.ph
  store i16 %i.lp, ptr %i.lq, align 2, !tbaa !60
  %indvars.iv.next.i165.prol = or disjoint i64 %indvars.iv.i164.ph, 1
  br label %scalar.ph314.prol.loopexit

scalar.ph314.prol.loopexit:                       ; preds = %scalar.ph314.prol, %scalar.ph314.preheader
  %indvars.iv.i164.unr = phi i64 [ %indvars.iv.i164.ph, %scalar.ph314.preheader ], [ %indvars.iv.next.i165.prol, %scalar.ph314.prol ]
  %i.lr = icmp eq i64 %indvars.iv.i164.ph, %i.kf
  br i1 %i.lr, label %._crit_edge.i167, label %scalar.ph314

scalar.ph314:                                     ; preds = %scalar.ph314.prol.loopexit, %scalar.ph314
  %indvars.iv.i164 = phi i64 [ %indvars.iv.next.i165.1, %scalar.ph314 ], [ %indvars.iv.i164.unr, %scalar.ph314.prol.loopexit ] ; 5 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.kn, i64 %indvars.iv.i164
  %i.lt = load i8, ptr %i.ls, align 1, !tbaa !11
  %i.lu = zext i8 %i.lt to i32
  %i.lv = mul nsw i32 %i.ku, %i.lu
  %i.lw = getelementptr inbounds nuw i8, ptr %i.kp, i64 %indvars.iv.i164
  %i.lx = load i8, ptr %i.lw, align 1, !tbaa !11
  %i.ly = zext i8 %i.lx to i32
  %i.lz = mul nsw i32 %i.kt, %i.ly
  %i.ma = add nsw i32 %i.lz, %i.lv
  %i.mb = trunc i32 %i.ma to i16
  %i.mc = getelementptr inbounds nuw [2 x i8], ptr %i.kh, i64 %indvars.iv.i164
  store i16 %i.mb, ptr %i.mc, align 2, !tbaa !60
  %indvars.iv.next.i165 = add nuw nsw i64 %indvars.iv.i164, 1 ; 3 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.kn, i64 %indvars.iv.next.i165
  %i.me = load i8, ptr %i.md, align 1, !tbaa !11
  %i.mf = zext i8 %i.me to i32
  %i.mg = mul nsw i32 %i.ku, %i.mf
  %i.mh = getelementptr inbounds nuw i8, ptr %i.kp, i64 %indvars.iv.next.i165
  %i.mi = load i8, ptr %i.mh, align 1, !tbaa !11
  %i.mj = zext i8 %i.mi to i32
  %i.mk = mul nsw i32 %i.kt, %i.mj
  %i.ml = add nsw i32 %i.mk, %i.mg
  %i.mm = trunc i32 %i.ml to i16
  %i.mn = getelementptr inbounds nuw [2 x i8], ptr %i.kh, i64 %indvars.iv.next.i165
  store i16 %i.mm, ptr %i.mn, align 2, !tbaa !60
  %indvars.iv.next.i165.1 = add nuw nsw i64 %indvars.iv.i164, 2 ; 2 uses
  %exitcond.not.i166.1 = icmp eq i64 %indvars.iv.next.i165.1, %i.jz
  br i1 %exitcond.not.i166.1, label %._crit_edge.i167, label %scalar.ph314, !llvm.loop !54

._crit_edge.i167:                                 ; preds = %scalar.ph314.prol.loopexit, %scalar.ph314, %middle.block327
  %indvars.iv.next43.i168 = add nuw nsw i64 %indvars.iv42.i161, 2 ; 2 uses
  %i.mo = icmp samesign ult i64 %indvars.iv.next43.i168, %i.ka
  br i1 %i.mo, label %.lr.ph.i160, label %Subsample_Vertical.exit, !llvm.loop !30

Subsample_Vertical.exit:                          ; preds = %._crit_edge.i, %._crit_edge.i131, %._crit_edge.i143, %._crit_edge.i167, %bb.g, %.lr.ph39.i158, %Subsample_Vertical.exit157, %.lr.ph39.i134, %bb.f, %.lr.ph39.i122, %bb.e, %.lr.ph39.i, %bb.b
  %i.mp = icmp slt i32 %7, 0
  br i1 %i.mp, label %bb.h, label %bb.i

bb.h:                                             ; preds = %Subsample_Vertical.exit
  %i.mq = mul nsw i32 %8, %7
  %i.mr = sext i32 %i.mq to i64
  %i.ms = sub nsw i64 0, %i.mr
  %i.mt = getelementptr inbounds [2 x i8], ptr %4, i64 %i.ms
  %i.mu = add nsw i32 %i.d, %7
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %i.mu, i32 0)
  %i.mv = tail call i32 @llvm.smin.i32(i32 %11, i32 %spec.store.select)
  br label %bb.j

bb.i:                                             ; preds = %Subsample_Vertical.exit
  %i.mw = mul nsw i32 %10, %7
  %i.mx = sext i32 %i.mw to i64
  %i.my = getelementptr inbounds i8, ptr %5, i64 %i.mx
  %i.mz = sub nsw i32 %11, %7
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.mz, i32 %i.d)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0110 = phi ptr [ %5, %bb.h ], [ %i.my, %bb.i ] ; 2 uses
  %.0109 = phi ptr [ %i.mt, %bb.h ], [ %4, %bb.i ]
  %.0107 = phi i32 [ %i.mv, %bb.h ], [ %spec.select, %bb.i ] ; 5 uses
  %i.na = icmp slt i32 %6, 0
  br i1 %i.na, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.nb = sub nsw i32 0, %6
  %i.nc = add nsw i32 %i.b, %6
  %spec.store.select1 = tail call i32 @llvm.smax.i32(i32 %i.nc, i32 0)
  %i.nd = tail call i32 @llvm.smin.i32(i32 %10, i32 %spec.store.select1)
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.ne = zext nneg i32 %6 to i64
  %i.nf = getelementptr inbounds nuw i8, ptr %.0110, i64 %i.ne
  %i.ng = sub nsw i32 %10, %6
  %spec.select121 = tail call i32 @llvm.smin.i32(i32 %i.ng, i32 %i.b)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.1 = phi ptr [ %.0110, %bb.k ], [ %i.nf, %bb.l ]
  %.0108 = phi i32 [ %i.nd, %bb.k ], [ %spec.select121, %bb.l ] ; 2 uses
  %.0 = phi i32 [ %i.nb, %bb.k ], [ 0, %bb.l ]
  %i.nh = icmp sgt i32 %.0108, 0
  br i1 %i.nh, label %.lr.ph47.i, label %Subsample_Horizontal.exit

.lr.ph47.i:                                       ; preds = %bb.m
  %i.ni = add nsw i32 %8, -1
  %i.nj = ashr i32 %15, 1
  %i.nk = icmp sgt i32 %.0107, 0
  %i.nl = sext i32 %10 to i64                     ; 2 uses
  %i.nm = sext i32 %8 to i64                      ; 4 uses
  br i1 %i.nk, label %.lr.ph.preheader.i170, label %Subsample_Horizontal.exit

.lr.ph.preheader.i170:                            ; preds = %.lr.ph47.i
  %wide.trip.count.i = zext nneg i32 %.0108 to i64
  %xtraiter341 = and i32 %.0107, 1
  %i.nn = icmp eq i32 %.0107, 1
  %unroll_iter = and i32 %.0107, 2147483646
  %lcmp.mod342.not = icmp eq i32 %xtraiter341, 0
end_hunk_0
begin_hunk_1_@Deinterlace:bb.a
  %i.am = zext i8 %i.al to i32
  %i.an = getelementptr inbounds nuw i8, ptr %i.x, i64 %indvars.iv74
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !11
  %i.ap = zext i8 %i.ao to i32
  %.neg62.us = add nuw nsw i32 %i.af, %i.aj
  %i.aq = add nuw nsw i32 %i.am, %i.ap
  %i.ar = sub nsw i32 %.neg62.us, %i.aq           ; 2 uses
  %i.as = load ptr, ptr @Clip, align 8, !tbaa !10
  %i.at = icmp sgt i32 %i.ar, -1
  %i.au = select i1 %i.at, i32 8, i32 7
  %i.av = add nsw i32 %i.au, %i.ar
  %i.aw = ashr i32 %i.av, 4
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds i8, ptr %i.as, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !11
  %i.ba = getelementptr inbounds nuw i8, ptr %i.p, i64 %indvars.iv74
  store i8 %i.az, ptr %i.ba, align 1, !tbaa !11
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1 ; 2 uses
  %exitcond78.not = icmp eq i64 %indvars.iv.next75, %i.k
  br i1 %exitcond78.not, label %..loopexit_crit_edge.us, label %bb.b, !llvm.loop !79

..loopexit_crit_edge.us:                          ; preds = %bb.b
  %indvars.iv.next80 = add nuw nsw i64 %indvars.iv79, 2 ; 2 uses
  %i.bb = icmp samesign ult i64 %indvars.iv.next80, %i.n
  br i1 %i.bb, label %.lr.ph66.us, label %._crit_edge, !llvm.loop !80

.lr.ph68.split:                                   ; preds = %.lr.ph68
  br i1 %i.i, label %.preheader.preheader, label %._crit_edge

.preheader.preheader:                             ; preds = %.lr.ph68.split
  %i.bc = zext nneg i32 %2 to i64
  %i.bd = zext nneg i32 %3 to i64                 ; 9 uses
  %i.be = zext nneg i32 %i.d to i64
  %i.bf = zext nneg i32 %4 to i64
  %min.iters.check = icmp ult i32 %3, 8
  %min.iters.check87 = icmp ult i32 %3, 32
  %i.bg = and i64 %i.bd, 24
  %n.vec = and i64 %i.bd, 2147483616              ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %i.bd
  %min.epilog.iters.check = icmp eq i64 %i.bg, 0
  %n.vec91 = and i64 %i.bd, 2147483640            ; 3 uses
  %cmp.n96 = icmp eq i64 %n.vec91, %i.bd
  %xtraiter = and i64 %i.bd, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.bh = add nsw i64 %i.bd, -1
  br label %iter.check

iter.check:                                       ; preds = %.preheader.preheader, %..loopexit63_crit_edge
  %indvars.iv71 = phi i64 [ %i.bc, %.preheader.preheader ], [ %indvars.iv.next72, %..loopexit63_crit_edge ] ; 4 uses
  %i.bi = mul nuw nsw i64 %indvars.iv71, %i.bd
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 %i.bi ; 7 uses
  %i.bk = icmp eq i64 %indvars.iv71, 0
  %.pn = select i1 %i.bk, i64 %i.b, i64 %i.c      ; 2 uses
  %i.bl = getelementptr inbounds i8, ptr %i.bj, i64 %.pn ; 5 uses
  %i.bm = icmp eq i64 %indvars.iv71, %i.be
  %.pn58 = select i1 %i.bm, i64 %i.c, i64 %i.b    ; 2 uses
  %i.bn = getelementptr inbounds i8, ptr %i.bj, i64 %.pn58 ; 5 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %diff.check = icmp ugt i64 %.pn, -32
  %diff.check86 = icmp ugt i64 %.pn58, -32
  %conflict.rdx = or i1 %diff.check, %diff.check86
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check87, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 %index ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %wide.load = load <16 x i8>, ptr %i.bo, align 1, !tbaa !11
  %wide.load88 = load <16 x i8>, ptr %i.bp, align 1, !tbaa !11
  %i.bq = zext <16 x i8> %wide.load to <16 x i16>
  %i.br = zext <16 x i8> %wide.load88 to <16 x i16>
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 %index ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %wide.load89 = load <16 x i8>, ptr %i.bs, align 1, !tbaa !11
  %wide.load90 = load <16 x i8>, ptr %i.bt, align 1, !tbaa !11
  %i.bu = zext <16 x i8> %wide.load89 to <16 x i16>
  %i.bv = zext <16 x i8> %wide.load90 to <16 x i16>
  %i.bw = add nuw nsw <16 x i16> %i.bq, splat (i16 1)
  %i.bx = add nuw nsw <16 x i16> %i.br, splat (i16 1)
  %i.by = add nuw nsw <16 x i16> %i.bw, %i.bu
  %i.bz = add nuw nsw <16 x i16> %i.bx, %i.bv
  %i.ca = lshr <16 x i16> %i.by, splat (i16 1)
  %i.cb = lshr <16 x i16> %i.bz, splat (i16 1)
  %i.cc = trunc nuw <16 x i16> %i.ca to <16 x i8>
  %i.cd = trunc nuw <16 x i16> %i.cb to <16 x i8>
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bj, i64 %index ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  store <16 x i8> %i.cc, ptr %i.ce, align 1, !tbaa !11
  store <16 x i8> %i.cd, ptr %i.cf, align 1, !tbaa !11
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.cg = icmp eq i64 %index.next, %n.vec
  br i1 %i.cg, label %middle.block, label %vector.body, !llvm.loop !81

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit63_crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !84

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index92 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next95, %vec.epilog.vector.body ] ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bl, i64 %index92
  %wide.load93 = load <8 x i8>, ptr %i.ch, align 1, !tbaa !11
  %i.ci = zext <8 x i8> %wide.load93 to <8 x i16>
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bn, i64 %index92
  %wide.load94 = load <8 x i8>, ptr %i.cj, align 1, !tbaa !11
  %i.ck = zext <8 x i8> %wide.load94 to <8 x i16>
  %i.cl = add nuw nsw <8 x i16> %i.ci, splat (i16 1)
  %i.cm = add nuw nsw <8 x i16> %i.cl, %i.ck
  %i.cn = lshr <8 x i16> %i.cm, splat (i16 1)
  %i.co = trunc nuw <8 x i16> %i.cn to <8 x i8>
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bj, i64 %index92
  store <8 x i8> %i.co, ptr %i.cp, align 1, !tbaa !11
  %index.next95 = add nuw i64 %index92, 8         ; 2 uses
  %i.cq = icmp eq i64 %index.next95, %n.vec91
  br i1 %i.cq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !82

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n96, label %..loopexit63_crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec91, %vec.epilog.middle.block ] ; 6 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bl, i64 %indvars.iv.ph
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !11
  %i.ct = zext i8 %i.cs to i16
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bn, i64 %indvars.iv.ph
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !11
  %i.cw = zext i8 %i.cv to i16
  %i.cx = add nuw nsw i16 %i.ct, 1
  %i.cy = add nuw nsw i16 %i.cx, %i.cw
  %i.cz = lshr i16 %i.cy, 1
  %i.da = trunc nuw i16 %i.cz to i8
  %i.db = getelementptr inbounds nuw i8, ptr %i.bj, i64 %indvars.iv.ph
  store i8 %i.da, ptr %i.db, align 1, !tbaa !11
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %i.dc = icmp eq i64 %indvars.iv.ph, %i.bh
  br i1 %i.dc, label %..loopexit63_crit_edge, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bl, i64 %indvars.iv
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !11
  %i.df = zext i8 %i.de to i16
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bn, i64 %indvars.iv
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !11
  %i.di = zext i8 %i.dh to i16
  %i.dj = add nuw nsw i16 %i.df, 1
  %i.dk = add nuw nsw i16 %i.dj, %i.di
  %i.dl = lshr i16 %i.dk, 1
  %i.dm = trunc nuw i16 %i.dl to i8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.bj, i64 %indvars.iv
  store i8 %i.dm, ptr %i.dn, align 1, !tbaa !11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.bl, i64 %indvars.iv.next
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !11
  %i.dq = zext i8 %i.dp to i16
  %i.dr = getelementptr inbounds nuw i8, ptr %i.bn, i64 %indvars.iv.next
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !11
  %i.dt = zext i8 %i.ds to i16
  %i.du = add nuw nsw i16 %i.dq, 1
  %i.dv = add nuw nsw i16 %i.du, %i.dt
  %i.dw = lshr i16 %i.dv, 1
  %i.dx = trunc nuw i16 %i.dw to i8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.bj, i64 %indvars.iv.next
  store i8 %i.dx, ptr %i.dy, align 1, !tbaa !11
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %i.bd
  br i1 %exitcond.not.1, label %..loopexit63_crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !83

..loopexit63_crit_edge:                           ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 2 ; 2 uses
  %i.dz = icmp samesign ult i64 %indvars.iv.next72, %i.bf
  br i1 %i.dz, label %iter.check, label %._crit_edge, !llvm.loop !80

._crit_edge:                                      ; preds = %..loopexit63_crit_edge, %..loopexit_crit_edge.us, %.lr.ph68.split.us, %.lr.ph68.split, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nounwind }
attributes #9 = { cold noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!6, !6, i64 0}
!8 = !{!"any pointer", !5, i64 0}
!9 = !{!"p1 omnipotent char", !8, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!5, !5, i64 0}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"llvm.loop.isvectorized", i32 1}
!14 = !{!"llvm.loop.unroll.runtime.disable"}
!15 = !{!"p1 short", !8, i64 0}
!16 = !{!15, !15, i64 0}
!17 = distinct !{!17, !12}
!18 = distinct !{!18, !12}
!19 = distinct !{!19, !12}
!20 = distinct !{!20, !12}
!21 = distinct !{!21, !12}
!22 = distinct !{!22, !12}
!23 = distinct !{!23, !12}
!24 = distinct !{!24, !"LVerDomain"}
!25 = distinct !{!25, !24}
!26 = distinct !{!26, !24}
!27 = distinct !{!27, !24}
!28 = distinct !{!28, !12, !13, !14}
!29 = distinct !{!29, !12, !13}
!30 = distinct !{!30, !12}
!31 = distinct !{!31, !"LVerDomain"}
!32 = distinct !{!32, !31}
!33 = distinct !{!33, !31}
!34 = distinct !{!34, !31}
!35 = distinct !{!35, !12, !13, !14}
!36 = distinct !{!36, !12, !13}
!37 = distinct !{!37, !"LVerDomain"}
!38 = distinct !{!38, !37}
!39 = distinct !{!39, !37}
!40 = distinct !{!40, !37}
!41 = distinct !{!41, !12, !13, !14}
!42 = distinct !{!42, !12, !13}
!43 = distinct !{!43, !"LVerDomain"}
!44 = distinct !{!44, !43}
!45 = distinct !{!45, !43}
!46 = distinct !{!46, !43}
!47 = distinct !{!47, !12, !13, !14}
!48 = distinct !{!48, !12, !13}
!49 = distinct !{!49, !"LVerDomain"}
!50 = distinct !{!50, !49}
!51 = distinct !{!51, !49}
!52 = distinct !{!52, !49}
!53 = distinct !{!53, !12, !13, !14}
!54 = distinct !{!54, !12, !13}
!55 = distinct !{!55, !12}
!56 = distinct !{!56, !12}
!57 = !{!25}
!58 = !{!26}
!59 = !{!"short", !5, i64 0}
!60 = !{!59, !59, i64 0}
!61 = !{!27}
!62 = !{!26, !25}
!63 = !{!32}
!64 = !{!33}
!65 = !{!34}
!66 = !{!33, !32}
!67 = !{!38}
!68 = !{!39}
!69 = !{!40}
!70 = !{!39, !38}
!71 = !{!44}
!72 = !{!45}
!73 = !{!46}
!74 = !{!45, !44}
!75 = !{!50}
!76 = !{!51}
!77 = !{!52}
!78 = !{!51, !50}
!79 = distinct !{!79, !12}
!80 = distinct !{!80, !12}
!81 = distinct !{!81, !12, !13, !14}
!82 = distinct !{!82, !12, !13, !14}
!83 = distinct !{!83, !12, !13}
!84 = !{!"branch_weights", i32 8, i32 24}
end_hunk_1
