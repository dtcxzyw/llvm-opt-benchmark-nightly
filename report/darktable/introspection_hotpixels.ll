Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_hotpixels?download=true
inline.NumInlined: 19
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 9
begin_hunk_0_@process:bb.a
  %i.yj = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx) ; 3 uses
  br i1 %cmp.n210, label %._crit_edge.split.us.us.us.i62, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block209
  br i1 %min.epilog.iters.check.not.not, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !92

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec172, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i32 [ %i.yj, %vec.epilog.iter.check ], [ %.085106.us.us.i, %vector.main.loop.iter.check ]
  %i.yk = getelementptr i8, ptr %i.vd, i64 %i.uy
  %i.yl = getelementptr i8, ptr %i.vb, i64 %i.uy
  %i.ym = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index221 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next239, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi222 = phi <8 x i32> [ %i.ym, %vec.epilog.ph ], [ %predphi238, %vec.epilog.vector.body ]
  %i.yn = shl i64 %index221, 2                    ; 2 uses
  %next.gep223 = getelementptr i8, ptr %i.vd, i64 %i.yn
  %next.gep224 = getelementptr i8, ptr %i.vb, i64 %i.yn ; 5 uses
  %wide.load225 = load <8 x float>, ptr %next.gep224, align 4, !tbaa !51, !alias.scope !81 ; 2 uses
  %i.yo = fmul reassoc nsz arcp contract afn <8 x float> %wide.load225, %broadcast.splat216 ; 4 uses
  %i.yp = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.load225, %broadcast.splat218 ; 12 uses
  %i.yq = getelementptr i8, ptr %next.gep224, i64 -8
  %wide.masked.load226 = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.yq, <8 x i1> %i.yp, <8 x float> poison), !tbaa !51, !alias.scope !81 ; 3 uses
  %i.yr = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.yo, %wide.masked.load226 ; 3 uses
  %i.ys = fcmp reassoc nsz arcp contract afn ule <8 x float> %wide.masked.load226, zeroinitializer
  %i.yt = xor <8 x i1> %i.yr, splat (i1 true)
  %predphi227 = zext <8 x i1> %i.yr to <8 x i32>
  %i.yu = or <8 x i1> %i.ys, %i.yt
  %i.yv = select <8 x i1> %i.yp, <8 x i1> %i.yu, <8 x i1> zeroinitializer
  %predphi228 = select nsz <8 x i1> %i.yv, <8 x float> zeroinitializer, <8 x float> %wide.masked.load226 ; 2 uses
  %i.yw = getelementptr [4 x i8], ptr %next.gep224, i64 %i.tq
  %wide.masked.load229 = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.yw, <8 x i1> %i.yp, <8 x float> poison), !tbaa !51, !alias.scope !84 ; 3 uses
  %i.yx = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.yo, %wide.masked.load229 ; 3 uses
  %i.yy = select <8 x i1> %i.yp, <8 x i1> %i.yx, <8 x i1> zeroinitializer
  %i.yz = select <8 x i1> %i.yr, <8 x i32> splat (i32 2), <8 x i32> splat (i32 1)
  %i.za = fcmp reassoc nsz arcp contract afn ule <8 x float> %wide.masked.load229, %predphi228
  %i.zb = select <8 x i1> %i.yy, <8 x i1> %i.za, <8 x i1> zeroinitializer
  %i.zc = xor <8 x i1> %i.yx, splat (i1 true)
  %i.zd = select <8 x i1> %i.yp, <8 x i1> %i.zc, <8 x i1> zeroinitializer
  %predphi230 = select <8 x i1> %i.yx, <8 x i32> %i.yz, <8 x i32> %predphi227
  %i.ze = or <8 x i1> %i.zb, %i.zd
  %predphi231 = select nsz <8 x i1> %i.ze, <8 x float> %predphi228, <8 x float> %wide.masked.load229 ; 2 uses
  %i.zf = getelementptr i8, ptr %next.gep224, i64 8
  %wide.masked.load232 = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.zf, <8 x i1> %i.yp, <8 x float> poison), !tbaa !51, !alias.scope !81 ; 3 uses
  %i.zg = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.yo, %wide.masked.load232 ; 3 uses
  %i.zh = select <8 x i1> %i.yp, <8 x i1> %i.zg, <8 x i1> zeroinitializer
  %i.zi = fcmp reassoc nsz arcp contract afn ule <8 x float> %wide.masked.load232, %predphi231
  %i.zj = select <8 x i1> %i.zh, <8 x i1> %i.zi, <8 x i1> zeroinitializer
  %i.zk = xor <8 x i1> %i.zg, splat (i1 true)
  %i.zl = select <8 x i1> %i.yp, <8 x i1> %i.zk, <8 x i1> zeroinitializer
  %i.zm = zext <8 x i1> %i.zg to <8 x i32>
  %predphi233 = add nuw nsw <8 x i32> %predphi230, %i.zm
  %i.zn = or <8 x i1> %i.zj, %i.zl
  %predphi234 = select nsz <8 x i1> %i.zn, <8 x float> %predphi231, <8 x float> %wide.masked.load232 ; 2 uses
  %i.zo = getelementptr [4 x i8], ptr %next.gep224, i64 %i.tr
  %wide.masked.load235 = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.zo, <8 x i1> %i.yp, <8 x float> poison), !tbaa !51, !alias.scope !86 ; 3 uses
  %i.zp = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.yo, %wide.masked.load235 ; 3 uses
  %i.zq = select <8 x i1> %i.yp, <8 x i1> %i.zp, <8 x i1> zeroinitializer
  %i.zr = fcmp reassoc nsz arcp contract afn ule <8 x float> %wide.masked.load235, %predphi234
  %i.zs = select <8 x i1> %i.zq, <8 x i1> %i.zr, <8 x i1> zeroinitializer
  %i.zt = xor <8 x i1> %i.zp, splat (i1 true)
  %i.zu = select <8 x i1> %i.yp, <8 x i1> %i.zt, <8 x i1> zeroinitializer
  %i.zv = zext <8 x i1> %i.zp to <8 x i32>
  %predphi236 = add nuw nsw <8 x i32> %predphi233, %i.zv
  %i.zw = or <8 x i1> %i.zs, %i.zu
  %predphi237 = select nsz <8 x i1> %i.zw, <8 x float> %predphi234, <8 x float> %wide.masked.load235
  %i.zx = icmp samesign uge <8 x i32> %predphi236, %broadcast.splat220
  %i.zy = select <8 x i1> %i.yp, <8 x i1> %i.zx, <8 x i1> zeroinitializer ; 2 uses
  tail call void @llvm.masked.store.v8f32.p0(<8 x float> %predphi237, ptr align 4 %next.gep223, <8 x i1> %i.zy), !tbaa !51, !alias.scope !88, !noalias !90
  %i.zz = zext <8 x i1> %i.zy to <8 x i32>
  %predphi238 = add <8 x i32> %vec.phi222, %i.zz  ; 2 uses
  %index.next239 = add nuw i64 %index221, 8       ; 2 uses
  %i.aaa = icmp eq i64 %index.next239, %n.vec214
  br i1 %i.aaa, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !93

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.aab = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %predphi238) ; 2 uses
  br i1 %cmp.n240, label %._crit_edge.split.us.us.us.i62, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.081104.us.us.us.i.ph = phi i32 [ 2, %iter.check ], [ 2, %vector.memcheck ], [ %i.uu, %vec.epilog.iter.check ], [ %i.ux, %vec.epilog.middle.block ]
  %.082103.us.us.us.i.ph = phi ptr [ %i.vd, %iter.check ], [ %i.vd, %vector.memcheck ], [ %i.ve, %vec.epilog.iter.check ], [ %i.yk, %vec.epilog.middle.block ]
  %.083102.us.us.us.i.ph = phi ptr [ %i.vb, %iter.check ], [ %i.vb, %vector.memcheck ], [ %i.vf, %vec.epilog.iter.check ], [ %i.yl, %vec.epilog.middle.block ]
  %.186101.us.us.us.i.ph = phi i32 [ %.085106.us.us.i, %iter.check ], [ %.085106.us.us.i, %vector.memcheck ], [ %i.yj, %vec.epilog.iter.check ], [ %i.aab, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %.critedge.us.us.us.i61
  %.081104.us.us.us.i = phi i32 [ %i.aaz, %.critedge.us.us.us.i61 ], [ %.081104.us.us.us.i.ph, %vec.epilog.scalar.ph.preheader ]
  %.082103.us.us.us.i = phi ptr [ %i.abb, %.critedge.us.us.us.i61 ], [ %.082103.us.us.us.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.083102.us.us.us.i = phi ptr [ %i.aba, %.critedge.us.us.us.i61 ], [ %.083102.us.us.us.i.ph, %vec.epilog.scalar.ph.preheader ] ; 6 uses
  %.186101.us.us.us.i = phi i32 [ %.388.us.us.us.i, %.critedge.us.us.us.i61 ], [ %.186101.us.us.us.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.aac = load float, ptr %.083102.us.us.us.i, align 4, !tbaa !51 ; 2 uses
  %i.aad = fmul reassoc nsz arcp contract afn float %i.aac, %i.td ; 4 uses
  %i.aae = fcmp reassoc nsz arcp contract afn ogt float %i.aac, %i.tb
  br i1 %i.aae, label %bb.cu, label %.critedge.us.us.us.i61

bb.cu:                                            ; preds = %vec.epilog.scalar.ph
  %i.aaf = getelementptr inbounds i8, ptr %.083102.us.us.us.i, i64 -8
  %i.aag = load float, ptr %i.aaf, align 4, !tbaa !51 ; 3 uses
  %i.aah = fcmp reassoc nsz arcp contract afn ogt float %i.aad, %i.aag
  br i1 %i.aah, label %bb.cv, label %bb.cx

bb.cv:                                            ; preds = %bb.cu
  %i.aai = fcmp reassoc nsz arcp contract afn ogt float %i.aag, 0.000000e+00
  br i1 %i.aai, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv, %bb.cu
  %.077.us.us.us.i = phi i32 [ 1, %bb.cw ], [ 1, %bb.cv ], [ 0, %bb.cu ] ; 2 uses
  %.076.us.us.us.i = phi nsz float [ %i.aag, %bb.cw ], [ 0.000000e+00, %bb.cv ], [ 0.000000e+00, %bb.cu ] ; 3 uses
  %i.aaj = getelementptr inbounds [4 x i8], ptr %.083102.us.us.us.i, i64 %i.tq
  %i.aak = load float, ptr %i.aaj, align 4, !tbaa !51 ; 3 uses
  %i.aal = fcmp reassoc nsz arcp contract afn ogt float %i.aad, %i.aak
  br i1 %i.aal, label %bb.cy, label %bb.da

bb.cy:                                            ; preds = %bb.cx
  %i.aam = add nuw nsw i32 %.077.us.us.us.i, 1    ; 2 uses
  %i.aan = fcmp reassoc nsz arcp contract afn ogt float %i.aak, %.076.us.us.us.i
  br i1 %i.aan, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy, %bb.cx
  %.178.us.us.us.i = phi i32 [ %i.aam, %bb.cz ], [ %i.aam, %bb.cy ], [ %.077.us.us.us.i, %bb.cx ] ; 2 uses
  %.1.us.us.us.i63 = phi nsz float [ %i.aak, %bb.cz ], [ %.076.us.us.us.i, %bb.cy ], [ %.076.us.us.us.i, %bb.cx ] ; 3 uses
  %i.aao = getelementptr inbounds nuw i8, ptr %.083102.us.us.us.i, i64 8
  %i.aap = load float, ptr %i.aao, align 4, !tbaa !51 ; 3 uses
  %i.aaq = fcmp reassoc nsz arcp contract afn ogt float %i.aad, %i.aap
  br i1 %i.aaq, label %bb.db, label %bb.dd

bb.db:                                            ; preds = %bb.da
  %i.aar = add nuw nsw i32 %.178.us.us.us.i, 1    ; 2 uses
  %i.aas = fcmp reassoc nsz arcp contract afn ogt float %i.aap, %.1.us.us.us.i63
  br i1 %i.aas, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.db, %bb.da
  %.279.us.us.us.i = phi i32 [ %i.aar, %bb.dc ], [ %i.aar, %bb.db ], [ %.178.us.us.us.i, %bb.da ] ; 2 uses
  %.2.us.us.us.i64 = phi nsz float [ %i.aap, %bb.dc ], [ %.1.us.us.us.i63, %bb.db ], [ %.1.us.us.us.i63, %bb.da ] ; 3 uses
  %i.aat = getelementptr inbounds nuw [4 x i8], ptr %.083102.us.us.us.i, i64 %i.tr
  %i.aau = load float, ptr %i.aat, align 4, !tbaa !51 ; 3 uses
  %i.aav = fcmp reassoc nsz arcp contract afn ogt float %i.aad, %i.aau
  br i1 %i.aav, label %bb.de, label %bb.dg

bb.de:                                            ; preds = %bb.dd
  %i.aaw = add nuw nsw i32 %.279.us.us.us.i, 1    ; 2 uses
  %i.aax = fcmp reassoc nsz arcp contract afn ogt float %i.aau, %.2.us.us.us.i64
  br i1 %i.aax, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.de, %bb.dd
  %.380.us.us.us.i = phi i32 [ %i.aaw, %bb.df ], [ %i.aaw, %bb.de ], [ %.279.us.us.us.i, %bb.dd ]
  %.3.us.us.us.i65 = phi nsz float [ %i.aau, %bb.df ], [ %.2.us.us.us.i64, %bb.de ], [ %.2.us.us.us.i64, %bb.dd ]
  %.not93.us.us.us.i = icmp slt i32 %.380.us.us.us.i, %i.tg
  br i1 %.not93.us.us.us.i, label %.critedge.us.us.us.i61, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  store float %.3.us.us.us.i65, ptr %.082103.us.us.us.i, align 4, !tbaa !51
  %i.aay = add nsw i32 %.186101.us.us.us.i, 1
  br label %.critedge.us.us.us.i61

.critedge.us.us.us.i61:                           ; preds = %bb.dh, %bb.dg, %vec.epilog.scalar.ph
  %.388.us.us.us.i = phi i32 [ %.186101.us.us.us.i, %vec.epilog.scalar.ph ], [ %.186101.us.us.us.i, %bb.dg ], [ %i.aay, %bb.dh ] ; 2 uses
  %i.aaz = add nuw nsw i32 %.081104.us.us.us.i, 1 ; 2 uses
  %i.aba = getelementptr inbounds nuw i8, ptr %.083102.us.us.us.i, i64 4
  %i.abb = getelementptr inbounds nuw i8, ptr %.082103.us.us.us.i, i64 4
  %exitcond145.not.i = icmp eq i32 %i.aaz, %i.tn
  br i1 %exitcond145.not.i, label %._crit_edge.split.us.us.us.i62, label %vec.epilog.scalar.ph, !llvm.loop !94

._crit_edge.split.us.us.us.i62:                   ; preds = %.critedge.us.us.us.i61, %vec.epilog.middle.block, %middle.block209
  %.388.us.us.us.i.lcssa = phi i32 [ %i.aab, %vec.epilog.middle.block ], [ %i.yj, %middle.block209 ], [ %.388.us.us.us.i, %.critedge.us.us.us.i61 ] ; 2 uses
  %indvars.iv.next147.i = add nuw nsw i64 %indvars.iv146.i, 1 ; 2 uses
  %exitcond150.not.i = icmp eq i64 %indvars.iv.next147.i, %wide.trip.count149.i
  br i1 %exitcond150.not.i, label %_process_monochrome.exit, label %iter.check

.lr.ph105.us.i:                                   ; preds = %._crit_edge.split.us127.i, %.lr.ph105.us.preheader.i
  %indvars.iv140.i = phi i64 [ 2, %.lr.ph105.us.preheader.i ], [ %indvars.iv.next141.i, %._crit_edge.split.us127.i ] ; 2 uses
  %.085106.us.i = phi i32 [ 0, %.lr.ph105.us.preheader.i ], [ %.388.us126.i, %._crit_edge.split.us127.i ]
  %i.abc = mul nuw nsw i64 %indvars.iv140.i, %i.tm ; 2 uses
  %i.abd = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.abc
  %i.abe = getelementptr inbounds nuw i8, ptr %i.abd, i64 8
  %i.abf = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.abc
  %i.abg = getelementptr inbounds nuw i8, ptr %i.abf, i64 8
  br label %bb.di

bb.di:                                            ; preds = %.critedge.us125.i, %.lr.ph105.us.i
  %indvar = phi i64 [ %indvar.next, %.critedge.us125.i ], [ 0, %.lr.ph105.us.i ] ; 2 uses
  %indvars.iv137.i = phi i64 [ %indvars.iv.next138.i, %.critedge.us125.i ], [ 2, %.lr.ph105.us.i ] ; 2 uses
  %.082103.us113.i = phi ptr [ %i.acm, %.critedge.us125.i ], [ %i.abg, %.lr.ph105.us.i ] ; 8 uses
  %.083102.us114.i = phi ptr [ %i.acl, %.critedge.us125.i ], [ %i.abe, %.lr.ph105.us.i ] ; 8 uses
  %.186101.us115.i = phi i32 [ %.388.us126.i, %.critedge.us125.i ], [ %.085106.us.i, %.lr.ph105.us.i ] ; 3 uses
  %6 = lshr i64 %indvar, 1
  %umin = tail call i64 @llvm.umin.i64(i64 %6, i64 4)
  %i.abh = load float, ptr %.083102.us114.i, align 4, !tbaa !51 ; 2 uses
  %i.abi = fmul reassoc nsz arcp contract afn float %i.abh, %i.td ; 4 uses
  %i.abj = fcmp reassoc nsz arcp contract afn ogt float %i.abh, %i.tb
  br i1 %i.abj, label %bb.dj, label %.critedge.us125.i

bb.dj:                                            ; preds = %bb.di
  %i.abk = getelementptr inbounds i8, ptr %.083102.us114.i, i64 -8
  %i.abl = load float, ptr %i.abk, align 4, !tbaa !51 ; 3 uses
  %i.abm = fcmp reassoc nsz arcp contract afn ogt float %i.abi, %i.abl
  br i1 %i.abm, label %bb.dk, label %bb.dm

bb.dk:                                            ; preds = %bb.dj
  %i.abn = fcmp reassoc nsz arcp contract afn ogt float %i.abl, 0.000000e+00
  br i1 %i.abn, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %bb.dk
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %bb.dk, %bb.dj
  %.077.us116.i = phi i32 [ 1, %bb.dl ], [ 1, %bb.dk ], [ 0, %bb.dj ] ; 2 uses
  %.076.us117.i = phi nsz float [ %i.abl, %bb.dl ], [ 0.000000e+00, %bb.dk ], [ 0.000000e+00, %bb.dj ] ; 3 uses
  %i.abo = getelementptr inbounds [4 x i8], ptr %.083102.us114.i, i64 %i.tq
  %i.abp = load float, ptr %i.abo, align 4, !tbaa !51 ; 3 uses
  %i.abq = fcmp reassoc nsz arcp contract afn ogt float %i.abi, %i.abp
  br i1 %i.abq, label %bb.dn, label %bb.dp

bb.dn:                                            ; preds = %bb.dm
  %i.abr = add nuw nsw i32 %.077.us116.i, 1       ; 2 uses
  %i.abs = fcmp reassoc nsz arcp contract afn ogt float %i.abp, %.076.us117.i
  br i1 %i.abs, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %bb.dn
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.dn, %bb.dm
  %.178.us118.i = phi i32 [ %i.abr, %bb.do ], [ %i.abr, %bb.dn ], [ %.077.us116.i, %bb.dm ] ; 2 uses
  %.1.us119.i = phi nsz float [ %i.abp, %bb.do ], [ %.076.us117.i, %bb.dn ], [ %.076.us117.i, %bb.dm ] ; 3 uses
  %i.abt = getelementptr inbounds nuw i8, ptr %.083102.us114.i, i64 8
  %i.abu = load float, ptr %i.abt, align 4, !tbaa !51 ; 3 uses
  %i.abv = fcmp reassoc nsz arcp contract afn ogt float %i.abi, %i.abu
  br i1 %i.abv, label %bb.dq, label %bb.ds

bb.dq:                                            ; preds = %bb.dp
  %i.abw = add nuw nsw i32 %.178.us118.i, 1       ; 2 uses
  %i.abx = fcmp reassoc nsz arcp contract afn ogt float %i.abu, %.1.us119.i
  br i1 %i.abx, label %bb.dr, label %bb.ds

bb.dr:                                            ; preds = %bb.dq
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %bb.dq, %bb.dp
  %.279.us120.i = phi i32 [ %i.abw, %bb.dr ], [ %i.abw, %bb.dq ], [ %.178.us118.i, %bb.dp ] ; 2 uses
  %.2.us121.i = phi nsz float [ %i.abu, %bb.dr ], [ %.1.us119.i, %bb.dq ], [ %.1.us119.i, %bb.dp ] ; 3 uses
  %i.aby = getelementptr inbounds nuw [4 x i8], ptr %.083102.us114.i, i64 %i.tr
  %i.abz = load float, ptr %i.aby, align 4, !tbaa !51 ; 3 uses
  %i.aca = fcmp reassoc nsz arcp contract afn ogt float %i.abi, %i.abz
  br i1 %i.aca, label %bb.dt, label %bb.dv

bb.dt:                                            ; preds = %bb.ds
  %i.acb = add nuw nsw i32 %.279.us120.i, 1       ; 2 uses
  %i.acc = fcmp reassoc nsz arcp contract afn ogt float %i.abz, %.2.us121.i
  br i1 %i.acc, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %bb.dt
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %bb.dt, %bb.ds
  %.380.us122.i = phi i32 [ %i.acb, %bb.du ], [ %i.acb, %bb.dt ], [ %.279.us120.i, %bb.ds ]
  %.3.us123.i = phi nsz float [ %i.abz, %bb.du ], [ %.2.us121.i, %bb.dt ], [ %.2.us121.i, %bb.ds ]
  %.not93.us124.i = icmp slt i32 %.380.us122.i, %i.tg
  br i1 %.not93.us124.i, label %.critedge.us125.i, label %.lr.ph.us.preheader.i54

.lr.ph.us.preheader.i54:                          ; preds = %bb.dv
  store float %.3.us123.i, ptr %.082103.us113.i, align 4, !tbaa !51
  %.pre.i55 = load float, ptr %.083102.us114.i, align 4, !tbaa !51
  %broadcast.splatinsert151 = insertelement <8 x float> poison, float %.pre.i55, i64 0
  %broadcast.splat152 = shufflevector <8 x float> %broadcast.splatinsert151, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert149 = insertelement <8 x i64> poison, i64 %umin, i64 0
  %broadcast.splat150 = shufflevector <8 x i64> %broadcast.splatinsert149, <8 x i64> poison, <8 x i32> zeroinitializer
  %i.acd = icmp samesign uge <8 x i64> %broadcast.splat150, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %wide.gep = getelementptr inbounds [4 x i8], ptr %.082103.us113.i, <8 x i64> <i64 -2, i64 -4, i64 -6, i64 -8, i64 -10, i64 -12, i64 -14, i64 -16>
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %broadcast.splat152, <8 x ptr> align 4 %wide.gep, <8 x i1> %i.acd), !tbaa !51
  %i.ace = add nsw i32 %.186101.us115.i, 1        ; 6 uses
  %i.acf = trunc i64 %indvars.iv137.i to i32
  %i.acg = sub i32 %i.tk, %i.acf
  %.fr.us.i60 = freeze i32 %i.acg                 ; 5 uses
  %or.cond98.us.i = icmp sgt i32 %.fr.us.i60, 2
  br i1 %or.cond98.us.i, label %.lr.ph100.us.preheader.i, label %.critedge.us125.i

.lr.ph100.us.i.1:                                 ; preds = %.lr.ph100.us.preheader.i
  %i.ach = getelementptr inbounds nuw i8, ptr %.082103.us113.i, i64 16
  store float %.pre151.i, ptr %i.ach, align 4, !tbaa !51
  %or.cond.us.i.1 = icmp ugt i32 %.fr.us.i60, 6
  br i1 %or.cond.us.i.1, label %.lr.ph100.us.i.2, label %.critedge.us125.i

.lr.ph100.us.i.2:                                 ; preds = %.lr.ph100.us.i.1
  %i.aci = getelementptr inbounds nuw i8, ptr %.082103.us113.i, i64 24
  store float %.pre151.i, ptr %i.aci, align 4, !tbaa !51
  %or.cond.us.i.2 = icmp ugt i32 %.fr.us.i60, 8
  br i1 %or.cond.us.i.2, label %.lr.ph100.us.i.3, label %.critedge.us125.i

.lr.ph100.us.i.3:                                 ; preds = %.lr.ph100.us.i.2
  %i.acj = getelementptr inbounds nuw i8, ptr %.082103.us113.i, i64 32
  store float %.pre151.i, ptr %i.acj, align 4, !tbaa !51
  %or.cond.us.i.3 = icmp ugt i32 %.fr.us.i60, 10
  br i1 %or.cond.us.i.3, label %.lr.ph100.us.i.4, label %.critedge.us125.i

.lr.ph100.us.i.4:                                 ; preds = %.lr.ph100.us.i.3
  %i.ack = getelementptr inbounds nuw i8, ptr %.082103.us113.i, i64 40
  store float %.pre151.i, ptr %i.ack, align 4, !tbaa !51
  br label %.critedge.us125.i

.critedge.us125.i:                                ; preds = %.lr.ph100.us.preheader.i, %.lr.ph100.us.i.1, %.lr.ph100.us.i.2, %.lr.ph100.us.i.3, %.lr.ph100.us.i.4, %.lr.ph.us.preheader.i54, %bb.dv, %bb.di
  %.388.us126.i = phi i32 [ %.186101.us115.i, %bb.di ], [ %.186101.us115.i, %bb.dv ], [ %i.ace, %.lr.ph.us.preheader.i54 ], [ %i.ace, %.lr.ph100.us.i.4 ], [ %i.ace, %.lr.ph100.us.i.3 ], [ %i.ace, %.lr.ph100.us.i.2 ], [ %i.ace, %.lr.ph100.us.i.1 ], [ %i.ace, %.lr.ph100.us.preheader.i ] ; 3 uses
  %indvars.iv.next138.i = add nuw nsw i64 %indvars.iv137.i, 1 ; 2 uses
  %i.acl = getelementptr inbounds nuw i8, ptr %.083102.us114.i, i64 4
  %i.acm = getelementptr inbounds nuw i8, ptr %.082103.us113.i, i64 4
  %exitcond.not.i53 = icmp eq i64 %indvars.iv.next138.i, %wide.trip.count.i52
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond.not.i53, label %._crit_edge.split.us127.i, label %bb.di

.lr.ph100.us.preheader.i:                         ; preds = %.lr.ph.us.preheader.i54
  %.pre151.i = load float, ptr %.083102.us114.i, align 4, !tbaa !51 ; 5 uses
  %i.acn = getelementptr inbounds nuw i8, ptr %.082103.us113.i, i64 8
  store float %.pre151.i, ptr %i.acn, align 4, !tbaa !51
  %or.cond.us.i = icmp ugt i32 %.fr.us.i60, 4
  br i1 %or.cond.us.i, label %.lr.ph100.us.i.1, label %.critedge.us125.i

._crit_edge.split.us127.i:                        ; preds = %.critedge.us125.i
  %indvars.iv.next141.i = add nuw nsw i64 %indvars.iv140.i, 1 ; 2 uses
  %exitcond144.not.i = icmp eq i64 %indvars.iv.next141.i, %wide.trip.count149.i
  br i1 %exitcond144.not.i, label %_process_monochrome.exit, label %.lr.ph105.us.i

_process_monochrome.exit:                         ; preds = %._crit_edge.split.us156.i, %._crit_edge.split.us.us.us.i, %._crit_edge.split.us127.i, %._crit_edge.split.us.us.us.i62, %.lr.ph109.i, %bb.ct, %.lr.ph136.i, %bb.c, %_process_xtrans.exit
  %.0 = phi i32 [ %.3110.us.us.us.i, %._crit_edge.split.us.us.us.i ], [ %.0109.lcssa.i, %_process_xtrans.exit ], [ 0, %bb.c ], [ 0, %.lr.ph136.i ], [ %.388.us126.i, %._crit_edge.split.us127.i ], [ 0, %bb.ct ], [ 0, %.lr.ph109.i ], [ %.388.us.us.us.i.lcssa, %._crit_edge.split.us.us.us.i62 ], [ %.3110.us154.i, %._crit_edge.split.us156.i ]
  %.not32 = icmp eq ptr %i.c, null
  br i1 %.not32, label %bb.dz, label %bb.dw

bb.dw:                                            ; preds = %_process_monochrome.exit
  %i.aco = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.acp = load ptr, ptr %i.aco, align 8, !tbaa !95
  %i.acq = load i32, ptr %i.acp, align 16, !tbaa !96
  %.not33 = icmp eq i32 %i.acq, 0
  br i1 %.not33, label %bb.dz, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.acr = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.acs = load ptr, ptr %i.acr, align 8, !tbaa !62
  %i.act = getelementptr i8, ptr %i.acs, i64 644
  %.val = load i32, ptr %i.act, align 4, !tbaa !113
  %i.acu = and i32 %.val, 2
  %.not34 = icmp eq i32 %i.acu, 0
  br i1 %.not34, label %bb.dz, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.acv = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i32 %.0, ptr %i.acv, align 8, !tbaa !114
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %bb.dx, %bb.dw, %_process_monochrome.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: nounwind uwtable
define void @reload_defaults(ptr nofree noundef captures(none) initializes((488, 492)) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !95   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1540
  %i.d = load i32, ptr %i.c, align 4, !tbaa !118
  %i.e = and i32 %i.d, 163840
  %i.f = icmp ne i32 %i.e, 163840
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.h = tail call i32 @dt_image_is_raw(ptr noundef nonnull %i.g) #17
  %i.i = icmp eq i32 %i.h, 0
  %.not7 = and i1 %i.i, %i.f
  %i.j = zext i1 %.not7 to i32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 488
  store i32 %i.j, ptr %i.k, align 8, !tbaa !119
  ret void
}

declare i32 @dt_image_is_raw(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @commit_params(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !29  ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !62
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 184
  %i.f = load i32, ptr %i.e, align 8, !tbaa !63
  store i32 %i.f, ptr %i.b, align 4, !tbaa !120
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.h = load <2 x float>, ptr %1, align 4, !tbaa !51
  %i.i = fmul reassoc nsz arcp contract afn <2 x float> %i.h, <float 5.000000e-01, float 1.000000e+00>
  %i.j = shufflevector <2 x float> %i.i, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.j, ptr %i.g, align 4, !tbaa !51
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.l = load i32, ptr %i.k, align 4, !tbaa !121
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 %i.l, ptr %i.m, align 4, !tbaa !49
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load i32, ptr %i.n, align 4, !tbaa !123
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr i8, ptr %2, i64 644
  %.val = load i32, ptr %i.p, align 4, !tbaa !113 ; 2 uses
  %i.q = and i32 %.val, 8
  %.not25 = icmp eq i32 %i.q, 0
  br i1 %.not25, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.r = and i32 %.val, 1
  %i.s = xor i32 %i.r, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %i.t = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ %i.s, %bb.c ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 %i.t, ptr %i.u, align 4, !tbaa !50
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 656
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 2084 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !118
  %i.y = and i32 %i.x, 163840
  %i.z = icmp eq i32 %i.y, 163840                 ; 2 uses
  %i.aa = zext i1 %i.z to i32
  %i.ab = tail call i32 @dt_image_is_raw(ptr noundef nonnull %i.v) #17
  %i.ac = icmp ne i32 %i.ab, 0
  %i.ad = or i1 %i.ac, %i.z
  %i.ae = load i32, ptr %i.w, align 4, !tbaa !118
  %i.af = and i32 %i.ae, 524288
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !46
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i32 %i.aa, ptr %i.ah, align 4, !tbaa !42
  br i1 %i.ad, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ai = load float, ptr %1, align 4, !tbaa !124
  %i.aj = fcmp reassoc nsz arcp contract afn oeq float %i.ai, 0.000000e+00
  br i1 %i.aj, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 0, ptr %i.ak, align 16, !tbaa !125
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: write, inaccessiblemem: readwrite, errnomem: write) uwtable
define void @init_pipe(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((16, 24)) %2) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(28) ptr @malloc(i64 noundef 28) #18
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.a, ptr %i.b, align 16, !tbaa !29
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define void @cleanup_pipe(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !29
end_hunk_0
