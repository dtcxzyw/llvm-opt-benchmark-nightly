Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/pme_spread?download=true
inline.NumInlined: 325
inline.NumDeleted: 134
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_Z14spread_on_gridPK9gmx_pme_tP11PmeAtomCommP14PmeAndFftGridsbbb.omp_outlined.1:bb.a
  %index130 = phi i64 [ 0, %vector.ph127 ], [ %index.next139, %vector.body129 ] ; 3 uses
  %i.bfk = trunc nuw nsw i64 %index130 to i32
  %i.bfl = add i32 %i.bfd, %i.bfk
  %i.bfm = getelementptr inbounds nuw [4 x i8], ptr %i.beo, i64 %index130 ; 4 uses
  %i.bfn = getelementptr inbounds nuw i8, ptr %i.bfm, i64 32
  %i.bfo = getelementptr inbounds nuw i8, ptr %i.bfm, i64 64
  %i.bfp = getelementptr inbounds nuw i8, ptr %i.bfm, i64 96
  %wide.load131 = load <8 x float>, ptr %i.bfm, align 4, !tbaa !134, !alias.scope !337, !noalias !338
  %wide.load132 = load <8 x float>, ptr %i.bfn, align 4, !tbaa !134, !alias.scope !337, !noalias !338
  %wide.load133 = load <8 x float>, ptr %i.bfo, align 4, !tbaa !134, !alias.scope !337, !noalias !338
  %wide.load134 = load <8 x float>, ptr %i.bfp, align 4, !tbaa !134, !alias.scope !337, !noalias !338
  %i.bfq = sext i32 %i.bfl to i64
  %i.bfr = getelementptr inbounds [4 x i8], ptr %i.aoe, i64 %i.bfq ; 5 uses
  %i.bfs = getelementptr inbounds nuw i8, ptr %i.bfr, i64 32 ; 2 uses
  %i.bft = getelementptr inbounds nuw i8, ptr %i.bfr, i64 64 ; 2 uses
  %i.bfu = getelementptr inbounds nuw i8, ptr %i.bfr, i64 96 ; 2 uses
  %wide.load135 = load <8 x float>, ptr %i.bfr, align 4, !tbaa !134, !alias.scope !338
  %wide.load136 = load <8 x float>, ptr %i.bfs, align 4, !tbaa !134, !alias.scope !338
  %wide.load137 = load <8 x float>, ptr %i.bft, align 4, !tbaa !134, !alias.scope !338
  %wide.load138 = load <8 x float>, ptr %i.bfu, align 4, !tbaa !134, !alias.scope !338
  %i.bfv = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat, <8 x float> %wide.load131, <8 x float> %wide.load135)
  %i.bfw = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat, <8 x float> %wide.load132, <8 x float> %wide.load136)
  %i.bfx = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat, <8 x float> %wide.load133, <8 x float> %wide.load137)
  %i.bfy = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat, <8 x float> %wide.load134, <8 x float> %wide.load138)
  store <8 x float> %i.bfv, ptr %i.bfr, align 4, !tbaa !134, !alias.scope !338
  store <8 x float> %i.bfw, ptr %i.bfs, align 4, !tbaa !134, !alias.scope !338
  store <8 x float> %i.bfx, ptr %i.bft, align 4, !tbaa !134, !alias.scope !338
  store <8 x float> %i.bfy, ptr %i.bfu, align 4, !tbaa !134, !alias.scope !338
  %index.next139 = add nuw i64 %index130, 32      ; 2 uses
  %i.bfz = icmp eq i64 %index.next139, %n.vec128
  br i1 %i.bfz, label %middle.block140, label %vector.body129, !llvm.loop !306

middle.block140:                                  ; preds = %vector.body129
  br i1 %cmp.n141, label %._crit_edge414.i, label %vec.epilog.iter.check143

vec.epilog.iter.check143:                         ; preds = %middle.block140
  br i1 %min.epilog.iters.check145, label %vec.epilog.scalar.ph144.preheader, label %vec.epilog.ph146, !prof !138

vec.epilog.ph146:                                 ; preds = %vector.main.loop.iter.check125, %vec.epilog.iter.check143
  %vec.epilog.resume.val147 = phi i64 [ %n.vec128, %vec.epilog.iter.check143 ], [ 0, %vector.main.loop.iter.check125 ]
  %broadcast.splatinsert149 = insertelement <4 x float> poison, float %i.bez, i64 0
  %broadcast.splat150 = shufflevector <4 x float> %broadcast.splatinsert149, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body151

vec.epilog.vector.body151:                        ; preds = %vec.epilog.vector.body151, %vec.epilog.ph146
  %index152 = phi i64 [ %vec.epilog.resume.val147, %vec.epilog.ph146 ], [ %index.next155, %vec.epilog.vector.body151 ] ; 3 uses
  %i.bga = trunc nuw nsw i64 %index152 to i32
  %i.bgb = add i32 %i.bfd, %i.bga
  %i.bgc = getelementptr inbounds nuw [4 x i8], ptr %i.beo, i64 %index152
  %wide.load153 = load <4 x float>, ptr %i.bgc, align 4, !tbaa !134, !alias.scope !337, !noalias !338
  %i.bgd = sext i32 %i.bgb to i64
  %i.bge = getelementptr inbounds [4 x i8], ptr %i.aoe, i64 %i.bgd ; 2 uses
  %wide.load154 = load <4 x float>, ptr %i.bge, align 4, !tbaa !134, !alias.scope !338
  %i.bgf = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat150, <4 x float> %wide.load153, <4 x float> %wide.load154)
  store <4 x float> %i.bgf, ptr %i.bge, align 4, !tbaa !134, !alias.scope !338
  %index.next155 = add nuw i64 %index152, 4       ; 2 uses
  %i.bgg = icmp eq i64 %index.next155, %n.vec148
  br i1 %i.bgg, label %vec.epilog.middle.block156, label %vec.epilog.vector.body151, !llvm.loop !307

vec.epilog.middle.block156:                       ; preds = %vec.epilog.vector.body151
  br i1 %cmp.n157, label %._crit_edge414.i, label %vec.epilog.scalar.ph144.preheader

vec.epilog.scalar.ph144.preheader:                ; preds = %iter.check142, %vector.scevcheck, %vector.memcheck124, %vec.epilog.iter.check143, %vec.epilog.middle.block156
  %indvars.iv438.i.ph = phi i64 [ 0, %iter.check142 ], [ 0, %vector.scevcheck ], [ 0, %vector.memcheck124 ], [ %n.vec128, %vec.epilog.iter.check143 ], [ %n.vec148, %vec.epilog.middle.block156 ] ; 3 uses
  br i1 %lcmp.mod527.not, label %vec.epilog.scalar.ph144.prol.loopexit, label %vec.epilog.scalar.ph144.prol

vec.epilog.scalar.ph144.prol:                     ; preds = %vec.epilog.scalar.ph144.preheader, %vec.epilog.scalar.ph144.prol
  %indvars.iv438.i.prol = phi i64 [ %indvars.iv.next439.i.prol, %vec.epilog.scalar.ph144.prol ], [ %indvars.iv438.i.ph, %vec.epilog.scalar.ph144.preheader ] ; 3 uses
  %prol.iter528 = phi i64 [ %prol.iter528.next, %vec.epilog.scalar.ph144.prol ], [ 0, %vec.epilog.scalar.ph144.preheader ]
  %i.bgh = trunc nuw nsw i64 %indvars.iv438.i.prol to i32
  %i.bgi = add i32 %i.bfd, %i.bgh
  %i.bgj = getelementptr inbounds nuw [4 x i8], ptr %i.beo, i64 %indvars.iv438.i.prol
  %i.bgk = load float, ptr %i.bgj, align 4, !tbaa !134
  %i.bgl = sext i32 %i.bgi to i64
  %i.bgm = getelementptr inbounds [4 x i8], ptr %i.aoe, i64 %i.bgl ; 2 uses
  %i.bgn = load float, ptr %i.bgm, align 4, !tbaa !134
  %i.bgo = call float @llvm.fmuladd.f32(float %i.bez, float %i.bgk, float %i.bgn)
  store float %i.bgo, ptr %i.bgm, align 4, !tbaa !134
  %indvars.iv.next439.i.prol = add nuw nsw i64 %indvars.iv438.i.prol, 1 ; 2 uses
  %prol.iter528.next = add i64 %prol.iter528, 1   ; 2 uses
  %prol.iter528.cmp.not = icmp eq i64 %prol.iter528.next, %xtraiter526
  br i1 %prol.iter528.cmp.not, label %vec.epilog.scalar.ph144.prol.loopexit, label %vec.epilog.scalar.ph144.prol, !llvm.loop !308

vec.epilog.scalar.ph144.prol.loopexit:            ; preds = %vec.epilog.scalar.ph144.prol, %vec.epilog.scalar.ph144.preheader
  %indvars.iv438.i.unr = phi i64 [ %indvars.iv438.i.ph, %vec.epilog.scalar.ph144.preheader ], [ %indvars.iv.next439.i.prol, %vec.epilog.scalar.ph144.prol ]
  %i.bgp = sub nsw i64 %indvars.iv438.i.ph, %wide.trip.count449.i
  %i.bgq = icmp ugt i64 %i.bgp, -4
  br i1 %i.bgq, label %._crit_edge414.i, label %vec.epilog.scalar.ph144

vec.epilog.scalar.ph144:                          ; preds = %vec.epilog.scalar.ph144.prol.loopexit, %vec.epilog.scalar.ph144
  %indvars.iv438.i = phi i64 [ %indvars.iv.next439.i.3, %vec.epilog.scalar.ph144 ], [ %indvars.iv438.i.unr, %vec.epilog.scalar.ph144.prol.loopexit ] ; 6 uses
  %i.bgr = trunc nuw nsw i64 %indvars.iv438.i to i32
  %i.bgs = add i32 %i.bfd, %i.bgr
  %i.bgt = getelementptr inbounds nuw [4 x i8], ptr %i.beo, i64 %indvars.iv438.i
  %i.bgu = load float, ptr %i.bgt, align 4, !tbaa !134
  %i.bgv = sext i32 %i.bgs to i64
  %i.bgw = getelementptr inbounds [4 x i8], ptr %i.aoe, i64 %i.bgv ; 2 uses
  %i.bgx = load float, ptr %i.bgw, align 4, !tbaa !134
  %i.bgy = call float @llvm.fmuladd.f32(float %i.bez, float %i.bgu, float %i.bgx)
  store float %i.bgy, ptr %i.bgw, align 4, !tbaa !134
  %indvars.iv.next439.i = add nuw nsw i64 %indvars.iv438.i, 1 ; 2 uses
  %i.bgz = trunc nuw nsw i64 %indvars.iv.next439.i to i32
  %i.bha = add i32 %i.bfd, %i.bgz
  %i.bhb = getelementptr inbounds nuw [4 x i8], ptr %i.beo, i64 %indvars.iv.next439.i
  %i.bhc = load float, ptr %i.bhb, align 4, !tbaa !134
  %i.bhd = sext i32 %i.bha to i64
  %i.bhe = getelementptr inbounds [4 x i8], ptr %i.aoe, i64 %i.bhd ; 2 uses
  %i.bhf = load float, ptr %i.bhe, align 4, !tbaa !134
  %i.bhg = call float @llvm.fmuladd.f32(float %i.bez, float %i.bhc, float %i.bhf)
  store float %i.bhg, ptr %i.bhe, align 4, !tbaa !134
  %indvars.iv.next439.i.1 = add nuw nsw i64 %indvars.iv438.i, 2 ; 2 uses
  %i.bhh = trunc nuw nsw i64 %indvars.iv.next439.i.1 to i32
  %i.bhi = add i32 %i.bfd, %i.bhh
  %i.bhj = getelementptr inbounds nuw [4 x i8], ptr %i.beo, i64 %indvars.iv.next439.i.1
  %i.bhk = load float, ptr %i.bhj, align 4, !tbaa !134
  %i.bhl = sext i32 %i.bhi to i64
  %i.bhm = getelementptr inbounds [4 x i8], ptr %i.aoe, i64 %i.bhl ; 2 uses
  %i.bhn = load float, ptr %i.bhm, align 4, !tbaa !134
  %i.bho = call float @llvm.fmuladd.f32(float %i.bez, float %i.bhk, float %i.bhn)
  store float %i.bho, ptr %i.bhm, align 4, !tbaa !134
  %indvars.iv.next439.i.2 = add nuw nsw i64 %indvars.iv438.i, 3 ; 2 uses
  %i.bhp = trunc nuw nsw i64 %indvars.iv.next439.i.2 to i32
  %i.bhq = add i32 %i.bfd, %i.bhp
  %i.bhr = getelementptr inbounds nuw [4 x i8], ptr %i.beo, i64 %indvars.iv.next439.i.2
  %i.bhs = load float, ptr %i.bhr, align 4, !tbaa !134
  %i.bht = sext i32 %i.bhq to i64
  %i.bhu = getelementptr inbounds [4 x i8], ptr %i.aoe, i64 %i.bht ; 2 uses
  %i.bhv = load float, ptr %i.bhu, align 4, !tbaa !134
  %i.bhw = call float @llvm.fmuladd.f32(float %i.bez, float %i.bhs, float %i.bhv)
  store float %i.bhw, ptr %i.bhu, align 4, !tbaa !134
  %indvars.iv.next439.i.3 = add nuw nsw i64 %indvars.iv438.i, 4 ; 2 uses
  %exitcond.not.i47.3 = icmp eq i64 %indvars.iv.next439.i.3, %wide.trip.count449.i
  br i1 %exitcond.not.i47.3, label %._crit_edge414.i, label %vec.epilog.scalar.ph144, !llvm.loop !309

._crit_edge414.i:                                 ; preds = %vec.epilog.scalar.ph144.prol.loopexit, %vec.epilog.scalar.ph144, %vec.epilog.middle.block156, %middle.block140
  %indvars.iv.next442.i = add nuw nsw i64 %indvars.iv441.i, 1 ; 2 uses
  %exitcond445.not.i = icmp eq i64 %indvars.iv.next442.i, %wide.trip.count449.i
  br i1 %exitcond445.not.i, label %._crit_edge418.i, label %iter.check142, !llvm.loop !310

._crit_edge418.i:                                 ; preds = %._crit_edge414.i
  %indvars.iv.next447.i = add nuw nsw i64 %indvars.iv446.i, 1 ; 2 uses
  %exitcond450.not.i = icmp eq i64 %indvars.iv.next447.i, %wide.trip.count449.i
  br i1 %exitcond450.not.i, label %.loopexit.i45, label %.lr.ph417.i, !llvm.loop !311

.loopexit.i45:                                    ; preds = %._crit_edge418.i, %.preheader.i46, %.lr.ph423.split.i
  %indvars.iv.next452.i = add nuw nsw i64 %indvars.iv451.i, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next452.i, %i.api
  br i1 %exitcond.not, label %_ZL35spread_coefficients_bsplines_threadP9pmegrid_tPK11PmeAtomCommP12splinedata_tRK15pme_spline_work.exit, label %.lr.ph423.split.i, !llvm.loop !302

_ZL35spread_coefficients_bsplines_threadP9pmegrid_tPK11PmeAtomCommP12splinedata_tRK15pme_spline_work.exit: ; preds = %.loopexit407.us.i, %.loopexit406.us.i, %.loopexit.i45, %._crit_edge.i41
  %i.bhx = load ptr, ptr %4, align 8, !tbaa !11
  %i.bhy = getelementptr inbounds nuw i8, ptr %i.bhx, i64 80
  %i.bhz = load i8, ptr %i.bhy, align 8, !tbaa !108, !range !106, !noundef !107
  %i.bia = trunc nuw i8 %i.bhz to i1
  br i1 %i.bia, label %bb.q, label %bb.s

bb.q:                                             ; preds = %_ZL35spread_coefficients_bsplines_threadP9pmegrid_tPK11PmeAtomCommP12splinedata_tRK15pme_spline_work.exit
  %i.bib = load ptr, ptr %3, align 8, !tbaa !15   ; 3 uses
  %i.bic = getelementptr inbounds nuw i8, ptr %i.bib, i64 200
  %i.bid = load ptr, ptr %i.bic, align 8, !tbaa !129 ; 2 uses
  %i.bie = ptrtoaddr ptr %i.bid to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #3
  %i.bif = getelementptr inbounds nuw i8, ptr %i.bib, i64 216
  %i.big = load ptr, ptr %i.bif, align 8, !tbaa !130
  %i.bih = invoke noundef i32 @_Z30gmx_parallel_3dfft_real_limitsP18gmx_parallel_3dfftPiS1_S1_(ptr noundef %i.big, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c)
          to label %.noexc unwind label %bb.r     ; 0 uses

.noexc:                                           ; preds = %bb.q
  %i.bii = load i32, ptr %i.q, align 4, !tbaa !105
  %i.bij = load i32, ptr %i.r, align 4, !tbaa !105
  %i.bik = getelementptr inbounds nuw i8, ptr %i.bib, i64 88
  %i.bil = load ptr, ptr %i.bik, align 8, !tbaa !193
  %i.bim = getelementptr inbounds nuw [72 x i8], ptr %i.bil, i64 %indvars.iv ; 8 uses
  %i.bin = getelementptr inbounds nuw i8, ptr %i.bim, i64 44
  %i.bio = load i32, ptr %i.bin, align 4, !tbaa !105
  %i.bip = getelementptr inbounds nuw i8, ptr %i.bim, i64 48
  %i.biq = load i32, ptr %i.bip, align 8, !tbaa !105
  %i.bir = getelementptr inbounds nuw i8, ptr %i.bim, i64 12
  %i.bis = getelementptr inbounds nuw i8, ptr %i.bim, i64 36
  %i.bit = load i32, ptr %i.bis, align 4, !tbaa !196 ; 2 uses
  %i.biu = getelementptr inbounds nuw i8, ptr %i.bim, i64 24
  %i.biv = load i32, ptr %i.bir, align 4, !tbaa !105
  %reass.sub = sub i32 %i.biv, %i.bit
  %.reass.i = add i32 %reass.sub, 1
  %i.biw = load i32, ptr %i.a, align 4, !tbaa !105
  %i.bix = load i32, ptr %i.biu, align 8, !tbaa !105 ; 2 uses
  %i.biy = sub nsw i32 %i.biw, %i.bix
  %.sroa.speculated.i = call i32 @llvm.smin.i32(i32 %i.biy, i32 %.reass.i) ; 2 uses
  %i.biz = getelementptr inbounds nuw i8, ptr %i.bim, i64 16
  %i.bja = getelementptr inbounds nuw i8, ptr %i.bim, i64 28
  %i.bjb = load <2 x i32>, ptr %i.biz, align 8, !tbaa !105
  %i.bjc = insertelement <2 x i32> poison, i32 %i.bit, i64 0
  %i.bjd = shufflevector <2 x i32> %i.bjc, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.bje = sub <2 x i32> %i.bjb, %i.bjd
  %i.bjf = add <2 x i32> %i.bje, splat (i32 1)
  %i.bjg = load <2 x i32>, ptr %i.s, align 4, !tbaa !105
  %i.bjh = load <2 x i32>, ptr %i.bja, align 4, !tbaa !105 ; 3 uses
  %i.bji = sub nsw <2 x i32> %i.bjg, %i.bjh
  %i.bjj = call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.bji, <2 x i32> %i.bjf) ; 3 uses
  %i.bjk = getelementptr inbounds nuw i8, ptr %i.bim, i64 56
  %i.bjl = load ptr, ptr %i.bjk, align 8, !tbaa !194
  %i.bjm = load ptr, ptr %i.bjl, align 8, !tbaa !195 ; 2 uses
  %i.bjn = ptrtoaddr ptr %i.bjm to i64
  %i.bjo = icmp sgt i32 %.sroa.speculated.i, 0
  br i1 %i.bjo, label %.preheader.lr.ph.i, label %_ZL15copy_local_gridP14PmeAndFftGridsi.exit

.preheader.lr.ph.i:                               ; preds = %.noexc
  %9 = icmp slt <2 x i32> %i.bjj, splat (i32 1)   ; 2 uses
  %10 = extractelement <2 x i1> %9, i64 0
  %11 = extractelement <2 x i1> %9, i64 1
  %brmerge.i = select i1 %10, i1 true, i1 %11
  br i1 %brmerge.i, label %_ZL15copy_local_gridP14PmeAndFftGridsi.exit, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %.preheader.lr.ph.i
  %i.bjp = sext i32 %i.biq to i64                 ; 3 uses
  %i.bjq = sext i32 %i.bio to i64                 ; 2 uses
  %wide.trip.count69.i = zext nneg i32 %.sroa.speculated.i to i64
  %i.bjr = extractelement <2 x i32> %i.bjj, i64 0
  %wide.trip.count64.i = zext nneg i32 %i.bjr to i64
  %i.bjs = extractelement <2 x i32> %i.bjj, i64 1 ; 3 uses
  %wide.trip.count.i48 = zext i32 %i.bjs to i64   ; 8 uses
  %i.bjt = mul nsw i64 %i.bjp, -4
  %i.bju = sub i64 %i.bie, %i.bjn
  %i.bjv = mul nsw i64 %i.bjp, -4
  %i.bjw = mul i64 %i.bjv, %i.bjq
  %i.bjx = extractelement <2 x i32> %i.bjh, i64 0
  %i.bjy = extractelement <2 x i32> %i.bjh, i64 1
  %min.iters.check = icmp ult i32 %i.bjs, 4
  %min.iters.check110 = icmp ult i32 %i.bjs, 32
  %i.bjz = and i64 %wide.trip.count.i48, 28
  %n.vec = and i64 %wide.trip.count.i48, 2147483616 ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i48
  %min.epilog.iters.check = icmp eq i64 %i.bjz, 0
  %n.vec114 = and i64 %wide.trip.count.i48, 2147483644 ; 3 uses
  %cmp.n118 = icmp eq i64 %n.vec114, %wide.trip.count.i48
  br label %.preheader.i49

.preheader.i49:                                   ; preds = %._crit_edge53.i, %.preheader.preheader.i
  %indvars.iv66.i = phi i64 [ 0, %.preheader.preheader.i ], [ %indvars.iv.next67.i, %._crit_edge53.i ] ; 4 uses
  %i.bka = mul i64 %i.bjw, %indvars.iv66.i
  %i.bkb = add i64 %i.bju, %i.bka
  %i.bkc = trunc i64 %indvars.iv66.i to i32
  %i.bkd = add i32 %i.bix, %i.bkc
  %i.bke = mul i32 %i.bkd, %i.bii
  %i.bkf = add i32 %i.bke, %i.bjx
  %i.bkg = mul nsw i64 %indvars.iv66.i, %i.bjq
  br label %iter.check

iter.check:                                       ; preds = %._crit_edge.i56, %.preheader.i49
  %indvars.iv61.i = phi i64 [ 0, %.preheader.i49 ], [ %indvars.iv.next62.i, %._crit_edge.i56 ] ; 4 uses
  %i.bkh = trunc nuw nsw i64 %indvars.iv61.i to i32
  %i.bki = add i32 %i.bkf, %i.bkh
  %i.bkj = mul nsw i32 %i.bki, %i.bij
  %i.bkk = add nsw i32 %i.bkj, %i.bjy
  %i.bkl = add nsw i64 %indvars.iv61.i, %i.bkg
  %i.bkm = mul nsw i64 %i.bkl, %i.bjp
  %i.bkn = sext i32 %i.bkk to i64                 ; 2 uses
  %invariant.gep.i51 = getelementptr [4 x i8], ptr %i.bjm, i64 %i.bkm ; 11 uses
  %invariant.gep71.i = getelementptr [4 x i8], ptr %i.bid, i64 %i.bkn ; 11 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.bko = mul i64 %indvars.iv61.i, %i.bjt
  %i.bkp = add i64 %i.bkb, %i.bko
  %i.bkq = shl nsw i64 %i.bkn, 2
  %i.bkr = add i64 %i.bkp, %i.bkq
  %i.bks = add i64 %i.bkr, -1
  %diff.check = icmp ult i64 %i.bks, 127
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check110, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.bkt = getelementptr [4 x i8], ptr %invariant.gep.i51, i64 %index ; 4 uses
  %i.bku = getelementptr i8, ptr %i.bkt, i64 32
  %i.bkv = getelementptr i8, ptr %i.bkt, i64 64
  %i.bkw = getelementptr i8, ptr %i.bkt, i64 96
  %wide.load = load <8 x float>, ptr %i.bkt, align 4, !tbaa !134
  %wide.load111 = load <8 x float>, ptr %i.bku, align 4, !tbaa !134
  %wide.load112 = load <8 x float>, ptr %i.bkv, align 4, !tbaa !134
  %wide.load113 = load <8 x float>, ptr %i.bkw, align 4, !tbaa !134
  %i.bkx = getelementptr [4 x i8], ptr %invariant.gep71.i, i64 %index ; 4 uses
  %i.bky = getelementptr i8, ptr %i.bkx, i64 32
  %i.bkz = getelementptr i8, ptr %i.bkx, i64 64
  %i.bla = getelementptr i8, ptr %i.bkx, i64 96
  store <8 x float> %wide.load, ptr %i.bkx, align 4, !tbaa !134
  store <8 x float> %wide.load111, ptr %i.bky, align 4, !tbaa !134
  store <8 x float> %wide.load112, ptr %i.bkz, align 4, !tbaa !134
  store <8 x float> %wide.load113, ptr %i.bla, align 4, !tbaa !134
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.blb = icmp eq i64 %index.next, %n.vec
  br i1 %i.blb, label %middle.block, label %vector.body, !llvm.loop !312

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i56, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !138

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index115 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next117, %vec.epilog.vector.body ] ; 3 uses
  %i.blc = getelementptr [4 x i8], ptr %invariant.gep.i51, i64 %index115
  %wide.load116 = load <4 x float>, ptr %i.blc, align 4, !tbaa !134
  %i.bld = getelementptr [4 x i8], ptr %invariant.gep71.i, i64 %index115
  store <4 x float> %wide.load116, ptr %i.bld, align 4, !tbaa !134
  %index.next117 = add nuw i64 %index115, 4       ; 2 uses
  %i.ble = icmp eq i64 %index.next117, %n.vec114
  br i1 %i.ble, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !313

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n118, label %._crit_edge.i56, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i52.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec114, %vec.epilog.middle.block ] ; 4 uses
  %i.blf = sub nsw i64 %wide.trip.count.i48, %indvars.iv.i52.ph
  %xtraiter529 = and i64 %i.blf, 7                ; 2 uses
  %lcmp.mod530.not = icmp eq i64 %xtraiter529, 0
  br i1 %lcmp.mod530.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.i52.prol = phi i64 [ %indvars.iv.next.i54.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.i52.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter531 = phi i64 [ %prol.iter531.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %gep.i53.prol = getelementptr [4 x i8], ptr %invariant.gep.i51, i64 %indvars.iv.i52.prol
  %i.blg = load float, ptr %gep.i53.prol, align 4, !tbaa !134
  %gep72.i.prol = getelementptr [4 x i8], ptr %invariant.gep71.i, i64 %indvars.iv.i52.prol
  store float %i.blg, ptr %gep72.i.prol, align 4, !tbaa !134
  %indvars.iv.next.i54.prol = add nuw nsw i64 %indvars.iv.i52.prol, 1 ; 2 uses
  %prol.iter531.next = add i64 %prol.iter531, 1   ; 2 uses
  %prol.iter531.cmp.not = icmp eq i64 %prol.iter531.next, %xtraiter529
  br i1 %prol.iter531.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !314

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.i52.unr = phi i64 [ %indvars.iv.i52.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.i54.prol, %vec.epilog.scalar.ph.prol ]
  %i.blh = sub nsw i64 %indvars.iv.i52.ph, %wide.trip.count.i48
  %i.bli = icmp ugt i64 %i.blh, -8
  br i1 %i.bli, label %._crit_edge.i56, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv.i52 = phi i64 [ %indvars.iv.next.i54.7, %vec.epilog.scalar.ph ], [ %indvars.iv.i52.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 10 uses
  %gep.i53 = getelementptr [4 x i8], ptr %invariant.gep.i51, i64 %indvars.iv.i52
  %i.blj = load float, ptr %gep.i53, align 4, !tbaa !134
  %gep72.i = getelementptr [4 x i8], ptr %invariant.gep71.i, i64 %indvars.iv.i52
  store float %i.blj, ptr %gep72.i, align 4, !tbaa !134
  %indvars.iv.next.i54 = add nuw nsw i64 %indvars.iv.i52, 1 ; 2 uses
  %gep.i53.1 = getelementptr [4 x i8], ptr %invariant.gep.i51, i64 %indvars.iv.next.i54
  %i.blk = load float, ptr %gep.i53.1, align 4, !tbaa !134
  %gep72.i.1 = getelementptr [4 x i8], ptr %invariant.gep71.i, i64 %indvars.iv.next.i54
  store float %i.blk, ptr %gep72.i.1, align 4, !tbaa !134
  %indvars.iv.next.i54.1 = add nuw nsw i64 %indvars.iv.i52, 2 ; 2 uses
  %gep.i53.2 = getelementptr [4 x i8], ptr %invariant.gep.i51, i64 %indvars.iv.next.i54.1
  %i.bll = load float, ptr %gep.i53.2, align 4, !tbaa !134
  %gep72.i.2 = getelementptr [4 x i8], ptr %invariant.gep71.i, i64 %indvars.iv.next.i54.1
  store float %i.bll, ptr %gep72.i.2, align 4, !tbaa !134
  %indvars.iv.next.i54.2 = add nuw nsw i64 %indvars.iv.i52, 3 ; 2 uses
  %gep.i53.3 = getelementptr [4 x i8], ptr %invariant.gep.i51, i64 %indvars.iv.next.i54.2
  %i.blm = load float, ptr %gep.i53.3, align 4, !tbaa !134
  %gep72.i.3 = getelementptr [4 x i8], ptr %invariant.gep71.i, i64 %indvars.iv.next.i54.2
  store float %i.blm, ptr %gep72.i.3, align 4, !tbaa !134
  %indvars.iv.next.i54.3 = add nuw nsw i64 %indvars.iv.i52, 4 ; 2 uses
  %gep.i53.4 = getelementptr [4 x i8], ptr %invariant.gep.i51, i64 %indvars.iv.next.i54.3
  %i.bln = load float, ptr %gep.i53.4, align 4, !tbaa !134
  %gep72.i.4 = getelementptr [4 x i8], ptr %invariant.gep71.i, i64 %indvars.iv.next.i54.3
  store float %i.bln, ptr %gep72.i.4, align 4, !tbaa !134
  %indvars.iv.next.i54.4 = add nuw nsw i64 %indvars.iv.i52, 5 ; 2 uses
  %gep.i53.5 = getelementptr [4 x i8], ptr %invariant.gep.i51, i64 %indvars.iv.next.i54.4
  %i.blo = load float, ptr %gep.i53.5, align 4, !tbaa !134
  %gep72.i.5 = getelementptr [4 x i8], ptr %invariant.gep71.i, i64 %indvars.iv.next.i54.4
  store float %i.blo, ptr %gep72.i.5, align 4, !tbaa !134
  %indvars.iv.next.i54.5 = add nuw nsw i64 %indvars.iv.i52, 6 ; 2 uses
  %gep.i53.6 = getelementptr [4 x i8], ptr %invariant.gep.i51, i64 %indvars.iv.next.i54.5
  %i.blp = load float, ptr %gep.i53.6, align 4, !tbaa !134
  %gep72.i.6 = getelementptr [4 x i8], ptr %invariant.gep71.i, i64 %indvars.iv.next.i54.5
  store float %i.blp, ptr %gep72.i.6, align 4, !tbaa !134
  %indvars.iv.next.i54.6 = add nuw nsw i64 %indvars.iv.i52, 7 ; 2 uses
  %gep.i53.7 = getelementptr [4 x i8], ptr %invariant.gep.i51, i64 %indvars.iv.next.i54.6
  %i.blq = load float, ptr %gep.i53.7, align 4, !tbaa !134
  %gep72.i.7 = getelementptr [4 x i8], ptr %invariant.gep71.i, i64 %indvars.iv.next.i54.6
  store float %i.blq, ptr %gep72.i.7, align 4, !tbaa !134
  %indvars.iv.next.i54.7 = add nuw nsw i64 %indvars.iv.i52, 8 ; 2 uses
  %exitcond.not.i55.7 = icmp eq i64 %indvars.iv.next.i54.7, %wide.trip.count.i48
  br i1 %exitcond.not.i55.7, label %._crit_edge.i56, label %vec.epilog.scalar.ph, !llvm.loop !315

._crit_edge.i56:                                  ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next62.i = add nuw nsw i64 %indvars.iv61.i, 1 ; 2 uses
  %exitcond65.not.i = icmp eq i64 %indvars.iv.next62.i, %wide.trip.count64.i
  br i1 %exitcond65.not.i, label %._crit_edge53.i, label %iter.check, !llvm.loop !316

._crit_edge53.i:                                  ; preds = %._crit_edge.i56
  %indvars.iv.next67.i = add nuw nsw i64 %indvars.iv66.i, 1 ; 2 uses
  %exitcond70.not.i = icmp eq i64 %indvars.iv.next67.i, %wide.trip.count69.i
  br i1 %exitcond70.not.i, label %_ZL15copy_local_gridP14PmeAndFftGridsi.exit, label %.preheader.i49, !llvm.loop !317

_ZL15copy_local_gridP14PmeAndFftGridsi.exit:      ; preds = %._crit_edge53.i, %.noexc, %.preheader.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  br label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.blr = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  %.033 = extractvalue { ptr, i32 } %i.blr, 1
  %.034 = extractvalue { ptr, i32 } %i.blr, 0     ; 2 uses
  %i.bls = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #3
  %i.blt = icmp eq i32 %.033, %i.bls
  br i1 %i.blt, label %bb.t, label %bb.x

bb.s:                                             ; preds = %_ZL15copy_local_gridP14PmeAndFftGridsi.exit, %_ZL35spread_coefficients_bsplines_threadP9pmegrid_tPK11PmeAtomCommP12splinedata_tRK15pme_spline_work.exit, %_ZL13make_bsplinesN3gmx8ArrayRefIPfEES2_iPA3_fiPKiPKfb.exit
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.blu = load i32, ptr %i.f, align 4, !tbaa !105
  %i.blv = sext i32 %i.blu to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.blv
  br i1 %.not.not, label %bb.c, label %._crit_edge

bb.t:                                             ; preds = %bb.r
  %i.blw = call ptr @__cxa_begin_catch(ptr %.034) #3
  invoke void @_ZN3gmx28processExceptionAsFatalErrorERKSt9exception(ptr noundef nonnull align 8 dereferenceable(8) %i.blw) #16
          to label %bb.u unwind label %bb.w

bb.u:                                             ; preds = %bb.t
  unreachable

._crit_edge:                                      ; preds = %bb.s, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #3
  br label %bb.v

bb.v:                                             ; preds = %._crit_edge, %bb.a
  ret void

bb.w:                                             ; preds = %bb.t
  %i.blx = landingpad { ptr, i32 }
          catch ptr null
  %i.bly = extractvalue { ptr, i32 } %i.blx, 0
  call void @__clang_call_terminate(ptr %i.bly) #17
  unreachable

bb.x:                                             ; preds = %bb.r
  call void @__clang_call_terminate(ptr %.034) #17
  unreachable
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_Z14spread_on_gridPK9gmx_pme_tP11PmeAtomCommP14PmeAndFftGridsbbb.omp_outlined.2(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3) #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [3 x i32], align 4                ; 6 uses
  %i.b = alloca [3 x i32], align 4                ; 3 uses
  %i.c = alloca [3 x i32], align 4                ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 7 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %i.h = load ptr, ptr %2, align 8, !tbaa !15
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  %i.j = load i32, ptr %i.i, align 8, !tbaa !128  ; 2 uses
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %bb.b, label %bb.s

bb.b:                                             ; preds = %bb.a
  %i.l = add nsw i32 %i.j, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #3
  store i32 0, ptr %i.d, align 4, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #3
  store i32 %i.l, ptr %i.e, align 4, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #3
  store i32 1, ptr %i.f, align 4, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #3
  store i32 0, ptr %i.g, align 4, !tbaa !105
  %i.m = load i32, ptr %0, align 4, !tbaa !105    ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.m, i32 34, ptr nonnull %i.g, ptr nonnull %i.d, ptr nonnull %i.e, ptr nonnull %i.f, i32 1, i32 1)
  %i.n = load i32, ptr %i.e, align 4, !tbaa !105
  %i.o = call i32 @llvm.smin.i32(i32 %i.n, i32 %i.l) ; 2 uses
  store i32 %i.o, ptr %i.e, align 4, !tbaa !105
  %i.p = load i32, ptr %i.d, align 4, !tbaa !105  ; 2 uses
  %.not20 = icmp sgt i32 %i.p, %i.o
  br i1 %.not20, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.u = sext i32 %i.p to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %.loopexit
  %indvars.iv = phi i64 [ %i.u, %.lr.ph ], [ %indvars.iv.next, %.loopexit ] ; 3 uses
  %i.v = load ptr, ptr %3, align 8, !tbaa !11     ; 8 uses
  %i.w = load ptr, ptr %2, align 8, !tbaa !15     ; 9 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 736
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !133
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 880
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !133 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 200
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !129 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #3
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 216
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !130
  %i.af = invoke noundef i32 @_Z30gmx_parallel_3dfft_real_limitsP18gmx_parallel_3dfftPiS1_S1_(ptr noundef %i.ae, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c)
          to label %.noexc unwind label %bb.p     ; 0 uses

.noexc:                                           ; preds = %bb.c
  %i.ag = load i32, ptr %i.a, align 4, !tbaa !105 ; 3 uses
  %i.ah = load i32, ptr %i.q, align 4, !tbaa !105 ; 3 uses
  %i.ai = load i32, ptr %i.r, align 4, !tbaa !105 ; 6 uses
  %i.aj = load i32, ptr %i.s, align 4, !tbaa !105
  %i.ak = load i32, ptr %i.t, align 4, !tbaa !105 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.w, i64 88
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !193 ; 7 uses
  %i.an = getelementptr inbounds nuw [72 x i8], ptr %i.am, i64 %indvars.iv ; 10 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 36
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !196 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.w, i64 76
  %i.at = getelementptr inbounds nuw i8, ptr %i.v, i64 112 ; 2 uses
  %i.au = load i32, ptr %i.ao, align 4, !tbaa !105 ; 3 uses
  %i.av = load i32, ptr %i.ap, align 4, !tbaa !105
  %reass.sub = sub i32 %i.au, %i.ar
  %i.aw = add i32 %reass.sub, 1
  %i.ax = add i32 %i.aw, %i.av
  %.sroa.speculated239.i = call i32 @llvm.smin.i32(i32 %i.ag, i32 %i.ax) ; 3 uses
  %i.ay = load i32, ptr %i.an, align 4, !tbaa !105 ; 2 uses
  %i.az = load i32, ptr %i.as, align 4, !tbaa !105 ; 2 uses
  %i.ba = add nsw i32 %i.az, -1
  %i.bb = icmp eq i32 %i.ay, %i.ba
  br i1 %i.bb, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.noexc
  %i.bc = load i32, ptr %i.at, align 8, !tbaa !105
  %.sroa.speculated384.i = call i32 @llvm.smax.i32(i32 %.sroa.speculated239.i, i32 %i.bc)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.noexc
  %.sroa.0.0.i = phi i32 [ %.sroa.speculated384.i, %bb.d ], [ %.sroa.speculated239.i, %.noexc ]
  %i.bd = getelementptr inbounds nuw i8, ptr %i.an, i64 28
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !105 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !105
  %reass.sub22 = sub i32 %i.be, %i.ar
  %i.bh = add i32 %reass.sub22, 1
  %i.bi = add i32 %i.bh, %i.bg
  %.sroa.speculated239.1.i = call i32 @llvm.smin.i32(i32 %i.ah, i32 %i.bi) ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !105 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.w, i64 80
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !105 ; 3 uses
  %i.bn = add nsw i32 %i.bm, -1
  %i.bo = icmp eq i32 %i.bk, %i.bn
  br i1 %i.bo, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bp = load i32, ptr %i.at, align 8, !tbaa !105
  %.sroa.speculated381.i = call i32 @llvm.smax.i32(i32 %.sroa.speculated239.1.i, i32 %i.bp)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.6.0.i = phi i32 [ %.sroa.speculated381.i, %bb.f ], [ %.sroa.speculated239.1.i, %bb.e ]
  %i.bq = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !105 ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.an, i64 20
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !105
  %reass.sub23 = sub i32 %i.br, %i.ar
  %i.bu = add i32 %reass.sub23, 1
  %i.bv = add i32 %i.bu, %i.bt
  %.sroa.speculated239.2.i = call i32 @llvm.smin.i32(i32 %i.ai, i32 %i.bv) ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !105 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.w, i64 84
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !105 ; 5 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.w, i64 184
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !105 ; 2 uses
  %i.cc = sub nsw i32 0, %i.cb
  %.not304.i = icmp slt i32 %i.cb, 0
  br i1 %.not304.i, label %.loopexit, label %.lr.ph311.i

.lr.ph311.i:                                      ; preds = %bb.g
  %i.cd = sub nsw i32 0, %i.ag
  %i.ce = getelementptr inbounds nuw i8, ptr %i.v, i64 20
  %i.cf = getelementptr inbounds nuw i8, ptr %i.w, i64 188
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !105 ; 2 uses
  %i.ch = sub nsw i32 0, %i.cg
  %.not223290.i = icmp slt i32 %i.cg, 0
  %i.ci = sub nsw i32 0, %i.ah
  %i.cj = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.ck = getelementptr inbounds nuw i8, ptr %i.v, i64 824
  %i.cl = getelementptr inbounds nuw i8, ptr %i.v, i64 12
end_hunk_0
