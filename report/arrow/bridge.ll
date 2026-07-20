inline.NumInlined: 8879
inline.NumDeleted: 3388
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN5arrow12_GLOBAL__N_114SchemaExporter12ExportFormatERKNS_8DataTypeE:bb.a
  %3 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %4 = alloca %"class.std::unique_ptr", align 8   ; 4 uses
  %5 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !215
  %i.c = icmp eq i32 %i.b, 29
  br i1 %i.c, label %bb.b, label %_ZN5arrow6StatusD2Ev.exit36

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.e = load i8, ptr %i.d, align 8, !tbaa !1042, !range !102, !noundef !103
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %_ZN5arrow6StatusD2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 320 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !49
  %i.i = or i64 %i.h, 1
  store i64 %i.i, ptr %i.g, align 8, !tbaa !49
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !158
  call fastcc void @_ZN5arrow15VisitTypeInlineINS_12_GLOBAL__N_114SchemaExporterEJEEENS_6StatusERKNS_8DataTypeEPT_DpOT0_(ptr dead_on_unwind noalias writable align 8 %3, ptr noundef nonnull align 8 dereferenceable(72) %i.k, ptr noundef %1)
  %i.l = load ptr, ptr %3, align 8, !tbaa !78     ; 2 uses
  store ptr %i.l, ptr %0, align 8, !tbaa !78
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %_ZN5arrow6StatusD2Ev.exit28, label %.critedge.thread

_ZN5arrow6StatusD2Ev.exit28:                      ; preds = %_ZN5arrow6StatusD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  %i.n = call noalias noundef nonnull dereferenceable(384) ptr @_Znwm(i64 noundef 384) #34, !noalias !1045 ; 13 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(288) %i.o, i8 0, i64 288, i1 false), !noalias !1045
  store ptr %i.o, ptr %i.n, align 8, !tbaa !33, !noalias !1045
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 0, ptr %i.p, align 8, !tbaa !37, !noalias !1045
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  store ptr %i.r, ptr %i.q, align 8, !tbaa !33, !noalias !1045
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  store ptr %i.t, ptr %i.s, align 8, !tbaa !33, !noalias !1045
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 168
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 248
  store ptr %i.u, ptr %i.v, align 8, !tbaa !43, !noalias !1045
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 264
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 304
  store ptr %i.w, ptr %i.x, align 8, !tbaa !48, !noalias !1045
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 312
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.y, i8 0, i64 72, i1 false), !noalias !1045
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
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !158
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
  store ptr null, ptr %0, align 8, !tbaa !78, !alias.scope !1048
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6StatusD2Ev.exit36, %_ZN5arrow6StatusD2Ev.exit30, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow12_GLOBAL__N_114SchemaExporter14ExportChildrenERKSt6vectorISt10shared_ptrINS_5FieldEESaIS5_EE(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(384) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !513
  %i.d = load ptr, ptr %2, align 8, !tbaa !514
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 4                   ; 10 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 240 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !1051 ; 5 uses
  %i.k = icmp ugt i64 %i.h, %i.j
  br i1 %i.k, label %bb.b, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.a
  store i64 %i.h, ptr %i.i, align 8, !tbaa !40
  br label %_ZN5arrow8internal16StaticVectorImplI11ArrowSchemaLm1ENS0_18SmallVectorStorageIS2_Lm1EEEE6resizeEm.exit

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 3 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !44   ; 3 uses
  %.not.i.i.i = icmp eq i64 %i.m, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.h, %i.m
  br i1 %i.n, label %bb.d, label %.lr.ph.preheader.i

bb.d:                                             ; preds = %bb.c
  %i.o = shl i64 %i.m, 1
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.o, i64 %i.h) ; 2 uses
  %i.p = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.speculated.i.i.i, i64 72) ; 2 uses
  %i.q = extractvalue { i64, i1 } %i.p, 1
  %i.r = extractvalue { i64, i1 } %i.p, 0
  %i.s = select i1 %i.q, i64 -1, i64 %i.r
  %i.t = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.s) #34 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !43   ; 3 uses
  %i.w = mul i64 %i.j, 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.t, ptr align 8 %i.v, i64 %i.w, i1 false), !alias.scope !1052
  %i.x = icmp eq ptr %i.v, null
  br i1 %i.x, label %_ZN5arrow8internal18SmallVectorStorageI11ArrowSchemaLm1EE18reallocate_dynamicEm.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZdaPv(ptr noundef nonnull %i.v) #33
  br label %_ZN5arrow8internal18SmallVectorStorageI11ArrowSchemaLm1EE18reallocate_dynamicEm.exit.i.i.i

_ZN5arrow8internal18SmallVectorStorageI11ArrowSchemaLm1EE18reallocate_dynamicEm.exit.i.i.i: ; preds = %bb.e, %bb.d
  store i64 %.sroa.speculated.i.i.i, ptr %i.l, align 8, !tbaa !44
  store ptr %i.t, ptr %i.u, align 8, !tbaa !43
  br label %.lr.ph.preheader.i

bb.f:                                             ; preds = %bb.b
  %i.y = icmp ugt i64 %i.h, 1
  br i1 %i.y, label %bb.g, label %.lr.ph.preheader.i

bb.g:                                             ; preds = %bb.f
  store i64 %i.h, ptr %i.l, align 8, !tbaa !44
  %i.z = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.h, i64 72) ; 2 uses
  %i.aa = extractvalue { i64, i1 } %i.z, 1
  %i.ab = extractvalue { i64, i1 } %i.z, 0
  %i.ac = select i1 %i.aa, i64 -1, i64 %i.ab
  %i.ad = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ac) #34 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 248
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !43
  %i.af = mul i64 %i.j, 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ad, ptr nonnull align 8 dereferenceable(96) %i.a, i64 %i.af, i1 false), !alias.scope !1059
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.g, %bb.f, %_ZN5arrow8internal18SmallVectorStorageI11ArrowSchemaLm1EE18reallocate_dynamicEm.exit.i.i.i, %bb.c
  store i64 %i.h, ptr %i.i, align 8, !tbaa !40
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !43
  %i.ai = mul i64 %i.j, 72
  %scevgep = getelementptr nuw i8, ptr %i.ah, i64 %i.ai
  %i.aj = sub i64 %i.h, %i.j
  %i.ak = mul i64 %i.aj, 72
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep, i8 0, i64 %i.ak, i1 false)
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !513
  %.pre22 = load ptr, ptr %2, align 8, !tbaa !514
  %.pre23 = ptrtoint ptr %.pre to i64
  %.pre24 = ptrtoint ptr %.pre22 to i64
  %.pre26 = sub i64 %.pre23, %.pre24
  %.pre28 = ashr exact i64 %.pre26, 4
  br label %_ZN5arrow8internal16StaticVectorImplI11ArrowSchemaLm1ENS0_18SmallVectorStorageIS2_Lm1EEEE6resizeEm.exit

_ZN5arrow8internal16StaticVectorImplI11ArrowSchemaLm1ENS0_18SmallVectorStorageIS2_Lm1EEEE6resizeEm.exit: ; preds = %.lr.ph.preheader.i, %.preheader.preheader.i
  %.pre-phi29 = phi i64 [ %.pre28, %.lr.ph.preheader.i ], [ %i.h, %.preheader.preheader.i ] ; 7 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 360 ; 3 uses
  %.val7.i = load ptr, ptr %i.al, align 8, !tbaa !107 ; 6 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 368 ; 4 uses
  %.val8.i = load ptr, ptr %i.am, align 8, !tbaa !108 ; 20 uses
  %i.an = ptrtoint ptr %.val8.i to i64            ; 2 uses
  %i.ao = ptrtoint ptr %.val7.i to i64            ; 2 uses
  %i.ap = sub i64 %i.an, %i.ao                    ; 2 uses
  %i.aq = sdiv exact i64 %i.ap, 384               ; 9 uses
  %i.ar = icmp ugt i64 %.pre-phi29, %i.aq
  br i1 %i.ar, label %bb.h, label %bb.l

bb.h:                                             ; preds = %_ZN5arrow8internal16StaticVectorImplI11ArrowSchemaLm1ENS0_18SmallVectorStorageIS2_Lm1EEEE6resizeEm.exit
  %i.as = sub nuw nsw i64 %.pre-phi29, %i.aq      ; 7 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 376 ; 3 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !138
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = sub i64 %i.av, %i.an
  %i.ax = sdiv exact i64 %i.aw, 384               ; 2 uses
  %i.ay = icmp ult i64 %i.aq, 24019198012642646
  tail call void @llvm.assume(i1 %i.ay)
  %i.az = sub nuw nsw i64 24019198012642645, %i.aq
  %i.ba = icmp ule i64 %i.ax, %i.az
  tail call void @llvm.assume(i1 %i.ba)
  %.not28.i.i = icmp ult i64 %i.ax, %i.as
  br i1 %.not28.i.i, label %bb.i, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %bb.h
  %.neg = add nuw nsw i64 %i.aq, 1
  %lcmp.mod.not = trunc nuw i64 %i.as to i1
  br i1 %lcmp.mod.not, label %.preheader.i.i.prol, label %.preheader.i.i.prol.loopexit

.preheader.i.i.prol:                              ; preds = %.preheader.i.i.preheader
  %i.bb = getelementptr inbounds nuw i8, ptr %.val8.i, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %i.bb, i8 0, i64 280, i1 false)
  store ptr %i.bb, ptr %.val8.i, align 8, !tbaa !33
  %i.bc = getelementptr inbounds nuw i8, ptr %.val8.i, i64 8
  store i64 0, ptr %i.bc, align 8, !tbaa !37
  %i.bd = getelementptr inbounds nuw i8, ptr %.val8.i, i64 32
  %i.be = getelementptr inbounds nuw i8, ptr %.val8.i, i64 48
  store ptr %i.be, ptr %i.bd, align 8, !tbaa !33
  %i.bf = getelementptr inbounds nuw i8, ptr %.val8.i, i64 64
  %i.bg = getelementptr inbounds nuw i8, ptr %.val8.i, i64 80
  store ptr %i.bg, ptr %i.bf, align 8, !tbaa !33
  %i.bh = getelementptr inbounds nuw i8, ptr %.val8.i, i64 168
  %i.bi = getelementptr inbounds nuw i8, ptr %.val8.i, i64 248
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !43
  %i.bj = getelementptr inbounds nuw i8, ptr %.val8.i, i64 264
  %i.bk = getelementptr inbounds nuw i8, ptr %.val8.i, i64 296
  store i64 0, ptr %i.bk, align 8, !tbaa !45
  %i.bl = getelementptr inbounds nuw i8, ptr %.val8.i, i64 304
  store ptr %i.bj, ptr %i.bl, align 8, !tbaa !48
  %i.bm = getelementptr inbounds nuw i8, ptr %.val8.i, i64 312
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.bm, i8 0, i64 72, i1 false)
  %i.bn = add nsw i64 %i.as, -1
  %i.bo = getelementptr inbounds nuw i8, ptr %.val8.i, i64 384 ; 2 uses
  br label %.preheader.i.i.prol.loopexit

.preheader.i.i.prol.loopexit:                     ; preds = %.preheader.i.i.prol, %.preheader.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.preheader.i.i.preheader ], [ %i.bo, %.preheader.i.i.prol ]
  %.07.i.i.i.i.i.unr = phi ptr [ %.val8.i, %.preheader.i.i.preheader ], [ %i.bo, %.preheader.i.i.prol ]
  %.056.i.i.i.i.i.unr = phi i64 [ %i.as, %.preheader.i.i.preheader ], [ %i.bn, %.preheader.i.i.prol ]
  %i.bp = icmp eq i64 %.pre-phi29, %.neg
  br i1 %i.bp, label %_ZSt27__uninitialized_default_n_aIPN5arrow12_GLOBAL__N_114SchemaExporterEmS2_ET_S4_T0_RSaIT1_E.exit.i.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.prol.loopexit, %.preheader.i.i
  %.07.i.i.i.i.i = phi ptr [ %i.cq, %.preheader.i.i ], [ %.07.i.i.i.i.i.unr, %.preheader.i.i.prol.loopexit ] ; 27 uses
  %.056.i.i.i.i.i = phi i64 [ %i.cp, %.preheader.i.i ], [ %.056.i.i.i.i.i.unr, %.preheader.i.i.prol.loopexit ]
  %i.bq = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %i.bq, i8 0, i64 280, i1 false)
  store ptr %i.bq, ptr %.07.i.i.i.i.i, align 8, !tbaa !33
  %i.br = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 8
  store i64 0, ptr %i.br, align 8, !tbaa !37
  %i.bs = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 32
  %i.bt = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 48
  store ptr %i.bt, ptr %i.bs, align 8, !tbaa !33
  %i.bu = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 64
  %i.bv = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 80
  store ptr %i.bv, ptr %i.bu, align 8, !tbaa !33
  %i.bw = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 168
  %i.bx = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 248
  store ptr %i.bw, ptr %i.bx, align 8, !tbaa !43
  %i.by = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 264
  %i.bz = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 296
  store i64 0, ptr %i.bz, align 8, !tbaa !45
  %i.ca = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 304
  store ptr %i.by, ptr %i.ca, align 8, !tbaa !48
  %i.cb = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 312
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.cb, i8 0, i64 72, i1 false)
  %i.cc = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 384
  %i.cd = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 400 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %i.cd, i8 0, i64 280, i1 false)
  store ptr %i.cd, ptr %i.cc, align 8, !tbaa !33
  %i.ce = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 392
  store i64 0, ptr %i.ce, align 8, !tbaa !37
  %i.cf = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 416
  %i.cg = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 432
  store ptr %i.cg, ptr %i.cf, align 8, !tbaa !33
  %i.ch = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 448
  %i.ci = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 464
  store ptr %i.ci, ptr %i.ch, align 8, !tbaa !33
  %i.cj = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 552
  %i.ck = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 632
  store ptr %i.cj, ptr %i.ck, align 8, !tbaa !43
  %i.cl = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 648
  %i.cm = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 680
  store i64 0, ptr %i.cm, align 8, !tbaa !45
  %i.cn = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 688
  store ptr %i.cl, ptr %i.cn, align 8, !tbaa !48
  %i.co = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 696
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.co, i8 0, i64 72, i1 false)
  %i.cp = add i64 %.056.i.i.i.i.i, -2             ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 768 ; 2 uses
  %.not.i.i.i.i.i.1 = icmp eq i64 %i.cp, 0
  br i1 %.not.i.i.i.i.i.1, label %_ZSt27__uninitialized_default_n_aIPN5arrow12_GLOBAL__N_114SchemaExporterEmS2_ET_S4_T0_RSaIT1_E.exit.i.i, label %.preheader.i.i, !llvm.loop !1066

_ZSt27__uninitialized_default_n_aIPN5arrow12_GLOBAL__N_114SchemaExporterEmS2_ET_S4_T0_RSaIT1_E.exit.i.i: ; preds = %.preheader.i.i, %.preheader.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.preheader.i.i.prol.loopexit ], [ %i.cq, %.preheader.i.i ]
  store ptr %.lcssa, ptr %i.am, align 8, !tbaa !108
  br label %_ZNSt6vectorIN5arrow12_GLOBAL__N_114SchemaExporterESaIS2_EE6resizeEm.exit

bb.i:                                             ; preds = %bb.h
  %i.cr = icmp ugt i64 %.pre-phi29, 24019198012642645
  br i1 %i.cr, label %bb.j, label %.prol.loopexit.unr-lcssa

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.66) #41
  unreachable

.prol.loopexit.unr-lcssa:                         ; preds = %bb.i
  %.sroa.speculated.i.i.i15 = tail call i64 @llvm.umax.i64(i64 %i.aq, i64 range(i64 1, 0) %i.as)
  %4 = add nuw nsw i64 %.sroa.speculated.i.i.i15, %i.aq
  %5 = tail call i64 @llvm.umin.i64(i64 %4, i64 24019198012642645) ; 2 uses
  %6 = mul nuw nsw i64 %5, 384
  %7 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %6) #34 ; 4 uses
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 %i.ap ; 15 uses
  %.neg41 = add nuw nsw i64 %i.aq, 1
  %i.cs = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %i.cs, i8 0, i64 280, i1 false)
  store ptr %i.cs, ptr %8, align 8, !tbaa !33
  %i.ct = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 0, ptr %i.ct, align 8, !tbaa !37
  %i.cu = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.cv = getelementptr inbounds nuw i8, ptr %8, i64 48
  store ptr %i.cv, ptr %i.cu, align 8, !tbaa !33
  %i.cw = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.cx = getelementptr inbounds nuw i8, ptr %8, i64 80
  store ptr %i.cx, ptr %i.cw, align 8, !tbaa !33
  %i.cy = getelementptr inbounds nuw i8, ptr %8, i64 168
  %i.cz = getelementptr inbounds nuw i8, ptr %8, i64 248
  store ptr %i.cy, ptr %i.cz, align 8, !tbaa !43
  %i.da = getelementptr inbounds nuw i8, ptr %8, i64 264
  %i.db = getelementptr inbounds nuw i8, ptr %8, i64 296
  store i64 0, ptr %i.db, align 8, !tbaa !45
  %i.dc = getelementptr inbounds nuw i8, ptr %8, i64 304
  store ptr %i.da, ptr %i.dc, align 8, !tbaa !48
  %i.dd = getelementptr inbounds nuw i8, ptr %8, i64 312
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.dd, i8 0, i64 72, i1 false)
  %i.de = add nsw i64 %i.as, -1
  %i.df = getelementptr inbounds nuw i8, ptr %8, i64 384
  %9 = icmp eq i64 %.pre-phi29, %.neg41
  br i1 %9, label %_ZSt27__uninitialized_default_n_aIPN5arrow12_GLOBAL__N_114SchemaExporterEmS2_ET_S4_T0_RSaIT1_E.exit35.i.i, label %_ZNKSt6vectorIN5arrow12_GLOBAL__N_114SchemaExporterESaIS2_EE12_M_check_lenEmPKc.exit.i.i.new

_ZNKSt6vectorIN5arrow12_GLOBAL__N_114SchemaExporterESaIS2_EE12_M_check_lenEmPKc.exit.i.i.new: ; preds = %.prol.loopexit.unr-lcssa, %_ZNKSt6vectorIN5arrow12_GLOBAL__N_114SchemaExporterESaIS2_EE12_M_check_lenEmPKc.exit.i.i.new
  %.07.i.i.i32.i.i = phi ptr [ %i.eg, %_ZNKSt6vectorIN5arrow12_GLOBAL__N_114SchemaExporterESaIS2_EE12_M_check_lenEmPKc.exit.i.i.new ], [ %i.df, %.prol.loopexit.unr-lcssa ] ; 27 uses
  %.056.i.i.i33.i.i = phi i64 [ %i.ef, %_ZNKSt6vectorIN5arrow12_GLOBAL__N_114SchemaExporterESaIS2_EE12_M_check_lenEmPKc.exit.i.i.new ], [ %i.de, %.prol.loopexit.unr-lcssa ]
  %i.dg = getelementptr inbounds nuw i8, ptr %.07.i.i.i32.i.i, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %i.dg, i8 0, i64 280, i1 false)
  store ptr %i.dg, ptr %.07.i.i.i32.i.i, align 8, !tbaa !33
  %i.dh = getelementptr inbounds nuw i8, ptr %.07.i.i.i32.i.i, i64 8
  store i64 0, ptr %i.dh, align 8, !tbaa !37
  %i.di = getelementptr inbounds nuw i8, ptr %.07.i.i.i32.i.i, i64 32
  %i.dj = getelementptr inbounds nuw i8, ptr %.07.i.i.i32.i.i, i64 48
  store ptr %i.dj, ptr %i.di, align 8, !tbaa !33
  %i.dk = getelementptr inbounds nuw i8, ptr %.07.i.i.i32.i.i, i64 64
  %i.dl = getelementptr inbounds nuw i8, ptr %.07.i.i.i32.i.i, i64 80
  store ptr %i.dl, ptr %i.dk, align 8, !tbaa !33
  %i.dm = getelementptr inbounds nuw i8, ptr %.07.i.i.i32.i.i, i64 168
  %i.dn = getelementptr inbounds nuw i8, ptr %.07.i.i.i32.i.i, i64 248
  store ptr %i.dm, ptr %i.dn, align 8, !tbaa !43
  %i.do = getelementptr inbounds nuw i8, ptr %.07.i.i.i32.i.i, i64 264
  %i.dp = getelementptr inbounds nuw i8, ptr %.07.i.i.i32.i.i, i64 296
  store i64 0, ptr %i.dp, align 8, !tbaa !45
  %i.dq = getelementptr inbounds nuw i8, ptr %.07.i.i.i32.i.i, i64 304
  store ptr %i.do, ptr %i.dq, align 8, !tbaa !48
  %i.dr = getelementptr inbounds nuw i8, ptr %.07.i.i.i32.i.i, i64 312
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.dr, i8 0, i64 72, i1 false)
  %i.ds = getelementptr inbounds nuw i8, ptr %.07.i.i.i32.i.i, i64 384
  %i.dt = getelementptr inbounds nuw i8, ptr %.07.i.i.i32.i.i, i64 400 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %i.dt, i8 0, i64 280, i1 false)
  store ptr %i.dt, ptr %i.ds, align 8, !tbaa !33
  %i.du = getelementptr inbounds nuw i8, ptr %.07.i.i.i32.i.i, i64 392
  store i64 0, ptr %i.du, align 8, !tbaa !37
  %i.dv = getelementptr inbounds nuw i8, ptr %.07.i.i.i32.i.i, i64 416
  %i.dw = getelementptr inbounds nuw i8, ptr %.07.i.i.i32.i.i, i64 432
  store ptr %i.dw, ptr %i.dv, align 8, !tbaa !33
  %i.dx = getelementptr inbounds nuw i8, ptr %.07.i.i.i32.i.i, i64 448
  %i.dy = getelementptr inbounds nuw i8, ptr %.07.i.i.i32.i.i, i64 464
  store ptr %i.dy, ptr %i.dx, align 8, !tbaa !33
  %i.dz = getelementptr inbounds nuw i8, ptr %.07.i.i.i32.i.i, i64 552
  %i.ea = getelementptr inbounds nuw i8, ptr %.07.i.i.i32.i.i, i64 632
  store ptr %i.dz, ptr %i.ea, align 8, !tbaa !43
  %i.eb = getelementptr inbounds nuw i8, ptr %.07.i.i.i32.i.i, i64 648
  %i.ec = getelementptr inbounds nuw i8, ptr %.07.i.i.i32.i.i, i64 680
  store i64 0, ptr %i.ec, align 8, !tbaa !45
  %i.ed = getelementptr inbounds nuw i8, ptr %.07.i.i.i32.i.i, i64 688
  store ptr %i.eb, ptr %i.ed, align 8, !tbaa !48
  %i.ee = getelementptr inbounds nuw i8, ptr %.07.i.i.i32.i.i, i64 696
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ee, i8 0, i64 72, i1 false)
  %i.ef = add i64 %.056.i.i.i33.i.i, -2           ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.07.i.i.i32.i.i, i64 768
  %.not.i.i.i34.i.i.1 = icmp eq i64 %i.ef, 0
  br i1 %.not.i.i.i34.i.i.1, label %_ZSt27__uninitialized_default_n_aIPN5arrow12_GLOBAL__N_114SchemaExporterEmS2_ET_S4_T0_RSaIT1_E.exit35.i.i, label %_ZNKSt6vectorIN5arrow12_GLOBAL__N_114SchemaExporterESaIS2_EE12_M_check_lenEmPKc.exit.i.i.new, !llvm.loop !1066

_ZSt27__uninitialized_default_n_aIPN5arrow12_GLOBAL__N_114SchemaExporterEmS2_ET_S4_T0_RSaIT1_E.exit35.i.i: ; preds = %_ZNKSt6vectorIN5arrow12_GLOBAL__N_114SchemaExporterESaIS2_EE12_M_check_lenEmPKc.exit.i.i.new, %.prol.loopexit.unr-lcssa
  %.not1.i.i.i.i.i = icmp eq ptr %.val7.i, %.val8.i
  br i1 %.not1.i.i.i.i.i, label %_ZNSt6vectorIN5arrow12_GLOBAL__N_114SchemaExporterESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZSt27__uninitialized_default_n_aIPN5arrow12_GLOBAL__N_114SchemaExporterEmS2_ET_S4_T0_RSaIT1_E.exit35.i.i, %.lr.ph.i.i.i.i.i
  %.03.i.i.i.i.i = phi ptr [ %i.ez, %.lr.ph.i.i.i.i.i ], [ %7, %_ZSt27__uninitialized_default_n_aIPN5arrow12_GLOBAL__N_114SchemaExporterEmS2_ET_S4_T0_RSaIT1_E.exit35.i.i ] ; 8 uses
  %.092.i.i.i.i.i = phi ptr [ %i.ey, %.lr.ph.i.i.i.i.i ], [ %.val7.i, %_ZSt27__uninitialized_default_n_aIPN5arrow12_GLOBAL__N_114SchemaExporterEmS2_ET_S4_T0_RSaIT1_E.exit35.i.i ] ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1067)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1070)
  tail call fastcc void @_ZN5arrow12_GLOBAL__N_125ExportedSchemaPrivateDataC2EOS1_(ptr noundef nonnull align 8 dereferenceable(384) %.03.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(384) %.092.i.i.i.i.i) #31
  %i.eh = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 320
  %i.ei = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 320
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !49, !alias.scope !1070, !noalias !1067
  store i64 %i.ej, ptr %i.eh, align 8, !tbaa !49, !alias.scope !1067, !noalias !1070
  %i.ek = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 328
  %i.el = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 328 ; 2 uses
  %i.em = load <2 x ptr>, ptr %i.el, align 8, !tbaa !1072, !alias.scope !1070, !noalias !1067
  store <2 x ptr> %i.em, ptr %i.ek, align 8, !tbaa !1072, !alias.scope !1067, !noalias !1070
  %i.en = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 344
  %i.eo = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 344
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !142, !alias.scope !1070, !noalias !1067
  store ptr %i.ep, ptr %i.en, align 8, !tbaa !142, !alias.scope !1067, !noalias !1070
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.el, i8 0, i64 24, i1 false), !alias.scope !1070, !noalias !1067
  %i.eq = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 352
  %i.er = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 352 ; 2 uses
  %.val.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.er, align 8, !tbaa !106, !alias.scope !1070, !noalias !1067
  store i64 %.val.i.i.i.i.i.i.i.i.i.i.i, ptr %i.eq, align 8, !tbaa !106, !alias.scope !1067, !noalias !1070
  store ptr null, ptr %i.er, align 8, !tbaa !106, !alias.scope !1070, !noalias !1067
  %i.es = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 360
  %i.et = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 360 ; 2 uses
  %i.eu = load <2 x ptr>, ptr %i.et, align 8, !tbaa !106, !alias.scope !1070, !noalias !1067
  store <2 x ptr> %i.eu, ptr %i.es, align 8, !tbaa !106, !alias.scope !1067, !noalias !1070
  %i.ev = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 376
  %i.ew = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 376
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !138, !alias.scope !1070, !noalias !1067
  store ptr %i.ex, ptr %i.ev, align 8, !tbaa !138, !alias.scope !1067, !noalias !1070
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.et, i8 0, i64 24, i1 false), !alias.scope !1070, !noalias !1067
  tail call fastcc void @_ZN5arrow12_GLOBAL__N_114SchemaExporterD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %.092.i.i.i.i.i) #40, !inline_history !1073
  %i.ey = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 384 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 384
  %.not.i.i.i37.i.i = icmp eq ptr %i.ey, %.val8.i
  br i1 %.not.i.i.i37.i.i, label %_ZNSt6vectorIN5arrow12_GLOBAL__N_114SchemaExporterESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1074

_ZNSt6vectorIN5arrow12_GLOBAL__N_114SchemaExporterESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZSt27__uninitialized_default_n_aIPN5arrow12_GLOBAL__N_114SchemaExporterEmS2_ET_S4_T0_RSaIT1_E.exit35.i.i
  %.not.i38.i.i = icmp eq ptr %.val7.i, null
  br i1 %.not.i38.i.i, label %_ZNSt12_Vector_baseIN5arrow12_GLOBAL__N_114SchemaExporterESaIS2_EE13_M_deallocateEPS2_m.exit39.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIN5arrow12_GLOBAL__N_114SchemaExporterESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i.i
  %i.fa = load ptr, ptr %i.at, align 8, !tbaa !138
  %i.fb = ptrtoint ptr %i.fa to i64
  %i.fc = sub i64 %i.fb, %i.ao
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef %i.fc) #33
  br label %_ZNSt12_Vector_baseIN5arrow12_GLOBAL__N_114SchemaExporterESaIS2_EE13_M_deallocateEPS2_m.exit39.i.i

_ZNSt12_Vector_baseIN5arrow12_GLOBAL__N_114SchemaExporterESaIS2_EE13_M_deallocateEPS2_m.exit39.i.i: ; preds = %bb.k, %_ZNSt6vectorIN5arrow12_GLOBAL__N_114SchemaExporterESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i.i
  store ptr %7, ptr %i.al, align 8, !tbaa !107
  %i.fd = getelementptr inbounds nuw [384 x i8], ptr %8, i64 %i.as
  store ptr %i.fd, ptr %i.am, align 8, !tbaa !108
  %i.fe = getelementptr inbounds nuw [384 x i8], ptr %7, i64 %5
  store ptr %i.fe, ptr %i.at, align 8, !tbaa !138
  br label %_ZNSt6vectorIN5arrow12_GLOBAL__N_114SchemaExporterESaIS2_EE6resizeEm.exit

bb.l:                                             ; preds = %_ZN5arrow8internal16StaticVectorImplI11ArrowSchemaLm1ENS0_18SmallVectorStorageIS2_Lm1EEEE6resizeEm.exit
  %i.ff = icmp ult i64 %.pre-phi29, %i.aq
  br i1 %i.ff, label %bb.m, label %_ZNSt6vectorIN5arrow12_GLOBAL__N_114SchemaExporterESaIS2_EE6resizeEm.exit

bb.m:                                             ; preds = %bb.l
  %i.fg = getelementptr inbounds nuw [384 x i8], ptr %.val7.i, i64 %.pre-phi29 ; 3 uses
  %.not.i9.i = icmp eq ptr %.val8.i, %i.fg
  br i1 %.not.i9.i, label %_ZNSt6vectorIN5arrow12_GLOBAL__N_114SchemaExporterESaIS2_EE6resizeEm.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.m, %.lr.ph.i.i.i
  %.0.i3.i.i.i = phi ptr [ %i.fh, %.lr.ph.i.i.i ], [ %i.fg, %bb.m ] ; 2 uses
  tail call fastcc void @_ZN5arrow12_GLOBAL__N_114SchemaExporterD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %.0.i3.i.i.i) #36, !inline_history !1075
  %i.fh = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i, i64 384 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.fh, %.val8.i
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN5arrow12_GLOBAL__N_114SchemaExporterES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !1076

_ZSt8_DestroyIPN5arrow12_GLOBAL__N_114SchemaExporterES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.fg, ptr %i.am, align 8, !tbaa !108
  br label %_ZNSt6vectorIN5arrow12_GLOBAL__N_114SchemaExporterESaIS2_EE6resizeEm.exit

_ZNSt6vectorIN5arrow12_GLOBAL__N_114SchemaExporterESaIS2_EE6resizeEm.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPN5arrow12_GLOBAL__N_114SchemaExporterEmS2_ET_S4_T0_RSaIT1_E.exit.i.i, %_ZNSt12_Vector_baseIN5arrow12_GLOBAL__N_114SchemaExporterESaIS2_EE13_M_deallocateEPS2_m.exit39.i.i, %bb.l, %bb.m, %_ZSt8_DestroyIPN5arrow12_GLOBAL__N_114SchemaExporterES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.fi = load ptr, ptr %i.b, align 8, !tbaa !513
  %i.fj = load ptr, ptr %2, align 8, !tbaa !514   ; 2 uses
  %.not = icmp eq ptr %i.fi, %i.fj
  br i1 %.not, label %._crit_edge, label %_ZN5arrow6StatusD2Ev.exit

bb.n:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.fk = add nuw i64 %.021, 1                    ; 2 uses
  %i.fl = load ptr, ptr %i.b, align 8, !tbaa !513
  %i.fm = load ptr, ptr %2, align 8, !tbaa !514   ; 2 uses
  %i.fn = ptrtoint ptr %i.fl to i64
  %i.fo = ptrtoint ptr %i.fm to i64
  %i.fp = sub i64 %i.fn, %i.fo
  %i.fq = ashr exact i64 %i.fp, 4
  %i.fr = icmp ult i64 %i.fk, %i.fq
  br i1 %i.fr, label %_ZN5arrow6StatusD2Ev.exit, label %._crit_edge, !llvm.loop !1077

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZNSt6vectorIN5arrow12_GLOBAL__N_114SchemaExporterESaIS2_EE6resizeEm.exit, %bb.n
  %i.fs = phi ptr [ %i.fm, %bb.n ], [ %i.fj, %_ZNSt6vectorIN5arrow12_GLOBAL__N_114SchemaExporterESaIS2_EE6resizeEm.exit ]
  %.021 = phi i64 [ %i.fk, %bb.n ], [ 0, %_ZNSt6vectorIN5arrow12_GLOBAL__N_114SchemaExporterESaIS2_EE6resizeEm.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  %.val = load ptr, ptr %i.al, align 8, !tbaa !107
  %i.ft = getelementptr inbounds nuw [384 x i8], ptr %.val, i64 %.021
  %i.fu = getelementptr inbounds nuw [16 x i8], ptr %i.fs, i64 %.021
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !498
  call fastcc void @_ZN5arrow12_GLOBAL__N_114SchemaExporter11ExportFieldERKNS_5FieldE(ptr dead_on_unwind noalias writable align 8 %3, ptr noundef nonnull align 8 dereferenceable(384) %i.ft, ptr noundef nonnull align 8 dereferenceable(96) %i.fv)
  %i.fw = load ptr, ptr %3, align 8, !tbaa !78    ; 2 uses
  store ptr %i.fw, ptr %0, align 8, !tbaa !78
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  %i.fx = icmp eq ptr %i.fw, null
  br i1 %i.fx, label %bb.n, label %.critedge

._crit_edge:                                      ; preds = %bb.n, %_ZNSt6vectorIN5arrow12_GLOBAL__N_114SchemaExporterESaIS2_EE6resizeEm.exit
  store ptr null, ptr %0, align 8, !tbaa !78, !alias.scope !1078
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
  %6 = alloca %"class.std::vector.270", align 8   ; 9 uses
  %7 = alloca %"class.std::vector.270", align 8   ; 9 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %10 = alloca %"class.arrow::Result.275", align 8 ; 17 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = load atomic i8, ptr @_ZGVZN5arrow12_GLOBAL__N_114SchemaExporter14ExportMetadataEPKNS_16KeyValueMetadataEE14empty_metadata acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.e, !prof !175

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
  %spec.store.select = select i1 %i.e, ptr @_ZZN5arrow12_GLOBAL__N_114SchemaExporter14ExportMetadataEPKNS_16KeyValueMetadataEE14empty_metadata, ptr %2 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 328 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1072
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 336 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1072
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
  %i.n = load ptr, ptr %3, align 8, !tbaa !78
  %i.o = icmp eq ptr %i.n, null                   ; 2 uses
  br i1 %i.o, label %bb.k, label %bb.i, !prof !90

bb.i:                                             ; preds = %bb.h
  store ptr null, ptr %0, align 8, !tbaa !78
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
  call void @llvm.experimental.noalias.scope.decl(metadata !1081)
  call void @llvm.experimental.noalias.scope.decl(metadata !1084)
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 12 uses
  store ptr %i.r, ptr %4, align 8, !tbaa !33, !alias.scope !1087
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !91, !noalias !1087 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 5 uses
end_hunk_0
begin_hunk_1_@_ZN5arrow12_GLOBAL__N_114SchemaImporter8DoImportEv:bb.a
          cleanup
  %i.ajk = load ptr, ptr %2, align 8, !tbaa !91, !noalias !1928 ; 2 uses
  %i.ajl = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ajm = icmp eq ptr %i.ajk, %i.ajl
  br i1 %i.ajm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i.i.i: ; preds = %bb.lz
  %i.ajn = load i64, ptr %i.ajl, align 8, !tbaa !39, !noalias !1928
  %i.ajo = add i64 %i.ajn, 1
  call void @_ZdlPvm(ptr noundef %i.ajk, i64 noundef %i.ajo) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i.i.i: ; preds = %bb.lz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31, !noalias !1928
  br label %common.resume336

_ZN5arrow12_GLOBAL__N_118FormatStringParser7InvalidEv.exit: ; preds = %bb.ly, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31, !noalias !1928
  call void @llvm.lifetime.end.p0(ptr nonnull %3), !noalias !1922
  br label %_ZN5arrow6StatusD2Ev.exit88

_ZN5arrow6StatusD2Ev.exit88.thread:               ; preds = %_ZN5arrow6StatusD2Ev.exit.i35.i, %_ZN5arrow6StatusD2Ev.exit.i.i, %_ZN5arrow6StatusD2Ev.exit.i295, %bb.bz, %bb.av, %_ZN5arrow6StatusD2Ev.exit.i240
  %.pr.ph = phi ptr [ %.pr.i241, %_ZN5arrow6StatusD2Ev.exit.i240 ], [ %i.iz, %bb.av ], [ %i.lt, %bb.bz ], [ %.pr.i296, %_ZN5arrow6StatusD2Ev.exit.i295 ], [ %.pr.i.i312, %_ZN5arrow6StatusD2Ev.exit.i.i ], [ %.pr.i36.i, %_ZN5arrow6StatusD2Ev.exit.i35.i ]
  store ptr %.pr.ph, ptr %0, align 8, !tbaa !78
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #31
  br label %.critedge

_ZN5arrow6StatusD2Ev.exit88:                      ; preds = %_ZN5arrow12_GLOBAL__N_118FormatStringParser7InvalidEv.exit.i319, %_ZN5arrow12_GLOBAL__N_114SchemaImporter16ProcessTimestampEv.exit.i, %_ZN5arrow12_GLOBAL__N_118FormatStringParser7InvalidEv.exit.i50.i, %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit23.i.i, %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit18.i.i, %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i44.i, %_ZN5arrow12_GLOBAL__N_114SchemaImporter15ProcessDurationEv.exit.i, %_ZN5arrow12_GLOBAL__N_114SchemaImporter11ProcessTimeEv.exit.i, %_ZN5arrow12_GLOBAL__N_118FormatStringParser7InvalidEv.exit.i16.i, %bb.gw, %bb.gv, %_ZN5arrow6ResultISt6vectorIiSaIiEEED2Ev.exit.i, %_ZN5arrow6ResultIiED2Ev.exit.i, %_ZN5arrow12_GLOBAL__N_118FormatStringParser7InvalidEv.exit.i, %bb.ar, %bb.aq, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ac, %bb.ad, %bb.ae, %bb.af, %bb.ag, %bb.ah, %bb.ai, %bb.aj, %bb.ak, %bb.lw, %_ZN5arrow12_GLOBAL__N_118FormatStringParser7InvalidEv.exit
  %.pr.pr = load ptr, ptr %61, align 8, !tbaa !78 ; 2 uses
  store ptr %.pr.pr, ptr %0, align 8, !tbaa !78
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #31
  %i.ajp = icmp eq ptr %.pr.pr, null
  br i1 %i.ajp, label %bb.ma, label %.critedge

bb.ma:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit88
  %i.ajq = load ptr, ptr %1, align 8, !tbaa !484  ; 2 uses
  %i.ajr = getelementptr inbounds nuw i8, ptr %i.ajq, i64 48 ; 2 uses
  %i.ajs = load ptr, ptr %i.ajr, align 8, !tbaa !134
  %.not = icmp eq ptr %i.ajs, null
  br i1 %.not, label %bb.nb, label %bb.mb

bb.mb:                                            ; preds = %bb.ma
  %i.ajt = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.aju = load ptr, ptr %i.ajt, align 8, !tbaa !158 ; 3 uses
  %i.ajv = getelementptr inbounds nuw i8, ptr %i.aju, i64 40
  %i.ajw = load i32, ptr %i.ajv, align 8, !tbaa !215
  %.off.i = add i32 %i.ajw, -2
  %switch.i = icmp ult i32 %.off.i, 8
  br i1 %switch.i, label %bb.mg, label %bb.mc

bb.mc:                                            ; preds = %bb.mb
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #31
  %i.ajx = load ptr, ptr %i.aju, align 8, !tbaa !84
  %i.ajy = getelementptr inbounds nuw i8, ptr %i.ajx, i64 32
  %i.ajz = load ptr, ptr %i.ajy, align 8
  call void %i.ajz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %62, ptr noundef nonnull align 8 dereferenceable(72) %i.aju, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #31, !noalias !1933
  invoke void @_ZN5arrow8internal12JoinToStringIJRA65_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESA_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %56, ptr noundef nonnull align 1 dereferenceable(65) @.str.84, ptr noundef nonnull align 8 dereferenceable(32) %62)
          to label %.noexc unwind label %bb.mf

.noexc:                                           ; preds = %bb.mc
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %56)
          to label %bb.md unwind label %bb.me

bb.md:                                            ; preds = %.noexc
  %i.aka = load ptr, ptr %56, align 8, !tbaa !91, !noalias !1933 ; 2 uses
  %i.akb = getelementptr inbounds nuw i8, ptr %56, i64 16 ; 2 uses
  %i.akc = icmp eq ptr %i.aka, %i.akb
  br i1 %i.akc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.md
  %i.akd = load i64, ptr %i.akb, align 8, !tbaa !39, !noalias !1933
  %i.ake = add i64 %i.akd, 1
  call void @_ZdlPvm(ptr noundef %i.aka, i64 noundef %i.ake) #33
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i

bb.me:                                            ; preds = %.noexc
  %i.akf = landingpad { ptr, i32 }
          cleanup
  %i.akg = load ptr, ptr %56, align 8, !tbaa !91, !noalias !1933 ; 2 uses
  %i.akh = getelementptr inbounds nuw i8, ptr %56, i64 16 ; 2 uses
  %i.aki = icmp eq ptr %i.akg, %i.akh
  br i1 %i.aki, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i: ; preds = %bb.me
  %i.akj = load i64, ptr %i.akh, align 8, !tbaa !39, !noalias !1933
  %i.akk = add i64 %i.akj, 1
  call void @_ZdlPvm(ptr noundef %i.akg, i64 noundef %i.akk) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i: ; preds = %bb.me, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #31, !noalias !1933
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %bb.md, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #31, !noalias !1933
  %i.akl = load ptr, ptr %62, align 8, !tbaa !91  ; 2 uses
  %i.akm = getelementptr inbounds nuw i8, ptr %62, i64 16 ; 2 uses
  %i.akn = icmp eq ptr %i.akl, %i.akm
  br i1 %i.akn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.ako = load i64, ptr %i.akm, align 8, !tbaa !39
  %i.akp = add i64 %i.ako, 1
  call void @_ZdlPvm(ptr noundef %i.akl, i64 noundef %i.akp) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #31
  br label %.critedge

bb.mf:                                            ; preds = %bb.mc
  %i.akq = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i, %bb.mf
  %eh.lpad-body = phi { ptr, i32 } [ %i.akq, %bb.mf ], [ %i.akf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i ]
  %i.akr = load ptr, ptr %62, align 8, !tbaa !91  ; 2 uses
  %i.aks = getelementptr inbounds nuw i8, ptr %62, i64 16 ; 2 uses
  %i.akt = icmp eq ptr %i.akr, %i.aks
  br i1 %i.akt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93: ; preds = %.body
  %i.aku = load i64, ptr %i.aks, align 8, !tbaa !39
  %i.akv = add i64 %i.aku, 1
  call void @_ZdlPvm(ptr noundef %i.akr, i64 noundef %i.akv) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #31
  br label %common.resume336

bb.mg:                                            ; preds = %bb.mb
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #31
  %i.akw = getelementptr inbounds nuw i8, ptr %63, i64 48
  %i.akx = getelementptr inbounds nuw i8, ptr %63, i64 104
  %i.aky = getelementptr inbounds nuw i8, ptr %63, i64 120 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %63, i8 0, i64 32, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.akw, i8 0, i64 56, i1 false)
  store ptr %i.aky, ptr %i.akx, align 8, !tbaa !33
  %i.akz = getelementptr inbounds nuw i8, ptr %63, i64 112
  store i64 0, ptr %i.akz, align 8, !tbaa !37
  store i8 0, ptr %i.aky, align 8, !tbaa !39
  %i.ala = getelementptr inbounds nuw i8, ptr %63, i64 136
  %i.alb = getelementptr inbounds nuw i8, ptr %63, i64 152 ; 2 uses
  store ptr %i.alb, ptr %i.ala, align 8, !tbaa !33
  %i.alc = getelementptr inbounds nuw i8, ptr %63, i64 144
  store i64 0, ptr %i.alc, align 8, !tbaa !37
  store i8 0, ptr %i.alb, align 8, !tbaa !39
  %i.ald = getelementptr inbounds nuw i8, ptr %63, i64 168
  store i32 -1, ptr %i.ald, align 8, !tbaa !467
  %i.ale = getelementptr inbounds nuw i8, ptr %63, i64 172
  store i32 -1, ptr %i.ale, align 4, !tbaa !471
  call void @llvm.lifetime.start.p0(ptr nonnull %64) #31
  %i.alf = load ptr, ptr %i.ajr, align 8, !tbaa !134 ; 2 uses
  %i.alg = getelementptr inbounds nuw i8, ptr %i.alf, i64 56
  %i.alh = load ptr, ptr %i.alg, align 8, !tbaa !136, !noalias !1938
  %.not165.a = icmp eq ptr %i.alh, null
  br i1 %.not165.a, label %bb.mh, label %bb.mi

bb.mh:                                            ; preds = %bb.mg
  invoke void @_ZN5arrow6Status8FromArgsIJRA35_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %64, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(35) @.str.83)
          to label %_ZN5arrow6StatusD2Ev.exit98 unwind label %bb.ml, !inline_history !1941

bb.mi:                                            ; preds = %bb.mg
  %i.ali = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.alj = load i64, ptr %i.ali, align 8, !tbaa !475, !noalias !1938 ; 2 uses
  %i.alk = add nsw i64 %i.alj, 1
  %i.all = getelementptr inbounds nuw i8, ptr %63, i64 40
  store i64 %i.alk, ptr %i.all, align 8, !tbaa !475, !noalias !1938
  %i.alm = icmp sgt i64 %i.alj, 62
  br i1 %i.alm, label %bb.mj, label %bb.mk

bb.mj:                                            ; preds = %bb.mi
  invoke void @_ZN5arrow6Status8FromArgsIJRA47_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %64, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(47) @.str.85)
          to label %_ZN5arrow6StatusD2Ev.exit98 unwind label %bb.ml, !inline_history !1941

bb.mk:                                            ; preds = %bb.mi
  store ptr %i.alf, ptr %63, align 8, !tbaa !484, !noalias !1938
  invoke fastcc void @_ZN5arrow12_GLOBAL__N_114SchemaImporter8DoImportEv(ptr dead_on_unwind noalias nonnull writable align 8 %64, ptr noundef nonnull align 8 dereferenceable(176) %63)
          to label %_ZN5arrow6StatusD2Ev.exit98 unwind label %bb.ml, !inline_history !1941

_ZN5arrow6StatusD2Ev.exit98:                      ; preds = %bb.mk, %bb.mj, %bb.mh
  %i.aln = load ptr, ptr %64, align 8, !tbaa !78  ; 2 uses
  store ptr %i.aln, ptr %0, align 8, !tbaa !78
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #31
  %i.alo = icmp eq ptr %i.aln, null
  br i1 %i.alo, label %_ZN5arrow6StatusD2Ev.exit102, label %.critedge73

bb.ml:                                            ; preds = %bb.mk, %bb.mj, %bb.mh
  %i.alp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #31
  br label %bb.na

_ZN5arrow6StatusD2Ev.exit102:                     ; preds = %_ZN5arrow6StatusD2Ev.exit98
  %i.alq = load ptr, ptr %1, align 8, !tbaa !484
  %i.alr = getelementptr inbounds nuw i8, ptr %i.alq, i64 24
  %i.als = load i64, ptr %i.alr, align 8, !tbaa !131
  %i.alt = trunc nuw i64 %i.als to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %65) #31
  %i.alu = getelementptr inbounds nuw i8, ptr %63, i64 72
  invoke void @_ZN5arrow10dictionaryERKSt10shared_ptrINS_8DataTypeEES4_b(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %65, ptr noundef nonnull align 8 dereferenceable(16) %i.ajt, ptr noundef nonnull align 8 dereferenceable(16) %i.alu, i1 noundef zeroext %i.alt)
          to label %bb.mm unwind label %bb.mz

bb.mm:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit102
  %i.alv = getelementptr inbounds nuw i8, ptr %65, i64 8
  %i.alw = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.alx = load <2 x ptr>, ptr %65, align 16, !tbaa !244
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %65, i8 0, i64 16, i1 false)
  %i.aly = load ptr, ptr %i.alw, align 8, !tbaa !163 ; 8 uses
  store <2 x ptr> %i.alx, ptr %i.ajt, align 8, !tbaa !244
  %.not.i.i.i.i103 = icmp eq ptr %i.aly, null
  br i1 %.not.i.i.i.i103, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSEOS2_.exit, label %bb.mn

bb.mn:                                            ; preds = %bb.mm
  %i.alz = getelementptr inbounds nuw i8, ptr %i.aly, i64 8 ; 4 uses
  %i.ama = load atomic i64, ptr %i.alz acquire, align 8 ; 2 uses
  %i.amb = icmp eq i64 %i.ama, 4294967297
  %i.amc = trunc i64 %i.ama to i32                ; 2 uses
  br i1 %i.amb, label %bb.mo, label %bb.mp

bb.mo:                                            ; preds = %bb.mn
  store i32 0, ptr %i.alz, align 8, !tbaa !164
  %i.amd = getelementptr inbounds nuw i8, ptr %i.aly, i64 12
  store i32 0, ptr %i.amd, align 4, !tbaa !166
  %i.ame = load ptr, ptr %i.aly, align 8, !tbaa !84
  %i.amf = getelementptr inbounds nuw i8, ptr %i.ame, i64 16
  %i.amg = load ptr, ptr %i.amf, align 8
  call void %i.amg(ptr noundef nonnull align 8 dereferenceable(16) %i.aly) #31, !inline_history !1942
  %i.amh = load ptr, ptr %i.aly, align 8, !tbaa !84
  %i.ami = getelementptr inbounds nuw i8, ptr %i.amh, i64 24
  %i.amj = load ptr, ptr %i.ami, align 8
  call void %i.amj(ptr noundef nonnull align 8 dereferenceable(16) %i.aly) #31, !inline_history !1942
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSEOS2_.exit

bb.mp:                                            ; preds = %bb.mn
  %i.amk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !39
  %.not.i.i.i.i.i104 = icmp eq i8 %i.amk, 0
  br i1 %.not.i.i.i.i.i104, label %bb.mr, label %bb.mq

bb.mq:                                            ; preds = %bb.mp
  %i.aml = add nsw i32 %i.amc, -1
  store i32 %i.aml, ptr %i.alz, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.mr:                                            ; preds = %bb.mp
  %i.amm = atomicrmw volatile add ptr %i.alz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.mr, %bb.mq
  %.0.i.i.i.i.i.i = phi i32 [ %i.amc, %bb.mq ], [ %i.amm, %bb.mr ]
  %i.amn = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.amn, label %bb.ms, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSEOS2_.exit, !prof !168

bb.ms:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aly) #31
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSEOS2_.exit

_ZNSt10shared_ptrIN5arrow8DataTypeEEaSEOS2_.exit: ; preds = %bb.mm, %bb.mo, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.ms
  %i.amo = load ptr, ptr %i.alv, align 8, !tbaa !163 ; 8 uses
  %.not.i.i = icmp eq ptr %i.amo, null
  br i1 %.not.i.i, label %.critedge73.thread, label %bb.mt

bb.mt:                                            ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSEOS2_.exit
  %i.amp = getelementptr inbounds nuw i8, ptr %i.amo, i64 8 ; 4 uses
  %i.amq = load atomic i64, ptr %i.amp acquire, align 8 ; 2 uses
  %i.amr = icmp eq i64 %i.amq, 4294967297
  %i.ams = trunc i64 %i.amq to i32                ; 2 uses
  br i1 %i.amr, label %bb.mu, label %bb.mv

bb.mu:                                            ; preds = %bb.mt
  store i32 0, ptr %i.amp, align 8, !tbaa !164
  %i.amt = getelementptr inbounds nuw i8, ptr %i.amo, i64 12
  store i32 0, ptr %i.amt, align 4, !tbaa !166
  %i.amu = load ptr, ptr %i.amo, align 8, !tbaa !84
  %i.amv = getelementptr inbounds nuw i8, ptr %i.amu, i64 16
  %i.amw = load ptr, ptr %i.amv, align 8
  call void %i.amw(ptr noundef nonnull align 8 dereferenceable(16) %i.amo) #31, !inline_history !489
  %i.amx = load ptr, ptr %i.amo, align 8, !tbaa !84
  %i.amy = getelementptr inbounds nuw i8, ptr %i.amx, i64 24
  %i.amz = load ptr, ptr %i.amy, align 8
  call void %i.amz(ptr noundef nonnull align 8 dereferenceable(16) %i.amo) #31, !inline_history !489
  br label %.critedge73.thread

bb.mv:                                            ; preds = %bb.mt
  %i.ana = load i8, ptr @__libc_single_threaded, align 1, !tbaa !39
  %.not.i.i.i = icmp eq i8 %i.ana, 0
  br i1 %.not.i.i.i, label %bb.mx, label %bb.mw

bb.mw:                                            ; preds = %bb.mv
  %i.anb = add nsw i32 %i.ams, -1
  store i32 %i.anb, ptr %i.amp, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.mx:                                            ; preds = %bb.mv
  %i.anc = atomicrmw volatile add ptr %i.amp, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.mx, %bb.mw
  %.0.i.i.i.i = phi i32 [ %i.ams, %bb.mw ], [ %i.anc, %bb.mx ]
  %i.and = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.and, label %bb.my, label %.critedge73.thread, !prof !168

bb.my:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.amo) #31
  br label %.critedge73.thread

.critedge73.thread:                               ; preds = %bb.my, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.mu, %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSEOS2_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #31
  call fastcc void @_ZN5arrow12_GLOBAL__N_114SchemaImporterD2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %63) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #31
  %.pre = load ptr, ptr %1, align 8, !tbaa !484
  br label %bb.nb

.critedge73:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit98
  call fastcc void @_ZN5arrow12_GLOBAL__N_114SchemaImporterD2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %63) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #31
  br label %.critedge

bb.mz:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit102
  %i.ane = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #31
  br label %bb.na

bb.na:                                            ; preds = %bb.mz, %bb.ml
  %.pn58 = phi { ptr, i32 } [ %i.ane, %bb.mz ], [ %i.alp, %bb.ml ]
  call fastcc void @_ZN5arrow12_GLOBAL__N_114SchemaImporterD2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %63) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #31
  br label %common.resume336

bb.nb:                                            ; preds = %.critedge73.thread, %bb.ma
  %i.anf = phi ptr [ %.pre, %.critedge73.thread ], [ %i.ajq, %bb.ma ]
  call void @llvm.lifetime.start.p0(ptr nonnull %66) #31
  %i.ang = getelementptr inbounds nuw i8, ptr %i.anf, i64 16
  %i.anh = load ptr, ptr %i.ang, align 8, !tbaa !130
  call fastcc void @_ZN5arrow12_GLOBAL__N_114DecodeMetadataEPKc(ptr dead_on_unwind noalias writable align 8 %66, ptr noundef %i.anh)
  %.val81 = load ptr, ptr %66, align 8, !tbaa !78
  %i.ani = icmp eq ptr %.val81, null
  br i1 %i.ani, label %bb.ne, label %bb.nc, !prof !90

bb.nc:                                            ; preds = %bb.nb
  store ptr null, ptr %0, align 8, !tbaa !78
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %66)
          to label %_ZN5arrow6StatusC2ERKS0_.exit unwind label %bb.nd

bb.nd:                                            ; preds = %bb.nc
  %i.anj = landingpad { ptr, i32 }
          cleanup
  br label %bb.qg

bb.ne:                                            ; preds = %bb.nb
  call void @llvm.lifetime.start.p0(ptr nonnull %67) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !1943)
  call void @llvm.experimental.noalias.scope.decl(metadata !1946)
  %i.ank = getelementptr inbounds nuw i8, ptr %66, i64 8 ; 2 uses
  %i.anl = load ptr, ptr %i.ank, align 8, !tbaa !1660, !noalias !1949 ; 2 uses
  store ptr %i.anl, ptr %67, align 8, !tbaa !1660, !alias.scope !1949
  %i.anm = getelementptr inbounds nuw i8, ptr %67, i64 8 ; 2 uses
  %i.ann = getelementptr inbounds nuw i8, ptr %66, i64 16 ; 2 uses
  %i.ano = load ptr, ptr %i.ann, align 8, !tbaa !163, !noalias !1949 ; 2 uses
  store ptr null, ptr %i.ann, align 8, !tbaa !163, !noalias !1949
  store ptr %i.ano, ptr %i.anm, align 8, !tbaa !163, !alias.scope !1949
  store ptr null, ptr %i.ank, align 8, !tbaa !1660, !noalias !1949
  %i.anp = getelementptr inbounds nuw i8, ptr %67, i64 16 ; 7 uses
  %i.anq = getelementptr inbounds nuw i8, ptr %66, i64 24 ; 2 uses
  %i.anr = getelementptr inbounds nuw i8, ptr %67, i64 32 ; 11 uses
  store ptr %i.anr, ptr %i.anp, align 8, !tbaa !33, !alias.scope !1949
  %i.ans = load ptr, ptr %i.anq, align 8, !tbaa !91, !noalias !1949 ; 2 uses
  %i.ant = getelementptr inbounds nuw i8, ptr %66, i64 40 ; 5 uses
  %i.anu = icmp eq ptr %i.ans, %i.ant
  br i1 %i.anu, label %bb.nf, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i106

bb.nf:                                            ; preds = %bb.ne
  %i.anv = getelementptr inbounds nuw i8, ptr %66, i64 32
  %i.anw = load i64, ptr %i.anv, align 8, !tbaa !37, !noalias !1949 ; 3 uses
  %i.anx = icmp ult i64 %i.anw, 16
  call void @llvm.assume(i1 %i.anx)
  %i.any = add nuw nsw i64 %i.anw, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.anr, ptr noundef nonnull align 8 dereferenceable(1) %i.ant, i64 %i.any, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i106: ; preds = %bb.ne
  store ptr %i.ans, ptr %i.anp, align 8, !tbaa !91, !alias.scope !1949
  %i.anz = load i64, ptr %i.ant, align 8, !tbaa !39, !noalias !1949
  store i64 %i.anz, ptr %i.anr, align 8, !tbaa !39, !alias.scope !1949
  %.phi.trans.insert.i.i107 = getelementptr inbounds nuw i8, ptr %66, i64 32
  %.pre.i.i108 = load i64, ptr %.phi.trans.insert.i.i107, align 8, !tbaa !37, !noalias !1949
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i106, %bb.nf
  %i.aoa = phi i64 [ %.pre.i.i108, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i106 ], [ %i.anw, %bb.nf ]
  %i.aob = getelementptr inbounds nuw i8, ptr %66, i64 32
  %i.aoc = getelementptr inbounds nuw i8, ptr %67, i64 24 ; 4 uses
  store i64 %i.aoa, ptr %i.aoc, align 8, !tbaa !37, !alias.scope !1949
  store ptr %i.ant, ptr %i.anq, align 8, !tbaa !91, !noalias !1949
  store i64 0, ptr %i.aob, align 8, !tbaa !37, !noalias !1949
  store i8 0, ptr %i.ant, align 8, !tbaa !39, !noalias !1949
  %i.aod = getelementptr inbounds nuw i8, ptr %67, i64 48 ; 7 uses
end_hunk_1
