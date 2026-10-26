Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/convolution_x86_avx512?download=true
inline.NumInlined: 389
inline.NumDeleted: 86
loop-unroll.NumCompletelyUnrolled: 154
loop-unroll.NumRuntimeUnrolled: 218
loop-unroll.NumUnrolled: 372
begin_hunk_0_@_ZN4ncnn22Convolution_x86_avx51215create_pipelineERKNS_6OptionE:bb.a
  %i.bpv = getelementptr inbounds nuw i8, ptr %.812501749.us.i, i64 192
  %i.bpw = getelementptr inbounds nuw [4 x i8], ptr %.312251754.us.i, i64 %indvars.iv2250.i
  %i.bpx = getelementptr inbounds nuw i8, ptr %i.bpw, i64 12 ; 2 uses
  %i.bpy = call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.bpx, <8 x i32> %i.apj, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.bpy, ptr %i.bpv, align 32, !tbaa !85
  %i.bpz = getelementptr inbounds nuw [4 x i8], ptr %i.bpx, i64 %i.apk
  %i.bqa = getelementptr inbounds nuw i8, ptr %.812501749.us.i, i64 224
  %i.bqb = call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.bpz, <8 x i32> %i.apj, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.bqb, ptr %i.bqa, align 32, !tbaa !85
  %i.bqc = getelementptr inbounds nuw i8, ptr %.812501749.us.i, i64 256 ; 3 uses
  %indvars.iv.next2251.i.3 = add nuw nsw i64 %indvars.iv2250.i, 4 ; 2 uses
  %niter1089.next.3 = add i64 %niter1089, 4       ; 2 uses
  %niter1089.ncmp.3 = icmp eq i64 %niter1089.next.3, %unroll_iter1088
  br i1 %niter1089.ncmp.3, label %._crit_edge1750.us.i.unr-lcssa, label %.preheader1577.us.i.new, !llvm.loop !143

._crit_edge1750.us.i.unr-lcssa:                   ; preds = %.preheader1577.us.i.new
  br i1 %lcmp.mod1085.not, label %._crit_edge1750.us.i, label %.epil.preheader1082

.epil.preheader1082:                              ; preds = %._crit_edge1750.us.i.unr-lcssa, %.preheader1577.us.i
  %indvars.iv2250.i.epil.init = phi i64 [ 0, %.preheader1577.us.i ], [ %indvars.iv.next2251.i.3, %._crit_edge1750.us.i.unr-lcssa ]
  %.812501749.us.i.epil.init = phi ptr [ %.712491753.us.i, %.preheader1577.us.i ], [ %i.bqc, %._crit_edge1750.us.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1087)
  br label %bb.lf

bb.lf:                                            ; preds = %bb.lf, %.epil.preheader1082
  %indvars.iv2250.i.epil = phi i64 [ %indvars.iv2250.i.epil.init, %.epil.preheader1082 ], [ %indvars.iv.next2251.i.epil, %bb.lf ] ; 2 uses
  %.812501749.us.i.epil = phi ptr [ %.812501749.us.i.epil.init, %.epil.preheader1082 ], [ %i.bqi, %bb.lf ] ; 3 uses
  %epil.iter1084 = phi i64 [ 0, %.epil.preheader1082 ], [ %epil.iter1084.next, %bb.lf ]
  %i.bqd = getelementptr inbounds nuw [4 x i8], ptr %.312251754.us.i, i64 %indvars.iv2250.i.epil ; 2 uses
  %i.bqe = call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.bqd, <8 x i32> %i.apj, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.bqe, ptr %.812501749.us.i.epil, align 32, !tbaa !85
  %i.bqf = getelementptr inbounds nuw [4 x i8], ptr %i.bqd, i64 %i.apk
  %i.bqg = getelementptr inbounds nuw i8, ptr %.812501749.us.i.epil, i64 32
  %i.bqh = call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.bqf, <8 x i32> %i.apj, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.bqh, ptr %i.bqg, align 32, !tbaa !85
  %i.bqi = getelementptr inbounds nuw i8, ptr %.812501749.us.i.epil, i64 64 ; 2 uses
  %indvars.iv.next2251.i.epil = add nuw nsw i64 %indvars.iv2250.i.epil, 1
  %epil.iter1084.next = add i64 %epil.iter1084, 1 ; 2 uses
  %epil.iter1084.cmp.not = icmp eq i64 %epil.iter1084.next, %xtraiter1083
  br i1 %epil.iter1084.cmp.not, label %._crit_edge1750.us.i, label %bb.lf, !llvm.loop !144

._crit_edge1750.us.i:                             ; preds = %bb.lf, %._crit_edge1750.us.i.unr-lcssa
  %.lcssa1041 = phi ptr [ %i.bqc, %._crit_edge1750.us.i.unr-lcssa ], [ %i.bqi, %bb.lf ] ; 2 uses
  %i.bqj = getelementptr inbounds nuw [4 x i8], ptr %.312251754.us.i, i64 %i.apo ; 2 uses
  %i.bqk = add nuw nsw i32 %.312871752.us.i, 2    ; 3 uses
  %i.bql = or disjoint i32 %i.bqk, 1
  %i.bqm = icmp slt i32 %i.bql, %i.cn
  br i1 %i.bqm, label %.preheader1577.us.i, label %.preheader1581.i, !llvm.loop !145

.preheader1581.i:                                 ; preds = %._crit_edge1750.us.i, %.preheader1582.i
  %.31287.lcssa.i = phi i32 [ %.21286.lcssa.i, %.preheader1582.i ], [ %i.bqk, %._crit_edge1750.us.i ] ; 2 uses
  %.71249.lcssa.i = phi ptr [ %.41246.lcssa.i, %.preheader1582.i ], [ %.lcssa1041, %._crit_edge1750.us.i ]
  %.31225.lcssa.i = phi ptr [ %.21224.lcssa.i, %.preheader1582.i ], [ %i.bqj, %._crit_edge1750.us.i ] ; 9 uses
  %i.bqn = icmp sge i32 %.31287.lcssa.i, %i.cn
  %brmerge2000.i = or i1 %i.app, %i.bqn
  br i1 %brmerge2000.i, label %._crit_edge1767.split.i, label %.preheader1576.i

.preheader1576.i:                                 ; preds = %.preheader1581.i, %._crit_edge1763.i
  %.1012521766.i = phi ptr [ %.lcssa1044, %._crit_edge1763.i ], [ %.71249.lcssa.i, %.preheader1581.i ] ; 2 uses
  %.412881765.i = phi i32 [ %i.bqr, %._crit_edge1763.i ], [ %.31287.lcssa.i, %.preheader1581.i ]
  br i1 %i.aqi, label %.epil.preheader1090, label %.preheader1576.i.new

._crit_edge1763.i.unr-lcssa:                      ; preds = %.preheader1576.i.new
  br i1 %lcmp.mod1093.not, label %._crit_edge1763.i, label %.epil.preheader1090

.epil.preheader1090:                              ; preds = %._crit_edge1763.i.unr-lcssa, %.preheader1576.i
  %indvars.iv2255.i.epil.init = phi i64 [ 0, %.preheader1576.i ], [ %indvars.iv.next2256.i.7, %._crit_edge1763.i.unr-lcssa ]
  %.1112531762.i.epil.init = phi ptr [ %.1012521766.i, %.preheader1576.i ], [ %i.brw, %._crit_edge1763.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1095)
  br label %bb.lg

bb.lg:                                            ; preds = %bb.lg, %.epil.preheader1090
  %indvars.iv2255.i.epil = phi i64 [ %indvars.iv2255.i.epil.init, %.epil.preheader1090 ], [ %indvars.iv.next2256.i.epil, %bb.lg ] ; 2 uses
  %.1112531762.i.epil = phi ptr [ %.1112531762.i.epil.init, %.epil.preheader1090 ], [ %i.bqq, %bb.lg ] ; 2 uses
  %epil.iter1092 = phi i64 [ 0, %.epil.preheader1090 ], [ %epil.iter1092.next, %bb.lg ]
  %i.bqo = getelementptr inbounds nuw [4 x i8], ptr %.31225.lcssa.i, i64 %indvars.iv2255.i.epil
  %i.bqp = call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.bqo, <8 x i32> %i.apj, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.bqp, ptr %.1112531762.i.epil, align 32, !tbaa !85
  %i.bqq = getelementptr inbounds nuw i8, ptr %.1112531762.i.epil, i64 32 ; 2 uses
  %indvars.iv.next2256.i.epil = add nuw nsw i64 %indvars.iv2255.i.epil, 1
  %epil.iter1092.next = add i64 %epil.iter1092, 1 ; 2 uses
  %epil.iter1092.cmp.not = icmp eq i64 %epil.iter1092.next, %xtraiter1091
  br i1 %epil.iter1092.cmp.not, label %._crit_edge1763.i, label %bb.lg, !llvm.loop !146

._crit_edge1763.i:                                ; preds = %bb.lg, %._crit_edge1763.i.unr-lcssa
  %.lcssa1044 = phi ptr [ %i.brw, %._crit_edge1763.i.unr-lcssa ], [ %i.bqq, %bb.lg ]
  %i.bqr = add nuw nsw i32 %.412881765.i, 1       ; 2 uses
  %exitcond2260.not.i = icmp eq i32 %i.bqr, %i.cn
  br i1 %exitcond2260.not.i, label %._crit_edge1767.split.i, label %.preheader1576.i, !llvm.loop !147

.preheader1576.i.new:                             ; preds = %.preheader1576.i, %.preheader1576.i.new
  %indvars.iv2255.i = phi i64 [ %indvars.iv.next2256.i.7, %.preheader1576.i.new ], [ 0, %.preheader1576.i ] ; 9 uses
  %.1112531762.i = phi ptr [ %i.brw, %.preheader1576.i.new ], [ %.1012521766.i, %.preheader1576.i ] ; 9 uses
  %niter1097 = phi i64 [ %niter1097.next.7, %.preheader1576.i.new ], [ 0, %.preheader1576.i ]
  %i.bqs = getelementptr inbounds nuw [4 x i8], ptr %.31225.lcssa.i, i64 %indvars.iv2255.i
  %i.bqt = call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.bqs, <8 x i32> %i.apj, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.bqt, ptr %.1112531762.i, align 32, !tbaa !85
  %i.bqu = getelementptr inbounds nuw i8, ptr %.1112531762.i, i64 32
  %i.bqv = getelementptr inbounds nuw [4 x i8], ptr %.31225.lcssa.i, i64 %indvars.iv2255.i
  %i.bqw = getelementptr inbounds nuw i8, ptr %i.bqv, i64 4
  %i.bqx = call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.bqw, <8 x i32> %i.apj, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.bqx, ptr %i.bqu, align 32, !tbaa !85
  %i.bqy = getelementptr inbounds nuw i8, ptr %.1112531762.i, i64 64
  %i.bqz = getelementptr inbounds nuw [4 x i8], ptr %.31225.lcssa.i, i64 %indvars.iv2255.i
  %i.bra = getelementptr inbounds nuw i8, ptr %i.bqz, i64 8
  %i.brb = call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.bra, <8 x i32> %i.apj, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.brb, ptr %i.bqy, align 32, !tbaa !85
  %i.brc = getelementptr inbounds nuw i8, ptr %.1112531762.i, i64 96
  %i.brd = getelementptr inbounds nuw [4 x i8], ptr %.31225.lcssa.i, i64 %indvars.iv2255.i
  %i.bre = getelementptr inbounds nuw i8, ptr %i.brd, i64 12
  %i.brf = call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.bre, <8 x i32> %i.apj, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.brf, ptr %i.brc, align 32, !tbaa !85
  %i.brg = getelementptr inbounds nuw i8, ptr %.1112531762.i, i64 128
  %i.brh = getelementptr inbounds nuw [4 x i8], ptr %.31225.lcssa.i, i64 %indvars.iv2255.i
  %i.bri = getelementptr inbounds nuw i8, ptr %i.brh, i64 16
  %i.brj = call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.bri, <8 x i32> %i.apj, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.brj, ptr %i.brg, align 32, !tbaa !85
  %i.brk = getelementptr inbounds nuw i8, ptr %.1112531762.i, i64 160
  %i.brl = getelementptr inbounds nuw [4 x i8], ptr %.31225.lcssa.i, i64 %indvars.iv2255.i
  %i.brm = getelementptr inbounds nuw i8, ptr %i.brl, i64 20
  %i.brn = call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.brm, <8 x i32> %i.apj, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.brn, ptr %i.brk, align 32, !tbaa !85
  %i.bro = getelementptr inbounds nuw i8, ptr %.1112531762.i, i64 192
  %i.brp = getelementptr inbounds nuw [4 x i8], ptr %.31225.lcssa.i, i64 %indvars.iv2255.i
  %i.brq = getelementptr inbounds nuw i8, ptr %i.brp, i64 24
  %i.brr = call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.brq, <8 x i32> %i.apj, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.brr, ptr %i.bro, align 32, !tbaa !85
  %i.brs = getelementptr inbounds nuw i8, ptr %.1112531762.i, i64 224
  %i.brt = getelementptr inbounds nuw [4 x i8], ptr %.31225.lcssa.i, i64 %indvars.iv2255.i
  %i.bru = getelementptr inbounds nuw i8, ptr %i.brt, i64 28
  %i.brv = call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.bru, <8 x i32> %i.apj, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.brv, ptr %i.brs, align 32, !tbaa !85
  %i.brw = getelementptr inbounds nuw i8, ptr %.1112531762.i, i64 256 ; 3 uses
  %indvars.iv.next2256.i.7 = add nuw nsw i64 %indvars.iv2255.i, 8 ; 2 uses
  %niter1097.next.7 = add i64 %niter1097, 8       ; 2 uses
  %niter1097.ncmp.7 = icmp eq i64 %niter1097.next.7, %unroll_iter1096
  br i1 %niter1097.ncmp.7, label %._crit_edge1763.i.unr-lcssa, label %.preheader1576.i.new, !llvm.loop !148

._crit_edge1767.split.i:                          ; preds = %._crit_edge1763.i, %.preheader1581.i, %.preheader1577.lr.ph.i, %.preheader1578.lr.ph.i
  %indvars.iv.next2264.i = add nuw nsw i64 %indvars.iv2263.i, 8 ; 3 uses
  %i.brx = icmp slt i64 %indvars.iv.next2264.i, %invariant.op.i
  %indvars.iv.next2207.i = add i32 %indvars.iv2206.i, %i.apw
  %indvars.iv.next2262.i = add i32 %indvars.iv2261.i, 8
  br i1 %i.brx, label %_ZN4ncnn3MatD2Ev.exit1329.i, label %.preheader1575.loopexit.i, !llvm.loop !149

.preheader1566.loopexit.i:                        ; preds = %._crit_edge1853.split.i
  %i.bry = trunc nuw nsw i64 %indvars.iv.next2314.i to i32
  br label %.preheader1566.i

.preheader1566.i:                                 ; preds = %.preheader1566.loopexit.i, %.preheader1575.i
  %.2.lcssa.i = phi i32 [ %.1.lcssa.i, %.preheader1575.i ], [ %i.bry, %.preheader1566.loopexit.i ] ; 4 uses
  %i.brz = or disjoint i32 %.2.lcssa.i, 1         ; 3 uses
  %i.bsa = icmp slt i32 %i.brz, %i.ro
  br i1 %i.bsa, label %_ZN4ncnn3MatD2Ev.exit1327.lr.ph.i, label %.preheader1556.i

_ZN4ncnn3MatD2Ev.exit1327.lr.ph.i:                ; preds = %.preheader1566.i
  %i.bsb = mul i32 %i.aew, %i.cn                  ; 5 uses
  %i.bsc = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.bsd = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.bse = insertelement <4 x i32> poison, i32 %i.aew, i64 0
  %i.bsf = shufflevector <4 x i32> %i.bse, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bsg = mul <4 x i32> %i.bsf, <i32 0, i32 1, i32 2, i32 3> ; 10 uses
  %i.bsh = insertelement <8 x i32> poison, i32 %i.aew, i64 0
  %i.bsi = shufflevector <8 x i32> %i.bsh, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.bsj = mul <8 x i32> %i.bsi, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 10 uses
  %i.bsk = insertelement <16 x i32> poison, i32 %i.aew, i64 0
  %i.bsl = shufflevector <16 x i32> %i.bsk, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.bsm = mul <16 x i32> %i.bsl, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 10 uses
  %i.bsn = icmp sgt i32 %i.cn, 15
  %i.bso = icmp sgt i32 %i.aew, 0                 ; 4 uses
  %i.bsp = shl i32 %i.aew, 4
  %i.bsq = sext i32 %i.bsp to i64                 ; 3 uses
  %i.bsr = shl i32 %i.aew, 3
  %i.bss = sext i32 %i.bsr to i64                 ; 3 uses
  %i.bst = shl i32 %i.aew, 2
  %i.bsu = sext i32 %i.bst to i64                 ; 2 uses
  %i.bsv = sext i32 %i.aew to i64                 ; 11 uses
  %i.bsw = shl i32 %i.aew, 1                      ; 2 uses
  %i.bsx = sext i32 %i.bsw to i64                 ; 3 uses
  %i.bsy = icmp slt i32 %i.aew, 1
  %i.bsz = add i32 %i.cn, -16                     ; 2 uses
  %i.bta = lshr i32 %i.bsz, 2
  %i.btb = and i32 %i.bta, 1073741820
  %narrow2435.i = add nuw nsw i32 %i.btb, 4
  %i.btc = zext nneg i32 %narrow2435.i to i64
  %i.btd = mul nsw i64 %i.bsq, %i.btc
  %i.bte = mul i32 %i.bsb, %.2.lcssa.i
  %i.btf = shl i32 %i.bsb, 1                      ; 2 uses
  %i.btg = mul i32 %i.brz, %i.bsb
  %i.bth = and i32 %i.bsz, -16
  %i.bti = add nuw i32 %i.bth, 16                 ; 4 uses
  %i.btj = add i32 %i.cn, -8
  %i.btk = sext i32 %.2.lcssa.i to i64
  %i.btl = sext i32 %i.ro to i64
  %i.btm = or disjoint i32 %i.bti, 7
  %i.btn = icmp slt i32 %i.btm, %i.cn
  %wide.trip.count2326.i = zext i32 %i.aew to i64 ; 26 uses
  %i.bto = shl nuw nsw i64 %wide.trip.count2326.i, 3
  %i.btp = shl nuw nsw i64 %wide.trip.count2326.i, 2 ; 5 uses
  %i.btq = shl nuw nsw i64 %wide.trip.count2326.i, 4
  %i.btr = shl nuw nsw i64 %i.bsv, 2              ; 3 uses
  %i.bts = add nuw nsw i64 %i.btr, %i.btp         ; 2 uses
  %i.btt = shl nsw i64 %i.bsx, 2
  %i.btu = add i32 %i.cn, -2
  %i.btv = add nsw i64 %wide.trip.count2326.i, -1 ; 3 uses
  %xtraiter1115 = and i64 %wide.trip.count2326.i, 3 ; 3 uses
  %i.btw = icmp ult i64 %i.btv, 3
  %unroll_iter1120 = and i64 %wide.trip.count2326.i, 2147483644
  %lcmp.mod1117.not = icmp eq i64 %xtraiter1115, 0
  %lcmp.mod1119 = icmp ne i64 %xtraiter1115, 0
  %xtraiter1123 = and i64 %wide.trip.count2326.i, 3 ; 3 uses
  %i.btx = icmp ult i64 %i.btv, 3
  %unroll_iter1128 = and i64 %wide.trip.count2326.i, 2147483644
  %lcmp.mod1125.not = icmp eq i64 %xtraiter1123, 0
  %lcmp.mod1127 = icmp ne i64 %xtraiter1123, 0
  %xtraiter1131 = and i64 %wide.trip.count2326.i, 3 ; 3 uses
  %i.bty = icmp ult i64 %i.btv, 3
  %unroll_iter1136 = and i64 %wide.trip.count2326.i, 2147483644
  %lcmp.mod1133.not = icmp eq i64 %xtraiter1131, 0
  %lcmp.mod1135 = icmp ne i64 %xtraiter1131, 0
  %min.iters.check786 = icmp ult i32 %i.aew, 4
  %stride.check = icmp slt i32 %i.bsw, 0
  %min.iters.check788 = icmp ult i32 %i.aew, 16
  %i.btz = and i64 %wide.trip.count2326.i, 12
  %n.vec790 = and i64 %wide.trip.count2326.i, 2147483632 ; 5 uses
  %i.bua = shl nuw nsw i64 %n.vec790, 4
  %cmp.n801 = icmp eq i64 %n.vec790, %wide.trip.count2326.i
  %min.epilog.iters.check805 = icmp eq i64 %i.btz, 0
  %n.vec808 = and i64 %wide.trip.count2326.i, 2147483644 ; 4 uses
  %i.bub = shl nuw nsw i64 %n.vec808, 4
  %cmp.n819 = icmp eq i64 %n.vec808, %wide.trip.count2326.i
  %xtraiter1138 = and i64 %wide.trip.count2326.i, 1
  %lcmp.mod1139.not = icmp eq i64 %xtraiter1138, 0
  %i.buc = add nsw i64 %wide.trip.count2326.i, -1
  %min.iters.check = icmp ult i32 %i.aew, 4
  %min.iters.check748 = icmp ult i32 %i.aew, 16
  %i.bud = and i64 %wide.trip.count2326.i, 12
  %n.vec = and i64 %wide.trip.count2326.i, 2147483632 ; 5 uses
  %i.bue = shl nuw nsw i64 %n.vec, 3
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count2326.i
  %min.epilog.iters.check = icmp eq i64 %i.bud, 0
  %n.vec750 = and i64 %wide.trip.count2326.i, 2147483644 ; 4 uses
  %i.buf = shl nuw nsw i64 %n.vec750, 3
  %cmp.n757 = icmp eq i64 %n.vec750, %wide.trip.count2326.i
  %xtraiter1140 = and i64 %wide.trip.count2326.i, 3 ; 2 uses
  %lcmp.mod1141.not = icmp eq i64 %xtraiter1140, 0
  br label %_ZN4ncnn3MatD2Ev.exit1327.i

_ZN4ncnn3MatD2Ev.exit1328.i:                      ; preds = %._crit_edge1853.split.i, %_ZN4ncnn3MatD2Ev.exit1328.lr.ph.i
  %indvars.iv2313.i = phi i64 [ %i.bgb, %_ZN4ncnn3MatD2Ev.exit1328.lr.ph.i ], [ %indvars.iv.next2314.i, %._crit_edge1853.split.i ] ; 2 uses
  %i.bug = phi i32 [ %i.bej, %_ZN4ncnn3MatD2Ev.exit1328.lr.ph.i ], [ %i.ccl, %._crit_edge1853.split.i ]
  %i.buh = phi <4 x i32> [ %i.bfx, %_ZN4ncnn3MatD2Ev.exit1328.lr.ph.i ], [ %i.cck, %._crit_edge1853.split.i ] ; 2 uses
  %i.bui = sext <4 x i32> %i.buh to <4 x i64>
  %i.buj = shl nsw <4 x i64> %i.bui, splat (i64 2) ; 4 uses
  %i.buk = load ptr, ptr %i.aeu, align 8, !tbaa !22 ; 5 uses
  %i.bul = trunc i64 %indvars.iv2313.i to i32     ; 6 uses
  %i.bum = mul i32 %i.bfs, %i.bul
  %i.bun = sext i32 %i.bum to i64
  %i.buo = getelementptr inbounds [4 x i8], ptr %i.buk, i64 %i.bun ; 2 uses
  %i.bup = add i32 %i.bul, 1
  %i.buq = mul i32 %i.bup, %i.bfs
  %i.bur = sext i32 %i.buq to i64
  %i.bus = getelementptr inbounds [4 x i8], ptr %i.buk, i64 %i.bur ; 2 uses
  %i.but = add i32 %i.bul, 2
  %i.buu = mul i32 %i.but, %i.bfs
  %i.buv = sext i32 %i.buu to i64
  %i.buw = getelementptr inbounds [4 x i8], ptr %i.buk, i64 %i.buv ; 2 uses
  %i.bux = mul i32 %i.bug, %i.bfs
  %i.buy = sext i32 %i.bux to i64
  %i.buz = getelementptr inbounds [4 x i8], ptr %i.buk, i64 %i.buy ; 2 uses
  %i.bva = lshr i32 %i.bul, 4
  %i.bvb = lshr i32 %i.bul, 3
  %i.bvc = and i32 %i.bvb, 1
  %i.bvd = add nuw nsw i32 %i.bvc, %i.bva
  %i.bve = lshr i32 %i.bul, 2
  %i.bvf = and i32 %i.bve, 1
  %i.bvg = add nuw nsw i32 %i.bvd, %i.bvf
  %i.bvh = load ptr, ptr %i.aev, align 8, !tbaa !22, !noalias !228
  %i.bvi = load i64, ptr %i.beo, align 8, !tbaa !23, !noalias !228
  %i.bvj = zext nneg i32 %i.bvg to i64
  %i.bvk = mul i64 %i.bvi, %i.bvj
  %i.bvl = load i64, ptr %i.bep, align 8, !tbaa !64, !noalias !228
  %i.bvm = mul i64 %i.bvk, %i.bvl
  %i.bvn = getelementptr inbounds nuw i8, ptr %i.bvh, i64 %i.bvm ; 4 uses
  br i1 %i.bez, label %.preheader1571.lr.ph.i, label %.preheader1574.i

.preheader1571.lr.ph.i:                           ; preds = %_ZN4ncnn3MatD2Ev.exit1328.i
  br i1 %i.bfa, label %.preheader1571.us.i, label %.preheader1574.thread.i

.preheader1571.us.i:                              ; preds = %.preheader1571.lr.ph.i, %._crit_edge1772.us.i
  %.012551779.us.i = phi i32 [ %i.bwq, %._crit_edge1772.us.i ], [ 0, %.preheader1571.lr.ph.i ]
  %.012601778.us.i = phi ptr [ %i.bwl, %._crit_edge1772.us.i ], [ %i.bvn, %.preheader1571.lr.ph.i ]
  %.012711777.us.i = phi ptr [ %i.bwp, %._crit_edge1772.us.i ], [ %i.buz, %.preheader1571.lr.ph.i ] ; 2 uses
  %.012741776.us.i = phi ptr [ %i.bwo, %._crit_edge1772.us.i ], [ %i.buw, %.preheader1571.lr.ph.i ] ; 2 uses
  %.012771775.us.i = phi ptr [ %i.bwn, %._crit_edge1772.us.i ], [ %i.bus, %.preheader1571.lr.ph.i ] ; 2 uses
  %.012801774.us.i = phi ptr [ %i.bwm, %._crit_edge1772.us.i ], [ %i.buo, %.preheader1571.lr.ph.i ] ; 2 uses
  br label %bb.lh

bb.lh:                                            ; preds = %bb.lh, %.preheader1571.us.i
  %indvars.iv2281.i = phi i64 [ 0, %.preheader1571.us.i ], [ %indvars.iv.next2282.i, %bb.lh ] ; 5 uses
  %.112611770.us.i = phi ptr [ %.012601778.us.i, %.preheader1571.us.i ], [ %i.bwl, %bb.lh ] ; 5 uses
  %i.bvo = getelementptr inbounds nuw [4 x i8], ptr %.012801774.us.i, i64 %indvars.iv2281.i
  %i.bvp = getelementptr inbounds nuw [4 x i8], ptr %.012771775.us.i, i64 %indvars.iv2281.i
  %i.bvq = getelementptr inbounds nuw [4 x i8], ptr %.012741776.us.i, i64 %indvars.iv2281.i
  %i.bvr = getelementptr inbounds nuw [4 x i8], ptr %.012711777.us.i, i64 %indvars.iv2281.i
  %i.bvs = call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.bvo, <16 x i32> %i.bey, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.bvt = call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.bvp, <16 x i32> %i.bey, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.bvu = call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.bvq, <16 x i32> %i.bey, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.bvv = call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.bvr, <16 x i32> %i.bey, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.bvw = shufflevector <16 x float> %i.bvs, <16 x float> %i.bvt, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.bvx = shufflevector <16 x float> %i.bvs, <16 x float> %i.bvt, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bvy = shufflevector <16 x float> %i.bvu, <16 x float> %i.bvv, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.bvz = shufflevector <16 x float> %i.bvu, <16 x float> %i.bvv, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bwa = shufflevector <16 x float> %i.bvw, <16 x float> %i.bvy, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 8, i32 9, i32 24, i32 25, i32 2, i32 3, i32 18, i32 19, i32 10, i32 11, i32 26, i32 27> ; 2 uses
  %i.bwb = shufflevector <16 x float> %i.bvx, <16 x float> %i.bvz, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 8, i32 9, i32 24, i32 25, i32 2, i32 3, i32 18, i32 19, i32 10, i32 11, i32 26, i32 27> ; 2 uses
  %i.bwc = shufflevector <16 x float> %i.bvw, <16 x float> %i.bvy, <16 x i32> <i32 4, i32 5, i32 20, i32 21, i32 12, i32 13, i32 28, i32 29, i32 6, i32 7, i32 22, i32 23, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.bwd = shufflevector <16 x float> %i.bvx, <16 x float> %i.bvz, <16 x i32> <i32 4, i32 5, i32 20, i32 21, i32 12, i32 13, i32 28, i32 29, i32 6, i32 7, i32 22, i32 23, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.bwe = shufflevector <16 x float> %i.bwa, <16 x float> %i.bwb, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.bwf = shufflevector <16 x float> %i.bwc, <16 x float> %i.bwd, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.bwg = shufflevector <16 x float> %i.bwa, <16 x float> %i.bwb, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.bwh = shufflevector <16 x float> %i.bwc, <16 x float> %i.bwd, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  store <16 x float> %i.bwe, ptr %.112611770.us.i, align 1, !tbaa !85
  %i.bwi = getelementptr inbounds nuw i8, ptr %.112611770.us.i, i64 64
  store <16 x float> %i.bwf, ptr %i.bwi, align 1, !tbaa !85
  %i.bwj = getelementptr inbounds nuw i8, ptr %.112611770.us.i, i64 128
  store <16 x float> %i.bwg, ptr %i.bwj, align 1, !tbaa !85
  %i.bwk = getelementptr inbounds nuw i8, ptr %.112611770.us.i, i64 192
  store <16 x float> %i.bwh, ptr %i.bwk, align 1, !tbaa !85
  %i.bwl = getelementptr inbounds nuw i8, ptr %.112611770.us.i, i64 256 ; 3 uses
  %indvars.iv.next2282.i = add nuw nsw i64 %indvars.iv2281.i, 1 ; 2 uses
  %exitcond2285.not.i = icmp eq i64 %indvars.iv.next2282.i, %wide.trip.count2284.i
  br i1 %exitcond2285.not.i, label %._crit_edge1772.us.i, label %bb.lh, !llvm.loop !152

._crit_edge1772.us.i:                             ; preds = %bb.lh
  %i.bwm = getelementptr inbounds nuw [4 x i8], ptr %.012801774.us.i, i64 %i.bfc ; 2 uses
  %i.bwn = getelementptr inbounds nuw [4 x i8], ptr %.012771775.us.i, i64 %i.bfc ; 2 uses
  %i.bwo = getelementptr inbounds nuw [4 x i8], ptr %.012741776.us.i, i64 %i.bfc ; 2 uses
  %i.bwp = getelementptr inbounds nuw [4 x i8], ptr %.012711777.us.i, i64 %i.bfc ; 2 uses
  %i.bwq = add nuw nsw i32 %.012551779.us.i, 16   ; 2 uses
  %i.bwr = or disjoint i32 %i.bwq, 15
  %i.bws = icmp slt i32 %i.bwr, %i.cn
  br i1 %i.bws, label %.preheader1571.us.i, label %.preheader1574.i, !llvm.loop !153

.preheader1574.i:                                 ; preds = %._crit_edge1772.us.i, %_ZN4ncnn3MatD2Ev.exit1328.i
  %.01280.lcssa.i = phi ptr [ %i.buo, %_ZN4ncnn3MatD2Ev.exit1328.i ], [ %i.bwm, %._crit_edge1772.us.i ] ; 3 uses
  %.01277.lcssa.i = phi ptr [ %i.bus, %_ZN4ncnn3MatD2Ev.exit1328.i ], [ %i.bwn, %._crit_edge1772.us.i ] ; 3 uses
  %.01274.lcssa.i = phi ptr [ %i.buw, %_ZN4ncnn3MatD2Ev.exit1328.i ], [ %i.bwo, %._crit_edge1772.us.i ] ; 3 uses
  %.01271.lcssa.i = phi ptr [ %i.buz, %_ZN4ncnn3MatD2Ev.exit1328.i ], [ %i.bwp, %._crit_edge1772.us.i ] ; 3 uses
  %.01260.lcssa.i = phi ptr [ %i.bvn, %_ZN4ncnn3MatD2Ev.exit1328.i ], [ %i.bwl, %._crit_edge1772.us.i ] ; 3 uses
  %.01255.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit1328.i ], [ %i.bfz, %._crit_edge1772.us.i ] ; 4 uses
  %i.bwt = or disjoint i32 %.01255.lcssa.i, 7
  %i.bwu = icmp slt i32 %i.bwt, %i.cn
  br i1 %i.bwu, label %.preheader1570.lr.ph.i, label %.preheader1573.i

.preheader1574.thread.i:                          ; preds = %.preheader1571.lr.ph.i
  %scevgep2268.i = getelementptr i8, ptr %i.buk, i64 %i.bfr ; 4 uses
  %i.bwv = extractelement <4 x i64> %i.buj, i64 0
  %scevgep2271.i = getelementptr i8, ptr %scevgep2268.i, i64 %i.bwv ; 2 uses
  %i.bww = extractelement <4 x i64> %i.buj, i64 1
  %scevgep2274.i = getelementptr i8, ptr %scevgep2268.i, i64 %i.bww ; 2 uses
  %i.bwx = extractelement <4 x i64> %i.buj, i64 2
  %scevgep2277.i = getelementptr i8, ptr %scevgep2268.i, i64 %i.bwx ; 2 uses
  %i.bwy = extractelement <4 x i64> %i.buj, i64 3
  %scevgep2280.i = getelementptr i8, ptr %scevgep2268.i, i64 %i.bwy ; 2 uses
  br i1 %i.bge, label %.preheader1570.preheader.i, label %.preheader1573.i

.preheader1570.lr.ph.i:                           ; preds = %.preheader1574.i
  br i1 %i.bfa, label %.preheader1570.us.i, label %.preheader1570.preheader.i

.preheader1570.preheader.i:                       ; preds = %.preheader1570.lr.ph.i, %.preheader1574.thread.i
  %.01280.lcssa25222539.i = phi ptr [ %.01280.lcssa.i, %.preheader1570.lr.ph.i ], [ %scevgep2271.i, %.preheader1574.thread.i ]
  %.01277.lcssa25232538.i = phi ptr [ %.01277.lcssa.i, %.preheader1570.lr.ph.i ], [ %scevgep2274.i, %.preheader1574.thread.i ]
  %.01274.lcssa25242537.i = phi ptr [ %.01274.lcssa.i, %.preheader1570.lr.ph.i ], [ %scevgep2277.i, %.preheader1574.thread.i ]
  %.01271.lcssa25252536.i = phi ptr [ %.01271.lcssa.i, %.preheader1570.lr.ph.i ], [ %scevgep2280.i, %.preheader1574.thread.i ]
  %.01260.lcssa25262535.i = phi ptr [ %.01260.lcssa.i, %.preheader1570.lr.ph.i ], [ %i.bvn, %.preheader1574.thread.i ]
  %.01255.lcssa25272534.i = phi i32 [ %.01255.lcssa.i, %.preheader1570.lr.ph.i ], [ %i.bfz, %.preheader1574.thread.i ] ; 2 uses
  %i.bwz = sub i32 %i.bga, %.01255.lcssa25272534.i ; 2 uses
  %i.bxa = lshr i32 %i.bwz, 1
  %i.bxb = and i32 %i.bxa, 2147483644
  %narrow2434.i = add nuw i32 %i.bxb, 4
  %i.bxc = zext i32 %narrow2434.i to i64
  %i.bxd = mul nsw i64 %i.bxc, %i.bfe             ; 4 uses
  %scevgep2286.i = getelementptr i8, ptr %.01280.lcssa25222539.i, i64 %i.bxd
  %scevgep2287.i = getelementptr i8, ptr %.01277.lcssa25232538.i, i64 %i.bxd
  %scevgep2288.i = getelementptr i8, ptr %.01274.lcssa25242537.i, i64 %i.bxd
  %scevgep2289.i = getelementptr i8, ptr %.01271.lcssa25252536.i, i64 %i.bxd
  %i.bxe = add i32 %.01255.lcssa25272534.i, 8
  %i.bxf = and i32 %i.bwz, -8
  %i.bxg = add i32 %i.bxe, %i.bxf
  br label %.preheader1573.i

.preheader1570.us.i:                              ; preds = %.preheader1570.lr.ph.i, %._crit_edge1794.us.i
  %.112561801.us.i = phi i32 [ %i.byf, %._crit_edge1794.us.i ], [ %.01255.lcssa.i, %.preheader1570.lr.ph.i ]
  %.212621800.us.i = phi ptr [ %i.bya, %._crit_edge1794.us.i ], [ %.01260.lcssa.i, %.preheader1570.lr.ph.i ]
  %.112721799.us.i = phi ptr [ %i.bye, %._crit_edge1794.us.i ], [ %.01271.lcssa.i, %.preheader1570.lr.ph.i ] ; 2 uses
  %.112751798.us.i = phi ptr [ %i.byd, %._crit_edge1794.us.i ], [ %.01274.lcssa.i, %.preheader1570.lr.ph.i ] ; 2 uses
  %.112781797.us.i = phi ptr [ %i.byc, %._crit_edge1794.us.i ], [ %.01277.lcssa.i, %.preheader1570.lr.ph.i ] ; 2 uses
  %.112811796.us.i = phi ptr [ %i.byb, %._crit_edge1794.us.i ], [ %.01280.lcssa.i, %.preheader1570.lr.ph.i ] ; 2 uses
  br label %bb.li

bb.li:                                            ; preds = %bb.li, %.preheader1570.us.i
  %indvars.iv2290.i = phi i64 [ 0, %.preheader1570.us.i ], [ %indvars.iv.next2291.i, %bb.li ] ; 5 uses
end_hunk_0
begin_hunk_1_@_ZN4ncnn22Convolution_x86_avx51215create_pipelineERKNS_6OptionE:bb.a
  %i.cad = getelementptr inbounds nuw [4 x i8], ptr %i.cab, i64 %i.bfj
  %i.cae = getelementptr inbounds nuw i8, ptr %.712671834.us.i, i64 80
  %i.caf = call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.cad, <4 x i32> %i.bfi, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <4 x float> %i.caf, ptr %i.cae, align 16, !tbaa !85
  %i.cag = getelementptr inbounds nuw i8, ptr %.712671834.us.i, i64 96
  %i.cah = getelementptr inbounds nuw [4 x i8], ptr %.312831838.us.i, i64 %indvars.iv2302.i
  %i.cai = getelementptr inbounds nuw i8, ptr %i.cah, i64 12 ; 2 uses
  %i.caj = call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.cai, <4 x i32> %i.bfi, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <4 x float> %i.caj, ptr %i.cag, align 16, !tbaa !85
  %i.cak = getelementptr inbounds nuw [4 x i8], ptr %i.cai, i64 %i.bfj
  %i.cal = getelementptr inbounds nuw i8, ptr %.712671834.us.i, i64 112
  %i.cam = call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.cak, <4 x i32> %i.bfi, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <4 x float> %i.cam, ptr %i.cal, align 16, !tbaa !85
  %i.can = getelementptr inbounds nuw i8, ptr %.712671834.us.i, i64 128 ; 3 uses
  %indvars.iv.next2303.i.3 = add nuw nsw i64 %indvars.iv2302.i, 4 ; 2 uses
  %niter1105.next.3 = add i64 %niter1105, 4       ; 2 uses
  %niter1105.ncmp.3 = icmp eq i64 %niter1105.next.3, %unroll_iter1104
  br i1 %niter1105.ncmp.3, label %._crit_edge1836.us.i.unr-lcssa, label %.preheader1568.us.i.new, !llvm.loop !158

._crit_edge1836.us.i.unr-lcssa:                   ; preds = %.preheader1568.us.i.new
  br i1 %lcmp.mod1101.not, label %._crit_edge1836.us.i, label %.epil.preheader1098

.epil.preheader1098:                              ; preds = %._crit_edge1836.us.i.unr-lcssa, %.preheader1568.us.i
  %indvars.iv2302.i.epil.init = phi i64 [ 0, %.preheader1568.us.i ], [ %indvars.iv.next2303.i.3, %._crit_edge1836.us.i.unr-lcssa ]
  %.712671834.us.i.epil.init = phi ptr [ %.612661839.us.i, %.preheader1568.us.i ], [ %i.can, %._crit_edge1836.us.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1103)
  br label %bb.lk

bb.lk:                                            ; preds = %bb.lk, %.epil.preheader1098
  %indvars.iv2302.i.epil = phi i64 [ %indvars.iv2302.i.epil.init, %.epil.preheader1098 ], [ %indvars.iv.next2303.i.epil, %bb.lk ] ; 2 uses
  %.712671834.us.i.epil = phi ptr [ %.712671834.us.i.epil.init, %.epil.preheader1098 ], [ %i.cat, %bb.lk ] ; 3 uses
  %epil.iter1100 = phi i64 [ 0, %.epil.preheader1098 ], [ %epil.iter1100.next, %bb.lk ]
  %i.cao = getelementptr inbounds nuw [4 x i8], ptr %.312831838.us.i, i64 %indvars.iv2302.i.epil ; 2 uses
  %i.cap = call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %i.cao, <4 x i32> %i.bfi, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <4 x float> %i.cap, ptr %.712671834.us.i.epil, align 16, !tbaa !85
  %i.caq = getelementptr inbounds nuw [4 x i8], ptr %i.cao, i64 %i.bfj
  %i.car = getelementptr inbounds nuw i8, ptr %.712671834.us.i.epil, i64 16
  %i.cas = call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %i.caq, <4 x i32> %i.bfi, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <4 x float> %i.cas, ptr %i.car, align 16, !tbaa !85
  %i.cat = getelementptr inbounds nuw i8, ptr %.712671834.us.i.epil, i64 32 ; 2 uses
  %indvars.iv.next2303.i.epil = add nuw nsw i64 %indvars.iv2302.i.epil, 1
  %epil.iter1100.next = add i64 %epil.iter1100, 1 ; 2 uses
  %epil.iter1100.cmp.not = icmp eq i64 %epil.iter1100.next, %xtraiter1099
  br i1 %epil.iter1100.cmp.not, label %._crit_edge1836.us.i, label %bb.lk, !llvm.loop !159

._crit_edge1836.us.i:                             ; preds = %bb.lk, %._crit_edge1836.us.i.unr-lcssa
  %.lcssa1022 = phi ptr [ %i.can, %._crit_edge1836.us.i.unr-lcssa ], [ %i.cat, %bb.lk ] ; 2 uses
  %i.cau = getelementptr inbounds nuw [4 x i8], ptr %.312831838.us.i, i64 %i.bfl ; 2 uses
  %i.cav = add nuw nsw i32 %.312581840.us.i, 2    ; 3 uses
  %i.caw = or disjoint i32 %i.cav, 1
  %i.cax = icmp slt i32 %i.caw, %i.cn
  br i1 %i.cax, label %.preheader1568.us.i, label %.preheader1572.i, !llvm.loop !160

.preheader1572.i:                                 ; preds = %._crit_edge1836.us.i, %._crit_edge1824.i
  %.31283.lcssa.i = phi ptr [ %.21282.lcssa.i, %._crit_edge1824.i ], [ %i.cau, %._crit_edge1836.us.i ] ; 9 uses
  %.61266.lcssa.i = phi ptr [ %.41264.lcssa.i, %._crit_edge1824.i ], [ %.lcssa1022, %._crit_edge1836.us.i ]
  %.31258.lcssa.i = phi i32 [ %.21257.lcssa.i, %._crit_edge1824.i ], [ %i.cav, %._crit_edge1836.us.i ] ; 2 uses
  %i.cay = icmp sge i32 %.31258.lcssa.i, %i.cn
  %brmerge2003.i = or i1 %i.bfm, %i.cay
  br i1 %brmerge2003.i, label %._crit_edge1853.split.i, label %.preheader1567.i

.preheader1567.i:                                 ; preds = %.preheader1572.i, %._crit_edge1849.i
  %.412591852.i = phi i32 [ %i.cbc, %._crit_edge1849.i ], [ %.31258.lcssa.i, %.preheader1572.i ]
  %.912691851.i = phi ptr [ %.lcssa1025, %._crit_edge1849.i ], [ %.61266.lcssa.i, %.preheader1572.i ] ; 2 uses
  br i1 %i.bgj, label %.epil.preheader1106, label %.preheader1567.i.new

._crit_edge1849.i.unr-lcssa:                      ; preds = %.preheader1567.i.new
  br i1 %lcmp.mod1109.not, label %._crit_edge1849.i, label %.epil.preheader1106

.epil.preheader1106:                              ; preds = %._crit_edge1849.i.unr-lcssa, %.preheader1567.i
  %indvars.iv2307.i.epil.init = phi i64 [ 0, %.preheader1567.i ], [ %indvars.iv.next2308.i.7, %._crit_edge1849.i.unr-lcssa ]
  %.1012701847.i.epil.init = phi ptr [ %.912691851.i, %.preheader1567.i ], [ %i.cch, %._crit_edge1849.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1111)
  br label %bb.ll

bb.ll:                                            ; preds = %bb.ll, %.epil.preheader1106
  %indvars.iv2307.i.epil = phi i64 [ %indvars.iv2307.i.epil.init, %.epil.preheader1106 ], [ %indvars.iv.next2308.i.epil, %bb.ll ] ; 2 uses
  %.1012701847.i.epil = phi ptr [ %.1012701847.i.epil.init, %.epil.preheader1106 ], [ %i.cbb, %bb.ll ] ; 2 uses
  %epil.iter1108 = phi i64 [ 0, %.epil.preheader1106 ], [ %epil.iter1108.next, %bb.ll ]
  %i.caz = getelementptr inbounds nuw [4 x i8], ptr %.31283.lcssa.i, i64 %indvars.iv2307.i.epil
  %i.cba = call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %i.caz, <4 x i32> %i.bfi, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <4 x float> %i.cba, ptr %.1012701847.i.epil, align 16, !tbaa !85
  %i.cbb = getelementptr inbounds nuw i8, ptr %.1012701847.i.epil, i64 16 ; 2 uses
  %indvars.iv.next2308.i.epil = add nuw nsw i64 %indvars.iv2307.i.epil, 1
  %epil.iter1108.next = add i64 %epil.iter1108, 1 ; 2 uses
  %epil.iter1108.cmp.not = icmp eq i64 %epil.iter1108.next, %xtraiter1107
  br i1 %epil.iter1108.cmp.not, label %._crit_edge1849.i, label %bb.ll, !llvm.loop !161

._crit_edge1849.i:                                ; preds = %bb.ll, %._crit_edge1849.i.unr-lcssa
  %.lcssa1025 = phi ptr [ %i.cch, %._crit_edge1849.i.unr-lcssa ], [ %i.cbb, %bb.ll ]
  %i.cbc = add nuw nsw i32 %.412591852.i, 1       ; 2 uses
  %exitcond2312.not.i = icmp eq i32 %i.cbc, %i.cn
  br i1 %exitcond2312.not.i, label %._crit_edge1853.split.i, label %.preheader1567.i, !llvm.loop !162

.preheader1567.i.new:                             ; preds = %.preheader1567.i, %.preheader1567.i.new
  %indvars.iv2307.i = phi i64 [ %indvars.iv.next2308.i.7, %.preheader1567.i.new ], [ 0, %.preheader1567.i ] ; 9 uses
  %.1012701847.i = phi ptr [ %i.cch, %.preheader1567.i.new ], [ %.912691851.i, %.preheader1567.i ] ; 9 uses
  %niter1113 = phi i64 [ %niter1113.next.7, %.preheader1567.i.new ], [ 0, %.preheader1567.i ]
  %i.cbd = getelementptr inbounds nuw [4 x i8], ptr %.31283.lcssa.i, i64 %indvars.iv2307.i
  %i.cbe = call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %i.cbd, <4 x i32> %i.bfi, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <4 x float> %i.cbe, ptr %.1012701847.i, align 16, !tbaa !85
  %i.cbf = getelementptr inbounds nuw i8, ptr %.1012701847.i, i64 16
  %i.cbg = getelementptr inbounds nuw [4 x i8], ptr %.31283.lcssa.i, i64 %indvars.iv2307.i
  %i.cbh = getelementptr inbounds nuw i8, ptr %i.cbg, i64 4
  %i.cbi = call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.cbh, <4 x i32> %i.bfi, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <4 x float> %i.cbi, ptr %i.cbf, align 16, !tbaa !85
  %i.cbj = getelementptr inbounds nuw i8, ptr %.1012701847.i, i64 32
  %i.cbk = getelementptr inbounds nuw [4 x i8], ptr %.31283.lcssa.i, i64 %indvars.iv2307.i
  %i.cbl = getelementptr inbounds nuw i8, ptr %i.cbk, i64 8
  %i.cbm = call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.cbl, <4 x i32> %i.bfi, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <4 x float> %i.cbm, ptr %i.cbj, align 16, !tbaa !85
  %i.cbn = getelementptr inbounds nuw i8, ptr %.1012701847.i, i64 48
  %i.cbo = getelementptr inbounds nuw [4 x i8], ptr %.31283.lcssa.i, i64 %indvars.iv2307.i
  %i.cbp = getelementptr inbounds nuw i8, ptr %i.cbo, i64 12
  %i.cbq = call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.cbp, <4 x i32> %i.bfi, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <4 x float> %i.cbq, ptr %i.cbn, align 16, !tbaa !85
  %i.cbr = getelementptr inbounds nuw i8, ptr %.1012701847.i, i64 64
  %i.cbs = getelementptr inbounds nuw [4 x i8], ptr %.31283.lcssa.i, i64 %indvars.iv2307.i
  %i.cbt = getelementptr inbounds nuw i8, ptr %i.cbs, i64 16
  %i.cbu = call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.cbt, <4 x i32> %i.bfi, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <4 x float> %i.cbu, ptr %i.cbr, align 16, !tbaa !85
  %i.cbv = getelementptr inbounds nuw i8, ptr %.1012701847.i, i64 80
  %i.cbw = getelementptr inbounds nuw [4 x i8], ptr %.31283.lcssa.i, i64 %indvars.iv2307.i
  %i.cbx = getelementptr inbounds nuw i8, ptr %i.cbw, i64 20
  %i.cby = call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.cbx, <4 x i32> %i.bfi, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <4 x float> %i.cby, ptr %i.cbv, align 16, !tbaa !85
  %i.cbz = getelementptr inbounds nuw i8, ptr %.1012701847.i, i64 96
  %i.cca = getelementptr inbounds nuw [4 x i8], ptr %.31283.lcssa.i, i64 %indvars.iv2307.i
  %i.ccb = getelementptr inbounds nuw i8, ptr %i.cca, i64 24
  %i.ccc = call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.ccb, <4 x i32> %i.bfi, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <4 x float> %i.ccc, ptr %i.cbz, align 16, !tbaa !85
  %i.ccd = getelementptr inbounds nuw i8, ptr %.1012701847.i, i64 112
  %i.cce = getelementptr inbounds nuw [4 x i8], ptr %.31283.lcssa.i, i64 %indvars.iv2307.i
  %i.ccf = getelementptr inbounds nuw i8, ptr %i.cce, i64 28
  %i.ccg = call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.ccf, <4 x i32> %i.bfi, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <4 x float> %i.ccg, ptr %i.ccd, align 16, !tbaa !85
  %i.cch = getelementptr inbounds nuw i8, ptr %.1012701847.i, i64 128 ; 3 uses
  %indvars.iv.next2308.i.7 = add nuw nsw i64 %indvars.iv2307.i, 8 ; 2 uses
  %niter1113.next.7 = add i64 %niter1113, 8       ; 2 uses
  %niter1113.ncmp.7 = icmp eq i64 %niter1113.next.7, %unroll_iter1112
  br i1 %niter1113.ncmp.7, label %._crit_edge1849.i.unr-lcssa, label %.preheader1567.i.new, !llvm.loop !163

._crit_edge1853.split.i:                          ; preds = %._crit_edge1849.i, %.preheader1572.i, %.preheader1568.lr.ph.i, %.preheader1569.lr.ph.i
  %indvars.iv.next2314.i = add nuw nsw i64 %indvars.iv2313.i, 4 ; 3 uses
  %i.cci = or disjoint i64 %indvars.iv.next2314.i, 3 ; 2 uses
  %i.ccj = icmp slt i64 %i.cci, %i.bgc
  %i.cck = add <4 x i32> %i.buh, %i.bgg
  %i.ccl = trunc nuw nsw i64 %i.cci to i32
  br i1 %i.ccj, label %_ZN4ncnn3MatD2Ev.exit1328.i, label %.preheader1566.loopexit.i, !llvm.loop !164

.preheader1556.loopexit.i:                        ; preds = %._crit_edge1930.split.i
  %i.ccm = trunc nsw i64 %indvars.iv.next2356.i to i32
  br label %.preheader1556.i

.preheader1556.i:                                 ; preds = %.preheader1556.loopexit.i, %.preheader1566.i
  %.3.lcssa.i = phi i32 [ %.2.lcssa.i, %.preheader1566.i ], [ %i.ccm, %.preheader1556.loopexit.i ] ; 3 uses
  %i.ccn = icmp slt i32 %.3.lcssa.i, %i.ro
  br i1 %i.ccn, label %_ZN4ncnn3MatD2Ev.exit.lr.ph.i, label %_ZN4ncnnL35convolution_transform_kernel_packedERKNS_3MatERS0_iiii.exit

_ZN4ncnn3MatD2Ev.exit.lr.ph.i:                    ; preds = %.preheader1556.i
  %i.cco = mul i32 %i.aew, %i.cn                  ; 3 uses
  %i.ccp = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.ccq = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.ccr = insertelement <4 x i32> poison, i32 %i.aew, i64 0
  %i.ccs = shufflevector <4 x i32> %i.ccr, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.cct = mul <4 x i32> %i.ccs, <i32 0, i32 1, i32 2, i32 3> ; 9 uses
  %i.ccu = insertelement <8 x i32> poison, i32 %i.aew, i64 0
  %i.ccv = shufflevector <8 x i32> %i.ccu, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.ccw = mul <8 x i32> %i.ccv, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 9 uses
  %i.ccx = insertelement <16 x i32> poison, i32 %i.aew, i64 0
  %i.ccy = shufflevector <16 x i32> %i.ccx, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.ccz = mul <16 x i32> %i.ccy, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 9 uses
  %i.cda = icmp sgt i32 %i.cn, 15
  %i.cdb = icmp sgt i32 %i.aew, 0                 ; 4 uses
  %i.cdc = shl i32 %i.aew, 4
  %i.cdd = sext i32 %i.cdc to i64                 ; 2 uses
  %i.cde = shl i32 %i.aew, 3
  %i.cdf = sext i32 %i.cde to i64                 ; 2 uses
  %i.cdg = shl i32 %i.aew, 2
  %i.cdh = sext i32 %i.cdg to i64
  %i.cdi = sext i32 %i.aew to i64                 ; 8 uses
  %i.cdj = shl i32 %i.aew, 1                      ; 2 uses
  %i.cdk = sext i32 %i.cdj to i64                 ; 2 uses
  %i.cdl = icmp slt i32 %i.aew, 1
  %i.cdm = add i32 %i.cn, -16                     ; 2 uses
  %i.cdn = lshr i32 %i.cdm, 2
  %i.cdo = and i32 %i.cdn, 1073741820
  %narrow2437.i = add nuw nsw i32 %i.cdo, 4
  %i.cdp = zext nneg i32 %narrow2437.i to i64
  %i.cdq = mul nsw i64 %i.cdd, %i.cdp
  %i.cdr = mul i32 %i.cco, %.3.lcssa.i
  %i.cds = and i32 %i.cdm, -16
  %i.cdt = add nuw i32 %i.cds, 16                 ; 4 uses
  %i.cdu = add i32 %i.cn, -8
  %i.cdv = sext i32 %.3.lcssa.i to i64
  %wide.trip.count2394.i = sext i32 %i.ro to i64
  %i.cdw = or disjoint i32 %i.cdt, 7
  %i.cdx = icmp slt i32 %i.cdw, %i.cn
  %wide.trip.count2365.i = zext i32 %i.aew to i64 ; 25 uses
  %i.cdy = shl nuw nsw i64 %wide.trip.count2365.i, 3
  %i.cdz = shl nuw nsw i64 %i.cdi, 2              ; 2 uses
  %i.cea = shl nuw nsw i64 %wide.trip.count2365.i, 2 ; 2 uses
  %i.ceb = shl nsw i64 %i.cdk, 2
  %i.cec = add i32 %i.cn, -2
  %i.ced = add nsw i64 %wide.trip.count2365.i, -1 ; 3 uses
  %xtraiter1143 = and i64 %wide.trip.count2365.i, 7 ; 3 uses
  %i.cee = icmp ult i64 %i.ced, 7
  %unroll_iter1148 = and i64 %wide.trip.count2365.i, 2147483640
  %lcmp.mod1145.not = icmp eq i64 %xtraiter1143, 0
  %lcmp.mod1147 = icmp ne i64 %xtraiter1143, 0
  %xtraiter1151 = and i64 %wide.trip.count2365.i, 7 ; 3 uses
  %i.cef = icmp ult i64 %i.ced, 7
  %unroll_iter1156 = and i64 %wide.trip.count2365.i, 2147483640
  %lcmp.mod1153.not = icmp eq i64 %xtraiter1151, 0
  %lcmp.mod1155 = icmp ne i64 %xtraiter1151, 0
  %xtraiter1159 = and i64 %wide.trip.count2365.i, 7 ; 3 uses
  %i.ceg = icmp ult i64 %i.ced, 7
  %unroll_iter1164 = and i64 %wide.trip.count2365.i, 2147483640
  %lcmp.mod1161.not = icmp eq i64 %xtraiter1159, 0
  %lcmp.mod1163 = icmp ne i64 %xtraiter1159, 0
  %min.iters.check871 = icmp ult i32 %i.aew, 8
  %stride.check866 = icmp slt i32 %i.cdj, 0
  %min.iters.check873 = icmp ult i32 %i.aew, 32
  %i.ceh = and i64 %wide.trip.count2365.i, 24
  %n.vec875 = and i64 %wide.trip.count2365.i, 2147483616 ; 5 uses
  %i.cei = shl nuw nsw i64 %n.vec875, 3
  %cmp.n888 = icmp eq i64 %n.vec875, %wide.trip.count2365.i
  %min.epilog.iters.check892 = icmp eq i64 %i.ceh, 0
  %n.vec895 = and i64 %wide.trip.count2365.i, 2147483640 ; 4 uses
  %i.cej = shl nuw nsw i64 %n.vec895, 3
  %cmp.n904 = icmp eq i64 %n.vec895, %wide.trip.count2365.i
  %xtraiter1166 = and i64 %wide.trip.count2365.i, 3 ; 2 uses
  %lcmp.mod1167.not = icmp eq i64 %xtraiter1166, 0
  %min.iters.check825 = icmp ult i32 %i.aew, 8
  %min.iters.check827 = icmp ult i32 %i.aew, 64
  %i.cek = and i64 %wide.trip.count2365.i, 56
  %n.vec829 = and i64 %wide.trip.count2365.i, 2147483584 ; 5 uses
  %i.cel = shl nuw nsw i64 %n.vec829, 2
  %cmp.n839 = icmp eq i64 %n.vec829, %wide.trip.count2365.i
  %min.epilog.iters.check843 = icmp eq i64 %i.cek, 0
  %n.vec846 = and i64 %wide.trip.count2365.i, 2147483640 ; 4 uses
  %i.cem = shl nuw nsw i64 %n.vec846, 2
  %cmp.n853 = icmp eq i64 %n.vec846, %wide.trip.count2365.i
  %xtraiter1169 = and i64 %wide.trip.count2365.i, 7 ; 2 uses
  %lcmp.mod1170.not = icmp eq i64 %xtraiter1169, 0
  br label %_ZN4ncnn3MatD2Ev.exit.i227

_ZN4ncnn3MatD2Ev.exit1327.i:                      ; preds = %._crit_edge1930.split.i, %_ZN4ncnn3MatD2Ev.exit1327.lr.ph.i
  %indvars.iv2355.i = phi i64 [ %i.btk, %_ZN4ncnn3MatD2Ev.exit1327.lr.ph.i ], [ %indvars.iv.next2356.i, %._crit_edge1930.split.i ] ; 2 uses
  %indvars.iv2320.i = phi i32 [ %i.btg, %_ZN4ncnn3MatD2Ev.exit1327.lr.ph.i ], [ %indvars.iv.next2321.i, %._crit_edge1930.split.i ] ; 2 uses
  %indvars.iv2317.i = phi i32 [ %i.bte, %_ZN4ncnn3MatD2Ev.exit1327.lr.ph.i ], [ %indvars.iv.next2318.i, %._crit_edge1930.split.i ] ; 2 uses
  %i.cen = phi i32 [ %i.brz, %_ZN4ncnn3MatD2Ev.exit1327.lr.ph.i ], [ %i.coy, %._crit_edge1930.split.i ]
  %i.ceo = sext i32 %indvars.iv2317.i to i64
  %i.cep = shl nsw i64 %i.ceo, 2
  %i.ceq = sext i32 %indvars.iv2320.i to i64
  %i.cer = shl nsw i64 %i.ceq, 2
  %i.ces = load ptr, ptr %i.aeu, align 8, !tbaa !22 ; 3 uses
  %i.cet = trunc nsw i64 %indvars.iv2355.i to i32 ; 2 uses
  %i.ceu = mul i32 %i.bsb, %i.cet
  %i.cev = sext i32 %i.ceu to i64
  %i.cew = getelementptr inbounds [4 x i8], ptr %i.ces, i64 %i.cev ; 2 uses
  %i.cex = mul i32 %i.cen, %i.bsb
  %i.cey = sext i32 %i.cex to i64
  %i.cez = getelementptr inbounds [4 x i8], ptr %i.ces, i64 %i.cey ; 2 uses
  %i.cfa = insertelement <4 x i32> poison, i32 %i.cet, i64 0
  %i.cfb = shufflevector <4 x i32> %i.cfa, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.cfc = lshr <4 x i32> %i.cfb, <i32 3, i32 2, i32 1, i32 4>
  %i.cfd = and <4 x i32> %i.cfc, <i32 1, i32 1, i32 1, i32 -1>
  %i.cfe = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.cfd)
  %i.cff = load ptr, ptr %i.aev, align 8, !tbaa !22, !noalias !229
  %i.cfg = load i64, ptr %i.bsc, align 8, !tbaa !23, !noalias !229
  %i.cfh = zext nneg i32 %i.cfe to i64
  %i.cfi = mul i64 %i.cfg, %i.cfh
  %i.cfj = load i64, ptr %i.bsd, align 8, !tbaa !64, !noalias !229
  %i.cfk = mul i64 %i.cfi, %i.cfj
  %i.cfl = getelementptr inbounds nuw i8, ptr %i.cff, i64 %i.cfk ; 4 uses
  br i1 %i.bsn, label %.preheader1561.lr.ph.i, label %.preheader1565.i

.preheader1561.lr.ph.i:                           ; preds = %_ZN4ncnn3MatD2Ev.exit1327.i
  br i1 %i.bso, label %.preheader1561.us.i, label %.preheader1565.thread.i

.preheader1561.us.i:                              ; preds = %.preheader1561.lr.ph.i, %._crit_edge1858.us.i
  %.011831863.us.i = phi i32 [ %i.cgs, %._crit_edge1858.us.i ], [ 0, %.preheader1561.lr.ph.i ]
  %.011881862.us.i = phi ptr [ %.lcssa992, %._crit_edge1858.us.i ], [ %i.cfl, %.preheader1561.lr.ph.i ] ; 2 uses
  %.011991861.us.i = phi ptr [ %i.cgr, %._crit_edge1858.us.i ], [ %i.cez, %.preheader1561.lr.ph.i ] ; 6 uses
  %.012031860.us.i = phi ptr [ %i.cgq, %._crit_edge1858.us.i ], [ %i.cew, %.preheader1561.lr.ph.i ] ; 6 uses
  br i1 %i.btw, label %.epil.preheader1114, label %.preheader1561.us.i.new

.preheader1561.us.i.new:                          ; preds = %.preheader1561.us.i, %.preheader1561.us.i.new
  %indvars.iv2323.i = phi i64 [ %indvars.iv.next2324.i.3, %.preheader1561.us.i.new ], [ 0, %.preheader1561.us.i ] ; 6 uses
  %.111891856.us.i = phi ptr [ %i.cgj, %.preheader1561.us.i.new ], [ %.011881862.us.i, %.preheader1561.us.i ] ; 9 uses
  %niter1121 = phi i64 [ %niter1121.next.3, %.preheader1561.us.i.new ], [ 0, %.preheader1561.us.i ]
  %i.cfm = getelementptr inbounds nuw [4 x i8], ptr %.012031860.us.i, i64 %indvars.iv2323.i
  %i.cfn = getelementptr inbounds nuw [4 x i8], ptr %.011991861.us.i, i64 %indvars.iv2323.i
  %i.cfo = call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.cfm, <16 x i32> %i.bsm, <16 x i1> splat (i1 true), i32 4)
  %i.cfp = call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.cfn, <16 x i32> %i.bsm, <16 x i1> splat (i1 true), i32 4)
  store <16 x float> %i.cfo, ptr %.111891856.us.i, align 1, !tbaa !85
  %i.cfq = getelementptr inbounds nuw i8, ptr %.111891856.us.i, i64 64
  store <16 x float> %i.cfp, ptr %i.cfq, align 1, !tbaa !85
  %i.cfr = getelementptr inbounds nuw i8, ptr %.111891856.us.i, i64 128
  %indvars.iv.next2324.i = or disjoint i64 %indvars.iv2323.i, 1 ; 2 uses
  %i.cfs = getelementptr inbounds nuw [4 x i8], ptr %.012031860.us.i, i64 %indvars.iv.next2324.i
  %i.cft = getelementptr inbounds nuw [4 x i8], ptr %.011991861.us.i, i64 %indvars.iv.next2324.i
  %i.cfu = call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.cfs, <16 x i32> %i.bsm, <16 x i1> splat (i1 true), i32 4)
  %i.cfv = call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.cft, <16 x i32> %i.bsm, <16 x i1> splat (i1 true), i32 4)
  store <16 x float> %i.cfu, ptr %i.cfr, align 1, !tbaa !85
  %i.cfw = getelementptr inbounds nuw i8, ptr %.111891856.us.i, i64 192
  store <16 x float> %i.cfv, ptr %i.cfw, align 1, !tbaa !85
  %i.cfx = getelementptr inbounds nuw i8, ptr %.111891856.us.i, i64 256
  %indvars.iv.next2324.i.1 = or disjoint i64 %indvars.iv2323.i, 2 ; 2 uses
  %i.cfy = getelementptr inbounds nuw [4 x i8], ptr %.012031860.us.i, i64 %indvars.iv.next2324.i.1
  %i.cfz = getelementptr inbounds nuw [4 x i8], ptr %.011991861.us.i, i64 %indvars.iv.next2324.i.1
  %i.cga = call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.cfy, <16 x i32> %i.bsm, <16 x i1> splat (i1 true), i32 4)
  %i.cgb = call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.cfz, <16 x i32> %i.bsm, <16 x i1> splat (i1 true), i32 4)
  store <16 x float> %i.cga, ptr %i.cfx, align 1, !tbaa !85
  %i.cgc = getelementptr inbounds nuw i8, ptr %.111891856.us.i, i64 320
  store <16 x float> %i.cgb, ptr %i.cgc, align 1, !tbaa !85
  %i.cgd = getelementptr inbounds nuw i8, ptr %.111891856.us.i, i64 384
  %indvars.iv.next2324.i.2 = or disjoint i64 %indvars.iv2323.i, 3 ; 2 uses
  %i.cge = getelementptr inbounds nuw [4 x i8], ptr %.012031860.us.i, i64 %indvars.iv.next2324.i.2
  %i.cgf = getelementptr inbounds nuw [4 x i8], ptr %.011991861.us.i, i64 %indvars.iv.next2324.i.2
  %i.cgg = call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.cge, <16 x i32> %i.bsm, <16 x i1> splat (i1 true), i32 4)
  %i.cgh = call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.cgf, <16 x i32> %i.bsm, <16 x i1> splat (i1 true), i32 4)
  store <16 x float> %i.cgg, ptr %i.cgd, align 1, !tbaa !85
  %i.cgi = getelementptr inbounds nuw i8, ptr %.111891856.us.i, i64 448
  store <16 x float> %i.cgh, ptr %i.cgi, align 1, !tbaa !85
  %i.cgj = getelementptr inbounds nuw i8, ptr %.111891856.us.i, i64 512 ; 3 uses
  %indvars.iv.next2324.i.3 = add nuw nsw i64 %indvars.iv2323.i, 4 ; 2 uses
  %niter1121.next.3 = add i64 %niter1121, 4       ; 2 uses
  %niter1121.ncmp.3 = icmp eq i64 %niter1121.next.3, %unroll_iter1120
  br i1 %niter1121.ncmp.3, label %._crit_edge1858.us.i.unr-lcssa, label %.preheader1561.us.i.new, !llvm.loop !167

._crit_edge1858.us.i.unr-lcssa:                   ; preds = %.preheader1561.us.i.new
  br i1 %lcmp.mod1117.not, label %._crit_edge1858.us.i, label %.epil.preheader1114

.epil.preheader1114:                              ; preds = %._crit_edge1858.us.i.unr-lcssa, %.preheader1561.us.i
  %indvars.iv2323.i.epil.init = phi i64 [ 0, %.preheader1561.us.i ], [ %indvars.iv.next2324.i.3, %._crit_edge1858.us.i.unr-lcssa ]
  %.111891856.us.i.epil.init = phi ptr [ %.011881862.us.i, %.preheader1561.us.i ], [ %i.cgj, %._crit_edge1858.us.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1119)
  br label %bb.lm

bb.lm:                                            ; preds = %bb.lm, %.epil.preheader1114
  %indvars.iv2323.i.epil = phi i64 [ %indvars.iv2323.i.epil.init, %.epil.preheader1114 ], [ %indvars.iv.next2324.i.epil, %bb.lm ] ; 3 uses
  %.111891856.us.i.epil = phi ptr [ %.111891856.us.i.epil.init, %.epil.preheader1114 ], [ %i.cgp, %bb.lm ] ; 3 uses
  %epil.iter1116 = phi i64 [ 0, %.epil.preheader1114 ], [ %epil.iter1116.next, %bb.lm ]
  %i.cgk = getelementptr inbounds nuw [4 x i8], ptr %.012031860.us.i, i64 %indvars.iv2323.i.epil
  %i.cgl = getelementptr inbounds nuw [4 x i8], ptr %.011991861.us.i, i64 %indvars.iv2323.i.epil
  %i.cgm = call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.cgk, <16 x i32> %i.bsm, <16 x i1> splat (i1 true), i32 4)
  %i.cgn = call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.cgl, <16 x i32> %i.bsm, <16 x i1> splat (i1 true), i32 4)
  store <16 x float> %i.cgm, ptr %.111891856.us.i.epil, align 1, !tbaa !85
  %i.cgo = getelementptr inbounds nuw i8, ptr %.111891856.us.i.epil, i64 64
  store <16 x float> %i.cgn, ptr %i.cgo, align 1, !tbaa !85
  %i.cgp = getelementptr inbounds nuw i8, ptr %.111891856.us.i.epil, i64 128 ; 2 uses
  %indvars.iv.next2324.i.epil = add nuw nsw i64 %indvars.iv2323.i.epil, 1
  %epil.iter1116.next = add i64 %epil.iter1116, 1 ; 2 uses
  %epil.iter1116.cmp.not = icmp eq i64 %epil.iter1116.next, %xtraiter1115
  br i1 %epil.iter1116.cmp.not, label %._crit_edge1858.us.i, label %bb.lm, !llvm.loop !168

._crit_edge1858.us.i:                             ; preds = %bb.lm, %._crit_edge1858.us.i.unr-lcssa
  %.lcssa992 = phi ptr [ %i.cgj, %._crit_edge1858.us.i.unr-lcssa ], [ %i.cgp, %bb.lm ] ; 2 uses
  %i.cgq = getelementptr inbounds nuw [4 x i8], ptr %.012031860.us.i, i64 %i.bsq ; 2 uses
  %i.cgr = getelementptr inbounds nuw [4 x i8], ptr %.011991861.us.i, i64 %i.bsq ; 2 uses
  %i.cgs = add nuw nsw i32 %.011831863.us.i, 16   ; 2 uses
  %i.cgt = or disjoint i32 %i.cgs, 15
  %i.cgu = icmp slt i32 %i.cgt, %i.cn
  br i1 %i.cgu, label %.preheader1561.us.i, label %.preheader1565.i, !llvm.loop !169

.preheader1565.i:                                 ; preds = %._crit_edge1858.us.i, %_ZN4ncnn3MatD2Ev.exit1327.i
  %.01203.lcssa.i = phi ptr [ %i.cew, %_ZN4ncnn3MatD2Ev.exit1327.i ], [ %i.cgq, %._crit_edge1858.us.i ] ; 3 uses
  %.01199.lcssa.i = phi ptr [ %i.cez, %_ZN4ncnn3MatD2Ev.exit1327.i ], [ %i.cgr, %._crit_edge1858.us.i ] ; 3 uses
  %.01188.lcssa.i = phi ptr [ %i.cfl, %_ZN4ncnn3MatD2Ev.exit1327.i ], [ %.lcssa992, %._crit_edge1858.us.i ] ; 3 uses
  %.01183.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit1327.i ], [ %i.bti, %._crit_edge1858.us.i ] ; 4 uses
  %i.cgv = or disjoint i32 %.01183.lcssa.i, 7
  %i.cgw = icmp slt i32 %i.cgv, %i.cn
  br i1 %i.cgw, label %.preheader1560.lr.ph.i, label %.preheader1564.i

.preheader1565.thread.i:                          ; preds = %.preheader1561.lr.ph.i
  %scevgep2316.i = getelementptr i8, ptr %i.ces, i64 %i.btd ; 2 uses
  %scevgep2319.i = getelementptr i8, ptr %scevgep2316.i, i64 %i.cep ; 2 uses
  %scevgep2322.i = getelementptr i8, ptr %scevgep2316.i, i64 %i.cer ; 2 uses
  br i1 %i.btn, label %.preheader1560.preheader.i, label %.preheader1564.i

.preheader1560.lr.ph.i:                           ; preds = %.preheader1565.i
  br i1 %i.bso, label %.preheader1560.us.i, label %.preheader1560.preheader.i

.preheader1560.preheader.i:                       ; preds = %.preheader1560.lr.ph.i, %.preheader1565.thread.i
  %.01203.lcssa25602571.i = phi ptr [ %.01203.lcssa.i, %.preheader1560.lr.ph.i ], [ %scevgep2319.i, %.preheader1565.thread.i ]
  %.01199.lcssa25612570.i = phi ptr [ %.01199.lcssa.i, %.preheader1560.lr.ph.i ], [ %scevgep2322.i, %.preheader1565.thread.i ]
  %.01188.lcssa25622569.i = phi ptr [ %.01188.lcssa.i, %.preheader1560.lr.ph.i ], [ %i.cfl, %.preheader1565.thread.i ]
  %.01183.lcssa25632568.i = phi i32 [ %.01183.lcssa.i, %.preheader1560.lr.ph.i ], [ %i.bti, %.preheader1565.thread.i ] ; 2 uses
  %i.cgx = sub i32 %i.btj, %.01183.lcssa25632568.i ; 2 uses
  %i.cgy = lshr i32 %i.cgx, 1
  %i.cgz = and i32 %i.cgy, 2147483644
  %narrow2436.i = add nuw i32 %i.cgz, 4
  %i.cha = zext i32 %narrow2436.i to i64
  %i.chb = mul nsw i64 %i.cha, %i.bss             ; 2 uses
  %scevgep2328.i = getelementptr i8, ptr %.01203.lcssa25602571.i, i64 %i.chb
  %scevgep2329.i = getelementptr i8, ptr %.01199.lcssa25612570.i, i64 %i.chb
  %i.chc = add i32 %.01183.lcssa25632568.i, 8
  %i.chd = and i32 %i.cgx, -8
  %i.che = add i32 %i.chc, %i.chd
end_hunk_1
begin_hunk_2_@_ZN4ncnnL28convolution_im2col_gemm_int8ERKNS_3MatERS0_S2_iiiiiiiRKNS_6OptionE.omp_outlined.14:bb.a
  %i.anw = add nuw nsw i32 %.21525888.i, 4        ; 3 uses
  %i.anx = or disjoint i32 %i.anw, 3
  %i.any = icmp slt i32 %i.anx, %.sroa.speculated111
  br i1 %i.any, label %.lr.ph891.i, label %.preheader828.i, !llvm.loop !2384

.preheader827.i:                                  ; preds = %.thread775.i, %.preheader828.i
  %.31526.lcssa.i = phi i32 [ %.21525.lcssa.i, %.preheader828.i ], [ %i.apc, %.thread775.i ] ; 4 uses
  %.121515.lcssa.i = phi ptr [ %.81511.lcssa.i, %.preheader828.i ], [ %.151518.i, %.thread775.i ] ; 9 uses
  %.10.lcssa.i = phi ptr [ %.9.lcssa.i, %.preheader828.i ], [ %i.aor, %.thread775.i ] ; 4 uses
  %i.anz = icmp slt i32 %.31526.lcssa.i, %.sroa.speculated111
  br i1 %i.anz, label %.lr.ph905.i.preheader, label %._crit_edge906.i

.lr.ph905.i.preheader:                            ; preds = %.preheader827.i
  %i.aoa = sub i32 %.sroa.speculated111, %.31526.lcssa.i
  %i.aob = freeze i32 %i.aoa                      ; 2 uses
  %xtraiter = and i32 %i.aob, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph905.i.prol.loopexit, label %.lr.ph905.i.prol

.lr.ph905.i.prol:                                 ; preds = %.lr.ph905.i.preheader
  %i.aoc = load <4 x i64>, ptr %.10.lcssa.i, align 32, !tbaa !85 ; 3 uses
  %i.aod = getelementptr inbounds nuw i8, ptr %.10.lcssa.i, i64 32 ; 2 uses
  switch i32 %i.da, label %.thread780.i.prol [
    i32 8, label %.thread777.i.prol
    i32 4, label %bb.ak
    i32 1, label %bb.aj
  ]

bb.aj:                                            ; preds = %.lr.ph905.i.prol
  %i.aoe = bitcast <4 x i64> %i.aoc to <8 x i32>
  call void @llvm.x86.avx512.mask.scattersiv8.si(ptr %.121515.lcssa.i, <8 x i1> splat (i1 true), <8 x i32> %i.dw, <8 x i32> %i.aoe, i32 4)
  %i.aof = getelementptr inbounds nuw i8, ptr %.121515.lcssa.i, i64 4
  br label %.thread780.i.prol

bb.ak:                                            ; preds = %.lr.ph905.i.prol
  %i.aog = bitcast <4 x i64> %i.aoc to <8 x i32>  ; 2 uses
  %i.aoh = shufflevector <8 x i32> %i.aog, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i32> %i.aoh, ptr %.121515.lcssa.i, align 16, !tbaa !85
  %i.aoi = getelementptr inbounds nuw i8, ptr %.121515.lcssa.i, i64 %.idx1598.i
  %i.aoj = shufflevector <8 x i32> %i.aog, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x i32> %i.aoj, ptr %i.aoi, align 16, !tbaa !85
  %i.aok = getelementptr inbounds nuw i8, ptr %.121515.lcssa.i, i64 16
  br label %.thread780.i.prol

.thread777.i.prol:                                ; preds = %.lr.ph905.i.prol
  store <4 x i64> %i.aoc, ptr %.121515.lcssa.i, align 1, !tbaa !85
  %i.aol = getelementptr inbounds nuw i8, ptr %.121515.lcssa.i, i64 32
  br label %.thread780.i.prol

.thread780.i.prol:                                ; preds = %.thread777.i.prol, %bb.ak, %bb.aj, %.lr.ph905.i.prol
  %.191522.i.prol = phi ptr [ %i.aof, %bb.aj ], [ %.121515.lcssa.i, %.lr.ph905.i.prol ], [ %i.aol, %.thread777.i.prol ], [ %i.aok, %bb.ak ]
  %i.aom = add i32 %.31526.lcssa.i, 1
  br label %.lr.ph905.i.prol.loopexit

.lr.ph905.i.prol.loopexit:                        ; preds = %.thread780.i.prol, %.lr.ph905.i.preheader
  %.lcssa544.unr = phi ptr [ poison, %.lr.ph905.i.preheader ], [ %i.aod, %.thread780.i.prol ]
  %.11904.i.unr = phi ptr [ %.10.lcssa.i, %.lr.ph905.i.preheader ], [ %i.aod, %.thread780.i.prol ]
  %.161519903.i.unr = phi ptr [ %.121515.lcssa.i, %.lr.ph905.i.preheader ], [ %.191522.i.prol, %.thread780.i.prol ]
  %.41527902.i.unr = phi i32 [ %.31526.lcssa.i, %.lr.ph905.i.preheader ], [ %i.aom, %.thread780.i.prol ]
  %i.aon = icmp eq i32 %i.aob, 1
  br i1 %i.aon, label %._crit_edge906.i, label %.lr.ph905.i

.lr.ph898.i:                                      ; preds = %.preheader828.i, %.thread775.i
  %.10897.i = phi ptr [ %i.aor, %.thread775.i ], [ %.9.lcssa.i, %.preheader828.i ] ; 3 uses
  %.121515896.i = phi ptr [ %.151518.i, %.thread775.i ], [ %.81511.lcssa.i, %.preheader828.i ] ; 10 uses
  %.31526895.i = phi i32 [ %i.apc, %.thread775.i ], [ %.21525.lcssa.i, %.preheader828.i ]
  %i.aoo = load <8 x i32>, ptr %.10897.i, align 32, !tbaa !85 ; 3 uses
  %i.aop = getelementptr inbounds nuw i8, ptr %.10897.i, i64 32
  %i.aoq = load <8 x i32>, ptr %i.aop, align 32, !tbaa !85 ; 3 uses
  %i.aor = getelementptr inbounds nuw i8, ptr %.10897.i, i64 64 ; 2 uses
  %i.aos = shufflevector <8 x i32> %i.aoo, <8 x i32> %i.aoq, <8 x i32> <i32 0, i32 9, i32 2, i32 11, i32 4, i32 13, i32 6, i32 15> ; 3 uses
  %i.aot = shufflevector <8 x i32> %i.aoq, <8 x i32> %i.aoo, <8 x i32> <i32 0, i32 9, i32 2, i32 11, i32 4, i32 13, i32 6, i32 15> ; 3 uses
  switch i32 %i.da, label %.thread775.i [
    i32 8, label %.thread772.i
    i32 4, label %bb.al
    i32 1, label %bb.am
  ]

.thread772.i:                                     ; preds = %.lr.ph898.i
  store <8 x i32> %i.aos, ptr %.121515896.i, align 1, !tbaa !85
  %i.aou = getelementptr inbounds nuw i8, ptr %.121515896.i, i64 32
  store <8 x i32> %i.aot, ptr %i.aou, align 1, !tbaa !85
  %i.aov = getelementptr inbounds nuw i8, ptr %.121515896.i, i64 64
  br label %.thread775.i

bb.al:                                            ; preds = %.lr.ph898.i
  %i.aow = shufflevector <8 x i32> %i.aos, <8 x i32> %i.aot, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.aox = shufflevector <8 x i32> %i.aoo, <8 x i32> %i.aoq, <8 x i32> <i32 4, i32 13, i32 6, i32 15, i32 12, i32 5, i32 14, i32 7>
  store <8 x i32> %i.aow, ptr %.121515896.i, align 1, !tbaa !85
  %i.aoy = getelementptr inbounds nuw i8, ptr %.121515896.i, i64 %.idx1598.i
  store <8 x i32> %i.aox, ptr %i.aoy, align 1, !tbaa !85
  %i.aoz = getelementptr inbounds nuw i8, ptr %.121515896.i, i64 32
  br label %.thread775.i

bb.am:                                            ; preds = %.lr.ph898.i
  call void @llvm.x86.avx512.mask.scattersiv8.si(ptr %.121515896.i, <8 x i1> splat (i1 true), <8 x i32> %i.dw, <8 x i32> %i.aos, i32 4)
  %i.apa = getelementptr inbounds nuw i8, ptr %.121515896.i, i64 4
  call void @llvm.x86.avx512.mask.scattersiv8.si(ptr nonnull %i.apa, <8 x i1> splat (i1 true), <8 x i32> %i.dw, <8 x i32> %i.aot, i32 4)
  %i.apb = getelementptr inbounds nuw i8, ptr %.121515896.i, i64 8
  br label %.thread775.i

.thread775.i:                                     ; preds = %bb.am, %bb.al, %.thread772.i, %.lr.ph898.i
  %.151518.i = phi ptr [ %i.apb, %bb.am ], [ %.121515896.i, %.lr.ph898.i ], [ %i.aov, %.thread772.i ], [ %i.aoz, %bb.al ] ; 2 uses
  %i.apc = add nuw nsw i32 %.31526895.i, 2        ; 3 uses
  %i.apd = or disjoint i32 %i.apc, 1
  %i.ape = icmp slt i32 %i.apd, %.sroa.speculated111
  br i1 %i.ape, label %.lr.ph898.i, label %.preheader827.i, !llvm.loop !2385

.lr.ph905.i:                                      ; preds = %.lr.ph905.i.prol.loopexit, %.thread780.i.1
  %.11904.i = phi ptr [ %i.apq, %.thread780.i.1 ], [ %.11904.i.unr, %.lr.ph905.i.prol.loopexit ] ; 3 uses
  %.161519903.i = phi ptr [ %.191522.i.1, %.thread780.i.1 ], [ %.161519903.i.unr, %.lr.ph905.i.prol.loopexit ] ; 8 uses
  %.41527902.i = phi i32 [ %i.apz, %.thread780.i.1 ], [ %.41527902.i.unr, %.lr.ph905.i.prol.loopexit ]
  %i.apf = load <4 x i64>, ptr %.11904.i, align 32, !tbaa !85 ; 3 uses
  %i.apg = getelementptr inbounds nuw i8, ptr %.11904.i, i64 32
  switch i32 %i.da, label %.thread780.i [
    i32 8, label %.thread777.i
    i32 4, label %bb.an
    i32 1, label %bb.ao
  ]

.thread777.i:                                     ; preds = %.lr.ph905.i
  store <4 x i64> %i.apf, ptr %.161519903.i, align 1, !tbaa !85
  %i.aph = getelementptr inbounds nuw i8, ptr %.161519903.i, i64 32
  br label %.thread780.i

bb.an:                                            ; preds = %.lr.ph905.i
  %i.api = bitcast <4 x i64> %i.apf to <8 x i32>  ; 2 uses
  %i.apj = shufflevector <8 x i32> %i.api, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i32> %i.apj, ptr %.161519903.i, align 16, !tbaa !85
  %i.apk = getelementptr inbounds nuw i8, ptr %.161519903.i, i64 %.idx1598.i
  %i.apl = shufflevector <8 x i32> %i.api, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x i32> %i.apl, ptr %i.apk, align 16, !tbaa !85
  %i.apm = getelementptr inbounds nuw i8, ptr %.161519903.i, i64 16
  br label %.thread780.i

bb.ao:                                            ; preds = %.lr.ph905.i
  %i.apn = bitcast <4 x i64> %i.apf to <8 x i32>
  call void @llvm.x86.avx512.mask.scattersiv8.si(ptr %.161519903.i, <8 x i1> splat (i1 true), <8 x i32> %i.dw, <8 x i32> %i.apn, i32 4)
  %i.apo = getelementptr inbounds nuw i8, ptr %.161519903.i, i64 4
  br label %.thread780.i

.thread780.i:                                     ; preds = %bb.ao, %bb.an, %.thread777.i, %.lr.ph905.i
  %.191522.i = phi ptr [ %i.apo, %bb.ao ], [ %.161519903.i, %.lr.ph905.i ], [ %i.aph, %.thread777.i ], [ %i.apm, %bb.an ] ; 8 uses
  %i.app = load <4 x i64>, ptr %i.apg, align 32, !tbaa !85 ; 3 uses
  %i.apq = getelementptr inbounds nuw i8, ptr %.11904.i, i64 64 ; 2 uses
  switch i32 %i.da, label %.thread780.i.1 [
    i32 8, label %.thread777.i.1
    i32 4, label %bb.aq
    i32 1, label %bb.ap
  ]

bb.ap:                                            ; preds = %.thread780.i
  %i.apr = bitcast <4 x i64> %i.app to <8 x i32>
  call void @llvm.x86.avx512.mask.scattersiv8.si(ptr %.191522.i, <8 x i1> splat (i1 true), <8 x i32> %i.dw, <8 x i32> %i.apr, i32 4)
  %i.aps = getelementptr inbounds nuw i8, ptr %.191522.i, i64 4
  br label %.thread780.i.1

bb.aq:                                            ; preds = %.thread780.i
  %i.apt = bitcast <4 x i64> %i.app to <8 x i32>  ; 2 uses
  %i.apu = shufflevector <8 x i32> %i.apt, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i32> %i.apu, ptr %.191522.i, align 16, !tbaa !85
  %i.apv = getelementptr inbounds nuw i8, ptr %.191522.i, i64 %.idx1598.i
  %i.apw = shufflevector <8 x i32> %i.apt, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x i32> %i.apw, ptr %i.apv, align 16, !tbaa !85
  %i.apx = getelementptr inbounds nuw i8, ptr %.191522.i, i64 16
  br label %.thread780.i.1

.thread777.i.1:                                   ; preds = %.thread780.i
  store <4 x i64> %i.app, ptr %.191522.i, align 1, !tbaa !85
  %i.apy = getelementptr inbounds nuw i8, ptr %.191522.i, i64 32
  br label %.thread780.i.1

.thread780.i.1:                                   ; preds = %.thread777.i.1, %bb.aq, %bb.ap, %.thread780.i
  %.191522.i.1 = phi ptr [ %i.aps, %bb.ap ], [ %.191522.i, %.thread780.i ], [ %i.apy, %.thread777.i.1 ], [ %i.apx, %bb.aq ]
  %i.apz = add i32 %.41527902.i, 2                ; 2 uses
  %exitcond1092.not.i.1 = icmp eq i32 %i.apz, %.sroa.speculated111
  br i1 %exitcond1092.not.i.1, label %._crit_edge906.i, label %.lr.ph905.i, !llvm.loop !2386

._crit_edge906.i:                                 ; preds = %.lr.ph905.i.prol.loopexit, %.thread780.i.1, %.preheader827.i
  %.11.lcssa.i = phi ptr [ %.10.lcssa.i, %.preheader827.i ], [ %.lcssa544.unr, %.lr.ph905.i.prol.loopexit ], [ %i.apq, %.thread780.i.1 ] ; 2 uses
  %indvars.iv.next1094.i = add nuw nsw i64 %indvars.iv1093.i, 8 ; 3 uses
  %i.aqa = icmp slt i64 %indvars.iv.next1094.i, %invariant.op.i
  br i1 %i.aqa, label %bb.ac, label %.preheader826.loopexit.i, !llvm.loop !2387

.preheader821.loopexit.i:                         ; preds = %._crit_edge946.i
  %i.aqb = trunc nsw i64 %indvars.iv.next1098.i to i32
  br label %.preheader821.i

.preheader821.i:                                  ; preds = %.preheader821.loopexit.i, %.preheader826.i
  %.21460.lcssa.i = phi i32 [ %.11459.lcssa.i, %.preheader826.i ], [ %i.aqb, %.preheader821.loopexit.i ] ; 3 uses
  %.12.lcssa.i = phi ptr [ %.6.lcssa.i, %.preheader826.i ], [ %.17.lcssa.i, %.preheader821.loopexit.i ] ; 2 uses
  %i.aqc = or disjoint i32 %.21460.lcssa.i, 1
  %i.aqd = icmp slt i32 %i.aqc, %.sroa.speculated115
  br i1 %i.aqd, label %.lr.ph990.i, label %.preheader816.i

.lr.ph990.i:                                      ; preds = %.preheader821.i
  %i.aqe = sext i32 %.044166 to i64
  %i.aqf = icmp sgt i32 %.sroa.speculated111, 15
  %i.aqg = and i32 %.sroa.speculated111, -16      ; 2 uses
  %i.aqh = sext i32 %.21460.lcssa.i to i64
  %i.aqi = shl nuw nsw i64 %i.db, 2               ; 5 uses
  %i.aqj = add i32 %.sroa.speculated111, -2
  %i.aqk = add i32 %.sroa.speculated111, -16      ; 2 uses
  %i.aql = lshr i32 %i.aqk, 4                     ; 2 uses
  %i.aqm = add nuw nsw i32 %i.aql, 1              ; 2 uses
  %i.aqn = icmp eq i32 %i.aql, 0
  %unroll_iter = and i32 %i.aqm, 536870910
  %i.aqo = and i32 %i.aqk, 16
  %lcmp.mod580.not.not = icmp eq i32 %i.aqo, 0
  %lcmp.mod583 = trunc i32 %i.aqm to i1
  %i.aqp = add i32 %.sroa.speculated111, -2
  br label %bb.be

bb.ar:                                            ; preds = %._crit_edge946.i, %.lr.ph950.i
  %indvars.iv1097.i = phi i64 [ %i.aca, %.lr.ph950.i ], [ %indvars.iv.next1098.i, %._crit_edge946.i ] ; 2 uses
  %.12949.i = phi ptr [ %.6.lcssa.i, %.lr.ph950.i ], [ %.17.lcssa.i, %._crit_edge946.i ] ; 2 uses
  %i.aqq = load ptr, ptr %12, align 8, !tbaa !22
  %i.aqr = add nsw i64 %indvars.iv1097.i, %i.ci
  %i.aqs = mul i64 %i.aqr, %i.db
  %i.aqt = getelementptr inbounds nuw [4 x i8], ptr %i.aqq, i64 %i.aqs
  %i.aqu = getelementptr inbounds [4 x i8], ptr %i.aqt, i64 %i.abt ; 2 uses
  br i1 %i.abu, label %.lr.ph917.i, label %.preheader825.i

.preheader825.i:                                  ; preds = %bb.at, %bb.ar
  %.01551.lcssa.i = phi i32 [ 0, %bb.ar ], [ %i.abz, %bb.at ] ; 3 uses
  %.01536.lcssa.i = phi ptr [ %i.aqu, %bb.ar ], [ %.21538.i, %bb.at ] ; 2 uses
  %.13.lcssa.i = phi ptr [ %.12949.i, %bb.ar ], [ %i.ask, %bb.at ] ; 2 uses
  %i.aqv = or disjoint i32 %.01551.lcssa.i, 7
  %i.aqw = icmp slt i32 %i.aqv, %.sroa.speculated111
  br i1 %i.aqw, label %.lr.ph924.i, label %.preheader824.i

.lr.ph917.i:                                      ; preds = %bb.ar, %bb.at
  %.13915.i = phi ptr [ %i.ask, %bb.at ], [ %.12949.i, %bb.ar ] ; 5 uses
  %.01536914.i = phi ptr [ %.21538.i, %bb.at ], [ %i.aqu, %bb.ar ] ; 11 uses
  %.01551913.i = phi i32 [ %i.asl, %bb.at ], [ 0, %bb.ar ]
  %i.aqx = load <16 x i32>, ptr %.13915.i, align 1, !tbaa !85 ; 2 uses
  %i.aqy = getelementptr inbounds nuw i8, ptr %.13915.i, i64 64
  %i.aqz = load <16 x i32>, ptr %i.aqy, align 1, !tbaa !85 ; 2 uses
  %i.ara = getelementptr inbounds nuw i8, ptr %.13915.i, i64 128
  %i.arb = load <16 x i32>, ptr %i.ara, align 1, !tbaa !85 ; 2 uses
  %i.arc = getelementptr inbounds nuw i8, ptr %.13915.i, i64 192
  %i.ard = load <16 x i32>, ptr %i.arc, align 1, !tbaa !85 ; 2 uses
  %i.are = shufflevector <16 x i32> %i.aqx, <16 x i32> %i.ard, <16 x i32> <i32 0, i32 19, i32 1, i32 16, i32 4, i32 23, i32 5, i32 20, i32 8, i32 27, i32 9, i32 24, i32 12, i32 31, i32 13, i32 28> ; 2 uses
  %i.arf = shufflevector <16 x i32> %i.arb, <16 x i32> %i.aqz, <16 x i32> <i32 0, i32 19, i32 1, i32 16, i32 4, i32 23, i32 5, i32 20, i32 8, i32 27, i32 9, i32 24, i32 12, i32 31, i32 13, i32 28> ; 2 uses
  %i.arg = shufflevector <16 x i32> %i.aqx, <16 x i32> %i.ard, <16 x i32> <i32 2, i32 17, i32 3, i32 18, i32 6, i32 21, i32 7, i32 22, i32 10, i32 25, i32 11, i32 26, i32 14, i32 29, i32 15, i32 30> ; 2 uses
  %i.arh = shufflevector <16 x i32> %i.arb, <16 x i32> %i.aqz, <16 x i32> <i32 2, i32 17, i32 3, i32 18, i32 6, i32 21, i32 7, i32 22, i32 10, i32 25, i32 11, i32 26, i32 14, i32 29, i32 15, i32 30> ; 2 uses
  %i.ari = shufflevector <16 x i32> %i.are, <16 x i32> %i.arf, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 4 uses
  %i.arj = shufflevector <16 x i32> %i.are, <16 x i32> %i.arf, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 4 uses
  %i.ark = shufflevector <16 x i32> %i.arh, <16 x i32> %i.arg, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 4 uses
  %i.arl = shufflevector <16 x i32> %i.arh, <16 x i32> %i.arg, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 4 uses
  switch i32 %i.da, label %bb.at [
    i32 4, label %.thread782.i
    i32 1, label %bb.as
  ]

.thread782.i:                                     ; preds = %.lr.ph917.i
  %i.arm = shufflevector <16 x i32> %i.ari, <16 x i32> %i.arj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 19, i32 16, i32 17, i32 18, i32 23, i32 20, i32 21, i32 22> ; 2 uses
  %i.arn = shufflevector <16 x i32> %i.ark, <16 x i32> %i.arl, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 19, i32 16, i32 17, i32 18, i32 23, i32 20, i32 21, i32 22> ; 2 uses
  %i.aro = shufflevector <16 x i32> %i.ari, <16 x i32> %i.arj, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 27, i32 24, i32 25, i32 26, i32 31, i32 28, i32 29, i32 30> ; 2 uses
  %i.arp = shufflevector <16 x i32> %i.ark, <16 x i32> %i.arl, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 27, i32 24, i32 25, i32 26, i32 31, i32 28, i32 29, i32 30> ; 2 uses
  %i.arq = shufflevector <16 x i32> %i.arm, <16 x i32> %i.arn, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.arr = shufflevector <16 x i32> %i.arm, <16 x i32> %i.arn, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.ars = shufflevector <16 x i32> %i.aro, <16 x i32> %i.arp, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.art = shufflevector <16 x i32> %i.aro, <16 x i32> %i.arp, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  store <16 x i32> %i.arq, ptr %.01536914.i, align 1, !tbaa !85
  %i.aru = getelementptr inbounds nuw i8, ptr %.01536914.i, i64 64
  store <16 x i32> %i.arr, ptr %i.aru, align 1, !tbaa !85
  %i.arv = getelementptr inbounds nuw i8, ptr %.01536914.i, i64 128
  store <16 x i32> %i.ars, ptr %i.arv, align 1, !tbaa !85
  %i.arw = getelementptr inbounds nuw i8, ptr %.01536914.i, i64 192
  store <16 x i32> %i.art, ptr %i.arw, align 1, !tbaa !85
  %i.arx = getelementptr inbounds nuw i8, ptr %.01536914.i, i64 256
  br label %bb.at

bb.as:                                            ; preds = %.lr.ph917.i
  %i.ary = shufflevector <16 x i32> %i.ari, <16 x i32> %i.arj, <16 x i32> <i32 0, i32 19, i32 1, i32 16, i32 4, i32 23, i32 5, i32 20, i32 8, i32 27, i32 9, i32 24, i32 12, i32 31, i32 13, i32 28> ; 2 uses
  %i.arz = shufflevector <16 x i32> %i.ark, <16 x i32> %i.arl, <16 x i32> <i32 0, i32 19, i32 1, i32 16, i32 4, i32 23, i32 5, i32 20, i32 8, i32 27, i32 9, i32 24, i32 12, i32 31, i32 13, i32 28> ; 2 uses
  %i.asa = shufflevector <16 x i32> %i.ari, <16 x i32> %i.arj, <16 x i32> <i32 2, i32 17, i32 3, i32 18, i32 6, i32 21, i32 7, i32 22, i32 10, i32 25, i32 11, i32 26, i32 14, i32 29, i32 15, i32 30> ; 2 uses
  %i.asb = shufflevector <16 x i32> %i.ark, <16 x i32> %i.arl, <16 x i32> <i32 2, i32 17, i32 3, i32 18, i32 6, i32 21, i32 7, i32 22, i32 10, i32 25, i32 11, i32 26, i32 14, i32 29, i32 15, i32 30> ; 2 uses
  %i.asc = shufflevector <16 x i32> %i.ary, <16 x i32> %i.arz, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.asd = shufflevector <16 x i32> %i.ary, <16 x i32> %i.arz, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  %i.ase = shufflevector <16 x i32> %i.asa, <16 x i32> %i.asb, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.asf = shufflevector <16 x i32> %i.asa, <16 x i32> %i.asb, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  store <16 x i32> %i.asc, ptr %.01536914.i, align 1, !tbaa !85
  %i.asg = getelementptr inbounds nuw [4 x i8], ptr %.01536914.i, i64 %i.db
  store <16 x i32> %i.asd, ptr %i.asg, align 1, !tbaa !85
  %i.ash = getelementptr inbounds nuw i8, ptr %.01536914.i, i64 %.idx1575.i
  store <16 x i32> %i.ase, ptr %i.ash, align 1, !tbaa !85
  %i.asi = getelementptr inbounds nuw i8, ptr %.01536914.i, i64 %.idx1576.i
  store <16 x i32> %i.asf, ptr %i.asi, align 1, !tbaa !85
  %i.asj = getelementptr inbounds nuw i8, ptr %.01536914.i, i64 64
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %.thread782.i, %.lr.ph917.i
  %.21538.i = phi ptr [ %i.asj, %bb.as ], [ %.01536914.i, %.lr.ph917.i ], [ %i.arx, %.thread782.i ] ; 2 uses
  %i.ask = getelementptr inbounds nuw i8, ptr %.13915.i, i64 256 ; 2 uses
  %i.asl = add nuw nsw i32 %.01551913.i, 16       ; 2 uses
  %i.asm = or disjoint i32 %i.asl, 15
  %i.asn = icmp slt i32 %i.asm, %.sroa.speculated111
  br i1 %i.asn, label %.lr.ph917.i, label %.preheader825.i, !llvm.loop !2388

.preheader824.i:                                  ; preds = %bb.av, %.preheader825.i
  %.11552.lcssa.i = phi i32 [ %.01551.lcssa.i, %.preheader825.i ], [ %i.avg, %bb.av ] ; 3 uses
  %.31539.lcssa.i = phi ptr [ %.01536.lcssa.i, %.preheader825.i ], [ %.51541.i, %bb.av ] ; 2 uses
  %.14.lcssa.i = phi ptr [ %.13.lcssa.i, %.preheader825.i ], [ %i.avf, %bb.av ] ; 2 uses
  %i.aso = or disjoint i32 %.11552.lcssa.i, 3
  %i.asp = icmp slt i32 %i.aso, %.sroa.speculated111
  br i1 %i.asp, label %.lr.ph931.i, label %.preheader823.i

.lr.ph924.i:                                      ; preds = %.preheader825.i, %bb.av
  %.14923.i = phi ptr [ %i.avf, %bb.av ], [ %.13.lcssa.i, %.preheader825.i ] ; 9 uses
  %.31539922.i = phi ptr [ %.51541.i, %bb.av ], [ %.01536.lcssa.i, %.preheader825.i ] ; 16 uses
  %.11552921.i = phi i32 [ %i.avg, %bb.av ], [ %.01551.lcssa.i, %.preheader825.i ]
  %i.asq = load <4 x i32>, ptr %.14923.i, align 16, !tbaa !85 ; 2 uses
  %i.asr = getelementptr inbounds nuw i8, ptr %.14923.i, i64 16
  %i.ass = load <4 x i32>, ptr %i.asr, align 16, !tbaa !85 ; 2 uses
  %i.ast = getelementptr inbounds nuw i8, ptr %.14923.i, i64 32
  %i.asu = load <4 x i32>, ptr %i.ast, align 16, !tbaa !85 ; 2 uses
  %i.asv = getelementptr inbounds nuw i8, ptr %.14923.i, i64 48
  %i.asw = load <4 x i32>, ptr %i.asv, align 16, !tbaa !85 ; 2 uses
  %i.asx = getelementptr inbounds nuw i8, ptr %.14923.i, i64 64
  %i.asy = load <4 x i32>, ptr %i.asx, align 16, !tbaa !85 ; 2 uses
  %i.asz = getelementptr inbounds nuw i8, ptr %.14923.i, i64 80
  %i.ata = load <4 x i32>, ptr %i.asz, align 16, !tbaa !85 ; 2 uses
  %i.atb = getelementptr inbounds nuw i8, ptr %.14923.i, i64 96
  %i.atc = load <4 x i32>, ptr %i.atb, align 16, !tbaa !85 ; 2 uses
  %i.atd = getelementptr inbounds nuw i8, ptr %.14923.i, i64 112
  %i.ate = load <4 x i32>, ptr %i.atd, align 16, !tbaa !85 ; 2 uses
  %i.atf = shufflevector <4 x i32> %i.asq, <4 x i32> %i.atc, <4 x i32> <i32 0, i32 7, i32 1, i32 4> ; 2 uses
  %i.atg = shufflevector <4 x i32> %i.asq, <4 x i32> %i.atc, <4 x i32> <i32 2, i32 5, i32 3, i32 6> ; 2 uses
  %i.ath = shufflevector <4 x i32> %i.ass, <4 x i32> %i.ate, <4 x i32> <i32 0, i32 7, i32 1, i32 4> ; 2 uses
  %i.ati = shufflevector <4 x i32> %i.ass, <4 x i32> %i.ate, <4 x i32> <i32 2, i32 5, i32 3, i32 6> ; 2 uses
  %i.atj = shufflevector <4 x i32> %i.asu, <4 x i32> %i.asy, <4 x i32> <i32 0, i32 7, i32 1, i32 4> ; 2 uses
  %i.atk = shufflevector <4 x i32> %i.asu, <4 x i32> %i.asy, <4 x i32> <i32 2, i32 5, i32 3, i32 6> ; 2 uses
  %i.atl = shufflevector <4 x i32> %i.asw, <4 x i32> %i.ata, <4 x i32> <i32 0, i32 7, i32 1, i32 4> ; 2 uses
  %i.atm = shufflevector <4 x i32> %i.asw, <4 x i32> %i.ata, <4 x i32> <i32 2, i32 5, i32 3, i32 6> ; 2 uses
  %i.atn = shufflevector <4 x i32> %i.atf, <4 x i32> %i.atj, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 3 uses
  %i.ato = shufflevector <4 x i32> %i.atf, <4 x i32> %i.atj, <4 x i32> <i32 2, i32 3, i32 6, i32 7> ; 3 uses
  %i.atp = shufflevector <4 x i32> %i.atk, <4 x i32> %i.atg, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 3 uses
  %i.atq = shufflevector <4 x i32> %i.atk, <4 x i32> %i.atg, <4 x i32> <i32 2, i32 3, i32 6, i32 7> ; 3 uses
  %i.atr = shufflevector <4 x i32> %i.ath, <4 x i32> %i.atl, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 3 uses
  %i.ats = shufflevector <4 x i32> %i.ath, <4 x i32> %i.atl, <4 x i32> <i32 2, i32 3, i32 6, i32 7> ; 3 uses
  %i.att = shufflevector <4 x i32> %i.atm, <4 x i32> %i.ati, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 3 uses
  %i.atu = shufflevector <4 x i32> %i.atm, <4 x i32> %i.ati, <4 x i32> <i32 2, i32 3, i32 6, i32 7> ; 3 uses
  switch i32 %i.da, label %bb.av [
    i32 4, label %.thread788.i
    i32 1, label %bb.au
  ]

.thread788.i:                                     ; preds = %.lr.ph924.i
  %i.atv = shufflevector <4 x i32> %i.atu, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %i.atw = shufflevector <4 x i32> %i.ats, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %i.atx = shufflevector <4 x i32> %i.atq, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %i.aty = shufflevector <4 x i32> %i.ato, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  store <4 x i32> %i.atn, ptr %.31539922.i, align 16, !tbaa !85
  %i.atz = getelementptr inbounds nuw i8, ptr %.31539922.i, i64 16
  store <4 x i32> %i.aty, ptr %i.atz, align 16, !tbaa !85
  %i.aua = getelementptr inbounds nuw i8, ptr %.31539922.i, i64 32
  store <4 x i32> %i.atp, ptr %i.aua, align 16, !tbaa !85
  %i.aub = getelementptr inbounds nuw i8, ptr %.31539922.i, i64 48
  store <4 x i32> %i.atx, ptr %i.aub, align 16, !tbaa !85
  %i.auc = getelementptr inbounds nuw i8, ptr %.31539922.i, i64 64
  store <4 x i32> %i.atr, ptr %i.auc, align 16, !tbaa !85
  %i.aud = getelementptr inbounds nuw i8, ptr %.31539922.i, i64 80
  store <4 x i32> %i.atw, ptr %i.aud, align 16, !tbaa !85
  %i.aue = getelementptr inbounds nuw i8, ptr %.31539922.i, i64 96
  store <4 x i32> %i.att, ptr %i.aue, align 16, !tbaa !85
  %i.auf = getelementptr inbounds nuw i8, ptr %.31539922.i, i64 112
  store <4 x i32> %i.atv, ptr %i.auf, align 16, !tbaa !85
  %i.aug = getelementptr inbounds nuw i8, ptr %.31539922.i, i64 128
  br label %bb.av

bb.au:                                            ; preds = %.lr.ph924.i
  %i.auh = shufflevector <4 x i32> %i.atn, <4 x i32> %i.ato, <4 x i32> <i32 0, i32 7, i32 1, i32 4> ; 2 uses
  %i.aui = shufflevector <4 x i32> %i.atn, <4 x i32> %i.ato, <4 x i32> <i32 2, i32 5, i32 3, i32 6> ; 2 uses
  %i.auj = shufflevector <4 x i32> %i.atp, <4 x i32> %i.atq, <4 x i32> <i32 0, i32 7, i32 1, i32 4> ; 2 uses
  %i.auk = shufflevector <4 x i32> %i.atp, <4 x i32> %i.atq, <4 x i32> <i32 2, i32 5, i32 3, i32 6> ; 2 uses
  %i.aul = shufflevector <4 x i32> %i.auh, <4 x i32> %i.auj, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.aum = shufflevector <4 x i32> %i.auh, <4 x i32> %i.auj, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.aun = shufflevector <4 x i32> %i.aui, <4 x i32> %i.auk, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.auo = shufflevector <4 x i32> %i.aui, <4 x i32> %i.auk, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.aup = shufflevector <4 x i32> %i.atr, <4 x i32> %i.ats, <4 x i32> <i32 0, i32 7, i32 1, i32 4> ; 2 uses
  %i.auq = shufflevector <4 x i32> %i.atr, <4 x i32> %i.ats, <4 x i32> <i32 2, i32 5, i32 3, i32 6> ; 2 uses
  %i.aur = shufflevector <4 x i32> %i.att, <4 x i32> %i.atu, <4 x i32> <i32 0, i32 7, i32 1, i32 4> ; 2 uses
  %i.aus = shufflevector <4 x i32> %i.att, <4 x i32> %i.atu, <4 x i32> <i32 2, i32 5, i32 3, i32 6> ; 2 uses
  %i.aut = shufflevector <4 x i32> %i.aup, <4 x i32> %i.aur, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.auu = shufflevector <4 x i32> %i.aup, <4 x i32> %i.aur, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.auv = shufflevector <4 x i32> %i.auq, <4 x i32> %i.aus, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.auw = shufflevector <4 x i32> %i.auq, <4 x i32> %i.aus, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  store <4 x i32> %i.aul, ptr %.31539922.i, align 1, !tbaa !85
  %i.aux = getelementptr inbounds nuw i8, ptr %.31539922.i, i64 16
  store <4 x i32> %i.aut, ptr %i.aux, align 1, !tbaa !85
  %i.auy = getelementptr inbounds nuw [4 x i8], ptr %.31539922.i, i64 %i.db ; 2 uses
  store <4 x i32> %i.aum, ptr %i.auy, align 1, !tbaa !85
  %i.auz = getelementptr inbounds nuw i8, ptr %i.auy, i64 16
  store <4 x i32> %i.auu, ptr %i.auz, align 1, !tbaa !85
  %i.ava = getelementptr inbounds nuw i8, ptr %.31539922.i, i64 %.idx1575.i ; 2 uses
  store <4 x i32> %i.aun, ptr %i.ava, align 1, !tbaa !85
  %i.avb = getelementptr inbounds nuw i8, ptr %i.ava, i64 16
  store <4 x i32> %i.auv, ptr %i.avb, align 1, !tbaa !85
  %i.avc = getelementptr inbounds nuw i8, ptr %.31539922.i, i64 %.idx1576.i ; 2 uses
end_hunk_2
