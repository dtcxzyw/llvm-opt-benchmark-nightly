Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/gdcmImageHelper?download=true
inline.NumInlined: 4907
inline.NumDeleted: 1158
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN4gdcm11ImageHelper18SetDimensionsValueERNS_4FileERKNS_6PixmapE:bb.a

bb.z:                                             ; preds = %bb.v
  %i.ay = add nsw i64 %i.au, -1                   ; 2 uses
  store i64 %i.ay, ptr %i.at, align 8, !tbaa !58
  %.not.i.i.i65 = icmp eq i64 %i.ay, 0
  br i1 %.not.i.i.i65, label %bb.aa, label %_ZN4gdcm12SmartPointerINS_5ValueEED2Ev.exit66

bb.aa:                                            ; preds = %bb.z
  %i.az = load ptr, ptr %i.as, align 8, !tbaa !60
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8
  call void %i.bb(ptr noundef nonnull align 8 dereferenceable(16) %i.as) #29, !inline_history !2
  br label %_ZN4gdcm12SmartPointerINS_5ValueEED2Ev.exit66

bb.ab:                                            ; preds = %bb.x
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  br label %.body.i62

.body.i62:                                        ; preds = %bb.ab, %bb.y
  %eh.lpad-body.i63 = phi { ptr, i32 } [ %i.bc, %bb.ab ], [ %i.ax, %bb.y ]
  %i.bd = extractvalue { ptr, i32 } %eh.lpad-body.i63, 0
  call void @__clang_call_terminate(ptr %i.bd) #32
  unreachable

_ZN4gdcm12SmartPointerINS_5ValueEED2Ev.exit66:    ; preds = %bb.u, %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  br label %bb.ba

bb.ac:                                            ; preds = %bb.a
  %i.be = landingpad { ptr, i32 }
          cleanup
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @_ZN4gdcm12SmartPointerINS_5ValueEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bf) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %bb.bp

bb.ad:                                            ; preds = %_ZN4gdcm12SmartPointerINS_5ValueEED2Ev.exit
  %i.bg = landingpad { ptr, i32 }
          cleanup
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 16
  call void @_ZN4gdcm12SmartPointerINS_5ValueEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bh) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  br label %bb.bo

bb.ae:                                            ; preds = %bb.t
  %i.bi = landingpad { ptr, i32 }
          cleanup
  %i.bj = getelementptr inbounds nuw i8, ptr %9, i64 16
  call void @_ZN4gdcm12SmartPointerINS_5ValueEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bj) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  br label %bb.bn

bb.af:                                            ; preds = %bb.s
  %i.bk = call noundef i32 @_ZNK4gdcm12MediaStorage20GetModalityDimensionEv(ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.bl = icmp eq i32 %i.bk, 2
  br i1 %i.bl, label %bb.ag, label %bb.ba

bb.ag:                                            ; preds = %bb.af
  %i.bm = load i32, ptr %i.ak, align 4, !tbaa !82
  %i.bn = icmp eq i32 %i.bm, 1
  br i1 %i.bn, label %bb.ah, label %bb.ba

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  store i16 40, ptr %10, align 4, !tbaa !30, !alias.scope !201
  %i.bo = getelementptr inbounds nuw i8, ptr %10, i64 2
  store i16 8, ptr %i.bo, align 2, !tbaa !30, !alias.scope !201
  %i.bp = call noundef i64 @_ZN4gdcm7DataSet6RemoveERKNS_3TagE(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %10) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  br label %bb.ba

bb.ai:                                            ; preds = %bb.r, %_ZN4gdcm12SmartPointerINS_5ValueEED2Ev.exit60
  %i.bq = call noundef i32 @_ZNK4gdcm6Bitmap21GetNumberOfDimensionsEv(ptr noundef nonnull align 8 dereferenceable(106) %1)
  %i.br = icmp eq i32 %i.bq, 2
  br i1 %i.br, label %bb.aj, label %bb.az

bb.aj:                                            ; preds = %bb.ai
  %i.bs = load i32, ptr %i.ak, align 4, !tbaa !82
  %i.bt = icmp eq i32 %i.bs, 1
  br i1 %i.bt, label %bb.ak, label %bb.az

bb.ak:                                            ; preds = %bb.aj
  %i.bu = call noundef i32 @_ZNK4gdcm12MediaStorage20GetModalityDimensionEv(ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.bv = icmp ugt i32 %i.bu, 2
  br i1 %i.bv, label %bb.al, label %bb.ax

bb.al:                                            ; preds = %bb.ak
  %i.bw = load i32, ptr %3, align 4, !tbaa !29
  %i.bx = icmp eq i32 %i.bw, 34
  br i1 %i.bx, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #29
  store i16 40, ptr %11, align 4, !tbaa !30, !alias.scope !202
  %i.by = getelementptr inbounds nuw i8, ptr %11, i64 2
  store i16 8, ptr %i.by, align 2, !tbaa !30, !alias.scope !202
  %i.bz = call noundef i64 @_ZN4gdcm7DataSet6RemoveERKNS_3TagE(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %11) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  br label %bb.ba

bb.an:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #29
  call void @_ZNK4gdcm9AttributeILt40ELt8ELx512ELi1EE16GetAsDataElementEv(ptr dead_on_unwind nonnull writable sret(%"class.gdcm::DataElement") align 8 %12, ptr noundef nonnull align 4 dereferenceable(4) %8)
  invoke void @_ZN4gdcm7DataSet7ReplaceERKNS_11DataElementE(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %12)
          to label %bb.ao unwind label %bb.aw

bb.ao:                                            ; preds = %bb.an
  %i.ca = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !63 ; 4 uses
  %.not.i.i67 = icmp eq ptr %i.cb, null
  br i1 %.not.i.i67, label %_ZN4gdcm12SmartPointerINS_5ValueEED2Ev.exit72, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8 ; 2 uses
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !58 ; 2 uses
  %i.ce = icmp sgt i64 %i.cd, 0
  br i1 %i.ce, label %bb.at, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.cf = call ptr @__cxa_allocate_exception(i64 40) #29 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.cf, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41, i32 noundef 77, ptr noundef nonnull @.str.3)
          to label %bb.ar unwind label %bb.as

bb.ar:                                            ; preds = %bb.aq
  invoke void @__cxa_throw(ptr nonnull %i.cf, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #30
          to label %.noexc.i70 unwind label %bb.av

.noexc.i70:                                       ; preds = %bb.ar
  unreachable

bb.as:                                            ; preds = %bb.aq
  %i.cg = landingpad { ptr, i32 }
          catch ptr null
  call void @__cxa_free_exception(ptr nonnull %i.cf) #29
  br label %.body.i68

bb.at:                                            ; preds = %bb.ap
  %i.ch = add nsw i64 %i.cd, -1                   ; 2 uses
  store i64 %i.ch, ptr %i.cc, align 8, !tbaa !58
  %.not.i.i.i71 = icmp eq i64 %i.ch, 0
  br i1 %.not.i.i.i71, label %bb.au, label %_ZN4gdcm12SmartPointerINS_5ValueEED2Ev.exit72

bb.au:                                            ; preds = %bb.at
  %i.ci = load ptr, ptr %i.cb, align 8, !tbaa !60
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8
  call void %i.ck(ptr noundef nonnull align 8 dereferenceable(16) %i.cb) #29, !inline_history !2
  br label %_ZN4gdcm12SmartPointerINS_5ValueEED2Ev.exit72

bb.av:                                            ; preds = %bb.ar
  %i.cl = landingpad { ptr, i32 }
          catch ptr null
  br label %.body.i68

.body.i68:                                        ; preds = %bb.av, %bb.as
  %eh.lpad-body.i69 = phi { ptr, i32 } [ %i.cl, %bb.av ], [ %i.cg, %bb.as ]
  %i.cm = extractvalue { ptr, i32 } %eh.lpad-body.i69, 0
  call void @__clang_call_terminate(ptr %i.cm) #32
  unreachable

_ZN4gdcm12SmartPointerINS_5ValueEED2Ev.exit72:    ; preds = %bb.ao, %bb.at, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  br label %bb.ba

bb.aw:                                            ; preds = %bb.an
  %i.cn = landingpad { ptr, i32 }
          cleanup
  %i.co = getelementptr inbounds nuw i8, ptr %12, i64 16
  call void @_ZN4gdcm12SmartPointerINS_5ValueEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.co) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  br label %bb.bn

bb.ax:                                            ; preds = %bb.ak
  %i.cp = call noundef i32 @_ZNK4gdcm12MediaStorage20GetModalityDimensionEv(ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.cq = icmp eq i32 %i.cp, 2
  br i1 %i.cq, label %bb.ay, label %bb.ba

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #29
  store i16 40, ptr %13, align 4, !tbaa !30, !alias.scope !203
  %i.cr = getelementptr inbounds nuw i8, ptr %13, i64 2
  store i16 8, ptr %i.cr, align 2, !tbaa !30, !alias.scope !203
  %i.cs = call noundef i64 @_ZN4gdcm7DataSet6RemoveERKNS_3TagE(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %13) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  br label %bb.ba

bb.az:                                            ; preds = %bb.aj, %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #29
  store i16 40, ptr %14, align 4, !tbaa !30, !alias.scope !204
  %i.ct = getelementptr inbounds nuw i8, ptr %14, i64 2
  store i16 8, ptr %i.ct, align 2, !tbaa !30, !alias.scope !204
  %i.cu = call noundef i64 @_ZN4gdcm7DataSet6RemoveERKNS_3TagE(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %14) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #29
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ax, %bb.ay, %bb.am, %_ZN4gdcm12SmartPointerINS_5ValueEED2Ev.exit72, %_ZN4gdcm12SmartPointerINS_5ValueEED2Ev.exit66, %bb.af, %bb.ag, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  %i.cv = load i32, ptr %3, align 4, !tbaa !29    ; 2 uses
  switch i32 %i.cv, label %19 [
    i32 9, label %bb.bb
    i32 15, label %bb.bb
    i32 95, label %bb.bb
    i32 84, label %bb.bb
    i32 19, label %bb.bb
    i32 20, label %bb.bb
    i32 21, label %bb.bb
    i32 22, label %bb.bb
    i32 70, label %bb.bb
    i32 86, label %bb.bb
    i32 68, label %bb.bb
    i32 88, label %bb.bb
  ]

19:                                               ; preds = %bb.ba
  switch i32 %i.cv, label %bb.cw [
    i32 87, label %bb.bb
    i32 79, label %bb.bb
    i32 92, label %bb.bb
    i32 93, label %bb.bb
    i32 90, label %bb.bb
    i32 89, label %bb.bb
    i32 91, label %bb.bb
  ]

bb.bb:                                            ; preds = %19, %19, %19, %19, %19, %19, %19, %bb.ba, %bb.ba, %bb.ba, %bb.ba, %bb.ba, %bb.ba, %bb.ba, %bb.ba, %bb.ba, %bb.ba, %bb.ba, %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #29
  store i16 20992, ptr %15, align 4, !tbaa !30
  %i.cw = getelementptr inbounds nuw i8, ptr %15, i64 2
  store i16 -28112, ptr %i.cw, align 2, !tbaa !30
  %i.cx = call noundef zeroext i1 @_ZNK4gdcm7DataSet15FindDataElementERKNS_3TagE(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %15)
  br i1 %i.cx, label %bb.bc, label %bb.cv

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.cy = load i32, ptr %15, align 4, !tbaa !30   ; 3 uses
  store i32 %i.cy, ptr %2, align 8, !tbaa !30
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.cz, i8 0, i64 20, i1 false)
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !53 ; 2 uses
  %.not14.i.i.i.i = icmp eq ptr %i.db, null
  %i.dc = trunc i32 %i.cy to i16                  ; 4 uses
  %i.dd = lshr i32 %i.cy, 16
  %i.de = trunc nuw i32 %i.dd to i16              ; 2 uses
  br i1 %.not14.i.i.i.i, label %.thread.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.bc, %bb.bg
  %.016.i.i.i.i = phi ptr [ %i.do, %bb.bg ], [ %i.da, %bb.bc ]
  %.0815.i.i.i.i = phi ptr [ %.19.i.i.i.i, %bb.bg ], [ %i.db, %bb.bc ] ; 7 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.0815.i.i.i.i, i64 32
  %i.dg = load i16, ptr %i.df, align 4, !tbaa !30 ; 2 uses
  %i.dh = icmp ult i16 %i.dg, %i.dc
  br i1 %i.dh, label %bb.bf, label %bb.bd

bb.bd:                                            ; preds = %.lr.ph.i.i.i.i
  %i.di = icmp eq i16 %i.dg, %i.dc
  br i1 %i.di, label %bb.be, label %bb.bg

bb.be:                                            ; preds = %bb.bd
  %i.dj = getelementptr inbounds nuw i8, ptr %.0815.i.i.i.i, i64 34
  %i.dk = load i16, ptr %i.dj, align 2, !tbaa !30
  %i.dl = icmp ult i16 %i.dk, %i.de
  br i1 %i.dl, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be, %.lr.ph.i.i.i.i
  %i.dm = getelementptr inbounds nuw i8, ptr %.0815.i.i.i.i, i64 8
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be, %bb.bd
  %i.dn = phi ptr [ %i.dm, %bb.bf ], [ %.0815.i.i.i.i, %bb.be ], [ %.0815.i.i.i.i, %bb.bd ]
  %i.do = phi ptr [ %.016.i.i.i.i, %bb.bf ], [ %.0815.i.i.i.i, %bb.be ], [ %.0815.i.i.i.i, %bb.bd ] ; 4 uses
  %.19.i.i.i.i = load ptr, ptr %i.dn, align 8, !tbaa !54 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.19.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNKSt3__16__treeIN4gdcm11DataElementENS_4lessIS2_EENS_9allocatorIS2_EEE13__lower_boundIS2_EENS_21__tree_const_iteratorIS2_PNS_11__tree_nodeIS2_PvEElEERKT_SD_PNS_15__tree_end_nodeIPNS_16__tree_node_baseISB_EEEE.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZNKSt3__16__treeIN4gdcm11DataElementENS_4lessIS2_EENS_9allocatorIS2_EEE13__lower_boundIS2_EENS_21__tree_const_iteratorIS2_PNS_11__tree_nodeIS2_PvEElEERKT_SD_PNS_15__tree_end_nodeIPNS_16__tree_node_baseISB_EEEE.exit.i.i.i: ; preds = %bb.bg
  %.not.i.i.i = icmp eq ptr %i.do, %i.da
  br i1 %.not.i.i.i, label %.thread.i, label %bb.bh

bb.bh:                                            ; preds = %_ZNKSt3__16__treeIN4gdcm11DataElementENS_4lessIS2_EENS_9allocatorIS2_EEE13__lower_boundIS2_EENS_21__tree_const_iteratorIS2_PNS_11__tree_nodeIS2_PvEElEERKT_SD_PNS_15__tree_end_nodeIPNS_16__tree_node_baseISB_EEEE.exit.i.i.i
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 32 ; 3 uses
  %i.dq = load i16, ptr %i.dp, align 4, !tbaa !30 ; 2 uses
  %i.dr = icmp ugt i16 %i.dq, %i.dc
  br i1 %i.dr, label %.thread.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.ds = icmp eq i16 %i.dq, %i.dc
  br i1 %i.ds, label %bb.bj, label %_ZNK4gdcm7DataSet14GetDataElementERKNS_3TagE.exit

bb.bj:                                            ; preds = %bb.bi
  %i.dt = getelementptr inbounds nuw i8, ptr %i.do, i64 34
  %i.du = load i16, ptr %i.dt, align 2, !tbaa !30
  %.not.i = icmp ugt i16 %i.du, %i.de
  br i1 %.not.i, label %.thread.i, label %_ZNK4gdcm7DataSet14GetDataElementERKNS_3TagE.exit

common.resume:                                    ; preds = %bb.cx, %bb.bk
  %common.resume.op = phi { ptr, i32 } [ %i.dv, %bb.bk ], [ %.pn37.pn.pn.pn, %bb.cx ]
  resume { ptr, i32 } %common.resume.op

bb.bk:                                            ; preds = %.thread.i
  %i.dv = landingpad { ptr, i32 }
          cleanup
  %i.dw = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @_ZN4gdcm12SmartPointerINS_5ValueEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.dw) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %common.resume

.thread.i:                                        ; preds = %bb.bj, %bb.bh, %_ZNKSt3__16__treeIN4gdcm11DataElementENS_4lessIS2_EENS_9allocatorIS2_EEE13__lower_boundIS2_EENS_21__tree_const_iteratorIS2_PNS_11__tree_nodeIS2_PvEElEERKT_SD_PNS_15__tree_end_nodeIPNS_16__tree_node_baseISB_EEEE.exit.i.i.i, %bb.bc
  %i.dx = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK4gdcm7DataSet8GetDEEndEv(ptr noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_ZNK4gdcm7DataSet14GetDataElementERKNS_3TagE.exit unwind label %bb.bk

_ZNK4gdcm7DataSet14GetDataElementERKNS_3TagE.exit: ; preds = %bb.bi, %bb.bj, %.thread.i
  %.05.i = phi ptr [ %i.dx, %.thread.i ], [ %i.dp, %bb.bi ], [ %i.dp, %bb.bj ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #29
  call void @_ZNK4gdcm11DataElement12GetValueAsSQEv(ptr dead_on_unwind nonnull writable sret(%"class.gdcm::SmartPointer") align 8 %16, ptr noundef nonnull align 8 dereferenceable(24) %.05.i)
  %i.dy = load ptr, ptr %16, align 8, !tbaa !40   ; 3 uses
  %.not36 = icmp eq ptr %i.dy, null
  br i1 %.not36, label %bb.bl, label %bb.bs

bb.bl:                                            ; preds = %_ZNK4gdcm7DataSet14GetDataElementERKNS_3TagE.exit
  %i.dz = call ptr @__cxa_allocate_exception(i64 40) #29 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.dz, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.2, i32 noundef 1052, ptr noundef nonnull @.str.3)
          to label %bb.bm unwind label %bb.br

bb.bm:                                            ; preds = %bb.bl
  invoke void @__cxa_throw(ptr nonnull %i.dz, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #30
          to label %bb.cy unwind label %bb.bq

bb.bn:                                            ; preds = %bb.aw, %bb.ae
  %.pn = phi { ptr, i32 } [ %i.bi, %bb.ae ], [ %i.cn, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.ad
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.bn ], [ %i.bg, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.ac
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.bo ], [ %i.be, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %bb.cx

bb.bq:                                            ; preds = %bb.bt, %bb.bm
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

bb.br:                                            ; preds = %bb.bl
  %i.eb = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.dz) #29
  br label %bb.cu

bb.bs:                                            ; preds = %_ZNK4gdcm7DataSet14GetDataElementERKNS_3TagE.exit
  %i.ec = load i32, ptr %i.ak, align 4, !tbaa !82
  %i.ed = zext i32 %i.ec to i64                   ; 4 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dy, i64 24 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dy, i64 32 ; 2 uses
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !45 ; 3 uses
  %i.eh = load ptr, ptr %i.ee, align 8, !tbaa !46 ; 2 uses
  %i.ei = ptrtoint ptr %i.eg to i64
  %i.ej = ptrtoint ptr %i.eh to i64
  %i.ek = sub i64 %i.ei, %i.ej
  %i.el = sdiv exact i64 %i.ek, 48                ; 3 uses
  %i.em = icmp ult i64 %i.el, %i.ed
  br i1 %i.em, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.en = sub nuw nsw i64 %i.ed, %i.el
  invoke void @_ZNSt3__16vectorIN4gdcm4ItemENS_9allocatorIS2_EEE8__appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ee, i64 noundef %i.en)
          to label %bb.bw unwind label %bb.bq

bb.bu:                                            ; preds = %bb.bs
  %i.eo = icmp ugt i64 %i.el, %i.ed
  br i1 %i.eo, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.ep = getelementptr inbounds nuw [48 x i8], ptr %i.eh, i64 %i.ed ; 3 uses
  %.not6.i.i.i.i = icmp eq ptr %i.ep, %i.eg
  br i1 %.not6.i.i.i.i, label %_ZNSt3__16vectorIN4gdcm4ItemENS_9allocatorIS2_EEE17__destruct_at_endB8ne180100EPS2_.exit.i.i, label %.lr.ph.i.i.i.i42

.lr.ph.i.i.i.i42:                                 ; preds = %bb.bv, %.lr.ph.i.i.i.i42
  %.07.i.i.i.i = phi ptr [ %i.eq, %.lr.ph.i.i.i.i42 ], [ %i.eg, %bb.bv ] ; 4 uses
  %i.eq = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -48 ; 2 uses
  %i.er = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -24
  %i.es = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -16
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !53
  call void @_ZNSt3__16__treeIN4gdcm11DataElementENS_4lessIS2_EENS_9allocatorIS2_EEE7destroyEPNS_11__tree_nodeIS2_PvEE(ptr noundef nonnull align 8 dereferenceable(24) %i.er, ptr noundef %i.et) #29
  %i.eu = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -32
  call void @_ZN4gdcm12SmartPointerINS_5ValueEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.eu) #29
  %.not.i.i.i.i43 = icmp eq ptr %i.ep, %i.eq
  br i1 %.not.i.i.i.i43, label %_ZNSt3__16vectorIN4gdcm4ItemENS_9allocatorIS2_EEE17__destruct_at_endB8ne180100EPS2_.exit.i.i, label %.lr.ph.i.i.i.i42

_ZNSt3__16vectorIN4gdcm4ItemENS_9allocatorIS2_EEE17__destruct_at_endB8ne180100EPS2_.exit.i.i: ; preds = %.lr.ph.i.i.i.i42, %bb.bv
  store ptr %i.ep, ptr %i.ef, align 8, !tbaa !45
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bt, %bb.bu, %_ZNSt3__16vectorIN4gdcm4ItemENS_9allocatorIS2_EEE17__destruct_at_endB8ne180100EPS2_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #29
  %i.ev = load i32, ptr %.05.i, align 4, !tbaa !30
  store i32 %i.ev, ptr %17, align 8, !tbaa !30
  %i.ew = getelementptr inbounds nuw i8, ptr %17, i64 4 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.ey = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ew, i8 0, i64 20, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #29
  store i64 262144, ptr %18, align 8, !tbaa !68
  %i.ez = invoke noundef zeroext i1 @_ZNK4gdcm2VR8IsVRFileEv(ptr noundef nonnull align 8 dereferenceable(8) %18)
          to label %.noexc44 unwind label %bb.cs

.noexc44:                                         ; preds = %bb.bw
  br i1 %i.ez, label %bb.bx, label %_ZN4gdcm11DataElement5SetVRERKNS_2VRE.exit

bb.bx:                                            ; preds = %.noexc44
  %i.fa = load i64, ptr %18, align 8, !tbaa !83
  store i64 %i.fa, ptr %i.ex, align 8, !tbaa !83
  br label %_ZN4gdcm11DataElement5SetVRERKNS_2VRE.exit

_ZN4gdcm11DataElement5SetVRERKNS_2VRE.exit:       ; preds = %bb.bx, %.noexc44
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #29
  %i.fb = load ptr, ptr %16, align 8, !tbaa !40   ; 4 uses
  %.not.i45 = icmp eq ptr %i.fb, null
  br i1 %.not.i45, label %bb.by, label %_ZNK4gdcm12SmartPointerINS_15SequenceOfItemsEEdeEv.exit

bb.by:                                            ; preds = %_ZN4gdcm11DataElement5SetVRERKNS_2VRE.exit
  %i.fc = call ptr @__cxa_allocate_exception(i64 40) #29 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.fc, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.43, i32 noundef 63, ptr noundef nonnull @.str.3)
          to label %bb.bz unwind label %bb.ca

bb.bz:                                            ; preds = %bb.by
  invoke void @__cxa_throw(ptr nonnull %i.fc, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #30
          to label %.noexc46 unwind label %bb.ct

.noexc46:                                         ; preds = %bb.bz
  unreachable

bb.ca:                                            ; preds = %bb.by
  %i.fd = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.fc) #29
  br label %.body

_ZNK4gdcm12SmartPointerINS_15SequenceOfItemsEEdeEv.exit: ; preds = %_ZN4gdcm11DataElement5SetVRERKNS_2VRE.exit
  %i.fe = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4gdcm12SmartPointerINS_5ValueEEaSEPS1_(ptr noundef nonnull align 8 dereferenceable(8) %i.ey, ptr noundef nonnull align 8 dereferenceable(16) %i.fb)
          to label %.noexc47 unwind label %bb.ct  ; 0 uses

.noexc47:                                         ; preds = %_ZNK4gdcm12SmartPointerINS_15SequenceOfItemsEEdeEv.exit
  %i.ff = load ptr, ptr %i.fb, align 8, !tbaa !60
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 24
  %i.fh = load ptr, ptr %i.fg, align 8
  %i.fi = invoke i32 %i.fh(ptr noundef nonnull align 8 dereferenceable(16) %i.fb)
          to label %bb.cb unwind label %bb.ct, !inline_history !3

bb.cb:                                            ; preds = %.noexc47
  store i32 %i.fi, ptr %i.ew, align 4, !tbaa !82
  invoke void @_ZN4gdcm11DataElement16SetVLToUndefinedEv(ptr noundef nonnull align 8 dereferenceable(24) %17)
          to label %bb.cc unwind label %bb.ct

bb.cc:                                            ; preds = %bb.cb
  invoke void @_ZN4gdcm7DataSet7ReplaceERKNS_11DataElementE(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %17)
          to label %bb.cd unwind label %bb.ct

bb.cd:                                            ; preds = %bb.cc
  %i.fj = load ptr, ptr %i.ey, align 8, !tbaa !63 ; 4 uses
  %.not.i.i73 = icmp eq ptr %i.fj, null
  br i1 %.not.i.i73, label %_ZN4gdcm12SmartPointerINS_5ValueEED2Ev.exit78, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 8 ; 2 uses
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !58 ; 2 uses
  %i.fm = icmp sgt i64 %i.fl, 0
  br i1 %i.fm, label %bb.ci, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.fn = call ptr @__cxa_allocate_exception(i64 40) #29 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.fn, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41, i32 noundef 77, ptr noundef nonnull @.str.3)
          to label %bb.cg unwind label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  invoke void @__cxa_throw(ptr nonnull %i.fn, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #30
          to label %.noexc.i76 unwind label %bb.ck

.noexc.i76:                                       ; preds = %bb.cg
  unreachable

bb.ch:                                            ; preds = %bb.cf
  %i.fo = landingpad { ptr, i32 }
          catch ptr null
  call void @__cxa_free_exception(ptr nonnull %i.fn) #29
  br label %.body.i74

bb.ci:                                            ; preds = %bb.ce
  %i.fp = add nsw i64 %i.fl, -1                   ; 2 uses
  store i64 %i.fp, ptr %i.fk, align 8, !tbaa !58
  %.not.i.i.i77 = icmp eq i64 %i.fp, 0
  br i1 %.not.i.i.i77, label %bb.cj, label %_ZN4gdcm12SmartPointerINS_5ValueEED2Ev.exit78

bb.cj:                                            ; preds = %bb.ci
  %i.fq = load ptr, ptr %i.fj, align 8, !tbaa !60
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %i.fs = load ptr, ptr %i.fr, align 8
  call void %i.fs(ptr noundef nonnull align 8 dereferenceable(16) %i.fj) #29, !inline_history !2
  br label %_ZN4gdcm12SmartPointerINS_5ValueEED2Ev.exit78

bb.ck:                                            ; preds = %bb.cg
  %i.ft = landingpad { ptr, i32 }
          catch ptr null
  br label %.body.i74

.body.i74:                                        ; preds = %bb.ck, %bb.ch
  %eh.lpad-body.i75 = phi { ptr, i32 } [ %i.ft, %bb.ck ], [ %i.fo, %bb.ch ]
  %i.fu = extractvalue { ptr, i32 } %eh.lpad-body.i75, 0
  call void @__clang_call_terminate(ptr %i.fu) #32
  unreachable

_ZN4gdcm12SmartPointerINS_5ValueEED2Ev.exit78:    ; preds = %bb.cd, %bb.ci, %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #29
  %i.fv = load ptr, ptr %16, align 8, !tbaa !40   ; 4 uses
  %.not.i.i = icmp eq ptr %i.fv, null
  br i1 %.not.i.i, label %_ZN4gdcm12SmartPointerINS_15SequenceOfItemsEED2Ev.exit, label %bb.cl

bb.cl:                                            ; preds = %_ZN4gdcm12SmartPointerINS_5ValueEED2Ev.exit78
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 8 ; 2 uses
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !58 ; 2 uses
  %i.fy = icmp sgt i64 %i.fx, 0
  br i1 %i.fy, label %bb.cp, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.fz = call ptr @__cxa_allocate_exception(i64 40) #29 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.fz, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41, i32 noundef 77, ptr noundef nonnull @.str.3)
          to label %bb.cn unwind label %bb.co

bb.cn:                                            ; preds = %bb.cm
  invoke void @__cxa_throw(ptr nonnull %i.fz, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #30
          to label %.noexc.i unwind label %bb.cr

.noexc.i:                                         ; preds = %bb.cn
  unreachable

bb.co:                                            ; preds = %bb.cm
  %i.ga = landingpad { ptr, i32 }
          catch ptr null
  call void @__cxa_free_exception(ptr nonnull %i.fz) #29
  br label %.body.i

bb.cp:                                            ; preds = %bb.cl
  %i.gb = add nsw i64 %i.fx, -1                   ; 2 uses
  store i64 %i.gb, ptr %i.fw, align 8, !tbaa !58
  %.not.i.i.i49 = icmp eq i64 %i.gb, 0
  br i1 %.not.i.i.i49, label %bb.cq, label %_ZN4gdcm12SmartPointerINS_15SequenceOfItemsEED2Ev.exit

bb.cq:                                            ; preds = %bb.cp
  %i.gc = load ptr, ptr %i.fv, align 8, !tbaa !60
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  %i.ge = load ptr, ptr %i.gd, align 8
  call void %i.ge(ptr noundef nonnull align 8 dereferenceable(16) %i.fv) #29, !inline_history !1
  br label %_ZN4gdcm12SmartPointerINS_15SequenceOfItemsEED2Ev.exit

bb.cr:                                            ; preds = %bb.cn
  %i.gf = landingpad { ptr, i32 }
          catch ptr null
  br label %.body.i

.body.i:                                          ; preds = %bb.cr, %bb.co
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.gf, %bb.cr ], [ %i.ga, %bb.co ]
  %i.gg = extractvalue { ptr, i32 } %eh.lpad-body.i, 0
  call void @__clang_call_terminate(ptr %i.gg) #32
  unreachable

_ZN4gdcm12SmartPointerINS_15SequenceOfItemsEED2Ev.exit: ; preds = %_ZN4gdcm12SmartPointerINS_5ValueEED2Ev.exit78, %bb.cp, %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #29
  br label %bb.cv

bb.cs:                                            ; preds = %bb.bw
  %i.gh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #29
  br label %.body

bb.ct:                                            ; preds = %.noexc47, %_ZNK4gdcm12SmartPointerINS_15SequenceOfItemsEEdeEv.exit, %bb.bz, %bb.cc, %bb.cb
  %i.gi = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.ct, %bb.ca, %bb.cs
  %.pn37 = phi { ptr, i32 } [ %i.gh, %bb.cs ], [ %i.gi, %bb.ct ], [ %i.fd, %bb.ca ]
  call void @_ZN4gdcm12SmartPointerINS_5ValueEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ey) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #29
  br label %bb.cu

bb.cu:                                            ; preds = %.body, %bb.br, %bb.bq
  %.pn37.pn.pn = phi { ptr, i32 } [ %.pn37, %.body ], [ %i.ea, %bb.bq ], [ %i.eb, %bb.br ]
  call void @_ZN4gdcm12SmartPointerINS_15SequenceOfItemsEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %16) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #29
  br label %bb.cx

bb.cv:                                            ; preds = %_ZN4gdcm12SmartPointerINS_15SequenceOfItemsEED2Ev.exit, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #29
  br label %bb.cw

bb.cw:                                            ; preds = %19, %bb.cv
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  ret void

bb.cx:                                            ; preds = %bb.cu, %bb.bp
  %.pn37.pn.pn.pn = phi { ptr, i32 } [ %.pn37.pn.pn, %bb.cu ], [ %.pn.pn.pn, %bb.bp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %common.resume

bb.cy:                                            ; preds = %bb.bm
  unreachable
}

declare noundef ptr @_ZNK4gdcm6Bitmap13GetDimensionsEv(ptr noundef nonnull align 8 dereferenceable(106)) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN4gdcm12MediaStorage7IsImageENS0_6MSTypeE(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4gdcm7DataSet7ReplaceERKNS_11DataElementE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__1::basic_ostringstream", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !53   ; 3 uses
  %.not14.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not14.i.i.i, label %_ZNSt3__13setIN4gdcm11DataElementENS_4lessIS2_EENS_9allocatorIS2_EEE4findB8ne180100ERKS2_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.c = load i16, ptr %1, align 8, !tbaa !30     ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.e = load i16, ptr %i.d, align 2              ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.lr.ph.i.i.i
  %.016.i.i.i = phi ptr [ %i.a, %.lr.ph.i.i.i ], [ %i.o, %bb.f ]
  %.0815.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.19.i.i.i, %bb.f ] ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.0815.i.i.i, i64 32
  %i.g = load i16, ptr %i.f, align 4, !tbaa !30   ; 2 uses
  %i.h = icmp ult i16 %i.g, %i.c
  br i1 %i.h, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = icmp eq i16 %i.g, %i.c
  br i1 %i.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %.0815.i.i.i, i64 34
  %i.k = load i16, ptr %i.j, align 2, !tbaa !30
  %i.l = icmp ult i16 %i.k, %i.e
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %.0815.i.i.i, i64 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.n = phi ptr [ %i.m, %bb.e ], [ %.0815.i.i.i, %bb.d ], [ %.0815.i.i.i, %bb.c ]
  %i.o = phi ptr [ %.016.i.i.i, %bb.e ], [ %.0815.i.i.i, %bb.d ], [ %.0815.i.i.i, %bb.c ] ; 10 uses
  %.19.i.i.i = load ptr, ptr %i.n, align 8, !tbaa !54 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.19.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3__16__treeIN4gdcm11DataElementENS_4lessIS2_EENS_9allocatorIS2_EEE13__lower_boundIS2_EENS_15__tree_iteratorIS2_PNS_11__tree_nodeIS2_PvEElEERKT_SD_PNS_15__tree_end_nodeIPNS_16__tree_node_baseISB_EEEE.exit.i.i, label %bb.b, !llvm.loop !4

_ZNSt3__16__treeIN4gdcm11DataElementENS_4lessIS2_EENS_9allocatorIS2_EEE13__lower_boundIS2_EENS_15__tree_iteratorIS2_PNS_11__tree_nodeIS2_PvEElEERKT_SD_PNS_15__tree_end_nodeIPNS_16__tree_node_baseISB_EEEE.exit.i.i: ; preds = %bb.f
  %.not.i.i = icmp eq ptr %i.o, %i.a
  br i1 %.not.i.i, label %_ZNSt3__13setIN4gdcm11DataElementENS_4lessIS2_EENS_9allocatorIS2_EEE4findB8ne180100ERKS2_.exit.thread, label %bb.g

bb.g:                                             ; preds = %_ZNSt3__16__treeIN4gdcm11DataElementENS_4lessIS2_EENS_9allocatorIS2_EEE13__lower_boundIS2_EENS_15__tree_iteratorIS2_PNS_11__tree_nodeIS2_PvEElEERKT_SD_PNS_15__tree_end_nodeIPNS_16__tree_node_baseISB_EEEE.exit.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32 ; 2 uses
  %i.q = load i16, ptr %i.p, align 4, !tbaa !30   ; 2 uses
  %i.r = icmp ult i16 %i.c, %i.q
  br i1 %i.r, label %_ZNSt3__13setIN4gdcm11DataElementENS_4lessIS2_EENS_9allocatorIS2_EEE4findB8ne180100ERKS2_.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = icmp eq i16 %i.c, %i.q
  br i1 %i.s, label %bb.i, label %_ZNSt3__13setIN4gdcm11DataElementENS_4lessIS2_EENS_9allocatorIS2_EEE4findB8ne180100ERKS2_.exit

bb.i:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 34
  %i.u = load i16, ptr %i.t, align 2, !tbaa !30
  %.not15 = icmp ult i16 %i.e, %i.u
  br i1 %.not15, label %_ZNSt3__13setIN4gdcm11DataElementENS_4lessIS2_EENS_9allocatorIS2_EEE4findB8ne180100ERKS2_.exit.thread, label %_ZNSt3__13setIN4gdcm11DataElementENS_4lessIS2_EENS_9allocatorIS2_EEE4findB8ne180100ERKS2_.exit

_ZNSt3__13setIN4gdcm11DataElementENS_4lessIS2_EENS_9allocatorIS2_EEE4findB8ne180100ERKS2_.exit: ; preds = %bb.h, %bb.i
  %.not = icmp eq ptr %i.p, %1
  br i1 %.not, label %bb.j, label %bb.p

bb.j:                                             ; preds = %_ZNSt3__13setIN4gdcm11DataElementENS_4lessIS2_EENS_9allocatorIS2_EEE4findB8ne180100ERKS2_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  call void @_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(112) %2)
  %i.v = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.47, i64 noundef 115)
          to label %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit unwind label %bb.m

_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit: ; preds = %bb.j
  %i.w = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.v, i32 noundef 155)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit
  %i.x = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull @.str.10, i64 noundef 11)
          to label %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit9 unwind label %bb.m

_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit9: ; preds = %bb.k
  %i.y = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4gdcm7DataSet7ReplaceERKNS_11DataElementE, i64 noundef 48)
          to label %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit10 unwind label %bb.m

_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit10: ; preds = %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit9
  %i.z = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr noundef nonnull @.str.11, i64 noundef 2)
          to label %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit11 unwind label %bb.m ; 0 uses

_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit11: ; preds = %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit10
  %i.aa = call ptr @__cxa_allocate_exception(i64 24) #29 ; 3 uses
  invoke void @_ZNKRSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEE3strB8ne180100Ev(ptr dead_on_unwind writable sret(%"class.std::__1::basic_string") align 8 %i.aa, ptr noundef nonnull align 8 dereferenceable(112) %2)
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit11
  invoke void @__cxa_throw(ptr %i.aa, ptr nonnull @_ZTINSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE, ptr nonnull @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev) #30
          to label %bb.r unwind label %bb.m

bb.m:                                             ; preds = %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit10, %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit9, %bb.k, %bb.j, %bb.l, %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.n:                                             ; preds = %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit11
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %i.aa) #29
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pn = phi { ptr, i32 } [ %i.ab, %bb.m ], [ %i.ac, %bb.n ]
  call void @_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  resume { ptr, i32 } %.pn

bb.p:                                             ; preds = %_ZNSt3__13setIN4gdcm11DataElementENS_4lessIS2_EENS_9allocatorIS2_EEE4findB8ne180100ERKS2_.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !86 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i.i, label %.preheader.i.i.i.i.i, label %.preheader8.i.i.i.i.i

.preheader8.i.i.i.i.i:                            ; preds = %bb.p, %.preheader8.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi ptr [ %i.af, %.preheader8.i.i.i.i.i ], [ %i.ae, %bb.p ] ; 2 uses
  %i.af = load ptr, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !53 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt3__115__tree_iteratorIN4gdcm11DataElementEPNS_11__tree_nodeIS2_PvEElEppB8ne180100Ev.exit.i.i.i, label %.preheader8.i.i.i.i.i, !llvm.loop !5

.preheader.i.i.i.i.i:                             ; preds = %bb.p, %.preheader.i.i.i.i.i
  %.0.i.i.i.i.i = phi ptr [ %i.ah, %.preheader.i.i.i.i.i ], [ %i.o, %bb.p ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !87 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !53
  %i.aj = icmp eq ptr %.0.i.i.i.i.i, %i.ai
  br i1 %i.aj, label %_ZNSt3__115__tree_iteratorIN4gdcm11DataElementEPNS_11__tree_nodeIS2_PvEElEppB8ne180100Ev.exit.i.i.i, label %.preheader.i.i.i.i.i, !llvm.loop !6

_ZNSt3__115__tree_iteratorIN4gdcm11DataElementEPNS_11__tree_nodeIS2_PvEElEppB8ne180100Ev.exit.i.i.i: ; preds = %.preheader8.i.i.i.i.i, %.preheader.i.i.i.i.i
  %.06.i.i.i.i.i = phi ptr [ %i.ah, %.preheader.i.i.i.i.i ], [ %.0.i.i.i.i.i.i, %.preheader8.i.i.i.i.i ]
  %i.ak = load ptr, ptr %0, align 8, !tbaa !88
  %i.al = icmp eq ptr %i.ak, %i.o
  br i1 %i.al, label %bb.q, label %_ZNSt3__13setIN4gdcm11DataElementENS_4lessIS2_EENS_9allocatorIS2_EEE5eraseB8ne180100ENS_21__tree_const_iteratorIS2_PNS_11__tree_nodeIS2_PvEElEE.exit

bb.q:                                             ; preds = %_ZNSt3__115__tree_iteratorIN4gdcm11DataElementEPNS_11__tree_nodeIS2_PvEElEppB8ne180100Ev.exit.i.i.i
  store ptr %.06.i.i.i.i.i, ptr %0, align 8, !tbaa !88
  br label %_ZNSt3__13setIN4gdcm11DataElementENS_4lessIS2_EENS_9allocatorIS2_EEE5eraseB8ne180100ENS_21__tree_const_iteratorIS2_PNS_11__tree_nodeIS2_PvEElEE.exit

_ZNSt3__13setIN4gdcm11DataElementENS_4lessIS2_EENS_9allocatorIS2_EEE5eraseB8ne180100ENS_21__tree_const_iteratorIS2_PNS_11__tree_nodeIS2_PvEElEE.exit: ; preds = %_ZNSt3__115__tree_iteratorIN4gdcm11DataElementEPNS_11__tree_nodeIS2_PvEElEppB8ne180100Ev.exit.i.i.i, %bb.q
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !89
  %i.ao = add i64 %i.an, -1
  store i64 %i.ao, ptr %i.am, align 8, !tbaa !89
  tail call void @_ZNSt3__113__tree_removeB8ne180100IPNS_16__tree_node_baseIPvEEEEvT_S5_(ptr noundef nonnull %i.b, ptr noundef nonnull %i.o) #29
  %i.ap = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  tail call void @_ZN4gdcm12SmartPointerINS_5ValueEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ap) #29
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef 56) #31
  br label %_ZNSt3__13setIN4gdcm11DataElementENS_4lessIS2_EENS_9allocatorIS2_EEE4findB8ne180100ERKS2_.exit.thread

_ZNSt3__13setIN4gdcm11DataElementENS_4lessIS2_EENS_9allocatorIS2_EEE4findB8ne180100ERKS2_.exit.thread: ; preds = %bb.g, %bb.i, %bb.a, %_ZNSt3__16__treeIN4gdcm11DataElementENS_4lessIS2_EENS_9allocatorIS2_EEE13__lower_boundIS2_EENS_15__tree_iteratorIS2_PNS_11__tree_nodeIS2_PvEElEERKT_SD_PNS_15__tree_end_nodeIPNS_16__tree_node_baseISB_EEEE.exit.i.i, %_ZNSt3__13setIN4gdcm11DataElementENS_4lessIS2_EENS_9allocatorIS2_EEE5eraseB8ne180100ENS_21__tree_const_iteratorIS2_PNS_11__tree_nodeIS2_PvEElEE.exit
  %i.aq = tail call { ptr, i8 } @_ZNSt3__16__treeIN4gdcm11DataElementENS_4lessIS2_EENS_9allocatorIS2_EEE25__emplace_unique_key_argsIS2_JRKS2_EEENS_4pairINS_15__tree_iteratorIS2_PNS_11__tree_nodeIS2_PvEElEEbEERKT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %1) ; 0 uses
  ret void

bb.r:                                             ; preds = %bb.l
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4gdcm9AttributeILt40ELt16ELx33554432ELi1EE16GetAsDataElementEv(ptr dead_on_unwind noalias writable sret(%"class.gdcm::DataElement") align 8 %0, ptr noundef nonnull align 2 dereferenceable(2) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__1::basic_ostringstream", align 8 ; 29 uses
  %3 = alloca %"class.gdcm::VR", align 8          ; 6 uses
  %4 = alloca %"class.std::__1::basic_string", align 8 ; 15 uses
  %5 = alloca %"class.std::__1::basic_string", align 8 ; 18 uses
  store i32 1048616, ptr %0, align 8, !tbaa !30
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.a, i8 0, i64 20, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 64), ptr %i.c, align 8, !tbaa !60
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 8), align 8 ; 2 uses
  store ptr %i.e, ptr %2, align 8, !tbaa !60
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 16), align 8
  %i.g = getelementptr i8, ptr %i.e, i64 -24
end_hunk_0
