Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/gmx_rms?download=true
inline.NumInlined: 401
inline.NumDeleted: 142
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 31
begin_hunk_0_@_Z7gmx_rmsiPPc:bb.a
  %i.bnv = trunc i8 %.fr1735 to i1
  %i.bnw = zext nneg i32 %i.bnt to i64            ; 2 uses
  %wide.trip.count1969 = zext nneg i32 %i.bns to i64
  %wide.trip.count1957 = zext nneg i32 %.1673 to i64
  %wide.trip.count1964 = zext nneg i32 %.1673 to i64
  br label %.lr.ph1689

_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit1023.loopexit: ; preds = %bb.jd, %bb.ja
  %indvars.iv.next1951 = add nuw nsw i64 %indvars.iv1950, 1
  %exitcond1970.not = icmp eq i64 %indvars.iv.next1967, %wide.trip.count1969
  br i1 %exitcond1970.not, label %.preheader1442, label %.lr.ph1689, !llvm.loop !101

.preheader1442:                                   ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit1023.loopexit, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit1023.preheader
  %i.bnx = icmp sgt i32 %.1748, 0                 ; 2 uses
  br i1 %i.bnx, label %.lr.ph1696.preheader, label %._crit_edge1697

.lr.ph1696.preheader:                             ; preds = %.preheader1442
  %wide.trip.count1978 = zext nneg i32 %.1748 to i64
  br label %.lr.ph1696

.lr.ph1689:                                       ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit1023.loopexit, %.lr.ph1691
  %indvars.iv1966 = phi i64 [ 0, %.lr.ph1691 ], [ %indvars.iv.next1967, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit1023.loopexit ] ; 5 uses
  %indvars.iv1950 = phi i64 [ 1, %.lr.ph1691 ], [ %indvars.iv.next1951, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit1023.loopexit ] ; 3 uses
  %indvars.iv.next1967 = add nuw nsw i64 %indvars.iv1966, 1 ; 2 uses
  br i1 %i.bnv, label %.lr.ph1689.split.us, label %.lr.ph1689.split

.lr.ph1689.split.us:                              ; preds = %.lr.ph1689, %bb.ja
  %indvars.iv1959 = phi i64 [ %indvars.iv.next1960, %bb.ja ], [ %indvars.iv1950, %.lr.ph1689 ] ; 3 uses
  %i.bny = sub nuw nsw i64 %indvars.iv1959, %indvars.iv1966 ; 2 uses
  %i.bnz = icmp samesign ult i64 %i.bny, %i.bnw
  br i1 %i.bnz, label %bb.iy, label %bb.ja

bb.iy:                                            ; preds = %.lr.ph1689.split.us
  %i.boa = trunc nuw nsw i64 %i.bny to i32
  %i.bob = uitofp nneg i32 %i.boa to float
  %i.boc = call noundef float @logf(float noundef %i.bob) #20
  %i.bod = fmul float %.1751, %i.boc
  %i.boe = call float @llvm.rint.f32(float %i.bod)
  %i.bof = fptosi float %i.boe to i32
  %i.bog = getelementptr inbounds nuw [8 x i8], ptr %.11422, i64 %indvars.iv1959
  %i.boh = load ptr, ptr %i.bog, align 8, !tbaa !167
  %i.boi = getelementptr inbounds nuw [4 x i8], ptr %i.boh, i64 %indvars.iv1966 ; 2 uses
  %i.boj = load float, ptr %i.boi, align 4, !tbaa !18
  %i.bok = sext i32 %i.bof to i64                 ; 2 uses
  %i.bol = getelementptr inbounds [4 x i8], ptr %i.bnq, i64 %i.bok ; 2 uses
  %i.bom = load float, ptr %i.bol, align 4, !tbaa !18
  %i.bon = fadd float %i.bom, 1.000000e+00
  store float %i.bon, ptr %i.bol, align 4, !tbaa !18
  %i.boo = load float, ptr %i.boi, align 4, !tbaa !18 ; 2 uses
  %i.bop = fcmp ult float %i.boo, 0.000000e+00
  %i.boq = load float, ptr @_ZZ7gmx_rmsiPPcE10delta_maxy, align 4
  %i.bor = fcmp ugt float %i.boo, %i.boq
  %or.cond946.us = select i1 %i.bop, i1 true, i1 %i.bor
  br i1 %or.cond946.us, label %bb.ja, label %bb.iz

bb.iz:                                            ; preds = %bb.iy
  %i.bos = fmul float %.0749, %i.boj
  %i.bot = fmul float %i.bos, 1.000000e+02
  %i.bou = call float @llvm.rint.f32(float %i.bot)
  %i.bov = fptosi float %i.bou to i32
  %i.bow = getelementptr inbounds [8 x i8], ptr %.01418, i64 %i.bok
  %i.box = load ptr, ptr %i.bow, align 8, !tbaa !167
  %i.boy = sext i32 %i.bov to i64
  %i.boz = getelementptr inbounds [4 x i8], ptr %i.box, i64 %i.boy ; 2 uses
  %i.bpa = load float, ptr %i.boz, align 4, !tbaa !18
  %i.bpb = fadd float %i.bpa, 1.000000e+00
  store float %i.bpb, ptr %i.boz, align 4, !tbaa !18
  br label %bb.ja

bb.ja:                                            ; preds = %bb.iz, %bb.iy, %.lr.ph1689.split.us
  %indvars.iv.next1960 = add nuw nsw i64 %indvars.iv1959, 1 ; 2 uses
  %exitcond1965.not = icmp eq i64 %indvars.iv.next1960, %wide.trip.count1964
  br i1 %exitcond1965.not, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit1023.loopexit, label %.lr.ph1689.split.us, !llvm.loop !102

.lr.ph1689.split:                                 ; preds = %.lr.ph1689, %bb.jd
  %indvars.iv1952 = phi i64 [ %indvars.iv.next1953, %bb.jd ], [ %indvars.iv1950, %.lr.ph1689 ] ; 3 uses
  %i.bpc = sub nuw nsw i64 %indvars.iv1952, %indvars.iv1966 ; 3 uses
  %i.bpd = icmp samesign ult i64 %i.bpc, %i.bnw
  br i1 %i.bpd, label %bb.jb, label %bb.jd

bb.jb:                                            ; preds = %.lr.ph1689.split
  %i.bpe = getelementptr inbounds nuw [8 x i8], ptr %.11422, i64 %indvars.iv1952
  %i.bpf = load ptr, ptr %i.bpe, align 8, !tbaa !167
  %i.bpg = getelementptr inbounds nuw [4 x i8], ptr %i.bpf, i64 %indvars.iv1966 ; 2 uses
  %i.bph = load float, ptr %i.bpg, align 4, !tbaa !18
  %i.bpi = getelementptr inbounds nuw [4 x i8], ptr %i.bnq, i64 %i.bpc ; 2 uses
  %i.bpj = load float, ptr %i.bpi, align 4, !tbaa !18
  %i.bpk = fadd float %i.bpj, 1.000000e+00
  store float %i.bpk, ptr %i.bpi, align 4, !tbaa !18
  %i.bpl = load float, ptr %i.bpg, align 4, !tbaa !18 ; 2 uses
  %i.bpm = fcmp ult float %i.bpl, 0.000000e+00
  %i.bpn = load float, ptr @_ZZ7gmx_rmsiPPcE10delta_maxy, align 4
  %i.bpo = fcmp ugt float %i.bpl, %i.bpn
  %or.cond946 = select i1 %i.bpm, i1 true, i1 %i.bpo
  br i1 %or.cond946, label %bb.jd, label %bb.jc

bb.jc:                                            ; preds = %bb.jb
  %i.bpp = fmul float %.0749, %i.bph
  %i.bpq = fmul float %i.bpp, 1.000000e+02
  %i.bpr = call float @llvm.rint.f32(float %i.bpq)
  %i.bps = fptosi float %i.bpr to i32
  %i.bpt = getelementptr inbounds nuw [8 x i8], ptr %.01418, i64 %i.bpc
  %i.bpu = load ptr, ptr %i.bpt, align 8, !tbaa !167
  %i.bpv = sext i32 %i.bps to i64
  %i.bpw = getelementptr inbounds [4 x i8], ptr %i.bpu, i64 %i.bpv ; 2 uses
  %i.bpx = load float, ptr %i.bpw, align 4, !tbaa !18
  %i.bpy = fadd float %i.bpx, 1.000000e+00
  store float %i.bpy, ptr %i.bpw, align 4, !tbaa !18
  br label %bb.jd

bb.jd:                                            ; preds = %.lr.ph1689.split, %bb.jc, %bb.jb
  %indvars.iv.next1953 = add nuw nsw i64 %indvars.iv1952, 1 ; 2 uses
  %exitcond1958.not = icmp eq i64 %indvars.iv.next1953, %wide.trip.count1957
  br i1 %exitcond1958.not, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit1023.loopexit, label %.lr.ph1689.split, !llvm.loop !102

._crit_edge1697:                                  ; preds = %.loopexit1441, %.preheader1442
  %.0752.lcssa = phi float [ 0.000000e+00, %.preheader1442 ], [ %.3755, %.loopexit1441 ] ; 2 uses
  %i.bpz = load ptr, ptr @stderr, align 8, !tbaa !139
  %i.bqa = fpext float %.0752.lcssa to double
  %i.bqb = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bpz, ptr noundef nonnull @.str.166, double noundef %i.bqa) #22 ; 0 uses
  %i.bqc = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.105, i32 noundef 1066, i64 noundef range(i64 -2147483648, 2147483648) %i.bnp, i64 noundef 4)
          to label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit1025 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 15 uses

.lr.ph1696:                                       ; preds = %.lr.ph1696.preheader, %.loopexit1441
  %indvars.iv1975 = phi i64 [ 0, %.lr.ph1696.preheader ], [ %indvars.iv.next1976, %.loopexit1441 ] ; 3 uses
  %.07521694 = phi float [ 0.000000e+00, %.lr.ph1696.preheader ], [ %.3755, %.loopexit1441 ] ; 2 uses
  %i.bqd = getelementptr inbounds nuw [4 x i8], ptr %i.bnq, i64 %indvars.iv1975 ; 6 uses
  %i.bqe = load float, ptr %i.bqd, align 4, !tbaa !18 ; 2 uses
  %i.bqf = fcmp ogt float %i.bqe, 0.000000e+00
  br i1 %i.bqf, label %bb.je, label %.loopexit1441

bb.je:                                            ; preds = %.lr.ph1696
  %i.bqg = fdiv float 1.000000e+00, %i.bqe
  store float %i.bqg, ptr %i.bqd, align 4, !tbaa !18
  %i.bqh = getelementptr inbounds nuw [8 x i8], ptr %.01418, i64 %indvars.iv1975
  %i.bqi = load ptr, ptr %i.bqh, align 8, !tbaa !167 ; 4 uses
  br label %bb.jf

bb.jf:                                            ; preds = %bb.jg, %bb.je
  %indvars.iv1971 = phi i64 [ 0, %bb.je ], [ %indvars.iv.next1972.3, %bb.jg ] ; 6 uses
  %.17531693 = phi float [ %.07521694, %bb.je ], [ %spec.select947.3, %bb.jg ] ; 2 uses
  %i.bqj = load float, ptr %i.bqd, align 4, !tbaa !18
  %i.bqk = getelementptr inbounds nuw [4 x i8], ptr %i.bqi, i64 %indvars.iv1971 ; 2 uses
  %i.bql = load float, ptr %i.bqk, align 4, !tbaa !18
  %i.bqm = fmul float %i.bqj, %i.bql              ; 3 uses
  store float %i.bqm, ptr %i.bqk, align 4, !tbaa !18
  %i.bqn = fcmp ogt float %i.bqm, %.17531693
  %spec.select947 = select i1 %i.bqn, float %i.bqm, float %.17531693 ; 3 uses
  %exitcond1974.not = icmp eq i64 %indvars.iv1971, 100
  br i1 %exitcond1974.not, label %.loopexit1441, label %bb.jg

bb.jg:                                            ; preds = %bb.jf
  %i.bqo = load float, ptr %i.bqd, align 4, !tbaa !18
  %i.bqp = getelementptr inbounds nuw [4 x i8], ptr %i.bqi, i64 %indvars.iv1971
  %i.bqq = getelementptr inbounds nuw i8, ptr %i.bqp, i64 4 ; 2 uses
  %i.bqr = load float, ptr %i.bqq, align 4, !tbaa !18
  %i.bqs = fmul float %i.bqo, %i.bqr              ; 3 uses
  store float %i.bqs, ptr %i.bqq, align 4, !tbaa !18
  %i.bqt = fcmp ogt float %i.bqs, %spec.select947
  %spec.select947.1 = select i1 %i.bqt, float %i.bqs, float %spec.select947 ; 2 uses
  %i.bqu = load float, ptr %i.bqd, align 4, !tbaa !18
  %i.bqv = getelementptr inbounds nuw [4 x i8], ptr %i.bqi, i64 %indvars.iv1971
  %i.bqw = getelementptr inbounds nuw i8, ptr %i.bqv, i64 8 ; 2 uses
  %i.bqx = load float, ptr %i.bqw, align 4, !tbaa !18
  %i.bqy = fmul float %i.bqu, %i.bqx              ; 3 uses
  store float %i.bqy, ptr %i.bqw, align 4, !tbaa !18
  %i.bqz = fcmp ogt float %i.bqy, %spec.select947.1
  %spec.select947.2 = select i1 %i.bqz, float %i.bqy, float %spec.select947.1 ; 2 uses
  %i.bra = load float, ptr %i.bqd, align 4, !tbaa !18
  %i.brb = getelementptr inbounds nuw [4 x i8], ptr %i.bqi, i64 %indvars.iv1971
  %i.brc = getelementptr inbounds nuw i8, ptr %i.brb, i64 12 ; 2 uses
  %i.brd = load float, ptr %i.brc, align 4, !tbaa !18
  %i.bre = fmul float %i.bra, %i.brd              ; 3 uses
  store float %i.bre, ptr %i.brc, align 4, !tbaa !18
  %i.brf = fcmp ogt float %i.bre, %spec.select947.2
  %spec.select947.3 = select i1 %i.brf, float %i.bre, float %spec.select947.2
  %indvars.iv.next1972.3 = add nuw nsw i64 %indvars.iv1971, 4
  br label %bb.jf

.loopexit1441:                                    ; preds = %bb.jf, %.lr.ph1696
  %.3755 = phi float [ %.07521694, %.lr.ph1696 ], [ %spec.select947, %bb.jf ] ; 2 uses
  %indvars.iv.next1976 = add nuw nsw i64 %indvars.iv1975, 1 ; 2 uses
  %exitcond1979.not = icmp eq i64 %indvars.iv.next1976, %wide.trip.count1978
  br i1 %exitcond1979.not, label %._crit_edge1697, label %.lr.ph1696, !llvm.loop !103

_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit1025:      ; preds = %._crit_edge1697
  %i.brg = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.105, i32 noundef 1067, i64 noundef 101, i64 noundef 4)
          to label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit1027.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 21 uses

_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit1027.preheader: ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit1025
  br i1 %i.bnx, label %iter.check2638, label %vector.memcheck2659

iter.check2638:                                   ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit1027.preheader
  %wide.trip.count1983 = zext nneg i32 %.1748 to i64 ; 9 uses
  %min.iters.check2616 = icmp ult i32 %.1748, 4
  br i1 %min.iters.check2616, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit1027.preheader2706, label %vector.memcheck2617

vector.memcheck2617:                              ; preds = %iter.check2638
  %i.brh = shl nuw nsw i64 %wide.trip.count1983, 2 ; 2 uses
  %i.bri = getelementptr i8, ptr %i.bqc, i64 %i.brh
  %i.brj = getelementptr i8, ptr %i.axy, i64 %i.brh
  %i.brk = getelementptr i8, ptr %i.axy, i64 4
  %bound02618 = icmp ult ptr %i.bqc, %i.brj
  %bound12619 = icmp ult ptr %i.axy, %i.bri
  %bound02621 = icmp ult ptr %i.bqc, %i.brk
  %found.conflict26202697 = or i1 %bound02618, %bound02621
  %conflict.rdx = and i1 %found.conflict26202697, %bound12619
  br i1 %conflict.rdx, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit1027.preheader2706, label %vector.main.loop.iter.check2623

vector.main.loop.iter.check2623:                  ; preds = %vector.memcheck2617
  %min.iters.check2624 = icmp ult i32 %.1748, 32
  br i1 %min.iters.check2624, label %vec.epilog.ph2642, label %vector.ph2625

vector.ph2625:                                    ; preds = %vector.main.loop.iter.check2623
  %i.brl = and i64 %wide.trip.count1983, 28
  %n.vec2626 = and i64 %wide.trip.count1983, 2147483616 ; 4 uses
  %i.brm = load float, ptr %i.axy, align 4, !tbaa !18, !alias.scope !186
  %broadcast.splatinsert2633 = insertelement <8 x float> poison, float %i.brm, i64 0
  %broadcast.splat2634 = shufflevector <8 x float> %broadcast.splatinsert2633, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body2627

vector.body2627:                                  ; preds = %vector.ph2625, %vector.body2627
  %index2628 = phi i64 [ 0, %vector.ph2625 ], [ %index.next2635, %vector.body2627 ] ; 3 uses
  %i.brn = getelementptr inbounds nuw [4 x i8], ptr %i.axy, i64 %index2628 ; 4 uses
  %i.bro = getelementptr inbounds nuw i8, ptr %i.brn, i64 32
  %i.brp = getelementptr inbounds nuw i8, ptr %i.brn, i64 64
  %i.brq = getelementptr inbounds nuw i8, ptr %i.brn, i64 96
  %wide.load2629 = load <8 x float>, ptr %i.brn, align 4, !tbaa !18, !alias.scope !187
  %wide.load2630 = load <8 x float>, ptr %i.bro, align 4, !tbaa !18, !alias.scope !187
  %wide.load2631 = load <8 x float>, ptr %i.brp, align 4, !tbaa !18, !alias.scope !187
  %wide.load2632 = load <8 x float>, ptr %i.brq, align 4, !tbaa !18, !alias.scope !187
  %i.brr = fsub <8 x float> %wide.load2629, %broadcast.splat2634
  %i.brs = fsub <8 x float> %wide.load2630, %broadcast.splat2634
  %i.brt = fsub <8 x float> %wide.load2631, %broadcast.splat2634
  %i.bru = fsub <8 x float> %wide.load2632, %broadcast.splat2634
  %i.brv = getelementptr inbounds nuw [4 x i8], ptr %i.bqc, i64 %index2628 ; 4 uses
  %i.brw = getelementptr inbounds nuw i8, ptr %i.brv, i64 32
  %i.brx = getelementptr inbounds nuw i8, ptr %i.brv, i64 64
  %i.bry = getelementptr inbounds nuw i8, ptr %i.brv, i64 96
  store <8 x float> %i.brr, ptr %i.brv, align 4, !tbaa !18, !alias.scope !188, !noalias !189
  store <8 x float> %i.brs, ptr %i.brw, align 4, !tbaa !18, !alias.scope !188, !noalias !189
  store <8 x float> %i.brt, ptr %i.brx, align 4, !tbaa !18, !alias.scope !188, !noalias !189
  store <8 x float> %i.bru, ptr %i.bry, align 4, !tbaa !18, !alias.scope !188, !noalias !189
  %index.next2635 = add nuw i64 %index2628, 32    ; 2 uses
  %i.brz = icmp eq i64 %index.next2635, %n.vec2626
  br i1 %i.brz, label %middle.block2636, label %vector.body2627, !llvm.loop !108

middle.block2636:                                 ; preds = %vector.body2627
  %cmp.n2637 = icmp eq i64 %n.vec2626, %wide.trip.count1983
  br i1 %cmp.n2637, label %vector.memcheck2659, label %vec.epilog.iter.check2639

vec.epilog.iter.check2639:                        ; preds = %middle.block2636
  %min.epilog.iters.check2641 = icmp eq i64 %i.brl, 0
  br i1 %min.epilog.iters.check2641, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit1027.preheader2706, label %vec.epilog.ph2642, !prof !165

vec.epilog.ph2642:                                ; preds = %vector.main.loop.iter.check2623, %vec.epilog.iter.check2639
  %vec.epilog.resume.val2643 = phi i64 [ %n.vec2626, %vec.epilog.iter.check2639 ], [ 0, %vector.main.loop.iter.check2623 ]
  %n.vec2644 = and i64 %wide.trip.count1983, 2147483644 ; 3 uses
  %i.bsa = load float, ptr %i.axy, align 4, !tbaa !18, !alias.scope !186
  %broadcast.splatinsert2648 = insertelement <4 x float> poison, float %i.bsa, i64 0
  %broadcast.splat2649 = shufflevector <4 x float> %broadcast.splatinsert2648, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body2645

vec.epilog.vector.body2645:                       ; preds = %vec.epilog.vector.body2645, %vec.epilog.ph2642
  %index2646 = phi i64 [ %vec.epilog.resume.val2643, %vec.epilog.ph2642 ], [ %index.next2650, %vec.epilog.vector.body2645 ] ; 3 uses
  %i.bsb = getelementptr inbounds nuw [4 x i8], ptr %i.axy, i64 %index2646
  %wide.load2647 = load <4 x float>, ptr %i.bsb, align 4, !tbaa !18, !alias.scope !187
  %i.bsc = fsub <4 x float> %wide.load2647, %broadcast.splat2649
  %i.bsd = getelementptr inbounds nuw [4 x i8], ptr %i.bqc, i64 %index2646
  store <4 x float> %i.bsc, ptr %i.bsd, align 4, !tbaa !18, !alias.scope !188, !noalias !189
  %index.next2650 = add nuw i64 %index2646, 4     ; 2 uses
  %i.bse = icmp eq i64 %index.next2650, %n.vec2644
  br i1 %i.bse, label %vec.epilog.middle.block2651, label %vec.epilog.vector.body2645, !llvm.loop !109

vec.epilog.middle.block2651:                      ; preds = %vec.epilog.vector.body2645
  %cmp.n2652 = icmp eq i64 %n.vec2644, %wide.trip.count1983
  br i1 %cmp.n2652, label %vector.memcheck2659, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit1027.preheader2706

_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit1027.preheader2706: ; preds = %iter.check2638, %vector.memcheck2617, %vec.epilog.iter.check2639, %vec.epilog.middle.block2651
  %indvars.iv1980.ph = phi i64 [ 0, %iter.check2638 ], [ 0, %vector.memcheck2617 ], [ %n.vec2626, %vec.epilog.iter.check2639 ], [ %n.vec2644, %vec.epilog.middle.block2651 ] ; 4 uses
  %i.bsf = sub nsw i64 %wide.trip.count1983, %indvars.iv1980.ph
  %xtraiter2830 = and i64 %i.bsf, 7               ; 2 uses
  %lcmp.mod2831.not = icmp eq i64 %xtraiter2830, 0
  br i1 %lcmp.mod2831.not, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit1027.prol.loopexit, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit1027.prol

_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit1027.prol: ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit1027.preheader2706, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit1027.prol
  %indvars.iv1980.prol = phi i64 [ %indvars.iv.next1981.prol, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit1027.prol ], [ %indvars.iv1980.ph, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit1027.preheader2706 ] ; 3 uses
  %prol.iter2832 = phi i64 [ %prol.iter2832.next, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit1027.prol ], [ 0, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit1027.preheader2706 ]
  %i.bsg = getelementptr inbounds nuw [4 x i8], ptr %i.axy, i64 %indvars.iv1980.prol
  %i.bsh = load float, ptr %i.bsg, align 4, !tbaa !18
  %i.bsi = load float, ptr %i.axy, align 4, !tbaa !18
  %i.bsj = fsub float %i.bsh, %i.bsi
  %i.bsk = getelementptr inbounds nuw [4 x i8], ptr %i.bqc, i64 %indvars.iv1980.prol
  store float %i.bsj, ptr %i.bsk, align 4, !tbaa !18
  %indvars.iv.next1981.prol = add nuw nsw i64 %indvars.iv1980.prol, 1 ; 2 uses
  %prol.iter2832.next = add i64 %prol.iter2832, 1 ; 2 uses
  %prol.iter2832.cmp.not = icmp eq i64 %prol.iter2832.next, %xtraiter2830
  br i1 %prol.iter2832.cmp.not, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit1027.prol.loopexit, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit1027.prol, !llvm.loop !110

_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit1027.prol.loopexit: ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit1027.prol, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit1027.preheader2706
  %indvars.iv1980.unr = phi i64 [ %indvars.iv1980.ph, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit1027.preheader2706 ], [ %indvars.iv.next1981.prol, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit1027.prol ]
  %i.bsl = sub nsw i64 %indvars.iv1980.ph, %wide.trip.count1983
  %i.bsm = icmp ugt i64 %i.bsl, -8
  br i1 %i.bsm, label %vector.memcheck2659, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit1027

vector.memcheck2659:                              ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit1027.prol.loopexit, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit1027, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit1027.preheader, %vec.epilog.middle.block2651, %middle.block2636
  %i.bsn = getelementptr i8, ptr %i.brg, i64 404
  %bound02660 = icmp uge ptr %i.brg, getelementptr inbounds nuw (i8, ptr @_ZZ7gmx_rmsiPPcE10delta_maxy, i64 4)
  %bound12661 = icmp ule ptr %i.bsn, @_ZZ7gmx_rmsiPPcE10delta_maxy
  %found.conflict2662.not = or i1 %bound02660, %bound12661 ; 2 uses
  br i1 %found.conflict2662.not, label %vector.body2665, label %vec.epilog.scalar.ph2678.prol.preheader

vec.epilog.scalar.ph2678.prol.preheader:          ; preds = %vector.memcheck2659, %vector.body2665
  %indvars.iv1985.ph = phi i64 [ 0, %vector.memcheck2659 ], [ 100, %vector.body2665 ]
  br label %vec.epilog.scalar.ph2678.prol

vec.epilog.scalar.ph2678.prol:                    ; preds = %vec.epilog.scalar.ph2678.prol, %vec.epilog.scalar.ph2678.prol.preheader
  %indvars.iv1985.prol = phi i64 [ %indvars.iv.next1986.prol, %vec.epilog.scalar.ph2678.prol ], [ %indvars.iv1985.ph, %vec.epilog.scalar.ph2678.prol.preheader ] ; 3 uses
  %prol.iter2835 = phi i64 [ %prol.iter2835.next, %vec.epilog.scalar.ph2678.prol ], [ 0, %vec.epilog.scalar.ph2678.prol.preheader ] ; 2 uses
  %i.bso = load float, ptr @_ZZ7gmx_rmsiPPcE10delta_maxy, align 4, !tbaa !18
  %i.bsp = trunc nuw nsw i64 %indvars.iv1985.prol to i32
  %i.bsq = uitofp nneg i32 %i.bsp to float
  %i.bsr = fmul float %i.bso, %i.bsq
  %i.bss = fdiv float %i.bsr, 1.000000e+02
  %i.bst = getelementptr inbounds nuw [4 x i8], ptr %i.brg, i64 %indvars.iv1985.prol
  store float %i.bss, ptr %i.bst, align 4, !tbaa !18
  %indvars.iv.next1986.prol = add nuw nsw i64 %indvars.iv1985.prol, 1 ; 2 uses
  %prol.iter2835.next = add i64 %prol.iter2835, 1
  %prol.iter2835.cmp.not = icmp eq i64 %prol.iter2835, 0
  br i1 %prol.iter2835.cmp.not, label %vec.epilog.scalar.ph2678.prol.loopexit, label %vec.epilog.scalar.ph2678.prol, !llvm.loop !111

vec.epilog.scalar.ph2678.prol.loopexit:           ; preds = %vec.epilog.scalar.ph2678.prol
  br i1 %found.conflict2662.not, label %.loopexit, label %vec.epilog.scalar.ph2678

vector.body2665:                                  ; preds = %vector.memcheck2659
  %i.bsu = load float, ptr @_ZZ7gmx_rmsiPPcE10delta_maxy, align 4, !tbaa !18, !alias.scope !190
  %broadcast.splatinsert2671 = insertelement <8 x float> poison, float %i.bsu, i64 0
  %broadcast.splat2672 = shufflevector <8 x float> %broadcast.splatinsert2671, <8 x float> poison, <8 x i32> zeroinitializer ; 12 uses
  %i.bsv = fmul <8 x float> %broadcast.splat2672, <float 0.000000e+00, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00>
  %i.bsw = fmul <8 x float> %broadcast.splat2672, <float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01>
  %i.bsx = fmul <8 x float> %broadcast.splat2672, <float 1.600000e+01, float 1.700000e+01, float 1.800000e+01, float 1.900000e+01, float 2.000000e+01, float 2.100000e+01, float 2.200000e+01, float 2.300000e+01>
  %i.bsy = fmul <8 x float> %broadcast.splat2672, <float 2.400000e+01, float 2.500000e+01, float 2.600000e+01, float 2.700000e+01, float 2.800000e+01, float 2.900000e+01, float 3.000000e+01, float 3.100000e+01>
  %i.bsz = fdiv <8 x float> %i.bsv, splat (float 1.000000e+02)
  %i.bta = fdiv <8 x float> %i.bsw, splat (float 1.000000e+02)
  %i.btb = fdiv <8 x float> %i.bsx, splat (float 1.000000e+02)
  %i.btc = fdiv <8 x float> %i.bsy, splat (float 1.000000e+02)
  %i.btd = getelementptr inbounds nuw i8, ptr %i.brg, i64 32
  %i.bte = getelementptr inbounds nuw i8, ptr %i.brg, i64 64
  %i.btf = getelementptr inbounds nuw i8, ptr %i.brg, i64 96
  store <8 x float> %i.bsz, ptr %i.brg, align 4, !tbaa !18, !alias.scope !191, !noalias !190
  store <8 x float> %i.bta, ptr %i.btd, align 4, !tbaa !18, !alias.scope !191, !noalias !190
  store <8 x float> %i.btb, ptr %i.bte, align 4, !tbaa !18, !alias.scope !191, !noalias !190
  store <8 x float> %i.btc, ptr %i.btf, align 4, !tbaa !18, !alias.scope !191, !noalias !190
  %i.btg = fmul <8 x float> %broadcast.splat2672, <float 3.200000e+01, float 3.300000e+01, float 3.400000e+01, float 3.500000e+01, float 3.600000e+01, float 3.700000e+01, float 3.800000e+01, float 3.900000e+01>
  %i.bth = fmul <8 x float> %broadcast.splat2672, <float 4.000000e+01, float 4.100000e+01, float 4.200000e+01, float 4.300000e+01, float 4.400000e+01, float 4.500000e+01, float 4.600000e+01, float 4.700000e+01>
  %i.bti = fmul <8 x float> %broadcast.splat2672, <float 4.800000e+01, float 4.900000e+01, float 5.000000e+01, float 5.100000e+01, float 5.200000e+01, float 5.300000e+01, float 5.400000e+01, float 5.500000e+01>
  %i.btj = fmul <8 x float> %broadcast.splat2672, <float 5.600000e+01, float 5.700000e+01, float 5.800000e+01, float 5.900000e+01, float 6.000000e+01, float 6.100000e+01, float 6.200000e+01, float 6.300000e+01>
  %i.btk = fdiv <8 x float> %i.btg, splat (float 1.000000e+02)
  %i.btl = fdiv <8 x float> %i.bth, splat (float 1.000000e+02)
  %i.btm = fdiv <8 x float> %i.bti, splat (float 1.000000e+02)
  %i.btn = fdiv <8 x float> %i.btj, splat (float 1.000000e+02)
  %i.bto = getelementptr inbounds nuw i8, ptr %i.brg, i64 128
  %i.btp = getelementptr inbounds nuw i8, ptr %i.brg, i64 160
  %i.btq = getelementptr inbounds nuw i8, ptr %i.brg, i64 192
  %i.btr = getelementptr inbounds nuw i8, ptr %i.brg, i64 224
  store <8 x float> %i.btk, ptr %i.bto, align 4, !tbaa !18, !alias.scope !191, !noalias !190
  store <8 x float> %i.btl, ptr %i.btp, align 4, !tbaa !18, !alias.scope !191, !noalias !190
  store <8 x float> %i.btm, ptr %i.btq, align 4, !tbaa !18, !alias.scope !191, !noalias !190
  store <8 x float> %i.btn, ptr %i.btr, align 4, !tbaa !18, !alias.scope !191, !noalias !190
  %i.bts = fmul <8 x float> %broadcast.splat2672, <float 6.400000e+01, float 6.500000e+01, float 6.600000e+01, float 6.700000e+01, float 6.800000e+01, float 6.900000e+01, float 7.000000e+01, float 7.100000e+01>
  %i.btt = fmul <8 x float> %broadcast.splat2672, <float 7.200000e+01, float 7.300000e+01, float 7.400000e+01, float 7.500000e+01, float 7.600000e+01, float 7.700000e+01, float 7.800000e+01, float 7.900000e+01>
  %i.btu = fmul <8 x float> %broadcast.splat2672, <float 8.000000e+01, float 8.100000e+01, float 8.200000e+01, float 8.300000e+01, float 8.400000e+01, float 8.500000e+01, float 8.600000e+01, float 8.700000e+01>
  %i.btv = fmul <8 x float> %broadcast.splat2672, <float 8.800000e+01, float 8.900000e+01, float 9.000000e+01, float 9.100000e+01, float 9.200000e+01, float 9.300000e+01, float 9.400000e+01, float 9.500000e+01>
  %i.btw = fdiv <8 x float> %i.bts, splat (float 1.000000e+02)
  %i.btx = fdiv <8 x float> %i.btt, splat (float 1.000000e+02)
  %i.bty = fdiv <8 x float> %i.btu, splat (float 1.000000e+02)
  %i.btz = fdiv <8 x float> %i.btv, splat (float 1.000000e+02)
  %i.bua = getelementptr inbounds nuw i8, ptr %i.brg, i64 256
  %i.bub = getelementptr inbounds nuw i8, ptr %i.brg, i64 288
  %i.buc = getelementptr inbounds nuw i8, ptr %i.brg, i64 320
  %i.bud = getelementptr inbounds nuw i8, ptr %i.brg, i64 352
  store <8 x float> %i.btw, ptr %i.bua, align 4, !tbaa !18, !alias.scope !191, !noalias !190
  store <8 x float> %i.btx, ptr %i.bub, align 4, !tbaa !18, !alias.scope !191, !noalias !190
  store <8 x float> %i.bty, ptr %i.buc, align 4, !tbaa !18, !alias.scope !191, !noalias !190
  store <8 x float> %i.btz, ptr %i.bud, align 4, !tbaa !18, !alias.scope !191, !noalias !190
  %i.bue = load float, ptr @_ZZ7gmx_rmsiPPcE10delta_maxy, align 4, !tbaa !18, !alias.scope !190
  %broadcast.splatinsert2687 = insertelement <4 x float> poison, float %i.bue, i64 0
  %broadcast.splat2688 = shufflevector <4 x float> %broadcast.splatinsert2687, <4 x float> poison, <4 x i32> zeroinitializer
  %i.buf = fmul <4 x float> %broadcast.splat2688, <float 9.600000e+01, float 9.700000e+01, float 9.800000e+01, float 9.900000e+01>
  %i.bug = fdiv <4 x float> %i.buf, splat (float 1.000000e+02)
  %i.buh = getelementptr inbounds nuw i8, ptr %i.brg, i64 384
  store <4 x float> %i.bug, ptr %i.buh, align 4, !tbaa !18, !alias.scope !191, !noalias !190
  br label %vec.epilog.scalar.ph2678.prol.preheader

_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit1027:      ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit1027.prol.loopexit, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit1027
  %indvars.iv1980 = phi i64 [ %indvars.iv.next1981.7, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit1027 ], [ %indvars.iv1980.unr, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit1027.prol.loopexit ] ; 10 uses
  %i.bui = getelementptr inbounds nuw [4 x i8], ptr %i.axy, i64 %indvars.iv1980
  %i.buj = load float, ptr %i.bui, align 4, !tbaa !18
  %i.buk = load float, ptr %i.axy, align 4, !tbaa !18
  %i.bul = fsub float %i.buj, %i.buk
  %i.bum = getelementptr inbounds nuw [4 x i8], ptr %i.bqc, i64 %indvars.iv1980
  store float %i.bul, ptr %i.bum, align 4, !tbaa !18
end_hunk_0
begin_hunk_1_@llvm.fmuladd.v2f64
attributes #20 = { nounwind }
attributes #21 = { cold }
attributes #22 = { cold nounwind }
attributes #23 = { builtin nounwind }
attributes #24 = { noreturn }
attributes #25 = { builtin allocsize(0) }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !25}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!7, !7, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"p1 omnipotent char", !11, i64 0}
!13 = !{!6, !6, i64 0}
!14 = !{!"long", !6, i64 0}
!15 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !11, i64 0}
!16 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !15, i64 0, !15, i64 8, !15, i64 16}
!17 = !{!"float", !6, i64 0}
!18 = !{!17, !17, i64 0}
!19 = !{!12, !12, i64 0}
!20 = !{!"p1 _ZTSNSt10filesystem7__cxx114path5_List5_ImplE", !11, i64 0}
!21 = !{!20, !20, i64 0}
!22 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !12, i64 0}
!23 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !22, i64 0, !14, i64 8, !6, i64 16}
!24 = !{!23, !12, i64 0}
!25 = !{!"llvm.loop.mustprogress"}
!26 = !{!"llvm.loop.isvectorized", i32 1}
!27 = !{!"llvm.loop.unroll.runtime.disable"}
!28 = !{!"llvm.loop.unroll.disable"}
!29 = !{!16, !15, i64 0}
!30 = !{!23, !14, i64 8}
!31 = !{!22, !12, i64 0}
!32 = !{!14, !14, i64 0}
!33 = !{!16, !15, i64 8}
!34 = !{!16, !15, i64 16}
!35 = distinct !{!35, !25}
!36 = distinct !{!36, !25, !26, !27}
!37 = distinct !{!37, !25, !26, !27}
!38 = distinct !{!38, !25, !27, !26}
!39 = distinct !{!39, !25}
!40 = distinct !{!40, !25}
!41 = distinct !{!41, !25, !26, !27}
!42 = distinct !{!42, !25, !26, !27}
!43 = distinct !{!43, !25}
!44 = distinct !{!44, !28}
!45 = distinct !{!45, !25, !27, !26}
!46 = distinct !{!46, !25, !26, !27}
!47 = distinct !{!47, !25, !26, !27}
!48 = distinct !{!48, !25, !27, !26}
!49 = distinct !{!49, !25}
!50 = distinct !{!50, i1 false, !"LVerDomain"}
!51 = distinct !{!51, !50}
!52 = distinct !{!52, !50}
!53 = distinct !{!53, !25, !26, !27}
!54 = distinct !{!54, !25, !26}
!55 = distinct !{!55, !25, !26, !27}
!56 = distinct !{!56, !25, !27, !26}
!57 = distinct !{!57, !25}
!58 = distinct !{!58, !28}
!59 = distinct !{!59, !28}
!60 = distinct !{!60, !25}
!61 = distinct !{!61, !28}
!62 = distinct !{!62, !25}
!63 = distinct !{!63, !25}
!64 = distinct !{!64, !25, !26, !27}
!65 = distinct !{!65, !25, !26, !27}
!66 = distinct !{!66, !25, !27, !26}
!67 = distinct !{!67, !25}
!68 = distinct !{!68, !25}
!69 = distinct !{!69, !28}
!70 = distinct !{!70, !28}
!71 = distinct !{!71, !25}
!72 = distinct !{!72, !25}
!73 = distinct !{!73, !25}
!74 = distinct !{!74, !25}
!75 = distinct !{!75, !25}
!76 = distinct !{!76, !25}
!77 = distinct !{!77, !25}
!78 = distinct !{!78, !25}
!79 = distinct !{!79, !28}
!80 = distinct !{!80, !25}
!81 = distinct !{!81, !25}
!82 = distinct !{!82, !25, !26, !27}
!83 = distinct !{!83, !25, !26, !27}
!84 = distinct !{!84, !28}
!85 = distinct !{!85, !25, !26}
!86 = distinct !{!86, !25}
!87 = distinct !{!87, !25}
!88 = distinct !{!88, i1 false, !"LVerDomain"}
!89 = distinct !{!89, !88}
!90 = distinct !{!90, !88}
!91 = distinct !{!91, !25, !26, !27}
!92 = distinct !{!92, !28}
!93 = distinct !{!93, !25, !26}
!94 = distinct !{!94, !25}
!95 = distinct !{!95, !25}
!96 = distinct !{!96, !25}
!97 = distinct !{!97, !25}
!98 = distinct !{!98, !25}
!99 = distinct !{!99, !25}
!100 = distinct !{!100, !25}
!101 = distinct !{!101, !25}
!102 = distinct !{!102, !25}
!103 = distinct !{!103, !25}
!104 = distinct !{!104, i1 false, !"LVerDomain"}
!105 = distinct !{!105, !104}
!106 = distinct !{!106, !104}
!107 = distinct !{!107, !104}
!108 = distinct !{!108, !25, !26, !27}
!109 = distinct !{!109, !25, !26, !27}
!110 = distinct !{!110, !28}
!111 = distinct !{!111, !28}
!112 = distinct !{!112, i1 false, !"LVerDomain"}
!113 = distinct !{!113, !112}
!114 = distinct !{!114, !112}
!115 = distinct !{!115, !25, !26}
!116 = distinct !{!116, !25, !26}
!117 = distinct !{!117, !25}
!118 = distinct !{!118, !25}
!119 = distinct !{!119, !25}
!120 = distinct !{!120, !25}
!121 = distinct !{!121, !25}
!122 = distinct !{!122, !25}
!123 = distinct !{!123, !25}
!124 = !{!"bool", !6, i64 0}
!125 = !{!"_ZTS7t_pargs", !12, i64 0, !124, i64 8, !7, i64 12, !6, i64 16, !12, i64 24}
!126 = !{!125, !12, i64 0}
!127 = !{!125, !124, i64 8}
!128 = !{!125, !7, i64 12}
!129 = !{!125, !12, i64 24}
!130 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !16, i64 0}
!131 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !130, i64 0}
!132 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !131, i64 0}
!133 = !{!"_ZTS8t_filenm", !7, i64 0, !12, i64 8, !12, i64 16, !14, i64 24, !132, i64 32}
!134 = !{!133, !7, i64 0}
!135 = !{!133, !14, i64 24}
!136 = !{!133, !12, i64 8}
!137 = !{!133, !12, i64 16}
!138 = !{!"p1 _ZTS8_IO_FILE", !11, i64 0}
!139 = !{!138, !138, i64 0}
!140 = !{!124, !124, i64 0}
!141 = !{i8 0, i8 2}
!142 = !{}
!143 = !{!"any p2 pointer", !11, i64 0}
!144 = !{!"p2 omnipotent char", !143, i64 0}
!145 = !{!"p1 _ZTS9t_iparams", !11, i64 0}
!146 = !{!"_ZTSN3gmx16EnumerationArrayI19InteractionFunction7t_ilistLS1_95EEE", !6, i64 0}
!147 = !{!"_ZTS6t_idef", !7, i64 0, !7, i64 4, !11, i64 8, !145, i64 16, !17, i64 24, !145, i64 32, !145, i64 40, !146, i64 48, !7, i64 2328}
!148 = !{!"p1 _ZTS6t_atom", !11, i64 0}
!149 = !{!"any p3 pointer", !143, i64 0}
!150 = !{!"p3 omnipotent char", !149, i64 0}
!151 = !{!"p1 _ZTS9t_resinfo", !11, i64 0}
!152 = !{!"p1 _ZTS9t_pdbinfo", !11, i64 0}
!153 = !{!"_ZTS7t_atoms", !7, i64 0, !148, i64 8, !150, i64 16, !150, i64 24, !150, i64 32, !7, i64 40, !151, i64 48, !152, i64 56, !124, i64 64, !124, i64 65, !124, i64 66, !124, i64 67, !124, i64 68}
!154 = !{!"p1 int", !11, i64 0}
!155 = !{!"_ZTS7t_block", !7, i64 0, !154, i64 8, !7, i64 16}
!156 = !{!"p1 _ZTS8t_symbuf", !11, i64 0}
!157 = !{!"_ZTS8t_symtab", !7, i64 0, !156, i64 8}
!158 = !{!"_ZTS10t_topology", !144, i64 0, !147, i64 8, !153, i64 2344, !155, i64 2416, !124, i64 2440, !157, i64 2448}
!159 = !{!158, !7, i64 2344}
!160 = !{!"short", !6, i64 0}
!161 = !{!"_ZTS12ParticleType", !6, i64 0}
!162 = !{!"_ZTS6t_atom", !17, i64 0, !17, i64 4, !17, i64 8, !17, i64 12, !160, i64 16, !160, i64 18, !161, i64 20, !7, i64 24, !7, i64 28, !6, i64 32}
!163 = !{!162, !17, i64 0}
!164 = !{!154, !154, i64 0}
!165 = !{!"branch_weights", i32 4, i32 28}
!166 = !{!"p1 float", !11, i64 0}
!167 = !{!166, !166, i64 0}
!168 = !{!"_ZTS7PbcType", !6, i64 0}
!169 = !{!168, !168, i64 0}
!170 = !{!51}
!171 = !{!52}
!172 = !{!"p1 _ZTS16gmx_output_env_t", !11, i64 0}
!173 = !{!172, !172, i64 0}
!174 = !{!"_ZTS22t_interaction_function", !12, i64 0, !12, i64 8, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28}
!175 = !{!174, !7, i64 16}
!176 = !{!174, !7, i64 28}
!177 = !{!"_ZTS7t_ilist", !7, i64 0, !154, i64 8, !7, i64 16}
!178 = !{!177, !7, i64 0}
!179 = !{!177, !154, i64 8}
!180 = !{!"p1 _ZTS11t_trxstatus", !11, i64 0}
!181 = !{!180, !180, i64 0}
!182 = !{!89}
!183 = !{!90}
!184 = !{!"double", !6, i64 0}
!185 = !{!184, !184, i64 0}
!186 = !{!105}
!187 = !{!106}
!188 = !{!107}
!189 = !{!106, !105}
!190 = !{!113}
!191 = !{!114}
!192 = distinct !{!192, !25}
!193 = distinct !{!193, !28}
!194 = distinct !{!194, !28}
!195 = distinct !{!195, !28}
!196 = distinct !{!196, !25, !26, !27}
!197 = distinct !{!197, !25, !27, !26}
!198 = distinct !{!198, !28}
!199 = distinct !{!199, !25}
!200 = distinct !{!200, !28}
!201 = distinct !{!201, i1 true, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!202 = distinct !{!202, !201, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!203 = distinct !{!203, !201, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!204 = distinct !{!204, !25}
!205 = !{!202}
!206 = !{!203}
!207 = !{!202, !203}
end_hunk_1
