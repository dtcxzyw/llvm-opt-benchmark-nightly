Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/qdm2?download=true
inline.NumInlined: 120
inline.NumDeleted: 32
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 43
begin_hunk_0_@synthfilt_build_sb_samples:bb.a
  br label %.loopexit359

bb.cj:                                            ; preds = %bb.aj
  %i.ams = add nsw i32 %i.qb, 1                   ; 2 uses
  store i32 %i.ams, ptr %i.j, align 4, !tbaa !67
  %i.amt = sext i32 %i.qb to i64
  %i.amu = getelementptr inbounds [4 x i8], ptr @noise_table, i64 %i.amt
  %i.amv = load float, ptr %i.amu, align 4, !tbaa !32
  %i.amw = load float, ptr %i.ov, align 4, !tbaa !32
  %i.amx = fmul nsz float %i.amv, %i.amw
  store float %i.amx, ptr %i.a, align 16, !tbaa !32
  br label %.loopexit359

.loopexit359:                                     ; preds = %bb.bf, %bb.bi, %bb.bl, %bb.bo, %bb.br, %.preheader364, %.preheader358, %.preheader366, %.preheader362, %.preheader356, %.loopexit353, %.thread345, %.thread343, %bb.ci, %bb.ce, %bb.cb, %bb.cj, %bb.bb
  %.val283573 = phi i32 [ %i.qa, %bb.cj ], [ %i.qa, %bb.cb ], [ %.val283569, %bb.bb ], [ %i.qa, %bb.ci ], [ %i.qa, %.preheader356 ], [ %i.qa, %.preheader362 ], [ %.val283570, %.loopexit353 ], [ %i.afl, %.preheader358 ], [ %i.qa, %.preheader366 ], [ %i.ahk, %.preheader364 ], [ %.val535, %.thread343 ], [ %i.akw, %bb.ce ], [ %.val534, %.thread345 ], [ %spec.select.i324393, %bb.bf ], [ %spec.select.i324393.1, %bb.bi ], [ %spec.select.i324393.2, %bb.bl ], [ %spec.select.i324393.3, %bb.bo ], [ %spec.select.i324393.4, %bb.br ]
  %.val281565 = phi i32 [ %.val281, %bb.cj ], [ %.val281, %bb.cb ], [ %.val281563, %bb.bb ], [ %.val281, %bb.ci ], [ %i.qa, %.preheader356 ], [ %.val281, %.preheader362 ], [ %.val283570, %.loopexit353 ], [ %i.afl, %.preheader358 ], [ %.val281, %.preheader366 ], [ %i.ahk, %.preheader364 ], [ %.val535, %.thread343 ], [ %i.akw, %bb.ce ], [ %.val534, %.thread345 ], [ %spec.select.i324393, %bb.bf ], [ %spec.select.i324393.1, %bb.bi ], [ %spec.select.i324393.2, %bb.bl ], [ %spec.select.i324393.3, %bb.bo ], [ %spec.select.i324393.4, %bb.br ]
  %.val279559 = phi i32 [ %.promoted392, %bb.cj ], [ %.promoted392, %bb.cb ], [ %.val281563, %bb.bb ], [ %.promoted392, %bb.ci ], [ %i.qa, %.preheader356 ], [ %.promoted392, %.preheader362 ], [ %.val283570, %.loopexit353 ], [ %i.afl, %.preheader358 ], [ %.promoted392, %.preheader366 ], [ %i.ahk, %.preheader364 ], [ %.val535, %.thread343 ], [ %i.akw, %bb.ce ], [ %.val534, %.thread345 ], [ %spec.select.i324393, %bb.bf ], [ %spec.select.i324393.1, %bb.bi ], [ %spec.select.i324393.2, %bb.bl ], [ %spec.select.i324393.3, %bb.bo ], [ %spec.select.i324393.4, %bb.br ]
  %.val277554 = phi i32 [ %.val277, %bb.cj ], [ %.val277, %bb.cb ], [ %.val281563, %bb.bb ], [ %.val277, %bb.ci ], [ %i.qa, %.preheader356 ], [ %.promoted392, %.preheader362 ], [ %.val283570, %.loopexit353 ], [ %i.afl, %.preheader358 ], [ %.val277, %.preheader366 ], [ %i.ahk, %.preheader364 ], [ %.val535, %.thread343 ], [ %i.akw, %bb.ce ], [ %.val534, %.thread345 ], [ %spec.select.i324393, %bb.bf ], [ %spec.select.i324393.1, %bb.bi ], [ %spec.select.i324393.2, %bb.bl ], [ %spec.select.i324393.3, %bb.bo ], [ %spec.select.i324393.4, %bb.br ]
  %.val275549 = phi i32 [ %.val275, %bb.cj ], [ %.val275, %bb.cb ], [ %.val281563, %bb.bb ], [ %.val275, %bb.ci ], [ %i.qa, %.preheader356 ], [ %.promoted392, %.preheader362 ], [ %.val283570, %.loopexit353 ], [ %i.afl, %.preheader358 ], [ %.val277, %.preheader366 ], [ %i.ahk, %.preheader364 ], [ %.val535, %.thread343 ], [ %i.akw, %bb.ce ], [ %.val534, %.thread345 ], [ %spec.select.i324393, %bb.bf ], [ %spec.select.i324393.1, %bb.bi ], [ %spec.select.i324393.2, %bb.bl ], [ %spec.select.i324393.3, %bb.bo ], [ %spec.select.i324393.4, %bb.br ]
  %.val533 = phi i32 [ %.val, %bb.cj ], [ %.val275, %bb.cb ], [ %.val281563, %bb.bb ], [ %.val, %bb.ci ], [ %i.qa, %.preheader356 ], [ %.promoted392, %.preheader362 ], [ %.val283570, %.loopexit353 ], [ %i.afl, %.preheader358 ], [ %.val277, %.preheader366 ], [ %i.ahk, %.preheader364 ], [ %.val535, %.thread343 ], [ %i.akw, %bb.ce ], [ %.val534, %.thread345 ], [ %spec.select.i324393, %bb.bf ], [ %spec.select.i324393.1, %bb.bi ], [ %spec.select.i324393.2, %bb.bl ], [ %spec.select.i324393.3, %bb.bo ], [ %spec.select.i324393.4, %bb.br ]
  %i.amy = phi i32 [ %i.ams, %bb.cj ], [ %i.ajt, %bb.cb ], [ %i.zj, %bb.bb ], [ %i.amm, %bb.ci ], [ %indvars.iv.next486.9, %.preheader356 ], [ %indvars.iv.next470.4, %.preheader362 ], [ %indvars.iv.next502.4, %.loopexit353 ], [ %i.qb, %.preheader358 ], [ %indvars.iv.next458.2, %.preheader366 ], [ %i.qb, %.preheader364 ], [ %i.qb, %.thread343 ], [ %i.qb, %bb.ce ], [ %i.qb, %.thread345 ], [ %i.qb, %bb.br ], [ %i.qb, %bb.bo ], [ %i.qb, %bb.bl ], [ %i.qb, %bb.bi ], [ %i.qb, %bb.bf ] ; 2 uses
  %i.amz = phi i1 [ true, %bb.cj ], [ true, %bb.cb ], [ true, %bb.bb ], [ true, %bb.ci ], [ false, %.preheader356 ], [ false, %.preheader362 ], [ false, %.loopexit353 ], [ false, %.preheader358 ], [ false, %.preheader366 ], [ false, %.preheader364 ], [ true, %.thread343 ], [ true, %bb.ce ], [ true, %.thread345 ], [ false, %bb.br ], [ false, %bb.bo ], [ false, %bb.bl ], [ false, %bb.bi ], [ false, %bb.bf ]
  %.0229 = phi i32 [ 1, %bb.cj ], [ 1, %bb.cb ], [ 1, %bb.bb ], [ 1, %bb.ci ], [ 10, %.preheader356 ], [ 5, %.preheader362 ], [ 10, %.loopexit353 ], [ 5, %.preheader358 ], [ 3, %.preheader366 ], [ 3, %.preheader364 ], [ 1, %.thread343 ], [ 1, %bb.ce ], [ 1, %.thread345 ], [ 5, %bb.br ], [ 5, %bb.bo ], [ 5, %bb.bl ], [ 5, %bb.bi ], [ 5, %bb.bf ] ; 4 uses
  %.2226 = phi i32 [ %.0224415, %bb.cj ], [ %.0224415, %bb.cb ], [ %.0224415, %bb.bb ], [ %.0224415, %bb.ci ], [ %.0224415, %.preheader356 ], [ %.0224415, %.preheader362 ], [ %.0224415, %.loopexit353 ], [ %.0224415, %.preheader358 ], [ %.0224415, %.preheader366 ], [ %.0224415, %.preheader364 ], [ %.0224415, %.thread343 ], [ 0, %bb.ce ], [ 0, %.thread345 ], [ %.0224415, %bb.br ], [ %.0224415, %bb.bo ], [ %.0224415, %bb.bl ], [ %.0224415, %bb.bi ], [ %.0224415, %bb.bf ]
  %.4 = phi nsz float [ %.2222416, %bb.cj ], [ %.2222416, %bb.cb ], [ %.2222416, %bb.bb ], [ %.2222416, %bb.ci ], [ %.2222416, %.preheader356 ], [ %.2222416, %.preheader362 ], [ %.2222416, %.loopexit353 ], [ %.2222416, %.preheader358 ], [ %.2222416, %.preheader366 ], [ %.2222416, %.preheader364 ], [ %.2222416, %.thread343 ], [ %i.akn, %bb.ce ], [ %.2222416, %.thread345 ], [ %.2222416, %bb.br ], [ %.2222416, %bb.bo ], [ %.2222416, %bb.bl ], [ %.2222416, %bb.bi ], [ %.2222416, %bb.bf ] ; 3 uses
  %.3219 = phi nsz float [ %.0216417, %bb.cj ], [ %.0216417, %bb.cb ], [ %.0216417, %bb.bb ], [ %.0216417, %bb.ci ], [ %.0216417, %.preheader356 ], [ %.0216417, %.preheader362 ], [ %.0216417, %.loopexit353 ], [ %.0216417, %.preheader358 ], [ %.0216417, %.preheader366 ], [ %.0216417, %.preheader364 ], [ %.0216417, %.thread343 ], [ %i.akz, %bb.ce ], [ %i.aml, %.thread345 ], [ %.0216417, %bb.br ], [ %.0216417, %bb.bo ], [ %.0216417, %bb.bl ], [ %.0216417, %bb.bi ], [ %.0216417, %bb.bf ]
  br i1 %.not333601, label %.preheader348.preheader, label %.preheader349

.preheader348.preheader:                          ; preds = %.loopexit359
  %i.ana = zext nneg i32 %.2239413 to i64         ; 3 uses
  %wide.trip.count513 = zext nneg i32 %.0229 to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count513, 1
  br i1 %i.amz, label %.preheader348.epil.preheader, label %.preheader348.preheader.new

.preheader348.preheader.new:                      ; preds = %.preheader348.preheader
  %unroll_iter = and i64 %wide.trip.count513, 14
  br label %.preheader348

.preheader349:                                    ; preds = %.loopexit359
  %i.anb = icmp samesign ult i32 %.2239413, 128
  br i1 %i.anb, label %.lr.ph405, label %.loopexit

.lr.ph405:                                        ; preds = %.preheader349
  %i.anc = load i32, ptr %0, align 16, !tbaa !40
  %i.and = icmp eq i32 %i.anc, 2
  %i.ane = zext nneg i32 %.2239413 to i64         ; 2 uses
  %i.anf = zext nneg i32 %.0229 to i64
  br label %bb.ck

bb.ck:                                            ; preds = %.lr.ph405, %bb.cl
  %indvars.iv507 = phi i64 [ 0, %.lr.ph405 ], [ %indvars.iv.next508, %bb.cl ] ; 3 uses
  %i.ang = add nuw nsw i64 %indvars.iv507, %i.ane ; 4 uses
  %i.anh = lshr i64 %i.ang, 1
  %i.ani = and i64 %i.anh, 2147483647             ; 2 uses
  %i.anj = getelementptr inbounds nuw [4 x i8], ptr %i.ox, i64 %i.ani
  %i.ank = load float, ptr %i.anj, align 4, !tbaa !32
  %i.anl = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv507
  %i.anm = load float, ptr %i.anl, align 4, !tbaa !32 ; 3 uses
  %i.ann = fmul nsz float %i.ank, %i.anm
  %gep = getelementptr inbounds nuw [128 x i8], ptr %invariant.gep, i64 %i.ang
  store float %i.ann, ptr %gep, align 4, !tbaa !32
  br i1 %i.and, label %.sink.split, label %bb.cl

.sink.split:                                      ; preds = %bb.ck
  %i.ano = lshr i64 %i.ang, 3
  %i.anp = and i64 %i.ano, 536870911
  %i.anq = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.anp
  %i.anr = load i32, ptr %i.anq, align 4, !tbaa !57
  %.not269 = icmp eq i32 %i.anr, 0
  %i.ans = getelementptr inbounds nuw [4 x i8], ptr %i.oy, i64 %i.ani
  %i.ant = load float, ptr %i.ans, align 4, !tbaa !32
  %i.anu = fneg nsz float %i.anm
  %.sink.v = select i1 %.not269, float %i.anm, float %i.anu
  %.sink = fmul nsz float %.sink.v, %i.ant
  %gep409 = getelementptr inbounds nuw [128 x i8], ptr %invariant.gep406, i64 %i.ang
  store float %.sink, ptr %gep409, align 4, !tbaa !32
  br label %bb.cl

bb.cl:                                            ; preds = %.sink.split, %bb.ck
  %indvars.iv.next508 = add nuw nsw i64 %indvars.iv507, 1 ; 3 uses
  %i.anv = icmp samesign ult i64 %indvars.iv.next508, %i.anf
  %i.anw = add nuw nsw i64 %indvars.iv.next508, %i.ane
  %i.anx = icmp samesign ult i64 %i.anw, 128
  %i.any = select i1 %i.anv, i1 %i.anx, i1 false
  br i1 %i.any, label %bb.ck, label %.loopexit, !llvm.loop !200

.preheader348:                                    ; preds = %bb.co, %.preheader348.preheader.new
  %indvars.iv510 = phi i64 [ 0, %.preheader348.preheader.new ], [ %indvars.iv.next511.1, %bb.co ] ; 4 uses
  %niter = phi i64 [ 0, %.preheader348.preheader.new ], [ %niter.next.1, %bb.co ]
  %i.anz = add nuw nsw i64 %indvars.iv510, %i.ana ; 3 uses
  %i.aoa = icmp samesign ult i64 %i.anz, 128
  br i1 %i.aoa, label %bb.cm, label %.preheader348.1

bb.cm:                                            ; preds = %.preheader348
  %i.aob = lshr i64 %i.anz, 1
  %i.aoc = getelementptr inbounds nuw [4 x i8], ptr %gep424, i64 %i.aob
  %i.aod = load float, ptr %i.aoc, align 4, !tbaa !32
  %i.aoe = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv510
  %i.aof = load float, ptr %i.aoe, align 8, !tbaa !32
  %i.aog = fmul nsz float %i.aod, %i.aof
  %gep412 = getelementptr inbounds nuw [128 x i8], ptr %gep426, i64 %i.anz
  store float %i.aog, ptr %gep412, align 4, !tbaa !32
  br label %.preheader348.1

.preheader348.1:                                  ; preds = %.preheader348, %bb.cm
  %indvars.iv.next511 = or disjoint i64 %indvars.iv510, 1 ; 2 uses
  %i.aoh = add nuw nsw i64 %indvars.iv.next511, %i.ana ; 3 uses
  %i.aoi = icmp samesign ult i64 %i.aoh, 128
  br i1 %i.aoi, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %.preheader348.1
  %i.aoj = lshr i64 %i.aoh, 1
  %i.aok = getelementptr inbounds nuw [4 x i8], ptr %gep424, i64 %i.aoj
  %i.aol = load float, ptr %i.aok, align 4, !tbaa !32
  %i.aom = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next511
  %i.aon = load float, ptr %i.aom, align 4, !tbaa !32
  %i.aoo = fmul nsz float %i.aol, %i.aon
  %gep412.1 = getelementptr inbounds nuw [128 x i8], ptr %gep426, i64 %i.aoh
  store float %i.aoo, ptr %gep412.1, align 4, !tbaa !32
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %.preheader348.1
  %indvars.iv.next511.1 = add nuw nsw i64 %indvars.iv510, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.preheader348, !llvm.loop !201

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.co
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.preheader348.epil.preheader

.preheader348.epil.preheader:                     ; preds = %.loopexit.loopexit.unr-lcssa, %.preheader348.preheader
  %indvars.iv510.epil.init = phi i64 [ 0, %.preheader348.preheader ], [ %indvars.iv.next511.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod644 = trunc i32 %.0229 to i1
  tail call void @llvm.assume(i1 %lcmp.mod644)
  %i.aop = add nuw nsw i64 %indvars.iv510.epil.init, %i.ana ; 3 uses
  %i.aoq = icmp samesign ult i64 %i.aop, 128
  br i1 %i.aoq, label %bb.cp, label %.loopexit

bb.cp:                                            ; preds = %.preheader348.epil.preheader
  %i.aor = lshr i64 %i.aop, 1
  %i.aos = getelementptr inbounds nuw [4 x i8], ptr %gep424, i64 %i.aor
  %i.aot = load float, ptr %i.aos, align 4, !tbaa !32
  %i.aou = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv510.epil.init
  %i.aov = load float, ptr %i.aou, align 4, !tbaa !32
  %i.aow = fmul nsz float %i.aot, %i.aov
  %gep412.epil = getelementptr inbounds nuw [128 x i8], ptr %gep426, i64 %i.aop
  store float %i.aow, ptr %gep412.epil, align 4, !tbaa !32
  br label %.loopexit

.loopexit:                                        ; preds = %bb.cl, %.loopexit.loopexit.unr-lcssa, %bb.cp, %.preheader348.epil.preheader, %.preheader349
  %i.aox = add nuw nsw i32 %.0229, %.2239413      ; 2 uses
  %i.aoy = icmp samesign ult i32 %i.aox, 128
  br i1 %i.aoy, label %bb.aj, label %bb.cq, !llvm.loop !202

bb.cq:                                            ; preds = %.loopexit
  %indvars.iv.next516 = add nuw nsw i64 %indvars.iv515, 1 ; 2 uses
  %exitcond519.not = icmp eq i64 %indvars.iv.next516, %wide.trip.count518
  br i1 %exitcond519.not, label %build_sb_samples_from_noise.exit318.thread, label %bb.ae, !llvm.loop !203

build_sb_samples_from_noise.exit318.thread:       ; preds = %bb.cq, %.thread, %.preheader31.i300, %..loopexit_crit_edge.i317
  %.5 = phi nsz float [ %.0220429, %.preheader31.i300 ], [ %.0220429, %..loopexit_crit_edge.i317 ], [ %.0220429, %.thread ], [ %.4, %bb.cq ]
  %indvars.iv.next521 = add nuw nsw i64 %indvars.iv520, 1 ; 2 uses
  %exitcond524.not = icmp eq i64 %indvars.iv.next521, %wide.trip.count523
  br i1 %exitcond524.not, label %build_sb_samples_from_noise.exit, label %bb.h, !llvm.loop !204

build_sb_samples_from_noise.exit:                 ; preds = %build_sb_samples_from_noise.exit318.thread, %bb.ab, %.lr.ph435.split.split.prol.loopexit, %bb.g, %bb.b, %.lr.ph435.split.us, %.preheader370, %.preheader, %.build_sb_samples_from_noise.exit.loopexit_crit_edge.split.us, %bb.ch, %bb.ca, %bb.bw, %bb.bt, %bb.ax
  %.12 = phi i32 [ -1094995529, %bb.ca ], [ -1094995529, %bb.ch ], [ -1094995529, %bb.b ], [ -1094995529, %bb.ax ], [ -1094995529, %bb.bt ], [ -1094995529, %bb.bw ], [ -1094995529, %.lr.ph435.split.us ], [ 0, %.preheader ], [ 0, %.build_sb_samples_from_noise.exit.loopexit_crit_edge.split.us ], [ 0, %.lr.ph435.split.split.prol.loopexit ], [ 0, %.preheader370 ], [ 0, %bb.g ], [ 0, %build_sb_samples_from_noise.exit318.thread ], [ -1094995529, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 %.12
}

; Function Attrs: nounwind uwtable
define internal fastcc void @qdm2_fft_decode_tones(ptr nofree noundef captures(none) %0, i32 noundef range(i32 -2147483648, 4) %1, ptr nofree noundef nonnull captures(none) %2, i32 noundef range(i32 0, 2) %3) unnamed_addr #1 {
bb.a:
  %i.a = sub nsw i32 4, %1                        ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.c = load i32, ptr %i.b, align 4, !tbaa !44
  %i.d = xor i32 %1, -1
  %i.e = add i32 %i.c, %i.d                       ; 2 uses
  %i.f = shl nuw i32 1, %i.e                      ; 10 uses
  %i.g = getelementptr i8, ptr %2, i64 8          ; 16 uses
  %i.h = getelementptr i8, ptr %2, i64 12         ; 3 uses
  %.val119157 = load i32, ptr %i.g, align 8, !tbaa !72
  %.val120158 = load i32, ptr %i.h, align 4, !tbaa !70
  %i.i = icmp sgt i32 %.val120158, %.val119157
  br i1 %i.i, label %.lr.ph163, label %.critedge

.lr.ph163:                                        ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 146472
  %i.k = zext nneg i32 %i.a to i64
  %i.l = getelementptr inbounds nuw [24 x i8], ptr @vlc_tab_fft_tone_offset, i64 %i.k ; 4 uses
  %i.m = getelementptr i8, ptr %i.l, i64 8        ; 3 uses
  %i.n = shl i32 8, %i.e
  %i.o = icmp slt i32 %i.f, 3
  %i.p = add nsw i32 %i.f, -1                     ; 2 uses
  %i.q = shl nuw i32 1, %i.a                      ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.not106 = icmp eq i32 %3, 0
  %4 = select i1 %.not106, ptr @fft_level_exp_alt_vlc, ptr @fft_level_exp_vlc ; 2 uses
  %5 = getelementptr i8, ptr %4, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 51388
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 51344 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 51348
  %i.x = sext i32 %1 to i64
  %i.y = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.x ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 41344 ; 2 uses
  %i.aa = add nsw i32 %i.f, -2                    ; 2 uses
  %i.ab = tail call i32 @llvm.umax.i32(i32 %i.aa, i32 1) ; 2 uses
  %invariant.op29 = sub i32 2, %i.f
  %invariant.op30 = add i32 %i.ab, 1
  %i.ac = sub nsw i32 2, %i.f
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.f, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert5 = insertelement <4 x i32> poison, i32 %i.q, i64 0
  %broadcast.splat6 = shufflevector <4 x i32> %broadcast.splatinsert5, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op = sub i32 2, %i.f
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph163, %bb.v
  %.079161 = phi i32 [ 1, %.lr.ph163 ], [ %i.jz, %bb.v ] ; 3 uses
  %.080160 = phi i32 [ 0, %.lr.ph163 ], [ %.4, %bb.v ] ; 5 uses
  %.086159 = phi i32 [ 0, %.lr.ph163 ], [ %.490, %bb.v ] ; 5 uses
  %i.ad = load i32, ptr %i.j, align 8, !tbaa !50
  %.not = icmp eq i32 %i.ad, 0
  br i1 %.not, label %bb.e, label %.preheader

.preheader:                                       ; preds = %bb.b
  %.val115141 = load i32, ptr %i.l, align 8, !tbaa !64
  %.val116142 = load ptr, ptr %i.m, align 8, !tbaa !63
  %i.ae = tail call fastcc i32 @qdm2_get_vlc(ptr noundef %2, i32 %.val115141, ptr %.val116142, i32 noundef 1, i32 noundef 2) ; 3 uses
  %i.af = icmp slt i32 %i.ae, 2
  br i1 %i.af, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader, %bb.d
  %i.ag = phi i32 [ %i.al, %bb.d ], [ %i.ae, %.preheader ]
  %.181144 = phi i32 [ %.282, %bb.d ], [ %.080160, %.preheader ]
  %.187143 = phi i32 [ %.288, %bb.d ], [ %.086159, %.preheader ] ; 2 uses
  %.val117 = load i32, ptr %i.g, align 8, !tbaa !72
  %.val118 = load i32, ptr %i.h, align 4, !tbaa !70
  %i.ah = icmp slt i32 %.val118, %.val117
  br i1 %i.ah, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.ai = load i32, ptr %i.r, align 8, !tbaa !41
  %i.aj = icmp slt i32 %.187143, %i.ai
  br i1 %i.aj, label %.critedge.sink.split, label %.critedge

bb.d:                                             ; preds = %.lr.ph
  %i.ak = icmp eq i32 %i.ag, 0                    ; 2 uses
  %.pn = select i1 %i.ak, i32 %i.f, i32 %i.n
  %.pn109 = select i1 %i.ak, i32 1, i32 8
  %.pn108 = shl i32 %.pn109, %i.a
  %.282 = add nsw i32 %.pn108, %.181144           ; 2 uses
  %.288 = add nsw i32 %.pn, %.187143              ; 2 uses
  %.val115 = load i32, ptr %i.l, align 8, !tbaa !64
  %.val116 = load ptr, ptr %i.m, align 8, !tbaa !63
  %i.al = tail call fastcc i32 @qdm2_get_vlc(ptr noundef %2, i32 %.val115, ptr %.val116, i32 noundef 1, i32 noundef 2) ; 3 uses
  %i.am = icmp slt i32 %i.al, 2
  br i1 %i.am, label %.lr.ph, label %._crit_edge, !llvm.loop !206

._crit_edge:                                      ; preds = %bb.d, %.preheader
  %.187.lcssa = phi i32 [ %.086159, %.preheader ], [ %.288, %bb.d ]
  %.181.lcssa = phi i32 [ %.080160, %.preheader ], [ %.282, %bb.d ]
  %.1.lcssa = phi i32 [ %.079161, %.preheader ], [ 1, %bb.d ]
  %.lcssa = phi i32 [ %i.ae, %.preheader ], [ %i.al, %bb.d ]
  %i.an = add i32 %.1.lcssa, -2
  %i.ao = add i32 %i.an, %.lcssa
  br label %.loopexit

bb.e:                                             ; preds = %bb.b
  br i1 %i.o, label %.critedge.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.val113 = load i32, ptr %i.l, align 8, !tbaa !64
  %.val114 = load ptr, ptr %i.m, align 8, !tbaa !63
  %i.ap = tail call fastcc i32 @qdm2_get_vlc(ptr noundef %2, i32 %.val113, ptr %.val114, i32 noundef 1, i32 noundef 2) ; 2 uses
  %i.aq = add nsw i32 %i.ap, %.079161             ; 4 uses
  %.not104148 = icmp slt i32 %i.aq, %i.p
  br i1 %.not104148, label %.loopexit, label %.lr.ph153.preheader

.lr.ph153.preheader:                              ; preds = %bb.f
  %i.ar = add i32 %i.ap, %.079161                 ; 2 uses
  %.reass = add i32 %i.ar, %invariant.op29
  %i.as = tail call i32 @llvm.smin.i32(i32 %.reass, i32 %i.aa)
  %.reass31 = add i32 %i.ar, %invariant.op30
  %i.at = add i32 %i.f, %i.as
  %i.au = sub i32 %.reass31, %i.at
  %i.av = udiv i32 %i.au, %i.ab
  %i.aw = add i32 %i.av, 1                        ; 3 uses
  %min.iters.check = icmp ult i32 %i.aw, 8
  br i1 %min.iters.check, label %.lr.ph153.preheader12, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph153.preheader
  %n.vec = and i32 %i.aw, -8                      ; 3 uses
  %i.ax = mul i32 %n.vec, %i.ac
  %i.ay = add i32 %i.aq, %i.ax                    ; 2 uses
  %i.az = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.080160, i64 0
  %i.ba = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.086159, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ %i.az, %vector.ph ], [ %i.bd, %vector.body ]
  %vec.phi7 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.be, %vector.body ]
  %vec.phi8 = phi <4 x i32> [ %i.ba, %vector.ph ], [ %i.bb, %vector.body ]
  %vec.phi9 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bc, %vector.body ]
  %i.bb = add <4 x i32> %vec.phi8, %broadcast.splat ; 2 uses
  %i.bc = add <4 x i32> %vec.phi9, %broadcast.splat ; 2 uses
  %i.bd = add <4 x i32> %vec.phi, %broadcast.splat6 ; 2 uses
  %i.be = add <4 x i32> %vec.phi7, %broadcast.splat6 ; 2 uses
  %index.next = add nuw i32 %index, 8             ; 2 uses
  %i.bf = icmp eq i32 %index.next, %n.vec
  br i1 %i.bf, label %middle.block, label %vector.body, !llvm.loop !207

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.be, %i.bd
  %i.bg = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %bin.rdx10 = add <4 x i32> %i.bc, %i.bb
  %i.bh = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx10) ; 2 uses
  %cmp.n = icmp eq i32 %i.aw, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph153.preheader12

.lr.ph153.preheader12:                            ; preds = %.lr.ph153.preheader, %middle.block
  %.2151.ph = phi i32 [ %i.aq, %.lr.ph153.preheader ], [ %i.ay, %middle.block ]
  %.383150.ph = phi i32 [ %.080160, %.lr.ph153.preheader ], [ %i.bg, %middle.block ]
  %.389149.ph = phi i32 [ %.086159, %.lr.ph153.preheader ], [ %i.bh, %middle.block ]
  br label %.lr.ph153

.lr.ph153:                                        ; preds = %.lr.ph153.preheader12, %.lr.ph153
  %.2151 = phi i32 [ %.reass.reass, %.lr.ph153 ], [ %.2151.ph, %.lr.ph153.preheader12 ]
  %.383150 = phi i32 [ %i.bj, %.lr.ph153 ], [ %.383150.ph, %.lr.ph153.preheader12 ]
  %.389149 = phi i32 [ %i.bi, %.lr.ph153 ], [ %.389149.ph, %.lr.ph153.preheader12 ]
  %.reass.reass = add i32 %.2151, %invariant.op   ; 3 uses
  %i.bi = add nsw i32 %.389149, %i.f              ; 2 uses
  %i.bj = add nsw i32 %.383150, %i.q              ; 2 uses
  %.not104 = icmp slt i32 %.reass.reass, %i.p
  br i1 %.not104, label %.loopexit, label %.lr.ph153, !llvm.loop !208

.loopexit:                                        ; preds = %.lr.ph153, %middle.block, %bb.f, %._crit_edge
  %.490 = phi i32 [ %.187.lcssa, %._crit_edge ], [ %.086159, %bb.f ], [ %i.bh, %middle.block ], [ %i.bi, %.lr.ph153 ] ; 2 uses
  %.4 = phi i32 [ %.181.lcssa, %._crit_edge ], [ %.080160, %bb.f ], [ %i.bg, %middle.block ], [ %i.bj, %.lr.ph153 ] ; 3 uses
  %.3 = phi i32 [ %i.ao, %._crit_edge ], [ %i.aq, %bb.f ], [ %i.ay, %middle.block ], [ %.reass.reass, %.lr.ph153 ] ; 3 uses
  %i.bk = load i32, ptr %i.r, align 8, !tbaa !41
  %.not105 = icmp slt i32 %.490, %i.bk
  br i1 %.not105, label %bb.g, label %.critedge

bb.g:                                             ; preds = %.loopexit
  %i.bl = ashr i32 %.3, %i.a                      ; 3 uses
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = icmp ugt i32 %i.bl, 255
  br i1 %i.bn, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bo = load i32, ptr %0, align 16, !tbaa !40
  %i.bp = icmp sgt i32 %i.bo, 1
  %.pre = load i32, ptr %i.g, align 8, !tbaa !72  ; 5 uses
  %.pre177 = load i32, ptr %i.s, align 8, !tbaa !71 ; 13 uses
  %.pre178 = load ptr, ptr %2, align 8, !tbaa !69 ; 13 uses
  br i1 %i.bp, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bq = lshr i32 %.pre, 3
  %i.br = zext nneg i32 %i.bq to i64
  %i.bs = getelementptr inbounds nuw i8, ptr %.pre178, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !33
  %i.bu = icmp slt i32 %.pre, %.pre177
  %i.bv = zext i1 %i.bu to i32
  %spec.select.i = add i32 %.pre, %i.bv           ; 5 uses
  %i.bw = zext i8 %i.bt to i32
  %i.bx = and i32 %.pre, 7
  %i.by = lshr i32 %i.bw, %i.bx
  store i32 %spec.select.i, ptr %i.g, align 8, !tbaa !72
  %i.bz = lshr i32 %spec.select.i, 3
  %i.ca = zext nneg i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw i8, ptr %.pre178, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !33
  %i.cd = icmp slt i32 %spec.select.i, %.pre177
  %i.ce = zext i1 %i.cd to i32
  %spec.select.i121 = add i32 %spec.select.i, %i.ce ; 2 uses
  %i.cf = zext i8 %i.cc to i32
  %i.cg = and i32 %spec.select.i, 7
  %i.ch = lshr i32 %i.cf, %i.cg
  %i.ci = and i32 %i.ch, 1
  store i32 %spec.select.i121, ptr %i.g, align 8, !tbaa !72
  %i.cj = trunc nuw i32 %i.by to i8
  %i.ck = and i8 %i.cj, 1
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.cl = phi i32 [ %spec.select.i121, %bb.i ], [ %.pre, %bb.h ] ; 4 uses
  %.092 = phi i8 [ %i.ck, %bb.i ], [ 0, %bb.h ]   ; 2 uses
  %.091 = phi i32 [ %i.ci, %bb.i ], [ 0, %bb.h ]  ; 2 uses
  %fft_level_exp_vlc.val = load i32, ptr %4, align 8, !tbaa !64 ; 2 uses
  %.val136 = load ptr, ptr %5, align 8, !tbaa !63 ; 2 uses
  %i.cm = lshr i32 %i.cl, 3
  %i.cn = zext nneg i32 %i.cm to i64
  %i.co = getelementptr inbounds nuw i8, ptr %.pre178, i64 %i.cn
  %i.cp = load i32, ptr %i.co, align 1, !tbaa !33
  %i.cq = and i32 %i.cl, 7
  %i.cr = lshr i32 %i.cp, %i.cq
  %i.cs = sub i32 32, %fft_level_exp_vlc.val
  %i.ct = lshr i32 -1, %i.cs
  %i.cu = and i32 %i.cr, %i.ct
  %i.cv = zext i32 %i.cu to i64
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %.val136, i64 %i.cv ; 2 uses
  %i.cx = load i16, ptr %i.cw, align 2, !tbaa !33
  %i.cy = sext i16 %i.cx to i32                   ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 2
  %i.da = load i16, ptr %i.cz, align 2, !tbaa !33 ; 2 uses
  %i.db = sext i16 %i.da to i32                   ; 2 uses
  %i.dc = icmp slt i16 %i.da, 0
  br i1 %i.dc, label %bb.k, label %get_vlc2.exit.i

bb.k:                                             ; preds = %bb.j
  %i.dd = add i32 %i.cl, %fft_level_exp_vlc.val
  %i.de = tail call i32 @llvm.umin.i32(i32 %.pre177, i32 %i.dd) ; 3 uses
  %i.df = lshr i32 %i.de, 3
  %i.dg = zext nneg i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw i8, ptr %.pre178, i64 %i.dg
  %i.di = load i32, ptr %i.dh, align 1, !tbaa !33
  %i.dj = and i32 %i.de, 7
  %i.dk = lshr i32 %i.di, %i.dj
  %i.dl = add nsw i32 %i.db, 32
  %i.dm = lshr i32 -1, %i.dl
  %i.dn = and i32 %i.dk, %i.dm
  %i.do = add i32 %i.dn, %i.cy
  %i.dp = zext i32 %i.do to i64
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %.val136, i64 %i.dp ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 2
  %i.ds = load i16, ptr %i.dr, align 2, !tbaa !33
  %i.dt = sext i16 %i.ds to i32
  %i.du = load i16, ptr %i.dq, align 2, !tbaa !33
  %i.dv = sext i16 %i.du to i32
  br label %get_vlc2.exit.i

get_vlc2.exit.i:                                  ; preds = %bb.k, %bb.j
  %.167.i.i = phi i32 [ %i.dv, %bb.k ], [ %i.cy, %bb.j ] ; 2 uses
  %.165.i.i = phi i32 [ %i.de, %bb.k ], [ %i.cl, %bb.j ]
  %.1.i.i = phi i32 [ %i.dt, %bb.k ], [ %i.db, %bb.j ]
  %i.dw = add i32 %.1.i.i, %.165.i.i
  %i.dx = tail call i32 @llvm.umin.i32(i32 %.pre177, i32 %i.dw) ; 5 uses
  store i32 %i.dx, ptr %i.g, align 8, !tbaa !72
  %i.dy = icmp slt i32 %.167.i.i, 0
  br i1 %i.dy, label %bb.l, label %qdm2_get_vlc.exit

bb.l:                                             ; preds = %get_vlc2.exit.i
  %i.dz = lshr i32 %i.dx, 3
  %i.ea = zext nneg i32 %i.dz to i64
  %i.eb = getelementptr inbounds nuw i8, ptr %.pre178, i64 %i.ea
  %i.ec = load i32, ptr %i.eb, align 1, !tbaa !33
  %i.ed = and i32 %i.dx, 7
  %i.ee = lshr i32 %i.ec, %i.ed
  %i.ef = and i32 %i.ee, 7                        ; 2 uses
  %i.eg = add i32 %i.dx, 3
  %i.eh = tail call i32 @llvm.umin.i32(i32 %.pre177, i32 %i.eg) ; 4 uses
  store i32 %i.eh, ptr %i.g, align 8, !tbaa !72
  %i.ei = lshr i32 %i.eh, 3
  %i.ej = zext nneg i32 %i.ei to i64
  %i.ek = getelementptr inbounds nuw i8, ptr %.pre178, i64 %i.ej
  %i.el = load i32, ptr %i.ek, align 1, !tbaa !33
  %i.em = and i32 %i.eh, 7
  %i.en = lshr i32 %i.el, %i.em
  %i.eo = xor i32 %i.ef, 31
  %i.ep = lshr i32 -1, %i.eo
  %i.eq = and i32 %i.ep, %i.en
  %i.er = add i32 %i.eh, 1
  %i.es = add i32 %i.er, %i.ef
  %i.et = tail call i32 @llvm.umin.i32(i32 %.pre177, i32 %i.es) ; 2 uses
  store i32 %i.et, ptr %i.g, align 8, !tbaa !72
  br label %qdm2_get_vlc.exit

qdm2_get_vlc.exit:                                ; preds = %get_vlc2.exit.i, %bb.l
  %i.eu = phi i32 [ %i.et, %bb.l ], [ %i.dx, %get_vlc2.exit.i ] ; 3 uses
  %.020.i = phi i32 [ %i.eq, %bb.l ], [ %.167.i.i, %get_vlc2.exit.i ]
  %i.ev = getelementptr inbounds nuw [2 x i8], ptr @fft_level_index_table, i64 %i.bm
  %i.ew = load i16, ptr %i.ev, align 2, !tbaa !81
  %i.ex = sext i16 %i.ew to i64
  %i.ey = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.ex
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !57
  %i.fa = add nsw i32 %i.ez, %.020.i
  %i.fb = tail call i32 @llvm.smax.i32(i32 %i.fa, i32 0) ; 2 uses
  %i.fc = lshr i32 %i.eu, 3
  %i.fd = zext nneg i32 %i.fc to i64
  %i.fe = getelementptr inbounds nuw i8, ptr %.pre178, i64 %i.fd
  %i.ff = load i32, ptr %i.fe, align 1, !tbaa !33
  %i.fg = and i32 %i.eu, 7
  %i.fh = lshr i32 %i.ff, %i.fg
  %i.fi = and i32 %i.fh, 7                        ; 2 uses
  %i.fj = add i32 %i.eu, 3
  %i.fk = tail call i32 @llvm.umin.i32(i32 %.pre177, i32 %i.fj) ; 4 uses
  store i32 %i.fk, ptr %i.g, align 8, !tbaa !72
  %.not107 = icmp eq i32 %.091, 0                 ; 2 uses
  br i1 %.not107, label %bb.p, label %bb.m

bb.m:                                             ; preds = %qdm2_get_vlc.exit
  %fft_stereo_exp_vlc.val = load i32, ptr @fft_stereo_exp_vlc, align 8, !tbaa !64
  %fft_stereo_exp_vlc.val111 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @fft_stereo_exp_vlc, i64 8), align 8, !tbaa !63
  %i.fl = lshr i32 %i.fk, 3
  %i.fm = zext nneg i32 %i.fl to i64
  %i.fn = getelementptr inbounds nuw i8, ptr %.pre178, i64 %i.fm
  %i.fo = load i32, ptr %i.fn, align 1, !tbaa !33
  %i.fp = and i32 %i.fk, 7
  %i.fq = lshr i32 %i.fo, %i.fp
  %i.fr = sub i32 32, %fft_stereo_exp_vlc.val
  %i.fs = lshr i32 -1, %i.fr
  %i.ft = and i32 %i.fq, %i.fs
  %i.fu = zext i32 %i.ft to i64
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %fft_stereo_exp_vlc.val111, i64 %i.fu ; 2 uses
  %i.fw = load i16, ptr %i.fv, align 2, !tbaa !33 ; 2 uses
  %i.fx = zext nneg i16 %i.fw to i32
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fv, i64 2
  %i.fz = load i16, ptr %i.fy, align 2, !tbaa !33
  %i.ga = sext i16 %i.fz to i32
  %i.gb = add i32 %i.fk, %i.ga
  %i.gc = tail call i32 @llvm.umin.i32(i32 %.pre177, i32 %i.gb) ; 5 uses
  store i32 %i.gc, ptr %i.g, align 8, !tbaa !72
  %i.gd = icmp slt i16 %i.fw, 0
  br i1 %i.gd, label %bb.n, label %qdm2_get_vlc.exit127

bb.n:                                             ; preds = %bb.m
  %i.ge = lshr i32 %i.gc, 3
  %i.gf = zext nneg i32 %i.ge to i64
  %i.gg = getelementptr inbounds nuw i8, ptr %.pre178, i64 %i.gf
  %i.gh = load i32, ptr %i.gg, align 1, !tbaa !33
  %i.gi = and i32 %i.gc, 7
  %i.gj = lshr i32 %i.gh, %i.gi
  %i.gk = and i32 %i.gj, 7                        ; 2 uses
  %i.gl = add i32 %i.gc, 3
  %i.gm = tail call i32 @llvm.umin.i32(i32 %.pre177, i32 %i.gl) ; 4 uses
  store i32 %i.gm, ptr %i.g, align 8, !tbaa !72
  %i.gn = lshr i32 %i.gm, 3
  %i.go = zext nneg i32 %i.gn to i64
  %i.gp = getelementptr inbounds nuw i8, ptr %.pre178, i64 %i.go
  %i.gq = load i32, ptr %i.gp, align 1, !tbaa !33
  %i.gr = and i32 %i.gm, 7
  %i.gs = lshr i32 %i.gq, %i.gr
  %i.gt = xor i32 %i.gk, 31
  %i.gu = lshr i32 -1, %i.gt
  %i.gv = and i32 %i.gu, %i.gs
  %i.gw = add i32 %i.gm, 1
  %i.gx = add i32 %i.gw, %i.gk
  %i.gy = tail call i32 @llvm.umin.i32(i32 %.pre177, i32 %i.gx) ; 2 uses
  store i32 %i.gy, ptr %i.g, align 8, !tbaa !72
  br label %qdm2_get_vlc.exit127

qdm2_get_vlc.exit127:                             ; preds = %bb.m, %bb.n
  %i.gz = phi i32 [ %i.gy, %bb.n ], [ %i.gc, %bb.m ] ; 3 uses
  %.020.i126 = phi i32 [ %i.gv, %bb.n ], [ %i.fx, %bb.m ]
  %i.ha = sub nsw i32 %i.fb, %.020.i126
  %fft_stereo_phase_vlc.val = load i32, ptr @fft_stereo_phase_vlc, align 8, !tbaa !64
  %fft_stereo_phase_vlc.val110 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @fft_stereo_phase_vlc, i64 8), align 8, !tbaa !63
  %i.hb = lshr i32 %i.gz, 3
  %i.hc = zext nneg i32 %i.hb to i64
  %i.hd = getelementptr inbounds nuw i8, ptr %.pre178, i64 %i.hc
  %i.he = load i32, ptr %i.hd, align 1, !tbaa !33
  %i.hf = and i32 %i.gz, 7
  %i.hg = lshr i32 %i.he, %i.hf
  %i.hh = sub i32 32, %fft_stereo_phase_vlc.val
  %i.hi = lshr i32 -1, %i.hh
  %i.hj = and i32 %i.hg, %i.hi
  %i.hk = zext i32 %i.hj to i64
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %fft_stereo_phase_vlc.val110, i64 %i.hk ; 2 uses
  %i.hm = load i16, ptr %i.hl, align 2, !tbaa !33 ; 2 uses
  %i.hn = zext nneg i16 %i.hm to i32
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hl, i64 2
  %i.hp = load i16, ptr %i.ho, align 2, !tbaa !33
  %i.hq = sext i16 %i.hp to i32
  %i.hr = add i32 %i.gz, %i.hq
  %i.hs = tail call i32 @llvm.umin.i32(i32 %.pre177, i32 %i.hr) ; 4 uses
  store i32 %i.hs, ptr %i.g, align 8, !tbaa !72
  %i.ht = icmp slt i16 %i.hm, 0
  br i1 %i.ht, label %bb.o, label %qdm2_get_vlc.exit133

bb.o:                                             ; preds = %qdm2_get_vlc.exit127
  %i.hu = lshr i32 %i.hs, 3
  %i.hv = zext nneg i32 %i.hu to i64
  %i.hw = getelementptr inbounds nuw i8, ptr %.pre178, i64 %i.hv
  %i.hx = load i32, ptr %i.hw, align 1, !tbaa !33
  %i.hy = and i32 %i.hs, 7
  %i.hz = lshr i32 %i.hx, %i.hy
  %i.ia = and i32 %i.hz, 7                        ; 2 uses
  %i.ib = add i32 %i.hs, 3
  %i.ic = tail call i32 @llvm.umin.i32(i32 %.pre177, i32 %i.ib) ; 4 uses
  store i32 %i.ic, ptr %i.g, align 8, !tbaa !72
  %i.id = lshr i32 %i.ic, 3
  %i.ie = zext nneg i32 %i.id to i64
  %i.if = getelementptr inbounds nuw i8, ptr %.pre178, i64 %i.ie
  %i.ig = load i32, ptr %i.if, align 1, !tbaa !33
  %i.ih = and i32 %i.ic, 7
  %i.ii = lshr i32 %i.ig, %i.ih
  %i.ij = xor i32 %i.ia, 31
  %i.ik = lshr i32 -1, %i.ij
  %i.il = and i32 %i.ik, %i.ii
  %i.im = add i32 %i.ic, 1
  %i.in = add i32 %i.im, %i.ia
  %i.io = tail call i32 @llvm.umin.i32(i32 %.pre177, i32 %i.in)
  store i32 %i.io, ptr %i.g, align 8, !tbaa !72
  br label %qdm2_get_vlc.exit133

qdm2_get_vlc.exit133:                             ; preds = %qdm2_get_vlc.exit127, %bb.o
  %.020.i132 = phi i32 [ %i.il, %bb.o ], [ %i.hn, %qdm2_get_vlc.exit127 ]
  %i.ip = sub nsw i32 %i.fi, %.020.i132           ; 2 uses
  %i.iq = lshr i32 %i.ip, 28
  %i.ir = and i32 %i.iq, 8
  %spec.select = add nsw i32 %i.ir, %i.ip
  %i.is = trunc i32 %i.ha to i16
  %i.it = trunc i32 %spec.select to i8
  br label %bb.p

bb.p:                                             ; preds = %qdm2_get_vlc.exit133, %qdm2_get_vlc.exit
  %.085 = phi i8 [ 0, %qdm2_get_vlc.exit ], [ %i.it, %qdm2_get_vlc.exit133 ]
  %.084 = phi i16 [ 0, %qdm2_get_vlc.exit ], [ %i.is, %qdm2_get_vlc.exit133 ]
  %i.iu = load i32, ptr %i.u, align 16, !tbaa !47
  %i.iv = add nuw nsw i32 %i.bl, 1
  %i.iw = icmp sgt i32 %i.iu, %i.iv
  br i1 %i.iw, label %bb.q, label %bb.v

bb.q:                                             ; preds = %bb.p
  %i.ix = load i32, ptr %i.v, align 16, !tbaa !73 ; 5 uses
  %i.iy = add nsw i32 %i.ix, %.091
  %i.iz = icmp ult i32 %i.iy, 1000
  br i1 %i.iz, label %bb.r, label %.critedge

bb.r:                                             ; preds = %bb.q
  %i.ja = load i32, ptr %i.y, align 4, !tbaa !57
  %i.jb = icmp slt i32 %i.ja, 0
  br i1 %i.jb, label %bb.s, label %qdm2_fft_init_coefficient.exit

end_hunk_0
