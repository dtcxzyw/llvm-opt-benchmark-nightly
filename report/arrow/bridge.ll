Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/bridge?download=true
inline.NumInlined: 8866
inline.NumDeleted: 3382
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN5arrow12_GLOBAL__N_114SchemaExporter14ExportChildrenERKSt6vectorISt10shared_ptrINS_5FieldEESaIS5_EE:bb.a
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = sub nuw nsw i64 24019198012642645, %i.t
  %i.ad = icmp ule i64 %i.aa, %i.ac
  tail call void @llvm.assume(i1 %i.ad)
  %.not28.i.i = icmp ult i64 %i.aa, %i.v
  br i1 %.not28.i.i, label %bb.c, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %bb.b
  %.neg = add nuw nsw i64 %i.t, 1
  %xtraiter = and i64 %i.v, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i.i.prol.loopexit, label %.preheader.i.i.prol

.preheader.i.i.prol:                              ; preds = %.preheader.i.i.preheader
  %i.ae = getelementptr inbounds nuw i8, ptr %.val8.i, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %i.ae, i8 0, i64 280, i1 false)
  store ptr %i.ae, ptr %.val8.i, align 8, !tbaa !92
  %i.af = getelementptr inbounds nuw i8, ptr %.val8.i, i64 8
  store i64 0, ptr %i.af, align 8, !tbaa !94
  %i.ag = getelementptr inbounds nuw i8, ptr %.val8.i, i64 32
  %i.ah = getelementptr inbounds nuw i8, ptr %.val8.i, i64 48
  store ptr %i.ah, ptr %i.ag, align 8, !tbaa !92
  %i.ai = getelementptr inbounds nuw i8, ptr %.val8.i, i64 64
  %i.aj = getelementptr inbounds nuw i8, ptr %.val8.i, i64 80
  store ptr %i.aj, ptr %i.ai, align 8, !tbaa !92
  %i.ak = getelementptr inbounds nuw i8, ptr %.val8.i, i64 168
  %i.al = getelementptr inbounds nuw i8, ptr %.val8.i, i64 248
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !99
  %i.am = getelementptr inbounds nuw i8, ptr %.val8.i, i64 264
  %i.an = getelementptr inbounds nuw i8, ptr %.val8.i, i64 296
  store i64 0, ptr %i.an, align 8, !tbaa !103
  %i.ao = getelementptr inbounds nuw i8, ptr %.val8.i, i64 304
  store ptr %i.am, ptr %i.ao, align 8, !tbaa !104
  %i.ap = getelementptr inbounds nuw i8, ptr %.val8.i, i64 312
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ap, i8 0, i64 72, i1 false)
  %i.aq = add nsw i64 %i.v, -1
  %i.ar = getelementptr inbounds nuw i8, ptr %.val8.i, i64 384 ; 2 uses
  br label %.preheader.i.i.prol.loopexit

.preheader.i.i.prol.loopexit:                     ; preds = %.preheader.i.i.prol, %.preheader.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.preheader.i.i.preheader ], [ %i.ar, %.preheader.i.i.prol ]
  %.07.i.i.i.i.i.unr = phi ptr [ %.val8.i, %.preheader.i.i.preheader ], [ %i.ar, %.preheader.i.i.prol ]
  %.056.i.i.i.i.i.unr = phi i64 [ %i.v, %.preheader.i.i.preheader ], [ %i.aq, %.preheader.i.i.prol ]
  %i.as = icmp eq i64 %i.o, %.neg
  br i1 %i.as, label %_ZSt27__uninitialized_default_n_aIPN5arrow12_GLOBAL__N_114SchemaExporterEmS2_ET_S4_T0_RSaIT1_E.exit.i.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.prol.loopexit, %.preheader.i.i
  %.07.i.i.i.i.i = phi ptr [ %i.bt, %.preheader.i.i ], [ %.07.i.i.i.i.i.unr, %.preheader.i.i.prol.loopexit ] ; 27 uses
  %.056.i.i.i.i.i = phi i64 [ %i.bs, %.preheader.i.i ], [ %.056.i.i.i.i.i.unr, %.preheader.i.i.prol.loopexit ]
  %i.at = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %i.at, i8 0, i64 280, i1 false)
  store ptr %i.at, ptr %.07.i.i.i.i.i, align 8, !tbaa !92
  %i.au = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 8
  store i64 0, ptr %i.au, align 8, !tbaa !94
  %i.av = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 32
  %i.aw = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 48
  store ptr %i.aw, ptr %i.av, align 8, !tbaa !92
  %i.ax = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 64
  %i.ay = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 80
  store ptr %i.ay, ptr %i.ax, align 8, !tbaa !92
  %i.az = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 168
  %i.ba = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 248
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !99
  %i.bb = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 264
  %i.bc = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 296
  store i64 0, ptr %i.bc, align 8, !tbaa !103
  %i.bd = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 304
  store ptr %i.bb, ptr %i.bd, align 8, !tbaa !104
  %i.be = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 312
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.be, i8 0, i64 72, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 384
  %i.bg = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 400 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %i.bg, i8 0, i64 280, i1 false)
  store ptr %i.bg, ptr %i.bf, align 8, !tbaa !92
  %i.bh = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 392
  store i64 0, ptr %i.bh, align 8, !tbaa !94
  %i.bi = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 416
  %i.bj = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 432
  store ptr %i.bj, ptr %i.bi, align 8, !tbaa !92
  %i.bk = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 448
  %i.bl = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 464
  store ptr %i.bl, ptr %i.bk, align 8, !tbaa !92
  %i.bm = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 552
  %i.bn = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 632
  store ptr %i.bm, ptr %i.bn, align 8, !tbaa !99
  %i.bo = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 648
  %i.bp = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 680
  store i64 0, ptr %i.bp, align 8, !tbaa !103
  %i.bq = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 688
  store ptr %i.bo, ptr %i.bq, align 8, !tbaa !104
  %i.br = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 696
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.br, i8 0, i64 72, i1 false)
  %i.bs = add nsw i64 %.056.i.i.i.i.i, -2         ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 768 ; 2 uses
  %.not.i.i.i.i.i.1 = icmp eq i64 %i.bs, 0
  br i1 %.not.i.i.i.i.i.1, label %_ZSt27__uninitialized_default_n_aIPN5arrow12_GLOBAL__N_114SchemaExporterEmS2_ET_S4_T0_RSaIT1_E.exit.i.i, label %.preheader.i.i, !llvm.loop !1186

_ZSt27__uninitialized_default_n_aIPN5arrow12_GLOBAL__N_114SchemaExporterEmS2_ET_S4_T0_RSaIT1_E.exit.i.i: ; preds = %.preheader.i.i, %.preheader.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.preheader.i.i.prol.loopexit ], [ %i.bt, %.preheader.i.i ]
  store ptr %.lcssa, ptr %i.p, align 8, !tbaa !153
  br label %_ZNSt6vectorIN5arrow12_GLOBAL__N_114SchemaExporterESaIS2_EE6resizeEm.exit

bb.c:                                             ; preds = %bb.b
  %i.bu = icmp ugt i64 %i.o, 24019198012642645
  br i1 %i.bu, label %bb.d, label %_ZNKSt6vectorIN5arrow12_GLOBAL__N_114SchemaExporterESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.66) #41
  unreachable

_ZNKSt6vectorIN5arrow12_GLOBAL__N_114SchemaExporterESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.t, i64 range(i64 1, 0) %i.v)
  %i.bv = add nuw nsw i64 %.sroa.speculated.i.i.i, %i.t
  %i.bw = tail call i64 @llvm.umin.i64(i64 %i.bv, i64 24019198012642645) ; 2 uses
  %i.bx = mul nuw nsw i64 %i.bw, 384
  %i.by = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bx) #38 ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.s ; 16 uses
  %.neg30 = add nuw nsw i64 %i.t, 1
  %xtraiter28 = and i64 %i.v, 1
  %lcmp.mod29.not = icmp eq i64 %xtraiter28, 0
  br i1 %lcmp.mod29.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %_ZNKSt6vectorIN5arrow12_GLOBAL__N_114SchemaExporterESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %i.ca, i8 0, i64 280, i1 false)
  store ptr %i.ca, ptr %i.bz, align 8, !tbaa !92
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store i64 0, ptr %i.cb, align 8, !tbaa !94
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 48
  store ptr %i.cd, ptr %i.cc, align 8, !tbaa !92
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bz, i64 64
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bz, i64 80
  store ptr %i.cf, ptr %i.ce, align 8, !tbaa !92
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bz, i64 168
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bz, i64 248
  store ptr %i.cg, ptr %i.ch, align 8, !tbaa !99
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bz, i64 264
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bz, i64 296
  store i64 0, ptr %i.cj, align 8, !tbaa !103
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bz, i64 304
  store ptr %i.ci, ptr %i.ck, align 8, !tbaa !104
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bz, i64 312
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.cl, i8 0, i64 72, i1 false)
  %i.cm = add nsw i64 %i.v, -1
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bz, i64 384
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %_ZNKSt6vectorIN5arrow12_GLOBAL__N_114SchemaExporterESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %.07.i.i.i32.i.i.unr = phi ptr [ %i.bz, %_ZNKSt6vectorIN5arrow12_GLOBAL__N_114SchemaExporterESaIS2_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.cn, %.prol.loopexit.unr-lcssa ]
  %.056.i.i.i33.i.i.unr = phi i64 [ %i.v, %_ZNKSt6vectorIN5arrow12_GLOBAL__N_114SchemaExporterESaIS2_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.cm, %.prol.loopexit.unr-lcssa ]
  %i.co = icmp eq i64 %i.o, %.neg30
  br i1 %i.co, label %_ZSt27__uninitialized_default_n_aIPN5arrow12_GLOBAL__N_114SchemaExporterEmS2_ET_S4_T0_RSaIT1_E.exit35.i.i, label %_ZNKSt6vectorIN5arrow12_GLOBAL__N_114SchemaExporterESaIS2_EE12_M_check_lenEmPKc.exit.i.i.new

_ZNKSt6vectorIN5arrow12_GLOBAL__N_114SchemaExporterESaIS2_EE12_M_check_lenEmPKc.exit.i.i.new: ; preds = %.prol.loopexit, %_ZNKSt6vectorIN5arrow12_GLOBAL__N_114SchemaExporterESaIS2_EE12_M_check_lenEmPKc.exit.i.i.new
  %.07.i.i.i32.i.i = phi ptr [ %i.dp, %_ZNKSt6vectorIN5arrow12_GLOBAL__N_114SchemaExporterESaIS2_EE12_M_check_lenEmPKc.exit.i.i.new ], [ %.07.i.i.i32.i.i.unr, %.prol.loopexit ] ; 27 uses
  %.056.i.i.i33.i.i = phi i64 [ %i.do, %_ZNKSt6vectorIN5arrow12_GLOBAL__N_114SchemaExporterESaIS2_EE12_M_check_lenEmPKc.exit.i.i.new ], [ %.056.i.i.i33.i.i.unr, %.prol.loopexit ]
  %i.cp = getelementptr inbounds nuw i8, ptr %.07.i.i.i32.i.i, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %i.cp, i8 0, i64 280, i1 false)
  store ptr %i.cp, ptr %.07.i.i.i32.i.i, align 8, !tbaa !92
  %i.cq = getelementptr inbounds nuw i8, ptr %.07.i.i.i32.i.i, i64 8
  store i64 0, ptr %i.cq, align 8, !tbaa !94
  %i.cr = getelementptr inbounds nuw i8, ptr %.07.i.i.i32.i.i, i64 32
  %i.cs = getelementptr inbounds nuw i8, ptr %.07.i.i.i32.i.i, i64 48
  store ptr %i.cs, ptr %i.cr, align 8, !tbaa !92
  %i.ct = getelementptr inbounds nuw i8, ptr %.07.i.i.i32.i.i, i64 64
  %i.cu = getelementptr inbounds nuw i8, ptr %.07.i.i.i32.i.i, i64 80
  store ptr %i.cu, ptr %i.ct, align 8, !tbaa !92
  %i.cv = getelementptr inbounds nuw i8, ptr %.07.i.i.i32.i.i, i64 168
  %i.cw = getelementptr inbounds nuw i8, ptr %.07.i.i.i32.i.i, i64 248
  store ptr %i.cv, ptr %i.cw, align 8, !tbaa !99
  %i.cx = getelementptr inbounds nuw i8, ptr %.07.i.i.i32.i.i, i64 264
  %i.cy = getelementptr inbounds nuw i8, ptr %.07.i.i.i32.i.i, i64 296
  store i64 0, ptr %i.cy, align 8, !tbaa !103
  %i.cz = getelementptr inbounds nuw i8, ptr %.07.i.i.i32.i.i, i64 304
  store ptr %i.cx, ptr %i.cz, align 8, !tbaa !104
  %i.da = getelementptr inbounds nuw i8, ptr %.07.i.i.i32.i.i, i64 312
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.da, i8 0, i64 72, i1 false)
  %i.db = getelementptr inbounds nuw i8, ptr %.07.i.i.i32.i.i, i64 384
  %i.dc = getelementptr inbounds nuw i8, ptr %.07.i.i.i32.i.i, i64 400 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %i.dc, i8 0, i64 280, i1 false)
  store ptr %i.dc, ptr %i.db, align 8, !tbaa !92
  %i.dd = getelementptr inbounds nuw i8, ptr %.07.i.i.i32.i.i, i64 392
  store i64 0, ptr %i.dd, align 8, !tbaa !94
  %i.de = getelementptr inbounds nuw i8, ptr %.07.i.i.i32.i.i, i64 416
  %i.df = getelementptr inbounds nuw i8, ptr %.07.i.i.i32.i.i, i64 432
  store ptr %i.df, ptr %i.de, align 8, !tbaa !92
  %i.dg = getelementptr inbounds nuw i8, ptr %.07.i.i.i32.i.i, i64 448
  %i.dh = getelementptr inbounds nuw i8, ptr %.07.i.i.i32.i.i, i64 464
  store ptr %i.dh, ptr %i.dg, align 8, !tbaa !92
  %i.di = getelementptr inbounds nuw i8, ptr %.07.i.i.i32.i.i, i64 552
  %i.dj = getelementptr inbounds nuw i8, ptr %.07.i.i.i32.i.i, i64 632
  store ptr %i.di, ptr %i.dj, align 8, !tbaa !99
  %i.dk = getelementptr inbounds nuw i8, ptr %.07.i.i.i32.i.i, i64 648
  %i.dl = getelementptr inbounds nuw i8, ptr %.07.i.i.i32.i.i, i64 680
  store i64 0, ptr %i.dl, align 8, !tbaa !103
  %i.dm = getelementptr inbounds nuw i8, ptr %.07.i.i.i32.i.i, i64 688
  store ptr %i.dk, ptr %i.dm, align 8, !tbaa !104
  %i.dn = getelementptr inbounds nuw i8, ptr %.07.i.i.i32.i.i, i64 696
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.dn, i8 0, i64 72, i1 false)
  %i.do = add i64 %.056.i.i.i33.i.i, -2           ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.07.i.i.i32.i.i, i64 768
  %.not.i.i.i34.i.i.1 = icmp eq i64 %i.do, 0
  br i1 %.not.i.i.i34.i.i.1, label %_ZSt27__uninitialized_default_n_aIPN5arrow12_GLOBAL__N_114SchemaExporterEmS2_ET_S4_T0_RSaIT1_E.exit35.i.i, label %_ZNKSt6vectorIN5arrow12_GLOBAL__N_114SchemaExporterESaIS2_EE12_M_check_lenEmPKc.exit.i.i.new, !llvm.loop !1186

_ZSt27__uninitialized_default_n_aIPN5arrow12_GLOBAL__N_114SchemaExporterEmS2_ET_S4_T0_RSaIT1_E.exit35.i.i: ; preds = %_ZNKSt6vectorIN5arrow12_GLOBAL__N_114SchemaExporterESaIS2_EE12_M_check_lenEmPKc.exit.i.i.new, %.prol.loopexit
  %.not1.i.i.i.i.i = icmp eq ptr %.val7.i, %.val8.i
  br i1 %.not1.i.i.i.i.i, label %_ZNSt6vectorIN5arrow12_GLOBAL__N_114SchemaExporterESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZSt27__uninitialized_default_n_aIPN5arrow12_GLOBAL__N_114SchemaExporterEmS2_ET_S4_T0_RSaIT1_E.exit35.i.i, %.lr.ph.i.i.i.i.i
  %.03.i.i.i.i.i = phi ptr [ %i.ei, %.lr.ph.i.i.i.i.i ], [ %i.by, %_ZSt27__uninitialized_default_n_aIPN5arrow12_GLOBAL__N_114SchemaExporterEmS2_ET_S4_T0_RSaIT1_E.exit35.i.i ] ; 8 uses
  %.092.i.i.i.i.i = phi ptr [ %i.eh, %.lr.ph.i.i.i.i.i ], [ %.val7.i, %_ZSt27__uninitialized_default_n_aIPN5arrow12_GLOBAL__N_114SchemaExporterEmS2_ET_S4_T0_RSaIT1_E.exit35.i.i ] ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1194)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1195)
  tail call fastcc void @_ZN5arrow12_GLOBAL__N_125ExportedSchemaPrivateDataC2EOS1_(ptr noundef nonnull align 8 dereferenceable(384) %.03.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(384) %.092.i.i.i.i.i) #31
  %i.dq = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 320
  %i.dr = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 320
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !129, !alias.scope !1195, !noalias !1194
  store i64 %i.ds, ptr %i.dq, align 8, !tbaa !129, !alias.scope !1194, !noalias !1195
  %i.dt = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 328
  %i.du = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 328 ; 2 uses
  %i.dv = load <2 x ptr>, ptr %i.du, align 8, !tbaa !484, !alias.scope !1195, !noalias !1194
  store <2 x ptr> %i.dv, ptr %i.dt, align 8, !tbaa !484, !alias.scope !1194, !noalias !1195
  %i.dw = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 344
  %i.dx = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 344
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !168, !alias.scope !1195, !noalias !1194
  store ptr %i.dy, ptr %i.dw, align 8, !tbaa !168, !alias.scope !1194, !noalias !1195
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.du, i8 0, i64 24, i1 false), !alias.scope !1195, !noalias !1194
  %i.dz = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 352
  %i.ea = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 352 ; 2 uses
  %.val.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ea, align 8, !tbaa !151, !alias.scope !1195, !noalias !1194
  store i64 %.val.i.i.i.i.i.i.i.i.i.i.i, ptr %i.dz, align 8, !tbaa !151, !alias.scope !1194, !noalias !1195
  store ptr null, ptr %i.ea, align 8, !tbaa !151, !alias.scope !1195, !noalias !1194
  %i.eb = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 360
  %i.ec = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 360 ; 2 uses
  %i.ed = load <2 x ptr>, ptr %i.ec, align 8, !tbaa !151, !alias.scope !1195, !noalias !1194
  store <2 x ptr> %i.ed, ptr %i.eb, align 8, !tbaa !151, !alias.scope !1194, !noalias !1195
  %i.ee = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 376
  %i.ef = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 376
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !165, !alias.scope !1195, !noalias !1194
  store ptr %i.eg, ptr %i.ee, align 8, !tbaa !165, !alias.scope !1194, !noalias !1195
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ec, i8 0, i64 24, i1 false), !alias.scope !1195, !noalias !1194
  tail call fastcc void @_ZN5arrow12_GLOBAL__N_114SchemaExporterD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %.092.i.i.i.i.i) #40, !inline_history !485
  %i.eh = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 384 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 384
  %.not.i.i.i37.i.i = icmp eq ptr %i.eh, %.val8.i
  br i1 %.not.i.i.i37.i.i, label %_ZNSt6vectorIN5arrow12_GLOBAL__N_114SchemaExporterESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1190

_ZNSt6vectorIN5arrow12_GLOBAL__N_114SchemaExporterESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZSt27__uninitialized_default_n_aIPN5arrow12_GLOBAL__N_114SchemaExporterEmS2_ET_S4_T0_RSaIT1_E.exit35.i.i
  %.not.i38.i.i = icmp eq ptr %.val7.i, null
  br i1 %.not.i38.i.i, label %_ZNSt12_Vector_baseIN5arrow12_GLOBAL__N_114SchemaExporterESaIS2_EE13_M_deallocateEPS2_m.exit39.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN5arrow12_GLOBAL__N_114SchemaExporterESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i.i
  %i.ej = load ptr, ptr %i.w, align 8, !tbaa !165
  %i.ek = ptrtoint ptr %i.ej to i64
  %i.el = sub i64 %i.ek, %i.r
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef %i.el) #33
  br label %_ZNSt12_Vector_baseIN5arrow12_GLOBAL__N_114SchemaExporterESaIS2_EE13_M_deallocateEPS2_m.exit39.i.i

_ZNSt12_Vector_baseIN5arrow12_GLOBAL__N_114SchemaExporterESaIS2_EE13_M_deallocateEPS2_m.exit39.i.i: ; preds = %bb.e, %_ZNSt6vectorIN5arrow12_GLOBAL__N_114SchemaExporterESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i.i
  store ptr %i.by, ptr %i.i, align 8, !tbaa !152
  %i.em = getelementptr inbounds nuw [384 x i8], ptr %i.bz, i64 %i.v
  store ptr %i.em, ptr %i.p, align 8, !tbaa !153
  %i.en = getelementptr inbounds nuw [384 x i8], ptr %i.by, i64 %i.bw
  store ptr %i.en, ptr %i.w, align 8, !tbaa !165
  br label %_ZNSt6vectorIN5arrow12_GLOBAL__N_114SchemaExporterESaIS2_EE6resizeEm.exit

bb.f:                                             ; preds = %bb.a
  %i.eo = icmp ult i64 %i.o, %i.t
  br i1 %i.eo, label %bb.g, label %_ZNSt6vectorIN5arrow12_GLOBAL__N_114SchemaExporterESaIS2_EE6resizeEm.exit

bb.g:                                             ; preds = %bb.f
  %i.ep = getelementptr inbounds nuw [384 x i8], ptr %.val7.i, i64 %i.o ; 3 uses
  %.not.i9.i = icmp eq ptr %.val8.i, %i.ep
  br i1 %.not.i9.i, label %_ZNSt6vectorIN5arrow12_GLOBAL__N_114SchemaExporterESaIS2_EE6resizeEm.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g, %.lr.ph.i.i.i
  %.0.i3.i.i.i = phi ptr [ %i.eq, %.lr.ph.i.i.i ], [ %i.ep, %bb.g ] ; 2 uses
  tail call fastcc void @_ZN5arrow12_GLOBAL__N_114SchemaExporterD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %.0.i3.i.i.i) #35, !inline_history !1196
  %i.eq = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i, i64 384 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.eq, %.val8.i
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN5arrow12_GLOBAL__N_114SchemaExporterES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !30

_ZSt8_DestroyIPN5arrow12_GLOBAL__N_114SchemaExporterES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.ep, ptr %i.p, align 8, !tbaa !153
  br label %_ZNSt6vectorIN5arrow12_GLOBAL__N_114SchemaExporterESaIS2_EE6resizeEm.exit

_ZNSt6vectorIN5arrow12_GLOBAL__N_114SchemaExporterESaIS2_EE6resizeEm.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPN5arrow12_GLOBAL__N_114SchemaExporterEmS2_ET_S4_T0_RSaIT1_E.exit.i.i, %_ZNSt12_Vector_baseIN5arrow12_GLOBAL__N_114SchemaExporterESaIS2_EE13_M_deallocateEPS2_m.exit39.i.i, %bb.f, %bb.g, %_ZSt8_DestroyIPN5arrow12_GLOBAL__N_114SchemaExporterES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.er = load ptr, ptr %i.b, align 8, !tbaa !352
  %i.es = load ptr, ptr %2, align 8, !tbaa !353   ; 2 uses
  %.not = icmp eq ptr %i.er, %i.es
  br i1 %.not, label %._crit_edge, label %_ZN5arrow6StatusD2Ev.exit

bb.h:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.et = add nuw i64 %.020, 1                    ; 2 uses
  %i.eu = load ptr, ptr %i.b, align 8, !tbaa !352
  %i.ev = load ptr, ptr %2, align 8, !tbaa !353   ; 2 uses
  %i.ew = ptrtoint ptr %i.eu to i64
  %i.ex = ptrtoint ptr %i.ev to i64
  %i.ey = sub i64 %i.ew, %i.ex
  %i.ez = ashr exact i64 %i.ey, 4
  %i.fa = icmp ult i64 %i.et, %i.ez
  br i1 %i.fa, label %_ZN5arrow6StatusD2Ev.exit, label %._crit_edge, !llvm.loop !1191

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZNSt6vectorIN5arrow12_GLOBAL__N_114SchemaExporterESaIS2_EE6resizeEm.exit, %bb.h
  %i.fb = phi ptr [ %i.ev, %bb.h ], [ %i.es, %_ZNSt6vectorIN5arrow12_GLOBAL__N_114SchemaExporterESaIS2_EE6resizeEm.exit ]
  %.020 = phi i64 [ %i.et, %bb.h ], [ 0, %_ZNSt6vectorIN5arrow12_GLOBAL__N_114SchemaExporterESaIS2_EE6resizeEm.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  %.val = load ptr, ptr %i.i, align 8, !tbaa !152
  %i.fc = getelementptr inbounds nuw [384 x i8], ptr %.val, i64 %.020
  %i.fd = getelementptr inbounds nuw [16 x i8], ptr %i.fb, i64 %.020
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !351
  call fastcc void @_ZN5arrow12_GLOBAL__N_114SchemaExporter11ExportFieldERKNS_5FieldE(ptr dead_on_unwind noalias writable align 8 %3, ptr noundef nonnull align 8 dereferenceable(384) %i.fc, ptr noundef nonnull align 8 dereferenceable(96) %i.fe)
  %i.ff = load ptr, ptr %3, align 8, !tbaa !132   ; 2 uses
  store ptr %i.ff, ptr %0, align 8, !tbaa !132
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  %i.fg = icmp eq ptr %i.ff, null
  br i1 %i.fg, label %bb.h, label %.critedge

._crit_edge:                                      ; preds = %bb.h, %_ZNSt6vectorIN5arrow12_GLOBAL__N_114SchemaExporterESaIS2_EE6resizeEm.exit
  store ptr null, ptr %0, align 8, !tbaa !132, !alias.scope !1197
  br label %.critedge

.critedge:                                        ; preds = %_ZN5arrow6StatusD2Ev.exit, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow12_GLOBAL__N_114SchemaExporter14ExportMetadataEPKNS_16KeyValueMetadataE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr nofree noundef nonnull align 8 captures(address) dereferenceable(384) %1, ptr noundef %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Result.275", align 8 ; 17 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.arrow::KeyValueMetadata", align 8 ; 15 uses
  %6 = alloca %"class.std::vector.270", align 8   ; 8 uses
  %7 = alloca %"class.std::vector.270", align 8   ; 9 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %10 = alloca %"class.arrow::Result.275", align 8 ; 17 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = load atomic i8, ptr @_ZGVZN5arrow12_GLOBAL__N_114SchemaExporter14ExportMetadataEPKNS_16KeyValueMetadataEE14empty_metadata acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.e, !prof !186

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5arrow12_GLOBAL__N_114SchemaExporter14ExportMetadataEPKNS_16KeyValueMetadataEE14empty_metadata) #31
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN5arrow16KeyValueMetadataC1Ev(ptr noundef nonnull align 8 dereferenceable(48) @_ZZN5arrow12_GLOBAL__N_114SchemaExporter14ExportMetadataEPKNS_16KeyValueMetadataEE14empty_metadata)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5arrow16KeyValueMetadataD2Ev, ptr nonnull @_ZZN5arrow12_GLOBAL__N_114SchemaExporter14ExportMetadataEPKNS_16KeyValueMetadataEE14empty_metadata, ptr nonnull @__dso_handle) #31 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5arrow12_GLOBAL__N_114SchemaExporter14ExportMetadataEPKNS_16KeyValueMetadataEE14empty_metadata) #31
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.a
  %i.e = icmp eq ptr %2, null
  %spec.store.select = select i1 %i.e, ptr @_ZZN5arrow12_GLOBAL__N_114SchemaExporter14ExportMetadataEPKNS_16KeyValueMetadataEE14empty_metadata, ptr %2 ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 328 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !484
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 336 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !484
  %i.j = icmp eq ptr %i.g, %i.i
  br i1 %i.j, label %bb.g, label %bb.v

bb.f:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN5arrow12_GLOBAL__N_114SchemaExporter14ExportMetadataEPKNS_16KeyValueMetadataEE14empty_metadata) #31
  br label %common.resume

bb.g:                                             ; preds = %bb.e
  %i.l = tail call noundef i64 @_ZNK5arrow16KeyValueMetadata4sizeEv(ptr noundef nonnull align 8 dereferenceable(48) %spec.store.select)
  %i.m = icmp sgt i64 %i.l, 0
  br i1 %i.m, label %bb.h, label %bb.u

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  call fastcc void @_ZN5arrow12_GLOBAL__N_114EncodeMetadataB5cxx11ERKNS_16KeyValueMetadataE(ptr dead_on_unwind noalias writable align 8 %3, ptr noundef nonnull align 8 dereferenceable(48) %spec.store.select)
  %i.n = load ptr, ptr %3, align 8, !tbaa !132
  %i.o = icmp eq ptr %i.n, null                   ; 2 uses
  br i1 %i.o, label %bb.k, label %bb.i, !prof !135

bb.i:                                             ; preds = %bb.h
  store ptr null, ptr %0, align 8, !tbaa !132
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %_ZN5arrow6StatusC2ERKS0_.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %common.resume

bb.k:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !1210)
  call void @llvm.experimental.noalias.scope.decl(metadata !1211)
end_hunk_0
begin_hunk_1_@_ZN5arrow6Status8FromArgsIJRA60_KcEEES0_NS_10StatusCodeEDpOT_:bb.a
  %3 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31, !noalias !1823
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3), !noalias !1823
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !502, !noalias !1823, !nonnull !148, !align !503
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(60) %2) #31, !noalias !1823
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(60) %2, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA60_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i unwind label %bb.b, !noalias !1823 ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA60_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i: ; preds = %bb.a
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZN5arrow8internal12JoinToStringIJRA60_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.c:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA60_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %bb.d ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5 ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.e, %bb.b ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31, !noalias !1823
  br label %common.resume

_ZN5arrow8internal12JoinToStringIJRA60_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA60_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31, !noalias !1823
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %1, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA60_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.g = load ptr, ptr %4, align 8, !tbaa !136    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.j = load i64, ptr %i.h, align 8, !tbaa !95
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  ret void

bb.f:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA60_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %4, align 8, !tbaa !136    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.f
  %i.p = load i64, ptr %i.n, align 8, !tbaa !95
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow12_GLOBAL__N_114SchemaImporter8DoImportEv(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(176) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %6 = alloca %"class.arrow::Result.348", align 8 ; 11 uses
  %7 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %8 = alloca %"class.std::shared_ptr", align 16  ; 7 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %13 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %14 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %15 = alloca %"class.std::shared_ptr", align 8  ; 7 uses
  %16 = alloca %"class.std::shared_ptr", align 8  ; 7 uses
  %17 = alloca %"class.std::shared_ptr", align 8  ; 7 uses
  %18 = alloca %"class.arrow::Result.348", align 8 ; 11 uses
  %19 = alloca %"class.std::shared_ptr", align 8  ; 7 uses
  %20 = alloca %"class.arrow::Result.348", align 8 ; 11 uses
  %21 = alloca %"class.std::shared_ptr", align 8  ; 7 uses
  %22 = alloca %"class.std::shared_ptr", align 8  ; 7 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %24 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %26 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %27 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %29 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %30 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %32 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %33 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %34 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %35 = alloca %"class.arrow::internal::StaticVectorImpl.344", align 8 ; 10 uses
  %36 = alloca %"class.arrow::Result.280", align 8 ; 11 uses
  %37 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %38 = alloca %"class.arrow::Result.340", align 8 ; 21 uses
  %39 = alloca %"class.arrow::Result.122", align 8 ; 12 uses
  %40 = alloca %"class.arrow::Result.122", align 8 ; 12 uses
  %41 = alloca %"class.arrow::Result.122", align 8 ; 12 uses
  %42 = alloca %"class.arrow::Result.122", align 8 ; 12 uses
  %43 = alloca %"class.std::shared_ptr", align 16 ; 5 uses
  %44 = alloca %"class.arrow::Result.122", align 8 ; 12 uses
  %45 = alloca %"class.std::shared_ptr", align 16 ; 5 uses
  %46 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %47 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %48 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %49 = alloca %"class.arrow::Result.280", align 8 ; 11 uses
  %50 = alloca %"class.std::shared_ptr", align 16 ; 7 uses
  %51 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %52 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %53 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %54 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %55 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %56 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %57 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %58 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %59 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %60 = alloca %"class.arrow::Status", align 8    ; 6 uses
  %61 = alloca %"class.arrow::Status", align 8    ; 78 uses
  %62 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %63 = alloca %"struct.arrow::(anonymous namespace)::SchemaImporter", align 8 ; 21 uses
  %64 = alloca %"class.arrow::Status", align 8    ; 7 uses
  %65 = alloca %"class.std::shared_ptr", align 16 ; 7 uses
  %66 = alloca %"class.arrow::Result.314", align 8 ; 21 uses
  %67 = alloca %"struct.arrow::(anonymous namespace)::DecodedMetadata", align 8 ; 12 uses
  %68 = alloca %"class.std::shared_ptr.318", align 8 ; 9 uses
  %69 = alloca %"class.arrow::Result.122", align 8 ; 14 uses
  %70 = alloca %"class.std::shared_ptr", align 16 ; 4 uses
  %71 = alloca %"class.arrow::Status", align 8    ; 6 uses
  %72 = alloca %"class.std::vector.60", align 8   ; 9 uses
  %73 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !345
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load i64, ptr %i.c, align 8, !tbaa !160  ; 7 uses
  %.val7.i = load ptr, ptr %i.a, align 8, !tbaa !346 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 4 uses
  %.val8.i = load ptr, ptr %i.e, align 8, !tbaa !347 ; 8 uses
  %i.f = ptrtoint ptr %.val8.i to i64             ; 2 uses
  %i.g = ptrtoint ptr %.val7.i to i64             ; 2 uses
  %i.h = sub i64 %i.f, %i.g                       ; 2 uses
  %i.i = sdiv exact i64 %i.h, 176                 ; 9 uses
  %i.j = icmp ugt i64 %i.d, %i.i
  br i1 %i.j, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.k = sub nuw i64 %i.d, %i.i                   ; 9 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !348
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = sub i64 %i.n, %i.f
  %i.p = sdiv exact i64 %i.o, 176                 ; 2 uses
  %i.q = icmp ult i64 %i.i, 52405522936674863
  tail call void @llvm.assume(i1 %i.q)
  %i.r = sub nuw nsw i64 52405522936674862, %i.i
  %i.s = icmp ule i64 %i.p, %i.r
  tail call void @llvm.assume(i1 %i.s)
  %.not37.i.i = icmp ult i64 %i.p, %i.k
  br i1 %.not37.i.i, label %bb.c, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %bb.b
  %xtraiter = and i64 %i.k, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i.i.prol.loopexit, label %.preheader.i.i.prol

.preheader.i.i.prol:                              ; preds = %.preheader.i.i.preheader, %.preheader.i.i.prol
  %.012.i.i.i.i.i.prol = phi ptr [ %i.aa, %.preheader.i.i.prol ], [ %.val8.i, %.preheader.i.i.preheader ] ; 8 uses
  %.01011.i.i.i.i.i.prol = phi i64 [ %i.z, %.preheader.i.i.prol ], [ %i.k, %.preheader.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader.i.i.prol ], [ 0, %.preheader.i.i.preheader ]
  %i.t = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.prol, i64 104
  %i.u = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.prol, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %.012.i.i.i.i.i.prol, i8 0, i64 168, i1 false)
  store ptr %i.u, ptr %i.t, align 8, !tbaa !92
  %i.v = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.prol, i64 136
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.prol, i64 152
  store ptr %i.w, ptr %i.v, align 8, !tbaa !92
  %i.x = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.prol, i64 168
  store i32 -1, ptr %i.x, align 8, !tbaa !334
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.prol, i64 172
  store i32 -1, ptr %i.y, align 4, !tbaa !335
  %i.z = add i64 %.01011.i.i.i.i.i.prol, -1       ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.prol, i64 176 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader.i.i.prol.loopexit, label %.preheader.i.i.prol, !llvm.loop !1824

.preheader.i.i.prol.loopexit:                     ; preds = %.preheader.i.i.prol, %.preheader.i.i.preheader
  %.lcssa592.unr = phi ptr [ poison, %.preheader.i.i.preheader ], [ %i.aa, %.preheader.i.i.prol ]
  %.012.i.i.i.i.i.unr = phi ptr [ %.val8.i, %.preheader.i.i.preheader ], [ %i.aa, %.preheader.i.i.prol ]
  %.01011.i.i.i.i.i.unr = phi i64 [ %i.k, %.preheader.i.i.preheader ], [ %i.z, %.preheader.i.i.prol ]
  %i.ab = sub i64 %i.i, %i.d
  %i.ac = icmp ugt i64 %i.ab, -4
  br i1 %i.ac, label %_ZSt27__uninitialized_default_n_aIPN5arrow12_GLOBAL__N_114SchemaImporterEmS2_ET_S4_T0_RSaIT1_E.exit.i.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.prol.loopexit, %.preheader.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.bf, %.preheader.i.i ], [ %.012.i.i.i.i.i.unr, %.preheader.i.i.prol.loopexit ] ; 29 uses
  %.01011.i.i.i.i.i = phi i64 [ %i.be, %.preheader.i.i ], [ %.01011.i.i.i.i.i.unr, %.preheader.i.i.prol.loopexit ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 104
  %i.ae = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %.012.i.i.i.i.i, i8 0, i64 168, i1 false)
  store ptr %i.ae, ptr %i.ad, align 8, !tbaa !92
  %i.af = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 136
  %i.ag = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 152
  store ptr %i.ag, ptr %i.af, align 8, !tbaa !92
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 168
  store i32 -1, ptr %i.ah, align 8, !tbaa !334
  %i.ai = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 172
  store i32 -1, ptr %i.ai, align 4, !tbaa !335
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 176
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 280
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 296
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.aj, i8 0, i64 168, i1 false)
  store ptr %i.al, ptr %i.ak, align 8, !tbaa !92
  %i.am = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 312
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 328
  store ptr %i.an, ptr %i.am, align 8, !tbaa !92
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 344
  store i32 -1, ptr %i.ao, align 8, !tbaa !334
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 348
  store i32 -1, ptr %i.ap, align 4, !tbaa !335
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 352
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 456
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 472
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.aq, i8 0, i64 168, i1 false)
  store ptr %i.as, ptr %i.ar, align 8, !tbaa !92
  %i.at = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 488
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 504
  store ptr %i.au, ptr %i.at, align 8, !tbaa !92
  %i.av = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 520
  store i32 -1, ptr %i.av, align 8, !tbaa !334
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 524
  store i32 -1, ptr %i.aw, align 4, !tbaa !335
  %i.ax = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 528
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 632
  %i.az = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 648
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.ax, i8 0, i64 168, i1 false)
  store ptr %i.az, ptr %i.ay, align 8, !tbaa !92
  %i.ba = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 664
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 680
  store ptr %i.bb, ptr %i.ba, align 8, !tbaa !92
  %i.bc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 696
  store i32 -1, ptr %i.bc, align 8, !tbaa !334
  %i.bd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 700
  store i32 -1, ptr %i.bd, align 4, !tbaa !335
  %i.be = add i64 %.01011.i.i.i.i.i, -4           ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 704 ; 2 uses
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.be, 0
  br i1 %.not.i.i.i.i.i.3, label %_ZSt27__uninitialized_default_n_aIPN5arrow12_GLOBAL__N_114SchemaImporterEmS2_ET_S4_T0_RSaIT1_E.exit.i.i, label %.preheader.i.i, !llvm.loop !1825

_ZSt27__uninitialized_default_n_aIPN5arrow12_GLOBAL__N_114SchemaImporterEmS2_ET_S4_T0_RSaIT1_E.exit.i.i: ; preds = %.preheader.i.i, %.preheader.i.i.prol.loopexit
  %.lcssa592 = phi ptr [ %.lcssa592.unr, %.preheader.i.i.prol.loopexit ], [ %i.bf, %.preheader.i.i ]
  store ptr %.lcssa592, ptr %i.e, align 8, !tbaa !347
  br label %_ZNSt6vectorIN5arrow12_GLOBAL__N_114SchemaImporterESaIS2_EE6resizeEm.exit

bb.c:                                             ; preds = %bb.b
  %i.bg = icmp ugt i64 %i.d, 52405522936674862
  br i1 %i.bg, label %bb.d, label %_ZNKSt6vectorIN5arrow12_GLOBAL__N_114SchemaImporterESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.66) #41
  unreachable

_ZNKSt6vectorIN5arrow12_GLOBAL__N_114SchemaImporterESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.i, i64 range(i64 1, 0) %i.k)
  %i.bh = add nuw nsw i64 %.sroa.speculated.i.i.i, %i.i
  %i.bi = tail call i64 @llvm.umin.i64(i64 %i.bh, i64 52405522936674862) ; 2 uses
  %i.bj = mul nuw nsw i64 %i.bi, 176
  %i.bk = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bj) #38 ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.h ; 3 uses
  %xtraiter593 = and i64 %i.k, 3                  ; 2 uses
  %lcmp.mod594.not = icmp eq i64 %xtraiter593, 0
  br i1 %lcmp.mod594.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %_ZNKSt6vectorIN5arrow12_GLOBAL__N_114SchemaImporterESaIS2_EE12_M_check_lenEmPKc.exit.i.i, %.prol.preheader
  %.012.i.i.i42.i.i.prol = phi ptr [ %i.bt, %.prol.preheader ], [ %i.bl, %_ZNKSt6vectorIN5arrow12_GLOBAL__N_114SchemaImporterESaIS2_EE12_M_check_lenEmPKc.exit.i.i ] ; 8 uses
  %.01011.i.i.i43.i.i.prol = phi i64 [ %i.bs, %.prol.preheader ], [ %i.k, %_ZNKSt6vectorIN5arrow12_GLOBAL__N_114SchemaImporterESaIS2_EE12_M_check_lenEmPKc.exit.i.i ]
  %prol.iter595 = phi i64 [ %prol.iter595.next, %.prol.preheader ], [ 0, %_ZNKSt6vectorIN5arrow12_GLOBAL__N_114SchemaImporterESaIS2_EE12_M_check_lenEmPKc.exit.i.i ]
  %i.bm = getelementptr inbounds nuw i8, ptr %.012.i.i.i42.i.i.prol, i64 104
  %i.bn = getelementptr inbounds nuw i8, ptr %.012.i.i.i42.i.i.prol, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %.012.i.i.i42.i.i.prol, i8 0, i64 168, i1 false)
  store ptr %i.bn, ptr %i.bm, align 8, !tbaa !92
  %i.bo = getelementptr inbounds nuw i8, ptr %.012.i.i.i42.i.i.prol, i64 136
  %i.bp = getelementptr inbounds nuw i8, ptr %.012.i.i.i42.i.i.prol, i64 152
  store ptr %i.bp, ptr %i.bo, align 8, !tbaa !92
  %i.bq = getelementptr inbounds nuw i8, ptr %.012.i.i.i42.i.i.prol, i64 168
  store i32 -1, ptr %i.bq, align 8, !tbaa !334
  %i.br = getelementptr inbounds nuw i8, ptr %.012.i.i.i42.i.i.prol, i64 172
  store i32 -1, ptr %i.br, align 4, !tbaa !335
  %i.bs = add i64 %.01011.i.i.i43.i.i.prol, -1    ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.012.i.i.i42.i.i.prol, i64 176 ; 2 uses
  %prol.iter595.next = add i64 %prol.iter595, 1   ; 2 uses
  %prol.iter595.cmp.not = icmp eq i64 %prol.iter595.next, %xtraiter593
  br i1 %prol.iter595.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !1826

.prol.loopexit:                                   ; preds = %.prol.preheader, %_ZNKSt6vectorIN5arrow12_GLOBAL__N_114SchemaImporterESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %.012.i.i.i42.i.i.unr = phi ptr [ %i.bl, %_ZNKSt6vectorIN5arrow12_GLOBAL__N_114SchemaImporterESaIS2_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.bt, %.prol.preheader ]
  %.01011.i.i.i43.i.i.unr = phi i64 [ %i.k, %_ZNKSt6vectorIN5arrow12_GLOBAL__N_114SchemaImporterESaIS2_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.bs, %.prol.preheader ]
  %i.bu = sub nsw i64 %i.i, %i.d
  %i.bv = icmp ugt i64 %i.bu, -4
  br i1 %i.bv, label %_ZSt27__uninitialized_default_n_aIPN5arrow12_GLOBAL__N_114SchemaImporterEmS2_ET_S4_T0_RSaIT1_E.exit45.i.i, label %_ZNKSt6vectorIN5arrow12_GLOBAL__N_114SchemaImporterESaIS2_EE12_M_check_lenEmPKc.exit.i.i.new

_ZNKSt6vectorIN5arrow12_GLOBAL__N_114SchemaImporterESaIS2_EE12_M_check_lenEmPKc.exit.i.i.new: ; preds = %.prol.loopexit, %_ZNKSt6vectorIN5arrow12_GLOBAL__N_114SchemaImporterESaIS2_EE12_M_check_lenEmPKc.exit.i.i.new
  %.012.i.i.i42.i.i = phi ptr [ %i.cy, %_ZNKSt6vectorIN5arrow12_GLOBAL__N_114SchemaImporterESaIS2_EE12_M_check_lenEmPKc.exit.i.i.new ], [ %.012.i.i.i42.i.i.unr, %.prol.loopexit ] ; 29 uses
  %.01011.i.i.i43.i.i = phi i64 [ %i.cx, %_ZNKSt6vectorIN5arrow12_GLOBAL__N_114SchemaImporterESaIS2_EE12_M_check_lenEmPKc.exit.i.i.new ], [ %.01011.i.i.i43.i.i.unr, %.prol.loopexit ]
  %i.bw = getelementptr inbounds nuw i8, ptr %.012.i.i.i42.i.i, i64 104
  %i.bx = getelementptr inbounds nuw i8, ptr %.012.i.i.i42.i.i, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %.012.i.i.i42.i.i, i8 0, i64 168, i1 false)
  store ptr %i.bx, ptr %i.bw, align 8, !tbaa !92
  %i.by = getelementptr inbounds nuw i8, ptr %.012.i.i.i42.i.i, i64 136
  %i.bz = getelementptr inbounds nuw i8, ptr %.012.i.i.i42.i.i, i64 152
  store ptr %i.bz, ptr %i.by, align 8, !tbaa !92
  %i.ca = getelementptr inbounds nuw i8, ptr %.012.i.i.i42.i.i, i64 168
  store i32 -1, ptr %i.ca, align 8, !tbaa !334
  %i.cb = getelementptr inbounds nuw i8, ptr %.012.i.i.i42.i.i, i64 172
  store i32 -1, ptr %i.cb, align 4, !tbaa !335
  %i.cc = getelementptr inbounds nuw i8, ptr %.012.i.i.i42.i.i, i64 176
  %i.cd = getelementptr inbounds nuw i8, ptr %.012.i.i.i42.i.i, i64 280
  %i.ce = getelementptr inbounds nuw i8, ptr %.012.i.i.i42.i.i, i64 296
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.cc, i8 0, i64 168, i1 false)
  store ptr %i.ce, ptr %i.cd, align 8, !tbaa !92
  %i.cf = getelementptr inbounds nuw i8, ptr %.012.i.i.i42.i.i, i64 312
  %i.cg = getelementptr inbounds nuw i8, ptr %.012.i.i.i42.i.i, i64 328
  store ptr %i.cg, ptr %i.cf, align 8, !tbaa !92
  %i.ch = getelementptr inbounds nuw i8, ptr %.012.i.i.i42.i.i, i64 344
  store i32 -1, ptr %i.ch, align 8, !tbaa !334
  %i.ci = getelementptr inbounds nuw i8, ptr %.012.i.i.i42.i.i, i64 348
  store i32 -1, ptr %i.ci, align 4, !tbaa !335
  %i.cj = getelementptr inbounds nuw i8, ptr %.012.i.i.i42.i.i, i64 352
  %i.ck = getelementptr inbounds nuw i8, ptr %.012.i.i.i42.i.i, i64 456
  %i.cl = getelementptr inbounds nuw i8, ptr %.012.i.i.i42.i.i, i64 472
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.cj, i8 0, i64 168, i1 false)
  store ptr %i.cl, ptr %i.ck, align 8, !tbaa !92
  %i.cm = getelementptr inbounds nuw i8, ptr %.012.i.i.i42.i.i, i64 488
  %i.cn = getelementptr inbounds nuw i8, ptr %.012.i.i.i42.i.i, i64 504
  store ptr %i.cn, ptr %i.cm, align 8, !tbaa !92
  %i.co = getelementptr inbounds nuw i8, ptr %.012.i.i.i42.i.i, i64 520
  store i32 -1, ptr %i.co, align 8, !tbaa !334
  %i.cp = getelementptr inbounds nuw i8, ptr %.012.i.i.i42.i.i, i64 524
  store i32 -1, ptr %i.cp, align 4, !tbaa !335
  %i.cq = getelementptr inbounds nuw i8, ptr %.012.i.i.i42.i.i, i64 528
  %i.cr = getelementptr inbounds nuw i8, ptr %.012.i.i.i42.i.i, i64 632
  %i.cs = getelementptr inbounds nuw i8, ptr %.012.i.i.i42.i.i, i64 648
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.cq, i8 0, i64 168, i1 false)
  store ptr %i.cs, ptr %i.cr, align 8, !tbaa !92
  %i.ct = getelementptr inbounds nuw i8, ptr %.012.i.i.i42.i.i, i64 664
  %i.cu = getelementptr inbounds nuw i8, ptr %.012.i.i.i42.i.i, i64 680
  store ptr %i.cu, ptr %i.ct, align 8, !tbaa !92
  %i.cv = getelementptr inbounds nuw i8, ptr %.012.i.i.i42.i.i, i64 696
  store i32 -1, ptr %i.cv, align 8, !tbaa !334
  %i.cw = getelementptr inbounds nuw i8, ptr %.012.i.i.i42.i.i, i64 700
  store i32 -1, ptr %i.cw, align 4, !tbaa !335
  %i.cx = add i64 %.01011.i.i.i43.i.i, -4         ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.012.i.i.i42.i.i, i64 704
  %.not.i.i.i44.i.i.3 = icmp eq i64 %i.cx, 0
  br i1 %.not.i.i.i44.i.i.3, label %_ZSt27__uninitialized_default_n_aIPN5arrow12_GLOBAL__N_114SchemaImporterEmS2_ET_S4_T0_RSaIT1_E.exit45.i.i, label %_ZNKSt6vectorIN5arrow12_GLOBAL__N_114SchemaImporterESaIS2_EE12_M_check_lenEmPKc.exit.i.i.new, !llvm.loop !1825

_ZSt27__uninitialized_default_n_aIPN5arrow12_GLOBAL__N_114SchemaImporterEmS2_ET_S4_T0_RSaIT1_E.exit45.i.i: ; preds = %_ZNKSt6vectorIN5arrow12_GLOBAL__N_114SchemaImporterESaIS2_EE12_M_check_lenEmPKc.exit.i.i.new, %.prol.loopexit
  %i.cz = icmp eq ptr %.val7.i, %.val8.i
  br i1 %i.cz, label %_ZSt8_DestroyIPN5arrow12_GLOBAL__N_114SchemaImporterEEvT_S4_.exit51.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZSt27__uninitialized_default_n_aIPN5arrow12_GLOBAL__N_114SchemaImporterEmS2_ET_S4_T0_RSaIT1_E.exit45.i.i, %bb.g
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.ey, %bb.g ], [ %i.bk, %_ZSt27__uninitialized_default_n_aIPN5arrow12_GLOBAL__N_114SchemaImporterEmS2_ET_S4_T0_RSaIT1_E.exit45.i.i ] ; 14 uses
  %.sroa.010.011.i.i.i.i.i.i.i = phi ptr [ %i.ex, %bb.g ], [ %.val7.i, %_ZSt27__uninitialized_default_n_aIPN5arrow12_GLOBAL__N_114SchemaImporterEmS2_ET_S4_T0_RSaIT1_E.exit45.i.i ] ; 21 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.010.011.i.i.i.i.i.i.i, i64 8
  %i.db = load <2 x ptr>, ptr %.sroa.010.011.i.i.i.i.i.i.i, align 8, !tbaa !154
  store <2 x ptr> %i.db, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !154
  store ptr null, ptr %i.da, align 8, !tbaa !188
  %i.dc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 16
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.010.011.i.i.i.i.i.i.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dc, ptr noundef nonnull align 8 dereferenceable(32) %i.dd, i64 32, i1 false)
  %i.de = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 48
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.010.011.i.i.i.i.i.i.i, i64 48 ; 2 uses
  %i.dg = load <2 x ptr>, ptr %i.df, align 8, !tbaa !2028
  store <2 x ptr> %i.dg, ptr %i.de, align 8, !tbaa !2028
  %i.dh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 64
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.010.011.i.i.i.i.i.i.i, i64 64
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !348
  store ptr %i.dj, ptr %i.dh, align 8, !tbaa !348
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.df, i8 0, i64 24, i1 false)
  %i.dk = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 72
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.010.011.i.i.i.i.i.i.i, i64 72 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.010.011.i.i.i.i.i.i.i, i64 80
  %i.dn = load <2 x ptr>, ptr %i.dl, align 8, !tbaa !272
  store ptr null, ptr %i.dm, align 8, !tbaa !181
  store <2 x ptr> %i.dn, ptr %i.dk, align 8, !tbaa !272
  store ptr null, ptr %i.dl, align 8, !tbaa !179
  %i.do = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 88
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.010.011.i.i.i.i.i.i.i, i64 88 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.010.011.i.i.i.i.i.i.i, i64 96
  %i.dr = load <2 x ptr>, ptr %i.dp, align 8, !tbaa !272
  store ptr null, ptr %i.dq, align 8, !tbaa !181
  store <2 x ptr> %i.dr, ptr %i.do, align 8, !tbaa !272
  store ptr null, ptr %i.dp, align 8, !tbaa !513
  %i.ds = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 104 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.010.011.i.i.i.i.i.i.i, i64 104 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 120 ; 3 uses
  store ptr %i.du, ptr %i.ds, align 8, !tbaa !92
  %i.dv = load ptr, ptr %i.dt, align 8, !tbaa !136 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.010.011.i.i.i.i.i.i.i, i64 120 ; 5 uses
  %i.dx = icmp eq ptr %i.dv, %i.dw
  br i1 %i.dx, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.010.011.i.i.i.i.i.i.i, i64 112
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !94 ; 3 uses
  %i.ea = icmp ult i64 %i.dz, 16
  tail call void @llvm.assume(i1 %i.ea)
  %i.eb = add nuw nsw i64 %i.dz, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.du, ptr noundef nonnull align 8 dereferenceable(1) %i.dw, i64 %i.eb, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  store ptr %i.dv, ptr %i.ds, align 8, !tbaa !136
  %i.ec = load i64, ptr %i.dw, align 8, !tbaa !95
  store i64 %i.ec, ptr %i.du, align 8, !tbaa !95
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.sroa.010.011.i.i.i.i.i.i.i, i64 112
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !94
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.e
  %i.ed = phi i64 [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %i.dz, %bb.e ]
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.010.011.i.i.i.i.i.i.i, i64 112
  %i.ef = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 112
  store i64 %i.ed, ptr %i.ef, align 8, !tbaa !94
  store ptr %i.dw, ptr %i.dt, align 8, !tbaa !136
  store i64 0, ptr %i.ee, align 8, !tbaa !94
  store i8 0, ptr %i.dw, align 8, !tbaa !95
  %i.eg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 136 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.010.011.i.i.i.i.i.i.i, i64 136 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 152 ; 3 uses
  store ptr %i.ei, ptr %i.eg, align 8, !tbaa !92
  %i.ej = load ptr, ptr %i.eh, align 8, !tbaa !136 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.010.011.i.i.i.i.i.i.i, i64 152 ; 5 uses
  %i.el = icmp eq ptr %i.ej, %i.ek
  br i1 %i.el, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i5.i.i.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i.i.i.i
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.010.011.i.i.i.i.i.i.i, i64 144
  %i.en = load i64, ptr %i.em, align 8, !tbaa !94 ; 3 uses
  %i.eo = icmp ult i64 %i.en, 16
  tail call void @llvm.assume(i1 %i.eo)
  %i.ep = add nuw nsw i64 %i.en, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ei, ptr noundef nonnull align 8 dereferenceable(1) %i.ek, i64 %i.ep, i1 false)
  br label %bb.g

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i5.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i.i.i.i
  store ptr %i.ej, ptr %i.eg, align 8, !tbaa !136
  %i.eq = load i64, ptr %i.ek, align 8, !tbaa !95
  store i64 %i.eq, ptr %i.ei, align 8, !tbaa !95
  %.phi.trans.insert54.i.i = getelementptr inbounds nuw i8, ptr %.sroa.010.011.i.i.i.i.i.i.i, i64 144
  %.pre55.i.i = load i64, ptr %.phi.trans.insert54.i.i, align 8, !tbaa !94
  br label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i5.i.i.i.i.i.i.i.i.i.i, %bb.f
  %i.er = phi i64 [ %.pre55.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i5.i.i.i.i.i.i.i.i.i.i ], [ %i.en, %bb.f ]
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.010.011.i.i.i.i.i.i.i, i64 144
  %i.et = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 144
  store i64 %i.er, ptr %i.et, align 8, !tbaa !94
  store ptr %i.ek, ptr %i.eh, align 8, !tbaa !136
  store i64 0, ptr %i.es, align 8, !tbaa !94
  store i8 0, ptr %i.ek, align 8, !tbaa !95
  %i.eu = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 168
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.010.011.i.i.i.i.i.i.i, i64 168
  %i.ew = load i64, ptr %i.ev, align 8
  store i64 %i.ew, ptr %i.eu, align 8
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.010.011.i.i.i.i.i.i.i, i64 176 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 176
  %i.ez = icmp eq ptr %i.ex, %.val8.i
  br i1 %i.ez, label %.lr.ph.i48.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1827

.lr.ph.i48.i.i:                                   ; preds = %bb.g, %.lr.ph.i48.i.i
  %.0.i3.i49.i.i = phi ptr [ %i.fa, %.lr.ph.i48.i.i ], [ %.val7.i, %bb.g ] ; 2 uses
  tail call fastcc void @_ZN5arrow12_GLOBAL__N_114SchemaImporterD2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %.0.i3.i49.i.i) #31, !inline_history !1828
  %i.fa = getelementptr inbounds nuw i8, ptr %.0.i3.i49.i.i, i64 176 ; 2 uses
  %.not.i.i50.i.i = icmp eq ptr %i.fa, %.val8.i
  br i1 %.not.i.i50.i.i, label %_ZSt8_DestroyIPN5arrow12_GLOBAL__N_114SchemaImporterEEvT_S4_.exit51.i.i, label %.lr.ph.i48.i.i, !llvm.loop !10

_ZSt8_DestroyIPN5arrow12_GLOBAL__N_114SchemaImporterEEvT_S4_.exit51.i.i: ; preds = %.lr.ph.i48.i.i, %_ZSt27__uninitialized_default_n_aIPN5arrow12_GLOBAL__N_114SchemaImporterEmS2_ET_S4_T0_RSaIT1_E.exit45.i.i
  %.not.i52.i.i = icmp eq ptr %.val7.i, null
  br i1 %.not.i52.i.i, label %_ZNSt12_Vector_baseIN5arrow12_GLOBAL__N_114SchemaImporterESaIS2_EE13_M_deallocateEPS2_m.exit53.i.i, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPN5arrow12_GLOBAL__N_114SchemaImporterEEvT_S4_.exit51.i.i
  %i.fb = load ptr, ptr %i.l, align 8, !tbaa !348
  %i.fc = ptrtoint ptr %i.fb to i64
  %i.fd = sub i64 %i.fc, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef %i.fd) #33
  br label %_ZNSt12_Vector_baseIN5arrow12_GLOBAL__N_114SchemaImporterESaIS2_EE13_M_deallocateEPS2_m.exit53.i.i

_ZNSt12_Vector_baseIN5arrow12_GLOBAL__N_114SchemaImporterESaIS2_EE13_M_deallocateEPS2_m.exit53.i.i: ; preds = %bb.h, %_ZSt8_DestroyIPN5arrow12_GLOBAL__N_114SchemaImporterEEvT_S4_.exit51.i.i
  store ptr %i.bk, ptr %i.a, align 8, !tbaa !346
  %i.fe = getelementptr inbounds nuw [176 x i8], ptr %i.bl, i64 %i.k
  store ptr %i.fe, ptr %i.e, align 8, !tbaa !347
  %i.ff = getelementptr inbounds nuw [176 x i8], ptr %i.bk, i64 %i.bi
  store ptr %i.ff, ptr %i.l, align 8, !tbaa !348
  br label %_ZNSt6vectorIN5arrow12_GLOBAL__N_114SchemaImporterESaIS2_EE6resizeEm.exit

bb.i:                                             ; preds = %bb.a
  %i.fg = icmp ult i64 %i.d, %i.i
  br i1 %i.fg, label %bb.j, label %_ZNSt6vectorIN5arrow12_GLOBAL__N_114SchemaImporterESaIS2_EE6resizeEm.exit

bb.j:                                             ; preds = %bb.i
  %i.fh = getelementptr inbounds nuw [176 x i8], ptr %.val7.i, i64 %i.d ; 3 uses
  %.not.i9.i = icmp eq ptr %.val8.i, %i.fh
  br i1 %.not.i9.i, label %_ZNSt6vectorIN5arrow12_GLOBAL__N_114SchemaImporterESaIS2_EE6resizeEm.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.j, %.lr.ph.i.i.i
  %.0.i3.i.i.i = phi ptr [ %i.fi, %.lr.ph.i.i.i ], [ %i.fh, %bb.j ] ; 2 uses
  tail call fastcc void @_ZN5arrow12_GLOBAL__N_114SchemaImporterD2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %.0.i3.i.i.i) #31, !inline_history !1828
  %i.fi = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i, i64 176 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.fi, %.val8.i
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN5arrow12_GLOBAL__N_114SchemaImporterES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !10

_ZSt8_DestroyIPN5arrow12_GLOBAL__N_114SchemaImporterES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.fh, ptr %i.e, align 8, !tbaa !347
  br label %_ZNSt6vectorIN5arrow12_GLOBAL__N_114SchemaImporterESaIS2_EE6resizeEm.exit

_ZNSt6vectorIN5arrow12_GLOBAL__N_114SchemaImporterESaIS2_EE6resizeEm.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPN5arrow12_GLOBAL__N_114SchemaImporterEmS2_ET_S4_T0_RSaIT1_E.exit.i.i, %_ZNSt12_Vector_baseIN5arrow12_GLOBAL__N_114SchemaImporterESaIS2_EE13_M_deallocateEPS2_m.exit53.i.i, %bb.i, %bb.j, %_ZSt8_DestroyIPN5arrow12_GLOBAL__N_114SchemaImporterES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.fj = load ptr, ptr %1, align 8, !tbaa !345   ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 32
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !160
  %i.fm = icmp sgt i64 %i.fl, 0
  br i1 %i.fm, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNSt6vectorIN5arrow12_GLOBAL__N_114SchemaImporterESaIS2_EE6resizeEm.exit
  %i.fn = getelementptr inbounds nuw i8, ptr %1, i64 40
  br label %bb.l

bb.k:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.fo = add nuw nsw i64 %.032165, 1             ; 2 uses
  %i.fp = load ptr, ptr %1, align 8, !tbaa !345   ; 3 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 32
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !160
  %i.fs = icmp slt i64 %i.fo, %i.fr
  br i1 %i.fs, label %bb.l, label %._crit_edge, !llvm.loop !1829

bb.l:                                             ; preds = %.lr.ph, %bb.k
  %i.ft = phi ptr [ %i.fj, %.lr.ph ], [ %i.fp, %bb.k ]
  %.032165 = phi i64 [ 0, %.lr.ph ], [ %i.fo, %bb.k ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #31
  %.val = load ptr, ptr %i.a, align 8, !tbaa !346
  %i.fu = getelementptr inbounds nuw [176 x i8], ptr %.val, i64 %.032165 ; 3 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ft, i64 40
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !161
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.fw, i64 %.032165
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !154 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 56
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !164, !noalias !2029
  %.not164 = icmp eq ptr %i.ga, null
  br i1 %.not164, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @_ZN5arrow6Status8FromArgsIJRA35_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %60, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(35) @.str.83)
end_hunk_1
begin_hunk_2_@_ZNSt10shared_ptrIN5arrow8DataTypeEEaSEOS2_:bb.a

bb.e:                                             ; preds = %bb.d
  %i.p = add nsw i32 %i.g, -1
  store i32 %i.p, ptr %i.d, align 8, !tbaa !69
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.q = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.g, %bb.e ], [ %i.q, %bb.f ]
  %i.r = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.r, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EEaSEOS4_.exit, !prof !185

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #31
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EEaSEOS4_.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EEaSEOS4_.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow12_GLOBAL__N_114DecodeMetadataEPKc(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr nofree noundef readonly captures(address_is_null) %1) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %3 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %4 = alloca %"struct.arrow::(anonymous namespace)::DecodedMetadata", align 16 ; 20 uses
  %5 = alloca %"class.arrow::Status", align 8     ; 9 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 6 uses
  %7 = alloca %"class.std::vector.270", align 8   ; 11 uses
  %8 = alloca %"class.std::vector.270", align 8   ; 10 uses
  %9 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %10 = alloca %"class.arrow::Status", align 8    ; 8 uses
  %11 = alloca %"class.std::shared_ptr.131", align 16 ; 7 uses
  %12 = alloca %"class.std::vector.270", align 8  ; 7 uses
  %13 = alloca %"class.std::vector.270", align 8  ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(88) %4, i8 0, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 12 uses
  store ptr %i.b, ptr %i.a, align 16, !tbaa !92
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 6 uses
  store i64 0, ptr %i.c, align 8, !tbaa !94
  store i8 0, ptr %i.b, align 16, !tbaa !95
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 12 uses
  store ptr %i.e, ptr %i.d, align 16, !tbaa !92
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 6 uses
  store i64 0, ptr %i.f, align 8, !tbaa !94
  store i8 0, ptr %i.e, align 16, !tbaa !95
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 5 uses
  store i32 -1, ptr %i.g, align 16, !tbaa !334
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 84 ; 2 uses
  store i32 -1, ptr %i.h, align 4, !tbaa !335
  %i.i = icmp eq ptr %1, null
  br i1 %i.i, label %_ZN5arrow6ResultINS_12_GLOBAL__N_115DecodedMetadataEEC2EOS2_.exit, label %bb.b

_ZN5arrow6ResultINS_12_GLOBAL__N_115DecodedMetadataEEC2EOS2_.exit: ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  store ptr null, ptr %i.j, align 8, !tbaa !181
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.l, ptr %i.k, align 8, !tbaa !92
  store i8 0, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.m, align 8, !tbaa !94
  store i64 0, ptr %i.c, align 8, !tbaa !94
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store ptr %i.o, ptr %i.n, align 8, !tbaa !92
  store i8 0, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 0, ptr %i.p, align 8, !tbaa !94
  store i64 0, ptr %i.f, align 8, !tbaa !94
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.r = load i64, ptr %i.g, align 16
  store i64 %i.r, ptr %i.q, align 8
  br label %bb.bi

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  %.0.copyload.i = load i32, ptr %1, align 1, !noalias !2137 ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.t = icmp slt i32 %.0.copyload.i, 0
  br i1 %i.t, label %bb.c, label %_ZN5arrow6StatusD2Ev.exit57

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN5arrow6Status8FromArgsIJRA32_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %6, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(32) @.str.106)
          to label %_ZN5arrow6StatusD2Ev.exit unwind label %bb.g

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.c
  %.pr = load ptr, ptr %6, align 8, !tbaa !132    ; 2 uses
  store ptr %.pr, ptr %5, align 8, !tbaa !132
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  %i.u = icmp eq ptr %.pr, null
  br i1 %i.u, label %bb.h, label %bb.d, !prof !2138

bb.d:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  call fastcc void @_ZN5arrow6ResultINS_12_GLOBAL__N_115DecodedMetadataEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(8) %5) #31
  %i.v = load ptr, ptr %5, align 8, !tbaa !132    ; 2 uses
  %.not.i52 = icmp eq ptr %i.v, null
  br i1 %.not.i52, label %_ZN5arrow6StatusD2Ev.exit53, label %bb.e, !prof !135

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  %i.x = load i8, ptr %i.w, align 1, !tbaa !146, !range !147, !noundef !148
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %_ZN5arrow6StatusD2Ev.exit53, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #31
  br label %_ZN5arrow6StatusD2Ev.exit53

_ZN5arrow6StatusD2Ev.exit53:                      ; preds = %bb.d, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br label %bb.bi

bb.g:                                             ; preds = %bb.c
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br label %bb.bh

_ZN5arrow6StatusD2Ev.exit57:                      ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  %i.aa = icmp eq i32 %.0.copyload.i, 0
  br i1 %i.aa, label %_ZN5arrow6ResultINS_12_GLOBAL__N_115DecodedMetadataEEC2EOS2_.exit61, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i

_ZN5arrow6ResultINS_12_GLOBAL__N_115DecodedMetadataEEC2EOS2_.exit61: ; preds = %_ZN5arrow6StatusD2Ev.exit57
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  store ptr null, ptr %i.ac, align 8, !tbaa !181
  store ptr null, ptr %i.ab, align 8, !tbaa !181
  store ptr null, ptr %4, align 16, !tbaa !513
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.ae, ptr %i.ad, align 8, !tbaa !92
  %i.af = load i8, ptr %i.b, align 16
  store i8 %i.af, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.ag, align 8, !tbaa !94
  store ptr %i.b, ptr %i.a, align 16, !tbaa !136
  store i64 0, ptr %i.c, align 8, !tbaa !94
  store i8 0, ptr %i.b, align 16, !tbaa !95
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store ptr %i.ai, ptr %i.ah, align 8, !tbaa !92
  %i.aj = load i8, ptr %i.e, align 16
  store i8 %i.aj, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 0, ptr %i.ak, align 8, !tbaa !94
  store ptr %i.e, ptr %i.d, align 16, !tbaa !136
  store i64 0, ptr %i.f, align 8, !tbaa !94
  store i8 0, ptr %i.e, align 16, !tbaa !95
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.am = load i64, ptr %i.g, align 16
  store i64 %i.am, ptr %i.al, align 8
  br label %bb.bi

bb.h:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.90) #41
          to label %.noexc62 unwind label %bb.i

.noexc62:                                         ; preds = %bb.h
  unreachable

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i: ; preds = %_ZN5arrow6StatusD2Ev.exit57
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  %i.an = zext nneg i32 %.0.copyload.i to i64     ; 9 uses
  %i.ao = shl nuw nsw i64 %i.an, 5                ; 2 uses
  %i.ap = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ao) #38
          to label %.noexc63 unwind label %bb.i   ; 5 uses

.noexc63:                                         ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i
  store ptr %i.ap, ptr %7, align 8, !tbaa !488
  %i.aq = getelementptr inbounds nuw [32 x i8], ptr %i.ap, i64 %i.an
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !490
  %xtraiter = and i64 %i.an, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.noexc63, %.lr.ph.i.i.i.i.i.prol
  %.08.i.i.i.i.i.prol = phi ptr [ %i.av, %.lr.ph.i.i.i.i.i.prol ], [ %i.ap, %.noexc63 ] ; 4 uses
  %.057.i.i.i.i.i.prol = phi i64 [ %i.au, %.lr.ph.i.i.i.i.i.prol ], [ %i.an, %.noexc63 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.noexc63 ]
  %i.as = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 16 ; 2 uses
  store ptr %i.as, ptr %.08.i.i.i.i.i.prol, align 8, !tbaa !92
  %i.at = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 8
  store i64 0, ptr %i.at, align 8, !tbaa !94
  store i8 0, ptr %i.as, align 8, !tbaa !95
  %i.au = add i64 %.057.i.i.i.i.i.prol, -1        ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 32 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !2124

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.noexc63
  %.lcssa264.unr = phi ptr [ poison, %.noexc63 ], [ %i.av, %.lr.ph.i.i.i.i.i.prol ]
  %.08.i.i.i.i.i.unr = phi ptr [ %i.ap, %.noexc63 ], [ %i.av, %.lr.ph.i.i.i.i.i.prol ]
  %.057.i.i.i.i.i.unr = phi i64 [ %i.an, %.noexc63 ], [ %i.au, %.lr.ph.i.i.i.i.i.prol ]
  %i.aw = icmp ult i32 %.0.copyload.i, 4
  br i1 %i.aw, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i66, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.bj, %.lr.ph.i.i.i.i.i ], [ %.08.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 13 uses
  %.057.i.i.i.i.i = phi i64 [ %i.bi, %.lr.ph.i.i.i.i.i ], [ %.057.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 16 ; 2 uses
  store ptr %i.ax, ptr %.08.i.i.i.i.i, align 8, !tbaa !92
  %i.ay = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 8
  store i64 0, ptr %i.ay, align 8, !tbaa !94
  store i8 0, ptr %i.ax, align 8, !tbaa !95
  %i.az = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 32
  %i.ba = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 48 ; 2 uses
  store ptr %i.ba, ptr %i.az, align 8, !tbaa !92
  %i.bb = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 40
  store i64 0, ptr %i.bb, align 8, !tbaa !94
  store i8 0, ptr %i.ba, align 8, !tbaa !95
  %i.bc = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 64
  %i.bd = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 80 ; 2 uses
  store ptr %i.bd, ptr %i.bc, align 8, !tbaa !92
  %i.be = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 72
  store i64 0, ptr %i.be, align 8, !tbaa !94
  store i8 0, ptr %i.bd, align 8, !tbaa !95
  %i.bf = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 96
  %i.bg = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 112 ; 2 uses
  store ptr %i.bg, ptr %i.bf, align 8, !tbaa !92
  %i.bh = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 104
  store i64 0, ptr %i.bh, align 8, !tbaa !94
  store i8 0, ptr %i.bg, align 8, !tbaa !95
  %i.bi = add i64 %.057.i.i.i.i.i, -4             ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.bi, 0
  br i1 %.not.i.i.i.i.i.3, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i66, label %.lr.ph.i.i.i.i.i, !llvm.loop !2125

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i66: ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.prol.loopexit
  %.lcssa264 = phi ptr [ %.lcssa264.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.bj, %.lr.ph.i.i.i.i.i ]
  %i.bk = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  store ptr %.lcssa264, ptr %i.bk, align 8, !tbaa !487
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  %i.bl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ao) #38
          to label %.noexc74 unwind label %bb.j   ; 10 uses

.noexc74:                                         ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i66
  store ptr %i.bl, ptr %8, align 8, !tbaa !488
  %i.bm = getelementptr inbounds nuw [32 x i8], ptr %i.bl, i64 %i.an
  %i.bn = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  store ptr %i.bm, ptr %i.bn, align 8, !tbaa !490
  %xtraiter265 = and i64 %i.an, 3                 ; 2 uses
  %lcmp.mod266.not = icmp eq i64 %xtraiter265, 0
  br i1 %lcmp.mod266.not, label %.lr.ph.i.i.i.i.i67.prol.loopexit, label %.lr.ph.i.i.i.i.i67.prol

.lr.ph.i.i.i.i.i67.prol:                          ; preds = %.noexc74, %.lr.ph.i.i.i.i.i67.prol
  %.08.i.i.i.i.i68.prol = phi ptr [ %i.br, %.lr.ph.i.i.i.i.i67.prol ], [ %i.bl, %.noexc74 ] ; 4 uses
  %.057.i.i.i.i.i69.prol = phi i64 [ %i.bq, %.lr.ph.i.i.i.i.i67.prol ], [ %i.an, %.noexc74 ]
  %prol.iter267 = phi i64 [ %prol.iter267.next, %.lr.ph.i.i.i.i.i67.prol ], [ 0, %.noexc74 ]
  %i.bo = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i68.prol, i64 16 ; 2 uses
  store ptr %i.bo, ptr %.08.i.i.i.i.i68.prol, align 8, !tbaa !92
  %i.bp = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i68.prol, i64 8
  store i64 0, ptr %i.bp, align 8, !tbaa !94
  store i8 0, ptr %i.bo, align 8, !tbaa !95
  %i.bq = add i64 %.057.i.i.i.i.i69.prol, -1      ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i68.prol, i64 32 ; 3 uses
  %prol.iter267.next = add i64 %prol.iter267, 1   ; 2 uses
  %prol.iter267.cmp.not = icmp eq i64 %prol.iter267.next, %xtraiter265
  br i1 %prol.iter267.cmp.not, label %.lr.ph.i.i.i.i.i67.prol.loopexit, label %.lr.ph.i.i.i.i.i67.prol, !llvm.loop !2126

.lr.ph.i.i.i.i.i67.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i67.prol, %.noexc74
  %.lcssa.unr = phi ptr [ poison, %.noexc74 ], [ %i.br, %.lr.ph.i.i.i.i.i67.prol ]
  %.08.i.i.i.i.i68.unr = phi ptr [ %i.bl, %.noexc74 ], [ %i.br, %.lr.ph.i.i.i.i.i67.prol ]
  %.057.i.i.i.i.i69.unr = phi i64 [ %i.an, %.noexc74 ], [ %i.bq, %.lr.ph.i.i.i.i.i67.prol ]
  %i.bs = icmp ult i32 %.0.copyload.i, 4
  br i1 %i.bs, label %.lr.ph.preheader, label %.lr.ph.i.i.i.i.i67

.lr.ph.i.i.i.i.i67:                               ; preds = %.lr.ph.i.i.i.i.i67.prol.loopexit, %.lr.ph.i.i.i.i.i67
  %.08.i.i.i.i.i68 = phi ptr [ %i.cf, %.lr.ph.i.i.i.i.i67 ], [ %.08.i.i.i.i.i68.unr, %.lr.ph.i.i.i.i.i67.prol.loopexit ] ; 13 uses
  %.057.i.i.i.i.i69 = phi i64 [ %i.ce, %.lr.ph.i.i.i.i.i67 ], [ %.057.i.i.i.i.i69.unr, %.lr.ph.i.i.i.i.i67.prol.loopexit ]
  %i.bt = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i68, i64 16 ; 2 uses
  store ptr %i.bt, ptr %.08.i.i.i.i.i68, align 8, !tbaa !92
  %i.bu = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i68, i64 8
  store i64 0, ptr %i.bu, align 8, !tbaa !94
  store i8 0, ptr %i.bt, align 8, !tbaa !95
  %i.bv = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i68, i64 32
  %i.bw = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i68, i64 48 ; 2 uses
  store ptr %i.bw, ptr %i.bv, align 8, !tbaa !92
  %i.bx = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i68, i64 40
  store i64 0, ptr %i.bx, align 8, !tbaa !94
  store i8 0, ptr %i.bw, align 8, !tbaa !95
  %i.by = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i68, i64 64
  %i.bz = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i68, i64 80 ; 2 uses
  store ptr %i.bz, ptr %i.by, align 8, !tbaa !92
  %i.ca = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i68, i64 72
  store i64 0, ptr %i.ca, align 8, !tbaa !94
  store i8 0, ptr %i.bz, align 8, !tbaa !95
  %i.cb = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i68, i64 96
  %i.cc = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i68, i64 112 ; 2 uses
  store ptr %i.cc, ptr %i.cb, align 8, !tbaa !92
  %i.cd = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i68, i64 104
  store i64 0, ptr %i.cd, align 8, !tbaa !94
  store i8 0, ptr %i.cc, align 8, !tbaa !95
  %i.ce = add i64 %.057.i.i.i.i.i69, -4           ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i68, i64 128 ; 2 uses
  %.not.i.i.i.i.i70.3 = icmp eq i64 %i.ce, 0
  br i1 %.not.i.i.i.i.i70.3, label %.lr.ph.preheader, label %.lr.ph.i.i.i.i.i67, !llvm.loop !2125

.lr.ph.preheader:                                 ; preds = %.lr.ph.i.i.i.i.i67, %.lr.ph.i.i.i.i.i67.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.i.i67.prol.loopexit ], [ %i.cf, %.lr.ph.i.i.i.i.i67 ]
  %i.cg = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  store ptr %.lcssa, ptr %i.cg, align 8, !tbaa !487
  %wide.trip.count = zext nneg i32 %.0.copyload.i to i64
  br label %.lr.ph

bb.i:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i, %bb.h
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.j:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i66
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit117.thread184
  %i.cj = phi ptr [ %i.ap, %.lr.ph.preheader ], [ %i.eq, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit117.thread184 ]
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit117.thread184 ] ; 8 uses
  %.0178192 = phi ptr [ %i.s, %.lr.ph.preheader ], [ %.3, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit117.thread184 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31
  %i.ck = getelementptr inbounds nuw [32 x i8], ptr %i.cj, i64 %indvars.iv ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31, !noalias !2139
  %.0.copyload.i.i = load i32, ptr %.0178192, align 1, !noalias !2140 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.0178192, i64 4 ; 3 uses
  %i.cm = icmp slt i32 %.0.copyload.i.i, 0
  br i1 %i.cm, label %_ZN5arrow6StatusD2Ev.exit.i, label %_ZN5arrow6StatusD2Ev.exit.thread.i

_ZN5arrow6StatusD2Ev.exit.thread.i:               ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31, !noalias !2139
  br label %_ZN5arrow6StatusD2Ev.exit10.i

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %.lr.ph
  invoke void @_ZN5arrow6Status8FromArgsIJRA32_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %3, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(32) @.str.106)
          to label %.noexc77 unwind label %.loopexit

.noexc77:                                         ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  %.pr.i = load ptr, ptr %3, align 8, !tbaa !132, !noalias !2139 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31, !noalias !2139
  %i.cn = icmp eq ptr %.pr.i, null
  br i1 %i.cn, label %_ZN5arrow6StatusD2Ev.exit10.i, label %bb.r

_ZN5arrow6StatusD2Ev.exit10.i:                    ; preds = %.noexc77, %_ZN5arrow6StatusD2Ev.exit.thread.i
  %i.co = sext i32 %.0.copyload.i.i to i64        ; 8 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ck, i64 8 ; 2 uses
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !94, !noalias !2139 ; 7 uses
  %i.cr = icmp ult i64 %i.cq, %i.co
  br i1 %i.cr, label %bb.k, label %bb.p

bb.k:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit10.i
  %i.cs = sub nuw i64 %i.co, %i.cq                ; 4 uses
  %i.ct = sub i64 9223372036854775807, %i.cq
  %i.cu = icmp ult i64 %i.ct, %i.cs
  br i1 %i.cu, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i.i

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #41
          to label %.noexc78 unwind label %.loopexit.split-lp

.noexc78:                                         ; preds = %bb.l
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i.i: ; preds = %bb.k
  %i.cv = load ptr, ptr %i.ck, align 8, !tbaa !136, !noalias !2139 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ck, i64 16 ; 2 uses
  %i.cx = icmp eq ptr %i.cv, %i.cw
  br i1 %i.cx, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i.i
  %i.cy = icmp ult i64 %i.cq, 16
  call void @llvm.assume(i1 %i.cy)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i.i
  %i.cz = load i64, ptr %i.cw, align 8, !tbaa !95, !noalias !2139
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i
  %i.da = phi i64 [ %i.cz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i ]
  %.not.i.i.i.i.i76 = icmp ult i64 %i.da, %i.co
  br i1 %.not.i.i.i.i.i76, label %bb.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.i

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ck, i64 noundef %i.cq, i64 noundef 0, ptr noundef null, i64 noundef %i.cs)
          to label %.noexc79 unwind label %.loopexit

.noexc79:                                         ; preds = %bb.m
  %.pre.i.i.i = load ptr, ptr %i.ck, align 8, !tbaa !136, !noalias !2139
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.i: ; preds = %.noexc79, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i
  %i.db = phi ptr [ %i.cv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i ], [ %.pre.i.i.i, %.noexc79 ]
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.cq ; 2 uses
  %cond.i.i.i.i.i = icmp eq i64 %i.cs, 1
  br i1 %cond.i.i.i.i.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.i
  store i8 0, ptr %i.dc, align 1, !tbaa !95, !noalias !2139
  br label %.sink.split.i.i.i

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.i
  call void @llvm.memset.p0.i64(ptr align 1 %i.dc, i8 0, i64 %i.cs, i1 false), !noalias !2139
  br label %.sink.split.i.i.i

bb.p:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit10.i
  %i.dd = icmp ugt i64 %i.cq, %i.co
  br i1 %i.dd, label %.sink.split.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i

.sink.split.i.i.i:                                ; preds = %bb.p, %bb.o, %bb.n
  store i64 %i.co, ptr %i.cp, align 8, !tbaa !94, !noalias !2139
  %i.de = load ptr, ptr %i.ck, align 8, !tbaa !136, !noalias !2139
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.co
  store i8 0, ptr %i.df, align 1, !tbaa !95, !noalias !2139
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i: ; preds = %.sink.split.i.i.i, %bb.p
  %i.dg = icmp sgt i32 %.0.copyload.i.i, 0
  br i1 %i.dg, label %bb.q, label %_ZN5arrow6StatusD2Ev.exit87

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i
  %i.dh = load ptr, ptr %i.ck, align 8, !tbaa !136, !noalias !2139
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dh, ptr nonnull align 1 %i.cl, i64 %i.co, i1 false), !noalias !2139
  %i.di = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.co
  br label %_ZN5arrow6StatusD2Ev.exit87

bb.r:                                             ; preds = %.noexc77
  store ptr %.pr.i, ptr %9, align 8, !tbaa !132
  call fastcc void @_ZN5arrow6ResultINS_12_GLOBAL__N_115DecodedMetadataEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(8) %9) #31
  %i.dj = load ptr, ptr %9, align 8, !tbaa !132   ; 2 uses
  %.not.i82 = icmp eq ptr %i.dj, null
  br i1 %.not.i82, label %_ZN5arrow6StatusD2Ev.exit83, label %bb.s, !prof !135

bb.s:                                             ; preds = %bb.r
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 1
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !146, !range !147, !noundef !148
  %i.dm = trunc nuw i8 %i.dl to i1
  br i1 %i.dm, label %_ZN5arrow6StatusD2Ev.exit83, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #31
  br label %_ZN5arrow6StatusD2Ev.exit83

_ZN5arrow6StatusD2Ev.exit83:                      ; preds = %bb.r, %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  br label %bb.bb

.loopexit:                                        ; preds = %_ZN5arrow6StatusD2Ev.exit.i, %bb.m
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

.loopexit.split-lp:                               ; preds = %bb.l
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.u:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  br label %bb.be

_ZN5arrow6StatusD2Ev.exit87:                      ; preds = %bb.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i
  %.1 = phi ptr [ %i.di, %bb.q ], [ %i.cl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #31
  %i.dn = getelementptr inbounds nuw [32 x i8], ptr %i.bl, i64 %indvars.iv ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31, !noalias !2141
  %.0.copyload.i.i88 = load i32, ptr %.1, align 1, !noalias !2142 ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.1, i64 4 ; 3 uses
  %i.dp = icmp slt i32 %.0.copyload.i.i88, 0
  br i1 %i.dp, label %_ZN5arrow6StatusD2Ev.exit.i101, label %_ZN5arrow6StatusD2Ev.exit.thread.i89

_ZN5arrow6StatusD2Ev.exit.thread.i89:             ; preds = %_ZN5arrow6StatusD2Ev.exit87
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31, !noalias !2141
  br label %_ZN5arrow6StatusD2Ev.exit10.i90

_ZN5arrow6StatusD2Ev.exit.i101:                   ; preds = %_ZN5arrow6StatusD2Ev.exit87
  invoke void @_ZN5arrow6Status8FromArgsIJRA32_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %2, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(32) @.str.106)
          to label %.noexc103 unwind label %.loopexit185

.noexc103:                                        ; preds = %_ZN5arrow6StatusD2Ev.exit.i101
  %.pr.i102 = load ptr, ptr %2, align 8, !tbaa !132, !noalias !2141 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31, !noalias !2141
  %i.dq = icmp eq ptr %.pr.i102, null
  br i1 %i.dq, label %_ZN5arrow6StatusD2Ev.exit10.i90, label %bb.ac

_ZN5arrow6StatusD2Ev.exit10.i90:                  ; preds = %.noexc103, %_ZN5arrow6StatusD2Ev.exit.thread.i89
  %i.dr = sext i32 %.0.copyload.i.i88 to i64      ; 8 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dn, i64 8 ; 2 uses
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !94, !noalias !2141 ; 7 uses
  %i.du = icmp ult i64 %i.dt, %i.dr
  br i1 %i.du, label %bb.v, label %bb.aa

bb.v:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit10.i90
  %i.dv = sub nuw i64 %i.dr, %i.dt                ; 4 uses
end_hunk_2
