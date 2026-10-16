Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/tiff?download=true
inline.NumInlined: 42
inline.NumDeleted: 19
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 53
begin_hunk_0_@decode_frame:bb.a
  %i.cbw = load i8, ptr %i.cbm, align 1, !tbaa !67
  %i.cbx = lshr i8 %i.cbw, 4
  %i.cby = and i8 %i.cbx, 3
  %i.cbz = getelementptr i8, ptr %i.cbq, i64 1
  store i8 %i.cby, ptr %i.cbz, align 1, !tbaa !67
  %i.cca = load i8, ptr %i.cbm, align 1, !tbaa !67
  %i.ccb = lshr i8 %i.cca, 6
  store i8 %i.ccb, ptr %i.cbq, align 1, !tbaa !67
  %i.ccc = icmp samesign ugt i64 %indvars.iv659.i, 1
  br i1 %i.ccc, label %.lr.ph562.i, label %horizontal_fill.exit363.i, !llvm.loop !112

.lr.ph560.i:                                      ; preds = %.lr.ph560.i.preheader3476, %.lr.ph560.i
  %indvars.iv656.i = phi i64 [ %indvars.iv.next657.i, %.lr.ph560.i ], [ %indvars.iv656.i.ph, %.lr.ph560.i.preheader3476 ] ; 2 uses
  %indvars.iv.next657.i = add nsw i64 %indvars.iv656.i, -1 ; 3 uses
  %i.ccd = getelementptr inbounds nuw i8, ptr %.1305576.i, i64 %indvars.iv.next657.i ; 2 uses
  %i.cce = load i8, ptr %i.ccd, align 1, !tbaa !67
  %i.ccf = and i8 %i.cce, 15
  %i.ccg = shl nuw nsw i64 %indvars.iv.next657.i, 1
  %i.cch = getelementptr i8, ptr %.4578.i, i64 %i.ccg ; 2 uses
  %i.cci = getelementptr i8, ptr %i.cch, i64 1
  store i8 %i.ccf, ptr %i.cci, align 1, !tbaa !67
  %i.ccj = load i8, ptr %i.ccd, align 1, !tbaa !67
  %i.cck = lshr i8 %i.ccj, 4
  store i8 %i.cck, ptr %i.cch, align 1, !tbaa !67
  %i.ccl = icmp samesign ugt i64 %indvars.iv656.i, 1
  br i1 %i.ccl, label %.lr.ph560.i, label %horizontal_fill.exit363.i, !llvm.loop !129

bb.pm:                                            ; preds = %bb.pl, %bb.pl, %bb.pl
  %i.ccm = load i32, ptr %i.dp, align 8, !tbaa !65 ; 4 uses
  %i.ccn = icmp sgt i32 %i.ccm, 0
  br i1 %i.ccn, label %.lr.ph558.i, label %horizontal_fill.exit363.i

.lr.ph558.i:                                      ; preds = %bb.pm
  %i.cco = sub nuw nsw i32 16, %i.bzp
  %i.ccp = load i32, ptr %i.ap, align 4, !tbaa !197
  %i.ccq = add i32 %i.ccp, -1
  %spec.select.i358.i = icmp ult i32 %i.ccq, 2
  %i.ccr = sub nuw nsw i32 32, %i.bzp             ; 3 uses
  %i.ccs = select i1 %spec.select.i358.i, i32 0, i32 %i.cco ; 3 uses
  %wide.trip.count654.i = zext nneg i32 %i.ccm to i64 ; 2 uses
  %xtraiter3747 = and i64 %wide.trip.count654.i, 1
  %i.cct = icmp eq i32 %i.ccm, 1
  br i1 %i.cct, label %.epil.preheader3746, label %.lr.ph558.i.new

.lr.ph558.i.new:                                  ; preds = %.lr.ph558.i
  %unroll_iter3751 = and i64 %wide.trip.count654.i, 2147483646
  br label %bb.pn

bb.pn:                                            ; preds = %bb.pn, %.lr.ph558.i.new
  %indvars.iv651.i = phi i64 [ 0, %.lr.ph558.i.new ], [ %indvars.iv.next652.i.1, %bb.pn ] ; 3 uses
  %.sroa.4457.0555.i = phi i32 [ 0, %.lr.ph558.i.new ], [ %i.cdq, %bb.pn ] ; 3 uses
  %niter3752 = phi i64 [ 0, %.lr.ph558.i.new ], [ %niter3752.next.1, %bb.pn ]
  %i.ccu = lshr i32 %.sroa.4457.0555.i, 3
  %i.ccv = zext nneg i32 %i.ccu to i64
  %i.ccw = getelementptr inbounds nuw i8, ptr %.1305576.i, i64 %i.ccv
  %i.ccx = load i32, ptr %i.ccw, align 1, !tbaa !67
  %i.ccy = call i32 @llvm.bswap.i32(i32 %i.ccx)
  %i.ccz = and i32 %.sroa.4457.0555.i, 7
  %i.cda = shl i32 %i.ccy, %i.ccz
  %i.cdb = lshr i32 %i.cda, %i.ccr
  %i.cdc = add i32 %.sroa.4457.0555.i, %i.bzp
  %i.cdd = call i32 @llvm.umin.i32(i32 %i.byr, i32 %i.cdc) ; 3 uses
  %i.cde = shl nuw nsw i32 %i.cdb, %i.ccs
  %i.cdf = trunc i32 %i.cde to i16
  %i.cdg = getelementptr inbounds nuw [2 x i8], ptr %.4578.i, i64 %indvars.iv651.i
  store i16 %i.cdf, ptr %i.cdg, align 2, !tbaa !60
  %i.cdh = lshr i32 %i.cdd, 3
  %i.cdi = zext nneg i32 %i.cdh to i64
  %i.cdj = getelementptr inbounds nuw i8, ptr %.1305576.i, i64 %i.cdi
  %i.cdk = load i32, ptr %i.cdj, align 1, !tbaa !67
  %i.cdl = call i32 @llvm.bswap.i32(i32 %i.cdk)
  %i.cdm = and i32 %i.cdd, 7
  %i.cdn = shl i32 %i.cdl, %i.cdm
  %i.cdo = lshr i32 %i.cdn, %i.ccr
  %i.cdp = add i32 %i.cdd, %i.bzp
  %i.cdq = call i32 @llvm.umin.i32(i32 %i.byr, i32 %i.cdp) ; 2 uses
  %i.cdr = shl nuw nsw i32 %i.cdo, %i.ccs
  %i.cds = trunc i32 %i.cdr to i16
  %i.cdt = getelementptr inbounds nuw [2 x i8], ptr %.4578.i, i64 %indvars.iv651.i
  %i.cdu = getelementptr inbounds nuw i8, ptr %i.cdt, i64 2
  store i16 %i.cds, ptr %i.cdu, align 2, !tbaa !60
  %indvars.iv.next652.i.1 = add nuw nsw i64 %indvars.iv651.i, 2 ; 2 uses
  %niter3752.next.1 = add i64 %niter3752, 2       ; 2 uses
  %niter3752.ncmp.1 = icmp eq i64 %niter3752.next.1, %unroll_iter3751
  br i1 %niter3752.ncmp.1, label %horizontal_fill.exit363.i.loopexit3478.unr-lcssa, label %bb.pn, !llvm.loop !123

.thread472.i:                                     ; preds = %bb.pl, %bb.pk
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.4578.i, ptr align 1 %.1305576.i, i64 %i.byj, i1 false)
  br label %horizontal_fill.exit363.i

.lr.ph554.i:                                      ; preds = %.lr.ph554.i.preheader, %.lr.ph554.i
  %indvars.iv646.i = phi i64 [ %indvars.iv.next647.i.3, %.lr.ph554.i ], [ 0, %.lr.ph554.i.preheader ] ; 6 uses
  %niter3745 = phi i64 [ %niter3745.next.3, %.lr.ph554.i ], [ 0, %.lr.ph554.i.preheader ]
  %i.cdv = getelementptr inbounds nuw i8, ptr %.1305576.i, i64 %indvars.iv646.i
  %i.cdw = load i8, ptr %i.cdv, align 1, !tbaa !67
  %i.cdx = zext i8 %i.cdw to i64
  %i.cdy = getelementptr inbounds nuw i8, ptr @ff_reverse, i64 %i.cdx
  %i.cdz = load i8, ptr %i.cdy, align 1, !tbaa !67
  %i.cea = getelementptr inbounds nuw i8, ptr %.4578.i, i64 %indvars.iv646.i
  store i8 %i.cdz, ptr %i.cea, align 1, !tbaa !67
  %indvars.iv.next647.i = or disjoint i64 %indvars.iv646.i, 1 ; 2 uses
  %i.ceb = getelementptr inbounds nuw i8, ptr %.1305576.i, i64 %indvars.iv.next647.i
  %i.cec = load i8, ptr %i.ceb, align 1, !tbaa !67
  %i.ced = zext i8 %i.cec to i64
  %i.cee = getelementptr inbounds nuw i8, ptr @ff_reverse, i64 %i.ced
  %i.cef = load i8, ptr %i.cee, align 1, !tbaa !67
  %i.ceg = getelementptr inbounds nuw i8, ptr %.4578.i, i64 %indvars.iv.next647.i
  store i8 %i.cef, ptr %i.ceg, align 1, !tbaa !67
  %indvars.iv.next647.i.1 = or disjoint i64 %indvars.iv646.i, 2 ; 2 uses
  %i.ceh = getelementptr inbounds nuw i8, ptr %.1305576.i, i64 %indvars.iv.next647.i.1
  %i.cei = load i8, ptr %i.ceh, align 1, !tbaa !67
  %i.cej = zext i8 %i.cei to i64
  %i.cek = getelementptr inbounds nuw i8, ptr @ff_reverse, i64 %i.cej
  %i.cel = load i8, ptr %i.cek, align 1, !tbaa !67
  %i.cem = getelementptr inbounds nuw i8, ptr %.4578.i, i64 %indvars.iv.next647.i.1
  store i8 %i.cel, ptr %i.cem, align 1, !tbaa !67
  %indvars.iv.next647.i.2 = or disjoint i64 %indvars.iv646.i, 3 ; 2 uses
  %i.cen = getelementptr inbounds nuw i8, ptr %.1305576.i, i64 %indvars.iv.next647.i.2
  %i.ceo = load i8, ptr %i.cen, align 1, !tbaa !67
  %i.cep = zext i8 %i.ceo to i64
  %i.ceq = getelementptr inbounds nuw i8, ptr @ff_reverse, i64 %i.cep
  %i.cer = load i8, ptr %i.ceq, align 1, !tbaa !67
  %i.ces = getelementptr inbounds nuw i8, ptr %.4578.i, i64 %indvars.iv.next647.i.2
  store i8 %i.cer, ptr %i.ces, align 1, !tbaa !67
  %indvars.iv.next647.i.3 = add nuw nsw i64 %indvars.iv646.i, 4 ; 2 uses
  %niter3745.next.3 = add i64 %niter3745, 4       ; 2 uses
  %niter3745.ncmp.3 = icmp eq i64 %niter3745.next.3, %unroll_iter3744
  br i1 %niter3745.ncmp.3, label %horizontal_fill.exit363.i.loopexit3479.unr-lcssa, label %.lr.ph554.i, !llvm.loop !130

horizontal_fill.exit363.i.loopexit3478.unr-lcssa: ; preds = %bb.pn
  %lcmp.mod3749.not = icmp eq i64 %xtraiter3747, 0
  br i1 %lcmp.mod3749.not, label %horizontal_fill.exit363.i, label %.epil.preheader3746

.epil.preheader3746:                              ; preds = %horizontal_fill.exit363.i.loopexit3478.unr-lcssa, %.lr.ph558.i
  %indvars.iv651.i.epil.init = phi i64 [ 0, %.lr.ph558.i ], [ %indvars.iv.next652.i.1, %horizontal_fill.exit363.i.loopexit3478.unr-lcssa ]
  %.sroa.4457.0555.i.epil.init = phi i32 [ 0, %.lr.ph558.i ], [ %i.cdq, %horizontal_fill.exit363.i.loopexit3478.unr-lcssa ] ; 2 uses
  %lcmp.mod3750 = trunc i32 %i.ccm to i1
  call void @llvm.assume(i1 %lcmp.mod3750)
  %i.cet = lshr i32 %.sroa.4457.0555.i.epil.init, 3
  %i.ceu = zext nneg i32 %i.cet to i64
  %i.cev = getelementptr inbounds nuw i8, ptr %.1305576.i, i64 %i.ceu
  %i.cew = load i32, ptr %i.cev, align 1, !tbaa !67
  %i.cex = call i32 @llvm.bswap.i32(i32 %i.cew)
  %i.cey = and i32 %.sroa.4457.0555.i.epil.init, 7
  %i.cez = shl i32 %i.cex, %i.cey
  %i.cfa = lshr i32 %i.cez, %i.ccr
  %i.cfb = shl nuw nsw i32 %i.cfa, %i.ccs
  %i.cfc = trunc i32 %i.cfb to i16
  %i.cfd = getelementptr inbounds nuw [2 x i8], ptr %.4578.i, i64 %indvars.iv651.i.epil.init
  store i16 %i.cfc, ptr %i.cfd, align 2, !tbaa !60
  br label %horizontal_fill.exit363.i

horizontal_fill.exit363.i.loopexit3479.unr-lcssa: ; preds = %.lr.ph554.i
  br i1 %lcmp.mod3742.not, label %horizontal_fill.exit363.i, label %.lr.ph554.i.epil.preheader

.lr.ph554.i.epil.preheader:                       ; preds = %horizontal_fill.exit363.i.loopexit3479.unr-lcssa, %.lr.ph554.i.preheader
  %indvars.iv646.i.epil.init = phi i64 [ 0, %.lr.ph554.i.preheader ], [ %indvars.iv.next647.i.3, %horizontal_fill.exit363.i.loopexit3479.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod3743)
  br label %.lr.ph554.i.epil

.lr.ph554.i.epil:                                 ; preds = %.lr.ph554.i.epil, %.lr.ph554.i.epil.preheader
  %indvars.iv646.i.epil = phi i64 [ %indvars.iv.next647.i.epil, %.lr.ph554.i.epil ], [ %indvars.iv646.i.epil.init, %.lr.ph554.i.epil.preheader ] ; 3 uses
  %epil.iter3741 = phi i64 [ %epil.iter3741.next, %.lr.ph554.i.epil ], [ 0, %.lr.ph554.i.epil.preheader ]
  %i.cfe = getelementptr inbounds nuw i8, ptr %.1305576.i, i64 %indvars.iv646.i.epil
  %i.cff = load i8, ptr %i.cfe, align 1, !tbaa !67
  %i.cfg = zext i8 %i.cff to i64
  %i.cfh = getelementptr inbounds nuw i8, ptr @ff_reverse, i64 %i.cfg
  %i.cfi = load i8, ptr %i.cfh, align 1, !tbaa !67
  %i.cfj = getelementptr inbounds nuw i8, ptr %.4578.i, i64 %indvars.iv646.i.epil
  store i8 %i.cfi, ptr %i.cfj, align 1, !tbaa !67
  %indvars.iv.next647.i.epil = add nuw nsw i64 %indvars.iv646.i.epil, 1
  %epil.iter3741.next = add i64 %epil.iter3741, 1 ; 2 uses
  %epil.iter3741.cmp.not = icmp eq i64 %epil.iter3741.next, %xtraiter3740
  br i1 %epil.iter3741.cmp.not, label %horizontal_fill.exit363.i, label %.lr.ph554.i.epil, !llvm.loop !131

horizontal_fill.exit363.i:                        ; preds = %horizontal_fill.exit363.i.loopexit3479.unr-lcssa, %.lr.ph554.i.epil, %.epil.preheader3746, %horizontal_fill.exit363.i.loopexit3478.unr-lcssa, %.lr.ph560.i, %.lr.ph562.i, %.lr.ph564.i, %middle.block3339, %.thread472.i, %bb.pm, %.preheader495.i, %.preheader496.i, %.preheader498.i, %.preheader501.i
  br i1 %spec.select.i, label %bb.po, label %bb.pr

bb.po:                                            ; preds = %horizontal_fill.exit363.i
  %i.cfk = load i32, ptr %i.as, align 8, !tbaa !55 ; 2 uses
  %i.cfl = load i32, ptr %i.at, align 4, !tbaa !56 ; 2 uses
  %i.cfm = udiv i32 %i.cfk, %i.cfl
  %i.cfn = icmp ugt i32 %i.cfm, 8                 ; 4 uses
  %i.cfo = select i1 %i.cfn, i32 %i.byn, i32 %.2.i
  %i.cfp = select i1 %i.cfn, i32 4, i32 3
  %i.cfq = shl i32 %i.cfo, %i.cfp
  %i.cfr = udiv i32 %i.cfq, %i.cfk
  %i.cfs = mul i32 %i.cfr, %i.cfl                 ; 4 uses
  %i.cft = zext i1 %i.cfn to i32
  %i.cfu = shl i32 %i.cfs, %i.cft
  %.not338.i = icmp sgt i32 %i.cfu, %i.byo
  br i1 %.not338.i, label %bb.pp, label %bb.pq

bb.pp:                                            ; preds = %bb.po
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.1840, ptr noundef nonnull @.str.1831, i32 noundef 921) #16
  call void @abort() #17
  unreachable

bb.pq:                                            ; preds = %bb.po
  %i.cfv = add nsw i32 %.2294582.i, %.121604
  %9 = and i32 %i.cfv, 1                          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.cfw = load i32, ptr %i.ay, align 8, !tbaa !59
  %.not.i.i = icmp eq i32 %i.cfw, 0
  %i.cfx = load i32, ptr %i.ax, align 4, !tbaa !58
  %i.cfy = uitofp nsz i32 %i.cfx to float         ; 5 uses
  br i1 %.not.i.i, label %.preheader491.i, label %.preheader493.i

.preheader493.i:                                  ; preds = %bb.pq
  %i.cfz = load i8, ptr %i.cu, align 8, !tbaa !67
  %i.cga = zext i8 %i.cfz to i64
  %i.cgb = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.cga
  %i.cgc = load float, ptr %i.cgb, align 4, !tbaa !62
  %i.cgd = load i8, ptr %i.cv, align 1, !tbaa !67
  %i.cge = zext i8 %i.cgd to i64
  %i.cgf = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.cge
  %i.cgg = load float, ptr %i.cgf, align 4, !tbaa !62
  %i.cgh = insertelement <2 x float> poison, float %i.cgc, i64 0
  %i.cgi = insertelement <2 x float> %i.cgh, float %i.cgg, i64 1
  %i.cgj = fmul nsz <2 x float> %i.cgi, splat (float 6.553500e+04)
  %i.cgk = load <2 x float>, ptr %i.be, align 4, !tbaa !62
  %i.cgl = insertelement <2 x float> poison, float %i.cfy, i64 0
  %i.cgm = shufflevector <2 x float> %i.cgl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cgn = fsub nsz <2 x float> %i.cgm, %i.cgk
  %i.cgo = fdiv nsz <2 x float> %i.cgj, %i.cgn
  %i.cgp = load i8, ptr %i.cw, align 2, !tbaa !67
  %i.cgq = zext i8 %i.cgp to i64
  %i.cgr = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.cgq
  %i.cgs = load float, ptr %i.cgr, align 4, !tbaa !62
  %i.cgt = fmul nsz float %i.cgs, 6.553500e+04
  %i.cgu = load float, ptr %i.axq, align 4, !tbaa !62
  %i.cgv = fsub nsz float %i.cfy, %i.cgu
  %i.cgw = fdiv nsz float %i.cgt, %i.cgv
  %i.cgx = load i8, ptr %i.cx, align 1, !tbaa !67
  %i.cgy = zext i8 %i.cgx to i64
  %i.cgz = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.cgy
  br label %.loopexit492.i

.preheader491.i:                                  ; preds = %bb.pq
  %i.cha = load <2 x float>, ptr %i.bi, align 4, !tbaa !62
  %i.chb = fmul nsz <2 x float> %i.cha, splat (float 6.553500e+04)
  %i.chc = load <2 x float>, ptr %i.be, align 4, !tbaa !62
  %i.chd = insertelement <2 x float> poison, float %i.cfy, i64 0
  %i.che = shufflevector <2 x float> %i.chd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.chf = fsub nsz <2 x float> %i.che, %i.chc
  %i.chg = fdiv nsz <2 x float> %i.chb, %i.chf
  %i.chh = load float, ptr %i.axu, align 4, !tbaa !62
  %i.chi = fmul nsz float %i.chh, 6.553500e+04
  %i.chj = load float, ptr %i.axq, align 4, !tbaa !62
  %i.chk = fsub nsz float %i.cfy, %i.chj
  %i.chl = fdiv nsz float %i.chi, %i.chk
  br label %.loopexit492.i

.loopexit492.i:                                   ; preds = %.preheader491.i, %.preheader493.i
  %.sink2843.in = phi ptr [ %i.axv, %.preheader491.i ], [ %i.cgz, %.preheader493.i ]
  %.sink = phi float [ %i.chl, %.preheader491.i ], [ %i.cgw, %.preheader493.i ]
  %i.chm = phi <2 x float> [ %i.chg, %.preheader491.i ], [ %i.cgo, %.preheader493.i ]
  %.sink2843 = load float, ptr %.sink2843.in, align 4, !tbaa !62
  %i.chn = fmul nsz float %.sink2843, 6.553500e+04
  %i.cho = load float, ptr %i.axs, align 8, !tbaa !62
  %i.chp = fsub nsz float %i.cfy, %i.cho
  %i.chq = fdiv nsz float %i.chn, %i.chp
  store <2 x float> %i.chm, ptr %i.a, align 16, !tbaa !62
  store float %.sink, ptr %i.axr, align 8, !tbaa !62
  store float %i.chq, ptr %i.axt, align 4, !tbaa !62
  %i.chr = icmp sgt i32 %i.cfs, 0                 ; 2 uses
  br i1 %i.cfn, label %.preheader488.i, label %.preheader489.i

.preheader489.i:                                  ; preds = %.loopexit492.i
  br i1 %i.chr, label %.lr.ph566.i, label %dng_blit.exit.i

.lr.ph566.i:                                      ; preds = %.preheader489.i
  %10 = shl nuw nsw i32 %9, 1
  br label %.preheader475.i

.preheader488.i:                                  ; preds = %.loopexit492.i
  br i1 %i.chr, label %.lr.ph570.i, label %dng_blit.exit.i

.lr.ph570.i:                                      ; preds = %.preheader488.i
  %11 = shl nuw nsw i32 %9, 1
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %.lr.ph570.i
  %.095.i573.i = phi ptr [ %.4578.i, %.lr.ph570.i ], [ %i.chs, %.preheader.i ] ; 3 uses
  %.2.i571.i = phi i32 [ 0, %.lr.ph570.i ], [ %i.cil, %.preheader.i ] ; 2 uses
  %i.chs = getelementptr i8, ptr %.095.i573.i, i64 2
  %i.cht = load i16, ptr %.095.i573.i, align 2, !tbaa !60
  %i.chu = and i32 %.2.i571.i, 1
  %i.chv = or disjoint i32 %i.chu, %11
  %i.chw = zext nneg i32 %i.chv to i64            ; 2 uses
  %i.chx = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.chw
  %i.chy = load float, ptr %i.chx, align 4, !tbaa !62
  %i.chz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.chw
  %i.cia = load float, ptr %i.chz, align 4, !tbaa !62
  %i.cib = zext i16 %i.cht to i64
  %i.cic = getelementptr inbounds nuw [2 x i8], ptr %i.bd, i64 %i.cib
  %i.cid = load i16, ptr %i.cic, align 2, !tbaa !60
  %i.cie = uitofp nsz i16 %i.cid to float
  %i.cif = fsub nsz float %i.cie, %i.chy
  %i.cig = fmul nsz float %i.cia, %i.cif
  %i.cih = call i64 @llvm.lrint.i64.f32(float %i.cig) ; 2 uses
  %i.cii = trunc i64 %i.cih to i32                ; 2 uses
  %.not.i347.i = icmp ult i32 %i.cii, 65536
  %isnotneg.i348.i = icmp sgt i32 %i.cii, -1
  %i.cij = sext i1 %isnotneg.i348.i to i16
  %i.cik = trunc i64 %i.cih to i16
  %.0.i349.i = select i1 %.not.i347.i, i16 %i.cik, i16 %i.cij
  store i16 %.0.i349.i, ptr %.095.i573.i, align 2, !tbaa !60
  %i.cil = add nuw nsw i32 %.2.i571.i, 1          ; 2 uses
  %i.cim = icmp slt i32 %i.cil, %i.cfs
  br i1 %i.cim, label %.preheader.i, label %dng_blit.exit.i, !llvm.loop !2

.preheader475.i:                                  ; preds = %.preheader475.i, %.lr.ph566.i
  %.0.i569.i = phi ptr [ %.4578.i, %.lr.ph566.i ], [ %i.cin, %.preheader475.i ] ; 3 uses
  %.3.i567.i = phi i32 [ 0, %.lr.ph566.i ], [ %i.cji, %.preheader475.i ] ; 2 uses
  %i.cin = getelementptr i8, ptr %.0.i569.i, i64 1
  %i.cio = load i8, ptr %.0.i569.i, align 1, !tbaa !67
  %i.cip = and i32 %.3.i567.i, 1
  %i.ciq = or disjoint i32 %i.cip, %10
  %i.cir = zext nneg i32 %i.ciq to i64            ; 2 uses
  %i.cis = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.cir
  %i.cit = load float, ptr %i.cis, align 4, !tbaa !62
  %i.ciu = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.cir
  %i.civ = load float, ptr %i.ciu, align 4, !tbaa !62
  %i.ciw = zext i8 %i.cio to i64
  %i.cix = getelementptr inbounds nuw [2 x i8], ptr %i.bd, i64 %i.ciw
  %i.ciy = load i16, ptr %i.cix, align 2, !tbaa !60
  %i.ciz = uitofp nsz i16 %i.ciy to float
  %i.cja = fsub nsz float %i.ciz, %i.cit
  %i.cjb = fmul nsz float %i.civ, %i.cja
  %i.cjc = call i64 @llvm.lrint.i64.f32(float %i.cjb) ; 2 uses
  %i.cjd = trunc i64 %i.cjc to i32                ; 2 uses
  %.not.i345.i = icmp ult i32 %i.cjd, 65536
  %isnotneg.i.i = icmp sgt i32 %i.cjd, -1
  %i.cje = sext i1 %isnotneg.i.i to i16
  %i.cjf = trunc i64 %i.cjc to i16
  %.0.i346.i = select i1 %.not.i345.i, i16 %i.cjf, i16 %i.cje
  %i.cjg = lshr i16 %.0.i346.i, 8
  %i.cjh = trunc nuw i16 %i.cjg to i8
  store i8 %i.cjh, ptr %.0.i569.i, align 1, !tbaa !67
  %i.cji = add nuw nsw i32 %.3.i567.i, 1          ; 2 uses
  %i.cjj = icmp slt i32 %i.cji, %i.cfs
  br i1 %i.cjj, label %.preheader475.i, label %dng_blit.exit.i, !llvm.loop !3

dng_blit.exit.i:                                  ; preds = %.preheader475.i, %.preheader.i, %.preheader488.i, %.preheader489.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.pr

bb.pr:                                            ; preds = %dng_blit.exit.i, %horizontal_fill.exit363.i
  %i.cjk = getelementptr inbounds i8, ptr %.1305576.i, i64 %i.byj
  br label %.loopexit504.i

.lr.ph550.i:                                      ; preds = %.preheader505.i, %horizontal_fill.exit.i
  %.0290549.i = phi i32 [ %.1291.i, %horizontal_fill.exit.i ], [ 0, %.preheader505.i ] ; 11 uses
  %.2306548.i = phi ptr [ %.4308.i, %horizontal_fill.exit.i ], [ %.1305576.i, %.preheader505.i ] ; 10 uses
  %i.cjl = ptrtoint ptr %.2306548.i to i64
  %i.cjm = sub i64 %i.byi, %i.cjl
  %i.cjn = icmp slt i64 %i.cjm, 2
  br i1 %i.cjn, label %bb.ps, label %bb.pt

bb.ps:                                            ; preds = %.lr.ph550.i
  %i.cjo = load ptr, ptr %i.bo, align 8, !tbaa !43
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.cjo, i32 noundef 16, ptr noundef nonnull @.str.1841) #16
  br label %tiff_unpack_strip.exit.thread

bb.pt:                                            ; preds = %.lr.ph550.i
  %i.cjp = load i32, ptr %i.aw, align 4, !tbaa !201
  %.not334.i = icmp eq i32 %i.cjp, 0
  br i1 %.not334.i, label %bb.pv, label %bb.pu

bb.pu:                                            ; preds = %bb.pt
  %i.cjq = load i8, ptr %.2306548.i, align 1, !tbaa !67
  %i.cjr = zext i8 %i.cjq to i64
  %i.cjs = getelementptr inbounds nuw i8, ptr @ff_reverse, i64 %i.cjr
  br label %bb.pv

bb.pv:                                            ; preds = %bb.pu, %bb.pt
  %.in.in.i = phi ptr [ %i.cjs, %bb.pu ], [ %.2306548.i, %bb.pt ]
  %.in.i = load i8, ptr %.in.in.i, align 1, !tbaa !67 ; 7 uses
  %i.cjt = sext i8 %.in.i to i32                  ; 2 uses
  %.3307.i = getelementptr i8, ptr %.2306548.i, i64 1 ; 9 uses
  %i.cju = icmp sgt i8 %.in.i, -1
  br i1 %i.cju, label %bb.pw, label %bb.qc

bb.pw:                                            ; preds = %bb.pv
  %i.cjv = add nuw nsw i32 %i.cjt, 1              ; 3 uses
  %i.cjw = add nsw i32 %i.cjv, %.0290549.i        ; 2 uses
  %i.cjx = icmp sgt i32 %i.cjw, %.2.i
  br i1 %i.cjx, label %._crit_edge673.i, label %bb.px

._crit_edge673.i:                                 ; preds = %bb.pw
  %.pre674.i = load ptr, ptr %i.bo, align 8, !tbaa !43
  br label %split.i

bb.px:                                            ; preds = %bb.pw
  %i.cjy = ptrtoint ptr %.3307.i to i64
  %i.cjz = sub i64 %i.byi, %i.cjy
  %i.cka = zext nneg i32 %i.cjv to i64            ; 3 uses
  %i.ckb = icmp slt i64 %i.cjz, %i.cka
  %.pre675.i = load ptr, ptr %i.bo, align 8, !tbaa !43 ; 2 uses
  br i1 %i.ckb, label %split.i, label %bb.py

split.i:                                          ; preds = %bb.px, %._crit_edge673.i
  %i.ckc = phi ptr [ %.pre674.i, %._crit_edge673.i ], [ %.pre675.i, %bb.px ]
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ckc, i32 noundef 16, ptr noundef nonnull @.str.1842) #16
  br label %tiff_unpack_strip.exit.thread

bb.py:                                            ; preds = %bb.px
  %i.ckd = load i32, ptr %i.as, align 8, !tbaa !55
  %i.cke = getelementptr inbounds nuw i8, ptr %.pre675.i, i64 136
  %i.ckf = load i32, ptr %i.cke, align 8, !tbaa !82
  %i.ckg = icmp eq i32 %i.ckf, 11
  %i.ckh = select i1 %i.ckg, i32 %i.ckd, i32 0    ; 5 uses
  switch i32 %i.ckh, label %bb.qb [
    i32 1, label %.lr.ph547.preheader.i
    i32 2, label %.lr.ph545.preheader.i
    i32 4, label %.lr.ph543.preheader.i.a
    i32 10, label %bb.pz
    i32 12, label %bb.pz
    i32 14, label %bb.pz
  ]

.lr.ph543.preheader.i.a:                          ; preds = %bb.py
  %narrow717.i = add nuw i8 %.in.i, 1
  %i.cki = zext i8 %narrow717.i to i64            ; 8 uses
  %i.ckj = sext i32 %.0290549.i to i64            ; 4 uses
  %min.iters.check3351 = icmp ult i8 %.in.i, 7
  br i1 %min.iters.check3351, label %.lr.ph543.i.preheader, label %vector.memcheck3342

vector.memcheck3342:                              ; preds = %.lr.ph543.preheader.i.a
  %i.ckk = shl nsw i64 %i.ckj, 1
  %scevgep3343 = getelementptr i8, ptr %.4578.i, i64 %i.ckk
  %i.ckl = add nsw i64 %i.ckj, %i.cki
  %i.ckm = shl nsw i64 %i.ckl, 1
  %scevgep3344 = getelementptr i8, ptr %.4578.i, i64 %i.ckm
  %scevgep3345 = getelementptr i8, ptr %.2306548.i, i64 1
  %scevgep3346 = getelementptr i8, ptr %scevgep3345, i64 %i.cki
  %bound03347 = icmp ult ptr %scevgep3343, %scevgep3346
  %bound13348 = icmp ult ptr %.3307.i, %scevgep3344
  %found.conflict3349 = and i1 %bound03347, %bound13348
  br i1 %found.conflict3349, label %.lr.ph543.i.preheader, label %vector.ph3352

vector.ph3352:                                    ; preds = %vector.memcheck3342
  %n.vec3353 = and i64 %i.cki, 248                ; 2 uses
  %i.ckn = and i64 %i.cki, 7
  %invariant.op3980 = add nsw i64 -1, %i.ckj
  br label %vector.body3354

vector.body3354:                                  ; preds = %vector.body3354, %vector.ph3352
  %index3355 = phi i64 [ 0, %vector.ph3352 ], [ %index.next3363, %vector.body3354 ] ; 2 uses
  %i.cko = sub i64 %i.cki, %index3355             ; 2 uses
  %i.ckp = getelementptr i8, ptr %.2306548.i, i64 %i.cko
  %i.ckq = getelementptr i8, ptr %i.ckp, i64 -7
  %wide.load3356 = load <8 x i8>, ptr %i.ckq, align 1, !tbaa !67, !alias.scope !263 ; 2 uses
  %i.ckr = and <8 x i8> %wide.load3356, splat (i8 15)
  %.reass3981 = add nsw i64 %i.cko, %invariant.op3980
  %i.cks = shl nsw i64 %.reass3981, 1
  %i.ckt = getelementptr i8, ptr %.4578.i, i64 %i.cks
  %i.cku = lshr <8 x i8> %wide.load3356, splat (i8 4)
  %i.ckv = getelementptr i8, ptr %i.ckt, i64 -14
  %interleaved.vec3362 = shufflevector <8 x i8> %i.cku, <8 x i8> %i.ckr, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec3362, ptr %i.ckv, align 1, !tbaa !67, !alias.scope !264, !noalias !263
  %index.next3363 = add nuw i64 %index3355, 8     ; 2 uses
  %i.ckw = icmp eq i64 %index.next3363, %n.vec3353
  br i1 %i.ckw, label %middle.block3364, label %vector.body3354, !llvm.loop !135

middle.block3364:                                 ; preds = %vector.body3354
  %cmp.n3365 = icmp eq i64 %n.vec3353, %i.cki
  br i1 %cmp.n3365, label %horizontal_fill.exit357.i, label %.lr.ph543.i.preheader

.lr.ph543.i.preheader:                            ; preds = %vector.memcheck3342, %.lr.ph543.preheader.i.a, %middle.block3364
  %indvars.iv632.i.ph = phi i64 [ %i.cki, %vector.memcheck3342 ], [ %i.cki, %.lr.ph543.preheader.i.a ], [ %i.ckn, %middle.block3364 ]
  br label %.lr.ph543.i

.lr.ph545.preheader.i:                            ; preds = %bb.py
  %narrow718.i = add nuw i8 %.in.i, 1
  %i.ckx = zext i8 %narrow718.i to i64
  %i.cky = sext i32 %.0290549.i to i64
  br label %.lr.ph545.i

.lr.ph547.preheader.i:                            ; preds = %bb.py
  %narrow719.i = add nuw i8 %.in.i, 1
  %i.ckz = zext i8 %narrow719.i to i64
  %i.cla = sext i32 %.0290549.i to i64
  br label %.lr.ph547.i

.lr.ph547.i:                                      ; preds = %.lr.ph547.i, %.lr.ph547.preheader.i
  %indvars.iv638.i = phi i64 [ %i.ckz, %.lr.ph547.preheader.i ], [ %indvars.iv.next639.i, %.lr.ph547.i ] ; 3 uses
  %indvars.iv.next639.i = add nsw i64 %indvars.iv638.i, -1 ; 2 uses
  %i.clb = getelementptr i8, ptr %.2306548.i, i64 %indvars.iv638.i ; 8 uses
  %i.clc = load i8, ptr %i.clb, align 1, !tbaa !67
  %i.cld = and i8 %i.clc, 1
  %i.cle = add nsw i64 %indvars.iv.next639.i, %i.cla
  %i.clf = shl nsw i64 %i.cle, 3
  %i.clg = getelementptr i8, ptr %.4578.i, i64 %i.clf ; 8 uses
  %i.clh = getelementptr i8, ptr %i.clg, i64 7
  store i8 %i.cld, ptr %i.clh, align 1, !tbaa !67
  %i.cli = load i8, ptr %i.clb, align 1, !tbaa !67
  %i.clj = lshr i8 %i.cli, 1
  %i.clk = and i8 %i.clj, 1
  %i.cll = getelementptr i8, ptr %i.clg, i64 6
  store i8 %i.clk, ptr %i.cll, align 1, !tbaa !67
  %i.clm = load i8, ptr %i.clb, align 1, !tbaa !67
  %i.cln = lshr i8 %i.clm, 2
  %i.clo = and i8 %i.cln, 1
  %i.clp = getelementptr i8, ptr %i.clg, i64 5
  store i8 %i.clo, ptr %i.clp, align 1, !tbaa !67
  %i.clq = load i8, ptr %i.clb, align 1, !tbaa !67
  %i.clr = lshr i8 %i.clq, 3
  %i.cls = and i8 %i.clr, 1
  %i.clt = getelementptr i8, ptr %i.clg, i64 4
  store i8 %i.cls, ptr %i.clt, align 1, !tbaa !67
  %i.clu = load i8, ptr %i.clb, align 1, !tbaa !67
  %i.clv = lshr i8 %i.clu, 4
  %i.clw = and i8 %i.clv, 1
end_hunk_0
