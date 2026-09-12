Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/serde_derive-4022b493783dff52.serde_derive.5d68b2a16a0eacc4-cgu.04?download=true
inline.NumInlined: 81
inline.NumDeleted: 57
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RINvMsN_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtCsfq6Q4Do6HaX_3syn8lifetime8LifetimeNtNtB8_7set_val9SetValZSTNtB1m_4LeafENtB1m_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB3N_11VacantEntryB1C_B2g_E12insert_entry0ECs81dfN7NJsQO_12serde_derive:bb.a
bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad, %bb.aa
  %.sroa.06.0.i = phi i64 [ 5, %bb.af ], [ 6, %bb.ae ], [ 4, %bb.aa ], [ 5, %bb.ad ] ; 5 uses
  %.sroa.5.0.i23 = phi i64 [ 0, %bb.af ], [ %i.dm, %bb.ae ], [ %i.cb, %bb.aa ], [ 5, %bb.ad ] ; 6 uses
  %.sroa.03.0.i = phi i1 [ true, %bb.af ], [ true, %bb.ae ], [ false, %bb.aa ], [ false, %bb.ad ]
  call void @llvm.experimental.noalias.scope.decl(metadata !29)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !28
  %i.dn = invoke align 8 ptr @_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtCsfq6Q4Do6HaX_3syn8lifetime8LifetimeNtNtBK_7set_val9SetValZSTEE13new_uninit_inCs81dfN7NJsQO_12serde_derive()
          to label %.noexc12.i unwind label %.body.thread43.i.loopexit, !noalias !28 ; 10 uses

.noexc12.i:                                       ; preds = %bb.ag
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 352
  store ptr null, ptr %i.do, align 8, !noalias !30
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 362 ; 3 uses
  store i16 0, ptr %i.dp, align 2, !noalias !30
  store ptr %i.dn, ptr %i.f, align 8, !noalias !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !30
  %i.dq = load i16, ptr %i.cc, align 2, !noalias !31
  %i.dr = zext i16 %i.dq to i64
  %i.ds = xor i64 %.sroa.06.0.i, -1
  %i.dt = add nsw i64 %i.dr, %i.ds                ; 4 uses
  %i.du = trunc i64 %i.dt to i16
  store i16 %i.du, ptr %i.dp, align 2, !noalias !31
  %i.dv = getelementptr inbounds nuw [32 x i8], ptr %.sroa.046.0.copyload, i64 %.sroa.06.0.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.dv, i64 32, i1 false), !noalias !31
  %i.dw = icmp ult i64 %i.dt, 12
  br i1 %i.dw, label %bb.am, label %bb.ah

bb.ah:                                            ; preds = %.noexc12.i
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 0, i64 %i.dt, i64 11, ptr nonnull align 8 @11) #15
          to label %bb.aj unwind label %bb.ai, !noalias !31

bb.ai:                                            ; preds = %bb.ah
  %i.dx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsfq6Q4Do6HaX_3syn8lifetime8LifetimeEBF_(ptr nonnull align 8 %i.d) #16
          to label %.thread.i.i24 unwind label %bb.ak, !noalias !31

bb.aj:                                            ; preds = %bb.ah
  unreachable

bb.ak:                                            ; preds = %bb.ai
  %i.dy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #17, !noalias !31
  unreachable

bb.al:                                            ; preds = %.loopexit.split-lp.i.i
  br i1 %.sroa.0.1.i.i, label %.thread.i.i24, label %.body.thread.i

bb.am:                                            ; preds = %.noexc12.i
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dv, i64 32
  %i.ea = shl nuw nsw i64 %i.dt, 5
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.dn, ptr nonnull readonly align 8 %i.dz, i64 %i.ea, i1 false), !noalias !31
  %i.eb = trunc nuw nsw i64 %.sroa.06.0.i to i16
  store i16 %i.eb, ptr %i.cc, align 2, !noalias !31
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !noalias !30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !30
  %i.ec = load i16, ptr %i.dp, align 2, !noalias !30 ; 2 uses
  %i.ed = zext i16 %i.ec to i64                   ; 2 uses
  %i.ee = add nuw nsw i64 %i.ed, 1                ; 3 uses
  %i.ef = icmp ult i16 %i.ec, 12
  br i1 %i.ef, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %bb.am
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dn, i64 368 ; 2 uses
  %i.eh = zext i16 %i.cd to i64
  %i.ei = sub nuw nsw i64 %i.eh, %.sroa.06.0.i
  %i.ej = icmp eq i64 %i.ei, %i.ee
  br i1 %i.ej, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr nonnull @6, i64 40, ptr nonnull align 8 @7) #15
          to label %.noexc.i.i unwind label %.loopexit.split-lp.i.i.loopexit.split-lp, !noalias !30

.noexc.i.i:                                       ; preds = %bb.ao
  unreachable

bb.ap:                                            ; preds = %bb.am
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 0, i64 %i.ee, i64 12, ptr nonnull align 8 @5) #15
          to label %bb.at unwind label %.loopexit.split-lp.i.i.loopexit.split-lp, !noalias !30

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.i.i.loopexit:                  ; preds = %bb.ar
  %lpad.loopexit88 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.i.i.loopexit.split-lp:         ; preds = %bb.ao, %bb.ap
  %lpad.loopexit.split-lp89 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.i.i:                           ; preds = %.loopexit.split-lp.i.i.loopexit, %.loopexit.split-lp.i.i.loopexit.split-lp, %.loopexit.i.i
  %.sroa.0.1.i.i = phi i1 [ false, %.loopexit.i.i ], [ false, %.loopexit.split-lp.i.i.loopexit ], [ true, %.loopexit.split-lp.i.i.loopexit.split-lp ]
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit88, %.loopexit.split-lp.i.i.loopexit ], [ %lpad.loopexit.split-lp89, %.loopexit.split-lp.i.i.loopexit.split-lp ] ; 2 uses
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCsfq6Q4Do6HaX_3syn8lifetime8LifetimeNtNtNtNtCscdodAO9FK5_5alloc11collections5btree7set_val9SetValZSTEECs81dfN7NJsQO_12serde_derive(ptr nonnull align 8 %i.e) #16
          to label %bb.al unwind label %bb.au, !noalias !30

bb.aq:                                            ; preds = %bb.an
  %i.ek = getelementptr i8, ptr %.sroa.046.0.copyload, i64 376
  %i.el = getelementptr [8 x i8], ptr %i.ek, i64 %.sroa.06.0.i
  %i.em = shl nuw nsw i64 %i.ee, 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.eg, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.el, i64 %i.em, i1 false), !noalias !30
  %.not.i11.i = icmp eq i64 %i.by, 0
  br i1 %.not.i11.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !30
  store i64 0, ptr %i.c, align 8, !noalias !30
  store i64 %i.ed, ptr %.sroa.23.0..sroa_idx.i.i.i, align 8, !noalias !30
  store i8 0, ptr %.sroa.3.0..sroa_idx.i.i.i, align 8, !noalias !30
  %i.en = invoke { i64, i64 } @_RNvXsd_NtNtCs4NRVxsYgnAr_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivejENtNtNtB7_6traits8iterator8Iterator4nextCs81dfN7NJsQO_12serde_derive(ptr nonnull align 8 %i.c)
          to label %.noexc5.i.i unwind label %.loopexit.split-lp.i.i.loopexit, !noalias !30 ; 2 uses

.noexc5.i.i:                                      ; preds = %bb.ar
  %i.eo = extractvalue { i64, i64 } %i.en, 0
  %i.ep = trunc nuw i64 %i.eo to i1
  br i1 %i.ep, label %.lr.ph.i.i.i.i, label %.loopexit48.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc5.i.i, %.noexc6.i.i
  %i.eq = phi { i64, i64 } [ %i.ex, %.noexc6.i.i ], [ %i.en, %.noexc5.i.i ]
  %i.er = extractvalue { i64, i64 } %i.eq, 1      ; 2 uses
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %i.er
  %i.et = load ptr, ptr %i.es, align 8, !noalias !30 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 352
  store ptr %i.dn, ptr %i.eu, align 8, !noalias !30
  %i.ev = trunc i64 %i.er to i16
  %i.ew = getelementptr inbounds nuw i8, ptr %i.et, i64 360
  store i16 %i.ev, ptr %i.ew, align 8, !noalias !30
  %i.ex = invoke { i64, i64 } @_RNvXsd_NtNtCs4NRVxsYgnAr_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivejENtNtNtB7_6traits8iterator8Iterator4nextCs81dfN7NJsQO_12serde_derive(ptr nonnull align 8 %i.c)
          to label %.noexc6.i.i unwind label %.loopexit.i.i, !noalias !30 ; 2 uses

.noexc6.i.i:                                      ; preds = %.lr.ph.i.i.i.i
  %i.ey = extractvalue { i64, i64 } %i.ex, 0
  %i.ez = trunc nuw i64 %i.ey to i1
  br i1 %i.ez, label %.lr.ph.i.i.i.i, label %.loopexit48.i

bb.as:                                            ; preds = %bb.aq
  call void @_RNvNvMse_NtNtCs4NRVxsYgnAr_4core3num7nonzeroINtB7_7NonZeropE13new_unchecked18precondition_checkCs81dfN7NJsQO_12serde_derive(ptr nonnull align 8 @4) #18, !noalias !30
  unreachable

bb.at:                                            ; preds = %bb.ap
  unreachable

bb.au:                                            ; preds = %.thread.i.i24, %.loopexit.split-lp.i.i
  %i.fa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #17, !noalias !30
  unreachable

.thread.i.i24:                                    ; preds = %bb.al, %bb.ai
  %.pn10.i.i = phi { ptr, i32 } [ %lpad.phi.i.i, %bb.al ], [ %i.dx, %bb.ai ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxINtNtNtNtBG_11collections5btree4node12InternalNodeNtNtCsfq6Q4Do6HaX_3syn8lifetime8LifetimeNtNtB1e_7set_val9SetValZSTEEECs81dfN7NJsQO_12serde_derive(ptr nonnull align 8 %i.f) #16
          to label %.body.thread.i unwind label %bb.au, !noalias !30

.loopexit48.i:                                    ; preds = %.noexc6.i.i, %.noexc5.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.br, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false), !noalias !28
  store ptr %.sroa.046.0.copyload, ptr %i.i, align 8, !alias.scope !29, !noalias !28
  store i64 %i.by, ptr %i.bs, align 8, !alias.scope !29, !noalias !28
  store ptr %i.dn, ptr %i.bt, align 8, !alias.scope !29, !noalias !28
  store i64 %i.by, ptr %i.bu, align 8, !alias.scope !29, !noalias !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !28
  %spec.select.i25 = select i1 %.sroa.03.0.i, ptr %i.dn, ptr %.sroa.046.0.copyload ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.p, i64 32, i1 false), !noalias !28
  %i.fb = getelementptr inbounds nuw i8, ptr %spec.select.i25, i64 362 ; 2 uses
  %i.fc = load i16, ptr %i.fb, align 2, !noalias !28 ; 2 uses
  %i.fd = zext i16 %i.fc to i64                   ; 4 uses
  %i.fe = add i16 %i.fc, 1
  %i.ff = add nsw i64 %.sroa.5.0.i23, 1           ; 5 uses
  %.not.i13.i = icmp ugt i64 %i.ff, %i.fd
  br i1 %.not.i13.i, label %_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree4node12slice_insertNtNtCsfq6Q4Do6HaX_3syn8lifetime8LifetimeECs81dfN7NJsQO_12serde_derive.exit.i14.i, label %bb.av

bb.av:                                            ; preds = %.loopexit48.i
  %i.fg = getelementptr inbounds nuw [32 x i8], ptr %spec.select.i25, i64 %.sroa.5.0.i23
  %i.fh = getelementptr inbounds nuw [32 x i8], ptr %spec.select.i25, i64 %i.ff
  %i.fi = sub nsw i64 %i.fd, %.sroa.5.0.i23
  %i.fj = shl nuw nsw i64 %i.fi, 5
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.fh, ptr align 8 %i.fg, i64 %i.fj, i1 false), !noalias !28
  br label %_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree4node12slice_insertNtNtCsfq6Q4Do6HaX_3syn8lifetime8LifetimeECs81dfN7NJsQO_12serde_derive.exit.i14.i

_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree4node12slice_insertNtNtCsfq6Q4Do6HaX_3syn8lifetime8LifetimeECs81dfN7NJsQO_12serde_derive.exit.i14.i: ; preds = %bb.av, %.loopexit48.i
  %i.fk = getelementptr inbounds nuw [32 x i8], ptr %spec.select.i25, i64 %.sroa.5.0.i23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.fk, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.h, i64 32, i1 false), !noalias !28
  %i.fl = add nuw nsw i64 %i.fd, 2                ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %spec.select.i25, i64 368 ; 4 uses
  %i.fn = add nsw i64 %.sroa.5.0.i23, 2           ; 2 uses
  %i.fo = icmp ugt i64 %i.fl, %i.fn
  br i1 %i.fo, label %bb.aw, label %_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree4node12slice_insertINtNtNtCs4NRVxsYgnAr_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtCsfq6Q4Do6HaX_3syn8lifetime8LifetimeNtNtB4_7set_val9SetValZSTEEECs81dfN7NJsQO_12serde_derive.exit.i15.i

bb.aw:                                            ; preds = %_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree4node12slice_insertNtNtCsfq6Q4Do6HaX_3syn8lifetime8LifetimeECs81dfN7NJsQO_12serde_derive.exit.i14.i
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %i.ff
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %i.fn
  %i.fr = sub nsw i64 %i.fd, %.sroa.5.0.i23
  %i.fs = shl nuw nsw i64 %i.fr, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fq, ptr nonnull align 8 %i.fp, i64 %i.fs, i1 false), !noalias !28
  br label %_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree4node12slice_insertINtNtNtCs4NRVxsYgnAr_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtCsfq6Q4Do6HaX_3syn8lifetime8LifetimeNtNtB4_7set_val9SetValZSTEEECs81dfN7NJsQO_12serde_derive.exit.i15.i

_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree4node12slice_insertINtNtNtCs4NRVxsYgnAr_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtCsfq6Q4Do6HaX_3syn8lifetime8LifetimeNtNtB4_7set_val9SetValZSTEEECs81dfN7NJsQO_12serde_derive.exit.i15.i: ; preds = %bb.aw, %_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree4node12slice_insertNtNtCsfq6Q4Do6HaX_3syn8lifetime8LifetimeECs81dfN7NJsQO_12serde_derive.exit.i14.i
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %i.ff
  store ptr %.sroa.348.0.copyload239267, ptr %i.ft, align 8, !noalias !28
  store i16 %i.fe, ptr %i.fb, align 2, !noalias !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !28
  store i64 %i.ff, ptr %i.b, align 8, !noalias !28
  store i64 %i.fl, ptr %i.bv, align 8, !noalias !28
  %i.fu = invoke { i64, i64 } @_RNvXs4_NtNtCs4NRVxsYgnAr_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtNtNtB7_6traits8iterator8Iterator4nextCs81dfN7NJsQO_12serde_derive(ptr nonnull align 8 %i.b)
          to label %.noexc17.i unwind label %.loopexit.split-lp.i, !noalias !28 ; 2 uses

.noexc17.i:                                       ; preds = %_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree4node12slice_insertINtNtNtCs4NRVxsYgnAr_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtCsfq6Q4Do6HaX_3syn8lifetime8LifetimeNtNtB4_7set_val9SetValZSTEEECs81dfN7NJsQO_12serde_derive.exit.i15.i
  %i.fv = extractvalue { i64, i64 } %i.fu, 0
  %i.fw = trunc nuw i64 %i.fv to i1
  br i1 %i.fw, label %.lr.ph.i.i16.i, label %.loopexit

.lr.ph.i.i16.i:                                   ; preds = %.noexc17.i, %.noexc18.i
  %i.fx = phi { i64, i64 } [ %i.ge, %.noexc18.i ], [ %i.fu, %.noexc17.i ]
  %i.fy = extractvalue { i64, i64 } %i.fx, 1      ; 2 uses
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %i.fy
  %i.ga = load ptr, ptr %i.fz, align 8, !noalias !28 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 352
  store ptr %spec.select.i25, ptr %i.gb, align 8, !noalias !28
  %i.gc = trunc i64 %i.fy to i16
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ga, i64 360
  store i16 %i.gc, ptr %i.gd, align 8, !noalias !28
  %i.ge = invoke { i64, i64 } @_RNvXs4_NtNtCs4NRVxsYgnAr_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtNtNtB7_6traits8iterator8Iterator4nextCs81dfN7NJsQO_12serde_derive(ptr nonnull align 8 %i.b)
          to label %.noexc18.i unwind label %.loopexit46.i, !noalias !28 ; 2 uses

.noexc18.i:                                       ; preds = %.lr.ph.i.i16.i
  %i.gf = extractvalue { i64, i64 } %i.ge, 0
  %i.gg = trunc nuw i64 %i.gf to i1
  br i1 %i.gg, label %.lr.ph.i.i16.i, label %.loopexit

.loopexit46.i:                                    ; preds = %.lr.ph.i.i16.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

.loopexit.split-lp.i:                             ; preds = %_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree4node12slice_insertINtNtNtCs4NRVxsYgnAr_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtCsfq6Q4Do6HaX_3syn8lifetime8LifetimeNtNtB4_7set_val9SetValZSTEEECs81dfN7NJsQO_12serde_derive.exit.i15.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.ax:                                            ; preds = %.loopexit.split-lp.i, %.loopexit46.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit46.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCscdodAO9FK5_5alloc11collections5btree4node11SplitResultNtNtCsfq6Q4Do6HaX_3syn8lifetime8LifetimeNtNtBG_7set_val9SetValZSTNtNtBE_6marker8InternalEECs81dfN7NJsQO_12serde_derive(ptr nonnull align 8 %i.i) #16
          to label %.body unwind label %bb.ay, !noalias !28

bb.ay:                                            ; preds = %.body.thread.i, %bb.ax
  %i.gh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #17, !noalias !28
  unreachable

.thread81:                                        ; preds = %.lr.ph.i.i.i, %_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree4node12slice_insertINtNtNtCs4NRVxsYgnAr_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtCsfq6Q4Do6HaX_3syn8lifetime8LifetimeNtNtB4_7set_val9SetValZSTEEECs81dfN7NJsQO_12serde_derive.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %.loopexit91

.body.thread43.i.loopexit:                        ; preds = %bb.ag
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i

.body.thread43.i.loopexit.split-lp:               ; preds = %bb.x
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i

.body.thread.i:                                   ; preds = %.body.thread43.i.loopexit, %.body.thread43.i.loopexit.split-lp, %.thread.i.i24, %bb.al
  %.pn38.i = phi { ptr, i32 } [ %.pn10.i.i, %.thread.i.i24 ], [ %lpad.phi.i.i, %bb.al ], [ %lpad.loopexit, %.body.thread43.i.loopexit ], [ %lpad.loopexit.split-lp, %.body.thread43.i.loopexit.split-lp ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsfq6Q4Do6HaX_3syn8lifetime8LifetimeEBF_(ptr nonnull align 8 %i.p) #16
          to label %.body unwind label %bb.ay, !noalias !28

.loopexit:                                        ; preds = %.noexc18.i, %.noexc17.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.550, ptr noundef nonnull align 8 dereferenceable(16) %i.br, i64 16, i1 false)
  %.sroa.651.0.copyload = load i8, ptr %.sroa.651.0..sroa_idx, align 8 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.852, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.852.0..sroa_idx, i64 15, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %.not20 = icmp eq i8 %.sroa.651.0.copyload, -1
  br i1 %.not20, label %.loopexit91, label %bb.az

bb.az:                                            ; preds = %.loopexit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.60, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.550, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.66, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.852, i64 15, i1 false)
  %i.gi = getelementptr inbounds nuw i8, ptr %.sroa.046.0.copyload, i64 352
  %i.gj = load ptr, ptr %i.gi, align 8, !noalias !27 ; 2 uses
  %.not.i = icmp eq ptr %i.gj, null
  br i1 %.not.i, label %._crit_edge, label %bb.v

.loopexit91:                                      ; preds = %.loopexit, %.thread81, %bb.t, %.thread, %._crit_edge
  %spec.select.i.sink = phi ptr [ %spec.select.i, %bb.t ], [ %spec.select.i, %._crit_edge ], [ %i.bk, %.thread ], [ %spec.select.i, %.thread81 ], [ %spec.select.i, %.loopexit ]
  %spec.select35.i.sink = phi i64 [ %spec.select35.i, %bb.t ], [ %spec.select35.i, %._crit_edge ], [ %i.bm, %.thread ], [ %spec.select35.i, %.thread81 ], [ %spec.select35.i, %.loopexit ]
  %.sroa.5.0.i.sink = phi i64 [ %.sroa.5.0.i, %bb.t ], [ %.sroa.5.0.i, %._crit_edge ], [ %i.aa, %.thread ], [ %.sroa.5.0.i, %.thread81 ], [ %.sroa.5.0.i, %.loopexit ]
  store ptr %spec.select.i.sink, ptr %0, align 8
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %spec.select35.i.sink, ptr %i.gk, align 8
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5.0.i.sink, ptr %i.gl, align 8
  ret void

bb.ba:                                            ; preds = %bb.v
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsfq6Q4Do6HaX_3syn8lifetime8LifetimeEBF_(ptr nonnull align 8 %i.p) #16
          to label %.body unwind label %bb.bb

bb.bb:                                            ; preds = %bb.bc, %bb.ba
  %i.gm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.bc:                                            ; preds = %bb.a
  %i.gn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsfq6Q4Do6HaX_3syn8lifetime8LifetimeEBF_(ptr nonnull align 8 %i.q) #16
          to label %.body unwind label %bb.bb

.body:                                            ; preds = %bb.ba, %bb.ax, %.body.thread.i, %bb.s, %bb.bc
  %.pn.pn = phi { ptr, i32 } [ %.pn.ph.i, %bb.s ], [ %i.gn, %bb.bc ], [ %lpad.phi.i, %bb.ax ], [ %lpad.thr_comm.split-lp, %bb.ba ], [ %.pn38.i, %.body.thread.i ]
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsN_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCs81dfN7NJsQO_12serde_derive9internals4name4NameNtNtB8_7set_val9SetValZSTNtB1m_4LeafENtB1m_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB41_11VacantEntryB1C_B2u_E12insert_entry0EB1I_(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1, ptr nofree readonly align 8 captures(none) %2, ptr align 8 %3, ptr %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [32 x i8], align 8                ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 5 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 6 uses
  %i.h = alloca [32 x i8], align 8                ; 5 uses
  %i.i = alloca [64 x i8], align 8                ; 11 uses
  %i.j = alloca [32 x i8], align 8                ; 5 uses
  %i.k = alloca [32 x i8], align 8                ; 6 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %.sroa.0.i.sroa.4 = alloca [24 x i8], align 8   ; 5 uses
  %i.m = alloca [32 x i8], align 8                ; 5 uses
  %i.n = alloca [32 x i8], align 8                ; 5 uses
  %i.o = alloca [64 x i8], align 8                ; 7 uses
  %i.p = alloca [32 x i8], align 8                ; 7 uses
  %.sroa.450 = alloca [24 x i8], align 8          ; 2 uses
  %i.q = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.4 = alloca [24 x i8], align 8            ; 2 uses
  %.sroa.4434 = alloca [24 x i8], align 8         ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  invoke void @_RNvXs2_NtCscdodAO9FK5_5alloc5allocNtB5_6GlobalNtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCs81dfN7NJsQO_12serde_derive(ptr nonnull %i.a)
          to label %bb.b unwind label %bb.bc

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.sroa.4)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.r = load ptr, ptr %1, align 8, !noalias !50  ; 9 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 362 ; 4 uses
  %i.t = load i16, ptr %i.s, align 2, !noalias !50 ; 3 uses
  %i.u = icmp ugt i16 %i.t, 10
  br i1 %i.u, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.w = load i64, ptr %i.v, align 8, !noalias !50 ; 6 uses
  %i.x = icmp ult i64 %i.w, 5
  br i1 %i.x, label %bb.i, label %bb.f

bb.d:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %i.q, i64 32, i1 false), !noalias !50
  %i.y = zext nneg i16 %i.t to i64                ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !noalias !51 ; 5 uses
  %i.ab = add i64 %i.aa, 1                        ; 2 uses
  %.not.i.i = icmp ugt i64 %i.ab, %i.y
  br i1 %.not.i.i, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw [32 x i8], ptr %i.r, i64 %i.aa
  %i.ad = getelementptr inbounds nuw [32 x i8], ptr %i.r, i64 %i.ab
  %i.ae = sub nsw i64 %i.y, %i.aa
  %i.af = shl nsw i64 %i.ae, 5
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ad, ptr align 8 %i.ac, i64 %i.af, i1 false), !noalias !51
  br label %.thread

bb.f:                                             ; preds = %bb.c
  switch i64 %i.w, label %bb.g [
    i64 5, label %bb.i
    i64 6, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
end_hunk_0
begin_hunk_1_@_RINvMsN_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCs81dfN7NJsQO_12serde_derive9internals4name4NameNtNtB8_7set_val9SetValZSTNtB1m_4LeafENtB1m_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB41_11VacantEntryB1C_B2u_E12insert_entry0EB1I_:bb.a
bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad, %bb.aa
  %.sroa.06.0.i = phi i64 [ 5, %bb.af ], [ 6, %bb.ae ], [ 4, %bb.aa ], [ 5, %bb.ad ] ; 5 uses
  %.sroa.5.0.i23 = phi i64 [ 0, %bb.af ], [ %i.dm, %bb.ae ], [ %i.cb, %bb.aa ], [ 5, %bb.ad ] ; 6 uses
  %.sroa.03.0.i = phi i1 [ true, %bb.af ], [ true, %bb.ae ], [ false, %bb.aa ], [ false, %bb.ad ]
  call void @llvm.experimental.noalias.scope.decl(metadata !57)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !56
  %i.dn = invoke align 8 ptr @_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtNtCs81dfN7NJsQO_12serde_derive9internals4name4NameNtNtBK_7set_val9SetValZSTEE13new_uninit_inB1z_()
          to label %.noexc12.i unwind label %.body.thread43.i.loopexit, !noalias !56 ; 10 uses

.noexc12.i:                                       ; preds = %bb.ag
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 352
  store ptr null, ptr %i.do, align 8, !noalias !58
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 362 ; 3 uses
  store i16 0, ptr %i.dp, align 2, !noalias !58
  store ptr %i.dn, ptr %i.f, align 8, !noalias !58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !58
  %i.dq = load i16, ptr %i.cc, align 2, !noalias !59
  %i.dr = zext i16 %i.dq to i64
  %i.ds = xor i64 %.sroa.06.0.i, -1
  %i.dt = add nsw i64 %i.dr, %i.ds                ; 4 uses
  %i.du = trunc i64 %i.dt to i16
  store i16 %i.du, ptr %i.dp, align 2, !noalias !59
  %i.dv = getelementptr inbounds nuw [32 x i8], ptr %.sroa.452.0.copyload, i64 %.sroa.06.0.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.dv, i64 32, i1 false), !noalias !59
  %i.dw = icmp ult i64 %i.dt, 12
  br i1 %i.dw, label %bb.am, label %bb.ah

bb.ah:                                            ; preds = %.noexc12.i
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 0, i64 %i.dt, i64 11, ptr nonnull align 8 @11) #15
          to label %bb.aj unwind label %bb.ai, !noalias !59

bb.ai:                                            ; preds = %bb.ah
  %i.dx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs81dfN7NJsQO_12serde_derive9internals4name4NameEBH_(ptr nonnull align 8 %i.d) #16
          to label %.thread.i.i24 unwind label %bb.ak, !noalias !59

bb.aj:                                            ; preds = %bb.ah
  unreachable

bb.ak:                                            ; preds = %bb.ai
  %i.dy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #17, !noalias !59
  unreachable

bb.al:                                            ; preds = %.loopexit.split-lp.i.i
  br i1 %.sroa.0.1.i.i, label %.thread.i.i24, label %.body.thread.i

bb.am:                                            ; preds = %.noexc12.i
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dv, i64 32
  %i.ea = shl nuw nsw i64 %i.dt, 5
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.dn, ptr nonnull readonly align 8 %i.dz, i64 %i.ea, i1 false), !noalias !59
  %i.eb = trunc nuw nsw i64 %.sroa.06.0.i to i16
  store i16 %i.eb, ptr %i.cc, align 2, !noalias !59
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !noalias !58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !58
  %i.ec = load i16, ptr %i.dp, align 2, !noalias !58 ; 2 uses
  %i.ed = zext i16 %i.ec to i64                   ; 2 uses
  %i.ee = add nuw nsw i64 %i.ed, 1                ; 3 uses
  %i.ef = icmp ult i16 %i.ec, 12
  br i1 %i.ef, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %bb.am
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dn, i64 368 ; 2 uses
  %i.eh = zext i16 %i.cd to i64
  %i.ei = sub nuw nsw i64 %i.eh, %.sroa.06.0.i
  %i.ej = icmp eq i64 %i.ei, %i.ee
  br i1 %i.ej, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr nonnull @6, i64 40, ptr nonnull align 8 @7) #15
          to label %.noexc.i.i unwind label %.loopexit.split-lp.i.i.loopexit.split-lp, !noalias !58

.noexc.i.i:                                       ; preds = %bb.ao
  unreachable

bb.ap:                                            ; preds = %bb.am
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 0, i64 %i.ee, i64 12, ptr nonnull align 8 @5) #15
          to label %bb.at unwind label %.loopexit.split-lp.i.i.loopexit.split-lp, !noalias !58

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.i.i.loopexit:                  ; preds = %bb.ar
  %lpad.loopexit87 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.i.i.loopexit.split-lp:         ; preds = %bb.ao, %bb.ap
  %lpad.loopexit.split-lp88 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.i.i:                           ; preds = %.loopexit.split-lp.i.i.loopexit, %.loopexit.split-lp.i.i.loopexit.split-lp, %.loopexit.i.i
  %.sroa.0.1.i.i = phi i1 [ false, %.loopexit.i.i ], [ false, %.loopexit.split-lp.i.i.loopexit ], [ true, %.loopexit.split-lp.i.i.loopexit.split-lp ]
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit87, %.loopexit.split-lp.i.i.loopexit ], [ %lpad.loopexit.split-lp88, %.loopexit.split-lp.i.i.loopexit.split-lp ] ; 2 uses
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtNtCs81dfN7NJsQO_12serde_derive9internals4name4NameNtNtNtNtCscdodAO9FK5_5alloc11collections5btree7set_val9SetValZSTEEBI_(ptr nonnull align 8 %i.e) #16
          to label %bb.al unwind label %bb.au, !noalias !58

bb.aq:                                            ; preds = %bb.an
  %i.ek = getelementptr i8, ptr %.sroa.452.0.copyload, i64 376
  %i.el = getelementptr [8 x i8], ptr %i.ek, i64 %.sroa.06.0.i
  %i.em = shl nuw nsw i64 %i.ee, 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.eg, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.el, i64 %i.em, i1 false), !noalias !58
  %.not.i11.i = icmp eq i64 %i.by, 0
  br i1 %.not.i11.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !58
  store i64 0, ptr %i.c, align 8, !noalias !58
  store i64 %i.ed, ptr %.sroa.23.0..sroa_idx.i.i.i, align 8, !noalias !58
  store i8 0, ptr %.sroa.3.0..sroa_idx.i.i.i, align 8, !noalias !58
  %i.en = invoke { i64, i64 } @_RNvXsd_NtNtCs4NRVxsYgnAr_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivejENtNtNtB7_6traits8iterator8Iterator4nextCs81dfN7NJsQO_12serde_derive(ptr nonnull align 8 %i.c)
          to label %.noexc5.i.i unwind label %.loopexit.split-lp.i.i.loopexit, !noalias !58 ; 2 uses

.noexc5.i.i:                                      ; preds = %bb.ar
  %i.eo = extractvalue { i64, i64 } %i.en, 0
  %i.ep = trunc nuw i64 %i.eo to i1
  br i1 %i.ep, label %.lr.ph.i.i.i.i, label %.loopexit48.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc5.i.i, %.noexc6.i.i
  %i.eq = phi { i64, i64 } [ %i.ex, %.noexc6.i.i ], [ %i.en, %.noexc5.i.i ]
  %i.er = extractvalue { i64, i64 } %i.eq, 1      ; 2 uses
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %i.er
  %i.et = load ptr, ptr %i.es, align 8, !noalias !58 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 352
  store ptr %i.dn, ptr %i.eu, align 8, !noalias !58
  %i.ev = trunc i64 %i.er to i16
  %i.ew = getelementptr inbounds nuw i8, ptr %i.et, i64 360
  store i16 %i.ev, ptr %i.ew, align 8, !noalias !58
  %i.ex = invoke { i64, i64 } @_RNvXsd_NtNtCs4NRVxsYgnAr_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivejENtNtNtB7_6traits8iterator8Iterator4nextCs81dfN7NJsQO_12serde_derive(ptr nonnull align 8 %i.c)
          to label %.noexc6.i.i unwind label %.loopexit.i.i, !noalias !58 ; 2 uses

.noexc6.i.i:                                      ; preds = %.lr.ph.i.i.i.i
  %i.ey = extractvalue { i64, i64 } %i.ex, 0
  %i.ez = trunc nuw i64 %i.ey to i1
  br i1 %i.ez, label %.lr.ph.i.i.i.i, label %.loopexit48.i

bb.as:                                            ; preds = %bb.aq
  call void @_RNvNvMse_NtNtCs4NRVxsYgnAr_4core3num7nonzeroINtB7_7NonZeropE13new_unchecked18precondition_checkCs81dfN7NJsQO_12serde_derive(ptr nonnull align 8 @4) #18, !noalias !58
  unreachable

bb.at:                                            ; preds = %bb.ap
  unreachable

bb.au:                                            ; preds = %.thread.i.i24, %.loopexit.split-lp.i.i
  %i.fa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #17, !noalias !58
  unreachable

.thread.i.i24:                                    ; preds = %bb.al, %bb.ai
  %.pn10.i.i = phi { ptr, i32 } [ %lpad.phi.i.i, %bb.al ], [ %i.dx, %bb.ai ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxINtNtNtNtBG_11collections5btree4node12InternalNodeNtNtNtCs81dfN7NJsQO_12serde_derive9internals4name4NameNtNtB1e_7set_val9SetValZSTEEEB23_(ptr nonnull align 8 %i.f) #16
          to label %.body.thread.i unwind label %bb.au, !noalias !58

.loopexit48.i:                                    ; preds = %.noexc6.i.i, %.noexc5.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !58
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false), !noalias !56
  store ptr %.sroa.452.0.copyload, ptr %i.br, align 8, !alias.scope !57, !noalias !56
  store i64 %i.by, ptr %i.bs, align 8, !alias.scope !57, !noalias !56
  store ptr %i.dn, ptr %i.bt, align 8, !alias.scope !57, !noalias !56
  store i64 %i.by, ptr %i.bu, align 8, !alias.scope !57, !noalias !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !56
  %spec.select.i25 = select i1 %.sroa.03.0.i, ptr %i.dn, ptr %.sroa.452.0.copyload ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.p, i64 32, i1 false), !noalias !56
  %i.fb = getelementptr inbounds nuw i8, ptr %spec.select.i25, i64 362 ; 2 uses
  %i.fc = load i16, ptr %i.fb, align 2, !noalias !56 ; 2 uses
  %i.fd = zext i16 %i.fc to i64                   ; 4 uses
  %i.fe = add i16 %i.fc, 1
  %i.ff = add nsw i64 %.sroa.5.0.i23, 1           ; 5 uses
  %.not.i13.i = icmp ugt i64 %i.ff, %i.fd
  br i1 %.not.i13.i, label %_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree4node12slice_insertNtNtNtCs81dfN7NJsQO_12serde_derive9internals4name4NameEB19_.exit.i14.i, label %bb.av

bb.av:                                            ; preds = %.loopexit48.i
  %i.fg = getelementptr inbounds nuw [32 x i8], ptr %spec.select.i25, i64 %.sroa.5.0.i23
  %i.fh = getelementptr inbounds nuw [32 x i8], ptr %spec.select.i25, i64 %i.ff
  %i.fi = sub nsw i64 %i.fd, %.sroa.5.0.i23
  %i.fj = shl nuw nsw i64 %i.fi, 5
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.fh, ptr align 8 %i.fg, i64 %i.fj, i1 false), !noalias !56
  br label %_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree4node12slice_insertNtNtNtCs81dfN7NJsQO_12serde_derive9internals4name4NameEB19_.exit.i14.i

_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree4node12slice_insertNtNtNtCs81dfN7NJsQO_12serde_derive9internals4name4NameEB19_.exit.i14.i: ; preds = %bb.av, %.loopexit48.i
  %i.fk = getelementptr inbounds nuw [32 x i8], ptr %spec.select.i25, i64 %.sroa.5.0.i23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.fk, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.h, i64 32, i1 false), !noalias !56
  %i.fl = add nuw nsw i64 %i.fd, 2                ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %spec.select.i25, i64 368 ; 4 uses
  %i.fn = add nsw i64 %.sroa.5.0.i23, 2           ; 2 uses
  %i.fo = icmp ugt i64 %i.fl, %i.fn
  br i1 %i.fo, label %bb.aw, label %_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree4node12slice_insertINtNtNtCs4NRVxsYgnAr_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtNtCs81dfN7NJsQO_12serde_derive9internals4name4NameNtNtB4_7set_val9SetValZSTEEEB29_.exit.i15.i

bb.aw:                                            ; preds = %_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree4node12slice_insertNtNtNtCs81dfN7NJsQO_12serde_derive9internals4name4NameEB19_.exit.i14.i
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %i.ff
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %i.fn
  %i.fr = sub nsw i64 %i.fd, %.sroa.5.0.i23
  %i.fs = shl nuw nsw i64 %i.fr, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fq, ptr nonnull align 8 %i.fp, i64 %i.fs, i1 false), !noalias !56
  br label %_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree4node12slice_insertINtNtNtCs4NRVxsYgnAr_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtNtCs81dfN7NJsQO_12serde_derive9internals4name4NameNtNtB4_7set_val9SetValZSTEEEB29_.exit.i15.i

_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree4node12slice_insertINtNtNtCs4NRVxsYgnAr_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtNtCs81dfN7NJsQO_12serde_derive9internals4name4NameNtNtB4_7set_val9SetValZSTEEEB29_.exit.i15.i: ; preds = %bb.aw, %_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree4node12slice_insertNtNtNtCs81dfN7NJsQO_12serde_derive9internals4name4NameEB19_.exit.i14.i
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %i.ff
  store ptr %.sroa.654.0.copyload264279, ptr %i.ft, align 8, !noalias !56
  store i16 %i.fe, ptr %i.fb, align 2, !noalias !56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !56
  store i64 %i.ff, ptr %i.b, align 8, !noalias !56
  store i64 %i.fl, ptr %i.bv, align 8, !noalias !56
  %i.fu = invoke { i64, i64 } @_RNvXs4_NtNtCs4NRVxsYgnAr_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtNtNtB7_6traits8iterator8Iterator4nextCs81dfN7NJsQO_12serde_derive(ptr nonnull align 8 %i.b)
          to label %.noexc17.i unwind label %.loopexit.split-lp.i, !noalias !56 ; 2 uses

.noexc17.i:                                       ; preds = %_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree4node12slice_insertINtNtNtCs4NRVxsYgnAr_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtNtCs81dfN7NJsQO_12serde_derive9internals4name4NameNtNtB4_7set_val9SetValZSTEEEB29_.exit.i15.i
  %i.fv = extractvalue { i64, i64 } %i.fu, 0
  %i.fw = trunc nuw i64 %i.fv to i1
  br i1 %i.fw, label %.lr.ph.i.i16.i, label %.loopexit

.lr.ph.i.i16.i:                                   ; preds = %.noexc17.i, %.noexc18.i
  %i.fx = phi { i64, i64 } [ %i.ge, %.noexc18.i ], [ %i.fu, %.noexc17.i ]
  %i.fy = extractvalue { i64, i64 } %i.fx, 1      ; 2 uses
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %i.fy
  %i.ga = load ptr, ptr %i.fz, align 8, !noalias !56 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 352
  store ptr %spec.select.i25, ptr %i.gb, align 8, !noalias !56
  %i.gc = trunc i64 %i.fy to i16
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ga, i64 360
  store i16 %i.gc, ptr %i.gd, align 8, !noalias !56
  %i.ge = invoke { i64, i64 } @_RNvXs4_NtNtCs4NRVxsYgnAr_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtNtNtB7_6traits8iterator8Iterator4nextCs81dfN7NJsQO_12serde_derive(ptr nonnull align 8 %i.b)
          to label %.noexc18.i unwind label %.loopexit46.i, !noalias !56 ; 2 uses

.noexc18.i:                                       ; preds = %.lr.ph.i.i16.i
  %i.gf = extractvalue { i64, i64 } %i.ge, 0
  %i.gg = trunc nuw i64 %i.gf to i1
  br i1 %i.gg, label %.lr.ph.i.i16.i, label %.loopexit

.loopexit46.i:                                    ; preds = %.lr.ph.i.i16.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

.loopexit.split-lp.i:                             ; preds = %_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree4node12slice_insertINtNtNtCs4NRVxsYgnAr_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtNtCs81dfN7NJsQO_12serde_derive9internals4name4NameNtNtB4_7set_val9SetValZSTEEEB29_.exit.i15.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.ax:                                            ; preds = %.loopexit.split-lp.i, %.loopexit46.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit46.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCscdodAO9FK5_5alloc11collections5btree4node11SplitResultNtNtNtCs81dfN7NJsQO_12serde_derive9internals4name4NameNtNtBG_7set_val9SetValZSTNtNtBE_6marker8InternalEEB1K_(ptr nonnull align 8 %i.i) #16
          to label %.body unwind label %bb.ay, !noalias !56

bb.ay:                                            ; preds = %.body.thread.i, %bb.ax
  %i.gh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #17, !noalias !56
  unreachable

.thread80:                                        ; preds = %.lr.ph.i.i.i, %_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree4node12slice_insertINtNtNtCs4NRVxsYgnAr_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtNtCs81dfN7NJsQO_12serde_derive9internals4name4NameNtNtB4_7set_val9SetValZSTEEEB29_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %.loopexit90

.body.thread43.i.loopexit:                        ; preds = %bb.ag
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i

.body.thread43.i.loopexit.split-lp:               ; preds = %bb.x
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i

.body.thread.i:                                   ; preds = %.body.thread43.i.loopexit, %.body.thread43.i.loopexit.split-lp, %.thread.i.i24, %bb.al
  %.pn38.i = phi { ptr, i32 } [ %.pn10.i.i, %.thread.i.i24 ], [ %lpad.phi.i.i, %bb.al ], [ %lpad.loopexit, %.body.thread43.i.loopexit ], [ %lpad.loopexit.split-lp, %.body.thread43.i.loopexit.split-lp ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs81dfN7NJsQO_12serde_derive9internals4name4NameEBH_(ptr nonnull align 8 %i.p) #16
          to label %.body unwind label %bb.ay, !noalias !56

.loopexit:                                        ; preds = %.noexc18.i, %.noexc17.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !56
  %.sroa.048.0.copyload = load i64, ptr %i.i, align 8 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.450, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.450.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %.not20 = icmp eq i64 %.sroa.048.0.copyload, -1
  br i1 %.not20, label %.loopexit90, label %bb.az

bb.az:                                            ; preds = %.loopexit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4434, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.450, i64 24, i1 false)
  %i.gi = getelementptr inbounds nuw i8, ptr %.sroa.452.0.copyload, i64 352
  %i.gj = load ptr, ptr %i.gi, align 8, !noalias !55 ; 2 uses
  %.not.i = icmp eq ptr %i.gj, null
  br i1 %.not.i, label %._crit_edge, label %bb.v

.loopexit90:                                      ; preds = %.loopexit, %.thread80, %bb.t, %.thread, %._crit_edge
  %spec.select.i.sink = phi ptr [ %spec.select.i, %bb.t ], [ %spec.select.i, %._crit_edge ], [ %i.bk, %.thread ], [ %spec.select.i, %.thread80 ], [ %spec.select.i, %.loopexit ]
  %spec.select35.i.sink = phi i64 [ %spec.select35.i, %bb.t ], [ %spec.select35.i, %._crit_edge ], [ %i.bm, %.thread ], [ %spec.select35.i, %.thread80 ], [ %spec.select35.i, %.loopexit ]
  %.sroa.5.0.i.sink = phi i64 [ %.sroa.5.0.i, %bb.t ], [ %.sroa.5.0.i, %._crit_edge ], [ %i.aa, %.thread ], [ %.sroa.5.0.i, %.thread80 ], [ %.sroa.5.0.i, %.loopexit ]
  store ptr %spec.select.i.sink, ptr %0, align 8
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %spec.select35.i.sink, ptr %i.gk, align 8
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5.0.i.sink, ptr %i.gl, align 8
  ret void

bb.ba:                                            ; preds = %bb.v
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs81dfN7NJsQO_12serde_derive9internals4name4NameEBH_(ptr nonnull align 8 %i.p) #16
          to label %.body unwind label %bb.bb

bb.bb:                                            ; preds = %bb.bc, %bb.ba
  %i.gm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.bc:                                            ; preds = %bb.a
  %i.gn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs81dfN7NJsQO_12serde_derive9internals4name4NameEBH_(ptr nonnull align 8 %i.q) #16
          to label %.body unwind label %bb.bb

.body:                                            ; preds = %bb.ba, %bb.ax, %.body.thread.i, %bb.s, %bb.bc
  %.pn.pn = phi { ptr, i32 } [ %.pn.ph.i, %bb.s ], [ %i.gn, %bb.bc ], [ %lpad.phi.i, %bb.ax ], [ %lpad.thr_comm.split-lp, %bb.ba ], [ %.pn38.i, %.body.thread.i ]
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBX_6marker3MutNtNtCsfq6Q4Do6HaX_3syn8lifetime8LifetimeNtNtB7_7set_val9SetValZSTNtB1h_14LeafOrInternalE11search_treeB1x_ECs81dfN7NJsQO_12serde_derive(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) %0, ptr %1, i64 %2, ptr align 8 %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %bb.a
  %.sroa.3.0 = phi i64 [ %2, %bb.a ], [ %i.q, %bb.g ] ; 3 uses
  %.sroa.0.0 = phi ptr [ %1, %bb.a ], [ %i.p, %bb.g ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 362
  %i.c = load i16, ptr %i.b, align 2
  %i.d = zext i16 %i.c to i64                     ; 2 uses
  %i.e = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0, i64 %i.d
  store ptr %.sroa.0.0, ptr %i.a, align 8
  store ptr %i.e, ptr %.sroa.2.0..sroa_idx.i, align 8
  store i64 0, ptr %.sroa.3.0..sroa_idx.i, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.f = call { i64, ptr } @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCsfq6Q4Do6HaX_3syn8lifetime8LifetimeEENtNtNtB8_6traits8iterator8Iterator4nextCs81dfN7NJsQO_12serde_derive(ptr nonnull align 8 %i.a) ; 3 uses
  %i.g = extractvalue { i64, ptr } %i.f, 1        ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = call align 8 ptr @_RNvXNtCs4NRVxsYgnAr_4core6borrowNtNtCsfq6Q4Do6HaX_3syn8lifetime8LifetimeINtB2_6BorrowBu_E6borrowCs81dfN7NJsQO_12serde_derive(ptr nonnull align 8 %i.g)
  %i.i = call i8 @_RNvXs4_NtCsfq6Q4Do6HaX_3syn8lifetimeNtB5_8LifetimeNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp(ptr align 8 %3, ptr align 8 %i.h)
  switch i8 %i.i, label %bb.e [
    i8 -1, label %.loopexit.split.loop.exit3.i
    i8 0, label %bb.f
    i8 1, label %bb.c
  ]

.loopexit.split.loop.exit3.i:                     ; preds = %bb.d
  %i.j = extractvalue { i64, ptr } %i.f, 0
  br label %.loopexit

bb.e:                                             ; preds = %bb.d
  unreachable

.loopexit:                                        ; preds = %bb.c, %.loopexit.split.loop.exit3.i
  %.sroa.4.0.i.ph = phi i64 [ %i.j, %.loopexit.split.loop.exit3.i ], [ %i.d, %bb.c ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.k = icmp eq i64 %.sroa.3.0, 0
  br i1 %i.k, label %.loopexit79, label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.l = extractvalue { i64, ptr } %i.f, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.loopexit79

.loopexit79:                                      ; preds = %.loopexit, %bb.f
  %.sink = phi i64 [ %.sroa.3.0, %bb.f ], [ 0, %.loopexit ]
  %.sroa.4.0.i.ph.lcssa.sink = phi i64 [ %i.l, %bb.f ], [ %.sroa.4.0.i.ph, %.loopexit ]
  %storemerge = phi i64 [ 0, %bb.f ], [ 1, %.loopexit ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0, ptr %i.m, align 8
  %.sroa.230.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink, ptr %.sroa.230.0..sroa_idx, align 8
  %.sroa.331.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.4.0.i.ph.lcssa.sink, ptr %.sroa.331.0..sroa_idx, align 8
  store i64 %storemerge, ptr %0, align 8
  ret void

bb.g:                                             ; preds = %.loopexit
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 368
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.sroa.4.0.i.ph
end_hunk_1
