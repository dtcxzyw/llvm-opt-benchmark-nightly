Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libjpeg-turbo/original/tjunittest?download=true
inline.NumInlined: 61
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 9
begin_hunk_0_@doTest:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.cg = sext i32 %i.cf to i64                   ; 5 uses
  %i.ch = getelementptr inbounds [8 x i8], ptr @pixFormatStr, i64 %i.cg
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !11 ; 5 uses
  %i.cj = call i32 @tj3Get(ptr noundef nonnull %i.p, i32 noundef 1) #21 ; 2 uses
  %i.ck = call i32 @tj3Get(ptr noundef nonnull %i.p, i32 noundef 4) #21
  %.fr100 = freeze i32 %i.ck                      ; 17 uses
  %i.cl = call i32 @tj3Get(ptr noundef nonnull %i.p, i32 noundef 16) #21 ; 2 uses
  %i.cm = call i32 @tj3Get(ptr noundef nonnull %i.p, i32 noundef 3) #21 ; 3 uses
  %.not.i = icmp eq i32 %i.cj, 0                  ; 7 uses
  %i.cn = select i1 %.not.i, ptr @.str.139, ptr @.str.138 ; 4 uses
  %i.co = select i1 %.not.i, ptr @.str.141, ptr @.str.140 ; 2 uses
  %i.cp = getelementptr inbounds [4 x i8], ptr @tjPixelSize, i64 %i.cg
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !12 ; 4 uses
  %i.cr = mul nsw i32 %i.az, %i.cq                ; 6 uses
  %i.cs = load i32, ptr @sampleSize, align 4, !tbaa !12
  %i.ct = mul nsw i32 %i.cr, %i.cs
  %i.cu = sext i32 %i.ct to i64                   ; 3 uses
  %i.cv = call noalias ptr @malloc(i64 noundef %i.cu) #22 ; 37 uses
  %i.cw = icmp eq ptr %i.cv, null
  br i1 %i.cw, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.cx = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, ptr noundef nonnull @.str.142) ; 0 uses
  store i1 true, ptr @exitStatus, align 4
  br label %compTest.exit

bb.ae:                                            ; preds = %bb.ac
  switch i32 %i.cf, label %bb.ag [
    i32 6, label %bb.af
    i32 11, label %.preheader150.i.i
  ]

.preheader150.i.i:                                ; preds = %bb.ae
  %i.cy = icmp sgt i32 %i.cr, 0
  %.pre.i.i = load i32, ptr @precision, align 4
  %.fr204.i.i = freeze i32 %.pre.i.i              ; 3 uses
  %i.cz = icmp slt i32 %.fr204.i.i, 9             ; 2 uses
  br i1 %i.cy, label %.lr.ph.i.i, label %.preheader148.i.i

.lr.ph.i.i:                                       ; preds = %.preheader150.i.i
  %i.da = load i32, ptr @maxSample, align 4, !tbaa !12 ; 2 uses
  %i.db = trunc i32 %i.da to i16                  ; 3 uses
  br i1 %i.cz, label %.preheader148.thread.i.i, label %iter.check219

iter.check219:                                    ; preds = %.lr.ph.i.i
  %wide.trip.count.i.i = zext nneg i32 %i.cr to i64 ; 6 uses
  %min.iters.check = icmp ult i32 %i.cr, 4
  br i1 %min.iters.check, label %setVal.exit135.i.i.preheader, label %vector.main.loop.iter.check207

vector.main.loop.iter.check207:                   ; preds = %iter.check219
  %min.iters.check208 = icmp ult i32 %i.cr, 16
  br i1 %min.iters.check208, label %vec.epilog.ph223, label %vector.ph209

vector.ph209:                                     ; preds = %vector.main.loop.iter.check207
  %i.dc = and i64 %wide.trip.count.i.i, 12
  %n.vec210 = and i64 %wide.trip.count.i.i, 2147483632 ; 4 uses
  %broadcast.splatinsert211 = insertelement <8 x i16> poison, i16 %i.db, i64 0
  %broadcast.splat212 = shufflevector <8 x i16> %broadcast.splatinsert211, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body213

vector.body213:                                   ; preds = %vector.body213, %vector.ph209
  %index214 = phi i64 [ 0, %vector.ph209 ], [ %index.next215, %vector.body213 ] ; 2 uses
  %i.dd = getelementptr inbounds nuw [2 x i8], ptr %i.cv, i64 %index214 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  store <8 x i16> %broadcast.splat212, ptr %i.dd, align 2, !tbaa !18
  store <8 x i16> %broadcast.splat212, ptr %i.de, align 2, !tbaa !18
  %index.next215 = add nuw i64 %index214, 16      ; 2 uses
  %i.df = icmp eq i64 %index.next215, %n.vec210
  br i1 %i.df, label %middle.block216, label %vector.body213, !llvm.loop !28

middle.block216:                                  ; preds = %vector.body213
  %cmp.n217 = icmp eq i64 %n.vec210, %wide.trip.count.i.i
  br i1 %cmp.n217, label %.preheader147.preheader.i.i, label %vec.epilog.iter.check221

vec.epilog.iter.check221:                         ; preds = %middle.block216
  %min.epilog.iters.check222 = icmp eq i64 %i.dc, 0
  br i1 %min.epilog.iters.check222, label %setVal.exit135.i.i.preheader, label %vec.epilog.ph223, !prof !44

vec.epilog.ph223:                                 ; preds = %vector.main.loop.iter.check207, %vec.epilog.iter.check221
  %vec.epilog.resume.val218 = phi i64 [ %n.vec210, %vec.epilog.iter.check221 ], [ 0, %vector.main.loop.iter.check207 ]
  %n.vec224 = and i64 %wide.trip.count.i.i, 2147483644 ; 3 uses
  %broadcast.splatinsert225 = insertelement <4 x i16> poison, i16 %i.db, i64 0
  %broadcast.splat226 = shufflevector <4 x i16> %broadcast.splatinsert225, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body227

vec.epilog.vector.body227:                        ; preds = %vec.epilog.vector.body227, %vec.epilog.ph223
  %index228 = phi i64 [ %vec.epilog.resume.val218, %vec.epilog.ph223 ], [ %index.next229, %vec.epilog.vector.body227 ] ; 2 uses
  %i.dg = getelementptr inbounds nuw [2 x i8], ptr %i.cv, i64 %index228
  store <4 x i16> %broadcast.splat226, ptr %i.dg, align 2, !tbaa !18
  %index.next229 = add nuw i64 %index228, 4       ; 2 uses
  %i.dh = icmp eq i64 %index.next229, %n.vec224
  br i1 %i.dh, label %vec.epilog.middle.block230, label %vec.epilog.vector.body227, !llvm.loop !29

vec.epilog.middle.block230:                       ; preds = %vec.epilog.vector.body227
  %cmp.n231 = icmp eq i64 %n.vec224, %wide.trip.count.i.i
  br i1 %cmp.n231, label %.preheader147.preheader.i.i, label %setVal.exit135.i.i.preheader

setVal.exit135.i.i.preheader:                     ; preds = %iter.check219, %vec.epilog.iter.check221, %vec.epilog.middle.block230
  %indvars.iv.i.i.ph = phi i64 [ 0, %iter.check219 ], [ %n.vec210, %vec.epilog.iter.check221 ], [ %n.vec224, %vec.epilog.middle.block230 ]
  br label %setVal.exit135.i.i

.preheader148.thread.i.i:                         ; preds = %.lr.ph.i.i
  %i.di = trunc i32 %i.da to i8
  %i.dj = zext nneg i32 %i.cr to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.cv, i8 %i.di, i64 %i.dj, i1 false), !tbaa !16
  br label %.preheader147.us.preheader.i.i

bb.af:                                            ; preds = %bb.ae
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.cv, i8 0, i64 %i.cu, i1 false)
  %i.dk = load i32, ptr @redToY, align 4          ; 2 uses
  %i.dl = load i32, ptr @yellowToY, align 4       ; 2 uses
  %i.dm = load i32, ptr @precision, align 4
  %.fr.i.i = freeze i32 %i.dm                     ; 3 uses
  %i.dn = icmp slt i32 %.fr.i.i, 9
  %i.do = load i32, ptr @maxSample, align 4       ; 2 uses
  br i1 %i.dn, label %.preheader145.us.preheader.i.i, label %.preheader145.preheader.i.i

.preheader145.us.preheader.i.i:                   ; preds = %bb.af
  %i.dp = trunc i32 %i.do to i8
  br label %iter.check

iter.check:                                       ; preds = %.split171.us.us.i.i, %.preheader145.us.preheader.i.i
  %.0113178.us.i.i = phi i32 [ %7, %.split171.us.us.i.i ], [ 0, %.preheader145.us.preheader.i.i ] ; 5 uses
  %i.dq = lshr i32 %.0113178.us.i.i, 3            ; 3 uses
  %i.dr = icmp samesign ult i32 %.0113178.us.i.i, 16 ; 2 uses
  %i.ds = select i1 %i.dr, i32 %i.dk, i32 %i.dl
  %i.dt = trunc i32 %i.ds to i8                   ; 3 uses
  %i.du = select i1 %i.dr, i8 %i.dp, i8 0         ; 3 uses
  %i.dv = xor i32 %.0113178.us.i.i, -1
  %i.dw = add nsw i32 %1, %i.dv
  %.pn133.us.i.i = select i1 %.not.i, i32 %.0113178.us.i.i, i32 %i.dw
  %.pn132.us.i.i = mul nsw i32 %.pn133.us.i.i, %0
  %i.dx = sext i32 %.pn132.us.i.i to i64
  %invariant.gep334.i.i = getelementptr i8, ptr %i.cv, i64 %i.dx ; 5 uses
  %broadcast.splatinsert = insertelement <16 x i32> poison, i32 %i.dq, i64 0
  %broadcast.splat = shufflevector <16 x i32> %broadcast.splatinsert, <16 x i32> poison, <16 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert149 = insertelement <16 x i8> poison, i8 %i.dt, i64 0
  %broadcast.splat150 = shufflevector <16 x i8> %broadcast.splatinsert149, <16 x i8> poison, <16 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert151 = insertelement <16 x i8> poison, i8 %i.du, i64 0
  %broadcast.splat152 = shufflevector <16 x i8> %broadcast.splatinsert151, <16 x i8> poison, <16 x i32> zeroinitializer ; 3 uses
  %i.dy = add nuw nsw <16 x i32> %broadcast.splat, <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.dz = and <16 x i32> %i.dy, splat (i32 1)
  %i.ea = icmp eq <16 x i32> %i.dz, zeroinitializer
  %i.eb = select <16 x i1> %i.ea, <16 x i8> %broadcast.splat152, <16 x i8> %broadcast.splat150
  store <16 x i8> %i.eb, ptr %invariant.gep334.i.i, align 1, !tbaa !16
  %i.ec = add nuw nsw <16 x i32> %broadcast.splat, <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %i.ed = and <16 x i32> %i.ec, splat (i32 1)
  %i.ee = icmp eq <16 x i32> %i.ed, zeroinitializer
  %i.ef = select <16 x i1> %i.ee, <16 x i8> %broadcast.splat152, <16 x i8> %broadcast.splat150
  %i.eg = getelementptr i8, ptr %invariant.gep334.i.i, i64 16
  store <16 x i8> %i.ef, ptr %i.eg, align 1, !tbaa !16
  br i1 %i.bn, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %iter.check
  %i.eh = add nuw nsw <16 x i32> %broadcast.splat, <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %i.ei = and <16 x i32> %i.eh, splat (i32 1)
  %i.ej = icmp eq <16 x i32> %i.ei, zeroinitializer
  %i.ek = select <16 x i1> %i.ej, <16 x i8> %broadcast.splat152, <16 x i8> %broadcast.splat150
  %i.el = getelementptr i8, ptr %invariant.gep334.i.i, i64 32
  store <16 x i8> %i.ek, ptr %i.el, align 1, !tbaa !16
  br label %middle.block

middle.block:                                     ; preds = %vector.body.2, %iter.check
  br i1 %cmp.n, label %.split171.us.us.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %.preheader145.split.us.split.us.us.i.i.preheader, label %vec.epilog.ph, !prof !44

vec.epilog.ph:                                    ; preds = %vec.epilog.iter.check
  %broadcast.splatinsert154 = insertelement <4 x i32> poison, i32 %i.dq, i64 0
  %broadcast.splat155 = shufflevector <4 x i32> %broadcast.splatinsert154, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert156 = insertelement <4 x i8> poison, i8 %i.dt, i64 0
  %broadcast.splat157 = shufflevector <4 x i8> %broadcast.splatinsert156, <4 x i8> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert158 = insertelement <4 x i8> poison, i8 %i.du, i64 0
  %broadcast.splat159 = shufflevector <4 x i8> %broadcast.splatinsert158, <4 x i8> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index162 = phi i64 [ %n.vec, %vec.epilog.ph ], [ %index.next164, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind163 = phi <4 x i32> [ %induction, %vec.epilog.ph ], [ %vec.ind.next165, %vec.epilog.vector.body ] ; 2 uses
  %i.em = lshr <4 x i32> %vec.ind163, splat (i32 3)
  %i.en = add nuw nsw <4 x i32> %i.em, %broadcast.splat155
  %i.eo = and <4 x i32> %i.en, splat (i32 1)
  %i.ep = icmp eq <4 x i32> %i.eo, zeroinitializer
  %i.eq = select <4 x i1> %i.ep, <4 x i8> %broadcast.splat159, <4 x i8> %broadcast.splat157
  %i.er = getelementptr i8, ptr %invariant.gep334.i.i, i64 %index162
  store <4 x i8> %i.eq, ptr %i.er, align 1, !tbaa !16
  %index.next164 = add nuw i64 %index162, 4       ; 2 uses
  %vec.ind.next165 = add <4 x i32> %vec.ind163, splat (i32 4)
  %i.es = icmp eq i64 %index.next164, %n.vec153
  br i1 %i.es, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !30

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n166, label %.split171.us.us.i.i, label %.preheader145.split.us.split.us.us.i.i.preheader

.preheader145.split.us.split.us.us.i.i.preheader: ; preds = %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv282.i.i.ph = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ %n.vec153, %vec.epilog.middle.block ]
  br label %.preheader145.split.us.split.us.us.i.i

.preheader145.split.us.split.us.us.i.i:           ; preds = %.preheader145.split.us.split.us.us.i.i.preheader, %.preheader145.split.us.split.us.us.i.i
  %indvars.iv282.i.i = phi i64 [ %indvars.iv.next283.i.i, %.preheader145.split.us.split.us.us.i.i ], [ %indvars.iv282.i.i.ph, %.preheader145.split.us.split.us.us.i.i.preheader ] ; 3 uses
  %i.et = trunc nuw nsw i64 %indvars.iv282.i.i to i32
  %i.eu = lshr i32 %i.et, 3
  %i.ev = add nuw nsw i32 %i.eu, %i.dq
  %i.ew = and i32 %i.ev, 1
  %i.ex = icmp eq i32 %i.ew, 0
  %spec.select.i.i = select i1 %i.ex, i8 %i.du, i8 %i.dt
  %gep335.i.i = getelementptr i8, ptr %invariant.gep334.i.i, i64 %indvars.iv282.i.i
  store i8 %spec.select.i.i, ptr %gep335.i.i, align 1, !tbaa !16
  %indvars.iv.next283.i.i = add nuw nsw i64 %indvars.iv282.i.i, 1 ; 2 uses
  %exitcond287.not.i.i = icmp eq i64 %indvars.iv.next283.i.i, %wide.trip.count234.i.i
  br i1 %exitcond287.not.i.i, label %.split171.us.us.i.i, label %.preheader145.split.us.split.us.us.i.i, !llvm.loop !31

.split171.us.us.i.i:                              ; preds = %.preheader145.split.us.split.us.us.i.i, %vec.epilog.middle.block, %middle.block
  %7 = add nuw nsw i32 %.0113178.us.i.i, 1        ; 2 uses
  %exitcond288.not.i.i = icmp eq i32 %7, %1
  br i1 %exitcond288.not.i.i, label %initBuf.exit.i, label %iter.check, !llvm.loop !32

.preheader145.preheader.i.i:                      ; preds = %bb.af
  %i.ey = trunc i32 %i.do to i16
  br label %iter.check184

iter.check184:                                    ; preds = %.split171.split.i.i, %.preheader145.preheader.i.i
  %.0113178.i.i = phi i32 [ %i.gn, %.split171.split.i.i ], [ 0, %.preheader145.preheader.i.i ] ; 5 uses
  %i.ez = xor i32 %.0113178.i.i, -1
  %i.fa = add nsw i32 %1, %i.ez
  %.pn133.i.i = select i1 %.not.i, i32 %.0113178.i.i, i32 %i.fa
  %.pn132.i.i = mul nsw i32 %.pn133.i.i, %0
  %i.fb = lshr i32 %.0113178.i.i, 3               ; 3 uses
  %i.fc = icmp samesign ult i32 %.0113178.i.i, 16 ; 2 uses
  %i.fd = select i1 %i.fc, i32 %i.dk, i32 %i.dl
  %i.fe = trunc i32 %i.fd to i16                  ; 3 uses
  %i.ff = select i1 %i.fc, i16 %i.ey, i16 0       ; 3 uses
  %i.fg = sext i32 %.pn132.i.i to i64
  %invariant.gep.i.i = getelementptr [2 x i8], ptr %i.cv, i64 %i.fg ; 8 uses
  %broadcast.splatinsert170 = insertelement <8 x i32> poison, i32 %i.fb, i64 0
  %broadcast.splat171 = shufflevector <8 x i32> %broadcast.splatinsert170, <8 x i32> poison, <8 x i32> zeroinitializer ; 6 uses
  %broadcast.splatinsert172 = insertelement <8 x i16> poison, i16 %i.fe, i64 0
  %broadcast.splat173 = shufflevector <8 x i16> %broadcast.splatinsert172, <8 x i16> poison, <8 x i32> zeroinitializer ; 6 uses
  %broadcast.splatinsert174 = insertelement <8 x i16> poison, i16 %i.ff, i64 0
  %broadcast.splat175 = shufflevector <8 x i16> %broadcast.splatinsert174, <8 x i16> poison, <8 x i32> zeroinitializer ; 6 uses
  %i.fh = and <8 x i32> %broadcast.splat171, splat (i32 1)
  %i.fi = icmp eq <8 x i32> %i.fh, zeroinitializer
  %i.fj = and <8 x i32> %broadcast.splat171, splat (i32 1)
  %.not233 = icmp eq <8 x i32> %i.fj, zeroinitializer
  %i.fk = select <8 x i1> %i.fi, <8 x i16> %broadcast.splat175, <8 x i16> %broadcast.splat173
  %i.fl = select <8 x i1> %.not233, <8 x i16> %broadcast.splat173, <8 x i16> %broadcast.splat175
  %i.fm = getelementptr i8, ptr %invariant.gep.i.i, i64 16
  store <8 x i16> %i.fk, ptr %invariant.gep.i.i, align 2, !tbaa !18
  store <8 x i16> %i.fl, ptr %i.fm, align 2, !tbaa !18
  %i.fn = and <8 x i32> %broadcast.splat171, splat (i32 1)
  %i.fo = icmp eq <8 x i32> %i.fn, zeroinitializer
  %i.fp = and <8 x i32> %broadcast.splat171, splat (i32 1)
  %.not233.1 = icmp eq <8 x i32> %i.fp, zeroinitializer
  %i.fq = select <8 x i1> %i.fo, <8 x i16> %broadcast.splat175, <8 x i16> %broadcast.splat173
  %i.fr = select <8 x i1> %.not233.1, <8 x i16> %broadcast.splat173, <8 x i16> %broadcast.splat175
  %i.fs = getelementptr i8, ptr %invariant.gep.i.i, i64 32
  %i.ft = getelementptr i8, ptr %invariant.gep.i.i, i64 48
  store <8 x i16> %i.fq, ptr %i.fs, align 2, !tbaa !18
  store <8 x i16> %i.fr, ptr %i.ft, align 2, !tbaa !18
  br i1 %i.bk, label %middle.block181, label %vector.body176.2

vector.body176.2:                                 ; preds = %iter.check184
  %i.fu = and <8 x i32> %broadcast.splat171, splat (i32 1)
  %i.fv = icmp eq <8 x i32> %i.fu, zeroinitializer
  %i.fw = and <8 x i32> %broadcast.splat171, splat (i32 1)
  %.not233.2 = icmp eq <8 x i32> %i.fw, zeroinitializer
  %i.fx = select <8 x i1> %i.fv, <8 x i16> %broadcast.splat175, <8 x i16> %broadcast.splat173
  %i.fy = select <8 x i1> %.not233.2, <8 x i16> %broadcast.splat173, <8 x i16> %broadcast.splat175
  %i.fz = getelementptr i8, ptr %invariant.gep.i.i, i64 64
  %i.ga = getelementptr i8, ptr %invariant.gep.i.i, i64 80
  store <8 x i16> %i.fx, ptr %i.fz, align 2, !tbaa !18
  store <8 x i16> %i.fy, ptr %i.ga, align 2, !tbaa !18
  br label %middle.block181

middle.block181:                                  ; preds = %vector.body176.2, %iter.check184
  br i1 %cmp.n182, label %.split171.split.i.i, label %vec.epilog.iter.check186

vec.epilog.iter.check186:                         ; preds = %middle.block181
  br i1 %min.epilog.iters.check187, label %setVal.exit.i.i.preheader, label %vec.epilog.ph188, !prof !44

vec.epilog.ph188:                                 ; preds = %vec.epilog.iter.check186
  %broadcast.splatinsert190 = insertelement <4 x i32> poison, i32 %i.fb, i64 0
  %broadcast.splat191 = shufflevector <4 x i32> %broadcast.splatinsert190, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert192 = insertelement <4 x i16> poison, i16 %i.fe, i64 0
  %broadcast.splat193 = shufflevector <4 x i16> %broadcast.splatinsert192, <4 x i16> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert194 = insertelement <4 x i16> poison, i16 %i.ff, i64 0
  %broadcast.splat195 = shufflevector <4 x i16> %broadcast.splatinsert194, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body199

vec.epilog.vector.body199:                        ; preds = %vec.epilog.vector.body199, %vec.epilog.ph188
  %index200 = phi i64 [ %n.vec169, %vec.epilog.ph188 ], [ %index.next202, %vec.epilog.vector.body199 ] ; 2 uses
  %vec.ind201 = phi <4 x i32> [ %induction198, %vec.epilog.ph188 ], [ %vec.ind.next203, %vec.epilog.vector.body199 ] ; 2 uses
  %i.gb = lshr <4 x i32> %vec.ind201, splat (i32 3)
  %i.gc = add nuw nsw <4 x i32> %i.gb, %broadcast.splat191
  %i.gd = and <4 x i32> %i.gc, splat (i32 1)
  %i.ge = icmp eq <4 x i32> %i.gd, zeroinitializer
  %i.gf = select <4 x i1> %i.ge, <4 x i16> %broadcast.splat195, <4 x i16> %broadcast.splat193
  %i.gg = getelementptr [2 x i8], ptr %invariant.gep.i.i, i64 %index200
  store <4 x i16> %i.gf, ptr %i.gg, align 2, !tbaa !18
  %index.next202 = add nuw i64 %index200, 4       ; 2 uses
  %vec.ind.next203 = add <4 x i32> %vec.ind201, splat (i32 4)
  %i.gh = icmp eq i64 %index.next202, %n.vec189
  br i1 %i.gh, label %vec.epilog.middle.block204, label %vec.epilog.vector.body199, !llvm.loop !33

vec.epilog.middle.block204:                       ; preds = %vec.epilog.vector.body199
  br i1 %cmp.n205, label %.split171.split.i.i, label %setVal.exit.i.i.preheader

setVal.exit.i.i.preheader:                        ; preds = %vec.epilog.iter.check186, %vec.epilog.middle.block204
  %indvars.iv262.i.i.ph = phi i64 [ %n.vec169, %vec.epilog.iter.check186 ], [ %n.vec189, %vec.epilog.middle.block204 ]
  br label %setVal.exit.i.i

setVal.exit.i.i:                                  ; preds = %setVal.exit.i.i.preheader, %setVal.exit.i.i
  %indvars.iv262.i.i = phi i64 [ %indvars.iv.next263.i.i, %setVal.exit.i.i ], [ %indvars.iv262.i.i.ph, %setVal.exit.i.i.preheader ] ; 3 uses
  %i.gi = trunc nuw nsw i64 %indvars.iv262.i.i to i32
  %i.gj = lshr i32 %i.gi, 3
  %i.gk = add nuw nsw i32 %i.gj, %i.fb
  %i.gl = and i32 %i.gk, 1
  %i.gm = icmp eq i32 %i.gl, 0
  %spec.select356.i.i = select i1 %i.gm, i16 %i.ff, i16 %i.fe
  %gep.i.i = getelementptr [2 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv262.i.i
  store i16 %spec.select356.i.i, ptr %gep.i.i, align 2, !tbaa !18
  %indvars.iv.next263.i.i = add nuw nsw i64 %indvars.iv262.i.i, 1 ; 2 uses
  %exitcond267.not.i.i = icmp eq i64 %indvars.iv.next263.i.i, %wide.trip.count234.i.i
  br i1 %exitcond267.not.i.i, label %.split171.split.i.i, label %setVal.exit.i.i, !llvm.loop !34

.split171.split.i.i:                              ; preds = %setVal.exit.i.i, %vec.epilog.middle.block204, %middle.block181
  %i.gn = add nuw nsw i32 %.0113178.i.i, 1        ; 2 uses
  %exitcond268.not.i.i = icmp eq i32 %i.gn, %1
  br i1 %exitcond268.not.i.i, label %initBuf.exit.i, label %iter.check184, !llvm.loop !32

.preheader148.i.i:                                ; preds = %.preheader150.i.i
  br i1 %i.cz, label %.preheader147.us.preheader.i.i, label %.preheader147.preheader.i.i

.preheader147.preheader.i.i:                      ; preds = %setVal.exit135.i.i, %middle.block216, %vec.epilog.middle.block230, %.preheader148.i.i
  %i.go = sext i32 %i.cq to i64                   ; 6 uses
  br label %.preheader147.i.i

.preheader147.us.preheader.i.i:                   ; preds = %.preheader148.i.i, %.preheader148.thread.i.i
  %i.gp = sext i32 %i.cq to i64                   ; 6 uses
  br label %.preheader147.us.i.i

.preheader147.us.i.i:                             ; preds = %.split.us.us.i.i, %.preheader147.us.preheader.i.i
  %.1114162.us.i.i = phi i32 [ %i.jb, %.split.us.us.i.i ], [ 0, %.preheader147.us.preheader.i.i ] ; 5 uses
  %i.gq = xor i32 %.1114162.us.i.i, -1
  %i.gr = add nsw i32 %1, %i.gq
  %.pn130.us.i.i = select i1 %.not.i, i32 %.1114162.us.i.i, i32 %i.gr
  %.pn129.us.i.i = mul nsw i32 %.pn130.us.i.i, %0 ; 2 uses
  %i.gs = lshr i32 %.1114162.us.i.i, 3            ; 6 uses
  %i.gt = icmp samesign ugt i32 %.1114162.us.i.i, 15
  br i1 %i.gt, label %.preheader147.split.us.us.split.us.preheader.i.i, label %.preheader147.split.us.us.split.split.us.preheader.i.i

.preheader147.split.us.us.split.us.preheader.i.i: ; preds = %.preheader147.us.i.i
  %i.gu = sext i32 %.pn129.us.i.i to i64          ; 3 uses
  br i1 %i.bi, label %.preheader147.split.us.us.split.us.i.i.epil.preheader, label %.preheader147.split.us.us.split.us.i.i

.preheader147.split.us.us.split.us.i.i:           ; preds = %.preheader147.split.us.us.split.us.preheader.i.i, %.preheader147.split.us.us.split.us.i.i
  %indvars.iv255.i.i = phi i64 [ %indvars.iv.next256.i.i.1, %.preheader147.split.us.us.split.us.i.i ], [ 0, %.preheader147.split.us.us.split.us.preheader.i.i ] ; 5 uses
  %niter257 = phi i64 [ %niter257.next.1, %.preheader147.split.us.us.split.us.i.i ], [ 0, %.preheader147.split.us.us.split.us.preheader.i.i ]
  %i.gv = add nsw i64 %indvars.iv255.i.i, %i.gu
  %i.gw = trunc nuw nsw i64 %indvars.iv255.i.i to i32
  %i.gx = lshr i32 %i.gw, 3
  %i.gy = add nuw nsw i32 %i.gx, %i.gs
  %i.gz = and i32 %i.gy, 1
  %i.ha = icmp eq i32 %i.gz, 0
  %i.hb = mul nsw i64 %i.gv, %i.gp
  %i.hc = getelementptr i8, ptr %i.cv, i64 %i.hb
  %..i = select i1 %i.ha, i64 3, i64 2
  %i.hd = getelementptr i8, ptr %i.hc, i64 %..i
  store i8 0, ptr %i.hd, align 1, !tbaa !16
  %indvars.iv.next256.i.i = or disjoint i64 %indvars.iv255.i.i, 1
  %i.he = add nsw i64 %indvars.iv.next256.i.i, %i.gu
  %i.hf = trunc i64 %indvars.iv255.i.i to i32
  %i.hg = lshr i32 %i.hf, 3
  %i.hh = add nuw nsw i32 %i.hg, %i.gs
  %i.hi = and i32 %i.hh, 1
  %i.hj = icmp eq i32 %i.hi, 0
  %i.hk = mul nsw i64 %i.he, %i.gp
  %i.hl = getelementptr i8, ptr %i.cv, i64 %i.hk
  %..i.1 = select i1 %i.hj, i64 3, i64 2
  %i.hm = getelementptr i8, ptr %i.hl, i64 %..i.1
  store i8 0, ptr %i.hm, align 1, !tbaa !16
  %indvars.iv.next256.i.i.1 = add nuw nsw i64 %indvars.iv255.i.i, 2 ; 2 uses
  %niter257.next.1 = add nuw nsw i64 %niter257, 2 ; 2 uses
  %niter257.ncmp.1 = icmp eq i64 %niter257.next.1, %unroll_iter256
  br i1 %niter257.ncmp.1, label %.split.us.us.i.i.loopexit.unr-lcssa, label %.preheader147.split.us.us.split.us.i.i, !llvm.loop !35

.preheader147.split.us.us.split.split.us.preheader.i.i: ; preds = %.preheader147.us.i.i
  %i.hn = zext nneg i32 %.pn129.us.i.i to i64     ; 3 uses
  br i1 %i.bh, label %.preheader147.split.us.us.split.split.us.i.i.epil.preheader, label %.preheader147.split.us.us.split.split.us.i.i

.preheader147.split.us.us.split.split.us.i.i:     ; preds = %.preheader147.split.us.us.split.split.us.preheader.i.i, %setVal.exit136.us.us.us167.i.i.1
  %indvars.iv249.i.i = phi i64 [ %indvars.iv.next250.i.i.1, %setVal.exit136.us.us.us167.i.i.1 ], [ 0, %.preheader147.split.us.us.split.split.us.preheader.i.i ] ; 5 uses
  %niter252 = phi i64 [ %niter252.next.1, %setVal.exit136.us.us.us167.i.i.1 ], [ 0, %.preheader147.split.us.us.split.split.us.preheader.i.i ]
  %i.ho = trunc nuw nsw i64 %indvars.iv249.i.i to i32
  %i.hp = lshr i32 %i.ho, 3
  %i.hq = add nuw nsw i32 %i.hp, %i.gs
  %i.hr = and i32 %i.hq, 1
  %i.hs = icmp eq i32 %i.hr, 0
  br i1 %i.hs, label %setVal.exit136.us.us.us167.i.i, label %setVal.exit137.us.us.us166.i.i

setVal.exit137.us.us.us166.i.i:                   ; preds = %.preheader147.split.us.us.split.split.us.i.i
  %i.ht = add nuw nsw i64 %indvars.iv249.i.i, %i.hn
  %i.hu = mul nsw i64 %i.ht, %i.gp
  %i.hv = getelementptr i8, ptr %i.cv, i64 %i.hu  ; 2 uses
  %i.hw = getelementptr i8, ptr %i.hv, i64 2
  store i8 0, ptr %i.hw, align 1, !tbaa !16
  %i.hx = getelementptr i8, ptr %i.hv, i64 1
  store i8 0, ptr %i.hx, align 1, !tbaa !16
  br label %setVal.exit136.us.us.us167.i.i

setVal.exit136.us.us.us167.i.i:                   ; preds = %setVal.exit137.us.us.us166.i.i, %.preheader147.split.us.us.split.split.us.i.i
  %i.hy = trunc i64 %indvars.iv249.i.i to i32
  %i.hz = lshr i32 %i.hy, 3
  %i.ia = add nuw nsw i32 %i.hz, %i.gs
  %i.ib = and i32 %i.ia, 1
  %i.ic = icmp eq i32 %i.ib, 0
  br i1 %i.ic, label %setVal.exit136.us.us.us167.i.i.1, label %setVal.exit137.us.us.us166.i.i.1

setVal.exit137.us.us.us166.i.i.1:                 ; preds = %setVal.exit136.us.us.us167.i.i
  %indvars.iv.next250.i.i = or disjoint i64 %indvars.iv249.i.i, 1
  %i.id = add nuw nsw i64 %indvars.iv.next250.i.i, %i.hn
  %i.ie = mul nsw i64 %i.id, %i.gp
  %i.if = getelementptr i8, ptr %i.cv, i64 %i.ie  ; 2 uses
  %i.ig = getelementptr i8, ptr %i.if, i64 2
  store i8 0, ptr %i.ig, align 1, !tbaa !16
  %i.ih = getelementptr i8, ptr %i.if, i64 1
  store i8 0, ptr %i.ih, align 1, !tbaa !16
  br label %setVal.exit136.us.us.us167.i.i.1

setVal.exit136.us.us.us167.i.i.1:                 ; preds = %setVal.exit137.us.us.us166.i.i.1, %setVal.exit136.us.us.us167.i.i
  %indvars.iv.next250.i.i.1 = add nuw nsw i64 %indvars.iv249.i.i, 2 ; 2 uses
  %niter252.next.1 = add nuw nsw i64 %niter252, 2 ; 2 uses
  %niter252.ncmp.1 = icmp eq i64 %niter252.next.1, %unroll_iter251
  br i1 %niter252.ncmp.1, label %.split.us.us.i.i.loopexit236.unr-lcssa, label %.preheader147.split.us.us.split.split.us.i.i, !llvm.loop !35

.split.us.us.i.i.loopexit.unr-lcssa:              ; preds = %.preheader147.split.us.us.split.us.i.i
  br i1 %lcmp.mod254.not, label %.split.us.us.i.i, label %.preheader147.split.us.us.split.us.i.i.epil.preheader

.preheader147.split.us.us.split.us.i.i.epil.preheader: ; preds = %.split.us.us.i.i.loopexit.unr-lcssa, %.preheader147.split.us.us.split.us.preheader.i.i
  %indvars.iv255.i.i.epil.init = phi i64 [ 0, %.preheader147.split.us.us.split.us.preheader.i.i ], [ %indvars.iv.next256.i.i.1, %.split.us.us.i.i.loopexit.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod255)
  %i.ii = add nsw i64 %indvars.iv255.i.i.epil.init, %i.gu
  %i.ij = trunc nuw nsw i64 %indvars.iv255.i.i.epil.init to i32
  %i.ik = lshr i32 %i.ij, 3
  %i.il = add nuw nsw i32 %i.ik, %i.gs
  %i.im = and i32 %i.il, 1
  %i.in = icmp eq i32 %i.im, 0
  %i.io = mul nsw i64 %i.ii, %i.gp
  %i.ip = getelementptr i8, ptr %i.cv, i64 %i.io
  %..i.epil = select i1 %i.in, i64 3, i64 2
  %i.iq = getelementptr i8, ptr %i.ip, i64 %..i.epil
  store i8 0, ptr %i.iq, align 1, !tbaa !16
  br label %.split.us.us.i.i

.split.us.us.i.i.loopexit236.unr-lcssa:           ; preds = %setVal.exit136.us.us.us167.i.i.1
  br i1 %lcmp.mod249.not, label %.split.us.us.i.i, label %.preheader147.split.us.us.split.split.us.i.i.epil.preheader

.preheader147.split.us.us.split.split.us.i.i.epil.preheader: ; preds = %.split.us.us.i.i.loopexit236.unr-lcssa, %.preheader147.split.us.us.split.split.us.preheader.i.i
  %indvars.iv249.i.i.epil.init = phi i64 [ 0, %.preheader147.split.us.us.split.split.us.preheader.i.i ], [ %indvars.iv.next250.i.i.1, %.split.us.us.i.i.loopexit236.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod250)
  %i.ir = trunc nuw nsw i64 %indvars.iv249.i.i.epil.init to i32
  %i.is = lshr i32 %i.ir, 3
  %i.it = add nuw nsw i32 %i.is, %i.gs
  %i.iu = and i32 %i.it, 1
  %i.iv = icmp eq i32 %i.iu, 0
  br i1 %i.iv, label %.split.us.us.i.i, label %setVal.exit137.us.us.us166.i.i.epil

setVal.exit137.us.us.us166.i.i.epil:              ; preds = %.preheader147.split.us.us.split.split.us.i.i.epil.preheader
  %i.iw = add nuw nsw i64 %indvars.iv249.i.i.epil.init, %i.hn
  %i.ix = mul nsw i64 %i.iw, %i.gp
  %i.iy = getelementptr i8, ptr %i.cv, i64 %i.ix  ; 2 uses
  %i.iz = getelementptr i8, ptr %i.iy, i64 2
  store i8 0, ptr %i.iz, align 1, !tbaa !16
  %i.ja = getelementptr i8, ptr %i.iy, i64 1
  store i8 0, ptr %i.ja, align 1, !tbaa !16
  br label %.split.us.us.i.i

.split.us.us.i.i:                                 ; preds = %.split.us.us.i.i.loopexit236.unr-lcssa, %setVal.exit137.us.us.us166.i.i.epil, %.preheader147.split.us.us.split.split.us.i.i.epil.preheader, %.preheader147.split.us.us.split.us.i.i.epil.preheader, %.split.us.us.i.i.loopexit.unr-lcssa
  %i.jb = add nuw nsw i32 %.1114162.us.i.i, 1     ; 2 uses
  %exitcond261.not.i.i = icmp eq i32 %i.jb, %1
  br i1 %exitcond261.not.i.i, label %initBuf.exit.i, label %.preheader147.us.i.i, !llvm.loop !36

setVal.exit135.i.i:                               ; preds = %setVal.exit135.i.i.preheader, %setVal.exit135.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %setVal.exit135.i.i ], [ %indvars.iv.i.i.ph, %setVal.exit135.i.i.preheader ] ; 2 uses
  %i.jc = getelementptr inbounds nuw [2 x i8], ptr %i.cv, i64 %indvars.iv.i.i
  store i16 %i.db, ptr %i.jc, align 2, !tbaa !18
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %.preheader147.preheader.i.i, label %setVal.exit135.i.i, !llvm.loop !37

.preheader147.i.i:                                ; preds = %.split.i.i, %.preheader147.preheader.i.i
  %.1114162.i.i = phi i32 [ %i.lo, %.split.i.i ], [ 0, %.preheader147.preheader.i.i ] ; 5 uses
  %i.jd = xor i32 %.1114162.i.i, -1
  %i.je = add nsw i32 %1, %i.jd
  %.pn130.i.i = select i1 %.not.i, i32 %.1114162.i.i, i32 %i.je
  %.pn129.i.i = mul nsw i32 %.pn130.i.i, %0       ; 2 uses
  %i.jf = lshr i32 %.1114162.i.i, 3               ; 6 uses
  %i.jg = icmp samesign ugt i32 %.1114162.i.i, 15
  br i1 %i.jg, label %.preheader147.split.split.us.preheader.i.i, label %.preheader147.split.split.split.us.preheader.i.i

.preheader147.split.split.us.preheader.i.i:       ; preds = %.preheader147.i.i
  %i.jh = sext i32 %.pn129.i.i to i64             ; 3 uses
  br i1 %i.bg, label %.preheader147.split.split.us.i.i.epil.preheader, label %.preheader147.split.split.us.i.i

.preheader147.split.split.us.i.i:                 ; preds = %.preheader147.split.split.us.preheader.i.i, %.preheader147.split.split.us.i.i
  %indvars.iv236.i.i = phi i64 [ %indvars.iv.next237.i.i.1, %.preheader147.split.split.us.i.i ], [ 0, %.preheader147.split.split.us.preheader.i.i ] ; 5 uses
  %niter247 = phi i64 [ %niter247.next.1, %.preheader147.split.split.us.i.i ], [ 0, %.preheader147.split.split.us.preheader.i.i ]
  %i.ji = add nsw i64 %indvars.iv236.i.i, %i.jh
  %i.jj = trunc nuw nsw i64 %indvars.iv236.i.i to i32
  %i.jk = lshr i32 %i.jj, 3
  %i.jl = add nuw nsw i32 %i.jk, %i.jf
  %i.jm = and i32 %i.jl, 1
  %i.jn = icmp eq i32 %i.jm, 0
  %i.jo = mul nsw i64 %i.ji, %i.go
  %i.jp = getelementptr [2 x i8], ptr %i.cv, i64 %i.jo
  %.255.i = select i1 %i.jn, i64 6, i64 4
  %i.jq = getelementptr i8, ptr %i.jp, i64 %.255.i
  store i16 0, ptr %i.jq, align 2, !tbaa !18
  %indvars.iv.next237.i.i = or disjoint i64 %indvars.iv236.i.i, 1
  %i.jr = add nsw i64 %indvars.iv.next237.i.i, %i.jh
  %i.js = trunc i64 %indvars.iv236.i.i to i32
  %i.jt = lshr i32 %i.js, 3
  %i.ju = add nuw nsw i32 %i.jt, %i.jf
  %i.jv = and i32 %i.ju, 1
  %i.jw = icmp eq i32 %i.jv, 0
  %i.jx = mul nsw i64 %i.jr, %i.go
  %i.jy = getelementptr [2 x i8], ptr %i.cv, i64 %i.jx
  %.255.i.1 = select i1 %i.jw, i64 6, i64 4
  %i.jz = getelementptr i8, ptr %i.jy, i64 %.255.i.1
end_hunk_0
begin_hunk_1_@decompTest:bb.a
  ]

.thread3.us.preheader:                            ; preds = %.lr.ph, %.lr.ph
  br label %.thread3.us

.thread3.us:                                      ; preds = %.thread3.us.preheader, %.thread3.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %.thread3.us ], [ 0, %.thread3.us.preheader ] ; 2 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv
  %i.i = load i64, ptr %i.h, align 4
  call fastcc void @_decompTest(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i64 %i.i)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.j = load i32, ptr %i.a, align 4, !tbaa !12
  %i.k = sext i32 %i.j to i64
  %i.l = icmp slt i64 %indvars.iv.next, %i.k
  br i1 %i.l, label %.thread3.us, label %.loopexit, !llvm.loop !50

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.m = add nsw i32 %6, -5
  %or.cond5 = icmp ult i32 %i.m, 2
  br i1 %or.cond5, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split, %.thread3.us6
  %i.n = phi i32 [ %i.u, %.thread3.us6 ], [ %i.d, %.lr.ph.split ] ; 2 uses
  %indvars.iv21 = phi i64 [ %indvars.iv.next22, %.thread3.us6 ], [ 0, %.lr.ph.split ] ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv21 ; 3 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !52
  %i.q = icmp eq i32 %i.p, 1
  br i1 %i.q, label %bb.d, label %.thread3.us6

bb.d:                                             ; preds = %.lr.ph.split.split.us
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !53
  %.off.us = add i32 %i.s, -1
  %switch.us = icmp ult i32 %.off.us, 2
  br i1 %switch.us, label %bb.e, label %.thread3.us6

bb.e:                                             ; preds = %bb.d
  %i.t = load i64, ptr %i.o, align 4
  call fastcc void @_decompTest(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i64 %i.t)
  %.pre25 = load i32, ptr %i.a, align 4, !tbaa !12
  br label %.thread3.us6

.thread3.us6:                                     ; preds = %bb.e, %bb.d, %.lr.ph.split.split.us
  %i.u = phi i32 [ %.pre25, %bb.e ], [ %i.n, %bb.d ], [ %i.n, %.lr.ph.split.split.us ] ; 2 uses
  %indvars.iv.next22 = add nuw nsw i64 %indvars.iv21, 1 ; 2 uses
  %i.v = sext i32 %i.u to i64
  %i.w = icmp slt i64 %indvars.iv.next22, %i.v
  br i1 %i.w, label %.lr.ph.split.split.us, label %.loopexit, !llvm.loop !50

.lr.ph.split.split:                               ; preds = %.lr.ph.split
  br i1 %or.cond11, label %.lr.ph.split.split.split, label %.loopexit

.lr.ph.split.split.split:                         ; preds = %.lr.ph.split.split
  br i1 %i.g, label %.lr.ph.split.split.split.split.us, label %.lr.ph.split.split.split.split

.lr.ph.split.split.split.split.us:                ; preds = %.lr.ph.split.split.split, %.thread3.us8
  %i.x = phi i32 [ %i.ah, %.thread3.us8 ], [ %i.d, %.lr.ph.split.split.split ] ; 2 uses
  %indvars.iv18 = phi i64 [ %indvars.iv.next19, %.thread3.us8 ], [ 0, %.lr.ph.split.split.split ] ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv18 ; 4 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !52
  %i.aa = icmp eq i32 %i.z, 1
  br i1 %i.aa, label %bb.f, label %.thread3.us8

bb.f:                                             ; preds = %.lr.ph.split.split.split.split.us
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !53
  switch i32 %i.ac, label %bb.g [
    i32 4, label %bb.h
    i32 2, label %bb.h
    i32 1, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !53
  %i.af = icmp ne i32 %i.ae, 8
  %.b.us = load i1, ptr @doYUV, align 4
  %or.cond13.us = select i1 %i.af, i1 true, i1 %.b.us
  br i1 %or.cond13.us, label %.thread3.us8, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.f, %bb.f
  %i.ag = load i64, ptr %i.y, align 4
  call fastcc void @_decompTest(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef 2, i64 %i.ag)
  %.pre24 = load i32, ptr %i.a, align 4, !tbaa !12
  br label %.thread3.us8

.thread3.us8:                                     ; preds = %.lr.ph.split.split.split.split.us, %bb.h, %bb.g
  %i.ah = phi i32 [ %.pre24, %bb.h ], [ %i.x, %bb.g ], [ %i.x, %.lr.ph.split.split.split.split.us ] ; 2 uses
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1 ; 2 uses
  %i.ai = sext i32 %i.ah to i64
  %i.aj = icmp slt i64 %indvars.iv.next19, %i.ai
  br i1 %i.aj, label %.lr.ph.split.split.split.split.us, label %.loopexit, !llvm.loop !50

bb.i:                                             ; preds = %bb.c
  %i.ak = call ptr @tj3GetErrorStr(ptr noundef null) #21
  %i.al = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.108, ptr noundef %i.ak) ; 0 uses
  store i1 true, ptr @exitStatus, align 4
  br label %.loopexit

.lr.ph.split.split.split.split:                   ; preds = %.lr.ph.split.split.split, %.thread3
  %i.am = phi i32 [ %i.at, %.thread3 ], [ %i.d, %.lr.ph.split.split.split ] ; 2 uses
  %indvars.iv15 = phi i64 [ %indvars.iv.next16, %.thread3 ], [ 0, %.lr.ph.split.split.split ] ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv15 ; 3 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !52
  %i.ap = icmp eq i32 %i.ao, 1
  br i1 %i.ap, label %bb.j, label %.thread3

bb.j:                                             ; preds = %.lr.ph.split.split.split.split
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !53
  switch i32 %i.ar, label %.thread3 [
    i32 4, label %bb.k
    i32 2, label %bb.k
    i32 1, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j, %bb.j, %bb.j
  %i.as = load i64, ptr %i.an, align 4
  call fastcc void @_decompTest(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i64 %i.as)
  %.pre = load i32, ptr %i.a, align 4, !tbaa !12
  br label %.thread3

.thread3:                                         ; preds = %.lr.ph.split.split.split.split, %bb.j, %bb.k
  %i.at = phi i32 [ %i.am, %.lr.ph.split.split.split.split ], [ %i.am, %bb.j ], [ %.pre, %bb.k ] ; 2 uses
  %indvars.iv.next16 = add nuw nsw i64 %indvars.iv15, 1 ; 2 uses
  %i.au = sext i32 %i.at to i64
  %i.av = icmp slt i64 %indvars.iv.next16, %i.au
  br i1 %i.av, label %.lr.ph.split.split.split.split, label %.loopexit, !llvm.loop !50

.loopexit:                                        ; preds = %.thread3.us, %.thread3, %.thread3.us8, %.thread3.us6, %.preheader, %.lr.ph.split.split, %bb.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret void
}

declare i32 @tj3Get(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

declare i32 @tj3EncodeYUV8(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @checkBufYUV(ptr nofree noundef nonnull readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i64 %4) unnamed_addr #13 {
bb.a:
  %.sroa.0.0.extract.trunc = trunc i64 %4 to i32  ; 3 uses
  %.sroa.4.0.extract.shift = lshr i64 %4, 32
  %.sroa.4.0.extract.trunc = trunc nuw i64 %.sroa.4.0.extract.shift to i32 ; 3 uses
  %i.a = sext i32 %3 to i64                       ; 2 uses
  %i.b = getelementptr inbounds [4 x i8], ptr @tjMCUWidth, i64 %i.a
  %i.c = load i32, ptr %i.b, align 4, !tbaa !12
  %i.d = sdiv i32 %i.c, 8                         ; 5 uses
  %i.e = getelementptr inbounds [4 x i8], ptr @tjMCUHeight, i64 %i.a
  %i.f = load i32, ptr %i.e, align 4, !tbaa !12
  %i.g = sdiv i32 %i.f, 8                         ; 5 uses
  %i.h = add i32 %1, -1
  %i.i = add i32 %i.h, %i.d
  %i.j = sub nsw i32 0, %i.d
  %i.k = and i32 %i.i, %i.j                       ; 7 uses
  %i.l = add i32 %2, -1
  %i.m = add i32 %i.l, %i.g
  %i.n = sub nsw i32 0, %i.g
  %i.o = and i32 %i.m, %i.n                       ; 8 uses
  %i.p = sdiv i32 %i.k, %i.d                      ; 7 uses
  %i.q = sdiv i32 %i.o, %i.g                      ; 9 uses
  %.b = load i1, ptr @yuvAlign, align 4           ; 2 uses
  %.neg = select i1 %.b, i32 -1, i32 -4           ; 2 uses
  %i.r = select i1 %.b, i32 0, i32 3              ; 2 uses
  %i.s = add i32 %i.r, %i.k
  %i.t = and i32 %i.s, %.neg                      ; 5 uses
  %i.u = add i32 %i.r, %i.p
  %i.v = and i32 %i.u, %.neg                      ; 4 uses
  %i.w = shl nsw i32 %.sroa.0.0.extract.trunc, 4
  %i.x = sdiv i32 %i.w, %.sroa.4.0.extract.trunc
  %i.y = shl nsw i32 %.sroa.0.0.extract.trunc, 3
  %i.z = sdiv i32 %i.y, %.sroa.4.0.extract.trunc  ; 6 uses
  %i.aa = icmp sgt i32 %i.o, 0                    ; 2 uses
  br i1 %i.aa, label %.preheader206.lr.ph, label %._crit_edge271

.preheader206.lr.ph:                              ; preds = %bb.a
  %i.ab = icmp sgt i32 %i.k, 0
  %i.ac = load i32, ptr @tolerance, align 4       ; 6 uses
  %i.ad = sub nuw nsw i32 225, %i.ac
  %i.ae = add nuw nsw i32 %i.ac, 225
  %i.af = sub nuw nsw i32 76, %i.ac
  %i.ag = add nuw nsw i32 %i.ac, 76
  %i.ah = load i32, ptr @maxSample, align 4       ; 2 uses
  %i.ai = sub nsw i32 %i.ah, %i.ac
  br i1 %i.ab, label %.preheader206.us.preheader, label %._crit_edge271

.preheader206.us.preheader:                       ; preds = %.preheader206.lr.ph
  %i.aj = sext i32 %i.t to i64
  %i.ak = sext i32 %i.x to i64
  %wide.trip.count422 = zext nneg i32 %i.o to i64
  %wide.trip.count = zext nneg i32 %i.k to i64
  %wide.trip.count417 = zext nneg i32 %i.k to i64
  br label %.preheader206.us

.preheader206.us:                                 ; preds = %.preheader206.us.preheader, %bb.f
  %indvars.iv419 = phi i64 [ 0, %.preheader206.us.preheader ], [ %indvars.iv.next415.a, %bb.f ] ; 4 uses
  %i.al = mul nsw i64 %indvars.iv419, %i.aj
  %i.am = trunc nuw nsw i64 %indvars.iv419 to i32 ; 5 uses
  %i.an = sdiv i32 %i.am, %i.z                    ; 2 uses
  %i.ao = icmp slt i64 %indvars.iv419, %i.ak
  %.fr267.us = freeze i1 %i.ao
  %invariant.gep544 = getelementptr i8, ptr %0, i64 %i.al ; 2 uses
  br i1 %.fr267.us, label %.lr.ph.split.us.us, label %.lr.ph.split.split.us276

.lr.ph.split.split.us276:                         ; preds = %.preheader206.us, %._crit_edge.us.a
  %indvars.iv = phi i64 [ %indvars.iv.next420.a, %._crit_edge.us.a ], [ 0, %.preheader206.us ] ; 3 uses
  %gep = getelementptr i8, ptr %invariant.gep544, i64 %indvars.iv
  %i.ap = load i8, ptr %gep, align 1, !tbaa !16
  %i.aq = trunc nuw nsw i64 %indvars.iv to i32    ; 3 uses
  %i.ar = sdiv i32 %i.aq, %i.z
  %i.as = add nsw i32 %i.ar, %i.an
  %i.at = and i32 %i.as, 1
  %i.au = icmp eq i32 %i.at, 0
  %i.av = zext i8 %i.ap to i32                    ; 5 uses
  br i1 %i.au, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.split.us276
  %i.aw = icmp samesign ugt i32 %i.ad, %i.av
  %i.ax = icmp slt i32 %i.ae, %i.av
  %or.cond188.us273 = select i1 %i.aw, i1 true, i1 %i.ax
  br i1 %or.cond188.us273, label %.split.us256, label %._crit_edge.us.a

bb.c:                                             ; preds = %.lr.ph.split.split.us276
  %i.ay = icmp slt i32 %i.ac, %i.av
  br i1 %i.ay, label %.split245.us, label %._crit_edge.us.a

._crit_edge.us.a:                                 ; preds = %bb.c, %bb.b
  %indvars.iv.next420.a = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond423.not.a = icmp eq i64 %indvars.iv.next420.a, %wide.trip.count
  br i1 %exitcond423.not.a, label %bb.f, label %.lr.ph.split.split.us276, !llvm.loop !54

.lr.ph.split.us.us:                               ; preds = %.preheader206.us, %5
  %indvars.iv414 = phi i64 [ %indvars.iv.next415, %5 ], [ 0, %.preheader206.us ] ; 3 uses
  %gep545 = getelementptr i8, ptr %invariant.gep544, i64 %indvars.iv414
  %i.az = load i8, ptr %gep545, align 1, !tbaa !16
  %i.ba = trunc nuw nsw i64 %indvars.iv414 to i32 ; 3 uses
  %i.bb = sdiv i32 %i.ba, %i.z
  %i.bc = add nsw i32 %i.bb, %i.an
  %i.bd = and i32 %i.bc, 1
  %i.be = icmp eq i32 %i.bd, 0
  %i.bf = zext i8 %i.az to i32                    ; 5 uses
  br i1 %i.be, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.split.us.us
  %i.bg = icmp samesign ugt i32 %i.af, %i.bf
  %i.bh = icmp slt i32 %i.ag, %i.bf
  %or.cond.us.us = select i1 %i.bg, i1 true, i1 %i.bh
  br i1 %or.cond.us.us, label %.split.us, label %5

bb.e:                                             ; preds = %.lr.ph.split.us.us
  %i.bi = icmp sgt i32 %i.ai, %i.bf
  br i1 %i.bi, label %.split250.us, label %5

5:                                                ; preds = %bb.e, %bb.d
  %indvars.iv.next415 = add nuw nsw i64 %indvars.iv414, 1 ; 2 uses
  %exitcond418.not = icmp eq i64 %indvars.iv.next415, %wide.trip.count417
  br i1 %exitcond418.not, label %bb.f, label %.lr.ph.split.us.us, !llvm.loop !54

bb.f:                                             ; preds = %._crit_edge.us.a, %5
  %indvars.iv.next415.a = add nuw nsw i64 %indvars.iv419, 1 ; 2 uses
  %exitcond418.not.a = icmp eq i64 %indvars.iv.next415.a, %wide.trip.count422
  br i1 %exitcond418.not.a, label %._crit_edge271, label %.preheader206.us, !llvm.loop !55

.split250.us:                                     ; preds = %bb.e
  %i.bj = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.162, ptr noundef nonnull @.str.163, i32 noundef %i.am, i32 noundef %i.ba, i32 noundef %i.ah, i32 noundef %i.bf) ; 0 uses
  br label %.preheader204

.split245.us:                                     ; preds = %bb.c
  %i.bk = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.164, ptr noundef nonnull @.str.163, i32 noundef %i.am, i32 noundef %i.aq, i32 noundef %i.av) ; 0 uses
  br label %.preheader204

.split.us:                                        ; preds = %bb.d
  %i.bl = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.162, ptr noundef nonnull @.str.163, i32 noundef %i.am, i32 noundef %i.ba, i32 noundef 76, i32 noundef %i.bf) ; 0 uses
  br label %.preheader204

.split.us256:                                     ; preds = %bb.b
  %i.bm = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.162, ptr noundef nonnull @.str.163, i32 noundef %i.am, i32 noundef %i.aq, i32 noundef 225, i32 noundef %i.av) ; 0 uses
  br label %.preheader204

._crit_edge271:                                   ; preds = %bb.f, %.preheader206.lr.ph, %bb.a
  %.not = icmp eq i32 %3, 3
  br i1 %.not, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %._crit_edge271
  %i.bn = sdiv i32 16, %i.g
  %i.bo = mul nsw i32 %i.bn, %.sroa.0.0.extract.trunc
  %i.bp = sdiv i32 %i.bo, %.sroa.4.0.extract.trunc
  %i.bq = icmp sgt i32 %i.q, 0
  br i1 %i.bq, label %.preheader205.lr.ph, label %.loopexit

.preheader205.lr.ph:                              ; preds = %bb.g
  %i.br = icmp sgt i32 %i.p, 0
  %i.bs = mul nsw i32 %i.t, %i.o                  ; 2 uses
  %i.bt = mul nsw i32 %i.v, %i.q
  %invariant.op = add i32 %i.bs, %i.bt            ; 2 uses
  %i.bu = load i32, ptr @tolerance, align 4       ; 8 uses
  %i.bv = sub nuw nsw i32 149, %i.bu
  %i.bw = add nuw nsw i32 %i.bu, 149
  %i.bx = sub nuw nsw i32 85, %i.bu
  %i.by = add nuw nsw i32 %i.bu, 85
  %i.bz = load i32, ptr @maxSample, align 4       ; 2 uses
  %i.ca = sub nsw i32 %i.bz, %i.bu
  %i.cb = sub nuw nsw i32 128, %i.bu              ; 4 uses
  %i.cc = add nuw nsw i32 %i.bu, 128              ; 4 uses
  br i1 %i.br, label %.preheader205.preheader, label %.loopexit

.preheader205.preheader:                          ; preds = %.preheader205.lr.ph
  %i.cd = sext i32 %i.bs to i64                   ; 2 uses
  %i.ce = sext i32 %i.v to i64
  %i.cf = sext i32 %i.bp to i64
  %wide.trip.count437 = zext nneg i32 %i.q to i64
  %wide.trip.count427 = zext nneg i32 %i.p to i64
  %invariant.gep546 = getelementptr i8, ptr %0, i64 %i.cd
  %wide.trip.count432 = zext nneg i32 %i.p to i64
  %invariant.gep548 = getelementptr i8, ptr %0, i64 %i.cd
  br label %.preheader205

.preheader205:                                    ; preds = %.preheader205.preheader, %._crit_edge
  %indvars.iv434 = phi i64 [ 0, %.preheader205.preheader ], [ %indvars.iv.next435, %._crit_edge ] ; 10 uses
  %i.cg = mul nsw i64 %indvars.iv434, %i.ce       ; 2 uses
  %i.ch = trunc i64 %indvars.iv434 to i32
  %i.ci = mul i32 %i.g, %i.ch
  %i.cj = sdiv i32 %i.ci, %i.z                    ; 2 uses
  %i.ck = icmp slt i64 %indvars.iv434, %i.cf
  %.fr = freeze i1 %i.ck
  br i1 %.fr, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.preheader205, %bb.l
  %indvars.iv429 = phi i64 [ %indvars.iv.next430, %bb.l ], [ 0, %.preheader205 ] ; 7 uses
  %i.cl = add nsw i64 %indvars.iv429, %i.cg       ; 2 uses
  %gep549 = getelementptr i8, ptr %invariant.gep548, i64 %i.cl
  %i.cm = load i8, ptr %gep549, align 1, !tbaa !16
  %i.cn = trunc nsw i64 %i.cl to i32
  %.reass.us = add i32 %invariant.op, %i.cn
  %i.co = sext i32 %.reass.us to i64
  %i.cp = getelementptr inbounds i8, ptr %0, i64 %i.co
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !16  ; 2 uses
  %i.cr = trunc i64 %indvars.iv429 to i32
  %i.cs = mul i32 %i.d, %i.cr
  %i.ct = sdiv i32 %i.cs, %i.z
  %i.cu = add nsw i32 %i.ct, %i.cj
  %i.cv = and i32 %i.cu, 1
  %i.cw = icmp eq i32 %i.cv, 0
  %i.cx = zext i8 %i.cm to i32                    ; 6 uses
  br i1 %i.cw, label %bb.j, label %bb.h

bb.h:                                             ; preds = %.lr.ph.split.us
  %i.cy = icmp samesign ugt i32 %i.bx, %i.cx
  %i.cz = icmp slt i32 %i.by, %i.cx
  %or.cond191.us = select i1 %i.cy, i1 true, i1 %i.cz
  br i1 %or.cond191.us, label %.split309.us, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.da = zext i8 %i.cq to i32                    ; 2 uses
  %i.db = icmp sgt i32 %i.ca, %i.da
  br i1 %i.db, label %.split314.us, label %bb.l

bb.j:                                             ; preds = %.lr.ph.split.us
  %i.dc = icmp samesign ugt i32 %i.cb, %i.cx
  %i.dd = icmp slt i32 %i.cc, %i.cx
  %or.cond = select i1 %i.dc, i1 true, i1 %i.dd
  br i1 %or.cond, label %.split320.us, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.de = zext i8 %i.cq to i32                    ; 3 uses
  %i.df = icmp samesign ugt i32 %i.cb, %i.de
  %i.dg = icmp samesign ult i32 %i.cc, %i.de
  %or.cond189.us = or i1 %i.df, %i.dg
  br i1 %or.cond189.us, label %.split325.us, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.i
  %indvars.iv.next430 = add nuw nsw i64 %indvars.iv429, 1 ; 2 uses
  %exitcond433.not = icmp eq i64 %indvars.iv.next430, %wide.trip.count432
  br i1 %exitcond433.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !56

.lr.ph.split:                                     ; preds = %.preheader205, %bb.s
  %indvars.iv424 = phi i64 [ %indvars.iv.next425, %bb.s ], [ 0, %.preheader205 ] ; 7 uses
  %i.dh = add nsw i64 %indvars.iv424, %i.cg       ; 2 uses
  %gep547 = getelementptr i8, ptr %invariant.gep546, i64 %i.dh
  %i.di = load i8, ptr %gep547, align 1, !tbaa !16
  %i.dj = trunc nsw i64 %i.dh to i32
  %.reass = add i32 %invariant.op, %i.dj
  %i.dk = sext i32 %.reass to i64
  %i.dl = getelementptr inbounds i8, ptr %0, i64 %i.dk
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !16  ; 2 uses
  %i.dn = trunc i64 %indvars.iv424 to i32
  %i.do = mul i32 %i.d, %i.dn
  %i.dp = sdiv i32 %i.do, %i.z
  %i.dq = add nsw i32 %i.dp, %i.cj
  %i.dr = and i32 %i.dq, 1
  %i.ds = icmp eq i32 %i.dr, 0
  %i.dt = zext i8 %i.di to i32                    ; 5 uses
  br i1 %i.ds, label %bb.m, label %bb.o

bb.m:                                             ; preds = %.lr.ph.split
  %i.du = icmp samesign ugt i32 %i.cb, %i.dt
  %i.dv = icmp slt i32 %i.cc, %i.dt
  %or.cond342 = select i1 %i.du, i1 true, i1 %i.dv
  br i1 %or.cond342, label %.split320.us, label %bb.n

.split320.us:                                     ; preds = %bb.m, %bb.j
  %.us-phi322 = phi i32 [ %i.cx, %bb.j ], [ %i.dt, %bb.m ]
  %.us-phi323.in = phi i64 [ %indvars.iv429, %bb.j ], [ %indvars.iv424, %bb.m ]
  %.us-phi323 = trunc i64 %.us-phi323.in to i32
  %.1160329382 = trunc i64 %indvars.iv434 to i32
  %i.dw = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.162, ptr noundef nonnull @.str.165, i32 noundef %.1160329382, i32 noundef %.us-phi323, i32 noundef 128, i32 noundef %.us-phi322) ; 0 uses
  br label %.preheader204

bb.n:                                             ; preds = %bb.m
  %i.dx = zext i8 %i.dm to i32                    ; 3 uses
  %i.dy = icmp samesign ugt i32 %i.cb, %i.dx
  %i.dz = icmp samesign ult i32 %i.cc, %i.dx
  %or.cond189 = or i1 %i.dy, %i.dz
  br i1 %or.cond189, label %.split325.us, label %bb.s

.split325.us:                                     ; preds = %bb.n, %bb.k
  %.us-phi327 = phi i32 [ %i.de, %bb.k ], [ %i.dx, %bb.n ]
  %.us-phi328.in = phi i64 [ %indvars.iv429, %bb.k ], [ %indvars.iv424, %bb.n ]
  %.us-phi328 = trunc i64 %.us-phi328.in to i32
  %.1160329383 = trunc i64 %indvars.iv434 to i32
  %i.ea = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.162, ptr noundef nonnull @.str.166, i32 noundef %.1160329383, i32 noundef %.us-phi328, i32 noundef 128, i32 noundef %.us-phi327) ; 0 uses
  br label %.preheader204

bb.o:                                             ; preds = %.lr.ph.split
  %i.eb = icmp slt i32 %i.bu, %i.dt
  br i1 %i.eb, label %bb.p, label %bb.q

.split309.us:                                     ; preds = %bb.h
  %i.ec = trunc nuw nsw i64 %indvars.iv434 to i32
  %i.ed = trunc nuw nsw i64 %indvars.iv429 to i32
  %i.ee = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.162, ptr noundef nonnull @.str.165, i32 noundef %i.ec, i32 noundef %i.ed, i32 noundef 85, i32 noundef %i.cx) ; 0 uses
  br label %.preheader204

.split314.us:                                     ; preds = %bb.i
  %i.ef = trunc nuw nsw i64 %indvars.iv434 to i32
  %i.eg = trunc nuw nsw i64 %indvars.iv429 to i32
  %i.eh = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.162, ptr noundef nonnull @.str.166, i32 noundef %i.ef, i32 noundef %i.eg, i32 noundef %i.bz, i32 noundef %i.da) ; 0 uses
  br label %.preheader204

bb.p:                                             ; preds = %bb.o
  %i.ei = trunc nuw nsw i64 %indvars.iv434 to i32
  %i.ej = trunc nuw nsw i64 %indvars.iv424 to i32
  %i.ek = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.164, ptr noundef nonnull @.str.165, i32 noundef %i.ei, i32 noundef %i.ej, i32 noundef %i.dt) ; 0 uses
  br label %.preheader204

bb.q:                                             ; preds = %bb.o
  %i.el = zext i8 %i.dm to i32                    ; 3 uses
  %i.em = icmp samesign ugt i32 %i.bv, %i.el
  %i.en = icmp samesign ult i32 %i.bw, %i.el
  %or.cond193 = select i1 %i.em, i1 true, i1 %i.en
  br i1 %or.cond193, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.eo = trunc nuw nsw i64 %indvars.iv434 to i32
  %i.ep = trunc nuw nsw i64 %indvars.iv424 to i32
  %i.eq = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.162, ptr noundef nonnull @.str.166, i32 noundef %i.eo, i32 noundef %i.ep, i32 noundef 149, i32 noundef %i.el) ; 0 uses
  br label %.preheader204

bb.s:                                             ; preds = %bb.q, %bb.n
  %indvars.iv.next425 = add nuw nsw i64 %indvars.iv424, 1 ; 2 uses
  %exitcond428.not = icmp eq i64 %indvars.iv.next425, %wide.trip.count427
  br i1 %exitcond428.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !56

._crit_edge:                                      ; preds = %bb.s, %bb.l
  %indvars.iv.next435 = add nuw nsw i64 %indvars.iv434, 1 ; 2 uses
  %exitcond438.not = icmp eq i64 %indvars.iv.next435, %wide.trip.count437
  br i1 %exitcond438.not, label %.loopexit, label %.preheader205, !llvm.loop !57

.preheader204:                                    ; preds = %.split.us, %bb.p, %.split250.us, %.split.us256, %.split245.us, %.split320.us, %.split325.us, %bb.r, %.split309.us, %.split314.us
  store i1 true, ptr @exitStatus, align 4
  br i1 %i.aa, label %.preheader203.lr.ph, label %._crit_edge334

.preheader203.lr.ph:                              ; preds = %.preheader204
  %i.er = icmp sgt i32 %i.k, 0
  br i1 %i.er, label %.preheader203.us.preheader, label %.preheader203

.preheader203.us.preheader:                       ; preds = %.preheader203.lr.ph
  %i.es = sext i32 %i.t to i64
  %wide.trip.count448 = zext nneg i32 %i.o to i64
  %wide.trip.count443 = zext nneg i32 %i.k to i64
end_hunk_1
begin_hunk_2_@checkBuf:bb.a
  %i.hh = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.162, ptr noundef nonnull @.str.189, i32 noundef %.1262679, i32 noundef %i.gf, i32 noundef %i.ac, i32 noundef %.0.i330388395410) ; 0 uses
  br label %.thread384

bb.bk:                                            ; preds = %bb.bi
  %i.hi = icmp slt i32 %.0.i332397407, %i.ad
  %i.hj = icmp sgt i32 %.0.i332397407, %i.ae
  %or.cond321 = or i1 %i.hi, %i.hj
  br i1 %or.cond321, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.hk = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.162, ptr noundef nonnull @.str.190, i32 noundef %.1262679, i32 noundef %i.gf, i32 noundef %i.ac, i32 noundef %.0.i332397407) ; 0 uses
  br label %.thread384

bb.bm:                                            ; preds = %bb.bk
  %i.hl = icmp slt i32 %.0.i334413, %i.ad
  %i.hm = icmp sgt i32 %.0.i334413, %i.ae
  %or.cond322 = or i1 %i.hl, %i.hm
  br i1 %or.cond322, label %bb.bn, label %bb.cb

bb.bn:                                            ; preds = %bb.bm
  %i.hn = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.162, ptr noundef nonnull @.str.191, i32 noundef %.1262679, i32 noundef %i.gf, i32 noundef %i.ac, i32 noundef %.0.i334413) ; 0 uses
  br label %.thread384

bb.bo:                                            ; preds = %bb.ba
  %i.ho = icmp slt i32 %.0.i330388395410, %i.ab   ; 2 uses
  br i1 %i.fa, label %bb.bp, label %bb.bv

bb.bp:                                            ; preds = %bb.bo
  br i1 %i.ho, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.hp = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.162, ptr noundef nonnull @.str.189, i32 noundef %.1262679, i32 noundef %i.gf, i32 noundef %i.y, i32 noundef %.0.i330388395410) ; 0 uses
  br label %.thread384

bb.br:                                            ; preds = %bb.bp
  %i.hq = icmp sgt i32 %.0.i332397407, %i.aa
  br i1 %i.hq, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.hr = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.164, ptr noundef nonnull @.str.190, i32 noundef %.1262679, i32 noundef %i.gf, i32 noundef %.0.i332397407) ; 0 uses
  br label %.thread384

bb.bt:                                            ; preds = %bb.br
  %i.hs = icmp sgt i32 %.0.i334413, %i.aa
  br i1 %i.hs, label %bb.bu, label %bb.cb

bb.bu:                                            ; preds = %bb.bt
  %i.ht = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.164, ptr noundef nonnull @.str.191, i32 noundef %.1262679, i32 noundef %i.gf, i32 noundef %.0.i334413) ; 0 uses
  br label %.thread384

bb.bv:                                            ; preds = %bb.bo
  br i1 %i.ho, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.hu = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.162, ptr noundef nonnull @.str.189, i32 noundef %.1262679, i32 noundef %i.gf, i32 noundef %i.y, i32 noundef %.0.i330388395410) ; 0 uses
  br label %.thread384

bb.bx:                                            ; preds = %bb.bv
  %i.hv = icmp slt i32 %.0.i332397407, %i.ab
  br i1 %i.hv, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.hw = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.162, ptr noundef nonnull @.str.190, i32 noundef %.1262679, i32 noundef %i.gf, i32 noundef %i.y, i32 noundef %.0.i332397407) ; 0 uses
  br label %.thread384

bb.bz:                                            ; preds = %bb.bx
  %i.hx = icmp sgt i32 %.0.i334413, %i.aa
  br i1 %i.hx, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.hy = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.164, ptr noundef nonnull @.str.191, i32 noundef %.1262679, i32 noundef %i.gf, i32 noundef %.0.i334413) ; 0 uses
  br label %.thread384

bb.cb:                                            ; preds = %bb.bm, %bb.bg, %bb.bz, %bb.bt, %bb.as, %bb.ay
  %i.hz = icmp slt i32 %i.ge, %i.ab
  br i1 %i.hz, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.ia = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.162, ptr noundef nonnull @.str.192, i32 noundef %.1262679, i32 noundef %i.gf, i32 noundef %i.y, i32 noundef %i.ge) ; 0 uses
  br label %.thread384

bb.cd:                                            ; preds = %bb.cb
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.aj, !llvm.loop !67

._crit_edge:                                      ; preds = %bb.cd
  %i.ib = add nuw nsw i32 %.1262679, 1            ; 2 uses
  %exitcond1132.not = icmp eq i32 %i.ib, %2
  br i1 %exitcond1132.not, label %.loopexit, label %.preheader484, !llvm.loop !68

.thread384:                                       ; preds = %bb.by, %bb.bw, %bb.bu, %bb.bs, %bb.bq, %bb.bn, %bb.bl, %bb.bj, %bb.bh, %bb.bf, %bb.bd, %bb.az, %bb.ax, %bb.av, %bb.ca, %bb.cc, %bb.at, %bb.ar, %bb.ap, %.split703.us, %.split691.us, %.split686.us, %.split.us, %.split726.us, %.split697.us, %.split731.us, %.split720.us, %.split714.us, %.split708.us
  store i1 true, ptr @exitStatus, align 4
  %i.ic = icmp sgt i32 %2, 0
  br i1 %i.ic, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %.thread384
  %i.id = icmp sgt i32 %1, 0
  br i1 %i.id, label %.preheader.lr.ph.split.us, label %.preheader

.preheader.lr.ph.split.us:                        ; preds = %.preheader.lr.ph
  %i.ie = sext i32 %i.k to i64                    ; 2 uses
  br i1 %i.q, label %.preheader.us.us.preheader, label %.preheader.us.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph.split.us
  %i.if = sext i32 %.0268 to i64
  %i.ig = sext i32 %.0267 to i64                  ; 3 uses
  %i.ih = sext i32 %.0266 to i64                  ; 3 uses
  %i.ii = zext nneg i32 %1 to i64
  %wide.trip.count1162 = zext nneg i32 %2 to i64
  %wide.trip.count1157 = zext nneg i32 %1 to i64
  %invariant.gep1547 = getelementptr [2 x i8], ptr %0, i64 %i.ig
  %invariant.gep1549 = getelementptr [2 x i8], ptr %0, i64 %i.ih
  %invariant.gep1551 = getelementptr [2 x i8], ptr %0, i64 %i.ig
  %invariant.gep1553 = getelementptr [2 x i8], ptr %0, i64 %i.ih
  %invariant.gep1555 = getelementptr i8, ptr %0, i64 %i.ig
  %invariant.gep1557 = getelementptr i8, ptr %0, i64 %i.ih
  br label %.preheader.us

.preheader.us.us.preheader:                       ; preds = %.preheader.lr.ph.split.us
  %i.ij = zext nneg i32 %1 to i64
  %wide.trip.count1172 = zext nneg i32 %2 to i64
  %wide.trip.count1167 = zext nneg i32 %1 to i64
  br label %.preheader.us.us

.preheader.us.us:                                 ; preds = %.preheader.us.us.preheader, %._crit_edge811.split.us.us.us
  %indvars.iv1169 = phi i64 [ 0, %.preheader.us.us.preheader ], [ %indvars.iv.next1170, %._crit_edge811.split.us.us.us ] ; 2 uses
  %i.ik = mul nuw nsw i64 %indvars.iv1169, %i.ij
  br label %bb.ce

bb.ce:                                            ; preds = %getVal.exit345.us.us.us, %.preheader.us.us
  %indvars.iv1164 = phi i64 [ %indvars.iv.next1165, %getVal.exit345.us.us.us ], [ 0, %.preheader.us.us ] ; 2 uses
  %i.il = add nuw nsw i64 %indvars.iv1164, %i.ik
  %i.im = mul nsw i64 %i.il, %i.ie                ; 2 uses
  %i.in = load i32, ptr @precision, align 4, !tbaa !12 ; 2 uses
  %i.io = icmp slt i32 %i.in, 9
  br i1 %i.io, label %bb.ci, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.ip = icmp samesign ult i32 %i.in, 13
  %i.iq = getelementptr [2 x i8], ptr %0, i64 %i.im ; 4 uses
  %i.ir = load i16, ptr %i.iq, align 2, !tbaa !18 ; 2 uses
  %i.is = getelementptr i8, ptr %i.iq, i64 2
  %i.it = load i16, ptr %i.is, align 2, !tbaa !18 ; 2 uses
  %i.iu = getelementptr i8, ptr %i.iq, i64 4
  %i.iv = load i16, ptr %i.iu, align 2, !tbaa !18 ; 2 uses
  %i.iw = getelementptr i8, ptr %i.iq, i64 6
  %i.ix = load i16, ptr %i.iw, align 2, !tbaa !18 ; 2 uses
  br i1 %i.ip, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.iy = zext i16 %i.ir to i32
  %i.iz = zext i16 %i.it to i32
  %i.ja = zext i16 %i.iv to i32
  %i.jb = zext i16 %i.ix to i32
  br label %getVal.exit345.us.us.us

bb.ch:                                            ; preds = %bb.cf
  %i.jc = sext i16 %i.ir to i32
  %i.jd = sext i16 %i.it to i32
  %i.je = sext i16 %i.iv to i32
  %i.jf = sext i16 %i.ix to i32
  br label %getVal.exit345.us.us.us

bb.ci:                                            ; preds = %bb.ce
  %i.jg = getelementptr i8, ptr %0, i64 %i.im     ; 4 uses
  %i.jh = load i8, ptr %i.jg, align 1, !tbaa !16
  %i.ji = zext i8 %i.jh to i32
  %i.jj = getelementptr i8, ptr %i.jg, i64 1
  %i.jk = load i8, ptr %i.jj, align 1, !tbaa !16
  %i.jl = zext i8 %i.jk to i32
  %i.jm = getelementptr i8, ptr %i.jg, i64 2
  %i.jn = load i8, ptr %i.jm, align 1, !tbaa !16
  %i.jo = zext i8 %i.jn to i32
  %i.jp = getelementptr i8, ptr %i.jg, i64 3
  %i.jq = load i8, ptr %i.jp, align 1, !tbaa !16
  %i.jr = zext i8 %i.jq to i32
  br label %getVal.exit345.us.us.us

getVal.exit345.us.us.us:                          ; preds = %bb.ci, %bb.ch, %bb.cg
  %.0.i342454.us.us.us = phi i32 [ %i.jo, %bb.ci ], [ %i.je, %bb.ch ], [ %i.ja, %bb.cg ]
  %.0.i338431438452.us.us.us = phi i32 [ %i.ji, %bb.ci ], [ %i.jc, %bb.ch ], [ %i.iy, %bb.cg ]
  %.0.i340440450.us.us.us = phi i32 [ %i.jl, %bb.ci ], [ %i.jd, %bb.ch ], [ %i.iz, %bb.cg ]
  %.0.i344.us.us.us = phi i32 [ %i.jr, %bb.ci ], [ %i.jf, %bb.ch ], [ %i.jb, %bb.cg ]
  %i.js = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.193, i32 noundef %.0.i338431438452.us.us.us, i32 noundef %.0.i340440450.us.us.us, i32 noundef %.0.i342454.us.us.us, i32 noundef %.0.i344.us.us.us) ; 0 uses
  %indvars.iv.next1165 = add nuw nsw i64 %indvars.iv1164, 1 ; 2 uses
  %exitcond1168.not = icmp eq i64 %indvars.iv.next1165, %wide.trip.count1167
  br i1 %exitcond1168.not, label %._crit_edge811.split.us.us.us, label %bb.ce, !llvm.loop !69

._crit_edge811.split.us.us.us:                    ; preds = %getVal.exit345.us.us.us
  %putchar.us.us = tail call i32 @putchar(i32 10) ; 0 uses
  %indvars.iv.next1170 = add nuw nsw i64 %indvars.iv1169, 1 ; 2 uses
  %exitcond1173.not = icmp eq i64 %indvars.iv.next1170, %wide.trip.count1172
  br i1 %exitcond1173.not, label %.loopexit, label %.preheader.us.us, !llvm.loop !70

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge811.split.us814
  %indvars.iv1159 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next1160, %._crit_edge811.split.us814 ] ; 2 uses
  %i.jt = mul nuw nsw i64 %indvars.iv1159, %i.ii
  br label %bb.cj

bb.cj:                                            ; preds = %getVal.exit351.us, %.preheader.us
  %indvars.iv1154 = phi i64 [ %indvars.iv.next1155, %getVal.exit351.us ], [ 0, %.preheader.us ] ; 2 uses
  %i.ju = add nuw nsw i64 %indvars.iv1154, %i.jt
  %i.jv = mul nsw i64 %i.ju, %i.ie                ; 7 uses
  %i.jw = add nsw i64 %i.jv, %i.if                ; 2 uses
  %i.jx = load i32, ptr @precision, align 4, !tbaa !12 ; 2 uses
  %i.jy = icmp slt i32 %i.jx, 9
  br i1 %i.jy, label %bb.cn, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.jz = icmp samesign ult i32 %i.jx, 13
  %i.ka = getelementptr inbounds [2 x i8], ptr %0, i64 %i.jw
  %i.kb = load i16, ptr %i.ka, align 2, !tbaa !18 ; 2 uses
  br i1 %i.jz, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.kc = zext i16 %i.kb to i32
  %gep1548 = getelementptr [2 x i8], ptr %invariant.gep1547, i64 %i.jv
  %i.kd = load i16, ptr %gep1548, align 2, !tbaa !18
  %i.ke = zext i16 %i.kd to i32
  %gep1550 = getelementptr [2 x i8], ptr %invariant.gep1549, i64 %i.jv
  %i.kf = load i16, ptr %gep1550, align 2, !tbaa !18
  %i.kg = zext i16 %i.kf to i32
  br label %getVal.exit351.us

bb.cm:                                            ; preds = %bb.ck
  %i.kh = sext i16 %i.kb to i32
  %gep1552 = getelementptr [2 x i8], ptr %invariant.gep1551, i64 %i.jv
  %i.ki = load i16, ptr %gep1552, align 2, !tbaa !18
  %i.kj = sext i16 %i.ki to i32
  %gep1554 = getelementptr [2 x i8], ptr %invariant.gep1553, i64 %i.jv
  %i.kk = load i16, ptr %gep1554, align 2, !tbaa !18
  %i.kl = sext i16 %i.kk to i32
  br label %getVal.exit351.us

bb.cn:                                            ; preds = %bb.cj
  %i.km = getelementptr inbounds i8, ptr %0, i64 %i.jw
  %i.kn = load i8, ptr %i.km, align 1, !tbaa !16
  %i.ko = zext i8 %i.kn to i32
  %gep1556 = getelementptr i8, ptr %invariant.gep1555, i64 %i.jv
  %i.kp = load i8, ptr %gep1556, align 1, !tbaa !16
  %i.kq = zext i8 %i.kp to i32
  %gep1558 = getelementptr i8, ptr %invariant.gep1557, i64 %i.jv
  %i.kr = load i8, ptr %gep1558, align 1, !tbaa !16
  %i.ks = zext i8 %i.kr to i32
  br label %getVal.exit351.us

getVal.exit351.us:                                ; preds = %bb.cn, %bb.cm, %bb.cl
  %.0.i348473.us = phi i32 [ %i.kq, %bb.cn ], [ %i.kj, %bb.cm ], [ %i.ke, %bb.cl ]
  %.0.i346464471.us = phi i32 [ %i.ko, %bb.cn ], [ %i.kh, %bb.cm ], [ %i.kc, %bb.cl ]
  %.0.i350.us = phi i32 [ %i.ks, %bb.cn ], [ %i.kl, %bb.cm ], [ %i.kg, %bb.cl ]
  %i.kt = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.194, i32 noundef %.0.i346464471.us, i32 noundef %.0.i348473.us, i32 noundef %.0.i350.us) ; 0 uses
  %indvars.iv.next1155 = add nuw nsw i64 %indvars.iv1154, 1 ; 2 uses
  %exitcond1158.not = icmp eq i64 %indvars.iv.next1155, %wide.trip.count1157
  br i1 %exitcond1158.not, label %._crit_edge811.split.us814, label %bb.cj, !llvm.loop !69

._crit_edge811.split.us814:                       ; preds = %getVal.exit351.us
  %putchar.us = tail call i32 @putchar(i32 10)    ; 0 uses
  %indvars.iv.next1160 = add nuw nsw i64 %indvars.iv1159, 1 ; 2 uses
  %exitcond1163.not = icmp eq i64 %indvars.iv.next1160, %wide.trip.count1162
  br i1 %exitcond1163.not, label %.loopexit, label %.preheader.us, !llvm.loop !70

.preheader:                                       ; preds = %.preheader.lr.ph, %.preheader
  %.2263812 = phi i32 [ %i.ku, %.preheader ], [ 0, %.preheader.lr.ph ]
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  %i.ku = add nuw nsw i32 %.2263812, 1            ; 2 uses
  %exitcond1153.not = icmp eq i32 %i.ku, %2
  br i1 %exitcond1153.not, label %.loopexit, label %.preheader, !llvm.loop !70

.loopexit:                                        ; preds = %._crit_edge, %._crit_edge681.split, %._crit_edge681.split.us.us, %.preheader, %._crit_edge811.split.us814, %._crit_edge811.split.us.us.us, %.preheader485, %.preheader484.lr.ph, %.preheader482, %.preheader481.lr.ph, %.thread384
  %.0269 = phi i32 [ 1, %.preheader482 ], [ 0, %.thread384 ], [ 1, %._crit_edge681.split.us.us ], [ 0, %._crit_edge811.split.us.us.us ], [ 1, %._crit_edge681.split ], [ 1, %.preheader481.lr.ph ], [ 0, %._crit_edge811.split.us814 ], [ 0, %.preheader ], [ 1, %.preheader484.lr.ph ], [ 1, %.preheader485 ], [ 1, %._crit_edge ]
  ret i32 %.0269
}

declare i32 @tj3DecodeYUVPlanes8(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

declare i32 @tj3Decompress8(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

declare i32 @tj3Decompress12(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

declare i32 @tj3Decompress16(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare i64 @random() local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #16

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #17

; Function Attrs: nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #17

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nounwind memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree nounwind }
attributes #17 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #20 = { nounwind willreturn memory(read) }
attributes #21 = { nounwind }
attributes #22 = { nounwind allocsize(0) }
attributes #23 = { cold noreturn nounwind }
attributes #24 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 omnipotent char", !9, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!6, !6, i64 0}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!"long", !5, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!5, !5, i64 0}
!17 = !{!"short", !5, i64 0}
!18 = !{!17, !17, i64 0}
!19 = distinct !{null}
!20 = distinct !{!20, !13}
!21 = distinct !{!21, !13}
!22 = distinct !{!22, !13}
!23 = distinct !{!23, !13}
!24 = distinct !{!24, !13}
!25 = distinct !{!25, !13}
!26 = distinct !{!26, !13}
!27 = distinct !{!27, !13}
!28 = distinct !{!28, !13, !42, !43}
!29 = distinct !{!29, !13, !42, !43}
!30 = distinct !{!30, !13, !42, !43}
!31 = distinct !{!31, !13, !43, !42}
!32 = distinct !{!32, !13}
!33 = distinct !{!33, !13, !42, !43}
!34 = distinct !{!34, !13, !43, !42}
!35 = distinct !{!35, !13}
!36 = distinct !{!36, !13}
!37 = distinct !{!37, !13, !43, !42}
!38 = distinct !{!38, !13}
!39 = distinct !{!39, !13}
!40 = distinct !{!40, !13}
!41 = distinct !{!41, !13}
!42 = !{!"llvm.loop.isvectorized", i32 1}
!43 = !{!"llvm.loop.unroll.runtime.disable"}
!44 = !{!"branch_weights", i32 4, i32 12}
!45 = distinct !{!45, !13}
!46 = distinct !{!46, !13}
!47 = distinct !{!47, !13}
!48 = distinct !{!48, !13}
!49 = distinct !{!49, !13}
!50 = distinct !{!50, !13}
!51 = !{!"", !6, i64 0, !6, i64 4}
!52 = !{!51, !6, i64 0}
!53 = !{!51, !6, i64 4}
!54 = distinct !{!54, !13}
!55 = distinct !{!55, !13}
!56 = distinct !{!56, !13}
!57 = distinct !{!57, !13}
!58 = distinct !{!58, !13}
!59 = distinct !{!59, !13}
!60 = distinct !{!60, !13}
!61 = distinct !{!61, !13}
!62 = distinct !{!62, !13}
!63 = distinct !{!63, !13}
!64 = distinct !{!64, !13}
!65 = distinct !{!65, !13}
!66 = distinct !{!66, !13}
!67 = distinct !{!67, !13}
!68 = distinct !{!68, !13}
!69 = distinct !{!69, !13}
!70 = distinct !{!70, !13}
end_hunk_2
