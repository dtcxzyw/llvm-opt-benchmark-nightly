Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/prog?download=true
inline.NumInlined: 1409
inline.NumDeleted: 639
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN10duckdb_re24Prog14ComputeByteMapEv:bb.a
  %i.dm = load i64, ptr %.0911.i.i.i.i.i.i.i96, align 4, !alias.scope !241
  store i64 %i.dm, ptr %.012.i.i.i.i.i.i.i95, align 4, !alias.scope !240
  %i.dn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i96, i64 8 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i95, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i97 = icmp eq ptr %i.dn, %i.ch
  br i1 %.not.i.i.i.i.i.i.i97, label %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i.i98, label %.lr.ph.i.i.i.i.i.i.i94, !llvm.loop !221

_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i.i98: ; preds = %.lr.ph.i.i.i.i.i.i.i94, %middle.block, %.noexc103
  %.0.lcssa.i.i.i.i.i.i.i99 = phi ptr [ %i.cw, %.noexc103 ], [ %i.dg, %middle.block ], [ %i.do, %.lr.ph.i.i.i.i.i.i.i94 ]
  %i.dp = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i99, i64 8
  %.not.i34.i.i.i100 = icmp eq ptr %i.cl, null
  br i1 %.not.i34.i.i.i100, label %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJRiS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i101, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i.i98
  call void @_ZdlPv(ptr noundef nonnull %i.cl) #20
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJRiS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i101

_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJRiS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i101: ; preds = %bb.m, %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i.i98
  store ptr %i.cw, ptr %i.i, align 8, !tbaa !113
  store ptr %i.dp, ptr %i.j, align 8, !tbaa !108
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.cu
  store ptr %i.dq, ptr %i.k, align 8, !tbaa !109
  br label %_ZN10duckdb_re214ByteMapBuilder4MarkEii.exit104

_ZN10duckdb_re214ByteMapBuilder4MarkEii.exit104:  ; preds = %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJRiS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i101, %bb.k, %bb.i, %_ZN10duckdb_re214ByteMapBuilder4MarkEii.exit
  %i.dr = load i32, ptr %i.ad, align 4, !tbaa !32 ; 2 uses
  %i.ds = and i32 %i.dr, 8
  %.not78 = icmp eq i32 %i.ds, 0
  br i1 %.not78, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN10duckdb_re214ByteMapBuilder4MarkEii.exit104
  %i.dt = load ptr, ptr %i.h, align 8, !tbaa !78
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %indvars.iv
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !32 ; 2 uses
  %i.dx = and i32 %i.dw, 7
  %i.dy = icmp eq i32 %i.dx, 2
  %.unshifted = xor i32 %i.dw, %i.dr
  %i.dz = icmp ult i32 %.unshifted, 16
  %or.cond150 = and i1 %i.dy, %i.dz
  br i1 %or.cond150, label %.critedge84, label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZN10duckdb_re214ByteMapBuilder4MarkEii.exit104
  invoke void @_ZN10duckdb_re214ByteMapBuilder5MergeEv(ptr noundef nonnull align 8 dereferenceable(1112) %1)
          to label %.critedge84 unwind label %.loopexit.split-lp152.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.p:                                             ; preds = %bb.c
  %i.ea = getelementptr inbounds nuw i8, ptr %i.ad, i64 4 ; 2 uses
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !33 ; 2 uses
  %i.ec = and i32 %i.eb, 3
  %i.ed = icmp eq i32 %i.ec, 0
  %or.cond5 = select i1 %i.ed, i1 true, i1 %.070171
  br i1 %or.cond5, label %bb.u, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ee = load ptr, ptr %i.j, align 8, !tbaa !108 ; 7 uses
  %i.ef = load ptr, ptr %i.k, align 8, !tbaa !109
  %.not.i.i105 = icmp eq ptr %i.ee, %i.ef
  br i1 %.not.i.i105, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i32 10, ptr %i.ee, align 4, !tbaa !111
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ee, i64 4
  store i32 10, ptr %i.eg, align 4, !tbaa !112
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  store ptr %i.eh, ptr %i.j, align 8, !tbaa !108
  br label %_ZN10duckdb_re214ByteMapBuilder4MarkEii.exit120

bb.s:                                             ; preds = %bb.q
  %i.ei = load ptr, ptr %i.i, align 8, !tbaa !113 ; 7 uses
  %i.ej = ptrtoint ptr %i.ee to i64               ; 2 uses
  %i.ek = ptrtoint ptr %i.ei to i64               ; 3 uses
  %i.el = sub i64 %i.ej, %i.ek                    ; 3 uses
  %i.em = icmp eq i64 %i.el, 9223372036854775800
  br i1 %i.em, label %.invoke, label %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i106

.invoke:                                          ; preds = %bb.g, %bb.l, %bb.s
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #23
          to label %.cont unwind label %.loopexit.split-lp152.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i106: ; preds = %bb.s
  %i.en = ashr exact i64 %i.el, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i107 = call i64 @llvm.umax.i64(i64 %i.en, i64 1)
  %i.eo = add nsw i64 %.sroa.speculated.i.i.i.i107, %i.en ; 2 uses
  %i.ep = icmp ult i64 %i.eo, %i.en
  %i.eq = call i64 @llvm.umin.i64(i64 %i.eo, i64 1152921504606846975)
  %i.er = select i1 %i.ep, i64 1152921504606846975, i64 %i.eq ; 3 uses
  %.not.i.i.i.i108 = icmp ne i64 %i.er, 0
  call void @llvm.assume(i1 %.not.i.i.i.i108)
  %i.es = shl nuw nsw i64 %i.er, 3
  %i.et = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.es) #24
          to label %.noexc119 unwind label %.loopexit.split-lp152.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 8 uses

.noexc119:                                        ; preds = %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i106
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.el ; 2 uses
  store i32 10, ptr %i.eu, align 4, !tbaa !111
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 4
  store i32 10, ptr %i.ev, align 4, !tbaa !112
  %.not10.i.i.i.i.i.i.i109 = icmp eq ptr %i.ei, %i.ee
  br i1 %.not10.i.i.i.i.i.i.i109, label %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i.i114, label %.lr.ph.i.i.i.i.i.i.i110.preheader

.lr.ph.i.i.i.i.i.i.i110.preheader:                ; preds = %.noexc119
  %i.ew = ptrtoaddr ptr %i.et to i64
  %i.ex = add i64 %i.ej, -8
  %i.ey = sub i64 %i.ex, %i.ek                    ; 2 uses
  %i.ez = lshr i64 %i.ey, 3
  %i.fa = add nuw nsw i64 %i.ez, 1                ; 2 uses
  %min.iters.check303 = icmp ult i64 %i.ey, 24
  %i.fb = sub i64 %i.ek, %i.ew
  %diff.check305 = icmp ugt i64 %i.fb, -32
  %or.cond322 = or i1 %min.iters.check303, %diff.check305
  br i1 %or.cond322, label %.lr.ph.i.i.i.i.i.i.i110.preheader337, label %vector.ph306

vector.ph306:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i110.preheader
  %n.vec307 = and i64 %i.fa, 4611686018427387900  ; 3 uses
  %i.fc = shl i64 %n.vec307, 3                    ; 2 uses
  %i.fd = getelementptr i8, ptr %i.et, i64 %i.fc  ; 2 uses
  %i.fe = getelementptr i8, ptr %i.ei, i64 %i.fc
  br label %vector.body308

vector.body308:                                   ; preds = %vector.body308, %vector.ph306
  %index309 = phi i64 [ 0, %vector.ph306 ], [ %index.next314, %vector.body308 ] ; 2 uses
  %i.ff = shl i64 %index309, 3                    ; 2 uses
  %next.gep310 = getelementptr i8, ptr %i.et, i64 %i.ff ; 2 uses
  %next.gep311 = getelementptr i8, ptr %i.ei, i64 %i.ff ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !242)
  call void @llvm.experimental.noalias.scope.decl(metadata !243)
  %i.fg = getelementptr i8, ptr %next.gep311, i64 16
  %wide.load312 = load <2 x i64>, ptr %next.gep311, align 4, !alias.scope !243
  %wide.load313 = load <2 x i64>, ptr %i.fg, align 4, !alias.scope !243
  %i.fh = getelementptr i8, ptr %next.gep310, i64 16
  store <2 x i64> %wide.load312, ptr %next.gep310, align 4, !alias.scope !242
  store <2 x i64> %wide.load313, ptr %i.fh, align 4, !alias.scope !242
  %index.next314 = add nuw i64 %index309, 4       ; 2 uses
  %i.fi = icmp eq i64 %index.next314, %n.vec307
  br i1 %i.fi, label %middle.block315, label %vector.body308, !llvm.loop !225

middle.block315:                                  ; preds = %vector.body308
  %cmp.n316 = icmp eq i64 %i.fa, %n.vec307
  br i1 %cmp.n316, label %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i.i114, label %.lr.ph.i.i.i.i.i.i.i110.preheader337

.lr.ph.i.i.i.i.i.i.i110.preheader337:             ; preds = %.lr.ph.i.i.i.i.i.i.i110.preheader, %middle.block315
  %.012.i.i.i.i.i.i.i111.ph = phi ptr [ %i.et, %.lr.ph.i.i.i.i.i.i.i110.preheader ], [ %i.fd, %middle.block315 ]
  %.0911.i.i.i.i.i.i.i112.ph = phi ptr [ %i.ei, %.lr.ph.i.i.i.i.i.i.i110.preheader ], [ %i.fe, %middle.block315 ]
  br label %.lr.ph.i.i.i.i.i.i.i110

.lr.ph.i.i.i.i.i.i.i110:                          ; preds = %.lr.ph.i.i.i.i.i.i.i110.preheader337, %.lr.ph.i.i.i.i.i.i.i110
  %.012.i.i.i.i.i.i.i111 = phi ptr [ %i.fl, %.lr.ph.i.i.i.i.i.i.i110 ], [ %.012.i.i.i.i.i.i.i111.ph, %.lr.ph.i.i.i.i.i.i.i110.preheader337 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i112 = phi ptr [ %i.fk, %.lr.ph.i.i.i.i.i.i.i110 ], [ %.0911.i.i.i.i.i.i.i112.ph, %.lr.ph.i.i.i.i.i.i.i110.preheader337 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !242)
  call void @llvm.experimental.noalias.scope.decl(metadata !243)
  %i.fj = load i64, ptr %.0911.i.i.i.i.i.i.i112, align 4, !alias.scope !243
  store i64 %i.fj, ptr %.012.i.i.i.i.i.i.i111, align 4, !alias.scope !242
  %i.fk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i112, i64 8 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i111, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i113 = icmp eq ptr %i.fk, %i.ee
  br i1 %.not.i.i.i.i.i.i.i113, label %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i.i114, label %.lr.ph.i.i.i.i.i.i.i110, !llvm.loop !226

_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i.i114: ; preds = %.lr.ph.i.i.i.i.i.i.i110, %middle.block315, %.noexc119
  %.0.lcssa.i.i.i.i.i.i.i115 = phi ptr [ %i.et, %.noexc119 ], [ %i.fd, %middle.block315 ], [ %i.fl, %.lr.ph.i.i.i.i.i.i.i110 ]
  %i.fm = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i115, i64 8
  %.not.i34.i.i.i116 = icmp eq ptr %i.ei, null
  br i1 %.not.i34.i.i.i116, label %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJRiS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i117, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i.i114
  call void @_ZdlPv(ptr noundef nonnull %i.ei) #20
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJRiS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i117

_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJRiS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i117: ; preds = %bb.t, %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i.i114
  store ptr %i.et, ptr %i.i, align 8, !tbaa !113
  store ptr %i.fm, ptr %i.j, align 8, !tbaa !108
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.et, i64 %i.er
  store ptr %i.fn, ptr %i.k, align 8, !tbaa !109
  br label %_ZN10duckdb_re214ByteMapBuilder4MarkEii.exit120

_ZN10duckdb_re214ByteMapBuilder4MarkEii.exit120:  ; preds = %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJRiS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i117, %bb.r
  invoke void @_ZN10duckdb_re214ByteMapBuilder5MergeEv(ptr noundef nonnull align 8 dereferenceable(1112) %1)
          to label %_ZN10duckdb_re214ByteMapBuilder4MarkEii.exit120._crit_edge unwind label %.loopexit.split-lp152.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN10duckdb_re214ByteMapBuilder4MarkEii.exit120._crit_edge: ; preds = %_ZN10duckdb_re214ByteMapBuilder4MarkEii.exit120
  %.pre = load i32, ptr %i.ea, align 4, !tbaa !33
  br label %bb.u

bb.u:                                             ; preds = %_ZN10duckdb_re214ByteMapBuilder4MarkEii.exit120._crit_edge, %bb.p
  %i.fo = phi i32 [ %i.eb, %bb.p ], [ %.pre, %_ZN10duckdb_re214ByteMapBuilder4MarkEii.exit120._crit_edge ]
  %.171 = phi i1 [ %.070171, %bb.p ], [ true, %_ZN10duckdb_re214ByteMapBuilder4MarkEii.exit120._crit_edge ] ; 2 uses
  %i.fp = and i32 %i.fo, 48
  %i.fq = icmp eq i32 %i.fp, 0
  %or.cond7 = select i1 %i.fq, i1 true, i1 %.067172
  br i1 %or.cond7, label %.critedge84, label %bb.v

bb.v:                                             ; preds = %bb.u, %_ZN10duckdb_re214ByteMapBuilder5MergeEv.exit
  %.not = phi i1 [ true, %_ZN10duckdb_re214ByteMapBuilder5MergeEv.exit ], [ false, %bb.u ]
  %.059.idx170.sroa.phi.sroa.speculated = phi i8 [ 0, %_ZN10duckdb_re214ByteMapBuilder5MergeEv.exit ], [ 1, %bb.u ]
  br label %.preheader

.preheader:                                       ; preds = %bb.v, %_ZN10duckdb_re214ByteMapBuilder4MarkEii.exit147
  %.0169 = phi i32 [ 0, %bb.v ], [ %.058.lcssa, %_ZN10duckdb_re214ByteMapBuilder4MarkEii.exit147 ] ; 12 uses
  %i.fr = trunc i32 %.0169 to i8                  ; 3 uses
  %i.fs = and i8 %i.fr, -33
  %i.ft = add i8 %i.fs, -65
  %or.cond15.i = icmp ult i8 %i.ft, 26
  %i.fu = add i8 %i.fr, -48
  %or.cond8.i = icmp ult i8 %i.fu, 10
  %or.cond16.i = or i1 %or.cond8.i, %or.cond15.i
  %i.fv = icmp eq i8 %i.fr, 95
  %i.fw = or i1 %i.fv, %or.cond16.i               ; 3 uses
  %smax = call i32 @llvm.smax.i32(i32 %.0169, i32 255) ; 6 uses
  %i.fx = add nuw i32 %smax, 1                    ; 3 uses
  %exitcond.not240 = icmp sgt i32 %.0169, 254
  br i1 %exitcond.not240, label %.critedge, label %.lr.ph242

.lr.ph242:                                        ; preds = %.preheader
  %i.fy = sub i32 %smax, %.0169                   ; 3 uses
  %min.iters.check289 = icmp ult i32 %i.fy, 16
  br i1 %min.iters.check289, label %scalar.ph288.preheader, label %vector.ph290

vector.ph290:                                     ; preds = %.lr.ph242
  %n.vec291 = and i32 %i.fy, -16                  ; 3 uses
  %i.fz = add i32 %.0169, %n.vec291
  %broadcast.splatinsert = insertelement <16 x i1> poison, i1 %i.fw, i64 0
  %broadcast.splat = shufflevector <16 x i1> %broadcast.splatinsert, <16 x i1> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert292 = insertelement <16 x i32> poison, i32 %.0169, i64 0
  %broadcast.splat293 = shufflevector <16 x i32> %broadcast.splatinsert292, <16 x i32> poison, <16 x i32> zeroinitializer
  %induction = add <16 x i32> %broadcast.splat293, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %2 = trunc i32 %.0169 to i8
  %3 = add i8 %2, 1
  %broadcast.splatinsert294 = insertelement <16 x i8> poison, i8 %3, i64 0
  %broadcast.splat295 = shufflevector <16 x i8> %broadcast.splatinsert294, <16 x i8> poison, <16 x i32> zeroinitializer
  %induction296 = add <16 x i8> %broadcast.splat295, <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>
  br label %vector.body294

vector.body294:                                   ; preds = %vector.body.interim, %vector.ph290
  %index295 = phi i32 [ 0, %vector.ph290 ], [ %index.next296, %vector.body.interim ] ; 2 uses
  %vec.ind = phi <16 x i32> [ %induction, %vector.ph290 ], [ %vec.ind.next, %vector.body.interim ] ; 2 uses
  %vec.ind299 = phi <16 x i8> [ %induction296, %vector.ph290 ], [ %vec.ind.next301, %vector.body.interim ] ; 4 uses
  %i.ga = and <16 x i8> %vec.ind299, splat (i8 -33)
  %i.gb = add <16 x i8> %i.ga, splat (i8 -65)
  %i.gc = icmp ult <16 x i8> %i.gb, splat (i8 26)
  %i.gd = add <16 x i8> %vec.ind299, splat (i8 -48)
  %i.ge = icmp ult <16 x i8> %i.gd, splat (i8 10)
  %i.gf = or <16 x i1> %i.ge, %i.gc
  %i.gg = icmp eq <16 x i8> %vec.ind299, splat (i8 95)
  %i.gh = or <16 x i1> %i.gg, %i.gf
  %i.gi = xor <16 x i1> %broadcast.splat, %i.gh
  %i.gj = freeze <16 x i1> %i.gi                  ; 2 uses
  %i.gk = bitcast <16 x i1> %i.gj to i16
  %.not319 = icmp eq i16 %i.gk, 0
  br i1 %.not319, label %vector.body.interim, label %vector.early.exit

vector.body.interim:                              ; preds = %vector.body294
  %vec.ind.next301 = add <16 x i8> %vec.ind299, splat (i8 16)
  %vec.ind.next = add <16 x i32> %vec.ind, splat (i32 16)
  %index.next296 = add nuw i32 %index295, 16      ; 2 uses
  %i.gl = icmp eq i32 %index.next296, %n.vec291
  br i1 %i.gl, label %middle.block297, label %vector.body294, !llvm.loop !227

middle.block297:                                  ; preds = %vector.body.interim
  %cmp.n298 = icmp eq i32 %i.fy, %n.vec291
  br i1 %cmp.n298, label %.critedge, label %scalar.ph288.preheader

scalar.ph288.preheader:                           ; preds = %.lr.ph242, %middle.block297
  %.058.in241.ph = phi i32 [ %.0169, %.lr.ph242 ], [ %i.fz, %middle.block297 ]
  br label %scalar.ph288

vector.early.exit:                                ; preds = %vector.body294
  %first.active.lane = call i64 @llvm.experimental.cttz.elts.i64.v16i1(<16 x i1> %i.gj, i1 false) ; 2 uses
  %i.gm = trunc i64 %first.active.lane to i32
  %i.gn = add i32 %index295, %i.gm
  %i.go = add i32 %.0169, %i.gn
  %i.gp = extractelement <16 x i32> %vec.ind, i64 %first.active.lane
  %4 = add i32 %i.gp, 1
  br label %..critedge_crit_edge244

_ZN10duckdb_re214ByteMapBuilder4MarkEii.exit147.thread: ; preds = %bb.ae, %_ZN10duckdb_re214ByteMapBuilder4MarkEii.exit147
  %i.gq = load ptr, ptr %i.i, align 8, !tbaa !116 ; 3 uses
  %i.gr = load ptr, ptr %i.j, align 8, !tbaa !116
  %.not33.i = icmp eq ptr %i.gq, %i.gr
  br i1 %.not33.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.ac, %_ZN10duckdb_re214ByteMapBuilder4MarkEii.exit147.thread
  %i.gs = phi ptr [ %i.gq, %_ZN10duckdb_re214ByteMapBuilder4MarkEii.exit147.thread ], [ %i.io, %bb.ac ]
  %i.gt = load ptr, ptr %i.a, align 8, !tbaa !113 ; 2 uses
  %i.gu = load ptr, ptr %i.m, align 8, !tbaa !108
  %.not.i.i.i = icmp eq ptr %i.gu, %i.gt
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairIiiESaIS1_EE5clearEv.exit.i, label %_ZSt8_DestroyIPSt4pairIiiES1_EvT_S3_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPSt4pairIiiES1_EvT_S3_RSaIT0_E.exit.i.i.i: ; preds = %._crit_edge.i
  store ptr %i.gt, ptr %i.m, align 8, !tbaa !108
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EE5clearEv.exit.i

_ZNSt6vectorISt4pairIiiESaIS1_EE5clearEv.exit.i:  ; preds = %_ZSt8_DestroyIPSt4pairIiiES1_EvT_S3_RSaIT0_E.exit.i.i.i, %._crit_edge.i
  %i.gv = load ptr, ptr %i.i, align 8, !tbaa !113 ; 2 uses
  %.not.i.i23.i = icmp eq ptr %i.gs, %i.gv
  br i1 %.not.i.i23.i, label %_ZN10duckdb_re214ByteMapBuilder5MergeEv.exit, label %_ZSt8_DestroyIPSt4pairIiiES1_EvT_S3_RSaIT0_E.exit.i.i24.i

_ZSt8_DestroyIPSt4pairIiiES1_EvT_S3_RSaIT0_E.exit.i.i24.i: ; preds = %_ZNSt6vectorISt4pairIiiESaIS1_EE5clearEv.exit.i
  store ptr %i.gv, ptr %i.j, align 8, !tbaa !108
  br label %_ZN10duckdb_re214ByteMapBuilder5MergeEv.exit

.lr.ph.i:                                         ; preds = %_ZN10duckdb_re214ByteMapBuilder4MarkEii.exit147.thread, %bb.ac
  %.sroa.027.034.i = phi ptr [ %i.io, %bb.ac ], [ %i.gq, %_ZN10duckdb_re214ByteMapBuilder4MarkEii.exit147.thread ] ; 3 uses
  %i.gw = load i32, ptr %.sroa.027.034.i, align 4, !tbaa !111 ; 4 uses
  %i.gx = add nsw i32 %i.gw, -1                   ; 3 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %.sroa.027.034.i, i64 4
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !112 ; 5 uses
  %i.ha = icmp sgt i32 %i.gw, 0
  br i1 %i.ha, label %bb.w, label %bb.y

bb.w:                                             ; preds = %.lr.ph.i
  %i.hb = lshr i32 %i.gx, 6
  %i.hc = zext nneg i32 %i.hb to i64
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.hc ; 2 uses
  %i.he = load i64, ptr %i.hd, align 8, !tbaa !117 ; 2 uses
  %i.hf = and i32 %i.gx, 63
  %i.hg = zext nneg i32 %i.hf to i64
  %i.hh = shl nuw i64 1, %i.hg                    ; 2 uses
  %i.hi = and i64 %i.he, %i.hh
  %.not31.i = icmp eq i64 %i.hi, 0
  br i1 %.not31.i, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.hj = or i64 %i.he, %i.hh
  store i64 %i.hj, ptr %i.hd, align 8, !tbaa !117
  %i.hk = invoke noundef i32 @_ZNK10duckdb_re29Bitmap25614FindNextSetBitEi(ptr noundef nonnull align 8 dereferenceable(1112) %1, i32 noundef %i.gw)
          to label %.noexc121 unwind label %.loopexit.split-lp152.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc121:                                        ; preds = %bb.x
  %i.hl = sext i32 %i.hk to i64
  %i.hm = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.hl
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !13
  %i.ho = zext nneg i32 %i.gx to i64
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.ho
  store i32 %i.hn, ptr %i.hp, align 4, !tbaa !13
  br label %bb.y

bb.y:                                             ; preds = %.noexc121, %bb.w, %.lr.ph.i
  %i.hq = sdiv i32 %i.gz, 64
  %i.hr = sext i32 %i.hq to i64
  %i.hs = getelementptr inbounds [8 x i8], ptr %1, i64 %i.hr ; 2 uses
  %i.ht = load i64, ptr %i.hs, align 8, !tbaa !117 ; 2 uses
  %i.hu = srem i32 %i.gz, 64
  %i.hv = zext nneg i32 %i.hu to i64
  %i.hw = shl nuw i64 1, %i.hv                    ; 2 uses
  %i.hx = and i64 %i.ht, %i.hw
  %.not32.i = icmp eq i64 %i.hx, 0
  br i1 %.not32.i, label %bb.z, label %.preheader324

bb.z:                                             ; preds = %bb.y
  %i.hy = or i64 %i.ht, %i.hw
  store i64 %i.hy, ptr %i.hs, align 8, !tbaa !117
  %i.hz = add nsw i32 %i.gz, 1
  %i.ia = invoke noundef i32 @_ZNK10duckdb_re29Bitmap25614FindNextSetBitEi(ptr noundef nonnull align 8 dereferenceable(1112) %1, i32 noundef %i.hz)
          to label %.noexc122 unwind label %.loopexit.split-lp152.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc122:                                        ; preds = %bb.z
  %i.ib = sext i32 %i.ia to i64
  %i.ic = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.ib
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !13
  %i.ie = sext i32 %i.gz to i64
  %i.if = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.ie
  store i32 %i.id, ptr %i.if, align 4, !tbaa !13
  br label %.preheader324

.preheader324:                                    ; preds = %.noexc122, %bb.y
  br label %bb.aa

bb.aa:                                            ; preds = %.preheader324, %.noexc124
  %.0.i = phi i32 [ %i.in, %.noexc124 ], [ %i.gw, %.preheader324 ] ; 2 uses
  %i.ig = icmp slt i32 %.0.i, 256
  br i1 %i.ig, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ih = invoke noundef i32 @_ZNK10duckdb_re29Bitmap25614FindNextSetBitEi(ptr noundef nonnull align 8 dereferenceable(1112) %1, i32 noundef %.0.i)
          to label %.noexc123 unwind label %.loopexit.split-lp152.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc123:                                        ; preds = %bb.ab
  %i.ii = sext i32 %i.ih to i64
  %i.ij = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.ii ; 2 uses
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !13
  %i.il = invoke noundef i32 @_ZN10duckdb_re214ByteMapBuilder7RecolorEi(ptr noundef nonnull align 8 dereferenceable(1112) %1, i32 noundef %i.ik)
          to label %.noexc124 unwind label %.loopexit.split-lp152.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc124:                                        ; preds = %.noexc123
  store i32 %i.il, ptr %i.ij, align 4, !tbaa !13
  %i.im = icmp eq i32 %i.ih, %i.gz
  %i.in = add nsw i32 %i.ih, 1
  br i1 %i.im, label %bb.ac, label %bb.aa

bb.ac:                                            ; preds = %.noexc124, %bb.aa
  %i.io = getelementptr inbounds nuw i8, ptr %.sroa.027.034.i, i64 8 ; 3 uses
  %i.ip = load ptr, ptr %i.j, align 8, !tbaa !116
  %.not.i = icmp eq ptr %i.io, %i.ip
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !0

bb.ad:                                            ; preds = %scalar.ph288
  %exitcond.not = icmp eq i32 %.058, %smax
  br i1 %exitcond.not, label %.critedge, label %scalar.ph288, !llvm.loop !228

scalar.ph288:                                     ; preds = %scalar.ph288.preheader, %bb.ad
  %.058.in241 = phi i32 [ %.058, %bb.ad ], [ %.058.in241.ph, %scalar.ph288.preheader ] ; 2 uses
  %.058 = add i32 %.058.in241, 1                  ; 4 uses
  %i.iq = trunc i32 %.058 to i8                   ; 3 uses
  %i.ir = and i8 %i.iq, -33
  %i.is = add i8 %i.ir, -65
  %or.cond15.i125 = icmp ult i8 %i.is, 26
  %i.it = add i8 %i.iq, -48
  %or.cond8.i126 = icmp ult i8 %i.it, 10
  %or.cond16.i127 = or i1 %or.cond8.i126, %or.cond15.i125
  %i.iu = icmp eq i8 %i.iq, 95
  %i.iv = or i1 %i.iu, %or.cond16.i127
  %i.iw = xor i1 %i.fw, %i.iv
  br i1 %i.iw, label %..critedge_crit_edge244, label %bb.ad, !llvm.loop !229

..critedge_crit_edge244:                          ; preds = %scalar.ph288, %vector.early.exit
  %split245 = phi i32 [ %i.go, %vector.early.exit ], [ %.058.in241, %scalar.ph288 ]
  %split246 = phi i32 [ %4, %vector.early.exit ], [ %.058, %scalar.ph288 ]
  br label %.critedge, !llvm.loop !229

.critedge:                                        ; preds = %bb.ad, %middle.block297, %..critedge_crit_edge244, %.preheader
  %.058.in.lcssa = phi i32 [ %smax, %.preheader ], [ %split245, %..critedge_crit_edge244 ], [ %smax, %middle.block297 ], [ %smax, %bb.ad ] ; 4 uses
  %.058.lcssa = phi i32 [ %i.fx, %.preheader ], [ %split246, %..critedge_crit_edge244 ], [ %i.fx, %middle.block297 ], [ %i.fx, %bb.ad ]
  %i.ix = zext i1 %i.fw to i8
  %i.iy = icmp eq i8 %.059.idx170.sroa.phi.sroa.speculated, %i.ix
  br i1 %i.iy, label %bb.ae, label %_ZN10duckdb_re214ByteMapBuilder4MarkEii.exit147

bb.ae:                                            ; preds = %.critedge
  %i.iz = icmp eq i32 %.0169, 0
  %i.ja = icmp eq i32 %.058.in.lcssa, 255
  %or.cond.i131 = and i1 %i.iz, %i.ja
  br i1 %or.cond.i131, label %_ZN10duckdb_re214ByteMapBuilder4MarkEii.exit147.thread, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.jb = load ptr, ptr %i.j, align 8, !tbaa !108 ; 7 uses
  %i.jc = load ptr, ptr %i.k, align 8, !tbaa !109
  %.not.i.i132 = icmp eq ptr %i.jb, %i.jc
  br i1 %.not.i.i132, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  store i32 %.0169, ptr %i.jb, align 4, !tbaa !111
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jb, i64 4
  store i32 %.058.in.lcssa, ptr %i.jd, align 4, !tbaa !112
  %i.je = getelementptr inbounds nuw i8, ptr %i.jb, i64 8
  store ptr %i.je, ptr %i.j, align 8, !tbaa !108
  br label %_ZN10duckdb_re214ByteMapBuilder4MarkEii.exit147

bb.ah:                                            ; preds = %bb.af
  %i.jf = load ptr, ptr %i.i, align 8, !tbaa !113 ; 7 uses
  %i.jg = ptrtoint ptr %i.jb to i64               ; 2 uses
  %i.jh = ptrtoint ptr %i.jf to i64               ; 3 uses
  %i.ji = sub i64 %i.jg, %i.jh                    ; 3 uses
  %i.jj = icmp eq i64 %i.ji, 9223372036854775800
  br i1 %i.jj, label %bb.ai, label %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i133

bb.ai:                                            ; preds = %bb.ah
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #23
          to label %.noexc145 unwind label %.loopexit.split-lp152.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc145:                                        ; preds = %bb.ai
  unreachable

_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i133: ; preds = %bb.ah
  %i.jk = ashr exact i64 %i.ji, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i134 = call i64 @llvm.umax.i64(i64 %i.jk, i64 1)
  %i.jl = add nsw i64 %.sroa.speculated.i.i.i.i134, %i.jk ; 2 uses
  %i.jm = icmp ult i64 %i.jl, %i.jk
  %i.jn = call i64 @llvm.umin.i64(i64 %i.jl, i64 1152921504606846975)
  %i.jo = select i1 %i.jm, i64 1152921504606846975, i64 %i.jn ; 3 uses
  %.not.i.i.i.i135 = icmp ne i64 %i.jo, 0
  call void @llvm.assume(i1 %.not.i.i.i.i135)
  %i.jp = shl nuw nsw i64 %i.jo, 3
  %i.jq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jp) #24
          to label %.noexc146 unwind label %.loopexit.split-lp152.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 8 uses

.noexc146:                                        ; preds = %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i133
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 %i.ji ; 2 uses
  store i32 %.0169, ptr %i.jr, align 4, !tbaa !111
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 4
  store i32 %.058.in.lcssa, ptr %i.js, align 4, !tbaa !112
  %.not10.i.i.i.i.i.i.i136 = icmp eq ptr %i.jf, %i.jb
  br i1 %.not10.i.i.i.i.i.i.i136, label %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i.i141, label %.lr.ph.i.i.i.i.i.i.i137.preheader

.lr.ph.i.i.i.i.i.i.i137.preheader:                ; preds = %.noexc146
  %i.jt = ptrtoaddr ptr %i.jq to i64
  %i.ju = add i64 %i.jg, -8
  %i.jv = sub i64 %i.ju, %i.jh                    ; 2 uses
  %i.jw = lshr i64 %i.jv, 3
  %i.jx = add nuw nsw i64 %i.jw, 1                ; 2 uses
  %min.iters.check272 = icmp ult i64 %i.jv, 24
  %i.jy = sub i64 %i.jh, %i.jt
  %diff.check274 = icmp ugt i64 %i.jy, -32
  %or.cond323 = or i1 %min.iters.check272, %diff.check274
  br i1 %or.cond323, label %.lr.ph.i.i.i.i.i.i.i137.preheader328, label %vector.ph275

vector.ph275:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i137.preheader
  %n.vec276 = and i64 %i.jx, 4611686018427387900  ; 3 uses
  %i.jz = shl i64 %n.vec276, 3                    ; 2 uses
  %i.ka = getelementptr i8, ptr %i.jq, i64 %i.jz  ; 2 uses
  %i.kb = getelementptr i8, ptr %i.jf, i64 %i.jz
  br label %vector.body277

vector.body277:                                   ; preds = %vector.body277, %vector.ph275
  %index278 = phi i64 [ 0, %vector.ph275 ], [ %index.next283, %vector.body277 ] ; 2 uses
  %i.kc = shl i64 %index278, 3                    ; 2 uses
  %next.gep279 = getelementptr i8, ptr %i.jq, i64 %i.kc ; 2 uses
  %next.gep280 = getelementptr i8, ptr %i.jf, i64 %i.kc ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !244)
  call void @llvm.experimental.noalias.scope.decl(metadata !245)
  %i.kd = getelementptr i8, ptr %next.gep280, i64 16
  %wide.load281 = load <2 x i64>, ptr %next.gep280, align 4, !alias.scope !245
  %wide.load282 = load <2 x i64>, ptr %i.kd, align 4, !alias.scope !245
  %i.ke = getelementptr i8, ptr %next.gep279, i64 16
  store <2 x i64> %wide.load281, ptr %next.gep279, align 4, !alias.scope !244
  store <2 x i64> %wide.load282, ptr %i.ke, align 4, !alias.scope !244
  %index.next283 = add nuw i64 %index278, 4       ; 2 uses
  %i.kf = icmp eq i64 %index.next283, %n.vec276
  br i1 %i.kf, label %middle.block284, label %vector.body277, !llvm.loop !233

middle.block284:                                  ; preds = %vector.body277
  %cmp.n285 = icmp eq i64 %i.jx, %n.vec276
  br i1 %cmp.n285, label %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i.i141, label %.lr.ph.i.i.i.i.i.i.i137.preheader328

.lr.ph.i.i.i.i.i.i.i137.preheader328:             ; preds = %.lr.ph.i.i.i.i.i.i.i137.preheader, %middle.block284
  %.012.i.i.i.i.i.i.i138.ph = phi ptr [ %i.jq, %.lr.ph.i.i.i.i.i.i.i137.preheader ], [ %i.ka, %middle.block284 ]
  %.0911.i.i.i.i.i.i.i139.ph = phi ptr [ %i.jf, %.lr.ph.i.i.i.i.i.i.i137.preheader ], [ %i.kb, %middle.block284 ]
  br label %.lr.ph.i.i.i.i.i.i.i137

.lr.ph.i.i.i.i.i.i.i137:                          ; preds = %.lr.ph.i.i.i.i.i.i.i137.preheader328, %.lr.ph.i.i.i.i.i.i.i137
  %.012.i.i.i.i.i.i.i138 = phi ptr [ %i.ki, %.lr.ph.i.i.i.i.i.i.i137 ], [ %.012.i.i.i.i.i.i.i138.ph, %.lr.ph.i.i.i.i.i.i.i137.preheader328 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i139 = phi ptr [ %i.kh, %.lr.ph.i.i.i.i.i.i.i137 ], [ %.0911.i.i.i.i.i.i.i139.ph, %.lr.ph.i.i.i.i.i.i.i137.preheader328 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !244)
  call void @llvm.experimental.noalias.scope.decl(metadata !245)
  %i.kg = load i64, ptr %.0911.i.i.i.i.i.i.i139, align 4, !alias.scope !245
  store i64 %i.kg, ptr %.012.i.i.i.i.i.i.i138, align 4, !alias.scope !244
  %i.kh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i139, i64 8 ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i138, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i140 = icmp eq ptr %i.kh, %i.jb
  br i1 %.not.i.i.i.i.i.i.i140, label %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i.i141, label %.lr.ph.i.i.i.i.i.i.i137, !llvm.loop !234

_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i.i141: ; preds = %.lr.ph.i.i.i.i.i.i.i137, %middle.block284, %.noexc146
  %.0.lcssa.i.i.i.i.i.i.i142 = phi ptr [ %i.jq, %.noexc146 ], [ %i.ka, %middle.block284 ], [ %i.ki, %.lr.ph.i.i.i.i.i.i.i137 ]
  %i.kj = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i142, i64 8
  %.not.i34.i.i.i143 = icmp eq ptr %i.jf, null
  br i1 %.not.i34.i.i.i143, label %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJRiS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i144, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i.i141
  call void @_ZdlPv(ptr noundef nonnull %i.jf) #20
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJRiS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i144

_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJRiS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i144: ; preds = %bb.aj, %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i.i141
  store ptr %i.jq, ptr %i.i, align 8, !tbaa !113
  store ptr %i.kj, ptr %i.j, align 8, !tbaa !108
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %i.jq, i64 %i.jo
  store ptr %i.kk, ptr %i.k, align 8, !tbaa !109
  br label %_ZN10duckdb_re214ByteMapBuilder4MarkEii.exit147

_ZN10duckdb_re214ByteMapBuilder4MarkEii.exit147:  ; preds = %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJRiS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i144, %bb.ag, %.critedge
  %i.kl = icmp slt i32 %.058.in.lcssa, 255
  br i1 %i.kl, label %.preheader, label %_ZN10duckdb_re214ByteMapBuilder4MarkEii.exit147.thread, !llvm.loop !235

_ZN10duckdb_re214ByteMapBuilder5MergeEv.exit:     ; preds = %_ZSt8_DestroyIPSt4pairIiiES1_EvT_S3_RSaIT0_E.exit.i.i24.i, %_ZNSt6vectorISt4pairIiiESaIS1_EE5clearEv.exit.i
  br i1 %.not, label %.critedge84, label %bb.v

.loopexit.split-lp152.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.z, %bb.x, %bb.ab, %.noexc123, %bb.b, %.noexc, %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i106, %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i90, %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i, %_ZN10duckdb_re214ByteMapBuilder4MarkEii.exit120, %bb.o, %.invoke, %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i133, %bb.ai
  %lpad.loopexit.split-lp333 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10duckdb_re214ByteMapBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(1112) dereferenceable(1112) %1) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  resume { ptr, i32 } %lpad.loopexit.split-lp333

.critedge84:                                      ; preds = %_ZN10duckdb_re214ByteMapBuilder5MergeEv.exit, %bb.n, %bb.c, %bb.u, %bb.o
  %.373 = phi i1 [ %.070171, %bb.o ], [ %.070171, %bb.c ], [ %.171, %bb.u ], [ %.070171, %bb.n ], [ %.171, %_ZN10duckdb_re214ByteMapBuilder5MergeEv.exit ]
  %.269 = phi i1 [ %.067172, %bb.o ], [ %.067172, %bb.c ], [ %.067172, %bb.u ], [ %.067172, %bb.n ], [ true, %_ZN10duckdb_re214ByteMapBuilder5MergeEv.exit ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.km = load i32, ptr %i.e, align 8, !tbaa !82
  %i.kn = sext i32 %i.km to i64
  %i.ko = icmp slt i64 %indvars.iv.next, %i.kn
  br i1 %i.ko, label %bb.c, label %._crit_edge, !llvm.loop !236

bb.ak:                                            ; preds = %.loopexit.i
  %i.kp = load i32, ptr %i.d, align 8, !tbaa !123
  store i32 %i.kp, ptr %i.o, align 4, !tbaa !13
  %i.kq = getelementptr inbounds nuw i8, ptr %1, i64 1088
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !113 ; 2 uses
  %.not.i.i.i.i148 = icmp eq ptr %i.kr, null
  br i1 %.not.i.i.i.i148, label %_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev.exit.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @_ZdlPv(ptr noundef nonnull %i.kr) #20
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev.exit.i

_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev.exit.i:      ; preds = %bb.al, %bb.ak
  %i.ks = load ptr, ptr %i.a, align 8, !tbaa !113 ; 2 uses
  %.not.i.i.i1.i = icmp eq ptr %i.ks, null
  br i1 %.not.i.i.i1.i, label %_ZN10duckdb_re214ByteMapBuilderD2Ev.exit, label %bb.am

bb.am:                                            ; preds = %_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.ks) #20
  br label %_ZN10duckdb_re214ByteMapBuilderD2Ev.exit

_ZN10duckdb_re214ByteMapBuilderD2Ev.exit:         ; preds = %_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev.exit.i, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN10duckdb_re214ByteMapBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(1112) dereferenceable(1112) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 !guid !246 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !113  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef nonnull %i.b) #20
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev.exit

end_hunk_0
