Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/rsa_oaep?download=true
inline.NumInlined: 22
inline.NumDeleted: 9
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@RSA_padding_check_PKCS1_OAEP_mgf1:bb.a
  %n.vec267 = and i64 %wide.trip.count215, 2147483616 ; 4 uses
  br label %vector.body268

vector.body268:                                   ; preds = %vector.ph266, %vector.body268
  %index269 = phi i64 [ 0, %vector.ph266 ], [ %index.next274, %vector.body268 ] ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.as, i64 %index269 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %wide.load270 = load <16 x i8>, ptr %i.bo, align 1, !tbaa !8
  %wide.load271 = load <16 x i8>, ptr %i.bp, align 1, !tbaa !8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.q, i64 %index269 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16 ; 2 uses
  %wide.load272 = load <16 x i8>, ptr %i.bq, align 1, !tbaa !8
  %wide.load273 = load <16 x i8>, ptr %i.br, align 1, !tbaa !8
  %i.bs = xor <16 x i8> %wide.load272, %wide.load270
  %i.bt = xor <16 x i8> %wide.load273, %wide.load271
  store <16 x i8> %i.bs, ptr %i.bq, align 1, !tbaa !8
  store <16 x i8> %i.bt, ptr %i.br, align 1, !tbaa !8
  %index.next274 = add nuw i64 %index269, 32      ; 2 uses
  %i.bu = icmp eq i64 %index.next274, %n.vec267
  br i1 %i.bu, label %middle.block275, label %vector.body268, !llvm.loop !24

middle.block275:                                  ; preds = %vector.body268
  %cmp.n276 = icmp eq i64 %n.vec267, %wide.trip.count215
  br i1 %cmp.n276, label %._crit_edge185, label %vec.epilog.iter.check280

vec.epilog.iter.check280:                         ; preds = %middle.block275
  %min.epilog.iters.check281 = icmp eq i64 %i.bn, 0
  br i1 %min.epilog.iters.check281, label %.lr.ph184.preheader, label %vec.epilog.ph282, !prof !12

vec.epilog.ph282:                                 ; preds = %vector.main.loop.iter.check264, %vec.epilog.iter.check280
  %vec.epilog.resume.val277 = phi i64 [ %n.vec267, %vec.epilog.iter.check280 ], [ 0, %vector.main.loop.iter.check264 ]
  %n.vec283 = and i64 %wide.trip.count215, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body284

vec.epilog.vector.body284:                        ; preds = %vec.epilog.vector.body284, %vec.epilog.ph282
  %index285 = phi i64 [ %vec.epilog.resume.val277, %vec.epilog.ph282 ], [ %index.next288, %vec.epilog.vector.body284 ] ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.as, i64 %index285
  %wide.load286 = load <4 x i8>, ptr %i.bv, align 1, !tbaa !8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.q, i64 %index285 ; 2 uses
  %wide.load287 = load <4 x i8>, ptr %i.bw, align 1, !tbaa !8
  %i.bx = xor <4 x i8> %wide.load287, %wide.load286
  store <4 x i8> %i.bx, ptr %i.bw, align 1, !tbaa !8
  %index.next288 = add nuw i64 %index285, 4       ; 2 uses
  %i.by = icmp eq i64 %index.next288, %n.vec283
  br i1 %i.by, label %vec.epilog.middle.block289, label %vec.epilog.vector.body284, !llvm.loop !25

vec.epilog.middle.block289:                       ; preds = %vec.epilog.vector.body284
  %cmp.n290 = icmp eq i64 %n.vec283, %wide.trip.count215
  br i1 %cmp.n290, label %._crit_edge185, label %.lr.ph184.preheader

.lr.ph184.preheader:                              ; preds = %iter.check278, %vec.epilog.iter.check280, %vec.epilog.middle.block289
  %indvars.iv212.ph = phi i64 [ 0, %iter.check278 ], [ %n.vec267, %vec.epilog.iter.check280 ], [ %n.vec283, %vec.epilog.middle.block289 ]
  br label %.lr.ph184

.lr.ph184:                                        ; preds = %.lr.ph184.preheader, %.lr.ph184
  %indvars.iv212 = phi i64 [ %indvars.iv.next213, %.lr.ph184 ], [ %indvars.iv212.ph, %.lr.ph184.preheader ] ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.as, i64 %indvars.iv212
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.q, i64 %indvars.iv212 ; 2 uses
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !8
  %i.cd = xor i8 %i.cc, %i.ca
  store i8 %i.cd, ptr %i.cb, align 1, !tbaa !8
  %indvars.iv.next213 = add nuw nsw i64 %indvars.iv212, 1 ; 2 uses
  %exitcond216.not = icmp eq i64 %indvars.iv.next213, %wide.trip.count215
  br i1 %exitcond216.not, label %._crit_edge185, label %.lr.ph184, !llvm.loop !26

._crit_edge185:                                   ; preds = %.lr.ph184, %middle.block275, %vec.epilog.middle.block289, %.preheader174
  %i.ce = sext i32 %6 to i64
  %i.cf = call i32 @EVP_Digest(ptr noundef %5, i64 noundef %i.ce, ptr noundef nonnull %i.b, ptr noundef null, ptr noundef %.0149, ptr noundef null) #6
  %.not164 = icmp eq i32 %i.cf, 0
  br i1 %.not164, label %._crit_edge228, label %bb.i

bb.i:                                             ; preds = %._crit_edge185
  %i.cg = call i32 @CRYPTO_memcmp(ptr noundef nonnull %i.q, ptr noundef nonnull %i.b, i64 noundef %i.ar) #6
  %i.ch = icmp eq i32 %i.cg, 0
  %i.ci = and i1 %i.aq, %i.ch
  %i.cj = sext i1 %i.ci to i32                    ; 2 uses
  %i.ck = icmp slt i32 %i.f, %i.o
  br i1 %i.ck, label %.lr.ph191, label %._crit_edge192

.lr.ph191:                                        ; preds = %bb.i, %.lr.ph191
  %indvars.iv217 = phi i64 [ %indvars.iv.next218, %.lr.ph191 ], [ %i.ar, %bb.i ] ; 3 uses
  %.0140189 = phi i32 [ %i.cy, %.lr.ph191 ], [ 0, %bb.i ] ; 2 uses
  %.0141188 = phi i32 [ %i.da, %.lr.ph191 ], [ %i.cj, %bb.i ]
  %.0144187 = phi i32 [ %i.cx, %.lr.ph191 ], [ 0, %bb.i ]
  %i.cl = getelementptr inbounds nuw i8, ptr %i.q, i64 %indvars.iv217
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !8   ; 2 uses
  %i.cn = icmp eq i8 %i.cm, 1                     ; 2 uses
  %i.co = icmp eq i8 %i.cm, 0
  %i.cp = xor i32 %.0140189, -1
  %i.cq = select i1 %i.cn, i32 %i.cp, i32 0       ; 2 uses
  %i.cr = call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.cq) #7, !srcloc !36
  %i.cs = trunc nuw i64 %indvars.iv217 to i32
  %i.ct = and i32 %i.cr, %i.cs
  %i.cu = xor i32 %i.cq, -1
  %i.cv = call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.cu) #7, !srcloc !36
  %i.cw = and i32 %i.cv, %.0144187
  %i.cx = or i32 %i.cw, %i.ct                     ; 2 uses
  %i.cy = select i1 %i.cn, i32 -1, i32 %.0140189  ; 3 uses
  %i.cz = select i1 %i.co, i32 -1, i32 %i.cy
  %i.da = and i32 %i.cz, %.0141188                ; 2 uses
  %indvars.iv.next218 = add nuw nsw i64 %indvars.iv217, 1 ; 2 uses
  %i.db = trunc nuw i64 %indvars.iv.next218 to i32
  %i.dc = icmp sgt i32 %i.o, %i.db
  br i1 %i.dc, label %.lr.ph191, label %._crit_edge192, !llvm.loop !27

._crit_edge192:                                   ; preds = %.lr.ph191, %bb.i
  %.0144.lcssa = phi i32 [ 0, %bb.i ], [ %i.cx, %.lr.ph191 ] ; 2 uses
  %.0141.lcssa = phi i32 [ %i.cj, %bb.i ], [ %i.da, %.lr.ph191 ]
  %.0140.lcssa = phi i32 [ 0, %bb.i ], [ %i.cy, %.lr.ph191 ]
  %.neg = xor i32 %.0144.lcssa, -1
  %i.dd = add i32 %i.o, %.neg                     ; 5 uses
  %i.de = sub i32 %1, %i.dd
  %i.df = or i32 %i.de, %i.dd
  %isnotneg.i.inv = icmp slt i32 %i.df, 0
  %i.dg = select i1 %isnotneg.i.inv, i32 0, i32 %.0140.lcssa
  %i.dh = and i32 %i.dg, %.0141.lcssa             ; 3 uses
  %i.di = add i32 %i.o, %i.n                      ; 4 uses
  %i.dj = sub i32 %i.di, %1
  %i.dk = sub i32 %i.f, %i.o
  %i.dl = and i32 %i.dj, %i.dk
  %.neg.i.i168 = ashr i32 %i.dl, 31               ; 2 uses
  %i.dm = call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %.neg.i.i168) #7, !srcloc !36
  %i.dn = and i32 %i.dm, %i.di
  %i.do = xor i32 %.neg.i.i168, -1
  %i.dp = call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.do) #7, !srcloc !36
  %i.dq = and i32 %i.dp, %1
  %i.dr = or i32 %i.dq, %i.dn                     ; 2 uses
  %i.ds = icmp sgt i32 %i.di, 1
  br i1 %i.ds, label %.lr.ph203, label %.preheader

.lr.ph203:                                        ; preds = %._crit_edge192
  %i.dt = sub i32 %.0144.lcssa, %i.f
  %.4196 = add nuw nsw i32 %i.f, 1                ; 2 uses
  %i.du = zext nneg i32 %.4196 to i64             ; 10 uses
  %scevgep = getelementptr i8, ptr %i.q, i64 %i.du
  %i.dv = add nuw nsw i64 %i.du, 1                ; 2 uses
  %scevgep293 = getelementptr i8, ptr %i.q, i64 %i.du
  br label %bb.j

.preheader:                                       ; preds = %._crit_edge200, %._crit_edge192
  %i.dw = icmp sgt i32 %i.dr, 0
  br i1 %i.dw, label %.lr.ph205, label %._crit_edge206

.lr.ph205:                                        ; preds = %.preheader
  %i.dx = and i32 %i.dh, 255
  %wide.trip.count226 = zext nneg i32 %i.dr to i64
  %invariant.gep247 = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.ar
  br label %bb.k

bb.j:                                             ; preds = %.lr.ph203, %._crit_edge200
  %.0143201 = phi i32 [ 1, %.lr.ph203 ], [ %i.fq, %._crit_edge200 ] ; 4 uses
  %i.dy = sub nsw i32 %i.o, %.0143201             ; 2 uses
  %i.dz = icmp slt i32 %.4196, %i.dy
  br i1 %i.dz, label %iter.check313, label %._crit_edge200

iter.check313:                                    ; preds = %bb.j
  %i.ea = and i32 %.0143201, %i.dt
  %.not171 = icmp eq i32 %i.ea, 0
  %i.eb = select i1 %.not171, i32 0, i32 255      ; 2 uses
  %i.ec = call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.eb) #7, !srcloc !36 ; 3 uses
  %i.ed = xor i32 %i.eb, -1
  %i.ee = call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.ed) #7, !srcloc !36 ; 3 uses
  %i.ef = sext i32 %.0143201 to i64               ; 3 uses
  %i.eg = zext nneg i32 %i.dy to i64              ; 3 uses
  %invariant.gep = getelementptr i8, ptr %i.q, i64 %i.ef ; 3 uses
  %umax296 = call i64 @llvm.umax.i64(i64 %i.dv, i64 %i.eg)
  %i.eh = sub nsw i64 %umax296, %i.du             ; 7 uses
  %min.iters.check297 = icmp ult i64 %i.eh, 4
  br i1 %min.iters.check297, label %vec.epilog.scalar.ph314.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check313
  %umax = call i64 @llvm.umax.i64(i64 %i.dv, i64 %i.eg) ; 2 uses
  %scevgep292 = getelementptr i8, ptr %i.q, i64 %umax
  %scevgep294 = getelementptr i8, ptr %scevgep293, i64 %i.ef
  %i.ei = getelementptr i8, ptr %i.q, i64 %umax
  %scevgep295 = getelementptr i8, ptr %i.ei, i64 %i.ef
  %bound0 = icmp ult ptr %scevgep, %scevgep295
  %bound1 = icmp ult ptr %scevgep294, %scevgep292
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph314.preheader, label %vector.main.loop.iter.check298

vector.main.loop.iter.check298:                   ; preds = %vector.memcheck
  %min.iters.check299 = icmp ult i64 %i.eh, 16
  br i1 %min.iters.check299, label %vec.epilog.ph317, label %vector.ph300

vector.ph300:                                     ; preds = %vector.main.loop.iter.check298
  %i.ej = and i64 %i.eh, 12
  %n.vec301 = and i64 %i.eh, -16                  ; 4 uses
  %i.ek = add nsw i64 %n.vec301, %i.du
  %broadcast.splatinsert = insertelement <16 x i32> poison, i32 %i.ec, i64 0
  %broadcast.splat = shufflevector <16 x i32> %broadcast.splatinsert, <16 x i32> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert302 = insertelement <16 x i32> poison, i32 %i.ee, i64 0
  %broadcast.splat303 = shufflevector <16 x i32> %broadcast.splatinsert302, <16 x i32> poison, <16 x i32> zeroinitializer
  br label %vector.body304

vector.body304:                                   ; preds = %vector.ph300, %vector.body304
  %index305 = phi i64 [ 0, %vector.ph300 ], [ %index.next308, %vector.body304 ] ; 2 uses
  %i.el = add nuw i64 %index305, %i.du            ; 2 uses
  %i.em = getelementptr i8, ptr %invariant.gep, i64 %i.el
  %wide.load306 = load <16 x i8>, ptr %i.em, align 1, !tbaa !8, !alias.scope !42
  %i.en = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.el ; 2 uses
  %wide.load307 = load <16 x i8>, ptr %i.en, align 1, !tbaa !8, !alias.scope !44, !noalias !42
  %i.eo = zext <16 x i8> %wide.load306 to <16 x i32>
  %i.ep = zext <16 x i8> %wide.load307 to <16 x i32>
  %i.eq = and <16 x i32> %broadcast.splat, %i.eo
  %i.er = and <16 x i32> %broadcast.splat303, %i.ep
  %i.es = or <16 x i32> %i.er, %i.eq
  %i.et = trunc nuw <16 x i32> %i.es to <16 x i8>
  store <16 x i8> %i.et, ptr %i.en, align 1, !tbaa !8, !alias.scope !44, !noalias !42
  %index.next308 = add nuw i64 %index305, 16      ; 2 uses
  %i.eu = icmp eq i64 %index.next308, %n.vec301
  br i1 %i.eu, label %middle.block309, label %vector.body304, !llvm.loop !31

middle.block309:                                  ; preds = %vector.body304
  %cmp.n310 = icmp eq i64 %i.eh, %n.vec301
  br i1 %cmp.n310, label %._crit_edge200, label %vec.epilog.iter.check315

vec.epilog.iter.check315:                         ; preds = %middle.block309
  %min.epilog.iters.check316 = icmp eq i64 %i.ej, 0
  br i1 %min.epilog.iters.check316, label %vec.epilog.scalar.ph314.preheader, label %vec.epilog.ph317, !prof !39

vec.epilog.ph317:                                 ; preds = %vector.main.loop.iter.check298, %vec.epilog.iter.check315
  %vec.epilog.resume.val311 = phi i64 [ %n.vec301, %vec.epilog.iter.check315 ], [ 0, %vector.main.loop.iter.check298 ]
  %n.vec318 = and i64 %i.eh, -4                   ; 3 uses
  %i.ev = add nsw i64 %n.vec318, %i.du
  %broadcast.splatinsert319 = insertelement <4 x i32> poison, i32 %i.ec, i64 0
  %broadcast.splat320 = shufflevector <4 x i32> %broadcast.splatinsert319, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert321 = insertelement <4 x i32> poison, i32 %i.ee, i64 0
  %broadcast.splat322 = shufflevector <4 x i32> %broadcast.splatinsert321, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body323

vec.epilog.vector.body323:                        ; preds = %vec.epilog.vector.body323, %vec.epilog.ph317
  %index324 = phi i64 [ %vec.epilog.resume.val311, %vec.epilog.ph317 ], [ %index.next327, %vec.epilog.vector.body323 ] ; 2 uses
  %i.ew = add nuw i64 %index324, %i.du            ; 2 uses
  %i.ex = getelementptr i8, ptr %invariant.gep, i64 %i.ew
  %wide.load325 = load <4 x i8>, ptr %i.ex, align 1, !tbaa !8, !alias.scope !42
  %i.ey = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.ew ; 2 uses
  %wide.load326 = load <4 x i8>, ptr %i.ey, align 1, !tbaa !8, !alias.scope !44, !noalias !42
  %i.ez = zext <4 x i8> %wide.load325 to <4 x i32>
  %i.fa = zext <4 x i8> %wide.load326 to <4 x i32>
  %i.fb = and <4 x i32> %broadcast.splat320, %i.ez
  %i.fc = and <4 x i32> %broadcast.splat322, %i.fa
  %i.fd = or <4 x i32> %i.fc, %i.fb
  %i.fe = trunc nuw <4 x i32> %i.fd to <4 x i8>
  store <4 x i8> %i.fe, ptr %i.ey, align 1, !tbaa !8, !alias.scope !44, !noalias !42
  %index.next327 = add nuw i64 %index324, 4       ; 2 uses
  %i.ff = icmp eq i64 %index.next327, %n.vec318
  br i1 %i.ff, label %vec.epilog.middle.block328, label %vec.epilog.vector.body323, !llvm.loop !32

vec.epilog.middle.block328:                       ; preds = %vec.epilog.vector.body323
  %cmp.n329 = icmp eq i64 %i.eh, %n.vec318
  br i1 %cmp.n329, label %._crit_edge200, label %vec.epilog.scalar.ph314.preheader

vec.epilog.scalar.ph314.preheader:                ; preds = %iter.check313, %vector.memcheck, %vec.epilog.iter.check315, %vec.epilog.middle.block328
  %indvars.iv220.ph = phi i64 [ %i.du, %iter.check313 ], [ %i.du, %vector.memcheck ], [ %i.ek, %vec.epilog.iter.check315 ], [ %i.ev, %vec.epilog.middle.block328 ]
  br label %vec.epilog.scalar.ph314

vec.epilog.scalar.ph314:                          ; preds = %vec.epilog.scalar.ph314.preheader, %vec.epilog.scalar.ph314
  %indvars.iv220 = phi i64 [ %indvars.iv.next221, %vec.epilog.scalar.ph314 ], [ %indvars.iv220.ph, %vec.epilog.scalar.ph314.preheader ] ; 3 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv220
  %i.fg = load i8, ptr %gep, align 1, !tbaa !8
  %i.fh = getelementptr inbounds nuw i8, ptr %i.q, i64 %indvars.iv220 ; 2 uses
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !8
  %i.fj = zext i8 %i.fg to i32
  %i.fk = zext i8 %i.fi to i32
  %i.fl = and i32 %i.ec, %i.fj
  %i.fm = and i32 %i.ee, %i.fk
  %i.fn = or i32 %i.fm, %i.fl
  %i.fo = trunc nuw i32 %i.fn to i8
  store i8 %i.fo, ptr %i.fh, align 1, !tbaa !8
  %indvars.iv.next221 = add nuw nsw i64 %indvars.iv220, 1 ; 2 uses
  %i.fp = icmp samesign ult i64 %indvars.iv.next221, %i.eg
  br i1 %i.fp, label %vec.epilog.scalar.ph314, label %._crit_edge200, !llvm.loop !33

._crit_edge200:                                   ; preds = %vec.epilog.scalar.ph314, %middle.block309, %vec.epilog.middle.block328, %bb.j
  %i.fq = shl i32 %.0143201, 1                    ; 2 uses
  %i.fr = icmp slt i32 %i.fq, %i.di
  br i1 %i.fr, label %bb.j, label %.preheader, !llvm.loop !34

bb.k:                                             ; preds = %.lr.ph205, %bb.k
  %indvars.iv223 = phi i64 [ 0, %.lr.ph205 ], [ %indvars.iv.next224, %bb.k ] ; 4 uses
  %i.fs = trunc nuw nsw i64 %indvars.iv223 to i32
  %i.ft = sub i32 %i.fs, %i.dd
  %i.fu = or i32 %i.ft, %i.dd
  %isneg = icmp slt i32 %i.fu, 0
  %gep248 = getelementptr inbounds nuw i8, ptr %invariant.gep247, i64 %indvars.iv223
  %i.fv = getelementptr inbounds nuw i8, ptr %gep248, i64 1
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !8
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv223 ; 2 uses
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !8
  %i.fz = select i1 %isneg, i32 %i.dx, i32 0      ; 2 uses
  %i.ga = zext i8 %i.fw to i32
  %i.gb = zext i8 %i.fy to i32
  %i.gc = call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.fz) #7, !srcloc !36
  %i.gd = and i32 %i.gc, %i.ga
  %i.ge = xor i32 %i.fz, -1
  %i.gf = call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.ge) #7, !srcloc !36
  %i.gg = and i32 %i.gf, %i.gb
  %i.gh = or i32 %i.gg, %i.gd
  %i.gi = trunc nuw i32 %i.gh to i8
  store i8 %i.gi, ptr %i.fx, align 1, !tbaa !8
  %indvars.iv.next224 = add nuw nsw i64 %indvars.iv223, 1 ; 2 uses
  %exitcond227.not = icmp eq i64 %indvars.iv.next224, %wide.trip.count226
  br i1 %exitcond227.not, label %._crit_edge206, label %bb.k, !llvm.loop !35

._crit_edge206:                                   ; preds = %bb.k, %.preheader
  call void @ERR_new() #6
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 332, ptr noundef nonnull @__func__.RSA_padding_check_PKCS1_OAEP_mgf1) #6
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 4, i32 noundef 121, ptr noundef null) #6
  %i.gj = and i32 %i.dh, 1
  call void @err_clear_last_constant_time(i32 noundef %i.gj) #6
  br label %._crit_edge228

._crit_edge228:                                   ; preds = %bb.g, %._crit_edge185, %._crit_edge182, %._crit_edge, %bb.h, %._crit_edge206
  %.0145 = phi i32 [ %i.dd, %._crit_edge206 ], [ -1, %._crit_edge185 ], [ -1, %._crit_edge182 ], [ -1, %._crit_edge ], [ -1, %bb.h ], [ -1, %bb.g ]
  %.1142 = phi i32 [ %i.dh, %._crit_edge206 ], [ %.neg.i.i165, %._crit_edge185 ], [ %.neg.i.i165, %._crit_edge182 ], [ %.neg.i.i165, %._crit_edge ], [ 0, %bb.h ], [ 0, %bb.g ] ; 2 uses
  %.1 = phi ptr [ %.lcssa333, %._crit_edge206 ], [ %.lcssa333, %._crit_edge185 ], [ %.lcssa333, %._crit_edge182 ], [ %.lcssa333, %._crit_edge ], [ null, %bb.h ], [ null, %bb.g ]
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.a, i64 noundef 64) #6
  call void @CRYPTO_clear_free(ptr noundef %i.q, i64 noundef %i.p, ptr noundef nonnull @.str, i32 noundef 337) #6
  call void @CRYPTO_clear_free(ptr noundef %.1, i64 noundef %.pre229, ptr noundef nonnull @.str, i32 noundef 338) #6
  %i.gk = call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %.1142) #7, !srcloc !36
  %i.gl = and i32 %i.gk, %.0145
  %i.gm = xor i32 %.1142, -1
  %i.gn = call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.gm) #7, !srcloc !36
  %i.go = or i32 %i.gn, %i.gl
  br label %bb.l

bb.l:                                             ; preds = %bb.c, %._crit_edge228, %bb.f
  %.0 = phi i32 [ %i.go, %._crit_edge228 ], [ -1, %bb.f ], [ -1, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.0
}

declare i32 @CRYPTO_memcmp(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @err_clear_last_constant_time(i32 noundef) local_unnamed_addr #2

declare ptr @EVP_MD_CTX_new() local_unnamed_addr #2

declare i32 @EVP_DigestInit_ex(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @EVP_DigestUpdate(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @EVP_DigestFinal_ex(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @EVP_MD_CTX_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nounwind }
attributes #7 = { nounwind memory(none) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!4, !4, i64 0}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"llvm.loop.isvectorized", i32 1}
!11 = !{!"llvm.loop.unroll.runtime.disable"}
!12 = !{!"branch_weights", i32 4, i32 28}
!13 = distinct !{!13, !9, !10, !11}
!14 = distinct !{!14, !9, !10, !11}
!15 = distinct !{!15, !9, !11, !10}
!16 = distinct !{!16, !9, !10, !11}
!17 = distinct !{!17, !9, !10, !11}
!18 = distinct !{!18, !9, !11, !10}
!19 = distinct !{!19, !9}
!20 = distinct !{!20, !9}
!21 = distinct !{!21, !9, !10, !11}
!22 = distinct !{!22, !9, !10, !11}
!23 = distinct !{!23, !9, !11, !10}
!24 = distinct !{!24, !9, !10, !11}
!25 = distinct !{!25, !9, !10, !11}
!26 = distinct !{!26, !9, !11, !10}
!27 = distinct !{!27, !9}
!31 = distinct !{!31, !9, !10, !11}
!32 = distinct !{!32, !9, !10, !11}
!33 = distinct !{!33, !9, !10}
!34 = distinct !{!34, !9}
!35 = distinct !{!35, !9}
!36 = !{i64 62253}
!39 = !{!"branch_weights", i32 4, i32 12}
!40 = distinct !{!40, i1 false, !"LVerDomain"}
!41 = distinct !{!41, !40}
!42 = !{!41}
!43 = distinct !{!43, !40}
!44 = !{!43}
end_hunk_0
