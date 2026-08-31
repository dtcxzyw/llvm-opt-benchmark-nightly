Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/bridge?download=true
inline.NumInlined: 8866
inline.NumDeleted: 3382
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN5arrow12_GLOBAL__N_114SchemaExporter12ExportFormatERKNS_8DataTypeE:bb.a
  %i.l = load ptr, ptr %3, align 8, !tbaa !78     ; 2 uses
  store ptr %i.l, ptr %0, align 8, !tbaa !78
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %_ZN5arrow6StatusD2Ev.exit28, label %.critedge.thread

_ZN5arrow6StatusD2Ev.exit28:                      ; preds = %_ZN5arrow6StatusD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  %i.n = call noalias noundef nonnull dereferenceable(384) ptr @_Znwm(i64 noundef 384) #38, !noalias !975 ; 13 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(288) %i.o, i8 0, i64 288, i1 false), !noalias !975
  store ptr %i.o, ptr %i.n, align 16, !tbaa !33, !noalias !975
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 0, ptr %i.p, align 8, !tbaa !37, !noalias !975
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  store ptr %i.r, ptr %i.q, align 16, !tbaa !33, !noalias !975
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  store ptr %i.t, ptr %i.s, align 16, !tbaa !33, !noalias !975
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 168
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 248
  store ptr %i.u, ptr %i.v, align 8, !tbaa !43, !noalias !975
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 264
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 304
  store ptr %i.w, ptr %i.x, align 16, !tbaa !48, !noalias !975
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 312
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.y, i8 0, i64 72, i1 false), !noalias !975
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 352 ; 3 uses
  store ptr null, ptr %4, align 8, !tbaa !106
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !106 ; 2 uses
  store ptr %i.n, ptr %i.z, align 8, !tbaa !106
  %.not.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit30, label %bb.d

bb.d:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit28
  call fastcc void @_ZNKSt14default_deleteIN5arrow12_GLOBAL__N_114SchemaExporterEEclEPS2_(ptr noundef nonnull %i.aa)
  br label %_ZN5arrow6StatusD2Ev.exit30

_ZN5arrow6StatusD2Ev.exit30:                      ; preds = %_ZN5arrow6StatusD2Ev.exit28, %bb.d
  call fastcc void @_ZNSt10unique_ptrIN5arrow12_GLOBAL__N_114SchemaExporterESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  %.val = load ptr, ptr %i.z, align 8, !tbaa !106
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !143
  call fastcc void @_ZN5arrow12_GLOBAL__N_114SchemaExporter10ExportTypeERKNS_8DataTypeE(ptr dead_on_unwind noalias writable align 8 %5, ptr noundef nonnull align 8 dereferenceable(384) %.val, ptr noundef nonnull align 8 dereferenceable(72) %i.ac)
  %i.ad = load ptr, ptr %5, align 8, !tbaa !78    ; 2 uses
  store ptr %i.ad, ptr %0, align 8, !tbaa !78
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  %.not = icmp eq ptr %i.ad, null
  br i1 %.not, label %bb.e, label %.critedge.thread

_ZN5arrow6StatusD2Ev.exit36:                      ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  call fastcc void @_ZN5arrow15VisitTypeInlineINS_12_GLOBAL__N_114SchemaExporterEJEEENS_6StatusERKNS_8DataTypeEPT_DpOT0_(ptr dead_on_unwind noalias writable align 8 %6, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef %1)
  %i.ae = load ptr, ptr %6, align 8, !tbaa !78    ; 2 uses
  store ptr %i.ae, ptr %0, align 8, !tbaa !78
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.e, label %.critedge.thread

bb.e:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit36, %_ZN5arrow6StatusD2Ev.exit30
  store ptr null, ptr %0, align 8, !tbaa !78, !alias.scope !978
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6StatusD2Ev.exit36, %_ZN5arrow6StatusD2Ev.exit30, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow12_GLOBAL__N_114SchemaExporter14ExportChildrenERKSt6vectorISt10shared_ptrINS_5FieldEESaIS5_EE(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(384) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !442
  %i.d = load ptr, ptr %2, align 8, !tbaa !443
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 4
  tail call void @_ZN5arrow8internal16StaticVectorImplI11ArrowSchemaLm1ENS0_18SmallVectorStorageIS2_Lm1EEEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(96) %i.a, i64 noundef %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 360 ; 3 uses
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !442
  %i.k = load ptr, ptr %2, align 8, !tbaa !443
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = ashr exact i64 %i.n, 4                   ; 7 uses
  %.val7.i = load ptr, ptr %i.i, align 8, !tbaa !107 ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 368 ; 4 uses
  %.val8.i = load ptr, ptr %i.p, align 8, !tbaa !108 ; 20 uses
  %i.q = ptrtoint ptr %.val8.i to i64             ; 2 uses
  %i.r = ptrtoint ptr %.val7.i to i64             ; 2 uses
  %i.s = sub i64 %i.q, %i.r                       ; 2 uses
  %i.t = sdiv exact i64 %i.s, 384                 ; 9 uses
  %i.u = icmp ugt i64 %i.o, %i.t
  br i1 %i.u, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.v = sub nuw nsw i64 %i.o, %i.t               ; 9 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 376 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !122
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = sub i64 %i.y, %i.q
  %i.aa = sdiv exact i64 %i.z, 384                ; 2 uses
  %i.ab = icmp ult i64 %i.t, 24019198012642646
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
  store ptr %i.ae, ptr %.val8.i, align 8, !tbaa !33
  %i.af = getelementptr inbounds nuw i8, ptr %.val8.i, i64 8
  store i64 0, ptr %i.af, align 8, !tbaa !37
  %i.ag = getelementptr inbounds nuw i8, ptr %.val8.i, i64 32
  %i.ah = getelementptr inbounds nuw i8, ptr %.val8.i, i64 48
  store ptr %i.ah, ptr %i.ag, align 8, !tbaa !33
  %i.ai = getelementptr inbounds nuw i8, ptr %.val8.i, i64 64
  %i.aj = getelementptr inbounds nuw i8, ptr %.val8.i, i64 80
  store ptr %i.aj, ptr %i.ai, align 8, !tbaa !33
  %i.ak = getelementptr inbounds nuw i8, ptr %.val8.i, i64 168
  %i.al = getelementptr inbounds nuw i8, ptr %.val8.i, i64 248
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !43
  %i.am = getelementptr inbounds nuw i8, ptr %.val8.i, i64 264
  %i.an = getelementptr inbounds nuw i8, ptr %.val8.i, i64 296
  store i64 0, ptr %i.an, align 8, !tbaa !45
  %i.ao = getelementptr inbounds nuw i8, ptr %.val8.i, i64 304
  store ptr %i.am, ptr %i.ao, align 8, !tbaa !48
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
  store ptr %i.at, ptr %.07.i.i.i.i.i, align 8, !tbaa !33
  %i.au = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 8
  store i64 0, ptr %i.au, align 8, !tbaa !37
  %i.av = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 32
  %i.aw = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 48
  store ptr %i.aw, ptr %i.av, align 8, !tbaa !33
  %i.ax = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 64
  %i.ay = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 80
  store ptr %i.ay, ptr %i.ax, align 8, !tbaa !33
  %i.az = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 168
  %i.ba = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 248
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !43
  %i.bb = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 264
  %i.bc = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 296
  store i64 0, ptr %i.bc, align 8, !tbaa !45
  %i.bd = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 304
  store ptr %i.bb, ptr %i.bd, align 8, !tbaa !48
  %i.be = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 312
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.be, i8 0, i64 72, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 384
  %i.bg = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 400 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %i.bg, i8 0, i64 280, i1 false)
  store ptr %i.bg, ptr %i.bf, align 8, !tbaa !33
  %i.bh = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 392
  store i64 0, ptr %i.bh, align 8, !tbaa !37
  %i.bi = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 416
  %i.bj = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 432
  store ptr %i.bj, ptr %i.bi, align 8, !tbaa !33
  %i.bk = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 448
  %i.bl = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 464
  store ptr %i.bl, ptr %i.bk, align 8, !tbaa !33
  %i.bm = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 552
  %i.bn = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 632
  store ptr %i.bm, ptr %i.bn, align 8, !tbaa !43
  %i.bo = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 648
  %i.bp = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 680
  store i64 0, ptr %i.bp, align 8, !tbaa !45
  %i.bq = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 688
  store ptr %i.bo, ptr %i.bq, align 8, !tbaa !48
  %i.br = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 696
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.br, i8 0, i64 72, i1 false)
  %i.bs = add i64 %.056.i.i.i.i.i, -2             ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 768 ; 2 uses
  %.not.i.i.i.i.i.1 = icmp eq i64 %i.bs, 0
  br i1 %.not.i.i.i.i.i.1, label %_ZSt27__uninitialized_default_n_aIPN5arrow12_GLOBAL__N_114SchemaExporterEmS2_ET_S4_T0_RSaIT1_E.exit.i.i, label %.preheader.i.i, !llvm.loop !981

_ZSt27__uninitialized_default_n_aIPN5arrow12_GLOBAL__N_114SchemaExporterEmS2_ET_S4_T0_RSaIT1_E.exit.i.i: ; preds = %.preheader.i.i, %.preheader.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.preheader.i.i.prol.loopexit ], [ %i.bt, %.preheader.i.i ]
  store ptr %.lcssa, ptr %i.p, align 8, !tbaa !108
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
  store ptr %i.ca, ptr %i.bz, align 8, !tbaa !33
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store i64 0, ptr %i.cb, align 8, !tbaa !37
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 48
  store ptr %i.cd, ptr %i.cc, align 8, !tbaa !33
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bz, i64 64
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bz, i64 80
  store ptr %i.cf, ptr %i.ce, align 8, !tbaa !33
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bz, i64 168
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bz, i64 248
  store ptr %i.cg, ptr %i.ch, align 8, !tbaa !43
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bz, i64 264
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bz, i64 296
  store i64 0, ptr %i.cj, align 8, !tbaa !45
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bz, i64 304
  store ptr %i.ci, ptr %i.ck, align 8, !tbaa !48
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
  store ptr %i.cp, ptr %.07.i.i.i32.i.i, align 8, !tbaa !33
  %i.cq = getelementptr inbounds nuw i8, ptr %.07.i.i.i32.i.i, i64 8
  store i64 0, ptr %i.cq, align 8, !tbaa !37
  %i.cr = getelementptr inbounds nuw i8, ptr %.07.i.i.i32.i.i, i64 32
  %i.cs = getelementptr inbounds nuw i8, ptr %.07.i.i.i32.i.i, i64 48
  store ptr %i.cs, ptr %i.cr, align 8, !tbaa !33
  %i.ct = getelementptr inbounds nuw i8, ptr %.07.i.i.i32.i.i, i64 64
  %i.cu = getelementptr inbounds nuw i8, ptr %.07.i.i.i32.i.i, i64 80
  store ptr %i.cu, ptr %i.ct, align 8, !tbaa !33
  %i.cv = getelementptr inbounds nuw i8, ptr %.07.i.i.i32.i.i, i64 168
  %i.cw = getelementptr inbounds nuw i8, ptr %.07.i.i.i32.i.i, i64 248
  store ptr %i.cv, ptr %i.cw, align 8, !tbaa !43
  %i.cx = getelementptr inbounds nuw i8, ptr %.07.i.i.i32.i.i, i64 264
  %i.cy = getelementptr inbounds nuw i8, ptr %.07.i.i.i32.i.i, i64 296
  store i64 0, ptr %i.cy, align 8, !tbaa !45
  %i.cz = getelementptr inbounds nuw i8, ptr %.07.i.i.i32.i.i, i64 304
  store ptr %i.cx, ptr %i.cz, align 8, !tbaa !48
  %i.da = getelementptr inbounds nuw i8, ptr %.07.i.i.i32.i.i, i64 312
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.da, i8 0, i64 72, i1 false)
  %i.db = getelementptr inbounds nuw i8, ptr %.07.i.i.i32.i.i, i64 384
  %i.dc = getelementptr inbounds nuw i8, ptr %.07.i.i.i32.i.i, i64 400 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %i.dc, i8 0, i64 280, i1 false)
  store ptr %i.dc, ptr %i.db, align 8, !tbaa !33
  %i.dd = getelementptr inbounds nuw i8, ptr %.07.i.i.i32.i.i, i64 392
  store i64 0, ptr %i.dd, align 8, !tbaa !37
  %i.de = getelementptr inbounds nuw i8, ptr %.07.i.i.i32.i.i, i64 416
  %i.df = getelementptr inbounds nuw i8, ptr %.07.i.i.i32.i.i, i64 432
  store ptr %i.df, ptr %i.de, align 8, !tbaa !33
  %i.dg = getelementptr inbounds nuw i8, ptr %.07.i.i.i32.i.i, i64 448
  %i.dh = getelementptr inbounds nuw i8, ptr %.07.i.i.i32.i.i, i64 464
  store ptr %i.dh, ptr %i.dg, align 8, !tbaa !33
  %i.di = getelementptr inbounds nuw i8, ptr %.07.i.i.i32.i.i, i64 552
  %i.dj = getelementptr inbounds nuw i8, ptr %.07.i.i.i32.i.i, i64 632
  store ptr %i.di, ptr %i.dj, align 8, !tbaa !43
  %i.dk = getelementptr inbounds nuw i8, ptr %.07.i.i.i32.i.i, i64 648
  %i.dl = getelementptr inbounds nuw i8, ptr %.07.i.i.i32.i.i, i64 680
  store i64 0, ptr %i.dl, align 8, !tbaa !45
  %i.dm = getelementptr inbounds nuw i8, ptr %.07.i.i.i32.i.i, i64 688
  store ptr %i.dk, ptr %i.dm, align 8, !tbaa !48
  %i.dn = getelementptr inbounds nuw i8, ptr %.07.i.i.i32.i.i, i64 696
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.dn, i8 0, i64 72, i1 false)
  %i.do = add i64 %.056.i.i.i33.i.i, -2           ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.07.i.i.i32.i.i, i64 768
  %.not.i.i.i34.i.i.1 = icmp eq i64 %i.do, 0
  br i1 %.not.i.i.i34.i.i.1, label %_ZSt27__uninitialized_default_n_aIPN5arrow12_GLOBAL__N_114SchemaExporterEmS2_ET_S4_T0_RSaIT1_E.exit35.i.i, label %_ZNKSt6vectorIN5arrow12_GLOBAL__N_114SchemaExporterESaIS2_EE12_M_check_lenEmPKc.exit.i.i.new, !llvm.loop !981

_ZSt27__uninitialized_default_n_aIPN5arrow12_GLOBAL__N_114SchemaExporterEmS2_ET_S4_T0_RSaIT1_E.exit35.i.i: ; preds = %_ZNKSt6vectorIN5arrow12_GLOBAL__N_114SchemaExporterESaIS2_EE12_M_check_lenEmPKc.exit.i.i.new, %.prol.loopexit
  %.not1.i.i.i.i.i = icmp eq ptr %.val7.i, %.val8.i
  br i1 %.not1.i.i.i.i.i, label %_ZNSt6vectorIN5arrow12_GLOBAL__N_114SchemaExporterESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZSt27__uninitialized_default_n_aIPN5arrow12_GLOBAL__N_114SchemaExporterEmS2_ET_S4_T0_RSaIT1_E.exit35.i.i, %.lr.ph.i.i.i.i.i
  %.03.i.i.i.i.i = phi ptr [ %i.ei, %.lr.ph.i.i.i.i.i ], [ %i.by, %_ZSt27__uninitialized_default_n_aIPN5arrow12_GLOBAL__N_114SchemaExporterEmS2_ET_S4_T0_RSaIT1_E.exit35.i.i ] ; 8 uses
  %.092.i.i.i.i.i = phi ptr [ %i.eh, %.lr.ph.i.i.i.i.i ], [ %.val7.i, %_ZSt27__uninitialized_default_n_aIPN5arrow12_GLOBAL__N_114SchemaExporterEmS2_ET_S4_T0_RSaIT1_E.exit35.i.i ] ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !982)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !985)
  tail call fastcc void @_ZN5arrow12_GLOBAL__N_125ExportedSchemaPrivateDataC2EOS1_(ptr noundef nonnull align 8 dereferenceable(384) %.03.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(384) %.092.i.i.i.i.i) #31
  %i.dq = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 320
  %i.dr = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 320
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !49, !alias.scope !985, !noalias !982
  store i64 %i.ds, ptr %i.dq, align 8, !tbaa !49, !alias.scope !982, !noalias !985
  %i.dt = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 328
  %i.du = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 328 ; 2 uses
  %i.dv = load <2 x ptr>, ptr %i.du, align 8, !tbaa !987, !alias.scope !985, !noalias !982
  store <2 x ptr> %i.dv, ptr %i.dt, align 8, !tbaa !987, !alias.scope !982, !noalias !985
  %i.dw = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 344
  %i.dx = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 344
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !126, !alias.scope !985, !noalias !982
  store ptr %i.dy, ptr %i.dw, align 8, !tbaa !126, !alias.scope !982, !noalias !985
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.du, i8 0, i64 24, i1 false), !alias.scope !985, !noalias !982
  %i.dz = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 352
  %i.ea = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 352 ; 2 uses
  %.val.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ea, align 8, !tbaa !106, !alias.scope !985, !noalias !982
  store i64 %.val.i.i.i.i.i.i.i.i.i.i.i, ptr %i.dz, align 8, !tbaa !106, !alias.scope !982, !noalias !985
  store ptr null, ptr %i.ea, align 8, !tbaa !106, !alias.scope !985, !noalias !982
  %i.eb = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 360
  %i.ec = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 360 ; 2 uses
  %i.ed = load <2 x ptr>, ptr %i.ec, align 8, !tbaa !106, !alias.scope !985, !noalias !982
  store <2 x ptr> %i.ed, ptr %i.eb, align 8, !tbaa !106, !alias.scope !982, !noalias !985
  %i.ee = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 376
  %i.ef = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 376
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !122, !alias.scope !985, !noalias !982
  store ptr %i.eg, ptr %i.ee, align 8, !tbaa !122, !alias.scope !982, !noalias !985
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ec, i8 0, i64 24, i1 false), !alias.scope !985, !noalias !982
  tail call fastcc void @_ZN5arrow12_GLOBAL__N_114SchemaExporterD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %.092.i.i.i.i.i) #40, !inline_history !988
  %i.eh = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 384 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 384
  %.not.i.i.i37.i.i = icmp eq ptr %i.eh, %.val8.i
  br i1 %.not.i.i.i37.i.i, label %_ZNSt6vectorIN5arrow12_GLOBAL__N_114SchemaExporterESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !989

_ZNSt6vectorIN5arrow12_GLOBAL__N_114SchemaExporterESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZSt27__uninitialized_default_n_aIPN5arrow12_GLOBAL__N_114SchemaExporterEmS2_ET_S4_T0_RSaIT1_E.exit35.i.i
  %.not.i38.i.i = icmp eq ptr %.val7.i, null
  br i1 %.not.i38.i.i, label %_ZNSt12_Vector_baseIN5arrow12_GLOBAL__N_114SchemaExporterESaIS2_EE13_M_deallocateEPS2_m.exit39.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN5arrow12_GLOBAL__N_114SchemaExporterESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i.i
  %i.ej = load ptr, ptr %i.w, align 8, !tbaa !122
  %i.ek = ptrtoint ptr %i.ej to i64
  %i.el = sub i64 %i.ek, %i.r
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef %i.el) #33
  br label %_ZNSt12_Vector_baseIN5arrow12_GLOBAL__N_114SchemaExporterESaIS2_EE13_M_deallocateEPS2_m.exit39.i.i

_ZNSt12_Vector_baseIN5arrow12_GLOBAL__N_114SchemaExporterESaIS2_EE13_M_deallocateEPS2_m.exit39.i.i: ; preds = %bb.e, %_ZNSt6vectorIN5arrow12_GLOBAL__N_114SchemaExporterESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i.i
  store ptr %i.by, ptr %i.i, align 8, !tbaa !107
  %i.em = getelementptr inbounds nuw [384 x i8], ptr %i.bz, i64 %i.v
  store ptr %i.em, ptr %i.p, align 8, !tbaa !108
  %i.en = getelementptr inbounds nuw [384 x i8], ptr %i.by, i64 %i.bw
  store ptr %i.en, ptr %i.w, align 8, !tbaa !122
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
  tail call fastcc void @_ZN5arrow12_GLOBAL__N_114SchemaExporterD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %.0.i3.i.i.i) #35, !inline_history !990
  %i.eq = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i, i64 384 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.eq, %.val8.i
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN5arrow12_GLOBAL__N_114SchemaExporterES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !991

_ZSt8_DestroyIPN5arrow12_GLOBAL__N_114SchemaExporterES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.ep, ptr %i.p, align 8, !tbaa !108
  br label %_ZNSt6vectorIN5arrow12_GLOBAL__N_114SchemaExporterESaIS2_EE6resizeEm.exit

_ZNSt6vectorIN5arrow12_GLOBAL__N_114SchemaExporterESaIS2_EE6resizeEm.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPN5arrow12_GLOBAL__N_114SchemaExporterEmS2_ET_S4_T0_RSaIT1_E.exit.i.i, %_ZNSt12_Vector_baseIN5arrow12_GLOBAL__N_114SchemaExporterESaIS2_EE13_M_deallocateEPS2_m.exit39.i.i, %bb.f, %bb.g, %_ZSt8_DestroyIPN5arrow12_GLOBAL__N_114SchemaExporterES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.er = load ptr, ptr %i.b, align 8, !tbaa !442
  %i.es = load ptr, ptr %2, align 8, !tbaa !443   ; 2 uses
  %.not = icmp eq ptr %i.er, %i.es
  br i1 %.not, label %._crit_edge, label %_ZN5arrow6StatusD2Ev.exit

end_hunk_0
