Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/pme_spread?download=true
inline.NumInlined: 325
inline.NumDeleted: 134
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_Z14spread_on_gridPK9gmx_pme_tP11PmeAtomCommP14PmeAndFftGridsbbb.omp_outlined.1:bb.a
  %wide.load194 = load <8 x float>, ptr %i.akp, align 4, !tbaa !134
  %i.akq = fsub <8 x float> %wide.load187, %wide.load191
  %i.akr = fsub <8 x float> %wide.load188, %wide.load192
  %i.aks = fsub <8 x float> %wide.load189, %wide.load193
  %i.akt = fsub <8 x float> %wide.load190, %wide.load194
  %i.aku = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep442.i, i64 %i.akh ; 4 uses
  %i.akv = getelementptr inbounds nuw i8, ptr %i.aku, i64 32
  %i.akw = getelementptr inbounds nuw i8, ptr %i.aku, i64 64
  %i.akx = getelementptr inbounds nuw i8, ptr %i.aku, i64 96
  store <8 x float> %i.akq, ptr %i.aku, align 4, !tbaa !134
  store <8 x float> %i.akr, ptr %i.akv, align 4, !tbaa !134
  store <8 x float> %i.aks, ptr %i.akw, align 4, !tbaa !134
  store <8 x float> %i.akt, ptr %i.akx, align 4, !tbaa !134
  %index.next195 = add nuw i64 %index186, 32      ; 2 uses
  %i.aky = icmp eq i64 %index.next195, %n.vec184
  br i1 %i.aky, label %middle.block196, label %vector.body185, !llvm.loop !297

middle.block196:                                  ; preds = %vector.body185
  br i1 %cmp.n197, label %._crit_edge260.2.i, label %vec.epilog.iter.check202

vec.epilog.iter.check202:                         ; preds = %middle.block196
  br i1 %min.epilog.iters.check203, label %.lr.ph259.2.i.preheader, label %vec.epilog.ph204, !prof !192

vec.epilog.ph204:                                 ; preds = %vector.main.loop.iter.check181, %vec.epilog.iter.check202
  %vec.epilog.resume.val198 = phi i64 [ %n.vec184, %vec.epilog.iter.check202 ], [ 0, %vector.main.loop.iter.check181 ]
  br label %vec.epilog.vector.body206

vec.epilog.vector.body206:                        ; preds = %vec.epilog.vector.body206, %vec.epilog.ph204
  %index207 = phi i64 [ %vec.epilog.resume.val198, %vec.epilog.ph204 ], [ %index.next210, %vec.epilog.vector.body206 ] ; 2 uses
  %i.akz = or disjoint i64 %index207, 1           ; 2 uses
  %i.ala = getelementptr [4 x i8], ptr %i.d, i64 %i.akz ; 2 uses
  %i.alb = getelementptr i8, ptr %i.ala, i64 -4
  %wide.load208 = load <8 x float>, ptr %i.alb, align 16, !tbaa !134
  %wide.load209 = load <8 x float>, ptr %i.ala, align 4, !tbaa !134
  %i.alc = fsub <8 x float> %wide.load208, %wide.load209
  %i.ald = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep442.i, i64 %i.akz
  store <8 x float> %i.alc, ptr %i.ald, align 4, !tbaa !134
  %index.next210 = add nuw i64 %index207, 8       ; 2 uses
  %i.ale = icmp eq i64 %index.next210, %n.vec205
  br i1 %i.ale, label %vec.epilog.middle.block211, label %vec.epilog.vector.body206, !llvm.loop !298

vec.epilog.middle.block211:                       ; preds = %vec.epilog.vector.body206
  br i1 %cmp.n212, label %._crit_edge260.2.i, label %.lr.ph259.2.i.preheader

.lr.ph259.2.i.preheader:                          ; preds = %iter.check200, %vec.epilog.iter.check202, %vec.epilog.middle.block211
  %indvars.iv334.2.i.ph = phi i64 [ 1, %iter.check200 ], [ %i.je, %vec.epilog.iter.check202 ], [ %i.jf, %vec.epilog.middle.block211 ]
  br label %.lr.ph259.2.i

.lr.ph259.2.i:                                    ; preds = %.lr.ph259.2.i.preheader, %.lr.ph259.2.i
  %indvars.iv334.2.i = phi i64 [ %indvars.iv.next335.2.i, %.lr.ph259.2.i ], [ %indvars.iv334.2.i.ph, %.lr.ph259.2.i.preheader ] ; 3 uses
  %i.alf = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv334.2.i ; 2 uses
  %i.alg = getelementptr i8, ptr %i.alf, i64 -4
  %i.alh = load float, ptr %i.alg, align 4, !tbaa !134
  %i.ali = load float, ptr %i.alf, align 4, !tbaa !134
  %i.alj = fsub float %i.alh, %i.ali
  %gep443.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep442.i, i64 %indvars.iv334.2.i
  store float %i.alj, ptr %gep443.i, align 4, !tbaa !134
  %indvars.iv.next335.2.i = add nuw nsw i64 %indvars.iv334.2.i, 1 ; 2 uses
  %exitcond338.2.not.i = icmp eq i64 %indvars.iv.next335.2.i, %i.ij
  br i1 %exitcond338.2.not.i, label %._crit_edge260.2.i, label %.lr.ph259.2.i, !llvm.loop !299

._crit_edge260.2.i:                               ; preds = %.lr.ph259.2.i, %vec.epilog.middle.block211, %middle.block196
  %i.alk = fmul float %i.aih, %i.hv
  %i.all = load float, ptr %i.hy, align 4, !tbaa !134
  %i.alm = fmul float %i.alk, %i.all
  store float %i.alm, ptr %i.hq, align 4, !tbaa !134
  br i1 %i.hz, label %.lr.ph263.2.i.preheader, label %._crit_edge264.2.thread.i

.lr.ph263.2.i.preheader:                          ; preds = %._crit_edge260.2.i
  br i1 %min.iters.check158, label %.lr.ph263.2.i.preheader497, label %vector.ph159

vector.ph159:                                     ; preds = %.lr.ph263.2.i.preheader
  %broadcast.splatinsert161 = insertelement <8 x float> poison, float %i.aih, i64 0
  %broadcast.splat162 = shufflevector <8 x float> %broadcast.splatinsert161, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body167

vector.body167:                                   ; preds = %vector.body167, %vector.ph159
  %index168 = phi i64 [ 0, %vector.ph159 ], [ %index.next174, %vector.body167 ]
  %vec.ind = phi <8 x i64> [ <i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8>, %vector.ph159 ], [ %vec.ind.next, %vector.body167 ] ; 2 uses
  %vec.ind169 = phi <8 x i32> [ <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8>, %vector.ph159 ], [ %vec.ind.next175, %vector.body167 ] ; 2 uses
  %i.aln = uitofp nneg <8 x i32> %vec.ind169 to <8 x float>
  %i.alo = fadd <8 x float> %broadcast.splat162, %i.aln
  %i.alp = sub nuw nsw <8 x i64> %broadcast.splat164, %vec.ind ; 2 uses
  %i.alq = extractelement <8 x i64> %i.alp, i64 0
  %i.alr = getelementptr [4 x i8], ptr %i.d, i64 %i.alq ; 2 uses
  %i.als = getelementptr i8, ptr %i.alr, i64 -36
  %wide.load170 = load <8 x float>, ptr %i.als, align 4, !tbaa !134
  %reverse = shufflevector <8 x float> %wide.load170, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.alt = trunc nuw nsw <8 x i64> %i.alp to <8 x i32>
  %i.alu = uitofp nneg <8 x i32> %i.alt to <8 x float>
  %i.alv = fsub <8 x float> %i.alu, %broadcast.splat162
  %i.alw = getelementptr i8, ptr %i.alr, i64 -32  ; 2 uses
  %wide.load171 = load <8 x float>, ptr %i.alw, align 4, !tbaa !134
  %reverse172 = shufflevector <8 x float> %wide.load171, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.alx = fmul <8 x float> %reverse172, %i.alv
  %i.aly = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.alo, <8 x float> %reverse, <8 x float> %i.alx)
  %i.alz = shufflevector <8 x float> %i.aly, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse173 = fmul <8 x float> %i.alz, %i.ji
  store <8 x float> %reverse173, ptr %i.alw, align 4, !tbaa !134
  %index.next174 = add nuw i64 %index168, 8       ; 2 uses
  %vec.ind.next = add nuw nsw <8 x i64> %vec.ind, splat (i64 8)
  %vec.ind.next175 = add <8 x i32> %vec.ind169, splat (i32 8)
  %i.ama = icmp eq i64 %index.next174, %n.vec160
  br i1 %i.ama, label %middle.block176, label %vector.body167, !llvm.loop !300

middle.block176:                                  ; preds = %vector.body167
  br i1 %cmp.n177, label %._crit_edge264.2.thread.i, label %.lr.ph263.2.i.preheader497

.lr.ph263.2.i.preheader497:                       ; preds = %.lr.ph263.2.i.preheader, %middle.block176
  %indvars.iv339.2.i.ph = phi i64 [ 1, %.lr.ph263.2.i.preheader ], [ %i.jh, %middle.block176 ]
  br label %.lr.ph263.2.i

.lr.ph263.2.i:                                    ; preds = %.lr.ph263.2.i.preheader497, %.lr.ph263.2.i
  %indvars.iv339.2.i = phi i64 [ %indvars.iv.next340.2.i, %.lr.ph263.2.i ], [ %indvars.iv339.2.i.ph, %.lr.ph263.2.i.preheader497 ] ; 3 uses
  %i.amb = trunc nuw nsw i64 %indvars.iv339.2.i to i32
  %i.amc = uitofp nneg i32 %i.amb to float
  %i.amd = fadd float %i.aih, %i.amc
  %i.ame = sub nuw nsw i64 %i.hw, %indvars.iv339.2.i ; 2 uses
  %i.amf = getelementptr [4 x i8], ptr %i.d, i64 %i.ame ; 2 uses
  %i.amg = getelementptr i8, ptr %i.amf, i64 -8
  %i.amh = load float, ptr %i.amg, align 4, !tbaa !134
  %i.ami = trunc nuw nsw i64 %i.ame to i32
  %i.amj = uitofp nneg i32 %i.ami to float
  %i.amk = fsub float %i.amj, %i.aih
  %i.aml = getelementptr i8, ptr %i.amf, i64 -4   ; 2 uses
  %i.amm = load float, ptr %i.aml, align 4, !tbaa !134
  %i.amn = fmul float %i.amm, %i.amk
  %i.amo = call float @llvm.fmuladd.f32(float %i.amd, float %i.amh, float %i.amn)
  %i.amp = fmul float %i.amo, %i.hv
  store float %i.amp, ptr %i.aml, align 4, !tbaa !134
  %indvars.iv.next340.2.i = add nuw nsw i64 %indvars.iv339.2.i, 1 ; 2 uses
  %exitcond343.2.not.i = icmp eq i64 %indvars.iv.next340.2.i, %wide.trip.count342.i
  br i1 %exitcond343.2.not.i, label %._crit_edge264.2.thread.i, label %.lr.ph263.2.i, !llvm.loop !301

._crit_edge264.2.thread.i:                        ; preds = %.lr.ph263.2.i, %middle.block176, %._crit_edge260.2.i
  %i.amq = fmul float %i.aii, %i.hv
  %i.amr = load float, ptr %i.d, align 16, !tbaa !134
  %i.ams = fmul float %i.amq, %i.amr
  store float %i.ams, ptr %i.d, align 16, !tbaa !134
  br label %.lr.ph267.2.i

._crit_edge264.2.i:                               ; preds = %._crit_edge256.2.i, %._crit_edge256.2.thread.i
  %.ph434.i = phi float [ %i.aih, %._crit_edge256.2.i ], [ %i.aia, %._crit_edge256.2.thread.i ]
  %.ph435.i = phi float [ %i.aii, %._crit_edge256.2.i ], [ %i.aib, %._crit_edge256.2.thread.i ]
  %i.amt = fmul float %.ph434.i, %i.hv
  %i.amu = load float, ptr %i.hy, align 4, !tbaa !134
  %i.amv = fmul float %i.amt, %i.amu
  store float %i.amv, ptr %i.hq, align 4, !tbaa !134
  %i.amw = fmul float %.ph435.i, %i.hv
  %i.amx = load float, ptr %i.d, align 16, !tbaa !134
  %i.amy = fmul float %i.amw, %i.amx
  store float %i.amy, ptr %i.d, align 16, !tbaa !134
  br i1 %i.ia, label %.lr.ph267.2.i, label %._crit_edge268.2.i

.lr.ph267.2.i:                                    ; preds = %._crit_edge264.2.i, %._crit_edge264.2.thread.i
  %i.amz = load ptr, ptr %i.io, align 8, !tbaa !328
  %scevgep344.2.i = getelementptr nuw i8, ptr %i.amz, i64 %i.uq
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %scevgep344.2.i, ptr nonnull align 16 %i.d, i64 %i.ik, i1 false), !tbaa !134
  br label %._crit_edge268.2.i

._crit_edge268.2.i:                               ; preds = %.lr.ph267.2.i, %._crit_edge264.2.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #3
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %._crit_edge268.2.i, %bb.m
  %indvars.iv.next353.i = add nuw nsw i64 %indvars.iv352.i, 1 ; 2 uses
  %exitcond356.not.i = icmp eq i64 %indvars.iv.next353.i, %wide.trip.count355.i
  br i1 %exitcond356.not.i, label %_ZL13make_bsplinesN3gmx8ArrayRefIPfEES2_iPA3_fiPKiPKfb.exit, label %.lr.ph272.split.i, !llvm.loop !271

_ZL13make_bsplinesN3gmx8ArrayRefIPfEES2_iPA3_fiPKiPKfb.exit: ; preds = %.loopexit232.us.i, %.loopexit230.us.i, %.loopexit.i, %bb.j, %bb.i
  %i.ana = load i8, ptr %8, align 1, !tbaa !17, !range !106, !noundef !107
  %i.anb = trunc nuw i8 %i.ana to i1
  br i1 %i.anb, label %bb.n, label %bb.s

bb.n:                                             ; preds = %_ZL13make_bsplinesN3gmx8ArrayRefIPfEES2_iPA3_fiPKiPKfb.exit
  %i.anc = load ptr, ptr %4, align 8, !tbaa !11   ; 2 uses
  %i.and = getelementptr inbounds nuw i8, ptr %i.anc, i64 80
  %i.ane = load i8, ptr %i.and, align 8, !tbaa !108, !range !106, !noundef !107
  %i.anf = trunc nuw i8 %i.ane to i1
  %i.ang = load ptr, ptr %3, align 8, !tbaa !15   ; 2 uses
  br i1 %i.anf, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.anh = getelementptr inbounds nuw i8, ptr %i.ang, i64 88
  %i.ani = load ptr, ptr %i.anh, align 8, !tbaa !193
  %i.anj = getelementptr inbounds nuw [72 x i8], ptr %i.ani, i64 %indvars.iv
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.ank = phi ptr [ %i.anj, %bb.o ], [ %i.ang, %bb.n ] ; 7 uses
  %i.anl = load ptr, ptr %5, align 8, !tbaa !13   ; 2 uses
  %i.anm = getelementptr inbounds nuw i8, ptr %i.anc, i64 192
  %i.ann = load ptr, ptr %i.anm, align 8, !tbaa !333 ; 2 uses
  %i.ano = getelementptr inbounds nuw i8, ptr %i.ank, i64 40
  %i.anp = load i32, ptr %i.ano, align 8, !tbaa !105
  %i.anq = getelementptr inbounds nuw i8, ptr %i.ank, i64 44
  %i.anr = getelementptr inbounds nuw i8, ptr %i.ank, i64 48
  %i.ans = getelementptr inbounds nuw i8, ptr %i.ank, i64 24
  %i.ant = load i32, ptr %i.anq, align 4, !tbaa !105 ; 6 uses
  %i.anu = load i32, ptr %i.anr, align 8, !tbaa !105 ; 15 uses
  %i.anv = load <2 x i32>, ptr %i.ans, align 8, !tbaa !105 ; 4 uses
  %i.anw = getelementptr inbounds nuw i8, ptr %i.ank, i64 32
  %i.anx = load i32, ptr %i.anw, align 8, !tbaa !105 ; 4 uses
  %i.any = mul i32 %i.anu, %i.ant                 ; 5 uses
  %i.anz = mul i32 %i.any, %i.anp                 ; 2 uses
  %i.aoa = getelementptr inbounds nuw i8, ptr %i.ank, i64 56
  %i.aob = load ptr, ptr %i.aoa, align 8, !tbaa !194
  %i.aoc = load ptr, ptr %i.aob, align 8, !tbaa !195 ; 19 uses
  %i.aod = icmp sgt i32 %i.anz, 0
  br i1 %i.aod, label %.lr.ph.preheader.i, label %._crit_edge.i41

.lr.ph.preheader.i:                               ; preds = %bb.p
  %i.aoe = zext nneg i32 %i.anz to i64
  %i.aof = shl nuw nsw i64 %i.aoe, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.aoc, i8 0, i64 %i.aof, i1 false), !tbaa !134
  br label %._crit_edge.i41

._crit_edge.i41:                                  ; preds = %.lr.ph.preheader.i, %bb.p
  %i.aog = getelementptr inbounds nuw i8, ptr %i.ank, i64 36
  %i.aoh = load i32, ptr %i.aog, align 4, !tbaa !196
  %.fr.i = freeze i32 %i.aoh                      ; 6 uses
  %i.aoi = load i32, ptr %.035, align 8, !tbaa !325 ; 4 uses
  %i.aoj = icmp sgt i32 %i.aoi, 0
  br i1 %i.aoj, label %.lr.ph423.i, label %_ZL35spread_coefficients_bsplines_threadP9pmegrid_tPK11PmeAtomCommP12splinedata_tRK15pme_spline_work.exit

.lr.ph423.i:                                      ; preds = %._crit_edge.i41
  %i.aok = getelementptr inbounds nuw i8, ptr %.035, i64 8 ; 3 uses
  %i.aol = getelementptr inbounds nuw i8, ptr %i.anl, i64 152 ; 3 uses
  %i.aom = getelementptr inbounds nuw i8, ptr %i.anl, i64 264 ; 3 uses
  %i.aon = getelementptr inbounds nuw i8, ptr %.035, i64 32 ; 3 uses
  %i.aoo = getelementptr inbounds nuw i8, ptr %.035, i64 40 ; 3 uses
  %i.aop = getelementptr inbounds nuw i8, ptr %.035, i64 48 ; 3 uses
  %i.aoq = getelementptr inbounds nuw i8, ptr %i.ann, i64 12
  %i.aor = sext i32 %i.anu to i64                 ; 5 uses
  %i.aos = shl nsw i32 %i.anu, 1
  %i.aot = sext i32 %i.aos to i64                 ; 5 uses
  %i.aou = mul nsw i32 %i.anu, 3
  %i.aov = sext i32 %i.aou to i64                 ; 5 uses
  %i.aow = shl nsw i32 %i.anu, 2
  %i.aox = sext i32 %i.aow to i64                 ; 5 uses
  %i.aoy = icmp sgt i32 %.fr.i, 0
  switch i32 %.fr.i, label %.lr.ph423.split.preheader.i [
    i32 4, label %.lr.ph423.split.us.i
    i32 5, label %.lr.ph423.split.us425.i.preheader
  ]

.lr.ph423.split.us425.i.preheader:                ; preds = %.lr.ph423.i
  %i.aoz = insertelement <4 x i32> poison, i32 %i.ant, i64 0
  %i.apa = shufflevector <4 x i32> %i.aoz, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.apb = insertelement <4 x i32> poison, i32 %i.anu, i64 0
  %i.apc = shufflevector <4 x i32> %i.apb, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %.lr.ph423.split.us425.i

.lr.ph423.split.preheader.i:                      ; preds = %.lr.ph423.i
  %i.apd = sext i32 %.fr.i to i64                 ; 2 uses
  %.pre455.i = load ptr, ptr %i.aok, align 8, !tbaa !183
  %wide.trip.count449.i = zext i32 %.fr.i to i64  ; 12 uses
  %i.ape = zext nneg i32 %i.aoi to i64
  %i.apf = add nsw i64 %wide.trip.count449.i, -1  ; 2 uses
  %i.apg = shl nuw nsw i64 %wide.trip.count449.i, 2 ; 2 uses
  %i.aph = shl nsw i64 %i.apd, 2
  %i.api = mul i32 %i.ant, %i.anu
  %i.apj = zext i32 %i.api to i64
  %i.apk = zext i32 %i.anu to i64
  %scevgep121 = getelementptr i8, ptr %i.aoc, i64 %i.apg
  %i.apl = extractelement <2 x i32> %i.anv, i64 0
  %i.apm = extractelement <2 x i32> %i.anv, i64 1 ; 2 uses
  %min.iters.check123 = icmp ult i32 %.fr.i, 4
  %i.apn = trunc i64 %i.apf to i32
  %i.apo = icmp ugt i64 %i.apf, 4294967295
  %min.iters.check125 = icmp ult i32 %.fr.i, 32
  %i.app = and i64 %wide.trip.count449.i, 28
  %n.vec127 = and i64 %wide.trip.count449.i, 2147483616 ; 4 uses
  %cmp.n140 = icmp eq i64 %n.vec127, %wide.trip.count449.i
  %min.epilog.iters.check145 = icmp eq i64 %i.app, 0
  %n.vec147 = and i64 %wide.trip.count449.i, 2147483644 ; 3 uses
  %cmp.n156 = icmp eq i64 %n.vec147, %wide.trip.count449.i
  %xtraiter518 = and i64 %wide.trip.count449.i, 3 ; 2 uses
  %lcmp.mod519.not = icmp eq i64 %xtraiter518, 0
  br label %.lr.ph423.split.i

.lr.ph423.split.us.i:                             ; preds = %.lr.ph423.i, %.loopexit406.us.i
  %i.apq = phi i32 [ %i.auh, %.loopexit406.us.i ], [ %i.aoi, %.lr.ph423.i ]
  %indvars.iv435.i = phi i64 [ %indvars.iv.next436.i, %.loopexit406.us.i ], [ 0, %.lr.ph423.i ] ; 3 uses
  %i.apr = load ptr, ptr %i.aok, align 8, !tbaa !183
  %i.aps = getelementptr inbounds nuw [4 x i8], ptr %i.apr, i64 %indvars.iv435.i
  %i.apt = load i32, ptr %i.aps, align 4, !tbaa !105
  %i.apu = sext i32 %i.apt to i64                 ; 2 uses
  %i.apv = load i64, ptr %i.aol, align 8
  %i.apw = inttoptr i64 %i.apv to ptr
  %i.apx = getelementptr inbounds [4 x i8], ptr %i.apw, i64 %i.apu
  %i.apy = load float, ptr %i.apx, align 4, !tbaa !134 ; 5 uses
  %i.apz = fcmp une float %i.apy, 0.000000e+00
  br i1 %i.apz, label %.loopexit406.us.loopexit.i, label %.loopexit406.us.i

.loopexit406.us.loopexit.i:                       ; preds = %.lr.ph423.split.us.i
  %i.aqa = load ptr, ptr %i.aom, align 8, !tbaa !187
  %i.aqb = getelementptr inbounds nuw [12 x i8], ptr %i.aqa, i64 %i.apu ; 2 uses
  %i.aqc = shl nuw nsw i64 %indvars.iv435.i, 2    ; 3 uses
  %i.aqd = getelementptr inbounds nuw i8, ptr %i.aqb, i64 8
  %i.aqe = load i32, ptr %i.aqd, align 4, !tbaa !105
  %i.aqf = sub nsw i32 %i.aqe, %i.anx
  %i.aqg = load ptr, ptr %i.aon, align 8, !tbaa !328
  %i.aqh = getelementptr inbounds nuw [4 x i8], ptr %i.aqg, i64 %i.aqc ; 4 uses
  %i.aqi = load ptr, ptr %i.aoo, align 8, !tbaa !328
  %i.aqj = getelementptr inbounds nuw [4 x i8], ptr %i.aqi, i64 %i.aqc ; 4 uses
  %i.aqk = load ptr, ptr %i.aop, align 8, !tbaa !328
  %i.aql = getelementptr inbounds nuw [4 x i8], ptr %i.aqk, i64 %i.aqc
  %i.aqm = load float, ptr %i.aqj, align 4, !tbaa !134
  %i.aqn = insertelement <4 x float> poison, float %i.aqm, i64 0
  %i.aqo = shufflevector <4 x float> %i.aqn, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.aqp = getelementptr inbounds nuw i8, ptr %i.aqj, i64 4
  %i.aqq = load float, ptr %i.aqp, align 4, !tbaa !134
  %i.aqr = insertelement <4 x float> poison, float %i.aqq, i64 0
  %i.aqs = shufflevector <4 x float> %i.aqr, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.aqt = getelementptr inbounds nuw i8, ptr %i.aqj, i64 8
  %i.aqu = load float, ptr %i.aqt, align 4, !tbaa !134
  %i.aqv = insertelement <4 x float> poison, float %i.aqu, i64 0
  %i.aqw = shufflevector <4 x float> %i.aqv, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.aqx = getelementptr inbounds nuw i8, ptr %i.aqj, i64 12
  %i.aqy = load float, ptr %i.aqx, align 4, !tbaa !134
  %i.aqz = insertelement <4 x float> poison, float %i.aqy, i64 0
  %i.ara = shufflevector <4 x float> %i.aqz, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %.val330.us.i = load <4 x float>, ptr %i.aql, align 16, !tbaa !334 ; 4 uses
  %9 = sext i32 %i.aqf to i64                     ; 16 uses
  %10 = load float, ptr %i.aqh, align 4, !tbaa !134
  %11 = fmul float %i.apy, %10
  %12 = insertelement <4 x float> poison, float %11, i64 0
  %13 = shufflevector <4 x float> %12, <4 x float> poison, <4 x i32> zeroinitializer
  %14 = fmul <4 x float> %.val330.us.i, %13       ; 4 uses
  %15 = load <2 x i32>, ptr %i.aqb, align 4, !tbaa !105
  %16 = sub nsw <2 x i32> %15, %i.anv             ; 3 uses
  %17 = extractelement <2 x i32> %16, i64 1       ; 3 uses
  %i.arb = mul nsw i32 %17, %i.anu
  %i.arc = sext i32 %i.arb to i64                 ; 4 uses
  %18 = add nsw <2 x i32> %16, splat (i32 1)      ; 2 uses
  %19 = extractelement <2 x i32> %18, i64 1
  %i.ard = mul nsw i32 %19, %i.anu
  %i.are = sext i32 %i.ard to i64                 ; 4 uses
  %20 = add nsw i32 %17, 2
  %i.arf = mul nsw i32 %20, %i.anu
  %21 = sext i32 %i.arf to i64                    ; 4 uses
  %22 = add nsw i32 %17, 3
  %23 = mul nsw i32 %22, %i.anu
  %24 = sext i32 %23 to i64                       ; 4 uses
  %25 = extractelement <2 x i32> %16, i64 0       ; 3 uses
  %26 = mul i32 %25, %i.any
  %i.arg = sext i32 %26 to i64
  %i.arh = getelementptr inbounds [4 x i8], ptr %i.aoc, i64 %i.arg ; 4 uses
  %i.ari = getelementptr inbounds [4 x i8], ptr %i.arh, i64 %i.arc
  %i.arj = getelementptr inbounds [4 x i8], ptr %i.ari, i64 %9 ; 2 uses
  %.val336.us.i = load <4 x float>, ptr %i.arj, align 1, !tbaa !334
  %i.ark = getelementptr inbounds [4 x i8], ptr %i.arh, i64 %i.are
  %i.arl = getelementptr inbounds [4 x i8], ptr %i.ark, i64 %9 ; 2 uses
  %.val335.us.i = load <4 x float>, ptr %i.arl, align 1, !tbaa !334
  %i.arm = getelementptr inbounds [4 x i8], ptr %i.arh, i64 %21
  %i.arn = getelementptr inbounds [4 x i8], ptr %i.arm, i64 %9 ; 2 uses
  %.val334.us.i = load <4 x float>, ptr %i.arn, align 1, !tbaa !334
  %i.aro = getelementptr inbounds [4 x i8], ptr %i.arh, i64 %24
  %i.arp = getelementptr inbounds [4 x i8], ptr %i.aro, i64 %9 ; 2 uses
  %.val333.us.i = load <4 x float>, ptr %i.arp, align 1, !tbaa !334
  %i.arq = call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %14, <4 x float> %i.aqo, <4 x float> %.val336.us.i)
  %i.arr = call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %14, <4 x float> %i.aqs, <4 x float> %.val335.us.i)
  %i.ars = call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %14, <4 x float> %i.aqw, <4 x float> %.val334.us.i)
  %i.art = call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %14, <4 x float> %i.ara, <4 x float> %.val333.us.i)
  store <4 x float> %i.arq, ptr %i.arj, align 1, !tbaa !334
  store <4 x float> %i.arr, ptr %i.arl, align 1, !tbaa !334
  store <4 x float> %i.ars, ptr %i.arn, align 1, !tbaa !334
  store <4 x float> %i.art, ptr %i.arp, align 1, !tbaa !334
  %27 = extractelement <2 x i32> %18, i64 0
  %i.aru = mul i32 %27, %i.any
  %i.arv = getelementptr inbounds nuw i8, ptr %i.aqh, i64 4
  %i.arw = load float, ptr %i.arv, align 4, !tbaa !134
  %i.arx = fmul float %i.apy, %i.arw
  %i.ary = insertelement <4 x float> poison, float %i.arx, i64 0
  %i.arz = shufflevector <4 x float> %i.ary, <4 x float> poison, <4 x i32> zeroinitializer
  %i.asa = fmul <4 x float> %.val330.us.i, %i.arz ; 4 uses
  %i.asb = sext i32 %i.aru to i64
  %i.asc = getelementptr inbounds [4 x i8], ptr %i.aoc, i64 %i.asb ; 4 uses
  %i.asd = getelementptr inbounds [4 x i8], ptr %i.asc, i64 %i.arc
  %i.ase = getelementptr inbounds [4 x i8], ptr %i.asd, i64 %9 ; 2 uses
  %.val336.us.1.i = load <4 x float>, ptr %i.ase, align 1, !tbaa !334
  %i.asf = getelementptr inbounds [4 x i8], ptr %i.asc, i64 %i.are
  %i.asg = getelementptr inbounds [4 x i8], ptr %i.asf, i64 %9 ; 2 uses
  %.val335.us.1.i = load <4 x float>, ptr %i.asg, align 1, !tbaa !334
  %i.ash = getelementptr inbounds [4 x i8], ptr %i.asc, i64 %21
  %i.asi = getelementptr inbounds [4 x i8], ptr %i.ash, i64 %9 ; 2 uses
  %.val334.us.1.i = load <4 x float>, ptr %i.asi, align 1, !tbaa !334
  %i.asj = getelementptr inbounds [4 x i8], ptr %i.asc, i64 %24
  %i.ask = getelementptr inbounds [4 x i8], ptr %i.asj, i64 %9 ; 2 uses
  %.val333.us.1.i = load <4 x float>, ptr %i.ask, align 1, !tbaa !334
  %i.asl = call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.asa, <4 x float> %i.aqo, <4 x float> %.val336.us.1.i)
  %i.asm = call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.asa, <4 x float> %i.aqs, <4 x float> %.val335.us.1.i)
  %i.asn = call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.asa, <4 x float> %i.aqw, <4 x float> %.val334.us.1.i)
  %i.aso = call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.asa, <4 x float> %i.ara, <4 x float> %.val333.us.1.i)
  store <4 x float> %i.asl, ptr %i.ase, align 1, !tbaa !334
  store <4 x float> %i.asm, ptr %i.asg, align 1, !tbaa !334
  store <4 x float> %i.asn, ptr %i.asi, align 1, !tbaa !334
  store <4 x float> %i.aso, ptr %i.ask, align 1, !tbaa !334
  %i.asp = add nsw i32 %25, 2
  %i.asq = mul i32 %i.asp, %i.any
  %i.asr = getelementptr inbounds nuw i8, ptr %i.aqh, i64 8
  %i.ass = load float, ptr %i.asr, align 4, !tbaa !134
  %i.ast = fmul float %i.apy, %i.ass
  %i.asu = insertelement <4 x float> poison, float %i.ast, i64 0
  %i.asv = shufflevector <4 x float> %i.asu, <4 x float> poison, <4 x i32> zeroinitializer
  %i.asw = fmul <4 x float> %.val330.us.i, %i.asv ; 4 uses
  %i.asx = sext i32 %i.asq to i64
  %i.asy = getelementptr inbounds [4 x i8], ptr %i.aoc, i64 %i.asx ; 4 uses
  %i.asz = getelementptr inbounds [4 x i8], ptr %i.asy, i64 %i.arc
  %i.ata = getelementptr inbounds [4 x i8], ptr %i.asz, i64 %9 ; 2 uses
  %.val336.us.2.i = load <4 x float>, ptr %i.ata, align 1, !tbaa !334
  %i.atb = getelementptr inbounds [4 x i8], ptr %i.asy, i64 %i.are
  %i.atc = getelementptr inbounds [4 x i8], ptr %i.atb, i64 %9 ; 2 uses
  %.val335.us.2.i = load <4 x float>, ptr %i.atc, align 1, !tbaa !334
  %i.atd = getelementptr inbounds [4 x i8], ptr %i.asy, i64 %21
  %i.ate = getelementptr inbounds [4 x i8], ptr %i.atd, i64 %9 ; 2 uses
  %.val334.us.2.i = load <4 x float>, ptr %i.ate, align 1, !tbaa !334
  %i.atf = getelementptr inbounds [4 x i8], ptr %i.asy, i64 %24
  %i.atg = getelementptr inbounds [4 x i8], ptr %i.atf, i64 %9 ; 2 uses
  %.val333.us.2.i = load <4 x float>, ptr %i.atg, align 1, !tbaa !334
  %i.ath = call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.asw, <4 x float> %i.aqo, <4 x float> %.val336.us.2.i)
  %i.ati = call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.asw, <4 x float> %i.aqs, <4 x float> %.val335.us.2.i)
  %i.atj = call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.asw, <4 x float> %i.aqw, <4 x float> %.val334.us.2.i)
  %i.atk = call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.asw, <4 x float> %i.ara, <4 x float> %.val333.us.2.i)
  store <4 x float> %i.ath, ptr %i.ata, align 1, !tbaa !334
  store <4 x float> %i.ati, ptr %i.atc, align 1, !tbaa !334
  store <4 x float> %i.atj, ptr %i.ate, align 1, !tbaa !334
  store <4 x float> %i.atk, ptr %i.atg, align 1, !tbaa !334
  %i.atl = add nsw i32 %25, 3
  %i.atm = mul i32 %i.atl, %i.any
  %i.atn = getelementptr inbounds nuw i8, ptr %i.aqh, i64 12
  %i.ato = load float, ptr %i.atn, align 4, !tbaa !134
  %i.atp = fmul float %i.apy, %i.ato
  %i.atq = insertelement <4 x float> poison, float %i.atp, i64 0
  %i.atr = shufflevector <4 x float> %i.atq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ats = fmul <4 x float> %.val330.us.i, %i.atr ; 4 uses
  %i.att = sext i32 %i.atm to i64
  %i.atu = getelementptr inbounds [4 x i8], ptr %i.aoc, i64 %i.att ; 4 uses
  %i.atv = getelementptr inbounds [4 x i8], ptr %i.atu, i64 %i.arc
  %i.atw = getelementptr inbounds [4 x i8], ptr %i.atv, i64 %9 ; 2 uses
  %.val336.us.3.i = load <4 x float>, ptr %i.atw, align 1, !tbaa !334
  %i.atx = getelementptr inbounds [4 x i8], ptr %i.atu, i64 %i.are
  %i.aty = getelementptr inbounds [4 x i8], ptr %i.atx, i64 %9 ; 2 uses
  %.val335.us.3.i = load <4 x float>, ptr %i.aty, align 1, !tbaa !334
  %i.atz = getelementptr inbounds [4 x i8], ptr %i.atu, i64 %21
  %i.aua = getelementptr inbounds [4 x i8], ptr %i.atz, i64 %9 ; 2 uses
  %.val334.us.3.i = load <4 x float>, ptr %i.aua, align 1, !tbaa !334
  %i.aub = getelementptr inbounds [4 x i8], ptr %i.atu, i64 %24
  %i.auc = getelementptr inbounds [4 x i8], ptr %i.aub, i64 %9 ; 2 uses
  %.val333.us.3.i = load <4 x float>, ptr %i.auc, align 1, !tbaa !334
  %i.aud = call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.ats, <4 x float> %i.aqo, <4 x float> %.val336.us.3.i)
  %i.aue = call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.ats, <4 x float> %i.aqs, <4 x float> %.val335.us.3.i)
  %i.auf = call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.ats, <4 x float> %i.aqw, <4 x float> %.val334.us.3.i)
  %i.aug = call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.ats, <4 x float> %i.ara, <4 x float> %.val333.us.3.i)
  store <4 x float> %i.aud, ptr %i.atw, align 1, !tbaa !334
  store <4 x float> %i.aue, ptr %i.aty, align 1, !tbaa !334
  store <4 x float> %i.auf, ptr %i.aua, align 1, !tbaa !334
  store <4 x float> %i.aug, ptr %i.auc, align 1, !tbaa !334
  %.pre454.i = load i32, ptr %.035, align 8, !tbaa !325
  br label %.loopexit406.us.i

.loopexit406.us.i:                                ; preds = %.loopexit406.us.loopexit.i, %.lr.ph423.split.us.i
  %i.auh = phi i32 [ %.pre454.i, %.loopexit406.us.loopexit.i ], [ %i.apq, %.lr.ph423.split.us.i ] ; 2 uses
  %indvars.iv.next436.i = add nuw nsw i64 %indvars.iv435.i, 1 ; 2 uses
  %i.aui = sext i32 %i.auh to i64
  %i.auj = icmp slt i64 %indvars.iv.next436.i, %i.aui
  br i1 %i.auj, label %.lr.ph423.split.us.i, label %_ZL35spread_coefficients_bsplines_threadP9pmegrid_tPK11PmeAtomCommP12splinedata_tRK15pme_spline_work.exit, !llvm.loop !302

.lr.ph423.split.us425.i:                          ; preds = %.lr.ph423.split.us425.i.preheader, %.loopexit407.us.i
  %i.auk = phi i32 [ %i.bcs, %.loopexit407.us.i ], [ %i.aoi, %.lr.ph423.split.us425.i.preheader ]
  %indvars.iv.i42 = phi i64 [ %indvars.iv.next.i43, %.loopexit407.us.i ], [ 0, %.lr.ph423.split.us425.i.preheader ] ; 3 uses
  %i.aul = load ptr, ptr %i.aok, align 8, !tbaa !183
  %i.aum = getelementptr inbounds nuw [4 x i8], ptr %i.aul, i64 %indvars.iv.i42
  %i.aun = load i32, ptr %i.aum, align 4, !tbaa !105
  %i.auo = sext i32 %i.aun to i64                 ; 2 uses
  %i.aup = load i64, ptr %i.aol, align 8
  %i.auq = inttoptr i64 %i.aup to ptr
  %i.aur = getelementptr inbounds [4 x i8], ptr %i.auq, i64 %i.auo
  %i.aus = load float, ptr %i.aur, align 4, !tbaa !134 ; 6 uses
  %i.aut = fcmp une float %i.aus, 0.000000e+00
  br i1 %i.aut, label %.loopexit407.us.loopexit.i, label %.loopexit407.us.i

.loopexit407.us.loopexit.i:                       ; preds = %.lr.ph423.split.us425.i
  %i.auu = load ptr, ptr %i.aom, align 8, !tbaa !187
  %i.auv = getelementptr inbounds nuw [12 x i8], ptr %i.auu, i64 %i.auo ; 2 uses
  %i.auw = mul nuw nsw i64 %indvars.iv.i42, 5     ; 3 uses
  %i.aux = getelementptr inbounds nuw i8, ptr %i.auv, i64 8
  %i.auy = load i32, ptr %i.aux, align 4, !tbaa !105
  %i.auz = sub nsw i32 %i.auy, %i.anx             ; 2 uses
  %i.ava = load ptr, ptr %i.aon, align 8, !tbaa !328
  %i.avb = getelementptr inbounds nuw [4 x i8], ptr %i.ava, i64 %i.auw ; 5 uses
  %i.avc = load ptr, ptr %i.aoo, align 8, !tbaa !328
  %i.avd = getelementptr inbounds nuw [4 x i8], ptr %i.avc, i64 %i.auw ; 5 uses
  %i.ave = load ptr, ptr %i.aop, align 8, !tbaa !328
  %i.avf = getelementptr inbounds nuw [4 x i8], ptr %i.ave, i64 %i.auw
  %i.avg = load float, ptr %i.avd, align 4, !tbaa !134
  %i.avh = insertelement <4 x float> poison, float %i.avg, i64 0
  %i.avi = shufflevector <4 x float> %i.avh, <4 x float> poison, <4 x i32> zeroinitializer ; 10 uses
  %i.avj = getelementptr inbounds nuw i8, ptr %i.avd, i64 4
  %i.avk = load float, ptr %i.avj, align 4, !tbaa !134
  %i.avl = insertelement <4 x float> poison, float %i.avk, i64 0
  %i.avm = shufflevector <4 x float> %i.avl, <4 x float> poison, <4 x i32> zeroinitializer ; 10 uses
  %i.avn = getelementptr inbounds nuw i8, ptr %i.avd, i64 8
  %i.avo = load float, ptr %i.avn, align 4, !tbaa !134
  %i.avp = insertelement <4 x float> poison, float %i.avo, i64 0
  %i.avq = shufflevector <4 x float> %i.avp, <4 x float> poison, <4 x i32> zeroinitializer ; 10 uses
  %i.avr = getelementptr inbounds nuw i8, ptr %i.avd, i64 12
  %i.avs = load float, ptr %i.avr, align 4, !tbaa !134
  %i.avt = insertelement <4 x float> poison, float %i.avs, i64 0
  %i.avu = shufflevector <4 x float> %i.avt, <4 x float> poison, <4 x i32> zeroinitializer ; 10 uses
  %i.avv = getelementptr inbounds nuw i8, ptr %i.avd, i64 16
  %i.avw = load float, ptr %i.avv, align 4, !tbaa !134
  %i.avx = insertelement <4 x float> poison, float %i.avw, i64 0
  %i.avy = shufflevector <4 x float> %i.avx, <4 x float> poison, <4 x i32> zeroinitializer ; 10 uses
  %i.avz = and i32 %i.auz, 3
  %i.awa = zext nneg i32 %i.avz to i64            ; 3 uses
  %i.awb = sub nsw i64 0, %i.awa
  %i.awc = getelementptr inbounds [4 x i8], ptr %i.avf, i64 %i.awb ; 2 uses
  %.val332.us.i = load <4 x float>, ptr %i.awc, align 1, !tbaa !334
  %i.awd = getelementptr inbounds nuw i8, ptr %i.awc, i64 16
  %.val331.us.i = load <4 x float>, ptr %i.awd, align 1, !tbaa !334
  %i.awe = getelementptr inbounds nuw [2 x i8], ptr %i.ann, i64 %i.awa
  %.sroa.069.0.copyload404.us.i = load <16 x i1>, ptr %i.awe, align 2, !tbaa !336
  %i.awf = shufflevector <4 x float> %.val332.us.i, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.awg = select <16 x i1> %.sroa.069.0.copyload404.us.i, <16 x float> %i.awf, <16 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison>
  %i.awh = shufflevector <16 x float> %i.awg, <16 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 5 uses
  %i.awi = getelementptr inbounds nuw [2 x i8], ptr %i.aoq, i64 %i.awa
  %.sroa.066.0.copyload405.us.i = load <16 x i1>, ptr %i.awi, align 2, !tbaa !336
  %i.awj = shufflevector <4 x float> %.val331.us.i, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.awk = select <16 x i1> %.sroa.066.0.copyload405.us.i, <16 x float> %i.awj, <16 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison>
  %i.awl = shufflevector <16 x float> %i.awk, <16 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 5 uses
  %i.awm = and i32 %i.auz, -4                     ; 2 uses
  %i.awn = load float, ptr %i.avb, align 4, !tbaa !134
  %i.awo = fmul float %i.aus, %i.awn
  %i.awp = insertelement <4 x float> poison, float %i.awo, i64 0
  %i.awq = shufflevector <4 x float> %i.awp, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.awr = fmul <4 x float> %i.awh, %i.awq        ; 5 uses
  %i.aws = fmul <4 x float> %i.awl, %i.awq        ; 5 uses
  %i.awt = getelementptr inbounds nuw i8, ptr %i.avb, i64 4
  %i.awu = getelementptr inbounds nuw i8, ptr %i.avb, i64 8
  %i.awv = getelementptr inbounds nuw i8, ptr %i.avb, i64 12
  %i.aww = load <2 x i32>, ptr %i.auv, align 4, !tbaa !105
  %i.awx = sub nsw <2 x i32> %i.aww, %i.anv       ; 4 uses
  %i.awy = shufflevector <2 x i32> %i.awx, <2 x i32> poison, <4 x i32> zeroinitializer
  %i.awz = add nsw <4 x i32> %i.awy, <i32 0, i32 1, i32 2, i32 3>
  %i.axa = mul nsw <4 x i32> %i.awz, %i.apa
  %i.axb = shufflevector <2 x i32> %i.awx, <2 x i32> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.axc = add <4 x i32> %i.axa, %i.axb
  %i.axd = mul <4 x i32> %i.axc, %i.apc
  %i.axe = insertelement <4 x i32> poison, i32 %i.awm, i64 0
  %i.axf = shufflevector <4 x i32> %i.axe, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.axg = add <4 x i32> %i.axf, %i.axd           ; 4 uses
  %i.axh = extractelement <4 x i32> %i.axg, i64 0
  %i.axi = sext i32 %i.axh to i64
  %i.axj = getelementptr inbounds [4 x i8], ptr %i.aoc, i64 %i.axi ; 7 uses
  %.val329.us.i = load <4 x float>, ptr %i.axj, align 16, !tbaa !334
  %i.axk = getelementptr inbounds [4 x i8], ptr %i.axj, i64 %i.aor ; 3 uses
  %.val328.us.i = load <4 x float>, ptr %i.axk, align 16, !tbaa !334
  %i.axl = getelementptr inbounds [4 x i8], ptr %i.axj, i64 %i.aot ; 3 uses
  %.val327.us.i = load <4 x float>, ptr %i.axl, align 16, !tbaa !334
  %i.axm = getelementptr inbounds [4 x i8], ptr %i.axj, i64 %i.aov ; 3 uses
  %.val326.us.i = load <4 x float>, ptr %i.axm, align 16, !tbaa !334
  %i.axn = getelementptr inbounds [4 x i8], ptr %i.axj, i64 %i.aox ; 3 uses
  %.val325.us.i = load <4 x float>, ptr %i.axn, align 16, !tbaa !334
  %i.axo = getelementptr inbounds nuw i8, ptr %i.axj, i64 16 ; 2 uses
  %.val324.us.i = load <4 x float>, ptr %i.axo, align 16, !tbaa !334
  %i.axp = getelementptr inbounds nuw i8, ptr %i.axk, i64 16 ; 2 uses
  %.val323.us.i = load <4 x float>, ptr %i.axp, align 16, !tbaa !334
  %i.axq = getelementptr inbounds nuw i8, ptr %i.axl, i64 16 ; 2 uses
  %.val322.us.i = load <4 x float>, ptr %i.axq, align 16, !tbaa !334
  %i.axr = getelementptr inbounds nuw i8, ptr %i.axm, i64 16 ; 2 uses
  %.val321.us.i = load <4 x float>, ptr %i.axr, align 16, !tbaa !334
  %i.axs = getelementptr inbounds nuw i8, ptr %i.axn, i64 16 ; 2 uses
  %.val.us.i = load <4 x float>, ptr %i.axs, align 16, !tbaa !334
  %i.axt = call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.awr, <4 x float> %i.avi, <4 x float> %.val329.us.i)
  %i.axu = call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.awr, <4 x float> %i.avm, <4 x float> %.val328.us.i)
  %i.axv = call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.awr, <4 x float> %i.avq, <4 x float> %.val327.us.i)
  %i.axw = call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.awr, <4 x float> %i.avu, <4 x float> %.val326.us.i)
  %i.axx = call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.awr, <4 x float> %i.avy, <4 x float> %.val325.us.i)
  %i.axy = call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.aws, <4 x float> %i.avi, <4 x float> %.val324.us.i)
  %i.axz = call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.aws, <4 x float> %i.avm, <4 x float> %.val323.us.i)
  %i.aya = call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.aws, <4 x float> %i.avq, <4 x float> %.val322.us.i)
  %i.ayb = call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.aws, <4 x float> %i.avu, <4 x float> %.val321.us.i)
  %i.ayc = call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.aws, <4 x float> %i.avy, <4 x float> %.val.us.i)
  store <4 x float> %i.axt, ptr %i.axj, align 16, !tbaa !334
  store <4 x float> %i.axu, ptr %i.axk, align 16, !tbaa !334
  store <4 x float> %i.axv, ptr %i.axl, align 16, !tbaa !334
  store <4 x float> %i.axw, ptr %i.axm, align 16, !tbaa !334
  store <4 x float> %i.axx, ptr %i.axn, align 16, !tbaa !334
  store <4 x float> %i.axy, ptr %i.axo, align 16, !tbaa !334
  store <4 x float> %i.axz, ptr %i.axp, align 16, !tbaa !334
  store <4 x float> %i.aya, ptr %i.axq, align 16, !tbaa !334
  store <4 x float> %i.ayb, ptr %i.axr, align 16, !tbaa !334
  store <4 x float> %i.ayc, ptr %i.axs, align 16, !tbaa !334
  %i.ayd = load float, ptr %i.awt, align 4, !tbaa !134
  %i.aye = fmul float %i.aus, %i.ayd
  %i.ayf = insertelement <4 x float> poison, float %i.aye, i64 0
  %i.ayg = shufflevector <4 x float> %i.ayf, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ayh = fmul <4 x float> %i.awh, %i.ayg        ; 5 uses
  %i.ayi = fmul <4 x float> %i.awl, %i.ayg        ; 5 uses
  %i.ayj = extractelement <4 x i32> %i.axg, i64 1
  %i.ayk = sext i32 %i.ayj to i64
  %i.ayl = getelementptr inbounds [4 x i8], ptr %i.aoc, i64 %i.ayk ; 7 uses
  %.val329.us.1.i = load <4 x float>, ptr %i.ayl, align 16, !tbaa !334
  %i.aym = getelementptr inbounds [4 x i8], ptr %i.ayl, i64 %i.aor ; 3 uses
  %.val328.us.1.i = load <4 x float>, ptr %i.aym, align 16, !tbaa !334
  %i.ayn = getelementptr inbounds [4 x i8], ptr %i.ayl, i64 %i.aot ; 3 uses
  %.val327.us.1.i = load <4 x float>, ptr %i.ayn, align 16, !tbaa !334
  %i.ayo = getelementptr inbounds [4 x i8], ptr %i.ayl, i64 %i.aov ; 3 uses
  %.val326.us.1.i = load <4 x float>, ptr %i.ayo, align 16, !tbaa !334
  %i.ayp = getelementptr inbounds [4 x i8], ptr %i.ayl, i64 %i.aox ; 3 uses
  %.val325.us.1.i = load <4 x float>, ptr %i.ayp, align 16, !tbaa !334
  %i.ayq = getelementptr inbounds nuw i8, ptr %i.ayl, i64 16 ; 2 uses
  %.val324.us.1.i = load <4 x float>, ptr %i.ayq, align 16, !tbaa !334
  %i.ayr = getelementptr inbounds nuw i8, ptr %i.aym, i64 16 ; 2 uses
  %.val323.us.1.i = load <4 x float>, ptr %i.ayr, align 16, !tbaa !334
  %i.ays = getelementptr inbounds nuw i8, ptr %i.ayn, i64 16 ; 2 uses
  %.val322.us.1.i = load <4 x float>, ptr %i.ays, align 16, !tbaa !334
  %i.ayt = getelementptr inbounds nuw i8, ptr %i.ayo, i64 16 ; 2 uses
  %.val321.us.1.i = load <4 x float>, ptr %i.ayt, align 16, !tbaa !334
  %i.ayu = getelementptr inbounds nuw i8, ptr %i.ayp, i64 16 ; 2 uses
  %.val.us.1.i = load <4 x float>, ptr %i.ayu, align 16, !tbaa !334
  %i.ayv = call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.ayh, <4 x float> %i.avi, <4 x float> %.val329.us.1.i)
  %i.ayw = call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.ayh, <4 x float> %i.avm, <4 x float> %.val328.us.1.i)
  %i.ayx = call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.ayh, <4 x float> %i.avq, <4 x float> %.val327.us.1.i)
  %i.ayy = call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.ayh, <4 x float> %i.avu, <4 x float> %.val326.us.1.i)
  %i.ayz = call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.ayh, <4 x float> %i.avy, <4 x float> %.val325.us.1.i)
  %i.aza = call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.ayi, <4 x float> %i.avi, <4 x float> %.val324.us.1.i)
  %i.azb = call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.ayi, <4 x float> %i.avm, <4 x float> %.val323.us.1.i)
  %i.azc = call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.ayi, <4 x float> %i.avq, <4 x float> %.val322.us.1.i)
  %i.azd = call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.ayi, <4 x float> %i.avu, <4 x float> %.val321.us.1.i)
  %i.aze = call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.ayi, <4 x float> %i.avy, <4 x float> %.val.us.1.i)
  store <4 x float> %i.ayv, ptr %i.ayl, align 16, !tbaa !334
  store <4 x float> %i.ayw, ptr %i.aym, align 16, !tbaa !334
  store <4 x float> %i.ayx, ptr %i.ayn, align 16, !tbaa !334
  store <4 x float> %i.ayy, ptr %i.ayo, align 16, !tbaa !334
  store <4 x float> %i.ayz, ptr %i.ayp, align 16, !tbaa !334
  store <4 x float> %i.aza, ptr %i.ayq, align 16, !tbaa !334
  store <4 x float> %i.azb, ptr %i.ayr, align 16, !tbaa !334
  store <4 x float> %i.azc, ptr %i.ays, align 16, !tbaa !334
  store <4 x float> %i.azd, ptr %i.ayt, align 16, !tbaa !334
  store <4 x float> %i.aze, ptr %i.ayu, align 16, !tbaa !334
  %i.azf = load float, ptr %i.awu, align 4, !tbaa !134
  %i.azg = fmul float %i.aus, %i.azf
  %i.azh = insertelement <4 x float> poison, float %i.azg, i64 0
  %i.azi = shufflevector <4 x float> %i.azh, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.azj = fmul <4 x float> %i.awh, %i.azi        ; 5 uses
  %i.azk = fmul <4 x float> %i.awl, %i.azi        ; 5 uses
  %i.azl = extractelement <4 x i32> %i.axg, i64 2
end_hunk_0
