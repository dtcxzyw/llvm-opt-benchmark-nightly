Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/jpeg2000dec?download=true
inline.NumInlined: 106
inline.NumDeleted: 40
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 21
begin_hunk_0_@jpeg2000_decode_tile:bb.a
  %i.aet = icmp eq i32 %i.aes, 0
  %i.aeu = select i1 %i.aet, i32 %i.do, i32 0
  %spec.select146.i.i = shl i32 %i.aer, %i.aeu
  %i.aev = or i32 %spec.select146.i.i, %i.aeq
  store i32 %i.aev, ptr %i.aeo, align 4, !tbaa !46
  %i.aew = add nuw nsw i32 %.0120197.i.i, 1       ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.aew, %i.dc
  br i1 %exitcond.not.i.i, label %._crit_edge199.split.i.i, label %bb.bl, !llvm.loop !192

decode_cblk.exit.i:                               ; preds = %bb.i
  %i.aex = call i32 @ff_jpeg2000_decode_htj2k(ptr noundef %i.b, ptr noundef nonnull %i.w, ptr noundef nonnull %4, ptr noundef nonnull %i.cu, i32 noundef %i.dc, i32 noundef %i.dh, i32 noundef %i.bi, i8 noundef zeroext %i.di) #10
  %.not122.i = icmp eq i32 %i.aex, 0
  br i1 %.not122.i, label %dequantization_float.exit.i, label %decode_cblk.exit.thread.i

decode_cblk.exit.thread.i:                        ; preds = %._crit_edge199.split.i.i, %decode_cblk.exit.i, %.preheader.lr.ph.i.i, %bb.bk, %bb.bd, %._crit_edge.i
  %i.aey = load i32, ptr %i.cy, align 8, !tbaa !46 ; 4 uses
  %i.aez = load i32, ptr %i.bb, align 8, !tbaa !46
  %i.afa = sub i32 %i.aey, %i.aez                 ; 3 uses
  %i.afb = load i32, ptr %i.dd, align 8, !tbaa !46 ; 3 uses
  %i.afc = load i32, ptr %i.bn, align 8, !tbaa !46
  %i.afd = sub i32 %i.afb, %i.afc                 ; 3 uses
  %i.afe = load i8, ptr %i.ai, align 2, !tbaa !82
  switch i8 %i.afe, label %bb.bo [
    i8 0, label %bb.bm
    i8 2, label %bb.bn
  ]

bb.bm:                                            ; preds = %decode_cblk.exit.thread.i
  %.val.i = load float, ptr %i.cc, align 8, !tbaa !232
  %i.aff = load i32, ptr %i.cz, align 4, !tbaa !46
  %i.afg = sub i32 %i.aff, %i.aey                 ; 3 uses
  %i.afh = fdiv nsz float %.val.i, %i.cg          ; 2 uses
  %i.afi = load i32, ptr %i.de, align 4, !tbaa !46
  %i.afj = sub nsw i32 %i.afi, %i.afb             ; 2 uses
  %i.afk = icmp sgt i32 %i.afj, 0
  br i1 %i.afk, label %.lr.ph4.i.i, label %dequantization_float.exit.i

.lr.ph4.i.i:                                      ; preds = %bb.bm
  %i.afl = load ptr, ptr %i.am, align 8, !tbaa !233
  %i.afm = load i32, ptr %i.al, align 4, !tbaa !46
  %i.afn = load i32, ptr %i.ak, align 8, !tbaa !46
  %i.afo = sub nsw i32 %i.afm, %i.afn
  %i.afp = icmp sgt i32 %i.afg, 0
  br i1 %i.afp, label %.lr.ph.preheader.i.i, label %dequantization_float.exit.i

.lr.ph.preheader.i.i:                             ; preds = %.lr.ph4.i.i
  %i.afq = load i32, ptr %i.m, align 8, !tbaa !228
  %i.afr = sext i32 %i.afq to i64
  %wide.trip.count10.i.i = zext nneg i32 %i.afj to i64
  %wide.trip.count.i.i = zext nneg i32 %i.afg to i64 ; 3 uses
  %min.iters.check199 = icmp ult i32 %i.afg, 8
  %n.vec201 = and i64 %wide.trip.count.i.i, 2147483640 ; 3 uses
  %broadcast.splatinsert202 = insertelement <4 x float> poison, float %i.afh, i64 0
  %broadcast.splat203 = shufflevector <4 x float> %broadcast.splatinsert202, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n210 = icmp eq i64 %n.vec201, %wide.trip.count.i.i
  br label %.lr.ph.i124.i

.lr.ph.i124.i:                                    ; preds = %._crit_edge.i126.i, %.lr.ph.preheader.i.i
  %indvars.iv7.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next8.i.i, %._crit_edge.i126.i ] ; 3 uses
  %i.afs = trunc i64 %indvars.iv7.i.i to i32
  %i.aft = add i32 %i.afd, %i.afs
  %i.afu = mul nsw i32 %i.aft, %i.afo
  %i.afv = add nsw i32 %i.afu, %i.afa
  %i.afw = sext i32 %i.afv to i64
  %i.afx = getelementptr inbounds [4 x i8], ptr %i.afl, i64 %i.afw ; 2 uses
  %i.afy = mul nsw i64 %indvars.iv7.i.i, %i.afr
  %i.afz = getelementptr inbounds [4 x i8], ptr %4, i64 %i.afy ; 2 uses
  br i1 %min.iters.check199, label %scalar.ph198.preheader, label %vector.body204

vector.body204:                                   ; preds = %.lr.ph.i124.i, %vector.body204
  %index205 = phi i64 [ %index.next208, %vector.body204 ], [ 0, %.lr.ph.i124.i ] ; 3 uses
  %i.aga = getelementptr inbounds nuw [4 x i8], ptr %i.afz, i64 %index205 ; 2 uses
  %i.agb = getelementptr inbounds nuw i8, ptr %i.aga, i64 16
  %wide.load206 = load <4 x i32>, ptr %i.aga, align 4, !tbaa !46 ; 3 uses
  %wide.load207 = load <4 x i32>, ptr %i.agb, align 4, !tbaa !46 ; 3 uses
  %i.agc = icmp slt <4 x i32> %wide.load206, zeroinitializer
  %i.agd = icmp slt <4 x i32> %wide.load207, zeroinitializer
  %i.age = and <4 x i32> %wide.load206, splat (i32 2147483647)
  %i.agf = and <4 x i32> %wide.load207, splat (i32 2147483647)
  %i.agg = sub nsw <4 x i32> zeroinitializer, %i.age
  %i.agh = sub nsw <4 x i32> zeroinitializer, %i.agf
  %i.agi = select <4 x i1> %i.agc, <4 x i32> %i.agg, <4 x i32> %wide.load206
  %i.agj = select <4 x i1> %i.agd, <4 x i32> %i.agh, <4 x i32> %wide.load207
  %i.agk = sitofp nsz <4 x i32> %i.agi to <4 x float>
  %i.agl = sitofp nsz <4 x i32> %i.agj to <4 x float>
  %i.agm = fmul nsz <4 x float> %broadcast.splat203, %i.agk
  %i.agn = fmul nsz <4 x float> %broadcast.splat203, %i.agl
  %i.ago = getelementptr inbounds nuw [4 x i8], ptr %i.afx, i64 %index205 ; 2 uses
  %i.agp = getelementptr inbounds nuw i8, ptr %i.ago, i64 16
  store <4 x float> %i.agm, ptr %i.ago, align 4, !tbaa !234
  store <4 x float> %i.agn, ptr %i.agp, align 4, !tbaa !234
  %index.next208 = add nuw i64 %index205, 8       ; 2 uses
  %i.agq = icmp eq i64 %index.next208, %n.vec201
  br i1 %i.agq, label %middle.block209, label %vector.body204, !llvm.loop !193

middle.block209:                                  ; preds = %vector.body204
  br i1 %cmp.n210, label %._crit_edge.i126.i, label %scalar.ph198.preheader

scalar.ph198.preheader:                           ; preds = %.lr.ph.i124.i, %middle.block209
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.i124.i ], [ %n.vec201, %middle.block209 ]
  br label %scalar.ph198

scalar.ph198:                                     ; preds = %scalar.ph198.preheader, %scalar.ph198
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %scalar.ph198 ], [ %indvars.iv.i.i.ph, %scalar.ph198.preheader ] ; 3 uses
  %i.agr = getelementptr inbounds nuw [4 x i8], ptr %i.afz, i64 %indvars.iv.i.i
  %i.ags = load i32, ptr %i.agr, align 4, !tbaa !46 ; 3 uses
  %i.agt = icmp slt i32 %i.ags, 0
  %i.agu = and i32 %i.ags, 2147483647
  %i.agv = sub nsw i32 0, %i.agu
  %.0.i.i = select i1 %i.agt, i32 %i.agv, i32 %i.ags
  %i.agw = sitofp nsz i32 %.0.i.i to float
  %i.agx = fmul nsz float %i.afh, %i.agw
  %i.agy = getelementptr inbounds nuw [4 x i8], ptr %i.afx, i64 %indvars.iv.i.i
  store float %i.agx, ptr %i.agy, align 4, !tbaa !234
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i125.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i125.i, label %._crit_edge.i126.i, label %scalar.ph198, !llvm.loop !194

._crit_edge.i126.i:                               ; preds = %scalar.ph198, %middle.block209
  %indvars.iv.next8.i.i = add nuw nsw i64 %indvars.iv7.i.i, 1 ; 2 uses
  %exitcond11.not.i.i = icmp eq i64 %indvars.iv.next8.i.i, %wide.trip.count10.i.i
  br i1 %exitcond11.not.i.i, label %dequantization_float.exit.i, label %.lr.ph.i124.i, !llvm.loop !195

bb.bn:                                            ; preds = %decode_cblk.exit.thread.i
  %i.agz = load i32, ptr %i.cz, align 4, !tbaa !46
  %i.aha = sub i32 %i.agz, %i.aey                 ; 3 uses
  %i.ahb = load float, ptr %i.cc, align 8, !tbaa !232
  %i.ahc = fdiv nsz float %i.ahb, %i.cg
  %i.ahd = fmul nsz float %i.ahc, 6.400000e+01
  %i.ahe = fmul nsz float %i.ahd, f0x4B800000
  %i.ahf = fpext nsz float %i.ahe to double
  %i.ahg = fadd nsz double %i.ahf, 5.000000e-01
  %i.ahh = fptosi double %i.ahg to i32
  store i32 %i.ahh, ptr %i.ch, align 4, !tbaa !235
  %i.ahi = load i32, ptr %i.de, align 4, !tbaa !46
  %i.ahj = load i32, ptr %i.dd, align 8, !tbaa !46
  %i.ahk = icmp sgt i32 %i.ahi, %i.ahj
  br i1 %i.ahk, label %.lr.ph47.i.i, label %dequantization_float.exit.i

.lr.ph47.i.i:                                     ; preds = %bb.bn
  %i.ahl = load ptr, ptr %i.aj, align 8, !tbaa !236 ; 2 uses
  %i.ahm = icmp sgt i32 %i.aha, 0
  br i1 %i.ahm, label %.lr.ph.preheader.i127.i, label %dequantization_float.exit.i

.lr.ph.preheader.i127.i:                          ; preds = %.lr.ph47.i.i
  %wide.trip.count.i128.i = zext nneg i32 %i.aha to i64 ; 4 uses
  %i.ahn = shl nuw nsw i64 %wide.trip.count.i128.i, 2 ; 2 uses
  %scevgep213 = getelementptr i8, ptr %i.ahl, i64 %i.ahn
  %scevgep215 = getelementptr i8, ptr %4, i64 %i.ahn
  %min.iters.check226 = icmp ult i32 %i.aha, 4
  %n.vec228 = and i64 %wide.trip.count.i128.i, 2147483644 ; 3 uses
  %cmp.n236 = icmp eq i64 %n.vec228, %wide.trip.count.i128.i
  br label %.lr.ph.i129.i

.lr.ph.i129.i:                                    ; preds = %._crit_edge.i134.i, %.lr.ph.preheader.i127.i
  %.03945.i.i = phi i32 [ %i.ajj, %._crit_edge.i134.i ], [ 0, %.lr.ph.preheader.i127.i ] ; 3 uses
  %i.aho = load i32, ptr %i.al, align 4, !tbaa !46
  %i.ahp = load i32, ptr %i.ak, align 8, !tbaa !46
  %i.ahq = sub nsw i32 %i.aho, %i.ahp
  %i.ahr = add nsw i32 %.03945.i.i, %i.afd
  %i.ahs = mul nsw i32 %i.ahq, %i.ahr
  %i.aht = add nsw i32 %i.ahs, %i.afa
  %i.ahu = sext i32 %i.aht to i64                 ; 2 uses
  %i.ahv = getelementptr inbounds [4 x i8], ptr %i.ahl, i64 %i.ahu ; 4 uses
  %i.ahw = load i32, ptr %i.m, align 8, !tbaa !228
  %i.ahx = mul nsw i32 %i.ahw, %.03945.i.i
  %i.ahy = sext i32 %i.ahx to i64                 ; 2 uses
  %i.ahz = getelementptr inbounds [4 x i8], ptr %4, i64 %i.ahy ; 3 uses
  br i1 %min.iters.check226, label %scalar.ph225.preheader, label %vector.memcheck212

vector.memcheck212:                               ; preds = %.lr.ph.i129.i
  %i.aia = shl nsw i64 %i.ahu, 2
  %scevgep214 = getelementptr i8, ptr %scevgep213, i64 %i.aia ; 2 uses
  %i.aib = shl nsw i64 %i.ahy, 2
  %scevgep216 = getelementptr i8, ptr %scevgep215, i64 %i.aib
  %bound0218 = icmp ult ptr %i.ahv, %scevgep216
  %bound1219 = icmp ult ptr %i.ahz, %scevgep214
  %found.conflict220 = and i1 %bound0218, %bound1219
  %bound0221 = icmp ult ptr %i.ahv, %scevgep217
  %bound1222 = icmp ult ptr %i.ch, %scevgep214
  %found.conflict223 = and i1 %bound0221, %bound1222
  %conflict.rdx224 = or i1 %found.conflict220, %found.conflict223
  br i1 %conflict.rdx224, label %scalar.ph225.preheader, label %vector.ph227

vector.ph227:                                     ; preds = %vector.memcheck212
  %i.aic = load i32, ptr %i.ch, align 4, !tbaa !235, !alias.scope !237
  %broadcast.splatinsert229 = insertelement <4 x i32> poison, i32 %i.aic, i64 0
  %broadcast.splat230 = shufflevector <4 x i32> %broadcast.splatinsert229, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.aid = sext <4 x i32> %broadcast.splat230 to <4 x i64>
  br label %vector.body231

vector.body231:                                   ; preds = %vector.body231, %vector.ph227
  %index232 = phi i64 [ 0, %vector.ph227 ], [ %index.next234, %vector.body231 ] ; 3 uses
  %i.aie = getelementptr inbounds nuw [4 x i8], ptr %i.ahz, i64 %index232
  %wide.load233 = load <4 x i32>, ptr %i.aie, align 4, !tbaa !46, !alias.scope !238 ; 3 uses
  %i.aif = icmp slt <4 x i32> %wide.load233, zeroinitializer
  %i.aig = and <4 x i32> %wide.load233, splat (i32 2147483647)
  %i.aih = sub nsw <4 x i32> zeroinitializer, %i.aig
  %i.aii = select <4 x i1> %i.aif, <4 x i32> %i.aih, <4 x i32> %wide.load233
  %i.aij = sext <4 x i32> %i.aii to <4 x i64>
  %5 = shl nsw <4 x i64> %i.aij, splat (i64 26)
  %i.aik = add nsw <4 x i64> %5, splat (i64 2147483648)
  %i.ail = ashr <4 x i64> %i.aik, splat (i64 32)
  %i.aim = mul nsw <4 x i64> %i.ail, %i.aid       ; 2 uses
  %i.ain = icmp sgt <4 x i64> %i.aim, zeroinitializer
  %i.aio = select <4 x i1> %i.ain, <4 x i64> splat (i64 32768), <4 x i64> splat (i64 32767)
  %i.aip = add nsw <4 x i64> %i.aio, %i.aim
  %i.aiq = lshr <4 x i64> %i.aip, splat (i64 16)
  %i.air = trunc <4 x i64> %i.aiq to <4 x i32>
  %i.ais = getelementptr inbounds nuw [4 x i8], ptr %i.ahv, i64 %index232
  store <4 x i32> %i.air, ptr %i.ais, align 4, !tbaa !46, !alias.scope !239, !noalias !240
  %index.next234 = add nuw i64 %index232, 4       ; 2 uses
  %i.ait = icmp eq i64 %index.next234, %n.vec228
  br i1 %i.ait, label %middle.block235, label %vector.body231, !llvm.loop !200

middle.block235:                                  ; preds = %vector.body231
  br i1 %cmp.n236, label %._crit_edge.i134.i, label %scalar.ph225.preheader

scalar.ph225.preheader:                           ; preds = %vector.memcheck212, %.lr.ph.i129.i, %middle.block235
  %indvars.iv.i130.i.ph = phi i64 [ 0, %vector.memcheck212 ], [ 0, %.lr.ph.i129.i ], [ %n.vec228, %middle.block235 ]
  br label %scalar.ph225

scalar.ph225:                                     ; preds = %scalar.ph225.preheader, %scalar.ph225
  %indvars.iv.i130.i = phi i64 [ %indvars.iv.next.i132.i, %scalar.ph225 ], [ %indvars.iv.i130.i.ph, %scalar.ph225.preheader ] ; 3 uses
  %i.aiu = getelementptr inbounds nuw [4 x i8], ptr %i.ahz, i64 %indvars.iv.i130.i
  %i.aiv = load i32, ptr %i.aiu, align 4, !tbaa !46 ; 3 uses
  %i.aiw = icmp slt i32 %i.aiv, 0
  %i.aix = and i32 %i.aiv, 2147483647
  %i.aiy = sub nsw i32 0, %i.aix
  %.0.i131.i = select i1 %i.aiw, i32 %i.aiy, i32 %i.aiv
  %i.aiz = sext i32 %.0.i131.i to i64
  %6 = shl nsw i64 %i.aiz, 26
  %i.aja = add nsw i64 %6, 2147483648
  %i.ajb = ashr i64 %i.aja, 32
  %i.ajc = load i32, ptr %i.ch, align 4, !tbaa !235
  %i.ajd = sext i32 %i.ajc to i64
  %i.aje = mul nsw i64 %i.ajb, %i.ajd             ; 2 uses
  %i.ajf = icmp sgt i64 %i.aje, 0
  %.v.v.i.i = select i1 %i.ajf, i64 32768, i64 32767
  %.v.i.i = add nsw i64 %.v.v.i.i, %i.aje
  %i.ajg = lshr i64 %.v.i.i, 16
  %i.ajh = trunc i64 %i.ajg to i32
  %i.aji = getelementptr inbounds nuw [4 x i8], ptr %i.ahv, i64 %indvars.iv.i130.i
  store i32 %i.ajh, ptr %i.aji, align 4, !tbaa !46
  %indvars.iv.next.i132.i = add nuw nsw i64 %indvars.iv.i130.i, 1 ; 2 uses
  %exitcond.not.i133.i = icmp eq i64 %indvars.iv.next.i132.i, %wide.trip.count.i128.i
  br i1 %exitcond.not.i133.i, label %._crit_edge.i134.i, label %scalar.ph225, !llvm.loop !201

._crit_edge.i134.i:                               ; preds = %scalar.ph225, %middle.block235
  %i.ajj = add nuw nsw i32 %.03945.i.i, 1         ; 2 uses
  %i.ajk = load i32, ptr %i.de, align 4, !tbaa !46
  %i.ajl = load i32, ptr %i.dd, align 8, !tbaa !46
  %i.ajm = sub nsw i32 %i.ajk, %i.ajl
  %i.ajn = icmp slt i32 %i.ajj, %i.ajm
  br i1 %i.ajn, label %.lr.ph.i129.i, label %dequantization_float.exit.i, !llvm.loop !202

bb.bo:                                            ; preds = %decode_cblk.exit.thread.i
  %i.ajo = load i32, ptr %i.cz, align 4, !tbaa !46
  %i.ajp = sub nsw i32 %i.ajo, %i.aey
  %.fr64.i.i = freeze i32 %i.ajp                  ; 4 uses
  %i.ajq = load i32, ptr %i.de, align 4, !tbaa !46
  %i.ajr = icmp sgt i32 %i.ajq, %i.afb
  br i1 %i.ajr, label %.lr.ph57.i.i, label %dequantization_float.exit.i

.lr.ph57.i.i:                                     ; preds = %bb.bo
  %i.ajs = load ptr, ptr %i.aj, align 8, !tbaa !236 ; 3 uses
  %i.ajt = icmp sgt i32 %.fr64.i.i, 0
  br i1 %i.ajt, label %.lr.ph57.split.us.split.us.preheader.i.i, label %dequantization_float.exit.i

.lr.ph57.split.us.split.us.preheader.i.i:         ; preds = %.lr.ph57.i.i
  %i.aju = ptrtoaddr ptr %i.ajs to i64
  %wide.trip.count79.i.i = zext nneg i32 %.fr64.i.i to i64 ; 9 uses
  %i.ajv = shl nuw nsw i64 %wide.trip.count79.i.i, 2 ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ajs, i64 %i.ajv
  %scevgep177 = getelementptr i8, ptr %4, i64 %i.ajv
  %min.iters.check184 = icmp ult i32 %.fr64.i.i, 4
  %n.vec186 = and i64 %wide.trip.count79.i.i, 2147483644 ; 3 uses
  %cmp.n196 = icmp eq i64 %n.vec186, %wide.trip.count79.i.i
  %min.iters.check = icmp ult i32 %.fr64.i.i, 8
  %n.vec = and i64 %wide.trip.count79.i.i, 2147483640 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count79.i.i
  %xtraiter = and i64 %wide.trip.count79.i.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.ajw = add nsw i64 %wide.trip.count79.i.i, -1
  br label %.lr.ph57.split.us.split.us.i.i

.lr.ph57.split.us.split.us.i.i:                   ; preds = %..loopexit52_crit_edge.us.us.i.i, %.lr.ph57.split.us.split.us.preheader.i.i
  %.04556.us.us.i.i = phi i32 [ %i.anl, %..loopexit52_crit_edge.us.us.i.i ], [ 0, %.lr.ph57.split.us.split.us.preheader.i.i ] ; 3 uses
  %i.ajx = load i32, ptr %i.al, align 4, !tbaa !46
  %i.ajy = load i32, ptr %i.ak, align 8, !tbaa !46
  %i.ajz = sub i32 %i.ajx, %i.ajy
  %i.aka = add i32 %.04556.us.us.i.i, %i.afd
  %i.akb = mul i32 %i.ajz, %i.aka
  %i.akc = add i32 %i.akb, %i.afa
  %i.akd = sext i32 %i.akc to i64                 ; 3 uses
  %i.ake = getelementptr [4 x i8], ptr %i.ajs, i64 %i.akd ; 8 uses
  %i.akf = load i32, ptr %i.m, align 8, !tbaa !228
  %i.akg = mul i32 %i.akf, %.04556.us.us.i.i
  %i.akh = sext i32 %i.akg to i64                 ; 3 uses
  %i.aki = getelementptr [4 x i8], ptr %4, i64 %i.akh ; 7 uses
  %i.akj = load i32, ptr %i.ch, align 4, !tbaa !235
  %i.akk = icmp eq i32 %i.akj, 32768
  br i1 %i.akk, label %.preheader.us.us.i.i.preheader, label %.preheader51.us.us.i.i.preheader

.preheader51.us.us.i.i.preheader:                 ; preds = %.lr.ph57.split.us.split.us.i.i
  br i1 %min.iters.check184, label %.preheader51.us.us.i.i.preheader246, label %vector.memcheck175

vector.memcheck175:                               ; preds = %.preheader51.us.us.i.i.preheader
  %i.akl = shl nsw i64 %i.akd, 2
  %scevgep176 = getelementptr i8, ptr %scevgep, i64 %i.akl ; 2 uses
  %i.akm = shl nsw i64 %i.akh, 2
  %scevgep178 = getelementptr i8, ptr %scevgep177, i64 %i.akm
  %bound0 = icmp ult ptr %i.ake, %scevgep178
  %bound1 = icmp ult ptr %i.aki, %scevgep176
  %found.conflict = and i1 %bound0, %bound1
  %bound0180 = icmp ult ptr %i.ake, %scevgep179
  %bound1181 = icmp ult ptr %i.ch, %scevgep176
  %found.conflict182 = and i1 %bound0180, %bound1181
  %conflict.rdx = or i1 %found.conflict, %found.conflict182
  br i1 %conflict.rdx, label %.preheader51.us.us.i.i.preheader246, label %vector.ph185

vector.ph185:                                     ; preds = %vector.memcheck175
  %i.akn = load i32, ptr %i.ch, align 4, !tbaa !235, !alias.scope !241
  %broadcast.splatinsert187 = insertelement <4 x i32> poison, i32 %i.akn, i64 0
  %broadcast.splat188 = shufflevector <4 x i32> %broadcast.splatinsert187, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ako = sext <4 x i32> %broadcast.splat188 to <4 x i64>
  br label %vector.body191

vector.body191:                                   ; preds = %vector.body191, %vector.ph185
  %index192 = phi i64 [ 0, %vector.ph185 ], [ %index.next194, %vector.body191 ] ; 3 uses
  %i.akp = getelementptr inbounds nuw [4 x i8], ptr %i.aki, i64 %index192
  %wide.load193 = load <4 x i32>, ptr %i.akp, align 4, !tbaa !46, !alias.scope !242 ; 3 uses
  %i.akq = icmp slt <4 x i32> %wide.load193, zeroinitializer
  %i.akr = and <4 x i32> %wide.load193, splat (i32 2147483647)
  %i.aks = lshr <4 x i32> %i.akr, %broadcast.splat190
  %i.akt = sub nsw <4 x i32> zeroinitializer, %i.aks
  %i.aku = lshr <4 x i32> %wide.load193, %broadcast.splat190
  %i.akv = select <4 x i1> %i.akq, <4 x i32> %i.akt, <4 x i32> %i.aku
  %i.akw = sext <4 x i32> %i.akv to <4 x i64>
  %i.akx = mul nsw <4 x i64> %i.akw, %i.ako
  %i.aky = sdiv <4 x i64> %i.akx, splat (i64 65536)
  %i.akz = trunc <4 x i64> %i.aky to <4 x i32>
  %i.ala = getelementptr inbounds nuw [4 x i8], ptr %i.ake, i64 %index192
  store <4 x i32> %i.akz, ptr %i.ala, align 4, !tbaa !46, !alias.scope !243, !noalias !244
  %index.next194 = add nuw i64 %index192, 4       ; 2 uses
  %i.alb = icmp eq i64 %index.next194, %n.vec186
  br i1 %i.alb, label %middle.block195, label %vector.body191, !llvm.loop !207

middle.block195:                                  ; preds = %vector.body191
  br i1 %cmp.n196, label %..loopexit52_crit_edge.us.us.i.i, label %.preheader51.us.us.i.i.preheader246

.preheader51.us.us.i.i.preheader246:              ; preds = %vector.memcheck175, %.preheader51.us.us.i.i.preheader, %middle.block195
  %indvars.iv76.i.i.ph = phi i64 [ 0, %vector.memcheck175 ], [ 0, %.preheader51.us.us.i.i.preheader ], [ %n.vec186, %middle.block195 ]
  br label %.preheader51.us.us.i.i

.preheader.us.us.i.i.preheader:                   ; preds = %.lr.ph57.split.us.split.us.i.i
  br i1 %min.iters.check, label %.preheader.us.us.i.i.preheader245, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader.us.us.i.i.preheader
  %i.alc = shl nsw i64 %i.akd, 2
  %i.ald = shl nsw i64 %i.akh, 2
  %i.ale = add i64 %i.alc, %i.aju
  %i.alf = add i64 %i.ald, %i.j
  %i.alg = sub i64 %i.alf, %i.ale
  %diff.check = icmp ugt i64 %i.alg, -32
  br i1 %diff.check, label %.preheader.us.us.i.i.preheader245, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.alh = getelementptr inbounds nuw [4 x i8], ptr %i.aki, i64 %index ; 2 uses
  %i.ali = getelementptr inbounds nuw i8, ptr %i.alh, i64 16
  %wide.load = load <4 x i32>, ptr %i.alh, align 4, !tbaa !46 ; 3 uses
  %wide.load174 = load <4 x i32>, ptr %i.ali, align 4, !tbaa !46 ; 3 uses
  %i.alj = icmp slt <4 x i32> %wide.load, zeroinitializer
  %i.alk = icmp slt <4 x i32> %wide.load174, zeroinitializer
  %i.all = and <4 x i32> %wide.load, splat (i32 2147483647)
  %i.alm = and <4 x i32> %wide.load174, splat (i32 2147483647)
  %i.aln = lshr <4 x i32> %i.all, %broadcast.splat
  %i.alo = lshr <4 x i32> %i.alm, %broadcast.splat
  %i.alp = sub nsw <4 x i32> zeroinitializer, %i.aln
  %i.alq = sub nsw <4 x i32> zeroinitializer, %i.alo
  %i.alr = lshr <4 x i32> %wide.load, %broadcast.splat
  %i.als = lshr <4 x i32> %wide.load174, %broadcast.splat
  %i.alt = select <4 x i1> %i.alj, <4 x i32> %i.alp, <4 x i32> %i.alr
  %i.alu = select <4 x i1> %i.alk, <4 x i32> %i.alq, <4 x i32> %i.als
  %i.alv = getelementptr inbounds nuw [4 x i8], ptr %i.ake, i64 %index ; 2 uses
  %i.alw = getelementptr inbounds nuw i8, ptr %i.alv, i64 16
  store <4 x i32> %i.alt, ptr %i.alv, align 4, !tbaa !46
  store <4 x i32> %i.alu, ptr %i.alw, align 4, !tbaa !46
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.alx = icmp eq i64 %index.next, %n.vec
  br i1 %i.alx, label %middle.block, label %vector.body, !llvm.loop !208

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit52_crit_edge.us.us.i.i, label %.preheader.us.us.i.i.preheader245

.preheader.us.us.i.i.preheader245:                ; preds = %vector.memcheck, %.preheader.us.us.i.i.preheader, %middle.block
  %indvars.iv81.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader.us.us.i.i.preheader ], [ %n.vec, %middle.block ] ; 5 uses
  br i1 %lcmp.mod.not, label %.preheader.us.us.i.i.prol.loopexit, label %.preheader.us.us.i.i.prol

.preheader.us.us.i.i.prol:                        ; preds = %.preheader.us.us.i.i.preheader245
  %i.aly = getelementptr inbounds nuw [4 x i8], ptr %i.aki, i64 %indvars.iv81.i.i.ph
  %i.alz = load i32, ptr %i.aly, align 4, !tbaa !46 ; 3 uses
  %i.ama = icmp slt i32 %i.alz, 0
  %i.amb = and i32 %i.alz, 2147483647
  %i.amc = lshr i32 %i.amb, %i.ci
  %i.amd = sub nsw i32 0, %i.amc
  %i.ame = lshr i32 %i.alz, %i.ci
  %.044.us.us.i.i.prol = select i1 %i.ama, i32 %i.amd, i32 %i.ame
  %i.amf = getelementptr inbounds nuw [4 x i8], ptr %i.ake, i64 %indvars.iv81.i.i.ph
  store i32 %.044.us.us.i.i.prol, ptr %i.amf, align 4, !tbaa !46
  %indvars.iv.next82.i.i.prol = or disjoint i64 %indvars.iv81.i.i.ph, 1
  br label %.preheader.us.us.i.i.prol.loopexit

.preheader.us.us.i.i.prol.loopexit:               ; preds = %.preheader.us.us.i.i.prol, %.preheader.us.us.i.i.preheader245
  %indvars.iv81.i.i.unr = phi i64 [ %indvars.iv81.i.i.ph, %.preheader.us.us.i.i.preheader245 ], [ %indvars.iv.next82.i.i.prol, %.preheader.us.us.i.i.prol ]
  %i.amg = icmp eq i64 %indvars.iv81.i.i.ph, %i.ajw
  br i1 %i.amg, label %..loopexit52_crit_edge.us.us.i.i, label %.preheader.us.us.i.i

.preheader51.us.us.i.i:                           ; preds = %.preheader51.us.us.i.i.preheader246, %.preheader51.us.us.i.i
  %indvars.iv76.i.i = phi i64 [ %indvars.iv.next77.i.i, %.preheader51.us.us.i.i ], [ %indvars.iv76.i.i.ph, %.preheader51.us.us.i.i.preheader246 ] ; 3 uses
  %i.amh = getelementptr inbounds nuw [4 x i8], ptr %i.aki, i64 %indvars.iv76.i.i
  %i.ami = load i32, ptr %i.amh, align 4, !tbaa !46 ; 3 uses
  %i.amj = icmp slt i32 %i.ami, 0
  %i.amk = and i32 %i.ami, 2147483647
  %i.aml = lshr i32 %i.amk, %i.ci
  %i.amm = sub nsw i32 0, %i.aml
  %i.amn = lshr i32 %i.ami, %i.ci
  %.0.us.us.i.i = select i1 %i.amj, i32 %i.amm, i32 %i.amn
  %i.amo = sext i32 %.0.us.us.i.i to i64
  %i.amp = load i32, ptr %i.ch, align 4, !tbaa !235
  %i.amq = sext i32 %i.amp to i64
  %i.amr = mul nsw i64 %i.amo, %i.amq
  %i.ams = sdiv i64 %i.amr, 65536
end_hunk_0
