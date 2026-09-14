Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/HexagonVectorCombine?download=true
inline.NumInlined: 6843
inline.NumDeleted: 3195
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN12_GLOBAL__N_112AlignVectors12realignGroupERKNS0_9MoveGroupE:bb.a
  %i.nb = getelementptr inbounds nuw i8, ptr %.sroa.0316.0661, i64 28
  %i.nc = load i32, ptr %i.nb, align 4, !tbaa !405
  %i.nd = sub nsw i32 %i.nc, %.sroa.6342.0.copyload499510550572 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.13.0659, %.sroa.23.0660
  br i1 %.not.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %.lr.ph662
  %i.ne = load ptr, ptr %.sroa.0316.0661, align 8, !tbaa !218
  store ptr %i.ne, ptr %.sroa.13.0659, align 8, !tbaa !408
  %i.nf = getelementptr inbounds nuw i8, ptr %.sroa.13.0659, i64 8
  store i32 0, ptr %i.nf, align 8, !tbaa !409
  %i.ng = getelementptr inbounds nuw i8, ptr %.sroa.13.0659, i64 12
  store i32 %.0.i, ptr %i.ng, align 4, !tbaa !410
  %i.nh = getelementptr inbounds nuw i8, ptr %.sroa.13.0659, i64 16
  store i32 %i.nd, ptr %i.nh, align 8, !tbaa !412
  br label %_ZNSt6vectorIN12_GLOBAL__N_112AlignVectors8ByteSpan5BlockESaIS3_EE12emplace_backIJRKPN4llvm11InstructionEiiEEERS3_DpOT_.exit

bb.aa:                                            ; preds = %.lr.ph662
  %i.ni = ptrtoint ptr %.sroa.23.0660 to i64
  %i.nj = ptrtoint ptr %.sroa.0317.0658 to i64
  %i.nk = sub i64 %i.ni, %i.nj                    ; 4 uses
  %i.nl = icmp eq i64 %i.nk, 9223372036854775800
  br i1 %i.nl, label %bb.ab, label %_ZNKSt6vectorIN12_GLOBAL__N_112AlignVectors8ByteSpan5BlockESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.ab:                                            ; preds = %bb.aa
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #21
  unreachable

_ZNKSt6vectorIN12_GLOBAL__N_112AlignVectors8ByteSpan5BlockESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.aa
  %i.nm = sdiv exact i64 %i.nk, 24                ; 3 uses
  %i.nn = icmp eq ptr %.sroa.23.0660, %.sroa.0317.0658 ; 2 uses
  %.sroa.speculated.i.i.i = select i1 %i.nn, i64 1, i64 %i.nm
  %i.no = add nsw i64 %.sroa.speculated.i.i.i, %i.nm ; 2 uses
  %i.np = icmp ult i64 %i.no, %i.nm
  %i.nq = call i64 @llvm.umin.i64(i64 %i.no, i64 384307168202282325)
  %i.nr = select i1 %i.np, i64 384307168202282325, i64 %i.nq ; 3 uses
  %.not.i.i.i169 = icmp ne i64 %i.nr, 0
  call void @llvm.assume(i1 %.not.i.i.i169)
  %i.ns = mul nuw nsw i64 %i.nr, 24
  %i.nt = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ns) #22 ; 5 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 %i.nk ; 4 uses
  %i.nv = load ptr, ptr %.sroa.0316.0661, align 8, !tbaa !218
  store ptr %i.nv, ptr %i.nu, align 8, !tbaa !408
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nu, i64 8
  store i32 0, ptr %i.nw, align 8, !tbaa !409
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nu, i64 12
  store i32 %.0.i, ptr %i.nx, align 4, !tbaa !410
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nu, i64 16
  store i32 %i.nd, ptr %i.ny, align 8, !tbaa !412
  br i1 %i.nn, label %_ZNSt6vectorIN12_GLOBAL__N_112AlignVectors8ByteSpan5BlockESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit28.i.i, label %.lr.ph.i.i.i.i.i170

.lr.ph.i.i.i.i.i170:                              ; preds = %_ZNKSt6vectorIN12_GLOBAL__N_112AlignVectors8ByteSpan5BlockESaIS3_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i170
  %.03.i.i.i.i.i = phi ptr [ %i.oa, %.lr.ph.i.i.i.i.i170 ], [ %i.nt, %_ZNKSt6vectorIN12_GLOBAL__N_112AlignVectors8ByteSpan5BlockESaIS3_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.092.i.i.i.i.i = phi ptr [ %i.nz, %.lr.ph.i.i.i.i.i170 ], [ %.sroa.0317.0658, %_ZNKSt6vectorIN12_GLOBAL__N_112AlignVectors8ByteSpan5BlockESaIS3_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.03.i.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %.092.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !413, !alias.scope !917
  %i.nz = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 24 ; 2 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.nz, %.sroa.23.0660
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN12_GLOBAL__N_112AlignVectors8ByteSpan5BlockESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit28.i.i, label %.lr.ph.i.i.i.i.i170, !llvm.loop !8

_ZNSt6vectorIN12_GLOBAL__N_112AlignVectors8ByteSpan5BlockESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit28.i.i: ; preds = %.lr.ph.i.i.i.i.i170, %_ZNKSt6vectorIN12_GLOBAL__N_112AlignVectors8ByteSpan5BlockESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i171 = phi ptr [ %i.nt, %_ZNKSt6vectorIN12_GLOBAL__N_112AlignVectors8ByteSpan5BlockESaIS3_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.oa, %.lr.ph.i.i.i.i.i170 ]
  %.not.i29.i.i = icmp eq ptr %.sroa.0317.0658, null
  br i1 %.not.i29.i.i, label %_ZNSt6vectorIN12_GLOBAL__N_112AlignVectors8ByteSpan5BlockESaIS3_EE17_M_realloc_insertIJRKPN4llvm11InstructionEiiEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorIN12_GLOBAL__N_112AlignVectors8ByteSpan5BlockESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit28.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0317.0658, i64 noundef %i.nk) #23
  br label %_ZNSt6vectorIN12_GLOBAL__N_112AlignVectors8ByteSpan5BlockESaIS3_EE17_M_realloc_insertIJRKPN4llvm11InstructionEiiEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIN12_GLOBAL__N_112AlignVectors8ByteSpan5BlockESaIS3_EE17_M_realloc_insertIJRKPN4llvm11InstructionEiiEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.ac, %_ZNSt6vectorIN12_GLOBAL__N_112AlignVectors8ByteSpan5BlockESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit28.i.i
  %i.ob = getelementptr inbounds nuw [24 x i8], ptr %i.nt, i64 %i.nr
  br label %_ZNSt6vectorIN12_GLOBAL__N_112AlignVectors8ByteSpan5BlockESaIS3_EE12emplace_backIJRKPN4llvm11InstructionEiiEEERS3_DpOT_.exit

_ZNSt6vectorIN12_GLOBAL__N_112AlignVectors8ByteSpan5BlockESaIS3_EE12emplace_backIJRKPN4llvm11InstructionEiiEEERS3_DpOT_.exit: ; preds = %bb.z, %_ZNSt6vectorIN12_GLOBAL__N_112AlignVectors8ByteSpan5BlockESaIS3_EE17_M_realloc_insertIJRKPN4llvm11InstructionEiiEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i
  %.sroa.0317.1 = phi ptr [ %i.nt, %_ZNSt6vectorIN12_GLOBAL__N_112AlignVectors8ByteSpan5BlockESaIS3_EE17_M_realloc_insertIJRKPN4llvm11InstructionEiiEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %.sroa.0317.0658, %bb.z ] ; 2 uses
  %.0.lcssa.i.i.i.i.i171.pn = phi ptr [ %.0.lcssa.i.i.i.i.i171, %_ZNSt6vectorIN12_GLOBAL__N_112AlignVectors8ByteSpan5BlockESaIS3_EE17_M_realloc_insertIJRKPN4llvm11InstructionEiiEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %.sroa.13.0659, %bb.z ]
  %.sroa.23.1 = phi ptr [ %i.ob, %_ZNSt6vectorIN12_GLOBAL__N_112AlignVectors8ByteSpan5BlockESaIS3_EE17_M_realloc_insertIJRKPN4llvm11InstructionEiiEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %.sroa.23.0660, %bb.z ] ; 2 uses
  %.sroa.13.1 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i171.pn, i64 24 ; 2 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %.sroa.0316.0661, i64 32 ; 2 uses
  %.not595 = icmp eq ptr %i.oc, %.sroa.10.2365382407435452491518546580
  br i1 %.not595, label %._crit_edge.loopexit, label %.lr.ph662

bb.ad:                                            ; preds = %._crit_edge
  %i.od = load ptr, ptr %i.fn, align 8, !tbaa !235, !nonnull !37, !align !252
  %i.oe = getelementptr inbounds nuw i8, ptr %i.od, i64 56
  %i.of = load ptr, ptr %i.oe, align 8, !tbaa !237, !nonnull !37, !align !252 ; 2 uses
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 432
  %i.oh = load i32, ptr %i.og, align 8, !tbaa !197
  %i.oi = icmp sgt i32 %i.oh, 0
  %i.oj = getelementptr inbounds nuw i8, ptr %i.of, i64 344
  %i.ok = load i8, ptr %i.oj, align 8, !range !36
  %i.ol = trunc nuw i8 %i.ok to i1
  %i.om = select i1 %i.oi, i1 %i.ol, i1 false
  %spec.select.i = select i1 %i.om, i32 64, i32 128
  br label %bb.af

bb.ae:                                            ; preds = %._crit_edge
  %i.on = zext nneg i8 %.sroa.3.0.copyload590 to i64
  %i.oo = shl nuw i64 1, %i.on
  %i.op = trunc i64 %i.oo to i32
  %.sroa.speculated = call i32 @llvm.smax.i32(i32 %i.op, i32 4)
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.oq = phi i32 [ %spec.select.i, %bb.ad ], [ %.sroa.speculated, %bb.ae ] ; 26 uses
  %i.or = load i8, ptr %i.fe, align 1, !tbaa !396, !range !36, !noundef !37
  %i.os = trunc nuw i8 %i.or to i1
  %i.ot = load ptr, ptr %i.fn, align 8, !tbaa !235, !nonnull !37, !align !252
  %.val139.i = load ptr, ptr %i.ot, align 8, !tbaa !298
  %i.ou = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm8Function10getContextEv(ptr noundef nonnull align 8 dereferenceable(140) %.val139.i) #20
  %i.ov = call noundef ptr @_ZN4llvm4Type9getInt8TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.ou) #20
  %.sroa.0.0.insert.ext.i.i.i.i = zext nneg i32 %i.oq to i64 ; 4 uses
  %i.ow = call noundef ptr @_ZN4llvm10VectorType3getEPNS_4TypeENS_12ElementCountE(ptr noundef %i.ov, i64 %.sroa.0.0.insert.ext.i.i.i.i) #20 ; 7 uses
  %i.ox = ptrtoint ptr %.sroa.13.0.lcssa to i64
  %i.oy = ptrtoint ptr %.sroa.0317.0.lcssa to i64
  %i.oz = sub i64 %i.ox, %i.oy
  %i.pa = sdiv exact i64 %i.oz, 24                ; 3 uses
  %i.pb = trunc i64 %i.pa to i32                  ; 3 uses
  %i.pc = icmp eq i32 %i.pb, 0                    ; 2 uses
  br i1 %i.os, label %_ZNK12_GLOBAL__N_120HexagonVectorCombine9getByteTyEi.exit.i, label %_ZNK12_GLOBAL__N_120HexagonVectorCombine9getByteTyEi.exit.i207

_ZNK12_GLOBAL__N_120HexagonVectorCombine9getByteTyEi.exit.i: ; preds = %bb.af
  br i1 %i.pc, label %_ZNK12_GLOBAL__N_112AlignVectors8ByteSpan6extentEv.exit.i, label %bb.ag

bb.ag:                                            ; preds = %_ZNK12_GLOBAL__N_120HexagonVectorCombine9getByteTyEi.exit.i
  %i.pd = getelementptr inbounds nuw i8, ptr %.sroa.0317.0.lcssa, i64 16
  %i.pe = load i32, ptr %i.pd, align 8, !tbaa !412 ; 4 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %.sroa.0317.0.lcssa, i64 12
  %i.pg = load i32, ptr %i.pf, align 4, !tbaa !414
  %i.ph = add nsw i32 %i.pg, %i.pe                ; 3 uses
  %.not12.i.i172 = icmp eq i32 %i.pb, 1
  br i1 %.not12.i.i172, label %._crit_edge.i.i175, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.ag
  %i.pi = and i64 %i.pa, 4294967295               ; 2 uses
  %i.pj = add nsw i64 %i.pi, -1                   ; 3 uses
  %xtraiter1070 = and i64 %i.pj, 1
  %i.pk = icmp eq i64 %i.pi, 2
  br i1 %i.pk, label %.lr.ph.i.i173.epil.preheader, label %.lr.ph.preheader.i.i.new

.lr.ph.preheader.i.i.new:                         ; preds = %.lr.ph.preheader.i.i
  %unroll_iter1075 = and i64 %i.pj, -2
  br label %.lr.ph.i.i173

._crit_edge.i.i175.loopexit.unr-lcssa:            ; preds = %.lr.ph.i.i173
  %lcmp.mod1071.not = icmp eq i64 %xtraiter1070, 0
  br i1 %lcmp.mod1071.not, label %._crit_edge.i.i175, label %.lr.ph.i.i173.epil.preheader

.lr.ph.i.i173.epil.preheader:                     ; preds = %._crit_edge.i.i175.loopexit.unr-lcssa, %.lr.ph.preheader.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 1, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i.1, %._crit_edge.i.i175.loopexit.unr-lcssa ]
  %.01014.i.i.epil.init = phi i32 [ %i.pe, %.lr.ph.preheader.i.i ], [ %.sroa.speculated6.i.i.1, %._crit_edge.i.i175.loopexit.unr-lcssa ]
  %.01113.i.i.epil.init = phi i32 [ %i.ph, %.lr.ph.preheader.i.i ], [ %.sroa.speculated.i.i.1, %._crit_edge.i.i175.loopexit.unr-lcssa ]
  %lcmp.mod1074 = trunc i64 %i.pj to i1
  call void @llvm.assume(i1 %lcmp.mod1074)
  %i.pl = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0317.0.lcssa, i64 %indvars.iv.i.i.epil.init ; 2 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pl, i64 16
  %i.pn = load i32, ptr %i.pm, align 4, !tbaa !219 ; 2 uses
  %.sroa.speculated6.i.i.epil = call i32 @llvm.smin.i32(i32 %i.pn, i32 %.01014.i.i.epil.init)
  %i.po = getelementptr inbounds nuw i8, ptr %i.pl, i64 12
  %i.pp = load i32, ptr %i.po, align 4, !tbaa !414
  %i.pq = add nsw i32 %i.pp, %i.pn
  %.sroa.speculated.i.i.epil = call i32 @llvm.smax.i32(i32 %.01113.i.i.epil.init, i32 %i.pq)
  br label %._crit_edge.i.i175

._crit_edge.i.i175:                               ; preds = %.lr.ph.i.i173.epil.preheader, %._crit_edge.i.i175.loopexit.unr-lcssa, %bb.ag
  %.011.lcssa.i.i = phi i32 [ %i.ph, %bb.ag ], [ %.sroa.speculated.i.i.1, %._crit_edge.i.i175.loopexit.unr-lcssa ], [ %.sroa.speculated.i.i.epil, %.lr.ph.i.i173.epil.preheader ]
  %.010.lcssa.i.i = phi i32 [ %i.pe, %bb.ag ], [ %.sroa.speculated6.i.i.1, %._crit_edge.i.i175.loopexit.unr-lcssa ], [ %.sroa.speculated6.i.i.epil, %.lr.ph.i.i173.epil.preheader ]
  %i.pr = sub nsw i32 %.011.lcssa.i.i, %.010.lcssa.i.i
  br label %_ZNK12_GLOBAL__N_112AlignVectors8ByteSpan6extentEv.exit.i

.lr.ph.i.i173:                                    ; preds = %.lr.ph.i.i173, %.lr.ph.preheader.i.i.new
  %indvars.iv.i.i = phi i64 [ 1, %.lr.ph.preheader.i.i.new ], [ %indvars.iv.next.i.i.1, %.lr.ph.i.i173 ] ; 3 uses
  %.01014.i.i = phi i32 [ %i.pe, %.lr.ph.preheader.i.i.new ], [ %.sroa.speculated6.i.i.1, %.lr.ph.i.i173 ]
  %.01113.i.i = phi i32 [ %i.ph, %.lr.ph.preheader.i.i.new ], [ %.sroa.speculated.i.i.1, %.lr.ph.i.i173 ]
  %niter1076 = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %niter1076.next.1, %.lr.ph.i.i173 ]
  %i.ps = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0317.0.lcssa, i64 %indvars.iv.i.i ; 2 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ps, i64 16
  %i.pu = load i32, ptr %i.pt, align 4, !tbaa !219 ; 2 uses
  %.sroa.speculated6.i.i = call i32 @llvm.smin.i32(i32 %i.pu, i32 %.01014.i.i)
  %i.pv = getelementptr inbounds nuw i8, ptr %i.ps, i64 12
  %i.pw = load i32, ptr %i.pv, align 4, !tbaa !414
  %i.px = add nsw i32 %i.pw, %i.pu
  %.sroa.speculated.i.i = call i32 @llvm.smax.i32(i32 %.01113.i.i, i32 %i.px)
  %i.py = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0317.0.lcssa, i64 %indvars.iv.i.i ; 2 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %i.py, i64 40
  %i.qa = load i32, ptr %i.pz, align 4, !tbaa !219 ; 2 uses
  %.sroa.speculated6.i.i.1 = call i32 @llvm.smin.i32(i32 %i.qa, i32 %.sroa.speculated6.i.i) ; 3 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %i.py, i64 36
  %i.qc = load i32, ptr %i.qb, align 4, !tbaa !414
  %i.qd = add nsw i32 %i.qc, %i.qa
  %.sroa.speculated.i.i.1 = call i32 @llvm.smax.i32(i32 %.sroa.speculated.i.i, i32 %i.qd) ; 3 uses
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %niter1076.next.1 = add nuw i64 %niter1076, 2   ; 2 uses
  %niter1076.ncmp.1 = icmp eq i64 %niter1076.next.1, %unroll_iter1075
  br i1 %niter1076.ncmp.1, label %._crit_edge.i.i175.loopexit.unr-lcssa, label %.lr.ph.i.i173, !llvm.loop !816

_ZNK12_GLOBAL__N_112AlignVectors8ByteSpan6extentEv.exit.i: ; preds = %._crit_edge.i.i175, %_ZNK12_GLOBAL__N_120HexagonVectorCombine9getByteTyEi.exit.i
  %.07.i.i = phi i32 [ %i.pr, %._crit_edge.i.i175 ], [ 0, %_ZNK12_GLOBAL__N_120HexagonVectorCombine9getByteTyEi.exit.i ]
  %i.qe = add nsw i32 %i.oq, -1
  %i.qf = add i32 %i.qe, %.07.i.i
  %i.qg = sdiv i32 %i.qf, %i.oq                   ; 8 uses
  %i.qh = load i8, ptr %.081, align 8, !tbaa !295
  %i.qi = icmp ult i8 %i.qh, 23
  br i1 %i.qi, label %bb.ah, label %_ZNK12_GLOBAL__N_120HexagonVectorCombine9getBoolTyEi.exit.i

bb.ah:                                            ; preds = %_ZNK12_GLOBAL__N_112AlignVectors8ByteSpan6extentEv.exit.i
  %i.qj = getelementptr inbounds nuw i8, ptr %.081, i64 1
  %i.qk = load i8, ptr %i.qj, align 1
  %i.ql = icmp sgt i8 %i.qk, -1
  br label %_ZNK12_GLOBAL__N_120HexagonVectorCombine9getBoolTyEi.exit.i

_ZNK12_GLOBAL__N_120HexagonVectorCombine9getBoolTyEi.exit.i: ; preds = %bb.ah, %_ZNK12_GLOBAL__N_112AlignVectors8ByteSpan6extentEv.exit.i
  %spec.select.i.i176 = phi i1 [ %i.ql, %bb.ah ], [ true, %_ZNK12_GLOBAL__N_112AlignVectors8ByteSpan6extentEv.exit.i ] ; 5 uses
  %.sroa.0.0.copyload.i196.i = load ptr, ptr %i.gp, align 8 ; 3 uses
  %.sroa.2.0.copyload.i197.i = load i64, ptr %.sroa.45.0..sroa_idx.i.i, align 8
  %.sroa.5332.8.insert.ext.i = and i64 %.sroa.2.0.copyload.i197.i, 65535
  %i.qm = load ptr, ptr %i.gk, align 8, !tbaa !367 ; 2 uses
  %i.qn = load ptr, ptr %i.fn, align 8, !tbaa !235, !nonnull !37, !align !252
  %.val142.i = load ptr, ptr %i.qn, align 8, !tbaa !298
  %i.qo = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm8Function10getContextEv(ptr noundef nonnull align 8 dereferenceable(140) %.val142.i) #20
  %i.qp = call noundef ptr @_ZN4llvm4Type9getInt1TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.qo) #20
  %i.qq = call noundef ptr @_ZN4llvm10VectorType3getEPNS_4TypeENS_12ElementCountE(ptr noundef %i.qp, i64 %.sroa.0.0.insert.ext.i.i.i.i) #20
  %i.qr = call noundef ptr @_ZN4llvm8Constant15getAllOnesValueEPNS_4TypeE(ptr noundef %i.qq) #20 ; 6 uses
  %i.qs = call noundef ptr @_ZN4llvm10UndefValue3getEPNS_4TypeE(ptr noundef %i.ow) #20 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #20
  %i.qt = zext i1 %spec.select.i.i176 to i32      ; 2 uses
  %i.qu = add nsw i32 %i.qg, %i.qt                ; 4 uses
  %i.qv = sext i32 %i.qu to i64                   ; 2 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %41, i64 16 ; 4 uses
  store ptr %i.qw, ptr %41, align 8, !tbaa !40
  %i.qx = getelementptr inbounds nuw i8, ptr %41, i64 8 ; 2 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %41, i64 12
  store i32 6, ptr %i.qy, align 4, !tbaa !199
  %i.qz = icmp ugt i32 %i.qu, 6
  br i1 %i.qz, label %_ZN4llvm11SmallVectorIPNS_5ValueELj6EEC2EmRKS2_.exit.loopexit.i, label %_ZSt6fill_nIPPN4llvm5ValueEmS2_ET_S4_T0_RKT1_.exit.i.i.i

_ZN4llvm11SmallVectorIPNS_5ValueELj6EEC2EmRKS2_.exit.loopexit.i: ; preds = %_ZNK12_GLOBAL__N_120HexagonVectorCombine9getBoolTyEi.exit.i
  store i32 0, ptr %i.qx, align 8, !tbaa !198
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %41, ptr noundef nonnull %i.qw, i64 noundef %i.qv, i64 noundef 8) #20
  %i.ra = load ptr, ptr %41, align 8, !tbaa !40
  br label %_ZN4llvm11SmallVectorIPNS_5ValueELj6EEC2EmRKS2_.exit.sink.split.i

_ZSt6fill_nIPPN4llvm5ValueEmS2_ET_S4_T0_RKT1_.exit.i.i.i: ; preds = %_ZNK12_GLOBAL__N_120HexagonVectorCombine9getBoolTyEi.exit.i
  %.not.i202.i = icmp eq i32 %i.qu, 0
  br i1 %.not.i202.i, label %_ZN4llvm11SmallVectorIPNS_5ValueELj6EEC2EmRKS2_.exit.i, label %_ZN4llvm11SmallVectorIPNS_5ValueELj6EEC2EmRKS2_.exit.sink.split.i

_ZN4llvm11SmallVectorIPNS_5ValueELj6EEC2EmRKS2_.exit.sink.split.i: ; preds = %_ZSt6fill_nIPPN4llvm5ValueEmS2_ET_S4_T0_RKT1_.exit.i.i.i, %_ZN4llvm11SmallVectorIPNS_5ValueELj6EEC2EmRKS2_.exit.loopexit.i
  %.sink.i = phi ptr [ %i.ra, %_ZN4llvm11SmallVectorIPNS_5ValueELj6EEC2EmRKS2_.exit.loopexit.i ], [ %i.qw, %_ZSt6fill_nIPPN4llvm5ValueEmS2_ET_S4_T0_RKT1_.exit.i.i.i ]
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.qv, 3
  call void @llvm.memset.p0.i64(ptr align 8 %.sink.i, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !377
  br label %_ZN4llvm11SmallVectorIPNS_5ValueELj6EEC2EmRKS2_.exit.i

_ZN4llvm11SmallVectorIPNS_5ValueELj6EEC2EmRKS2_.exit.i: ; preds = %_ZN4llvm11SmallVectorIPNS_5ValueELj6EEC2EmRKS2_.exit.sink.split.i, %_ZSt6fill_nIPPN4llvm5ValueEmS2_ET_S4_T0_RKT1_.exit.i.i.i
  store i32 %i.qu, ptr %i.qx, align 8, !tbaa !198
  %.not409.i = icmp eq i32 %i.qg, 0               ; 2 uses
  br i1 %.not409.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph418.preheader.i:                            ; preds = %_ZNSt6vectorIN12_GLOBAL__N_112AlignVectors8ByteSpan5BlockESaIS3_EE12emplace_backIJDnRiiEEERS3_DpOT_.exit.i
  %i.rb = zext i32 %i.qg to i64                   ; 2 uses
  %xtraiter1077 = and i64 %i.rb, 3                ; 3 uses
  %i.rc = icmp ult i32 %i.qg, 4
  br i1 %i.rc, label %.lr.ph418.i.epil.preheader, label %.lr.ph418.preheader.i.new

.lr.ph418.preheader.i.new:                        ; preds = %.lr.ph418.preheader.i
  %unroll_iter1080 = and i64 %i.rb, 4294967292
  br label %.lr.ph418.i

.lr.ph.i:                                         ; preds = %_ZN4llvm11SmallVectorIPNS_5ValueELj6EEC2EmRKS2_.exit.i, %_ZNSt6vectorIN12_GLOBAL__N_112AlignVectors8ByteSpan5BlockESaIS3_EE12emplace_backIJDnRiiEEERS3_DpOT_.exit.i
  %.0413.i = phi i32 [ %i.sa, %_ZNSt6vectorIN12_GLOBAL__N_112AlignVectors8ByteSpan5BlockESaIS3_EE12emplace_backIJDnRiiEEERS3_DpOT_.exit.i ], [ 0, %_ZN4llvm11SmallVectorIPNS_5ValueELj6EEC2EmRKS2_.exit.i ] ; 2 uses
  %.sroa.20.0412.i = phi ptr [ %.sroa.20.1.i, %_ZNSt6vectorIN12_GLOBAL__N_112AlignVectors8ByteSpan5BlockESaIS3_EE12emplace_backIJDnRiiEEERS3_DpOT_.exit.i ], [ null, %_ZN4llvm11SmallVectorIPNS_5ValueELj6EEC2EmRKS2_.exit.i ] ; 5 uses
  %.sroa.15.0411.i = phi ptr [ %.sroa.15.1.i, %_ZNSt6vectorIN12_GLOBAL__N_112AlignVectors8ByteSpan5BlockESaIS3_EE12emplace_backIJDnRiiEEERS3_DpOT_.exit.i ], [ null, %_ZN4llvm11SmallVectorIPNS_5ValueELj6EEC2EmRKS2_.exit.i ] ; 6 uses
  %.sroa.0329.0410.i = phi ptr [ %.sroa.0329.1.i, %_ZNSt6vectorIN12_GLOBAL__N_112AlignVectors8ByteSpan5BlockESaIS3_EE12emplace_backIJDnRiiEEERS3_DpOT_.exit.i ], [ null, %_ZN4llvm11SmallVectorIPNS_5ValueELj6EEC2EmRKS2_.exit.i ] ; 6 uses
  %i.rd = mul nuw nsw i32 %.0413.i, %i.oq         ; 2 uses
  %.not.i203.i = icmp eq ptr %.sroa.15.0411.i, %.sroa.20.0412.i
  br i1 %.not.i203.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph.i
  store ptr null, ptr %.sroa.15.0411.i, align 8, !tbaa !408
  %i.re = getelementptr inbounds nuw i8, ptr %.sroa.15.0411.i, i64 8
  store i32 0, ptr %i.re, align 8, !tbaa !409
  %i.rf = getelementptr inbounds nuw i8, ptr %.sroa.15.0411.i, i64 12
  store i32 %i.oq, ptr %i.rf, align 4, !tbaa !410
  %i.rg = getelementptr inbounds nuw i8, ptr %.sroa.15.0411.i, i64 16
  store i32 %i.rd, ptr %i.rg, align 8, !tbaa !412
  br label %_ZNSt6vectorIN12_GLOBAL__N_112AlignVectors8ByteSpan5BlockESaIS3_EE12emplace_backIJDnRiiEEERS3_DpOT_.exit.i

bb.aj:                                            ; preds = %.lr.ph.i
  %i.rh = ptrtoint ptr %.sroa.20.0412.i to i64
  %i.ri = ptrtoint ptr %.sroa.0329.0410.i to i64
  %i.rj = sub i64 %i.rh, %i.ri                    ; 4 uses
  %i.rk = icmp eq i64 %i.rj, 9223372036854775800
  br i1 %i.rk, label %bb.ak, label %_ZNKSt6vectorIN12_GLOBAL__N_112AlignVectors8ByteSpan5BlockESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.ak:                                            ; preds = %bb.aj
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #21
  unreachable

_ZNKSt6vectorIN12_GLOBAL__N_112AlignVectors8ByteSpan5BlockESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.aj
  %i.rl = sdiv exact i64 %i.rj, 24                ; 3 uses
  %i.rm = icmp eq ptr %.sroa.20.0412.i, %.sroa.0329.0410.i ; 2 uses
  %.sroa.speculated.i.i.i.i = select i1 %i.rm, i64 1, i64 %i.rl
  %i.rn = add nsw i64 %.sroa.speculated.i.i.i.i, %i.rl ; 2 uses
  %i.ro = icmp ult i64 %i.rn, %i.rl
  %i.rp = call i64 @llvm.umin.i64(i64 %i.rn, i64 384307168202282325)
  %i.rq = select i1 %i.ro, i64 384307168202282325, i64 %i.rp ; 3 uses
  %.not.i.i.i.i203 = icmp ne i64 %i.rq, 0
  call void @llvm.assume(i1 %.not.i.i.i.i203)
  %i.rr = mul nuw nsw i64 %i.rq, 24
  %i.rs = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.rr) #22 ; 5 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rs, i64 %i.rj ; 4 uses
  store ptr null, ptr %i.rt, align 8, !tbaa !408
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rt, i64 8
  store i32 0, ptr %i.ru, align 8, !tbaa !409
  %i.rv = getelementptr inbounds nuw i8, ptr %i.rt, i64 12
  store i32 %i.oq, ptr %i.rv, align 4, !tbaa !410
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rt, i64 16
  store i32 %i.rd, ptr %i.rw, align 8, !tbaa !412
  br i1 %i.rm, label %_ZNSt6vectorIN12_GLOBAL__N_112AlignVectors8ByteSpan5BlockESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit28.i.i.i, label %.lr.ph.i.i.i.i.i.i204

.lr.ph.i.i.i.i.i.i204:                            ; preds = %_ZNKSt6vectorIN12_GLOBAL__N_112AlignVectors8ByteSpan5BlockESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i.i.i.i204
  %.03.i.i.i.i.i.i = phi ptr [ %i.ry, %.lr.ph.i.i.i.i.i.i204 ], [ %i.rs, %_ZNKSt6vectorIN12_GLOBAL__N_112AlignVectors8ByteSpan5BlockESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %.092.i.i.i.i.i.i = phi ptr [ %i.rx, %.lr.ph.i.i.i.i.i.i204 ], [ %.sroa.0329.0410.i, %_ZNKSt6vectorIN12_GLOBAL__N_112AlignVectors8ByteSpan5BlockESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.03.i.i.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %.092.i.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !413, !alias.scope !918
  %i.rx = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i205 = icmp eq ptr %i.rx, %.sroa.20.0412.i
  br i1 %.not.i.i.i.i.i.i205, label %_ZNSt6vectorIN12_GLOBAL__N_112AlignVectors8ByteSpan5BlockESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit28.i.i.i, label %.lr.ph.i.i.i.i.i.i204, !llvm.loop !8

_ZNSt6vectorIN12_GLOBAL__N_112AlignVectors8ByteSpan5BlockESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit28.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i204, %_ZNKSt6vectorIN12_GLOBAL__N_112AlignVectors8ByteSpan5BlockESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.rs, %_ZNKSt6vectorIN12_GLOBAL__N_112AlignVectors8ByteSpan5BlockESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.ry, %.lr.ph.i.i.i.i.i.i204 ]
  %.not.i29.i.i.i = icmp eq ptr %.sroa.0329.0410.i, null
  br i1 %.not.i29.i.i.i, label %_ZNSt6vectorIN12_GLOBAL__N_112AlignVectors8ByteSpan5BlockESaIS3_EE17_M_realloc_insertIJDnRiiEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.al

bb.al:                                            ; preds = %_ZNSt6vectorIN12_GLOBAL__N_112AlignVectors8ByteSpan5BlockESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit28.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0329.0410.i, i64 noundef %i.rj) #23
  br label %_ZNSt6vectorIN12_GLOBAL__N_112AlignVectors8ByteSpan5BlockESaIS3_EE17_M_realloc_insertIJDnRiiEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIN12_GLOBAL__N_112AlignVectors8ByteSpan5BlockESaIS3_EE17_M_realloc_insertIJDnRiiEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.al, %_ZNSt6vectorIN12_GLOBAL__N_112AlignVectors8ByteSpan5BlockESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit28.i.i.i
  %i.rz = getelementptr inbounds nuw [24 x i8], ptr %i.rs, i64 %i.rq
  br label %_ZNSt6vectorIN12_GLOBAL__N_112AlignVectors8ByteSpan5BlockESaIS3_EE12emplace_backIJDnRiiEEERS3_DpOT_.exit.i

_ZNSt6vectorIN12_GLOBAL__N_112AlignVectors8ByteSpan5BlockESaIS3_EE12emplace_backIJDnRiiEEERS3_DpOT_.exit.i: ; preds = %_ZNSt6vectorIN12_GLOBAL__N_112AlignVectors8ByteSpan5BlockESaIS3_EE17_M_realloc_insertIJDnRiiEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, %bb.ai
  %.sroa.0329.1.i = phi ptr [ %i.rs, %_ZNSt6vectorIN12_GLOBAL__N_112AlignVectors8ByteSpan5BlockESaIS3_EE17_M_realloc_insertIJDnRiiEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %.sroa.0329.0410.i, %bb.ai ] ; 7 uses
  %.0.lcssa.i.i.i.i.i.pn.i = phi ptr [ %.0.lcssa.i.i.i.i.i.i, %_ZNSt6vectorIN12_GLOBAL__N_112AlignVectors8ByteSpan5BlockESaIS3_EE17_M_realloc_insertIJDnRiiEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %.sroa.15.0411.i, %bb.ai ]
  %.sroa.20.1.i = phi ptr [ %i.rz, %_ZNSt6vectorIN12_GLOBAL__N_112AlignVectors8ByteSpan5BlockESaIS3_EE17_M_realloc_insertIJDnRiiEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %.sroa.20.0412.i, %bb.ai ] ; 2 uses
  %.sroa.15.1.i = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.pn.i, i64 24 ; 2 uses
  %i.sa = add nuw nsw i32 %.0413.i, 1             ; 2 uses
  %.not.i177 = icmp eq i32 %i.sa, %i.qg
  br i1 %.not.i177, label %.lr.ph418.preheader.i, label %.lr.ph.i, !llvm.loop !820

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph418.i
  %lcmp.mod1078.not = icmp eq i64 %xtraiter1077, 0
  br i1 %lcmp.mod1078.not, label %._crit_edge.i.loopexit, label %.lr.ph418.i.epil.preheader

.lr.ph418.i.epil.preheader:                       ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph418.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph418.preheader.i ], [ %indvars.iv.next.i.3, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod1079 = icmp ne i64 %xtraiter1077, 0
  call void @llvm.assume(i1 %lcmp.mod1079)
  br label %.lr.ph418.i.epil

.lr.ph418.i.epil:                                 ; preds = %.lr.ph418.i.epil, %.lr.ph418.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.lr.ph418.i.epil.preheader ], [ %indvars.iv.next.i.epil, %.lr.ph418.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph418.i.epil.preheader ], [ %epil.iter.next, %.lr.ph418.i.epil ]
  %i.sb = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0329.1.i, i64 %indvars.iv.i.epil ; 2 uses
  store ptr %i.sb, ptr %i.sb, align 8, !tbaa !415
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter1077
  br i1 %epil.iter.cmp.not, label %._crit_edge.i.loopexit, label %.lr.ph418.i.epil, !llvm.loop !821

._crit_edge.i.loopexit:                           ; preds = %.lr.ph418.i.epil, %._crit_edge.i.loopexit.unr-lcssa
  %i.sc = ptrtoint ptr %.sroa.20.1.i to i64
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit, %_ZN4llvm11SmallVectorIPNS_5ValueELj6EEC2EmRKS2_.exit.i
  %.sroa.20.0.lcssa553.i = phi i64 [ 0, %_ZN4llvm11SmallVectorIPNS_5ValueELj6EEC2EmRKS2_.exit.i ], [ %i.sc, %._crit_edge.i.loopexit ]
  %.sroa.15.0.lcssa552.i = phi ptr [ null, %_ZN4llvm11SmallVectorIPNS_5ValueELj6EEC2EmRKS2_.exit.i ], [ %.sroa.15.1.i, %._crit_edge.i.loopexit ] ; 2 uses
  %.sroa.0329.0.lcssa551.i = phi ptr [ null, %_ZN4llvm11SmallVectorIPNS_5ValueELj6EEC2EmRKS2_.exit.i ], [ %.sroa.0329.1.i, %._crit_edge.i.loopexit ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %42, i8 0, i64 24, i1 false)
  %.not372424.i = icmp eq ptr %.sroa.0317.0.lcssa, %.sroa.13.0.lcssa ; 2 uses
  br i1 %.not372424.i, label %.preheader382.i, label %.lr.ph427.i

.lr.ph427.i:                                      ; preds = %._crit_edge.i
  %i.sd = getelementptr inbounds nuw i8, ptr %43, i64 8
  %i.se = getelementptr inbounds nuw i8, ptr %42, i64 8 ; 2 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %42, i64 20 ; 2 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %42, i64 16 ; 3 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %i.qm, i64 48
  %i.si = getelementptr inbounds nuw i8, ptr %43, i64 16
  br label %bb.am

.lr.ph418.i:                                      ; preds = %.lr.ph418.i, %.lr.ph418.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph418.preheader.i.new ], [ %indvars.iv.next.i.3, %.lr.ph418.i ] ; 5 uses
  %niter1081 = phi i64 [ 0, %.lr.ph418.preheader.i.new ], [ %niter1081.next.3, %.lr.ph418.i ]
  %i.sj = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0329.1.i, i64 %indvars.iv.i ; 2 uses
  store ptr %i.sj, ptr %i.sj, align 8, !tbaa !415
  %i.sk = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0329.1.i, i64 %indvars.iv.i
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sk, i64 24 ; 2 uses
  store ptr %i.sl, ptr %i.sl, align 8, !tbaa !415
  %i.sm = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0329.1.i, i64 %indvars.iv.i
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sm, i64 48 ; 2 uses
  store ptr %i.sn, ptr %i.sn, align 8, !tbaa !415
  %i.so = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0329.1.i, i64 %indvars.iv.i
  %i.sp = getelementptr inbounds nuw i8, ptr %i.so, i64 72 ; 2 uses
  store ptr %i.sp, ptr %i.sp, align 8, !tbaa !415
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter1081.next.3 = add i64 %niter1081, 4       ; 2 uses
  %niter1081.ncmp.3 = icmp eq i64 %niter1081.next.3, %unroll_iter1080
  br i1 %niter1081.ncmp.3, label %._crit_edge.i.loopexit.unr-lcssa, label %.lr.ph418.i, !llvm.loop !822

.preheader382.i:                                  ; preds = %_ZN12_GLOBAL__N_112AlignVectors8ByteSpanD2Ev.exit.i, %._crit_edge.i
  %.not131428.i = icmp eq i32 %i.qg, -1
  br i1 %.not131428.i, label %.lr.ph434.preheader.i, label %.lr.ph430.i

.lr.ph430.i:                                      ; preds = %.preheader382.i
  %i.sq = shl nuw i32 %i.oq, %i.qt
  %i.sr = getelementptr inbounds nuw i8, ptr %40, i64 8
  %i.ss = getelementptr inbounds nuw i8, ptr %39, i64 16 ; 5 uses
  %i.st = getelementptr inbounds nuw i8, ptr %39, i64 8 ; 3 uses
  %i.su = getelementptr inbounds nuw i8, ptr %39, i64 12
  %.sroa.2.0..sroa_idx.i213.i = getelementptr inbounds nuw i8, ptr %37, i64 8
  %i.sv = getelementptr inbounds nuw i8, ptr %35, i64 32
  %i.sw = getelementptr inbounds nuw i8, ptr %i.qr, i64 1
  %i.sx = call range(i64 33, 65) i64 @llvm.ctlz.i64(i64 %.sroa.0.0.insert.ext.i.i.i.i, i1 true)
  %i.sy = trunc nuw nsw i64 %i.sx to i8
  %i.sz = xor i8 %i.sy, 63                        ; 2 uses
  %i.ta = getelementptr inbounds nuw i8, ptr %i.qr, i64 8
  %i.tb = getelementptr inbounds nuw i8, ptr %36, i64 32
  %i.tc = getelementptr inbounds nuw i8, ptr %36, i64 33
  %i.td = getelementptr inbounds nuw i8, ptr %34, i64 33
  %i.te = getelementptr inbounds nuw i8, ptr %34, i64 32
  %i.tf = getelementptr inbounds nuw i8, ptr %40, i64 16
  %i.tg = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i196.i, i64 -24
  %i.th = getelementptr inbounds nuw i8, ptr %32, i64 24
  %i.ti = getelementptr inbounds nuw i8, ptr %32, i64 8 ; 2 uses
  %i.tj = getelementptr inbounds nuw i8, ptr %31, i64 32 ; 2 uses
  %i.tk = getelementptr inbounds nuw i8, ptr %31, i64 33 ; 2 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %30, i64 32 ; 2 uses
  %i.tm = getelementptr inbounds nuw i8, ptr %30, i64 33 ; 2 uses
  %.sroa.56.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %31, i64 8
  %.sroa.23.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %30, i64 8 ; 2 uses
  %i.tn = getelementptr inbounds nuw i8, ptr %30, i64 16
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %30, i64 24
  %i.to = getelementptr inbounds nuw i8, ptr %29, i64 32
  %i.tp = getelementptr inbounds nuw i8, ptr %29, i64 33
  %.sroa.23.0..sroa_idx.i.i.i23.i.i.i = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.tq = getelementptr inbounds nuw i8, ptr %29, i64 16
  %i.tr = getelementptr inbounds nuw i8, ptr %33, i64 8 ; 4 uses
  %i.ts = getelementptr inbounds nuw i8, ptr %33, i64 20 ; 5 uses
  %i.tt = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 5 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %32, i64 16
  %i.tv = sext i32 %i.qg to i64                   ; 2 uses
  %.neg.i = sext i1 %spec.select.i.i176 to i64
  %i.tw = zext i32 %i.qg to i64                   ; 3 uses
  %.sroa.0.0.insert.ext.i.i.i216.i = zext nneg i8 %i.sz to i16
  %.sroa.0.0.insert.insert.i.i.i.i = or disjoint i16 %.sroa.0.0.insert.ext.i.i.i216.i, 256
  br label %bb.aw

bb.am:                                            ; preds = %_ZN12_GLOBAL__N_112AlignVectors8ByteSpanD2Ev.exit.i, %.lr.ph427.i
  %.sroa.0325.0425.i = phi ptr [ %.sroa.0317.0.lcssa, %.lr.ph427.i ], [ %i.ue, %_ZN12_GLOBAL__N_112AlignVectors8ByteSpanD2Ev.exit.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #20
  %i.tx = getelementptr inbounds nuw i8, ptr %.sroa.0325.0425.i, i64 16
  %i.ty = load i32, ptr %i.tx, align 8, !tbaa !412
  %i.tz = getelementptr inbounds nuw i8, ptr %.sroa.0325.0425.i, i64 12
  %i.ua = load i32, ptr %i.tz, align 4, !tbaa !414
  call fastcc void @_ZNK12_GLOBAL__N_112AlignVectors8ByteSpan7sectionEii(ptr dead_on_unwind noalias writable align 8 %43, ptr %.sroa.0329.0.lcssa551.i, ptr %.sroa.15.0.lcssa552.i, i32 noundef %i.ty, i32 noundef %i.ua)
  %.val161.i = load ptr, ptr %43, align 8, !tbaa !417 ; 3 uses
  %.val163.i = load ptr, ptr %i.sd, align 8, !tbaa !417 ; 2 uses
  %.not377419.i = icmp eq ptr %.val161.i, %.val163.i
  br i1 %.not377419.i, label %._crit_edge423.i, label %.lr.ph422.i

._crit_edge423.loopexit.i:                        ; preds = %"_ZSt3minIPN4llvm11InstructionEZNK12_GLOBAL__N_112AlignVectors16realignLoadGroupERNS0_13IRBuilderBaseERKNS4_8ByteSpanEiPNS0_5ValueESB_E3$_0ERKT_SF_SF_T0_.exit.i"
  %.val174.pre.i = load ptr, ptr %43, align 8, !tbaa !419
  br label %._crit_edge423.i

._crit_edge423.i:                                 ; preds = %._crit_edge423.loopexit.i, %bb.am
  %.val174.i = phi ptr [ %.val174.pre.i, %._crit_edge423.loopexit.i ], [ %.val161.i, %bb.am ] ; 3 uses
  %.not.i.i.i.i.i179 = icmp eq ptr %.val174.i, null
  br i1 %.not.i.i.i.i.i179, label %_ZN12_GLOBAL__N_112AlignVectors8ByteSpanD2Ev.exit.i, label %bb.an

bb.an:                                            ; preds = %._crit_edge423.i
  %.val175.i = load ptr, ptr %i.si, align 8, !tbaa !420
  %i.ub = ptrtoint ptr %.val175.i to i64
  %i.uc = ptrtoint ptr %.val174.i to i64
  %i.ud = sub i64 %i.ub, %i.uc
  call void @_ZdlPvm(ptr noundef nonnull %.val174.i, i64 noundef %i.ud) #23
  br label %_ZN12_GLOBAL__N_112AlignVectors8ByteSpanD2Ev.exit.i

_ZN12_GLOBAL__N_112AlignVectors8ByteSpanD2Ev.exit.i: ; preds = %bb.an, %._crit_edge423.i
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #20
  %i.ue = getelementptr inbounds nuw i8, ptr %.sroa.0325.0425.i, i64 24 ; 2 uses
  %.not372.i = icmp eq ptr %i.ue, %.sroa.13.0.lcssa
  br i1 %.not372.i, label %.preheader382.i, label %bb.am

.lr.ph422.i:                                      ; preds = %bb.am, %"_ZSt3minIPN4llvm11InstructionEZNK12_GLOBAL__N_112AlignVectors16realignLoadGroupERNS0_13IRBuilderBaseERKNS4_8ByteSpanEiPNS0_5ValueESB_E3$_0ERKT_SF_SF_T0_.exit.i"
  %.sroa.0323.0420.i = phi ptr [ %i.yp, %"_ZSt3minIPN4llvm11InstructionEZNK12_GLOBAL__N_112AlignVectors16realignLoadGroupERNS0_13IRBuilderBaseERKNS4_8ByteSpanEiPNS0_5ValueESB_E3$_0ERKT_SF_SF_T0_.exit.i" ], [ %.val161.i, %bb.am ] ; 2 uses
  %i.uf = load ptr, ptr %.sroa.0323.0420.i, align 8, !tbaa !415 ; 5 uses
  %i.ug = load ptr, ptr %42, align 8, !tbaa !423, !noalias !919 ; 3 uses
  %i.uh = load ptr, ptr %i.se, align 8, !tbaa !424, !noalias !919 ; 3 uses
  %i.ui = load i32, ptr %i.sf, align 4, !tbaa !425, !noalias !919 ; 4 uses
  %i.uj = icmp eq i32 %i.ui, 0
  br i1 %i.uj, label %.loopexit.i.i, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph422.i
  %i.uk = add i32 %i.ui, -1                       ; 2 uses
  %i.ul = ptrtoint ptr %i.uf to i64
  %i.um = mul i64 %i.ul, -4658895280553007687     ; 2 uses
  %i.un = lshr i64 %i.um, 31
  %i.uo = xor i64 %i.un, %i.um
  %i.up = trunc i64 %i.uo to i32
  %i.uq = and i32 %i.uk, %i.up                    ; 3 uses
  %i.ur = zext i32 %i.uq to i64                   ; 2 uses
  %i.us = getelementptr inbounds nuw [16 x i8], ptr %i.ug, i64 %i.ur ; 2 uses
  %i.ut = lshr i64 %i.ur, 5
  %i.uu = getelementptr inbounds nuw [4 x i8], ptr %i.uh, i64 %i.ut
  %i.uv = load i32, ptr %i.uu, align 4, !tbaa !219
  %i.uw = and i32 %i.uq, 31
  %i.ux = lshr i32 %i.uv, %i.uw
  %i.uy = trunc i32 %i.ux to i1
  br i1 %i.uy, label %.lr.ph.i.i281.i, label %.loopexit.i.i, !prof !220

.lr.ph.i.i281.i:                                  ; preds = %bb.ao, %bb.ap
  %i.uz = phi ptr [ %i.vf, %bb.ap ], [ %i.us, %bb.ao ] ; 2 uses
  %.024.i.i.i = phi i32 [ %i.vd, %bb.ap ], [ %i.uq, %bb.ao ]
  %i.va = load ptr, ptr %i.uz, align 8, !tbaa !41
  %i.vb = icmp eq ptr %i.uf, %i.va
  br i1 %i.vb, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPvPNS_11InstructionENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEES2_S4_S6_S9_E24lookupOrInsertIntoBucketIS2_JEEESt4pairIPS9_bEOT_DpOT0_.exit.i, label %bb.ap, !prof !221

bb.ap:                                            ; preds = %.lr.ph.i.i281.i
  %i.vc = add nuw i32 %.024.i.i.i, 1
  %i.vd = and i32 %i.vc, %i.uk                    ; 3 uses
  %i.ve = zext i32 %i.vd to i64                   ; 2 uses
  %i.vf = getelementptr inbounds nuw [16 x i8], ptr %i.ug, i64 %i.ve ; 2 uses
  %i.vg = lshr i64 %i.ve, 5
  %i.vh = getelementptr inbounds nuw [4 x i8], ptr %i.uh, i64 %i.vg
  %i.vi = load i32, ptr %i.vh, align 4, !tbaa !219
  %i.vj = and i32 %i.vd, 31
  %i.vk = lshr i32 %i.vi, %i.vj
  %i.vl = trunc i32 %i.vk to i1
  br i1 %i.vl, label %.lr.ph.i.i281.i, label %.loopexit.i.i, !prof !222, !llvm.loop !9

.loopexit.i.i:                                    ; preds = %bb.ap, %bb.ao, %.lr.ph422.i
  %.lcssa28.sink.i.ph.i.i = phi ptr [ %i.us, %bb.ao ], [ null, %.lr.ph422.i ], [ %i.vf, %bb.ap ]
  %i.vm = load i32, ptr %i.sg, align 8, !tbaa !426
  %i.vn = shl i32 %i.vm, 2
  %i.vo = add i32 %i.vn, 4
  %i.vp = mul i32 %i.ui, 3
  %.not.i.i277.i = icmp ult i32 %i.vo, %i.vp
  br i1 %.not.i.i277.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPvPNS_11InstructionENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEES2_S4_S6_S9_E22findBucketForInsertionIS2_EEPS9_RKT_SD_.exit.i.i, label %bb.aq, !prof !221

bb.aq:                                            ; preds = %.loopexit.i.i
  %i.vq = shl i32 %i.ui, 1
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPvPNS_11InstructionENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEES2_S4_S6_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %42, i32 noundef %i.vq)
  %i.vr = load ptr, ptr %42, align 8, !tbaa !423, !noalias !920 ; 5 uses
  %i.vs = load ptr, ptr %i.se, align 8, !tbaa !424, !noalias !920 ; 5 uses
  %i.vt = load i32, ptr %i.sf, align 4, !tbaa !425, !noalias !920 ; 2 uses
  %i.vu = icmp ne i32 %i.vt, 0
  call void @llvm.assume(i1 %i.vu)
  %i.vv = add i32 %i.vt, -1                       ; 2 uses
  %i.vw = ptrtoint ptr %i.uf to i64
  %i.vx = mul i64 %i.vw, -4658895280553007687     ; 2 uses
  %i.vy = lshr i64 %i.vx, 31
  %i.vz = xor i64 %i.vy, %i.vx
  %i.wa = trunc i64 %i.vz to i32
  %i.wb = and i32 %i.vv, %i.wa                    ; 3 uses
  %i.wc = zext i32 %i.wb to i64                   ; 2 uses
  %i.wd = getelementptr inbounds nuw [16 x i8], ptr %i.vr, i64 %i.wc ; 2 uses
  %i.we = lshr i64 %i.wc, 5
  %i.wf = getelementptr inbounds nuw [4 x i8], ptr %i.vs, i64 %i.we
  %i.wg = load i32, ptr %i.wf, align 4, !tbaa !219
  %i.wh = and i32 %i.wb, 31
  %i.wi = lshr i32 %i.wg, %i.wh
  %i.wj = trunc i32 %i.wi to i1
  br i1 %i.wj, label %.lr.ph.i293.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPvPNS_11InstructionENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEES2_S4_S6_S9_E22findBucketForInsertionIS2_EEPS9_RKT_SD_.exit.i.i, !prof !220

.lr.ph.i293.i:                                    ; preds = %bb.aq, %bb.ar
  %i.wk = phi ptr [ %i.wq, %bb.ar ], [ %i.wd, %bb.aq ] ; 2 uses
  %.024.i.i = phi i32 [ %i.wo, %bb.ar ], [ %i.wb, %bb.aq ]
  %i.wl = load ptr, ptr %i.wk, align 8, !tbaa !41
  %i.wm = icmp eq ptr %i.uf, %i.wl
  br i1 %i.wm, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPvPNS_11InstructionENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEES2_S4_S6_S9_E22findBucketForInsertionIS2_EEPS9_RKT_SD_.exit.i.i, label %bb.ar, !prof !221

bb.ar:                                            ; preds = %.lr.ph.i293.i
  %i.wn = add nuw i32 %.024.i.i, 1
  %i.wo = and i32 %i.wn, %i.vv                    ; 3 uses
  %i.wp = zext i32 %i.wo to i64                   ; 2 uses
  %i.wq = getelementptr inbounds nuw [16 x i8], ptr %i.vr, i64 %i.wp ; 2 uses
  %i.wr = lshr i64 %i.wp, 5
  %i.ws = getelementptr inbounds nuw [4 x i8], ptr %i.vs, i64 %i.wr
  %i.wt = load i32, ptr %i.ws, align 4, !tbaa !219
  %i.wu = and i32 %i.wo, 31
  %i.wv = lshr i32 %i.wt, %i.wu
  %i.ww = trunc i32 %i.wv to i1
  br i1 %i.ww, label %.lr.ph.i293.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPvPNS_11InstructionENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEES2_S4_S6_S9_E22findBucketForInsertionIS2_EEPS9_RKT_SD_.exit.i.i, !prof !222, !llvm.loop !9

_ZN4llvm12DenseMapBaseINS_8DenseMapIPvPNS_11InstructionENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEES2_S4_S6_S9_E22findBucketForInsertionIS2_EEPS9_RKT_SD_.exit.i.i: ; preds = %bb.ar, %.lr.ph.i293.i, %bb.aq, %.loopexit.i.i
  %i.wx = phi ptr [ %i.ug, %.loopexit.i.i ], [ %i.vr, %bb.aq ], [ %i.vr, %.lr.ph.i293.i ], [ %i.vr, %bb.ar ]
  %i.wy = phi ptr [ %i.uh, %.loopexit.i.i ], [ %i.vs, %bb.aq ], [ %i.vs, %.lr.ph.i293.i ], [ %i.vs, %bb.ar ]
  %i.wz = phi ptr [ %.lcssa28.sink.i.ph.i.i, %.loopexit.i.i ], [ %i.wd, %bb.aq ], [ %i.wq, %bb.ar ], [ %i.wk, %.lr.ph.i293.i ] ; 4 uses
  %i.xa = ptrtoint ptr %i.wz to i64
  %i.xb = ptrtoint ptr %i.wx to i64
  %i.xc = sub i64 %i.xa, %i.xb
  %i.xd = ashr exact i64 %i.xc, 4                 ; 2 uses
  %i.xe = trunc i64 %i.xd to i32
  %i.xf = and i32 %i.xe, 31
  %i.xg = shl nuw i32 1, %i.xf
  %i.xh = lshr i64 %i.xd, 5
  %i.xi = getelementptr inbounds nuw [4 x i8], ptr %i.wy, i64 %i.xh ; 2 uses
  %i.xj = load i32, ptr %i.xi, align 4, !tbaa !219
  %i.xk = or i32 %i.xg, %i.xj
  store i32 %i.xk, ptr %i.xi, align 4, !tbaa !219
  %i.xl = load i32, ptr %i.sg, align 8, !tbaa !426
  %i.xm = add i32 %i.xl, 1
  store i32 %i.xm, ptr %i.sg, align 8, !tbaa !426
  store ptr %i.uf, ptr %i.wz, align 8, !tbaa !41
  %i.xn = getelementptr inbounds nuw i8, ptr %i.wz, i64 8
  store ptr null, ptr %i.xn, align 8, !tbaa !218
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPvPNS_11InstructionENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEES2_S4_S6_S9_E24lookupOrInsertIntoBucketIS2_JEEESt4pairIPS9_bEOT_DpOT0_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPvPNS_11InstructionENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEES2_S4_S6_S9_E24lookupOrInsertIntoBucketIS2_JEEESt4pairIPS9_bEOT_DpOT0_.exit.i: ; preds = %.lr.ph.i.i281.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPvPNS_11InstructionENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEES2_S4_S6_S9_E22findBucketForInsertionIS2_EEPS9_RKT_SD_.exit.i.i
  %.sroa.0.0.i.i = phi ptr [ %i.wz, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPvPNS_11InstructionENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEES2_S4_S6_S9_E22findBucketForInsertionIS2_EEPS9_RKT_SD_.exit.i.i ], [ %i.uz, %.lr.ph.i.i281.i ]
  %i.xo = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.xp = load ptr, ptr %.sroa.0325.0425.i, align 8, !tbaa !415
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xp, i64 16
  %i.xr = load ptr, ptr %i.xq, align 8, !tbaa !921 ; 2 uses
  %.not12.i204.i = icmp eq ptr %i.xr, null
  br i1 %.not12.i204.i, label %"_ZZNK12_GLOBAL__N_112AlignVectors16realignLoadGroupERN4llvm13IRBuilderBaseERKNS0_8ByteSpanEiPNS1_5ValueES8_ENK3$_1clINS1_14iterator_rangeINS7_17use_iterator_implINS1_3UseEEEEEEEDaRKT_.exit.thread.i", label %.lr.ph.i205.i

.lr.ph.i205.i:                                    ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPvPNS_11InstructionENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEES2_S4_S6_S9_E24lookupOrInsertIntoBucketIS2_JEEESt4pairIPS9_bEOT_DpOT0_.exit.i, %"_ZSt3minIPN4llvm11InstructionEZNK12_GLOBAL__N_112AlignVectors16realignLoadGroupERNS0_13IRBuilderBaseERKNS4_8ByteSpanEiPNS0_5ValueESB_E3$_0ERKT_SF_SF_T0_.exit.i.i"
  %.sroa.07.014.i.i = phi ptr [ %i.yg, %"_ZSt3minIPN4llvm11InstructionEZNK12_GLOBAL__N_112AlignVectors16realignLoadGroupERNS0_13IRBuilderBaseERKNS4_8ByteSpanEiPNS0_5ValueESB_E3$_0ERKT_SF_SF_T0_.exit.i.i" ], [ %i.xr, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPvPNS_11InstructionENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEES2_S4_S6_S9_E24lookupOrInsertIntoBucketIS2_JEEESt4pairIPS9_bEOT_DpOT0_.exit.i ] ; 2 uses
  %.013.i.i = phi ptr [ %.1.i.i178, %"_ZSt3minIPN4llvm11InstructionEZNK12_GLOBAL__N_112AlignVectors16realignLoadGroupERNS0_13IRBuilderBaseERKNS4_8ByteSpanEiPNS0_5ValueESB_E3$_0ERKT_SF_SF_T0_.exit.i.i" ], [ null, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPvPNS_11InstructionENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEES2_S4_S6_S9_E24lookupOrInsertIntoBucketIS2_JEEESt4pairIPS9_bEOT_DpOT0_.exit.i ] ; 7 uses
  %i.xs = getelementptr inbounds nuw i8, ptr %.sroa.07.014.i.i, i64 24
  %i.xt = load ptr, ptr %i.xs, align 8, !tbaa !391 ; 4 uses
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xt, i64 40
  %i.xv = load ptr, ptr %i.xu, align 8, !tbaa !266
  %i.xw = icmp eq ptr %i.xv, %i.qm
  br i1 %i.xw, label %bb.as, label %bb.au

bb.as:                                            ; preds = %.lr.ph.i205.i
  %i.xx = load i8, ptr %i.xt, align 8, !tbaa !295
  %i.xy = icmp eq i8 %i.xx, 87
  br i1 %i.xy, label %"_ZSt3minIPN4llvm11InstructionEZNK12_GLOBAL__N_112AlignVectors16realignLoadGroupERNS0_13IRBuilderBaseERKNS4_8ByteSpanEiPNS0_5ValueESB_E3$_0ERKT_SF_SF_T0_.exit.i.i", label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.xz = icmp eq ptr %.013.i.i, null
  br i1 %i.xz, label %"_ZZNK12_GLOBAL__N_112AlignVectors16realignLoadGroupERN4llvm13IRBuilderBaseERKNS0_8ByteSpanEiPNS1_5ValueES8_ENK3$_0clEPNS1_11InstructionESB_.exit.thread.i.i.i", label %"_ZZNK12_GLOBAL__N_112AlignVectors16realignLoadGroupERN4llvm13IRBuilderBaseERKNS0_8ByteSpanEiPNS1_5ValueES8_ENK3$_0clEPNS1_11InstructionESB_.exit.i.i.i"

"_ZZNK12_GLOBAL__N_112AlignVectors16realignLoadGroupERN4llvm13IRBuilderBaseERKNS0_8ByteSpanEiPNS1_5ValueES8_ENK3$_0clEPNS1_11InstructionESB_.exit.i.i.i": ; preds = %bb.at
  %i.ya = call noundef zeroext i1 @_ZNK4llvm11Instruction11comesBeforeEPKS0_(ptr noundef nonnull align 8 dereferenceable(72) %i.xt, ptr noundef nonnull %.013.i.i) #20
  br i1 %i.ya, label %"_ZZNK12_GLOBAL__N_112AlignVectors16realignLoadGroupERN4llvm13IRBuilderBaseERKNS0_8ByteSpanEiPNS1_5ValueES8_ENK3$_0clEPNS1_11InstructionESB_.exit.thread.i.i.i", label %"_ZSt3minIPN4llvm11InstructionEZNK12_GLOBAL__N_112AlignVectors16realignLoadGroupERNS0_13IRBuilderBaseERKNS4_8ByteSpanEiPNS0_5ValueESB_E3$_0ERKT_SF_SF_T0_.exit.i.i"

"_ZZNK12_GLOBAL__N_112AlignVectors16realignLoadGroupERN4llvm13IRBuilderBaseERKNS0_8ByteSpanEiPNS1_5ValueES8_ENK3$_0clEPNS1_11InstructionESB_.exit.thread.i.i.i": ; preds = %"_ZZNK12_GLOBAL__N_112AlignVectors16realignLoadGroupERN4llvm13IRBuilderBaseERKNS0_8ByteSpanEiPNS1_5ValueES8_ENK3$_0clEPNS1_11InstructionESB_.exit.i.i.i", %bb.at
  br label %"_ZSt3minIPN4llvm11InstructionEZNK12_GLOBAL__N_112AlignVectors16realignLoadGroupERNS0_13IRBuilderBaseERKNS4_8ByteSpanEiPNS0_5ValueESB_E3$_0ERKT_SF_SF_T0_.exit.i.i"

bb.au:                                            ; preds = %.lr.ph.i205.i
  %i.yb = load ptr, ptr %i.sh, align 8, !tbaa !316
  %i.yc = getelementptr inbounds i8, ptr %i.yb, i64 -24 ; 2 uses
  %i.yd = icmp eq ptr %.013.i.i, null
  br i1 %i.yd, label %"_ZZNK12_GLOBAL__N_112AlignVectors16realignLoadGroupERN4llvm13IRBuilderBaseERKNS0_8ByteSpanEiPNS1_5ValueES8_ENK3$_0clEPNS1_11InstructionESB_.exit.thread.i7.i.i", label %"_ZZNK12_GLOBAL__N_112AlignVectors16realignLoadGroupERN4llvm13IRBuilderBaseERKNS0_8ByteSpanEiPNS1_5ValueES8_ENK3$_0clEPNS1_11InstructionESB_.exit.i6.i.i"

"_ZZNK12_GLOBAL__N_112AlignVectors16realignLoadGroupERN4llvm13IRBuilderBaseERKNS0_8ByteSpanEiPNS1_5ValueES8_ENK3$_0clEPNS1_11InstructionESB_.exit.i6.i.i": ; preds = %bb.au
  %i.ye = call noundef zeroext i1 @_ZNK4llvm11Instruction11comesBeforeEPKS0_(ptr noundef nonnull align 8 dereferenceable(72) %i.yc, ptr noundef nonnull %.013.i.i) #20
  br i1 %i.ye, label %"_ZZNK12_GLOBAL__N_112AlignVectors16realignLoadGroupERN4llvm13IRBuilderBaseERKNS0_8ByteSpanEiPNS1_5ValueES8_ENK3$_0clEPNS1_11InstructionESB_.exit.thread.i7.i.i", label %"_ZSt3minIPN4llvm11InstructionEZNK12_GLOBAL__N_112AlignVectors16realignLoadGroupERNS0_13IRBuilderBaseERKNS4_8ByteSpanEiPNS0_5ValueESB_E3$_0ERKT_SF_SF_T0_.exit.i.i"

"_ZZNK12_GLOBAL__N_112AlignVectors16realignLoadGroupERN4llvm13IRBuilderBaseERKNS0_8ByteSpanEiPNS1_5ValueES8_ENK3$_0clEPNS1_11InstructionESB_.exit.thread.i7.i.i": ; preds = %"_ZZNK12_GLOBAL__N_112AlignVectors16realignLoadGroupERN4llvm13IRBuilderBaseERKNS0_8ByteSpanEiPNS1_5ValueES8_ENK3$_0clEPNS1_11InstructionESB_.exit.i6.i.i", %bb.au
  br label %"_ZSt3minIPN4llvm11InstructionEZNK12_GLOBAL__N_112AlignVectors16realignLoadGroupERNS0_13IRBuilderBaseERKNS4_8ByteSpanEiPNS0_5ValueESB_E3$_0ERKT_SF_SF_T0_.exit.i.i"

"_ZSt3minIPN4llvm11InstructionEZNK12_GLOBAL__N_112AlignVectors16realignLoadGroupERNS0_13IRBuilderBaseERKNS4_8ByteSpanEiPNS0_5ValueESB_E3$_0ERKT_SF_SF_T0_.exit.i.i": ; preds = %"_ZZNK12_GLOBAL__N_112AlignVectors16realignLoadGroupERN4llvm13IRBuilderBaseERKNS0_8ByteSpanEiPNS1_5ValueES8_ENK3$_0clEPNS1_11InstructionESB_.exit.thread.i7.i.i", %"_ZZNK12_GLOBAL__N_112AlignVectors16realignLoadGroupERN4llvm13IRBuilderBaseERKNS0_8ByteSpanEiPNS1_5ValueES8_ENK3$_0clEPNS1_11InstructionESB_.exit.i6.i.i", %"_ZZNK12_GLOBAL__N_112AlignVectors16realignLoadGroupERN4llvm13IRBuilderBaseERKNS0_8ByteSpanEiPNS1_5ValueES8_ENK3$_0clEPNS1_11InstructionESB_.exit.thread.i.i.i", %"_ZZNK12_GLOBAL__N_112AlignVectors16realignLoadGroupERN4llvm13IRBuilderBaseERKNS0_8ByteSpanEiPNS1_5ValueES8_ENK3$_0clEPNS1_11InstructionESB_.exit.i.i.i", %bb.as
  %.1.i.i178 = phi ptr [ %.013.i.i, %bb.as ], [ %.013.i.i, %"_ZZNK12_GLOBAL__N_112AlignVectors16realignLoadGroupERN4llvm13IRBuilderBaseERKNS0_8ByteSpanEiPNS1_5ValueES8_ENK3$_0clEPNS1_11InstructionESB_.exit.i.i.i" ], [ %i.xt, %"_ZZNK12_GLOBAL__N_112AlignVectors16realignLoadGroupERN4llvm13IRBuilderBaseERKNS0_8ByteSpanEiPNS1_5ValueES8_ENK3$_0clEPNS1_11InstructionESB_.exit.thread.i.i.i" ], [ %i.yc, %"_ZZNK12_GLOBAL__N_112AlignVectors16realignLoadGroupERN4llvm13IRBuilderBaseERKNS0_8ByteSpanEiPNS1_5ValueES8_ENK3$_0clEPNS1_11InstructionESB_.exit.thread.i7.i.i" ], [ %.013.i.i, %"_ZZNK12_GLOBAL__N_112AlignVectors16realignLoadGroupERN4llvm13IRBuilderBaseERKNS0_8ByteSpanEiPNS1_5ValueES8_ENK3$_0clEPNS1_11InstructionESB_.exit.i6.i.i" ] ; 4 uses
  %i.yf = getelementptr inbounds nuw i8, ptr %.sroa.07.014.i.i, i64 8
  %i.yg = load ptr, ptr %i.yf, align 8, !tbaa !379 ; 2 uses
  %.not.i206.i = icmp eq ptr %i.yg, null
  br i1 %.not.i206.i, label %"_ZZNK12_GLOBAL__N_112AlignVectors16realignLoadGroupERN4llvm13IRBuilderBaseERKNS0_8ByteSpanEiPNS1_5ValueES8_ENK3$_1clINS1_14iterator_rangeINS7_17use_iterator_implINS1_3UseEEEEEEEDaRKT_.exit.i", label %.lr.ph.i205.i

"_ZZNK12_GLOBAL__N_112AlignVectors16realignLoadGroupERN4llvm13IRBuilderBaseERKNS0_8ByteSpanEiPNS1_5ValueES8_ENK3$_1clINS1_14iterator_rangeINS7_17use_iterator_implINS1_3UseEEEEEEEDaRKT_.exit.i": ; preds = %"_ZSt3minIPN4llvm11InstructionEZNK12_GLOBAL__N_112AlignVectors16realignLoadGroupERNS0_13IRBuilderBaseERKNS4_8ByteSpanEiPNS0_5ValueESB_E3$_0ERKT_SF_SF_T0_.exit.i.i"
  store ptr %.1.i.i178, ptr %i.a, align 8, !tbaa !218
  %i.yh = load ptr, ptr %i.xo, align 8, !tbaa !218 ; 2 uses
  %i.yi = icmp eq ptr %i.yh, null
  br i1 %i.yi, label %"_ZZNK12_GLOBAL__N_112AlignVectors16realignLoadGroupERN4llvm13IRBuilderBaseERKNS0_8ByteSpanEiPNS1_5ValueES8_ENK3$_0clEPNS1_11InstructionESB_.exit.thread.i.i", label %bb.av

"_ZZNK12_GLOBAL__N_112AlignVectors16realignLoadGroupERN4llvm13IRBuilderBaseERKNS0_8ByteSpanEiPNS1_5ValueES8_ENK3$_1clINS1_14iterator_rangeINS7_17use_iterator_implINS1_3UseEEEEEEEDaRKT_.exit.thread.i": ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPvPNS_11InstructionENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEES2_S4_S6_S9_E24lookupOrInsertIntoBucketIS2_JEEESt4pairIPS9_bEOT_DpOT0_.exit.i
  store ptr null, ptr %i.a, align 8, !tbaa !218
  %i.yj = load ptr, ptr %i.xo, align 8, !tbaa !218
  %i.yk = icmp eq ptr %i.yj, null
  br i1 %i.yk, label %"_ZZNK12_GLOBAL__N_112AlignVectors16realignLoadGroupERN4llvm13IRBuilderBaseERKNS0_8ByteSpanEiPNS1_5ValueES8_ENK3$_0clEPNS1_11InstructionESB_.exit.thread.i.i", label %"_ZSt3minIPN4llvm11InstructionEZNK12_GLOBAL__N_112AlignVectors16realignLoadGroupERNS0_13IRBuilderBaseERKNS4_8ByteSpanEiPNS0_5ValueESB_E3$_0ERKT_SF_SF_T0_.exit.i"

bb.av:                                            ; preds = %"_ZZNK12_GLOBAL__N_112AlignVectors16realignLoadGroupERN4llvm13IRBuilderBaseERKNS0_8ByteSpanEiPNS1_5ValueES8_ENK3$_1clINS1_14iterator_rangeINS7_17use_iterator_implINS1_3UseEEEEEEEDaRKT_.exit.i"
  %i.yl = icmp eq ptr %.1.i.i178, null
  br i1 %i.yl, label %"_ZSt3minIPN4llvm11InstructionEZNK12_GLOBAL__N_112AlignVectors16realignLoadGroupERNS0_13IRBuilderBaseERKNS4_8ByteSpanEiPNS0_5ValueESB_E3$_0ERKT_SF_SF_T0_.exit.i", label %"_ZZNK12_GLOBAL__N_112AlignVectors16realignLoadGroupERN4llvm13IRBuilderBaseERKNS0_8ByteSpanEiPNS1_5ValueES8_ENK3$_0clEPNS1_11InstructionESB_.exit.i.i"

"_ZZNK12_GLOBAL__N_112AlignVectors16realignLoadGroupERN4llvm13IRBuilderBaseERKNS0_8ByteSpanEiPNS1_5ValueES8_ENK3$_0clEPNS1_11InstructionESB_.exit.i.i": ; preds = %bb.av
  %i.ym = call noundef zeroext i1 @_ZNK4llvm11Instruction11comesBeforeEPKS0_(ptr noundef nonnull align 8 dereferenceable(72) %.1.i.i178, ptr noundef nonnull %i.yh) #20
  br i1 %i.ym, label %"_ZZNK12_GLOBAL__N_112AlignVectors16realignLoadGroupERN4llvm13IRBuilderBaseERKNS0_8ByteSpanEiPNS1_5ValueES8_ENK3$_0clEPNS1_11InstructionESB_.exit.thread.i.i", label %"_ZSt3minIPN4llvm11InstructionEZNK12_GLOBAL__N_112AlignVectors16realignLoadGroupERNS0_13IRBuilderBaseERKNS4_8ByteSpanEiPNS0_5ValueESB_E3$_0ERKT_SF_SF_T0_.exit.i"

"_ZZNK12_GLOBAL__N_112AlignVectors16realignLoadGroupERN4llvm13IRBuilderBaseERKNS0_8ByteSpanEiPNS1_5ValueES8_ENK3$_0clEPNS1_11InstructionESB_.exit.thread.i.i": ; preds = %"_ZZNK12_GLOBAL__N_112AlignVectors16realignLoadGroupERN4llvm13IRBuilderBaseERKNS0_8ByteSpanEiPNS1_5ValueES8_ENK3$_0clEPNS1_11InstructionESB_.exit.i.i", %"_ZZNK12_GLOBAL__N_112AlignVectors16realignLoadGroupERN4llvm13IRBuilderBaseERKNS0_8ByteSpanEiPNS1_5ValueES8_ENK3$_1clINS1_14iterator_rangeINS7_17use_iterator_implINS1_3UseEEEEEEEDaRKT_.exit.thread.i", %"_ZZNK12_GLOBAL__N_112AlignVectors16realignLoadGroupERN4llvm13IRBuilderBaseERKNS0_8ByteSpanEiPNS1_5ValueES8_ENK3$_1clINS1_14iterator_rangeINS7_17use_iterator_implINS1_3UseEEEEEEEDaRKT_.exit.i"
  br label %"_ZSt3minIPN4llvm11InstructionEZNK12_GLOBAL__N_112AlignVectors16realignLoadGroupERNS0_13IRBuilderBaseERKNS4_8ByteSpanEiPNS0_5ValueESB_E3$_0ERKT_SF_SF_T0_.exit.i"

"_ZSt3minIPN4llvm11InstructionEZNK12_GLOBAL__N_112AlignVectors16realignLoadGroupERNS0_13IRBuilderBaseERKNS4_8ByteSpanEiPNS0_5ValueESB_E3$_0ERKT_SF_SF_T0_.exit.i": ; preds = %"_ZZNK12_GLOBAL__N_112AlignVectors16realignLoadGroupERN4llvm13IRBuilderBaseERKNS0_8ByteSpanEiPNS1_5ValueES8_ENK3$_0clEPNS1_11InstructionESB_.exit.thread.i.i", %"_ZZNK12_GLOBAL__N_112AlignVectors16realignLoadGroupERN4llvm13IRBuilderBaseERKNS0_8ByteSpanEiPNS1_5ValueES8_ENK3$_0clEPNS1_11InstructionESB_.exit.i.i", %bb.av, %"_ZZNK12_GLOBAL__N_112AlignVectors16realignLoadGroupERN4llvm13IRBuilderBaseERKNS0_8ByteSpanEiPNS1_5ValueES8_ENK3$_1clINS1_14iterator_rangeINS7_17use_iterator_implINS1_3UseEEEEEEEDaRKT_.exit.thread.i"
  %i.yn = phi ptr [ %i.a, %"_ZZNK12_GLOBAL__N_112AlignVectors16realignLoadGroupERN4llvm13IRBuilderBaseERKNS0_8ByteSpanEiPNS1_5ValueES8_ENK3$_0clEPNS1_11InstructionESB_.exit.thread.i.i" ], [ %i.xo, %"_ZZNK12_GLOBAL__N_112AlignVectors16realignLoadGroupERN4llvm13IRBuilderBaseERKNS0_8ByteSpanEiPNS1_5ValueES8_ENK3$_0clEPNS1_11InstructionESB_.exit.i.i" ], [ %i.xo, %bb.av ], [ %i.xo, %"_ZZNK12_GLOBAL__N_112AlignVectors16realignLoadGroupERN4llvm13IRBuilderBaseERKNS0_8ByteSpanEiPNS1_5ValueES8_ENK3$_1clINS1_14iterator_rangeINS7_17use_iterator_implINS1_3UseEEEEEEEDaRKT_.exit.thread.i" ]
  %i.yo = load ptr, ptr %i.yn, align 8, !tbaa !218
  store ptr %i.yo, ptr %i.xo, align 8, !tbaa !218
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.yp = getelementptr inbounds nuw i8, ptr %.sroa.0323.0420.i, i64 24 ; 2 uses
  %.not377.i = icmp eq ptr %i.yp, %.val163.i
  br i1 %.not377.i, label %._crit_edge423.loopexit.i, label %.lr.ph422.i

.preheader.i:                                     ; preds = %"_ZSt3minIPN4llvm11InstructionEZNK12_GLOBAL__N_112AlignVectors16realignLoadGroupERNS0_13IRBuilderBaseERKNS4_8ByteSpanEiPNS0_5ValueESB_E3$_0ERKT_SF_SF_T0_.exit212.thread368.i"
  br i1 %.not409.i, label %._crit_edge435.i, label %.lr.ph434.preheader.i

.lr.ph434.preheader.i:                            ; preds = %.preheader382.i, %.preheader.i
  %.pre-phi = phi i64 [ %i.tw, %.preheader.i ], [ 4294967295, %.preheader382.i ]
  br label %.lr.ph434.i

bb.aw:                                            ; preds = %"_ZSt3minIPN4llvm11InstructionEZNK12_GLOBAL__N_112AlignVectors16realignLoadGroupERNS0_13IRBuilderBaseERKNS4_8ByteSpanEiPNS0_5ValueESB_E3$_0ERKT_SF_SF_T0_.exit212.thread368.i", %.lr.ph430.i
  %indvars.iv481.i = phi i64 [ 0, %.lr.ph430.i ], [ %indvars.iv.next482.i, %"_ZSt3minIPN4llvm11InstructionEZNK12_GLOBAL__N_112AlignVectors16realignLoadGroupERNS0_13IRBuilderBaseERKNS4_8ByteSpanEiPNS0_5ValueESB_E3$_0ERKT_SF_SF_T0_.exit212.thread368.i" ] ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.yq = icmp ne i64 %indvars.iv481.i, 0
  %or.cond.i = and i1 %spec.select.i.i176, %i.yq
  br i1 %or.cond.i, label %bb.ax, label %.thread371.i

bb.ax:                                            ; preds = %bb.aw
  %i.yr = getelementptr [24 x i8], ptr %.sroa.0329.0.lcssa551.i, i64 %indvars.iv481.i
  %i.ys = getelementptr i8, ptr %i.yr, i64 -24
  store ptr %i.ys, ptr %i.b, align 8, !tbaa !41
  %i.yt = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPvPNS_11InstructionENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEES2_S4_S6_S9_E24lookupOrInsertIntoBucketIS2_JEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %42, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %.fca.0.extract.i208.i = extractvalue { ptr, i8 } %i.yt, 0
  %i.yu = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i208.i, i64 8
  %i.yv = load ptr, ptr %i.yu, align 8, !tbaa !218 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  %i.yw = icmp slt i64 %indvars.iv481.i, %i.tv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  br i1 %i.yw, label %bb.ay, label %.thread363.i

.thread371.i:                                     ; preds = %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  %i.yx = icmp slt i64 %indvars.iv481.i, %i.tv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  br i1 %i.yx, label %bb.ay, label %.thread363.thread.i

.thread363.thread.i:                              ; preds = %.thread371.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  br label %"_ZSt3minIPN4llvm11InstructionEZNK12_GLOBAL__N_112AlignVectors16realignLoadGroupERNS0_13IRBuilderBaseERKNS4_8ByteSpanEiPNS0_5ValueESB_E3$_0ERKT_SF_SF_T0_.exit212.thread368.i"

bb.ay:                                            ; preds = %.thread371.i, %bb.ax
  %i.yy = phi ptr [ null, %.thread371.i ], [ %i.yv, %bb.ax ] ; 4 uses
  %i.yz = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0329.0.lcssa551.i, i64 %indvars.iv481.i
  store ptr %i.yz, ptr %i.c, align 8, !tbaa !41
  %i.za = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPvPNS_11InstructionENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEES2_S4_S6_S9_E24lookupOrInsertIntoBucketIS2_JEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %42, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %.fca.0.extract.i209.i = extractvalue { ptr, i8 } %i.za, 0
  %i.zb = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i209.i, i64 8
  %i.zc = load ptr, ptr %i.zb, align 8, !tbaa !218 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  %i.zd = icmp eq ptr %i.yy, null
  %.not135.i = icmp eq ptr %i.zc, null            ; 2 uses
  br i1 %i.zd, label %"_ZSt3minIPN4llvm11InstructionEZNK12_GLOBAL__N_112AlignVectors16realignLoadGroupERNS0_13IRBuilderBaseERKNS4_8ByteSpanEiPNS0_5ValueESB_E3$_0ERKT_SF_SF_T0_.exit212.i", label %bb.az

.thread363.i:                                     ; preds = %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  %i.ze = icmp eq ptr %i.yv, null
  br i1 %i.ze, label %"_ZSt3minIPN4llvm11InstructionEZNK12_GLOBAL__N_112AlignVectors16realignLoadGroupERNS0_13IRBuilderBaseERKNS4_8ByteSpanEiPNS0_5ValueESB_E3$_0ERKT_SF_SF_T0_.exit212.thread368.i", label %"_ZSt3minIPN4llvm11InstructionEZNK12_GLOBAL__N_112AlignVectors16realignLoadGroupERNS0_13IRBuilderBaseERKNS4_8ByteSpanEiPNS0_5ValueESB_E3$_0ERKT_SF_SF_T0_.exit212.thread.i"

bb.az:                                            ; preds = %bb.ay
  br i1 %.not135.i, label %"_ZSt3minIPN4llvm11InstructionEZNK12_GLOBAL__N_112AlignVectors16realignLoadGroupERNS0_13IRBuilderBaseERKNS4_8ByteSpanEiPNS0_5ValueESB_E3$_0ERKT_SF_SF_T0_.exit212.thread.i", label %"_ZZNK12_GLOBAL__N_112AlignVectors16realignLoadGroupERN4llvm13IRBuilderBaseERKNS0_8ByteSpanEiPNS1_5ValueES8_ENK3$_0clEPNS1_11InstructionESB_.exit.i210.i"

"_ZZNK12_GLOBAL__N_112AlignVectors16realignLoadGroupERN4llvm13IRBuilderBaseERKNS0_8ByteSpanEiPNS1_5ValueES8_ENK3$_0clEPNS1_11InstructionESB_.exit.i210.i": ; preds = %bb.az
  %i.zf = call noundef zeroext i1 @_ZNK4llvm11Instruction11comesBeforeEPKS0_(ptr noundef nonnull align 8 dereferenceable(72) %i.zc, ptr noundef nonnull %i.yy) #20
  %spec.select.i180 = select i1 %i.zf, ptr %i.zc, ptr %i.yy
  br label %"_ZSt3minIPN4llvm11InstructionEZNK12_GLOBAL__N_112AlignVectors16realignLoadGroupERNS0_13IRBuilderBaseERKNS4_8ByteSpanEiPNS0_5ValueESB_E3$_0ERKT_SF_SF_T0_.exit212.thread.i"

"_ZSt3minIPN4llvm11InstructionEZNK12_GLOBAL__N_112AlignVectors16realignLoadGroupERNS0_13IRBuilderBaseERKNS4_8ByteSpanEiPNS0_5ValueESB_E3$_0ERKT_SF_SF_T0_.exit212.i": ; preds = %bb.ay
  br i1 %.not135.i, label %"_ZSt3minIPN4llvm11InstructionEZNK12_GLOBAL__N_112AlignVectors16realignLoadGroupERNS0_13IRBuilderBaseERKNS4_8ByteSpanEiPNS0_5ValueESB_E3$_0ERKT_SF_SF_T0_.exit212.thread368.i", label %"_ZSt3minIPN4llvm11InstructionEZNK12_GLOBAL__N_112AlignVectors16realignLoadGroupERNS0_13IRBuilderBaseERKNS4_8ByteSpanEiPNS0_5ValueESB_E3$_0ERKT_SF_SF_T0_.exit212.thread.i"

"_ZSt3minIPN4llvm11InstructionEZNK12_GLOBAL__N_112AlignVectors16realignLoadGroupERNS0_13IRBuilderBaseERKNS4_8ByteSpanEiPNS0_5ValueESB_E3$_0ERKT_SF_SF_T0_.exit212.thread.i": ; preds = %"_ZSt3minIPN4llvm11InstructionEZNK12_GLOBAL__N_112AlignVectors16realignLoadGroupERNS0_13IRBuilderBaseERKNS4_8ByteSpanEiPNS0_5ValueESB_E3$_0ERKT_SF_SF_T0_.exit212.i", %"_ZZNK12_GLOBAL__N_112AlignVectors16realignLoadGroupERN4llvm13IRBuilderBaseERKNS0_8ByteSpanEiPNS1_5ValueES8_ENK3$_0clEPNS1_11InstructionESB_.exit.i210.i", %bb.az, %.thread363.i
  %.sroa.speculated367.i = phi ptr [ %i.zc, %"_ZSt3minIPN4llvm11InstructionEZNK12_GLOBAL__N_112AlignVectors16realignLoadGroupERNS0_13IRBuilderBaseERKNS4_8ByteSpanEiPNS0_5ValueESB_E3$_0ERKT_SF_SF_T0_.exit212.i" ], [ %i.yv, %.thread363.i ], [ %i.yy, %bb.az ], [ %spec.select.i180, %"_ZZNK12_GLOBAL__N_112AlignVectors16realignLoadGroupERN4llvm13IRBuilderBaseERKNS0_8ByteSpanEiPNS1_5ValueES8_ENK3$_0clEPNS1_11InstructionESB_.exit.i210.i" ] ; 3 uses
  %i.zg = getelementptr inbounds nuw i8, ptr %.sroa.speculated367.i, i64 24
  %i.zh = getelementptr inbounds nuw i8, ptr %.sroa.speculated367.i, i64 40
  %i.zi = load ptr, ptr %i.zh, align 8, !tbaa !266
  store ptr %i.zi, ptr %i.gk, align 8, !tbaa !367
  store ptr %i.zg, ptr %i.gp, align 8
  store i16 0, ptr %.sroa.45.0..sroa_idx.i.i, align 8
  %i.zj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm11Instruction17getStableDebugLocEv(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.speculated367.i) #20
  %i.zk = load i64, ptr %i.zj, align 8, !tbaa !368
  store i64 %i.zk, ptr %54, align 8, !tbaa !368
  %i.zl = icmp eq i64 %indvars.iv481.i, %i.tw
  %i.zm = select i1 %spec.select.i.i176, i1 %i.zl, i1 false
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %38, i8 0, i64 24, i1 false)
  %.val.i.i181 = load ptr, ptr %i.fn, align 8
  %i.zn = trunc i64 %indvars.iv481.i to i32
  %i.zo = mul i32 %i.oq, %i.zn
  %i.zp = call fastcc noundef ptr @_ZNK12_GLOBAL__N_112AlignVectors21createAdjustedPointerERN4llvm13IRBuilderBaseEPNS1_5ValueEPNS1_4TypeEiRKNS1_8DenseMapIPNS1_11InstructionESA_NS1_12DenseMapInfoISA_vEENS1_6detail12DenseMapPairISA_SA_EEEE(ptr %.val.i.i181, ptr noundef nonnull align 8 dereferenceable(88) %54, ptr noundef %.080, i32 noundef %i.zo, ptr noundef nonnull align 8 dereferenceable(24) %38) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #20
  br i1 %i.zm, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %"_ZSt3minIPN4llvm11InstructionEZNK12_GLOBAL__N_112AlignVectors16realignLoadGroupERNS0_13IRBuilderBaseERKNS4_8ByteSpanEiPNS0_5ValueESB_E3$_0ERKT_SF_SF_T0_.exit212.thread.i"
  %i.zq = call fastcc noundef ptr @_ZNK12_GLOBAL__N_112AlignVectors19makeTestIfUnalignedERN4llvm13IRBuilderBaseEPNS1_5ValueEi(ptr noundef nonnull align 8 dereferenceable(88) %54, ptr noundef nonnull %.081, i32 noundef %i.oq)
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %"_ZSt3minIPN4llvm11InstructionEZNK12_GLOBAL__N_112AlignVectors16realignLoadGroupERNS0_13IRBuilderBaseERKNS4_8ByteSpanEiPNS0_5ValueESB_E3$_0ERKT_SF_SF_T0_.exit212.thread.i"
  %i.zr = phi ptr [ %i.zq, %bb.ba ], [ null, %"_ZSt3minIPN4llvm11InstructionEZNK12_GLOBAL__N_112AlignVectors16realignLoadGroupERNS0_13IRBuilderBaseERKNS4_8ByteSpanEiPNS0_5ValueESB_E3$_0ERKT_SF_SF_T0_.exit212.thread.i" ] ; 6 uses
  %i.zs = add nsw i64 %indvars.iv481.i, %.neg.i
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #20
  %i.zt = trunc i64 %i.zs to i32
  %i.zu = mul i32 %i.oq, %i.zt
  call fastcc void @_ZNK12_GLOBAL__N_112AlignVectors8ByteSpan7sectionEii(ptr dead_on_unwind noalias writable align 8 %40, ptr %.sroa.0317.0.lcssa, ptr %.sroa.13.0.lcssa, i32 noundef %i.zu, i32 noundef %i.sq)
  %.val15.i.i = load ptr, ptr %40, align 8, !tbaa !419 ; 15 uses
  %.val16.i.i = load ptr, ptr %i.sr, align 8, !tbaa !427 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !922)
  %i.zv = ptrtoint ptr %.val16.i.i to i64
  %i.zw = ptrtoint ptr %.val15.i.i to i64         ; 2 uses
  %i.zx = sub i64 %i.zv, %i.zw
  %i.zy = sdiv exact i64 %i.zx, 24                ; 8 uses
  store ptr %i.ss, ptr %39, align 8, !tbaa !40, !alias.scope !922
  store i32 0, ptr %i.st, align 8, !tbaa !198, !alias.scope !922
  store i32 8, ptr %i.su, align 4, !tbaa !199, !alias.scope !922
  %i.zz = icmp eq ptr %.val16.i.i, %.val15.i.i
  br i1 %i.zz, label %_ZNK12_GLOBAL__N_112AlignVectors8ByteSpan6valuesEv.exit.i.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.aaa = icmp ugt i64 %i.zy, 8
  br i1 %i.aaa, label %_ZN4llvm15SmallVectorImplIPNS_5ValueEE7reserveEm.exit.i.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i

_ZN4llvm15SmallVectorImplIPNS_5ValueEE7reserveEm.exit.i.i.i.i.i.i: ; preds = %bb.bc
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %39, ptr noundef nonnull %i.ss, i64 noundef %i.zy, i64 noundef 8) #20
  %.pre.i.i.i.i.i.i = load i32, ptr %i.st, align 8, !tbaa !198, !alias.scope !922
  %.pre13.i.i.i.i.i.i = zext i32 %.pre.i.i.i.i.i.i to i64 ; 2 uses
  %.not11.i.i.i.i.i.i = icmp samesign eq i64 %i.zy, %.pre13.i.i.i.i.i.i
  br i1 %.not11.i.i.i.i.i.i, label %_ZN4llvm11SmallVectorIPNS_5ValueELj8EEC2Em.exit.i.i.i, label %_ZN4llvm15SmallVectorImplIPNS_5ValueEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i.i.i.i

_ZN4llvm15SmallVectorImplIPNS_5ValueEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i.i.i.i: ; preds = %_ZN4llvm15SmallVectorImplIPNS_5ValueEE7reserveEm.exit.i.i.i.i.i.i
  %.pre.i.i.i.i = load ptr, ptr %39, align 8, !tbaa !40, !alias.scope !922
  br label %.lr.ph.preheader.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %_ZN4llvm15SmallVectorImplIPNS_5ValueEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i.i.i.i, %bb.bc
  %i.aab = phi ptr [ %.pre.i.i.i.i, %_ZN4llvm15SmallVectorImplIPNS_5ValueEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i.i.i.i ], [ %i.ss, %bb.bc ]
  %.pre-phi.i.i3.i.i.i.i = phi i64 [ %.pre13.i.i.i.i.i.i, %_ZN4llvm15SmallVectorImplIPNS_5ValueEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i.i.i.i ], [ 0, %bb.bc ] ; 2 uses
  %i.aac = getelementptr [8 x i8], ptr %i.aab, i64 %.pre-phi.i.i3.i.i.i.i
  %i.aad = sub nsw i64 %i.zy, %.pre-phi.i.i3.i.i.i.i
  %i.aae = shl nsw i64 %i.aad, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.aac, i8 0, i64 %i.aae, i1 false), !tbaa !377
  br label %_ZN4llvm11SmallVectorIPNS_5ValueELj8EEC2Em.exit.i.i.i

_ZN4llvm11SmallVectorIPNS_5ValueELj8EEC2Em.exit.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i, %_ZN4llvm15SmallVectorImplIPNS_5ValueEE7reserveEm.exit.i.i.i.i.i.i
  %i.aaf = trunc i64 %i.zy to i32                 ; 2 uses
  store i32 %i.aaf, ptr %i.st, align 8, !tbaa !198, !alias.scope !922
  %.not1.i.i.i = icmp eq i32 %i.aaf, 0
  %.pre18.i.i = load ptr, ptr %39, align 8, !tbaa !40 ; 11 uses
  br i1 %.not1.i.i.i, label %_ZNK12_GLOBAL__N_112AlignVectors8ByteSpan6valuesEv.exit.i.i, label %.lr.ph.i.i.i183

.lr.ph.i.i.i183:                                  ; preds = %_ZN4llvm11SmallVectorIPNS_5ValueELj8EEC2Em.exit.i.i.i
  %i.aag = and i64 %i.zy, 4294967295              ; 8 uses
  %min.iters.check986 = icmp samesign ult i64 %i.aag, 9
  br i1 %min.iters.check986, label %scalar.ph985.preheader, label %vector.memcheck978

vector.memcheck978:                               ; preds = %.lr.ph.i.i.i183
  %i.aah = shl nuw nsw i64 %i.aag, 3
  %scevgep979 = getelementptr i8, ptr %.pre18.i.i, i64 %i.aah
  %scevgep980 = getelementptr i8, ptr %.val15.i.i, i64 -16
  %i.aai = mul nuw nsw i64 %i.aag, 24
  %scevgep981 = getelementptr i8, ptr %scevgep980, i64 %i.aai
  %bound0982 = icmp ult ptr %.pre18.i.i, %scevgep981
  %bound1983 = icmp ult ptr %.val15.i.i, %scevgep979
  %found.conflict984 = and i1 %bound0982, %bound1983
  br i1 %found.conflict984, label %scalar.ph985.preheader, label %vector.ph987

vector.ph987:                                     ; preds = %vector.memcheck978
  %i.aaj = and i64 %i.zy, 3                       ; 2 uses
  %i.aak = icmp eq i64 %i.aaj, 0
  %i.aal = select i1 %i.aak, i64 4, i64 %i.aaj
  %n.vec988 = sub nsw i64 %i.aag, %i.aal          ; 2 uses
  br label %vector.body989

vector.body989:                                   ; preds = %vector.body989, %vector.ph987
  %index990 = phi i64 [ 0, %vector.ph987 ], [ %index.next991, %vector.body989 ] ; 6 uses
  %i.aam = getelementptr inbounds nuw [24 x i8], ptr %.val15.i.i, i64 %index990
  %i.aan = getelementptr inbounds nuw [24 x i8], ptr %.val15.i.i, i64 %index990
  %i.aao = getelementptr inbounds nuw i8, ptr %i.aan, i64 24
  %i.aap = getelementptr inbounds nuw [24 x i8], ptr %.val15.i.i, i64 %index990
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aap, i64 48
  %i.aar = getelementptr inbounds nuw [24 x i8], ptr %.val15.i.i, i64 %index990
  %i.aas = getelementptr inbounds nuw i8, ptr %i.aar, i64 72
  %i.aat = load ptr, ptr %i.aam, align 8, !tbaa !415, !alias.scope !923, !noalias !922
  %i.aau = load ptr, ptr %i.aao, align 8, !tbaa !415, !alias.scope !923, !noalias !922
  %i.aav = insertelement <2 x ptr> poison, ptr %i.aat, i64 0
  %i.aaw = insertelement <2 x ptr> %i.aav, ptr %i.aau, i64 1
  %i.aax = load ptr, ptr %i.aaq, align 8, !tbaa !415, !alias.scope !923, !noalias !922
  %i.aay = load ptr, ptr %i.aas, align 8, !tbaa !415, !alias.scope !923, !noalias !922
  %i.aaz = insertelement <2 x ptr> poison, ptr %i.aax, i64 0
  %i.aba = insertelement <2 x ptr> %i.aaz, ptr %i.aay, i64 1
  %i.abb = getelementptr inbounds nuw [8 x i8], ptr %.pre18.i.i, i64 %index990 ; 2 uses
  %i.abc = getelementptr inbounds nuw i8, ptr %i.abb, i64 16
  store <2 x ptr> %i.aaw, ptr %i.abb, align 8, !tbaa !377, !alias.scope !924, !noalias !923
  store <2 x ptr> %i.aba, ptr %i.abc, align 8, !tbaa !377, !alias.scope !924, !noalias !923
  %index.next991 = add nuw i64 %index990, 4       ; 2 uses
  %i.abd = icmp eq i64 %index.next991, %n.vec988
  br i1 %i.abd, label %scalar.ph985.preheader, label %vector.body989, !llvm.loop !836

scalar.ph985.preheader:                           ; preds = %vector.body989, %vector.memcheck978, %.lr.ph.i.i.i183
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %vector.memcheck978 ], [ 0, %.lr.ph.i.i.i183 ], [ %n.vec988, %vector.body989 ] ; 4 uses
  %i.abe = sub nsw i64 %i.zy, %indvars.iv.i.i.i.ph
  %xtraiter1082 = and i64 %i.abe, 3               ; 2 uses
  %lcmp.mod1083.not = icmp eq i64 %xtraiter1082, 0
  br i1 %lcmp.mod1083.not, label %scalar.ph985.prol.loopexit, label %scalar.ph985.prol

scalar.ph985.prol:                                ; preds = %scalar.ph985.preheader, %scalar.ph985.prol
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %scalar.ph985.prol ], [ %indvars.iv.i.i.i.ph, %scalar.ph985.preheader ] ; 3 uses
  %prol.iter1084 = phi i64 [ %prol.iter1084.next, %scalar.ph985.prol ], [ 0, %scalar.ph985.preheader ]
  %i.abf = getelementptr inbounds nuw [24 x i8], ptr %.val15.i.i, i64 %indvars.iv.i.i.i.prol
  %i.abg = load ptr, ptr %i.abf, align 8, !tbaa !415, !noalias !922
  %i.abh = getelementptr inbounds nuw [8 x i8], ptr %.pre18.i.i, i64 %indvars.iv.i.i.i.prol
  store ptr %i.abg, ptr %i.abh, align 8, !tbaa !377
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_112AlignVectors12realignGroupERKNS0_9MoveGroupE:bb.a
_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E24lookupOrInsertIntoBucketIS3_JS3_EEESt4pairIPS8_bEOT_DpOT0_.exit.i: ; preds = %.lr.ph.i.i291.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit.i.i
  %i.ahv = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.013.024.i.i.i) #24 ; 2 uses
  %.not.i.i224.i = icmp eq ptr %i.ahv, %i.ti
  br i1 %.not.i.i224.i, label %_ZNK12_GLOBAL__N_112AlignVectors11cloneBeforeIRSt3setIPN4llvm11InstructionENS0_9InstrLessESaIS5_EEEENS3_8DenseMapIS5_S5_NS3_12DenseMapInfoIS5_vEENS3_6detail12DenseMapPairIS5_S5_EEEENS3_21ilist_iterator_w_bitsINS3_12ilist_detail12node_optionsIS4_Lb0ELb0EvLb1ENS3_10BasicBlockEEELb0ELb0EEEOT_.exit.i.i, label %.lr.ph26.i.i.i

.lr.ph.i.i222.i:                                  ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E5beginEv.exit.i.i.i, %_ZN4llvm16DenseMapIteratorIPNS_11InstructionES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EELb0EEppEv.exit.i.i.i
  %.pn.i.i.i = phi i64 [ %i.air, %_ZN4llvm16DenseMapIteratorIPNS_11InstructionES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EELb0EEppEv.exit.i.i.i ], [ %i.aem, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E5beginEv.exit.i.i.i ] ; 2 uses
  %.sroa.05.122.i.i.i = getelementptr i8, ptr %i.ads, i64 %.pn.i.i.i ; 2 uses
  %.sroa.0.0.copyload.i.i.i185 = load ptr, ptr %.sroa.05.122.i.i.i, align 8
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.05.122.i.i.i, i64 8
  %.sroa.4.0.copyload.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8
  %i.ahw = call noundef zeroext i1 @_ZN4llvm4User17replaceUsesOfWithEPNS_5ValueES2_(ptr noundef nonnull align 8 dereferenceable(24) %i.adi, ptr noundef %.sroa.0.0.copyload.i.i.i185, ptr noundef %.sroa.4.0.copyload.i.i.i) #20 ; 0 uses
  %i.ahx = add i64 %.pn.i.i.i, 16
  %i.ahy = ashr exact i64 %i.ahx, 4               ; 3 uses
  %.not.i.i.i.i223.i = icmp ult i64 %i.ahy, %i.adx
  br i1 %.not.i.i.i.i223.i, label %bb.bs, label %._crit_edge.i.i.i186

bb.bs:                                            ; preds = %.lr.ph.i.i222.i
  %i.ahz = lshr i64 %i.ahy, 5                     ; 3 uses
  %i.aia = getelementptr inbounds nuw [4 x i8], ptr %i.adt, i64 %i.ahz
  %i.aib = load i32, ptr %i.aia, align 4, !tbaa !219
  %i.aic = trunc nuw i64 %i.ahy to i32
  %i.aid = and i32 %i.aic, 31
  %i.aie = shl nsw i32 -1, %i.aid
  %i.aif = and i32 %i.aib, %i.aie                 ; 2 uses
  %i.aig = icmp eq i32 %i.aif, 0
  br i1 %i.aig, label %.lr.ph.i.i.i.i.i200.preheader, label %_ZN4llvm16DenseMapIteratorIPNS_11InstructionES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EELb0EEppEv.exit.i.i.i

.lr.ph.i.i.i.i.i200.preheader:                    ; preds = %bb.bs
  %i.aih = add nuw nsw i64 %i.ahz, 1              ; 2 uses
  %i.aii = icmp eq i64 %i.aih, %i.adz
  br i1 %i.aii, label %._crit_edge.i.i.i186, label %.lr.ph973

.lr.ph.i.i.i.i.i200:                              ; preds = %.lr.ph973
  %i.aij = add i64 %i.ail, 1                      ; 2 uses
  %i.aik = icmp eq i64 %i.aij, %i.adz
  br i1 %i.aik, label %._crit_edge.i.i.i186, label %.lr.ph973, !llvm.loop !6

.lr.ph973:                                        ; preds = %.lr.ph.i.i.i.i.i200.preheader, %.lr.ph.i.i.i.i.i200
  %i.ail = phi i64 [ %i.aij, %.lr.ph.i.i.i.i.i200 ], [ %i.aih, %.lr.ph.i.i.i.i.i200.preheader ] ; 3 uses
  %i.aim = getelementptr inbounds nuw [4 x i8], ptr %i.adt, i64 %i.ail
  %i.ain = load i32, ptr %i.aim, align 4, !tbaa !219 ; 2 uses
  %i.aio = icmp eq i32 %i.ain, 0
  br i1 %i.aio, label %.lr.ph.i.i.i.i.i200, label %_ZN4llvm16DenseMapIteratorIPNS_11InstructionES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EELb0EEppEv.exit.i.i.i, !llvm.loop !6

_ZN4llvm16DenseMapIteratorIPNS_11InstructionES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EELb0EEppEv.exit.i.i.i: ; preds = %.lr.ph973, %bb.bs
  %.012.lcssa.i.i.i.i.i198 = phi i64 [ %i.ahz, %bb.bs ], [ %i.ail, %.lr.ph973 ]
  %.0.lcssa.i.i.i.i.i199 = phi i32 [ %i.aif, %bb.bs ], [ %i.ain, %.lr.ph973 ]
  %i.aip = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i.i.i199, i1 true)
  %.idx.i.i.i.i.i = shl i64 %.012.lcssa.i.i.i.i.i198, 9
  %i.aiq = shl nuw nsw i32 %i.aip, 4
  %.idx78.i.i.i = zext nneg i32 %i.aiq to i64
  %i.air = or disjoint i64 %.idx.i.i.i.i.i, %.idx78.i.i.i ; 2 uses
  %.not16.i.i.i = icmp eq i64 %i.air, %.idx77.i.i.i
  br i1 %.not16.i.i.i, label %._crit_edge.i.i.i186, label %.lr.ph.i.i222.i

_ZNK12_GLOBAL__N_112AlignVectors11cloneBeforeIRSt3setIPN4llvm11InstructionENS0_9InstrLessESaIS5_EEEENS3_8DenseMapIS5_S5_NS3_12DenseMapInfoIS5_vEENS3_6detail12DenseMapPairIS5_S5_EEEENS3_21ilist_iterator_w_bitsINS3_12ilist_detail12node_optionsIS4_Lb0ELb0EvLb1ENS3_10BasicBlockEEELb0ELb0EEEOT_.exit.i.i: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E24lookupOrInsertIntoBucketIS3_JS3_EEESt4pairIPS8_bEOT_DpOT0_.exit.i
  %.pre.i225.i = load ptr, ptr %33, align 8, !tbaa !303, !noalias !936
  %.pre32.i.i = load ptr, ptr %i.tr, align 8, !tbaa !398, !noalias !936 ; 4 uses
  %.pre34.i.i = load i32, ptr %i.ts, align 4, !tbaa !302, !noalias !936 ; 6 uses
  %.pre36.i.i = load i32, ptr %i.tt, align 8, !tbaa !399, !noalias !936
  %i.ais = icmp eq i32 %.pre36.i.i, 0
  %i.ait = zext i32 %.pre34.i.i to i64            ; 3 uses
  %.idx80.i.i = shl nuw nsw i64 %i.ait, 4         ; 2 uses
  %.not.i.not.i.i.i.i187 = icmp eq i32 %.pre34.i.i, 0
  %or.cond.i.i188 = select i1 %i.ais, i1 true, i1 %.not.i.not.i.i.i.i187
  br i1 %or.cond.i.i188, label %._crit_edge.i230.i, label %bb.bt

bb.bt:                                            ; preds = %_ZNK12_GLOBAL__N_112AlignVectors11cloneBeforeIRSt3setIPN4llvm11InstructionENS0_9InstrLessESaIS5_EEEENS3_8DenseMapIS5_S5_NS3_12DenseMapInfoIS5_vEENS3_6detail12DenseMapPairIS5_S5_EEEENS3_21ilist_iterator_w_bitsINS3_12ilist_detail12node_optionsIS4_Lb0ELb0EvLb1ENS3_10BasicBlockEEELb0ELb0EEEOT_.exit.i.i
  %i.aiu = add nuw nsw i64 %i.ait, 31
  %i.aiv = lshr i64 %i.aiu, 5                     ; 4 uses
  %i.aiw = load i32, ptr %.pre32.i.i, align 4, !tbaa !219, !noalias !937 ; 2 uses
  %i.aix = icmp eq i32 %i.aiw, 0
  br i1 %i.aix, label %.lr.ph.i.i.i8.i.i.preheader, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E5beginEv.exit.i.i

.lr.ph.i.i.i8.i.i.preheader:                      ; preds = %bb.bt
  %i.aiy = icmp eq i64 %i.aiv, 1
  br i1 %i.aiy, label %._crit_edge.i230.i, label %.lr.ph974

.lr.ph.i.i.i8.i.i:                                ; preds = %.lr.ph974
  %i.aiz = add nuw nsw i64 %i.ajb, 1              ; 2 uses
  %i.aja = icmp eq i64 %i.aiz, %i.aiv
  br i1 %i.aja, label %._crit_edge.i230.i, label %.lr.ph974, !llvm.loop !6

.lr.ph974:                                        ; preds = %.lr.ph.i.i.i8.i.i.preheader, %.lr.ph.i.i.i8.i.i
  %i.ajb = phi i64 [ %i.aiz, %.lr.ph.i.i.i8.i.i ], [ 1, %.lr.ph.i.i.i8.i.i.preheader ] ; 3 uses
  %i.ajc = getelementptr inbounds nuw [4 x i8], ptr %.pre32.i.i, i64 %i.ajb
  %i.ajd = load i32, ptr %i.ajc, align 4, !tbaa !219, !noalias !937 ; 2 uses
  %i.aje = icmp eq i32 %i.ajd, 0
  br i1 %i.aje, label %.lr.ph.i.i.i8.i.i, label %._crit_edge.i.loopexit.i.i.i.i197, !llvm.loop !6

._crit_edge.i.loopexit.i.i.i.i197:                ; preds = %.lr.ph974
  %i.ajf = shl i64 %i.ajb, 9
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E5beginEv.exit.i.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E5beginEv.exit.i.i: ; preds = %._crit_edge.i.loopexit.i.i.i.i197, %bb.bt
  %.012.lcssa.i.i.i6.i.i = phi i64 [ 0, %bb.bt ], [ %i.ajf, %._crit_edge.i.loopexit.i.i.i.i197 ]
  %.0.lcssa.i.i.i7.i.i = phi i32 [ %i.aiw, %bb.bt ], [ %i.ajd, %._crit_edge.i.loopexit.i.i.i.i197 ]
  %i.ajg = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i7.i.i, i1 true)
  %i.ajh = shl nuw nsw i32 %i.ajg, 4
  %.idx.i.i189 = zext nneg i32 %i.ajh to i64
  %i.aji = or disjoint i64 %.012.lcssa.i.i.i6.i.i, %.idx.i.i189 ; 2 uses
  %.not20.i.i = icmp eq i64 %i.aji, %.idx80.i.i
  br i1 %.not20.i.i, label %._crit_edge.i230.i, label %.lr.ph.i226.i

._crit_edge.loopexit.i.i:                         ; preds = %_ZN4llvm16DenseMapIteratorIPNS_11InstructionES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EELb0EEppEv.exit.i.i, %.lr.ph.i226.i, %.lr.ph.i.i.i.i195.preheader, %.lr.ph.i.i.i.i195
  %.pre37.i.i = load i32, ptr %i.ts, align 4, !tbaa !302
  br label %._crit_edge.i230.i

._crit_edge.i230.i:                               ; preds = %.lr.ph.i.i.i8.i.i, %.lr.ph.i.i.i8.i.i.preheader, %._crit_edge.loopexit.i.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E5beginEv.exit.i.i, %_ZNK12_GLOBAL__N_112AlignVectors11cloneBeforeIRSt3setIPN4llvm11InstructionENS0_9InstrLessESaIS5_EEEENS3_8DenseMapIS5_S5_NS3_12DenseMapInfoIS5_vEENS3_6detail12DenseMapPairIS5_S5_EEEENS3_21ilist_iterator_w_bitsINS3_12ilist_detail12node_optionsIS4_Lb0ELb0EvLb1ENS3_10BasicBlockEEELb0ELb0EEEOT_.exit.i.i
  %i.ajj = phi i32 [ %.pre37.i.i, %._crit_edge.loopexit.i.i ], [ %.pre34.i.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E5beginEv.exit.i.i ], [ %.pre34.i.i, %_ZNK12_GLOBAL__N_112AlignVectors11cloneBeforeIRSt3setIPN4llvm11InstructionENS0_9InstrLessESaIS5_EEEENS3_8DenseMapIS5_S5_NS3_12DenseMapInfoIS5_vEENS3_6detail12DenseMapPairIS5_S5_EEEENS3_21ilist_iterator_w_bitsINS3_12ilist_detail12node_optionsIS4_Lb0ELb0EvLb1ENS3_10BasicBlockEEELb0ELb0EEEOT_.exit.i.i ], [ %.pre34.i.i, %.lr.ph.i.i.i8.i.i.preheader ], [ %.pre34.i.i, %.lr.ph.i.i.i8.i.i ] ; 2 uses
  %i.ajk = icmp eq i32 %i.ajj, 0
  br i1 %i.ajk, label %"_ZZNK12_GLOBAL__N_112AlignVectors16realignLoadGroupERN4llvm13IRBuilderBaseERKNS0_8ByteSpanEiPNS1_5ValueES8_ENK3$_4clENS1_21ilist_iterator_w_bitsINS1_12ilist_detail12node_optionsINS1_11InstructionELb0ELb0EvLb1ENS1_10BasicBlockEEELb0ELb0EEESG_.exit.i", label %bb.bu

bb.bu:                                            ; preds = %._crit_edge.i230.i
  %i.ajl = load ptr, ptr %33, align 8, !tbaa !303
  %i.ajm = zext i32 %i.ajj to i64                 ; 2 uses
  %i.ajn = shl nuw nsw i64 %i.ajm, 4
  %i.ajo = add nuw nsw i64 %i.ajm, 31
  %i.ajp = lshr i64 %i.ajo, 3
  %i.ajq = and i64 %i.ajp, 1073741820
  %i.ajr = add nuw nsw i64 %i.ajq, %i.ajn
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ajl, i64 noundef %i.ajr, i64 noundef 8) #20
  br label %"_ZZNK12_GLOBAL__N_112AlignVectors16realignLoadGroupERN4llvm13IRBuilderBaseERKNS0_8ByteSpanEiPNS1_5ValueES8_ENK3$_4clENS1_21ilist_iterator_w_bitsINS1_12ilist_detail12node_optionsINS1_11InstructionELb0ELb0EvLb1ENS1_10BasicBlockEEELb0ELb0EEESG_.exit.i"

.lr.ph.i226.i:                                    ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E5beginEv.exit.i.i, %_ZN4llvm16DenseMapIteratorIPNS_11InstructionES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EELb0EEppEv.exit.i.i
  %.pn.i.i190 = phi i64 [ %i.akn, %_ZN4llvm16DenseMapIteratorIPNS_11InstructionES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EELb0EEppEv.exit.i.i ], [ %i.aji, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E5beginEv.exit.i.i ] ; 2 uses
  %.sroa.01.121.i.i = getelementptr i8, ptr %.pre.i225.i, i64 %.pn.i.i190 ; 2 uses
  %.sroa.0.0.copyload.i227.i = load ptr, ptr %.sroa.01.121.i.i, align 8
  %.sroa.4.0..sroa_idx.i228.i = getelementptr inbounds nuw i8, ptr %.sroa.01.121.i.i, i64 8
  %.sroa.4.0.copyload.i.i191 = load ptr, ptr %.sroa.4.0..sroa_idx.i228.i, align 8
  %i.ajs = call noundef zeroext i1 @_ZN4llvm4User17replaceUsesOfWithEPNS_5ValueES2_(ptr noundef nonnull align 8 dereferenceable(24) %.1.i.i.i, ptr noundef %.sroa.0.0.copyload.i227.i, ptr noundef %.sroa.4.0.copyload.i.i191) #20 ; 0 uses
  %i.ajt = add i64 %.pn.i.i190, 16
  %i.aju = ashr exact i64 %i.ajt, 4               ; 3 uses
  %.not.i.i.i229.i = icmp ult i64 %i.aju, %i.ait
  br i1 %.not.i.i.i229.i, label %bb.bv, label %._crit_edge.loopexit.i.i

bb.bv:                                            ; preds = %.lr.ph.i226.i
  %i.ajv = lshr i64 %i.aju, 5                     ; 3 uses
  %i.ajw = getelementptr inbounds nuw [4 x i8], ptr %.pre32.i.i, i64 %i.ajv
  %i.ajx = load i32, ptr %i.ajw, align 4, !tbaa !219
  %i.ajy = trunc nuw i64 %i.aju to i32
  %i.ajz = and i32 %i.ajy, 31
  %i.aka = shl nsw i32 -1, %i.ajz
  %i.akb = and i32 %i.ajx, %i.aka                 ; 2 uses
  %i.akc = icmp eq i32 %i.akb, 0
  br i1 %i.akc, label %.lr.ph.i.i.i.i195.preheader, label %_ZN4llvm16DenseMapIteratorIPNS_11InstructionES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EELb0EEppEv.exit.i.i

.lr.ph.i.i.i.i195.preheader:                      ; preds = %bb.bv
  %i.akd = add nuw nsw i64 %i.ajv, 1              ; 2 uses
  %i.ake = icmp eq i64 %i.akd, %i.aiv
  br i1 %i.ake, label %._crit_edge.loopexit.i.i, label %.lr.ph975

.lr.ph.i.i.i.i195:                                ; preds = %.lr.ph975
  %i.akf = add i64 %i.akh, 1                      ; 2 uses
  %i.akg = icmp eq i64 %i.akf, %i.aiv
  br i1 %i.akg, label %._crit_edge.loopexit.i.i, label %.lr.ph975, !llvm.loop !6

.lr.ph975:                                        ; preds = %.lr.ph.i.i.i.i195.preheader, %.lr.ph.i.i.i.i195
  %i.akh = phi i64 [ %i.akf, %.lr.ph.i.i.i.i195 ], [ %i.akd, %.lr.ph.i.i.i.i195.preheader ] ; 3 uses
  %i.aki = getelementptr inbounds nuw [4 x i8], ptr %.pre32.i.i, i64 %i.akh
  %i.akj = load i32, ptr %i.aki, align 4, !tbaa !219 ; 2 uses
  %i.akk = icmp eq i32 %i.akj, 0
  br i1 %i.akk, label %.lr.ph.i.i.i.i195, label %_ZN4llvm16DenseMapIteratorIPNS_11InstructionES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EELb0EEppEv.exit.i.i, !llvm.loop !6

_ZN4llvm16DenseMapIteratorIPNS_11InstructionES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EELb0EEppEv.exit.i.i: ; preds = %.lr.ph975, %bb.bv
  %.012.lcssa.i.i.i.i192 = phi i64 [ %i.ajv, %bb.bv ], [ %i.akh, %.lr.ph975 ]
  %.0.lcssa.i.i.i.i193 = phi i32 [ %i.akb, %bb.bv ], [ %i.akj, %.lr.ph975 ]
  %i.akl = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i.i193, i1 true)
  %.idx.i.i.i.i194 = shl i64 %.012.lcssa.i.i.i.i192, 9
  %i.akm = shl nuw nsw i32 %i.akl, 4
  %.idx81.i.i = zext nneg i32 %i.akm to i64
  %i.akn = or disjoint i64 %.idx.i.i.i.i194, %.idx81.i.i ; 2 uses
  %.not.i232.i = icmp eq i64 %i.akn, %.idx80.i.i
  br i1 %.not.i232.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i226.i

"_ZZNK12_GLOBAL__N_112AlignVectors16realignLoadGroupERN4llvm13IRBuilderBaseERKNS0_8ByteSpanEiPNS1_5ValueES8_ENK3$_4clENS1_21ilist_iterator_w_bitsINS1_12ilist_detail12node_optionsINS1_11InstructionELb0ELb0EvLb1ENS1_10BasicBlockEEELb0ELb0EEESG_.exit.i": ; preds = %bb.bu, %._crit_edge.i230.i, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #20
  %.val.i231.i = load ptr, ptr %i.tu, align 8, !tbaa !297
  call fastcc void @_ZNSt8_Rb_treeIPN4llvm11InstructionES2_St9_IdentityIS2_EN12_GLOBAL__N_112AlignVectors9InstrLessESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef %.val.i231.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #20
  br label %"_ZSt3minIPN4llvm11InstructionEZNK12_GLOBAL__N_112AlignVectors16realignLoadGroupERNS0_13IRBuilderBaseERKNS4_8ByteSpanEiPNS0_5ValueESB_E3$_0ERKT_SF_SF_T0_.exit212.thread368.i"

"_ZSt3minIPN4llvm11InstructionEZNK12_GLOBAL__N_112AlignVectors16realignLoadGroupERNS0_13IRBuilderBaseERKNS4_8ByteSpanEiPNS0_5ValueESB_E3$_0ERKT_SF_SF_T0_.exit212.thread368.i": ; preds = %"_ZZNK12_GLOBAL__N_112AlignVectors16realignLoadGroupERN4llvm13IRBuilderBaseERKNS0_8ByteSpanEiPNS1_5ValueES8_ENK3$_4clENS1_21ilist_iterator_w_bitsINS1_12ilist_detail12node_optionsINS1_11InstructionELb0ELb0EvLb1ENS1_10BasicBlockEEELb0ELb0EEESG_.exit.i", %_ZNSt6vectorIPN4llvm11InstructionESaIS2_EED2Ev.exit.i, %"_ZZNK12_GLOBAL__N_112AlignVectors16realignLoadGroupERN4llvm13IRBuilderBaseERKNS0_8ByteSpanEiPNS1_5ValueES8_ENK3$_3clES3_S6_ib.exit.i", %"_ZSt3minIPN4llvm11InstructionEZNK12_GLOBAL__N_112AlignVectors16realignLoadGroupERNS0_13IRBuilderBaseERKNS4_8ByteSpanEiPNS0_5ValueESB_E3$_0ERKT_SF_SF_T0_.exit212.i", %.thread363.i, %.thread363.thread.i
  %indvars.iv.next482.i = add nuw nsw i64 %indvars.iv481.i, 1
  %.not131.i = icmp eq i64 %indvars.iv481.i, %i.tw
  br i1 %.not131.i, label %.preheader.i, label %bb.aw, !llvm.loop !869

._crit_edge435.i:                                 ; preds = %bb.bz, %.preheader.i
  br i1 %.not372424.i, label %._crit_edge456.i, label %.lr.ph455.i

.lr.ph455.i:                                      ; preds = %._crit_edge435.i
  %i.ako = getelementptr inbounds nuw i8, ptr %45, i64 8
  %i.akp = getelementptr inbounds nuw i8, ptr %45, i64 16
  %i.akq = getelementptr inbounds nuw i8, ptr %46, i64 32
  %i.akr = getelementptr inbounds nuw i8, ptr %46, i64 33
  %i.aks = getelementptr inbounds nuw i8, ptr %47, i64 32
  %i.akt = getelementptr inbounds nuw i8, ptr %47, i64 33
  br label %bb.cc

.lr.ph434.i:                                      ; preds = %bb.bz, %.lr.ph434.preheader.i
  %indvars.iv484.i = phi i64 [ 0, %.lr.ph434.preheader.i ], [ %indvars.iv.next485.i, %bb.bz ] ; 3 uses
  %i.aku = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0329.0.lcssa551.i, i64 %indvars.iv484.i ; 3 uses
  store ptr null, ptr %i.aku, align 8, !tbaa !415
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  store ptr %i.aku, ptr %i.d, align 8, !tbaa !41
  %i.akv = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPvPNS_11InstructionENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEES2_S4_S6_S9_E24lookupOrInsertIntoBucketIS2_JEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %42, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  %.fca.0.extract.i234.i = extractvalue { ptr, i8 } %i.akv, 0
  %i.akw = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i234.i, i64 8
  %i.akx = load ptr, ptr %i.akw, align 8, !tbaa !218 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  %.not134.i = icmp eq ptr %i.akx, null
  br i1 %.not134.i, label %bb.bz, label %bb.bw

bb.bw:                                            ; preds = %.lr.ph434.i
  %i.aky = getelementptr inbounds nuw i8, ptr %i.akx, i64 24
  %i.akz = getelementptr inbounds nuw i8, ptr %i.akx, i64 40
  %i.ala = load ptr, ptr %i.akz, align 8, !tbaa !266
  store ptr %i.ala, ptr %i.gk, align 8, !tbaa !367
  store ptr %i.aky, ptr %i.gp, align 8
  store i16 0, ptr %.sroa.45.0..sroa_idx.i.i, align 8
  %i.alb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm11Instruction17getStableDebugLocEv(ptr noundef nonnull align 8 dereferenceable(72) %i.akx) #20
  %i.alc = load i64, ptr %i.alb, align 8, !tbaa !368
  store i64 %i.alc, ptr %54, align 8, !tbaa !368
  %i.ald = load ptr, ptr %41, align 8, !tbaa !40
  %i.ale = getelementptr inbounds nuw [8 x i8], ptr %i.ald, i64 %indvars.iv484.i ; 2 uses
  %i.alf = load ptr, ptr %i.ale, align 8, !tbaa !377 ; 2 uses
  br i1 %spec.select.i.i176, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.alg = getelementptr inbounds nuw i8, ptr %i.ale, i64 8
  %i.alh = load ptr, ptr %i.alg, align 8, !tbaa !377
  %i.ali = load ptr, ptr %i.fn, align 8, !tbaa !235, !nonnull !37, !align !252
  %i.alj = call fastcc noundef ptr @_ZNK12_GLOBAL__N_120HexagonVectorCombine8vralignbERN4llvm13IRBuilderBaseEPNS1_5ValueES5_S5_(ptr noundef nonnull align 8 dereferenceable(72) %i.ali, ptr noundef nonnull align 8 dereferenceable(88) %54, ptr noundef %i.alf, ptr noundef %i.alh, ptr noundef nonnull %.081)
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %.0124.i = phi ptr [ %i.alj, %bb.bx ], [ %i.alf, %bb.bw ]
  store ptr %.0124.i, ptr %i.aku, align 8, !tbaa !415
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %.lr.ph434.i
  %indvars.iv.next485.i = add nuw nsw i64 %indvars.iv484.i, 1 ; 2 uses
  %.not132.i = icmp eq i64 %indvars.iv.next485.i, %.pre-phi
  br i1 %.not132.i, label %._crit_edge435.i, label %.lr.ph434.i, !llvm.loop !870

._crit_edge456.i:                                 ; preds = %_ZN12_GLOBAL__N_112AlignVectors8ByteSpanD2Ev.exit263.i, %._crit_edge435.i
  %i.alk = getelementptr inbounds nuw i8, ptr %42, i64 20
  %i.all = load i32, ptr %i.alk, align 4, !tbaa !425 ; 2 uses
  %i.alm = icmp eq i32 %i.all, 0
  br i1 %i.alm, label %_ZN4llvm8DenseMapIPvPNS_11InstructionENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S3_EEED2Ev.exit.i, label %bb.ca

bb.ca:                                            ; preds = %._crit_edge456.i
  %i.aln = load ptr, ptr %42, align 8, !tbaa !423
  %i.alo = zext i32 %i.all to i64                 ; 2 uses
  %i.alp = shl nuw nsw i64 %i.alo, 4
  %i.alq = add nuw nsw i64 %i.alo, 31
  %i.alr = lshr i64 %i.alq, 3
  %i.als = and i64 %i.alr, 1073741820
  %i.alt = add nuw nsw i64 %i.als, %i.alp
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aln, i64 noundef %i.alt, i64 noundef 8) #20
  br label %_ZN4llvm8DenseMapIPvPNS_11InstructionENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S3_EEED2Ev.exit.i

_ZN4llvm8DenseMapIPvPNS_11InstructionENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S3_EEED2Ev.exit.i: ; preds = %bb.ca, %._crit_edge456.i
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #20
  %i.alu = load ptr, ptr %41, align 8, !tbaa !40  ; 2 uses
  %i.alv = icmp eq ptr %i.alu, %i.qw
  br i1 %i.alv, label %_ZN4llvm11SmallVectorIPNS_5ValueELj6EED2Ev.exit.i, label %bb.cb

bb.cb:                                            ; preds = %_ZN4llvm8DenseMapIPvPNS_11InstructionENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S3_EEED2Ev.exit.i
  call void @free(ptr noundef %i.alu) #20
  br label %_ZN4llvm11SmallVectorIPNS_5ValueELj6EED2Ev.exit.i

_ZN4llvm11SmallVectorIPNS_5ValueELj6EED2Ev.exit.i: ; preds = %bb.cb, %_ZN4llvm8DenseMapIPvPNS_11InstructionENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S3_EEED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #20
  %.not.i.i.i.i236.i = icmp eq ptr %.sroa.0329.0.lcssa551.i, null
  br i1 %.not.i.i.i.i236.i, label %_ZNK12_GLOBAL__N_112AlignVectors16realignLoadGroupERN4llvm13IRBuilderBaseERKNS0_8ByteSpanEiPNS1_5ValueES8_.exit, label %_ZNK12_GLOBAL__N_112AlignVectors16realignLoadGroupERN4llvm13IRBuilderBaseERKNS0_8ByteSpanEiPNS1_5ValueES8_.exit.sink.split

bb.cc:                                            ; preds = %_ZN12_GLOBAL__N_112AlignVectors8ByteSpanD2Ev.exit263.i, %.lr.ph455.i
  %.sroa.0306.0453.i = phi ptr [ %.sroa.0317.0.lcssa, %.lr.ph455.i ], [ %i.ata, %_ZN12_GLOBAL__N_112AlignVectors8ByteSpanD2Ev.exit263.i ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #20
  %i.alw = getelementptr inbounds nuw i8, ptr %.sroa.0306.0453.i, i64 16 ; 2 uses
  %i.alx = load i32, ptr %i.alw, align 8, !tbaa !412
  %i.aly = getelementptr inbounds nuw i8, ptr %.sroa.0306.0453.i, i64 12 ; 2 uses
  %i.alz = load i32, ptr %i.aly, align 4, !tbaa !414
  call fastcc void @_ZNK12_GLOBAL__N_112AlignVectors8ByteSpan7sectionEii(ptr dead_on_unwind noalias writable align 8 %45, ptr %.sroa.0329.0.lcssa551.i, ptr %.sroa.15.0.lcssa552.i, i32 noundef %i.alx, i32 noundef %i.alz)
  %i.ama = load i32, ptr %i.alw, align 8, !tbaa !412
  %.val4.i.i = load ptr, ptr %45, align 8, !tbaa !417 ; 7 uses
  %.val.i238.i = load ptr, ptr %i.ako, align 8, !tbaa !417 ; 3 uses
  %.not9.i.i = icmp eq ptr %.val4.i.i, %.val.i238.i
  br i1 %.not9.i.i, label %_ZNSt12_Vector_baseIN12_GLOBAL__N_112AlignVectors8ByteSpan5BlockESaIS3_EEC2EmRKS4_.exit.i.thread.i.i, label %.lr.ph.i239.i

.lr.ph.i239.i:                                    ; preds = %bb.cc, %.lr.ph.i239.i
  %.sroa.08.010.i.i = phi ptr [ %i.ame, %.lr.ph.i239.i ], [ %.val4.i.i, %bb.cc ] ; 2 uses
  %i.amb = getelementptr inbounds nuw i8, ptr %.sroa.08.010.i.i, i64 16 ; 2 uses
  %i.amc = load i32, ptr %i.amb, align 8, !tbaa !412
  %i.amd = sub nsw i32 %i.amc, %i.ama
  store i32 %i.amd, ptr %i.amb, align 8, !tbaa !412
  %i.ame = getelementptr inbounds nuw i8, ptr %.sroa.08.010.i.i, i64 24 ; 2 uses
  %.not.i240.i = icmp eq ptr %i.ame, %.val.i238.i
  br i1 %.not.i240.i, label %bb.cd, label %.lr.ph.i239.i

_ZNSt12_Vector_baseIN12_GLOBAL__N_112AlignVectors8ByteSpan5BlockESaIS3_EEC2EmRKS4_.exit.i.thread.i.i: ; preds = %bb.cc
  %i.amf = ptrtoint ptr %.val4.i.i to i64
  br label %_ZN12_GLOBAL__N_112AlignVectors8ByteSpanC2ERKS1_.exit.i

bb.cd:                                            ; preds = %.lr.ph.i239.i
  %i.amg = ptrtoint ptr %.val.i238.i to i64
  %i.amh = ptrtoint ptr %.val4.i.i to i64         ; 2 uses
  %i.ami = sub i64 %i.amg, %i.amh
  %reass.sub.fr.i = freeze i64 %i.ami             ; 4 uses
  %i.amj = sdiv exact i64 %reass.sub.fr.i, 24
  %i.amk = icmp ugt i64 %i.amj, 384307168202282325
  br i1 %i.amk, label %bb.ce, label %_ZNSt12_Vector_baseIN12_GLOBAL__N_112AlignVectors8ByteSpan5BlockESaIS3_EEC2EmRKS4_.exit.i.i.i, !prof !381

bb.ce:                                            ; preds = %bb.cd
  call void @_ZSt28__throw_bad_array_new_lengthv() #21
  unreachable

_ZNSt12_Vector_baseIN12_GLOBAL__N_112AlignVectors8ByteSpan5BlockESaIS3_EEC2EmRKS4_.exit.i.i.i: ; preds = %bb.cd
  %i.aml = call noalias noundef nonnull ptr @_Znwm(i64 noundef %reass.sub.fr.i) #22 ; 4 uses
  %i.amm = getelementptr inbounds nuw i8, ptr %i.aml, i64 %reass.sub.fr.i
  %i.amn = add i64 %reass.sub.fr.i, -24           ; 2 uses
  %i.amo = urem i64 %i.amn, 24
  %i.amp = sub nuw i64 %i.amn, %i.amo
  %i.amq = add i64 %i.amp, 24                     ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.aml, ptr align 8 %.val4.i.i, i64 %i.amq, i1 false)
  %scevgep.i.i = getelementptr i8, ptr %i.aml, i64 %i.amq
  %i.amr = ptrtoint ptr %i.amm to i64
  br label %_ZN12_GLOBAL__N_112AlignVectors8ByteSpanC2ERKS1_.exit.i

_ZN12_GLOBAL__N_112AlignVectors8ByteSpanC2ERKS1_.exit.i: ; preds = %_ZNSt12_Vector_baseIN12_GLOBAL__N_112AlignVectors8ByteSpan5BlockESaIS3_EEC2EmRKS4_.exit.i.i.i, %_ZNSt12_Vector_baseIN12_GLOBAL__N_112AlignVectors8ByteSpan5BlockESaIS3_EEC2EmRKS4_.exit.i.thread.i.i
  %i.ams = phi i64 [ %i.amf, %_ZNSt12_Vector_baseIN12_GLOBAL__N_112AlignVectors8ByteSpan5BlockESaIS3_EEC2EmRKS4_.exit.i.thread.i.i ], [ %i.amh, %_ZNSt12_Vector_baseIN12_GLOBAL__N_112AlignVectors8ByteSpan5BlockESaIS3_EEC2EmRKS4_.exit.i.i.i ]
  %.sroa.0304.0.i = phi ptr [ null, %_ZNSt12_Vector_baseIN12_GLOBAL__N_112AlignVectors8ByteSpan5BlockESaIS3_EEC2EmRKS4_.exit.i.thread.i.i ], [ %i.aml, %_ZNSt12_Vector_baseIN12_GLOBAL__N_112AlignVectors8ByteSpan5BlockESaIS3_EEC2EmRKS4_.exit.i.i.i ] ; 5 uses
  %.sroa.11.0.i = phi i64 [ 0, %_ZNSt12_Vector_baseIN12_GLOBAL__N_112AlignVectors8ByteSpan5BlockESaIS3_EEC2EmRKS4_.exit.i.thread.i.i ], [ %i.amr, %_ZNSt12_Vector_baseIN12_GLOBAL__N_112AlignVectors8ByteSpan5BlockESaIS3_EEC2EmRKS4_.exit.i.i.i ]
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIN12_GLOBAL__N_112AlignVectors8ByteSpan5BlockESaIS3_EEC2EmRKS4_.exit.i.thread.i.i ], [ %scevgep.i.i, %_ZNSt12_Vector_baseIN12_GLOBAL__N_112AlignVectors8ByteSpan5BlockESaIS3_EEC2EmRKS4_.exit.i.i.i ] ; 2 uses
  %.not.i.i.i.i243.i = icmp eq ptr %.val4.i.i, null
  br i1 %.not.i.i.i.i243.i, label %_ZN12_GLOBAL__N_112AlignVectors8ByteSpanD2Ev.exit244.i, label %bb.cf

bb.cf:                                            ; preds = %_ZN12_GLOBAL__N_112AlignVectors8ByteSpanC2ERKS1_.exit.i
  %.val173.i = load ptr, ptr %i.akp, align 8, !tbaa !420
  %i.amt = ptrtoint ptr %.val173.i to i64
  %i.amu = sub i64 %i.amt, %i.ams
  call void @_ZdlPvm(ptr noundef nonnull %.val4.i.i, i64 noundef %i.amu) #23
  br label %_ZN12_GLOBAL__N_112AlignVectors8ByteSpanD2Ev.exit244.i

_ZN12_GLOBAL__N_112AlignVectors8ByteSpanD2Ev.exit244.i: ; preds = %bb.cf, %_ZN12_GLOBAL__N_112AlignVectors8ByteSpanC2ERKS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #20
  %i.amv = load ptr, ptr %i.fn, align 8, !tbaa !235, !nonnull !37, !align !252
  %i.amw = load i32, ptr %i.aly, align 4, !tbaa !414 ; 2 uses
  %.val138.i = load ptr, ptr %i.amv, align 8, !tbaa !298
  %i.amx = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm8Function10getContextEv(ptr noundef nonnull align 8 dereferenceable(140) %.val138.i) #20
  %i.amy = call noundef ptr @_ZN4llvm4Type9getInt8TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.amx) #20 ; 2 uses
  %i.amz = icmp eq i32 %i.amw, 0
  br i1 %i.amz, label %_ZNK12_GLOBAL__N_120HexagonVectorCombine9getByteTyEi.exit247.i, label %bb.cg

bb.cg:                                            ; preds = %_ZN12_GLOBAL__N_112AlignVectors8ByteSpanD2Ev.exit244.i
  %.sroa.0.0.insert.ext.i.i.i245.i = zext i32 %i.amw to i64
  %i.ana = call noundef ptr @_ZN4llvm10VectorType3getEPNS_4TypeENS_12ElementCountE(ptr noundef %i.amy, i64 %.sroa.0.0.insert.ext.i.i.i245.i) #20
  br label %_ZNK12_GLOBAL__N_120HexagonVectorCombine9getByteTyEi.exit247.i

_ZNK12_GLOBAL__N_120HexagonVectorCombine9getByteTyEi.exit247.i: ; preds = %bb.cg, %_ZN12_GLOBAL__N_112AlignVectors8ByteSpanD2Ev.exit244.i
  %.0.i246.i = phi ptr [ %i.ana, %bb.cg ], [ %i.amy, %_ZN12_GLOBAL__N_112AlignVectors8ByteSpanD2Ev.exit244.i ]
  %i.anb = call noundef ptr @_ZN4llvm10UndefValue3getEPNS_4TypeE(ptr noundef %.0.i246.i) #20 ; 3 uses
  %i.anc = load ptr, ptr %.sroa.0306.0453.i, align 8, !tbaa !415 ; 3 uses
  %i.and = getelementptr inbounds nuw i8, ptr %i.anc, i64 24
  %i.ane = getelementptr inbounds nuw i8, ptr %i.anc, i64 40
  %i.anf = load ptr, ptr %i.ane, align 8, !tbaa !266
  store ptr %i.anf, ptr %i.gk, align 8, !tbaa !367
  store ptr %i.and, ptr %i.gp, align 8
  store i16 0, ptr %.sroa.45.0..sroa_idx.i.i, align 8
  %i.ang = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm11Instruction17getStableDebugLocEv(ptr noundef nonnull align 8 dereferenceable(72) %i.anc) #20
  %i.anh = load i64, ptr %i.ang, align 8, !tbaa !368
  store i64 %i.anh, ptr %54, align 8, !tbaa !368
  %.not375436.i = icmp eq ptr %.sroa.0304.0.i, %.0.lcssa.i.i.i.i.i.i.i
  br i1 %.not375436.i, label %._crit_edge450.i, label %.lr.ph441.i

._crit_edge442.i:                                 ; preds = %_ZNSt6vectorIPN12_GLOBAL__N_112AlignVectors8ByteSpan5BlockESaIS4_EE9push_backEOS4_.exit.i
  %i.ani = ptrtoint ptr %.sroa.13.1.i to i64      ; 2 uses
  %.not.i.i.i.i249.i = icmp eq ptr %.sroa.0302.1.i, %.sroa.8.1.i
  br i1 %.not.i.i.i.i249.i, label %._crit_edge450.i, label %bb.ch

bb.ch:                                            ; preds = %._crit_edge442.i
  %i.anj = ptrtoint ptr %.sroa.8.1.i to i64
  %i.ank = ptrtoint ptr %.sroa.0302.1.i to i64    ; 2 uses
  %i.anl = sub i64 %i.anj, %i.ank                 ; 2 uses
  %i.anm = ashr exact i64 %i.anl, 3
  %i.ann = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.anm, i1 true)
  %i.ano = shl nuw nsw i64 %i.ann, 1
  %i.anp = xor i64 %i.ano, 126
  call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_112AlignVectors8ByteSpan5BlockESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterIZNKS3_16realignLoadGroupERN4llvm13IRBuilderBaseERKS4_iPNSE_5ValueESK_E3$_2EEEvT_SN_T0_T1_"(ptr %.sroa.0302.1.i, ptr %.sroa.8.1.i, i64 noundef %i.anp)
  %i.anq = icmp sgt i64 %i.anl, 128
  %scevgep.i.i.i.i.i.i = getelementptr i8, ptr %.sroa.0302.1.i, i64 8 ; 3 uses
  br i1 %i.anq, label %.lr.ph.i.i.i.i.i.i.i, label %bb.cq

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.ch, %bb.cn
  %.sroa.0.025.i.idx.i.i.i.i.i.i = phi i64 [ %.sroa.0.025.i.add.i.i.i.i.i.i, %bb.cn ], [ 8, %bb.ch ] ; 4 uses
  %.pn24.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.025.i.ptr.i.i.i.i.i.i, %bb.cn ], [ %.sroa.0302.1.i, %bb.ch ]
  %.sroa.0.025.i.ptr.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0302.1.i, i64 %.sroa.0.025.i.idx.i.i.i.i.i.i ; 4 uses
  %i.anr = load ptr, ptr %.sroa.0.025.i.ptr.i.i.i.i.i.i, align 8, !tbaa !417 ; 3 uses
  %i.ans = load ptr, ptr %.sroa.0302.1.i, align 8, !tbaa !417
  %.val2.i.i.i.i.i.i.i.i = load ptr, ptr %i.anr, align 8, !tbaa !415 ; 2 uses
  %.val3.i.i.i.i.i.i.i.i = load ptr, ptr %i.ans, align 8, !tbaa !415 ; 2 uses
  %i.ant = icmp eq ptr %.val3.i.i.i.i.i.i.i.i, null
  br i1 %i.ant, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK12_GLOBAL__N_112AlignVectors16realignLoadGroupERN4llvm13IRBuilderBaseERKNS3_8ByteSpanEiPNS4_5ValueESB_E3$_2EclINS_17__normal_iteratorIPPNS7_5BlockESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit.thread.i.i.i.i.i.i.i", label %bb.ci

bb.ci:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.anu = icmp eq ptr %.val2.i.i.i.i.i.i.i.i, null
  br i1 %i.anu, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK12_GLOBAL__N_112AlignVectors16realignLoadGroupERN4llvm13IRBuilderBaseERKNS3_8ByteSpanEiPNS4_5ValueESB_E3$_2EclINS_17__normal_iteratorIPPNS7_5BlockESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit.thread20.i.i.i.i.i.i.i", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK12_GLOBAL__N_112AlignVectors16realignLoadGroupERN4llvm13IRBuilderBaseERKNS3_8ByteSpanEiPNS4_5ValueESB_E3$_2EclINS_17__normal_iteratorIPPNS7_5BlockESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit.i.i.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK12_GLOBAL__N_112AlignVectors16realignLoadGroupERN4llvm13IRBuilderBaseERKNS3_8ByteSpanEiPNS4_5ValueESB_E3$_2EclINS_17__normal_iteratorIPPNS7_5BlockESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit.i.i.i.i.i.i.i": ; preds = %bb.ci
  %i.anv = call noundef zeroext i1 @_ZNK4llvm11Instruction11comesBeforeEPKS0_(ptr noundef nonnull align 8 dereferenceable(72) %.val2.i.i.i.i.i.i.i.i, ptr noundef nonnull %.val3.i.i.i.i.i.i.i.i) #20
  %.pre26.i.i.i.i.i.i.i = load ptr, ptr %.sroa.0.025.i.ptr.i.i.i.i.i.i, align 8, !tbaa !417 ; 2 uses
  br i1 %i.anv, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK12_GLOBAL__N_112AlignVectors16realignLoadGroupERN4llvm13IRBuilderBaseERKNS3_8ByteSpanEiPNS4_5ValueESB_E3$_2EclINS_17__normal_iteratorIPPNS7_5BlockESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit.thread.i.i.i.i.i.i.i", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK12_GLOBAL__N_112AlignVectors16realignLoadGroupERN4llvm13IRBuilderBaseERKNS3_8ByteSpanEiPNS4_5ValueESB_E3$_2EclINS_17__normal_iteratorIPPNS7_5BlockESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit.thread20.i.i.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK12_GLOBAL__N_112AlignVectors16realignLoadGroupERN4llvm13IRBuilderBaseERKNS3_8ByteSpanEiPNS4_5ValueESB_E3$_2EclINS_17__normal_iteratorIPPNS7_5BlockESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit.thread.i.i.i.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK12_GLOBAL__N_112AlignVectors16realignLoadGroupERN4llvm13IRBuilderBaseERKNS3_8ByteSpanEiPNS4_5ValueESB_E3$_2EclINS_17__normal_iteratorIPPNS7_5BlockESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit.i.i.i.i.i.i.i", %.lr.ph.i.i.i.i.i.i.i
  %i.anw = phi ptr [ %i.anr, %.lr.ph.i.i.i.i.i.i.i ], [ %.pre26.i.i.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK12_GLOBAL__N_112AlignVectors16realignLoadGroupERN4llvm13IRBuilderBaseERKNS3_8ByteSpanEiPNS4_5ValueESB_E3$_2EclINS_17__normal_iteratorIPPNS7_5BlockESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit.i.i.i.i.i.i.i" ]
  %i.anx = icmp samesign ugt i64 %.sroa.0.025.i.idx.i.i.i.i.i.i, 8
  br i1 %i.anx, label %bb.cj, label %bb.ck, !prof !221

bb.cj:                                            ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK12_GLOBAL__N_112AlignVectors16realignLoadGroupERN4llvm13IRBuilderBaseERKNS3_8ByteSpanEiPNS4_5ValueESB_E3$_2EclINS_17__normal_iteratorIPPNS7_5BlockESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit.thread.i.i.i.i.i.i.i"
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.0302.1.i, i64 %.sroa.0.025.i.idx.i.i.i.i.i.i, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_112AlignVectors8ByteSpan5BlockESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.i.i.i.i.i

bb.ck:                                            ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK12_GLOBAL__N_112AlignVectors16realignLoadGroupERN4llvm13IRBuilderBaseERKNS3_8ByteSpanEiPNS4_5ValueESB_E3$_2EclINS_17__normal_iteratorIPPNS7_5BlockESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit.thread.i.i.i.i.i.i.i"
  %i.any = getelementptr inbounds nuw i8, ptr %.pn24.i.i.i.i.i.i.i, i64 8
  %.val.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.0302.1.i, align 8, !tbaa !417
  store ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.any, align 8, !tbaa !417
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_112AlignVectors8ByteSpan5BlockESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.i.i.i.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_112AlignVectors8ByteSpan5BlockESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.i.i.i.i.i: ; preds = %bb.ck, %bb.cj
  store ptr %i.anw, ptr %.sroa.0302.1.i, align 8, !tbaa !417
  br label %bb.cn

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK12_GLOBAL__N_112AlignVectors16realignLoadGroupERN4llvm13IRBuilderBaseERKNS3_8ByteSpanEiPNS4_5ValueESB_E3$_2EclINS_17__normal_iteratorIPPNS7_5BlockESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit.thread20.i.i.i.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK12_GLOBAL__N_112AlignVectors16realignLoadGroupERN4llvm13IRBuilderBaseERKNS3_8ByteSpanEiPNS4_5ValueESB_E3$_2EclINS_17__normal_iteratorIPPNS7_5BlockESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit.i.i.i.i.i.i.i", %bb.ci
  %i.anz = phi ptr [ %i.anr, %bb.ci ], [ %.pre26.i.i.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK12_GLOBAL__N_112AlignVectors16realignLoadGroupERN4llvm13IRBuilderBaseERKNS3_8ByteSpanEiPNS4_5ValueESB_E3$_2EclINS_17__normal_iteratorIPPNS7_5BlockESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit.i.i.i.i.i.i.i" ] ; 2 uses
  br label %bb.cl

bb.cl:                                            ; preds = %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNK12_GLOBAL__N_112AlignVectors16realignLoadGroupERN4llvm13IRBuilderBaseERKNS3_8ByteSpanEiPNS4_5ValueESB_E3$_2EclIPNS7_5BlockENS_17__normal_iteratorIPSG_St6vectorISG_SaISG_EEEEEEbRT_T0_.exit.thread.i.i.i.i.i.i.i.i", %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK12_GLOBAL__N_112AlignVectors16realignLoadGroupERN4llvm13IRBuilderBaseERKNS3_8ByteSpanEiPNS4_5ValueESB_E3$_2EclINS_17__normal_iteratorIPPNS7_5BlockESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit.thread20.i.i.i.i.i.i.i"
  %.sroa.07.0.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.025.i.ptr.i.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK12_GLOBAL__N_112AlignVectors16realignLoadGroupERN4llvm13IRBuilderBaseERKNS3_8ByteSpanEiPNS4_5ValueESB_E3$_2EclINS_17__normal_iteratorIPPNS7_5BlockESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit.thread20.i.i.i.i.i.i.i" ], [ %.sroa.0.0.i.i.i.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNK12_GLOBAL__N_112AlignVectors16realignLoadGroupERN4llvm13IRBuilderBaseERKNS3_8ByteSpanEiPNS4_5ValueESB_E3$_2EclIPNS7_5BlockENS_17__normal_iteratorIPSG_St6vectorISG_SaISG_EEEEEEbRT_T0_.exit.thread.i.i.i.i.i.i.i.i" ] ; 3 uses
  %.sroa.0.0.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.07.0.i.i.i.i.i.i.i.i, i64 -8 ; 3 uses
  %.val4.val.i.i.i.i.i.i.i.i = load ptr, ptr %i.anz, align 8, !tbaa !415 ; 2 uses
  %i.aoa = load ptr, ptr %.sroa.0.0.i.i.i.i.i.i.i.i, align 8, !tbaa !417 ; 2 uses
  %.val3.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.aoa, align 8, !tbaa !415 ; 2 uses
end_hunk_1
