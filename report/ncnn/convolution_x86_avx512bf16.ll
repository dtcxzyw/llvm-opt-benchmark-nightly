Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/convolution_x86_avx512bf16?download=true
inline.NumInlined: 192
inline.NumDeleted: 51
loop-unroll.NumCompletelyUnrolled: 48
loop-unroll.NumRuntimeUnrolled: 78
loop-unroll.NumUnrolled: 126
begin_hunk_0_@_ZN4ncnnL48conv3x3s1_winograd23_transform_output_tile_bf16sERKNS_3MatERS0_S2_iiiiiS2_:bb.a
  %i.ayh = insertelement <4 x float> poison, float %i.aye, i64 0
  %i.ayi = shufflevector <4 x float> %i.ayh, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ayj = fmul fast <4 x float> %i.ayi, %i.ayg
  %i.ayk = fadd fast <4 x float> %i.ayj, %i.ayf
  %i.ayl = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.aoc)
  %i.aym = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.aoc)
  %i.ayn = fmul fast <4 x float> %i.ayi, %i.aym
  %i.ayo = fadd fast <4 x float> %i.ayn, %i.ayl
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.us

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit799.thread.us: ; preds = %bb.ag
  %i.ayp = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.anz, <4 x float> zeroinitializer)
  %i.ayq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.aoc, <4 x float> zeroinitializer)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.us

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.us:   ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit799.thread.us, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit799.thread694.us, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit799.thread697.us, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit799.thread700.us, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit799.thread703.us, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit799.thread706.us, %bb.ag
  %.0.i798693.us = phi <4 x float> [ %i.aop, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit799.thread706.us ], [ %i.ayp, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit799.thread.us ], [ %i.ayk, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit799.thread694.us ], [ %i.aya, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit799.thread697.us ], [ %i.awo, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit799.thread700.us ], [ %i.asd, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit799.thread703.us ], [ %i.anz, %bb.ag ] ; 2 uses
  %.0.i797.us = phi nsz <4 x float> [ %i.aou, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit799.thread706.us ], [ %i.ayq, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit799.thread.us ], [ %i.ayo, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit799.thread694.us ], [ %i.ayc, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit799.thread697.us ], [ %i.axq, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit799.thread700.us ], [ %i.avm, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit799.thread703.us ], [ %i.aoc, %bb.ag ] ; 2 uses
  switch i32 %i.i, label %bb.al [
    i32 4, label %bb.aj
    i32 1, label %bb.ah
  ]

bb.ah:                                            ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.us
  %i.ayr = getelementptr inbounds nuw [2 x i8], ptr %.0689890.us, i64 %i.m ; 2 uses
  %i.ays = getelementptr inbounds nuw i8, ptr %.0689890.us, i64 %.idx ; 2 uses
  %i.ayt = getelementptr inbounds nuw i8, ptr %.0689890.us, i64 %.idx732 ; 2 uses
  %i.ayu = bitcast <4 x float> %.0.i798693.us to <8 x i16> ; 4 uses
  %i.ayv = extractelement <8 x i16> %i.ayu, i64 1
  store i16 %i.ayv, ptr %.0689890.us, align 2, !tbaa !24
  %i.ayw = extractelement <8 x i16> %i.ayu, i64 3
  store i16 %i.ayw, ptr %i.ayr, align 2, !tbaa !24
  %i.ayx = extractelement <8 x i16> %i.ayu, i64 5
  store i16 %i.ayx, ptr %i.ays, align 2, !tbaa !24
  %i.ayy = extractelement <8 x i16> %i.ayu, i64 7
  store i16 %i.ayy, ptr %i.ayt, align 2, !tbaa !24
  br i1 %i.ann, label %bb.ai, label %bb.al

bb.ai:                                            ; preds = %bb.ah
  %i.ayz = bitcast <4 x float> %.0.i797.us to <8 x i16> ; 4 uses
  %i.aza = extractelement <8 x i16> %i.ayz, i64 1
  %i.azb = getelementptr inbounds nuw i8, ptr %.0689890.us, i64 2
  store i16 %i.aza, ptr %i.azb, align 2, !tbaa !24
  %i.azc = extractelement <8 x i16> %i.ayz, i64 3
  %i.azd = getelementptr inbounds nuw i8, ptr %i.ayr, i64 2
  store i16 %i.azc, ptr %i.azd, align 2, !tbaa !24
  %i.aze = extractelement <8 x i16> %i.ayz, i64 5
  %i.azf = getelementptr inbounds nuw i8, ptr %i.ays, i64 2
  store i16 %i.aze, ptr %i.azf, align 2, !tbaa !24
  %i.azg = extractelement <8 x i16> %i.ayz, i64 7
  %i.azh = getelementptr inbounds nuw i8, ptr %i.ayt, i64 2
  store i16 %i.azg, ptr %i.azh, align 2, !tbaa !24
  br label %bb.al

bb.aj:                                            ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.us
  %i.azi = shufflevector <4 x float> %.0.i798693.us, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.azj = shufflevector <8 x float> %i.azi, <8 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison, float poison, float poison, float poison>, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.azk = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.azj)
  %i.azl = bitcast <8 x bfloat> %i.azk to <2 x i64>
  %i.azm = extractelement <2 x i64> %i.azl, i64 0
  store i64 %i.azm, ptr %.0689890.us, align 1, !tbaa !18
  br i1 %i.ann, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.azn = getelementptr inbounds nuw i8, ptr %.0689890.us, i64 8
  %i.azo = shufflevector <4 x float> %.0.i797.us, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.azp = shufflevector <8 x float> %i.azo, <8 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison, float poison, float poison, float poison>, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.azq = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.azp)
  %i.azr = bitcast <8 x bfloat> %i.azq to <2 x i64>
  %i.azs = extractelement <2 x i64> %i.azr, i64 0
  store i64 %i.azs, ptr %i.azn, align 1, !tbaa !18
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %bb.ai, %bb.ah, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.us
  %i.azt = getelementptr inbounds [2 x i8], ptr %.0689890.us, i64 %i.akb
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.af
  %.1690.us = phi ptr [ %.0689890.us, %bb.af ], [ %i.azt, %bb.al ]
  br i1 %i.ano, label %bb.af, label %bb.an, !llvm.loop !666

bb.an:                                            ; preds = %bb.am
  %indvars.iv.next985 = add nuw nsw i64 %indvars.iv984, 1 ; 2 uses
  %exitcond988.not = icmp eq i64 %indvars.iv.next985, %wide.trip.count987
  br i1 %exitcond988.not, label %._crit_edge.us899, label %_ZN4ncnn3MatD2Ev.exit764.us, !llvm.loop !667

._crit_edge.us899:                                ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  %indvars.iv.next990 = add nuw nsw i64 %indvars.iv989, 4 ; 3 uses
  %i.azu = icmp slt i64 %indvars.iv.next990, %invariant.op1069
  br i1 %i.azu, label %.lr.ph895.split.us, label %.preheader848.loopexit, !llvm.loop !668

.lr.ph895.split:                                  ; preds = %.lr.ph895
  %i.azv = add i32 %.1701.lcssa, 7
  %smax976 = tail call i32 @llvm.smax.i32(i32 %3, i32 %i.azv)
  %i.azw = add i32 %smax976, -4
  %i.azx = sub i32 %i.azw, %.1701.lcssa
  %i.azy = and i32 %i.azx, -4
  %i.azz = add i32 %.1701.lcssa, %i.azy
  %i.baa = add i32 %i.azz, 4
  br label %.preheader848

.preheader848.loopexit:                           ; preds = %._crit_edge.us899
  %i.bab = trunc nsw i64 %indvars.iv.next990 to i32
  br label %.preheader848

.preheader848:                                    ; preds = %.lr.ph895.split, %.preheader848.loopexit, %.preheader849
  %.2.lcssa = phi i32 [ %.1701.lcssa, %.preheader849 ], [ %i.baa, %.lr.ph895.split ], [ %i.bab, %.preheader848.loopexit ] ; 3 uses
  %i.bac = or disjoint i32 %.2.lcssa, 1
  %i.bad = icmp slt i32 %i.bac, %3
  br i1 %i.bad, label %.lr.ph916, label %.preheader

.lr.ph916:                                        ; preds = %.preheader848
  %.not728 = icmp eq ptr %.0.val, null
  %i.bae = icmp sgt i32 %5, 0
  %i.baf = shl nuw nsw i32 %5, 1
  %i.bag = zext nneg i32 %i.baf to i64
  %i.bah = shl nuw nsw i32 %5, 2
  %i.bai = zext nneg i32 %i.bah to i64
  %i.baj = mul nuw nsw i32 %5, 6
  %i.bak = zext nneg i32 %i.baj to i64
  %i.bal = shl nuw nsw i32 %5, 3
  %i.bam = zext nneg i32 %i.bal to i64            ; 12 uses
  %i.ban = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bao = sext i32 %i.e to i64
  %i.bap = sext i32 %.2.lcssa to i64
  %i.baq = sext i32 %3 to i64
  %i.bar = sext i32 %2 to i64                     ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %.0.val, i64 %i.bar
  %wide.trip.count1002 = zext nneg i32 %5 to i64
  %invariant.op1070 = add nsw i64 %i.baq, -1
  %i.bas = load ptr, ptr %0, align 8
  %i.bat = load i32, ptr %i.d, align 4
  %i.bau = load ptr, ptr %1, align 8
  %i.bav = load i64, ptr %i.j, align 8
  %i.baw = load i64, ptr %i.ban, align 8          ; 2 uses
  %factor.op.mul = mul i64 %i.bav, %i.baw
  %i.bax = sext i32 %i.bat to i64
  %factor.op.mul912 = mul i64 %i.baw, %i.bax
  br label %bb.ao

.preheader.loopexit:                              ; preds = %._crit_edge
  %i.bay = trunc nsw i64 %indvars.iv.next1005 to i32
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %.preheader848
  %.3.lcssa = phi i32 [ %.2.lcssa, %.preheader848 ], [ %i.bay, %.preheader.loopexit ] ; 2 uses
  %i.baz = icmp slt i32 %.3.lcssa, %3
  br i1 %i.baz, label %.lr.ph934, label %._crit_edge935

.lr.ph934:                                        ; preds = %.preheader
  %.not = icmp eq ptr %.0.val, null
  %i.bba = icmp sgt i32 %5, 0
  %i.bbb = sext i32 %5 to i64
  %i.bbc = shl nuw nsw i32 %5, 1
  %i.bbd = zext nneg i32 %i.bbc to i64
  %i.bbe = mul nuw nsw i32 %5, 3
  %i.bbf = zext nneg i32 %i.bbe to i64
  %i.bbg = shl nuw nsw i32 %5, 2
  %i.bbh = zext nneg i32 %i.bbg to i64            ; 12 uses
  %i.bbi = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bbj = sext i32 %i.e to i64
  %i.bbk = sext i32 %.3.lcssa to i64
  %i.bbl = sext i32 %2 to i64                     ; 2 uses
  %wide.trip.count1022 = sext i32 %3 to i64
  %invariant.gep1071 = getelementptr [4 x i8], ptr %.0.val, i64 %i.bbl
  %wide.trip.count1017 = zext nneg i32 %5 to i64
  %i.bbm = load ptr, ptr %0, align 8
  %i.bbn = load i32, ptr %i.d, align 4
  %i.bbo = load ptr, ptr %1, align 8
  %i.bbp = load i64, ptr %i.j, align 8
  %i.bbq = load i64, ptr %i.bbi, align 8          ; 2 uses
  %factor.op.mul1076 = mul i64 %i.bbp, %i.bbq
  %i.bbr = sext i32 %i.bbn to i64
  %factor.op.mul929 = mul i64 %i.bbq, %i.bbr
  br label %bb.bp

bb.ao:                                            ; preds = %.lr.ph916, %._crit_edge
  %indvars.iv1004 = phi i64 [ %i.bap, %.lr.ph916 ], [ %indvars.iv.next1005, %._crit_edge ] ; 4 uses
  br i1 %.not728, label %.thread, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv1004
  %i.bbs = load <2 x float>, ptr %gep, align 4, !tbaa !22
  br label %.thread

.thread:                                          ; preds = %bb.ao, %bb.ap
  %i.bbt = phi <2 x float> [ %i.bbs, %bb.ap ], [ zeroinitializer, %bb.ao ] ; 2 uses
  br i1 %i.bae, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.thread
  %i.bbu = trunc nsw i64 %indvars.iv1004 to i32
  %factor.op.mul.reass = mul i32 %factor.op.mul859, %i.bbu
  %i.bbv = sext i32 %factor.op.mul.reass to i64
  %i.bbw = getelementptr inbounds [4 x i8], ptr %i.bas, i64 %i.bbv
  %i.bbx = add nsw i64 %indvars.iv1004, %i.bar
  %.reass = mul i64 %factor.op.mul, %i.bbx
  %i.bby = getelementptr inbounds nuw i8, ptr %i.bau, i64 %.reass
  %i.bbz = load ptr, ptr %7, align 8              ; 2 uses
  %i.bca = getelementptr inbounds nuw i8, ptr %i.bbz, i64 4
  %i.bcb = load ptr, ptr %7, align 8
  %i.bcc = load ptr, ptr %7, align 8
  %i.bcd = load ptr, ptr %7, align 8              ; 2 uses
  %i.bce = getelementptr inbounds nuw i8, ptr %i.bcd, i64 4
  %i.bcf = load ptr, ptr %7, align 8
  %i.bcg = load ptr, ptr %7, align 8
  br label %_ZN4ncnn3MatD2Ev.exit763

_ZN4ncnn3MatD2Ev.exit763:                         ; preds = %.lr.ph, %bb.bo
  %indvars.iv999 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next1000, %bb.bo ] ; 3 uses
  %.idx1068 = shl nuw nsw i64 %indvars.iv999, 3
  %i.bch = getelementptr inbounds nuw i8, ptr %i.bbw, i64 %.idx1068 ; 5 uses
  %i.bci = getelementptr inbounds nuw [4 x i8], ptr %i.bch, i64 %i.bag ; 2 uses
  %i.bcj = getelementptr inbounds nuw [4 x i8], ptr %i.bch, i64 %i.bai ; 2 uses
  %i.bck = getelementptr inbounds nuw [4 x i8], ptr %i.bch, i64 %i.bak ; 2 uses
  %i.bcl = load <2 x float>, ptr %i.bci, align 4, !tbaa !22 ; 2 uses
  %i.bcm = load <2 x float>, ptr %i.bcj, align 4, !tbaa !22 ; 2 uses
  %i.bcn = fsub fast <2 x float> %i.bcl, %i.bcm
  %i.bco = load <2 x float>, ptr %i.bck, align 4, !tbaa !22
  %i.bcp = fadd fast <2 x float> %i.bcn, %i.bco
  %i.bcq = getelementptr inbounds nuw [4 x i8], ptr %i.bci, i64 %i.bam ; 2 uses
  %i.bcr = getelementptr inbounds nuw [4 x i8], ptr %i.bcj, i64 %i.bam ; 2 uses
  %i.bcs = getelementptr inbounds nuw [4 x i8], ptr %i.bck, i64 %i.bam ; 2 uses
  %i.bct = getelementptr inbounds nuw [4 x i8], ptr %i.bcq, i64 %i.bam ; 2 uses
  %i.bcu = getelementptr inbounds nuw [4 x i8], ptr %i.bcr, i64 %i.bam ; 2 uses
  %i.bcv = getelementptr inbounds nuw [4 x i8], ptr %i.bcs, i64 %i.bam ; 2 uses
  %i.bcw = getelementptr inbounds nuw [4 x i8], ptr %i.bct, i64 %i.bam
  %i.bcx = getelementptr inbounds nuw [4 x i8], ptr %i.bcu, i64 %i.bam
  %i.bcy = getelementptr inbounds nuw [4 x i8], ptr %i.bcv, i64 %i.bam
  %i.bcz = load <2 x float>, ptr %i.bcq, align 4, !tbaa !22 ; 2 uses
  %i.bda = load <2 x float>, ptr %i.bcr, align 4, !tbaa !22 ; 2 uses
  %i.bdb = fsub fast <2 x float> %i.bcz, %i.bda
  %i.bdc = load <2 x float>, ptr %i.bcs, align 4, !tbaa !22
  %i.bdd = fadd fast <2 x float> %i.bdb, %i.bdc
  %i.bde = load <2 x float>, ptr %i.bct, align 4, !tbaa !22 ; 2 uses
  %i.bdf = load <2 x float>, ptr %i.bcu, align 4, !tbaa !22 ; 2 uses
  %i.bdg = fsub fast <2 x float> %i.bde, %i.bdf
  %i.bdh = load <2 x float>, ptr %i.bcv, align 4, !tbaa !22
  %i.bdi = fadd fast <2 x float> %i.bdg, %i.bdh   ; 2 uses
  %i.bdj = load <2 x float>, ptr %i.bcw, align 4, !tbaa !22 ; 2 uses
  %i.bdk = load <2 x float>, ptr %i.bcx, align 4, !tbaa !22 ; 2 uses
  %i.bdl = fsub fast <2 x float> %i.bdj, %i.bdk
  %i.bdm = load <2 x float>, ptr %i.bcy, align 4, !tbaa !22
  %i.bdn = fadd fast <2 x float> %i.bdl, %i.bdm
  %i.bdo = trunc i64 %indvars.iv999 to i32
  %i.bdp = add i32 %4, %i.bdo                     ; 2 uses
  %i.bdq = sdiv i32 %i.bdp, %i.o
  %i.bdr = srem i32 %i.bdp, %i.o
  %i.bds = shl nsw i32 %i.bdq, 1                  ; 3 uses
  %i.bdt = sext i32 %i.bds to i64
  %.reass913 = mul i64 %factor.op.mul912, %i.bdt
  %i.bdu = getelementptr inbounds nuw i8, ptr %i.bby, i64 %.reass913
  %i.bdv = shl nsw i32 %i.bdr, 1                  ; 2 uses
  %i.bdw = sext i32 %i.bdv to i64
  %i.bdx = getelementptr inbounds [2 x i8], ptr %i.bdu, i64 %i.bdw ; 5 uses
  %i.bdy = or disjoint i32 %i.bdv, 1
  %i.bdz = icmp slt i32 %i.bdy, %i.e              ; 2 uses
  %.not729 = icmp slt i32 %i.bds, %i.g
  br i1 %.not729, label %bb.aq, label %bb.bc

bb.aq:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit763
  %i.bea = getelementptr inbounds nuw [4 x i8], ptr %i.bch, i64 %i.bam ; 2 uses
  %i.beb = getelementptr inbounds nuw [4 x i8], ptr %i.bea, i64 %i.bam ; 2 uses
  %i.bec = getelementptr inbounds nuw [4 x i8], ptr %i.beb, i64 %i.bam
  %i.bed = load <2 x float>, ptr %i.bec, align 4, !tbaa !22
  %i.bee = fadd fast <2 x float> %i.bdj, %i.bed
  %i.bef = fadd fast <2 x float> %i.bee, %i.bdk
  %i.beg = load <2 x float>, ptr %i.beb, align 4, !tbaa !22
  %i.beh = fadd fast <2 x float> %i.bde, %i.beg
  %i.bei = fadd fast <2 x float> %i.beh, %i.bdf   ; 2 uses
  %i.bej = load <2 x float>, ptr %i.bea, align 4, !tbaa !22
  %i.bek = fadd fast <2 x float> %i.bcz, %i.bej
  %i.bel = fadd fast <2 x float> %i.bek, %i.bda
  %i.bem = fadd fast <2 x float> %i.bel, %i.bbt   ; 2 uses
  %i.ben = load <2 x float>, ptr %i.bch, align 4, !tbaa !22
  %i.beo = fadd fast <2 x float> %i.bcl, %i.ben
  %i.bep = fadd fast <2 x float> %i.beo, %i.bcm
  %i.beq = fadd fast <2 x float> %i.bem, %i.bep
  %i.ber = fadd fast <2 x float> %i.beq, %i.bei   ; 11 uses
  %i.bes = fsub fast <2 x float> %i.bem, %i.bei
  %i.bet = fadd fast <2 x float> %i.bes, %i.bef   ; 13 uses
  switch i32 %6, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit801 [
    i32 1, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit804.thread717
    i32 2, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit804.thread720
    i32 3, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit804.thread714
    i32 4, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit804.thread723
    i32 5, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit804.thread726
    i32 6, label %bb.ar
  ]

_ZL13activation_ssfiRKN4ncnn3MatE.exit804.thread717: ; preds = %bb.aq
  %i.beu = tail call fast <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.ber, <2 x float> zeroinitializer)
  %i.bev = tail call fast <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.bet, <2 x float> zeroinitializer)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit801

_ZL13activation_ssfiRKN4ncnn3MatE.exit804.thread720: ; preds = %bb.aq
  %i.bew = load float, ptr %i.bcc, align 4, !tbaa !22
  %i.bex = fcmp fast ogt <2 x float> %i.ber, zeroinitializer
  %i.bey = insertelement <2 x float> poison, float %i.bew, i64 0
  %i.bez = shufflevector <2 x float> %i.bey, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bfa = select <2 x i1> %i.bex, <2 x float> splat (float 1.000000e+00), <2 x float> %i.bez
  %i.bfb = fmul fast <2 x float> %i.bfa, %i.ber
  %i.bfc = fcmp fast ogt <2 x float> %i.bet, zeroinitializer
  %i.bfd = select <2 x i1> %i.bfc, <2 x float> splat (float 1.000000e+00), <2 x float> %i.bez
  %i.bfe = fmul fast <2 x float> %i.bfd, %i.bet
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit801

_ZL13activation_ssfiRKN4ncnn3MatE.exit804.thread714: ; preds = %bb.aq
  %8 = load <2 x float>, ptr %i.bcb, align 4, !tbaa !22 ; 4 uses
  %9 = extractelement <2 x float> %8, i64 0       ; 2 uses
  %i.bff = shufflevector <2 x float> %8, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bfg = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.ber, <2 x float> %i.bff) ; 2 uses
  %10 = shufflevector <2 x float> %8, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.bfh = fcmp fast ogt <2 x float> %i.bfg, %10
  %i.bfi = select <2 x i1> %i.bfh, <2 x float> %10, <2 x float> %i.bfg
  %i.bfj = extractelement <2 x float> %i.bet, i64 0
  %.0647 = tail call nnan ninf nsz float @llvm.maxnum.f32(float %i.bfj, float %9) ; 2 uses
  %11 = extractelement <2 x float> %8, i64 1      ; 3 uses
  %i.bfk = fcmp fast ogt float %.0647, %11
  %.1648779 = select i1 %i.bfk, float %11, float %.0647
  %i.bfl = extractelement <2 x float> %i.bet, i64 1
  %.0649 = tail call nnan ninf nsz float @llvm.maxnum.f32(float %i.bfl, float %9)
  %spec.select829 = tail call nnan ninf nsz float @llvm.minnum.f32(float %.0649, float %11)
  %i.bfm = insertelement <2 x float> poison, float %.1648779, i64 0
  %i.bfn = insertelement <2 x float> %i.bfm, float %spec.select829, i64 1
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit801

_ZL13activation_ssfiRKN4ncnn3MatE.exit804.thread723: ; preds = %bb.aq
  %i.bfo = tail call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.ber, <2 x float> splat (float f0x42B0C0A5))
  %i.bfp = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.bfo, <2 x float> splat (float f0xC2B0C0A5))
  %i.bfq = fneg fast <2 x float> %i.bfp
  %i.bfr = tail call fast <2 x float> @llvm.exp.v2f32(<2 x float> %i.bfq)
  %i.bfs = fadd fast <2 x float> %i.bfr, splat (float 1.000000e+00)
  %i.bft = fdiv fast <2 x float> splat (float 1.000000e+00), %i.bfs
  %i.bfu = tail call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.bet, <2 x float> splat (float f0x42B0C0A5))
  %i.bfv = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.bfu, <2 x float> splat (float f0xC2B0C0A5))
  %i.bfw = fneg fast <2 x float> %i.bfv
  %i.bfx = tail call fast <2 x float> @llvm.exp.v2f32(<2 x float> %i.bfw)
  %i.bfy = fadd fast <2 x float> %i.bfx, splat (float 1.000000e+00)
  %i.bfz = fdiv fast <2 x float> splat (float 1.000000e+00), %i.bfy
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit801

_ZL13activation_ssfiRKN4ncnn3MatE.exit804.thread726: ; preds = %bb.aq
  %i.bga = extractelement <2 x float> %i.ber, i64 0
  %i.bgb = tail call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.bga)
  %i.bgc = extractelement <2 x float> %i.ber, i64 1
  %i.bgd = tail call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.bgc)
  %i.bge = fadd fast float %i.bgb, 1.000000e+00
  %i.bgf = fadd fast float %i.bgd, 1.000000e+00
  %i.bgg = tail call fast float @llvm.log.f32(float %i.bge)
  %i.bgh = tail call fast float @llvm.log.f32(float %i.bgf)
  %i.bgi = tail call fast float @llvm.tanh.f32(float %i.bgg)
  %i.bgj = tail call fast float @llvm.tanh.f32(float %i.bgh)
  %i.bgk = insertelement <2 x float> poison, float %i.bgi, i64 0
  %i.bgl = insertelement <2 x float> %i.bgk, float %i.bgj, i64 1
  %i.bgm = fmul fast <2 x float> %i.bgl, %i.ber
  %i.bgn = extractelement <2 x float> %i.bet, i64 0
  %i.bgo = tail call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.bgn)
  %i.bgp = extractelement <2 x float> %i.bet, i64 1
  %i.bgq = tail call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.bgp)
  %i.bgr = fadd fast float %i.bgq, 1.000000e+00
  %i.bgs = fadd fast float %i.bgo, 1.000000e+00
  %i.bgt = tail call fast float @llvm.log.f32(float %i.bgr)
  %i.bgu = tail call fast float @llvm.log.f32(float %i.bgs)
  %i.bgv = tail call fast float @llvm.tanh.f32(float %i.bgt)
  %i.bgw = tail call fast float @llvm.tanh.f32(float %i.bgu)
  %i.bgx = insertelement <2 x float> poison, float %i.bgw, i64 0
  %i.bgy = insertelement <2 x float> %i.bgx, float %i.bgv, i64 1
  %i.bgz = fmul fast <2 x float> %i.bgy, %i.bet
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit801

bb.ar:                                            ; preds = %bb.aq
  %i.bha = load float, ptr %i.bbz, align 4, !tbaa !22 ; 9 uses
  %i.bhb = load float, ptr %i.bca, align 4, !tbaa !22 ; 5 uses
  %i.bhc = fneg fast float %i.bhb
  %i.bhd = fdiv fast float %i.bhc, %i.bha         ; 8 uses
  %i.bhe = extractelement <2 x float> %i.ber, i64 0 ; 5 uses
  %i.bhf = fcmp fast olt float %i.bhe, %i.bhd
  br i1 %i.bhf, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit804.thread, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.bhg = fdiv fast float 1.000000e+00, %i.bha
  %i.bhh = fadd fast float %i.bhd, %i.bhg
  %i.bhi = fcmp fast ogt float %i.bhe, %i.bhh
  br i1 %i.bhi, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit804.thread, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.bhj = fmul fast float %i.bha, %i.bhe
  %i.bhk = fadd fast float %i.bhj, %i.bhb
  %i.bhl = fmul fast float %i.bhk, %i.bhe
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit804.thread

_ZL13activation_ssfiRKN4ncnn3MatE.exit804.thread: ; preds = %bb.at, %bb.as, %bb.ar
  %.1644710 = phi float [ %i.bhl, %bb.at ], [ 0.000000e+00, %bb.ar ], [ %i.bhe, %bb.as ]
  %i.bhm = extractelement <2 x float> %i.ber, i64 1 ; 5 uses
  %i.bhn = fcmp fast olt float %i.bhm, %i.bhd
  br i1 %i.bhn, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit803.thread, label %bb.au

bb.au:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit804.thread
  %i.bho = fdiv fast float 1.000000e+00, %i.bha
  %i.bhp = fadd fast float %i.bhd, %i.bho
  %i.bhq = fcmp fast ogt float %i.bhm, %i.bhp
  br i1 %i.bhq, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit803.thread, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.bhr = fmul fast float %i.bha, %i.bhm
  %i.bhs = fadd fast float %i.bhr, %i.bhb
  %i.bht = fmul fast float %i.bhs, %i.bhm
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit803.thread

_ZL13activation_ssfiRKN4ncnn3MatE.exit803.thread: ; preds = %bb.av, %bb.au, %_ZL13activation_ssfiRKN4ncnn3MatE.exit804.thread
  %.1646733 = phi float [ %i.bht, %bb.av ], [ 0.000000e+00, %_ZL13activation_ssfiRKN4ncnn3MatE.exit804.thread ], [ %i.bhm, %bb.au ]
  %i.bhu = extractelement <2 x float> %i.bet, i64 0 ; 5 uses
  %i.bhv = fcmp fast olt float %i.bhu, %i.bhd
  br i1 %i.bhv, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit802.thread, label %bb.aw

bb.aw:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit803.thread
  %i.bhw = fdiv fast float 1.000000e+00, %i.bha
  %i.bhx = fadd fast float %i.bhd, %i.bhw
  %i.bhy = fcmp fast ogt float %i.bhu, %i.bhx
  br i1 %i.bhy, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit802.thread, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.bhz = fmul fast float %i.bha, %i.bhu
  %i.bia = fadd fast float %i.bhz, %i.bhb
  %i.bib = fmul fast float %i.bia, %i.bhu
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit802.thread

_ZL13activation_ssfiRKN4ncnn3MatE.exit802.thread: ; preds = %bb.ax, %bb.aw, %_ZL13activation_ssfiRKN4ncnn3MatE.exit803.thread
  %.1648769 = phi float [ %i.bib, %bb.ax ], [ 0.000000e+00, %_ZL13activation_ssfiRKN4ncnn3MatE.exit803.thread ], [ %i.bhu, %bb.aw ] ; 2 uses
  %i.bic = extractelement <2 x float> %i.bet, i64 1 ; 4 uses
  %i.bid = fcmp fast olt float %i.bic, %i.bhd
  %i.bie = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.1648769, i64 0 ; 2 uses
  %i.bif = insertelement <2 x float> poison, float %.1644710, i64 0
  %i.big = insertelement <2 x float> %i.bif, float %.1646733, i64 1 ; 3 uses
  br i1 %i.bid, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit801, label %bb.ay

bb.ay:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit802.thread
  %i.bih = fdiv fast float 1.000000e+00, %i.bha
  %i.bii = fadd fast float %i.bhd, %i.bih
  %i.bij = fcmp fast ogt float %i.bic, %i.bii
  %i.bik = insertelement <2 x float> %i.bet, float %.1648769, i64 0
  br i1 %i.bij, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit801, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.bil = fmul fast float %i.bha, %i.bic
  %i.bim = fadd fast float %i.bil, %i.bhb
  %i.bin = fmul fast float %i.bim, %i.bic
  %i.bio = insertelement <2 x float> %i.bie, float %i.bin, i64 1
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit801

_ZL13activation_ssfiRKN4ncnn3MatE.exit801:        ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit804.thread714, %bb.aq, %_ZL13activation_ssfiRKN4ncnn3MatE.exit802.thread, %_ZL13activation_ssfiRKN4ncnn3MatE.exit804.thread717, %_ZL13activation_ssfiRKN4ncnn3MatE.exit804.thread720, %_ZL13activation_ssfiRKN4ncnn3MatE.exit804.thread723, %_ZL13activation_ssfiRKN4ncnn3MatE.exit804.thread726, %bb.ay, %bb.az
  %i.bip = phi <2 x float> [ %i.bie, %_ZL13activation_ssfiRKN4ncnn3MatE.exit802.thread ], [ %i.bev, %_ZL13activation_ssfiRKN4ncnn3MatE.exit804.thread717 ], [ %i.bfe, %_ZL13activation_ssfiRKN4ncnn3MatE.exit804.thread720 ], [ %i.bet, %bb.aq ], [ %i.bfn, %_ZL13activation_ssfiRKN4ncnn3MatE.exit804.thread714 ], [ %i.bfz, %_ZL13activation_ssfiRKN4ncnn3MatE.exit804.thread723 ], [ %i.bgz, %_ZL13activation_ssfiRKN4ncnn3MatE.exit804.thread726 ], [ %i.bio, %bb.az ], [ %i.bik, %bb.ay ]
  %i.biq = phi <2 x float> [ %i.big, %_ZL13activation_ssfiRKN4ncnn3MatE.exit802.thread ], [ %i.beu, %_ZL13activation_ssfiRKN4ncnn3MatE.exit804.thread717 ], [ %i.bfb, %_ZL13activation_ssfiRKN4ncnn3MatE.exit804.thread720 ], [ %i.ber, %bb.aq ], [ %i.bfi, %_ZL13activation_ssfiRKN4ncnn3MatE.exit804.thread714 ], [ %i.bft, %_ZL13activation_ssfiRKN4ncnn3MatE.exit804.thread723 ], [ %i.bgm, %_ZL13activation_ssfiRKN4ncnn3MatE.exit804.thread726 ], [ %i.big, %bb.az ], [ %i.big, %bb.ay ]
  %i.bir = getelementptr inbounds nuw [2 x i8], ptr %i.bdx, i64 %i.m ; 2 uses
  %i.bis = bitcast <2 x float> %i.biq to <2 x i32>
  %i.bit = lshr <2 x i32> %i.bis, splat (i32 16)
  %i.biu = trunc nuw <2 x i32> %i.bit to <2 x i16> ; 2 uses
  %i.biv = extractelement <2 x i16> %i.biu, i64 0
  store i16 %i.biv, ptr %i.bdx, align 2, !tbaa !24
  %i.biw = extractelement <2 x i16> %i.biu, i64 1
  store i16 %i.biw, ptr %i.bir, align 2, !tbaa !24
  br i1 %i.bdz, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit801
  %i.bix = bitcast <2 x float> %i.bip to <2 x i32>
  %i.biy = getelementptr inbounds nuw i8, ptr %i.bdx, i64 2
  %i.biz = lshr <2 x i32> %i.bix, splat (i32 16)
  %i.bja = trunc nuw <2 x i32> %i.biz to <2 x i16> ; 2 uses
  %i.bjb = extractelement <2 x i16> %i.bja, i64 0
  store i16 %i.bjb, ptr %i.biy, align 2, !tbaa !24
  %i.bjc = getelementptr inbounds nuw i8, ptr %i.bir, i64 2
  %i.bjd = extractelement <2 x i16> %i.bja, i64 1
  store i16 %i.bjd, ptr %i.bjc, align 2, !tbaa !24
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %_ZL13activation_ssfiRKN4ncnn3MatE.exit801
  %i.bje = getelementptr inbounds [2 x i8], ptr %i.bdx, i64 %i.bao
  br label %bb.bc

bb.bc:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit763, %bb.bb
  %.1681 = phi ptr [ %i.bdx, %_ZN4ncnn3MatD2Ev.exit763 ], [ %i.bje, %bb.bb ] ; 3 uses
  %i.bjf = or disjoint i32 %i.bds, 1
  %.not729.1 = icmp slt i32 %i.bjf, %i.g
  br i1 %.not729.1, label %bb.bd, label %bb.bo

bb.bd:                                            ; preds = %bb.bc
  %i.bjg = fadd fast <2 x float> %i.bdd, %i.bbt   ; 2 uses
  %i.bjh = fadd fast <2 x float> %i.bjg, %i.bcp
  %i.bji = fadd fast <2 x float> %i.bjh, %i.bdi   ; 11 uses
  %i.bjj = fsub fast <2 x float> %i.bjg, %i.bdi
  %i.bjk = fadd fast <2 x float> %i.bjj, %i.bdn   ; 13 uses
  switch i32 %6, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit801.1 [
    i32 1, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit804.thread717.1
    i32 2, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit804.thread720.1
    i32 3, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit804.thread714.1
    i32 4, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit804.thread723.1
    i32 5, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit804.thread726.1
    i32 6, label %bb.be
  ]

bb.be:                                            ; preds = %bb.bd
  %i.bjl = load float, ptr %i.bcd, align 4, !tbaa !22 ; 9 uses
  %i.bjm = load float, ptr %i.bce, align 4, !tbaa !22 ; 5 uses
  %i.bjn = fneg fast float %i.bjm
  %i.bjo = fdiv fast float %i.bjn, %i.bjl         ; 8 uses
  %i.bjp = extractelement <2 x float> %i.bji, i64 0 ; 5 uses
  %i.bjq = fcmp fast olt float %i.bjp, %i.bjo
  br i1 %i.bjq, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit804.thread.1, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.bjr = fdiv fast float 1.000000e+00, %i.bjl
  %i.bjs = fadd fast float %i.bjo, %i.bjr
  %i.bjt = fcmp fast ogt float %i.bjp, %i.bjs
  br i1 %i.bjt, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit804.thread.1, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.bju = fmul fast float %i.bjl, %i.bjp
  %i.bjv = fadd fast float %i.bju, %i.bjm
  %i.bjw = fmul fast float %i.bjv, %i.bjp
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit804.thread.1

_ZL13activation_ssfiRKN4ncnn3MatE.exit804.thread.1: ; preds = %bb.bg, %bb.bf, %bb.be
  %.1644710.1 = phi float [ %i.bjw, %bb.bg ], [ 0.000000e+00, %bb.be ], [ %i.bjp, %bb.bf ]
  %i.bjx = extractelement <2 x float> %i.bji, i64 1 ; 5 uses
  %i.bjy = fcmp fast olt float %i.bjx, %i.bjo
  br i1 %i.bjy, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit803.thread.1, label %bb.bh

bb.bh:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit804.thread.1
  %i.bjz = fdiv fast float 1.000000e+00, %i.bjl
  %i.bka = fadd fast float %i.bjo, %i.bjz
  %i.bkb = fcmp fast ogt float %i.bjx, %i.bka
  br i1 %i.bkb, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit803.thread.1, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.bkc = fmul fast float %i.bjl, %i.bjx
  %i.bkd = fadd fast float %i.bkc, %i.bjm
  %i.bke = fmul fast float %i.bkd, %i.bjx
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit803.thread.1

_ZL13activation_ssfiRKN4ncnn3MatE.exit803.thread.1: ; preds = %bb.bi, %bb.bh, %_ZL13activation_ssfiRKN4ncnn3MatE.exit804.thread.1
  %.1646733.1 = phi float [ %i.bke, %bb.bi ], [ 0.000000e+00, %_ZL13activation_ssfiRKN4ncnn3MatE.exit804.thread.1 ], [ %i.bjx, %bb.bh ]
  %i.bkf = extractelement <2 x float> %i.bjk, i64 0 ; 5 uses
  %i.bkg = fcmp fast olt float %i.bkf, %i.bjo
  br i1 %i.bkg, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit802.thread.1, label %bb.bj

bb.bj:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit803.thread.1
  %i.bkh = fdiv fast float 1.000000e+00, %i.bjl
  %i.bki = fadd fast float %i.bjo, %i.bkh
  %i.bkj = fcmp fast ogt float %i.bkf, %i.bki
  br i1 %i.bkj, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit802.thread.1, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.bkk = fmul fast float %i.bjl, %i.bkf
  %i.bkl = fadd fast float %i.bkk, %i.bjm
  %i.bkm = fmul fast float %i.bkl, %i.bkf
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit802.thread.1

_ZL13activation_ssfiRKN4ncnn3MatE.exit802.thread.1: ; preds = %bb.bk, %bb.bj, %_ZL13activation_ssfiRKN4ncnn3MatE.exit803.thread.1
  %.1648769.1 = phi float [ %i.bkm, %bb.bk ], [ 0.000000e+00, %_ZL13activation_ssfiRKN4ncnn3MatE.exit803.thread.1 ], [ %i.bkf, %bb.bj ] ; 2 uses
  %i.bkn = extractelement <2 x float> %i.bjk, i64 1 ; 4 uses
  %i.bko = fcmp fast olt float %i.bkn, %i.bjo
  %i.bkp = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.1648769.1, i64 0 ; 2 uses
  %i.bkq = insertelement <2 x float> poison, float %.1644710.1, i64 0
  %i.bkr = insertelement <2 x float> %i.bkq, float %.1646733.1, i64 1 ; 3 uses
  br i1 %i.bko, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit801.1, label %bb.bl

bb.bl:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit802.thread.1
  %i.bks = fdiv fast float 1.000000e+00, %i.bjl
  %i.bkt = fadd fast float %i.bjo, %i.bks
  %i.bku = fcmp fast ogt float %i.bkn, %i.bkt
  %i.bkv = insertelement <2 x float> %i.bjk, float %.1648769.1, i64 0
  br i1 %i.bku, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit801.1, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.bkw = fmul fast float %i.bjl, %i.bkn
  %i.bkx = fadd fast float %i.bkw, %i.bjm
  %i.bky = fmul fast float %i.bkx, %i.bkn
  %i.bkz = insertelement <2 x float> %i.bkp, float %i.bky, i64 1
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit801.1

_ZL13activation_ssfiRKN4ncnn3MatE.exit804.thread726.1: ; preds = %bb.bd
  %i.bla = extractelement <2 x float> %i.bji, i64 0
  %i.blb = tail call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.bla)
  %i.blc = extractelement <2 x float> %i.bji, i64 1
  %i.bld = tail call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.blc)
  %i.ble = fadd fast float %i.blb, 1.000000e+00
  %i.blf = fadd fast float %i.bld, 1.000000e+00
  %i.blg = tail call fast float @llvm.log.f32(float %i.ble)
  %i.blh = tail call fast float @llvm.log.f32(float %i.blf)
  %i.bli = tail call fast float @llvm.tanh.f32(float %i.blg)
  %i.blj = tail call fast float @llvm.tanh.f32(float %i.blh)
  %i.blk = insertelement <2 x float> poison, float %i.bli, i64 0
  %i.bll = insertelement <2 x float> %i.blk, float %i.blj, i64 1
  %i.blm = fmul fast <2 x float> %i.bll, %i.bji
  %i.bln = extractelement <2 x float> %i.bjk, i64 0
  %i.blo = tail call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.bln)
  %i.blp = extractelement <2 x float> %i.bjk, i64 1
  %i.blq = tail call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.blp)
  %i.blr = fadd fast float %i.blq, 1.000000e+00
  %i.bls = fadd fast float %i.blo, 1.000000e+00
  %i.blt = tail call fast float @llvm.log.f32(float %i.blr)
  %i.blu = tail call fast float @llvm.log.f32(float %i.bls)
  %i.blv = tail call fast float @llvm.tanh.f32(float %i.blt)
  %i.blw = tail call fast float @llvm.tanh.f32(float %i.blu)
  %i.blx = insertelement <2 x float> poison, float %i.blw, i64 0
  %i.bly = insertelement <2 x float> %i.blx, float %i.blv, i64 1
  %i.blz = fmul fast <2 x float> %i.bly, %i.bjk
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit801.1

_ZL13activation_ssfiRKN4ncnn3MatE.exit804.thread723.1: ; preds = %bb.bd
  %i.bma = tail call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.bji, <2 x float> splat (float f0x42B0C0A5))
  %i.bmb = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.bma, <2 x float> splat (float f0xC2B0C0A5))
  %i.bmc = fneg fast <2 x float> %i.bmb
  %i.bmd = tail call fast <2 x float> @llvm.exp.v2f32(<2 x float> %i.bmc)
  %i.bme = fadd fast <2 x float> %i.bmd, splat (float 1.000000e+00)
  %i.bmf = fdiv fast <2 x float> splat (float 1.000000e+00), %i.bme
  %i.bmg = tail call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.bjk, <2 x float> splat (float f0x42B0C0A5))
  %i.bmh = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.bmg, <2 x float> splat (float f0xC2B0C0A5))
  %i.bmi = fneg fast <2 x float> %i.bmh
  %i.bmj = tail call fast <2 x float> @llvm.exp.v2f32(<2 x float> %i.bmi)
  %i.bmk = fadd fast <2 x float> %i.bmj, splat (float 1.000000e+00)
  %i.bml = fdiv fast <2 x float> splat (float 1.000000e+00), %i.bmk
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit801.1

_ZL13activation_ssfiRKN4ncnn3MatE.exit804.thread714.1: ; preds = %bb.bd
  %12 = load <2 x float>, ptr %i.bcf, align 4, !tbaa !22 ; 4 uses
  %13 = extractelement <2 x float> %12, i64 0     ; 2 uses
  %i.bmm = shufflevector <2 x float> %12, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bmn = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.bji, <2 x float> %i.bmm) ; 2 uses
  %14 = shufflevector <2 x float> %12, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.bmo = fcmp fast ogt <2 x float> %i.bmn, %14
  %i.bmp = select <2 x i1> %i.bmo, <2 x float> %14, <2 x float> %i.bmn
  %i.bmq = extractelement <2 x float> %i.bjk, i64 0
  %.0647.1 = tail call nnan ninf nsz float @llvm.maxnum.f32(float %i.bmq, float %13) ; 2 uses
  %15 = extractelement <2 x float> %12, i64 1     ; 3 uses
  %i.bmr = fcmp fast ogt float %.0647.1, %15
  %.1648779.1 = select i1 %i.bmr, float %15, float %.0647.1
  %i.bms = extractelement <2 x float> %i.bjk, i64 1
  %.0649.1 = tail call nnan ninf nsz float @llvm.maxnum.f32(float %i.bms, float %13)
  %spec.select829.1 = tail call nnan ninf nsz float @llvm.minnum.f32(float %.0649.1, float %15)
  %i.bmt = insertelement <2 x float> poison, float %.1648779.1, i64 0
  %i.bmu = insertelement <2 x float> %i.bmt, float %spec.select829.1, i64 1
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit801.1

_ZL13activation_ssfiRKN4ncnn3MatE.exit804.thread720.1: ; preds = %bb.bd
  %i.bmv = load float, ptr %i.bcg, align 4, !tbaa !22
  %i.bmw = fcmp fast ogt <2 x float> %i.bji, zeroinitializer
  %i.bmx = insertelement <2 x float> poison, float %i.bmv, i64 0
  %i.bmy = shufflevector <2 x float> %i.bmx, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bmz = select <2 x i1> %i.bmw, <2 x float> splat (float 1.000000e+00), <2 x float> %i.bmy
  %i.bna = fmul fast <2 x float> %i.bmz, %i.bji
  %i.bnb = fcmp fast ogt <2 x float> %i.bjk, zeroinitializer
  %i.bnc = select <2 x i1> %i.bnb, <2 x float> splat (float 1.000000e+00), <2 x float> %i.bmy
  %i.bnd = fmul fast <2 x float> %i.bnc, %i.bjk
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit801.1

_ZL13activation_ssfiRKN4ncnn3MatE.exit804.thread717.1: ; preds = %bb.bd
  %i.bne = tail call fast <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.bji, <2 x float> zeroinitializer)
  %i.bnf = tail call fast <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.bjk, <2 x float> zeroinitializer)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit801.1

_ZL13activation_ssfiRKN4ncnn3MatE.exit801.1:      ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit804.thread717.1, %_ZL13activation_ssfiRKN4ncnn3MatE.exit804.thread720.1, %_ZL13activation_ssfiRKN4ncnn3MatE.exit804.thread714.1, %_ZL13activation_ssfiRKN4ncnn3MatE.exit804.thread723.1, %_ZL13activation_ssfiRKN4ncnn3MatE.exit804.thread726.1, %bb.bm, %bb.bl, %_ZL13activation_ssfiRKN4ncnn3MatE.exit802.thread.1, %bb.bd
  %i.bng = phi <2 x float> [ %i.bkp, %_ZL13activation_ssfiRKN4ncnn3MatE.exit802.thread.1 ], [ %i.bnf, %_ZL13activation_ssfiRKN4ncnn3MatE.exit804.thread717.1 ], [ %i.bnd, %_ZL13activation_ssfiRKN4ncnn3MatE.exit804.thread720.1 ], [ %i.bjk, %bb.bd ], [ %i.bmu, %_ZL13activation_ssfiRKN4ncnn3MatE.exit804.thread714.1 ], [ %i.bml, %_ZL13activation_ssfiRKN4ncnn3MatE.exit804.thread723.1 ], [ %i.blz, %_ZL13activation_ssfiRKN4ncnn3MatE.exit804.thread726.1 ], [ %i.bkz, %bb.bm ], [ %i.bkv, %bb.bl ]
  %i.bnh = phi <2 x float> [ %i.bkr, %_ZL13activation_ssfiRKN4ncnn3MatE.exit802.thread.1 ], [ %i.bne, %_ZL13activation_ssfiRKN4ncnn3MatE.exit804.thread717.1 ], [ %i.bna, %_ZL13activation_ssfiRKN4ncnn3MatE.exit804.thread720.1 ], [ %i.bji, %bb.bd ], [ %i.bmp, %_ZL13activation_ssfiRKN4ncnn3MatE.exit804.thread714.1 ], [ %i.bmf, %_ZL13activation_ssfiRKN4ncnn3MatE.exit804.thread723.1 ], [ %i.blm, %_ZL13activation_ssfiRKN4ncnn3MatE.exit804.thread726.1 ], [ %i.bkr, %bb.bm ], [ %i.bkr, %bb.bl ]
  %i.bni = getelementptr inbounds nuw [2 x i8], ptr %.1681, i64 %i.m ; 2 uses
  %i.bnj = bitcast <2 x float> %i.bnh to <2 x i32>
  %i.bnk = lshr <2 x i32> %i.bnj, splat (i32 16)
  %i.bnl = trunc nuw <2 x i32> %i.bnk to <2 x i16> ; 2 uses
  %i.bnm = extractelement <2 x i16> %i.bnl, i64 0
  store i16 %i.bnm, ptr %.1681, align 2, !tbaa !24
  %i.bnn = extractelement <2 x i16> %i.bnl, i64 1
  store i16 %i.bnn, ptr %i.bni, align 2, !tbaa !24
  br i1 %i.bdz, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit801.1
  %i.bno = bitcast <2 x float> %i.bng to <2 x i32>
  %i.bnp = getelementptr inbounds nuw i8, ptr %.1681, i64 2
  %i.bnq = lshr <2 x i32> %i.bno, splat (i32 16)
  %i.bnr = trunc nuw <2 x i32> %i.bnq to <2 x i16> ; 2 uses
  %i.bns = extractelement <2 x i16> %i.bnr, i64 0
  store i16 %i.bns, ptr %i.bnp, align 2, !tbaa !24
  %i.bnt = getelementptr inbounds nuw i8, ptr %i.bni, i64 2
  %i.bnu = extractelement <2 x i16> %i.bnr, i64 1
  store i16 %i.bnu, ptr %i.bnt, align 2, !tbaa !24
  br label %bb.bo

bb.bo:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit801.1, %bb.bn, %bb.bc
  %indvars.iv.next1000 = add nuw nsw i64 %indvars.iv999, 1 ; 2 uses
  %exitcond1003.not = icmp eq i64 %indvars.iv.next1000, %wide.trip.count1002
  br i1 %exitcond1003.not, label %._crit_edge, label %_ZN4ncnn3MatD2Ev.exit763, !llvm.loop !669

._crit_edge:                                      ; preds = %bb.bo, %.thread
  %indvars.iv.next1005 = add nuw nsw i64 %indvars.iv1004, 2 ; 3 uses
  %i.bnv = icmp slt i64 %indvars.iv.next1005, %invariant.op1070
  br i1 %i.bnv, label %bb.ao, label %.preheader.loopexit, !llvm.loop !670

bb.bp:                                            ; preds = %.lr.ph934, %._crit_edge928
  %indvars.iv1019 = phi i64 [ %i.bbk, %.lr.ph934 ], [ %indvars.iv.next1020, %._crit_edge928 ] ; 4 uses
  br i1 %.not, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %gep1072 = getelementptr [4 x i8], ptr %invariant.gep1071, i64 %indvars.iv1019
  %i.bnw = load float, ptr %gep1072, align 4, !tbaa !22
  br label %bb.br

bb.br:                                            ; preds = %bb.bp, %bb.bq
  %i.bnx = phi fast float [ %i.bnw, %bb.bq ], [ 0.000000e+00, %bb.bp ] ; 2 uses
  br i1 %i.bba, label %.lr.ph927, label %._crit_edge928

.lr.ph927:                                        ; preds = %bb.br
  %i.bny = trunc nsw i64 %indvars.iv1019 to i32
  %factor.op.mul.reass932 = mul i32 %factor.op.mul859, %i.bny
  %i.bnz = sext i32 %factor.op.mul.reass932 to i64
  %i.boa = getelementptr inbounds [4 x i8], ptr %i.bbm, i64 %i.bnz
  %i.bob = add nsw i64 %indvars.iv1019, %i.bbl
  %.reass1077 = mul i64 %factor.op.mul1076, %i.bob
  %i.boc = getelementptr inbounds nuw i8, ptr %i.bbo, i64 %.reass1077
  %i.bod = load ptr, ptr %7, align 8              ; 2 uses
  %i.boe = getelementptr inbounds nuw i8, ptr %i.bod, i64 4
  %i.bof = load ptr, ptr %7, align 8              ; 2 uses
  %i.bog = getelementptr inbounds nuw i8, ptr %i.bof, i64 4
  %i.boh = load ptr, ptr %7, align 8
  %i.boi = load ptr, ptr %7, align 8              ; 2 uses
  %i.boj = getelementptr inbounds nuw i8, ptr %i.boi, i64 4
  %i.bok = load ptr, ptr %7, align 8              ; 2 uses
  %i.bol = getelementptr inbounds nuw i8, ptr %i.bok, i64 4
  %i.bom = load ptr, ptr %7, align 8
  br label %_ZN4ncnn3MatD2Ev.exit

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %.lr.ph927, %bb.ci
  %indvars.iv1014 = phi i64 [ 0, %.lr.ph927 ], [ %indvars.iv.next1015, %bb.ci ] ; 3 uses
  %i.bon = getelementptr inbounds nuw [4 x i8], ptr %i.boa, i64 %indvars.iv1014 ; 5 uses
  %i.boo = getelementptr inbounds nuw [4 x i8], ptr %i.bon, i64 %i.bbb ; 2 uses
  %i.bop = getelementptr inbounds nuw [4 x i8], ptr %i.bon, i64 %i.bbd ; 2 uses
  %i.boq = getelementptr inbounds nuw [4 x i8], ptr %i.bon, i64 %i.bbf ; 2 uses
  %i.bor = load float, ptr %i.boo, align 4, !tbaa !22 ; 2 uses
  %i.bos = load float, ptr %i.bop, align 4, !tbaa !22 ; 2 uses
  %i.bot = fsub fast float %i.bor, %i.bos
  %i.bou = load float, ptr %i.boq, align 4, !tbaa !22
  %i.bov = fadd fast float %i.bot, %i.bou
  %i.bow = getelementptr inbounds nuw [4 x i8], ptr %i.boo, i64 %i.bbh ; 2 uses
  %i.box = getelementptr inbounds nuw [4 x i8], ptr %i.bop, i64 %i.bbh ; 2 uses
  %i.boy = getelementptr inbounds nuw [4 x i8], ptr %i.boq, i64 %i.bbh ; 2 uses
  %i.boz = load float, ptr %i.bow, align 4, !tbaa !22 ; 2 uses
  %i.bpa = load float, ptr %i.box, align 4, !tbaa !22 ; 2 uses
  %i.bpb = fsub fast float %i.boz, %i.bpa
  %i.bpc = load float, ptr %i.boy, align 4, !tbaa !22
  %i.bpd = fadd fast float %i.bpb, %i.bpc
  %i.bpe = getelementptr inbounds nuw [4 x i8], ptr %i.bow, i64 %i.bbh ; 2 uses
  %i.bpf = getelementptr inbounds nuw [4 x i8], ptr %i.box, i64 %i.bbh ; 2 uses
  %i.bpg = getelementptr inbounds nuw [4 x i8], ptr %i.boy, i64 %i.bbh ; 2 uses
  %i.bph = load float, ptr %i.bpe, align 4, !tbaa !22 ; 2 uses
  %i.bpi = load float, ptr %i.bpf, align 4, !tbaa !22 ; 2 uses
  %i.bpj = fsub fast float %i.bph, %i.bpi
  %i.bpk = load float, ptr %i.bpg, align 4, !tbaa !22
  %i.bpl = fadd fast float %i.bpj, %i.bpk         ; 2 uses
  %i.bpm = getelementptr inbounds nuw [4 x i8], ptr %i.bpe, i64 %i.bbh
  %i.bpn = getelementptr inbounds nuw [4 x i8], ptr %i.bpf, i64 %i.bbh
  %i.bpo = getelementptr inbounds nuw [4 x i8], ptr %i.bpg, i64 %i.bbh
  %i.bpp = load float, ptr %i.bpm, align 4, !tbaa !22 ; 2 uses
  %i.bpq = load float, ptr %i.bpn, align 4, !tbaa !22 ; 2 uses
  %i.bpr = fsub fast float %i.bpp, %i.bpq
  %i.bps = load float, ptr %i.bpo, align 4, !tbaa !22
  %i.bpt = fadd fast float %i.bpr, %i.bps
  %i.bpu = trunc i64 %indvars.iv1014 to i32
  %i.bpv = add i32 %4, %i.bpu                     ; 2 uses
  %i.bpw = sdiv i32 %i.bpv, %i.o
  %i.bpx = srem i32 %i.bpv, %i.o
  %i.bpy = shl nsw i32 %i.bpw, 1                  ; 3 uses
  %i.bpz = sext i32 %i.bpy to i64
  %.reass930 = mul i64 %factor.op.mul929, %i.bpz
  %i.bqa = getelementptr inbounds nuw i8, ptr %i.boc, i64 %.reass930
  %i.bqb = shl nsw i32 %i.bpx, 1                  ; 2 uses
  %i.bqc = sext i32 %i.bqb to i64
  %i.bqd = getelementptr inbounds [2 x i8], ptr %i.bqa, i64 %i.bqc ; 4 uses
  %i.bqe = or disjoint i32 %i.bqb, 1
  %i.bqf = icmp slt i32 %i.bqe, %i.e              ; 2 uses
  %.not727 = icmp slt i32 %i.bpy, %i.g
  br i1 %.not727, label %bb.bs, label %bb.ca

bb.bs:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit
  %i.bqg = getelementptr inbounds nuw [4 x i8], ptr %i.bon, i64 %i.bbh ; 2 uses
  %i.bqh = getelementptr inbounds nuw [4 x i8], ptr %i.bqg, i64 %i.bbh ; 2 uses
  %i.bqi = getelementptr inbounds nuw [4 x i8], ptr %i.bqh, i64 %i.bbh
  %i.bqj = load float, ptr %i.bqi, align 4, !tbaa !22
  %i.bqk = fadd fast float %i.bpp, %i.bqj
  %i.bql = fadd fast float %i.bqk, %i.bpq
  %i.bqm = load float, ptr %i.bqh, align 4, !tbaa !22
  %i.bqn = fadd fast float %i.bph, %i.bqm
  %i.bqo = fadd fast float %i.bqn, %i.bpi         ; 2 uses
  %i.bqp = load float, ptr %i.bqg, align 4, !tbaa !22
  %i.bqq = fadd fast float %i.boz, %i.bqp
  %i.bqr = fadd fast float %i.bqq, %i.bpa
  %i.bqs = load float, ptr %i.bon, align 4, !tbaa !22
  %i.bqt = fadd fast float %i.bor, %i.bqs
  %i.bqu = fadd fast float %i.bqt, %i.bos
  %i.bqv = fadd fast float %i.bqr, %i.bnx         ; 2 uses
  %i.bqw = fadd fast float %i.bqv, %i.bqu
  %i.bqx = fadd fast float %i.bqw, %i.bqo         ; 13 uses
  %i.bqy = fsub fast float %i.bqv, %i.bqo
  %i.bqz = fadd fast float %i.bqy, %i.bql         ; 13 uses
  switch i32 %6, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit [
    i32 1, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit800.thread816
    i32 2, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit800.thread819
    i32 3, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit800.thread813
    i32 4, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit800.thread822
    i32 5, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit800.thread825
    i32 6, label %bb.bt
  ]

_ZL13activation_ssfiRKN4ncnn3MatE.exit800.thread816: ; preds = %bb.bs
  %i.bra = tail call fast float @llvm.maxnum.f32(float nofpclass(nan inf) %i.bqx, float 0.000000e+00)
  %i.brb = tail call fast float @llvm.maxnum.f32(float nofpclass(nan inf) %i.bqz, float 0.000000e+00)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

_ZL13activation_ssfiRKN4ncnn3MatE.exit800.thread819: ; preds = %bb.bs
  %i.brc = load float, ptr %i.boh, align 4, !tbaa !22 ; 2 uses
  %i.brd = fcmp fast ogt float %i.bqx, 0.000000e+00
  %i.bre = select fast i1 %i.brd, float 1.000000e+00, float %i.brc
  %i.brf = fmul fast float %i.bre, %i.bqx
  %i.brg = fcmp fast ogt float %i.bqz, 0.000000e+00
  %i.brh = select fast i1 %i.brg, float 1.000000e+00, float %i.brc
  %i.bri = fmul fast float %i.brh, %i.bqz
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

_ZL13activation_ssfiRKN4ncnn3MatE.exit800.thread813: ; preds = %bb.bs
  %i.brj = load float, ptr %i.bof, align 4, !tbaa !22 ; 2 uses
  %i.brk = load float, ptr %i.bog, align 4, !tbaa !22 ; 3 uses
  %spec.select828 = tail call nnan ninf nsz float @llvm.maxnum.f32(float %i.bqx, float %i.brj) ; 2 uses
  %i.brl = fcmp fast ogt float %spec.select828, %i.brk
  %.1652815 = select i1 %i.brl, float %i.brk, float %spec.select828
  %.0653 = tail call nnan ninf nsz float @llvm.maxnum.f32(float %i.bqz, float %i.brj)
  %spec.select830 = tail call nnan ninf nsz float @llvm.minnum.f32(float %.0653, float %i.brk)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

_ZL13activation_ssfiRKN4ncnn3MatE.exit800.thread822: ; preds = %bb.bs
  %.sroa.speculated135 = tail call nnan ninf nsz float @llvm.minnum.f32(float %i.bqx, float f0x42B0C0A5)
  %.sroa.speculated131 = tail call nnan ninf nsz float @llvm.maxnum.f32(float %.sroa.speculated135, float f0xC2B0C0A5)
  %i.brm = fneg fast float %.sroa.speculated131
end_hunk_0
