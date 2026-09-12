Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/convolution_x86_avx512?download=true
inline.NumInlined: 384
inline.NumDeleted: 86
loop-unroll.NumCompletelyUnrolled: 154
loop-unroll.NumRuntimeUnrolled: 222
loop-unroll.NumUnrolled: 376
begin_hunk_0_@_ZN4ncnn22Convolution_x86_avx51215create_pipelineERKNS_6OptionE:bb.a
._crit_edge1734.us.i:                             ; preds = %._crit_edge1734.us.i.unr-lcssa, %.epil.preheader1067
  %.lcssa1031 = phi ptr [ %i.bot, %._crit_edge1734.us.i.unr-lcssa ], [ %i.bpf, %.epil.preheader1067 ] ; 2 uses
  %i.bpg = getelementptr inbounds nuw [4 x i8], ptr %.212241738.us.i, i64 %i.apx ; 2 uses
  %i.bph = add nuw nsw i32 %.212861736.us.i, 4    ; 3 uses
  %i.bpi = or disjoint i32 %i.bph, 3
  %i.bpj = icmp slt i32 %i.bpi, %i.cn
  br i1 %i.bpj, label %.preheader1578.us.i, label %.preheader1582.i, !llvm.loop !142

.preheader1582.i:                                 ; preds = %._crit_edge1734.us.i, %._crit_edge1722.i
  %.21286.lcssa.i = phi i32 [ %.11285.lcssa.i, %._crit_edge1722.i ], [ %i.bph, %._crit_edge1734.us.i ] ; 3 uses
  %.41246.lcssa.i = phi ptr [ %.21244.lcssa.i, %._crit_edge1722.i ], [ %.lcssa1031, %._crit_edge1734.us.i ] ; 2 uses
  %.21224.lcssa.i = phi ptr [ %.11223.lcssa.i, %._crit_edge1722.i ], [ %i.bpg, %._crit_edge1734.us.i ] ; 2 uses
  %i.bpk = or disjoint i32 %.21286.lcssa.i, 1
  %i.bpl = icmp slt i32 %i.bpk, %i.cn
  br i1 %i.bpl, label %.preheader1577.lr.ph.i, label %.preheader1581.i

.preheader1577.lr.ph.i:                           ; preds = %.preheader1582.i
  br i1 %i.apo, label %.preheader1577.us.i, label %._crit_edge1767.split.i

.preheader1577.us.i:                              ; preds = %.preheader1577.lr.ph.i, %._crit_edge1750.us.i
  %.312251754.us.i = phi ptr [ %i.bqt, %._crit_edge1750.us.i ], [ %.21224.lcssa.i, %.preheader1577.lr.ph.i ] ; 6 uses
  %.712491753.us.i = phi ptr [ %.lcssa1034, %._crit_edge1750.us.i ], [ %.41246.lcssa.i, %.preheader1577.lr.ph.i ] ; 2 uses
  %.312871752.us.i = phi i32 [ %i.bqu, %._crit_edge1750.us.i ], [ %.21286.lcssa.i, %.preheader1577.lr.ph.i ]
  br i1 %i.aqs, label %.epil.preheader1075, label %.preheader1577.us.i.new

.preheader1577.us.i.new:                          ; preds = %.preheader1577.us.i, %.preheader1577.us.i.new
  %indvars.iv2250.i = phi i64 [ %indvars.iv.next2251.i.3, %.preheader1577.us.i.new ], [ 0, %.preheader1577.us.i ] ; 5 uses
  %.812501749.us.i = phi ptr [ %i.bqm, %.preheader1577.us.i.new ], [ %.712491753.us.i, %.preheader1577.us.i ] ; 9 uses
  %niter1082 = phi i64 [ %niter1082.next.3, %.preheader1577.us.i.new ], [ 0, %.preheader1577.us.i ]
  %i.bpm = getelementptr inbounds nuw [4 x i8], ptr %.312251754.us.i, i64 %indvars.iv2250.i ; 2 uses
  %i.bpn = call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.bpm, <8 x i32> %i.apu, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.bpn, ptr %.812501749.us.i, align 32, !tbaa !85
  %i.bpo = getelementptr inbounds nuw [4 x i8], ptr %i.bpm, i64 %i.apv
  %i.bpp = getelementptr inbounds nuw i8, ptr %.812501749.us.i, i64 32
  %i.bpq = call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.bpo, <8 x i32> %i.apu, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.bpq, ptr %i.bpp, align 32, !tbaa !85
  %i.bpr = getelementptr inbounds nuw i8, ptr %.812501749.us.i, i64 64
  %i.bps = getelementptr inbounds nuw [4 x i8], ptr %.312251754.us.i, i64 %indvars.iv2250.i
  %i.bpt = getelementptr inbounds nuw i8, ptr %i.bps, i64 4 ; 2 uses
  %i.bpu = call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.bpt, <8 x i32> %i.apu, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.bpu, ptr %i.bpr, align 32, !tbaa !85
  %i.bpv = getelementptr inbounds nuw [4 x i8], ptr %i.bpt, i64 %i.apv
  %i.bpw = getelementptr inbounds nuw i8, ptr %.812501749.us.i, i64 96
  %i.bpx = call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.bpv, <8 x i32> %i.apu, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.bpx, ptr %i.bpw, align 32, !tbaa !85
  %i.bpy = getelementptr inbounds nuw i8, ptr %.812501749.us.i, i64 128
  %i.bpz = getelementptr inbounds nuw [4 x i8], ptr %.312251754.us.i, i64 %indvars.iv2250.i
  %i.bqa = getelementptr inbounds nuw i8, ptr %i.bpz, i64 8 ; 2 uses
  %i.bqb = call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.bqa, <8 x i32> %i.apu, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.bqb, ptr %i.bpy, align 32, !tbaa !85
  %i.bqc = getelementptr inbounds nuw [4 x i8], ptr %i.bqa, i64 %i.apv
  %i.bqd = getelementptr inbounds nuw i8, ptr %.812501749.us.i, i64 160
  %i.bqe = call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.bqc, <8 x i32> %i.apu, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.bqe, ptr %i.bqd, align 32, !tbaa !85
  %i.bqf = getelementptr inbounds nuw i8, ptr %.812501749.us.i, i64 192
  %i.bqg = getelementptr inbounds nuw [4 x i8], ptr %.312251754.us.i, i64 %indvars.iv2250.i
  %i.bqh = getelementptr inbounds nuw i8, ptr %i.bqg, i64 12 ; 2 uses
  %i.bqi = call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.bqh, <8 x i32> %i.apu, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.bqi, ptr %i.bqf, align 32, !tbaa !85
  %i.bqj = getelementptr inbounds nuw [4 x i8], ptr %i.bqh, i64 %i.apv
  %i.bqk = getelementptr inbounds nuw i8, ptr %.812501749.us.i, i64 224
  %i.bql = call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.bqj, <8 x i32> %i.apu, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.bql, ptr %i.bqk, align 32, !tbaa !85
  %i.bqm = getelementptr inbounds nuw i8, ptr %.812501749.us.i, i64 256 ; 3 uses
  %indvars.iv.next2251.i.3 = add nuw nsw i64 %indvars.iv2250.i, 4 ; 2 uses
  %niter1082.next.3 = add i64 %niter1082, 4       ; 2 uses
  %niter1082.ncmp.3 = icmp eq i64 %niter1082.next.3, %unroll_iter1081
  br i1 %niter1082.ncmp.3, label %._crit_edge1750.us.i.unr-lcssa, label %.preheader1577.us.i.new, !llvm.loop !143

._crit_edge1750.us.i.unr-lcssa:                   ; preds = %.preheader1577.us.i.new
  br i1 %lcmp.mod1078.not, label %._crit_edge1750.us.i, label %.epil.preheader1075

.epil.preheader1075:                              ; preds = %._crit_edge1750.us.i.unr-lcssa, %.preheader1577.us.i
  %indvars.iv2250.i.epil.init = phi i64 [ 0, %.preheader1577.us.i ], [ %indvars.iv.next2251.i.3, %._crit_edge1750.us.i.unr-lcssa ]
  %.812501749.us.i.epil.init = phi ptr [ %.712491753.us.i, %.preheader1577.us.i ], [ %i.bqm, %._crit_edge1750.us.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1080)
  br label %bb.lf

bb.lf:                                            ; preds = %bb.lf, %.epil.preheader1075
  %indvars.iv2250.i.epil = phi i64 [ %indvars.iv2250.i.epil.init, %.epil.preheader1075 ], [ %indvars.iv.next2251.i.epil, %bb.lf ] ; 2 uses
  %.812501749.us.i.epil = phi ptr [ %.812501749.us.i.epil.init, %.epil.preheader1075 ], [ %i.bqs, %bb.lf ] ; 3 uses
  %epil.iter1077 = phi i64 [ 0, %.epil.preheader1075 ], [ %epil.iter1077.next, %bb.lf ]
  %i.bqn = getelementptr inbounds nuw [4 x i8], ptr %.312251754.us.i, i64 %indvars.iv2250.i.epil ; 2 uses
  %i.bqo = call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.bqn, <8 x i32> %i.apu, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.bqo, ptr %.812501749.us.i.epil, align 32, !tbaa !85
  %i.bqp = getelementptr inbounds nuw [4 x i8], ptr %i.bqn, i64 %i.apv
  %i.bqq = getelementptr inbounds nuw i8, ptr %.812501749.us.i.epil, i64 32
  %i.bqr = call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.bqp, <8 x i32> %i.apu, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.bqr, ptr %i.bqq, align 32, !tbaa !85
  %i.bqs = getelementptr inbounds nuw i8, ptr %.812501749.us.i.epil, i64 64 ; 2 uses
  %indvars.iv.next2251.i.epil = add nuw nsw i64 %indvars.iv2250.i.epil, 1
  %epil.iter1077.next = add i64 %epil.iter1077, 1 ; 2 uses
  %epil.iter1077.cmp.not = icmp eq i64 %epil.iter1077.next, %xtraiter1076
  br i1 %epil.iter1077.cmp.not, label %._crit_edge1750.us.i, label %bb.lf, !llvm.loop !144

._crit_edge1750.us.i:                             ; preds = %bb.lf, %._crit_edge1750.us.i.unr-lcssa
  %.lcssa1034 = phi ptr [ %i.bqm, %._crit_edge1750.us.i.unr-lcssa ], [ %i.bqs, %bb.lf ] ; 2 uses
  %i.bqt = getelementptr inbounds nuw [4 x i8], ptr %.312251754.us.i, i64 %i.apz ; 2 uses
  %i.bqu = add nuw nsw i32 %.312871752.us.i, 2    ; 3 uses
  %i.bqv = or disjoint i32 %i.bqu, 1
  %i.bqw = icmp slt i32 %i.bqv, %i.cn
  br i1 %i.bqw, label %.preheader1577.us.i, label %.preheader1581.i, !llvm.loop !145

.preheader1581.i:                                 ; preds = %._crit_edge1750.us.i, %.preheader1582.i
  %.31287.lcssa.i = phi i32 [ %.21286.lcssa.i, %.preheader1582.i ], [ %i.bqu, %._crit_edge1750.us.i ] ; 2 uses
  %.71249.lcssa.i = phi ptr [ %.41246.lcssa.i, %.preheader1582.i ], [ %.lcssa1034, %._crit_edge1750.us.i ]
  %.31225.lcssa.i = phi ptr [ %.21224.lcssa.i, %.preheader1582.i ], [ %i.bqt, %._crit_edge1750.us.i ] ; 9 uses
  %i.bqx = icmp sge i32 %.31287.lcssa.i, %i.cn
  %brmerge2000.i = or i1 %i.aqa, %i.bqx
  br i1 %brmerge2000.i, label %._crit_edge1767.split.i, label %.preheader1576.i

.preheader1576.i:                                 ; preds = %.preheader1581.i, %._crit_edge1763.i
  %.1012521766.i = phi ptr [ %.lcssa1037, %._crit_edge1763.i ], [ %.71249.lcssa.i, %.preheader1581.i ] ; 2 uses
  %.412881765.i = phi i32 [ %i.brb, %._crit_edge1763.i ], [ %.31287.lcssa.i, %.preheader1581.i ]
  br i1 %i.aqt, label %.epil.preheader1083, label %.preheader1576.i.new

._crit_edge1763.i.unr-lcssa:                      ; preds = %.preheader1576.i.new
  br i1 %lcmp.mod1086.not, label %._crit_edge1763.i, label %.epil.preheader1083

.epil.preheader1083:                              ; preds = %._crit_edge1763.i.unr-lcssa, %.preheader1576.i
  %indvars.iv2255.i.epil.init = phi i64 [ 0, %.preheader1576.i ], [ %indvars.iv.next2256.i.7, %._crit_edge1763.i.unr-lcssa ]
  %.1112531762.i.epil.init = phi ptr [ %.1012521766.i, %.preheader1576.i ], [ %i.bsg, %._crit_edge1763.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1088)
  br label %bb.lg

bb.lg:                                            ; preds = %bb.lg, %.epil.preheader1083
  %indvars.iv2255.i.epil = phi i64 [ %indvars.iv2255.i.epil.init, %.epil.preheader1083 ], [ %indvars.iv.next2256.i.epil, %bb.lg ] ; 2 uses
  %.1112531762.i.epil = phi ptr [ %.1112531762.i.epil.init, %.epil.preheader1083 ], [ %i.bra, %bb.lg ] ; 2 uses
  %epil.iter1085 = phi i64 [ 0, %.epil.preheader1083 ], [ %epil.iter1085.next, %bb.lg ]
  %i.bqy = getelementptr inbounds nuw [4 x i8], ptr %.31225.lcssa.i, i64 %indvars.iv2255.i.epil
  %i.bqz = call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.bqy, <8 x i32> %i.apu, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.bqz, ptr %.1112531762.i.epil, align 32, !tbaa !85
  %i.bra = getelementptr inbounds nuw i8, ptr %.1112531762.i.epil, i64 32 ; 2 uses
  %indvars.iv.next2256.i.epil = add nuw nsw i64 %indvars.iv2255.i.epil, 1
  %epil.iter1085.next = add i64 %epil.iter1085, 1 ; 2 uses
  %epil.iter1085.cmp.not = icmp eq i64 %epil.iter1085.next, %xtraiter1084
  br i1 %epil.iter1085.cmp.not, label %._crit_edge1763.i, label %bb.lg, !llvm.loop !146

._crit_edge1763.i:                                ; preds = %bb.lg, %._crit_edge1763.i.unr-lcssa
  %.lcssa1037 = phi ptr [ %i.bsg, %._crit_edge1763.i.unr-lcssa ], [ %i.bra, %bb.lg ]
  %i.brb = add nuw nsw i32 %.412881765.i, 1       ; 2 uses
  %exitcond2260.not.i = icmp eq i32 %i.brb, %i.cn
  br i1 %exitcond2260.not.i, label %._crit_edge1767.split.i, label %.preheader1576.i, !llvm.loop !147

.preheader1576.i.new:                             ; preds = %.preheader1576.i, %.preheader1576.i.new
  %indvars.iv2255.i = phi i64 [ %indvars.iv.next2256.i.7, %.preheader1576.i.new ], [ 0, %.preheader1576.i ] ; 9 uses
  %.1112531762.i = phi ptr [ %i.bsg, %.preheader1576.i.new ], [ %.1012521766.i, %.preheader1576.i ] ; 9 uses
  %niter1090 = phi i64 [ %niter1090.next.7, %.preheader1576.i.new ], [ 0, %.preheader1576.i ]
  %i.brc = getelementptr inbounds nuw [4 x i8], ptr %.31225.lcssa.i, i64 %indvars.iv2255.i
  %i.brd = call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.brc, <8 x i32> %i.apu, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.brd, ptr %.1112531762.i, align 32, !tbaa !85
  %i.bre = getelementptr inbounds nuw i8, ptr %.1112531762.i, i64 32
  %i.brf = getelementptr inbounds nuw [4 x i8], ptr %.31225.lcssa.i, i64 %indvars.iv2255.i
  %i.brg = getelementptr inbounds nuw i8, ptr %i.brf, i64 4
  %i.brh = call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.brg, <8 x i32> %i.apu, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.brh, ptr %i.bre, align 32, !tbaa !85
  %i.bri = getelementptr inbounds nuw i8, ptr %.1112531762.i, i64 64
  %i.brj = getelementptr inbounds nuw [4 x i8], ptr %.31225.lcssa.i, i64 %indvars.iv2255.i
  %i.brk = getelementptr inbounds nuw i8, ptr %i.brj, i64 8
  %i.brl = call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.brk, <8 x i32> %i.apu, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.brl, ptr %i.bri, align 32, !tbaa !85
  %i.brm = getelementptr inbounds nuw i8, ptr %.1112531762.i, i64 96
  %i.brn = getelementptr inbounds nuw [4 x i8], ptr %.31225.lcssa.i, i64 %indvars.iv2255.i
  %i.bro = getelementptr inbounds nuw i8, ptr %i.brn, i64 12
  %i.brp = call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.bro, <8 x i32> %i.apu, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.brp, ptr %i.brm, align 32, !tbaa !85
  %i.brq = getelementptr inbounds nuw i8, ptr %.1112531762.i, i64 128
  %i.brr = getelementptr inbounds nuw [4 x i8], ptr %.31225.lcssa.i, i64 %indvars.iv2255.i
  %i.brs = getelementptr inbounds nuw i8, ptr %i.brr, i64 16
  %i.brt = call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.brs, <8 x i32> %i.apu, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.brt, ptr %i.brq, align 32, !tbaa !85
  %i.bru = getelementptr inbounds nuw i8, ptr %.1112531762.i, i64 160
  %i.brv = getelementptr inbounds nuw [4 x i8], ptr %.31225.lcssa.i, i64 %indvars.iv2255.i
  %i.brw = getelementptr inbounds nuw i8, ptr %i.brv, i64 20
  %i.brx = call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.brw, <8 x i32> %i.apu, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.brx, ptr %i.bru, align 32, !tbaa !85
  %i.bry = getelementptr inbounds nuw i8, ptr %.1112531762.i, i64 192
  %i.brz = getelementptr inbounds nuw [4 x i8], ptr %.31225.lcssa.i, i64 %indvars.iv2255.i
  %i.bsa = getelementptr inbounds nuw i8, ptr %i.brz, i64 24
  %i.bsb = call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.bsa, <8 x i32> %i.apu, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.bsb, ptr %i.bry, align 32, !tbaa !85
  %i.bsc = getelementptr inbounds nuw i8, ptr %.1112531762.i, i64 224
  %i.bsd = getelementptr inbounds nuw [4 x i8], ptr %.31225.lcssa.i, i64 %indvars.iv2255.i
  %i.bse = getelementptr inbounds nuw i8, ptr %i.bsd, i64 28
  %i.bsf = call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.bse, <8 x i32> %i.apu, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.bsf, ptr %i.bsc, align 32, !tbaa !85
  %i.bsg = getelementptr inbounds nuw i8, ptr %.1112531762.i, i64 256 ; 3 uses
  %indvars.iv.next2256.i.7 = add nuw nsw i64 %indvars.iv2255.i, 8 ; 2 uses
  %niter1090.next.7 = add i64 %niter1090, 8       ; 2 uses
  %niter1090.ncmp.7 = icmp eq i64 %niter1090.next.7, %unroll_iter1089
  br i1 %niter1090.ncmp.7, label %._crit_edge1763.i.unr-lcssa, label %.preheader1576.i.new, !llvm.loop !148

._crit_edge1767.split.i:                          ; preds = %._crit_edge1763.i, %.preheader1581.i, %.preheader1577.lr.ph.i, %.preheader1578.lr.ph.i
  %indvars.iv.next2264.i = add nuw nsw i64 %indvars.iv2263.i, 8 ; 3 uses
  %i.bsh = icmp slt i64 %indvars.iv.next2264.i, %invariant.op.i
  %indvars.iv.next2207.i = add i32 %indvars.iv2206.i, %i.aqh
  %indvars.iv.next2262.i = add i32 %indvars.iv2261.i, 8
  br i1 %i.bsh, label %_ZN4ncnn3MatD2Ev.exit1329.i, label %.preheader1575.loopexit.i, !llvm.loop !149

.preheader1566.loopexit.i:                        ; preds = %._crit_edge1853.split.i
  %i.bsi = trunc nsw i64 %indvars.iv.next2314.i to i32
  br label %.preheader1566.i

.preheader1566.i:                                 ; preds = %.preheader1566.loopexit.i, %.preheader1575.i
  %.2.lcssa.i = phi i32 [ %.1.lcssa.i, %.preheader1575.i ], [ %i.bsi, %.preheader1566.loopexit.i ] ; 4 uses
  %i.bsj = or disjoint i32 %.2.lcssa.i, 1         ; 3 uses
  %i.bsk = icmp slt i32 %i.bsj, %i.ro
  br i1 %i.bsk, label %_ZN4ncnn3MatD2Ev.exit1327.lr.ph.i, label %.preheader1556.i

_ZN4ncnn3MatD2Ev.exit1327.lr.ph.i:                ; preds = %.preheader1566.i
  %i.bsl = mul i32 %i.afh, %i.cn                  ; 5 uses
  %i.bsm = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.bsn = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.bso = insertelement <4 x i32> poison, i32 %i.afh, i64 0
  %i.bsp = shufflevector <4 x i32> %i.bso, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bsq = mul <4 x i32> %i.bsp, <i32 0, i32 1, i32 2, i32 3> ; 10 uses
  %i.bsr = insertelement <8 x i32> poison, i32 %i.afh, i64 0
  %i.bss = shufflevector <8 x i32> %i.bsr, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.bst = mul <8 x i32> %i.bss, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 10 uses
  %i.bsu = insertelement <16 x i32> poison, i32 %i.afh, i64 0
  %i.bsv = shufflevector <16 x i32> %i.bsu, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.bsw = mul <16 x i32> %i.bsv, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 10 uses
  %i.bsx = icmp sgt i32 %i.cn, 15
  %i.bsy = icmp sgt i32 %i.afh, 0                 ; 4 uses
  %i.bsz = shl i32 %i.afh, 4
  %i.bta = sext i32 %i.bsz to i64                 ; 3 uses
  %i.btb = shl i32 %i.afh, 3
  %i.btc = sext i32 %i.btb to i64                 ; 3 uses
  %i.btd = shl i32 %i.afh, 2
  %i.bte = sext i32 %i.btd to i64                 ; 2 uses
  %i.btf = sext i32 %i.afh to i64                 ; 11 uses
  %i.btg = shl i32 %i.afh, 1                      ; 2 uses
  %i.bth = sext i32 %i.btg to i64                 ; 3 uses
  %i.bti = icmp slt i32 %i.afh, 1
  %i.btj = add i32 %i.cn, -16                     ; 2 uses
  %i.btk = lshr i32 %i.btj, 2
  %i.btl = and i32 %i.btk, 1073741820
  %narrow2435.i = add nuw nsw i32 %i.btl, 4
  %i.btm = zext nneg i32 %narrow2435.i to i64
  %i.btn = mul nsw i64 %i.bta, %i.btm
  %i.bto = mul i32 %i.bsl, %.2.lcssa.i
  %i.btp = shl i32 %i.bsl, 1                      ; 2 uses
  %i.btq = mul i32 %i.bsj, %i.bsl
  %i.btr = and i32 %i.btj, -16
  %i.bts = add nuw i32 %i.btr, 16                 ; 4 uses
  %i.btt = add i32 %i.cn, -8
  %i.btu = sext i32 %.2.lcssa.i to i64
  %i.btv = sext i32 %i.ro to i64
  %i.btw = or disjoint i32 %i.bts, 7
  %i.btx = icmp slt i32 %i.btw, %i.cn
  %wide.trip.count2326.i = zext i32 %i.afh to i64 ; 26 uses
  %i.bty = shl nuw nsw i64 %wide.trip.count2326.i, 3
  %i.btz = shl nuw nsw i64 %wide.trip.count2326.i, 2 ; 5 uses
  %i.bua = shl nuw nsw i64 %wide.trip.count2326.i, 4
  %i.bub = shl nuw nsw i64 %i.btf, 2              ; 3 uses
  %i.buc = add nuw nsw i64 %i.bub, %i.btz         ; 2 uses
  %i.bud = shl nsw i64 %i.bth, 2
  %i.bue = add i32 %i.cn, -2
  %i.buf = add nsw i64 %wide.trip.count2326.i, -1 ; 3 uses
  %xtraiter1108 = and i64 %wide.trip.count2326.i, 3 ; 3 uses
  %i.bug = icmp ult i64 %i.buf, 3
  %unroll_iter1113 = and i64 %wide.trip.count2326.i, 2147483644
  %lcmp.mod1110.not = icmp eq i64 %xtraiter1108, 0
  %lcmp.mod1112 = icmp ne i64 %xtraiter1108, 0
  %xtraiter1116 = and i64 %wide.trip.count2326.i, 3 ; 3 uses
  %i.buh = icmp ult i64 %i.buf, 3
  %unroll_iter1121 = and i64 %wide.trip.count2326.i, 2147483644
  %lcmp.mod1118.not = icmp eq i64 %xtraiter1116, 0
  %lcmp.mod1120 = icmp ne i64 %xtraiter1116, 0
  %xtraiter1124 = and i64 %wide.trip.count2326.i, 3 ; 3 uses
  %i.bui = icmp ult i64 %i.buf, 3
  %unroll_iter1129 = and i64 %wide.trip.count2326.i, 2147483644
  %lcmp.mod1126.not = icmp eq i64 %xtraiter1124, 0
  %lcmp.mod1128 = icmp ne i64 %xtraiter1124, 0
  %min.iters.check790 = icmp ult i32 %i.afh, 4
  %stride.check778 = icmp slt i32 %i.btg, 0
  %min.iters.check792 = icmp ult i32 %i.afh, 16
  %i.buj = and i64 %wide.trip.count2326.i, 12
  %n.vec794 = and i64 %wide.trip.count2326.i, 2147483632 ; 5 uses
  %i.buk = shl nuw nsw i64 %n.vec794, 4
  %cmp.n805 = icmp eq i64 %n.vec794, %wide.trip.count2326.i
  %min.epilog.iters.check810 = icmp eq i64 %i.buj, 0
  %n.vec812 = and i64 %wide.trip.count2326.i, 2147483644 ; 4 uses
  %i.bul = shl nuw nsw i64 %n.vec812, 4
  %cmp.n823 = icmp eq i64 %n.vec812, %wide.trip.count2326.i
  %xtraiter1131 = and i64 %wide.trip.count2326.i, 1
  %lcmp.mod1132.not = icmp eq i64 %xtraiter1131, 0
  %i.bum = add nsw i64 %wide.trip.count2326.i, -1
  %min.iters.check = icmp ult i32 %i.afh, 4
  %min.iters.check748 = icmp ult i32 %i.afh, 16
  %i.bun = and i64 %wide.trip.count2326.i, 12
  %n.vec = and i64 %wide.trip.count2326.i, 2147483632 ; 5 uses
  %i.buo = shl nuw nsw i64 %n.vec, 3
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count2326.i
  %min.epilog.iters.check = icmp eq i64 %i.bun, 0
  %n.vec750 = and i64 %wide.trip.count2326.i, 2147483644 ; 4 uses
  %i.bup = shl nuw nsw i64 %n.vec750, 3
  %cmp.n757 = icmp eq i64 %n.vec750, %wide.trip.count2326.i
  %xtraiter1133 = and i64 %wide.trip.count2326.i, 3 ; 2 uses
  %lcmp.mod1134.not = icmp eq i64 %xtraiter1133, 0
  br label %_ZN4ncnn3MatD2Ev.exit1327.i

_ZN4ncnn3MatD2Ev.exit1328.i:                      ; preds = %._crit_edge1853.split.i, %_ZN4ncnn3MatD2Ev.exit1328.lr.ph.i
  %indvars.iv2313.i = phi i64 [ %i.bgl, %_ZN4ncnn3MatD2Ev.exit1328.lr.ph.i ], [ %indvars.iv.next2314.i, %._crit_edge1853.split.i ] ; 2 uses
  %i.buq = phi i32 [ %i.beu, %_ZN4ncnn3MatD2Ev.exit1328.lr.ph.i ], [ %i.ccv, %._crit_edge1853.split.i ]
  %i.bur = phi <4 x i32> [ %i.bgh, %_ZN4ncnn3MatD2Ev.exit1328.lr.ph.i ], [ %i.ccu, %._crit_edge1853.split.i ] ; 2 uses
  %i.bus = sext <4 x i32> %i.bur to <4 x i64>
  %i.but = shl nsw <4 x i64> %i.bus, splat (i64 2) ; 4 uses
  %i.buu = load ptr, ptr %i.aff, align 8, !tbaa !22 ; 5 uses
  %i.buv = trunc i64 %indvars.iv2313.i to i32     ; 6 uses
  %i.buw = mul i32 %i.bgd, %i.buv
  %i.bux = sext i32 %i.buw to i64
  %i.buy = getelementptr inbounds [4 x i8], ptr %i.buu, i64 %i.bux ; 2 uses
  %i.buz = add i32 %i.buv, 1
  %i.bva = mul i32 %i.buz, %i.bgd
  %i.bvb = sext i32 %i.bva to i64
  %i.bvc = getelementptr inbounds [4 x i8], ptr %i.buu, i64 %i.bvb ; 2 uses
  %i.bvd = add i32 %i.buv, 2
  %i.bve = mul i32 %i.bvd, %i.bgd
  %i.bvf = sext i32 %i.bve to i64
  %i.bvg = getelementptr inbounds [4 x i8], ptr %i.buu, i64 %i.bvf ; 2 uses
  %i.bvh = mul i32 %i.buq, %i.bgd
  %i.bvi = sext i32 %i.bvh to i64
  %i.bvj = getelementptr inbounds [4 x i8], ptr %i.buu, i64 %i.bvi ; 2 uses
  %i.bvk = lshr i32 %i.buv, 4
  %i.bvl = lshr i32 %i.buv, 3
  %i.bvm = and i32 %i.bvl, 1
  %i.bvn = add nuw nsw i32 %i.bvm, %i.bvk
  %i.bvo = lshr i32 %i.buv, 2
  %i.bvp = and i32 %i.bvo, 1
  %i.bvq = add nuw nsw i32 %i.bvn, %i.bvp
  %i.bvr = load ptr, ptr %i.afg, align 8, !tbaa !22, !noalias !228
  %i.bvs = load i64, ptr %i.bez, align 8, !tbaa !23, !noalias !228
  %i.bvt = zext nneg i32 %i.bvq to i64
  %i.bvu = mul i64 %i.bvs, %i.bvt
  %i.bvv = load i64, ptr %i.bfa, align 8, !tbaa !64, !noalias !228
  %i.bvw = mul i64 %i.bvu, %i.bvv
  %i.bvx = getelementptr inbounds nuw i8, ptr %i.bvr, i64 %i.bvw ; 4 uses
  br i1 %i.bfk, label %.preheader1571.lr.ph.i, label %.preheader1574.i

.preheader1571.lr.ph.i:                           ; preds = %_ZN4ncnn3MatD2Ev.exit1328.i
  br i1 %i.bfl, label %.preheader1571.us.i, label %.preheader1574.thread.i

.preheader1571.us.i:                              ; preds = %.preheader1571.lr.ph.i, %._crit_edge1772.us.i
  %.012551779.us.i = phi i32 [ %i.bxa, %._crit_edge1772.us.i ], [ 0, %.preheader1571.lr.ph.i ]
  %.012601778.us.i = phi ptr [ %i.bwv, %._crit_edge1772.us.i ], [ %i.bvx, %.preheader1571.lr.ph.i ]
  %.012711777.us.i = phi ptr [ %i.bwz, %._crit_edge1772.us.i ], [ %i.bvj, %.preheader1571.lr.ph.i ] ; 2 uses
  %.012741776.us.i = phi ptr [ %i.bwy, %._crit_edge1772.us.i ], [ %i.bvg, %.preheader1571.lr.ph.i ] ; 2 uses
  %.012771775.us.i = phi ptr [ %i.bwx, %._crit_edge1772.us.i ], [ %i.bvc, %.preheader1571.lr.ph.i ] ; 2 uses
  %.012801774.us.i = phi ptr [ %i.bww, %._crit_edge1772.us.i ], [ %i.buy, %.preheader1571.lr.ph.i ] ; 2 uses
  br label %bb.lh

bb.lh:                                            ; preds = %bb.lh, %.preheader1571.us.i
  %indvars.iv2281.i = phi i64 [ 0, %.preheader1571.us.i ], [ %indvars.iv.next2282.i, %bb.lh ] ; 5 uses
  %.112611770.us.i = phi ptr [ %.012601778.us.i, %.preheader1571.us.i ], [ %i.bwv, %bb.lh ] ; 5 uses
  %i.bvy = getelementptr inbounds nuw [4 x i8], ptr %.012801774.us.i, i64 %indvars.iv2281.i
  %i.bvz = getelementptr inbounds nuw [4 x i8], ptr %.012771775.us.i, i64 %indvars.iv2281.i
  %i.bwa = getelementptr inbounds nuw [4 x i8], ptr %.012741776.us.i, i64 %indvars.iv2281.i
  %i.bwb = getelementptr inbounds nuw [4 x i8], ptr %.012711777.us.i, i64 %indvars.iv2281.i
  %i.bwc = call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.bvy, <16 x i32> %i.bfj, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.bwd = call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.bvz, <16 x i32> %i.bfj, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.bwe = call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.bwa, <16 x i32> %i.bfj, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.bwf = call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.bwb, <16 x i32> %i.bfj, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.bwg = shufflevector <16 x float> %i.bwc, <16 x float> %i.bwd, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.bwh = shufflevector <16 x float> %i.bwc, <16 x float> %i.bwd, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bwi = shufflevector <16 x float> %i.bwe, <16 x float> %i.bwf, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.bwj = shufflevector <16 x float> %i.bwe, <16 x float> %i.bwf, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bwk = shufflevector <16 x float> %i.bwg, <16 x float> %i.bwi, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 8, i32 9, i32 24, i32 25, i32 2, i32 3, i32 18, i32 19, i32 10, i32 11, i32 26, i32 27> ; 2 uses
  %i.bwl = shufflevector <16 x float> %i.bwh, <16 x float> %i.bwj, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 8, i32 9, i32 24, i32 25, i32 2, i32 3, i32 18, i32 19, i32 10, i32 11, i32 26, i32 27> ; 2 uses
  %i.bwm = shufflevector <16 x float> %i.bwg, <16 x float> %i.bwi, <16 x i32> <i32 4, i32 5, i32 20, i32 21, i32 12, i32 13, i32 28, i32 29, i32 6, i32 7, i32 22, i32 23, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.bwn = shufflevector <16 x float> %i.bwh, <16 x float> %i.bwj, <16 x i32> <i32 4, i32 5, i32 20, i32 21, i32 12, i32 13, i32 28, i32 29, i32 6, i32 7, i32 22, i32 23, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.bwo = shufflevector <16 x float> %i.bwk, <16 x float> %i.bwl, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.bwp = shufflevector <16 x float> %i.bwm, <16 x float> %i.bwn, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.bwq = shufflevector <16 x float> %i.bwk, <16 x float> %i.bwl, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.bwr = shufflevector <16 x float> %i.bwm, <16 x float> %i.bwn, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  store <16 x float> %i.bwo, ptr %.112611770.us.i, align 1, !tbaa !85
  %i.bws = getelementptr inbounds nuw i8, ptr %.112611770.us.i, i64 64
  store <16 x float> %i.bwp, ptr %i.bws, align 1, !tbaa !85
  %i.bwt = getelementptr inbounds nuw i8, ptr %.112611770.us.i, i64 128
  store <16 x float> %i.bwq, ptr %i.bwt, align 1, !tbaa !85
  %i.bwu = getelementptr inbounds nuw i8, ptr %.112611770.us.i, i64 192
  store <16 x float> %i.bwr, ptr %i.bwu, align 1, !tbaa !85
  %i.bwv = getelementptr inbounds nuw i8, ptr %.112611770.us.i, i64 256 ; 3 uses
  %indvars.iv.next2282.i = add nuw nsw i64 %indvars.iv2281.i, 1 ; 2 uses
  %exitcond2285.not.i = icmp eq i64 %indvars.iv.next2282.i, %wide.trip.count2284.i
  br i1 %exitcond2285.not.i, label %._crit_edge1772.us.i, label %bb.lh, !llvm.loop !152

._crit_edge1772.us.i:                             ; preds = %bb.lh
  %i.bww = getelementptr inbounds nuw [4 x i8], ptr %.012801774.us.i, i64 %i.bfn ; 2 uses
  %i.bwx = getelementptr inbounds nuw [4 x i8], ptr %.012771775.us.i, i64 %i.bfn ; 2 uses
  %i.bwy = getelementptr inbounds nuw [4 x i8], ptr %.012741776.us.i, i64 %i.bfn ; 2 uses
  %i.bwz = getelementptr inbounds nuw [4 x i8], ptr %.012711777.us.i, i64 %i.bfn ; 2 uses
  %i.bxa = add nuw nsw i32 %.012551779.us.i, 16   ; 2 uses
  %i.bxb = or disjoint i32 %i.bxa, 15
  %i.bxc = icmp slt i32 %i.bxb, %i.cn
  br i1 %i.bxc, label %.preheader1571.us.i, label %.preheader1574.i, !llvm.loop !153

.preheader1574.i:                                 ; preds = %._crit_edge1772.us.i, %_ZN4ncnn3MatD2Ev.exit1328.i
  %.01280.lcssa.i = phi ptr [ %i.buy, %_ZN4ncnn3MatD2Ev.exit1328.i ], [ %i.bww, %._crit_edge1772.us.i ] ; 3 uses
  %.01277.lcssa.i = phi ptr [ %i.bvc, %_ZN4ncnn3MatD2Ev.exit1328.i ], [ %i.bwx, %._crit_edge1772.us.i ] ; 3 uses
  %.01274.lcssa.i = phi ptr [ %i.bvg, %_ZN4ncnn3MatD2Ev.exit1328.i ], [ %i.bwy, %._crit_edge1772.us.i ] ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN4ncnn22Convolution_x86_avx51215create_pipelineERKNS_6OptionE:bb.a

._crit_edge1816.us.i:                             ; preds = %bb.lj
  %i.bzo = getelementptr inbounds nuw [4 x i8], ptr %.212821818.us.i, i64 %i.bfr ; 2 uses
  %i.bzp = getelementptr inbounds nuw [4 x i8], ptr %.212791819.us.i, i64 %i.bfr
  %i.bzq = getelementptr inbounds nuw [4 x i8], ptr %.212761820.us.i, i64 %i.bfr
  %i.bzr = getelementptr inbounds nuw [4 x i8], ptr %.212731821.us.i, i64 %i.bfr
  %i.bzs = add nuw nsw i32 %.212571823.us.i, 4    ; 3 uses
  %i.bzt = or disjoint i32 %i.bzs, 3
  %i.bzu = icmp slt i32 %i.bzt, %i.cn
  br i1 %i.bzu, label %.preheader1569.us.i, label %._crit_edge1824.i, !llvm.loop !157

._crit_edge1824.i:                                ; preds = %._crit_edge1816.us.i, %.preheader1573.i
  %.21282.lcssa.i = phi ptr [ %.11281.lcssa.i, %.preheader1573.i ], [ %i.bzo, %._crit_edge1816.us.i ] ; 2 uses
  %.41264.lcssa.i = phi ptr [ %.21262.lcssa.i, %.preheader1573.i ], [ %i.bzn, %._crit_edge1816.us.i ] ; 2 uses
  %.21257.lcssa.i = phi i32 [ %.11256.lcssa.i, %.preheader1573.i ], [ %i.bzs, %._crit_edge1816.us.i ] ; 3 uses
  %i.bzv = or disjoint i32 %.21257.lcssa.i, 1
  %i.bzw = icmp slt i32 %i.bzv, %i.cn
  br i1 %i.bzw, label %.preheader1568.lr.ph.i, label %.preheader1572.i

.preheader1568.lr.ph.i:                           ; preds = %._crit_edge1824.i
  br i1 %i.bfl, label %.preheader1568.us.i, label %._crit_edge1853.split.i

.preheader1568.us.i:                              ; preds = %.preheader1568.lr.ph.i, %._crit_edge1836.us.i
  %.312581840.us.i = phi i32 [ %i.cbf, %._crit_edge1836.us.i ], [ %.21257.lcssa.i, %.preheader1568.lr.ph.i ]
  %.612661839.us.i = phi ptr [ %.lcssa1015, %._crit_edge1836.us.i ], [ %.41264.lcssa.i, %.preheader1568.lr.ph.i ] ; 2 uses
  %.312831838.us.i = phi ptr [ %i.cbe, %._crit_edge1836.us.i ], [ %.21282.lcssa.i, %.preheader1568.lr.ph.i ] ; 6 uses
  br i1 %i.bgs, label %.epil.preheader1091, label %.preheader1568.us.i.new

.preheader1568.us.i.new:                          ; preds = %.preheader1568.us.i, %.preheader1568.us.i.new
  %indvars.iv2302.i = phi i64 [ %indvars.iv.next2303.i.3, %.preheader1568.us.i.new ], [ 0, %.preheader1568.us.i ] ; 5 uses
  %.712671834.us.i = phi ptr [ %i.cax, %.preheader1568.us.i.new ], [ %.612661839.us.i, %.preheader1568.us.i ] ; 9 uses
  %niter1098 = phi i64 [ %niter1098.next.3, %.preheader1568.us.i.new ], [ 0, %.preheader1568.us.i ]
  %i.bzx = getelementptr inbounds nuw [4 x i8], ptr %.312831838.us.i, i64 %indvars.iv2302.i ; 2 uses
  %i.bzy = call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %i.bzx, <4 x i32> %i.bft, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <4 x float> %i.bzy, ptr %.712671834.us.i, align 16, !tbaa !85
  %i.bzz = getelementptr inbounds nuw [4 x i8], ptr %i.bzx, i64 %i.bfu
  %i.caa = getelementptr inbounds nuw i8, ptr %.712671834.us.i, i64 16
  %i.cab = call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %i.bzz, <4 x i32> %i.bft, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <4 x float> %i.cab, ptr %i.caa, align 16, !tbaa !85
  %i.cac = getelementptr inbounds nuw i8, ptr %.712671834.us.i, i64 32
  %i.cad = getelementptr inbounds nuw [4 x i8], ptr %.312831838.us.i, i64 %indvars.iv2302.i
  %i.cae = getelementptr inbounds nuw i8, ptr %i.cad, i64 4 ; 2 uses
  %i.caf = call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.cae, <4 x i32> %i.bft, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <4 x float> %i.caf, ptr %i.cac, align 16, !tbaa !85
  %i.cag = getelementptr inbounds nuw [4 x i8], ptr %i.cae, i64 %i.bfu
  %i.cah = getelementptr inbounds nuw i8, ptr %.712671834.us.i, i64 48
  %i.cai = call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.cag, <4 x i32> %i.bft, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <4 x float> %i.cai, ptr %i.cah, align 16, !tbaa !85
  %i.caj = getelementptr inbounds nuw i8, ptr %.712671834.us.i, i64 64
  %i.cak = getelementptr inbounds nuw [4 x i8], ptr %.312831838.us.i, i64 %indvars.iv2302.i
  %i.cal = getelementptr inbounds nuw i8, ptr %i.cak, i64 8 ; 2 uses
  %i.cam = call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.cal, <4 x i32> %i.bft, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <4 x float> %i.cam, ptr %i.caj, align 16, !tbaa !85
  %i.can = getelementptr inbounds nuw [4 x i8], ptr %i.cal, i64 %i.bfu
  %i.cao = getelementptr inbounds nuw i8, ptr %.712671834.us.i, i64 80
  %i.cap = call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.can, <4 x i32> %i.bft, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <4 x float> %i.cap, ptr %i.cao, align 16, !tbaa !85
  %i.caq = getelementptr inbounds nuw i8, ptr %.712671834.us.i, i64 96
  %i.car = getelementptr inbounds nuw [4 x i8], ptr %.312831838.us.i, i64 %indvars.iv2302.i
  %i.cas = getelementptr inbounds nuw i8, ptr %i.car, i64 12 ; 2 uses
  %i.cat = call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.cas, <4 x i32> %i.bft, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <4 x float> %i.cat, ptr %i.caq, align 16, !tbaa !85
  %i.cau = getelementptr inbounds nuw [4 x i8], ptr %i.cas, i64 %i.bfu
  %i.cav = getelementptr inbounds nuw i8, ptr %.712671834.us.i, i64 112
  %i.caw = call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.cau, <4 x i32> %i.bft, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <4 x float> %i.caw, ptr %i.cav, align 16, !tbaa !85
  %i.cax = getelementptr inbounds nuw i8, ptr %.712671834.us.i, i64 128 ; 3 uses
  %indvars.iv.next2303.i.3 = add nuw nsw i64 %indvars.iv2302.i, 4 ; 2 uses
  %niter1098.next.3 = add i64 %niter1098, 4       ; 2 uses
  %niter1098.ncmp.3 = icmp eq i64 %niter1098.next.3, %unroll_iter1097
  br i1 %niter1098.ncmp.3, label %._crit_edge1836.us.i.unr-lcssa, label %.preheader1568.us.i.new, !llvm.loop !158

._crit_edge1836.us.i.unr-lcssa:                   ; preds = %.preheader1568.us.i.new
  br i1 %lcmp.mod1094.not, label %._crit_edge1836.us.i, label %.epil.preheader1091

.epil.preheader1091:                              ; preds = %._crit_edge1836.us.i.unr-lcssa, %.preheader1568.us.i
  %indvars.iv2302.i.epil.init = phi i64 [ 0, %.preheader1568.us.i ], [ %indvars.iv.next2303.i.3, %._crit_edge1836.us.i.unr-lcssa ]
  %.712671834.us.i.epil.init = phi ptr [ %.612661839.us.i, %.preheader1568.us.i ], [ %i.cax, %._crit_edge1836.us.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1096)
  br label %bb.lk

bb.lk:                                            ; preds = %bb.lk, %.epil.preheader1091
  %indvars.iv2302.i.epil = phi i64 [ %indvars.iv2302.i.epil.init, %.epil.preheader1091 ], [ %indvars.iv.next2303.i.epil, %bb.lk ] ; 2 uses
  %.712671834.us.i.epil = phi ptr [ %.712671834.us.i.epil.init, %.epil.preheader1091 ], [ %i.cbd, %bb.lk ] ; 3 uses
  %epil.iter1093 = phi i64 [ 0, %.epil.preheader1091 ], [ %epil.iter1093.next, %bb.lk ]
  %i.cay = getelementptr inbounds nuw [4 x i8], ptr %.312831838.us.i, i64 %indvars.iv2302.i.epil ; 2 uses
  %i.caz = call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %i.cay, <4 x i32> %i.bft, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <4 x float> %i.caz, ptr %.712671834.us.i.epil, align 16, !tbaa !85
  %i.cba = getelementptr inbounds nuw [4 x i8], ptr %i.cay, i64 %i.bfu
  %i.cbb = getelementptr inbounds nuw i8, ptr %.712671834.us.i.epil, i64 16
  %i.cbc = call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %i.cba, <4 x i32> %i.bft, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <4 x float> %i.cbc, ptr %i.cbb, align 16, !tbaa !85
  %i.cbd = getelementptr inbounds nuw i8, ptr %.712671834.us.i.epil, i64 32 ; 2 uses
  %indvars.iv.next2303.i.epil = add nuw nsw i64 %indvars.iv2302.i.epil, 1
  %epil.iter1093.next = add i64 %epil.iter1093, 1 ; 2 uses
  %epil.iter1093.cmp.not = icmp eq i64 %epil.iter1093.next, %xtraiter1092
  br i1 %epil.iter1093.cmp.not, label %._crit_edge1836.us.i, label %bb.lk, !llvm.loop !159

._crit_edge1836.us.i:                             ; preds = %bb.lk, %._crit_edge1836.us.i.unr-lcssa
  %.lcssa1015 = phi ptr [ %i.cax, %._crit_edge1836.us.i.unr-lcssa ], [ %i.cbd, %bb.lk ] ; 2 uses
  %i.cbe = getelementptr inbounds nuw [4 x i8], ptr %.312831838.us.i, i64 %i.bfw ; 2 uses
  %i.cbf = add nuw nsw i32 %.312581840.us.i, 2    ; 3 uses
  %i.cbg = or disjoint i32 %i.cbf, 1
  %i.cbh = icmp slt i32 %i.cbg, %i.cn
  br i1 %i.cbh, label %.preheader1568.us.i, label %.preheader1572.i, !llvm.loop !160

.preheader1572.i:                                 ; preds = %._crit_edge1836.us.i, %._crit_edge1824.i
  %.31283.lcssa.i = phi ptr [ %.21282.lcssa.i, %._crit_edge1824.i ], [ %i.cbe, %._crit_edge1836.us.i ] ; 9 uses
  %.61266.lcssa.i = phi ptr [ %.41264.lcssa.i, %._crit_edge1824.i ], [ %.lcssa1015, %._crit_edge1836.us.i ]
  %.31258.lcssa.i = phi i32 [ %.21257.lcssa.i, %._crit_edge1824.i ], [ %i.cbf, %._crit_edge1836.us.i ] ; 2 uses
  %i.cbi = icmp sge i32 %.31258.lcssa.i, %i.cn
  %brmerge2003.i = or i1 %i.bfx, %i.cbi
  br i1 %brmerge2003.i, label %._crit_edge1853.split.i, label %.preheader1567.i

.preheader1567.i:                                 ; preds = %.preheader1572.i, %._crit_edge1849.i
  %.412591852.i = phi i32 [ %i.cbm, %._crit_edge1849.i ], [ %.31258.lcssa.i, %.preheader1572.i ]
  %.912691851.i = phi ptr [ %.lcssa1018, %._crit_edge1849.i ], [ %.61266.lcssa.i, %.preheader1572.i ] ; 2 uses
  br i1 %i.bgt, label %.epil.preheader1099, label %.preheader1567.i.new

._crit_edge1849.i.unr-lcssa:                      ; preds = %.preheader1567.i.new
  br i1 %lcmp.mod1102.not, label %._crit_edge1849.i, label %.epil.preheader1099

.epil.preheader1099:                              ; preds = %._crit_edge1849.i.unr-lcssa, %.preheader1567.i
  %indvars.iv2307.i.epil.init = phi i64 [ 0, %.preheader1567.i ], [ %indvars.iv.next2308.i.7, %._crit_edge1849.i.unr-lcssa ]
  %.1012701847.i.epil.init = phi ptr [ %.912691851.i, %.preheader1567.i ], [ %i.ccr, %._crit_edge1849.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1104)
  br label %bb.ll

bb.ll:                                            ; preds = %bb.ll, %.epil.preheader1099
  %indvars.iv2307.i.epil = phi i64 [ %indvars.iv2307.i.epil.init, %.epil.preheader1099 ], [ %indvars.iv.next2308.i.epil, %bb.ll ] ; 2 uses
  %.1012701847.i.epil = phi ptr [ %.1012701847.i.epil.init, %.epil.preheader1099 ], [ %i.cbl, %bb.ll ] ; 2 uses
  %epil.iter1101 = phi i64 [ 0, %.epil.preheader1099 ], [ %epil.iter1101.next, %bb.ll ]
  %i.cbj = getelementptr inbounds nuw [4 x i8], ptr %.31283.lcssa.i, i64 %indvars.iv2307.i.epil
  %i.cbk = call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %i.cbj, <4 x i32> %i.bft, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <4 x float> %i.cbk, ptr %.1012701847.i.epil, align 16, !tbaa !85
  %i.cbl = getelementptr inbounds nuw i8, ptr %.1012701847.i.epil, i64 16 ; 2 uses
  %indvars.iv.next2308.i.epil = add nuw nsw i64 %indvars.iv2307.i.epil, 1
  %epil.iter1101.next = add i64 %epil.iter1101, 1 ; 2 uses
  %epil.iter1101.cmp.not = icmp eq i64 %epil.iter1101.next, %xtraiter1100
  br i1 %epil.iter1101.cmp.not, label %._crit_edge1849.i, label %bb.ll, !llvm.loop !161

._crit_edge1849.i:                                ; preds = %bb.ll, %._crit_edge1849.i.unr-lcssa
  %.lcssa1018 = phi ptr [ %i.ccr, %._crit_edge1849.i.unr-lcssa ], [ %i.cbl, %bb.ll ]
  %i.cbm = add nuw nsw i32 %.412591852.i, 1       ; 2 uses
  %exitcond2312.not.i = icmp eq i32 %i.cbm, %i.cn
  br i1 %exitcond2312.not.i, label %._crit_edge1853.split.i, label %.preheader1567.i, !llvm.loop !162

.preheader1567.i.new:                             ; preds = %.preheader1567.i, %.preheader1567.i.new
  %indvars.iv2307.i = phi i64 [ %indvars.iv.next2308.i.7, %.preheader1567.i.new ], [ 0, %.preheader1567.i ] ; 9 uses
  %.1012701847.i = phi ptr [ %i.ccr, %.preheader1567.i.new ], [ %.912691851.i, %.preheader1567.i ] ; 9 uses
  %niter1106 = phi i64 [ %niter1106.next.7, %.preheader1567.i.new ], [ 0, %.preheader1567.i ]
  %i.cbn = getelementptr inbounds nuw [4 x i8], ptr %.31283.lcssa.i, i64 %indvars.iv2307.i
  %i.cbo = call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %i.cbn, <4 x i32> %i.bft, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <4 x float> %i.cbo, ptr %.1012701847.i, align 16, !tbaa !85
  %i.cbp = getelementptr inbounds nuw i8, ptr %.1012701847.i, i64 16
  %i.cbq = getelementptr inbounds nuw [4 x i8], ptr %.31283.lcssa.i, i64 %indvars.iv2307.i
  %i.cbr = getelementptr inbounds nuw i8, ptr %i.cbq, i64 4
  %i.cbs = call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.cbr, <4 x i32> %i.bft, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <4 x float> %i.cbs, ptr %i.cbp, align 16, !tbaa !85
  %i.cbt = getelementptr inbounds nuw i8, ptr %.1012701847.i, i64 32
  %i.cbu = getelementptr inbounds nuw [4 x i8], ptr %.31283.lcssa.i, i64 %indvars.iv2307.i
  %i.cbv = getelementptr inbounds nuw i8, ptr %i.cbu, i64 8
  %i.cbw = call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.cbv, <4 x i32> %i.bft, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <4 x float> %i.cbw, ptr %i.cbt, align 16, !tbaa !85
  %i.cbx = getelementptr inbounds nuw i8, ptr %.1012701847.i, i64 48
  %i.cby = getelementptr inbounds nuw [4 x i8], ptr %.31283.lcssa.i, i64 %indvars.iv2307.i
  %i.cbz = getelementptr inbounds nuw i8, ptr %i.cby, i64 12
  %i.cca = call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.cbz, <4 x i32> %i.bft, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <4 x float> %i.cca, ptr %i.cbx, align 16, !tbaa !85
  %i.ccb = getelementptr inbounds nuw i8, ptr %.1012701847.i, i64 64
  %i.ccc = getelementptr inbounds nuw [4 x i8], ptr %.31283.lcssa.i, i64 %indvars.iv2307.i
  %i.ccd = getelementptr inbounds nuw i8, ptr %i.ccc, i64 16
  %i.cce = call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.ccd, <4 x i32> %i.bft, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <4 x float> %i.cce, ptr %i.ccb, align 16, !tbaa !85
  %i.ccf = getelementptr inbounds nuw i8, ptr %.1012701847.i, i64 80
  %i.ccg = getelementptr inbounds nuw [4 x i8], ptr %.31283.lcssa.i, i64 %indvars.iv2307.i
  %i.cch = getelementptr inbounds nuw i8, ptr %i.ccg, i64 20
  %i.cci = call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.cch, <4 x i32> %i.bft, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <4 x float> %i.cci, ptr %i.ccf, align 16, !tbaa !85
  %i.ccj = getelementptr inbounds nuw i8, ptr %.1012701847.i, i64 96
  %i.cck = getelementptr inbounds nuw [4 x i8], ptr %.31283.lcssa.i, i64 %indvars.iv2307.i
  %i.ccl = getelementptr inbounds nuw i8, ptr %i.cck, i64 24
  %i.ccm = call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.ccl, <4 x i32> %i.bft, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <4 x float> %i.ccm, ptr %i.ccj, align 16, !tbaa !85
  %i.ccn = getelementptr inbounds nuw i8, ptr %.1012701847.i, i64 112
  %i.cco = getelementptr inbounds nuw [4 x i8], ptr %.31283.lcssa.i, i64 %indvars.iv2307.i
  %i.ccp = getelementptr inbounds nuw i8, ptr %i.cco, i64 28
  %i.ccq = call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.ccp, <4 x i32> %i.bft, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <4 x float> %i.ccq, ptr %i.ccn, align 16, !tbaa !85
  %i.ccr = getelementptr inbounds nuw i8, ptr %.1012701847.i, i64 128 ; 3 uses
  %indvars.iv.next2308.i.7 = add nuw nsw i64 %indvars.iv2307.i, 8 ; 2 uses
  %niter1106.next.7 = add i64 %niter1106, 8       ; 2 uses
  %niter1106.ncmp.7 = icmp eq i64 %niter1106.next.7, %unroll_iter1105
  br i1 %niter1106.ncmp.7, label %._crit_edge1849.i.unr-lcssa, label %.preheader1567.i.new, !llvm.loop !163

._crit_edge1853.split.i:                          ; preds = %._crit_edge1849.i, %.preheader1572.i, %.preheader1568.lr.ph.i, %.preheader1569.lr.ph.i
  %indvars.iv.next2314.i = add nuw nsw i64 %indvars.iv2313.i, 4 ; 3 uses
  %i.ccs = or disjoint i64 %indvars.iv.next2314.i, 3 ; 2 uses
  %i.cct = icmp slt i64 %i.ccs, %i.bgm
  %i.ccu = add <4 x i32> %i.bur, %i.bgq
  %i.ccv = trunc nsw i64 %i.ccs to i32
  br i1 %i.cct, label %_ZN4ncnn3MatD2Ev.exit1328.i, label %.preheader1566.loopexit.i, !llvm.loop !164

.preheader1556.loopexit.i:                        ; preds = %._crit_edge1930.split.i
  %i.ccw = trunc nsw i64 %indvars.iv.next2356.i to i32
  br label %.preheader1556.i

.preheader1556.i:                                 ; preds = %.preheader1556.loopexit.i, %.preheader1566.i
  %.3.lcssa.i = phi i32 [ %.2.lcssa.i, %.preheader1566.i ], [ %i.ccw, %.preheader1556.loopexit.i ] ; 3 uses
  %i.ccx = icmp slt i32 %.3.lcssa.i, %i.ro
  br i1 %i.ccx, label %_ZN4ncnn3MatD2Ev.exit.lr.ph.i, label %_ZN4ncnnL35convolution_transform_kernel_packedERKNS_3MatERS0_iiii.exit

_ZN4ncnn3MatD2Ev.exit.lr.ph.i:                    ; preds = %.preheader1556.i
  %i.ccy = mul i32 %i.afh, %i.cn                  ; 3 uses
  %i.ccz = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.cda = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.cdb = insertelement <4 x i32> poison, i32 %i.afh, i64 0
  %i.cdc = shufflevector <4 x i32> %i.cdb, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.cdd = mul <4 x i32> %i.cdc, <i32 0, i32 1, i32 2, i32 3> ; 9 uses
  %i.cde = insertelement <8 x i32> poison, i32 %i.afh, i64 0
  %i.cdf = shufflevector <8 x i32> %i.cde, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.cdg = mul <8 x i32> %i.cdf, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 9 uses
  %i.cdh = insertelement <16 x i32> poison, i32 %i.afh, i64 0
  %i.cdi = shufflevector <16 x i32> %i.cdh, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.cdj = mul <16 x i32> %i.cdi, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 9 uses
  %i.cdk = icmp sgt i32 %i.cn, 15
  %i.cdl = icmp sgt i32 %i.afh, 0                 ; 4 uses
  %i.cdm = shl i32 %i.afh, 4
  %i.cdn = sext i32 %i.cdm to i64                 ; 2 uses
  %i.cdo = shl i32 %i.afh, 3
  %i.cdp = sext i32 %i.cdo to i64                 ; 2 uses
  %i.cdq = shl i32 %i.afh, 2
  %i.cdr = sext i32 %i.cdq to i64
  %i.cds = sext i32 %i.afh to i64                 ; 8 uses
  %i.cdt = shl i32 %i.afh, 1                      ; 2 uses
  %i.cdu = sext i32 %i.cdt to i64                 ; 2 uses
  %i.cdv = icmp slt i32 %i.afh, 1
  %i.cdw = add i32 %i.cn, -16                     ; 2 uses
  %i.cdx = lshr i32 %i.cdw, 2
  %i.cdy = and i32 %i.cdx, 1073741820
  %narrow2437.i = add nuw nsw i32 %i.cdy, 4
  %i.cdz = zext nneg i32 %narrow2437.i to i64
  %i.cea = mul nsw i64 %i.cdn, %i.cdz
  %i.ceb = mul i32 %i.ccy, %.3.lcssa.i
  %i.cec = and i32 %i.cdw, -16
  %i.ced = add nuw i32 %i.cec, 16                 ; 4 uses
  %i.cee = add i32 %i.cn, -8
  %i.cef = sext i32 %.3.lcssa.i to i64
  %wide.trip.count2394.i = sext i32 %i.ro to i64
  %i.ceg = or disjoint i32 %i.ced, 7
  %i.ceh = icmp slt i32 %i.ceg, %i.cn
  %wide.trip.count2365.i = zext i32 %i.afh to i64 ; 25 uses
  %i.cei = shl nuw nsw i64 %wide.trip.count2365.i, 3
  %i.cej = shl nuw nsw i64 %i.cds, 2              ; 2 uses
  %i.cek = shl nuw nsw i64 %wide.trip.count2365.i, 2 ; 2 uses
  %i.cel = shl nsw i64 %i.cdu, 2
  %i.cem = add i32 %i.cn, -2
  %i.cen = add nsw i64 %wide.trip.count2365.i, -1 ; 3 uses
  %xtraiter1136 = and i64 %wide.trip.count2365.i, 7 ; 3 uses
  %i.ceo = icmp ult i64 %i.cen, 7
  %unroll_iter1141 = and i64 %wide.trip.count2365.i, 2147483640
  %lcmp.mod1138.not = icmp eq i64 %xtraiter1136, 0
  %lcmp.mod1140 = icmp ne i64 %xtraiter1136, 0
  %xtraiter1144 = and i64 %wide.trip.count2365.i, 7 ; 3 uses
  %i.cep = icmp ult i64 %i.cen, 7
  %unroll_iter1149 = and i64 %wide.trip.count2365.i, 2147483640
  %lcmp.mod1146.not = icmp eq i64 %xtraiter1144, 0
  %lcmp.mod1148 = icmp ne i64 %xtraiter1144, 0
  %xtraiter1152 = and i64 %wide.trip.count2365.i, 7 ; 3 uses
  %i.ceq = icmp ult i64 %i.cen, 7
  %unroll_iter1157 = and i64 %wide.trip.count2365.i, 2147483640
  %lcmp.mod1154.not = icmp eq i64 %xtraiter1152, 0
  %lcmp.mod1156 = icmp ne i64 %xtraiter1152, 0
  %min.iters.check876 = icmp ult i32 %i.afh, 8
  %stride.check874 = icmp slt i32 %i.cdt, 0
  %min.iters.check878 = icmp ult i32 %i.afh, 32
  %i.cer = and i64 %wide.trip.count2365.i, 24
  %n.vec880 = and i64 %wide.trip.count2365.i, 2147483616 ; 5 uses
  %i.ces = shl nuw nsw i64 %n.vec880, 3
  %cmp.n893 = icmp eq i64 %n.vec880, %wide.trip.count2365.i
  %min.epilog.iters.check898 = icmp eq i64 %i.cer, 0
  %n.vec900 = and i64 %wide.trip.count2365.i, 2147483640 ; 4 uses
  %i.cet = shl nuw nsw i64 %n.vec900, 3
  %cmp.n909 = icmp eq i64 %n.vec900, %wide.trip.count2365.i
  %xtraiter1159 = and i64 %wide.trip.count2365.i, 3 ; 2 uses
  %lcmp.mod1160.not = icmp eq i64 %xtraiter1159, 0
  %min.iters.check829 = icmp ult i32 %i.afh, 8
  %min.iters.check831 = icmp ult i32 %i.afh, 64
  %i.ceu = and i64 %wide.trip.count2365.i, 56
  %n.vec833 = and i64 %wide.trip.count2365.i, 2147483584 ; 5 uses
  %i.cev = shl nuw nsw i64 %n.vec833, 2
  %cmp.n843 = icmp eq i64 %n.vec833, %wide.trip.count2365.i
  %min.epilog.iters.check848 = icmp eq i64 %i.ceu, 0
  %n.vec850 = and i64 %wide.trip.count2365.i, 2147483640 ; 4 uses
  %i.cew = shl nuw nsw i64 %n.vec850, 2
  %cmp.n857 = icmp eq i64 %n.vec850, %wide.trip.count2365.i
  %xtraiter1162 = and i64 %wide.trip.count2365.i, 7 ; 2 uses
  %lcmp.mod1163.not = icmp eq i64 %xtraiter1162, 0
  br label %_ZN4ncnn3MatD2Ev.exit.i227

_ZN4ncnn3MatD2Ev.exit1327.i:                      ; preds = %._crit_edge1930.split.i, %_ZN4ncnn3MatD2Ev.exit1327.lr.ph.i
  %indvars.iv2355.i = phi i64 [ %i.btu, %_ZN4ncnn3MatD2Ev.exit1327.lr.ph.i ], [ %indvars.iv.next2356.i, %._crit_edge1930.split.i ] ; 2 uses
  %indvars.iv2320.i = phi i32 [ %i.btq, %_ZN4ncnn3MatD2Ev.exit1327.lr.ph.i ], [ %indvars.iv.next2321.i, %._crit_edge1930.split.i ] ; 2 uses
  %indvars.iv2317.i = phi i32 [ %i.bto, %_ZN4ncnn3MatD2Ev.exit1327.lr.ph.i ], [ %indvars.iv.next2318.i, %._crit_edge1930.split.i ] ; 2 uses
  %i.cex = phi i32 [ %i.bsj, %_ZN4ncnn3MatD2Ev.exit1327.lr.ph.i ], [ %i.cos, %._crit_edge1930.split.i ]
  %i.cey = sext i32 %indvars.iv2317.i to i64
  %i.cez = shl nsw i64 %i.cey, 2
  %i.cfa = sext i32 %indvars.iv2320.i to i64
  %i.cfb = shl nsw i64 %i.cfa, 2
  %i.cfc = load ptr, ptr %i.aff, align 8, !tbaa !22 ; 3 uses
  %i.cfd = trunc nsw i64 %indvars.iv2355.i to i32 ; 2 uses
  %i.cfe = mul i32 %i.bsl, %i.cfd
  %i.cff = sext i32 %i.cfe to i64
  %i.cfg = getelementptr inbounds [4 x i8], ptr %i.cfc, i64 %i.cff ; 2 uses
  %i.cfh = mul i32 %i.cex, %i.bsl
  %i.cfi = sext i32 %i.cfh to i64
  %i.cfj = getelementptr inbounds [4 x i8], ptr %i.cfc, i64 %i.cfi ; 2 uses
  %i.cfk = insertelement <4 x i32> poison, i32 %i.cfd, i64 0
  %i.cfl = shufflevector <4 x i32> %i.cfk, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.cfm = lshr <4 x i32> %i.cfl, <i32 3, i32 2, i32 1, i32 4>
  %i.cfn = and <4 x i32> %i.cfm, <i32 1, i32 1, i32 1, i32 -1>
  %i.cfo = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.cfn)
  %i.cfp = load ptr, ptr %i.afg, align 8, !tbaa !22, !noalias !229
  %i.cfq = load i64, ptr %i.bsm, align 8, !tbaa !23, !noalias !229
  %i.cfr = zext nneg i32 %i.cfo to i64
  %i.cfs = mul i64 %i.cfq, %i.cfr
  %i.cft = load i64, ptr %i.bsn, align 8, !tbaa !64, !noalias !229
  %i.cfu = mul i64 %i.cfs, %i.cft
  %i.cfv = getelementptr inbounds nuw i8, ptr %i.cfp, i64 %i.cfu ; 4 uses
  br i1 %i.bsx, label %.preheader1561.lr.ph.i, label %.preheader1565.i

.preheader1561.lr.ph.i:                           ; preds = %_ZN4ncnn3MatD2Ev.exit1327.i
  br i1 %i.bsy, label %.preheader1561.us.i, label %.preheader1565.thread.i

.preheader1561.us.i:                              ; preds = %.preheader1561.lr.ph.i, %._crit_edge1858.us.i
  %.011831863.us.i = phi i32 [ %i.chc, %._crit_edge1858.us.i ], [ 0, %.preheader1561.lr.ph.i ]
  %.011881862.us.i = phi ptr [ %.lcssa985, %._crit_edge1858.us.i ], [ %i.cfv, %.preheader1561.lr.ph.i ] ; 2 uses
  %.011991861.us.i = phi ptr [ %i.chb, %._crit_edge1858.us.i ], [ %i.cfj, %.preheader1561.lr.ph.i ] ; 6 uses
  %.012031860.us.i = phi ptr [ %i.cha, %._crit_edge1858.us.i ], [ %i.cfg, %.preheader1561.lr.ph.i ] ; 6 uses
  br i1 %i.bug, label %.epil.preheader1107, label %.preheader1561.us.i.new

.preheader1561.us.i.new:                          ; preds = %.preheader1561.us.i, %.preheader1561.us.i.new
  %indvars.iv2323.i = phi i64 [ %indvars.iv.next2324.i.3, %.preheader1561.us.i.new ], [ 0, %.preheader1561.us.i ] ; 6 uses
  %.111891856.us.i = phi ptr [ %i.cgt, %.preheader1561.us.i.new ], [ %.011881862.us.i, %.preheader1561.us.i ] ; 9 uses
  %niter1114 = phi i64 [ %niter1114.next.3, %.preheader1561.us.i.new ], [ 0, %.preheader1561.us.i ]
  %i.cfw = getelementptr inbounds nuw [4 x i8], ptr %.012031860.us.i, i64 %indvars.iv2323.i
  %i.cfx = getelementptr inbounds nuw [4 x i8], ptr %.011991861.us.i, i64 %indvars.iv2323.i
  %i.cfy = call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.cfw, <16 x i32> %i.bsw, <16 x i1> splat (i1 true), i32 4)
  %i.cfz = call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.cfx, <16 x i32> %i.bsw, <16 x i1> splat (i1 true), i32 4)
  store <16 x float> %i.cfy, ptr %.111891856.us.i, align 1, !tbaa !85
  %i.cga = getelementptr inbounds nuw i8, ptr %.111891856.us.i, i64 64
  store <16 x float> %i.cfz, ptr %i.cga, align 1, !tbaa !85
  %i.cgb = getelementptr inbounds nuw i8, ptr %.111891856.us.i, i64 128
  %indvars.iv.next2324.i = or disjoint i64 %indvars.iv2323.i, 1 ; 2 uses
  %i.cgc = getelementptr inbounds nuw [4 x i8], ptr %.012031860.us.i, i64 %indvars.iv.next2324.i
  %i.cgd = getelementptr inbounds nuw [4 x i8], ptr %.011991861.us.i, i64 %indvars.iv.next2324.i
  %i.cge = call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.cgc, <16 x i32> %i.bsw, <16 x i1> splat (i1 true), i32 4)
  %i.cgf = call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.cgd, <16 x i32> %i.bsw, <16 x i1> splat (i1 true), i32 4)
  store <16 x float> %i.cge, ptr %i.cgb, align 1, !tbaa !85
  %i.cgg = getelementptr inbounds nuw i8, ptr %.111891856.us.i, i64 192
  store <16 x float> %i.cgf, ptr %i.cgg, align 1, !tbaa !85
  %i.cgh = getelementptr inbounds nuw i8, ptr %.111891856.us.i, i64 256
  %indvars.iv.next2324.i.1 = or disjoint i64 %indvars.iv2323.i, 2 ; 2 uses
  %i.cgi = getelementptr inbounds nuw [4 x i8], ptr %.012031860.us.i, i64 %indvars.iv.next2324.i.1
  %i.cgj = getelementptr inbounds nuw [4 x i8], ptr %.011991861.us.i, i64 %indvars.iv.next2324.i.1
  %i.cgk = call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.cgi, <16 x i32> %i.bsw, <16 x i1> splat (i1 true), i32 4)
  %i.cgl = call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.cgj, <16 x i32> %i.bsw, <16 x i1> splat (i1 true), i32 4)
  store <16 x float> %i.cgk, ptr %i.cgh, align 1, !tbaa !85
  %i.cgm = getelementptr inbounds nuw i8, ptr %.111891856.us.i, i64 320
  store <16 x float> %i.cgl, ptr %i.cgm, align 1, !tbaa !85
  %i.cgn = getelementptr inbounds nuw i8, ptr %.111891856.us.i, i64 384
  %indvars.iv.next2324.i.2 = or disjoint i64 %indvars.iv2323.i, 3 ; 2 uses
  %i.cgo = getelementptr inbounds nuw [4 x i8], ptr %.012031860.us.i, i64 %indvars.iv.next2324.i.2
  %i.cgp = getelementptr inbounds nuw [4 x i8], ptr %.011991861.us.i, i64 %indvars.iv.next2324.i.2
  %i.cgq = call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.cgo, <16 x i32> %i.bsw, <16 x i1> splat (i1 true), i32 4)
  %i.cgr = call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.cgp, <16 x i32> %i.bsw, <16 x i1> splat (i1 true), i32 4)
  store <16 x float> %i.cgq, ptr %i.cgn, align 1, !tbaa !85
  %i.cgs = getelementptr inbounds nuw i8, ptr %.111891856.us.i, i64 448
  store <16 x float> %i.cgr, ptr %i.cgs, align 1, !tbaa !85
  %i.cgt = getelementptr inbounds nuw i8, ptr %.111891856.us.i, i64 512 ; 3 uses
  %indvars.iv.next2324.i.3 = add nuw nsw i64 %indvars.iv2323.i, 4 ; 2 uses
  %niter1114.next.3 = add i64 %niter1114, 4       ; 2 uses
  %niter1114.ncmp.3 = icmp eq i64 %niter1114.next.3, %unroll_iter1113
  br i1 %niter1114.ncmp.3, label %._crit_edge1858.us.i.unr-lcssa, label %.preheader1561.us.i.new, !llvm.loop !167

._crit_edge1858.us.i.unr-lcssa:                   ; preds = %.preheader1561.us.i.new
  br i1 %lcmp.mod1110.not, label %._crit_edge1858.us.i, label %.epil.preheader1107

.epil.preheader1107:                              ; preds = %._crit_edge1858.us.i.unr-lcssa, %.preheader1561.us.i
  %indvars.iv2323.i.epil.init = phi i64 [ 0, %.preheader1561.us.i ], [ %indvars.iv.next2324.i.3, %._crit_edge1858.us.i.unr-lcssa ]
  %.111891856.us.i.epil.init = phi ptr [ %.011881862.us.i, %.preheader1561.us.i ], [ %i.cgt, %._crit_edge1858.us.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1112)
  br label %bb.lm

bb.lm:                                            ; preds = %bb.lm, %.epil.preheader1107
  %indvars.iv2323.i.epil = phi i64 [ %indvars.iv2323.i.epil.init, %.epil.preheader1107 ], [ %indvars.iv.next2324.i.epil, %bb.lm ] ; 3 uses
  %.111891856.us.i.epil = phi ptr [ %.111891856.us.i.epil.init, %.epil.preheader1107 ], [ %i.cgz, %bb.lm ] ; 3 uses
  %epil.iter1109 = phi i64 [ 0, %.epil.preheader1107 ], [ %epil.iter1109.next, %bb.lm ]
  %i.cgu = getelementptr inbounds nuw [4 x i8], ptr %.012031860.us.i, i64 %indvars.iv2323.i.epil
  %i.cgv = getelementptr inbounds nuw [4 x i8], ptr %.011991861.us.i, i64 %indvars.iv2323.i.epil
  %i.cgw = call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.cgu, <16 x i32> %i.bsw, <16 x i1> splat (i1 true), i32 4)
end_hunk_1
begin_hunk_2_@_ZN4ncnn22Convolution_x86_avx51224create_pipeline_int8_x86ERKNS_6OptionE:bb.a
  %i.bbk = getelementptr inbounds nuw i8, ptr %i.azz, i64 %i.tv
  %i.bbl = load i8, ptr %i.bbk, align 1, !tbaa !85
  %i.bbm = getelementptr inbounds nuw i8, ptr %.312091669.us.i, i64 63
  store i8 %i.bbl, ptr %i.bbm, align 1, !tbaa !85
  %i.bbn = getelementptr inbounds nuw i8, ptr %.312091669.us.i, i64 64 ; 3 uses
  %indvars.iv.next2197.i = add nuw nsw i64 %indvars.iv2196.i, 1 ; 2 uses
  %exitcond2200.not.i = icmp eq i64 %indvars.iv.next2197.i, %wide.trip.count2192.i
  br i1 %exitcond2200.not.i, label %._crit_edge1672.us.i, label %bb.du, !llvm.loop !461

._crit_edge1672.us.i:                             ; preds = %bb.du
  %i.bbo = getelementptr inbounds nuw i8, ptr %.112311674.us.i, i64 %i.tz ; 2 uses
  %i.bbp = getelementptr inbounds nuw i8, ptr %.112291675.us.i, i64 %i.tz
  %i.bbq = getelementptr inbounds nuw i8, ptr %.112271676.us.i, i64 %i.tz
  %i.bbr = getelementptr inbounds nuw i8, ptr %.112251677.us.i, i64 %i.tz
  %i.bbs = getelementptr inbounds nuw i8, ptr %.112221678.us.i, i64 %i.tz
  %i.bbt = getelementptr inbounds nuw i8, ptr %.112201679.us.i, i64 %i.tz
  %i.bbu = getelementptr inbounds nuw i8, ptr %.112181680.us.i, i64 %i.tz
  %i.bbv = getelementptr inbounds nuw i8, ptr %.112161681.us.i, i64 %i.tz
  %i.bbw = add nuw nsw i32 %.112031683.us.i, 8    ; 3 uses
  %i.bbx = or disjoint i32 %i.bbw, 7
  %i.bby = icmp slt i32 %i.bbx, %i.p
  br i1 %i.bby, label %.preheader1502.us.i, label %.preheader1504.i, !llvm.loop !462

.preheader1504.i:                                 ; preds = %._crit_edge1672.us.i, %.preheader1502.preheader.i, %.preheader1505.thread.i, %.preheader1505.i
  %.11231.lcssa.i = phi ptr [ %.01230.lcssa.i, %.preheader1505.i ], [ %scevgep2166.i, %.preheader1505.thread.i ], [ %scevgep2194.i, %.preheader1502.preheader.i ], [ %i.bbo, %._crit_edge1672.us.i ] ; 2 uses
  %.21208.lcssa.i = phi ptr [ %.01206.lcssa.i, %.preheader1505.i ], [ %i.aqp, %.preheader1505.thread.i ], [ %.01206.lcssa24532466.i, %.preheader1502.preheader.i ], [ %i.bbn, %._crit_edge1672.us.i ] ; 2 uses
  %.11203.lcssa.i = phi i32 [ %.01202.lcssa.i, %.preheader1505.i ], [ %i.ve, %.preheader1505.thread.i ], [ %i.aud, %.preheader1502.preheader.i ], [ %i.bbw, %._crit_edge1672.us.i ] ; 3 uses
  %i.bbz = or disjoint i32 %.11203.lcssa.i, 1
  %i.bca = icmp slt i32 %i.bbz, %i.p
  br i1 %i.bca, label %.lr.ph1699.i, label %.preheader1503.i

.lr.ph1699.i:                                     ; preds = %.preheader1504.i
  br i1 %i.ts, label %.lr.ph1693.us.i, label %._crit_edge1715.split.i

.lr.ph1693.us.i:                                  ; preds = %.lr.ph1699.i, %._crit_edge1694.us.i
  %.212041698.us.i = phi i32 [ %i.bcz, %._crit_edge1694.us.i ], [ %.11203.lcssa.i, %.lr.ph1699.i ]
  %.512111697.us.i = phi ptr [ %.lcssa529, %._crit_edge1694.us.i ], [ %.21208.lcssa.i, %.lr.ph1699.i ] ; 2 uses
  %.212321696.us.i = phi ptr [ %i.bcy, %._crit_edge1694.us.i ], [ %.11231.lcssa.i, %.lr.ph1699.i ] ; 6 uses
  br i1 %i.vm, label %.epil.preheader567, label %.lr.ph1693.us.i.new

.lr.ph1693.us.i.new:                              ; preds = %.lr.ph1693.us.i, %.lr.ph1693.us.i.new
  %indvars.iv2202.i = phi i64 [ %indvars.iv.next2203.i.3, %.lr.ph1693.us.i.new ], [ 0, %.lr.ph1693.us.i ] ; 5 uses
  %.612121690.us.i = phi ptr [ %i.bct, %.lr.ph1693.us.i.new ], [ %.512111697.us.i, %.lr.ph1693.us.i ] ; 5 uses
  %niter574 = phi i64 [ %niter574.next.3, %.lr.ph1693.us.i.new ], [ 0, %.lr.ph1693.us.i ]
  %i.bcb = getelementptr inbounds nuw i8, ptr %.212321696.us.i, i64 %indvars.iv2202.i
  %i.bcc = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr %i.bcb, <16 x i32> %i.ur, <16 x i1> splat (i1 true), i32 1)
  %i.bcd = trunc <16 x i32> %i.bcc to <16 x i8>
  store <16 x i8> %i.bcd, ptr %.612121690.us.i, align 1, !tbaa !85
  %i.bce = getelementptr inbounds nuw i8, ptr %.612121690.us.i, i64 16
  %i.bcf = getelementptr inbounds nuw i8, ptr %.212321696.us.i, i64 %indvars.iv2202.i
  %i.bcg = getelementptr inbounds nuw i8, ptr %i.bcf, i64 1
  %i.bch = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr nonnull %i.bcg, <16 x i32> %i.ur, <16 x i1> splat (i1 true), i32 1)
  %i.bci = trunc <16 x i32> %i.bch to <16 x i8>
  store <16 x i8> %i.bci, ptr %i.bce, align 1, !tbaa !85
  %i.bcj = getelementptr inbounds nuw i8, ptr %.612121690.us.i, i64 32
  %i.bck = getelementptr inbounds nuw i8, ptr %.212321696.us.i, i64 %indvars.iv2202.i
  %i.bcl = getelementptr inbounds nuw i8, ptr %i.bck, i64 2
  %i.bcm = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr nonnull %i.bcl, <16 x i32> %i.ur, <16 x i1> splat (i1 true), i32 1)
  %i.bcn = trunc <16 x i32> %i.bcm to <16 x i8>
  store <16 x i8> %i.bcn, ptr %i.bcj, align 1, !tbaa !85
  %i.bco = getelementptr inbounds nuw i8, ptr %.612121690.us.i, i64 48
  %i.bcp = getelementptr inbounds nuw i8, ptr %.212321696.us.i, i64 %indvars.iv2202.i
  %i.bcq = getelementptr inbounds nuw i8, ptr %i.bcp, i64 3
  %i.bcr = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr nonnull %i.bcq, <16 x i32> %i.ur, <16 x i1> splat (i1 true), i32 1)
  %i.bcs = trunc <16 x i32> %i.bcr to <16 x i8>
  store <16 x i8> %i.bcs, ptr %i.bco, align 1, !tbaa !85
  %i.bct = getelementptr inbounds nuw i8, ptr %.612121690.us.i, i64 64 ; 3 uses
  %indvars.iv.next2203.i.3 = add nuw nsw i64 %indvars.iv2202.i, 4 ; 2 uses
  %niter574.next.3 = add i64 %niter574, 4         ; 2 uses
  %niter574.ncmp.3 = icmp eq i64 %niter574.next.3, %unroll_iter573
  br i1 %niter574.ncmp.3, label %._crit_edge1694.us.i.unr-lcssa, label %.lr.ph1693.us.i.new, !llvm.loop !463

._crit_edge1694.us.i.unr-lcssa:                   ; preds = %.lr.ph1693.us.i.new
  br i1 %lcmp.mod570.not, label %._crit_edge1694.us.i, label %.epil.preheader567

.epil.preheader567:                               ; preds = %._crit_edge1694.us.i.unr-lcssa, %.lr.ph1693.us.i
  %indvars.iv2202.i.epil.init = phi i64 [ 0, %.lr.ph1693.us.i ], [ %indvars.iv.next2203.i.3, %._crit_edge1694.us.i.unr-lcssa ]
  %.612121690.us.i.epil.init = phi ptr [ %.512111697.us.i, %.lr.ph1693.us.i ], [ %i.bct, %._crit_edge1694.us.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod572)
  br label %bb.dv

bb.dv:                                            ; preds = %bb.dv, %.epil.preheader567
  %indvars.iv2202.i.epil = phi i64 [ %indvars.iv2202.i.epil.init, %.epil.preheader567 ], [ %indvars.iv.next2203.i.epil, %bb.dv ] ; 2 uses
  %.612121690.us.i.epil = phi ptr [ %.612121690.us.i.epil.init, %.epil.preheader567 ], [ %i.bcx, %bb.dv ] ; 2 uses
  %epil.iter569 = phi i64 [ 0, %.epil.preheader567 ], [ %epil.iter569.next, %bb.dv ]
  %i.bcu = getelementptr inbounds nuw i8, ptr %.212321696.us.i, i64 %indvars.iv2202.i.epil
  %i.bcv = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr %i.bcu, <16 x i32> %i.ur, <16 x i1> splat (i1 true), i32 1)
  %i.bcw = trunc <16 x i32> %i.bcv to <16 x i8>
  store <16 x i8> %i.bcw, ptr %.612121690.us.i.epil, align 1, !tbaa !85
  %i.bcx = getelementptr inbounds nuw i8, ptr %.612121690.us.i.epil, i64 16 ; 2 uses
  %indvars.iv.next2203.i.epil = add nuw nsw i64 %indvars.iv2202.i.epil, 1
  %epil.iter569.next = add i64 %epil.iter569, 1   ; 2 uses
  %epil.iter569.cmp.not = icmp eq i64 %epil.iter569.next, %xtraiter568
  br i1 %epil.iter569.cmp.not, label %._crit_edge1694.us.i, label %bb.dv, !llvm.loop !464

._crit_edge1694.us.i:                             ; preds = %bb.dv, %._crit_edge1694.us.i.unr-lcssa
  %.lcssa529 = phi ptr [ %i.bct, %._crit_edge1694.us.i.unr-lcssa ], [ %i.bcx, %bb.dv ] ; 2 uses
  %i.bcy = getelementptr inbounds nuw i8, ptr %.212321696.us.i, i64 %i.us ; 2 uses
  %i.bcz = add nuw nsw i32 %.212041698.us.i, 2    ; 3 uses
  %i.bda = or disjoint i32 %i.bcz, 1
  %i.bdb = icmp slt i32 %i.bda, %i.p
  br i1 %i.bdb, label %.lr.ph1693.us.i, label %.preheader1503.i, !llvm.loop !465

.preheader1503.i:                                 ; preds = %._crit_edge1694.us.i, %.preheader1504.i
  %.21232.lcssa.i = phi ptr [ %.11231.lcssa.i, %.preheader1504.i ], [ %i.bcy, %._crit_edge1694.us.i ] ; 5 uses
  %.51211.lcssa.i = phi ptr [ %.21208.lcssa.i, %.preheader1504.i ], [ %.lcssa529, %._crit_edge1694.us.i ]
  %.21204.lcssa.i = phi i32 [ %.11203.lcssa.i, %.preheader1504.i ], [ %i.bcz, %._crit_edge1694.us.i ] ; 2 uses
  %i.bdc = icmp sge i32 %.21204.lcssa.i, %i.p
  %brmerge1924.i = or i1 %i.uw, %i.bdc
  br i1 %brmerge1924.i, label %._crit_edge1715.split.i, label %.lr.ph1709.i

.lr.ph1709.i:                                     ; preds = %.preheader1503.i, %._crit_edge1710.i
  %.312051713.i = phi i32 [ %i.bdk, %._crit_edge1710.i ], [ %.21204.lcssa.i, %.preheader1503.i ]
  %.712131712.i = phi ptr [ %.lcssa532, %._crit_edge1710.i ], [ %.51211.lcssa.i, %.preheader1503.i ] ; 2 uses
  br i1 %i.vn, label %.epil.preheader575, label %.lr.ph1709.i.new

._crit_edge1710.i.unr-lcssa:                      ; preds = %.lr.ph1709.i.new
  br i1 %lcmp.mod578.not, label %._crit_edge1710.i, label %.epil.preheader575

.epil.preheader575:                               ; preds = %._crit_edge1710.i.unr-lcssa, %.lr.ph1709.i
  %indvars.iv2207.i.epil.init = phi i64 [ 0, %.lr.ph1709.i ], [ %indvars.iv.next2208.i.3, %._crit_edge1710.i.unr-lcssa ]
  %.812141706.i.epil.init = phi ptr [ %.712131712.i, %.lr.ph1709.i ], [ %i.bep, %._crit_edge1710.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod580)
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dw, %.epil.preheader575
  %indvars.iv2207.i.epil = phi i64 [ %indvars.iv2207.i.epil.init, %.epil.preheader575 ], [ %indvars.iv.next2208.i.epil, %bb.dw ] ; 2 uses
  %.812141706.i.epil = phi ptr [ %.812141706.i.epil.init, %.epil.preheader575 ], [ %i.bdj, %bb.dw ] ; 2 uses
  %epil.iter577 = phi i64 [ 0, %.epil.preheader575 ], [ %epil.iter577.next, %bb.dw ]
  %i.bdd = getelementptr inbounds nuw i8, ptr %.21232.lcssa.i, i64 %indvars.iv2207.i.epil
  %i.bde = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.bdd, <8 x i32> %i.uv, <8 x i32> splat (i32 -1), i8 1)
  %i.bdf = shufflevector <8 x i32> %i.bde, <8 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bdg = trunc <16 x i32> %i.bdf to <16 x i8>
  %i.bdh = bitcast <16 x i8> %i.bdg to <2 x i64>
  %i.bdi = extractelement <2 x i64> %i.bdh, i64 0
  store i64 %i.bdi, ptr %.812141706.i.epil, align 1, !tbaa !85
  %i.bdj = getelementptr inbounds nuw i8, ptr %.812141706.i.epil, i64 8 ; 2 uses
  %indvars.iv.next2208.i.epil = add nuw nsw i64 %indvars.iv2207.i.epil, 1
  %epil.iter577.next = add i64 %epil.iter577, 1   ; 2 uses
  %epil.iter577.cmp.not = icmp eq i64 %epil.iter577.next, %xtraiter576
  br i1 %epil.iter577.cmp.not, label %._crit_edge1710.i, label %bb.dw, !llvm.loop !466

._crit_edge1710.i:                                ; preds = %bb.dw, %._crit_edge1710.i.unr-lcssa
  %.lcssa532 = phi ptr [ %i.bep, %._crit_edge1710.i.unr-lcssa ], [ %i.bdj, %bb.dw ]
  %i.bdk = add nuw nsw i32 %.312051713.i, 1       ; 2 uses
  %exitcond2212.not.i = icmp eq i32 %i.bdk, %i.p
  br i1 %exitcond2212.not.i, label %._crit_edge1715.split.i, label %.lr.ph1709.i, !llvm.loop !467

.lr.ph1709.i.new:                                 ; preds = %.lr.ph1709.i, %.lr.ph1709.i.new
  %indvars.iv2207.i = phi i64 [ %indvars.iv.next2208.i.3, %.lr.ph1709.i.new ], [ 0, %.lr.ph1709.i ] ; 5 uses
  %.812141706.i = phi ptr [ %i.bep, %.lr.ph1709.i.new ], [ %.712131712.i, %.lr.ph1709.i ] ; 5 uses
  %niter582 = phi i64 [ %niter582.next.3, %.lr.ph1709.i.new ], [ 0, %.lr.ph1709.i ]
  %i.bdl = getelementptr inbounds nuw i8, ptr %.21232.lcssa.i, i64 %indvars.iv2207.i
  %i.bdm = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.bdl, <8 x i32> %i.uv, <8 x i32> splat (i32 -1), i8 1)
  %i.bdn = shufflevector <8 x i32> %i.bdm, <8 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bdo = trunc <16 x i32> %i.bdn to <16 x i8>
  %i.bdp = bitcast <16 x i8> %i.bdo to <2 x i64>
  %i.bdq = extractelement <2 x i64> %i.bdp, i64 0
  store i64 %i.bdq, ptr %.812141706.i, align 1, !tbaa !85
  %i.bdr = getelementptr inbounds nuw i8, ptr %.812141706.i, i64 8
  %i.bds = getelementptr inbounds nuw i8, ptr %.21232.lcssa.i, i64 %indvars.iv2207.i
  %i.bdt = getelementptr inbounds nuw i8, ptr %i.bds, i64 1
  %i.bdu = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr nonnull %i.bdt, <8 x i32> %i.uv, <8 x i32> splat (i32 -1), i8 1)
  %i.bdv = shufflevector <8 x i32> %i.bdu, <8 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bdw = trunc <16 x i32> %i.bdv to <16 x i8>
  %i.bdx = bitcast <16 x i8> %i.bdw to <2 x i64>
  %i.bdy = extractelement <2 x i64> %i.bdx, i64 0
  store i64 %i.bdy, ptr %i.bdr, align 1, !tbaa !85
  %i.bdz = getelementptr inbounds nuw i8, ptr %.812141706.i, i64 16
  %i.bea = getelementptr inbounds nuw i8, ptr %.21232.lcssa.i, i64 %indvars.iv2207.i
  %i.beb = getelementptr inbounds nuw i8, ptr %i.bea, i64 2
  %i.bec = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr nonnull %i.beb, <8 x i32> %i.uv, <8 x i32> splat (i32 -1), i8 1)
  %i.bed = shufflevector <8 x i32> %i.bec, <8 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bee = trunc <16 x i32> %i.bed to <16 x i8>
  %i.bef = bitcast <16 x i8> %i.bee to <2 x i64>
  %i.beg = extractelement <2 x i64> %i.bef, i64 0
  store i64 %i.beg, ptr %i.bdz, align 1, !tbaa !85
  %i.beh = getelementptr inbounds nuw i8, ptr %.812141706.i, i64 24
  %i.bei = getelementptr inbounds nuw i8, ptr %.21232.lcssa.i, i64 %indvars.iv2207.i
  %i.bej = getelementptr inbounds nuw i8, ptr %i.bei, i64 3
  %i.bek = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr nonnull %i.bej, <8 x i32> %i.uv, <8 x i32> splat (i32 -1), i8 1)
  %i.bel = shufflevector <8 x i32> %i.bek, <8 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bem = trunc <16 x i32> %i.bel to <16 x i8>
  %i.ben = bitcast <16 x i8> %i.bem to <2 x i64>
  %i.beo = extractelement <2 x i64> %i.ben, i64 0
  store i64 %i.beo, ptr %i.beh, align 1, !tbaa !85
  %i.bep = getelementptr inbounds nuw i8, ptr %.812141706.i, i64 32 ; 3 uses
  %indvars.iv.next2208.i.3 = add nuw nsw i64 %indvars.iv2207.i, 4 ; 2 uses
  %niter582.next.3 = add i64 %niter582, 4         ; 2 uses
  %niter582.ncmp.3 = icmp eq i64 %niter582.next.3, %unroll_iter581
  br i1 %niter582.ncmp.3, label %._crit_edge1710.i.unr-lcssa, label %.lr.ph1709.i.new, !llvm.loop !468

._crit_edge1715.split.i:                          ; preds = %._crit_edge1710.i, %.preheader1503.i, %.lr.ph1699.i
  %indvars.iv.next2216.i = add nuw nsw i64 %indvars.iv2215.i, 8 ; 3 uses
  %i.beq = icmp slt i64 %indvars.iv.next2216.i, %invariant.op.i
  %indvars.iv.next2165.i = add i32 %indvars.iv2164.i, %i.vc
  %indvars.iv.next2214.i = add i32 %indvars.iv2213.i, 8
  br i1 %i.beq, label %_ZN4ncnn3MatD2Ev.exit1285.i, label %.preheader1501.loopexit.i, !llvm.loop !469

.preheader1495.loopexit.i:                        ; preds = %._crit_edge1795.split.i
  %i.ber = trunc nsw i64 %indvars.iv.next2259.i to i32
  br label %.preheader1495.i

.preheader1495.i:                                 ; preds = %.preheader1495.loopexit.i, %.preheader1501.i
  %.2.lcssa.i = phi i32 [ %.1.lcssa.i, %.preheader1501.i ], [ %i.ber, %.preheader1495.loopexit.i ] ; 4 uses
  %i.bes = or disjoint i32 %.2.lcssa.i, 1         ; 3 uses
  %i.bet = icmp slt i32 %i.bes, %i.o
  br i1 %i.bet, label %_ZN4ncnn3MatD2Ev.exit1283.lr.ph.i, label %.preheader1490.i

_ZN4ncnn3MatD2Ev.exit1283.lr.ph.i:                ; preds = %.preheader1495.i
  %i.beu = mul i32 %i.p, %i.j                     ; 8 uses
  %i.bev = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.bew = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.bex = icmp sgt i32 %i.p, 15
  %i.bey = insertelement <16 x i32> poison, i32 %i.j, i64 0
  %i.bez = shufflevector <16 x i32> %i.bey, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.bfa = mul <16 x i32> %i.bez, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 6 uses
  %i.bfb = icmp sgt i32 %i.j, 0                   ; 3 uses
  %i.bfc = shl i32 %i.j, 4
  %i.bfd = sext i32 %i.bfc to i64                 ; 3 uses
  %i.bfe = insertelement <8 x i32> poison, i32 %i.j, i64 0
  %i.bff = shufflevector <8 x i32> %i.bfe, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.bfg = mul <8 x i32> %i.bff, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.bfh = insertelement <8 x i32> poison, i32 %i.beu, i64 0
  %i.bfi = shufflevector <8 x i32> %i.bfh, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.bfj = add <8 x i32> %i.bfi, %i.bfg
  %i.bfk = shufflevector <8 x i32> %i.bfg, <8 x i32> %i.bfj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 5 uses
  %i.bfl = shl i32 %i.j, 3
  %i.bfm = sext i32 %i.bfl to i64                 ; 3 uses
  %i.bfn = add nsw i32 %i.beu, %i.j
  %i.bfo = insertelement <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>, i32 %i.beu, i64 1
  %i.bfp = insertelement <4 x i32> %i.bfo, i32 %i.j, i64 2
  %i.bfq = insertelement <4 x i32> %i.bfp, i32 %i.bfn, i64 3 ; 5 uses
  %i.bfr = shl i32 %i.j, 1
  %i.bfs = sext i32 %i.bfr to i64                 ; 2 uses
  %i.bft = icmp slt i32 %i.j, 1
  %i.bfu = add i32 %i.p, -16                      ; 2 uses
  %i.bfv = lshr i32 %i.bfu, 4
  %narrow2367.i = add nuw nsw i32 %i.bfv, 1
  %i.bfw = zext nneg i32 %narrow2367.i to i64
  %i.bfx = mul nsw i64 %i.bfw, %i.bfd
  %i.bfy = mul i32 %i.beu, %.2.lcssa.i
  %i.bfz = shl i32 %i.beu, 1                      ; 2 uses
  %i.bga = mul i32 %i.bes, %i.beu
  %i.bgb = and i32 %i.bfu, -16
  %i.bgc = add nuw i32 %i.bgb, 16                 ; 4 uses
  %i.bgd = add i32 %i.p, -8
  %i.bge = sext i32 %.2.lcssa.i to i64
  %i.bgf = sext i32 %i.o to i64
  %i.bgg = or disjoint i32 %i.bgc, 7
  %i.bgh = icmp slt i32 %i.bgg, %i.p
  %wide.trip.count2271.i = zext i32 %i.j to i64   ; 18 uses
  %i.bgi = shl nuw nsw i64 %wide.trip.count2271.i, 1
  %i.bgj = add nsw i64 %wide.trip.count2271.i, -1 ; 3 uses
  %xtraiter600 = and i64 %wide.trip.count2271.i, 1
  %i.bgk = icmp eq i64 %i.bgj, 0
  %unroll_iter605 = and i64 %wide.trip.count2271.i, 2147483646
  %lcmp.mod602.not = icmp eq i64 %xtraiter600, 0
  %lcmp.mod604 = trunc i32 %i.j to i1
  %xtraiter608 = and i64 %wide.trip.count2271.i, 3 ; 3 uses
  %i.bgl = icmp ult i64 %i.bgj, 3
  %unroll_iter613 = and i64 %wide.trip.count2271.i, 2147483644
  %lcmp.mod610.not = icmp eq i64 %xtraiter608, 0
  %lcmp.mod612 = icmp ne i64 %xtraiter608, 0
  %xtraiter616 = and i64 %wide.trip.count2271.i, 3 ; 3 uses
  %i.bgm = icmp ult i64 %i.bgj, 3
  %unroll_iter621 = and i64 %wide.trip.count2271.i, 2147483644
  %lcmp.mod618.not = icmp eq i64 %xtraiter616, 0
  %lcmp.mod620 = icmp ne i64 %xtraiter616, 0
  %min.iters.check = icmp ult i32 %i.j, 8
  %min.iters.check386 = icmp ult i32 %i.j, 64
  %i.bgn = and i64 %wide.trip.count2271.i, 56
  %n.vec = and i64 %wide.trip.count2271.i, 2147483584 ; 5 uses
  %i.bgo = shl nuw nsw i64 %n.vec, 1
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count2271.i
  %min.epilog.iters.check = icmp eq i64 %i.bgn, 0
  %n.vec388 = and i64 %wide.trip.count2271.i, 2147483640 ; 4 uses
  %i.bgp = shl nuw nsw i64 %n.vec388, 1
  %cmp.n395 = icmp eq i64 %n.vec388, %wide.trip.count2271.i
  %xtraiter623 = and i64 %wide.trip.count2271.i, 3 ; 2 uses
  %lcmp.mod624.not = icmp eq i64 %xtraiter623, 0
  br label %_ZN4ncnn3MatD2Ev.exit1283.i

_ZN4ncnn3MatD2Ev.exit1284.i:                      ; preds = %._crit_edge1795.split.i, %_ZN4ncnn3MatD2Ev.exit1284.lr.ph.i
  %indvars.iv2258.i = phi i64 [ %i.aor, %_ZN4ncnn3MatD2Ev.exit1284.lr.ph.i ], [ %indvars.iv.next2259.i, %._crit_edge1795.split.i ] ; 2 uses
  %indvars.iv2221.i = phi i32 [ %i.aom, %_ZN4ncnn3MatD2Ev.exit1284.lr.ph.i ], [ %indvars.iv.next2222.i, %._crit_edge1795.split.i ] ; 2 uses
  %i.bgq = phi i32 [ %i.ang, %_ZN4ncnn3MatD2Ev.exit1284.lr.ph.i ], [ %i.bxd, %._crit_edge1795.split.i ]
  %i.bgr = sext i32 %indvars.iv2221.i to i64
  %i.bgs = load ptr, ptr %i.av, align 8, !tbaa !22 ; 5 uses
  %i.bgt = trunc i64 %indvars.iv2258.i to i32     ; 6 uses
  %i.bgu = mul i32 %i.ani, %i.bgt
  %i.bgv = sext i32 %i.bgu to i64
  %i.bgw = getelementptr inbounds i8, ptr %i.bgs, i64 %i.bgv ; 2 uses
  %i.bgx = add i32 %i.bgt, 1
  %i.bgy = mul i32 %i.bgx, %i.ani
  %i.bgz = sext i32 %i.bgy to i64
  %i.bha = getelementptr inbounds i8, ptr %i.bgs, i64 %i.bgz ; 2 uses
  %i.bhb = add i32 %i.bgt, 2
  %i.bhc = mul i32 %i.bhb, %i.ani
  %i.bhd = sext i32 %i.bhc to i64
  %i.bhe = getelementptr inbounds i8, ptr %i.bgs, i64 %i.bhd ; 2 uses
  %i.bhf = mul i32 %i.bgq, %i.ani
  %i.bhg = sext i32 %i.bhf to i64
  %i.bhh = getelementptr inbounds i8, ptr %i.bgs, i64 %i.bhg ; 2 uses
  %i.bhi = lshr i32 %i.bgt, 4
  %i.bhj = lshr i32 %i.bgt, 3
  %i.bhk = and i32 %i.bhj, 1
  %i.bhl = add nuw nsw i32 %i.bhk, %i.bhi
  %i.bhm = lshr i32 %i.bgt, 2
  %i.bhn = and i32 %i.bhm, 1
  %i.bho = add nuw nsw i32 %i.bhl, %i.bhn
  %i.bhp = load ptr, ptr %i.ks, align 8, !tbaa !22, !noalias !530
  %i.bhq = load i64, ptr %i.anj, align 8, !tbaa !23, !noalias !530
  %i.bhr = zext nneg i32 %i.bho to i64
  %i.bhs = mul i64 %i.bhq, %i.bhr
  %i.bht = load i64, ptr %i.ank, align 8, !tbaa !64, !noalias !530
  %i.bhu = mul i64 %i.bhs, %i.bht
  %i.bhv = getelementptr inbounds nuw i8, ptr %i.bhp, i64 %i.bhu ; 4 uses
  br i1 %i.anl, label %.preheader1497.lr.ph.i, label %.preheader1500.i

.preheader1497.lr.ph.i:                           ; preds = %_ZN4ncnn3MatD2Ev.exit1284.i
  br i1 %i.anm, label %.preheader1497.us.i, label %.preheader1500.thread.i

.preheader1497.us.i:                              ; preds = %.preheader1497.lr.ph.i, %._crit_edge1727.us.i
  %.011591734.us.i = phi i32 [ %i.bpk, %._crit_edge1727.us.i ], [ 0, %.preheader1497.lr.ph.i ]
  %.011631733.us.i = phi ptr [ %i.bpf, %._crit_edge1727.us.i ], [ %i.bhv, %.preheader1497.lr.ph.i ]
  %.011711732.us.i = phi ptr [ %i.bpj, %._crit_edge1727.us.i ], [ %i.bhh, %.preheader1497.lr.ph.i ] ; 2 uses
  %.011741731.us.i = phi ptr [ %i.bpi, %._crit_edge1727.us.i ], [ %i.bhe, %.preheader1497.lr.ph.i ] ; 2 uses
  %.011771730.us.i = phi ptr [ %i.bph, %._crit_edge1727.us.i ], [ %i.bha, %.preheader1497.lr.ph.i ] ; 2 uses
  %.011801729.us.i = phi ptr [ %i.bpg, %._crit_edge1727.us.i ], [ %i.bgw, %.preheader1497.lr.ph.i ] ; 2 uses
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dx, %.preheader1497.us.i
  %indvars.iv2234.i = phi i64 [ 0, %.preheader1497.us.i ], [ %indvars.iv.next2235.i, %bb.dx ] ; 5 uses
  %.111641724.us.i = phi ptr [ %.011631733.us.i, %.preheader1497.us.i ], [ %i.bpf, %bb.dx ] ; 65 uses
  %i.bhw = getelementptr inbounds nuw i8, ptr %.011801729.us.i, i64 %indvars.iv2234.i ; 3 uses
  %i.bhx = getelementptr inbounds nuw i8, ptr %.011771730.us.i, i64 %indvars.iv2234.i ; 3 uses
  %i.bhy = getelementptr inbounds nuw i8, ptr %.011741731.us.i, i64 %indvars.iv2234.i ; 3 uses
  %i.bhz = getelementptr inbounds nuw i8, ptr %.011711732.us.i, i64 %indvars.iv2234.i ; 3 uses
  %i.bia = load i8, ptr %i.bhw, align 1, !tbaa !85
  store i8 %i.bia, ptr %.111641724.us.i, align 1, !tbaa !85
  %i.bib = getelementptr inbounds nuw i8, ptr %i.bhw, i64 %i.ann
  %i.bic = load i8, ptr %i.bib, align 1, !tbaa !85
  %i.bid = getelementptr inbounds nuw i8, ptr %.111641724.us.i, i64 1
  store i8 %i.bic, ptr %i.bid, align 1, !tbaa !85
  %i.bie = load i8, ptr %i.bhx, align 1, !tbaa !85
  %i.bif = getelementptr inbounds nuw i8, ptr %.111641724.us.i, i64 2
  store i8 %i.bie, ptr %i.bif, align 1, !tbaa !85
  %i.big = getelementptr inbounds nuw i8, ptr %i.bhx, i64 %i.ann
  %i.bih = load i8, ptr %i.big, align 1, !tbaa !85
  %i.bii = getelementptr inbounds nuw i8, ptr %.111641724.us.i, i64 3
  store i8 %i.bih, ptr %i.bii, align 1, !tbaa !85
  %i.bij = load i8, ptr %i.bhy, align 1, !tbaa !85
  %i.bik = getelementptr inbounds nuw i8, ptr %.111641724.us.i, i64 4
  store i8 %i.bij, ptr %i.bik, align 1, !tbaa !85
  %i.bil = getelementptr inbounds nuw i8, ptr %i.bhy, i64 %i.ann
  %i.bim = load i8, ptr %i.bil, align 1, !tbaa !85
  %i.bin = getelementptr inbounds nuw i8, ptr %.111641724.us.i, i64 5
  store i8 %i.bim, ptr %i.bin, align 1, !tbaa !85
  %i.bio = load i8, ptr %i.bhz, align 1, !tbaa !85
  %i.bip = getelementptr inbounds nuw i8, ptr %.111641724.us.i, i64 6
  store i8 %i.bio, ptr %i.bip, align 1, !tbaa !85
  %i.biq = getelementptr inbounds nuw i8, ptr %i.bhz, i64 %i.ann
  %i.bir = load i8, ptr %i.biq, align 1, !tbaa !85
  %i.bis = getelementptr inbounds nuw i8, ptr %.111641724.us.i, i64 7
  store i8 %i.bir, ptr %i.bis, align 1, !tbaa !85
  %i.bit = getelementptr inbounds nuw i8, ptr %.111641724.us.i, i64 8
  %i.biu = getelementptr inbounds nuw i8, ptr %i.bhw, i64 %i.anp ; 3 uses
  %i.biv = getelementptr inbounds nuw i8, ptr %i.bhx, i64 %i.anp ; 3 uses
  %i.biw = getelementptr inbounds nuw i8, ptr %i.bhy, i64 %i.anp ; 3 uses
  %i.bix = getelementptr inbounds nuw i8, ptr %i.bhz, i64 %i.anp ; 3 uses
  %i.biy = load i8, ptr %i.biu, align 1, !tbaa !85
  store i8 %i.biy, ptr %i.bit, align 1, !tbaa !85
  %i.biz = getelementptr inbounds nuw i8, ptr %i.biu, i64 %i.ann
  %i.bja = load i8, ptr %i.biz, align 1, !tbaa !85
  %i.bjb = getelementptr inbounds nuw i8, ptr %.111641724.us.i, i64 9
  store i8 %i.bja, ptr %i.bjb, align 1, !tbaa !85
  %i.bjc = load i8, ptr %i.biv, align 1, !tbaa !85
  %i.bjd = getelementptr inbounds nuw i8, ptr %.111641724.us.i, i64 10
  store i8 %i.bjc, ptr %i.bjd, align 1, !tbaa !85
  %i.bje = getelementptr inbounds nuw i8, ptr %i.biv, i64 %i.ann
  %i.bjf = load i8, ptr %i.bje, align 1, !tbaa !85
  %i.bjg = getelementptr inbounds nuw i8, ptr %.111641724.us.i, i64 11
  store i8 %i.bjf, ptr %i.bjg, align 1, !tbaa !85
  %i.bjh = load i8, ptr %i.biw, align 1, !tbaa !85
  %i.bji = getelementptr inbounds nuw i8, ptr %.111641724.us.i, i64 12
  store i8 %i.bjh, ptr %i.bji, align 1, !tbaa !85
  %i.bjj = getelementptr inbounds nuw i8, ptr %i.biw, i64 %i.ann
  %i.bjk = load i8, ptr %i.bjj, align 1, !tbaa !85
  %i.bjl = getelementptr inbounds nuw i8, ptr %.111641724.us.i, i64 13
  store i8 %i.bjk, ptr %i.bjl, align 1, !tbaa !85
  %i.bjm = load i8, ptr %i.bix, align 1, !tbaa !85
  %i.bjn = getelementptr inbounds nuw i8, ptr %.111641724.us.i, i64 14
  store i8 %i.bjm, ptr %i.bjn, align 1, !tbaa !85
  %i.bjo = getelementptr inbounds nuw i8, ptr %i.bix, i64 %i.ann
  %i.bjp = load i8, ptr %i.bjo, align 1, !tbaa !85
  %i.bjq = getelementptr inbounds nuw i8, ptr %.111641724.us.i, i64 15
  store i8 %i.bjp, ptr %i.bjq, align 1, !tbaa !85
  %i.bjr = getelementptr inbounds nuw i8, ptr %.111641724.us.i, i64 16
  %i.bjs = getelementptr inbounds nuw i8, ptr %i.biu, i64 %i.anp ; 3 uses
  %i.bjt = getelementptr inbounds nuw i8, ptr %i.biv, i64 %i.anp ; 3 uses
end_hunk_2
begin_hunk_3_@_ZN4ncnn22Convolution_x86_avx51224create_pipeline_int8_x86ERKNS_6OptionE:bb.a

._crit_edge1756.us.i:                             ; preds = %bb.dy
  %i.bto = getelementptr inbounds nuw i8, ptr %.111811758.us.i, i64 %i.ant ; 2 uses
  %i.btp = getelementptr inbounds nuw i8, ptr %.111781759.us.i, i64 %i.ant
  %i.btq = getelementptr inbounds nuw i8, ptr %.111751760.us.i, i64 %i.ant
  %i.btr = getelementptr inbounds nuw i8, ptr %.111721761.us.i, i64 %i.ant
  %i.bts = add nuw nsw i32 %.111601763.us.i, 8    ; 3 uses
  %i.btt = or disjoint i32 %i.bts, 7
  %i.btu = icmp slt i32 %i.btt, %i.p
  br i1 %i.btu, label %.preheader1496.us.i, label %.preheader1499.i, !llvm.loop !475

.preheader1499.i:                                 ; preds = %._crit_edge1756.us.i, %.preheader1496.preheader.i, %.preheader1500.thread.i, %.preheader1500.i
  %.11181.lcssa.i = phi ptr [ %.01180.lcssa.i, %.preheader1500.i ], [ %scevgep2223.i, %.preheader1500.thread.i ], [ %scevgep2239.i, %.preheader1496.preheader.i ], [ %i.bto, %._crit_edge1756.us.i ] ; 2 uses
  %.31166.lcssa.i = phi ptr [ %.01163.lcssa.i, %.preheader1500.i ], [ %i.bhv, %.preheader1500.thread.i ], [ %.01163.lcssa24822491.i, %.preheader1496.preheader.i ], [ %i.btn, %._crit_edge1756.us.i ] ; 2 uses
  %.11160.lcssa.i = phi i32 [ %.01159.lcssa.i, %.preheader1500.i ], [ %i.aop, %.preheader1500.thread.i ], [ %i.bpv, %.preheader1496.preheader.i ], [ %i.bts, %._crit_edge1756.us.i ] ; 3 uses
  %i.btv = or disjoint i32 %.11160.lcssa.i, 1
  %i.btw = icmp slt i32 %i.btv, %i.p
  br i1 %i.btw, label %.lr.ph1779.i, label %.preheader1498.i

.lr.ph1779.i:                                     ; preds = %.preheader1499.i
  br i1 %i.anm, label %.lr.ph1773.us.i, label %._crit_edge1795.split.i

.lr.ph1773.us.i:                                  ; preds = %.lr.ph1779.i, %._crit_edge1774.us.i
  %.211611778.us.i = phi i32 [ %i.bvk, %._crit_edge1774.us.i ], [ %.11160.lcssa.i, %.lr.ph1779.i ]
  %.611691777.us.i = phi ptr [ %.lcssa513, %._crit_edge1774.us.i ], [ %.31166.lcssa.i, %.lr.ph1779.i ] ; 2 uses
  %.211821776.us.i = phi ptr [ %i.bvj, %._crit_edge1774.us.i ], [ %.11181.lcssa.i, %.lr.ph1779.i ] ; 6 uses
  br i1 %i.aow, label %.epil.preheader583, label %.lr.ph1773.us.i.new

.lr.ph1773.us.i.new:                              ; preds = %.lr.ph1773.us.i, %.lr.ph1773.us.i.new
  %indvars.iv2247.i = phi i64 [ %indvars.iv.next2248.i.3, %.lr.ph1773.us.i.new ], [ 0, %.lr.ph1773.us.i ] ; 5 uses
  %.711701770.us.i = phi ptr [ %i.bvb, %.lr.ph1773.us.i.new ], [ %.611691777.us.i, %.lr.ph1773.us.i ] ; 5 uses
  %niter590 = phi i64 [ %niter590.next.3, %.lr.ph1773.us.i.new ], [ 0, %.lr.ph1773.us.i ]
  %i.btx = getelementptr inbounds nuw i8, ptr %.211821776.us.i, i64 %indvars.iv2247.i
  %i.bty = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.btx, <8 x i32> %i.aoc, <8 x i32> splat (i32 -1), i8 1)
  %i.btz = shufflevector <8 x i32> %i.bty, <8 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bua = trunc <16 x i32> %i.btz to <16 x i8>
  %i.bub = bitcast <16 x i8> %i.bua to <2 x i64>
  %i.buc = extractelement <2 x i64> %i.bub, i64 0
  store i64 %i.buc, ptr %.711701770.us.i, align 1, !tbaa !85
  %i.bud = getelementptr inbounds nuw i8, ptr %.711701770.us.i, i64 8
  %i.bue = getelementptr inbounds nuw i8, ptr %.211821776.us.i, i64 %indvars.iv2247.i
  %i.buf = getelementptr inbounds nuw i8, ptr %i.bue, i64 1
  %i.bug = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr nonnull %i.buf, <8 x i32> %i.aoc, <8 x i32> splat (i32 -1), i8 1)
  %i.buh = shufflevector <8 x i32> %i.bug, <8 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bui = trunc <16 x i32> %i.buh to <16 x i8>
  %i.buj = bitcast <16 x i8> %i.bui to <2 x i64>
  %i.buk = extractelement <2 x i64> %i.buj, i64 0
  store i64 %i.buk, ptr %i.bud, align 1, !tbaa !85
  %i.bul = getelementptr inbounds nuw i8, ptr %.711701770.us.i, i64 16
  %i.bum = getelementptr inbounds nuw i8, ptr %.211821776.us.i, i64 %indvars.iv2247.i
  %i.bun = getelementptr inbounds nuw i8, ptr %i.bum, i64 2
  %i.buo = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr nonnull %i.bun, <8 x i32> %i.aoc, <8 x i32> splat (i32 -1), i8 1)
  %i.bup = shufflevector <8 x i32> %i.buo, <8 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.buq = trunc <16 x i32> %i.bup to <16 x i8>
  %i.bur = bitcast <16 x i8> %i.buq to <2 x i64>
  %i.bus = extractelement <2 x i64> %i.bur, i64 0
  store i64 %i.bus, ptr %i.bul, align 1, !tbaa !85
  %i.but = getelementptr inbounds nuw i8, ptr %.711701770.us.i, i64 24
  %i.buu = getelementptr inbounds nuw i8, ptr %.211821776.us.i, i64 %indvars.iv2247.i
  %i.buv = getelementptr inbounds nuw i8, ptr %i.buu, i64 3
  %i.buw = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr nonnull %i.buv, <8 x i32> %i.aoc, <8 x i32> splat (i32 -1), i8 1)
  %i.bux = shufflevector <8 x i32> %i.buw, <8 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.buy = trunc <16 x i32> %i.bux to <16 x i8>
  %i.buz = bitcast <16 x i8> %i.buy to <2 x i64>
  %i.bva = extractelement <2 x i64> %i.buz, i64 0
  store i64 %i.bva, ptr %i.but, align 1, !tbaa !85
  %i.bvb = getelementptr inbounds nuw i8, ptr %.711701770.us.i, i64 32 ; 3 uses
  %indvars.iv.next2248.i.3 = add nuw nsw i64 %indvars.iv2247.i, 4 ; 2 uses
  %niter590.next.3 = add i64 %niter590, 4         ; 2 uses
  %niter590.ncmp.3 = icmp eq i64 %niter590.next.3, %unroll_iter589
  br i1 %niter590.ncmp.3, label %._crit_edge1774.us.i.unr-lcssa, label %.lr.ph1773.us.i.new, !llvm.loop !476

._crit_edge1774.us.i.unr-lcssa:                   ; preds = %.lr.ph1773.us.i.new
  br i1 %lcmp.mod586.not, label %._crit_edge1774.us.i, label %.epil.preheader583

.epil.preheader583:                               ; preds = %._crit_edge1774.us.i.unr-lcssa, %.lr.ph1773.us.i
  %indvars.iv2247.i.epil.init = phi i64 [ 0, %.lr.ph1773.us.i ], [ %indvars.iv.next2248.i.3, %._crit_edge1774.us.i.unr-lcssa ]
  %.711701770.us.i.epil.init = phi ptr [ %.611691777.us.i, %.lr.ph1773.us.i ], [ %i.bvb, %._crit_edge1774.us.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod588)
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dz, %.epil.preheader583
  %indvars.iv2247.i.epil = phi i64 [ %indvars.iv2247.i.epil.init, %.epil.preheader583 ], [ %indvars.iv.next2248.i.epil, %bb.dz ] ; 2 uses
  %.711701770.us.i.epil = phi ptr [ %.711701770.us.i.epil.init, %.epil.preheader583 ], [ %i.bvi, %bb.dz ] ; 2 uses
  %epil.iter585 = phi i64 [ 0, %.epil.preheader583 ], [ %epil.iter585.next, %bb.dz ]
  %i.bvc = getelementptr inbounds nuw i8, ptr %.211821776.us.i, i64 %indvars.iv2247.i.epil
  %i.bvd = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.bvc, <8 x i32> %i.aoc, <8 x i32> splat (i32 -1), i8 1)
  %i.bve = shufflevector <8 x i32> %i.bvd, <8 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bvf = trunc <16 x i32> %i.bve to <16 x i8>
  %i.bvg = bitcast <16 x i8> %i.bvf to <2 x i64>
  %i.bvh = extractelement <2 x i64> %i.bvg, i64 0
  store i64 %i.bvh, ptr %.711701770.us.i.epil, align 1, !tbaa !85
  %i.bvi = getelementptr inbounds nuw i8, ptr %.711701770.us.i.epil, i64 8 ; 2 uses
  %indvars.iv.next2248.i.epil = add nuw nsw i64 %indvars.iv2247.i.epil, 1
  %epil.iter585.next = add i64 %epil.iter585, 1   ; 2 uses
  %epil.iter585.cmp.not = icmp eq i64 %epil.iter585.next, %xtraiter584
  br i1 %epil.iter585.cmp.not, label %._crit_edge1774.us.i, label %bb.dz, !llvm.loop !477

._crit_edge1774.us.i:                             ; preds = %bb.dz, %._crit_edge1774.us.i.unr-lcssa
  %.lcssa513 = phi ptr [ %i.bvb, %._crit_edge1774.us.i.unr-lcssa ], [ %i.bvi, %bb.dz ] ; 2 uses
  %i.bvj = getelementptr inbounds nuw i8, ptr %.211821776.us.i, i64 %i.aod ; 2 uses
  %i.bvk = add nuw nsw i32 %.211611778.us.i, 2    ; 3 uses
  %i.bvl = or disjoint i32 %i.bvk, 1
  %i.bvm = icmp slt i32 %i.bvl, %i.p
  br i1 %i.bvm, label %.lr.ph1773.us.i, label %.preheader1498.i, !llvm.loop !478

.preheader1498.i:                                 ; preds = %._crit_edge1774.us.i, %.preheader1499.i
  %.21182.lcssa.i = phi ptr [ %.11181.lcssa.i, %.preheader1499.i ], [ %i.bvj, %._crit_edge1774.us.i ] ; 5 uses
  %.61169.lcssa.i = phi ptr [ %.31166.lcssa.i, %.preheader1499.i ], [ %.lcssa513, %._crit_edge1774.us.i ]
  %.21161.lcssa.i = phi i32 [ %.11160.lcssa.i, %.preheader1499.i ], [ %i.bvk, %._crit_edge1774.us.i ] ; 2 uses
  %i.bvn = icmp sge i32 %.21161.lcssa.i, %i.p
  %brmerge1927.i = or i1 %i.aoh, %i.bvn
  br i1 %brmerge1927.i, label %._crit_edge1795.split.i, label %.lr.ph1789.i

.lr.ph1789.i:                                     ; preds = %.preheader1498.i, %._crit_edge1790.i
  %.311621793.i = phi i32 [ %i.bvv, %._crit_edge1790.i ], [ %.21161.lcssa.i, %.preheader1498.i ]
  %.81792.i = phi ptr [ %.lcssa516, %._crit_edge1790.i ], [ %.61169.lcssa.i, %.preheader1498.i ] ; 2 uses
  br i1 %i.aox, label %.epil.preheader591, label %.lr.ph1789.i.new

._crit_edge1790.i.unr-lcssa:                      ; preds = %.lr.ph1789.i.new
  br i1 %lcmp.mod594.not, label %._crit_edge1790.i, label %.epil.preheader591

.epil.preheader591:                               ; preds = %._crit_edge1790.i.unr-lcssa, %.lr.ph1789.i
  %indvars.iv2252.i.epil.init = phi i64 [ 0, %.lr.ph1789.i ], [ %indvars.iv.next2253.i.3, %._crit_edge1790.i.unr-lcssa ]
  %.91786.i.epil.init = phi ptr [ %.81792.i, %.lr.ph1789.i ], [ %i.bxa, %._crit_edge1790.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod596)
  br label %bb.ea

bb.ea:                                            ; preds = %bb.ea, %.epil.preheader591
  %indvars.iv2252.i.epil = phi i64 [ %indvars.iv2252.i.epil.init, %.epil.preheader591 ], [ %indvars.iv.next2253.i.epil, %bb.ea ] ; 2 uses
  %.91786.i.epil = phi ptr [ %.91786.i.epil.init, %.epil.preheader591 ], [ %i.bvu, %bb.ea ] ; 2 uses
  %epil.iter593 = phi i64 [ 0, %.epil.preheader591 ], [ %epil.iter593.next, %bb.ea ]
  %i.bvo = getelementptr inbounds nuw i8, ptr %.21182.lcssa.i, i64 %indvars.iv2252.i.epil
  %i.bvp = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr %i.bvo, <4 x i32> %i.aog, <4 x i32> splat (i32 -1), i8 1)
  %i.bvq = shufflevector <4 x i32> %i.bvp, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bvr = trunc <16 x i32> %i.bvq to <16 x i8>
  %i.bvs = bitcast <16 x i8> %i.bvr to <4 x float>
  %i.bvt = extractelement <4 x float> %i.bvs, i64 0
  store float %i.bvt, ptr %.91786.i.epil, align 1, !tbaa !85
  %i.bvu = getelementptr inbounds nuw i8, ptr %.91786.i.epil, i64 4 ; 2 uses
  %indvars.iv.next2253.i.epil = add nuw nsw i64 %indvars.iv2252.i.epil, 1
  %epil.iter593.next = add i64 %epil.iter593, 1   ; 2 uses
  %epil.iter593.cmp.not = icmp eq i64 %epil.iter593.next, %xtraiter592
  br i1 %epil.iter593.cmp.not, label %._crit_edge1790.i, label %bb.ea, !llvm.loop !479

._crit_edge1790.i:                                ; preds = %bb.ea, %._crit_edge1790.i.unr-lcssa
  %.lcssa516 = phi ptr [ %i.bxa, %._crit_edge1790.i.unr-lcssa ], [ %i.bvu, %bb.ea ]
  %i.bvv = add nuw nsw i32 %.311621793.i, 1       ; 2 uses
  %exitcond2257.not.i = icmp eq i32 %i.bvv, %i.p
  br i1 %exitcond2257.not.i, label %._crit_edge1795.split.i, label %.lr.ph1789.i, !llvm.loop !480

.lr.ph1789.i.new:                                 ; preds = %.lr.ph1789.i, %.lr.ph1789.i.new
  %indvars.iv2252.i = phi i64 [ %indvars.iv.next2253.i.3, %.lr.ph1789.i.new ], [ 0, %.lr.ph1789.i ] ; 5 uses
  %.91786.i = phi ptr [ %i.bxa, %.lr.ph1789.i.new ], [ %.81792.i, %.lr.ph1789.i ] ; 5 uses
  %niter598 = phi i64 [ %niter598.next.3, %.lr.ph1789.i.new ], [ 0, %.lr.ph1789.i ]
  %i.bvw = getelementptr inbounds nuw i8, ptr %.21182.lcssa.i, i64 %indvars.iv2252.i
  %i.bvx = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr %i.bvw, <4 x i32> %i.aog, <4 x i32> splat (i32 -1), i8 1)
  %i.bvy = shufflevector <4 x i32> %i.bvx, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bvz = trunc <16 x i32> %i.bvy to <16 x i8>
  %i.bwa = bitcast <16 x i8> %i.bvz to <4 x float>
  %i.bwb = extractelement <4 x float> %i.bwa, i64 0
  store float %i.bwb, ptr %.91786.i, align 1, !tbaa !85
  %i.bwc = getelementptr inbounds nuw i8, ptr %.91786.i, i64 4
  %i.bwd = getelementptr inbounds nuw i8, ptr %.21182.lcssa.i, i64 %indvars.iv2252.i
  %i.bwe = getelementptr inbounds nuw i8, ptr %i.bwd, i64 1
  %i.bwf = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr nonnull %i.bwe, <4 x i32> %i.aog, <4 x i32> splat (i32 -1), i8 1)
  %i.bwg = shufflevector <4 x i32> %i.bwf, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bwh = trunc <16 x i32> %i.bwg to <16 x i8>
  %i.bwi = bitcast <16 x i8> %i.bwh to <4 x float>
  %i.bwj = extractelement <4 x float> %i.bwi, i64 0
  store float %i.bwj, ptr %i.bwc, align 1, !tbaa !85
  %i.bwk = getelementptr inbounds nuw i8, ptr %.91786.i, i64 8
  %i.bwl = getelementptr inbounds nuw i8, ptr %.21182.lcssa.i, i64 %indvars.iv2252.i
  %i.bwm = getelementptr inbounds nuw i8, ptr %i.bwl, i64 2
  %i.bwn = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr nonnull %i.bwm, <4 x i32> %i.aog, <4 x i32> splat (i32 -1), i8 1)
  %i.bwo = shufflevector <4 x i32> %i.bwn, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bwp = trunc <16 x i32> %i.bwo to <16 x i8>
  %i.bwq = bitcast <16 x i8> %i.bwp to <4 x float>
  %i.bwr = extractelement <4 x float> %i.bwq, i64 0
  store float %i.bwr, ptr %i.bwk, align 1, !tbaa !85
  %i.bws = getelementptr inbounds nuw i8, ptr %.91786.i, i64 12
  %i.bwt = getelementptr inbounds nuw i8, ptr %.21182.lcssa.i, i64 %indvars.iv2252.i
  %i.bwu = getelementptr inbounds nuw i8, ptr %i.bwt, i64 3
  %i.bwv = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr nonnull %i.bwu, <4 x i32> %i.aog, <4 x i32> splat (i32 -1), i8 1)
  %i.bww = shufflevector <4 x i32> %i.bwv, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bwx = trunc <16 x i32> %i.bww to <16 x i8>
  %i.bwy = bitcast <16 x i8> %i.bwx to <4 x float>
  %i.bwz = extractelement <4 x float> %i.bwy, i64 0
  store float %i.bwz, ptr %i.bws, align 1, !tbaa !85
  %i.bxa = getelementptr inbounds nuw i8, ptr %.91786.i, i64 16 ; 3 uses
  %indvars.iv.next2253.i.3 = add nuw nsw i64 %indvars.iv2252.i, 4 ; 2 uses
  %niter598.next.3 = add i64 %niter598, 4         ; 2 uses
  %niter598.ncmp.3 = icmp eq i64 %niter598.next.3, %unroll_iter597
  br i1 %niter598.ncmp.3, label %._crit_edge1790.i.unr-lcssa, label %.lr.ph1789.i.new, !llvm.loop !481

._crit_edge1795.split.i:                          ; preds = %._crit_edge1790.i, %.preheader1498.i, %.lr.ph1779.i
  %indvars.iv.next2259.i = add nuw nsw i64 %indvars.iv2258.i, 4 ; 3 uses
  %i.bxb = or disjoint i64 %indvars.iv.next2259.i, 3 ; 2 uses
  %i.bxc = icmp slt i64 %i.bxb, %i.aos
  %indvars.iv.next2222.i = add i32 %indvars.iv2221.i, %i.aon
  %i.bxd = trunc nsw i64 %i.bxb to i32
  br i1 %i.bxc, label %_ZN4ncnn3MatD2Ev.exit1284.i, label %.preheader1495.loopexit.i, !llvm.loop !482

.preheader1490.loopexit.i:                        ; preds = %._crit_edge1862.split.i
  %i.bxe = trunc nsw i64 %indvars.iv.next2294.i to i32
  br label %.preheader1490.i

.preheader1490.i:                                 ; preds = %.preheader1490.loopexit.i, %.preheader1495.i
  %.3.lcssa.i = phi i32 [ %.2.lcssa.i, %.preheader1495.i ], [ %i.bxe, %.preheader1490.loopexit.i ] ; 3 uses
  %i.bxf = icmp slt i32 %.3.lcssa.i, %i.o
  br i1 %i.bxf, label %_ZN4ncnn3MatD2Ev.exit.lr.ph.i, label %_ZN4ncnnL40convolution_transform_kernel_packed_int8ERKNS_3MatERS0_iiii.exit

_ZN4ncnn3MatD2Ev.exit.lr.ph.i:                    ; preds = %.preheader1490.i
  %i.bxg = mul i32 %i.p, %i.j                     ; 3 uses
  %i.bxh = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.bxi = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.bxj = icmp sgt i32 %i.p, 15
  %i.bxk = insertelement <16 x i32> poison, i32 %i.j, i64 0
  %i.bxl = shufflevector <16 x i32> %i.bxk, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.bxm = mul <16 x i32> %i.bxl, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 5 uses
  %i.bxn = icmp sgt i32 %i.j, 0                   ; 3 uses
  %i.bxo = shl i32 %i.j, 4
  %i.bxp = sext i32 %i.bxo to i64                 ; 2 uses
  %i.bxq = insertelement <8 x i32> poison, i32 %i.j, i64 0
  %i.bxr = shufflevector <8 x i32> %i.bxq, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.bxs = mul <8 x i32> %i.bxr, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 5 uses
  %i.bxt = shl i32 %i.j, 3
  %i.bxu = sext i32 %i.bxt to i64                 ; 2 uses
  %i.bxv = sext i32 %i.j to i64                   ; 9 uses
  %i.bxw = shl i32 %i.j, 1                        ; 2 uses
  %i.bxx = sext i32 %i.bxw to i64                 ; 2 uses
  %i.bxy = icmp slt i32 %i.j, 1
  %i.bxz = add i32 %i.p, -16                      ; 2 uses
  %i.bya = lshr i32 %i.bxz, 4
  %narrow2370.i = add nuw nsw i32 %i.bya, 1
  %i.byb = zext nneg i32 %narrow2370.i to i64
  %i.byc = mul nsw i64 %i.byb, %i.bxp
  %i.byd = mul i32 %i.bxg, %.3.lcssa.i
  %i.bye = and i32 %i.bxz, -16
  %i.byf = add nuw i32 %i.bye, 16                 ; 4 uses
  %i.byg = add i32 %i.p, -8
  %i.byh = sext i32 %.3.lcssa.i to i64
  %wide.trip.count2326.i = sext i32 %i.o to i64
  %i.byi = or disjoint i32 %i.byf, 7
  %i.byj = icmp slt i32 %i.byi, %i.p
  %wide.trip.count2303.i = zext i32 %i.j to i64   ; 23 uses
  %i.byk = shl nuw nsw i64 %wide.trip.count2303.i, 1
  %i.byl = add i32 %i.p, -2
  %xtraiter626 = and i64 %wide.trip.count2303.i, 3 ; 3 uses
  %i.bym = icmp ult i32 %i.j, 4
  %unroll_iter631 = and i64 %wide.trip.count2303.i, 2147483644
  %lcmp.mod628.not = icmp eq i64 %xtraiter626, 0
  %lcmp.mod630 = icmp ne i64 %xtraiter626, 0
  %xtraiter634 = and i64 %wide.trip.count2303.i, 3 ; 3 uses
  %i.byn = icmp ult i32 %i.j, 4
  %unroll_iter639 = and i64 %wide.trip.count2303.i, 2147483644
  %lcmp.mod636.not = icmp eq i64 %xtraiter634, 0
  %lcmp.mod638 = icmp ne i64 %xtraiter634, 0
  %min.iters.check447 = icmp ult i32 %i.j, 8
  %stride.check445 = icmp slt i32 %i.bxw, 0
  %min.iters.check449 = icmp ult i32 %i.j, 64
  %i.byo = and i64 %wide.trip.count2303.i, 56
  %n.vec451 = and i64 %wide.trip.count2303.i, 2147483584 ; 5 uses
  %i.byp = shl nuw nsw i64 %n.vec451, 1
  %cmp.n460 = icmp eq i64 %n.vec451, %wide.trip.count2303.i
  %min.epilog.iters.check465 = icmp eq i64 %i.byo, 0
  %n.vec467 = and i64 %wide.trip.count2303.i, 2147483640 ; 4 uses
  %i.byq = shl nuw nsw i64 %n.vec467, 1
  %cmp.n476 = icmp eq i64 %n.vec467, %wide.trip.count2303.i
  %xtraiter641 = and i64 %wide.trip.count2303.i, 3 ; 2 uses
  %lcmp.mod642.not = icmp eq i64 %xtraiter641, 0
  %min.iters.check401 = icmp ult i32 %i.j, 16
  %min.iters.check403 = icmp ult i32 %i.j, 256
  %i.byr = and i64 %wide.trip.count2303.i, 240
  %n.vec405 = and i64 %wide.trip.count2303.i, 2147483392 ; 5 uses
  %cmp.n415 = icmp eq i64 %n.vec405, %wide.trip.count2303.i
  %min.epilog.iters.check420 = icmp eq i64 %i.byr, 0
  %n.vec422 = and i64 %wide.trip.count2303.i, 2147483632 ; 4 uses
  %cmp.n429 = icmp eq i64 %n.vec422, %wide.trip.count2303.i
  %xtraiter644 = and i64 %wide.trip.count2303.i, 7 ; 2 uses
  %lcmp.mod645.not = icmp eq i64 %xtraiter644, 0
  br label %_ZN4ncnn3MatD2Ev.exit.i29

_ZN4ncnn3MatD2Ev.exit1283.i:                      ; preds = %._crit_edge1862.split.i, %_ZN4ncnn3MatD2Ev.exit1283.lr.ph.i
  %indvars.iv2293.i = phi i64 [ %i.bge, %_ZN4ncnn3MatD2Ev.exit1283.lr.ph.i ], [ %indvars.iv.next2294.i, %._crit_edge1862.split.i ] ; 2 uses
  %indvars.iv2265.i = phi i32 [ %i.bga, %_ZN4ncnn3MatD2Ev.exit1283.lr.ph.i ], [ %indvars.iv.next2266.i, %._crit_edge1862.split.i ] ; 2 uses
  %indvars.iv2262.i = phi i32 [ %i.bfy, %_ZN4ncnn3MatD2Ev.exit1283.lr.ph.i ], [ %indvars.iv.next2263.i, %._crit_edge1862.split.i ] ; 2 uses
  %i.bys = phi i32 [ %i.bes, %_ZN4ncnn3MatD2Ev.exit1283.lr.ph.i ], [ %i.cfq, %._crit_edge1862.split.i ]
  %i.byt = sext i32 %indvars.iv2262.i to i64
  %i.byu = sext i32 %indvars.iv2265.i to i64
  %i.byv = load ptr, ptr %i.av, align 8, !tbaa !22 ; 3 uses
  %i.byw = trunc nsw i64 %indvars.iv2293.i to i32 ; 2 uses
  %i.byx = mul i32 %i.beu, %i.byw
  %i.byy = sext i32 %i.byx to i64
  %i.byz = getelementptr inbounds i8, ptr %i.byv, i64 %i.byy ; 2 uses
  %i.bza = mul i32 %i.bys, %i.beu
  %i.bzb = sext i32 %i.bza to i64
  %i.bzc = getelementptr inbounds i8, ptr %i.byv, i64 %i.bzb ; 2 uses
  %i.bzd = insertelement <4 x i32> poison, i32 %i.byw, i64 0
  %i.bze = shufflevector <4 x i32> %i.bzd, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bzf = lshr <4 x i32> %i.bze, <i32 3, i32 2, i32 1, i32 4>
  %i.bzg = and <4 x i32> %i.bzf, <i32 1, i32 1, i32 1, i32 -1>
  %i.bzh = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.bzg)
  %i.bzi = load ptr, ptr %i.ks, align 8, !tbaa !22, !noalias !531
  %i.bzj = load i64, ptr %i.bev, align 8, !tbaa !23, !noalias !531
  %i.bzk = zext nneg i32 %i.bzh to i64
  %i.bzl = mul i64 %i.bzj, %i.bzk
  %i.bzm = load i64, ptr %i.bew, align 8, !tbaa !64, !noalias !531
  %i.bzn = mul i64 %i.bzl, %i.bzm
  %i.bzo = getelementptr inbounds nuw i8, ptr %i.bzi, i64 %i.bzn ; 4 uses
  br i1 %i.bex, label %.lr.ph1808.i, label %.preheader1494.i

.lr.ph1808.i:                                     ; preds = %_ZN4ncnn3MatD2Ev.exit1283.i
  br i1 %i.bfb, label %.lr.ph1801.us.i, label %.preheader1494.thread.i

.lr.ph1801.us.i:                                  ; preds = %.lr.ph1808.i, %._crit_edge1802.us.i
  %.011221807.us.i = phi i32 [ %i.cap, %._crit_edge1802.us.i ], [ 0, %.lr.ph1808.i ]
  %.011261806.us.i = phi ptr [ %.lcssa493, %._crit_edge1802.us.i ], [ %i.bzo, %.lr.ph1808.i ] ; 2 uses
  %.011341805.us.i = phi ptr [ %i.cao, %._crit_edge1802.us.i ], [ %i.bzc, %.lr.ph1808.i ] ; 4 uses
  %.011371804.us.i = phi ptr [ %i.can, %._crit_edge1802.us.i ], [ %i.byz, %.lr.ph1808.i ] ; 4 uses
  br i1 %i.bgk, label %.epil.preheader599, label %.lr.ph1801.us.i.new

.lr.ph1801.us.i.new:                              ; preds = %.lr.ph1801.us.i, %.lr.ph1801.us.i.new
  %indvars.iv2268.i = phi i64 [ %indvars.iv.next2269.i.1, %.lr.ph1801.us.i.new ], [ 0, %.lr.ph1801.us.i ] ; 4 uses
  %.111271798.us.i = phi ptr [ %i.cae, %.lr.ph1801.us.i.new ], [ %.011261806.us.i, %.lr.ph1801.us.i ] ; 5 uses
  %niter606 = phi i64 [ %niter606.next.1, %.lr.ph1801.us.i.new ], [ 0, %.lr.ph1801.us.i ]
  %i.bzp = getelementptr inbounds nuw i8, ptr %.011371804.us.i, i64 %indvars.iv2268.i
  %i.bzq = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr %i.bzp, <16 x i32> %i.bfa, <16 x i1> splat (i1 true), i32 1)
  %i.bzr = trunc <16 x i32> %i.bzq to <16 x i8>
  %i.bzs = getelementptr inbounds nuw i8, ptr %.011341805.us.i, i64 %indvars.iv2268.i
  %i.bzt = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr %i.bzs, <16 x i32> %i.bfa, <16 x i1> splat (i1 true), i32 1)
  %i.bzu = trunc <16 x i32> %i.bzt to <16 x i8>
  store <16 x i8> %i.bzr, ptr %.111271798.us.i, align 1, !tbaa !85
  %i.bzv = getelementptr inbounds nuw i8, ptr %.111271798.us.i, i64 16
  store <16 x i8> %i.bzu, ptr %i.bzv, align 1, !tbaa !85
  %i.bzw = getelementptr inbounds nuw i8, ptr %.111271798.us.i, i64 32
  %indvars.iv.next2269.i = or disjoint i64 %indvars.iv2268.i, 1 ; 2 uses
  %i.bzx = getelementptr inbounds nuw i8, ptr %.011371804.us.i, i64 %indvars.iv.next2269.i
  %i.bzy = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr nonnull %i.bzx, <16 x i32> %i.bfa, <16 x i1> splat (i1 true), i32 1)
  %i.bzz = trunc <16 x i32> %i.bzy to <16 x i8>
  %i.caa = getelementptr inbounds nuw i8, ptr %.011341805.us.i, i64 %indvars.iv.next2269.i
  %i.cab = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr nonnull %i.caa, <16 x i32> %i.bfa, <16 x i1> splat (i1 true), i32 1)
  %i.cac = trunc <16 x i32> %i.cab to <16 x i8>
  store <16 x i8> %i.bzz, ptr %i.bzw, align 1, !tbaa !85
  %i.cad = getelementptr inbounds nuw i8, ptr %.111271798.us.i, i64 48
  store <16 x i8> %i.cac, ptr %i.cad, align 1, !tbaa !85
  %i.cae = getelementptr inbounds nuw i8, ptr %.111271798.us.i, i64 64 ; 3 uses
  %indvars.iv.next2269.i.1 = add nuw nsw i64 %indvars.iv2268.i, 2 ; 2 uses
  %niter606.next.1 = add i64 %niter606, 2         ; 2 uses
  %niter606.ncmp.1 = icmp eq i64 %niter606.next.1, %unroll_iter605
  br i1 %niter606.ncmp.1, label %._crit_edge1802.us.i.unr-lcssa, label %.lr.ph1801.us.i.new, !llvm.loop !485

._crit_edge1802.us.i.unr-lcssa:                   ; preds = %.lr.ph1801.us.i.new
  br i1 %lcmp.mod602.not, label %._crit_edge1802.us.i, label %.epil.preheader599

.epil.preheader599:                               ; preds = %._crit_edge1802.us.i.unr-lcssa, %.lr.ph1801.us.i
  %indvars.iv2268.i.epil.init = phi i64 [ 0, %.lr.ph1801.us.i ], [ %indvars.iv.next2269.i.1, %._crit_edge1802.us.i.unr-lcssa ] ; 2 uses
  %.111271798.us.i.epil.init = phi ptr [ %.011261806.us.i, %.lr.ph1801.us.i ], [ %i.cae, %._crit_edge1802.us.i.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod604)
  %i.caf = getelementptr inbounds nuw i8, ptr %.011371804.us.i, i64 %indvars.iv2268.i.epil.init
  %i.cag = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr %i.caf, <16 x i32> %i.bfa, <16 x i1> splat (i1 true), i32 1)
  %i.cah = trunc <16 x i32> %i.cag to <16 x i8>
  %i.cai = getelementptr inbounds nuw i8, ptr %.011341805.us.i, i64 %indvars.iv2268.i.epil.init
  %i.caj = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr %i.cai, <16 x i32> %i.bfa, <16 x i1> splat (i1 true), i32 1)
  %i.cak = trunc <16 x i32> %i.caj to <16 x i8>
  store <16 x i8> %i.cah, ptr %.111271798.us.i.epil.init, align 1, !tbaa !85
  %i.cal = getelementptr inbounds nuw i8, ptr %.111271798.us.i.epil.init, i64 16
  store <16 x i8> %i.cak, ptr %i.cal, align 1, !tbaa !85
  %i.cam = getelementptr inbounds nuw i8, ptr %.111271798.us.i.epil.init, i64 32
  br label %._crit_edge1802.us.i

._crit_edge1802.us.i:                             ; preds = %._crit_edge1802.us.i.unr-lcssa, %.epil.preheader599
  %.lcssa493 = phi ptr [ %i.cae, %._crit_edge1802.us.i.unr-lcssa ], [ %i.cam, %.epil.preheader599 ] ; 2 uses
  %i.can = getelementptr inbounds nuw i8, ptr %.011371804.us.i, i64 %i.bfd ; 2 uses
  %i.cao = getelementptr inbounds nuw i8, ptr %.011341805.us.i, i64 %i.bfd ; 2 uses
  %i.cap = add nuw nsw i32 %.011221807.us.i, 16   ; 2 uses
  %i.caq = or disjoint i32 %i.cap, 15
  %i.car = icmp slt i32 %i.caq, %i.p
  br i1 %i.car, label %.lr.ph1801.us.i, label %.preheader1494.i, !llvm.loop !486

.preheader1494.i:                                 ; preds = %._crit_edge1802.us.i, %_ZN4ncnn3MatD2Ev.exit1283.i
  %.01137.lcssa.i = phi ptr [ %i.byz, %_ZN4ncnn3MatD2Ev.exit1283.i ], [ %i.can, %._crit_edge1802.us.i ] ; 3 uses
  %.01134.lcssa.i = phi ptr [ %i.bzc, %_ZN4ncnn3MatD2Ev.exit1283.i ], [ %i.cao, %._crit_edge1802.us.i ] ; 3 uses
  %.01126.lcssa.i = phi ptr [ %i.bzo, %_ZN4ncnn3MatD2Ev.exit1283.i ], [ %.lcssa493, %._crit_edge1802.us.i ] ; 3 uses
  %.01122.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit1283.i ], [ %i.bgc, %._crit_edge1802.us.i ] ; 4 uses
  %i.cas = or disjoint i32 %.01122.lcssa.i, 7
  %i.cat = icmp slt i32 %i.cas, %i.p
  br i1 %i.cat, label %.lr.ph1827.i, label %.preheader1493.i

.preheader1494.thread.i:                          ; preds = %.lr.ph1808.i
  %scevgep2261.i = getelementptr i8, ptr %i.byv, i64 %i.bfx ; 2 uses
  %scevgep2264.i = getelementptr i8, ptr %scevgep2261.i, i64 %i.byt ; 2 uses
  %scevgep2267.i = getelementptr i8, ptr %scevgep2261.i, i64 %i.byu ; 2 uses
  br i1 %i.bgh, label %.lr.ph1827.split.preheader.i, label %.preheader1493.i

.lr.ph1827.i:                                     ; preds = %.preheader1494.i
  br i1 %i.bfb, label %.lr.ph1820.us.i, label %.lr.ph1827.split.preheader.i

.lr.ph1827.split.preheader.i:                     ; preds = %.lr.ph1827.i, %.preheader1494.thread.i
  %.01137.lcssa25012512.i = phi ptr [ %.01137.lcssa.i, %.lr.ph1827.i ], [ %scevgep2264.i, %.preheader1494.thread.i ]
  %.01134.lcssa25022511.i = phi ptr [ %.01134.lcssa.i, %.lr.ph1827.i ], [ %scevgep2267.i, %.preheader1494.thread.i ]
end_hunk_3
begin_hunk_4_@_ZN4ncnn22Convolution_x86_avx51221create_pipeline_bf16sERKNS_6OptionE:bb.a
.preheader1588.i:                                 ; preds = %._crit_edge1740.us.i, %._crit_edge1728.i
  %.21270.lcssa.i = phi i32 [ %.11269.lcssa.i, %._crit_edge1728.i ], [ %i.bkr, %._crit_edge1740.us.i ] ; 3 uses
  %.41260.lcssa.i = phi ptr [ %.21258.lcssa.i, %._crit_edge1728.i ], [ %i.bkp, %._crit_edge1740.us.i ] ; 2 uses
  %.21239.lcssa.i = phi ptr [ %.11238.lcssa.i, %._crit_edge1728.i ], [ %i.bkq, %._crit_edge1740.us.i ] ; 2 uses
  %i.bku = or disjoint i32 %.21270.lcssa.i, 1
  %i.bkv = icmp slt i32 %i.bku, %i.t
  br i1 %i.bkv, label %.preheader1583.lr.ph.i, label %.preheader1587.i

.preheader1583.lr.ph.i:                           ; preds = %.preheader1588.i
  br i1 %i.zy, label %.preheader1583.us.i, label %._crit_edge1773.split.i

.preheader1583.us.i:                              ; preds = %.preheader1583.lr.ph.i, %._crit_edge1756.us.i
  %.312401760.us.i = phi ptr [ %i.bmt, %._crit_edge1756.us.i ], [ %.21239.lcssa.i, %.preheader1583.lr.ph.i ] ; 4 uses
  %.712631759.us.i = phi ptr [ %.lcssa746, %._crit_edge1756.us.i ], [ %.41260.lcssa.i, %.preheader1583.lr.ph.i ] ; 2 uses
  %.312711758.us.i = phi i32 [ %i.bmu, %._crit_edge1756.us.i ], [ %.21270.lcssa.i, %.preheader1583.lr.ph.i ]
  br i1 %i.abb, label %.epil.preheader771, label %.preheader1583.us.i.new

.preheader1583.us.i.new:                          ; preds = %.preheader1583.us.i, %.preheader1583.us.i.new
  %indvars.iv2256.i = phi i64 [ %indvars.iv.next2257.i.1, %.preheader1583.us.i.new ], [ 0, %.preheader1583.us.i ] ; 3 uses
  %.812641754.us.i = phi ptr [ %i.bmc, %.preheader1583.us.i.new ], [ %.712631759.us.i, %.preheader1583.us.i ] ; 5 uses
  %niter777 = phi i64 [ %niter777.next.1, %.preheader1583.us.i.new ], [ 0, %.preheader1583.us.i ]
  %i.bkw = getelementptr inbounds nuw [4 x i8], ptr %.312401760.us.i, i64 %indvars.iv2256.i ; 2 uses
  %i.bkx = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.bkw, <8 x i32> %i.aae, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.bky = bitcast <8 x float> %i.bkx to <8 x i32>
  %i.bkz = lshr <8 x i32> %i.bky, splat (i32 16)  ; 2 uses
  %i.bla = shufflevector <8 x i32> %i.bkz, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.blb = shufflevector <8 x i32> %i.bkz, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.blc = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.bla, <4 x i32> %i.blb)
  store <8 x i16> %i.blc, ptr %.812641754.us.i, align 1, !tbaa !85
  %i.bld = getelementptr inbounds nuw [4 x i8], ptr %i.bkw, i64 %i.aaf
  %i.ble = getelementptr inbounds nuw i8, ptr %.812641754.us.i, i64 16
  %i.blf = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.bld, <8 x i32> %i.aae, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.blg = bitcast <8 x float> %i.blf to <8 x i32>
  %i.blh = lshr <8 x i32> %i.blg, splat (i32 16)  ; 2 uses
  %i.bli = shufflevector <8 x i32> %i.blh, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.blj = shufflevector <8 x i32> %i.blh, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.blk = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.bli, <4 x i32> %i.blj)
  store <8 x i16> %i.blk, ptr %i.ble, align 1, !tbaa !85
  %i.bll = getelementptr inbounds nuw i8, ptr %.812641754.us.i, i64 32
  %i.blm = getelementptr inbounds nuw [4 x i8], ptr %.312401760.us.i, i64 %indvars.iv2256.i
  %i.bln = getelementptr inbounds nuw i8, ptr %i.blm, i64 4 ; 2 uses
  %i.blo = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.bln, <8 x i32> %i.aae, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.blp = bitcast <8 x float> %i.blo to <8 x i32>
  %i.blq = lshr <8 x i32> %i.blp, splat (i32 16)  ; 2 uses
  %i.blr = shufflevector <8 x i32> %i.blq, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bls = shufflevector <8 x i32> %i.blq, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.blt = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.blr, <4 x i32> %i.bls)
  store <8 x i16> %i.blt, ptr %i.bll, align 1, !tbaa !85
  %i.blu = getelementptr inbounds nuw [4 x i8], ptr %i.bln, i64 %i.aaf
  %i.blv = getelementptr inbounds nuw i8, ptr %.812641754.us.i, i64 48
  %i.blw = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.blu, <8 x i32> %i.aae, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.blx = bitcast <8 x float> %i.blw to <8 x i32>
  %i.bly = lshr <8 x i32> %i.blx, splat (i32 16)  ; 2 uses
  %i.blz = shufflevector <8 x i32> %i.bly, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bma = shufflevector <8 x i32> %i.bly, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bmb = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.blz, <4 x i32> %i.bma)
  store <8 x i16> %i.bmb, ptr %i.blv, align 1, !tbaa !85
  %i.bmc = getelementptr inbounds nuw i8, ptr %.812641754.us.i, i64 64 ; 3 uses
  %indvars.iv.next2257.i.1 = add nuw nsw i64 %indvars.iv2256.i, 2 ; 2 uses
  %niter777.next.1 = add i64 %niter777, 2         ; 2 uses
  %niter777.ncmp.1 = icmp eq i64 %niter777.next.1, %unroll_iter776
  br i1 %niter777.ncmp.1, label %._crit_edge1756.us.i.unr-lcssa, label %.preheader1583.us.i.new, !llvm.loop !572

._crit_edge1756.us.i.unr-lcssa:                   ; preds = %.preheader1583.us.i.new
  br i1 %lcmp.mod773.not, label %._crit_edge1756.us.i, label %.epil.preheader771

.epil.preheader771:                               ; preds = %._crit_edge1756.us.i.unr-lcssa, %.preheader1583.us.i
  %indvars.iv2256.i.epil.init = phi i64 [ 0, %.preheader1583.us.i ], [ %indvars.iv.next2257.i.1, %._crit_edge1756.us.i.unr-lcssa ]
  %.812641754.us.i.epil.init = phi ptr [ %.712631759.us.i, %.preheader1583.us.i ], [ %i.bmc, %._crit_edge1756.us.i.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod775)
  %i.bmd = getelementptr inbounds nuw [4 x i8], ptr %.312401760.us.i, i64 %indvars.iv2256.i.epil.init ; 2 uses
  %i.bme = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.bmd, <8 x i32> %i.aae, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.bmf = bitcast <8 x float> %i.bme to <8 x i32>
  %i.bmg = lshr <8 x i32> %i.bmf, splat (i32 16)  ; 2 uses
  %i.bmh = shufflevector <8 x i32> %i.bmg, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bmi = shufflevector <8 x i32> %i.bmg, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bmj = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.bmh, <4 x i32> %i.bmi)
  store <8 x i16> %i.bmj, ptr %.812641754.us.i.epil.init, align 1, !tbaa !85
  %i.bmk = getelementptr inbounds nuw [4 x i8], ptr %i.bmd, i64 %i.aaf
  %i.bml = getelementptr inbounds nuw i8, ptr %.812641754.us.i.epil.init, i64 16
  %i.bmm = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.bmk, <8 x i32> %i.aae, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.bmn = bitcast <8 x float> %i.bmm to <8 x i32>
  %i.bmo = lshr <8 x i32> %i.bmn, splat (i32 16)  ; 2 uses
  %i.bmp = shufflevector <8 x i32> %i.bmo, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bmq = shufflevector <8 x i32> %i.bmo, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bmr = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.bmp, <4 x i32> %i.bmq)
  store <8 x i16> %i.bmr, ptr %i.bml, align 1, !tbaa !85
  %i.bms = getelementptr inbounds nuw i8, ptr %.812641754.us.i.epil.init, i64 32
  br label %._crit_edge1756.us.i

._crit_edge1756.us.i:                             ; preds = %._crit_edge1756.us.i.unr-lcssa, %.epil.preheader771
  %.lcssa746 = phi ptr [ %i.bmc, %._crit_edge1756.us.i.unr-lcssa ], [ %i.bms, %.epil.preheader771 ] ; 2 uses
  %i.bmt = getelementptr inbounds nuw [4 x i8], ptr %.312401760.us.i, i64 %i.aaj ; 2 uses
  %i.bmu = add nuw nsw i32 %.312711758.us.i, 2    ; 3 uses
  %i.bmv = or disjoint i32 %i.bmu, 1
  %i.bmw = icmp slt i32 %i.bmv, %i.t
  br i1 %i.bmw, label %.preheader1583.us.i, label %.preheader1587.i, !llvm.loop !573

.preheader1587.i:                                 ; preds = %._crit_edge1756.us.i, %.preheader1588.i
  %.31271.lcssa.i = phi i32 [ %.21270.lcssa.i, %.preheader1588.i ], [ %i.bmu, %._crit_edge1756.us.i ] ; 2 uses
  %.71263.lcssa.i = phi ptr [ %.41260.lcssa.i, %.preheader1588.i ], [ %.lcssa746, %._crit_edge1756.us.i ]
  %.31240.lcssa.i = phi ptr [ %.21239.lcssa.i, %.preheader1588.i ], [ %i.bmt, %._crit_edge1756.us.i ] ; 5 uses
  %i.bmx = icmp sge i32 %.31271.lcssa.i, %i.t
  %brmerge2006.i = or i1 %i.aak, %i.bmx
  br i1 %brmerge2006.i, label %._crit_edge1773.split.i, label %.preheader1582.i

.preheader1582.i:                                 ; preds = %.preheader1587.i, %._crit_edge1769.i
  %.1012661772.i = phi ptr [ %.lcssa749, %._crit_edge1769.i ], [ %.71263.lcssa.i, %.preheader1587.i ] ; 2 uses
  %.412721771.i = phi i32 [ %i.bng, %._crit_edge1769.i ], [ %.31271.lcssa.i, %.preheader1587.i ]
  br i1 %i.abc, label %.epil.preheader778, label %.preheader1582.i.new

._crit_edge1769.i.unr-lcssa:                      ; preds = %.preheader1582.i.new
  br i1 %lcmp.mod780.not, label %._crit_edge1769.i, label %.epil.preheader778

.epil.preheader778:                               ; preds = %._crit_edge1769.i.unr-lcssa, %.preheader1582.i
  %indvars.iv2261.i.epil.init = phi i64 [ 0, %.preheader1582.i ], [ %indvars.iv.next2262.i.3, %._crit_edge1769.i.unr-lcssa ]
  %.1112671767.i.epil.init = phi ptr [ %.1012661772.i, %.preheader1582.i ], [ %i.bop, %._crit_edge1769.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod782)
  br label %bb.fo

bb.fo:                                            ; preds = %bb.fo, %.epil.preheader778
  %indvars.iv2261.i.epil = phi i64 [ %indvars.iv2261.i.epil.init, %.epil.preheader778 ], [ %indvars.iv.next2262.i.epil, %bb.fo ] ; 2 uses
  %.1112671767.i.epil = phi ptr [ %.1112671767.i.epil.init, %.epil.preheader778 ], [ %i.bnf, %bb.fo ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader778 ], [ %epil.iter.next, %bb.fo ]
  %i.bmy = getelementptr inbounds nuw [4 x i8], ptr %.31240.lcssa.i, i64 %indvars.iv2261.i.epil
  %i.bmz = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.bmy, <8 x i32> %i.aae, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.bna = bitcast <8 x float> %i.bmz to <8 x i32>
  %i.bnb = lshr <8 x i32> %i.bna, splat (i32 16)  ; 2 uses
  %i.bnc = shufflevector <8 x i32> %i.bnb, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bnd = shufflevector <8 x i32> %i.bnb, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bne = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.bnc, <4 x i32> %i.bnd)
  store <8 x i16> %i.bne, ptr %.1112671767.i.epil, align 1, !tbaa !85
  %i.bnf = getelementptr inbounds nuw i8, ptr %.1112671767.i.epil, i64 16 ; 2 uses
  %indvars.iv.next2262.i.epil = add nuw nsw i64 %indvars.iv2261.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter779
  br i1 %epil.iter.cmp.not, label %._crit_edge1769.i, label %bb.fo, !llvm.loop !574

._crit_edge1769.i:                                ; preds = %bb.fo, %._crit_edge1769.i.unr-lcssa
  %.lcssa749 = phi ptr [ %i.bop, %._crit_edge1769.i.unr-lcssa ], [ %i.bnf, %bb.fo ]
  %i.bng = add nuw nsw i32 %.412721771.i, 1       ; 2 uses
  %exitcond2266.not.i = icmp eq i32 %i.bng, %i.t
  br i1 %exitcond2266.not.i, label %._crit_edge1773.split.i, label %.preheader1582.i, !llvm.loop !575

.preheader1582.i.new:                             ; preds = %.preheader1582.i, %.preheader1582.i.new
  %indvars.iv2261.i = phi i64 [ %indvars.iv.next2262.i.3, %.preheader1582.i.new ], [ 0, %.preheader1582.i ] ; 5 uses
  %.1112671767.i = phi ptr [ %i.bop, %.preheader1582.i.new ], [ %.1012661772.i, %.preheader1582.i ] ; 5 uses
  %niter784 = phi i64 [ %niter784.next.3, %.preheader1582.i.new ], [ 0, %.preheader1582.i ]
  %i.bnh = getelementptr inbounds nuw [4 x i8], ptr %.31240.lcssa.i, i64 %indvars.iv2261.i
  %i.bni = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.bnh, <8 x i32> %i.aae, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.bnj = bitcast <8 x float> %i.bni to <8 x i32>
  %i.bnk = lshr <8 x i32> %i.bnj, splat (i32 16)  ; 2 uses
  %i.bnl = shufflevector <8 x i32> %i.bnk, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bnm = shufflevector <8 x i32> %i.bnk, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bnn = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.bnl, <4 x i32> %i.bnm)
  store <8 x i16> %i.bnn, ptr %.1112671767.i, align 1, !tbaa !85
  %i.bno = getelementptr inbounds nuw i8, ptr %.1112671767.i, i64 16
  %i.bnp = getelementptr inbounds nuw [4 x i8], ptr %.31240.lcssa.i, i64 %indvars.iv2261.i
  %i.bnq = getelementptr inbounds nuw i8, ptr %i.bnp, i64 4
  %i.bnr = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.bnq, <8 x i32> %i.aae, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.bns = bitcast <8 x float> %i.bnr to <8 x i32>
  %i.bnt = lshr <8 x i32> %i.bns, splat (i32 16)  ; 2 uses
  %i.bnu = shufflevector <8 x i32> %i.bnt, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bnv = shufflevector <8 x i32> %i.bnt, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bnw = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.bnu, <4 x i32> %i.bnv)
  store <8 x i16> %i.bnw, ptr %i.bno, align 1, !tbaa !85
  %i.bnx = getelementptr inbounds nuw i8, ptr %.1112671767.i, i64 32
  %i.bny = getelementptr inbounds nuw [4 x i8], ptr %.31240.lcssa.i, i64 %indvars.iv2261.i
  %i.bnz = getelementptr inbounds nuw i8, ptr %i.bny, i64 8
  %i.boa = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.bnz, <8 x i32> %i.aae, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.bob = bitcast <8 x float> %i.boa to <8 x i32>
  %i.boc = lshr <8 x i32> %i.bob, splat (i32 16)  ; 2 uses
  %i.bod = shufflevector <8 x i32> %i.boc, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.boe = shufflevector <8 x i32> %i.boc, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bof = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.bod, <4 x i32> %i.boe)
  store <8 x i16> %i.bof, ptr %i.bnx, align 1, !tbaa !85
  %i.bog = getelementptr inbounds nuw i8, ptr %.1112671767.i, i64 48
  %i.boh = getelementptr inbounds nuw [4 x i8], ptr %.31240.lcssa.i, i64 %indvars.iv2261.i
  %i.boi = getelementptr inbounds nuw i8, ptr %i.boh, i64 12
  %i.boj = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.boi, <8 x i32> %i.aae, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.bok = bitcast <8 x float> %i.boj to <8 x i32>
  %i.bol = lshr <8 x i32> %i.bok, splat (i32 16)  ; 2 uses
  %i.bom = shufflevector <8 x i32> %i.bol, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bon = shufflevector <8 x i32> %i.bol, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.boo = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.bom, <4 x i32> %i.bon)
  store <8 x i16> %i.boo, ptr %i.bog, align 1, !tbaa !85
  %i.bop = getelementptr inbounds nuw i8, ptr %.1112671767.i, i64 64 ; 3 uses
  %indvars.iv.next2262.i.3 = add nuw nsw i64 %indvars.iv2261.i, 4 ; 2 uses
  %niter784.next.3 = add i64 %niter784, 4         ; 2 uses
  %niter784.ncmp.3 = icmp eq i64 %niter784.next.3, %unroll_iter783
  br i1 %niter784.ncmp.3, label %._crit_edge1769.i.unr-lcssa, label %.preheader1582.i.new, !llvm.loop !576

._crit_edge1773.split.i:                          ; preds = %._crit_edge1769.i, %.preheader1587.i, %.preheader1583.lr.ph.i, %.preheader1584.lr.ph.i
  %indvars.iv.next2270.i = add nuw nsw i64 %indvars.iv2269.i, 8 ; 3 uses
  %i.boq = icmp slt i64 %indvars.iv.next2270.i, %invariant.op.i
  %indvars.iv.next2213.i = add i32 %indvars.iv2212.i, %i.aar
  %indvars.iv.next2268.i = add i32 %indvars.iv2267.i, 8
  br i1 %i.boq, label %_ZN4ncnn3MatD2Ev.exit1305.i, label %.preheader1581.loopexit.i, !llvm.loop !577

.preheader1572.loopexit.i:                        ; preds = %._crit_edge1859.split.i
  %i.bor = trunc nsw i64 %indvars.iv.next2320.i to i32
  br label %.preheader1572.i

.preheader1572.i:                                 ; preds = %.preheader1572.loopexit.i, %.preheader1581.i
  %.2.lcssa.i = phi i32 [ %.1.lcssa.i, %.preheader1581.i ], [ %i.bor, %.preheader1572.loopexit.i ] ; 4 uses
  %i.bos = or disjoint i32 %.2.lcssa.i, 1         ; 3 uses
  %i.bot = icmp slt i32 %i.bos, %i.ek
  br i1 %i.bot, label %_ZN4ncnn3MatD2Ev.exit1303.lr.ph.i, label %.preheader1562.i

_ZN4ncnn3MatD2Ev.exit1303.lr.ph.i:                ; preds = %.preheader1572.i
  %i.bou = mul i32 %i.ps, %i.t                    ; 5 uses
  %i.bov = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.bow = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.box = insertelement <4 x i32> poison, i32 %i.ps, i64 0
  %i.boy = shufflevector <4 x i32> %i.box, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.boz = mul <4 x i32> %i.boy, <i32 0, i32 1, i32 2, i32 3> ; 6 uses
  %i.bpa = insertelement <8 x i32> poison, i32 %i.ps, i64 0
  %i.bpb = shufflevector <8 x i32> %i.bpa, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.bpc = mul <8 x i32> %i.bpb, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 6 uses
  %i.bpd = insertelement <16 x i32> poison, i32 %i.ps, i64 0
  %i.bpe = shufflevector <16 x i32> %i.bpd, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.bpf = mul <16 x i32> %i.bpe, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 6 uses
  %i.bpg = icmp sgt i32 %i.t, 15
  %i.bph = icmp sgt i32 %i.ps, 0                  ; 4 uses
  %i.bpi = shl i32 %i.ps, 4
  %i.bpj = sext i32 %i.bpi to i64                 ; 3 uses
  %i.bpk = shl i32 %i.ps, 3
  %i.bpl = sext i32 %i.bpk to i64                 ; 3 uses
  %i.bpm = shl i32 %i.ps, 2
  %i.bpn = sext i32 %i.bpm to i64                 ; 2 uses
  %i.bpo = sext i32 %i.ps to i64                  ; 6 uses
  %i.bpp = shl i32 %i.ps, 1
  %i.bpq = sext i32 %i.bpp to i64                 ; 2 uses
  %i.bpr = icmp slt i32 %i.ps, 1
  %i.bps = add i32 %i.t, -16                      ; 2 uses
  %i.bpt = lshr i32 %i.bps, 2
  %i.bpu = and i32 %i.bpt, 1073741820
  %narrow2441.i = add nuw nsw i32 %i.bpu, 4
  %i.bpv = zext nneg i32 %narrow2441.i to i64
  %i.bpw = mul nsw i64 %i.bpj, %i.bpv
  %i.bpx = mul i32 %i.bou, %.2.lcssa.i
  %i.bpy = shl i32 %i.bou, 1                      ; 2 uses
  %i.bpz = mul i32 %i.bos, %i.bou
  %i.bqa = and i32 %i.bps, -16
  %i.bqb = add nuw i32 %i.bqa, 16                 ; 4 uses
  %i.bqc = add i32 %i.t, -8
  %i.bqd = sext i32 %.2.lcssa.i to i64
  %i.bqe = sext i32 %i.ek to i64
  %i.bqf = or disjoint i32 %i.bqb, 7
  %i.bqg = icmp slt i32 %i.bqf, %i.t
  %wide.trip.count2332.i = zext i32 %i.ps to i64  ; 19 uses
  %i.bqh = add nsw i64 %wide.trip.count2332.i, -1 ; 3 uses
  %xtraiter802 = and i64 %wide.trip.count2332.i, 1
  %i.bqi = icmp eq i64 %i.bqh, 0
  %unroll_iter807 = and i64 %wide.trip.count2332.i, 2147483646
  %lcmp.mod804.not = icmp eq i64 %xtraiter802, 0
  %lcmp.mod806 = trunc i32 %i.ps to i1
  %xtraiter810 = and i64 %wide.trip.count2332.i, 1
  %i.bqj = icmp eq i64 %i.bqh, 0
  %unroll_iter815 = and i64 %wide.trip.count2332.i, 2147483646
  %lcmp.mod812.not = icmp eq i64 %xtraiter810, 0
  %lcmp.mod814 = trunc i32 %i.ps to i1
  %xtraiter818 = and i64 %wide.trip.count2332.i, 1
  %i.bqk = icmp eq i64 %i.bqh, 0
  %unroll_iter823 = and i64 %wide.trip.count2332.i, 2147483646
  %lcmp.mod820.not = icmp eq i64 %xtraiter818, 0
  %lcmp.mod822 = trunc i32 %i.ps to i1
  %min.iters.check523 = icmp ult i32 %i.ps, 4
  %min.iters.check525 = icmp ult i32 %i.ps, 16
  %i.bql = and i64 %wide.trip.count2332.i, 12
  %n.vec527 = and i64 %wide.trip.count2332.i, 2147483632 ; 5 uses
  %i.bqm = shl nuw nsw i64 %n.vec527, 3
  %cmp.n538 = icmp eq i64 %n.vec527, %wide.trip.count2332.i
  %min.epilog.iters.check543 = icmp eq i64 %i.bql, 0
  %n.vec545 = and i64 %wide.trip.count2332.i, 2147483644 ; 4 uses
  %i.bqn = shl nuw nsw i64 %n.vec545, 3
  %cmp.n556 = icmp eq i64 %n.vec545, %wide.trip.count2332.i
  %min.iters.check = icmp ult i32 %i.ps, 4
  %min.iters.check511 = icmp ult i32 %i.ps, 16
  %i.bqo = and i64 %wide.trip.count2332.i, 12
  %n.vec = and i64 %wide.trip.count2332.i, 2147483632 ; 5 uses
  %i.bqp = shl nuw nsw i64 %n.vec, 2
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count2332.i
  %min.epilog.iters.check = icmp eq i64 %i.bqo, 0
  %n.vec513 = and i64 %wide.trip.count2332.i, 2147483644 ; 4 uses
  %i.bqq = shl nuw nsw i64 %n.vec513, 2
  %cmp.n520 = icmp eq i64 %n.vec513, %wide.trip.count2332.i
  br label %_ZN4ncnn3MatD2Ev.exit1303.i

_ZN4ncnn3MatD2Ev.exit1304.i:                      ; preds = %._crit_edge1859.split.i, %_ZN4ncnn3MatD2Ev.exit1304.lr.ph.i
  %indvars.iv2319.i = phi i64 [ %i.ayi, %_ZN4ncnn3MatD2Ev.exit1304.lr.ph.i ], [ %indvars.iv.next2320.i, %._crit_edge1859.split.i ] ; 2 uses
  %i.bqr = phi i32 [ %i.awr, %_ZN4ncnn3MatD2Ev.exit1304.lr.ph.i ], [ %i.cch, %._crit_edge1859.split.i ]
  %i.bqs = phi <4 x i32> [ %i.aye, %_ZN4ncnn3MatD2Ev.exit1304.lr.ph.i ], [ %i.ccg, %._crit_edge1859.split.i ] ; 2 uses
  %i.bqt = sext <4 x i32> %i.bqs to <4 x i64>
  %i.bqu = shl nsw <4 x i64> %i.bqt, splat (i64 2) ; 4 uses
  %i.bqv = load ptr, ptr %i.pp, align 8, !tbaa !22 ; 5 uses
  %i.bqw = trunc i64 %indvars.iv2319.i to i32     ; 6 uses
  %i.bqx = mul i32 %i.aya, %i.bqw
  %i.bqy = sext i32 %i.bqx to i64
  %i.bqz = getelementptr inbounds [4 x i8], ptr %i.bqv, i64 %i.bqy ; 2 uses
  %i.bra = add i32 %i.bqw, 1
  %i.brb = mul i32 %i.bra, %i.aya
  %i.brc = sext i32 %i.brb to i64
  %i.brd = getelementptr inbounds [4 x i8], ptr %i.bqv, i64 %i.brc ; 2 uses
  %i.bre = add i32 %i.bqw, 2
  %i.brf = mul i32 %i.bre, %i.aya
  %i.brg = sext i32 %i.brf to i64
  %i.brh = getelementptr inbounds [4 x i8], ptr %i.bqv, i64 %i.brg ; 2 uses
  %i.bri = mul i32 %i.bqr, %i.aya
  %i.brj = sext i32 %i.bri to i64
  %i.brk = getelementptr inbounds [4 x i8], ptr %i.bqv, i64 %i.brj ; 2 uses
  %i.brl = lshr i32 %i.bqw, 4
  %i.brm = lshr i32 %i.bqw, 3
  %i.brn = and i32 %i.brm, 1
  %i.bro = add nuw nsw i32 %i.brn, %i.brl
  %i.brp = lshr i32 %i.bqw, 2
  %i.brq = and i32 %i.brp, 1
  %i.brr = add nuw nsw i32 %i.bro, %i.brq
  %i.brs = load ptr, ptr %i.pq, align 8, !tbaa !22, !noalias !632
  %i.brt = load i64, ptr %i.aww, align 8, !tbaa !23, !noalias !632
  %i.bru = zext nneg i32 %i.brr to i64
  %i.brv = mul i64 %i.brt, %i.bru
  %i.brw = load i64, ptr %i.awx, align 8, !tbaa !64, !noalias !632
  %i.brx = mul i64 %i.brv, %i.brw
  %i.bry = getelementptr inbounds nuw i8, ptr %i.brs, i64 %i.brx ; 4 uses
  br i1 %i.axh, label %.preheader1577.lr.ph.i, label %.preheader1580.i

.preheader1577.lr.ph.i:                           ; preds = %_ZN4ncnn3MatD2Ev.exit1304.i
  br i1 %i.axi, label %.preheader1577.us.i, label %.preheader1580.thread.i

.preheader1577.us.i:                              ; preds = %.preheader1577.lr.ph.i, %._crit_edge1778.us.i
  %.011971785.us.i = phi i32 [ %i.bud, %._crit_edge1778.us.i ], [ 0, %.preheader1577.lr.ph.i ]
  %.012021784.us.i = phi ptr [ %i.bty, %._crit_edge1778.us.i ], [ %i.bry, %.preheader1577.lr.ph.i ]
  %.012131783.us.i = phi ptr [ %i.buc, %._crit_edge1778.us.i ], [ %i.brk, %.preheader1577.lr.ph.i ] ; 2 uses
  %.012161782.us.i = phi ptr [ %i.bub, %._crit_edge1778.us.i ], [ %i.brh, %.preheader1577.lr.ph.i ] ; 2 uses
  %.012191781.us.i = phi ptr [ %i.bua, %._crit_edge1778.us.i ], [ %i.brd, %.preheader1577.lr.ph.i ] ; 2 uses
  %.012221780.us.i = phi ptr [ %i.btz, %._crit_edge1778.us.i ], [ %i.bqz, %.preheader1577.lr.ph.i ] ; 2 uses
  br label %bb.fp

bb.fp:                                            ; preds = %bb.fp, %.preheader1577.us.i
  %indvars.iv2287.i = phi i64 [ 0, %.preheader1577.us.i ], [ %indvars.iv.next2288.i, %bb.fp ] ; 5 uses
  %.112031776.us.i = phi ptr [ %.012021784.us.i, %.preheader1577.us.i ], [ %i.bty, %bb.fp ] ; 5 uses
  %i.brz = getelementptr inbounds nuw [4 x i8], ptr %.012221780.us.i, i64 %indvars.iv2287.i
  %i.bsa = getelementptr inbounds nuw [4 x i8], ptr %.012191781.us.i, i64 %indvars.iv2287.i
  %i.bsb = getelementptr inbounds nuw [4 x i8], ptr %.012161782.us.i, i64 %indvars.iv2287.i
  %i.bsc = getelementptr inbounds nuw [4 x i8], ptr %.012131783.us.i, i64 %indvars.iv2287.i
  %i.bsd = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.brz, <16 x i32> %i.axg, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.bse = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.bsa, <16 x i32> %i.axg, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.bsf = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.bsb, <16 x i32> %i.axg, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.bsg = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.bsc, <16 x i32> %i.axg, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.bsh = shufflevector <16 x float> %i.bsd, <16 x float> %i.bse, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.bsi = shufflevector <16 x float> %i.bsd, <16 x float> %i.bse, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bsj = shufflevector <16 x float> %i.bsf, <16 x float> %i.bsg, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.bsk = shufflevector <16 x float> %i.bsf, <16 x float> %i.bsg, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bsl = shufflevector <16 x float> %i.bsh, <16 x float> %i.bsj, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 8, i32 9, i32 24, i32 25, i32 2, i32 3, i32 18, i32 19, i32 10, i32 11, i32 26, i32 27> ; 2 uses
  %i.bsm = shufflevector <16 x float> %i.bsi, <16 x float> %i.bsk, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 8, i32 9, i32 24, i32 25, i32 2, i32 3, i32 18, i32 19, i32 10, i32 11, i32 26, i32 27> ; 2 uses
  %i.bsn = shufflevector <16 x float> %i.bsh, <16 x float> %i.bsj, <16 x i32> <i32 4, i32 5, i32 20, i32 21, i32 12, i32 13, i32 28, i32 29, i32 6, i32 7, i32 22, i32 23, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.bso = shufflevector <16 x float> %i.bsi, <16 x float> %i.bsk, <16 x i32> <i32 4, i32 5, i32 20, i32 21, i32 12, i32 13, i32 28, i32 29, i32 6, i32 7, i32 22, i32 23, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.bsp = shufflevector <16 x float> %i.bsl, <16 x float> %i.bsm, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.bsq = shufflevector <16 x float> %i.bsn, <16 x float> %i.bso, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.bsr = shufflevector <16 x float> %i.bsl, <16 x float> %i.bsm, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.bss = shufflevector <16 x float> %i.bsn, <16 x float> %i.bso, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.bst = bitcast <16 x float> %i.bsp to <16 x i32>
  %i.bsu = lshr <16 x i32> %i.bst, splat (i32 16) ; 2 uses
  %i.bsv = shufflevector <16 x i32> %i.bsu, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bsw = shufflevector <16 x i32> %i.bsu, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bsx = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.bsv, <8 x i32> %i.bsw)
  %i.bsy = bitcast <16 x i16> %i.bsx to <4 x i64>
  %i.bsz = shufflevector <4 x i64> %i.bsy, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.bsz, ptr %.112031776.us.i, align 1, !tbaa !85
  %i.bta = getelementptr inbounds nuw i8, ptr %.112031776.us.i, i64 32
  %i.btb = bitcast <16 x float> %i.bsq to <16 x i32>
  %i.btc = lshr <16 x i32> %i.btb, splat (i32 16) ; 2 uses
  %i.btd = shufflevector <16 x i32> %i.btc, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bte = shufflevector <16 x i32> %i.btc, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.btf = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.btd, <8 x i32> %i.bte)
  %i.btg = bitcast <16 x i16> %i.btf to <4 x i64>
  %i.bth = shufflevector <4 x i64> %i.btg, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.bth, ptr %i.bta, align 1, !tbaa !85
  %i.bti = getelementptr inbounds nuw i8, ptr %.112031776.us.i, i64 64
  %i.btj = bitcast <16 x float> %i.bsr to <16 x i32>
  %i.btk = lshr <16 x i32> %i.btj, splat (i32 16) ; 2 uses
  %i.btl = shufflevector <16 x i32> %i.btk, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.btm = shufflevector <16 x i32> %i.btk, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.btn = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.btl, <8 x i32> %i.btm)
  %i.bto = bitcast <16 x i16> %i.btn to <4 x i64>
  %i.btp = shufflevector <4 x i64> %i.bto, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.btp, ptr %i.bti, align 1, !tbaa !85
  %i.btq = getelementptr inbounds nuw i8, ptr %.112031776.us.i, i64 96
  %i.btr = bitcast <16 x float> %i.bss to <16 x i32>
  %i.bts = lshr <16 x i32> %i.btr, splat (i32 16) ; 2 uses
  %i.btt = shufflevector <16 x i32> %i.bts, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.btu = shufflevector <16 x i32> %i.bts, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.btv = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.btt, <8 x i32> %i.btu)
  %i.btw = bitcast <16 x i16> %i.btv to <4 x i64>
  %i.btx = shufflevector <4 x i64> %i.btw, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.btx, ptr %i.btq, align 1, !tbaa !85
  %i.bty = getelementptr inbounds nuw i8, ptr %.112031776.us.i, i64 128 ; 3 uses
  %indvars.iv.next2288.i = add nuw nsw i64 %indvars.iv2287.i, 1 ; 2 uses
  %exitcond2291.not.i = icmp eq i64 %indvars.iv.next2288.i, %wide.trip.count2290.i
  br i1 %exitcond2291.not.i, label %._crit_edge1778.us.i, label %bb.fp, !llvm.loop !580
end_hunk_4
begin_hunk_5_@_ZN4ncnn22Convolution_x86_avx51221create_pipeline_bf16sERKNS_6OptionE:bb.a
  %i.byh = icmp slt i32 %i.byg, %i.t
  br i1 %i.byh, label %.preheader1575.us.i, label %._crit_edge1830.i, !llvm.loop !585

._crit_edge1830.i:                                ; preds = %._crit_edge1822.us.i, %.preheader1579.i
  %.21224.lcssa.i = phi ptr [ %.11223.lcssa.i, %.preheader1579.i ], [ %i.byb, %._crit_edge1822.us.i ] ; 2 uses
  %.41206.lcssa.i = phi ptr [ %.21204.lcssa.i, %.preheader1579.i ], [ %i.bya, %._crit_edge1822.us.i ] ; 2 uses
  %.21199.lcssa.i = phi i32 [ %.11198.lcssa.i, %.preheader1579.i ], [ %i.byf, %._crit_edge1822.us.i ] ; 3 uses
  %i.byi = or disjoint i32 %.21199.lcssa.i, 1
  %i.byj = icmp slt i32 %i.byi, %i.t
  br i1 %i.byj, label %.preheader1574.lr.ph.i, label %.preheader1578.i

.preheader1574.lr.ph.i:                           ; preds = %._crit_edge1830.i
  br i1 %i.axi, label %.preheader1574.us.i, label %._crit_edge1859.split.i

.preheader1574.us.i:                              ; preds = %.preheader1574.lr.ph.i, %._crit_edge1842.us.i
  %.312001846.us.i = phi i32 [ %i.cai, %._crit_edge1842.us.i ], [ %.21199.lcssa.i, %.preheader1574.lr.ph.i ]
  %.612081845.us.i = phi ptr [ %.lcssa727, %._crit_edge1842.us.i ], [ %.41206.lcssa.i, %.preheader1574.lr.ph.i ] ; 2 uses
  %.312251844.us.i = phi ptr [ %i.cah, %._crit_edge1842.us.i ], [ %.21224.lcssa.i, %.preheader1574.lr.ph.i ] ; 4 uses
  br i1 %i.ayp, label %.epil.preheader785, label %.preheader1574.us.i.new

.preheader1574.us.i.new:                          ; preds = %.preheader1574.us.i, %.preheader1574.us.i.new
  %indvars.iv2308.i = phi i64 [ %indvars.iv.next2309.i.1, %.preheader1574.us.i.new ], [ 0, %.preheader1574.us.i ] ; 3 uses
  %.712091840.us.i = phi ptr [ %i.bzq, %.preheader1574.us.i.new ], [ %.612081845.us.i, %.preheader1574.us.i ] ; 5 uses
  %niter792 = phi i64 [ %niter792.next.1, %.preheader1574.us.i.new ], [ 0, %.preheader1574.us.i ]
  %i.byk = getelementptr inbounds nuw [4 x i8], ptr %.312251844.us.i, i64 %indvars.iv2308.i ; 2 uses
  %i.byl = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %i.byk, <4 x i32> %i.axq, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.bym = bitcast <4 x float> %i.byl to <4 x i32>
  %i.byn = lshr <4 x i32> %i.bym, splat (i32 16)
  %i.byo = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.byn, <4 x i32> poison)
  %i.byp = bitcast <8 x i16> %i.byo to <2 x i64>
  %i.byq = extractelement <2 x i64> %i.byp, i64 0
  store i64 %i.byq, ptr %.712091840.us.i, align 1, !tbaa !85
  %i.byr = getelementptr inbounds nuw [4 x i8], ptr %i.byk, i64 %i.axr
  %i.bys = getelementptr inbounds nuw i8, ptr %.712091840.us.i, i64 8
  %i.byt = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %i.byr, <4 x i32> %i.axq, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.byu = bitcast <4 x float> %i.byt to <4 x i32>
  %i.byv = lshr <4 x i32> %i.byu, splat (i32 16)
  %i.byw = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.byv, <4 x i32> poison)
  %i.byx = bitcast <8 x i16> %i.byw to <2 x i64>
  %i.byy = extractelement <2 x i64> %i.byx, i64 0
  store i64 %i.byy, ptr %i.bys, align 1, !tbaa !85
  %i.byz = getelementptr inbounds nuw i8, ptr %.712091840.us.i, i64 16
  %i.bza = getelementptr inbounds nuw [4 x i8], ptr %.312251844.us.i, i64 %indvars.iv2308.i
  %i.bzb = getelementptr inbounds nuw i8, ptr %i.bza, i64 4 ; 2 uses
  %i.bzc = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.bzb, <4 x i32> %i.axq, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.bzd = bitcast <4 x float> %i.bzc to <4 x i32>
  %i.bze = lshr <4 x i32> %i.bzd, splat (i32 16)
  %i.bzf = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.bze, <4 x i32> poison)
  %i.bzg = bitcast <8 x i16> %i.bzf to <2 x i64>
  %i.bzh = extractelement <2 x i64> %i.bzg, i64 0
  store i64 %i.bzh, ptr %i.byz, align 1, !tbaa !85
  %i.bzi = getelementptr inbounds nuw [4 x i8], ptr %i.bzb, i64 %i.axr
  %i.bzj = getelementptr inbounds nuw i8, ptr %.712091840.us.i, i64 24
  %i.bzk = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.bzi, <4 x i32> %i.axq, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.bzl = bitcast <4 x float> %i.bzk to <4 x i32>
  %i.bzm = lshr <4 x i32> %i.bzl, splat (i32 16)
  %i.bzn = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.bzm, <4 x i32> poison)
  %i.bzo = bitcast <8 x i16> %i.bzn to <2 x i64>
  %i.bzp = extractelement <2 x i64> %i.bzo, i64 0
  store i64 %i.bzp, ptr %i.bzj, align 1, !tbaa !85
  %i.bzq = getelementptr inbounds nuw i8, ptr %.712091840.us.i, i64 32 ; 3 uses
  %indvars.iv.next2309.i.1 = add nuw nsw i64 %indvars.iv2308.i, 2 ; 2 uses
  %niter792.next.1 = add i64 %niter792, 2         ; 2 uses
  %niter792.ncmp.1 = icmp eq i64 %niter792.next.1, %unroll_iter791
  br i1 %niter792.ncmp.1, label %._crit_edge1842.us.i.unr-lcssa, label %.preheader1574.us.i.new, !llvm.loop !586

._crit_edge1842.us.i.unr-lcssa:                   ; preds = %.preheader1574.us.i.new
  br i1 %lcmp.mod788.not, label %._crit_edge1842.us.i, label %.epil.preheader785

.epil.preheader785:                               ; preds = %._crit_edge1842.us.i.unr-lcssa, %.preheader1574.us.i
  %indvars.iv2308.i.epil.init = phi i64 [ 0, %.preheader1574.us.i ], [ %indvars.iv.next2309.i.1, %._crit_edge1842.us.i.unr-lcssa ]
  %.712091840.us.i.epil.init = phi ptr [ %.612081845.us.i, %.preheader1574.us.i ], [ %i.bzq, %._crit_edge1842.us.i.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod790)
  %i.bzr = getelementptr inbounds nuw [4 x i8], ptr %.312251844.us.i, i64 %indvars.iv2308.i.epil.init ; 2 uses
  %i.bzs = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %i.bzr, <4 x i32> %i.axq, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.bzt = bitcast <4 x float> %i.bzs to <4 x i32>
  %i.bzu = lshr <4 x i32> %i.bzt, splat (i32 16)
  %i.bzv = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.bzu, <4 x i32> poison)
  %i.bzw = bitcast <8 x i16> %i.bzv to <2 x i64>
  %i.bzx = extractelement <2 x i64> %i.bzw, i64 0
  store i64 %i.bzx, ptr %.712091840.us.i.epil.init, align 1, !tbaa !85
  %i.bzy = getelementptr inbounds nuw [4 x i8], ptr %i.bzr, i64 %i.axr
  %i.bzz = getelementptr inbounds nuw i8, ptr %.712091840.us.i.epil.init, i64 8
  %i.caa = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %i.bzy, <4 x i32> %i.axq, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.cab = bitcast <4 x float> %i.caa to <4 x i32>
  %i.cac = lshr <4 x i32> %i.cab, splat (i32 16)
  %i.cad = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.cac, <4 x i32> poison)
  %i.cae = bitcast <8 x i16> %i.cad to <2 x i64>
  %i.caf = extractelement <2 x i64> %i.cae, i64 0
  store i64 %i.caf, ptr %i.bzz, align 1, !tbaa !85
  %i.cag = getelementptr inbounds nuw i8, ptr %.712091840.us.i.epil.init, i64 16
  br label %._crit_edge1842.us.i

._crit_edge1842.us.i:                             ; preds = %._crit_edge1842.us.i.unr-lcssa, %.epil.preheader785
  %.lcssa727 = phi ptr [ %i.bzq, %._crit_edge1842.us.i.unr-lcssa ], [ %i.cag, %.epil.preheader785 ] ; 2 uses
  %i.cah = getelementptr inbounds nuw [4 x i8], ptr %.312251844.us.i, i64 %i.axt ; 2 uses
  %i.cai = add nuw nsw i32 %.312001846.us.i, 2    ; 3 uses
  %i.caj = or disjoint i32 %i.cai, 1
  %i.cak = icmp slt i32 %i.caj, %i.t
  br i1 %i.cak, label %.preheader1574.us.i, label %.preheader1578.i, !llvm.loop !587

.preheader1578.i:                                 ; preds = %._crit_edge1842.us.i, %._crit_edge1830.i
  %.31225.lcssa.i = phi ptr [ %.21224.lcssa.i, %._crit_edge1830.i ], [ %i.cah, %._crit_edge1842.us.i ] ; 5 uses
  %.61208.lcssa.i = phi ptr [ %.41206.lcssa.i, %._crit_edge1830.i ], [ %.lcssa727, %._crit_edge1842.us.i ]
  %.31200.lcssa.i = phi i32 [ %.21199.lcssa.i, %._crit_edge1830.i ], [ %i.cai, %._crit_edge1842.us.i ] ; 2 uses
  %i.cal = icmp sge i32 %.31200.lcssa.i, %i.t
  %brmerge2009.i = or i1 %i.axu, %i.cal
  br i1 %brmerge2009.i, label %._crit_edge1859.split.i, label %.preheader1573.i

.preheader1573.i:                                 ; preds = %.preheader1578.i, %._crit_edge1855.i
  %.412011858.i = phi i32 [ %i.cau, %._crit_edge1855.i ], [ %.31200.lcssa.i, %.preheader1578.i ]
  %.912111857.i = phi ptr [ %.lcssa730, %._crit_edge1855.i ], [ %.61208.lcssa.i, %.preheader1578.i ] ; 2 uses
  br i1 %i.ayq, label %.epil.preheader793, label %.preheader1573.i.new

._crit_edge1855.i.unr-lcssa:                      ; preds = %.preheader1573.i.new
  br i1 %lcmp.mod796.not, label %._crit_edge1855.i, label %.epil.preheader793

.epil.preheader793:                               ; preds = %._crit_edge1855.i.unr-lcssa, %.preheader1573.i
  %indvars.iv2313.i.epil.init = phi i64 [ 0, %.preheader1573.i ], [ %indvars.iv.next2314.i.3, %._crit_edge1855.i.unr-lcssa ]
  %.1012121853.i.epil.init = phi ptr [ %.912111857.i, %.preheader1573.i ], [ %i.ccd, %._crit_edge1855.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod798)
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fs, %.epil.preheader793
  %indvars.iv2313.i.epil = phi i64 [ %indvars.iv2313.i.epil.init, %.epil.preheader793 ], [ %indvars.iv.next2314.i.epil, %bb.fs ] ; 2 uses
  %.1012121853.i.epil = phi ptr [ %.1012121853.i.epil.init, %.epil.preheader793 ], [ %i.cat, %bb.fs ] ; 2 uses
  %epil.iter795 = phi i64 [ 0, %.epil.preheader793 ], [ %epil.iter795.next, %bb.fs ]
  %i.cam = getelementptr inbounds nuw [4 x i8], ptr %.31225.lcssa.i, i64 %indvars.iv2313.i.epil
  %i.can = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %i.cam, <4 x i32> %i.axq, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.cao = bitcast <4 x float> %i.can to <4 x i32>
  %i.cap = lshr <4 x i32> %i.cao, splat (i32 16)
  %i.caq = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.cap, <4 x i32> poison)
  %i.car = bitcast <8 x i16> %i.caq to <2 x i64>
  %i.cas = extractelement <2 x i64> %i.car, i64 0
  store i64 %i.cas, ptr %.1012121853.i.epil, align 1, !tbaa !85
  %i.cat = getelementptr inbounds nuw i8, ptr %.1012121853.i.epil, i64 8 ; 2 uses
  %indvars.iv.next2314.i.epil = add nuw nsw i64 %indvars.iv2313.i.epil, 1
  %epil.iter795.next = add i64 %epil.iter795, 1   ; 2 uses
  %epil.iter795.cmp.not = icmp eq i64 %epil.iter795.next, %xtraiter794
  br i1 %epil.iter795.cmp.not, label %._crit_edge1855.i, label %bb.fs, !llvm.loop !588

._crit_edge1855.i:                                ; preds = %bb.fs, %._crit_edge1855.i.unr-lcssa
  %.lcssa730 = phi ptr [ %i.ccd, %._crit_edge1855.i.unr-lcssa ], [ %i.cat, %bb.fs ]
  %i.cau = add nuw nsw i32 %.412011858.i, 1       ; 2 uses
  %exitcond2318.not.i = icmp eq i32 %i.cau, %i.t
  br i1 %exitcond2318.not.i, label %._crit_edge1859.split.i, label %.preheader1573.i, !llvm.loop !589

.preheader1573.i.new:                             ; preds = %.preheader1573.i, %.preheader1573.i.new
  %indvars.iv2313.i = phi i64 [ %indvars.iv.next2314.i.3, %.preheader1573.i.new ], [ 0, %.preheader1573.i ] ; 5 uses
  %.1012121853.i = phi ptr [ %i.ccd, %.preheader1573.i.new ], [ %.912111857.i, %.preheader1573.i ] ; 5 uses
  %niter800 = phi i64 [ %niter800.next.3, %.preheader1573.i.new ], [ 0, %.preheader1573.i ]
  %i.cav = getelementptr inbounds nuw [4 x i8], ptr %.31225.lcssa.i, i64 %indvars.iv2313.i
  %i.caw = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %i.cav, <4 x i32> %i.axq, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.cax = bitcast <4 x float> %i.caw to <4 x i32>
  %i.cay = lshr <4 x i32> %i.cax, splat (i32 16)
  %i.caz = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.cay, <4 x i32> poison)
  %i.cba = bitcast <8 x i16> %i.caz to <2 x i64>
  %i.cbb = extractelement <2 x i64> %i.cba, i64 0
  store i64 %i.cbb, ptr %.1012121853.i, align 1, !tbaa !85
  %i.cbc = getelementptr inbounds nuw i8, ptr %.1012121853.i, i64 8
  %i.cbd = getelementptr inbounds nuw [4 x i8], ptr %.31225.lcssa.i, i64 %indvars.iv2313.i
  %i.cbe = getelementptr inbounds nuw i8, ptr %i.cbd, i64 4
  %i.cbf = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.cbe, <4 x i32> %i.axq, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.cbg = bitcast <4 x float> %i.cbf to <4 x i32>
  %i.cbh = lshr <4 x i32> %i.cbg, splat (i32 16)
  %i.cbi = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.cbh, <4 x i32> poison)
  %i.cbj = bitcast <8 x i16> %i.cbi to <2 x i64>
  %i.cbk = extractelement <2 x i64> %i.cbj, i64 0
  store i64 %i.cbk, ptr %i.cbc, align 1, !tbaa !85
  %i.cbl = getelementptr inbounds nuw i8, ptr %.1012121853.i, i64 16
  %i.cbm = getelementptr inbounds nuw [4 x i8], ptr %.31225.lcssa.i, i64 %indvars.iv2313.i
  %i.cbn = getelementptr inbounds nuw i8, ptr %i.cbm, i64 8
  %i.cbo = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.cbn, <4 x i32> %i.axq, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.cbp = bitcast <4 x float> %i.cbo to <4 x i32>
  %i.cbq = lshr <4 x i32> %i.cbp, splat (i32 16)
  %i.cbr = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.cbq, <4 x i32> poison)
  %i.cbs = bitcast <8 x i16> %i.cbr to <2 x i64>
  %i.cbt = extractelement <2 x i64> %i.cbs, i64 0
  store i64 %i.cbt, ptr %i.cbl, align 1, !tbaa !85
  %i.cbu = getelementptr inbounds nuw i8, ptr %.1012121853.i, i64 24
  %i.cbv = getelementptr inbounds nuw [4 x i8], ptr %.31225.lcssa.i, i64 %indvars.iv2313.i
  %i.cbw = getelementptr inbounds nuw i8, ptr %i.cbv, i64 12
  %i.cbx = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.cbw, <4 x i32> %i.axq, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.cby = bitcast <4 x float> %i.cbx to <4 x i32>
  %i.cbz = lshr <4 x i32> %i.cby, splat (i32 16)
  %i.cca = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.cbz, <4 x i32> poison)
  %i.ccb = bitcast <8 x i16> %i.cca to <2 x i64>
  %i.ccc = extractelement <2 x i64> %i.ccb, i64 0
  store i64 %i.ccc, ptr %i.cbu, align 1, !tbaa !85
  %i.ccd = getelementptr inbounds nuw i8, ptr %.1012121853.i, i64 32 ; 3 uses
  %indvars.iv.next2314.i.3 = add nuw nsw i64 %indvars.iv2313.i, 4 ; 2 uses
  %niter800.next.3 = add i64 %niter800, 4         ; 2 uses
  %niter800.ncmp.3 = icmp eq i64 %niter800.next.3, %unroll_iter799
  br i1 %niter800.ncmp.3, label %._crit_edge1855.i.unr-lcssa, label %.preheader1573.i.new, !llvm.loop !590

._crit_edge1859.split.i:                          ; preds = %._crit_edge1855.i, %.preheader1578.i, %.preheader1574.lr.ph.i, %.preheader1575.lr.ph.i
  %indvars.iv.next2320.i = add nuw nsw i64 %indvars.iv2319.i, 4 ; 3 uses
  %i.cce = or disjoint i64 %indvars.iv.next2320.i, 3 ; 2 uses
  %i.ccf = icmp slt i64 %i.cce, %i.ayj
  %i.ccg = add <4 x i32> %i.bqs, %i.ayn
  %i.cch = trunc nsw i64 %i.cce to i32
  br i1 %i.ccf, label %_ZN4ncnn3MatD2Ev.exit1304.i, label %.preheader1572.loopexit.i, !llvm.loop !591

.preheader1562.loopexit.i:                        ; preds = %._crit_edge1936.split.i
  %i.cci = trunc nsw i64 %indvars.iv.next2362.i to i32
  br label %.preheader1562.i

.preheader1562.i:                                 ; preds = %.preheader1562.loopexit.i, %.preheader1572.i
  %.3.lcssa.i = phi i32 [ %.2.lcssa.i, %.preheader1572.i ], [ %i.cci, %.preheader1562.loopexit.i ] ; 3 uses
  %i.ccj = icmp slt i32 %.3.lcssa.i, %i.ek
  br i1 %i.ccj, label %_ZN4ncnn3MatD2Ev.exit.lr.ph.i, label %_ZN4ncnnL41convolution_transform_kernel_packed_bf16sERKNS_3MatERS0_iiii.exit

_ZN4ncnn3MatD2Ev.exit.lr.ph.i:                    ; preds = %.preheader1562.i
  %i.cck = mul i32 %i.ps, %i.t                    ; 3 uses
  %i.ccl = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.ccm = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.ccn = insertelement <4 x i32> poison, i32 %i.ps, i64 0
  %i.cco = shufflevector <4 x i32> %i.ccn, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ccp = mul <4 x i32> %i.cco, <i32 0, i32 1, i32 2, i32 3> ; 5 uses
  %i.ccq = insertelement <8 x i32> poison, i32 %i.ps, i64 0
  %i.ccr = shufflevector <8 x i32> %i.ccq, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.ccs = mul <8 x i32> %i.ccr, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 5 uses
  %i.cct = insertelement <16 x i32> poison, i32 %i.ps, i64 0
  %i.ccu = shufflevector <16 x i32> %i.cct, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.ccv = mul <16 x i32> %i.ccu, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 3 uses
  %i.ccw = icmp sgt i32 %i.t, 15
  %i.ccx = icmp sgt i32 %i.ps, 0                  ; 4 uses
  %i.ccy = shl i32 %i.ps, 4
  %i.ccz = sext i32 %i.ccy to i64                 ; 2 uses
  %i.cda = shl i32 %i.ps, 3
  %i.cdb = sext i32 %i.cda to i64                 ; 2 uses
  %i.cdc = shl i32 %i.ps, 2
  %i.cdd = sext i32 %i.cdc to i64
  %i.cde = sext i32 %i.ps to i64                  ; 3 uses
  %i.cdf = shl i32 %i.ps, 1
  %i.cdg = sext i32 %i.cdf to i64
  %i.cdh = icmp slt i32 %i.ps, 1
  %i.cdi = add i32 %i.t, -16                      ; 2 uses
  %i.cdj = lshr i32 %i.cdi, 2
  %i.cdk = and i32 %i.cdj, 1073741820
  %narrow2443.i = add nuw nsw i32 %i.cdk, 4
  %i.cdl = zext nneg i32 %narrow2443.i to i64
  %i.cdm = mul nsw i64 %i.ccz, %i.cdl
  %i.cdn = mul i32 %i.cck, %.3.lcssa.i
  %i.cdo = and i32 %i.cdi, -16
  %i.cdp = add nuw i32 %i.cdo, 16                 ; 4 uses
  %i.cdq = add i32 %i.t, -8
  %i.cdr = sext i32 %.3.lcssa.i to i64
  %wide.trip.count2400.i = sext i32 %i.ek to i64
  %i.cds = or disjoint i32 %i.cdp, 7
  %i.cdt = icmp slt i32 %i.cds, %i.t
  %wide.trip.count2371.i = zext i32 %i.ps to i64  ; 19 uses
  %i.cdu = add nsw i64 %wide.trip.count2371.i, -1 ; 3 uses
  %xtraiter826 = and i64 %wide.trip.count2371.i, 1
  %i.cdv = icmp eq i64 %i.cdu, 0
  %unroll_iter831 = and i64 %wide.trip.count2371.i, 2147483646
  %lcmp.mod828.not = icmp eq i64 %xtraiter826, 0
  %lcmp.mod830 = trunc i32 %i.ps to i1
  %xtraiter834 = and i64 %wide.trip.count2371.i, 3 ; 3 uses
  %i.cdw = icmp ult i64 %i.cdu, 3
  %unroll_iter839 = and i64 %wide.trip.count2371.i, 2147483644
  %lcmp.mod836.not = icmp eq i64 %xtraiter834, 0
  %lcmp.mod838 = icmp ne i64 %xtraiter834, 0
  %xtraiter842 = and i64 %wide.trip.count2371.i, 3 ; 3 uses
  %i.cdx = icmp ult i64 %i.cdu, 3
  %unroll_iter847 = and i64 %wide.trip.count2371.i, 2147483644
  %lcmp.mod844.not = icmp eq i64 %xtraiter842, 0
  %lcmp.mod846 = icmp ne i64 %xtraiter842, 0
  %min.iters.check590 = icmp ult i32 %i.ps, 8
  %min.iters.check592 = icmp ult i32 %i.ps, 32
  %i.cdy = and i64 %wide.trip.count2371.i, 24
  %n.vec594 = and i64 %wide.trip.count2371.i, 2147483616 ; 5 uses
  %i.cdz = shl nuw nsw i64 %n.vec594, 2
  %cmp.n607 = icmp eq i64 %n.vec594, %wide.trip.count2371.i
  %min.epilog.iters.check612 = icmp eq i64 %i.cdy, 0
  %n.vec614 = and i64 %wide.trip.count2371.i, 2147483640 ; 4 uses
  %i.cea = shl nuw nsw i64 %n.vec614, 2
  %cmp.n623 = icmp eq i64 %n.vec614, %wide.trip.count2371.i
  %min.iters.check559 = icmp ult i32 %i.ps, 8
  %min.iters.check561 = icmp ult i32 %i.ps, 64
  %i.ceb = and i64 %wide.trip.count2371.i, 56
  %n.vec563 = and i64 %wide.trip.count2371.i, 2147483584 ; 5 uses
  %i.cec = shl nuw nsw i64 %n.vec563, 1
  %cmp.n573 = icmp eq i64 %n.vec563, %wide.trip.count2371.i
  %min.epilog.iters.check578 = icmp eq i64 %i.ceb, 0
  %n.vec580 = and i64 %wide.trip.count2371.i, 2147483640 ; 4 uses
  %i.ced = shl nuw nsw i64 %n.vec580, 1
  %cmp.n587 = icmp eq i64 %n.vec580, %wide.trip.count2371.i
  br label %_ZN4ncnn3MatD2Ev.exit.i103

_ZN4ncnn3MatD2Ev.exit1303.i:                      ; preds = %._crit_edge1936.split.i, %_ZN4ncnn3MatD2Ev.exit1303.lr.ph.i
  %indvars.iv2361.i = phi i64 [ %i.bqd, %_ZN4ncnn3MatD2Ev.exit1303.lr.ph.i ], [ %indvars.iv.next2362.i, %._crit_edge1936.split.i ] ; 2 uses
  %indvars.iv2326.i = phi i32 [ %i.bpz, %_ZN4ncnn3MatD2Ev.exit1303.lr.ph.i ], [ %indvars.iv.next2327.i, %._crit_edge1936.split.i ] ; 2 uses
  %indvars.iv2323.i = phi i32 [ %i.bpx, %_ZN4ncnn3MatD2Ev.exit1303.lr.ph.i ], [ %indvars.iv.next2324.i, %._crit_edge1936.split.i ] ; 2 uses
  %i.cee = phi i32 [ %i.bos, %_ZN4ncnn3MatD2Ev.exit1303.lr.ph.i ], [ %i.cou, %._crit_edge1936.split.i ]
  %i.cef = sext i32 %indvars.iv2323.i to i64
  %i.ceg = shl nsw i64 %i.cef, 2
  %i.ceh = sext i32 %indvars.iv2326.i to i64
  %i.cei = shl nsw i64 %i.ceh, 2
  %i.cej = load ptr, ptr %i.pp, align 8, !tbaa !22 ; 3 uses
  %i.cek = trunc nsw i64 %indvars.iv2361.i to i32 ; 2 uses
  %i.cel = mul i32 %i.bou, %i.cek
  %i.cem = sext i32 %i.cel to i64
  %i.cen = getelementptr inbounds [4 x i8], ptr %i.cej, i64 %i.cem ; 2 uses
  %i.ceo = mul i32 %i.cee, %i.bou
  %i.cep = sext i32 %i.ceo to i64
  %i.ceq = getelementptr inbounds [4 x i8], ptr %i.cej, i64 %i.cep ; 2 uses
  %i.cer = insertelement <4 x i32> poison, i32 %i.cek, i64 0
  %i.ces = shufflevector <4 x i32> %i.cer, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.cet = lshr <4 x i32> %i.ces, <i32 3, i32 2, i32 1, i32 4>
  %i.ceu = and <4 x i32> %i.cet, <i32 1, i32 1, i32 1, i32 -1>
  %i.cev = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.ceu)
  %i.cew = load ptr, ptr %i.pq, align 8, !tbaa !22, !noalias !633
  %i.cex = load i64, ptr %i.bov, align 8, !tbaa !23, !noalias !633
  %i.cey = zext nneg i32 %i.cev to i64
  %i.cez = mul i64 %i.cex, %i.cey
  %i.cfa = load i64, ptr %i.bow, align 8, !tbaa !64, !noalias !633
  %i.cfb = mul i64 %i.cez, %i.cfa
  %i.cfc = getelementptr inbounds nuw i8, ptr %i.cew, i64 %i.cfb ; 4 uses
  br i1 %i.bpg, label %.preheader1567.lr.ph.i, label %.preheader1571.i

.preheader1567.lr.ph.i:                           ; preds = %_ZN4ncnn3MatD2Ev.exit1303.i
  br i1 %i.bph, label %.preheader1567.us.i, label %.preheader1571.thread.i

.preheader1567.us.i:                              ; preds = %.preheader1567.lr.ph.i, %._crit_edge1864.us.i
  %.011371869.us.i = phi i32 [ %i.chn, %._crit_edge1864.us.i ], [ 0, %.preheader1567.lr.ph.i ]
  %.011421868.us.i = phi ptr [ %.lcssa697, %._crit_edge1864.us.i ], [ %i.cfc, %.preheader1567.lr.ph.i ] ; 2 uses
  %.011531867.us.i = phi ptr [ %i.chm, %._crit_edge1864.us.i ], [ %i.ceq, %.preheader1567.lr.ph.i ] ; 4 uses
  %.011571866.us.i = phi ptr [ %i.chl, %._crit_edge1864.us.i ], [ %i.cen, %.preheader1567.lr.ph.i ] ; 4 uses
  br i1 %i.bqi, label %.epil.preheader801, label %.preheader1567.us.i.new

.preheader1567.us.i.new:                          ; preds = %.preheader1567.us.i, %.preheader1567.us.i.new
  %indvars.iv2329.i = phi i64 [ %indvars.iv.next2330.i.1, %.preheader1567.us.i.new ], [ 0, %.preheader1567.us.i ] ; 4 uses
  %.111431862.us.i = phi ptr [ %i.cgq, %.preheader1567.us.i.new ], [ %.011421868.us.i, %.preheader1567.us.i ] ; 5 uses
  %niter808 = phi i64 [ %niter808.next.1, %.preheader1567.us.i.new ], [ 0, %.preheader1567.us.i ]
  %i.cfd = getelementptr inbounds nuw [4 x i8], ptr %.011571866.us.i, i64 %indvars.iv2329.i
  %i.cfe = getelementptr inbounds nuw [4 x i8], ptr %.011531867.us.i, i64 %indvars.iv2329.i
  %i.cff = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.cfd, <16 x i32> %i.bpf, <16 x i1> splat (i1 true), i32 4)
  %i.cfg = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.cfe, <16 x i32> %i.bpf, <16 x i1> splat (i1 true), i32 4)
  %i.cfh = bitcast <16 x float> %i.cff to <16 x i32>
  %i.cfi = lshr <16 x i32> %i.cfh, splat (i32 16) ; 2 uses
  %i.cfj = shufflevector <16 x i32> %i.cfi, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cfk = shufflevector <16 x i32> %i.cfi, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cfl = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.cfj, <8 x i32> %i.cfk)
  %i.cfm = bitcast <16 x i16> %i.cfl to <4 x i64>
  %i.cfn = shufflevector <4 x i64> %i.cfm, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.cfn, ptr %.111431862.us.i, align 1, !tbaa !85
  %i.cfo = getelementptr inbounds nuw i8, ptr %.111431862.us.i, i64 32
  %i.cfp = bitcast <16 x float> %i.cfg to <16 x i32>
  %i.cfq = lshr <16 x i32> %i.cfp, splat (i32 16) ; 2 uses
  %i.cfr = shufflevector <16 x i32> %i.cfq, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cfs = shufflevector <16 x i32> %i.cfq, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cft = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.cfr, <8 x i32> %i.cfs)
  %i.cfu = bitcast <16 x i16> %i.cft to <4 x i64>
  %i.cfv = shufflevector <4 x i64> %i.cfu, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.cfv, ptr %i.cfo, align 1, !tbaa !85
  %i.cfw = getelementptr inbounds nuw i8, ptr %.111431862.us.i, i64 64
  %indvars.iv.next2330.i = or disjoint i64 %indvars.iv2329.i, 1 ; 2 uses
  %i.cfx = getelementptr inbounds nuw [4 x i8], ptr %.011571866.us.i, i64 %indvars.iv.next2330.i
  %i.cfy = getelementptr inbounds nuw [4 x i8], ptr %.011531867.us.i, i64 %indvars.iv.next2330.i
  %i.cfz = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.cfx, <16 x i32> %i.bpf, <16 x i1> splat (i1 true), i32 4)
  %i.cga = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.cfy, <16 x i32> %i.bpf, <16 x i1> splat (i1 true), i32 4)
  %i.cgb = bitcast <16 x float> %i.cfz to <16 x i32>
  %i.cgc = lshr <16 x i32> %i.cgb, splat (i32 16) ; 2 uses
  %i.cgd = shufflevector <16 x i32> %i.cgc, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cge = shufflevector <16 x i32> %i.cgc, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cgf = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.cgd, <8 x i32> %i.cge)
  %i.cgg = bitcast <16 x i16> %i.cgf to <4 x i64>
  %i.cgh = shufflevector <4 x i64> %i.cgg, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.cgh, ptr %i.cfw, align 1, !tbaa !85
  %i.cgi = getelementptr inbounds nuw i8, ptr %.111431862.us.i, i64 96
  %i.cgj = bitcast <16 x float> %i.cga to <16 x i32>
  %i.cgk = lshr <16 x i32> %i.cgj, splat (i32 16) ; 2 uses
  %i.cgl = shufflevector <16 x i32> %i.cgk, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cgm = shufflevector <16 x i32> %i.cgk, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cgn = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.cgl, <8 x i32> %i.cgm)
  %i.cgo = bitcast <16 x i16> %i.cgn to <4 x i64>
  %i.cgp = shufflevector <4 x i64> %i.cgo, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.cgp, ptr %i.cgi, align 1, !tbaa !85
  %i.cgq = getelementptr inbounds nuw i8, ptr %.111431862.us.i, i64 128 ; 3 uses
  %indvars.iv.next2330.i.1 = add nuw nsw i64 %indvars.iv2329.i, 2 ; 2 uses
  %niter808.next.1 = add i64 %niter808, 2         ; 2 uses
  %niter808.ncmp.1 = icmp eq i64 %niter808.next.1, %unroll_iter807
  br i1 %niter808.ncmp.1, label %._crit_edge1864.us.i.unr-lcssa, label %.preheader1567.us.i.new, !llvm.loop !594

._crit_edge1864.us.i.unr-lcssa:                   ; preds = %.preheader1567.us.i.new
  br i1 %lcmp.mod804.not, label %._crit_edge1864.us.i, label %.epil.preheader801

.epil.preheader801:                               ; preds = %._crit_edge1864.us.i.unr-lcssa, %.preheader1567.us.i
  %indvars.iv2329.i.epil.init = phi i64 [ 0, %.preheader1567.us.i ], [ %indvars.iv.next2330.i.1, %._crit_edge1864.us.i.unr-lcssa ] ; 2 uses
  %.111431862.us.i.epil.init = phi ptr [ %.011421868.us.i, %.preheader1567.us.i ], [ %i.cgq, %._crit_edge1864.us.i.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod806)
  %i.cgr = getelementptr inbounds nuw [4 x i8], ptr %.011571866.us.i, i64 %indvars.iv2329.i.epil.init
  %i.cgs = getelementptr inbounds nuw [4 x i8], ptr %.011531867.us.i, i64 %indvars.iv2329.i.epil.init
  %i.cgt = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.cgr, <16 x i32> %i.bpf, <16 x i1> splat (i1 true), i32 4)
  %i.cgu = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.cgs, <16 x i32> %i.bpf, <16 x i1> splat (i1 true), i32 4)
  %i.cgv = bitcast <16 x float> %i.cgt to <16 x i32>
  %i.cgw = lshr <16 x i32> %i.cgv, splat (i32 16) ; 2 uses
  %i.cgx = shufflevector <16 x i32> %i.cgw, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cgy = shufflevector <16 x i32> %i.cgw, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cgz = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.cgx, <8 x i32> %i.cgy)
end_hunk_5
begin_hunk_6_@_ZN4ncnnL40convolution_im2col_gemm_transform_kernelERKNS_3MatERS0_iiiiRKNS_6OptionE.omp_outlined:bb.a
  br i1 %cmp.n512, label %._crit_edge195.i, label %vec.epilog.iter.check525

vec.epilog.iter.check525:                         ; preds = %middle.block511
  %min.epilog.iters.check526.not.not = icmp eq i64 %i.ok, 0
  br i1 %min.epilog.iters.check526.not.not, label %.lr.ph194.i.preheader, label %vec.epilog.ph527, !prof !105

vec.epilog.ph527:                                 ; preds = %vector.main.loop.iter.check486, %vec.epilog.iter.check525
  %vec.epilog.resume.val513 = phi i64 [ %n.vec489, %vec.epilog.iter.check525 ], [ 0, %vector.main.loop.iter.check486 ]
  %n.vec528 = and i64 %i.oe, 8589934584           ; 5 uses
  %i.ph = shl nuw nsw i64 %n.vec528, 5
  %i.pi = getelementptr i8, ptr %.4.lcssa.i, i64 %i.ph ; 2 uses
  %i.pj = trunc i64 %n.vec528 to i32
  %i.pk = add i32 %.0509.lcssa.i, %i.pj
  %i.pl = shl nuw nsw i64 %n.vec528, 2            ; 8 uses
  %i.pm = getelementptr i8, ptr %.0511.lcssa.i, i64 %i.pl
  %i.pn = getelementptr i8, ptr %.0513.lcssa.i, i64 %i.pl
  %i.po = getelementptr i8, ptr %.0515.lcssa.i, i64 %i.pl
  %i.pp = getelementptr i8, ptr %.0517.lcssa.i, i64 %i.pl
  %i.pq = getelementptr i8, ptr %.0519.lcssa.i, i64 %i.pl
  %i.pr = getelementptr i8, ptr %.0521.lcssa.i, i64 %i.pl
  %i.ps = getelementptr i8, ptr %.0523.lcssa.i, i64 %i.pl
  %i.pt = getelementptr i8, ptr %.0525.lcssa.i, i64 %i.pl
  br label %vec.epilog.vector.body529

vec.epilog.vector.body529:                        ; preds = %vec.epilog.vector.body529, %vec.epilog.ph527
  %index530 = phi i64 [ %vec.epilog.resume.val513, %vec.epilog.ph527 ], [ %index.next549, %vec.epilog.vector.body529 ] ; 3 uses
  %i.pu = shl i64 %index530, 5
  %next.gep531 = getelementptr i8, ptr %.4.lcssa.i, i64 %i.pu
  %i.pv = shl i64 %index530, 2                    ; 8 uses
  %next.gep532 = getelementptr i8, ptr %.0511.lcssa.i, i64 %i.pv
  %next.gep533 = getelementptr i8, ptr %.0513.lcssa.i, i64 %i.pv
  %next.gep534 = getelementptr i8, ptr %.0515.lcssa.i, i64 %i.pv
  %next.gep535 = getelementptr i8, ptr %.0517.lcssa.i, i64 %i.pv
  %next.gep536 = getelementptr i8, ptr %.0519.lcssa.i, i64 %i.pv
  %next.gep537 = getelementptr i8, ptr %.0521.lcssa.i, i64 %i.pv
  %next.gep538 = getelementptr i8, ptr %.0523.lcssa.i, i64 %i.pv
  %next.gep539 = getelementptr i8, ptr %.0525.lcssa.i, i64 %i.pv
  %wide.load540 = load <8 x float>, ptr %next.gep539, align 4, !tbaa !41, !alias.scope !806
  %wide.load541 = load <8 x float>, ptr %next.gep538, align 4, !tbaa !41, !alias.scope !807
  %wide.load542 = load <8 x float>, ptr %next.gep537, align 4, !tbaa !41, !alias.scope !808
  %wide.load543 = load <8 x float>, ptr %next.gep536, align 4, !tbaa !41, !alias.scope !809
  %wide.load544 = load <8 x float>, ptr %next.gep535, align 4, !tbaa !41, !alias.scope !810
  %wide.load545 = load <8 x float>, ptr %next.gep534, align 4, !tbaa !41, !alias.scope !811
  %wide.load546 = load <8 x float>, ptr %next.gep533, align 4, !tbaa !41, !alias.scope !812
  %wide.load547 = load <8 x float>, ptr %next.gep532, align 4, !tbaa !41, !alias.scope !813
  %i.pw = shufflevector <8 x float> %wide.load540, <8 x float> %wide.load541, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.px = shufflevector <8 x float> %wide.load542, <8 x float> %wide.load543, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.py = shufflevector <8 x float> %wide.load544, <8 x float> %wide.load545, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.pz = shufflevector <8 x float> %wide.load546, <8 x float> %wide.load547, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.qa = shufflevector <16 x float> %i.pw, <16 x float> %i.px, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.qb = shufflevector <16 x float> %i.py, <16 x float> %i.pz, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %interleaved.vec548 = shufflevector <32 x float> %i.qa, <32 x float> %i.qb, <64 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56, i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 49, i32 57, i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 50, i32 58, i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 51, i32 59, i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 52, i32 60, i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 53, i32 61, i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 54, i32 62, i32 7, i32 15, i32 23, i32 31, i32 39, i32 47, i32 55, i32 63>
  store <64 x float> %interleaved.vec548, ptr %next.gep531, align 4, !tbaa !41, !alias.scope !814, !noalias !815
  %index.next549 = add nuw i64 %index530, 8       ; 2 uses
  %i.qc = icmp eq i64 %index.next549, %n.vec528
  br i1 %i.qc, label %vec.epilog.middle.block550, label %vec.epilog.vector.body529, !llvm.loop !751

vec.epilog.middle.block550:                       ; preds = %vec.epilog.vector.body529
  %cmp.n551 = icmp eq i64 %i.oe, %n.vec528
  br i1 %cmp.n551, label %._crit_edge195.i, label %.lr.ph194.i.preheader

.lr.ph194.i.preheader:                            ; preds = %vector.memcheck435, %iter.check523, %vec.epilog.iter.check525, %vec.epilog.middle.block550
  %.5193.i.ph = phi ptr [ %.4.lcssa.i, %iter.check523 ], [ %.4.lcssa.i, %vector.memcheck435 ], [ %i.om, %vec.epilog.iter.check525 ], [ %i.pi, %vec.epilog.middle.block550 ]
  %.1510192.i.ph = phi i32 [ %.0509.lcssa.i, %iter.check523 ], [ %.0509.lcssa.i, %vector.memcheck435 ], [ %i.oo, %vec.epilog.iter.check525 ], [ %i.pk, %vec.epilog.middle.block550 ]
  %.1512191.i.ph = phi ptr [ %.0511.lcssa.i, %iter.check523 ], [ %.0511.lcssa.i, %vector.memcheck435 ], [ %i.oq, %vec.epilog.iter.check525 ], [ %i.pm, %vec.epilog.middle.block550 ]
  %.1514190.i.ph = phi ptr [ %.0513.lcssa.i, %iter.check523 ], [ %.0513.lcssa.i, %vector.memcheck435 ], [ %i.or, %vec.epilog.iter.check525 ], [ %i.pn, %vec.epilog.middle.block550 ]
  %.1516189.i.ph = phi ptr [ %.0515.lcssa.i, %iter.check523 ], [ %.0515.lcssa.i, %vector.memcheck435 ], [ %i.os, %vec.epilog.iter.check525 ], [ %i.po, %vec.epilog.middle.block550 ]
  %.1518188.i.ph = phi ptr [ %.0517.lcssa.i, %iter.check523 ], [ %.0517.lcssa.i, %vector.memcheck435 ], [ %i.ot, %vec.epilog.iter.check525 ], [ %i.pp, %vec.epilog.middle.block550 ]
  %.1520187.i.ph = phi ptr [ %.0519.lcssa.i, %iter.check523 ], [ %.0519.lcssa.i, %vector.memcheck435 ], [ %i.ou, %vec.epilog.iter.check525 ], [ %i.pq, %vec.epilog.middle.block550 ]
  %.1522186.i.ph = phi ptr [ %.0521.lcssa.i, %iter.check523 ], [ %.0521.lcssa.i, %vector.memcheck435 ], [ %i.ov, %vec.epilog.iter.check525 ], [ %i.pr, %vec.epilog.middle.block550 ]
  %.1524185.i.ph = phi ptr [ %.0523.lcssa.i, %iter.check523 ], [ %.0523.lcssa.i, %vector.memcheck435 ], [ %i.ow, %vec.epilog.iter.check525 ], [ %i.ps, %vec.epilog.middle.block550 ]
  %.1526184.i.ph = phi ptr [ %.0525.lcssa.i, %iter.check523 ], [ %.0525.lcssa.i, %vector.memcheck435 ], [ %i.ox, %vec.epilog.iter.check525 ], [ %i.pt, %vec.epilog.middle.block550 ]
  br label %.lr.ph194.i

.lr.ph173.i:                                      ; preds = %bb.d, %.lr.ph173.i
  %.4171.i = phi ptr [ %i.rq, %.lr.ph173.i ], [ %.3198.i, %bb.d ] ; 9 uses
  %.0509170.i = phi i32 [ %i.rz, %.lr.ph173.i ], [ 0, %bb.d ]
  %.0511169.i = phi ptr [ %i.ry, %.lr.ph173.i ], [ %i.nz, %bb.d ] ; 2 uses
  %.0513168.i = phi ptr [ %i.rx, %.lr.ph173.i ], [ %i.nv, %bb.d ] ; 2 uses
  %.0515167.i = phi ptr [ %i.rw, %.lr.ph173.i ], [ %i.nr, %bb.d ] ; 2 uses
  %.0517166.i = phi ptr [ %i.rv, %.lr.ph173.i ], [ %i.nn, %bb.d ] ; 2 uses
  %.0519165.i = phi ptr [ %i.ru, %.lr.ph173.i ], [ %i.nj, %bb.d ] ; 2 uses
  %.0521164.i = phi ptr [ %i.rt, %.lr.ph173.i ], [ %i.nf, %bb.d ] ; 2 uses
  %.0523163.i = phi ptr [ %i.rs, %.lr.ph173.i ], [ %i.nb, %bb.d ] ; 2 uses
  %.0525162.i = phi ptr [ %i.rr, %.lr.ph173.i ], [ %i.mx, %bb.d ] ; 2 uses
  %i.qd = load <8 x float>, ptr %.0525162.i, align 1, !tbaa !85 ; 2 uses
  %i.qe = load <8 x float>, ptr %.0523163.i, align 1, !tbaa !85 ; 2 uses
  %i.qf = load <8 x float>, ptr %.0521164.i, align 1, !tbaa !85 ; 2 uses
  %i.qg = load <8 x float>, ptr %.0519165.i, align 1, !tbaa !85 ; 2 uses
  %i.qh = load <8 x float>, ptr %.0517166.i, align 1, !tbaa !85 ; 2 uses
  %i.qi = load <8 x float>, ptr %.0515167.i, align 1, !tbaa !85 ; 2 uses
  %i.qj = load <8 x float>, ptr %.0513168.i, align 1, !tbaa !85 ; 2 uses
  %i.qk = load <8 x float>, ptr %.0511169.i, align 1, !tbaa !85 ; 2 uses
  %i.ql = shufflevector <8 x float> %i.qd, <8 x float> %i.qe, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.qm = shufflevector <8 x float> %i.qd, <8 x float> %i.qe, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.qn = shufflevector <8 x float> %i.qf, <8 x float> %i.qg, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.qo = shufflevector <8 x float> %i.qf, <8 x float> %i.qg, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.qp = shufflevector <8 x float> %i.qh, <8 x float> %i.qi, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.qq = shufflevector <8 x float> %i.qh, <8 x float> %i.qi, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.qr = shufflevector <8 x float> %i.qj, <8 x float> %i.qk, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.qs = shufflevector <8 x float> %i.qj, <8 x float> %i.qk, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.qt = shufflevector <8 x float> %i.ql, <8 x float> %i.qn, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.qu = shufflevector <8 x float> %i.ql, <8 x float> %i.qn, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.qv = shufflevector <8 x float> %i.qm, <8 x float> %i.qo, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.qw = shufflevector <8 x float> %i.qm, <8 x float> %i.qo, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.qx = shufflevector <8 x float> %i.qp, <8 x float> %i.qr, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.qy = shufflevector <8 x float> %i.qp, <8 x float> %i.qr, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.qz = shufflevector <8 x float> %i.qq, <8 x float> %i.qs, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.ra = shufflevector <8 x float> %i.qq, <8 x float> %i.qs, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.rb = shufflevector <8 x float> %i.qt, <8 x float> %i.qx, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.rc = shufflevector <8 x float> %i.qu, <8 x float> %i.qy, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.rd = shufflevector <8 x float> %i.qv, <8 x float> %i.qz, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.re = shufflevector <8 x float> %i.qw, <8 x float> %i.ra, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.rf = shufflevector <8 x float> %i.qt, <8 x float> %i.qx, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.rg = shufflevector <8 x float> %i.qu, <8 x float> %i.qy, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.rh = shufflevector <8 x float> %i.qv, <8 x float> %i.qz, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.ri = shufflevector <8 x float> %i.qw, <8 x float> %i.ra, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  store <8 x float> %i.rb, ptr %.4171.i, align 32, !tbaa !85
  %i.rj = getelementptr inbounds nuw i8, ptr %.4171.i, i64 32
  store <8 x float> %i.rc, ptr %i.rj, align 32, !tbaa !85
  %i.rk = getelementptr inbounds nuw i8, ptr %.4171.i, i64 64
  store <8 x float> %i.rd, ptr %i.rk, align 32, !tbaa !85
  %i.rl = getelementptr inbounds nuw i8, ptr %.4171.i, i64 96
  store <8 x float> %i.re, ptr %i.rl, align 32, !tbaa !85
  %i.rm = getelementptr inbounds nuw i8, ptr %.4171.i, i64 128
  store <8 x float> %i.rf, ptr %i.rm, align 32, !tbaa !85
  %i.rn = getelementptr inbounds nuw i8, ptr %.4171.i, i64 160
  store <8 x float> %i.rg, ptr %i.rn, align 32, !tbaa !85
  %i.ro = getelementptr inbounds nuw i8, ptr %.4171.i, i64 192
  store <8 x float> %i.rh, ptr %i.ro, align 32, !tbaa !85
  %i.rp = getelementptr inbounds nuw i8, ptr %.4171.i, i64 224
  store <8 x float> %i.ri, ptr %i.rp, align 32, !tbaa !85
  %i.rq = getelementptr inbounds nuw i8, ptr %.4171.i, i64 256 ; 2 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %.0525162.i, i64 32 ; 2 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %.0523163.i, i64 32 ; 2 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %.0521164.i, i64 32 ; 2 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %.0519165.i, i64 32 ; 2 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %.0517166.i, i64 32 ; 2 uses
  %i.rw = getelementptr inbounds nuw i8, ptr %.0515167.i, i64 32 ; 2 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %.0513168.i, i64 32 ; 2 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %.0511169.i, i64 32 ; 2 uses
  %i.rz = add nuw nsw i32 %.0509170.i, 8          ; 2 uses
  %i.sa = or disjoint i32 %i.rz, 7
  %i.sb = icmp slt i32 %i.sa, %.sroa.speculated
  br i1 %i.sb, label %.lr.ph173.i, label %.preheader98.i, !llvm.loop !752

.lr.ph194.i:                                      ; preds = %.lr.ph194.i.preheader, %.lr.ph194.i
  %.5193.i = phi ptr [ %i.sr, %.lr.ph194.i ], [ %.5193.i.ph, %.lr.ph194.i.preheader ] ; 9 uses
  %.1510192.i = phi i32 [ %i.ta, %.lr.ph194.i ], [ %.1510192.i.ph, %.lr.ph194.i.preheader ]
  %.1512191.i = phi ptr [ %i.sz, %.lr.ph194.i ], [ %.1512191.i.ph, %.lr.ph194.i.preheader ] ; 2 uses
  %.1514190.i = phi ptr [ %i.sy, %.lr.ph194.i ], [ %.1514190.i.ph, %.lr.ph194.i.preheader ] ; 2 uses
  %.1516189.i = phi ptr [ %i.sx, %.lr.ph194.i ], [ %.1516189.i.ph, %.lr.ph194.i.preheader ] ; 2 uses
  %.1518188.i = phi ptr [ %i.sw, %.lr.ph194.i ], [ %.1518188.i.ph, %.lr.ph194.i.preheader ] ; 2 uses
  %.1520187.i = phi ptr [ %i.sv, %.lr.ph194.i ], [ %.1520187.i.ph, %.lr.ph194.i.preheader ] ; 2 uses
  %.1522186.i = phi ptr [ %i.su, %.lr.ph194.i ], [ %.1522186.i.ph, %.lr.ph194.i.preheader ] ; 2 uses
  %.1524185.i = phi ptr [ %i.st, %.lr.ph194.i ], [ %.1524185.i.ph, %.lr.ph194.i.preheader ] ; 2 uses
  %.1526184.i = phi ptr [ %i.ss, %.lr.ph194.i ], [ %.1526184.i.ph, %.lr.ph194.i.preheader ] ; 2 uses
  %i.sc = load float, ptr %.1526184.i, align 4, !tbaa !41
  store float %i.sc, ptr %.5193.i, align 4, !tbaa !41
  %i.sd = load float, ptr %.1524185.i, align 4, !tbaa !41
  %i.se = getelementptr inbounds nuw i8, ptr %.5193.i, i64 4
  store float %i.sd, ptr %i.se, align 4, !tbaa !41
  %i.sf = load float, ptr %.1522186.i, align 4, !tbaa !41
  %i.sg = getelementptr inbounds nuw i8, ptr %.5193.i, i64 8
  store float %i.sf, ptr %i.sg, align 4, !tbaa !41
  %i.sh = load float, ptr %.1520187.i, align 4, !tbaa !41
  %i.si = getelementptr inbounds nuw i8, ptr %.5193.i, i64 12
  store float %i.sh, ptr %i.si, align 4, !tbaa !41
  %i.sj = load float, ptr %.1518188.i, align 4, !tbaa !41
  %i.sk = getelementptr inbounds nuw i8, ptr %.5193.i, i64 16
  store float %i.sj, ptr %i.sk, align 4, !tbaa !41
  %i.sl = load float, ptr %.1516189.i, align 4, !tbaa !41
  %i.sm = getelementptr inbounds nuw i8, ptr %.5193.i, i64 20
  store float %i.sl, ptr %i.sm, align 4, !tbaa !41
  %i.sn = load float, ptr %.1514190.i, align 4, !tbaa !41
  %i.so = getelementptr inbounds nuw i8, ptr %.5193.i, i64 24
  store float %i.sn, ptr %i.so, align 4, !tbaa !41
  %i.sp = load float, ptr %.1512191.i, align 4, !tbaa !41
  %i.sq = getelementptr inbounds nuw i8, ptr %.5193.i, i64 28
  store float %i.sp, ptr %i.sq, align 4, !tbaa !41
  %i.sr = getelementptr inbounds nuw i8, ptr %.5193.i, i64 32 ; 2 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %.1526184.i, i64 4
  %i.st = getelementptr inbounds nuw i8, ptr %.1524185.i, i64 4
  %i.su = getelementptr inbounds nuw i8, ptr %.1522186.i, i64 4
  %i.sv = getelementptr inbounds nuw i8, ptr %.1520187.i, i64 4
  %i.sw = getelementptr inbounds nuw i8, ptr %.1518188.i, i64 4
  %i.sx = getelementptr inbounds nuw i8, ptr %.1516189.i, i64 4
  %i.sy = getelementptr inbounds nuw i8, ptr %.1514190.i, i64 4
  %i.sz = getelementptr inbounds nuw i8, ptr %.1512191.i, i64 4
  %i.ta = add nuw nsw i32 %.1510192.i, 1          ; 2 uses
  %exitcond362.not.i = icmp eq i32 %i.ta, %.sroa.speculated
  br i1 %exitcond362.not.i, label %._crit_edge195.i, label %.lr.ph194.i, !llvm.loop !753

._crit_edge195.i:                                 ; preds = %.lr.ph194.i, %middle.block511, %vec.epilog.middle.block550, %.preheader98.i
  %.5.lcssa.i = phi ptr [ %.4.lcssa.i, %.preheader98.i ], [ %i.pi, %vec.epilog.middle.block550 ], [ %i.om, %middle.block511 ], [ %i.sr, %.lr.ph194.i ] ; 2 uses
  %indvars.iv.next364.i = add nuw nsw i64 %indvars.iv363.i, 8 ; 3 uses
  %i.tb = icmp slt i64 %indvars.iv.next364.i, %invariant.op.i
  br i1 %i.tb, label %bb.d, label %.preheader97.loopexit.i, !llvm.loop !754

.preheader94.loopexit.i:                          ; preds = %._crit_edge236.i
  %i.tc = trunc nsw i64 %indvars.iv.next368.i to i32
  br label %.preheader94.i

.preheader94.i:                                   ; preds = %.preheader94.loopexit.i, %.preheader97.i
  %.2464.lcssa.i = phi i32 [ %.1463.lcssa.i, %.preheader97.i ], [ %i.tc, %.preheader94.loopexit.i ] ; 3 uses
  %.6.lcssa.i = phi ptr [ %.3.lcssa.i, %.preheader97.i ], [ %.9.lcssa.i, %.preheader94.loopexit.i ] ; 2 uses
  %i.td = or disjoint i32 %.2464.lcssa.i, 1
  %i.te = icmp slt i32 %i.td, %.sroa.speculated57
  br i1 %i.te, label %.lr.ph271.i, label %.preheader91.i

.lr.ph271.i:                                      ; preds = %.preheader94.i
  %i.tf = sext i32 %.0113 to i64                  ; 2 uses
  %i.tg = icmp sgt i32 %.sroa.speculated, 7
  %i.th = and i32 %.sroa.speculated, -8           ; 2 uses
  %i.ti = sext i32 %.2464.lcssa.i to i64
  %i.tj = sext i32 %i.aw to i64                   ; 2 uses
  %i.tk = add i32 %.sroa.speculated, -8           ; 2 uses
  %i.tl = lshr i32 %i.tk, 3                       ; 2 uses
  %i.tm = add nuw nsw i32 %i.tl, 1                ; 2 uses
  %i.tn = icmp eq i32 %i.tl, 0
  %unroll_iter = and i32 %i.tm, 1073741822
  %i.to = and i32 %i.tk, 8
  %lcmp.mod868.not.not = icmp eq i32 %i.to, 0
  %lcmp.mod872 = trunc i32 %i.tm to i1
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge236.i, %.lr.ph240.i
  %indvars.iv367.i = phi i64 [ %i.mr, %.lr.ph240.i ], [ %indvars.iv.next368.i, %._crit_edge236.i ] ; 2 uses
  %.6239.i = phi ptr [ %.3.lcssa.i, %.lr.ph240.i ], [ %.9.lcssa.i, %._crit_edge236.i ] ; 2 uses
  %i.tp = load ptr, ptr %8, align 8, !tbaa !22    ; 4 uses
  %i.tq = add nsw i64 %indvars.iv367.i, %i.z      ; 4 uses
  %i.tr = mul nsw i64 %i.tq, %i.ms
  %i.ts = getelementptr inbounds [4 x i8], ptr %i.tp, i64 %i.tr
  %i.tt = getelementptr inbounds [4 x i8], ptr %i.ts, i64 %i.mo ; 2 uses
  %i.tu = add nsw i64 %i.tq, 1
  %i.tv = mul nsw i64 %i.tu, %i.ms
  %i.tw = getelementptr inbounds [4 x i8], ptr %i.tp, i64 %i.tv
  %i.tx = getelementptr inbounds [4 x i8], ptr %i.tw, i64 %i.mo ; 2 uses
  %i.ty = add nsw i64 %i.tq, 2
  %i.tz = mul nsw i64 %i.ty, %i.ms
  %i.ua = getelementptr inbounds [4 x i8], ptr %i.tp, i64 %i.tz
  %i.ub = getelementptr inbounds [4 x i8], ptr %i.ua, i64 %i.mo ; 2 uses
  %i.uc = add nsw i64 %i.tq, 3
  %i.ud = mul nsw i64 %i.uc, %i.ms
  %i.ue = getelementptr inbounds [4 x i8], ptr %i.tp, i64 %i.ud
  %i.uf = getelementptr inbounds [4 x i8], ptr %i.ue, i64 %i.mo ; 2 uses
  br i1 %i.mp, label %.lr.ph209.i, label %.preheader96.i

.preheader96.i:                                   ; preds = %.lr.ph209.i, %bb.e
  %.0506.lcssa.i = phi ptr [ %i.tt, %bb.e ], [ %i.uy, %.lr.ph209.i ] ; 2 uses
  %.0503.lcssa.i = phi ptr [ %i.tx, %bb.e ], [ %i.uz, %.lr.ph209.i ] ; 2 uses
  %.0500.lcssa.i = phi ptr [ %i.ub, %bb.e ], [ %i.va, %.lr.ph209.i ] ; 2 uses
  %.0497.lcssa.i = phi ptr [ %i.uf, %bb.e ], [ %i.vb, %.lr.ph209.i ] ; 2 uses
  %.0494.lcssa.i = phi i32 [ 0, %bb.e ], [ %i.mq, %.lr.ph209.i ] ; 3 uses
  %.7.lcssa.i = phi ptr [ %.6239.i, %bb.e ], [ %i.ux, %.lr.ph209.i ] ; 2 uses
  %i.ug = or disjoint i32 %.0494.lcssa.i, 3
  %i.uh = icmp slt i32 %i.ug, %.sroa.speculated
  br i1 %i.uh, label %.lr.ph222.i, label %.preheader95.i

.lr.ph209.i:                                      ; preds = %bb.e, %.lr.ph209.i
  %.7207.i = phi ptr [ %i.ux, %.lr.ph209.i ], [ %.6239.i, %bb.e ] ; 5 uses
  %.0494206.i = phi i32 [ %i.vc, %.lr.ph209.i ], [ 0, %bb.e ]
  %.0497205.i = phi ptr [ %i.vb, %.lr.ph209.i ], [ %i.uf, %bb.e ] ; 2 uses
  %.0500204.i = phi ptr [ %i.va, %.lr.ph209.i ], [ %i.ub, %bb.e ] ; 2 uses
  %.0503203.i = phi ptr [ %i.uz, %.lr.ph209.i ], [ %i.tx, %bb.e ] ; 2 uses
  %.0506202.i = phi ptr [ %i.uy, %.lr.ph209.i ], [ %i.tt, %bb.e ] ; 2 uses
  %i.ui = load <8 x float>, ptr %.0506202.i, align 1, !tbaa !85 ; 2 uses
  %i.uj = load <8 x float>, ptr %.0503203.i, align 1, !tbaa !85 ; 2 uses
  %i.uk = load <8 x float>, ptr %.0500204.i, align 1, !tbaa !85 ; 2 uses
  %i.ul = load <8 x float>, ptr %.0497205.i, align 1, !tbaa !85 ; 2 uses
  %i.um = shufflevector <8 x float> %i.ui, <8 x float> %i.uj, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.un = shufflevector <8 x float> %i.ui, <8 x float> %i.uj, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.uo = shufflevector <8 x float> %i.uk, <8 x float> %i.ul, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.up = shufflevector <8 x float> %i.uk, <8 x float> %i.ul, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.uq = shufflevector <8 x float> %i.um, <8 x float> %i.uo, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 2, i32 3, i32 10, i32 11>
  %i.ur = shufflevector <8 x float> %i.un, <8 x float> %i.up, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 2, i32 3, i32 10, i32 11>
  %i.us = shufflevector <8 x float> %i.um, <8 x float> %i.uo, <8 x i32> <i32 4, i32 5, i32 12, i32 13, i32 6, i32 7, i32 14, i32 15>
  %i.ut = shufflevector <8 x float> %i.un, <8 x float> %i.up, <8 x i32> <i32 4, i32 5, i32 12, i32 13, i32 6, i32 7, i32 14, i32 15>
  store <8 x float> %i.uq, ptr %.7207.i, align 32, !tbaa !85
  %i.uu = getelementptr inbounds nuw i8, ptr %.7207.i, i64 32
  store <8 x float> %i.ur, ptr %i.uu, align 32, !tbaa !85
  %i.uv = getelementptr inbounds nuw i8, ptr %.7207.i, i64 64
  store <8 x float> %i.us, ptr %i.uv, align 32, !tbaa !85
  %i.uw = getelementptr inbounds nuw i8, ptr %.7207.i, i64 96
  store <8 x float> %i.ut, ptr %i.uw, align 32, !tbaa !85
  %i.ux = getelementptr inbounds nuw i8, ptr %.7207.i, i64 128 ; 2 uses
  %i.uy = getelementptr inbounds nuw i8, ptr %.0506202.i, i64 32 ; 2 uses
  %i.uz = getelementptr inbounds nuw i8, ptr %.0503203.i, i64 32 ; 2 uses
  %i.va = getelementptr inbounds nuw i8, ptr %.0500204.i, i64 32 ; 2 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %.0497205.i, i64 32 ; 2 uses
  %i.vc = add nuw nsw i32 %.0494206.i, 8          ; 2 uses
  %i.vd = or disjoint i32 %i.vc, 7
  %i.ve = icmp slt i32 %i.vd, %.sroa.speculated
  br i1 %i.ve, label %.lr.ph209.i, label %.preheader96.i, !llvm.loop !755

.preheader95.i:                                   ; preds = %.lr.ph222.i, %.preheader96.i
  %.1507.lcssa.i = phi ptr [ %.0506.lcssa.i, %.preheader96.i ], [ %i.xx, %.lr.ph222.i ] ; 8 uses
  %.1504.lcssa.i = phi ptr [ %.0503.lcssa.i, %.preheader96.i ], [ %i.xy, %.lr.ph222.i ] ; 8 uses
  %.1501.lcssa.i = phi ptr [ %.0500.lcssa.i, %.preheader96.i ], [ %i.xz, %.lr.ph222.i ] ; 8 uses
  %.1498.lcssa.i = phi ptr [ %.0497.lcssa.i, %.preheader96.i ], [ %i.ya, %.lr.ph222.i ] ; 8 uses
  %.1495.lcssa.i = phi i32 [ %.0494.lcssa.i, %.preheader96.i ], [ %i.yb, %.lr.ph222.i ] ; 7 uses
  %.8.lcssa.i = phi ptr [ %.7.lcssa.i, %.preheader96.i ], [ %i.xw, %.lr.ph222.i ] ; 12 uses
  %i.vf = icmp slt i32 %.1495.lcssa.i, %.sroa.speculated
  br i1 %i.vf, label %iter.check408, label %._crit_edge236.i

iter.check408:                                    ; preds = %.preheader95.i
  %i.vg = xor i32 %.1495.lcssa.i, -1
  %i.vh = add i32 %.sroa.speculated, %i.vg        ; 3 uses
  %i.vi = zext i32 %i.vh to i64
  %i.vj = add nuw nsw i64 %i.vi, 1                ; 5 uses
  %min.iters.check382 = icmp ult i32 %i.vh, 3
  br i1 %min.iters.check382, label %.lr.ph235.i.preheader, label %vector.memcheck356

vector.memcheck356:                               ; preds = %iter.check408
  %scevgep357 = getelementptr i8, ptr %.8.lcssa.i, i64 16
  %i.vk = xor i32 %.1495.lcssa.i, -1
  %i.vl = add i32 %.sroa.speculated, %i.vk
  %i.vm = zext i32 %i.vl to i64                   ; 2 uses
  %i.vn = shl nuw nsw i64 %i.vm, 4
  %scevgep358 = getelementptr i8, ptr %scevgep357, i64 %i.vn ; 4 uses
  %scevgep359 = getelementptr i8, ptr %.1498.lcssa.i, i64 4
  %i.vo = shl nuw nsw i64 %i.vm, 2                ; 4 uses
  %scevgep360 = getelementptr i8, ptr %scevgep359, i64 %i.vo
  %scevgep361 = getelementptr i8, ptr %.1501.lcssa.i, i64 4
  %scevgep362 = getelementptr i8, ptr %scevgep361, i64 %i.vo
  %scevgep363 = getelementptr i8, ptr %.1504.lcssa.i, i64 4
  %scevgep364 = getelementptr i8, ptr %scevgep363, i64 %i.vo
  %scevgep365 = getelementptr i8, ptr %.1507.lcssa.i, i64 4
  %scevgep366 = getelementptr i8, ptr %scevgep365, i64 %i.vo
  %bound0367 = icmp ult ptr %.8.lcssa.i, %scevgep360
  %bound1368 = icmp ult ptr %.1498.lcssa.i, %scevgep358
  %found.conflict369 = and i1 %bound0367, %bound1368
  %bound0370 = icmp ult ptr %.8.lcssa.i, %scevgep362
  %bound1371 = icmp ult ptr %.1501.lcssa.i, %scevgep358
  %found.conflict372 = and i1 %bound0370, %bound1371
  %conflict.rdx373 = or i1 %found.conflict369, %found.conflict372
  %bound0374 = icmp ult ptr %.8.lcssa.i, %scevgep364
  %bound1375 = icmp ult ptr %.1504.lcssa.i, %scevgep358
  %found.conflict376 = and i1 %bound0374, %bound1375
  %conflict.rdx377 = or i1 %conflict.rdx373, %found.conflict376
  %bound0378 = icmp ult ptr %.8.lcssa.i, %scevgep366
  %bound1379 = icmp ult ptr %.1507.lcssa.i, %scevgep358
  %found.conflict380 = and i1 %bound0378, %bound1379
  %conflict.rdx381 = or i1 %conflict.rdx377, %found.conflict380
  br i1 %conflict.rdx381, label %.lr.ph235.i.preheader, label %vector.main.loop.iter.check383

vector.main.loop.iter.check383:                   ; preds = %vector.memcheck356
  %min.iters.check384 = icmp ult i32 %i.vh, 15
  br i1 %min.iters.check384, label %vec.epilog.ph412, label %vector.ph385

vector.ph385:                                     ; preds = %vector.main.loop.iter.check383
  %i.vp = and i64 %i.vj, 12
  %n.vec386 = and i64 %i.vj, 8589934576           ; 6 uses
  %i.vq = shl nuw nsw i64 %n.vec386, 4
  %i.vr = getelementptr i8, ptr %.8.lcssa.i, i64 %i.vq ; 2 uses
  %i.vs = trunc i64 %n.vec386 to i32
  %i.vt = add i32 %.1495.lcssa.i, %i.vs
  %i.vu = shl nuw nsw i64 %n.vec386, 2            ; 4 uses
  %i.vv = getelementptr i8, ptr %.1498.lcssa.i, i64 %i.vu
  %i.vw = getelementptr i8, ptr %.1501.lcssa.i, i64 %i.vu
  %i.vx = getelementptr i8, ptr %.1504.lcssa.i, i64 %i.vu
  %i.vy = getelementptr i8, ptr %.1507.lcssa.i, i64 %i.vu
  br label %vector.body387

vector.body387:                                   ; preds = %vector.body387, %vector.ph385
  %index388 = phi i64 [ 0, %vector.ph385 ], [ %index.next399, %vector.body387 ] ; 3 uses
  %i.vz = shl i64 %index388, 4
  %next.gep389 = getelementptr i8, ptr %.8.lcssa.i, i64 %i.vz
  %i.wa = shl i64 %index388, 2                    ; 4 uses
  %next.gep390 = getelementptr i8, ptr %.1498.lcssa.i, i64 %i.wa
  %next.gep391 = getelementptr i8, ptr %.1501.lcssa.i, i64 %i.wa
  %next.gep392 = getelementptr i8, ptr %.1504.lcssa.i, i64 %i.wa
  %next.gep393 = getelementptr i8, ptr %.1507.lcssa.i, i64 %i.wa
  %wide.load394 = load <16 x float>, ptr %next.gep393, align 4, !tbaa !41, !alias.scope !816
  %wide.load395 = load <16 x float>, ptr %next.gep392, align 4, !tbaa !41, !alias.scope !817
  %wide.load396 = load <16 x float>, ptr %next.gep391, align 4, !tbaa !41, !alias.scope !818
  %wide.load397 = load <16 x float>, ptr %next.gep390, align 4, !tbaa !41, !alias.scope !819
  %i.wb = shufflevector <16 x float> %wide.load394, <16 x float> %wide.load395, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.wc = shufflevector <16 x float> %wide.load396, <16 x float> %wide.load397, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %interleaved.vec398 = shufflevector <32 x float> %i.wb, <32 x float> %i.wc, <64 x i32> <i32 0, i32 16, i32 32, i32 48, i32 1, i32 17, i32 33, i32 49, i32 2, i32 18, i32 34, i32 50, i32 3, i32 19, i32 35, i32 51, i32 4, i32 20, i32 36, i32 52, i32 5, i32 21, i32 37, i32 53, i32 6, i32 22, i32 38, i32 54, i32 7, i32 23, i32 39, i32 55, i32 8, i32 24, i32 40, i32 56, i32 9, i32 25, i32 41, i32 57, i32 10, i32 26, i32 42, i32 58, i32 11, i32 27, i32 43, i32 59, i32 12, i32 28, i32 44, i32 60, i32 13, i32 29, i32 45, i32 61, i32 14, i32 30, i32 46, i32 62, i32 15, i32 31, i32 47, i32 63>
  store <64 x float> %interleaved.vec398, ptr %next.gep389, align 4, !tbaa !41, !alias.scope !820, !noalias !821
  %index.next399 = add nuw i64 %index388, 16      ; 2 uses
  %i.wd = icmp eq i64 %index.next399, %n.vec386
  br i1 %i.wd, label %middle.block400, label %vector.body387, !llvm.loop !762

middle.block400:                                  ; preds = %vector.body387
  %cmp.n401 = icmp eq i64 %i.vj, %n.vec386
  br i1 %cmp.n401, label %._crit_edge236.i, label %vec.epilog.iter.check410

vec.epilog.iter.check410:                         ; preds = %middle.block400
  %min.epilog.iters.check411 = icmp eq i64 %i.vp, 0
  br i1 %min.epilog.iters.check411, label %.lr.ph235.i.preheader, label %vec.epilog.ph412, !prof !86

vec.epilog.ph412:                                 ; preds = %vector.main.loop.iter.check383, %vec.epilog.iter.check410
  %vec.epilog.resume.val402 = phi i64 [ %n.vec386, %vec.epilog.iter.check410 ], [ 0, %vector.main.loop.iter.check383 ]
  %n.vec413 = and i64 %i.vj, 8589934588           ; 5 uses
  %i.we = shl nuw nsw i64 %n.vec413, 4
  %i.wf = getelementptr i8, ptr %.8.lcssa.i, i64 %i.we ; 2 uses
  %i.wg = trunc i64 %n.vec413 to i32
  %i.wh = add i32 %.1495.lcssa.i, %i.wg
  %i.wi = shl nuw nsw i64 %n.vec413, 2            ; 4 uses
end_hunk_6
begin_hunk_7_@_ZN4ncnnL23convolution_im2col_gemmERKNS_3MatERS0_S2_S2_iiiiiiiRKNS_6OptionE.omp_outlined:bb.a
  store <4 x float> %i.abo, ptr %i.abl, align 1, !tbaa !85
  %i.abp = getelementptr inbounds nuw i8, ptr %.25576.i.us.i, i64 32
  %i.abq = load i64, ptr %i.p, align 8, !tbaa !23
  %i.abr = getelementptr inbounds nuw [4 x i8], ptr %i.abn, i64 %i.abq ; 2 uses
  %i.abs = load <4 x float>, ptr %i.abr, align 1, !tbaa !85
  store <4 x float> %i.abs, ptr %i.abp, align 1, !tbaa !85
  %i.abt = getelementptr inbounds nuw i8, ptr %.25576.i.us.i, i64 48
  %i.abu = load i64, ptr %i.p, align 8, !tbaa !23
  %i.abv = getelementptr inbounds nuw [4 x i8], ptr %i.abr, i64 %i.abu ; 2 uses
  %i.abw = load <4 x float>, ptr %i.abv, align 1, !tbaa !85
  store <4 x float> %i.abw, ptr %i.abt, align 1, !tbaa !85
  %i.abx = getelementptr inbounds nuw i8, ptr %.25576.i.us.i, i64 64 ; 3 uses
  %i.aby = load i64, ptr %i.p, align 8, !tbaa !23
  %i.abz = getelementptr inbounds nuw [4 x i8], ptr %i.abv, i64 %i.aby ; 2 uses
  %niter276.next.3 = add i32 %niter276, 4         ; 2 uses
  %niter276.ncmp.3 = icmp eq i32 %niter276.next.3, %unroll_iter275
  br i1 %niter276.ncmp.3, label %.loopexit497.i.us.i.loopexit230.unr-lcssa, label %.lr.ph577.i.us.i, !llvm.loop !1230

_ZN4ncnn3MatD2Ev.exit670.i.us.i:                  ; preds = %.split762.i.us.i
  br i1 %i.aam, label %.lr.ph572.preheader.i.us.i, label %.loopexit497.i.us.i

.lr.ph572.preheader.i.us.i:                       ; preds = %_ZN4ncnn3MatD2Ev.exit670.i.us.i
  %i.aca = load ptr, ptr %9, align 8, !tbaa !22, !noalias !1283
  %i.acb = load i64, ptr %i.p, align 8, !tbaa !23, !noalias !1283
  %i.acc = mul i64 %i.acb, %i.aak
  %i.acd = load i64, ptr %i.q, align 8, !tbaa !64, !noalias !1283
  %i.ace = mul i64 %i.acc, %i.acd
  %i.acf = getelementptr inbounds nuw i8, ptr %i.aca, i64 %i.ace
  %i.acg = add nsw i64 %indvars.iv670.i.us.i, %i.aar
  %.idx703.i.us.i = shl nsw i64 %i.acg, 4
  %i.ach = getelementptr inbounds i8, ptr %i.acf, i64 %.idx703.i.us.i
  br label %.lr.ph572.i.us.i

.lr.ph572.i.us.i:                                 ; preds = %.lr.ph572.i.us.i, %.lr.ph572.preheader.i.us.i
  %.23571.i.us.i = phi ptr [ %i.ada, %.lr.ph572.i.us.i ], [ %.18580.i.us.i, %.lr.ph572.preheader.i.us.i ] ; 5 uses
  %.0616570.i.us.i = phi i32 [ %i.add, %.lr.ph572.i.us.i ], [ 0, %.lr.ph572.preheader.i.us.i ]
  %.0617569.i.us.i = phi ptr [ %i.adc, %.lr.ph572.i.us.i ], [ %i.ach, %.lr.ph572.preheader.i.us.i ] ; 5 uses
  %i.aci = load <4 x float>, ptr %.0617569.i.us.i, align 16, !tbaa !85 ; 2 uses
  %i.acj = getelementptr inbounds nuw i8, ptr %.0617569.i.us.i, i64 16
  %i.ack = load <4 x float>, ptr %i.acj, align 16, !tbaa !85 ; 2 uses
  %i.acl = getelementptr inbounds nuw i8, ptr %.0617569.i.us.i, i64 32
  %i.acm = load <4 x float>, ptr %i.acl, align 16, !tbaa !85 ; 2 uses
  %i.acn = getelementptr inbounds nuw i8, ptr %.0617569.i.us.i, i64 48
  %i.aco = load <4 x float>, ptr %i.acn, align 16, !tbaa !85 ; 2 uses
  %i.acp = shufflevector <4 x float> %i.aci, <4 x float> %i.ack, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.acq = shufflevector <4 x float> %i.acm, <4 x float> %i.aco, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.acr = shufflevector <4 x float> %i.aci, <4 x float> %i.ack, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.acs = shufflevector <4 x float> %i.acm, <4 x float> %i.aco, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.act = shufflevector <4 x float> %i.acp, <4 x float> %i.acq, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.acu = shufflevector <4 x float> %i.acq, <4 x float> %i.acp, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.acv = shufflevector <4 x float> %i.acr, <4 x float> %i.acs, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.acw = shufflevector <4 x float> %i.acs, <4 x float> %i.acr, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  store <4 x float> %i.act, ptr %.23571.i.us.i, align 16, !tbaa !85
  %i.acx = getelementptr inbounds nuw i8, ptr %.23571.i.us.i, i64 16
  store <4 x float> %i.acu, ptr %i.acx, align 16, !tbaa !85
  %i.acy = getelementptr inbounds nuw i8, ptr %.23571.i.us.i, i64 32
  store <4 x float> %i.acv, ptr %i.acy, align 16, !tbaa !85
  %i.acz = getelementptr inbounds nuw i8, ptr %.23571.i.us.i, i64 48
  store <4 x float> %i.acw, ptr %i.acz, align 16, !tbaa !85
  %i.ada = getelementptr inbounds nuw i8, ptr %.23571.i.us.i, i64 64 ; 2 uses
  %i.adb = load i64, ptr %i.p, align 8, !tbaa !23
  %.idx634.i.us.i = shl i64 %i.adb, 4
  %i.adc = getelementptr inbounds nuw i8, ptr %.0617569.i.us.i, i64 %.idx634.i.us.i
  %i.add = add nuw nsw i32 %.0616570.i.us.i, 1    ; 2 uses
  %exitcond668.not.i.us.i = icmp eq i32 %i.add, %i.aal
  br i1 %exitcond668.not.i.us.i, label %.loopexit497.i.us.i, label %.lr.ph572.i.us.i, !llvm.loop !1233

_ZN4ncnn3MatD2Ev.exit671.i.us.i:                  ; preds = %.split762.i.us.i
  br i1 %i.aai, label %.lr.ph567.preheader.i.us.i, label %.loopexit497.i.us.i

.lr.ph567.preheader.i.us.i:                       ; preds = %_ZN4ncnn3MatD2Ev.exit671.i.us.i
  %i.ade = load ptr, ptr %9, align 8, !tbaa !22, !noalias !1284
  %i.adf = load i64, ptr %i.p, align 8, !tbaa !23, !noalias !1284
  %i.adg = mul i64 %i.adf, %i.aag
  %i.adh = load i64, ptr %i.q, align 8, !tbaa !64, !noalias !1284
  %i.adi = mul i64 %i.adg, %i.adh
  %i.adj = getelementptr inbounds nuw i8, ptr %i.ade, i64 %i.adi
  %i.adk = add nsw i64 %indvars.iv670.i.us.i, %i.aar
  %.idx702.i.us.i = shl nsw i64 %i.adk, 5
  %i.adl = getelementptr inbounds i8, ptr %i.adj, i64 %.idx702.i.us.i
  br label %.lr.ph567.i.us.i

.lr.ph567.i.us.i:                                 ; preds = %.lr.ph567.i.us.i, %.lr.ph567.preheader.i.us.i
  %.21566.i.us.i = phi ptr [ %i.aee, %.lr.ph567.i.us.i ], [ %.18580.i.us.i, %.lr.ph567.preheader.i.us.i ] ; 5 uses
  %.0618565.i.us.i = phi i32 [ %i.aeh, %.lr.ph567.i.us.i ], [ 0, %.lr.ph567.preheader.i.us.i ]
  %.0619564.i.us.i = phi ptr [ %i.aeg, %.lr.ph567.i.us.i ], [ %i.adl, %.lr.ph567.preheader.i.us.i ] ; 5 uses
  %i.adm = load <8 x float>, ptr %.0619564.i.us.i, align 32, !tbaa !85 ; 2 uses
  %i.adn = getelementptr inbounds nuw i8, ptr %.0619564.i.us.i, i64 32
  %i.ado = load <8 x float>, ptr %i.adn, align 32, !tbaa !85 ; 2 uses
  %i.adp = getelementptr inbounds nuw i8, ptr %.0619564.i.us.i, i64 64
  %i.adq = load <8 x float>, ptr %i.adp, align 32, !tbaa !85 ; 2 uses
  %i.adr = getelementptr inbounds nuw i8, ptr %.0619564.i.us.i, i64 96
  %i.ads = load <8 x float>, ptr %i.adr, align 32, !tbaa !85 ; 2 uses
  %i.adt = shufflevector <8 x float> %i.adm, <8 x float> %i.ado, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.adu = shufflevector <8 x float> %i.adm, <8 x float> %i.ado, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.adv = shufflevector <8 x float> %i.adq, <8 x float> %i.ads, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.adw = shufflevector <8 x float> %i.adq, <8 x float> %i.ads, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.adx = shufflevector <8 x float> %i.adt, <8 x float> %i.adv, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 2, i32 3, i32 10, i32 11>
  %i.ady = shufflevector <8 x float> %i.adu, <8 x float> %i.adw, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 2, i32 3, i32 10, i32 11>
  %i.adz = shufflevector <8 x float> %i.adt, <8 x float> %i.adv, <8 x i32> <i32 4, i32 5, i32 12, i32 13, i32 6, i32 7, i32 14, i32 15>
  %i.aea = shufflevector <8 x float> %i.adu, <8 x float> %i.adw, <8 x i32> <i32 4, i32 5, i32 12, i32 13, i32 6, i32 7, i32 14, i32 15>
  store <8 x float> %i.adx, ptr %.21566.i.us.i, align 32, !tbaa !85
  %i.aeb = getelementptr inbounds nuw i8, ptr %.21566.i.us.i, i64 32
  store <8 x float> %i.ady, ptr %i.aeb, align 32, !tbaa !85
  %i.aec = getelementptr inbounds nuw i8, ptr %.21566.i.us.i, i64 64
  store <8 x float> %i.adz, ptr %i.aec, align 32, !tbaa !85
  %i.aed = getelementptr inbounds nuw i8, ptr %.21566.i.us.i, i64 96
  store <8 x float> %i.aea, ptr %i.aed, align 32, !tbaa !85
  %i.aee = getelementptr inbounds nuw i8, ptr %.21566.i.us.i, i64 128 ; 2 uses
  %i.aef = load i64, ptr %i.p, align 8, !tbaa !23
  %.idx635.i.us.i = shl i64 %i.aef, 5
  %i.aeg = getelementptr inbounds nuw i8, ptr %.0619564.i.us.i, i64 %.idx635.i.us.i
  %i.aeh = add nuw nsw i32 %.0618565.i.us.i, 1    ; 2 uses
  %exitcond667.not.i.us.i = icmp eq i32 %i.aeh, %i.aah
  br i1 %exitcond667.not.i.us.i, label %.loopexit497.i.us.i, label %.lr.ph567.i.us.i, !llvm.loop !1236

_ZN4ncnn3MatD2Ev.exit672.i.us.i:                  ; preds = %.split762.i.us.i
  br i1 %i.aae, label %.lr.ph562.preheader.i.us.i, label %.loopexit497.i.us.i

.lr.ph562.preheader.i.us.i:                       ; preds = %_ZN4ncnn3MatD2Ev.exit672.i.us.i
  %i.aei = load ptr, ptr %9, align 8, !tbaa !22, !noalias !1285
  %i.aej = load i64, ptr %i.p, align 8, !tbaa !23, !noalias !1285
  %i.aek = mul i64 %i.aej, %i.aac
  %i.ael = load i64, ptr %i.q, align 8, !tbaa !64, !noalias !1285
  %i.aem = mul i64 %i.aek, %i.ael
  %i.aen = getelementptr inbounds nuw i8, ptr %i.aei, i64 %i.aem
  %i.aeo = add nsw i64 %indvars.iv670.i.us.i, %i.aar
  %.idx701.i.us.i = shl nsw i64 %i.aeo, 6
  %i.aep = getelementptr inbounds i8, ptr %i.aen, i64 %.idx701.i.us.i
  br label %.lr.ph562.i.us.i

.lr.ph562.i.us.i:                                 ; preds = %.lr.ph562.i.us.i, %.lr.ph562.preheader.i.us.i
  %.19561.i.us.i = phi ptr [ %i.afm, %.lr.ph562.i.us.i ], [ %.18580.i.us.i, %.lr.ph562.preheader.i.us.i ] ; 5 uses
  %.0620560.i.us.i = phi i32 [ %i.afp, %.lr.ph562.i.us.i ], [ 0, %.lr.ph562.preheader.i.us.i ]
  %.0621559.i.us.i = phi ptr [ %i.afo, %.lr.ph562.i.us.i ], [ %i.aep, %.lr.ph562.preheader.i.us.i ] ; 5 uses
  %i.aeq = load <16 x float>, ptr %.0621559.i.us.i, align 64, !tbaa !85 ; 2 uses
  %i.aer = getelementptr inbounds nuw i8, ptr %.0621559.i.us.i, i64 64
  %i.aes = load <16 x float>, ptr %i.aer, align 64, !tbaa !85 ; 2 uses
  %i.aet = getelementptr inbounds nuw i8, ptr %.0621559.i.us.i, i64 128
  %i.aeu = load <16 x float>, ptr %i.aet, align 64, !tbaa !85 ; 2 uses
  %i.aev = getelementptr inbounds nuw i8, ptr %.0621559.i.us.i, i64 192
  %i.aew = load <16 x float>, ptr %i.aev, align 64, !tbaa !85 ; 2 uses
  %i.aex = shufflevector <16 x float> %i.aeq, <16 x float> %i.aes, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.aey = shufflevector <16 x float> %i.aeq, <16 x float> %i.aes, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.aez = shufflevector <16 x float> %i.aeu, <16 x float> %i.aew, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.afa = shufflevector <16 x float> %i.aeu, <16 x float> %i.aew, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.afb = shufflevector <16 x float> %i.aex, <16 x float> %i.aez, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 8, i32 9, i32 24, i32 25, i32 2, i32 3, i32 18, i32 19, i32 10, i32 11, i32 26, i32 27> ; 2 uses
  %i.afc = shufflevector <16 x float> %i.aey, <16 x float> %i.afa, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 8, i32 9, i32 24, i32 25, i32 2, i32 3, i32 18, i32 19, i32 10, i32 11, i32 26, i32 27> ; 2 uses
  %i.afd = shufflevector <16 x float> %i.aex, <16 x float> %i.aez, <16 x i32> <i32 4, i32 5, i32 20, i32 21, i32 12, i32 13, i32 28, i32 29, i32 6, i32 7, i32 22, i32 23, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.afe = shufflevector <16 x float> %i.aey, <16 x float> %i.afa, <16 x i32> <i32 4, i32 5, i32 20, i32 21, i32 12, i32 13, i32 28, i32 29, i32 6, i32 7, i32 22, i32 23, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.aff = shufflevector <16 x float> %i.afb, <16 x float> %i.afc, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.afg = shufflevector <16 x float> %i.afd, <16 x float> %i.afe, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.afh = shufflevector <16 x float> %i.afb, <16 x float> %i.afc, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.afi = shufflevector <16 x float> %i.afd, <16 x float> %i.afe, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  store <16 x float> %i.aff, ptr %.19561.i.us.i, align 64, !tbaa !85
  %i.afj = getelementptr inbounds nuw i8, ptr %.19561.i.us.i, i64 64
  store <16 x float> %i.afg, ptr %i.afj, align 64, !tbaa !85
  %i.afk = getelementptr inbounds nuw i8, ptr %.19561.i.us.i, i64 128
  store <16 x float> %i.afh, ptr %i.afk, align 64, !tbaa !85
  %i.afl = getelementptr inbounds nuw i8, ptr %.19561.i.us.i, i64 192
  store <16 x float> %i.afi, ptr %i.afl, align 64, !tbaa !85
  %i.afm = getelementptr inbounds nuw i8, ptr %.19561.i.us.i, i64 256 ; 2 uses
  %i.afn = load i64, ptr %i.p, align 8, !tbaa !23
  %.idx636.i.us.i = shl i64 %i.afn, 6
  %i.afo = getelementptr inbounds nuw i8, ptr %.0621559.i.us.i, i64 %.idx636.i.us.i
  %i.afp = add nuw nsw i32 %.0620560.i.us.i, 1    ; 2 uses
  %exitcond666.not.i.us.i = icmp eq i32 %i.afp, %i.aad
  br i1 %exitcond666.not.i.us.i, label %.loopexit497.i.us.i, label %.lr.ph562.i.us.i, !llvm.loop !1239

.loopexit497.i.us.i.loopexit230.unr-lcssa:        ; preds = %.lr.ph577.i.us.i
  br i1 %lcmp.mod272.not, label %.loopexit497.i.us.i, label %.lr.ph577.i.us.i.epil.preheader

.lr.ph577.i.us.i.epil.preheader:                  ; preds = %.loopexit497.i.us.i.loopexit230.unr-lcssa, %.lr.ph577.preheader.i.us.i
  %.25576.i.us.i.epil.init = phi ptr [ %.18580.i.us.i, %.lr.ph577.preheader.i.us.i ], [ %i.abx, %.loopexit497.i.us.i.loopexit230.unr-lcssa ]
  %.0607574.i.us.i.epil.init = phi ptr [ %i.abj, %.lr.ph577.preheader.i.us.i ], [ %i.abz, %.loopexit497.i.us.i.loopexit230.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod274)
  br label %.lr.ph577.i.us.i.epil

.lr.ph577.i.us.i.epil:                            ; preds = %.lr.ph577.i.us.i.epil, %.lr.ph577.i.us.i.epil.preheader
  %.25576.i.us.i.epil = phi ptr [ %i.afr, %.lr.ph577.i.us.i.epil ], [ %.25576.i.us.i.epil.init, %.lr.ph577.i.us.i.epil.preheader ] ; 2 uses
  %.0607574.i.us.i.epil = phi ptr [ %i.aft, %.lr.ph577.i.us.i.epil ], [ %.0607574.i.us.i.epil.init, %.lr.ph577.i.us.i.epil.preheader ] ; 2 uses
  %epil.iter271 = phi i32 [ %epil.iter271.next, %.lr.ph577.i.us.i.epil ], [ 0, %.lr.ph577.i.us.i.epil.preheader ]
  %i.afq = load <4 x float>, ptr %.0607574.i.us.i.epil, align 1, !tbaa !85
  store <4 x float> %i.afq, ptr %.25576.i.us.i.epil, align 1, !tbaa !85
  %i.afr = getelementptr inbounds nuw i8, ptr %.25576.i.us.i.epil, i64 16 ; 2 uses
  %i.afs = load i64, ptr %i.p, align 8, !tbaa !23
  %i.aft = getelementptr inbounds nuw [4 x i8], ptr %.0607574.i.us.i.epil, i64 %i.afs
  %epil.iter271.next = add i32 %epil.iter271, 1   ; 2 uses
  %epil.iter271.cmp.not = icmp eq i32 %epil.iter271.next, %xtraiter270
  br i1 %epil.iter271.cmp.not, label %.loopexit497.i.us.i, label %.lr.ph577.i.us.i.epil, !llvm.loop !1240

.loopexit497.i.us.i:                              ; preds = %.loopexit497.i.us.i.loopexit230.unr-lcssa, %.lr.ph577.i.us.i.epil, %.lr.ph572.i.us.i, %.lr.ph567.i.us.i, %.lr.ph562.i.us.i, %_ZN4ncnn3MatD2Ev.exit672.i.us.i, %_ZN4ncnn3MatD2Ev.exit671.i.us.i, %_ZN4ncnn3MatD2Ev.exit670.i.us.i, %_ZN4ncnn3MatD2Ev.exit669.i.us.i, %.split762.i.us.i
  %.26.i.us.i = phi ptr [ %.18580.i.us.i, %.split762.i.us.i ], [ %.18580.i.us.i, %_ZN4ncnn3MatD2Ev.exit669.i.us.i ], [ %i.ada, %.lr.ph572.i.us.i ], [ %i.aee, %.lr.ph567.i.us.i ], [ %.18580.i.us.i, %_ZN4ncnn3MatD2Ev.exit670.i.us.i ], [ %i.afm, %.lr.ph562.i.us.i ], [ %.18580.i.us.i, %_ZN4ncnn3MatD2Ev.exit671.i.us.i ], [ %.18580.i.us.i, %_ZN4ncnn3MatD2Ev.exit672.i.us.i ], [ %i.abx, %.loopexit497.i.us.i.loopexit230.unr-lcssa ], [ %i.afr, %.lr.ph577.i.us.i.epil ] ; 2 uses
  %indvars.iv.next671.i.us.i = add nuw nsw i64 %indvars.iv670.i.us.i, 4 ; 3 uses
  %i.afu = icmp slt i64 %indvars.iv.next671.i.us.i, %invariant.op759.i.i
  br i1 %i.afu, label %.split762.i.us.i, label %.preheader496.loopexit.i.i, !llvm.loop !1241

.preheader496.loopexit.i.i:                       ; preds = %.loopexit497.i.us.i, %.loopexit497.i.preheader.i
  %.us-phi81.i = phi ptr [ %.9.lcssa.i.i, %.loopexit497.i.preheader.i ], [ %.26.i.us.i, %.loopexit497.i.us.i ]
  %.us-phi82.i = phi i64 [ %i.abb, %.loopexit497.i.preheader.i ], [ %indvars.iv.next671.i.us.i, %.loopexit497.i.us.i ]
  %i.afv = trunc nsw i64 %.us-phi82.i to i32
  br label %.preheader496.i.i

.preheader496.i.i:                                ; preds = %.preheader496.loopexit.i.i, %.preheader501.i.i
  %.2596.lcssa.i.i = phi i32 [ %.1595.lcssa.i.i, %.preheader501.i.i ], [ %i.afv, %.preheader496.loopexit.i.i ] ; 3 uses
  %.18.lcssa.i.i = phi ptr [ %.9.lcssa.i.i, %.preheader501.i.i ], [ %.us-phi81.i, %.preheader496.loopexit.i.i ] ; 3 uses
  %i.afw = or disjoint i32 %.2596.lcssa.i.i, 1
  %i.afx = icmp slt i32 %i.afw, %.sroa.speculated64
  br i1 %i.afx, label %.lr.ph606.i.i, label %.preheader.i.i

.lr.ph606.i.i:                                    ; preds = %.preheader496.i.i
  %i.afy = sdiv i32 %i.x, 16
  %i.afz = sext i32 %i.afy to i64
  %i.aga = lshr i32 %.sroa.speculated, 4          ; 3 uses
  %i.agb = icmp sgt i32 %.sroa.speculated, 15
  %i.agc = sdiv i32 %i.x, 8
  %i.agd = sext i32 %i.agc to i64
  %i.age = lshr i32 %.sroa.speculated, 3          ; 3 uses
  %i.agf = icmp sgt i32 %.sroa.speculated, 7
  %i.agg = sdiv i32 %i.x, 4
  %i.agh = sext i32 %i.agg to i64
  %i.agi = lshr i32 %.sroa.speculated, 2          ; 3 uses
  %i.agj = icmp sgt i32 %.sroa.speculated, 3
  %i.agk = sext i32 %i.x to i64
  %i.agl = icmp sgt i32 %.sroa.speculated, 0
  %i.agm = sext i32 %.2596.lcssa.i.i to i64       ; 3 uses
  %i.agn = sext i32 %.sroa.speculated64 to i64
  %i.ago = sext i32 %i.v to i64                   ; 4 uses
  %invariant.op760.i.i = add nsw i64 %i.agn, -1   ; 2 uses
  %i.agp = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.bb)
  %i.agq = icmp eq i32 %i.agp, 1
  %i.agr = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.bb, i1 true)
  br i1 %i.agq, label %.split763.i.us.i.preheader, label %.loopexit492.i.preheader.i

.split763.i.us.i.preheader:                       ; preds = %.lr.ph606.i.i
  %i.ags = add i32 %.sroa.speculated, -1
  %xtraiter277 = and i32 %.sroa.speculated, 3     ; 3 uses
  %i.agt = icmp ult i32 %i.ags, 3
  %unroll_iter282 = and i32 %.sroa.speculated, 2147483644
  %lcmp.mod279.not = icmp eq i32 %xtraiter277, 0
  %lcmp.mod281 = icmp ne i32 %xtraiter277, 0
  %i.agu = icmp eq i32 %i.agi, 1
  %unroll_iter289 = and i32 %i.agi, 536870910
  %i.agv = and i32 %.sroa.speculated, 4
  %lcmp.mod286.not = icmp eq i32 %i.agv, 0
  %lcmp.mod288 = trunc i32 %i.agi to i1
  %i.agw = icmp eq i32 %i.age, 1
  %unroll_iter296 = and i32 %i.age, 268435454
  %i.agx = and i32 %.sroa.speculated, 8
  %lcmp.mod293.not = icmp eq i32 %i.agx, 0
  %lcmp.mod295 = trunc i32 %i.age to i1
  %i.agy = icmp eq i32 %i.aga, 1
  %unroll_iter303 = and i32 %i.aga, 134217726
  %i.agz = and i32 %.sroa.speculated, 16
  %lcmp.mod300.not = icmp eq i32 %i.agz, 0
  %lcmp.mod302 = trunc i32 %i.aga to i1
  br label %.split763.i.us.i

.loopexit492.i.preheader.i:                       ; preds = %.lr.ph606.i.i
  %i.aha = add nsw i64 %i.agm, 2                  ; 2 uses
  %smax134.i = call i64 @llvm.smax.i64(i64 %invariant.op760.i.i, i64 %i.aha)
  %i.ahb = xor i64 %i.agm, -1
  %i.ahc = add nsw i64 %smax134.i, %i.ahb
  %i.ahd = and i64 %i.ahc, -2
  %i.ahe = add i64 %i.aha, %i.ahd
  br label %.preheader.loopexit.i.i

.split763.i.us.i:                                 ; preds = %.split763.i.us.i.preheader, %.loopexit492.i.us.i
  %indvars.iv677.i.us.i = phi i64 [ %indvars.iv.next678.i.us.i, %.loopexit492.i.us.i ], [ %i.agm, %.split763.i.us.i.preheader ] ; 5 uses
  %.27605.i.us.i = phi ptr [ %.35.i.us.i, %.loopexit492.i.us.i ], [ %.18.lcssa.i.i, %.split763.i.us.i.preheader ] ; 13 uses
  switch i32 %i.agr, label %.loopexit492.i.us.i [
    i32 4, label %_ZN4ncnn3MatD2Ev.exit668.i.us.i
    i32 3, label %_ZN4ncnn3MatD2Ev.exit667.i.us.i
    i32 2, label %_ZN4ncnn3MatD2Ev.exit666.i.us.i
    i32 0, label %_ZN4ncnn3MatD2Ev.exit665.i.us.i
  ]

_ZN4ncnn3MatD2Ev.exit665.i.us.i:                  ; preds = %.split763.i.us.i
  br i1 %i.agl, label %.lr.ph602.i.us.i, label %.loopexit492.i.us.i

.lr.ph602.i.us.i:                                 ; preds = %_ZN4ncnn3MatD2Ev.exit665.i.us.i
  %i.ahf = load ptr, ptr %9, align 8, !tbaa !22, !noalias !1286
  %i.ahg = load i64, ptr %i.p, align 8, !tbaa !23, !noalias !1286 ; 6 uses
  %i.ahh = mul i64 %i.ahg, %i.agk
  %i.ahi = load i64, ptr %i.q, align 8, !tbaa !64, !noalias !1286
  %i.ahj = mul i64 %i.ahh, %i.ahi
  %i.ahk = getelementptr inbounds nuw i8, ptr %i.ahf, i64 %i.ahj
  %i.ahl = getelementptr [4 x i8], ptr %i.ahk, i64 %indvars.iv677.i.us.i
  %i.ahm = getelementptr [4 x i8], ptr %i.ahl, i64 %i.ago ; 2 uses
  br i1 %i.agt, label %.epil.preheader, label %.lr.ph602.i.us.i.new

.lr.ph602.i.us.i.new:                             ; preds = %.lr.ph602.i.us.i, %.lr.ph602.i.us.i.new
  %.0592600.i.us.i = phi ptr [ %i.aik, %.lr.ph602.i.us.i.new ], [ %i.ahm, %.lr.ph602.i.us.i ] ; 3 uses
  %.34599.i.us.i = phi ptr [ %i.aij, %.lr.ph602.i.us.i.new ], [ %.27605.i.us.i, %.lr.ph602.i.us.i ] ; 9 uses
  %niter283 = phi i32 [ %niter283.next.3, %.lr.ph602.i.us.i.new ], [ 0, %.lr.ph602.i.us.i ]
  %i.ahn = load float, ptr %.0592600.i.us.i, align 4, !tbaa !41
  store float %i.ahn, ptr %.34599.i.us.i, align 4, !tbaa !41
  %i.aho = getelementptr inbounds nuw i8, ptr %.0592600.i.us.i, i64 4
  %i.ahp = load float, ptr %i.aho, align 4, !tbaa !41
  %i.ahq = getelementptr inbounds nuw i8, ptr %.34599.i.us.i, i64 4
  store float %i.ahp, ptr %i.ahq, align 4, !tbaa !41
  %i.ahr = getelementptr inbounds nuw i8, ptr %.34599.i.us.i, i64 8
  %i.ahs = getelementptr inbounds nuw [4 x i8], ptr %.0592600.i.us.i, i64 %i.ahg ; 3 uses
  %i.aht = load float, ptr %i.ahs, align 4, !tbaa !41
  store float %i.aht, ptr %i.ahr, align 4, !tbaa !41
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.ahs, i64 4
  %i.ahv = load float, ptr %i.ahu, align 4, !tbaa !41
  %i.ahw = getelementptr inbounds nuw i8, ptr %.34599.i.us.i, i64 12
  store float %i.ahv, ptr %i.ahw, align 4, !tbaa !41
  %i.ahx = getelementptr inbounds nuw i8, ptr %.34599.i.us.i, i64 16
  %i.ahy = getelementptr inbounds nuw [4 x i8], ptr %i.ahs, i64 %i.ahg ; 3 uses
  %i.ahz = load float, ptr %i.ahy, align 4, !tbaa !41
  store float %i.ahz, ptr %i.ahx, align 4, !tbaa !41
  %i.aia = getelementptr inbounds nuw i8, ptr %i.ahy, i64 4
  %i.aib = load float, ptr %i.aia, align 4, !tbaa !41
  %i.aic = getelementptr inbounds nuw i8, ptr %.34599.i.us.i, i64 20
  store float %i.aib, ptr %i.aic, align 4, !tbaa !41
  %i.aid = getelementptr inbounds nuw i8, ptr %.34599.i.us.i, i64 24
  %i.aie = getelementptr inbounds nuw [4 x i8], ptr %i.ahy, i64 %i.ahg ; 3 uses
  %i.aif = load float, ptr %i.aie, align 4, !tbaa !41
  store float %i.aif, ptr %i.aid, align 4, !tbaa !41
  %i.aig = getelementptr inbounds nuw i8, ptr %i.aie, i64 4
  %i.aih = load float, ptr %i.aig, align 4, !tbaa !41
  %i.aii = getelementptr inbounds nuw i8, ptr %.34599.i.us.i, i64 28
  store float %i.aih, ptr %i.aii, align 4, !tbaa !41
  %i.aij = getelementptr inbounds nuw i8, ptr %.34599.i.us.i, i64 32 ; 3 uses
  %i.aik = getelementptr inbounds nuw [4 x i8], ptr %i.aie, i64 %i.ahg ; 2 uses
  %niter283.next.3 = add i32 %niter283, 4         ; 2 uses
  %niter283.ncmp.3 = icmp eq i32 %niter283.next.3, %unroll_iter282
  br i1 %niter283.ncmp.3, label %.loopexit492.i.us.i.loopexit227.unr-lcssa, label %.lr.ph602.i.us.i.new, !llvm.loop !1244

_ZN4ncnn3MatD2Ev.exit666.i.us.i:                  ; preds = %.split763.i.us.i
  br i1 %i.agj, label %.lr.ph597.preheader.i.us.i, label %.loopexit492.i.us.i

.lr.ph597.preheader.i.us.i:                       ; preds = %_ZN4ncnn3MatD2Ev.exit666.i.us.i
  %i.ail = load ptr, ptr %9, align 8, !tbaa !22, !noalias !1287
  %i.aim = load i64, ptr %i.p, align 8, !tbaa !23, !noalias !1287
  %i.ain = mul i64 %i.aim, %i.agh
  %i.aio = load i64, ptr %i.q, align 8, !tbaa !64, !noalias !1287
  %i.aip = mul i64 %i.ain, %i.aio
  %i.aiq = getelementptr inbounds nuw i8, ptr %i.ail, i64 %i.aip
  %i.air = add nsw i64 %indvars.iv677.i.us.i, %i.ago
  %.idx706.i.us.i = shl nsw i64 %i.air, 4
  %i.ais = getelementptr inbounds i8, ptr %i.aiq, i64 %.idx706.i.us.i ; 2 uses
  br i1 %i.agu, label %.lr.ph597.i.us.i.epil.preheader, label %.lr.ph597.i.us.i

.lr.ph597.i.us.i:                                 ; preds = %.lr.ph597.preheader.i.us.i, %.lr.ph597.i.us.i
  %.32596.i.us.i = phi ptr [ %i.aji, %.lr.ph597.i.us.i ], [ %.27605.i.us.i, %.lr.ph597.preheader.i.us.i ] ; 5 uses
  %.0601594.i.us.i = phi ptr [ %i.ajk, %.lr.ph597.i.us.i ], [ %i.ais, %.lr.ph597.preheader.i.us.i ] ; 3 uses
  %niter290 = phi i32 [ %niter290.next.1, %.lr.ph597.i.us.i ], [ 0, %.lr.ph597.preheader.i.us.i ]
  %i.ait = load <4 x float>, ptr %.0601594.i.us.i, align 16, !tbaa !85 ; 2 uses
  %i.aiu = getelementptr inbounds nuw i8, ptr %.0601594.i.us.i, i64 16
  %i.aiv = load <4 x float>, ptr %i.aiu, align 16, !tbaa !85 ; 2 uses
  %i.aiw = shufflevector <4 x float> %i.ait, <4 x float> %i.aiv, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.aix = shufflevector <4 x float> %i.ait, <4 x float> %i.aiv, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  store <4 x float> %i.aiw, ptr %.32596.i.us.i, align 16, !tbaa !85
  %i.aiy = getelementptr inbounds nuw i8, ptr %.32596.i.us.i, i64 16
  store <4 x float> %i.aix, ptr %i.aiy, align 16, !tbaa !85
  %i.aiz = getelementptr inbounds nuw i8, ptr %.32596.i.us.i, i64 32
  %i.aja = load i64, ptr %i.p, align 8, !tbaa !23
  %.idx631.i.us.i = shl i64 %i.aja, 4
  %i.ajb = getelementptr inbounds nuw i8, ptr %.0601594.i.us.i, i64 %.idx631.i.us.i ; 3 uses
  %i.ajc = load <4 x float>, ptr %i.ajb, align 16, !tbaa !85 ; 2 uses
  %i.ajd = getelementptr inbounds nuw i8, ptr %i.ajb, i64 16
  %i.aje = load <4 x float>, ptr %i.ajd, align 16, !tbaa !85 ; 2 uses
  %i.ajf = shufflevector <4 x float> %i.ajc, <4 x float> %i.aje, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.ajg = shufflevector <4 x float> %i.ajc, <4 x float> %i.aje, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  store <4 x float> %i.ajf, ptr %i.aiz, align 16, !tbaa !85
  %i.ajh = getelementptr inbounds nuw i8, ptr %.32596.i.us.i, i64 48
  store <4 x float> %i.ajg, ptr %i.ajh, align 16, !tbaa !85
  %i.aji = getelementptr inbounds nuw i8, ptr %.32596.i.us.i, i64 64 ; 3 uses
  %i.ajj = load i64, ptr %i.p, align 8, !tbaa !23
  %.idx631.i.us.i.1 = shl i64 %i.ajj, 4
  %i.ajk = getelementptr inbounds nuw i8, ptr %i.ajb, i64 %.idx631.i.us.i.1 ; 2 uses
  %niter290.next.1 = add i32 %niter290, 2         ; 2 uses
  %niter290.ncmp.1 = icmp eq i32 %niter290.next.1, %unroll_iter289
  br i1 %niter290.ncmp.1, label %.loopexit492.i.us.i.loopexit226.unr-lcssa, label %.lr.ph597.i.us.i, !llvm.loop !1247

_ZN4ncnn3MatD2Ev.exit667.i.us.i:                  ; preds = %.split763.i.us.i
  br i1 %i.agf, label %.lr.ph592.preheader.i.us.i, label %.loopexit492.i.us.i

.lr.ph592.preheader.i.us.i:                       ; preds = %_ZN4ncnn3MatD2Ev.exit667.i.us.i
  %i.ajl = load ptr, ptr %9, align 8, !tbaa !22, !noalias !1288
  %i.ajm = load i64, ptr %i.p, align 8, !tbaa !23, !noalias !1288
  %i.ajn = mul i64 %i.ajm, %i.agd
  %i.ajo = load i64, ptr %i.q, align 8, !tbaa !64, !noalias !1288
  %i.ajp = mul i64 %i.ajn, %i.ajo
  %i.ajq = getelementptr inbounds nuw i8, ptr %i.ajl, i64 %i.ajp
  %i.ajr = add nsw i64 %indvars.iv677.i.us.i, %i.ago
  %.idx705.i.us.i = shl nsw i64 %i.ajr, 5
  %i.ajs = getelementptr inbounds i8, ptr %i.ajq, i64 %.idx705.i.us.i ; 2 uses
  br i1 %i.agw, label %.lr.ph592.i.us.i.epil.preheader, label %.lr.ph592.i.us.i

.lr.ph592.i.us.i:                                 ; preds = %.lr.ph592.preheader.i.us.i, %.lr.ph592.i.us.i
  %.30591.i.us.i = phi ptr [ %i.aki, %.lr.ph592.i.us.i ], [ %.27605.i.us.i, %.lr.ph592.preheader.i.us.i ] ; 5 uses
  %.0603589.i.us.i = phi ptr [ %i.akk, %.lr.ph592.i.us.i ], [ %i.ajs, %.lr.ph592.preheader.i.us.i ] ; 3 uses
  %niter297 = phi i32 [ %niter297.next.1, %.lr.ph592.i.us.i ], [ 0, %.lr.ph592.preheader.i.us.i ]
  %i.ajt = load <8 x float>, ptr %.0603589.i.us.i, align 32, !tbaa !85 ; 2 uses
  %i.aju = getelementptr inbounds nuw i8, ptr %.0603589.i.us.i, i64 32
  %i.ajv = load <8 x float>, ptr %i.aju, align 32, !tbaa !85 ; 2 uses
  %i.ajw = shufflevector <8 x float> %i.ajt, <8 x float> %i.ajv, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
end_hunk_7
begin_hunk_8_@_ZN4ncnnL23convolution_im2col_gemmERKNS_3MatERS0_S2_S2_iiiiiiiRKNS_6OptionE.omp_outlined.6:bb.a
  %i.bbz = getelementptr i8, ptr %i.bbr, i64 4
  store float %.sroa.11.40.vec.extract.i, ptr %i.bbz, align 4, !tbaa !41
  %.sroa.11.44.vec.extract.i = extractelement <8 x float> %.1709.lcssa.i, i64 3
  %i.bca = getelementptr i8, ptr %i.bbs, i64 4
  store float %.sroa.11.44.vec.extract.i, ptr %i.bca, align 4, !tbaa !41
  %.sroa.11.48.vec.extract.i = extractelement <8 x float> %.1709.lcssa.i, i64 4
  %i.bcb = getelementptr i8, ptr %i.bbt, i64 4
  store float %.sroa.11.48.vec.extract.i, ptr %i.bcb, align 4, !tbaa !41
  %.sroa.11.52.vec.extract.i = extractelement <8 x float> %.1709.lcssa.i, i64 5
  %i.bcc = getelementptr i8, ptr %i.bbu, i64 4
  store float %.sroa.11.52.vec.extract.i, ptr %i.bcc, align 4, !tbaa !41
  %.sroa.11.56.vec.extract.i = extractelement <8 x float> %.1709.lcssa.i, i64 6
  %i.bcd = getelementptr i8, ptr %i.bbv, i64 4
  store float %.sroa.11.56.vec.extract.i, ptr %i.bcd, align 4, !tbaa !41
  %.sroa.11.60.vec.extract.i = extractelement <8 x float> %.1709.lcssa.i, i64 7
  %i.bce = getelementptr i8, ptr %i.bbw, i64 4
  store float %.sroa.11.60.vec.extract.i, ptr %i.bce, align 4, !tbaa !41
  %i.bcf = getelementptr inbounds nuw i8, ptr %.1223181103.i, i64 8
  br label %.thread794.i

bb.ct:                                            ; preds = %._crit_edge1097.i
  store <8 x float> %.1705.lcssa.i, ptr %.101104.i, align 32, !tbaa !85
  %i.bcg = getelementptr inbounds nuw i8, ptr %.101104.i, i64 32
  store <8 x float> %.1709.lcssa.i, ptr %i.bcg, align 32, !tbaa !85
  br label %.thread794.i

.thread794.i:                                     ; preds = %bb.ct, %bb.cs, %bb.cr, %.thread791.i, %bb.cq
  %.152321.i = phi ptr [ %i.bcf, %bb.cs ], [ %.1223181103.i, %bb.cq ], [ %.1223181103.i, %bb.ct ], [ %i.bbl, %.thread791.i ], [ %i.bbp, %bb.cr ] ; 2 uses
  %i.bch = getelementptr inbounds nuw i8, ptr %.101104.i, i64 64 ; 2 uses
  %i.bci = add nuw nsw i32 %.323391101.i, 2       ; 3 uses
  %i.bcj = or disjoint i32 %i.bci, 1
  %i.bck = icmp slt i32 %i.bcj, %.sroa.speculated145
  br i1 %i.bck, label %bb.cl, label %.preheader845.i, !llvm.loop !1320

bb.cu:                                            ; preds = %.thread799.i, %.lr.ph1123.i
  %.111122.i = phi ptr [ %.10.lcssa.i, %.lr.ph1123.i ], [ %i.bek, %.thread799.i ] ; 3 uses
  %.1623221121.i = phi ptr [ %.122318.lcssa.i, %.lr.ph1123.i ], [ %.192325.i, %.thread799.i ] ; 16 uses
  %.823341120.i = phi ptr [ %.62332.lcssa.i, %.lr.ph1123.i ], [ %.92335.lcssa.i, %.thread799.i ] ; 4 uses
  %.423401119.i = phi i32 [ %.32339.lcssa.i, %.lr.ph1123.i ], [ %i.bel, %.thread799.i ]
  br i1 %i.ej, label %bb.cv, label %bb.cx

bb.cv:                                            ; preds = %bb.cu
  br i1 %.not2442.i, label %bb.cy, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.bcl = load <8 x float>, ptr %.32181.i, align 1, !tbaa !85
  br label %bb.cy

bb.cx:                                            ; preds = %bb.cu
  %i.bcm = load <8 x float>, ptr %.111122.i, align 32, !tbaa !85
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cw, %bb.cv
  %.0706.i = phi nsz <8 x float> [ %i.bcm, %bb.cx ], [ %i.bcl, %bb.cw ], [ zeroinitializer, %bb.cv ] ; 3 uses
  br i1 %i.ek, label %.lr.ph1115.i.preheader, label %._crit_edge1116.i

.lr.ph1115.i.preheader:                           ; preds = %bb.cy
  br i1 %i.fh, label %.lr.ph1115.i.epil.preheader, label %.lr.ph1115.i

.lr.ph1115.i:                                     ; preds = %.lr.ph1115.i.preheader, %.lr.ph1115.i
  %.923351113.i = phi ptr [ %i.bdo, %.lr.ph1115.i ], [ %.823341120.i, %.lr.ph1115.i.preheader ] ; 5 uses
  %.024041111.i = phi ptr [ %i.bdn, %.lr.ph1115.i ], [ %.121721129.i, %.lr.ph1115.i.preheader ] ; 5 uses
  %.17071110.i = phi <8 x float> [ %i.bdm, %.lr.ph1115.i ], [ %.0706.i, %.lr.ph1115.i.preheader ]
  %niter1203 = phi i32 [ %niter1203.next.3, %.lr.ph1115.i ], [ 0, %.lr.ph1115.i.preheader ]
  %i.bcn = load <8 x float>, ptr %.024041111.i, align 32, !tbaa !85
  %i.bco = load float, ptr %.923351113.i, align 4, !tbaa !41
  %i.bcp = insertelement <8 x float> poison, float %i.bco, i64 0
  %i.bcq = shufflevector <8 x float> %i.bcp, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bcr = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bcn, <8 x float> nofpclass(nan inf) %i.bcq, <8 x float> nofpclass(nan inf) %.17071110.i)
  %i.bcs = getelementptr inbounds nuw i8, ptr %.024041111.i, i64 32
  %i.bct = getelementptr inbounds nuw i8, ptr %.923351113.i, i64 4
  %i.bcu = load <8 x float>, ptr %i.bcs, align 32, !tbaa !85
  %i.bcv = load float, ptr %i.bct, align 4, !tbaa !41
  %i.bcw = insertelement <8 x float> poison, float %i.bcv, i64 0
  %i.bcx = shufflevector <8 x float> %i.bcw, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bcy = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bcu, <8 x float> nofpclass(nan inf) %i.bcx, <8 x float> nofpclass(nan inf) %i.bcr)
  %i.bcz = getelementptr inbounds nuw i8, ptr %.024041111.i, i64 64
  %i.bda = getelementptr inbounds nuw i8, ptr %.923351113.i, i64 8
  %i.bdb = load <8 x float>, ptr %i.bcz, align 32, !tbaa !85
  %i.bdc = load float, ptr %i.bda, align 4, !tbaa !41
  %i.bdd = insertelement <8 x float> poison, float %i.bdc, i64 0
  %i.bde = shufflevector <8 x float> %i.bdd, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bdf = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bdb, <8 x float> nofpclass(nan inf) %i.bde, <8 x float> nofpclass(nan inf) %i.bcy)
  %i.bdg = getelementptr inbounds nuw i8, ptr %.024041111.i, i64 96
  %i.bdh = getelementptr inbounds nuw i8, ptr %.923351113.i, i64 12
  %i.bdi = load <8 x float>, ptr %i.bdg, align 32, !tbaa !85
  %i.bdj = load float, ptr %i.bdh, align 4, !tbaa !41
  %i.bdk = insertelement <8 x float> poison, float %i.bdj, i64 0
  %i.bdl = shufflevector <8 x float> %i.bdk, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bdm = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bdi, <8 x float> nofpclass(nan inf) %i.bdl, <8 x float> nofpclass(nan inf) %i.bdf) ; 3 uses
  %i.bdn = getelementptr inbounds nuw i8, ptr %.024041111.i, i64 128 ; 2 uses
  %i.bdo = getelementptr inbounds nuw i8, ptr %.923351113.i, i64 16 ; 2 uses
  %niter1203.next.3 = add i32 %niter1203, 4       ; 2 uses
  %niter1203.ncmp.3 = icmp eq i32 %niter1203.next.3, %unroll_iter1202
  br i1 %niter1203.ncmp.3, label %._crit_edge1116.loopexit.i.unr-lcssa, label %.lr.ph1115.i, !llvm.loop !1321

._crit_edge1116.loopexit.i.unr-lcssa:             ; preds = %.lr.ph1115.i
  br i1 %lcmp.mod1199.not, label %._crit_edge1116.loopexit.i, label %.lr.ph1115.i.epil.preheader

.lr.ph1115.i.epil.preheader:                      ; preds = %._crit_edge1116.loopexit.i.unr-lcssa, %.lr.ph1115.i.preheader
  %.923351113.i.epil.init = phi ptr [ %.823341120.i, %.lr.ph1115.i.preheader ], [ %i.bdo, %._crit_edge1116.loopexit.i.unr-lcssa ]
  %.024041111.i.epil.init = phi ptr [ %.121721129.i, %.lr.ph1115.i.preheader ], [ %i.bdn, %._crit_edge1116.loopexit.i.unr-lcssa ]
  %.17071110.i.epil.init = phi <8 x float> [ %.0706.i, %.lr.ph1115.i.preheader ], [ %i.bdm, %._crit_edge1116.loopexit.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1201)
  br label %.lr.ph1115.i.epil

.lr.ph1115.i.epil:                                ; preds = %.lr.ph1115.i.epil, %.lr.ph1115.i.epil.preheader
  %.923351113.i.epil = phi ptr [ %i.bdv, %.lr.ph1115.i.epil ], [ %.923351113.i.epil.init, %.lr.ph1115.i.epil.preheader ] ; 2 uses
  %.024041111.i.epil = phi ptr [ %i.bdu, %.lr.ph1115.i.epil ], [ %.024041111.i.epil.init, %.lr.ph1115.i.epil.preheader ] ; 2 uses
  %.17071110.i.epil = phi <8 x float> [ %i.bdt, %.lr.ph1115.i.epil ], [ %.17071110.i.epil.init, %.lr.ph1115.i.epil.preheader ]
  %epil.iter1198 = phi i32 [ %epil.iter1198.next, %.lr.ph1115.i.epil ], [ 0, %.lr.ph1115.i.epil.preheader ]
  %i.bdp = load <8 x float>, ptr %.024041111.i.epil, align 32, !tbaa !85
  %i.bdq = load float, ptr %.923351113.i.epil, align 4, !tbaa !41
  %i.bdr = insertelement <8 x float> poison, float %i.bdq, i64 0
  %i.bds = shufflevector <8 x float> %i.bdr, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bdt = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bdp, <8 x float> nofpclass(nan inf) %i.bds, <8 x float> nofpclass(nan inf) %.17071110.i.epil) ; 2 uses
  %i.bdu = getelementptr inbounds nuw i8, ptr %.024041111.i.epil, i64 32
  %i.bdv = getelementptr inbounds nuw i8, ptr %.923351113.i.epil, i64 4
  %epil.iter1198.next = add i32 %epil.iter1198, 1 ; 2 uses
  %epil.iter1198.cmp.not = icmp eq i32 %epil.iter1198.next, %xtraiter1197
  br i1 %epil.iter1198.cmp.not, label %._crit_edge1116.loopexit.i, label %.lr.ph1115.i.epil, !llvm.loop !1322

._crit_edge1116.loopexit.i:                       ; preds = %.lr.ph1115.i.epil, %._crit_edge1116.loopexit.i.unr-lcssa
  %.lcssa1073 = phi <8 x float> [ %i.bdm, %._crit_edge1116.loopexit.i.unr-lcssa ], [ %i.bdt, %.lr.ph1115.i.epil ]
  %i.bdw = getelementptr i8, ptr %.823341120.i, i64 %i.fd
  %scevgep1665.i = getelementptr i8, ptr %i.bdw, i64 4
  br label %._crit_edge1116.i

._crit_edge1116.i:                                ; preds = %._crit_edge1116.loopexit.i, %bb.cy
  %.1707.lcssa.i = phi <8 x float> [ %.0706.i, %bb.cy ], [ %.lcssa1073, %._crit_edge1116.loopexit.i ] ; 12 uses
  %.92335.lcssa.i = phi ptr [ %.823341120.i, %bb.cy ], [ %scevgep1665.i, %._crit_edge1116.loopexit.i ]
  br i1 %.not179, label %bb.dc, label %bb.cz

bb.cz:                                            ; preds = %._crit_edge1116.i
  switch i32 %i.co, label %.thread799.i [
    i32 8, label %.thread796.i
    i32 4, label %bb.da
    i32 1, label %bb.db
  ]

.thread796.i:                                     ; preds = %bb.cz
  store <8 x float> %.1707.lcssa.i, ptr %.1623221121.i, align 32, !tbaa !85
  %i.bdx = getelementptr inbounds nuw i8, ptr %.1623221121.i, i64 32
  br label %.thread799.i

bb.da:                                            ; preds = %bb.cz
  %i.bdy = shufflevector <8 x float> %.1707.lcssa.i, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %i.bdy, ptr %.1623221121.i, align 16, !tbaa !85
  %i.bdz = getelementptr inbounds [4 x i8], ptr %.1623221121.i, i64 %i.eq
  %i.bea = shufflevector <8 x float> %.1707.lcssa.i, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x float> %i.bea, ptr %i.bdz, align 16, !tbaa !85
  %i.beb = getelementptr inbounds nuw i8, ptr %.1623221121.i, i64 16
  br label %.thread799.i

bb.db:                                            ; preds = %bb.cz
  %.sroa.0182.0.vec.extract.i = extractelement <8 x float> %.1707.lcssa.i, i64 0
  store float %.sroa.0182.0.vec.extract.i, ptr %.1623221121.i, align 4, !tbaa !41
  %.sroa.0182.4.vec.extract.i = extractelement <8 x float> %.1707.lcssa.i, i64 1
  %i.bec = getelementptr inbounds i8, ptr %.1623221121.i, i64 %i.el
  store float %.sroa.0182.4.vec.extract.i, ptr %i.bec, align 4, !tbaa !41
  %.sroa.0182.8.vec.extract.i = extractelement <8 x float> %.1707.lcssa.i, i64 2
  %i.bed = getelementptr inbounds [4 x i8], ptr %.1623221121.i, i64 %i.en
  store float %.sroa.0182.8.vec.extract.i, ptr %i.bed, align 4, !tbaa !41
  %.sroa.0182.12.vec.extract.i = extractelement <8 x float> %.1707.lcssa.i, i64 3
  %i.bee = getelementptr inbounds i8, ptr %.1623221121.i, i64 %i.eo
  store float %.sroa.0182.12.vec.extract.i, ptr %i.bee, align 4, !tbaa !41
  %.sroa.0182.16.vec.extract.i = extractelement <8 x float> %.1707.lcssa.i, i64 4
  %i.bef = getelementptr inbounds [4 x i8], ptr %.1623221121.i, i64 %i.eq
  store float %.sroa.0182.16.vec.extract.i, ptr %i.bef, align 4, !tbaa !41
  %.sroa.0182.20.vec.extract.i = extractelement <8 x float> %.1707.lcssa.i, i64 5
  %i.beg = getelementptr inbounds i8, ptr %.1623221121.i, i64 %i.er
  store float %.sroa.0182.20.vec.extract.i, ptr %i.beg, align 4, !tbaa !41
  %.sroa.0182.24.vec.extract.i = extractelement <8 x float> %.1707.lcssa.i, i64 6
  %i.beh = getelementptr inbounds i8, ptr %.1623221121.i, i64 %i.es
  store float %.sroa.0182.24.vec.extract.i, ptr %i.beh, align 4, !tbaa !41
  %.sroa.0182.28.vec.extract.i = extractelement <8 x float> %.1707.lcssa.i, i64 7
  %i.bei = getelementptr inbounds i8, ptr %.1623221121.i, i64 %i.et
  store float %.sroa.0182.28.vec.extract.i, ptr %i.bei, align 4, !tbaa !41
  %i.bej = getelementptr inbounds nuw i8, ptr %.1623221121.i, i64 4
  br label %.thread799.i

bb.dc:                                            ; preds = %._crit_edge1116.i
  store <8 x float> %.1707.lcssa.i, ptr %.111122.i, align 32, !tbaa !85
  br label %.thread799.i

.thread799.i:                                     ; preds = %bb.dc, %bb.db, %bb.da, %.thread796.i, %bb.cz
  %.192325.i = phi ptr [ %i.bej, %bb.db ], [ %.1623221121.i, %bb.cz ], [ %.1623221121.i, %bb.dc ], [ %i.bdx, %.thread796.i ], [ %i.beb, %bb.da ]
  %i.bek = getelementptr inbounds nuw i8, ptr %.111122.i, i64 32 ; 2 uses
  %i.bel = add nuw nsw i32 %.423401119.i, 1       ; 2 uses
  %exitcond1667.not.i = icmp eq i32 %i.bel, %.sroa.speculated145
  br i1 %exitcond1667.not.i, label %._crit_edge1124.i, label %bb.cu, !llvm.loop !1323

._crit_edge1124.i:                                ; preds = %.thread799.i, %.preheader845.i
  %.11.lcssa.i = phi ptr [ %.10.lcssa.i, %.preheader845.i ], [ %i.bek, %.thread799.i ] ; 2 uses
  %i.bem = getelementptr inbounds [4 x i8], ptr %.121721129.i, i64 %i.ew ; 2 uses
  %indvars.iv.next1669.i = add nuw nsw i64 %indvars.iv1668.i, 8 ; 3 uses
  %i.ben = icmp slt i64 %indvars.iv.next1669.i, %invariant.op.i
  br i1 %i.ben, label %bb.bh, label %.preheader844.loopexit.i, !llvm.loop !1324

.preheader839.loopexit.i:                         ; preds = %._crit_edge1250.i
  %i.beo = trunc nsw i64 %indvars.iv.next1683.i to i32
  br label %.preheader839.i

.preheader839.i:                                  ; preds = %.preheader839.loopexit.i, %.preheader844.i
  %.22200.lcssa.i = phi i32 [ %.12199.lcssa.i, %.preheader844.i ], [ %i.beo, %.preheader839.loopexit.i ] ; 3 uses
  %.12.lcssa.i = phi ptr [ %.62194.lcssa.i, %.preheader844.i ], [ %.17.lcssa.i, %.preheader839.loopexit.i ] ; 2 uses
  %.42182.lcssa.i = phi ptr [ %.22180.lcssa.i, %.preheader844.i ], [ %.52183.i, %.preheader839.loopexit.i ] ; 2 uses
  %.22173.lcssa.i = phi ptr [ %.12172.lcssa.i, %.preheader844.i ], [ %i.btj, %.preheader839.loopexit.i ] ; 2 uses
  %i.bep = or disjoint i32 %.22200.lcssa.i, 1
  %i.beq = icmp slt i32 %i.bep, %.sroa.speculated149
  br i1 %i.beq, label %.lr.ph1372.i, label %.preheader834.i

.lr.ph1372.i:                                     ; preds = %.preheader839.i
  %i.ber = icmp eq i32 %.0317, 0                  ; 5 uses
  %i.bes = icmp sgt i32 %.sroa.speculated, 0      ; 5 uses
  %sext2424.i = shl i64 %i.cp, 32                 ; 3 uses
  %i.bet = ashr exact i64 %sext2424.i, 30         ; 5 uses
  %sext2418.i = add i64 %sext2424.i, 4294967296
  %i.beu = ashr exact i64 %sext2418.i, 30
  %i.bev = shl nsw i32 %.sroa.speculated, 1
  %i.bew = sext i32 %i.bev to i64
  %i.bex = add i32 %.sroa.speculated, -1
  %i.bey = zext i32 %i.bex to i64                 ; 5 uses
  %i.bez = shl nuw nsw i64 %i.bey, 6
  %i.bfa = shl nuw nsw i64 %i.bey, 5
  %i.bfb = shl nuw nsw i64 %i.bey, 4
  %i.bfc = shl nuw nsw i64 %i.bey, 3
  %i.bfd = shl nuw nsw i64 %i.bey, 2
  %i.bfe = sext i32 %.22200.lcssa.i to i64
  %i.bff = ashr exact i64 %sext2424.i, 32
  %i.bfg = zext i32 %.sroa.speculated to i64      ; 10 uses
  %i.bfh = add i32 %.sroa.speculated, -1          ; 3 uses
  %xtraiter1229 = and i32 %.sroa.speculated, 1
  %i.bfi = icmp eq i32 %i.bfh, 0
  %unroll_iter1235 = and i32 %.sroa.speculated, 2147483646
  %lcmp.mod1231.not = icmp eq i32 %xtraiter1229, 0
  %lcmp.mod1234 = trunc i32 %.sroa.speculated to i1
  %xtraiter1237 = and i32 %.sroa.speculated, 1
  %i.bfj = icmp eq i32 %i.bfh, 0
  %unroll_iter1245 = and i32 %.sroa.speculated, 2147483646
  %lcmp.mod1239.not = icmp eq i32 %xtraiter1237, 0
  %lcmp.mod1244 = trunc i32 %.sroa.speculated to i1
  %xtraiter1247 = and i32 %.sroa.speculated, 1
  %i.bfk = icmp eq i32 %i.bfh, 0
  %unroll_iter1253 = and i32 %.sroa.speculated, 2147483646
  %lcmp.mod1249.not = icmp eq i32 %xtraiter1247, 0
  %lcmp.mod1252 = trunc i32 %.sroa.speculated to i1
  %min.iters.check930 = icmp ult i32 %.sroa.speculated, 8
  %min.iters.check932 = icmp ult i32 %.sroa.speculated, 32
  %i.bfl = and i64 %i.bfg, 24
  %n.vec934 = and i64 %i.bfg, 2147483616          ; 5 uses
  %i.bfm = trunc nuw nsw i64 %n.vec934 to i32
  %i.bfn = shl nuw nsw i64 %n.vec934, 3           ; 2 uses
  %cmp.n967 = icmp eq i64 %n.vec934, %i.bfg
  %min.epilog.iters.check978 = icmp eq i64 %i.bfl, 0
  %n.vec980 = and i64 %i.bfg, 2147483640          ; 4 uses
  %i.bfo = trunc nuw nsw i64 %n.vec980 to i32
  %i.bfp = shl nuw nsw i64 %n.vec980, 3           ; 2 uses
  %cmp.n997 = icmp eq i64 %n.vec980, %i.bfg
  %min.iters.check856 = icmp ult i32 %.sroa.speculated, 8
  %min.iters.check858 = icmp ult i32 %.sroa.speculated, 64
  %i.bfq = and i64 %i.bfg, 56
  %n.vec860 = and i64 %i.bfg, 2147483584          ; 6 uses
  %i.bfr = trunc nuw nsw i64 %n.vec860 to i32
  %i.bfs = shl nuw nsw i64 %n.vec860, 3
  %i.bft = shl nuw nsw i64 %n.vec860, 2
  %cmp.n900 = icmp eq i64 %n.vec860, %i.bfg
  %min.epilog.iters.check909 = icmp eq i64 %i.bfq, 0
  %n.vec911 = and i64 %i.bfg, 2147483640          ; 5 uses
  %i.bfu = trunc nuw nsw i64 %n.vec911 to i32
  %i.bfv = shl nuw nsw i64 %n.vec911, 3
  %i.bfw = shl nuw nsw i64 %n.vec911, 2
  %cmp.n924 = icmp eq i64 %n.vec911, %i.bfg
  br label %bb.ez

bb.dd:                                            ; preds = %._crit_edge1250.i, %.lr.ph1256.i
  %indvars.iv1682.i = phi i64 [ %i.akv, %.lr.ph1256.i ], [ %indvars.iv.next1683.i, %._crit_edge1250.i ] ; 3 uses
  %.221731255.i = phi ptr [ %.12172.lcssa.i, %.lr.ph1256.i ], [ %i.btj, %._crit_edge1250.i ] ; 9 uses
  %.421821254.i = phi ptr [ %.22180.lcssa.i, %.lr.ph1256.i ], [ %.52183.i, %._crit_edge1250.i ]
  %.121253.i = phi ptr [ %.62194.lcssa.i, %.lr.ph1256.i ], [ %.17.lcssa.i, %._crit_edge1250.i ] ; 2 uses
  %i.bfx = load ptr, ptr %13, align 8, !tbaa !22
  %i.bfy = add nsw i64 %indvars.iv1682.i, %i.ao
  %i.bfz = mul nsw i64 %i.bfy, %i.akw
  %i.bga = getelementptr inbounds [4 x i8], ptr %i.bfx, i64 %i.bfz
  %i.bgb = getelementptr inbounds [4 x i8], ptr %i.bga, i64 %i.ake ; 2 uses
  %.not2425.i = icmp eq ptr %.421821254.i, null
  br i1 %.not2425.i, label %bb.df, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.bgc = load ptr, ptr %12, align 8, !tbaa !22
  %i.bgd = getelementptr inbounds [4 x i8], ptr %i.bgc, i64 %i.ao
  %i.bge = getelementptr inbounds nuw [4 x i8], ptr %i.bgd, i64 %indvars.iv1682.i
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.dd
  %.52183.i = phi ptr [ %i.bge, %bb.de ], [ null, %bb.dd ] ; 12 uses
  br i1 %i.ay, label %.lr.ph1155.i, label %.preheader843.i

.lr.ph1155.i:                                     ; preds = %bb.df
  %.not2438.i = icmp eq ptr %.52183.i, null
  br label %bb.dg

.preheader843.i:                                  ; preds = %bb.do, %bb.df
  %.02388.lcssa.i = phi ptr [ %i.bgb, %bb.df ], [ %.22390.i, %bb.do ] ; 2 uses
  %.02378.lcssa.i = phi ptr [ %i.cm, %bb.df ], [ %.12379.lcssa.i, %bb.do ] ; 2 uses
  %.02373.lcssa.i = phi i32 [ 0, %bb.df ], [ %i.az, %bb.do ] ; 3 uses
  %.13.lcssa.i = phi ptr [ %.121253.i, %bb.df ], [ %i.bjd, %bb.do ] ; 2 uses
  %i.bgf = or disjoint i32 %.02373.lcssa.i, 7
  %i.bgg = icmp slt i32 %i.bgf, %.sroa.speculated145
  br i1 %i.bgg, label %.lr.ph1187.i, label %.preheader842.i

.lr.ph1187.i:                                     ; preds = %.preheader843.i
  %.not2435.i = icmp eq ptr %.52183.i, null
  br label %bb.dp

bb.dg:                                            ; preds = %bb.do, %.lr.ph1155.i
  %.131153.i = phi ptr [ %.121253.i, %.lr.ph1155.i ], [ %i.bjd, %bb.do ] ; 9 uses
  %.023731152.i = phi i32 [ 0, %.lr.ph1155.i ], [ %i.bje, %bb.do ]
  %.023781151.i = phi ptr [ %i.cm, %.lr.ph1155.i ], [ %.12379.lcssa.i, %bb.do ] ; 4 uses
  %.023881150.i = phi ptr [ %i.bgb, %.lr.ph1155.i ], [ %.22390.i, %bb.do ] ; 12 uses
  br i1 %i.akf, label %bb.dh, label %bb.dj

bb.dh:                                            ; preds = %bb.dg
  br i1 %.not2438.i, label %bb.dk, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.bgh = load <4 x float>, ptr %.52183.i, align 1, !tbaa !85
  %i.bgi = shufflevector <4 x float> %i.bgh, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3> ; 4 uses
  br label %bb.dk

bb.dj:                                            ; preds = %bb.dg
  %i.bgj = load <16 x float>, ptr %.131153.i, align 64, !tbaa !85
  %i.bgk = getelementptr inbounds nuw i8, ptr %.131153.i, i64 64
  %i.bgl = load <16 x float>, ptr %i.bgk, align 64, !tbaa !85
  %i.bgm = getelementptr inbounds nuw i8, ptr %.131153.i, i64 128
  %i.bgn = load <16 x float>, ptr %i.bgm, align 64, !tbaa !85
  %i.bgo = getelementptr inbounds nuw i8, ptr %.131153.i, i64 192
  %i.bgp = load <16 x float>, ptr %i.bgo, align 64, !tbaa !85
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.di, %bb.dh
  %.02370.i = phi nsz <16 x float> [ %i.bgi, %bb.di ], [ %i.bgj, %bb.dj ], [ zeroinitializer, %bb.dh ] ; 3 uses
  %.02368.i = phi nsz <16 x float> [ %i.bgi, %bb.di ], [ %i.bgl, %bb.dj ], [ zeroinitializer, %bb.dh ] ; 3 uses
  %.02366.i = phi nsz <16 x float> [ %i.bgi, %bb.di ], [ %i.bgn, %bb.dj ], [ zeroinitializer, %bb.dh ] ; 3 uses
  %.02364.i = phi nsz <16 x float> [ %i.bgi, %bb.di ], [ %i.bgp, %bb.dj ], [ zeroinitializer, %bb.dh ] ; 3 uses
  br i1 %i.akg, label %.lr.ph1143.i.preheader, label %._crit_edge1144.i

.lr.ph1143.i.preheader:                           ; preds = %bb.dk
  br i1 %i.aky, label %.lr.ph1143.i.epil.preheader, label %.lr.ph1143.i

.lr.ph1143.i:                                     ; preds = %.lr.ph1143.i.preheader, %.lr.ph1143.i
  %.123651140.i = phi <16 x float> [ %i.bhn, %.lr.ph1143.i ], [ %.02364.i, %.lr.ph1143.i.preheader ]
  %.123671139.i = phi <16 x float> [ %i.bhm, %.lr.ph1143.i ], [ %.02366.i, %.lr.ph1143.i.preheader ]
  %.123691138.i = phi <16 x float> [ %i.bhl, %.lr.ph1143.i ], [ %.02368.i, %.lr.ph1143.i.preheader ]
  %.123711137.i = phi <16 x float> [ %i.bhk, %.lr.ph1143.i ], [ %.02370.i, %.lr.ph1143.i.preheader ]
  %.023721136.i = phi ptr [ %i.bho, %.lr.ph1143.i ], [ %.221731255.i, %.lr.ph1143.i.preheader ] ; 3 uses
  %.123791135.i = phi ptr [ %i.bhp, %.lr.ph1143.i ], [ %.023781151.i, %.lr.ph1143.i.preheader ] ; 3 uses
  %niter1213 = phi i32 [ %niter1213.next.1, %.lr.ph1143.i ], [ 0, %.lr.ph1143.i.preheader ]
  %i.bgq = load <4 x float>, ptr %.023721136.i, align 16, !tbaa !85
  %i.bgr = load <16 x float>, ptr %.123791135.i, align 64, !tbaa !85 ; 4 uses
  %i.bgs = shufflevector <4 x float> %i.bgq, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3> ; 4 uses
  %i.bgt = shufflevector <16 x float> %i.bgr, <16 x float> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 3, i32 3, i32 3, i32 3>
  %i.bgu = shufflevector <16 x float> %i.bgr, <16 x float> poison, <16 x i32> <i32 4, i32 4, i32 4, i32 4, i32 5, i32 5, i32 5, i32 5, i32 6, i32 6, i32 6, i32 6, i32 7, i32 7, i32 7, i32 7>
  %i.bgv = shufflevector <16 x float> %i.bgr, <16 x float> poison, <16 x i32> <i32 8, i32 8, i32 8, i32 8, i32 9, i32 9, i32 9, i32 9, i32 10, i32 10, i32 10, i32 10, i32 11, i32 11, i32 11, i32 11>
  %i.bgw = shufflevector <16 x float> %i.bgr, <16 x float> poison, <16 x i32> <i32 12, i32 12, i32 12, i32 12, i32 13, i32 13, i32 13, i32 13, i32 14, i32 14, i32 14, i32 14, i32 15, i32 15, i32 15, i32 15>
  %i.bgx = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bgs, <16 x float> nofpclass(nan inf) %i.bgt, <16 x float> nofpclass(nan inf) %.123711137.i)
  %i.bgy = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bgs, <16 x float> nofpclass(nan inf) %i.bgu, <16 x float> nofpclass(nan inf) %.123691138.i)
  %i.bgz = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bgs, <16 x float> nofpclass(nan inf) %i.bgv, <16 x float> nofpclass(nan inf) %.123671139.i)
  %i.bha = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bgs, <16 x float> nofpclass(nan inf) %i.bgw, <16 x float> nofpclass(nan inf) %.123651140.i)
  %i.bhb = getelementptr inbounds nuw i8, ptr %.023721136.i, i64 16
  %i.bhc = getelementptr inbounds nuw i8, ptr %.123791135.i, i64 64
  %i.bhd = load <4 x float>, ptr %i.bhb, align 16, !tbaa !85
  %i.bhe = load <16 x float>, ptr %i.bhc, align 64, !tbaa !85 ; 4 uses
  %i.bhf = shufflevector <4 x float> %i.bhd, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3> ; 4 uses
  %i.bhg = shufflevector <16 x float> %i.bhe, <16 x float> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 3, i32 3, i32 3, i32 3>
  %i.bhh = shufflevector <16 x float> %i.bhe, <16 x float> poison, <16 x i32> <i32 4, i32 4, i32 4, i32 4, i32 5, i32 5, i32 5, i32 5, i32 6, i32 6, i32 6, i32 6, i32 7, i32 7, i32 7, i32 7>
  %i.bhi = shufflevector <16 x float> %i.bhe, <16 x float> poison, <16 x i32> <i32 8, i32 8, i32 8, i32 8, i32 9, i32 9, i32 9, i32 9, i32 10, i32 10, i32 10, i32 10, i32 11, i32 11, i32 11, i32 11>
  %i.bhj = shufflevector <16 x float> %i.bhe, <16 x float> poison, <16 x i32> <i32 12, i32 12, i32 12, i32 12, i32 13, i32 13, i32 13, i32 13, i32 14, i32 14, i32 14, i32 14, i32 15, i32 15, i32 15, i32 15>
  %i.bhk = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bhf, <16 x float> nofpclass(nan inf) %i.bhg, <16 x float> nofpclass(nan inf) %i.bgx) ; 3 uses
  %i.bhl = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bhf, <16 x float> nofpclass(nan inf) %i.bhh, <16 x float> nofpclass(nan inf) %i.bgy) ; 3 uses
  %i.bhm = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bhf, <16 x float> nofpclass(nan inf) %i.bhi, <16 x float> nofpclass(nan inf) %i.bgz) ; 3 uses
  %i.bhn = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bhf, <16 x float> nofpclass(nan inf) %i.bhj, <16 x float> nofpclass(nan inf) %i.bha) ; 3 uses
  %i.bho = getelementptr inbounds nuw i8, ptr %.023721136.i, i64 32 ; 2 uses
  %i.bhp = getelementptr inbounds nuw i8, ptr %.123791135.i, i64 128 ; 2 uses
  %niter1213.next.1 = add i32 %niter1213, 2       ; 2 uses
  %niter1213.ncmp.1 = icmp eq i32 %niter1213.next.1, %unroll_iter1212
  br i1 %niter1213.ncmp.1, label %._crit_edge1144.loopexit.i.unr-lcssa, label %.lr.ph1143.i, !llvm.loop !1325

._crit_edge1144.loopexit.i.unr-lcssa:             ; preds = %.lr.ph1143.i
  br i1 %lcmp.mod1206.not, label %._crit_edge1144.loopexit.i, label %.lr.ph1143.i.epil.preheader

.lr.ph1143.i.epil.preheader:                      ; preds = %._crit_edge1144.loopexit.i.unr-lcssa, %.lr.ph1143.i.preheader
  %.123651140.i.epil.init = phi <16 x float> [ %.02364.i, %.lr.ph1143.i.preheader ], [ %i.bhn, %._crit_edge1144.loopexit.i.unr-lcssa ]
  %.123671139.i.epil.init = phi <16 x float> [ %.02366.i, %.lr.ph1143.i.preheader ], [ %i.bhm, %._crit_edge1144.loopexit.i.unr-lcssa ]
  %.123691138.i.epil.init = phi <16 x float> [ %.02368.i, %.lr.ph1143.i.preheader ], [ %i.bhl, %._crit_edge1144.loopexit.i.unr-lcssa ]
  %.123711137.i.epil.init = phi <16 x float> [ %.02370.i, %.lr.ph1143.i.preheader ], [ %i.bhk, %._crit_edge1144.loopexit.i.unr-lcssa ]
  %.023721136.i.epil.init = phi ptr [ %.221731255.i, %.lr.ph1143.i.preheader ], [ %i.bho, %._crit_edge1144.loopexit.i.unr-lcssa ]
  %.123791135.i.epil.init = phi ptr [ %.023781151.i, %.lr.ph1143.i.preheader ], [ %i.bhp, %._crit_edge1144.loopexit.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1211)
  %i.bhq = load <4 x float>, ptr %.023721136.i.epil.init, align 16, !tbaa !85
  %i.bhr = load <16 x float>, ptr %.123791135.i.epil.init, align 64, !tbaa !85 ; 4 uses
end_hunk_8
begin_hunk_9_@_ZN4ncnnL25conv3x3s1_winograd43_int8ERKNS_3MatERS0_S2_iRKNS_6OptionE.omp_outlined.12:bb.a
    i32 3, label %bb.n
    i32 2, label %bb.u
    i32 0, label %bb.ab
  ]

bb.g:                                             ; preds = %.split.us.i
  store <16 x i32> %i.mp, ptr %.011551356.us.i, align 64, !tbaa !85
  br i1 %i.lh, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.mz = getelementptr inbounds nuw i8, ptr %.011551356.us.i, i64 64
  store <16 x i32> %i.ms, ptr %i.mz, align 64, !tbaa !85
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  br i1 %i.lj, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.na = getelementptr inbounds nuw i8, ptr %.011551356.us.i, i64 128
  store <16 x i32> %i.mv, ptr %i.na, align 64, !tbaa !85
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  br i1 %i.ll, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.nb = getelementptr inbounds nuw i8, ptr %.011551356.us.i, i64 192
  store <16 x i32> %i.my, ptr %i.nb, align 64, !tbaa !85
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  switch i32 %i.ct, label %bb.ah [
    i32 8, label %bb.n
    i32 4, label %bb.u
    i32 1, label %bb.ab
  ]

bb.n:                                             ; preds = %bb.m, %.split.us.i
  %i.nc = getelementptr inbounds nuw [4 x i8], ptr %.011551356.us.i, i64 %i.cw ; 4 uses
  %i.nd = shufflevector <16 x i32> %i.mp, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  store <8 x i32> %i.nd, ptr %.011551356.us.i, align 32, !tbaa !85
  %i.ne = shufflevector <16 x i32> %i.mp, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  store <8 x i32> %i.ne, ptr %i.nc, align 32, !tbaa !85
  br i1 %i.lh, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.nf = getelementptr inbounds nuw i8, ptr %.011551356.us.i, i64 32
  %i.ng = shufflevector <16 x i32> %i.ms, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  store <8 x i32> %i.ng, ptr %i.nf, align 32, !tbaa !85
  %i.nh = getelementptr inbounds nuw i8, ptr %i.nc, i64 32
  %i.ni = shufflevector <16 x i32> %i.ms, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  store <8 x i32> %i.ni, ptr %i.nh, align 32, !tbaa !85
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  br i1 %i.lj, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.nj = getelementptr inbounds nuw i8, ptr %.011551356.us.i, i64 64
  %i.nk = shufflevector <16 x i32> %i.mv, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  store <8 x i32> %i.nk, ptr %i.nj, align 32, !tbaa !85
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nc, i64 64
  %i.nm = shufflevector <16 x i32> %i.mv, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  store <8 x i32> %i.nm, ptr %i.nl, align 32, !tbaa !85
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  br i1 %i.ll, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.nn = getelementptr inbounds nuw i8, ptr %.011551356.us.i, i64 96
  %i.no = shufflevector <16 x i32> %i.my, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  store <8 x i32> %i.no, ptr %i.nn, align 32, !tbaa !85
  %i.np = getelementptr inbounds nuw i8, ptr %i.nc, i64 96
  %i.nq = shufflevector <16 x i32> %i.my, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  store <8 x i32> %i.nq, ptr %i.np, align 32, !tbaa !85
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  switch i32 %i.ct, label %bb.ah [
    i32 4, label %bb.u
    i32 1, label %bb.ab
  ]

bb.u:                                             ; preds = %bb.t, %bb.m, %.split.us.i
  %i.nr = getelementptr inbounds nuw [4 x i8], ptr %.011551356.us.i, i64 %i.cw ; 4 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %.011551356.us.i, i64 %.idx.i ; 4 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %.011551356.us.i, i64 %.idx1218.i ; 4 uses
  %i.nu = shufflevector <16 x i32> %i.mp, <16 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i32> %i.nu, ptr %.011551356.us.i, align 16, !tbaa !85
  %i.nv = shufflevector <16 x i32> %i.mp, <16 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x i32> %i.nv, ptr %i.nr, align 16, !tbaa !85
  %i.nw = shufflevector <16 x i32> %i.mp, <16 x i32> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11>
  store <4 x i32> %i.nw, ptr %i.ns, align 16, !tbaa !85
  %i.nx = shufflevector <16 x i32> %i.mp, <16 x i32> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15>
  store <4 x i32> %i.nx, ptr %i.nt, align 16, !tbaa !85
  br i1 %i.lh, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ny = getelementptr inbounds nuw i8, ptr %.011551356.us.i, i64 16
  %i.nz = shufflevector <16 x i32> %i.ms, <16 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i32> %i.nz, ptr %i.ny, align 16, !tbaa !85
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nr, i64 16
  %i.ob = shufflevector <16 x i32> %i.ms, <16 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x i32> %i.ob, ptr %i.oa, align 16, !tbaa !85
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ns, i64 16
  %i.od = shufflevector <16 x i32> %i.ms, <16 x i32> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11>
  store <4 x i32> %i.od, ptr %i.oc, align 16, !tbaa !85
  %i.oe = getelementptr inbounds nuw i8, ptr %i.nt, i64 16
  %i.of = shufflevector <16 x i32> %i.ms, <16 x i32> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15>
  store <4 x i32> %i.of, ptr %i.oe, align 16, !tbaa !85
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  br i1 %i.lj, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.og = getelementptr inbounds nuw i8, ptr %.011551356.us.i, i64 32
  %i.oh = shufflevector <16 x i32> %i.mv, <16 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i32> %i.oh, ptr %i.og, align 16, !tbaa !85
  %i.oi = getelementptr inbounds nuw i8, ptr %i.nr, i64 32
  %i.oj = shufflevector <16 x i32> %i.mv, <16 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x i32> %i.oj, ptr %i.oi, align 16, !tbaa !85
  %i.ok = getelementptr inbounds nuw i8, ptr %i.ns, i64 32
  %i.ol = shufflevector <16 x i32> %i.mv, <16 x i32> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11>
  store <4 x i32> %i.ol, ptr %i.ok, align 16, !tbaa !85
  %i.om = getelementptr inbounds nuw i8, ptr %i.nt, i64 32
  %i.on = shufflevector <16 x i32> %i.mv, <16 x i32> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15>
  store <4 x i32> %i.on, ptr %i.om, align 16, !tbaa !85
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  br i1 %i.ll, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.oo = getelementptr inbounds nuw i8, ptr %.011551356.us.i, i64 48
  %i.op = shufflevector <16 x i32> %i.my, <16 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i32> %i.op, ptr %i.oo, align 16, !tbaa !85
  %i.oq = getelementptr inbounds nuw i8, ptr %i.nr, i64 48
  %i.or = shufflevector <16 x i32> %i.my, <16 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x i32> %i.or, ptr %i.oq, align 16, !tbaa !85
  %i.os = getelementptr inbounds nuw i8, ptr %i.ns, i64 48
  %i.ot = shufflevector <16 x i32> %i.my, <16 x i32> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11>
  store <4 x i32> %i.ot, ptr %i.os, align 16, !tbaa !85
  %i.ou = getelementptr inbounds nuw i8, ptr %i.nt, i64 48
  %i.ov = shufflevector <16 x i32> %i.my, <16 x i32> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15>
  store <4 x i32> %i.ov, ptr %i.ou, align 16, !tbaa !85
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  br i1 %i.dt, label %bb.ab, label %bb.ah

bb.ab:                                            ; preds = %bb.aa, %bb.t, %bb.m, %.split.us.i
  call void @llvm.x86.avx512.mask.scatter.dpi.512(ptr %.011551356.us.i, <16 x i1> splat (i1 true), <16 x i32> %i.dx, <16 x i32> %i.mp, i32 4)
  br i1 %i.lh, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ow = getelementptr inbounds nuw i8, ptr %.011551356.us.i, i64 4
  call void @llvm.x86.avx512.mask.scatter.dpi.512(ptr nonnull %i.ow, <16 x i1> splat (i1 true), <16 x i32> %i.dx, <16 x i32> %i.ms, i32 4)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  br i1 %i.lj, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.ox = getelementptr inbounds nuw i8, ptr %.011551356.us.i, i64 8
  call void @llvm.x86.avx512.mask.scatter.dpi.512(ptr nonnull %i.ox, <16 x i1> splat (i1 true), <16 x i32> %i.dx, <16 x i32> %i.mv, i32 4)
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  br i1 %i.ll, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.oy = getelementptr inbounds nuw i8, ptr %.011551356.us.i, i64 12
  call void @llvm.x86.avx512.mask.scatter.dpi.512(ptr nonnull %i.oy, <16 x i1> splat (i1 true), <16 x i32> %i.dx, <16 x i32> %i.my, i32 4)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %bb.aa, %bb.t, %bb.m, %.split.us.i, %bb.f
  %i.oz = getelementptr inbounds [4 x i8], ptr %.011551356.us.i, i64 %i.dz
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.e
  %.11156.us.i = phi ptr [ %.011551356.us.i, %bb.e ], [ %i.oz, %bb.ah ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 4
  br i1 %exitcond.not.i, label %bb.aj, label %bb.e, !llvm.loop !2040

bb.aj:                                            ; preds = %bb.ai
  %indvars.iv.next1680.i = add nuw nsw i64 %indvars.iv1679.i, 1 ; 2 uses
  %exitcond1682.not.i = icmp eq i64 %indvars.iv.next1680.i, %wide.trip.count.i
  br i1 %exitcond1682.not.i, label %._crit_edge.us.i, label %.preheader1338.us.i, !llvm.loop !2041

._crit_edge.us.i:                                 ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %indvars.iv.next1684.i = add nuw nsw i64 %indvars.iv1683.i, 16 ; 3 uses
  %i.pa = or disjoint i64 %indvars.iv.next1684.i, 15
  %i.pb = icmp samesign ult i64 %i.pa, %i.cg
  br i1 %i.pb, label %.lr.ph.us.i, label %.preheader1337.loopexit.i, !llvm.loop !2042

.preheader1337.loopexit.i:                        ; preds = %._crit_edge.us.i
  %i.pc = trunc nsw i64 %indvars.iv.next1684.i to i32
  br label %.preheader1337.i

.preheader1337.i:                                 ; preds = %.lr.ph1361.i, %.preheader1337.loopexit.i, %._crit_edge
  %.01120.lcssa.i = phi i32 [ 0, %._crit_edge ], [ %i.pc, %.preheader1337.loopexit.i ], [ %i.cf, %.lr.ph1361.i ] ; 5 uses
  %i.pd = or disjoint i32 %.01120.lcssa.i, 7
  %i.pe = icmp slt i32 %i.pd, %.sroa.speculated118
  br i1 %i.pe, label %.lr.ph1408.i, label %.preheader1335.i

.lr.ph1408.i:                                     ; preds = %.preheader1337.i
  %i.pf = icmp sgt i32 %.sroa.speculated114, 0
  %i.pg = shl nuw nsw i32 %.sroa.speculated114, 3
  %i.ph = zext nneg i32 %i.pg to i64
  %i.pi = shl nuw nsw i32 %.sroa.speculated114, 4
  %i.pj = zext nneg i32 %i.pi to i64
  %i.pk = mul nuw nsw i32 %.sroa.speculated114, 24
  %i.pl = zext nneg i32 %i.pk to i64
  %i.pm = shl nuw nsw i32 %.sroa.speculated114, 5
  %i.pn = zext nneg i32 %i.pm to i64
  %i.po = mul nuw nsw i32 %.sroa.speculated114, 40
  %i.pp = zext nneg i32 %i.po to i64
  %i.pq = mul nuw nsw i32 %.sroa.speculated114, 48
  %i.pr = zext nneg i32 %i.pq to i64              ; 30 uses
  %i.ps = trunc i64 %i.cw to i32
  %i.pt = insertelement <8 x i32> poison, i32 %i.ps, i64 0
  %i.pu = shufflevector <8 x i32> %i.pt, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.pv = mul <8 x i32> %i.pu, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 16 uses
  %i.pw = mul nsw i32 %i.ct, %i.cz
  %i.px = sext i32 %i.pw to i64                   ; 3 uses
  br i1 %i.pf, label %.lr.ph.us1411.preheader.i, label %.lr.ph1408.split.preheader.i

.lr.ph1408.split.preheader.i:                     ; preds = %.lr.ph1408.i
  %i.py = sub i32 %i.ch, %.01120.lcssa.i
  %i.pz = and i32 %i.py, -8
  %i.qa = add i32 %.01120.lcssa.i, 8
  %i.qb = add i32 %i.qa, %i.pz
  br label %.preheader1335.i

.lr.ph.us1411.preheader.i:                        ; preds = %.lr.ph1408.i
  %i.qc = sext i32 %.01120.lcssa.i to i64
  %wide.trip.count1697.i = zext nneg i32 %.sroa.speculated114 to i64
  %i.qd = extractelement <4 x i32> %i.dc, i64 0
  %i.qe = extractelement <2 x i32> %i.cx, i64 1   ; 3 uses
  %i.qf = shufflevector <4 x i32> %i.dc, <4 x i32> <i32 1, i32 1, i32 1, i32 poison>, <4 x i32> <i32 4, i32 5, i32 6, i32 0>
  %i.qg = shufflevector <2 x i32> %i.cx, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  br label %.lr.ph.us1411.i

.lr.ph.us1411.i:                                  ; preds = %._crit_edge.us1412.i, %.lr.ph.us1411.preheader.i
  %indvars.iv1699.i = phi i64 [ %i.qc, %.lr.ph.us1411.preheader.i ], [ %indvars.iv.next1700.i, %._crit_edge.us1412.i ] ; 2 uses
  %i.qh = trunc nsw i64 %indvars.iv1699.i to i32  ; 2 uses
  %factor.op.mul.reass.us1410.i = mul i32 %factor.op.mul1358.i, %i.qh
  %i.qi = sext i32 %factor.op.mul.reass.us1410.i to i64
  %i.qj = add i32 %i.bq, %i.qh
  %i.qk = sdiv i32 %i.qj, %i.ct
  %i.ql = sext i32 %i.qk to i64
  %i.qm = getelementptr inbounds [4 x i8], ptr %i.by, i64 %i.qi
  br label %.preheader1336.us.i

.preheader1336.us.i:                              ; preds = %bb.do, %.lr.ph.us1411.i
  %indvars.iv1694.i = phi i64 [ 0, %.lr.ph.us1411.i ], [ %indvars.iv.next1695.i, %bb.do ] ; 3 uses
  %.idx1806.i = shl nuw nsw i64 %indvars.iv1694.i, 5
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qm, i64 %.idx1806.i ; 7 uses
  %i.qo = getelementptr inbounds nuw [4 x i8], ptr %i.qn, i64 %i.ph ; 2 uses
  %i.qp = getelementptr inbounds nuw [4 x i8], ptr %i.qn, i64 %i.pj ; 2 uses
  %i.qq = getelementptr inbounds nuw [4 x i8], ptr %i.qn, i64 %i.pl ; 2 uses
  %i.qr = getelementptr inbounds nuw [4 x i8], ptr %i.qn, i64 %i.pn ; 2 uses
  %i.qs = getelementptr inbounds nuw [4 x i8], ptr %i.qn, i64 %i.pp ; 2 uses
  %i.qt = load <8 x i32>, ptr %i.qo, align 32, !tbaa !85 ; 2 uses
  %i.qu = load <8 x i32>, ptr %i.qp, align 32, !tbaa !85 ; 2 uses
  %i.qv = load <8 x i32>, ptr %i.qq, align 32, !tbaa !85 ; 2 uses
  %i.qw = load <8 x i32>, ptr %i.qr, align 32, !tbaa !85 ; 2 uses
  %i.qx = load <8 x i32>, ptr %i.qs, align 32, !tbaa !85
  %i.qy = add <8 x i32> %i.qu, %i.qt              ; 2 uses
  %i.qz = add <8 x i32> %i.qw, %i.qv              ; 2 uses
  %i.ra = sub <8 x i32> %i.qt, %i.qu              ; 2 uses
  %i.rb = sub <8 x i32> %i.qv, %i.qw              ; 2 uses
  %i.rc = shl <8 x i32> %i.rb, splat (i32 1)
  %i.rd = add <8 x i32> %i.rc, %i.ra
  %i.re = shl <8 x i32> %i.qz, splat (i32 2)
  %i.rf = add <8 x i32> %i.re, %i.qy
  %i.rg = shl <8 x i32> %i.rb, splat (i32 3)
  %i.rh = add <8 x i32> %i.rg, %i.ra
  %i.ri = shl <8 x i32> %i.qx, splat (i32 2)
  %i.rj = add <8 x i32> %i.rh, %i.ri
  %i.rk = getelementptr inbounds nuw [4 x i8], ptr %i.qo, i64 %i.pr ; 2 uses
  %i.rl = getelementptr inbounds nuw [4 x i8], ptr %i.qp, i64 %i.pr ; 2 uses
  %i.rm = getelementptr inbounds nuw [4 x i8], ptr %i.qq, i64 %i.pr ; 2 uses
  %i.rn = getelementptr inbounds nuw [4 x i8], ptr %i.qr, i64 %i.pr ; 2 uses
  %i.ro = getelementptr inbounds nuw [4 x i8], ptr %i.qs, i64 %i.pr ; 2 uses
  %i.rp = load <8 x i32>, ptr %i.rk, align 32, !tbaa !85 ; 2 uses
  %i.rq = load <8 x i32>, ptr %i.rl, align 32, !tbaa !85 ; 2 uses
  %i.rr = load <8 x i32>, ptr %i.rm, align 32, !tbaa !85 ; 2 uses
  %i.rs = load <8 x i32>, ptr %i.rn, align 32, !tbaa !85 ; 2 uses
  %i.rt = load <8 x i32>, ptr %i.ro, align 32, !tbaa !85
  %i.ru = add <8 x i32> %i.rq, %i.rp              ; 2 uses
  %i.rv = add <8 x i32> %i.rs, %i.rr              ; 2 uses
  %i.rw = sub <8 x i32> %i.rp, %i.rq              ; 2 uses
  %i.rx = sub <8 x i32> %i.rr, %i.rs              ; 2 uses
  %i.ry = shl <8 x i32> %i.rx, splat (i32 1)
  %i.rz = add <8 x i32> %i.ry, %i.rw              ; 2 uses
  %i.sa = shl <8 x i32> %i.rv, splat (i32 2)
  %i.sb = add <8 x i32> %i.sa, %i.ru              ; 2 uses
  %i.sc = shl <8 x i32> %i.rx, splat (i32 3)
  %i.sd = add <8 x i32> %i.sc, %i.rw
  %i.se = shl <8 x i32> %i.rt, splat (i32 2)
  %i.sf = add <8 x i32> %i.sd, %i.se              ; 2 uses
  %i.sg = getelementptr inbounds nuw [4 x i8], ptr %i.rk, i64 %i.pr ; 2 uses
  %i.sh = getelementptr inbounds nuw [4 x i8], ptr %i.rl, i64 %i.pr ; 2 uses
  %i.si = getelementptr inbounds nuw [4 x i8], ptr %i.rm, i64 %i.pr ; 2 uses
  %i.sj = getelementptr inbounds nuw [4 x i8], ptr %i.rn, i64 %i.pr ; 2 uses
  %i.sk = getelementptr inbounds nuw [4 x i8], ptr %i.ro, i64 %i.pr ; 2 uses
  %i.sl = load <8 x i32>, ptr %i.sg, align 32, !tbaa !85 ; 2 uses
  %i.sm = load <8 x i32>, ptr %i.sh, align 32, !tbaa !85 ; 2 uses
  %i.sn = load <8 x i32>, ptr %i.si, align 32, !tbaa !85 ; 2 uses
  %i.so = load <8 x i32>, ptr %i.sj, align 32, !tbaa !85 ; 2 uses
  %i.sp = load <8 x i32>, ptr %i.sk, align 32, !tbaa !85
  %i.sq = add <8 x i32> %i.sm, %i.sl              ; 2 uses
  %i.sr = add <8 x i32> %i.so, %i.sn              ; 2 uses
  %i.ss = sub <8 x i32> %i.sl, %i.sm              ; 2 uses
  %i.st = sub <8 x i32> %i.sn, %i.so              ; 2 uses
  %i.su = shl <8 x i32> %i.st, splat (i32 1)
  %i.sv = add <8 x i32> %i.su, %i.ss              ; 2 uses
  %i.sw = shl <8 x i32> %i.sr, splat (i32 2)
  %i.sx = add <8 x i32> %i.sw, %i.sq              ; 2 uses
  %i.sy = shl <8 x i32> %i.st, splat (i32 3)
  %i.sz = add <8 x i32> %i.sy, %i.ss
  %i.ta = shl <8 x i32> %i.sp, splat (i32 2)
  %i.tb = add <8 x i32> %i.sz, %i.ta              ; 2 uses
  %i.tc = getelementptr inbounds nuw [4 x i8], ptr %i.sg, i64 %i.pr ; 2 uses
  %i.td = getelementptr inbounds nuw [4 x i8], ptr %i.sh, i64 %i.pr ; 2 uses
  %i.te = getelementptr inbounds nuw [4 x i8], ptr %i.si, i64 %i.pr ; 2 uses
  %i.tf = getelementptr inbounds nuw [4 x i8], ptr %i.sj, i64 %i.pr ; 2 uses
  %i.tg = getelementptr inbounds nuw [4 x i8], ptr %i.sk, i64 %i.pr ; 2 uses
  %i.th = load <8 x i32>, ptr %i.tc, align 32, !tbaa !85 ; 2 uses
  %i.ti = load <8 x i32>, ptr %i.td, align 32, !tbaa !85 ; 2 uses
  %i.tj = load <8 x i32>, ptr %i.te, align 32, !tbaa !85 ; 2 uses
  %i.tk = load <8 x i32>, ptr %i.tf, align 32, !tbaa !85 ; 2 uses
  %i.tl = load <8 x i32>, ptr %i.tg, align 32, !tbaa !85
  %i.tm = add <8 x i32> %i.ti, %i.th              ; 2 uses
  %i.tn = add <8 x i32> %i.tk, %i.tj              ; 2 uses
  %i.to = sub <8 x i32> %i.th, %i.ti              ; 2 uses
  %i.tp = sub <8 x i32> %i.tj, %i.tk              ; 2 uses
  %i.tq = shl <8 x i32> %i.tp, splat (i32 1)
  %i.tr = add <8 x i32> %i.tq, %i.to              ; 2 uses
  %i.ts = shl <8 x i32> %i.tn, splat (i32 2)
  %i.tt = add <8 x i32> %i.ts, %i.tm              ; 2 uses
  %i.tu = shl <8 x i32> %i.tp, splat (i32 3)
  %i.tv = add <8 x i32> %i.tu, %i.to
  %i.tw = shl <8 x i32> %i.tl, splat (i32 2)
  %i.tx = add <8 x i32> %i.tv, %i.tw              ; 2 uses
  %i.ty = getelementptr inbounds nuw [4 x i8], ptr %i.tc, i64 %i.pr ; 2 uses
  %i.tz = getelementptr inbounds nuw [4 x i8], ptr %i.td, i64 %i.pr ; 2 uses
  %i.ua = getelementptr inbounds nuw [4 x i8], ptr %i.te, i64 %i.pr ; 2 uses
  %i.ub = getelementptr inbounds nuw [4 x i8], ptr %i.tf, i64 %i.pr ; 2 uses
  %i.uc = getelementptr inbounds nuw [4 x i8], ptr %i.tg, i64 %i.pr ; 2 uses
  %i.ud = load <8 x i32>, ptr %i.ty, align 32, !tbaa !85 ; 2 uses
  %i.ue = load <8 x i32>, ptr %i.tz, align 32, !tbaa !85 ; 2 uses
  %i.uf = load <8 x i32>, ptr %i.ua, align 32, !tbaa !85 ; 2 uses
  %i.ug = load <8 x i32>, ptr %i.ub, align 32, !tbaa !85 ; 2 uses
  %i.uh = load <8 x i32>, ptr %i.uc, align 32, !tbaa !85
  %i.ui = add <8 x i32> %i.ue, %i.ud              ; 2 uses
  %i.uj = add <8 x i32> %i.ug, %i.uf              ; 2 uses
  %i.uk = sub <8 x i32> %i.ud, %i.ue              ; 2 uses
  %i.ul = sub <8 x i32> %i.uf, %i.ug              ; 2 uses
  %i.um = shl <8 x i32> %i.ul, splat (i32 1)
  %i.un = add <8 x i32> %i.um, %i.uk              ; 2 uses
  %i.uo = shl <8 x i32> %i.uj, splat (i32 2)
  %i.up = add <8 x i32> %i.uo, %i.ui              ; 2 uses
  %i.uq = shl <8 x i32> %i.ul, splat (i32 3)
  %i.ur = add <8 x i32> %i.uq, %i.uk
  %i.us = shl <8 x i32> %i.uh, splat (i32 2)
  %i.ut = add <8 x i32> %i.ur, %i.us              ; 2 uses
  %i.uu = getelementptr inbounds nuw [4 x i8], ptr %i.ty, i64 %i.pr
  %i.uv = getelementptr inbounds nuw [4 x i8], ptr %i.tz, i64 %i.pr
  %i.uw = getelementptr inbounds nuw [4 x i8], ptr %i.ua, i64 %i.pr
  %i.ux = getelementptr inbounds nuw [4 x i8], ptr %i.ub, i64 %i.pr
  %i.uy = getelementptr inbounds nuw [4 x i8], ptr %i.uc, i64 %i.pr
  %i.uz = trunc i64 %indvars.iv1694.i to i32
  %i.va = add i32 %.044137, %i.uz                 ; 2 uses
  %i.vb = load <8 x i32>, ptr %i.uu, align 32, !tbaa !85 ; 2 uses
  %i.vc = load <8 x i32>, ptr %i.uv, align 32, !tbaa !85 ; 2 uses
  %i.vd = load <8 x i32>, ptr %i.uw, align 32, !tbaa !85 ; 2 uses
  %i.ve = load <8 x i32>, ptr %i.ux, align 32, !tbaa !85 ; 2 uses
  %i.vf = load <8 x i32>, ptr %i.uy, align 32, !tbaa !85
  %i.vg = add <8 x i32> %i.vc, %i.vb              ; 2 uses
  %i.vh = add <8 x i32> %i.ve, %i.vd              ; 2 uses
  %i.vi = sub <8 x i32> %i.vb, %i.vc
  %i.vj = sub <8 x i32> %i.vd, %i.ve              ; 2 uses
  %i.vk = shl <8 x i32> %i.vj, splat (i32 3)
  %i.vl = shl <8 x i32> %i.vi, splat (i32 2)      ; 2 uses
  %i.vm = shl <8 x i32> %i.vh, splat (i32 4)
  %i.vn = shl <8 x i32> %i.vg, splat (i32 2)
  %i.vo = shl <8 x i32> %i.vf, splat (i32 4)
  %i.vp = shl <8 x i32> %i.vj, splat (i32 5)
  %i.vq = load i32, ptr %i.ao, align 4, !tbaa !74, !noalias !2071
  %i.vr = load ptr, ptr %12, align 8, !tbaa !22, !noalias !2071
  %i.vs = load i64, ptr %i.aq, align 8, !tbaa !23, !noalias !2071
  %i.vt = mul i64 %i.vs, %i.ql
  %i.vu = load i64, ptr %i.ay, align 8, !tbaa !64, !noalias !2071 ; 2 uses
  %i.vv = mul i64 %i.vt, %i.vu
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vr, i64 %i.vv
end_hunk_9
begin_hunk_10_@_ZN4ncnnL25conv3x3s1_winograd23_int8ERKNS_3MatERS0_S2_iRKNS_6OptionE.omp_outlined.13:bb.a
  store <16 x i32> %i.fx, ptr %i.fb, align 64, !tbaa !85
  br i1 %i.fd, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fb, i64 64
  store <16 x i32> %i.fy, ptr %i.fz, align 64, !tbaa !85
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  switch i32 %i.by, label %bb.q [
    i32 8, label %bb.i
    i32 4, label %bb.l
    i32 1, label %bb.o
  ]

bb.i:                                             ; preds = %bb.h, %.split.us.i
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %i.cb ; 2 uses
  %i.gb = shufflevector <16 x i32> %i.fx, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  store <8 x i32> %i.gb, ptr %i.fb, align 32, !tbaa !85
  %i.gc = shufflevector <16 x i32> %i.fx, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  store <8 x i32> %i.gc, ptr %i.ga, align 32, !tbaa !85
  br i1 %i.fd, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fb, i64 32
  %i.ge = shufflevector <16 x i32> %i.fy, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  store <8 x i32> %i.ge, ptr %i.gd, align 32, !tbaa !85
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ga, i64 32
  %i.gg = shufflevector <16 x i32> %i.fy, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  store <8 x i32> %i.gg, ptr %i.gf, align 32, !tbaa !85
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  switch i32 %i.by, label %bb.q [
    i32 4, label %bb.l
    i32 1, label %bb.o
  ]

bb.l:                                             ; preds = %bb.k, %bb.h, %.split.us.i
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %i.cb ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fb, i64 %.idx.i ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fb, i64 %.idx537.i ; 2 uses
  %i.gk = shufflevector <16 x i32> %i.fx, <16 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i32> %i.gk, ptr %i.fb, align 16, !tbaa !85
  %i.gl = shufflevector <16 x i32> %i.fx, <16 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x i32> %i.gl, ptr %i.gh, align 16, !tbaa !85
  %i.gm = shufflevector <16 x i32> %i.fx, <16 x i32> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11>
  store <4 x i32> %i.gm, ptr %i.gi, align 16, !tbaa !85
  %i.gn = shufflevector <16 x i32> %i.fx, <16 x i32> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15>
  store <4 x i32> %i.gn, ptr %i.gj, align 16, !tbaa !85
  br i1 %i.fd, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.go = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  %i.gp = shufflevector <16 x i32> %i.fy, <16 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i32> %i.gp, ptr %i.go, align 16, !tbaa !85
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gh, i64 16
  %i.gr = shufflevector <16 x i32> %i.fy, <16 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x i32> %i.gr, ptr %i.gq, align 16, !tbaa !85
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gi, i64 16
  %i.gt = shufflevector <16 x i32> %i.fy, <16 x i32> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11>
  store <4 x i32> %i.gt, ptr %i.gs, align 16, !tbaa !85
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gj, i64 16
  %i.gv = shufflevector <16 x i32> %i.fy, <16 x i32> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15>
  store <4 x i32> %i.gv, ptr %i.gu, align 16, !tbaa !85
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  br i1 %i.cp, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n, %bb.k, %bb.h, %.split.us.i
  call void @llvm.x86.avx512.mask.scatter.dpi.512(ptr %i.fb, <16 x i1> splat (i1 true), <16 x i32> %i.ct, <16 x i32> %i.fx, i32 4)
  br i1 %i.fd, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.gw = getelementptr inbounds nuw i8, ptr %i.fb, i64 4
  call void @llvm.x86.avx512.mask.scatter.dpi.512(ptr nonnull %i.gw, <16 x i1> splat (i1 true), <16 x i32> %i.ct, <16 x i32> %i.fy, i32 4)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n, %bb.k, %bb.h, %.split.us.i, %bb.e
  %i.gx = getelementptr inbounds [4 x i8], ptr %i.fb, i64 %i.cv
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZN4ncnn3MatD2Ev.exit541.us.i
  %.1525.us.i = phi ptr [ %i.fb, %_ZN4ncnn3MatD2Ev.exit541.us.i ], [ %i.gx, %bb.q ] ; 12 uses
  %i.gy = or disjoint i32 %i.et, 1
  %.not536.us.1.i = icmp slt i32 %i.gy, %i.bx
  br i1 %.not536.us.1.i, label %bb.s, label %bb.ae

bb.s:                                             ; preds = %bb.r
  %i.gz = add <16 x i32> %i.dk, %i.ds
  %i.ha = add <16 x i32> %i.gz, %i.ea
  %i.hb = add <16 x i32> %i.ds, %i.ee
  %i.hc = add <16 x i32> %i.ea, %i.ef
  %i.hd = sub <16 x i32> %i.hb, %i.hc
  %i.he = add <16 x i32> %i.hd, %i.eg
  %i.hf = ashr <16 x i32> %i.ha, splat (i32 2)    ; 8 uses
  %i.hg = ashr <16 x i32> %i.he, splat (i32 2)    ; 8 uses
  br i1 %i.cn, label %.split.us.1.i, label %bb.ae

.split.us.1.i:                                    ; preds = %bb.s
  switch i32 %i.co, label %bb.ae [
    i32 4, label %bb.t
    i32 3, label %bb.w
    i32 2, label %bb.z
    i32 0, label %bb.ac
  ]

bb.t:                                             ; preds = %.split.us.1.i
  store <16 x i32> %i.hf, ptr %.1525.us.i, align 64, !tbaa !85
  br i1 %i.fd, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.hh = getelementptr inbounds nuw i8, ptr %.1525.us.i, i64 64
  store <16 x i32> %i.hg, ptr %i.hh, align 64, !tbaa !85
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  switch i32 %i.by, label %bb.ae [
    i32 8, label %bb.w
    i32 4, label %bb.z
    i32 1, label %bb.ac
  ]

bb.w:                                             ; preds = %bb.v, %.split.us.1.i
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %.1525.us.i, i64 %i.cb ; 2 uses
  %i.hj = shufflevector <16 x i32> %i.hf, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  store <8 x i32> %i.hj, ptr %.1525.us.i, align 32, !tbaa !85
  %i.hk = shufflevector <16 x i32> %i.hf, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  store <8 x i32> %i.hk, ptr %i.hi, align 32, !tbaa !85
  br i1 %i.fd, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.hl = getelementptr inbounds nuw i8, ptr %.1525.us.i, i64 32
  %i.hm = shufflevector <16 x i32> %i.hg, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  store <8 x i32> %i.hm, ptr %i.hl, align 32, !tbaa !85
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hi, i64 32
  %i.ho = shufflevector <16 x i32> %i.hg, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  store <8 x i32> %i.ho, ptr %i.hn, align 32, !tbaa !85
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  switch i32 %i.by, label %bb.ae [
    i32 4, label %bb.z
    i32 1, label %bb.ac
  ]

bb.z:                                             ; preds = %bb.y, %bb.v, %.split.us.1.i
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %.1525.us.i, i64 %i.cb ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %.1525.us.i, i64 %.idx.i ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %.1525.us.i, i64 %.idx537.i ; 2 uses
  %i.hs = shufflevector <16 x i32> %i.hf, <16 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i32> %i.hs, ptr %.1525.us.i, align 16, !tbaa !85
  %i.ht = shufflevector <16 x i32> %i.hf, <16 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x i32> %i.ht, ptr %i.hp, align 16, !tbaa !85
  %i.hu = shufflevector <16 x i32> %i.hf, <16 x i32> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11>
  store <4 x i32> %i.hu, ptr %i.hq, align 16, !tbaa !85
  %i.hv = shufflevector <16 x i32> %i.hf, <16 x i32> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15>
  store <4 x i32> %i.hv, ptr %i.hr, align 16, !tbaa !85
  br i1 %i.fd, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.hw = getelementptr inbounds nuw i8, ptr %.1525.us.i, i64 16
  %i.hx = shufflevector <16 x i32> %i.hg, <16 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i32> %i.hx, ptr %i.hw, align 16, !tbaa !85
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hp, i64 16
  %i.hz = shufflevector <16 x i32> %i.hg, <16 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x i32> %i.hz, ptr %i.hy, align 16, !tbaa !85
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hq, i64 16
  %i.ib = shufflevector <16 x i32> %i.hg, <16 x i32> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11>
  store <4 x i32> %i.ib, ptr %i.ia, align 16, !tbaa !85
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hr, i64 16
  %i.id = shufflevector <16 x i32> %i.hg, <16 x i32> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15>
  store <4 x i32> %i.id, ptr %i.ic, align 16, !tbaa !85
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  br i1 %i.cp, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab, %bb.y, %bb.v, %.split.us.1.i
  call void @llvm.x86.avx512.mask.scatter.dpi.512(ptr %.1525.us.i, <16 x i1> splat (i1 true), <16 x i32> %i.ct, <16 x i32> %i.hf, i32 4)
  br i1 %i.fd, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ie = getelementptr inbounds nuw i8, ptr %.1525.us.i, i64 4
  call void @llvm.x86.avx512.mask.scatter.dpi.512(ptr nonnull %i.ie, <16 x i1> splat (i1 true), <16 x i32> %i.ct, <16 x i32> %i.hg, i32 4)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.y, %bb.v, %.split.us.1.i, %bb.s, %bb.r
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.us.i, label %_ZN4ncnn3MatD2Ev.exit541.us.i, !llvm.loop !2239

._crit_edge.us.i:                                 ; preds = %bb.ae
  %indvars.iv.next196.i = add nuw nsw i64 %indvars.iv195.i, 16 ; 3 uses
  %i.if = or disjoint i64 %indvars.iv.next196.i, 15
  %i.ig = icmp samesign ult i64 %i.if, %i.bj
  br i1 %i.ig, label %.lr.ph.us.i, label %.preheader93.loopexit.i, !llvm.loop !2240

.preheader93.loopexit.i:                          ; preds = %._crit_edge.us.i
  %i.ih = trunc nsw i64 %indvars.iv.next196.i to i32
  br label %.preheader93.i

.preheader93.i:                                   ; preds = %.lr.ph105.i, %.preheader93.loopexit.i, %._crit_edge
  %.0502.lcssa.i = phi i32 [ 0, %._crit_edge ], [ %i.ih, %.preheader93.loopexit.i ], [ %i.bi, %.lr.ph105.i ] ; 5 uses
  %i.ii = or disjoint i32 %.0502.lcssa.i, 7
  %i.ij = icmp slt i32 %i.ii, %.sroa.speculated119
  br i1 %i.ij, label %.lr.ph116.i, label %.preheader92.i

.lr.ph116.i:                                      ; preds = %.preheader93.i
  %i.ik = icmp sgt i32 %.sroa.speculated115, 0
  %i.il = shl nuw nsw i32 %.sroa.speculated115, 3
  %i.im = zext nneg i32 %i.il to i64
  %i.in = zext nneg i32 %factor.op.mul102.i to i64
  %i.io = mul nuw nsw i32 %.sroa.speculated115, 24
  %i.ip = zext nneg i32 %i.io to i64
  %i.iq = shl nuw nsw i32 %.sroa.speculated115, 5
  %i.ir = zext nneg i32 %i.iq to i64              ; 12 uses
  %i.is = trunc i64 %i.cb to i32
  %i.it = insertelement <8 x i32> poison, i32 %i.is, i64 0
  %i.iu = shufflevector <8 x i32> %i.it, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.iv = mul <8 x i32> %i.iu, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.iw = mul nsw i32 %i.by, %i.bw
  %i.ix = sext i32 %i.iw to i64
  br i1 %i.ik, label %.lr.ph.us119.preheader.i, label %.lr.ph116.split.preheader.i

.lr.ph116.split.preheader.i:                      ; preds = %.lr.ph116.i
  %i.iy = sub i32 %i.bk, %.0502.lcssa.i
  %i.iz = and i32 %i.iy, -8
  %i.ja = add i32 %.0502.lcssa.i, 8
  %i.jb = add i32 %i.ja, %i.iz
  br label %.preheader92.i

.lr.ph.us119.preheader.i:                         ; preds = %.lr.ph116.i
  %i.jc = sext i32 %.0502.lcssa.i to i64
  %wide.trip.count208.i = zext nneg i32 %.sroa.speculated115 to i64
  br label %.lr.ph.us119.i

.lr.ph.us119.i:                                   ; preds = %._crit_edge.us120.i, %.lr.ph.us119.preheader.i
  %indvars.iv210.i = phi i64 [ %i.jc, %.lr.ph.us119.preheader.i ], [ %indvars.iv.next211.i, %._crit_edge.us120.i ] ; 2 uses
  %i.jd = trunc nsw i64 %indvars.iv210.i to i32   ; 2 uses
  %factor.op.mul.reass.us118.i = mul i32 %factor.op.mul102.i, %i.jd
  %i.je = sext i32 %factor.op.mul.reass.us118.i to i64
  %i.jf = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.je
  %i.jg = add i32 %i.at, %i.jd
  %i.jh = sdiv i32 %i.jg, %i.by
  %i.ji = sext i32 %i.jh to i64
  br label %_ZN4ncnn3MatD2Ev.exit540.us.i

_ZN4ncnn3MatD2Ev.exit540.us.i:                    ; preds = %bb.av, %.lr.ph.us119.i
  %indvars.iv205.i = phi i64 [ 0, %.lr.ph.us119.i ], [ %indvars.iv.next206.i, %bb.av ] ; 3 uses
  %.idx303.i = shl nuw nsw i64 %indvars.iv205.i, 5
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jf, i64 %.idx303.i ; 5 uses
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %i.jj, i64 %i.im ; 2 uses
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.jj, i64 %i.in ; 2 uses
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.jj, i64 %i.ip ; 2 uses
  %i.jn = load <8 x i32>, ptr %i.jk, align 32, !tbaa !85 ; 2 uses
  %i.jo = load <8 x i32>, ptr %i.jl, align 32, !tbaa !85 ; 2 uses
  %i.jp = load <8 x i32>, ptr %i.jm, align 32, !tbaa !85
  %i.jq = sub <8 x i32> %i.jn, %i.jo
  %i.jr = add <8 x i32> %i.jq, %i.jp
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.jk, i64 %i.ir ; 2 uses
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %i.jl, i64 %i.ir ; 2 uses
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.jm, i64 %i.ir ; 2 uses
  %i.jv = load <8 x i32>, ptr %i.js, align 32, !tbaa !85 ; 2 uses
  %i.jw = load <8 x i32>, ptr %i.jt, align 32, !tbaa !85 ; 2 uses
  %i.jx = load <8 x i32>, ptr %i.ju, align 32, !tbaa !85
  %i.jy = sub <8 x i32> %i.jv, %i.jw
  %i.jz = add <8 x i32> %i.jy, %i.jx              ; 2 uses
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.ir ; 2 uses
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.jt, i64 %i.ir ; 2 uses
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %i.ju, i64 %i.ir ; 2 uses
  %i.kd = load <8 x i32>, ptr %i.ka, align 32, !tbaa !85 ; 2 uses
  %i.ke = load <8 x i32>, ptr %i.kb, align 32, !tbaa !85 ; 2 uses
  %i.kf = load <8 x i32>, ptr %i.kc, align 32, !tbaa !85
  %i.kg = sub <8 x i32> %i.kd, %i.ke
  %i.kh = add <8 x i32> %i.kg, %i.kf              ; 2 uses
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %i.ka, i64 %i.ir
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %i.kb, i64 %i.ir
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.kc, i64 %i.ir
  %i.kl = load <8 x i32>, ptr %i.ki, align 32, !tbaa !85 ; 2 uses
  %i.km = load <8 x i32>, ptr %i.kj, align 32, !tbaa !85 ; 2 uses
  %i.kn = load <8 x i32>, ptr %i.kk, align 32, !tbaa !85
  %i.ko = trunc i64 %indvars.iv205.i to i32
  %i.kp = add i32 %.044151, %i.ko                 ; 2 uses
  %i.kq = sdiv i32 %i.kp, %i.cd
  %i.kr = srem i32 %i.kp, %i.cd
  %i.ks = load i32, ptr %i.an, align 4, !tbaa !74, !noalias !2269
  %i.kt = load ptr, ptr %12, align 8, !tbaa !22, !noalias !2269
  %i.ku = load i64, ptr %i.aq, align 8, !tbaa !23, !noalias !2269
  %i.kv = mul i64 %i.ku, %i.ji
  %i.kw = load i64, ptr %i.ar, align 8, !tbaa !64, !noalias !2269 ; 2 uses
  %i.kx = mul i64 %i.kv, %i.kw
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kt, i64 %i.kx
  %i.kz = sext i32 %i.ks to i64
  %i.la = shl nsw i32 %i.kq, 1                    ; 3 uses
  %i.lb = sext i32 %i.la to i64
  %i.lc = mul nsw i64 %i.kz, %i.lb
  %i.ld = mul i64 %i.lc, %i.kw
  %i.le = getelementptr inbounds nuw i8, ptr %i.ky, i64 %i.ld
  %i.lf = shl nsw i32 %i.kr, 1                    ; 2 uses
  %i.lg = mul nsw i32 %i.lf, %i.by
  %i.lh = sext i32 %i.lg to i64
  %i.li = getelementptr inbounds [4 x i8], ptr %i.le, i64 %i.lh ; 9 uses
  %i.lj = or disjoint i32 %i.lf, 1
  %i.lk = icmp slt i32 %i.lj, %i.bw               ; 6 uses
  %.not535.us.i = icmp slt i32 %i.la, %i.bx
  br i1 %.not535.us.i, label %bb.af, label %bb.an

bb.af:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit540.us.i
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr %i.jj, i64 %i.ir ; 2 uses
  %i.lm = getelementptr inbounds nuw [4 x i8], ptr %i.ll, i64 %i.ir ; 2 uses
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr %i.lm, i64 %i.ir
  %i.lo = load <8 x i32>, ptr %i.ln, align 32, !tbaa !85
  %i.lp = load <8 x i32>, ptr %i.lm, align 32, !tbaa !85
  %i.lq = add <8 x i32> %i.ke, %i.kd
  %i.lr = add <8 x i32> %i.lq, %i.lp              ; 2 uses
  %i.ls = load <8 x i32>, ptr %i.ll, align 32, !tbaa !85
  %i.lt = add <8 x i32> %i.jw, %i.jv
  %i.lu = add <8 x i32> %i.lt, %i.ls              ; 2 uses
  %i.lv = load <8 x i32>, ptr %i.jj, align 32, !tbaa !85
  %i.lw = add <8 x i32> %i.jo, %i.jn
  %i.lx = add <8 x i32> %i.lw, %i.lv
  %i.ly = add <8 x i32> %i.lx, %i.lr
  %i.lz = add <8 x i32> %i.ly, %i.lu
  %i.ma = add <8 x i32> %i.km, %i.kl
  %i.mb = add <8 x i32> %i.ma, %i.lo
  %i.mc = sub <8 x i32> %i.mb, %i.lr
  %i.md = add <8 x i32> %i.mc, %i.lu
  %i.me = ashr <8 x i32> %i.lz, splat (i32 2)     ; 3 uses
  %i.mf = ashr <8 x i32> %i.md, splat (i32 2)     ; 3 uses
  %i.mg = bitcast <8 x i32> %i.mf to <4 x i64>    ; 2 uses
  switch i32 %i.by, label %bb.am [
    i32 8, label %bb.ak
    i32 4, label %bb.ai
    i32 1, label %bb.ag
  ]

bb.ag:                                            ; preds = %bb.af
  call void @llvm.x86.avx512.mask.scattersiv8.si(ptr %i.li, <8 x i1> splat (i1 true), <8 x i32> %i.iv, <8 x i32> %i.me, i32 4)
  br i1 %i.lk, label %bb.ah, label %bb.am

bb.ah:                                            ; preds = %bb.ag
  %i.mh = getelementptr inbounds nuw i8, ptr %i.li, i64 4
  call void @llvm.x86.avx512.mask.scattersiv8.si(ptr nonnull %i.mh, <8 x i1> splat (i1 true), <8 x i32> %i.iv, <8 x i32> %i.mf, i32 4)
  br label %bb.am

bb.ai:                                            ; preds = %bb.af
  %i.mi = bitcast <8 x i32> %i.me to <4 x i64>    ; 2 uses
  %i.mj = getelementptr inbounds nuw [4 x i8], ptr %i.li, i64 %i.cb ; 2 uses
  %i.mk = shufflevector <4 x i64> %i.mi, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.mk, ptr %i.li, align 16, !tbaa !85
  %i.ml = shufflevector <4 x i64> %i.mi, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %i.ml, ptr %i.mj, align 16, !tbaa !85
  br i1 %i.lk, label %bb.aj, label %bb.am

bb.aj:                                            ; preds = %bb.ai
  %i.mm = getelementptr inbounds nuw i8, ptr %i.li, i64 16
  %i.mn = shufflevector <4 x i64> %i.mg, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.mn, ptr %i.mm, align 16, !tbaa !85
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mj, i64 16
  %i.mp = shufflevector <4 x i64> %i.mg, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %i.mp, ptr %i.mo, align 16, !tbaa !85
  br label %bb.am

bb.ak:                                            ; preds = %bb.af
  store <8 x i32> %i.me, ptr %i.li, align 32, !tbaa !85
  br i1 %i.lk, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.mq = getelementptr inbounds nuw i8, ptr %i.li, i64 32
  store <8 x i32> %i.mf, ptr %i.mq, align 32, !tbaa !85
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af
  %i.mr = getelementptr inbounds [4 x i8], ptr %i.li, i64 %i.ix
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %_ZN4ncnn3MatD2Ev.exit540.us.i
  %.1512.us.i = phi ptr [ %i.li, %_ZN4ncnn3MatD2Ev.exit540.us.i ], [ %i.mr, %bb.am ] ; 7 uses
  %i.ms = or disjoint i32 %i.la, 1
  %.not535.us.1.i = icmp slt i32 %i.ms, %i.bx
  br i1 %.not535.us.1.i, label %bb.ao, label %bb.av

bb.ao:                                            ; preds = %bb.an
  %i.mt = add <8 x i32> %i.jr, %i.jz
  %i.mu = add <8 x i32> %i.mt, %i.kh
  %i.mv = add <8 x i32> %i.jz, %i.kl
  %i.mw = add <8 x i32> %i.kh, %i.km
  %i.mx = sub <8 x i32> %i.mv, %i.mw
  %i.my = add <8 x i32> %i.mx, %i.kn
  %i.mz = ashr <8 x i32> %i.mu, splat (i32 2)     ; 3 uses
  %i.na = ashr <8 x i32> %i.my, splat (i32 2)     ; 3 uses
  %i.nb = bitcast <8 x i32> %i.na to <4 x i64>    ; 2 uses
  switch i32 %i.by, label %bb.av [
    i32 8, label %bb.at
    i32 4, label %bb.ar
    i32 1, label %bb.ap
  ]

bb.ap:                                            ; preds = %bb.ao
end_hunk_10
begin_hunk_11_@_ZN4ncnnL28convolution_im2col_gemm_int8ERKNS_3MatERS0_S2_iiiiiiiRKNS_6OptionE.omp_outlined:bb.a
  store <2 x i64> %i.jh, ptr %i.jo, align 16, !tbaa !85
  %i.jp = getelementptr inbounds nuw i8, ptr %.1355168.i.i, i64 32
  store <2 x i64> %i.ji, ptr %i.jp, align 16, !tbaa !85
  %i.jq = getelementptr inbounds nuw i8, ptr %.1355168.i.i, i64 48
  store <2 x i64> %i.jj, ptr %i.jq, align 16, !tbaa !85
  %i.jr = getelementptr inbounds nuw i8, ptr %.1355168.i.i, i64 64
  store <2 x i64> %i.jk, ptr %i.jr, align 16, !tbaa !85
  %i.js = getelementptr inbounds nuw i8, ptr %.1355168.i.i, i64 80
  store <2 x i64> %i.jl, ptr %i.js, align 16, !tbaa !85
  %i.jt = getelementptr inbounds nuw i8, ptr %.1355168.i.i, i64 96
  store <2 x i64> %i.jm, ptr %i.jt, align 16, !tbaa !85
  %i.ju = getelementptr inbounds nuw i8, ptr %.1355168.i.i, i64 112
  store <2 x i64> %i.jn, ptr %i.ju, align 16, !tbaa !85
  %i.jv = getelementptr inbounds nuw i8, ptr %.1355168.i.i, i64 128 ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %.0367167.i.i, i64 %i.bz
  %i.jx = add nuw nsw i32 %.0368166.i.i, 1        ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.jx, %i.bx
  br i1 %exitcond.not.i.i, label %.loopexit164.i.i, label %.lr.ph.i.i, !llvm.loop !2297

_ZN4ncnn3MatD2Ev.exit397.i.i:                     ; preds = %bb.j
  %i.jy = load ptr, ptr %9, align 8, !tbaa !22, !noalias !2368
  %i.jz = load i64, ptr %i.x, align 8, !tbaa !23, !noalias !2368
  %i.ka = mul i64 %i.jz, %i.ca
  %i.kb = load i64, ptr %i.aa, align 8, !tbaa !64, !noalias !2368
  %i.kc = mul i64 %i.ka, %i.kb
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jy, i64 %i.kc
  %i.ke = getelementptr i8, ptr %i.kd, i64 %indvars.iv.i.i
  %i.kf = getelementptr i8, ptr %i.ke, i64 %i.cf  ; 3 uses
  br i1 %i.cb, label %.lr.ph172.i.i.preheader, label %.preheader163.i.i

.lr.ph172.i.i.preheader:                          ; preds = %_ZN4ncnn3MatD2Ev.exit397.i.i
  br i1 %i.cj, label %.lr.ph172.i.i.epil.preheader, label %.lr.ph172.i.i

.preheader163.i.i.loopexit.unr-lcssa:             ; preds = %.lr.ph172.i.i
  br i1 %lcmp.mod.not.not, label %.lr.ph172.i.i.epil.preheader, label %.preheader163.i.i

.lr.ph172.i.i.epil.preheader:                     ; preds = %.preheader163.i.i.loopexit.unr-lcssa, %.lr.ph172.i.i.preheader
  %.3171.i.i.epil.init = phi ptr [ %.0354182.i.i, %.lr.ph172.i.i.preheader ], [ %i.lk, %.preheader163.i.i.loopexit.unr-lcssa ] ; 3 uses
  %.0369170.i.i.epil.init = phi ptr [ %i.kf, %.lr.ph172.i.i.preheader ], [ %i.ll, %.preheader163.i.i.loopexit.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod522)
  %i.kg = load <16 x i8>, ptr %.0369170.i.i.epil.init, align 1, !tbaa !85 ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %.0369170.i.i.epil.init, i64 %i.bs
  %i.ki = load <16 x i8>, ptr %i.kh, align 1, !tbaa !85 ; 2 uses
  %i.kj = shufflevector <16 x i8> %i.kg, <16 x i8> %i.ki, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.kk = shufflevector <16 x i8> %i.kg, <16 x i8> %i.ki, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.kj, ptr %.3171.i.i.epil.init, align 1, !tbaa !85
  %i.kl = getelementptr inbounds nuw i8, ptr %.3171.i.i.epil.init, i64 16
  store <16 x i8> %i.kk, ptr %i.kl, align 1, !tbaa !85
  %i.km = getelementptr inbounds nuw i8, ptr %.3171.i.i.epil.init, i64 32
  %i.kn = getelementptr inbounds nuw i8, ptr %.0369170.i.i.epil.init, i64 %i.cc
  br label %.preheader163.i.i

.preheader163.i.i:                                ; preds = %.lr.ph172.i.i.epil.preheader, %.preheader163.i.i.loopexit.unr-lcssa, %_ZN4ncnn3MatD2Ev.exit397.i.i
  %.0371.lcssa.i.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit397.i.i ], [ %i.cd, %.preheader163.i.i.loopexit.unr-lcssa ], [ %i.cd, %.lr.ph172.i.i.epil.preheader ] ; 5 uses
  %.0369.lcssa.i.i = phi ptr [ %i.kf, %_ZN4ncnn3MatD2Ev.exit397.i.i ], [ %i.ll, %.preheader163.i.i.loopexit.unr-lcssa ], [ %i.kn, %.lr.ph172.i.i.epil.preheader ] ; 2 uses
  %.3.lcssa.i.i = phi ptr [ %.0354182.i.i, %_ZN4ncnn3MatD2Ev.exit397.i.i ], [ %i.lk, %.preheader163.i.i.loopexit.unr-lcssa ], [ %i.km, %.lr.ph172.i.i.epil.preheader ] ; 3 uses
  %i.ko = icmp slt i32 %.0371.lcssa.i.i, %.sroa.speculated
  br i1 %i.ko, label %.lr.ph179.i.i.preheader, label %.loopexit164.i.i

.lr.ph179.i.i.preheader:                          ; preds = %.preheader163.i.i
  %i.kp = sub i32 %.sroa.speculated, %.0371.lcssa.i.i
  %xtraiter523 = and i32 %i.kp, 7                 ; 2 uses
  %lcmp.mod524.not = icmp eq i32 %xtraiter523, 0
  br i1 %lcmp.mod524.not, label %.lr.ph179.i.i.prol.loopexit, label %.lr.ph179.i.i.prol

.lr.ph179.i.i.prol:                               ; preds = %.lr.ph179.i.i.preheader, %.lr.ph179.i.i.prol
  %.4178.i.i.prol = phi ptr [ %i.kr, %.lr.ph179.i.i.prol ], [ %.3.lcssa.i.i, %.lr.ph179.i.i.preheader ] ; 2 uses
  %.1370177.i.i.prol = phi ptr [ %i.ks, %.lr.ph179.i.i.prol ], [ %.0369.lcssa.i.i, %.lr.ph179.i.i.preheader ] ; 2 uses
  %.1372176.i.i.prol = phi i32 [ %i.kt, %.lr.ph179.i.i.prol ], [ %.0371.lcssa.i.i, %.lr.ph179.i.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph179.i.i.prol ], [ 0, %.lr.ph179.i.i.preheader ]
  %i.kq = load <2 x i64>, ptr %.1370177.i.i.prol, align 1, !tbaa !85
  store <2 x i64> %i.kq, ptr %.4178.i.i.prol, align 1, !tbaa !85
  %i.kr = getelementptr inbounds nuw i8, ptr %.4178.i.i.prol, i64 16 ; 3 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %.1370177.i.i.prol, i64 %i.bs ; 2 uses
  %i.kt = add nuw nsw i32 %.1372176.i.i.prol, 1   ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter523
  br i1 %prol.iter.cmp.not, label %.lr.ph179.i.i.prol.loopexit, label %.lr.ph179.i.i.prol, !llvm.loop !2300

.lr.ph179.i.i.prol.loopexit:                      ; preds = %.lr.ph179.i.i.prol, %.lr.ph179.i.i.preheader
  %.lcssa504.unr = phi ptr [ poison, %.lr.ph179.i.i.preheader ], [ %i.kr, %.lr.ph179.i.i.prol ]
  %.4178.i.i.unr = phi ptr [ %.3.lcssa.i.i, %.lr.ph179.i.i.preheader ], [ %i.kr, %.lr.ph179.i.i.prol ]
  %.1370177.i.i.unr = phi ptr [ %.0369.lcssa.i.i, %.lr.ph179.i.i.preheader ], [ %i.ks, %.lr.ph179.i.i.prol ]
  %.1372176.i.i.unr = phi i32 [ %.0371.lcssa.i.i, %.lr.ph179.i.i.preheader ], [ %i.kt, %.lr.ph179.i.i.prol ]
  %i.ku = sub i32 %.0371.lcssa.i.i, %.sroa.speculated
  %i.kv = icmp ugt i32 %i.ku, -8
  br i1 %i.kv, label %.loopexit164.i.i, label %.lr.ph179.i.i

.lr.ph172.i.i:                                    ; preds = %.lr.ph172.i.i.preheader, %.lr.ph172.i.i
  %.3171.i.i = phi ptr [ %i.lk, %.lr.ph172.i.i ], [ %.0354182.i.i, %.lr.ph172.i.i.preheader ] ; 5 uses
  %.0369170.i.i = phi ptr [ %i.ll, %.lr.ph172.i.i ], [ %i.kf, %.lr.ph172.i.i.preheader ] ; 3 uses
  %niter = phi i32 [ %niter.next.1, %.lr.ph172.i.i ], [ 0, %.lr.ph172.i.i.preheader ]
  %i.kw = load <16 x i8>, ptr %.0369170.i.i, align 1, !tbaa !85 ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %.0369170.i.i, i64 %i.bs
  %i.ky = load <16 x i8>, ptr %i.kx, align 1, !tbaa !85 ; 2 uses
  %i.kz = shufflevector <16 x i8> %i.kw, <16 x i8> %i.ky, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.la = shufflevector <16 x i8> %i.kw, <16 x i8> %i.ky, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.kz, ptr %.3171.i.i, align 1, !tbaa !85
  %i.lb = getelementptr inbounds nuw i8, ptr %.3171.i.i, i64 16
  store <16 x i8> %i.la, ptr %i.lb, align 1, !tbaa !85
  %i.lc = getelementptr inbounds nuw i8, ptr %.3171.i.i, i64 32
  %i.ld = getelementptr inbounds nuw i8, ptr %.0369170.i.i, i64 %i.cc ; 3 uses
  %i.le = load <16 x i8>, ptr %i.ld, align 1, !tbaa !85 ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.ld, i64 %i.bs
  %i.lg = load <16 x i8>, ptr %i.lf, align 1, !tbaa !85 ; 2 uses
  %i.lh = shufflevector <16 x i8> %i.le, <16 x i8> %i.lg, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.li = shufflevector <16 x i8> %i.le, <16 x i8> %i.lg, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.lh, ptr %i.lc, align 1, !tbaa !85
  %i.lj = getelementptr inbounds nuw i8, ptr %.3171.i.i, i64 48
  store <16 x i8> %i.li, ptr %i.lj, align 1, !tbaa !85
  %i.lk = getelementptr inbounds nuw i8, ptr %.3171.i.i, i64 64 ; 3 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.ld, i64 %i.cc ; 3 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1.not = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.preheader163.i.i.loopexit.unr-lcssa, label %.lr.ph172.i.i, !llvm.loop !2301

.lr.ph179.i.i:                                    ; preds = %.lr.ph179.i.i.prol.loopexit, %.lr.ph179.i.i
  %.4178.i.i = phi ptr [ %i.mi, %.lr.ph179.i.i ], [ %.4178.i.i.unr, %.lr.ph179.i.i.prol.loopexit ] ; 9 uses
  %.1370177.i.i = phi ptr [ %i.mj, %.lr.ph179.i.i ], [ %.1370177.i.i.unr, %.lr.ph179.i.i.prol.loopexit ] ; 2 uses
  %.1372176.i.i = phi i32 [ %i.mk, %.lr.ph179.i.i ], [ %.1372176.i.i.unr, %.lr.ph179.i.i.prol.loopexit ]
  %i.lm = load <2 x i64>, ptr %.1370177.i.i, align 1, !tbaa !85
  store <2 x i64> %i.lm, ptr %.4178.i.i, align 1, !tbaa !85
  %i.ln = getelementptr inbounds nuw i8, ptr %.4178.i.i, i64 16
  %i.lo = getelementptr inbounds nuw i8, ptr %.1370177.i.i, i64 %i.bs ; 2 uses
  %i.lp = load <2 x i64>, ptr %i.lo, align 1, !tbaa !85
  store <2 x i64> %i.lp, ptr %i.ln, align 1, !tbaa !85
  %i.lq = getelementptr inbounds nuw i8, ptr %.4178.i.i, i64 32
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lo, i64 %i.bs ; 2 uses
  %i.ls = load <2 x i64>, ptr %i.lr, align 1, !tbaa !85
  store <2 x i64> %i.ls, ptr %i.lq, align 1, !tbaa !85
  %i.lt = getelementptr inbounds nuw i8, ptr %.4178.i.i, i64 48
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lr, i64 %i.bs ; 2 uses
  %i.lv = load <2 x i64>, ptr %i.lu, align 1, !tbaa !85
  store <2 x i64> %i.lv, ptr %i.lt, align 1, !tbaa !85
  %i.lw = getelementptr inbounds nuw i8, ptr %.4178.i.i, i64 64
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lu, i64 %i.bs ; 2 uses
  %i.ly = load <2 x i64>, ptr %i.lx, align 1, !tbaa !85
  store <2 x i64> %i.ly, ptr %i.lw, align 1, !tbaa !85
  %i.lz = getelementptr inbounds nuw i8, ptr %.4178.i.i, i64 80
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lx, i64 %i.bs ; 2 uses
  %i.mb = load <2 x i64>, ptr %i.ma, align 1, !tbaa !85
  store <2 x i64> %i.mb, ptr %i.lz, align 1, !tbaa !85
  %i.mc = getelementptr inbounds nuw i8, ptr %.4178.i.i, i64 96
  %i.md = getelementptr inbounds nuw i8, ptr %i.ma, i64 %i.bs ; 2 uses
  %i.me = load <2 x i64>, ptr %i.md, align 1, !tbaa !85
  store <2 x i64> %i.me, ptr %i.mc, align 1, !tbaa !85
  %i.mf = getelementptr inbounds nuw i8, ptr %.4178.i.i, i64 112
  %i.mg = getelementptr inbounds nuw i8, ptr %i.md, i64 %i.bs ; 2 uses
  %i.mh = load <2 x i64>, ptr %i.mg, align 1, !tbaa !85
  store <2 x i64> %i.mh, ptr %i.mf, align 1, !tbaa !85
  %i.mi = getelementptr inbounds nuw i8, ptr %.4178.i.i, i64 128 ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mg, i64 %i.bs
  %i.mk = add nuw nsw i32 %.1372176.i.i, 8        ; 2 uses
  %exitcond294.not.i.i.7 = icmp eq i32 %i.mk, %.sroa.speculated
  br i1 %exitcond294.not.i.i.7, label %.loopexit164.i.i, label %.lr.ph179.i.i, !llvm.loop !2302

.loopexit164.i.i:                                 ; preds = %.lr.ph179.i.i.prol.loopexit, %.lr.ph179.i.i, %.lr.ph.i.i, %.preheader163.i.i, %_ZN4ncnn3MatD2Ev.exit398.i.i, %bb.j
  %.5.i.i = phi ptr [ %.0354182.i.i, %bb.j ], [ %.3.lcssa.i.i, %.preheader163.i.i ], [ %i.jv, %.lr.ph.i.i ], [ %.0354182.i.i, %_ZN4ncnn3MatD2Ev.exit398.i.i ], [ %.lcssa504.unr, %.lr.ph179.i.i.prol.loopexit ], [ %i.mi, %.lr.ph179.i.i ] ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 16 ; 3 uses
  %i.ml = or disjoint i64 %indvars.iv.next.i.i, 15
  %i.mm = icmp samesign ult i64 %i.ml, %i.ce
  br i1 %i.mm, label %bb.j, label %.preheader162.loopexit.i.i, !llvm.loop !2303

.preheader158.loopexit.i.i:                       ; preds = %.loopexit160.i.us166.i, %.loopexit160.i.loopexit.us.us.i, %_ZN4ncnn3MatD2Ev.exit396.i.us.preheader.i, %.loopexit160.i.preheader.i
  %.us-phi.i = phi ptr [ %i.eu, %.loopexit160.i.loopexit.us.us.i ], [ %.0354.lcssa.i.i, %.loopexit160.i.preheader.i ], [ %.0354.lcssa.i.i, %_ZN4ncnn3MatD2Ev.exit396.i.us.preheader.i ], [ %.11.i.us167.i, %.loopexit160.i.us166.i ]
  %.us-phi162.i = phi i64 [ %indvars.iv.next299.i.us.us.i, %.loopexit160.i.loopexit.us.us.i ], [ %i.di, %.loopexit160.i.preheader.i ], [ %i.do, %_ZN4ncnn3MatD2Ev.exit396.i.us.preheader.i ], [ %indvars.iv.next299.i.us168.i, %.loopexit160.i.us166.i ]
  %i.mn = trunc nuw nsw i64 %.us-phi162.i to i32
  br label %.preheader158.i.i

.preheader158.i.i:                                ; preds = %.preheader158.loopexit.i.i, %.preheader162.i.i
  %.1357.lcssa.i.i = phi i32 [ %.0356.lcssa.i.i, %.preheader162.i.i ], [ %i.mn, %.preheader158.loopexit.i.i ] ; 3 uses
  %.6.lcssa.i.i = phi ptr [ %.0354.lcssa.i.i, %.preheader162.i.i ], [ %.us-phi.i, %.preheader158.loopexit.i.i ] ; 2 uses
  %i.mo = or disjoint i32 %.1357.lcssa.i.i, 3
  %i.mp = icmp slt i32 %i.mo, %.sroa.speculated63
  br i1 %i.mp, label %.lr.ph227.i.i, label %.preheader154.i.i

.lr.ph227.i.i:                                    ; preds = %.preheader158.i.i
  %i.mq = sdiv i32 %i.ah, 8
  %i.mr = sext i32 %i.mq to i64
  %i.ms = lshr i32 %.sroa.speculated, 3           ; 3 uses
  %i.mt = icmp sgt i32 %.sroa.speculated, 7
  %i.mu = shl i64 %i.bs, 3                        ; 2 uses
  %i.mv = sext i32 %i.ah to i64
  %i.mw = icmp sgt i32 %.sroa.speculated, 1
  %i.mx = shl i64 %i.bs, 1
  %i.my = and i32 %.sroa.speculated, -2
  %i.mz = zext nneg i32 %.1357.lcssa.i.i to i64
  %i.na = sext i32 %.sroa.speculated63 to i64
  %i.nb = sext i32 %i.af to i64                   ; 2 uses
  %invariant.op358.i.i = add nsw i64 %i.na, -3
  %xtraiter535 = and i32 %.sroa.speculated, 1
  %lcmp.mod536.not = icmp eq i32 %xtraiter535, 0
  %i.nc = icmp eq i32 %i.ms, 1
  %unroll_iter542 = and i32 %i.ms, 268435454
  %i.nd = and i32 %.sroa.speculated, 8
  %lcmp.mod539.not = icmp eq i32 %i.nd, 0
  %lcmp.mod541 = trunc i32 %i.ms to i1
  br label %bb.k

.preheader154.loopexit.i.i:                       ; preds = %.loopexit156.i.i
  %i.ne = trunc nsw i64 %indvars.iv.next304.i.i to i32
  br label %.preheader154.i.i

.preheader154.i.i:                                ; preds = %.preheader154.loopexit.i.i, %.preheader158.i.i
  %.2358.lcssa.i.i = phi i32 [ %.1357.lcssa.i.i, %.preheader158.i.i ], [ %i.ne, %.preheader154.loopexit.i.i ] ; 3 uses
  %.12.lcssa.i.i = phi ptr [ %.6.lcssa.i.i, %.preheader158.i.i ], [ %.17.i.i, %.preheader154.loopexit.i.i ] ; 2 uses
  %i.nf = or disjoint i32 %.2358.lcssa.i.i, 1
  %i.ng = icmp slt i32 %i.nf, %.sroa.speculated63
  br i1 %i.ng, label %.lr.ph249.i.i, label %.preheader.i.i

.lr.ph249.i.i:                                    ; preds = %.preheader154.i.i
  %i.nh = sdiv i32 %i.ah, 8
  %i.ni = sext i32 %i.nh to i64
  %i.nj = lshr i32 %.sroa.speculated, 3           ; 3 uses
  %i.nk = icmp sgt i32 %.sroa.speculated, 7
  %i.nl = shl i64 %i.bs, 3                        ; 5 uses
  %i.nm = sext i32 %i.ah to i64
  %i.nn = icmp sgt i32 %.sroa.speculated, 1
  %i.no = shl i64 %i.bs, 1                        ; 3 uses
  %i.np = and i32 %.sroa.speculated, -2           ; 2 uses
  %i.nq = sext i32 %.2358.lcssa.i.i to i64
  %i.nr = sext i32 %.sroa.speculated63 to i64
  %i.ns = sext i32 %i.af to i64                   ; 2 uses
  %invariant.op359.i.i = add nsw i64 %i.nr, -1
  %i.nt = add i32 %.sroa.speculated, -2           ; 2 uses
  %i.nu = lshr i32 %i.nt, 1                       ; 2 uses
  %i.nv = add nuw i32 %i.nu, 1                    ; 2 uses
  %i.nw = add nsw i32 %i.nj, -1
  %i.nx = icmp eq i32 %i.nu, 0
  %unroll_iter549 = and i32 %i.nv, -2
  %i.ny = and i32 %i.nt, 2
  %lcmp.mod545.not.not = icmp eq i32 %i.ny, 0
  %lcmp.mod548 = trunc i32 %i.nv to i1
  %xtraiter554 = and i32 %i.nj, 3                 ; 3 uses
  %i.nz = icmp ult i32 %i.nw, 3
  %unroll_iter558 = and i32 %i.nj, 268435452
  %lcmp.mod555.not = icmp eq i32 %xtraiter554, 0
  %lcmp.mod557 = icmp ne i32 %xtraiter554, 0
  br label %bb.l

bb.k:                                             ; preds = %.loopexit156.i.i, %.lr.ph227.i.i
  %indvars.iv303.i.i = phi i64 [ %i.mz, %.lr.ph227.i.i ], [ %indvars.iv.next304.i.i, %.loopexit156.i.i ] ; 3 uses
  %.12226.i.i = phi ptr [ %.6.lcssa.i.i, %.lr.ph227.i.i ], [ %.17.i.i, %.loopexit156.i.i ] ; 6 uses
  switch i32 %i.bt, label %.loopexit156.i.i [
    i32 8, label %_ZN4ncnn3MatD2Ev.exit394.i.i
    i32 1, label %_ZN4ncnn3MatD2Ev.exit393.i.i
  ]

_ZN4ncnn3MatD2Ev.exit394.i.i:                     ; preds = %bb.k
  br i1 %i.mt, label %.lr.ph211.preheader.i.i, label %.loopexit156.i.i

.lr.ph211.preheader.i.i:                          ; preds = %_ZN4ncnn3MatD2Ev.exit394.i.i
  %i.oa = load ptr, ptr %9, align 8, !tbaa !22, !noalias !2369
  %i.ob = load i64, ptr %i.x, align 8, !tbaa !23, !noalias !2369
  %i.oc = mul i64 %i.ob, %i.mr
  %i.od = load i64, ptr %i.aa, align 8, !tbaa !64, !noalias !2369
  %i.oe = mul i64 %i.oc, %i.od
  %i.of = getelementptr inbounds nuw i8, ptr %i.oa, i64 %i.oe
  %i.og = add nsw i64 %indvars.iv303.i.i, %i.nb
  %i.oh = shl nsw i64 %i.og, 3
  %i.oi = getelementptr inbounds i8, ptr %i.of, i64 %i.oh ; 2 uses
  br i1 %i.nc, label %.lr.ph211.i.i.epil.preheader, label %.lr.ph211.i.i

.lr.ph211.i.i:                                    ; preds = %.lr.ph211.preheader.i.i, %.lr.ph211.i.i
  %.13210.i.i = phi ptr [ %i.ox, %.lr.ph211.i.i ], [ %.12226.i.i, %.lr.ph211.preheader.i.i ] ; 5 uses
  %.0376208.i.i = phi ptr [ %i.oy, %.lr.ph211.i.i ], [ %i.oi, %.lr.ph211.preheader.i.i ] ; 3 uses
  %niter543 = phi i32 [ %niter543.next.1, %.lr.ph211.i.i ], [ 0, %.lr.ph211.preheader.i.i ]
  %i.oj = load <8 x i16>, ptr %.0376208.i.i, align 1, !tbaa !85 ; 2 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %.0376208.i.i, i64 16
  %i.ol = load <8 x i16>, ptr %i.ok, align 1, !tbaa !85 ; 2 uses
  %i.om = shufflevector <8 x i16> %i.oj, <8 x i16> %i.ol, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13>
  %i.on = shufflevector <8 x i16> %i.oj, <8 x i16> %i.ol, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <8 x i16> %i.om, ptr %.13210.i.i, align 16, !tbaa !85
  %i.oo = getelementptr inbounds nuw i8, ptr %.13210.i.i, i64 16
  store <8 x i16> %i.on, ptr %i.oo, align 16, !tbaa !85
  %i.op = getelementptr inbounds nuw i8, ptr %.13210.i.i, i64 32
  %i.oq = getelementptr inbounds nuw i8, ptr %.0376208.i.i, i64 %i.mu ; 3 uses
  %i.or = load <8 x i16>, ptr %i.oq, align 1, !tbaa !85 ; 2 uses
  %i.os = getelementptr inbounds nuw i8, ptr %i.oq, i64 16
  %i.ot = load <8 x i16>, ptr %i.os, align 1, !tbaa !85 ; 2 uses
  %i.ou = shufflevector <8 x i16> %i.or, <8 x i16> %i.ot, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13>
  %i.ov = shufflevector <8 x i16> %i.or, <8 x i16> %i.ot, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <8 x i16> %i.ou, ptr %i.op, align 16, !tbaa !85
  %i.ow = getelementptr inbounds nuw i8, ptr %.13210.i.i, i64 48
  store <8 x i16> %i.ov, ptr %i.ow, align 16, !tbaa !85
  %i.ox = getelementptr inbounds nuw i8, ptr %.13210.i.i, i64 64 ; 3 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %i.oq, i64 %i.mu ; 2 uses
  %niter543.next.1 = add i32 %niter543, 2         ; 2 uses
  %niter543.ncmp.1 = icmp eq i32 %niter543.next.1, %unroll_iter542
  br i1 %niter543.ncmp.1, label %.loopexit156.i.i.loopexit.unr-lcssa, label %.lr.ph211.i.i, !llvm.loop !2306

_ZN4ncnn3MatD2Ev.exit393.i.i:                     ; preds = %bb.k
  %i.oz = load ptr, ptr %9, align 8, !tbaa !22, !noalias !2370
  %i.pa = load i64, ptr %i.x, align 8, !tbaa !23, !noalias !2370
  %i.pb = mul i64 %i.pa, %i.mv
  %i.pc = load i64, ptr %i.aa, align 8, !tbaa !64, !noalias !2370
  %i.pd = mul i64 %i.pb, %i.pc
  %i.pe = getelementptr inbounds nuw i8, ptr %i.oz, i64 %i.pd
  %i.pf = getelementptr i8, ptr %i.pe, i64 %indvars.iv303.i.i
  %i.pg = getelementptr i8, ptr %i.pf, i64 %i.nb  ; 2 uses
  br i1 %i.mw, label %.lr.ph216.i.i, label %.preheader155.i.i

.preheader155.i.i:                                ; preds = %.lr.ph216.i.i, %_ZN4ncnn3MatD2Ev.exit393.i.i
  %.0365.lcssa.i.i = phi ptr [ %i.pg, %_ZN4ncnn3MatD2Ev.exit393.i.i ], [ %i.qt, %.lr.ph216.i.i ] ; 6 uses
  %.0363.lcssa.i.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit393.i.i ], [ %i.my, %.lr.ph216.i.i ] ; 4 uses
  %.15.lcssa.i.i = phi ptr [ %.12226.i.i, %_ZN4ncnn3MatD2Ev.exit393.i.i ], [ %i.qs, %.lr.ph216.i.i ] ; 7 uses
  %i.ph = icmp slt i32 %.0363.lcssa.i.i, %.sroa.speculated
  br i1 %i.ph, label %.lr.ph223.i.i.preheader, label %.loopexit156.i.i

.lr.ph223.i.i.preheader:                          ; preds = %.preheader155.i.i
  %.neg = or disjoint i32 %.0363.lcssa.i.i, 1
  br i1 %lcmp.mod536.not, label %.lr.ph223.i.i.prol.loopexit, label %.lr.ph223.i.i.prol

.lr.ph223.i.i.prol:                               ; preds = %.lr.ph223.i.i.preheader
  %i.pi = load i8, ptr %.0365.lcssa.i.i, align 1, !tbaa !85
  store i8 %i.pi, ptr %.15.lcssa.i.i, align 1, !tbaa !85
  %i.pj = getelementptr inbounds nuw i8, ptr %.0365.lcssa.i.i, i64 1
  %i.pk = load i8, ptr %i.pj, align 1, !tbaa !85
  %i.pl = getelementptr inbounds nuw i8, ptr %.15.lcssa.i.i, i64 1
  store i8 %i.pk, ptr %i.pl, align 1, !tbaa !85
  %i.pm = getelementptr inbounds nuw i8, ptr %.0365.lcssa.i.i, i64 2
  %i.pn = load i8, ptr %i.pm, align 1, !tbaa !85
  %i.po = getelementptr inbounds nuw i8, ptr %.15.lcssa.i.i, i64 2
  store i8 %i.pn, ptr %i.po, align 1, !tbaa !85
  %i.pp = getelementptr inbounds nuw i8, ptr %.0365.lcssa.i.i, i64 3
  %i.pq = load i8, ptr %i.pp, align 1, !tbaa !85
  %i.pr = getelementptr inbounds nuw i8, ptr %.15.lcssa.i.i, i64 3
  store i8 %i.pq, ptr %i.pr, align 1, !tbaa !85
  %i.ps = getelementptr inbounds nuw i8, ptr %.15.lcssa.i.i, i64 4 ; 2 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %.0365.lcssa.i.i, i64 %i.bs
  %i.pu = or disjoint i32 %.0363.lcssa.i.i, 1
  br label %.lr.ph223.i.i.prol.loopexit

.lr.ph223.i.i.prol.loopexit:                      ; preds = %.lr.ph223.i.i.prol, %.lr.ph223.i.i.preheader
  %.lcssa512.unr = phi ptr [ poison, %.lr.ph223.i.i.preheader ], [ %i.ps, %.lr.ph223.i.i.prol ]
  %.16222.i.i.unr = phi ptr [ %.15.lcssa.i.i, %.lr.ph223.i.i.preheader ], [ %i.ps, %.lr.ph223.i.i.prol ]
  %.1364221.i.i.unr = phi i32 [ %.0363.lcssa.i.i, %.lr.ph223.i.i.preheader ], [ %i.pu, %.lr.ph223.i.i.prol ]
  %.1366220.i.i.unr = phi ptr [ %.0365.lcssa.i.i, %.lr.ph223.i.i.preheader ], [ %i.pt, %.lr.ph223.i.i.prol ]
  %i.pv = icmp eq i32 %.sroa.speculated, %.neg
  br i1 %i.pv, label %.loopexit156.i.i, label %.lr.ph223.i.i

.lr.ph216.i.i:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit393.i.i, %.lr.ph216.i.i
  %.15215.i.i = phi ptr [ %i.qs, %.lr.ph216.i.i ], [ %.12226.i.i, %_ZN4ncnn3MatD2Ev.exit393.i.i ] ; 9 uses
  %.0363214.i.i = phi i32 [ %i.qu, %.lr.ph216.i.i ], [ 0, %_ZN4ncnn3MatD2Ev.exit393.i.i ]
  %.0365213.i.i = phi ptr [ %i.qt, %.lr.ph216.i.i ], [ %i.pg, %_ZN4ncnn3MatD2Ev.exit393.i.i ] ; 6 uses
  %i.pw = load i8, ptr %.0365213.i.i, align 1, !tbaa !85
  store i8 %i.pw, ptr %.15215.i.i, align 1, !tbaa !85
  %i.px = getelementptr inbounds nuw i8, ptr %.0365213.i.i, i64 %i.bs ; 4 uses
  %i.py = load i8, ptr %i.px, align 1, !tbaa !85
  %i.pz = getelementptr inbounds nuw i8, ptr %.15215.i.i, i64 1
  store i8 %i.py, ptr %i.pz, align 1, !tbaa !85
  %i.qa = getelementptr inbounds nuw i8, ptr %.0365213.i.i, i64 1
  %i.qb = load i8, ptr %i.qa, align 1, !tbaa !85
  %i.qc = getelementptr inbounds nuw i8, ptr %.15215.i.i, i64 2
  store i8 %i.qb, ptr %i.qc, align 1, !tbaa !85
  %i.qd = getelementptr i8, ptr %i.px, i64 1
  %i.qe = load i8, ptr %i.qd, align 1, !tbaa !85
  %i.qf = getelementptr inbounds nuw i8, ptr %.15215.i.i, i64 3
  store i8 %i.qe, ptr %i.qf, align 1, !tbaa !85
  %i.qg = getelementptr inbounds nuw i8, ptr %.0365213.i.i, i64 2
  %i.qh = load i8, ptr %i.qg, align 1, !tbaa !85
  %i.qi = getelementptr inbounds nuw i8, ptr %.15215.i.i, i64 4
  store i8 %i.qh, ptr %i.qi, align 1, !tbaa !85
  %i.qj = getelementptr i8, ptr %i.px, i64 2
  %i.qk = load i8, ptr %i.qj, align 1, !tbaa !85
  %i.ql = getelementptr inbounds nuw i8, ptr %.15215.i.i, i64 5
  store i8 %i.qk, ptr %i.ql, align 1, !tbaa !85
  %i.qm = getelementptr inbounds nuw i8, ptr %.0365213.i.i, i64 3
  %i.qn = load i8, ptr %i.qm, align 1, !tbaa !85
  %i.qo = getelementptr inbounds nuw i8, ptr %.15215.i.i, i64 6
  store i8 %i.qn, ptr %i.qo, align 1, !tbaa !85
  %i.qp = getelementptr i8, ptr %i.px, i64 3
  %i.qq = load i8, ptr %i.qp, align 1, !tbaa !85
  %i.qr = getelementptr inbounds nuw i8, ptr %.15215.i.i, i64 7
  store i8 %i.qq, ptr %i.qr, align 1, !tbaa !85
  %i.qs = getelementptr inbounds nuw i8, ptr %.15215.i.i, i64 8 ; 2 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %.0365213.i.i, i64 %i.mx ; 2 uses
  %i.qu = add nuw nsw i32 %.0363214.i.i, 2        ; 2 uses
  %i.qv = or disjoint i32 %i.qu, 1
  %i.qw = icmp slt i32 %i.qv, %.sroa.speculated
  br i1 %i.qw, label %.lr.ph216.i.i, label %.preheader155.i.i, !llvm.loop !2309

.lr.ph223.i.i:                                    ; preds = %.lr.ph223.i.i.prol.loopexit, %.lr.ph223.i.i
  %.16222.i.i = phi ptr [ %i.rt, %.lr.ph223.i.i ], [ %.16222.i.i.unr, %.lr.ph223.i.i.prol.loopexit ] ; 9 uses
  %.1364221.i.i = phi i32 [ %i.rv, %.lr.ph223.i.i ], [ %.1364221.i.i.unr, %.lr.ph223.i.i.prol.loopexit ]
  %.1366220.i.i = phi ptr [ %i.ru, %.lr.ph223.i.i ], [ %.1366220.i.i.unr, %.lr.ph223.i.i.prol.loopexit ] ; 5 uses
  %i.qx = load i8, ptr %.1366220.i.i, align 1, !tbaa !85
  store i8 %i.qx, ptr %.16222.i.i, align 1, !tbaa !85
  %i.qy = getelementptr inbounds nuw i8, ptr %.1366220.i.i, i64 1
  %i.qz = load i8, ptr %i.qy, align 1, !tbaa !85
  %i.ra = getelementptr inbounds nuw i8, ptr %.16222.i.i, i64 1
  store i8 %i.qz, ptr %i.ra, align 1, !tbaa !85
  %i.rb = getelementptr inbounds nuw i8, ptr %.1366220.i.i, i64 2
  %i.rc = load i8, ptr %i.rb, align 1, !tbaa !85
  %i.rd = getelementptr inbounds nuw i8, ptr %.16222.i.i, i64 2
  store i8 %i.rc, ptr %i.rd, align 1, !tbaa !85
  %i.re = getelementptr inbounds nuw i8, ptr %.1366220.i.i, i64 3
  %i.rf = load i8, ptr %i.re, align 1, !tbaa !85
  %i.rg = getelementptr inbounds nuw i8, ptr %.16222.i.i, i64 3
  store i8 %i.rf, ptr %i.rg, align 1, !tbaa !85
  %i.rh = getelementptr inbounds nuw i8, ptr %.16222.i.i, i64 4
end_hunk_11
begin_hunk_12_@_ZN4ncnnL28convolution_im2col_gemm_int8ERKNS_3MatERS0_S2_iiiiiiiRKNS_6OptionE.omp_outlined.14:bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %13, i64 32 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %13, i64 40
  %i.x = getelementptr inbounds nuw i8, ptr %13, i64 44
  %i.y = getelementptr inbounds nuw i8, ptr %13, i64 48
  %i.z = getelementptr inbounds nuw i8, ptr %13, i64 52
  %i.aa = getelementptr inbounds nuw i8, ptr %13, i64 56
  %i.ab = getelementptr inbounds nuw i8, ptr %13, i64 64 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.ad = getelementptr inbounds nuw i8, ptr %10, i64 44
  %i.ae = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.af = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.ah = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.ai = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %14, i64 32 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %14, i64 40
  %i.an = getelementptr inbounds nuw i8, ptr %14, i64 56
  %i.ao = getelementptr inbounds nuw i8, ptr %14, i64 64
  %i.ap = getelementptr inbounds nuw i8, ptr %11, i64 44
  %i.aq = getelementptr inbounds nuw i8, ptr %11, i64 64
  %i.ar = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.as = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.at = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.au = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.ax = getelementptr inbounds nuw i8, ptr %15, i64 32 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %15, i64 40
  %i.az = getelementptr inbounds nuw i8, ptr %15, i64 56
  %i.ba = getelementptr inbounds nuw i8, ptr %15, i64 64
  %i.bb = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.bc = getelementptr inbounds nuw i8, ptr %12, i64 64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph171, %_ZN4ncnn3MatD2Ev.exit
  %.045169 = phi i32 [ %i.k, %.lr.ph171 ], [ %i.ct, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %i.bd = load i32, ptr %3, align 4, !tbaa !66    ; 2 uses
  %i.be = mul nsw i32 %i.bd, %.045169             ; 4 uses
  %i.bf = load i32, ptr %4, align 4, !tbaa !66
  %i.bg = sub nsw i32 %i.bf, %i.be
  %.sroa.speculated115 = call i32 @llvm.smin.i32(i32 %i.bd, i32 %i.bg) ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #12
  %i.bh = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %bb.d unwind label %.loopexit.split-lp

bb.d:                                             ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !2436)
  %i.bi = load i32, ptr %i.l, align 4, !tbaa !74, !noalias !2436 ; 2 uses
  %i.bj = load i32, ptr %i.m, align 8, !tbaa !75, !noalias !2436 ; 2 uses
  %i.bk = load i32, ptr %i.n, align 4, !tbaa !91, !noalias !2436
  %i.bl = load ptr, ptr %5, align 8, !tbaa !22, !noalias !2436
  %i.bm = load i64, ptr %i.o, align 8, !tbaa !23, !noalias !2436
  %i.bn = sext i32 %i.bh to i64
  %i.bo = mul i64 %i.bm, %i.bn
  %i.bp = load i64, ptr %i.p, align 8, !tbaa !64, !noalias !2436 ; 4 uses
  %i.bq = mul i64 %i.bo, %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bq
  %i.bs = load i32, ptr %i.q, align 8, !tbaa !65, !noalias !2436
  %i.bt = load ptr, ptr %i.r, align 8, !tbaa !21, !noalias !2436
  store ptr %i.br, ptr %13, align 8, !tbaa !22, !alias.scope !2436
  store ptr null, ptr %i.s, align 8, !tbaa !20, !alias.scope !2436
  store i64 %i.bp, ptr %i.t, align 8, !tbaa !64, !alias.scope !2436
  store i32 %i.bs, ptr %i.u, align 8, !tbaa !65, !alias.scope !2436
  store ptr %i.bt, ptr %i.v, align 8, !tbaa !21, !alias.scope !2436
  store i32 %i.bi, ptr %i.x, align 4, !tbaa !74, !alias.scope !2436
  store i32 %i.bj, ptr %i.y, align 8, !tbaa !75, !alias.scope !2436
  store i32 1, ptr %i.z, align 4, !tbaa !91, !alias.scope !2436
  store i32 %i.bk, ptr %i.aa, align 8, !tbaa !67, !alias.scope !2436
  %i.bu = sext i32 %i.bi to i64
  %i.bv = sext i32 %i.bj to i64
  %i.bw = mul nsw i64 %i.bv, %i.bu                ; 2 uses
  %i.bx = mul i64 %i.bp, %i.bw
  %i.by = add i64 %i.bx, 15
  %i.bz = and i64 %i.by, -16
  %i.ca = udiv i64 %i.bz, %i.bp
  store i64 %i.ca, ptr %i.ab, align 8, !tbaa !23, !alias.scope !2436
  %i.cb = load i32, ptr %i.ac, align 8, !tbaa !90, !noalias !2436 ; 2 uses
  %i.cc = add nsw i32 %i.cb, -1
  store i32 %i.cc, ptr %i.w, align 8, !tbaa !90, !alias.scope !2436
  %i.cd = icmp eq i32 %i.cb, 4
  br i1 %i.cd, label %bb.e, label %_ZN4ncnn3Mat7channelEi.exit76

bb.e:                                             ; preds = %bb.d
  store i64 %i.bw, ptr %i.ab, align 8, !tbaa !23, !alias.scope !2436
  br label %_ZN4ncnn3Mat7channelEi.exit76

_ZN4ncnn3Mat7channelEi.exit76:                    ; preds = %bb.d, %bb.e
  %i.ce = load i32, ptr %6, align 4, !tbaa !66    ; 2 uses
  %i.cf = icmp sgt i32 %i.ce, 0
  br i1 %i.cf, label %.lr.ph, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph:                                           ; preds = %_ZN4ncnn3Mat7channelEi.exit76
  %i.cg = icmp sgt i32 %.sroa.speculated115, 15
  %i.ch = zext nneg i32 %.sroa.speculated115 to i64
  %i.ci = sext i32 %i.be to i64                   ; 5 uses
  %i.cj = sext i32 %.sroa.speculated115 to i64    ; 4 uses
  %invariant.op.i = add nsw i64 %i.cj, -7
  %invariant.op1164.i = add nsw i64 %i.cj, -3
  %invariant.op1165.i = add nsw i64 %i.cj, -1
  %.pre = load i32, ptr %7, align 4, !tbaa !66
  br label %bb.l

._crit_edge167:                                   ; preds = %_ZN4ncnnL24unpack_output_tile_int32ERKNS_3MatERS0_iiii.exit
  %.pre221 = load ptr, ptr %i.s, align 8, !tbaa !20 ; 2 uses
  %.not.i63 = icmp eq ptr %.pre221, null
  br i1 %.not.i63, label %_ZN4ncnn3MatD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge167
  %i.ck = atomicrmw add ptr %.pre221, i32 -1 acq_rel, align 4
  %i.cl = icmp eq i32 %i.ck, 1
  br i1 %i.cl, label %bb.g, label %_ZN4ncnn3MatD2Ev.exit

bb.g:                                             ; preds = %bb.f
  %i.cm = load ptr, ptr %i.v, align 8, !tbaa !21  ; 3 uses
  %.not3.i64 = icmp eq ptr %i.cm, null
  %i.cn = load ptr, ptr %13, align 8, !tbaa !22   ; 3 uses
  br i1 %.not3.i64, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.co = load ptr, ptr %i.cm, align 8, !tbaa !14
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  %i.cq = load ptr, ptr %i.cp, align 8
  invoke void %i.cq(ptr noundef nonnull align 8 dereferenceable(8) %i.cm, ptr noundef %i.cn)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.k, !inline_history !0

bb.i:                                             ; preds = %bb.g
  %.not.i67 = icmp eq ptr %i.cn, null
  br i1 %.not.i67, label %_ZN4ncnn3MatD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @free(ptr noundef nonnull %i.cn) #12
  br label %_ZN4ncnn3MatD2Ev.exit

bb.k:                                             ; preds = %bb.h
  %i.cr = landingpad { ptr, i32 }
          catch ptr null
  %i.cs = extractvalue { ptr, i32 } %i.cr, 0
  call void @__clang_call_terminate(ptr %i.cs) #36
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %_ZN4ncnn3Mat7channelEi.exit76, %bb.f, %._crit_edge167, %bb.h, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #12
  %i.ct = add nsw i32 %.045169, 1
  %i.cu = load i32, ptr %i.b, align 4, !tbaa !66
  %.not.not = icmp slt i32 %.045169, %i.cu
  br i1 %.not.not, label %bb.c, label %._crit_edge172

bb.l:                                             ; preds = %.lr.ph, %_ZN4ncnnL24unpack_output_tile_int32ERKNS_3MatERS0_iiii.exit
  %i.cv = phi i32 [ %.pre, %.lr.ph ], [ %i.bmm, %_ZN4ncnnL24unpack_output_tile_int32ERKNS_3MatERS0_iiii.exit ]
  %i.cw = phi i32 [ %i.ce, %.lr.ph ], [ %i.bmo, %_ZN4ncnnL24unpack_output_tile_int32ERKNS_3MatERS0_iiii.exit ]
  %.044166 = phi i32 [ 0, %.lr.ph ], [ %i.bmn, %_ZN4ncnnL24unpack_output_tile_int32ERKNS_3MatERS0_iiii.exit ] ; 9 uses
  %i.cx = sub i32 %i.cw, %.044166
  %.sroa.speculated111 = call i32 @llvm.smin.i32(i32 %i.cv, i32 %i.cx) ; 70 uses
  %i.cy = load i32, ptr %8, align 4, !tbaa !66    ; 2 uses
  %i.cz = icmp sgt i32 %i.cy, 0
  br i1 %i.cz, label %.noexc.preheader, label %._crit_edge

.noexc.preheader:                                 ; preds = %bb.l
  %.pre220 = load i32, ptr %9, align 4, !tbaa !66
  br label %.noexc

._crit_edge:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit46, %bb.l
  %.val = load ptr, ptr %13, align 8, !tbaa !22   ; 2 uses
  %i.da = load i32, ptr %i.bb, align 8, !tbaa !65 ; 19 uses
  %i.db = load i64, ptr %i.bc, align 8, !tbaa !23 ; 54 uses
  br i1 %i.cg, label %.lr.ph870.i, label %.preheader831.i

.lr.ph870.i:                                      ; preds = %._crit_edge
  %i.dc = mul nsw i32 %i.da, %.044166
  %i.dd = sext i32 %i.dc to i64
  %i.de = icmp sgt i32 %.sroa.speculated111, 15
  %i.df = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.da)
  %i.dg = icmp eq i32 %i.df, 1                    ; 5 uses
  %i.dh = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.da, i1 true) ; 5 uses
  %.idx1652.i = shl i64 %i.db, 3                  ; 3 uses
  %.idx1653.i = mul i64 %i.db, 12                 ; 3 uses
  %.idx1654.i = shl i64 %i.db, 4                  ; 8 uses
  %.idx1655.i = mul i64 %i.db, 20                 ; 3 uses
  %.idx1656.i = mul i64 %i.db, 24                 ; 3 uses
  %.idx1657.i = mul i64 %i.db, 28                 ; 3 uses
  %.idx1658.i = shl i64 %i.db, 5                  ; 13 uses
  %.idx1659.i = mul i64 %i.db, 36                 ; 3 uses
  %.idx1660.i = mul i64 %i.db, 40                 ; 3 uses
  %.idx1661.i = mul i64 %i.db, 44                 ; 3 uses
  %.idx1662.i = mul i64 %i.db, 48                 ; 8 uses
  %.idx1663.i = mul i64 %i.db, 52                 ; 3 uses
  %.idx1664.i = mul i64 %i.db, 56                 ; 3 uses
  %.idx1665.i = mul i64 %i.db, 60                 ; 3 uses
  %i.di = trunc i64 %i.db to i32
  %i.dj = insertelement <16 x i32> poison, i32 %i.di, i64 0
  %i.dk = shufflevector <16 x i32> %i.dj, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.dl = mul <16 x i32> %i.dk, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 3 uses
  %i.dm = and i32 %.sroa.speculated111, -16
  br label %bb.m

.preheader831.loopexit.i:                         ; preds = %._crit_edge.i
  %i.dn = trunc nsw i64 %indvars.iv.next.i to i32
  br label %.preheader831.i

.preheader831.i:                                  ; preds = %.preheader831.loopexit.i, %._crit_edge
  %.01458.lcssa.i = phi i32 [ 0, %._crit_edge ], [ %i.dn, %.preheader831.loopexit.i ] ; 3 uses
  %.0.lcssa.i = phi ptr [ %.val, %._crit_edge ], [ %.5.lcssa.i, %.preheader831.loopexit.i ] ; 2 uses
  %i.do = or disjoint i32 %.01458.lcssa.i, 7
  %i.dp = icmp slt i32 %i.do, %.sroa.speculated115
  br i1 %i.dp, label %.lr.ph910.i, label %.preheader826.i

.lr.ph910.i:                                      ; preds = %.preheader831.i
  %i.dq = mul nsw i32 %i.da, %.044166
  %i.dr = sext i32 %i.dq to i64
  %i.ds = icmp sgt i32 %.sroa.speculated111, 15
  %.idx1596.i = shl i64 %i.db, 3                  ; 3 uses
  %.idx1597.i = mul i64 %i.db, 12                 ; 3 uses
  %.idx1598.i = shl i64 %i.db, 4                  ; 10 uses
  %.idx1599.i = mul i64 %i.db, 20                 ; 3 uses
  %.idx1600.i = mul i64 %i.db, 24                 ; 3 uses
  %.idx1601.i = mul i64 %i.db, 28                 ; 3 uses
  %i.dt = trunc i64 %i.db to i32
  %i.du = insertelement <8 x i32> poison, i32 %i.dt, i64 0
  %i.dv = shufflevector <8 x i32> %i.du, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.dw = mul <8 x i32> %i.dv, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 5 uses
  %i.dx = and i32 %.sroa.speculated111, -16
  %i.dy = sext i32 %.01458.lcssa.i to i64
  br label %bb.ac

bb.m:                                             ; preds = %._crit_edge.i, %.lr.ph870.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph870.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 2 uses
  %.0868.i = phi ptr [ %.val, %.lr.ph870.i ], [ %.5.lcssa.i, %._crit_edge.i ] ; 2 uses
  %i.dz = load ptr, ptr %12, align 8, !tbaa !22
  %i.ea = add nsw i64 %indvars.iv.i, %i.ci
  %i.eb = mul i64 %i.ea, %i.db
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %i.eb
  %i.ed = getelementptr inbounds [4 x i8], ptr %i.ec, i64 %i.dd ; 2 uses
  br i1 %i.de, label %.lr.ph.i, label %.preheader835.i

.preheader835.i:                                  ; preds = %.thread687.i, %bb.m
  %.01488.lcssa.i = phi i32 [ 0, %bb.m ], [ %i.dm, %.thread687.i ] ; 3 uses
  %.01463.lcssa.i = phi ptr [ %i.ed, %bb.m ], [ %.41467.i, %.thread687.i ] ; 2 uses
  %.1.lcssa.i = phi ptr [ %.0868.i, %bb.m ], [ %i.fl, %.thread687.i ] ; 2 uses
  %i.ee = or disjoint i32 %.01488.lcssa.i, 7
  %i.ef = icmp slt i32 %i.ee, %.sroa.speculated111
  br i1 %i.ef, label %.lr.ph844.i, label %.preheader834.i

.lr.ph.i:                                         ; preds = %bb.m, %.thread687.i
  %.1838.i = phi ptr [ %i.fl, %.thread687.i ], [ %.0868.i, %bb.m ] ; 17 uses
  %.01463837.i = phi ptr [ %.41467.i, %.thread687.i ], [ %i.ed, %bb.m ] ; 62 uses
  %.01488836.i = phi i32 [ %i.pq, %.thread687.i ], [ 0, %bb.m ]
  %i.eg = load <16 x i32>, ptr %.1838.i, align 64, !tbaa !85 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.1838.i, i64 64
  %i.ei = load <16 x i32>, ptr %i.eh, align 64, !tbaa !85 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.1838.i, i64 128
  %i.ek = load <16 x i32>, ptr %i.ej, align 64, !tbaa !85 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.1838.i, i64 192
  %i.em = load <16 x i32>, ptr %i.el, align 64, !tbaa !85 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.1838.i, i64 256
  %i.eo = load <16 x i32>, ptr %i.en, align 64, !tbaa !85 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.1838.i, i64 320
  %i.eq = load <16 x i32>, ptr %i.ep, align 64, !tbaa !85 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.1838.i, i64 384
  %i.es = load <16 x i32>, ptr %i.er, align 64, !tbaa !85 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.1838.i, i64 448
  %i.eu = load <16 x i32>, ptr %i.et, align 64, !tbaa !85 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.1838.i, i64 512
  %i.ew = load <16 x i32>, ptr %i.ev, align 64, !tbaa !85 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.1838.i, i64 576
  %i.ey = load <16 x i32>, ptr %i.ex, align 64, !tbaa !85 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.1838.i, i64 640
  %i.fa = load <16 x i32>, ptr %i.ez, align 64, !tbaa !85 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.1838.i, i64 704
  %i.fc = load <16 x i32>, ptr %i.fb, align 64, !tbaa !85 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.1838.i, i64 768
  %i.fe = load <16 x i32>, ptr %i.fd, align 64, !tbaa !85 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.1838.i, i64 832
  %i.fg = load <16 x i32>, ptr %i.ff, align 64, !tbaa !85 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.1838.i, i64 896
  %i.fi = load <16 x i32>, ptr %i.fh, align 64, !tbaa !85 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.1838.i, i64 960
  %i.fk = load <16 x i32>, ptr %i.fj, align 64, !tbaa !85 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.1838.i, i64 1024 ; 2 uses
  %i.fm = shufflevector <16 x i32> %i.eg, <16 x i32> %i.em, <16 x i32> <i32 0, i32 19, i32 1, i32 16, i32 4, i32 23, i32 5, i32 20, i32 8, i32 27, i32 9, i32 24, i32 12, i32 31, i32 13, i32 28> ; 2 uses
  %i.fn = shufflevector <16 x i32> %i.eg, <16 x i32> %i.em, <16 x i32> <i32 2, i32 17, i32 3, i32 18, i32 6, i32 21, i32 7, i32 22, i32 10, i32 25, i32 11, i32 26, i32 14, i32 29, i32 15, i32 30> ; 2 uses
  %i.fo = shufflevector <16 x i32> %i.ek, <16 x i32> %i.ei, <16 x i32> <i32 0, i32 19, i32 1, i32 16, i32 4, i32 23, i32 5, i32 20, i32 8, i32 27, i32 9, i32 24, i32 12, i32 31, i32 13, i32 28> ; 2 uses
  %i.fp = shufflevector <16 x i32> %i.ek, <16 x i32> %i.ei, <16 x i32> <i32 2, i32 17, i32 3, i32 18, i32 6, i32 21, i32 7, i32 22, i32 10, i32 25, i32 11, i32 26, i32 14, i32 29, i32 15, i32 30> ; 2 uses
  %i.fq = shufflevector <16 x i32> %i.eo, <16 x i32> %i.eu, <16 x i32> <i32 0, i32 19, i32 1, i32 16, i32 4, i32 23, i32 5, i32 20, i32 8, i32 27, i32 9, i32 24, i32 12, i32 31, i32 13, i32 28> ; 2 uses
  %i.fr = shufflevector <16 x i32> %i.eo, <16 x i32> %i.eu, <16 x i32> <i32 2, i32 17, i32 3, i32 18, i32 6, i32 21, i32 7, i32 22, i32 10, i32 25, i32 11, i32 26, i32 14, i32 29, i32 15, i32 30> ; 2 uses
  %i.fs = shufflevector <16 x i32> %i.es, <16 x i32> %i.eq, <16 x i32> <i32 0, i32 19, i32 1, i32 16, i32 4, i32 23, i32 5, i32 20, i32 8, i32 27, i32 9, i32 24, i32 12, i32 31, i32 13, i32 28> ; 2 uses
  %i.ft = shufflevector <16 x i32> %i.es, <16 x i32> %i.eq, <16 x i32> <i32 2, i32 17, i32 3, i32 18, i32 6, i32 21, i32 7, i32 22, i32 10, i32 25, i32 11, i32 26, i32 14, i32 29, i32 15, i32 30> ; 2 uses
  %i.fu = shufflevector <16 x i32> %i.ew, <16 x i32> %i.fc, <16 x i32> <i32 0, i32 19, i32 1, i32 16, i32 4, i32 23, i32 5, i32 20, i32 8, i32 27, i32 9, i32 24, i32 12, i32 31, i32 13, i32 28> ; 2 uses
  %i.fv = shufflevector <16 x i32> %i.ew, <16 x i32> %i.fc, <16 x i32> <i32 2, i32 17, i32 3, i32 18, i32 6, i32 21, i32 7, i32 22, i32 10, i32 25, i32 11, i32 26, i32 14, i32 29, i32 15, i32 30> ; 2 uses
  %i.fw = shufflevector <16 x i32> %i.fa, <16 x i32> %i.ey, <16 x i32> <i32 0, i32 19, i32 1, i32 16, i32 4, i32 23, i32 5, i32 20, i32 8, i32 27, i32 9, i32 24, i32 12, i32 31, i32 13, i32 28> ; 2 uses
  %i.fx = shufflevector <16 x i32> %i.fa, <16 x i32> %i.ey, <16 x i32> <i32 2, i32 17, i32 3, i32 18, i32 6, i32 21, i32 7, i32 22, i32 10, i32 25, i32 11, i32 26, i32 14, i32 29, i32 15, i32 30> ; 2 uses
  %i.fy = shufflevector <16 x i32> %i.fe, <16 x i32> %i.fk, <16 x i32> <i32 0, i32 19, i32 1, i32 16, i32 4, i32 23, i32 5, i32 20, i32 8, i32 27, i32 9, i32 24, i32 12, i32 31, i32 13, i32 28> ; 2 uses
  %i.fz = shufflevector <16 x i32> %i.fe, <16 x i32> %i.fk, <16 x i32> <i32 2, i32 17, i32 3, i32 18, i32 6, i32 21, i32 7, i32 22, i32 10, i32 25, i32 11, i32 26, i32 14, i32 29, i32 15, i32 30> ; 2 uses
  %i.ga = shufflevector <16 x i32> %i.fi, <16 x i32> %i.fg, <16 x i32> <i32 0, i32 19, i32 1, i32 16, i32 4, i32 23, i32 5, i32 20, i32 8, i32 27, i32 9, i32 24, i32 12, i32 31, i32 13, i32 28> ; 2 uses
  %i.gb = shufflevector <16 x i32> %i.fi, <16 x i32> %i.fg, <16 x i32> <i32 2, i32 17, i32 3, i32 18, i32 6, i32 21, i32 7, i32 22, i32 10, i32 25, i32 11, i32 26, i32 14, i32 29, i32 15, i32 30> ; 2 uses
  %i.gc = shufflevector <16 x i32> %i.fm, <16 x i32> %i.fo, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.gd = shufflevector <16 x i32> %i.fm, <16 x i32> %i.fo, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.ge = shufflevector <16 x i32> %i.fp, <16 x i32> %i.fn, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.gf = shufflevector <16 x i32> %i.fp, <16 x i32> %i.fn, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.gg = shufflevector <16 x i32> %i.fq, <16 x i32> %i.fs, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.gh = shufflevector <16 x i32> %i.fq, <16 x i32> %i.fs, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.gi = shufflevector <16 x i32> %i.ft, <16 x i32> %i.fr, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.gj = shufflevector <16 x i32> %i.ft, <16 x i32> %i.fr, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.gk = shufflevector <16 x i32> %i.fu, <16 x i32> %i.fw, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.gl = shufflevector <16 x i32> %i.fu, <16 x i32> %i.fw, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.gm = shufflevector <16 x i32> %i.fx, <16 x i32> %i.fv, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.gn = shufflevector <16 x i32> %i.fx, <16 x i32> %i.fv, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.go = shufflevector <16 x i32> %i.fy, <16 x i32> %i.ga, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.gp = shufflevector <16 x i32> %i.fy, <16 x i32> %i.ga, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.gq = shufflevector <16 x i32> %i.gb, <16 x i32> %i.fz, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.gr = shufflevector <16 x i32> %i.gb, <16 x i32> %i.fz, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.gs = shufflevector <16 x i32> %i.gc, <16 x i32> %i.gk, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.gt = shufflevector <16 x i32> %i.gd, <16 x i32> %i.gl, <16 x i32> <i32 3, i32 0, i32 1, i32 2, i32 11, i32 8, i32 9, i32 10, i32 19, i32 16, i32 17, i32 18, i32 27, i32 24, i32 25, i32 26> ; 3 uses
  %i.gu = shufflevector <16 x i32> %i.ge, <16 x i32> %i.gm, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.gv = shufflevector <16 x i32> %i.gf, <16 x i32> %i.gn, <16 x i32> <i32 3, i32 0, i32 1, i32 2, i32 11, i32 8, i32 9, i32 10, i32 19, i32 16, i32 17, i32 18, i32 27, i32 24, i32 25, i32 26> ; 3 uses
  %i.gw = shufflevector <16 x i32> %i.gk, <16 x i32> %i.gc, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.gx = shufflevector <16 x i32> %i.gl, <16 x i32> %i.gd, <16 x i32> <i32 7, i32 4, i32 5, i32 6, i32 15, i32 12, i32 13, i32 14, i32 23, i32 20, i32 21, i32 22, i32 31, i32 28, i32 29, i32 30> ; 3 uses
  %i.gy = shufflevector <16 x i32> %i.gm, <16 x i32> %i.ge, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.gz = shufflevector <16 x i32> %i.gn, <16 x i32> %i.gf, <16 x i32> <i32 7, i32 4, i32 5, i32 6, i32 15, i32 12, i32 13, i32 14, i32 23, i32 20, i32 21, i32 22, i32 31, i32 28, i32 29, i32 30> ; 3 uses
  %i.ha = shufflevector <16 x i32> %i.gg, <16 x i32> %i.go, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.hb = shufflevector <16 x i32> %i.gh, <16 x i32> %i.gp, <16 x i32> <i32 3, i32 0, i32 1, i32 2, i32 11, i32 8, i32 9, i32 10, i32 19, i32 16, i32 17, i32 18, i32 27, i32 24, i32 25, i32 26> ; 3 uses
  %i.hc = shufflevector <16 x i32> %i.gi, <16 x i32> %i.gq, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.hd = shufflevector <16 x i32> %i.gj, <16 x i32> %i.gr, <16 x i32> <i32 3, i32 0, i32 1, i32 2, i32 11, i32 8, i32 9, i32 10, i32 19, i32 16, i32 17, i32 18, i32 27, i32 24, i32 25, i32 26> ; 3 uses
  %i.he = shufflevector <16 x i32> %i.go, <16 x i32> %i.gg, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.hf = shufflevector <16 x i32> %i.gp, <16 x i32> %i.gh, <16 x i32> <i32 7, i32 4, i32 5, i32 6, i32 15, i32 12, i32 13, i32 14, i32 23, i32 20, i32 21, i32 22, i32 31, i32 28, i32 29, i32 30> ; 3 uses
  %i.hg = shufflevector <16 x i32> %i.gq, <16 x i32> %i.gi, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.hh = shufflevector <16 x i32> %i.gr, <16 x i32> %i.gj, <16 x i32> <i32 7, i32 4, i32 5, i32 6, i32 15, i32 12, i32 13, i32 14, i32 23, i32 20, i32 21, i32 22, i32 31, i32 28, i32 29, i32 30> ; 3 uses
  %i.hi = shufflevector <16 x i32> %i.gs, <16 x i32> %i.ha, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 7 uses
  %i.hj = shufflevector <16 x i32> %i.gt, <16 x i32> %i.hb, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 6 uses
  %i.hk = shufflevector <16 x i32> %i.gu, <16 x i32> %i.hc, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 7 uses
  %i.hl = shufflevector <16 x i32> %i.gv, <16 x i32> %i.hd, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 6 uses
  %i.hm = shufflevector <16 x i32> %i.gw, <16 x i32> %i.he, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 7 uses
  %i.hn = shufflevector <16 x i32> %i.gx, <16 x i32> %i.hf, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 6 uses
  %i.ho = shufflevector <16 x i32> %i.gy, <16 x i32> %i.hg, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 7 uses
  %i.hp = shufflevector <16 x i32> %i.gz, <16 x i32> %i.hh, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 6 uses
  %i.hq = shufflevector <16 x i32> %i.ha, <16 x i32> %i.gs, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 7 uses
  %i.hr = shufflevector <16 x i32> %i.hb, <16 x i32> %i.gt, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 6 uses
  %i.hs = shufflevector <16 x i32> %i.hc, <16 x i32> %i.gu, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 7 uses
  %i.ht = shufflevector <16 x i32> %i.hd, <16 x i32> %i.gv, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 6 uses
  %i.hu = shufflevector <16 x i32> %i.he, <16 x i32> %i.gw, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 7 uses
  %i.hv = shufflevector <16 x i32> %i.hf, <16 x i32> %i.gx, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 6 uses
  %i.hw = shufflevector <16 x i32> %i.hg, <16 x i32> %i.gy, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 7 uses
  %i.hx = shufflevector <16 x i32> %i.hh, <16 x i32> %i.gz, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 6 uses
  br i1 %i.dg, label %.split.i, label %.thread687.i

.split.i:                                         ; preds = %.lr.ph.i
  switch i32 %i.dh, label %.thread687.i [
    i32 4, label %.thread.i
    i32 3, label %bb.n
    i32 2, label %bb.o
    i32 0, label %bb.p
  ]

.thread.i:                                        ; preds = %.split.i
  store <16 x i32> %i.hi, ptr %.01463837.i, align 64, !tbaa !85
  %i.hy = getelementptr inbounds nuw i8, ptr %.01463837.i, i64 64
  store <16 x i32> %i.hj, ptr %i.hy, align 64, !tbaa !85
  %i.hz = getelementptr inbounds nuw i8, ptr %.01463837.i, i64 128
  store <16 x i32> %i.hk, ptr %i.hz, align 64, !tbaa !85
  %i.ia = getelementptr inbounds nuw i8, ptr %.01463837.i, i64 192
  store <16 x i32> %i.hl, ptr %i.ia, align 64, !tbaa !85
  %i.ib = getelementptr inbounds nuw i8, ptr %.01463837.i, i64 256
  store <16 x i32> %i.hm, ptr %i.ib, align 64, !tbaa !85
  %i.ic = getelementptr inbounds nuw i8, ptr %.01463837.i, i64 320
  store <16 x i32> %i.hn, ptr %i.ic, align 64, !tbaa !85
  %i.id = getelementptr inbounds nuw i8, ptr %.01463837.i, i64 384
  store <16 x i32> %i.ho, ptr %i.id, align 64, !tbaa !85
  %i.ie = getelementptr inbounds nuw i8, ptr %.01463837.i, i64 448
  store <16 x i32> %i.hp, ptr %i.ie, align 64, !tbaa !85
  %i.if = getelementptr inbounds nuw i8, ptr %.01463837.i, i64 512
  store <16 x i32> %i.hq, ptr %i.if, align 64, !tbaa !85
  %i.ig = getelementptr inbounds nuw i8, ptr %.01463837.i, i64 576
  store <16 x i32> %i.hr, ptr %i.ig, align 64, !tbaa !85
  %i.ih = getelementptr inbounds nuw i8, ptr %.01463837.i, i64 640
  store <16 x i32> %i.hs, ptr %i.ih, align 64, !tbaa !85
  %i.ii = getelementptr inbounds nuw i8, ptr %.01463837.i, i64 704
  store <16 x i32> %i.ht, ptr %i.ii, align 64, !tbaa !85
  %i.ij = getelementptr inbounds nuw i8, ptr %.01463837.i, i64 768
  store <16 x i32> %i.hu, ptr %i.ij, align 64, !tbaa !85
  %i.ik = getelementptr inbounds nuw i8, ptr %.01463837.i, i64 832
  store <16 x i32> %i.hv, ptr %i.ik, align 64, !tbaa !85
  %i.il = getelementptr inbounds nuw i8, ptr %.01463837.i, i64 896
  store <16 x i32> %i.hw, ptr %i.il, align 64, !tbaa !85
  %i.im = getelementptr inbounds nuw i8, ptr %.01463837.i, i64 960
  store <16 x i32> %i.hx, ptr %i.im, align 64, !tbaa !85
  %i.in = getelementptr inbounds nuw i8, ptr %.01463837.i, i64 1024
  br label %.thread687.i

bb.n:                                             ; preds = %.split.i
  %i.io = shufflevector <16 x i32> %i.hi, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  store <8 x i32> %i.io, ptr %.01463837.i, align 32, !tbaa !85
  %i.ip = getelementptr inbounds nuw i8, ptr %.01463837.i, i64 32
  %i.iq = shufflevector <16 x i32> %i.hj, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  store <8 x i32> %i.iq, ptr %i.ip, align 32, !tbaa !85
  %i.ir = getelementptr inbounds nuw i8, ptr %.01463837.i, i64 64
  %i.is = shufflevector <16 x i32> %i.hk, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  store <8 x i32> %i.is, ptr %i.ir, align 32, !tbaa !85
  %i.it = getelementptr inbounds nuw i8, ptr %.01463837.i, i64 96
end_hunk_12
begin_hunk_13_@_ZN4ncnnL46convolution_im2col_gemm_transform_kernel_bf16sERKNS_3MatERS0_iiiiRKNS_6OptionE.omp_outlined:bb.a
  %wide.load454 = load <4 x i32>, ptr %next.gep451, align 4, !tbaa !41
  %wide.load455 = load <4 x i32>, ptr %next.gep450, align 4, !tbaa !41
  %wide.load456 = load <4 x i32>, ptr %next.gep449, align 4, !tbaa !41
  %wide.load457 = load <4 x i32>, ptr %next.gep448, align 4, !tbaa !41
  %wide.load458 = load <4 x i32>, ptr %next.gep447, align 4, !tbaa !41
  %wide.load459 = load <4 x i32>, ptr %next.gep446, align 4, !tbaa !41
  %wide.load460 = load <4 x i32>, ptr %next.gep445, align 4, !tbaa !41
  %i.sc = shufflevector <4 x i32> %wide.load453, <4 x i32> %wide.load454, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.sd = shufflevector <4 x i32> %wide.load455, <4 x i32> %wide.load456, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.se = shufflevector <4 x i32> %wide.load457, <4 x i32> %wide.load458, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.sf = shufflevector <4 x i32> %wide.load459, <4 x i32> %wide.load460, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.sg = shufflevector <8 x i32> %i.sc, <8 x i32> %i.sd, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.sh = shufflevector <8 x i32> %i.se, <8 x i32> %i.sf, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.si = shufflevector <16 x i32> %i.sg, <16 x i32> %i.sh, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.sj = lshr <32 x i32> %i.si, splat (i32 16)
  %interleaved.vec461 = trunc nuw <32 x i32> %i.sj to <32 x i16>
  store <32 x i16> %interleaved.vec461, ptr %next.gep444, align 2, !tbaa !102
  %index.next462 = add nuw i64 %index443, 4       ; 2 uses
  %i.sk = icmp eq i64 %index.next462, %n.vec441
  br i1 %i.sk, label %vec.epilog.middle.block463, label %vec.epilog.vector.body442, !llvm.loop !2557

vec.epilog.middle.block463:                       ; preds = %vec.epilog.vector.body442
  %cmp.n464 = icmp eq i64 %i.ql, %n.vec441
  br i1 %cmp.n464, label %._crit_edge211.i, label %.lr.ph210.i.preheader

.lr.ph210.i.preheader:                            ; preds = %iter.check436, %vec.epilog.iter.check438, %vec.epilog.middle.block463
  %.5209.i.ph = phi ptr [ %.4.lcssa.i, %iter.check436 ], [ %i.qo, %vec.epilog.iter.check438 ], [ %i.ro, %vec.epilog.middle.block463 ]
  %.1484208.i.ph = phi i32 [ %.0483.lcssa.i, %iter.check436 ], [ %i.qq, %vec.epilog.iter.check438 ], [ %i.rq, %vec.epilog.middle.block463 ]
  %.1486207.i.ph = phi ptr [ %.0485.lcssa.i, %iter.check436 ], [ %i.qs, %vec.epilog.iter.check438 ], [ %i.rs, %vec.epilog.middle.block463 ]
  %.1488206.i.ph = phi ptr [ %.0487.lcssa.i, %iter.check436 ], [ %i.qt, %vec.epilog.iter.check438 ], [ %i.rt, %vec.epilog.middle.block463 ]
  %.1490205.i.ph = phi ptr [ %.0489.lcssa.i, %iter.check436 ], [ %i.qu, %vec.epilog.iter.check438 ], [ %i.ru, %vec.epilog.middle.block463 ]
  %.1492204.i.ph = phi ptr [ %.0491.lcssa.i, %iter.check436 ], [ %i.qv, %vec.epilog.iter.check438 ], [ %i.rv, %vec.epilog.middle.block463 ]
  %.1494203.i.ph = phi ptr [ %.0493.lcssa.i, %iter.check436 ], [ %i.qw, %vec.epilog.iter.check438 ], [ %i.rw, %vec.epilog.middle.block463 ]
  %.1496202.i.ph = phi ptr [ %.0495.lcssa.i, %iter.check436 ], [ %i.qx, %vec.epilog.iter.check438 ], [ %i.rx, %vec.epilog.middle.block463 ]
  %.1498201.i.ph = phi ptr [ %.0497.lcssa.i, %iter.check436 ], [ %i.qy, %vec.epilog.iter.check438 ], [ %i.ry, %vec.epilog.middle.block463 ]
  %.1500200.i.ph = phi ptr [ %.0499.lcssa.i, %iter.check436 ], [ %i.qz, %vec.epilog.iter.check438 ], [ %i.rz, %vec.epilog.middle.block463 ]
  br label %.lr.ph210.i

.lr.ph189.i:                                      ; preds = %bb.d, %.lr.ph189.i
  %.4187.i = phi ptr [ %i.vm, %.lr.ph189.i ], [ %.3214.i, %bb.d ] ; 9 uses
  %.0483186.i = phi i32 [ %i.vv, %.lr.ph189.i ], [ 0, %bb.d ]
  %.0485185.i = phi ptr [ %i.vu, %.lr.ph189.i ], [ %i.qg, %bb.d ] ; 2 uses
  %.0487184.i = phi ptr [ %i.vt, %.lr.ph189.i ], [ %i.qc, %bb.d ] ; 2 uses
  %.0489183.i = phi ptr [ %i.vs, %.lr.ph189.i ], [ %i.py, %bb.d ] ; 2 uses
  %.0491182.i = phi ptr [ %i.vr, %.lr.ph189.i ], [ %i.pu, %bb.d ] ; 2 uses
  %.0493181.i = phi ptr [ %i.vq, %.lr.ph189.i ], [ %i.pq, %bb.d ] ; 2 uses
  %.0495180.i = phi ptr [ %i.vp, %.lr.ph189.i ], [ %i.pm, %bb.d ] ; 2 uses
  %.0497179.i = phi ptr [ %i.vo, %.lr.ph189.i ], [ %i.pi, %bb.d ] ; 2 uses
  %.0499178.i = phi ptr [ %i.vn, %.lr.ph189.i ], [ %i.pe, %bb.d ] ; 2 uses
  %i.sl = load <8 x float>, ptr %.0499178.i, align 1, !tbaa !85 ; 2 uses
  %i.sm = load <8 x float>, ptr %.0497179.i, align 1, !tbaa !85 ; 2 uses
  %i.sn = load <8 x float>, ptr %.0495180.i, align 1, !tbaa !85 ; 2 uses
  %i.so = load <8 x float>, ptr %.0493181.i, align 1, !tbaa !85 ; 2 uses
  %i.sp = load <8 x float>, ptr %.0491182.i, align 1, !tbaa !85 ; 2 uses
  %i.sq = load <8 x float>, ptr %.0489183.i, align 1, !tbaa !85 ; 2 uses
  %i.sr = load <8 x float>, ptr %.0487184.i, align 1, !tbaa !85 ; 2 uses
  %i.ss = load <8 x float>, ptr %.0485185.i, align 1, !tbaa !85 ; 2 uses
  %i.st = shufflevector <8 x float> %i.sl, <8 x float> %i.sm, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.su = shufflevector <8 x float> %i.sl, <8 x float> %i.sm, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.sv = shufflevector <8 x float> %i.sn, <8 x float> %i.so, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.sw = shufflevector <8 x float> %i.sn, <8 x float> %i.so, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.sx = shufflevector <8 x float> %i.sp, <8 x float> %i.sq, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.sy = shufflevector <8 x float> %i.sp, <8 x float> %i.sq, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.sz = shufflevector <8 x float> %i.sr, <8 x float> %i.ss, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.ta = shufflevector <8 x float> %i.sr, <8 x float> %i.ss, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.tb = shufflevector <8 x float> %i.st, <8 x float> %i.sv, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.tc = shufflevector <8 x float> %i.st, <8 x float> %i.sv, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.td = shufflevector <8 x float> %i.su, <8 x float> %i.sw, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.te = shufflevector <8 x float> %i.su, <8 x float> %i.sw, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.tf = shufflevector <8 x float> %i.sx, <8 x float> %i.sz, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.tg = shufflevector <8 x float> %i.sx, <8 x float> %i.sz, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.th = shufflevector <8 x float> %i.sy, <8 x float> %i.ta, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.ti = shufflevector <8 x float> %i.sy, <8 x float> %i.ta, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.tj = shufflevector <8 x float> %i.tb, <8 x float> %i.tf, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.tk = shufflevector <8 x float> %i.tc, <8 x float> %i.tg, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.tl = shufflevector <8 x float> %i.td, <8 x float> %i.th, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.tm = shufflevector <8 x float> %i.te, <8 x float> %i.ti, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.tn = shufflevector <8 x float> %i.tb, <8 x float> %i.tf, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.to = shufflevector <8 x float> %i.tc, <8 x float> %i.tg, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.tp = shufflevector <8 x float> %i.td, <8 x float> %i.th, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.tq = shufflevector <8 x float> %i.te, <8 x float> %i.ti, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.tr = bitcast <8 x float> %i.tj to <8 x i32>
  %i.ts = lshr <8 x i32> %i.tr, splat (i32 16)    ; 2 uses
  %i.tt = shufflevector <8 x i32> %i.ts, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.tu = shufflevector <8 x i32> %i.ts, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.tv = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.tt, <4 x i32> %i.tu)
  store <8 x i16> %i.tv, ptr %.4187.i, align 1, !tbaa !85
  %i.tw = getelementptr inbounds nuw i8, ptr %.4187.i, i64 16
  %i.tx = bitcast <8 x float> %i.tk to <8 x i32>
  %i.ty = lshr <8 x i32> %i.tx, splat (i32 16)    ; 2 uses
  %i.tz = shufflevector <8 x i32> %i.ty, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ua = shufflevector <8 x i32> %i.ty, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ub = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.tz, <4 x i32> %i.ua)
  store <8 x i16> %i.ub, ptr %i.tw, align 1, !tbaa !85
  %i.uc = getelementptr inbounds nuw i8, ptr %.4187.i, i64 32
  %i.ud = bitcast <8 x float> %i.tl to <8 x i32>
  %i.ue = lshr <8 x i32> %i.ud, splat (i32 16)    ; 2 uses
  %i.uf = shufflevector <8 x i32> %i.ue, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ug = shufflevector <8 x i32> %i.ue, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.uh = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.uf, <4 x i32> %i.ug)
  store <8 x i16> %i.uh, ptr %i.uc, align 1, !tbaa !85
  %i.ui = getelementptr inbounds nuw i8, ptr %.4187.i, i64 48
  %i.uj = bitcast <8 x float> %i.tm to <8 x i32>
  %i.uk = lshr <8 x i32> %i.uj, splat (i32 16)    ; 2 uses
  %i.ul = shufflevector <8 x i32> %i.uk, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.um = shufflevector <8 x i32> %i.uk, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.un = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.ul, <4 x i32> %i.um)
  store <8 x i16> %i.un, ptr %i.ui, align 1, !tbaa !85
  %i.uo = getelementptr inbounds nuw i8, ptr %.4187.i, i64 64
  %i.up = bitcast <8 x float> %i.tn to <8 x i32>
  %i.uq = lshr <8 x i32> %i.up, splat (i32 16)    ; 2 uses
  %i.ur = shufflevector <8 x i32> %i.uq, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.us = shufflevector <8 x i32> %i.uq, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ut = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.ur, <4 x i32> %i.us)
  store <8 x i16> %i.ut, ptr %i.uo, align 1, !tbaa !85
  %i.uu = getelementptr inbounds nuw i8, ptr %.4187.i, i64 80
  %i.uv = bitcast <8 x float> %i.to to <8 x i32>
  %i.uw = lshr <8 x i32> %i.uv, splat (i32 16)    ; 2 uses
  %i.ux = shufflevector <8 x i32> %i.uw, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.uy = shufflevector <8 x i32> %i.uw, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.uz = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.ux, <4 x i32> %i.uy)
  store <8 x i16> %i.uz, ptr %i.uu, align 1, !tbaa !85
  %i.va = getelementptr inbounds nuw i8, ptr %.4187.i, i64 96
  %i.vb = bitcast <8 x float> %i.tp to <8 x i32>
  %i.vc = lshr <8 x i32> %i.vb, splat (i32 16)    ; 2 uses
  %i.vd = shufflevector <8 x i32> %i.vc, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ve = shufflevector <8 x i32> %i.vc, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.vf = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.vd, <4 x i32> %i.ve)
  store <8 x i16> %i.vf, ptr %i.va, align 1, !tbaa !85
  %i.vg = getelementptr inbounds nuw i8, ptr %.4187.i, i64 112
  %i.vh = bitcast <8 x float> %i.tq to <8 x i32>
  %i.vi = lshr <8 x i32> %i.vh, splat (i32 16)    ; 2 uses
  %i.vj = shufflevector <8 x i32> %i.vi, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.vk = shufflevector <8 x i32> %i.vi, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.vl = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.vj, <4 x i32> %i.vk)
  store <8 x i16> %i.vl, ptr %i.vg, align 1, !tbaa !85
  %i.vm = getelementptr inbounds nuw i8, ptr %.4187.i, i64 128 ; 2 uses
  %i.vn = getelementptr inbounds nuw i8, ptr %.0499178.i, i64 32 ; 2 uses
  %i.vo = getelementptr inbounds nuw i8, ptr %.0497179.i, i64 32 ; 2 uses
  %i.vp = getelementptr inbounds nuw i8, ptr %.0495180.i, i64 32 ; 2 uses
  %i.vq = getelementptr inbounds nuw i8, ptr %.0493181.i, i64 32 ; 2 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %.0491182.i, i64 32 ; 2 uses
  %i.vs = getelementptr inbounds nuw i8, ptr %.0489183.i, i64 32 ; 2 uses
  %i.vt = getelementptr inbounds nuw i8, ptr %.0487184.i, i64 32 ; 2 uses
  %i.vu = getelementptr inbounds nuw i8, ptr %.0485185.i, i64 32 ; 2 uses
  %i.vv = add nuw nsw i32 %.0483186.i, 8          ; 2 uses
  %i.vw = or disjoint i32 %i.vv, 7
  %i.vx = icmp slt i32 %i.vw, %.sroa.speculated
  br i1 %i.vx, label %.lr.ph189.i, label %.preheader114.i, !llvm.loop !2558

.lr.ph210.i:                                      ; preds = %.lr.ph210.i.preheader, %.lr.ph210.i
  %.5209.i = phi ptr [ %i.wq, %.lr.ph210.i ], [ %.5209.i.ph, %.lr.ph210.i.preheader ] ; 2 uses
  %.1484208.i = phi i32 [ %i.wz, %.lr.ph210.i ], [ %.1484208.i.ph, %.lr.ph210.i.preheader ]
  %.1486207.i = phi ptr [ %i.wy, %.lr.ph210.i ], [ %.1486207.i.ph, %.lr.ph210.i.preheader ] ; 2 uses
  %.1488206.i = phi ptr [ %i.wx, %.lr.ph210.i ], [ %.1488206.i.ph, %.lr.ph210.i.preheader ] ; 2 uses
  %.1490205.i = phi ptr [ %i.ww, %.lr.ph210.i ], [ %.1490205.i.ph, %.lr.ph210.i.preheader ] ; 2 uses
  %.1492204.i = phi ptr [ %i.wv, %.lr.ph210.i ], [ %.1492204.i.ph, %.lr.ph210.i.preheader ] ; 2 uses
  %.1494203.i = phi ptr [ %i.wu, %.lr.ph210.i ], [ %.1494203.i.ph, %.lr.ph210.i.preheader ] ; 2 uses
  %.1496202.i = phi ptr [ %i.wt, %.lr.ph210.i ], [ %.1496202.i.ph, %.lr.ph210.i.preheader ] ; 2 uses
  %.1498201.i = phi ptr [ %i.ws, %.lr.ph210.i ], [ %.1498201.i.ph, %.lr.ph210.i.preheader ] ; 2 uses
  %.1500200.i = phi ptr [ %i.wr, %.lr.ph210.i ], [ %.1500200.i.ph, %.lr.ph210.i.preheader ] ; 2 uses
  %i.vy = load i32, ptr %.1500200.i, align 4, !tbaa !41
  %i.vz = load i32, ptr %.1498201.i, align 4, !tbaa !41
  %i.wa = load i32, ptr %.1496202.i, align 4, !tbaa !41
  %i.wb = load i32, ptr %.1494203.i, align 4, !tbaa !41
  %i.wc = load i32, ptr %.1492204.i, align 4, !tbaa !41
  %i.wd = load i32, ptr %.1490205.i, align 4, !tbaa !41
  %i.we = load i32, ptr %.1488206.i, align 4, !tbaa !41
  %i.wf = load i32, ptr %.1486207.i, align 4, !tbaa !41
  %i.wg = insertelement <8 x i32> poison, i32 %i.vy, i64 0
  %i.wh = insertelement <8 x i32> %i.wg, i32 %i.vz, i64 1
  %i.wi = insertelement <8 x i32> %i.wh, i32 %i.wa, i64 2
  %i.wj = insertelement <8 x i32> %i.wi, i32 %i.wb, i64 3
  %i.wk = insertelement <8 x i32> %i.wj, i32 %i.wc, i64 4
  %i.wl = insertelement <8 x i32> %i.wk, i32 %i.wd, i64 5
  %i.wm = insertelement <8 x i32> %i.wl, i32 %i.we, i64 6
  %i.wn = insertelement <8 x i32> %i.wm, i32 %i.wf, i64 7
  %i.wo = lshr <8 x i32> %i.wn, splat (i32 16)
  %i.wp = trunc nuw <8 x i32> %i.wo to <8 x i16>
  store <8 x i16> %i.wp, ptr %.5209.i, align 2, !tbaa !102
  %i.wq = getelementptr inbounds nuw i8, ptr %.5209.i, i64 16 ; 2 uses
  %i.wr = getelementptr inbounds nuw i8, ptr %.1500200.i, i64 4
  %i.ws = getelementptr inbounds nuw i8, ptr %.1498201.i, i64 4
  %i.wt = getelementptr inbounds nuw i8, ptr %.1496202.i, i64 4
  %i.wu = getelementptr inbounds nuw i8, ptr %.1494203.i, i64 4
  %i.wv = getelementptr inbounds nuw i8, ptr %.1492204.i, i64 4
  %i.ww = getelementptr inbounds nuw i8, ptr %.1490205.i, i64 4
  %i.wx = getelementptr inbounds nuw i8, ptr %.1488206.i, i64 4
  %i.wy = getelementptr inbounds nuw i8, ptr %.1486207.i, i64 4
  %i.wz = add nuw nsw i32 %.1484208.i, 1          ; 2 uses
  %exitcond378.not.i = icmp eq i32 %i.wz, %.sroa.speculated
  br i1 %exitcond378.not.i, label %._crit_edge211.i, label %.lr.ph210.i, !llvm.loop !2559

._crit_edge211.i:                                 ; preds = %.lr.ph210.i, %middle.block424, %vec.epilog.middle.block463, %.preheader114.i
  %.5.lcssa.i = phi ptr [ %.4.lcssa.i, %.preheader114.i ], [ %i.ro, %vec.epilog.middle.block463 ], [ %i.qo, %middle.block424 ], [ %i.wq, %.lr.ph210.i ] ; 2 uses
  %indvars.iv.next380.i = add nuw nsw i64 %indvars.iv379.i, 8 ; 3 uses
  %i.xa = icmp slt i64 %indvars.iv.next380.i, %invariant.op.i
  br i1 %i.xa, label %bb.d, label %.preheader113.loopexit.i, !llvm.loop !2560

.preheader110.loopexit.i:                         ; preds = %._crit_edge252.i
  %i.xb = trunc nsw i64 %indvars.iv.next384.i to i32
  br label %.preheader110.i

.preheader110.i:                                  ; preds = %.preheader110.loopexit.i, %.preheader113.i
  %.2459.lcssa.i = phi i32 [ %.1458.lcssa.i, %.preheader113.i ], [ %i.xb, %.preheader110.loopexit.i ] ; 3 uses
  %.6.lcssa.i = phi ptr [ %.3.lcssa.i, %.preheader113.i ], [ %.9.lcssa.i, %.preheader110.loopexit.i ] ; 2 uses
  %i.xc = or disjoint i32 %.2459.lcssa.i, 1
  %i.xd = icmp slt i32 %i.xc, %.sroa.speculated57
  br i1 %i.xd, label %.lr.ph287.i, label %.preheader107.i

.lr.ph287.i:                                      ; preds = %.preheader110.i
  %i.xe = sext i32 %.0113 to i64                  ; 2 uses
  %i.xf = icmp sgt i32 %.sroa.speculated, 7
  %i.xg = and i32 %.sroa.speculated, -8
  %i.xh = sext i32 %.2459.lcssa.i to i64
  %i.xi = sext i32 %i.aw to i64                   ; 2 uses
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge252.i, %.lr.ph256.i
  %indvars.iv383.i = phi i64 [ %i.oy, %.lr.ph256.i ], [ %indvars.iv.next384.i, %._crit_edge252.i ] ; 2 uses
  %.6255.i = phi ptr [ %.3.lcssa.i, %.lr.ph256.i ], [ %.9.lcssa.i, %._crit_edge252.i ] ; 2 uses
  %i.xj = load ptr, ptr %8, align 8, !tbaa !22    ; 4 uses
  %i.xk = add nsw i64 %indvars.iv383.i, %i.z      ; 4 uses
  %i.xl = mul nsw i64 %i.xk, %i.oz
  %i.xm = getelementptr inbounds [4 x i8], ptr %i.xj, i64 %i.xl
  %i.xn = getelementptr inbounds [4 x i8], ptr %i.xm, i64 %i.ov ; 2 uses
  %i.xo = add nsw i64 %i.xk, 1
  %i.xp = mul nsw i64 %i.xo, %i.oz
  %i.xq = getelementptr inbounds [4 x i8], ptr %i.xj, i64 %i.xp
  %i.xr = getelementptr inbounds [4 x i8], ptr %i.xq, i64 %i.ov ; 2 uses
  %i.xs = add nsw i64 %i.xk, 2
  %i.xt = mul nsw i64 %i.xs, %i.oz
  %i.xu = getelementptr inbounds [4 x i8], ptr %i.xj, i64 %i.xt
  %i.xv = getelementptr inbounds [4 x i8], ptr %i.xu, i64 %i.ov ; 2 uses
  %i.xw = add nsw i64 %i.xk, 3
  %i.xx = mul nsw i64 %i.xw, %i.oz
  %i.xy = getelementptr inbounds [4 x i8], ptr %i.xj, i64 %i.xx
  %i.xz = getelementptr inbounds [4 x i8], ptr %i.xy, i64 %i.ov ; 2 uses
  br i1 %i.ow, label %.lr.ph225.i, label %.preheader112.i

.preheader112.i:                                  ; preds = %.lr.ph225.i, %bb.e
  %.0480.lcssa.i = phi ptr [ %i.xn, %bb.e ], [ %i.zm, %.lr.ph225.i ] ; 2 uses
  %.0477.lcssa.i = phi ptr [ %i.xr, %bb.e ], [ %i.zn, %.lr.ph225.i ] ; 2 uses
  %.0474.lcssa.i = phi ptr [ %i.xv, %bb.e ], [ %i.zo, %.lr.ph225.i ] ; 2 uses
  %.0471.lcssa.i = phi ptr [ %i.xz, %bb.e ], [ %i.zp, %.lr.ph225.i ] ; 2 uses
  %.0468.lcssa.i = phi i32 [ 0, %bb.e ], [ %i.ox, %.lr.ph225.i ] ; 3 uses
  %.7.lcssa.i = phi ptr [ %.6255.i, %bb.e ], [ %i.zl, %.lr.ph225.i ] ; 2 uses
  %i.ya = or disjoint i32 %.0468.lcssa.i, 3
  %i.yb = icmp slt i32 %i.ya, %.sroa.speculated
  br i1 %i.yb, label %.lr.ph238.i, label %.preheader111.i

.lr.ph225.i:                                      ; preds = %bb.e, %.lr.ph225.i
  %.7223.i = phi ptr [ %i.zl, %.lr.ph225.i ], [ %.6255.i, %bb.e ] ; 5 uses
  %.0468222.i = phi i32 [ %i.zq, %.lr.ph225.i ], [ 0, %bb.e ]
  %.0471221.i = phi ptr [ %i.zp, %.lr.ph225.i ], [ %i.xz, %bb.e ] ; 2 uses
  %.0474220.i = phi ptr [ %i.zo, %.lr.ph225.i ], [ %i.xv, %bb.e ] ; 2 uses
  %.0477219.i = phi ptr [ %i.zn, %.lr.ph225.i ], [ %i.xr, %bb.e ] ; 2 uses
  %.0480218.i = phi ptr [ %i.zm, %.lr.ph225.i ], [ %i.xn, %bb.e ] ; 2 uses
  %i.yc = load <8 x float>, ptr %.0480218.i, align 1, !tbaa !85 ; 2 uses
  %i.yd = load <8 x float>, ptr %.0477219.i, align 1, !tbaa !85 ; 2 uses
  %i.ye = load <8 x float>, ptr %.0474220.i, align 1, !tbaa !85 ; 2 uses
  %i.yf = load <8 x float>, ptr %.0471221.i, align 1, !tbaa !85 ; 2 uses
  %i.yg = shufflevector <8 x float> %i.yc, <8 x float> %i.yd, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.yh = shufflevector <8 x float> %i.yc, <8 x float> %i.yd, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.yi = shufflevector <8 x float> %i.ye, <8 x float> %i.yf, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.yj = shufflevector <8 x float> %i.ye, <8 x float> %i.yf, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.yk = shufflevector <8 x float> %i.yg, <8 x float> %i.yi, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 2, i32 3, i32 10, i32 11>
  %i.yl = shufflevector <8 x float> %i.yh, <8 x float> %i.yj, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 2, i32 3, i32 10, i32 11>
  %i.ym = shufflevector <8 x float> %i.yg, <8 x float> %i.yi, <8 x i32> <i32 4, i32 5, i32 12, i32 13, i32 6, i32 7, i32 14, i32 15>
  %i.yn = shufflevector <8 x float> %i.yh, <8 x float> %i.yj, <8 x i32> <i32 4, i32 5, i32 12, i32 13, i32 6, i32 7, i32 14, i32 15>
  %i.yo = bitcast <8 x float> %i.yk to <8 x i32>
  %i.yp = lshr <8 x i32> %i.yo, splat (i32 16)    ; 2 uses
  %i.yq = shufflevector <8 x i32> %i.yp, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.yr = shufflevector <8 x i32> %i.yp, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ys = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.yq, <4 x i32> %i.yr)
  store <8 x i16> %i.ys, ptr %.7223.i, align 1, !tbaa !85
  %i.yt = getelementptr inbounds nuw i8, ptr %.7223.i, i64 16
  %i.yu = bitcast <8 x float> %i.yl to <8 x i32>
  %i.yv = lshr <8 x i32> %i.yu, splat (i32 16)    ; 2 uses
  %i.yw = shufflevector <8 x i32> %i.yv, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.yx = shufflevector <8 x i32> %i.yv, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.yy = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.yw, <4 x i32> %i.yx)
  store <8 x i16> %i.yy, ptr %i.yt, align 1, !tbaa !85
  %i.yz = getelementptr inbounds nuw i8, ptr %.7223.i, i64 32
  %i.za = bitcast <8 x float> %i.ym to <8 x i32>
  %i.zb = lshr <8 x i32> %i.za, splat (i32 16)    ; 2 uses
  %i.zc = shufflevector <8 x i32> %i.zb, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.zd = shufflevector <8 x i32> %i.zb, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ze = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.zc, <4 x i32> %i.zd)
  store <8 x i16> %i.ze, ptr %i.yz, align 1, !tbaa !85
  %i.zf = getelementptr inbounds nuw i8, ptr %.7223.i, i64 48
  %i.zg = bitcast <8 x float> %i.yn to <8 x i32>
  %i.zh = lshr <8 x i32> %i.zg, splat (i32 16)    ; 2 uses
  %i.zi = shufflevector <8 x i32> %i.zh, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.zj = shufflevector <8 x i32> %i.zh, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.zk = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.zi, <4 x i32> %i.zj)
  store <8 x i16> %i.zk, ptr %i.zf, align 1, !tbaa !85
  %i.zl = getelementptr inbounds nuw i8, ptr %.7223.i, i64 64 ; 2 uses
  %i.zm = getelementptr inbounds nuw i8, ptr %.0480218.i, i64 32 ; 2 uses
  %i.zn = getelementptr inbounds nuw i8, ptr %.0477219.i, i64 32 ; 2 uses
  %i.zo = getelementptr inbounds nuw i8, ptr %.0474220.i, i64 32 ; 2 uses
  %i.zp = getelementptr inbounds nuw i8, ptr %.0471221.i, i64 32 ; 2 uses
  %i.zq = add nuw nsw i32 %.0468222.i, 8          ; 2 uses
  %i.zr = or disjoint i32 %i.zq, 7
  %i.zs = icmp slt i32 %i.zr, %.sroa.speculated
  br i1 %i.zs, label %.lr.ph225.i, label %.preheader112.i, !llvm.loop !2561

.preheader111.i:                                  ; preds = %.lr.ph238.i, %.preheader112.i
  %.1481.lcssa.i = phi ptr [ %.0480.lcssa.i, %.preheader112.i ], [ %i.acn, %.lr.ph238.i ] ; 5 uses
  %.1478.lcssa.i = phi ptr [ %.0477.lcssa.i, %.preheader112.i ], [ %i.aco, %.lr.ph238.i ] ; 5 uses
  %.1475.lcssa.i = phi ptr [ %.0474.lcssa.i, %.preheader112.i ], [ %i.acp, %.lr.ph238.i ] ; 5 uses
  %.1472.lcssa.i = phi ptr [ %.0471.lcssa.i, %.preheader112.i ], [ %i.acq, %.lr.ph238.i ] ; 5 uses
  %.1469.lcssa.i = phi i32 [ %.0468.lcssa.i, %.preheader112.i ], [ %i.acr, %.lr.ph238.i ] ; 5 uses
  %.8.lcssa.i = phi ptr [ %.7.lcssa.i, %.preheader112.i ], [ %i.acm, %.lr.ph238.i ] ; 6 uses
  %i.zt = icmp slt i32 %.1469.lcssa.i, %.sroa.speculated
  br i1 %i.zt, label %iter.check371, label %._crit_edge252.i

iter.check371:                                    ; preds = %.preheader111.i
  %i.zu = xor i32 %.1469.lcssa.i, -1
  %i.zv = add i32 %.sroa.speculated, %i.zu        ; 3 uses
  %i.zw = zext i32 %i.zv to i64
  %i.zx = add nuw nsw i64 %i.zw, 1                ; 5 uses
  %min.iters.check345 = icmp ult i32 %i.zv, 3
  br i1 %min.iters.check345, label %.lr.ph251.i.preheader, label %vector.main.loop.iter.check346

vector.main.loop.iter.check346:                   ; preds = %iter.check371
  %min.iters.check347 = icmp ult i32 %i.zv, 15
  br i1 %min.iters.check347, label %vec.epilog.ph375, label %vector.ph348

vector.ph348:                                     ; preds = %vector.main.loop.iter.check346
  %i.zy = and i64 %i.zx, 12
  %n.vec349 = and i64 %i.zx, 8589934576           ; 6 uses
  %i.zz = shl nuw nsw i64 %n.vec349, 3
  %i.aaa = getelementptr i8, ptr %.8.lcssa.i, i64 %i.zz ; 2 uses
  %i.aab = trunc i64 %n.vec349 to i32
  %i.aac = add i32 %.1469.lcssa.i, %i.aab
  %i.aad = shl nuw nsw i64 %n.vec349, 2           ; 4 uses
  %i.aae = getelementptr i8, ptr %.1472.lcssa.i, i64 %i.aad
  %i.aaf = getelementptr i8, ptr %.1475.lcssa.i, i64 %i.aad
  %i.aag = getelementptr i8, ptr %.1478.lcssa.i, i64 %i.aad
  %i.aah = getelementptr i8, ptr %.1481.lcssa.i, i64 %i.aad
  br label %vector.body350

vector.body350:                                   ; preds = %vector.body350, %vector.ph348
  %index351 = phi i64 [ 0, %vector.ph348 ], [ %index.next362, %vector.body350 ] ; 3 uses
  %i.aai = shl i64 %index351, 3
  %next.gep352 = getelementptr i8, ptr %.8.lcssa.i, i64 %i.aai
  %i.aaj = shl i64 %index351, 2                   ; 4 uses
  %next.gep353 = getelementptr i8, ptr %.1472.lcssa.i, i64 %i.aaj
  %next.gep354 = getelementptr i8, ptr %.1475.lcssa.i, i64 %i.aaj
  %next.gep355 = getelementptr i8, ptr %.1478.lcssa.i, i64 %i.aaj
  %next.gep356 = getelementptr i8, ptr %.1481.lcssa.i, i64 %i.aaj
  %wide.load357 = load <16 x i32>, ptr %next.gep356, align 4, !tbaa !41
  %wide.load358 = load <16 x i32>, ptr %next.gep355, align 4, !tbaa !41
  %wide.load359 = load <16 x i32>, ptr %next.gep354, align 4, !tbaa !41
  %wide.load360 = load <16 x i32>, ptr %next.gep353, align 4, !tbaa !41
  %i.aak = shufflevector <16 x i32> %wide.load357, <16 x i32> %wide.load358, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.aal = lshr <32 x i32> %i.aak, splat (i32 16)
  %i.aam = trunc nuw <32 x i32> %i.aal to <32 x i16>
  %i.aan = shufflevector <16 x i32> %wide.load359, <16 x i32> %wide.load360, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.aao = lshr <32 x i32> %i.aan, splat (i32 16)
  %i.aap = trunc nuw <32 x i32> %i.aao to <32 x i16>
  %interleaved.vec361 = shufflevector <32 x i16> %i.aam, <32 x i16> %i.aap, <64 x i32> <i32 0, i32 16, i32 32, i32 48, i32 1, i32 17, i32 33, i32 49, i32 2, i32 18, i32 34, i32 50, i32 3, i32 19, i32 35, i32 51, i32 4, i32 20, i32 36, i32 52, i32 5, i32 21, i32 37, i32 53, i32 6, i32 22, i32 38, i32 54, i32 7, i32 23, i32 39, i32 55, i32 8, i32 24, i32 40, i32 56, i32 9, i32 25, i32 41, i32 57, i32 10, i32 26, i32 42, i32 58, i32 11, i32 27, i32 43, i32 59, i32 12, i32 28, i32 44, i32 60, i32 13, i32 29, i32 45, i32 61, i32 14, i32 30, i32 46, i32 62, i32 15, i32 31, i32 47, i32 63>
  store <64 x i16> %interleaved.vec361, ptr %next.gep352, align 2, !tbaa !102
  %index.next362 = add nuw i64 %index351, 16      ; 2 uses
  %i.aaq = icmp eq i64 %index.next362, %n.vec349
  br i1 %i.aaq, label %middle.block363, label %vector.body350, !llvm.loop !2562

middle.block363:                                  ; preds = %vector.body350
  %cmp.n364 = icmp eq i64 %i.zx, %n.vec349
  br i1 %cmp.n364, label %._crit_edge252.i, label %vec.epilog.iter.check373

vec.epilog.iter.check373:                         ; preds = %middle.block363
  %min.epilog.iters.check374 = icmp eq i64 %i.zy, 0
  br i1 %min.epilog.iters.check374, label %.lr.ph251.i.preheader, label %vec.epilog.ph375, !prof !86

vec.epilog.ph375:                                 ; preds = %vector.main.loop.iter.check346, %vec.epilog.iter.check373
  %vec.epilog.resume.val365 = phi i64 [ %n.vec349, %vec.epilog.iter.check373 ], [ 0, %vector.main.loop.iter.check346 ]
  %n.vec376 = and i64 %i.zx, 8589934588           ; 5 uses
  %i.aar = shl nuw nsw i64 %n.vec376, 3
  %i.aas = getelementptr i8, ptr %.8.lcssa.i, i64 %i.aar ; 2 uses
  %i.aat = trunc i64 %n.vec376 to i32
  %i.aau = add i32 %.1469.lcssa.i, %i.aat
  %i.aav = shl nuw nsw i64 %n.vec376, 2           ; 4 uses
  %i.aaw = getelementptr i8, ptr %.1472.lcssa.i, i64 %i.aav
  %i.aax = getelementptr i8, ptr %.1475.lcssa.i, i64 %i.aav
  %i.aay = getelementptr i8, ptr %.1478.lcssa.i, i64 %i.aav
  %i.aaz = getelementptr i8, ptr %.1481.lcssa.i, i64 %i.aav
  br label %vec.epilog.vector.body377

vec.epilog.vector.body377:                        ; preds = %vec.epilog.vector.body377, %vec.epilog.ph375
  %index378 = phi i64 [ %vec.epilog.resume.val365, %vec.epilog.ph375 ], [ %index.next389, %vec.epilog.vector.body377 ] ; 3 uses
  %i.aba = shl i64 %index378, 3
  %next.gep379 = getelementptr i8, ptr %.8.lcssa.i, i64 %i.aba
  %i.abb = shl i64 %index378, 2                   ; 4 uses
  %next.gep380 = getelementptr i8, ptr %.1472.lcssa.i, i64 %i.abb
  %next.gep381 = getelementptr i8, ptr %.1475.lcssa.i, i64 %i.abb
  %next.gep382 = getelementptr i8, ptr %.1478.lcssa.i, i64 %i.abb
  %next.gep383 = getelementptr i8, ptr %.1481.lcssa.i, i64 %i.abb
  %wide.load384 = load <4 x i32>, ptr %next.gep383, align 4, !tbaa !41
  %wide.load385 = load <4 x i32>, ptr %next.gep382, align 4, !tbaa !41
end_hunk_13
begin_hunk_14_@_ZN4ncnnL29convolution_im2col_gemm_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_iRKNS_6OptionE.omp_outlined:bb.a
  %.0446708.i.us.i = phi i32 [ %i.bgv, %.lr.ph710.i.us.i ], [ 0, %.lr.ph710.preheader.i.us.i ]
  %.0447707.i.us.i = phi ptr [ %i.bgu, %.lr.ph710.i.us.i ], [ %i.bet, %.lr.ph710.preheader.i.us.i ] ; 5 uses
  %i.beu = load <8 x i16>, ptr %.0447707.i.us.i, align 1, !tbaa !85 ; 2 uses
  %i.bev = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.beu, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bew = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.beu, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.bex = shufflevector <8 x i16> %i.bev, <8 x i16> %i.bew, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bey = bitcast <16 x i16> %i.bex to <8 x i32> ; 2 uses
  %i.bez = getelementptr inbounds nuw i8, ptr %.0447707.i.us.i, i64 16
  %i.bfa = load <8 x i16>, ptr %i.bez, align 1, !tbaa !85 ; 2 uses
  %i.bfb = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.bfa, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bfc = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.bfa, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.bfd = shufflevector <8 x i16> %i.bfb, <8 x i16> %i.bfc, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bfe = bitcast <16 x i16> %i.bfd to <8 x i32> ; 2 uses
  %i.bff = getelementptr inbounds nuw i8, ptr %.0447707.i.us.i, i64 32
  %i.bfg = load <8 x i16>, ptr %i.bff, align 1, !tbaa !85 ; 2 uses
  %i.bfh = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.bfg, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bfi = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.bfg, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.bfj = shufflevector <8 x i16> %i.bfh, <8 x i16> %i.bfi, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bfk = bitcast <16 x i16> %i.bfj to <8 x i32> ; 2 uses
  %i.bfl = getelementptr inbounds nuw i8, ptr %.0447707.i.us.i, i64 48
  %i.bfm = load <8 x i16>, ptr %i.bfl, align 1, !tbaa !85 ; 2 uses
  %i.bfn = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.bfm, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bfo = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.bfm, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.bfp = shufflevector <8 x i16> %i.bfn, <8 x i16> %i.bfo, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bfq = bitcast <16 x i16> %i.bfp to <8 x i32> ; 2 uses
  %i.bfr = shufflevector <8 x i32> %i.bey, <8 x i32> %i.bfe, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.bfs = shufflevector <8 x i32> %i.bey, <8 x i32> %i.bfe, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.bft = shufflevector <8 x i32> %i.bfk, <8 x i32> %i.bfq, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.bfu = shufflevector <8 x i32> %i.bfk, <8 x i32> %i.bfq, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.bfv = shufflevector <8 x i32> %i.bfr, <8 x i32> %i.bft, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 2, i32 3, i32 10, i32 11>
  %i.bfw = shufflevector <8 x i32> %i.bfs, <8 x i32> %i.bfu, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 2, i32 3, i32 10, i32 11>
  %i.bfx = shufflevector <8 x i32> %i.bfr, <8 x i32> %i.bft, <8 x i32> <i32 4, i32 5, i32 12, i32 13, i32 6, i32 7, i32 14, i32 15>
  %i.bfy = shufflevector <8 x i32> %i.bfs, <8 x i32> %i.bfu, <8 x i32> <i32 4, i32 5, i32 12, i32 13, i32 6, i32 7, i32 14, i32 15>
  %i.bfz = lshr exact <8 x i32> %i.bfv, splat (i32 16) ; 2 uses
  %i.bga = shufflevector <8 x i32> %i.bfz, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bgb = shufflevector <8 x i32> %i.bfz, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bgc = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.bga, <4 x i32> %i.bgb)
  store <8 x i16> %i.bgc, ptr %.21709.i.us.i, align 1, !tbaa !85
  %i.bgd = getelementptr inbounds nuw i8, ptr %.21709.i.us.i, i64 16
  %i.bge = lshr exact <8 x i32> %i.bfw, splat (i32 16) ; 2 uses
  %i.bgf = shufflevector <8 x i32> %i.bge, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bgg = shufflevector <8 x i32> %i.bge, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bgh = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.bgf, <4 x i32> %i.bgg)
  store <8 x i16> %i.bgh, ptr %i.bgd, align 1, !tbaa !85
  %i.bgi = getelementptr inbounds nuw i8, ptr %.21709.i.us.i, i64 32
  %i.bgj = lshr exact <8 x i32> %i.bfx, splat (i32 16) ; 2 uses
  %i.bgk = shufflevector <8 x i32> %i.bgj, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bgl = shufflevector <8 x i32> %i.bgj, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bgm = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.bgk, <4 x i32> %i.bgl)
  store <8 x i16> %i.bgm, ptr %i.bgi, align 1, !tbaa !85
  %i.bgn = getelementptr inbounds nuw i8, ptr %.21709.i.us.i, i64 48
  %i.bgo = lshr exact <8 x i32> %i.bfy, splat (i32 16) ; 2 uses
  %i.bgp = shufflevector <8 x i32> %i.bgo, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bgq = shufflevector <8 x i32> %i.bgo, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bgr = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.bgp, <4 x i32> %i.bgq)
  store <8 x i16> %i.bgr, ptr %i.bgn, align 1, !tbaa !85
  %i.bgs = getelementptr inbounds nuw i8, ptr %.21709.i.us.i, i64 64 ; 2 uses
  %i.bgt = load i64, ptr %i.p, align 8, !tbaa !23
  %.idx468.i.us.i = shl i64 %i.bgt, 4
  %i.bgu = getelementptr inbounds nuw i8, ptr %.0447707.i.us.i, i64 %.idx468.i.us.i
  %i.bgv = add nuw nsw i32 %.0446708.i.us.i, 1    ; 2 uses
  %exitcond780.not.i.us.i = icmp eq i32 %i.bgv, %i.baj
  br i1 %exitcond780.not.i.us.i, label %.loopexit640.i.us.i, label %.lr.ph710.i.us.i, !llvm.loop !3061

_ZN4ncnn3MatD2Ev.exit497.i.us.i:                  ; preds = %.split852.i.us.i
  br i1 %i.bag, label %.lr.ph705.preheader.i.us.i, label %.loopexit640.i.us.i

.lr.ph705.preheader.i.us.i:                       ; preds = %_ZN4ncnn3MatD2Ev.exit497.i.us.i
  %i.bgw = load ptr, ptr %9, align 8, !tbaa !22, !noalias !3096
  %i.bgx = load i64, ptr %i.p, align 8, !tbaa !23, !noalias !3096
  %i.bgy = mul i64 %i.bgx, %i.bae
  %i.bgz = load i64, ptr %i.q, align 8, !tbaa !64, !noalias !3096
  %i.bha = mul i64 %i.bgy, %i.bgz
  %i.bhb = getelementptr inbounds nuw i8, ptr %i.bgw, i64 %i.bha
  %i.bhc = add nsw i64 %indvars.iv783.i.us.i, %i.bat
  %.idx805.i.us.i = shl nsw i64 %i.bhc, 5
  %i.bhd = getelementptr inbounds i8, ptr %i.bhb, i64 %.idx805.i.us.i
  br label %.lr.ph705.i.us.i

.lr.ph705.i.us.i:                                 ; preds = %.lr.ph705.i.us.i, %.lr.ph705.preheader.i.us.i
  %.19704.i.us.i = phi ptr [ %i.bka, %.lr.ph705.i.us.i ], [ %.18723.i.us.i, %.lr.ph705.preheader.i.us.i ] ; 5 uses
  %.0448703.i.us.i = phi i32 [ %i.bkd, %.lr.ph705.i.us.i ], [ 0, %.lr.ph705.preheader.i.us.i ]
  %.0449702.i.us.i = phi ptr [ %i.bkc, %.lr.ph705.i.us.i ], [ %i.bhd, %.lr.ph705.preheader.i.us.i ] ; 5 uses
  %i.bhe = load <16 x i16>, ptr %.0449702.i.us.i, align 1, !tbaa !85 ; 2 uses
  %i.bhf = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.bhe, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.bhg = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.bhe, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bhh = shufflevector <16 x i16> %i.bhf, <16 x i16> %i.bhg, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.bhi = shufflevector <16 x i16> %i.bhf, <16 x i16> %i.bhg, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.bhj = bitcast <16 x i16> %i.bhh to <8 x i32>
  %i.bhk = bitcast <16 x i16> %i.bhi to <8 x i32>
  %i.bhl = shufflevector <8 x i32> %i.bhj, <8 x i32> %i.bhk, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.bhm = getelementptr inbounds nuw i8, ptr %.0449702.i.us.i, i64 32
  %i.bhn = load <16 x i16>, ptr %i.bhm, align 1, !tbaa !85 ; 2 uses
  %i.bho = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.bhn, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.bhp = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.bhn, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bhq = shufflevector <16 x i16> %i.bho, <16 x i16> %i.bhp, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.bhr = shufflevector <16 x i16> %i.bho, <16 x i16> %i.bhp, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.bhs = bitcast <16 x i16> %i.bhq to <8 x i32>
  %i.bht = bitcast <16 x i16> %i.bhr to <8 x i32>
  %i.bhu = shufflevector <8 x i32> %i.bhs, <8 x i32> %i.bht, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.bhv = getelementptr inbounds nuw i8, ptr %.0449702.i.us.i, i64 64
  %i.bhw = load <16 x i16>, ptr %i.bhv, align 1, !tbaa !85 ; 2 uses
  %i.bhx = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.bhw, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.bhy = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.bhw, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bhz = shufflevector <16 x i16> %i.bhx, <16 x i16> %i.bhy, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.bia = shufflevector <16 x i16> %i.bhx, <16 x i16> %i.bhy, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.bib = bitcast <16 x i16> %i.bhz to <8 x i32>
  %i.bic = bitcast <16 x i16> %i.bia to <8 x i32>
  %i.bid = shufflevector <8 x i32> %i.bib, <8 x i32> %i.bic, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.bie = getelementptr inbounds nuw i8, ptr %.0449702.i.us.i, i64 96
  %i.bif = load <16 x i16>, ptr %i.bie, align 1, !tbaa !85 ; 2 uses
  %i.big = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.bif, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.bih = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.bif, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bii = shufflevector <16 x i16> %i.big, <16 x i16> %i.bih, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.bij = shufflevector <16 x i16> %i.big, <16 x i16> %i.bih, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.bik = bitcast <16 x i16> %i.bii to <8 x i32>
  %i.bil = bitcast <16 x i16> %i.bij to <8 x i32>
  %i.bim = shufflevector <8 x i32> %i.bik, <8 x i32> %i.bil, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.bin = shufflevector <16 x i32> %i.bhl, <16 x i32> %i.bhu, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.bio = shufflevector <16 x i32> %i.bhl, <16 x i32> %i.bhu, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bip = shufflevector <16 x i32> %i.bid, <16 x i32> %i.bim, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.biq = shufflevector <16 x i32> %i.bid, <16 x i32> %i.bim, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bir = shufflevector <16 x i32> %i.bin, <16 x i32> %i.bip, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 8, i32 9, i32 24, i32 25, i32 2, i32 3, i32 18, i32 19, i32 10, i32 11, i32 26, i32 27> ; 2 uses
  %i.bis = shufflevector <16 x i32> %i.bio, <16 x i32> %i.biq, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 8, i32 9, i32 24, i32 25, i32 2, i32 3, i32 18, i32 19, i32 10, i32 11, i32 26, i32 27> ; 2 uses
  %i.bit = shufflevector <16 x i32> %i.bin, <16 x i32> %i.bip, <16 x i32> <i32 4, i32 5, i32 20, i32 21, i32 12, i32 13, i32 28, i32 29, i32 6, i32 7, i32 22, i32 23, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.biu = shufflevector <16 x i32> %i.bio, <16 x i32> %i.biq, <16 x i32> <i32 4, i32 5, i32 20, i32 21, i32 12, i32 13, i32 28, i32 29, i32 6, i32 7, i32 22, i32 23, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.biv = shufflevector <16 x i32> %i.bir, <16 x i32> %i.bis, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.biw = shufflevector <16 x i32> %i.bit, <16 x i32> %i.biu, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.bix = shufflevector <16 x i32> %i.bir, <16 x i32> %i.bis, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.biy = shufflevector <16 x i32> %i.bit, <16 x i32> %i.biu, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.biz = lshr <16 x i32> %i.biv, splat (i32 16) ; 2 uses
  %i.bja = shufflevector <16 x i32> %i.biz, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bjb = shufflevector <16 x i32> %i.biz, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bjc = call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.bja, <8 x i32> %i.bjb)
  %i.bjd = bitcast <16 x i16> %i.bjc to <4 x i64>
  %i.bje = shufflevector <4 x i64> %i.bjd, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.bje, ptr %.19704.i.us.i, align 1, !tbaa !85
  %i.bjf = getelementptr inbounds nuw i8, ptr %.19704.i.us.i, i64 32
  %i.bjg = lshr <16 x i32> %i.biw, splat (i32 16) ; 2 uses
  %i.bjh = shufflevector <16 x i32> %i.bjg, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bji = shufflevector <16 x i32> %i.bjg, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bjj = call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.bjh, <8 x i32> %i.bji)
  %i.bjk = bitcast <16 x i16> %i.bjj to <4 x i64>
  %i.bjl = shufflevector <4 x i64> %i.bjk, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.bjl, ptr %i.bjf, align 1, !tbaa !85
  %i.bjm = getelementptr inbounds nuw i8, ptr %.19704.i.us.i, i64 64
  %i.bjn = lshr <16 x i32> %i.bix, splat (i32 16) ; 2 uses
  %i.bjo = shufflevector <16 x i32> %i.bjn, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bjp = shufflevector <16 x i32> %i.bjn, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bjq = call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.bjo, <8 x i32> %i.bjp)
  %i.bjr = bitcast <16 x i16> %i.bjq to <4 x i64>
  %i.bjs = shufflevector <4 x i64> %i.bjr, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.bjs, ptr %i.bjm, align 1, !tbaa !85
  %i.bjt = getelementptr inbounds nuw i8, ptr %.19704.i.us.i, i64 96
  %i.bju = lshr <16 x i32> %i.biy, splat (i32 16) ; 2 uses
  %i.bjv = shufflevector <16 x i32> %i.bju, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bjw = shufflevector <16 x i32> %i.bju, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bjx = call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.bjv, <8 x i32> %i.bjw)
  %i.bjy = bitcast <16 x i16> %i.bjx to <4 x i64>
  %i.bjz = shufflevector <4 x i64> %i.bjy, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.bjz, ptr %i.bjt, align 1, !tbaa !85
  %i.bka = getelementptr inbounds nuw i8, ptr %.19704.i.us.i, i64 128 ; 2 uses
  %i.bkb = load i64, ptr %i.p, align 8, !tbaa !23
  %.idx469.i.us.i = shl i64 %i.bkb, 5
  %i.bkc = getelementptr inbounds nuw i8, ptr %.0449702.i.us.i, i64 %.idx469.i.us.i
  %i.bkd = add nuw nsw i32 %.0448703.i.us.i, 1    ; 2 uses
  %exitcond779.not.i.us.i = icmp eq i32 %i.bkd, %i.baf
  br i1 %exitcond779.not.i.us.i, label %.loopexit640.i.us.i, label %.lr.ph705.i.us.i, !llvm.loop !3064

.loopexit640.i.us.i.loopexit199.unr-lcssa:        ; preds = %.lr.ph720.i.us.i
  br i1 %lcmp.mod237.not, label %.loopexit640.i.us.i, label %.lr.ph720.i.us.i.epil.preheader

.lr.ph720.i.us.i.epil.preheader:                  ; preds = %.loopexit640.i.us.i.loopexit199.unr-lcssa, %.lr.ph720.preheader.i.us.i
  %.0437718.i.us.i.epil.init = phi ptr [ %i.bbl, %.lr.ph720.preheader.i.us.i ], [ %i.bcb, %.loopexit640.i.us.i.loopexit199.unr-lcssa ]
  %.25717.i.us.i.epil.init = phi ptr [ %.18723.i.us.i, %.lr.ph720.preheader.i.us.i ], [ %i.bbz, %.loopexit640.i.us.i.loopexit199.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod239)
  br label %.lr.ph720.i.us.i.epil

.lr.ph720.i.us.i.epil:                            ; preds = %.lr.ph720.i.us.i.epil, %.lr.ph720.i.us.i.epil.preheader
  %.0437718.i.us.i.epil = phi ptr [ %i.bkh, %.lr.ph720.i.us.i.epil ], [ %.0437718.i.us.i.epil.init, %.lr.ph720.i.us.i.epil.preheader ] ; 2 uses
  %.25717.i.us.i.epil = phi ptr [ %i.bkf, %.lr.ph720.i.us.i.epil ], [ %.25717.i.us.i.epil.init, %.lr.ph720.i.us.i.epil.preheader ] ; 2 uses
  %epil.iter236 = phi i32 [ %epil.iter236.next, %.lr.ph720.i.us.i.epil ], [ 0, %.lr.ph720.i.us.i.epil.preheader ]
  %i.bke = load i64, ptr %.0437718.i.us.i.epil, align 1, !tbaa !85
  store i64 %i.bke, ptr %.25717.i.us.i.epil, align 1, !tbaa !85
  %i.bkf = getelementptr inbounds nuw i8, ptr %.25717.i.us.i.epil, i64 8 ; 2 uses
  %i.bkg = load i64, ptr %i.p, align 8, !tbaa !23
  %i.bkh = getelementptr inbounds nuw [2 x i8], ptr %.0437718.i.us.i.epil, i64 %i.bkg
  %epil.iter236.next = add i32 %epil.iter236, 1   ; 2 uses
  %epil.iter236.cmp.not = icmp eq i32 %epil.iter236.next, %xtraiter235
  br i1 %epil.iter236.cmp.not, label %.loopexit640.i.us.i, label %.lr.ph720.i.us.i.epil, !llvm.loop !3065

.loopexit640.i.us.i:                              ; preds = %.loopexit640.i.us.i.loopexit199.unr-lcssa, %.lr.ph720.i.us.i.epil, %.lr.ph715.i.us.i, %.lr.ph710.i.us.i, %.lr.ph705.i.us.i, %_ZN4ncnn3MatD2Ev.exit497.i.us.i, %_ZN4ncnn3MatD2Ev.exit496.i.us.i, %_ZN4ncnn3MatD2Ev.exit495.i.us.i, %_ZN4ncnn3MatD2Ev.exit494.i.us.i, %.split852.i.us.i
  %.26.i.us.i = phi ptr [ %.18723.i.us.i, %.split852.i.us.i ], [ %.18723.i.us.i, %_ZN4ncnn3MatD2Ev.exit494.i.us.i ], [ %i.bei, %.lr.ph715.i.us.i ], [ %i.bgs, %.lr.ph710.i.us.i ], [ %.18723.i.us.i, %_ZN4ncnn3MatD2Ev.exit495.i.us.i ], [ %i.bka, %.lr.ph705.i.us.i ], [ %.18723.i.us.i, %_ZN4ncnn3MatD2Ev.exit496.i.us.i ], [ %.18723.i.us.i, %_ZN4ncnn3MatD2Ev.exit497.i.us.i ], [ %i.bbz, %.loopexit640.i.us.i.loopexit199.unr-lcssa ], [ %i.bkf, %.lr.ph720.i.us.i.epil ] ; 2 uses
  %indvars.iv.next784.i.us.i = add nuw nsw i64 %indvars.iv783.i.us.i, 4 ; 3 uses
  %i.bki = icmp slt i64 %indvars.iv.next784.i.us.i, %invariant.op850.i.i
  br i1 %i.bki, label %.split852.i.us.i, label %.preheader.loopexit.i.i, !llvm.loop !3066

.preheader.loopexit.i.i:                          ; preds = %.loopexit640.i.us.i, %.loopexit640.i.preheader.i
  %.us-phi74.i = phi ptr [ %.9.lcssa.i.i, %.loopexit640.i.preheader.i ], [ %.26.i.us.i, %.loopexit640.i.us.i ]
  %.us-phi75.i = phi i64 [ %i.bbd, %.loopexit640.i.preheader.i ], [ %indvars.iv.next784.i.us.i, %.loopexit640.i.us.i ]
  %i.bkj = trunc nsw i64 %.us-phi75.i to i32
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.loopexit.i.i, %.preheader644.i.i
  %.2441.lcssa.i.i = phi i32 [ %.1440.lcssa.i.i, %.preheader644.i.i ], [ %i.bkj, %.preheader.loopexit.i.i ] ; 2 uses
  %.18.lcssa.i.i = phi ptr [ %.9.lcssa.i.i, %.preheader644.i.i ], [ %.us-phi74.i, %.preheader.loopexit.i.i ]
  %i.bkk = icmp slt i32 %.2441.lcssa.i.i, %.sroa.speculated64
  br i1 %i.bkk, label %.lr.ph749.i.i, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph749.i.i:                                    ; preds = %.preheader.i.i
  %i.bkl = sdiv i32 %i.x, 16
  %i.bkm = sext i32 %i.bkl to i64
  %i.bkn = lshr i32 %.sroa.speculated, 4          ; 3 uses
  %i.bko = icmp sgt i32 %.sroa.speculated, 15
  %i.bkp = sdiv i32 %i.x, 8
  %i.bkq = sext i32 %i.bkp to i64
  %i.bkr = lshr i32 %.sroa.speculated, 3          ; 3 uses
  %i.bks = icmp sgt i32 %.sroa.speculated, 7
  %i.bkt = sdiv i32 %i.x, 4
  %i.bku = sext i32 %i.bkt to i64
  %i.bkv = lshr i32 %.sroa.speculated, 2          ; 3 uses
  %i.bkw = icmp sgt i32 %.sroa.speculated, 3
  %i.bkx = sext i32 %i.x to i64
  %i.bky = icmp sgt i32 %.sroa.speculated, 0
  %i.bkz = sext i32 %i.v to i64                   ; 4 uses
  %wide.trip.count.i.i = sext i32 %.sroa.speculated64 to i64
  %i.bla = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.bb)
  %i.blb = icmp eq i32 %i.bla, 1
  %i.blc = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.bb, i1 true)
  br i1 %i.blb, label %.split853.i.preheader.i, label %_ZN4ncnn3MatD2Ev.exit

.split853.i.preheader.i:                          ; preds = %.lr.ph749.i.i
  %i.bld = sext i32 %.2441.lcssa.i.i to i64
  %i.ble = add i32 %.sroa.speculated, -1
  %i.blf = add nsw i32 %i.bkv, -1
  %i.blg = add nsw i32 %i.bkr, -1
  %i.blh = add nsw i32 %i.bkn, -1
  %xtraiter242 = and i32 %.sroa.speculated, 7     ; 3 uses
  %i.bli = icmp ult i32 %i.ble, 7
  %unroll_iter247 = and i32 %.sroa.speculated, 2147483640
  %lcmp.mod244.not = icmp eq i32 %xtraiter242, 0
  %lcmp.mod246 = icmp ne i32 %xtraiter242, 0
  %xtraiter249 = and i32 %i.bkv, 3                ; 3 uses
  %i.blj = icmp ult i32 %i.blf, 3
  %unroll_iter254 = and i32 %i.bkv, 536870908
  %lcmp.mod251.not = icmp eq i32 %xtraiter249, 0
  %lcmp.mod253 = icmp ne i32 %xtraiter249, 0
  %xtraiter256 = and i32 %i.bkr, 3                ; 3 uses
  %i.blk = icmp ult i32 %i.blg, 3
  %unroll_iter261 = and i32 %i.bkr, 268435452
  %lcmp.mod258.not = icmp eq i32 %xtraiter256, 0
  %lcmp.mod260 = icmp ne i32 %xtraiter256, 0
  %xtraiter263 = and i32 %i.bkn, 3                ; 3 uses
  %i.bll = icmp ult i32 %i.blh, 3
  %unroll_iter268 = and i32 %i.bkn, 134217724
  %lcmp.mod265.not = icmp eq i32 %xtraiter263, 0
  %lcmp.mod267 = icmp ne i32 %xtraiter263, 0
  br label %.split853.i.i

.split853.i.i:                                    ; preds = %.loopexit.i.i, %.split853.i.preheader.i
  %indvars.iv790.i.i = phi i64 [ %indvars.iv.next791.i.i, %.loopexit.i.i ], [ %i.bld, %.split853.i.preheader.i ] ; 5 uses
  %.27748.i.i = phi ptr [ %.35.i.i, %.loopexit.i.i ], [ %.18.lcssa.i.i, %.split853.i.preheader.i ] ; 13 uses
  switch i32 %i.blc, label %.loopexit.i.i [
    i32 4, label %_ZN4ncnn3MatD2Ev.exit493.i.i
    i32 3, label %_ZN4ncnn3MatD2Ev.exit492.i.i
    i32 2, label %_ZN4ncnn3MatD2Ev.exit491.i.i
    i32 0, label %_ZN4ncnn3MatD2Ev.exit.i.i
  ]

_ZN4ncnn3MatD2Ev.exit493.i.i:                     ; preds = %.split853.i.i
  br i1 %i.bko, label %.lr.ph730.preheader.i.i, label %.loopexit.i.i

.lr.ph730.preheader.i.i:                          ; preds = %_ZN4ncnn3MatD2Ev.exit493.i.i
  %i.blm = load ptr, ptr %9, align 8, !tbaa !22, !noalias !3097
  %i.bln = load i64, ptr %i.p, align 8, !tbaa !23, !noalias !3097
  %i.blo = mul i64 %i.bln, %i.bkm
  %i.blp = load i64, ptr %i.q, align 8, !tbaa !64, !noalias !3097
  %i.blq = mul i64 %i.blo, %i.blp
  %i.blr = getelementptr inbounds nuw i8, ptr %i.blm, i64 %i.blq
  %i.bls = add nsw i64 %indvars.iv790.i.i, %i.bkz
  %.idx808.i.i = shl nsw i64 %i.bls, 5
  %i.blt = getelementptr inbounds i8, ptr %i.blr, i64 %.idx808.i.i ; 2 uses
  br i1 %i.bll, label %.lr.ph730.i.i.epil.preheader, label %.lr.ph730.i.i

.lr.ph730.i.i:                                    ; preds = %.lr.ph730.preheader.i.i, %.lr.ph730.i.i
  %.0435728.i.i = phi ptr [ %i.bmj, %.lr.ph730.i.i ], [ %i.blt, %.lr.ph730.preheader.i.i ] ; 2 uses
  %.28727.i.i = phi ptr [ %i.bmh, %.lr.ph730.i.i ], [ %.27748.i.i, %.lr.ph730.preheader.i.i ] ; 5 uses
  %niter269 = phi i32 [ %niter269.next.3, %.lr.ph730.i.i ], [ 0, %.lr.ph730.preheader.i.i ]
  %i.blu = load <4 x i64>, ptr %.0435728.i.i, align 1, !tbaa !85
  store <4 x i64> %i.blu, ptr %.28727.i.i, align 1, !tbaa !85
  %i.blv = getelementptr inbounds nuw i8, ptr %.28727.i.i, i64 32
  %i.blw = load i64, ptr %i.p, align 8, !tbaa !23
  %.idx466.i.i = shl i64 %i.blw, 5
  %i.blx = getelementptr inbounds nuw i8, ptr %.0435728.i.i, i64 %.idx466.i.i ; 2 uses
  %i.bly = load <4 x i64>, ptr %i.blx, align 1, !tbaa !85
  store <4 x i64> %i.bly, ptr %i.blv, align 1, !tbaa !85
  %i.blz = getelementptr inbounds nuw i8, ptr %.28727.i.i, i64 64
  %i.bma = load i64, ptr %i.p, align 8, !tbaa !23
  %.idx466.i.i.1 = shl i64 %i.bma, 5
  %i.bmb = getelementptr inbounds nuw i8, ptr %i.blx, i64 %.idx466.i.i.1 ; 2 uses
  %i.bmc = load <4 x i64>, ptr %i.bmb, align 1, !tbaa !85
  store <4 x i64> %i.bmc, ptr %i.blz, align 1, !tbaa !85
  %i.bmd = getelementptr inbounds nuw i8, ptr %.28727.i.i, i64 96
  %i.bme = load i64, ptr %i.p, align 8, !tbaa !23
  %.idx466.i.i.2 = shl i64 %i.bme, 5
  %i.bmf = getelementptr inbounds nuw i8, ptr %i.bmb, i64 %.idx466.i.i.2 ; 2 uses
  %i.bmg = load <4 x i64>, ptr %i.bmf, align 1, !tbaa !85
  store <4 x i64> %i.bmg, ptr %i.bmd, align 1, !tbaa !85
  %i.bmh = getelementptr inbounds nuw i8, ptr %.28727.i.i, i64 128 ; 3 uses
  %i.bmi = load i64, ptr %i.p, align 8, !tbaa !23
  %.idx466.i.i.3 = shl i64 %i.bmi, 5
  %i.bmj = getelementptr inbounds nuw i8, ptr %i.bmf, i64 %.idx466.i.i.3 ; 2 uses
  %niter269.next.3 = add i32 %niter269, 4         ; 2 uses
  %niter269.ncmp.3 = icmp eq i32 %niter269.next.3, %unroll_iter268
  br i1 %niter269.ncmp.3, label %.loopexit.i.i.loopexit.unr-lcssa, label %.lr.ph730.i.i, !llvm.loop !3069

_ZN4ncnn3MatD2Ev.exit492.i.i:                     ; preds = %.split853.i.i
  br i1 %i.bks, label %.lr.ph735.preheader.i.i, label %.loopexit.i.i

.lr.ph735.preheader.i.i:                          ; preds = %_ZN4ncnn3MatD2Ev.exit492.i.i
  %i.bmk = load ptr, ptr %9, align 8, !tbaa !22, !noalias !3098
  %i.bml = load i64, ptr %i.p, align 8, !tbaa !23, !noalias !3098
  %i.bmm = mul i64 %i.bml, %i.bkq
  %i.bmn = load i64, ptr %i.q, align 8, !tbaa !64, !noalias !3098
  %i.bmo = mul i64 %i.bmm, %i.bmn
  %i.bmp = getelementptr inbounds nuw i8, ptr %i.bmk, i64 %i.bmo
  %i.bmq = add nsw i64 %indvars.iv790.i.i, %i.bkz
  %.idx809.i.i = shl nsw i64 %i.bmq, 4
  %i.bmr = getelementptr inbounds i8, ptr %i.bmp, i64 %.idx809.i.i ; 2 uses
  br i1 %i.blk, label %.lr.ph735.i.i.epil.preheader, label %.lr.ph735.i.i

.lr.ph735.i.i:                                    ; preds = %.lr.ph735.preheader.i.i, %.lr.ph735.i.i
  %.0433733.i.i = phi ptr [ %i.bnh, %.lr.ph735.i.i ], [ %i.bmr, %.lr.ph735.preheader.i.i ] ; 2 uses
  %.30732.i.i = phi ptr [ %i.bnf, %.lr.ph735.i.i ], [ %.27748.i.i, %.lr.ph735.preheader.i.i ] ; 5 uses
  %niter262 = phi i32 [ %niter262.next.3, %.lr.ph735.i.i ], [ 0, %.lr.ph735.preheader.i.i ]
  %i.bms = load <2 x i64>, ptr %.0433733.i.i, align 1, !tbaa !85
  store <2 x i64> %i.bms, ptr %.30732.i.i, align 1, !tbaa !85
  %i.bmt = getelementptr inbounds nuw i8, ptr %.30732.i.i, i64 16
  %i.bmu = load i64, ptr %i.p, align 8, !tbaa !23
  %.idx465.i.i = shl i64 %i.bmu, 4
  %i.bmv = getelementptr inbounds nuw i8, ptr %.0433733.i.i, i64 %.idx465.i.i ; 2 uses
  %i.bmw = load <2 x i64>, ptr %i.bmv, align 1, !tbaa !85
  store <2 x i64> %i.bmw, ptr %i.bmt, align 1, !tbaa !85
  %i.bmx = getelementptr inbounds nuw i8, ptr %.30732.i.i, i64 32
  %i.bmy = load i64, ptr %i.p, align 8, !tbaa !23
  %.idx465.i.i.1 = shl i64 %i.bmy, 4
  %i.bmz = getelementptr inbounds nuw i8, ptr %i.bmv, i64 %.idx465.i.i.1 ; 2 uses
  %i.bna = load <2 x i64>, ptr %i.bmz, align 1, !tbaa !85
  store <2 x i64> %i.bna, ptr %i.bmx, align 1, !tbaa !85
  %i.bnb = getelementptr inbounds nuw i8, ptr %.30732.i.i, i64 48
  %i.bnc = load i64, ptr %i.p, align 8, !tbaa !23
  %.idx465.i.i.2 = shl i64 %i.bnc, 4
  %i.bnd = getelementptr inbounds nuw i8, ptr %i.bmz, i64 %.idx465.i.i.2 ; 2 uses
  %i.bne = load <2 x i64>, ptr %i.bnd, align 1, !tbaa !85
  store <2 x i64> %i.bne, ptr %i.bnb, align 1, !tbaa !85
  %i.bnf = getelementptr inbounds nuw i8, ptr %.30732.i.i, i64 64 ; 3 uses
  %i.bng = load i64, ptr %i.p, align 8, !tbaa !23
  %.idx465.i.i.3 = shl i64 %i.bng, 4
  %i.bnh = getelementptr inbounds nuw i8, ptr %i.bnd, i64 %.idx465.i.i.3 ; 2 uses
  %niter262.next.3 = add i32 %niter262, 4         ; 2 uses
  %niter262.ncmp.3 = icmp eq i32 %niter262.next.3, %unroll_iter261
  br i1 %niter262.ncmp.3, label %.loopexit.i.i.loopexit194.unr-lcssa, label %.lr.ph735.i.i, !llvm.loop !3072

_ZN4ncnn3MatD2Ev.exit491.i.i:                     ; preds = %.split853.i.i
  br i1 %i.bkw, label %.lr.ph740.preheader.i.i, label %.loopexit.i.i

.lr.ph740.preheader.i.i:                          ; preds = %_ZN4ncnn3MatD2Ev.exit491.i.i
  %i.bni = load ptr, ptr %9, align 8, !tbaa !22, !noalias !3099
  %i.bnj = load i64, ptr %i.p, align 8, !tbaa !23, !noalias !3099
  %i.bnk = mul i64 %i.bnj, %i.bku
  %i.bnl = load i64, ptr %i.q, align 8, !tbaa !64, !noalias !3099
  %i.bnm = mul i64 %i.bnk, %i.bnl
  %i.bnn = getelementptr inbounds nuw i8, ptr %i.bni, i64 %i.bnm
  %i.bno = add nsw i64 %indvars.iv790.i.i, %i.bkz
  %.idx810.i.i = shl nsw i64 %i.bno, 3
  %i.bnp = getelementptr inbounds i8, ptr %i.bnn, i64 %.idx810.i.i ; 2 uses
  br i1 %i.blj, label %.lr.ph740.i.i.epil.preheader, label %.lr.ph740.i.i

.lr.ph740.i.i:                                    ; preds = %.lr.ph740.preheader.i.i, %.lr.ph740.i.i
  %.0431738.i.i = phi ptr [ %i.bof, %.lr.ph740.i.i ], [ %i.bnp, %.lr.ph740.preheader.i.i ] ; 2 uses
  %.32737.i.i = phi ptr [ %i.bod, %.lr.ph740.i.i ], [ %.27748.i.i, %.lr.ph740.preheader.i.i ] ; 5 uses
  %niter255 = phi i32 [ %niter255.next.3, %.lr.ph740.i.i ], [ 0, %.lr.ph740.preheader.i.i ]
  %i.bnq = load i64, ptr %.0431738.i.i, align 1, !tbaa !85
  store i64 %i.bnq, ptr %.32737.i.i, align 1, !tbaa !85
  %i.bnr = getelementptr inbounds nuw i8, ptr %.32737.i.i, i64 8
  %i.bns = load i64, ptr %i.p, align 8, !tbaa !23
  %.idx.i.i = shl i64 %i.bns, 3
  %i.bnt = getelementptr inbounds nuw i8, ptr %.0431738.i.i, i64 %.idx.i.i ; 2 uses
  %i.bnu = load i64, ptr %i.bnt, align 1, !tbaa !85
  store i64 %i.bnu, ptr %i.bnr, align 1, !tbaa !85
  %i.bnv = getelementptr inbounds nuw i8, ptr %.32737.i.i, i64 16
  %i.bnw = load i64, ptr %i.p, align 8, !tbaa !23
  %.idx.i.i.1 = shl i64 %i.bnw, 3
  %i.bnx = getelementptr inbounds nuw i8, ptr %i.bnt, i64 %.idx.i.i.1 ; 2 uses
  %i.bny = load i64, ptr %i.bnx, align 1, !tbaa !85
  store i64 %i.bny, ptr %i.bnv, align 1, !tbaa !85
  %i.bnz = getelementptr inbounds nuw i8, ptr %.32737.i.i, i64 24
  %i.boa = load i64, ptr %i.p, align 8, !tbaa !23
  %.idx.i.i.2 = shl i64 %i.boa, 3
  %i.bob = getelementptr inbounds nuw i8, ptr %i.bnx, i64 %.idx.i.i.2 ; 2 uses
  %i.boc = load i64, ptr %i.bob, align 1, !tbaa !85
end_hunk_14
