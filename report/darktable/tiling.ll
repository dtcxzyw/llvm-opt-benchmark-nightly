Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/tiling?download=true
inline.NumInlined: 48
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 24
begin_hunk_0_@default_process_tiling:bb.a
  %i.bcc = call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.bcb)
  %i.bcd = fptosi float %i.bcc to i32
  br label %bb.ez

bb.ez:                                            ; preds = %bb.ey, %bb.ex
  %i.bce = phi i32 [ %i.bcd, %bb.ey ], [ 1, %bb.ex ] ; 5 uses
  %i.bcf = icmp slt i32 %.3.i, %i.bbj
  br i1 %i.bcf, label %bb.fa, label %bb.fb

bb.fa:                                            ; preds = %bb.ez
  %i.bcg = sitofp reassoc nsz arcp contract afn i32 %i.bbj to float
  %i.bch = uitofp nsz nneg i32 %i.bbx to float
  %i.bci = fdiv reassoc nsz arcp contract afn float %i.bcg, %i.bch
  %i.bcj = call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.bci)
  %i.bck = fptosi float %i.bcj to i32
  br label %bb.fb

bb.fb:                                            ; preds = %bb.fa, %bb.ez
  %i.bcl = phi i32 [ %i.bck, %bb.fa ], [ 1, %bb.ez ] ; 5 uses
  %i.bcm = mul nsw i32 %i.bcl, %i.bce
  %i.bcn = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3568), align 8, !tbaa !118
  %i.bco = icmp eq i32 %i.bcn, 3
  %i.bcp = select i1 %i.bco, i32 1073741824, i32 10000
  %i.bcq = icmp sgt i32 %i.bcm, %i.bcp
  br i1 %i.bcq, label %bb.fc, label %bb.fe

bb.fc:                                            ; preds = %bb.fb
  %i.bcr = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !91
  %i.bcs = and i32 %i.bcr, 41943040
  %.not339.i = icmp eq i32 %i.bcs, 0
  br i1 %.not339.i, label %bb.gc, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.bct = load ptr, ptr %i.awu, align 8, !tbaa !41
  %i.bcu = getelementptr inbounds nuw i8, ptr %i.bct, i64 644
  %i.bcv = load i32, ptr %i.bcu, align 4, !tbaa !117
  %i.bcw = call ptr @dt_dev_pixelpipe_type_to_str(i32 noundef %i.bcv) #11
  %i.bcx = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.bcy = call ptr @dt_iop_get_instance_id(ptr noundef nonnull %0) #11
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.31, ptr noundef %i.bcw, ptr noundef nonnull %i.bcx, ptr noundef %i.bcy, i32 noundef %i.bce, i32 noundef %i.bcl) #11
  br label %bb.gc

bb.fe:                                            ; preds = %bb.fb
  %i.bcz = sext i32 %.3311.i to i64               ; 3 uses
  %i.bda = sext i32 %.3.i to i64                  ; 4 uses
  %i.bdb = mul nsw i64 %i.bda, %i.bcz             ; 2 uses
  %i.bdc = sext i32 %6 to i64                     ; 3 uses
  %i.bdd = mul i64 %i.bdb, %i.bdc
  %i.bde = call ptr @dt_alloc_aligned(i64 noundef %i.bdd) #11 ; 10 uses
  %i.bdf = icmp eq ptr %i.bde, null
  br i1 %i.bdf, label %bb.ff, label %bb.fh

bb.ff:                                            ; preds = %bb.fe
  %i.bdg = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !91
  %i.bdh = and i32 %i.bdg, 8388608
  %.not338.i = icmp eq i32 %i.bdh, 0
  br i1 %.not338.i, label %bb.gc, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.bdi = load ptr, ptr %i.awu, align 8, !tbaa !41
  %i.bdj = getelementptr inbounds nuw i8, ptr %i.bdi, i64 644
  %i.bdk = load i32, ptr %i.bdj, align 4, !tbaa !117
  %i.bdl = call ptr @dt_dev_pixelpipe_type_to_str(i32 noundef %i.bdk) #11
  %i.bdm = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.bdn = call ptr @dt_iop_get_instance_id(ptr noundef nonnull %0) #11
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.32, ptr noundef %i.bdl, ptr noundef nonnull %i.bdm, ptr noundef %i.bdn) #11
  br label %bb.gc

bb.fh:                                            ; preds = %bb.fe
  %sext.i19 = shl i64 %i.aww, 32
  %i.bdo = ashr exact i64 %sext.i19, 32           ; 8 uses
  %i.bdp = mul i64 %i.bdb, %i.bdo
  %i.bdq = call ptr @dt_alloc_aligned(i64 noundef %i.bdp) #11 ; 8 uses
  %i.bdr = icmp eq ptr %i.bdq, null
  br i1 %i.bdr, label %bb.fi, label %bb.fk

bb.fi:                                            ; preds = %bb.fh
  %i.bds = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !91
  %i.bdt = and i32 %i.bds, 8388608
  %.not337.i = icmp eq i32 %i.bdt, 0
  br i1 %.not337.i, label %bb.gc, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.bdu = load ptr, ptr %i.awu, align 8, !tbaa !41
  %i.bdv = getelementptr inbounds nuw i8, ptr %i.bdu, i64 644
  %i.bdw = load i32, ptr %i.bdv, align 4, !tbaa !117
  %i.bdx = call ptr @dt_dev_pixelpipe_type_to_str(i32 noundef %i.bdw) #11
  %i.bdy = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.bdz = call ptr @dt_iop_get_instance_id(ptr noundef nonnull %0) #11
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.33, ptr noundef %i.bdx, ptr noundef nonnull %i.bdy, ptr noundef %i.bdz) #11
  br label %bb.gc

bb.fk:                                            ; preds = %bb.fh
  %i.bea = load ptr, ptr %i.awu, align 8, !tbaa !41 ; 3 uses
  %i.beb = getelementptr inbounds nuw i8, ptr %i.bea, i64 272
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %i.beb, i64 16, i1 false), !tbaa !45
  %i.bec = getelementptr inbounds nuw i8, ptr %i.bea, i64 624
  store i32 1, ptr %i.bec, align 16, !tbaa !120
  %i.bed = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !91
  %i.bee = and i32 %i.bed, 41943040
  %.not332.i = icmp eq i32 %i.bee, 0
  br i1 %.not332.i, label %bb.fm, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.bef = load ptr, ptr %1, align 16, !tbaa !119
  call void (ptr, ptr, ptr, i32, ptr, ptr, ptr, ...) @dt_print_pipe_ext(ptr noundef nonnull @.str.34, ptr noundef nonnull %i.bea, ptr noundef %i.bef, i32 noundef -1, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull @.str.35, i32 noundef %i.bce, i32 noundef %i.bcl, i32 noundef %i.bbv, i32 noundef %i.bbx, i32 noundef %i.bbs) #11
  br label %bb.fm

bb.fm:                                            ; preds = %bb.fl, %bb.fk
  %i.beg = sext i32 %i.bce to i64
  %.not.i20 = icmp eq i32 %i.bce, 0
  br i1 %.not.i20, label %.preheader.i26, label %.lr.ph363.i

.lr.ph363.i:                                      ; preds = %bb.fm
  %i.beh = zext nneg i32 %i.bbv to i64
  %i.bei = sext i32 %i.bcl to i64
  %.not365.i = icmp eq i32 %i.bcl, 0
  %i.bej = zext nneg i32 %i.bbx to i64            ; 4 uses
  %i.bek = sext i32 %i.bbt to i64                 ; 2 uses
  %i.bel = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bem = getelementptr inbounds nuw i8, ptr %9, i64 12
  %i.ben = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.beo = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bep = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.beq = getelementptr inbounds nuw i8, ptr %10, i64 12
  %i.ber = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.bes = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bet = sext i32 %i.axa to i64                 ; 6 uses
  %i.beu = sext i32 %i.axd to i64                 ; 7 uses
  %i.bev = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.bew = getelementptr inbounds nuw i8, ptr %0, i64 456 ; 4 uses
  %i.bex = sext i32 %i.bbs to i64                 ; 4 uses
  %i.bey = mul nsw i64 %i.bex, %i.beu
  br i1 %.not365.i, label %.preheader.i26, label %.lr.ph360.i

.preheader.i26:                                   ; preds = %._crit_edge.i25, %.lr.ph363.i, %bb.fm
  %.sroa.9.0.i = phi nsz float [ 0.000000e+00, %bb.fm ], [ 0.000000e+00, %.lr.ph363.i ], [ %.sroa.9.4.i, %._crit_edge.i25 ]
  %.sroa.7.0.i = phi nsz float [ 0.000000e+00, %bb.fm ], [ 0.000000e+00, %.lr.ph363.i ], [ %.sroa.7.4.i, %._crit_edge.i25 ]
  %.sroa.5.0.i = phi nsz float [ 0.000000e+00, %bb.fm ], [ 0.000000e+00, %.lr.ph363.i ], [ %.sroa.5.4.i, %._crit_edge.i25 ]
  %.sroa.0.0390.i = phi nsz float [ 1.000000e+00, %bb.fm ], [ 1.000000e+00, %.lr.ph363.i ], [ %.sroa.0.4.i, %._crit_edge.i25 ]
  %i.bez = load ptr, ptr %i.awu, align 8, !tbaa !41 ; 4 uses
  %i.bfa = getelementptr inbounds nuw i8, ptr %i.bez, i64 272
  store float %.sroa.0.0390.i, ptr %i.bfa, align 4, !tbaa !45
  %.sroa.5.0..sroa_idx382.i = getelementptr inbounds nuw i8, ptr %i.bez, i64 276
  store float %.sroa.5.0.i, ptr %.sroa.5.0..sroa_idx382.i, align 4, !tbaa !45
  %.sroa.7.0..sroa_idx385.i = getelementptr inbounds nuw i8, ptr %i.bez, i64 280
  store float %.sroa.7.0.i, ptr %.sroa.7.0..sroa_idx385.i, align 4, !tbaa !45
  %.sroa.9.0..sroa_idx388.i = getelementptr inbounds nuw i8, ptr %i.bez, i64 284
  store float %.sroa.9.0.i, ptr %.sroa.9.0..sroa_idx388.i, align 4, !tbaa !45
  call void @free(ptr noundef %i.bde) #11
  call void @free(ptr noundef %i.bdq) #11
  %i.bfb = load ptr, ptr %i.awu, align 8, !tbaa !41
  %i.bfc = getelementptr inbounds nuw i8, ptr %i.bfb, i64 624
  store i32 0, ptr %i.bfc, align 16, !tbaa !120
  br label %_default_process_tiling_ptp.exit

.lr.ph360.i:                                      ; preds = %.lr.ph363.i, %._crit_edge.i25
  %.sroa.9.1.i = phi nsz float [ %.sroa.9.4.i, %._crit_edge.i25 ], [ 0.000000e+00, %.lr.ph363.i ]
  %.sroa.7.1.i = phi nsz float [ %.sroa.7.4.i, %._crit_edge.i25 ], [ 0.000000e+00, %.lr.ph363.i ]
  %.sroa.5.1.i = phi nsz float [ %.sroa.5.4.i, %._crit_edge.i25 ], [ 0.000000e+00, %.lr.ph363.i ]
  %.sroa.0.1.i21 = phi nsz float [ %.sroa.0.4.i, %._crit_edge.i25 ], [ 1.000000e+00, %.lr.ph363.i ]
  %.0300361.i = phi i64 [ %i.bft, %._crit_edge.i25 ], [ 0, %.lr.ph363.i ] ; 5 uses
  %i.bfd = mul i64 %.0300361.i, %i.beh            ; 5 uses
  %i.bfe = add i64 %i.bfd, %i.bcz
  %i.bff = load i32, ptr %i.awy, align 4, !tbaa !42
  %i.bfg = sext i32 %i.bff to i64                 ; 2 uses
  %i.bfh = icmp ugt i64 %i.bfe, %i.bfg
  %i.bfi = sub i64 %i.bfg, %i.bfd
  %i.bfj = select i1 %i.bfh, i64 %i.bfi, i64 %i.bcz ; 9 uses
  %i.bfk = icmp ule i64 %i.bfj, %i.bek
  %i.bfl = icmp ne i64 %.0300361.i, 0             ; 3 uses
  %or.cond5.i = and i1 %i.bfl, %i.bfk
  %i.bfm = trunc i64 %i.bfd to i32
  %i.bfn = trunc i64 %i.bfj to i32                ; 2 uses
  %i.bfo = mul i64 %i.bfd, %i.bdc
  %i.bfp = mul i64 %i.bfj, %i.bdc                 ; 10 uses
  %invariant.gep.i = getelementptr i8, ptr %2, i64 %i.bfo
  %.sroa.034.0.i = select i1 %i.bfl, i64 %i.bex, i64 0 ; 6 uses
  %i.bfq = add i64 %i.bfd, %i.bex
  %invariant.op.i = mul i64 %i.bfq, %i.bdo
  %.sroa.0.0.i22 = sub i64 %i.bfj, %.sroa.034.0.i
  %i.bfr = mul i64 %.sroa.0.0.i22, %i.bdo         ; 5 uses
  %.reass.i = select i1 %i.bfl, i64 %invariant.op.i, i64 0
  %invariant.gep = getelementptr i8, ptr %3, i64 %.reass.i
  %i.bfs = insertelement <2 x i32> poison, i32 %i.bfm, i64 0
  br label %bb.fn

._crit_edge.i25:                                  ; preds = %.loopexit.i
  %i.bft = add nuw i64 %.0300361.i, 1             ; 2 uses
  %exitcond375.not.i = icmp eq i64 %i.bft, %i.beg
  br i1 %exitcond375.not.i, label %.preheader.i26, label %.lr.ph360.i

bb.fn:                                            ; preds = %.loopexit.i, %.lr.ph360.i
  %.sroa.9.2.i = phi nsz float [ %.sroa.9.1.i, %.lr.ph360.i ], [ %.sroa.9.4.i, %.loopexit.i ] ; 2 uses
  %.sroa.7.2.i = phi nsz float [ %.sroa.7.1.i, %.lr.ph360.i ], [ %.sroa.7.4.i, %.loopexit.i ] ; 2 uses
  %.sroa.5.2.i = phi nsz float [ %.sroa.5.1.i, %.lr.ph360.i ], [ %.sroa.5.4.i, %.loopexit.i ] ; 2 uses
  %.sroa.0.2.i = phi nsz float [ %.sroa.0.1.i21, %.lr.ph360.i ], [ %.sroa.0.4.i, %.loopexit.i ] ; 2 uses
  %indvars.iv372.i = phi i64 [ 0, %.lr.ph360.i ], [ %indvars.iv.next373.i, %.loopexit.i ] ; 2 uses
  %indvars.iv.i = phi i64 [ %i.bda, %.lr.ph360.i ], [ %indvars.iv.next.i, %.loopexit.i ] ; 2 uses
  %.0299359.i = phi i64 [ 0, %.lr.ph360.i ], [ %i.bls, %.loopexit.i ] ; 6 uses
  %i.bfu = mul i64 %.0299359.i, %i.bej            ; 2 uses
  %i.bfv = mul i64 %.0299359.i, %i.bej            ; 5 uses
  %i.bfw = add i64 %i.bfv, %i.bda                 ; 2 uses
  %i.bfx = load i32, ptr %i.ayx, align 4, !tbaa !44
  %i.bfy = sext i32 %i.bfx to i64                 ; 4 uses
  %i.bfz = icmp ugt i64 %i.bfw, %i.bfy
  %i.bga = sub i64 %i.bfy, %i.bfv
  %i.bgb = select i1 %i.bfz, i64 %i.bga, i64 %i.bda ; 4 uses
  %i.bgc = icmp ule i64 %i.bgb, %i.bek
  %i.bgd = icmp ne i64 %.0299359.i, 0             ; 3 uses
  %i.bge = and i1 %i.bgd, %i.bgc
  %i.bgf = select i1 %or.cond5.i, i1 true, i1 %i.bge ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #11
  %i.bgg = trunc i64 %i.bfv to i32
  %i.bgh = load <2 x i32>, ptr %4, align 4, !tbaa !50
  %i.bgi = insertelement <2 x i32> %i.bfs, i32 %i.bgg, i64 1 ; 2 uses
  %i.bgj = add <2 x i32> %i.bgh, %i.bgi
  store <2 x i32> %i.bgj, ptr %9, align 8, !tbaa !50
  store i32 %i.bfn, ptr %i.bel, align 8, !tbaa !42
  %i.bgk = trunc i64 %i.bgb to i32                ; 2 uses
  store i32 %i.bgk, ptr %i.bem, align 4, !tbaa !44
  %i.bgl = load float, ptr %i.beo, align 4, !tbaa !43
  store float %i.bgl, ptr %i.ben, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #11
  %i.bgm = load <2 x i32>, ptr %5, align 4, !tbaa !50
  %i.bgn = add <2 x i32> %i.bgm, %i.bgi
  store <2 x i32> %i.bgn, ptr %10, align 8, !tbaa !50
  store i32 %i.bfn, ptr %i.bep, align 8, !tbaa !42
  store i32 %i.bgk, ptr %i.beq, align 4, !tbaa !44
  %i.bgo = load float, ptr %i.bes, align 4, !tbaa !43
  store float %i.bgo, ptr %i.ber, align 8, !tbaa !43
  %i.bgp = mul i64 %i.bfv, %i.bet
  %i.bgq = mul i64 %i.bfv, %i.beu
  %i.bgr = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !91
  %i.bgs = and i32 %i.bgr, 8388608
  %.not333.i = icmp eq i32 %i.bgs, 0
  br i1 %.not333.i, label %bb.fp, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.bgt = select i1 %i.bgf, ptr @.str.36, ptr @.str.37
  %i.bgu = load ptr, ptr %i.awu, align 8, !tbaa !41
  %i.bgv = load ptr, ptr %1, align 16, !tbaa !119
  call void (ptr, ptr, ptr, i32, ptr, ptr, ptr, ...) @dt_print_pipe_ext(ptr noundef nonnull %i.bgt, ptr noundef %i.bgu, ptr noundef %i.bgv, i32 noundef -1, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull @.str.17, i64 noundef %.0300361.i, i64 noundef %.0299359.i) #11
  br label %bb.fp

bb.fp:                                            ; preds = %bb.fo, %bb.fn
  br i1 %i.bgf, label %.loopexit.i, label %.preheader350.i

.preheader350.i:                                  ; preds = %bb.fp
  %.not366.i = icmp eq i64 %i.bgb, 0
  br i1 %.not366.i, label %.preheader349.i, label %.lr.ph.i23

.lr.ph.i23:                                       ; preds = %.preheader350.i
  %gep.i = getelementptr i8, ptr %invariant.gep.i, i64 %i.bgp ; 5 uses
  %umin = call i64 @llvm.umin.i64(i64 %i.bfw, i64 %i.bfy) ; 2 uses
  %33 = sub i64 %umin, %i.bfu                     ; 2 uses
  %xtraiter131 = and i64 %33, 3                   ; 3 uses
  %i.bgw = sub i64 %i.bfu, %umin
  %i.bgx = icmp ugt i64 %i.bgw, -4
  br i1 %i.bgx, label %.epil.preheader130, label %.lr.ph.i23.new

.lr.ph.i23.new:                                   ; preds = %.lr.ph.i23
  %unroll_iter135 = and i64 %33, -4
  br label %bb.fr

.preheader349.i.loopexit.unr-lcssa:               ; preds = %bb.fr
  %lcmp.mod133.not = icmp eq i64 %xtraiter131, 0
  br i1 %lcmp.mod133.not, label %.preheader349.i, label %.epil.preheader130

.epil.preheader130:                               ; preds = %.preheader349.i.loopexit.unr-lcssa, %.lr.ph.i23
  %.0297352.i.epil.init = phi i64 [ 0, %.lr.ph.i23 ], [ %i.bic, %.preheader349.i.loopexit.unr-lcssa ]
  %lcmp.mod134 = icmp ne i64 %xtraiter131, 0
  call void @llvm.assume(i1 %lcmp.mod134)
  br label %bb.fq

bb.fq:                                            ; preds = %bb.fq, %.epil.preheader130
  %.0297352.i.epil = phi i64 [ %.0297352.i.epil.init, %.epil.preheader130 ], [ %i.bhc, %bb.fq ] ; 3 uses
  %epil.iter132 = phi i64 [ 0, %.epil.preheader130 ], [ %epil.iter132.next, %bb.fq ]
  %i.bgy = mul i64 %.0297352.i.epil, %i.bfp
  %i.bgz = getelementptr inbounds nuw i8, ptr %i.bde, i64 %i.bgy
  %i.bha = mul i64 %.0297352.i.epil, %i.bet
  %i.bhb = getelementptr inbounds nuw i8, ptr %gep.i, i64 %i.bha
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bgz, ptr align 1 %i.bhb, i64 %i.bfp, i1 false)
  %i.bhc = add nuw i64 %.0297352.i.epil, 1
  %epil.iter132.next = add i64 %epil.iter132, 1   ; 2 uses
  %epil.iter132.cmp.not = icmp eq i64 %epil.iter132.next, %xtraiter131
  br i1 %epil.iter132.cmp.not, label %.preheader349.i, label %bb.fq, !llvm.loop !99

.preheader349.i:                                  ; preds = %.preheader349.i.loopexit.unr-lcssa, %bb.fq, %.preheader350.i
  %i.bhd = load ptr, ptr %i.awu, align 8, !tbaa !41
  %i.bhe = getelementptr inbounds nuw i8, ptr %i.bhd, i64 272
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bhe, ptr noundef nonnull align 16 dereferenceable(16) %i.a, i64 16, i1 false), !tbaa !45
  call void @dt_dev_prepare_piece_cfa(ptr noundef %1, ptr noundef nonnull %9) #11
  %i.bhf = load ptr, ptr %i.bev, align 8, !tbaa !128
  call void %i.bhf(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %i.bde, ptr noundef nonnull %i.bdq, ptr noundef nonnull %9, ptr noundef nonnull %10) #11, !inline_history !98
  %i.bhg = sub i64 0, %.0299359.i
  %.not335.i = icmp eq i64 %.0300361.i, %i.bhg
  %i.bhh = load ptr, ptr %i.awu, align 8, !tbaa !41 ; 7 uses
  %i.bhi = getelementptr inbounds nuw i8, ptr %i.bhh, i64 272
  %.sroa.0.0.copyload379.i = load float, ptr %i.bhi, align 4, !tbaa !45 ; 4 uses
  br i1 %.not335.i, label %.split.us.i, label %.split.preheader.i

bb.fr:                                            ; preds = %bb.fr, %.lr.ph.i23.new
  %.0297352.i = phi i64 [ 0, %.lr.ph.i23.new ], [ %i.bic, %bb.fr ] ; 6 uses
  %niter136 = phi i64 [ 0, %.lr.ph.i23.new ], [ %niter136.next.3, %bb.fr ]
  %i.bhj = mul i64 %.0297352.i, %i.bfp
  %i.bhk = getelementptr inbounds nuw i8, ptr %i.bde, i64 %i.bhj
  %i.bhl = mul i64 %.0297352.i, %i.bet
  %i.bhm = getelementptr inbounds nuw i8, ptr %gep.i, i64 %i.bhl
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bhk, ptr align 1 %i.bhm, i64 %i.bfp, i1 false)
  %i.bhn = or disjoint i64 %.0297352.i, 1         ; 2 uses
  %i.bho = mul i64 %i.bhn, %i.bfp
  %i.bhp = getelementptr inbounds nuw i8, ptr %i.bde, i64 %i.bho
  %i.bhq = mul i64 %i.bhn, %i.bet
  %i.bhr = getelementptr inbounds nuw i8, ptr %gep.i, i64 %i.bhq
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bhp, ptr align 1 %i.bhr, i64 %i.bfp, i1 false)
  %i.bhs = or disjoint i64 %.0297352.i, 2         ; 2 uses
  %i.bht = mul i64 %i.bhs, %i.bfp
  %i.bhu = getelementptr inbounds nuw i8, ptr %i.bde, i64 %i.bht
  %i.bhv = mul i64 %i.bhs, %i.bet
  %i.bhw = getelementptr inbounds nuw i8, ptr %gep.i, i64 %i.bhv
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bhu, ptr align 1 %i.bhw, i64 %i.bfp, i1 false)
  %i.bhx = or disjoint i64 %.0297352.i, 3         ; 2 uses
  %i.bhy = mul i64 %i.bhx, %i.bfp
  %i.bhz = getelementptr inbounds nuw i8, ptr %i.bde, i64 %i.bhy
  %i.bia = mul i64 %i.bhx, %i.bet
  %i.bib = getelementptr inbounds nuw i8, ptr %gep.i, i64 %i.bia
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bhz, ptr align 1 %i.bib, i64 %i.bfp, i1 false)
  %i.bic = add nuw i64 %.0297352.i, 4             ; 2 uses
  %niter136.next.3 = add i64 %niter136, 4         ; 2 uses
  %niter136.ncmp.3.not = icmp eq i64 %niter136.next.3, %unroll_iter135
  br i1 %niter136.ncmp.3.not, label %.preheader349.i.loopexit.unr-lcssa, label %bb.fr

.split.preheader.i:                               ; preds = %.preheader349.i
  %i.bid = fsub reassoc nsz arcp contract afn float %.sroa.0.2.i, %.sroa.0.0.copyload379.i
  %i.bie = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.bid)
  %i.bif = fcmp reassoc nsz arcp contract afn ogt float %i.bie, f0x358637BD
  br i1 %i.bif, label %bb.fs, label %.split.1.i

.split.us.i:                                      ; preds = %.preheader349.i
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bhh, i64 276
  %.sroa.5.0.copyload381.i = load float, ptr %.sroa.5.0..sroa_idx.i, align 4, !tbaa !45
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bhh, i64 280
  %.sroa.7.0.copyload384.i = load float, ptr %.sroa.7.0..sroa_idx.i, align 4, !tbaa !45
  br label %.split356.us.sink.split.i

.split356.us.sink.split.i:                        ; preds = %bb.fz, %.split.us.i
  %.pre401.sink.i = phi ptr [ %.pre401.i, %bb.fz ], [ %i.bhh, %.split.us.i ]
  %.sroa.7.3.ph.i = phi float [ %i.bjm, %bb.fz ], [ %.sroa.7.0.copyload384.i, %.split.us.i ]
  %.sroa.5.3.ph.i = phi float [ %i.biz, %bb.fz ], [ %.sroa.5.0.copyload381.i, %.split.us.i ]
  %.sroa.0.3.ph.i = phi float [ %i.bim, %bb.fz ], [ %.sroa.0.0.copyload379.i, %.split.us.i ]
  %.phi.trans.insert403.i = getelementptr inbounds nuw i8, ptr %.pre401.sink.i, i64 284
  %.pre404.i = load float, ptr %.phi.trans.insert403.i, align 4, !tbaa !45
  br label %.split356.us.i

.split356.us.i:                                   ; preds = %bb.fy, %.split.3.i, %.split356.us.sink.split.i
  %.sroa.9.3.i = phi nsz float [ %i.bjp, %bb.fy ], [ %i.bjp, %.split.3.i ], [ %.pre404.i, %.split356.us.sink.split.i ] ; 3 uses
  %.sroa.7.3.i = phi nsz float [ %i.bjm, %bb.fy ], [ %i.bjm, %.split.3.i ], [ %.sroa.7.3.ph.i, %.split356.us.sink.split.i ] ; 3 uses
  %.sroa.5.3.i = phi nsz float [ %i.biz, %bb.fy ], [ %i.biz, %.split.3.i ], [ %.sroa.5.3.ph.i, %.split356.us.sink.split.i ] ; 3 uses
  %.sroa.0.3.i = phi nsz float [ %i.bim, %bb.fy ], [ %i.bim, %.split.3.i ], [ %.sroa.0.3.ph.i, %.split356.us.sink.split.i ] ; 3 uses
  %.sroa.636.0.i = select i1 %i.bgd, i64 %i.bex, i64 0 ; 7 uses
  %.not367.i = icmp eq i64 %i.bgb, %.sroa.636.0.i
  br i1 %.not367.i, label %.loopexit.i, label %.lr.ph358.i

bb.fs:                                            ; preds = %.split.preheader.i
  %i.big = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !91
  %i.bih = and i32 %i.big, 8388608
  %.not336.i = icmp eq i32 %i.bih, 0
  br i1 %.not336.i, label %.split.1.i, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.bii = getelementptr inbounds nuw i8, ptr %i.bhh, i64 644
  %i.bij = load i32, ptr %i.bii, align 4, !tbaa !117
  %i.bik = call ptr @dt_dev_pixelpipe_type_to_str(i32 noundef %i.bij) #11
  %i.bil = call ptr @dt_iop_get_instance_id(ptr noundef nonnull %0) #11
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.38, ptr noundef %i.bik, i32 noundef 0, ptr noundef nonnull %i.bew, ptr noundef %i.bil) #11
  %.pre.i27 = load ptr, ptr %i.awu, align 8, !tbaa !41 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre.i27, i64 272
  %.pre392.i = load float, ptr %.phi.trans.insert.i, align 4, !tbaa !45
  br label %.split.1.i

.split.1.i:                                       ; preds = %bb.ft, %bb.fs, %.split.preheader.i
  %i.bim = phi float [ %.sroa.0.0.copyload379.i, %bb.fs ], [ %.pre392.i, %bb.ft ], [ %.sroa.0.0.copyload379.i, %.split.preheader.i ] ; 3 uses
  %i.bin = phi ptr [ %i.bhh, %bb.fs ], [ %.pre.i27, %bb.ft ], [ %i.bhh, %.split.preheader.i ] ; 4 uses
  %i.bio = getelementptr inbounds nuw i8, ptr %i.bin, i64 276
  %i.bip = load float, ptr %i.bio, align 4, !tbaa !45 ; 3 uses
  %i.biq = fsub reassoc nsz arcp contract afn float %.sroa.5.2.i, %i.bip
  %i.bir = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.biq)
  %i.bis = fcmp reassoc nsz arcp contract afn ogt float %i.bir, f0x358637BD
  br i1 %i.bis, label %bb.fu, label %.split.2.i

bb.fu:                                            ; preds = %.split.1.i
  %i.bit = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !91
  %i.biu = and i32 %i.bit, 8388608
  %.not336.1.i = icmp eq i32 %i.biu, 0
  br i1 %.not336.1.i, label %.split.2.i, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.biv = getelementptr inbounds nuw i8, ptr %i.bin, i64 644
  %i.biw = load i32, ptr %i.biv, align 4, !tbaa !117
  %i.bix = call ptr @dt_dev_pixelpipe_type_to_str(i32 noundef %i.biw) #11
  %i.biy = call ptr @dt_iop_get_instance_id(ptr noundef nonnull %0) #11
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.38, ptr noundef %i.bix, i32 noundef 1, ptr noundef nonnull %i.bew, ptr noundef %i.biy) #11
  %.pre393.i = load ptr, ptr %i.awu, align 8, !tbaa !41 ; 2 uses
  %.phi.trans.insert395.i = getelementptr inbounds nuw i8, ptr %.pre393.i, i64 276
  %.pre396.i = load float, ptr %.phi.trans.insert395.i, align 4, !tbaa !45
  br label %.split.2.i

.split.2.i:                                       ; preds = %bb.fv, %bb.fu, %.split.1.i
  %i.biz = phi float [ %.pre396.i, %bb.fv ], [ %i.bip, %bb.fu ], [ %i.bip, %.split.1.i ] ; 3 uses
  %i.bja = phi ptr [ %.pre393.i, %bb.fv ], [ %i.bin, %bb.fu ], [ %i.bin, %.split.1.i ] ; 4 uses
  %i.bjb = getelementptr inbounds nuw i8, ptr %i.bja, i64 280
  %i.bjc = load float, ptr %i.bjb, align 4, !tbaa !45 ; 3 uses
  %i.bjd = fsub reassoc nsz arcp contract afn float %.sroa.7.2.i, %i.bjc
  %i.bje = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.bjd)
  %i.bjf = fcmp reassoc nsz arcp contract afn ogt float %i.bje, f0x358637BD
  br i1 %i.bjf, label %bb.fw, label %.split.3.i

bb.fw:                                            ; preds = %.split.2.i
  %i.bjg = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !91
  %i.bjh = and i32 %i.bjg, 8388608
  %.not336.2.i = icmp eq i32 %i.bjh, 0
  br i1 %.not336.2.i, label %.split.3.i, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.bji = getelementptr inbounds nuw i8, ptr %i.bja, i64 644
  %i.bjj = load i32, ptr %i.bji, align 4, !tbaa !117
  %i.bjk = call ptr @dt_dev_pixelpipe_type_to_str(i32 noundef %i.bjj) #11
  %i.bjl = call ptr @dt_iop_get_instance_id(ptr noundef nonnull %0) #11
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.38, ptr noundef %i.bjk, i32 noundef 2, ptr noundef nonnull %i.bew, ptr noundef %i.bjl) #11
  %.pre397.i = load ptr, ptr %i.awu, align 8, !tbaa !41 ; 2 uses
  %.phi.trans.insert399.i = getelementptr inbounds nuw i8, ptr %.pre397.i, i64 280
  %.pre400.i = load float, ptr %.phi.trans.insert399.i, align 4, !tbaa !45
  br label %.split.3.i

.split.3.i:                                       ; preds = %bb.fx, %bb.fw, %.split.2.i
  %i.bjm = phi float [ %.pre400.i, %bb.fx ], [ %i.bjc, %bb.fw ], [ %i.bjc, %.split.2.i ] ; 3 uses
  %i.bjn = phi ptr [ %.pre397.i, %bb.fx ], [ %i.bja, %bb.fw ], [ %i.bja, %.split.2.i ] ; 2 uses
  %i.bjo = getelementptr inbounds nuw i8, ptr %i.bjn, i64 284
  %i.bjp = load float, ptr %i.bjo, align 4, !tbaa !45 ; 3 uses
  %i.bjq = fsub reassoc nsz arcp contract afn float %.sroa.9.2.i, %i.bjp
  %i.bjr = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.bjq)
  %i.bjs = fcmp reassoc nsz arcp contract afn ogt float %i.bjr, f0x358637BD
  br i1 %i.bjs, label %bb.fy, label %.split356.us.i

bb.fy:                                            ; preds = %.split.3.i
  %i.bjt = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !91
  %i.bju = and i32 %i.bjt, 8388608
  %.not336.3.i = icmp eq i32 %i.bju, 0
  br i1 %.not336.3.i, label %.split356.us.i, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.bjv = getelementptr inbounds nuw i8, ptr %i.bjn, i64 644
  %i.bjw = load i32, ptr %i.bjv, align 4, !tbaa !117
  %i.bjx = call ptr @dt_dev_pixelpipe_type_to_str(i32 noundef %i.bjw) #11
  %i.bjy = call ptr @dt_iop_get_instance_id(ptr noundef nonnull %0) #11
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.38, ptr noundef %i.bjx, i32 noundef 3, ptr noundef nonnull %i.bew, ptr noundef %i.bjy) #11
  %.pre401.i = load ptr, ptr %i.awu, align 8, !tbaa !41
  br label %.split356.us.sink.split.i

.lr.ph358.i:                                      ; preds = %.split356.us.i
  %i.bjz = select i1 %i.bgd, i64 %i.bey, i64 0
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.bgq
end_hunk_0
