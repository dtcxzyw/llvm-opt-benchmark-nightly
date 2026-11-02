Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/tiff?download=true
inline.NumInlined: 42
inline.NumDeleted: 19
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 53
begin_hunk_0_@decode_frame:bb.a
  %i.ccd = load i8, ptr %i.cbt, align 1, !tbaa !67
  %i.cce = lshr i8 %i.ccd, 4
  %i.ccf = and i8 %i.cce, 3
  %i.ccg = getelementptr i8, ptr %i.cbx, i64 1
  store i8 %i.ccf, ptr %i.ccg, align 1, !tbaa !67
  %i.cch = load i8, ptr %i.cbt, align 1, !tbaa !67
  %i.cci = lshr i8 %i.cch, 6
  store i8 %i.cci, ptr %i.cbx, align 1, !tbaa !67
  %i.ccj = icmp samesign ugt i64 %indvars.iv659.i, 1
  br i1 %i.ccj, label %.lr.ph562.i, label %horizontal_fill.exit363.i, !llvm.loop !112

.lr.ph560.i:                                      ; preds = %.lr.ph560.i.preheader3523, %.lr.ph560.i
  %indvars.iv656.i = phi i64 [ %indvars.iv.next657.i, %.lr.ph560.i ], [ %indvars.iv656.i.ph, %.lr.ph560.i.preheader3523 ] ; 2 uses
  %indvars.iv.next657.i = add nsw i64 %indvars.iv656.i, -1 ; 3 uses
  %i.cck = getelementptr inbounds nuw i8, ptr %.1305576.i, i64 %indvars.iv.next657.i ; 2 uses
  %i.ccl = load i8, ptr %i.cck, align 1, !tbaa !67
  %i.ccm = and i8 %i.ccl, 15
  %i.ccn = shl nuw nsw i64 %indvars.iv.next657.i, 1
  %i.cco = getelementptr i8, ptr %.4578.i, i64 %i.ccn ; 2 uses
  %i.ccp = getelementptr i8, ptr %i.cco, i64 1
  store i8 %i.ccm, ptr %i.ccp, align 1, !tbaa !67
  %i.ccq = load i8, ptr %i.cck, align 1, !tbaa !67
  %i.ccr = lshr i8 %i.ccq, 4
  store i8 %i.ccr, ptr %i.cco, align 1, !tbaa !67
  %i.ccs = icmp samesign ugt i64 %indvars.iv656.i, 1
  br i1 %i.ccs, label %.lr.ph560.i, label %horizontal_fill.exit363.i, !llvm.loop !129

bb.pm:                                            ; preds = %bb.pl, %bb.pl, %bb.pl
  %i.cct = load i32, ptr %i.dp, align 8, !tbaa !65 ; 4 uses
  %i.ccu = icmp sgt i32 %i.cct, 0
  br i1 %i.ccu, label %.lr.ph558.i, label %horizontal_fill.exit363.i

.lr.ph558.i:                                      ; preds = %bb.pm
  %i.ccv = sub nuw nsw i32 16, %i.bzt
  %i.ccw = load i32, ptr %i.ap, align 4, !tbaa !197
  %i.ccx = add i32 %i.ccw, -1
  %spec.select.i358.i = icmp ult i32 %i.ccx, 2
  %i.ccy = sub nuw nsw i32 32, %i.bzt             ; 3 uses
  %i.ccz = select i1 %spec.select.i358.i, i32 0, i32 %i.ccv ; 3 uses
  %wide.trip.count654.i = zext nneg i32 %i.cct to i64 ; 2 uses
  %xtraiter3794 = and i64 %wide.trip.count654.i, 1
  %i.cda = icmp eq i32 %i.cct, 1
  br i1 %i.cda, label %.epil.preheader3793, label %.lr.ph558.i.new

.lr.ph558.i.new:                                  ; preds = %.lr.ph558.i
  %unroll_iter3798 = and i64 %wide.trip.count654.i, 2147483646
  br label %bb.pn

bb.pn:                                            ; preds = %bb.pn, %.lr.ph558.i.new
  %indvars.iv651.i = phi i64 [ 0, %.lr.ph558.i.new ], [ %indvars.iv.next652.i.1, %bb.pn ] ; 3 uses
  %.sroa.4457.0555.i = phi i32 [ 0, %.lr.ph558.i.new ], [ %i.cdx, %bb.pn ] ; 3 uses
  %niter3799 = phi i64 [ 0, %.lr.ph558.i.new ], [ %niter3799.next.1, %bb.pn ]
  %i.cdb = lshr i32 %.sroa.4457.0555.i, 3
  %i.cdc = zext nneg i32 %i.cdb to i64
  %i.cdd = getelementptr inbounds nuw i8, ptr %.1305576.i, i64 %i.cdc
  %i.cde = load i32, ptr %i.cdd, align 1, !tbaa !67
  %i.cdf = call i32 @llvm.bswap.i32(i32 %i.cde)
  %i.cdg = and i32 %.sroa.4457.0555.i, 7
  %i.cdh = shl i32 %i.cdf, %i.cdg
  %i.cdi = lshr i32 %i.cdh, %i.ccy
  %i.cdj = add i32 %.sroa.4457.0555.i, %i.bzt
  %i.cdk = call i32 @llvm.umin.i32(i32 %i.byt, i32 %i.cdj) ; 3 uses
  %i.cdl = shl nuw nsw i32 %i.cdi, %i.ccz
  %i.cdm = trunc i32 %i.cdl to i16
  %i.cdn = getelementptr inbounds nuw [2 x i8], ptr %.4578.i, i64 %indvars.iv651.i
  store i16 %i.cdm, ptr %i.cdn, align 2, !tbaa !60
  %i.cdo = lshr i32 %i.cdk, 3
  %i.cdp = zext nneg i32 %i.cdo to i64
  %i.cdq = getelementptr inbounds nuw i8, ptr %.1305576.i, i64 %i.cdp
  %i.cdr = load i32, ptr %i.cdq, align 1, !tbaa !67
  %i.cds = call i32 @llvm.bswap.i32(i32 %i.cdr)
  %i.cdt = and i32 %i.cdk, 7
  %i.cdu = shl i32 %i.cds, %i.cdt
  %i.cdv = lshr i32 %i.cdu, %i.ccy
  %i.cdw = add i32 %i.cdk, %i.bzt
  %i.cdx = call i32 @llvm.umin.i32(i32 %i.byt, i32 %i.cdw) ; 2 uses
  %i.cdy = shl nuw nsw i32 %i.cdv, %i.ccz
  %i.cdz = trunc i32 %i.cdy to i16
  %i.cea = getelementptr inbounds nuw [2 x i8], ptr %.4578.i, i64 %indvars.iv651.i
  %i.ceb = getelementptr inbounds nuw i8, ptr %i.cea, i64 2
  store i16 %i.cdz, ptr %i.ceb, align 2, !tbaa !60
  %indvars.iv.next652.i.1 = add nuw nsw i64 %indvars.iv651.i, 2 ; 2 uses
  %niter3799.next.1 = add i64 %niter3799, 2       ; 2 uses
  %niter3799.ncmp.1 = icmp eq i64 %niter3799.next.1, %unroll_iter3798
  br i1 %niter3799.ncmp.1, label %horizontal_fill.exit363.i.loopexit3525.unr-lcssa, label %bb.pn, !llvm.loop !123

.thread472.i:                                     ; preds = %bb.pl, %bb.pk
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.4578.i, ptr align 1 %.1305576.i, i64 %i.byl, i1 false)
  br label %horizontal_fill.exit363.i

.lr.ph554.i:                                      ; preds = %.lr.ph554.i.preheader, %.lr.ph554.i
  %indvars.iv646.i = phi i64 [ %indvars.iv.next647.i.3, %.lr.ph554.i ], [ 0, %.lr.ph554.i.preheader ] ; 6 uses
  %niter3792 = phi i64 [ %niter3792.next.3, %.lr.ph554.i ], [ 0, %.lr.ph554.i.preheader ]
  %i.cec = getelementptr inbounds nuw i8, ptr %.1305576.i, i64 %indvars.iv646.i
  %i.ced = load i8, ptr %i.cec, align 1, !tbaa !67
  %i.cee = zext i8 %i.ced to i64
  %i.cef = getelementptr inbounds nuw i8, ptr @ff_reverse, i64 %i.cee
  %i.ceg = load i8, ptr %i.cef, align 1, !tbaa !67
  %i.ceh = getelementptr inbounds nuw i8, ptr %.4578.i, i64 %indvars.iv646.i
  store i8 %i.ceg, ptr %i.ceh, align 1, !tbaa !67
  %indvars.iv.next647.i = or disjoint i64 %indvars.iv646.i, 1 ; 2 uses
  %i.cei = getelementptr inbounds nuw i8, ptr %.1305576.i, i64 %indvars.iv.next647.i
  %i.cej = load i8, ptr %i.cei, align 1, !tbaa !67
  %i.cek = zext i8 %i.cej to i64
  %i.cel = getelementptr inbounds nuw i8, ptr @ff_reverse, i64 %i.cek
  %i.cem = load i8, ptr %i.cel, align 1, !tbaa !67
  %i.cen = getelementptr inbounds nuw i8, ptr %.4578.i, i64 %indvars.iv.next647.i
  store i8 %i.cem, ptr %i.cen, align 1, !tbaa !67
  %indvars.iv.next647.i.1 = or disjoint i64 %indvars.iv646.i, 2 ; 2 uses
  %i.ceo = getelementptr inbounds nuw i8, ptr %.1305576.i, i64 %indvars.iv.next647.i.1
  %i.cep = load i8, ptr %i.ceo, align 1, !tbaa !67
  %i.ceq = zext i8 %i.cep to i64
  %i.cer = getelementptr inbounds nuw i8, ptr @ff_reverse, i64 %i.ceq
  %i.ces = load i8, ptr %i.cer, align 1, !tbaa !67
  %i.cet = getelementptr inbounds nuw i8, ptr %.4578.i, i64 %indvars.iv.next647.i.1
  store i8 %i.ces, ptr %i.cet, align 1, !tbaa !67
  %indvars.iv.next647.i.2 = or disjoint i64 %indvars.iv646.i, 3 ; 2 uses
  %i.ceu = getelementptr inbounds nuw i8, ptr %.1305576.i, i64 %indvars.iv.next647.i.2
  %i.cev = load i8, ptr %i.ceu, align 1, !tbaa !67
  %i.cew = zext i8 %i.cev to i64
  %i.cex = getelementptr inbounds nuw i8, ptr @ff_reverse, i64 %i.cew
  %i.cey = load i8, ptr %i.cex, align 1, !tbaa !67
  %i.cez = getelementptr inbounds nuw i8, ptr %.4578.i, i64 %indvars.iv.next647.i.2
  store i8 %i.cey, ptr %i.cez, align 1, !tbaa !67
  %indvars.iv.next647.i.3 = add nuw nsw i64 %indvars.iv646.i, 4 ; 2 uses
  %niter3792.next.3 = add i64 %niter3792, 4       ; 2 uses
  %niter3792.ncmp.3 = icmp eq i64 %niter3792.next.3, %unroll_iter3791
  br i1 %niter3792.ncmp.3, label %horizontal_fill.exit363.i.loopexit3526.unr-lcssa, label %.lr.ph554.i, !llvm.loop !130

horizontal_fill.exit363.i.loopexit3525.unr-lcssa: ; preds = %bb.pn
  %lcmp.mod3796.not = icmp eq i64 %xtraiter3794, 0
  br i1 %lcmp.mod3796.not, label %horizontal_fill.exit363.i, label %.epil.preheader3793

.epil.preheader3793:                              ; preds = %horizontal_fill.exit363.i.loopexit3525.unr-lcssa, %.lr.ph558.i
  %indvars.iv651.i.epil.init = phi i64 [ 0, %.lr.ph558.i ], [ %indvars.iv.next652.i.1, %horizontal_fill.exit363.i.loopexit3525.unr-lcssa ]
  %.sroa.4457.0555.i.epil.init = phi i32 [ 0, %.lr.ph558.i ], [ %i.cdx, %horizontal_fill.exit363.i.loopexit3525.unr-lcssa ] ; 2 uses
  %lcmp.mod3797 = trunc i32 %i.cct to i1
  call void @llvm.assume(i1 %lcmp.mod3797)
  %i.cfa = lshr i32 %.sroa.4457.0555.i.epil.init, 3
  %i.cfb = zext nneg i32 %i.cfa to i64
  %i.cfc = getelementptr inbounds nuw i8, ptr %.1305576.i, i64 %i.cfb
  %i.cfd = load i32, ptr %i.cfc, align 1, !tbaa !67
  %i.cfe = call i32 @llvm.bswap.i32(i32 %i.cfd)
  %i.cff = and i32 %.sroa.4457.0555.i.epil.init, 7
  %i.cfg = shl i32 %i.cfe, %i.cff
  %i.cfh = lshr i32 %i.cfg, %i.ccy
  %i.cfi = shl nuw nsw i32 %i.cfh, %i.ccz
  %i.cfj = trunc i32 %i.cfi to i16
  %i.cfk = getelementptr inbounds nuw [2 x i8], ptr %.4578.i, i64 %indvars.iv651.i.epil.init
  store i16 %i.cfj, ptr %i.cfk, align 2, !tbaa !60
  br label %horizontal_fill.exit363.i

horizontal_fill.exit363.i.loopexit3526.unr-lcssa: ; preds = %.lr.ph554.i
  br i1 %lcmp.mod3789.not, label %horizontal_fill.exit363.i, label %.lr.ph554.i.epil.preheader

.lr.ph554.i.epil.preheader:                       ; preds = %horizontal_fill.exit363.i.loopexit3526.unr-lcssa, %.lr.ph554.i.preheader
  %indvars.iv646.i.epil.init = phi i64 [ 0, %.lr.ph554.i.preheader ], [ %indvars.iv.next647.i.3, %horizontal_fill.exit363.i.loopexit3526.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod3790)
  br label %.lr.ph554.i.epil

.lr.ph554.i.epil:                                 ; preds = %.lr.ph554.i.epil, %.lr.ph554.i.epil.preheader
  %indvars.iv646.i.epil = phi i64 [ %indvars.iv.next647.i.epil, %.lr.ph554.i.epil ], [ %indvars.iv646.i.epil.init, %.lr.ph554.i.epil.preheader ] ; 3 uses
  %epil.iter3788 = phi i64 [ %epil.iter3788.next, %.lr.ph554.i.epil ], [ 0, %.lr.ph554.i.epil.preheader ]
  %i.cfl = getelementptr inbounds nuw i8, ptr %.1305576.i, i64 %indvars.iv646.i.epil
  %i.cfm = load i8, ptr %i.cfl, align 1, !tbaa !67
  %i.cfn = zext i8 %i.cfm to i64
  %i.cfo = getelementptr inbounds nuw i8, ptr @ff_reverse, i64 %i.cfn
  %i.cfp = load i8, ptr %i.cfo, align 1, !tbaa !67
  %i.cfq = getelementptr inbounds nuw i8, ptr %.4578.i, i64 %indvars.iv646.i.epil
  store i8 %i.cfp, ptr %i.cfq, align 1, !tbaa !67
  %indvars.iv.next647.i.epil = add nuw nsw i64 %indvars.iv646.i.epil, 1
  %epil.iter3788.next = add i64 %epil.iter3788, 1 ; 2 uses
  %epil.iter3788.cmp.not = icmp eq i64 %epil.iter3788.next, %xtraiter3787
  br i1 %epil.iter3788.cmp.not, label %horizontal_fill.exit363.i, label %.lr.ph554.i.epil, !llvm.loop !131

horizontal_fill.exit363.i:                        ; preds = %horizontal_fill.exit363.i.loopexit3526.unr-lcssa, %.lr.ph554.i.epil, %.epil.preheader3793, %horizontal_fill.exit363.i.loopexit3525.unr-lcssa, %.lr.ph560.i, %.lr.ph562.i, %.lr.ph564.i, %middle.block3372, %.thread472.i, %bb.pm, %.preheader495.i, %.preheader496.i, %.preheader498.i, %.preheader501.i
  br i1 %spec.select.i, label %bb.po, label %bb.pr

bb.po:                                            ; preds = %horizontal_fill.exit363.i
  %i.cfr = load i32, ptr %i.as, align 8, !tbaa !55 ; 2 uses
  %i.cfs = load i32, ptr %i.at, align 4, !tbaa !56 ; 2 uses
  %i.cft = udiv i32 %i.cfr, %i.cfs
  %i.cfu = icmp ugt i32 %i.cft, 8                 ; 4 uses
  %i.cfv = select i1 %i.cfu, i32 %i.byp, i32 %.2.i
  %i.cfw = select i1 %i.cfu, i32 4, i32 3
  %i.cfx = shl i32 %i.cfv, %i.cfw
  %i.cfy = udiv i32 %i.cfx, %i.cfr
  %i.cfz = mul i32 %i.cfy, %i.cfs                 ; 4 uses
  %i.cga = zext i1 %i.cfu to i32
  %i.cgb = shl i32 %i.cfz, %i.cga
  %.not338.i = icmp sgt i32 %i.cgb, %i.byq
  br i1 %.not338.i, label %bb.pp, label %bb.pq

bb.pp:                                            ; preds = %bb.po
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.1840, ptr noundef nonnull @.str.1831, i32 noundef 921) #16
  call void @abort() #17
  unreachable

bb.pq:                                            ; preds = %bb.po
  %i.cgc = add nsw i32 %.2294582.i, %.121604
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.cgd = load i32, ptr %i.ay, align 8, !tbaa !59
  %.not.i.i = icmp eq i32 %i.cgd, 0
  %i.cge = load i32, ptr %i.ax, align 4, !tbaa !58
  %i.cgf = uitofp nsz i32 %i.cge to float         ; 5 uses
  br i1 %.not.i.i, label %.preheader491.i, label %.preheader493.i

.preheader493.i:                                  ; preds = %bb.pq
  %i.cgg = load i8, ptr %i.cu, align 8, !tbaa !67
  %i.cgh = zext i8 %i.cgg to i64
  %i.cgi = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.cgh
  %i.cgj = load float, ptr %i.cgi, align 4, !tbaa !62
  %i.cgk = load i8, ptr %i.cv, align 1, !tbaa !67
  %i.cgl = zext i8 %i.cgk to i64
  %i.cgm = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.cgl
  %i.cgn = load float, ptr %i.cgm, align 4, !tbaa !62
  %i.cgo = insertelement <2 x float> poison, float %i.cgj, i64 0
  %i.cgp = insertelement <2 x float> %i.cgo, float %i.cgn, i64 1
  %i.cgq = fmul nsz <2 x float> %i.cgp, splat (float 6.553500e+04)
  %i.cgr = load <2 x float>, ptr %i.be, align 4, !tbaa !62
  %i.cgs = insertelement <2 x float> poison, float %i.cgf, i64 0
  %i.cgt = shufflevector <2 x float> %i.cgs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cgu = fsub nsz <2 x float> %i.cgt, %i.cgr
  %i.cgv = fdiv nsz <2 x float> %i.cgq, %i.cgu
  %i.cgw = load i8, ptr %i.cw, align 2, !tbaa !67
  %i.cgx = zext i8 %i.cgw to i64
  %i.cgy = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.cgx
  %i.cgz = load float, ptr %i.cgy, align 4, !tbaa !62
  %i.cha = fmul nsz float %i.cgz, 6.553500e+04
  %i.chb = load float, ptr %i.axq, align 4, !tbaa !62
  %i.chc = fsub nsz float %i.cgf, %i.chb
  %i.chd = fdiv nsz float %i.cha, %i.chc
  %i.che = load i8, ptr %i.cx, align 1, !tbaa !67
  %i.chf = zext i8 %i.che to i64
  %i.chg = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.chf
  br label %.loopexit492.i

.preheader491.i:                                  ; preds = %bb.pq
  %i.chh = load <2 x float>, ptr %i.bi, align 4, !tbaa !62
  %i.chi = fmul nsz <2 x float> %i.chh, splat (float 6.553500e+04)
  %i.chj = load <2 x float>, ptr %i.be, align 4, !tbaa !62
  %i.chk = insertelement <2 x float> poison, float %i.cgf, i64 0
  %i.chl = shufflevector <2 x float> %i.chk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.chm = fsub nsz <2 x float> %i.chl, %i.chj
  %i.chn = fdiv nsz <2 x float> %i.chi, %i.chm
  %i.cho = load float, ptr %i.axu, align 4, !tbaa !62
  %i.chp = fmul nsz float %i.cho, 6.553500e+04
  %i.chq = load float, ptr %i.axq, align 4, !tbaa !62
  %i.chr = fsub nsz float %i.cgf, %i.chq
  %i.chs = fdiv nsz float %i.chp, %i.chr
  br label %.loopexit492.i

.loopexit492.i:                                   ; preds = %.preheader491.i, %.preheader493.i
  %.sink2843.in = phi ptr [ %i.axv, %.preheader491.i ], [ %i.chg, %.preheader493.i ]
  %.sink = phi float [ %i.chs, %.preheader491.i ], [ %i.chd, %.preheader493.i ]
  %i.cht = phi <2 x float> [ %i.chn, %.preheader491.i ], [ %i.cgv, %.preheader493.i ]
  %.sink2843 = load float, ptr %.sink2843.in, align 4, !tbaa !62
  %i.chu = fmul nsz float %.sink2843, 6.553500e+04
  %i.chv = load float, ptr %i.axs, align 8, !tbaa !62
  %i.chw = fsub nsz float %i.cgf, %i.chv
  %i.chx = fdiv nsz float %i.chu, %i.chw
  store <2 x float> %i.cht, ptr %i.a, align 16, !tbaa !62
  store float %.sink, ptr %i.axr, align 8, !tbaa !62
  store float %i.chx, ptr %i.axt, align 4, !tbaa !62
  %i.chy = icmp sgt i32 %i.cfz, 0                 ; 2 uses
  %9 = shl i32 %i.cgc, 1
  %10 = and i32 %9, 2                             ; 2 uses
  br i1 %i.cfu, label %.preheader488.i, label %.preheader489.i

.preheader489.i:                                  ; preds = %.loopexit492.i
  br i1 %i.chy, label %.preheader475.i, label %dng_blit.exit.i

.preheader488.i:                                  ; preds = %.loopexit492.i
  br i1 %i.chy, label %.preheader.i, label %dng_blit.exit.i

.preheader.i:                                     ; preds = %.preheader488.i, %.preheader.i
  %.095.i573.i = phi ptr [ %i.chz, %.preheader.i ], [ %.4578.i, %.preheader488.i ] ; 3 uses
  %.2.i571.i = phi i32 [ %i.cis, %.preheader.i ], [ 0, %.preheader488.i ] ; 2 uses
  %i.chz = getelementptr i8, ptr %.095.i573.i, i64 2
  %i.cia = load i16, ptr %.095.i573.i, align 2, !tbaa !60
  %i.cib = and i32 %.2.i571.i, 1
  %i.cic = or disjoint i32 %i.cib, %10
  %i.cid = zext nneg i32 %i.cic to i64            ; 2 uses
  %i.cie = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.cid
  %i.cif = load float, ptr %i.cie, align 4, !tbaa !62
  %i.cig = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.cid
  %i.cih = load float, ptr %i.cig, align 4, !tbaa !62
  %i.cii = zext i16 %i.cia to i64
  %i.cij = getelementptr inbounds nuw [2 x i8], ptr %i.bd, i64 %i.cii
  %i.cik = load i16, ptr %i.cij, align 2, !tbaa !60
  %i.cil = uitofp nsz i16 %i.cik to float
  %i.cim = fsub nsz float %i.cil, %i.cif
  %i.cin = fmul nsz float %i.cih, %i.cim
  %i.cio = call i64 @llvm.lrint.i64.f32(float %i.cin) ; 2 uses
  %i.cip = trunc i64 %i.cio to i32                ; 2 uses
  %.not.i347.i = icmp ult i32 %i.cip, 65536
  %isnotneg.i348.i = icmp sgt i32 %i.cip, -1
  %i.ciq = sext i1 %isnotneg.i348.i to i16
  %i.cir = trunc i64 %i.cio to i16
  %.0.i349.i = select i1 %.not.i347.i, i16 %i.cir, i16 %i.ciq
  store i16 %.0.i349.i, ptr %.095.i573.i, align 2, !tbaa !60
  %i.cis = add nuw nsw i32 %.2.i571.i, 1          ; 2 uses
  %i.cit = icmp slt i32 %i.cis, %i.cfz
  br i1 %i.cit, label %.preheader.i, label %dng_blit.exit.i, !llvm.loop !2

.preheader475.i:                                  ; preds = %.preheader489.i, %.preheader475.i
  %.0.i569.i = phi ptr [ %i.ciu, %.preheader475.i ], [ %.4578.i, %.preheader489.i ] ; 3 uses
  %.3.i567.i = phi i32 [ %i.cjp, %.preheader475.i ], [ 0, %.preheader489.i ] ; 2 uses
  %i.ciu = getelementptr i8, ptr %.0.i569.i, i64 1
  %i.civ = load i8, ptr %.0.i569.i, align 1, !tbaa !67
  %i.ciw = and i32 %.3.i567.i, 1
  %i.cix = or disjoint i32 %i.ciw, %10
  %i.ciy = zext nneg i32 %i.cix to i64            ; 2 uses
  %i.ciz = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.ciy
  %i.cja = load float, ptr %i.ciz, align 4, !tbaa !62
  %i.cjb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ciy
  %i.cjc = load float, ptr %i.cjb, align 4, !tbaa !62
  %i.cjd = zext i8 %i.civ to i64
  %i.cje = getelementptr inbounds nuw [2 x i8], ptr %i.bd, i64 %i.cjd
  %i.cjf = load i16, ptr %i.cje, align 2, !tbaa !60
  %i.cjg = uitofp nsz i16 %i.cjf to float
  %i.cjh = fsub nsz float %i.cjg, %i.cja
  %i.cji = fmul nsz float %i.cjc, %i.cjh
  %i.cjj = call i64 @llvm.lrint.i64.f32(float %i.cji) ; 2 uses
  %i.cjk = trunc i64 %i.cjj to i32                ; 2 uses
  %.not.i345.i = icmp ult i32 %i.cjk, 65536
  %isnotneg.i.i = icmp sgt i32 %i.cjk, -1
  %i.cjl = sext i1 %isnotneg.i.i to i16
  %i.cjm = trunc i64 %i.cjj to i16
  %.0.i346.i = select i1 %.not.i345.i, i16 %i.cjm, i16 %i.cjl
  %i.cjn = lshr i16 %.0.i346.i, 8
  %i.cjo = trunc nuw i16 %i.cjn to i8
  store i8 %i.cjo, ptr %.0.i569.i, align 1, !tbaa !67
  %i.cjp = add nuw nsw i32 %.3.i567.i, 1          ; 2 uses
  %i.cjq = icmp slt i32 %i.cjp, %i.cfz
  br i1 %i.cjq, label %.preheader475.i, label %dng_blit.exit.i, !llvm.loop !3

dng_blit.exit.i:                                  ; preds = %.preheader475.i, %.preheader.i, %.preheader488.i, %.preheader489.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.pr

bb.pr:                                            ; preds = %dng_blit.exit.i, %horizontal_fill.exit363.i
  %i.cjr = getelementptr inbounds i8, ptr %.1305576.i, i64 %i.byl
  br label %.loopexit504.i

.lr.ph550.i:                                      ; preds = %.lr.ph550.i.preheader.a, %horizontal_fill.exit.i
  %.0290549.i = phi i32 [ %.1291.i, %horizontal_fill.exit.i ], [ 0, %.lr.ph550.i.preheader.a ] ; 11 uses
  %.2306548.i = phi ptr [ %.4308.i, %horizontal_fill.exit.i ], [ %.1305576.i, %.lr.ph550.i.preheader.a ] ; 10 uses
  %i.cjs = ptrtoint ptr %.2306548.i to i64
  %i.cjt = sub i64 %i.byk, %i.cjs
  %i.cju = icmp slt i64 %i.cjt, 2
  br i1 %i.cju, label %bb.ps, label %bb.pt

bb.ps:                                            ; preds = %.lr.ph550.i
  %i.cjv = load ptr, ptr %i.bo, align 8, !tbaa !43
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.cjv, i32 noundef 16, ptr noundef nonnull @.str.1841) #16
  br label %tiff_unpack_strip.exit.thread

bb.pt:                                            ; preds = %.lr.ph550.i
  %i.cjw = load i32, ptr %i.aw, align 4, !tbaa !201
  %.not334.i = icmp eq i32 %i.cjw, 0
  br i1 %.not334.i, label %bb.pv, label %bb.pu

bb.pu:                                            ; preds = %bb.pt
  %i.cjx = load i8, ptr %.2306548.i, align 1, !tbaa !67
  %i.cjy = zext i8 %i.cjx to i64
  %i.cjz = getelementptr inbounds nuw i8, ptr @ff_reverse, i64 %i.cjy
  br label %bb.pv

bb.pv:                                            ; preds = %bb.pu, %bb.pt
  %.in.in.i = phi ptr [ %i.cjz, %bb.pu ], [ %.2306548.i, %bb.pt ]
  %.in.i = load i8, ptr %.in.in.i, align 1, !tbaa !67 ; 7 uses
  %i.cka = sext i8 %.in.i to i32                  ; 2 uses
  %.3307.i = getelementptr i8, ptr %.2306548.i, i64 1 ; 9 uses
  %i.ckb = icmp sgt i8 %.in.i, -1
  br i1 %i.ckb, label %bb.pw, label %bb.qc

bb.pw:                                            ; preds = %bb.pv
  %i.ckc = add nuw nsw i32 %i.cka, 1              ; 3 uses
  %i.ckd = add nsw i32 %i.ckc, %.0290549.i        ; 2 uses
  %i.cke = icmp sgt i32 %i.ckd, %.2.i
  br i1 %i.cke, label %._crit_edge673.i, label %bb.px

._crit_edge673.i:                                 ; preds = %bb.pw
  %.pre674.i = load ptr, ptr %i.bo, align 8, !tbaa !43
  br label %split.i

bb.px:                                            ; preds = %bb.pw
  %i.ckf = ptrtoint ptr %.3307.i to i64
  %i.ckg = sub i64 %i.byk, %i.ckf
  %i.ckh = zext nneg i32 %i.ckc to i64            ; 3 uses
  %i.cki = icmp slt i64 %i.ckg, %i.ckh
  %.pre675.i = load ptr, ptr %i.bo, align 8, !tbaa !43 ; 2 uses
  br i1 %i.cki, label %split.i, label %bb.py

split.i:                                          ; preds = %bb.px, %._crit_edge673.i
  %i.ckj = phi ptr [ %.pre674.i, %._crit_edge673.i ], [ %.pre675.i, %bb.px ]
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ckj, i32 noundef 16, ptr noundef nonnull @.str.1842) #16
  br label %tiff_unpack_strip.exit.thread

bb.py:                                            ; preds = %bb.px
  %i.ckk = load i32, ptr %i.as, align 8, !tbaa !55
  %i.ckl = getelementptr inbounds nuw i8, ptr %.pre675.i, i64 136
  %i.ckm = load i32, ptr %i.ckl, align 8, !tbaa !82
  %i.ckn = icmp eq i32 %i.ckm, 11
  %i.cko = select i1 %i.ckn, i32 %i.ckk, i32 0    ; 5 uses
  switch i32 %i.cko, label %bb.qb [
    i32 1, label %.lr.ph547.preheader.i
    i32 2, label %.lr.ph545.preheader.i
    i32 4, label %.lr.ph543.preheader.i.a
    i32 10, label %bb.pz
    i32 12, label %bb.pz
    i32 14, label %bb.pz
  ]

.lr.ph543.preheader.i.a:                          ; preds = %bb.py
  %narrow717.i = add nuw i8 %.in.i, 1
  %i.ckp = zext i8 %narrow717.i to i64            ; 8 uses
  %i.ckq = sext i32 %.0290549.i to i64            ; 4 uses
  %min.iters.check3384 = icmp ult i8 %.in.i, 7
  br i1 %min.iters.check3384, label %.lr.ph543.i.preheader, label %vector.memcheck3385

vector.memcheck3385:                              ; preds = %.lr.ph543.preheader.i.a
  %i.ckr = shl nsw i64 %i.ckq, 1
  %i.cks = getelementptr i8, ptr %i.bzo, i64 %i.ckr
  %i.ckt = add nsw i64 %i.ckq, %i.ckp
  %i.cku = shl nsw i64 %i.ckt, 1
  %i.ckv = getelementptr i8, ptr %i.bzp, i64 %i.cku
  %i.ckw = getelementptr i8, ptr %.2306548.i, i64 %i.ckp
  %i.ckx = getelementptr i8, ptr %i.ckw, i64 1
  %bound03386 = icmp ult ptr %i.cks, %i.ckx
  %bound13387 = icmp ult ptr %.3307.i, %i.ckv
  %found.conflict3388 = and i1 %bound03386, %bound13387
  br i1 %found.conflict3388, label %.lr.ph543.i.preheader, label %vector.ph3389

vector.ph3389:                                    ; preds = %vector.memcheck3385
  %n.vec3390 = and i64 %i.ckp, 248                ; 2 uses
  %i.cky = and i64 %i.ckp, 7
  %invariant.op4027 = add nsw i64 -1, %i.ckq
  br label %vector.body3391

vector.body3391:                                  ; preds = %vector.body3391, %vector.ph3389
  %index3392 = phi i64 [ 0, %vector.ph3389 ], [ %index.next3400, %vector.body3391 ] ; 2 uses
  %i.ckz = sub i64 %i.ckp, %index3392             ; 2 uses
  %i.cla = getelementptr i8, ptr %.2306548.i, i64 %i.ckz
  %i.clb = getelementptr i8, ptr %i.cla, i64 -7
  %wide.load3393 = load <8 x i8>, ptr %i.clb, align 1, !tbaa !67, !alias.scope !263 ; 2 uses
  %i.clc = and <8 x i8> %wide.load3393, splat (i8 15)
  %.reass4028 = add nsw i64 %i.ckz, %invariant.op4027
  %i.cld = shl nsw i64 %.reass4028, 1
  %i.cle = getelementptr i8, ptr %.4578.i, i64 %i.cld
  %i.clf = lshr <8 x i8> %wide.load3393, splat (i8 4)
  %i.clg = getelementptr i8, ptr %i.cle, i64 -14
  %interleaved.vec3399 = shufflevector <8 x i8> %i.clf, <8 x i8> %i.clc, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec3399, ptr %i.clg, align 1, !tbaa !67, !alias.scope !264, !noalias !263
  %index.next3400 = add nuw i64 %index3392, 8     ; 2 uses
  %i.clh = icmp eq i64 %index.next3400, %n.vec3390
  br i1 %i.clh, label %middle.block3401, label %vector.body3391, !llvm.loop !135

middle.block3401:                                 ; preds = %vector.body3391
  %cmp.n3402 = icmp eq i64 %n.vec3390, %i.ckp
  br i1 %cmp.n3402, label %horizontal_fill.exit357.i, label %.lr.ph543.i.preheader

.lr.ph543.i.preheader:                            ; preds = %vector.memcheck3385, %.lr.ph543.preheader.i.a, %middle.block3401
  %indvars.iv632.i.ph = phi i64 [ %i.ckp, %vector.memcheck3385 ], [ %i.ckp, %.lr.ph543.preheader.i.a ], [ %i.cky, %middle.block3401 ]
  br label %.lr.ph543.i

.lr.ph545.preheader.i:                            ; preds = %bb.py
  %narrow718.i = add nuw i8 %.in.i, 1
  %i.cli = zext i8 %narrow718.i to i64
  %i.clj = sext i32 %.0290549.i to i64
  br label %.lr.ph545.i

.lr.ph547.preheader.i:                            ; preds = %bb.py
  %narrow719.i = add nuw i8 %.in.i, 1
  %i.clk = zext i8 %narrow719.i to i64
  %i.cll = sext i32 %.0290549.i to i64
  br label %.lr.ph547.i

.lr.ph547.i:                                      ; preds = %.lr.ph547.i, %.lr.ph547.preheader.i
  %indvars.iv638.i = phi i64 [ %i.clk, %.lr.ph547.preheader.i ], [ %indvars.iv.next639.i, %.lr.ph547.i ] ; 3 uses
  %indvars.iv.next639.i = add nsw i64 %indvars.iv638.i, -1 ; 2 uses
  %i.clm = getelementptr i8, ptr %.2306548.i, i64 %indvars.iv638.i ; 8 uses
  %i.cln = load i8, ptr %i.clm, align 1, !tbaa !67
  %i.clo = and i8 %i.cln, 1
  %i.clp = add nsw i64 %indvars.iv.next639.i, %i.cll
  %i.clq = shl nsw i64 %i.clp, 3
  %i.clr = getelementptr i8, ptr %.4578.i, i64 %i.clq ; 8 uses
  %i.cls = getelementptr i8, ptr %i.clr, i64 7
  store i8 %i.clo, ptr %i.cls, align 1, !tbaa !67
  %i.clt = load i8, ptr %i.clm, align 1, !tbaa !67
  %i.clu = lshr i8 %i.clt, 1
  %i.clv = and i8 %i.clu, 1
  %i.clw = getelementptr i8, ptr %i.clr, i64 6
  store i8 %i.clv, ptr %i.clw, align 1, !tbaa !67
  %i.clx = load i8, ptr %i.clm, align 1, !tbaa !67
  %i.cly = lshr i8 %i.clx, 2
  %i.clz = and i8 %i.cly, 1
  %i.cma = getelementptr i8, ptr %i.clr, i64 5
  store i8 %i.clz, ptr %i.cma, align 1, !tbaa !67
  %i.cmb = load i8, ptr %i.clm, align 1, !tbaa !67
  %i.cmc = lshr i8 %i.cmb, 3
  %i.cmd = and i8 %i.cmc, 1
  %i.cme = getelementptr i8, ptr %i.clr, i64 4
  store i8 %i.cmd, ptr %i.cme, align 1, !tbaa !67
  %i.cmf = load i8, ptr %i.clm, align 1, !tbaa !67
  %i.cmg = lshr i8 %i.cmf, 4
  %i.cmh = and i8 %i.cmg, 1
end_hunk_0
