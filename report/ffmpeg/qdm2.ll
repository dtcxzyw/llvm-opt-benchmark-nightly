Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/qdm2?download=true
inline.NumInlined: 120
inline.NumDeleted: 32
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 43
begin_hunk_0_@qdm2_decode_frame:bb.a
  %i.bbx = trunc nuw i64 %indvars.iv144.i.i to i32
  br label %qdm2_fft_generate_tone.exit.i.i

qdm2_fft_generate_tone.exit.i.i:                  ; preds = %bb.ds, %qdm2_fft_generate_tone.exit.loopexit.split.loop.exit.i.i, %.preheader.i82.i
  %i.bby = phi i32 [ %i.awq, %.preheader.i82.i ], [ %i.axe, %qdm2_fft_generate_tone.exit.loopexit.split.loop.exit.i.i ], [ %i.bbu, %bb.ds ]
  %.0105.lcssa.i.i = phi i32 [ %i.aws, %.preheader.i82.i ], [ %i.bbx, %qdm2_fft_generate_tone.exit.loopexit.split.loop.exit.i.i ], [ %indvars.i.i, %bb.ds ]
  store i32 %.0105.lcssa.i.i, ptr %i.awr, align 4, !tbaa !57
  br label %bb.dt

bb.dt:                                            ; preds = %qdm2_fft_generate_tone.exit.i.i, %.preheader122.i.i
  %i.bbz = phi i32 [ %i.bby, %qdm2_fft_generate_tone.exit.i.i ], [ %i.awq, %.preheader122.i.i ]
  %indvars.iv.next148.i.i = add nuw nsw i64 %indvars.iv147.i.i, 1 ; 2 uses
  %exitcond151.not.i.i = icmp eq i64 %indvars.iv.next148.i.i, 4
  br i1 %exitcond151.not.i.i, label %qdm2_fft_tone_synthesizer.exit.i, label %.preheader122.i.i, !llvm.loop !112

qdm2_fft_tone_synthesizer.exit.i:                 ; preds = %bb.dt, %qdm2_decode_super_block.exit.i
  %i.bca = load i32, ptr %i.s, align 4, !tbaa !39 ; 3 uses
  %i.bcb = icmp sgt i32 %i.bca, 0
  br i1 %i.bcb, label %.lr.ph.i, label %qdm2_fft_tone_synthesizer.exit.._crit_edge_crit_edge.i

qdm2_fft_tone_synthesizer.exit.._crit_edge_crit_edge.i: ; preds = %qdm2_fft_tone_synthesizer.exit.i
  %.pre168.i = load i32, ptr %i.w, align 4, !tbaa !134
  br label %._crit_edge.i

.lr.ph.i:                                         ; preds = %qdm2_fft_tone_synthesizer.exit.i, %bb.dz
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.dz ], [ 0, %qdm2_fft_tone_synthesizer.exit.i ] ; 4 uses
  %i.bcc = phi i32 [ %i.bei, %bb.dz ], [ %i.bca, %qdm2_fft_tone_synthesizer.exit.i ]
  %i.bcd = icmp eq i32 %i.bcc, 1
  br i1 %i.bcd, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %.lr.ph.i
  %i.bce = load i32, ptr %i.e, align 16, !tbaa !40
  %i.bcf = icmp eq i32 %i.bce, 2
  %i.bcg = select nsz i1 %i.bcf, float 5.000000e-01, float 1.000000e+00
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %.lr.ph.i
  %i.bch = phi float [ 1.000000e+00, %.lr.ph.i ], [ %i.bcg, %bb.du ] ; 6 uses
  %i.bci = getelementptr inbounds nuw [2056 x i8], ptr %i.be, i64 %indvars.iv.i ; 5 uses
  %i.bcj = load float, ptr %i.bci, align 8, !tbaa !154
  %i.bck = fmul nsz float %i.bcj, 2.000000e+00
  store float %i.bck, ptr %i.bci, align 8, !tbaa !154
  %i.bcl = getelementptr inbounds nuw i8, ptr %i.bci, i64 4
  store float 0.000000e+00, ptr %i.bcl, align 4, !tbaa !155
  %i.bcm = load i32, ptr %i.bf, align 4, !tbaa !42
  %i.bcn = sext i32 %i.bcm to i64
  %i.bco = getelementptr inbounds [8 x i8], ptr %i.bci, i64 %i.bcn
  store <2 x float> zeroinitializer, ptr %i.bco, align 8, !tbaa !32
  %i.bcp = load ptr, ptr %i.bm, align 16, !tbaa !156
  %i.bcq = load ptr, ptr %i.bn, align 8, !tbaa !157
  %i.bcr = getelementptr inbounds nuw [2048 x i8], ptr %i.bo, i64 %indvars.iv.i ; 4 uses
  call void %i.bcp(ptr noundef %i.bcq, ptr noundef nonnull %i.bcr, ptr noundef nonnull %i.bci, i64 noundef 8) #11, !inline_history !113
  %i.bcs = load i32, ptr %i.bf, align 4, !tbaa !42 ; 2 uses
  %i.bct = icmp sgt i32 %i.bcs, 0
  br i1 %i.bct, label %.lr.ph.i95.i, label %qdm2_calculate_fft.exit.i

.lr.ph.i95.i:                                     ; preds = %bb.dv
  %i.bcu = add nuw i32 %i.bcs, 7
  %i.bcv = and i32 %i.bcu, -8
  %i.bcw = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv.i ; 2 uses
  %i.bcx = load i32, ptr %i.s, align 4, !tbaa !39 ; 2 uses
  %i.bcy = sext i32 %i.bcx to i64                 ; 3 uses
  %i.bcz = shl nsw i32 %i.bcx, 1
  %i.bda = sext i32 %i.bcz to i64                 ; 2 uses
  %smax.i.i = call i32 @llvm.smax.i32(i32 %i.bcv, i32 1) ; 3 uses
  %wide.trip.count.i96.i = zext nneg i32 %smax.i.i to i64 ; 2 uses
  %xtraiter296 = and i64 %wide.trip.count.i96.i, 1
  %i.bdb = icmp eq i32 %smax.i.i, 1
  br i1 %i.bdb, label %.epil.preheader295, label %.lr.ph.i95.i.new

.lr.ph.i95.i.new:                                 ; preds = %.lr.ph.i95.i
  %unroll_iter300 = and i64 %wide.trip.count.i96.i, 2147483640
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dw, %.lr.ph.i95.i.new
  %indvars.iv.i97.i = phi i64 [ 0, %.lr.ph.i95.i.new ], [ %indvars.iv.next.i98.i.1, %bb.dw ] ; 3 uses
  %.03536.i.i = phi ptr [ %i.bcw, %.lr.ph.i95.i.new ], [ %i.bdw, %bb.dw ] ; 4 uses
  %niter301 = phi i64 [ 0, %.lr.ph.i95.i.new ], [ %niter301.next.1, %bb.dw ]
  %i.bdc = getelementptr inbounds nuw [8 x i8], ptr %i.bcr, i64 %indvars.iv.i97.i ; 2 uses
  %i.bdd = load float, ptr %i.bdc, align 8, !tbaa !154
  %i.bde = load float, ptr %.03536.i.i, align 4, !tbaa !32
  %i.bdf = call nsz float @llvm.fmuladd.f32(float %i.bdd, float %i.bch, float %i.bde)
  store float %i.bdf, ptr %.03536.i.i, align 4, !tbaa !32
  %i.bdg = getelementptr inbounds nuw i8, ptr %i.bdc, i64 4
  %i.bdh = load float, ptr %i.bdg, align 4, !tbaa !155
  %i.bdi = getelementptr inbounds [4 x i8], ptr %.03536.i.i, i64 %i.bcy ; 2 uses
  %i.bdj = load float, ptr %i.bdi, align 4, !tbaa !32
  %i.bdk = call nsz float @llvm.fmuladd.f32(float %i.bdh, float %i.bch, float %i.bdj)
  store float %i.bdk, ptr %i.bdi, align 4, !tbaa !32
  %i.bdl = getelementptr inbounds [4 x i8], ptr %.03536.i.i, i64 %i.bda ; 4 uses
  %i.bdm = getelementptr inbounds nuw [8 x i8], ptr %i.bcr, i64 %indvars.iv.i97.i ; 2 uses
  %i.bdn = getelementptr inbounds nuw i8, ptr %i.bdm, i64 8
  %i.bdo = load float, ptr %i.bdn, align 8, !tbaa !154
  %i.bdp = load float, ptr %i.bdl, align 4, !tbaa !32
  %i.bdq = call nsz float @llvm.fmuladd.f32(float %i.bdo, float %i.bch, float %i.bdp)
  store float %i.bdq, ptr %i.bdl, align 4, !tbaa !32
  %i.bdr = getelementptr inbounds nuw i8, ptr %i.bdm, i64 12
  %i.bds = load float, ptr %i.bdr, align 4, !tbaa !155
  %i.bdt = getelementptr inbounds [4 x i8], ptr %i.bdl, i64 %i.bcy ; 2 uses
  %i.bdu = load float, ptr %i.bdt, align 4, !tbaa !32
  %i.bdv = call nsz float @llvm.fmuladd.f32(float %i.bds, float %i.bch, float %i.bdu)
  store float %i.bdv, ptr %i.bdt, align 4, !tbaa !32
  %i.bdw = getelementptr inbounds [4 x i8], ptr %i.bdl, i64 %i.bda ; 2 uses
  %indvars.iv.next.i98.i.1 = add nuw nsw i64 %indvars.iv.i97.i, 2 ; 2 uses
  %niter301.next.1 = add i64 %niter301, 2         ; 2 uses
  %niter301.ncmp.1 = icmp eq i64 %niter301.next.1, %unroll_iter300
  br i1 %niter301.ncmp.1, label %qdm2_calculate_fft.exit.i.loopexit.unr-lcssa, label %bb.dw, !llvm.loop !114

qdm2_calculate_fft.exit.i.loopexit.unr-lcssa:     ; preds = %bb.dw
  %lcmp.mod298.not = icmp eq i64 %xtraiter296, 0
  br i1 %lcmp.mod298.not, label %qdm2_calculate_fft.exit.i, label %.epil.preheader295

.epil.preheader295:                               ; preds = %qdm2_calculate_fft.exit.i.loopexit.unr-lcssa, %.lr.ph.i95.i
  %indvars.iv.i97.i.epil.init = phi i64 [ 0, %.lr.ph.i95.i ], [ %indvars.iv.next.i98.i.1, %qdm2_calculate_fft.exit.i.loopexit.unr-lcssa ]
  %.03536.i.i.epil.init = phi ptr [ %i.bcw, %.lr.ph.i95.i ], [ %i.bdw, %qdm2_calculate_fft.exit.i.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod299 = trunc i32 %smax.i.i to i1
  call void @llvm.assume(i1 %lcmp.mod299)
  %i.bdx = getelementptr inbounds nuw [8 x i8], ptr %i.bcr, i64 %indvars.iv.i97.i.epil.init ; 2 uses
  %i.bdy = load float, ptr %i.bdx, align 8, !tbaa !154
  %i.bdz = load float, ptr %.03536.i.i.epil.init, align 4, !tbaa !32
  %i.bea = call nsz float @llvm.fmuladd.f32(float %i.bdy, float %i.bch, float %i.bdz)
  store float %i.bea, ptr %.03536.i.i.epil.init, align 4, !tbaa !32
  %i.beb = getelementptr inbounds nuw i8, ptr %i.bdx, i64 4
  %i.bec = load float, ptr %i.beb, align 4, !tbaa !155
  %i.bed = getelementptr inbounds [4 x i8], ptr %.03536.i.i.epil.init, i64 %i.bcy ; 2 uses
  %i.bee = load float, ptr %i.bed, align 4, !tbaa !32
  %i.bef = call nsz float @llvm.fmuladd.f32(float %i.bec, float %i.bch, float %i.bee)
  store float %i.bef, ptr %i.bed, align 4, !tbaa !32
  br label %qdm2_calculate_fft.exit.i

qdm2_calculate_fft.exit.i:                        ; preds = %.epil.preheader295, %qdm2_calculate_fft.exit.i.loopexit.unr-lcssa, %bb.dv
  %i.beg = load i32, ptr %i.w, align 4, !tbaa !134 ; 2 uses
  %.not67.i = icmp eq i32 %i.beg, 0
  br i1 %.not67.i, label %bb.dx, label %bb.dz

bb.dx:                                            ; preds = %qdm2_calculate_fft.exit.i
  %i.beh = load ptr, ptr %i.bp, align 8, !tbaa !56
  %.not68.i = icmp eq ptr %i.beh, null
  br i1 %.not68.i, label %bb.dz, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 32, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17) #11
  br label %qdm2_decode.exit.thread

bb.dz:                                            ; preds = %bb.dx, %qdm2_calculate_fft.exit.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.bei = load i32, ptr %i.s, align 4, !tbaa !39 ; 3 uses
  %i.bej = sext i32 %i.bei to i64
  %i.bek = icmp slt i64 %indvars.iv.next.i, %i.bej
  br i1 %i.bek, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !115

._crit_edge.i:                                    ; preds = %bb.dz, %qdm2_fft_tone_synthesizer.exit.._crit_edge_crit_edge.i
  %i.bel = phi i32 [ %.pre168.i, %qdm2_fft_tone_synthesizer.exit.._crit_edge_crit_edge.i ], [ %i.beg, %bb.dz ]
  %.lcssa124.i = phi i32 [ %i.bca, %qdm2_fft_tone_synthesizer.exit.._crit_edge_crit_edge.i ], [ %i.bei, %bb.dz ] ; 7 uses
  %.not65.i = icmp eq i32 %i.bel, 0
  br i1 %.not65.i, label %bb.ea, label %bb.ed

bb.ea:                                            ; preds = %._crit_edge.i
  %i.bem = load i32, ptr %i.at, align 4, !tbaa !139
  %.not66.i = icmp eq i32 %i.bem, 0
  br i1 %.not66.i, label %bb.ed, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.ben = load i32, ptr %i.k, align 16, !tbaa !125 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i32 0, ptr %i.a, align 4, !tbaa !57
  %i.beo = load i32, ptr %i.aa, align 4, !tbaa !46 ; 2 uses
  %i.bep = icmp sgt i32 %i.beo, 1
  %i.beq = shl nuw nsw i32 8, %i.beo
  %spec.select.i100.i = select i1 %i.bep, i32 30, i32 %i.beq ; 2 uses
  %i.ber = icmp sgt i32 %.lcssa124.i, 0
  %i.bes = icmp samesign ult i32 %spec.select.i100.i, 32
  %or.cond.i101.i = select i1 %i.ber, i1 %i.bes, i1 false
  br i1 %or.cond.i101.i, label %.preheader58.preheader.i.i, label %.preheader56.i.i

.preheader58.preheader.i.i:                       ; preds = %bb.eb
  %i.bet = shl i32 %i.ben, 3
  %i.beu = sext i32 %i.bet to i64
  %i.bev = shl nsw i64 %i.beu, 7
  %i.bew = shl nuw nsw i32 %spec.select.i100.i, 2 ; 2 uses
  %i.bex = zext nneg i32 %i.bew to i64
  %narrow.i.i = sub nuw nsw i32 128, %i.bew
  %i.bey = zext nneg i32 %narrow.i.i to i64       ; 24 uses
  %wide.trip.count.i108.i = zext nneg i32 %.lcssa124.i to i64 ; 2 uses
  %i.bez = getelementptr i8, ptr %i.e, i64 %i.bev
  %i.bfa = getelementptr i8, ptr %i.bez, i64 %i.bex
  %i.bfb = getelementptr i8, ptr %i.bfa, i64 76112 ; 3 uses
  %xtraiter302 = and i64 %wide.trip.count.i108.i, 1
  %i.bfc = icmp eq i32 %.lcssa124.i, 1
  br i1 %i.bfc, label %.preheader58.i.i.epil.preheader, label %.preheader58.preheader.i.i.new

.preheader58.preheader.i.i.new:                   ; preds = %.preheader58.preheader.i.i
  %unroll_iter306 = and i64 %wide.trip.count.i108.i, 2147483646
  br label %.preheader58.i.i

.preheader58.i.i:                                 ; preds = %.preheader58.i.i, %.preheader58.preheader.i.i.new
  %indvar.i.i = phi i64 [ 0, %.preheader58.preheader.i.i.new ], [ %indvar.next.i.i.1, %.preheader58.i.i ] ; 3 uses
  %niter307 = phi i64 [ 0, %.preheader58.preheader.i.i.new ], [ %niter307.next.1, %.preheader58.i.i ]
  %i.bfd = shl nuw nsw i64 %indvar.i.i, 14
  %scevgep.i.i = getelementptr i8, ptr %i.bfb, i64 %i.bfd ; 8 uses
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i.i, i8 0, i64 range(i64 0, 129) %i.bey, i1 false), !tbaa !32
  %scevgep.1.i.i = getelementptr i8, ptr %scevgep.i.i, i64 128
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.1.i.i, i8 0, i64 range(i64 0, 129) %i.bey, i1 false), !tbaa !32
  %scevgep.2.i.i = getelementptr i8, ptr %scevgep.i.i, i64 256
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.2.i.i, i8 0, i64 range(i64 0, 129) %i.bey, i1 false), !tbaa !32
  %scevgep.3.i.i = getelementptr i8, ptr %scevgep.i.i, i64 384
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.3.i.i, i8 0, i64 range(i64 0, 129) %i.bey, i1 false), !tbaa !32
  %scevgep.4.i.i = getelementptr i8, ptr %scevgep.i.i, i64 512
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.4.i.i, i8 0, i64 range(i64 0, 129) %i.bey, i1 false), !tbaa !32
  %scevgep.5.i.i = getelementptr i8, ptr %scevgep.i.i, i64 640
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.5.i.i, i8 0, i64 range(i64 0, 129) %i.bey, i1 false), !tbaa !32
  %scevgep.6.i.i = getelementptr i8, ptr %scevgep.i.i, i64 768
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.6.i.i, i8 0, i64 range(i64 0, 129) %i.bey, i1 false), !tbaa !32
  %scevgep.7.i.i = getelementptr i8, ptr %scevgep.i.i, i64 896
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.7.i.i, i8 0, i64 range(i64 0, 129) %i.bey, i1 false), !tbaa !32
  %indvar.next.i.i = shl i64 %indvar.i.i, 14
  %i.bfe = getelementptr i8, ptr %i.bfb, i64 %indvar.next.i.i ; 8 uses
  %scevgep.i.i.1 = getelementptr i8, ptr %i.bfe, i64 16384
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i.i.1, i8 0, i64 range(i64 0, 129) %i.bey, i1 false), !tbaa !32
  %scevgep.1.i.i.1 = getelementptr i8, ptr %i.bfe, i64 16512
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.1.i.i.1, i8 0, i64 range(i64 0, 129) %i.bey, i1 false), !tbaa !32
  %scevgep.2.i.i.1 = getelementptr i8, ptr %i.bfe, i64 16640
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.2.i.i.1, i8 0, i64 range(i64 0, 129) %i.bey, i1 false), !tbaa !32
  %scevgep.3.i.i.1 = getelementptr i8, ptr %i.bfe, i64 16768
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.3.i.i.1, i8 0, i64 range(i64 0, 129) %i.bey, i1 false), !tbaa !32
  %scevgep.4.i.i.1 = getelementptr i8, ptr %i.bfe, i64 16896
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.4.i.i.1, i8 0, i64 range(i64 0, 129) %i.bey, i1 false), !tbaa !32
  %scevgep.5.i.i.1 = getelementptr i8, ptr %i.bfe, i64 17024
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.5.i.i.1, i8 0, i64 range(i64 0, 129) %i.bey, i1 false), !tbaa !32
  %scevgep.6.i.i.1 = getelementptr i8, ptr %i.bfe, i64 17152
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.6.i.i.1, i8 0, i64 range(i64 0, 129) %i.bey, i1 false), !tbaa !32
  %scevgep.7.i.i.1 = getelementptr i8, ptr %i.bfe, i64 17280
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.7.i.i.1, i8 0, i64 range(i64 0, 129) %i.bey, i1 false), !tbaa !32
  %indvar.next.i.i.1 = add nuw nsw i64 %indvar.i.i, 2 ; 2 uses
  %niter307.next.1 = add i64 %niter307, 2         ; 2 uses
  %niter307.ncmp.1 = icmp eq i64 %niter307.next.1, %unroll_iter306
  br i1 %niter307.ncmp.1, label %.preheader56.i.i.loopexit.unr-lcssa, label %.preheader58.i.i, !llvm.loop !116

.preheader56.i.i.loopexit.unr-lcssa:              ; preds = %.preheader58.i.i
  %lcmp.mod304.not = icmp eq i64 %xtraiter302, 0
  br i1 %lcmp.mod304.not, label %.preheader56.i.i, label %.preheader58.i.i.epil.preheader

.preheader58.i.i.epil.preheader:                  ; preds = %.preheader56.i.i.loopexit.unr-lcssa, %.preheader58.preheader.i.i
  %indvar.i.i.epil.init = phi i64 [ 0, %.preheader58.preheader.i.i ], [ %indvar.next.i.i.1, %.preheader56.i.i.loopexit.unr-lcssa ]
  %lcmp.mod305 = trunc i32 %.lcssa124.i to i1
  call void @llvm.assume(i1 %lcmp.mod305)
  %i.bff = shl nuw nsw i64 %indvar.i.i.epil.init, 14
  %scevgep.i.i.epil = getelementptr i8, ptr %i.bfb, i64 %i.bff ; 8 uses
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i.i.epil, i8 0, i64 range(i64 0, 129) %i.bey, i1 false), !tbaa !32
  %scevgep.1.i.i.epil = getelementptr i8, ptr %scevgep.i.i.epil, i64 128
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.1.i.i.epil, i8 0, i64 range(i64 0, 129) %i.bey, i1 false), !tbaa !32
  %scevgep.2.i.i.epil = getelementptr i8, ptr %scevgep.i.i.epil, i64 256
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.2.i.i.epil, i8 0, i64 range(i64 0, 129) %i.bey, i1 false), !tbaa !32
  %scevgep.3.i.i.epil = getelementptr i8, ptr %scevgep.i.i.epil, i64 384
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.3.i.i.epil, i8 0, i64 range(i64 0, 129) %i.bey, i1 false), !tbaa !32
  %scevgep.4.i.i.epil = getelementptr i8, ptr %scevgep.i.i.epil, i64 512
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.4.i.i.epil, i8 0, i64 range(i64 0, 129) %i.bey, i1 false), !tbaa !32
  %scevgep.5.i.i.epil = getelementptr i8, ptr %scevgep.i.i.epil, i64 640
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.5.i.i.epil, i8 0, i64 range(i64 0, 129) %i.bey, i1 false), !tbaa !32
  %scevgep.6.i.i.epil = getelementptr i8, ptr %scevgep.i.i.epil, i64 768
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.6.i.i.epil, i8 0, i64 range(i64 0, 129) %i.bey, i1 false), !tbaa !32
  %scevgep.7.i.i.epil = getelementptr i8, ptr %scevgep.i.i.epil, i64 896
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.7.i.i.epil, i8 0, i64 range(i64 0, 129) %i.bey, i1 false), !tbaa !32
  br label %.preheader56.i.i

.preheader56.i.i:                                 ; preds = %.preheader58.i.i.epil.preheader, %.preheader56.i.i.loopexit.unr-lcssa, %bb.eb
  %i.bfg = load i32, ptr %i.e, align 16, !tbaa !40 ; 3 uses
  %i.bfh = icmp sgt i32 %i.bfg, 0
  br i1 %i.bfh, label %.lr.ph.i104.i, label %._crit_edge66.i.i

.lr.ph.i104.i:                                    ; preds = %.preheader56.i.i
  %i.bfi = shl nsw i32 %i.ben, 3
  %i.bfj = sext i32 %i.bfi to i64
  %invariant.gep.i = getelementptr [128 x i8], ptr %i.ap, i64 %i.bfj
  br label %bb.ec

bb.ec:                                            ; preds = %bb.ec, %.lr.ph.i104.i
  %i.bfk = phi i32 [ %i.bfg, %.lr.ph.i104.i ], [ %i.bhf, %bb.ec ]
  %indvars.iv.i105.i = phi i64 [ 0, %.lr.ph.i104.i ], [ %indvars.iv.next.i106.i, %bb.ec ] ; 5 uses
  %i.bfl = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv.i105.i ; 2 uses
  %i.bfm = getelementptr inbounds nuw [4096 x i8], ptr %i.bs, i64 %indvars.iv.i105.i ; 8 uses
  %i.bfn = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv.i105.i ; 8 uses
  %i.bfo = sext i32 %i.bfk to i64
  %gep.i = getelementptr [16384 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i105.i ; 8 uses
  call void @ff_mpa_synth_filter_float(ptr noundef nonnull %i.br, ptr noundef nonnull %i.bfm, ptr noundef nonnull %i.bfn, ptr noundef nonnull @ff_mpa_synth_window_float, ptr noundef nonnull %i.a, ptr noundef nonnull %i.bfl, i64 noundef %i.bfo, ptr noundef nonnull %gep.i) #11
  %i.bfp = load i32, ptr %i.e, align 16, !tbaa !40 ; 2 uses
  %i.bfq = shl nsw i32 %i.bfp, 5
  %i.bfr = sext i32 %i.bfq to i64
  %i.bfs = getelementptr inbounds [4 x i8], ptr %i.bfl, i64 %i.bfr ; 2 uses
  %i.bft = sext i32 %i.bfp to i64
  %i.bfu = getelementptr i8, ptr %gep.i, i64 128
  call void @ff_mpa_synth_filter_float(ptr noundef nonnull %i.br, ptr noundef nonnull %i.bfm, ptr noundef nonnull %i.bfn, ptr noundef nonnull @ff_mpa_synth_window_float, ptr noundef nonnull %i.a, ptr noundef nonnull %i.bfs, i64 noundef %i.bft, ptr noundef nonnull %i.bfu) #11
  %i.bfv = load i32, ptr %i.e, align 16, !tbaa !40 ; 2 uses
  %i.bfw = shl nsw i32 %i.bfv, 5
  %i.bfx = sext i32 %i.bfw to i64
  %i.bfy = getelementptr inbounds [4 x i8], ptr %i.bfs, i64 %i.bfx ; 2 uses
  %i.bfz = sext i32 %i.bfv to i64
  %i.bga = getelementptr i8, ptr %gep.i, i64 256
  call void @ff_mpa_synth_filter_float(ptr noundef nonnull %i.br, ptr noundef nonnull %i.bfm, ptr noundef nonnull %i.bfn, ptr noundef nonnull @ff_mpa_synth_window_float, ptr noundef nonnull %i.a, ptr noundef nonnull %i.bfy, i64 noundef %i.bfz, ptr noundef nonnull %i.bga) #11
  %i.bgb = load i32, ptr %i.e, align 16, !tbaa !40 ; 2 uses
  %i.bgc = shl nsw i32 %i.bgb, 5
  %i.bgd = sext i32 %i.bgc to i64
  %i.bge = getelementptr inbounds [4 x i8], ptr %i.bfy, i64 %i.bgd ; 2 uses
  %i.bgf = sext i32 %i.bgb to i64
  %i.bgg = getelementptr i8, ptr %gep.i, i64 384
  call void @ff_mpa_synth_filter_float(ptr noundef nonnull %i.br, ptr noundef nonnull %i.bfm, ptr noundef nonnull %i.bfn, ptr noundef nonnull @ff_mpa_synth_window_float, ptr noundef nonnull %i.a, ptr noundef nonnull %i.bge, i64 noundef %i.bgf, ptr noundef nonnull %i.bgg) #11
  %i.bgh = load i32, ptr %i.e, align 16, !tbaa !40 ; 2 uses
  %i.bgi = shl nsw i32 %i.bgh, 5
  %i.bgj = sext i32 %i.bgi to i64
  %i.bgk = getelementptr inbounds [4 x i8], ptr %i.bge, i64 %i.bgj ; 2 uses
  %i.bgl = sext i32 %i.bgh to i64
  %i.bgm = getelementptr i8, ptr %gep.i, i64 512
  call void @ff_mpa_synth_filter_float(ptr noundef nonnull %i.br, ptr noundef nonnull %i.bfm, ptr noundef nonnull %i.bfn, ptr noundef nonnull @ff_mpa_synth_window_float, ptr noundef nonnull %i.a, ptr noundef nonnull %i.bgk, i64 noundef %i.bgl, ptr noundef nonnull %i.bgm) #11
  %i.bgn = load i32, ptr %i.e, align 16, !tbaa !40 ; 2 uses
  %i.bgo = shl nsw i32 %i.bgn, 5
  %i.bgp = sext i32 %i.bgo to i64
  %i.bgq = getelementptr inbounds [4 x i8], ptr %i.bgk, i64 %i.bgp ; 2 uses
  %i.bgr = sext i32 %i.bgn to i64
  %i.bgs = getelementptr i8, ptr %gep.i, i64 640
  call void @ff_mpa_synth_filter_float(ptr noundef nonnull %i.br, ptr noundef nonnull %i.bfm, ptr noundef nonnull %i.bfn, ptr noundef nonnull @ff_mpa_synth_window_float, ptr noundef nonnull %i.a, ptr noundef nonnull %i.bgq, i64 noundef %i.bgr, ptr noundef nonnull %i.bgs) #11
  %i.bgt = load i32, ptr %i.e, align 16, !tbaa !40 ; 2 uses
  %i.bgu = shl nsw i32 %i.bgt, 5
  %i.bgv = sext i32 %i.bgu to i64
  %i.bgw = getelementptr inbounds [4 x i8], ptr %i.bgq, i64 %i.bgv ; 2 uses
  %i.bgx = sext i32 %i.bgt to i64
  %i.bgy = getelementptr i8, ptr %gep.i, i64 768
  call void @ff_mpa_synth_filter_float(ptr noundef nonnull %i.br, ptr noundef nonnull %i.bfm, ptr noundef nonnull %i.bfn, ptr noundef nonnull @ff_mpa_synth_window_float, ptr noundef nonnull %i.a, ptr noundef nonnull %i.bgw, i64 noundef %i.bgx, ptr noundef nonnull %i.bgy) #11
  %i.bgz = load i32, ptr %i.e, align 16, !tbaa !40 ; 2 uses
  %i.bha = shl nsw i32 %i.bgz, 5
  %i.bhb = sext i32 %i.bha to i64
  %i.bhc = getelementptr inbounds [4 x i8], ptr %i.bgw, i64 %i.bhb
  %i.bhd = sext i32 %i.bgz to i64
  %i.bhe = getelementptr i8, ptr %gep.i, i64 896
  call void @ff_mpa_synth_filter_float(ptr noundef nonnull %i.br, ptr noundef nonnull %i.bfm, ptr noundef nonnull %i.bfn, ptr noundef nonnull @ff_mpa_synth_window_float, ptr noundef nonnull %i.a, ptr noundef nonnull %i.bhc, i64 noundef %i.bhd, ptr noundef nonnull %i.bhe) #11
  %indvars.iv.next.i106.i = add nuw nsw i64 %indvars.iv.i105.i, 1 ; 2 uses
  %i.bhf = load i32, ptr %i.e, align 16, !tbaa !40 ; 3 uses
  %i.bhg = sext i32 %i.bhf to i64
  %i.bhh = icmp slt i64 %indvars.iv.next.i106.i, %i.bhg
  br i1 %i.bhh, label %bb.ec, label %._crit_edge66.loopexit.i.i, !llvm.loop !117

._crit_edge66.loopexit.i.i:                       ; preds = %bb.ec
  %.pre.i107.i = load i32, ptr %i.s, align 4, !tbaa !39
  br label %._crit_edge66.i.i

._crit_edge66.i.i:                                ; preds = %._crit_edge66.loopexit.i.i, %.preheader56.i.i
  %i.bhi = phi i32 [ %.lcssa124.i, %.preheader56.i.i ], [ %.pre.i107.i, %._crit_edge66.loopexit.i.i ] ; 3 uses
  %.lcssa.i.i = phi i32 [ %i.bfg, %.preheader56.i.i ], [ %i.bhf, %._crit_edge66.loopexit.i.i ]
  %i.bhj = icmp sgt i32 %i.bhi, 0
  br i1 %i.bhj, label %.preheader.lr.ph.i.i, label %qdm2_synthesis_filter.exit.i

.preheader.lr.ph.i.i:                             ; preds = %._crit_edge66.i.i
  %i.bhk = load i32, ptr %i.l, align 4, !tbaa !45 ; 4 uses
  %i.bhl = icmp sgt i32 %i.bhk, 0
  br i1 %i.bhl, label %.preheader.preheader.i102.i, label %qdm2_synthesis_filter.exit.i

.preheader.preheader.i102.i:                      ; preds = %.preheader.lr.ph.i.i
  %i.bhm = load i32, ptr %i.aa, align 4, !tbaa !46
  %i.bhn = lshr i32 4, %i.bhm
  %i.bho = mul nsw i32 %i.bhn, %.lcssa.i.i
  %i.bhp = sext i32 %i.bho to i64                 ; 3 uses
  %i.bhq = zext nneg i32 %i.bhi to i64            ; 4 uses
  %wide.trip.count84.i.i = zext nneg i32 %i.bhk to i64 ; 2 uses
  %xtraiter309 = and i64 %wide.trip.count84.i.i, 1
  %i.bhr = icmp eq i32 %i.bhk, 1
  %unroll_iter313 = and i64 %wide.trip.count84.i.i, 2147483646
  %lcmp.mod311.not = icmp eq i64 %xtraiter309, 0
  %lcmp.mod312 = trunc i32 %i.bhk to i1
  br label %.preheader.i103.i

.preheader.i103.i:                                ; preds = %._crit_edge69.i.i, %.preheader.preheader.i102.i
  %indvars.iv86.i.i = phi i64 [ 0, %.preheader.preheader.i102.i ], [ %indvars.iv.next87.i.i, %._crit_edge69.i.i ] ; 3 uses
  %invariant.gep.i.i = getelementptr [4 x i8], ptr %i.bq, i64 %indvars.iv86.i.i ; 3 uses
  %invariant.gep95.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv86.i.i ; 3 uses
  br i1 %i.bhr, label %.epil.preheader308, label %.preheader.i103.i.new

.preheader.i103.i.new:                            ; preds = %.preheader.i103.i, %.preheader.i103.i.new
  %indvars.iv81.i.i = phi i64 [ %indvars.iv.next82.i.i.1, %.preheader.i103.i.new ], [ 0, %.preheader.i103.i ] ; 4 uses
  %niter314 = phi i64 [ %niter314.next.1, %.preheader.i103.i.new ], [ 0, %.preheader.i103.i ]
  %i.bhs = mul nsw i64 %indvars.iv81.i.i, %i.bhp
  %gep.i.i = getelementptr [4 x i8], ptr %invariant.gep.i.i, i64 %i.bhs
  %i.bht = load float, ptr %gep.i.i, align 4, !tbaa !32
  %i.bhu = mul nuw nsw i64 %indvars.iv81.i.i, %i.bhq
  %gep96.i.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep95.i.i, i64 %i.bhu ; 2 uses
  %i.bhv = load float, ptr %gep96.i.i, align 4, !tbaa !32
  %i.bhw = call nsz float @llvm.fmuladd.f32(float %i.bht, float f0x4B000000, float %i.bhv)
  store float %i.bhw, ptr %gep96.i.i, align 4, !tbaa !32
  %indvars.iv.next82.i.i = or disjoint i64 %indvars.iv81.i.i, 1 ; 2 uses
  %i.bhx = mul nsw i64 %indvars.iv.next82.i.i, %i.bhp
  %gep.i.i.1 = getelementptr [4 x i8], ptr %invariant.gep.i.i, i64 %i.bhx
  %i.bhy = load float, ptr %gep.i.i.1, align 4, !tbaa !32
  %i.bhz = mul nuw nsw i64 %indvars.iv.next82.i.i, %i.bhq
  %gep96.i.i.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep95.i.i, i64 %i.bhz ; 2 uses
  %i.bia = load float, ptr %gep96.i.i.1, align 4, !tbaa !32
  %i.bib = call nsz float @llvm.fmuladd.f32(float %i.bhy, float f0x4B000000, float %i.bia)
  store float %i.bib, ptr %gep96.i.i.1, align 4, !tbaa !32
  %indvars.iv.next82.i.i.1 = add nuw nsw i64 %indvars.iv81.i.i, 2 ; 2 uses
  %niter314.next.1 = add i64 %niter314, 2         ; 2 uses
  %niter314.ncmp.1 = icmp eq i64 %niter314.next.1, %unroll_iter313
  br i1 %niter314.ncmp.1, label %._crit_edge69.i.i.unr-lcssa, label %.preheader.i103.i.new, !llvm.loop !118

._crit_edge69.i.i.unr-lcssa:                      ; preds = %.preheader.i103.i.new
  br i1 %lcmp.mod311.not, label %._crit_edge69.i.i, label %.epil.preheader308

.epil.preheader308:                               ; preds = %._crit_edge69.i.i.unr-lcssa, %.preheader.i103.i
  %indvars.iv81.i.i.epil.init = phi i64 [ 0, %.preheader.i103.i ], [ %indvars.iv.next82.i.i.1, %._crit_edge69.i.i.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod312)
  %i.bic = mul nsw i64 %indvars.iv81.i.i.epil.init, %i.bhp
  %gep.i.i.epil = getelementptr [4 x i8], ptr %invariant.gep.i.i, i64 %i.bic
  %i.bid = load float, ptr %gep.i.i.epil, align 4, !tbaa !32
  %i.bie = mul nuw nsw i64 %indvars.iv81.i.i.epil.init, %i.bhq
  %gep96.i.i.epil = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep95.i.i, i64 %i.bie ; 2 uses
  %i.bif = load float, ptr %gep96.i.i.epil, align 4, !tbaa !32
  %i.big = call nsz float @llvm.fmuladd.f32(float %i.bid, float f0x4B000000, float %i.bif)
  store float %i.big, ptr %gep96.i.i.epil, align 4, !tbaa !32
  br label %._crit_edge69.i.i

._crit_edge69.i.i:                                ; preds = %._crit_edge69.i.i.unr-lcssa, %.epil.preheader308
  %indvars.iv.next87.i.i = add nuw nsw i64 %indvars.iv86.i.i, 1 ; 2 uses
  %exitcond90.not.i.i = icmp eq i64 %indvars.iv.next87.i.i, %i.bhq
  br i1 %exitcond90.not.i.i, label %qdm2_synthesis_filter.exit.i, label %.preheader.i103.i, !llvm.loop !119

qdm2_synthesis_filter.exit.i:                     ; preds = %._crit_edge69.i.i, %.preheader.lr.ph.i.i, %._crit_edge66.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.ed

bb.ed:                                            ; preds = %qdm2_synthesis_filter.exit.i, %bb.ea, %._crit_edge.i
  %i.bih = phi i32 [ %i.bhi, %qdm2_synthesis_filter.exit.i ], [ %.lcssa124.i, %bb.ea ], [ %.lcssa124.i, %._crit_edge.i ] ; 2 uses
  %i.bii = load i32, ptr %i.k, align 16, !tbaa !125
  %i.bij = add nsw i32 %i.bii, 1
  %i.bik = srem i32 %i.bij, 16
  store i32 %i.bik, ptr %i.k, align 16, !tbaa !125
  %.not144.i = icmp eq i32 %i.bw, 0
  br i1 %.not144.i, label %qdm2_decode.exit, label %.lr.ph143.i

.lr.ph143.i:                                      ; preds = %bb.ed, %bb.ej
  %indvars.iv163.i = phi i64 [ %indvars.iv.next164.i, %bb.ej ], [ 0, %bb.ed ] ; 3 uses
  %i.bil = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv163.i
  %i.bim = load float, ptr %i.bil, align 4, !tbaa !32
  %i.bin = fptosi float %i.bim to i32             ; 7 uses
  %i.bio = icmp sgt i32 %i.bin, 27600
  br i1 %i.bio, label %bb.ee, label %bb.eg

bb.ee:                                            ; preds = %.lr.ph143.i
  %i.bip = icmp samesign ugt i32 %i.bin, 35716
  br i1 %i.bip, label %bb.ej, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.biq = zext nneg i32 %i.bin to i64
  %i.bir = getelementptr [2 x i8], ptr @softclip_table, i64 %i.biq
  %i.bis = getelementptr i8, ptr %i.bir, i64 -55200
  %i.bit = load i16, ptr %i.bis, align 2, !tbaa !81
  %i.biu = zext i16 %i.bit to i32
  br label %bb.ej

bb.eg:                                            ; preds = %.lr.ph143.i
  %i.biv = icmp slt i32 %i.bin, -27600
  br i1 %i.biv, label %bb.eh, label %bb.ej

bb.eh:                                            ; preds = %bb.eg
  %i.biw = icmp samesign ult i32 %i.bin, -35716
  br i1 %i.biw, label %bb.ej, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
end_hunk_0
