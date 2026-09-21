Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/CGStmt?download=true
inline.NumInlined: 6272
inline.NumDeleted: 3588
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN5clang18AsmConstraintsInfo23HandleOutputConstraintsEv:bb.a
  br i1 %.not.i17.i.i161, label %_ZNSt6vectorIPN4llvm4TypeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i162, label %bb.bj

bb.bj:                                            ; preds = %_ZNSt6vectorIPN4llvm4TypeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i160
  %i.pn = load ptr, ptr %i.bm, align 8, !tbaa !1316
  %i.po = ptrtoint ptr %i.pn to i64
  %i.pp = sub i64 %i.po, %i.pa
  call void @_ZdlPvm(ptr noundef nonnull %i.oy, i64 noundef %i.pp) #21
  br label %_ZNSt6vectorIPN4llvm4TypeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i162

_ZNSt6vectorIPN4llvm4TypeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i162: ; preds = %bb.bj, %_ZNSt6vectorIPN4llvm4TypeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i160
  store ptr %i.pj, ptr %i.bk, align 8, !tbaa !1293
  store ptr %i.pm, ptr %i.bl, align 8, !tbaa !1294
  %i.pq = getelementptr inbounds nuw [8 x i8], ptr %i.pj, i64 %i.ph
  store ptr %i.pq, ptr %i.bm, align 8, !tbaa !1316
  br label %_ZNSt6vectorIPN4llvm4TypeESaIS2_EE9push_backERKS2_.exit163

_ZNSt6vectorIPN4llvm4TypeESaIS2_EE9push_backERKS2_.exit163: ; preds = %bb.bf, %_ZNSt6vectorIPN4llvm4TypeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i162
  %i.pr = load i32, ptr %i.bo, align 8, !tbaa !1194 ; 3 uses
  %i.ps = add i32 %i.pr, 1                        ; 6 uses
  %i.pt = load i32, ptr %i.bp, align 8, !tbaa !1079 ; 7 uses
  %i.pu = shl i32 %i.pt, 6
  %i.pv = icmp ugt i32 %i.ps, %i.pu
  br i1 %i.pv, label %bb.bk, label %bb.bq

bb.bk:                                            ; preds = %_ZNSt6vectorIPN4llvm4TypeESaIS2_EE9push_backERKS2_.exit163
  %i.pw = and i32 %i.pr, 63                       ; 2 uses
  %.not.i.i.i164 = icmp eq i32 %i.pw, 0
  br i1 %.not.i.i.i164, label %._ZN4llvm9BitVector15set_unused_bitsEb.exit_crit_edge.i.i, label %bb.bl

._ZN4llvm9BitVector15set_unused_bitsEb.exit_crit_edge.i.i: ; preds = %bb.bk
  %.pre6.i.i = zext i32 %i.pt to i64
  br label %_ZN4llvm9BitVector15set_unused_bitsEb.exit.i.i

bb.bl:                                            ; preds = %bb.bk
  %i.px = zext nneg i32 %i.pw to i64
  %i.py = shl nsw i64 -1, %i.px
  %i.pz = xor i64 %i.py, -1
  %i.qa = load ptr, ptr %i.bn, align 8, !tbaa !1038
  %i.qb = zext i32 %i.pt to i64                   ; 2 uses
  %i.qc = getelementptr inbounds nuw [8 x i8], ptr %i.qa, i64 %i.qb
  %i.qd = getelementptr inbounds i8, ptr %i.qc, i64 -8 ; 2 uses
  %i.qe = load i64, ptr %i.qd, align 8, !tbaa !275
  %i.qf = and i64 %i.qe, %i.pz
  store i64 %i.qf, ptr %i.qd, align 8, !tbaa !275
  br label %_ZN4llvm9BitVector15set_unused_bitsEb.exit.i.i

_ZN4llvm9BitVector15set_unused_bitsEb.exit.i.i:   ; preds = %bb.bl, %._ZN4llvm9BitVector15set_unused_bitsEb.exit_crit_edge.i.i
  %.pre-phi.i.i = phi i64 [ %.pre6.i.i, %._ZN4llvm9BitVector15set_unused_bitsEb.exit_crit_edge.i.i ], [ %i.qb, %bb.bl ] ; 2 uses
  store i32 %i.ps, ptr %i.bo, align 8, !tbaa !1194
  %i.qg = add i32 %i.pr, 64
  %i.qh = lshr i32 %i.qg, 6                       ; 5 uses
  %i.qi = zext nneg i32 %i.qh to i64              ; 2 uses
  %i.qj = icmp eq i32 %i.qh, %i.pt
  br i1 %i.qj, label %_ZN4llvm15SmallVectorImplImE6resizeEmm.exit.i.i, label %bb.bm

bb.bm:                                            ; preds = %_ZN4llvm9BitVector15set_unused_bitsEb.exit.i.i
  %i.qk = icmp ult i32 %i.qh, %i.pt
  br i1 %i.qk, label %.sink.split.i.i.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ql = sub nuw nsw i64 %i.qi, %.pre-phi.i.i    ; 2 uses
  %i.qm = load i32, ptr %i.bq, align 4, !tbaa !1105
  %.not.i.i.i.i.i.i = icmp ugt i32 %i.qh, %i.qm
  br i1 %.not.i.i.i.i.i.i, label %bb.bo, label %_ZN4llvm23SmallVectorTemplateBaseImLb1EE28reserveForParamAndGetAddressERmm.exit.i.i.i.i, !prof !1343

bb.bo:                                            ; preds = %bb.bn
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(68) %i.bn, ptr noundef nonnull %i.br, i64 noundef %i.qi, i64 noundef 8) #19
  %.pre.i.i.i.i = load i32, ptr %i.bp, align 8, !tbaa !1079 ; 2 uses
  %.pre.i.i.i = zext i32 %.pre.i.i.i.i to i64
  %.pre4.pre.i.pre.i = load i32, ptr %i.bo, align 8, !tbaa !1194
  br label %_ZN4llvm23SmallVectorTemplateBaseImLb1EE28reserveForParamAndGetAddressERmm.exit.i.i.i.i

_ZN4llvm23SmallVectorTemplateBaseImLb1EE28reserveForParamAndGetAddressERmm.exit.i.i.i.i: ; preds = %bb.bo, %bb.bn
  %.pre4.pre.i.i = phi i32 [ %i.ps, %bb.bn ], [ %.pre4.pre.i.pre.i, %bb.bo ]
  %.pre-phi.i.i.i = phi i64 [ %.pre-phi.i.i, %bb.bn ], [ %.pre.i.i.i, %bb.bo ]
  %i.qn = phi i32 [ %i.pt, %bb.bn ], [ %.pre.i.i.i.i, %bb.bo ]
  %i.qo = load ptr, ptr %i.bn, align 8, !tbaa !1038
  %i.qp = getelementptr inbounds nuw [8 x i8], ptr %i.qo, i64 %.pre-phi.i.i.i
  %.idx.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.ql, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.qp, i8 0, i64 %.idx.i.i.i.i.i.i.i.i, i1 false), !tbaa !275
  %i.qq = trunc nuw nsw i64 %i.ql to i32
  %i.qr = add i32 %i.qn, %i.qq
  br label %.sink.split.i.i.i

.sink.split.i.i.i:                                ; preds = %_ZN4llvm23SmallVectorTemplateBaseImLb1EE28reserveForParamAndGetAddressERmm.exit.i.i.i.i, %bb.bm
  %.pre4.i.i = phi i32 [ %.pre4.pre.i.i, %_ZN4llvm23SmallVectorTemplateBaseImLb1EE28reserveForParamAndGetAddressERmm.exit.i.i.i.i ], [ %i.ps, %bb.bm ]
  %.sink.i.i.i = phi i32 [ %i.qr, %_ZN4llvm23SmallVectorTemplateBaseImLb1EE28reserveForParamAndGetAddressERmm.exit.i.i.i.i ], [ %i.qh, %bb.bm ] ; 2 uses
  store i32 %.sink.i.i.i, ptr %i.bp, align 8, !tbaa !1079
  br label %_ZN4llvm15SmallVectorImplImE6resizeEmm.exit.i.i

_ZN4llvm15SmallVectorImplImE6resizeEmm.exit.i.i:  ; preds = %.sink.split.i.i.i, %_ZN4llvm9BitVector15set_unused_bitsEb.exit.i.i
  %i.qs = phi i32 [ %i.pt, %_ZN4llvm9BitVector15set_unused_bitsEb.exit.i.i ], [ %.sink.i.i.i, %.sink.split.i.i.i ]
  %i.qt = phi i32 [ %i.ps, %_ZN4llvm9BitVector15set_unused_bitsEb.exit.i.i ], [ %.pre4.i.i, %.sink.split.i.i.i ]
  %i.qu = and i32 %i.qt, 63                       ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.qu, 0
  br i1 %.not.i.i.i.i, label %_ZN4llvm9BitVector9push_backEb.exit, label %bb.bp

bb.bp:                                            ; preds = %_ZN4llvm15SmallVectorImplImE6resizeEmm.exit.i.i
  %i.qv = zext nneg i32 %i.qu to i64
  %i.qw = shl nsw i64 -1, %i.qv
  %i.qx = xor i64 %i.qw, -1
  %i.qy = load ptr, ptr %i.bn, align 8, !tbaa !1038
  %i.qz = zext i32 %i.qs to i64
  %i.ra = getelementptr inbounds nuw [8 x i8], ptr %i.qy, i64 %i.qz
  %i.rb = getelementptr inbounds i8, ptr %i.ra, i64 -8 ; 2 uses
  %i.rc = load i64, ptr %i.rb, align 8, !tbaa !275
  %i.rd = and i64 %i.rc, %i.qx
  store i64 %i.rd, ptr %i.rb, align 8, !tbaa !275
  br label %_ZN4llvm9BitVector9push_backEb.exit

bb.bq:                                            ; preds = %_ZNSt6vectorIPN4llvm4TypeESaIS2_EE9push_backERKS2_.exit163
  store i32 %i.ps, ptr %i.bo, align 8, !tbaa !1194
  br label %_ZN4llvm9BitVector9push_backEb.exit

_ZN4llvm9BitVector9push_backEb.exit:              ; preds = %bb.bq, %bb.bp, %_ZN4llvm15SmallVectorImplImE6resizeEmm.exit.i.i, %bb.bd, %bb.be, %_ZNSt6vectorIPN4llvm4TypeESaIS2_EE9push_backERKS2_.exit
  %.0322 = phi ptr [ %i.lx, %bb.be ], [ %i.os, %bb.bd ], [ %i.lx, %_ZNSt6vectorIPN4llvm4TypeESaIS2_EE9push_backERKS2_.exit ], [ %i.lx, %_ZN4llvm15SmallVectorImplImE6resizeEmm.exit.i.i ], [ %i.lx, %bb.bp ], [ %i.lx, %bb.bq ] ; 2 uses
  %i.re = load ptr, ptr %i.bt, align 8, !tbaa !1294 ; 4 uses
  %i.rf = load ptr, ptr %i.bu, align 8, !tbaa !1316
  %.not.i165 = icmp eq ptr %i.re, %i.rf
  br i1 %.not.i165, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %_ZN4llvm9BitVector9push_backEb.exit
  store ptr %.0322, ptr %i.re, align 8, !tbaa !1240
  %i.rg = getelementptr inbounds nuw i8, ptr %i.re, i64 8
  store ptr %i.rg, ptr %i.bt, align 8, !tbaa !1294
  br label %_ZNSt6vectorIPN4llvm4TypeESaIS2_EE9push_backERKS2_.exit172

bb.bs:                                            ; preds = %_ZN4llvm9BitVector9push_backEb.exit
  %i.rh = load ptr, ptr %i.bs, align 8, !tbaa !1293 ; 4 uses
  %i.ri = ptrtoint ptr %i.re to i64
  %i.rj = ptrtoint ptr %i.rh to i64               ; 2 uses
  %i.rk = sub i64 %i.ri, %i.rj                    ; 5 uses
  %i.rl = icmp eq i64 %i.rk, 9223372036854775800
  br i1 %i.rl, label %bb.bt, label %_ZNKSt6vectorIPN4llvm4TypeESaIS2_EE12_M_check_lenEmPKc.exit.i.i166

bb.bt:                                            ; preds = %bb.bs
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.61) #22
  unreachable

_ZNKSt6vectorIPN4llvm4TypeESaIS2_EE12_M_check_lenEmPKc.exit.i.i166: ; preds = %bb.bs
  %i.rm = ashr exact i64 %i.rk, 3                 ; 3 uses
  %.sroa.speculated.i.i.i167 = call i64 @llvm.umax.i64(i64 %i.rm, i64 1)
  %i.rn = add nsw i64 %.sroa.speculated.i.i.i167, %i.rm ; 2 uses
  %i.ro = icmp ult i64 %i.rn, %i.rm
  %i.rp = call i64 @llvm.umin.i64(i64 %i.rn, i64 1152921504606846975)
  %i.rq = select i1 %i.ro, i64 1152921504606846975, i64 %i.rp ; 3 uses
  %.not.i.i.i168 = icmp ne i64 %i.rq, 0
  call void @llvm.assume(i1 %.not.i.i.i168)
  %i.rr = shl nuw nsw i64 %i.rq, 3
  %i.rs = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.rr) #20 ; 4 uses
  %i.rt = getelementptr inbounds i8, ptr %i.rs, i64 %i.rk ; 2 uses
  store ptr %.0322, ptr %i.rt, align 8, !tbaa !1240
  %i.ru = icmp sgt i64 %i.rk, 0
  br i1 %i.ru, label %bb.bu, label %_ZNSt6vectorIPN4llvm4TypeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i169

bb.bu:                                            ; preds = %_ZNKSt6vectorIPN4llvm4TypeESaIS2_EE12_M_check_lenEmPKc.exit.i.i166
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.rs, ptr align 8 %i.rh, i64 %i.rk, i1 false)
  br label %_ZNSt6vectorIPN4llvm4TypeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i169

_ZNSt6vectorIPN4llvm4TypeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i169: ; preds = %bb.bu, %_ZNKSt6vectorIPN4llvm4TypeESaIS2_EE12_M_check_lenEmPKc.exit.i.i166
  %i.rv = getelementptr inbounds nuw i8, ptr %i.rt, i64 8
  %.not.i17.i.i170 = icmp eq ptr %i.rh, null
  br i1 %.not.i17.i.i170, label %_ZNSt6vectorIPN4llvm4TypeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i171, label %bb.bv

bb.bv:                                            ; preds = %_ZNSt6vectorIPN4llvm4TypeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i169
  %i.rw = load ptr, ptr %i.bu, align 8, !tbaa !1316
  %i.rx = ptrtoint ptr %i.rw to i64
  %i.ry = sub i64 %i.rx, %i.rj
  call void @_ZdlPvm(ptr noundef nonnull %i.rh, i64 noundef %i.ry) #21
  br label %_ZNSt6vectorIPN4llvm4TypeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i171

_ZNSt6vectorIPN4llvm4TypeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i171: ; preds = %bb.bv, %_ZNSt6vectorIPN4llvm4TypeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i169
  store ptr %i.rs, ptr %i.bs, align 8, !tbaa !1293
  store ptr %i.rv, ptr %i.bt, align 8, !tbaa !1294
  %i.rz = getelementptr inbounds nuw [8 x i8], ptr %i.rs, i64 %i.rq
  store ptr %i.rz, ptr %i.bu, align 8, !tbaa !1316
  br label %_ZNSt6vectorIPN4llvm4TypeESaIS2_EE9push_backERKS2_.exit172

_ZNSt6vectorIPN4llvm4TypeESaIS2_EE9push_backERKS2_.exit172: ; preds = %bb.br, %_ZNSt6vectorIPN4llvm4TypeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i171
  %i.sa = load i32, ptr %i.dg, align 8, !tbaa !1282
  %i.sb = and i32 %i.sa, 8
  %.not337 = icmp eq i32 %i.sb, 0
  br i1 %.not337, label %bb.bz, label %.preheader

.preheader:                                       ; preds = %_ZNSt6vectorIPN4llvm4TypeESaIS2_EE9push_backERKS2_.exit172
  %i.sc = load ptr, ptr %i.l, align 8, !tbaa !1295, !nonnull !267, !align !282 ; 2 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sc, i64 20
  %i.se = load i32, ptr %i.sd, align 4, !tbaa !1324 ; 3 uses
  %.not90346 = icmp eq i32 %i.se, 0
  br i1 %.not90346, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.sf = load ptr, ptr %i.bv, align 8, !tbaa !1038
  %i.sg = zext i32 %i.se to i64
  br label %bb.bw

bb.bw:                                            ; preds = %.lr.ph, %bb.bx
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.bx ] ; 3 uses
  %i.sh = getelementptr inbounds nuw [168 x i8], ptr %i.sf, i64 %indvars.iv
  %i.si = getelementptr inbounds nuw i8, ptr %i.sh, i64 4
  %i.sj = load i32, ptr %i.si, align 4, !tbaa !1344 ; 2 uses
  %17 = icmp ne i32 %i.sj, -1
  %i.sk = zext i32 %i.sj to i64
  %i.sl = icmp eq i64 %indvars.iv363, %i.sk
  %or.cond333 = and i1 %17, %i.sl
  br i1 %or.cond333, label %._crit_edge.loopexit.split.loop.exit, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not90 = icmp eq i64 %indvars.iv.next, %i.sg
  br i1 %.not90, label %._crit_edge, label %bb.bw, !llvm.loop !1783

._crit_edge.loopexit.split.loop.exit:             ; preds = %bb.bw
  %i.sm = trunc nuw i64 %indvars.iv to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.bx, %._crit_edge.loopexit.split.loop.exit, %.preheader
  %.082.lcssa = phi i32 [ 0, %.preheader ], [ %i.sm, %._crit_edge.loopexit.split.loop.exit ], [ %i.se, %bb.bx ]
  %i.sn = call noundef ptr @_ZNK5clang7AsmStmt12getInputExprEj(ptr noundef nonnull align 8 dereferenceable(40) %i.sc, i32 noundef %.082.lcssa) #19
  %i.so = getelementptr inbounds nuw i8, ptr %i.sn, i64 8
  %.sroa.0.0.copyload.i173 = load i64, ptr %i.so, align 8, !tbaa !1018 ; 2 uses
  %.sroa.0.0.copyload.i174 = load i64, ptr %i.ht, align 8, !tbaa !1018
  %i.sp = load ptr, ptr %0, align 8, !tbaa !1290, !nonnull !267, !align !282
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sp, i64 144
  %i.sr = load ptr, ptr %i.sq, align 8, !tbaa !281, !nonnull !267, !align !282
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sr, i64 144
  %i.st = load ptr, ptr %i.ss, align 8, !tbaa !641, !nonnull !267, !align !282
  %i.su = and i64 %.sroa.0.0.copyload.i173, -16
  %i.sv = inttoptr i64 %i.su to ptr
  %i.sw = load ptr, ptr %i.sv, align 16, !tbaa !1147
  %i.sx = call { i64, i64 } @_ZNK5clang10ASTContext11getTypeInfoEPKNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(23904) %i.st, ptr noundef %i.sw) #19
  %i.sy = extractvalue { i64, i64 } %i.sx, 0
  %i.sz = load ptr, ptr %0, align 8, !tbaa !1290, !nonnull !267, !align !282
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sz, i64 144
  %i.tb = load ptr, ptr %i.ta, align 8, !tbaa !281, !nonnull !267, !align !282
  %i.tc = getelementptr inbounds nuw i8, ptr %i.tb, i64 144
  %i.td = load ptr, ptr %i.tc, align 8, !tbaa !641, !nonnull !267, !align !282
  %i.te = and i64 %.sroa.0.0.copyload.i174, -16
  %i.tf = inttoptr i64 %i.te to ptr
  %i.tg = load ptr, ptr %i.tf, align 16, !tbaa !1147
  %i.th = call { i64, i64 } @_ZNK5clang10ASTContext11getTypeInfoEPKNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(23904) %i.td, ptr noundef %i.tg) #19
  %i.ti = extractvalue { i64, i64 } %i.th, 0
  %i.tj = icmp ult i64 %i.ti, %i.sy
  br i1 %i.tj, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %._crit_edge
  %i.tk = load ptr, ptr %0, align 8, !tbaa !1290, !nonnull !267, !align !282
  %i.tl = call noundef ptr @_ZN5clang7CodeGen15CodeGenFunction11ConvertTypeENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(6288) %i.tk, i64 %.sroa.0.0.copyload.i173) #19
  %i.tm = load ptr, ptr %i.bt, align 8, !tbaa !1292
  %i.tn = getelementptr inbounds i8, ptr %i.tm, i64 -8
  store ptr %i.tl, ptr %i.tn, align 8, !tbaa !1240
  br label %bb.bz

bb.bz:                                            ; preds = %._crit_edge, %bb.by, %_ZNSt6vectorIPN4llvm4TypeESaIS2_EE9push_backERKS2_.exit172
  %i.to = load ptr, ptr %i.ab, align 8, !tbaa !1299, !nonnull !267, !align !282
  %i.tp = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN5clang7CodeGen13CodeGenModule20getTargetCodeGenInfoEv(ptr noundef nonnull align 8 dereferenceable(4008) %i.to) #19 ; 2 uses
  %i.tq = load ptr, ptr %0, align 8, !tbaa !1290, !nonnull !267, !align !282
  %i.tr = load ptr, ptr %2, align 8, !tbaa !1261
  %i.ts = load i64, ptr %i.q, align 8, !tbaa !1187
  %i.tt = load ptr, ptr %i.bt, align 8, !tbaa !1292
  %i.tu = getelementptr inbounds i8, ptr %i.tt, i64 -8
  %i.tv = load ptr, ptr %i.tu, align 8, !tbaa !1240
  %i.tw = load ptr, ptr %i.tp, align 8, !tbaa !1012
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tw, i64 128
  %i.ty = load ptr, ptr %i.tx, align 8
  %i.tz = call noundef ptr %i.ty(ptr noundef nonnull align 8 dereferenceable(24) %i.tp, ptr noundef nonnull align 8 dereferenceable(6288) %i.tq, ptr %i.tr, i64 %i.ts, ptr noundef %i.tv) #19 ; 2 uses
  %.not91 = icmp eq ptr %i.tz, null
  br i1 %.not91, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.ua = load ptr, ptr %i.bt, align 8, !tbaa !1292
  %i.ub = getelementptr inbounds i8, ptr %i.ua, i64 -8
  store ptr %i.tz, ptr %i.ub, align 8, !tbaa !1240
  br label %bb.cc

bb.cb:                                            ; preds = %bb.bz
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  %i.uc = load ptr, ptr %i.ab, align 8, !tbaa !1299, !nonnull !267, !align !282
  %i.ud = getelementptr inbounds nuw i8, ptr %i.uc, i64 208
  %i.ue = load ptr, ptr %i.ud, align 8, !tbaa !1110, !nonnull !267, !align !282
  %i.uf = load ptr, ptr %i.l, align 8, !tbaa !1295, !nonnull !267, !align !282
  %i.ug = getelementptr inbounds nuw i8, ptr %i.uf, i64 8
  %.sroa.0.0.copyload.i175 = load i32, ptr %i.ug, align 8, !tbaa !268
  call void @_ZN5clang17DiagnosticBuilderC1EPNS_17DiagnosticsEngineENS_14SourceLocationEj(ptr noundef nonnull align 8 dereferenceable(66) %12, ptr noundef nonnull align 8 dereferenceable(15256) %i.ue, i32 %.sroa.0.0.copyload.i175, i32 noundef 4) #19
  %.sroa.0.0.copyload.i176 = load i64, ptr %i.ht, align 8, !tbaa !1018
  %i.uh = load ptr, ptr %12, align 8, !tbaa !1114 ; 2 uses
  %.not.i.i.i178 = icmp eq ptr %i.uh, null
  br i1 %.not.i.i.i178, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i, label %_ZNK5clang17DiagnosticBuilderlsINS_8QualTypeEvEERKS0_OT_.exit

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i: ; preds = %bb.cb
  %i.ui = load ptr, ptr %i.bw, align 8, !tbaa !1115
  %i.uj = call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.ui) ; 2 uses
  store ptr %i.uj, ptr %12, align 8, !tbaa !1114
  br label %_ZNK5clang17DiagnosticBuilderlsINS_8QualTypeEvEERKS0_OT_.exit

_ZNK5clang17DiagnosticBuilderlsINS_8QualTypeEvEERKS0_OT_.exit: ; preds = %bb.cb, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i
  %i.uk = phi ptr [ %i.uj, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i ], [ %i.uh, %bb.cb ] ; 2 uses
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uk, i64 1
  %i.um = load i8, ptr %i.uk, align 8, !tbaa !1127
  %i.un = zext i8 %i.um to i64
  %i.uo = getelementptr inbounds nuw i8, ptr %i.ul, i64 %i.un
  store i8 8, ptr %i.uo, align 1, !tbaa !1018
  %i.up = load ptr, ptr %12, align 8, !tbaa !1114 ; 3 uses
  %i.uq = getelementptr inbounds nuw i8, ptr %i.up, i64 16
  %i.ur = load i8, ptr %i.up, align 8, !tbaa !1127 ; 2 uses
  %i.us = add i8 %i.ur, 1
  store i8 %i.us, ptr %i.up, align 8, !tbaa !1127
  %i.ut = zext i8 %i.ur to i64
  %i.uu = getelementptr inbounds nuw [8 x i8], ptr %i.uq, i64 %i.ut
  store i64 %.sroa.0.0.copyload.i176, ptr %i.uu, align 8, !tbaa !275
  %i.uv = load ptr, ptr %2, align 8, !tbaa !1261
  %i.uw = load i64, ptr %i.q, align 8, !tbaa !1187
  call void @_ZNK5clang19StreamingDiagnostic9AddStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(66) %12, ptr %i.uv, i64 %i.uw)
  call void @_ZN5clang17DiagnosticBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %12) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  br label %bb.cc

bb.cc:                                            ; preds = %_ZNK5clang17DiagnosticBuilderlsINS_8QualTypeEvEERKS0_OT_.exit, %bb.ca
  %i.ux = load ptr, ptr %i.bt, align 8, !tbaa !1292
  %i.uy = getelementptr inbounds i8, ptr %i.ux, i64 -8
  %i.uz = load ptr, ptr %i.uy, align 8, !tbaa !1240 ; 3 uses
  %i.va = getelementptr inbounds nuw i8, ptr %i.uz, i64 8
  %i.vb = load i32, ptr %i.va, align 8
  %i.vc = and i32 %i.vb, 254
  %spec.select.i.i.i.i.i.i.i.i = icmp ne i32 %i.vc, 18
  %.not92338 = icmp eq ptr %i.uz, null
  %.not92 = or i1 %.not92338, %spec.select.i.i.i.i.i.i.i.i
  br i1 %.not92, label %bb.da, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.vd = load ptr, ptr %0, align 8, !tbaa !1290, !nonnull !267, !align !282
  %i.ve = getelementptr inbounds nuw i8, ptr %i.vd, i64 6128 ; 2 uses
  %i.vf = load i32, ptr %i.ve, align 8, !tbaa !1345
  %i.vg = zext i32 %i.vf to i64
  %i.vh = call { i64, i8 } @_ZNK4llvm4Type22getPrimitiveSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(24) %i.uz) #18
  %.fca.0.extract10 = extractvalue { i64, i8 } %i.vh, 0
  %.sroa.speculated284 = call i64 @llvm.umax.i64(i64 %.fca.0.extract10, i64 %i.vg)
  %i.vi = trunc i64 %.sroa.speculated284 to i32
  store i32 %i.vi, ptr %i.ve, align 8, !tbaa !1345
  br label %bb.da

bb.ce:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %13, ptr noundef nonnull align 8 dereferenceable(48) %i.ak, i64 48, i1 false), !tbaa.struct !1346
  %.sroa.0.0.copyload.i179 = load i64, ptr %i.ht, align 8, !tbaa !1018 ; 2 uses
  %i.vj = and i64 %.sroa.0.0.copyload.i179, -16
  %i.vk = inttoptr i64 %i.vj to ptr
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vk, i64 8
  %i.vm = load i64, ptr %i.vl, align 8, !tbaa !1018
  %i.vn = and i64 %i.vm, -16
  %i.vo = inttoptr i64 %i.vn to ptr
  %i.vp = load ptr, ptr %i.vo, align 16, !tbaa !1147
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vp, i64 16
  %i.vr = load i8, ptr %i.vq, align 16
  %i.vs = and i8 %i.vr, -2
  %spec.select.i.i.i.i.i.i.i.i180 = icmp eq i8 %i.vs, 28
  br i1 %spec.select.i.i.i.i.i.i.i.i180, label %_ZNK5clang7CodeGen7Address15withElementTypeEPN4llvm4TypeE.exit, label %._crit_edge366

._crit_edge366:                                   ; preds = %bb.ce
  %.0.copyload.i.i.i.i184.pre = load i64, ptr %13, align 8
  br label %bb.cf

_ZNK5clang7CodeGen7Address15withElementTypeEPN4llvm4TypeE.exit: ; preds = %bb.ce
  %i.vt = load ptr, ptr %0, align 8, !tbaa !1290, !nonnull !267, !align !282
  %i.vu = call noundef ptr @_ZN5clang7CodeGen15CodeGenFunction11ConvertTypeENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(6288) %i.vt, i64 %.sroa.0.0.copyload.i179) #19
  %i.vv = load ptr, ptr %i.al, align 8, !tbaa !1805, !noalias !1806
  %.not.i182 = icmp eq ptr %i.vv, null
  %.0.copyload.i.i.i.i.i = load i64, ptr %13, align 8 ; 2 uses
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.8.0..sroa_idx274, align 8, !tbaa !1151
  %i.vw = and i64 %.0.copyload.i.i.i.i.i, -4
  %spec.select = select i1 %.not.i182, i64 %i.vw, i64 %.0.copyload.i.i.i.i.i ; 2 uses
  store i64 %spec.select, ptr %13, align 8, !tbaa !1018
  store ptr %i.vu, ptr %.sroa.5267.0..sroa_idx, align 8, !tbaa !1240
  store ptr %.sroa.2.0.copyload.i, ptr %.sroa.8.0..sroa_idx274, align 8, !tbaa !1151
  br label %bb.cf

bb.cf:                                            ; preds = %._crit_edge366, %_ZNK5clang7CodeGen7Address15withElementTypeEPN4llvm4TypeE.exit
  %.0.copyload.i.i.i.i184 = phi i64 [ %.0.copyload.i.i.i.i184.pre, %._crit_edge366 ], [ %spec.select, %_ZNK5clang7CodeGen7Address15withElementTypeEPN4llvm4TypeE.exit ]
  %i.vx = and i64 %.0.copyload.i.i.i.i184, -8
  %i.vy = inttoptr i64 %i.vx to ptr
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vy, i64 8
  %i.wa = load ptr, ptr %i.vz, align 8, !tbaa !1137 ; 2 uses
  %i.wb = load ptr, ptr %i.an, align 8, !tbaa !1294 ; 4 uses
  %i.wc = load ptr, ptr %i.ao, align 8, !tbaa !1316
  %.not.i.i = icmp eq ptr %i.wb, %i.wc
  br i1 %.not.i.i, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  store ptr %i.wa, ptr %i.wb, align 8, !tbaa !1240
  %i.wd = getelementptr inbounds nuw i8, ptr %i.wb, i64 8
  store ptr %i.wd, ptr %i.an, align 8, !tbaa !1294
  br label %_ZNSt6vectorIPN4llvm4TypeESaIS2_EE9push_backEOS2_.exit

bb.ch:                                            ; preds = %bb.cf
  %i.we = load ptr, ptr %i.am, align 8, !tbaa !1293 ; 4 uses
  %i.wf = ptrtoint ptr %i.wb to i64
  %i.wg = ptrtoint ptr %i.we to i64               ; 2 uses
  %i.wh = sub i64 %i.wf, %i.wg                    ; 5 uses
  %i.wi = icmp eq i64 %i.wh, 9223372036854775800
  br i1 %i.wi, label %bb.ci, label %_ZNKSt6vectorIPN4llvm4TypeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.ci:                                            ; preds = %bb.ch
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.61) #22
  unreachable

_ZNKSt6vectorIPN4llvm4TypeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ch
end_hunk_0
