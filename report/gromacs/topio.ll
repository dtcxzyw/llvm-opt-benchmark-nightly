Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/topio?download=true
inline.NumInlined: 1510
inline.NumDeleted: 776
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZNSt6vectorI14gmx_molblock_tSaIS0_EE17_M_default_appendEm:bb.a
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorI14gmx_molblock_tSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i37

.lr.ph.i.i.i37:                                   ; preds = %_ZSt27__uninitialized_default_n_aIP14gmx_molblock_tmS0_ET_S2_T0_RSaIT1_E.exit35, %.lr.ph.i.i.i37
  %.012.i.i.i = phi ptr [ %i.cc, %.lr.ph.i.i.i37 ], [ %i.ao, %_ZSt27__uninitialized_default_n_aIP14gmx_molblock_tmS0_ET_S2_T0_RSaIT1_E.exit35 ] ; 7 uses
  %.0911.i.i.i = phi ptr [ %i.cb, %.lr.ph.i.i.i37 ], [ %i.c, %_ZSt27__uninitialized_default_n_aIP14gmx_molblock_tmS0_ET_S2_T0_RSaIT1_E.exit35 ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !380)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !381)
  %i.bl = load i64, ptr %.0911.i.i.i, align 8, !alias.scope !381, !noalias !380
  store i64 %i.bl, ptr %.012.i.i.i, align 8, !alias.scope !380, !noalias !381
  %i.bm = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !211, !alias.scope !381, !noalias !380
  store ptr %i.bo, ptr %i.bm, align 8, !tbaa !211, !alias.scope !380, !noalias !381
  %i.bp = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.bq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !221, !alias.scope !381, !noalias !380
  store ptr %i.br, ptr %i.bp, align 8, !tbaa !221, !alias.scope !380, !noalias !381
  %i.bs = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  %i.bt = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !212, !alias.scope !381, !noalias !380
  store ptr %i.bu, ptr %i.bs, align 8, !tbaa !212, !alias.scope !380, !noalias !381
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bn, i8 0, i64 24, i1 false), !alias.scope !381, !noalias !380
  %i.bv = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.bw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.bx = load <2 x ptr>, ptr %i.bw, align 8, !tbaa !222, !alias.scope !381, !noalias !380
  store <2 x ptr> %i.bx, ptr %i.bv, align 8, !tbaa !222, !alias.scope !380, !noalias !381
  %i.by = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48
  %i.bz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !212, !alias.scope !381, !noalias !380
  store ptr %i.ca, ptr %i.by, align 8, !tbaa !212, !alias.scope !380, !noalias !381
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bw, i8 0, i64 24, i1 false), !alias.scope !381, !noalias !380
  %i.cb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 56 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 56
  %.not.i.i.i38 = icmp eq ptr %i.cb, %i.b
  br i1 %.not.i.i.i38, label %_ZNSt6vectorI14gmx_molblock_tSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i37, !llvm.loop !4

_ZNSt6vectorI14gmx_molblock_tSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit: ; preds = %.lr.ph.i.i.i37, %_ZSt27__uninitialized_default_n_aIP14gmx_molblock_tmS0_ET_S2_T0_RSaIT1_E.exit35
  %.not.i40 = icmp eq ptr %i.c, null
  br i1 %.not.i40, label %_ZNSt12_Vector_baseI14gmx_molblock_tSaIS0_EE13_M_deallocateEPS0_m.exit41, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorI14gmx_molblock_tSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit
  %i.cd = load ptr, ptr %i.h, align 8, !tbaa !220
  %i.ce = ptrtoint ptr %i.cd to i64
  %i.cf = sub i64 %i.ce, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.cf) #29
  br label %_ZNSt12_Vector_baseI14gmx_molblock_tSaIS0_EE13_M_deallocateEPS0_m.exit41

_ZNSt12_Vector_baseI14gmx_molblock_tSaIS0_EE13_M_deallocateEPS0_m.exit41: ; preds = %_ZNSt6vectorI14gmx_molblock_tSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, %bb.e
  store ptr %i.ao, ptr %0, align 8, !tbaa !196
  %i.cg = getelementptr inbounds nuw [56 x i8], ptr %i.ap, i64 %1
  store ptr %i.cg, ptr %i.a, align 8, !tbaa !197
  %i.ch = getelementptr inbounds nuw [56 x i8], ptr %i.ao, i64 %i.am
  store ptr %i.ch, ptr %i.h, align 8, !tbaa !220
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIP14gmx_molblock_tmS0_ET_S2_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseI14gmx_molblock_tSaIS0_EE13_M_deallocateEPS0_m.exit41, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_Z15generate_qmexclP10gmx_mtop_tP10t_inputrecRKN3gmx8MDLoggerE(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %2) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.gmx::LogEntryWriter", align 8 ; 10 uses
  %4 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 7 uses
  %5 = alloca %struct.t_blocka, align 8           ; 11 uses
  %6 = alloca %"class.std::vector.243", align 8   ; 9 uses
  %7 = alloca %"class.std::vector.13", align 8    ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !197  ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !196  ; 2 uses
  %.not226 = icmp eq ptr %i.c, %i.d
  br i1 %.not226, label %._crit_edge225, label %.lr.ph224

.lr.ph224:                                        ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !413
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 10 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 856 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  br label %bb.b

._crit_edge225:                                   ; preds = %._crit_edge218, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph224, %._crit_edge218
  %i.u = phi ptr [ %i.d, %.lr.ph224 ], [ %i.alq, %._crit_edge218 ] ; 2 uses
  %i.v = phi ptr [ %i.c, %.lr.ph224 ], [ %i.alr, %._crit_edge218 ]
  %.083222 = phi ptr [ %i.f, %.lr.ph224 ], [ %.184.lcssa, %._crit_edge218 ] ; 2 uses
  %.087221 = phi i64 [ 0, %.lr.ph224 ], [ %i.als, %._crit_edge218 ] ; 3 uses
  %i.w = getelementptr inbounds nuw [56 x i8], ptr %i.u, i64 %.087221 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !48   ; 2 uses
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %.preheader.lr.ph, label %._crit_edge218

.preheader.lr.ph:                                 ; preds = %bb.b
  %i.aa = load ptr, ptr %i.g, align 8, !tbaa !38
  %i.ab = load i32, ptr %i.w, align 8, !tbaa !35
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [2408 x i8], ptr %i.aa, i64 %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !414 ; 5 uses
  %i.ag = icmp sgt i32 %i.af, 0
  %i.ah = sext i32 %i.af to i64
  %wide.trip.count = zext i32 %i.af to i64        ; 6 uses
  %min.iters.check578 = icmp ult i32 %i.af, 16
  %min.iters.check580 = icmp ult i32 %i.af, 128
  %i.ai = and i64 %wide.trip.count, 112
  %n.vec582 = and i64 %wide.trip.count, 2147483520 ; 4 uses
  %cmp.n602 = icmp eq i64 %n.vec582, %wide.trip.count
  %min.epilog.iters.check608 = icmp eq i64 %i.ai, 0
  %n.vec610 = and i64 %wide.trip.count, 2147483632 ; 3 uses
  %cmp.n624 = icmp eq i64 %n.vec610, %wide.trip.count
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.critedge
  %.pre = phi i32 [ %i.y, %.preheader.lr.ph ], [ %i.alo, %.critedge ]
  %.184216 = phi ptr [ %.083222, %.preheader.lr.ph ], [ %.2, %.critedge ] ; 7 uses
  %.085213 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.alm, %.critedge ] ; 4 uses
  %.188212 = phi i64 [ %.087221, %.preheader.lr.ph ], [ %.4, %.critedge ] ; 7 uses
  %.092211 = phi ptr [ %i.w, %.preheader.lr.ph ], [ %.496, %.critedge ] ; 3 uses
  br i1 %i.ag, label %iter.check605, label %.critedge

iter.check605:                                    ; preds = %.preheader
  %.not101 = icmp ne ptr %.184216, null           ; 9 uses
  %i.aj = load i32, ptr %i.h, align 8, !tbaa !415 ; 4 uses
  br i1 %min.iters.check578, label %vec.epilog.scalar.ph606.preheader, label %vector.main.loop.iter.check579

vector.main.loop.iter.check579:                   ; preds = %iter.check605
  br i1 %min.iters.check580, label %vec.epilog.ph609, label %vector.ph581

vector.ph581:                                     ; preds = %vector.main.loop.iter.check579
  %i.ak = insertelement <32 x i1> poison, i1 %.not101, i64 0
  %i.al = shufflevector <32 x i1> %i.ak, <32 x i1> poison, <32 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert583 = insertelement <32 x i32> poison, i32 %i.aj, i64 0
  %broadcast.splat584 = shufflevector <32 x i32> %broadcast.splatinsert583, <32 x i32> poison, <32 x i32> zeroinitializer ; 4 uses
  br label %vector.body585

vector.body585:                                   ; preds = %vector.ph581, %vector.body585
  %index586 = phi i64 [ 0, %vector.ph581 ], [ %index.next597, %vector.body585 ] ; 2 uses
  %vec.phi587 = phi <32 x i1> [ zeroinitializer, %vector.ph581 ], [ %i.ay, %vector.body585 ]
  %vec.phi588 = phi <32 x i1> [ zeroinitializer, %vector.ph581 ], [ %i.az, %vector.body585 ]
  %vec.phi589 = phi <32 x i1> [ zeroinitializer, %vector.ph581 ], [ %i.ba, %vector.body585 ]
  %vec.phi590 = phi <32 x i1> [ zeroinitializer, %vector.ph581 ], [ %i.bb, %vector.body585 ]
  %i.am = getelementptr i8, ptr %.184216, i64 %index586 ; 4 uses
  %i.an = getelementptr i8, ptr %i.am, i64 32
  %i.ao = getelementptr i8, ptr %i.am, i64 64
  %i.ap = getelementptr i8, ptr %i.am, i64 96
  %wide.masked.load = call <32 x i8> @llvm.masked.load.v32i8.p0(ptr align 1 %i.am, <32 x i1> %i.al, <32 x i8> poison), !tbaa !25
  %wide.masked.load591 = call <32 x i8> @llvm.masked.load.v32i8.p0(ptr align 1 %i.an, <32 x i1> %i.al, <32 x i8> poison), !tbaa !25
  %wide.masked.load592 = call <32 x i8> @llvm.masked.load.v32i8.p0(ptr align 1 %i.ao, <32 x i1> %i.al, <32 x i8> poison), !tbaa !25
  %wide.masked.load593 = call <32 x i8> @llvm.masked.load.v32i8.p0(ptr align 1 %i.ap, <32 x i1> %i.al, <32 x i8> poison), !tbaa !25
  %i.aq = zext <32 x i8> %wide.masked.load to <32 x i32>
  %i.ar = zext <32 x i8> %wide.masked.load591 to <32 x i32>
  %i.as = zext <32 x i8> %wide.masked.load592 to <32 x i32>
  %i.at = zext <32 x i8> %wide.masked.load593 to <32 x i32>
  %predphi = select i1 %.not101, <32 x i32> %i.aq, <32 x i32> zeroinitializer
  %predphi594 = select i1 %.not101, <32 x i32> %i.ar, <32 x i32> zeroinitializer
  %predphi595 = select i1 %.not101, <32 x i32> %i.as, <32 x i32> zeroinitializer
  %predphi596 = select i1 %.not101, <32 x i32> %i.at, <32 x i32> zeroinitializer
  %i.au = icmp slt <32 x i32> %predphi, %broadcast.splat584
  %i.av = icmp slt <32 x i32> %predphi594, %broadcast.splat584
  %i.aw = icmp slt <32 x i32> %predphi595, %broadcast.splat584
  %i.ax = icmp slt <32 x i32> %predphi596, %broadcast.splat584
  %i.ay = or <32 x i1> %vec.phi587, %i.au         ; 2 uses
  %i.az = or <32 x i1> %vec.phi588, %i.av         ; 2 uses
  %i.ba = or <32 x i1> %vec.phi589, %i.aw         ; 2 uses
  %i.bb = or <32 x i1> %vec.phi590, %i.ax         ; 2 uses
  %index.next597 = add nuw i64 %index586, 128     ; 2 uses
  %i.bc = icmp eq i64 %index.next597, %n.vec582
  br i1 %i.bc, label %middle.block598, label %vector.body585, !llvm.loop !382

middle.block598:                                  ; preds = %vector.body585
  %bin.rdx599 = or <32 x i1> %i.az, %i.ay
  %bin.rdx600 = or <32 x i1> %i.ba, %bin.rdx599
  %bin.rdx601 = or <32 x i1> %i.bb, %bin.rdx600
  %bin.rdx601.fr = freeze <32 x i1> %bin.rdx601
  %i.bd = bitcast <32 x i1> %bin.rdx601.fr to i32
  %i.be = icmp ne i32 %i.bd, 0                    ; 3 uses
  br i1 %cmp.n602, label %._crit_edge, label %vec.epilog.iter.check607

vec.epilog.iter.check607:                         ; preds = %middle.block598
  br i1 %min.epilog.iters.check608, label %vec.epilog.scalar.ph606.preheader, label %vec.epilog.ph609, !prof !418

vec.epilog.ph609:                                 ; preds = %vector.main.loop.iter.check579, %vec.epilog.iter.check607
  %vec.epilog.resume.val603 = phi i64 [ %n.vec582, %vec.epilog.iter.check607 ], [ 0, %vector.main.loop.iter.check579 ]
  %bc.merge.rdx604 = phi i1 [ %i.be, %vec.epilog.iter.check607 ], [ false, %vector.main.loop.iter.check579 ]
  %i.bf = insertelement <16 x i1> poison, i1 %.not101, i64 0
  %i.bg = shufflevector <16 x i1> %i.bf, <16 x i1> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert613 = insertelement <16 x i32> poison, i32 %i.aj, i64 0
  %broadcast.splat614 = shufflevector <16 x i32> %broadcast.splatinsert613, <16 x i32> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert615 = insertelement <16 x i1> poison, i1 %bc.merge.rdx604, i64 0
  %broadcast.splat616 = shufflevector <16 x i1> %broadcast.splatinsert615, <16 x i1> poison, <16 x i32> zeroinitializer
  br label %vec.epilog.vector.body617

vec.epilog.vector.body617:                        ; preds = %vec.epilog.vector.body617, %vec.epilog.ph609
  %index618 = phi i64 [ %vec.epilog.resume.val603, %vec.epilog.ph609 ], [ %index.next622, %vec.epilog.vector.body617 ] ; 2 uses
  %vec.phi619 = phi <16 x i1> [ %broadcast.splat616, %vec.epilog.ph609 ], [ %i.bk, %vec.epilog.vector.body617 ]
  %i.bh = getelementptr i8, ptr %.184216, i64 %index618
  %wide.masked.load620 = call <16 x i8> @llvm.masked.load.v16i8.p0(ptr align 1 %i.bh, <16 x i1> %i.bg, <16 x i8> poison), !tbaa !25
  %i.bi = zext <16 x i8> %wide.masked.load620 to <16 x i32>
  %predphi621 = select i1 %.not101, <16 x i32> %i.bi, <16 x i32> zeroinitializer
  %i.bj = icmp slt <16 x i32> %predphi621, %broadcast.splat614
  %.fr = freeze <16 x i1> %i.bj
  %i.bk = or <16 x i1> %vec.phi619, %.fr          ; 2 uses
  %index.next622 = add nuw i64 %index618, 16      ; 2 uses
  %i.bl = icmp eq i64 %index.next622, %n.vec610
  br i1 %i.bl, label %vec.epilog.middle.block623, label %vec.epilog.vector.body617, !llvm.loop !383

vec.epilog.middle.block623:                       ; preds = %vec.epilog.vector.body617
  %i.bm = bitcast <16 x i1> %i.bk to i16
  %i.bn = icmp ne i16 %i.bm, 0                    ; 2 uses
  br i1 %cmp.n624, label %._crit_edge, label %vec.epilog.scalar.ph606.preheader

vec.epilog.scalar.ph606.preheader:                ; preds = %iter.check605, %vec.epilog.iter.check607, %vec.epilog.middle.block623
  %indvars.iv.ph = phi i64 [ 0, %iter.check605 ], [ %n.vec582, %vec.epilog.iter.check607 ], [ %n.vec610, %vec.epilog.middle.block623 ]
  %.090199.ph = phi i1 [ false, %iter.check605 ], [ %i.be, %vec.epilog.iter.check607 ], [ %i.bn, %vec.epilog.middle.block623 ]
  br label %vec.epilog.scalar.ph606

._crit_edge:                                      ; preds = %bb.d, %vec.epilog.middle.block623, %middle.block598
  %spec.select.lcssa = phi i1 [ %i.bn, %vec.epilog.middle.block623 ], [ %i.be, %middle.block598 ], [ %spec.select, %bb.d ]
  br i1 %spec.select.lcssa, label %bb.e, label %.critedge

vec.epilog.scalar.ph606:                          ; preds = %vec.epilog.scalar.ph606.preheader, %bb.d
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.d ], [ %indvars.iv.ph, %vec.epilog.scalar.ph606.preheader ] ; 2 uses
  %.090199 = phi i1 [ %spec.select, %bb.d ], [ %.090199.ph, %vec.epilog.scalar.ph606.preheader ]
  br i1 %.not101, label %bb.c, label %bb.d

bb.c:                                             ; preds = %vec.epilog.scalar.ph606
  %i.bo = getelementptr inbounds nuw i8, ptr %.184216, i64 %indvars.iv
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !25
  %i.bq = zext i8 %i.bp to i32
  br label %bb.d

bb.d:                                             ; preds = %vec.epilog.scalar.ph606, %bb.c
  %i.br = phi i32 [ %i.bq, %bb.c ], [ 0, %vec.epilog.scalar.ph606 ]
  %i.bs = icmp slt i32 %i.br, %i.aj
  %spec.select = select i1 %i.bs, i1 true, i1 %.090199 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %vec.epilog.scalar.ph606, !llvm.loop !384

bb.e:                                             ; preds = %._crit_edge
  %i.bt = icmp sgt i32 %.pre, 1
  br i1 %i.bt, label %bb.f, label %bb.am

bb.f:                                             ; preds = %bb.e
  %.not = icmp eq i32 %.085213, 0
  br i1 %.not, label %._crit_edge250.thread, label %._crit_edge250

._crit_edge250:                                   ; preds = %bb.f
  %i.bu = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.bv = getelementptr inbounds [56 x i8], ptr %i.bu, i64 %.188212 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 56
  %i.bx = call ptr @_ZNSt6vectorI14gmx_molblock_tSaIS0_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EERS5_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr nonnull %i.bw, ptr noundef nonnull align 8 dereferenceable(56) %i.bv) ; 0 uses
  %i.by = load ptr, ptr %i.a, align 8, !tbaa !196 ; 2 uses
  %i.bz = getelementptr inbounds nuw [56 x i8], ptr %i.by, i64 %.188212
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  store i32 %.085213, ptr %i.ca, align 4, !tbaa !48
  %i.cb = add i64 %.188212, 1                     ; 3 uses
  %i.cc = getelementptr inbounds nuw [56 x i8], ptr %i.by, i64 %i.cb ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 4 ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !48
  %i.cf = sub nsw i32 %i.ce, %.085213             ; 2 uses
  store i32 %i.cf, ptr %i.cd, align 4, !tbaa !48
  %i.cg = icmp sgt i32 %i.cf, 1
  br i1 %i.cg, label %._crit_edge250.thread, label %bb.g

._crit_edge250.thread:                            ; preds = %bb.f, %._crit_edge250
  %.289374 = phi i64 [ %i.cb, %._crit_edge250 ], [ %.188212, %bb.f ] ; 3 uses
  %i.ch = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.ci = getelementptr inbounds [56 x i8], ptr %i.ch, i64 %.289374 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 56
  %i.ck = call ptr @_ZNSt6vectorI14gmx_molblock_tSaIS0_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EERS5_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr nonnull %i.cj, ptr noundef nonnull align 8 dereferenceable(56) %i.ci) ; 0 uses
  %i.cl = load ptr, ptr %i.a, align 8, !tbaa !196
  %i.cm = getelementptr [56 x i8], ptr %i.cl, i64 %.289374 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  store i32 1, ptr %i.cn, align 4, !tbaa !48
  %i.co = getelementptr i8, ptr %i.cm, i64 60     ; 2 uses
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !48
  %i.cq = add nsw i32 %i.cp, -1
  store i32 %i.cq, ptr %i.co, align 4, !tbaa !48
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge250.thread, %._crit_edge250
  %.289373 = phi i64 [ %.289374, %._crit_edge250.thread ], [ %i.cb, %._crit_edge250 ]
  %.294 = phi ptr [ %i.cm, %._crit_edge250.thread ], [ %i.cc, %._crit_edge250 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %i.cr = load ptr, ptr %i.i, align 8, !tbaa !223 ; 2 uses
  %i.cs = load ptr, ptr %i.g, align 8, !tbaa !38  ; 2 uses
  %i.ct = ptrtoint ptr %i.cr to i64
  %i.cu = ptrtoint ptr %i.cs to i64
  %i.cv = sub i64 %i.ct, %i.cu                    ; 4 uses
  %i.cw = sdiv exact i64 %i.cv, 2408              ; 2 uses
  %i.cx = icmp ugt i64 %i.cw, 3830304002016102
  br i1 %i.cx, label %bb.h, label %_ZNSt6vectorI13gmx_moltype_tSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.62) #27
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.h
  unreachable

_ZNSt6vectorI13gmx_moltype_tSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i: ; preds = %bb.g
  %.not.i.i.i.i = icmp eq ptr %i.cr, %i.cs
  br i1 %.not.i.i.i.i, label %.loopexit.thread, label %_ZNSt12_Vector_baseI13gmx_moltype_tSaIS0_EEC2EmRKS1_.exit.i

.loopexit.thread:                                 ; preds = %_ZNSt6vectorI13gmx_moltype_tSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  br label %._crit_edge204.thread

_ZNSt12_Vector_baseI13gmx_moltype_tSaIS0_EEC2EmRKS1_.exit.i: ; preds = %_ZNSt6vectorI13gmx_moltype_tSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i
  %i.cy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cv) #32
          to label %.noexc102 unwind label %.loopexit132 ; 6 uses

.noexc102:                                        ; preds = %_ZNSt12_Vector_baseI13gmx_moltype_tSaIS0_EEC2EmRKS1_.exit.i
  store ptr %i.cy, ptr %7, align 8, !tbaa !38
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.cv
  store ptr %i.cz, ptr %i.k, align 8, !tbaa !224
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZSt10_ConstructI13gmx_moltype_tJEEvPT_DpOT0_.exit.i.i.i.i.i, %.noexc102
  %.014.i.i.i.i.i = phi ptr [ %i.db, %_ZSt10_ConstructI13gmx_moltype_tJEEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.cy, %.noexc102 ] ; 4 uses
  %.01013.i.i.i.i.i = phi i64 [ %i.da, %_ZSt10_ConstructI13gmx_moltype_tJEEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.cw, %.noexc102 ]
  invoke void @_ZN13gmx_moltype_tC1Ev(ptr noundef nonnull align 8 dereferenceable(2408) %.014.i.i.i.i.i)
          to label %_ZSt10_ConstructI13gmx_moltype_tJEEvPT_DpOT0_.exit.i.i.i.i.i unwind label %bb.i

_ZSt10_ConstructI13gmx_moltype_tJEEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.da = add nsw i64 %.01013.i.i.i.i.i, -1       ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.i, i64 2408 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.da, 0
  br i1 %.not.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !5

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.dc = landingpad { ptr, i32 }
          catch ptr null
  %i.dd = extractvalue { ptr, i32 } %i.dc, 0
  %i.de = call ptr @__cxa_begin_catch(ptr %i.dd) #28 ; 0 uses
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %i.cy, %.014.i.i.i.i.i
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt8_DestroyIP13gmx_moltype_tEvT_S2_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.i, %.lr.ph.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.df, %.lr.ph.i.i.i.i.i.i.i ], [ %i.cy, %bb.i ] ; 2 uses
  call void @_ZN13gmx_moltype_tD1Ev(ptr noundef nonnull align 8 dead_on_return(2408) dereferenceable(2408) %.05.i.i.i.i.i.i.i) #28
  %i.df = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 2408 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.df, %.014.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIP13gmx_moltype_tEvT_S2_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !6

_ZSt8_DestroyIP13gmx_moltype_tEvT_S2_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.i
  invoke void @__cxa_rethrow() #27
          to label %bb.l unwind label %bb.j

bb.j:                                             ; preds = %_ZSt8_DestroyIP13gmx_moltype_tEvT_S2_.exit.i.i.i.i.i
  %i.dg = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.i unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dh = landingpad { ptr, i32 }
          catch ptr null
  %i.di = extractvalue { ptr, i32 } %i.dh, 0
  call void @__clang_call_terminate(ptr %i.di) #30
  unreachable

bb.l:                                             ; preds = %_ZSt8_DestroyIP13gmx_moltype_tEvT_S2_.exit.i.i.i.i.i
  unreachable

.body.i:                                          ; preds = %bb.j
  call void @_ZdlPvm(ptr noundef nonnull %i.cy, i64 noundef %i.cv) #29
  br label %.body

.loopexit:                                        ; preds = %_ZSt10_ConstructI13gmx_moltype_tJEEvPT_DpOT0_.exit.i.i.i.i.i
  %.pre251 = load ptr, ptr %i.i, align 8, !tbaa !223
  %.pre252 = load ptr, ptr %i.g, align 8, !tbaa !38 ; 2 uses
  store ptr %i.db, ptr %i.j, align 8, !tbaa !223
  %.not227 = icmp eq ptr %.pre251, %.pre252
  br i1 %.not227, label %._crit_edge204.thread, label %.lr.ph203

._crit_edge204:                                   ; preds = %bb.m
  %i.dj = icmp eq i64 %i.ea, -2408
  br i1 %i.dj, label %.lr.ph.i.i.i.i, label %._crit_edge204.thread

._crit_edge204.thread:                            ; preds = %.loopexit.thread, %.loopexit, %._crit_edge204
  invoke void @_ZNSt6vectorI13gmx_moltype_tSaIS0_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef 1)
          to label %_ZNSt6vectorI13gmx_moltype_tSaIS0_EE6resizeEm.exit unwind label %.loopexit133

.lr.ph.i.i.i.i:                                   ; preds = %._crit_edge204, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.dk, %.lr.ph.i.i.i.i ], [ %i.dx, %._crit_edge204 ] ; 2 uses
  call void @_ZN13gmx_moltype_tD1Ev(ptr noundef nonnull align 8 dead_on_return(2408) dereferenceable(2408) %.05.i.i.i.i) #28
  %i.dk = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 2408 ; 2 uses
  %.not.i.i.i.i103 = icmp eq ptr %i.dk, %i.dw
  br i1 %.not.i.i.i.i103, label %_ZSt8_DestroyIP13gmx_moltype_tS0_EvT_S2_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !6

_ZSt8_DestroyIP13gmx_moltype_tS0_EvT_S2_RSaIT0_E.exit.i.i: ; preds = %.lr.ph.i.i.i.i
  store ptr %i.dx, ptr %i.i, align 8, !tbaa !223
  br label %_ZNSt6vectorI13gmx_moltype_tSaIS0_EE6resizeEm.exit

_ZNSt6vectorI13gmx_moltype_tSaIS0_EE6resizeEm.exit: ; preds = %._crit_edge204.thread, %_ZSt8_DestroyIP13gmx_moltype_tS0_EvT_S2_RSaIT0_E.exit.i.i
  %i.dl = load ptr, ptr %i.j, align 8, !tbaa !223 ; 3 uses
  %i.dm = load ptr, ptr %7, align 8, !tbaa !38    ; 7 uses
  %.not228 = icmp eq ptr %i.dl, %i.dm             ; 2 uses
end_hunk_0
