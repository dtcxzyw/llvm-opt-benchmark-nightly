Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/qdm2?download=true
inline.NumInlined: 120
inline.NumDeleted: 32
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 43
begin_hunk_0_@qdm2_decode_frame:bb.a
  %i.aiw = icmp sgt i32 %i.ais, 0
  %.promoted442.i77.i.i.i = load i32, ptr %i.an, align 4, !tbaa !67 ; 3 uses
  br i1 %i.aiw, label %.lr.ph435.split.split.us.i82.i.i.i, label %.lr.ph435.split.split.i78.i.i.i.preheader

.lr.ph435.split.split.i78.i.i.i.preheader:        ; preds = %.lr.ph435.split.i76.i.i.i
  %i.aix = add nsw i32 %spec.select.i67.i.i.i, -9
  %xtraiter275 = and i32 %spec.select.i67.i.i.i, 2 ; 2 uses
  %i.aiy = icmp ult i32 %i.aix, 3
  br i1 %i.aiy, label %.lr.ph435.split.split.i78.i.i.i.epil.preheader, label %.lr.ph435.split.split.i78.i.i.i.preheader.new

.lr.ph435.split.split.i78.i.i.i.preheader.new:    ; preds = %.lr.ph435.split.split.i78.i.i.i.preheader
  %i.aiz = and i32 %spec.select.i67.i.i.i, 2147483644
  %i.aja = add nsw i32 %i.aiz, -12
  br label %.lr.ph435.split.split.i78.i.i.i

.lr.ph435.split.split.us.i82.i.i.i:               ; preds = %.lr.ph435.split.i76.i.i.i
  %wide.trip.count529.i.i.i.i = zext nneg i32 %spec.select.i67.i.i.i to i64
  br label %.preheader31.i.us.i83.i.i.i

.preheader31.i.us.i83.i.i.i:                      ; preds = %..loopexit_crit_edge.i.us.i99.i.i.i, %.lr.ph435.split.split.us.i82.i.i.i
  %indvars.iv526.i84.i.i.i = phi i64 [ %indvars.iv.next527.i100.i.i.i, %..loopexit_crit_edge.i.us.i99.i.i.i ], [ 8, %.lr.ph435.split.split.us.i82.i.i.i ] ; 5 uses
  %i.ajb = phi i32 [ %i.ajx, %..loopexit_crit_edge.i.us.i99.i.i.i ], [ %.promoted442.i77.i.i.i, %.lr.ph435.split.split.us.i82.i.i.i ] ; 3 uses
  %i.ajc = icmp sgt i32 %i.ajb, 3839
  %i.ajd = add nsw i32 %i.ajb, -3840
  %spec.select.i85.i.i.i = select i1 %i.ajc, i32 %i.ajd, i32 %i.ajb
  %i.aje = getelementptr inbounds nuw [4 x i8], ptr @sb_noise_attenuation, i64 %indvars.iv526.i84.i.i.i
  %i.ajf = load float, ptr %i.aje, align 4, !tbaa !32 ; 2 uses
  %invariant.gep.i.us.i86.i.i.i = getelementptr [256 x i8], ptr %i.ao, i64 %indvars.iv526.i84.i.i.i
  %i.ajg = sext i32 %spec.select.i85.i.i.i to i64
  br label %.preheader.i.us.i87.i.i.i

.preheader.i.us.i87.i.i.i:                        ; preds = %bb.cc, %.preheader31.i.us.i83.i.i.i
  %indvars.iv41.i.us.i88.i.i.i = phi i64 [ 0, %.preheader31.i.us.i83.i.i.i ], [ %indvars.iv.next42.i.us.i97.i.i.i, %bb.cc ] ; 3 uses
  %.lcssa35.i.us.i89.i.i.i = phi i64 [ %i.ajg, %.preheader31.i.us.i83.i.i.i ], [ %indvars.iv.next37.i.us.i94.i.i.i, %bb.cc ]
  %gep.i.us.i90.i.i.i = getelementptr [7680 x i8], ptr %invariant.gep.i.us.i86.i.i.i, i64 %indvars.iv41.i.us.i88.i.i.i
  %i.ajh = getelementptr inbounds nuw [16384 x i8], ptr %i.ap, i64 %indvars.iv41.i.us.i88.i.i.i
  br label %bb.cb

bb.cb:                                            ; preds = %bb.cb, %.preheader.i.us.i87.i.i.i
  %indvars.iv36.i.us.i91.i.i.i = phi i64 [ %.lcssa35.i.us.i89.i.i.i, %.preheader.i.us.i87.i.i.i ], [ %indvars.iv.next37.i.us.i94.i.i.i, %bb.cb ] ; 2 uses
  %indvars.iv.i.us.i92.i.i.i = phi i64 [ 0, %.preheader.i.us.i87.i.i.i ], [ %indvars.iv.next.i.us.i95.i.i.i, %bb.cb ] ; 3 uses
  %i.aji = getelementptr [4 x i8], ptr @noise_table, i64 %indvars.iv36.i.us.i91.i.i.i ; 2 uses
  %i.ajj = load float, ptr %i.aji, align 4, !tbaa !32
  %i.ajk = fmul nsz float %i.ajf, %i.ajj
  %i.ajl = getelementptr inbounds nuw [4 x i8], ptr %gep.i.us.i90.i.i.i, i64 %indvars.iv.i.us.i92.i.i.i ; 2 uses
  %i.ajm = load float, ptr %i.ajl, align 4, !tbaa !32
  %i.ajn = fmul nsz float %i.ajk, %i.ajm
  %.idx.i.us.i93.i.i.i = shl nuw nsw i64 %indvars.iv.i.us.i92.i.i.i, 8
  %i.ajo = getelementptr inbounds nuw i8, ptr %i.ajh, i64 %.idx.i.us.i93.i.i.i ; 2 uses
  %i.ajp = getelementptr inbounds nuw [4 x i8], ptr %i.ajo, i64 %indvars.iv526.i84.i.i.i
  store float %i.ajn, ptr %i.ajp, align 4, !tbaa !32
  %indvars.iv.next37.i.us.i94.i.i.i = add nsw i64 %indvars.iv36.i.us.i91.i.i.i, 2 ; 3 uses
  %i.ajq = getelementptr i8, ptr %i.aji, i64 4
  %i.ajr = load float, ptr %i.ajq, align 4, !tbaa !32
  %i.ajs = fmul nsz float %i.ajf, %i.ajr
  %i.ajt = load float, ptr %i.ajl, align 4, !tbaa !32
  %i.aju = fmul nsz float %i.ajs, %i.ajt
  %i.ajv = getelementptr inbounds nuw i8, ptr %i.ajo, i64 128
  %i.ajw = getelementptr inbounds nuw [4 x i8], ptr %i.ajv, i64 %indvars.iv526.i84.i.i.i
  store float %i.aju, ptr %i.ajw, align 4, !tbaa !32
  %indvars.iv.next.i.us.i95.i.i.i = add nuw nsw i64 %indvars.iv.i.us.i92.i.i.i, 1 ; 2 uses
  %exitcond.not.i.us.i96.i.i.i = icmp eq i64 %indvars.iv.next.i.us.i95.i.i.i, 64
  br i1 %exitcond.not.i.us.i96.i.i.i, label %bb.cc, label %bb.cb, !llvm.loop !0

bb.cc:                                            ; preds = %bb.cb
  %indvars.iv.next42.i.us.i97.i.i.i = add nuw nsw i64 %indvars.iv41.i.us.i88.i.i.i, 1 ; 2 uses
  %exitcond44.not.i.us.i98.i.i.i = icmp eq i64 %indvars.iv.next42.i.us.i97.i.i.i, %wide.trip.count.i.i75.i.i.i
  br i1 %exitcond44.not.i.us.i98.i.i.i, label %..loopexit_crit_edge.i.us.i99.i.i.i, label %.preheader.i.us.i87.i.i.i, !llvm.loop !1

..loopexit_crit_edge.i.us.i99.i.i.i:              ; preds = %bb.cc
  %i.ajx = trunc nsw i64 %indvars.iv.next37.i.us.i94.i.i.i to i32 ; 2 uses
  %indvars.iv.next527.i100.i.i.i = add nuw nsw i64 %indvars.iv526.i84.i.i.i, 1 ; 2 uses
  %exitcond530.not.i101.i.i.i = icmp eq i64 %indvars.iv.next527.i100.i.i.i, %wide.trip.count529.i.i.i.i
  br i1 %exitcond530.not.i101.i.i.i, label %.build_sb_samples_from_noise.exit.loopexit_crit_edge.split.us.i102.i.i.i, label %.preheader31.i.us.i83.i.i.i, !llvm.loop !2

.build_sb_samples_from_noise.exit.loopexit_crit_edge.split.us.i102.i.i.i: ; preds = %..loopexit_crit_edge.i.us.i99.i.i.i
  store i32 %i.ajx, ptr %i.an, align 4, !tbaa !67
  br label %process_synthesis_subpackets.exit.thread251.i.i

.lr.ph435.split.split.i78.i.i.i:                  ; preds = %bb.ce, %.lr.ph435.split.split.i78.i.i.i.preheader.new
  %i.ajy = phi i32 [ %.promoted442.i77.i.i.i, %.lr.ph435.split.split.i78.i.i.i.preheader.new ], [ %spec.select340, %bb.ce ] ; 3 uses
  %niter280 = phi i32 [ 0, %.lr.ph435.split.split.i78.i.i.i.preheader.new ], [ %niter280.next.3, %bb.ce ] ; 2 uses
  %i.ajz = icmp sgt i32 %i.ajy, 3839              ; 2 uses
  %i.aka = add nsw i32 %i.ajy, -3840
  %i.akb = select i1 %i.ajz, i32 %i.aka, i32 %i.ajy ; 3 uses
  %i.akc = icmp sgt i32 %i.akb, 3839              ; 2 uses
  %i.akd = add nsw i32 %i.akb, -3840
  %i.ake = select i1 %i.akc, i32 %i.akd, i32 %i.akb ; 3 uses
  %i.akf = or i1 %i.ajz, %i.akc
  %i.akg = icmp sgt i32 %i.ake, 3839              ; 2 uses
  %i.akh = add nsw i32 %i.ake, -3840
  %spec.select = select i1 %i.akg, i32 %i.akh, i32 %i.ake ; 3 uses
  %i.aki = or i1 %i.akf, %i.akg
  %i.akj = icmp sgt i32 %spec.select, 3839        ; 2 uses
  %i.akk = add nsw i32 %spec.select, -3840
  %spec.select340 = select i1 %i.akj, i32 %i.akk, i32 %spec.select ; 3 uses
  %i.akl = or i1 %i.aki, %i.akj
  br i1 %i.akl, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %.lr.ph435.split.split.i78.i.i.i
  store i32 %spec.select340, ptr %i.an, align 4, !tbaa !67
  br label %bb.ce

bb.ce:                                            ; preds = %.lr.ph435.split.split.i78.i.i.i, %bb.cd
  %niter280.next.3 = add i32 %niter280, 4
  %niter280.ncmp.3 = icmp eq i32 %niter280, %i.aja
  br i1 %niter280.ncmp.3, label %process_synthesis_subpackets.exit.thread251.i.i.loopexit.unr-lcssa, label %.lr.ph435.split.split.i78.i.i.i, !llvm.loop !2

process_synthesis_subpackets.exit.i.i:            ; preds = %bb.bz
  %i.akm = getelementptr inbounds nuw i8, ptr %i.aih, i64 4
  %i.akn = load i32, ptr %i.akm, align 4, !tbaa !59
  %i.ako = shl i32 %i.akn, 3
  %i.akp = load i32, ptr %i.aa, align 4, !tbaa !46 ; 2 uses
  %i.akq = icmp sgt i32 %i.akp, 1
  %i.akr = shl nuw nsw i32 8, %i.akp
  %spec.select.i.i.i.i = select i1 %i.akq, i32 30, i32 %i.akr
  %i.aks = call fastcc i32 @synthfilt_build_sb_samples(ptr noundef %i.e, ptr noundef %7, i32 noundef %i.ako, i32 noundef 8, i32 noundef %spec.select.i.i.i.i) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  %i.akt = icmp slt i32 %i.aks, 0
  br i1 %i.akt, label %qdm2_decode.exit.thread, label %process_synthesis_subpackets.exit.thread251.i.i

process_synthesis_subpackets.exit.thread251.i.i.loopexit.unr-lcssa: ; preds = %bb.ce
  %lcmp.mod277.not = icmp eq i32 %xtraiter275, 0
  br i1 %lcmp.mod277.not, label %process_synthesis_subpackets.exit.thread251.i.i, label %.lr.ph435.split.split.i78.i.i.i.epil.preheader

.lr.ph435.split.split.i78.i.i.i.epil.preheader:   ; preds = %process_synthesis_subpackets.exit.thread251.i.i.loopexit.unr-lcssa, %.lr.ph435.split.split.i78.i.i.i.preheader
  %.epil.init = phi i32 [ %.promoted442.i77.i.i.i, %.lr.ph435.split.split.i78.i.i.i.preheader ], [ %spec.select340, %process_synthesis_subpackets.exit.thread251.i.i.loopexit.unr-lcssa ]
  %lcmp.mod278 = icmp ne i32 %xtraiter275, 0
  call void @llvm.assume(i1 %lcmp.mod278)
  br label %.lr.ph435.split.split.i78.i.i.i.epil

.lr.ph435.split.split.i78.i.i.i.epil:             ; preds = %.preheader31.i.i80.i.i.i.epil, %.lr.ph435.split.split.i78.i.i.i.epil.preheader
  %i.aku = phi i32 [ %i.akx, %.preheader31.i.i80.i.i.i.epil ], [ %.epil.init, %.lr.ph435.split.split.i78.i.i.i.epil.preheader ] ; 3 uses
  %epil.iter276 = phi i32 [ %epil.iter276.next, %.preheader31.i.i80.i.i.i.epil ], [ 0, %.lr.ph435.split.split.i78.i.i.i.epil.preheader ]
  %i.akv = icmp sgt i32 %i.aku, 3839
  br i1 %i.akv, label %bb.cf, label %.preheader31.i.i80.i.i.i.epil

bb.cf:                                            ; preds = %.lr.ph435.split.split.i78.i.i.i.epil
  %i.akw = add nsw i32 %i.aku, -3840              ; 2 uses
  store i32 %i.akw, ptr %i.an, align 4, !tbaa !67
  br label %.preheader31.i.i80.i.i.i.epil

.preheader31.i.i80.i.i.i.epil:                    ; preds = %bb.cf, %.lr.ph435.split.split.i78.i.i.i.epil
  %i.akx = phi i32 [ %i.akw, %bb.cf ], [ %i.aku, %.lr.ph435.split.split.i78.i.i.i.epil ]
  %epil.iter276.next = add i32 %epil.iter276, 1   ; 2 uses
  %epil.iter276.cmp.not = icmp eq i32 %epil.iter276.next, 2
  br i1 %epil.iter276.cmp.not, label %process_synthesis_subpackets.exit.thread251.i.i, label %.lr.ph435.split.split.i78.i.i.i.epil, !llvm.loop !104

process_synthesis_subpackets.exit.thread251.i.i:  ; preds = %process_synthesis_subpackets.exit.thread251.i.i.loopexit.unr-lcssa, %.preheader31.i.i80.i.i.i.epil, %process_synthesis_subpackets.exit.i.i, %.build_sb_samples_from_noise.exit.loopexit_crit_edge.split.us.i102.i.i.i, %qdm2_search_subpacket_type_in_list.exit64.thread.i.i.i
  store i32 1, ptr %i.at, align 4, !tbaa !139
  br label %qdm2_decode_super_block.exit.i

._crit_edge.thread.i.i:                           ; preds = %._crit_edge.i.i, %.critedge.i.i
  %i.aky = load i32, ptr %i.at, align 4, !tbaa !139
  %.not161.i.i = icmp eq i32 %i.aky, 0
  br i1 %.not161.i.i, label %qdm2_decode_super_block.exit.i, label %bb.cg

bb.cg:                                            ; preds = %._crit_edge.thread.i.i
  call fastcc void @fill_tone_level_array(ptr noundef nonnull %i.e, i32 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  %i.akz = call fastcc i32 @synthfilt_build_sb_samples(ptr noundef nonnull %i.e, ptr noundef %6, i32 noundef 0, i32 noundef 0, i32 noundef 8) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  %i.ala = icmp slt i32 %i.akz, 0
  br i1 %i.ala, label %qdm2_decode.exit.thread, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  %i.alb = load i32, ptr %i.aa, align 4, !tbaa !46 ; 2 uses
  %i.alc = icmp sgt i32 %i.alb, 1
  %i.ald = shl nuw nsw i32 8, %i.alb
  %spec.select.i191.i.i = select i1 %i.alc, i32 30, i32 %i.ald
  %i.ale = call fastcc i32 @synthfilt_build_sb_samples(ptr noundef nonnull %i.e, ptr noundef %5, i32 noundef 0, i32 noundef 8, i32 noundef %spec.select.i191.i.i) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  %i.alf = icmp slt i32 %i.ale, 0
  br i1 %i.alf, label %qdm2_decode.exit.thread, label %qdm2_decode_super_block.exit.i

qdm2_decode_super_block.exit.i:                   ; preds = %bb.ch, %._crit_edge.thread.i.i, %process_synthesis_subpackets.exit.thread251.i.i, %bb.f
  %i.alg = load i32, ptr %i.w, align 4, !tbaa !134
  %.not.i = icmp eq i32 %i.alg, 0
  br i1 %.not.i, label %bb.ci, label %qdm2_fft_tone_synthesizer.exit.i

bb.ci:                                            ; preds = %qdm2_decode_super_block.exit.i
  %i.alh = load i32, ptr %i.k, align 16, !tbaa !125 ; 2 uses
  %i.ali = icmp eq i32 %i.alh, 2
  br i1 %i.ali, label %bb.cj, label %.thread.i

bb.cj:                                            ; preds = %bb.ci
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %i.alj = load ptr, ptr %i.ad, align 16, !tbaa !56
  %.not.i69.i = icmp eq ptr %i.alj, null
  br i1 %.not.i69.i, label %qdm2_fft_tone_synthesizer.exit.thread.i, label %.preheader119.i.i

.preheader119.i.i:                                ; preds = %bb.cj
  store i32 0, ptr %i.au, align 16, !tbaa !73
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.av, i8 -1, i64 20, i1 false), !tbaa !57
  %i.alk = load i32, ptr %i.y, align 16, !tbaa !135 ; 2 uses
  %i.all = icmp sgt i32 %i.alk, 0
  br i1 %i.all, label %.preheader118.i.i, label %.thread171.i.i

.preheader118.i.i:                                ; preds = %.preheader119.i.i, %.loopexit.i78.i
  %i.alm = phi i32 [ %i.aos, %.loopexit.i78.i ], [ %i.alk, %.preheader119.i.i ] ; 6 uses
  %.085130.i.i = phi i32 [ %.187.i.i.lcssa, %.loopexit.i78.i ], [ 256, %.preheader119.i.i ] ; 3 uses
  %.191129.i.i = phi i32 [ %i.aot, %.loopexit.i78.i ], [ 0, %.preheader119.i.i ] ; 2 uses
  %8 = icmp sgt i32 %i.alm, 0
  br i1 %8, label %.lr.ph.preheader.i.i, label %qdm2_fft_tone_synthesizer.exit.thread.i

.lr.ph.preheader.i.i:                             ; preds = %.preheader118.i.i
  %wide.trip.count.i.i = zext nneg i32 %i.alm to i64 ; 2 uses
  %xtraiter281 = and i64 %wide.trip.count.i.i, 1
  %9 = icmp eq i32 %i.alm, 1
  br i1 %9, label %.lr.ph.i70.i.epil.preheader, label %.lr.ph.preheader.i.i.new

.lr.ph.preheader.i.i.new:                         ; preds = %.lr.ph.preheader.i.i
  %unroll_iter287 = and i64 %wide.trip.count.i.i, 2147483646
  br label %.lr.ph.i70.i

.preheader.i.i:                                   ; preds = %.loopexit.i78.i
  %.pre.i79.i = load i32, ptr %i.av, align 4, !tbaa !57 ; 2 uses
  %i.aln = icmp slt i32 %.pre.i79.i, 0
  %.pre.lobit.i.i = ashr i32 %.pre.i79.i, 31
  %i.alo = load i32, ptr %i.ba, align 8, !tbaa !57 ; 2 uses
  %i.alp = icmp slt i32 %i.alo, 0                 ; 2 uses
  %brmerge.i.i = select i1 %i.alp, i1 true, i1 %i.aln
  %spec.select.mux.i.i = select i1 %i.alp, i32 %.pre.lobit.i.i, i32 1 ; 3 uses
  br i1 %brmerge.i.i, label %.thread160.i.i, label %.thread160.i.thread.i

.lr.ph.i70.i:                                     ; preds = %.lr.ph.i70.i, %.lr.ph.preheader.i.i.new
  %indvars.iv.i71.i = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %indvars.iv.next.i72.i.1, %.lr.ph.i70.i ] ; 3 uses
  %.0124.i.i = phi ptr [ null, %.lr.ph.preheader.i.i.new ], [ %.1.i.i.1, %.lr.ph.i70.i ]
  %.086123.i.i = phi i32 [ 0, %.lr.ph.preheader.i.i.new ], [ %.187.i.i.1, %.lr.ph.i70.i ] ; 2 uses
  %niter288 = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %niter288.next.1, %.lr.ph.i70.i ]
  %i.alq = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %indvars.iv.i71.i
  %i.alr = load ptr, ptr %i.alq, align 16, !tbaa !56 ; 2 uses
  %i.als = load i32, ptr %i.alr, align 8, !tbaa !137 ; 3 uses
  %i.alt = icmp sgt i32 %i.als, %.086123.i.i
  %i.alu = icmp slt i32 %i.als, %.085130.i.i
  %or.cond107.i.i = and i1 %i.alt, %i.alu         ; 2 uses
  %.187.i.i = select i1 %or.cond107.i.i, i32 %i.als, i32 %.086123.i.i ; 2 uses
  %.1.i.i = select i1 %or.cond107.i.i, ptr %i.alr, ptr %.0124.i.i
  %i.alv = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %indvars.iv.i71.i
  %i.alw = getelementptr inbounds nuw i8, ptr %i.alv, i64 16
  %i.alx = load ptr, ptr %i.alw, align 16, !tbaa !56 ; 2 uses
  %i.aly = load i32, ptr %i.alx, align 8, !tbaa !137 ; 3 uses
  %i.alz = icmp sgt i32 %i.aly, %.187.i.i
  %i.ama = icmp slt i32 %i.aly, %.085130.i.i
  %or.cond107.i.i.1 = and i1 %i.alz, %i.ama       ; 2 uses
  %.187.i.i.1 = select i1 %or.cond107.i.i.1, i32 %i.aly, i32 %.187.i.i ; 3 uses
  %.1.i.i.1 = select i1 %or.cond107.i.i.1, ptr %i.alx, ptr %.1.i.i ; 3 uses
  %indvars.iv.next.i72.i.1 = add nuw nsw i64 %indvars.iv.i71.i, 2 ; 2 uses
  %niter288.next.1 = add i64 %niter288, 2         ; 2 uses
  %niter288.ncmp.1 = icmp eq i64 %niter288.next.1, %unroll_iter287
  br i1 %niter288.ncmp.1, label %._crit_edge.i74.i.unr-lcssa, label %.lr.ph.i70.i, !llvm.loop !105

._crit_edge.i74.i.unr-lcssa:                      ; preds = %.lr.ph.i70.i
  %lcmp.mod283.not = icmp eq i64 %xtraiter281, 0
  br i1 %lcmp.mod283.not, label %._crit_edge.i74.i, label %.lr.ph.i70.i.epil.preheader

.lr.ph.i70.i.epil.preheader:                      ; preds = %._crit_edge.i74.i.unr-lcssa, %.lr.ph.preheader.i.i
  %indvars.iv.i71.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i72.i.1, %._crit_edge.i74.i.unr-lcssa ]
  %.0124.i.i.epil.init = phi ptr [ null, %.lr.ph.preheader.i.i ], [ %.1.i.i.1, %._crit_edge.i74.i.unr-lcssa ]
  %.086123.i.i.epil.init = phi i32 [ 0, %.lr.ph.preheader.i.i ], [ %.187.i.i.1, %._crit_edge.i74.i.unr-lcssa ] ; 2 uses
  %lcmp.mod286 = trunc i32 %i.alm to i1
  call void @llvm.assume(i1 %lcmp.mod286)
  %i.amb = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %indvars.iv.i71.i.epil.init
  %i.amc = load ptr, ptr %i.amb, align 16, !tbaa !56 ; 2 uses
  %i.amd = load i32, ptr %i.amc, align 8, !tbaa !137 ; 3 uses
  %i.ame = icmp sgt i32 %i.amd, %.086123.i.i.epil.init
  %i.amf = icmp slt i32 %i.amd, %.085130.i.i
  %or.cond107.i.i.epil = and i1 %i.ame, %i.amf    ; 2 uses
  %.187.i.i.epil = select i1 %or.cond107.i.i.epil, i32 %i.amd, i32 %.086123.i.i.epil.init
  %.1.i.i.epil = select i1 %or.cond107.i.i.epil, ptr %i.amc, ptr %.0124.i.i.epil.init
  br label %._crit_edge.i74.i

._crit_edge.i74.i:                                ; preds = %._crit_edge.i74.i.unr-lcssa, %.lr.ph.i70.i.epil.preheader
  %.187.i.i.lcssa = phi i32 [ %.187.i.i.1, %._crit_edge.i74.i.unr-lcssa ], [ %.187.i.i.epil, %.lr.ph.i70.i.epil.preheader ]
  %.1.i.i.lcssa = phi ptr [ %.1.i.i.1, %._crit_edge.i74.i.unr-lcssa ], [ %.1.i.i.epil, %.lr.ph.i70.i.epil.preheader ] ; 5 uses
  %.not104.i.i = icmp eq ptr %.1.i.i.lcssa, null
  br i1 %.not104.i.i, label %qdm2_fft_tone_synthesizer.exit.thread.i, label %bb.ck

bb.ck:                                            ; preds = %._crit_edge.i74.i
  %i.amg = icmp eq i32 %.191129.i.i, 0
  br i1 %i.amg, label %bb.cl, label %bb.cn

bb.cl:                                            ; preds = %bb.ck
  %i.amh = load i32, ptr %.1.i.i.lcssa, align 8, !tbaa !137 ; 2 uses
  %i.ami = add i32 %i.amh, -48
  %or.cond108.i.i = icmp ult i32 %i.ami, -32
  br i1 %or.cond108.i.i, label %qdm2_fft_tone_synthesizer.exit.thread.i, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.amj = zext nneg i32 %i.amh to i64
  %i.amk = getelementptr i8, ptr @fft_subpackets, i64 %i.amj
  %i.aml = getelementptr i8, ptr %i.amk, i64 -16
  %i.amm = load i8, ptr %i.aml, align 1, !tbaa !33
  %.not105.i.i = icmp eq i8 %i.amm, 0
  br i1 %.not105.i.i, label %bb.cn, label %qdm2_fft_tone_synthesizer.exit.thread.i

bb.cn:                                            ; preds = %bb.cm, %bb.ck
  %i.amn = getelementptr inbounds nuw i8, ptr %.1.i.i.lcssa, i64 8
  %i.amo = load ptr, ptr %i.amn, align 8, !tbaa !60 ; 8 uses
  %i.amp = getelementptr inbounds nuw i8, ptr %.1.i.i.lcssa, i64 4
  %i.amq = load i32, ptr %i.amp, align 4, !tbaa !59 ; 2 uses
  %or.cond.i.i75.i = icmp ugt i32 %i.amq, 268435455
  %i.amr = shl nuw nsw i32 %i.amq, 3
  %i.ams = select i1 %or.cond.i.i75.i, i32 -8, i32 %i.amr ; 2 uses
  %or.cond.i.i.i76.i = icmp ult i32 %i.ams, 2147483135 ; 2 uses
  %i.amt = icmp ne ptr %i.amo, null
  %or.cond3.i.i.i77.i = and i1 %i.amt, %or.cond.i.i.i76.i ; 2 uses
  %.014.i.i.i.i = select i1 %or.cond.i.i.i76.i, ptr %i.amo, ptr null
  %.013.i.i.i.i = select i1 %or.cond3.i.i.i77.i, i32 %i.ams, i32 0 ; 2 uses
  store ptr %.014.i.i.i.i, ptr %4, align 8, !tbaa !69
  store i32 %.013.i.i.i.i, ptr %i.aw, align 4, !tbaa !70
  %i.amu = add nuw nsw i32 %.013.i.i.i.i, 8       ; 6 uses
  store i32 %i.amu, ptr %i.ax, align 8, !tbaa !71
  store i32 0, ptr %i.ay, align 8, !tbaa !72
  br i1 %or.cond3.i.i.i77.i, label %bb.co, label %qdm2_fft_tone_synthesizer.exit.thread.i

bb.co:                                            ; preds = %bb.cn
  %i.amv = load i32, ptr %.1.i.i.lcssa, align 8, !tbaa !137 ; 4 uses
  %i.amw = and i32 %i.amv, -16
  %or.cond109.i.i = icmp eq i32 %i.amw, 32
  br i1 %or.cond109.i.i, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  %i.amx = zext nneg i32 %i.amv to i64
  %i.amy = getelementptr i8, ptr @fft_subpackets, i64 %i.amx
  %i.amz = getelementptr i8, ptr %i.amy, i64 -16
  %i.ana = load i8, ptr %i.amz, align 1, !tbaa !33
  %.not106.i.i = icmp eq i8 %i.ana, 0
  br i1 %.not106.i.i, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cp
  %.084.i.i = phi i32 [ 0, %bb.cq ], [ 1, %bb.cp ] ; 4 uses
  switch i32 %i.amv, label %.loopexit.i78.i [
    i32 39, label %bb.cs
    i32 38, label %bb.cs
    i32 37, label %bb.cs
    i32 36, label %bb.cs
    i32 35, label %bb.cs
    i32 34, label %bb.cs
    i32 33, label %bb.cs
    i32 23, label %bb.cs
    i32 22, label %bb.cs
    i32 21, label %bb.cs
    i32 20, label %bb.cs
    i32 19, label %bb.cs
    i32 18, label %bb.cs
    i32 17, label %bb.cs
    i32 31, label %.loopexit.sink.split.sink.split.i.i
    i32 46, label %.preheader117.i.i
  ]

.preheader117.i.i:                                ; preds = %bb.cr
  %i.anb = load i32, ptr %i.amo, align 1, !tbaa !33
  %i.anc = and i32 %i.anb, 63
  store i32 %i.anc, ptr %i.af, align 4, !tbaa !57
  %i.and = load i32, ptr %i.amo, align 1, !tbaa !33
  %i.ane = lshr i32 %i.and, 6
  %i.anf = and i32 %i.ane, 63
  %i.ang = call i32 @llvm.umin.i32(i32 %i.amu, i32 12) ; 2 uses
  store i32 %i.anf, ptr %i.ag, align 16, !tbaa !57
  %i.anh = getelementptr inbounds nuw i8, ptr %i.amo, i64 1
  %i.ani = load i32, ptr %i.anh, align 1, !tbaa !33
  %i.anj = and i32 %i.ang, 4
  %i.ank = lshr i32 %i.ani, %i.anj
  %i.anl = and i32 %i.ank, 63
  %i.anm = add nuw nsw i32 %i.ang, 6
  %i.ann = call i32 @llvm.umin.i32(i32 %i.amu, i32 %i.anm) ; 3 uses
  store i32 %i.anl, ptr %i.ah, align 4, !tbaa !57
  %i.ano = lshr i32 %i.ann, 3
  %i.anp = zext nneg i32 %i.ano to i64
  %i.anq = getelementptr inbounds nuw i8, ptr %i.amo, i64 %i.anp
  %i.anr = load i32, ptr %i.anq, align 1, !tbaa !33
  %i.ans = and i32 %i.ann, 7
  %i.ant = lshr i32 %i.anr, %i.ans
  %i.anu = and i32 %i.ant, 63
  %i.anv = add nuw nsw i32 %i.ann, 6
  %i.anw = call i32 @llvm.umin.i32(i32 %i.amu, i32 %i.anv) ; 3 uses
  store i32 %i.anu, ptr %i.ai, align 8, !tbaa !57
  %i.anx = lshr i32 %i.anw, 3
  %i.any = zext nneg i32 %i.anx to i64
  %i.anz = getelementptr inbounds nuw i8, ptr %i.amo, i64 %i.any
  %i.aoa = load i32, ptr %i.anz, align 1, !tbaa !33
  %i.aob = and i32 %i.anw, 7
  %i.aoc = lshr i32 %i.aoa, %i.aob
  %i.aod = and i32 %i.aoc, 63
  %i.aoe = add nuw nsw i32 %i.anw, 6
  %i.aof = call i32 @llvm.umin.i32(i32 %i.amu, i32 %i.aoe) ; 3 uses
  store i32 %i.aod, ptr %i.aj, align 4, !tbaa !57
  %i.aog = lshr i32 %i.aof, 3
  %i.aoh = zext nneg i32 %i.aog to i64
  %i.aoi = getelementptr inbounds nuw i8, ptr %i.amo, i64 %i.aoh
  %i.aoj = load i32, ptr %i.aoi, align 1, !tbaa !33
  %i.aok = and i32 %i.aof, 7
  %i.aol = lshr i32 %i.aoj, %i.aok
  %i.aom = and i32 %i.aol, 63
  %i.aon = add nuw nsw i32 %i.aof, 6
  %i.aoo = call i32 @llvm.umin.i32(i32 %i.amu, i32 %i.aon)
  store i32 %i.aom, ptr %i.ak, align 16, !tbaa !57
  store i32 %i.aoo, ptr %i.ay, align 8, !tbaa !72
  br label %.loopexit.sink.split.sink.split.i.i

bb.cs:                                            ; preds = %bb.cr, %bb.cr, %bb.cr, %bb.cr, %bb.cr, %bb.cr, %bb.cr, %bb.cr, %bb.cr, %bb.cr, %bb.cr, %bb.cr, %bb.cr, %bb.cr
  %i.aop = load i32, ptr %i.aa, align 4, !tbaa !46
  %i.aoq = and i32 %i.amv, 15
  %reass.sub.i.i = sub i32 %i.aop, %i.aoq
  %i.aor = add i32 %reass.sub.i.i, 5              ; 2 uses
  %or.cond5.i.i = icmp ult i32 %i.aor, 4
  br i1 %or.cond5.i.i, label %.loopexit.sink.split.i.i, label %.loopexit.i78.i

.loopexit.sink.split.sink.split.i.i:              ; preds = %.preheader117.i.i, %bb.cr
  call fastcc void @qdm2_fft_decode_tones(ptr noundef nonnull %i.e, i32 noundef 0, ptr noundef %4, i32 noundef %.084.i.i)
  call fastcc void @qdm2_fft_decode_tones(ptr noundef nonnull %i.e, i32 noundef 1, ptr noundef %4, i32 noundef %.084.i.i)
  call fastcc void @qdm2_fft_decode_tones(ptr noundef nonnull %i.e, i32 noundef 2, ptr noundef %4, i32 noundef %.084.i.i)
  br label %.loopexit.sink.split.i.i

.loopexit.sink.split.i.i:                         ; preds = %.loopexit.sink.split.sink.split.i.i, %bb.cs
  %.sink.i.i = phi i32 [ %i.aor, %bb.cs ], [ 3, %.loopexit.sink.split.sink.split.i.i ]
  call fastcc void @qdm2_fft_decode_tones(ptr noundef nonnull %i.e, i32 noundef %.sink.i.i, ptr noundef %4, i32 noundef %.084.i.i)
  %.pre.i = load i32, ptr %i.y, align 16, !tbaa !135
  br label %.loopexit.i78.i

.loopexit.i78.i:                                  ; preds = %.loopexit.sink.split.i.i, %bb.cs, %bb.cr
  %i.aos = phi i32 [ %.pre.i, %.loopexit.sink.split.i.i ], [ %i.alm, %bb.cs ], [ %i.alm, %bb.cr ] ; 2 uses
  %i.aot = add nuw nsw i32 %.191129.i.i, 1        ; 2 uses
  %i.aou = icmp slt i32 %i.aot, %i.aos
  br i1 %i.aou, label %.preheader118.i.i, label %.preheader.i.i, !llvm.loop !106

.thread160.i.i:                                   ; preds = %.preheader.i.i
  %i.aov = load i32, ptr %i.bb, align 4, !tbaa !57 ; 2 uses
  %i.aow = icmp sgt i32 %i.aov, -1
  br i1 %i.aow, label %bb.ct, label %.thread164.i.i

.thread160.i.thread.i:                            ; preds = %.preheader.i.i
  store i32 %i.alo, ptr %i.az, align 8, !tbaa !57
  %i.aox = load i32, ptr %i.bb, align 4, !tbaa !57 ; 2 uses
  %i.aoy = icmp sgt i32 %i.aox, -1
  br i1 %i.aoy, label %.thread238.i, label %.thread164.i.i

bb.ct:                                            ; preds = %.thread160.i.i
  %i.aoz = icmp sgt i32 %spec.select.mux.i.i, -1
  br i1 %i.aoz, label %.thread238.i, label %.thread164.i.i

.thread238.i:                                     ; preds = %bb.ct, %.thread160.i.thread.i
  %.5.1.i237240.i = phi i32 [ %spec.select.mux.i.i, %bb.ct ], [ 1, %.thread160.i.thread.i ]
  %i.apa = phi i32 [ %i.aov, %bb.ct ], [ %i.aox, %.thread160.i.thread.i ]
  %i.apb = zext nneg i32 %.5.1.i237240.i to i64
  %i.apc = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.apb
  store i32 %i.apa, ptr %i.apc, align 4, !tbaa !57
  br label %.thread164.i.i

.thread164.i.i:                                   ; preds = %.thread238.i, %bb.ct, %.thread160.i.thread.i, %.thread160.i.i
  %.5.2.i.i = phi i32 [ %spec.select.mux.i.i, %.thread160.i.i ], [ 2, %.thread238.i ], [ 2, %bb.ct ], [ 1, %.thread160.i.thread.i ] ; 3 uses
  %i.apd = load i32, ptr %i.bc, align 16, !tbaa !57 ; 2 uses
  %i.ape = icmp sgt i32 %i.apd, -1
  br i1 %i.ape, label %bb.cu, label %.thread169.i.i

bb.cu:                                            ; preds = %.thread164.i.i
  %i.apf = icmp sgt i32 %.5.2.i.i, -1
  br i1 %i.apf, label %bb.cv, label %.thread169.i.i

bb.cv:                                            ; preds = %bb.cu
  %i.apg = zext nneg i32 %.5.2.i.i to i64
  %i.aph = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.apg
  store i32 %i.apd, ptr %i.aph, align 4, !tbaa !57
  br label %.thread169.i.i

.thread169.i.i:                                   ; preds = %bb.cv, %bb.cu, %.thread164.i.i
  %.5.3.i.i = phi i32 [ %.5.2.i.i, %.thread164.i.i ], [ 3, %bb.cv ], [ 3, %bb.cu ] ; 3 uses
  %i.api = load i32, ptr %i.bd, align 4, !tbaa !57 ; 2 uses
  %i.apj = icmp sgt i32 %i.api, -1
  %i.apk = icmp sgt i32 %.5.3.i.i, -1             ; 2 uses
  br i1 %i.apj, label %bb.cw, label %bb.cy

bb.cw:                                            ; preds = %.thread169.i.i
  br i1 %i.apk, label %bb.cx, label %.thread176.i.i

bb.cx:                                            ; preds = %bb.cw
  %i.apl = zext nneg i32 %.5.3.i.i to i64
  %i.apm = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.apl
  store i32 %i.api, ptr %i.apm, align 4, !tbaa !57
  br label %.thread176.i.i

bb.cy:                                            ; preds = %.thread169.i.i
  br i1 %i.apk, label %.thread176.i.i, label %.thread171.i.i

.thread176.i.i:                                   ; preds = %bb.cy, %bb.cx, %bb.cw
  %.5.4178.i.i = phi i32 [ %.5.3.i.i, %bb.cy ], [ 4, %bb.cx ], [ 4, %bb.cw ]
  %i.apn = load i32, ptr %i.au, align 16, !tbaa !73
  %i.apo = zext nneg i32 %.5.4178.i.i to i64
  %i.app = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.apo
  store i32 %i.apn, ptr %i.app, align 4, !tbaa !57
  br label %.thread171.i.i

qdm2_fft_tone_synthesizer.exit.thread.i:          ; preds = %bb.cj, %bb.cn, %bb.cm, %bb.cl, %._crit_edge.i74.i, %.preheader118.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  br label %qdm2_decode.exit.thread

.thread171.i.i:                                   ; preds = %.thread176.i.i, %bb.cy, %.preheader119.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  %.pre166.i = load i32, ptr %i.k, align 16, !tbaa !125
  br label %.thread.i

.thread.i:                                        ; preds = %.thread171.i.i, %bb.ci
  %i.apq = phi i32 [ %i.alh, %bb.ci ], [ %.pre166.i, %.thread171.i.i ] ; 2 uses
  %i.apr = load i32, ptr %i.s, align 4, !tbaa !39 ; 4 uses
  %i.aps = icmp sgt i32 %i.apr, 0
  br i1 %i.aps, label %.lr.ph.i89.i, label %._crit_edge.i80.i

.lr.ph.i89.i:                                     ; preds = %.thread.i
  %i.apt = load i32, ptr %i.bf, align 4, !tbaa !42
  %i.apu = sext i32 %i.apt to i64
  %i.apv = shl nsw i64 %i.apu, 3                  ; 9 uses
  %wide.trip.count.i90.i = zext nneg i32 %i.apr to i64 ; 2 uses
  %xtraiter289 = and i64 %wide.trip.count.i90.i, 7 ; 3 uses
  %i.apw = icmp ult i32 %i.apr, 8
  br i1 %i.apw, label %.epil.preheader, label %.lr.ph.i89.i.new

.lr.ph.i89.i.new:                                 ; preds = %.lr.ph.i89.i
  %unroll_iter293 = and i64 %wide.trip.count.i90.i, 2147483640
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cz, %.lr.ph.i89.i.new
  %indvars.iv.i91.i = phi i64 [ 0, %.lr.ph.i89.i.new ], [ %indvars.iv.next.i92.i.7, %bb.cz ] ; 9 uses
  %niter294 = phi i64 [ 0, %.lr.ph.i89.i.new ], [ %niter294.next.7, %bb.cz ]
  %i.apx = getelementptr inbounds nuw [2056 x i8], ptr %i.be, i64 %indvars.iv.i91.i
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.apx, i8 0, i64 %i.apv, i1 false)
  %i.apy = getelementptr inbounds nuw [2056 x i8], ptr %i.be, i64 %indvars.iv.i91.i
  %i.apz = getelementptr inbounds nuw i8, ptr %i.apy, i64 2056
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.apz, i8 0, i64 %i.apv, i1 false)
  %i.aqa = getelementptr inbounds nuw [2056 x i8], ptr %i.be, i64 %indvars.iv.i91.i
  %i.aqb = getelementptr inbounds nuw i8, ptr %i.aqa, i64 4112
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.aqb, i8 0, i64 %i.apv, i1 false)
  %i.aqc = getelementptr inbounds nuw [2056 x i8], ptr %i.be, i64 %indvars.iv.i91.i
  %i.aqd = getelementptr inbounds nuw i8, ptr %i.aqc, i64 6168
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.aqd, i8 0, i64 %i.apv, i1 false)
  %i.aqe = getelementptr inbounds nuw [2056 x i8], ptr %i.be, i64 %indvars.iv.i91.i
  %i.aqf = getelementptr inbounds nuw i8, ptr %i.aqe, i64 8224
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.aqf, i8 0, i64 %i.apv, i1 false)
  %i.aqg = getelementptr inbounds nuw [2056 x i8], ptr %i.be, i64 %indvars.iv.i91.i
  %i.aqh = getelementptr inbounds nuw i8, ptr %i.aqg, i64 10280
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.aqh, i8 0, i64 %i.apv, i1 false)
  %i.aqi = getelementptr inbounds nuw [2056 x i8], ptr %i.be, i64 %indvars.iv.i91.i
  %i.aqj = getelementptr inbounds nuw i8, ptr %i.aqi, i64 12336
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.aqj, i8 0, i64 %i.apv, i1 false)
  %i.aqk = getelementptr inbounds nuw [2056 x i8], ptr %i.be, i64 %indvars.iv.i91.i
  %i.aql = getelementptr inbounds nuw i8, ptr %i.aqk, i64 14392
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.aql, i8 0, i64 %i.apv, i1 false)
  %indvars.iv.next.i92.i.7 = add nuw nsw i64 %indvars.iv.i91.i, 8 ; 2 uses
  %niter294.next.7 = add i64 %niter294, 8         ; 2 uses
  %niter294.ncmp.7 = icmp eq i64 %niter294.next.7, %unroll_iter293
  br i1 %niter294.ncmp.7, label %._crit_edge.i80.i.loopexit.unr-lcssa, label %bb.cz, !llvm.loop !107

._crit_edge.i80.i.loopexit.unr-lcssa:             ; preds = %bb.cz
  %lcmp.mod291.not = icmp eq i64 %xtraiter289, 0
  br i1 %lcmp.mod291.not, label %._crit_edge.i80.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i80.i.loopexit.unr-lcssa, %.lr.ph.i89.i
  %indvars.iv.i91.i.epil.init = phi i64 [ 0, %.lr.ph.i89.i ], [ %indvars.iv.next.i92.i.7, %._crit_edge.i80.i.loopexit.unr-lcssa ]
  %lcmp.mod292 = icmp ne i64 %xtraiter289, 0
  call void @llvm.assume(i1 %lcmp.mod292)
  br label %bb.da

bb.da:                                            ; preds = %bb.da, %.epil.preheader
  %indvars.iv.i91.i.epil = phi i64 [ %indvars.iv.i91.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i92.i.epil, %bb.da ] ; 2 uses
  %epil.iter290 = phi i64 [ 0, %.epil.preheader ], [ %epil.iter290.next, %bb.da ]
  %i.aqm = getelementptr inbounds nuw [2056 x i8], ptr %i.be, i64 %indvars.iv.i91.i.epil
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.aqm, i8 0, i64 %i.apv, i1 false)
  %indvars.iv.next.i92.i.epil = add nuw nsw i64 %indvars.iv.i91.i.epil, 1
  %epil.iter290.next = add i64 %epil.iter290, 1   ; 2 uses
  %epil.iter290.cmp.not = icmp eq i64 %epil.iter290.next, %xtraiter289
  br i1 %epil.iter290.cmp.not, label %._crit_edge.i80.i, label %bb.da, !llvm.loop !108

._crit_edge.i80.i:                                ; preds = %._crit_edge.i80.i.loopexit.unr-lcssa, %bb.da, %.thread.i
  %i.aqn = load i32, ptr %i.bd, align 4, !tbaa !57 ; 3 uses
  %i.aqo = icmp sgt i32 %i.aqn, -1
  br i1 %i.aqo, label %.preheader123.i.i, label %.loopexit.i81.i

.preheader123.i.i:                                ; preds = %._crit_edge.i80.i
  %i.aqp = load i32, ptr %i.bh, align 8, !tbaa !57 ; 2 uses
  %i.aqq = icmp slt i32 %i.aqn, %i.aqp
  br i1 %i.aqq, label %.lr.ph127.i.i, label %.loopexit.i81.i

.lr.ph127.i.i:                                    ; preds = %.preheader123.i.i
  %i.aqr = icmp eq i32 %i.apr, 1
  %i.aqs = zext nneg i32 %i.aqn to i64
  br label %bb.db

bb.db:                                            ; preds = %bb.dg, %.lr.ph127.i.i
  %indvars.iv141.i.i = phi i64 [ %i.aqs, %.lr.ph127.i.i ], [ %indvars.iv.next142.i.i, %bb.dg ] ; 2 uses
  %i.aqt = getelementptr inbounds nuw [10 x i8], ptr %i.bg, i64 %indvars.iv141.i.i ; 5 uses
  %i.aqu = load i16, ptr %i.aqt, align 2, !tbaa !76
  %i.aqv = sext i16 %i.aqu to i32
  %.not.i88.i = icmp eq i32 %i.apq, %i.aqv
  br i1 %.not.i88.i, label %bb.dc, label %.loopexit.i81.i

bb.dc:                                            ; preds = %bb.db
  br i1 %i.aqr, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.aqw = getelementptr inbounds nuw i8, ptr %i.aqt, i64 2
  %i.aqx = load i8, ptr %i.aqw, align 2, !tbaa !77
  %i.aqy = zext i8 %i.aqx to i64
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.dc
  %i.aqz = phi i64 [ %i.aqy, %bb.dd ], [ 0, %bb.dc ]
  %i.ara = getelementptr inbounds nuw i8, ptr %i.aqt, i64 6
  %i.arb = load i16, ptr %i.ara, align 2, !tbaa !78 ; 2 uses
  %i.arc = icmp slt i16 %i.arb, 0
  br i1 %i.arc, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.ard = load i32, ptr %i.ac, align 8, !tbaa !50
  %.not114.i.i = icmp eq i32 %i.ard, 0
  %i.are = zext i1 %.not114.i.i to i64
  %i.arf = getelementptr inbounds nuw [256 x i8], ptr @fft_tone_level_table, i64 %i.are
  %i.arg = and i16 %i.arb, 63
  %i.arh = zext nneg i16 %i.arg to i64
  %i.ari = getelementptr inbounds nuw [4 x i8], ptr %i.arf, i64 %i.arh
  %i.arj = load float, ptr %i.ari, align 4, !tbaa !32
  %i.ark = fpext nsz float %i.arj to double
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.de
  %i.arl = phi double [ %i.ark, %bb.df ], [ 0.000000e+00, %bb.de ]
  %i.arm = getelementptr inbounds nuw i8, ptr %i.aqt, i64 8
  %i.arn = load i8, ptr %i.arm, align 2, !tbaa !79
  %i.aro = uitofp i8 %i.arn to double
  %i.arp = fmul nnan nsz double %i.aro, f0x3FE921FB54442D18
  %sincos.i.i = call nsz { double, double } @llvm.sincos.f64(double %i.arp) ; 2 uses
  %sin.i.i = extractvalue { double, double } %sincos.i.i, 0
  %cos.i.i = extractvalue { double, double } %sincos.i.i, 1
  %i.arq = getelementptr inbounds nuw [2056 x i8], ptr %i.be, i64 %i.aqz
  %i.arr = getelementptr inbounds nuw i8, ptr %i.aqt, i64 4
  %i.ars = load i16, ptr %i.arr, align 2, !tbaa !80
  %i.art = sext i16 %i.ars to i64
  %i.aru = getelementptr inbounds [8 x i8], ptr %i.arq, i64 %i.art ; 2 uses
  %i.arv = insertelement <2 x double> poison, double %i.arl, i64 0
  %i.arw = insertelement <2 x double> poison, double %cos.i.i, i64 0
  %i.arx = insertelement <2 x double> %i.arw, double %sin.i.i, i64 1
  %i.ary = shufflevector <2 x double> %i.arv, <2 x double> poison, <4 x i32> zeroinitializer
  %i.arz = shufflevector <2 x double> %i.arx, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.asa = fmul nsz <4 x double> %i.ary, %i.arz
  %i.asb = fptrunc <4 x double> %i.asa to <4 x float> ; 2 uses
  %i.asc = load <4 x float>, ptr %i.aru, align 8, !tbaa !32 ; 2 uses
  %i.asd = fadd nsz <4 x float> %i.asc, %i.asb
  %i.ase = fsub nsz <4 x float> %i.asc, %i.asb
  %i.asf = shufflevector <4 x float> %i.asd, <4 x float> %i.ase, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x float> %i.asf, ptr %i.aru, align 8, !tbaa !32
  %indvars.iv.next142.i.i = add nuw nsw i64 %indvars.iv141.i.i, 1 ; 2 uses
  %i.asg = trunc nuw i64 %indvars.iv.next142.i.i to i32
  %i.ash = icmp sgt i32 %i.aqp, %i.asg
  br i1 %i.ash, label %bb.db, label %.loopexit.i81.i, !llvm.loop !109

.loopexit.i81.i:                                  ; preds = %bb.dg, %bb.db, %.preheader123.i.i, %._crit_edge.i80.i
  %i.asi = load i32, ptr %i.bi, align 4, !tbaa !140 ; 4 uses
  %i.asj = load i32, ptr %i.bj, align 8, !tbaa !141 ; 2 uses
  %.not115129.i.i = icmp eq i32 %i.asi, %i.asj
  br i1 %.not115129.i.i, label %.preheader122.i.i.preheader, label %.lr.ph131.i.i

.lr.ph131.i.i:                                    ; preds = %.loopexit.i81.i, %qdm2_fft_generate_tone.exit.i
  %i.ask = phi i32 [ %i.awl, %qdm2_fft_generate_tone.exit.i ], [ %i.asi, %.loopexit.i81.i ] ; 2 uses
  %i.asl = phi i32 [ %i.awn, %qdm2_fft_generate_tone.exit.i ], [ %i.asj, %.loopexit.i81.i ] ; 2 uses
  %i.asm = sext i32 %i.asl to i64
  %i.asn = getelementptr inbounds [40 x i8], ptr %i.bk, i64 %i.asm ; 10 uses
  %i.aso = getelementptr inbounds nuw i8, ptr %i.asn, i64 28
  %i.asp = load i32, ptr %i.aso, align 4, !tbaa !145
  %i.asq = getelementptr inbounds nuw i8, ptr %i.asn, i64 24 ; 2 uses
  %i.asr = load i32, ptr %i.asq, align 8, !tbaa !146
  %i.ass = add nsw i32 %i.asr, %i.asp             ; 2 uses
  store i32 %i.ass, ptr %i.asq, align 8, !tbaa !146
  %i.ast = getelementptr inbounds nuw i8, ptr %i.asn, i64 32
  %i.asu = load i32, ptr %i.ast, align 8, !tbaa !147 ; 3 uses
  %i.asv = sext i32 %i.asu to i64
  %i.asw = getelementptr inbounds [124 x i8], ptr @fft_tone_envelope_table, i64 %i.asv
  %i.asx = getelementptr inbounds nuw i8, ptr %i.asn, i64 36 ; 2 uses
  %i.asy = load i16, ptr %i.asx, align 4, !tbaa !148 ; 2 uses
  %i.asz = sext i16 %i.asy to i64
  %i.ata = getelementptr inbounds [4 x i8], ptr %i.asw, i64 %i.asz
  %i.atb = load float, ptr %i.ata, align 4, !tbaa !32
  %i.atc = load float, ptr %i.asn, align 8, !tbaa !149
  %i.atd = fmul nsz float %i.atb, %i.atc
  %i.ate = fpext nsz float %i.atd to double
  %i.atf = sitofp nsz i32 %i.ass to double
  %i.atg = fmul nnan nsz double %i.atf, f0x3F8921FB54442D18
  %sincos.i110.i = call nsz { double, double } @llvm.sincos.f64(double %i.atg) ; 2 uses
  %sin.i111.i = extractvalue { double, double } %sincos.i110.i, 0
  %cos.i112.i = extractvalue { double, double } %sincos.i110.i, 1
  %i.ath = insertelement <2 x double> poison, double %cos.i112.i, i64 0
  %i.ati = insertelement <2 x double> %i.ath, double %sin.i111.i, i64 1
  %i.atj = insertelement <2 x double> poison, double %i.ate, i64 0
  %i.atk = shufflevector <2 x double> %i.atj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.atl = fmul nsz <2 x double> %i.ati, %i.atk
  %i.atm = fptrunc <2 x double> %i.atl to <2 x float> ; 3 uses
end_hunk_0
