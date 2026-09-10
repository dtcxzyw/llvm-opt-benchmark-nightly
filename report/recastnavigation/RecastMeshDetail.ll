Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/RecastMeshDetail?download=true
inline.NumInlined: 290
inline.NumDeleted: 78
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_Z21rcBuildPolyMeshDetailP9rcContextRK10rcPolyMeshRK20rcCompactHeightfieldffR16rcPolyMeshDetail:bb.a
vector.memcheck:                                  ; preds = %.lr.ph569.preheader
  %i.cic = mul nuw nsw i64 %wide.trip.count663, 12
  %scevgep = getelementptr i8, ptr %i.av, i64 %i.cic
  %bound1 = icmp ult ptr %i.x, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph569.preheader1134, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count663, 4294967292 ; 3 uses
  %i.cid = load float, ptr %i.x, align 8, !tbaa !62, !alias.scope !146
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.cid, i64 0
  %i.cie = load float, ptr %i.fd, align 4, !tbaa !62, !alias.scope !146
  %broadcast.splatinsert960 = insertelement <4 x float> poison, float %i.cie, i64 0
  %i.cif = load float, ptr %i.fe, align 8, !tbaa !62, !alias.scope !146
  %broadcast.splatinsert962 = insertelement <4 x float> poison, float %i.cif, i64 0
  %broadcast.splat963 = shufflevector <4 x float> %broadcast.splatinsert962, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cig = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> %broadcast.splatinsert960, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.cih = mul nuw nsw i64 %index, 12
  %i.cii = mul nuw i64 %index, 12
  %i.cij = mul nuw i64 %index, 12
  %i.cik = mul nuw i64 %index, 12
  %i.cil = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.cih ; 4 uses
  %i.cim = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.cii ; 3 uses
  %i.cin = getelementptr inbounds nuw i8, ptr %i.cim, i64 12
  %i.cio = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.cij ; 3 uses
  %i.cip = getelementptr inbounds nuw i8, ptr %i.cio, i64 24
  %i.ciq = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.cik ; 3 uses
  %i.cir = getelementptr inbounds nuw i8, ptr %i.ciq, i64 36
  %i.cis = load float, ptr %i.cil, align 4, !tbaa !62, !alias.scope !147, !noalias !146
  %i.cit = load float, ptr %i.cin, align 4, !tbaa !62, !alias.scope !147, !noalias !146
  %i.ciu = load float, ptr %i.cip, align 4, !tbaa !62, !alias.scope !147, !noalias !146
  %i.civ = load float, ptr %i.cir, align 4, !tbaa !62, !alias.scope !147, !noalias !146
  %i.ciw = insertelement <4 x float> poison, float %i.cis, i64 0
  %i.cix = insertelement <4 x float> %i.ciw, float %i.cit, i64 1
  %i.ciy = insertelement <4 x float> %i.cix, float %i.ciu, i64 2
  %i.ciz = insertelement <4 x float> %i.ciy, float %i.civ, i64 3
  %i.cja = getelementptr inbounds nuw i8, ptr %i.cil, i64 4
  %i.cjb = getelementptr inbounds nuw i8, ptr %i.cim, i64 16
  %i.cjc = getelementptr inbounds nuw i8, ptr %i.cio, i64 28
  %i.cjd = getelementptr inbounds nuw i8, ptr %i.ciq, i64 40
  %i.cje = load float, ptr %i.cja, align 4, !tbaa !62, !alias.scope !147, !noalias !146
  %i.cjf = load float, ptr %i.cjb, align 4, !tbaa !62, !alias.scope !147, !noalias !146
  %i.cjg = load float, ptr %i.cjc, align 4, !tbaa !62, !alias.scope !147, !noalias !146
  %i.cjh = load float, ptr %i.cjd, align 4, !tbaa !62, !alias.scope !147, !noalias !146
  %i.cji = insertelement <4 x float> poison, float %i.cje, i64 0
  %i.cjj = insertelement <4 x float> %i.cji, float %i.cjf, i64 1
  %i.cjk = insertelement <4 x float> %i.cjj, float %i.cjg, i64 2
  %i.cjl = insertelement <4 x float> %i.cjk, float %i.cjh, i64 3
  %i.cjm = getelementptr inbounds nuw i8, ptr %i.cil, i64 8
  %i.cjn = getelementptr inbounds nuw i8, ptr %i.cim, i64 20
  %i.cjo = getelementptr inbounds nuw i8, ptr %i.cio, i64 32
  %i.cjp = getelementptr inbounds nuw i8, ptr %i.ciq, i64 44
  %i.cjq = load float, ptr %i.cjm, align 4, !tbaa !62, !alias.scope !147, !noalias !146
  %i.cjr = load float, ptr %i.cjn, align 4, !tbaa !62, !alias.scope !147, !noalias !146
  %i.cjs = load float, ptr %i.cjo, align 4, !tbaa !62, !alias.scope !147, !noalias !146
  %i.cjt = load float, ptr %i.cjp, align 4, !tbaa !62, !alias.scope !147, !noalias !146
  %i.cju = insertelement <4 x float> poison, float %i.cjq, i64 0
  %i.cjv = insertelement <4 x float> %i.cju, float %i.cjr, i64 1
  %i.cjw = insertelement <4 x float> %i.cjv, float %i.cjs, i64 2
  %i.cjx = insertelement <4 x float> %i.cjw, float %i.cjt, i64 3
  %i.cjy = fadd <4 x float> %broadcast.splat963, %i.cjx
  %i.cjz = shufflevector <4 x float> %i.ciz, <4 x float> %i.cjl, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cka = fadd <8 x float> %i.cig, %i.cjz
  %i.ckb = shufflevector <4 x float> %i.cjy, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <8 x float> %i.cka, <8 x float> %i.ckb, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x float> %interleaved.vec, ptr %i.cil, align 4, !tbaa !62, !alias.scope !147, !noalias !146
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ckc = icmp eq i64 %index.next, %n.vec
  br i1 %i.ckc, label %middle.block, label %vector.body, !llvm.loop !114

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count663
  br i1 %cmp.n, label %._crit_edge570, label %.lr.ph569.preheader1134

.lr.ph569.preheader1134:                          ; preds = %vector.memcheck, %.lr.ph569.preheader, %middle.block
  %indvars.iv659.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph569.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph569

scalar.ph964:                                     ; preds = %scalar.ph964.preheader, %scalar.ph964
  %indvars.iv653 = phi i64 [ %indvars.iv.next654, %scalar.ph964 ], [ %indvars.iv653.ph, %scalar.ph964.preheader ] ; 2 uses
  %.idx868 = mul nuw nsw i64 %indvars.iv653, 12
  %i.ckd = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx868 ; 3 uses
  %i.cke = load <2 x float>, ptr %i.ckd, align 4, !tbaa !62
  %i.ckf = fadd <2 x float> %i.cib, %i.cke
  store <2 x float> %i.ckf, ptr %i.ckd, align 4, !tbaa !62
  %i.ckg = getelementptr inbounds nuw i8, ptr %i.ckd, i64 8 ; 2 uses
  %i.ckh = load float, ptr %i.ckg, align 4, !tbaa !62
  %i.cki = fadd float %i.cgc, %i.ckh
  store float %i.cki, ptr %i.ckg, align 4, !tbaa !62
  %indvars.iv.next654 = add nuw nsw i64 %indvars.iv653, 1 ; 2 uses
  %exitcond658.not = icmp eq i64 %indvars.iv.next654, %wide.trip.count657
  br i1 %exitcond658.not, label %.preheader505, label %scalar.ph964, !llvm.loop !115

._crit_edge570:                                   ; preds = %.lr.ph569, %middle.block, %.preheader505
  %i.ckj = load i64, ptr %6, align 8, !tbaa !67
  %i.ckk = trunc i64 %i.ckj to i32                ; 2 uses
  %i.ckl = sdiv i32 %i.ckk, 4                     ; 3 uses
  %i.ckm = load i32, ptr %i.dq, align 4, !tbaa !72
  %i.ckn = load ptr, ptr %5, align 8, !tbaa !74   ; 4 uses
  %i.cko = getelementptr inbounds nuw [4 x i8], ptr %i.ckn, i64 %i.gf
  store i32 %i.ckm, ptr %i.cko, align 4, !tbaa !68
  %i.ckp = getelementptr inbounds nuw [4 x i8], ptr %i.ckn, i64 %i.gl
  store i32 %.6, ptr %i.ckp, align 4, !tbaa !68
  %i.ckq = load i32, ptr %i.dr, align 8, !tbaa !73
  %i.ckr = getelementptr inbounds nuw [4 x i8], ptr %i.ckn, i64 %i.gi
  store i32 %i.ckq, ptr %i.ckr, align 4, !tbaa !68
  %i.cks = getelementptr inbounds nuw [4 x i8], ptr %i.ckn, i64 %i.gp
  store i32 %i.ckl, ptr %i.cks, align 4, !tbaa !68
  %i.ckt = load i32, ptr %i.dq, align 4, !tbaa !72
  %i.cku = add nsw i32 %i.ckt, %.6                ; 2 uses
  %i.ckv = icmp sgt i32 %i.cku, %.0261585
  br i1 %i.ckv, label %.preheader504.preheader, label %bb.hn

.preheader504.preheader:                          ; preds = %._crit_edge570
  %i.ckw = add i32 %i.cku, 255
  %i.ckx = sub i32 %i.ckw, %.0261585
  %i.cky = and i32 %i.ckx, -256
  %i.ckz = add i32 %.0261585, %i.cky              ; 3 uses
  %i.cla = sext i32 %i.ckz to i64
  %i.clb = mul nsw i64 %i.cla, 12
  %i.clc = call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef %i.clb, i32 noundef 0) #7 ; 3 uses
  %.not287.not = icmp eq ptr %i.clc, null
  br i1 %.not287.not, label %.thread, label %bb.hk

.lr.ph569:                                        ; preds = %.lr.ph569.preheader1134, %.lr.ph569
  %indvars.iv659 = phi i64 [ %indvars.iv.next660, %.lr.ph569 ], [ %indvars.iv659.ph, %.lr.ph569.preheader1134 ] ; 2 uses
  %i.cld = load float, ptr %i.x, align 8, !tbaa !62
  %.idx869 = mul nuw nsw i64 %indvars.iv659, 12
  %i.cle = getelementptr inbounds nuw i8, ptr %i.av, i64 %.idx869 ; 4 uses
  %i.clf = load float, ptr %i.cle, align 4, !tbaa !62
  %i.clg = fadd float %i.cld, %i.clf
  store float %i.clg, ptr %i.cle, align 4, !tbaa !62
  %i.clh = load float, ptr %i.fd, align 4, !tbaa !62
  %i.cli = getelementptr inbounds nuw i8, ptr %i.cle, i64 4 ; 2 uses
  %i.clj = load float, ptr %i.cli, align 4, !tbaa !62
  %i.clk = fadd float %i.clh, %i.clj
  store float %i.clk, ptr %i.cli, align 4, !tbaa !62
  %i.cll = load float, ptr %i.fe, align 8, !tbaa !62
  %i.clm = getelementptr inbounds nuw i8, ptr %i.cle, i64 8 ; 2 uses
  %i.cln = load float, ptr %i.clm, align 4, !tbaa !62
  %i.clo = fadd float %i.cll, %i.cln
  store float %i.clo, ptr %i.clm, align 4, !tbaa !62
  %indvars.iv.next660 = add nuw nsw i64 %indvars.iv659, 1 ; 2 uses
  %exitcond664.not = icmp eq i64 %indvars.iv.next660, %wide.trip.count663
  br i1 %exitcond664.not, label %._crit_edge570, label %.lr.ph569, !llvm.loop !116

.thread:                                          ; preds = %.preheader504.preheader
  %i.clp = mul nsw i32 %i.ckz, 3
  call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 3, ptr noundef nonnull @.str.6, i32 noundef %i.clp) #7
  br label %.critedge

bb.hk:                                            ; preds = %.preheader504.preheader
  %i.clq = load i32, ptr %i.dq, align 4, !tbaa !72 ; 2 uses
  %.not288 = icmp eq i32 %i.clq, 0
  br i1 %.not288, label %bb.hm, label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  %i.clr = load ptr, ptr %i.ec, align 8, !tbaa !75
  %i.cls = sext i32 %i.clq to i64
  %i.clt = mul nsw i64 %i.cls, 12
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.clc, ptr align 4 %i.clr, i64 %i.clt, i1 false)
  br label %bb.hm

bb.hm:                                            ; preds = %bb.hk, %bb.hl
  %i.clu = load ptr, ptr %i.ec, align 8, !tbaa !75
  call void @_Z6rcFreePv(ptr noundef %i.clu) #7
  store ptr %i.clc, ptr %i.ec, align 8, !tbaa !75
  br label %bb.hn

bb.hn:                                            ; preds = %bb.hm, %._crit_edge570
  %.2263 = phi i32 [ %i.ckz, %bb.hm ], [ %.0261585, %._crit_edge570 ]
  br i1 %i.cfx, label %.lr.ph573, label %bb.ho

.lr.ph573:                                        ; preds = %bb.hn
  %i.clv = load ptr, ptr %i.ec, align 8, !tbaa !75 ; 3 uses
  %.promoted = load i32, ptr %i.dq, align 4, !tbaa !72
  %i.clw = sext i32 %.promoted to i64             ; 2 uses
  %wide.trip.count674 = zext nneg i32 %.6 to i64  ; 2 uses
  %xtraiter1217 = and i64 %wide.trip.count674, 1
  %i.clx = icmp eq i32 %.6, 1
  br i1 %i.clx, label %.epil.preheader, label %.lr.ph573.new

.lr.ph573.new:                                    ; preds = %.lr.ph573
  %unroll_iter1222 = and i64 %wide.trip.count674, 2147483646
  br label %bb.hp

._crit_edge574.unr-lcssa:                         ; preds = %bb.hp
  %lcmp.mod1219.not = icmp eq i64 %xtraiter1217, 0
  br i1 %lcmp.mod1219.not, label %._crit_edge574, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge574.unr-lcssa, %.lr.ph573
  %indvars.iv668.epil.init = phi i64 [ 0, %.lr.ph573 ], [ %indvars.iv.next669.1, %._crit_edge574.unr-lcssa ]
  %indvars.iv666.epil.init = phi i64 [ %i.clw, %.lr.ph573 ], [ %indvars.iv.next667.1, %._crit_edge574.unr-lcssa ] ; 2 uses
  %lcmp.mod1221 = trunc i32 %.6 to i1
  call void @llvm.assume(i1 %lcmp.mod1221)
  %.idx870.epil = mul nuw nsw i64 %indvars.iv668.epil.init, 12
  %i.cly = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx870.epil ; 2 uses
  %.idx871.epil = mul nsw i64 %indvars.iv666.epil.init, 12
  %i.clz = getelementptr inbounds i8, ptr %i.clv, i64 %.idx871.epil ; 2 uses
  %8 = load <2 x float>, ptr %i.cly, align 4, !tbaa !62
  store <2 x float> %8, ptr %i.clz, align 4, !tbaa !62
  %i.cma = getelementptr inbounds nuw i8, ptr %i.cly, i64 8
  %i.cmb = load float, ptr %i.cma, align 4, !tbaa !62
  %i.cmc = getelementptr i8, ptr %i.clz, i64 8
  store float %i.cmb, ptr %i.cmc, align 4, !tbaa !62
  %indvars.iv.next667.epil = add nsw i64 %indvars.iv666.epil.init, 1
  br label %._crit_edge574

._crit_edge574:                                   ; preds = %._crit_edge574.unr-lcssa, %.epil.preheader
  %indvars.iv.next667.lcssa = phi i64 [ %indvars.iv.next667.1, %._crit_edge574.unr-lcssa ], [ %indvars.iv.next667.epil, %.epil.preheader ]
  %i.cmd = trunc nsw i64 %indvars.iv.next667.lcssa to i32
  store i32 %i.cmd, ptr %i.dq, align 4, !tbaa !72
  br label %bb.ho

bb.ho:                                            ; preds = %._crit_edge574, %bb.hn
  %i.cme = load i32, ptr %i.dr, align 8, !tbaa !73
  %i.cmf = add nsw i32 %i.cme, %i.ckl             ; 2 uses
  %i.cmg = icmp sgt i32 %i.cmf, %.0256586
  br i1 %i.cmg, label %.preheader.preheader, label %bb.ht

.preheader.preheader:                             ; preds = %bb.ho
  %i.cmh = add i32 %i.cmf, 255
  %i.cmi = sub i32 %i.cmh, %.0256586
  %i.cmj = and i32 %i.cmi, -256
  %i.cmk = add i32 %.0256586, %i.cmj              ; 3 uses
  %i.cml = sext i32 %i.cmk to i64
  %i.cmm = shl nsw i64 %i.cml, 2
  %i.cmn = call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef %i.cmm, i32 noundef 0) #7 ; 3 uses
  %.not289.not = icmp eq ptr %i.cmn, null
  br i1 %.not289.not, label %.thread487, label %bb.hq

bb.hp:                                            ; preds = %bb.hp, %.lr.ph573.new
  %indvars.iv668 = phi i64 [ 0, %.lr.ph573.new ], [ %indvars.iv.next669.1, %bb.hp ] ; 3 uses
  %indvars.iv666 = phi i64 [ %i.clw, %.lr.ph573.new ], [ %indvars.iv.next667.1, %bb.hp ] ; 3 uses
  %niter1223 = phi i64 [ 0, %.lr.ph573.new ], [ %niter1223.next.1, %bb.hp ]
  %.idx870 = mul nuw nsw i64 %indvars.iv668, 12
  %i.cmo = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx870 ; 2 uses
  %.idx871 = mul nsw i64 %indvars.iv666, 12
  %i.cmp = getelementptr inbounds i8, ptr %i.clv, i64 %.idx871 ; 2 uses
  %9 = load <2 x float>, ptr %i.cmo, align 8, !tbaa !62
  store <2 x float> %9, ptr %i.cmp, align 4, !tbaa !62
  %i.cmq = getelementptr inbounds nuw i8, ptr %i.cmo, i64 8
  %i.cmr = load float, ptr %i.cmq, align 8, !tbaa !62
  %i.cms = getelementptr i8, ptr %i.cmp, i64 8
  store float %i.cmr, ptr %i.cms, align 4, !tbaa !62
  %i.cmt = mul nuw i64 %indvars.iv668, 12
  %i.cmu = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.cmt ; 2 uses
  %i.cmv = getelementptr inbounds nuw i8, ptr %i.cmu, i64 12
  %i.cmw = mul i64 %indvars.iv666, 12
  %i.cmx = getelementptr i8, ptr %i.clv, i64 %i.cmw ; 2 uses
  %i.cmy = getelementptr i8, ptr %i.cmx, i64 12
  %10 = load <2 x float>, ptr %i.cmv, align 4, !tbaa !62
  store <2 x float> %10, ptr %i.cmy, align 4, !tbaa !62
  %i.cmz = getelementptr inbounds nuw i8, ptr %i.cmu, i64 20
  %i.cna = load float, ptr %i.cmz, align 4, !tbaa !62
  %i.cnb = getelementptr i8, ptr %i.cmx, i64 20
  store float %i.cna, ptr %i.cnb, align 4, !tbaa !62
  %indvars.iv.next667.1 = add nsw i64 %indvars.iv666, 2 ; 3 uses
  %indvars.iv.next669.1 = add nuw nsw i64 %indvars.iv668, 2 ; 2 uses
  %niter1223.next.1 = add i64 %niter1223, 2       ; 2 uses
  %niter1223.ncmp.1 = icmp eq i64 %niter1223.next.1, %unroll_iter1222
  br i1 %niter1223.ncmp.1, label %._crit_edge574.unr-lcssa, label %bb.hp

.thread487:                                       ; preds = %.preheader.preheader
  %i.cnc = shl nsw i32 %i.cmk, 2
  call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 3, ptr noundef nonnull @.str.7, i32 noundef %i.cnc) #7
  br label %.critedge

bb.hq:                                            ; preds = %.preheader.preheader
  %i.cnd = load i32, ptr %i.dr, align 8, !tbaa !73 ; 2 uses
  %.not290 = icmp eq i32 %i.cnd, 0
  br i1 %.not290, label %bb.hs, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  %i.cne = load ptr, ptr %i.ei, align 8, !tbaa !76
  %i.cnf = sext i32 %i.cnd to i64
  %i.cng = shl nsw i64 %i.cnf, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cmn, ptr align 1 %i.cne, i64 %i.cng, i1 false)
  br label %bb.hs

bb.hs:                                            ; preds = %bb.hq, %bb.hr
  %i.cnh = load ptr, ptr %i.ei, align 8, !tbaa !76
  call void @_Z6rcFreePv(ptr noundef %i.cnh) #7
  store ptr %i.cmn, ptr %i.ei, align 8, !tbaa !76
  br label %bb.ht

bb.ht:                                            ; preds = %bb.hs, %bb.ho
  %.2258 = phi i32 [ %i.cmk, %bb.hs ], [ %.0256586, %bb.ho ]
  %i.cni = icmp sgt i32 %i.ckk, 3
  br i1 %i.cni, label %.lr.ph578.preheader, label %._crit_edge579

.lr.ph578.preheader:                              ; preds = %bb.ht
  %wide.trip.count681 = zext nneg i32 %i.ckl to i64
  %.pre689 = load i32, ptr %i.dr, align 8, !tbaa !73
  br label %.lr.ph578

.lr.ph578:                                        ; preds = %.lr.ph578.preheader, %.lr.ph578
  %i.cnj = phi i32 [ %.pre689, %.lr.ph578.preheader ], [ %i.cou, %.lr.ph578 ]
  %indvars.iv677 = phi i64 [ 0, %.lr.ph578.preheader ], [ %indvars.iv.next678, %.lr.ph578 ] ; 2 uses
  %i.cnk = load ptr, ptr %i.ah, align 8, !tbaa !66
  %.idx872 = shl nuw nsw i64 %indvars.iv677, 4
  %i.cnl = getelementptr inbounds nuw i8, ptr %i.cnk, i64 %.idx872 ; 4 uses
  %i.cnm = load i32, ptr %i.cnl, align 4, !tbaa !68
  %i.cnn = trunc i32 %i.cnm to i8
  %i.cno = load ptr, ptr %i.ei, align 8, !tbaa !76
  %i.cnp = shl nsw i32 %i.cnj, 2
  %i.cnq = sext i32 %i.cnp to i64
  %i.cnr = getelementptr inbounds i8, ptr %i.cno, i64 %i.cnq
  store i8 %i.cnn, ptr %i.cnr, align 1, !tbaa !80
  %i.cns = getelementptr inbounds nuw i8, ptr %i.cnl, i64 4
  %i.cnt = load i32, ptr %i.cns, align 4, !tbaa !68
  %i.cnu = trunc i32 %i.cnt to i8
  %i.cnv = load ptr, ptr %i.ei, align 8, !tbaa !76
  %i.cnw = load i32, ptr %i.dr, align 8, !tbaa !73
  %i.cnx = shl nsw i32 %i.cnw, 2
  %i.cny = sext i32 %i.cnx to i64
  %i.cnz = getelementptr i8, ptr %i.cnv, i64 %i.cny
  %i.coa = getelementptr i8, ptr %i.cnz, i64 1
  store i8 %i.cnu, ptr %i.coa, align 1, !tbaa !80
  %i.cob = getelementptr inbounds nuw i8, ptr %i.cnl, i64 8
  %i.coc = load i32, ptr %i.cob, align 4, !tbaa !68
  %i.cod = trunc i32 %i.coc to i8
  %i.coe = load ptr, ptr %i.ei, align 8, !tbaa !76
  %i.cof = load i32, ptr %i.dr, align 8, !tbaa !73
  %i.cog = shl nsw i32 %i.cof, 2
  %i.coh = sext i32 %i.cog to i64
  %i.coi = getelementptr i8, ptr %i.coe, i64 %i.coh
  %i.coj = getelementptr i8, ptr %i.coi, i64 2
  store i8 %i.cod, ptr %i.coj, align 1, !tbaa !80
  %i.cok = getelementptr inbounds nuw i8, ptr %i.cnl, i64 12
  %i.col = load i32, ptr %i.cok, align 4, !tbaa !68
  %i.com = trunc i32 %i.col to i8
  %i.con = load ptr, ptr %i.ei, align 8, !tbaa !76
  %i.coo = load i32, ptr %i.dr, align 8, !tbaa !73
  %i.cop = shl nsw i32 %i.coo, 2
  %i.coq = sext i32 %i.cop to i64
  %i.cor = getelementptr i8, ptr %i.con, i64 %i.coq
  %i.cos = getelementptr i8, ptr %i.cor, i64 3
  store i8 %i.com, ptr %i.cos, align 1, !tbaa !80
  %i.cot = load i32, ptr %i.dr, align 8, !tbaa !73
  %i.cou = add nsw i32 %i.cot, 1                  ; 2 uses
  store i32 %i.cou, ptr %i.dr, align 8, !tbaa !73
  %indvars.iv.next678 = add nuw nsw i64 %indvars.iv677, 1 ; 2 uses
  %exitcond682.not = icmp eq i64 %indvars.iv.next678, %wide.trip.count681
  br i1 %exitcond682.not, label %._crit_edge579, label %.lr.ph578

._crit_edge579:                                   ; preds = %.lr.ph578, %bb.ht
  %indvars.iv.next684 = add nuw nsw i64 %indvars.iv683, 1 ; 2 uses
  %i.cov = load i32, ptr %i.q, align 4, !tbaa !120
  %i.cow = sext i32 %i.cov to i64
  %.not291.not = icmp slt i64 %indvars.iv.next684, %i.cow
  br i1 %.not291.not, label %bb.r, label %.critedge

.critedge:                                        ; preds = %._crit_edge579, %.preheader509, %.thread487, %.thread, %bb.o, %bb.q, %bb.m, %bb.k, %bb.f
  %.sroa.14472.2 = phi ptr [ %i.af, %bb.f ], [ %i.af, %bb.k ], [ %i.af, %bb.m ], [ %i.af, %bb.o ], [ %i.af, %bb.q ], [ %.sroa.14472.9, %.thread ], [ %.sroa.14472.9, %.thread487 ], [ %i.af, %.preheader509 ], [ %.sroa.14472.9, %._crit_edge579 ]
  %.sroa.32.2 = phi ptr [ %i.am, %bb.f ], [ %i.am, %bb.k ], [ %i.am, %bb.m ], [ %i.am, %bb.o ], [ %i.am, %bb.q ], [ %.sroa.32.12, %.thread ], [ %.sroa.32.12, %.thread487 ], [ %i.am, %.preheader509 ], [ %.sroa.32.12, %._crit_edge579 ]
  %.sroa.0389.0 = phi ptr [ null, %bb.f ], [ null, %bb.k ], [ %i.bi, %bb.m ], [ %i.bi, %bb.o ], [ %i.bi, %bb.q ], [ %i.bi, %.thread ], [ %i.bi, %.thread487 ], [ %i.bi, %.preheader509 ], [ %i.bi, %._crit_edge579 ]
  %.9 = phi i1 [ false, %bb.f ], [ false, %bb.k ], [ false, %bb.m ], [ false, %bb.o ], [ false, %bb.q ], [ false, %.thread ], [ false, %.thread487 ], [ true, %.preheader509 ], [ true, %._crit_edge579 ]
  call void @_Z6rcFreePv(ptr noundef %i.av) #7
  br label %bb.hu

bb.hu:                                            ; preds = %.critedge, %bb.d
  %.sroa.14472.3 = phi ptr [ %i.af, %bb.d ], [ %.sroa.14472.2, %.critedge ]
  %.sroa.32.3 = phi ptr [ %i.am, %bb.d ], [ %.sroa.32.2, %.critedge ]
  %.sroa.0389.1 = phi ptr [ null, %bb.d ], [ %.sroa.0389.0, %.critedge ]
  %.10 = phi i1 [ false, %bb.d ], [ %.9, %.critedge ]
  call void @_Z6rcFreePv(ptr noundef %i.aq) #7
  call void @_Z6rcFreePv(ptr noundef %.sroa.0389.1) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #7
  call void @_Z6rcFreePv(ptr noundef %.sroa.32.3) #7
  %i.cox = load ptr, ptr %i.ak, align 8, !tbaa !66
  call void @_Z6rcFreePv(ptr noundef %i.cox) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #7
  %i.coy = load ptr, ptr %i.ah, align 8, !tbaa !66
  call void @_Z6rcFreePv(ptr noundef %i.coy) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #7
  call void @_Z6rcFreePv(ptr noundef %.sroa.14472.3) #7
  br label %bb.hv

bb.hv:                                            ; preds = %_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit, %bb.c, %bb.hu
  %.11 = phi i1 [ %.10, %bb.hu ], [ true, %bb.c ], [ true, %_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit ]
  %i.coz = load i8, ptr %i.h, align 1, !tbaa !17, !range !18, !noundef !19
  %i.cpa = trunc nuw i8 %i.coz to i1
  br i1 %i.cpa, label %bb.hw, label %_ZN13rcScopedTimerD2Ev.exit

bb.hw:                                            ; preds = %bb.hv
  %i.cpb = load ptr, ptr %0, align 8, !tbaa !21
  %i.cpc = getelementptr inbounds nuw i8, ptr %i.cpb, i64 48
  %i.cpd = load ptr, ptr %i.cpc, align 8
  call void %i.cpd(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 26) #7, !call_target !81, !inline_history !3
  br label %_ZN13rcScopedTimerD2Ev.exit

_ZN13rcScopedTimerD2Ev.exit:                      ; preds = %bb.hv, %bb.hw
  ret i1 %.11
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #2

declare noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10), i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @_Z6rcFreePv(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @_Z22rcMergePolyMeshDetailsP9rcContextPP16rcPolyMeshDetailiRS1_(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(36) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !17, !range !18, !noundef !19
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !21
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 27) #7, !call_target !27, !inline_history !2
  br label %_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit

_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit: ; preds = %bb.a, %bb.b
  %i.g = icmp sgt i32 %2, 0                       ; 2 uses
  br i1 %i.g, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit
  %wide.trip.count = zext nneg i32 %2 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.h = icmp eq i32 %2, 1
  br i1 %i.h, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %.093106.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %.194.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init = phi <2 x i32> [ zeroinitializer, %.lr.ph.preheader ], [ %i.ap, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod143 = trunc i32 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod143)
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.epil.init
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !149  ; 3 uses
  %.not101.epil = icmp eq ptr %i.j, null
end_hunk_0
