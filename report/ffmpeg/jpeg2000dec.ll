Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/jpeg2000dec?download=true
inline.NumInlined: 106
inline.NumDeleted: 40
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 21
begin_hunk_0_@jpeg2000_decode_tile:bb.a
bb.bh:                                            ; preds = %._crit_edge.i.i
  %i.ady = load ptr, ptr %i.s, align 8, !tbaa !37
  %i.adz = ptrtoint ptr %i.adv to i64
  %i.aea = ptrtoint ptr %i.adw to i64
  %i.aeb = sub i64 %i.adz, %i.aea
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ady, i32 noundef 24, ptr noundef nonnull @.str.105, i64 noundef %i.aeb) #10
  %.pre254.i.i = load ptr, ptr %i.ei, align 8, !tbaa !118
  %.pre255.i.i = load i16, ptr %i.eb, align 4, !tbaa !117
  %.pre256.i.i = load ptr, ptr %i.o, align 8, !tbaa !231
  %.pre257.i.i = zext i16 %.pre255.i.i to i64
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %._crit_edge.i.i
  %.pre-phi.i.i = phi i64 [ %.pre257.i.i, %bb.bh ], [ %i.adt, %._crit_edge.i.i ]
  %i.aec = phi ptr [ %.pre256.i.i, %bb.bh ], [ %i.adw, %._crit_edge.i.i ]
  %i.aed = phi ptr [ %.pre254.i.i, %bb.bh ], [ %i.adr, %._crit_edge.i.i ]
  %i.aee = getelementptr inbounds nuw i8, ptr %i.aed, i64 %.pre-phi.i.i
  %i.aef = icmp ult ptr %i.aee, %i.aec
  br i1 %i.aef, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.aeg = load ptr, ptr %i.s, align 8, !tbaa !37
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.aeg, i32 noundef 24, ptr noundef nonnull @.str.106) #10
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %i.aeh = icmp sgt i32 %i.dh, 0
  br i1 %i.aeh, label %.preheader.lr.ph.i.i, label %decode_cblk.exit.thread.i

.preheader.lr.ph.i.i:                             ; preds = %bb.bk
  %i.aei = icmp slt i32 %i.dc, 1
  %.not140.i.i = icmp eq i8 %i.di, 0
  %or.cond306.i.i = or i1 %i.aei, %.not140.i.i
  br i1 %or.cond306.i.i, label %decode_cblk.exit.thread.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.lr.ph.i.i, %._crit_edge199.split.i.i
  %.0121200.i.i = phi i32 [ %i.aej, %._crit_edge199.split.i.i ], [ 0, %.preheader.lr.ph.i.i ] ; 2 uses
  br label %bb.bl

._crit_edge199.split.i.i:                         ; preds = %bb.bl
  %i.aej = add nuw nsw i32 %.0121200.i.i, 1       ; 2 uses
  %exitcond234.not.i.i = icmp eq i32 %i.aej, %i.dh
  br i1 %exitcond234.not.i.i, label %decode_cblk.exit.thread.i, label %.preheader.i.i, !llvm.loop !191

bb.bl:                                            ; preds = %bb.bl, %.preheader.i.i
  %.0120197.i.i = phi i32 [ 0, %.preheader.i.i ], [ %i.aew, %bb.bl ] ; 2 uses
  %i.aek = load i32, ptr %i.m, align 8, !tbaa !228
  %i.ael = mul nsw i32 %i.aek, %.0121200.i.i
  %i.aem = add nsw i32 %i.ael, %.0120197.i.i
  %i.aen = sext i32 %i.aem to i64
  %i.aeo = getelementptr inbounds [4 x i8], ptr %4, i64 %i.aen ; 2 uses
  %i.aep = load i32, ptr %i.aeo, align 4, !tbaa !46 ; 2 uses
  %i.aeq = and i32 %i.aep, -2147483648
  %i.aer = and i32 %i.aep, 2147483647             ; 2 uses
  %i.aes = and i32 %i.aer, %i.cb
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
  %min.iters.check203 = icmp ult i32 %i.afg, 8
  %n.vec205 = and i64 %wide.trip.count.i.i, 2147483640 ; 3 uses
  %broadcast.splatinsert206 = insertelement <4 x float> poison, float %i.afh, i64 0
  %broadcast.splat207 = shufflevector <4 x float> %broadcast.splatinsert206, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n214 = icmp eq i64 %n.vec205, %wide.trip.count.i.i
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
  br i1 %min.iters.check203, label %scalar.ph202.preheader, label %vector.body208

vector.body208:                                   ; preds = %.lr.ph.i124.i, %vector.body208
  %index209 = phi i64 [ %index.next212, %vector.body208 ], [ 0, %.lr.ph.i124.i ] ; 3 uses
  %i.aga = getelementptr inbounds nuw [4 x i8], ptr %i.afz, i64 %index209 ; 2 uses
  %i.agb = getelementptr inbounds nuw i8, ptr %i.aga, i64 16
  %wide.load210 = load <4 x i32>, ptr %i.aga, align 4, !tbaa !46 ; 3 uses
  %wide.load211 = load <4 x i32>, ptr %i.agb, align 4, !tbaa !46 ; 3 uses
  %i.agc = icmp slt <4 x i32> %wide.load210, zeroinitializer
  %i.agd = icmp slt <4 x i32> %wide.load211, zeroinitializer
  %i.age = and <4 x i32> %wide.load210, splat (i32 2147483647)
  %i.agf = and <4 x i32> %wide.load211, splat (i32 2147483647)
  %i.agg = sub nsw <4 x i32> zeroinitializer, %i.age
  %i.agh = sub nsw <4 x i32> zeroinitializer, %i.agf
  %i.agi = select <4 x i1> %i.agc, <4 x i32> %i.agg, <4 x i32> %wide.load210
  %i.agj = select <4 x i1> %i.agd, <4 x i32> %i.agh, <4 x i32> %wide.load211
  %i.agk = sitofp nsz <4 x i32> %i.agi to <4 x float>
  %i.agl = sitofp nsz <4 x i32> %i.agj to <4 x float>
  %i.agm = fmul nsz <4 x float> %broadcast.splat207, %i.agk
  %i.agn = fmul nsz <4 x float> %broadcast.splat207, %i.agl
  %i.ago = getelementptr inbounds nuw [4 x i8], ptr %i.afx, i64 %index209 ; 2 uses
  %i.agp = getelementptr inbounds nuw i8, ptr %i.ago, i64 16
  store <4 x float> %i.agm, ptr %i.ago, align 4, !tbaa !234
  store <4 x float> %i.agn, ptr %i.agp, align 4, !tbaa !234
  %index.next212 = add nuw i64 %index209, 8       ; 2 uses
  %i.agq = icmp eq i64 %index.next212, %n.vec205
  br i1 %i.agq, label %middle.block213, label %vector.body208, !llvm.loop !193

middle.block213:                                  ; preds = %vector.body208
  br i1 %cmp.n214, label %._crit_edge.i126.i, label %scalar.ph202.preheader

scalar.ph202.preheader:                           ; preds = %.lr.ph.i124.i, %middle.block213
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.i124.i ], [ %n.vec205, %middle.block213 ]
  br label %scalar.ph202

scalar.ph202:                                     ; preds = %scalar.ph202.preheader, %scalar.ph202
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %scalar.ph202 ], [ %indvars.iv.i.i.ph, %scalar.ph202.preheader ] ; 3 uses
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
  br i1 %exitcond.not.i125.i, label %._crit_edge.i126.i, label %scalar.ph202, !llvm.loop !194

._crit_edge.i126.i:                               ; preds = %scalar.ph202, %middle.block213
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
  %5 = shl nuw nsw i64 %wide.trip.count.i128.i, 2 ; 2 uses
  %scevgep232 = getelementptr i8, ptr %4, i64 %5
  %scevgep233 = getelementptr i8, ptr %i.ahl, i64 %5
  %min.iters.check231 = icmp ult i32 %i.aha, 4
  %n.vec241 = and i64 %wide.trip.count.i128.i, 2147483644 ; 3 uses
  %cmp.n249 = icmp eq i64 %n.vec241, %wide.trip.count.i128.i
  br label %.lr.ph.i129.i

.lr.ph.i129.i:                                    ; preds = %._crit_edge.i134.i, %.lr.ph.preheader.i127.i
  %.03945.i.i = phi i32 [ %i.ajk, %._crit_edge.i134.i ], [ 0, %.lr.ph.preheader.i127.i ] ; 3 uses
  %i.ahn = load i32, ptr %i.al, align 4, !tbaa !46
  %i.aho = load i32, ptr %i.ak, align 8, !tbaa !46
  %i.ahp = sub nsw i32 %i.ahn, %i.aho
  %i.ahq = add nsw i32 %.03945.i.i, %i.afd
  %i.ahr = mul nsw i32 %i.ahp, %i.ahq
  %i.ahs = add nsw i32 %i.ahr, %i.afa
  %i.aht = sext i32 %i.ahs to i64                 ; 2 uses
  %i.ahu = getelementptr inbounds [4 x i8], ptr %i.ahl, i64 %i.aht ; 4 uses
  %i.ahv = load i32, ptr %i.m, align 8, !tbaa !228
  %i.ahw = mul nsw i32 %i.ahv, %.03945.i.i
  %i.ahx = sext i32 %i.ahw to i64                 ; 2 uses
  %i.ahy = getelementptr inbounds [4 x i8], ptr %4, i64 %i.ahx ; 3 uses
  br i1 %min.iters.check231, label %scalar.ph230.preheader, label %vector.memcheck232

vector.memcheck232:                               ; preds = %.lr.ph.i129.i
  %i.ahz = shl nsw i64 %i.aht, 2
  %i.aia = getelementptr i8, ptr %scevgep233, i64 %i.ahz ; 2 uses
  %i.aib = shl nsw i64 %i.ahx, 2
  %i.aic = getelementptr i8, ptr %scevgep232, i64 %i.aib
  %bound0233 = icmp ult ptr %i.ahu, %i.aic
  %bound1234 = icmp ult ptr %i.ahy, %i.aia
  %found.conflict235 = and i1 %bound0233, %bound1234
  %bound0236 = icmp ult ptr %i.ahu, %scevgep229
  %bound1237 = icmp ult ptr %i.ch, %i.aia
  %found.conflict238 = and i1 %bound0236, %bound1237
  %conflict.rdx239 = or i1 %found.conflict235, %found.conflict238
  br i1 %conflict.rdx239, label %scalar.ph230.preheader, label %vector.ph240

vector.ph240:                                     ; preds = %vector.memcheck232
  %i.aid = load i32, ptr %i.ch, align 4, !tbaa !235, !alias.scope !237
  %broadcast.splatinsert242 = insertelement <4 x i32> poison, i32 %i.aid, i64 0
  %broadcast.splat243 = shufflevector <4 x i32> %broadcast.splatinsert242, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.aie = sext <4 x i32> %broadcast.splat243 to <4 x i64>
  br label %vector.body244

vector.body244:                                   ; preds = %vector.body244, %vector.ph240
  %index245 = phi i64 [ 0, %vector.ph240 ], [ %index.next247, %vector.body244 ] ; 3 uses
  %i.aif = getelementptr inbounds nuw [4 x i8], ptr %i.ahy, i64 %index245
  %wide.load246 = load <4 x i32>, ptr %i.aif, align 4, !tbaa !46, !alias.scope !238 ; 3 uses
  %i.aig = icmp slt <4 x i32> %wide.load246, zeroinitializer
  %i.aih = and <4 x i32> %wide.load246, splat (i32 2147483647)
  %i.aii = sub nsw <4 x i32> zeroinitializer, %i.aih
  %i.aij = select <4 x i1> %i.aig, <4 x i32> %i.aii, <4 x i32> %wide.load246
  %i.aik = sext <4 x i32> %i.aij to <4 x i64>
  %i.ail = add nsw <4 x i64> %i.aik, splat (i64 32)
  %i.aim = ashr <4 x i64> %i.ail, splat (i64 6)
  %i.ain = mul nsw <4 x i64> %i.aim, %i.aie       ; 2 uses
  %i.aio = icmp sgt <4 x i64> %i.ain, zeroinitializer
  %i.aip = select <4 x i1> %i.aio, <4 x i64> splat (i64 32768), <4 x i64> splat (i64 32767)
  %i.aiq = add nsw <4 x i64> %i.aip, %i.ain
  %i.air = lshr <4 x i64> %i.aiq, splat (i64 16)
  %i.ais = trunc <4 x i64> %i.air to <4 x i32>
  %i.ait = getelementptr inbounds nuw [4 x i8], ptr %i.ahu, i64 %index245
  store <4 x i32> %i.ais, ptr %i.ait, align 4, !tbaa !46, !alias.scope !239, !noalias !240
  %index.next247 = add nuw i64 %index245, 4       ; 2 uses
  %i.aiu = icmp eq i64 %index.next247, %n.vec241
  br i1 %i.aiu, label %middle.block248, label %vector.body244, !llvm.loop !200

middle.block248:                                  ; preds = %vector.body244
  br i1 %cmp.n249, label %._crit_edge.i134.i, label %scalar.ph230.preheader

scalar.ph230.preheader:                           ; preds = %vector.memcheck232, %.lr.ph.i129.i, %middle.block248
  %indvars.iv.i130.i.ph = phi i64 [ 0, %vector.memcheck232 ], [ 0, %.lr.ph.i129.i ], [ %n.vec241, %middle.block248 ]
  br label %scalar.ph230

scalar.ph230:                                     ; preds = %scalar.ph230.preheader, %scalar.ph230
  %indvars.iv.i130.i = phi i64 [ %indvars.iv.next.i132.i, %scalar.ph230 ], [ %indvars.iv.i130.i.ph, %scalar.ph230.preheader ] ; 3 uses
  %i.aiv = getelementptr inbounds nuw [4 x i8], ptr %i.ahy, i64 %indvars.iv.i130.i
  %i.aiw = load i32, ptr %i.aiv, align 4, !tbaa !46 ; 3 uses
  %i.aix = icmp slt i32 %i.aiw, 0
  %i.aiy = and i32 %i.aiw, 2147483647
  %i.aiz = sub nsw i32 0, %i.aiy
  %.0.i131.i = select i1 %i.aix, i32 %i.aiz, i32 %i.aiw
  %i.aja = sext i32 %.0.i131.i to i64
  %i.ajb = add nsw i64 %i.aja, 32
  %i.ajc = ashr i64 %i.ajb, 6
  %i.ajd = load i32, ptr %i.ch, align 4, !tbaa !235
  %i.aje = sext i32 %i.ajd to i64
  %i.ajf = mul nsw i64 %i.ajc, %i.aje             ; 2 uses
  %i.ajg = icmp sgt i64 %i.ajf, 0
  %.v.v.i.i = select i1 %i.ajg, i64 32768, i64 32767
  %.v.i.i = add nsw i64 %.v.v.i.i, %i.ajf
  %i.ajh = lshr i64 %.v.i.i, 16
  %i.aji = trunc i64 %i.ajh to i32
  %i.ajj = getelementptr inbounds nuw [4 x i8], ptr %i.ahu, i64 %indvars.iv.i130.i
  store i32 %i.aji, ptr %i.ajj, align 4, !tbaa !46
  %indvars.iv.next.i132.i = add nuw nsw i64 %indvars.iv.i130.i, 1 ; 2 uses
  %exitcond.not.i133.i = icmp eq i64 %indvars.iv.next.i132.i, %wide.trip.count.i128.i
  br i1 %exitcond.not.i133.i, label %._crit_edge.i134.i, label %scalar.ph230, !llvm.loop !201

._crit_edge.i134.i:                               ; preds = %scalar.ph230, %middle.block248
  %i.ajk = add nuw nsw i32 %.03945.i.i, 1         ; 2 uses
  %i.ajl = load i32, ptr %i.de, align 4, !tbaa !46
  %i.ajm = load i32, ptr %i.dd, align 8, !tbaa !46
  %i.ajn = sub nsw i32 %i.ajl, %i.ajm
  %i.ajo = icmp slt i32 %i.ajk, %i.ajn
  br i1 %i.ajo, label %.lr.ph.i129.i, label %dequantization_float.exit.i, !llvm.loop !202

bb.bo:                                            ; preds = %decode_cblk.exit.thread.i
  %i.ajp = load i32, ptr %i.cz, align 4, !tbaa !46
  %i.ajq = sub nsw i32 %i.ajp, %i.aey
  %.fr64.i.i = freeze i32 %i.ajq                  ; 4 uses
  %i.ajr = load i32, ptr %i.de, align 4, !tbaa !46
  %i.ajs = icmp sgt i32 %i.ajr, %i.afb
  br i1 %i.ajs, label %.lr.ph57.i.i, label %dequantization_float.exit.i

.lr.ph57.i.i:                                     ; preds = %bb.bo
  %i.ajt = load ptr, ptr %i.aj, align 8, !tbaa !236 ; 3 uses
  %i.aju = icmp sgt i32 %.fr64.i.i, 0
  br i1 %i.aju, label %.lr.ph57.split.us.split.us.preheader.i.i, label %dequantization_float.exit.i

.lr.ph57.split.us.split.us.preheader.i.i:         ; preds = %.lr.ph57.i.i
  %i.ajv = ptrtoaddr ptr %i.ajt to i64
  %wide.trip.count79.i.i = zext nneg i32 %.fr64.i.i to i64 ; 9 uses
  %6 = shl nuw nsw i64 %wide.trip.count79.i.i, 2  ; 2 uses
  %scevgep183 = getelementptr i8, ptr %4, i64 %6
  %scevgep184 = getelementptr i8, ptr %i.ajt, i64 %6
  %min.iters.check184 = icmp ult i32 %.fr64.i.i, 4
  %n.vec190 = and i64 %wide.trip.count79.i.i, 2147483644 ; 3 uses
  %cmp.n200 = icmp eq i64 %n.vec190, %wide.trip.count79.i.i
  %min.iters.check = icmp ult i32 %.fr64.i.i, 8
  %invariant.op.reass = add i64 %i.ajv, %invariant.op278
  %n.vec = and i64 %wide.trip.count79.i.i, 2147483640 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count79.i.i
  %xtraiter = and i64 %wide.trip.count79.i.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.ajw = add nsw i64 %wide.trip.count79.i.i, -1
  br label %.lr.ph57.split.us.split.us.i.i

.lr.ph57.split.us.split.us.i.i:                   ; preds = %..loopexit52_crit_edge.us.us.i.i, %.lr.ph57.split.us.split.us.preheader.i.i
  %.04556.us.us.i.i = phi i32 [ %i.ank, %..loopexit52_crit_edge.us.us.i.i ], [ 0, %.lr.ph57.split.us.split.us.preheader.i.i ] ; 3 uses
  %i.ajx = load i32, ptr %i.al, align 4, !tbaa !46
  %i.ajy = load i32, ptr %i.ak, align 8, !tbaa !46
  %i.ajz = sub i32 %i.ajx, %i.ajy
  %i.aka = add i32 %.04556.us.us.i.i, %i.afd
  %i.akb = mul i32 %i.ajz, %i.aka
  %i.akc = add i32 %i.akb, %i.afa
  %i.akd = sext i32 %i.akc to i64                 ; 3 uses
  %i.ake = getelementptr [4 x i8], ptr %i.ajt, i64 %i.akd ; 8 uses
  %i.akf = load i32, ptr %i.m, align 8, !tbaa !228
  %i.akg = mul i32 %i.akf, %.04556.us.us.i.i
  %i.akh = sext i32 %i.akg to i64                 ; 3 uses
  %i.aki = getelementptr [4 x i8], ptr %4, i64 %i.akh ; 7 uses
  %i.akj = load i32, ptr %i.ch, align 4, !tbaa !235
  %i.akk = icmp eq i32 %i.akj, 32768
  br i1 %i.akk, label %.preheader.us.us.i.i.preheader, label %.preheader51.us.us.i.i.preheader

.preheader51.us.us.i.i.preheader:                 ; preds = %.lr.ph57.split.us.split.us.i.i
  br i1 %min.iters.check184, label %.preheader51.us.us.i.i.preheader259, label %vector.memcheck185

vector.memcheck185:                               ; preds = %.preheader51.us.us.i.i.preheader
  %i.akl = shl nsw i64 %i.akd, 2
  %i.akm = getelementptr i8, ptr %scevgep184, i64 %i.akl ; 2 uses
  %i.akn = shl nsw i64 %i.akh, 2
  %i.ako = getelementptr i8, ptr %scevgep183, i64 %i.akn
  %bound0 = icmp ult ptr %i.ake, %i.ako
  %bound1 = icmp ult ptr %i.aki, %i.akm
  %found.conflict = and i1 %bound0, %bound1
  %bound0186 = icmp ult ptr %i.ake, %scevgep
  %bound1187 = icmp ult ptr %i.ch, %i.akm
  %found.conflict188 = and i1 %bound0186, %bound1187
  %conflict.rdx = or i1 %found.conflict, %found.conflict188
  br i1 %conflict.rdx, label %.preheader51.us.us.i.i.preheader259, label %vector.ph189

vector.ph189:                                     ; preds = %vector.memcheck185
  %i.akp = load i32, ptr %i.ch, align 4, !tbaa !235, !alias.scope !241
  %broadcast.splatinsert191 = insertelement <4 x i32> poison, i32 %i.akp, i64 0
  %broadcast.splat192 = shufflevector <4 x i32> %broadcast.splatinsert191, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.akq = sext <4 x i32> %broadcast.splat192 to <4 x i64>
  br label %vector.body195

vector.body195:                                   ; preds = %vector.body195, %vector.ph189
  %index196 = phi i64 [ 0, %vector.ph189 ], [ %index.next198, %vector.body195 ] ; 3 uses
  %i.akr = getelementptr inbounds nuw [4 x i8], ptr %i.aki, i64 %index196
  %wide.load197 = load <4 x i32>, ptr %i.akr, align 4, !tbaa !46, !alias.scope !242 ; 3 uses
  %i.aks = icmp slt <4 x i32> %wide.load197, zeroinitializer
  %i.akt = and <4 x i32> %wide.load197, splat (i32 2147483647)
  %i.aku = lshr <4 x i32> %i.akt, %broadcast.splat194.a
  %i.akv = sub nsw <4 x i32> zeroinitializer, %i.aku
  %i.akw = lshr <4 x i32> %wide.load197, %broadcast.splat194.a
  %i.akx = select <4 x i1> %i.aks, <4 x i32> %i.akv, <4 x i32> %i.akw
  %i.aky = sext <4 x i32> %i.akx to <4 x i64>
  %i.akz = mul nsw <4 x i64> %i.aky, %i.akq
  %i.ala = sdiv <4 x i64> %i.akz, splat (i64 65536)
  %i.alb = trunc <4 x i64> %i.ala to <4 x i32>
  %i.alc = getelementptr inbounds nuw [4 x i8], ptr %i.ake, i64 %index196
  store <4 x i32> %i.alb, ptr %i.alc, align 4, !tbaa !46, !alias.scope !243, !noalias !244
  %index.next198 = add nuw i64 %index196, 4       ; 2 uses
  %i.ald = icmp eq i64 %index.next198, %n.vec190
  br i1 %i.ald, label %middle.block199, label %vector.body195, !llvm.loop !207

middle.block199:                                  ; preds = %vector.body195
  br i1 %cmp.n200, label %..loopexit52_crit_edge.us.us.i.i, label %.preheader51.us.us.i.i.preheader259

.preheader51.us.us.i.i.preheader259:              ; preds = %vector.memcheck185, %.preheader51.us.us.i.i.preheader, %middle.block199
  %indvars.iv76.i.i.ph = phi i64 [ 0, %vector.memcheck185 ], [ 0, %.preheader51.us.us.i.i.preheader ], [ %n.vec190, %middle.block199 ]
  br label %.preheader51.us.us.i.i

.preheader.us.us.i.i.preheader:                   ; preds = %.lr.ph57.split.us.split.us.i.i
  br i1 %min.iters.check, label %.preheader.us.us.i.i.preheader258, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader.us.us.i.i.preheader
  %i.ale = sub nsw i64 %i.akd, %i.akh
  %i.alf = shl nsw i64 %i.ale, 2
  %.reass = add i64 %i.alf, %invariant.op.reass
  %diff.check = icmp ult i64 %.reass, 31
  br i1 %diff.check, label %.preheader.us.us.i.i.preheader258, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.alg = getelementptr inbounds nuw [4 x i8], ptr %i.aki, i64 %index ; 2 uses
  %i.alh = getelementptr inbounds nuw i8, ptr %i.alg, i64 16
  %wide.load = load <4 x i32>, ptr %i.alg, align 4, !tbaa !46 ; 3 uses
  %wide.load174 = load <4 x i32>, ptr %i.alh, align 4, !tbaa !46 ; 3 uses
  %i.ali = icmp slt <4 x i32> %wide.load, zeroinitializer
  %i.alj = icmp slt <4 x i32> %wide.load174, zeroinitializer
  %i.alk = and <4 x i32> %wide.load, splat (i32 2147483647)
  %i.all = and <4 x i32> %wide.load174, splat (i32 2147483647)
  %i.alm = lshr <4 x i32> %i.alk, %broadcast.splat
  %i.aln = lshr <4 x i32> %i.all, %broadcast.splat
  %i.alo = sub nsw <4 x i32> zeroinitializer, %i.alm
  %i.alp = sub nsw <4 x i32> zeroinitializer, %i.aln
  %i.alq = lshr <4 x i32> %wide.load, %broadcast.splat
  %i.alr = lshr <4 x i32> %wide.load174, %broadcast.splat
  %i.als = select <4 x i1> %i.ali, <4 x i32> %i.alo, <4 x i32> %i.alq
  %i.alt = select <4 x i1> %i.alj, <4 x i32> %i.alp, <4 x i32> %i.alr
  %i.alu = getelementptr inbounds nuw [4 x i8], ptr %i.ake, i64 %index ; 2 uses
  %i.alv = getelementptr inbounds nuw i8, ptr %i.alu, i64 16
  store <4 x i32> %i.als, ptr %i.alu, align 4, !tbaa !46
  store <4 x i32> %i.alt, ptr %i.alv, align 4, !tbaa !46
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.alw = icmp eq i64 %index.next, %n.vec
  br i1 %i.alw, label %middle.block, label %vector.body, !llvm.loop !208

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit52_crit_edge.us.us.i.i, label %.preheader.us.us.i.i.preheader258

.preheader.us.us.i.i.preheader258:                ; preds = %vector.memcheck, %.preheader.us.us.i.i.preheader, %middle.block
  %indvars.iv81.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader.us.us.i.i.preheader ], [ %n.vec, %middle.block ] ; 5 uses
  br i1 %lcmp.mod.not, label %.preheader.us.us.i.i.prol.loopexit, label %.preheader.us.us.i.i.prol

.preheader.us.us.i.i.prol:                        ; preds = %.preheader.us.us.i.i.preheader258
  %i.alx = getelementptr inbounds nuw [4 x i8], ptr %i.aki, i64 %indvars.iv81.i.i.ph
  %i.aly = load i32, ptr %i.alx, align 4, !tbaa !46 ; 3 uses
  %i.alz = icmp slt i32 %i.aly, 0
  %i.ama = and i32 %i.aly, 2147483647
  %i.amb = lshr i32 %i.ama, %i.ci
  %i.amc = sub nsw i32 0, %i.amb
  %i.amd = lshr i32 %i.aly, %i.ci
  %.044.us.us.i.i.prol = select i1 %i.alz, i32 %i.amc, i32 %i.amd
  %i.ame = getelementptr inbounds nuw [4 x i8], ptr %i.ake, i64 %indvars.iv81.i.i.ph
  store i32 %.044.us.us.i.i.prol, ptr %i.ame, align 4, !tbaa !46
  %indvars.iv.next82.i.i.prol = or disjoint i64 %indvars.iv81.i.i.ph, 1
  br label %.preheader.us.us.i.i.prol.loopexit

.preheader.us.us.i.i.prol.loopexit:               ; preds = %.preheader.us.us.i.i.prol, %.preheader.us.us.i.i.preheader258
  %indvars.iv81.i.i.unr = phi i64 [ %indvars.iv81.i.i.ph, %.preheader.us.us.i.i.preheader258 ], [ %indvars.iv.next82.i.i.prol, %.preheader.us.us.i.i.prol ]
  %i.amf = icmp eq i64 %indvars.iv81.i.i.ph, %i.ajw
  br i1 %i.amf, label %..loopexit52_crit_edge.us.us.i.i, label %.preheader.us.us.i.i

.preheader51.us.us.i.i:                           ; preds = %.preheader51.us.us.i.i.preheader259, %.preheader51.us.us.i.i
  %indvars.iv76.i.i = phi i64 [ %indvars.iv.next77.i.i, %.preheader51.us.us.i.i ], [ %indvars.iv76.i.i.ph, %.preheader51.us.us.i.i.preheader259 ] ; 3 uses
  %i.amg = getelementptr inbounds nuw [4 x i8], ptr %i.aki, i64 %indvars.iv76.i.i
  %i.amh = load i32, ptr %i.amg, align 4, !tbaa !46 ; 3 uses
  %i.ami = icmp slt i32 %i.amh, 0
  %i.amj = and i32 %i.amh, 2147483647
  %i.amk = lshr i32 %i.amj, %i.ci
  %i.aml = sub nsw i32 0, %i.amk
  %i.amm = lshr i32 %i.amh, %i.ci
  %.0.us.us.i.i = select i1 %i.ami, i32 %i.aml, i32 %i.amm
  %i.amn = sext i32 %.0.us.us.i.i to i64
  %i.amo = load i32, ptr %i.ch, align 4, !tbaa !235
  %i.amp = sext i32 %i.amo to i64
  %i.amq = mul nsw i64 %i.amn, %i.amp
  %i.amr = sdiv i64 %i.amq, 65536
  %i.ams = trunc i64 %i.amr to i32
  %i.amt = getelementptr inbounds nuw [4 x i8], ptr %i.ake, i64 %indvars.iv76.i.i
  store i32 %i.ams, ptr %i.amt, align 4, !tbaa !46
  %indvars.iv.next77.i.i = add nuw nsw i64 %indvars.iv76.i.i, 1 ; 2 uses
  %exitcond80.not.i.i = icmp eq i64 %indvars.iv.next77.i.i, %wide.trip.count79.i.i
  br i1 %exitcond80.not.i.i, label %..loopexit52_crit_edge.us.us.i.i, label %.preheader51.us.us.i.i, !llvm.loop !209

.preheader.us.us.i.i:                             ; preds = %.preheader.us.us.i.i.prol.loopexit, %.preheader.us.us.i.i
  %indvars.iv81.i.i = phi i64 [ %indvars.iv.next82.i.i.1, %.preheader.us.us.i.i ], [ %indvars.iv81.i.i.unr, %.preheader.us.us.i.i.prol.loopexit ] ; 4 uses
  %i.amu = getelementptr inbounds nuw [4 x i8], ptr %i.aki, i64 %indvars.iv81.i.i
  %i.amv = load i32, ptr %i.amu, align 4, !tbaa !46 ; 3 uses
  %i.amw = icmp slt i32 %i.amv, 0
  %i.amx = and i32 %i.amv, 2147483647
  %i.amy = lshr i32 %i.amx, %i.ci
  %i.amz = sub nsw i32 0, %i.amy
  %i.ana = lshr i32 %i.amv, %i.ci
  %.044.us.us.i.i = select i1 %i.amw, i32 %i.amz, i32 %i.ana
  %i.anb = getelementptr inbounds nuw [4 x i8], ptr %i.ake, i64 %indvars.iv81.i.i
  store i32 %.044.us.us.i.i, ptr %i.anb, align 4, !tbaa !46
  %indvars.iv.next82.i.i = add nuw nsw i64 %indvars.iv81.i.i, 1 ; 2 uses
  %i.anc = getelementptr inbounds nuw [4 x i8], ptr %i.aki, i64 %indvars.iv.next82.i.i
  %i.and = load i32, ptr %i.anc, align 4, !tbaa !46 ; 3 uses
  %i.ane = icmp slt i32 %i.and, 0
  %i.anf = and i32 %i.and, 2147483647
  %i.ang = lshr i32 %i.anf, %i.ci
  %i.anh = sub nsw i32 0, %i.ang
  %i.ani = lshr i32 %i.and, %i.ci
  %.044.us.us.i.i.1 = select i1 %i.ane, i32 %i.anh, i32 %i.ani
  %i.anj = getelementptr inbounds nuw [4 x i8], ptr %i.ake, i64 %indvars.iv.next82.i.i
  store i32 %.044.us.us.i.i.1, ptr %i.anj, align 4, !tbaa !46
  %indvars.iv.next82.i.i.1 = add nuw nsw i64 %indvars.iv81.i.i, 2 ; 2 uses
  %exitcond85.not.i.i.1 = icmp eq i64 %indvars.iv.next82.i.i.1, %wide.trip.count79.i.i
  br i1 %exitcond85.not.i.i.1, label %..loopexit52_crit_edge.us.us.i.i, label %.preheader.us.us.i.i, !llvm.loop !210

..loopexit52_crit_edge.us.us.i.i:                 ; preds = %.preheader51.us.us.i.i, %.preheader.us.us.i.i.prol.loopexit, %.preheader.us.us.i.i, %middle.block199, %middle.block
  %i.ank = add nuw nsw i32 %.04556.us.us.i.i, 1   ; 2 uses
  %i.anl = load i32, ptr %i.de, align 4, !tbaa !46
  %i.anm = load i32, ptr %i.dd, align 8, !tbaa !46
  %i.ann = sub nsw i32 %i.anl, %i.anm
  %i.ano = icmp slt i32 %i.ank, %i.ann
  br i1 %i.ano, label %.lr.ph57.split.us.split.us.i.i, label %dequantization_float.exit.i, !llvm.loop !211

dequantization_float.exit.i:                      ; preds = %._crit_edge.i134.i, %._crit_edge.i126.i, %..loopexit52_crit_edge.us.us.i.i, %.lr.ph57.i.i, %bb.bo, %.lr.ph47.i.i, %bb.bn, %.lr.ph4.i.i, %bb.bm, %decode_cblk.exit.i, %bb.n
  %.4.i = phi i32 [ %.3190.i, %decode_cblk.exit.i ], [ 1, %..loopexit52_crit_edge.us.us.i.i ], [ 1, %._crit_edge.i126.i ], [ 1, %.lr.ph57.i.i ], [ 1, %bb.bm ], [ 1, %.lr.ph4.i.i ], [ 1, %bb.bn ], [ 1, %.lr.ph47.i.i ], [ 1, %bb.bo ], [ %.3190.i, %bb.n ], [ 1, %._crit_edge.i134.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.anp = load i32, ptr %i.cm, align 8, !tbaa !108
  %i.anq = load i32, ptr %i.cn, align 4, !tbaa !109
  %i.anr = mul nsw i32 %i.anq, %i.anp
  %i.ans = sext i32 %i.anr to i64
  %i.ant = icmp slt i64 %indvars.iv.next.i, %i.ans
  br i1 %i.ant, label %bb.i, label %._crit_edge194.i, !llvm.loop !212

._crit_edge194.i:                                 ; preds = %dequantization_float.exit.i, %bb.h
  %.3.lcssa.i = phi i32 [ %.2107196.i, %bb.h ], [ %.4.i, %dequantization_float.exit.i ] ; 2 uses
  %indvars.iv.next236.i = add nuw nsw i64 %indvars.iv235.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next236.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit.loopexit.i, label %bb.h, !llvm.loop !213

.loopexit.loopexit.i:                             ; preds = %._crit_edge194.i
  %.pre252.i = load i8, ptr %i.ap, align 8, !tbaa !96
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.loopexit.i, %bb.g, %bb.e, %bb.d
  %i.anu = phi i8 [ %i.ax, %bb.d ], [ %i.ax, %bb.e ], [ %i.ax, %bb.g ], [ %.pre252.i, %.loopexit.loopexit.i ] ; 2 uses
  %.5.ph.i = phi i32 [ %.1106202.i, %bb.d ], [ %.1106202.i, %bb.e ], [ %.1106202.i, %bb.g ], [ %.3.lcssa.i, %.loopexit.loopexit.i ] ; 2 uses
  %indvars.iv.next241.i = add nuw nsw i64 %indvars.iv240.i, 1 ; 2 uses
  %indvars.iv.next239.i = add nsw i64 %indvars.iv238.i, 1 ; 2 uses
  %i.anv = zext i8 %i.anu to i64
  %i.anw = icmp samesign ult i64 %indvars.iv.next241.i, %i.anv
  br i1 %i.anw, label %bb.d, label %._crit_edge206.loopexit.i, !llvm.loop !214

._crit_edge206.loopexit.i:                        ; preds = %.loopexit.i
  %i.anx = trunc nsw i64 %indvars.iv.next239.i to i32
  %.pre253.i = load i32, ptr %i.ad, align 4, !tbaa !92
  br label %._crit_edge206.i

._crit_edge206.i:                                 ; preds = %._crit_edge206.loopexit.i, %bb.c
  %i.any = phi i32 [ %i.an, %bb.c ], [ %.pre253.i, %._crit_edge206.loopexit.i ] ; 2 uses
  %.1106.lcssa.i = phi i32 [ %.0105211.i, %bb.c ], [ %.5.ph.i, %._crit_edge206.loopexit.i ] ; 2 uses
  %.1104.lcssa.i = phi i32 [ %.0103212.i, %bb.c ], [ %i.anx, %._crit_edge206.loopexit.i ]
end_hunk_0
